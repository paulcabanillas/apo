unit APO020;

// Inicio Uso Estándares: 01/08/2011
// Unidad               : COB020
// Formulario           : FCtrlAcceso
// Fecha de Creación    : 03/06/2014
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Control de Accesos al Sistema
//
// Actualizaciones      :
// SPP_201402_COB       : Se realiza el pase a producción a partir del HPC_201402_COB

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, wwdbedit, Qt, MConnect, SConnect, winsock,
  fcLabel, fcButton, fcImgBtn, ExtCtrls, fcClearPanel, fcButtonGroup,Idhttp,uLkJSON;

type
  TFCtrlAcceso = class(TForm)
    Label2: TLabel;
    fcLabel1: TfcLabel;
    lblUsuario: TLabel;
    lblContrasena: TLabel;
    dbePassword: TwwDBEdit;
    dbeUsuario: TwwDBEdit;
    bbtnOkIngreso: TBitBtn;
    bbtnCancelaIngreso: TBitBtn;
    fcBtnEntrar: TfcButtonGroup;
    bbtnIn: TfcImageBtn;
    fcBtnSalir: TfcButtonGroup;
    bbtnOut: TfcImageBtn;
    Label1: TLabel;
    procedure bbtnOkIngresoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbePasswordKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbtnCancelaIngresoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbtnInClick(Sender: TObject);
    procedure bbtnOutClick(Sender: TObject);
  private
    { Private declarations }
  public
    wDCOM1: TSocketConnection;
    { Public declarations }
    xdiasduracpass:Integer;
    cAccesoSistema : String;
    nCont : Integer;
    //
    function DesEncripta( sPass : String) : String;
    function Encripta( sPass : String) : String;
  end;

var
  FCtrlAcceso: TFCtrlAcceso;
  xSQL : String;

implementation

uses APODM;


{$R *.dfm}

procedure TFCtrlAcceso.bbtnOkIngresoClick(Sender: TObject);
Var
   {xfecfin :TDate;
   xdiasexppass:Integer;
   xdiasfaltantes:Integer;
   xpassact, xctrl_ip, xingresa :String;}
   HTTP1: TIdHTTP;
   Json: string;
   sResponse: string;
   JsonToSend: TStringStream;
   sServidorWeb : String;
   jsonBase:TlkJSONbase;
   obj,oList:TlkJSONobject;
   ok:boolean;
   xUsuario:String;
   xPassword:String;
begin
    bbtnInClick(Sender);

   // Usuario se conecta a la base de datos
{   inc(nCont);
   cAccesoSistema:='N';
   Try
      DM1.DCOM1.AppServer.Conectate('xxxxxx', dbeUsuario.Text, dbePassword.Text, cAccesoSistema);
      if cAccesoSistema='N' then
      begin
         Showmessage('Usuario y/o contraseña no reconocido por la Base de Datos');
         if nCont>=3 then
         begin
            ShowMessage('Tres intentos fallidos de conexión, se bloqueara su Usuario. Avice a Sistemas para volver a intentar');
            Application.Terminate;
         end;
         Exit;
      end;
   Except
      Showmessage('Usuario y/o contraseña no reconocido por la Base de Datos');
      if nCont>3 then
      begin
         ShowMessage('Tres intentos fallidos de conexión, se bloqueara su Usuario. Avice a Sistemas para volver a intentar');
         Application.Terminate;
      end;
      Exit;
   End;
   Close;   }
End;

Procedure TFCtrlAcceso.FormShow(Sender: TObject);
Begin
  dbeUsuario.SetFocus;
End;

Procedure TFCtrlAcceso.FormKeyPress(Sender: TObject; var Key: Char);
Begin
  If Key = #13 then
  Begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  End;
End;


procedure TFCtrlAcceso.dbePasswordKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key =  13 then
      bbtnOkIngreso.OnClick(bbtnOkIngreso);
end;

procedure TFCtrlAcceso.bbtnCancelaIngresoClick(Sender: TObject);
begin
   Close;
end;

procedure TFCtrlAcceso.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//   if cAccesoSistema:='N';
   Close;
end;


function TFCtrlAcceso.Encripta( sPass : String ) : String;
var
   xLargoPal,i,j : integer;
   xReal,xEncriptado1,xEncriptado2,xEncriptado3,xEncriptado4,
   xEncriptado5,xNuevaPal,xEncriptado : string;
   xTiene : boolean;
begin
   xReal       := 'abcdefghijklmnñopqrstuvwxyzABCDEFGHIJKLMNÑOPQRSTUVWXYZ0123456789';
   xEncriptado1:= '¶°ªº¾§¦¥¼»½·¸¹³.µ´±®¯«¬­¨©²¿Ô Ö×ÕÙ¡ÚÛÜ¿Ş¤¿¿¢ÅÄİ£ÃÁÀÓÑĞÆÇÎÍÉÊÌË';
   xEncriptado2:= '§¦¥¼»½·¸¹³.µ´±®¯«¬­¨©²¿Ô Ö×ÕÙ¡ÚÛÜ¿Ş¤¿¿¢ÅÄİ£ÃÁÀÓÑĞÆÇÎÍÉÊÌË¶°ªº¾';
   xEncriptado3:= '½·¸¹³.µ´±®¯«¬­¨©²¿Ô Ö×ÕÙ¡ÚÛÜ¿Ş¤¿¿¢ÅÄİ£ÃÁÀÓÑĞÆÇÎÍÉÊÌË¶°ªº¾§¦¥¼»';
   xEncriptado4:= '.µ´±®¯«¬­¨©²¿Ô Ö×ÕÙ¡ÚÛÜ¿Ş¤¿¿¢ÅÄİ£ÃÁÀÓÑĞÆÇÎÍÉÊÌË¶°ªº¾§¦¥¼»½·¸¹³';
   xEncriptado5:= '¯«¬­¨©²¿Ô Ö×ÕÙ¡ÚÛÜ¿Ş¤¿¿¢ÅÄİ£ÃÁÀÓÑĞÆÇÎÍÉÊÌË¶°ªº¾§¦¥¼»½·¸¹³.µ´±®';
   xLargoPal   := length(sPass);
   xNuevaPal   := '';
   i := 1;
   while i<=xLargoPal do begin
      j := 1;
      xTiene := False;
      if (i=1) or (i=11)or (i=21) or (i=31) then xEncriptado:=xEncriptado1;
      if (i=2) or (i=12)or (i=22) or (i=32) then xEncriptado:=xEncriptado2;
      if (i=3) or (i=13)or (i=23) or (i=33) then xEncriptado:=xEncriptado3;
      if (i=4) or (i=14)or (i=24) or (i=34) then xEncriptado:=xEncriptado4;
      if (i=5) or (i=15)or (i=25) or (i=35) then xEncriptado:=xEncriptado5;
      if (i=6) or (i=16)or (i=26) or (i=36) then xEncriptado:=xEncriptado1;
      if (i=7) or (i=17)or (i=27) or (i=37) then xEncriptado:=xEncriptado2;
      if (i=8) or (i=18)or (i=28) or (i=38) then xEncriptado:=xEncriptado3;
      if (i=9) or (i=19)or (i=29) or (i=39) then xEncriptado:=xEncriptado4;
      if (i=10)or (i=20)or (i=30) or (i=40) then xEncriptado:=xEncriptado5;
      while j<=length(xReal) do begin
         if copy(sPass,i,1)=copy(xReal,j,1) then begin
            xNuevaPal := xNuevaPal+copy(xEncriptado,j,1);
            xTiene := True;
         end;
         j := j+1;
      end;
      if not xTiene then xNuevaPal:=xNuevaPal+copy(sPass,i,1);
      i := i+1;
   end;
   result:=xNuevaPal;
end;


function TFCtrlAcceso.DesEncripta( sPass : String ) : String;
var
   xLargoPal,i,j : integer;
   xReal,xEncriptado1,xEncriptado2,xEncriptado3,xEncriptado4,
   xEncriptado5,xNuevaPal,xEncriptado : string;
   xTiene : boolean;
begin
   xReal       := 'abcdefghijklmnñopqrstuvwxyzABCDEFGHIJKLMNÑOPQRSTUVWXYZ0123456789';
   xEncriptado1:= '¶°ªº¾§¦¥¼»½·¸¹³.µ´±®¯«¬­¨©²¿Ô Ö×ÕÙ¡ÚÛÜ¿Ş¤¿¿¢ÅÄİ£ÃÁÀÓÑĞÆÇÎÍÉÊÌË';
   xEncriptado2:= '§¦¥¼»½·¸¹³.µ´±®¯«¬­¨©²¿Ô Ö×ÕÙ¡ÚÛÜ¿Ş¤¿¿¢ÅÄİ£ÃÁÀÓÑĞÆÇÎÍÉÊÌË¶°ªº¾';
   xEncriptado3:= '½·¸¹³.µ´±®¯«¬­¨©²¿Ô Ö×ÕÙ¡ÚÛÜ¿Ş¤¿¿¢ÅÄİ£ÃÁÀÓÑĞÆÇÎÍÉÊÌË¶°ªº¾§¦¥¼»';
   xEncriptado4:= '.µ´±®¯«¬­¨©²¿Ô Ö×ÕÙ¡ÚÛÜ¿Ş¤¿¿¢ÅÄİ£ÃÁÀÓÑĞÆÇÎÍÉÊÌË¶°ªº¾§¦¥¼»½·¸¹³';
   xEncriptado5:= '¯«¬­¨©²¿Ô Ö×ÕÙ¡ÚÛÜ¿Ş¤¿¿¢ÅÄİ£ÃÁÀÓÑĞÆÇÎÍÉÊÌË¶°ªº¾§¦¥¼»½·¸¹³.µ´±®';
   xLargoPal   := length(sPass);
   xNuevaPal   := '';
   i := 1;
   while i<=xLargoPal do begin
      j := 1;
      xTiene := False;
      if (i=1) or (i=6) or (i=11) or (i=16) then xEncriptado:=xEncriptado1;
      if (i=2) or (i=7) or (i=12) or (i=17) then xEncriptado:=xEncriptado2;
      if (i=3) or (i=8) or (i=13) or (i=18) then xEncriptado:=xEncriptado3;
      if (i=4) or (i=9) or (i=14) or (i=19) then xEncriptado:=xEncriptado4;
      if (i=5) or (i=10)or (i=15) or (i=20) then xEncriptado:=xEncriptado5;
      while j<=length(xReal) do begin
         if copy(sPass,i,1)=copy(xEncriptado,j,1) then begin
            xNuevaPal := xNuevaPal+copy(xReal,j,1);
            xTiene := True;
            break;
         end;
         j := j+1;
      end;
      if not xTiene then xNuevaPal:=xNuevaPal+copy(sPass,i,1);
      i := i+1;
   end;
   result:=xNuevaPal;
end;


procedure TFCtrlAcceso.bbtnInClick(Sender: TObject);
Var
  { xfecfin :TDate;
   xdiasexppass:Integer;
   xdiasfaltantes:Integer;
   xpassact, xctrl_ip, xingresa :String; }
   HTTP1: TIdHTTP;
   Json: string;
   sResponse: string;
   JsonToSend: TStringStream;
   sServidorWeb : String;
   jsonBase:TlkJSONbase;
   obj,oList:TlkJSONobject;
   ok:boolean;
   xUsuario:String;
   xPassword:String;
begin

    ok:=false;
   Screen.Cursor := crHourGlass;
   try
     sServidorWeb:=DM1.xServicioWebGeneral;
     sServidorWeb:=sServidorWeb+'/Login/LoginEmpleado';
     Json:='{'
            +  '"CODAPLI":"'+'181'+'",'
            +  '"Username":"'+dbeUsuario.Text+'", '
            +  '"Password":"'+dbePassword.Text+'" '
            +'}';
     JsonToSend := TStringStream.Create(Utf8Encode(Json));
     HTTP1 := TIdHTTP.Create(Self);
     HTTP1.Request.ContentType := 'application/json';
     try
        sResponse := HTTP1.Post(sServidorWeb, JsonToSend);
        jsonBase := TlkJSON.ParseText(sResponse);
        TlkJSONBase(oList):= TlkJSONobject(jsonBase);
        If Assigned(oList) Then
        Begin
          If oList.Count > 0 then
          Begin
             TlkJSONBase(obj) := oList.Child[0];
             If (obj.Field['MENSAJE']<> nil) And (VarToStrDef(obj.Field['MENSAJE'].Value,'') <> '') Then
             Begin
                MessageDlg(VarToStr(VarToStrDef(obj.Field['MENSAJE'].Value,'')), mtError,[mbOk],0);
                ok:=false;
             End
             Else
             Begin
               xUsuario:= VarToStrDef(obj.Field['ID_USUARIO'].Value,'');
               xPassword:= VarToStrDef(obj.Field['PASSWORD'].Value,'');
               If trim(xUsuario) <> '' Then
               begin
                 ok:=true;
               End
               Else
               Begin
                  MessageDlg('HAY PROBLEMAS AL OBTENER EL USUARIO DURANTE LA AUTENTICACIÓN', mtError,[mbOk],0);
                  ok:=false;
               End;
             End;
          End;
        End
        Else
        Begin
           MessageDlg('HAY PROBLEMAS AL REALIZAR LA AUTENTICACIÓN DEL USUARIO', mtError,[mbOk],0);
           ok:=false;
        End;
     except
       on E: Exception do
       begin
         MessageDlg('NO ES POSIBLE CONECTAR CON EL SERVICIO DE AUTENTICACIÓN', mtError,[mbOk],0);
         ok:=false;
       end;
     end;
   finally
     jsonToSend.Free;
     http1.Free;
   end;
   If not ok Then
   begin
     Screen.Cursor := crDefault;
     Exit;
   End;

   cAccesoSistema:='N';
   Try
      DM1.DCOM1.AppServer.Conectate('xxxxxx', xUsuario, xPassword, cAccesoSistema);
      if cAccesoSistema='N' then
      begin
         Showmessage('PROBLEMAS AL REALIZAR CONEXIÓN CON EL SERVIDOR DE APLICACIONES');
         Screen.Cursor := crDefault;
         Exit;
      end;
   Except
      on E: Exception do
      begin
        MessageDlg('ERROR AL ESTABLECER CONEXIÓN CON EL SERVIDOR DE APLICACIONES', mtError,[mbOk],0);
        Screen.Cursor := crDefault;
        Exit;
      End;
   End;
   Screen.Cursor := crDefault;
   Close;

  // Usuario se conecta a la base de datos
 {  inc(nCont);
   cAccesoSistema:='N';
   Try
      DM1.DCOM1.AppServer.Conectate('xxxxxx', dbeUsuario.Text, dbePassword.Text, cAccesoSistema);
      if cAccesoSistema='N' then
      begin
         Showmessage('Usuario y/o contraseña no reconocido por la Base de Datos');
         if nCont>=3 then
         begin
            ShowMessage('Tres intentos fallidos de conexión, se bloqueara su Usuario. Avice a Sistemas para volver a intentar');
            Application.Terminate;
         end;
         Exit;
      end;
   Except
      Showmessage('Usuario y/o contraseña no reconocido por la Base de Datos');
      if nCont>3 then
      begin
         ShowMessage('Tres intentos fallidos de conexión, se bloqueara su Usuario. Avice a Sistemas para volver a intentar');
         Application.Terminate;
      end;
      Exit;
   End;
   Close; }

end;

procedure TFCtrlAcceso.bbtnOutClick(Sender: TObject);
begin
   Close;
end;

end.
