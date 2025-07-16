// Inicio Uso Estándares         :   /  /
// Unidad                        : APO324
// Formulario                    : Fcuerecapo
// Fecha de Creación             :   /  /
// Autor                         :
// Objetivo                      : Genereación de información para envío al banco bcp
// Actualizaciones               :
// APO_202102_HPC                : Se adiciona condiciones al filtro y la opción de anulación de la generación

unit APO324;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
//Inicio APO_202102_HPC  
// Se adiciona condiciones al filtro y la opción de anulación de la generación
  Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls,DB;
//Fin APO_202102_HPC

type
  TFenvinfbcocreapo = class(TForm)
//Inicio APO_202102_HPC  
// Se adiciona condiciones al filtro y la opción de anulación de la generación
    Memo1: TMemo;
    dbgCabecera: TwwDBGrid;
    grbopciones: TGroupBox;
    Btnanula1: TBitBtn;
    btngenerar: TBitBtn;
    BtnCerrar: TBitBtn;
    rdbEnviados: TRadioButton;
    rdbAnulados: TRadioButton;
    rdbTodos: TRadioButton;
    pnlObservaciones: TPanel;
    Shape1: TShape;
    Label1: TLabel;
    Label2: TLabel;
    btnAnula2: TBitBtn;
    btnSalir: TButton;
    grbObsAnula: TGroupBox;
    memObs: TMemo;
    rdbReemplazo: TRadioButton;
    rdbActualiza: TRadioButton;
    procedure btngenerarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BtnCerrarClick(Sender: TObject);
    procedure Btnanula1Click(Sender: TObject);
    procedure rdbEnviadosClick(Sender: TObject);
    procedure rdbAnuladosClick(Sender: TObject);
    procedure rdbTodosClick(Sender: TObject);
    procedure btnAnula2Click(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure dbgCabeceraCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure dbgCabeceraDblClick(Sender: TObject);
//Fin APO_202102_HPC  

  private
    { Private declarations }
  public
    procedure actualiza;
    { Public declarations }
  end;

var
  Fenvinfbcocreapo: TFenvinfbcocreapo;

implementation

uses APODM;

{$R *.dfm}

procedure TFenvinfbcocreapo.btngenerarClick(Sender: TObject);
Var fichero, xSql, xfecha, linea, xcorrelativo,VARCHIVO:String;
registros:Integer;
f: textfile;
xMax, xDiv, xAct:Integer;
Begin
  If MessageDlg('Se va a generar información para el banco.  Seguro?',
  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
    VARCHIVO:=copy(DateToStr(DM1.FechaSis),7,4)+copy(DateToStr(DM1.FechaSis),4,2)+copy(DateToStr(DM1.FechaSis),1,2);
    screen.Cursor := crHourGlass;
    xSql := 'SELECT LPAD(MAX(CORPRO)+1,5, ''0'') CORPRO FROM APO_INF_GEN_BAN_CRE_CAB';
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    If Trim(DM1.cdsQry.FieldByName('CORPRO').AsString) = '' Then
      xcorrelativo := '00001'
    Else
      xcorrelativo := DM1.cdsQry.FieldByName('CORPRO').AsString;

{
//Inicio APO_202102_HPC
// Se adiciona condiciones al filtro y la opción de anulación de la generación
    xSql :='SELECT ''DD19301590074''||LPAD(TRIM(ASODNI),14, ''0'')||RPAD(TRIM(TRANSLATE(ASOAPENOMDNI,''Ñ¿?ÁÉÍÓÚÄËÏÖÜÀÈÌÒÙ'''''',''NNNAEIOUAEIOUAEIOU  '')),40,'' '')|| LPAD(TRIM(ASOID),30, ''0'') TEXTO'
    +'  FROM DB2ADMIN.APO201 A '
    +' WHERE NVL(TRIM(A.FALLECIDO),''N'')=''N''  AND ASODNI IS NOT NULL AND LENGTH(TRIM(ASODNI)) = 8 AND ASOTIPID = ''DO'' '
    +'   AND NVL(AUTDESAPO,''N'')=''S'' ';
 //Fin APO_202102_HPC
//Fin APO_202102_HPC
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    registros := DM1.cdsQry.RecordCount;
    xfecha := copy(DateToStr(DM1.dtFechaSistema),7,4)+copy(DateToStr(DM1.dtFechaSistema),4,2)+copy(DateToStr(DM1.dtFechaSistema),1,2);
    xSql := 'SELECT ''CC19301590074P''||RPAD(''DERRAMA MAGISTERIAL'',40)||'
            +QuotedStr(xfecha)+'||'+QuotedStr(DM1.StrZero(IntToStr(registros),9))
            +' TEXTO FROM DUAL';
    DM1.cdsQry2.Close;
    DM1.cdsQry2.DataRequest(xSql);
    DM1.cdsQry2.Open;
    fichero := 'D:\CDPG.TXT';
    AssignFile(f,fichero);
    Rewrite(f);
    linea := DM1.cdsQry2.FieldByName('TEXTO').AsString;
    Memo1.Lines.Add(linea);
    writeln(f,linea);
    DM1.cdsQry.First;
    xMax := DM1.cdsQry.RecordCount;
    xDiv := xMax Div 100;
    While not DM1.cdsQry.Eof do
    Begin
      xAct := dm1.cdsQry.RecNo;
      If xAct Mod xDiv = 0 Then Fenvinfbcocreapo.Refresh;
      linea := DM1.cdsQry.FieldByName('TEXTO').AsString;
      Memo1.Lines.Add(linea);
      writeln(f,linea);
      DM1.cdsQry.Next;
    End;
    CloseFile(f);
}

    xSql:='Begin DB2ADMIN.SP_COB_ARCH_RECAUDADORA(''1'','+QuotedStr(VARCHIVO)+'); End;';
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);
    If rdbActualiza.Checked Then xSql:='Begin DB2ADMIN.SP_COB_ARCH_RECAUDADORA(''5'','+QuotedStr(VARCHIVO)+'); End;';
    If rdbReemplazo.Checked Then xSql:='Begin DB2ADMIN.SP_COB_ARCH_RECAUDADORA(''4'','+QuotedStr(VARCHIVO)+'); End;';
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);

    XSQL:='SELECT TEXTO FROM DB2ADMIN.COB_ENVIO_RECAUDADORA_GTT ';
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    DM1.cdsQry.First;
    xMax := DM1.cdsQry.RecordCount-1; //menos uno que es la cabecera
    If xMax<=0 then
    Begin
      ShowMessage('No exite información para envío');
      screen.Cursor := crDefault;
      exit;
    End;
 // xDiv := xMax Div 100;
    fichero := 'D:\CREP1.TXT';
    AssignFile(f,fichero);
    Rewrite(f);
    While not DM1.cdsQry.Eof do
    Begin
 //   xAct := dm1.cdsQry.RecNo;
 //   If xAct Mod xDiv = 0 Then Fenvinfbcocreapo.Refresh;
      linea := DM1.cdsQry.FieldByName('TEXTO').AsString;
      Memo1.Lines.Add(linea);
      writeln(f,linea);
      DM1.cdsQry.Next;
    End;
    CloseFile(f);
    xSql:='Begin DB2ADMIN.SP_COB_ARCH_RECAUDADORA(''1'','+QuotedStr(VARCHIVO)+'); End;';
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);


     xSql := 'INSERT INTO APO_INF_GEN_BAN_CRE_CAB(USUGEN, FECHORGEN, CANREGGEN, FECHORPRO, CORPRO)'
    +' VALUES ('+QuotedStr(DM1.wUsuario)+', SYSDATE,'+IntToStr(xMax)+', SYSDATE, '+QuotedStr(xcorrelativo)+')';
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);
    Screen.Cursor := crDefault;
    actualiza;
    screen.Cursor := crDefault;
    MessageDlg(' Diskette Se Grabo Con Exito ', mtInformation,[mbOk],0);
  End;
End;


procedure TFenvinfbcocreapo.FormActivate(Sender: TObject);
begin
  rdbReemplazo.Checked := True;
  actualiza;
end;

procedure TFenvinfbcocreapo.actualiza;
Var xSql:String;
begin

//Inicio COB_202102_HPC
//Modificación en los criterios de filtrado de data para generar el archivo texto que se procesa para el Banco de Crédito
  rdbEnviados.Checked := True;
  rdbEnviadosClick(Self);
 {xSql := 'SELECT * FROM APO_INF_GEN_BAN_CRE_CAB ORDER BY CORPRO DESC';
  DM1.cdsDLabo.Close;
  DM1.cdsDLabo.DataRequest(xSql);
  DM1.cdsDLabo.Open;}
//Fin COB_202102_HPC
  dbgCabecera.Selected.Clear;
  dbgCabecera.Selected.Add('CORPRO'#9'5'#9'Código de~registro'#9#9);
  dbgCabecera.Selected.Add('USUGEN'#9'15'#9'Usuario que~genera'#9#9);
  dbgCabecera.Selected.Add('FECHORGEN'#9'25'#9'Fecha y hora~de generación'#9#9);
  dbgCabecera.Selected.Add('CANREGGEN'#9'12'#9'Cantidad de~registros generados'#9#9);
  dbgCabecera.Selected.Add('FECHORPRO'#9'25'#9'Fecha y hora~de proceso'#9#9);
  dbgCabecera.ApplySelected;
  dbgCabecera.Refresh;
end;

procedure TFenvinfbcocreapo.BtnCerrarClick(Sender: TObject);
begin
  Fenvinfbcocreapo.Close;
end;

//Inicio APO_202102_HPC  
// Se adiciona condiciones al filtro y la opción de anulación de la generación
procedure TFenvinfbcocreapo.Btnanula1Click(Sender: TObject);
begin
  If DM1.cdsDLabo.FieldByName('FLGANULA').AsString = 'S' Then
  Begin
   ShowMessage('Registro ya se encuentra anulado');
   exit;
  End;

  pnlObservaciones.Top  :=  88;
  pnlObservaciones.Left :=  128;
  pnlObservaciones.Visible := True;
  grbopciones.Enabled:= False;
end;

procedure TFenvinfbcocreapo.rdbEnviadosClick(Sender: TObject);
var xSql:String;
begin
  xSql := 'SELECT * FROM APO_INF_GEN_BAN_CRE_CAB WHERE FLGANULA IS NULL ORDER BY CORPRO DESC';
  DM1.cdsDLabo.Close;
  DM1.cdsDLabo.DataRequest(xSql);
  DM1.cdsDLabo.Open;
  If DM1.cdsDLabo.RecordCount=0 Then ShowMessage('No existen datos enviados');
end;

procedure TFenvinfbcocreapo.rdbAnuladosClick(Sender: TObject);
VAR XSQL:String;
begin
  xSql := 'SELECT * FROM APO_INF_GEN_BAN_CRE_CAB WHERE FLGANULA IS NOT NULL ORDER BY CORPRO DESC';
  DM1.cdsDLabo.Close;
  DM1.cdsDLabo.DataRequest(xSql);
  DM1.cdsDLabo.Open;
  If DM1.cdsDLabo.RecordCount=0 Then ShowMessage('No existen datos anulados');
end;

procedure TFenvinfbcocreapo.rdbTodosClick(Sender: TObject);
VAR XSQL: STRING;
begin
  xSql := 'SELECT * FROM APO_INF_GEN_BAN_CRE_CAB  ORDER BY CORPRO DESC';
  DM1.cdsDLabo.Close;
  DM1.cdsDLabo.DataRequest(xSql);
  DM1.cdsDLabo.Open;
  If DM1.cdsDLabo.RecordCount=0 Then ShowMessage('No existen datos para mostrar');
end;

procedure TFenvinfbcocreapo.btnAnula2Click(Sender: TObject);
var XSQL:String;
begin

   If  Length(trim(memObs.Text))=0 then
   Begin
     ShowMessage('Debe ingresar una observación por la anulación');
     memObs.SetFocus;
     exit;
   End;

   XSQL:='UPDATE APO_INF_GEN_BAN_CRE_CAB '
        +' SET FLGANULA=''S'',FECANULA=SYSDATE,USUANULA='+QuotedStr(DM1.wUsuario)
        +' ,OBSANULA='+QuotedStr(TRIM(memObs.Text))
        +' WHERE  CORPRO='+QuotedStr(DM1.cdsDLabo.FieldByname('CORPRO').AsString);
   DM1.DCOM1.AppServer.EjecutaSQL(xSql);

   If rdbEnviados.Checked Then  rdbEnviadosClick(self);
   If rdbAnulados.Checked Then  rdbAnuladosClick(self);
   If rdbTodos.Checked    Then  rdbTodosClick(self);
end;

procedure TFenvinfbcocreapo.btnSalirClick(Sender: TObject);
begin
   pnlObservaciones.Visible := False;
   grbopciones.Enabled      := True;
   grbObsAnula.Enabled      := True;
   btnAnula2.Visible        := True;
   memObs.Text              := '';
end;

procedure TFenvinfbcocreapo.dbgCabeceraCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
   If DM1.cdsDLabo.FieldByName('FLGANULA').AsString = 'S' Then
   Begin
      ABrush.Color := clRed;
      AFont.Color := clWhite;
   End;
end;

procedure TFenvinfbcocreapo.dbgCabeceraDblClick(Sender: TObject);
begin
  If DM1.cdsDLabo.FieldByName('FLGANULA').AsString = 'S' Then
  Begin
    memObs.Text :=TRIM(DM1.cdsDLabo.FieldByName('OBSANULA').AsString);
    pnlObservaciones.Top     := 88;
    pnlObservaciones.Left    := 128;
    pnlObservaciones.Visible := True;
    grbObsAnula.Enabled      := False;
    grbopciones.Enabled      := False;
    btnAnula2.Visible        := False;
  End;
end;
//Fin APO_202102_HPC  


end.
