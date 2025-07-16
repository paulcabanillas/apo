unit APO517;

// Inicio Uso Estándares:   01/08/2011
// Unidad               :   APO517
// Formulario           :   FDifApo
// Objetivo             :   Gestión de No Aportantes en Lotes
//////////////////////////////////////////////////////////////////////////
// Actualizaciones      :
// HPC_201201_APO  06/01/2012 cambio de valor máximo para Año de Proceso
//////////////////////////////////////////////////////////////////////////
// DPP_201201_APO       : El pase se realiza apartir del pase HPC_201201_APO

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, wwdbdatetimepicker, Mask, ExtCtrls, wwdblook,
  Wwdbdlg, Grids, Wwdbigrd, Wwdbgrid, DB, DBClient, Spin, wwdbedit,
  Wwdbspin, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  ppDBBDE, ppVar, ppCtrls, ppPrnabl, ppBands, ppCache, fcButton, fcImgBtn,
  fcShapeBtn, ppParameter, DBGrids;

type
  TFDifApo = class(TForm)
    gbseleccion: TGroupBox;
    Label2: TLabel;
    btncerrar: TBitBtn;
    dbseanopro: TwwDBSpinEdit;
    btnimprime: TBitBtn;
    dtgData: TDBGrid;
    BitBtn1: TBitBtn;
    ppbdeRep: TppBDEPipeline;
    pprrepdif: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel42: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel82: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    pplanopro: TppLabel;
    rgtiprep: TRadioGroup;
    dblcddptoid: TwwDBLookupComboDlg;
    Label1: TLabel;
    pnldptodes: TPanel;
    medptodes: TMaskEdit;
    ppLine2: TppLine;
    ppLabel46: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    pplimpresopor: TppLabel;
    ppLine1: TppLine;
    ppLabel50: TppLabel;
    Label3: TLabel;
    dblcdugelid: TwwDBLookupComboDlg;
    Panel1: TPanel;
    meugedes: TMaskEdit;
    Label4: TLabel;
    dbsemespro: TwwDBSpinEdit;
    ppShape25: TppShape;
    ppLabel40: TppLabel;
    btnFiltrar: TBitBtn;
    rgdet: TRadioGroup;
    dbgGeneral: TwwDBGrid;
    ppDBText1: TppDBText;
    ppLabel44: TppLabel;
    ppLine15: TppLine;
    pnlprocesar: TPanel;
    GroupBox1: TGroupBox;
    StaticText1: TStaticText;
    btnProcesar: TBitBtn;
    BitBtn2: TBitBtn;
    Label5: TLabel;
    dbseanoapro: TwwDBSpinEdit;
    ppbdedetapo: TppBDEPipeline;
    pprrepnueapo: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppLabel47: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel55: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppShape28: TppShape;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppShape29: TppShape;
    ppLabel61: TppLabel;
    ppLabel64: TppLabel;
    ppShape30: TppShape;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppShape31: TppShape;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    pplTitulo02: TppLabel;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    pplanomes: TppLabel;
    pplmonapo: TppLabel;
    ppldptodes: TppLabel;
    pplUGELdes: TppLabel;
    ppSummaryBand2: TppSummaryBand;
    ppLabel79: TppLabel;
    ppltotaso: TppLabel;
    ppLine16: TppLine;
    ppLine17: TppLine;
    pplimpresopor01: TppLabel;
    ppShape32: TppShape;
    ppLabel70: TppLabel;
    ppLabel80: TppLabel;
    ppDBText32: TppDBText;
    ppDBCalc27: TppDBCalc;
    ppShape26: TppShape;
    ppDBText2: TppDBText;
    ppLabel41: TppLabel;
    ppLabel43: TppLabel;
    ppLabel1: TppLabel;
    ppDBText3: TppDBText;
    ppShape27: TppShape;
    ppDBText4: TppDBText;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppLabel2: TppLabel;
    ppLine3: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppLabel6: TppLabel;
    ppLine4: TppLine;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppShape8: TppShape;
    ppLabel10: TppLabel;
    ppLine5: TppLine;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppShape11: TppShape;
    ppLabel18: TppLabel;
    ppLine6: TppLine;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppShape12: TppShape;
    ppShape13: TppShape;
    ppShape14: TppShape;
    ppLabel22: TppLabel;
    ppLine7: TppLine;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppShape15: TppShape;
    ppShape16: TppShape;
    ppShape17: TppShape;
    ppLabel26: TppLabel;
    ppLine8: TppLine;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppShape18: TppShape;
    ppShape19: TppShape;
    ppShape20: TppShape;
    ppLabel30: TppLabel;
    ppLine9: TppLine;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppShape21: TppShape;
    ppShape22: TppShape;
    ppShape23: TppShape;
    ppLabel34: TppLabel;
    ppLine10: TppLine;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppShape24: TppShape;
    ppShape33: TppShape;
    ppShape34: TppShape;
    ppLabel38: TppLabel;
    ppLine11: TppLine;
    ppLabel39: TppLabel;
    ppLabel45: TppLabel;
    ppLabel81: TppLabel;
    ppShape35: TppShape;
    ppShape36: TppShape;
    ppShape37: TppShape;
    ppLabel83: TppLabel;
    ppLine12: TppLine;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppShape38: TppShape;
    ppShape39: TppShape;
    ppShape40: TppShape;
    ppLabel87: TppLabel;
    ppLine13: TppLine;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppShape41: TppShape;
    ppShape42: TppShape;
    ppShape43: TppShape;
    ppLabel91: TppLabel;
    ppLine14: TppLine;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppShape44: TppShape;
    ppShape45: TppShape;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppShape46: TppShape;
    ppShape47: TppShape;
    ppShape48: TppShape;
    ppShape49: TppShape;
    ppShape50: TppShape;
    ppShape51: TppShape;
    ppShape52: TppShape;
    ppShape53: TppShape;
    ppShape54: TppShape;
    ppShape55: TppShape;
    ppShape56: TppShape;
    ppShape57: TppShape;
    ppShape58: TppShape;
    ppShape59: TppShape;
    ppShape61: TppShape;
    ppShape62: TppShape;
    ppShape63: TppShape;
    ppShape64: TppShape;
    ppShape65: TppShape;
    ppShape66: TppShape;
    ppShape67: TppShape;
    ppShape68: TppShape;
    ppShape69: TppShape;
    ppShape70: TppShape;
    ppShape71: TppShape;
    ppShape72: TppShape;
    ppShape73: TppShape;
    ppShape74: TppShape;
    ppShape75: TppShape;
    ppShape76: TppShape;
    ppShape77: TppShape;
    ppShape78: TppShape;
    ppShape79: TppShape;
    ppShape80: TppShape;
    ppShape81: TppShape;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppShape82: TppShape;
    ppShape83: TppShape;
    ppShape84: TppShape;
    ppShape85: TppShape;
    ppShape87: TppShape;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppShape60: TppShape;
    ppShape86: TppShape;
    ppShape88: TppShape;
    ppShape89: TppShape;
    ppShape90: TppShape;
    ppShape91: TppShape;
    ppShape92: TppShape;
    ppShape93: TppShape;
    ppShape94: TppShape;
    ppShape95: TppShape;
    ppShape96: TppShape;
    ppShape97: TppShape;
    ppShape98: TppShape;
    ppShape99: TppShape;
    ppShape100: TppShape;
    ppShape101: TppShape;
    ppShape102: TppShape;
    ppShape103: TppShape;
    ppShape104: TppShape;
    ppShape105: TppShape;
    ppShape106: TppShape;
    ppShape107: TppShape;
    ppShape108: TppShape;
    ppShape109: TppShape;
    ppShape110: TppShape;
    ppShape111: TppShape;
    ppShape112: TppShape;
    ppShape113: TppShape;
    ppShape114: TppShape;
    ppShape115: TppShape;
    ppShape116: TppShape;
    ppShape117: TppShape;
    ppShape118: TppShape;
    ppShape119: TppShape;
    ppShape120: TppShape;
    ppShape121: TppShape;
    ppShape122: TppShape;
    ppShape126: TppShape;
    ppShape127: TppShape;
    ppShape128: TppShape;
    ppShape129: TppShape;
    ppShape130: TppShape;
    ppShape131: TppShape;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppDBCalc26: TppDBCalc;
    ppDBCalc28: TppDBCalc;
    ppDBCalc29: TppDBCalc;
    ppDBCalc30: TppDBCalc;
    ppDBCalc31: TppDBCalc;
    ppDBCalc32: TppDBCalc;
    ppDBCalc33: TppDBCalc;
    ppDBCalc34: TppDBCalc;
    ppDBCalc35: TppDBCalc;
    ppDBCalc36: TppDBCalc;
    ppDBCalc37: TppDBCalc;
    ppDBCalc38: TppDBCalc;
    ppDBCalc39: TppDBCalc;
    ppDBCalc40: TppDBCalc;
    pplprocesadoel: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppShape123: TppShape;
    ppLine18: TppLine;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppShape124: TppShape;
    BitBtn3: TBitBtn;
    procedure btncerrarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnaExcelClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnimprimeClick(Sender: TObject);
    procedure rgtiprepClick(Sender: TObject);
    procedure dblcddptoidChange(Sender: TObject);
    procedure ppLabel1Print(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure ppLabel40Print(Sender: TObject);
    procedure dblcdugelidChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnProcesarClick(Sender: TObject);
    procedure rgdetClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    // Inicio: DPP_201201_APO
    procedure FormCreate(Sender: TObject);
    // Fin: DPP_201201_APO
  private
    V_UseId, V_UpagoId, V_UproId :String;
    V_Mes, V_Ano, V_MesA, V_AnoA :String;
  public
    { Public declarations }
  end;

var
  FDifApo: TFDifApo;

implementation

uses APODM; //, APO516

{$R *.dfm}

procedure TFDifApo.btncerrarClick(Sender: TObject);
begin
  FDifApo.Close;
end;

Procedure TFDifApo.FormKeyPress(Sender: TObject; var Key: Char);
Begin
  If Key = #13 Then
  Begin
    Key := #0;
    Perform(CM_DIALOGKEY, VK_TAB, 0);
  End;
End;

Procedure TFDifApo.btnaExcelClick(Sender: TObject);
Begin
 // a Excel
End;

procedure TFDifApo.FormActivate(Sender: TObject);
begin
  rgtiprep.ItemIndex := 0;
  dblcddptoid.Enabled := False;
  pnlprocesar.Visible := False;
end;


procedure TFDifApo.btnimprimeClick(Sender: TObject);
Var xSql:String;
begin

  If (rgtiprep.ItemIndex = 0) Or (rgtiprep.ItemIndex = 1) Then
  Begin
    xSql := 'USERID = '+QuotedStr(DM1.wUsuario);
    pplimpresopor.Caption :=  'Impreso por : '+DM1.DisplayDescrip('prvTGE','TGE006','USERNOM',xSql,'USERNOM');
    xSql := 'SELECT MIN(FECREG) FECREG FROM APO_TAB_DIF_APO WHERE PERPRO = '+QuotedStr(dbseanopro.Text);
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    pplprocesadoel.Caption := 'Fecha y Hora de Proceso : '+DM1.cdsQry.FieldByName('FECREG').AsString;

    If dblcddptoid.Text = '' Then
       pplanopro.Caption := 'AÑO : '+dbseanopro.Text
    Else
       pplanopro.Caption := 'AÑO : '+dbseanopro.Text+' - DEPARTAMENTO : '+medptodes.Text;
    pprrepdif.Print;
  End;

  If rgtiprep.ItemIndex = 2 Then
  Begin
    If rgdet.ItemIndex = 0 Then
    Begin
      xSql := 'SELECT APOVALOR FROM APO117 WHERE APOANO = '+QuotedStr(V_Ano)+' AND APOMES = '+QuotedStr(V_Mes);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      pplmonapo.Caption       :=  'S/. '+FloatToStrF(DM1.cdsQry.FieldByName('APOVALOR').AsFloat, ffNumber,10,2);
      pplanomes.Caption       := dbseanopro.Text+'-'+dbsemespro.Text;
      ppldptodes.Caption      := medptodes.Text;
      pplUGELdes.Caption      := meugedes.Text;
      pplTitulo02.Caption     := 'NO APORTANTES POR UGEL';
      xSql := 'USERID = '+QuotedStr(DM1.wUsuario);
      pplimpresopor01.Caption :=  'Impreso por : '+DM1.DisplayDescrip('prvTGE','TGE006','USERNOM',xSql,'USERNOM');
      ppltotaso.Caption := IntToStr(DM1.cdsReporte.RecordCount);
      ppDBText32.Visible := False;
      ppDBCalc27.Visible := False;
      ppLine16.Width := 5.75;
      ppLine17.Width := 5.75;
      ppShape32.Visible := False;
      ppLabel70.Visible := False;
      ppLabel80.Visible := False;
      pprrepnueapo.Print;
    End;
    If (rgdet.ItemIndex = 1) Or (rgdet.ItemIndex = 2) Then
    Begin
      xSql := 'SELECT APOVALOR FROM APO117 WHERE APOANO = '+QuotedStr(V_Ano)+' AND APOMES = '+QuotedStr(V_Mes);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      pplmonapo.Caption       :=  'S/. '+FloatToStrF(DM1.cdsQry.FieldByName('APOVALOR').AsFloat, ffNumber,10,2);
      pplanomes.Caption       := dbseanopro.Text+'-'+dbsemespro.Text;
      ppldptodes.Caption      := medptodes.Text;
      pplUGELdes.Caption      := meugedes.Text;
      If rgdet.ItemIndex = 1 Then pplTitulo02.Caption     := 'VUELVEN HA APORTAR POR UGEL';
      If rgdet.ItemIndex = 2 Then pplTitulo02.Caption     := 'NUEVOS APORTANTES POR UGEL';
      xSql := 'USERID = '+QuotedStr(DM1.wUsuario);
      pplimpresopor01.Caption :=  'Impreso por : '+DM1.DisplayDescrip('prvTGE','TGE006','USERNOM',xSql,'USERNOM');
      ppltotaso.Caption := IntToStr(DM1.cdsReporte.RecordCount);
      ppDBText32.Visible := True;
      ppDBCalc27.Visible := True;
      ppLine16.Width := 6.4688;
      ppLine17.Width := 6.4688;
      ppShape32.Visible := True;
      ppLabel70.Visible := True;
      ppLabel80.Visible := True;
      pprrepnueapo.Print;
    End;
  End;
end;

Procedure TFDifApo.rgtiprepClick(Sender: TObject);
Var xSql:String;
Begin
  If DM1.cdsReporte.Active Then DM1.cdsReporte.EmptyDataSet;
  dbgGeneral.ColumnByName('N_ENE').FooterValue      := FormatFloat('##,###',0);
  dbgGeneral.ColumnByName('N_FEB').FooterValue      := FormatFloat('##,###',0);
  dbgGeneral.ColumnByName('N_MAR').FooterValue      := FormatFloat('##,###',0);
  dbgGeneral.ColumnByName('N_ABR').FooterValue      := FormatFloat('##,###',0);
  dbgGeneral.ColumnByName('N_MAY').FooterValue      := FormatFloat('##,###',0);
  dbgGeneral.ColumnByName('N_JUN').FooterValue      := FormatFloat('##,###',0);
  dbgGeneral.ColumnByName('N_JUL').FooterValue      := FormatFloat('##,###',0);
  dbgGeneral.ColumnByName('N_AGO').FooterValue      := FormatFloat('##,###',0);
  dbgGeneral.ColumnByName('N_SET').FooterValue      := FormatFloat('##,###',0);
  dbgGeneral.ColumnByName('N_OCT').FooterValue      := FormatFloat('##,###',0);
  dbgGeneral.ColumnByName('N_NOV').FooterValue      := FormatFloat('##,###',0);
  dbgGeneral.ColumnByName('N_DIC').FooterValue      := FormatFloat('##,###',0);
  dbgGeneral.ColumnByName('N_TOT').FooterValue      := FormatFloat('##,###',0);
  dbgGeneral.ColumnByName('F_ENE').FooterValue      := FormatFloat('##,###',0);
  dbgGeneral.ColumnByName('F_FEB').FooterValue      := FormatFloat('##,###',0);
  dbgGeneral.ColumnByName('F_MAR').FooterValue      := FormatFloat('##,###',0);
  dbgGeneral.ColumnByName('F_ABR').FooterValue      := FormatFloat('##,###',0);
  dbgGeneral.ColumnByName('F_MAY').FooterValue      := FormatFloat('##,###',0);
  dbgGeneral.ColumnByName('F_JUN').FooterValue      := FormatFloat('##,###',0);
  dbgGeneral.ColumnByName('F_JUL').FooterValue      := FormatFloat('##,###',0);
  dbgGeneral.ColumnByName('F_AGO').FooterValue      := FormatFloat('##,###',0);
  dbgGeneral.ColumnByName('F_SET').FooterValue      := FormatFloat('##,###',0);
  dbgGeneral.ColumnByName('F_OCT').FooterValue      := FormatFloat('##,###',0);
  dbgGeneral.ColumnByName('F_NOV').FooterValue      := FormatFloat('##,###',0);
  dbgGeneral.ColumnByName('F_DIC').FooterValue      := FormatFloat('##,###',0);
  dbgGeneral.ColumnByName('F_TOT').FooterValue      := FormatFloat('##,###',0);
  dbseanopro.Text  := '';
  dbsemespro.Text  := '';
  dblcddptoid.Text := '';
  dblcdugelid.Text := '';

  If rgtiprep.ItemIndex = 0 Then
  Begin
    dbseanopro.TabOrder  := 1;
    btnFiltrar.TabOrder  := 2;
    dbseanopro.Enabled  := True;  dbseanopro.Color  := clInfoBk;
    dblcddptoid.Enabled := False; dblcddptoid.Color := clWhite;
    dblcdugelid.Enabled := False; dblcdugelid.Color := clWhite;
    dbsemespro.Enabled  := False; dbsemespro.Color  := clWhite;
    rgdet.Enabled       := False;
    dblcddptoid.Text := '';
    medptodes.Text   := '';
    dbseanopro.SetFocus;
  End;

  If rgtiprep.ItemIndex = 1 Then
  Begin
    dbseanopro.TabOrder  := 1;
    dblcddptoid.TabOrder := 2;
    btnFiltrar.TabOrder  := 3;
    dbseanopro.Enabled := True;   dbseanopro.Color := clInfoBk;
    dblcddptoid.Enabled := True; dblcddptoid.Color := clInfoBk;
    dblcdugelid.Enabled := False; dblcdugelid.Color := clWhite;
    dbsemespro.Enabled := False;  dbsemespro.Color := clWhite;
    rgdet.Enabled := False;
    xSql := 'SELECT DPTOID, DPTODES FROM APO158';
    DM1.cdsDpto.Close;
    DM1.cdsDpto.DataRequest(xSql);
    DM1.cdsDpto.Open;
    dblcddptoid.Selected.Clear;
    dblcddptoid.Selected.Add('DPTOID'#9'2'#9'Código'#9#9);
    dblcddptoid.Selected.Add('DPTODES'#9'30'#9'Descripción'#9#9);
    dbseanopro.SetFocus;
  End;

  If rgtiprep.ItemIndex = 2 Then
  Begin
    rgdet.TabOrder       := 1;
    dbseanopro.TabOrder  := 2;
    dblcddptoid.TabOrder := 3;
    dblcdugelid.TabOrder := 4;
    dbsemespro.TabOrder  := 5;
    btnFiltrar.TabOrder  := 6;
    dbseanopro.Enabled := True;  dbseanopro.Color   := clInfoBk;
    dblcddptoid.Enabled := True; dblcddptoid.Color  := clInfoBk;
    dblcdugelid.Enabled := True; dblcdugelid.Color  := clInfoBk;
    dbsemespro.Enabled := True;  dbsemespro.Color   := clInfoBk;
    xSql := 'SELECT DPTOID, DPTODES FROM APO158';
    DM1.cdsDpto.Close;
    DM1.cdsDpto.DataRequest(xSql);
    DM1.cdsDpto.Open;
    dblcddptoid.Selected.Clear;
    dblcddptoid.Selected.Add('DPTOID'#9'2'#9'Código'#9#9);
    dblcddptoid.Selected.Add('DPTODES'#9'30'#9'Descripción'#9#9);
    rgdet.Enabled := True;
    rgdet.ItemIndex := 0;
    rgdet.SetFocus;
  End;
End;

procedure TFDifApo.dblcddptoidChange(Sender: TObject);
begin
  If Trim(dblcddptoid.Text) = '' then
  Begin
    dblcddptoid.Text := '';
    medptodes.Text   := '';
    Exit;
  End;
  If Length(Trim(dblcddptoid.Text)) = 2 then
  Begin
    If  DM1.cdsDpto.Locate('DPTOID', dblcddptoid.Text, []) Then
    Begin
      medptodes.Text := DM1.cdsDpto.FieldByName('DPTODES').AsString;
      xSql := 'SELECT USEID, USENOM, UPROID, UPAGOID FROM APO101 WHERE DPTOID = '+QuotedStr(dblcddptoid.Text);
      DM1.cdsUse.Close;
      DM1.cdsUse.DataRequest(xSql);
      DM1.cdsUse.Open;
      dblcdugelid.Selected.Clear;
      dblcdugelid.Selected.Add('USEID'#9'2'#9'Código'#9#9);
      dblcdugelid.Selected.Add('USENOM'#9'30'#9'Descripción'#9#9);
    End
    Else
    Begin
      MessageDlg('Código no Valido', mtInformation, [mbOk], 0);
      dblcddptoid.Text := '';
      medptodes.Text := '';
      Exit;
    End;
  End;
end;

procedure TFDifApo.ppLabel1Print(Sender: TObject);
begin
 If rgtiprep.ItemIndex = 0 Then ppLabel1.Caption := 'DPTO. : ' Else ppLabel1.Caption := 'UGEL';
end;

procedure TFDifApo.btnFiltrarClick(Sender: TObject);
Var
  xSql:String;
  V_N_Ene, V_N_Feb, V_N_Mar, V_N_Abr, V_N_May, V_N_Jun, V_N_Jul, V_N_Ago, V_N_Set, V_N_Oct, V_N_Nov, V_N_Dic, V_N_Tot :Integer;
  V_A_Ene, V_A_Feb, V_A_Mar, V_A_Abr, V_A_May, V_A_Jun, V_A_Jul, V_A_Ago, V_A_Set, V_A_Oct, V_A_Nov, V_A_Dic, V_A_Tot :Integer;
  V_F_Ene, V_F_Feb, V_F_Mar, V_F_Abr, V_F_May, V_F_Jun, V_F_Jul, V_F_Ago, V_F_Set, V_F_Oct, V_F_Nov, V_F_Dic, V_F_Tot :Integer;
begin
  // Por año de proceso
  If rgtiprep.ItemIndex = 0 Then
  Begin
    If dbseanopro.Text = '' Then
    Begin
      MessageDlg('Ingrese el año de proceso', mtInformation, [mbOk], 0);
      dbseanopro.SetFocus;
      Exit;
    End;
  End;
  // Por año de proceso y departamento
  If rgtiprep.ItemIndex = 1 Then
  Begin
    If dbseanopro.Text = '' Then
    Begin
      MessageDlg('Ingrese el año de proceso', mtInformation, [mbOk], 0);
      dbseanopro.SetFocus;
      Exit;
    End;
    If dblcddptoid.Text = '' Then
    Begin
      MessageDlg('Ingreso el código del departamento', mtInformation, [mbOk], 0);
      dblcddptoid.SetFocus;
      Exit;
    End;
  End;
  // Por año de proceso, departamento y UGEL
  If rgtiprep.ItemIndex = 2 Then
  Begin
    If dbseanopro.Text = '' Then
    Begin
      MessageDlg('Ingrese el año de proceso', mtInformation, [mbOk], 0);
      dbseanopro.SetFocus;
      Exit;
    End;
    If dblcddptoid.Text = '' Then
    Begin
      MessageDlg('Ingreso el código del departamento', mtInformation, [mbOk], 0);
      dblcddptoid.SetFocus;
      Exit;
    End;
    If dblcdugelid.Text = '' Then
    Begin
      MessageDlg('Ingreso el código de la UGEL', mtInformation, [mbOk], 0);
      dblcdugelid.SetFocus;
      Exit;
    End;
    If dbsemespro.Text = '' Then
    Begin
      MessageDlg('Ingrese el mes de proceso', mtInformation, [mbOk], 0);
      dbsemespro.SetFocus;
      Exit;
    End;
  End;
  xSql := 'SELECT '''' DPTODES, 0 N_ENE, 0 N_FEB, 0 N_MAR, 0 N_ABR, 0 N_MAY, 0 N_JUN, 0 N_JUL, 0 N_AGO, 0 N_SET, 0 N_OCT, 0 N_NOV, 0 N_DIC, 0 N_TOT,'
                              +'0 F_ENE, 0 F_FEB, 0 F_MAR, 0 F_ABR, 0 F_MAY, 0 F_JUN, 0 F_JUL, 0 F_AGO, 0 F_SET, 0 F_OCT, 0 F_NOV, 0 F_DIC, 0 F_TOT,'
                              +'0 A_ENE, 0 A_FEB, 0 A_MAR, 0 A_ABR, 0 A_MAY, 0 A_JUN, 0 A_JUL, 0 A_AGO, 0 A_SET, 0 A_OCT, 0 A_NOV, 0 A_DIC, 0 A_TOT '
                              +' FROM DUAL';
  DM1.cdsReporte.Close;
  DM1.cdsReporte.DataRequest(xSql);
  DM1.cdsReporte.Open;
  // Verificando si existe información de ese campo
  xSql := 'SELECT MAX(TO_DATE(FECREG)) FECPRO FROM APO_TAB_DIF_APO WHERE PERPRO = '+QuotedStr(dbseanopro.Text);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  If (rgtiprep.ItemIndex = 0) Or (rgtiprep.ItemIndex = 1) Then
  Begin

    dbgGeneral.Selected.Clear;
    If rgtiprep.ItemIndex = 0 Then
       dbgGeneral.Selected.Add('DPTODES'#9'25'#9'Descripción~de Departamento'#9#9)
    Else
       dbgGeneral.Selected.Add('DPTODES'#9'25'#9'Descripción~de UGEL'#9#9);

    dbgGeneral.Selected.Add('N_ENE'#9'6'#9'Nuevos~Enero'#9#9);
    dbgGeneral.Selected.Add('A_ENE'#9'8'#9'Nue.Apo.~Enero'#9#9);
    dbgGeneral.Selected.Add('F_ENE'#9'9'#9'Faltantes~Enero'#9#9);

    dbgGeneral.Selected.Add('N_FEB'#9'7'#9'Nuevos~Febrero'#9#9);
    dbgGeneral.Selected.Add('A_FEB'#9'8'#9'Nue.Apo.~Febrero'#9#9);
    dbgGeneral.Selected.Add('F_FEB'#9'9'#9'Faltantes~Febrero'#9#9);

    dbgGeneral.Selected.Add('N_MAR'#9'6'#9'Nuevos~Marzo'#9#9);
    dbgGeneral.Selected.Add('A_MAR'#9'8'#9'Nue.Apo.~Marzo'#9#9);
    dbgGeneral.Selected.Add('F_MAR'#9'9'#9'Faltantes~Marzo'#9#9);

    dbgGeneral.Selected.Add('N_ABR'#9'6'#9'Nuevos~Abril'#9#9);
    dbgGeneral.Selected.Add('A_ABR'#9'8'#9'Nue.Apo.~Abril'#9#9);
    dbgGeneral.Selected.Add('F_ABR'#9'9'#9'Faltantes~Abril'#9#9);

    dbgGeneral.Selected.Add('N_MAY'#9'6'#9'Nuevos~Mayo'#9#9);
    dbgGeneral.Selected.Add('A_MAY'#9'8'#9'Nue.Apo.~Mayo'#9#9);
    dbgGeneral.Selected.Add('F_MAY'#9'9'#9'Faltantes~Mayo'#9#9);

    dbgGeneral.Selected.Add('N_JUN'#9'6'#9'Nuevos~Junio'#9#9);
    dbgGeneral.Selected.Add('A_JUN'#9'8'#9'Nue.Apo.~Junio'#9#9);
    dbgGeneral.Selected.Add('F_JUN'#9'9'#9'Faltantes~Junio'#9#9);

    dbgGeneral.Selected.Add('N_JUL'#9'6'#9'Nuevos~Julio'#9#9);
    dbgGeneral.Selected.Add('A_JUL'#9'8'#9'Nue.Apo.~Julio'#9#9);
    dbgGeneral.Selected.Add('F_JUL'#9'9'#9'Faltantes~Julio'#9#9);

    dbgGeneral.Selected.Add('N_AGO'#9'6'#9'Nuevos~Agosto'#9#9);
    dbgGeneral.Selected.Add('A_AGO'#9'8'#9'Nue.Apo.~Agosto'#9#9);
    dbgGeneral.Selected.Add('F_AGO'#9'9'#9'Faltantes~Agosto'#9#9);

    dbgGeneral.Selected.Add('N_SET'#9'10'#9'Nuevos~Setiembre'#9#9);
    dbgGeneral.Selected.Add('A_SET'#9'10'#9'Nue.Apo.~Setiembre'#9#9);
    dbgGeneral.Selected.Add('F_SET'#9'10'#9'Faltantes~Setiembre'#9#9);

    dbgGeneral.Selected.Add('N_OCT'#9'10'#9'Nuevos~Octubre'#9#9);
    dbgGeneral.Selected.Add('A_OCT'#9'10'#9'Nue.Apo.~Octubre'#9#9);
    dbgGeneral.Selected.Add('F_OCT'#9'10'#9'Faltantes~Octubre'#9#9);

    dbgGeneral.Selected.Add('N_NOV'#9'10'#9'Nuevos~Noviembre'#9#9);
    dbgGeneral.Selected.Add('A_NOV'#9'10'#9'Nue.Apo.~Noviembre'#9#9);
    dbgGeneral.Selected.Add('F_NOV'#9'10'#9'Faltantes~Noviembre'#9#9);

    dbgGeneral.Selected.Add('N_DIC'#9'10'#9'Nuevos~Diciembre'#9#9);
    dbgGeneral.Selected.Add('A_DIC'#9'10'#9'Nue.Apo.~Diciembre'#9#9);
    dbgGeneral.Selected.Add('F_DIC'#9'10'#9'Faltantes~Diciembre'#9#9);

    dbgGeneral.Selected.Add('N_TOT'#9'10'#9'Nuevos~Total'#9#9);
    dbgGeneral.Selected.Add('A_TOT'#9'10'#9'Nue.Apo.~Total'#9#9);
    dbgGeneral.Selected.Add('F_TOT'#9'10'#9'Faltantes~Total'#9#9);

    dbgGeneral.ApplySelected;
    TNumericField(DM1.cdsReporte.FieldByName('N_ENE')).DisplayFormat := '##,###';
    TNumericField(DM1.cdsReporte.FieldByName('A_ENE')).DisplayFormat := '##,###';
    TNumericField(DM1.cdsReporte.FieldByName('F_ENE')).DisplayFormat := '##,###';
    TNumericField(DM1.cdsReporte.FieldByName('N_FEB')).DisplayFormat := '##,###';
    TNumericField(DM1.cdsReporte.FieldByName('A_FEB')).DisplayFormat := '##,###';
    TNumericField(DM1.cdsReporte.FieldByName('F_FEB')).DisplayFormat := '##,###';
    TNumericField(DM1.cdsReporte.FieldByName('N_MAR')).DisplayFormat := '##,###';
    TNumericField(DM1.cdsReporte.FieldByName('A_MAR')).DisplayFormat := '##,###';
    TNumericField(DM1.cdsReporte.FieldByName('F_MAR')).DisplayFormat := '##,###';
    TNumericField(DM1.cdsReporte.FieldByName('N_ABR')).DisplayFormat := '##,###';
    TNumericField(DM1.cdsReporte.FieldByName('A_ABR')).DisplayFormat := '##,###';
    TNumericField(DM1.cdsReporte.FieldByName('F_ABR')).DisplayFormat := '##,###';
    TNumericField(DM1.cdsReporte.FieldByName('N_MAY')).DisplayFormat := '##,###';
    TNumericField(DM1.cdsReporte.FieldByName('A_MAY')).DisplayFormat := '##,###';
    TNumericField(DM1.cdsReporte.FieldByName('F_MAY')).DisplayFormat := '##,###';
    TNumericField(DM1.cdsReporte.FieldByName('N_JUN')).DisplayFormat := '##,###';
    TNumericField(DM1.cdsReporte.FieldByName('A_JUN')).DisplayFormat := '##,###';
    TNumericField(DM1.cdsReporte.FieldByName('F_JUN')).DisplayFormat := '##,###';
    TNumericField(DM1.cdsReporte.FieldByName('N_JUL')).DisplayFormat := '##,###';
    TNumericField(DM1.cdsReporte.FieldByName('A_JUL')).DisplayFormat := '##,###';
    TNumericField(DM1.cdsReporte.FieldByName('F_JUL')).DisplayFormat := '##,###';
    TNumericField(DM1.cdsReporte.FieldByName('N_AGO')).DisplayFormat := '##,###';
    TNumericField(DM1.cdsReporte.FieldByName('A_AGO')).DisplayFormat := '##,###';
    TNumericField(DM1.cdsReporte.FieldByName('F_AGO')).DisplayFormat := '##,###';
    TNumericField(DM1.cdsReporte.FieldByName('N_SET')).DisplayFormat := '##,###';
    TNumericField(DM1.cdsReporte.FieldByName('A_SET')).DisplayFormat := '##,###';
    TNumericField(DM1.cdsReporte.FieldByName('F_SET')).DisplayFormat := '##,###';
    TNumericField(DM1.cdsReporte.FieldByName('N_OCT')).DisplayFormat := '##,###';
    TNumericField(DM1.cdsReporte.FieldByName('A_OCT')).DisplayFormat := '##,###';
    TNumericField(DM1.cdsReporte.FieldByName('F_OCT')).DisplayFormat := '##,###';
    TNumericField(DM1.cdsReporte.FieldByName('N_NOV')).DisplayFormat := '##,###';
    TNumericField(DM1.cdsReporte.FieldByName('A_NOV')).DisplayFormat := '##,###';
    TNumericField(DM1.cdsReporte.FieldByName('F_NOV')).DisplayFormat := '##,###';
    TNumericField(DM1.cdsReporte.FieldByName('N_DIC')).DisplayFormat := '##,###';
    TNumericField(DM1.cdsReporte.FieldByName('A_DIC')).DisplayFormat := '##,###';
    TNumericField(DM1.cdsReporte.FieldByName('F_DIC')).DisplayFormat := '##,###';
    TNumericField(DM1.cdsReporte.FieldByName('N_TOT')).DisplayFormat := '##,###';
    TNumericField(DM1.cdsReporte.FieldByName('A_TOT')).DisplayFormat := '##,###';
    TNumericField(DM1.cdsReporte.FieldByName('F_TOT')).DisplayFormat := '##,###';
    dbgGeneral.ColumnByName('DPTODES').FooterValue   := 'TOTALES : ';
  End;
  If rgtiprep.ItemIndex = 2 Then
  Begin
    dbgGeneral.Selected.Clear;
    dbgGeneral.Selected.Add('ASOCODMOD'#9'12'#9'Código~Modular'#9#9);
    dbgGeneral.Selected.Add('ASOCODPAGO'#9'10'#9'Código~de Pago'#9#9);
    dbgGeneral.Selected.Add('ASOAPENOMDNI'#9'42'#9'Apellidos y~Nombre(s)'#9#9);
    dbgGeneral.Selected.Add('ASODNI'#9'10'#9'D.N.I.'#9#9);
    If (rgdet.ItemIndex = 1) Or (rgdet.ItemIndex = 2) Then
       dbgGeneral.Selected.Add('TRANSMTO'#9'10'#9'Monto del~Aporte'#9#9);
    dbgGeneral.ApplySelected;
  End;
  // Resumen General
  If rgtiprep.ItemIndex = 0 Then
  Begin
    xSql := 'SELECT B.DPTODES,'
    +' SUM(NVL(NUEENE,0)) N_ENE, SUM(NVL(NUEASOENE,0)) A_ENE, SUM(NVL(FALENE,0)) F_ENE,'
    +' SUM(NVL(NUEFEB,0)) N_FEB, SUM(NVL(NUEASOFEB,0)) A_FEB, SUM(NVL(FALFEB,0)) F_FEB,'
    +' SUM(NVL(NUEMAR,0)) N_MAR, SUM(NVL(NUEASOMAR,0)) A_MAR, SUM(NVL(FALMAR,0)) F_MAR,'
    +' SUM(NVL(NUEABR,0)) N_ABR, SUM(NVL(NUEASOABR,0)) A_ABR, SUM(NVL(FALABR,0)) F_ABR,'
    +' SUM(NVL(NUEMAY,0)) N_MAY, SUM(NVL(NUEASOMAY,0)) A_MAY, SUM(NVL(FALMAY,0)) F_MAY,'
    +' SUM(NVL(NUEJUN,0)) N_JUN, SUM(NVL(NUEASOJUN,0)) A_JUN, SUM(NVL(FALJUN,0)) F_JUN,'
    +' SUM(NVL(NUEJUL,0)) N_JUL, SUM(NVL(NUEASOJUL,0)) A_JUL, SUM(NVL(FALJUL,0)) F_JUL,'
    +' SUM(NVL(NUEAGO,0)) N_AGO, SUM(NVL(NUEASOAGO,0)) A_AGO, SUM(NVL(FALAGO,0)) F_AGO,'
    +' SUM(NVL(NUESET,0)) N_SET, SUM(NVL(NUEASOSET,0)) A_SET, SUM(NVL(FALSET,0)) F_SET,'
    +' SUM(NVL(NUEOCT,0)) N_OCT, SUM(NVL(NUEASOOCT,0)) A_OCT, SUM(NVL(FALOCT,0)) F_OCT,'
    +' SUM(NVL(NUENOV,0)) N_NOV, SUM(NVL(NUEASONOV,0)) A_NOV, SUM(NVL(FALNOV,0)) F_NOV,'
    +' SUM(NVL(NUEDIC,0)) N_DIC, SUM(NVL(NUEASODIC,0)) A_DIC, SUM(NVL(FALDIC,0)) F_DIC,'
    +' SUM(NVL(NUEENE,0)+   NVL(NUEFEB,0)+   NVL(NUEMAR,0)+   NVL(NUEABR,0)+   NVL(NUEMAY,0)+   NVL(NUEJUN,0)+   NVL(NUEJUL,0)+   NVL(NUEAGO,0)+   NVL(NUESET,0)+   NVL(NUEOCT,0)+   NVL(NUENOV,0)+   NVL(NUEDIC,0))    N_TOT,'
    +' SUM(NVL(NUEASOENE,0)+NVL(NUEASOFEB,0)+NVL(NUEASOMAR,0)+NVL(NUEASOABR,0)+NVL(NUEASOMAY,0)+NVL(NUEASOJUN,0)+NVL(NUEASOJUL,0)+NVL(NUEASOAGO,0)+NVL(NUEASOSET,0)+NVL(NUEASOOCT,0)+NVL(NUEASONOV,0)+NVL(NUEASODIC,0)) A_TOT,'
    +' SUM(NVL(FALENE,0)+   NVL(FALFEB,0)+   NVL(FALMAR,0)+   NVL(FALABR,0)+   NVL(FALMAY,0)+   NVL(FALJUN,0)+   NVL(FALJUL,0)+   NVL(FALAGO,0)+   NVL(FALSET,0)+   NVL(FALOCT,0)+   NVL(FALNOV,0)+   NVL(FALDIC,0))    F_TOT,'
    +' MAX(TO_DATE(FECREG)) FECREG FROM APO_TAB_DIF_APO A, APO158 B WHERE A.PERPRO = '+QuotedStr(dbseanopro.Text)+' AND A.DPTOID = B.DPTOID GROUP BY B.DPTODES ORDER BY B.DPTODES';
    DM1.cdsReporte.Close;
    DM1.cdsReporte.DataRequest(xSql);
    DM1.cdsReporte.Open;

    DM1.cdsReporte1.Close;
    DM1.cdsReporte1.DataRequest(xSql);
    DM1.cdsReporte1.Open;

    If DM1.cdsReporte.RecordCount = 0 Then
    Begin
      MessageDlg('No existe información procesada para este año', mtInformation, [mbOk], 0);
      Exit;
    End;
  End;
  // Seleccionado por departamento
  If rgtiprep.ItemIndex = 1 Then
  Begin
    xSql := 'SELECT B.USEID DPTODES,'
    +' SUM(NVL(NUEENE,0)) N_ENE, SUM(NVL(NUEASOENE,0)) A_ENE, SUM(NVL(FALENE,0)) F_ENE,'
    +' SUM(NVL(NUEFEB,0)) N_FEB, SUM(NVL(NUEASOFEB,0)) A_FEB, SUM(NVL(FALFEB,0)) F_FEB,'
    +' SUM(NVL(NUEMAR,0)) N_MAR, SUM(NVL(NUEASOMAR,0)) A_MAR, SUM(NVL(FALMAR,0)) F_MAR,'
    +' SUM(NVL(NUEABR,0)) N_ABR, SUM(NVL(NUEASOABR,0)) A_ABR, SUM(NVL(FALABR,0)) F_ABR,'
    +' SUM(NVL(NUEMAY,0)) N_MAY, SUM(NVL(NUEASOMAY,0)) A_MAY, SUM(NVL(FALMAY,0)) F_MAY,'
    +' SUM(NVL(NUEJUN,0)) N_JUN, SUM(NVL(NUEASOJUN,0)) A_JUN, SUM(NVL(FALJUN,0)) F_JUN,'
    +' SUM(NVL(NUEJUL,0)) N_JUL, SUM(NVL(NUEASOJUL,0)) A_JUL, SUM(NVL(FALJUL,0)) F_JUL,'
    +' SUM(NVL(NUEAGO,0)) N_AGO, SUM(NVL(NUEASOAGO,0)) A_AGO, SUM(NVL(FALAGO,0)) F_AGO,'
    +' SUM(NVL(NUESET,0)) N_SET, SUM(NVL(NUEASOSET,0)) A_SET, SUM(NVL(FALSET,0)) F_SET,'
    +' SUM(NVL(NUEOCT,0)) N_OCT, SUM(NVL(NUEASOOCT,0)) A_OCT, SUM(NVL(FALOCT,0)) F_OCT,'
    +' SUM(NVL(NUENOV,0)) N_NOV, SUM(NVL(NUEASONOV,0)) A_NOV, SUM(NVL(FALNOV,0)) F_NOV,'
    +' SUM(NVL(NUEDIC,0)) N_DIC, SUM(NVL(NUEASODIC,0)) A_DIC, SUM(NVL(FALDIC,0)) F_DIC,'
    +' SUM(NVL(NUEENE,0)+   NVL(NUEFEB,0)+   NVL(NUEMAR,0)+   NVL(NUEABR,0)+   NVL(NUEMAY,0)+   NVL(NUEJUN,0)+   NVL(NUEJUL,0)+   NVL(NUEAGO,0)+   NVL(NUESET,0)+   NVL(NUEOCT,0)+   NVL(NUENOV,0)+   NVL(NUEDIC,0))    N_TOT,'
    +' SUM(NVL(NUEASOENE,0)+NVL(NUEASOFEB,0)+NVL(NUEASOMAR,0)+NVL(NUEASOABR,0)+NVL(NUEASOMAY,0)+NVL(NUEASOJUN,0)+NVL(NUEASOJUL,0)+NVL(NUEASOAGO,0)+NVL(NUEASOSET,0)+NVL(NUEASOOCT,0)+NVL(NUEASONOV,0)+NVL(NUEASODIC,0)) A_TOT,'
    +' SUM(NVL(FALENE,0)+   NVL(FALFEB,0)+   NVL(FALMAR,0)+   NVL(FALABR,0)+   NVL(FALMAY,0)+   NVL(FALJUN,0)+   NVL(FALJUL,0)+   NVL(FALAGO,0)+   NVL(FALSET,0)+   NVL(FALOCT,0)+   NVL(FALNOV,0)+   NVL(FALDIC,0))    F_TOT, MAX(TO_DATE(FECREG)) FECREG'
    +' FROM APO_TAB_DIF_APO A, APO101 B WHERE A.PERPRO = '+QuotedStr(dbseanopro.Text)+' AND A.USEID = B.USEID AND A.UPAGOID = B.UPAGOID AND A.UPROID = B.UPROID AND B.DPTOID = '+QuotedStr(dblcddptoid.Text)+' GROUP BY B.USEID ORDER BY B.USEID';
    DM1.cdsReporte.Close;
    DM1.cdsReporte.DataRequest(xSql);
    DM1.cdsReporte.Open;
    DM1.cdsReporte1.Close;
    DM1.cdsReporte1.DataRequest(xSql);
    DM1.cdsReporte1.Open;

    If DM1.cdsReporte.RecordCount = 0 Then
    Begin
      MessageDlg('No existe información procesada para este año', mtInformation, [mbOk], 0);
      Exit;
    End;
  End;
  // Sumalizando totales de los reportes resumenes
  If (rgtiprep.ItemIndex = 0) Or (rgtiprep.ItemIndex = 1)  Then
  Begin
    V_N_Ene := 0; V_N_Feb := 0; V_N_Mar := 0; V_N_Abr := 0; V_N_May := 0; V_N_Jun := 0; V_N_Jul := 0; V_N_Ago := 0; V_N_Set := 0; V_N_Oct := 0; V_N_Nov := 0; V_N_Dic := 0; V_N_Tot := 0;
    V_A_Ene := 0; V_A_Feb := 0; V_A_Mar := 0; V_A_Abr := 0; V_A_May := 0; V_A_Jun := 0; V_A_Jul := 0; V_A_Ago := 0; V_A_Set := 0; V_A_Oct := 0; V_A_Nov := 0; V_A_Dic := 0; V_A_Tot := 0;
    V_F_Ene := 0; V_F_Feb := 0; V_F_Mar := 0; V_F_Abr := 0; V_F_May := 0; V_F_Jun := 0; V_F_Jul := 0; V_F_Ago := 0; V_F_Set := 0; V_F_Oct := 0; V_F_Nov := 0; V_F_Dic := 0; V_F_Tot := 0;
    DM1.cdsReporte.First;
    While Not DM1.cdsReporte.Eof Do
    Begin
      V_N_Ene := V_N_Ene + DM1.cdsReporte.FieldByName('N_ENE').AsInteger;
      V_N_Feb := V_N_Feb + DM1.cdsReporte.FieldByName('N_FEB').AsInteger;
      V_N_Mar := V_N_Mar + DM1.cdsReporte.FieldByName('N_MAR').AsInteger;
      V_N_Abr := V_N_Abr + DM1.cdsReporte.FieldByName('N_ABR').AsInteger;
      V_N_May := V_N_May + DM1.cdsReporte.FieldByName('N_MAY').AsInteger;
      V_N_Jun := V_N_Jun + DM1.cdsReporte.FieldByName('N_JUN').AsInteger;
      V_N_Jul := V_N_Jul + DM1.cdsReporte.FieldByName('N_JUL').AsInteger;
      V_N_Ago := V_N_Ago + DM1.cdsReporte.FieldByName('N_AGO').AsInteger;
      V_N_Set := V_N_Set + DM1.cdsReporte.FieldByName('N_SET').AsInteger;
      V_N_Oct := V_N_Oct + DM1.cdsReporte.FieldByName('N_OCT').AsInteger;
      V_N_Nov := V_N_Nov + DM1.cdsReporte.FieldByName('N_NOV').AsInteger;
      V_N_Dic := V_N_Dic + DM1.cdsReporte.FieldByName('N_DIC').AsInteger;
      V_N_Tot := V_N_Tot + DM1.cdsReporte.FieldByName('N_TOT').AsInteger;
      V_A_Ene := V_A_Ene + DM1.cdsReporte.FieldByName('A_ENE').AsInteger;
      V_A_Feb := V_A_Feb + DM1.cdsReporte.FieldByName('A_FEB').AsInteger;
      V_A_Mar := V_A_Mar + DM1.cdsReporte.FieldByName('A_MAR').AsInteger;
      V_A_Abr := V_A_Abr + DM1.cdsReporte.FieldByName('A_ABR').AsInteger;
      V_A_May := V_A_May + DM1.cdsReporte.FieldByName('A_MAY').AsInteger;
      V_A_Jun := V_A_Jun + DM1.cdsReporte.FieldByName('A_JUN').AsInteger;
      V_A_Jul := V_A_Jul + DM1.cdsReporte.FieldByName('A_JUL').AsInteger;
      V_A_Ago := V_A_Ago + DM1.cdsReporte.FieldByName('A_AGO').AsInteger;
      V_A_Set := V_A_Set + DM1.cdsReporte.FieldByName('A_SET').AsInteger;
      V_A_Oct := V_A_Oct + DM1.cdsReporte.FieldByName('A_OCT').AsInteger;
      V_A_Nov := V_A_Nov + DM1.cdsReporte.FieldByName('A_NOV').AsInteger;
      V_A_Dic := V_A_Dic + DM1.cdsReporte.FieldByName('A_DIC').AsInteger;
      V_A_Tot := V_A_Tot + DM1.cdsReporte.FieldByName('A_TOT').AsInteger;
      V_F_Ene := V_F_Ene + DM1.cdsReporte.FieldByName('F_ENE').AsInteger;
      V_F_Feb := V_F_Feb + DM1.cdsReporte.FieldByName('F_FEB').AsInteger;
      V_F_Mar := V_F_Mar + DM1.cdsReporte.FieldByName('F_MAR').AsInteger;
      V_F_Abr := V_F_Abr + DM1.cdsReporte.FieldByName('F_ABR').AsInteger;
      V_F_May := V_F_May + DM1.cdsReporte.FieldByName('F_MAY').AsInteger;
      V_F_Jun := V_F_Jun + DM1.cdsReporte.FieldByName('F_JUN').AsInteger;
      V_F_Jul := V_F_Jul + DM1.cdsReporte.FieldByName('F_JUL').AsInteger;
      V_F_Ago := V_F_Ago + DM1.cdsReporte.FieldByName('F_AGO').AsInteger;
      V_F_Set := V_F_Set + DM1.cdsReporte.FieldByName('F_SET').AsInteger;
      V_F_Oct := V_F_Oct + DM1.cdsReporte.FieldByName('F_OCT').AsInteger;
      V_F_Nov := V_F_Nov + DM1.cdsReporte.FieldByName('F_NOV').AsInteger;
      V_F_Dic := V_F_Dic + DM1.cdsReporte.FieldByName('F_DIC').AsInteger;
      V_F_Tot := V_F_Tot + DM1.cdsReporte.FieldByName('F_TOT').AsInteger;
      DM1.cdsReporte.Next;
    End;
    DM1.cdsReporte.First;
    dbgGeneral.ColumnByName('N_ENE').FooterValue      := FormatFloat('##,###',V_N_Ene);
    dbgGeneral.ColumnByName('N_FEB').FooterValue      := FormatFloat('##,###',V_N_Feb);
    dbgGeneral.ColumnByName('N_MAR').FooterValue      := FormatFloat('##,###',V_N_Mar);
    dbgGeneral.ColumnByName('N_ABR').FooterValue      := FormatFloat('##,###',V_N_Abr);
    dbgGeneral.ColumnByName('N_MAY').FooterValue      := FormatFloat('##,###',V_N_May);
    dbgGeneral.ColumnByName('N_JUN').FooterValue      := FormatFloat('##,###',V_N_Jun);
    dbgGeneral.ColumnByName('N_JUL').FooterValue      := FormatFloat('##,###',V_N_Jul);
    dbgGeneral.ColumnByName('N_AGO').FooterValue      := FormatFloat('##,###',V_N_Ago);
    dbgGeneral.ColumnByName('N_SET').FooterValue      := FormatFloat('##,###',V_N_Set);
    dbgGeneral.ColumnByName('N_OCT').FooterValue      := FormatFloat('##,###',V_N_Oct);
    dbgGeneral.ColumnByName('N_NOV').FooterValue      := FormatFloat('##,###',V_N_Nov);
    dbgGeneral.ColumnByName('N_DIC').FooterValue      := FormatFloat('##,###',V_N_Dic);
    dbgGeneral.ColumnByName('A_ENE').FooterValue      := FormatFloat('##,###',V_A_Ene);
    dbgGeneral.ColumnByName('A_FEB').FooterValue      := FormatFloat('##,###',V_A_Feb);
    dbgGeneral.ColumnByName('A_MAR').FooterValue      := FormatFloat('##,###',V_A_Mar);
    dbgGeneral.ColumnByName('A_ABR').FooterValue      := FormatFloat('##,###',V_A_Abr);
    dbgGeneral.ColumnByName('A_MAY').FooterValue      := FormatFloat('##,###',V_A_May);
    dbgGeneral.ColumnByName('A_JUN').FooterValue      := FormatFloat('##,###',V_A_Jun);
    dbgGeneral.ColumnByName('A_JUL').FooterValue      := FormatFloat('##,###',V_A_Jul);
    dbgGeneral.ColumnByName('A_AGO').FooterValue      := FormatFloat('##,###',V_A_Ago);
    dbgGeneral.ColumnByName('A_SET').FooterValue      := FormatFloat('##,###',V_A_Set);
    dbgGeneral.ColumnByName('A_OCT').FooterValue      := FormatFloat('##,###',V_A_Oct);
    dbgGeneral.ColumnByName('A_NOV').FooterValue      := FormatFloat('##,###',V_A_Nov);
    dbgGeneral.ColumnByName('A_DIC').FooterValue      := FormatFloat('##,###',V_A_Dic);
    dbgGeneral.ColumnByName('A_TOT').FooterValue      := FormatFloat('##,###',V_A_Tot);
    dbgGeneral.ColumnByName('F_ENE').FooterValue      := FormatFloat('##,###',V_F_Ene);
    dbgGeneral.ColumnByName('F_FEB').FooterValue      := FormatFloat('##,###',V_F_Feb);
    dbgGeneral.ColumnByName('F_MAR').FooterValue      := FormatFloat('##,###',V_F_Mar);
    dbgGeneral.ColumnByName('F_ABR').FooterValue      := FormatFloat('##,###',V_F_Abr);
    dbgGeneral.ColumnByName('F_MAY').FooterValue      := FormatFloat('##,###',V_F_May);
    dbgGeneral.ColumnByName('F_JUN').FooterValue      := FormatFloat('##,###',V_F_Jun);
    dbgGeneral.ColumnByName('F_JUL').FooterValue      := FormatFloat('##,###',V_F_Jul);
    dbgGeneral.ColumnByName('F_AGO').FooterValue      := FormatFloat('##,###',V_F_Ago);
    dbgGeneral.ColumnByName('F_SET').FooterValue      := FormatFloat('##,###',V_F_Set);
    dbgGeneral.ColumnByName('F_OCT').FooterValue      := FormatFloat('##,###',V_F_Oct);
    dbgGeneral.ColumnByName('F_NOV').FooterValue      := FormatFloat('##,###',V_F_Nov);
    dbgGeneral.ColumnByName('F_DIC').FooterValue      := FormatFloat('##,###',V_F_Dic);
    dbgGeneral.ColumnByName('F_TOT').FooterValue      := FormatFloat('##,###',V_F_Tot);
  End;

  // Detalle Comparativo
  If rgtiprep.ItemIndex = 2 Then
  Begin
    V_UseId   := DM1.cdsUse.FieldByName('USEID').AsString;
    V_UpagoId := DM1.cdsUse.FieldByName('UPAGOID').AsString;
    V_UproId  := DM1.cdsUse.FieldByName('UPROID').AsString;
    V_Mes := dbsemespro.Text;
    V_Ano := dbseanopro.Text;
    If StrToInt(dbsemespro.Text) = 1 Then
    Begin
      V_MesA := IntToStr(12);
      V_AnoA  := IntToStr(StrToInt(V_Ano)-1);
    End
    Else
    Begin
      V_AnoA  := dbseanopro.Text;
      V_MesA := IntToStr(strtoInt(dbsemespro.Text)-1);
    End;

    V_Mes  := DM1.StrZero(V_Mes,2);
    V_MesA := DM1.StrZero(V_MesA,2);
    V_Ano  := DM1.StrZero(V_Ano,4);
    V_AnoA := DM1.StrZero(V_AnoA,4);
    // No Aportaron en el mes
    If rgdet.ItemIndex = 0 Then
    Begin
      xSql := 'SELECT A.ASOCODMOD, A.ASOCODPAGO, A.ASOAPENOMDNI, A.ASODNI, B.TRANSMTO FROM APO201 A, APO301 B WHERE ASOTIPID = ''DO'''
      +' AND A.USEID = '+QuotedStr(V_Useid)+' AND A.UPAGOID = '+QuotedStr(V_UPagoId)+' AND A.UPROID = '+QuotedStr(V_UproId)
      +' AND A.ASOID = B.ASOID AND B.TRANSANO = '+QuotedStr(V_AnoA)
      +' AND B.TRANSMES = '+QuotedStr(V_MesA)+' AND A.ASOID NOT IN'
      +' (SELECT B.ASOID FROM APO201 A, APO301 B WHERE ASOTIPID = ''DO'''
      +' AND A.USEID = '+QuotedStr(V_Useid)+' AND A.UPAGOID = '+QuotedStr(V_UPagoId)+' AND A.UPROID = '+QuotedStr(V_UproId)
      +' AND A.ASOID = B.ASOID AND B.TRANSANO = '+QuotedStr(V_Ano)+'   AND B.TRANSMES = '+QuotedStr(V_Mes)+') ORDER BY ASOAPENOMDNI';
      DM1.cdsReporte.Close;
      DM1.cdsReporte.DataRequest(xSql);
      DM1.cdsReporte.Open;
      DM1.cdsReporte1.Close;
      DM1.cdsReporte1.DataRequest(xSql);
      DM1.cdsReporte1.Open;
      If DM1.cdsReporte.RecordCount = 0 Then
      Begin
        MessageDlg('No se ha registrado aportantes faltantes en esta selección', mtInformation, [mbOk], 0);
        Exit;
      End;
    End;
    // Vuelven ha aportar
    If rgdet.ItemIndex = 1 Then
    Begin
      xSql := 'SELECT B.ASOCODMOD, B.ASOCODPAGO, B.ASOAPENOMDNI, B.ASODNI, A.TRANSMTO FROM'
      +' (SELECT A.ASOID, A.TRANSMTO, COUNT(B.ASOID) CUENTA FROM (SELECT A.ASOID, B.TRANSMTO FROM APO201 A, APO301 B'
      +' WHERE ASOTIPID = ''DO'' AND A.USEID ='+QuotedStr(V_UseId)+' AND A.UPAGOID = '+QuotedStr(V_UpagoId)+' AND A.UPROID = '+QuotedStr(V_UproId)
      +' AND A.ASOID = B.ASOID AND B.TRANSANO = '+QuotedStr(V_Ano)+' AND B.TRANSMES = '+QuotedStr(V_Mes)
      +' AND A.ASOID NOT IN (SELECT B.ASOID FROM APO201 A, APO301 B WHERE ASOTIPID = ''DO'' AND A.USEID = '+QuotedStr(V_UseId)
      +' AND A.UPAGOID = '+QuotedStr(V_UpagoId)+' AND A.UPROID = '+QuotedStr(V_UproId)+' AND A.ASOID = B.ASOID'
      +' AND B.TRANSANO = '+QuotedStr(V_AnoA)+'   AND B.TRANSMES = '+QuotedStr(V_MesA)+')) A, APO301 B WHERE A.ASOID = B.ASOID'
      +' GROUP BY A.ASOID, A.TRANSMTO) A, APO201 B WHERE A.ASOID = B.ASOID AND CUENTA > 1 ORDER BY B.ASOAPENOMDNI';
      DM1.cdsReporte.Close;
      DM1.cdsReporte.DataRequest(xSql);
      DM1.cdsReporte.Open;
      DM1.cdsReporte1.Close;
      DM1.cdsReporte1.DataRequest(xSql);
      DM1.cdsReporte1.Open;
      If DM1.cdsReporte.RecordCount = 0 Then
      Begin
        MessageDlg('No se ha registrado aportantes faltantes en esta selección', mtInformation, [mbOk], 0);
        Exit;
      End;
    End;
    // Nuevos aportantes
    If rgdet.ItemIndex = 2 Then
    Begin
      xSql := 'SELECT A.ASOCODMOD, A.ASOCODPAGO, A.ASOAPENOMDNI, C.TRANSMTO, A.ASODNI FROM APO201 A,'
      +' (SELECT ASOID FROM (SELECT A.ASOID, COUNT(A.ASOID) CUENTA FROM  APO301 A, (SELECT B.ASOID FROM APO301 A, APO201 B WHERE'
      +' A.ASOID = B.ASOID AND B.UPROID = '+QuotedStr(V_UproId)+' AND B.UPAGOID = '+QuotedStr(V_UpagoId)+' AND B.USEID = '+QuotedStr(V_UseId)
      +' AND A.TRANSANO = '+QuotedStr(V_Ano)+' AND A.TRANSMES = '+QuotedStr(V_Mes)+' GROUP BY B.ASOID) B WHERE A.ASOID = B.ASOID'
      +' GROUP BY A.ASOID) WHERE CUENTA = 1)  B, APO301 C WHERE A.ASOID = B.ASOID AND A.ASOID = C.ASOID AND C.TRANSANO = '+QuotedStr(V_Ano)+' AND C.TRANSMES = '+QuotedStr(V_Mes);
      DM1.cdsReporte.Close;
      DM1.cdsReporte.DataRequest(xSql);
      DM1.cdsReporte.Open;

      DM1.cdsReporte1.Close;
      DM1.cdsReporte1.DataRequest(xSql);
      DM1.cdsReporte1.Open;

      If DM1.cdsReporte.RecordCount = 0 Then
      Begin
        MessageDlg('No se ha registrado aportantes faltantes en esta selección', mtInformation, [mbOk], 0);
        Exit;
      End;
    End;
  End;
end;

procedure TFDifApo.ppLabel40Print(Sender: TObject);
begin
  If rgtiprep.ItemIndex = 0 Then ppLabel40.Caption := 'Departamento' Else ppLabel40.Caption := 'UGEL';
end;

procedure TFDifApo.dblcdugelidChange(Sender: TObject);
begin
  If Trim(dblcdugelid.Text) = '' then
  Begin
    dblcdugelid.Text := '';
    meugedes.Text := '';
    Exit;
  End;
  If Length(Trim(dblcdugelid.Text)) = 2 then
  Begin
    If  DM1.cdsUse.Locate('USEID', dblcdugelid.Text, []) Then
    Begin
      meugedes.Text := DM1.cdsUse.FieldByName('USENOM').AsString;
    End
    Else
    Begin
      MessageDlg('Código no Valido', mtInformation, [mbOk], 0);
      dblcdugelid.Text := '';
      meugedes.Text    := '';
      Exit;
    End;
  End;
End;

procedure TFDifApo.BitBtn2Click(Sender: TObject);
begin
  pnlprocesar.Visible := True;
  dbseanoapro.SetFocus;
end;

procedure TFDifApo.btnProcesarClick(Sender: TObject);
Var xSql:String;
begin
  xSql := 'SELECT MAX(TO_DATE(FECREG)) FECPRO FROM APO_TAB_DIF_APO WHERE PERPRO = '+QuotedStr(dbseanoapro.Text);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  If DM1.cdsQry.FieldByName('FECPRO').AsString <> '' Then
     If Not (MessageDlg('Existe información procesada del '+DM1.cdsQry.FieldByName('FECPRO').AsString+#13+' ¿ Seguro de Procesar nuevamente ?' ,mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
     Begin
       pnlprocesar.Visible := False;
       Exit;
     End;
  Screen.Cursor := crHourGlass;
  xSql := 'DELETE APO_TAB_DIF_APO WHERE PERPRO = '+QuotedStr(dbseanoapro.Text);
  DM1.DCOM1.AppServer.EjecutaSQL(xSql);
  xSql := 'BEGIN P_NUEVOS_APORTES('+QuotedStr(dbseanoapro.Text)+','+QuotedStr(DM1.wUsuario)+'); END;';
  DM1.DCOM1.AppServer.EjecutaSQL(xSql);
  Screen.Cursor := crDefault;
  MessageDlg(' Proceso concluido Ok ', mtInformation, [mbOk], 0);
  pnlprocesar.Visible := False;
end;


procedure TFDifApo.rgdetClick(Sender: TObject);
begin
  If DM1.cdsReporte.Active Then DM1.cdsReporte.EmptyDataSet;
end;

procedure TFDifApo.BitBtn1Click(Sender: TObject);
begin
 dtgData.DataSource := DM1.dsReporte1;
 DM1.HojaExcel('REPORTE', DM1.dsReporte1, dtgData);
end;

procedure TFDifApo.BitBtn3Click(Sender: TObject);
begin
  pnlprocesar.Visible := False;
end;

// Inicio: DPP_201201_APO
// Inicializa Año Máximo con Año de la Fecha del Sistema
procedure TFDifApo.FormCreate(Sender: TObject);
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
