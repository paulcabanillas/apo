Unit APO301;

// Inicio Uso Estándares: 01/08/2011
// Unidad               : APO301
// Formulario           : FCaptaAportes
// Fecha de Creación    : 15/12/2003
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Capta Aportes
// Actualizaciones      :
// HPC_201502_APO       : Cambiar el formato de Fecha

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   fcButton, fcImgBtn, fcShapeBtn, wwdblook, Wwdbspin, wwdbdatetimepicker,
   StdCtrls, ComCtrls, wwriched, Mask, wwdbedit, ExtCtrls, Wwdbdlg, Buttons,
   Wwdbigrd, Grids, Wwdbgrid, Wwdotdot, Wwdbcomb, wwClient, db, DBClient,
   ppTypes, Wwdatsrc, ppPrnabl, ppClass, ppCtrls, ppBands, ppCache, ppComm, ppRelatv,
   variants, ppProd, ppReport, ppStrtch, ppMemo, Spin, ppVar, ppDB, ppDBPipe,
   ppModule, daDataModule;

Type
   TFCaptaAportes = Class(TForm)
      pnlCabecera: TPanel;
      Z2bbtnCancel: TfcShapeBtn;
      Z2bbtnAceptar: TfcShapeBtn;
      dbeCodigoModular: TwwDBEdit;
      dbeCodigoPago: TwwDBEdit;
      Panel2: TPanel;
      pnlInicio: TPanel;
      Label54: TLabel;
      dbeApePat: TwwDBEdit;
      Label55: TLabel;
      dbeApeMat: TwwDBEdit;
      Label56: TLabel;
      dbeNombres: TwwDBEdit;
      dblcSituacion: TwwDBLookupCombo;
      edtSituacion: TEdit;
      dblcTipoAsoc: TwwDBLookupCombo;
      edtTipoAso: TEdit;
      edtTransaccion: TEdit;
      dblcTransaccion: TwwDBLookupCombo;
      dblcdUPro: TwwDBLookupComboDlg;
      edtUPro: TEdit;
      dblcdUPago: TwwDBLookupComboDlg;
      edtUPago: TEdit;
      dblcdCodigo: TwwDBLookupComboDlg;
      Label1: TLabel;
      edtUse: TEdit;
      dblcdUSE: TwwDBLookupComboDlg;
      bbtnAceptaCab: TfcShapeBtn;
      fcShapeBtn2: TfcShapeBtn;
      pnlDatos: TPanel;
      z2bbtnNuevo: TfcShapeBtn;
      dbgAportes: TwwDBGrid;
      bbtnIngresaAporte: TwwIButton;
      pnlAportes: TPanel;
      StaticText1: TStaticText;
      Panel3: TPanel;
      Panel1: TPanel;
      Label5: TLabel;
      lblBanco: TLabel;
      Label12: TLabel;
      Label10: TLabel;
      lblOperacion: TLabel;
      Label7: TLabel;
      Label8: TLabel;
      dbeFormaPagoAbr: TwwDBEdit;
      dblcFormaPago: TwwDBLookupCombo;
      dbeFormaPago: TwwDBEdit;
      dblcBanco: TwwDBLookupCombo;
      dblcAgencia: TwwDBLookupComboDlg;
      dbeBanco: TwwDBEdit;
      dbeAgencia: TwwDBEdit;
      dblcCtaCte: TwwDBLookupCombo;
      dbeNumOpe: TwwDBEdit;
      dbdtpFechaOperacion: TwwDBDateTimePicker;
      dblcMoneda: TwwDBLookupCombo;
      dbeMoneda: TwwDBEdit;
      Panel4: TPanel;
      dbgDetAportes: TwwDBGrid;
      wwDBGrid1IButton: TwwIButton;
      fcShapeBtn3: TfcShapeBtn;
      Label11: TLabel;
      dbeMonto: TwwDBEdit;
      cdsAporte: TwwClientDataSet;
      bbtnCierraImp: TfcShapeBtn;
      dsQry2: TwwDataSource;
      cdsQry2: TwwClientDataSet;
      bbtnAceptar: TfcShapeBtn;
      bbtnNuevo: TfcShapeBtn;
      ppReport1: TppReport;
      ppDetailBand1: TppDetailBand;
      bbtnImprimir: TfcShapeBtn;
      pnlPeriodoInicial: TPanel;
      stPeriodoInicial: TStaticText;
      bbtnAceptarPeriodoInicial: TfcShapeBtn;
      bbtnSalirPeriodoInicial: TfcShapeBtn;
      fcShapeBtn5: TfcShapeBtn;
      Label3: TLabel;
      SpeAnnos: TSpinEdit;
      SpEmeses: TSpinEdit;
      Label4: TLabel;
      pnlInforme: TPanel;
      lblinfodev1: TLabel;
      lblinfodev2: TLabel;
      fcShapeBtn1: TfcShapeBtn;
      StaticText2: TStaticText;
      lblinfodev3: TLabel;
      pnlObsAnula: TPanel;
      StaticText3: TStaticText;
      bbtnObsAnula: TfcShapeBtn;
      edtObsAnula: TEdit;
      btnImpAnulados: TfcShapeBtn;
      ppRAnulados: TppReport;
      ppDBAnulados: TppDBPipeline;
      ppHeaderBand2: TppHeaderBand;
      ppDetailBand2: TppDetailBand;
      ppFooterBand2: TppFooterBand;
      ppLabel3: TppLabel;
      ppLabel13: TppLabel;
      ppLApenom: TppLabel;
      ppLCodMod: TppLabel;
      ppLabel17: TppLabel;
      ppLabel18: TppLabel;
      ppLabel19: TppLabel;
      ppLabel20: TppLabel;
      ppLabel21: TppLabel;
      ppLabel22: TppLabel;
      ppLabel23: TppLabel;
      ppSystemVariable1: TppSystemVariable;
      ppSystemVariable2: TppSystemVariable;
      ppSystemVariable3: TppSystemVariable;
      ppLabel24: TppLabel;
      ppLabel25: TppLabel;
      ppLUpro: TppLabel;
      ppLUse: TppLabel;
      ppLUPago: TppLabel;
      ppLine1: TppLine;
      ppLine2: TppLine;
      ppLabel10: TppLabel;
      ppLabel14: TppLabel;
      ppLabel26: TppLabel;
      ppLabel27: TppLabel;
      ppLabel28: TppLabel;
      ppLabel29: TppLabel;
      ppLabel30: TppLabel;
      ppLabel31: TppLabel;
      ppLabel32: TppLabel;
      ppDBText1: TppDBText;
      ppDBText2: TppDBText;
      ppDBText3: TppDBText;
      ppDBText4: TppDBText;
      ppDBText5: TppDBText;
      ppDBText6: TppDBText;
      ppDBText7: TppDBText;
      ppDBText8: TppDBText;
      ppDBText9: TppDBText;
      ppLine4: TppLine;
      ppLine5: TppLine;
      ppLine6: TppLine;
      ppLine7: TppLine;
      ppLine8: TppLine;
      ppLine9: TppLine;
      ppLine10: TppLine;
      ppLine11: TppLine;
      BtnDivide: TfcShapeBtn;
      ppLabel1: TppLabel;
      ppLabel4: TppLabel;
      ppLabel5: TppLabel;
      ppLabel6: TppLabel;
      ppLabel7: TppLabel;
      pplblFecha: TppLabel;
      ppLabel11: TppLabel;
      ppLabel12: TppLabel;
      pplblAsociado: TppLabel;
      pplblMontoLetras: TppLabel;
      ppLabel15: TppLabel;
      ppLabel16: TppLabel;
      pplblNumero: TppLabel;
      pplblMonto2: TppLabel;
      pplbldetalle: TppMemo;
      ppLabel2: TppLabel;
      ppLabel9: TppLabel;
      pplblFecha01: TppLabel;
      ppLabel35: TppLabel;
      pplbldetalle01: TppMemo;
      ppLabel36: TppLabel;
      ppLabel37: TppLabel;
      ppLabel38: TppLabel;
      pplblAsociado01: TppLabel;
      pplblMontoLetras01: TppLabel;
      ppLabel41: TppLabel;
      pplblNumero01: TppLabel;
      ppLabel43: TppLabel;
      ppLabel44: TppLabel;
      ppLabel45: TppLabel;
      ppLabel46: TppLabel;
      pplblMonto201: TppLabel;
      ppLine3: TppLine;
      ppLine12: TppLine;
      ppSystemVariable4: TppSystemVariable;
      ppSystemVariable5: TppSystemVariable;
      btndeInconsistencias: TfcShapeBtn;
      BitTrans: TBitBtn;
      Procedure Z2bbtnCancelClick(Sender: TObject);
      Procedure dblcdCodigoExit(Sender: TObject);
      Procedure dbgAportesDblClick(Sender: TObject);
      Procedure bbtnIngresaAporteClick(Sender: TObject);
      Procedure Z2bbtnAceptarClick(Sender: TObject);
      Procedure dblcSituacionExit(Sender: TObject);
      Procedure dblcTipoAsocExit(Sender: TObject);
      Procedure FormCloseQuery(Sender: TObject; Var CanClose: Boolean);
      Procedure dblcdUSEExit(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure bbtnAceptaCabClick(Sender: TObject);
      Procedure z2bbtnNuevoClick(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure edtTransaccionExit(Sender: TObject);
      Procedure dblcTransaccionExit(Sender: TObject);
      Procedure dblcdCodigoDropDown(Sender: TObject);
      Procedure fcShapeBtn2Click(Sender: TObject);
      Procedure dblcdUProExit(Sender: TObject);
      Procedure dblcdUPagoExit(Sender: TObject);
      Procedure dblcMonedaExit(Sender: TObject);
      Procedure wwDBGrid1IButtonClick(Sender: TObject);
      Procedure fcShapeBtn3Click(Sender: TObject);
      Procedure dbeMontoExit(Sender: TObject);
      Procedure dbeMontoKeyPress(Sender: TObject; Var Key: Char);
      Procedure spdAnoKeyPress(Sender: TObject; Var Key: Char);
      Procedure dbgAportesKeyDown(Sender: TObject; Var Key: Word;
         Shift: TShiftState);
      Procedure FormShow(Sender: TObject);
      Procedure bbtnCierraImpClick(Sender: TObject);
      Procedure dbgDetAportesKeyPress(Sender: TObject; Var Key: Char);
      Procedure dbgDetAportesCellChanged(Sender: TObject);
      Procedure bbtnAceptarClick2(Sender: TObject);
      Procedure dblcFormaPagoChange(Sender: TObject);
      Procedure dblcBancoChange(Sender: TObject);
      Procedure dblcAgenciaChange(Sender: TObject);
      Procedure dblcCtaCteExit(Sender: TObject);
      Procedure dblcFormaPagoExit(Sender: TObject);
      Procedure dblcBancoExit(Sender: TObject);
      Procedure dblcAgenciaExit(Sender: TObject);
      Procedure dbeMontoEnter(Sender: TObject);
      Procedure bbtnNuevoClick(Sender: TObject);
      Procedure FormCreate(Sender: TObject);
      Procedure FormDestroy(Sender: TObject);
      Procedure bbtnImprimirClick(Sender: TObject);
      Procedure ppReport1PreviewFormCreate(Sender: TObject);
      Procedure bbtnAceptarPeriodoInicialClick(Sender: TObject);
      Procedure bbtnSalirPeriodoInicialClick(Sender: TObject);
      Procedure SpeAnnosKeyPress(Sender: TObject; Var Key: Char);
      Procedure fcShapeBtn5Click(Sender: TObject);
      Procedure dbgDetAportesDrawDataCell(Sender: TObject; Const Rect: TRect;
         Field: TField; State: TGridDrawState);
      Procedure dbgDetAportesDblClick(Sender: TObject);
      Procedure fcShapeBtn1Click(Sender: TObject);
      Procedure bbtnObsAnulaClick(Sender: TObject);
      Procedure btnImpAnuladosClick(Sender: TObject);
      Procedure BtnDivideClick(Sender: TObject);
      Function nuevoperiodo(ultimoano, ultimomes: word): String;
      Procedure btndeInconsistenciasClick(Sender: TObject);
      Procedure BitTransClick(Sender: TObject);
   Private
    { Private declarations }
    //** VARIABLES PARA ACTUALIZAR CAJA
      xMntDs: Double;
      xItem, xDocid, xEcanomm, xTDiarid, xCcBcoid, xTmonid, xBancoid, xFpagoid, xAuxid: String;
      xVouch, xAuxRuc, xMaxNumComp, xNodoc, xCuentaid, xCptoid, xClauxid, xCiaid: String;
      xFechaCom, xFechaSys: TDate;
      xECTCAMB, cPgoOri, cPgoLoc, cPgoExt: Double;
      xCorre: String;
      wTCCompra: String;
    //**

   //procedure NuevoAporte;
      strPeriodoResolucion: String;
      strPeriodoCese: String;
      dtFechaResolucion: TDate;
      dtFechaCese: TDate;
      strAno, strMes: String;
      strAnoIni, strMesIni: String;
      strAnoFin, strMesFin: String;
      currMontoOriginal: Currency;
      bF_Efectivo: Boolean;
      sCajaDefault: String;
      sEfectivo: String;
//    bPeriodoInicial            : Boolean ;
      Procedure RecuperaFechaNombramiento(xFechaNomb: TField; xFechaCese: TField);
      Procedure InsertaAportesPendientes;
      Procedure InsertaHuecos(iAnoIni, iMesIni, iAnoFin, iMesFin: Integer);
      Procedure cb_okChange(Sender: TField);
      Procedure cb_ok2Change(Sender: TField);
      Procedure cb_ok2Validate(Sender: TField);
      Procedure transmtoValidate(Sender: TField);
      Procedure transmtoChange(Sender: TField);
      Procedure blanquea_parcial;
      Procedure blanquea_detalle;
      Procedure ConfiguraGridAdicion;
      Procedure ConfiguraGridEdicion;
      Procedure LimpiaCamposEdicion;
      Procedure ConfiguraAdicion;
      Procedure QuitaEventosCampos;
      Procedure PonEventosCampos;
      Procedure QuitaEventosCabecera;
      Procedure PonEventosCabecera;

      Procedure recalcula_Detalle;
      Function QuitaComas(strNumero: String): Currency;
      Procedure ValidaINgresoAportes;
      Function Sumariza: Currency;
      Function RecuperaPeriodo(dtFecha: TDateTime): String;
      Procedure HabilitaPanelEdicion;
      Procedure DesHabilitaPanelEdicion;
      Procedure ValidarAdicionAportes;
      Function RecuperaCorrelativo: String;
      Procedure MostrarPendientes;
      Procedure QuitarPendientes;
      Procedure ActuCaja301;
      Procedure Actualiza;
      Procedure RecUltTipoCambio(Var xFecha: String);
      Procedure AsignaAnoMes(Var sAno, sMes: String);
      Function NumLetra(Const mNum: Currency; Const iIdioma, iModo: Smallint): String;
      Procedure ValidaPeriodoInicial;
   Public
      XVERDEV, XINCONSISTENCIA: String;
    { Public declarations }

   End;

Var
   FCaptaAportes: TFCaptaAportes;
   xCrea, wActualizado: boolean;
   wModo1, xUse, xAsoId, xBanco, xTrans, xAsoApenom, xASOCODMOD, xASOCODAUX: String;
   xSaldoAnt, xSaldoTrimAnt: real;
   xWhere, sSQL, xSQL, xCptoid: String;

Implementation

Uses APODM, APO001, MsgDlgs, ppViewr, APO301B, APOD13;

{$R *.DFM}

Procedure TFCaptaAportes.Z2bbtnCancelClick(Sender: TObject);
Begin
   Close;
End;

Procedure TFCaptaAportes.dblcdCodigoExit(Sender: TObject);
Begin
   xWhere := 'ASOID = ' + QuotedStr(dblcdCodigo.Text);
   dbeCodigoModular.Text := DM1.DisplayDescrip('prvTGE', 'APO201', 'ASOCODMOD, ASOCODAUX,ASOCODPAGO, ASOAPEPAT, '
                                                                  +'ASOAPEMAT, ASONOMBRES, ASOSITID, ASOTIPID, '
                                                                  +'ASOAPENOM , ASOFRESNOM , ASOFRESCESE',
                                                         xWhere, 'ASOCODMOD');
   dbeCodigoPago.Text := DM1.cdsQry.FieldByName('ASOCODPAGO').AsString;
   dbeApePat.Text := DM1.cdsQry.FieldByName('ASOAPEPAT').AsString;
   dbeApeMat.Text := DM1.cdsQry.FieldByName('ASOAPEMAT').AsString;
   dbeNombres.Text := DM1.cdsQry.FieldByName('ASONOMBRES').AsString;
   dblcSituacion.Text := DM1.cdsQry.FieldByName('ASOSITID').AsString;
   dblcTipoAsoc.Text := DM1.cdsQry.FieldByName('ASOTIPID').AsString;
   xAsoApenom := DM1.cdsQry.FieldByName('ASOAPENOM').AsString;
   xASOCODMOD := DM1.cdsQry.FieldByName('ASOCODMOD').AsString;
   xASOCODAUX := DM1.cdsQry.FieldByName('ASOCODAUX').AsString;
   //Recuperacin de la Fecha de Resoluci n :
   RecuperaFechaNombramiento(DM1.cdsQry.FieldByName('ASOFRESNOM'),
   DM1.cdsQry.FieldByName('ASOFRESCESE'));

   dblcSituacionExit(Sender);
   dblcTipoAsocExit(Sender);
   If xCrea Then Exit;
   If Z2bbtnCancel.Focused Or dblcdUse.Focused Then Exit;
 {If (dblcdCodigo.Text='') Then
  begin
     dblcdCodigo.Setfocus;
     Raise Exception.create('Ingrese el Cdigo del Asociado');
  end;}
   If (dbeCodigoModular.Text = '') And (dbeCodigoPago.Text = '') Then
   Begin
      dblcdCodigo.SetFocus;
      Raise Exception.create('Error, C digo de Asociado no Existe');
   End;
End;

Procedure TFCaptaAportes.dbgAportesDblClick(Sender: TObject);
Var
   FPago, Banco, AgenBco, CtaBco, NroOpe, FecOpe, TMonid: String;
   Procedure Llenar_Detalle;
   Var
      cds: TwwClientDataset;
      i: INteger;
   Begin
      cds := TwwClientDataset.CReate(self);
      cds.CloneCursor(dm1.cdsTransacciones, TRue);
      cds.Filter := 'APOSECID =' + DM1.cdsTransacciones.FieldByName('APOSECID').AsString;
      CDS.fILTERED := True;
      CDS.IndexFieldNames := 'TRANSANO;TRANSMES';
      For i := 1 To cds.recordcount Do
      Begin
         cds.RecNo := i;
         cdsqry2.append;
         cdsqry2.FieldByName('TRANSANO').AsString := cds.FieldByName('TRANSANO').AsString;
         cdsqry2.FieldByName('TRANSMES').AsString := cds.FieldByName('TRANSMES').AsString;
         cdsqry2.FieldByName('TRANSMTO').AsCurrency := cds.FieldByName('TRANSMTO').AsCurrency;
         cdsqry2.FieldByName('TRANSMTODEV').AsCurrency :=
                                     DM1.cdsTransacciones.FieldByName('TRANSMTODEV').AsCurrency; //rmz
         cdsqry2.FieldByName('APORTEPERIODO').AsCurrency :=
                                     DM1.cdsTransacciones.FieldByName('TRANSMTO').AsCurrency
                                   - DM1.cdsTransacciones.FieldByName('TRANSMTODEV').AsCurrency; //rmz
         cdsqry2.Next;
      End;
      cds.fREE;
      cds := Nil;
   End;
Begin
   btndeInconsistencias.Visible := False;
   QuitaEventosCabecera;
   pnlcabecera.Enabled := False;
   BtnDivide.Visible := True;
   pnlAportes.Visible := True;
   XVERDEV := 'S';
   desHabilitaPanelEdicion;
   LimpiaCamposEdicion;
   //LLena Cabecera//////////////////
   dblcFormaPago.Text := DM1.cdsTransacciones.FieldByName('FORPAGOID').AsString;
   If dblcformaPago.LookUpTable.Locate('FORPAGOID', VarArrayOf([dblcFormaPago.Text]), []) Then
      dbeFormaPago.Text := dblcformaPago.LookUpTable.FieldBYName('FORPAGODES').AsString;

   dblcBanco.text := DM1.cdsTransacciones.FieldByName('BANCOID').asString;
   If dm1.cdsBancos.lOCATE('BANCOID', VarArrayOf([dblcBanco.text]), []) Then
      dbeBanco.Text := dm1.cdsBancos.FieldByName('BANCONOM').AsString;

   dblcAgencia.Text := DM1.cdsTransacciones.FieldByName('AGENBANCOID').AsString;
   If TRIM(dblcAgencia.Text) <> '' Then
      dbeAgencia.Text := DM1.DisplayDescrip('prvTGE', 'COB102', 'AGENBCODES',
         ' BANCOID =' + QuotedStr(trim(dblcBanco.Text))
         + ' AND AGENBCOID =' + QuotedStr(trim(dblcAgencia.Text)), 'AGENBCODES');

   dblcCtaCte.text := DM1.cdsTransacciones.FieldByName('CCBCOID').AsString;
   dbeNumOpe.text := DM1.cdsTransacciones.FieldByName('TRANSNOPE').AsString;
   dbdtpFechaOperacion.Date := DM1.cdsTransacciones.FieldByName('TRANSFOPE').AsDateTime;
   If DM1.cdsTMoneda.Locate('TMONID', VarArrayOf(['N']), []) Then
      dbeMoneda.Text := DM1.cdsTMoneda.FieldByname('TMONDES').AsString;
   dbeMonto.Text := FloatToStrF(DM1.cdsTransacciones.FieldByName('TRANSMTO').AsCurrency, ffNumber, 10, 2);

   //fin de LLena Cabecera///////////

   xSQL := 'Select Cast(''9999'' As Varchar2(6)) TRANSANO,'
      + ' Cast(''9999'' As Varchar2(6)) TRANSMES,'
      + ' Cast(''0'' As Varchar2(1))    CB_OK,'
      + ' Cast(''0'' As Varchar2(1))    CB_OK2,'
      + ' Cast(''9999'' As Decimal(15,2))    TRANSMTOORI,'
      + ' Cast(''9999'' As Decimal(15,2)) TRANSMTO,'
      + ' Cast(''9999'' As Decimal(15,2)) TRANSMTODEV,' //rmz nuevo transmtodev
      + ' Cast(''9999'' As Decimal(15,2)) APORTEPERIODO, ' //rmz nuevo APORTEPERIODO
      + ' Cast(''9999999'' As Varchar2(7)) RCOBID,' //rmz nuevo
      + ' Cast(''9999999'' As Varchar2(7)) DETRCOBID From TGE901 '; //rmz nuevo

   cdsQry2.Close;
   cdsQry2.DataRequest(xSQL);
   cdsQry2.Open;
   cdsQry2.Delete;

   ConfiguraGridEdicion;
   dbgDetAportes.ColumnByName('TRANSMTO').FooterValue := FloatToStrF(0, ffNumber, 10, 2);
   dbgDetAportes.ColumnByName('TRANSMTODEV').FooterValue := FloatToStrF(0, ffNumber, 10, 2);
   dbgDetAportes.ColumnByName('APORTEPERIODO').FooterValue := FloatToStrF(0, ffNumber, 10, 2);
   //LLenar Detalle
   If Not dm1.cdstransacciones.FieldByName('APOSECID').IsNull Then
      Llenar_Detalle
   Else
   Begin
      cdsqry2.append;
      cdsqry2.FieldByName('TRANSANO').AsString := DM1.cdsTransacciones.FieldByName('TRANSANO').AsString;
      cdsqry2.FieldByName('TRANSMES').AsString := DM1.cdsTransacciones.FieldByName('TRANSMES').AsString;
      cdsqry2.FieldByName('TRANSMTO').AsCurrency := DM1.cdsTransacciones.FieldByName('TRANSMTO').AsCurrency;
      cdsqry2.FieldByName('TRANSMTODEV').AsCurrency := DM1.cdsTransacciones.FieldByName('TRANSMTODEV').AsCurrency;
      cdsqry2.FieldByName('APORTEPERIODO').AsCurrency := DM1.cdsTransacciones.FieldByName('TRANSMTO').AsCurrency
                                                       - DM1.cdsTransacciones.FieldByName('TRANSMTODEV').AsCurrency;
      cdsqry2.Next;
   End;
   dbgDetAportes.ColumnByName('TRANSMTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(cdsQry2, 'SUM(TRANSMTO)', ''), ffNumber, 10, 2);
   dbgDetAportes.ColumnByName('TRANSMTODEV').FooterValue := FloatToStrF(DM1.OperClientDataSet(cdsQry2, 'SUM(TRANSMTODEV)', ''), ffNumber, 10, 2);
   dbgDetAportes.ColumnByName('APORTEPERIODO').FooterValue := FloatToStrF(DM1.OperClientDataSet(cdsQry2, 'SUM(APORTEPERIODO)', ''), ffNumber, 10, 2);
   dbemonto.text := dbgDetAportes.ColumnByName('TRANSMTO').FooterValue;
   //fin de llenar detalle
   PonEventosCabecera;
   bbtnImprimir.Visible := (dm1.cdstransacciones.FieldByName('FLGRECIBO').AsString = 'S');
End;

Procedure TFCaptaAportes.bbtnIngresaAporteClick(Sender: TObject);
Begin
   ValidarAdicionAportes;
   bbtnImprimir.Visible := fALSE;
   pnlcabecera.Enabled := False;
   wActualizado := True;
   xCrea := True;
   wModo1 := 'A';
   XVERDEV := 'N';
//wmc   Z2bbtnCancel.Enabled  := False;
//wmc   Z2bbtnAceptar.Enabled := False;
   BtnDivide.Visible := False;
   pnlAportes.Visible := True;

   HabilitaPanelEdicion;
   LimpiaCamposEdicion;
   xCrea := False;

   If Not bF_Efectivo Then
      dblcFormaPago.SetFocus
   Else
      dbdtpFechaOperacion.Enabled := True;
   dbdtpFechaOperacion.SetFocus;

   If DM1.cdsTMoneda.Locate('TMONID', VarArrayOf(['N']), []) Then
      dbeMoneda.Text := DM1.cdsTMoneda.FieldByname('TMONDES').AsString;

   xSQL := 'Select Cast(''9999'' As Varchar2(6)) TRANSANO,'
      + ' Cast(''9999'' As Varchar2(6)) TRANSMES,'
      + ' Cast(''0'' As Varchar2(1))    CB_OK,'
      + ' Cast(''0'' As Varchar2(1))    CB_OK2,'
      + ' Cast(''9999'' As Decimal(15,2))    TRANSMTOORI,'
      + ' Cast(''9999'' As Decimal(15,2)) TRANSMTO,'
      + ' Cast(''9999999'' As Varchar2(7)) RCOBID,' //rmz nuevo
      + ' Cast(''9999999'' As Varchar2(7)) DETRCOBID From TGE901 '; //rmz nuevo

   cdsQry2.Close;
   cdsQry2.IndexFieldNames := '';
   cdsQry2.DataRequest(xSQL);
   cdsQry2.Open;
   cdsQry2.Delete;

   cdsQry2.EnableControls;
   ConfiguraGridAdicion;
   ConfiguraAdicion;
   //Analizar Aportes pendiente de Cobranza

   InsertaAportesPendientes;

   dbgDetAportes.ColumnByName('TRANSMTOORI').FooterValue := FloatToStrF(DM1.OperClientDataSet(cdsQry2, 'SUM(TRANSMTOORI)', ''), ffNumber, 10, 2);
   dbgDetAportes.ColumnByName('TRANSMTO').FooterValue := FloatToStrF(0, ffNumber, 10, 2);
   //Asignacin de eventos
   PonEventosCampos;
   //Adicional para Efectivo en Caja
   If bF_Efectivo Then
   Begin
      dblcFormaPago.Text := sEfectivo;
      dblcFormaPago.Enabled := False;
      dbeNumOpe.enabled := False;
      dblcBanco.Enabled := (dblcBanco.LookupTable.RecordCount > 1);
      dblcBanco.Text := sCajaDefault;
   End;

End;

Procedure TFCaptaAportes.Z2bbtnAceptarClick(Sender: TObject);
Begin
   If ((wModo1 = 'A') Or (wModo1 = 'M')) And (DM1.cdsTransacciones.RecordCount >= 1) Then
   Begin
      DM1.ControlTran;
      wActualizado := False;
      Beep;
      MessageDlg('Actualizacin Realizada', mtCustom, [mbOk], 0);
   End;
End;

Procedure TFCaptaAportes.dblcSituacionExit(Sender: TObject);
Begin
   xWhere := 'ASOSITID = ' + QuotedStr(dblcSituacion.Text);
   edtSituacion.Text := DM1.DisplayDescrip('prvTGE', 'APO106', 'ASOSITDES', xWhere, 'ASOSITDES');
End;

Procedure TFCaptaAportes.dblcTipoAsocExit(Sender: TObject);
Begin
   xWhere := 'ASOTIPID = ' + QuotedStr(dblcTipoAsoc.Text);
   edtTipoAso.Text := DM1.DisplayDescrip('prvTGE', 'APO107', 'ASOTIPDES', xWhere, 'ASOTIPDES');
End;

Procedure TFCaptaAportes.FormCloseQuery(Sender: TObject;
   Var CanClose: Boolean);
Begin
{
   If  (DM1.wModo = 'A') or (DM1.wModo = 'M') Then
    begin
     If wActualizado Then
      begin
       Beep;
       If Application.MessageBox(' Tiene Datos No Actualizados '+#13+
            'Desea Salir y Cancelar sus Actualizaciones?',
            'Grabaciones Pendientes',
             MB_YESNO + MB_DEFBUTTON1) <> IDYES Then
        CanClose := False
       Else
        begin
         DM1.cdsTransacciones.CancelUpdates;
         pnlAportes.Visible    := False;
         Z2bbtnCancel.Enabled  := True;
         Z2bbtnAceptar.Enabled := True;
         wActualizado          := False;
        end;
      end;
    end;
}
End;

Procedure TFCaptaAportes.dblcdUSEExit(Sender: TObject);
Var
   xSql: String;
Begin
   xSql := 'SELECT * '
          +'FROM APO101 '
          +'WHERE UPROID = ' + QuotedStr(dblcdUPro.Text)
          +'  AND UPAGOID = ' + QuotedStr(dblcdUPago.Text)
          +'  AND USEID = ' + QuotedStr(dblcdUSE.Text);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount = 0 Then
   Begin
      Beep;
      MessageDlg('La Unidad de Gestion no se encontr ', mtInformation, [mbOk], 0);
      dblcdUSE.Text := '';
   End;

   {
   DM1.cdsUse.SetKey;
   DM1.cdsUse.FieldByName('USEID').AsString := dblcdUSE.Text;
   If not DM1.cdsUse.GotoKey Then
    begin

    end;
   }

   edtUSE.Text := DM1.cdsQry.FieldByName('USENOM').AsString;

   If xCrea Then Exit;

   If dblcdUse.Text <> xUse Then
   Begin
      dblcdCodigo.Clear;
      dbeCodigoModular.Clear;
      dbeCodigoPago.Clear;
      dbeApePat.Clear;
      dbeApeMat.Clear;
      dbeNombres.Clear;
      dblcSituacion.Clear;
      dblcTipoAsoc.Clear;
      edtSituacion.Clear;
      edtTipoAso.Clear;
      dblcdCodigo.Enabled := True;
      dblcdCodigo.SetFocus;
   End;
End;

Procedure TFCaptaAportes.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
   If pnlPeriodoInicial.Visible Then
      bbtnSalirPeriodoInicial.OnClick(bbtnSalirPeriodoInicial);
   DM1.cdsUse.IndexFieldNames := '';
   DM1.cdsAsociados1.IndexFieldNames := '';
   DM1.cdsTransacciones.IndexFieldNames := '';
   DM1.cdsTransacciones.Cancel;
   DM1.cdsTransacciones.Close;
   DM1.cdsAsociados1.Close;
   DM1.cdsCEdu.Close;
   DM1.cdsCEdu.IndexFieldNames := '';
   DM1.cdsQry.Close;
   DM1.cdsQry.IndexFieldNames := '';
   DM1.cdsQry3.Close;
   DM1.cdsQry3.IndexFieldNames := '';
   DM1.cdsQry4.Close;
   DM1.cdsQry4.IndexFieldNames := '';

//GAR
   cdsQry2.IndexFieldNames := '';
   cdsQry2.Cancel;
   cdsQry2.Close;
   If pnlObsAnula.Visible Then
   Begin
      edtObsAnula.Text := '';
      pnlObsAnula.Visible := False;
   End;

   If Not pnlcabecera.Enabled Then
      pnlCabecera.Enabled := True;
//
End;

Procedure TFCaptaAportes.bbtnAceptaCabClick(Sender: TObject);
Var
   xSQL: String;
Begin
   dblcdUPago.Text := DM1.cdsAsociados.FieldByName('UPAGOID').AsString;
   If Length(dblcdUSE.Text) = 0 Then
   Begin
      dblcdUSE.SetFocus;
      Raise Exception.Create('Ingrese el Cdigo de la USE');
   End;
   If Length(dblcdCodigo.Text) = 0 Then
   Begin
      dblcdCodigo.Text := DM1.cdsAsociados1.FieldByName('ASOID').AsString;
   End;
   If Length(dblcdCodigo.Text) = 0 Then
   Begin
      dblcdUSE.SetFocus;
      Raise Exception.Create('Ingrese el Cdigo del Asociado');
   End;

   xSQL := 'BEGIN SP_ACT_APO301ID (''' + dblcdCodigo.text + '''); END;';
   DM1.DCOM1.AppServer.EjecutaSQL(XSQL);

   xSQL := 'Select APO301.*,NVL(TRANSMTO,0)-NVL(TRANSMTODEV,0) DIFER  From APO301'
      + ' Where ASOID=' + QuotedStr(dblcdCodigo.Text)
      + ' And (TRANSINTID=' + QuotedStr('APO')
      + ' OR TRANSINTID=' + QuotedStr('PRV') + ' )'
      + ' ORDER BY APOSEC,TRANSFOPE';

   DM1.Filtracds(DM1.cdsTransacciones, xSQL);
   DM1.cdsTransacciones.IndexFieldNames := 'TRANSANO;TRANSMES';

   TNumericField(DM1.cdsTransacciones.FieldByName('TRANSMTO')).DisplayFormat := '###,###,##0.00';
   TNumericField(DM1.cdsTransacciones.FieldByName('TRANSMTO')).EditFormat := '########0.00';

   TNumericField(DM1.cdsTransacciones.FieldByName('TRANSMTODEV')).DisplayFormat := '###,###,##0.00';
   TNumericField(DM1.cdsTransacciones.FieldByName('TRANSMTODEV')).EditFormat := '########0.00';

   TNumericField(DM1.cdsTransacciones.FieldByName('DIFER')).DisplayFormat := '###,###,##0.00';
   TNumericField(DM1.cdsTransacciones.FieldByName('DIFER')).EditFormat := '########0.00';

   xSQL := 'Select NVL(SALDO,0) SLD, NVL(SALDOBONUS,0) SLDBONUS '
          +'From APO301 '
          +'Where ASOID=' + QuotedStr(dblcdCodigo.Text)
          +' And FREG =(Select MAX(FREG) From APO301 Where ASOID=' + QuotedStr(dblcdCodigo.Text) + ')';
   DM1.FiltraCDS(DM1.cdsQry, xSQL);

   xSaldoAnt := DM1.cdsQry.FieldByName('SLD').AsFloat;
   xSaldoTrimAnt := DM1.cdsQry.FieldByName('SLDBONUS').AsFloat;
   dblcdUSE.Enabled := False;
   dblcdUPro.Enabled := False;
   dblcdUPago.Enabled := False;
   dblcdCodigo.Enabled := False;
   bbtnIngresaAporte.Enabled := True;
   dbgAportes.Enabled := True;
   bbtnAceptaCab.Enabled := False;

   dbgAportes.ColumnByName('TRANSMTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsTransacciones, 'SUM(TRANSMTO)', ''), ffNumber, 10, 2);
   dbgAportes.ColumnByName('TRANSMTODEV').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsTransacciones, 'SUM(TRANSMTODEV)', ''), ffNumber, 10, 2);
   dbgAportes.ColumnByName('DIFER').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsTransacciones, 'SUM(DIFER)', ''), ffNumber, 10, 2);
   //Verificar el Periodo de Inicio de Cobranzas
   If trim(strAnoIni) = '' Then
   Begin
      If dm1.cdsTransacciones.RecordCount > 0 Then
      Begin
         dm1.cdsTransacciones.RecNo := 1;
         strAnoIni := dm1.cdsTransacciones.fieldbyname('TRANSANO').AsString;
         strMesIni := dm1.cdsTransacciones.fieldbyname('TRANSMES').AsString;
      End
      Else
      Begin
         If strMes = '01' Then
         Begin
            strAnoIni := dm1.strzero(inttostr(strtoint(strAno) - 1), 4);
            strMesIni := '12'
         End
         Else
         Begin
            strMesIni := dm1.strzero(inttostr(strtoint(strMes) - 1), 2);
            stranoini := strAno;
         End;
      End;
   End;
   dm1.cdsTransacciones.Last;
   //
{
   if bF_Efectivo then
      bbtnIngresaAporte.Click;
}
End;

Procedure TFCaptaAportes.z2bbtnNuevoClick(Sender: TObject);
Begin
//  pnlinicio.Enabled:=True;
   bbtnIngresaAporte.enabled := False;
   DM1.cdsTransacciones.FieldByName('USEID').Clear;
   DM1.cdsTransacciones.FieldByName('ASOID').Clear;
   dblcdCodigo.Clear;
   dbeCodigoModular.Clear;
   dbeCodigoPago.Clear;
   dbeApePat.Clear;
   dbeApeMat.Clear;
   dbeNombres.Clear;
   dblcSituacion.Clear;
   dblcTipoAsoc.Clear;
   dblcdUSE.SetFocus;
End;

Procedure TFCaptaAportes.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If (Key = #13) Then
   Begin
      Key := #0;
      Perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

Procedure TFCaptaAportes.edtTransaccionExit(Sender: TObject);
Begin
   xWhere := 'TRANSID =' + QuotedStr(dblcTransaccion.Text);
   edtTransaccion.Text := DM1.DisplayDescrip('prvTGE', 'APO118', 'TRANSDES', xWhere, 'TRANSDES');
End;

Procedure TFCaptaAportes.dblcTransaccionExit(Sender: TObject);
Begin
   xWhere := 'TRANSID = ' + QuotedStr(dblcTransaccion.Text);
   edtTransaccion.Text := DM1.DisplayDescrip('prvTGE', 'APO118', 'TRANSDES', xWhere, 'TRANSDES');
End;

Procedure TFCaptaAportes.dblcdCodigoDropDown(Sender: TObject);
Begin
   DM1.FiltraCDS(DM1.cdsAsociados1, 'Select ASOID, ASOCODMOD, ASOAPENOM From APO201 Where USEID =' + QuotedStr(dblcdUSE.Text));
End;

Procedure TFCaptaAportes.fcShapeBtn2Click(Sender: TObject);
Begin
   close;
   Exit;
   DM1.cdsTransacciones.Close;
   dblcdUSE.Enabled := True;
   dblcdUPro.Enabled := True;
   dblcdUPago.Enabled := True;
   dblcdCodigo.Enabled := True;
   dbgAportes.Enabled := False;
   bbtnAceptaCab.Enabled := True;
   dblcdUPro.SetFocus;
End;

Procedure TFCaptaAportes.dblcdUProExit(Sender: TObject);
Begin
   DM1.cdsUPro.SetKey;
   DM1.cdsUPro.FieldByName('UPROID').AsString := dblcdUPro.Text;
   If Not DM1.cdsUPro.GotoKey Then
   Begin
      edtUPro.Clear;
      Beep;
      MessageDlg('La Unidad de Proceso no se encontr', mtInformation, [mbOk], 0);
   End;
   edtUPro.Text := DM1.cdsUPro.FieldByName('UPRONOM').AsString;

   sSQL := 'Select * From APO103 Where UPROID =' + QuotedStr(dblcdUPro.Text);
   DM1.FiltraCDS(DM1.cdsUPago, sSQL);
End;

Procedure TFCaptaAportes.dblcdUPagoExit(Sender: TObject);
Begin
   sSQL := ' Select * '
          +' From APO101 '
          +' Where UPROID = ' + QuotedStr(dblcdUPro.Text)
          +'  AND UPAGOID=' + QuotedStr(dblcdUPago.Text)
          +' ORDER BY USEID';
   DM1.FiltraCDS(DM1.cdsUSE, sSQL);

   DM1.cdsUPago.SetKey;
   DM1.cdsUPago.FieldByName('UPAGOID').AsString := dblcdUPago.Text;
   If Not DM1.cdsUPago.GotoKey Then
   Begin
      Beep;
      MessageDlg('La Unidad de Pago no se encontr ', mtInformation, [mbOk], 0);
      dblcdUPago.Clear;
   End;
   edtUPago.Text := DM1.cdsUPago.FieldByName('UPAGONOM').AsString;
End;

Procedure TFCaptaAportes.dblcMonedaExit(Sender: TObject);
Begin
   DM1.cdsTMoneda.SetKey;
   DM1.cdsTMoneda.FieldByName('TMONID').AsString := dblcMoneda.Text;
   If Not DM1.cdsTMoneda.GotoKey Then
   Begin
      dbeMoneda.Clear;
   End
   Else
   Begin
      dbeMoneda.Text := DM1.cdsTMoneda.FieldByname('TMONDES').AsString;
   End;
{  If xCrea Then Exit;
  If bbtnCancela.Focused Then Exit;
  If (edtMoneda.Text='') And (dblcMoneda.Text<>'') Then
  begin
     dblcMoneda.SetFocus;
     Raise Exception.create('Error, Cdigo de Tipo de Moneda no v lido');
  end;
  If  dblcMoneda.Text='' Then
  begin
     dblcMoneda.SetFocus;
     Raise Exception.Create('Ingrese el tipo de Moneda del Aporte');
  end;}
End;

Procedure TFCaptaAportes.wwDBGrid1IButtonClick(Sender: TObject);
Var
   Present: TDateTime;
   nYear, nMonth, nDay: word;
   bmk: TBookmark;
   currUltimoAporte: Currency;
   nuevoanomes: String;
Begin
   //Quitar Eventos
   QuitaEventosCampos;
   //
   cdsAporte.Last;
   currUltimoAporte := cdsAporte.fieldbyName('APOVALOR').AsCurrency;
   If cdsQry2.recordcount <> 0 Then
   Begin
      cdsqry2.Last;
      nYear := cdsQry2.FieldByName('TRANSANO').asinteger;
      nMonth := cdsQry2.FieldByName('TRANSMES').asinteger;
   End
   Else
   Begin
      If dm1.cdstransacciones.recordcount > 0 Then
      Begin
         dm1.cdstransacciones.disableControls;
         bmk := dm1.cdstransacciones.GetBookmark;
         dm1.cdstransacciones.Last;
         nYear := dm1.cdstransacciones.FieldByName('TRANSANO').AsInteger;
         nMonth := dm1.cdstransacciones.FieldByName('TRANSMES').AsInteger;
         dm1.cdsTransacciones.GotoBookmark(bmk);
         dm1.cdsTransacciones.FreeBookmark(bmk);
         dm1.cdsTransacciones.EnableControls;
      End
      Else
      Begin
         If strMesIni = '12' Then
         Begin
            SpeAnnos.Text := dm1.strzero(inttostr(strtoint(strAnoIni) + 1), 4);
            SpEmeses.Text := '01'
         End
         Else
         Begin
            SpeAnnos.Text := strAnoIni;
            SpEmeses.Text := dm1.strzero(inttostr(strtoint(strMesIni) + 1), 2);
         End;
         SpeAnnos.Tag := strtoint(strAnoIni);
         SpEmeses.Tag := strtoint(strMesIni);

         pnlPeriodoInicial.Top := 309;
         pnlPeriodoInicial.Left := 333;
         pnlPeriodoInicial.Visible := True;
         pnlAportes.Enabled := False;

         PonEventosCampos;
         Exit;
      End;
   End;

   nuevoanomes := nuevoperiodo(nYear, nMonth); //rmz nuevo

   {if nMonth = 12 then
   begin
      nMonth := 1 ;
      inc(nYear);
   end
   else inc(nMonth);  rmz ya no}

   cdsQry2.Append;

   {cdsQry2.FieldByName('TRANSANO').AsString := dm1.StrZero(inttostr(nYear),4);
   cdsQry2.FieldByName('TRANSMES').AsString := dm1.StrZero(inttostr(nMonth),2); rmz ya no }

   cdsQry2.FieldByName('TRANSANO').AsString := copy(nuevoanomes, 1, 4);
   cdsQry2.FieldByName('TRANSMES').AsString := copy(nuevoanomes, 5, 2);

   cdsQry2.fieldByName('CB_OK').AsString := '1';
   If cdsAporte.locate('APOANO;APOMES',
      VarArrayOf([cdsQry2.FieldByName('TRANSANO').AsString,
      cdsQry2.FieldByName('TRANSMES').AsString]), []) Then
   Begin
      cdsQry2.FieldByName('TRANSMTOORI').AsCurrency := cdsAporte.fieldbyname('APOVALOR').AsCurrency;
      cdsQry2.FieldByName('TRANSMTO').AsCurrency := cdsAporte.fieldbyname('APOVALOR').AsCurrency;
   End
   Else
   Begin
      cdsQry2.FieldByName('TRANSMTOORI').ASCurrency := currUltimoAporte;
      cdsQry2.FieldByName('TRANSMTO').ASCurrency := currUltimoAporte;
   End;

   cdsqry2.next;
   PonEventosCampos;
   dbemonto.TEXT := FloatToStrF(DM1.OperClientDataSet(cdsQry2, 'SUM(TRANSMTO)', ''), ffNumber, 10, 2);
   dbgdetAportes.ColumnByName('TRANSMTO').FooterValue := dbemonto.Text;
   dbgdetAportes.ColumnByName('TRANSMTOORI').FooterValue :=
                          FloatToStrF(DM1.OperClientDataSet(cdsQry2, 'SUM(TRANSMTOORI)', ''), ffNumber, 10, 2);
   ;
End;

Procedure TFCaptaAportes.fcShapeBtn3Click(Sender: TObject);
Begin
//   if bF_Efectivo then
   MostrarPendientes;

   pnlAportes.Visible := False;
   BtnDivide.Visible := True;
   QuitaEventosCampos;
   pnlCabecera.Enabled := True;

   If dbgAportes.DataSource.DataSet.RecordCount = 0 Then
   Begin
      If SpeAnnos.Tag <> 0 Then
      Begin
         strAnoIni := dm1.StrZero(inttostr(SpeAnnos.Tag), 4);
         strMesIni := dm1.StrZero(inttostr(SpEmeses.Tag), 2);
         SpeAnnos.Tag := 0;
         SpEmeses.Tag := 0;
      End;
   End;
End;

Procedure TFCaptaAportes.dbeMontoExit(Sender: TObject);
Begin

   If (trim(dbemonto.text) = '') Or (trim(dbemonto.text) = '.') Then
   Begin
     //Blanquea Detalle
      blanquea_detalle;
   End
   Else
   Begin
      If QuitaComas(dbgdetaportes.ColumnbyName('TRANSMTO').Footervalue)
         <> StrToCurr(dbeMonto.Text) Then
      Begin
          //Recalcula
         recalcula_detalle;
      End;
   End;

End;

Procedure TFCaptaAportes.dbeMontoKeyPress(Sender: TObject; Var Key: Char);
Var
   sCadBuscar: String;
   i: integer;
   j: integer;
Begin
   If key = #8 Then
      Exit;
   If Not (key In ['0'..'9', '.']) Then
   Begin
      key := #0;
      Exit;
   End;

   // Verificar que no se ingresen negativos
   If key In ['-', '+', 'E', 'e'] Then
      key := #0;

   //verificar que solo se ingrese a lo sumo un punto
   sCadBuscar := TCustomEdit(Sender).Text;
   i := AnsiPos('.', sCadBuscar);
   If key = '.' Then
      If AnsiPos('.', sCadBuscar) > 0 Then
         key := #0;

   //verificar que no se ingresen mas de dos decimales
   If i <> 0 Then
   Begin
      j := dbeMonto.SelStart;
      If (j - i >= 2) And (key <> #8) Then
         key := #0
      Else
      Begin
         If (j >= i) And (key <> #8) Then
            If (Length(sCadBuscar) - i) >= 2 Then
            Begin
//             dbeMonto.Text := leftstr(sCadBuscar,Length(sCadBuscar) - 1) ;
               dbeMonto.Text := copy(sCadBuscar, 1, Length(sCadBuscar) - 1);
               dbeMonto.SelStart := j;
            End;
      End;
   End;
End;

Procedure TFCaptaAportes.spdAnoKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key In [' ', 'A'..'Z', 'a'..'z',
      '°', '|', '¬', '!', '"', '#', '$', '%', '&', '/', '(', ')',
      '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '[',
      ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''',
      '.', '-', '_'] Then
      Key := #0;
End;

Procedure TFCaptaAportes.dbgAportesKeyDown(Sender: TObject; Var Key: Word; Shift: TShiftState);
Var
   sSQL: String;
Begin

   If ((Key = VK_DELETE) And (ssCtrl In Shift)) Then
   Begin
      If (StrToInt(Copy(DM1.CrgArea(DM1.wUsuario), 6, 2)) < 2) Then
      Begin
         MessageDlg('Usuario No Autorizado A Anular....!', mtError, [mbOk], 0);
         Exit;
      End;
      If (StrToInt(Copy(DM1.CrgArea(DM1.wUsuario), 6, 2)) = 2) And (Copy(DM1.CrgArea(DM1.wUsuario), 1, 3) = 'CAJ') Then
      Begin
         MessageDlg('Usuario No Autorizado A Anular....!', mtError, [mbOk], 0);
         Exit;
      End;
      If (StrToInt(Copy(DM1.CrgArea(DM1.wUsuario), 6, 2)) = 3) And (Copy(DM1.CrgArea(DM1.wUsuario), 1, 3) = 'CAJ') Then
      Begin
         If (DM1.cdsTransacciones.FieldByName('FORPAGOID').asstring <> '02') Then
         Begin
            MessageDlg('Solo puede Anular Pagos en Efectivo....!', mtError, [mbOk], 0);
            Exit;
         End;
         If (DM1.cdsTransacciones.FieldByName('FREG').AsDateTime <> date) Then
         Begin
            MessageDlg('Solo puede Anular Pagos en Efectivo del Da....!', mtError, [mbOk], 0);
            Exit;
         End;
      End;

      If DM1.cdsTransacciones.RecordCount > 0 Then
      Begin
         If Question(Caption, 'Esta Seguro de Anular?' + #13 + #13 + 'Desea Continuar') Then
         Begin
            pnlCabecera.Enabled := False;
            pnlObsAnula.Visible := True;
            edtObsAnula.SetFocus;
            xBorrar := '1';
         End
         Else
            Exit;
      End
      Else
         ShowMessage(' No Existen Registros a Anular ');
   End;

End;

Procedure TFCaptaAportes.FormShow(Sender: TObject);
Var
   strPeriodo: String;
Begin
   xCrea := True;
//  pnlinicio.enabled:=True;
   bbtnIngresaAporte.enabled := False;
   DM1.cdsUse.IndexFieldNames := 'USEID';
   DM1.cdsUPago.IndexFieldNames := 'UPAGOID';
   DM1.cdsUPro.IndexFieldNames := 'UPROID';
   DM1.cdsAsociados1.IndexFieldNames := 'ASOAPENOM';
   strPeriodo := dm1.DisplayDescrip('prvTGE', 'DUAL', ' TO_CHAR(SYSDATE,''YYYYMM'') ANOMES', '', 'ANOMES');
   strAno := copy(strPeriodo, 1, 4);
   strMes := copy(strPeriodo, 5, 2);

  //  DM1.cdsTransacciones.IndexFieldNames:='ASOID;TRANSANO;TRANSMES;TRANSINTID';
//wmc   If DM1.wModo = 'M' Then
//wmc    begin
   xTrans := DM1.DisplayDescrip('prvTGE', 'APO118', 'TRANSID', 'TRANSINTID=' + QuotedStr('APO'), 'TRANSID');
   xAsoid := DM1.cdsAsociados.FieldByName('ASOID').AsString;
   xUse := DM1.cdsAsociados.FieldByName('USEID').AsString;

   dblcTransaccion.Text := xTrans;
   dblcTransaccionExit(Sender);
   dblcdUSE.Text := xUse;
   dblcdCodigo.Text := xAsoid;
   dblcdCodigoExit(Sender);
   dblcdUSE.Enabled := True;
   dblcdUPro.Text := DM1.cdsAsociados.FieldByName('UPROID').AsString;
   xWhere := 'UPROID =' + QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString);
   edtUPro.Text := DM1.DisplayDescrip('prvSQL', 'APO102', 'UPRONOM', xWhere, 'UPRONOM');

   dblcdUPago.Text := DM1.cdsAsociados.FieldByName('UPAGOID').AsString;
   xWhere := 'UPAGOID =' + QuotedStr(DM1.cdsAsociados.FieldByName('UPAGOID').AsString);
   edtUPago.Text := DM1.DisplayDescrip('prvSQL', 'APO103', 'UPAGONOM', xWhere, 'UPAGONOM');
   dblcdUPro.Enabled := True;

   dblcdUSEExit(Sender);

//     dblcdUPro.Setfocus;
   bbtnAceptaCab.Enabled := True;
   bbtnAceptaCab.SetFocus;
//wmc    end;
   bbtnAceptaCab.Enabled := True;
   pnlAportes.Visible := False;
   xCrea := False;
   bbtnAceptaCab.OnClick(bbtnAceptaCab);
   cdsQry2.Filter := '';
   cdsQry2.Filtered := False;
   cdsQry2.IndexFieldNames := '';
   If cdsAporte.Active Then
      cdsAporte.Close;
   cdsAporte.DataRequest('SELECT APOANO , APOMES , APOVALOR FROM APO117 ORDER BY APOANO,APOMES');
   cdsAporte.Open;
   If bF_Efectivo Then
      bbtnIngresaAporte.Click;

End;

Procedure TFCaptaAportes.RecuperaFechaNombramiento;
Var
   iAno, iMes, iDia: Word;
Begin
   strAnoIni := '';
   strMesIni := '';
   strPeriodoResolucion := strAnoIni + strMesIni;
   strAnoFin := strAno;
   strMesFin := strMes;
   strPeriodoCese := strAno + strMes;

   If Not xFechaNomb.isnull Then
   Begin
      DecodeDate(xFechaNomb.AsDateTime, iAno, iMes, iDia);
      strAnoIni := IntToStr(iAno);
      strMesIni := '0' + IntToStr(iMes);
      strMesIni := copy(strMesIni, length(strMesIni) - 1, 2);
      strPeriodoResolucion := strAnoIni + strMesIni;
      If strAnoIni < '1997' Then
      Begin
         strAnoIni := '1997';
         strMesIni := '01';
      End;
   End;
{
     if not xFechaCese.isnull then
     begin
       DecodeDate(xFechaCese.AsDateTime,iAno , iMes , iDia);
       strAnoFin := IntToStr(iAno);
       strMesFin := '0' + IntToStr(iMes);
       strMesFin := copy(strMesIni,length(strMesIni)-1,2);
       strPeriodoCese := strAnoFin + strMesFin ;
     end ;
}
End;

Procedure TFCaptaAportes.bbtnCierraImpClick(Sender: TObject);
Begin
   fcShapeBtn3.OnClick(fcShapeBtn3);
End;

Procedure TFCaptaAportes.InsertaAportesPendientes;
Var
   cdsClone: TwwClientDataset;
   iAno, iMes: Integer;
   iAnoFinal, iMesFinal: Integer;
   currAcumMes,
      currAporteMes,
      currUltimoAporte: Currency;
   bGrabacion: Boolean;

   Function RecuperaAportePeriodo(astrAno, astrMes: String): Currency;
   Begin
      //Buscar Valor del Aporte en el Periodo
      If cdsAporte.locate('APOANO;APOMES', VarArrayOf([astrAno, astrMes]), []) Then
         Result := cdsAporte.FieldBYName('APOVALOR').AsCurrency
      Else
         Result := currUltimoAporte;
   End;
   Procedure IncrementaPeriodo;
   Begin
      //Cambiar de Periodo
      If imes = 12 Then
      Begin
         imes := 1;
         inc(iAno);
      End
      Else
         inc(imes);
   End;
Begin
   bGrabacion := False;
   cdsAporte.Last;
   currUltimoAporte := cdsAporte.fieldByName('APOVALOR').AsCurrency;
   iAno := strtoint(strAnoIni);
   iMes := strtoint(strMesIni);

   cdsClone := TwwClientDataSet.Create(self);
   cdsClone.CloneCursor(dm1.cdsTransacciones, TRue);
   If cdsClone.RecordCount > 0 Then
   Begin

      cdsClone.indexfieldnames := 'TRANSANO;TRANSMES';

      currAcumMes := 0;
      cdsClone.Last;
      cdsClone.First;
      While Not cdsClone.Eof Do
      Begin
         If cdsClone.FieldByName('TRANSANO').AsString + cdsClone.FieldByName('TRANSMES').AsString
                                                      <= InttoStr(iAno) + DM1.StrZero(IntToStr(iMes), 2) Then
         Begin
           // end vhndema  24-08-05
           // currAcumMes := currAcumMes + cdsClone.fieldbyName('TRANSMTO').AsCurrency ;
            currAcumMes := currAcumMes + (cdsClone.fieldbyName('TRANSMTO').AsCurrency - //cambio 08/11/2008 RMZ
               cdsClone.fieldbyName('TRANSMTODEV').AsCurrency); //cambio 08/11/2008 RMZ
            bGrabacion := False;
         End
         Else
         Begin
              //Buscar Valor del Aporte en el Periodo
            currAporteMes := RecuperaAportePeriodo(dm1.strzero(inttostr(iAno), 4), dm1.strzero(inttostr(imes), 2));
              //
            If currAporteMes > currAcumMes Then
            Begin
                //Inserta un nuevo registro
               With cdsqry2 Do
               Begin
                  Append;
                  FieldByName('TRANSANO').AsString := DM1.StrZero(IntToStr(iAno), 4);
                  FieldByName('TRANSMES').AsString := DM1.StrZero(IntToStr(iMes), 2);
                  FieldByName('TRANSMTOORI').ascurrency :=
                     currAporteMes - currAcumMes;
                  FieldByName('TRANSMTO').ascurrency := 0;
                  Post;
               End;
                ///////////////////////////
            End;

              //Cambiar de Periodo
            IncrementaPeriodo;
              //currAcumMes := cdsClone.fieldByName('TRANSMTO').AsCurrency ;
            currAcumMes := cdsClone.fieldByName('TRANSMTO').AsCurrency
                         - cdsClone.fieldByName('TRANSMTODEV').AsCurrency; //cambio 08/11/2008 RMZ
              //Verificar los Huecos
            If (100 * iAno + iMes) <
               (100 * cdsClone.FieldByName('TRANSANO').AsInteger
               + cdsClone.FieldByName('TRANSMES').AsInteger) Then
            Begin
                 //Inserta Huecos
               InsertaHuecos(iAno, imes,
                  cdsClone.FieldByName('TRANSANO').AsInteger,
                  cdsClone.FieldByName('TRANSMES').AsInteger);
               iAno := cdsClone.FieldByName('TRANSANO').AsInteger;
               iMes := cdsClone.FieldByName('TRANSMES').AsInteger;
            End;
            bGrabacion := True;
         End;
         cdsClone.Next;
      End;

      //Caso de Acumulados No Considerados
      cdsClone.Last;
      If Not bGrabacion Then
      Begin
         If (iAno = cdsClone.FieldByName('TRANSANO').AsInteger)
            And (iMes = cdsClone.FieldByName('TRANSMES').AsInteger) Then
         Begin
          //01.Se Acumula
            currAcumMes := currAcumMes + cdsClone.fieldbyName('TRANSMTO').AsCurrency;
          //02.Se verifica
            currAporteMes := RecuperaAportePeriodo(dm1.strzero(inttostr(iAno), 4), dm1.strzero(inttostr(imes), 2));
            If currAporteMes > currAcumMes Then
            Begin
               With cdsqry2 Do
               Begin
                  Append;
                  FieldByName('TRANSANO').AsString := DM1.StrZero(IntToStr(iAno), 4);
                  FieldByName('TRANSMES').AsString := DM1.StrZero(IntToStr(iMes), 2);
                  FieldByName('TRANSMTOORI').ascurrency := currAporteMes - currAcumMes;
                  FieldByName('TRANSMTO').ascurrency := 0;
                  Post;
               End;
            End;
         End
         Else
         Begin
          //01.Se Verifica
            currAporteMes := RecuperaAportePeriodo(dm1.strzero(inttostr(iAno), 4), dm1.strzero(inttostr(imes), 2));
            If currAporteMes > currAcumMes Then
            Begin
               With cdsqry2 Do
               Begin
                  Append;
                  FieldByName('TRANSANO').AsString := DM1.StrZero(IntToStr(iAno), 4);
                  FieldByName('TRANSMES').AsString := DM1.StrZero(IntToStr(iMes), 2);
                  FieldByName('TRANSMTOORI').ascurrency := currAporteMes - currAcumMes;
                  FieldByName('TRANSMTO').ascurrency := 0;
                  Post;
               End;
            End;
          //02.se verifican los Huecos
            If (100 * iAno + iMes) <
               (100 * cdsClone.FieldByName('TRANSANO').AsInteger
               + cdsClone.FieldByName('TRANSMES').AsInteger) Then
            Begin
             //Inserta Huecos
               InsertaHuecos(iAno, imes,
                  cdsClone.FieldByName('TRANSANO').AsInteger,
                  cdsClone.FieldByName('TRANSMES').AsInteger);
               iAno := cdsClone.FieldByName('TRANSANO').AsInteger;
               iMes := cdsClone.FieldByName('TRANSMES').AsInteger;
            End;
          //03.Se Verifica ltimo Aporte
            currAporteMes := RecuperaAportePeriodo(dm1.strzero(inttostr(iAno), 4), dm1.strzero(inttostr(imes), 2));
            If currAporteMes > currAcumMes Then
            Begin
               With cdsqry2 Do
               Begin
                  Append;
                  FieldByName('TRANSANO').AsString := DM1.StrZero(IntToStr(iAno), 4);
                  FieldByName('TRANSMES').AsString := DM1.StrZero(IntToStr(iMes), 2);
                  FieldByName('TRANSMTOORI').ascurrency := currAporteMes - currAcumMes;
                  FieldByName('TRANSMTO').ascurrency := 0;
                  Post;
               End;
            End;
         End;
      End
      Else
      Begin
        //01.Se Verifica ltimo Aporte
         currAporteMes := RecuperaAportePeriodo(dm1.strzero(inttostr(iAno), 4), dm1.strzero(inttostr(imes), 2));
         If currAporteMes > currAcumMes Then
         Begin
            With cdsqry2 Do
            Begin
               Append;
               FieldByName('TRANSANO').AsString := DM1.StrZero(IntToStr(iAno), 4);
               FieldByName('TRANSMES').AsString := DM1.StrZero(IntToStr(iMes), 2);
               FieldByName('TRANSMTOORI').ascurrency := currAporteMes - currAcumMes;
               FieldByName('TRANSMTO').ascurrency := 0;
               Post;
            End;
         End;
      End;
      //
      IncrementaPeriodo;
      //
      //Verificar Huecos Futuros
      If (100 * iAno + iMes) <=
         (100 * StrToInt(strAnoFin)
         + StrToInt(strMesFin)) Then
      Begin
         iAnoFinal := StrToInt(strAnoFin);
         iMesFinal := StrToInt(strMesFin);
         If iMesFinal = 12 Then
         Begin
            iMesFinal := 1;
            Inc(iAnoFinal);
         End
         Else
            Inc(iMesFinal);
         //Inserta Huecos
         InsertaHuecos(iAno, imes,
            iAnoFinal,
            iMesFinal);
      End;

   End;

   cdsclone.Free;
   cdsclone := Nil;

End;

Procedure TFCaptaAportes.InsertaHuecos;
Var
   currApoValor: Currency;
Begin

   cdsAporte.Last;
   currApoValor := cdsAporte.fieldbyName('APOVALOR').AsCurrency;

   While (100 * ianoini + imesini) < (100 * iAnoFin + iMesFin) Do
   Begin
      With cdsqry2 Do
      Begin
         Append;
         FieldByName('TRANSANO').AsString := DM1.StrZero(IntToStr(iAnoIni), 4);
         FieldByName('TRANSMES').AsString := DM1.StrZero(IntToStr(iMesIni), 2);
         If cdsAporte.Locate('APOANO;APOMES',
            VarArrayOf([FieldByName('TRANSANO').AsString,
            FieldByName('TRANSMES').AsString]), []) Then
            FieldByName('TRANSMTOORI').ascurrency := cdsAporte.FieldBYName('APOVALOR').Ascurrency
         Else
            FieldByName('TRANSMTOORI').ascurrency := currApoValor;
         FieldByName('TRANSMTO').ascurrency := 0;
         Post;
      End;
      If iMesIni = 12 Then
      Begin
         Inc(iAnoIni);
         iMesIni := 1;
      End
      Else
         inc(iMesIni);

   End;
End;

Procedure TFCaptaAportes.dbgDetAportesKeyPress(Sender: TObject;
   Var Key: Char);
Var
   sCadBuscar: String;
   i: integer;
   j: integer;
Begin

   If key = #13 Then
      Exit;

   If dbgdetaportes.getactivefield.FieldName <> 'TRANSMTO' Then
      Exit;

   If Not (key In ['0'..'9', '.']) Then
   Begin
      key := #0;
      Exit;
   End;
   // Verificar que no se ingresen negativos
//   if key in ['-','+','E','e'] then
//      key := #0 ;

   //verificar que solo se ingrese a lo sumo un punto
   sCadBuscar := TwwDBGrid(Sender).InplaceEditor.Text;
   i := AnsiPos('.', sCadBuscar);
   If key = '.' Then
      If AnsiPos('.', sCadBuscar) > 0 Then
         key := #0;

   //verificar que no se ingresen mas de dos decimales
   If i <> 0 Then
   Begin
      j := TwwDBGrid(Sender).InplaceEditor.SelStart;
      If (j - i >= 2) And (key <> #8) Then
         key := #0
      Else
      Begin
         If (j >= i) And (key <> #8) Then
            If (Length(sCadBuscar) - i) >= 2 Then
            Begin
//               TwwDBGrid(Sender).InplaceEditor.Text := leftstr(sCadBuscar,Length(sCadBuscar) - 1) ;
               TwwDBGrid(Sender).InplaceEditor.Text := copy(sCadBuscar, 1, Length(sCadBuscar) - 1);
               TwwDBGrid(Sender).InplaceEditor.SelStart := j;
            End;
      End;
   End;

End;

Procedure TFCaptaAportes.cb_okChange(Sender: TField);
Var
   evt_CB_OK2,
      evt_TRANSMTO: TFieldNotifyEvent;
Begin
   evt_TRANSMTO := Sender.DataSet.FieldByName('TRANSMTO').OnChange;
   evt_CB_OK2 := Sender.DataSet.FieldByName('CB_OK2').OnChange;
   Sender.DataSet.FieldByName('TRANSMTO').OnChange := Nil;
   Sender.DataSet.FieldByName('CB_OK2').OnChange := Nil;

   If sender.value = '1' Then
      Sender.DataSet.FieldByName('TRANSMTO').AsCurrency := Sender.DataSet.FieldByName('TRANSMTOORI').AsCurrency
   Else
   Begin
      Sender.DataSet.FieldByName('TRANSMTO').AsCurrency := 0;
      If Sender.DataSet.FieldByName('CB_OK2').AsString = '1' Then
      Begin
         Sender.DataSet.FieldByName('CB_OK2').AsString := '0';
         Sender.DataSet.FieldByName('TRANSMTO').AsCurrency := 0;
      End;
   End;
   Sender.DataSet.Post;
   Sender.DataSet.FieldByName('TRANSMTO').OnChange := evt_TRANSMTO;
   Sender.DataSet.FieldByName('CB_OK2').OnChange := evt_CB_OK2;

   dbeMOnto.Text := FloatToStrF(DM1.OperClientDataSet(cdsQry2, 'SUM(TRANSMTO)', ''), ffNumber, 10, 2);
   dbgdetAportes.ColumnByName('TRANSMTO').FooterValue := dbemonto.Text;
End;

Procedure TFCaptaAportes.dbgDetAportesCellChanged(Sender: TObject);
Begin
   If dbgdetaportes.getactivefield.fieldname = 'TRANSMTO' Then
      If cdsqry2.fieldbyname('CB_OK2').AsString <> '1' Then
         dbgdetaportes.Setactivefield('CB_OK')
      Else
         currMontoOriginal := cdsqry2.FieldByName('TRANSMTO').AsCurrency;

   If dbgdetaportes.getactivefield.fieldname = 'CB_OK2' Then
      If cdsqry2.fieldbyname('CB_OK').AsString <> '1' Then
         dbgdetaportes.Setactivefield('CB_OK');

End;

Procedure TFCaptaAportes.cb_ok2Validate(Sender: TField);
Begin
   If sender.AsString = '1' Then
      If sender.DataSet.fieldbyname('CB_OK').ASSTRING <> '1' Then
         Raise exception.create('Marque primero la Cuota para Cobranza');
End;

Procedure TFCaptaAportes.blanquea_parcial;
Var
   cdsClone: Twwclientdataset;
   i: integer;
Begin
   cdsClone := TwwClientDataSet.Create(self);
   cdsClone.CloneCursor(cdsqry2, true);
   For i := 1 To cdsClone.RecordCount Do
   Begin
      cdsClone.RecNo := i;
      If (cdsClone.FieldByName('CB_OK2').AsString = '1') Then
      Begin
         cdsClone.Edit;
         cdsClone.FieldByName('CB_OK2').AsString := '0';
         cdsClone.FieldByName('TRANSMTO').AsCURRENCY := cdsClone.FieldByName('TRANSMTOORI').AsCURRENCY;
         cdsClone.Post;
         break;
      End;
   End;
   cdsClone.Free;
   cdsClone := Nil;
End;

Procedure TFCaptaAportes.cb_ok2Change(Sender: TField);
Var
   evt_TRANSMTO: TFieldNotifyEvent;
Begin
   blanquea_parcial;
   If sender.value = '0' Then
   Begin
      evt_TRANSMTO := Sender.DataSet.FieldByName('TRANSMTO').OnChange;
      Sender.DataSet.FieldByName('TRANSMTO').OnChange := Nil;
      Sender.DataSet.FieldByName('TRANSMTO').AsCurrency := Sender.DataSet.FieldByName('TRANSMTOORI').AsCurrency;
      Sender.DataSet.FieldByName('TRANSMTO').OnChange := evt_TRANSMTO;
   End;

   Sender.DataSet.Post;
   dbeMOnto.Text := FloatToStrF(DM1.OperClientDataSet(cdsQry2, 'SUM(TRANSMTO)', ''), ffNumber, 10, 2);
   dbgdetAportes.ColumnByName('TRANSMTO').FooterValue := dbemonto.Text;
End;

Procedure TFCaptaAportes.transmtoValidate(Sender: TField);
Begin
{   20030619
   if Sender.AsCurrency > sender.DataSet.fieldbyname('TRANSMTOORI').AsCurrency Then
      Raise exception.create('NO se exceda del Monto x Cobrar para este Periodo');
}
End;

Procedure TFCaptaAportes.transmtoChange(Sender: TField);
Begin
   If dbgdetAportes.getActiveField.FieldName = 'TRANSMTO' Then
   Begin
      dbeMonto.Text := currtostr(Sumariza + sender.AsCurrency);
      dbgdetAportes.ColumnByName('TRANSMTO').FooterValue :=
         FloatToStrF(strtoCurr(dbeMonto.Text), ffNumber, 10, 2);
   End;
End;

Procedure TFCaptaAportes.ConfiguraGridAdicion;
Begin
   dbgDetAportes.Selected.Clear;
   dbgDetAportes.Selected.Add('TRANSANO'#9'6'#9'Ao'#9'T');
   dbgDetAportes.Selected.Add('TRANSMES'#9'4'#9'Mes'#9'T');
   dbgDetAportes.Selected.Add('TRANSMTOORI'#9'10'#9'por Cobrar'#9'T');
   dbgDetAportes.Selected.Add('TRANSMTO'#9'10'#9'Cobrado'#9'F');
   dbgDetAportes.Selected.Add('CB_OK'#9'3'#9'Ok'#9'F');
//wmc 20030619   dbgDetAportes.Selected.Add('CB_OK2'#9'3'#9'Parcial'#9'F');
   dbgDetAportes.Selected.Add('CB_OK2'#9'3'#9'Modi'#9'F');
   dbgDetAportes.SetControlType('CB_OK', fctCheckBox, '1;0');
   dbgDetAportes.SetControlType('CB_OK2', fctCheckBox, '1;0');
   dbgDetAportes.ApplySelected;

   TNumericField(cdsQry2.FieldByName('TRANSMTO')).DisplayFormat := '###,###,##0.00';
   TNumericField(cdsQry2.FieldByName('TRANSMTO')).EditFormat := '########0.00';
   TNumericField(cdsQry2.FieldByName('TRANSMTOORI')).DisplayFormat := '###,###,##.00';
   TNumericField(cdsQry2.FieldByName('TRANSMTOORI')).EditFormat := '########.00';
End;

Procedure TFCaptaAportes.ConfiguraGridEdicion;
Begin
   dbgDetAportes.Selected.Clear;
   dbgDetAportes.Selected.Add('TRANSANO'#9'6'#9'A o'#9'T');
   dbgDetAportes.Selected.Add('TRANSMES'#9'4'#9'Mes'#9'T');
   dbgDetAportes.Selected.Add('TRANSMTO'#9'10'#9'Cobrado'#9'F');
   dbgDetAportes.Selected.Add('TRANSMTODEV'#9'10'#9'Devuelto'#9'F'); //rmz
   dbgDetAportes.Selected.Add('APORTEPERIODO'#9'10'#9'Total Aporte'#9'F'); //rmz
   dbgDetAportes.ApplySelected;

   TNumericField(cdsQry2.FieldByName('TRANSMTO')).DisplayFormat := '###,###,##0.00';
   TNumericField(cdsQry2.FieldByName('TRANSMTO')).EditFormat := '########0.00';
   TNumericField(cdsQry2.FieldByName('TRANSMTODEV')).DisplayFormat := '########0.00'; //rmz
   TNumericField(cdsQry2.FieldByName('TRANSMTODEV')).EditFormat := '########0.00'; //rmz
   TNumericField(cdsQry2.FieldByName('APORTEPERIODO')).DisplayFormat := '########0.00'; //rmz
   TNumericField(cdsQry2.FieldByName('APORTEPERIODO')).EditFormat := '########0.00'; //rmz
End;

Procedure TFCaptaAportes.LimpiaCamposEdicion;
Begin
   dblcFormaPago.Clear;
   dbeFormaPago.Clear;
   dblcBanco.Clear;
   dbeBanco.Clear;
   dblcCtaCte.Clear;
   dbeNumOpe.Clear;
   dbdtpFechaOperacion.Date := Date;
   dblcMoneda.Clear;
   dbeMoneda.Clear;
   dbeMonto.Clear;
   dblcAgencia.Clear;
   dbeAgencia.Clear;
   dbeNumOpe.Clear;
End;

Procedure TFCaptaAportes.bbtnAceptarClick2(Sender: TObject);
Var
   xSQL, sUProceso, sUPago, sDepto: String;
   i: Integer;
   strAPOSEC: String;
   iCorrAPOSEC: integer;
   sCIUDID, sFORPAGOABR: String;
   sRecibo: String;
   XNMONTO: CURRENCY;

Begin

   If DM1.cdsAsociados.FieldByName('ASOTIPID').AsString = 'CE' Then
   Begin
      MessageDlg('No puede pagar aporte por ser cesante', mtCustom, [mbOk], 0);
      Exit;
   End;

   ValidaINgresoAportes;
   If bF_Efectivo Then sRecibo := RecuperaCorrelativo;
   strAPOSEC := RecuperaPeriodo(dbdtpFechaOperacion.Date);
   iCorrAPOSEC := round(DM1.OperClientDataSet(DM1.cdsTransacciones, 'MAX(APOSECID)', ''));
   Inc(iCorrAPOSEC);
   sCIUDID := DM1.DisplayDescrip('prvTGE', 'APO101', 'CIUDID',
      'UPROID =' + QuotedStr(trim(dblcdUPro.Text))
      + ' AND UPAGOID =' + QuotedStr(trim(dblcdUPago.Text))
      + ' AND USEID =' + QuotedStr(trim(dblcdUSE.Text)), 'CIUDID');
   If dm1.cdsFPagoAporte.Locate('FORPAGOID', VarArrayOf([trim(dblcFormaPago.text)]), []) Then
      sFORPAGOABR := dm1.cdsFPagoAporte.fieldbyName('FORPAGOABR').AsString;
    //
   With cdsQry2 Do
   Begin
      DisableControls;
      First;

      For i := 1 To RecordCount Do
      Begin
         RecNo := i;
         If (FieldByName('CB_OK').AsString = '1') And (FieldByName('CB_OK').AsCurrency > 0) Then
         Begin
            DM1.cdsTransacciones.Append;
            //PERIODOS DE APORTE Y COBRANZA
            DM1.cdsTransacciones.FieldByName('TRANSANO').AsString := cdsQry2.FieldByName('TRANSANO').AsString;
            DM1.cdsTransacciones.FieldByName('TRANSMES').AsString := cdsQry2.FieldByName('TRANSMES').AsString;
            DM1.cdsTransacciones.FieldByName('RCOBID').AsString := cdsQry2.FieldByName('RCOBID').AsString;
            DM1.cdsTransacciones.FieldByName('DETRCOBID').AsString := cdsQry2.FieldByName('DETRCOBID').AsString;

            If (Trim(DM1.cdsFPagoAporte.FieldByName('FPLANILLA').AsString) = 'S') Then
            Begin
               DM1.cdsTransacciones.FieldByName('APOSEC').AsString := cdsQry2.FieldByName('TRANSANO').AsString
                                                                    + cdsQry2.FieldByName('TRANSMES').AsString;
               DM1.cdsTransacciones.FieldbyName('APOSECID').AsInteger :=
                           round(DM1.OperClientDataSet(DM1.cdsTransacciones,
                              'COUNT(*)', 'APOSEC=' + QuotedStr(DM1.cdsTransacciones.FieldByName('APOSEC').AsString)));
            End
            Else
            Begin
               DM1.cdsTransacciones.FieldByName('APOSEC').AsString := strAPOSEC;
               DM1.cdsTransacciones.FieldbyName('APOSECID').AsInteger := iCorrAPOSEC;
            End;

            //DATOS RELACIONADOS CON BANCOS
            DM1.cdsTransacciones.FieldByName('BANCOID').AsString := dblcBanco.Text;
            DM1.cdsTransacciones.FieldByName('AGENBANCOID').AsString := dblcAgencia.Text;
            DM1.cdsTransacciones.FieldByName('CCBCOID').AsString := dblcCtaCte.Text;

            DM1.cdsTransacciones.FieldByName('TRANSNOPE').AsString := dbeNumOpe.Text;
            If bF_Efectivo Then
            Begin
               dbeNumOpe.Text := sRecibo;
               DM1.cdsTransacciones.FieldByName('TRANSNOPE').AsString := sRecibo;
               DM1.cdsTransacciones.FieldByName('FLGRECIBO').AsString := 'S';
            End;
            DM1.cdsTransacciones.FieldByName('TRANSFOPE').AsDateTime := dbdtpFechaOperacion.Date;

            DM1.cdsTransacciones.FieldByName('TMONID').AsString := 'N';
            DM1.cdsTransacciones.FieldByName('TRANSID').AsString := dblcTransaccion.Text;
            DM1.cdsTransacciones.FieldByName('ASOID').AsString := dblcdCodigo.Text;
            DM1.cdsTransacciones.FieldByName('ASOCODMOD').AsString := dbeCodigoModular.Text;
            DM1.cdsTransacciones.FieldByName('ASOAPENOM').AsString := xAsoApenom;
            DM1.cdsTransacciones.FieldByName('USEID').AsString := dblcdUse.Text;
            DM1.cdsTransacciones.FieldByName('USEABR').AsString := edtUse.Text;
            DM1.cdsTransacciones.FieldByName('UPROID').AsString := Trim(dblcdUPro.Text);
            sUProceso := DM1.DisplayDescrip('prvTGE', 'APO102', 'UPROABR',
                    'UPROID =' + QuotedStr(DM1.cdsTransacciones.FieldByName('UPROID').AsString), 'UPROABR');
            DM1.cdsTransacciones.FieldByName('UPROABR').AsString := sUProceso;
            DM1.cdsTransacciones.FieldByName('UPAGOID').AsString := trim(dblcdUPago.Text);
            sUPago := DM1.DisplayDescrip('prvTGE', 'APO103', 'UPAGOABR',
                    'UPAGOID =' + QuotedStr(DM1.cdsTransacciones.FieldByName('UPAGOID').AsString), 'UPAGOABR');
            DM1.cdsTransacciones.FieldByName('UPAGOABR').AsString := sUPago;
            DM1.cdsTransacciones.FieldByName('DPTOID').AsString :=DM1.DisplayDescrip('prvTGE', 'APO101', 'DPTOID',
                    'USEID = ' + QuotedStr(dblcdUse.Text), 'DPTOID');
            sDepto := DM1.DisplayDescrip('prvTGE', 'APO158', 'DPTOABR ',
                    'DPTOID =' + QuotedStr(DM1.cdsTransacciones.FieldbyName('DPTOID').AsString), 'DPTOABR');
            DM1.cdsTransacciones.FieldByName('DPTOABR').AsString := sDepto;
            DM1.cdsTransacciones.FieldByName('ASOCODAUX').AsString := xASOCODAUX;

            DM1.cdsTransacciones.FieldByName('FORPAGOID').AsString := dblcFormaPago.Text;
            DM1.cdsTransacciones.FieldByName('FORPAGOABR').AsString := sFORPAGOABR;
            DM1.cdsTransacciones.FieldByName('CIUDID').AsString := sCIUDID;
            DM1.cdsTransacciones.FieldByName('TRANSMTO').AsCurrency := cdsQry2.FieldByName('TRANSMTO').AsCurrency;
            DM1.cdsTransacciones.FieldByName('TRANSMTODEV').AsString := '0';
            DM1.cdsTransacciones.FieldByName('INTERESMTO').AsString := '0';
            DM1.cdsTransacciones.FieldByName('BONUSMTO').AsString := '0';
            DM1.cdsTransacciones.FieldByName('CIAID').AsString := wCiaDef;
            DM1.cdsTransacciones.FieldByName('APOFDEV').AsString := '';
            DM1.cdsTransacciones.FieldByName('TRANSFFCIND').AsString := '';
            DM1.cdsTransacciones.FieldByName('TRANSINTID').AsString := xTrans;

            //DATOS DATAWAREHOUSE
        // Inicio HPC_201502_APO - Cambiar el formato de Fecha
            //xSQL := 'Select fecha, fecano, fecmes, fecdia, fecdiass, fectrim, fecsem, fecss, fecaatri, fecaasem, fecaass, fecmmss, feclab From TGE114 Where FECHA=TO_DATE(SYSDATE,' + QuotedStr('DD/MM/YYYY') + ')';
        			xSQL := 'Select fecha, fecano, fecmes, fecdia, fecdiass, fectrim, fecsem, fecss, fecaatri, fecaasem, fecaass, fecmmss, feclab From TGE114 Where FECHA=TO_CHAR(SYSDATE,' + QuotedStr('DD/MM/YYYY') + ')';
        // Fin    HPC_201502_APO - Cambiar el formato de Fecha
            DM1.Filtracds(DM1.cdsQry, xSQL);
            DM1.cdsTransacciones.FieldByName('TRANSTRIM').AsString := DM1.cdsQry.FieldByName('FECTRIM').AsString;
            DM1.cdsTransacciones.FieldByName('TRANSSEM').AsString := DM1.cdsQry.FieldByName('FECSEM').AsString;
            DM1.cdsTransacciones.FieldByName('TRANSAAMM').AsString := DM1.cdsQry.FieldByName('FECANO').AsString +
               DM1.cdsQry.FieldByName('FECMES').AsString;
            DM1.cdsTransacciones.FieldByName('TRANSAATRI').AsString := DM1.cdsQry.FieldByName('FECAATRI').AsString;
            DM1.cdsTransacciones.FieldByName('TRANSAASEM').AsString := DM1.cdsQry.FieldByName('FECAASEM').AsString;
            DM1.cdsQry.Close;

            //DATOS LOG
            DM1.cdsTransacciones.FieldbyName('USUARIO').AsString := DM1.wUsuario;
            DM1.cdsTransacciones.FieldbyName('FREG').AsDateTime := Date;
            DM1.cdsTransacciones.FieldbyName('HREG').AsDateTime := Date + SysUtils.Time;
            DM1.cdsTransacciones.FieldByName('CNTANOMM').AsString := FormatDateTime('yyyymm', Date);

            cdsPost(DM1.cdsTransacciones);
            DM1.cdsTransacciones.Post;

          //-- ESTE INSERT REEMPLAZA EL ANTERIOR APPLYUPDATE, PERO EL ANTERIOR QUEDA PARA
          //-- ACTUALIZAR EL CDS Y EN BASE A ESTE SE HACE EL INSERT   RMZ
            XSQL := 'INSERT INTO APO301 ('
             + 'ASOID,TRANSID,USEID,USEABR,UPAGOID,UPAGOABR,UPROID,UPROABR,TMONID,BANCOID,CCBCOID,TRANSNOPE,'
             + 'TRANSFOPE,TRANSANO,TRANSMES,TRANSMTO,TRANSINTID,USUARIO,APOFRECL,ASOCODMOD,ASOCODAUX,FORPAGOID,'
             + 'ASOAPENOM,FORPAGOABR,DPTOID,DPTOABR,CIUDID,FREG,HREG,TRANSAAMM,TRANSAATRI,TRANSTRIM,TRANSSEM,'
             + 'TRANSAASEM,APOSEC,CIAID,TIPDESEID,TIPDESEABR,BCOGIRO,DPTOGIRO,AGENBANCOID,NRONABO,NROFICIO,'
             + 'DETRCOBID,USERCOBID,RCOBID,BANCOIDG,FCIERRE,CNTCONTA,DOCID,PVSLBENNR,FLGNIV,APOSECID,APO301ID,'
             + 'FLGRECIBO,CNTANOMM,TIPOCONT,CNTFLAG,PVSLFECBE) VALUES('
             + QuotedStr(DM1.cdsTransacciones.FieldByname('ASOID').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('TRANSID').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('USEID').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('USEABR').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('UPAGOID').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('UPAGOABR').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('UPROID').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('UPROABR').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('TMONID').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('BANCOID').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('CCBCOID').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('TRANSNOPE').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('TRANSFOPE').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('TRANSANO').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('TRANSMES').AsString) + ','
             + DM1.cdsTransacciones.FieldByName('TRANSMTO').AsString + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('TRANSINTID').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('USUARIO').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('APOFRECL').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('ASOCODMOD').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('ASOCODAUX').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('FORPAGOID').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('ASOAPENOM').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('FORPAGOABR').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('DPTOID').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('DPTOABR').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('CIUDID').AsString) + ', '
             + ' TO_DATE(SYSDATE),SYSDATE,'
             + QuotedStr(DM1.cdsTransacciones.FieldByname('TRANSAAMM').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('TRANSAATRI').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('TRANSTRIM').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('TRANSSEM').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('TRANSAASEM').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('APOSEC').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('CIAID').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('TIPDESEID').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('TIPDESEABR').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('BCOGIRO').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('DPTOGIRO').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('AGENBANCOID').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('NRONABO').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('NROFICIO').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('DETRCOBID').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('USERCOBID').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('RCOBID').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('BANCOIDG').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('FCIERRE').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('CNTCONTA').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('DOCID').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('PVSLBENNR').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('FLGNIV').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('APOSECID').AsString) + ', '
             + ' NULL,'
             + QuotedStr(DM1.cdsTransacciones.FieldByname('FLGRECIBO').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('CNTANOMM').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('TIPOCONT').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('CNTFLAG').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('PVSLFECBE').AsString) + ')';
            DM1.DCOM1.AppServer.EjecutaSQL(XSQL);

            //Actualiza APO301ID
            xSQL := 'BEGIN SP_ACT_APO301ID (''' + dblcdCodigo.text + '''); END;';
            DM1.DCOM1.AppServer.EjecutaSQL(XSQL);

            //RESTO EN EL COB340 LA INCOSISTENCIA, SI FUESE EL CASO
            XSQL := 'SELECT ASOID,RCOBID,DETRCOBID,IMPORTE '
                   +'  FROM COB340 '
                   +' WHERE ASOID     ='+quotedStr(DM1.cdsTransacciones.FieldByname('ASOID').AsString)
                   +'   AND RCOBID    ='+quotedStr(DM1.cdsTransacciones.FieldByname('RCOBID').AsString)
                   +'   AND DETRCOBID ='+quotedStr(DM1.cdsTransacciones.FieldByname('DETRCOBID').AsString);
            DM1.cdsCEdu.Close;
            DM1.cdsCEdu.IndexFieldNames := '';
            DM1.cdsCEdu.DataRequest(XSQL);
            DM1.cdsCEdu.Open;
            If DM1.cdsCEdu.RecordCount > 0 Then
            Begin
               If DM1.cdsCEdu.FieldByName('IMPORTE').AsCurrency > StrToCurr(dbeMonto.Text) Then
               Begin
                  XNMONTO := DM1.cdsCEdu.FieldByName('IMPORTE').AsCurrency - StrToCurr(dbeMonto.Text);
                  XSQL := ' UPDATE COB340 '
                         +'    SET IMPORTE   =' + CurrToStr(XNMONTO)
                         +'  WHERE ASOID     ='+quotedStr(DM1.cdsTransacciones.FieldByname('ASOID').AsString)
                         +'    AND RCOBID    ='+ quotedStr(DM1.cdsTransacciones.FieldByname('RCOBID').AsString)
                         +'    AND DETRCOBID ='+quotedStr(DM1.cdsTransacciones.FieldByname('DETRCOBID').AsString);
                  DM1.DCOM1.AppServer.EjecutaSQL(XSQL);
               End
               Else
                  If DM1.cdsCEdu.FieldByName('IMPORTE').AsCurrency = StrToCurr(dbeMonto.Text) Then
                  Begin
                     XSQL := 'DELETE COB340 '
                            +' WHERE ASOID     ='+quotedStr(DM1.cdsTransacciones.FieldByname('ASOID').AsString)
                            +'   AND RCOBID    ='+quotedStr(DM1.cdsTransacciones.FieldByname('RCOBID').AsString)
                            +'   AND DETRCOBID ='+quotedStr(DM1.cdsTransacciones.FieldByname('DETRCOBID').AsString);
                     DM1.DCOM1.AppServer.EjecutaSQL(XSQL);
                  End;
            End;
         End;
      End; //End For

      {if dm1.cdstransacciones.ApplyUpdates(0) > 0 then
         MessageDlg('Error en la Grabación', mtWarning, [mbOk], 0)
      else}//YA NO SE UTILIZA

      Begin
         MessageDlg('Grabación Exitosa', mtInformation, [mbOk], 0);
         DesHabilitaPanelEdicion;
         If bF_Efectivo Then
         Begin
            Actualiza;
            bbtnImprimir.Visible := TRue;
         End
         Else
         Begin
            xSql := 'INSERT INTO APO312 (ASOID,TRANSNOPE,TRANSFOPE) '
                   +'VALUES ('+quotedStr(DM1.cdsAsociados.FieldByName('ASOID').AsString)+','
                              +quotedStr(dbeNumOpe.Text)+','
                   //SEGUN MEMO 155-2009-DM-COB SAR 0175  DAD RM 35
                   +'to_date('+quotedStr(DatetoStr(dbdtpFechaOperacion.date))+','+quotedStr('DD/MM/YYYY')+'))';
                   //-------------------------------------------------------------------------------------------
            DM1.DCOM1.AppServer.EjecutaSQL(xsql);
         End;
      End;

      First;
      EnableControls;
   End;

   Z2bbtnCancel.Enabled := True;
   Z2bbtnAceptar.Enabled := True;
   QuitarPendientes;
End;

Procedure TFCaptaAportes.ConfiguraAdicion;
Begin
   dblcbanco.Enabled := False;
   dblcAgencia.Enabled := False;
   dblcCtaCte.Enabled := False;
End;

Procedure TFCaptaAportes.dblcFormaPagoChange(Sender: TObject);
Begin

   //Buscar en clientdataset Base
   If trim(dblcFormaPago.Text) = '' Then
   Begin
      dbeFormaPago.Clear;
      dblcBanco.Clear;
      dbeBanco.Clear;
      dblcAgencia.Clear;
      dbeAgencia.Clear;
      dblcCtaCte.Clear;
      dbeNumOpe.Clear;

      dblcBanco.Enabled := False;
      dblcAgencia.Enabled := False;
      dblcCtaCte.Enabled := False;
   End;

   If dblcformaPago.LookUpTable.Locate('FORPAGOID',
      VarArrayOf([trim(dblcFormaPago.text)]), []) Then
   Begin
      dbeFormaPago.Text := dblcformaPago.LookUpTable.FieldBYName('FORPAGODES').AsString;
      If DM1.cdsFPagoAporte.Locate('FORPAGOID', VarArrayOf([trim(dblcFormaPago.text)]), []) Then
      Begin
         If bF_Efectivo Then
            dbdtpFechaOperacion.Enabled := False
         Else
            dbdtpFechaOperacion.Enabled := True;
         dblcBanco.Enabled := (DM1.cdsFPagoAporte.FieldByName('FOROPEBCON').AsString = 'S');
         dblcAgencia.Enabled := False;
         dblcCtaCte.Enabled := False;
         If (Trim(DM1.cdsFPagoAporte.FieldByName('FPLANILLA').AsString) = 'S') Then
            btndeInconsistencias.Visible := True
         Else
            btndeInconsistencias.Visible := False;
      End;
   End
   Else
   Begin
      dbeFormaPago.Clear;
      dblcBanco.Clear;
      dbeBanco.Clear;
      dblcAgencia.Clear;
      dbeAgencia.Clear;
      dblcCtaCte.Clear;
      dbeNumOpe.Clear;

      dblcBanco.Enabled := False;
      dblcAgencia.Enabled := False;
      dblcCtaCte.Enabled := False;

   End;
End;

Procedure TFCaptaAportes.dblcBancoChange(Sender: TObject);
Begin
   If dm1.cdsBancos.Locate('BANCOID', VarArrayOf([trim(dblcBanco.Text)]), []) Then
   Begin
      dbeBanco.Text := dm1.cdsBancos.FieldByName('BANCONOM').AsString;
      If bF_Efectivo Then
         Exit;
      If trim(dbeNumOpe.Text) = '' Then
         dbeNumOpe.Text := DM1.cdsBancos.Fieldbyname('BANCOPRF').AsString;
      DM1.FiltraCDS(DM1.cdsCtaCtes,
         'Select * From TGE106 Where CIAID =' + QuotedStr(wCiaDef) + ' And BANCOID =' + QuotedStr(dblcBanco.Text));
      DM1.FiltraCDS(DM1.cdsAgenciaBco,
         'Select * From COB102 Where BANCOID =' + QuotedStr(dblcBanco.Text));
      dblcCtaCte.Enabled := (DM1.cdsCtaCtes.RecordCount > 0);
      dblcAgencia.Enabled := (DM1.cdsAgenciaBco.RecordCount > 0);

      If DM1.cdsAgenciaBco.RecordCount = 0 Then
      Begin
         MessageDlg('OJO!!Este Banco no Tiene Agencias Registradas', mtWarning, [mbOk], 0);
      End;
      If DM1.cdsCtaCtes.RecordCount = 0 Then
      Begin
         MessageDlg('OJO!!Este Banco no Tiene Ctas. Ctes. Registradas', mtWarning, [mbOk], 0);
      End;

   End
   Else
   Begin

      dbeBanco.Clear;
      dblcAgencia.Clear;
      dbeagencia.Clear;
      dblcCtaCte.Clear;

      dblcAgencia.Enabled := False;
      dblcCtaCte.Enabled := False;

   End;
End;

Procedure TFCaptaAportes.dblcAgenciaChange(Sender: TObject);
Begin

   If Not dblcAgencia.LookUpTable.Locate(dblcAgencia.Lookupfield, VarArrayOf([trim(dblcAgencia.Text)]), []) Then
      dbeAgencia.Clear
   Else
      dbeAgencia.Text := dblcAgencia.LookUpTable.FieldByName('AGENBCODES').AsString;

End;

Procedure TFCaptaAportes.dblcCtaCteExit(Sender: TObject);
Begin
   If Not dblcCtaCte.LookUpTable.Locate(dblcCtaCte.Lookupfield, VarArrayOf([trim(dblcCtaCte.Text)]), []) Then
      dblcCtaCte.Clear;
End;

Procedure TFCaptaAportes.dblcFormaPagoExit(Sender: TObject);
Begin
   If trim(dbeFormaPago.Text) = '' Then
      dblcFormaPago.Clear;

   If (Length(trim(dblcFormaPago.Text)) > 0) And
           (Trim(DM1.cdsFPagoAporte.FieldByName('FPLANILLA').AsString) = 'S') Then
      btndeInconsistencias.Visible := True
   Else
      btndeInconsistencias.Visible := False;
End;

Procedure TFCaptaAportes.dblcBancoExit(Sender: TObject);
Begin
   If trim(dbeBanco.Text) = '' Then
      dblcBanco.clear;
End;

Procedure TFCaptaAportes.dblcAgenciaExit(Sender: TObject);
Begin
   If trim(dbeAgencia.Text) = '' Then
      dblcAgencia.Clear;
End;

Procedure TFCaptaAportes.dbeMontoEnter(Sender: TObject);
Begin
   If cdsQry2.State In [dsinsert, dsedit] Then
      cdsqry2.Post;
End;

Procedure TFCaptaAportes.blanquea_detalle;
Var
   bmk: TBookMarkStr;
   i: integer;
Begin
   QuitaEventosCampos;
   bmk := cdsQry2.Bookmark;
   cdsQry2.DisableControls;

   For i := 1 To cdsqry2.RecordCount Do
   Begin
      With cdsQry2 Do
      Begin
         RecNo := i;
         Edit;
         FieldByName('CB_OK').AsString := '0';
         FieldByName('CB_OK2').AsString := '0';
         FieldByName('TRANSMTO').AsCURRENCY := 0;
         Post;
      End;
   End;

   cdsqry2.Bookmark := bmk;
   cdsQry2.EnableControls;
   PonEventosCampos;
   dbgDetAportes.ColumnByName('TRANSMTOORI').FooterValue := FloatToStrF(0, ffNumber, 10, 2);
   dbgDetAportes.ColumnByName('TRANSMTO').FooterValue := FloatToStrF(0, ffNumber, 10, 2);

End;

Procedure TFCaptaAportes.PonEventosCampos;
Begin
   cdsQry2.FieldByName('CB_OK').OnChange := cb_okChange;
   cdsQry2.FieldByName('CB_OK2').OnChange := cb_ok2Change;
   cdsQry2.FieldByName('CB_OK2').Onvalidate := cb_ok2validate;
   cdsQry2.FieldByName('TRANSMTO').Onvalidate := transmtovalidate;
   cdsQry2.FieldByName('TRANSMTO').OnChange := transmtoChange;
End;

Procedure TFCaptaAportes.QuitaEventosCampos;
Begin
   cdsQry2.FieldByName('CB_OK').OnChange := Nil;
   cdsQry2.FieldByName('CB_OK2').OnChange := Nil;
   cdsQry2.FieldByName('CB_OK2').Onvalidate := Nil;
   cdsQry2.FieldByName('TRANSMTO').Onvalidate := Nil;
   cdsQry2.FieldByName('TRANSMTO').OnChange := Nil;
End;

Procedure TFCaptaAportes.recalcula_Detalle;
Var
   bmk: TBookMarkStr;
   currMonto: currency;
   i: integer;
////*////
   Procedure AdicionaNuevo;
   Var
      Present: TDateTime;
      nYear, nMonth, nDay: word;
      bmk: TBookmark;
      currUltimoAporte: Currency;

   Begin
      cdsAporte.Last;
      currUltimoAporte := cdsAporte.fieldbyName('APOVALOR').AsCurrency;

      If cdsQry2.recordcount <> 0 Then
      Begin
         cdsqry2.Last;
         nYear := cdsQry2.FieldByName('TRANSANO').asinteger;
         nMonth := cdsQry2.FieldByName('TRANSMES').asinteger;
      End
      Else
      Begin
         If dm1.cdstransacciones.recordcount > 0 Then
         Begin
            dm1.cdstransacciones.disableControls;
            bmk := dm1.cdstransacciones.GetBookmark;
            dm1.cdstransacciones.Last;
            nYear := dm1.cdstransacciones.FieldByName('TRANSANO').AsInteger;
            nMonth := dm1.cdstransacciones.FieldByName('TRANSMES').AsInteger;
            dm1.cdsTransacciones.GotoBookmark(bmk);
            dm1.cdsTransacciones.FreeBookmark(bmk);
            dm1.cdsTransacciones.EnableControls;
         End
         Else
         Begin
            nYear := strtoint(strAnoIni);
            nMonth := strtoint(strMesIni);
         End;
      End;

      If nMonth = 12 Then
      Begin
         nMonth := 1;
         inc(nYear);
      End
      Else
         inc(nMonth);

      cdsQry2.Append;

      cdsQry2.FieldByName('TRANSANO').AsString := dm1.StrZero(inttostr(nYear), 4);
      cdsQry2.FieldByName('TRANSMES').AsString := dm1.StrZero(inttostr(nMonth), 2);
      cdsQry2.fieldByName('CB_OK').AsString := '1';
      If cdsAporte.locate('APOANO;APOMES',
         VarArrayOf([cdsQry2.FieldByName('TRANSANO').AsString,
         cdsQry2.FieldByName('TRANSMES').AsString]), []) Then
      Begin
         cdsQry2.FieldByName('TRANSMTOORI').AsCurrency := cdsAporte.fieldbyname('APOVALOR').AsCurrency;
         cdsQry2.FieldByName('TRANSMTO').AsCurrency := cdsAporte.fieldbyname('APOVALOR').AsCurrency;
      End
      Else
      Begin
         cdsQry2.FieldByName('TRANSMTOORI').ASCurrency := currUltimoAporte;
         cdsQry2.FieldByName('TRANSMTO').ASCurrency := currUltimoAporte;
      End;

      cdsqry2.next;
   End;
Begin
   blanquea_detalle;
   QuitaEventosCampos;
//  bmk := cdsQry2.Bookmark ;
   cdsQry2.DisableControls;

   currMonto := strtocurr(dbeMonto.Text);
   With cdsqry2 Do
   Begin
      For i := 1 To RecordCount Do
      Begin
         RecNo := i;
         If currMonto > FieldByName('TRANSMTOORI').AsCurrency Then
         Begin
            Edit;
            FieldByName('CB_OK').AsString := '1';
            FieldByName('CB_OK2').AsString := '0';
            FieldByName('TRANSMTO').AsCURRENCY := FieldByName('TRANSMTOORI').AsCURRENCY;
            Post;
            currMonto := currMonto - FieldByName('TRANSMTOORI').AsCURRENCY;
         End
         Else
         Begin
            Edit;
            FieldByName('CB_OK').AsString := '1';
            FieldByName('CB_OK2').AsString := '1';
            FieldByName('TRANSMTO').AsCURRENCY := currMonto;
            Post;
            currMonto := 0;
            break;
         End
      End;
   End;
  //Verificar si todava queda dinero por distribuir
   If currMonto > 0 Then
   Begin
      With cdsQry2 Do
      Begin
         While currMonto > 0 Do
         Begin
            AdicionaNuevo;
//
            If currMonto > FieldByName('TRANSMTOORI').AsCurrency Then
            Begin
               Edit;
               FieldByName('CB_OK').AsString := '1';
               FieldByName('CB_OK2').AsString := '0';
               FieldByName('TRANSMTO').AsCURRENCY := FieldByName('TRANSMTOORI').AsCURRENCY;
               Post;
               currMonto := currMonto - FieldByName('TRANSMTOORI').AsCURRENCY;
            End
            Else
            Begin
               Edit;
               FieldByName('CB_OK').AsString := '1';
               FieldByName('CB_OK2').AsString := '1';
               FieldByName('TRANSMTO').AsCURRENCY := currMonto;
               Post;
               currMonto := 0;
               break;
            End;
//
         End;
      End;
   End;
//  cdsqry2.Bookmark := bmk ;
   cdsQry2.EnableControls;
   PonEventosCampos;
   dbgDetAportes.ColumnByName('TRANSMTOORI').FooterValue :=
             FloatToStrF(DM1.OperClientDataSet(cdsQry2, 'SUM(TRANSMTOORI)', ''), ffNumber, 10, 2);
   dbgDetAportes.ColumnByName('TRANSMTO').FooterValue :=
             FloatToStrF(DM1.OperClientDataSet(cdsQry2, 'SUM(TRANSMTO)', ''), ffNumber, 10, 2);
End;

Function TFCaptaAportes.QuitaComas(strNumero: String): Currency;
Var
   iPos: Integer;
Begin
   iPos := AnsiPos(',', strNumero);
   While iPos > 0 Do
   Begin
      If ipos = 1 Then
         strNumero := copy(strNumero, 2, length(strNUmero))
      Else
         strNumero := copy(strnumero, 1, iPos - 1) + copy(strnumero, iPos + 1, length(strNUmero));
      iPos := AnsiPos(',', strNumero);
   End;
   result := StrToCurr(strNumero);
End;

Procedure TFCaptaAportes.ValidaINgresoAportes;
Begin
   If cdsQry2.State In [dsInsert, dsEdit] Then
      cdsQry2.Post;
   If (trim(dbeFormaPago.Text) = '') Then
   Begin
      Beep;
      dblcFormaPago.SetFocus;
      Raise exception.Create('Debe Seleccionar la Forma de Pago');
   End;

   DM1.cdsFPagoAporte.Locate('FORPAGOID', VarArrayOf([trim(dblcFormaPago.text)]), []);
   If DM1.cdsFPagoAporte.FieldByName('FOROPEBCON').AsString = 'S' Then

   Begin
      If trim(dbeBanco.Text) = '' Then
      Begin
         Beep;
         dblcBanco.SetFocus;
         Raise exception.Create('Debe seleccionar el Banco');
      End;

      If trim(dblcCtaCte.Text) = '' Then
      Begin
         Beep;
         dblcCtaCte.SetFocus;
         Raise exception.Create('Debe seleccionar la Cuenta Corriente');
      End;

   End;
   If bF_Efectivo And (trim(dbeBanco.Text) = '') Then
   Begin
      Beep;
      dblcBanco.SetFocus;
      Raise exception.Create('Debe seleccionar la Caja');
   End;
   If (trim(dbeNumOpe.Text) = '') And Not bF_Efectivo Then
   Begin
      Beep;
      dbeNumOpe.SetFocus;
      Raise Exception.CReate('Debe registrar el Numero Operacin');
   End;

   If trim(dbdtpFechaOperacion.Text) = '' Then
   Begin
      Beep;
      dbdtpFechaOperacion.SetFocus;
      Raise exception.Create('Debe Ingresar la Fecha de Operaci n');
   End;

   If (trim(dbeMonto.Text) = '') Or (trim(dbeMonto.Text) = '.') Then
   Begin
      Beep;
      dbeMonto.SetFocus;
      Raise exception.CReate('Debe registrar Monto del Aporte');
   End
   Else
      If quitaComas(trim(dbeMonto.Text)) = 0 Then
      Begin
         Beep;
         dbeMonto.SetFocus;
         Raise exception.CReate('Debe registrar Monto del Aporte');
      End;

End;

Function TFCaptaAportes.Sumariza: Currency;
Var
   cdsClone: Twwclientdataset;
   i: integer;
Begin
   result := 0;
   cdsClone := TwwClientDataSet.Create(self);
   cdsClone.CloneCursor(cdsqry2, true);
   For i := 1 To cdsClone.RecordCount Do
   Begin
      cdsClone.RecNo := i;
      If (cdsClone.FieldByName('CB_OK').AsString = '1') And
         (cdsClone.FieldByName('TRANSANO').AsString + cdsClone.FieldByName('TRANSMES').AsString
         <> cdsQry2.FieldByName('TRANSANO').AsString + cdsQry2.FieldByName('TRANSMES').AsString) Then
         result := result + cdsClone.FieldByName('TRANSMTO').AsCURRENCY;
   End;
   cdsClone.Free;
   cdsClone := Nil;
End;

Function TFCaptaAportes.RecuperaPeriodo;
Var
   iAno, iMes, iDia: Word;
Begin
   DecodeDate(dtFecha, iano, imes, idia);
   result := dm1.strzero(intTostr(iano), 4) + dm1.strzero(inttostr(iMes), 2);
End;

Procedure TFCaptaAportes.DesHabilitaPanelEdicion;
Begin
   dbgdetAportes.ReadOnly := True;
   wwDBGrid1IButton.Enabled := False;
   bbtnAceptar.Enabled := False;
   Panel1.Enabled := False;
End;

Procedure TFCaptaAportes.HabilitaPanelEdicion;
Begin
   dbgdetAportes.ReadOnly := False;
   wwDBGrid1IButton.Enabled := True;
   bbtnAceptar.Enabled := True;
   Panel1.Enabled := True;
End;

Procedure TFCaptaAportes.bbtnNuevoClick(Sender: TObject);
Begin
//   if bF_Efectivo then
   If dbgAportes.DataSource.DataSet.RecordCount = 0 Then
   Begin
      If SpeAnnos.Tag <> 0 Then
      Begin
         strAnoIni := dm1.StrZero(inttostr(SpeAnnos.Tag), 4);
         strMesIni := dm1.StrZero(inttostr(SpEmeses.Tag), 2);
         SpeAnnos.Tag := 0;
         SpEmeses.Tag := 0;
      End;
   End;

   MostrarPendientes;
   QuitaEventosCampos;
   bbtningresaAporte.OnClick(bbtningresaAporte);

End;

Procedure TFCaptaAportes.ValidarAdicionAportes;
Begin
{ wmc
  if TRIM(dblctipoasoc.text) = 'CE' then
     Raise exception.CReate('No se pueden ingresar Aportes de un docente Cesante');
}
{ wmc 16062003
  if strAnoFin + strMesFin < strAnoIni + strMesIni then
     Raise exception.CReate('Hay una Inconsistencia entre la Fecha de Resolucin y/o ' + char(13) +
                            'Periodo del Primer Aporte y La Fecha de Cese -- rEVISE!!'    );
}
End;

Procedure TFCaptaAportes.PonEventosCabecera;
Begin
   dblcFormaPago.Onchange := dblcFormaPagochange;
   dblcFormaPago.Onexit := dblcFormaPagoexit;
   dblcBanco.OnChange := dblcBancoChange;
   dblcBanco.Onexit := dblcBancoexit;
   dblcAgencia.Onchange := dblcAgenciachange;
   dblcAgencia.Onexit := dblcAgenciaexit;
   dblcCtaCte.Onexit := dblcCtaCteexit;
   dbeMonto.OnEnter := dbeMontoEnter;
   dbeMonto.OnExit := dbeMontoExit;
   dbeMonto.OnKeyPress := dbeMontoKeyPress;
End;

Procedure TFCaptaAportes.QuitaEventosCabecera;
Begin
   dblcFormaPago.Onchange := Nil;
   dblcFormaPago.Onexit := Nil;
   dblcBanco.OnChange := Nil;
   dblcBanco.Onexit := Nil;
   dblcAgencia.Onchange := Nil;
   dblcAgencia.Onexit := Nil;
   dblcCtaCte.Onexit := Nil;
   dbeMonto.OnEnter := Nil;
   dbeMonto.OnExit := Nil;
   dbeMonto.OnKeyPress := Nil;
End;

Procedure TFCaptaAportes.FormCreate(Sender: TObject);
Var
   sUsuario: String;
Begin
   //Inicializaci n de Datos
   bF_Efectivo := False;
   sCajaDefault := '';
   //Verificar si es Usuario autorizado para la forma de pago efectivo
   //1.Buscar forma de pAGO EFECTIVO
   sUsuario := DM1.DisplayDescrip('prvTGE', 'COB114', '*', 'USERID = ''' + DM1.wUsuario + '''', 'USERID');
   If trim(sUsuario) <> '' Then
   Begin
      bF_Efectivo := True;
      sCajaDefault := dm1.cdsQry.FieldByName('CAJAID').AsString;
      If dm1.cdsFPagoAporte.Locate('TIPO', VarArrayOf(['E']), []) Then
         sEfectivo := dm1.cdsFPagoAporte.FieldByName('FORPAGOID').AsString;
      lblBanco.Caption := 'Caja';
      lblOperacion.Caption := 'Recibo';
     //Filtrar Cajas
      sSQL := 'SELECT BANCOID, BANCONOM, BANCOPRF FROM TGE105 WHERE BCOTIPCTA = ''C'' ORDER BY BANCOID';
      DM1.FiltraCDS(DM1.cdsBancos, sSQL);
   End
   Else
   Begin
      DM1.cdsFPagoAporte.Filter := 'TIPO=''E''';
      DM1.cdsFPagoAporte.Filtered := True;
      If DM1.cdsFPagoAporte.recordcount > 0 Then
      Begin
         While Not dm1.cdsFPagoAporte.eof Do
            dm1.cdsFPagoAporte.delete;

      End;
      DM1.cdsFPagoAporte.Filter := '';
      DM1.cdsFPagoAporte.Filtered := False;
     //Filtrar Bancos
      sSQL := 'SELECT BANCOID, BANCONOM, BANCOPRF FROM TGE105 WHERE BCOTIPCTA = ''B'' ORDER BY BANCOID';
      DM1.FiltraCDS(DM1.cdsBancos, sSQL);
   End;
   //Recuperacin de Datos Generales de Caja
   dm1.cdsCia.Close;
   dm1.cdsCia.DataRequest('SELECT * FROM TGE101 WHERE CIARETIGV=''N''');
   dm1.cdsCia.Open;

  // xCiaid := dm1.cdsCia.FieldByName('CIAID').AsString ;
   xCiaid := '02';

   xSql := 'select cptoid,cuentaid from caja201 where CPTOEQUI =' + quotedstr('RECAUDAAPO');
   dm1.cdsqry.close;
   dm1.cdsqry.datarequest(xSql);
   dm1.cdsqry.open;
   xCptoid := dm1.cdsqry.FieldByName('CPTOID').AsString; //DM1.cdsCBcos.FieldByName('CPTOID').AsString;
   xCuentaid := dm1.cdsqry.FieldByName('CUENTAID').AsString; //DM1.cdsCBcos.FieldByName('CTAPRINC').AsString;
   xClauxid := 'AS';
   wRepFecServi := 'SYSDATE';
   wRepTimeServi := 'SYSDATE';
   xSql := ' SELECT SYSDATE FECHA from DUAL ';
   dm1.cdsqry.close;
   dm1.cdsqry.datarequest(xSql);
   dm1.cdsqry.open;

   xFechaSys := dm1.cdsQry.FieldByName('FECHA').AsDateTime;

   xWhere := 'FLGOFICIO = ' + quotedstr('N');
   xFPagoid := DM1.DisplayDescrip('prvSQL', 'CRE104', 'FPAGOID', xWhere, 'FPAGOID');
   wTCCompra := 'TCAMVBC';
End;

Procedure TFCaptaAportes.FormDestroy(Sender: TObject);
Begin

   sSQL := 'SELECT * FROM COB101 WHERE FORPAGFAPO LIKE ''%S%'' ORDER BY FORPAGOID';
   DM1.FiltraCDS(DM1.cdsFPagoAporte, sSQL);
   sSQL := 'SELECT BANCOID, BANCONOM, BANCOPRF FROM TGE105';
   DM1.FiltraCDS(DM1.cdsBancos, sSQL);

End;
Function TFCaptaAportes.RecuperaCorrelativo: String;
Var
   sANO: String;
   sMES: String;
   sSQL: String;
   Procedure AsignaAnoMes(Var sAno, sMes: String);
   Var
      Year, Month, Day: Word;
   Begin

      DecodeDate(dbdtpFechaOperacion.date, Year, Month, Day);
      sAno := dm1.StrZero(IntToStr(Year), 4);
      sMes := dm1.StrZero(IntToStr(Month), 2);

   End;
Begin
   AsignaAnoMes(sANO, sMES);
   SSQL := 'BEGIN SP_RECUPERA_CORRELATIVO(''RECIBO_APORTE'' , ''' + sANO + ''');  END ;';
   dm1.DCOM1.Appserver.EjecutaSQL(ssql);
   dm1.cdsQry.Close;
   dm1.cdsQry.DataRequest('SELECT CODIGO FROM TMP001');
   dm1.cdsQry.Open;
   If dm1.cdsQry.FieldByName('CODIGO').AsInteger = 0 Then
      result := ''
   Else
      result := dm1.cdsQry.FieldByName('CODIGO').AsString;
End;

Procedure TFCaptaAportes.MostrarPendientes;
Begin
   dbgDetAportes.datasource.DataSet.Filter := '';
   dbgDetAportes.datasource.DataSet.Filtered := fALSE;
End;

Procedure TFCaptaAportes.QuitarPendientes;
Begin
   dbgDetAportes.datasource.DataSet.Filter := 'CB_OK=''1''';
   dbgDetAportes.datasource.DataSet.Filtered := True;

   dbgDetAportes.ColumnByName('TRANSMTOORI').FooterValue := dbgDetAportes.ColumnByName('TRANSMTO').FooterValue;

End;

Procedure TFCaptaAportes.Actualiza;
Const
   xCaja302: String = 'CIAID,TDIARID,ECANOMM,ECNOCOMP,CLAUXID,PROV,PROVRUC,ECFCOMP,' +
   'ECFEMICH,ECFPAGOP,FPAGOID,DOCID,ECNODOC,TMONID,ECTCAMB,ECMTOORI,' +
      'ECMTOLOC,ECMTOEXT,BANCOID,CCBCOID,CPTOID,CUENTAID,ECGLOSA,ECLOTE,' +
      'ECELABO,ECESTADO,ECCONTA,ECUSER,ECFREG,ECHREG,ECANO,ECMM,ECDD,' +
      'ECSS,ECSEM,ECTRI,ECAASS,ECAASEM,ECAATRI,EC_IE,CAJARETIGV,' +
      'AUXID,CCBCOVOUCH,EC_PROCE';
Var
   xFecha, xNumComp1, xNumComp2, xCampo, xSql: String;
   xAnoCaja, xMesCaja: String;
Begin

   AsignaAnoMes(xAnoCaja, xMesCaja);

   DM1.FiltraCDS(DM1.cdsCBcos, 'SELECT * FROM TGE106 WHERE BANCOID=' +
      quotedstr(dblcBanco.text) + ' AND CIAID=' + quotedstr(xCiaid));
//                      quotedstr(dblcBanco.text)+' AND CIAID='+quotedstr(dm1.cdsCia.FieldByName('CIAID').AsString));

   xCcBcoid := DM1.cdsCBcos.FieldByName('CCBCOID').AsString;
   xTmonid := DM1.cdsCBcos.FieldByName('TMONID').AsString;
   xVouch := DM1.cdsCBcos.FieldByName('CCBCOVOUCH').AsString;

          //** JALA EL TIPO DE DOCUMENTO
   xSql := 'SELECT DOCID FROM TGE110 WHERE DOCRECCAJ=''S'' AND FCING = ''N''';
   dm1.cdsQry.Close;
   dm1.cdsQry.DataRequest(xSql);
   dm1.cdsQry.Open;
   xDocid := dm1.cdsQry.fieldByName('DOCID').AsString;

   xSql := 'select NVL(MAX(CNTCOMPROB),0) +1 TOTAL from cnt301' +
      ' where CIAID=' + quotedstr(xCiaid) +
      ' and TDIARID=' + quotedstr(xVouch) +
      ' AND CNTANOMM=' + quotedstr(xAnoCaja + xMesCaja);

   dm1.cdsQry.Close;
   dm1.cdsQry.DataRequest(xSql);
   dm1.cdsQry.Open;
   If dm1.cdsQry.fieldByName('TOTAL').AsString = '' Then xNumComp1 := '1';
   xNumComp1 := Dm1.StrZero(dm1.cdsQry.fieldByName('TOTAL').AsString, 10);
//     wmc
   xSql := 'select NVL(MAX(ECNOCOMP),0) +1 TOTAL from CAJA321' +
      ' where CIAID=' + quotedstr(xCiaid) +
      ' and TDIARID=' + quotedstr(xVouch) +
      ' AND ECANOMM=' + quotedstr(xAnoCaja + xMesCaja);

   dm1.cdsQry.Close;
   dm1.cdsQry.DataRequest(xSql);
   dm1.cdsQry.Open;
   If dm1.cdsQry.fieldByName('TOTAL').AsString = '' Then xNumComp2 := '1';
   xNumComp2 := Dm1.StrZero(dm1.cdsQry.fieldByName('TOTAL').AsString, 10);

   If xNumComp1 < xNumComp2 Then
      xMaxNumComp := xNumComp2
   Else
      xMaxNumComp := xNumComp1;

          //** ACTUALIZO CAJA302
          //** CIAID
   xCampo := quotedstr(xCiaid) + ',';
          //** TDIARID
   xCampo := xCampo + quotedstr(xVouch) + ',';
   xTDiarid := xVouch;
          //** ECANOMM
   xCampo := xCampo + quotedstr(xAnoCaja + xMesCaja) + ',';
   xEcanomm := xAnoCaja + xMesCaja;
          //** ECNOCOMP
   xCampo := xCampo + quotedstr(xMaxNumComp) + ',';
          //**CLAUXID
   xCampo := xCampo + quotedstr(xClauxid) + ',';
          //** PROV
   xCampo := xCampo + quotedstr(DM1.cdsAsociados.FieldByName('ASOID').AsString) + ',';
          //** PROVRUC
   xCampo := xCampo + quotedstr(DM1.cdsAsociados.FieldByName('ASODNI').AsString) + ',';
          //** ECFCOMP
   xCampo := xCampo + wRepFecServi + ',';
   xFechaCom := xFechaSys;
          //** ECFEMICH
   xCampo := xCampo + wRepFecServi + ',';
          //** ECFPAGOP
   xCampo := xCampo + wRepFecServi + ',';
          //** FPAGOID
   xCampo := xCampo + quotedstr(xFPagoid) + ',';
          //** DOCID
   xCampo := xCampo + quotedstr(xDocid) + ',';
          //** ECNODOC
   xCampo := xCampo + quotedStr(dbeNumOpe.Text) + ', ';
   xNodoc := dbeNumOpe.Text;
          //** TMONID
   xCampo := xCampo + quotedStr(xTmonid) + ', ';
          //** ECTCAMB
   xFecha := DateToStr(xFechasys);
   RecUltTipoCambio(xFecha);
   xECTCAMB := dm1.cdsQry.FieldByName(wTCCompra).AsFloat;
   xCampo := xCampo + FLoatToStr(xECTCAMB) + ', ';

          //** ECMTOORI
   xCampo := xCampo + dbeMonto.Text + ', ';
   cPgoOri := StrToFloat(dbeMonto.Text);
          //** ECMTOLOC
   xCampo := xCampo + dbeMonto.Text + ',';
   cPgoLoc := StrToFloat(dbeMonto.Text);
          //** ECMTOEXT

   If xECTCAMB > 0 Then
   Begin
      xCampo  := xCampo + FloattoStr(DM1.FRound(StrToFloat(dbeMonto.Text) / xECTCAMB, 15, 4)) + ',';
      cPgoExt := DM1.FRound(StrToFloat(dbeMonto.Text) / xECTCAMB, 15, 4);
   End
   Else
   Begin
      xCampo := xCampo + 'null,';
      cPgoExt := 0;
   End;
          //** BANCOID
   xCampo := xCampo + quotedStr(trim(dblcBanco.Text)) + ', ';
          //** CCBCOID
   xCampo := xCampo + quotedStr('') + ', ';
          //** CPTOID
   xCampo := xCampo + quotedStr(xCptoid) + ', ';
          //** CUENTAID
   xCampo := xCampo + quotedStr(xCuentaid) + ', ';
          //** ECGLOSA
   xCampo := xCampo + quotedStr('Egreso de Caja') + ', ';
          //** ECLOTE
   xCampo := xCampo + quotedStr('000') + ', ';
          //** ECELABO
   xCampo := xCampo + quotedStr('EFECTAPO') + ', ';
          //** ECESTADO
   xCampo := xCampo + quotedStr('A') + ', ';
          //** ECCONTA
   xCampo := xCampo + quotedStr('N') + ', ';
          //** ECUSER
   xCampo := xCampo + quotedStr(Dm1.wUsuario) + ', ';
          //** ECFREG
   xCampo := xCampo + wRepFecServi + ', ';
          //** ECHREG
   xCampo := xCampo + wRepTimeServi + ', ';

   xSql := 'SELECT * FROM TGE114 WHERE FECHA=' + quotedstr(DateToStr(xFechasys));
   dm1.cdsQry.close;
   dm1.cdsQry.datarequest(xSql);
   dm1.cdsQry.open;
          //** ECANO
   xCampo := xCampo + quotedStr(DM1.cdsQry.fieldByName('FECANO').AsString) + ', ';
          //** ECMM
   xCampo := xCampo + quotedStr(DM1.cdsQry.fieldByName('FECMES').AsString) + ', ';
          //** ECDD
   xCampo := xCampo + quotedStr(DM1.cdsQry.fieldByName('FECDIA').AsString) + ', ';
          //** ECSS
   xCampo := xCampo + quotedStr(DM1.cdsQry.fieldByName('FECSS').AsString) + ', ';
          //** ECSEM
   xCampo := xCampo + quotedStr(DM1.cdsQry.fieldByName('FECSEM').AsString) + ', ';
          //** ECTRI
   xCampo := xCampo + quotedStr(DM1.cdsQry.fieldByName('FECTRIM').AsString) + ', ';
          //** ECAASS
   xCampo := xCampo + quotedStr(DM1.cdsQry.fieldByName('FECAASS').AsString) + ', ';
          //** ECAASEM
   xCampo := xCampo + quotedStr(DM1.cdsQry.fieldByName('FECAASEM').AsString) + ', ';
          //** ECAATRI
   xCampo := xCampo + quotedStr(DM1.cdsQry.fieldByName('FECAATRI').AsString) + ', ';
          //** EC_IE
   xCampo := xCampo + quotedStr('I') + ', ';
          //** CAJARETIGV
   xCampo := xCampo + quotedStr('N') + ', ';
          //** AUXID
   xCampo := xCampo + quotedstr(DM1.cdsAsociados.FieldByName('ASOID').AsString) + ',';
          //** CCBCOVOUCH
   xCampo := xCampo + quotedstr(xVouch) + ',';
          //** EC_PROCE
   xCampo := xCampo + quotedstr('Y');
   xSql := 'INSERT INTO CAJA321 (' + xCaja302 + ') VALUES (' + xCampo + ')';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
          //** Actualiza Caja322
   ActuCaja301; // DEBE DECIR CAJA322

   xSql := 'INSERT INTO COB341 (ASOID,TRANSNOPE,TRANSFOPE) VALUES (''' +
      DM1.cdsAsociados.FieldByName('ASOID').AsString + ''',''' +
      dbeNumOpe.Text + ''',TO_DATE(''' + FormatDateTime('dd/mm/yyyy', dbdtpFechaOperacion.date) + ''',''DD/MM/YYYY''))';
   DM1.DCOM1.AppServer.EjecutaSQL(xsql);

   DM1.DCOM1.AppServer.EjecutaSQL('BEGIN COMMIT; END ;');
          //** Actualiza Saldo TGE401
          //ActualizaSaldosTGE401(cPgoOri,cPgoLoc,cPgoExt, '-');
          //** Actualiza Saldo CAJA310
          //SaldosCaja310;
          //** Actuliza la provision de los crditos por el rango (CRE314) = CNT301
         // ActuCre314;
End;

Procedure TFCaptaAportes.ActuCaja301;
Const
   xCaja301: String = 'CIAID,TDIARID,ECANOMM,ECNOCOMP,DOCID2,DOCMOD,CPTOID,TDIARID2,' +
   'CUENTAID,CLAUXID,PROV,PROVRUC,TMONID,DEMTOORI,CPNODOC,DEFCOMP,CPFEMIS,' +
      'CPFVCMTO,CPANOMM,DETCPAG,DEDH,DETCDOC,CPSERIE,DEMTOLOC,DEMTOEXT,' +
      'DEUSER,DEFREG,DEHREG,DEANO,DEMM,DEDD,DESS,DESEM,DETRI,DEAASS,' +
      'DEAASEM,DEAATRI,DEESTADO,DEGLOSA,ECGLOSA';
Var
   xCampo, aux, xWhere: String;
Begin
//   While not DM1.cdsReporte.eof do
//    begin
   xCampo := quotedstr(xCiaid) + ',';
   xCampo := xCampo + quotedstr(xTdiarid) + ',';
   xCampo := xCampo + quotedstr(xEcanomm) + ',';
   xCampo := xCampo + quotedstr(xMaxNumComp) + ',';
   xCampo := xCampo + quotedstr(xDocid) + ',';
   xCampo := xCampo + quotedstr(dm1.wModulo) + ',';
   xCampo := xCampo + quotedstr(xCptoid) + ',';
   xCampo := xCampo + quotedstr(xTdiarid) + ',';
   xCampo := xCampo + quotedstr(xCuentaid) + ',';

   xWhere := 'CIAID=' + quotedstr(xCiaid) + ' AND CUENTAID=' + quotedstr(xCuentaid);
   DM1.DisplayDescrip('prvSQL', 'TGE202', 'CUENTAID, CTA_CCOS, CTA_AUX', xWhere, 'CuentaId');

   If DM1.cdsQry.fieldbyName('CTA_AUX').asString = 'S' Then
   Begin
      xCampo := xCampo + quotedstr(xClauxid) + ',';
      xCampo := xCampo + quotedstr(DM1.cdsAsociados.FieldByName('ASOID').AsString) + ',';
      ;
      xCampo := xCampo + quotedstr(DM1.cdsAsociados.FieldByName('ASODNI').AsString) + ',';
   End
   Else
   Begin
      xCampo := xCampo + quotedstr('') + ',';
      xCampo := xCampo + quotedstr('') + ',';
      xCampo := xCampo + quotedstr(xAuxRuc) + ',';
   End;
   xCampo := xCampo + quotedstr(xTmonid) + ',';
   xCampo := xCampo + dbeMonto.text + ',';
   xCampo := xCampo + quotedstr(xNodoc) + ',';
   xCampo := xCampo + quotedstr(DateToStr(xFechaCom)) + ',';
   xCampo := xCampo + quotedstr(DateToStr(xFechaCom)) + ',';
   xCampo := xCampo + quotedstr(DateToStr(xFechaCom)) + ',';
   xCampo := xCampo + quotedstr(xEcanomm) + ',';
   xCampo := xCampo + FloatToStr(xECTCAMB) + ',';
   xCampo := xCampo + quotedstr('H') + ',';
   xCampo := xCampo + FloatToStr(xECTCAMB) + ',';
   xCampo := xCampo + quotedstr('000') + ',';
   xWhere := 'TMONID=' + quotedstr(xTmonid);
   aux := DM1.DisplayDescrip('prvSQL', 'TGE103', 'TMONDES', xWhere, 'TMONDES');

   If (length(aux) > 0) And (StrToFloat(dbeMonto.text) > 0) Then
   Begin
      If xTmonid = DM1.wTMonLoc Then
      Begin
         xCampo := xCampo + dbeMonto.text + ',';
         If xECTCAMB > 0 Then
            xCampo := xCampo + FloatToStr(StrToFloat(dbeMonto.text) / xECTCAMB) + ','
         Else
            xCampo := xCampo + '0,';
      End
      Else
      Begin
         If xECTCAMB > 0 Then
            xCampo := xCampo + FloatToStr(StrToFloat(dbeMonto.text) * xECTCAMB) + ','
         Else
            xCampo := xCampo + '0,';
         xCampo := xCampo + dbeMonto.text + ',';
      End;
   End
   Else
   Begin
      xCampo := xCampo + '0.00,';
      xCampo := xCampo + '0.00,';
   End;

      //** ECUSER
   xCampo := xCampo + quotedStr(Dm1.wUsuario) + ', ';
      //** ECFREG
   xCampo := xCampo + wRepFecServi + ', ';
      //** ECHREG
   xCampo := xCampo + wRepTimeServi + ', ';

   xSql := 'SELECT * FROM TGE114 WHERE FECHA=' + quotedstr(DateToStr(xFechasys));
   dm1.cdsQry.close;
   dm1.cdsQry.datarequest(xSql);
   dm1.cdsQry.open;
      //** DEANO
   xCampo := xCampo + quotedStr(DM1.cdsQry.fieldByName('FECANO').AsString) + ', ';
      //** DEMM
   xCampo := xCampo + quotedStr(DM1.cdsQry.fieldByName('FECMES').AsString) + ', ';
      //** DEDD
   xCampo := xCampo + quotedStr(DM1.cdsQry.fieldByName('FECDIA').AsString) + ', ';
      //** DESS
   xCampo := xCampo + quotedStr(DM1.cdsQry.fieldByName('FECSS').AsString) + ', ';
      //** DESEM
   xCampo := xCampo + quotedStr(DM1.cdsQry.fieldByName('FECSEM').AsString) + ', ';
      //** DETRI
   xCampo := xCampo + quotedStr(DM1.cdsQry.fieldByName('FECTRIM').AsString) + ', ';
      //** DEAASS
   xCampo := xCampo + quotedStr(DM1.cdsQry.fieldByName('FECAASS').AsString) + ', ';
      //** DEAASEM
   xCampo := xCampo + quotedStr(DM1.cdsQry.fieldByName('FECAASEM').AsString) + ', ';
      //** DEAATRI
   xCampo := xCampo + quotedStr(DM1.cdsQry.fieldByName('FECAATRI').AsString) + ', ';
       //** DEESTADO
   xCampo := xCampo + quotedStr('P') + ',';
      //** DEGLOSA
   xCampo := xCampo + quotedStr('Egreso de Caja') + ', ';
      //** ECGLOSA
   xCampo := xCampo + quotedStr('Egreso de Caja');
   xSql := 'INSERT INTO CAJA322 (' + xCaja301 + ') VALUES (' + xCampo + ')';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
//     DM1.cdsReporte.next;
//    end;
End;

Procedure TFCaptaAportes.RecUltTipoCambio(Var xFecha: String);
Var
   xSQL: String;
Begin
   xSQL := 'SELECT * FROM TGE107 ' +
           ' WHERE FECHA  = (SELECT MAX(FECHA) ' +
           '                   FROM TGE107 ' +
           '                  WHERE FECHA<=' + wRepFuncDate + quotedstr(copy(xFecha, 1, 10)) + ')) ' +
           '   AND TMONID = ''D''';
   DM1.cdsQry.close;
   DM1.cdsQry.dataRequest(xSQL);
   DM1.cdsQry.Open;
End;
Procedure TFCaptaAportes.AsignaAnoMes(Var sAno, sMes: String);
Var
   Year, Month, Day: Word;
Begin

   DecodeDate(dbdtpFechaOperacion.date, Year, Month, Day);
   sAno := dm1.StrZero(IntToStr(Year), 4);
   sMes := dm1.StrZero(IntToStr(Month), 2);

End;

Procedure TFCaptaAportes.bbtnImprimirClick(Sender: TObject);
Var
   x: String;
   sAporteDetalle, sMontoLetras: String;
   cds: TwwClientDataset;
   i, iContador: word;
   ifrac: extended;
   Function RetornaAporte(sAno, sMes: String): String;
   Begin
      If smes = '01' Then
      Begin
         result := 'Ene/' + sAno;
         Exit;
      End;
      If smes = '02' Then
      Begin
         result := 'Feb/' + sAno;
         Exit;
      End;
      If smes = '03' Then
      Begin
         result := 'Mar/' + sAno;
         Exit;
      End;
      If smes = '04' Then
      Begin
         result := 'Abr/' + sAno;
         Exit;
      End;
      If smes = '05' Then
      Begin
         result := 'May/' + sAno;
         Exit;
      End;
      If smes = '06' Then
      Begin
         result := 'Jun/' + sAno;
         Exit;
      End;
      If smes = '07' Then
      Begin
         result := 'Jul/' + sAno;
         Exit;
      End;
      If smes = '08' Then
      Begin
         result := 'Ago/' + sAno;
         Exit;
      End;
      If smes = '09' Then
      Begin
         result := 'Set/' + sAno;
         Exit;
      End;
      If smes = '10' Then
      Begin
         result := 'Oct/' + sAno;
         Exit;
      End;
      If smes = '11' Then
      Begin
         result := 'Nov/' + sAno;
         Exit;
      End;
      If smes = '12' Then
      Begin
         result := 'Dic/' + sAno;
         Exit;
      End;

   End;
Begin
   iContador := 0;
//sAporteDetalle
   cds := TwwClientDataSet.Create(self);
   cds.CloneCursor(twwClientDataset(dbgdetaportes.datasource.dataset), False);
   For i := 1 To cds.recordcount Do
   Begin
      Inc(iContador);
      cds.recno := i;
      sAporteDetalle := sAporteDetalle
         + RetornaAporte(cds.FieldByName('TRANSANO').AsString, cds.FieldByName('TRANSMES').AsString)
         + ' = ' + formatfloat('###.00', cds.FieldByName('TRANSMTO').ASCurrency)
         + '     ';
      If icontador = 3 Then
      Begin
         icontador := 0;
         sAporteDetalle := sAporteDetalle + #13;
      End;
   End;
   cds.Free;
//sMontoLetras
   ifrac := frac(StrToCurr(dbeMonto.text)) * 100;

   sMontoLetras := NumLetra(TRUNC(StrToCurr(dbeMonto.text)), 1, 1) + ' Y '
                               + formatfloat('00', ifrac) + '/100' + ' ' + 'Nuevos Soles';

   pplblNumero.Caption   := 'N ' + dbeNumOpe.Text;
   pplblNumero01.Caption := 'N ' + dbeNumOpe.Text;

   pplblMonto2.Caption   := 'S/. ' + dbgDetAportes.ColumnByName('TRANSMTO').FooterValue;
   pplblMonto201.Caption := 'S/. ' + dbgDetAportes.ColumnByName('TRANSMTO').FooterValue;

   pplblAsociado.Caption := dm1.cdsAsociados.FieldByName('ASOAPENOM').AsString + '/'
                          + '(Cod.Mod.: ' + dm1.cdsAsociados.FieldByName('ASOCODMOD').AsString + ' ' + ')';
   pplblAsociado01.Caption := dm1.cdsAsociados.FieldByName('ASOAPENOM').AsString + '/'
                          + '(Cod.Mod.: ' + dm1.cdsAsociados.FieldByName('ASOCODMOD').AsString + ' ' + ')';

   pplblMontoLetras.Caption   := sMontoLetras;
   pplblMontoLetras01.Caption := sMontoLetras;

   pplblDetalle.Lines.Text   := sAporteDetalle;
   pplbldetalle01.Lines.Text := sAporteDetalle;

   pplblFecha.Caption   := 'JESUS MARIA - ' + FormatDateTime('dddddd', xFechaSys);
   pplblFecha01.Caption := 'JESUS MARIA - ' + FormatDateTime('dddddd', xFechaSys);

   ppReport1.Print;

End;
//////////////////
//** 04/03/2003 - PJSV (Q3)
(**************************************)
(* Conversin N mero -> Letra         *)
(*                                    *)
(* Parmetros:                        *)
(*                                    *)
(*   mNum:    N mero a convertir      *)
(*   iIdioma: Idioma de conversin    *)
(*            1 -> Castellano         *)
(*            2 -> Catal n            *)
(*   iModo:   Modo de conversin      *)
(*            1 -> Masculino          *)
(*            2 -> Femenino           *)
(*                                    *)
(* Restricciones:                     *)
(*                                    *)
(* - Redondeo a dos decimales         *)
(* - Rango: 0,00 a 999.999.999.999,99 *)
(*                                    *)
(**************************************)

Function TFCaptaAportes.NumLetra(Const mNum: Currency; Const iIdioma, iModo: Smallint): String;
Const
   iTopFil: Smallint = 6;
   iTopCol: Smallint = 10;
   aCastellano: Array[0..5, 0..9] Of PChar =
   (('UNA ', 'DOS ', 'TRES ', 'CUATRO ', 'CINCO ',
      'SEIS ', 'SIETE ', 'OCHO ', 'NUEVE ', 'UN '),
      ('ONCE ', 'DOCE ', 'TRECE ', 'CATORCE ', 'QUINCE ',
      'DIECISEIS ', 'DIECISIETE ', 'DIECIOCHO ', 'DIECINUEVE ', ''),
      ('DIEZ ', 'VEINTE ', 'TREINTA ', 'CUARENTA ', 'CINCUENTA ',
      'SESENTA ', 'SETENTA ', 'OCHENTA ', 'NOVENTA ', 'VEINTI'),
      ('CIEN ', 'DOSCIENTAS ', 'TRESCIENTAS ', 'CUATROCIENTAS ', 'QUINIENTAS ',
      'SEISCIENTAS ', 'SETECIENTAS ', 'OCHOCIENTAS ', 'NOVECIENTAS ', 'CIENTO '),
      ('CIEN ', 'DOSCIENTOS ', 'TRESCIENTOS ', 'CUATROCIENTOS ', 'QUINIENTOS ',
      'SEISCIENTOS ', 'SETECIENTOS ', 'OCHOCIENTOS ', 'NOVECIENTOS ', 'CIENTO '),
      ('MIL ', 'MILLON ', 'MILLONES ', 'CERO ', 'Y ',
      'UNO ', 'DOS ', 'CON ', '', ''));
   aCatalan: Array[0..5, 0..9] Of PChar =
   (('UNA ', 'DUES ', 'TRES ', 'QUATRE ', 'CINC ',
      'SIS ', 'SET ', 'VUIT ', 'NOU ', 'UN '),
      ('ONZE ', 'DOTZE ', 'TRETZE ', 'CATORZE ', 'QUINZE ',
      'SETZE ', 'DISSET ', 'DIVUIT ', 'DINOU ', ''),
      ('DEU ', 'VINT ', 'TRENTA ', 'QUARANTA ', 'CINQUANTA ',
      'SEIXANTA ', 'SETANTA ', 'VUITANTA ', 'NORANTA ', 'VINT-I-'),
      ('CENT ', 'DOS-CENTES ', 'TRES-CENTES ', 'QUATRE-CENTES ', 'CINC-CENTES ',
      'SIS-CENTES ', 'SET-CENTES ', 'VUIT-CENTES ', 'NOU-CENTES ', 'CENT '),
      ('CENT ', 'DOS-CENTS ', 'TRES-CENTS ', 'QUATRE-CENTS ', 'CINC-CENTS ',
      'SIS-CENTS ', 'SET-CENTS ', 'VUIT-CENTS ', 'NOU-CENTS ', 'CENT '),
      ('MIL ', 'MILIO ', 'MILIONS ', 'ZERO ', '-',
      'UN ', 'DOS ', 'AMB ', '', ''));
Var
   aTexto: Array[0..5, 0..9] Of PChar;
   cTexto, cNumero: String;
   iCentimos, iPos: Smallint;
   bHayCentimos, bHaySigni: Boolean;

  (*************************************)
  (* Cargar Textos seg n Idioma / Modo *)
  (*************************************)

   Procedure NumLetra_CarTxt;
   Var
      i, j: Smallint;
   Begin
  (* Asignacin seg n Idioma *)

      For i := 0 To iTopFil - 1 Do
         For j := 0 To iTopCol - 1 Do
            Case iIdioma Of
               1: aTexto[i, j] := aCastellano[i, j];
               2: aTexto[i, j] := aCatalan[i, j];
            Else
               aTexto[i, j] := aCastellano[i, j];
            End;

    (* Asignacin si Modo Masculino *)

      If (iModo = 1) Then
      Begin
         For j := 0 To 1 Do
            aTexto[0, j] := aTexto[5, j + 5];

         For j := 0 To 9 Do
            aTexto[3, j] := aTexto[4, j];
      End;
   End;

  (****************************)
  (* Traducir D gito -Unidad- *)
  (****************************)

   Procedure NumLetra_Unidad;
   Begin
      If Not ((cNumero[iPos] = '0') Or (cNumero[iPos - 1] = '1')
         Or ((Copy(cNumero, iPos - 2, 3) = '001') And ((iPos = 3) Or (iPos = 9)))) Then
         If (cNumero[iPos] = '1') And (iPos <= 6) Then
            cTexto := cTexto + aTexto[0, 9]
         Else
            cTexto := cTexto + aTexto[0, StrToInt(cNumero[iPos]) - 1];

      If ((iPos = 3) Or (iPos = 9)) And (Copy(cNumero, iPos - 2, 3) <> '000') Then
         cTexto := cTexto + aTexto[5, 0];

      If (iPos = 6) Then
         If (Copy(cNumero, 1, 6) = '000001') Then
            cTexto := cTexto + aTexto[5, 1]
         Else
            cTexto := cTexto + aTexto[5, 2];
   End;

  (****************************)
  (* Traducir Dgito -Decena- *)
  (****************************)

   Procedure NumLetra_Decena;
   Begin
      If (cNumero[iPos] = '0') Then
         Exit
      Else
         If (cNumero[iPos + 1] = '0') Then
            cTexto := cTexto + aTexto[2, StrToInt(cNumero[iPos]) - 1]
         Else
            If (cNumero[iPos] = '1') Then
               cTexto := cTexto + aTexto[1, StrToInt(cNumero[iPos + 1]) - 1]
            Else
               If (cNumero[iPos] = '2') Then
                  cTexto := cTexto + aTexto[2, 9]
               Else
                  cTexto := cTexto + aTexto[2, StrToInt(cNumero[iPos]) - 1]
                     + aTexto[5, 4];
   End;

  (*****************************)
  (* Traducir D gito -Centena- *)
  (*****************************)

   Procedure NumLetra_Centena;
   Var
      iPos2: Smallint;
   Begin
      If (cNumero[iPos] = '0') Then
         Exit;

      iPos2 := 4 - Ord(iPos > 6);

      If (cNumero[iPos] = '1') And (Copy(cNumero, iPos + 1, 2) <> '00') Then
         cTexto := cTexto + aTexto[iPos2, 9]
      Else
         cTexto := cTexto + aTexto[iPos2, StrToInt(cNumero[iPos]) - 1];
   End;

  (**************************************)
  (* Eliminar Blancos previos a guiones *)
  (**************************************)

   Procedure NumLetra_BorBla;
   Var
      i: Smallint;
   Begin
      i := Pos(' -', cTexto);

      While (i > 0) Do
      Begin
         Delete(cTexto, i, 1);
         i := Pos(' -', cTexto);
      End;
   End;

Begin
  (* Control de Argumentos *)

   If (mNum < 0.00) Or (mNum > 999999999999.99) Or (iIdioma < 1) Or (iIdioma > 2)
      Or (iModo < 1) Or (iModo > 2) Then
   Begin
      Result := 'ERROR EN ARGUMENTOS';
      Abort;
   End;

  (* Cargar Textos segn Idioma / Modo *)

   NumLetra_CarTxt;

  (* Bucle Exterior -Tratamiento C ntimos-     *)
  (* NOTA: Se redondea a dos dgitos decimales *)

   cNumero := Trim(Format('%12.0f', [Int(mNum)]));
   cNumero := StringOfChar('0', 12 - Length(cNumero)) + cNumero;
   iCentimos := Trunc((Frac(mNum) * 100) + 0.5);

   Repeat
    (* Detectar existencia de C ntimos *)

      If (iCentimos <> 0) Then
         bHayCentimos := True
      Else
         bHayCentimos := False;

    (* Bucle Interior -Traduccin- *)

      bHaySigni := False;

      For iPos := 1 To 12 Do
      Begin
      (* Control existencia D gito significativo *)

         If Not (bHaySigni) And (cNumero[iPos] = '0') Then
            Continue
         Else
            bHaySigni := True;

      (* Detectar Tipo de Dgito *)

         Case ((iPos - 1) Mod 3) Of
            0: NumLetra_Centena;
            1: NumLetra_Decena;
            2: NumLetra_Unidad;
         End;
      End;

    (* Detectar caso 0 *)

      If (cTexto = '') Then
         cTexto := aTexto[5, 3];

    (* Traducir C ntimos -si procede- *)

      If (iCentimos <> 0) Then
      Begin
         cTexto := cTexto + aTexto[5, 7];
         cNumero := Trim(Format('%.12d', [iCentimos]));
         iCentimos := 0;
      End;
   Until Not (bHayCentimos);

  (* Eliminar Blancos innecesarios -slo Catal n- *)

   If (iIdioma = 2) Then
      NumLetra_BorBla;

  (* Retornar Resultado *)

   Result := Trim(cTexto);
End;

Procedure TFCaptaAportes.ppReport1PreviewFormCreate(Sender: TObject);
Begin
   ppReport1.PreviewForm.WindowState := wsMaximized;
   TppViewer(ppReport1.PreviewForm.Viewer).ZoomSetting := zs100Percent;

End;

Procedure TFCaptaAportes.bbtnAceptarPeriodoInicialClick(Sender: TObject);
Var
   Present: TDateTime;
   nYear, nMonth, nDay: word;
   bmk: TBookmark;
   currUltimoAporte: Currency;

Begin
  //Quitar Eventos
   ValidaPeriodoInicial;

   currUltimoAporte := cdsAporte.fieldbyName('APOVALOR').AsCurrency;

   strAnoIni := SpeAnnos.Text;
   strMesIni := dm1.strzero(SpEmeses.Text, 2);
   If strMesIni = '01' Then
   Begin
      strAnoIni := dm1.strzero(inttostr(strtoint(strAnoIni) - 1), 4);
      strMesIni := '12'
   End
   Else
      strMesIni := dm1.strzero(inttostr(strtoint(strMesIni) - 1), 2);

   QuitaEventosCampos;
   nYear := strtoint(strAnoIni);
   nMonth := strtoint(strMesIni);

   If nMonth = 12 Then
   Begin
      nMonth := 1;
      inc(nYear);
   End
   Else
      inc(nMonth);

   cdsQry2.Append;

   cdsQry2.FieldByName('TRANSANO').AsString := dm1.StrZero(inttostr(nYear), 4);
   cdsQry2.FieldByName('TRANSMES').AsString := dm1.StrZero(inttostr(nMonth), 2);
   cdsQry2.fieldByName('CB_OK').AsString := '1';
   If cdsAporte.locate('APOANO;APOMES',
      VarArrayOf([cdsQry2.FieldByName('TRANSANO').AsString,
      cdsQry2.FieldByName('TRANSMES').AsString]), []) Then
   Begin
      cdsQry2.FieldByName('TRANSMTOORI').AsCurrency := cdsAporte.fieldbyname('APOVALOR').AsCurrency;
      cdsQry2.FieldByName('TRANSMTO').AsCurrency := cdsAporte.fieldbyname('APOVALOR').AsCurrency;
   End
   Else
   Begin
      cdsQry2.FieldByName('TRANSMTOORI').ASCurrency := currUltimoAporte;
      cdsQry2.FieldByName('TRANSMTO').ASCurrency := currUltimoAporte;
   End;

   cdsqry2.next;
   PonEventosCampos;
   dbemonto.TEXT := FloatToStrF(DM1.OperClientDataSet(cdsQry2, 'SUM(TRANSMTO)', ''), ffNumber, 10, 2);
   dbgdetAportes.ColumnByName('TRANSMTO').FooterValue := dbemonto.Text;
   dbgdetAportes.ColumnByName('TRANSMTOORI').FooterValue :=
               FloatToStrF(DM1.OperClientDataSet(cdsQry2, 'SUM(TRANSMTOORI)', ''), ffNumber, 10, 2);

   bbtnSalirPeriodoInicial.OnClick(bbtnSalirPeriodoInicial);
   strAnoIni := dm1.strzero(SpeAnnos.Text, 4);
   strMesIni := dm1.strzero(SpEmeses.Text, 2);
End;

Procedure TFCaptaAportes.bbtnSalirPeriodoInicialClick(Sender: TObject);
Begin
  //
   pnlAportes.Enabled        := TRue;
   pnlPeriodoInicial.Visible := False;
End;

Procedure TFCaptaAportes.SpeAnnosKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key In ['.', '-'] Then
      key := #0;
End;

Procedure TFCaptaAportes.fcShapeBtn5Click(Sender: TObject);
Begin
   bbtnSalirPeriodoInicial.OnClick(bbtnSalirPeriodoInicial);
End;

Procedure TFCaptaAportes.ValidaPeriodoInicial;
Begin
   If trim(SpeAnnos.Text) = '' Then
   Begin
      SpeAnnos.SetFocus;
      Raise exception.CReate('Ingrese Ao');
   End;
   If trim(SpEmeses.Text) = '' Then
   Begin
      SpEmeses.SetFocus;
      Raise exception.CReate('Ingrese Mes');
   End;

End;

Procedure TFCaptaAportes.dbgDetAportesDrawDataCell(Sender: TObject;
   Const Rect: TRect; Field: TField; State: TGridDrawState);
Begin
   If Field.DisplayName = 'Devuelto' Then
   Begin
      dbgDetAportes.Canvas.Font.Color := clred;
      dbgDetAportes.DefaultDrawDataCell(Rect, Field, State);
   End;
End;

Procedure TFCaptaAportes.dbgDetAportesDblClick(Sender: TObject);

Begin
   If XVERDEV = 'S' Then
   Begin
      If cdsQry2.FieldByName('TRANSMTODEV').AsCurrency > 0 Then
      Begin
         Panel3.Enabled := False;
         bbtnCierraImp.Enabled := False;

         Begin
            xSQL := 'SELECT d.reclmotid,d.reclmotdes,b.hreg,b.devid,b.devmotid,b.apoano, '
                   +'       b.apomes,b.apomonto,b.asoid,b.devmto, '
                   +'       case when b.tipodev=''0'' then ''APORTE'' else ''RECLAMO'' end tipodev '
                   +'  FROM apo305 b ,apo114 d '
                   +' WHERE B.ASOID    =''' + DM1.cdsTransacciones.FieldByname('ASOID').AsString + ''''
                   +'   AND B.APOANO   =''' + DM1.cdsTransacciones.FieldByname('TRANSANO').AsString + ''''
                   +'   AND B.APOMES   =''' + DM1.cdsTransacciones.FieldByname('TRANSMES').AsString + ''''
                   +'   AND B.DEVMOTID = D.RECLMOTID';
            DM1.cdsQry4.Close;
            DM1.cdsQry4.DataRequest(xSQL);
            DM1.cdsQry4.Open;
            lblinfodev1.Caption := 'Tipo de devoluci n: ' + dm1.cdsQry4.fieldbyname('tipodev').AsString;
            lblinfodev2.Caption := 'Motivo: ' + dm1.cdsQry4.fieldbyname('reclmotdes').AsString;
            lblinfodev3.Caption := 'Fecha: ' + dm1.cdsQry4.fieldbyname('HREG').AsString;
            pnlInforme.Visible  := True;
         End;
      End;
   End;

End;

Procedure TFCaptaAportes.fcShapeBtn1Click(Sender: TObject);
Begin
   Panel3.Enabled        := True;
   bbtnCierraImp.Enabled := True;

   lblinfodev1.Caption   := '';
   lblinfodev2.Caption   := '';
   pnlinforme.Visible    := False
End;

Procedure TFCaptaAportes.bbtnObsAnulaClick(Sender: TObject);
Var
   PAR1, PAR2, PAR3, PAR4, PAR5: String;
Begin
   xBorrar := '1';

   PAR1 := DM1.cdsTransacciones.FieldByname('ASOID').AsString;
   PAR2 := DM1.cdsTransacciones.FieldByname('APOSEC').AsString;
   PAR3 := DM1.cdsTransacciones.FieldByname('FREG').AsString;
   PAR4 := DM1.cdsTransacciones.FieldByname('FORPAGOABR').AsString;
   PAR5 := DM1.cdsTransacciones.FieldByname('APO301ID').AsString;

   sSQL :=
      ' INSERT INTO APO313 '
      + ' ( ASOID,TRANSID,USEID,USEABR,UPAGOID,UPAGOABR,UPROID,UPROABR,TMONID,BANCOID,CCBCOID, '
      + '  TRANSNOPE,TRANSFOPE,TRANSFFCIND,TRANSANO,TRANSMES,TRANSMTO,TRANSMTODEV,SALDOANT, '
      + '  INTERESMTO,SALDO,SALDOBONUS,BONUSMTO,INTERESPORC,BONUSPORC,TRANSINTID,USUARIO, '
      + '  APOFRECL,ASOCODMOD,ASOCODAUX,FORPAGOID,ASOAPENOM,TRANSPRV,APOFNP,FECCTAIND,APOFDEV, '
      + '  DEVANO,DEVMES,FORPAGOABR,DPTOID,DPTOABR,CIUDID,FREG,HREG,TRANSAAMM,TRANSAATRI, '
      + '  TRANSTRIM,TRANSSEM,TRANSAASEM,APOFCNT,APOSEC,CIAID,TIPDESEID,TIPDESEABR,BCOGIRO,DPTOGIRO, '
      + '  AGENBANCOID,NRONABO,NROFICIO,DETRCOBID,USERCOBID,RCOBID,BANCOIDG,AGENCIDG,FILLER,FCIERRE, '
      + '  CNTCONTA,DOCID,PVSLBENNR,FLGNIV,APOSECID,APO301ID,FLGRECIBO,CNTANOMM,CNTFLAG,FECANULA, '
      + '  CNTANOMMN,USUANULA,OBSANULA ) '
      + ' SELECT '
      + ' ASOID,TRANSID,USEID,USEABR,UPAGOID,UPAGOABR,UPROID,UPROABR,TMONID,BANCOID,CCBCOID, '
      + ' TRANSNOPE,TRANSFOPE,TRANSFFCIND,TRANSANO,TRANSMES,TRANSMTO,TRANSMTODEV,SALDOANT, '
      + ' INTERESMTO,SALDO,SALDOBONUS,BONUSMTO,INTERESPORC,BONUSPORC,TRANSINTID,USUARIO, '
      + ' APOFRECL,ASOCODMOD,ASOCODAUX,FORPAGOID,ASOAPENOM,TRANSPRV,APOFNP,FECCTAIND,APOFDEV, '
      + ' DEVANO,DEVMES,FORPAGOABR,DPTOID,DPTOABR,CIUDID,FREG,HREG,TRANSAAMM,TRANSAATRI, '
      + ' TRANSTRIM,TRANSSEM,TRANSAASEM,APOFCNT,APOSEC,CIAID,TIPDESEID,TIPDESEABR,BCOGIRO,DPTOGIRO, '
      + ' AGENBANCOID,NRONABO,NROFICIO,DETRCOBID,USERCOBID,RCOBID,BANCOIDG,AGENCIDG,FILLER,FCIERRE, '
      + ' CNTCONTA,DOCID,PVSLBENNR,FLGNIV,APOSECID,APO301ID,FLGRECIBO,CNTANOMM,CNTFLAG, '
      + ' TO_CHAR(SYSDATE,''dd/mm/yyyy''), '
      + ' TO_CHAR(SYSDATE,''yyyymm''),''' + DM1.wUsuario + ''','''
      + ' Efectuado a las:' + FormatDateTime('HH:mm:ss', time) + '/ ' + TRIM(edtObsAnula.Text) + ''''
      + ' FROM APO301 '
      + ' WHERE ASOID = ''' + dbgAportes.DataSource.DataSet.fieldByName('ASOID').AsString + ''' '
      + '   AND APO301ID = ''' + dbgAportes.DataSource.DataSet.fieldByName('APO301ID').AsString + ''' ';

         //Inserta en archivo APO313 ACHIVO DE ANULADOS
   DM1.DCOM1.AppServer.EjecutaSQL(sSQL);

         //Elimina fisicamente el registro
   XSQL := ' DELETE APO301 '
         + '  WHERE ASOID      =''' + PAR1 + ''''
         + '    AND APOSEC     =''' + PAR2 + ''''
         + '    AND FREG       =''' + PAR3 + ''''
         + '    AND APO301ID   =''' + PAR5 + ''''
         + '    AND FORPAGOABR =''' + PAR4 + '''';
   DM1.cdsCEdu.DataRequest(XSQL);
   DM1.cdsCEdu.Execute;

        //Actualiza footer y dbgred
   DM1.cdsTransacciones.Delete;
   dbgAportes.ColumnByName('TRANSMTO').FooterValue :=
            FloatToStrF(DM1.OperClientDataSet(DM1.cdsTransacciones, 'SUM(TRANSMTO)', ''), ffNumber, 10, 2);
   dbgAportes.ColumnByName('TRANSMTODEV').FooterValue :=
            FloatToStrF(DM1.OperClientDataSet(DM1.cdsTransacciones, 'SUM(TRANSMTODEV)', ''), ffNumber, 10, 2);
   dbgAportes.ColumnByName('DIFER').FooterValue :=
            FloatToStrF(DM1.OperClientDataSet(DM1.cdsTransacciones, 'SUM(DIFER)', ''), ffNumber, 10, 2);

       // DM1.AplicaDatos(DM1.cdsTransacciones, 'TRANSACCIONES') YA NO SE UTILIZA;

   xBorrar          := '0';
   edtObsAnula.Text := '';
   ShowMessage('Registro Anulado');

   pnlCabecera.Enabled := True;
   pnlObsAnula.Visible := False;
End;

Procedure TFCaptaAportes.btnImpAnuladosClick(Sender: TObject);
Var
   xsql: String;
Begin
   ppLApenom.Caption := dm1.cdsTransacciones.FieldByName('ASOAPENOM').AsString;
   ppLCodMod.Caption := dm1.cdsTransacciones.FieldByName('ASOCODMOD').AsString;
   ppLUpro.Caption   := dm1.cdsTransacciones.FieldByName('UPROABR').AsString;
   ppLUse.Caption    := dm1.cdsTransacciones.FieldByName('USEABR').AsString;
   ppLUPago.Caption  := dm1.cdsTransacciones.FieldByName('UPAGOABR').AsString;

   xsql := 'select APOSEC,ASOID,USEID,USEABR,UPAGOID,UPAGOABR,UPROID,UPROABR,TRANSNOPE,TRANSFOPE, '
          +'       SUBSTR(transano,1,4) TRANSANO, SUBSTR(transmes,1,2) TRANSMES, '
          +'       TRANSMTO,TRANSMTODEV,USUARIO,ASOCODMOD,ASOCODAUX,ASOAPENOM,FORPAGOABR,CNTANOMM, '
          +'       USUANULA,FECANULA,OBSANULA '
          +'From APO313 '
          +'where ASOID='+quotedstr(dm1.cdsTransacciones.FieldByName('ASOID').AsString)
          +' order by APOSEC';
   dm1.cdsQry3.Close;
   dm1.cdsQry3.DataRequest(xsql);
   dm1.cdsQry3.Open;

   If dm1.cdsQry3.RecordCount=0 Then
     Begin
       ShowMessage('No existe informaciòn para mostrar');
       Exit;
     End;

   ppDBAnulados.DataSource := dm1.dsQry3;
   ppRAnulados.Print;

End;

Procedure TFCaptaAportes.BtnDivideClick(Sender: TObject);
Var
   XSQL, TANO, TMES: String;
   vApovalor, vAportePeriodo, vDivide: currency;
Begin

   If Application.MessageBox(' Esta seguro(a) de dividir el importe',
      'Aportes',
      MB_YESNO + MB_DEFBUTTON1) <> IDYES Then Exit;

   //Aporte del Periodo
   vAportePeriodo := DM1.cdsTransacciones.FieldByName('TRANSMTO').AsCurrency
                   - DM1.cdsTransacciones.FieldByName('TRANSMTODEV').AsCurrency;

   //Saca el Aporte Tecnico
   TANO := DM1.cdsTransacciones.FieldByname('TRANSANO').AsString;
   TMES := DM1.cdsTransacciones.FieldByname('TRANSMES').AsString;
   If cdsAporte.Locate('APOANO;APOMES', VarArrayOf([TANO, TMES]), []) Then
      vApovalor := cdsAporte.FieldByName('APOVALOR').AsCurrency
   Else
   Begin
      ShowMessage('No Existe Aporte Técnico para el Periodo:' + TANO + '-' + TMES);
      Exit;
   End;

   //Verifica que el Aporte de periodo - Aporte tecnico sea > 0
   If (vAportePeriodo - vApovalor <= 0) Then
   Begin
      ShowMessage('Imposible Dividir Aporte ');
      Exit;
   End;
   vDivide := vAportePeriodo - vApovalor;

   //Divide en dos registros
   XSQL := 'INSERT INTO APO301 ('
          +'     ASOID,TRANSID,USEID,USEABR,UPAGOID,UPAGOABR,UPROID,UPROABR,TMONID,BANCOID,CCBCOID,TRANSNOPE,'
          +'     TRANSFOPE,TRANSANO,TRANSMES,TRANSMTO,TRANSINTID,USUARIO,APOFRECL,ASOCODMOD,ASOCODAUX,FORPAGOID,'
          +'     ASOAPENOM,FORPAGOABR,DPTOID,DPTOABR,CIUDID,FREG,HREG,TRANSAAMM,TRANSAATRI,TRANSTRIM,TRANSSEM,'
          +'     TRANSAASEM,APOSEC,CIAID,TIPDESEID,TIPDESEABR,BCOGIRO,DPTOGIRO,AGENBANCOID,NRONABO,NROFICIO,'
          +'     DETRCOBID,USERCOBID,RCOBID,BANCOIDG,FCIERRE,CNTCONTA,DOCID,PVSLBENNR,FLGNIV,APOSECID,APO301ID,'
          +'     FLGRECIBO,CNTANOMM,TIPOCONT,CNTFLAG,PVSLFECBE) '
          +'VALUES('
             + QuotedStr(DM1.cdsTransacciones.FieldByname('ASOID').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('TRANSID').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('USEID').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('USEABR').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('UPAGOID').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('UPAGOABR').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('UPROID').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('UPROABR').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('TMONID').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('BANCOID').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('CCBCOID').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('TRANSNOPE').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('TRANSFOPE').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('TRANSANO').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('TRANSMES').AsString) + ','
             + CurrToStr(vDivide) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('TRANSINTID').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('USUARIO').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('APOFRECL').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('ASOCODMOD').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('ASOCODAUX').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('FORPAGOID').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('ASOAPENOM').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('FORPAGOABR').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('DPTOID').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('DPTOABR').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('CIUDID').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('FREG').AsString) + ','
             // HPP_200901_APO - Realizado por Ricardo Medina
             + 'TO_DATE(' + QuotedStr(copy(DM1.cdsTransacciones.FieldByname('HREG').AsString, 1, 19))
                      + ',''dd/mm/yyyy hh24:mi:ss'')' + ','
                      + QuotedStr(DM1.cdsTransacciones.FieldByname('TRANSAAMM').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('TRANSAATRI').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('TRANSTRIM').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('TRANSSEM').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('TRANSAASEM').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('APOSEC').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('CIAID').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('TIPDESEID').AsString) + ','
             + QuotedStr(DM1.cdsTransacciones.FieldByname('TIPDESEABR').AsString) + ','
      + QuotedStr(DM1.cdsTransacciones.FieldByname('BCOGIRO').AsString) + ','
      + QuotedStr(DM1.cdsTransacciones.FieldByname('DPTOGIRO').AsString) + ','
      + QuotedStr(DM1.cdsTransacciones.FieldByname('AGENBANCOID').AsString) + ','
      + QuotedStr(DM1.cdsTransacciones.FieldByname('NRONABO').AsString) + ','
      + QuotedStr(DM1.cdsTransacciones.FieldByname('NROFICIO').AsString) + ','
      + QuotedStr(DM1.cdsTransacciones.FieldByname('DETRCOBID').AsString) + ','
      + QuotedStr(DM1.cdsTransacciones.FieldByname('USERCOBID').AsString) + ','
      + QuotedStr(DM1.cdsTransacciones.FieldByname('RCOBID').AsString) + ','
      + QuotedStr(DM1.cdsTransacciones.FieldByname('BANCOIDG').AsString) + ','
      + QuotedStr(DM1.cdsTransacciones.FieldByname('FCIERRE').AsString) + ','
      + QuotedStr(DM1.cdsTransacciones.FieldByname('CNTCONTA').AsString) + ','
      + QuotedStr(DM1.cdsTransacciones.FieldByname('DOCID').AsString) + ','
      + QuotedStr(DM1.cdsTransacciones.FieldByname('PVSLBENNR').AsString) + ','
      + QuotedStr(DM1.cdsTransacciones.FieldByname('FLGNIV').AsString) + ','
      + QuotedStr(DM1.cdsTransacciones.FieldByname('APOSECID').AsString) + ',NULL,'
      + QuotedStr(DM1.cdsTransacciones.FieldByname('FLGRECIBO').AsString) + ','
      + QuotedStr(DM1.cdsTransacciones.FieldByname('CNTANOMM').AsString) + ','
      + QuotedStr(DM1.cdsTransacciones.FieldByname('TIPOCONT').AsString) + ','
      + QuotedStr(DM1.cdsTransacciones.FieldByname('CNTFLAG').AsString) + ','
      + QuotedStr(DM1.cdsTransacciones.FieldByname('PVSLFECBE').AsString) + ')';
   DM1.DCOM1.AppServer.EjecutaSQL(XSQL);

     //Actualiza el aporte divido
   xSQL := ' Update APO301 '
         + '    SET TRANSMTO =' + CurrToStr(vApovalor)
         + '  WHERE ASOID    ='+quotedstr(DM1.cdsTransacciones.FieldByname('ASOID').AsString)
         + '    AND TRANSANO ='+quotedstr(DM1.cdsTransacciones.FieldByname('TRANSANO').AsString)
         + '    AND TRANSMES ='+quotedstr(DM1.cdsTransacciones.FieldByname('TRANSMES').AsString)
         + '    AND APO301ID ='+quotedstr(DM1.cdsTransacciones.FieldByname('APO301ID').AsString)
         + '    AND TRANSMTO ='+DM1.cdsTransacciones.FieldByname('TRANSMTO').AsString;
   DM1.DCOM1.AppServer.EjecutaSQL(XSQL);

   //Actualiza APO301ID
   xSQL := 'BEGIN SP_ACT_APO301ID (''' + dblcdCodigo.text + '''); END;';
   DM1.DCOM1.AppServer.EjecutaSQL(XSQL);

   bbtnAceptaCabClick(Self);
   ShowMessage('Grabación Exitosa');

End;

Function TFCaptaAportes.nuevoperiodo(ultimoano, ultimomes: word): String;
Var
   XSQL: String;
   salir: boolean;
Begin
   Salir := True;

   While salir Do
   Begin

     //AVANZA
      If ultimomes = 12 Then
      Begin
         ultimomes := 1;
         inc(ultimoano);
      End
      Else
         inc(ultimomes);

    //VERIFICA SI EXISTE SU PAGO
      xsql := 'Select ASOID,TRANSANO,TRANSMES FROM APO301 A,APO117 B  ' +
         'WHERE ASOID=''' + dm1.cdstransacciones.FieldByName('ASOID').AsSTRING + ''' AND ' +
         ' A.TRANSANO=''' + dm1.StrZero(inttostr(ultimoano), 4) + ''' AND ' +
         ' A.TRANSMES=''' + dm1.StrZero(inttostr(ultimomes), 2) + ''' AND ' +
         ' B.APOANO=A.TRANSANO AND B.APOMES=A.TRANSMES AND ' +
         ' (NVL(A.TRANSMTO,0)-NVL(A.TRANSMTODEV,0))<=NVL(B.APOVALOR,0) ';

      DM1.cdsResol.close;
      DM1.cdsResol.DataRequest(xsql);
      DM1.cdsResol.Open;

      If DM1.cdsResol.RecordCount = 0 Then
      Begin
         salir := False;
         RESULT := dm1.StrZero(inttostr(ultimoano), 4) + dm1.StrZero(inttostr(ultimomes), 2);
      End
      Else
         RESULT := '';

      DM1.cdsResol.Close;
      DM1.cdsResol.IndexFieldNames := '';

   End;

End;

Procedure TFCaptaAportes.btndeInconsistenciasClick(Sender: TObject);
Var
   xsql: String;
Begin

   If Length(trim(dblcFormaPago.Text)) = 0 Then
   Begin
      ShowMessage('Debe Ingresar Forma de Pago');
      dblcFormaPago.SetFocus;
      exit;
   End;

   If Length(trim(dbeNumOpe.Text)) = 0 Then
   Begin
      ShowMessage('Debe Ingresar Numero de Operación');
      dbeNumOpe.SetFocus;
      exit;
   End;

   If Length(trim(dbdtpFechaOperacion.Text)) = 0 Then
   Begin
      ShowMessage('Debe Ingresar Fecha de Operación');
      dbdtpFechaOperacion.SetFocus;
      exit;
   End;

   xSql := 'SELECT ASOID,ASOAPENOM,IMPORTE,FOPERAC,NROOPE,RCOBID,DETRCOBID,TRANSANO,TRANSMES, '
          +'       CREFPAG,ASOCODMOD,UPROID,UPAGOID,USEID '
          +'FROM COB340 '
          +'WHERE ASOID   ='+ quotedstr(DM1.cdsAsociados.FieldByName('ASOID').AsString)
          +'  AND NROOPE  ='+quotedstr(trim(dbeNumOpe.Text))
          +'  AND FOPERAC ='+quotedstr(DateToStr(dbdtpFechaOperacion.Date));
   DM1.cdsCEdu.Close;
   DM1.cdsCEdu.IndexFieldNames := '';
   DM1.cdsCEdu.DataRequest(xSql);
   DM1.cdsCEdu.Open;
   TNumericField(DM1.cdsCEdu.fieldbyname('IMPORTE')).DisplayFormat := '###,###.#0';

   fIncPla := Nil;
   fIncPla := tfIncPla.Create(Self);
   fIncPla.EdtBuscar.Text := DM1.cdsAsociados.FieldByName('ASOAPENOM').AsString;
   fIncPla.EdtMaestro.Text := DM1.cdsAsociados.FieldByName('ASOID').AsString;
   fIncPla.Showmodal;
   fIncPla.Free;
End;

Procedure TFCaptaAportes.BitTransClick(Sender: TObject);
Var
   xSQL: String;
Begin
   Try
      fAporDupli := TfAporDupli.create(Self);
      fAporDupli.ShowModal;
   Finally
      fAporDupli.Free;
   End;
   // HPP_200901_APO - Realizado por Ricardo Medina
   bbtnAceptaCabClick(Self);
End;

End.

