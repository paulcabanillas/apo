unit APO022;

// Inicio Uso Est�ndares: 01/08/2011
// Unidad               : COB022
// Formulario           : FCPassw
// Fecha de Creaci�n    : 06/01/2015
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Cambio de Password
//
// Actualizaciones      :
// HPC_201501_APO       : 06/01/2015 - Cambio de DCOM a Socket

interface

uses
  Windows,  Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, wwdbedit, Buttons, ExtCtrls, db, wwclient, MConnect,
  DBClient, SConnect;

type
  TFCPassw = class(TForm)
    pnlRegistro: TPanel;
    Label3: TLabel;
    bbtnOk: TBitBtn;
    lblContrasena: TLabel;
    dbePwdAnterior: TwwDBEdit;
    BitBtn1: TBitBtn;
    pnlNuevoPwd: TPanel;
    bbtnOk2: TBitBtn;
    bbtnCanc2: TBitBtn;
    GroupBox1: TGroupBox;
    lblPwdNue: TLabel;
    lblPwdConf: TLabel;
    dbePwdConfirma: TwwDBEdit;
    dbePwdNuevo: TwwDBEdit;
    Panel1: TPanel;
    lblUsuario: TLabel;
    Label6: TLabel;
    dbeNombre: TwwDBEdit;
    dbeUsuario: TwwDBEdit;
    procedure bbtnCanc2Click(Sender: TObject);
    procedure bbtnOk2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure bbtnOkClick(Sender: TObject);
    function isAlfanumerico(ICad: string): boolean;
  private
    { Private declarations }
  public
    { Public declarations }
    wDCOM1: TSocketConnection;
    cAccesoSistema : String;
    xdiasduracpass:Integer;
    wIntentos : Integer;
    wcdsUsuarios: TwwClientDataSet;
    sModulo, sUser, sPassword : string;
    sClave_OK : String;
  end;

var
  FCPassw: TFCPassw;

implementation

{$R *.DFM}

uses APODM, APO020;


procedure TFCPassw.bbtnCanc2Click(Sender: TObject);
begin
	Close;
end;


procedure TFCPassw.bbtnOk2Click(Sender: TObject);
VAR
xSQL: STRING;
begin
   if dbePwdAnterior.Text=dbePwdNuevo.text then
   begin
      Showmessage('No se permite volver a digitar la misma contrase�a, reintente');
      dbePwdNuevo.SetFocus;
      exit;
   end;

   if not (isAlfanumerico(dbePwdNuevo.Text)) then
   begin
       Showmessage('La Contrase�a solo debe tener letras de la A(a) a la Z(z) y/o numeros del 0 al 9');
       dbePwdNuevo.SetFocus;
       exit;
   end;

   If dbePwdNuevo.text<>dbePwdConfirma.text then
   Begin
      Showmessage('Contrase�a Nueva no coincide con la confirmaci�n, reintente');
      dbePwdNuevo.SetFocus;
      exit;
   End;

   if DM1.DCOM1.AppServer.setPassword(dbeUsuario.Text,dbePwdNuevo.Text)<>'' then
   begin
      ShowMessage('No se pudo cambiar Contrase�a');
      exit;
   end;

   try
      xSQL := 'UPDATE TGE006 '
             +'SET FECINI_PWD = TO_DATE(SYSDATE), '
             +'    FECFIN_PWD = TO_DATE(SYSDATE)+'+IntToStr(xdiasduracpass)+', '
             +'    PASSWORD= '+QuotedStr( FCtrlAcceso.Encripta(dbePwdNuevo.text) )+' '
             +'WHERE USERID = '+QuotedStr(dbeUsuario.Text);
     DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
     ShowMessage('             El Password se ha cambiado Satisfactoriamente'+ #13
                +'La Sesi�n va a ser Finalizada para Terminar con el Proceso de Actualizaci�n' );
   except
     showmessage('Ocurri� algun error y no se pudo cambiar la Contrase�a');
   end;
   Application.Terminate;
end;


procedure TFCPassw.FormKeyPress(Sender: TObject; var Key: Char);
begin
	if key=#13 then
  begin
		if Self.ActiveControl Is TMemo then Exit;
  	key:=#0;
    perform(CM_DialogKey,VK_TAB,0);
	end;
end;


procedure TFCPassw.FormActivate(Sender: TObject);
begin
  	dbePwdAnterior.SetFocus;
end;


procedure TFCPassw.bbtnOkClick(Sender: TObject);
Var
   xfecfin :TDate;
   xdiasexppass:Integer;
   xdiasfaltantes:Integer;
   xpassact, xctrl_ip, xingresa :String;
   xSQL : String;
begin
// Usuario se conecta a la base de datos
   sClave_OK:='N';
   inc(wIntentos);
   Try
      DM1.DCOM1.AppServer.VerificaClave(dbeUsuario.Text, dbePwdAnterior.Text, sClave_OK );

      if sClave_OK='N' then
      begin
         Showmessage('Usuario y/o contrase�a no reconocido por la Base de Datos');
         if wIntentos>=3 then
         begin
            ShowMessage('Tres intentos fallidos de Validaci�n. La aplicaci�n se Cerrar� ');
            Application.Terminate;
         end;
         Exit;
      end;
   Except
      Showmessage('Usuario y/o contrase�a no reconocido por la Base de Datos');
      if wIntentos>3 then
      begin
         ShowMessage('Tres intentos fallidos de conexi�n. La Aplicaci�n se cerrara');
         Application.Terminate;
      end;
      Exit;
   End;

   pnlNuevoPwd.Enabled := True;
   lblPwdNue.Enabled := True;
   lblPwdConf.Enabled := True;
   pnlRegistro.Enabled:=False;
   dbePwdNuevo.SetFocus;
end;


function TFCPassw.isAlfanumerico(ICad: string): boolean;
var
   i : integer;
   valor : char;
begin
   for i := 1 to Length(ICad) do
   begin
      valor := ICad[i];
      if not((valor in ['A'..'Z'])
             or (valor in ['a'..'z'])
             or (valor in ['0'..'9'])) then
      begin
         Result := False;
         exit;
      end;
   end;
end;

end.
