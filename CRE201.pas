unit CRE201;

// Inicio Uso Estándares: 01/08/2011
// Unidad               : CRE201
// Formulario           : FAsociados
// Fecha de Creación    : 15/12/2003
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Mantenimiento de Asociados
// Actualizaciones      :
// HPC_201501_APO       : 06/01/2015 - Cambio de DCOM a Socket

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, Wwdbigrd, Grids, Wwdbgrid, wwdbdatetimepicker, ComCtrls,
  Tabnotbk, wwdblook, StdCtrls, Mask, wwdbedit, Wwdbdlg, ExtCtrls, fcLabel,
  DBCtrls, fcButton, fcImgBtn, fcShapeBtn,Wwdbcomb,Wwdotdot,Db, dbiProcs,
  dbclient, wwclient, DBGrids, mant, fcpanel;


type
  TFAsociados = class(TForm)
    Panel1: TPanel;
    fcLabel1: TfcLabel;
    Bevel1: TBevel;
    pnlTool: TPanel;
    Z2sbtnFirma: TfcShapeBtn;
    Z2sbtnSitu: TfcShapeBtn;
    Z2sbtnCtasBanc: TfcShapeBtn;
    Z2sbtnResol: TfcShapeBtn;
    Z2sbtnAportes: TfcShapeBtn;
    Z2sbtnDFam: TfcShapeBtn;
    Z2sbtnDLab: TfcShapeBtn;
    pnlInicio: TPanel;
    lblCodigoDM: TLabel;
    lblCodigoMod: TLabel;
    dbeCodMod: TwwDBEdit;
    dbeCodigo: TwwDBEdit;
    dblcdCodigo: TwwDBLookupComboDlg;
    dblcdCodMod: TwwDBLookupComboDlg;
    pnlNomTrab: TPanel;
    pnlTrab: TPanel;
    pcAsociados: TPageControl;
    tsDPer: TTabSheet;
    tsDDom: TTabSheet;
    tsDLab: TTabSheet;
    Z2sbtnAceptar: TfcShapeBtn;
    Z2sbtnCancelar: TfcShapeBtn;
    lblApePat: TLabel;
    dbeApePaterno: TwwDBEdit;
    dbeApeMaterno: TwwDBEdit;
    lblApeMat: TLabel;
    dbeNombres: TwwDBEdit;
    lblNombres: TLabel;
    dblcSituacion: TwwDBLookupCombo;
    lblSituacion: TLabel;
    edtSituacion: TEdit;
    lblTipoAsociado: TLabel;
    dblcTipo: TwwDBLookupCombo;
    edtTipoAso: TEdit;
    lblUnidadProceso: TLabel;
    edtUProceso: TEdit;
    dblcUSE: TwwDBLookupCombo;
    lblUSE: TLabel;
    edtUSE: TEdit;
    dbeNroDNI: TwwDBEdit;
    lblDNI: TLabel;
    lblNomTot: TLabel;
    dbeNombre: TwwDBEdit;
    dbdtpFechaNac: TwwDBDateTimePicker;
    lblFNac: TLabel;
    dblcSexo: TwwDBLookupCombo;
    lblSexo: TLabel;
    edtSexo: TEdit;
    lblEstCivil: TLabel;
    dblcEstCivil: TwwDBLookupCombo;
    edtEstCivil: TEdit;
    edtNacionalidad: TEdit;
    dblcdNacionalidad: TwwDBLookupComboDlg;
    lblNacionalidad: TLabel;
    edtLugarNac: TEdit;
    dblcLugarNac: TwwDBLookupComboDlg;
    lblLugNac: TLabel;
    lblTipDocIdent: TLabel;
    dblcTipoDoc: TwwDBLookupCombo;
    edtTipoDoc: TEdit;
    dbeNroDoc: TwwDBEdit;
    lblNroDocId: TLabel;
    dbeNroLibM: TwwDBEdit;
    lblLibMilitar: TLabel;
    dbeNroRUC: TwwDBEdit;
    lblRUC: TLabel;
    dbeemail: TwwDBEdit;
    lblEMail: TLabel;
    lblCodigoPago: TLabel;
    dbeCodigoPago: TwwDBEdit;
    dblcUPago: TwwDBLookupCombo;
    lblUnidadPago: TLabel;
    edtUPago: TEdit;
    dbeResolucion: TwwDBEdit;
    lblResolucion: TLabel;
    dbdtpFecha: TwwDBDateTimePicker;
    lblFechaPago: TLabel;
    Z2sbtnNuevo: TfcShapeBtn;
    dblcRTipResol: TwwDBLookupCombo;
    edtResolDescrip: TEdit;
    lblRegimen: TLabel;
    dblcRegimen: TwwDBLookupCombo;
    edtRegimen: TEdit;
    dblcdBco: TwwDBLookupCombo;
    edtBanco: TEdit;
    Label1: TLabel;
    nroCta: TwwDBEdit;
    TabSheet1: TTabSheet;
    dblcGradoIns: TwwDBLookupCombo;
    lblGradoInst: TLabel;
    edtGradoIns: TEdit;
    lblGradoAc: TLabel;
    dblcGradoAcad: TwwDBLookupCombo;
    edtGradoAcad: TEdit;
    lblProfesion: TLabel;
    dblcdProfesion: TwwDBLookupComboDlg;
    edtProfesion: TEdit;
    Label2: TLabel;
    dbeInstitucion: TwwDBEdit;
    dbdtpFecTermino: TwwDBDateTimePicker;
    Label4: TLabel;
    dbeTiempo: TwwDBEdit;
    Label3: TLabel;
    Label5: TLabel;
    Z2sbtnDSocioE: TfcShapeBtn;
    Label6: TLabel;
    dblcdSit: TwwDBLookupCombo;
    edtSitCtaBco: TEdit;
    lblTipoVia: TLabel;
    lblNomVia: TLabel;
    lblNroCasa: TLabel;
    lblNroDpto: TLabel;
    lblDistrito: TLabel;
    lblNomZona: TLabel;
    lblTipoZona: TLabel;
    lblDireccion: TLabel;
    lblTelf1: TLabel;
    lblTelf2: TLabel;
    lblDepartamento: TLabel;
    lblProvincia: TLabel;
    lblRefDomic: TLabel;
    dblcTipoVia: TwwDBLookupCombo;
    edtTipoVia: TEdit;
    dbeNombreVia: TwwDBEdit;
    dbeNroDireccion: TwwDBEdit;
    dbeDpto: TwwDBEdit;
    edtDistrito: TEdit;
    dblcdDistrito: TwwDBLookupComboDlg;
    dbeNombreZona: TwwDBEdit;
    edtZona: TEdit;
    dblcTipoZona: TwwDBLookupCombo;
    dbeDireccion: TwwDBEdit;
    dbeTelefono1: TwwDBEdit;
    dbeTelefono2: TwwDBEdit;
    dblcdDepto: TwwDBLookupComboDlg;
    edtDepto: TEdit;
    dblcdCiudad: TwwDBLookupComboDlg;
    edtProvincia: TEdit;
    dbeReferencia: TwwDBEdit;
    edtUbigeo: TwwDBEdit;
    Label7: TLabel;
    dblcdUProceso: TwwDBLookupComboDlg;
    dblcUProceso: TwwDBLookupCombo;
    Z2sbtnMarcar: TfcShapeBtn;
    fcgbNroDni: TfcGroupBox;
    dbgDniRep: TwwDBGrid;
    BitBtn1: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dblcSituacionExit(Sender: TObject);
    procedure dblcTipoExit(Sender: TObject);
    procedure dblcUSEExit(Sender: TObject);
    procedure dblcUPagoExit(Sender: TObject);
    procedure dblcUProcesoExit(Sender: TObject);
    procedure dblcRegimenExit(Sender: TObject);
    procedure dblcEstCivilExit(Sender: TObject);
    procedure dblcTipoDocExit(Sender: TObject);
    procedure dblcLugarNacExit(Sender: TObject);
    procedure dblcdNacionalidadExit(Sender: TObject);
    procedure dblcGradoAcadExit(Sender: TObject);
    procedure dblcGradoInsExit(Sender: TObject);
    procedure dblcdProfesionExit(Sender: TObject);
    procedure dblcTipoViaExit(Sender: TObject);
    procedure dblcTipoZonaExit(Sender: TObject);
    procedure dblcdDistritoExit(Sender: TObject);
    procedure dblcdCiudadExit(Sender: TObject);
    procedure dblcdDeptoExit(Sender: TObject);
    procedure Z2sbtnDLabClick(Sender: TObject);
    procedure Z2sbtnDFamClick(Sender: TObject);
    procedure Z2sbtnAportesClick(Sender: TObject);
    procedure Z2sbtnResolClick(Sender: TObject);
    procedure Z2sbtnCtasBancClick(Sender: TObject);
    procedure Z2sbtnSituClick(Sender: TObject);
    procedure Z2sbtnFirmaClick(Sender: TObject);
    procedure Z2sbtnAceptarClick(Sender: TObject);
    procedure Z2sbtnNuevoClick(Sender: TObject);
    procedure Z2sbtnCancelarClick(Sender: TObject);
    procedure dblcNotInList(Sender: TObject; LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
    procedure dblcSexoExit(Sender: TObject);
    procedure dbeNombresExit(Sender: TObject);
    procedure dblcdCodigoExit(Sender: TObject);
    procedure dblcdCodModExit(Sender: TObject);
    procedure dbeApeMaternoExit(Sender: TObject);
    procedure dbeApePaternoExit(Sender: TObject);
    procedure dblcRTipResolExit(Sender: TObject);
    procedure dbeNroDNIExit(Sender: TObject);
    procedure dblcdCodigoCloseUp(Sender: TObject; LookupTable, FillTable: TDataSet; modified: Boolean);
    procedure dbeNroRUCExit(Sender: TObject);
    procedure Z2sbtnDSocioEClick(Sender: TObject);
    procedure dblcdBcoExit(Sender: TObject);
    procedure dblcdSitExit(Sender: TObject);
    procedure dbeNombreViaExit(Sender: TObject);
    procedure dbeNroDireccionExit(Sender: TObject);
    procedure dbeDptoExit(Sender: TObject);
    procedure dbeNroDNIKeyPress(Sender: TObject; var Key: Char);
    procedure dbeNroDocExit(Sender: TObject);
    procedure dbeCodModKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Z2sbtnMarcarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    xOfides : STring;
    xHallo : String; //** N = cuando no encuentra el Directorio; S = Cuando encuentra el Directorio    
    xArchivo,xOfcDirec : String;
    wRutaFTPPri : WideString;
    MtxAportes : TMant;
    xCorreWhere,xCorreWherex,xCorreWherey : String; //** Where solo para el correlativo del Crédito
    xCorre : String; //** para el correlativo del numero de crédito
    xPaso : Boolean; //** True = el correlativo es valido
    xCorreCadena,xTipocorre,xCorreASOID,xCorreCampo,xArea,xTabla,xEstid,xEstado,xCreano,xCremes : String;
    xCeros : Integer;
    xVia,xNomv,xNro,xDpa : String;

    procedure CorreCred(pCorre : String); //** para el correlativo del numero del crédito
    Procedure BuscaCorre; //** para constatar que nop exista el numero del crédito
    procedure  Correlativo; //** llama a CorreCred y BuscaCorre

     function ValidaPrincipalAso:Boolean;
     function ValidaDatosPerAso:Boolean;
     function ValidaDomicilioAso:Boolean;
     //function ValidaLaboralesAso:Boolean;
     Procedure LimpiaEdits;
     procedure CargaMarca;
     procedure BuscaArchivos;
     procedure CambiaDirecFTP(pNombre : String);
  public
    { Public declarations }
     wNuevo,xSQL,vSQL,sSQL,xwhere:string;
     Procedure DisplayDescrips;
  end;

var
  FAsociados: TFAsociados;
	wNomAnt : String;

implementation

uses APODM,MsgDlgs, CRE206, CRE223, CRE222, CRE224, CRE209,
  CRE207, CRE225, APO001;
{$R *.DFM}

function TFAsociados.ValidaPrincipalAso:Boolean;
begin
  result:=False;
  //*** Princiapal
  If length(dbeCodigo.Text)=0 Then
  Begin
    ShowMessage('Registre Código del Asociado');
    If DM1.wModo='M' then
      dblcdCodigo.SetFocus
    else
      dbeCodigo.SetFocus;
    exit;
  End;
  If length(dbeCodMod.Text)=0 Then
  Begin
    ShowMessage('Registre el Código Modular del Asociado');
    If DM1.wModo='M' then dblcdCodMod.SetFocus
    else dbeCodMod.SetFocus;
    exit;
  End;
  If length(dbeApePaterno.Text)=0 Then
  Begin
    ShowMessage('Registre el Apellido Paterno del Asociado');
    dbeApePaterno.SetFocus;
    exit;
  End;
  If length(dbeApeMaterno.Text)=0 Then
  Begin
    ShowMessage('Registre el Apellido Materno del Asociado');
    dbeApeMaterno.SetFocus;
    exit;
  End;
  If length(dbeNombres.Text)=0 Then
  Begin
    ShowMessage('Registre los Nombres del Asociado');
    dbeNombres.SetFocus;
    exit;
  End;

  {If length(edtSituacion.Text)=0 Then Begin
    ShowMessage('Seleccione la Situación del Asociado');
    dblcSituacion.SetFocus;
    exit;
  End;

  If length(edtTipoAso.Text)=0 Then Begin
    ShowMessage('Seleccione el Tipo del Asociado');
    dblcTipo.SetFocus;
    exit;
  End;}

  {If length(edtUProceso.Text)=0 Then Begin
    ShowMessage('Seleccione la Unidad de Proceso');
    dblcUProceso.SetFocus;
    exit;
  End;
  If length(edtUSE.Text)=0 Then Begin
    ShowMessage('Seleccione la USE');
    dblcUSE.SetFocus;
    exit;
  End;}

  //*************************
  {If dblcdNacionalidad.Text= '01' then
  begin
    If length(dbeNroDNI.Text)=0 Then
    Begin
      If length(edtTipoDoc.Text)=0 Then
      Begin
        ShowMessage('Registre el Número de D.N.I. o L.E. ');
        dbeNroDNI.SetFocus;
        exit;
      End
      Else
      Begin
        If length(dbeNroDoc.Text)=0 Then
        Begin
          ShowMessage('Registre el Número del Documento seleccionado ');
          dbeNroDoc.Text;
          exit;
        End;
      End;
    End;
  End
  Else
  Begin
    If length(edtTipoDoc.Text)=0 Then
    Begin
      ShowMessage('Seleccione el Tipo de Documento');
      dbeNroDNI.SetFocus;
      exit;
    End
    Else
    Begin
      If length(dbeNroDoc.Text)=0 Then
      Begin
        ShowMessage('Registre el Número del Documento seleccionado ');
        dbeNroDoc.Text;
        exit;
      End;
    End;
  End;}
  //***************************
  result:=True;
  //** Fin Valida Principal
end;

procedure TFAsociados.FormActivate(Sender: TObject);
begin
  DM1.AccesosUsuarios( DM1.wModulo,DM1.wUsuario,'2',Screen.ActiveForm.Name );
  pcAsociados.ActivePage:=tsDPer;
  If DM1.wModo='A' then
  begin
    DM1.cdsAso.Insert;
    pnlTool.Enabled := False;
    dblcdCodigo.Visible:=False;
    dbeCodigo.Visible:=True;
    dbeCodMod.Visible:=True;
    dbeCodMod.Enabled:=True;
    dbeCodMod.SetFocus;
    dblcdCodMod.Visible:=False;
    dbeCodigo.Enabled:=False;
    dbeCodMod.ReadOnly:=False;

    dblcSituacion.Enabled:=False;
    dblcTipo.Enabled:=tRUE;
    Z2sbtnNuevo.Visible:=True;
    LimpiaEdits;

    dblcSituacion.text:='AC';
    DM1.cdsAso.FieldByName('ASOSITID').AsString:='AC';
    xWhere:='ASOSITID='''+dblcSituacion.Text+'''';
    edtSituacion.Text:=DM1.DisplayDescrip('prvSQL','APO106','ASOSITDES',xWhere,'ASOSITDES');
    Application.ProcessMessages;

    dblcTipo.Text:='DO';
    DM1.cdsAso.FieldByName('ASOTIPID').AsString:='DO';
    xWhere:='ASOTIPID='''+dblcTipo.Text+'''';
    edtTipoAso.Text:=DM1.DisplayDescrip('prvSQL','APO107','ASOTIPDES',xWhere,'ASOTIPDES');

    dblcdNacionalidad.Text:='01';
    DM1.cdsAso.FieldByName('PAISID').AsString:='01';
    xWhere:='PAISID='''+dblcdNacionalidad.Text+'''';
    edtNacionalidad.Text:=DM1.DisplayDescrip('prvSQL','TGE118','PAISABR',xWhere,'PAISABR');
    Application.ProcessMessages;
  end;

  If DM1.wModo='M' Then
  Begin
    wNomAnt:=Trim(DM1.cdsAso.FieldByName('ASOAPENOM').AsString);
    dblcdCodigo.Visible:= False;
    dbeCodigo.Visible  := True;
	  dbeCodigo.ReadOnly := True;
	  dbeCodMod.ReadOnly := True;
    Z2sbtnNuevo.Visible  := False;
    dblcTipo.enabled := False;
    dblcUProceso.enabled := False;
    dblcdUProceso.enabled := False;
    dblcUSE.enabled := False;
  End;
  DisplayDescrips;
  Application.ProcessMessages;
  dbeNroDNI.Text := DM1.cdsAso.FieldByName('ASODNI').AsString;
  dblcdCodMod.Text:=DM1.cdsAso.FieldByName('ASOCODMOD').AsString;
  fcgbNroDni.Visible := False;
end;

procedure TFAsociados.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	dbeCodigo.Enabled:=True;

	If (DM1.wModo='A') or (DM1.wModo='M') Then
  Begin
  	If (DM1.cdsAso.ChangeCount > 0) or (DM1.cdsAso.Modified) Then
    Begin
    	if MessageDlg('¿Desea Grabar?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
      	Z2sbtnAceptar.Click;
      End
      Else
      begin
      	DM1.cdsAso.Cancel;
        DM1.cdsAso.CancelUpdates;
      end;
    End;
  End;
  //DM1.cdsAso.Cancel;
  //DM1.cdsAso.CancelUpdates;
end;

procedure TFAsociados.FormKeyPress(Sender: TObject; var Key: Char);
begin
	If key=#13 then
  Begin
  	key:=#0;
    perform(CM_DialogKey,VK_TAB,0);
  End;
end;

procedure TFAsociados.dblcSituacionExit(Sender: TObject);
begin
  xWhere:='ASOSITID='''+dblcSituacion.Text+'''';
  edtSituacion.Text:=DM1.DisplayDescrip('prvSQL','APO106','ASOSITDES',xWhere,'ASOSITDES');
end;

procedure TFAsociados.dblcTipoExit(Sender: TObject);
begin
  xWhere:='ASOTIPID='''+dblcTipo.Text+'''';
  edtTipoAso.Text:=DM1.DisplayDescrip('prvSQL','APO107','ASOTIPDES',xWhere,'ASOTIPDES');
end;

procedure TFAsociados.dblcUSEExit(Sender: TObject);
begin
  xWhere:='USEID='''+dblcUSE.Text+'''';
  edtUSE.Text:=DM1.DisplayDescrip('prvSQL','APO101','USENOM',xWhere,'USENOM');
  {sSQL := 'SELECT * '+
          'FROM APO103 WHERE UPROID='+''''+dblcUProceso.Text+''''+
          'ORDER BY UPAGOID';

  DM1.FiltraCDS(DM1.cdsUPago,sSQL);

  xWhere:='UPAGOID ='''+dblcUPago.Text+'''';
  edtUPago.Text:=DM1.DisplayDescrip('prvSQL','APO103','UPAGONOM',xWhere,'UPAGONOM');}
end;

procedure TFAsociados.dblcUPagoExit(Sender: TObject);
begin
  xWhere:='UPAGOID ='''+dblcUPago.Text+'''';
  edtUPago.Text:=DM1.DisplayDescrip('prvSQL','APO103','UPAGONOM',xWhere,'UPAGONOM');
end;

procedure TFAsociados.dblcUProcesoExit(Sender: TObject);
begin
  DM1.cdsAso.FieldByName('USEID').Clear;
  edtUSE.Text:='';

  xWhere:='UPROID='''+dblcUProceso.Text+'''';
  edtUProceso.Text:=DM1.DisplayDescrip('prvSQL','APO102','UPRONOM,OFDESID',xWhere,'UPRONOM');
  xOfides := dm1.cdsQry.FieldByName('OFDESID').AsString;

  sSQL := 'SELECT * '+
          'FROM APO101 WHERE UPROID='+''''+dblcUProceso.Text+''''+
          ' ORDER BY USEID';
  DM1.FiltraCDS(DM1.cdsUSES,sSQL);

  DM1.cdsAso.FieldByName('USEID').Clear;
  edtUSE.Text:='';

  xWhere:='USEID='''+dblcUSE.Text+'''';
  edtUSE.Text:=DM1.DisplayDescrip('prvSQL','APO101','USENOM',xWhere,'USENOM');
end;

procedure TFAsociados.dblcRegimenExit(Sender: TObject);
begin
  xWhere:='REGPENID='''+dblcRegimen.Text+'''';
  edtRegimen.Text:=DM1.DisplayDescrip('prvSQL','APO105','REGPENDES',xWhere,'REGPENDES');
end;

procedure TFAsociados.dblcEstCivilExit(Sender: TObject);
begin
  xWhere:='ESTCIVID='''+dblcEstCivil.Text+'''';
  edtEstCivil.Text:=DM1.DisplayDescrip('prvSQL','TGE125','ESTCIVDES',xWhere,'ESTCIVDES');
end;

procedure TFAsociados.dblcTipoDocExit(Sender: TObject);
begin
  xWhere:='TIPDOCCOD='''+dblcTipoDoc.Text+'''';
  edtTipoDoc.Text:=DM1.DisplayDescrip('prvSQL','TGE159','TIPDOCDES',xWhere,'TIPDOCDES');
end;

procedure TFAsociados.dblcLugarNacExit(Sender: TObject);
begin
  xWhere:='UBIGEOID='''+dblcLugarNac.Text+'''';
  edtLugarNac.Text:=DM1.DisplayDescrip('prvSQL','TGE147','UBIGEODES',xWhere,'UBIGEODES');
end;

procedure TFAsociados.dblcdNacionalidadExit(Sender: TObject);
begin
  xWhere:='PAISID='''+dblcdNacionalidad.Text+'''';
  edtNacionalidad.Text:=DM1.DisplayDescrip('prvSQL','TGE118','PAISABR',xWhere,'PAISABR');
end;

procedure TFAsociados.dblcGradoAcadExit(Sender: TObject);
begin
  xWhere:='GRAACID='''+dblcGradoAcad.Text+'''';
  edtGradoAcad.Text:=DM1.DisplayDescrip('prvSQL','TGE123','GRAACDES',xWhere,'GRAACDES');
end;

procedure TFAsociados.dblcGradoInsExit(Sender: TObject);
begin
  xWhere:='GRAINSID='''+dblcGradoIns.Text+'''';
  edtGradoIns.Text:=DM1.DisplayDescrip('prvSQL','TGE119','GRAINSDES',xWhere,'GRAINSDES');
end;

procedure TFAsociados.dblcdProfesionExit(Sender: TObject);
begin
  xWhere:='PROFID='''+dblcdProfesion.Text+'''';
  edtProfesion.Text:=DM1.DisplayDescrip('prvSQL','TGE124','PROFDES',xWhere,'PROFDES');
end;

procedure TFAsociados.dblcTipoViaExit(Sender: TObject);
begin
  xWhere:='TIPVIAID='''+dblcTipoVia.Text+'''';
  edtTipoVia.Text:=DM1.DisplayDescrip('prvSQL','TGE145','TIPVIADES',xWhere,'TIPVIADES');
  xVia := edtTipoVia.Text;
  dbeDireccion.text := xVia+' ' + xNomv +' ' + xNro +' ' + xDpa;
end;

procedure TFAsociados.dblcTipoZonaExit(Sender: TObject);
begin
  xWhere:='TIPZONAID='''+dblcTipoZona.Text+'''';
  edtZona.Text:=DM1.DisplayDescrip('prvSQL','TGE146','TIPZONADES',xWhere,'TIPZONADES');
end;

procedure TFAsociados.dblcdDistritoExit(Sender: TObject);
begin
  If Trim(dblcdDistrito.Text)<>'' Then
  Begin
    edtDistrito.Text:=DM1.cdsDist.FieldByName('ZIPDES').AsString;
    edtUbigeo.Text  :=dblcdDepto.Text+dblcdCiudad.Text+dblcdDistrito.Text;
  End
  Else
  Begin
    edtDistrito.Clear;
  End;
end;

procedure TFAsociados.dblcdCiudadExit(Sender: TObject);
begin
  If Trim(dblcdCiudad.Text)<>'' Then
  Begin
    edtProvincia.Text:=DM1.CdsProvin.FieldByName('CIUDDES').AsString;
    sSQL := 'SELECT ZIPID,ZIPDES,CIUDID,DPTOID FROM APO122 '+
            ' WHERE CIUDID='+''''+dblcdCiudad.Text+''' AND'+
            ' DPTOID='+''''+dblcdDepto.Text+''''+
            ' ORDER BY DPTOID,CIUDID,ZIPID';
  End
  Else
  Begin
    edtProvincia.Clear;
    sSQL := ' SELECT ZIPID,ZIPDES,CIUDID,DPTOID '+
            ' FROM APO122 '+
            ' ORDER BY DPTOID,CIUDID,ZIPID';
  End;
  DM1.FiltraCDS(DM1.cdsDist,sSQL);
  DM1.cdsAso.FieldByName('ZIPID').Clear;
  edtDistrito.Clear;
  DM1.cdsAso.FieldByName('UBIGEOID').Clear;
end;

procedure TFAsociados.dblcdDeptoExit(Sender: TObject);
begin
  If Trim(dblcdDepto.Text)<>'' then
  Begin
    edtDepto.Text:=DM1.cdsDpto.FieldByName('DPTODES').AsString;
    sSQL := 'SELECT CIUDID,CIUDDES,DPTOID FROM APO123'+
            ' WHERE DPTOID='+''''+dblcdDepto.Text+''''+
            ' ORDER BY DPTOID,CIUDID';
  End
  Else
  Begin
    edtDepto.Clear;
    DM1.FiltraCDS(DM1.cdsDist,'SELECT ZIPID,ZIPDES,CIUDID,DPTOID FROM APO122 ORDER BY DPTOID,CIUDID,ZIPID');
    sSQL := 'SELECT CIUDID,CIUDDES,DPTOID FROM APO123 ORDER BY DPTOID,CIUDID';
  End;
  DM1.FiltraCDS(DM1.cdsProvin,sSQL);
  DM1.cdsAso.FieldByName('CIUDID').Clear;  edtProvincia.Clear;
  DM1.cdsAso.FieldByName('ZIPID').Clear; edtDistrito.Clear;
  DM1.cdsAso.FieldByName('UBIGEOID').Clear;
  edtUbigeo.Text  :='';
end;

procedure TFAsociados.Z2sbtnDLabClick(Sender: TObject);
begin
  Try
   FDLab:=TFDLab.Create(Self);
   FDLab.ShowModal;
  Finally
   FDLab.Free;
   DM1.cdsDLabo.Close;
  End;
end;

procedure TFAsociados.Z2sbtnDFamClick(Sender: TObject);
begin
  try
    FDFam:=TFDFam.Create(Self);
    FDFam.ShowModal;
  finally
    FDFam.Free;
    DM1.cdsDFam.Close;
  end;
end;

procedure TFAsociados.Z2sbtnAportesClick(Sender: TObject);
begin
  //pnlTool.Height := 55;
  //DM1.cdsConsulta.Close;
  MtxAportes  := TMant.Create(Self);
  try
    MtxAportes.Admin           := DM1.wAdmin;
    MtxAportes.User            := DM1.wUsuario;
    MtxAportes.OnCreateMant    := nil ;
    MtxAportes.TableName       := 'APO301';
    MtxAportes.ClientDataSet   := DM1.cdsConsulta;
//WMC 666    MtxAportes.Filter          := 'APO301.ASOID='+quotedstr(FPrincipal.Mtx.FMant.cds2.FieldByName('ASOID').AsString)+
//WMC 666                                  ' AND APO301.TRANSID='+QuotedStr('APORTE');
    MtxAportes.Filter          := 'APO301.ASOID='+quotedstr(Mtx.FMant.cds2.FieldByName('ASOID').AsString)+
                                  ' AND APO301.TRANSID='+QuotedStr('APORTE');

    MtxAportes.DComC           := DM1.DCOM1;
    MtxAportes.Module          := dm1.wModulo;
    MtxAportes.Titulo 				 := 'Estado de Cuenta de Aportes';
    MtxAportes.OnInsert 	     := Nil;
    MtxAportes.OnEdit 		     := Nil;
    MtxAportes.OnCreateMant    := Nil;
    MtxAportes.OnDelete        := Nil;
    MtxAportes.OnShow 		     := Nil;
    MtxAportes.ControlGridDisp := FPrincipal.cgdPrincipal;
    MtxAportes.SectionName		 :='AportesX';
    MtxAportes.FileNameIni     := '\SOLCRE.INI';
// Inicio HPC_201501_APO     - Cambio de DCOM a Socket
    MtxAportes.Tipo            := 'NORMAL';
// Fin    HPC_201501_APO     - Cambio de DCOM a Socket
    MtxAportes.Execute;
  Finally
    //DM1.cdsConsulta.Close;
 	 MtxAportes.Free;
  End;
  //DM1.cdsConsulta.Close;

  Exit;
{WMC 666
  try
    FDAportes:=TFDAportes.Create(Self);
    FDAportes.ShowModal;
  finally
    FDAportes.Free;
  end;
}
end;

procedure TFAsociados.Z2sbtnResolClick(Sender: TObject);
begin
{ try
    sSQL := 'SELECT ASOID, ASOCODMOD, ASOCODAUX, ASONRES, ASOFRES, RESID, RESFVIG, FREG, HREG '+
            'FROM APO205 WHERE ASOID='+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);
    DM1.FiltraCDS(DM1.cdsResol,sSQL);

    FResoluciones:=TFResoluciones.Create(Self);
    FResoluciones.ShowModal;
  finally
    FResoluciones.Free;
  end;
}  
end;

procedure TFAsociados.Z2sbtnCtasBancClick(Sender: TObject);
begin
{ try
    FDCtasBcos:=TFDCtasBcos.Create(Self);
    FDCtasBcos.ShowModal;
  finally
    FDCtasBcos.Free;
  end;
}  
end;

procedure TFAsociados.Z2sbtnSituClick(Sender: TObject);
begin
 try
    FDSituaciones:=TFDSituaciones.Create(Self);
    FDSituaciones.lbTitulo.Caption:='Asociado :'+DM1.cdsAso.FieldByName('ASOAPENOM').AsString;
    FDSituaciones.lbCodigo.Caption:='Código Modular :'+DM1.cdsAso.FieldByName('ASOCODMOD').AsString;
    FDSituaciones.ShowModal;
  finally
    FDSituaciones.Free;
  end;
end;

procedure TFAsociados.Z2sbtnFirmaClick(Sender: TObject);
begin
 try
    FDFirmaHuella:=TFDFirmaHuella.Create(Self);
    FDFirmaHuella.ShowModal;
  finally
    FDFirmaHuella.Free;
  end;
end;

procedure TFAsociados.Z2sbtnAceptarClick(Sender: TObject);
var
  xAsoApePat : string;
begin
{  If (DM1.cdsAso.Modified) or (DM1.cdsAso.ChangeCount > 0)  Then
  begin
    DM1.cdsAso.Edit;
    If (DM1.wModo='A') or (DM1.wModo='M') Then
    Begin
      //** 28/01/2003 - PJSV, porque no todos registran todos los datos del asociado
      If Not ValidaPrincipalAso then exit;
      If Not ValidaDatosPerAso then exit;
      If Not ValidaDomicilioAso then exit;
      // Verifica Si existe Asociado
      //**
      Screen.Cursor:=crHourGlass;
      If DM1.wModo='A' then
      Begin
        xWhere:='ASOAPENOM='''+TRIM(dbeNombre.Text)+'''';
        xAsoApePat:=DM1.DisplayDescrip('prvSQL','APO201','ASOAPENOM',xWhere,'ASOAPENOM');
        If (DM1.cdsQry.RecordCount>0) Then
        Begin
          If MessageDlg('El Asociado que Ingreso ya se encuentra Registrado ¿Desea Grabar?',mtConfirmation, [mbYes, mbNo], 0) = mrNo then
          Begin
            DM1.cdsAso.Cancel;
            DM1.cdsAso.CancelUpdates;
            Z2sbtnAceptar.SetFocus;
            Exit;
          End;
        end;
      End;
      // Fin Verifica
      //*******************

      DM1.cdsAso.FieldByName('ASOFLUGING').AsString:='S';
      DM1.cdsAso.FieldByName('ASOAPENOM').AsString:=TRIM(DM1.cdsAso.FieldByName('ASOAPEPAT').AsString)+' '+TRIM(DM1.cdsAso.FieldByName('ASOAPEMAT').AsString)+' '+TRIM(DM1.cdsAso.FieldByName('ASONOMBRES').AsString);
      DM1.cdsAso.FieldByName('ASODIR').AsString:=TRIM(edtTipoVia.text+' '+dbeNombreVia.text+' '+dbeNroDireccion.Text+' '+dbeDpto.Text+' '+edtZona.Text+' '+dbeNombreZona.Text+' ,'+edtDistrito.Text);

      DM1.cdsAso.FieldByName('ASOTIPID').AsString:=dblcTipo.Text;
      DM1.cdsAso.FieldByName('ASOSITID').AsString:=dblcSituacion.Text;
      //** 13/11/2002 - PJSV
      // DM1.cdsAso.FieldByName('ASOCODAUX').AsString:= DM1.BuscaCodMod('APO201',dbeCodMod.Text);
      //**
      DM1.cdsAso.FieldByName('USUARIO').AsString:=dm1.wUsuario;
      DM1.cdsAso.FieldByName('HREG').AsDateTime:=Date+SysUtils.Time;;
      DM1.cdsAso.FieldByName('FREG').AsDateTime:=Date;
      cdsPost(DM1.cdsAso);
      DM1.cdsAso.Post;
      DM1.AplicaDatos(dm1.cdsAso,'Asociado'); // ControlTran;
      If DM1.wModo='M' then
      Begin
        if DM1.cdsAso.FieldByName('ASOAPENOM').AsString <> wNomAnt then
        begin
          xSQL := 'UPDATE APO207 SET '+
                  'ASOAPENOM='+QuotedStr(Trim(DM1.cdsAso.FieldByName('ASOAPENOM').AsString))+
                  'WHERE ASOID = '+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);
          DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

          xSQL := 'UPDATE APO301 SET '+
                  'ASOAPENOM='+QuotedStr(Trim(DM1.cdsAso.FieldByName('ASOAPENOM').AsString))+
                  'WHERE ASOID = '+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);
          DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

          xSQL := 'UPDATE CRE301 SET '+
                  'ASOAPENOM='+QuotedStr(Trim(DM1.cdsAso.FieldByName('ASOAPENOM').AsString))+
                  'WHERE ASOID = '+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);
          DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

          xSQL := 'UPDATE CRE302 SET '+
                  'ASOAPENOM='+QuotedStr(Trim(DM1.cdsAso.FieldByName('ASOAPENOM').AsString))+
                  'WHERE ASOID = '+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);
          DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

          xSQL := 'UPDATE CRE303 SET '+
                  'ASOAPENOM='+QuotedStr(Trim(DM1.cdsAso.FieldByName('ASOAPENOM').AsString))+
                  'WHERE ASOID = '+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);
          DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

          xSQL := 'UPDATE CRE306 SET '+
                  'ASOAPENOM='+QuotedStr(Trim(DM1.cdsAso.FieldByName('ASOAPENOM').AsString))+
                  'WHERE ASOID = '+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);
          DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
        end;
      End;
      pcAsociados.ActivePage:=tsDPer;
      pnlTool.Enabled := True;
      Screen.Cursor:=crDefault;
      ShowMessage('Registro Grabado');
      Z2sbtnMarcar.enabled := True;
    end;
  end
  else
  begin
   Information(Caption, 'No ha realizado Modificaciones');
  end;
  //Screen.Cursor:=crArrow;
}  
end;

procedure TFAsociados.Z2sbtnNuevoClick(Sender: TObject);
begin
  If (DM1.cdsAso.Modified) or (DM1.cdsAso.ChangeCount > 0)  Then
  Begin
    DM1.cdsAso.Edit;
    If MessageDlg('Desea Guardar los Datos', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Begin
      Z2sbtnAceptar.SetFocus;
      exit;
    End;
  End
  Else
  Begin
    DM1.wModo := 'A';
    pnlTool.Enabled := False;
    dblcdCodigo.Visible:=False;
    dbeCodigo.Visible:=True;
    dbeCodMod.Visible:=True;
    dbeCodMod.SetFocus;
    dblcdCodMod.Visible:=False;
    dbeCodigo.Enabled:=False;
    dblcSituacion.Text:='01';
    dblcTipo.Text:='DO';
    dblcdNacionalidad.Text:='01';
    dblcSituacion.Enabled:=False;
    dblcTipo.Enabled:=False;
    Z2sbtnNuevo.Visible:=True;
    LimpiaEdits;
    //** 19/12/2002 - PJSV
    //** CALCULO DEl codigo ASOID
    xTipocorre := '7';
    xArea := DM1.DisplayDescrip('prvSQL','CRE117','MODULOID','AREAID=''005''','MODULOID');
    xCorreWhere :=  ' CREAREA = '+quotedstr(xArea)+' and '+
                    ' TIPO ='+quotedstr(xTipocorre)+' and ';
    xCorreWherex := ' x.CREAREA = '+quotedstr(xArea)+' and '+
                    ' x.TIPO ='+quotedstr(xTipocorre)+' and ';
    xCorreWherey := ' y.CREAREA = '+quotedstr(xArea)+' and '+
                    ' y.TIPO ='+quotedstr(xTipocorre);
    xTabla := 'CRE210';
    xCeros := 10;
    xCorreCampo := 'ASOID';
    Correlativo;
    xCorreASOID := xCorre;
    DM1.cdsAso.Insert;
    DM1.cdsAso.FieldByName('ASOID').AsString:= xCorreASOID;
    FAsociados.dbeCodigo.Text:=DM1.cdsAso.FieldByName('ASOID').AsString;
    //**
  End;
end;

procedure TFAsociados.Z2sbtnCancelarClick(Sender: TObject);
begin
  Close;
end;

function TFAsociados.ValidaDatosPerAso:Boolean;
var
	Present: TDateTime;
  Year,ActYear,Mes,ActMes,Dia: Word;
begin
	result:=False;
  //*** Valida Datos Personales

  //Valida fecha
  Present:= Now;
  DecodeDate(Present,Year,Mes,Dia);
  Year:=Year-16;
  Present:=dbdtpFechaNac.Date;
  DecodeDate(Present, ActYear,ActMes,Dia);
  if ActYear > Year then
  begin
  	ShowMessage('La fecha debe ser válida');
    pcAsociados.ActivePage:=tsDPer;
    dbdtpFechaNac.SetFocus;
    exit;
  end;
  //Fin valida fecha
  If length(edtSexo.Text)=0 Then
  Begin
    ShowMessage('Seleccione el Sexo del Asociado');
    pcAsociados.ActivePage:=tsDPer;
    dblcSexo.SetFocus;
    exit;
  End;
  If length(edtNacionalidad.Text)=0 Then
  Begin
    ShowMessage('Seleccione la Nacionalidad del Asociado');
    pcAsociados.ActivePage:=tsDPer;
    dblcdNacionalidad.SetFocus;
    exit;
  End;
  {If length(edtEstCivil.Text)=0 Then Begin
    ShowMessage('Seleccione el Estado Civil del Asociado');
    pcAsociados.ActivePage:=tsDPer;
    dblcEstCivil.SetFocus;
    exit;
  End;}
  //****Valida Documentos de Identificación y Números, Nacionalidad

  If dblcdNacionalidad.Text= '01' then
  begin
  	If (length(dbeNroDNI.Text)=0) And (length(edtTipoDoc.Text)=0) And (length(dbeNroDoc.Text)=0) Then
    Begin
    	ShowMessage('Registre el Número de D.N.I. o L.E. ');
      pcAsociados.ActivePage:=tsDPer;
      dbeNroDNI.SetFocus;
      exit;
    End;
    If (length(dbeNroDNI.Text)=0) And (length(edtTipoDoc.Text)<>0) And (length(dbeNroDoc.Text)=0) Then
    Begin
    	ShowMessage('Registre el Número del Documento seleccionado ');
      pcAsociados.ActivePage:=tsDPer;
      dbeNroDoc.Text;
      exit;
    End;
    If (length(dbeNroDNI.Text)=0) And (length(edtTipoDoc.Text)=0) And (length(dbeNroDoc.Text)<>0) Then
    Begin
    	ShowMessage('Seleccione el Tipo de Documento');
      pcAsociados.ActivePage:=tsDPer;
      dblcTipoDoc.SetFocus;
      exit;
    End;
    If (length(dbeNroDNI.Text)<>0) And (length(edtTipoDoc.Text)<>0) And (length(dbeNroDoc.Text)=0) Then
    Begin
    	ShowMessage('Registre el Número del Documento seleccionado ');
      pcAsociados.ActivePage:=tsDPer;
      dbeNroDoc.Text;
      exit;
    End;
    If (length(dbeNroDNI.Text)<>0) Then
    Begin
    	If (length(dbeNroDNI.Text)<8) Or (length(dbeNroDNI.Text)>8) then
      Begin
      	ShowMessage('Ingrese un Número de D.N.I. o L.E. válido');
        dbeNroDNI.SetFocus;
        exit;
      End;
    End;
  End
  Else
  Begin
  	///Nacionalidad Vacia
    If (length(edtTipoDoc.Text)=0) And (length(dbeNroDoc.Text)=0) Then
    Begin
    	ShowMessage('Seleccione el Tipo de Documento');
      pcAsociados.ActivePage:=tsDPer;
      dblcTipoDoc.SetFocus;
      exit;
    End;
    If (length(edtTipoDoc.Text)=0) And (length(dbeNroDoc.Text)<>0) Then
    Begin
    	ShowMessage('Seleccione el Tipo de Documento');
      pcAsociados.ActivePage:=tsDPer;
      dblcTipoDoc.SetFocus;
      exit;
    End;
    If (Length(edtTipoDoc.Text)<>0) And (length(dbeNroDoc.Text)=0) Then
    Begin
      ShowMessage('Registre el Número del Documento seleccionado ');
      pcAsociados.ActivePage:=tsDPer;
      dbeNroDoc.Text;
      exit;
    End
  End;
  //****Valida Documentos de Identificación y Números, Nacioanlidad}
  If length(edtRegimen.Text)=0 Then
  Begin
  	ShowMessage('Seleccione el Regimen de Pension');
    dblcRegimen.SetFocus;
    exit;
  End;
  Result:=True;
  //*** Fin Valida Datos Personales
end;

function TFAsociados.ValidaDomicilioAso:Boolean;
begin
  Result:=False;
  //*** Valida Domicilio
  pcAsociados.ActivePage:=tsDDom;

  If Length(edtTipoVia.Text)=0 Then
  Begin
    ShowMessage('Seleccione el Tipo de Via del Domicilio del Asociado');
    dblcTipoVia.SetFocus;
    exit;
  End;

  If Length(dbeNombreVia.Text)=0 Then
  Begin
    ShowMessage('Registre el Nombre de la Via del Domicilio del Asociado');
    dbeNombreVia.SetFocus;
    exit;
  End;

  If Length(dbeNroDireccion.Text)=0 Then
  Begin
    ShowMessage('Registre el Número del Domicilio del Asociado');
    dbeNroDireccion.SetFocus;
    exit;
  End;

  {If Length(edtZona.Text)=0 Then
  Begin
    ShowMessage('Seleccione el Tipo de Zona del Domicilio del Asociado');
    dblcTipoZona.SetFocus;
    exit;
  End;

  If Length(dbeNombreZona.Text)=0 Then
  Begin
    ShowMessage('Registre el Nombre de la Zona del Domicilio del Asociado');
    dbeNombreZona.SetFocus;
    exit;
  End;}
  If Length(edtDistrito.Text)=0 Then
  Begin
    ShowMessage('Seleccione el Distrito del Domicilio del Asociado');
    dblcdDistrito.SetFocus;
    exit;
  End;

  If Length(edtDepto.Text)=0 Then
  Begin
    ShowMessage('Seleccione el Departamento del Domicilio del Asociado');
    dblcdDepto.SetFocus;
    exit;
  End;

  If Length(edtProvincia.Text)=0 Then
  Begin
    ShowMessage('Seleccione la Provincia del Domicilio del Asociado');
    dblcdCiudad.SetFocus;
    exit;
  End;

  {If Length(edtUbigeo.Text)=0 Then
  Begin
    ShowMessage('Seleccione el Ubigeo del Domicilio del Asociado');
    dblcdUbigeo.SetFocus;
    exit;
  End;}

  Result:=true;
  //*** Fin Valida Domicilio
end;

//function TFAsociados.ValidaLaboralesAso:Boolean;
//begin
  //*** Valida Datos Laborales
  {result:=False;
      pcAsociados.ActivePage:=tsDLab;

      If Length(dbeCodigoPago.Text)=0 Then Begin
        ShowMessage('Registre el Código de Pago del Asociado');
        dbeCodigoPago.SetFocus;
        exit;
      End;

      If Length(edtUPago.Text)=0 Then Begin
        ShowMessage('Seleccione la Unidad de Pago');
        dblcUPago.SetFocus;
        exit;
      End;

      If Length(edtRegimen.Text)=0 Then Begin
        ShowMessage('Seleccione el Regimen de Pension');
        dblcRegimen.SetFocus;
        exit;
      End;

      If Length(edtResolDescrip.Text)=0 Then Begin
        ShowMessage('Seleccione el Tipo de Resolución');
        dblcRTipResol.SetFocus;
        exit;
      End;

      If Length(dbeResolucion.Text)=0 Then Begin
        ShowMessage('Registre la Resolución de Nombramiento');
        dbeResolucion.SetFocus;
        exit;
      End;

      //Valida fecha

      If Length(dbdtpFecha.Text)=0 Then Begin
        ShowMessage('Seleccione la Fecha de Nombramiento');
        dbdtpFecha.SetFocus;
        exit;
      End
      Else
      Begin
          Present:= Now;
          DecodeDate(Present,Year,Mes,Dia);
          Year:=Year;

          Present:=dbdtpFecha.Date;
          DecodeDate(Present, ActYear,ActMes,Dia);

          If ActYear>Year then
          begin
            ShowMessage('Ingrese un Fecha de Nombramiento valida');
            pcAsociados.ActivePage:=tsDLab;
            dbdtpFecha.SetFocus;
            exit;
          end;

      End;
      //* Fin Valida Fecha

      result:=true;
//*** Valida Datos Laborales}
//end;

procedure TFAsociados.dblcNotInList(Sender: TObject; LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
begin
  Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookupField,NewValue,[]);
  if not Accept then
    TwwDBCustomLookupCombo(Sender).DropDown;
end;

procedure TFAsociados.dblcSexoExit(Sender: TObject);
begin
  If dblcSexo.Text='M' Then edtSexo.Text:='MASCULINO';
  If dblcSexo.Text='F' Then edtSexo.Text:='FEMENINO';
  if Length(dblcSexo.Text)=0 then edtSexo.Text:='';
end;

Procedure TFAsociados.LimpiaEdits;
begin
  // DisplayDescrip Maestro de Asociados
  edtSituacion.Text:='';
  edtTipoAso.Text:='';
  edtUSE.Text:='';
  edtUPago.Text:='';
  edtUProceso.Text:='';
  edtRegimen.Text:='';
  edtEstCivil.Text:='';
  edtTipoDoc.Text:='';
  edtLugarNac.Text:='';
  edtNacionalidad.Text:='';
  edtGradoAcad.Text:='';
  edtGradoIns.Text:='';
  edtProfesion.Text:='';
  edtTipoVia.Text:='';
  edtZona.Text:='';
  edtDistrito.Text:='';
  edtDepto.Text:='';
  edtProvincia.Text:='';
  If dblcSexo.Text='' Then edtSexo.Text:='';
  If dblcSexo.Text='M' Then edtSexo.Text:='MASCULINO';
  If dblcSexo.Text='F' Then edtSexo.Text:='FEMENINO';
end;

procedure TFAsociados.dbeNombresExit(Sender: TObject);
begin
  if Length(Trim(dbeApePaterno.Text))<>0 Then
  begin
    if Length(Trim(dbeApeMaterno.Text))<>0 Then
    begin
      if Length(Trim(dbeNombres.Text))<>0 Then
      begin
        dbeNombre.Text:=Trim(dbeApePaterno.Text)+' '+Trim(dbeApeMaterno.Text)+' '+Trim(dbeNombres.Text);
        DM1.cdsAso.FieldByName('ASOAPENOM').AsString:=Trim(dbeApePaterno.Text)+' '+Trim(dbeApeMaterno.Text)+' '+Trim(dbeNombres.Text);
      end;
    end;
  end;
end;

procedure TFAsociados.DisplayDescrips;
Begin
	// DisplayDescrip Maestro de Asociados
  if DM1.wModo='M' then
  begin
    xWhere:='ASOSITID='''+dblcSituacion.Text+'''';
    edtSituacion.Text:=DM1.DisplayDescrip('prvSQL','APO106','ASOSITDES',xWhere,'ASOSITDES');

    xWhere:='ASOTIPID='''+dblcTipo.Text+'''';
    edtTipoAso.Text:=DM1.DisplayDescrip('prvSQL','APO107','ASOTIPDES',xWhere,'ASOTIPDES');

    xWhere:='PAISID='''+dblcdNacionalidad.Text+'''';
    edtNacionalidad.Text:=DM1.DisplayDescrip('prvSQL','TGE118','PAISABR',xWhere,'PAISABR');
  end;

  xWhere:='SITCTAID='''+dblcdSit.Text+'''';
  edtSitCtaBco.Text:=DM1.DisplayDescrip('prvSQL','COB103','SITCTADES',xWhere,'SITCTADES');

  xWhere:='BANCOID='''+dblcdBco.Text+'''';
  edtBanco.Text:=DM1.DisplayDescrip('prvSQL','TGE105','BANCONOM',xWhere,'BANCONOM');

  xWhere:='ESTCIVID='''+dblcEstCivil.Text+'''';
  edtEstCivil.Text:=DM1.DisplayDescrip('prvSQL','TGE125','ESTCIVDES',xWhere,'ESTCIVDES');

  xWhere:='TIPDOCCOD='''+dblcTipoDoc.Text+'''';
  edtTipoDoc.Text:=DM1.DisplayDescrip('prvSQL','TGE159','TIPDOCDES',xWhere,'TIPDOCDES');

  xWhere:='UBIGEOID='''+dblcLugarNac.Text+'''';
  edtLugarNac.Text:=DM1.DisplayDescrip('prvSQL','TGE147','UBIGEODES',xWhere,'UBIGEODES');

  xWhere:='GRAACID='''+dblcGradoAcad.Text+'''';
  edtGradoAcad.Text:=DM1.DisplayDescrip('prvSQL','TGE123','GRAACDES',xWhere,'GRAACDES');

  xWhere:='GRAINSID='''+dblcGradoIns.Text+'''';
  edtGradoIns.Text:=DM1.DisplayDescrip('prvSQL','TGE119','GRAINSDES',xWhere,'GRAINSDES');

  xWhere:='PROFID='''+dblcdProfesion.Text+'''';
  edtProfesion.Text:=DM1.DisplayDescrip('prvSQL','TGE124','PROFDES',xWhere,'PROFDES');

  xWhere:='TIPVIAID='''+dblcTipoVia.Text+'''';
  edtTipoVia.Text:=DM1.DisplayDescrip('prvSQL','TGE145','TIPVIADES',xWhere,'TIPVIADES');

  xWhere:='TIPZONAID='''+dblcTipoZona.Text+'''';
  edtZona.Text:=DM1.DisplayDescrip('prvSQL','TGE146','TIPZONADES',xWhere,'TIPZONADES');

  xWhere:='DPTOID='''+dblcdDepto.Text+'''';
  edtDepto.Text:=DM1.DisplayDescrip('prvSQL','APO158','DPTODES',xWhere,'DPTODES');

  xWhere:='CIUDID='''+dblcdCiudad.Text+'''';
  edtProvincia.Text:=DM1.DisplayDescrip('prvSQL','APO123','CIUDDES',xWhere,'CIUDDES');

  xWhere:='REGPENID='''+dblcRegimen.Text+'''';
  edtRegimen.Text:=DM1.DisplayDescrip('prvSQL','APO105','REGPENDES',xWhere,'REGPENDES');

  xWhere:='UPROID='''+dblcUProceso.Text+'''';
  edtUProceso.Text:=DM1.DisplayDescrip('prvSQL','APO102','UPRONOM',xWhere,'UPRONOM');

  xWhere:='USEID='''+dblcUSE.Text+'''';
  edtUSE.Text:=DM1.DisplayDescrip('prvSQL','APO101','USENOM',xWhere,'USENOM');

  xWhere:='UPAGOID ='''+dblcUPago.Text+'''';
  edtUPago.Text:=DM1.DisplayDescrip('prvSQL','APO103','UPAGONOM',xWhere,'UPAGONOM');

  xWhere:='TIPRESID='''+dblcRTipResol.Text+'''';
  edtResolDescrip.Text:=DM1.DisplayDescrip('prvSQL','APO104','TIPRESDES',xWhere,'TIPRESDES');

  If dblcSexo.Text='M' Then
  Begin
    edtSexo.Text:='MASCULINO';
  End;
  If dblcSexo.Text='F' Then
  Begin
    edtSexo.Text:='FEMENINO';
  End;
  If Length(dblcSexo.Text)=0 Then
  Begin
    edtSexo.Text:='';
  End;

  xWhere:='BANCOID='''+dblcdBco.Text+'''';
  edtBanco.Text:=DM1.DisplayDescrip('prvSQL','TGE105','BANCONOM',xWhere,'BANCONOM');

  xWhere:='ZIPID='''+dblcdDistrito.Text+'''';
  edtDistrito.Text:=DM1.DisplayDescrip('prvSQL','APO122','ZIPDES,CIUDID',xWhere,'ZIPDES');
  // Fin DisplayDescrip Maestro de Asociados
End;

procedure TFAsociados.dblcdCodigoExit(Sender: TObject);
begin
  DisplayDescrips;
end;

procedure TFAsociados.dblcdCodModExit(Sender: TObject);
begin
  DisplayDescrips;
end;

procedure TFAsociados.dbeApeMaternoExit(Sender: TObject);
begin
  If length(Trim(dbeApePaterno.Text))<>0 Then
  Begin
    If length(Trim(dbeApeMaterno.Text))<>0 Then
    Begin
      If length(Trim(dbeNombres.Text))<>0 Then
      Begin
        dbeNombre.Text:=Trim(dbeApePaterno.Text)+' '+Trim(dbeApeMaterno.Text)+' '+Trim(dbeNombres.Text);
        DM1.cdsAso.FieldByName('ASOAPENOM').AsString:=Trim(dbeApePaterno.Text)+' '+Trim(dbeApeMaterno.Text)+' '+Trim(dbeNombres.Text);
      End;
    End;
  End;
end;

procedure TFAsociados.dbeApePaternoExit(Sender: TObject);
begin
  If length(Trim(dbeApePaterno.Text))<>0 Then
  Begin
    If length(Trim(dbeApeMaterno.Text))<>0 Then
    Begin
      If length(Trim(dbeNombres.Text))<>0 Then
      Begin
        dbeNombre.Text:=Trim(dbeApePaterno.Text)+' '+Trim(dbeApeMaterno.Text)+' '+Trim(dbeNombres.Text);
        DM1.cdsAso.FieldByName('ASOAPENOM').AsString:=Trim(dbeApePaterno.Text)+' '+Trim(dbeApeMaterno.Text)+' '+Trim(dbeNombres.Text);
      End;
    End;
  End;
end;

procedure TFAsociados.dblcRTipResolExit(Sender: TObject);
begin
  xWhere:='TIPRESID='''+dblcRTipResol.Text+'''';
  edtResolDescrip.Text:=DM1.DisplayDescrip('prvSQL','APO104','TIPRESDES',xWhere,'TIPRESDES');
end;

procedure TFAsociados.dbeNroDNIExit(Sender: TObject);
var
 xSql : String;
begin
  If (length(dbeNroDNI.Text) <> 8) Then
  Begin
    ShowMessage('Registre Correctamente el Número de D.N.I.');
    dbeNroDNI.Text := dm1.cdsAso.FieldByName('ASODNI').AsString;
    dbeNroDNI.SetFocus;
    exit;
  End;

  If dbeNroDNI.Text <> DM1.cdsAso.FieldByName('ASODNI').AsString Then
  Begin
    xSql := 'SELECT ASOCODMOD AS COD_MOD, SUBSTR(ASOAPENOM,1,30) AS APE_NOM, ASODNI AS DNI FROM APO201 WHERE ASODNI='+QuotedStr(dbeNroDNI.text);
    DM1.cdsQry4.close;
    DM1.cdsQry4.DataRequest(xSql);
    DM1.cdsQry4.open;

    If DM1.cdsQry4.RecordCount > 0 Then
    Begin
      fcgbNroDni.Visible := True;
      dbgDniRep.DataSource := DM1.dsQry4;
      ErrorMsg(Caption, ' DNI ya existe en otro Asociado ');
      dbeNroDNI.Text := dm1.cdsAso.FieldByName('ASODNI').AsString;
      dbeNroDNI.SetFocus;
      exit;
    End;
  End;


  If (dbeNroDNI.text <> '') And (DM1.cdsQry4.RecordCount = 0) Then
  begin
    xSql := 'SELECT TIPDOCCOD FROM TGE159 WHERE FLGDNI='+quotedstr('S');
    DM1.cdsQry.close;
    DM1.cdsQry.datarequest(xSql);
    DM1.cdsQry.open;
    DM1.cdsAso.FieldByName('ASODNI').AsString    := dbeNroDNI.Text;
    DM1.cdsAso.FieldByName('ASODOCNUM').AsString := DM1.cdsAso.FieldByName('ASODNI').AsString;
    DM1.cdsAso.FieldByName('TIPDOCCOD').AsString := DM1.cdsQry.FieldByName('TIPDOCCOD').AsString;
    dblcTipoDoc.OnExit(dblcTipoDoc);
  end;
end;

procedure TFAsociados.dblcdCodigoCloseUp(Sender: TObject; LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  dblcdCodigo.Text:=DM1.cdsAso.FieldByName('ASOID').AsString;
end;

procedure TFAsociados.dbeNroRUCExit(Sender: TObject);
begin
  If (length(dbeNroRUC.Text)<11) And (length(dbeNroRUC.Text)>11) Then
  Begin
    ShowMessage('Registre Correctamente el R.U.C.');
    dbeNroDNI.SetFocus;
    exit;
  End;
end;

procedure TFAsociados.Z2sbtnDSocioEClick(Sender: TObject);
begin
  try
    FDSocioEco:=TFDSocioEco.Create(Self);
    FDSocioEco.ShowModal;
  finally
    FDSocioEco.Free;
  end;
end;

procedure TFAsociados.dblcdBcoExit(Sender: TObject);
begin
  xWhere:='BANCOID='''+dblcdBco.Text+'''';
  edtBanco.Text:=DM1.DisplayDescrip('prvSQL','TGE105','BANCONOM',xWhere,'BANCONOM');
end;

procedure TFAsociados.dblcdSitExit(Sender: TObject);
begin
  edtSitCtaBco.Text:=DM1.DisplayDescrip('prvSQL','COB103','SITCTADES','SITCTAID='''+dblcdSit.Text+'''','SITCTADES');
end;

procedure TFAsociados.dbeNombreViaExit(Sender: TObject);
begin
  xNomv := dbeNombreVia.text;
  dbeDireccion.text := xVia+' ' + xNomv +' ' + xNro +' ' + xDpa;
end;

procedure TFAsociados.dbeNroDireccionExit(Sender: TObject);
begin
  xNro := dbeNroDireccion.text;
  dbeDireccion.text := xVia+' ' + xNomv +' ' + xNro +' ' + xDpa;
end;

procedure TFAsociados.dbeDptoExit(Sender: TObject);
begin
  xDpa := dbeDpto.text;
  dbeDireccion.text := xVia+' ' + xNomv +' ' + xNro +' ' + xDpa;
end;

procedure TFAsociados.dbeNroDNIKeyPress(Sender: TObject; var Key: Char);
begin
  If Key In [' ','A'..'Z','a'..'z',
            '°','|','!','"','#','$','%','&','/','(',')','=','?','\','¡','¿','@',
            '¨','´','*','+','~','~','[',']','{','}','^','`','<','>',';',',',':','''',
            '-','_'] Then
    Key :=#0;
end;

procedure TFAsociados.dbeNroDocExit(Sender: TObject);
begin
  DM1.cdsAso.FieldByName('ASODNI').AsString := DM1.cdsAso.FieldByName('ASODOCNUM').AsString ;
end;

//** 13/11/2002 - PJSV
procedure TFAsociados.dbeCodModKeyPress(Sender: TObject; var Key: Char);
begin
//  If Key In [' ','A'..'Z','a'..'z',
//            '°','|','!','"','#','$','%','&','/','(',')','=','?','\','¡','¿','@',
//            '¨','´','*','+','~','~','[',']','{','}','^','`','<','>',';',',',':','''',
//            '-','_'] Then
//    Key :=#0
//  else
//  begin
//    Try
 //     FDLab:=TFDLab.Create(Self);
 //     wNuevo := 'S';
//     FDLab.ShowModal;
 //  Finally
//      FDLab.Free;
//      DM1.cdsDLabo.Close;
//    End;
//  end;
end;

Procedure TFAsociados.Correlativo;
begin
  //** cuando es primera vez, se pasa el nombre del campo del cual se sacara el correlativo
  xCorre := xCorreCampo;
  Repeat
    //** si esto se repitiera más de una vez, xCorre será igual al correlativo que se
    //** encontro más 1
    CorreCred(xcorre);
    //** verifica en la tabla auxiliar que el correlativo no este tomado por otro usuario
    BuscaCorre;
    //** esta busqueda se repitirá hasta que se encuentra un correlativo que no haya
    //** sido tomado
  until xPaso = True;
end;

procedure TFAsociados.CorreCred(pCorre : String);
var
 xCadena,xSql : String;
begin
 //** dependiendo del pCorre, lleno xCadena para el Sql
 If pCorre = 'CREDID' then
   xCadena := 'substr(CREDID,9,7)'
 else
   xCadena := pCorre;

   xSql := 'select '+xCadena+' +1 NUMCRED from CRE206 '+
           'where '+ xCorreWhere +
           xCorreCampo+' IN (select x.'+xCorreCampo+' from CRE206 x, CRE206 y '+
          ' where '+ xCorreWherex + xCorreWherey +')';
   Dm1.cdsQry.Close;
   Dm1.cdsQry.DataRequest(xSql);
   Dm1.cdsQry.Open;
   //** asigno el nuevo correlativo
   If Dm1.cdsQry.FieldByName('NUMCRED').AsInteger = 0 then
    xCorre := dm1.StrZero(IntToStr(Dm1.cdsQry.FieldByName('NUMCRED').AsInteger+1),xCeros)
   else
    xCorre := dm1.StrZero(IntToStr(Dm1.cdsQry.FieldByName('NUMCRED').AsInteger),xCeros);
end;

Procedure TFAsociados.BuscaCorre;
var
  xSql : String;
begin
  //** por defecto
  xPaso := True;
  //** busco en la tabla auxiliar de correlativos si en xcorre ya existe,
  //** ejemplo : en CRE303 puede ser que este en el 1000 si más de un usuario toma
  //** este mas uno van a tener el 1001, lo cual es verdad, para evitar esto grabo
  //** en CRE201 y verifico que el 1001 no exista en este sino sigue buscando
  xSql := 'SELECT COUNT(NUMERO) TOTAL FROM '+xTabla+' WHERE NUMERO='+quotedstr(xCorre);
  Dm1.cdsQry.Close;
  Dm1.cdsQry.DataRequest(xSql);
  Dm1.cdsQry.Open;
  //** False = para que siga repitiendo la busqueda
  If Dm1.cdsQry.FieldByName('TOTAL').Asfloat > 0 then
    xPaso := False
  else //** sino graba en la tabla auxiliar (cre201)
  begin
    xSql := 'INSERT INTO '+xTabla+' (NUMERO) VALUES (';
    If xCorreCampo = 'CREDID' then
      xSql := xSql + quotedstr(xCorreCadena+xCorre)+')'
    else
      xSql := xSql + quotedstr(xCorre)+')';
    DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

    If StrtoInt(xCorre) = 1 then
    begin
      If xCorreCampo = 'CREDID' then
        xSql := 'INSERT INTO CRE206 ('+xCorreCampo+',CREAREA,TIPO) VALUES ('+quotedstr(xCorreCadena+xCorre)+
                ','+quotedstr(xArea)+','+quotedstr(xTipocorre)+')'
      else
        xSql := 'INSERT INTO CRE206 ('+xCorreCampo+',CREAREA,TIPO) VALUES ('+quotedstr(xCorre)+
                ','+quotedstr(xArea)+','+quotedstr(xTipocorre)+')';
    end
    else
    begin
      If xCorreCampo = 'CREDID' then
        xSQL :='UPDATE CRE206 SET '+xCorreCampo+' ='+quotedstr(xCorreCadena+xCorre)+' '+
               'WHERE CREAREA ='+quotedstr(xArea)+' '+
               'AND SUBSTR(CREDID,1,2)='+quotedstr(copy(xCorreCadena,1,2))+' '+
               'AND SUBSTR(CREDID,3,4)='+quotedstr(copy(xCorreCadena,3,4))+' '+
               'AND SUBSTR(CREDID,7,2)='+quotedstr(copy(xCorreCadena,7,2))+' '+
               'AND TIPO ='+quotedstr(xTipocorre)
      else
        xSql :='UPDATE CRE206 SET '+xCorreCampo+' ='+quotedstr(xCorre)+' '+
               'WHERE CREAREA ='+quotedstr(xArea)+' '+
               'AND TIPO ='+quotedstr(xTipocorre);
               //'WHERE CREAREA ='+quotedstr(xArea);
    end;
    DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
  end;
end;

procedure TFAsociados.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
   Teclado: TKeyboardState;
begin
  GetKeyboardState(Teclado);
  If ((Teclado[VK_F10	] and 128)=128 ) and Z2sbtnMarcar.Enabled then
   CargaMarca;
end;

procedure TFAsociados.Z2sbtnMarcarClick(Sender: TObject);
begin
 CargaMarca;
 Z2sbtnMarcar.enabled := False;
end;

procedure TFAsociados.CargaMarca;
var
 sSql,xEstid,xCampos,xSql : String;
begin
 xSql := 'SELECT * FROM APO304 WHERE FECACT='+quotedstr(DateToStr(xFechasys))+
         ' AND ASOID ='+quotedstr(dbeCodigo.text);
 Dm1.cdsQry1.Close;
 Dm1.cdsQry1.DataRequest(xsql);
 Dm1.cdsQry1.Open;
 If Dm1.cdsQry1.RecordCount = 0 then
  begin
   xSql := 'INSERT INTO APO304 (OFDESID,ASOID,USEID,UPROID,FECACT,USUARIO,HREG,'+
           'FREG,FLGMARCA,FLGDBF) VALUES ('+quotedstr(xOfides)+
           quotedstr(dbeCodigo.text)+','+quotedstr(dblcUSE.text)+','+
           quotedstr(dblcUProceso.text)+','+quotedstr(DateToStr(xFechasys))+','+
           quotedstr(dm1.wUsuario)+','+wRepHorServi+','+wRepFecServi+','+
           quotedstr('S')+','+quotedstr('N')+')';
  end
 else
  If (Dm1.cdsQry1.FieldByName('FLGMARCA').AsString = 'N') and
     (Dm1.cdsQry1.FieldByName('FLGDBF').AsString = 'S') then
   begin
    xSql := 'UPDATE APO304 SET FLGMARCA='+quotedstr('S')+','+
            ' FLGDBF ='+quotedstr('N')+' where FECACT='+quotedstr(DateToStr(xFechasys))+
            ' AND ASOID ='+quotedstr(dbeCodigo.text);
   end;
 DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
 Z2sbtnMarcar.enabled := False;
end;

procedure TFAsociados.BuscaArchivos;
begin
 wRutaFTPPri := wRutaFTP;
 xArchivo := wRutaFTPPri+'PLANTILLA.DBF';
 CambiaDirecFTP(wRutaFTPPri);

end;


procedure TFAsociados.CambiaDirecFTP(pNombre: String);
begin
  DM1.DCOM1.AppServer.DirectorioFTP(pNombre,xHallo);
end;

procedure TFAsociados.BitBtn1Click(Sender: TObject);
begin
fcgbNroDni.Visible := False;
end;

end.



