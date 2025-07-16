// Inicio Uso Estándares: 01/08/2011
// Unidad               : APO304
// Formulario           : FReclamos
// Fecha de Creación    : 15/12/2003
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Reclamo de Aportes
// Actualizaciones      :
//
// HPC_201501_APO       : Control de aportes liquidados por beneficios.
// HPC_201501_APO       : 06/01/2003 - Cambio de DCOM a Socket
// MIS CAMBIOS REALIZADOS POR JUAN

unit APO304;
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Wwdotdot, Wwdbcomb, Wwdbdlg, StdCtrls, wwdblook, Mask, wwdbedit, Buttons,
  ExtCtrls, wwdbdatetimepicker, DBCtrls, ComCtrls, Grids, Wwdbigrd,
  Wwdbgrid,DB, Wwdbspin, wwriched, fcButton, fcImgBtn, fcShapeBtn, ppBands,
  ppCache, ppClass, ppComm, ppRelatv, ppProd, ppReport, ppCtrls, ppVar,
  ppPrnabl, ppDB, ppDBPipe, Mant,wwClient, DBClient,Variants;

type
  TFReclamos = class(TForm)
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppReport2: TppReport;
    ppdbre: TppDBPipeline;
    ppHeaderBand2: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
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
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel31: TppLabel;
    ppDBText17: TppDBText;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppLabel29: TppLabel;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel30: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    PnlReclamo: TPanel;
    bbtnAceptar: TfcShapeBtn;
    bbtnCancelar: TfcShapeBtn;
    StaticText2: TStaticText;
    dbgReclamo: TwwDBGrid;
    pnlInicio: TPanel;
    lblCodigo: TLabel;
    dblcdUse: TwwDBLookupComboDlg;
    dblcdUpag: TwwDBLookupComboDlg;
    lblApeNom: TLabel;
    dbeCodigoModular: TwwDBEdit;
    dbeCodigoPago: TwwDBEdit;
    dbeAsoNom: TwwDBEdit;
    dbeDocIdNum: TwwDBEdit;
    dbgAportes: TwwDBGrid;
    dbgAportesbtn: TwwIButton;
    PnlBusApo: TPanel;
    btnBusOK: TfcShapeBtn;
    btnBusCan: TfcShapeBtn;
    dbeBusAno: TwwDBSpinEdit;
    dbeBusMes: TwwDBSpinEdit;
    StaticText1: TStaticText;
    dblcdUPro: TwwDBLookupComboDlg;
    dbeUPro: TwwDBEdit;
    dbeUpag: TwwDBEdit;
    dbeUse: TwwDBEdit;
    PnlDatos: TPanel;
    dbeTipDoc: TwwDBEdit;
    dbeReclamo: TwwDBEdit;
    bbtnSigue: TfcShapeBtn;
    pnlBtnPrin: TPanel;
    Z2bbtnNuevo: TfcShapeBtn;
    Z2bbtnAceptar: TfcShapeBtn;
    Z2bbtnCancel: TfcShapeBtn;
    lblTipo: TLabel;
    dbeTipo: TwwDBEdit;
    dbeSit: TwwDBEdit;
    lblSit: TLabel;
    btnAso: TBitBtn;
    dbgReclamoIButton: TwwIButton;
    lblUProceso: TLabel;
    lblNReclamo: TLabel;
    lblUPago: TLabel;
    lblUse: TLabel;
    lblTitRecl: TLabel;
    lblCModular: TLabel;
    lblCPago: TLabel;
    lblDIden: TLabel;
    lblN: TLabel;
    dblcdCodigo: TwwDBEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    lblMonto: TLabel;
    lblAno: TLabel;
    lblMes: TLabel;
    lblMRecl: TLabel;
    lblMon: TLabel;
    lblMReclamo: TLabel;
    lblObserv: TLabel;
    lblFOpe: TLabel;
    lblNOpe: TLabel;
    lblFRecl: TLabel;
    dbeMontoAportado: TwwDBEdit;
    dblctmoneda: TwwDBLookupCombo;
    dbeMontoRecl: TwwDBEdit;
    dblcReclMotId: TwwDBLookupCombo;
    dbemoneda: TwwDBEdit;
    dbeAno: TwwDBEdit;
    dbeMes: TwwDBEdit;
    dbeReclMotivo: TwwDBEdit;
    dbeFOperacion: TwwDBEdit;
    dbeNOperacion: TwwDBEdit;
    dbmObservacion: TDBMemo;
    bbtnCierraImp: TfcShapeBtn;
    Label1: TLabel;
    dbeMontoReclamado: TwwDBEdit;
    Label2: TLabel;
    dbeMontoAceptado: TwwDBEdit;
    lblSitua: TLabel;
    dblcReclSit: TwwDBLookupCombo;
    lblResul: TLabel;
    dbmresultado: TwwDBRichEdit;
    lblFConc: TLabel;
    dbeReclSit: TwwDBEdit;
    lblEstado: TLabel;
    lblDevuelto: TLabel;
    cbxEnTramite: TCheckBox;
    Label5: TLabel;
    dblcCambioSituacion: TwwDBLookupCombo;
    dbeCambioSituacion: TwwDBEdit;
    dbdtpFechaReclamo: TwwDBDateTimePicker;
    dbdtpFechaConclusion: TwwDBDateTimePicker;
    cdsSituacion: TwwClientDataSet;
    cdsCambioSituacion: TwwClientDataSet;
    wwDBEdit1: TwwDBEdit;
    Label6: TLabel;
    dblcSituacionOri: TwwDBLookupCombo;
    dbeSituacionOri: TwwDBEdit;
    bbtnRegresar: TfcShapeBtn;
    cdsCacheRec: TwwClientDataSet;
    procedure Z2bbtnCancelClick(Sender: TObject);
    procedure dblcReclSitExit(Sender: TObject);
    procedure dblcReclMotIdExit(Sender: TObject);
    procedure dblcTMonedaExit(Sender: TObject);
    procedure Z2bbtnAceptarClick(Sender: TObject);
    procedure bbtnAceptarClick(Sender: TObject);
    procedure dbeMontoReclExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbtnCancelarClick(Sender: TObject);
    procedure Z2bbtnNuevoClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bbtnSigueClick(Sender: TObject);
    procedure dbgReclamoDblClick(Sender: TObject);
    procedure dbgAportesDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure dbgReclamoEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure dbgAportesEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure dbgReclamoDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure dbgAportesMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure dbgDetReclamo1DragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure dbgReclamoMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure dbgAportesbtnClick(Sender: TObject);
    procedure btnBusCanClick(Sender: TObject);
    procedure btnBusOKClick(Sender: TObject);
    procedure btnAsoClick(Sender: TObject);
    procedure dbgReclamoIButtonClick(Sender: TObject);
    procedure dbeMesExit(Sender: TObject);
    procedure dblcdCodigoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbtnCierraImpClick(Sender: TObject);
    procedure dbeMontoReclKeyPress(Sender: TObject; var Key: Char);
    procedure dbeMontoAceptadoKeyPress(Sender: TObject; var Key: Char);
    procedure dblcReclMotIdChange(Sender: TObject);
    procedure PageControl1Changing(Sender: TObject;
      var AllowChange: Boolean);
    procedure dbdtpFechaReclamoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dblcCambioSituacionExit(Sender: TObject);
    procedure dblcCambioSituacionEnter(Sender: TObject);
    procedure dbeMontoAceptadoExit(Sender: TObject);
    procedure dbdtpFechaReclamoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbdtpFechaConclusionExit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    wModoDetalle : String ;
    iTransPacketRecord : byte ;
    procedure LlenarDatosAsociado(ASOID:String);
    procedure DesHabilitaGrids ;
    procedure HabilitaGrids ;
    procedure ConfiguraGridAportes ;
    function  BuscaAporte(strAPO301ID:String) : Boolean;
    function  BuscaAporteReclamo(strAPO301ID,sRECLID:String) : String;
    function  BuscaAporteOtroReclamo(strAPO301ID,sRECLID:String) : Integer;
    function  EsNumero(strNumero : String) : Boolean ;
    procedure LlenaDatasetSituacion ;
    procedure LlenaDatasetCambioSituacion(sSituacion : String ) ;
    procedure ConfiguraDetalleEdit(bAdicion : Boolean) ;
    procedure ConfiguraDetalleAdicion ;
    procedure ConfiguraControlesCambioSituacion(sSituacion:String) ;
    procedure DesHabilitaPantallaPrincipal;
    procedure HabilitaPantallaPrincipal;
    procedure ValidaSituacionInicial( sSituacion : String  );
    procedure LlenarCacheEdicionDetalle;
    function  SituacionOriginal( strAPO301ID : String ) : string ;
    procedure ValidaReclamo;
    function  RecEstado : String ;
    procedure ActualizaEstadoRechazado ;
    procedure QuitaFlagAportes(sAPO301ID : String) ;
    function  RecuperaCorrelativo : String ;
    function  HallaFechaReclamoDocumento : TDate ;
    procedure AsignaCorrelativo ;
    procedure AsignaCorrelativoDetalle ;
    procedure RecuperaDetalle ;
    procedure ConfiguraValoresNumericos ;
  public
    procedure NuevoReclamo(Sender: TObject);
    procedure GrabaTransaccion(Sender: TObject);
    function RecuperaEstadoDocDetalle : String ;
  end;

var
  FReclamos: TFReclamos;
  xSQL, sWhere, xWhere : string;
  xSuma : Double;


implementation

USES APODM, MsgDlgs, APO001, APO719 ;
{$R *.DFM}

procedure TFReclamos.Z2bbtnCancelClick(Sender: TObject);
begin
  FReclamos.Close;
end;

procedure TFReclamos.LlenarDatosAsociado(ASOID:String);
begin
   xSQL := 'SELECT A.ASOID, A.ASOCODMOD, A.UPROID, P.UPRONOM, A.UPAGOID, G.UPAGONOM,'
          +' A.USEID, U.USENOM, A.ASOCODPAGO, A.ASOAPENOM, T.ASOTIPDES, S.ASOSITDES,'
          +' A.TIPDOCCOD, A.ASODOCNUM, D.TIPDOCDES'
          +' FROM APO201 A, TGE159 D, APO102 P, APO103 G, APO101 U, APO107 T, APO106 S'
          +' WHERE A.TIPDOCCOD = D.TIPDOCCOD(+)'
          +' AND A.UPROID = P.UPROID(+)'
          +' AND A.UPAGOID = G.UPAGOID(+)'
          +' AND A.USEID = U.USEID(+)'
          +' AND A.ASOTIPID = T.ASOTIPID(+)'
          +' AND A.ASOSITID = S.ASOSITID(+)'
          +' AND ASOID ='+QuotedStr(ASOID);

   DM1.FiltraCds(DM1.cdsQry,xSQL);
   dblcdUPro.Text   := DM1.cdsQry.FieldByName('UPROID').AsString;
   dbeUPro.Text     := DM1.cdsQry.FieldByName('UPRONOM').AsString;
   dblcdUpag.Text   := DM1.cdsQry.FieldByName('UPAGOID').AsString;
   dbeUPag.Text     := DM1.cdsQry.FieldByName('UPAGONOM').AsString;
   dblcdUse.Text    := DM1.cdsQry.FieldByName('USEID').AsString;
   dbeUse.Text      := DM1.cdsQry.FieldByName('USENOM').AsString;
   dblcdCodigo.Text := DM1.cdsQry.FieldByName('ASOID').AsString;
    // Asociado
   dbeCodigoModular.Text := DM1.cdsQry.FieldByName('ASOCODMOD').AsString;
   dbeCodigoPago.Text    := DM1.cdsQry.FieldByName('ASOCODPAGO').AsString;
   dbeAsoNom.Text        := DM1.cdsQry.FieldByName('ASOAPENOM').AsString;
   dbeTipo.Text          := DM1.cdsQry.FieldByName('ASOTIPDES').AsString;
   dbeSit.Text           := DM1.cdsQry.FieldByName('ASOSITDES').AsString;
    //  dbeApePat.Text        := dm1.cdsQry.fieldbyname('ASOAPEPAT').AsString;
    //  dbeApeMat.Text        := dm1.cdsQry.fieldbyname('ASOAPEMAT').AsString;
    //  dbeNombres.Text       := dm1.cdsQry.fieldbyname('ASONOMBRES').AsString;
   dbeDocIdNum.Text      := DM1.cdsQry.FieldByName('ASODOCNUM').AsString;
   dbeTipDoc.Text        := DM1.cdsQry.FieldByName('TIPDOCDES').AsString;
   DM1.cdsQry.Close;
end;

procedure TFReclamos.dblcReclSitExit(Sender: TObject);
begin
{
   sWhere := 'RECLSITID = '+ QuotedStr(dblcReclSit.Text);
   dbeReclSit.Text := DM1.DisplayDescrip('prvTGE', 'APO126', 'RECLSITDES', sWhere, 'RECLSITDES');
}
   if cdsSituacion.Locate('RECLSITID',VarArrayOf([trim(dblcReclSit.Text)]),[]) then
     dbeReclSit.Text := cdsSituacion.FieldByName('RECLSITDES').AsString 
   else
     dbeReclSit.Text := '' ;
end;

procedure TFReclamos.dblcReclMotIdExit(Sender: TObject);
begin
{
   sWhere := 'RECLMOTID = '+ QuotedStr(dblcReclMotId.Text) ;
   dbeReclMotivo.Text := DM1.DisplayDescrip('prvTGE', 'APO114', 'RECLMOTDES', sWhere, 'RECLMOTDES');
}
  if (trim(dbeReclMotivo.Text) = '') then
     dm1.cdsDetReclamo.FieldByName(dblcReclMotId.DataField).Clear ;
end;

procedure TFReclamos.dblcTMonedaExit(Sender: TObject);
begin
   sWhere := 'TMONID = '+ QuotedStr(dblcTMoneda.Text) ;
   dbeMoneda.Text := DM1.DisplayDescrip('prvTGE', 'TGE103', 'TMONDES', sWhere, 'TMONDES');
end;

procedure TFReclamos.Z2bbtnAceptarClick(Sender: TObject);
var
   strEstado : String ;
begin
   if DM1.cdsDetReclamo.RecordCount = 0 Then
    begin
     ShowMessage ('No hay Aportes reclamados!');
     Exit;
    end;
   if dm1.cdsReclamo.Modified or (dm1.cdsReclamo.ChangeCount > 0)
      or dm1.cdsDetReclamo.Modified or (dm1.cdsDetReclamo.ChangeCount > 0) then
   begin
     if dm1.wModo = 'A' then
     begin
        AsignaCorrelativo ;
        AsignaCorrelativoDetalle ;
     end ;
     //Calcular Situación de la Cabecera
     strEstado := RecuperaEstadoDocDetalle ;
     if not (dm1.cdsReclamo.State in [dsEdit , dsInsert]) then
        dm1.cdsreclamo.Edit ;
     dm1.cdsReclamo.FieldByName('RECESTADO').AsString := strEstado  ;
     dm1.cdsReclamo.FieldByName('RECDEVUELTO').AsString := 'N' ;
     cdsPost(DM1.cdsReclamo);
     dm1.cdsReclamo.Post ;
     if DM1.cdsReclamo.ApplyUpdates(0)> 0 then
        ShowMessage('Error en la Grabación del Reclamo');
     if DM1.cdsDetReclamo.ApplyUpdates(0)> 0 then
        ShowMessage('Error en la Grabación del Detalle del Reclamo');
     if DM1.cdsTransaccion.ApplyUpdates(0)>0 then
        ShowMessage('Error en la Grabación de la Transacción');
     ActualizaEstadoRechazado ;
     ShowMessage('Reclamo de Aportes Ingresado');
     RecuperaDetalle ;
     z2bbtnAceptar.Enabled := False;
     lblEstado.Caption   := RecEstado ;
     //
     LlenarCacheEdicionDetalle ;
     //
     DM1.wModo := 'M' ;
     ConfiguraValoresNumericos ;
   end;
end;

procedure TFReclamos.bbtnAceptarClick(Sender: TObject);
begin
   ValidaReclamo ;
   if not (dm1.cdsDetReclamo.State in [dsInsert,dsedit]) then
      dm1.cdsDetReclamo.Edit ;
   if trim(dblcCambioSituacion.Text) <> '' then
      dm1.cdsDetReclamo.FieldByName('RECLSITID').AsString := trim(dblcCambioSituacion.Text);
   DM1.cdsDetReclamo.FieldByName('USUARIO').AsString := DM1.wUsuario;
   DM1.cdsDetReclamo.FieldByName('FREG').AsDateTime  := Date;
   DM1.cdsDetReclamo.FieldByName('HREG').AsDateTime  := Date+SysUtils.Time;
   cdspost(DM1.cdsDetReclamo);
   DM1.cdsDetReclamo.Post;

   dbgAportes.Enabled := True;
   dbgReclamo.Enabled := True;
   pnlBtnPrin.Enabled := True;
   dbgReclamo.ColumnByName('RECLMONTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsDetReclamo,'SUM(RECLMONTO)',''),ffNumber, 10, 2);
   dbgReclamo.ColumnByName('APOMONTO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsDetReclamo,'SUM(APOMONTO)',''),ffNumber, 10, 2);
   dbgAportes.ColumnByName('TRANSMTO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsTransaccion,'SUM(TRANSMTO)',''),ffNumber, 10, 2);
   PnlReclamo.Visible := False;

   dbgAportes . Enabled := True ;
   dbgReclamo . Enabled := True ;
   pnlBtnPrin . Enabled := True ;
   Z2bbtnAceptar . Enabled := True ;
end;

procedure TFReclamos.NuevoReclamo(Sender: TObject);
begin
  //pnlInicio
   dblcdUPro.Clear;
   dbeUPro.Clear;
   dblcdUPag.Clear;
   dbeUPag.Clear;
   dblcdUse.Clear;
   dbeUse.Clear;
   dblcdCodigo.Clear;
   //pnlDatos
   dbeCodigoModular.Clear;
   dbeCodigoPago.Clear;
   dbeAsoNom.Clear;
   dbeTipo.Clear;
   dbeSit.Clear;
   dbeDocIdNum.Clear;
end;

procedure TFReclamos.dbeMontoReclExit(Sender: TObject);
var
   strNumero  : String ;
   currNumero : Currency ;
begin
   If bbtnCancelar.Focused or bbtnCierraImp.Focused then
      Exit ;
   If (trim(dbeMontoRecl.Text)='') Then
     Exit;
   strNumero := trim(dbeMontoRecl.Text);
   if EsNumero(strNumero) then
   begin
     if StrToCurr(strNumero) = 0 then
        dbemontorecl.Datasource.dataset.FieldByName(dbemontorecl.Datafield).clear
     else
     begin
       currNumero := StrToCurr(strNumero) ;
       If DM1.cdsDetReclamo.FieldByName('APOMONTO').AsFloat<
        currNumero Then
        begin
         ShowMessage('El Monto Reclamado no puede ser mayor al monto Aportado');
         dbemontorecl.Datasource.dataset.FieldByName(dbemontorecl.Datafield).clear ;
         dbeMontoRecl.SetFocus;
         Exit;
        end;
     end;
   end
   else
     dbemontorecl.Datasource.dataset.FieldByName(dbemontorecl.Datafield).clear ;
end;

procedure TFReclamos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if PnlReclamo.Visible then
      bbtnCancelar.OnClick(bbtnCancelar);
   if PnlBusApo.Visible then
      btnBusCan.OnClick(btnBusCan);
   if dblcdcodigo.focused then
      btnaso.SetFocus ;
   DM1.cdsAsociados1.Close;
   DM1.cdsTransaccion.Close;
   DM1.cdsDetReclamo.Close;
end;

procedure TFReclamos.bbtnCancelarClick(Sender: TObject);
begin
//wmc xxx   pnlInicio  . Enabled := True ;
//wmc xxx   pnlDatos   . Enabled := True ;
   dbgAportes . Enabled := True ;
   dbgReclamo . Enabled := True ;
   if wModoDetalle = 'A' then
    if BuscaAporteOtroReclamo(DM1.cdsTransaccion.FieldByName('APO301ID').AsString ,
                              '') = 0 then
    begin
      DM1.cdsTransaccion.Edit;
      DM1.cdsTransaccion.FieldByName('APOFRECL').AsString := 'N' ;
      cdspost(DM1.cdsTransaccion);
      DM1.cdsTransaccion.Post;
    end ;
   DM1.cdsDetReclamo.Cancel;
   PnlReclamo.Hide;
   dbgAportes.Enabled := True;
   dbgReclamo.Enabled := True;
   pnlBtnPrin.Enabled := True;
   pnlBtnPrin . Enabled := True ;

end;

procedure TFReclamos.Z2bbtnNuevoClick(Sender: TObject);
begin

   If (DM1.cdsDetReclamo.Modified) Or
      (DM1.cdsDetReclamo.ChangeCount > 0) Then
     If Application.MessageBox(' Tiene Datos No Actualizados '+#13+
                               '¿Desea Cancelar sus Actualizaciones?',
                               'Grabaciones Pendientes',
                               MB_YESNO + MB_DEFBUTTON1) <> IDYES Then
       Exit ;

   DM1.wMODO:='A';
   lblDevuelto.Visible := False ;
   lblEstado.Caption   := 'NUEVO - [SIN GRABAR]' ;

   NuevoReclamo(sender);
   xSQL:='SELECT * FROM APO301 WHERE ROWNUM<1 ';
   DM1.FiltraCDS(DM1.cdsTransaccion,xSQL);
   xSQL:='SELECT * FROM APO303 WHERE ROWNUM<1 ';
   DM1.FiltraCDS(DM1.cdsDetReclamo,xSQL);
   DM1.cdsReclamo.CancelUpdates;
   DM1.cdsReclamo.Insert;

   pnlInicio.Enabled:=True;

   pnlInicio.SetFocus ;
   Perform(CM_DialogKey, VK_TAB, 0);
   DesHabilitaGrids   ;

   bbtnSigue.Enabled            := True   ;
   btnAso.Enabled               := True   ;
   
   Z2bbtnAceptar.Enabled        := False  ;
   dbgAportesbtn.Enabled        := False  ;
   dbgReclamoIButton.Enabled    := False  ;
   
//wmc xxx   z2bbtnNuevo.Enabled := False ;

end;

procedure TFReclamos.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  If (DM1.cdsReclamo.State = dsInsert) Or
     (DM1.cdsDetReclamo.State = dsInsert) Then
    If Application.MessageBox(' Tiene Datos No Actualizados '+#13+
                              '¿Desea Salir y Cancelar sus Actualizaciones?',
                              'Grabaciones Pendientes',
                              MB_YESNO + MB_DEFBUTTON1) <> IDYES Then
{
   If (DM1.cdsDetReclamo.Modified) Or
      (DM1.cdsDetReclamo.ChangeCount > 0) Then

     If Application.MessageBox(' Tiene Datos No Actualizados '+#13+
                               '¿Desea Cancelar sus Actualizaciones?',
                               'Grabaciones Pendientes',
                               MB_YESNO + MB_DEFBUTTON1) <> IDYES Then
}
      CanClose := False
     Else
     Begin
      DM1.cdsDetReclamo.CancelUpdates;
      DM1.cdsReclamo.CancelUpdates;
     End;
end;

procedure TFReclamos.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #13 Then
    begin
     If self.ActiveControl Is TDBMemo Then Exit;
     If self.ActiveControl Is TMemo Then Exit;
     Key := #0;
     Perform(CM_DialogKey, VK_TAB, 0);
    end;
end;

procedure TFReclamos.GrabaTransaccion(Sender: TObject);
var
  sUProceso, sUPago, sDepto : String;
begin
   DM1.cdsTransDevol.Open;
   DM1.cdsTransDevol.Insert;
   DM1.cdsTransDevol.FieldByName('TRANSID').AsString   := DM1.DisplayDescrip('prvTGE','APO118','TRANSID','TRANSINTID='+ QuotedStr('DEV'),'TRANSID');
   DM1.cdsTransDevol.FieldByName('ASOID').AsString     := dblcdCodigo.Text;
   DM1.cdsTransDevol.FieldByName('ASOCODMOD').AsString := dbeCodigoModular.Text;
   DM1.cdsTransDevol.FieldByName('USEID').AsString     := dblcdUse.Text;
   DM1.cdsTransDevol.FieldByName('USEABR').AsString    := dbeUse.Text;
   DM1.cdsTransDevol.FieldByName('UPROID').AsString    := DM1.DisplayDescrip('prvTGE','APO101','UPROID','USEID='+ QuotedStr(dblcdUse.Text),'UPROID');
   sUProceso := DM1.DisplayDescrip('prvTGE','APO102','UPROABR','UPROID='+ QuotedStr(DM1.cdsTransDevol.fieldbyName('UPROID').asString),'UPROABR');
   DM1.cdsTransDevol.FieldByName('UPROABR').AsString  := sUProceso;
   DM1.cdsTransDevol.FieldByName('UPAGOID').AsString  := DM1.DisplayDescrip('prvTGE','APO101','UPAGOID','USEID = '+ QuotedStr(dblcdUse.Text),'UPAGOID');
   sUPago := DM1.DisplayDescrip('prvTGE','APO103','UPAGOABR','UPAGOID='+QuotedStr( DM1.cdsTransDevol.fieldbyName('UPAGOID').asString),'UPAGOABR');
   DM1.cdsTransDevol.FieldByName('UPAGOABR').AsString := sUPago;
   DM1.cdsTransDevol.FieldByName('DPTOID').AsString   := DM1.DisplayDescrip('prvTGE','APO101','DPTOID','USEID = '+ QuotedStr(dblcdUse.Text),'DPTOID');
   sDepto := DM1.DisplayDescrip('prvTGE','APO158','DPTOABR ','DPTOID='+ QuotedStr(DM1.cdsTransDevol.fieldbyName('DPTOID').asString),'DPTOABR');
   DM1.cdsTransDevol.FieldByName('DPTOABR').AsString  := sDepto;
   DM1.cdsTransDevol.FieldByName('TRANSANO').AsString := dbeAno.Text;
   DM1.cdsTransDevol.FieldByName('TRANSMES').AsString := DM1.StrZero(dbeMes.Text,DM1.cdsTransDevol.fieldbyName('TRANSMES').size);
  //  DM1.cdsTransDevol.fieldbyName('FORPAGOID').asString:=dblcFormaPago.Text;
  //  DM1.cdsTransDevol.fieldbyName('FORPAGOABR').asString:=edtFormaPago.Text;
   DM1.cdsTransDevol.FieldByName('TMONID').AsString   := dblctMoneda.Text;
   DM1.cdsTransDevol.FieldByName('TRANSMTO').AsString := dbeMontoRecl.Text;
  //  DM1.cdsTransDevol.fieldbyName('BANCOID').asString:=dblcBanco.Text;
  //  DM1.cdsTransDevol.fieldbyName('CCBCOID').asString:=dbeCuenta.Text;
  //  DM1.cdsTransDevol.fieldbyName('TRANSNOPE').asString:=dbeNumOpe.Text;
  //  DM1.cdsTransDevol.fieldbyName('TRANSFOPE').asString:=dbdtpFechaOperacion.Text;
   DM1.cdsTransDevol.FieldByName('TRANSFFCIND').asString := '';
   DM1.cdsTransDevol.FieldByName('TRANSINTID').asString  := 'DEV';
   DM1.cdsTransDevol.FieldByName('USUARIO').asString     := DM1.wUsuario;
   DM1.cdsTransDevol.FieldByName('FREG').AsDateTime      := Date;
   DM1.cdsTransDevol.FieldByName('HREG').AsDateTime      := Date+SysUtils.Time;
   cdsPost(DM1.cdsTransDevol);
   DM1.cdsTransDevol.Post;
end;

procedure TFReclamos.bbtnSigueClick(Sender: TObject);
begin
   If dblcdCodigo.Text = '' Then
    begin
     ShowMessage('Ingrese o Seleccione el Código de Asociado');
     dblcdCodigo.SetFocus;
     Exit;
    end;
   dbgAportesbtn.Enabled := True;
   LlenarDatosAsociado(dblcdCodigo.Text);

   xSQL := 'BEGIN SP_ACT_APO301ID (''' + dblcdCodigo.text + '''); END;';
   DM1.DCOM1.AppServer.EjecutaSQL(XSQL);


{
   xSQL := 'SELECT T.*,T.ROWID FROM APO301 T WHERE ASOID='+ QuotedStr(dblcdCodigo.Text)
          +' AND TRANSINTID='+ QuotedStr('APO')
          +' ORDER BY TRANSANO,TRANSMES ';
}
   xSQL := 'SELECT T.*,T.ROWID FROM APO301 T WHERE ASOID='+ QuotedStr(dblcdCodigo.Text)
          +' AND TRANSINTID='+ QuotedStr('APO')
          +' ORDER BY TRANSANO DESC,TRANSMES DESC,APO301ID DESC';

   DM1.FiltraCDS(DM1.cdsTransaccion, xSQL);

   TNumericField(DM1.cdsTransaccion.FieldByName('TRANSMTO')).DisplayFormat    := '###,###,##0.00';
   TNumericField(DM1.cdsTransaccion.FieldByName('TRANSMTO')).EditFormat       := '########0.00';

   TNumericField(DM1.cdsTransaccion.FieldByName('TRANSMTODEV')).DisplayFormat := '###,###,##0.00';
   TNumericField(DM1.cdsTransaccion.FieldByName('TRANSMTODEV')).EditFormat    := '########0.00';

   dbgAportes.ColumnByName('TRANSMTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsTransaccion,'SUM(TRANSMTO)',''),ffNumber, 10, 2);

   xSQL := 'SELECT * FROM APO303'
          +' WHERE RECLID ='+QuotedStr(DM1.cdsReclamo.FieldByName('RECLID').Asstring);

   DM1.FiltraCDS(DM1.cdsDetReclamo,xSQL);

   TNumericField(DM1.cdsDetReclamo.FieldByName('APOMONTO')).DisplayFormat := '###,###,##0.00';
   TNumericField(DM1.cdsDetReclamo.FieldByName('APOMONTO')).EditFormat    := '########0.00';

   dbgReclamo.ColumnByName('APOMONTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsDetReclamo,'SUM(APOMONTO)',''),ffNumber, 10, 2);

   TNumericField(DM1.cdsDetReclamo.FieldByName('RECLMONTO')).DisplayFormat := '###,###,##0.00';
   TNumericField(DM1.cdsDetReclamo.FieldByName('RECLMONTO')).EditFormat    := '########0.00';

   dbgReclamo.ColumnByName('RECLMONTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsDetReclamo,'SUM(RECLMONTO)',''),ffNumber, 10, 2);

   If DM1.wModo = 'A' Then
    begin
     DM1.cdsReclamo.FieldByName('ASOID').AsString      := dblcdCodigo.Text;
     DM1.cdsReclamo.FieldByName('USEID').AsString      := dblcdUse.Text;
     DM1.cdsReclamo.FieldByName('ASOCODMOD').AsString  := dbeCodigoModular.Text;
     DM1.cdsReclamo.FieldByName('ASOAPENOM').AsString  := dbeAsoNom.Text;
     DM1.cdsReclamo.FieldByName('RECLTMONID').AsString := 'N';
     DM1.cdsReclamo.FieldByName('RECLTOTAL').AsFloat   := DM1.OperClientDataSet(DM1.cdsDetReclamo, 'SUM(RECLMONTO)', '');
     DM1.cdsReclamo.FieldByName('USUARIO').AsString    := DM1.wUsuario;
     DM1.cdsReclamo.FieldByName('FREG').AsDateTime     := Date;
     DM1.cdsReclamo.FieldByName('HREG').AsDateTime     := Date+SysUtils.Time;

     dbgAportesbtn.Enabled        := True  ;
     dbgReclamoIButton.Enabled    := True  ;

    end;

   dbgReclamo.ColumnByName('RECLMONTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(dm1.cdsDetReclamo , 'SUM(RECLMONTO)',''),ffNumber, 10, 2);
   pnlInicio.Enabled     := False;
   dbgReclamo.Enabled    := True;
   dbgAportes.Enabled    := True;
   dbgreclamoiButton.Enabled := TRue ;

   bbtnSigue.Enabled := False ;
   btnAso.Enabled    := False ;

end;

procedure TFReclamos.dbgReclamoDblClick(Sender: TObject);
begin
   if dbgReclamo.DataSource.DataSet.RecordCount = 0 then
      Exit ;
   wModoDetalle := 'M' ;
   ConfiguraDetalleEdit(False);
   PnlReclamo.Visible := True ;

end;

procedure TFReclamos.dbgAportesDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
   if (dm1.wmodo = 'A') or (dm1.cdsreclamo.FieldBYName('RECESTADO').AsString='00') then
      Accept := True
   else
      Accept := False ;

end;

procedure TFReclamos.dbgReclamoEndDrag(Sender, Target: TObject; X, Y: Integer);
var
  swhere, flag : string;
  strAPO301ID , sRECLID : string ;
begin
  If target=dbgAportes Then
  begin
    strAPO301ID := dm1.cdsDetReclamo.FieldByName('APO301ID').AsString ;
    if dm1.wModo = 'M' then
       sRECLID  := dm1.cdsDetReclamo.FieldByName('RECLID').AsString
    else
       sRECLID  := '' ;

    if BuscaAporteOtroReclamo(strAPO301ID,sRECLID) = 0 then
      QuitaFlagAportes(strAPO301ID);

    DM1.cdsDetReclamo.Delete;

    xSuma := DM1.OperClientDataSet(DM1.cdsDetReclamo , 'SUM(RECLMONTO)','');
    dbgReclamo.ColumnByName('RECLMONTO').FooterValue := FloatToStrF(xSuma, ffNumber, 10, 2);
    if not (DM1.cdsReclamo.State in [dsInsert,dsEdit]) then
       dm1.cdsreclamo.edit;
    DM1.cdsReclamo.FieldByName('RECLTOTAL').AsFloat  := xSuma;

    dbgReclamo.ColumnByName('RECLMONTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsDetReclamo,'SUM(RECLMONTO)',''),ffNumber, 10, 2);
    dbgReclamo.ColumnByName('APOMONTO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsDetReclamo,'SUM(APOMONTO)',''),ffNumber, 10, 2);
  end;
end;

procedure TFReclamos.dbgAportesEndDrag(Sender, Target: TObject; X, Y: Integer);
var
   xFlag : String;
   sMensajeReclamoTramite : String ;
begin
   If Target=dbgReclamo Then
    begin
    //Validaciones
    {
     1. Verificar que no esté en el Detalle.
     2. Verificar que tenga saldo por Devolver.
     3. Verificar que no se encuentre en proceso de Reclamo.
    }
     // Inicio HPC_201501_APO
     If Length(Trim(DM1.cdsTransaccion.FieldByName('PVSLBENNR').AsString)) > 0 Then
       Begin
           MessageDlg('NO PUEDE RECLAMAR UN APORTE LIQUIDADO POR BENEFICIOS !!!', mtError, [mbOk], 0);
           Exit;
       End;
     // Fin HPC_201501_APO

     //1
     if BuscaAporte(DM1.cdsTransaccion.FieldByName('APO301ID').AsString) then
     begin
       Showmessage('Error, Aporte ya fue seleccionado !!!!!!!');
       Exit;
     end ;
     //2
     if ( DM1.cdsTransaccion.FieldByName('TRANSMTO').AsCurrency -
          DM1.cdsTransaccion.FieldByName('TRANSMTODEV').AsCurrency <= 0 ) then
     begin
       Showmessage('Error, Aporte ya no tiene Monto por Devolver !!!!!!!');
       Exit;
     end;
     //3
     if dm1.wModo = 'A' then
        sMensajeReclamoTramite := BuscaAporteReclamo(DM1.cdsTransaccion.FieldByName('APO301ID').AsString,'')
     else
        sMensajeReclamoTramite := BuscaAporteReclamo(DM1.cdsTransaccion.FieldByName('APO301ID').AsString,
                                                     DM1.cdsReclamo.FieldByName('RECLID').AsString) ;
     if trim(sMensajeReclamoTramite)<>'' then
     begin
       Showmessage(sMensajeReclamoTramite);
       Exit;
     end ;

     If (DM1.cdsTransaccion.FieldByName('APOFDEV').AsString = 'S') Then
       ShowMessage('¡OJO!, Parte de Este Aporte ha sido Devuelto en otro Reclamo !!!!!!!');

     If DM1.cdsTransaccion.FieldByName('APOFNP').AsString = 'S' Then
       Showmessage('¡OJO!, Este Aporte fué Reclamado anteriormente y no Procedió!!!!!!!');

     DM1.cdsDetReclamo.Insert;
     if cbxEnTramite.Checked then
        DM1.cdsDetReclamo.FieldByName('RECLSITID').AsString   := '01'    // 01-EN TRAMITE
     else
        DM1.cdsDetReclamo.FieldByName('RECLSITID').AsString   := '00';   // 00-INICIAL

     DM1.cdsDetReclamo.FieldByName('RECLID').AsString      := DM1.cdsReclamo.FieldByName('RECLID').AsString;
     DM1.cdsDetReclamo.FieldByName('RECLFINI').AsDateTime  := Date;
     DM1.cdsDetReclamo.FieldbyName('ASOCODMOD').AsString   := dbeCodigoModular.Text;
     DM1.cdsDetReclamo.FieldByName('ASOID').AsString       := DM1.cdsTransaccion.FieldByName('ASOID').AsString;
     DM1.cdsDetReclamo.FieldByName('APOANO').AsString      := DM1.cdsTransaccion.FieldByName('TRANSANO').AsString;
     DM1.cdsDetReclamo.FieldByName('APOMES').AsString      := DM1.cdsTransaccion.FieldByName('TRANSMES').AsString;
     DM1.cdsDetReclamo.FieldByName('TMONID').AsString      := DM1.cdstransaccion.FieldByName('TMONID').AsString;
     DM1.cdsDetReclamo.FieldByName('APOMONTO').AsFloat     := DM1.cdsTransaccion.FieldByName('TRANSMTO').AsFloat;
     DM1.cdsDetReclamo.FieldByName('RECLMONTO').AsFloat    := DM1.cdsTransaccion.FieldByName('TRANSMTO').AsFloat;
     DM1.cdsDetReclamo.FieldByName('BANCOID').AsString     := DM1.cdsTransaccion.FieldByName('BANCOID').AsString;
     DM1.cdsDetReclamo.FieldByName('TRANSNOPE').AsString   := DM1.cdsTransaccion.FieldByName('TRANSNOPE').AsString;
     DM1.cdsDetReclamo.FieldByName('TRANSFOPE').AsDateTime := DM1.cdstransaccion.FieldByName('TRANSFOPE').AsDatetime;
     DM1.cdsDetReclamo.FieldByName('FORPAGOID').AsString   := DM1.cdsTransaccion.FieldByName('FORPAGOID').AsString;
//
//     DM1.cdsDetReclamo.FieldByName('APO301ID').AsString    := DM1.cdsTransaccion.FieldByName('ROWID').AsString ;
     DM1.cdsDetReclamo.FieldByName('APO301ID').AsString    := DM1.cdsTransaccion.FieldByName('APO301ID').AsString ;
     
     DM1.cdsTransaccion.Edit;
     dm1.cdstransaccion.FieldByName('APOFRECL').AsString := 'S' ;
     cdsPost(DM1.cdsTransaccion);
     dm1.cdsTransaccion.Post;
//
     pnlReclamo.Visible  := True;
     dblcReclSit.OnExit(dblcReclSit) ;
     ConfiguraDetalleAdicion ;
     dbdtpFechaReclamo.SetFocus;
     wModoDetalle := 'A' ;
    end;
   dbgReclamo.ColumnByName('RECLMONTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsDetReclamo,'SUM(RECLMONTO)',''),ffNumber, 10, 2);
   dbgReclamo.ColumnByName('APOMONTO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsDetReclamo,'SUM(APOMONTO)',''),ffNumber, 10, 2);
   dbgAportes.ColumnByName('TRANSMTO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsTransaccion,'SUM(TRANSMTO)',''),ffNumber, 10, 2);
end;

procedure TFReclamos.dbgReclamoDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
   if (dm1.wmodo = 'A') or (dm1.cdsreclamo.FieldBYName('RECESTADO').AsString='00') then
      Accept := True
   else
      Accept := False ;
end;

procedure TFReclamos.dbgAportesMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   if ((dm1.wmodo = 'A') or (dm1.cdsreclamo.FieldBYName('RECESTADO').AsString='00'))
      and (DM1.cdsTransaccion.RecordCount > 0) then
      dbgAportes.BeginDrag(False);

{
   If DM1.cdsTransaccion.RecordCount = 0 Then
    ShowMessage('No Existen Aportes o Ya se reclamaron')
   Else
    dbgAportes.BeginDrag(False);
}
end;

procedure TFReclamos.dbgDetReclamo1DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
   Accept := True;
end;

procedure TFReclamos.dbgReclamoMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   if ((dm1.wmodo = 'A') or (dm1.cdsreclamo.FieldBYName('RECESTADO').AsString='00'))
      and (DM1.CdsDetReclamo.RecordCount > 0) then
    dbgReclamo.BeginDrag(False);

{
   If DM1.CdsDetReclamo.RecordCount = 0 Then
    Showmessage('No Existen Registros')
   Else
  //If HacerDrag Then
    dbgReclamo.BeginDrag(False);
}
end;

procedure TFReclamos.dbgAportesbtnClick(Sender: TObject);
begin
   If DM1.cdsTransaccion.RecordCount = 0 Then
    begin
     ShowMessage('No Hay Aportes para buscar!!!!');
     Exit;
    end;
   pnlBtnPrin.Enabled := False;
   dbgAportes.Enabled := False;
   dbgReclamo.Enabled := False;
   PnlBusApo.Visible  := True;
   dbeBusAno.SetFocus;
end;

procedure TFReclamos.btnBusCanClick(Sender: TObject);
begin
   PnlBusApo.Visible  := False;
   dbgAportes.Enabled := True;
   dbgReclamo.Enabled := True;
   pnlBtnPrin.Enabled := True;
end;

procedure TFReclamos.btnBusOKClick(Sender: TObject);
begin
  //Buscamos el aporte en cdstransaccion
   If Length(Trim(dbeBusMes.Text)) < 2 Then
    dbeBusMes.Text := '0'+dbeBusMes.Text;

   DM1.cdstransaccion.First;
   DM1.cdstransaccion.Locate('TRANSANO;TRANSMES', VarArrayOf([dbeBusAno.Text,dbeBusMes.Text]), [loPartialKey]);
   PnlBusApo.Visible  := False;
   dbgAportes.Enabled := True;
   dbgReclamo.Enabled := True;
   pnlBtnPrin.Enabled := True;
end;

procedure TFReclamos.btnAsoClick(Sender: TObject);
begin
//   showmessage(DM1.wModo);
//   Exit ;
   xNamForm  := 'FReclamos';
   MtxAsocia := TMant.Create(Self);
   FToolBusq := TFToolBusq.Create(Self);
   Try
    MtxAsocia.User            := DM1.wUsuario;
    MtxAsocia.Admin           := DM1.wAdmin;
    MtxAsocia.Module          := DM1.wModulo;
    MtxAsocia.DComC           := DM1.DCOM1;
    MtxAsocia.ControlGridDisp := Fprincipal.cgdPrincipal;
    MtxAsocia.OnCreateMant    := Fprincipal.ToolAsociaCreate;
    MtxAsocia.TableName       := 'APO201';
    MtxAsocia.Registros       := 30;
    MtxAsocia.ClientDataSet   := dm1.cdsAsociados;
    MtxAsocia.Filter          := '';
    MtxAsocia.Titulo 	      := 'Asociados';
    MtxAsocia.OnInsert 	      := nil;
    MtxAsocia.OnEdit 	      := FPrincipal.OnEditAsoCta;
    MtxAsocia.OnDelete        := nil;
    MtxAsocia.OnShow 	      := nil;
    MtxAsocia.SectionName     := 'BuscaApo';
    MtxAsocia.FileNameIni     := '\SolApo.Ini';
// Inicio HPC_201501_APO     - Cambio de DCOM a Socket
    MtxAsocia.Tipo               := 'NORMAL';
// Fin    HPC_201501_APO     - Cambio de DCOM a Socket
    MtxAsocia.Execute;
   Finally
    MtxAsocia.Free;
   end;
end;

procedure TFReclamos.dbgReclamoIButtonClick(Sender: TObject);
begin
   dbgAportesbtn.OnClick(dbgAportesbtn);
   Exit ;
   DM1.cdsDetReclamo.Insert;
   DM1.cdsDetReclamo.FieldByName('RECLSITID').AsString  := '01';   // 01-En Tramite
   DM1.cdsDetReclamo.FieldByName('RECLID').AsString     := DM1.cdsReclamo.FieldByName('RECLID').AsString;
   DM1.cdsDetReclamo.FieldByName('RECLFINI').AsDateTime := Date;
   DM1.cdsDetReclamo.FieldbyName('ASOCODMOD').AsString  := dbeCodigoModular.Text;
   DM1.cdsDetReclamo.FieldByName('ASOID').AsString      := dblcdCodigo.Text;
  //DM1.cdsDetReclamo.FieldByName('APOANO').AsString     := DM1.cdsTransaccion.FieldByName('TRANSANO').AsString;
  //DM1.cdsDetReclamo.FieldByName('APOMES').AsString     := DM1.cdsTransaccion.FieldByName('TRANSMES').AsString;
  //DM1.cdsDetReclamo.FieldByName('TMONID').AsString     := DM1.cdstransaccion.FieldByName('TMONID').AsString;
   DM1.cdsDetReclamo.FieldByName('APOMONTO').AsFloat    := DM1.cdsTransaccion.FieldByName('TRANSMTO').AsFloat;
   DM1.cdsDetReclamo.FieldByName('RECLMONTO').AsFloat   := DM1.cdsTransaccion.FieldByName('TRANSMTO').AsFloat;
  //DM1.cdsDetReclamo.FieldByName('BANCOID').AsString    := DM1.cdsTransaccion.FieldByName('BANCOID').AsString;
  //DM1.cdsDetReclamo.FieldByName('TRANSNOPE').AsString  := DM1.cdsTransaccion.FieldByName('TRANSNOPE').AsString;
  //DM1.cdsDetReclamo.FieldByName('TRANSFOPE').AsDateTime:= DM1.cdstransaccion.FieldByName('TRANSFOPE').AsDatetime;
  //DM1.cdsDetReclamo.FieldByName('FORPAGOID').AsString  := DM1.cdsTransaccion.FieldByName('FORPAGOID').AsString;

   pnlReclamo.Visible     := True;
   dblcReclSit.Enabled    := False;
   dblcReclSitExit(Sender);
   dbmObservacion.Enabled := True;
   bbtnAceptar.Enabled    := True;

   dbeAno.Enabled         := True;
   dbeMes.Enabled         := True;
   dbeFOperacion.Enabled  := True;
   dbeNOperacion.Enabled  := True;
   dblctmoneda.Enabled    := True;
   if DM1.cdsTMoneda.Active = False Then
    DM1.cdsTMoneda.Open;

   dbmresultado.Enabled   := False;
   dblcReclMotId.Enabled  := True;
   dbeReclMotivo.Clear;
   dbgAportes.Enabled     := False;
   dbgReclamo.Enabled     := False;
   pnlBtnPrin.Enabled     := False;
   dbeMontoRecl.Enabled   := True;

   dbeAno.SetFocus;

   dbgReclamo.ColumnByName('RECLMONTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsDetReclamo, 'SUM(RECLMONTO)',''), ffNumber, 10, 2);
   dbgReclamo.ColumnByName('APOMONTO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsDetReclamo, 'SUM(APOMONTO)',''), ffNumber, 10, 2);
   dbgAportes.ColumnByName('TRANSMTO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsTransaccion, 'SUM(TRANSMTO)',''), ffNumber, 10, 2);
end;

procedure TFReclamos.dbeMesExit(Sender: TObject);
begin
   dbeMes.Text := DM1.StrZero(dbeMes.Text, 2);
   DM1.cdsDetReclamo.FieldByName('APOMES').AsString  := DM1.StrZero(dbeMes.Text, 2);
end;

procedure TFReclamos.dblcdCodigoExit(Sender: TObject);
var
   strASOID : String ;
begin
   if btnAso.Focused or z2bbtnCancel.Focused then
   begin
      Exit ;
   end ;

   if trim(dblcdCodigo.Text) = '' then
   begin
     ShowMessage('Ingrese Código de Asociado');
     dblcdcodigo . setfocus ;
     Exit ;
   end   ;
   strASOID := Trim(strASOID);
   sWhere := 'ASOID='+ QuotedStr(DM1.StrZero(trim(dblcdCodigo.Text), xLogAsoid));
   strASOID := DM1.DisplayDescrip('prvTGE', 'APO201', 'ASOID, UPROID, UPAGOID, USEID', sWhere, 'ASOID');
   if trim(strASOID) <> '' then
   begin
     LlenarDatosAsociado (strASOID);
   end
   else
   begin
     dblcdUPro.Clear;
     dbeUPro.Clear;
     dblcdUpag.Clear;
     dbeUpag.Clear;
     dblcdUse.Clear;
     dbeUse.Clear;
     dblcdCodigo.Clear;
     ShowMessage('NO se encuentra este Código de Asociado');
     dblcdCodigo.SetFocus ;
   end ;
end;

procedure TFReclamos.FormShow(Sender: TObject);
var
  strEstadoDoc : String ;
begin

  ConfiguraGridAportes ;
  Z2bbtnAceptar.Enabled     := False ;

  bbtnSigue.Enabled := False ;
  btnAso.Enabled    := False ;
  dbgReclamoIButton . Enabled   := False ;
  dbgAportesbtn     . Enabled   := False ;

  If DM1.wModo='M' Then
  begin
    lblDevuelto.Visible := ( dm1.cdsReclamo.FieldByName('RECDEVUELTO').AsString = 'S' );

    lblEstado.Caption   := RecEstado ;

    LlenarDatosAsociado(DM1.cdsReclamo.FieldByName('ASOID').AsString);
    FReclamos.bbtnSigueClick(sender);
    pnlInicio.Enabled     :=False;
    Z2bbtnCancel.Enabled  :=True;
//wmc xxx    Z2bbtnNuevo.Enabled   :=True;
    dbgReclamoIButton.Enabled :=False;
    //Llenar Cache de Edición del detalle
    LlenarCacheEdicionDetalle ;
    //////*******************************************************//////
    //Fijarse si es editable el detalle
    strEstadoDoc := dm1.cdsReclamo.fieldByName('RECESTADO').AsString ;
    //Recuperar La Situación Original
//wmc xxx    Z2bbtnAceptar.Enabled     := ((strEstadoDoc = '') or (trim(strEstadoDoc) = '00') or (trim(strEstadoDoc) = '01')) ;
    dbgReclamoIButton . Enabled   := (trim(strEstadoDoc) = '00');
    dbgAportesbtn . Enabled       := True ;

    //////*******************************************************//////
    //
  end;

  If DM1.wModo='A' Then
  begin

    bbtnSigue.Enabled := True ;
    btnAso.Enabled    := True ;

    lblDevuelto.Visible := False ;
    lblEstado.Caption   := 'NUEVO - [SIN GRABAR]' ;
    // Boton Insertar
    xSQL:='SELECT ASOID, ASOCODMOD, ASOCODPAGO, ASOAPEPAT, ASOAPEMAT, ASONOMBRES, ASOAPENOM, '+
          'TIPDOCCOD, ASODOCNUM FROM APO201 WHERE ROWNUM < 1';
    Screen.Cursor:=crHourGlass;
    DM1.Filtracds(DM1.cdsAsociados1,xSQL);
    Screen.Cursor:=crDefault;
    NuevoReclamo(sender);
    //HacerDrag:=True;
    dbgAportesbtn.Enabled:=False;

    xSQL:='SELECT * FROM APO301 WHERE ROWNUM < 1';
    DM1.FiltraCDS(DM1.cdsTransaccion,xSQL);

    TNumericField(DM1.cdsTransaccion.FieldByName('TRANSMTO')).DisplayFormat:='###,###,##0.00';
    TNumericField(DM1.cdsTransaccion.FieldByName('TRANSMTO')).EditFormat   :='########0.00';

    TNumericField(DM1.cdsTransaccion.FieldByName('TRANSMTODEV')).DisplayFormat := '###,###,##0.00';
    TNumericField(DM1.cdsTransaccion.FieldByName('TRANSMTODEV')).EditFormat    := '########0.00';

    dbgAportes.ColumnByName('TRANSMTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsTransaccion,'SUM(TRANSMTO)',''),ffNumber, 10, 2);

    xSQL:='SELECT * FROM APO303 WHERE ROWNUM < 1 ';
    DM1.FiltraCDS(DM1.cdsDetReclamo,xSQL);
    TNumericField(DM1.cdsDetReclamo.FieldByName('APOMONTO')).DisplayFormat:='###,###,##0.00';
    TNumericField(DM1.cdsDetReclamo.FieldByName('APOMONTO')).EditFormat   :='########0.00';

    dbgReclamo.ColumnByName('APOMONTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsDetReclamo,'SUM(APOMONTO)',''),ffNumber, 10, 2);

    TNumericField(DM1.cdsDetReclamo.FieldByName('RECLMONTO')).DisplayFormat:='###,###,##0.00';
    TNumericField(DM1.cdsDetReclamo.FieldByName('RECLMONTO')).EditFormat   :='########0.00';

    dbgReclamo.ColumnByName('RECLMONTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsDetReclamo,'SUM(RECLMONTO)',''),ffNumber, 10, 2);

    DM1.cdsReclamo.Insert;
//wmc xxx    z2bbtnNuevo.Enabled       :=False;
    pnlInicio.Enabled   :=True;
    pnlInicio.SetFocus ;
    Perform(CM_DialogKey, VK_TAB, 0);

  end;

end;

procedure TFReclamos.DesHabilitaGrids;
begin
   dbgAportes.Enabled         := False ;
   dbgReclamo.Enabled         := False ;
   dbgAportesBtn.Enabled      := False ;
   dbgReclamoIButton.Enabled  := False ;
   dbgReclamo.ColumnByName('RECLMONTO').FooterValue := '0.00';
   dbgReclamo.ColumnByName('APOMONTO').FooterValue  := '0.00';
   dbgAportes.ColumnByName('TRANSMTO').FooterValue  := '0.00';

end;

procedure TFReclamos.HabilitaGrids;
begin
   dbgAportes.Enabled         := True ;
   dbgReclamo.Enabled         := True ;
   dbgAportesBtn.Enabled      := True ;
   dbgReclamoIButton.Enabled  := True ;
end;

procedure TFReclamos.bbtnCierraImpClick(Sender: TObject);
begin
   bbtnCancelar.SetFocus ;
   bbtnCancelar.OnClick(bbtnCancelar);
end;

procedure TFReclamos.ConfiguraGridAportes;
begin
    dbgAportes.Selected.Clear;
    dbgAportes.Selected.Add('TRANSANO'#9'10'#9'Año');
    dbgAportes.Selected.Add('TRANSMES'#9'10'#9'Mes');
    dbgAportes.Selected.Add('FORPAGOABR'#9'10'#9'Forma de Pago');
    dbgAportes.Selected.Add('TRANSMTO'#9'10'#9'Monto');
    dbgAportes.Selected.Add('TRANSMTODEV'#9'10'#9'Monto Dev.');    
    dbgAportes.Selected.Add('TRANSNOPE'#9'10'#9'Nro Operación');
    dbgAportes.Selected.Add('TRANSFOPE'#9'10'#9'Fecha Operación');
    dbgAportes.Selected.Add('APOFRECL'#9'6'#9'Reclamo'#9'F');
    dbgAportes.Selected.Add('APOFDEV'#9'6'#9'Devuelto'#9'F');
    dbgAportes.Selected.Add('APOFNP'#9'6'#9'No Procede'#9'F');
    dbgAportes.SetControlType('APOFRECL', fctCheckBox, 'S;N');
    dbgAportes.SetControlType('APOFDEV', fctCheckBox, 'S;N');
    dbgAportes.SetControlType('APOFNP', fctCheckBox, 'S;N');
    dbgAportes.ApplySelected;
end;

function TFReclamos.BuscaAporte;
var
  cds : TwwClientDataset ;
begin
  cds := TwwClientDataset.CReate(self) ;
  cds.CloneCursor(dm1.cdsDetReclamo,False);
  result := cds.Locate('APO301ID',VarArrayOf([strAPO301ID]),[]);
  cds.Free ;
  cds := nil ;
end;

function TFReclamos.BuscaAporteReclamo(strAPO301ID , sRECLID: String): String;
var
  sSQL : String ;
begin
  //para verificar que no se encuentre en proceso de Reclamo
  //en Otro Documento
  with dm1.cdsQry do
  begin
    Close;
    sSQL :=
             '  SELECT APO302.RECLID                          '
           + '  FROM APO303 , APO302                          '
           + '  WHERE                                         '
           + '  APO303.APO301ID ='''+ strAPO301ID +'''        '
           + '  AND APO303.RECLID = APO302.RECLID             '
           + '  AND APO302.RECDEVUELTO = ''N''                '
           + '  AND NOT APO302.RECESTADO IN (''02'',''05'')   ' ;

    if trim(sRECLID) <> '' then
       sSQL := sSQL + ' AND APO302.RECLID <> ''' + sRECLID + ''' ' ;

    DataRequest(sSQL);
    Open ;
    if RecordCount > 0 then
       Result := 'Este Aporte ya se encuentra en Fase de Reclamo en el documento Nº ' +  FieldBYName('RECLID').AsString
    else
       Result := '';
    Close ;
  end;

end;

function TFReclamos.BuscaAporteOtroReclamo(strAPO301ID,sRECLID: String): Integer;
var
  sSQL : String ;
begin
  with dm1.cdsQry do
  begin
    Close;
    sSQL :=
              ' SELECT APO302.RECLID                       '
            + ' FROM APO303 , APO302                       '
            + ' WHERE                                      '
            + ' APO301ID =''' + strAPO301ID + '''          '
            + ' AND APO303.RECLID = APO302.RECLID          '
            + ' AND APO302.RECESTADO <> ''05''          ' ;

    if Trim(sRECLID) <> '' then
       sSQL := sSQL + ' AND APO302.RECLID <> ''' + sRECLID + '''   ' ;
    DataRequest(sSQL);
    Open ;
    Result := RecordCount ;
    Close ;
  end;

end;

procedure TFReclamos.dbeMontoReclKeyPress(Sender: TObject; var Key: Char);
var
   sCadBuscar : String ;
   i : integer  ;
   j : integer  ;
begin
   if key = #8 then
      Exit ;

   //Solo Números
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
     j := dbeMontoRecl.SelStart ;
     if ( j - i >= 2 ) and ( key <> #8 ) then
        key := #0
     else
     begin
        if (j >= i) and ( key <> #8 ) then
           if (Length(sCadBuscar) - i) >= 2 then
           begin
//               dbeMonto.Text := leftstr(sCadBuscar,Length(sCadBuscar) - 1) ;
               dbeMontoRecl.Text := copy(sCadBuscar,1,Length(sCadBuscar) - 1) ;
               dbeMontoRecl.SelStart := j ;
           end ;
     end ;
   end ;
end;

procedure TFReclamos.dbeMontoAceptadoKeyPress(Sender: TObject; var Key: Char);
var
   sCadBuscar : String ;
   i : integer  ;
   j : integer  ;
begin
   if key = #8 then
      Exit ;

   //Solo Números
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
     j := dbeMontoRecl.SelStart ;
     if ( j - i >= 2 ) and ( key <> #8 ) then
        key := #0
     else
     begin
        if (j >= i) and ( key <> #8 ) then
           if (Length(sCadBuscar) - i) >= 2 then
           begin
//               dbeMonto.Text := leftstr(sCadBuscar,Length(sCadBuscar) - 1) ;
               dbeMontoRecl.Text := copy(sCadBuscar,1,Length(sCadBuscar) - 1) ;
               dbeMontoRecl.SelStart := j ;
           end ;
     end ;
   end ;
end;

procedure TFReclamos.dblcReclMotIdChange(Sender: TObject);
begin
  if Length(trim(dblcReclMotId.Text))= 2 then
  begin
   sWhere := 'RECLMOTID = '+ QuotedStr(dblcReclMotId.Text) ;
   dbeReclMotivo.Text := DM1.DisplayDescrip('prvTGE', 'APO114', 'RECLMOTDES', sWhere, 'RECLMOTDES');
  end
  else
   dbeReclMotivo.Text := '' ;
end;

procedure TFReclamos.PageControl1Changing(Sender: TObject;
  var AllowChange: Boolean);
var
  ctl : TWinControl ;
  b1 , b2 , b3 : boolean ;
  strCadena    : String  ;
label
  fff1,fff2,fff3;
begin
  if PageControl1.ActivePageIndex = 0 then
  begin
     b1 := False ;
     b2 := False ;
     b3 := False ;
     ctl := ActiveControl ;
     strCadena := TCustomEdit(ctl).Text;
     PageControl1.SetFocus ;
     
     if ctl = dbeMontoRecl then
        goto fff1;
     if ctl = dblcReclMotId then
        goto fff2;
     if ctl = dbdtpFechaReclamo then
        goto fff3;

fff1:
     if (trim(dbeMontoRecl.Text) = '.') or (trim(dbeMontoRecl.Text) = '') then
     begin
         AllowChange := False ;
         if not dbeMontoRecl.Focused then
         begin
            ShowMessage('No puede Ingresar al Tab de Evaluación' + char(13) + 'Ingrese Monto Reclamado');
            dbeMontoRecl.SetFocus ;
         end ;
         Exit ;
     end
     else
     begin
        if not b1 then
        begin
          b1 := True ;
          goto fff1;
        end ;
     end ;
fff2:
     if (trim(dblcReclMotId.Text) = '') then
     begin
       AllowChange := False ;
       ShowMessage('No puede Ingresar al Tab de Evaluación' + char(13) + 'Ingrese Motivo del Reclamo');
       dblcReclMotId.SetFocus ;
       Exit ;
     end
     else
     begin
        if not b2 then
        begin
          b2 := True ;
          goto fff1;
        end ;
     end ;
fff3:
     if (trim(dbdtpFechaReclamo.Text) = '') then
     begin
       AllowChange := False;
       dbdtpFechaReclamo.SetFocus ;
       if ctl = dbdtpFechaReclamo then
       begin
         if trim(strCadena)= '' then
           ShowMessage('No puede Ingresar al Tab de Evaluación' + char(13) + 'Ingrese Fecha del Reclamo');
       end
       else
         ShowMessage('No puede Ingresar al Tab de Evaluación' + char(13) + 'Ingrese Fecha del Reclamo');
       Exit ;
     end
     else
     begin
        if not b3 then
        begin
          b3 := True ;
          goto fff1;
        end ;
     end ;

  end ;
end;

function TFReclamos.EsNumero(strNumero : String): boolean;
var
 currNumero : Currency ;
begin
 result := True ;
 try
  currNumero := StrToCurr( strNumero );
 except
  result := False ;
 end ;
end;

procedure TFReclamos.dbdtpFechaReclamoExit(Sender: TObject);
begin
   if bbtnCancelar.Focused then
      Exit ;
   if bbtnCierraImp.Focused then
      Exit ;   
   if trim(dbdtpFechaReclamo.Text) = '' then
      Exit ;
   if dm1.cdsDetReclamo.FieldByName( dbdtpFechaReclamo.DataField ).AsDateTime <
      dm1.cdsDetReclamo.FieldByName( dbeFOperacion.DataField ).AsDateTime then
   begin
      ShowMessage('Fecha de Reclamo NO puede ser Menor que la Fecha de Operación');
      dbdtpFechaReclamo.DataSource.Dataset.FieldByName(dbdtpFechaReclamo.DataField).Clear ;
//      dbdtpFechaReclamo.SetFocus ;
   end;
end;

procedure TFReclamos.FormCreate(Sender: TObject);
var
  sWhere : String ;
begin

  iTransPacketRecord := dm1.cdsTransaccion.PacketRecords ;
  dm1.cdsTransaccion.PacketRecords := -1 ;
  LlenaDatasetSituacion ;
  dblctmoneda.OnExit(dblctmoneda) ;
  sWhere := 'TMONID = '+ QuotedStr('N') ;
  dbeMoneda.Text := DM1.DisplayDescrip('prvTGE', 'TGE103', 'TMONDES', sWhere, 'TMONDES');

end;

procedure TFReclamos.LlenaDatasetSituacion;
begin
   with cdsSituacion do
   begin
     Append ;
     FieldByName('RECLSITID').AsString  := '00' ;
     FieldByName('RECLSITDES').AsString := 'INICIAL' ;
     Append ;
     FieldByName('RECLSITID').AsString  := '01' ;
     FieldByName('RECLSITDES').AsString := 'EN TRÁMITE' ;
     Append ;
     FieldByName('RECLSITID').AsString  := '02' ;
     FieldByName('RECLSITDES').AsString := 'RECHAZADO' ;
     Append ;
     FieldByName('RECLSITID').AsString  := '03' ;
     FieldByName('RECLSITDES').AsString := 'ACEPTADO PARCIALMENTE' ;
     Append ;
     FieldByName('RECLSITID').AsString  := '04' ;
     FieldByName('RECLSITDES').AsString := 'ACEPTADO' ;
     Append ;
     FieldByName('RECLSITID').AsString  := '05' ;
     FieldByName('RECLSITDES').AsString := 'ANULADO' ;
     Append ;
     FieldByName('RECLSITID').AsString  := '06' ;
     FieldByName('RECLSITDES').AsString := 'DEVUELTO' ;
     Append ;
     FieldByName('RECLSITID').AsString  := '07' ;
     FieldByName('RECLSITDES').AsString := 'PARCIALMENTE EVALUADO' ;
     Next ;
   end ;
end;

procedure TFReclamos.LlenaDatasetCambioSituacion;
begin

   with cdsCambioSituacion do
   begin
     if Active then
        close ;
     CreateDataSet ;
   end ;

   if (sSituacion = '00') or (sSituacion = '') then
   begin
     with cdsCambioSituacion do
     begin
       Append ;
       FieldByName('RECLSITID').AsString  := '00' ;
       FieldByName('RECLSITDES').AsString := 'INICIAL' ;
       Append ;
       FieldByName('RECLSITID').AsString  := '01' ;
       FieldByName('RECLSITDES').AsString := 'EN TRÁMITE' ;
       Append ;
       FieldByName('RECLSITID').AsString  := '02' ;
       FieldByName('RECLSITDES').AsString := 'RECHAZADO' ;
       Append ;
       FieldByName('RECLSITID').AsString  := '03' ;
       FieldByName('RECLSITDES').AsString := 'ACEPTADO PARCIALMENTE' ;
       Append ;
       FieldByName('RECLSITID').AsString  := '04' ;
       FieldByName('RECLSITDES').AsString := 'ACEPTADO' ;
       Next ;
     end ;
   end ;
   if sSituacion = '01' then
   begin
     with cdsCambioSituacion do
     begin
       Append ;
       FieldByName('RECLSITID').AsString  := '01' ;
       FieldByName('RECLSITDES').AsString := 'EN TRÁMITE' ;
       Append ;
       FieldByName('RECLSITID').AsString  := '02' ;
       FieldByName('RECLSITDES').AsString := 'RECHAZADO' ;
       Append ;
       FieldByName('RECLSITID').AsString  := '03' ;
       FieldByName('RECLSITDES').AsString := 'ACEPTADO PARCIALMENTE' ;
       Append ;
       FieldByName('RECLSITID').AsString  := '04' ;
       FieldByName('RECLSITDES').AsString := 'ACEPTADO' ;
       Next ;
     end ;
   end ;
   Exit ;
{wmc xxx
     if trim(sSituacion) <> '01' then
     begin
       if trim(sSituacion) = '' then
       begin
         Append ;
         FieldByName('RECLSITID').AsString  := '00' ;
         FieldByName('RECLSITDES').AsString := 'INICIAL' ;
       end ;
       Append ;
       FieldByName('RECLSITID').AsString  := '01' ;
       FieldByName('RECLSITDES').AsString := 'EN TRÁMITE' ;
     end ;

     Append ;
     FieldByName('RECLSITID').AsString  := '02' ;
     FieldByName('RECLSITDES').AsString := 'RECHAZADO' ;
     Append ;
     FieldByName('RECLSITID').AsString  := '03' ;
     FieldByName('RECLSITDES').AsString := 'ACEPTADO PARCIALMENTE' ;
     Append ;
     FieldByName('RECLSITID').AsString  := '04' ;
     FieldByName('RECLSITDES').AsString := 'ACEPTADO' ;
     Next ;

   end ;
}
end;

procedure TFReclamos.dblcCambioSituacionExit(Sender: TObject);
var
  sSituacionOri    : String ;
  sSituacionActual : String ;
begin
  sSituacionActual := Trim(dblcReclSit.Text) ;
  if Trim(dblcCambioSituacion.Text) = '' then
     if dblcCambioSituacion.Tag = -1 then
        Exit
     else
     begin
        dbeCambioSituacion.Text   := '' ;
        //Regresar al Estado Anterior en Habilitar y Deshabilitar Controles
        ConfiguraControlesCambioSituacion(trim(sSituacionActual));
        Exit ;
     end;

  if EsNumero(Trim(dblcCambioSituacion.Text)) then
  begin
   if cdsCambioSituacion.Locate('RECLSITID',VarArrayOf([trim(dblcCambioSituacion.Text)]),[]) then
   begin
      if Trim(dblcCambioSituacion.Text) = trim(dblcReclSit.Text) then
      begin
//         ShowMessage('OJO No Ha Cambiado de Situación');
         dblcCambioSituacion.Clear ;
         dbeCambioSituacion.Clear  ;
         ConfiguraControlesCambioSituacion(trim(dblcReclSit.Text));
      end
      else
      begin
         dbeCambioSituacion.Text := cdsCambioSituacion.FieldByName('RECLSITDES').AsString ;
         ConfiguraControlesCambioSituacion(trim(dblcCambioSituacion.Text));
      end;
   end
   else
   begin
      dbeCambioSituacion.Text   := '' ;
      dblcCambioSituacion.Text  := '' ;
      //Regresar al Estado Anterior en Habilitar y Deshabilitar Controles
      ConfiguraControlesCambioSituacion(trim(sSituacionActual));
   end ;
  end
  else
  begin
    dbeCambioSituacion.Text   := '' ;
    dblcCambioSituacion.Text  := '' ;
    //Regresar al Estado Anterior en Habilitar y Deshabilitar Controles
    ConfiguraControlesCambioSituacion(trim(sSituacionActual));
  end ;
end;

procedure TFReclamos.ConfiguraDetalleAdicion;
begin
   PageControl1.ActivePageIndex := 0 ;
   pnlInicio  . Enabled := False ;
//wmc xxx   pnlDatos   . Enabled := False ;
   dbgAportes . Enabled := False ;
   dbgReclamo . Enabled := False ;
   pnlBtnPrin . Enabled := True ;

   TabSheet1.Enabled   := True ;
   TabSheet2.Enabled   := True ;
   bbtnAceptar.Enabled := True ;
   PageControl1.ActivePageIndex := 0 ;
   //tab 1
   dbdtpFechaReclamo.Enabled    := True ;
   dblcReclMotId.Enabled        := True ;
   dbeMontoRecl.Enabled         := True ;
   dbmObservacion.Enabled       := True ;

   //tab 2
   dblcCambioSituacion  .Enabled := True ;   
   dbdtpFechaConclusion .Enabled := False ;
   dbeMontoAceptado     .Enabled := False ;
   dbmresultado         .Enabled := False ;
   //
   dblcCambioSituacion.Clear ;
   dbeCambioSituacion.Clear  ;
   dblcSituacionOri.Clear ;
   dbeSituacionOri.Clear  ;
   DesHabilitaPantallaPrincipal ;
   LlenaDatasetCambioSituacion('');
end;

procedure TFReclamos.ConfiguraDetalleEdit;
var
   strEstado    : String ;
   strEstadoDoc : String ;
   strSituacion : String ;
begin

   pnlInicio  . Enabled := False ;
//wmc xxx   pnlDatos   . Enabled := False ;
   dbgAportes . Enabled := False ;
   dbgReclamo . Enabled := False ;
   pnlBtnPrin . Enabled := False ;

   if bAdicion then
       ConfiguraDetalleAdicion
   else
   begin
      dblcCambioSituacion.Clear ;
      dbeCambioSituacion.Clear  ;
      dblcSituacionOri.Clear ;
      dbeSituacionOri.Clear ;
      dblcReclSit.OnExit(dblcReclSit);
      //Fijarse si es editable el detalle
      strEstadoDoc := dm1.cdsReclamo.fieldByName('RECESTADO').AsString ;
      //Recuperar La Situación Original
//      strEstado := dm1.cdsDetReclamo.FieldByName('RECLSITID').AsString ;
      if (strEstadoDoc = '00') or (trim(strEstadoDoc) = '') then
         strEstado    := ''
      else if strEstadoDoc = '01' then
             strEstado := '01' ;

      //Estado del Aporte Reclamado
      if DM1.wModo = 'A' then
         strEstado := ''
      else
      begin
         if strEstadoDoc = '00' then
         begin
            strEstado := '' ;
         end
         else
         begin
            if trim(VarToStr(dm1.cdsDetReclamo.FieldByName('RECLSITID').OldValue)) = '' then
                strEstado := dm1.cdsDetReclamo.FieldByName('RECLSITID').AsString
            else
                strEstado := trim(VarToStr(dm1.cdsDetReclamo.FieldByName('RECLSITID').OldValue)) ;
         end;
      end ;

      if (strEstadoDoc <> '00') and (strEstadoDoc <> '01') and (strEstadoDoc <> '07') and (strEstadoDoc <> '') then
      begin
         //No se Puede Editar
         //Poner en Enabled = False Los Paneles de Edición
         TabSheet1.Enabled := False ;
         TabSheet2.Enabled := False ;
         bbtnAceptar.Enabled := False ;
         Exit;
      end
      else
          if (strEstado = '02') or (strEstado = '03') or (strEstado = '04') then
          begin
             //No se puede Editar
             //Poner en Enabled = False Los Paneles de Edición
             TabSheet1.Enabled := False ;
             TabSheet2.Enabled := False ;
             bbtnAceptar.Enabled := False ;
             Exit ;
          end
          else
          begin
             TabSheet1.Enabled   := True ;
             TabSheet2.Enabled   := True ;
             bbtnAceptar.Enabled := True ;
          end ;
      // En Base a lo siguiente se verifica si se activa o no Cambio de Situación
      // A partir de Aqui validaciones Iniciales con respecto a Situacion Original
      strSituacion := SituacionOriginal(DM1.cdsDetReclamo.FieldBYName('APO301ID').AsString);
      if strSituacion = '' then
      begin
         dblcSituacionOri.Clear ;
         dbeSituacionOri.Clear  ;
      end
      else
      begin
         cdsSituacion.Locate('RECLSITID',VarArrayOf([strsituacion]),[]);
         dblcSituacionOri.Text := strSituacion ;
         dbeSituacionOri.Text  := cdsSituacion.FieldByName('RECLSITDES').AsString ;
      end;

      LlenaDatasetCambioSituacion(strSituacion);
      strSituacion := dm1.cdsDetReclamo.FieldByName('RECLSITID').AsString ;
      ValidaSituacionInicial(strSituacion);
      //Aqui configura cdsCambioSituacion

   end;
end;

procedure TFReclamos.ConfiguraControlesCambioSituacion;
var
  sSituacionOri ,
  sSituacionAct : String ;
begin
  sSituacionOri := trim(dblcSituacionOri.Text) ;
  sSituacionAct := trim(dblcReclSit.Text) ;

  if sSituacion = '00' then
  begin
     dblcReclMotId.Enabled        := True ;
     dbeMontoRecl.Enabled         := True ;
     dbmObservacion.Enabled       := True ;
     dbdtpFechaReclamo.Enabled    := True ;

     dbdtpFechaConclusion.Enabled := False ;
     dbeMontoAceptado.Enabled     := False ;
     dbmresultado.Enabled         := False ;
       try
         dm1.cdsDetReclamo.FieldByName(dbdtpFechaConclusion.DataField).Clear ;
       except
         dm1.cdsDetReclamo.Edit;
         dm1.cdsDetReclamo.FieldByName(dbdtpFechaConclusion.DataField).Clear ;
       end ;
       dm1.cdsDetReclamo.FieldByName(dbeMontoAceptado.DataField).Clear ;
       dm1.cdsDetReclamo.FieldByName(dbmresultado.DataField).Clear ;

  end
  else if sSituacion = '01' then
       begin

           dblcReclMotId.Enabled        := False ;
           dbeMontoRecl.Enabled         := False ;
           dbmObservacion.Enabled       := False ;
           dbdtpFechaReclamo.Enabled    := False ;

           dbdtpFechaConclusion.Enabled := False ;
           dbeMontoAceptado.Enabled     := False ;
           dbmresultado.Enabled         := False ;
           try
              dm1.cdsDetReclamo.FieldByName(dbdtpFechaConclusion.DataField).Clear ;
           except
              dm1.cdsDetReclamo.Edit ;
              dm1.cdsDetReclamo.FieldByName(dbdtpFechaConclusion.DataField).Clear ;
           end;
           dm1.cdsDetReclamo.FieldByName(dbeMontoAceptado.DataField).Clear ;
           dm1.cdsDetReclamo.FieldByName(dbmresultado.DataField).Clear ;

       end
  else if sSituacion = '02' then
       begin
           dblcReclMotId.Enabled        := False ;
           dbeMontoRecl.Enabled         := False ;
           dbmObservacion.Enabled       := False ;
           dbdtpFechaReclamo.Enabled    := False ;

           dbdtpFechaConclusion.Enabled := True ;
           dbeMontoAceptado.Enabled     := False ;
           dbmresultado.Enabled         := True ;
           try
             dm1.cdsDetReclamo.FieldByName(dbdtpFechaConclusion.DataField).Clear ;
           except
             dm1.cdsDetReclamo.Edit ;
             dm1.cdsDetReclamo.FieldByName(dbdtpFechaConclusion.DataField).Clear ;
           end;
           dm1.cdsDetReclamo.FieldByName(dbeMontoAceptado.DataField).Clear ;
           dm1.cdsDetReclamo.FieldByName(dbmresultado.DataField).Clear ;
       end
  else if (sSituacion = '03') or (sSituacion = '04') then
       begin

           dblcReclMotId.Enabled        := False ;
           dbeMontoRecl.Enabled         := False ;
           dbmObservacion.Enabled       := False ;
           dbdtpFechaReclamo.Enabled    := False ;

           dbdtpFechaConclusion.Enabled := True ;
           dbeMontoAceptado.Enabled     := True ;
           dbmresultado.Enabled         := True ;
           try
             dm1.cdsDetReclamo.FieldByName(dbdtpFechaConclusion.DataField).Clear ;
           except
             dm1.cdsDetReclamo.Edit ;
             dm1.cdsDetReclamo.FieldByName(dbdtpFechaConclusion.DataField).Clear ;
           end ;
           dm1.cdsDetReclamo.FieldByName(dbeMontoAceptado.DataField).Clear ;
           dm1.cdsDetReclamo.FieldByName(dbmresultado.DataField).Clear ;
           dm1.cdsDetReclamo.FieldByName(dbeMontoAceptado.DataField).AsCurrency
           := dm1.cdsDetReclamo.FieldByName(dbeMontoRecl.DataField).AsCurrency ;
       end ;
end;

procedure TFReclamos.DesHabilitaPantallaPrincipal;
begin
     dbgAportes.Enabled     := False ;
     dbgReclamo.Enabled     := False ;
     pnlBtnPrin.Enabled     := False ;
end;

procedure TFReclamos.HabilitaPantallaPrincipal;
begin
     dbgAportes.Enabled     := True ;
     dbgReclamo.Enabled     := True ;
     pnlBtnPrin.Enabled     := True ;
end;

procedure TFReclamos.ValidaSituacionInicial(sSituacion: String);
begin
  dblcCambioSituacion.Enabled  := True ;
  if (sSituacion = '00') or (sSituacion = '') then
  begin
     dblcReclMotId.Enabled        := True ;
     dbeMontoRecl.Enabled         := True ;
     dbmObservacion.Enabled       := True ;
     dbdtpFechaReclamo.Enabled    := True ;

     dbdtpFechaConclusion.Enabled := False ;
     dbeMontoAceptado.Enabled     := False ;
     dbmresultado.Enabled         := False ;

  end
  else if sSituacion = '01' then
       begin
           dblcReclMotId.Enabled        := False ;
           dbeMontoRecl.Enabled         := False ;
           dbmObservacion.Enabled       := False ;
           dbdtpFechaReclamo.Enabled    := False ;

           dbdtpFechaConclusion.Enabled := False ;
           dbeMontoAceptado.Enabled     := False ;
           dbmresultado.Enabled         := False ;
       end
  else if sSituacion = '02' then
       begin
           dblcReclMotId.Enabled        := False ;
           dbeMontoRecl.Enabled         := False ;
           dbmObservacion.Enabled       := False ;
           dbdtpFechaReclamo.Enabled    := False ;

           dbdtpFechaConclusion.Enabled := True ;
           dbeMontoAceptado.Enabled     := False ;
           dbmresultado.Enabled         := True ;
       end
  else if (sSituacion = '03') or (sSituacion = '04') then
       begin

           dblcReclMotId.Enabled        := False ;
           dbeMontoRecl.Enabled         := False ;
           dbmObservacion.Enabled       := False ;
           dbdtpFechaReclamo.Enabled    := False ;

           dbdtpFechaConclusion.Enabled := True ;
           dbeMontoAceptado.Enabled     := True ;
           dbmresultado.Enabled         := True ;

       end ;
end;

procedure TFReclamos.dblcCambioSituacionEnter(Sender: TObject);
begin
   if trim(dblcCambioSituacion.Text) = '' then
      dblcCambioSituacion.Tag := -1
   else
      dblcCambioSituacion.Tag := StrToInt(dblcCambioSituacion.Text) ;
end;

procedure TFReclamos.LlenarCacheEdicionDetalle;
var
  xMem : TMemoryStream;
begin
    xMem := TMemoryStream.Create ;
    dm1.cdsDetReclamo.SaveToStream(xMem);
    if cdsCacheRec.Active then
       cdsCacheRec.Close ;
    cdsCacheRec.RemoteServer := dm1.cdsDetReclamo.RemoteServer ;
    cdsCacheRec.ProviderName := dm1.cdsDetReclamo.ProviderName ;
    cdsCacheRec.LoadFromStream(xMem);
    xMem.Free ;
end;

function TFReclamos.SituacionOriginal(strAPO301ID : String ): string;
begin
   result := '' ;
   if cdsCacheRec.Active then
      if cdsCacheRec.RecordCount > 0 then
         if cdsCacheRec.Locate('APO301ID',VarArrayOf([strAPO301ID]),[]) then
            result := cdsCacheRec.FieldByName('RECLSITID').AsString ;
end;

procedure TFReclamos.ValidaReclamo;
var
  sSituacion : string ;
begin

  if trim(dbdtpFechaReclamo.Text)= '' then
  begin
     PageControl1.ActivePageIndex := 0 ;
     dbdtpFechaReclamo.SetFocus ;
     Raise exception.Create('Ingrese Fecha de Reclamo');
  end ;

  if trim(dblcCambioSituacion.Text) = '' then
     sSituacion := dm1.cdsDetReclamo.FieldByName('RECLSITID').AsString
  else
     sSituacion := trim(dblcCambioSituacion.Text);

  if sSituacion = '' then
  begin
     PageControl1.ActivePageIndex := 1 ;
     dblcCambioSituacion.SetFocus ;
     Raise Exception.Create('Ingrese Situación') ;
  end ;

  if sSituacion = '00' then
  begin
	//Motivo
        if trim(dblcReclMotid.Text) = '' then
        begin
           PageControl1.ActivePageIndex := 0 ;
           dblcReclMotid.SetFocus ;
           Raise exception.Create('Ingrese Motivo del Reclamo');
        end ;
        //Monto Reclamado
        if EsNumero(dbeMontoRecl.Text) then
        begin
           if StrToCurr(dbeMontoRecl.Text) = 0 then
           begin
              PageControl1.ActivePageIndex := 0 ;
              dbeMontoRecl.SetFocus ;
              Raise exception.Create('Ingrese Monto Reclamado');
           end ;
        end
        else
        begin
          PageControl1.ActivePageIndex := 0 ;
          dbeMontoRecl.SetFocus ;
          Raise exception.Create('Ingrese Monto Reclamado');
        end ;
  end
  else if (sSituacion = '02') or (sSituacion = '03') or (sSituacion = '04') then
       begin
          if trim(dbdtpFechaConclusion.Text) = '' then
          begin
             PageControl1.ActivePageIndex := 1 ;
             dbdtpFechaConclusion.SetFocus ;
             Raise exception.Create('Ingrese Fecha de Conclusión');
          end;
          if trim(dbmResultado.Text) = '' then
          begin
             PageControl1.ActivePageIndex := 1 ;
             dbmresultado.SetFocus ;
             Raise Exception.Create('Ingrese Resultado de la Evaluación');
          end;
          if sSituacion <> '02' then
          begin
            if EsNumero(dbeMontoAceptado.Text) then
            begin
               if StrToCurr(dbeMontoAceptado.Text) = 0 then
               begin
                  PageControl1.ActivePageIndex := 1 ;
                  dbeMontoAceptado.SetFocus ;
                  Raise exception.Create('Ingrese Monto Aceptado');
               end ;
            end
            else
            begin
              PageControl1.ActivePageIndex := 1 ;
              dbeMontoAceptado.SetFocus ;
              Raise exception.Create('Ingrese Monto Aceptado');
            end ;
          end ;
       end ;
end;

function TFReclamos.RecuperaEstadoDocDetalle: String;
var
  cds : TwwClientDataset ;
  i , iRecCount: Integer ;
  iInicial , iTramite , iRechazado ,
  iAceptadoParcialmente , iAceptado : Integer ;
label
  Fin ;
begin
{
00     00	INICIAL
01     01	EN TRÁMITE
02     02	RECHAZADO
03     03	ACEPTADO PARCIALMENTE
04     04	ACEPTADO
}
  iInicial := 0 ; iTramite := 0 ; iRechazado := 0 ;
  iAceptadoParcialmente := 0 ; iAceptado := 0 ;

  cds := TwwClientDataSet.Create(self);
  cds.CloneCursor(dm1.cdsdetReclamo,False);
  iRecCount := cds.RecordCount ;
  for i := 1 to iRecCount do
  begin
     cds.RecNo := i ;
     if cds.FieldByName('RECLSITID').AsString = '00' then
        Inc(iInicial) ;
     if cds.FieldByName('RECLSITID').AsString = '01' then
        Inc(iTramite) ;
     if cds.FieldByName('RECLSITID').AsString = '02' then
        Inc(iRechazado) ;
     if cds.FieldByName('RECLSITID').AsString = '03' then
        Inc(iAceptadoParcialmente) ;
     if cds.FieldByName('RECLSITID').AsString = '04' then
        Inc(iAceptado) ;
  end ;
  if iInicial = iRecCount then
  begin
     result := '00' ;
     Goto Fin ;
  end ;
  if iTramite = iRecCount then
  begin
     result := '01' ;
     Goto Fin ;
  end ;
  if iRechazado = iRecCount then
  begin
     result := '02' ;
     Goto Fin ;
  end ;
  if iAceptadoParcialmente = iRecCount then
  begin
     result := '03' ;
     Goto Fin ;
  end ;
  if iAceptado = iRecCount then
  begin
     result := '04' ;
     Goto Fin ;
  end ;
  if iInicial > 0 then
  begin
     while cds.locate('RECLSITID',VarArrayOf(['00']),[]) do
     begin
         cds.edit ;
         cds.FieldByName('RECLSITID').AsString := '01' ;
         cds.Post ;
     end ;
  end ;
  iTramite := iTramite + iInicial ;
  if iTramite = iRecCount then
  begin
     result := '01' ;
     Goto Fin ;
  end ;
  if iTramite > 0 then
     Result := '07'
  else
     Result := '03' ;
fin:
  cds.Free ;
  cds := nil ;
end;

procedure TFReclamos.dbeMontoAceptadoExit(Sender: TObject);
var
   strNumero  : String ;
   currNumero : Currency ;
begin
   If bbtnCancelar.Focused or bbtnCierraImp.Focused then
      Exit ;
   If (trim(dbeMontoAceptado.Text)='') Then
     Exit;
   strNumero := trim(dbeMontoAceptado.Text);
   if EsNumero(strNumero) then
   begin
     if StrToCurr(strNumero) = 0 then
        dbeMontoAceptado.Datasource.dataset.FieldByName(dbeMontoAceptado.Datafield).clear
     else
     begin
       currNumero := StrToCurr(strNumero) ;
       If DM1.cdsDetReclamo.FieldByName('RECLMONTO').AsFloat<
        currNumero Then
        begin
         ShowMessage('El Monto Aceptado no puede ser mayor al monto Reclamado');
         dbeMontoAceptado.Datasource.dataset.FieldByName(dbeMontoAceptado.Datafield).clear ;
         dbeMontoAceptado.SetFocus;
         Exit;
        end;
     end;
   end
   else
     dbeMontoAceptado.Datasource.dataset.FieldByName(dbeMontoAceptado.Datafield).clear ;
end;

function TFReclamos.RecEstado;
begin
    result := '' ;
    if cdsSituacion.Locate('RECLSITID',
                        VarArrayOf([dm1.cdsReclamo.FieldByName('RECESTADO').AsString]),[]) then
       result := cdsSituacion.FieldByName('RECLSITDES').AsString ;
end;

procedure TFReclamos.dbdtpFechaReclamoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if ( key = 46 ) or ( key = 8 ) then
      key := 0 ;
end;

procedure TFReclamos.dbdtpFechaConclusionExit(Sender: TObject);
begin
   if bbtnCancelar.Focused then
      Exit ;
   if bbtnCierraImp.Focused then
      Exit ;   
   if trim(dbdtpFechaConclusion.Text) = '' then
      Exit ;
   if dm1.cdsDetReclamo.FieldByName( dbdtpFechaConclusion.DataField ).AsDateTime <
      dm1.cdsDetReclamo.FieldByName( dbdtpFechaReclamo.DataField ).AsDateTime then
   begin
      ShowMessage('Fecha de Conclusión NO puede ser Menor que la Fecha de Reclamo');
      dbdtpFechaConclusion.DataSource.Dataset.FieldByName(dbdtpFechaConclusion.DataField).Clear ;
   end;
end;

procedure TFReclamos.ActualizaEstadoRechazado;
var
  cds : TwwClientDataset ;
  i,iCount : word ;
  sSQL : String ;
  bmk : TBookMark ;
begin
  cds := TwwClientDataSet.Create(self);
  cds . CloneCursor (dm1.cdsDetReclamo,True);
  cds.Filter := 'RECLSITID=''02'' ' ;
  cds.Filtered := True ;
  iCount := cds.RecordCount ;
  if iCount > 0 then
  begin
     sSQL := ' BEGIN '  ;
     for i := 1 to iCount do
     begin
       cds.RecNo := i ;
       sSQL := sSQL + #13 + 'UPDATE APO301 SET APOFNP = ''S'' WHERE ASOID ='''
                + dm1.cdsReclamo.FieldByName('ASOID').AsString
                + ''' AND APO301ID = ''' + cds.FieldByName('APO301ID').AsString + '''; '
     end ;
     sSQL := sSQL + #13 + 'COMMIT;' + #13 + 'END;' ;
     DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
     //Actualizar dm1.cdstransaccion
     bmk := dm1.cdsTransaccion.GetBookmark ;
     dm1.cdstransaccion.DisableControls ;
     for i := 1 to iCount do
     begin
       cds.RecNo := i ;
       if dm1.cdsTransaccion.Locate
          ('APO301ID',VarArrayOf([cds.FieldByName('APO301ID').AsString]),[]) then
       begin
          dm1.cdsTransaccion.Edit ;
          dm1.cdsTransaccion.FieldByName('APOFNP').AsString := 'S' ;
          dm1.cdsTransaccion.Post ;
       end ;
     end ;
     dm1.cdstransaccion.GotoBookmark(bmk);
     dm1.cdstransaccion.FreeBookMark(bmk);
     dm1.cdstransaccion.EnableControls ;
  end ;
  cds.Free ;
  cds := nil ;
end;

procedure TFReclamos.QuitaFlagAportes;
var
  bmk : TBookMark;
begin
  with dm1.cdsTransaccion do
  begin
   try
    bmk := GetBookmark ;
    DisableControls ;
    if Locate('APO301ID',VarArrayOf([sAPO301ID]),[]) then
    begin
      Edit;
      FieldByName('APOFRECL').AsString := 'N' ;
      cdspost(DM1.cdsTransaccion);
      Post;
    end ;
   finally
    GotoBookmark(bmk);
    FreeBookmark(bmk);
    EnableControls;
   end; 
  end ;
end;

function TFReclamos.RecuperaCorrelativo: String;
var
  sANO   : String ;
  sMES   : String ;
  sSQL   : String ;
  procedure AsignaAnoMes(var sAno , sMes : String ) ;
  var
    Year, Month, Day : Word;
  begin

    DecodeDate( HallaFechaReclamoDocumento , Year , Month, Day);
    sAno := dm1.StrZero(IntToStr(Year),4) ;
    sMes := dm1.StrZero(IntToStr(Month),2) ;

  end;
begin
   AsignaAnoMes( sANO , sMES );
   SSQL := 'BEGIN SP_RECUPERA_CORRELATIVO(''RECLAMO'' , ''' + sANO + ''');  END ;' ;
   dm1.DCOM1.Appserver.EjecutaSQL(ssql);
   dm1.cdsQry.Close ;
   dm1.cdsQry.DataRequest('SELECT CODIGO FROM TMP001') ;
   dm1.cdsQry.Open  ;
   if dm1.cdsQry.FieldByName('CODIGO').AsInteger = 0 then
     result := ''
   else
     result := dm1.cdsQry.FieldByName('CODIGO').AsString ;
end;

function TFReclamos.HallaFechaReclamoDocumento: TDate;
var
   cds : TwwClientDataset ;
begin
   cds := TwwClientDataset.Create(self) ;
   cds.CloneCursor(dm1.cdsDetReclamo,True) ;
   cds.IndexFieldNames := 'RECLFINI' ;
   Result := TDate(cds.FieldBYName('RECLFINI').ASDatetime) ;
   cds.Free ;
   cds := nil ;
end;

procedure TFReclamos.AsignaCorrelativo;
begin
   if not (dm1.cdsReclamo.state in [dsInsert,dsedit]) then
      dm1.cdsReclamo.Edit ;
   DM1.cdsreclamo.FieldByName('RECLID').AsString := RecuperaCorrelativo ;
   cdsPost(DM1.cdsreclamo);
   dm1.cdsReclamo.Post ;
end;

procedure TFReclamos.AsignaCorrelativoDetalle;
var
   bmk : TBookMark;
begin
 with dm1.cdsDetReclamo do
 begin
   bmk := GetBookmark;
   DisableControls;
   First;
   while not EOF do
   begin
     edit ;
     FieldByName('RECLID').AsString := dm1.cdsReclamo.FieldByName('RECLID').AsString ;
     cdsPost( dm1.cdsDetReclamo );
     Post ;
     Next ;
   end ;
   GotoBookmark(bmk);
   FreeBookmark(bmk);
   EnableControls ;
 end ;
end;

procedure TFReclamos.FormDestroy(Sender: TObject);
begin
   dm1.cdsTransaccion.PacketRecords := iTransPacketRecord ;
end;

procedure TFReclamos.RecuperaDetalle;
var
   xSQL : String ;
begin

   xSQL := 'SELECT T.*,T.ROWID FROM APO301 T WHERE ASOID='+ QuotedStr(dblcdCodigo.Text)
          +' AND TRANSINTID='+ QuotedStr('APO')
          +' ORDER BY TRANSANO DESC,TRANSMES DESC,APO301ID DESC ';

   DM1.FiltraCDS(DM1.cdsTransaccion, xSQL);

   xSQL := 'SELECT * FROM APO303'
          +' WHERE RECLID ='+QuotedStr(DM1.cdsReclamo.FieldByName('RECLID').Asstring);

   DM1.FiltraCDS(DM1.cdsDetReclamo,xSQL);

end;

procedure TFReclamos.ConfiguraValoresNumericos;
begin
//
   TNumericField(DM1.cdsTransaccion.FieldByName('TRANSMTO')).DisplayFormat    := '###,###,##0.00';
   TNumericField(DM1.cdsTransaccion.FieldByName('TRANSMTO')).EditFormat       := '########0.00';

   TNumericField(DM1.cdsTransaccion.FieldByName('TRANSMTODEV')).DisplayFormat := '###,###,##0.00';
   TNumericField(DM1.cdsTransaccion.FieldByName('TRANSMTODEV')).EditFormat    := '########0.00';

   TNumericField(DM1.cdsDetReclamo.FieldByName('APOMONTO')).DisplayFormat := '###,###,##0.00';
   TNumericField(DM1.cdsDetReclamo.FieldByName('APOMONTO')).EditFormat    := '########0.00';

   TNumericField(DM1.cdsDetReclamo.FieldByName('RECLMONTO')).DisplayFormat := '###,###,##0.00';
   TNumericField(DM1.cdsDetReclamo.FieldByName('RECLMONTO')).EditFormat    := '########0.00';
//
end;

procedure TFReclamos.Button1Click(Sender: TObject);
var
   fldCampo : TField ;
begin
   fldCampo := TField.Create(self);
   fldCampo.Name := 'LK_SITDES';
   fldCampo.FieldName := 'LK_SITDES';   
   with dbgReclamo.DataSource.DataSet do
   begin
      Fields.Add(fldCampo);
   end ;
   fldCampo.FieldKind       := fkLookup     ;
   fldCampo.KeyFields       := 'RECLSITID'  ;
   fldCampo.LookupDataSet   := cdsSituacion ;
   fldCampo.LookupKeyFields := 'RECLSITID'  ;
   fldCampo.LookupKeyFields := 'RECLSITDES' ;
end;

end.
