unit APO301;


interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcButton, fcImgBtn, fcShapeBtn, wwdblook, Wwdbspin, wwdbdatetimepicker,
  StdCtrls, ComCtrls, wwriched, Mask, wwdbedit, ExtCtrls, Wwdbdlg, Buttons,
  Wwdbigrd, Grids, Wwdbgrid, Wwdotdot, Wwdbcomb, wwClient, db, DBClient,
  ppTypes, Wwdatsrc, ppPrnabl, ppClass, ppCtrls, ppBands, ppCache, ppComm, ppRelatv,
  variants, ppProd, ppReport, ppStrtch, ppMemo, Spin;

type
  TFCaptaAportes = class(TForm)
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
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    pplblFecha: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    pplblAsociado: TppLabel;
    pplblMontoLetras: TppLabel;
    ppLabel15: TppLabel;
    pplblMonto1: TppLabel;
    ppLabel16: TppLabel;
    pplblNumero: TppLabel;
    pplblMonto2: TppLabel;
    pplbldetalle: TppMemo;
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
    procedure Z2bbtnCancelClick(Sender: TObject);
    procedure dblcdCodigoExit(Sender: TObject);
    procedure dbgAportesDblClick(Sender: TObject);
    procedure bbtnIngresaAporteClick(Sender: TObject);
    procedure Z2bbtnAceptarClick(Sender: TObject);
    procedure dblcSituacionExit(Sender: TObject);
    procedure dblcTipoAsocExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure dblcdUSEExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbtnAceptaCabClick(Sender: TObject);
    procedure z2bbtnNuevoClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtTransaccionExit(Sender: TObject);
    procedure dblcTransaccionExit(Sender: TObject);
    procedure dblcdCodigoDropDown(Sender: TObject);
    procedure fcShapeBtn2Click(Sender: TObject);
    procedure dblcdUProExit(Sender: TObject);
    procedure dblcdUPagoExit(Sender: TObject);
    procedure dblcMonedaExit(Sender: TObject);
    procedure wwDBGrid1IButtonClick(Sender: TObject);
    procedure fcShapeBtn3Click(Sender: TObject);
    procedure dbeMontoExit(Sender: TObject);
    procedure dbeMontoKeyPress(Sender: TObject; var Key: Char);
    procedure spdAnoKeyPress(Sender: TObject; var Key: Char);
    procedure dbgAportesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure bbtnCierraImpClick(Sender: TObject);
    procedure dbgDetAportesKeyPress(Sender: TObject; var Key: Char);
    procedure dbgDetAportesCellChanged(Sender: TObject);
    procedure bbtnAceptarClick2(Sender: TObject);
    procedure dblcFormaPagoChange(Sender: TObject);
    procedure dblcBancoChange(Sender: TObject);
    procedure dblcAgenciaChange(Sender: TObject);
    procedure dblcCtaCteExit(Sender: TObject);
    procedure dblcFormaPagoExit(Sender: TObject);
    procedure dblcBancoExit(Sender: TObject);
    procedure dblcAgenciaExit(Sender: TObject);
    procedure dbeMontoEnter(Sender: TObject);
    procedure bbtnNuevoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure bbtnImprimirClick(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure bbtnAceptarPeriodoInicialClick(Sender: TObject);
    procedure bbtnSalirPeriodoInicialClick(Sender: TObject);
    procedure SpeAnnosKeyPress(Sender: TObject; var Key: Char);
    procedure fcShapeBtn5Click(Sender: TObject);
  private
    { Private declarations }
    //** VARIABLES PARA ACTUALIZAR CAJA
    xMntDs : Double;
    xItem,xDocid,xEcanomm,xTDiarid,xCcBcoid,xTmonid,xBancoid,xFpagoid,xAuxid  : String;
    xVouch,xAuxRuc,xMaxNumComp,xNodoc,xCuentaid,xCptoid,xClauxid,xCiaid : String;
    xFechaCom , xFechaSys: TDate;
    xECTCAMB,cPgoOri,cPgoLoc,cPgoExt : Double;
    xCorre: String ;
    wTCCompra : String ;
    //**

	  //procedure NuevoAporte;
    strPeriodoResolucion : String ;
    strPeriodoCese       : String ;
    dtFechaResolucion    : TDate  ;
    dtFechaCese          : TDate  ;
    strAno , strMes      : String ;
    strAnoIni , strMesIni      : String ;
    strAnoFin , strMesFin      : String ;
    currMontoOriginal          : Currency ;
    bF_Efectivo                : Boolean ;
    sCajaDefault               : String  ;
    sEfectivo                  : String  ;
//    bPeriodoInicial            : Boolean ;
    procedure RecuperaFechaNombramiento(xFechaNomb : TField ; xFechaCese : TField  );
    procedure InsertaAportesPendientes ;
    procedure InsertaHuecos(iAnoIni , iMesIni , iAnoFin , iMesFin : Integer) ;
    procedure cb_okChange(Sender: TField);
    procedure cb_ok2Change(Sender: TField);
    procedure cb_ok2Validate(Sender: TField);
    procedure transmtoValidate(Sender: TField);
    procedure transmtoChange(Sender: TField);
    procedure blanquea_parcial ;
    procedure blanquea_detalle ;
    procedure ConfiguraGridAdicion ;
    procedure ConfiguraGridEdicion ;
    procedure LimpiaCamposEdicion ;
    procedure ConfiguraAdicion ;
    procedure QuitaEventosCampos ;
    procedure PonEventosCampos ;
    procedure QuitaEventosCabecera ;
    procedure PonEventosCabecera ;

    procedure recalcula_Detalle ;
    function  QuitaComas(strNumero : String) :Currency ;
    procedure ValidaINgresoAportes ;
    function  Sumariza : Currency;
    function  RecuperaPeriodo(dtFecha:TDateTime):STring;
    procedure HabilitaPanelEdicion ;
    procedure DesHabilitaPanelEdicion ;
    procedure ValidarAdicionAportes ;
    function  RecuperaCorrelativo: String;
    procedure MostrarPendientes ;
    procedure QuitarPendientes;
    procedure ActuCaja301;
    procedure Actualiza;
    procedure RecUltTipoCambio(var xFecha: string);
    procedure AsignaAnoMes(var sAno , sMes : String ) ;
    function  NumLetra(const mNum: Currency; const iIdioma, iModo: Smallint): String;
    procedure ValidaPeriodoInicial;
  public
    { Public declarations }

  end;

var
  FCaptaAportes : TFCaptaAportes;
  xCrea, wActualizado : boolean;
  wModo1, xUse, xAsoId, xBanco, xTrans, xAsoApenom , xASOCODMOD , xASOCODAUX: string;
  xSaldoAnt, xSaldoTrimAnt : real;
  xWhere, sSQL, xSQL , xCptoid : string;

implementation

uses APODM, APO001, MsgDlgs,ppViewr;

{$R *.DFM}

procedure TFCaptaAportes.Z2bbtnCancelClick(Sender: TObject);
begin
   Close;
end;

procedure TFCaptaAportes.dblcdCodigoExit(Sender: TObject);
begin
   xWhere := 'ASOID = '+ QuotedStr(dblcdCodigo.Text) ;
   dbeCodigoModular.Text := DM1.DisplayDescrip('prvTGE', 'APO201', 'ASOCODMOD, ASOCODAUX,ASOCODPAGO, ASOAPEPAT, ASOAPEMAT, ASONOMBRES, ASOSITID, ASOTIPID, ASOAPENOM , ASOFRESNOM , ASOFRESCESE', xWhere, 'ASOCODMOD');
   dbeCodigoPago.Text    := DM1.cdsQry.FieldByName('ASOCODPAGO').AsString;
   dbeApePat.Text        := DM1.cdsQry.FieldByName('ASOAPEPAT').AsString;
   dbeApeMat.Text        := DM1.cdsQry.FieldByName('ASOAPEMAT').AsString;
   dbeNombres.Text       := DM1.cdsQry.FieldByName('ASONOMBRES').AsString;
   dblcSituacion.Text    := DM1.cdsQry.FieldByName('ASOSITID').AsString;
   dblcTipoAsoc.Text     := DM1.cdsQry.FieldByName('ASOTIPID').AsString;;
   xAsoApenom            := DM1.cdsQry.FieldByName('ASOAPENOM').AsString;
   xASOCODMOD            := DM1.cdsQry.FieldByName('ASOCODMOD').AsString;
   xASOCODAUX            := DM1.cdsQry.FieldByName('ASOCODAUX').AsString;
   //Recuperación de la Fecha de Resolución :
   RecuperaFechaNombramiento(DM1.cdsQry.FieldByName('ASOFRESNOM'),
                             DM1.cdsQry.FieldByName('ASOFRESCESE'));

   dblcSituacionExit(Sender);
   dblcTipoAsocExit(Sender);
   If xCrea Then Exit;
   If Z2bbtnCancel.Focused  or dblcdUse.Focused Then Exit;
	{If (dblcdCodigo.Text='') Then
  begin
     dblcdCodigo.Setfocus;
     Raise Exception.create('Ingrese el Código del Asociado');
  end;}
   If (dbeCodigoModular.Text='') and (dbeCodigoPago.Text='') Then
    begin
     dblcdCodigo.SetFocus;
     Raise Exception.create('Error, Código de Asociado no Existe');
    end;
end;

procedure TFCaptaAportes.dbgAportesDblClick(Sender: TObject);
var
   FPago, Banco, AgenBco, CtaBco, NroOpe, FecOpe, TMonid : String;
   procedure Llenar_Detalle ;
   var
     cds : TwwClientDataset ;
     i : INteger ;
   begin
     cds := TwwClientDataset.CReate(self) ;
     cds.CloneCursor(dm1.cdsTransacciones,TRue);
     cds.Filter := 'APOSECID ='+ DM1.cdsTransacciones.FieldByName('APOSECID').AsString ;
     CDS.fILTERED := True ;
     CDS.IndexFieldNames := 'TRANSANO;TRANSMES' ;
     for i := 1 to  cds.recordcount do
     begin
      cds.RecNo := i ;
      cdsqry2.append ;
      cdsqry2.FieldByName('TRANSANO').AsString   :=  cds.FieldByName('TRANSANO').AsString  ;
      cdsqry2.FieldByName('TRANSMES').AsString   :=  cds.FieldByName('TRANSMES').AsString  ;
      cdsqry2.FieldByName('TRANSMTO').AsCurrency :=  cds.FieldByName('TRANSMTO').AsCurrency  ;
      cdsqry2.Next ;
     end ;
     cds.fREE ;
     cds := nil ;
   end ;
begin
   QuitaEventosCabecera ;
   pnlcabecera.Enabled := False ;
   pnlAportes.Visible    := True;
   desHabilitaPanelEdicion ;
   LimpiaCamposEdicion;
   //LLena Cabecera//////////////////
   dblcFormaPago.Text :=	DM1.cdsTransacciones.FieldByName( 'FORPAGOID' ).AsString ;
   if dblcformaPago.LookUpTable.Locate('FORPAGOID',VarArrayOf([dblcFormaPago.Text]),[]) then
      dbeFormaPago.Text := 	dblcformaPago.LookUpTable.FieldBYName('FORPAGODES').AsString ;

   dblcBanco.text :=		DM1.cdsTransacciones.FieldByName( 'BANCOID' ).asString ;
   if dm1.cdsBancos.lOCATE('BANCOID',VarArrayOf([dblcBanco.text]),[]) then
      dbeBanco.Text :=		dm1.cdsBancos.FieldByName('BANCONOM').AsString ;

   dblcAgencia.Text :=		DM1.cdsTransacciones.FieldByName( 'AGENBANCOID' ).AsString ;
   if TRIM(dblcAgencia.Text) <> '' then
      dbeAgencia.Text :=  DM1.DisplayDescrip('prvTGE','COB102','AGENBCODES',
                     ' BANCOID ='+QuotedStr(trim(dblcBanco.Text))
                   + ' AND AGENBCOID =' + QuotedStr(trim(dblcAgencia.Text)), 'AGENBCODES');

   dblcCtaCte.text :=		DM1.cdsTransacciones.FieldByName( 'CCBCOID' ).AsString ;
   dbeNumOpe.text :=    	DM1.cdsTransacciones.FieldByName( 'TRANSNOPE' ).AsString ;
   dbdtpFechaOperacion.Date :=	DM1.cdsTransacciones.FieldByName( 'TRANSFOPE' ).AsDateTime ;
   if DM1.cdsTMoneda.Locate('TMONID',VarArrayOf(['N']),[]) then
      dbeMoneda.Text  := DM1.cdsTMoneda.FieldByname('TMONDES').AsString;
   dbeMonto.Text  :=  FloatToStrF(DM1.cdsTransacciones.FieldByName( 'TRANSMTO' ).AsCurrency, ffNumber, 10, 2);

   //fin de LLena Cabecera///////////

   xSQL := 'Select Cast(''9999'' As Varchar2(6)) TRANSANO,'
          +' Cast(''9999'' As Varchar2(6)) TRANSMES,'
          +' Cast(''0'' As Varchar2(1))    CB_OK,'
          +' Cast(''0'' As Varchar2(1))    CB_OK2,'
          +' Cast(''9999'' As Decimal(15,2))    TRANSMTOORI,'
          +' Cast(''9999'' As Decimal(15,2)) TRANSMTO From TGE901';

   cdsQry2.Close;
   cdsQry2.DataRequest(xSQL);
   cdsQry2.Open;
   cdsQry2.Delete;

   ConfiguraGridEdicion ;
   dbgDetAportes.ColumnByName('TRANSMTO').FooterValue := FloatToStrF(0, ffNumber, 10, 2);
   //LLenar Detalle
   if not dm1.cdstransacciones.FieldByName('APOSECID').IsNull then
      Llenar_Detalle
   else
   begin
      cdsqry2.append ;
      cdsqry2.FieldByName('TRANSANO').AsString   :=  DM1.cdsTransacciones.FieldByName('TRANSANO').AsString  ;
      cdsqry2.FieldByName('TRANSMES').AsString   :=  DM1.cdsTransacciones.FieldByName('TRANSMES').AsString  ;
      cdsqry2.FieldByName('TRANSMTO').AsCurrency :=  DM1.cdsTransacciones.FieldByName('TRANSMTO').AsCurrency  ;
      cdsqry2.Next ;
   end;
   dbgDetAportes.ColumnByName('TRANSMTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(cdsQry2,'SUM(TRANSMTO)',''), ffNumber, 10, 2);
   dbemonto.text := dbgDetAportes.ColumnByName('TRANSMTO').FooterValue ;
   //fin de llenar detalle
   PonEventosCabecera ;
   bbtnImprimir.Visible := ( dm1.cdstransacciones.FieldByName('FLGRECIBO').AsString = 'S' ) ;

end;

procedure TFCaptaAportes.bbtnIngresaAporteClick(Sender: TObject);
begin
   ValidarAdicionAportes ;
   bbtnImprimir.Visible  := fALSE ;   
   pnlcabecera.Enabled := False ;
   wActualizado := True;
   xCrea  := True;
   wModo1 := 'A';
//wmc   Z2bbtnCancel.Enabled  := False;
//wmc   Z2bbtnAceptar.Enabled := False;
   pnlAportes.Visible    := True;
   HabilitaPanelEdicion ;
   LimpiaCamposEdicion;
   xCrea := False;

   if not bF_Efectivo then
      dblcFormaPago.SetFocus
   else
      dbdtpFechaOperacion.SetFocus ;   


   if DM1.cdsTMoneda.Locate('TMONID',VarArrayOf(['N']),[]) then
      dbeMoneda.Text  := DM1.cdsTMoneda.FieldByname('TMONDES').AsString;

   xSQL := 'Select Cast(''9999'' As Varchar2(6)) TRANSANO,'
          +' Cast(''9999'' As Varchar2(6)) TRANSMES,'
          +' Cast(''0'' As Varchar2(1))    CB_OK,'
          +' Cast(''0'' As Varchar2(1))    CB_OK2,'
          +' Cast(''9999'' As Decimal(15,2))    TRANSMTOORI,'
          +' Cast(''9999'' As Decimal(15,2)) TRANSMTO From TGE901';

   cdsQry2.Close;
   cdsQry2.DataRequest(xSQL);
   cdsQry2.Open;
   cdsQry2.Delete;

   ConfiguraGridAdicion ;
   ConfiguraAdicion ;
   //Analizar Aportes pendiente de Cobranza
   InsertaAportesPendientes;

   dbgDetAportes.ColumnByName('TRANSMTOORI').FooterValue := FloatToStrF(DM1.OperClientDataSet(cdsQry2,'SUM(TRANSMTOORI)',''), ffNumber, 10, 2);
   dbgDetAportes.ColumnByName('TRANSMTO').FooterValue := FloatToStrF(0, ffNumber, 10, 2);
   //Asignación de eventos
   PonEventosCampos ;
   //Adicional para Efectivo en Caja
   if bF_Efectivo then
   begin
     dblcFormaPago.Text    := sEfectivo ;
     dblcFormaPago.Enabled := False  ;
     dbeNumOpe.enabled     := False  ;
     dblcBanco.Enabled     := (dblcBanco.LookupTable.RecordCount > 1 );
     dblcBanco.Text        := sCajaDefault ;
   end ;

end;

procedure TFCaptaAportes.Z2bbtnAceptarClick(Sender: TObject);
begin
   If ((wModo1='A') Or (wModo1='M')) And (DM1.cdsTransacciones.RecordCount>=1) Then
    begin
     DM1.ControlTran;
     wActualizado := False;
     Beep;
     MessageDlg('Actualización Realizada', mtCustom, [mbOk], 0);
    end;
end;

procedure TFCaptaAportes.dblcSituacionExit(Sender: TObject);
begin
   xWhere := 'ASOSITID = '+QuotedStr(dblcSituacion.Text) ;
   edtSituacion.Text := DM1.DisplayDescrip('prvTGE', 'APO106', 'ASOSITDES', xWhere, 'ASOSITDES');
end;

procedure TFCaptaAportes.dblcTipoAsocExit(Sender: TObject);
begin
   xWhere := 'ASOTIPID = '+ QuotedStr(dblcTipoAsoc.Text) ;
   edtTipoAso.Text := DM1.DisplayDescrip('prvTGE', 'APO107', 'ASOTIPDES', xWhere, 'ASOTIPDES');
end;

procedure TFCaptaAportes.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
{
   If  (DM1.wModo = 'A') or (DM1.wModo = 'M') Then
    begin
     If wActualizado Then
      begin
       Beep;
       If Application.MessageBox(' Tiene Datos No Actualizados '+#13+
            '¿Desea Salir y Cancelar sus Actualizaciones?',
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
end;

procedure TFCaptaAportes.dblcdUSEExit(Sender: TObject);
begin
   DM1.cdsUse.SetKey;
   DM1.cdsUse.FieldByName('USEID').AsString := dblcdUSE.Text;
   If not DM1.cdsUse.GotoKey Then
    begin
     Beep;
     MessageDlg('La Unidad de Proceso no se encontró', mtInformation, [mbOk], 0);
     dblcdUSE.Text:='';
    end;
   edtUSE.Text := DM1.cdsUse.FieldByName('USENOM').AsString;

   If xCrea Then Exit;

   If dblcdUse.Text <> xUse Then
    begin
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
    end;
end;

procedure TFCaptaAportes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if pnlPeriodoInicial.Visible then
      bbtnSalirPeriodoInicial.OnClick(bbtnSalirPeriodoInicial);
   DM1.cdsUse.IndexFieldNames           := '';
   DM1.cdsAsociados1.IndexFieldNames    := '';
   DM1.cdsTransacciones.IndexFieldNames := '';
   DM1.cdsTransacciones.Cancel;
   DM1.cdsTransacciones.Close;
   DM1.cdsAsociados1.Close;
//GAR
   cdsQry2.IndexFieldNames          := '';
   cdsQry2.Cancel;
   cdsQry2.Close;
   if not pnlcabecera.Enabled then
      pnlCabecera.Enabled := True ;
//
end;

procedure TFCaptaAportes.bbtnAceptaCabClick(Sender: TObject);
var
   xSQL : String;
begin
   dblcdUPago.Text := DM1.cdsAsociados.FieldByName('UPAGOID').AsString;
   If Length(dblcdUSE.Text) = 0 Then
    begin
     dblcdUSE.SetFocus;
     Raise Exception.Create('Ingrese el Código de la USE');
    end;
   If Length(dblcdCodigo.Text) = 0 Then
    begin
     dblcdCodigo.Text := DM1.cdsAsociados1.FieldByName('ASOID').AsString;
    end;
   If Length(dblcdCodigo.Text) = 0 Then
    begin
     dblcdUSE.SetFocus;
     raise Exception.Create('Ingrese el Código del Asociado');
    end;

   xSQL := 'BEGIN SP_ACT_APO301ID (''' + dblcdCodigo.text + '''); END;';
   DM1.DCOM1.AppServer.EjecutaSQL(XSQL);

   xSQL := 'Select * From APO301'
          +' Where ASOID='+QuotedStr(dblcdCodigo.Text)
          +' And (TRANSINTID='+QuotedStr('APO')
          +' OR TRANSINTID='+QuotedStr('PRV')+' )'
          +' ORDER BY APOSEC,TRANSFOPE';

   DM1.Filtracds(DM1.cdsTransacciones,xSQL);
   DM1.cdsTransacciones.IndexFieldNames := 'TRANSANO;TRANSMES' ;

   TNumericField(DM1.cdsTransacciones.FieldByName('TRANSMTO')).DisplayFormat := '###,###,##0.00';
   TNumericField(DM1.cdsTransacciones.FieldByName('TRANSMTO')).EditFormat    := '########0.00';

   xSQL := 'Select NVL(SALDO,0) SLD, NVL(SALDOBONUS,0) SLDBONUS From APO301 '
          +' Where ASOID='+QuotedStr(dblcdCodigo.Text)
          +' And FREG =(Select MAX(FREG) From APO301 Where ASOID='+QuotedStr(dblcdCodigo.Text)+')';
   DM1.FiltraCDS(DM1.cdsQry, xSQL);

   xSaldoAnt                 := DM1.cdsQry.FieldByName('SLD').AsFloat;
   xSaldoTrimAnt             := DM1.cdsQry.FieldByName('SLDBONUS').AsFloat;
   dblcdUSE.Enabled          := False;
   dblcdUPro.Enabled         := False;
   dblcdUPago.Enabled        := False;
   dblcdCodigo.Enabled       := False;
   bbtnIngresaAporte.Enabled := True;
   dbgAportes.Enabled        := True;
   bbtnAceptaCab.Enabled     := False;

   dbgAportes.ColumnByName('TRANSMTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsTransacciones,'SUM(TRANSMTO)',''),ffNumber, 10, 2);
   //Verificar el Periodo de Inicio de Cobranzas
   if trim(strAnoIni) = '' then
   begin
      if dm1.cdsTransacciones.RecordCount > 0 then
      begin
         dm1.cdsTransacciones.RecNo := 1 ;
         strAnoIni := dm1.cdsTransacciones.fieldbyname('TRANSANO').AsString ;
         strMesIni := dm1.cdsTransacciones.fieldbyname('TRANSMES').AsString ;
      end
      else
      begin
         if strMes = '01' then
         begin
            strAnoIni := dm1.strzero(inttostr(strtoint(strAno) - 1),4) ;
            strMesIni := '12'
         end
         else
         begin
            strMesIni := dm1.strzero(inttostr(strtoint(strMes) - 1),2) ;
            stranoini := strAno ;
         end ;
      end ;
   end ;
   dm1.cdsTransacciones.Last ;
   //
{
   if bF_Efectivo then
      bbtnIngresaAporte.Click;
}
end;

procedure TFCaptaAportes.z2bbtnNuevoClick(Sender: TObject);
begin
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
end;

procedure TFCaptaAportes.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If (Key = #13) Then
    begin
     Key := #0;
     Perform(CM_DialogKey, VK_TAB, 0);
    end;
end;

procedure TFCaptaAportes.edtTransaccionExit(Sender: TObject);
begin
   xWhere := 'TRANSID ='+QuotedStr(dblcTransaccion.Text);
   edtTransaccion.Text := DM1.DisplayDescrip('prvTGE', 'APO118', 'TRANSDES', xWhere, 'TRANSDES');
end;

procedure TFCaptaAportes.dblcTransaccionExit(Sender: TObject);
begin
   xWhere:= 'TRANSID = '+ QuotedStr(dblcTransaccion.Text) ;
   edtTransaccion.Text := DM1.DisplayDescrip('prvTGE','APO118','TRANSDES',xWhere,'TRANSDES');
end;

procedure TFCaptaAportes.dblcdCodigoDropDown(Sender: TObject);
begin
   DM1.FiltraCDS(DM1.cdsAsociados1, 'Select ASOID, ASOCODMOD, ASOAPENOM From APO201 Where USEID ='+QuotedStr(dblcdUSE.Text));
end;
procedure TFCaptaAportes.fcShapeBtn2Click(Sender: TObject);
begin
   close ;
   Exit ;
   DM1.cdsTransacciones.Close;
   dblcdUSE.Enabled      := True;
   dblcdUPro.Enabled     := True;
   dblcdUPago.Enabled    := True;
   dblcdCodigo.Enabled   := True;
   dbgAportes.Enabled    := False;
   bbtnAceptaCab.Enabled := True;
   dblcdUPro.SetFocus;
end;

procedure TFCaptaAportes.dblcdUProExit(Sender: TObject);
begin
   DM1.cdsUPro.SetKey;
   DM1.cdsUPro.FieldByName('UPROID').AsString := dblcdUPro.Text;
   If not DM1.cdsUPro.GotoKey Then
    begin
     edtUPro.Clear;
     Beep;
     MessageDlg('La Unidad de Proceso no se encontró', mtInformation, [mbOk], 0);
    end;
   edtUPro.Text := DM1.cdsUPro.FieldByName('UPRONOM').AsString;

   sSQL := 'Select * From APO103 Where UPROID ='+QuotedStr(dblcdUPro.Text);
   DM1.FiltraCDS(DM1.cdsUPago,sSQL);
end;

procedure TFCaptaAportes.dblcdUPagoExit(Sender: TObject);
begin
   sSQL := 'Select * '+
           'From APO101 Where UPAGOID='+QuotedStr(dblcdUPago.Text)+
           'ORDER BY USEID';
   DM1.FiltraCDS(DM1.cdsUSE,sSQL);

   DM1.cdsUPago.SetKey;
   DM1.cdsUPago.FieldByName('UPAGOID').AsString := dblcdUPago.Text;
   If not DM1.cdsUPago.GotoKey Then
    begin
     Beep;
     MessageDlg('La Unidad de Pago no se encontró', mtInformation, [mbOk], 0);
     dblcdUPago.Clear;
    end;
   edtUPago.Text := DM1.cdsUPago.FieldByName('UPAGONOM').AsString;
end;

procedure TFCaptaAportes.dblcMonedaExit(Sender: TObject);
begin
   DM1.cdsTMoneda.SetKey;
   DM1.cdsTMoneda.FieldByName('TMONID').AsString := dblcMoneda.Text;
   If Not DM1.cdsTMoneda.GotoKey Then
    begin
     dbeMoneda.Clear;
    end
   Else
    begin
     dbeMoneda.Text := DM1.cdsTMoneda.FieldByname('TMONDES').AsString;
    end;
{  If xCrea Then Exit;
  If bbtnCancela.Focused Then Exit;
  If (edtMoneda.Text='') And (dblcMoneda.Text<>'') Then
  begin
     dblcMoneda.SetFocus;
     Raise Exception.create('Error, Código de Tipo de Moneda no válido');
  end;
  If  dblcMoneda.Text='' Then
  begin
     dblcMoneda.SetFocus;
     Raise Exception.Create('Ingrese el tipo de Moneda del Aporte');
  end;}
end;

procedure TFCaptaAportes.wwDBGrid1IButtonClick(Sender: TObject);
var
   Present: TDateTime;
   nYear, nMonth, nDay : word;
   bmk : TBookmark ;
   currUltimoAporte : Currency ;
begin
   //Quitar Eventos
   QuitaEventosCampos ;
   //
   cdsAporte.Last ;
   currUltimoAporte := cdsAporte.fieldbyName('APOVALOR').AsCurrency ;
   if cdsQry2.recordcount <> 0 then
   begin
      cdsqry2.Last ;
      nYear  := cdsQry2.FieldByName('TRANSANO').asinteger ;
      nMonth := cdsQry2.FieldByName('TRANSMES').asinteger ;
   end
   else
   begin
      if dm1.cdstransacciones.recordcount > 0 then
      begin
        dm1.cdstransacciones.disableControls;
        bmk := dm1.cdstransacciones.GetBookmark ;
        dm1.cdstransacciones.Last ;
        nYear  := dm1.cdstransacciones.FieldByName('TRANSANO').AsInteger ;
        nMonth := dm1.cdstransacciones.FieldByName('TRANSMES').AsInteger ;
        dm1.cdsTransacciones.GotoBookmark(bmk);
        dm1.cdsTransacciones.FreeBookmark(bmk);
        dm1.cdsTransacciones.EnableControls ;
      end
      else
      begin
        if strMesIni = '12' then
        begin
          SpeAnnos.Text := dm1.strzero(inttostr(strtoint(strAnoIni) + 1),4) ;
          SpEmeses.Text := '01'
        end
        else
        begin
          SpeAnnos.Text := strAnoIni ;
          SpEmeses.Text := dm1.strzero(inttostr(strtoint(strMesIni) + 1),2) ;
        end ;
        SpeAnnos.Tag  := strtoint(strAnoIni) ;
        SpEmeses.Tag  := strtoint(strMesIni) ;

        pnlPeriodoInicial.Top     := 309 ;
        pnlPeriodoInicial.Left    := 333 ;
        pnlPeriodoInicial.Visible := True  ;
        pnlAportes.Enabled        := False ;

        PonEventosCampos ;
        Exit ;
      end ;
   end ;

   if nMonth = 12 then
   begin
      nMonth := 1 ;
      inc(nYear);
   end
   else
      inc(nMonth);

   cdsQry2.Append;

   cdsQry2.FieldByName('TRANSANO').AsString := dm1.StrZero(inttostr(nYear),4);
   cdsQry2.FieldByName('TRANSMES').AsString := dm1.StrZero(inttostr(nMonth),2);
   cdsQry2.fieldByName('CB_OK').AsString         := '1';
   if cdsAporte.locate('APOANO;APOMES',
        VarArrayOf([cdsQry2.FieldByName('TRANSANO').AsString,
                    cdsQry2.FieldByName('TRANSMES').AsString]),[]) then
   begin
     cdsQry2.FieldByName('TRANSMTOORI').AsCurrency := cdsAporte.fieldbyname('APOVALOR').AsCurrency ;
     cdsQry2.FieldByName('TRANSMTO').AsCurrency    := cdsAporte.fieldbyname('APOVALOR').AsCurrency ;
   end
   else
   begin
     cdsQry2.FieldByName('TRANSMTOORI').ASCurrency := currUltimoAporte ;
     cdsQry2.FieldByName('TRANSMTO').ASCurrency :=    currUltimoAporte ;
   end ;

   cdsqry2.next ;
   PonEventosCampos ;
   dbemonto.TEXT := FloatToStrF(DM1.OperClientDataSet(cdsQry2,'SUM(TRANSMTO)',''), ffNumber, 10, 2);
   dbgdetAportes.ColumnByName('TRANSMTO').FooterValue := dbemonto.Text ;
   dbgdetAportes.ColumnByName('TRANSMTOORI').FooterValue := FloatToStrF(DM1.OperClientDataSet(cdsQry2,'SUM(TRANSMTOORI)',''), ffNumber, 10, 2); ;
end;

procedure TFCaptaAportes.fcShapeBtn3Click(Sender: TObject);
begin
//   if bF_Efectivo then
      MostrarPendientes ;

   pnlAportes.Visible := False;
   QuitaEventosCampos ;
   pnlCabecera.Enabled := True ;
   
   if dbgAportes.DataSource.DataSet.RecordCount = 0 then
   begin
      if SpeAnnos.Tag <> 0 then
      begin
         strAnoIni := dm1.StrZero(inttostr(SpeAnnos.Tag),4);
         strMesIni := dm1.StrZero(inttostr(SpEmeses.Tag),2);
         SpeAnnos.Tag := 0 ;
         SpEmeses.Tag := 0 ;
      end ;
   end ;
end;

procedure TFCaptaAportes.dbeMontoExit(Sender: TObject);
begin

   if  (trim(dbemonto.text) = '') or (trim(dbemonto.text)='.') then
   begin
     //Blanquea Detalle
     blanquea_detalle ;
   end
   else
   begin
       if QuitaComas(dbgdetaportes.ColumnbyName('TRANSMTO').Footervalue)
          <> StrToCurr(dbeMonto.Text) then
       begin
          //Recalcula
          recalcula_detalle ;
       end ;
   end ;

end;

procedure TFCaptaAportes.dbeMontoKeyPress(Sender: TObject; var Key: Char);
var
   sCadBuscar : String ;
   i : integer  ;
   j : integer  ;
begin
   if key = #8 then
      Exit ;
   if not(key in ['0'..'9','.']) then
   begin
      key := #0;
      Exit ;
   end ;

   // Verificar que no se ingresen negativos
   if key in ['-','+','E','e'] then
      key := #0 ;

   //verificar que solo se ingrese a lo sumo un punto
   sCadBuscar := TCustomEdit(Sender).Text ;
   i   := AnsiPos('.', sCadBuscar) ;
   if key = '.' then
        if AnsiPos('.', sCadBuscar) > 0 then
           key := #0 ;

   //verificar que no se ingresen mas de dos decimales
   if i <> 0 then
   begin
     j := dbeMonto.SelStart ;
     if ( j - i >= 2 ) and ( key <> #8 ) then
        key := #0
     else
     begin
        if (j >= i) and ( key <> #8 ) then
           if (Length(sCadBuscar) - i) >= 2 then
           begin
//               dbeMonto.Text := leftstr(sCadBuscar,Length(sCadBuscar) - 1) ;
               dbeMonto.Text := copy(sCadBuscar,1,Length(sCadBuscar) - 1) ;
               dbeMonto.SelStart := j ;
           end ;
     end ;
   end ;
end;

procedure TFCaptaAportes.spdAnoKeyPress(Sender: TObject; var Key: Char);
begin
   If Key In [' ', 'A'..'Z', 'a'..'z',
              '°', '|', '¬', '!', '"', '#', '$', '%', '&', '/', '(', ')',
              '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '[',
              ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''',
              '.', '-', '_'] Then
    Key := #0;
end;

procedure TFCaptaAportes.dbgAportesKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
   sSQL : String ;
begin
//   Exit;
   If (Key=VK_DELETE) and (ssCtrl in Shift)  Then
    begin
     If DM1.cdsTransacciones.RecordCount > 0 Then
      begin
       If Question(Caption, 'Esta Seguro de Anular?'+#13+#13+'Desea Continuar') Then
        begin
         xBorrar:= '1';
         sSQL :=
              ' INSERT INTO APO313 '
         +    ' ( ASOID,TRANSID,USEID,USEABR,UPAGOID,UPAGOABR,UPROID,UPROABR,TMONID,BANCOID,CCBCOID, '
         +    '  TRANSNOPE,TRANSFOPE,TRANSFFCIND,TRANSANO,TRANSMES,TRANSMTO,TRANSMTODEV,SALDOANT, '
         +    '  INTERESMTO,SALDO,SALDOBONUS,BONUSMTO,INTERESPORC,BONUSPORC,TRANSINTID,USUARIO, '
         +    '  APOFRECL,ASOCODMOD,ASOCODAUX,FORPAGOID,ASOAPENOM,TRANSPRV,APOFNP,FECCTAIND,APOFDEV, '
         +    '  DEVANO,DEVMES,FORPAGOABR,DPTOID,DPTOABR,CIUDID,FREG,HREG,TRANSAAMM,TRANSAATRI, '
         +    '  TRANSTRIM,TRANSSEM,TRANSAASEM,APOFCNT,APOSEC,CIAID,TIPDESEID,TIPDESEABR,BCOGIRO,DPTOGIRO, '
         +    '  AGENBANCOID,NRONABO,NROFICIO,DETRCOBID,USERCOBID,RCOBID,BANCOIDG,AGENCIDG,FILLER,FCIERRE, '
         +    '  CNTCONTA,DOCID,PVSLBENNR,FLGNIV,APOSECID,APO301ID,FLGRECIBO,CNTANOMM ) '
         +    ' SELECT '
         +    ' ASOID,TRANSID,USEID,USEABR,UPAGOID,UPAGOABR,UPROID,UPROABR,TMONID,BANCOID,CCBCOID, '
         +    ' TRANSNOPE,TRANSFOPE,TRANSFFCIND,TRANSANO,TRANSMES,TRANSMTO,TRANSMTODEV,SALDOANT, '
         +    ' INTERESMTO,SALDO,SALDOBONUS,BONUSMTO,INTERESPORC,BONUSPORC,TRANSINTID,USUARIO, '
         +    ' APOFRECL,ASOCODMOD,ASOCODAUX,FORPAGOID,ASOAPENOM,TRANSPRV,APOFNP,FECCTAIND,APOFDEV, '
         +    ' DEVANO,DEVMES,FORPAGOABR,DPTOID,DPTOABR,CIUDID,FREG,HREG,TRANSAAMM,TRANSAATRI, '
         +    ' TRANSTRIM,TRANSSEM,TRANSAASEM,APOFCNT,APOSEC,CIAID,TIPDESEID,TIPDESEABR,BCOGIRO,DPTOGIRO, '
         +    ' AGENBANCOID,NRONABO,NROFICIO,DETRCOBID,USERCOBID,RCOBID,BANCOIDG,AGENCIDG,FILLER,FCIERRE, '
         +    ' CNTCONTA,DOCID,PVSLBENNR,FLGNIV,APOSECID,APO301ID,FLGRECIBO,CNTANOMM '
         +    ' FROM APO301 '
         +    ' WHERE ASOID = ''' + dbgAportes.DataSource.DataSet.fieldByName('ASOID').AsString + ''' '
         +    '   AND APO301ID = ''' + dbgAportes.DataSource.DataSet.fieldByName('APO301ID').AsString + ''' ' ;
         DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
         DM1.cdsTransacciones.Delete;
         DM1.AplicaDatos(DM1.cdsTransacciones, 'TRANSACCIONES');
	 xBorrar:= '0';
         ShowMessage('Registro Anulado');
        end
       Else
      	Exit;
      end
     Else
      ShowMessage(' No Existen Registros a Anular ');
    end;
end;

procedure TFCaptaAportes.FormShow(Sender: TObject);
var
   strPeriodo : String ;
begin
   xCrea := True;
//  pnlinicio.enabled:=True;
   bbtnIngresaAporte.enabled         := False;
   DM1.cdsUse.IndexFieldNames        := 'USEID';
   DM1.cdsUPago.IndexFieldNames      := 'UPAGOID';
   DM1.cdsUPro.IndexFieldNames       := 'UPROID';
   DM1.cdsAsociados1.IndexFieldNames := 'ASOAPENOM';
   strPeriodo := dm1.DisplayDescrip('prvTGE','DUAL',' TO_CHAR(SYSDATE,''YYYYMM'') ANOMES','','ANOMES');
   strAno     := copy(strPeriodo,1,4);
   strMes     := copy(strPeriodo,5,2);

  //  DM1.cdsTransacciones.IndexFieldNames:='ASOID;TRANSANO;TRANSMES;TRANSINTID';
//wmc   If DM1.wModo = 'M' Then
//wmc    begin
     xTrans := DM1.DisplayDescrip('prvTGE','APO118','TRANSID','TRANSINTID='+QuotedStr('APO'),'TRANSID');
     xAsoid := DM1.cdsAsociados.FieldByName('ASOID').AsString;
     xUse   := DM1.cdsAsociados.FieldByName('USEID').AsString;
     dblcTransaccion.Text := xTrans;
     dblcTransaccionExit(Sender);
     dblcdUSE.Text := xUse;
     dblcdUSEExit(Sender);
     dblcdCodigo.Text  := xAsoid;
     dblcdCodigoExit(Sender);
     dblcdUSE.Enabled  := True;
     dblcdUPro.Text    := DM1.cdsAsociados.FieldByName('UPROID').AsString;
     xWhere := 'UPROID ='+QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString);
     edtUPro.Text      := DM1.DisplayDescrip('prvSQL', 'APO102', 'UPRONOM', xWhere, 'UPRONOM');
     dblcdUPago.Text   := DM1.cdsAsociados.FieldByName('UPAGOID').AsString;
     xWhere:='UPAGOID ='+QuotedStr(DM1.cdsAsociados.FieldByName('UPAGOID').AsString);
     edtUPago.Text     := DM1.DisplayDescrip('prvSQL', 'APO103', 'UPAGONOM', xWhere, 'UPAGONOM');
     dblcdUPro.Enabled := True;
//     dblcdUPro.Setfocus;
     bbtnAceptaCab.Enabled:=True;
     bbtnAceptaCab.SetFocus;
//wmc    end;
   bbtnAceptaCab.Enabled := True;
 	 pnlAportes.Visible    := False;
   xCrea := False;
   bbtnAceptaCab.OnClick(bbtnAceptaCab);
   cdsQry2.Filter   := '';
   cdsQry2.Filtered := False;
   cdsQry2.IndexFieldNames := '';
   if cdsAporte.Active then
      cdsAporte.Close ;
   cdsAporte.DataRequest('SELECT APOANO , APOMES , APOVALOR FROM APO117 ORDER BY APOANO,APOMES');
   cdsAporte.Open;
   if bF_Efectivo then
      bbtnIngresaAporte.Click;
   
end;

procedure TFCaptaAportes.RecuperaFechaNombramiento;
var
     iAno , iMes , iDia : Word ;
begin
     strAnoIni := '';
     strMesIni := '';
     strPeriodoResolucion := strAnoIni + strMesIni ;
     strAnoFin := strAno;
     strMesFin := strMes;
     strPeriodoCese := strAno + strMes ;

     if not xFechaNomb.isnull then
     begin
       DecodeDate(xFechaNomb.AsDateTime,iAno , iMes , iDia);
       strAnoIni := IntToStr(iAno);
       strMesIni := '0' + IntToStr(iMes);
       strMesIni := copy(strMesIni,length(strMesIni)-1,2);
       strPeriodoResolucion := strAnoIni + strMesIni ;
       if strAnoIni < '1997' then
       begin
          strAnoIni := '1997';
          strMesIni := '01';
       end ;
     end ;
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
end;

procedure TFCaptaAportes.bbtnCierraImpClick(Sender: TObject);
begin
    fcShapeBtn3.OnClick(fcShapeBtn3);
end;

procedure TFCaptaAportes.InsertaAportesPendientes;
var
  cdsClone : TwwClientDataset ;
  iAno , iMes : Integer ;
  iAnoFinal , iMesFinal : Integer ;
  currAcumMes ,
  currAporteMes ,
  currUltimoAporte : Currency ;
  bGrabacion       : Boolean ;

  function RecuperaAportePeriodo(astrAno,astrMes : String) : Currency ;
  begin
      //Buscar Valor del Aporte en el Periodo
      if cdsAporte.locate('APOANO;APOMES',VarArrayOf([astrAno,astrMes]),[]) then
         Result := cdsAporte.FieldBYName('APOVALOR').AsCurrency
      else
         Result := currUltimoAporte ;
  end;
  procedure IncrementaPeriodo;
  begin
      //Cambiar de Periodo
      if imes = 12 then
      begin
         imes := 1 ;
         inc(iAno);
      end
      else
         inc(imes);
  end;
begin
  bGrabacion       := False ;
  cdsAporte.Last ;
  currUltimoAporte := cdsAporte.fieldByName('APOVALOR').AsCurrency ;
  iAno := strtoint(strAnoIni);
  iMes := strtoint(strMesIni);

  cdsClone := TwwClientDataSet.Create(self);
  cdsClone.CloneCursor(dm1.cdsTransacciones,TRue);
  if cdsClone . RecordCount > 0 then
  begin

      cdsClone.indexfieldnames := 'TRANSANO;TRANSMES';

      currAcumMes := 0 ;
      cdsClone . Last  ;
      cdsClone . First ;
      while not cdsClone.Eof do
      begin
           if (iAno = cdsClone.FieldByName('TRANSANO').AsInteger)
              and (iMes = cdsClone.FieldByName('TRANSMES').AsInteger) then
           begin
              currAcumMes := currAcumMes + cdsClone.fieldbyName('TRANSMTO').AsCurrency ;
              bGrabacion  := False ;
           end
           else
           begin
              //Buscar Valor del Aporte en el Periodo
              currAporteMes := RecuperaAportePeriodo( dm1.strzero(inttostr(iAno),4),dm1.strzero(inttostr(imes),2) ) ;
              //
              if currAporteMes > currAcumMes then
              begin
                //Inserta un nuevo registro
                with cdsqry2 do
                begin
                  Append;
                  FieldByName('TRANSANO').AsString   := DM1.StrZero(IntToStr(iAno),4) ;
                  FieldByName('TRANSMES').AsString   := DM1.StrZero(IntToStr(iMes),2) ;
                  FieldByName('TRANSMTOORI').ascurrency :=
                         currAporteMes - currAcumMes ;
                  FieldByName('TRANSMTO').ascurrency :=0 ;
                  Post ;
                end ;
                ///////////////////////////
              end ;

              //Cambiar de Periodo
              IncrementaPeriodo ;
              currAcumMes := cdsClone.fieldByName('TRANSMTO').AsCurrency ;
              //Verificar los Huecos
              if (100*iAno + iMes) <
              (100*cdsClone.FieldByName('TRANSANO').AsInteger
              + cdsClone.FieldByName('TRANSMES').AsInteger) then
              begin
                 //Inserta Huecos
                 InsertaHuecos(iAno , imes ,
                                    cdsClone.FieldByName('TRANSANO').AsInteger ,
                                    cdsClone.FieldByName('TRANSMES').AsInteger);
                 iAno := cdsClone.FieldByName('TRANSANO').AsInteger ;
                 iMes := cdsClone.FieldByName('TRANSMES').AsInteger ;
              end ;
              bGrabacion := True ;
           end ;
           cdsClone.Next ;
      end ;

      //Caso de Acumulados No Considerados
      cdsClone.Last;
      if not bGrabacion then
      begin
        if (iAno = cdsClone.FieldByName('TRANSANO').AsInteger )
         and ( iMes = cdsClone.FieldByName('TRANSMES').AsInteger ) then
        begin
          //01.Se Acumula
          currAcumMes := currAcumMes + cdsClone.fieldbyName('TRANSMTO').AsCurrency ;
          //02.Se verifica
          currAporteMes := RecuperaAportePeriodo( dm1.strzero(inttostr(iAno),4),dm1.strzero(inttostr(imes),2) ) ;
          if currAporteMes > currAcumMes then
          begin
            with cdsqry2 do
            begin
              Append;
              FieldByName('TRANSANO').AsString   := DM1.StrZero(IntToStr(iAno),4) ;
              FieldByName('TRANSMES').AsString   := DM1.StrZero(IntToStr(iMes),2) ;
              FieldByName('TRANSMTOORI').ascurrency := currAporteMes - currAcumMes ;
              FieldByName('TRANSMTO').ascurrency :=0 ;
              Post ;
            end ;
          end ;
        end
        else
        begin
          //01.Se Verifica
          currAporteMes := RecuperaAportePeriodo( dm1.strzero(inttostr(iAno),4),dm1.strzero(inttostr(imes),2) ) ;
          if currAporteMes > currAcumMes then
          begin
            with cdsqry2 do
            begin
              Append;
              FieldByName('TRANSANO').AsString   := DM1.StrZero(IntToStr(iAno),4) ;
              FieldByName('TRANSMES').AsString   := DM1.StrZero(IntToStr(iMes),2) ;
              FieldByName('TRANSMTOORI').ascurrency := currAporteMes - currAcumMes ;
              FieldByName('TRANSMTO').ascurrency :=0 ;
              Post ;
            end ;
          end ;
          //02.se verifican los Huecos
          if (100*iAno + iMes) <
          (100*cdsClone.FieldByName('TRANSANO').AsInteger
          + cdsClone.FieldByName('TRANSMES').AsInteger) then
          begin
             //Inserta Huecos
             InsertaHuecos(iAno , imes ,
                                cdsClone.FieldByName('TRANSANO').AsInteger ,
                                cdsClone.FieldByName('TRANSMES').AsInteger);
             iAno := cdsClone.FieldByName('TRANSANO').AsInteger ;
             iMes := cdsClone.FieldByName('TRANSMES').AsInteger ;
          end ;
          //03.Se Verifica Último Aporte
          currAporteMes := RecuperaAportePeriodo( dm1.strzero(inttostr(iAno),4),dm1.strzero(inttostr(imes),2) ) ;
          if currAporteMes > currAcumMes then
          begin
            with cdsqry2 do
            begin
              Append;
              FieldByName('TRANSANO').AsString   := DM1.StrZero(IntToStr(iAno),4) ;
              FieldByName('TRANSMES').AsString   := DM1.StrZero(IntToStr(iMes),2) ;
              FieldByName('TRANSMTOORI').ascurrency := currAporteMes - currAcumMes ;
              FieldByName('TRANSMTO').ascurrency :=0 ;
              Post ;
            end ;
          end ;
        end;
      end
      else
      begin
        //01.Se Verifica Último Aporte
        currAporteMes := RecuperaAportePeriodo( dm1.strzero(inttostr(iAno),4),dm1.strzero(inttostr(imes),2) ) ;
        if currAporteMes > currAcumMes then
        begin
          with cdsqry2 do
          begin
            Append;
            FieldByName('TRANSANO').AsString   := DM1.StrZero(IntToStr(iAno),4) ;
            FieldByName('TRANSMES').AsString   := DM1.StrZero(IntToStr(iMes),2) ;
            FieldByName('TRANSMTOORI').ascurrency := currAporteMes - currAcumMes ;
            FieldByName('TRANSMTO').ascurrency :=0 ;
            Post ;
          end ;
        end ;
      end ;
      //
      IncrementaPeriodo ;
      //
      //Verificar Huecos Futuros
      if (100*iAno + iMes) <=
      (100*StrToInt(strAnoFin)
      + StrToInt(strMesFin)) then
      begin
         iAnoFinal := StrToInt(strAnoFin);
         iMesFinal := StrToInt(strMesFin);
         if iMesFinal = 12 then
         begin
            iMesFinal := 1 ;
            Inc(iAnoFinal) ;
         end
         else
            Inc(iMesFinal) ;
         //Inserta Huecos
         InsertaHuecos(iAno , imes ,
                            iAnoFinal  ,
                            iMesFinal );
      end ;

  end ;

  cdsclone.Free ;
  cdsclone := nil ;

end;


procedure TFCaptaAportes.InsertaHuecos;
var
     currApoValor : Currency ;
begin

     cdsAporte.Last ;
     currApoValor := cdsAporte.fieldbyName('APOVALOR').AsCurrency ;

     while (100*ianoini + imesini) < (100*iAnoFin + iMesFin) do
     begin
        with cdsqry2 do
        begin
          Append;
          FieldByName('TRANSANO').AsString := DM1.StrZero(IntToStr(iAnoIni),4) ;
          FieldByName('TRANSMES').AsString := DM1.StrZero(IntToStr(iMesIni),2) ;
          if cdsAporte.Locate('APOANO;APOMES',
                VarArrayOf([FieldByName('TRANSANO').AsString,
                            FieldByName('TRANSMES').AsString]),[]) then
              FieldByName('TRANSMTOORI').ascurrency := cdsAporte.FieldBYName('APOVALOR').Ascurrency
          else
              FieldByName('TRANSMTOORI').ascurrency := currApoValor ;
          FieldByName('TRANSMTO').ascurrency :=0 ;
          Post;
        end ;
        if iMesIni = 12 then
        begin
           Inc(iAnoIni);
           iMesIni := 1 ;
        end
        else
           inc(iMesIni);

     end ;
end;

procedure TFCaptaAportes.dbgDetAportesKeyPress(Sender: TObject;
  var Key: Char);
var
   sCadBuscar : String ;
   i : integer  ;
   j : integer  ;
begin

   if key = #13 then
      Exit ;

   if dbgdetaportes.getactivefield.FieldName <> 'TRANSMTO' then
      Exit ;

   if not(key in ['0'..'9','.']) then
   begin
      key := #0;
      Exit ;
   end ;
   // Verificar que no se ingresen negativos
//   if key in ['-','+','E','e'] then
//      key := #0 ;

   //verificar que solo se ingrese a lo sumo un punto
   sCadBuscar := TwwDBGrid(Sender).InplaceEditor.Text ;
   i   := AnsiPos('.', sCadBuscar) ;
   if key = '.' then
        if AnsiPos('.', sCadBuscar) > 0 then
           key := #0 ;

   //verificar que no se ingresen mas de dos decimales
   if i <> 0 then
   begin
     j := TwwDBGrid(Sender).InplaceEditor.SelStart ;
     if ( j - i >= 2 ) and ( key <> #8 ) then
        key := #0
     else
     begin
        if (j >= i) and ( key <> #8 ) then
           if (Length(sCadBuscar) - i) >= 2 then
           begin
//               TwwDBGrid(Sender).InplaceEditor.Text := leftstr(sCadBuscar,Length(sCadBuscar) - 1) ;
               TwwDBGrid(Sender).InplaceEditor.Text := copy(sCadBuscar,1,Length(sCadBuscar) - 1) ;
               TwwDBGrid(Sender).InplaceEditor.SelStart := j ;
           end ;
     end ;
   end ;

end;

procedure TFCaptaAportes.cb_okChange(Sender: TField);
var
    evt_CB_OK2   ,
    evt_TRANSMTO : TFieldNotifyEvent ;
begin
    evt_TRANSMTO :=  Sender.DataSet.FieldByName('TRANSMTO').OnChange ;
    evt_CB_OK2   :=  Sender.DataSet.FieldByName('CB_OK2').OnChange   ;
    Sender.DataSet.FieldByName('TRANSMTO').OnChange := nil ;
    Sender.DataSet.FieldByName('CB_OK2').OnChange := nil   ;

    if sender.value = '1' then
       Sender.DataSet.FieldByName('TRANSMTO').AsCurrency := Sender.DataSet.FieldByName('TRANSMTOORI').AsCurrency
    else
    begin
       Sender.DataSet.FieldByName('TRANSMTO').AsCurrency := 0 ;
       if Sender.DataSet.FieldByName('CB_OK2').AsString = '1' then
       begin
          Sender.DataSet.FieldByName('CB_OK2').AsString := '0' ;
          Sender.DataSet.FieldByName('TRANSMTO').AsCurrency := 0 ;
       end;
    end ;
    Sender.DataSet.Post ;
    Sender.DataSet.FieldByName('TRANSMTO').OnChange := evt_TRANSMTO ;
    Sender.DataSet.FieldByName('CB_OK2').OnChange := evt_CB_OK2   ;

    dbeMOnto.Text :=  FloatToStrF(DM1.OperClientDataSet(cdsQry2,'SUM(TRANSMTO)',''), ffNumber, 10, 2);
    dbgdetAportes.ColumnByName('TRANSMTO').FooterValue := dbemonto.Text ;    
end;

procedure TFCaptaAportes.dbgDetAportesCellChanged(Sender: TObject);
begin
   if dbgdetaportes.getactivefield.fieldname = 'TRANSMTO' THEN
      if cdsqry2.fieldbyname('CB_OK2').AsString <> '1' then
         dbgdetaportes.Setactivefield('CB_OK')
      else
         currMontoOriginal := cdsqry2.FieldByName('TRANSMTO').AsCurrency ;

   if dbgdetaportes.getactivefield.fieldname = 'CB_OK2' THEN
      if cdsqry2.fieldbyname('CB_OK').AsString <> '1' then
         dbgdetaportes.Setactivefield('CB_OK');

end;

procedure TFCaptaAportes.cb_ok2Validate(Sender: TField);
begin
  if sender.AsString = '1' then
   if sender.DataSet.fieldbyname('CB_OK').ASSTRING <> '1' Then
      Raise exception.create('Marque primero la Cuota para Cobranza');
end;

procedure TFCaptaAportes.blanquea_parcial;
var
  cdsClone : Twwclientdataset ;
  i : integer ;
begin
  cdsClone := TwwClientDataSet.Create(self);
  cdsClone.CloneCursor(cdsqry2,true);
  for i := 1 to cdsClone.RecordCount do
  begin
     cdsClone.RecNo := i ;
     if (cdsClone.FieldByName('CB_OK2').AsString = '1') then
     begin
        cdsClone.Edit ;
        cdsClone.FieldByName('CB_OK2').AsString := '0' ;
        cdsClone.FieldByName('TRANSMTO').AsCURRENCY := cdsClone.FieldByName('TRANSMTOORI').AsCURRENCY ;
        cdsClone.Post ;
        break;
     end ;
  end ;
  cdsClone.Free ;
  cdsClone  := nil ;
end;

procedure TFCaptaAportes.cb_ok2Change(Sender: TField);
var
   evt_TRANSMTO : TFieldNotifyEvent ;
begin
   blanquea_parcial ;
   if sender.value = '0' then
   begin
     evt_TRANSMTO := Sender.DataSet.FieldByName('TRANSMTO').OnChange ;
     Sender.DataSet.FieldByName('TRANSMTO').OnChange := nil ;
     Sender.DataSet.FieldByName('TRANSMTO').AsCurrency := Sender.DataSet.FieldByName('TRANSMTOORI').AsCurrency ;
     Sender.DataSet.FieldByName('TRANSMTO').OnChange := evt_TRANSMTO ;
   end ;

   Sender.DataSet.Post ;
   dbeMOnto.Text :=  FloatToStrF(DM1.OperClientDataSet(cdsQry2,'SUM(TRANSMTO)',''), ffNumber, 10, 2);
   dbgdetAportes.ColumnByName('TRANSMTO').FooterValue := dbemonto.Text ;
end;

procedure TFCaptaAportes.transmtoValidate(Sender: TField);
begin
{   20030619
   if Sender.AsCurrency > sender.DataSet.fieldbyname('TRANSMTOORI').AsCurrency Then
      Raise exception.create('NO se exceda del Monto x Cobrar para este Periodo');
}
end;

procedure TFCaptaAportes.transmtoChange(Sender: TField);
begin
   if dbgdetAportes.getActiveField.FieldName = 'TRANSMTO' then
   begin
      dbeMonto.Text := currtostr(Sumariza + sender.AsCurrency);
      dbgdetAportes.ColumnByName('TRANSMTO').FooterValue :=
          FloatToStrF( strtoCurr(dbeMonto.Text) , ffNumber, 10, 2);
   end ;
end;

procedure TFCaptaAportes.ConfiguraGridAdicion;
begin
   dbgDetAportes.Selected.Clear;
   dbgDetAportes.Selected.Add('TRANSANO'#9'6'#9'Año'#9'T');
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
   TNumericField(cdsQry2.FieldByName('TRANSMTO')).EditFormat    := '########0.00';
   TNumericField(cdsQry2.FieldByName('TRANSMTOORI')).DisplayFormat := '###,###,##.00';
   TNumericField(cdsQry2.FieldByName('TRANSMTOORI')).EditFormat    := '########.00';
end;

procedure TFCaptaAportes.ConfiguraGridEdicion;
begin
   dbgDetAportes.Selected.Clear;
   dbgDetAportes.Selected.Add('TRANSANO'#9'6'#9'Año'#9'T');
   dbgDetAportes.Selected.Add('TRANSMES'#9'4'#9'Mes'#9'T');
   dbgDetAportes.Selected.Add('TRANSMTO'#9'10'#9'Cobrado'#9'F');
   dbgDetAportes.ApplySelected;

   TNumericField(cdsQry2.FieldByName('TRANSMTO')).DisplayFormat := '###,###,##0.00';
   TNumericField(cdsQry2.FieldByName('TRANSMTO')).EditFormat    := '########0.00';
end;

procedure TFCaptaAportes.LimpiaCamposEdicion;
begin
   dblcFormaPago.Clear;
   dbeFormaPago.Clear;
   dblcBanco.Clear;
   dbeBanco.Clear;
   dblcCtaCte.Clear;
   dbeNumOpe.Clear;
   dbdtpFechaOperacion.Date := Date ;
   dblcMoneda.Clear;
   dbeMoneda.Clear;
   dbeMonto.Clear;
   dblcAgencia.Clear;
   dbeAgencia.Clear;
   dbeNumOpe.Clear;
end;

procedure TFCaptaAportes.bbtnAceptarClick2(Sender: TObject);
var
    xSQL, sUProceso, sUPago, sDepto : String;
    i : Integer ;
    strAPOSEC : String ;
    iCorrAPOSEC : integer ;
    sCIUDID , sFORPAGOABR :String ;
    sRecibo : String ;
begin

    ValidaINgresoAportes ;
    if bF_Efectivo then
       sRecibo := RecuperaCorrelativo;
    strAPOSEC := RecuperaPeriodo(dbdtpFechaOperacion.Date) ;
//    iCorrAPOSEC := round(DM1.OperClientDataSet(DM1.cdsTransacciones,'COUNT(*)','APOSEC='+QuotedStr(strAPOSEC))) ;
    iCorrAPOSEC := round(DM1.OperClientDataSet(DM1.cdsTransacciones,'MAX(APOSECID)','')) ;
    Inc(iCorrAPOSEC);
    //
    sCIUDID     := DM1.DisplayDescrip('prvTGE','APO101','CIUDID',
                   'UPROID ='+QuotedStr(trim(dblcdUPro.Text))
                   + ' AND USEID =' + QuotedStr(trim(dblcdUSE.Text)), 'CIUDID');

    if dm1.cdsFPagoAporte.Locate('FORPAGOID',VarArrayOf([trim(dblcFormaPago.text)]),[]) then
       sFORPAGOABR := dm1.cdsFPagoAporte.fieldbyName('FORPAGOABR').AsString ;
    //
    with cdsQry2 do
    begin
      DisableControls ;
      First ;
      for i := 1 to RecordCount do
      begin
         RecNo := i ;
         if (FieldByName('CB_OK').AsString = '1') and (FieldByName('CB_OK').AsCurrency > 0) then
         begin
////////777777777777777777777777777777777777777777777777777777777777777777////////////
          DM1.cdsTransacciones.Append;

          //PERIODOS DE APORTE Y COBRANZA
          DM1.cdsTransacciones.FieldByName('TRANSANO').AsString    := cdsQry2.FieldByName('TRANSANO').AsString ;
          DM1.cdsTransacciones.FieldByName('TRANSMES').AsString    := cdsQry2.FieldByName('TRANSMES').AsString ;
//WMC 20030616          If (Trim(DM1.cdsFPagoAporte.FieldByName('FORPAGOID').AsString)='01') OR
//WMC 20030616             (Trim(DM1.cdsFPagoAporte.FieldByName('FORPAGOID').AsString)='09') Then
          If (Trim(DM1.cdsFPagoAporte.FieldByName('FPLANILLA').AsString)='S') Then
          begin
            DM1.cdsTransacciones.FieldByName('APOSEC').AsString :=
                cdsQry2.FieldByName('TRANSANO').AsString + cdsQry2.FieldByName('TRANSMES').AsString ;
                DM1.cdsTransacciones.FieldbyName('APOSECID').AsInteger   :=
                     round(DM1.OperClientDataSet(DM1.cdsTransacciones,'COUNT(*)','APOSEC='+QuotedStr(DM1.cdsTransacciones.FieldByName('APOSEC').AsString))) ; ;
          end
          Else
          begin
            DM1.cdsTransacciones.FieldByName('APOSEC').AsString := strAPOSEC;
            DM1.cdsTransacciones.FieldbyName('APOSECID').AsInteger   := iCorrAPOSEC ;
          end;
          //DATOS RELACIONADOS CON BANCOS
          DM1.cdsTransacciones.FieldByName('BANCOID').AsString     := dblcBanco.Text;
          DM1.cdsTransacciones.FieldByName('AGENBANCOID').AsString := dblcAgencia.Text;
          DM1.cdsTransacciones.FieldByName('CCBCOID').AsString     := dblcCtaCte.Text;

          DM1.cdsTransacciones.FieldByName('TRANSNOPE').AsString   := dbeNumOpe.Text;
          if bF_Efectivo then
          begin
             dbeNumOpe.Text  := sRecibo ;
             DM1.cdsTransacciones.FieldByName('TRANSNOPE').AsString   := sRecibo ;
             DM1.cdsTransacciones.FieldByName('FLGRECIBO').AsString   := 'S' ;             
          end ;
          DM1.cdsTransacciones.FieldByName('TRANSFOPE').AsDateTime := dbdtpFechaOperacion.Date;

          DM1.cdsTransacciones.FieldByName('TMONID').AsString      := 'N';
          DM1.cdsTransacciones.FieldByName('TRANSID').AsString     := dblcTransaccion.Text;
          DM1.cdsTransacciones.FieldByName('ASOID').AsString       := dblcdCodigo.Text;
          DM1.cdsTransacciones.FieldByName('ASOCODMOD').AsString   := dbeCodigoModular.Text;
          DM1.cdsTransacciones.FieldByName('ASOAPENOM').AsString   := xAsoApenom;
          DM1.cdsTransacciones.FieldByName('USEID').AsString       := dblcdUse.Text;
          DM1.cdsTransacciones.FieldByName('USEABR').AsString      := edtUse.Text;
//          DM1.cdsTransacciones.FieldByName('UPROID').AsString      := DM1.DisplayDescrip('prvTGE', 'APO101', 'UPROID', 'USEID ='+ QuotedStr(dblcdUse.Text),'UPROID');
          DM1.cdsTransacciones.FieldByName('UPROID').AsString      := Trim(dblcdUPro.Text);
          sUProceso := DM1.DisplayDescrip('prvTGE','APO102','UPROABR','UPROID ='+ QuotedStr(DM1.cdsTransacciones.FieldByName('UPROID').AsString), 'UPROABR');
          DM1.cdsTransacciones.FieldByName('UPROABR').AsString     := sUProceso;
//          DM1.cdsTransacciones.FieldByName('UPAGOID').AsString     := DM1.DisplayDescrip('prvTGE', 'APO101', 'UPAGOID', 'USEID = '+ QuotedStr(dblcdUse.Text), 'UPAGOID');
          DM1.cdsTransacciones.FieldByName('UPAGOID').AsString     := trim(dblcdUPago.Text);
          sUPago    := DM1.DisplayDescrip('prvTGE','APO103','UPAGOABR','UPAGOID ='+QuotedStr( DM1.cdsTransacciones.FieldByName('UPAGOID').AsString), 'UPAGOABR');
          DM1.cdsTransacciones.FieldByName('UPAGOABR').AsString    := sUPago;
          DM1.cdsTransacciones.FieldByName('DPTOID').AsString      := DM1.DisplayDescrip('prvTGE', 'APO101', 'DPTOID', 'USEID = '+QuotedStr(dblcdUse.Text), 'DPTOID');
          sDepto    := DM1.DisplayDescrip('prvTGE','APO158','DPTOABR ','DPTOID ='+ QuotedStr(DM1.cdsTransacciones.FieldbyName('DPTOID').AsString), 'DPTOABR');
          DM1.cdsTransacciones.FieldByName('DPTOABR').AsString     := sDepto;
          DM1.cdsTransacciones.FieldByName('ASOCODAUX').AsString   := xASOCODAUX ;


          DM1.cdsTransacciones.FieldByName('FORPAGOID').AsString   := dblcFormaPago.Text;
          DM1.cdsTransacciones.FieldByName('FORPAGOABR').AsString  := sFORPAGOABR;
          DM1.cdsTransacciones.FieldByName('CIUDID').AsString      := sCIUDID;
          DM1.cdsTransacciones.FieldByName('TRANSMTO').AsCurrency  := cdsQry2.FieldByName('TRANSMTO').AsCurrency;
          DM1.cdsTransacciones.FieldByName('TRANSMTODEV').AsString := '0';
          DM1.cdsTransacciones.FieldByName('INTERESMTO').AsString  := '0';
          DM1.cdsTransacciones.FieldByName('BONUSMTO').AsString    := '0';
          DM1.cdsTransacciones.FieldByName('CIAID').AsString  	   := wCiaDef;
          DM1.cdsTransacciones.FieldByName('APOFDEV').AsString     := '';
          DM1.cdsTransacciones.FieldByName('TRANSFFCIND').AsString := '';
          DM1.cdsTransacciones.FieldByName('TRANSINTID').AsString  := xTrans;
          //DATOS DATAWAREHOUSE
          xSQL := 'Select * From TGE114 Where FECHA=TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYY')+')';
          DM1.Filtracds(DM1.cdsQry,xSQL);
          DM1.cdsTransacciones.FieldByName('TRANSTRIM').AsString  := DM1.cdsQry.FieldByName('FECTRIM').AsString;
          DM1.cdsTransacciones.FieldByName('TRANSSEM').AsString	  := DM1.cdsQry.FieldByName('FECSEM').AsString;
          DM1.cdsTransacciones.FieldByName('TRANSAAMM').AsString  := DM1.cdsQry.FieldByName('FECANO').AsString+
                                                                     DM1.cdsQry.FieldByName('FECMES').AsString;
          DM1.cdsTransacciones.FieldByName('TRANSAATRI').AsString := DM1.cdsQry.FieldByName('FECAATRI').AsString;
          DM1.cdsTransacciones.FieldByName('TRANSAASEM').AsString := DM1.cdsQry.FieldByName('FECAASEM').AsString;
          DM1.cdsQry.Close;
          //DATOS LOG
          DM1.cdsTransacciones.FieldbyName('USUARIO').AsString     := DM1.wUsuario;
          DM1.cdsTransacciones.FieldbyName('FREG').AsDateTime      := Date;
          DM1.cdsTransacciones.FieldbyName('HREG').AsDateTime      := Date+SysUtils.Time;

          cdsPost(DM1.cdsTransacciones);
          DM1.cdsTransacciones.Post;
////////777777777777777777777777777777777777777777777777777777777777777777////////////
         end ;
      end ;

      if dm1.cdstransacciones.ApplyUpdates(0) > 0 then
         MessageDlg('Error en la Grabación', mtWarning, [mbOk], 0)
      else
      begin
         MessageDlg('Grabación Exitosa', mtInformation, [mbOk], 0) ;
         DesHabilitaPanelEdicion ;
         if bF_Efectivo then
         begin
            Actualiza;
            bbtnImprimir.Visible := TRue ;
         end
         else
         begin
            //
          xSql := 'INSERT INTO APO312 (ASOID,TRANSNOPE,TRANSFOPE) VALUES ('''+
           DM1.cdsAsociados.FieldByName('ASOID').AsString+''',''' +
           dbeNumOpe.Text + ''',TO_DATE(''' + FormatDateTime('dd/mm/yyyy',dbdtpFechaOperacion.date) + ''',''DD/MM/YYYY''))';
          DM1.DCOM1.AppServer.EjecutaSQL( xsql ) ;
            //
         end ;
      end ;
      First ;

      EnableControls  ;
    end ;

    Z2bbtnCancel.Enabled  := True  ;
    Z2bbtnAceptar.Enabled := True  ;
    QuitarPendientes ;
end;

procedure TFCaptaAportes.ConfiguraAdicion;
begin
    dblcbanco   . Enabled := False ;
    dblcAgencia . Enabled := False ;
    dblcCtaCte  . Enabled := False ;
end;

procedure TFCaptaAportes.dblcFormaPagoChange(Sender: TObject);
begin
   //Buscar en clientdataset Base
   if trim(dblcFormaPago.Text)= '' then
   begin
	dbeFormaPago.Clear ;
	dblcBanco.Clear ;
	dbeBanco.Clear ;
	dblcAgencia.Clear ;
	dbeAgencia.Clear ;
	dblcCtaCte.Clear ;
	dbeNumOpe.Clear ;

	dblcBanco.Enabled   := False ;
	dblcAgencia.Enabled := False ;
	dblcCtaCte.Enabled  := False ;
   end ;
   
   if dblcformaPago.LookUpTable.Locate('FORPAGOID',
        VarArrayOf([trim(dblcFormaPago.text)]),[]) then
   begin
        dbeFormaPago.Text := dblcformaPago.LookUpTable.FieldBYName('FORPAGODES').AsString ;
        if DM1.cdsFPagoAporte.Locate('FORPAGOID',
           VarArrayOf([trim(dblcFormaPago.text)]),[]) then
        begin
            dblcBanco.Enabled   := (DM1.cdsFPagoAporte.FieldByName('FOROPEBCON').AsString = 'S') ;
            dblcAgencia.Enabled := False ;
            dblcCtaCte.Enabled  := False ;
        end ;
   end
   else
   begin
	dbeFormaPago.Clear ;
	dblcBanco.Clear ;
	dbeBanco.Clear ;
	dblcAgencia.Clear ;
	dbeAgencia.Clear ;
	dblcCtaCte.Clear ;
	dbeNumOpe.Clear ;

	dblcBanco.Enabled   := False ;
	dblcAgencia.Enabled := False ;
	dblcCtaCte.Enabled  := False ;

   end ;
end;

procedure TFCaptaAportes.dblcBancoChange(Sender: TObject);
begin
   if dm1.cdsBancos.Locate('BANCOID',VarArrayOf([trim(dblcBanco.Text)]),[]) then
   begin
      dbeBanco.Text := dm1.cdsBancos.FieldByName('BANCONOM').AsString ;
      if bF_Efectivo then
        Exit ;
      if trim(dbeNumOpe.Text) = '' then
         dbeNumOpe.Text := DM1.cdsBancos.Fieldbyname('BANCOPRF').AsString ;
      DM1.FiltraCDS(DM1.cdsCtaCtes,
        'Select * From TGE106 Where CIAID ='+QuotedStr(wCiaDef)+' And BANCOID ='+QuotedStr(dblcBanco.Text));
      DM1.FiltraCDS(DM1.cdsAgenciaBco,
        'Select * From COB102 Where BANCOID ='+QuotedStr(dblcBanco.Text));
      dblcCtaCte.Enabled   := ( DM1.cdsCtaCtes.RecordCount > 0 );
      dblcAgencia.Enabled    := ( DM1.cdsAgenciaBco.RecordCount > 0 );
        
      if DM1.cdsAgenciaBco.RecordCount = 0 then
      begin
           MessageDlg('¡¡OJO!!Este Banco no Tiene Agencias Registradas', mtWarning, [mbOk], 0);
      end ;
      if DM1.cdsCtaCtes.RecordCount = 0 then
      begin
           MessageDlg('¡¡OJO!!Este Banco no Tiene Ctas. Ctes. Registradas', mtWarning, [mbOk], 0);
      end ;

   end
   else
   begin

      dbeBanco.Clear ;
      dblcAgencia.Clear ;
      dbeagencia.Clear ;
      dblcCtaCte.Clear ;

      dblcAgencia.Enabled := False ;
      dblcCtaCte.Enabled  := False ;

   end;
end;

procedure TFCaptaAportes.dblcAgenciaChange(Sender: TObject);
begin

   if not dblcAgencia.LookUpTable.Locate(dblcAgencia.Lookupfield,VarArrayOf([trim(dblcAgencia.Text)]),[]) then
      dbeAgencia.Clear
   else
      dbeAgencia.Text := dblcAgencia.LookUpTable.FieldByName('AGENBCODES').AsString ;

end;

procedure TFCaptaAportes.dblcCtaCteExit(Sender: TObject);
begin
   if not dblcCtaCte.LookUpTable.Locate(dblcCtaCte.Lookupfield,VarArrayOf([trim(dblcCtaCte.Text)]),[]) then
      dblcCtaCte.Clear ;
end;

procedure TFCaptaAportes.dblcFormaPagoExit(Sender: TObject);
begin
  if trim(dbeFormaPago.Text) = '' then
     dblcFormaPago.Clear ;
end;

procedure TFCaptaAportes.dblcBancoExit(Sender: TObject);
begin
  if trim(dbeBanco.Text) = '' then
     dblcBanco.clear ;
end;

procedure TFCaptaAportes.dblcAgenciaExit(Sender: TObject);
begin
  if trim(dbeAgencia.Text) = '' then
     dblcAgencia.Clear ;
end;

procedure TFCaptaAportes.dbeMontoEnter(Sender: TObject);
begin
   if cdsQry2.State in [dsinsert,dsedit] then
      cdsqry2.Post ;
end;

procedure TFCaptaAportes.blanquea_detalle;
var
  bmk : TBookMarkStr ;
  i : integer ;
begin
  QuitaEventosCampos ;
  bmk := cdsQry2.Bookmark ;
  cdsQry2.DisableControls ;

  for i := 1 to cdsqry2.RecordCount do
  begin
   with cdsQry2 do
   begin
    RecNo := i ;
    Edit ;
    FieldByName('CB_OK').AsString := '0' ;
    FieldByName('CB_OK2').AsString := '0' ;
    FieldByName('TRANSMTO').AsCURRENCY := 0 ;
    Post ;
   end ;
  end ;

  cdsqry2.Bookmark := bmk ;
  cdsQry2.EnableControls ;
  PonEventosCampos ;
  dbgDetAportes.ColumnByName('TRANSMTOORI').FooterValue := FloatToStrF(0, ffNumber, 10, 2);
  dbgDetAportes.ColumnByName('TRANSMTO').FooterValue := FloatToStrF(0, ffNumber, 10, 2);

end;

procedure TFCaptaAportes.PonEventosCampos;
begin
   cdsQry2.FieldByName('CB_OK').OnChange := cb_okChange ;
   cdsQry2.FieldByName('CB_OK2').OnChange := cb_ok2Change ;
   cdsQry2.FieldByName('CB_OK2').Onvalidate := cb_ok2validate ;
   cdsQry2.FieldByName('TRANSMTO').Onvalidate := transmtovalidate ;
   cdsQry2.FieldByName('TRANSMTO').OnChange := transmtoChange ;
end;

procedure TFCaptaAportes.QuitaEventosCampos;
begin
   cdsQry2.FieldByName('CB_OK').OnChange := nil ;
   cdsQry2.FieldByName('CB_OK2').OnChange := nil ;
   cdsQry2.FieldByName('CB_OK2').Onvalidate := nil ;
   cdsQry2.FieldByName('TRANSMTO').Onvalidate := nil ;
   cdsQry2.FieldByName('TRANSMTO').OnChange := nil ;
end;

procedure TFCaptaAportes.recalcula_Detalle;
var
  bmk : TBookMarkStr ;
  currMonto : currency ;
  i :integer ;
////*////
  procedure AdicionaNuevo;
  var
     Present: TDateTime;
     nYear, nMonth, nDay : word;
     bmk : TBookmark ;
     currUltimoAporte : Currency ;

  begin
     cdsAporte.Last ;
     currUltimoAporte := cdsAporte.fieldbyName('APOVALOR').AsCurrency ;

     if cdsQry2.recordcount <> 0 then
     begin
      cdsqry2.Last ;
      nYear  := cdsQry2.FieldByName('TRANSANO').asinteger ;
      nMonth := cdsQry2.FieldByName('TRANSMES').asinteger ;
     end
     else
     begin
      if dm1.cdstransacciones.recordcount > 0 then
      begin
        dm1.cdstransacciones.disableControls;
        bmk := dm1.cdstransacciones.GetBookmark ;
        dm1.cdstransacciones.Last ;
        nYear  := dm1.cdstransacciones.FieldByName('TRANSANO').AsInteger ;
        nMonth := dm1.cdstransacciones.FieldByName('TRANSMES').AsInteger ;
        dm1.cdsTransacciones.GotoBookmark(bmk);
        dm1.cdsTransacciones.FreeBookmark(bmk);
        dm1.cdsTransacciones.EnableControls ;
      end
      else
      begin
        nYear  := strtoint(strAnoIni);
        nMonth := strtoint(strMesIni);
      end ;
     end ;

     if nMonth = 12 then
     begin
        nMonth := 1 ;
        inc(nYear);
     end
     else
        inc(nMonth);

     cdsQry2.Append;

     cdsQry2.FieldByName('TRANSANO').AsString := dm1.StrZero(inttostr(nYear),4);
     cdsQry2.FieldByName('TRANSMES').AsString := dm1.StrZero(inttostr(nMonth),2);
     cdsQry2.fieldByName('CB_OK').AsString         := '1';
     if cdsAporte.locate('APOANO;APOMES',
          VarArrayOf([cdsQry2.FieldByName('TRANSANO').AsString,
                      cdsQry2.FieldByName('TRANSMES').AsString]),[]) then
     begin
       cdsQry2.FieldByName('TRANSMTOORI').AsCurrency := cdsAporte.fieldbyname('APOVALOR').AsCurrency ;
       cdsQry2.FieldByName('TRANSMTO').AsCurrency    := cdsAporte.fieldbyname('APOVALOR').AsCurrency ;
     end
     else
     begin
       cdsQry2.FieldByName('TRANSMTOORI').ASCurrency := currUltimoAporte ;
       cdsQry2.FieldByName('TRANSMTO').ASCurrency :=    currUltimoAporte ;
     end ;

     cdsqry2.next ;
  end;
begin
  blanquea_detalle ;
  QuitaEventosCampos ;
//  bmk := cdsQry2.Bookmark ;
  cdsQry2.DisableControls ;

  currMonto := strtocurr(dbeMonto.Text);
  with cdsqry2 do
  begin
    for i := 1 to RecordCount do
    begin
      RecNo := i ;
      if currMonto > FieldByName('TRANSMTOORI').AsCurrency then
      begin
        Edit ;
        FieldByName('CB_OK').AsString := '1' ;
        FieldByName('CB_OK2').AsString := '0' ;
        FieldByName('TRANSMTO').AsCURRENCY := FieldByName('TRANSMTOORI').AsCURRENCY ;
        Post ;
        currMonto := currMonto - FieldByName('TRANSMTOORI').AsCURRENCY ;
      end
      else
      begin
        Edit ;
        FieldByName('CB_OK').AsString := '1' ;
        FieldByName('CB_OK2').AsString := '1' ;
        FieldByName('TRANSMTO').AsCURRENCY := currMonto ;
        Post ;
        currMonto := 0 ;
        break ;
      end
    end ;
  end ;
  //Verificar si todavía queda dinero por distribuir
  if currMonto > 0 then
  begin
    with cdsQry2 do
    begin
     while currMonto > 0 do
     begin
      AdicionaNuevo ;
//
      if currMonto > FieldByName('TRANSMTOORI').AsCurrency then
      begin
        Edit ;
        FieldByName('CB_OK').AsString := '1' ;
        FieldByName('CB_OK2').AsString := '0' ;
        FieldByName('TRANSMTO').AsCURRENCY := FieldByName('TRANSMTOORI').AsCURRENCY ;
        Post ;
        currMonto := currMonto - FieldByName('TRANSMTOORI').AsCURRENCY ;
      end
      else
      begin
        Edit ;
        FieldByName('CB_OK').AsString := '1' ;
        FieldByName('CB_OK2').AsString := '1' ;
        FieldByName('TRANSMTO').AsCURRENCY := currMonto ;
        Post ;
        currMonto := 0 ;
        break ;
      end;
//
     end ;
    end ;
  end ;
//  cdsqry2.Bookmark := bmk ;
  cdsQry2.EnableControls ;
  PonEventosCampos ;
  dbgDetAportes.ColumnByName('TRANSMTOORI').FooterValue := FloatToStrF(DM1.OperClientDataSet(cdsQry2,'SUM(TRANSMTOORI)',''), ffNumber, 10, 2);
  dbgDetAportes.ColumnByName('TRANSMTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(cdsQry2,'SUM(TRANSMTO)',''), ffNumber, 10, 2);
end;

function TFCaptaAportes.QuitaComas(strNumero: String):Currency;
var
    iPos : Integer ;
begin
    iPos := AnsiPos(',',strNumero);
    while iPos > 0 do
    begin
       if ipos = 1 then
         strNumero := copy(strNumero,2,length(strNUmero))
       else
         strNumero := copy(strnumero,1,iPos - 1) + copy(strnumero,iPos + 1 ,length(strNUmero));
       iPos := AnsiPos(',',strNumero);
    end ;
    result := StrToCurr(strNumero);
end;

procedure TFCaptaAportes.ValidaINgresoAportes;
begin
   if cdsQry2.State in [dsInsert,dsEdit] then
      cdsQry2.Post ;
   If (trim(dbeFormaPago.Text) = '') Then
   begin
     Beep;
     dblcFormaPago.SetFocus;
     Raise exception.Create('Debe Seleccionar la Forma de Pago');
   end;

   DM1.cdsFPagoAporte.Locate('FORPAGOID',VarArrayOf([trim(dblcFormaPago.text)]),[]);
   If DM1.cdsFPagoAporte.FieldByName('FOROPEBCON').AsString = 'S' then

      begin
       If trim(dbeBanco.Text) = '' Then
        begin
         Beep;
         dblcBanco.SetFocus;
         Raise exception.Create('Debe seleccionar el Banco');
        end;

       If trim(dblcCtaCte.Text) = '' Then
        begin
         Beep;
         dblcCtaCte.SetFocus;
         Raise exception.Create('Debe seleccionar la Cuenta Corriente');
        end;

   end;
   if bF_Efectivo and (trim(dbeBanco.Text) = '') then
   begin
     Beep;
     dblcBanco.SetFocus;
     Raise exception.Create('Debe seleccionar la Caja');
   end ;
   If (trim(dbeNumOpe.Text)='') and not bF_Efectivo Then
    begin
     Beep;
     dbeNumOpe.SetFocus;
     Raise Exception.CReate('Debe registrar el Numero Operación');
    end;

   If trim(dbdtpFechaOperacion.Text) = '' Then
    begin
     Beep;
     dbdtpFechaOperacion.SetFocus;
     Raise exception.Create('Debe Ingresar la Fecha de Operación');
    end;

   If (trim(dbeMonto.Text) = '') or (trim(dbeMonto.Text) = '.') Then
    begin
     Beep;
     dbeMonto.SetFocus;
     Raise exception.CReate('Debe registrar Monto del Aporte');
    end
   else
    if quitaComas(trim(dbeMonto.Text)) = 0 then
    begin
     Beep;
     dbeMonto.SetFocus;
     Raise exception.CReate('Debe registrar Monto del Aporte');
    end;

end;

function TFCaptaAportes.Sumariza:Currency;
var
  cdsClone : Twwclientdataset ;
  i : integer ;
begin
  result := 0;
  cdsClone := TwwClientDataSet.Create(self);
  cdsClone.CloneCursor(cdsqry2,true);
  for i := 1 to cdsClone.RecordCount do
  begin
     cdsClone.RecNo := i ;
     if (cdsClone.FieldByName('CB_OK').AsString = '1') and
        (cdsClone.FieldByName('TRANSANO').AsString + cdsClone.FieldByName('TRANSMES').AsString
         <> cdsQry2.FieldByName('TRANSANO').AsString + cdsQry2.FieldByName('TRANSMES').AsString) then
        result := result + cdsClone.FieldByName('TRANSMTO').AsCURRENCY ;
  end ;
  cdsClone.Free ;
  cdsClone  := nil ;
end;

function TFCaptaAportes.RecuperaPeriodo;
var
  iAno , iMes , iDia : Word ;
begin
  DecodeDate(dtFecha,iano,imes,idia);
  result := dm1.strzero(intTostr(iano),4) + dm1.strzero(inttostr(iMes),2) ;
end;

procedure TFCaptaAportes.DesHabilitaPanelEdicion;
begin
    dbgdetAportes.ReadOnly     := True  ;
    wwDBGrid1IButton . Enabled := False ;
    bbtnAceptar . Enabled      := False ;
    Panel1 . Enabled           := False ;
end;

procedure TFCaptaAportes.HabilitaPanelEdicion;
begin
    dbgdetAportes.ReadOnly     := False ;
    wwDBGrid1IButton . Enabled := True ;
    bbtnAceptar . Enabled      := True ;
    Panel1 . Enabled           := True ;
end;

procedure TFCaptaAportes.bbtnNuevoClick(Sender: TObject);
begin
//   if bF_Efectivo then
   if dbgAportes.DataSource.DataSet.RecordCount = 0 then
   begin
      if SpeAnnos.Tag <> 0 then
      begin
         strAnoIni := dm1.StrZero(inttostr(SpeAnnos.Tag),4);
         strMesIni := dm1.StrZero(inttostr(SpEmeses.Tag),2);
         SpeAnnos.Tag := 0 ;
         SpEmeses.Tag := 0 ;
      end ;
   end ;

      MostrarPendientes ;
   QuitaEventosCampos ;
   bbtningresaAporte.OnClick( bbtningresaAporte );

end;

procedure TFCaptaAportes.ValidarAdicionAportes;
begin
{ wmc
  if TRIM(dblctipoasoc.text) = 'CE' then
     Raise exception.CReate('No se pueden ingresar Aportes de un docente Cesante');
}
{ wmc 16062003
  if strAnoFin + strMesFin < strAnoIni + strMesIni then
     Raise exception.CReate('Hay una Inconsistencia entre la Fecha de Resolución y/o ' + char(13) +
                            'Periodo del Primer Aporte y La Fecha de Cese -- ¡¡rEVISE!!'    );
}
end;

procedure TFCaptaAportes.PonEventosCabecera;
begin
	dblcFormaPago.Onchange  := dblcFormaPagochange ;
	dblcFormaPago.Onexit    := dblcFormaPagoexit   ;
	dblcBanco.OnChange      := dblcBancoChange    ;
	dblcBanco.Onexit        := dblcBancoexit      ;
	dblcAgencia.Onchange    := dblcAgenciachange  ;
	dblcAgencia.Onexit      := dblcAgenciaexit    ;
	dblcCtaCte.Onexit       := dblcCtaCteexit     ;
	dbeMonto.OnEnter        := dbeMontoEnter      ;
	dbeMonto.OnExit         := dbeMontoExit       ;
	dbeMonto.OnKeyPress     := dbeMontoKeyPress   ;
end;

procedure TFCaptaAportes.QuitaEventosCabecera;
begin
	dblcFormaPago.Onchange  := nil;
	dblcFormaPago.Onexit    := nil;
	dblcBanco.OnChange      := nil;
	dblcBanco.Onexit        := nil;
	dblcAgencia.Onchange    := nil;
	dblcAgencia.Onexit      := nil;
	dblcCtaCte.Onexit       := nil;
	dbeMonto.OnEnter        := nil;
	dbeMonto.OnExit         := nil;
	dbeMonto.OnKeyPress     := nil;
end;

procedure TFCaptaAportes.FormCreate(Sender: TObject);
var
  sUsuario  : String ;
begin
   //Inicialización de Datos
   bF_Efectivo  := False ;
   sCajaDefault := '' ;
   //Verificar si es Usuario autorizado para la forma de pago efectivo
   //1.Buscar forma de pAGO EFECTIVO
   sUsuario := DM1.DisplayDescrip('prvTGE', 'COB114', '*', 'USERID = '''+DM1.wUsuario+'''', 'USERID');
   if trim(sUsuario)<>'' then
   begin
     bF_Efectivo := True ;
     sCajaDefault := dm1.cdsQry.FieldByName('CAJAID').AsString ;
     if dm1.cdsFPagoAporte.Locate('TIPO',VarArrayOf(['E']),[]) then
        sEfectivo := dm1.cdsFPagoAporte.FieldByName('FORPAGOID').AsString ;
     lblBanco.Caption := 'Caja' ;
     lblOperacion.Caption := 'Recibo' ;
     //Filtrar Cajas
     sSQL := 'SELECT BANCOID, BANCONOM, BANCOPRF FROM TGE105 WHERE BCOTIPCTA = ''C'' ORDER BY BANCOID';
     DM1.FiltraCDS(DM1.cdsBancos, sSQL);
   end
   else
   begin
     DM1.cdsFPagoAporte.Filter := 'TIPO=''E''' ;
     DM1.cdsFPagoAporte.Filtered := True ;
     if DM1.cdsFPagoAporte.recordcount > 0 then
     begin
        while not dm1.cdsFPagoAporte.eof do
           dm1.cdsFPagoAporte.delete ;

     end ;
     DM1.cdsFPagoAporte.Filter := '' ;
     DM1.cdsFPagoAporte.Filtered := False ;
     //Filtrar Bancos
     sSQL := 'SELECT BANCOID, BANCONOM, BANCOPRF FROM TGE105 WHERE BCOTIPCTA = ''B'' ORDER BY BANCOID';
     DM1.FiltraCDS(DM1.cdsBancos, sSQL);
   end;
   //Recuperación de Datos Generales de Caja
   dm1.cdsCia.Close;
   dm1.cdsCia.DataRequest('SELECT * FROM TGE101 WHERE CIARETIGV=''N''');
   dm1.cdsCia.Open;

   xCiaid := dm1.cdsCia.FieldByName('CIAID').AsString ;

   xSql := 'select cptoid,cuentaid from caja201 where CPTOEQUI ='+quotedstr('RECAUDAAPO');
   dm1.cdsqry.close;
   dm1.cdsqry.datarequest(xSql);
   dm1.cdsqry.open;
   xCptoid := dm1.cdsqry.FieldByName('CPTOID').AsString; //DM1.cdsCBcos.FieldByName('CPTOID').AsString;
   xCuentaid := dm1.cdsqry.FieldByName('CUENTAID').AsString; //DM1.cdsCBcos.FieldByName('CTAPRINC').AsString;
   xClauxid := 'AS';
   wRepFecServi  := 'SYSDATE';
   wRepTimeServi := 'SYSDATE';
   xSql := ' SELECT SYSDATE FECHA from DUAL ' ;
   dm1.cdsqry.close;
   dm1.cdsqry.datarequest(xSql);
   dm1.cdsqry.open;

   xFechaSys := dm1.cdsQry.FieldByName('FECHA').AsDateTime ;

   xWhere := 'FLGOFICIO = '+quotedstr('N');
   xFPagoid := DM1.DisplayDescrip('prvSQL','CRE104','FPAGOID',xWhere,'FPAGOID');
   wTCCompra := 'TCAMVBC' ;
end;

procedure TFCaptaAportes.FormDestroy(Sender: TObject);
begin

   sSQL := 'SELECT * FROM COB101 WHERE FORPAGFAPO LIKE ''%S%'' ORDER BY FORPAGOID';
   DM1.FiltraCDS(DM1.cdsFPagoAporte, sSQL);
   sSQL := 'SELECT BANCOID, BANCONOM, BANCOPRF FROM TGE105';
   DM1.FiltraCDS(DM1.cdsBancos, sSQL);

end;
function TFCaptaAportes.RecuperaCorrelativo: String;
var
  sANO   : String ;
  sMES   : String ;
  sSQL   : String ;
  procedure AsignaAnoMes(var sAno , sMes : String ) ;
  var
    Year, Month, Day : Word;
  begin

    DecodeDate( dbdtpFechaOperacion.date , Year , Month, Day);
    sAno := dm1.StrZero(IntToStr(Year),4) ;
    sMes := dm1.StrZero(IntToStr(Month),2) ;

  end;
begin
   AsignaAnoMes( sANO , sMES );
   SSQL := 'BEGIN SP_RECUPERA_CORRELATIVO(''RECIBO_APORTE'' , ''' + sANO + ''');  END ;' ;
   dm1.DCOM1.Appserver.EjecutaSQL(ssql);
   dm1.cdsQry.Close ;
   dm1.cdsQry.DataRequest('SELECT CODIGO FROM TMP001') ;
   dm1.cdsQry.Open  ;
   if dm1.cdsQry.FieldByName('CODIGO').AsInteger = 0 then
     result := ''
   else
     result := dm1.cdsQry.FieldByName('CODIGO').AsString ;
end;

procedure TFCaptaAportes.MostrarPendientes;
begin
   dbgDetAportes.datasource.DataSet.Filter := '' ;
   dbgDetAportes.datasource.DataSet.Filtered := fALSE ;
end;

procedure TFCaptaAportes.QuitarPendientes;
begin
   dbgDetAportes.datasource.DataSet.Filter := 'CB_OK=''1''' ;
   dbgDetAportes.datasource.DataSet.Filtered := True ;

   dbgDetAportes.ColumnByName('TRANSMTOORI').FooterValue := dbgDetAportes.ColumnByName('TRANSMTO').FooterValue ;

end;

procedure TFCaptaAportes.Actualiza;
Const
 xCaja302 : String = 'CIAID,TDIARID,ECANOMM,ECNOCOMP,CLAUXID,PROV,PROVRUC,ECFCOMP,'+
                     'ECFEMICH,ECFPAGOP,FPAGOID,DOCID,ECNODOC,TMONID,ECTCAMB,ECMTOORI,'+
                     'ECMTOLOC,ECMTOEXT,BANCOID,CCBCOID,CPTOID,CUENTAID,ECGLOSA,ECLOTE,'+
                     'ECELABO,ECESTADO,ECCONTA,ECUSER,ECFREG,ECHREG,ECANO,ECMM,ECDD,'+
                     'ECSS,ECSEM,ECTRI,ECAASS,ECAASEM,ECAATRI,EC_IE,CAJARETIGV,'+
                     'AUXID,CCBCOVOUCH,EC_PROCE';
var
 xFecha,xNumComp1,xNumComp2,xCampo,xSql : String;
 xAnoCaja , xMesCaja : String ;
begin

          AsignaAnoMes( xAnoCaja , xMesCaja ) ;

          DM1.FiltraCDS(DM1.cdsCBcos, 'SELECT * FROM TGE106 WHERE BANCOID='+
                        quotedstr(dblcBanco.text)+' AND CIAID='+quotedstr(dm1.cdsCia.FieldByName('CIAID').AsString));
          xCcBcoid := DM1.cdsCBcos.FieldByName('CCBCOID').AsString;
          xTmonid := DM1.cdsCBcos.FieldByName('TMONID').AsString;
          xVouch  := DM1.cdsCBcos.FieldByName('CCBCOVOUCH').AsString;

          //** JALA EL TIPO DE DOCUMENTO
          xSql := 'SELECT DOCID FROM TGE110 WHERE DOCRECCAJ=''S'' AND FCING = ''N''';
          dm1.cdsQry.Close;
          dm1.cdsQry.DataRequest(xSql);
          dm1.cdsQry.Open;
          xDocid := dm1.cdsQry.fieldByName('DOCID').AsString;

          xSql := 'select NVL(MAX(CNTCOMPROB),0) +1 TOTAL from cnt301'+
                  ' where CIAID='+quotedstr(xCiaid)+
                  ' and TDIARID='+quotedstr(xVouch)+
                  ' AND CNTANOMM='+quotedstr(xAnoCaja+xMesCaja);

          dm1.cdsQry.Close;
          dm1.cdsQry.DataRequest(xSql);
          dm1.cdsQry.Open;
          If dm1.cdsQry.fieldByName('TOTAL').AsString = '' then xNumComp1 := '1';
          xNumComp1 := Dm1.StrZero(dm1.cdsQry.fieldByName('TOTAL').AsString,10);
//     wmc
          xSql := 'select NVL(MAX(ECNOCOMP),0) +1 TOTAL from CAJA321'+
                  ' where CIAID='+quotedstr(xCiaid)+
                  ' and TDIARID='+quotedstr(xVouch)+
                  ' AND ECANOMM='+quotedstr(xAnoCaja+xMesCaja);

          dm1.cdsQry.Close;
          dm1.cdsQry.DataRequest(xSql);
          dm1.cdsQry.Open;
          If dm1.cdsQry.fieldByName('TOTAL').AsString = '' then xNumComp2 := '1';
          xNumComp2 := Dm1.StrZero(dm1.cdsQry.fieldByName('TOTAL').AsString,10);

          If xNumComp1 < xNumComp2 then
           xMaxNumComp := xNumComp2
          else
           xMaxNumComp := xNumComp1;

          //** ACTUALIZO CAJA302
          //** CIAID
          xCampo := quotedstr(xCiaid)+',';
          //** TDIARID
          xCampo := xCampo + quotedstr(xVouch)+',';
          xTDiarid := xVouch;
          //** ECANOMM
          xCampo := xCampo + quotedstr(xAnoCaja+xMesCaja)+',';
          xEcanomm := xAnoCaja + xMesCaja ;
          //** ECNOCOMP
          xCampo := xCampo + quotedstr(xMaxNumComp)+',';
          //**CLAUXID
          xCampo := xCampo + quotedstr(xClauxid)+',';
          //** PROV
          xCampo := xCampo + quotedstr(DM1.cdsAsociados.FieldByName('ASOID').AsString)+',';
          //** PROVRUC
          xCampo := xCampo + quotedstr(DM1.cdsAsociados.FieldByName('ASODNI').AsString)+',';
          //** ECFCOMP
          xCampo := xCampo + wRepFecServi+',';
          xFechaCom := xFechaSys;
          //** ECFEMICH
          xCampo := xCampo + wRepFecServi+',';
          //** ECFPAGOP
          xCampo := xCampo + wRepFecServi+',';
          //** FPAGOID
          xCampo := xCampo + quotedstr(xFPagoid)+',';
          //** DOCID
          xCampo := xCampo + quotedstr(xDocid)+',';
          //** ECNODOC
          xCampo := xCampo +  quotedStr(dbeNumOpe.Text)+', ';
          xNodoc := dbeNumOpe.Text;
          //** TMONID
          xCampo := xCampo +  quotedStr(xTmonid)+', ';
          //** ECTCAMB
          xFecha := DateToStr(xFechasys);
          RecUltTipoCambio(xFecha);
          xECTCAMB := dm1.cdsQry.FieldByName(wTCCompra).AsFloat;
          xCampo := xCampo + FLoatToStr(xECTCAMB) +', ';

          //** ECMTOORI
          xCampo := xCampo +  dbeMonto.Text+', ';
          cPgoOri := StrToFloat(dbeMonto.Text);
          //** ECMTOLOC
          xCampo := xCampo + dbeMonto.Text +',';
          cPgoLoc := StrToFloat(dbeMonto.Text);
          //** ECMTOEXT

          If xECTCAMB > 0 then
           begin
            xCampo := xCampo +  FloattoStr(DM1.FRound(StrToFloat(dbeMonto.Text)/xECTCAMB ,15,4))+',';
            cPgoExt := DM1.FRound(StrToFloat(dbeMonto.Text)/xECTCAMB ,15,4);
           end
          else
           begin
            xCampo := xCampo + 'null,';
            cPgoExt := 0;
           end;
          //** BANCOID
          xCampo := xCampo +  quotedStr(trim(dblcBanco.Text))+', ';
          //** CCBCOID
          xCampo := xCampo +  quotedStr('')+', ';
          //** CPTOID
          xCampo := xCampo +  quotedStr(xCptoid)+', ';
          //** CUENTAID
          xCampo := xCampo +  quotedStr(xCuentaid)+', ';
          //** ECGLOSA
          xCampo := xCampo +  quotedStr('Egreso de Caja')+', ';
          //** ECLOTE
          xCampo := xCampo +  quotedStr('000')+', ';
          //** ECELABO
          xCampo := xCampo +  quotedStr('EFECTAPO')+', ';
          //** ECESTADO
          xCampo := xCampo +  quotedStr('A')+', ';
          //** ECCONTA
          xCampo := xCampo +  quotedStr('N')+', ';
          //** ECUSER
          xCampo := xCampo +  quotedStr(Dm1.wUsuario)+', ';
          //** ECFREG
          xCampo := xCampo +  wRepFecServi+', ';
          //** ECHREG
          xCampo := xCampo +  wRepTimeServi+', ';

          xSql := 'SELECT * FROM TGE114 WHERE FECHA='+quotedstr(DateToStr(xFechasys));
          dm1.cdsQry.close;
          dm1.cdsQry.datarequest(xSql);
          dm1.cdsQry.open;
          //** ECANO
          xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECANO').AsString)+', ';
          //** ECMM
          xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECMES').AsString)+', ';
          //** ECDD
          xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECDIA').AsString)+', ';
          //** ECSS
          xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECSS').AsString)+', ';
          //** ECSEM
          xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECSEM').AsString)+', ';
          //** ECTRI
          xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECTRIM').AsString)+', ';
          //** ECAASS
          xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECAASS').AsString)+', ';
          //** ECAASEM
          xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECAASEM').AsString)+', ';
          //** ECAATRI
          xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECAATRI').AsString)+', ';
          //** EC_IE
          xCampo := xCampo +  quotedStr('I')+', ';
          //** CAJARETIGV
          xCampo := xCampo +  quotedStr('N')+', ';
          //** AUXID
          xCampo := xCampo + quotedstr(DM1.cdsAsociados.FieldByName('ASOID').AsString)+',';
          //** CCBCOVOUCH
          xCampo := xCampo + quotedstr(xVouch)+',';
          //** EC_PROCE
          xCampo := xCampo + quotedstr('Y');
          xSql := 'INSERT INTO CAJA321 ('+xCaja302+') VALUES ('+xCampo+')';
          DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
          //** Actualiza Caja322
          ActuCaja301;    // DEBE DECIR CAJA322

          xSql := 'INSERT INTO COB341 (ASOID,TRANSNOPE,TRANSFOPE) VALUES ('''+
           DM1.cdsAsociados.FieldByName('ASOID').AsString+''',''' +
           dbeNumOpe.Text + ''',TO_DATE(''' + FormatDateTime('dd/mm/yyyy',dbdtpFechaOperacion.date) + ''',''DD/MM/YYYY''))';
          DM1.DCOM1.AppServer.EjecutaSQL( xsql ) ;

          DM1.DCOM1.AppServer.EjecutaSQL('BEGIN COMMIT; END ;');
          //** Actualiza Saldo TGE401
          //ActualizaSaldosTGE401(cPgoOri,cPgoLoc,cPgoExt, '-');
          //** Actualiza Saldo CAJA310
          //SaldosCaja310;
          //** Actuliza la provision de los créditos por el rango (CRE314) = CNT301
         // ActuCre314;
end;

procedure TFCaptaAportes.ActuCaja301;
Const
 xCaja301 : String = 'CIAID,TDIARID,ECANOMM,ECNOCOMP,DOCID2,DOCMOD,CPTOID,TDIARID2,'+
                     'CUENTAID,CLAUXID,PROV,PROVRUC,TMONID,DEMTOORI,CPNODOC,DEFCOMP,CPFEMIS,'+
                     'CPFVCMTO,CPANOMM,DETCPAG,DEDH,DETCDOC,CPSERIE,DEMTOLOC,DEMTOEXT,'+
                     'DEUSER,DEFREG,DEHREG,DEANO,DEMM,DEDD,DESS,DESEM,DETRI,DEAASS,'+
                     'DEAASEM,DEAATRI,DEESTADO,DEGLOSA,ECGLOSA';
var
 xCampo,aux,xWhere : String;
begin
//   While not DM1.cdsReporte.eof do
//    begin
      xCampo := quotedstr(xCiaid)+',';
      xCampo := xCampo + quotedstr(xTdiarid)+',';
      xCampo := xCampo + quotedstr(xEcanomm)+',';
      xCampo := xCampo + quotedstr(xMaxNumComp)+',';
      xCampo := xCampo + quotedstr(xDocid)+',';
      xCampo := xCampo + quotedstr(dm1.wModulo)+',';
      xCampo := xCampo + quotedstr(xCptoid)+',';
      xCampo := xCampo + quotedstr(xTdiarid)+',';
      xCampo := xCampo + quotedstr(xCuentaid)+',';

      xWhere:='CIAID='+quotedstr(xCiaid)+' AND CUENTAID='+quotedstr(xCuentaid);
      DM1.DisplayDescrip('prvSQL','TGE202','CUENTAID, CTA_CCOS, CTA_AUX',xWhere,'CuentaId');

      if DM1.cdsQry.fieldbyName('CTA_AUX').asString = 'S' then
       begin
       xCampo := xCampo + quotedstr(xClauxid)+',';
       xCampo := xCampo + quotedstr(DM1.cdsAsociados.FieldByName('ASOID').AsString)+',';;
       xCampo := xCampo + quotedstr(DM1.cdsAsociados.FieldByName('ASODNI').AsString)+',';
       end
      else
       begin
        xCampo := xCampo + quotedstr('')+',';
        xCampo := xCampo + quotedstr('')+',';
        xCampo := xCampo + quotedstr(xAuxRuc)+',';
       end;
      xCampo := xCampo + quotedstr(xTmonid)+',';
      xCampo := xCampo + dbeMonto.text +',';
      xCampo := xCampo + quotedstr(xNodoc)+',';
      xCampo := xCampo + quotedstr(DateToStr(xFechaCom))+',';
      xCampo := xCampo + quotedstr(DateToStr(xFechaCom))+',';
      xCampo := xCampo + quotedstr(DateToStr(xFechaCom))+',';
      xCampo := xCampo + quotedstr(xEcanomm)+',';
      xCampo := xCampo + FloatToStr(xECTCAMB)+',';
      xCampo := xCampo + quotedstr('H')+',';
      xCampo := xCampo + FloatToStr(xECTCAMB)+',';
      xCampo := xCampo + quotedstr('000')+',';
       xWhere:='TMONID='+quotedstr(xTmonid);
       aux:=DM1.DisplayDescrip('prvSQL','TGE103','TMONDES',xWhere,'TMONDES');

       if (length(aux)>0) and (StrToFloat(dbeMonto.text) > 0 ) then
        begin
         if xTmonid = DM1.wTMonLoc then
          begin
           xCampo := xCampo + dbeMonto.text+',';
           If xECTCAMB > 0 then
            xCampo := xCampo + FloatToStr(StrToFloat(dbeMonto.text)/xECTCAMB)+','
           else
            xCampo := xCampo + '0,';
          end
         else
          begin
           If xECTCAMB > 0 then
            xCampo := xCampo + FloatToStr(StrToFloat(dbeMonto.text)*xECTCAMB)+','
           else
            xCampo := xCampo + '0,';
           xCampo := xCampo + dbeMonto.text+',';
          end;
       end
      else
       begin
        xCampo := xCampo + '0.00,';
        xCampo := xCampo + '0.00,';
       end;

      //** ECUSER
      xCampo := xCampo +  quotedStr(Dm1.wUsuario)+', ';
      //** ECFREG
      xCampo := xCampo +  wRepFecServi+', ';
      //** ECHREG
      xCampo := xCampo +  wRepTimeServi+', ';

      xSql := 'SELECT * FROM TGE114 WHERE FECHA='+quotedstr(DateToStr(xFechasys));
      dm1.cdsQry.close;
      dm1.cdsQry.datarequest(xSql);
      dm1.cdsQry.open;
      //** DEANO
      xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECANO').AsString)+', ';
      //** DEMM
      xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECMES').AsString)+', ';
      //** DEDD
      xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECDIA').AsString)+', ';
      //** DESS
      xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECSS').AsString)+', ';
      //** DESEM
      xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECSEM').AsString)+', ';
      //** DETRI
      xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECTRIM').AsString)+', ';
      //** DEAASS
      xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECAASS').AsString)+', ';
      //** DEAASEM
      xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECAASEM').AsString)+', ';
      //** DEAATRI
      xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECAATRI').AsString)+', ';
       //** DEESTADO
      xCampo := xCampo +  quotedStr('P')+',';
      //** DEGLOSA
      xCampo := xCampo +  quotedStr('Egreso de Caja')+', ';
      //** ECGLOSA
      xCampo := xCampo +  quotedStr('Egreso de Caja');
      xSql := 'INSERT INTO CAJA322 ('+xCaja301+') VALUES ('+xCampo+')';
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
//     DM1.cdsReporte.next;
//    end;
end;

procedure TFCaptaAportes.RecUltTipoCambio(var xFecha: string);
var
  xSQL : String ;
begin
  xSQL :='SELECT * FROM TGE107 '+
         'WHERE FECHA=(SELECT MAX(FECHA) '+
         'FROM TGE107 '+
         'WHERE FECHA<='+wRepFuncDate+quotedstr(copy(xFecha,1,10))+')) '+
         'AND TMONID=''D'''             ;
  DM1.cdsQry.close;
  DM1.cdsQry.dataRequest(xSQL);
  DM1.cdsQry.Open;
end;
procedure TFCaptaAportes.AsignaAnoMes(var sAno, sMes: String);
var
  Year, Month, Day : Word;
begin

  DecodeDate( dbdtpFechaOperacion.date , Year , Month, Day);
  sAno := dm1.StrZero(IntToStr(Year),4) ;
  sMes := dm1.StrZero(IntToStr(Month),2) ;

end;

procedure TFCaptaAportes.bbtnImprimirClick(Sender: TObject);
var
 x : String ;
 sAporteDetalle , sMontoLetras : String ;
 cds : TwwClientDataset ;
 i , iContador : word ;
 ifrac : extended ;
 function RetornaAporte(sAno , sMes : String):string ;
 begin
    if smes = '01' then
    begin
      result := 'Ene/'+sAno ;
      Exit ;
    end;
    if smes = '02' then
    begin
      result := 'Feb/'+sAno ;
      Exit ;
    end;
    if smes = '03' then
    begin
      result := 'Mar/'+sAno ;
      Exit ;
    end;
    if smes = '04' then
    begin
      result := 'Abr/'+sAno ;
      Exit ;
    end;
    if smes = '05' then
    begin
      result := 'May/'+sAno ;
      Exit ;
    end;
    if smes = '06' then
    begin
      result := 'Jun/'+sAno ;
      Exit ;
    end;
    if smes = '07' then
    begin
      result := 'Jul/'+sAno ;
      Exit ;
    end;
    if smes = '08' then
    begin
      result := 'Ago/'+sAno ;
      Exit ;
    end;
    if smes = '09' then
    begin
      result := 'Set/'+sAno ;
      Exit ;
    end;
    if smes = '10' then
    begin
      result := 'Oct/'+sAno ;
      Exit ;
    end;
    if smes = '11' then
    begin
      result := 'Nov/'+sAno ;
      Exit ;
    end;
    if smes = '12' then
    begin
      result := 'Dic/'+sAno ;
      Exit ;
    end;

 end ;
begin
 iContador := 0 ;
//sAporteDetalle
 cds := TwwClientDataSet.Create(self);
 cds.CloneCursor(twwClientDataset(dbgdetaportes.datasource.dataset),False);
 for i:=1 to cds.recordcount do
 begin
    Inc(iContador);
    cds.recno := i ;
    sAporteDetalle := sAporteDetalle
                + RetornaAporte(cds.FieldByName('TRANSANO').AsString,cds.FieldByName('TRANSMES').AsString)
                + ' = ' + formatfloat('###.00',cds.FieldByName('TRANSMTO').ASCurrency)
                + '     ' ;
    if icontador = 3 then
    begin
       icontador := 0 ;
       sAporteDetalle := sAporteDetalle + #13 ;
    end ;
 end ;
 cds.Free ;
//sMontoLetras
 ifrac := frac(StrToCurr(dbeMonto.text))* 100 ;
 sMontoLetras := NumLetra(TRUNC(StrToCurr(dbeMonto.text)),1,1)+' Y ' + formatfloat('00',ifrac)+ '/100'+' '+'Nuevos Soles' ;

 pplblNumero.Caption      := 'Nº ' + dbeNumOpe.Text ;
 pplblMonto1.Caption      := 'S/. ' + dbgDetAportes.ColumnByName('TRANSMTO').FooterValue ;
 pplblMonto2.Caption      := 'S/. ' + dbgDetAportes.ColumnByName('TRANSMTO').FooterValue ;
 pplblAsociado.Caption    := dm1.cdsAsociados.FieldByName('ASOAPENOM').AsString
                           + '    ' + '( Cod-Mod ' + dm1.cdsAsociados.FieldByName('ASOCODMOD').AsString
                           + ' ' + ')';
 pplblMontoLetras.Caption := sMontoLetras ;
 pplblDetalle.Lines.Text  := sAporteDetalle ;
 pplblFecha.Caption       := 'JESÚS MARÍA - ' + FormatDateTime('dddddd' , xFechaSys ) ;

 ppReport1.Print;

end;
//////////////////
//** 04/03/2003 - PJSV (Q3)
(**************************************)
(* Conversión Número -> Letra         *)
(*                                    *)
(* Parámetros:                        *)
(*                                    *)
(*   mNum:    Número a convertir      *)
(*   iIdioma: Idioma de conversión    *)
(*            1 -> Castellano         *)
(*            2 -> Catalán            *)
(*   iModo:   Modo de conversión      *)
(*            1 -> Masculino          *)
(*            2 -> Femenino           *)
(*                                    *)
(* Restricciones:                     *)
(*                                    *)
(* - Redondeo a dos decimales         *)
(* - Rango: 0,00 a 999.999.999.999,99 *)
(*                                    *)
(**************************************)

function TFCaptaAportes.NumLetra(const mNum: Currency; const iIdioma, iModo: Smallint): String;
const
  iTopFil: Smallint = 6;
  iTopCol: Smallint = 10;
  aCastellano: array[0..5, 0..9] of PChar =
  ( ('UNA ','DOS ','TRES ','CUATRO ','CINCO ',
    'SEIS ','SIETE ','OCHO ','NUEVE ','UN '),
    ('ONCE ','DOCE ','TRECE ','CATORCE ','QUINCE ',
    'DIECISEIS ','DIECISIETE ','DIECIOCHO ','DIECINUEVE ',''),
    ('DIEZ ','VEINTE ','TREINTA ','CUARENTA ','CINCUENTA ',
    'SESENTA ','SETENTA ','OCHENTA ','NOVENTA ','VEINTI'),
    ('CIEN ','DOSCIENTAS ','TRESCIENTAS ','CUATROCIENTAS ','QUINIENTAS ',
    'SEISCIENTAS ','SETECIENTAS ','OCHOCIENTAS ','NOVECIENTAS ','CIENTO '),
    ('CIEN ','DOSCIENTOS ','TRESCIENTOS ','CUATROCIENTOS ','QUINIENTOS ',
    'SEISCIENTOS ','SETECIENTOS ','OCHOCIENTOS ','NOVECIENTOS ','CIENTO '),
    ('MIL ','MILLON ','MILLONES ','CERO ','Y ',
    'UNO ','DOS ','CON ','','') );
  aCatalan: array[0..5, 0..9] of PChar =
  ( ( 'UNA ','DUES ','TRES ','QUATRE ','CINC ',
    'SIS ','SET ','VUIT ','NOU ','UN '),
    ( 'ONZE ','DOTZE ','TRETZE ','CATORZE ','QUINZE ',
    'SETZE ','DISSET ','DIVUIT ','DINOU ',''),
    ( 'DEU ','VINT ','TRENTA ','QUARANTA ','CINQUANTA ',
    'SEIXANTA ','SETANTA ','VUITANTA ','NORANTA ','VINT-I-'),
    ( 'CENT ','DOS-CENTES ','TRES-CENTES ','QUATRE-CENTES ','CINC-CENTES ',
    'SIS-CENTES ','SET-CENTES ','VUIT-CENTES ','NOU-CENTES ','CENT '),
    ( 'CENT ','DOS-CENTS ','TRES-CENTS ','QUATRE-CENTS ','CINC-CENTS ',
    'SIS-CENTS ','SET-CENTS ','VUIT-CENTS ','NOU-CENTS ','CENT '),
    ( 'MIL ','MILIO ','MILIONS ','ZERO ','-',
    'UN ','DOS ','AMB ','','') );
var
  aTexto: array[0..5, 0..9] of PChar;
  cTexto, cNumero: String;
  iCentimos, iPos: Smallint;
  bHayCentimos, bHaySigni: Boolean;

  (*************************************)
  (* Cargar Textos según Idioma / Modo *)
  (*************************************)

procedure NumLetra_CarTxt;
var
 i, j: Smallint;
begin
  (* Asignación según Idioma *)

    for i := 0 to iTopFil - 1 do
      for j := 0 to iTopCol - 1 do
        case iIdioma of
          1: aTexto[i, j] := aCastellano[i, j];
          2: aTexto[i, j] := aCatalan[i, j];
        else
          aTexto[i, j] := aCastellano[i, j];
        end;

    (* Asignación si Modo Masculino *)

    if (iModo = 1) then
    begin
      for j := 0 to 1 do
        aTexto[0, j] := aTexto[5, j + 5];

      for j := 0 to 9 do
        aTexto[3, j] := aTexto[4, j];
    end; 
  end;
 
  (****************************)
  (* Traducir Dígito -Unidad- *)
  (****************************)
 
  procedure NumLetra_Unidad;
  begin 
    if not( (cNumero[iPos] = '0') or (cNumero[iPos - 1] = '1')
     or ((Copy(cNumero, iPos - 2, 3) = '001') and ((iPos = 3) or (iPos = 9))) ) then 
      if (cNumero[iPos] = '1') and (iPos <= 6) then
        cTexto := cTexto + aTexto[0, 9]
      else 
        cTexto := cTexto + aTexto[0, StrToInt(cNumero[iPos]) - 1];
 
    if ((iPos = 3) or (iPos = 9)) and (Copy(cNumero, iPos - 2, 3) <> '000') then
      cTexto := cTexto + aTexto[5, 0];
 
    if (iPos = 6) then 
      if (Copy(cNumero, 1, 6) = '000001') then
        cTexto := cTexto + aTexto[5, 1]
      else 
        cTexto := cTexto + aTexto[5, 2];
  end; 
 
  (****************************)
  (* Traducir Dígito -Decena- *)
  (****************************)
 
  procedure NumLetra_Decena;
  begin 
    if (cNumero[iPos] = '0') then
      Exit
    else if (cNumero[iPos + 1] = '0') then
      cTexto := cTexto + aTexto[2, StrToInt(cNumero[iPos]) - 1]
    else if (cNumero[iPos] = '1') then 
      cTexto := cTexto + aTexto[1, StrToInt(cNumero[iPos + 1]) - 1]
    else if (cNumero[iPos] = '2') then 
      cTexto := cTexto + aTexto[2, 9]
    else 
      cTexto := cTexto + aTexto[2, StrToInt(cNumero[iPos]) - 1]
        + aTexto[5, 4];
  end; 
 
  (*****************************)
  (* Traducir Dígito -Centena- *)
  (*****************************)
 
  procedure NumLetra_Centena;
  var
    iPos2: Smallint;
  begin
    if (cNumero[iPos] = '0') then
      Exit;
 
    iPos2 := 4 - Ord(iPos > 6);
 
    if (cNumero[iPos] = '1') and (Copy(cNumero, iPos + 1, 2) <> '00') then 
      cTexto := cTexto + aTexto[iPos2, 9]
    else 
      cTexto := cTexto + aTexto[iPos2, StrToInt(cNumero[iPos]) - 1];
  end;

  (**************************************)
  (* Eliminar Blancos previos a guiones *)
  (**************************************)
 
procedure NumLetra_BorBla;
var
    i: Smallint;
  begin
    i := Pos(' -', cTexto);

    while (i > 0) do
    begin
      Delete(cTexto, i, 1);
      i := Pos(' -', cTexto);
    end;
  end;

begin
  (* Control de Argumentos *)

  if (mNum < 0.00) or (mNum > 999999999999.99) or (iIdioma < 1) or (iIdioma > 2)
    or (iModo < 1) or (iModo > 2) then 
  begin
    Result := 'ERROR EN ARGUMENTOS';
    Abort;
  end;

  (* Cargar Textos según Idioma / Modo *)
 
  NumLetra_CarTxt;

  (* Bucle Exterior -Tratamiento Céntimos-     *)
  (* NOTA: Se redondea a dos dígitos decimales *)
 
  cNumero := Trim(Format('%12.0f', [Int(mNum)]));
  cNumero := StringOfChar('0', 12 - Length(cNumero)) + cNumero;
  iCentimos := Trunc((Frac(mNum) * 100) + 0.5);

  repeat 
    (* Detectar existencia de Céntimos *)

    if (iCentimos <> 0) then 
      bHayCentimos := True
    else 
      bHayCentimos := False;
 
    (* Bucle Interior -Traducción- *)
 
    bHaySigni := False;

    for iPos := 1 to 12 do 
    begin 
      (* Control existencia Dígito significativo *)
 
      if not(bHaySigni) and (cNumero[iPos] = '0') then 
        Continue
      else 
        bHaySigni := True;

      (* Detectar Tipo de Dígito *)
 
      case ((iPos - 1) mod 3) of
        0: NumLetra_Centena;
        1: NumLetra_Decena;
        2: NumLetra_Unidad;
      end; 
    end; 

    (* Detectar caso 0 *)
 
    if (cTexto = '') then 
      cTexto := aTexto[5, 3];
 
    (* Traducir Céntimos -si procede- *)
 
    if (iCentimos <> 0) then 
    begin
      cTexto := cTexto + aTexto[5, 7];
      cNumero := Trim(Format('%.12d', [iCentimos]));
      iCentimos := 0;
    end; 
  until not (bHayCentimos);

  (* Eliminar Blancos innecesarios -sólo Catalán- *)

  if (iIdioma = 2) then
    NumLetra_BorBla;

  (* Retornar Resultado *)

  Result := Trim(cTexto);
end;

procedure TFCaptaAportes.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState := wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomSetting := zs100Percent;

end;

procedure TFCaptaAportes.bbtnAceptarPeriodoInicialClick(Sender: TObject);
var
   Present: TDateTime;
   nYear, nMonth, nDay : word;
   bmk : TBookmark ;
   currUltimoAporte : Currency ;

begin
  //Quitar Eventos
  ValidaPeriodoInicial;

  currUltimoAporte := cdsAporte.fieldbyName('APOVALOR').AsCurrency ;

  strAnoIni := SpeAnnos.Text ;
  strMesIni := dm1.strzero(SpEmeses.Text,2) ;
  if strMesIni = '01' then
  begin
    strAnoIni := dm1.strzero(inttostr(strtoint(strAnoIni) - 1),4) ;
    strMesIni := '12'
  end
  else
    strMesIni := dm1.strzero(inttostr(strtoint(strMesIni) - 1),2) ;

  QuitaEventosCampos ;
  nYear     := strtoint(strAnoIni);
  nMonth    := strtoint(strMesIni);

  if nMonth = 12 then
  begin
    nMonth := 1 ;
    inc(nYear);
  end
  else
    inc(nMonth);

  cdsQry2.Append;

  cdsQry2.FieldByName('TRANSANO').AsString := dm1.StrZero(inttostr(nYear),4);
  cdsQry2.FieldByName('TRANSMES').AsString := dm1.StrZero(inttostr(nMonth),2);
  cdsQry2.fieldByName('CB_OK').AsString         := '1';
  if cdsAporte.locate('APOANO;APOMES',
      VarArrayOf([cdsQry2.FieldByName('TRANSANO').AsString,
                  cdsQry2.FieldByName('TRANSMES').AsString]),[]) then
  begin
   cdsQry2.FieldByName('TRANSMTOORI').AsCurrency := cdsAporte.fieldbyname('APOVALOR').AsCurrency ;
   cdsQry2.FieldByName('TRANSMTO').AsCurrency    := cdsAporte.fieldbyname('APOVALOR').AsCurrency ;
  end
  else
  begin
   cdsQry2.FieldByName('TRANSMTOORI').ASCurrency := currUltimoAporte ;
   cdsQry2.FieldByName('TRANSMTO').ASCurrency :=    currUltimoAporte ;
  end ;

  cdsqry2.next ;
  PonEventosCampos ;
  dbemonto.TEXT := FloatToStrF(DM1.OperClientDataSet(cdsQry2,'SUM(TRANSMTO)',''), ffNumber, 10, 2);
  dbgdetAportes.ColumnByName('TRANSMTO').FooterValue := dbemonto.Text ;
  dbgdetAportes.ColumnByName('TRANSMTOORI').FooterValue := FloatToStrF(DM1.OperClientDataSet(cdsQry2,'SUM(TRANSMTOORI)',''), ffNumber, 10, 2); ;
  
  bbtnSalirPeriodoInicial.OnClick(bbtnSalirPeriodoInicial);
  strAnoIni := dm1.strzero(SpeAnnos.Text,4) ;
  strMesIni := dm1.strzero(SpEmeses.Text,2) ;
end;

procedure TFCaptaAportes.bbtnSalirPeriodoInicialClick(Sender: TObject);
begin
  //
  pnlAportes.Enabled := TRue ;
  pnlPeriodoInicial.Visible := False ;
end;

procedure TFCaptaAportes.SpeAnnosKeyPress(Sender: TObject; var Key: Char);
begin
       if key in ['.','-'] then
          key := #0 ;
end;

procedure TFCaptaAportes.fcShapeBtn5Click(Sender: TObject);
begin
  bbtnSalirPeriodoInicial . OnClick ( bbtnSalirPeriodoInicial );
end;

procedure TFCaptaAportes.ValidaPeriodoInicial;
begin
     if trim(SpeAnnos.Text) = '' then
     begin
        SpeAnnos.SetFocus ;
        Raise exception.CReate('Ingrese Año');
     end ;
     if trim(SpEmeses.Text) = '' then
     begin
        SpEmeses.SetFocus ;
        Raise exception.CReate('Ingrese Mes');
     end ;

end;

end.
