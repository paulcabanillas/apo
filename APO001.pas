unit APO001;

// Inicio Uso Estándares: 01/08/2011
// Unidad               : APO001
// Formulario           : Fprincipal
// Fecha de Creación    : 15/12/2003
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Menu principal del modulo de Aportes
// Actualizaciones      :
// HPC_201501_APO       : 06/01/2015 - Cambio de DCOM a Socket
// HPC_201801_APO       : : Control de Acceso al Modulo; Al ingresar a los módulos de Front;
//                        implementar un control que no permita acceder al módulo sino está inscrito en el grupo asignado al módulo
// APO_202102_HPC       : Cambio de versión:

interface

uses
  Windows, Messages, SysUtils, Classes, fcLabel, StdCtrls, ControlGridDisp,
// Inicio HPC_201501_APO  - Cambio de DCOM a Socket
  Controls, ExtCtrls, Buttons, ComCtrls, ToolWin, Forms, wwDBigrd, DB, Mant, dialogs, ppCtrls,
  DBCtrls, Wwintl, Grids, Wwdbgrid, fcButton, fcImgBtn,
  wwClient, Graphics, jpeg;
// Fin   HPC_201501_APO   - Cambio de DCOM a Socket

type

  TFPrincipal = class(TForm)
    clbPrincipal: TCoolBar;
    tlbPrincipal: TToolBar;
    Z1sbReglas: TSpeedButton;
    Z1sbProcesos: TSpeedButton;
    Z1sbReportes: TSpeedButton;
    Z1sbSalida: TSpeedButton;
    Z1sbMaestros: TSpeedButton;
    cgdPrincipal: TControlGridDisp;
    pnlReferencias: TPanel;
    Z1sbReferencias: TSpeedButton;
    pnlMaestros: TPanel;
    Z1sbAsociados: TSpeedButton;
    pnlMovimientos: TPanel;
    Z1sbCaptaAportes: TSpeedButton;
    Z1sbIngresoLote: TSpeedButton;
    pnlReportes: TPanel;
    Z1sbRepCaptaAportes: TSpeedButton;
    Z1sbRepAportesNoDesc: TSpeedButton;
// Inicio HPC_201501_APO  - Cambio de DCOM a Socket
    //fclCxP: TfcLabel;
// Fin    HPC_201501_APO  - Cambio de DCOM a Socket
    pnlProcesos: TPanel;
    Z1sbContabilizacion: TSpeedButton;
    Z1sbDevolucionAportes: TSpeedButton;
    Z1sbRepEstadoCta: TSpeedButton;
    Z1sbMovimientos: TSpeedButton;
    Z1sbReclamos: TSpeedButton;
    Z1sbRepControlApo: TSpeedButton;
    Z2bbtnProvision: TSpeedButton;
    Z1sbProyIntBon: TSpeedButton;
    lblVersion: TLabel;
    wwIntl1: TwwIntl;
    Z1sbCtaInd: TSpeedButton;
    Z1sbFusion: TSpeedButton;
    Z1sbCamPassw: TSpeedButton;
    Z1sbGenOficios: TSpeedButton;
    pnlFusion: TPanel;
    Z1sbFusion1: TSpeedButton;
    Z1sbFusion2: TSpeedButton;
    Z1sbResCobEfec: TSpeedButton;
    pnlVarios: TPanel;
    Z1sbVarios1: TSpeedButton;
    Z1sbVarios2: TSpeedButton;
    Z1sbVarios3: TSpeedButton;
    Z1sbRecApoDpto: TSpeedButton;
    Z1sbNumApo: TSpeedButton;
    Z1sbAsocRes: TSpeedButton;
    Z1sbAsocSinRes: TSpeedButton;
    Z1sbVarios: TSpeedButton;
    Z1sbCobEfectivo: TSpeedButton;
    Z1sbControlReclamos: TSpeedButton;
    Z1sbCambioUPago: TSpeedButton;
// Inicio HPC_201501_APO  - Cambio de DCOM a Socket
    //fcLabel1: TfcLabel;
// Fin    HPC_201501_APO  - Cambio de DCOM a Socket
    Z1SbRepoDevApo: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    sbaponopag: TSpeedButton;
    SpeedButton7: TSpeedButton;
    sbBeneficios: TSpeedButton;
    sbgesapo: TSpeedButton;
    SpeedButton2: TSpeedButton;
    sbestcueapo: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    sbPagApoEfe: TSpeedButton;
    SpeedButton8: TSpeedButton;
    Z1sbRepAportxDptoUgel: TSpeedButton;
// Inicio HPC_201501_APO  - Cambio de DCOM a Socket
    Image1: TImage;
// Fin   HPC_201501_APO  - Cambio de DCOM a Socket
    procedure bbtnTachoDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure lbOrdenDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure wwDBGrid2DragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure wwDBGrid3DragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure FormShow(Sender: TObject);
    procedure Z1sbReferenciasClick(Sender: TObject);
    procedure Z1sbIngresoLoteClick(Sender: TObject);
    procedure Z1sbReglasMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Z1sbProcesosMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Z1sbReportesMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure dbgMovCxPMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure SacaMenu(Sender: TObject);
    procedure dbgOPagoMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure lbFiltroOPDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure lbOrdenOPDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure Z1sbMenuRegistro5Click(Sender: TObject);
    procedure Z1sbMaestrosMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure Z1sbAsociadosClick(Sender: TObject);
    procedure Z1sbSalidaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Z1sbMenuRegistro5MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Z1sbSalidaMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Z1sbMovimientosMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Z1sbReclamosClick(Sender: TObject);
    procedure Z1sbDevolucionAportesClick(Sender: TObject);
    procedure Z1sbContabilizacionClick(Sender: TObject);
    procedure Z1sbRepResumenClick(Sender: TObject);
    procedure Z1sbCaptaAportesClick(Sender: TObject);
    procedure Z1sbActualizCtaIndClick(Sender: TObject);
    procedure Z1sbRepAportesNoDescClick(Sender: TObject);
    procedure Z1sbRepInconsistenciasClick(Sender: TObject);
    procedure Z1sbRepCaptaAportesClick(Sender: TObject);
    procedure Z1sbRepEstadoCtaClick(Sender: TObject);
    procedure Z1sbRepDevAportesClick(Sender: TObject);
    procedure Z1sbRepControlApoClick(Sender: TObject);
    procedure Z2bbtnProvisionClick(Sender: TObject);
    procedure Z1sbProyIntBonClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Z1sbCtaIndClick(Sender: TObject);
    procedure hola(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Z1sbCamPasswClick(Sender: TObject);
    procedure Z1sbGenOficiosClick(Sender: TObject);
    procedure Z1sbActualizCtaIndMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Z1sbContabilizacionMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton5MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Z1sbFusionClick(Sender: TObject);
    procedure Z1sbResCobEfecClick(Sender: TObject);
    procedure Z1sbUnificacionClick(Sender: TObject);
    procedure Z1sbUnificacionMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Z1sbFusionMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Z1sbReglasClick(Sender: TObject);
    procedure Z1sbMaestrosClick(Sender: TObject);
    procedure Z1sbMovimientosClick(Sender: TObject);
    procedure Z1sbProcesosClick(Sender: TObject);
    procedure Z1sbReportesClick(Sender: TObject);
    procedure Z1sbAsocResClick(Sender: TObject);
    procedure Z1sbAsocSinResClick(Sender: TObject);
    procedure Z1sbNumApoClick(Sender: TObject);
    procedure Z1sbRecApoDptoClick(Sender: TObject);
    procedure Z1sbVarios1Click(Sender: TObject);
    procedure Z1sbVarios2Click(Sender: TObject);
    procedure Z1sbVarios3Click(Sender: TObject);
    procedure Z1sbVariosMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Z1sbRepCaptaAportesMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Z1sbRepEstadoCtaMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Z1sbCobEfectivoClick(Sender: TObject);
    procedure Z1sbRepCaptaAportesMouseMove2(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Z1sbControlReclamosClick(Sender: TObject);
    procedure Z1sbCambioUPagoClick(Sender: TObject);
    procedure Z1sbVariosClick(Sender: TObject);
    procedure Z1SbRepoDevApoClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure sbaponopagDblClick(Sender: TObject);
    procedure sbaponopagClick(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure sbBeneficiosClick(Sender: TObject);
    procedure sbestcueapoClick(Sender: TObject);
    procedure sbgesapoClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure sbPagApoEfeClick(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure Z1sbRepAportxDptoUgelClick(Sender: TObject);
  private
    { Private declarations }
     procedure OnEditAportes (Sender : TObject; MantFields: TFields);
     procedure OnEditDetalle (Sender : TObject; MantFields: TFields);
     procedure OnEditCobxUse (Sender : TObject; MantFields: TFields);
     procedure OnInsertReclamo (Sender : TObject );
     procedure OnEditReclamo (Sender : TObject; MantFields: TFields);
     procedure OnEditIngresoLote (Sender : TObject; MantFields: TFields);
     procedure OnEditDevolucion (Sender : TObject; MantFields: TFields);
     procedure OnEditCtaIndividual (Sender : TObject; MantFields: TFields);
     function  VerificaVersion: Boolean;
     procedure Verpercadpas;
     procedure OnInsertDevolucion (Sender : TObject );
     procedure BloquearMenuPrincipal;
  public
     MtxOfi, MtxCI, Mtx1,Mtx2,MtxCtaInd,MtxCtaInv1,MtxbAso, MtxCta:TMant;
     pnltool2,pnltool3 : TPanel;
     sSQL:String;
     procedure AppMessage (var Msg: TMsg; var Handled : Boolean );
     procedure OnInsertAsociado(Sender: TObject);
     procedure OnEditAsociado(Sender : TObject; MantFields: TFields);
     procedure OnEditAsoCta (Sender : TObject; MantFields: TFields);
     procedure OnEditCta (Sender : TObject; MantFields: TFields);
     Procedure MueveMouse(xObjeto: TObject; Shift: TShiftState; X, Y: Integer);
     procedure ListaComponentes( xForm : TForm);
     procedure PegaPanelToolCtaInd(Sender: TObject);
     procedure PegaPanelToolCaptaApo(Sender: TObject);
     procedure PegaPanelToolCI(Sender: TObject);
     procedure ToolAsoCtaInd(Sender: TObject);
     procedure PegaPanelToolApo(Sender: TObject);
     procedure PegaPanelToolCamOpe(Sender: TObject);
     procedure PegaPanelToolAso(Sender: TObject);
     procedure PegaPanelToolPrv(Sender: TObject);
     procedure PegaPanelDev(Sender: TObject);
     procedure PegaPanelIngLote(Sender: TObject);
     procedure ToolAportesCreate(Sender: TObject);
     procedure PegaPanelToolDevApo(Sender: TObject);

     procedure ToolFusionCreate(Sender: TObject);
     procedure OnInsertFusion (Sender: TObject);
     procedure OnEditFusion(Sender : TObject; MantFields: TFields);
     procedure OnDeleteFusion(Sender : TObject; MantFields: TFields);
     procedure OnInsertFusion2 (Sender: TObject);
     procedure OnEditFusion2(Sender : TObject; MantFields: TFields);
     procedure OnDeleteFusion2(Sender : TObject; MantFields: TFields);

     procedure ToolCuotasCreate(Sender: TObject);
     procedure PegaToolCta(Sender: TObject);
     procedure OnEditRepAportes (Sender : TObject; MantFields: TFields);
     procedure AbreTablasAso;
     procedure OnNoDelete (Sender : TObject; MantFields: TFields);
     procedure PanelToolRepDev(Sender: TObject);
     procedure CreaAccesos;
     procedure CreaOpciones;
     procedure ToolAsociaCreate(Sender: TObject);//Asociados
     procedure OnInsertOficio (Sender: TObject);
     procedure OnEditOficio(Sender : TObject; MantFields: TFields);
     procedure PegaPnlToolOf(Sender: TObject);
     procedure PegaPanelToolOf(Sender: TObject);
end;

var
  FPrincipal: TFPrincipal;
  MtxAsocia,mtx : TMant; // Asociados
  xSQL, xNamForm : String;
  xFechasys : TDate ;
implementation

uses APO304, APO303, APO402, APO301, APO401, APO502, APO503, APO501,
  APO506, APO507, APO505, APO510, APO302, APODM, APO403,
  APO702, APO705, APO706, APO202, APO511, APO305, APO306, MsgDlgs, APO704,
  APO708, APO710, APO711, APO307, APO712, APO713, APO714, APO715,
  APO718, APO719, APO308, APO720, APO514, APOD01, APOD02,
  APOD03, APOD04, APOD05, APOD06, APOD07, APOD08, APOD09, CRE201, CRE702,
  APOD10, APOD11, APOD12, APO309, APO310, APO405, APO800, APO801,
  APO517, APO520,  APO518, APO311, APO313, APO315, APO316, APO318,
// Inicio HPC_201501_APO  - Cambio de DCOM a Socket
  COB954, APO319, APO320, APO330, APO022;
// Fin    HPC_201501_APO  - Cambio de DCOM a Socket

{$R *.DFM}

procedure TFPrincipal.OnNoDelete(Sender: TObject; MantFields: TFields);
begin
   Errormsg('Módulo de Aportes', ' No se Puede Eliminar este Registro ');
end;

procedure TFPrincipal.bbtnTachoDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
   Accept := True;
end;

procedure TFPrincipal.lbOrdenDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
   Accept := True;
end;

procedure TFPrincipal.wwDBGrid2DragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
   Accept := True;
end;

procedure TFPrincipal.wwDBGrid3DragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
   Accept := True;
end;

procedure TFPrincipal.FormShow(Sender: TObject);
begin
   Screen.Cursor := CrDefault;
end;

procedure TFPrincipal.Z1sbReferenciasClick(Sender: TObject);
begin
   SacaMenu(Sender);
   Mtx := TMant.Create(Self);
   Try
    Mtx.User            := DM1.wUsuario;
    Mtx.Titulo          := '';
    Mtx.Module          := DM1.wModulo;
    Mtx.DComC           := DM1.DCOM1;
    Mtx.ControlGridDisp := cgdPrincipal;
// Inicio HPC_201501_APO     Cambio de DCOM a Socket
    Mtx.Tipo            := 'NORMAL';
// Fin  HPC_201501_APO     Cambio de DCOM a Socket
    Mtx.Execute;
   Finally
    Mtx.Free;
   end;
end;

procedure TFPrincipal.Z1sbIngresoLoteClick(Sender: TObject);
begin
   SacaMenu(Sender);
   xSQL := 'SELECT * FROM APO101';
   DM1.cdsUse.Close;
   DM1.cdsUse.DataRequest(xSQL);
   DM1.cdsUse.Open;

   xSQL := 'SELECT REPRID, UPROID, RCOBANO, RCOBMES, REPRAPENOM, SUM(CPAGOMTO) CPAGOMTO '+
           'FROM COB302 '+
           'WHERE RCOBESTADO=''ACEPTADO'' '+
           'GROUP BY REPRID, UPROID, RCOBANO, RCOBMES, REPRAPENOM';

   Mtx := TMant.Create(Self);
   FToolIngLote := TFToolIngLote.Create(Self);
   Try
    Mtx.User            := DM1.wUsuario;
    Mtx.Admin           := DM1.wAdmin;
    Mtx.Module          := DM1.wModulo;
    Mtx.DComC           := DM1.DCOM1;
    Mtx.ControlGridDisp := cgdPrincipal;
    Mtx.OnCreateMant    := PegaPanelIngLote;
    Mtx.TableName       := 'VWAPOINGLOTEACUM';//'COB302';
    //Mtx.TableName       := 'COB302';
    Mtx.ClientDataSet   := DM1.cdsDetRegGlob;
    Mtx.Filter          := 'RCOBESTADO=''ACEPTADO''';
    Mtx.Titulo 	        := 'Registro de Cobranza';
    Mtx.OnInsert        := nil;
    Mtx.OnEdit 	        := OnEditCobxUse;
    Mtx.OnDelete        := Nil;//OnNoDelete;
    Mtx.OnShow 	        := nil;
    Mtx.SectionName     := 'CobxUse';
    Mtx.FileNameIni     := '\SolAportes.ini';
    Mtx.UsuarioSQL.Add(xSQL);
// Inicio HPC_201501_APO     Cambio de DCOM a Socket
    Mtx.Tipo            := 'NORMAL';
// Fin  HPC_201501_APO     Cambio de DCOM a Socket
    Mtx.Execute;
   Finally
    Mtx.Free;
    FToolIngLote.Free;
   end;
end;

procedure TFPrincipal.PegaPanelIngLote(Sender: TObject);
var
   pg : TPanel;
   pl : TPanel;
begin
   pg := FToolIngLote.pnlTool;
   pl := TMant(Sender).FMant.pnlBtns;
   pl.Height   := pg.Height + 5;
   pl.AutoSize := True;
   pg.Parent   := TMant(Sender).FMant.pnlBtns;
   pg.Align    := alClient;
   TMant(Sender).FMant.pnlBtns.Visible  := True;
end;

procedure TFPrincipal.OnEditCobxUse (Sender : TObject; MantFields: TFields);
begin
  //SacaMenu(Sender);
  If DM1.cdsDetRegGlob.RecordCount > 0 Then
   begin
    DM1.wModo := '';
    FIngresoLote := TFIngresoLote.create(Self);
    Mtx1 := TMant.Create(Self);
    Try
      Mtx1.User            := DM1.wUsuario;
      Mtx1.Admin           := DM1.wAdmin;
      Mtx1.Module          := DM1.wModulo;
      Mtx1.DComC           := DM1.DCOM1;
      Mtx1.ControlGridDisp := cgdPrincipal;
      Mtx1.OnCreateMant    := nil ;
      Mtx1.TableName       := 'COB303';
      Mtx1.ClientDataSet   := DM1.cdsCobxUse;
      Mtx1.Filter          := 'COB303.RCOBANO='+DM1.cdsDetRegGlob.FieldByName('RCOBANO').AsString+' AND COB303.RCOBMES='+DM1.cdsDetRegGlob.FieldByName('RCOBMES').AsString+' AND COB303.REPRID='+DM1.cdsDetRegGlob.FieldByName('REPRID').AsString;
      Mtx1.TituloFont.Size := 15;
      Mtx1.Titulo          := 'Repres.: '+DM1.cdsDetRegGlob.FieldByName('REPRAPENOM').AsString;
      Mtx1.OnInsert 	   := Nil;//OnInsertIngresoLote;
      Mtx1.OnEdit 	   := OnEditIngresoLote;
      Mtx1.OnDelete 	   := OnNoDelete;
      Mtx1.OnShow 	   := Nil;
      Mtx1.SectionName	   := 'IngresoLote';
      Mtx1.FileNameIni	   := '\SolAportes.ini';
// Inicio HPC_201501_APO     Cambio de DCOM a Socket
      Mtx1.Tipo            := 'NORMAL';
// Fin  HPC_201501_APO     Cambio de DCOM a Socket
      Mtx1.Execute;
    Finally
      Mtx1.Free;
      FIngresoLote.Free;
      DM1.cdsAutDisk.IndexFieldNames := '';
    end;
  end
  Else
  begin
    ShowMessage('No Existen Registros a Editar');
  end;
end;

procedure TFPrincipal.OnEditIngresoLote(Sender: TObject; MantFields: TFields);
begin
   If DM1.cdsCobxUse.RecordCount = 0 Then
    begin
     ShowMessage('No existen Registros a Editar');
     Exit;
    end;
   Screen.Cursor := crHourGlass;
   xSQL:= 'SELECT * '+
          'FROM COB304 A '+
          'WHERE A.RCOBID =' +QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
          'AND A.DETRCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
          'AND A.USERCOBID ='+QuotedStr(DM1.cdsCobxUse.FieldByName('USERCOBID').AsString);
   DM1.FiltraCDS(DM1.cdsAutdisk,xSQL );

   DM1.wModo := 'M';
   Screen.Cursor := crDefault;
   FIngresoLote.ShowModal;
end;


procedure TFPrincipal.Z1sbReglasMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
   pnlReferencias.Left    := TSpeedButton(Sender).Left+10;
   pnlReferencias.Top     := TSpeedButton(Sender).Top+TSpeedButton(Sender).Height;
   pnlReferencias.Visible := True;
   pnlMaestros.Visible    := False;
   pnlMovimientos.Visible := False;
   pnlProcesos.Visible    := False;
   pnlReportes.Visible    := False;
   pnlFusion.visible      := False;
end;

procedure TFPrincipal.Z1sbMaestrosMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
   pnlMaestros.Left       := TSpeedButton(Sender).Left+10;
   pnlMaestros.Top        := TSpeedButton(Sender).Top+TSpeedButton(Sender).Height;
   pnlReferencias.Visible := False;
   pnlMaestros.Visible    := True;
   pnlMovimientos.Visible := False;
   pnlProcesos.Visible    := False;
   pnlReportes.Visible    := False;
   pnlFusion.visible      := False;
end;

procedure TFPrincipal.Z1sbProcesosMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
   pnlProcesos.Left       := TSpeedButton(Sender).Left+10;
   pnlProcesos.Top        := TSpeedButton(Sender).Top+TSpeedButton(Sender).Height;
   pnlReferencias.Visible := False;
   pnlMaestros.Visible    := False;
   pnlMovimientos.Visible := False;
   pnlProcesos.Visible    := True;
   pnlReportes.Visible    := False;
   pnlFusion.visible      := False;
end;

procedure TFPrincipal.Z1sbReportesMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
   pnlReportes.Left       := TSpeedButton(Sender).Left+10;
   pnlReportes.Top        := TSpeedButton(Sender).Top+TSpeedButton(Sender).Height;
   pnlReferencias.Visible := False;
   pnlMaestros.Visible    := False;
   pnlMovimientos.Visible := False;
   pnlProcesos.Visible    := False;
   pnlReportes.Visible    := True;
   pnlFusion.Visible      := False;
end;

procedure TFPrincipal.dbgMovCxPMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
   SacaMenu(Sender);
end;

procedure TFPrincipal.SacaMenu(Sender: TObject);
begin
   clbPrincipal.Enabled   := True;
   pnlReferencias.Visible := False;
   pnlMaestros.Visible	  := False;
   pnlMovimientos.Visible := False;
   pnlProcesos.Visible    := False;
   pnlReportes.Visible    := False;
   pnlFusion.Visible      := False;
   pnlVarios.Visible      := False;
end;

procedure TFPrincipal.dbgOPagoMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
   SacaMenu(Sender);
end;

procedure TFPrincipal.lbFiltroOPDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
   Accept := True;
end;

procedure TFPrincipal.lbOrdenOPDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
   Accept := True;
end;

procedure TFPrincipal.Z1sbMenuRegistro5Click(Sender: TObject);
begin
   SacaMenu(Sender);
end;

procedure TFPrincipal.FormCreate(Sender: TObject);
begin
   If (DM1.wAdmin = 'G') OR
      (DM1.wAdmin = 'M')Then
    begin
     DM1.wGrupoTmp := '';
     Application.OnMessage := AppMessage;
     ListaComponentes(Self);
    end;
end;

procedure TFPrincipal.AppMessage(var Msg:TMsg; var Handled:Boolean );
begin
   if Msg.message = WM_KEYDOWN then begin

      if ( Msg.wParam=VK_F5 ) then begin

         If (Copy(DM1.wObjetoNombr,1,2)='Z1') or
            (Copy(DM1.wObjetoNombr,1,2)='Z2') then begin
            CreaOpciones;
         end;
      end;

      if ( Msg.wParam=VK_F12 ) then begin
         CreaAccesos;
      end;
   end;
end;

procedure TFPrincipal.Z1sbAsociadosClick(Sender: TObject);
begin

  FAsociados := TFAsociados.create(self);
  FToolAso := TFToolAso.Create(Self);
  FToolAso.wDeDonde := '1';
  FToolAso.wTabla := 'APO201';
  FtoolAso.wDeDonde := '1'; // para   DM1.cdsAso;

  AbreTablasAso;
  DM1.cdsDist.IndexFieldNames  :='ZIPDES';
  DM1.cdsProf.IndexFieldNames  :='PROFDES';
  DM1.cdsDpto.IndexFieldNames  :='DPTODES';
  DM1.cdsProvin.IndexFieldNames:='CIUDDES';
  DM1.cdsPais.IndexFieldNames  :='PAISDES';

  SacaMenu(sender);
  Mtx := TMant.Create(Self);
  try
    Mtx.Admin           := DM1.wAdmin;
    Mtx.User            := DM1.wUsuario;
    Mtx.OnCreateMant    := nil ;
    Mtx.TableName       := 'APO201';
    Mtx.ClientDataSet   := DM1.cdsAso;
    Mtx.Registros       := 30;
    mtx.Filter          := '';
    Mtx.DComC           := DM1.DCOM1;
    Mtx.Module          := dm1.wModulo;
    Mtx.Titulo 		:= 'Maestro de Asociados';
 //   Mtx.OnInsert 	:= OnInsertAsociado;
    Mtx.OnInsert 	:= nil;
    Mtx.OnEdit 		:= OnEditAsociado;
    Mtx.OnCreateMant    := PegaPanelToolAso;
    Mtx.OnDelete        := OnNoDelete;
    Mtx.OnShow 		:= nil;
    Mtx.ControlGridDisp := cgdPrincipal;
    Mtx.SectionName	:='APOAsociados';
    Mtx.FileNameIni     := '\SOLAPO.INI';
// Inicio HPC_201501_APO     Cambio de DCOM a Socket
    Mtx.Tipo            := 'NORMAL';
// Fin  HPC_201501_APO     Cambio de DCOM a Socket
    Mtx.Execute;
  Finally
    Mtx.Free;
    FAsociados.Free;
    FToolAso.Free;
  End;
  DM1.cdsDist.IndexFieldNames  :='';
  DM1.cdsProf.IndexFieldNames  :='';
  DM1.cdsDpto.IndexFieldNames  :='';
  DM1.cdsProvin.IndexFieldNames:='';
  DM1.cdsPais.IndexFieldNames  :='';
  DM1.cdsAso.Close;
  DM1.cdsEstCiv.Close;
  DM1.cdsUPago.Close;
  DM1.cdsUPro.Close;
  DM1.cdsUSES.Close;
  DM1.cdsBcos.Close;
end;

procedure TFPrincipal.OnInsertAsociado(Sender: TObject);
begin
  Screen.Cursor:=crHourGlass;
  DM1.wModo := 'A';
  FAsociados.ShowModal;
  Application.ProcessMessages;
  Screen.Cursor:=crDefault;
end;

procedure TFPrincipal.OnEditAsociado(Sender: TObject; MantFields: TFields);
begin
  if DM1.cdsAso.RecordCount=0 then
  begin
    ShowMessage('Error, No existen Registros a Editar');
    exit;
  end;
  DM1.wModo := 'M';
  FAsociados.Z2sbtnMarcar.enabled := False;
  DM1.cdsAso.Edit;
  Application.ProcessMessages;
  FAsociados.ShowModal;
end;

procedure TFPrincipal.PegaPanelToolApo(Sender: TObject);
var
   pg : TPanel;
   pl : TPanel;
begin
   pg := FToolApo.pnlTool;
   pl := TMant(Sender).FMant.pnlBtns;
   pl.Height   := pg.Height + 5;
   pl.AutoSize := True;
   pg.Parent   := TMant(Sender).FMant.pnlBtns;
   pg.Align    := alClient;
   TMant(Sender).FMant.pnlBtns.Visible  := True;
end;

procedure TFPrincipal.PegaPanelToolAso(Sender: TObject);
var
   pg : TPanel;
   pl : TPanel;
begin
  pg := FToolAso.pnlTool;
   pl := TMant(Sender).FMant.pnlBtns;
   pl.Height   := pg.Height + 5;
   pl.AutoSize := True;
   pg.Parent   := TMant(Sender).FMant.pnlBtns;
   pg.Align    := alClient;
   TMant(Sender).FMant.pnlBtns.Visible  := True;

end;

procedure TFPrincipal.PegaPanelToolPrv(Sender: TObject);
var
   pg : TPanel;
   pl : TPanel;
begin
   pg := FToolProvision.pnlTool;
   pl := TMant(Sender).FMant.pnlBtns;
   pl.Height   := pg.Height + 5;
   pl.AutoSize := True;
   pg.Parent   := TMant(Sender).FMant.pnlBtns;
   pg.Align    := alClient;
   TMant(Sender).FMant.pnlBtns.Visible  := True;
end;

procedure TFPrincipal.Z1sbSalidaClick(Sender: TObject);
begin
   Close;
end;

procedure TFPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   DM1.DCOM1.Connected := False;
   Application.Terminate;
end;

procedure TFPrincipal.Z1sbMenuRegistro5MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
   pnlReportes.Visible := False;
end;

procedure TFPrincipal.Z1sbSalidaMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   pnlReferencias.Visible := False;
   pnlMaestros.Visible    := False;
   pnlMovimientos.Visible := False;
   pnlProcesos.Visible    := False;
   pnlReportes.Visible    := False;
   pnlFusion.Visible      := False;
end;

procedure TFPrincipal.FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
   SacaMenu(Self);
end;

procedure TFPrincipal.Z1sbMovimientosMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   pnlMovimientos.Left    := TSpeedButton(Sender).Left+10;
   pnlMovimientos.Top     := TSpeedButton(Sender).Top+TSpeedButton(Sender).Height;
   pnlReferencias.Visible := False;
   pnlMaestros.Visible    := False;
   pnlMovimientos.Visible := True;
   pnlProcesos.Visible    := False;
   pnlReportes.Visible    := False;
   pnlFusion.visible      := False;
end;

procedure TFPrincipal.Z1sbReclamosClick(Sender: TObject);
begin
   SacaMenu(Sender);
   DM1.FiltraCds(DM1.cdsUpro, 'SELECT * FROM APO102');
   DM1.FiltraCds(DM1.cdsUPago,'SELECT * FROM APO103');
   DM1.FiltraCds(DM1.cdsUse,  'SELECT * FROM APO101');
   xSQL := 'SELECT * FROM APO114 WHERE RECF='+QuotedStr(DM1.wModulo);
   DM1.cdsReclMotivo.Close;
   DM1.cdsReclMotivo.DataRequest(xSQL);
   DM1.cdsReclMotivo.Open;

   FReclamos := TFReclamos.create(Self);
   xSQL := ' SELECT R.RECLID, R.ASOID, R.ASOAPENOM, R.ASOCODMOD,'
          +' R.RECLTMONID, R.RECLTOTAL,'
          +' R.USEID, R.USUARIO, R.HREG, R.FREG , R.RECESTADO , R.RECDEVUELTO'
          +' FROM APO302 R ' ;

   Mtx := TMant.Create(Self);
   Try
    Mtx.User            := DM1.wUsuario;
    Mtx.Admin           := DM1.wAdmin;
    Mtx.Module          := DM1.wModulo;
    Mtx.DComC           := DM1.DCOM1;
    Mtx.ControlGridDisp := cgdPrincipal;
    Mtx.OnCreateMant    := nil ;
    Mtx.TableName       := 'VWAPORECLAMO';
    Mtx.ClientDataSet   := DM1.cdsReclamo;
    Mtx.Filter          := '';
    Mtx.Titulo          := 'Reclamos de Aportes';
    Mtx.OnInsert        := OnInsertReclamo;
    Mtx.OnEdit 	        := OnEditReclamo;
    Mtx.OnDelete        := OnNoDelete;
    Mtx.OnShow 	        := nil;
    Mtx.SectionName     := 'Reclamos';
    Mtx.FileNameIni     := '\SolAportes.ini';
    Mtx.UsuarioSQL.Add(xSQL);
// Inicio HPC_201501_APO     Cambio de DCOM a Socket
    Mtx.Tipo            := 'NORMAL';
// Fin  HPC_201501_APO     Cambio de DCOM a Socket
    Mtx.Execute;
   Finally
    Mtx.Free;
    FReclamos.Free;
    DM1.cdsUPro.Close;
    DM1.cdsUPago.Close;
    DM1.cdsUse.Close;
   end;
end;


procedure TFPrincipal.OnInsertReclamo(Sender: TObject);
begin
   DM1.wModo := 'A';
   FReclamos.ShowModal;
end;

procedure TFPrincipal.OnEditReclamo(Sender: TObject; MantFields: TFields);
begin
   If DM1.cdsReclamo.RecordCount = 0 Then
    begin
     ShowMessage('No existen registros a editar');
     Exit;
    end;
   DM1.wModo := 'M';
   FReclamos.ShowModal;
end;

procedure TFPrincipal.Z1sbDevolucionAportesClick(Sender: TObject);
begin
   SacaMenu(Sender);
   DM1.FiltraTabla( DM1.cdsUse,  'APO101', 'USEID', '' );
   DM1.FiltraTabla( DM1.cdsUPro, 'APO102', 'UPROID', '' );
   DM1.cdsUPro.IndexFieldNames  := 'UPROID';
   DM1.FiltraTabla( DM1.cdsUPago,'APO103', 'UPAGOID', '' );
   DM1.cdsUPago.IndexFieldNames := 'UPAGOID';

   DM1.FiltraTabla( DM1.cdsUPago,'APO103', 'UPAGOID', '' );
   DM1.cdsUPago.IndexFieldNames := 'UPAGOID';
   DM1.Filtracds( DM1.cdsBcos,' SELECT * FROM TGE105 WHERE BANCOPRF=''BN-'' OR CLAUXID = ''C''');
   with DM1.cdsBcos do
   begin
      Filter := '' ;
      Filtered := False ;
   end ;
   DM1.Filtracds( DM1.cdsCbcos,'SELECT * FROM TGE106 WHERE CIAID=''' + wCiaDef + ''' ' );
   with DM1.cdsBcos do
   begin
      Filter := '' ;
      Filtered := False ;
   end ;
   DM1.FiltraTabla( DM1.cdsAgenciaBco, 'COB102', 'BANCOID', '' );
   DM1.cdsAgenciaBco.IndexFieldNames := 'BANCOID';

   xSQL := 'SELECT * FROM APO114 WHERE RECF='+QuotedStr(DM1.wModulo);

   DM1.cdsReclMotivo.Close;
   DM1.cdsReclMotivo.DataRequest(xSQL);
   DM1.cdsReclMotivo.Open;

   DM1.Filtracds(  DM1.cdsTipDesem, 'SELECT * FROM CRE104 WHERE TIPDEV=''S'' ORDER BY TIPDESEID');

   Mtx := TMant.Create(Self);
   FDevolucionAportes := TFDevolucionAportes.Create(Self);
   FToolDev := TFToolDev.Create(Self);

   Try
    Mtx.User             := DM1.wUsuario;
    Mtx.Admin            := DM1.wAdmin;
    Mtx.Module           := DM1.wModulo;
    Mtx.DComC            := DM1.DCOM1;
    Mtx.ControlGridDisp  := cgdPrincipal;
    Mtx.TableName        := 'APO311';
    Mtx.ClientDataSet    := DM1.cdsTransDevol;
    Mtx.Filter           := '';
    Mtx.Titulo 	         := 'Devoluciones';
    Mtx.OnInsert         := OnInsertDevolucion;
    Mtx.OnEdit 	         := OnEditDevolucion;
    Mtx.OnDelete         := OnNoDelete;
    Mtx.OnCreateMant     := PegaPanelToolDevApo;
    Mtx.OnShow 	         := nil;
    Mtx.SectionName      := 'Devolucion2';
    Mtx.FileNameIni      := '\SolAportes.ini';
// Inicio HPC_201501_APO     Cambio de DCOM a Socket
    Mtx.Tipo            := 'NORMAL';
// Fin  HPC_201501_APO     Cambio de DCOM a Socket
    Mtx.Execute;
   Finally
    FDevolucionAportes.Free;
    FToolDev.Free;
    Mtx.Free;
    DM1.cdsUse.Close;
    DM1.cdsUPro.Close;
    DM1.cdsUPago.Close;
    DM1.cdsTipDesem.Close;
    DM1.cdsBcos.Close;
    DM1.cdsCbcos.Close;

  end;
end;

procedure TFPrincipal.OnEditDevolucion(Sender: TObject; MantFields: TFields);
begin
   If DM1.cdsTransDevol.RecordCount = 0 Then
   begin
     ShowMessage('No Existen Registros a Editar');
     Exit;
   end;
   DM1.wModo := 'M';
   DM1.Filtracds(  DM1.cdsAsociados, 'SELECT * FROM db2admin.APO201 WHERE ASOID = ''' + DM1.cdsTransDevol.FieldByName('ASOID').AsString +'''');
   FDevolucionAportes.ShowModal;

end;

procedure TFPrincipal.Z1sbContabilizacionClick(Sender: TObject);
begin
   SacaMenu(Sender);
   Try
    DM1.Filtracds(DM1.cdsDiario, 'SELECT * FROM db2admin.TGE104 ORDER BY TDIARID');
    FContabilizacionF := TFContabilizacionF.Create(Self);
    FContabilizacionF.ShowModal;
   Finally
    FContabilizacionF.Free;
    DM1.cdsDiario.Close;
   end;
end;

procedure TFPrincipal.Z1sbRepResumenClick(Sender: TObject);
begin
   SacaMenu(Sender);
   Try
    FRepCaptacionAportes:=TFRepCaptacionAportes.Create(Self);
    FRepCaptacionAportes.ShowModal;
   Finally
    FRepCaptacionAportes.Free;
   end;
end;

procedure TFPrincipal.Z1sbCaptaAportesClick(Sender: TObject);
begin
   SacaMenu(Sender);
   sSQL := 'SELECT * FROM APO101 ';
   DM1.FiltraCDS(DM1.cdsUSE, sSQL);

   sSQL := 'SELECT * FROM APO102';
   DM1.FiltraCDS(DM1.cdsUPro, sSQL);

   sSQL := 'SELECT * FROM APO103';
   DM1.FiltraCDS(DM1.cdsUPago, sSQL);

   sSQL := 'SELECT * FROM COB101 WHERE FORPAGFAPO LIKE ''%S%'' ORDER BY FORPAGOID';
   DM1.FiltraCDS(DM1.cdsFPagoAporte, sSQL);

   sSQL := 'SELECT BANCOID, BANCONOM, BANCOPRF FROM TGE105';
   DM1.FiltraCDS(DM1.cdsBancos, sSQL);

   sSQL := 'SELECT * FROM TGE103';
   DM1.FiltraCDS(DM1.cdsTMoneda, sSQL);

   DM1.cdsBancos.IndexFieldNames      := 'BANCOID';
   DM1.cdsFPagoAporte.IndexFieldNames := 'FORPAGOID';

   DM1.cdsTMoneda.IndexFieldNames     := 'TMONID';

   FCaptaAportes    := TFCaptaAportes.create(Self);
   FToolCaptaAporte := TFToolCaptaAporte.Create(Self);
   Mtx := TMant.Create(Self);
   Try
    Mtx.User            := DM1.wUsuario;
    Mtx.Admin           := DM1.wAdmin;
    Mtx.Module          := DM1.wModulo;
    Mtx.DComC           := DM1.DCOM1;
    Mtx.ControlGridDisp := cgdPrincipal;
    Mtx.TableName       := 'APO201';
    Mtx.ClientDataSet   := DM1.cdsAsociados;
    Mtx.Registros       := 30;
    Mtx.Titulo 	        := 'Asociados';
    Mtx.OnEdit 	        := OnEditAportes;
    Mtx.OnCreateMant    := PegaPanelToolCaptaApo;
    Mtx.SectionName     :='CaptaAportes';
    Mtx.FileNameIni     :='\SolAportes.ini';
// Inicio HPC_201501_APO     Cambio de DCOM a Socket
    Mtx.Tipo            := 'NORMAL';
// Fin  HPC_201501_APO     Cambio de DCOM a Socket
    Mtx.Execute;
   Finally
    Mtx.Free;
    FCaptaAportes.Free;
    DM1.cdsUse.Close;
    DM1.cdsBancos.IndexFieldNames      := '';
    DM1.cdsFPagoAporte.IndexFieldNames := '';
    DM1.cdsTMoneda.IndexFieldNames     := '';
  end;
end;

procedure TFPrincipal.OnEditAportes (Sender : TObject; MantFields: TFields);
begin
   If DM1.cdsAsociados.RecordCount = 0 Then
    begin
     ShowMessage('No Existen Registros a Editar');
     Exit;
    end;
   DM1.wModo := 'M';
   FCaptaAportes.ShowModal;
end;

procedure TFPrincipal.OnEditAsoCta(Sender: TObject; MantFields: TFields);
var
   cds : TwwClientDataset ;
begin
   cds := TMant(Sender).ClientDataSet ;

   If cds.RecordCount = 0 Then
    begin
     ShowMessage('No Existen Registros a Editar');
     Exit;
    end;
   If xNamForm = 'FReclamos' Then
    begin

     FReclamos.dblcdCodigo.Text := DM1.cdsAsociados.FieldByName('ASOID').AsString;
     FReclamos.dblcdCodigo.SetFocus ;
     FReclamos.dblcdCodigo.OnExit(FReclamos.dblcdCodigo);
    end
   Else if xNamForm = 'FDevolucionAportes' then
        begin
            FDevolucionAportes.dblcdCodigo.Text := cds.FieldByName('ASOID').AsString;
            FDevolucionAportes.LlenarDatosAsociado(cds.FieldByName('ASOID').AsString);
        end
        else
    begin
     FToolCtaInd.dblcdAso.Text    := DM1.cdsAsociados.FieldByName('ASOID').AsString;
     FToolCtaInd.dbeAsociado.Text := DM1.cdsAsociados.FieldByName('ASOAPENOM').AsString;
    end;
   TMant(Sender).FMant.Close;
end;

procedure TFPrincipal.OnEditDetalle (Sender : TObject; MantFields: TFields);
begin
   Try
    FMuestraDatos := TFMuestraDatos.create(Self);
    FMuestraDatos.ShowModal;
   Finally
    FMuestraDatos.Free;
   end;
end;

procedure TFPrincipal.Z1sbActualizCtaIndClick(Sender: TObject);
begin
   SacaMenu(Sender);
   DM1.FiltraTabla( DM1.cdsUses, 'APO101', 'USEID', '' );

   DM1.Filtracds(DM1.cdsUPago, 'SELECT UPAGOID, UPAGONOM FROM APO103 WHERE UPROID=''Z''');

   xSQL := 'SELECT APOANO, APOMES, INTERES, BONUS '+
         'FROM APO117';

   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;

   DM1.cdsQry.IndexFieldNames  := 'APOANO; APOMES';

   xSQL := 'SELECT APOANO, BENMONTO FROM APO121';
   DM1.cdsReporte2.Close;
   DM1.cdsReporte2.DataRequest(xSQL);
   DM1.cdsReporte2.Open;

   DM1.cdsReporte2.IndexFieldNames := 'APOANO';

   MtxCI := TMant.Create(Self);
   FGeneraCtaInd := TFGeneraCtaInd.Create(Self);
   FAsoCtaInd    := TFAsoCtaInd.Create(Self);
   Try
    MtxCI.User            := DM1.wUsuario;
    MtxCI.Admin           := DM1.wAdmin;
    MtxCI.Module          := DM1.wModulo;
    MtxCI.DComC           := DM1.DCOM1;
    MtxCI.ControlGridDisp := cgdPrincipal;
    MtxCI.OnCreateMant    := ToolAsoCtaInd ;
    MtxCI.TableName       := 'APO201';
    MtxCI.Registros       := 30;
    MtxCI.ClientDataSet   := DM1.cdsAsociados;
    MtxCI.Filter          := '';
    MtxCI.Titulo          := 'Asociados';
    MtxCI.OnInsert        := nil;
    MtxCI.OnEdit          := OnEditCta;
    MtxCI.OnDelete        := OnNoDelete;
    MtxCI.OnShow          := nil;
    MtxCI.SectionName     :='CtaIndiv';
    MtxCI.FileNameIni     :='\SolAportes.ini';
// Inicio HPC_201501_APO     Cambio de DCOM a Socket
    MtxCI.Tipo            := 'NORMAL';
// Fin  HPC_201501_APO     Cambio de DCOM a Socket
    MtxCI.Execute;
   Finally
    FGeneraCtaInd.Free;
    MtxCI.Free;
    DM1.cdsUse.Close;
    DM1.cdsQry.IndexFieldNames      := '';
    DM1.cdsReporte2.IndexFieldNames := '';
   end;
end;

procedure TFPrincipal.OnEditCta(Sender : TObject; MantFields: TFields);
begin
   FRepX := TFRepX.Create(Self);
   FRepX.edtAsoID.Text    := DM1.cdsAsociados.FieldByName('ASOID').AsString;
   FRepX.edtAsociado.Text := DM1.cdsAsociados.FieldByName('ASOAPENOM').AsString;
   FRepX.ShowModal;
end;

procedure TFPrincipal.OnEditCtaIndividual(Sender: TObject; MantFields: TFields);
begin
   If DM1.cdsAsociados.RecordCount = 0 Then
    begin
     ShowMessage('No existen registros a editar');
     Exit;
    end;
   DM1.wModo := 'M';
   FGeneraCtaInd.ShowModal;
end;

procedure TFPrincipal.Z1sbRepAportesNoDescClick(Sender: TObject);
begin
   SacaMenu(Sender);
   Mtx := TMant.Create(Self);
   Try
    Mtx.User            := DM1.wUsuario;
    Mtx.Admin           := DM1.wAdmin;
    Mtx.Module          := DM1.wModulo;
    Mtx.DComC           := DM1.DCOM1;
    Mtx.ControlGridDisp := cgdPrincipal;
    Mtx.TableName       := 'APO301';
    Mtx.ClientDataSet   := DM1.cdsTransacciones;
    Mtx.Filter          := 'TRANSINTID='+QuotedStr('PRV');
    Mtx.Titulo 		:= 'Aportes No Descontados';
    Mtx.OnDelete 	:= OnNoDelete;
    Mtx.SectionName	:= 'ReporteApoNoDsct';
    Mtx.FileNameIni	:= '\SolAportes.ini';
// Inicio HPC_201501_APO     Cambio de DCOM a Socket
    Mtx.Tipo            := 'NORMAL';
// Fin  HPC_201501_APO     Cambio de DCOM a Socket
    Mtx.Execute;
   Finally
    Mtx.Free;
   end;
end;

procedure TFPrincipal.Z1sbRepInconsistenciasClick(Sender: TObject);
begin
   SacaMenu(Sender);
   DM1.FiltraTabla( DM1.cdsUses, 'APO101', 'USEID', '' );

   DM1.Filtracds(DM1.cdsUPago, 'SELECT UPAGOID,UPAGONOM FROM APO103 WHERE UPROID=''zzz''');

   MtxCI         := TMant.Create(Self);
   FGeneraCtaInd := TFGeneraCtaInd.Create(Self);
   FAsoCtaInd    := TFAsoCtaInd.Create(Self);
   Try
    MtxCI.User            := DM1.wUsuario;
    MtxCI.Admin           := DM1.wAdmin;
    MtxCI.Module          := DM1.wModulo;
    MtxCI.DComC           := DM1.DCOM1;
    MtxCI.ControlGridDisp := cgdPrincipal;
    MtxCI.OnCreateMant    := ToolAsoCtaInd ;
    MtxCI.TableName       := 'APO201';
    MtxCI.Registros       := 30;
    MtxCI.ClientDataSet   := DM1.cdsAsociados;
    MtxCI.Filter          := '';
    MtxCI.Titulo          := 'Asociados';
    MtxCI.OnInsert        := nil;
    MtxCI.OnEdit          := OnEditCtaIndividual;
    MtxCI.OnDelete        := OnNoDelete;
    MtxCI.OnShow          := nil;
    MtxCI.SectionName     := 'CtaIndiv';
    MtxCI.FileNameIni  	  := '\SolAportes.ini';
// Inicio HPC_201501_APO     Cambio de DCOM a Socket
    MtxCI.Tipo            := 'NORMAL';
// Fin  HPC_201501_APO     Cambio de DCOM a Socket
    MtxCI.Execute;
   Finally
    FGeneraCtaInd.Free;
    MtxCI.Free;
    DM1.cdsUse.Close;
   end;
end;

procedure TFPrincipal.PegaToolCta(Sender: TObject);
begin
end;

procedure TFPrincipal.Z1sbRepCaptaAportesClick(Sender: TObject);
begin
   SacaMenu(Sender);
   Screen.Cursor := crHourGlass;
   FToolAportes  := TFToolAportes.Create(Self);

   Mtx := TMant.Create(Self);
   Try
    Mtx.Admin           := DM1.wAdmin;
    Mtx.User            := DM1.wUsuario;
    Mtx.Module          := DM1.wModulo;
    Mtx.DComC           := DM1.DCOM1;
    Mtx.ControlGridDisp := cgdPrincipal;
    Mtx.ClientDataSet   := DM1.cdsTransacciones;
    Mtx.TableName       := 'APO301';
    Mtx.Titulo 	        := 'Aportes';
    Mtx.OnCreateMant    := ToolAportesCreate;
    Mtx.OnInsert        := Nil;
    Mtx.OnEdit 	        := OnEditRepAportes;
    Mtx.OnDelete        := OnNoDelete;
    Mtx.OnShow 	        := Nil;
    Mtx.Filter          := '';
    Mtx.SectionName     := 'AportesReporte';
    Mtx.FileNameIni     := '\SolAportes.ini';
    Mtx.NoVisible.Clear;
    Mtx.Colors.Add('ASOID;clTeal;clWhite;;;APOFDEV%=%S%;');
    Mtx.Colors.Add('ASOID;clRed;clWhite;;;APOFRECL%=%S%AND%APOFDEV%<>%S%;');
    Screen.Cursor       := crDefault;
// Inicio HPC_201501_APO     Cambio de DCOM a Socket
    Mtx.Tipo            := 'NORMAL';
// Fin  HPC_201501_APO     Cambio de DCOM a Socket
    Mtx.Execute;
   Finally
    Mtx.Free;
    FToolAportes.Free;
   end;
end;

procedure TFPrincipal.ToolAportesCreate(Sender: TObject);
var
   pl, pg : TPanel;
begin
   pg          := FToolAportes.pnlBot;
   pl          := TMant(Sender).FMant.pnlBtns;
   pl.AutoSize := True;
   pg.Align    := alClient;
   pg.Parent   := TMant(Sender).FMant.pnlBtns;
   pl.Height   := pg.Height + 5;
   TMant(Sender).FMant.pnlBtns.Visible  := True;
end;

procedure TFPrincipal.ToolCuotasCreate(Sender: TObject);
var
   pl, pg : TPanel;
begin
   pg := FToolCuotas.pnlBot;
   pl := TMant(Sender).FMant.pnlBtns;
   pl.AutoSize := True;
   pg.Align    := alClient;
   pg.Parent   := TMant(Sender).FMant.pnlBtns;
   pl.Height   := pg.Height + 5;
   TMant(Sender).FMant.pnlBtns.Visible  := True;
end;

procedure TFPrincipal.OnEditRepAportes (Sender : TObject; MantFields: TFields);
begin
   If DM1.cdsTransacciones.RecordCount = 0 Then
    begin
     ShowMessage('No existen registros a editar');
     Exit;
    end;

   Mtx1 := TMant.Create(Self);

   If DM1.cdsTransacciones.FieldByName('TRANSINTID').AsString = 'APO' Then
    begin
     FToolCuotas := TFToolCuotas.Create(Self);
     FToolCuotas.dbeAso.Text := DM1.cdsTransacciones.FieldByName('ASOID').AsString;
     FToolCuotas.dbeNom.Text := DM1.cdsTransacciones.FieldByName('ASOAPENOM').AsString;
     Try
      Mtx1.User            := DM1.wUsuario;
      Mtx1.Admin           := DM1.wAdmin;
      Mtx1.Module          := DM1.wModulo;
      Mtx1.DComC           := DM1.DCOM1;
      Mtx1.ControlGridDisp := cgdPrincipal;
      Mtx1.OnCreateMant    := ToolCuotasCreate;
      Mtx1.TableName       := 'APO301';
      Mtx1.ClientDataSet   := DM1.cdsAsociados1;
      Mtx1.Filter          := 'APO301.ASOID='+QuotedStr(DM1.cdsTransacciones.FieldByName('ASOID').AsString);
      Mtx1.Titulo 	       := 'Aportes Asociado';
      Mtx1.OnInsert 	     := Nil;
      Mtx1.OnEdit 	       := OnEditDetalle;
      Mtx1.OnDelete 	     := OnNoDelete;
      Mtx1.OnShow 	       := Nil;
      Mtx1.SectionName	   :='AportesSocio';
      Mtx1.FileNameIni	   :='\SolAportes.ini';
      Mtx1.Colors.Add('ASOID;clRed;clWhite;;;APOFRECL%=%S%AND%APOFDEV%<>%S%;');
      Mtx1.Colors.Add('ASOID;clTeal;clWhite;;;APOFDEV%=%S%;');
// Inicio HPC_201501_APO     Cambio de DCOM a Socket
      Mtx1.Tipo            := 'NORMAL';
// Fin  HPC_201501_APO     Cambio de DCOM a Socket
      Mtx1.Execute;
     Finally
      Mtx1.Free;
      FToolCuotas.Free;
     end;
   end;

   If DM1.cdsTransacciones.FieldByName('TRANSINTID').AsString = 'DEV' Then
    BEGIN
     Mtx2 := TMant.Create(Self);
     Try
      Mtx2.User            := DM1.wUsuario;
      Mtx2.Admin           := DM1.wAdmin;
      Mtx2.Module          := DM1.wModulo;
      Mtx2.DComC           := DM1.DCOM1;
      Mtx2.ControlGridDisp := cgdPrincipal;
      Mtx2.OnCreateMant    := nIL;
      Mtx2.TableName       := 'APO305';
      Mtx2.ClientDataSet   := DM1.cdsDevolucion;
      Mtx2.Filter          := 'APO305.ASOID='+QuotedStr(DM1.cdsTransacciones.FieldByName('ASOID').AsString);
      Mtx2.Titulo          := 'Devoluciones Asociado: '+DM1.cdsTransacciones.FieldByName('ASOID').AsString+'  '+ dm1.cdsTransacciones.FieldByName('ASOAPENOM').AsString ;
      Mtx2.OnInsert 	     := Nil;
      Mtx2.OnEdit 	       := Nil;
      Mtx2.OnDelete 	     := OnNoDelete;
      Mtx2.OnShow 	       := Nil;
      Mtx2.SectionName	   :='AportesSocio';
      Mtx2.FileNameIni	   :='\SolAportes.ini';
// Inicio HPC_201501_APO     Cambio de DCOM a Socket
      Mtx2.Tipo            := 'NORMAL';
// Fin  HPC_201501_APO     Cambio de DCOM a Socket
      Mtx2.Execute;
     Finally
      Mtx2.Free;
     end;
    end;
end;

procedure TFPrincipal.Z1sbRepEstadoCtaClick(Sender: TObject);
var
  Reporte    : String;
  xMes, xAno : String;
begin
  Screen.Cursor := crHourGlass;

  DM1.Filtracds(DM1.cdsUse,   'SELECT useid,usenom   FROM APO101');
  DM1.Filtracds(DM1.cdsDpto,  'SELECT dptoid,dptodes FROM APO158');
  DM1.Filtracds(DM1.cdsProvin,'SELECT ciudid,ciuddes FROM APO123');
  DM1.Filtracds(DM1.cdsUPago, 'SELECT * FROM APO103' );
  DM1.Filtracds(DM1.cdsUPro,  'SELECT uproid,upronom FROM APO102');

  xMes := Copy(DateTimeToStr(Date),4,2);
  xAno := Copy(DateTimeToStr(Date),7,4);

  FToolApo := TFToolApo.Create(Self);
  FToolApo.ppDBPipeline1.DataSource := Nil;
  Mtx      := TMant.Create(Self);

   Reporte := 'SELECT A.APOSEC, A.ASOID, A.ASOCODMOD, A.USEABR, A.FREG, A.TRANSFOPE, A.TRANSNOPE, A.FORPAGOABR, '+
       			'A.PERIODO, A.USEID, A.SUMAAPORTE, A.SUMAOTRO, A.SUMATOT, '+
       			'A.TRANSMTODEV, A.HREG, A.TRANSANO, A.TRANSMES, '+
       			'B.DPTOID, B.CIUDID, B.ASORESNOM, B.ASOFRESNOM, B.ASODNI, B.ASONCTA, '+
       			'B.ASODIR, B.REGPENID, B.ASOAPENOM, B.UPROID, B.ASOCODPAGO, B.ASORESCESE, '+
       			'B.ASOFRESCESE, B.ASOTELF1, B.ASOTELF2, B.SITCTA, B.ASOSITID, '+
            'CAST(''AAAA'' AS VARCHAR2(15)) MES, '+
       			'K.CEDUDES, D.DPTOABR, C.CIUDDES, R.REGPENDES, G.UPRONOM '+

						'FROM (SELECT A.APOSEC, A.ASOID, A.ASOCODMOD, A.USEABR, A.FREG, A.TRANSFOPE, A.TRANSNOPE, A.TRANSANO, A.TRANSMES, '+
            'A.FORPAGOABR, A.TRANSANO||''/''||A.TRANSMES PERIODO, A.USEID, '+
            'A.TRANSMTO SUMAAPORTE, '+
            'DECODE(SUBSTR(A.FORPAGOABR,1,3),''PLA'',0,DECODE(LEAST(A.TRANSMTO,0),0,A.TRANSMTO,0)) SUMAOTRO, '+
            'A.TRANSMTO SUMATOT, DECODE(A.TRANSINTID,''DEV'',A.TRANSMTO,0) TRANSMTODEV, A.HREG '+
      			'FROM APO301 A WHERE A.ASOID='+QuotedStr('DEFF1123E')+') A, '+
     				'(SELECT B.ASOID, B.DPTOID, B.CIUDID, B.ASORESNOM, B.ASOFRESNOM, B.ASODNI, B.ASONCTA, B.ASODIR, '+
            'B.REGPENID, B.ASOAPENOM, B.UPROID, B.ASOCODPAGO, B.ASORESCESE, B.ASOFRESCESE, B.ASOTELF1, '+
            'B.ASOCODMOD, B.ASOSITID, '+
            'B.ASOTELF2, B.USEID, B.SITCTA FROM APO201 B WHERE B.ASOID='+QuotedStr('DEFF1123E')+') B, '+
     				'(SELECT K.CEDUDES, K.ASOID FROM APO202 K WHERE K.ASOID='+QuotedStr('DEFF1123E')+' AND K.FVIGENTE=''S'') K, '+
    				'APO123 C, APO158 D, APO102 G, APO103 P, APO105 R, APO106 T, APO101 U '+
						'WHERE A.ASOID=B.ASOID '+
            'AND B.ASOID = K.ASOID(+) '+
            'AND B.CIUDID = C.CIUDID(+) '+
            'AND C.DPTOID = D.DPTOID(+) '+
            'AND B.USEID = U.USEID(+) '+
            'AND U.UPAGOID = P.UPAGOID(+) '+
            'AND U.UPROID = G.UPROID(+) '+
            'AND B.REGPENID = R.REGPENID(+) '+
            'AND B.SITCTA = T.ASOSITID(+)';

   Try
    Mtx.Admin             := DM1.wAdmin;
    Mtx.User              := DM1.wUsuario;
    Mtx.TableName         := 'VWAPOESTCTA';
    Mtx.ClientDataSet     := DM1.cdsReporte1;
    Mtx.DComC             := DM1.DCOM1;
    Mtx.Module            := DM1.wModulo;
    Mtx.Titulo 	          := 'Aportes de Asociados';
    Mtx.OnCreateMant      := PegaPanelToolApo;
    Mtx.OnDelete          := onNoDelete;
    Mtx.ControlGridDisp   := cgdPrincipal;
    Mtx.UsuarioSQL.Add(Reporte);
    Mtx.SectionName       := 'APOEstCta';
    Mtx.FileNameIni       := '\SOLAPO.INI';
// Inicio HPC_201501_APO     Cambio de DCOM a Socket
    Mtx.Tipo            := 'NORMAL';
// Fin  HPC_201501_APO     Cambio de DCOM a Socket
    Mtx.Execute;
    Screen.Cursor := crDefault;
   Finally
    FToolApo.Free;
    Mtx.Free;
    Screen.Cursor := crHourGlass;
    DM1.cdsUse.Close;
    DM1.cdsUPro.Close;
    DM1.cdsProvin.Close;
    DM1.cdsDpto.Close;
    Screen.Cursor := crDefault;
   end;
end;

{
procedure TFPrincipal.sbRepDevAnuClick(Sender: TObject);
begin
   SacaMenu(Sender);
   Try
    Screen.Cursor := crHourGlass;
    DM1.FiltraCDS(DM1.cdsUse,'SELECT * FROM APO101');
    DM1.FiltraCDS(DM1.cdsUPro,'SELECT * FROM APO102');
    DM1.Filtracds(DM1.cdsProvin,'SELECT * FROM APO123');
    DM1.Filtracds(DM1.cdsDpto,'SELECT * FROM APO158');
    FRepUnidProcUSES:=TFRepUnidProcUSES.create(Self);
  	Screen.Cursor:=crDefault;
    FRepUnidProcUSES.showmodal;
  Finally
  	Screen.Cursor:=crHourGlass;
    FRepUnidProcUSES.free;
    DM1.cdsUse.Close;
    DM1.cdsUPro.Close;
    DM1.cdsProvin.Close;
    DM1.cdsDpto.Close;
  	Screen.Cursor:=crDefault;
  end;
end;
}

procedure TFPrincipal.Z1sbRepDevAportesClick(Sender: TObject);
begin
  SacaMenu(Sender);
  FToolRepDev:=TFToolRepDev.Create(Self);
  Mtx := TMant.Create(Self);
  Try
    Mtx.User            := DM1.wUsuario;
  	Mtx.Admin           := DM1.wAdmin;
    Mtx.Module          := DM1.wModulo;
    Mtx.DComC           := DM1.DCOM1;
    Mtx.ControlGridDisp := cgdPrincipal;
    Mtx.OnCreateMant    := Nil ;
    Mtx.TableName       := 'APO301';
    Mtx.ClientDataSet   := DM1.cdsTransacciones;
    Mtx.Filter          := 'TRANSINTID='+QuotedStr('DEV');
  //  Mtx.Filter          := 'ASOID='+QuotedStr('0000000000');
    Mtx.Titulo 			    := 'Devoluciones';
    Mtx.OnInsert 			  := Nil;
    Mtx.OnEdit 			    := Nil;
    Mtx.OnDelete 			  := Nil;
    Mtx.OnShow 			    := Nil;
    Mtx.OnCreateMant    := PanelToolRepDev;
    Mtx.SectionName		  :='ReporteAportes';
    Mtx.FileNameIni		  :='\SolAportes.ini';
// Inicio HPC_201501_APO     Cambio de DCOM a Socket
    Mtx.Tipo            := 'NORMAL';
// Fin  HPC_201501_APO     Cambio de DCOM a Socket
    Mtx.Execute;
  Finally
    Mtx.Free;
  end;
end;

procedure TFPrincipal.Z1sbRepControlApoClick(Sender: TObject);
begin
  SacaMenu(Sender);
  Try
    FRepControlRecaudacion:=TFRepControlRecaudacion.create(Self);
    FRepControlRecaudacion.showmodal;
  Finally
    FRepControlRecaudacion.free;
  end;
end;

procedure TFPrincipal.Z2bbtnProvisionClick(Sender: TObject);
begin
  SacaMenu(Sender);
  Try
    FProvision:=TFProvision.create(Self);
    FProvision.showmodal;
  Finally
    FProvision.free;
  end;

end;

procedure TFPrincipal.Z1sbProyIntBonClick(Sender: TObject);
var
 sSQL : string;
 xMesA, xMes, xAnoA : String;
begin
  SacaMenu(Sender);
  FToolProvision := TFToolProvision.Create(Self);
  Mtx := TMant.Create(Self);

  xMes:=Copy(DateTimeToStr(Date),4,2);
  xAnoA:=Copy(DateTimeToStr(Date),7,4);

  If xMes='01' Then
  begin
    xMesA:='11';
    xAnoA:=IntToStr(StrToInt(xAnoA)-1);
  end
  Else
  begin
    If xMes='02' Then
    begin
      xMesA:='12';
      xAnoA:=IntToStr(StrToInt(xAnoA)-1);
    end
    Else
    begin
      xMesA:=IntToStr(StrToInt(xMes)-2);
    end;
  end;

  If Length(Trim(xMesA))=1 Then
  begin
    xMesA:='0'+xMesA;
  end;

  xSQL:='SELECT APOANO, APOMES, INTERES, BONUS '+
        'FROM APO117 '+
        'WHERE APOANO='+QuotedStr(xAnoA)+' '+
        'AND APOMES='+QuotedStr(xMesA);
  DM1.cdsQry2.Close;
  DM1.cdsQry2.DataRequest(xSQL);
  DM1.cdsQry2.Open;

  sSQL:='SELECT A.UPROID, A.UPAGOID, A.USEID, B.USENOM, '+
        'SUM(NVL(A.SALDO,0))*'+DM1.cdsQry2.FieldByName('INTERES').AsString+' AS ENEINT, '+
        'SUM(NVL(A.SALDO,0))*'+DM1.cdsQry2.FieldByName('INTERES').AsString+' AS FEBINT, '+
        'SUM(NVL(A.SALDO,0))*'+DM1.cdsQry2.FieldByName('INTERES').AsString+' AS MARINT, '+
        'SUM(NVL(A.SALDO,0))*'+DM1.cdsQry2.FieldByName('BONUS').AsString  +' AS MARBON, '+
        'SUM(NVL(A.SALDO,0))*'+DM1.cdsQry2.FieldByName('INTERES').AsString+' AS ABRINT, '+
        'SUM(NVL(A.SALDO,0))*'+DM1.cdsQry2.FieldByName('INTERES').AsString+' AS MAYINT, '+
        'SUM(NVL(A.SALDO,0))*'+DM1.cdsQry2.FieldByName('INTERES').AsString+' AS JUNINT, '+
        'SUM(NVL(A.SALDO,0))*'+DM1.cdsQry2.FieldByName('BONUS').AsString  +' AS JUNBON, '+
        'SUM(NVL(A.SALDO,0))*'+DM1.cdsQry2.FieldByName('INTERES').AsString+' AS JULINT, '+
        'SUM(NVL(A.SALDO,0))*'+DM1.cdsQry2.FieldByName('INTERES').AsString+' AS AGOINT, '+
        'SUM(NVL(A.SALDO,0))*'+DM1.cdsQry2.FieldByName('INTERES').AsString+' AS SETINT, '+
        'SUM(NVL(A.SALDO,0))*'+DM1.cdsQry2.FieldByName('BONUS').AsString  +' AS SETBON, '+
        'SUM(NVL(A.SALDO,0))*'+DM1.cdsQry2.FieldByName('INTERES').AsString+' AS OCTINT, '+
        'SUM(NVL(A.SALDO,0))*'+DM1.cdsQry2.FieldByName('INTERES').AsString+' AS NOVINT, '+
        'SUM(NVL(A.SALDO,0))*'+DM1.cdsQry2.FieldByName('INTERES').AsString+' AS DICINT, '+
        'SUM(NVL(A.SALDO,0))*'+DM1.cdsQry2.FieldByName('BONUS').AsString  +' AS DICBON '+
        'FROM APO301 A, APO101 B '+
        'WHERE TRANSINTID='+QuotedStr('APO')+' '+
        'AND TRANSANO='+QuotedStr(xAnoA)+' '+
        'AND TRANSMES='+QuotedStr(xMesA)+' '+
        'AND A.USEID=B.USEID '+
        'GROUP BY A.USEID, A.UPAGOID, A.UPROID, B.USENOM';
  DM1.cdsQry2.Close;
  Try
    Mtx.User            := DM1.wUsuario;
		Mtx.Admin           := DM1.wAdmin;
    Mtx.Module          := DM1.wModulo;
    Mtx.DComC           := DM1.DCOM1;
    Mtx.ControlGridDisp := cgdPrincipal;
    Mtx.TableName       := 'VWAPOREPPROVINT';
    Mtx.ClientDataSet   := DM1.cdsQry;
    mtx.OnCreateMant    := PegaPanelToolPrv;
    mtx.UsuarioSQL.ADD(sSQL) ;
   	Mtx.Titulo 				  := 'Proyección de Intereses y Bonus';
    Mtx.SectionName		  := 'RepProvInt';
    Mtx.FileNameIni		  := '\SolAportes.ini';
    Mtx.OnInsert 			  := Nil;
    Mtx.OnEdit 				  := NIL;
   	Mtx.OnDelete 			  := OnNoDelete;
    Mtx.OnShow 				  := Nil;
// Inicio HPC_201501_APO     Cambio de DCOM a Socket
    Mtx.Tipo            := 'NORMAL';
// Fin  HPC_201501_APO     Cambio de DCOM a Socket
    Mtx.Execute;
  Finally
    Mtx.Free;
    Ftoolprovision.free;
  end;
end;

procedure TFPrincipal.AbreTablasAso;
begin

  sSQL := 'SELECT DPTOID,DPTODES,DPTOABR FROM APO158'+
          ' ORDER BY DPTOID';
  DM1.FiltraCDS(DM1.cdsDpto,sSQL);

  sSQL := 'SELECT ESTCIVID,ESTCIVDES,ESTCIVABR FROM TGE125'+
          ' ORDER BY ESTCIVID';
  DM1.FiltraCDS(DM1.cdsEstCiv,sSQL);

  sSQL := 'SELECT GRAACID,GRAACDES,GRAACABR FROM TGE123'+
          ' ORDER BY GRAACID';
  DM1.FiltraCDS(DM1.cdsGradoA,sSQL);

  sSQL := 'SELECT GRAINSID,GRAINSDES,GRAINSABR FROM TGE119'+
          ' ORDER BY GRAINSID';
  DM1.FiltraCDS(DM1.cdsGradoI,sSQL);

  sSQL := 'SELECT PAISID,PAISDES,PAISABR,FNACIONAL FROM TGE118 ORDER BY PAISID';
  DM1.FiltraCDS(DM1.cdsPais,sSQL);

  sSQL := 'SELECT   ASOTIPID,ASOTIPDES,ASOTIPABR,USUARIO FROM APO107'+
          ' ORDER BY ASOTIPID';
  DM1.FiltraCDS(DM1.cdsTAso,sSQL);

  sSQL := 'SELECT ASOSITID,ASOSITDES,ASOSITABR,ASOFACT,USUARIO FROM APO106'+
          ' ORDER BY ASOSITID';
  DM1.FiltraCDS(DM1.cdsSAso,sSQL);

  sSQL := 'SELECT CARGOID,CARGODES,USUARIO FROM APO111'+
          ' ORDER BY CARGOID';
  DM1.FiltraCDS(DM1.cdsCAso,sSQL);

  sSQL := 'SELECT TIPDOCCOD,TIPDOCDES,TIPDOCABR FROM TGE159'+
          ' ORDER BY TIPDOCCOD';
  DM1.FiltraCDS(DM1.cdsTDoc,sSQL);

  sSQL := 'SELECT REGPENID,REGPENDES,REGPENABR,USUARIO FROM APO105'+
          ' ORDER BY REGPENID';
  DM1.FiltraCDS(DM1.cdsTPension,sSQL);

  sSQL := 'SELECT TIPRESID,TIPRESDES,TIPRESABRE,USUARIO FROM APO104'+
          ' ORDER BY TIPRESID';
  DM1.FiltraCDS(DM1.cdsTResol,sSQL);

  sSQL := 'SELECT TIPVIAID,TIPVIADES FROM TGE145'+
          ' ORDER BY TIPVIAID';
  DM1.FiltraCDS(DM1.cdsTVia,sSQL);

  sSQL := 'SELECT TIPZONAID,TIPZONADES FROM TGE146'+
          ' ORDER BY TIPZONAID';
  DM1.FiltraCDS(DM1.cdsTZona,sSQL);

  sSQL := 'SELECT UBIGEOID,UBIGEODES,UBIGEODPTO,UBIGEOPROV,UBIGEODIST FROM TGE147'+
          ' ORDER BY UBIGEOID';
  DM1.FiltraCDS(DM1.cdsUbigeo,sSQL);

  sSQL := 'SELECT PROFID,PROFDES FROM TGE124 ORDER BY PROFID';
  DM1.FiltraCDS(DM1.cdsProf,sSQL);

  sSQL := 'SELECT CIUDID,CIUDDES,DPTOID FROM APO123'+
          ' ORDER BY CIUDID';
  DM1.FiltraCDS(DM1.cdsProvin,sSQL);

  sSQL := 'SELECT PARENID,PARENDES,PARENABR FROM TGE149'+
          ' ORDER BY PARENID';
  DM1.FiltraCDS(DM1.cdsTRela,sSQL);


  sSQL := ' SELECT ESTCIVID,ESTCIVDES,ESTCIVABR '+
          ' FROM TGE125'+
          ' ORDER BY ESTCIVID';
  DM1.FiltraCDS(DM1.cdsEstCiv,sSQL);


  sSQL := 'SELECT * '+
          'FROM APO103';
  DM1.FiltraCDS(DM1.cdsUPago,sSQL);

  sSQL := 'SELECT * '+
          'FROM APO102';
  DM1.FiltraCDS(DM1.cdsUPro,sSQL);

  sSQL := 'SELECT * '+
          'FROM APO101';
  DM1.FiltraCDS(DM1.cdsUSES,sSQL);

  sSQL := 'SELECT BANCOID, BANCONOM FROM TGE105';
  DM1.FiltraCDS(DM1.cdsBcos,sSQL);

  sSQL := ' SELECT ZIPID,ZIPDES,CIUDID,DPTOID '+
          ' FROM APO122 '+
          ' ORDER BY DPTOID,CIUDID,ZIPID';
  DM1.FiltraCDS(DM1.cdsDist,sSQL);

  DM1.cdsSitCta.Open;
end;

procedure TFPrincipal.FormActivate(Sender: TObject);
//Inicio HPC_201801_APO
//Control de Acceso al Modulo; Al ingresar a los módulos de Front; implementar un control que no permita acceder al módulo sino está inscrito en el grupo asignado al módulo
VAR XSQL2,xRuta:STRING;
begin
  //BloquearMenuPrincipal();
	lblVersion.Height:=13;
   lblVersion.Left:=16;
   lblVersion.Top:=528;

   xSQL2:='Select SF_CONTROL_ACCESO('+QuotedStr(dm1.wUsuario)+',''APO'') Mensaje From dual ';
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xSQL2);
   DM1.cdsQry1.Open;
   If copy(DM1.cdsQry1.FieldByName('Mensaje').AsString,1,3)='Err' Then
   Begin
      ShowMessage(DM1.cdsQry1.FieldByName('Mensaje').AsString);
      Application.Terminate;
	  Exit;
   End;

   sSQL := 'USERID='''+DM1.wUsuario+'''';
   Caption:='Módulo de Aportes - Usuario: '+ DM1.DisplayDescrip('prvTGE','TGE006','USERNOM',sSQL,'USERNOM');


   DM1.AccesosUsuarios( DM1.wModulo, DM1.wUsuario, '1','' );
   EnableWindow(WS_DISABLED,False);
   If not (VerificaVersion) Then Exit;
   Verpercadpas;

   xRuta:=UpperCase(ExtractFilePath(Application.ExeName));
   If Trim(xRuta)<>'C:\SOLEXES\' Then
   Begin
      MessageDlg(' EL SISTEMA Debe Ejecutase Desde :  >>> C:\SOLExes\ <<<  VERIFIQUE LA RUTA !!!! ', mtError, [mbOk], 0);
      Application.Terminate;
   End;

 //Final HPC_201801_APO
end;

procedure TFPrincipal.Z1sbCtaIndClick(Sender: TObject);
var
  Reporte : string;
begin
  SacaMenu(Sender);
  DM1.Filtracds(DM1.cdsUse,'SELECT USEID,USENOM,UPROID,UPAGOID FROM APO101');
  DM1.Filtracds(DM1.cdsDpto,'SELECT DPTOID,DPTODES FROM APO158');
  DM1.Filtracds(DM1.cdsProvin,'SELECT CIUDID,CIUDDES FROM APO123');
  DM1.Filtracds(DM1.cdsUPro,'SELECT UPROID,UPRONOM FROM APO102');
  DM1.cdsReporte2.Close;
  DM1.cdsReporte2.Filter:='';

  FToolCtaInd:= TFToolCtaInd.Create(Self);
  Reporte:='SELECT A.APOSEC, A.DEVANO, A.DEVMES, A.TRANSID, J.ASOID, J.ASORESNOM, J.ASOFRESNOM, A.DPTOABR, A.USEABR, A.FREG, '+
           'J.ASORESCESE, ASOFRESCESE, A.ASOCODMOD, A.ASOAPENOM, J.USEID, J.UPROID, A.UPAGOID, A.TRANSNOPE, A.TRANSFOPE, '+
           'A.TRANSANO, A.TRANSMES, J.REGPENID, '+
           '1996-DECODE(GREATEST(TO_CHAR(ASOFRESNOM,''YYYY''),''1996''),''1996'',TO_CHAR(ASOFRESNOM,''YYYY''),1996) AAPOR, '+
           'DECODE(A.TRANSINTID,''APO'', A.TRANSMTO,0) TRANSMTO, '+
           'A.SALDOANT, DECODE(A.TRANSID,''APORTE'',A.INTERESMTO,0) INTERESMTO, A.SALDO, '+
           'DECODE(A.TRANSINTID,''APO'',A.BONUSMTO,0) BONUSMTO, A.TRANSMTODEV, A.UPROABR, A.UPAGOABR, '+
           'V.FORPAGODES AS FORPAGOABR, '+
           'A.FORPAGOID, DECODE(TRANSID,''APORTE'',A.TRANSMTODEV,0) SUMA, J.DPTOID, J.CIUDID, '+
           'CAST(''AAAA'' AS VARCHAR2(15)) MES, '+
           'CAST(''AAAA'' AS VARCHAR2(35)) USEN, '+
           'CAST(''AAAA'' AS VARCHAR2(15)) UPAGON, '+
           'CAST(''AAAA'' AS VARCHAR2(15)) UPRON, '+
           'CAST(''AAAA'' AS VARCHAR2(15)) REGIMEN '+
           'FROM APO301 A, APO201 J, COB101 V '+
           'WHERE A.ASOID=J.ASOID AND TRIM(A.FORPAGOID)=V.FORPAGOID(+) AND J.ASOID=''DD'' '+
           'ORDER BY J.DPTOID, J.CIUDID, J.UPROID, A.USEID, J.ASOID, A.APOSEC, A.TRANSFOPE';
  MtxCtaInv1 := TMant.Create(Self);
  Try
    MtxCtaInv1.Admin          := DM1.wAdmin;
    MtxCtaInv1.User           := DM1.wUsuario;
    MtxCtaInv1.ClientDataSet  := DM1.cdsReporte2;
    MtxCtaInv1.DComC          := DM1.DCOM1;
    MtxCtaInv1.Titulo         := 'Cuenta Individual';
    MtxCtaInv1.OnCreateMant   := PegaPanelToolCtaInd;
    MtxCtaInv1.OnDelete       := OnNoDelete;
    MtxCtaInv1.ControlGridDisp:= cgdPrincipal;
    MtxCtaInv1.Module         := DM1.wModulo;
    MtxCtaInv1.TableName      := 'VWAPOREPCTAIND';
    MtxCtaInv1.UsuarioSQL.Add(Reporte);
    MtxCtaInv1.SectionName    := 'APOREPCTAIN';
    MtxCtaInv1.FileNameIni    := '\SolAportes.INI';
// Inicio HPC_201501_APO     Cambio de DCOM a Socket
    MtxCtaInv1.Tipo            := 'NORMAL';
// Fin  HPC_201501_APO     Cambio de DCOM a Socket
    MtxCtaInv1.Execute;
    Screen.Cursor:=CrDefault;
  Finally
    FToolCtaInd.Free;
    MtxCtaInv1.Free;
    DM1.cdsUse.Close;
    DM1.cdsUPro.Close;
    DM1.cdsProvin.Close;
    DM1.cdsDpto.Close;
    DM1.cdsReporte2.Close;
    DM1.cdsQry1.Filter   := '';
    DM1.cdsQry1.Filtered := False;
    DM1.cdsQry1.IndexFieldNames := '';
    DM1.cdsQry1.Close;
    DM1.cdsQry2.Filter   := '';
    DM1.cdsQry2.Filtered := False;
    DM1.cdsQry2.IndexFieldNames := '';
    DM1.cdsQry2.Close;
    DM1.cdsQry3.Filter   := '';
    DM1.cdsQry3.Filtered := False;
    DM1.cdsQry3.IndexFieldNames := '';
    DM1.cdsQry3.Close;
    DM1.cdsQry4.Filter   := '';
    DM1.cdsQry4.Filtered := False;
    DM1.cdsQry4.IndexFieldNames := '';
    DM1.cdsQry4.Close;
  end;
end;

procedure TFPrincipal.PegaPanelToolCtaind(Sender: TObject);
var
	pg : TPanel;
	pl : TPanel;
begin
  pg := FToolCtaInd.pnlTool;
  pl := TMant(Sender).FMant.pnlBtns;
  pl.Height   := pg.Height + 5;
  pl.AutoSize := True;
  pg.Parent   := TMant(Sender).FMant.pnlBtns;
  pg.Align    := alClient;
  TMant(Sender).FMant.pnlBtns.Visible  := True;
  FPrincipal.MtxCtaInv1.FMant.pnlPie.Visible := False;
end;

procedure TFPrincipal.PegaPanelToolCamOpe(Sender: TObject);
var
  pg : TPanel;
  pl : TPanel;
begin
  pg := FToolCamOpe.pnlTool;
  pl := TMant(Sender).FMant.pnlBtns;
  pl.Height   := pg.Height + 5;
  pl.AutoSize := True;
  pg.Parent   := TMant(Sender).FMant.pnlBtns;
  pg.Align    := alClient;
  TMant(Sender).FMant.pnlBtns.Visible := True;
  Mtx.FMant.Z2bbtnFiltro.Visible      := False;
end;
procedure TFPrincipal.hola(Sender: TObject);
var
  SQL:String;
begin
  SacaMenu(Sender);
  Screen.Cursor := crHourGlass;
  DM1.cdsBcos.open;
  DM1.cdsAgenciaBco.open;
  DM1.Filtracds(DM1.cdsUpro,  'SELECT UPROID,UPRONOM  FROM APO102');
  DM1.Filtracds(DM1.cdsUPago, 'SELECT UPAGOID,UPAGONOM FROM APO103');
  DM1.Filtracds(DM1.cdsUse,   'SELECT USEID, USENOM   FROM APO101');
  FToolCamOpe := TFToolCamOpe.Create(Self);
  SQL := 'SELECT ASOAPENOM,USEID,TRANSNOPE,TRANSFOPE FROM APO301 WHERE ASOAPENOM = '+QuotedStr('a');//ROWNUM<=50';

  Mtx := TMant.Create(Self);
  Try
    Mtx.Admin           := DM1.wAdmin;
    Mtx.User            := DM1.wUsuario;
    Mtx.TableName       := 'VWAPOCAMOPE';
    Mtx.ClientDataSet   := DM1.cdsQRY1;
    Mtx.Filter          := '';
    Mtx.DComC           := DM1.DCOM1;
    Mtx.Module          := DM1.wModulo;
    Mtx.Titulo 		:= 'Cambio de Operación';
    Mtx.OnInsert 	:= nil;
    Mtx.OnEdit 		:= nil;
    Mtx.OnCreateMant    := PegaPanelToolCamOpe;
    Mtx.OnDelete 	:= nil;
    Mtx.OnShow 		:= nil;
    Mtx.ControlGridDisp := cgdPrincipal;
    Mtx.UsuarioSQL.Add(SQL);
    Mtx.FileNameIni     := '\SOLAPO.INI';
// Inicio HPC_201501_APO     Cambio de DCOM a Socket
    Mtx.Tipo            := 'NORMAL';
// Fin  HPC_201501_APO     Cambio de DCOM a Socket
    Mtx.Execute;
    Screen.Cursor := crDefault;
  Finally
    Screen.Cursor := crHourGlass;
    FToolCamOpe.Free;
    DM1.cdsUSES.Close;
    Mtx.Free;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFPrincipal.PegaPanelToolCaptaApo(Sender: TObject);
var
  pg : TPanel;
  pl : TPanel;
begin
  pg := FToolCaptaAporte.pnlTool;
  pl := TMant(Sender).FMant.pnlBtns;
  pl.Height   := pg.Height + 5;
  pl.AutoSize := True;
  pg.Parent   := TMant(Sender).FMant.pnlBtns;
  pg.Align    := alClient;
  TMant(Sender).FMant.pnlBtns.Visible  := True;
end;

procedure TFPrincipal.PegaPanelToolCI(Sender: TObject);
var
  pg : TPanel;
  pl : TPanel;
begin
  pg := FPToolCtaInd.pnlTool;
  pl := TMant(Sender).FMant.pnlBtns;
  pl.Height   := pg.Height + 5;
  pl.AutoSize := True;
  pg.Parent   := TMant(Sender).FMant.pnlBtns;
  pg.Align    := alClient;
  TMant(Sender).FMant.pnlBtns.Visible  := True;
end;

procedure TFPrincipal.ToolAsoCtaInd(Sender: TObject);
var
  pg : TPanel;
  pl : TPanel;
begin
  pg := FAsoCtaInd.pnlTool;
  pl := TMant(Sender).FMant.pnlBtns;
  pl.Height   := pg.Height + 5;
  pl.AutoSize := True;
  pg.Parent   := TMant(Sender).FMant.pnlBtns;
  pg.Align    := alClient;
  TMant(Sender).FMant.pnlBtns.Visible  := True;
end;

procedure TFPrincipal.PegaPanelDev(Sender: TObject);
var
  pg : TPanel;
  pl : TPanel;
begin
  pg := FToolDev.pnlTool;
  pl := TMant(Sender).FMant.pnlBtns;
  pl.Height   := pg.Height + 5;
  pl.AutoSize := True;
  pg.Parent   := TMant(Sender).FMant.pnlBtns;
  pg.Align    := alClient;
  TMant(Sender).FMant.pnlBtns.Visible := True;
end;

procedure TFPrincipal.PanelToolRepDev(Sender: TObject);
var
  pl, pg : TPanel;
begin
  pg := FToolRepDev.pnlBot;
  pl := TMant(Sender).FMant.pnlBtns;
  pl.AutoSize := True;
  pg.Align    := alClient;
  pg.Parent   := TMant(Sender).FMant.pnlBtns;
  pl.Height   := pg.Height + 5;
  TMant(Sender).FMant.pnlBtns.Visible := True;
end;

procedure TFPrincipal.ListaComponentes( xForm : TForm);
var
  i : integer;
begin
   for i:=0 to xForm.ComponentCount-1 do begin

      if xForm.Components[i].ClassName = 'TPanel' then
         TPanel(xForm.components[i]).OnMouseMove := MueveMouse;
      // para botones
      if xForm.Components[i].ClassName = 'TButton' then
         TButton(xForm.components[i]).OnMouseMove := MueveMouse;
      // para bitbuttons
      if xForm.Components[i].ClassName = 'TBitBtn' then
         TBitBtn(xForm.components[i]).OnMouseMove := MueveMouse;
      // para speedbuttons
      if xForm.Components[i].ClassName = 'TSpeedButton' then
         TSpeedButton(xForm.components[i]).OnMouseMove := MueveMouse;
      // Boton de Grid
      if xForm.Components[i].ClassName = 'TwwIButton' then
         TwwIButton(xForm.components[i]).OnMouseMove := MueveMouse;

      // para la forma
      xForm.onMouseMove := MueveMouse;
   end;
end;

procedure TFPrincipal.CreaAccesos;
begin
// Inicio HPC_201501_APO     Cambio de DCOM a Socket
{   IF FMantAcceso<>nil then Exit;

   FMantAcceso:=TFMantAcceso.Create(Self);

   FMantAcceso.sSRV_D:=SRV_D;
   FMantAcceso.wDCOM1       :=DM1.DCOM1;
   FMantAcceso.wcdsAcceso   :=DM1.cdsAcceso;
   FMantAcceso.wcdsGrupos   :=DM1.cdsGrupos;
   FMantAcceso.wcdsMGrupo   :=DM1.cdsMGrupo;
   FMantAcceso.wcdsUsuarios :=DM1.cdsUsuarios;
   FMantAcceso.wcdsResultSet:=DM1.cdsResultSet;
   FMantAcceso.wcdsUser     :=DM1.cdsUser;
   FMantAcceso.wFPrincipal  :=FPrincipal;
   FMantAcceso.sModulo      :=DM1.wModulo;

   With FMantAcceso Do
    Try
     ShowModal;
    Finally
     DM1.wGrupoTmp:=FMantAcceso.sGrupoTmp;
     Free;
    End;
   FMantAcceso:=nil;  }
// Fin  HPC_201501_APO     Cambio de DCOM a Socket
end;

procedure TFPrincipal.CreaOpciones;
begin
// Inicio HPC_201501_APO     Cambio de DCOM a Socket
{   IF FMantOpcion <> nil then Exit;

   FMantOpcion:=TFMantOpcion.Create(Self);
   FMantOpcion.wcdsAcceso:=DM1.cdsAcceso;
   FMantOpcion.wcdsGrupos:=DM1.cdsGrupos;
   FMantOpcion.wcdsMGrupo:=DM1.cdsMGrupo;
   FMantOpcion.wcdsUsuarios:=DM1.cdsUsuarios;
   FMantOpcion.wcdsResultSet:=DM1.cdsResultSet;
   FMantOpcion.wDCOM1:=DM1.DCOM1;
   FMantOpcion.sGrupoTmp:=DM1.wGrupoTmp;
   FMantOpcion.sObjetoDescr:=DM1.wObjetoDescr;
   FMantOpcion.sObjetoForma:=DM1.wObjetoForma;
   FMantOpcion.sObjetoNombr:=DM1.wObjetoNombr;
   FMantOpcion.sModulo     :=DM1.wModulo;
   FMantOpcion.wFPrincipal :=FPrincipal;

   With FMantOpcion Do
   Try
      If Length(DM1.wGrupoTmp)>0 then begin
         ShowModal;
      end;
   Finally
      Free;
   End;

   FMantOpcion:=nil;}
// Fin  HPC_201501_APO     Cambio de DCOM a Socket
end;

Procedure TFPrincipal.MueveMouse(xObjeto: TObject; Shift: TShiftState; X,
  Y: Integer);
var
   xComponente : String;
   xForma : TForm;
begin
   xForma      := Screen.ActiveForm;
   xComponente := xForma.Name;

   If xObjeto is TForm Then
   Else
    begin
     xComponente := xComponente+'.'+TControl(xObjeto).Name;

     DM1.wObjetoForma := xForma.Name;
     DM1.wObjetoNombr := TControl(xObjeto).Name;
     If Copy(DM1.wObjetoNombr,2,1)='2' Then
      DM1.wObjetoDescr := DM1.wObjetoDesPr+' - '+TControl(xObjeto).Hint
     Else
      begin
       DM1.wObjetoDescr := TControl(xObjeto).Hint;
      end;
   end;
end;

procedure TFPrincipal.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #13 Then
    begin
     Key := #0;
     Perform(CM_DialogKey,VK_TAB,0);
    end;
end;

procedure TFPrincipal.Z1sbCamPasswClick(Sender: TObject);
var
   xSQL : String;
   xpassact, xpassnue:String;
   xdiasduracpass:Integer;
begin
   DM1.cdsUser.Close;
   DM1.cdsUser.DataRequest('SELECT * FROM TGE006 WHERE USERID='''+DM1.wUsuario+'''');
   DM1.cdsUser.Open;

   xpassact       := DM1.cdsUser.FieldByName('PASSWORD').AsString;
   xdiasduracpass := DM1.cdsUser.FieldByName('DIASDURAC_PWD').AsInteger;

// Inicio HPC_201501_APO  - Cambio de DCOM a Socket
   FCPassw := TFCPassw.Create(Self);
   FCPassw.dbeUsuario.Text := DM1.wUsuario;
   FCPassw.dbeNombre.Text := DM1.cdsUser.FieldByname('USERNOM').AsString;
   FCPassw.dbeUsuario.Text := DM1.wUsuario;
   FCPassw.sPassword := DM1.cdsUser.FieldByname('PASSWORD').AsString;
   FCPassw.sModulo := DM1.wModulo;
   FCPassw.wcdsUsuarios := DM1.cdsUser;
   Try
      FCPassw.ShowModal;
   Finally
      FCPassw.Free;
   End;
// Fin  HPC_201501_APO  - Cambio de DCOM a Socket

   xSQL := 'SELECT PASSWORD FROM TGE006 WHERE USERID = '+QuotedStr(DM1.wUsuario);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   xpassnue := DM1.cdsQry.FieldByName('PASSWORD').AsString;
   If xpassact <> xpassnue Then
   Begin
      xSql := 'UPDATE TGE006 '
             +'SET FECINI_PWD = TO_DATE(SYSDATE), '
             +'    FECFIN_PWD = TO_DATE(SYSDATE)+'+IntToStr(xdiasduracpass)
             +' WHERE USERID = '+QuotedStr(DM1.wUsuario);
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      Application.Terminate;
   End;
end;

procedure TFPrincipal.ToolAsociaCreate(Sender: TObject);
var
   pl, pg : TPanel;
begin
   pg := FToolBusq.pnlBot;
   pl := TMant(Sender).FMant.pnlBtns;
   pl.AutoSize := True;
   pg.Align    := alClient;
   pg.Parent   := TMant(Sender).FMant.pnlBtns;
   pl.Height   := pg.Height + 5;
   TMant(Sender).FMant.pnlBtns.Visible  := True;
end;

procedure TFPrincipal.Z1sbGenOficiosClick(Sender: TObject);
begin
   SacaMenu(Sender);

   DM1.Filtracds(  DM1.cdsTipDesem, 'SELECT * FROM CRE104 WHERE ACTBCO=''S''');
   with dm1.cdsTipDesem do
   begin
      Filter := '' ;
      Filtered := False ;
   end ;

   DM1.Filtracds( DM1.cdsBcos,' SELECT * FROM TGE105 WHERE BANCOPRF=''BN-'' ');
   with DM1.cdsBcos do
   begin
      Filter := '' ;
      Filtered := False ;
   end ;

   DM1.Filtracds( DM1.cdsCbcos,'SELECT * FROM TGE106');
   with DM1.cdsBcos do
   begin
      Filter := '' ;
      Filtered := False ;
   end ;

// Inicio HPC_201501_APO     Cambio de DCOM a Socket
   dm1.wModo:='';
   dm1.cdsQry1.Close;
   dm1.cdsQry1.IndexFieldNames:='';
// Fin    HPC_201501_APO     Cambio de DCOM a Socket

   MtxOfi := TMant.Create(Self);
   FTOficio    := TFTOficio.Create(Application);
   FOficioDet  := TFOficioDet.Create(self);
   Try
    MtxOfi.Admin           := DM1.wAdmin;
    MtxOfi.User            := DM1.wUsuario;
    MtxOfi.ControlGridDisp := cgdPrincipal;
    MtxOfi.TableName       := 'APO209';
    MtxOfi.ClientDataSet   := DM1.cdsOficio;
    MtxOfi.DComC           := DM1.DCOM1;
    MtxOfi.Module          := DM1.wModulo;
    MtxOfi.Titulo 	       := 'Oficios';
    MtxOfi.OnInsert        := OnInsertOficio;
    MtxOfi.OnEdit 	       := OnEditOficio;
    MtxOfi.OnDelete        := OnNoDelete;
    MtxOfi.OnCreateMant    := PegaPnlToolOf;
    MtxOfi.SectionName	   := 'ApoOficio';
    MtxOfi.FileNameIni     := '\SOLAportes.ini';
// Inicio HPC_201501_APO     Cambio de DCOM a Socket
    MtxOfi.Tipo            := 'NORMAL';
// Fin    HPC_201501_APO     Cambio de DCOM a Socket
    MtxOfi.Execute;
   Finally
    MtxOfi.Free;
    FTOficio.Free;
    FOficioDet.Free ;
   end;
end;

procedure TFPrincipal.OnInsertOficio(Sender: TObject);
  function GetLocalT: TDate;
  var
   stSystemTime : TSystemTime;
  begin
   Windows.GetLocalTime( stSystemTime );
   Result := SystemTimeToDateTime( stSystemTime );
  end;
begin

   DM1.wModo := 'A'; DM1.tFlg:='I';
   FOficioDet.BitTrans.Visible:=False;
   dm1.cdsOficio.append ;
   FOficioDet.ShowModal;

end;

procedure TFPrincipal.OnEditOficio(Sender: TObject; MantFields: TFields);
begin
   DM1.wModo := 'M';
   If Copy(DM1.cdsOficio.FieldByName('ESTADO').AsString,1,1)='E' Then FOficioDet.BitTrans.Visible:=True Else FOficioDet.BitTrans.Visible:=False;

   FOficioDet.ShowModal ;
end;

procedure TFPrincipal.PegaPnlToolOf(Sender: TObject);
var
   pg : TPanel;
   pl : TPanel;
begin
   pg := FTOficio.pnlTool;
   pl := TMant(Sender).FMant.pnlBtns;
   pl.Height   := pg.Height + 5;
   pl.AutoSize := True;
   pg.Parent   := TMant(Sender).FMant.pnlBtns;
   pg.Align    := alClient;
   TMant(Sender).FMant.pnlBtns.Visible := True;
end;

procedure TFPrincipal.PegaPanelToolOf(Sender: TObject);
var
   pg : TPanel;
   pl : TPanel;
begin
   pg := FToolOficio.pnlTool;
   pl := TMant(Sender).FMant.pnlBtns;
   pl.Height   := pg.Height + 5;
   pl.AutoSize := True;
   pg.Parent   := TMant(Sender).FMant.pnlBtns;
   pg.Align    := alClient;
   TMant(Sender).FMant.pnlBtns.Visible  := True;
end;

function TFPrincipal.VerificaVersion: Boolean;
begin
   Result := False;
   xSQL   := 'SELECT * FROM TGE600 WHERE CODIGO='''+DM1.wModulo+'''';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest( xSQL );
   DM1.cdsQry.Open;
   If lblVersion.Caption = DM1.cdsQry.FieldByName('VERSION').AsString Then
    Result := True
   Else
    begin
     ShowMessage( 'Para poder continuar, es necesario que actualice la Versión');
     DM1.DCOM1.Connected := False;
     Application.Terminate;
    end;
end;

procedure TFPrincipal.Z1sbActualizCtaIndMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   pnlFusion.visible := False;
end;

procedure TFPrincipal.Z1sbContabilizacionMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   pnlFusion.visible := False;
end;

procedure TFPrincipal.SpeedButton5MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   pnlFusion.visible := False;
end;

procedure TFPrincipal.Z1sbFusionClick(Sender: TObject);
begin
   SacaMenu(Sender);
   Screen.Cursor := crHourGlass;
   DM1.cdsUPago.Open;
   DM1.cdsUPro.Open;
   FFusion       := TFFusion.Create(Application);
//wmc xxx   FToolFusion   := TFToolFusion.Create(Self);

   Mtx := TMant.Create(Self);
   Try
    Mtx.Admin           := DM1.wAdmin;
    Mtx.User            := DM1.wUsuario;
    Mtx.Module          := DM1.wModulo;
    Mtx.DComC           := DM1.DCOM1;
    Mtx.ControlGridDisp := cgdPrincipal;
    Mtx.ClientDataSet   := DM1.cdsAso;
    Mtx.TableName       := 'APO306';
    Mtx.Titulo 	        := 'Redistribución de Unidades de Proceso';
//WMC 666    Mtx.OnCreateMant    := ToolFusionCreate;
    Mtx.OnInsert        := OnInsertFusion;
    Mtx.OnEdit 	        := OnEditFusion;
    Mtx.OnDelete        := OnDeleteFusion;
    Mtx.OnShow 	        := Nil;
    Mtx.Filter          := 'FOPCION=''R''';
    Mtx.SectionName     := 'Redistribución de Unidades de Proceso';
    Mtx.FileNameIni     := '\SolAportes.ini';
    Mtx.NoVisible.Clear;
    //Mtx.Colors.Add('ASOID;clTeal;clWhite;;;APOFDEV%=%S%;');
    //Mtx.Colors.Add('ASOID;clRed;clWhite;;;APOFRECL%=%S%AND%APOFDEV%<>%S%;');
    Screen.Cursor       := crDefault;
// Inicio HPC_201501_APO     Cambio de DCOM a Socket
    Mtx.Tipo            := 'NORMAL';
// Fin  HPC_201501_APO     Cambio de DCOM a Socket
    Mtx.Execute;
   Finally
    Mtx.Free;
    FFusion.Free;
//wmc xxx    FToolFusion.Free;
   end;
end;

procedure TFPrincipal.ToolFusionCreate(Sender: TObject);
//var
  // pl, pg : TPanel;
begin
//wmc xxx   pg := FToolFusion.pnlToolFusion;
   //pl := TMant(Sender).FMant.pnlBtns;
 //  pl.AutoSize := True;
  // pg.Align    := alClient;
 //  pg.Parent   := TMant(Sender).FMant.pnlBtns;
//   pl.Height   := pg.Height + 5;
   TMant(Sender).FMant.pnlBtns.Visible  := True;
end;

procedure TFPrincipal.OnInsertFusion(Sender: TObject);
begin
   SacaMenu(Sender);
   DM1.wModo := 'A';
  //DM1.Filtracds(DM1.cdsBcos,'SELECT * FROM TGE105 ORDER BY BANCOID');
   DM1.cdsAso.Insert;
{ wmc xxx
   If FToolFusion.rgdTFusion.ItemIndex = 0 Then
    begin
     FFusion.Width := 521;
     FFusion.pnlUProceso.Width   := 513;
     FFusion.pnlUProceso.Visible := True;
     FFusion.pnlUProceso.Align   := alClient;
     FFusion.pnlUPago.Visible    := False;
    end
   Else
    If FToolFusion.rgdTFusion.ItemIndex = 1 Then
     begin
      FFusion.Width := 521;
      FFusion.pnlUProceso.Visible := False;
      FFusion.pnlUPago.Width      := 513;
      FFusion.pnlUPago.Align      := alClient;
      FFusion.pnlUPago.Visible    := True;
     end;
}
  FFusion.ShowModal;
end;

procedure TFPrincipal.OnEditFusion(Sender: TObject; MantFields: TFields);
begin
   If DM1.cdsAso.RecordCount=0 Then
    begin
     Information(Caption, 'No Existen Registros a Editar');
     Exit;
    end;
   DM1.wModo := 'M';
   FFusion.ShowModal;
end;

procedure TFPrincipal.OnDeleteFusion(Sender: TObject; MantFields: TFields);
begin
{
   If (Trim(DM1.cdsAso.FieldbyName('ESTADO').AsString) <> 'INICIAL') Then
    begin
     ErrorMsg(Caption, 'Esta Documento de Fusion ya a Sido Aceptada, No es Posible Eliminarla');
     Exit;
    end;
   If Question('Confirmar', 'Esta Seguro de Eliminar La Fusión '+ #13+#13+
                                                    DM1.cdsAso.FieldByName('NFUSION').AsString  + '  -  '+ #13+
                                                    #13 +' Desea Continuar ') Then
    begin
     sSQL:= 'DELETE FROM APO307 WHERE TFUSION = '''+ DM1.cdsAso.FieldByName('TFUSION').AsString+''' '+
                              'AND NFUSION = '''+DM1.cdsAso.FieldByName('NFUSION').AsString+'''';
     DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
     xBorrar:= '1';
     DM1.cdsAso.Delete;
     DM1.ControlTran;
     xBorrar := '0';
    end;
}    
end;

procedure TFPrincipal.Z1sbResCobEfecClick(Sender: TObject);
begin
    Screen.Cursor := crHourGlass;
    SacaMenu(Sender);
    sSQL := 'SELECT * FROM APO102 ';
    DM1.FiltraCDS(DM1.cdsUPro, sSQL);

    FRepResCobEfec := TFRepResCobEfec.Create(Self);
    With FRepResCobEfec do
     Try
      ShowModal;
     Finally;
      Free;
     end;
    Screen.Cursor := crDefault;
end;

procedure TFPrincipal.Z1sbUnificacionClick(Sender: TObject);
begin
{     FUnificacion := TFUnificacion.CReate(self);
     try
       FUnificacion . ShowModal ;
     finally
       FUnificacion . Free ;
     end ;
}
end;

procedure TFPrincipal.Z1sbUnificacionMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  pnlFusion.Left      := pnlProcesos.Left+pnlProcesos.width;
  pnlFusion.Top       := TSpeedbutton(Sender).Top;// +(pnlProcesos.Height - TSpeedbutton(Sender).height);
  pnlFusion.Visible := True;
end;

procedure TFPrincipal.Z1sbFusionMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
   pnlFusion.visible := False;
end;

{
s}

procedure TFPrincipal.Z1sbReglasClick(Sender: TObject);
begin
   pnlReferencias.Left    := TSpeedButton(Sender).Left+10;
   pnlReferencias.Top     := TSpeedButton(Sender).Top+TSpeedButton(Sender).Height;
   pnlReferencias.Visible := True;
   pnlMaestros.Visible    := False;
   pnlMovimientos.Visible := False;
   pnlProcesos.Visible    := False;
   pnlReportes.Visible    := False;
   pnlFusion.visible      := False;
end;

procedure TFPrincipal.Z1sbMaestrosClick(Sender: TObject);
begin
   pnlMaestros.Left       := TSpeedButton(Sender).Left+10;
   pnlMaestros.Top        := TSpeedButton(Sender).Top+TSpeedButton(Sender).Height;
   pnlReferencias.Visible := False;
   pnlMaestros.Visible    := True;
   pnlMovimientos.Visible := False;
   pnlProcesos.Visible    := False;
   pnlReportes.Visible    := False;
   pnlFusion.visible      := False;
end;

procedure TFPrincipal.Z1sbMovimientosClick(Sender: TObject);
begin
   pnlMovimientos.Left    := TSpeedButton(Sender).Left+10;
   pnlMovimientos.Top     := TSpeedButton(Sender).Top+TSpeedButton(Sender).Height;
   pnlReferencias.Visible := False;
   pnlMaestros.Visible    := False;
   pnlMovimientos.Visible := True;
   pnlProcesos.Visible    := False;
   pnlReportes.Visible    := False;
   pnlFusion.visible      := False;
end;

procedure TFPrincipal.Z1sbProcesosClick(Sender: TObject);
begin
   pnlProcesos.Left       := TSpeedButton(Sender).Left+10;
   pnlProcesos.Top        := TSpeedButton(Sender).Top+TSpeedButton(Sender).Height;
   pnlReferencias.Visible := False;
   pnlMaestros.Visible    := False;
   pnlMovimientos.Visible := False;
   pnlProcesos.Visible    := True;
   pnlReportes.Visible    := False;
   pnlFusion.visible      := False;
end;

procedure TFPrincipal.Z1sbReportesClick(Sender: TObject);
begin
   pnlReportes.Left       := TSpeedButton(Sender).Left+10;
   pnlReportes.Top        := TSpeedButton(Sender).Top+TSpeedButton(Sender).Height;
   pnlReferencias.Visible := False;
   pnlMaestros.Visible    := False;
   pnlMovimientos.Visible := False;
   pnlProcesos.Visible    := False;
   pnlReportes.Visible    := True;
   pnlFusion.Visible      := False;
end;

procedure TFPrincipal.Z1sbAsocResClick(Sender: TObject);
begin
   SacaMenu(Sender);
   fconres := tfconres.Create(self);
   Try
    fconres.ShowModal;
   Finally
    fconres.Free;
   end;
end;

procedure TFPrincipal.Z1sbAsocSinResClick(Sender: TObject);
begin
   SacaMenu(Sender);
   fsinres := tfsinres.Create(self);
   Try
    fsinres.ShowModal;
   Finally
    fsinres.Free;
   end;
end;

procedure TFPrincipal.Z1sbNumApoClick(Sender: TObject);
begin
   SacaMenu(sender);
   Try
    FrmNumApor := TfrmNumApor.Create(Self);
    Screen.Cursor := crHourGlass;
    FrmNumApor.ShowModal;
   Finally
    frmNumApor.Free ;
    Screen.Cursor := crDefault;
   end;
end;



procedure TFPrincipal.Z1sbRecApoDptoClick(Sender: TObject);
begin
   SacaMenu(sender);
   Try
    FrmRecApo:=TFrmRecApo.Create(Self);
    FrmRecApo.ShowModal;
   Finally
    FrmRecApo.Free;
   end;
end;

procedure TFPrincipal.Z1sbVarios1Click(Sender: TObject);
begin
   SacaMenu(Sender);
   FDifApoVig2 := TFDifApoVig2.Create(Self);
   Try
    FDifApoVig2.ShowModal;
   Finally
    FDifApoVig2.Free ;
   end ;
end;

procedure TFPrincipal.Z1sbVarios2Click(Sender: TObject);
begin
   SacaMenu(Sender);
   FAporxDpto := TFAporxDpto.Create(Self);
   Try
    FAporxDpto.ShowModal;
   Finally
    FAporxDpto.Free ;
   end ;
end;

procedure TFPrincipal.Z1sbVarios3Click(Sender: TObject);
begin
   SacaMenu(Sender);
   FRecApoxDpto := TFRecApoxDpto.Create(Self);
   Try
    FRecApoxDpto.ShowModal;
   Finally
    FRecApoxDpto.Free ;
   end ;
end;

procedure TFPrincipal.Z1sbVariosMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  pnlVarios.Left    := pnlReportes.Left-pnlVarios.Width;
  pnlVarios.Top     := TSpeedButton(Sender).Top+TSpeedButton(Sender).Height+10;
  pnlVarios.Visible := True;
end;

procedure TFPrincipal.Z1sbRepCaptaAportesMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  pnlVarios.Visible := False;
end;

procedure TFPrincipal.Z1sbRepEstadoCtaMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  pnlVarios.Visible := False;
end;

procedure TFPrincipal.OnInsertDevolucion(Sender: TObject);
begin
   DM1.wModo := 'A';
//WMC
   DM1.Filtracds(  DM1.cdsAsociados, 'SELECT * FROM APO201 WHERE 1 = 0');
   FDevolucionAportes.ShowModal;
end;

procedure TFPrincipal.Z1sbCobEfectivoClick(Sender: TObject);
begin
  SacaMenu(Sender);
  Try
    FRangoFechas := TFRangoFechas.Create(Self);
    FRangoFechas.showmodal;
  Finally
    FRangoFechas.free;
  end;
end;

procedure TFPrincipal.Z1sbRepCaptaAportesMouseMove2(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  pnlVarios.Visible := False;
end;

procedure TFPrincipal.Z1sbControlReclamosClick(Sender: TObject);
begin
  SacaMenu(Sender);
  Try
    FControlReclamos := TFControlReclamos.Create(Self);
    FControlReclamos.showmodal;
  Finally
    FControlReclamos.free;
  end;
end;

procedure TFPrincipal.Z1sbCambioUPagoClick(Sender: TObject);
begin
   SacaMenu(Sender);
   Screen.Cursor := crHourGlass;
   DM1.cdsUPago.Open;
   DM1.cdsUPro.Open;
   FCambioUPago       := TFCambioUPago.Create(Application);

   Mtx := TMant.Create(Self);
   Try
    Mtx.Admin           := DM1.wAdmin;
    Mtx.User            := DM1.wUsuario;
    Mtx.Module          := DM1.wModulo;
    Mtx.DComC           := DM1.DCOM1;
    Mtx.ControlGridDisp := cgdPrincipal;
    Mtx.ClientDataSet   := DM1.cdsAso;
    Mtx.TableName       := 'APO306';
    Mtx.Titulo 	        := 'Cambio de Unidades de Pago';
    Mtx.OnInsert        := OnInsertFusion2;
    Mtx.OnEdit 	        := OnEditFusion2;
    Mtx.OnDelete        := OnDeleteFusion2;
    Mtx.OnShow 	        := Nil;
    Mtx.Filter          := 'FOPCION=''U''';
    Mtx.SectionName     := 'Cambio de Unidades de Pago';
    Mtx.FileNameIni     := '\SolAportes.ini';
    Mtx.NoVisible.Clear;
    Screen.Cursor       := crDefault;
// Inicio HPC_201501_APO     Cambio de DCOM a Socket
    Mtx.Tipo            := 'NORMAL';
// Fin  HPC_201501_APO     Cambio de DCOM a Socket
    Mtx.Execute;
   Finally
    Mtx.Free;
    FCambioUPago.Free;
   end;
end;

procedure TFPrincipal.OnDeleteFusion2(Sender: TObject;
  MantFields: TFields);
begin

end;

procedure TFPrincipal.OnEditFusion2(Sender: TObject; MantFields: TFields);
begin
   If DM1.cdsAso.RecordCount=0 Then
    begin
     Information(Caption, 'No Existen Registros a Editar');
     Exit;
    end;
   DM1.wModo := 'M';
   FCambioUPago.ShowModal;
end;

procedure TFPrincipal.OnInsertFusion2(Sender: TObject);
begin
   SacaMenu(Sender);
   DM1.wModo := 'A';
   DM1.cdsAso.Insert;
   FCambiouPago.ShowModal;

end;

procedure TFPrincipal.Z1sbVariosClick(Sender: TObject);
begin
  pnlVarios.Left    := pnlReportes.Left-pnlVarios.Width;
  pnlVarios.Top     := TSpeedButton(Sender).Top+TSpeedButton(Sender).Height+10;
  pnlVarios.Visible := True;
end;

procedure TFPrincipal.Z1SbRepoDevApoClick(Sender: TObject);
begin
  SacaMenu(Sender);
  Try

// Inicio HPC_201501_APO     Cambio de DCOM a Socket
    dm1.cdsQry2.Close;
    dm1.cdsQry2.indexfieldnames:='';
// Fin  HPC_201501_APO     Cambio de DCOM a Socket

    FRepDevApo := TFRepDevApo.Create(Self);
    FRepDevApo.showmodal;
  Finally
    FRepDevApo.free;
  end;
end;

procedure TFPrincipal.SpeedButton1Click(Sender: TObject);
begin
  SacaMenu(Sender);
  Try
    FRepEstRecaudacion := TFRepEstRecaudacion.Create(Self);
    FRepEstRecaudacion.showmodal;
  Finally
    FRepEstRecaudacion.free;
  end;

end;

procedure TFPrincipal.SpeedButton3Click(Sender: TObject);
begin
  SacaMenu(Sender);
  Try
    FRepAnuUsu := TFRepAnuUsu.Create(Self);
    FRepAnuUsu.showmodal;
  Finally
    FRepAnuUsu.free;
  end;
end;

Procedure TFPrincipal.sbaponopagDblClick(Sender: TObject);
Begin
  SacaMenu(Sender);
  Try
    FRepEstRecaudacion := TFRepEstRecaudacion.Create(Self);
    FRepEstRecaudacion.showmodal;
  Finally
    FRepEstRecaudacion.free;
  End;
End;

Procedure TFPrincipal.sbaponopagClick(Sender: TObject);
Begin
  // aportes no pagados
  SacaMenu(Sender);
  Try
    FAponoPag := TFAponoPag.Create(Self);
    FAponoPag.showmodal;
  Finally
    FAponoPag.free;
  end;
End;

Procedure TFPrincipal.SpeedButton7Click(Sender: TObject);
Begin
  SacaMenu(Sender);
  Try
    FDifApo := TFDifApo.Create(Self);
    FDifApo.showmodal;
  Finally
    FDifApo.free;
  End;
End;


Procedure TFPrincipal.sbBeneficiosClick(Sender: TObject);
Begin
  SacaMenu(Sender);
  Try
    FCobBen := TFCobBen.Create(Self);
    FCobBen.showmodal;
  Finally
    FCobBen.free;
  End;
End;

procedure TFPrincipal.PegaPanelToolDevApo(Sender: TObject);
var
  pg : TPanel;
  pl : TPanel;
begin
  pg := FToolDev.pnlTool;
  pl := TMant(Sender).FMant.pnlBtns;
  pl.Height   := pg.Height + 5;
  pl.AutoSize := True;
  pg.Parent   := TMant(Sender).FMant.pnlBtns;
  pg.Align    := alClient;
  TMant(Sender).FMant.pnlBtns.Visible  := True;
end;

Procedure TFPrincipal.sbestcueapoClick(Sender: TObject);
Begin
  // Estado de cuenta de aportes
  SacaMenu(Sender);
  Try
    Festcueapo := TFestcueapo.Create(Self);
    Festcueapo.showmodal;
  Finally
    Festcueapo.free;
  End;
End;

Procedure TFPrincipal.sbgesapoClick(Sender: TObject);
Begin
  // Gestion de aportes
  SacaMenu(Sender);
  Try
// Inicio HPC_201501_APO  - Cambio de DCOM a Socket
    DM1.cdsQry4.Close;
// Fin  HPC_201501_APO  - Cambio de DCOM a Socket

    Fgesapomod := TFgesapomod.Create(Self);
    Fgesapomod.showmodal;
   Finally
    Fgesapomod.free;
   End;
End;

procedure TFPrincipal.SpeedButton2Click(Sender: TObject);
begin
 // Gestion de aportes
  SacaMenu(Sender);
  Try
    Fgesnoapolot := TFgesnoapolot.Create(Self);
    Fgesnoapolot.showmodal;
   Finally
    Fgesnoapolot.free;
   End;
end;

procedure TFPrincipal.SpeedButton4Click(Sender: TObject);
begin
 SacaMenu(Sender);
  Try
    FEstapoxforpag := TFEstapoxforpag.Create(Self);
    FEstapoxforpag.showmodal;
  Finally
    FEstapoxforpag.free;
  end;
end;

procedure TFPrincipal.SpeedButton5Click(Sender: TObject);
begin
 // Aportes
 SacaMenu(Sender);
 Try
   Faporeg := TFaporeg.Create(Self);
   Faporeg.showmodal;
 Finally
    Faporeg.free;
 end;


end;

procedure TFPrincipal.SpeedButton6Click(Sender: TObject);
begin
// por años
  SacaMenu(Sender);
  Try
    fRepApoDepBanc := TfRepApoDepBanc.Create(Self);
    fRepApoDepBanc.showmodal;
  Finally
    fRepApoDepBanc.free;
 end;
end;

procedure TFPrincipal.sbPagApoEfeClick(Sender: TObject);
Begin
  SacaMenu(Sender);
  Try
    Fcobefeapo := TFcobefeapo.Create(Self);
    Fcobefeapo.showmodal;
  Finally
    Fcobefeapo.free;
  End;
End;

procedure TFPrincipal.SpeedButton8Click(Sender: TObject);
begin
  SacaMenu(Sender);
  Try
    fcuerecapo := Tfcuerecapo.Create(Self);
    fcuerecapo.showmodal;
  Finally
    fcuerecapo.free;
 end;
end;

(******************************************************************************)
procedure TFPrincipal.Verpercadpas;
Var
   xSql:String;
   xfecfin :TDate;
   xdiasexppass, xdiasduracpass:Integer;
   xdiasfaltantes:Integer;
   xpassact, xpassnue:String;
begin
   {xSql := 'SELECT TO_DATE(FECINI_PWD) FECINI_PWD, '
          +'       TO_DATE(FECFIN_PWD) FECFIN_PWD, '
          +'       DIASEXP_PWD, DIASDURAC_PWD, PASSWORD '
          +'FROM TGE006 WHERE USERID = '+QuotedStr(DM1.wUsuario);}

   //Cambio realizado por JCarbonel - 12/11/2008
   xSql := 'SELECT TO_DATE(nvl(FECINI_PWD,sysdate)) FECINI_PWD, '
          +'       TO_DATE(nvl(FECFIN_PWD,sysdate+30)) FECFIN_PWD, '
          +'       nvl(DIASEXP_PWD,7) DIASEXP_PWD, '
          +'       nvl(DIASDURAC_PWD,30) DIASDURAC_PWD, PASSWORD '
          +'FROM TGE006 WHERE USERID = '+QuotedStr(DM1.wUsuario);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   xfecfin        := DM1.cdsQry.FieldByName('FECFIN_PWD').AsDateTime;
   xdiasexppass   := DM1.cdsQry.FieldByName('DIASEXP_PWD').AsInteger;
   xdiasduracpass := DM1.cdsQry.FieldByName('DIASDURAC_PWD').AsInteger;
   xpassact       := DM1.cdsQry.FieldByName('PASSWORD').AsString;
   xSql := 'SELECT TO_DATE('+QuotedStr(DateToStr(xfecfin))+') - TO_DATE(SYSDATE) DIASFALTANTE FROM DUAL';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   xdiasfaltantes := DM1.cdsQry.FieldByName('DIASFALTANTE').AsInteger; // dias que faltan
   if xdiasfaltantes <= xdiasexppass Then
   Begin
      if xdiasfaltantes<=0 then
         MessageDlg('SU PASSWORD HA CADUCADO, DEBE CAMBIARLA AHORA', mtCustom, [mbOk], 0)
      else
         if xdiasfaltantes=1 then
            MessageDlg('*** FALTA 1 DíA PARA EL VENCIMIENTO DE SU PASSWORD. ***'#13'                            SE SUGIERE CAMBIARLA AHORA', mtCustom, [mbOk], 0)
         else
            MessageDlg('*** FALTAN '+IntToStr(xdiasfaltantes)+' DÍAS PARA EL VENCIMIENTO DE SU PASSWORD. ***'#13'                            SE SUGIERE CAMBIARLA AHORA', mtCustom, [mbOk], 0);
      DM1.cdsUser.Close;
      DM1.cdsUser.DataRequest('SELECT * FROM TGE006 WHERE USERID='''+DM1.wUsuario+'''');
      DM1.cdsUser.Open;

// Inicio: HPC_201501_PRE - Cambio de DCOM a Socket
      FCPassw := TFCPassw.Create(Self);
      FCPassw.dbeUsuario.Text := DM1.wUsuario;
      FCPassw.dbeNombre.Text := DM1.cdsUser.FieldByname('USERNOM').AsString;
      FCPassw.dbeUsuario.Text := DM1.wUsuario;
      FCPassw.sPassword := DM1.cdsUser.FieldByname('PASSWORD').AsString;
      FCPassw.sModulo := DM1.wModulo;
      FCPassw.wcdsUsuarios := DM1.cdsUser;
      Try
         FCPassw.ShowModal;
      Finally
         FCPassw.Free;
      End;
// Fin: HPC_201501_PRE - Cambio de DCOM a Socket

      xSql := 'SELECT PASSWORD FROM TGE006 WHERE USERID = '+QuotedStr(DM1.wUsuario);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      xpassnue := DM1.cdsQry.FieldByName('PASSWORD').AsString;
      If xpassact <> xpassnue Then
      Begin
         xSql := 'UPDATE TGE006 '
                +'SET FECINI_PWD = TO_DATE(SYSDATE), '
                +'    FECFIN_PWD = TO_DATE(SYSDATE)+'+IntToStr(xdiasduracpass)
                +' WHERE USERID = '+QuotedStr(DM1.wUsuario);
         DM1.DCOM1.AppServer.EjecutaSQL(xSql);
         Application.Terminate;
      End;
      If xdiasfaltantes <= 0 Then Application.Terminate;
   End // if xdiasfaltantes <= xdiasexppass
   Else
      If xdiasfaltantes <= 0 Then Application.Terminate;
end;
(******************************************************************************)
procedure TFPrincipal.BloquearMenuPrincipal();
var xSQL,xComponente,x,y:String;
    i:Integer;
begin
    for i := 0 To self.ComponentCount-1 do begin
       if (self.Components[i].ClassName = 'TSpeedButton') Then
          Begin
            TEdit(self.Components[i]).Enabled  := false;
          End;
    End;

   Z1sbReglas.Enabled:=true;
   Z1sbMaestros.Enabled:=true;
   Z1sbMovimientos.Enabled:=true;
   Z1sbProcesos.Enabled:=true;
   Z1sbReportes.Enabled:=true;
   Z1sbSalida.Enabled:=true;

end;
(******************************************************************************)
procedure TFPrincipal.Z1sbRepAportxDptoUgelClick(Sender: TObject);
begin
  SacaMenu(Sender);
  Try
    FRptAportes := TFRptAportes.Create(Self);
    FRptAportes.showmodal;
  Finally
    FRptAportes.free;
  End;
end;

Initialization
  registerclasses([TLabel, TBevel, TppLabel]);
end.

