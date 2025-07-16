unit APO315;

// Inicio Uso Estándares:   01/08/2011
// Unidad               :   APO315
// Formulario           :   Fgesnoapolot
// Objetivo             :   Gestión de No Aportantes en Lotes
//////////////////////////////////////////////////////////////////////////
// Actualizaciones      :
// HPC_201201_APO  06/01/2012 cambio de valor máximo para Año de Proceso
//////////////////////////////////////////////////////////////////////////
// DPP_201201_APO       : El pase se realiza apartir del pase HPC_201201_APO

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, wwdbedit, Wwdbspin, Mask, ExtCtrls, StdCtrls, wwdblook, Wwdbdlg,
  Buttons, Grids, Wwdbigrd, Wwdbgrid;

type
  TFgesnoapolot = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    dblcduproid: TwwDBLookupComboDlg;
    dblcdupagoid: TwwDBLookupComboDlg;
    Panel1: TPanel;
    meupronom: TMaskEdit;
    Panel2: TPanel;
    meupagonom: TMaskEdit;
    dbseanopro: TwwDBSpinEdit;
    dbsemespro: TwwDBSpinEdit;
    dblcddptoid: TwwDBLookupComboDlg;
    dbgnoapomes: TwwDBGrid;
    btnprocesar: TBitBtn;
    btnlimpiar: TBitBtn;
    Panel3: TPanel;
    medepdes: TMaskEdit;
    GroupBox3: TGroupBox;
    Label10: TLabel;
    dblcddesnoapo: TwwDBLookupComboDlg;
    Panel9: TPanel;
    medesnoapome: TMaskEdit;
    medes: TMemo;
    btngrabar: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure dblcddptoidChange(Sender: TObject);
    procedure dblcduproidChange(Sender: TObject);
    procedure dblcdupagoidChange(Sender: TObject);
    procedure btnprocesarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnlimpiarClick(Sender: TObject);
    procedure dblcddesnoapoChange(Sender: TObject);
    procedure btngrabarClick(Sender: TObject);
    // Inicio: DPP_201201_APO
    procedure FormCreate(Sender: TObject);
    // Fin: DPP_201201_APO
//    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fgesnoapolot: TFgesnoapolot;

implementation

uses APODM;

{$R *.dfm}

Procedure TFgesnoapolot.FormActivate(Sender: TObject);
Var xSql:String;
Begin

  xSql := 'SELECT CODMOTNOAPO, DESMOTNOAPO FROM APO_DES_NO_APO';
  DM1.cdsFPagoAporte.Close;
  DM1.cdsFPagoAporte.DataRequest(xSql);
  DM1.cdsFPagoAporte.Open;
  dblcddesnoapo.Selected.Clear;
  dblcddesnoapo.Selected.Add('CODMOTNOAPO'#9'2'#9'Código'#9#9);
  dblcddesnoapo.Selected.Add('DESMOTNOAPO'#9'30'#9'Descripción'#9#9);

  xSql := 'SELECT DPTOID, DPTODES FROM APO158';
  DM1.cdsDpto.Close;
  DM1.cdsDpto.DataRequest(xSql);
  DM1.cdsDpto.Open;
  dblcddptoid.Selected.Clear;
  dblcddptoid.Selected.Add('DPTOID'#9'2'#9'Código'#9#9);
  dblcddptoid.Selected.Add('DPTODES'#9'30'#9'Descripción'#9#9);

  dbgnoapomes.Selected.Clear;
  dbgnoapomes.Selected.Add('ASOCODMOD'#9'12'#9'Código Modular~del Asociado'#9#9);
  dbgnoapomes.Selected.Add('USEID'#9'4'#9'Código~de UGEL'#9#9);
  dbgnoapomes.Selected.Add('USENOM'#9'25'#9'Descripción~de UGEL'#9#9);
  dbgnoapomes.Selected.Add('ASOAPENOMDNI'#9'50'#9'Apellidos y Nombre(s)~del Asociado'#9#9);
  dbgnoapomes.Selected.Add('ASODNI'#9'10'#9'DNI del~Asociado'#9#9);
  dbgnoapomes.ApplySelected;
  dbseanopro.SetFocus;


end;

procedure TFgesnoapolot.dblcddptoidChange(Sender: TObject);
Var xSql:String;
begin
  If Trim(dblcddptoid.Text) = '' then
  Begin
    dblcddptoid.Text := '';
    medepdes.Text := '';
    dblcduproid.Text := '';
    meupronom.Text := '';
    dblcdupagoid.Text := '';
    meupagonom.Text := '';
    Exit;
  End;
  If Length(Trim(dblcddptoid.Text)) = 2 then
  Begin
    If DM1.cdsDpto.Locate('DPTOID', dblcddptoid.Text, []) Then
    Begin
      medepdes.Text := DM1.cdsDpto.FieldByName('DPTODES').AsString;
      xSql := 'SELECT UPROID, UPRONOM FROM APO102 WHERE DPTOID = '+QuotedStr(dblcddptoid.Text);
      DM1.cdsUPro.Close;
      DM1.cdsUPro.DataRequest(xSql);
      DM1.cdsUPro.Open;
      dblcduproid.Selected.Clear;
      dblcduproid.Selected.Add('UPROID'#9'3'#9'Código'#9#9);
      dblcduproid.Selected.Add('UPRONOM'#9'30'#9'Descripción'#9#9);
    End
    Else
    Begin
      MessageDlg('Código no Valido', mtInformation, [mbOk], 0);
      dblcddptoid.Text := '';
      medepdes.Text := '';
      Exit;
    End;
  End;
end;

procedure TFgesnoapolot.dblcduproidChange(Sender: TObject);
Var xSql:String;
begin
  If Trim(dblcduproid.Text) = '' then
  Begin
    dblcduproid.Text := '';
    meupronom.Text := '';
    dblcdupagoid.Text := '';
    meupagonom.Text := '';
    Exit;
  End;
  If Length(Trim(dblcduproid.Text)) = 3 then
  Begin
    If DM1.cdsUPro.Locate('UPROID', dblcduproid.Text, []) Then
    Begin
      meupronom.Text := DM1.cdsUPro.FieldByName('UPRONOM').AsString;
      xSql := 'SELECT UPAGOID, UPAGONOM FROM APO103 WHERE UPROID = '+QuotedStr(dblcduproid.Text);
      DM1.cdsUPago.Close;
      DM1.cdsUPago.DataRequest(xSql);
      DM1.cdsUPago.Open;
      dblcdupagoid.Selected.Clear;
      dblcdupagoid.Selected.Add('UPAGOID'#9'3'#9'Código'#9#9);
      dblcdupagoid.Selected.Add('UPAGONOM'#9'25'#9'Descipción'#9#9);
    End
    Else
    Begin
      MessageDlg('Código no Valido', mtInformation, [mbOk], 0);
      dblcduproid.Text := '';
      meupronom.Text := '';
      Exit;
    End;
  End;
end;

procedure TFgesnoapolot.dblcdupagoidChange(Sender: TObject);
begin
  If Trim(dblcdupagoid.Text) = '' then
  Begin
    dblcdupagoid.Text := '';
    meupagonom.Text := '';
    Exit;
  End;
  If Length(Trim(dblcdupagoid.Text)) = 2 then
  Begin
    If DM1.cdsUPago.Locate('UPAGOID', dblcdupagoid.Text, []) Then
    Begin
      meupagonom.Text := DM1.cdsUPago.FieldByName('UPAGONOM').AsString;
    End
    Else
    Begin
      MessageDlg('Código no Valido', mtInformation, [mbOk], 0);
      dblcdupagoid.Text := '';
      meupagonom.Text := '';
      Exit;
    End;
  End;

end;

Procedure TFgesnoapolot.btnprocesarClick(Sender: TObject);
Var xSql:String;
Begin
  dbsemespro.Text := DM1.StrZero(dbsemespro.Text, 2);
  xSql := 'SELECT C.ASOCODMOD, C. ASOCODAUX, C.USEID, D.USENOM, C.ASOAPENOMDNI, B.VALAPO, C.ASODNI, C.ASOID, D.UPROID, D.UPAGOID'
  +' FROM APO_PRO_ASO_NO_APO_CAB A, APO_PRO_ASO_NO_APO_DET B, APO201 C, APO101 D'
  +' WHERE A.UPROID = '+QuotedStr(dblcduproid.Text)+' AND A.UPAGOID = '+QuotedStr(dblcdupagoid.Text)+' AND A.IDEPRO = B.IDEPRO'
  +' AND B.TRANSANO = '+QuotedStr(dbseanopro.Text)+' AND B.TRANSMES = '+QuotedStr(dbsemespro.Text)+' AND B.ASOID = C.ASOID'
  +' AND NVL(CODPRO,''99'') <> ''04'' AND C.UPROID = D.UPROID AND C.UPAGOID = D.UPAGOID AND C.USEID = D.UPAGOID'
  +' GROUP BY C.ASOCODMOD, C. ASOCODAUX, C.USEID, D.USENOM, C.ASOAPENOMDNI, B.VALAPO, C.ASODNI, C.ASOID, D.UPROID, D.UPAGOID';
  DM1.cdsDevolucion.Close;
  DM1.cdsDevolucion.DataRequest(xSql);
  DM1.cdsDevolucion.Open;
End;

Procedure TFgesnoapolot.FormKeyPress(Sender: TObject; var Key: Char);
Begin
If Key = #13 Then
  Begin
    Key := #0;
    Perform(CM_DIALOGKEY, VK_TAB, 0);
  End;
End;

Procedure TFgesnoapolot.btnlimpiarClick(Sender: TObject);
Begin
  Fgesnoapolot.Close;
End;

procedure TFgesnoapolot.dblcddesnoapoChange(Sender: TObject);
Begin
  If Trim(dblcddesnoapo.Text) = '' then
  Begin
    dblcddesnoapo.Text := '';
    medesnoapome.Text := '';
    Exit;
  End;
  If Length(Trim(dblcddesnoapo.Text)) = 2 then
  Begin
    If DM1.cdsFPagoAporte.Locate('CODMOTNOAPO', dblcddesnoapo.Text,[]) Then
    Begin
      medesnoapome.Text := DM1.cdsFPagoAporte.FieldByName('DESMOTNOAPO').AsString;
    End
    Else
    Begin
      MessageDlg('Código no Valido', mtInformation, [mbOk], 0);
      dblcddesnoapo.Text := '';
      medesnoapome.Text := '';
      Exit;
    End;
  End;
end;

procedure TFgesnoapolot.btngrabarClick(Sender: TObject);
Var xSql:String;
Begin
  If Trim(dblcddesnoapo.Text) = '' Then
  Begin
    MessageDlg('Seleccione el tipo de conclusión', mtInformation, [mbOk], 0);
    dblcddesnoapo.SetFocus;
    Exit;
  End;
  If Trim(medes.Text) = '' Then
  Begin
    MessageDlg('Ingrese comentario de la descripción', mtInformation, [mbOk], 0);
    medes.SetFocus;
    Exit;
  End;
  If MessageDlg('¿ Seguro de incluir estos meses como no aportantes ?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
    // Pasando de tabla
    DM1.cdsDevolucion.First;
    While Not DM1.cdsDevolucion.Eof Do
    Begin
      xSql := 'INSERT INTO APO_ASO_NO_APO(ASOID, ASOCODMOD, ASOCODAUX, ASOAPENOMDNI, UPROID, UPAGOID, USEID, TRANSANO, TRANSMES, VALAPO, CODMOTNOAPO, COMMOTNOAPO, USUREG, FECREG, HORREG)'
      +' VALUES ('+QuotedStr(DM1.cdsDevolucion.FieldByName('ASOID').AsString)+','+QuotedStr(DM1.cdsDevolucion.FieldByName('ASOCODMOD').AsString)+','+QuotedStr(DM1.cdsDevolucion.FieldByName('ASOCODAUX').AsString)
      +','+QuotedStr(DM1.cdsDevolucion.FieldByName('ASOAPENOMDNI').AsString)+','+QuotedStr(DM1.cdsDevolucion.FieldByName('UPROID').AsString)
      +','+QuotedStr(DM1.cdsDevolucion.FieldByName('UPAGOID').AsString)+','+QuotedStr(DM1.cdsDevolucion.FieldByName('USEID').AsString)
      +','+QuotedStr(dbseanopro.Text)+','+QuotedStr(DM1.StrZero(dbsemespro.Text,2))
      +','+DM1.cdsDevolucion.FieldByName('VALAPO').AsString+','+QuotedStr(dblcddesnoapo.Text)+','+QuotedStr(medes.Text)
      +','+QuotedStr(DM1.wUsuario)+', TO_DATE(SYSDATE), SYSDATE)';
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      xSql := 'UPDATE APO_PRO_ASO_NO_APO_DET SET USUPRO = '+QuotedStr(DM1.wUsuario)
      +' ,FECPRO= SYSDATE ,CODPRO= ''04'' ,DESPRO = '+QuotedStr(medes.Text)+' WHERE ASOID = '+QuotedStr(DM1.cdsDevolucion.FieldByName('ASOID').AsString)
      +' AND TRANSANO = '+QuotedStr(dbseanopro.Text)+' AND TRANSMES = '+QuotedStr(DM1.StrZero(dbsemespro.Text,2));
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      DM1.cdsDevolucion.Next;
    End;
      xSql := 'SELECT C.ASOCODMOD, C. ASOCODAUX, C.USEID, D.USENOM, C.ASOAPENOMDNI, B.VALAPO, C.ASODNI, C.ASOID, D.UPROID, D.UPAGOID'
  +' FROM APO_PRO_ASO_NO_APO_CAB A, APO_PRO_ASO_NO_APO_DET B, APO201 C, APO101 D'
  +' WHERE A.UPROID = '+QuotedStr(dblcduproid.Text)+' AND A.UPAGOID = '+QuotedStr(dblcdupagoid.Text)+' AND A.IDEPRO = B.IDEPRO'
  +' AND B.TRANSANO = '+QuotedStr(dbseanopro.Text)+' AND B.TRANSMES = '+QuotedStr(dbsemespro.Text)+' AND B.ASOID = C.ASOID'
  +' AND NVL(CODPRO,''99'') <> ''04'' AND C.UPROID = D.UPROID AND C.UPAGOID = D.UPAGOID AND C.USEID = D.UPAGOID'
  +' GROUP BY C.ASOCODMOD, C. ASOCODAUX, C.USEID, D.USENOM, C.ASOAPENOMDNI, B.VALAPO, C.ASODNI, C.ASOID, D.UPROID, D.UPAGOID';
  DM1.cdsDevolucion.Close;
  DM1.cdsDevolucion.DataRequest(xSql);
  DM1.cdsDevolucion.Open;
  dbgnoapomes.Refresh;
  dblcddesnoapo.Text := '';
  medes.Text := '';
  MessageDlg('Proceso concluido', mtInformation, [mbOk], 0);
  End;
End;

// Inicio: DPP_201201_APO
// Inicializa Año Máximo con Año de la Fecha del Sistema
procedure TFgesnoapolot.FormCreate(Sender: TObject);
var
   xsSQL : String;
begin
   xsSQL := 'select to_char(sysdate,''YYYY'') ANOMAX  from DUAL';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsSQL);
   DM1.cdsQry.Open;
   dbseanopro.MaxValue := strtoint(DM1.cdsQry.FieldByName('ANOMAX').AsString);
   DM1.cdsQry.Close;
end;
// Fin: DPP_201201_APO

end.
