unit APO318;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppCtrls, ppBands, ppVar, ppPrnabl, ppClass, ppCache, ppProd,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, StdCtrls, Buttons, Grids,
  Wwdbigrd, Wwdbgrid, Mask, ExtCtrls, wwdblook, Wwdbdlg, wwdbdatetimepicker,
  ppParameter,db, wwdbedit, Wwdbspin ;

type
  TFaporeg = class(TForm)
    gbselran: TGroupBox;
    rgSeleccion: TRadioGroup;
    rgestadistico: TRadioGroup;
    gbparsel: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    dblcdidedep: TwwDBLookupComboDlg;
    Panel2: TPanel;
    medesdep: TMaskEdit;
    dblcdunipro: TwwDBLookupComboDlg;
    Panel3: TPanel;
    medesunipro: TMaskEdit;
    dblcdunipag: TwwDBLookupComboDlg;
    Panel4: TPanel;
    medesunipag: TMaskEdit;
    dblcdideuse: TwwDBLookupComboDlg;
    Panel5: TPanel;
    medesuniges: TMaskEdit;
    dblcdforpag: TwwDBLookupComboDlg;
    Panel1: TPanel;
    medesforpag: TMaskEdit;
    dbgprevio: TwwDBGrid;
    btnprocesar: TBitBtn;
    btnimprimir: TBitBtn;
    btncerrar: TBitBtn;
    ppdbreportes: TppDBPipeline;
    pprreporte04: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppShape13: TppShape;
    ppShape14: TppShape;
    ppShape15: TppShape;
    ppLabel9: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppltitulosec04: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable9: TppSystemVariable;
    ppLabel34: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppLabel35: TppLabel;
    ppLine3: TppLine;
    pplimpresopor04: TppLabel;
    ppLine4: TppLine;
    ppDBCalc5: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    pprreporte03: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppShape10: TppShape;
    ppShape11: TppShape;
    ppShape12: TppShape;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppltitulosec03: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel15: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLabel17: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLine1: TppLine;
    pplimpresopor03: TppLabel;
    ppLine2: TppLine;
    pprdetallado: TppReport;
    pprresumen: TppReport;
    ppParameterList2: TppParameterList;
    ppHeaderBand4: TppHeaderBand;
    ppShape9: TppShape;
    ppShape16: TppShape;
    ppltitulores: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppSystemVariable10: TppSystemVariable;
    ppSystemVariable11: TppSystemVariable;
    ppSystemVariable12: TppSystemVariable;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppShape17: TppShape;
    ppShape18: TppShape;
    ppShape19: TppShape;
    ppShape20: TppShape;
    ppShape21: TppShape;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppSummaryBand4: TppSummaryBand;
    ppShape22: TppShape;
    pplimpresoporres: TppLabel;
    ppLabel75: TppLabel;
    ppLine12: TppLine;
    ppDBCalc29: TppDBCalc;
    ppDBCalc30: TppDBCalc;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppDBText36: TppDBText;
    ppDBText35: TppDBText;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppDBCalc27: TppDBCalc;
    ppDBCalc28: TppDBCalc;
    ppLine17: TppLine;
    ppLabel80: TppLabel;
    ppDBText46: TppDBText;
    ppGroup8: TppGroup;
    ppGroupHeaderBand8: TppGroupHeaderBand;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppGroupFooterBand8: TppGroupFooterBand;
    ppDBCalc25: TppDBCalc;
    ppDBCalc26: TppDBCalc;
    ppLine16: TppLine;
    ppLabel79: TppLabel;
    ppDBText43: TppDBText;
    ppGroup9: TppGroup;
    ppGroupHeaderBand9: TppGroupHeaderBand;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppGroupFooterBand9: TppGroupFooterBand;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppLine15: TppLine;
    ppLabel78: TppLabel;
    ppDBText37: TppDBText;
    ppGroup10: TppGroup;
    ppGroupHeaderBand10: TppGroupHeaderBand;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppGroupFooterBand10: TppGroupFooterBand;
    ppDBCalc21: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppLine14: TppLine;
    ppDBText34: TppDBText;
    ppLabel77: TppLabel;
    ppGroup11: TppGroup;
    ppGroupHeaderBand11: TppGroupHeaderBand;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppGroupFooterBand11: TppGroupFooterBand;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppLine13: TppLine;
    ppLabel76: TppLabel;
    ppDBText17: TppDBText;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppShape2: TppShape;
    pplblTitulo: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel16: TppLabel;
    ppLabel18: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel28: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText53: TppDBText;
    ppDBText7: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppShape8: TppShape;
    pplimppordet: TppLabel;
    ppLine5: TppLine;
    ppLabel44: TppLabel;
    ppDBText16: TppDBText;
    ppDBText18: TppDBText;
    ppLine11: TppLine;
    ppDBText54: TppDBText;
    ppLabel48: TppLabel;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppLine10: TppLine;
    ppLabel47: TppLabel;
    ppDBText52: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppLine9: TppLine;
    ppLabel46: TppLabel;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText40: TppDBText;
    ppLine8: TppLine;
    ppLabel45: TppLabel;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppLine7: TppLine;
    ppLabel2: TppLabel;
    ppDBText22: TppDBText;
    ppLabel43: TppLabel;
    ppLine6: TppLine;
    ppDBText19: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppGroup17: TppGroup;
    ppGroupHeaderBand17: TppGroupHeaderBand;
    ppGroupFooterBand17: TppGroupFooterBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc6: TppDBCalc;
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
    perano: TwwDBSpinEdit;
    permes: TwwDBSpinEdit;
    Label8: TLabel;
    procedure btncerrarClick(Sender: TObject);
    procedure rgSeleccionClick(Sender: TObject);
    procedure btnprocesarClick(Sender: TObject);
    procedure dblcdforpagChange(Sender: TObject);
    procedure dblcdidedepChange(Sender: TObject);
    procedure dblcdidedepExit(Sender: TObject);
    procedure dblcduniproChange(Sender: TObject);
    procedure dblcduniproExit(Sender: TObject);
    procedure dblcdunipagChange(Sender: TObject);
    procedure dblcdunipagExit(Sender: TObject);
    procedure dblcdideuseChange(Sender: TObject);
    procedure dblcdideuseExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure rgestadisticoClick(Sender: TObject);
    procedure permesExit(Sender: TObject);
  private
    procedure limpiadepartamento;
    procedure limpiaunidaddeproceso;
    procedure limpiaunidaddepago;
    procedure limpiaunidaddegestion;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Faporeg: TFaporeg;

implementation

uses APODM;

{$R *.dfm}

procedure TFaporeg.btncerrarClick(Sender: TObject);
begin
 Faporeg.Close;
end;

procedure TFaporeg.rgSeleccionClick(Sender: TObject);
begin
  If DM1.cdsReporte.Active = True Then DM1.cdsReporte.EmptyDataSet;
  If (rgSeleccion.ItemIndex = 0) Or (rgSeleccion.ItemIndex = 1) Then
  Begin
    rgestadistico.Visible := false;
    gbparsel.Visible := True;
  End;

  If rgSeleccion.ItemIndex = 2 Then
  Begin
    rgestadistico.Visible := True;
    gbparsel.Visible := False;
  End;

end;

procedure TFaporeg.btnprocesarClick(Sender: TObject);
Var xSql:String;
begin
  Screen.Cursor := crHourGlass;
  If Length(Trim(permes.Text))>0 Then permes.Text:=Format('%.2d',[StrToInt(Trim(permes.Text))]) else permes.Text:='';
  // Detallado
  If rgSeleccion.ItemIndex = 0 Then
  Begin
    xSql := xSql + ' SELECT A.FORPAGOID, G.FORPAGODES, H.DPTOID, H.DPTODES, D.UPROID, D.UPRONOM, E.UPAGOID, E.UPAGONOM,'
    +' F.USEID, F.USENOM, B.ASOID, B.ASOCODMOD, B.ASOAPENOMDNI, A.TRANSNOPE, A.TRANSFOPE, A.USUARIO, A.TRANSANO||''/''||A.TRANSMES ANOMES,'
    +' NVL(A.TRANSMTO,0)-NVL(A.TRANSMTODEV,0) TRANSMTO'
    +' FROM APO301 A, APO201 B, APO102 D, APO103 E, APO101 F, COB101 G, APO158 H'
    +' WHERE A.TRANSANO = '+QuotedStr(PERANO.Text)+' AND A.TRANSMES = '+QuotedStr(permes.Text);
    If Trim(dblcdforpag.Text) <> '' Then  xSql := xSql + ' AND A.FORPAGOID = '+QuotedStr(dblcdforpag.Text);
    If Trim(dblcdidedep.Text) <> '' Then  xSql := xSql + ' AND A.DPTOID = '+QuotedStr(dblcdidedep.Text);
    If Trim(dblcdunipro.Text) <> '' Then  xSql := xSql + ' AND A.UPROID = '+QuotedStr(dblcdunipro.Text);
    If Trim(dblcdunipag.Text) <> '' Then  xSql := xSql + ' AND A.UPAGOID = '+QuotedStr(dblcdunipag.Text);
    If Trim(dblcdideuse.Text) <> '' Then  xSql := xSql + ' AND A.UPAGOID = '+QuotedStr(dblcdideuse.Text);
    xSql := xSql + ' AND A.ASOID = B.ASOID(+)'
    +' AND A.FORPAGOID = G.FORPAGOID(+) AND A.UPROID = D.UPROID(+)'
    +' AND A.UPROID = D.UPROID(+) AND A.UPAGOID = E.UPAGOID(+)'
    +' AND A.UPROID = F.UPROID(+) AND A.UPAGOID = F.UPAGOID(+) AND A.USEID = F.USEID(+)'
    +' AND A.DPTOID = H.DPTOID(+) AND NVL(A.TRANSMTO,0)-NVL(A.TRANSMTODEV,0) > 0'
    +' ORDER BY A.DPTOID, A.UPROID, A.UPAGOID, A.USEID, B.ASOID, A.TRANSFOPE, B.ASOCODMOD, B.ASOAPENOMDNI, A.TRANSANO, A.TRANSMES';
    DM1.cdsReporte.Close;
    DM1.cdsReporte.DataRequest(xSql);
    DM1.cdsReporte.Open;
    dbgprevio.Selected.Clear;
    dbgprevio.Selected.Add('FORPAGOID'#9'2'#9'Cod.~For.Pag.'#9#9);
    dbgprevio.Selected.Add('FORPAGODES'#9'25'#9'Descripcin de~Forma de pago'#9#9);
    dbgprevio.Selected.Add('DPTOID'#9'2'#9'Cod.~Dpto.'#9#9);
    dbgprevio.Selected.Add('DPTODES'#9'25'#9'Descripci n de~Departamento'#9#9);
    dbgprevio.Selected.Add('UPROID'#9'3'#9'Cod.~Uni.Pro.'#9#9);
    dbgprevio.Selected.Add('UPRONOM'#9'25'#9'Descripcin de~Unidad de Proceso'#9#9);
    dbgprevio.Selected.Add('UPAGOID'#9'2'#9'Cod.~Uni.Pag.'#9#9);
    dbgprevio.Selected.Add('UPAGONOM'#9'15'#9'Descripci n de~Unidad de pago'#9#9);
    dbgprevio.Selected.Add('USEID'#9'2'#9'Cod.~Uni.Ges.'#9#9);
    dbgprevio.Selected.Add('USENOM'#9'25'#9'Descripcin~Uni. Ges.'#9#9);
    dbgprevio.Selected.Add('ASOID'#9'10'#9'Ide. del~asociado'#9#9);
    dbgprevio.Selected.Add('ASOCODMOD'#9'10'#9'Cod.Mod. del~asociado'#9#9);
    dbgprevio.Selected.Add('ASOAPENOMDNI'#9'45'#9'Apellidos y nombre(s)~del asociado'#9#9);
    dbgprevio.Selected.Add('TRANSNOPE'#9'10'#9'N mero de~Operacin'#9#9);
    dbgprevio.Selected.Add('TRANSFOPE'#9'10'#9'Fecha de~Operaci n'#9#9);
    dbgprevio.Selected.Add('USUARIO'#9'15'#9'Ide. del~Usuario'#9#9);
    dbgprevio.Selected.Add('ANOMES'#9'7'#9'Ano y mes~de proceso'#9#9);
    dbgprevio.Selected.Add('TRANSMTO'#9'15'#9'Monto~aportado'#9#9);
    dbgprevio.ApplySelected;
    TNumericField(DM1.cdsReporte.FieldByName('TRANSMTO')).DisplayFormat := '##,###.00';
  End;
  // Resumen
  If rgSeleccion.ItemIndex = 1 Then
  Begin
    xSql := 'SELECT FORPAGOID, FORPAGODES, DPTOID, DPTODES, UPROID, UPRONOM, UPAGOID, UPAGONOM, USEID, USENOM, ASOCODMOD, ASOAPENOMDNI, TRANSNOPE, TRANSFOPE, USUARIO, CANTIDAD, TRANSMTO, ASOID'
    +' FROM (SELECT  G.FORPAGOID, G.FORPAGODES, A.DPTOID, C.DPTODES, A.UPROID, D.UPRONOM, A.UPAGOID, E.UPAGONOM, A.USEID, F.USENOM, B.ASOCODMOD, B.ASOAPENOMDNI, A.TRANSNOPE, A.TRANSFOPE, A.USUARIO,'
    +' A.ASOID, COUNT(A.TRANSMTO ) CANTIDAD, SUM(NVL(A.TRANSMTO,0))-SUM(NVL(A.TRANSMTODEV,0)) TRANSMTO FROM APO301 A, APO201 B, APO158 C, APO102 D, APO103 E, APO101 F, COB101 G'
    +' WHERE A.TRANSANO = '+QuotedStr(PERANO.Text)+' AND A.TRANSMES = '+QuotedStr(permes.Text);
    If Trim(dblcdforpag.Text) <> '' Then  xSql := xSql + ' AND A.FORPAGOID = '+QuotedStr(dblcdforpag.Text);
    If Trim(dblcdidedep.Text) <> '' Then  xSql := xSql + ' AND A.DPTOID = '+QuotedStr(dblcdidedep.Text);
    If Trim(dblcdunipro.Text) <> '' Then  xSql := xSql + ' AND A.UPROID = '+QuotedStr(dblcdunipro.Text);
    If Trim(dblcdunipag.Text) <> '' Then  xSql := xSql + ' AND A.UPAGOID = '+QuotedStr(dblcdunipag.Text);
    If Trim(dblcdideuse.Text) <> '' Then  xSql := xSql + ' AND A.UPAGOID = '+QuotedStr(dblcdideuse.Text);
    xSql := xSql + ' AND A.ASOID = B.ASOID(+) AND A.FORPAGOID = G.FORPAGOID(+)'
    + ' AND A.UPROID = F.UPROID(+) AND A.UPAGOID = F.UPAGOID(+) AND A.USEID = F.USEID(+) AND F.DPTOID = C.DPTOID(+) AND A.UPROID = D.UPROID(+) AND '
    + ' A.UPROID = E.UPROID(+) AND A.UPAGOID = E.UPAGOID(+) AND NVL(TRANSMTO,0)-NVL(TRANSMTODEV,0)>0 GROUP BY  G.FORPAGOID, G.FORPAGODES, A.DPTOID, C.DPTODES, A.UPROID, D.UPRONOM, A.UPAGOID,'
    + ' E.UPAGONOM, A.USEID, F.USENOM, B.ASOCODMOD, B.ASOAPENOMDNI, A.TRANSNOPE, A.TRANSFOPE, A.USUARIO, A.ASOID) ORDER BY FORPAGOID, DPTOID, UPROID, UPAGOID, USEID, TRANSFOPE, TRANSNOPE, ASOAPENOMDNI';
    DM1.cdsReporte.Close;
    DM1.cdsReporte.DataRequest(xSql);
    DM1.cdsReporte.Open;
    dbgprevio.Selected.Clear;
    dbgprevio.Selected.Add('FORPAGOID'#9'2'#9'Cod.~For.Pag.'#9#9);
    dbgprevio.Selected.Add('FORPAGODES'#9'25'#9'Descripcin de~Forma de pago'#9#9);
    dbgprevio.Selected.Add('DPTOID'#9'2'#9'Cod.~Dpto.'#9#9);
    dbgprevio.Selected.Add('DPTODES'#9'25'#9'Descripci n de~Departamento'#9#9);
    dbgprevio.Selected.Add('UPROID'#9'3'#9'Cod.~Uni.Pro.'#9#9);
    dbgprevio.Selected.Add('UPRONOM'#9'25'#9'Descripcin de~Unidad de Proceso'#9#9);
    dbgprevio.Selected.Add('UPAGOID'#9'2'#9'Cod.~Uni.Pag.'#9#9);
    dbgprevio.Selected.Add('UPAGONOM'#9'15'#9'Descripci n de~Unidad de pago'#9#9);
    dbgprevio.Selected.Add('USEID'#9'2'#9'Cod.~Uni.Ges.'#9#9);
    dbgprevio.Selected.Add('USENOM'#9'25'#9'Descripcin~Uni. Ges.'#9#9);
    dbgprevio.Selected.Add('ASOCODMOD'#9'10'#9'Cod.Mod. del~asociado'#9#9);
    dbgprevio.Selected.Add('ASOAPENOMDNI'#9'45'#9'Apellidos y nombre(s)~del asociado'#9#9);
    dbgprevio.Selected.Add('TRANSNOPE'#9'10'#9'N mero de~Operacin'#9#9);
    dbgprevio.Selected.Add('TRANSFOPE'#9'10'#9'Fecha de~Operaci n'#9#9);
    dbgprevio.Selected.Add('USUARIO'#9'15'#9'Ide. del~Usuario'#9#9);
    dbgprevio.Selected.Add('CANTIDAD'#9'10'#9'Nmero de~Registros'#9#9);
    dbgprevio.Selected.Add('TRANSMTO'#9'15'#9'Monto~aportado'#9#9);
    TNumericField(DM1.cdsReporte.FieldByName('CANTIDAD')).DisplayFormat := '##,###';
    TNumericField(DM1.cdsReporte.FieldByName('TRANSMTO')).DisplayFormat := '##,###.00';
    dbgprevio.Selected.Add('ASOID'#9'10'#9'Identificaci n~del que registro'#9#9);
    dbgprevio.ApplySelected;
  End;
  // Estadistico por forma de pago
  If (rgSeleccion.ItemIndex = 2) And (rgestadistico.ItemIndex = 0) Then
  Begin
    xSql := 'SELECT A.FORPAGOABR, B.FORPAGODES,  COUNT(*) CUENTA, SUM(NVL(TRANSMTO,0))-SUM(NVL(TRANSMTODEV,0)) TRANSMTO FROM APO301 A, COB101 B'
    +' WHERE A.TRANSANO = '+QuotedStr(PERANO.Text)+' AND A.TRANSMES = '+QuotedStr(permes.Text)
    +' AND NVL(TRANSMTO,0)-NVL(TRANSMTODEV,0)>0 '
    +' AND A.FORPAGOID = B.FORPAGOID(+) GROUP BY A.FORPAGOABR, B.FORPAGODES ORDER BY A.FORPAGOABR';
    DM1.cdsReporte.Close;
    DM1.cdsReporte.DataRequest(xSql);
    DM1.cdsReporte.Open;
    dbgprevio.Selected.Clear;
    dbgprevio.Selected.Add('FORPAGOABR'#9'3'#9'Cod.~For.Pag.'#9#9);
    dbgprevio.Selected.Add('FORPAGODES'#9'25'#9'Descripcin de~Forma de pago'#9#9);
    dbgprevio.Selected.Add('CUENTA'#9'10'#9'N mero de~Registros'#9#9);
    dbgprevio.Selected.Add('TRANSMTO'#9'15'#9'Monto~aportado'#9#9);
    dbgprevio.ApplySelected;
    TNumericField(DM1.cdsReporte.FieldByName('CUENTA')).DisplayFormat := '##,###';
    TNumericField(DM1.cdsReporte.FieldByName('TRANSMTO')).DisplayFormat := '##,###.00';
  End;
  // Estadistico por departamento
  If (rgSeleccion.ItemIndex = 2) And (rgestadistico.ItemIndex = 1) Then
  Begin
    xSql := 'SELECT B.DPTOID, B.DPTODES, COUNT(*) CANTIDAD, SUM(NVL(TRANSMTO,0))-SUM(NVL(TRANSMTODEV,0)) MONTO  FROM APO301 A, APO158 B,APO101 C'
    +' WHERE A.TRANSANO = '+QuotedStr(PERANO.Text)+' AND A.TRANSMES = '+QuotedStr(permes.Text)
    +' AND A.UPROID = C.UPROID(+) AND A.UPAGOID = C.UPAGOID(+) AND A.USEID = C.USEID(+) AND C.DPTOID = B.DPTOID(+) '
    +' AND NVL(TRANSMTO,0)-NVL(TRANSMTODEV,0)>0'
    +' GROUP BY B.DPTOID, B.DPTODES ORDER BY B.DPTOID';
    DM1.cdsReporte.Close;
    DM1.cdsReporte.DataRequest(xSql);
    DM1.cdsReporte.Open;
    dbgprevio.Selected.Add('DPTOID'#9'3'#9'Cod.~Dep.'#9#9);
    dbgprevio.Selected.Add('DPTODES'#9'25'#9'Descripcin del~Departamento'#9#9);
    dbgprevio.Selected.Add('CANTIDAD'#9'10'#9'N mero de~Registros'#9#9);
    dbgprevio.Selected.Add('MONTO'#9'15'#9'Monto~aportado'#9#9);
    dbgprevio.ApplySelected;
    TNumericField(DM1.cdsReporte.FieldByName('CANTIDAD')).DisplayFormat := '##,###';
    TNumericField(DM1.cdsReporte.FieldByName('MONTO')).DisplayFormat := '##,###.00';
  End;
  Screen.Cursor := crDefault;
End;

Procedure TFaporeg.dblcdforpagChange(Sender: TObject);
Begin
  If Trim(dblcdforpag.Text) = '' Then
  Begin
    dblcdforpag.Text := '';
    medesforpag.Text := '';
  End
  Else
  Begin
    If Length(Trim(dblcdforpag.Text)) = 2 then
    Begin
      If DM1.cdsFormaPago.Locate('FORPAGOID', dblcdforpag.Text, []) Then
      Begin
        medesforpag.Text := DM1.cdsFormaPago.FieldByName('FORPAGODES').AsString;
      End
      Else
      Begin
        MessageDlg('Cdigo no Valido', mtInformation, [mbOk], 0);
        dblcdforpag.Text := '';
        medesforpag.Text := '';
      End;
    End;
  End;
End;

procedure TFaporeg.dblcdidedepChange(Sender: TObject);
begin
  If Trim(dblcdidedep.Text) = '' Then limpiadepartamento
  Else
  Begin
    If Length(Trim(dblcdidedep.Text)) = 2 then
    Begin
      If DM1.cdsDpto.Locate('DPTOID', dblcdidedep.Text, []) Then
      Begin
        medesdep.Text := DM1.cdsDpto.FieldByName('DPTODES').AsString;
        xSql := 'SELECT UPROID, UPRONOM FROM APO102 WHERE DPTOID = '+QuotedStr(dblcdidedep.Text);
        DM1.cdsUPro.Close;
        DM1.cdsUPro.DataRequest(xSql);
        DM1.cdsUPro.Open;
        dblcdunipro.Selected.Clear;
        dblcdunipro.Selected.Add('UPROID'#9'3'#9'C digo'#9#9);
        dblcdunipro.Selected.Add('UPRONOM'#9'30'#9'Descripcin'#9#9);
      End
      Else
      Begin
        MessageDlg('C digo no Valido', mtInformation, [mbOk], 0);
        limpiadepartamento;
      End;
    End;
  End;
end;

procedure TFaporeg.limpiadepartamento;
begin
  // Limpia departamento
  dblcdidedep.Text := '';
  medesdep.Text := '';
  // Limpiando unidad de proceso
  dblcdunipro.Text := '';
  medesunipro.Text := '';
  DM1.cdsUPro.Close;
  // Limpiando unidad de pago
  dblcdunipag.Text := '';
  medesunipag.Text := '';
  DM1.cdsUPago.Close;
  // Limpiando unidad de gestion
  dblcdideuse.Text := '';
  medesuniges.Text := '';
  DM1.cdsUse.Close;
end;


procedure TFaporeg.limpiaunidaddeproceso;
begin
  // limpia unidad de proceso
  dblcdunipro.Text := '';
  medesunipro.Text := '';
  // Limpiando unidad de pago
  dblcdunipag.Text := '';
  medesunipag.Text := '';
  DM1.cdsUPago.Close;
  // Limpiando unidad de gestion
  dblcdideuse.Text := '';
  medesuniges.Text := '';
  DM1.cdsUse.Close;
end;

procedure TFaporeg.limpiaunidaddepago;
begin
  // limpia unidad de pago
  dblcdunipag.Text := '';
  medesunipag.Text := '';
  // Limpiando unidad de gestion
  dblcdideuse.Text := '';
  medesuniges.Text := '';
  DM1.cdsUse.Close;
end;

procedure TFaporeg.limpiaunidaddegestion;
begin
  // limpia unidad de gestion
  dblcdideuse.Text := '';
  medesuniges.Text := '';
end;

procedure TFaporeg.dblcdidedepExit(Sender: TObject);
begin
  If Length(Trim(dblcdidedep.Text)) <> 2 then limpiadepartamento;
end;

procedure TFaporeg.dblcduniproChange(Sender: TObject);
begin
  If Trim(dblcdunipro.Text) = '' Then limpiaunidaddeproceso
  Else
  Begin
    If Length(Trim(dblcdunipro.Text)) = 3 then
    Begin
      If DM1.cdsUPro.Locate('UPROID', dblcdunipro.Text, []) Then
      Begin
        medesunipro.Text := DM1.cdsUPro.FieldByName('UPRONOM').AsString;
        xSql := 'SELECT UPAGOID, UPAGONOM FROM APO103 WHERE UPROID = '+QuotedStr(dblcdunipro.Text);
        DM1.cdsUPago.Close;
        DM1.cdsUPago.DataRequest(xSql);
        DM1.cdsUPago.Open;
        dblcdunipag.Selected.Clear;
        dblcdunipag.Selected.Add('UPAGOID'#9'3'#9'Cdigo'#9#9);
        dblcdunipag.Selected.Add('UPAGONOM'#9'30'#9'Descripci n'#9#9);
      End
      Else
      Begin
        MessageDlg('Cdigo no Valido', mtInformation, [mbOk], 0);
        limpiaunidaddeproceso;
      End;
    End;
  End;
end;

procedure TFaporeg.dblcduniproExit(Sender: TObject);
begin
  If Length(Trim(dblcdunipro.Text)) <> 3 then limpiaunidaddeproceso;
end;

procedure TFaporeg.dblcdunipagChange(Sender: TObject);
begin
  If Trim(dblcdunipag.Text) = '' Then limpiaunidaddepago
  Else
  Begin
    If Length(Trim(dblcdunipag.Text)) = 2 then
    Begin
      If DM1.cdsUPago.Locate('UPAGOID', dblcdunipag.Text, []) Then
      Begin
        medesunipag.Text := DM1.cdsUPago.FieldByName('UPAGONOM').AsString;
        xSql := 'SELECT USEID, USENOM FROM APO101 WHERE UPROID = '+QuotedStr(dblcdunipro.Text)+' AND UPAGOID = '+QuotedStr(dblcdunipag.Text);
        DM1.cdsUse.Close;
        DM1.cdsUse.DataRequest(xSql);
        DM1.cdsUse.Open;
        dblcdideuse.Selected.Clear;
        dblcdideuse.Selected.Add('USEID'#9'3'#9'Cdigo'#9#9);
        dblcdideuse.Selected.Add('USENOM'#9'30'#9'Descripci n'#9#9);
      End
      Else
      Begin
        MessageDlg('Cdigo no Valido', mtInformation, [mbOk], 0);
        limpiaunidaddepago;
      End;
    End;
  End;
end;

procedure TFaporeg.dblcdunipagExit(Sender: TObject);
begin
  If Length(Trim(dblcdunipag.Text)) <> 2 then limpiaunidaddepago;
end;

procedure TFaporeg.dblcdideuseChange(Sender: TObject);
begin
  If Trim(dblcdideuse.Text) = '' Then limpiaunidaddegestion
  Else
  Begin
    If Length(Trim(dblcdideuse.Text)) = 2 then
    Begin
      If DM1.cdsUse.Locate('USEID', dblcdideuse.Text, []) Then
        medesuniges.Text := DM1.cdsUse.FieldByName('USENOM').AsString
      Else
      Begin
        MessageDlg('C digo no Valido', mtInformation, [mbOk], 0);
        limpiaunidaddegestion;
      End;
    End;
  End;
end;

procedure TFaporeg.dblcdideuseExit(Sender: TObject);
begin
  If Length(Trim(dblcdideuse.Text)) <> 2 then limpiaunidaddegestion;
end;

procedure TFaporeg.FormActivate(Sender: TObject);
begin
  xSql := 'SELECT FORPAGODES, FORPAGOID FROM COB101 WHERE'
  +' FORPAGOID IN (''01'',''02'',''03'',''05'',''09'', ''22'', ''25'') ORDER BY FORPAGOID';
  DM1.cdsFormaPago.Close;
  DM1.cdsFormaPago.DataRequest(xSql);
  DM1.cdsFormaPago.Open;
  dblcdforpag.Selected.Clear;
  dblcdforpag.Selected.Add('FORPAGOID'#9'3'#9'Cdigo'#9#9);
  dblcdforpag.Selected.Add('FORPAGODES'#9'30'#9'Descripci n'#9#9);
  xSql := 'SELECT DPTOID, DPTODES FROM APO158';
  DM1.cdsDpto.Close;
  DM1.cdsDpto.DataRequest(xSql);
  DM1.cdsDpto.Open;
  dblcdidedep.Selected.Clear;
  dblcdidedep.Selected.Add('DPTOID'#9'2'#9'Cdigo'#9#9);
  dblcdidedep.Selected.Add('DPTODES'#9'30'#9'Descripci n'#9#9);
  rgSeleccion.Visible := True;
  rgestadistico.Visible := False;
  perano.SetFocus;
  perano.SelectAll;
end;

procedure TFaporeg.btnimprimirClick(Sender: TObject);
Var xWhere:String;
begin
  // Imprimir
  If rgSeleccion.ItemIndex = 0 Then
  Begin
    pplblTitulo.Caption := 'PAGO DE APORTES EFECTUADOS PARA EL PERIODO '+perano.Text+'-'+permes.Text;
    xWhere := 'USERID = '+ QuotedStr(DM1.wUsuario) ;
    pplimppordet.Caption := 'IMPRESO POR : '+ UpperCase(DM1.DisplayDescrip('prvTGE', 'USERTABLE', 'USERNOM', xWhere , 'USERNOM'));
    pprdetallado.Print;
  End;
  // Resumen
  If rgSeleccion.ItemIndex = 1 Then
  Begin
    ppltitulores.Caption := 'PAGO DE APORTES EFECTUADOS PARA EL PERIODO '+perano.Text+'-'+permes.Text;
    xWhere := 'USERID = '+ QuotedStr(DM1.wUsuario) ;
    pplimpresoporres.Caption := 'IMPRESO POR : '+ UpperCase(DM1.DisplayDescrip('prvTGE', 'USERTABLE', 'USERNOM', xWhere , 'USERNOM'));
    pprresumen.Print;
  End;
  If (rgSeleccion.ItemIndex = 2) And (rgestadistico.ItemIndex = 0) Then
  Begin
    xWhere := 'USERID = '+ QuotedStr(DM1.wUsuario) ;
    pplimpresopor03.Caption := 'IMPRESO POR : '+ UpperCase(DM1.DisplayDescrip('prvTGE', 'USERTABLE', 'USERNOM', xWhere , 'USERNOM'));
    ppltitulosec03.Caption := 'PERIODO '+perano.Text+'-'+permes.Text;
    pprreporte03.Print;
  End;

  If (rgSeleccion.ItemIndex = 2) And (rgestadistico.ItemIndex = 1) Then
  Begin
    xWhere := 'USERID = '+ QuotedStr(DM1.wUsuario) ;
    pplimpresopor04.Caption := 'IMPRESO POR : '+ UpperCase(DM1.DisplayDescrip('prvTGE', 'USERTABLE', 'USERNOM', xWhere , 'USERNOM'));
    ppltitulosec04.Caption := 'PERIODO '+perano.Text+'-'+permes.Text;
    pprreporte04.Print;
  End;
end;

procedure TFaporeg.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
  begin
    Key := #0;
    Perform(CM_DIALOGKEY, VK_TAB, 0);
  end;
end;

procedure TFaporeg.rgestadisticoClick(Sender: TObject);
begin
  If DM1.cdsReporte.Active = True Then DM1.cdsReporte.EmptyDataSet;
end;

procedure TFaporeg.permesExit(Sender: TObject);
begin
If Length(Trim(permes.Text))>0 Then permes.Text:=Format('%.2d',[StrToInt(Trim(permes.Text))]) else permes.Text:='';
end;

end.
