unit APO306;

// Inicio Uso Estándares: 01/08/2011
// Unidad               : APO306
// Formulario           : FIngresoLote
// Fecha de Creación    : 15/12/2003
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Ingreso en Lote
// Actualizaciones      :
// HPC_201502_APO       : Cambiar el formato de Fecha

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcButton, fcImgBtn, fcShapeBtn, wwdbdatetimepicker, StdCtrls, ComCtrls,
  wwriched, Mask, wwdbedit, wwdblook, ExtCtrls, Wwdbspin, Buttons,
  Wwdbigrd, Grids, Wwdbgrid, Wwdotdot, Wwdbdlg,wwClient, db, Wwkeycb,
  ppEndUsr, ppDB, ppDBPipe, ppBands, ppPrnabl, ppClass, ppCtrls, ppCache,
  ppComm, ppRelatv, ppProd, ppReport, ppVar;

type
  TFIngresoLote = class(TForm)
    pnlCabecera: TPanel;
    pnlDatosAportes: TPanel;
    pnlUse: TPanel;
    dbeNumOperacion: TwwDBEdit;
    dbdtpFecOperacion: TwwDBDateTimePicker;
    dbeMonto: TwwDBEdit;
    dblcMoneda: TwwDBLookupCombo;
    edtMoneda: TEdit;
    bbtnSigue: TfcShapeBtn;
    dblcCtaCte: TwwDBLookupCombo;
    dbeImpAporte: TwwDBEdit;
    dbgAportes: TwwDBGrid;
    bbtnIngresaAporte: TwwIButton;
    pnlAportes: TPanel;
    StaticText2: TStaticText;
    Panel5: TPanel;
    Label1: TLabel;
    Label54: TLabel;
    bbtnAceptar: TfcShapeBtn;
    bbtnCancel: TfcShapeBtn;
    dbeCodigo: TwwDBEdit;
    dbeApeNom: TwwDBEdit;
    dbeTotal: TwwDBEdit;
    dbeAporte: TwwDBEdit;
    dbeCuota: TwwDBEdit;
    dblcdCodigoModular: TwwDBLookupComboDlg;
    bbtnAtras: TfcShapeBtn;
    pnlHeader: TPanel;
    dblcFormaPago: TwwDBLookupCombo;
    edtFormaPago: TEdit;
    edtBanco: TEdit;
    dblcBanco: TwwDBLookupCombo;
    pnlBusca: TPanel;
    lbBusca: TLabel;
    edtBusca: TwwIncrementalSearch;
    pnlFooter: TPanel;
    Z2bbtnOrdenCodMod: TfcShapeBtn;
    Z2bbtnOrdenAlfab: TfcShapeBtn;
    Z2bbtnAceptar: TfcShapeBtn;
    Z2bbtnCancel: TfcShapeBtn;
    Z2bbtnSalir: TfcShapeBtn;
    GroupBox1: TGroupBox;
    dbeLetra: TwwDBEdit;
    Z2bbtnFiltro: TfcShapeBtn;
    Z2bbtnElimina: TfcShapeBtn;
    Z2bbtnInserta: TfcShapeBtn;
    bbtnClosePnl: TButton;
    bbtnAutdisk: TfcShapeBtn;
    speAno: TwwDBEdit;
    speMes: TwwDBEdit;
    Panel1: TPanel;
    cbMarca: TCheckBox;
    dblcdUse: TwwDBLookupComboDlg;
    edtUse: TEdit;
    bbtnInconsistencia: TfcShapeBtn;
    pnlFiltros: TPanel;
    bbtnBuscaInc: TfcShapeBtn;
    pnlBuscaInc: TPanel;
    Panel4: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    spdCCodModTod: TSpeedButton;
    Button1: TButton;
    Panel2: TPanel;
    spdSinIncons: TSpeedButton;
    spdInconsist: TSpeedButton;
    spdTotalReg: TSpeedButton;
    Button2: TButton;
    pnlEstado: TPanel;
    pbEstado: TProgressBar;
    lbEstado: TLabel;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    spdAporteMayT: TSpeedButton;
    spdAporteMayM: TSpeedButton;
    spdAporteMenT: TSpeedButton;
    spdAporteMenM: TSpeedButton;
    bbtnImprime: TfcShapeBtn;
    ppRepInc: TppReport;
    ppDBInc: TppDBPipeline;
    ppDesInc: TppDesigner;
    ppHeaderBand1: TppHeaderBand;
    pplbTitulo: TppLabel;
    ppLabel1: TppLabel;
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
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText10: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel3: TppLabel;
    ppLabel2: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    spdCamCodMod: TSpeedButton;
    spdCamCodPag: TSpeedButton;
    spdCamUse: TSpeedButton;
    spdApoMay: TSpeedButton;
    spdAsoNue: TSpeedButton;
    spdApoMen: TSpeedButton;
    lblCodMod: TLabel;
    lblMonApo: TLabel;
    lblMonCuo: TLabel;
    lblForPag: TLabel;
    lblban: TLabel;
    lblCtaCte: TLabel;
    lblNOpe: TLabel;
    lblFecOpe: TLabel;
    lblMon: TLabel;
    lblMonto: TLabel;
    lblUse: TLabel;
    lblAno: TLabel;
    lblMes: TLabel;
    lblMonAporte: TLabel;
    bbtnIngLinea: TfcShapeBtn;
    spdCModCPagUseTod1: TSpeedButton;
    spdCModCPagUseMar2: TSpeedButton;
    Panel3: TPanel;
    lblTitulo: TLabel;
    spdCModCPagUseTod: TBitBtn;
    spdCModCPagUseMar: TBitBtn;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure Z2bbtnCancelClick(Sender: TObject);
    procedure bbtnIngresaAporteClick(Sender: TObject);
    procedure bbtnCancelClick(Sender: TObject);
    procedure bbtnSigueClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dblcdUseExit(Sender: TObject);
    procedure dblcFormaPagoExit(Sender: TObject);
    procedure dblcBancoExit(Sender: TObject);
    procedure dblcMonedaExit(Sender: TObject);
    procedure bbtnAceptarClick(Sender: TObject);
    procedure dblcCtaCteExit(Sender: TObject);
    procedure dbeNumOperacionExit(Sender: TObject);
    procedure dbdtpFecOperacionExit(Sender: TObject);
    procedure Z2bbtnAceptarClick(Sender: TObject);
    procedure dblcdCodigoModularExit(Sender: TObject);
    procedure dblcdCodigoDropDown(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbeMontoExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dblcTransaccionExit(Sender: TObject);
    procedure Z2bbtnSalirClick(Sender: TObject);
    procedure dbeTotalExit(Sender: TObject);
    procedure speMes1Exit(Sender: TObject);
    procedure dblcNotInList(Sender: TObject; LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
    procedure bbtnAtrasClick(Sender: TObject);
    procedure dbgAportesKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbgAportesDblClick(Sender: TObject);
    procedure Z2bbtnFiltroClick(Sender: TObject);
    procedure Z2bbtnOrdenCodModClick(Sender: TObject);
    procedure Z2bbtnOrdenAlfabClick(Sender: TObject);
    procedure dbgAportesTitleButtonClick(Sender: TObject; AFieldName: String);
    procedure isBuscaKeyPress(Sender: TObject; var Key: Char);
    procedure dbeAporteExit(Sender: TObject);
    procedure dbeCuotaExit(Sender: TObject);
    procedure dbgAportesColExit(Sender: TObject);
    procedure Z2bbtnEliminaClick(Sender: TObject);
    procedure bbtnClosePnlClick(Sender: TObject);
    procedure dbgAportesCalcCellColors(Sender: TObject; Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure Z2bbtnInsertaClick(Sender: TObject);
    procedure cbMarcaClick(Sender: TObject);
    procedure bbtnAutdiskClick(Sender: TObject);
    procedure bbtnInconsistenciaClick(Sender: TObject);
    procedure spdTotalRegClick(Sender: TObject);
    procedure spdInconsistClick(Sender: TObject);
    procedure spdSinInconsClick(Sender: TObject);
    procedure bbtnBuscaIncClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure spdCCodModTodClick(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure spdAporteMayTClick(Sender: TObject);
    procedure spdAporteMayMClick(Sender: TObject);
    procedure spdAporteMenTClick(Sender: TObject);
    procedure spdAporteMenMClick(Sender: TObject);
    procedure bbtnImprimeClick(Sender: TObject);
    procedure spdCamCodModClick(Sender: TObject);
    procedure spdCamCodPagClick(Sender: TObject);
    procedure spdCamUseClick(Sender: TObject);
    procedure spdApoMayClick(Sender: TObject);
    procedure spdApoMenClick(Sender: TObject);
    procedure dbgAportesEnter(Sender: TObject);
    procedure dbeImpAporteExit(Sender: TObject);
    procedure bbtnIngLineaClick(Sender: TObject);
    procedure EventoModPagUse(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
    procedure LimpiaForm;
    procedure LimpiaVent;
    procedure ConfiguraGridAportes;
    procedure ReadOnlyFalseGridAportes;
    procedure OcultaPaneles;
    procedure FiltraAsoc;
  public
    { Public declarations }
    wModo1, xSQL1, xSQL2, xSQL, wSQL, xSQL4, xSQL5, xSQL6, xASOID : String;
    procedure ActualizaFooter;
  end;

var
  FIngresoLote: TFIngresoLote;
  sSQL, sFecha, sWhere, xAno, xMes, xBanco, xTrans, xASOAPENOM, xBorra : string;
  xSaldoAnt, xSaldoTrimAnt : REAL;

implementation

uses APODM, APO001, APO302, APO213, MsgDlgs;

{$R *.DFM}

procedure TFIngresoLote.Z2bbtnCancelClick(Sender: TObject);
var
  xMarca: TBookMark;
  xRegCob:String;
begin
  Ocultapaneles;
  if (DM1.cdsAutdisk.ChangeCount > 0) or (DM1.cdsAutdisk.Modified) Then
  begin
    DM1.cdsAutdisk.DisableControls;
    xMarca:=DM1.cdsDLabo.GetBookmark;
    xRegCob:='';
    DM1.cdsAutdisk.First;
    While Not DM1.cdsAutdisk.EOF DO
    Begin
      If DM1.cdsAutdisk.FieldByName('FREGCOB').AsString='S' Then
      Begin
        DM1.cdsAutdisk.Edit;
        DM1.cdsAutdisk.FieldByName('FREGCOB').Clear;
        DM1.cdsAutdisk.Post;
        xRegCob:='S';
      End;
      DM1.cdsAutdisk.Next;
    End;
    DM1.cdsAutdisk.GotoBookmark(xMarca);
    If xRegCob='S' Then
    Begin
      DM1.ControlTran;
    End;
    DM1.cdsAutdisk.EnableControls;
  End;
  DM1.cdsCobxUse.CancelUpdates;
  DM1.cdsAutdisk.CancelUpdates;
end;

procedure TFIngresoLote.bbtnIngresaAporteClick(Sender: TObject);
begin
  Ocultapaneles;
  if Length(dblcdUse.Text)=0 then
  begin
    ShowMessage('Debe Seleccionar la USE');
    pnlUse.Enabled:=True;
    dblcdUse.enabled:=True;
    dblcdUse.SetFocus;
    exit;
  end;

  if (DM1.cdsAutdisk.Modified) or (DM1.cdsAutdisk.ChangeCount > 0) Then
  begin
    if DM1.cdsAutdisk.State <> dsBrowse then
      cdsPost(DM1.cdsAutdisk);
    DM1.ControlTran;
  end;

  ReadOnlyFalseGridAportes;
  if DM1.cdsAsociados.Active = False then
    FiltraAsoc;
  if DM1.cdsAsociados.RecordCount > 0 Then
  begin
    wModo1:='A';
    Z2bbtnCancel.Enabled:=False;
    Z2bbtnAceptar.Enabled:=False;
    LimpiaVent;
    DM1.cdsAutdisk.Insert;
    DM1.cdsAutdisk.FieldByName('TRANSAPO').AsFloat:=DM1.cdsCobxUse.FieldByName('RCOBAPOVAL').AsFloat;
    pnlAportes.Visible:=True;
    dblcdCodigoModular.Enabled:=True;
    dblcdCodigoModular.SetFocus;
    //dblcdCodigoModular.DropDown;
  end
  else
  begin
    ShowMessage('Todos los Asociados ya se encuentran en la Lista');
  end;
end;

procedure TFIngresoLote.bbtnCancelClick(Sender: TObject);
begin
  DM1.cdsAutdisk.Cancel;
  pnlAportes.Visible:=False;
  Z2bbtnCancel.Enabled:=True;
  Z2bbtnAceptar.Enabled:=True;
  DM1.cdsAutdisk.Edit;
  DM1.cdsAutdisk.FieldByName('FREGCOB').AsString:='';
  DM1.cdsAutdisk.Post;
  DM1.cdsAsociados.Close;
end;

procedure TFIngresoLote.bbtnSigueClick(Sender: TObject);
var
  xSql : string;
begin
  //*12[#][.*2[#]]
  if Length(dblcdUse.Text)=0 then
  begin
    ShowMessage('Debe Seleccionar la USE');
    pnlUse.Enabled:=True;
    dblcdUse.enabled:=True;
    dblcdUse.SetFocus;
    exit;
  end;
  if Length(speAno.Text)=0 then
  begin
    ShowMessage('Debe Registrar el Año');
    speAno.SetFocus;
    exit;
  end;
  if Length(speMes.Text)=0 then
  begin
    ShowMessage('Debe Registrar el Mes');
    speMes.SetFocus;
    exit;
  end;
  TNumericField(DM1.cdsCobxUse.FieldByName('RCOBAPOVAL')).DisplayFormat:='########0.00';
  TNumericField(DM1.cdsCobxUse.FieldByName('RCOBAPOVAL')).EditFormat:='########0.00';

  if (dbeImpAporte.Text='') or (strtofloat(dbeImpAporte.Text)<=0) Then
  begin
    ShowMessage('Aporte Incorrecto');
    dbeImpAporte.SetFocus;
    exit;
  end;

  Screen.Cursor:=crHourGlass;
  xSQL:= 'SELECT COUNT(*) AS X '+
         'FROM COB304 '+
         'WHERE RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
         'AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
         'AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);
  DM1.cdsQry2.Close;
  DM1.cdsQry2.DataRequest(xSQL);
  DM1.cdsQry2.Open;

  if DM1.cdsQry2.FieldByName('X').AsInteger > 0 Then
  begin
    xSql:='SELECT * '+
          'FROM COB304 A '+
          'WHERE RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
          'AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
          'AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);
    DM1.FiltraCDS(DM1.cdsAutdisk,xSql );
    ActualizaFooter;
    ShowMessage('Los Movimientos ya se encuentran Insertados');
    dbgAportes.Enabled:=True;
    dblcdUse.Enabled:=False;
    bbtnIngresaAporte.Enabled:=True;
    bbtnAutdisk.Enabled:=True;
    Screen.Cursor:=crDefault;
    exit;
  end;

  bbtnSigue.Enabled:=False;
  bbtnAutdisk.Enabled:=False;

  xSQL:='SELECT COUNT(*) AS X '+
        'FROM APO201 '+
        'WHERE USEID='+QuotedStr(dblcdUse.Text)+' '+
        'AND UPROID='+QuotedStr(DM1.cdsCobxUse.FieldByName('UPROID').AsString)+' '+
        'AND UPAGOID='+QuotedStr(DM1.cdsCobxUse.FieldByName('UPAGOID').AsString);

  dm1.cdsReporte1.Close;
  dm1.cdsReporte1.DataRequest(xSQL);
  dm1.cdsReporte1.Open;

  if not Question(Caption,'Se Insertará '+IntToStr(dm1.cdsReporte1.FieldByName('X').AsInteger)+
                      ' Movimientos para Todos los Asociados de la USE seleccionada.'+#13+#13+
                      '¿Desea Continuar?') then
  begin
    Screen.Cursor:=crDefault;
    dbgAportes.Enabled:=True;
    dblcdUse.enabled:=True;
    bbtnIngresaAporte.Enabled:=True;
    bbtnAutdisk.Enabled:=True;
    bbtnSigue.Enabled:=True;
    bbtnAtras.SetFocus;
    exit;
  end;

  dbeImpAporte.Text:=Trim(dbeImpAporte.Text);
  xSQL:='INSERT INTO COB304 A '+
        '(A.TRANSANO, A.TRANSMES, A.ASOID, A.ASOCODMOD, A.TRANSAPO, A.USEID, A.ASOAPENOM, '+
        'A.UPROID, A.UPAGOID, A.DPTOID, A.TMONID, A.TRANSMTO, A.TRANSCUO, A.BANCOID, '+
        'A.CCBCOID, A.TRANSNOPE, A.TRANSFOPE, A.FORPAGOID, A.APOSEC, '+
        'A.RCOBID, A.DETRCOBID, A.USERCOBID, A.USUARIO, A.FREG, A.HREG) '+
        'SELECT '+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBANO').AsString)+
        ', '+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBMES').AsString)+', B.ASOID, '+
        'B.ASOCODMOD, '+dbeImpAporte.Text+', TRIM(B.USEID), B.ASOAPENOM, '+
        'TRIM(B.UPROID), TRIM(B.UPAGOID), TRIM(B.DPTOID), '+QuotedStr('N')+
        ', '+dbeImpAporte.Text+', 0, '+QuotedStr(dblcBanco.Text)+
        ', '+QuotedStr(dblcCtaCte.Text)+
        ', '+QuotedStr(dbeNumOperacion.Text)+', '+QuotedStr(dbdtpFecOperacion.Text)+
        ', '+QuotedStr(dblcFormaPago.Text)+', '+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBANO').AsString+DM1.cdsCobxUse.FieldByName('RCOBMES').AsString)+
        ', '+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+', '+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+
        ', '+QuotedStr(DM1.cdsCobxUse.FieldByName('USERCOBID').AsString)+
        // Inicio HPC_201502_APO - Cambiar el formato de Fecha
        ', '+QuotedStr(DM1.wUsuario)+', TO_DATE(SYSDATE, '+QuotedStr('DD/MM/YYYY')+'), SYSDATE '+
        // Fin    HPC_201502_APO - Cambiar el formato de Fecha
        'FROM APO201 B '+
        'WHERE B.USEID='+QuotedStr(DM1.cdsUse.FieldByName('USEID').AsString)+' '+
        'AND B.UPROID='+QuotedStr(DM1.cdsUse.FieldByName('UPROID').AsString)+' '+
        'AND B.UPAGOID='+QuotedStr(DM1.cdsUse.FieldByName('UPAGOID').AsString);
  DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

  xSql:= 'SELECT * '+
         'FROM COB304 A '+
         'WHERE RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
         'AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
         'AND USERCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('USERCOBID').AsString);

  DM1.FiltraCDS(DM1.cdsAutdisk,xSQL );

  ConfiguraGridAportes;
  ActualizaFooter;

  DM1.cdsCobxUse.Edit;
  DM1.cdsCobxUse.FieldByName('RCOBID').AsString:=DM1.cdsCobxUse.FieldByname('RCOBID').AsString;
  DM1.cdsCobxUse.FieldByName('RCOBNOPE').AsString:= dbeNumOperacion.Text;
  DM1.cdsCobxUse.FieldByName('RCOBFOPE').AsDateTime:= dbdtpFecOperacion.Date;
  DM1.cdsCobxUse.FieldByName('USEID').AsString:= dblcdUse.text;
  DM1.cdsCobxUse.FieldByName('UPAGOID').AsString:=DM1.cdsCobxUse.FieldByName('UPAGOID').AsString;
  DM1.cdsCobxUse.FieldByName('UPROID').AsString:=DM1.cdsUse.FieldByName('UPROID').AsString;
  DM1.cdsCobxUse.FieldByName('TMONID').AsString:= DM1.cdsCobxUse.FieldByName('TMONID').AsString;
  DM1.cdsCobxUse.FieldByName('RCOBUSETOT').AsFloat:=StrToFloat(FormatFloat('########0.00',DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSMTO)','')));
  DM1.cdsCobxUse.FieldByName('RCOBUSEAPO').AsFloat:=StrToFloat(FormatFloat('########0.00',DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSAPO)','')));
  DM1.cdsCobxUse.FieldByName('RCOBUSECUO').AsFloat:=StrToFloat(FormatFloat('########0.00',DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSCUO)','')));
  DM1.cdsCobxUse.FieldByName('RCOBANO').AsString:=  DM1.cdsCobxUse.FieldByName('RCOBANO').AsString;
  DM1.cdsCobxUse.FieldByName('RCOBMES').AsString:=  DM1.cdsCobxUse.FieldByName('RCOBMES').AsString;
  DM1.cdsCobxUse.FieldByName('RCOBID').AsString:=  DM1.cdsCobxUse.FieldByName('RCOBID').AsString;
  DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString:=  DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString;
  DM1.cdsCobxUse.FieldByName('RCOBAPOVAL').AsFloat:= strtofloat(dbeImpAporte.Text);
  DM1.cdsCobxUse.FieldByName('USUARIO').AsString:=  DM1.wUsuario;
  DM1.cdsCobxUse.FieldByName('FREG').AsDateTime:=   date;
  DM1.cdsCobxUse.FieldByName('HREG').AsDateTime:=   date+time;
  cdspost(DM1.cdsCobxUse);
  DM1.cdsCobxUse.Post;
  DM1.ControlTran;
  pnlUse.Enabled:=False;
  dbgAportes.ColumnByName('TRANSCUO').FooterValue:=FloatToStrF(DM1.OperClientDataSet(dm1.cdsAutdisk , 'SUM(TRANSCUO)',''),ffNumber, 15, 2);
  dbgAportes.ColumnByName('TRANSAPO').FooterValue:=FloatToStrF(DM1.OperClientDataSet(dm1.cdsAutdisk , 'SUM(TRANSAPO)',''),ffNumber, 15, 2);
  dbgAportes.ColumnByName('TRANSMTO').FooterValue:=FloatToStrF(DM1.OperClientDataSet(dm1.cdsAutdisk , 'SUM(TRANSMTO)',''),ffNumber, 15, 2);

  ShowMessage('Actualización Realizada');

  TNumericField(DM1.cdsCobxUse.FieldByName('RCOBAPOVAL')).DisplayFormat:='###,###,##0.00';

  Screen.Cursor:=crDefault;
  dbgAportes.Enabled:=True;
  //dblcdUse.Enabled:=False;
  dblcdUse.enabled:=True;
  bbtnIngresaAporte.Enabled:=True;
  bbtnAutdisk.Enabled:=True;
end;

procedure TFIngresoLote.FormActivate(Sender: TObject);
var
  xSql : string;
begin
  dbeLetra.Text:='';
  Ocultapaneles;
  DM1.cdsTransferencia.Close;
  xSql:= 'SELECT * FROM APO101 WHERE UPAGOID='+QuotedStr(DM1.cdsCobxUse.Fieldbyname('UPAGOID').AsString);
  DM1.Filtracds(DM1.cdsUse,xSql);

  {sWhere:= 'FPAGOID='+DM1.cdsCobxUse.FieldByName('FPAGOID').AsString;
  dm1.DisplayDescrip('prvSQL','TGE112','FPAGOBCO',sWhere,'FPAGOBCO');
  if dm1.cdsQry.FieldbyName('FPAGOBCO').AsString <> 'S' then
  begin
    dblcBanco.Enabled:=False;
  end
  else
  begin
    dblcBanco.Enabled:=True;
  end;}

  DM1.wTDatos:='T';  // Para Mostrar Todos los Registros
  if DM1.wModo='A' then
  begin
    LimpiaForm;
    DM1.cdsCobxUse.FieldByName('USERCOBID').AsString:=DM1.StrZero(IntToStr(DM1.cdsCobxUse.RecordCount+1),7);
    DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString:=DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString;
    DM1.cdsCobxUse.FieldByName('RCOBID').AsString:=DM1.cdsCobxUse.FieldByName('RCOBID').AsString;
    DM1.cdsCobxUse.FieldByName('RCOBANO').AsString:=DM1.cdsCobxUse.FieldByName('RCOBANO').AsString;
    DM1.cdsCobxUse.FieldByName('RCOBMES').AsString:=DM1.cdsCobxUse.FieldByName('RCOBMES').AsString;
    pnlUse.Enabled:=True;
    dblcdUse.Enabled:=True;
    dblcdUse.SetFocus;
    dblcFormaPagoExit(sender);
    dblcBancoExit(sender);
    dblcMonedaExit(sender);
  end
  else
  if DM1.wModo='M' then
  begin
    DM1.cdsCobxUse.Edit;
    speAno.Text:=DM1.cdsCobxUse.FieldByName('RCOBANO').AsString;
    speMes.Text:=DM1.cdsCobxUse.FieldByName('RCOBMES').AsString;

    dblcFormaPagoExit(sender);
    dblcBancoExit(sender);
    dblcMonedaExit(sender);

    if DM1.cdsAutdisk.RecordCount > 0 Then
    begin
      dbgAportes.Enabled:=True;
      bbtnIngresaAporte.Enabled:=True;
      bbtnSigue.Enabled:=False;
      bbtnAutdisk.Enabled:=False;
      pnlUse.Enabled:=False;
      ConfiguraGridAportes;
      ActualizaFooter;
      dblcdUse.Text:=DM1.cdsCobxUse.FieldByName('USEID').AsString;
      sWhere:= 'USEID = '+ QuotedStr(DM1.cdsCobxUse.FieldByName('USEID').AsString) ;
      edtUse.text:=dm1.DisplayDescrip('prvTGE','APO101','USEID,USENOM',sWhere,'USENOM');
      exit;
    end;
    ConfiguraGridAportes;
    ActualizaFooter;
    //bbtnSigue.SetFocus;
  end;

  xBorra:='';

  TNumericField(DM1.cdsCobxUse.FieldByName('RCOBAPOVAL')).DisplayFormat:='###,###,##0.00';
  TNumericField(DM1.cdsCobxUse.FieldByName('RCOBAPOVAL')).EditFormat:='########0.00';

  TNumericField(DM1.cdsCobxUse.FieldByName('RCOBUSETOT')).DisplayFormat:='###,###,##0.00';
  TNumericField(DM1.cdsCobxUse.FieldByName('RCOBUSETOT')).EditFormat:='########0.00';

  bbtnIngresaAporte.Enabled:=False;
  //ConfiguraGridAportes;
  //ActualizaFooter;
  pnlUse.Enabled:=True;
  DM1.cdsQry2.Close;
  bbtnsigue.Enabled:=True;
  dblcdUse.Text:=DM1.cdsCobxUse.FieldByName('USEID').AsString;
  sWhere:= 'USEID = '+ QuotedStr(DM1.cdsCobxUse.FieldByName('USEID').AsString) ;
  edtUse.text:=dm1.DisplayDescrip('prvTGE','APO101','USEID,USENOM',sWhere,'USENOM');
end;

procedure TFIngresoLote.dblcdUseExit(Sender: TObject);
begin
  sWhere:= 'USEID='+ quotedstr(dblcdUse.text) ;
  edtUse.text:=dm1.DisplayDescrip('prvTGE','APO101','USENOM',sWhere,'USENOM');
  if bbtnCancel.Focused then exit;
  if (edtUse.text='') and (dblcdUse.text<>'') then
  begin
     dblcdUse.SetFocus;
     Raise Exception.create('Error, Código USE no válido');
  end;
  FiltraAsoc;
  //DM1.cdsCobxUse.Edit;
  //DM1.cdsCobxUse.FieldByName('USEID').AsString:=DM1.cdsUse.FieldByName('USEID').AsString;
end;

procedure TFIngresoLote.dblcFormaPagoExit(Sender: TObject);
begin
  sWhere:= 'FORPAGOABR = '+ quotedstr(DM1.cdsCobxUse.FieldByName('FORPAGOID').AsString)+' AND FORPAGFAPO LIKE'+QuotedStr('%S%');
  edtFormaPago.text:=dm1.DisplayDescrip('prvTGE','COB101','FORPAGODES',sWhere,'FORPAGODES');
  dblcFormaPago.Text:=DM1.cdsCobxUse.FieldByName('FORPAGOID').AsString;

  if z2bbtnCancel.Focused then exit;

  if (edtFormaPago.text='') and (dblcFormaPago.text<>'') then
  begin
     Raise Exception.create('Error, Código de Forma de Pago no válido');
  end;
  if  dblcFormaPago.text='' then
  begin
     Raise Exception.create('Ingrese la Forma de Pago del Aporte');
  end;
end;

procedure TFIngresoLote.dblcBancoExit(Sender: TObject);
begin
  sWhere:= 'FPAGOID='+DM1.cdsCobxUse.FieldByName('FPAGOID').AsString;
  dm1.DisplayDescrip('prvSQL','TGE112','FPAGOBCO',sWhere,'FPAGOBCO');
  if dm1.cdsQry.FieldbyName('FPAGOBCO').AsString <> 'S' then
    Exit;

  sWhere:= 'BANCOID = '+ quotedstr(dblcBanco.text) ;
  edtBanco.text:=dm1.DisplayDescrip('prvTGE','TGE105','BANCONOM',sWhere,'BANCONOM');
  if z2bbtnCancel.Focused then exit;
  if dblcBanco.text='' then
  begin
     ShowMessage('Ingresa el Código del Banco');
     dblcBanco.SetFocus;
     exit;
  end;
  if (edtBanco.text='') and (dblcBanco.text<>'') then
  begin
     //dblcBanco.SetFocus;
     //Raise Exception.create('Error, Código de Banco no válido');
  end;
  if xBanco<>dblcBanco.text then
     dblcCtaCte.text:='';
  DM1.FiltraCDS(DM1.cdsCtaCtes, 'SELECT * FROM TGE106 WHERE BANCOID='+quotedStr(dblcBanco.text)+' AND CIAID='+QuotedStr(wCiaDef));
end;

procedure TFIngresoLote.dblcMonedaExit(Sender: TObject);
begin
  sWhere:= 'TMONID = '+ quotedstr(dblcMoneda.text) ;
  edtMoneda.text:=dm1.DisplayDescrip('prvTGE','TGE103','TMONDES',sWhere,'TMONDES');
  if bbtnCancel.Focused then exit;
  if (edtMoneda.text='') and (dblcMoneda.text<>'') then
  begin
     dblcMoneda.SetFocus;
     Raise Exception.create('Error, Código de Tipo de Moneda no válido');
  end;
  if  dblcMoneda.text='' then
  begin
     dblcMoneda.SetFocus;
     Raise Exception.create('Ingrese el tipo de Moneda del Aporte');
  end;
end;

procedure TFIngresoLote.bbtnAceptarClick(Sender: TObject);
var
  xSql : string;
  Code : Integer;
  I    : Double;
  xASOID, xASOCODMOD, xASOAPENOM : String;
begin
  {If wModo1='A' Then
  Begin
    cdsTemp:=TwwClientDataSet.Create(nil);
    cdsTemp.CloneCursor(dm1.cdsAutdisk,false);
    cdsTemp.First;
    while not cdsTemp.Eof do
    begin
      IF (cdsTemp.FieldByName('ASOID').AsString=dbeCodigo.Text) AND (cdsTemp.FieldByName('TRANSINTID').AsString<>'PRV')   Then
      begin
        dblcdCodigoModular.setfocus;
        Raise Exception.Create('Aporte para Asocioado ya fue ingresado');
      end;
      cdsTemp.next;
    end;
  End;}
  ReadOnlyFalseGridAportes;

  if Length(Trim(dblcdCodigoModular.Text))=0 Then
  begin
    ShowMessage('Debe seleccionar el Asociado');
    dblcdCodigoModular.SetFocus;
    exit;
  end;
  if Length(Trim(dbeCodigo.Text))=0 Then
  begin
    ShowMessage('Debe seleccionar el Asociado');
    dblcdCodigoModular.SetFocus;
    exit;
  end;

  if Length(Trim(dbeApeNom.Text))=0 Then
  begin
    ShowMessage('Debe seleccionar el Asociado');
    dblcdCodigoModular.SetFocus;
    exit;
  end;

  dbeAporte.Text:=Trim(dbeAporte.Text);
  val(dbeAporte.Text,I,Code);
  if Code <> 0 then
  begin
    ShowMessage('Debe Registrar Correctamente el Monto de Aportes');
    dbeAporte.SetFocus;
    exit;
  end
  else
  begin
    dbeCuota.Text:=Trim(dbeCuota.Text);
    val(dbeCuota.Text,I,Code);
    if Code <> 0 then
    begin
      ShowMessage('Debe Registrar Correctamente el Monto de la Cuota Aportes');
      dbeCuota.SetFocus;
      exit;
    end;
    if (StrToFloat(dbeAporte.Text)=0) And  (StrToFloat(dbeCuota.Text)=0) Then
    begin
      ShowMessage('Debe Registrar el Monto de Aporte o Cuota');
      dbeAporte.SetFocus;
      exit;
    end;
  end;

  if DM1.cdsAutdisk.Modified Then
  begin
    if wModo1='A' Then
    begin
        xASOID:=DM1.cdsAsociados.FieldByName('ASOID').AsString;
        xASOCODMOD:=DM1.cdsAsociados.FieldByName('ASOCODMOD').AsString;
        xASOAPENOM:=DM1.cdsAsociados.FieldByName('ASOAPENOM').AsString;
    end
    else
    begin
      if wModo1='M' Then
      begin
        xASOID:=DM1.cdsAutdisk.FieldByName('ASOID').AsString;
        xASOCODMOD:=DM1.cdsAutdisk.FieldByName('ASOCODMOD').AsString;
        xASOAPENOM:=DM1.cdsAutdisk.FieldByName('ASOAPENOM').AsString;
      end;
    end;

    DM1.cdsAutdisk.Edit;
    DM1.cdsAutdisk.FieldByName('ASOID').AsString      := xASOID;
    DM1.cdsAutdisk.FieldByName('ASOCODMOD').AsString  := xASOCODMOD;
    DM1.cdsAutdisk.FieldByName('ASOAPENOM').AsString  := xASOAPENOM;
    xSql:='SELECT * FROM APO101 WHERE USEID='+QuotedStr(dblcdUse.text);
    DM1.Filtracds(DM1.cdsQry,xSql);
    DM1.cdsAutdisk.FieldByName('USEID').AsString      := DM1.cdsQry.FieldbyName('USEID').AsString;
    DM1.cdsAutdisk.FieldByName('UPROID').AsString     := DM1.cdsQry.FieldbyName('UPROID').AsString;
    DM1.cdsAutdisk.FieldByName('UPAGOID').AsString    := DM1.cdsQry.FieldbyName('UPAGOID').AsString;
    DM1.cdsAutdisk.FieldByName('DPTOID').AsString     := DM1.cdsQry.FieldbyName('DPTOID').AsString;
    DM1.cdsAutdisk.FieldByName('TRANSANO').AsString   := speAno.Text;
    DM1.cdsAutdisk.FieldByName('TRANSMES').AsString   := DM1.StrZero(speMes.Text,2);

    if (TRIM(dblcFormaPago.Text)='PLA') or
       (TRIM(dblcFormaPago.Text)='REG') then
      DM1.cdsAutdisk.FieldByName('APOSEC').AsString   := speAno.Text+DM1.StrZero(speMes.Text,2)
    else
      DM1.cdsAutdisk.FieldByName('APOSEC').AsString   := Copy(dbdtpFecOperacion.Text,7,4)+Copy(dbdtpFecOperacion.Text,4,2);

    DM1.cdsAutdisk.FieldByName('TMONID').AsString     := dblcMoneda.Text;
    DM1.cdsAutdisk.FieldByName('BANCOID').AsString    := dblcBanco.Text;
    DM1.cdsAutdisk.FieldByName('CCBCOID').AsString    := dblcCtaCte.Text;
    DM1.cdsAutdisk.FieldByName('TRANSNOPE').AsString  := dbeNumOperacion.Text;
    DM1.cdsAutdisk.FieldByName('TRANSFOPE').AsDateTime:= dbdtpFecOperacion.Date;
    DM1.cdsAutdisk.FieldByName('FORPAGOID').AsString  := dblcFormaPago.Text;

    DM1.cdsAutdisk.FieldByName('RCOBID').AsString     := DM1.cdsCobxUse.FieldByName('RCOBID').AsString;
    DM1.cdsAutdisk.FieldByName('DETRCOBID').AsString  := DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString;
    DM1.cdsAutdisk.FieldByName('USERCOBID').AsString  := DM1.cdsCobxUse.FieldByName('USERCOBID').AsString;

    dbeAporte.Text:=Trim(dbeAporte.Text);
    val(dbeAporte.Text,I,Code);
    if Code = 0 then
      DM1.cdsAutDisk.FieldByName('TRANSAPO').AsFloat  := StrToFloat(dbeAporte.Text)
    else
      DM1.cdsAutDisk.FieldByName('TRANSAPO').AsFloat  := 0;

    dbeCuota.Text:=Trim(dbeCuota.Text);
    val(dbeCuota.Text,I,Code);
    if Code = 0 then
      DM1.cdsAutdisk.FieldByName('TRANSCUO').AsFloat  := StrToFloat(dbeCuota.Text)
    else
      DM1.cdsAutdisk.FieldByName('TRANSCUO').AsFloat  :=0;

    dbeTotal.Text:=Trim(dbeTotal.Text);
    val(dbeTotal.Text,I,Code);
    if Code = 0 then
      DM1.cdsAutdisk.FieldByName('TRANSMTO').AsFloat  := StrToFloat(dbeTotal.Text)
    else
      DM1.cdsAutdisk.FieldByName('TRANSMTO').AsFloat  :=0;

    DM1.cdsAutdisk.FieldByName('FREGCOB').Clear;
    DM1.cdsAutdisk.FieldByName('USUARIO').AsString    := DM1.wUsuario;
    DM1.cdsAutdisk.FieldByName('FREG').AsDateTime     := Date;
    DM1.cdsAutdisk.FieldByName('HREG').AsDateTime     := Date+Time;

    cdsPost(DM1.cdsAutdisk);
    DM1.cdsAutdisk.Post;
    Z2bbtnCancel.Enabled:=True;
    Z2bbtnAceptar.Enabled:=True;

    {If wModo1='A' Then
    Begin
      LimpiaVent;
      dblcdCodigoModular.SetFocus;

      if DM1.OperClientDataSet(dm1.cdsAutdisk , 'SUM(TRANSMTO)','') > strtofloat(dbeMonto.text) then
      Begin
        ShowMessage('El Monto total No puede ser Mayor al Monto');
        DM1.cdsAutdisk.delete;
        dbgAportes.ColumnByName('TRANSMTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(dm1.cdsAutdisk , 'SUM(TRANSMTO)',''),ffCurrency, 15, 2);
        pnlAportes.visible:=false;
        ConfiguraGridAportes;
        ActualizaFooter;
        exit;
      End;
      DM1.cdsAutdisk.Insert;
    End;}
    ConfiguraGridAportes;
    ActualizaFooter;

    //DM1.cdsAutdisk.Cancel;
    pnlAportes.Visible:=False;
    bbtnIngresaAporte.Click;
    //Z2bbtnCancel.Enabled:=True;
    //Z2bbtnAceptar.Enabled:=True;
  end;
end;

procedure TFIngresoLote.dblcCtaCteExit(Sender: TObject);
begin
  if Z2bbtnCancel.Focused then exit;
  if dblcCtaCte.Text='' then
  begin
    dblcCtaCte.SetFocus;
    Raise Exception.create('Ingrese el Número de Cuenta Corriente');
  end;
  sWhere:= 'CCBCOID = '+ quotedstr(dblcCtaCte.text) ;
  if dm1.DisplayDescrip('prvTGE','TGE106','BANCOID',sWhere,'BANCOID')='' then
  begin
    dblcCtaCte.SetFocus;
    Raise Exception.Create('Cuenta Corriente no válida');
  end;
  xBanco:=dblcBanco.text;
end;

procedure TFIngresoLote.dbeNumOperacionExit(Sender: TObject);
begin
  if bbtnCancel.Focused then exit;
  if dblcCtaCte.Text='' then
  begin
     dblcCtaCte.SetFocus;
     Raise Exception.create('Ingrese el Número de Cuenta Corriente');
  end;

end;

procedure TFIngresoLote.dbdtpFecOperacionExit(Sender: TObject);
begin
  if z2bbtnCancel.Focused then exit;
  if dbdtpFecOperacion.Text='' then
  begin
     dbdtpFecOperacion.SetFocus;
     Raise Exception.create('Ingrese la Fecha de Operación');
  end;

end;

procedure TFIngresoLote.Z2bbtnAceptarClick(Sender: TObject);
begin
  Ocultapaneles;
  If DM1.cdsAutdisk.Active then
  Begin
    If (DM1.cdsAutdisk.ChangeCount > 0) or (DM1.cdsAutdisk.Modified) Then
    Begin
      DM1.cdsAutdisk.DisableControls;
      DM1.cdsAutdisk.First;
      While Not DM1.cdsAutdisk.EOF DO
      Begin
        If DM1.cdsAutdisk.FieldByName('FREGCOB').AsString='S' Then
        Begin
          DM1.cdsAutdisk.Edit;
          DM1.cdsAutdisk.FieldByName('FREGCOB').Clear;
          DM1.cdsAutdisk.Post;
        End;
        DM1.cdsAutdisk.Next;
      End;
      DM1.cdsAutdisk.EnableControls;
      DM1.cdsAutdisk.First;
    End;
    DM1.cdsAutdisk.Edit;
    DM1.cdsAutdisk.FieldByName('USUARIO').AsString:= DM1.wUsuario;
    DM1.cdsAutdisk.FieldByName('FREG').AsDateTime := Date;
    DM1.cdsAutdisk.FieldByName('HREG').AsDateTime := Date+Time;
    cdsPost(DM1.cdsAutdisk);
    DM1.ControlTran;
    ShowMessage('Actualización Realizada');
  End;
end;

procedure TFIngresoLote.dblcdCodigoModularExit(Sender: TObject);
begin
  if bbtnCancel.Focused then Exit;

  dblcdCodigoModular.Text:=DM1.StrZero(dblcdCodigoModular.Text,xLogAsoid);

  sWhere:='ASOID='+ QuotedStr(dblcdCodigoModular.Text)+' '+
          'AND RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
          'AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
          'AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);

  dm1.DisplayDescrip('prvTGE','COB304','ASOID',sWhere,'ASOID');
  if dm1.cdsQry.RecordCount > 0 then
  begin
    ErrorMsg(Caption, 'Asociado Registrado');
    //dblcdCodigoModular.Text:='0000000000';
    dblcdCodigoModular.SetFocus;
    Exit;
  end;

  dm1.cdsAsociados.IndexFieldNames:='ASOCODMOD';
  DM1.cdsAsociados.Setkey;
  DM1.cdsAsociados.FieldByName('ASOCODMOD').AsString:= dblcdCodigoModular.Text;
  if DM1.cdsAsociados.GotoKey then
  begin
    sWhere:='ASOID='+ QuotedStr(dblcdCodigoModular.Text)+' '+
            'AND USEID='+ QuotedStr(DM1.cdsCobxUse.FieldByName('USEID').AsString)+' '+
            'AND USEID='+QuotedStr(DM1.cdsUse.FieldByName('USEID').AsString)+' '+
            'AND UPROID='+QuotedStr(DM1.cdsUse.FieldByName('UPROID').AsString);

    dm1.DisplayDescrip('prvTGE','APO201','ASOCODMOD',sWhere,'ASOCODMOD');
    if dm1.cdsQry.RecordCount > 1 then
      dblcdCodigoModular.DropDown
  end
  else
  begin
    ErrorMsg(Caption, 'Asociado no Existe');
    dbeApeNom.Text;
    dblcdCodigoModular.SetFocus;
    Exit
  end;

  dbeCodigo.Text:=DM1.cdsAsociados.FieldByName('ASOID').AsString;
  //dbeCodigoPago.Text:=DM1.cdsAsociados.FieldByName('ASOCODPAGO').AsString;
  dbeApeNom.Text:=DM1.cdsAsociados.FieldByName('ASOAPENOM').AsString;

  {if (dbeApeNom.Text='') and (dblcdCodigoModular.text<>'') then
  begin
    dblcdCodigoModular.SetFocus;
    Raise Exception.create('Error, Código de Asociado no existe !!!!!!!');
  end;
  if dblcdCodigoModular.text='' then
  begin
    ShowMessage('Ingrese el Código de Asociado');
    dblcdCodigoModular.SetFocus;
  end;}
end;

procedure TFIngresoLote.dblcdCodigoDropDown(Sender: TObject);
begin
  //dm1.cdsAsociados.IndexFieldNames:='ASOID';
end;

procedure TFIngresoLote.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if  (DM1.wModo='A') or (DM1.wModo='M') then
  begin
    if (DM1.cdsAutdisk.ChangeCount > 0) or (DM1.cdsAutdisk.Modified) Then
    begin
      if Question(Caption,'Tiene Datos No Actualizados.'+#13+#13+
                          '¿Desea Guardar sus Actualizaciones? ') then
      begin
        Z2bbtnAceptar.Click;
        CanClose := True;
        //dbgAportes.RefreshDisplay;
        Close;
      end
      else
      begin
        DM1.cdsAutdisk.CancelUpdates;
        //DM1.cdsAutdisk.DisableControls;
        CanClose := True;
        Close;
      end;
    End;
  end;
end;

procedure TFIngresoLote.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM1.cdsUse.IndexFieldNames:='';
  DM1.cdsAsociados.IndexFieldNames:='';
  DM1.cdsAutdisk.IndexFieldNames:='';
  dbgAportes.Color:=$00C8E1DF;
  DM1.cdsCobxUse.CancelUpdates;
  DM1.cdsAutdisk.cancel;
  DM1.cdsAsociados.Close;
  DM1.cdsAutdisk.close;
end;

procedure TFIngresoLote.dbeMontoExit(Sender: TObject);
var
  xSql:string;
begin
  xSQL:='SELECT * FROM APO117 WHERE APOANO='+QuotedStr(speAno.text)+ ' AND APOMES='+QuotedStr(DM1.StrZero(speMes.Text,2));
  dm1.Filtracds(dm1.cdsQry,xSql);
  if  dbeMonto.text='' then
  begin
     dbeMonto.SetFocus;
     Raise Exception.create('Ingrese el Monto del Aporte');
  end;
  if StrToFloat(dbeMonto.text)<=0 then
  begin
    dbeMonto.SetFocus;
    Raise Exception.Create('Monto del Aporte no puede ser negativo o igual a cero');
  end;
  if StrToFloat(dbeMonto.text)<> DM1.cdsQry.FieldByName('APOVALOR').AsFloat THEN
  begin
    ShowMessage('El Monto del Aporte para el período '+#13
                          +'Año '+speAno.Text +'Mes'+speMes.Text+'es '+FloatToStr(DM1.cdsQry.FieldByName('APOVALOR').AsFloat));
  end;
end;

procedure TFIngresoLote.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If key=#13 Then
  Begin
     key:=#0;
     perform(CM_DialogKey,VK_TAB,0);
  End;
end;

procedure TFIngresoLote.dblcTransaccionExit(Sender: TObject);
begin
  //sWhere:= 'TRANSID = '+ quotedstr(dblcTransaccion.text) ;
  //edtTransaccion.text:=dm1.DisplayDescrip('prvTGE','APO118','TRANSDES',sWhere,'TRANSDES');
end;

procedure TFIngresoLote.LimpiaForm;
begin
{  dblcFormaPago.clear; edtFormaPago.clear;
  dblcBanco.Clear;   edtBanco.clear;
  dblcCtaCte.clear;
  dbeNumOperacion.clear; dbdtpFecOperacion.text:='';
  dblcMoneda.clear; edtMoneda.clear;
  dbeMonto.clear;}
  dblcdUse.clear;
  edtUse.clear;
  speAno.Text:=''; speMes.text:='';
  dbeImpAporte.clear;
end;

procedure TFIngresoLote.LimpiaVent;
begin
  dblcdCodigoModular.clear;
  dbeCodigo.Clear;
//  dbeCodigoPago.clear;
  dbeApeNom.clear;
//  dbeApeMat.clear;
//  dbeNombres.clear;
  dbeTotal.clear;
  dbeAporte.clear;
  dbeCuota.clear;
end;

procedure TFIngresoLote.Z2bbtnSalirClick(Sender: TObject);
var
  xMarca : TBookMark;
  xRegCob:String;
begin
  If DM1.cdsAutdisk.Active Then
  Begin
    DM1.cdsAutdisk.CancelUpdates;
    If (DM1.cdsAutdisk.ChangeCount > 0) or (DM1.cdsAutdisk.Modified) Then
    Begin
      DM1.cdsAutdisk.DisableControls;
      xMarca:=DM1.cdsDLabo.GetBookmark;
      xRegCob:='';
      DM1.cdsAutdisk.First;
      While Not DM1.cdsAutdisk.EOF DO
      Begin
        If DM1.cdsAutdisk.FieldByName('FREGCOB').AsString='S' Then
        Begin
          DM1.cdsAutdisk.Edit;
          DM1.cdsAutdisk.FieldByName('FREGCOB').Clear;
          DM1.cdsAutdisk.Post;
          xRegCob:='S';
        End;
        DM1.cdsAutdisk.Next;
      End;
      DM1.cdsAutdisk.GotoBookmark(xMarca);
      If xRegCob='S' Then
      Begin
        DM1.ControlTran;
      End;
      DM1.cdsAutdisk.EnableControls;
    End;
  End;
  Close;
end;

procedure TFIngresoLote.dbeTotalExit(Sender: TObject);
var
  valor1:double;
begin
  if dblcdCodigoModular.Focused then exit   ; //26/01/2002

  if StrToFloat(dbeTotal.Text)<=0 then
  begin
    dbeAporte.text:=dbeImpAporte.text;
    dbeCuota.text:='0';
   exit;
    //26/01/2002
   valor1:=DM1.OperClientDataSet(dm1.cdsAutdisk , 'SUM(TRANSMTO)','')+strtofloat(dbeTotal.text);
   if valor1 > strtofloat(dbeMonto.text)  then
   begin
     dm1.cdsAutdisk.Edit;
     dm1.cdsAutdisk.fieldbyname('TRANSMTO').asfloat:=valor1-strtofloat(dbemonto.text)
   end;
   //fin 26/01/2002
{    ShowMessage('El Monto debe ser mayor a cero');
    dbeTotal.Text:='';
    dbeTotal.SetFocus;
    exit;}
  end;

  If StrToFloat(dbeTotal.Text)<StrToFloat(dbeImpAporte.Text) Then
  Begin
    ShowMessage('El Monto debe ser mayor o igual al Importe por Aporte');
    dbeTotal.Text:='';
    dbeTotal.SetFocus;
    exit;
  End;

  dbeAporte.text:=dbeImpAporte.Text;

  dbeCuota.Text:=FloatToStr(StrToFloat(dbeTotal.Text)-StrToFloat(dbeImpAporte.Text));
end;

procedure TFIngresoLote.speMes1Exit(Sender: TObject);
var
  xSql:string;
begin
  if (speano.Text='') or (spemes.Text='') then
  begin
    ShowMessage('Periódo no válido');
    speAno.SetFocus;
    exit;
  end;
  If Length(speMes.Text)=1 Then
  Begin
    speMes.Text:=DM1.StrZero(speMes.Text,2);
  End;
  xSql:='SELECT * FROM APO117 WHERE APOANO='+QuotedStr(speAno.Text)+' AND APOMES='+QuotedStr(DM1.StrZero(speMes.Text,2));
  DM1.Filtracds(DM1.cdsQry,xSql);
  dbeImpAporte.Text:=FloatToStr(DM1.cdsQry.Fieldbyname('APOVALOR').AsFloat);
  if (Z2bbtnCancel.focused) or (Z2bbtnSalir.Focused) then exit;
  If Length(speMes.Text)=1 Then
  Begin
    speMes.Text:=DM1.StrZero(speMes.Text,2);
  End;
end;

procedure TFIngresoLote.dblcNotInList(Sender: TObject; LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
begin
  //Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).DataField,NewValue,[]);
  Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookupField,NewValue,[]);
  if not Accept then
    TwwDBCustomLookupCombo(Sender).DropDown;
end;

procedure TFIngresoLote.bbtnAtrasClick(Sender: TObject);
begin
  Ocultapaneles;
  DM1.cdsAutdisk.Close;
  dblcdUse.Text:='';
  edtUse.Text:='';
  speAno.Text:='';
  speMes.Text:='';
  dbeImpAporte.Text:='';
  dblcdUse.Enabled:=True;
  dblcdUse.SetFocus;
  bbtnSigue.Enabled:=True;
  DM1.cdsAutdisk.Close;
end;

procedure TFIngresoLote.dbgAportesKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key=VK_DELETE) and (ssCtrl in Shift)  then
  begin
  	if DM1.cdsAutdisk.RecordCount > 0 then
      Begin
       If MessageDlg('¿Esta Seguro de Eliminar?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
       Begin
          DM1.cdsAutdisk.Delete;
          DM1.ControlTran;
          dbgAportes.ColumnByName('TRANSMTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(dm1.cdsAutdisk , 'SUM(TRANSMTO)',''),ffCurrency, 15, 2);
        	dbgAportes.RefreshDisplay;
          ShowMessage('Registro Eliminado');
       End
       Else
        exit;
      End
    else
      ShowMessage(' No Existen Registros a Eliminar ');
	end;

  if (Key=VK_RETURN) and (ssCtrl in Shift)  then
  begin
  	if DM1.cdsAutdisk.RecordCount > 0 then
    begin
      DM1.wModo:='M';
      DM1.cdsAutdisk.Edit;
      pnlAportes.Visible:=True;
      dblcdCodigoModular.Enabled:=False;
      dbeAporte.SetFocus;
    end
    else
    begin
      ShowMessage(' No Existen Registros a Eliminar ');
    end;
	end;

  if (Key=VK_INSERT) and (ssCtrl in Shift)  then
  begin
  	if DM1.cdsAutdisk.RecordCount > 0 then
    begin
      wModo1:='A';
      Z2bbtnCancel.Enabled:=False;
      Z2bbtnAceptar.Enabled:=False;
      LimpiaVent;
      DM1.cdsAutdisk.INSERT;
      pnlAportes.Visible:=True;
      dblcdCodigoModular.Enabled:=True;
      dblcdCodigoModular.SetFocus;
    end;
	end;
end;

procedure TFIngresoLote.dbgAportesDblClick(Sender: TObject);
begin
  Ocultapaneles;
  wModo1:='M';
  if DM1.cdsAutdisk.RecordCount=0 Then
  Begin
     ShowMessage('No Existen Registros a Editar');
     exit;
  End;
  //LimpiaVent;

  dbeCodigo.Text:=DM1.cdsAutDisk.FieldByName('ASOID').AsString;
  //dbeCodigoPago.Text:=DM1.cdsAsociados.FieldByName('ASOCODPAGO').AsString;
  dbeApeNom.Text:=DM1.cdsAutdisk.FieldByName('ASOAPENOM').AsString;
  //dblcdCodigoModular.Text:='';
  dblcdCodigoModular.Text:=DM1.cdsAutdisk.FieldByName('ASOCODMOD').AsString;

  DM1.cdsAutdisk.Edit;
  pnlAportes.Visible:=True;
  dblcdCodigoModular.Enabled:=False;
  dbeAporte.SetFocus;
end;

procedure TFIngresoLote.Z2bbtnFiltroClick(Sender: TObject);
begin
  Ocultapaneles;
  dbeLetra.Text:=Trim(dbeLetra.Text);

  if DM1.cdsAutdisk.RecordCount = 0 Then
  begin
    Exit;
  end;
  Screen.Cursor:=crHourGlass;
  xSQL:='SELECT * '+
        'FROM COB304 A '+
        //'WHERE A.USEID=' +QuotedStr(dblcdUse.Text)+' '+
        //'AND A.TRANSANO='+QuotedStr(speAno.Text)+' '+
        //'AND A.TRANSMES='+QuotedStr(DM1.StrZero(speMes.Text,2))+' '+
        'WHERE A.RCOBID=' +QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
        'AND A.DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
        'AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);

  if Length(dbeLetra.Text) > 0 Then
    xSQL:=xSQL+' AND A.ASOAPENOM LIKE '+QuotedStr(dbeLetra.Text+'%');

  DM1.FiltraCDS(DM1.cdsAutdisk,xSQL+' ORDER BY A.ASOAPENOM');
  ConfiguraGridAportes;
  ActualizaFooter;

  Screen.Cursor:=crDefault;
end;

procedure TFIngresoLote.Z2bbtnOrdenCodModClick(Sender: TObject);
begin
  Ocultapaneles;
  Screen.Cursor:=crHourGlass;
  DM1.cdsAutdisk.IndexFieldNames:='';
  DM1.cdsAutdisk.IndexFieldNames:='ASOCODMOD;ASOAPENOM';
  Screen.Cursor:=crDefault;
end;

procedure TFIngresoLote.Z2bbtnOrdenAlfabClick(Sender: TObject);
begin
  Ocultapaneles;
  Screen.Cursor:=crHourGlass;
  DM1.cdsAutdisk.IndexFieldNames:='';
  DM1.cdsAutdisk.IndexFieldNames:='ASOAPENOM;ASOCODMOD';
  DM1.cdsAutdisk.IndexFieldNames;
  Screen.Cursor:=crDefault;
end;

procedure TFIngresoLote.ConfiguraGridAportes;
begin
  DM1.cdsAutdisk.FieldByName('FTRANSF').ReadOnly:=False;
  DM1.cdsAutdisk.FieldByName('FREGCOB').ReadOnly:=False;
  DM1.cdsAutdisk.FieldByName('TRANSANO').ReadOnly:=True;
  DM1.cdsAutdisk.FieldByName('TRANSMES').ReadOnly:=True;
  DM1.cdsAutdisk.FieldByName('ASOID').ReadOnly:=False;
  DM1.cdsAutdisk.FieldByName('ASOCODMOD').ReadOnly:=True;
  DM1.cdsAutdisk.FieldByName('ASOAPENOM').ReadOnly:=False;
  DM1.cdsAutdisk.FieldByName('TRANSAPO').ReadOnly:=False;
  DM1.cdsAutdisk.FieldByName('TRANSCUO').ReadOnly:=False;
  DM1.cdsAutdisk.FieldByName('TRANSMTO').ReadOnly:=False;
  DM1.cdsAutdisk.FieldByName('BANCOID').ReadOnly:=False;
  DM1.cdsAutdisk.FieldByName('CCBCOID').ReadOnly:=False;
  DM1.cdsAutdisk.FieldByName('USUARIO').ReadOnly:=False;
  DM1.cdsAutdisk.FieldByName('FREG').ReadOnly:=False;
  DM1.cdsAutdisk.FieldByName('HREG').ReadOnly:=False;
  DM1.cdsAutdisk.FieldByName('FTRANSF').ReadOnly:=False;
  DM1.cdsAutdisk.FieldByName('FREGCOB').ReadOnly:=False;
  DM1.cdsAutdisk.FieldByName('ASOCODPAGO').ReadOnly:=False;
  DM1.cdsAutdisk.FieldByName('USEID').ReadOnly:=False;
  DM1.cdsAutdisk.FieldByName('UPROID').ReadOnly:=False;
  DM1.cdsAutdisk.FieldByName('UPAGOID').ReadOnly:=False;
  DM1.cdsAutdisk.FieldByName('FNASOID').ReadOnly:=False;
  DM1.cdsAutdisk.FieldByName('FNCODMOD').ReadOnly:=False;
  DM1.cdsAutdisk.FieldByName('FCCODMOD').ReadOnly:=False;
  DM1.cdsAutdisk.FieldByName('FCCODPAGO').ReadOnly:=False;
  DM1.cdsAutdisk.FieldByName('FCUSE').ReadOnly:=False;
  DM1.cdsAutdisk.FieldByName('FNMONTO').ReadOnly:=False;
  DM1.cdsAutdisk.FieldByName('FMAPORTE').ReadOnly:=False;
  DM1.cdsAutdisk.FieldByName('FSCREDITO').ReadOnly:=False;

  TNumericField(DM1.cdsAutdisk.FieldByName('TRANSMTO')).DisplayFormat:='###,###,##0.00';
  TNumericField(DM1.cdsAutdisk.FieldByName('TRANSMTO')).EditFormat:='########0.00';
                                           TNumericField(DM1.cdsAutdisk.FieldByName('TRANSAPO')).DisplayFormat:='###,###,##0.00';
  TNumericField(DM1.cdsAutdisk.FieldByName('TRANSAPO')).EditFormat:='########0.00';

  TNumericField(DM1.cdsAutdisk.FieldByName('TRANSCUO')).DisplayFormat:='###,###,##0.00';
  TNumericField(DM1.cdsAutdisk.FieldByName('TRANSCUO')).EditFormat:='########0.00';
end;

procedure TFIngresoLote.ReadOnlyFalseGridAportes;
begin
  DM1.cdsAutdisk.FieldByName('FREGCOB').ReadOnly:=False;
  DM1.cdsAutdisk.FieldByName('TRANSANO').ReadOnly:=False;
  DM1.cdsAutdisk.FieldByName('TRANSMES').ReadOnly:=False;
  DM1.cdsAutdisk.FieldByName('ASOID').ReadOnly:=False;
  DM1.cdsAutdisk.FieldByName('ASOCODMOD').ReadOnly:=False;
  DM1.cdsAutdisk.FieldByName('ASOAPENOM').ReadOnly:=False;
  DM1.cdsAutdisk.FieldByName('TRANSAPO').ReadOnly:=False;
  DM1.cdsAutdisk.FieldByName('TRANSCUO').ReadOnly:=False;
  DM1.cdsAutdisk.FieldByName('TRANSMTO').ReadOnly:=False;
  DM1.cdsAutdisk.FieldByName('BANCOID').ReadOnly:=False;
  DM1.cdsAutdisk.FieldByName('CCBCOID').ReadOnly:=False;
  DM1.cdsAutdisk.FieldByName('USUARIO').ReadOnly:=False;
  DM1.cdsAutdisk.FieldByName('FREG').ReadOnly:=False;
  DM1.cdsAutdisk.FieldByName('HREG').ReadOnly:=False;
end;

procedure TFIngresoLote.OcultaPaneles;
begin
  pnlEstado.Visible:=False;
  pnlFiltros.Visible:=False;
  pnlBuscaInc.Visible:=False;
end;

procedure TFIngresoLote.ActualizaFooter;
begin
  //dbgAportes.Update;
  DM1.cdsAutdisk.RecordCount;
  dbgAportes.ColumnByName('TRANSAPO').FooterValue:=FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSAPO)',''),ffNumber, 15, 2);
  dbgAportes.ColumnByName('TRANSCUO').FooterValue:=FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSCUO)',''),ffNumber, 15, 2);
  dbgAportes.ColumnByName('TRANSMTO').FooterValue:=FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSMTO)',''),ffNumber, 15, 2);
  dbgAportes.ColumnByName('ASOAPENOM').FooterValue:='Total  '+FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'COUNT(ASOAPENOM)',''),ffNumber, 15,0)+' Registros';
  //dbgAportes.Refresh;
  //dbgAportes.RefreshDisplay;
end;

procedure TFIngresoLote.dbgAportesTitleButtonClick(Sender: TObject; AFieldName: String);
begin
  Ocultapaneles;
  If AFieldName='ASOAPENOM' Then
  Begin
    Screen.Cursor:=crHourGlass;
    edtBusca.Text:='';
    DM1.cdsAutdisk.IndexFieldNames:='ASOAPENOM';
    edtBusca.SearchField:='ASOAPENOM';
    pnlBusca.Visible:=True;
    lbBusca.Caption:='Apellidos y Nombres';
    dbgAportes.Enabled:=False;
    pnlUse.Enabled:=False;
    pnlFooter.Enabled:=False;
    pnlHeader.Enabled:=False;
    pnlDatosAportes.Enabled:=False;
    edtBusca.SetFocus;
    Screen.Cursor:=crDefault;
  end
  else
  begin
    If AFieldName='ASOCODMOD' Then
    Begin
      Screen.Cursor:=crHourGlass;
      edtBusca.Text:='';
      DM1.cdsAutdisk.IndexFieldNames:='ASOCODMOD';
      edtBusca.SearchField:='ASOCODMOD';
      pnlBusca.Visible:=True;
      lbBusca.Caption:='Codigo Modular';
      dbgAportes.Enabled:=False;
      pnlUse.Enabled:=False;
      pnlFooter.Enabled:=False;
      pnlHeader.Enabled:=False;
      pnlDatosAportes.Enabled:=False;
      edtBusca.SetFocus;
      Screen.Cursor:=crDefault;
    End
    Else
    Begin
      If AFieldName='FREGCOB' Then
      Begin
        Screen.Cursor:=crHourGlass;
        DM1.cdsAutdisk.DisableControls;
        DM1.cdsAutdisk.First;
        While Not DM1.cdsAutdisk.EOF DO
        Begin
          If DM1.cdsAutdisk.FieldByName('FREGCOB').AsString='S' Then
          Begin
            DM1.cdsAutdisk.Edit;
            DM1.cdsAutdisk.FieldByName('FREGCOB').Clear;
            DM1.cdsAutdisk.Post;
          End;
          DM1.cdsAutdisk.Next;
        End;
        DM1.cdsAutdisk.EnableControls;
        dbgAportes.RefreshDisplay;
        DM1.cdsAutdisk.First;
        Screen.Cursor:=crDefault;
      End
      Else
      Begin
        If AFieldName='ASOID' Then
        Begin
          Screen.Cursor:=crHourGlass;
          edtBusca.Text:='';
          DM1.cdsAutdisk.IndexFieldNames:='ASOID';
          edtBusca.SearchField:='ASOID';
          pnlBusca.Visible:=True;
          lbBusca.Caption:='Codigo Derrama';
          dbgAportes.Enabled:=False;
          pnlUse.Enabled:=False;
          pnlFooter.Enabled:=False;
          pnlHeader.Enabled:=False;
          pnlDatosAportes.Enabled:=False;
          edtBusca.SetFocus;
          Screen.Cursor:=crDefault;
        End
        Else
        Begin
          If AFieldName='ASOCODPAGO' Then
          Begin
            Screen.Cursor:=crHourGlass;
            edtBusca.Text:='';
            DM1.cdsAutdisk.IndexFieldNames:='ASOCODPAGO';
            edtBusca.SearchField:='ASOCODPAGO';
            pnlBusca.Visible:=True;
            lbBusca.Caption:='Codigo de Pago';
            dbgAportes.Enabled:=False;
            pnlUse.Enabled:=False;
            pnlFooter.Enabled:=False;
            pnlHeader.Enabled:=False;
            pnlDatosAportes.Enabled:=False;
            edtBusca.SetFocus;
            Screen.Cursor:=crDefault;
          End;
        End;
      End;
    End;
  End;
end;

procedure TFIngresoLote.isBuscaKeyPress(Sender: TObject; var Key: Char);
begin
  if (key=#13) or (key=#27) then
  begin
    pnlBusca.Visible := False;
    dbgAportes.Enabled:=True;
    pnlUse.Enabled:=True;
    pnlFooter.Enabled:=True;
    pnlHeader.Enabled:=True;
    pnlDatosAportes.Enabled:=True;
    dbgAportes.SetFocus;
  end;
end;

procedure TFIngresoLote.dbeAporteExit(Sender: TObject);
var
  Code: Integer;
  I   : Double;
begin
  if Length(Trim(dbeAporte.Text))<>0 Then
  begin
    val(dbeAporte.Text,I,Code);
    if Code = 0 then
    begin
      if Length(DM1.cdsAutDisk.FieldByName('TRANSCUO').AsString) = 0 then
        DM1.cdsAutDisk.FieldByName('TRANSCUO').AsFloat:=0;
      DM1.cdsAutDisk.FieldByName('TRANSMTO').AsFloat:=StrToFloat(dbeCuota.Text)+StrToFloat(dbeAporte.Text);
    end;
  end;
end;

procedure TFIngresoLote.dbeCuotaExit(Sender: TObject);
var
  Code: Integer;
  I   :Double;
begin
  If Length(Trim(dbeCuota.Text))<>0 Then
  Begin
    val(dbeAporte.Text,I,Code);
    If Code = 0 then
    Begin
      DM1.cdsAutDisk.FieldByName('TRANSMTO').AsFloat:=StrToFloat(dbeCuota.Text)+StrToFloat(dbeAporte.Text);
      //DM1.cdsAutDisk.FieldByName('TRANSMTO').AsFloat:=DM1.cdsAutDisk.FieldByName('TRANSMTO').AsFloat+StrToFloat(dbeCuota.Text);
    End;
  End
  Else
  Begin
    If Length(Trim(dbeCuota.Text))=0 Then
    Begin
      DM1.cdsAutdisk.FieldByName('TRANSCUO').AsFloat:=0;
    End;
  End;
end;

procedure TFIngresoLote.dbgAportesColExit(Sender: TObject);
begin
  {If dbgAportes.SelectedField.FieldName='TRANSAPO' Then
  Begin
    DM1.cdsAutdisk.Edit;
    DM1.cdsAutdisk.FieldByName('TRANSMTO').AsFloat:=0;

    DM1.cdsAutdisk.FieldByName('TRANSMTO').AsFloat:=
        DM1.cdsAutdisk.FieldByName('TRANSCUO').AsFloat+
        DM1.cdsAutdisk.FieldByName('TRANSAPO').AsFloat;
    ActualizaFooter;
  End;
  If dbgAportes.SelectedField.FieldName='TRANSCUO' Then
  Begin
    DM1.cdsAutdisk.Edit;
    DM1.cdsAutdisk.FieldByName('TRANSMTO').AsFloat:=0;
    DM1.cdsAutdisk.FieldByName('TRANSMTO').AsFloat:=
        DM1.cdsAutdisk.FieldByName('TRANSAPO').AsFloat+
        DM1.cdsAutdisk.FieldByName('TRANSCUO').AsFloat;
    ActualizaFooter;
  End;}
end;

procedure TFIngresoLote.Z2bbtnEliminaClick(Sender: TObject);
var
  xRegCob : String;
begin
  Ocultapaneles;
  if DM1.cdsAutdisk.RecordCount > 0 Then
  begin
    if Question(Caption, 'Usted Eliminará los Registros Marcados. '+#13+#13+'¿Está Seguro de Eliminarlos?' ) then
    begin
      Screen.Cursor:=crHourGlass;
      If xBorra='S' Then
      Begin
        DM1.cdsAutdisk.DisableControls;
        xRegCob:='';
        DM1.cdsAutdisk.First;
        DM1.cdsAutdisk.IndexFieldNames:='';
        DM1.cdsAutdisk.IndexFieldNames:='FREGCOB';
        While Not DM1.cdsAutdisk.EOF DO
        Begin
          If DM1.cdsAutdisk.FieldByName('FREGCOB').AsString='S' Then
          Begin
            xRegCob:='S';
            DM1.cdsAutdisk.Delete;
          End;
          DM1.cdsAutdisk.First;
        End;
        DM1.cdsAutdisk.IndexFieldNames:='';
        If xRegCob='S' Then
        Begin
          DM1.ControlTran;
        End;
        DM1.cdsAutdisk.EnableControls;
        dbgAportes.RefreshDisplay;
      End
      Else
      Begin
        DM1.cdsAutdisk.DisableControls;
        DM1.cdsAutdisk.Prior;
        xRegCob:='';
        DM1.cdsAutdisk.First;
        DM1.cdsAutdisk.IndexFieldNames:='';
        DM1.cdsAutdisk.IndexFieldNames:='FREGCOB';
        While Not DM1.cdsAutdisk.EOF DO
        Begin
          If DM1.cdsAutdisk.FieldByName('FREGCOB').AsString='S' Then
          Begin
            xRegCob:='S';
            DM1.cdsAutdisk.Delete;
          End;
          DM1.cdsAutdisk.Next;
        End;
        DM1.cdsAutdisk.IndexFieldNames:='';
        If xRegCob='S' Then
        Begin
          DM1.ControlTran;
        End;
        DM1.cdsAutdisk.EnableControls;
        dbgAportes.RefreshDisplay;
      End;
    End;
  end
  else
  begin
    Screen.Cursor:=crDefault;
    ShowMessage('No existen Registros a Eliminar');
  end;
  ActualizaFooter;
  Screen.Cursor:=crDefault;
end;

procedure TFIngresoLote.bbtnClosePnlClick(Sender: TObject);
begin
  pnlBusca.Visible := False;
  dbgAportes.Enabled:=True;
  pnlUse.Enabled:=True;
  pnlFooter.Enabled:=True;
  pnlHeader.Enabled:=True;
  pnlDatosAportes.Enabled:=True;
  dbgAportes.SetFocus;
end;

procedure TFIngresoLote.dbgAportesCalcCellColors(Sender: TObject; Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
	if DM1.cdsAutDisk.FieldByName('FREGCOB').AsString = 'S' then
    ABrush.Color := clInfoBk;
end;

procedure TFIngresoLote.Z2bbtnInsertaClick(Sender: TObject);
var
  xInc,xRecInc: Integer;
  xSQL        : WideString;
  xAno, xMes, xDia, xAnoMes, xTrim, xSem, xSs, xAaTri, xAaSem, xAass : String;
  xForPagoId  : String;
begin
  pbEstado.Position:=0;
  Ocultapaneles;
  if DM1.cdsAutdisk.RecordCount = 0 Then
  begin
    ShowMessage('No Existen Registros a Insertar');
    exit;
  end;
  Screen.Cursor:=crHourGlass;
  xInc:=0;
  DM1.cdsAutdisk.DisableControls;
  DM1.cdsAutdisk.IndexFieldNames:='';
  DM1.cdsAutdisk.IndexFieldNames:='FREGCOB';
  DM1.cdsAutdisk.Filter:=' FREGCOB=''S'' ';
  DM1.cdsAutdisk.Filtered:=True;
  if DM1.cdsAutdisk.RecordCount >= 1 Then
  begin
    DM1.cdsAutdisk.IndexFieldNames:='';
    ShowMessage('Existen Registros Marcados para Eliminarlos, Revise estos Registros');
    DM1.cdsAutdisk.EnableControls;
    Screen.Cursor:=crDefault;
    exit;
  end;
  DM1.cdsAutdisk.IndexFieldNames:='';
  DM1.cdsAutdisk.Filter:='';
  DM1.cdsAutdisk.Filtered:=True;

  DM1.cdsAutdisk.EnableControls;
  dbgAportes.RefreshDisplay;

  if (DM1.cdsCobxUse.Modified) or (DM1.cdsCobxUse.ChangeCount>0) Then
  begin
    DM1.cdsCobxUse.Post;
  end;
  DM1.ControlTran;

  xSQL:='SELECT ASOID '+
        'FROM COB304 '+
        'WHERE RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
        'AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
        'AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+' '+
        'GROUP BY ASOID '+
        'HAVING COUNT(*) > 1';
  DM1.cdsReporte1.Close;
  dm1.cdsReporte1.DataRequest(xSQL);
  dm1.cdsReporte1.Open;
  if dm1.cdsReporte1.RecordCount > 0 then
  begin
    Screen.Cursor:=crDefault;
    ErrorMsg(Caption, 'Existen Asociados Repetidos No Puede Continuar');
    Exit;
  end;

  pnlEstado.Visible:=True;
  lbEstado.Caption :=' Verificando Datos ...';
  lbEstado.Refresh;
  pbEstado.Max:=25;
  pbEstado.Min:=0;
  pbEstado.Position:=pbEstado.Position+1;

  lbEstado.Caption:='';
  lbEstado.Caption:=' Marcando Inconsistencias ';
  lbEstado.Refresh;
  pbEstado.Position:=pbEstado.Position+1;

  // FNASOID : El Asociado no Tiene ID
  xSQL:='UPDATE COB304 SET '+
        'FTRANSF=''I'', '+
        'FNASOID=''S'' '+
        'WHERE RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
        'AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
        'AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+' '+
        'AND (NVL(ASOID,''X'')=''X'') '+
        'AND NVL(FTRANSF,''A'')<>''I''';

  DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
  pbEstado.Position:=pbEstado.Position+1;
  lbEstado.Caption:='';
  lbEstado.Refresh;
  lbEstado.Caption:='Verificando Codigo de Derrama';
  lbEstado.Refresh;
  pbEstado.Position:=pbEstado.Position+1;

  //	FNCODMOD : No tiene Codigo Modular
  xSQL:='UPDATE COB304 SET '+
        'FTRANSF=''I'', '+
        'FNCODMOD=''S'' '+
        'WHERE RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
        'AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
        'AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+' '+
        'AND (ASOCODMOD IS NULL) OR (NVL(ASOCODMOD,''X'')=''X'') '+
        'AND NVL(FTRANSF,''A'')<>''I''';
  DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
  pbEstado.Position:=pbEstado.Position+1;
  lbEstado.Caption:='';
  lbEstado.Refresh;
  lbEstado.Caption:='Verificando Codigo Modular';
  lbEstado.Refresh;
  pbEstado.Position:=pbEstado.Position+1;

  // FCCODMOD : El Codigo Modular ha Cambiado  = 3
  {xSQL:='UPDATE COB304 SET '+
        'FTRANSF=''I'', '+
        'FCCODMOD=''S'' '+
        'WHERE RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
        'AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
        'AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+' '+
        'AND NVL(ASOCODMOD,''X'')<>''X'' AND (NVL(ASOCODMODA,''X'')<>''X'') '+
        'AND FTRANSF<>''I''';}

  xSQL:='UPDATE COB304 SET '+
        'FTRANSF=''I'', '+
        'FCCODMOD=''S'' '+
        'WHERE RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
        'AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
        'AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+' '+
        'AND NVL(ASOCODMOD,''X'')<>''X'' AND (NVL(ASOCODMODA,''X'')<>''X'')';

  DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
  pbEstado.Position:=pbEstado.Position+1;
  lbEstado.Caption:='';
  lbEstado.Refresh;
  lbEstado.Caption:='Verificando Cambio Codigo Modular';
  lbEstado.Refresh;
  pbEstado.Position:=pbEstado.Position+1;

  // FCCODPAGO : El Codigo de Pago ha Cambiado  = 4
  {xSQL:='UPDATE COB304 SET '+
        'FTRANSF=''I'', '+
        'FCCODPAGO=''S'' '+
        'WHERE RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
        'AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
        'AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+' '+
        'AND NVL(ASOCODPAGO,''X'')<>''X'' AND (NVL(ASOCODPAGOA,''X'')<>''X'') '+
        'AND FTRANSF<>''I''';}

  xSQL:='UPDATE COB304 C SET FTRANSF=''I'', FCCODPAGO=''S'' '+
        'WHERE C.ASOCODPAGO<>(SELECT B.ASOCODPAGO FROM COB304 A, APO201 B '+
                             'WHERE A.ASOID=C.ASOID '+
                             'AND A.ASOID=B.ASOID(+) '+
                             'AND RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
                             'AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
                             'AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+') '+
        'AND RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
        'AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
        'AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+' '+
        'AND NVL(FTRANSF,''A'')<>''I''';
  try
    DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
  Except
    ErrorMsg(Caption,'Se a Producido un Error al realizar la Verificación del Codigo Modular');
  end;
  pbEstado.Position:=pbEstado.Position+1;
  lbEstado.Caption:='';
  lbEstado.Refresh;
  pbEstado.Position:=pbEstado.Position+1;

  //	FCUSE : La USE ha cambiado = 5
  lbEstado.Caption:='Verificando Cambio Codigo de Pago';
  lbEstado.Refresh;
  {xSQL:='UPDATE COB304 SET '+
        'FTRANSF=''I'', '+
        'FCUSE=''S'' '+
        'WHERE RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
        'AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
        'AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+' '+
        'AND NVL(USEID,''X'')<>''X'' AND (NVL(USEIDA,''X'')<>''X'') '+
        'AND FTRANSF<>''I''';}

  xSQL:='UPDATE COB304 C SET FTRANSF=''I'', FCUSE=''S'' '+
        'WHERE C.USEID<>(SELECT B.USEID FROM COB304 A, APO201 B '+
                        'WHERE A.ASOID=C.ASOID '+
                        'AND A.ASOID=B.ASOID(+) '+
                        'AND RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
                        'AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
                        'AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+') '+
        'AND RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
        'AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
        'AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+' '+
        'AND NVL(FTRANSF,''A'')<>''I''';

  try
    DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
  Except
    ErrorMsg(Caption,'Se a Producido un Error al realizar la Verificación del Codigo de Pago');
  end;
  pbEstado.Position:=pbEstado.Position+1;
  lbEstado.Caption:='';
  lbEstado.Refresh;
  lbEstado.Caption:='Verificando la USE';
  lbEstado.Refresh;
  pbEstado.Position:=pbEstado.Position+1;
    //	FNMONTO :  No hay Montos  = 6
  xSQL:='UPDATE COB304 SET '+
        'FTRANSF=''I'', '+
        'FNMONTO=''S'' '+
        'WHERE RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
        'AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
        'AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+' '+
        'AND (NVL(TRANSCUO,0)=0) '+
        'AND (NVL(TRANSAPO,0)=0) '+
        'AND (NVL(TRANSMTO,0)=0) '+
        'AND NVL(FTRANSF,''A'')<>''I''';
  DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
  pbEstado.Position:=pbEstado.Position+1;
  lbEstado.Caption:='';
  lbEstado.Refresh;
  lbEstado.Caption:='Verificando Montos';
  lbEstado.Refresh;
  pbEstado.Position:=pbEstado.Position+1;

  //	FMAPORTE : Aporte Mayor al Establecido
  xSQL:='UPDATE COB304 SET '+
        'FTRANSF=''I'', '+
        'FMAPORTE=''S'' '+
        'WHERE RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
        'AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
        'AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+' '+
        'AND EXISTS (SELECT APOANO, APOMES, APOVALOR FROM APO117 '+
        'WHERE (TRANSANO=APOANO(+)) AND '+
        '(TRANSMES=APOMES(+)) AND '+
        '(TRANSAPO>APOVALOR)) '+
        'AND NVL(FTRANSF,''A'')<>''I''';
  DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
  pbEstado.Position:=pbEstado.Position+1;
  lbEstado.Caption:='';
  lbEstado.Refresh;
  lbEstado.Caption:='Verificando Aportes';
  lbEstado.Refresh;
  pbEstado.Position:=pbEstado.Position+1;

  //	FSCREDITO : El Asociado no tiene Créditos
  xSQL:='UPDATE COB304 A SET '+
        'A.FTRANSF=''I'', '+
        'A.FSCREDITO=''S'' '+
        'WHERE A.RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
        'AND A.DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
        'AND A.USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+' '+
        'AND NVL(A.TRANSAPO,0)<>0 '+
        'AND EXISTS '+
        '(SELECT B.CRESDOACT,B.CRECUOTA '+
        'FROM CRE301 B,APO117 C '+
        'WHERE (A.TRANSANO=C.APOANO '+
        'AND A.TRANSMES=C.APOMES) '+
        'AND (A.TRANSAPO-C.APOVALOR)>0 '+
        'AND A.ASOID=B.ASOID(+) '+
        'AND B.CRESDOACT>0 '+
        ') '+
        'AND NVL(A.FTRANSF,''A'')<>''I''';
  DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
  pbEstado.Position:=pbEstado.Position+1;
  lbEstado.Caption:='';
  lbEstado.Refresh;
  lbEstado.Caption:='Verificando Créditos';
  lbEstado.Refresh;
  pbEstado.Position:=pbEstado.Position+1;

  //	FSCREDITO : El Asociado no tiene Créditos = 8
  xSQL:='UPDATE COB304 A SET '+
        'A.FTRANSF=''I'', '+
        'A.FSCREDITO=''S'' '+
        'WHERE A.RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
        'AND A.DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
        'AND A.USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+' '+
        'AND NVL(A.TRANSAPO,0)<>0 '+
        'AND EXISTS ('+
          'SELECT B.CRESDOACT,B.CRECUOTA '+
          'FROM CRE301 B,APO117 C '+
          'WHERE (A.TRANSANO=C.APOANO '+
          'AND A.TRANSMES=C.APOMES) '+
          'AND A.TRANSCUO>0 '+
          'AND A.ASOID=B.ASOID(+) '+
          'AND B.CRESDOACT=0) '+
        'AND NVL(A.FTRANSF,''A'')<>''I''';
  DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
  pbEstado.Position:=pbEstado.Position+1;
  lbEstado.Caption:='';
  lbEstado.Refresh;
  lbEstado.Caption:='Verificando Créditos';
  lbEstado.Refresh;
  pbEstado.Position:=pbEstado.Position+1;

    //	FEAPORTE  : Aporte Menor al Establecido
  xSQL:='UPDATE COB304 SET '+
        'FTRANSF=''I'', '+
        'FEAPORTE=''S'' '+
        'WHERE RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
        'AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
        'AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+' '+
        'AND EXISTS (SELECT APOANO, APOMES, APOVALOR FROM APO117 '+
          'WHERE (TRANSANO=APOANO(+)) AND '+
          '(TRANSMES=APOMES(+)) AND '+
          '(TRANSAPO<APOVALOR)) '+
        'AND NVL(FTRANSF,''A'')<>''I''';
  //DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
  pbEstado.Position:=pbEstado.Position+1;
  lbEstado.Caption:='';
  lbEstado.Refresh;
  lbEstado.Caption:='Verificando Aportes';
  lbEstado.Refresh;
  pbEstado.Position:=pbEstado.Position+1;

  // FDAPORTE :  Doble Aportación
  xSQL:='UPDATE COB304 A SET '+
        'A.FTRANSF=''I'', '+
        'A.FDAPORTE=''S'' '+
        'WHERE A.RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
        'AND A.DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
        'AND A.USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+' '+
        'AND NVL(A.TRANSAPO,0)<>0 '+
        'AND EXISTS ('+
          'SELECT COUNT(B.ASOID) '+
          'FROM APO301 B '+
          'WHERE A.ASOID=B.ASOID(+) '+
          'AND B.TRANSANO=A.TRANSANO '+
          'AND B.TRANSMES=A.TRANSMES '+
          'GROUP BY B.ASOID '+
          'HAVING COUNT(B.ASOID)>1) '+
        'AND NVL(A.FTRANSF,''A'')<>''I''';
  //DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
  pbEstado.Position:=pbEstado.Position+1;
  lbEstado.Caption:='';
  lbEstado.Refresh;
  lbEstado.Caption:='Verificando Aportes';
  lbEstado.Refresh;
  pbEstado.Position:=pbEstado.Position+1;

  lbEstado.Caption:='';
  lbEstado.Refresh;
  lbEstado.Caption:='Finalizando ...';
  lbEstado.Refresh;
  pbEstado.Position:=pbEstado.Position+1;

  //FMCREDITO: Cuota de Credito mayor         = 11
  //FECREDITO: Cuota de Credito menor         = 12

  DM1.cdsAutdisk.DisableControls;

  xSQL:='SELECT * FROM COB304 '+
        'WHERE RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
        'AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
        'AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);
  DM1.cdsAutdisk.Close;
  DM1.cdsAutdisk.DataRequest(xSQL);
  DM1.cdsAutdisk.Open;

  DM1.cdsAutdisk.IndexFieldNames:='';
  DM1.cdsAutdisk.IndexFieldNames:='FTRANSF';
  DM1.cdsAutdisk.Filter:='FTRANSF=''I'' ';
  DM1.cdsAutdisk.Filtered:=True;

  pbEstado.Max:=0;
  pnlEstado.Visible:=False;

  xRecInc:=DM1.cdsAutdisk.RecordCount;
  if DM1.cdsAutdisk.RecordCount >= 1 Then
  begin
    xInc:=1;
  end;

  DM1.cdsAutdisk.IndexFieldNames:='';
  DM1.cdsAutdisk.Filtered:=False;
  DM1.cdsAutdisk.EnableControls;

  if xInc=1 Then
  begin
    if not Question(Caption, 'Total de Inconsistencias :  '+FloatToStr(xRecInc)+'  Registros '+#13+#13+
                  '¡ Solo se Transferira los Registros SIN INCONSISTENCIAS ! '+#13+#13+#13+'¿Desea Continuar?') then
    begin
      Screen.Cursor:=crDefault;
      exit;
    end;
  end;

  DM1.cdsAutdisk.IndexFieldNames:='TRANSMTO';
  DM1.cdsAutdisk.Filter:='(TRANSMTO > 0) AND (FTRANSF<>''I'' OR FTRANSF IS NULL OR FTRANSF='''') AND FTRANSFAC<>''S''';
  DM1.cdsAutdisk.Filtered:=True;

  if DM1.cdsAutDisk.RecordCount = 0 then
  //if xRecInc = DM1.cdsAutDisk.RecordCount then
  begin
    Screen.Cursor:=crDefault;
    Information(Caption, 'No Existe Información a Transferir');
    DM1.cdsAutdisk.Filtered:=False;
    DM1.cdsAutdisk.IndexFieldNames:='';
    DM1.cdsAutdisk.Filter:='';
    DM1.cdsAutdisk.Filtered:=True;
    Exit;
  end;

  if Question(caption, 'Usted Insertará todos los Registros hacia las Tablas de Aportes y Créditos.'+#13+#13+
                ' ¿Está seguro de Insertarlos? ') then
  begin

    if DM1.cdsAutDisk.RecordCount > 0 Then
    begin
      DM1.cdsAutDisk.DisableControls;

      sFecha := FormatDateTime(wFormatFecha, dbdtpFecOperacion.DateTime);
      sSQL := 'SELECT * FROM TGE114 WHERE FECHA='+quotedstr(sFecha);
      DM1.FiltraCDS(DM1.cdsPeriodo, sSQL);

      xAno    := DM1.cdsPeriodo.fieldbyName('FECANO').asString;
      xMes    := DM1.cdsPeriodo.fieldbyName('FECMES').asString;
      xDia    := DM1.cdsPeriodo.fieldbyName('FECDIA').asString;
      xAnoMes := xAno+xMes;
      xTrim   := DM1.cdsPeriodo.fieldbyName('FECTRIM').asString;
      xSem    := DM1.cdsPeriodo.fieldbyName('FECSEM').asString;
      xSs     := DM1.cdsPeriodo.fieldbyName('FECSS').asString;
      xAaTri  := DM1.cdsPeriodo.fieldbyName('FECAATRI').asString;
      xAaSem  := DM1.cdsPeriodo.fieldbyName('FECAASEM').asString;
      xAass   := DM1.cdsPeriodo.fieldbyName('FECAASS').asString;

      xForPagoId:=dm1.DisplayDescrip('prvSQL','COB101','FORPAGOID','FORPAGOABR='+QuotedStr(DM1.cdsAutDisk.FieldByName('FORPAGOID').AsString),'FORPAGOID');

      DM1.cdsAutDisk.First;
      while Not DM1.cdsAutDisk.EOF Do
      begin
        xSQL:='INSERT INTO APO301 ('+
                'ASOID, TRANSID, USEID, USEABR, UPAGOID, UPAGOABR, UPROID, '+
                'UPROABR, TMONID, BANCOID, CCBCOID, TRANSNOPE, TRANSFOPE, '+
                'TRANSANO, TRANSMES, TRANSMTO, TRANSINTID, USUARIO, ASOCODMOD, ASOCODAUX, '+
                'FORPAGOID, ASOAPENOM, FORPAGOABR, DPTOID, DPTOABR, CIUDID, '+
                'FREG, HREG, TRANSAAMM, TRANSAATRI, TRANSTRIM, TRANSSEM, TRANSAASEM, APOSEC, CIAID) '+

              'SELECT A.ASOID, ''APORTE'', '+QuotedStr(DM1.cdsAutDisk.FieldByName('USEID').AsString)+', '+
              'B.USEABRE, '+QuotedStr(DM1.cdsAutDisk.FieldByName('UPAGOID').AsString)+', '+
              'C.UPAGOABR, '+QuotedStr(DM1.cdsAutDisk.FieldByName('UPROID').AsString)+', '+
              'D.UPROABR, ''N'', '+QuotedStr(DM1.cdsAutDisk.FieldByName('BANCOID').AsString)+', '+
              QuotedStr(DM1.cdsAutDisk.FieldByName('CCBCOID').AsString)+', '+
              QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSNOPE').AsString)+', '+
              wRepFuncDate+QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSFOPE').AsString)+'), '+
              QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSANO').AsString)+', '+
              QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSMES').AsString)+', '+
              DM1.cdsAutDisk.FieldByName('TRANSMTO').AsString+', ''APO'', '+
              QuotedStr(DM1.cdsAutDisk.FieldByName('USUARIO').AsString)+', '+
              'A.ASOCODMOD, A.ASOCODAUX, '+QuotedStr(xForPagoId)+', '+
              'A.ASOAPENOM, E.FORPAGOABR, A.DPTOID, F.DPTOABR, A.CIUDID, SYSDATE, SYSDATE, '+
              QuotedStr(xAnoMes)+', '+ QuotedStr(xAaTri)+', '+ QuotedStr(xTrim)+', '+
              QuotedStr(xSem)+', '+ QuotedStr(xAaSem)+', '+
              QuotedStr(DM1.cdsAutDisk.FieldByName('TRANSANO').AsString+DM1.cdsAutDisk.FieldByName('TRANSMES').AsString)+', ''02'' '+

              'FROM APO201 A, APO101 B, APO103 C, APO102 D, COB101 E, APO158 F '+
              'WHERE A.ASOID='+QuotedStr(DM1.cdsAutDisk.FieldByName('ASOID').AsString)+' '+
              'AND A.USEID=B.USEID '+
              'AND B.USEID='+QuotedStr(DM1.cdsAutDisk.FieldByName('USEID').AsString)+' '+
              'AND A.UPAGOID=C.UPAGOID '+
              'AND C.UPAGOID='+QuotedStr(DM1.cdsAutDisk.FieldByName('UPAGOID').AsString)+' '+
              'AND A.UPROID=D.UPROID '+
              'AND D.UPROID='+QuotedStr(DM1.cdsAutDisk.FieldByName('UPROID').AsString)+' '+
              'AND E.FORPAGOABR='+QuotedStr(DM1.cdsAutDisk.FieldByName('FORPAGOID').AsString)+' '+
              'AND F.DPTOID(+)=A.DPTOID '+
              'AND F.DPTOID(+)='+QuotedStr(DM1.cdsAutDisk.FieldByName('DPTOID').AsString);
        DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

        DM1.cdsAutdisk.Edit;
        DM1.cdsAutdisk.FieldByName('FTRANSFAC').AsString:='S';
        cdsPost(DM1.cdsAutdisk);
        DM1.cdsAutdisk.Post;
        DM1.ControlTran;

        DM1.cdsAutDisk.Next;
      end;
      DM1.cdsAutDisk.EnableControls;
    end;

    DM1.cdsAutdisk.IndexFieldNames:='';
    DM1.cdsAutdisk.Filtered:=False;

    DM1.cdsAutdisk.IndexFieldNames:='TRANSMTO';
    DM1.cdsAutdisk.Filter:='(TRANSMTO > 0) AND (FTRANSF<>''I'' OR FTRANSF IS NULL OR FTRANSF='''') AND FTRANSFAC<>''S''';
    //DM1.cdsAutdisk.Filter:='(TRANSMTO IS NULL OR TRANSMTO=0) AND (FTRANSF<>''I'' OR FTRANSF IS NULL OR FTRANSF='''')';
    DM1.cdsAutdisk.Filtered:=True;

    if DM1.cdsAutdisk.RecordCount > 0 Then
    begin
      DM1.cdsAutdisk.DisableControls;
      DM1.cdsAutdisk.First;
      while Not DM1.cdsAutdisk.Eof Do
      begin
        if DM1.cdsAutDisk.FieldByName('TRANSCUO').AsFloat > 0 then
        begin
          xSQL:='INSERT INTO CRE310 ('+
                  'ASOCODMOD, ASOCODAUX, USEID, ASOCODPAGO, TIPCREID, CREDID, CRECUOTA, CREMONLOC, CREMONEXT, '+
                  'CREFPAG, CREAMORT, CREINTERES, CREFLAT, CREMTOCOB, TCAMBIO, USUARIO, FREG, HREG, CIAID, ASOID, '+
                  'UPROID, DPTOID, UPAGOID, BANCOID, CCBCOID, ASOAPENOM, CIUDID, ARCHIVOFTP) '+
                'SELECT ASOCODMOD, ''HNY'', USEID, ASOCODPAGO, ''HNY'', ''HNY'', 0, 0, 0, '+
                QuotedStr(FormatDateTime(wFormatFecha,dbdtpFecOperacion.Date))+', '+
                DM1.cdsAutDisk.FieldByName('TRANSMTO').AsString+', '+
                DM1.cdsAutDisk.FieldByName('TRANSMTO').AsString+', '+
                '0, '+
                DM1.cdsAutDisk.FieldByName('TRANSMTO').AsString+', '+
                DM1.cdsAutDisk.FieldByName('TRANSMTO').AsString+', '+QuotedStr(DM1.wUsuario)+', SYSDATE, SYSDATE, ''HN'', ASOID, '+
                QuotedStr(DM1.cdsAutDisk.FieldByName('UPROID').AsString)+', ''HNY'', '+
                QuotedStr(DM1.cdsAutDisk.FieldByName('UPAGOID').AsString)+', '+
                QuotedStr(dblcBanco.Text)+', ''HNY'', '+QuotedStr(Trim(DM1.cdsAutDisk.FieldByName('ASOAPENOM').AsString))+', '+
                '''HNY'', ''HNY'' '+
                'FROM APO201 A '+
                'WHERE A.ASOID='+QuotedStr(DM1.cdsAutDisk.FieldByName('ASOID').AsString);

          //DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
        end;
        DM1.cdsAutdisk.Next;
      end;
    DM1.cdsAutdisk.EnableControls;
    end;

    DM1.cdsAutdisk.Filtered:=False;
    DM1.cdsAutdisk.IndexFieldNames:='';
    DM1.cdsAutdisk.Filter:='';
    DM1.cdsAutdisk.Filtered:=True;
    ShowMessage('Transferencia Finalizada');
  end;

  ActualizaFooter;
  Screen.Cursor:=crDefault;
end;

procedure TFIngresoLote.cbMarcaClick(Sender: TObject);
var
  xMarca2 : TBookMark;
begin
  Screen.Cursor:=crHourGlass;
  If cbMarca.Checked Then
  Begin
    DM1.cdsAutdisk.DisableControls;
    xMarca2:=DM1.cdsAutdisk.GetBookmark;
    DM1.cdsAutdisk.First;
    While Not DM1.cdsAutdisk.EOF DO
    Begin
      If DM1.cdsAutdisk.FieldByName('FREGCOB').AsString<>'S' Then
      Begin
        DM1.cdsAutdisk.Edit;
        DM1.cdsAutdisk.FieldByName('FREGCOB').AsString:='S';
        DM1.cdsAutdisk.Post;
      End;
      DM1.cdsAutdisk.Next;
    End;
    xBorra:='S';
    DM1.cdsAutdisk.GotoBookmark(xMarca2);
    DM1.cdsAutdisk.EnableControls;
    dbgAportes.RefreshDisplay;
  End
  Else
  Begin
    DM1.cdsAutdisk.DisableControls;
    xMarca2:=DM1.cdsAutdisk.GetBookmark;
    DM1.cdsAutdisk.First;
    While Not DM1.cdsAutdisk.EOF DO
    Begin
      If DM1.cdsAutdisk.FieldByName('FREGCOB').AsString='S' Then
      Begin
        DM1.cdsAutdisk.Edit;
        DM1.cdsAutdisk.FieldByName('FREGCOB').Clear;
        DM1.cdsAutdisk.Post;
      End;
      DM1.cdsAutdisk.Next;
    End;
    DM1.cdsAutdisk.GotoBookmark(xMarca2);
    DM1.cdsAutdisk.EnableControls;
    dbgAportes.RefreshDisplay;
  End;
  Screen.Cursor:=crDefault;
end;

procedure TFIngresoLote.bbtnAutdiskClick(Sender: TObject);
var
  xSQL:String;
begin
  {if Length(dblcdUse.Text)=0 then
  begin
    ShowMessage('Debe Seleccionar la USE');
    dblcdUse.SetFocus;
    exit;
  end;}
  if Length(speAno.Text)=0 then
  begin
    ShowMessage('Debe registrar el Año');
    speAno.SetFocus;
    exit;
  end;
  if Length(speMes.Text)=0 then
  begin
    ShowMessage('Debe registrar el Mes');
    speMes.SetFocus;
    exit;
  end;
  //TNumericField(DM1.cdsCobxUse.FieldByName('RCOBAPOVAL')).DisplayFormat:='########0.00';
  //TNumericField(DM1.cdsCobxUse.FieldByName('RCOBAPOVAL')).EditFormat:='########0.00';

  if (dbeImpAporte.Text='') or (StrToFloat(StringReplace(dbeImpAporte.Text,',','',[rfReplaceAll])) < 1) Then
  begin
    ShowMessage('Aporte Incorrecto');
    dbeImpAporte.SetFocus;
    exit;
  end;

  xSQL:='SELECT APOVALOR '+
        'FROM APO117 '+
        'WHERE APOANO='+QuotedStr(speAno.Text)+' '+
        'AND APOMES='+QuotedStr(speMes.Text);
  dm1.cdsReporte1.Close;
  dm1.cdsReporte1.DataRequest(xSQL);
  dm1.cdsReporte1.Open;

  if dm1.cdsReporte1.FieldByName('APOVALOR').AsFloat <> DM1.cdsCobxUse.FieldByName('RCOBAPOVAL').AsFloat then
  begin
     Information(Caption, 'El Monto del Aporte no Coincide con el del Registrado');
  end;

  bbtnAutDisk.Enabled:=False;
  bbtnIngresaAporte.Enabled:=False;

  Screen.Cursor:=crHourGlass;
  xSQL:='SELECT ARCHIVO, PERIODO, UPROID, USUARIO, FREG, FL_BAJADO, FL_IMPORT, FL_VERIFI, FL_TRANSF '+
        'FROM COB312 '+
        //'WHERE USEID='+QuotedStr(DM1.cdsUse.FieldByName('USEID').AsString)+' '+
        'WHERE UPROID='+QuotedStr(DM1.cdsCobxUse.FieldByName('UPROID').AsString)+' '+
        //'AND TRIM(UPAGOID)='+QuotedStr(DM1.cdsCobxUse.FieldByName('UPAGOID').AsString)+' '+
        'AND PERIODO='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBANO').AsString+DM1.cdsCobxUse.FieldByName('RCOBMES').AsString)+' '+
        'AND FL_VERIFI=''S''';
        //'GROUP BY ARCHIVO, TRANSANO, TRANSMES, USEID, UPAGOID, UPROID';

  {xSQL:='SELECT ARCHIVO, TRANSANO||TRANSMES AS PERIODO, USEID, UPAGOID, UPROID, '+
        'MAX(USUARIO) AS USUARIO, MAX(FREG) AS FREG '+
        'FROM COB310 '+
        //'WHERE USEID='+QuotedStr(DM1.cdsUse.FieldByName('USEID').AsString)+' '+
        'WHERE UPROID='+QuotedStr(DM1.cdsCobxUse.FieldByName('UPROID').AsString)+' '+
        'AND TRIM(UPAGOID)='+QuotedStr(DM1.cdsCobxUse.FieldByName('UPAGOID').AsString)+' '+
        'AND TRANSANO='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBANO').AsString)+' '+
        'AND TRANSMES='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBMES').AsString)+' '+
        'GROUP BY ARCHIVO, TRANSANO, TRANSMES, USEID, UPAGOID, UPROID';}
  FListaAutDisk:=TFListaAutDisk.Create(Self);
  FListaAutDisk.dbgListaAutdisk.Selected.Clear;
  FListaAutDisk.dbgListaAutdisk.Selected.Add('ARCHIVO'#9'20'#9'Archivo');
  FListaAutDisk.dbgListaAutdisk.Selected.Add('PERIODO'#9'7'#9'Periodo');
  FListaAutDisk.dbgListaAutdisk.Selected.Add('UPROID'#9'5'#9'Unid. de~Proceso');
  FListaAutDisk.dbgListaAutdisk.Selected.Add('FL_TRANSF'#9'6'#9'Transf.');
  FListaAutDisk.dbgListaAutdisk.Selected.Add('USUARIO'#9'12'#9'Usuario');
  FListaAutDisk.dbgListaAutdisk.Selected.Add('FREG'#9'10'#9'Fecha~Registro');

  DM1.cdsQry2.Close;
  DM1.cdsQry2.DataRequest(xSQL);
  DM1.cdsQry2.Open;
  Screen.Cursor:=crDefault;
  if DM1.cdsQry2.RecordCount > 0 Then
  begin
    dblcdUse.Enabled:=False;
    FListaAutDisk.ShowModal;
  end
  else
  begin
    Information(Caption, 'No se ha Encontrado Ningun Archivo');
  end;
  DM1.cdsQry2.Close;
  FListaAutDisk.Free;  
  dblcdUse.Enabled:=False;
  bbtnAutDisk.Enabled:=True;
  bbtnIngresaAporte.Enabled:=True;
end;

procedure TFIngresoLote.bbtnInconsistenciaClick(Sender: TObject);
begin
  If pnlFiltros.Visible=True Then
  Begin
    pnlFiltros.Visible:=False;
  End
  Else
  Begin
    Ocultapaneles;
    pnlFiltros.Visible:=True;
  End;
{  If DM1.cdsAutdisk.RecordCount=0 Then
  Begin
    xSql:= ' SELECT A.FREGCOB,A.TRANSANO,A.TRANSMES,A.ASOID,A.ASOCODMOD,A.ASOAPENOM,A.TRANSMTO,A.TRANSAPO, '
          +' A.TRANSCUO,A.BANCOID,A.CCBCOID,A.USUARIO,A.FREG,A.HREG, '
          +' A.USEID,A.UPROID,A.UPAGOID,A.DPTOID,A.TMONID, '
          +' A.TRANSNOPE,A.TRANSFOPE,A.FORPAGOID,A.APOSEC,A.FTRANSF '
          +' FROM COB304 A '
          +' WHERE RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
          +' AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
          +' AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);
    DM1.FiltraCDS(DM1.cdsAutdisk,xSql );
    ActualizaFooter;
    ShowMessage('Total de Registros sin Inconsistencias :  '+IntToStr(DM1.cdsAutdisk.RecordCount)+ ' Registros ');
    exit;
  End;
  dbgAportes.Color:=clBtnFace;
  ShowMessage('Total de Inconsistencias :  '+IntToStr(DM1.cdsAutdisk.RecordCount)+ ' Registros ');}
end;

procedure TFIngresoLote.spdTotalRegClick(Sender: TObject);
begin
  pnlFiltros.Visible:=False;
  Screen.Cursor:=crHourGlass;
  {xSQL:=' SELECT * FROM COB304 '
         +' WHERE RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
           +' AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
           +' AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);
  DM1.cdsAutdisk.Close;
  DM1.cdsAutdisk.DataRequest(xSQL);
  DM1.cdsAutdisk.Open; }
  DM1.wTDatos:='T';  // Para Mostrar Todos los Registros
  DM1.cdsAutdisk.IndexFieldNames:='';
  DM1.cdsAutdisk.Filter:='';
  DM1.cdsAutdisk.Filtered:=True;

  dbgAportes.Color:=$00C8E1DF;
  ActualizaFooter;
  Screen.Cursor:=crDefault;
  ShowMessage('Total de Registros :  '+IntToStr(DM1.cdsAutdisk.RecordCount)+ ' Registros ');
end;

procedure TFIngresoLote.spdInconsistClick(Sender: TObject);
begin
  pnlFiltros.Visible:=False;
  Screen.Cursor:=crHourGlass;
  DM1.cdsAutdisk.IndexFieldNames:='FTRANSF';
  DM1.cdsAutdisk.Filter:=' FTRANSF=''I'' ';
  DM1.cdsAutdisk.Filtered:=True;
  DM1.wTDatos:='I';  // Para Mostrar Todos los Registros
  dbgAportes.Color:=clBtnFace;
  DM1.cdsAutdisk.RecordCount;
  dbgAportes.ColumnByName('TRANSCUO').FooterValue  :=FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSCUO)','FTRANSF=''I'''),ffNumber, 15, 2);
  dbgAportes.ColumnByName('TRANSAPO').FooterValue  :=FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSAPO)','FTRANSF=''I'''),ffNumber, 15, 2);
  dbgAportes.ColumnByName('TRANSMTO').FooterValue  :=FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSMTO)','FTRANSF=''I'''),ffNumber, 15, 2);
  dbgAportes.ColumnByName('ASOAPENOM').FooterValue :='Total  '+FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'COUNT(ASOAPENOM)','FTRANSF=''I'''),ffNumber, 15,0)+' Registros';
  ShowMessage('Total de Registros con Inconsistencias :  '+IntToStr(DM1.cdsAutdisk.RecordCount)+ ' Registros ');
  Screen.Cursor:=crDefault;

  {xSQL:=' SELECT * FROM COB304 '
       +' WHERE RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
         +' AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
         +' AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
         +' AND FTRANSF='+QuotedStr('I');

  DM1.cdsAutdisk.Close;
  DM1.cdsAutdisk.DataRequest(xSQL);
  DM1.cdsAutdisk.Open;
  If DM1.cdsAutdisk.RecordCount>=1 Then
  Begin
    dbgAportes.Color:=clBtnFace;
    ConfiguraGridAportes;
    ActualizaFooter;

    ShowMessage('Total de Registros con Inconsistencias :  '+IntToStr(DM1.cdsAutdisk.RecordCount)+ ' Registros ');
    Screen.Cursor:=crDefault;
  End
  Else
  Begin
    pnlFiltros.Visible:=False;
    Screen.Cursor:=crHourGlass;
    xSQL:=' SELECT * FROM COB304 '
         +' WHERE RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
           +' AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
           +' AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);
    DM1.cdsAutdisk.Close;
    DM1.cdsAutdisk.DataRequest(xSQL);
    DM1.cdsAutdisk.Open;
    dbgAportes.Color:=$00C8E1DF;
    ActualizaFooter;
    ShowMessage('No hay Inconsistencias :  '+IntToStr(DM1.cdsAutdisk.RecordCount)+ ' Registros ');
    Screen.Cursor:=crDefault;
  End;}
end;

procedure TFIngresoLote.spdSinInconsClick(Sender: TObject);
begin
  pnlFiltros.Visible:=False;
  Screen.Cursor:=crHourGlass;
  DM1.cdsAutdisk.IndexFieldNames:='FTRANSF';
  DM1.cdsAutdisk.Filter:='FTRANSF IS NULL OR FTRANSF=''''';
  DM1.cdsAutdisk.Filtered:=True;
  DM1.wTDatos:='S';  // Para Mostrar Todos los Registros
  dbgAportes.ColumnByName('TRANSCUO').FooterValue :=FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSCUO)','FTRANSF IS NULL OR FTRANSF='''''),ffNumber, 15, 2);
  dbgAportes.ColumnByName('TRANSAPO').FooterValue :=FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSAPO)','FTRANSF IS NULL OR FTRANSF='''''),ffNumber, 15, 2);
  dbgAportes.ColumnByName('TRANSMTO').FooterValue :=FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSMTO)','FTRANSF IS NULL OR FTRANSF='''''),ffNumber, 15, 2);
  dbgAportes.ColumnByName('ASOAPENOM').FooterValue:='Total  '+FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'COUNT(ASOAPENOM)','FTRANSF IS NULL OR FTRANSF='''''),ffNumber, 15,0)+' Registros';
  {xSQL:=' SELECT * FROM COB304 '
         +' WHERE RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)
           +' AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)
           +' AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)
           +' AND NVL(FTRANSF,''S'')<>''S'' ';
  DM1.cdsAutdisk.Close;
  DM1.cdsAutdisk.DataRequest(xSQL);
  DM1.cdsAutdisk.Open;}
  //ActualizaFooter;
  dbgAportes.Color:=$00C8E1DF;
  Screen.Cursor:=crDefault;
  ShowMessage('Total de Registros sin Inconsistencias :  '+IntToStr(DM1.cdsAutdisk.RecordCount)+ ' Registros ');
end;

procedure TFIngresoLote.bbtnBuscaIncClick(Sender: TObject);
begin
  if pnlBuscaInc.Visible= True Then
  begin
    pnlBuscaInc.Visible:=False;
  end
  else
  begin
    Ocultapaneles;
    if DM1.cdsAutdisk.RecordCount>=1 Then
    begin
      pnlBuscaInc.Visible:=True;
    end;
  end;
end;

procedure TFIngresoLote.Button1Click(Sender: TObject);
begin
  pnlBuscaInc.Visible:=False;
end;

procedure TFIngresoLote.Button2Click(Sender: TObject);
begin
  pnlFiltros.Visible:=False;
end;

procedure TFIngresoLote.SpeedButton4Click(Sender: TObject);
var
  xASOID : String;
begin
    If (DM1.cdsCobxUse.Modified)
       or (DM1.cdsCobxUse.ChangeCount>0) Then
    Begin
      DM1.cdsCobxUse.Post;
    End;
    If (DM1.cdsAutDisk.Modified)
       or (DM1.cdsAutDisk.ChangeCount>0) Then
    Begin
      DM1.cdsAutDisk.Post;
    End;

    DM1.ControlTran;

    wSQL:=' SELECT * FROM COB304 '+
          ' WHERE RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+
            ' AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+
            ' AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+
            ' AND FNASOID=''S'' AND FTRANSF=''I''';
    DM1.cdsQry2.Close;
    DM1.cdsQry2.DataRequest(wSQL);
    DM1.cdsQry2.Open;

    If DM1.cdsQry2.RecordCount>=1 Then
    Begin
      DM1.cdsQry2.First;
      While Not DM1.cdsQry2.EOF Do
      Begin
        xASOID:=DM1.StrZero(DM1.MaxSQL('APO201','ASOID', ''),10);
        wSQL:='INSERT INTO APO201 ('+
            ' ASOID, '+
            ' ASOCODMOD, '+
            ' USEID, '+
            ' UPROID, '+
            ' UPAGOID, '+
            ' DPTOID, '+
            ' BANCOID, '+
            ' ASONCTA, '+
            ' USUARIO, '+
            ' FREG,'+
            ' HREG,'+
            ' ASOAPENOM, '+
            ' ASOCODPAGO '+
        ') VALUES ('+
            QuotedStr(xASOID)+','+
            QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString)+','+
            QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString)+','+
            QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString)+','+
            QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString)+','+
            QuotedStr(DM1.cdsQry2.FieldByName('DPTOID').AsString)+','+
            QuotedStr(DM1.cdsQry2.FieldByName('BANCOID').AsString)+','+
            QuotedStr(DM1.cdsQry2.FieldByName('CCBCOID').AsString)+','+
            QuotedStr(DM1.cdsQry2.FieldByName('USUARIO').AsString)+','+
            QuotedStr(DateTimeToStr(Date))+','+
            QuotedStr(DateTimeToStr(Date))+','+
            QuotedStr(DM1.cdsQry2.FieldByName('ASOAPENOM').AsString)+','+
            QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString)+
        ' )';
        DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

        wSQL:='INSERT INTO APO202 ('+
              ' ASOID, '+
              ' ASOCODMOD, '+
              ' ASOCODPAGO, '+
              ' USEID, '+
              ' UPROID, '+
              ' UPAGOID, '+
              ' FVIGENTE '+
        ' ) VALUES ( '+
              QuotedStr(xASOID)+','+
              QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString)+','+
              QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString)+','+
              QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString)+','+
              QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString)+','+
              QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString)+','+
              QuotedStr('S')+
        ' )';
        DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

        If DM1.cdsAutdisk.State <> dsEdit Then
        Begin
            DM1.cdsAutdisk.Edit;
        End;
        If DM1.cdsAutdisk.State = dsEdit Then
        Begin
          DM1.cdsAutdisk.FieldByName('ASOID').AsString:=xASOID;
          DM1.cdsAutdisk.FieldByName('FNASOID').Clear;
          DM1.cdsAutdisk.FieldByName('FREGCOB').Clear;
          DM1.cdsAutdisk.FieldByName('FTRANSF').Clear;
          DM1.cdsAutdisk.FieldByName('USUARIO').AsString:= DM1.wUsuario;
          DM1.cdsAutdisk.FieldByName('FREG').AsDateTime:= Date;
          DM1.cdsAutdisk.FieldByName('HREG').Clear;
          DM1.cdsAutdisk.FieldByName('HREG').AsDateTime:= Date+Time;
          CDSPost(DM1.cdsAutdisk);
          DM1.cdsAutdisk.Post;
          DM1.ControlTran;
        End;
        DM1.cdsQry2.Next;
      End;
    End
    Else
    Begin
      ShowMessage('Actualmente No Existen Registros Inconsistentes');
    End;
end;

procedure TFIngresoLote.SpeedButton5Click(Sender: TObject);
begin
    If (DM1.cdsCobxUse.Modified)
       or (DM1.cdsCobxUse.ChangeCount>0) Then
    Begin
      DM1.cdsCobxUse.Post;
    End;
    If (DM1.cdsAutDisk.Modified)
       or (DM1.cdsAutDisk.ChangeCount>0) Then
    Begin
      DM1.cdsAutDisk.Post;
    End;                  

    DM1.ControlTran;

    wSQL:=' SELECT * FROM COB304 '+
          ' WHERE RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+
            ' AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+
            ' AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+
            ' AND FREGCOB=''S'' AND FNASOID=''S'' AND FTRANSF=''I'' ';
    DM1.cdsQry2.Close;
    DM1.cdsQry2.DataRequest(wSQL);
    DM1.cdsQry2.Open;

    If DM1.cdsQry2.RecordCount>=1 Then
    Begin
      DM1.cdsQry2.First;
      While Not DM1.cdsQry2.EOF Do
      Begin
        xASOID:=DM1.StrZero(DM1.MaxSQL('APO201','ASOID',''),10);
        wSQL:='INSERT INTO APO201 ('+
            ' ASOID, '+
            ' ASOCODMOD, '+
            ' USEID, '+
            ' UPROID, '+
            ' UPAGOID, '+
            ' DPTOID, '+
            ' BANCOID, '+
            ' ASONCTA, '+
            ' USUARIO, '+
            ' FREG,'+
            ' HREG,'+
            ' ASOAPENOM, '+
            ' ASOCODPAGO '+
        ') VALUES ('+
            QuotedStr(xASOID)+','+
            QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString)+','+
            QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString)+','+
            QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString)+','+
            QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString)+','+
            QuotedStr(DM1.cdsQry2.FieldByName('DPTOID').AsString)+','+
            QuotedStr(DM1.cdsQry2.FieldByName('BANCOID').AsString)+','+
            QuotedStr(DM1.cdsQry2.FieldByName('CCBCOID').AsString)+','+
            QuotedStr(DM1.cdsQry2.FieldByName('USUARIO').AsString)+','+
            QuotedStr(DateTimeToStr(Date))+','+
            QuotedStr(DateTimeToStr(Date))+','+
            QuotedStr(DM1.cdsQry2.FieldByName('ASOAPENOM').AsString)+','+
            QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString)+
        ' )';
        DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

        wSQL:='INSERT INTO APO202 ('+
              ' ASOID, '+
              ' ASOCODMOD, '+
              ' ASOCODPAGO, '+
              ' USEID, '+
              ' UPROID, '+
              ' UPAGOID, '+
              ' FVIGENTE '+
        ' ) VALUES ( '+
              QuotedStr(xASOID)+','+
              QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString)+','+
              QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString)+','+
              QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString)+','+
              QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString)+','+
              QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString)+','+
              QuotedStr('S')+
        ' )';
        DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

        If DM1.cdsAutdisk.State <> dsEdit Then
        Begin
            DM1.cdsAutdisk.Edit;
        End;
        If DM1.cdsAutdisk.State = dsEdit Then
        Begin
          DM1.cdsAutdisk.FieldByName('ASOID').AsString:=xASOID;
          DM1.cdsAutdisk.FieldByName('FNASOID').Clear;
          DM1.cdsAutdisk.FieldByName('FREGCOB').Clear;
          DM1.cdsAutdisk.FieldByName('FTRANSF').Clear;
          DM1.cdsAutdisk.FieldByName('USUARIO').AsString:= DM1.wUsuario;
          DM1.cdsAutdisk.FieldByName('FREG').AsDateTime:= Date;
          DM1.cdsAutdisk.FieldByName('HREG').Clear;
          DM1.cdsAutdisk.FieldByName('HREG').AsDateTime:= Date+Time;
          CDSPost(DM1.cdsAutdisk);
          DM1.cdsAutdisk.Post;
          DM1.ControlTran;
        End;
        DM1.cdsQry2.Next;
      End;
    End
    Else
    Begin
      ShowMessage('Actualmente No Existen Registros Inconsistentes');
    End;
end;

procedure TFIngresoLote.spdCCodModTodClick(Sender: TObject);
begin
  if (DM1.cdsCobxUse.Modified) or (DM1.cdsCobxUse.ChangeCount>0) Then
  begin
    DM1.cdsCobxUse.Post;
  end;
  if (DM1.cdsAutDisk.Modified) or (DM1.cdsAutDisk.ChangeCount>0) Then
  begin
    DM1.cdsAutDisk.Post;
  end;
  DM1.ControlTran;

  wSQL:='SELECT * FROM COB304 '+
        'WHERE RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
        'AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
        'AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+' '+
        'AND FCCODMOD=''S'' AND FTRANSF=''I''';
  DM1.cdsQry2.Close;
  DM1.cdsQry2.DataRequest(wSQL);
  DM1.cdsQry2.Open;

  if DM1.cdsQry2.RecordCount = 0 Then
  begin
    Information(Caption, 'Actualmente No Existen Registros Inconsistentes');
    Exit;
  end;

  if Question(Caption, 'Actualizará Todos los Códigos Modulares Nuevos'+#13+#13+' ¿Desea Continuar? ') then
  begin
    DM1.cdsQry2.First;
    while Not DM1.cdsQry2.EOF Do
    begin
      wSQL:='UPDATE APO201 SET '+
            'ASOCODMOD='+QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString)+' '+
            'WHERE ASOID='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString);
      DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

      DM1.cdsQry.Close;
      xSQL:='SELECT * FROM APO202 '+
            'WHERE ASOID='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)+' '+
            'AND TRANSANO=SUBSTR(FREG,7,4) AND TRANSMES=SUBSTR(FREG,4,2)';
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Open;

      // Verifica si hay cambios para el periodo actual
      // Si existe entonces solo actualiza, sino inserta

      If DM1.cdsQry.RecordCount >= 1 Then
      Begin
        If Length(Trim(DM1.cdsQry.FieldByName('ASOCODMOD').AsString))=0 Then
        Begin
          wSQL:='UPDATE APO202 SET '+
                'ASOCODMOD='+QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString)+' '+
                'WHERE ASOID='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString);
          DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
        End
        Else
        Begin
          wSQL:='INSERT INTO APO202 ('+
                'ASOID, '+
                'ASOCODMOD, '+
                'ASOCODPAGO, '+
                'USEID, '+
                'UPROID, '+
                'UPAGOID, '+
                'FVIGENTE '+
                ') VALUES ( '+
                QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)+', '+
                QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString)+', '+
                QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString)+', '+
                QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString)+', '+
                QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString)+', '+
                QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString)+', '+
                QuotedStr('S')+
                ')';
          DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
        End;
      End
      Else
      Begin
        wSQL:='INSERT INTO APO202 ('+
              'ASOID, '+
              'ASOCODMOD, '+
              'ASOCODPAGO, '+
              'USEID, '+
              'UPROID, '+
              'UPAGOID, '+
              'FVIGENTE '+
              ') VALUES ( '+
              QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)+', '+
              QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString)+', '+
              QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString)+', '+
              QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString)+', '+
              QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString)+', '+
              QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString)+', '+
              QuotedStr('S')+
              ' )';
         DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
      End;
      wSQL:='UPDATE COB304 SET '+
            'FCCODMOD=NULL, '+
            'FREGCOB=NULL, '+
            'FTRANSF=NULL, '+
            'USUARIO='+QuotedStr(DM1.wUsuario)+', '+
            'FREG='+QuotedStr(DateTimeToStr(Date))+', '+
            'HREG='+QuotedStr(DateTimeToStr(Date))+' '+
            'WHERE ASOID='+DM1.cdsQry2.FieldByName('ASOID').AsString+' '+
            'AND RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
            'AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
            'AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);
      DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
      DM1.cdsQry2.Next;
    End;
    DM1.cdsAutdisk.Refresh;
    dbgAportes.Update;
  End;
end;

procedure TFIngresoLote.SpeedButton7Click(Sender: TObject);
begin
  if (DM1.cdsCobxUse.Modified) or (DM1.cdsCobxUse.ChangeCount>0) Then
  begin
    DM1.cdsCobxUse.Post;
  end;
  if (DM1.cdsAutDisk.Modified) or (DM1.cdsAutDisk.ChangeCount>0) Then
  begin
    DM1.cdsAutDisk.Post;
  end;
  DM1.ControlTran;

  wSQL:='SELECT * FROM COB304 '+
        'WHERE RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
        'AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
        'AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+' '+
        'AND FREGCOB=''S'' AND FCCODMOD=''S'' AND FTRANSF=''I''';
  DM1.cdsQry2.Close;
  DM1.cdsQry2.DataRequest(wSQL);
  DM1.cdsQry2.Open;

  if DM1.cdsQry2.RecordCount >= 1 Then
  begin
    if MessageDlg('Actualizará Todos los Códigos Modulares Nuevos ¿Desea Continuar? ',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      DM1.cdsQry2.First;
      while Not DM1.cdsQry2.EOF Do
      begin
        wSQL:=' UPDATE APO201 SET '+
              ' ASOCODMOD='+QuotedStr(DM1.cdsAutDisk.FieldByName('ASOCODMOD').AsString)+
              ' WHERE ASOID='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString);
        DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

        DM1.cdsQry.Close;
        xSQL:=' SELECT * FROM APO202 '+
              ' WHERE ASOID='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)+
              ' AND TRANSANO=SUBSTR('+QuotedStr(DM1.cdsQry2.FieldByName('FREG').AsString)+',7,4) '+
              ' AND TRANSMES=SUBSTR('+QuotedStr(DM1.cdsQry2.FieldByName('FREG').AsString)+',4,2) ';
        DM1.cdsQry.DataRequest(xSQL);
        DM1.cdsQry.Open;

        // Verifica si hay cambios para el periodo actual
        // Si existe entonces solo actualiza, sino inserta

        if DM1.cdsQry.RecordCount>=1 Then
        begin
          if Length(Trim(DM1.cdsQry.FieldByName('ASOCODMOD').AsString))=0 Then
          begin
            wSQL:=' UPDATE APO202 SET '+
                  ' ASOCODMOD='+QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString)+
                  ' WHERE ASOID='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString);
            DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
          end
          else
          begin
            wSQL:='INSERT INTO APO202 ('+
                  ' ASOID, '+
                  ' ASOCODMOD, '+
                  ' ASOCODPAGO, '+
                  ' USEID, '+
                  ' UPROID, '+
                  ' UPAGOID, '+
                  ' FVIGENTE '+
            ' ) VALUES ( '+
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)+','+
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString)+','+
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString)+','+
                  QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString)+','+
                  QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString)+','+
                  QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString)+','+
                  QuotedStr('S')+
            ' )';
            DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
          end;
        end
        else
        begin
          wSQL:='INSERT INTO APO202 ('+
                'ASOID, '+
                'ASOCODMOD, '+
                'ASOCODPAGO, '+
                'USEID, '+
                'UPROID, '+
                'UPAGOID, '+
                'FVIGENTE '+
                ') VALUES ('+
                QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)+', '+
                QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString)+', '+
                QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString)+', '+
                QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString)+', '+
                QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString)+', '+
                QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString)+', '+
                QuotedStr('S')+
          ')';
          DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
        end;
        wSQL:='UPDATE COB304 SET '+
              'FCCODMOD=NULL, '+
              'FREGCOB=NULL, '+
              'FTRANSF=NULL, '+
              'USUARIO='+QuotedStr(DM1.wUsuario)+', '+
              'FREG='+QuotedStr(DateTimeToStr(Date))+', '+
              'HREG='+QuotedStr(DateTimeToStr(Date))+' '+
              'WHERE ASOID='+DM1.cdsQry2.FieldByName('ASOID').AsString+' '+
              'AND RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
              'AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
              'AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);
        DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
        DM1.cdsQry2.Next;
      end;
    end;
  end
  else
  begin
    ShowMessage('Actualmente No Existen Registros Inconsistentes');
  end;
end;

procedure TFIngresoLote.SpeedButton9Click(Sender: TObject);
begin
  if (DM1.cdsCobxUse.Modified) or (DM1.cdsCobxUse.ChangeCount>0) Then
  begin
    DM1.cdsCobxUse.Post;
  end;
  if (DM1.cdsAutDisk.Modified) or (DM1.cdsAutDisk.ChangeCount>0) Then
  begin
    DM1.cdsAutDisk.Post;
  end;
  DM1.ControlTran;

  wSQL:='SELECT * FROM COB304 '+
        'WHERE RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
        'AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
        'AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+' '+
        'AND FCCODPAGO=''S'' AND FTRANSF=''I''';
  DM1.cdsQry2.Close;
  DM1.cdsQry2.DataRequest(wSQL);
  DM1.cdsQry2.Open;

  if DM1.cdsQry2.RecordCount > 0 Then
  begin
    if Question(Caption,'Actualizará Todos los Códigos de Pago Nuevos '+#13+#13'¿Desea Continuar? ') then
    begin
      DM1.cdsQry2.First;
      while Not DM1.cdsQry2.EOF Do
      begin
        wSQL:='UPDATE APO201 SET '+
              ' ASOCODPAGO='+QuotedStr(DM1.cdsAutDisk.FieldByName('ASOCODPAGO').AsString)+
              ' WHERE ASOID='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString);
        DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

        DM1.cdsQry.Close;
        xSQL:=' SELECT * FROM APO202 '+
              ' WHERE ASOID='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)+
              ' AND TRANSANO=SUBSTR('+QuotedStr(DM1.cdsQry2.FieldByName('FREG').AsString)+',7,4) '+
              ' AND TRANSMES=SUBSTR('+QuotedStr(DM1.cdsQry2.FieldByName('FREG').AsString)+',4,2) ';
        DM1.cdsQry.DataRequest(xSQL);
        DM1.cdsQry.Open;

        // Verifica si hay cambios para el periodo actual
        // Si existe entonces solo actualiza, sino inserta

        if DM1.cdsQry.RecordCount>=1 Then
        begin
          if Length(Trim(DM1.cdsQry.FieldByName('ASOCODPAGO').AsString))=0 Then
          begin
            wSQL:=' UPDATE APO202 SET '+
                  ' ASOCODPAGO='+QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString)+
                  ' WHERE ASOID='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString);
            DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
          end
          else
          begin
            wSQL:='INSERT INTO APO202 ('+
                  ' ASOID, '+
                  ' ASOCODMOD, '+
                  ' ASOCODPAGO, '+
                  ' USEID, '+
                  ' UPROID, '+
                  ' UPAGOID, '+
                  ' FVIGENTE '+
                  ' ) VALUES ( '+
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)+','+
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString)+','+
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString)+','+
                  QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString)+','+
                  QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString)+','+
                  QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString)+','+
                  QuotedStr('S')+
            ' )';
            DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
          end;
       end
       else
       begin
       wSQL:='INSERT INTO APO202 ('+
              'ASOID, '+
              'ASOCODMOD, '+
              'ASOCODPAGO, '+
              'USEID, '+
              'UPROID, '+
              'UPAGOID, '+
              'FVIGENTE '+
              ') VALUES ( '+
              QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)+', '+
              QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString)+', '+
              QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString)+', '+
              QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString)+', '+
              QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString)+', '+
              QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString)+', '+
              QuotedStr('S')+
              ')';
        DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
      End;
        wSQL:='UPDATE COB304 SET '+
              'FCCODPAGO=NULL, '+
              'FREGCOB=NULL, '+
              'FTRANSF=NULL, '+
              'USUARIO='+QuotedStr(DM1.wUsuario)+', '+
              'FREG='+QuotedStr(DateTimeToStr(Date))+', '+
              'HREG='+QuotedStr(DateTimeToStr(Date))+' '+
              'WHERE ASOID='+DM1.cdsQry2.FieldByName('ASOID').AsString+' '+
              'AND RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
              'AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
              'AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);
        DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

        DM1.cdsQry2.Next;
      End;
    End;
  End
  Else
  Begin
    ShowMessage('Actualmente No Existen Registros Inconsistentes');
  End;
end;

procedure TFIngresoLote.SpeedButton8Click(Sender: TObject);
begin
  If (DM1.cdsCobxUse.Modified) or (DM1.cdsCobxUse.ChangeCount>0) Then
  Begin
    DM1.cdsCobxUse.Post;
  End;
  If (DM1.cdsAutDisk.Modified) or (DM1.cdsAutDisk.ChangeCount>0) Then
  Begin
    DM1.cdsAutDisk.Post;
  End;

  DM1.ControlTran;

  wSQL:='SELECT * FROM COB304 '+
        'WHERE RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
        'AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
        'AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+' '+
        'AND FREGCOB=''S'' AND FCCODPAGO=''S'' AND FTRANSF=''I''';
  DM1.cdsQry2.Close;
  DM1.cdsQry2.DataRequest(wSQL);
  DM1.cdsQry2.Open;
  if DM1.cdsQry2.RecordCount >= 1 Then
  begin
    If MessageDlg('Actualizará los Códigos de Pago Nuevos ¿Desea Continuar? ',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      DM1.cdsQry2.First;
      While Not DM1.cdsQry2.EOF Do
      Begin
        wSQL:='UPDATE APO201 SET '+
              'ASOCODPAGO='+QuotedStr(DM1.cdsAutDisk.FieldByName('ASOCODPAGO').AsString)+' '+
              'ASOID='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString);
        DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

        DM1.cdsQry.Close;
        xSQL:='SELECT * FROM APO202 '+
              'WHERE ASOID='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)+' '+
              'AND TRANSANO=SUBSTR('+QuotedStr(DM1.cdsQry2.FieldByName('FREG').AsString)+',7,4) '+
              'AND TRANSMES=SUBSTR('+QuotedStr(DM1.cdsQry2.FieldByName('FREG').AsString)+',4,2)';
        DM1.cdsQry.DataRequest(xSQL);
        DM1.cdsQry.Open;

        // Verifica si hay cambios para el periodo actual
        // Si existe entonces solo actualiza, sino inserta

        If DM1.cdsQry.RecordCount>=1 Then
        Begin
          If Length(Trim(DM1.cdsQry.FieldByName('ASOCODPAGO').AsString))=0 Then
          Begin
            wSQL:='UPDATE APO202 SET '+
                  'ASOCODPAGO='+QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString)+' '+
                  'WHERE ASOID='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString);
            DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
          End
          Else
          Begin
            wSQL:='INSERT INTO APO202 ('+
                  'ASOID, '+
                  'ASOCODMOD, '+
                  'ASOCODPAGO, '+
                  'USEID, '+
                  'UPROID, '+
                  'UPAGOID, '+
                  'FVIGENTE '+
                  ') VALUES ( '+
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)+', '+
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString)+', '+
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString)+', '+
                  QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString)+', '+
                  QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString)+', '+
                  QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString)+', '+
                  QuotedStr('S')+
                  ')';
            DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
          End;
        End
        Else
        Begin
          wSQL:='INSERT INTO APO202 ('+
                'ASOID, '+
                'ASOCODMOD, '+
                'ASOCODPAGO, '+
                'USEID, '+
                'UPROID, '+
                'UPAGOID, '+
                'FVIGENTE '+
                ') VALUES ( '+
                QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)+','+
                QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString)+','+
                QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString)+','+
                QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString)+','+
                QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString)+','+
                QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString)+','+
                QuotedStr('S')+
                ')';
          DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
        End;

        wSQL:='UPDATE COB304 SET '+
              'FCCODPAGO=NULL, '+
              'FREGCOB=NULL, '+
              'FTRANSF=NULL, '+
              'USUARIO='+QuotedStr(DM1.wUsuario)+', '+
              'FREG='+QuotedStr(DateTimeToStr(Date))+', '+
              'HREG='+QuotedStr(DateTimeToStr(Date))+' '+
              'WHERE ASOID='+DM1.cdsQry2.FieldByName('ASOID').AsString+' '+
              'AND RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
              'AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
              'AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);
        DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

        DM1.cdsQry2.Next;
      end;
    end;
  end
  else
  begin
    ShowMessage('Actualmente No Existen Registros Inconsistentes');
  end;
end;

procedure TFIngresoLote.SpeedButton10Click(Sender: TObject);
begin
    If (DM1.cdsCobxUse.Modified)
       or (DM1.cdsCobxUse.ChangeCount>0) Then
    Begin
      DM1.cdsCobxUse.Post;
    End;
    If (DM1.cdsAutDisk.Modified)
       or (DM1.cdsAutDisk.ChangeCount>0) Then
    Begin
      DM1.cdsAutDisk.Post;
    End;

    DM1.ControlTran;

    wSQL:='SELECT * FROM COB304 '+
          'WHERE RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
          'AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
          'AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+' '+
          'AND FCUSE=''S'' AND FTRANSF=''I''';
    DM1.cdsQry2.Close;
    DM1.cdsQry2.DataRequest(wSQL);
    DM1.cdsQry2.Open;

    If DM1.cdsQry2.RecordCount>=1 Then
    Begin
      If MessageDlg('Actualizará Todas las Uses ¿Desea Continuar? ',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        DM1.cdsQry2.First;
        While Not DM1.cdsQry2.EOF Do
        Begin
          wSQL:='UPDATE APO201 SET '+
                'USEID='+QuotedStr(DM1.cdsAutDisk.FieldByName('USEID').AsString)+' '+
                'ASOID='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString);
          DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

          DM1.cdsQry.Close;
          xSQL:='SELECT * FROM APO202 '+
                'WHERE ASOID='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)+' '+
                'AND TRANSANO=SUBSTR('+QuotedStr(DM1.cdsQry2.FieldByName('FREG').AsString)+',7,4) '+
                'AND TRANSMES=SUBSTR('+QuotedStr(DM1.cdsQry2.FieldByName('FREG').AsString)+',4,2)';
          DM1.cdsQry.DataRequest(xSQL);
          DM1.cdsQry.Open;

          // Verifica si hay cambios para el periodo actual
          // Si existe entonces solo actualiza, sino inserta

          If DM1.cdsQry.RecordCount>=1 Then
          Begin
            If Length(Trim(DM1.cdsQry.FieldByName('USEID').AsString))=0 Then
            Begin
              wSQL:='UPDATE APO202 SET '+
                    'USEID='+QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString)+' '+
                    'WHERE ASOID='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString);
              DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
            End
            Else
            Begin
            wSQL:='INSERT INTO APO202 ('+
                  'ASOID, '+
                  'ASOCODMOD, '+
                  'ASOCODPAGO, '+
                  'USEID, '+
                  'UPROID, '+
                  'UPAGOID, '+
                  'FVIGENTE '+
                  ') VALUES ( '+
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)+', '+
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString)+', '+
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString)+', '+
                  QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString)+', '+
                  QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString)+', '+
                  QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString)+', '+
                  QuotedStr('S')+
                  ' )';
            DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
            End;
          End
          Else
          Begin
            wSQL:='INSERT INTO APO202 ('+
                  'ASOID, '+
                  'ASOCODMOD, '+
                  'ASOCODPAGO, '+
                  'USEID, '+
                  'UPROID, '+
                  'UPAGOID, '+
                  'FVIGENTE '+
                  ') VALUES ( '+
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)+', '+
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString)+', '+
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString)+', '+
                  QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString)+', '+
                  QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString)+', '+
                  QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString)+', '+
                  QuotedStr('S')+
                  ' )';
            DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
          End;

          wSQL:='UPDATE COB304 SET '+
                'FCUSE=NULL, '+
                'FREGCOB=NULL, '+
                'FTRANSF=NULL, '+
                'USUARIO='+QuotedStr(DM1.wUsuario)+', '+
                'FREG='+QuotedStr(DateTimeToStr(Date))+', '+
                'HREG='+QuotedStr(DateTimeToStr(Date))+' '+
                'WHERE ASOID='+DM1.cdsQry2.FieldByName('ASOID').AsString+' '+
                'AND RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
                'AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
                'AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);
          DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

          DM1.cdsQry2.Next;
        End;
      End;
    End
    Else
    Begin
      ShowMessage('Actualmente No Existen Registros Inconsistentes');
    End;
end;

procedure TFIngresoLote.SpeedButton11Click(Sender: TObject);
begin
    If (DM1.cdsCobxUse.Modified)
       or (DM1.cdsCobxUse.ChangeCount>0) Then
    Begin
      DM1.cdsCobxUse.Post;
    End;
    If (DM1.cdsAutDisk.Modified)
       or (DM1.cdsAutDisk.ChangeCount>0) Then
    Begin
      DM1.cdsAutDisk.Post;
    End;

    DM1.ControlTran;

    wSQL:='SELECT * FROM COB304 '+
          'WHERE RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
          'AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
          'AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+' '+
          'AND FREGCOB=''S'' AND FCCODPAGO=''S'' AND FTRANSF=''I''';
    DM1.cdsQry2.Close;
    DM1.cdsQry2.DataRequest(wSQL);
    DM1.cdsQry2.Open;

    If DM1.cdsQry2.RecordCount>=1 Then
    Begin
      If MessageDlg('Actualizará las Uses Nuevos ¿Desea Continuar? ',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        DM1.cdsQry2.First;
        While Not DM1.cdsQry2.EOF Do
        Begin
          wSQL:='UPDATE APO201 SET '+
                'USEID='+QuotedStr(DM1.cdsAutDisk.FieldByName('USEID').AsString)+' '+
                'ASOID='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString);
          DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

          DM1.cdsQry.Close;
          xSQL:='SELECT * FROM APO202 '+
                'WHERE ASOID='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)+' '+
                'AND TRANSANO=SUBSTR('+QuotedStr(DM1.cdsQry2.FieldByName('FREG').AsString)+',7,4) '+
                'AND TRANSMES=SUBSTR('+QuotedStr(DM1.cdsQry2.FieldByName('FREG').AsString)+',4,2)';
          DM1.cdsQry.DataRequest(xSQL);
          DM1.cdsQry.Open;

          // Verifica si hay cambios para el periodo actual
          // Si existe entonces solo actualiza, sino inserta

          If DM1.cdsQry.RecordCount>=1 Then
          Begin
            If Length(Trim(DM1.cdsQry.FieldByName('USEID').AsString))=0 Then
            Begin
              wSQL:='UPDATE APO202 SET '+
                    'USEID='+QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString)+' '+
                    'WHERE ASOID='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString);
              DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
            End
            Else
            Begin
            wSQL:='INSERT INTO APO202 ('+
                  'ASOID, '+
                  'ASOCODMOD, '+
                  'ASOCODPAGO, '+
                  'USEID, '+
                  'UPROID, '+
                  'UPAGOID, '+
                  'FVIGENTE '+
                  ') VALUES ( '+
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)+', '+
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString)+', '+
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString)+', '+
                  QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString)+', '+
                  QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString)+', '+
                  QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString)+', '+
                  QuotedStr('S')+
                  ' )';
            DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
            End;
          End
          Else
          Begin
            wSQL:='INSERT INTO APO202 ('+
                  'ASOID, '+
                  'ASOCODMOD, '+
                  'ASOCODPAGO, '+
                  'USEID, '+
                  'UPROID, '+
                  'UPAGOID, '+
                  'FVIGENTE '+
                  ') VALUES ( '+
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)+', '+
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString)+', '+
                  QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString)+', '+
                  QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString)+', '+
                  QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString)+', '+
                  QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString)+', '+
                  QuotedStr('S')+
            ' )';
            DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
          End;
          wSQL:='UPDATE COB304 SET '+
                'FCUSE=NULL, '+
                'FREGCOB=NULL, '+
                'FTRANSF=NULL, '+
                'USUARIO='+QuotedStr(DM1.wUsuario)+', '+
                'FREG='+QuotedStr(DateTimeToStr(Date))+', '+
                'HREG='+QuotedStr(DateTimeToStr(Date))+' '+
                'WHERE ASOID='+DM1.cdsQry2.FieldByName('ASOID').AsString+' '+
                'AND RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
                'AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
                'AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);
          DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

          DM1.cdsQry2.Next;
        End;
      End;
    End
    Else
    Begin
      ShowMessage('Actualmente No Existen Registros Inconsistentes');
    End;
end;

procedure TFIngresoLote.spdAporteMayTClick(Sender: TObject);
begin
  if (DM1.cdsCobxUse.Modified) or (DM1.cdsCobxUse.ChangeCount > 0) Then
  begin
    DM1.cdsCobxUse.Post;
  end;
  if (DM1.cdsAutDisk.Modified) or (DM1.cdsAutDisk.ChangeCount > 0) Then
  begin
    DM1.cdsAutDisk.Post;
  end;
  DM1.ControlTran;

  wSQL:='SELECT * FROM COB304 '+
        'WHERE RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
        'AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
        'AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+' '+
        'AND FMAPORTE=''S'' AND FTRANSF=''I''';
  DM1.cdsQry2.Close;
  DM1.cdsQry2.DataRequest(wSQL);
  DM1.cdsQry2.Open;

  If DM1.cdsQry2.RecordCount = 0 Then
  Begin
    ShowMessage('Actualmente No Existen Registros Inconsistentes');
    Exit;
  End;

  if Question(Caption, 'Actualizará a Todos la Situación de Inconsistencia '+#13+#13'¿Desea Continuar? ') then
  begin
    DM1.cdsQry2.First;
    while Not DM1.cdsQry2.EOF Do
    begin
      wSQL:='UPDATE COB304 SET '+
            'FMAPORTE=NULL, '+
            'FREGCOB=NULL, '+
            'FTRANSF=NULL, '+
            'USUARIO='+QuotedStr(DM1.wUsuario)+', '+
            'FREG='+QuotedStr(DateTimeToStr(Date))+', '+
            'HREG='+QuotedStr(DateTimeToStr(Date))+' '+
            'WHERE ASOID='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)+' '+
            'AND RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
            'AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
            'AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);
      DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
      DM1.cdsQry2.Next;
    end;
  end;
end;

procedure TFIngresoLote.spdAporteMayMClick(Sender: TObject);
begin
  if (DM1.cdsCobxUse.Modified) or (DM1.cdsCobxUse.ChangeCount>0) Then
  begin
    DM1.cdsCobxUse.Post;
  end;
  if (DM1.cdsAutDisk.Modified) or (DM1.cdsAutDisk.ChangeCount>0) Then
  begin
    DM1.cdsAutDisk.Post;
  end;
  DM1.ControlTran;

  wSQL:='SELECT * FROM COB304 '+
        'WHERE RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
        'AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
        'AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+' '+
        'AND FREGCOB=''S'' AND FMAPORTE=''S'' AND FTRANSF=''I''';
  DM1.cdsQry2.Close;
  DM1.cdsQry2.DataRequest(wSQL);
  DM1.cdsQry2.Open;

  if DM1.cdsQry2.RecordCount = 0 Then
  begin
    ShowMessage('Actualmente No Existen Registros Inconsistentes');
    Exit;
  end;

  if Question(Caption, 'Actualizará la Situación de Inconsistencia '+#13+#13+'¿Desea Continuar? ') then
  begin
    DM1.cdsQry2.First;
    while Not DM1.cdsQry2.EOF Do
    begin
      wSQL:='UPDATE COB304 SET '+
            'FMAPORTE=NULL, '+
            'FREGCOB=NULL, '+
            'FTRANSF=NULL, '+
            'USUARIO='+QuotedStr(DM1.wUsuario)+', '+
            'FREG='+QuotedStr(DateTimeToStr(Date))+', '+
            'HREG='+QuotedStr(DateTimeToStr(Date))+' '+
            'WHERE ASOID='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)+' '+
            'AND RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
            'AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
            'AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);
      DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

      DM1.cdsQry2.Next;
    end;
  end;
end;

procedure TFIngresoLote.spdAporteMenTClick(Sender: TObject);
begin
  if (DM1.cdsCobxUse.Modified) or (DM1.cdsCobxUse.ChangeCount>0) Then
  begin
    DM1.cdsCobxUse.Post;
  end;
  if (DM1.cdsAutDisk.Modified) or (DM1.cdsAutDisk.ChangeCount>0) Then
  begin
    DM1.cdsAutDisk.Post;
  end;
  DM1.ControlTran;

  wSQL:='SELECT * FROM COB304 '+
        'WHERE RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
        'AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
        'AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+' '+
        'AND FEAPORTE=''S'' AND FTRANSF=''I''';
  DM1.cdsQry2.Close;
  DM1.cdsQry2.DataRequest(wSQL);
  DM1.cdsQry2.Open;

  if DM1.cdsQry2.RecordCount = 0 Then
  begin
    ShowMessage('Actualmente No Existen Registros Inconsistentes');
    Exit;
  end;

  if Question(Caption,'Actualizará a Todos la Situación de Inconsistencia '#13+#13+'¿Desea Continuar? ') then
  begin
    DM1.cdsQry2.First;
    while not DM1.cdsQry2.EOF do
    begin
      wSQL:='UPDATE COB304 SET '+
            'FMAPORTE=NULL, '+
            'FREGCOB=NULL, '+
            'FTRANSF=NULL, '+
            'USUARIO='+QuotedStr(DM1.wUsuario)+', '+
            'FREG='+QuotedStr(DateTimeToStr(Date))+', '+
            'HREG='+QuotedStr(DateTimeToStr(Date))+' '+
            'WHERE ASOID='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)+' '+
            'AND RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
            'AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
            'AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);
      DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
      DM1.cdsQry2.Next;
    end;
  end;
end;

procedure TFIngresoLote.spdAporteMenMClick(Sender: TObject);
begin
  if (DM1.cdsCobxUse.Modified) or (DM1.cdsCobxUse.ChangeCount>0) Then
  begin
    DM1.cdsCobxUse.Post;
  end;
  if (DM1.cdsAutDisk.Modified) or (DM1.cdsAutDisk.ChangeCount>0) Then
  begin
    DM1.cdsAutDisk.Post;
  end;
  DM1.ControlTran;

  wSQL:='SELECT * FROM COB304 '+
        'WHERE RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
        'AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
        'AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+' '+
        'AND FREGCOB=''S'' AND FMAPORTE=''S'' AND FTRANSF=''I''';
  DM1.cdsQry2.Close;
  DM1.cdsQry2.DataRequest(wSQL);
  DM1.cdsQry2.Open;

  if DM1.cdsQry2.RecordCount = 0 Then
  begin
    ShowMessage('Actualmente No Existen Registros Inconsistentes');
    Exit;
  end;

  if Question(Caption,'Actualizará la Situación de Inconsistencia '+#13+#13'¿Desea Continuar? ') then
  begin
    DM1.cdsQry2.First;
    while Not DM1.cdsQry2.EOF do
    begin
      wSQL:='UPDATE COB304 SET '+
            'FMAPORTE=NULL, '+
            'FREGCOB=NULL, '+
            'FTRANSF=NULL, '+
            'USUARIO='+QuotedStr(DM1.wUsuario)+', '+
            'FREG='+QuotedStr(DateTimeToStr(Date))+', '+
            'HREG='+QuotedStr(DateTimeToStr(Date))+' '+
            'WHERE ASOID='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)+' '+
            'AND RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
            'AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
            'AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);
      DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
      DM1.cdsQry2.Next;
    end;
  end;
end;

procedure TFIngresoLote.bbtnImprimeClick(Sender: TObject);
var
  x10:Integer;
begin
  ppDBInc.DataSource:=DM1.dsAutDisk;
  If DM1.wTDatos='T' Then
  Begin
    ppRepInc.TEMPLATE.FileName :=( wRutaRpt +'\RepIngLote.rtm');
    ppRepInc.template.LoadFromFile ;
    pplbTitulo.Caption:=' Listado Detallado de Recaudación ';
  End
  Else
  Begin
    If DM1.wTDatos='S' Then
    Begin
      ppRepInc.TEMPLATE.FileName :=(wRutaRpt +'\RepIngLote.rtm');
      ppRepInc.template.LoadFromFile ;
      pplbTitulo.Caption:=' Listado Detallado de Recaudación - Sin Inconsistencias ';
    End
    Else
    Begin
      If DM1.wTDatos='I' Then
      Begin
        If DM1.cdsAutdisk.RecordCount>0 Then
        Begin
          ppRepInc.TEMPLATE.FileName :=(wRutaRpt +'\RepIngLoteInc.rtm');
          ppRepInc.template.LoadFromFile ;
          pplbTitulo.Caption:=' Listado Detallado de Recaudación - Inconsistencias ';
        End;
      End;
    End;
  End;
  ppRepInc.Print ;
  ppRepInc.Stop;
  //ppDesInc.ShowModal;
  x10:=Self.ComponentCount-1;
  While x10 >= 0 do
    begin
      if Self.Components[x10].ClassName='TppGroup' then
      begin
        Self.Components[x10].Free;
      end;
      x10:=x10-1;
  end;
end;

procedure TFIngresoLote.spdCamCodModClick(Sender: TObject);
begin
    pnlFiltros.Visible:=False;
    Screen.Cursor:=crHourGlass;
    DM1.cdsAutdisk.IndexFieldNames:='FCCODMOD;FTRANSF';
    DM1.cdsAutdisk.Filter:=' FCCODMOD=''S'' AND FTRANSF=''I''';
    DM1.cdsAutdisk.Filtered:=True;
    DM1.wTDatos:='I';  // Para Mostrar Todos los Registros
    If DM1.cdsAutdisk.RecordCount>=1 Then
    Begin
      dbgAportes.ColumnByName('TRANSCUO').FooterValue:=FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSCUO)','FCCODMOD=''S'' AND FTRANSF=''I'''),ffNumber, 15, 2);
      dbgAportes.ColumnByName('TRANSAPO').FooterValue:=FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSAPO)','FCCODMOD=''S'' AND FTRANSF=''I'''),ffNumber, 15, 2);
      dbgAportes.ColumnByName('TRANSMTO').FooterValue:=FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSMTO)','FCCODMOD=''S'' AND FTRANSF=''I'''),ffNumber, 15, 2);
      dbgAportes.ColumnByName('ASOAPENOM').FooterValue:='Total  '+FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'COUNT(ASOAPENOM)','FCCODMOD=''S'' AND FTRANSF=''I'''),ffNumber, 15,0)+' Registros';
      If dbgAportes.Color<>$00C8E1DF Then
      Begin
        dbgAportes.Color:=$00C8E1DF
      End;
    End
    Else
    Begin
      DM1.cdsAutdisk.IndexFieldNames:='';
      DM1.cdsAutdisk.Filter:='';
      DM1.cdsAutdisk.Filtered:=True;
      If dbgAportes.Color<>$00C8E1DF Then
      Begin
        dbgAportes.Color:=$00C8E1DF;
      End;
      ActualizaFooter;
      Screen.Cursor:=crDefault;
      ShowMessage('No se encontraron Inconsistencias ');
      exit;
    End;
    Screen.Cursor:=crDefault;
    ShowMessage('Total de Registros Inconsistentes por Cambio de Código Modular :  '+IntToStr(DM1.cdsAutdisk.RecordCount)+ ' Registros ');
end;

procedure TFIngresoLote.spdCamCodPagClick(Sender: TObject);
begin
    pnlFiltros.Visible:=False;
    Screen.Cursor:=crHourGlass;
    DM1.cdsAutdisk.IndexFieldNames:='FCCODPAGO;FTRANSF';
    DM1.cdsAutdisk.Filter:=' FCCODPAGO=''S'' AND FTRANSF=''I''';
    DM1.cdsAutdisk.Filtered:=True;
    DM1.wTDatos:='I';  // Para Mostrar Todos los Registros
    If DM1.cdsAutdisk.RecordCount>=1 Then
    Begin
      dbgAportes.ColumnByName('TRANSCUO').FooterValue:=FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSCUO)','FCCODPAGO=''S'' AND FTRANSF=''I'''),ffNumber, 15, 2);
      dbgAportes.ColumnByName('TRANSAPO').FooterValue:=FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSAPO)','FCCODPAGO=''S'' AND FTRANSF=''I'''),ffNumber, 15, 2);
      dbgAportes.ColumnByName('TRANSMTO').FooterValue:=FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSMTO)','FCCODPAGO=''S'' AND FTRANSF=''I'''),ffNumber, 15, 2);
      dbgAportes.ColumnByName('ASOAPENOM').FooterValue:='Total  '+FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'COUNT(ASOAPENOM)','FCCODPAGO=''S'' AND FTRANSF=''I'''),ffNumber, 15,0)+' Registros';
      If dbgAportes.Color<>$00C8E1DF Then
      Begin
        dbgAportes.Color:=$00C8E1DF
      End;
    End
    Else
    Begin
      DM1.cdsAutdisk.IndexFieldNames:='';
      DM1.cdsAutdisk.Filter:='';
      DM1.cdsAutdisk.Filtered:=True;
      If dbgAportes.Color<>$00C8E1DF Then
      Begin
        dbgAportes.Color:=$00C8E1DF;
      End;
      ActualizaFooter;
      Screen.Cursor:=crDefault;
      ShowMessage('No se encontraron Inconsistencias ');
      exit;
    End;
    Screen.Cursor:=crDefault;
    ShowMessage('Total de Registros Inconsistentes por Cambio de Código de Pago :  '+IntToStr(DM1.cdsAutdisk.RecordCount)+ ' Registros ');
end;

procedure TFIngresoLote.spdCamUseClick(Sender: TObject);
begin
    pnlFiltros.Visible:=False;
    Screen.Cursor:=crHourGlass;
    DM1.cdsAutdisk.IndexFieldNames:='FCUSE;FTRANSF';
    DM1.cdsAutdisk.Filter:=' FCUSE=''S'' AND FTRANSF=''I''';
    DM1.cdsAutdisk.Filtered:=True;
    DM1.wTDatos:='I';  // Para Mostrar Todos los Registros
    If DM1.cdsAutdisk.RecordCount>=1 Then
    Begin
      dbgAportes.ColumnByName('TRANSCUO').FooterValue:=FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSCUO)','FCUSE=''S'' AND FTRANSF=''I'''),ffNumber, 15, 2);
      dbgAportes.ColumnByName('TRANSAPO').FooterValue:=FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSAPO)','FCUSE=''S'' AND FTRANSF=''I'''),ffNumber, 15, 2);
      dbgAportes.ColumnByName('TRANSMTO').FooterValue:=FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSMTO)','FCUSE=''S'' AND FTRANSF=''I'''),ffNumber, 15, 2);
      dbgAportes.ColumnByName('ASOAPENOM').FooterValue:='Total  '+FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'COUNT(ASOAPENOM)','FCUSE=''S'' AND FTRANSF=''I'''),ffNumber, 15,0)+' Registros';
      If dbgAportes.Color<>$00C8E1DF Then
      Begin
        dbgAportes.Color:=$00C8E1DF
      End;
    End
    Else
    Begin
      DM1.cdsAutdisk.IndexFieldNames:='';
      DM1.cdsAutdisk.Filter:='';
      DM1.cdsAutdisk.Filtered:=True;
      If dbgAportes.Color<>$00C8E1DF Then
      Begin
        dbgAportes.Color:=$00C8E1DF;
      End;
      ActualizaFooter;
      Screen.Cursor:=crDefault;
      ShowMessage('No se encontraron Inconsistencias ');
      exit;
    End;
    Screen.Cursor:=crDefault;
    ShowMessage('Total de Registros Inconsistentes por Cambio de USE :  '+IntToStr(DM1.cdsAutdisk.RecordCount)+ ' Registros ');
end;

procedure TFIngresoLote.spdApoMayClick(Sender: TObject);
begin
    pnlFiltros.Visible:=False;
    Screen.Cursor:=crHourGlass;
    DM1.cdsAutdisk.IndexFieldNames:='FMAPORTE;FTRANSF';
    DM1.cdsAutdisk.Filter:=' FMAPORTE=''S'' AND FTRANSF=''I''';
    DM1.cdsAutdisk.Filtered:=True;
    DM1.wTDatos:='I';  // Para Mostrar Todos los Registros
    If DM1.cdsAutdisk.RecordCount>=1 Then
    Begin
      dbgAportes.ColumnByName('TRANSCUO').FooterValue:=FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSCUO)','FMAPORTE=''S'' AND FTRANSF=''I'''),ffNumber, 15, 2);
      dbgAportes.ColumnByName('TRANSAPO').FooterValue:=FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSAPO)','FMAPORTE=''S'' AND FTRANSF=''I'''),ffNumber, 15, 2);
      dbgAportes.ColumnByName('TRANSMTO').FooterValue:=FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSMTO)','FMAPORTE=''S'' AND FTRANSF=''I'''),ffNumber, 15, 2);
      dbgAportes.ColumnByName('ASOAPENOM').FooterValue:='Total  '+FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'COUNT(ASOAPENOM)','FMAPORTE=''S'' AND FTRANSF=''I'''),ffNumber, 15,0)+' Registros';
      If dbgAportes.Color<>$00C8E1DF Then
      Begin
        dbgAportes.Color:=$00C8E1DF
      End;
    End
    Else
    Begin
      DM1.cdsAutdisk.IndexFieldNames:='';
      DM1.cdsAutdisk.Filter:='';
      DM1.cdsAutdisk.Filtered:=True;
      If dbgAportes.Color<>$00C8E1DF Then
      Begin
        dbgAportes.Color:=$00C8E1DF;
      End;
      ActualizaFooter;
      Screen.Cursor:=crDefault;
      ShowMessage('No se encontraron Inconsistencias ');
      exit;
    End;
    Screen.Cursor:=crDefault;
    ShowMessage('Total de Registros Inconsistentes por Aporte Mayor :  '+IntToStr(DM1.cdsAutdisk.RecordCount)+ ' Registros ');
end;

procedure TFIngresoLote.spdApoMenClick(Sender: TObject);
begin
    pnlFiltros.Visible:=False;
    Screen.Cursor:=crHourGlass;
    DM1.cdsAutdisk.IndexFieldNames:='FEAPORTE;FTRANSF';
    DM1.cdsAutdisk.Filter:=' FEAPORTE=''S'' AND FTRANSF=''I''';
    DM1.cdsAutdisk.Filtered:=True;
    DM1.wTDatos:='I';  // Para Mostrar Todos los Registros
    If DM1.cdsAutdisk.RecordCount>=1 Then
    Begin
      dbgAportes.ColumnByName('TRANSCUO').FooterValue:=FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSCUO)','FEAPORTE=''S'' AND FTRANSF=''I'''),ffNumber, 15, 2);
      dbgAportes.ColumnByName('TRANSAPO').FooterValue:=FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSAPO)','FEAPORTE=''S'' AND FTRANSF=''I'''),ffNumber, 15, 2);
      dbgAportes.ColumnByName('TRANSMTO').FooterValue:=FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSMTO)','FEAPORTE=''S'' AND FTRANSF=''I'''),ffNumber, 15, 2);
      dbgAportes.ColumnByName('ASOAPENOM').FooterValue:='Total  '+FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'COUNT(ASOAPENOM)','FEAPORTE=''S'' AND FTRANSF=''I'''),ffNumber, 15,0)+' Registros';
      If dbgAportes.Color<>$00C8E1DF Then
      Begin
        dbgAportes.Color:=$00C8E1DF
      End;
    End
    Else
    Begin
      DM1.cdsAutdisk.IndexFieldNames:='';
      DM1.cdsAutdisk.Filter:='';
      DM1.cdsAutdisk.Filtered:=True;
      If dbgAportes.Color<>$00C8E1DF Then
      Begin
        dbgAportes.Color:=$00C8E1DF;
      End;
      ActualizaFooter;
      Screen.Cursor:=crDefault;
      ShowMessage('No se encontraron Inconsistencias ');
      exit;
    End;
    Screen.Cursor:=crDefault;
    ShowMessage('Total de Registros Inconsistentes por Aporte Menor :  '+IntToStr(DM1.cdsAutdisk.RecordCount)+ ' Registros ');
end;

procedure TFIngresoLote.dbgAportesEnter(Sender: TObject);
begin
  if pnlBusca.Visible then
  begin
    pnlBusca.Visible := False;
    dbgAportes.Enabled:=True;
    pnlUse.Enabled:=True;
    pnlFooter.Enabled:=True;
    pnlHeader.Enabled:=True;
    pnlDatosAportes.Enabled:=True;
    dbgAportes.SetFocus;
  end;
end;

procedure TFIngresoLote.dbeImpAporteExit(Sender: TObject);
begin
 if (Screen.ActiveControl).TabOrder<(Sender as TWinControl).TabOrder then Exit;
end;

procedure TFIngresoLote.bbtnIngLineaClick(Sender: TObject);
begin
  if Length(dblcdUse.Text)=0 then
  begin
    ShowMessage('Debe Seleccionar la USE');
    pnlUse.Enabled:=True;
    dblcdUse.enabled:=True;
    dblcdUse.SetFocus;
    exit;
  end;
  FiltraAsoc;
  Screen.Cursor:=crHourGlass;
  dbgAportes.Enabled:=True;
  //dblcdUse.Enabled:=False;
  dblcdUse.enabled:=True;
  bbtnIngresaAporte.Enabled:=True;
  bbtnAutdisk.Enabled:=True;
  Screen.Cursor:=crDefault;
end;

procedure TFIngresoLote.FiltraAsoc;
begin
  xSQL:='SELECT A.ASOID, A.ASOCODMOD, A.ASOAPENOM, A.USEID, A.UPROID '+
        'FROM APO201 A '+
        'WHERE NOT EXISTS '+
        '(SELECT B.ASOID, B.ASOCODMOD, B.ASOAPENOM, B.USEID, B.UPROID '+
        'FROM COB304 B '+
        'WHERE A.ASOID=B.ASOID) '+
        'AND A.UPROID='+QuotedStr(DM1.cdsCobxUse.FieldByName('UPROID').AsString)+' '+
        'AND A.UPAGOID='+QuotedStr(DM1.cdsCobxUse.FieldByName('UPAGOID').AsString)+' '+
        'AND A.USEID='+QuotedStr(dblcdUse.Text);
  DM1.cdsAsociados.Close;
  DM1.cdsAsociados.DataRequest(xSQL);
  DM1.cdsAsociados.Open;
end;

procedure TFIngresoLote.EventoModPagUse(Sender: TObject);
begin
  if (DM1.cdsCobxUse.Modified) or (DM1.cdsCobxUse.ChangeCount>0) Then
  begin
    DM1.cdsCobxUse.Post;
  end;
  if (DM1.cdsAutDisk.Modified) or (DM1.cdsAutDisk.ChangeCount>0) Then
  begin
    DM1.cdsAutDisk.Post;
  end;
  DM1.ControlTran;

  wSQL:='SELECT * FROM COB304 '+
        'WHERE RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
        'AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
        'AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString)+' '+
        'AND (FCCODMOD=''S'' '+
        'OR FCCODPAGO=''S'' '+
        'OR FCUSE=''S'') ';
  if spdCModCPagUseTod.Focused then
  //if (Sender as TWinControl).Name = 'spdCModCPagUseTod' then
    wSQL:=wSQL+'AND FTRANSF=''I''';
  if spdCModCPagUseMar.Focused then
  //if (Sender as TWinControl).Name = 'spdCModCPagUseMar' then
    wSQL:=wSQL+'AND FREGCOB=''S'' AND FTRANSF=''I''';
  DM1.cdsQry2.Close;
  DM1.cdsQry2.DataRequest(wSQL);
  DM1.cdsQry2.Open;

  if DM1.cdsQry2.RecordCount = 0 Then
  begin
    Information(Caption, 'Actualmente No Existen Registros Inconsistentes');
    Exit;
  end;

  if Question(Caption, 'Actualizará Todos los Códigos Modulares, Cod. Pago y Uses Nuevos '+#13+#13+'¿Desea Continuar? ') then
  begin
    Screen.Cursor:=crHourGlass;
    DM1.cdsQry2.First;
    while Not DM1.cdsQry2.EOF Do
    begin
      wSQL:='UPDATE APO201 SET '+
            'ASOCODMOD='+QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString)+', '+
            'ASOCODPAGO='+QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString)+', '+
            'USEID='+QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString)+' '+
            'WHERE ASOID='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString);
      DM1.DCOM1.AppServer.EjecutaSQL(wSQL);


      wSQL:='UPDATE APO202 SET FVIGENTE=NULL '+
            'WHERE ASOID='+QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString);
      DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

      wSQL:='INSERT INTO APO202 ('+
            'ASOID, '+
            'ASOCODMOD, '+
            'ASOCODPAGO, '+
            'USEID, '+
            'UPROID, '+
            'UPAGOID, FREG, HREG, '+
            'FVIGENTE '+
            ') VALUES ('+
            QuotedStr(DM1.cdsQry2.FieldByName('ASOID').AsString)+', '+
            QuotedStr(DM1.cdsQry2.FieldByName('ASOCODMOD').AsString)+', '+
            QuotedStr(DM1.cdsQry2.FieldByName('ASOCODPAGO').AsString)+', '+
            QuotedStr(DM1.cdsQry2.FieldByName('USEID').AsString)+', '+
            QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString)+', '+
            QuotedStr(DM1.cdsQry2.FieldByName('UPAGOID').AsString)+', '+
            'SYSDATE, SYSDATE, '+
            QuotedStr('S')+
      ')';
      DM1.DCOM1.AppServer.EjecutaSQL(wSQL);

      wSQL:='UPDATE COB304 SET '+
            'FCCODMOD=NULL, '+
            'FCCODPAGO=NULL, '+
            'FCUSE=NULL, '+
            'FREGCOB=NULL, '+
            'FTRANSF=NULL, '+
            'USUARIO='+QuotedStr(DM1.wUsuario)+', '+
            'FREG='+QuotedStr(DateTimeToStr(Date))+', '+
            'HREG='+QuotedStr(DateTimeToStr(Date))+' '+
            'WHERE ASOID='+DM1.cdsQry2.FieldByName('ASOID').AsString+' '+
            'AND RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
            'AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
            'AND USERCOBID='+QuotedStr(DM1.cdsCobxUSe.FieldByName('USERCOBID').AsString);
      DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
      DM1.cdsQry2.Next;
    end;
    DM1.cdsAutdisk.Refresh;
    dbgAportes.Update;
    Screen.Cursor:=crDefault;    
    ShowMessage('Actualización Finalizada');
  end;
end;

procedure TFIngresoLote.SpeedButton1Click(Sender: TObject);
begin
  pnlFiltros.Visible:=False;
  Screen.Cursor:=crHourGlass;
  DM1.cdsAutdisk.IndexFieldNames:='FTRANSFAC';
  DM1.cdsAutdisk.Filter:='FTRANSFAC=''S''';
  DM1.cdsAutdisk.Filtered:=True;
  DM1.wTDatos:='I';  // Para Mostrar Todos los Registros
  dbgAportes.Color:=clBtnFace;
  DM1.cdsAutdisk.RecordCount;
  dbgAportes.ColumnByName('TRANSCUO').FooterValue  :=FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSCUO)','FTRANSF=''I'''),ffNumber, 15, 2);
  dbgAportes.ColumnByName('TRANSAPO').FooterValue  :=FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSAPO)','FTRANSF=''I'''),ffNumber, 15, 2);
  dbgAportes.ColumnByName('TRANSMTO').FooterValue  :=FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSMTO)','FTRANSF=''I'''),ffNumber, 15, 2);
  dbgAportes.ColumnByName('ASOAPENOM').FooterValue :='Total  '+FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'COUNT(ASOAPENOM)','FTRANSFAC=''S'''),ffNumber, 15,0)+' Registros';
  ShowMessage('Total de Registros Transferidos :  '+IntToStr(DM1.cdsAutdisk.RecordCount)+ ' Registros ');
  Screen.Cursor:=crDefault;
end;

procedure TFIngresoLote.SpeedButton2Click(Sender: TObject);
begin
  pnlFiltros.Visible:=False;
  Screen.Cursor:=crHourGlass;
  DM1.cdsAutdisk.IndexFieldNames:='FTRANSFAC';
  DM1.cdsAutdisk.Filter:='FTRANSFAC IS NULL OR FTRANSFAC=''''';
  DM1.cdsAutdisk.Filtered:=True;
  DM1.wTDatos:='I';  // Para Mostrar Todos los Registros
  dbgAportes.Color:=clBtnFace;
  DM1.cdsAutdisk.RecordCount;
  dbgAportes.ColumnByName('TRANSCUO').FooterValue  :=FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSCUO)','FTRANSF=''I'''),ffNumber, 15, 2);
  dbgAportes.ColumnByName('TRANSAPO').FooterValue  :=FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSAPO)','FTRANSF=''I'''),ffNumber, 15, 2);
  dbgAportes.ColumnByName('TRANSMTO').FooterValue  :=FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'SUM(TRANSMTO)','FTRANSF=''I'''),ffNumber, 15, 2);
  dbgAportes.ColumnByName('ASOAPENOM').FooterValue :='Total  '+FloatToStrF(DM1.OperClientDataSet(DM1.cdsAutdisk , 'COUNT(ASOAPENOM)','FTRANSFAC IS NULL OR FTRANSFAC='''''),ffNumber, 15,0)+' Registros';
  ShowMessage('Total de Registros por Tansferir :  '+IntToStr(DM1.cdsAutdisk.RecordCount)+ ' Registros ');
  Screen.Cursor:=crDefault;
end;

end.

{
////////////////////
const
  xCampos303 : String = ('TIPCREID,ASOID,ASOCODMOD,ASOCODPAGO,ASOAPENOM,USEID,CREFOTORG,'+
                      'TMONID,CREMTOSOL,CREMTOOTOR,CREMTOGIR,CREINTERES,CREDFLAT,CRECUOTA,CRENUMCUO,'+
                      'CRETCALID,TMONABR,TIPDESEID,CRELUGGIRO,BANCOID,CRENUMCTA,CRESDOACT,CREFINIPAG,'+
                      'CREFFINPAG,CRECUOPAG,CREESTADO,CRESALDOT,OFDESID,CREDID,CALIFICAID,USUARIO,'+
                      'FREG,HREG,GARAPENOM,GARASOID,AGENBANCOID,DPTOGIRO,BCOGIRO,FORPAGOID,CUOTAINI,DPTOID,'+
                      'UPROID,TIPCREDES,TIPDESEABR,CREGADM,CREMORA,FORPAGOABR,CIAID,LISTAID,LISTAABR,'+
                      'CONDCREDID,CREESTID,ASOCODAUX,CREANOMES');

  xCampos301 : String = ('TIPCREID,ASOID,ASOCODMOD,ASOCODPAGO,ASOAPENOM,USEID,CREFOTORG,'+
                         'TMONID,CREMTOSOL,CREMTOOTOR,CREMTOGIR,CREINTERES,CREDFLAT,CRECUOTA,CRENUMCUO,'+
                         'CRETCALID,TMONABR,CRELUGGIRO,BANCOID,CRENUMCTA,CRESDOACT,CREFINIPAG,'+
                         'CREFFINPAG,CRECUOPAG,CREESTADO,CRESALDOT,OFDESID,CREDID,CALIFICAID,USUARIO,'+
                         'FREG,HREG,GARAPENOM,AGENBANCOID,DPTOGIRO,BCOGIRO,FORPAGOID,CUOTAINI,DPTOID,'+
                         'UPROID,TIPCREDES,CREGADM,CREMORA,FORPAGOABR,CIAID,LISTAID,LISTAABR,'+
                         'CREESTID,ASOCODAUX,CREANOMES,UPAGOID,NROFICIO');

  xCampoc : string = ('ASOCODMOD,ASOCODAUX,USEID,ASOCODPAGO,TIPCREID,CREDID,CRECUOTA,CREMONLOC,CREMONEXT,'+
                      'CREFVEN,CREAMORT,CREINTERES,CREFLAT,CRESALDO,CREMTOCOB,CRECAPITAL,CREMTOINT,'+
                      'CREGADM,TCAMBIO,FLGPAG,CREFPAG,CREESTID,USUARIO,'+
                      'FREG,HREG,CIAID,ASOID,UPROID,DPTOID,UPAGOID,BANCOID,CCBCOID,ASOAPENOM'+
                      ',CIUDID,ARCHIVOFTP,TMONID,CREANO,CREMES,CREMTO,LISTAID,TMONABR,'+
                      'CREESTADO,CREFDEV,LISTAABR,TIPCREABR');

  xCampoc1: string = ('ASOCODMOD,ASOCODAUX,USEID,ASOCODPAGO,TIPCREID,CREDID,CRECUOTA,CREMONLOC,CREMONEXT,'+
                      'CREFPAG,CREAMORT,CREINTERES,CREFLAT,CREMTOCOB,TCAMBIO,USUARIO,'+
                      'FREG,HREG,CIAID,ASOID,UPROID,DPTOID,UPAGOID,BANCOID,CCBCOID,ASOAPENOM'+
                      ',CIUDID,ARCHIVOFTP');


  DM1.cdsAsociados.PacketRecords := -1;
  DM1.cdsQry1.Filter := '';
  DM1.cdsQry1.Filtered := False;
  xSql := 'SELECT * FROM CRNPAGO';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;

  xSql := 'SELECT C.* FROM APO201 C,(SELECT A.ASOCODMOD,A.ASOCODAUX,B.COD_MOD,B.NRO_VEZ'+
          ' FROM APO201 A,CRNPAGO B WHERE'+
          ' SUBSTR(TRIM(A.ASOCODMOD),1,10)=SUBSTR(TRIM(B.COD_MOD),1,10) AND'+
          ' SUBSTR(TRIM(A.ASOCODAUX),1,2)=SUBSTR(TRIM(B.NRO_VEZ),1,2)'+
          ' GROUP BY A.asocodmod,A.asocodaux,B.COD_MOD,B.NRO_VEZ ) D'+
          ' WHERE SUBSTR(TRIM(C.ASOCODMOD),1,10)=SUBSTR(TRIM(D.COD_MOD),1,10) AND'+
          ' SUBSTR(TRIM(C.ASOCODAUX),1,2)=SUBSTR(TRIM(D.NRO_VEZ),1,2)';
  DM1.cdsAsociados.close;
  DM1.cdsAsociados.DataRequest(xSql);
  DM1.cdsAsociados.open;
  dm1.cdsAsociados.IndexFieldNames := 'ASOCODMOD;ASOCODAUX';
  try
   //** Inicio Transacción
   //** hABILITAR LUEGO
   //** DM1.DCOM1.AppServer.SolStartTransaction;
   DM1.cdsQry1.First;
   xVan := 1;
   //** Paso 1, recorro toda la data
   While Not DM1.cdsQry1.Eof Do
    Begin
     //** se verifica que el asociado exista en el Maestro APO201 para porder insertar en
     //** CRE301 (Cabecera de Prestamo)
     dm1.cdsAsociados.setkey;
     dm1.cdsAsociados.fieldByName('ASOCODMOD').AsString  := DM1.cdsQry1.FieldByName('COD_MOD').AsString;
     dm1.cdsAsociados.fieldByName('ASOCODAUX').AsString := dm1.strzero(DM1.cdsQry1.FieldByName('NRO_VEZ').AsString,2);
     If dm1.cdsAsociados.Gotokey then
      begin
       //** Limpio la variable
       xResultados := '';
       xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('COD_MOD').AsString)+',';
       xResultados :=  xResultados + quotedstr(dm1.StrZero(DM1.cdsQry1.FieldByName('NRO_VEZ').AsString,2))+',';
       xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('COD_USE').AsString)+',';
       xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('COD_PAG').AsString)+',';
       If DM1.cdsQry1.FieldByName('TIP_PRE').AsString = '' then
        xResultados :=  xResultados + 'Null,'
       else
        xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('TIP_PRE').AsString)+',';

       If DM1.cdsQry1.FieldByName('COD_OFI').AsString = '' then
         //** CREID
         xResultados :=  xResultados + quotedstr('01'+DM1.StrZero(DM1.cdsQry1.FieldByName('NUM_PRE').AsString,8))+','
       else
         //** CREID
         xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('COD_OFI').AsString+
                                                 DM1.StrZero(DM1.cdsQry1.FieldByName('NUM_PRE').AsString,8))+',';

       xResultados :=  xResultados + DM1.cdsQry1.FieldByName('ITE_CUO').AsString+',';
       xResultados :=  xResultados + DM1.cdsQry1.FieldByName('MON_CUO').AsString+',';
       If DM1.cdsQry1.FieldByName('TIP_CAM').AsFloat > 0 then
        xResultados :=  xResultados + FloatToStr(DM1.cdsQry1.FieldByName('MON_CUO').AsFloat / DM1.cdsQry1.FieldByName('TIP_CAM').AsFloat) +','
       else
        xResultados :=  xResultados + '0.00'+',';
       xFecha := StrToDAte(copy(DM1.cdsQry1.FieldByName('FEC_VEN').AsString,7,2)+'/'+
                           copy(DM1.cdsQry1.FieldByName('FEC_VEN').AsString,5,2)+'/'+
                           copy(DM1.cdsQry1.FieldByName('FEC_VEN').AsString,1,4));
       sFecha := formatdatetime('DD/MM/YYYY',xFecha);
       xResultados :=  xResultados + quotedstr(sFecha)+',';
       xResultados :=  xResultados + DM1.cdsQry1.FieldByName('AMO_PAG').AsString+',';
       xResultados :=  xResultados + DM1.cdsQry1.FieldByName('INT_PAG').AsString+',';
       xResultados :=  xResultados + DM1.cdsQry1.FieldByName('GAS_PAG').AsString+',';
       xResultados :=  xResultados + DM1.cdsQry1.FieldByName('SAL_PAG').AsString+',';
       xResultados :=  xResultados + DM1.cdsQry1.FieldByName('MON_PAG').AsString+',';
       xResultados :=  xResultados + DM1.cdsQry1.FieldByName('AMO_ACT').AsString+',';
       xResultados :=  xResultados + DM1.cdsQry1.FieldByName('INT_ACT').AsString+',';
       xResultados :=  xResultados + DM1.cdsQry1.FieldByName('GAS_ACT').AsString+',';
       xResultados :=  xResultados + DM1.cdsQry1.FieldByName('TIP_CAM').AsString+',';
       xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('FLG_PAG').AsString)+',';
       xFecha := StrToDAte(copy(DM1.cdsQry1.FieldByName('FEC_CAN').AsString,7,2)+'/'+
                           copy(DM1.cdsQry1.FieldByName('FEC_CAN').AsString,5,2)+'/'+
                           copy(DM1.cdsQry1.FieldByName('FEC_CAN').AsString,1,4));
       sFecha := formatdatetime('DD/MM/YYYY',xFecha);
       xResultados :=  xResultados + quotedstr(sFecha)+',';
       If DM1.cdsQry1.FieldByName('FLG_DSC').AsString = '' then
        If DM1.cdsQry1.FieldByName('BLOQUEO').AsString = 'TRUE' then
         begin
          xWhere := 'ORIGEN='+ quotedstr(DM1.cdsQry1.FieldByName('BLOQUEO').AsString);
          xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE116','EQUIVALE',xwhere,'EQUIVALE'))+',';
          xCreestaid := DM1.DisplayDescrip('prvSQL','CRE116','EQUIVALE',xwhere,'EQUIVALE');
         end
        else
         begin
          If DM1.cdsQry1.FieldByName('ANULADO').AsString = 'TRUE' then
           begin
            xWhere := 'ORIGEN='+ quotedstr(DM1.cdsQry1.FieldByName('ANULADO').AsString);
            xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE116','EQUIVALE',xwhere,'EQUIVALE'))+',';
            xCreestaid := DM1.DisplayDescrip('prvSQL','CRE116','EQUIVALE',xwhere,'EQUIVALE');
           end
          else
           begin
            xWhere := 'ORIGEN='+ quotedstr('FALSE');
            xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE116','EQUIVALE',xwhere,'EQUIVALE'))+',';
            xCreestaid := DM1.DisplayDescrip('prvSQL','CRE116','EQUIVALE',xwhere,'EQUIVALE');
           end
         end
       else
        Begin
         xWhere := 'ORIGEN='+ quotedstr(DM1.cdsQry1.FieldByName('FLG_DSC').AsString);
         xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE116','EQUIVALE',xwhere,'EQUIVALE'))+',';
         xCreestaid := DM1.DisplayDescrip('prvSQL','CRE116','EQUIVALE',xwhere,'EQUIVALE');
        end;

       xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('USUARIO').AsString)+',';
       xFecha := StrToDAte(DM1.cdsQry1.FieldByName('FECHA').AsString);
       sFecha := formatdatetime('DD/MM/YYYY',xFecha);
       xResultados :=  xResultados + quotedstr(sFecha)+',';
       xResultados :=  xResultados + wRepHorServi+',';
       //** por defecto quer apunte a la Cia = '02'
       xResultados :=  xResultados + quotedstr(dblcCia1.text)+',';
       xResultados :=  xResultados + quotedstr(DM1.cdsAsociados.FieldByName('ASOID').AsString)+',';
       If DM1.cdsAsociados.FieldByName('UPROID').AsString = '' then
        xResultados :=  xResultados + 'null,'
       else
        xResultados :=  xResultados + quotedstr(DM1.cdsAsociados.FieldByName('UPROID').AsString)+',';
       If DM1.cdsAsociados.FieldByName('DPTOID').AsString = '' then
        xResultados :=  xResultados + 'null,'
       else
        xResultados :=  xResultados + quotedstr(DM1.cdsAsociados.FieldByName('DPTOID').AsString)+',';
       If DM1.cdsAsociados.FieldByName('UPAGOID').AsString = '' then
        xResultados :=  xResultados + 'null,'
       else
        xResultados :=  xResultados + quotedstr(DM1.cdsAsociados.FieldByName('UPAGOID').AsString)+',';
       If DM1.cdsAsociados.FieldByName('BANCOID').AsString = '' then
        xResultados :=  xResultados + 'null,'
       else
        xResultados :=  xResultados + quotedstr(DM1.cdsAsociados.FieldByName('BANCOID').AsString)+',';
       If DM1.cdsAsociados.FieldByName('ASONCTA').AsString = '' then
        xResultados :=  xResultados + 'null,'
       else
        xResultados :=  xResultados + quotedstr(DM1.cdsAsociados.FieldByName('ASONCTA').AsString)+',';
       If DM1.cdsAsociados.FieldByName('ASOAPENOM').AsString = '' then
        xResultados :=  xResultados + 'null,'
       else
        xResultados :=  xResultados + quotedstr(DM1.cdsAsociados.FieldByName('ASOAPENOM').AsString)+',';

       If DM1.cdsAsociados.FieldByName('CIUDID').AsString = '' then
        xResultados :=  xResultados + 'null'+','
       else
        xResultados :=  xResultados + quotedstr(DM1.cdsAsociados.FieldByName('CIUDID').AsString)+',';
       xResultados :=  xResultados + quotedstr(copy(Trim(clbArchivos.Items.Strings[xItemIndex]),1,8) + FloatToStr(xAno))+',';
       xWhere := 'ASOID='+ quotedstr(dm1.cdsAsociados.fieldByName('ASOID').AsString)+
                  ' AND CREDID='+quotedstr(dm1.cdsQry1.fieldByName('NUM_PRE').AsString);
       xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE301','TMONID,CREANOMES,CREMTOOTOR',xwhere,'TMONID'))+',';
       xResultados :=  xResultados + quotedstr(copy(dm1.cdsQry.FieldByName('CREANOMES').AsString,1,4))+',';
       xResultados :=  xResultados + quotedstr(copy(dm1.cdsQry.FieldByName('CREANOMES').AsString,5,2))+',';
       If dm1.cdsQry.FieldByName('CREMTOOTOR').AsString = '' then
        xResultados :=  xResultados + '0.00,'
       else
        xResultados :=  xResultados + dm1.cdsQry.FieldByName('CREMTOOTOR').AsString+',';
       //** por ahora se deja en 01 la lista de credito
       xResultados :=  xResultados +quotedstr('01')+',';
       xWhere := 'TMONID='+ quotedstr(dm1.cdsQry.FieldByName('TMONID').AsString);
       xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','TGE103','TMONDES',xwhere,'TMONDES'))+',';
       xWhere := 'ESTID='+ quotedstr(xCreestaid);
       xResultados :=  xResultados + quotedstr(Copy(DM1.DisplayDescrip('prvSQL','CRE113','ESTDES',xwhere,'ESTDES'),1,15))+',';
       If DM1.DisplayDescrip('prvSQL','CRE113','ESTDES',xwhere,'ESTDES') = 'ANULADO' then
        xResultados :=  xResultados + quotedstr('S')+','
       else
        xResultados :=  xResultados + quotedstr('N')+',';
       //** por ahora se deja en 01 la lista de credito
       xWhere := 'LISTAID='+ quotedstr('01');
       xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE109','LISTADES',xwhere,'LISTADES'))+',';
       xWhere := 'TIPCREID='+ quotedstr(DM1.cdsQry1.FieldByName('TIP_PRE').AsString);
       xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE110','TIPCREDES',xwhere,'TIPCREDES'));
       Label2.caption := IntToStr(xVan);
       Label2.Refresh;
       xSql := 'INSERT INTO CRE302 ('+xCampoC+') values ('+xresultados+')';
       dm1.dcom1.AppServer.EjecutaSQL(xSql);
       xVan := xVan +1;
      end;
     DM1.cdsQry1.next;
    End;
    //** hABILITAR LUEGO
    //** DM1.DCOM1.AppServer.SolCommit; //GrabaTransaccion;
  Except
   //** hABILITAR LUEGO
   //** DM1.DCOM1.AppServer.SolRollBack;// RegresaTransaccion;
  end;

  //************************************ Para Detalle de pago cre310

  DM1.cdsAsociados.PacketRecords := -1;
  DM1.cdsQry1.Filter := '';
  DM1.cdsQry1.Filtered := False;
  xSql := 'SELECT * FROM CRNPAGO';
  DM1.cdsQry1.Close;
  DM1.cdsQry1.DataRequest(xSql);
  DM1.cdsQry1.Open;

  xSql := 'SELECT C.* FROM APO201 C,(SELECT A.ASOCODMOD,A.ASOCODAUX,B.COD_MOD,B.NRO_VEZ'+
          ' FROM APO201 A,CRNPAGO B WHERE'+
          ' SUBSTR(TRIM(A.ASOCODMOD),1,10)=SUBSTR(TRIM(B.COD_MOD),1,10) AND'+
          ' SUBSTR(TRIM(A.ASOCODAUX),1,2)=SUBSTR(TRIM(B.NRO_VEZ),1,2)'+
          ' GROUP BY A.asocodmod,A.asocodaux,B.COD_MOD,B.NRO_VEZ ) D'+
          ' WHERE SUBSTR(TRIM(C.ASOCODMOD),1,10)=SUBSTR(TRIM(D.COD_MOD),1,10) AND'+
          ' SUBSTR(TRIM(C.ASOCODAUX),1,2)=SUBSTR(TRIM(D.NRO_VEZ),1,2)';
  DM1.cdsAsociados.close;
  DM1.cdsAsociados.DataRequest(xSql);
  DM1.cdsAsociados.open;
  dm1.cdsAsociados.IndexFieldNames := 'ASOCODMOD;ASOCODAUX';
  Try
   //** Inicio Transacción
   //** hABILITAR LUEGO
   //** DM1.DCOM1.AppServer.SolStartTransaction;
   DM1.cdsQry1.First;
   xVan := 1;
   //** Paso 1, recorro toda la data
   While Not DM1.cdsQry1.Eof Do
    Begin
     //** se verifica que el asociado exista en el Maestro APO201 para porder insertar en
     //** CRE301 (Cabecera de Prestamo)
     dm1.cdsAsociados.setkey;
     dm1.cdsAsociados.fieldByName('ASOCODMOD').AsString  := DM1.cdsQry1.FieldByName('COD_MOD').AsString;
     dm1.cdsAsociados.fieldByName('ASOCODAUX').AsString := dm1.strzero(DM1.cdsQry1.FieldByName('NRO_VEZ').AsString,2);
     If dm1.cdsAsociados.Gotokey then
     //** activar luego
      begin
       //** Limpio la variable
       xResultados := '';
       xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('COD_MOD').AsString)+',';
       xResultados :=  xResultados + quotedstr(dm1.StrZero(DM1.cdsQry1.FieldByName('NRO_VEZ').AsString,2))+',';
       xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('COD_USE').AsString)+',';
       xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('COD_PAG').AsString)+',';
       xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('TIP_PRE').AsString)+',';

       If DM1.cdsQry1.FieldByName('COD_OFI').AsString = '' then
         //** CREID
         xResultados :=  xResultados + quotedstr('01'+DM1.StrZero(DM1.cdsQry1.FieldByName('NUM_PRE').AsString,8))+','
       else
         //** CREID
         xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('COD_OFI').AsString+
                                                 DM1.StrZero(DM1.cdsQry1.FieldByName('NUM_PRE').AsString,8))+',';

       xResultados :=  xResultados + DM1.cdsQry1.FieldByName('ITE_CUO').AsString+',';
       xResultados :=  xResultados + DM1.cdsQry1.FieldByName('MON_CUO').AsString+',';
       If DM1.cdsQry1.FieldByName('TIP_CAM').AsFloat > 0 then
        xResultados :=  xResultados + FloatToStr(DM1.cdsQry1.FieldByName('MON_CUO').AsFloat / DM1.cdsQry1.FieldByName('TIP_CAM').AsFloat) +','
       else
        xResultados :=  xResultados + '0.00'+',';

       xFecha := StrToDAte(copy(DM1.cdsQry1.FieldByName('FEC_PAG').AsString,7,2)+'/'+
                           copy(DM1.cdsQry1.FieldByName('FEC_PAG').AsString,5,2)+'/'+
                           copy(DM1.cdsQry1.FieldByName('FEC_PAG').AsString,1,4));
       sFecha := formatdatetime('DD/MM/YYYY',xFecha);
       xResultados :=  xResultados + quotedstr(sFecha)+',';

       xResultados :=  xResultados + DM1.cdsQry1.FieldByName('AMO_PAG').AsString+',';
       xResultados :=  xResultados + DM1.cdsQry1.FieldByName('INT_PAG').AsString+',';
       xResultados :=  xResultados + DM1.cdsQry1.FieldByName('GAS_PAG').AsString+',';
       xResultados :=  xResultados + DM1.cdsQry1.FieldByName('MON_PAG').AsString+',';
       xResultados :=  xResultados + DM1.cdsQry1.FieldByName('TIP_CAM').AsString+',';

       xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('USUARIO').AsString)+',';

       xFecha := StrToDAte(DM1.cdsQry1.FieldByName('FECHA').AsString);

       sFecha := formatdatetime('DD/MM/YYYY',xFecha);
       xResultados :=  xResultados + quotedstr(sFecha)+',';

       xResultados :=  xResultados + wRepHorServi+',';

       xResultados :=  xResultados + quotedstr(dblcCia1.text)+','; //** por defecto quer apunte a la Cia = '02'
       xResultados :=  xResultados + quotedstr(DM1.cdsAsociados.FieldByName('ASOID').AsString)+',';
       If DM1.cdsAsociados.FieldByName('UPROID').AsString = '' then
        xResultados :=  xResultados + 'null,'
       else
        xResultados :=  xResultados + quotedstr(DM1.cdsAsociados.FieldByName('UPROID').AsString)+',';
       If DM1.cdsAsociados.FieldByName('DPTOID').AsString = '' then
        xResultados :=  xResultados + 'null,'
       else
        xResultados :=  xResultados + quotedstr(DM1.cdsAsociados.FieldByName('DPTOID').AsString)+',';
       If DM1.cdsAsociados.FieldByName('UPAGOID').AsString = '' then
        xResultados :=  xResultados + 'null,'
       else
        xResultados :=  xResultados + quotedstr(DM1.cdsAsociados.FieldByName('UPAGOID').AsString)+',';
       If DM1.cdsAsociados.FieldByName('BANCOID').AsString = '' then
        xResultados :=  xResultados + 'null,'
       else
        xResultados :=  xResultados + quotedstr(DM1.cdsAsociados.FieldByName('BANCOID').AsString)+',';
       If DM1.cdsAsociados.FieldByName('ASONCTA').AsString = '' then
        xResultados :=  xResultados + 'null,'
       else
        xResultados :=  xResultados + quotedstr(DM1.cdsAsociados.FieldByName('ASONCTA').AsString)+',';
       If DM1.cdsAsociados.FieldByName('ASOAPENOM').AsString = '' then
        xResultados :=  xResultados + 'null,'
       else
        xResultados :=  xResultados + quotedstr(DM1.cdsAsociados.FieldByName('ASOAPENOM').AsString)+',';

       If DM1.cdsAsociados.FieldByName('CIUDID').AsString = '' then
        xResultados :=  xResultados + 'null'+','
       else
        xResultados :=  xResultados + quotedstr(DM1.cdsAsociados.FieldByName('CIUDID').AsString)+',';
       xResultados :=  xResultados + quotedstr(copy(Trim(clbArchivos.Items.Strings[xItemIndex]),1,8) + FloatToStr(xAno));
       Label2.caption := IntToStr(xVan);
       Label2.Refresh;
       xSql := 'INSERT INTO CRE310 ('+xCampoC1+') values ('+xresultados+')';
       dm1.dcom1.AppServer.EjecutaSQL(xSql);
       xVan := xVan +1;
      end;
     DM1.cdsQry1.next;
    End;
    //** hABILITAR LUEGO
    //** DM1.DCOM1.AppServer.SolCommit; //GrabaTransaccion;
    //** fuerza la ruta
  except
    //** hABILITAR LUEGO
    //** DM1.DCOM1.AppServer.SolRollBack;// RegresaTransaccion;
  End;

 }

{
const
  xCampos303 : String = ('TIPCREID,ASOID,ASOCODMOD,ASOCODPAGO,ASOAPENOM,USEID,CREFOTORG,'+
                      'TMONID,CREMTOSOL,CREMTOOTOR,CREMTOGIR,CREINTERES,CREDFLAT,CRECUOTA,CRENUMCUO,'+
                      'CRETCALID,TMONABR,TIPDESEID,CRELUGGIRO,BANCOID,CRENUMCTA,CRESDOACT,CREFINIPAG,'+
                      'CREFFINPAG,CRECUOPAG,CREESTADO,CRESALDOT,OFDESID,CREDID,CALIFICAID,USUARIO,'+
                      'FREG,HREG,GARAPENOM,GARASOID,AGENBANCOID,DPTOGIRO,BCOGIRO,FORPAGOID,CUOTAINI,DPTOID,'+
                      'UPROID,TIPCREDES,TIPDESEABR,CREGADM,CREMORA,FORPAGOABR,CIAID,LISTAID,LISTAABR,'+
                      'CONDCREDID,CREESTID,ASOCODAUX,CREANOMES');

  xCampos301 : String = ('TIPCREID,ASOID,ASOCODMOD,ASOCODPAGO,ASOAPENOM,USEID,CREFOTORG,'+
                         'TMONID,CREMTOSOL,CREMTOOTOR,CREMTOGIR,CREINTERES,CREDFLAT,CRECUOTA,CRENUMCUO,'+
                         'CRETCALID,TMONABR,CRELUGGIRO,BANCOID,CRENUMCTA,CRESDOACT,CREFINIPAG,'+
                         'CREFFINPAG,CRECUOPAG,CREESTADO,CRESALDOT,OFDESID,CREDID,CALIFICAID,USUARIO,'+
                         'FREG,HREG,GARAPENOM,GARASOID,AGENBANCOID,DPTOGIRO,BCOGIRO,FORPAGOID,CUOTAINI,DPTOID,'+
                         'UPROID,TIPCREDES,CREGADM,CREMORA,FORPAGOABR,CIAID,LISTAID,LISTAABR,'+
                         'CREESTID,ASOCODAUX,CREANOMES,UPAGOID,NROFICIO');
var
  //xUpdateAPO201 : Array[1..12,1..1] of string;
  xwhere,xForpagoid,xCreestaid, sFecha,xResultados, xsql : String;
  xFecha : TDate;
  xVan : Integer;
  xTmonid : String;
begin
//** Para cabecera de prestamos CRE301
  try
   DM1.cdsAsociados.PacketRecords := -1;
   dm1.cdsQry1.DisableControls;

   DM1.cdsQry1.Filter := '';
   DM1.cdsQry1.Filtered := False;
   xSql := 'SELECT * FROM PRESTAM';
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xSql);
   DM1.cdsQry1.Open;

  xSql := 'SELECT C.* FROM APO201 C,(SELECT A.ASOCODMOD,A.ASOCODAUX,B.COD_MOD,B.NRO_VEZ'+
          ' FROM APO201 A,PRESTAM B WHERE'+
          ' SUBSTR(TRIM(A.ASOCODMOD),1,10)=SUBSTR(TRIM(B.COD_MOD),1,10) AND'+
          ' SUBSTR(TRIM(A.ASOCODAUX),1,2)=SUBSTR(TRIM(B.NRO_VEZ),1,2)'+
          ' GROUP BY A.asocodmod,A.asocodaux,B.COD_MOD,B.NRO_VEZ ) D'+
          ' WHERE SUBSTR(TRIM(C.ASOCODMOD),1,10)=SUBSTR(TRIM(D.COD_MOD),1,10) AND'+
          ' SUBSTR(TRIM(C.ASOCODAUX),1,2)=SUBSTR(TRIM(D.NRO_VEZ),1,2)';
   DM1.cdsAsociados.close;
   DM1.cdsAsociados.DataRequest(xSql);
   DM1.cdsAsociados.open;
   dm1.cdsAsociados.IndexFieldNames := 'ASOCODMOD;ASOCODAUX';
    try
     //** Inicio Transacción
     //** hABILITAR LUEGO
     //** DM1.DCOM1.AppServer.SolStartTransaction;
     DM1.cdsQry1.First;
     xVan := 1;
     //** Paso 1, recorro toda la data
     While Not DM1.cdsQry1.Eof Do
      Begin
       //** se verifica que el asociado exista en el Maestro APO201 para porder insertar en
       //** CRE303 (Cabecera de Prestamo)
       dm1.cdsAsociados.setkey;
       dm1.cdsAsociados.fieldByName('ASOCODMOD').AsString := TRIM(DM1.cdsQry1.FieldByName('COD_MOD').AsString);
       dm1.cdsAsociados.fieldByName('ASOCODAUX').AsString := TRIM(dm1.strzero(DM1.cdsQry1.FieldByName('NRO_VEZ').AsString,2));
       If dm1.cdsAsociados.Gotokey then
        begin
         //** Limpio la variable
         xResultados := '';
         //** TIPCREID
         xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('TIP_PRE').AsString)+',';
         //** ASOID
         xResultados :=  xResultados + quotedstr(dm1.cdsAsociados.FieldByName('ASOID').AsString)+',';
         //** ASOCODMOD
         xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('COD_MOD').AsString)+',';
         //** ASOCODPAGO
         xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('COD_PAG').AsString)+',';
         //** ASOAPENOM
         xResultados :=  xResultados + quotedstr(dm1.cdsAsociados.FieldByName('ASOAPENOM').AsString)+',';
         //** USEID
         xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('COD_USE').AsString)+',';
         //** CREFOTORG
         If Length(DM1.cdsQry1.FieldByName('FEC_PRE').AsString) > 0 then
          begin
           xFecha := StrToDAte(copy(DM1.cdsQry1.FieldByName('FEC_PRE').AsString,7,2)+'/'+
                   copy(DM1.cdsQry1.FieldByName('FEC_PRE').AsString,5,2)+'/'+
                   copy(DM1.cdsQry1.FieldByName('FEC_PRE').AsString,1,4));
           sFecha := formatdatetime('DD/MM/YYYY',xFecha);
           xResultados :=  xResultados + quotedstr(sFecha)+',';
          end
         else
           xResultados := xResultados + Null+',';
         //** TMONID buscar en tabla de Equivalencias CRE116
         If DM1.cdsQry1.FieldByName('TIP_MON').AsString = '' then
          begin
            xResultados :=  xResultados +quotedstr('N') +',';
            xTmonid := 'N';
          end
         else
          begin
           xWhere := 'ORIGEN='+ quotedstr(DM1.cdsQry1.FieldByName('TIP_MON').AsString)+
                     ' AND CAMPO='+quotedstr('TIP_MON');
           xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE116','EQUIVALE',xwhere,'EQUIVALE'))+',';
           xTmonid := dm1.cdsqry.Fieldbyname('EQUIVALE').AsString;
          end;
         //** CREMTOSOL
         xResultados :=  xResultados + DM1.cdsQry1.FieldByName('MONTO').AsString+',';
         //** CREMTOOTOR
         xResultados :=  xResultados + DM1.cdsQry1.FieldByName('MONTO').AsString+',';
         //** CREMTOGIR
         xResultados :=  xResultados + DM1.cdsQry1.FieldByName('MONTO').AsString+',';
         //** CREINTERES
         xResultados :=  xResultados + DM1.cdsQry1.FieldByName('TAS_INT').AsString+',';
         //** CREDFLAT
         xResultados :=  xResultados + DM1.cdsQry1.FieldByName('TAS_FLT').AsString+',';
         //** CRECUOTA
         xResultados :=  xResultados + DM1.cdsQry1.FieldByName('CUOTA').AsString+',';
         //** CRENUMCUO
         xResultados :=  xResultados + DM1.cdsQry1.FieldByName('NUM_CUO').AsString+',';
         //** CRETCALID  buscar en tabla de Equivalencias CRE116
         xWhere := 'ORIGEN='+ quotedstr(DM1.cdsQry1.FieldByName('TIP_CUO').AsString)+
                   ' AND CAMPO='+quotedstr('TIP_CUO');
         xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE116','EQUIVALE',xwhere,'EQUIVALE'))+',';
         //** TMONABR
         xWhere := 'TMONID='+ quotedstr(xTmonid);
         xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','TGE103','TMONABR',xwhere,'TMONABR'))+',';
         //** TIPDESEID
         xResultados :=  xResultados + quotedstr(COPY(DM1.cdsQry1.FieldByName('COD_BCO').AsString,2,2))+',';
         //** CRELUGGIR
         xWhere := 'AGENBCOID='+ quotedstr(DM1.cdsQry1.FieldByName('COD_GIR').AsString);
         xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','COB102','AGENBCODES',xwhere,'AGENBCODES'))+',';
         //** BANCOID
         xResultados :=  xResultados + 'NULL'+',';
         //** CRENUMCTA
         If dm1.cdsAsociados.FieldByName('ASONCTA').AsString = '' then
          xResultados :=  xResultados +  'NULL'+','
         else
          xResultados :=  xResultados + quotedstr(dm1.cdsAsociados.FieldByName('ASONCTA').AsString)+',';
         //** CRESDOACT
         xResultados :=  xResultados + DM1.cdsQry1.FieldByName('SALDO').AsString+',';
         //** CREFINIPAG
         If Length(DM1.cdsQry1.FieldByName('INICIO').AsString) > 0 then
          begin
           sFecha := copy(DM1.cdsQry1.FieldByName('INICIO').AsString,5,2)+
                     copy(DM1.cdsQry1.FieldByName('INICIO').AsString,1,4);
           xResultados :=  xResultados + quotedstr(sFecha)+',';
          end
         else
           xResultados := xResultados + 'NULL'+',';
         //** CREFFINPAG
         If Length(DM1.cdsQry1.FieldByName('FINAL').AsString) > 0 then
          begin
           sFecha :=copy(DM1.cdsQry1.FieldByName('FINAL').AsString,5,2)+
                    copy(DM1.cdsQry1.FieldByName('FINAL').AsString,1,4);
           xResultados :=  xResultados + quotedstr(sFecha)+',';
          end
         else
           xResultados := xResultados + 'NULL'+',';
         //** CRECUOPAG
         xResultados :=  xResultados + DM1.cdsQry1.FieldByName('CMS_PAG').AsString+',';
         //** CREESTADO
         If DM1.cdsQry1.FieldByName('FLG_CAN').AsString = '' then
          If UPPERCASE(DM1.cdsQry1.FieldByName('ANULADO').AsString) = 'FALSE' then
            begin
             xWhere := 'ORIGEN='+ quotedstr(UPPERCASE(DM1.cdsQry1.FieldByName('ANULADO').AsString))+
                       ' AND CAMPO='+quotedstr('ANULADO');
             xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE116','EQUIVALE',xwhere,'EQUIVALE'))+',';
             xCreestaid := DM1.cdsQry.FieldByName('EQUIVALE').AsString;
            end
           else
            begin
             xWhere := 'ORIGEN='+ quotedstr('TRUE')+' AND CAMPO='+quotedstr('ANULADO');
             xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE116','EQUIVALE',xwhere,'EQUIVALE'))+',';
             xCreestaid := DM1.cdsQry.FieldByName('EQUIVALE').AsString;
            end
         else
          Begin
            xWhere := 'ORIGEN='+ quotedstr(DM1.cdsQry1.FieldByName('FLG_CAN').AsString)+
                      ' AND CAMPO='+quotedstr('FLG_CAN');
            xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE116','EQUIVALE',xwhere,'EQUIVALE'))+',';
            xCreestaid := DM1.cdsQry.FieldByName('EQUIVALE').AsString;
          end;
         //** CRESALDOT
         xResultados :=  xResultados + dm1.cdsQry1.FieldByName('SAL_TOT').AsString+',';
         //** OFDESID
         If DM1.cdsQry1.FieldByName('COD_OFI').AsString = '' then
          begin
           xResultados :=  xResultados +  'NULL'+',';
           //** CREID
           xResultados :=  xResultados + quotedstr('01'+Dm1.StrZero(DM1.cdsQry1.FieldByName('NUM_PRE').AsString,8))+',';
          end
         else
          begin
           xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('COD_OFI').AsString)+',';
           //** CREID
           xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('COD_OFI').AsString+
                                                   Dm1.StrZero(DM1.cdsQry1.FieldByName('NUM_PRE').AsString,8))+',';
          end;

         //** CALIFICAID
         xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('USUARIO').AsString)+',';
         //** USUARIO
         xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('USUARIO').AsString)+',';
         //** FREG
         If Length(DM1.cdsQry1.FieldByName('FECHA').AsString) > 0 then
          begin
           xFecha := StrToDAte(DM1.cdsQry1.FieldByName('FECHA').AsString);
           sFecha := formatdatetime('DD/MM/YYYY',xFecha);
           xResultados :=  xResultados + quotedstr(sFecha)+',';
          end
         else
           xResultados := xResultados + 'NULL'+',';
         //** HREG
         xResultados :=  xResultados + wRepHorServi+',';
         //** GARAPENOM, por ahora se busca solo por el codigo moduloar, luego tendra que
         //** incluirse el nro_vez
         xWhere := 'ASOCODMOD='+quotedstr(DM1.cdsQry1.FieldByName('COD_AVA').AsString);
         xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','APO201','ASOAPENOM',xwhere,'ASOAPENOM'))+',';
         //** GARASOID
         xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('COD_AVA').AsString)+',';
         //** AGENBANCOID
         xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('COD_GIR').AsString)+',';
         //** DPTOGIR
         xWhere := 'AGENBCOID='+quotedstr(DM1.cdsQry1.FieldByName('COD_GIR').AsString);
         xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','COB102','BANCOID,DPTOID',xwhere,'DPTOID'))+',';
         //** BCOGIRO
         xResultados :=  xResultados +quotedstr(Dm1.cdsQry.FieldByName('BANCOID').AsString)+',';
         //** FORPAGOID
         If DM1.cdsQry1.FieldByName('TIP_PAG').AsString = '' then
           begin
            xResultados :=  xResultados +quotedstr('18') +',';
            xForpagoid := '18'
           end
         else
          begin
           xWhere := 'ORIGEN='+ quotedstr(DM1.cdsQry1.FieldByName('TIP_PAG').AsString)+
                     ' AND CAMPO ='+quotedstr('TIP_PAG');
           xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE116','EQUIVALE',xwhere,'EQUIVALE'))+',';
           xForpagoid  := DM1.cdsQry.fieldByName('EQUIVALE').AsString;
          end;
         //** CUOTAINI
         xResultados :=  xResultados + DM1.cdsQry1.FieldByName('CUO_INI').AsString+',';

         //** DPTOID
         xWhere := 'ORIGEN='+ quotedstr(DM1.cdsQry1.FieldByName('DEPARTA').AsString)+
                   ' AND CAMPO ='+quotedstr('DEPARTA');
         xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE116','EQUIVALE',xwhere,'EQUIVALE'))+',';
         //** UPROID
         xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('LUG_PRO').AsString)+',';

         //** TIPCREDES
         xWhere := 'TIPCREID='+ quotedstr(DM1.cdsQry1.FieldByName('TIP_PRE').AsString);
         xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE110','TIPCREDES',xwhere,'TIPCREDES'))+',';

         //** TIPDESEABR
         xWhere := 'TIPDESEID='+ quotedstr(copy(DM1.cdsQry1.FieldByName('COD_BCO').AsString,2,2));
         xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE104','TIPDESEABR',xwhere,'TIPDESEABR'))+',';
         //** CREGADM
         xResultados :=  xResultados + DM1.cdsQry1.FieldByName('TAS_GAS').AsString+',';
         //** CREMORA
         xResultados :=  xResultados + dm1.cdsQry1.FieldByName('TAS_MOR').AsString+',';
         //** FORPAGOABR
         xWhere := 'FORPAGOID='+ quotedstr(xForpagoid);
         xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','COB101','FORPAGOABR',xwhere,'FORPAGOABR'))+',';
         //** CIAID
         xResultados :=  xResultados + quotedstr('02')+',';
         //** LISTAID
         xResultados :=  xResultados +quotedstr('001')+','; //** por ahora se deja en 01 la lista de credito
         //** LISTAABR
         xWhere := 'LISTAID='+ quotedstr('001'); //** por ahora se deja en 01 la lista de credito
         xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE101','LISTAABR,CONDCREDID',xwhere,'LISTAABR'))+',';
         //** CONDCREDID
         xResultados :=  xResultados + quotedstr(DM1.cdsQry.FieldByName('CONDCREDID').AsString)+',';
         //** CREESTID
         xResultados :=  xResultados + quotedstr(xCreestaid)+',';
         //** ASOCODAUX
         xResultados :=  xResultados + quotedstr(DM1.StrZero(DM1.cdsQry1.FieldByName('NRO_VEZ').AsString,2))+',';
         //** CREANOMES
         xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('ANO_PRE').AsString+
                                                 DM1.cdsQry1.FieldByName('MES_PRE').AsString);
         Label2.caption := IntToStr(xVan);
         Label2.Refresh;
         xSql := 'INSERT INTO CRE303 ('+xCampos303+') values ('+xresultados+')';
         dm1.dcom1.AppServer.EjecutaSQL(xSql);
         xVan := xVan + 1;

         ////////////////////////////////////////////////////////////////////////////
        //** Para DETALLE DE LA SOLICITUD CRE301
         //** Limpio la variable
         xResultados := '';
         //** TIPCREID
         xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('TIP_PRE').AsString)+',';
         //** ASOID
         xResultados :=  xResultados + quotedstr(dm1.cdsAsociados.FieldByName('ASOID').AsString)+',';
         //** ASOCODMOD
         xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('COD_MOD').AsString)+',';
         //** ASOCODPAGO
         xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('COD_PAG').AsString)+',';
         //** ASOAPENOM
         xResultados :=  xResultados + quotedstr(dm1.cdsAsociados.FieldByName('ASOAPENOM').AsString)+',';
         //** USEID
         xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('COD_USE').AsString)+',';
         //** CREFOTORG
         If Length(DM1.cdsQry1.FieldByName('FEC_PRE').AsString) > 0 then
          begin
           xFecha := StrToDAte(copy(DM1.cdsQry1.FieldByName('FEC_PRE').AsString,7,2)+'/'+
                   copy(DM1.cdsQry1.FieldByName('FEC_PRE').AsString,5,2)+'/'+
                   copy(DM1.cdsQry1.FieldByName('FEC_PRE').AsString,1,4));
           sFecha := formatdatetime('DD/MM/YYYY',xFecha);
           xResultados :=  xResultados + quotedstr(sFecha)+',';
          end
         else
           xResultados := xResultados + Null+',';
         //** TMONID buscar en tabla de Equivalencias CRE116
         If DM1.cdsQry1.FieldByName('TIP_MON').AsString = '' then
          begin
            xResultados :=  xResultados +quotedstr('N') +',';
            xTmonid := 'N';
          end
         else
          begin
           xWhere := 'ORIGEN='+ quotedstr(DM1.cdsQry1.FieldByName('TIP_MON').AsString)+
                     ' AND CAMPO='+quotedstr('TIP_MON');
           xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE116','EQUIVALE',xwhere,'EQUIVALE'))+',';
           xTmonid := dm1.cdsqry.Fieldbyname('EQUIVALE').AsString;
          end;
         //** CREMTOSOL
         xResultados :=  xResultados + DM1.cdsQry1.FieldByName('MONTO').AsString+',';
         //** CREMTOOTOR
         xResultados :=  xResultados + DM1.cdsQry1.FieldByName('MONTO').AsString+',';
         //** CREMTOGIR
         xResultados :=  xResultados + DM1.cdsQry1.FieldByName('MONTO').AsString+',';
         //** CREINTERES
         xResultados :=  xResultados + DM1.cdsQry1.FieldByName('TAS_INT').AsString+',';
         //** CREDFLAT
         xResultados :=  xResultados + DM1.cdsQry1.FieldByName('TAS_FLT').AsString+',';
         //** CRECUOTA
         xResultados :=  xResultados + DM1.cdsQry1.FieldByName('CUOTA').AsString+',';
         //** CRENUMCUO
         xResultados :=  xResultados + DM1.cdsQry1.FieldByName('NUM_CUO').AsString+',';

         //** CRETCALID  buscar en tabla de Equivalencias CRE116
         xWhere := 'ORIGEN='+ quotedstr(DM1.cdsQry1.FieldByName('TIP_CUO').AsString)+
                   ' AND CAMPO='+quotedstr('TIP_CUO');
         xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE116','EQUIVALE',xwhere,'EQUIVALE'))+',';
         //** TMONABR
         xWhere := 'TMONID='+ quotedstr(xTmonid);
         xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','TGE103','TMONABR',xwhere,'TMONABR'))+',';
         //** CRELUGGIRO
         xWhere := 'AGENBCOID='+ quotedstr(DM1.cdsQry1.FieldByName('COD_GIR').AsString);
         xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','COB102','AGENBCODES',xwhere,'AGENBCODES'))+',';
         //** BANCOID
         xResultados :=  xResultados + 'NULL'+',';
         //** CRENUMCTA
         If dm1.cdsAsociados.FieldByName('ASONCTA').AsString = '' then
          xResultados :=  xResultados +  'NULL'+','
         else
          xResultados :=  xResultados + quotedstr(dm1.cdsAsociados.FieldByName('ASONCTA').AsString)+',';
         //** CRESDOACT
         xResultados :=  xResultados + DM1.cdsQry1.FieldByName('SALDO').AsString+',';
         //** CREFINIPAG
         If Length(DM1.cdsQry1.FieldByName('INICIO').AsString) > 0 then
          begin
           sFecha := copy(DM1.cdsQry1.FieldByName('INICIO').AsString,5,2)+
                     copy(DM1.cdsQry1.FieldByName('INICIO').AsString,1,4);
           xResultados :=  xResultados + quotedstr(sFecha)+',';
          end
         else
           xResultados := xResultados + 'NULL'+',';
         //** CREFFINPAG
         If Length(DM1.cdsQry1.FieldByName('FINAL').AsString) > 0 then
          begin
           sFecha := copy(DM1.cdsQry1.FieldByName('FINAL').AsString,5,2)+
                     copy(DM1.cdsQry1.FieldByName('FINAL').AsString,1,4);
           xResultados :=  xResultados + quotedstr(sFecha)+',';
          end
         else
           xResultados := xResultados + 'NULL'+',';
         //** CRECUOPAG
         xResultados :=  xResultados + DM1.cdsQry1.FieldByName('CMS_PAG').AsString+',';
         //** CREESTADO
         If DM1.cdsQry1.FieldByName('FLG_CAN').AsString = '' then
          If UPPERCASE(DM1.cdsQry1.FieldByName('ANULADO').AsString) = 'FALSE' then
            begin
             xWhere := 'ORIGEN='+ quotedstr(UPPERCASE(DM1.cdsQry1.FieldByName('ANULADO').AsString))+
                       ' AND CAMPO='+quotedstr('ANULADO');
             xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE116','EQUIVALE',xwhere,'EQUIVALE'))+',';
             xCreestaid := DM1.cdsQry.FieldByName('EQUIVALE').AsString;
            end
           else
            begin
             xWhere := 'ORIGEN='+ quotedstr('TRUE')+' AND CAMPO='+quotedstr('ANULADO');
             xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE116','EQUIVALE',xwhere,'EQUIVALE'))+',';
             xCreestaid := DM1.cdsQry.FieldByName('EQUIVALE').AsString;
            end
         else
          Begin
            xWhere := 'ORIGEN='+ quotedstr(DM1.cdsQry1.FieldByName('FLG_CAN').AsString)+
                      ' AND CAMPO='+quotedstr('FLG_CAN');
            xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE116','EQUIVALE',xwhere,'EQUIVALE'))+',';
            xCreestaid := DM1.cdsQry.FieldByName('EQUIVALE').AsString;
          end;
         //** CRESALDOT
         xResultados :=  xResultados + dm1.cdsQry1.FieldByName('SAL_TOT').AsString+',';

         //** OFDESID
         If DM1.cdsQry1.FieldByName('COD_OFI').AsString = '' then
          begin
           xResultados :=  xResultados +  'NULL'+',';
           //** CREID
           xResultados :=  xResultados + quotedstr('01'+Dm1.StrZero(DM1.cdsQry1.FieldByName('NUM_PRE').AsString,8))+',';
          end
         else
          begin
           xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('COD_OFI').AsString)+',';
           //** CREID
           xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('COD_OFI').AsString+
                                                   Dm1.StrZero(DM1.cdsQry1.FieldByName('NUM_PRE').AsString,8))+',';
          end;

         //** CALIFICAID
         xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('USUARIO').AsString)+',';
         //** USUARIO
         xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('USUARIO').AsString)+',';
         //** FREG
         If Length(DM1.cdsQry1.FieldByName('FECHA').AsString) > 0 then
          begin
           xFecha := StrToDAte(DM1.cdsQry1.FieldByName('FECHA').AsString);
           sFecha := formatdatetime('DD/MM/YYYY',xFecha);
           xResultados :=  xResultados + quotedstr(sFecha)+',';
          end
         else
           xResultados := xResultados + 'NULL'+',';
         //** HREG
         xResultados :=  xResultados + wRepHorServi+',';
         //** GARAPENOM, por ahora se busca solo por el codigo moduloar, luego tendra que
         //** incluirse el nro_vez
         xWhere := 'ASOCODMOD='+quotedstr(DM1.cdsQry1.FieldByName('COD_AVA').AsString);
         xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','APO201','ASOAPENOM',xwhere,'ASOAPENOM'))+',';
         //** GARASOID
         xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('COD_AVA').AsString)+',';
         //** AGENBANCOID
         xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('COD_GIR').AsString)+',';
         //** DPTOGIR
         xWhere := 'AGENBCOID='+quotedstr(DM1.cdsQry1.FieldByName('COD_GIR').AsString);
         xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','COB102','BANCOID,DPTOID',xwhere,'DPTOID'))+',';
         //** BCOGIRO
         xResultados :=  xResultados +quotedstr(Dm1.cdsQry.FieldByName('BANCOID').AsString)+',';
         //** FORPAGOID
         If DM1.cdsQry1.FieldByName('TIP_PAG').AsString = '' then
           begin
            xResultados :=  xResultados +quotedstr('18') +',';
            xForpagoid := '18'
           end
         else
          begin
           xWhere := 'ORIGEN='+ quotedstr(DM1.cdsQry1.FieldByName('TIP_PAG').AsString)+
                     ' AND CAMPO ='+quotedstr('TIP_PAG');
           xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE116','EQUIVALE',xwhere,'EQUIVALE'))+',';
           xForpagoid  := DM1.cdsQry.fieldByName('EQUIVALE').AsString;
          end;
         //** CUOTAINI
         xResultados :=  xResultados + DM1.cdsQry1.FieldByName('CUO_INI').AsString+',';
         //** DPTOID
         xWhere := 'ORIGEN='+ quotedstr(DM1.cdsQry1.FieldByName('DEPARTA').AsString)+
                   ' AND CAMPO ='+quotedstr('DEPARTA');
         xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE116','EQUIVALE',xwhere,'EQUIVALE'))+',';
         //** UPROID
         xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('LUG_PRO').AsString)+',';
         //** TIPCREDES
         xWhere := 'TIPCREID='+ quotedstr(DM1.cdsQry1.FieldByName('TIP_PRE').AsString);
         xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE110','TIPCREDES',xwhere,'TIPCREDES'))+',';
         //** CREGADM
         xResultados :=  xResultados + DM1.cdsQry1.FieldByName('TAS_GAS').AsString+',';
         //** CREMORA
         xResultados :=  xResultados + dm1.cdsQry1.FieldByName('TAS_MOR').AsString+',';
         //** FORPAGOABR
         xWhere := 'FORPAGOID='+ quotedstr(xForpagoid);
         xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','COB101','FORPAGOABR',xwhere,'FORPAGOABR'))+',';
         //** CIAID
         xResultados :=  xResultados + quotedstr('02')+',';
         //** LISTAID
         xResultados :=  xResultados +quotedstr('001')+','; //** por ahora se deja en 01 la lista de credito
         //** LISTAABR
         xWhere := 'LISTAID='+ quotedstr('001'); //** por ahora se deja en 01 la lista de credito
         xResultados :=  xResultados + quotedstr(DM1.DisplayDescrip('prvSQL','CRE101','LISTAABR,CONDCREDID',xwhere,'LISTAABR'))+',';
         //** CREESTID
         xResultados :=  xResultados + quotedstr(xCreestaid)+',';
         //** ASOCODAUX
         xResultados :=  xResultados + quotedstr(DM1.StrZero(DM1.cdsQry1.FieldByName('NRO_VEZ').AsString,2))+',';
         //** CREANOMES
         xResultados :=  xResultados + quotedstr(DM1.cdsQry1.FieldByName('ANO_PRE').AsString+
                                                 DM1.cdsQry1.FieldByName('MES_PRE').AsString)+',';
         //** UPAGOID
         If dm1.cdsAsociados.FieldByName('UPAGOID').AsString = '' then
           xResultados :=  xResultados +  'NULL,'
         else
          xResultados :=  xResultados + quotedstr(dm1.cdsAsociados.FieldByName('UPAGOID').AsString)+',';
         //** NROFICIO
         xResultados :=  xResultados +
                     quotedstr(DM1.StrZero(DM1.cdsQry1.FieldByName('DOC_OFI').AsString,2));

         xSql := 'INSERT INTO CRE301 ('+xCampos301+') values ('+xresultados+')';
         dm1.dcom1.AppServer.EjecutaSQL(xSql);
        end;
       DM1.cdsQry1.next;
      End;
     //** hABILITAR LUEGO
     //** DM1.DCOM1.AppServer.SolCommit; //GrabaTransaccion;
    except
     //** hABILITAR LUEGO
     //** DM1.DCOM1.AppServer.SolRollBack;// RegresaTransaccion;
    End;
 finally
  dm1.cdsQry1.EnableControls;
  DM1.cdsAsociados.PacketRecords := 100;
 end;
}

