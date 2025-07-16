unit APO801;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdblook, fcButton, fcImgBtn, fcShapeBtn, ExtCtrls,
  ppBands, ppCtrls, ppClass, ppVar, ppPrnabl, ppCache, ppProd, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, Wwdbdlg, Mask, Buttons, Grids,
  Wwdbigrd, Wwdbgrid;

type
  TFRepAnuUsu = class(TForm)
    ppbdeAnulaApo: TppBDEPipeline;
    ppRAnulaApo: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel16: TppLabel;
    ppLanomes: TppLabel;
    ppLabel18: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText16: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel17: TppLabel;
    ppLine5: TppLine;
    ppLabel19: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppShape1: TppShape;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppShape2: TppShape;
    ppLabel20: TppLabel;
    ppDBText19: TppDBText;
    ppDBCalc4: TppDBCalc;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText2: TppDBText;
    ppDBText13: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBCalc1: TppDBCalc;
    ppLabel14: TppLabel;
    ppDBText14: TppDBText;
    ppLine4: TppLine;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLabel15: TppLabel;
    ppDBText1: TppDBText;
    ppDBCalc2: TppDBCalc;
    ppLine3: TppLine;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppDBText3: TppDBText;
    ppDBText15: TppDBText;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel2: TppLabel;
    ppDBText12: TppDBText;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppDBText20: TppDBText;
    wwDBGrid1: TwwDBGrid;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    edtAno: TEdit;
    edtMes: TEdit;
    dblcdUsuId: TwwDBLookupComboDlg;
    dblcdEquId: TwwDBLookupComboDlg;
    Panel2: TPanel;
    meEqudes: TMaskEdit;
    Panel3: TPanel;
    meUsudes: TMaskEdit;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    dblcduproid: TwwDBLookupComboDlg;
    dblcdupagoid: TwwDBLookupComboDlg;
    dblcduseid: TwwDBLookupComboDlg;
    Panel5: TPanel;
    meusenom: TMaskEdit;
    Panel4: TPanel;
    meupagonom: TMaskEdit;
    Panel1: TPanel;
    meupronom: TMaskEdit;
    procedure fcShapeBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
//    procedure bbtnImprimirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
 //   procedure dblUsuarioExit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure dblcdEquIdChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure dblcdUsuIdExit(Sender: TObject);
    procedure dblcduproidChange(Sender: TObject);
    procedure dblcdupagoidChange(Sender: TObject);
    procedure dblcduseidChange(Sender: TObject);
  private
    { Private declarations }
  public
   xlink : String;
    { Public declarations }
  end;

var
  FRepAnuUsu: TFRepAnuUsu;

implementation

uses APODM;

{$R *.dfm}

procedure TFRepAnuUsu.fcShapeBtn2Click(Sender: TObject);
begin
Close;
end;

procedure TFRepAnuUsu.FormActivate(Sender: TObject);
Var xSql:String;
begin
  xlink := '';
  xSql := 'SELECT UPROID, UPRONOM FROM APO102'+xlink+' ';
  DM1.cdsUPro.Close;
  DM1.cdsUPro.DataRequest(xSql);
  DM1.cdsUPro.Open;
  dblcduproid.Selected.Clear;
  dblcduproid.Selected.Add('UPROID'#9'3'#9'Código'#9#9);
  dblcduproid.Selected.Add('UPRONOM'#9'30'#9'Descripción'#9#9);
  xSql := 'SELECT MODULOID, AREADES FROM db2admin.CRE117'+xlink+'  WHERE MODULOID IN (''PRE'', ''COB'', ''APO'')';
  DM1.cdsGrupos.Close;
  DM1.cdsGrupos.DataRequest(xSql);
  DM1.cdsGrupos.Open;
  dblcdEquId.LookupTable := DM1.cdsGrupos;
  dblcdEquId.LookupField := 'MODULOID';
  dblcdEquId.Selected.Clear;
  dblcdEquId.Selected.Add('MODULOID'#9'3'#9'Código'#9#9);
  dblcdEquId.Selected.Add('AREADES'#9'30'#9'Descripción'#9#9);
  dblcduproid.SetFocus;
end;

procedure TFRepAnuUsu.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 Then
 if   (ActiveControl is TwwDBLookupCombo) or
      (ActiveControl is TCheckBox) then
      Begin
       Key:=#0;
       Perform(CM_DialogKey,VK_TAB,0);
      end
   else
      Begin
        Key:=#0;
        Perform(CM_DialogKey,VK_TAB,0);
      end;
end;



procedure TFRepAnuUsu.BitBtn2Click(Sender: TObject);
begin
  ppLanomes.Caption:= TRIM(edtAno.Text)+'-'+TRIM(edtMes.Text);
  ppRAnulaApo.Print;
end;

procedure TFRepAnuUsu.BitBtn3Click(Sender: TObject);
begin
  FRepAnuUsu.Close;
end;

procedure TFRepAnuUsu.dblcdEquIdChange(Sender: TObject);
Var xSql:String;
begin
  If Trim(dblcdEquId.Text) = '' then
  Begin
    dblcdEquId.Text := '';
    meEqudes.Text   := '';
    Exit;
  End;
  If Length(Trim(dblcdEquId.Text)) = 3 then
  Begin
    If DM1.cdsGrupos.Locate('MODULOID', dblcdEquId.Text, []) Then
    Begin
      meEqudes.Text := DM1.cdsGrupos.FieldByName('AREADES').AsString;
      xSql := 'SELECT USERID, USERNOM  FROM USERTABLE WHERE AREA = '+QuotedStr(dblcdEquId.Text);
      DM1.cdsUsuarios.Close;
      DM1.cdsUsuarios.DataRequest(xSql);
      DM1.cdsUsuarios.Open;
      dblcdUsuId.LookupTable := DM1.cdsUsuarios;
      dblcdUsuId.LookupField := 'USERID';
      dblcdUsuId.Selected.Clear;
      dblcdUsuId.Selected.Add('USERID'#9'13'#9'Código'#9#9);
      dblcdUsuId.Selected.Add('USERNOM'#9'30'#9'Apellidos y Nombre(s)'#9#9);
    End
    Else
    Begin
      MessageDlg('Código no Valido', mtInformation, [mbOk], 0);
      dblcdEquId.Text := '';
      meEqudes.Text := '';
      Exit;
    End;
  End;
end;

procedure TFRepAnuUsu.BitBtn1Click(Sender: TObject);
Var xSql, xWhere:String;
begin
  If edtAno.Text = '' Then
  Begin
    MessageDlg('Ingrese año de Proceso', mtInformation, [mbOk], 0);
    edtAno.SetFocus;
    Exit;
  End;
  If edtMes.Text = '' Then
  Begin
    MessageDlg('Ingrese mes de Proceso', mtInformation, [mbOk], 0);
    edtMes.SetFocus;
    Exit;
  End;
  If dblcduproid.Text <> '' Then  xWhere := ' UPROID = '+QuotedStr(dblcduproid.Text)+' AND ';
  If dblcdupagoid.Text <> '' Then xWhere := xWhere + ' UPAGOID = '+QuotedStr(dblcdupagoid.Text)+' AND ';
  If dblcduseid.Text <> '' Then   xWhere := xWhere + ' USEID = '+QuotedStr(dblcduseid.Text)+' AND ';
  If dblcdEquId.Text = '' Then
     xSql:='SELECT * FROM APO313'+xlink+'  WHERE '+xWhere+' TO_CHAR(FECANULA,''YYYYMM'')='''+TRIM(edtAno.Text)+TRIM(edtMes.Text)+''' order by USUANULA, UPROID,USEID,TRANSNOPE'
  Else If dblcdUsuId.Text = '' Then
     xSql := 'SELECT A.* FROM APO313'+xlink+'  A, USERTABLE B WHERE '+xWhere+' TO_CHAR(A.FECANULA,''YYYYMM'')='+QuotedStr(Trim(edtAno.Text)+Trim(edtMes.Text))
     +' AND A.USUANULA = B.USERID AND B.AREA = '+QuotedStr(dblcdEquId.Text)+' ORDER BY A.USUANULA, A.UPROID, A.USEID, A.TRANSNOPE'
  Else
     xSql := 'SELECT A.* FROM APO313'+xlink+'  A, USERTABLE B WHERE '+xWhere+' TO_CHAR(A.FECANULA,''YYYYMM'')='+QuotedStr(Trim(edtAno.Text)+Trim(edtMes.Text))
     +' AND A.USUANULA = '+QuotedStr(dblcdUsuId.Text)
     +' AND A.USUANULA = B.USERID AND B.AREA = '+QuotedStr(dblcdEquId.Text)+' ORDER BY A.USUANULA, A.UPROID, A.USEID, A.TRANSNOPE';
  DM1.cdsReporte.Close;
  DM1.cdsReporte.DataRequest(xSql);
  DM1.cdsReporte.Open;
End;

procedure TFRepAnuUsu.dblcdUsuIdExit(Sender: TObject);
begin
  If Trim(dblcdUsuId.Text) = '' then
  Begin
    dblcdUsuId.Text := '';
    meUsudes.Text := '';
    Exit;
  End;

  If DM1.cdsUsuarios.Locate('USERID', dblcdUsuId.Text, []) Then
     meUsudes.Text := DM1.cdsUsuarios.FieldByName('USERNOM').AsString
  Else
  Begin
    MessageDlg('Código no Valido', mtInformation, [mbOk], 0);
    dblcdUsuId.Text := '';
    meUsudes.Text   := '';
    Exit;
  End;
End;


Procedure TFRepAnuUsu.dblcduproidChange(Sender: TObject);
Begin
  If Trim(dblcduproid.Text) = '' then
  Begin
    dblcduproid.Text := '';
    meupronom.Text := '';
    dblcdupagoid.Text := '';
    meupagonom.Text := '';
    dblcduseid.Text := '';
    meusenom.Text := '';
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
End;

Procedure TFRepAnuUsu.dblcdupagoidChange(Sender: TObject);
Var xSql:String;
Begin
  If Trim(dblcdupagoid.Text) = '' then
  Begin
    dblcdupagoid.Text := '';
    meupagonom.Text := '';
    dblcduseid.Text := '';
    meusenom.Text := '';
    Exit;
  End;
  If Length(Trim(dblcdupagoid.Text)) = 2 then
  Begin
    If DM1.cdsUPago.Locate('UPAGOID', dblcdupagoid.Text, []) Then
    Begin
      meupagonom.Text := DM1.cdsUPago.FieldByName('UPAGONOM').AsString;
      xSql := 'SELECT USEID, USENOM FROM APO101 WHERE UPROID = '+QuotedStr(dblcduproid.Text)+' AND UPAGOID = '+QuotedStr(dblcdupagoid.Text);
      DM1.cdsUse.Close;
      DM1.cdsUse.DataRequest(xSql);
      DM1.cdsUse.Open;
      dblcduseid.Selected.Clear;
      dblcduseid.Selected.Add('USEID'#9'3'#9'Código'#9#9);
      dblcduseid.Selected.Add('USENOM'#9'25'#9'Descipción'#9#9);
    End
    Else
    Begin
      MessageDlg('Código no Valido', mtInformation, [mbOk], 0);
      dblcdupagoid.Text := '';
      meupagonom.Text := '';
      Exit;
    End;
  End;
End;

Procedure TFRepAnuUsu.dblcduseidChange(Sender: TObject);
Begin
  If Trim(dblcduseid.Text) = '' then
  Begin
    dblcduseid.Text := '';
    meusenom.Text := '';
    Exit;
  End;
  If Length(Trim(dblcduseid.Text)) = 2 then
  Begin
    If DM1.cdsUse.Locate('USEID', dblcduseid.Text, []) Then
    Begin
      meusenom.Text := DM1.cdsUse.FieldByName('USENOM').AsString;
    End
    Else
    Begin
      MessageDlg('Código no Valido', mtInformation, [mbOk], 0);
      dblcduseid.Text := '';
      meusenom.Text := '';
      Exit;
    End;
  End;
End;

end.
