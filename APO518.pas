unit APO518;

interface

uses                                                   
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, wwdbdatetimepicker, Mask, ExtCtrls, wwdblook,
  Wwdbdlg, Grids, Wwdbigrd, Wwdbgrid, DB, DBClient, Spin, wwdbedit,
  Wwdbspin, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  ppDBBDE, ppVar, ppCtrls, ppPrnabl, ppBands, ppCache, fcButton, fcImgBtn,
  fcShapeBtn, ppParameter, DBGrids, ppStrtch, ppRegion, ComCtrls;

type
  TFAponoPag = class(TForm)
    btncerrar: TBitBtn;
    cdsnoapor: TClientDataSet;
    dsnoapor: TDataSource;
    ppbdepnoapor: TppBDEPipeline;
    pprreporte01: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppltitulo01: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppltitulodet0203: TppLabel;
    pplunipagdes03: TppLabel;
    ppLabel11: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBText4: TppDBText;
    ppDBText10: TppDBText;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppShape8: TppShape;
    ppLabel20: TppLabel;
    pplaportes: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLabel31: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    pplimpresopor: TppLabel;
    ppltotalapofal: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppLabel44: TppLabel;
    ppldepdes03: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppShape10: TppShape;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppDBText9: TppDBText;
    ppLabel53: TppLabel;
    ppShape13: TppShape;
    ppDBText13: TppDBText;
    ppShape14: TppShape;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppbdepnoapor01: TppBDEPipeline;
    pprreporte02: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppShape24: TppShape;
    ppShape25: TppShape;
    ppShape26: TppShape;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppluniprodes04: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppSystemVariable10: TppSystemVariable;
    ppSystemVariable11: TppSystemVariable;
    ppltitulodet0204: TppLabel;
    pplunipagdes04: TppLabel;
    pplunigesdes04: TppLabel;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    ppShape28: TppShape;
    ppLabel111: TppLabel;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppLabel115: TppLabel;
    ppLabel116: TppLabel;
    ppSystemVariable12: TppSystemVariable;
    ppLabel117: TppLabel;
    ppldepdes04: TppLabel;
    ppLabel119: TppLabel;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppLabel122: TppLabel;
    ppShape29: TppShape;
    ppLabel123: TppLabel;
    ppLabel124: TppLabel;
    ppShape30: TppShape;
    ppLabel126: TppLabel;
    ppLabel127: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText30: TppDBText;
    ppSummaryBand4: TppSummaryBand;
    ppDBCalc13: TppDBCalc;
    ppLabel128: TppLabel;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLabel129: TppLabel;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppLabel130: TppLabel;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppDBCalc15: TppDBCalc;
    ppLine12: TppLine;
    ppLabel131: TppLabel;
    dtgData: TDBGrid;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel82: TppLabel;
    ppDBText14: TppDBText;
    ppLabel19: TppLabel;
    ppLabel38: TppLabel;
    ppLabel89: TppLabel;
    ppBDEPipeline1: TppBDEPipeline;
    ppReport1: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppShape7: TppShape;
    ppShape22: TppShape;
    ppShape23: TppShape;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppluniprodes05: TppLabel;
    ppLabel118: TppLabel;
    ppLabel125: TppLabel;
    ppLabel132: TppLabel;
    ppLabel133: TppLabel;
    ppLabel134: TppLabel;
    ppSystemVariable13: TppSystemVariable;
    ppSystemVariable14: TppSystemVariable;
    ppltitulodet0205: TppLabel;
    pplunipagdes05: TppLabel;
    ppLabel138: TppLabel;
    ppLabel139: TppLabel;
    ppLabel140: TppLabel;
    ppLabel141: TppLabel;
    ppLabel143: TppLabel;
    ppLabel145: TppLabel;
    ppLabel146: TppLabel;
    ppSystemVariable15: TppSystemVariable;
    ppLabel147: TppLabel;
    ppldepdes05: TppLabel;
    ppLabel149: TppLabel;
    ppLabel150: TppLabel;
    ppLabel151: TppLabel;
    ppShape31: TppShape;
    ppLabel153: TppLabel;
    ppLabel154: TppLabel;
    ppLabel157: TppLabel;
    ppLabel158: TppLabel;
    ppLabel159: TppLabel;
    ppDetailBand5: TppDetailBand;
    ppDBText22: TppDBText;
    ppDBText29: TppDBText;
    ppDBText31: TppDBText;
    ppDBText34: TppDBText;
    ppSummaryBand5: TppSummaryBand;
    ppLabel161: TppLabel;
    ppShape27: TppShape;
    ppLabel110: TppLabel;
    ppLabel137: TppLabel;
    ppDBText32: TppDBText;
    ppLine13: TppLine;
    ppLabel142: TppLabel;
    ppLabel144: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLabel28: TppLabel;
    ppLabel69: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLabel70: TppLabel;
    ppLine14: TppLine;
    cdsdetalle: TClientDataSet;
    dsdetalle: TDataSource;
    ppbdepdetalle01: TppBDEPipeline;
    pprdetnoapo01: TppReport;
    ppHeaderBand6: TppHeaderBand;
    ppShape2: TppShape;
    pplTitulodet0101: TppLabel;
    ppLabel156: TppLabel;
    ppLabel163: TppLabel;
    ppLabel164: TppLabel;
    ppLabel165: TppLabel;
    ppSystemVariable16: TppSystemVariable;
    ppSystemVariable17: TppSystemVariable;
    ppltitulodet0102: TppLabel;
    ppLabel167: TppLabel;
    ppLabel168: TppLabel;
    ppluniprodes01: TppLabel;
    pplunipagdes01: TppLabel;
    ppLabel171: TppLabel;
    ppLabel172: TppLabel;
    ppShape33: TppShape;
    ppShape34: TppShape;
    ppLabel176: TppLabel;
    ppLabel177: TppLabel;
    ppLabel178: TppLabel;
    ppLabel179: TppLabel;
    ppLabel180: TppLabel;
    ppLabel181: TppLabel;
    ppLabel182: TppLabel;
    ppSystemVariable18: TppSystemVariable;
    ppLabel183: TppLabel;
    ppLabel184: TppLabel;
    ppldepdes01: TppLabel;
    ppShape35: TppShape;
    ppLabel186: TppLabel;
    ppLabel187: TppLabel;
    ppLabel188: TppLabel;
    ppLabel189: TppLabel;
    ppDetailBand6: TppDetailBand;
    ppSummaryBand6: TppSummaryBand;
    pplimpreso01: TppLabel;
    ppLabel193: TppLabel;
    ppLabel194: TppLabel;
    ppDBText_01: TppDBText;
    ppDBText_M01: TppDBText;
    ppLabel_I01: TppLabel;
    ppLabel_C02: TppLabel;
    ppDBText_02: TppDBText;
    ppDBText_M02: TppDBText;
    ppLabel_I02: TppLabel;
    ppLabel_C03: TppLabel;
    ppDBText_03: TppDBText;
    ppDBText_M03: TppDBText;
    ppLabel_C04: TppLabel;
    ppDBText_04: TppDBText;
    ppDBText_M04: TppDBText;
    ppLabel_I04: TppLabel;
    ppLabel_C05: TppLabel;
    ppDBText_05: TppDBText;
    ppDBText_M05: TppDBText;
    ppLabel_C06: TppLabel;
    ppDBText_06: TppDBText;
    ppDBText_M06: TppDBText;
    ppLabel_I06: TppLabel;
    ppLabel_C07: TppLabel;
    ppDBText_07: TppDBText;
    ppDBText_M07: TppDBText;
    ppLabel_I07: TppLabel;
    ppLabel_C08: TppLabel;
    ppDBText_08: TppDBText;
    ppDBText_M08: TppDBText;
    ppLabel_I08: TppLabel;
    ppLabel_I03: TppLabel;
    ppLabel_I05: TppLabel;
    ppGroup9: TppGroup;
    ppGroupHeaderBand9: TppGroupHeaderBand;
    ppGroupFooterBand9: TppGroupFooterBand;
    ppGroup10: TppGroup;
    ppGroupHeaderBand10: TppGroupHeaderBand;
    ppGroupFooterBand10: TppGroupFooterBand;
    ppDBText6: TppDBText;
    ppDBText8: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText15: TppDBText;
    ppLabel173: TppLabel;
    ppLine16: TppLine;
    ppLabel174: TppLabel;
    ppLabel175: TppLabel;
    ppLabel190: TppLabel;
    ppLabel191: TppLabel;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine15: TppLine;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBText16: TppDBText;
    ppLabel195: TppLabel;
    ppLabel196: TppLabel;
    pplunigesdes01: TppLabel;
    ppbdepdetalle02: TppBDEPipeline;
    ppField1: TppField;
    ppField2: TppField;
    ppField3: TppField;
    ppField4: TppField;
    ppField5: TppField;
    ppField6: TppField;
    ppField7: TppField;
    ppField8: TppField;
    ppField9: TppField;
    ppField10: TppField;
    ppField11: TppField;
    ppField12: TppField;
    ppField13: TppField;
    ppField14: TppField;
    ppField15: TppField;
    ppField16: TppField;
    ppField17: TppField;
    ppField18: TppField;
    ppField19: TppField;
    ppField20: TppField;
    ppField21: TppField;
    ppField22: TppField;
    ppField23: TppField;
    ppField24: TppField;
    ppField25: TppField;
    ppField26: TppField;
    ppField27: TppField;
    ppField28: TppField;
    ppField29: TppField;
    ppField30: TppField;
    pprdetnoapo02: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppShape1: TppShape;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppluniprodes02: TppLabel;
    pplunipagdes02: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppShape3: TppShape;
    ppShape9: TppShape;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppldepdes02: TppLabel;
    ppShape11: TppShape;
    ppLabel37: TppLabel;
    ppLabel43: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppdbtAnoMesUgel01: TppDBText;
    ppdbtMontoUgel01: TppDBText;
    pplIgualUgel01: TppLabel;
    pplComaUgel02: TppLabel;
    ppdbtAnoMesUgel02: TppDBText;
    ppdbtMontoUgel02: TppDBText;
    pplIgualUgel02: TppLabel;
    pplComaUgel03: TppLabel;
    ppdbtAnoMesUgel03: TppDBText;
    ppdbtMontoUgel03: TppDBText;
    pplIgualUgel03: TppLabel;
    pplComaUgel04: TppLabel;
    ppdbtAnoMesUgel04: TppDBText;
    ppdbtMontoUgel04: TppDBText;
    pplIgualUgel04: TppLabel;
    pplComaUgel05: TppLabel;
    ppdbtAnoMesUgel05: TppDBText;
    ppdbtMontoUgel05: TppDBText;
    pplIgualUgel05: TppLabel;
    pplComaUgel06: TppLabel;
    ppdbtAnoMesUgel06: TppDBText;
    ppdbtMontoUgel06: TppDBText;
    pplIgualUgel06: TppLabel;
    pplComaUgel07: TppLabel;
    ppdbtAnoMesUgel07: TppDBText;
    ppdbtMontoUgel07: TppDBText;
    pplIgualUgel07: TppLabel;
    pplComaUgel08: TppLabel;
    ppdbtAnoMesUgel08: TppDBText;
    ppdbtMontoUgel08: TppDBText;
    pplIgualUgel08: TppLabel;
    ppDBText43: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    pplimpresopor02: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLine1: TppLine;
    ppDBCalc2: TppDBCalc;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText44: TppDBText;
    ppLabel80: TppLabel;
    ppLine2: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel81: TppLabel;
    ppLabel83: TppLabel;
    ppLine6: TppLine;
    ppDBCalc7: TppDBCalc;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLine7: TppLine;
    ppDBCalc8: TppDBCalc;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppLine8: TppLine;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLine9: TppLine;
    ppDBCalc9: TppDBCalc;
    pgnoapo: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dbgasonoapocab: TwwDBGrid;
    wwDBGrid1IButton: TwwIButton;
    btnimprime: TBitBtn;
    BitBtn1: TBitBtn;
    dbgasonoapodet: TwwDBGrid;
    BitBtn2: TBitBtn;
    rgtiprep: TRadioGroup;
    ppltitulodet0202: TppLabel;
    ppluniprodes03: TppLabel;
    btnelipro: TBitBtn;
    Label1: TLabel;
    Panel1: TPanel;
    mebusca: TMaskEdit;
    ppDBCalc11: TppDBCalc;
    ppLabel10: TppLabel;
    ppLabel21: TppLabel;
    ppDBCalc12: TppDBCalc;
    procedure btncerrarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure pplaportesPrint(Sender: TObject);
    procedure ppltitulonoapoPrint(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ppLabel27Print(Sender: TObject);
    procedure ppLabel_C02Print(Sender: TObject);
    procedure ppLabel_C03Print(Sender: TObject);
    procedure ppLabel_C04Print(Sender: TObject);
    procedure ppLabel_C05Print(Sender: TObject);
    procedure ppLabel_C06Print(Sender: TObject);
    procedure ppLabel_C07Print(Sender: TObject);
    procedure ppLabel_C08Print(Sender: TObject);
    procedure ppDetailBand6BeforePrint(Sender: TObject);
    procedure ppLabel173Print(Sender: TObject);
    procedure ppLabel195Print(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure pplComaUgel02Print(Sender: TObject);
    procedure pplComaUgel03Print(Sender: TObject);
    procedure pplComaUgel04Print(Sender: TObject);
    procedure pplComaUgel05Print(Sender: TObject);
    procedure pplComaUgel06Print(Sender: TObject);
    procedure pplComaUgel07Print(Sender: TObject);
    procedure pplComaUgel08Print(Sender: TObject);
    procedure ppLabel80Print(Sender: TObject);
    procedure wwDBGrid1IButtonClick(Sender: TObject);
    procedure pgnoapoChange(Sender: TObject);
    procedure btnimprimeClick(Sender: TObject);
    procedure btneliproClick(Sender: TObject);
    procedure mebuscaChange(Sender: TObject);
    procedure mebuscaKeyPress(Sender: TObject; var Key: Char);
  private
    totaso :Double;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAponoPag: TFAponoPag;

implementation

uses APODM, APO312;

{$R *.dfm}

procedure TFAponoPag.btncerrarClick(Sender: TObject);
begin
  FAponoPag.Close;
end;

Procedure TFAponoPag.FormActivate(Sender: TObject);
Var xSql:String;
Begin
  xSql := 'SELECT SUBSTR(ANOMESPRO,1,4)||''/''||SUBSTR(ANOMESPRO,5,2) ANOMES, A.IDEPRO, B.DPTODES, C.UPAGONOM, A.USEID, A.HREG, A.ANOMESPRO, A.DPTOID, A.UPROID, A.UPAGOID'
  +' FROM APO_PRO_ASO_NO_APO_CAB A, APO158 B, APO103 C WHERE A.DPTOID = B.DPTOID AND A.UPROID = C.UPROID AND A.UPAGOID = C.UPAGOID'
  +' ORDER BY HREG DESC';
  DM1.cdsTPension.Close;
  DM1.cdsTPension.DataRequest(xSql);
  DM1.cdsTPension.Open;
  dbgasonoapocab.Refresh;
  dbgasonoapocab.Selected.Clear;
  dbgasonoapocab.Selected.Add('ANOMES'#9'6'#9'Último mes~de proceso'#9#9);
  dbgasonoapocab.Selected.Add('IDEPRO'#9'11'#9'Identificación~del proceso'#9#9);
  dbgasonoapocab.Selected.Add('DPTODES'#9'25'#9'Departamento'#9#9);
  dbgasonoapocab.Selected.Add('UPAGONOM'#9'35'#9'Unidad de~pago'#9#9);
  dbgasonoapocab.Selected.Add('USEID'#9'3'#9'Unidad de~Gestión'#9#9);
  dbgasonoapocab.Selected.Add('HREG'#9'15'#9'Fecha y hora~de registro'#9#9);
  dbgasonoapocab.ApplySelected;
  pgnoapo.TabIndex := 0;
End;


Procedure TFAponoPag.FormKeyPress(Sender: TObject; var Key: Char);
Begin
  If Key = #13 Then
  Begin
    Key := #0;
    Perform(CM_DIALOGKEY, VK_TAB, 0);
  End;
End;

procedure TFAponoPag.pplaportesPrint(Sender: TObject);
begin
  pplaportes.Caption := 'Asociados con : '+DM1.StrZero(IntToStr(cdsnoapor.FieldByName('CANTIDAD').AsInteger),3)+' Aportes Faltantes';
  ppLabel130.Caption := 'Asociados con : '+DM1.StrZero(IntToStr(cdsnoapor.FieldByName('CANTIDAD').AsInteger),3)+' Aportes Faltantes';
end;

procedure TFAponoPag.ppltitulonoapoPrint(Sender: TObject);
begin
  ppLabel86.Caption := 'APORTES FALTANTES : '+DM1.StrZero(IntToStr(cdsnoapor.FieldByName('CANTIDAD').AsInteger),3);
end;

procedure TFAponoPag.BitBtn1Click(Sender: TObject);
begin
 dtgData.DataSource := dsdetalle;
 DM1.HojaExcel('REPORTE', dsdetalle, dtgData);
end;

procedure TFAponoPag.ppLabel27Print(Sender: TObject);
begin
  ppLabel27.Caption := cdsnoapor.FieldByName('ANO').AsString+'-'+cdsnoapor.FieldByName('MES').AsString;
end;

Procedure TFAponoPag.ppLabel_C02Print(Sender: TObject);
Begin
  If Trim(ppDBText_02.Text) = '' Then
  Begin
    ppLabel_C02.Visible  := False;
    ppDBText_02.Visible  := False;
    ppLabel_I02.Visible  := False;
    ppDBText_M02.Visible := False;
  End;
End;

procedure TFAponoPag.ppLabel_C03Print(Sender: TObject);
begin
  If Trim(ppDBText_03.Text) = '' Then
  Begin
    ppLabel_C03.Visible  := False;
    ppDBText_03.Visible  := False;
    ppLabel_I03.Visible  := False;
    ppDBText_M03.Visible := False;
  End;
end;


procedure TFAponoPag.ppLabel_C04Print(Sender: TObject);
begin
  If Trim(ppDBText_04.Text) = '' Then
  Begin
    ppLabel_C04.Visible  := False;
    ppDBText_04.Visible  := False;
    ppLabel_I04.Visible  := False;
    ppDBText_M04.Visible := False;
  End;
end;

procedure TFAponoPag.ppLabel_C05Print(Sender: TObject);
begin
  If Trim(ppDBText_05.Text) = '' Then
  Begin
    ppLabel_C05.Visible  := False;
    ppDBText_05.Visible  := False;
    ppLabel_I05.Visible  := False;
    ppDBText_M05.Visible := False;
  End;
end;

procedure TFAponoPag.ppLabel_C06Print(Sender: TObject);
begin
  If Trim(ppDBText_06.Text) = '' Then
  Begin
    ppLabel_C06.Visible  := False;
    ppDBText_06.Visible  := False;
    ppLabel_I06.Visible  := False;
    ppDBText_M06.Visible := False;
  End;
end;

procedure TFAponoPag.ppLabel_C07Print(Sender: TObject);
begin
  If Trim(ppDBText_07.Text) = '' Then
  Begin
    ppLabel_C07.Visible  := False;
    ppDBText_07.Visible  := False;
    ppLabel_I07.Visible  := False;
    ppDBText_M07.Visible := False;
  End;
end;

procedure TFAponoPag.ppLabel_C08Print(Sender: TObject);
begin
  If Trim(ppDBText_08.Text) = '' Then
  Begin
    ppLabel_C08.Visible  := False;
    ppDBText_08.Visible  := False;
    ppLabel_I08.Visible  := False;
    ppDBText_M08.Visible := False;
  End;
end;

procedure TFAponoPag.ppDetailBand6BeforePrint(Sender: TObject);
begin
  ppLabel_C02.Visible  := True;
  ppLabel_C03.Visible  := True;
  ppLabel_C04.Visible  := True;
  ppLabel_C05.Visible  := True;
  ppLabel_C06.Visible  := True;
  ppLabel_C07.Visible  := True;
  ppLabel_C08.Visible  := True;
  ppDBText_01.Visible  := True;
  ppDBText_02.Visible  := True;
  ppDBText_03.Visible  := True;
  ppDBText_04.Visible  := True;
  ppDBText_05.Visible  := True;
  ppDBText_06.Visible  := True;
  ppDBText_07.Visible  := True;
  ppDBText_08.Visible  := True;
  ppLabel_I01.Visible  := True;
  ppLabel_I02.Visible  := True;
  ppLabel_I03.Visible  := True;
  ppLabel_I04.Visible  := True;
  ppLabel_I05.Visible  := True;
  ppLabel_I06.Visible  := True;
  ppLabel_I07.Visible  := True;
  ppLabel_I08.Visible  := True;
  ppDBText_M01.Visible := True;
  ppDBText_M02.Visible := True;
  ppDBText_M03.Visible := True;
  ppDBText_M04.Visible := True;
  ppDBText_M05.Visible := True;
  ppDBText_M06.Visible := True;
  ppDBText_M07.Visible := True;
  ppDBText_M08.Visible := True;
end;

procedure TFAponoPag.ppLabel173Print(Sender: TObject);
begin
ppLabel173.Caption := 'ASOCIADOS CON '+Trim(ppDBText6.Text)+' APORTES FALTANTES';
end;

procedure TFAponoPag.ppLabel195Print(Sender: TObject);
begin
 If Trim(DM1.cdsTPension.FieldByName('USEID').AsString) = '' Then
 Begin
   pplunigesdes01.Visible := False;
   ppLabel196.Visible := False;
   ppLabel195.Visible := False;
 End
 Else
 Begin
   pplunigesdes01.Visible := True;
   ppLabel196.Visible := True;
   ppLabel195.Visible := True;
 End;
end;

procedure TFAponoPag.ppDetailBand2BeforePrint(Sender: TObject);
begin
  ppdbtAnoMesUgel01.Visible := True;
  ppdbtAnoMesUgel02.Visible := True;
  ppdbtAnoMesUgel03.Visible := True;
  ppdbtAnoMesUgel04.Visible := True;
  ppdbtAnoMesUgel05.Visible := True;
  ppdbtAnoMesUgel06.Visible := True;
  ppdbtAnoMesUgel07.Visible := True;
  ppdbtAnoMesUgel08.Visible := True;

  pplIgualUgel01.Visible := True;
  pplIgualUgel02.Visible := True;
  pplIgualUgel03.Visible := True;
  pplIgualUgel04.Visible := True;
  pplIgualUgel05.Visible := True;
  pplIgualUgel06.Visible := True;
  pplIgualUgel07.Visible := True;
  pplIgualUgel08.Visible := True;

  ppdbtMontoUgel01.Visible := True;
  ppdbtMontoUgel02.Visible := True;
  ppdbtMontoUgel03.Visible := True;
  ppdbtMontoUgel04.Visible := True;
  ppdbtMontoUgel05.Visible := True;
  ppdbtMontoUgel06.Visible := True;
  ppdbtMontoUgel07.Visible := True;
  ppdbtMontoUgel08.Visible := True;

  pplComaUgel02.Visible := True;
  pplComaUgel03.Visible := True;
  pplComaUgel04.Visible := True;
  pplComaUgel05.Visible := True;
  pplComaUgel06.Visible := True;
  pplComaUgel07.Visible := True;
  pplComaUgel08.Visible := True;
end;

procedure TFAponoPag.pplComaUgel02Print(Sender: TObject);
begin
  If Trim(ppdbtAnoMesUgel02.Text) = '' Then
  Begin
    ppdbtAnoMesUgel02.Visible := False;
    pplIgualUgel02.Visible := False;
    ppdbtMontoUgel02.Visible := False;
    pplComaUgel02.Visible := False;
  End;
end;

procedure TFAponoPag.pplComaUgel03Print(Sender: TObject);
begin
  If Trim(ppdbtAnoMesUgel03.Text) = '' Then
  Begin
    ppdbtAnoMesUgel03.Visible := False;
    pplIgualUgel03.Visible := False;
    ppdbtMontoUgel03.Visible := False;
    pplComaUgel03.Visible := False;
  End;
end;

procedure TFAponoPag.pplComaUgel04Print(Sender: TObject);
begin
  If Trim(ppdbtAnoMesUgel04.Text) = '' Then
  Begin
    ppdbtAnoMesUgel04.Visible := False;
    pplIgualUgel04.Visible := False;
    ppdbtMontoUgel04.Visible := False;
    pplComaUgel04.Visible := False;
  End;
end;

procedure TFAponoPag.pplComaUgel05Print(Sender: TObject);
begin
  If Trim(ppdbtAnoMesUgel05.Text) = '' Then
  Begin
    ppdbtAnoMesUgel05.Visible := False;
    pplIgualUgel05.Visible := False;
    ppdbtMontoUgel05.Visible := False;
    pplComaUgel05.Visible := False;
  End;
end;

procedure TFAponoPag.pplComaUgel06Print(Sender: TObject);
begin
  If Trim(ppdbtAnoMesUgel06.Text) = '' Then
  Begin
    ppdbtAnoMesUgel06.Visible := False;
    pplIgualUgel06.Visible := False;
    ppdbtMontoUgel06.Visible := False;
    pplComaUgel06.Visible := False;
  End;
end;

procedure TFAponoPag.pplComaUgel07Print(Sender: TObject);
begin
If Trim(ppdbtAnoMesUgel07.Text) = '' Then
  Begin
    ppdbtAnoMesUgel07.Visible := False;
    pplIgualUgel07.Visible := False;
    ppdbtMontoUgel07.Visible := False;
    pplComaUgel07.Visible := False;
  End;
end;

procedure TFAponoPag.pplComaUgel08Print(Sender: TObject);
begin
If Trim(ppdbtAnoMesUgel08.Text) = '' Then
  Begin
    ppdbtAnoMesUgel08.Visible := False;
    pplIgualUgel08.Visible := False;
    ppdbtMontoUgel08.Visible := False;
    pplComaUgel08.Visible := False;
  End;
end;

procedure TFAponoPag.ppLabel80Print(Sender: TObject);
begin
  ppLabel80.Caption := 'ASOCIADOS CON '+Trim(ppDBText6.Text)+' APORTES FALTANTES';
end;

procedure TFAponoPag.wwDBGrid1IButtonClick(Sender: TObject);
begin
  Try
    Fpronapo := TFpronapo.Create(Self);
    Fpronapo.showmodal;
  Finally
    Fpronapo.free;
  End;

  xSql := 'SELECT SUBSTR(ANOMESPRO,1,4)||''/''||SUBSTR(ANOMESPRO,5,2) ANOMES, A.IDEPRO, B.DPTODES, C.UPAGONOM, A.USEID, A.HREG, A.ANOMESPRO, A.DPTOID, A.UPROID, A.UPAGOID'
  +' FROM APO_PRO_ASO_NO_APO_CAB A, APO158 B, APO103 C WHERE A.DPTOID = B.DPTOID AND A.UPROID = C.UPROID AND A.UPAGOID = C.UPAGOID'
  +' ORDER BY HREG DESC';

  DM1.cdsTPension.Close;
  DM1.cdsTPension.DataRequest(xSql);
  DM1.cdsTPension.Open;
  dbgasonoapocab.Refresh;
end;

Procedure TFAponoPag.pgnoapoChange(Sender: TObject);
Var xSql:String;
Begin
 If pgnoapo.TabIndex = 1 Then
 Begin
   dbgasonoapodet.Refresh;
   dbgasonoapodet.Selected.Clear;
   dbgasonoapodet.Selected.Add('ASOCODMOD'#9'10'#9'Código~modular'#9#9);
   dbgasonoapodet.Selected.Add('ASOAPENOMDNI'#9'45'#9'Apellidos y nombre(s)~del asociado'#9#9);
   dbgasonoapodet.Selected.Add('CANTIDAD'#9'12'#9'Cantidad de~aportes'#9#9);
   dbgasonoapodet.Selected.Add('VALAPO'#9'12'#9'Monto total~de aportes'#9#9);
   dbgasonoapodet.Selected.Add('ASOID'#9'12'#9'Código de~identificación'#9#9);
   dbgasonoapodet.ApplySelected;
   xSql := 'SELECT ASOID, ASOCODMOD, ASOAPENOMDNI, COUNT(*) CANTIDAD, SUM(NVL(VALAPO,0)) VALAPO  FROM APO_PRO_ASO_NO_APO_DET WHERE IDEPRO = '+QuotedStr(DM1.cdsTPension.FieldByName('IDEPRO').AsString)
   +' GROUP BY ASOID, ASOCODMOD, ASOAPENOMDNI ORDER BY CANTIDAD, ASOAPENOMDNI';
   DM1.cdsFPagoDevolucion.Close;
   DM1.cdsFPagoDevolucion.DataRequest(xSql);
   DM1.cdsFPagoDevolucion.Open;
   TNumericField(DM1.cdsFPagoDevolucion.FieldByName('CANTIDAD')).DisplayFormat := '##,###';
   TNumericField(DM1.cdsFPagoDevolucion.FieldByName('VALAPO')).DisplayFormat := '##,###.00';
   mebusca.SetFocus;

 End;
End;

Procedure TFAponoPag.btnimprimeClick(Sender: TObject);
Var xSql:String;
  xCont, xCantidad :Integer;
  xFecpro, xDepIde, xDepdes, xUniprodes, xUnipagdes, xUnigesdes, xultapo :String;
  xAnoini, xMesIni, xAnoFin, xMesFin :Integer;
Begin

  xSql := 'SELECT DPTOID, UPRONOM FROM APO102 WHERE UPROID= '+QuotedStr(DM1.cdsTPension.FieldByName('UPROID').AsString);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  xUniprodes := DM1.cdsQry.FieldByName('UPRONOM').AsString;
  xDepide := DM1.cdsQry.FieldByName('DPTOID').AsString;
  xSql := 'SELECT DPTODES FROM APO158 WHERE DPTOID = '+QuotedStr(xDepIde);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  xDepdes := DM1.cdsQry.FieldByName('DPTODES').AsString;
  xSql := 'SELECT UPAGONOM FROM APO103 WHERE UPROID = '+QuotedStr(DM1.cdsTPension.FieldByName('UPROID').AsString)+' AND UPAGOID = '+QuotedStr(DM1.cdsTPension.FieldByName('UPAGOID').AsString);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  xUnipagdes := DM1.cdsQry.FieldByName('UPAGONOM').AsString;
  xSql := 'SELECT USENOM FROM APO101 WHERE UPROID = '+QuotedStr(DM1.cdsTPension.FieldByName('UPROID').AsString)+' AND UPAGOID = '+QuotedStr(DM1.cdsTPension.FieldByName('UPAGOID').AsString)+' AND USEID = '+QuotedStr(DM1.cdsTPension.FieldByName('USEID').AsString);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  xUnigesdes := DM1.cdsQry.FieldByName('USENOM').AsString;

  // Resumen
  If rgtiprep.ItemIndex = 0 Then
  Begin
    cdsnoapor.EmptyDataSet;
    cdsnoapor.IndexFieldNames := 'CANTIDAD;ASOAPENOMDNI';
    DM1.cdsFPagoDevolucion.First;
    While Not DM1.cdsFPagoDevolucion.Eof Do
    Begin
      xSql := 'SELECT * FROM APO201 WHERE ASOID = '+QuotedStr(DM1.cdsFPagoDevolucion.FieldByName('ASOID').AsString);
      DM1.cdsAsociados.Close;
      DM1.cdsAsociados.DataRequest(xSql);
      DM1.cdsAsociados.Open;

      xSql := 'SELECT ASOID, ASOAPENOMDNI, MIN(TRANSANO||TRANSMES) MINAPO, MAX(TRANSANO||TRANSMES) MAXAPO, COUNT(*) CANTIDAD, SUM(NVL(VALAPO,0)) APOVALOR'
      +' FROM APO_PRO_ASO_NO_APO_DET WHERE ASOID = '+QuotedStr(DM1.cdsFPagoDevolucion.FieldByName('ASOID').AsString)+' AND IDEPRO =  '+QuotedStr(DM1.cdsTPension.FieldByName('IDEPRO').AsString)+' GROUP BY ASOID, ASOAPENOMDNI';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;

      xultapo := Copy(DM1.cdsQry.FieldByName('MAXAPO').AsString,1,4)+'-'+Copy(DM1.cdsQry.FieldByName('MAXAPO').AsString,5,2);
      xAnoIni := StrToInt(Copy(DM1.cdsQry.FieldByName('MINAPO').AsString,1,4));
      xMesIni := StrToInt(Copy(DM1.cdsQry.FieldByName('MINAPO').AsString,5,2));
      xAnoFin := StrToInt(Copy(DM1.cdsTPension.FieldByName('ANOMESPRO').AsString,1,4));
      xMesFin := StrToInt(Copy(DM1.cdsTPension.FieldByName('ANOMESPRO').AsString,5,2));
      cdsnoapor.Append;
      cdsnoapor.FieldByName('ASOID').AsString        := DM1.cdsAsociados.FieldByName('ASOID').AsString;
      cdsnoapor.FieldByName('USEID').AsString        := DM1.cdsAsociados.FieldByName('USEID').AsString;
      cdsnoapor.FieldByName('ASOCODPAGO').AsString   := DM1.cdsAsociados.FieldByName('ASOCODPAGO').AsString;
      cdsnoapor.FieldByName('ASOAPENOMDNI').AsString := Copy(DM1.cdsAsociados.FieldByName('ASOAPENOMDNI').AsString,1,60);
      cdsnoapor.FieldByName('UPRONOM').AsString      := Copy(xUniprodes,1,30);
      cdsnoapor.FieldByName('UPAGONOM').AsString     := Copy(xUnipagdes,1,30);
      cdsnoapor.FieldByName('USENOM').AsString       := Copy(xUnigesdes,1,30);
      cdsnoapor.FieldByName('ASODNI').AsString       := Copy(Trim(DM1.cdsAsociados.FieldByName('ASODNI').AsString),1,8);
      cdsnoapor.FieldByName('ASOCODMOD').AsString    := DM1.cdsAsociados.FieldByName('ASOCODMOD').AsString;
      cdsnoapor.FieldByName('CANTIDAD').AsInteger    := DM1.cdsQry.FieldByName('CANTIDAD').AsInteger;
      cdsnoapor.FieldByName('ULTAPO').AsString       := xultapo;
      cdsnoapor.FieldByName('MONTO').AsFloat         := DM1.cdsQry.FieldByName('APOVALOR').AsFloat;
      cdsnoapor.FieldByName('VARIASCUOT').AsString   := DM1.cdsAsociados.FieldByName('VARIASCUOT').AsString;
      DM1.cdsFPagoDevolucion.Next;
    End;

    If DM1.cdsTPension.FieldByName('USEID').AsString <> '' Then
    Begin
      ppldepdes04.Caption := xDepdes;
      ppluniprodes04.Caption := xUniprodes;
      pplunipagdes04.Caption := xUnipagdes;
      pplunigesdes04.Caption := xUnigesdes;
      ppltitulodet0204.Caption := 'PROCESADO AL : '+Copy(DM1.cdsTPension.FieldByName('ANOMESPRO').AsString,5,2)+'-'+Copy(DM1.cdsTPension.FieldByName('ANOMESPRO').AsString,1,4);
      pprreporte02.Print;
    End
    Else
    Begin
      ppldepdes03.Caption := xDepdes;
      ppluniprodes03.Caption := xUniprodes;
      pplunipagdes03.Caption := xUnipagdes;
      ppltitulodet0203.Caption := 'PROCESADO AL : '+Copy(DM1.cdsTPension.FieldByName('ANOMESPRO').AsString,5,2)+'-'+Copy(DM1.cdsTPension.FieldByName('ANOMESPRO').AsString,1,4);
      pprreporte01.Print;
    End;
  End;

  // Detallado
  If rgtiprep.ItemIndex = 1 Then
  Begin
    cdsnoapor.EmptyDataSet;
    cdsdetalle.IndexFieldNames := 'USEID;CANTIDAD;ASOAPENOMDNI';
    DM1.cdsFPagoDevolucion.First;
    While Not DM1.cdsFPagoDevolucion.Eof Do
    Begin
      xSql := 'SELECT * FROM APO201 WHERE ASOID = '+QuotedStr(DM1.cdsFPagoDevolucion.FieldByName('ASOID').AsString);
      DM1.cdsAsociados.Close;
      DM1.cdsAsociados.DataRequest(xSql);
      DM1.cdsAsociados.Open;
      xSql := 'SELECT * FROM APO_PRO_ASO_NO_APO_DET WHERE IDEPRO = '+QuotedStr(DM1.cdsTPension.FieldByName('IDEPRO').AsString)
      +' AND ASOID = '+QuotedStr(DM1.cdsFPagoDevolucion.FieldByName('ASOID').AsString)+' ORDER BY ASOAPENOMDNI';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      xCantidad := DM1.cdsQry.RecordCount;
      DM1.cdsQry.First;
      While Not DM1.cdsQry.Eof Do
      Begin
        xCont := 1;
        cdsdetalle.Append;
        cdsdetalle.FieldByName('ANOMES_01').AsString    := DM1.cdsQry.FieldByName('TRANSANO').AsString+'/'+DM1.cdsQry.FieldByName('TRANSMES').AsString;
        cdsdetalle.FieldByName('MONTO_01').AsFloat      := DM1.cdsQry.FieldByName('VALAPO').AsFloat;
        totaso := totaso + DM1.cdsQry.FieldByName('VALAPO').AsFloat;
        cdsdetalle.FieldByName('ASOID').AsString        := DM1.cdsAsociados.FieldByName('ASOID').AsString;
        cdsdetalle.FieldByName('ASOAPENOMDNI').AsString := Copy(DM1.cdsAsociados.FieldByName('ASOAPENOMDNI').AsString,1,60);
        cdsdetalle.FieldByName('ASOCODPAGO').AsString   := DM1.cdsAsociados.FieldByName('ASOCODPAGO').AsString;
        cdsdetalle.FieldByName('UPRONOM').AsString      := Copy(xUniprodes,1,30);
        cdsdetalle.FieldByName('UPAGONOM').AsString     := Copy(xUnipagdes,1,30);
        cdsdetalle.FieldByName('USENOM').AsString       := Copy(xUnigesdes,1,30);
        cdsdetalle.FieldByName('USEID').AsString        := DM1.cdsAsociados.FieldByName('USEID').AsString;
        cdsdetalle.FieldByName('ASODNI').AsString       := Copy(Trim(DM1.cdsAsociados.FieldByName('ASODNI').AsString),1,8);
        cdsdetalle.FieldByName('ASOCODMOD').AsString    := DM1.cdsAsociados.FieldByName('ASOCODMOD').AsString;
        cdsdetalle.FieldByName('CANTIDAD').AsInteger    := xCantidad;
        cdsdetalle.FieldByName('VARIASCUOT').AsString   := DM1.cdsAsociados.FieldByName('VARIASCUOT').AsString;
        cdsdetalle.FieldByName('PERFAL').AsString       := DM1.cdsQry.FieldByName('TRANSANO').AsString+'-'+DM1.cdsQry.FieldByName('TRANSMES').AsString;
        xCont := 2;
        DM1.cdsQry.Next;
        While Not DM1.cdsQry.Eof Do
        Begin
          If xCont > 8 Then
          Begin
            cdsdetalle.Append;
            xCont := 1;
            cdsdetalle.FieldByName('ANOMES_01').AsString    := DM1.cdsQry.FieldByName('TRANSANO').AsString+'/'+DM1.cdsQry.FieldByName('TRANSMES').AsString;
            cdsdetalle.FieldByName('MONTO_01').AsFloat      := DM1.cdsQry.FieldByName('VALAPO').AsFloat;
            totaso := totaso + DM1.cdsQry.FieldByName('VALAPO').AsFloat;
            cdsdetalle.FieldByName('ASOID').AsString        := DM1.cdsAsociados.FieldByName('ASOID').AsString;
            cdsdetalle.FieldByName('ASOAPENOMDNI').AsString := Copy(DM1.cdsAsociados.FieldByName('ASOAPENOMDNI').AsString,1,60);
            cdsdetalle.FieldByName('ASOCODPAGO').AsString   := DM1.cdsAsociados.FieldByName('ASOCODPAGO').AsString;
            cdsdetalle.FieldByName('UPRONOM').AsString      := Copy(xUniprodes,1,30);
            cdsdetalle.FieldByName('UPAGONOM').AsString     := Copy(xUnipagdes,1,30);
            cdsdetalle.FieldByName('USENOM').AsString       := Copy(xUnigesdes,1,30);
            cdsdetalle.FieldByName('USEID').AsString        := DM1.cdsAsociados.FieldByName('USEID').AsString;
            cdsdetalle.FieldByName('ASODNI').AsString       := Copy(Trim(DM1.cdsAsociados.FieldByName('ASODNI').AsString),1,8);
            cdsdetalle.FieldByName('ASOCODMOD').AsString    := DM1.cdsAsociados.FieldByName('ASOCODMOD').AsString;
            cdsdetalle.FieldByName('CANTIDAD').AsInteger    := xCantidad;
            cdsdetalle.FieldByName('VARIASCUOT').AsString   := DM1.cdsAsociados.FieldByName('VARIASCUOT').AsString;
            cdsdetalle.FieldByName('PERFAL').AsString       := DM1.cdsQry.FieldByName('TRANSANO').AsString+'-'+DM1.cdsQry.FieldByName('TRANSMES').AsString;
            xCont := 1;
          End;
          If xCont = 2 Then
          Begin
            cdsdetalle.FieldByName('ANOMES_02').AsString  := DM1.cdsQry.FieldByName('TRANSANO').AsString+'/'+DM1.cdsQry.FieldByName('TRANSMES').AsString;
            cdsdetalle.FieldByName('MONTO_02').AsFloat    := DM1.cdsQry.FieldByName('VALAPO').AsFloat;
            totaso := totaso + DM1.cdsQry.FieldByName('VALAPO').AsFloat;
          End;
          If xCont = 3 Then
          Begin
            cdsdetalle.FieldByName('ANOMES_03').AsString  := DM1.cdsQry.FieldByName('TRANSANO').AsString+'/'+DM1.cdsQry.FieldByName('TRANSMES').AsString;
            cdsdetalle.FieldByName('MONTO_03').AsFloat    := DM1.cdsQry.FieldByName('VALAPO').AsFloat;
            totaso := totaso + DM1.cdsQry.FieldByName('VALAPO').AsFloat;
          End;
          If xCont = 4 Then
          Begin
            cdsdetalle.FieldByName('ANOMES_04').AsString  := DM1.cdsQry.FieldByName('TRANSANO').AsString+'/'+DM1.cdsQry.FieldByName('TRANSMES').AsString;
            cdsdetalle.FieldByName('MONTO_04').AsFloat    := DM1.cdsQry.FieldByName('VALAPO').AsFloat;
            totaso := totaso + DM1.cdsQry.FieldByName('VALAPO').AsFloat;
          End;
          If xCont = 5 Then
          Begin
            cdsdetalle.FieldByName('ANOMES_05').AsString  := DM1.cdsQry.FieldByName('TRANSANO').AsString+'/'+DM1.cdsQry.FieldByName('TRANSMES').AsString;
            cdsdetalle.FieldByName('MONTO_05').AsFloat    := DM1.cdsQry.FieldByName('VALAPO').AsFloat;
            totaso := totaso + DM1.cdsQry.FieldByName('VALAPO').AsFloat;
          End;
          If xCont = 6 Then
          Begin
            cdsdetalle.FieldByName('ANOMES_06').AsString  := DM1.cdsQry.FieldByName('TRANSANO').AsString+'/'+DM1.cdsQry.FieldByName('TRANSMES').AsString;
            cdsdetalle.FieldByName('MONTO_06').AsFloat    := DM1.cdsQry.FieldByName('VALAPO').AsFloat;
            totaso := totaso + DM1.cdsQry.FieldByName('VALAPO').AsFloat;
          End;
          If xCont = 7 Then
          Begin
            cdsdetalle.FieldByName('ANOMES_07').AsString  := DM1.cdsQry.FieldByName('TRANSANO').AsString+'/'+DM1.cdsQry.FieldByName('TRANSMES').AsString;
            cdsdetalle.FieldByName('MONTO_07').AsFloat    := DM1.cdsQry.FieldByName('VALAPO').AsFloat;
            totaso := totaso + DM1.cdsQry.FieldByName('VALAPO').AsFloat;
          End;
          If xCont = 8 Then
          Begin
            cdsdetalle.FieldByName('ANOMES_08').AsString  := DM1.cdsQry.FieldByName('TRANSANO').AsString+'/'+DM1.cdsQry.FieldByName('TRANSMES').AsString;
            cdsdetalle.FieldByName('MONTO_08').AsFloat    := DM1.cdsQry.FieldByName('VALAPO').AsFloat;
            totaso := totaso + DM1.cdsQry.FieldByName('VALAPO').AsFloat;
          End;
          DM1.cdsQry.Next;
          xCont := xCont + 1;
        End;
      End;
      If totaso > 0 Then
      Begin
        cdsdetalle.FieldByName('MONTOT').AsFloat := totaso;
        totaso := 0;
      End;
      cdsdetalle.Post;
      DM1.cdsFPagoDevolucion.Next;
    End;

    If DM1.cdsTPension.FieldByName('USEID').AsString <> '' Then
    Begin
      ppldepdes01.Caption := xDepdes;
      ppluniprodes01.Caption := xUniprodes;
      pplunipagdes01.Caption := xUnipagdes;
      pplunigesdes01.Caption := xUnigesdes;
      ppltitulodet0102.Caption :=  'PROCESADO AL : '+Copy(DM1.cdsTPension.FieldByName('ANOMESPRO').AsString,5,2)+'-'+Copy(DM1.cdsTPension.FieldByName('ANOMESPRO').AsString,1,4);
      pprdetnoapo01.Print;
    End
    Else
    Begin
      ppldepdes02.Caption := xDepdes;
      ppluniprodes02.Caption := xUniprodes;
      pplunipagdes02.Caption := xUnipagdes;
      ppltitulodet0202.Caption := 'PROCESADO AL : '+Copy(DM1.cdsTPension.FieldByName('ANOMESPRO').AsString,5,2)+'-'+Copy(DM1.cdsTPension.FieldByName('ANOMESPRO').AsString,1,4);
      pprdetnoapo02.Print;
    End;
  End;

  // No aportantes
  If rgtiprep.ItemIndex = 2 Then
  Begin
    cdsnoapor.EmptyDataSet;
    xFecPro := DM1.cdsTPension.FieldByName('ANOMESPRO').AsString;
    If DM1.cdsTPension.FieldByName('USEID').AsString <> '' Then
      xSql := 'SELECT A.ASOID, A.ASOCODMOD, A.ASOCODPAGO, B.USENOM, A.ASOAPENOMDNI, A.ASODNI, A.UPROID, A.UPAGOID, A.USEID, NVL(A.VARIASCUOT, ''N'') VARIASCUOT FROM APO201 A, APO101 B WHERE'
      +' A.UPROID = '+QuotedStr(DM1.cdsTPension.FieldByName('UPROID').AsString)+' AND A.UPAGOID = '+QuotedStr(DM1.cdsTPension.FieldByName('UPAGOID').AsString)+' AND A.USEID = '+QuotedStr(DM1.cdsTPension.FieldByName('USEID').AsString)+' AND A.ASOTIPID = ''DO'''
      +' AND A.UPROID = B.UPROID(+) AND A.UPAGOID = B.UPAGOID(+) AND A.USEID = B.USEID(+) ORDER BY B.USEID, A.ASOAPENOMDNI'
    Else
      xSql := 'SELECT A.ASOID, A.ASOCODMOD, A.ASOCODPAGO, B.USENOM, A.ASOAPENOMDNI, A.ASODNI, A.UPROID, A.UPAGOID, A.USEID, NVL(A.VARIASCUOT, ''N'') VARIASCUOT FROM APO201 A, APO101 B WHERE'
      +' A.UPROID = '+QuotedStr(DM1.cdsTPension.FieldByName('UPROID').AsString)+' AND A.UPAGOID = '+QuotedStr(DM1.cdsTPension.FieldByName('UPAGOID').AsString)+' AND A.ASOTIPID = ''DO'''
      +' AND A.UPROID = B.UPROID(+) AND A.UPAGOID = B.UPAGOID(+) AND A.USEID = B.USEID(+)'
      +' ORDER BY A.ASOAPENOMDNI';
    DM1.cdsAsociados.Close;
    DM1.cdsAsociados.DataRequest(xSql);
    DM1.cdsAsociados.Open;
    While Not DM1.cdsAsociados.Eof Do
    Begin
      xSql := 'SELECT COUNT(*) CUENTA FROM APO301 WHERE ASOID = '+QuotedStr(DM1.cdsAsociados.FieldByName('ASOID').AsString);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      If DM1.cdsQry.FieldByName('CUENTA').AsInteger = 0 Then
      Begin
        cdsnoapor.Append;
        cdsnoapor.FieldByName('USEID').AsString        := DM1.cdsAsociados.FieldByName('USEID').AsString;
        cdsnoapor.FieldByName('ASOID').AsString        := DM1.cdsAsociados.FieldByName('ASOID').AsString;
        cdsnoapor.FieldByName('ASOAPENOMDNI').AsString := Copy(DM1.cdsAsociados.FieldByName('ASOAPENOMDNI').AsString,1,60);
        cdsnoapor.FieldByName('ASOCODPAGO').AsString   := DM1.cdsAsociados.FieldByName('ASOCODPAGO').AsString;
        cdsnoapor.FieldByName('UPRONOM').AsString      := Copy(xUniprodes,1,30);
        cdsnoapor.FieldByName('UPAGONOM').AsString     := Copy(xUnipagdes,1,30);
        cdsnoapor.FieldByName('USENOM').AsString       := Copy(DM1.cdsAsociados.FieldByName('USENOM').AsString,1,30);
        cdsnoapor.FieldByName('ASODNI').AsString       := Copy(Trim(DM1.cdsAsociados.FieldByName('ASODNI').AsString),1,8);
        cdsnoapor.FieldByName('ASOCODMOD').AsString    := DM1.cdsAsociados.FieldByName('ASOCODMOD').AsString;
        cdsnoapor.FieldByName('VARIASCUOT').AsString   := DM1.cdsAsociados.FieldByName('VARIASCUOT').AsString;
        cdsnoapor.Post;
        DM1.cdsQry.Next;
      End;
      DM1.cdsAsociados.Next;
    End;

    If cdsnoapor.RecordCount = 0 Then
    Begin
      MessageDlg('No se han encontrado asociados sin aportes', mtInformation, [mbOk], 0);
      Exit;
    End;

    ppltitulodet0205.Caption := 'PROCESADO AL : '+Copy(DM1.cdsTPension.FieldByName('ANOMESPRO').AsString,5,2)+'-'+Copy(DM1.cdsTPension.FieldByName('ANOMESPRO').AsString,1,4);
    ppldepdes05.Caption := xDepdes;
    ppluniprodes05.Caption := xUniprodes;
    pplunipagdes05.Caption := xUnipagdes;
    ppReport1.print;
  End;
End;

Procedure TFAponoPag.btneliproClick(Sender: TObject);
Var xSql:String;
Begin
  If MessageDlg('¿ Seguro de eliminar el proceso ?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
    xSql:= 'DELETE FROM APO_PRO_ASO_NO_APO_CAB WHERE IDEPRO = '+QuotedStr(DM1.cdsTPension.FieldByName('IDEPRO').AsString);
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);
    xSql:= 'DELETE FROM APO_PRO_ASO_NO_APO_DET WHERE IDEPRO = '+QuotedStr(DM1.cdsTPension.FieldByName('IDEPRO').AsString);
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);
    xSql := 'SELECT SUBSTR(ANOMESPRO,1,4)||''/''||SUBSTR(ANOMESPRO,5,2) ANOMES, A.IDEPRO, B.DPTODES, C.UPAGONOM, A.USEID, A.HREG, A.ANOMESPRO, A.DPTOID, A.UPROID, A.UPAGOID'
    +' FROM APO_PRO_ASO_NO_APO_CAB A, APO158 B, APO103 C WHERE A.DPTOID = B.DPTOID AND A.UPROID = C.UPROID AND A.UPAGOID = C.UPAGOID'
    +' ORDER BY HREG DESC';
    DM1.cdsTPension.Close;
    DM1.cdsTPension.DataRequest(xSql);
    DM1.cdsTPension.Open;
    dbgasonoapocab.Refresh;
    MessageDlg('Proceso ha sido eliminado satisfactoriamente', mtInformation, [mbOk], 0);
  End;
End;

procedure TFAponoPag.mebuscaChange(Sender: TObject);
begin
  If pgnoapo.TabIndex = 1 Then
  Begin
    If Length(Trim(mebusca.Text))>0 Then
      DM1.cdsFPagoDevolucion.Locate('ASOAPENOMDNI', VarArrayOf([TRIM(mebusca.Text)]), [loPartialKey]);
  End;
end;

Procedure TFAponoPag.mebuscaKeyPress(Sender: TObject; var Key: Char);
Begin
  If Key=#13 Then
  Begin
    If Length(Trim(mebusca.Text))>0 Then
    Begin
      mebusca.Text := '';
      dbgasonoapodet.SetFocus;
    End
    Else
    Begin
      MessageDlg('Debe Digitar El Nombre Del Asociado, Para Iniciar La Busqueda', mtError,[mbOk], 0 );
      mebusca.SetFocus;
    End;
  End;
End;


End.
