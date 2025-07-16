unit APOD11;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, wwdbdatetimepicker, fcButton, fcImgBtn, fcShapeBtn, ppCtrls,
  ppTypes, ppBands, ppClass, ppVar, ppPrnabl, ppProd, ppReport, ppComm, ppRelatv,
  variants, ppCache, ppDB, ppDBPipe, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid,
  ppDBBDE, Buttons, Mask, wwdblook, Wwdbdlg, ppParameter, db;

type
  TFControlReclamos = class(TForm)
    gbselran: TGroupBox;
    dbdtpFechaI: TwwDBDateTimePicker;
    dbdtpFechaF: TwwDBDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    ppbderep03: TppBDEPipeline;
    pprep03: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppShape3: TppShape;
    ppShape2: TppShape;
    ppShape1: TppShape;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    pplblTitulo: TppLabel;
    ppltitulo02: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable9: TppSystemVariable;
    ppLabel66: TppLabel;
    ppLine1: TppLine;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppLabel67: TppLabel;
    ppLine2: TppLine;
    pplimpresopor: TppLabel;
    ppSummaryBand3: TppSummaryBand;
    rgSeleccion: TRadioGroup;
    dbgprevio: TwwDBGrid;
    btnprocesar: TBitBtn;
    gbparsel: TGroupBox;
    dblcdsitrec: TwwDBLookupComboDlg;
    Label3: TLabel;
    Panel1: TPanel;
    medessitrec: TMaskEdit;
    Label4: TLabel;
    dblcdidedep: TwwDBLookupComboDlg;
    Panel2: TPanel;
    medesdep: TMaskEdit;
    Label5: TLabel;
    dblcdunipro: TwwDBLookupComboDlg;
    Panel3: TPanel;
    medesunipro: TMaskEdit;
    Label6: TLabel;
    dblcdunipag: TwwDBLookupComboDlg;
    Panel4: TPanel;
    medesunipag: TMaskEdit;
    Label7: TLabel;
    dblcdideuse: TwwDBLookupComboDlg;
    Panel5: TPanel;
    medesuniges: TMaskEdit;
    btnimprimir: TBitBtn;
    btncerrar: TBitBtn;
    ppbderep02: TppBDEPipeline;
    pprep02: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand4: TppHeaderBand;
    ppShape4: TppShape;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppShape5: TppShape;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppDetailBand4: TppDetailBand;
    DBTASOAPENOMDNI: TppDBText;
    ppDBText32: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppSummaryBand4: TppSummaryBand;
    ppShape16: TppShape;
    ppLabel87: TppLabel;
    ppDBCalc25: TppDBCalc;
    ppDBCalc26: TppDBCalc;
    DBTASOID: TppDBText;
    DBTRECLSITID: TppDBText;
    DBTDPTOID: TppDBText;
    DBTUPROID: TppDBText;
    DBTUPAGOID: TppDBText;
    DBTUSEID: TppDBText;
    ppGroup16: TppGroup;
    ppGroupHeaderBand16: TppGroupHeaderBand;
    ppGroupFooterBand16: TppGroupFooterBand;
    ppGroup17: TppGroup;
    ppGroupHeaderBand17: TppGroupHeaderBand;
    ppGroupFooterBand17: TppGroupFooterBand;
    ppGroup18: TppGroup;
    ppGroupHeaderBand18: TppGroupHeaderBand;
    ppGroupFooterBand18: TppGroupFooterBand;
    ppGroup19: TppGroup;
    ppGroupHeaderBand19: TppGroupHeaderBand;
    ppGroupFooterBand19: TppGroupFooterBand;
    ppGroup20: TppGroup;
    ppGroupHeaderBand20: TppGroupHeaderBand;
    ppGroupFooterBand20: TppGroupFooterBand;
    ppGroup21: TppGroup;
    ppGroupHeaderBand21: TppGroupHeaderBand;
    ppGroupFooterBand21: TppGroupFooterBand;
    ppLabel93: TppLabel;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppDBText60: TppDBText;
    ppShape25: TppShape;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
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
    ppDBCalc27: TppDBCalc;
    ppDBCalc28: TppDBCalc;
    ppShape11: TppShape;
    ppLabel77: TppLabel;
    ppShape12: TppShape;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppShape13: TppShape;
    ppShape14: TppShape;
    ppShape15: TppShape;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel99: TppLabel;
    ppSystemVariable10: TppSystemVariable;
    ppSystemVariable11: TppSystemVariable;
    ppSystemVariable12: TppSystemVariable;
    ppLabel100: TppLabel;
    ppbderep01: TppBDEPipeline;
    pprep01: TppReport;
    ppParameterList2: TppParameterList;
    ppHeaderBand5: TppHeaderBand;
    ppShape17: TppShape;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppShape18: TppShape;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppShape37: TppShape;
    ppLabel122: TppLabel;
    ppLabel123: TppLabel;
    ppShape38: TppShape;
    ppShape39: TppShape;
    ppShape40: TppShape;
    ppLabel124: TppLabel;
    ppLabel125: TppLabel;
    ppLabel126: TppLabel;
    ppLabel127: TppLabel;
    ppLabel128: TppLabel;
    ppLabel129: TppLabel;
    ppLabel130: TppLabel;
    ppLabel131: TppLabel;
    ppLabel132: TppLabel;
    ppLabel133: TppLabel;
    ppLabel134: TppLabel;
    ppLabel135: TppLabel;
    ppLabel136: TppLabel;
    ppSystemVariable13: TppSystemVariable;
    ppSystemVariable14: TppSystemVariable;
    ppSystemVariable15: TppSystemVariable;
    ppShape36: TppShape;
    ppLabel121: TppLabel;
    ppLabel137: TppLabel;
    ppDetailBand5: TppDetailBand;
    ppDBText33: TppDBText;
    ppDBText39: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText40: TppDBText;
    ppSummaryBand5: TppSummaryBand;
    ppShape19: TppShape;
    ppLabel115: TppLabel;
    ppDBCalc36: TppDBCalc;
    ppDBCalc29: TppDBCalc;
    ppDBCalc48: TppDBCalc;
    ppLabel117: TppLabel;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    DBTRECLSITID01: TppDBText;
    ppDBText46: TppDBText;
    ppLabel106: TppLabel;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppShape41: TppShape;
    ppLabel105: TppLabel;
    ppDBCalc40: TppDBCalc;
    ppDBCalc44: TppDBCalc;
    ppDBCalc47: TppDBCalc;
    ppDBText61: TppDBText;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppLabel108: TppLabel;
    DBTDPTOID01: TppDBText;
    ppDBText47: TppDBText;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppShape35: TppShape;
    ppLabel116: TppLabel;
    ppDBCalc39: TppDBCalc;
    ppDBCalc43: TppDBCalc;
    ppDBCalc46: TppDBCalc;
    ppDBText54: TppDBText;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    DBTUPROID01: TppDBText;
    ppLabel109: TppLabel;
    ppDBText48: TppDBText;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppShape34: TppShape;
    ppLabel114: TppLabel;
    ppDBCalc38: TppDBCalc;
    ppDBCalc42: TppDBCalc;
    ppDBCalc45: TppDBCalc;
    ppDBText53: TppDBText;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    DBTUPAGOID01: TppDBText;
    ppLabel110: TppLabel;
    ppDBText49: TppDBText;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppShape33: TppShape;
    ppLabel113: TppLabel;
    ppDBCalc37: TppDBCalc;
    ppDBCalc41: TppDBCalc;
    ppDBCalc30: TppDBCalc;
    ppDBText52: TppDBText;
    ppGroup8: TppGroup;
    ppGroupHeaderBand8: TppGroupHeaderBand;
    DBTUSEID01: TppDBText;
    ppLabel111: TppLabel;
    ppDBText50: TppDBText;
    ppGroupFooterBand8: TppGroupFooterBand;
    ppShape32: TppShape;
    ppLabel112: TppLabel;
    ppDBText51: TppDBText;
    ppDBCalc33: TppDBCalc;
    ppDBCalc34: TppDBCalc;
    ppDBCalc35: TppDBCalc;
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure rgSeleccionClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dblcdidedepChange(Sender: TObject);
    procedure dblcdunipagChange(Sender: TObject);
    procedure dblcduniproChange(Sender: TObject);
    procedure dblcdsitrecChange(Sender: TObject);
    procedure dblcdsitrecExit(Sender: TObject);
    procedure dblcdidedepExit(Sender: TObject);
    procedure dblcduniproExit(Sender: TObject);
    procedure dblcdunipagExit(Sender: TObject);
    procedure dblcdideuseChange(Sender: TObject);
    procedure dblcdideuseExit(Sender: TObject);
    procedure btnprocesarClick(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
    procedure btncerrarClick(Sender: TObject);
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
  FControlReclamos: TFControlReclamos;

implementation

uses APODM , ppViewr;

{$R *.DFM}


procedure TFControlReclamos.FormShow(Sender: TObject);
begin
   dbdtpFechaI.date := Date ;
   dbdtpFechaF.date := Date ;
end;

procedure TFControlReclamos.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If (Key = #13) Then
    begin
     Key := #0;
     Perform(CM_DialogKey, VK_TAB, 0);
    end;
end;

procedure TFControlReclamos.rgSeleccionClick(Sender: TObject);
begin
  dbgprevio.Selected.Clear;
  dbgprevio.Selected.Add(''#9'0'#9''#9#9);
  dbgprevio.ApplySelected;
  If DM1.cdsReporte.Active = True Then DM1.cdsReporte.EmptyDataSet;
  If (rgSeleccion.ItemIndex = 0) Or (rgSeleccion.ItemIndex = 1) Then
  Begin
    btnprocesar.Top := 11;
    btnprocesar.Left := 582;
    gbparsel.Visible := True;
  End;
  If (rgSeleccion.ItemIndex = 2) Then
  Begin
    btnprocesar.Top := 11;
    btnprocesar.Left := 217;
    gbparsel.Visible := False;
  End;
end;

procedure TFControlReclamos.FormActivate(Sender: TObject);
Var xSql:String;
begin
  If DM1.cdsReporte.Active = True Then DM1.cdsReporte.EmptyDataSet;
  xSql := 'SELECT RECLSITID, RECLSITDES FROM APO126';
  DM1.cdsReclSit.Close;
  DM1.cdsReclSit.DataRequest(xSql);
  DM1.cdsReclSit.Open;
  dblcdsitrec.Selected.Clear;
  dblcdsitrec.Selected.Add('RECLSITID'#9'2'#9'Código'#9#9);
  dblcdsitrec.Selected.Add('RECLSITDES'#9'30'#9'Descripción'#9#9);
  xSql := 'SELECT DPTOID, DPTODES FROM APO158';
  DM1.cdsDpto.Close;
  DM1.cdsDpto.DataRequest(xSql);
  DM1.cdsDpto.Open;
  dblcdidedep.Selected.Clear;
  dblcdidedep.Selected.Add('DPTOID'#9'2'#9'Código'#9#9);
  dblcdidedep.Selected.Add('DPTODES'#9'30'#9'Descripción'#9#9);
end;

procedure TFControlReclamos.dblcdidedepChange(Sender: TObject);
Var xSql:String;
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
        dblcdunipro.Selected.Add('UPROID'#9'3'#9'Código'#9#9);
        dblcdunipro.Selected.Add('UPRONOM'#9'30'#9'Descripción'#9#9);
      End
      Else
      Begin
        MessageDlg('Código no Valido', mtInformation, [mbOk], 0);
        limpiadepartamento;
      End;
    End;
  End;
end;

procedure TFControlReclamos.dblcdunipagChange(Sender: TObject);
Var xSql:String;
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
        dblcdideuse.Selected.Add('USEID'#9'3'#9'Código'#9#9);
        dblcdideuse.Selected.Add('USENOM'#9'30'#9'Descripción'#9#9);
      End
      Else
      Begin
        MessageDlg('Código no Valido', mtInformation, [mbOk], 0);
        limpiaunidaddepago;
      End;
    End;
  End;
end;

procedure TFControlReclamos.dblcduniproChange(Sender: TObject);
Var xSql:String;
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
        dblcdunipag.Selected.Add('UPAGOID'#9'3'#9'Código'#9#9);
        dblcdunipag.Selected.Add('UPAGONOM'#9'30'#9'Descripción'#9#9);
      End
      Else
      Begin
        MessageDlg('Código no Valido', mtInformation, [mbOk], 0);
        limpiaunidaddeproceso;
      End;
    End;
  End;
End;

Procedure TFControlReclamos.dblcdsitrecChange(Sender: TObject);
Begin
  If Trim(dblcdsitrec.Text) = '' Then
  Begin
    dblcdsitrec.Text := '';
    medessitrec.Text := '';
  End
  Else
  Begin
    If Length(Trim(dblcdsitrec.Text)) = 2 then
    Begin
      If DM1.cdsReclSit.Locate('RECLSITID', dblcdsitrec.Text, []) Then
        medessitrec.Text := DM1.cdsReclSit.FieldByName('RECLSITDES').AsString
      Else
      Begin
        MessageDlg('Código no Valido', mtInformation, [mbOk], 0);
        dblcdsitrec.Text := '';
        medessitrec.Text := '';
        Exit;
      End;
    End;
  End;
End;

Procedure TFControlReclamos.dblcdsitrecExit(Sender: TObject);
Begin
  If Length(Trim(dblcdsitrec.Text)) <> 2 then
  Begin
    dblcdsitrec.Text := '';
    medessitrec.Text := '';
    Exit;
  End;
End;


procedure TFControlReclamos.dblcdidedepExit(Sender: TObject);
begin
 If Length(Trim(dblcdidedep.Text)) <> 2 then limpiadepartamento;
end;

procedure TFControlReclamos.limpiadepartamento;
begin
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

procedure TFControlReclamos.limpiaunidaddeproceso;
begin
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

procedure TFControlReclamos.dblcduniproExit(Sender: TObject);
begin
  If Length(Trim(dblcdunipro.Text)) <> 3 then limpiaunidaddeproceso;
end;

procedure TFControlReclamos.limpiaunidaddepago;
begin
  dblcdunipag.Text := '';
  medesunipag.Text := '';
  // Limpiando unidad de gestion
  dblcdideuse.Text := '';
  medesuniges.Text := '';
  DM1.cdsUse.Close;
end;

procedure TFControlReclamos.dblcdunipagExit(Sender: TObject);
begin
  If Length(Trim(dblcdunipag.Text)) <> 2 then limpiaunidaddepago;
end;

procedure TFControlReclamos.limpiaunidaddegestion;
begin
  dblcdideuse.Text := '';
  medesuniges.Text := '';
end;

procedure TFControlReclamos.dblcdideuseChange(Sender: TObject);
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
        MessageDlg('Código no Valido', mtInformation, [mbOk], 0);
        limpiaunidaddegestion;
      End;
    End;
  End;
end;

procedure TFControlReclamos.dblcdideuseExit(Sender: TObject);
begin
  If Length(Trim(dblcdideuse.Text)) <> 2 then limpiaunidaddegestion;
end;

Procedure TFControlReclamos.btnprocesarClick(Sender: TObject);
Var xSql:String;
cant, monrec, mondev :Double;
Begin
  If rgSeleccion.ItemIndex = 0 Then
  Begin
    xSql := 'SELECT C.RECLSITID, C.RECLSITDES, F.DPTOID, F.DPTODES, G.UPROID, G.UPRONOM,'
    +' H.UPAGOID, H.UPAGONOM, E.USEID, E.USENOM, A.FREG, A.RECLID, D.ASOID, D.ASOCODMOD,'
    +' D.ASOAPENOMDNI, B.RECLFINI, B.RECLFFIN, SUM(NVL(B.RECLMONTO,0)) RECLMONTO, SUM(NVL(B.DEVMONTO,0)) DEVMONTO, COUNT(*) CANTIDAD'
    +' FROM APO302 A, APO303 B, APO126 C, APO201 D, APO101 E, APO158 F, APO102 G, APO103 H'
    +' WHERE A.FREG >= '+QuotedStr(dbdtpFechaI.Text)+' AND A.FREG <= '+QuotedStr(dbdtpFechaF.Text)
    +' AND A.RECLID = B.RECLID AND A.RECESTADO = C.RECLSITID AND B.ASOID = D.ASOID'
    +' AND D.UPROID = E.UPROID AND D.UPAGOID = E.UPAGOID AND D.USEID = E.USEID'
    +' AND E.DPTOID = F.DPTOID AND D.UPROID = G.UPROID AND D.UPROID = H.UPROID AND D.UPAGOID = H.UPAGOID';
    If dblcdsitrec.Text <> '' Then xSql := xSql + ' AND C.RECLSITID = '+QuotedStr(dblcdsitrec.Text);
    If dblcdidedep.Text <> '' Then xSql := xSql + ' AND F.DPTOID = '+QuotedStr(dblcdidedep.Text);
    If dblcdunipro.Text <> '' Then xSql := xSql + ' AND G.UPROID = '+QuotedStr(dblcdunipro.Text);
    If dblcdunipag.Text <> '' Then xSql := xSql + ' AND H.UPAGOID = '+QuotedStr(dblcdunipag.Text);
    If dblcdideuse.Text <> '' Then xSql := xSql + ' AND E.USEID = '+QuotedStr(dblcdideuse.Text);
    xSql := xSql + ' GROUP BY C.RECLSITID, C.RECLSITDES, F.DPTOID, F.DPTODES, G.UPROID, G.UPRONOM,'
    +' H.UPAGOID, H.UPAGONOM, E.USEID, E.USENOM, A.FREG, A.RECLID, D.ASOID, D.ASOCODMOD, D.ASOAPENOMDNI, B.RECLFINI, B.RECLFFIN';
    xSql := xSql + ' ORDER BY C.RECLSITID, F.DPTOID, G.UPROID, H.UPAGOID, E.USEID, D.ASOAPENOMDNI, A.FREG';
    DM1.cdsReporte.Close;
    DM1.cdsReporte.DataRequest(xSql);
    DM1.cdsReporte.Open;
    dbgprevio.DataSource := DM1.dsReporte;
    cant := 0;
    monrec := 0;
    mondev := 0;
    DM1.cdsReporte.First;
    While Not DM1.cdsReporte.Eof Do
    Begin
      cant := cant + DM1.cdsReporte.FieldByName('CANTIDAD').AsFloat;
      monrec := monrec + DM1.cdsReporte.FieldByName('RECLMONTO').AsFloat;
      mondev := mondev + DM1.cdsReporte.FieldByName('DEVMONTO').AsFloat;
      DM1.cdsReporte.Next;
    End;
    DM1.cdsReporte.First;
    TNumericField(DM1.cdsReporte.FieldByName('RECLMONTO')).DisplayFormat := '##,###.00';
    TNumericField(DM1.cdsReporte.FieldByName('DEVMONTO')).DisplayFormat  := '##,###.00';
    TNumericField(DM1.cdsReporte.FieldByName('CANTIDAD')).DisplayFormat  := '##,###';
    dbgprevio.Selected.Clear;
    dbgprevio.Selected.Add('RECLID'#9'10'#9'Identificación~del reclamo '#9#9);
    dbgprevio.Selected.Add('RECLSITDES'#9'20'#9'Descripción~del reclamo'#9#9);
    dbgprevio.Selected.Add('DPTODES'#9'25'#9'Descripción del~departamento'#9#9);
    dbgprevio.Selected.Add('UPRONOM'#9'30'#9'Descripción de la~Unidad de proceso'#9#9);
    dbgprevio.Selected.Add('UPAGONOM'#9'30'#9'Descripción de la~Unidad de pago'#9#9);
    dbgprevio.Selected.Add('USENOM'#9'35'#9'Descripción de la~Unidad de Gestión'#9#9);
    dbgprevio.Selected.Add('FREG'#9'10'#9'Fecha de~Registro'#9#9);
    dbgprevio.Selected.Add('ASOCODMOD'#9'10'#9'Código~modular'#9#9);
    dbgprevio.Selected.Add('ASOAPENOMDNI'#9'45'#9'Apellidos y nombre(s)~del asociado'#9#9);
    dbgprevio.Selected.Add('RECLFINI'#9'10'#9'Fecha~Ini.Recl.'#9#9);
    dbgprevio.Selected.Add('RECLFFIN'#9'10'#9'Fecha~Conc.Recl.'#9#9);
    dbgprevio.Selected.Add('CANTIDAD'#9'10'#9'Cantidad de aportes'#9#9);
    dbgprevio.Selected.Add('RECLMONTO'#9'10'#9'Monto~reclamado'#9#9);
    dbgprevio.Selected.Add('DEVMONTO'#9'10'#9'Monto~Devuelto'#9#9);
    dbgprevio.ApplySelected;
    dbgprevio.ColumnByName('RECLFFIN').FooterValue := 'Totales :';
    dbgprevio.ColumnByName('CANTIDAD').FooterValue := FormatFloat('##,###',cant);
    dbgprevio.ColumnByName('RECLMONTO').FooterValue := FormatFloat('##,###.00',monrec);
    dbgprevio.ColumnByName('DEVMONTO').FooterValue := FormatFloat('##,###.00',mondev);
  End;

  If rgSeleccion.ItemIndex = 1 Then
  Begin
    xSql := 'SELECT C.RECLSITID, C.RECLSITDES, F.DPTOID, F.DPTODES, G.UPROID, G.UPRONOM, H.UPAGOID, H.UPAGONOM, E.USEID, E.USENOM,'
    +' A.FREG, A.RECLID, D.ASOID, D.ASOCODMOD, D.ASOAPENOMDNI, B.APOMES||''/''||B.APOANO PERIODO, B.RECLFINI, B.RECLMONTO, B.DEVMONTO, B.RECLFFIN'
    +' FROM APO302 A, APO303 B, APO126 C, APO201 D, APO101 E, APO158 F, APO102 G, APO103 H'
    +' WHERE A.FREG >= '+QuotedStr(dbdtpFechaI.Text)+' AND A.FREG <= '+QuotedStr(dbdtpFechaF.Text)
    +' AND A.RECLID = B.RECLID AND A.RECESTADO = C.RECLSITID AND B.ASOID = D.ASOID'
    +' AND D.UPROID = E.UPROID AND D.UPAGOID = E.UPAGOID AND D.USEID = E.USEID AND E.DPTOID = F.DPTOID AND D.UPROID = G.UPROID'
    +' AND D.UPROID = H.UPROID AND D.UPAGOID = H.UPAGOID';
    If dblcdsitrec.Text <> '' Then xSql := xSql + ' AND C.RECLSITID = '+QuotedStr(dblcdsitrec.Text);
    If dblcdidedep.Text <> '' Then xSql := xSql + ' AND F.DPTOID = '+QuotedStr(dblcdidedep.Text);
    If dblcdunipro.Text <> '' Then xSql := xSql + ' AND G.UPROID = '+QuotedStr(dblcdunipro.Text);
    If dblcdunipag.Text <> '' Then xSql := xSql + ' AND H.UPAGOID = '+QuotedStr(dblcdunipag.Text);
    If dblcdideuse.Text <> '' Then xSql := xSql + ' AND E.USEID = '+QuotedStr(dblcdideuse.Text);
    xSql := xSql + ' ORDER BY C.RECLSITID, F.DPTOID, G.UPROID, H.UPAGOID, E.USEID, D.ASOAPENOMDNI, A.FREG';
    DM1.cdsReporte.Close;
    DM1.cdsReporte.DataRequest(xSql);
    DM1.cdsReporte.Open;
    dbgprevio.DataSource := DM1.dsReporte;
    monrec := 0;
    mondev := 0;
    DM1.cdsReporte.First;
    While Not DM1.cdsReporte.Eof Do
    Begin
      monrec := monrec + DM1.cdsReporte.FieldByName('RECLMONTO').AsFloat;
      mondev := mondev + DM1.cdsReporte.FieldByName('DEVMONTO').AsFloat;
      DM1.cdsReporte.Next;
    End;
    DM1.cdsReporte.First;
    TNumericField(DM1.cdsReporte.FieldByName('RECLMONTO')).DisplayFormat := '##,###.00';
    TNumericField(DM1.cdsReporte.FieldByName('DEVMONTO')).DisplayFormat  := '##,###.00';
    dbgprevio.Selected.Clear;
    dbgprevio.Selected.Add('RECLID'#9'10'#9'Identificación~del reclamo '#9#9);
    dbgprevio.Selected.Add('RECLSITDES'#9'20'#9'Descripción~del reclamo'#9#9);
    dbgprevio.Selected.Add('DPTODES'#9'25'#9'Descripción del~departamento'#9#9);
    dbgprevio.Selected.Add('UPRONOM'#9'30'#9'Descripción de la~Unidad de proceso'#9#9);
    dbgprevio.Selected.Add('UPAGONOM'#9'30'#9'Descripción de la~Unidad de pago'#9#9);
    dbgprevio.Selected.Add('USENOM'#9'35'#9'Descripción de la~Unidad de Gestión'#9#9);
    dbgprevio.Selected.Add('FREG'#9'10'#9'Fecha de~Registro'#9#9);
    dbgprevio.Selected.Add('ASOCODMOD'#9'10'#9'Código~modular'#9#9);
    dbgprevio.Selected.Add('ASOAPENOMDNI'#9'45'#9'Apellidos y nombre(s)~del asociado'#9#9);
    dbgprevio.Selected.Add('RECLFINI'#9'10'#9'Fecha~Ini.Recl.'#9#9);
    dbgprevio.Selected.Add('RECLFFIN'#9'10'#9'Fecha~Conc.Recl.'#9#9);
    dbgprevio.Selected.Add('RECLMONTO'#9'10'#9'Monto~reclamado'#9#9);
    dbgprevio.Selected.Add('DEVMONTO'#9'10'#9'Monto~Devuelto'#9#9);
    dbgprevio.ApplySelected;
    dbgprevio.ColumnByName('RECLFFIN').FooterValue := 'Totales :';
    dbgprevio.ColumnByName('RECLMONTO').FooterValue := FormatFloat('##,###.00',monrec);
    dbgprevio.ColumnByName('DEVMONTO').FooterValue := FormatFloat('##,###.00',mondev);
  End;

  If rgSeleccion.ItemIndex = 2 Then
  Begin
    xSql := 'SELECT E.DPTOID, E.DPTODES, COUNT(*) CANRECL, SUM(NVL(B.RECLMONTO,0)) RECLMONTO FROM APO302 A, APO303 B, APO201 C, APO101 D, APO158 E'
    +' WHERE A.FREG >= '+QuotedStr(dbdtpFechaI.Text)+' AND A.FREG <= '+QuotedStr(dbdtpFechaF.Text)
    +' AND A.RECLID = B.RECLID AND B.ASOID = C.ASOID AND C.UPROID = D.UPROID AND C.UPAGOID = D.UPAGOID AND C.USEID = D.USEID AND D.DPTOID = E.DPTOID'
    +' GROUP BY E.DPTOID, E.DPTODES ORDER BY E.DPTOID';
    DM1.cdsReporte.Close;
    DM1.cdsReporte.DataRequest(xSql);
    DM1.cdsReporte.Open;
    dbgprevio.DataSource := DM1.dsReporte;
    cant := 0;
    monrec := 0;
    DM1.cdsReporte.First;
    While Not DM1.cdsReporte.Eof Do
    Begin
      cant := cant + DM1.cdsReporte.FieldByName('CANRECL').AsFloat;
      monrec := monrec + DM1.cdsReporte.FieldByName('RECLMONTO').AsFloat;
      DM1.cdsReporte.Next;
    End;
    DM1.cdsReporte.First;
    TNumericField(DM1.cdsReporte.FieldByName('CANRECL')).DisplayFormat := '##,###';
    TNumericField(DM1.cdsReporte.FieldByName('RECLMONTO')).DisplayFormat := '##,###.00';
    dbgprevio.Selected.Clear;
    dbgprevio.Selected.Add('DPTOID'#9'2'#9'Identificación~del departamento'#9#9);
    dbgprevio.Selected.Add('DPTODES'#9'30'#9'Descripción del~departamento'#9#9);
    dbgprevio.Selected.Add('CANRECL'#9'10'#9'Cantidad~de reclamos'#9#9);
    dbgprevio.Selected.Add('RECLMONTO'#9'12'#9'Monto~reclamado'#9#9);
    dbgprevio.ApplySelected;
    dbgprevio.ColumnByName('DPTODES').FooterValue := 'Totales :';
    dbgprevio.ColumnByName('CANRECL').FooterValue := FormatFloat('##,###',cant);
    dbgprevio.ColumnByName('RECLMONTO').FooterValue := FormatFloat('##,###.00',monrec);
  End;

End;

procedure TFControlReclamos.btnimprimirClick(Sender: TObject);
Var xWhere:String;
begin

  If rgSeleccion.ItemIndex = 0 Then
  Begin
    ppLabel130.Caption :=  'RECLAMOS DE APORTES EFECTUADOS DEL '+dbdtpFechaI.Text+' AL '+dbdtpFechaF.Text;
    xWhere := 'USERID = '+ QuotedStr(DM1.wUsuario) ;
    ppLabel117.Caption := 'IMPRESO POR : '+ UpperCase(DM1.DisplayDescrip('prvTGE', 'USERTABLE', 'USERNOM', xWhere , 'USERNOM'));
    pprep01.Print;
  End;

  If rgSeleccion.ItemIndex = 1 Then
  Begin
    ppLabel86.Caption := 'RECLAMOS DE APORTES EFECTUADOS DEL '+dbdtpFechaI.Text+' AL '+dbdtpFechaF.Text;
    xWhere := 'USERID = '+ QuotedStr(DM1.wUsuario) ;
    ppLabel100.Caption := 'IMPRESO POR : '+ UpperCase(DM1.DisplayDescrip('prvTGE', 'USERTABLE', 'USERNOM', xWhere , 'USERNOM'));
    pprep02.Print;
  End;


  If rgSeleccion.ItemIndex = 2 Then
  Begin
    xWhere := 'USERID = '+ QuotedStr(DM1.wUsuario) ;
    pplimpresopor.Caption := 'IMPRESO POR : '+ UpperCase(DM1.DisplayDescrip('prvTGE', 'USERTABLE', 'USERNOM', xWhere , 'USERNOM'));
    ppltitulo02.Caption := 'DEL '+dbdtpFechaI.Text+' AL '+dbdtpFechaF.Text;
    pprep03.Print;
  End;
end;

procedure TFControlReclamos.btncerrarClick(Sender: TObject);
begin
  FControlReclamos.Close;
end;

end.
