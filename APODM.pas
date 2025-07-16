unit APODM;

// Inicio Uso Estándares: 01/08/2011
// Unidad               : APODM
// Formulario           : DM1
// Fecha de Creación    : 15/12/2003
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Modulo de Datos
// Actualizaciones      :
// HPC_201501_APO       : 06/01/2015 - Cambio de DCOM a Socket

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, DBGrids,
  variants, Db, Wwdatsrc, DBClient, wwclient, MConnect, RecError, comctrls, INIFiles,
  // Inicio HPC_201501_APO  - Cambio de DCOM a Socket
  Excel2000, OleServer, ExcelXP, SConnect,
  winsock;
  // Fin    HPC_201501_APO  - Cambio de DCOM a Socket

type
  structSaldosAux = Record
    CIAID   ,
    CLAUXID ,
    AUXID   ,
    MONTOMN ,
    MONTOME ,
    MTOSLOC ,
    MTOSEXT : String    ;
    FECHA   : TDateTime ;
  end;


  TDM1 = class(TDataModule)
  // Inicio HPC_201501_APO  - Cambio de DCOM a Socket
  // DCOM1: TDCOMConnection;
  // Fin    HPC_201501_APO  - Cambio de DCOM a Socket
    cdsUsuarios: TwwClientDataSet;
    cdsMGrupo: TwwClientDataSet;
    cdsGrupos: TwwClientDataSet;
    cdsAcceso: TwwClientDataSet;
    dsUsuarios: TwwDataSource;
    dsMGrupo: TwwDataSource;
    dsGrupos: TwwDataSource;
    dsAcceso: TwwDataSource;
    cdsAsociados: TwwClientDataSet;
    cdsTransacciones: TwwClientDataSet;
    dsAsociados: TwwDataSource;
    dsTransacciones: TwwDataSource;
    cdsUse: TwwClientDataSet;
    cdsSituacAsoc: TwwClientDataSet;
    cdsTipoAsoc: TwwClientDataSet;
    dsSituacAsoc: TwwDataSource;
    dsTipoAsoc: TwwDataSource;
    dsUse: TwwDataSource;
    cdsQry: TwwClientDataSet;
    dsQry: TwwDataSource;
    cdsTMoneda: TwwClientDataSet;
    dsTMoneda: TwwDataSource;
    cdsBcos: TwwClientDataSet;
    dsBcos: TwwDataSource;
    cdsCtaCtes: TwwClientDataSet;
    dsCtaCtes: TwwDataSource;
    cdsFormaPago: TwwClientDataSet;
    dsFormaPago: TwwDataSource;
    cdsAsociados1: TwwClientDataSet;
    dsAsociados1: TwwDataSource;
    dsDetReclamo: TwwDataSource;
    cdsReclMotivo: TwwClientDataSet;
    cdsReclSit: TwwClientDataSet;
    cdsReclamo: TwwClientDataSet;
    cdsDetReclamo: TwwClientDataSet;
    dsReclamo: TwwDataSource;
    dsReclSit: TwwDataSource;
    dsReclMotivo: TwwDataSource;
    dsUse1: TwwDataSource;
    cdsUse1: TwwClientDataSet;
    cdsReclamo1: TwwClientDataSet;
    dsReclamo1: TwwDataSource;
    cdsDevolucion: TwwClientDataSet;
    cdsDevMotivo: TwwClientDataSet;
    dsDevolucion: TwwDataSource;
    dsDevMotivo: TwwDataSource;
    cdsAgenciaBco: TwwClientDataSet;
    dsAgenciaBco: TwwDataSource;
    cdsDLabo: TwwClientDataSet;
    dsDLabo: TwwDataSource;
    cdsDFam: TwwClientDataSet;
    dsDFam: TwwDataSource;
    cdsEjecuta: TwwClientDataSet;
    dsEjecuta: TwwDataSource;
    cdsCtasBco: TwwClientDataSet;
    dsCtasBco: TwwDataSource;
    cdsResol: TwwClientDataSet;
    dsResol: TwwDataSource;
    cdsDSocioE: TwwClientDataSet;
    dsDSocioE: TwwDataSource;
    cdsUSES: TwwClientDataSet;
    dsUSES: TwwDataSource;
    cdsUPro: TwwClientDataSet;
    dsUPro: TwwDataSource;
    cdsUPago: TwwClientDataSet;
    dsUPago: TwwDataSource;
    cdsTResol: TwwClientDataSet;
    dsTResol: TwwDataSource;
    cdsTPension: TwwClientDataSet;
    dsTPension: TwwDataSource;
    cdsCEdu: TwwClientDataSet;
    dsCEdu: TwwDataSource;
    cdsCAso: TwwClientDataSet;
    dsCAso: TwwDataSource;
    cdsTUSE: TwwClientDataSet;
    dsTUSE: TwwDataSource;
    cdsOfDes: TwwClientDataSet;
    dsOfDes: TwwDataSource;
    cdsCViv: TwwClientDataSet;
    dsCViv: TwwDataSource;
    cdsDpto: TwwClientDataSet;
    cdsTVia: TwwClientDataSet;
    cdsDist: TwwClientDataSet;
    cdsTZona: TwwClientDataSet;
    cdsTDoc: TwwClientDataSet;
    cdsUbigeo: TwwClientDataSet;
    cdsProvin: TwwClientDataSet;
    cdsEstCiv: TwwClientDataSet;
    dsTDoc: TwwDataSource;
    dsEstCiv: TwwDataSource;
    dsUbigeo: TwwDataSource;
    dsProvin: TwwDataSource;
    dsDpto: TwwDataSource;
    dsTVia: TwwDataSource;
    dsDist: TwwDataSource;
    dsTZona: TwwDataSource;
    cdsPais: TwwClientDataSet;
    dsPais: TwwDataSource;
    cdsGradoI: TwwClientDataSet;
    dsGradoI: TwwDataSource;
    cdsGradoA: TwwClientDataSet;
    dsGradoA: TwwDataSource;
    cdsProf: TwwClientDataSet;
    dsProf: TwwDataSource;
    dsTRela: TwwDataSource;
    cdsTRela: TwwClientDataSet;
    cdsAsoB: TwwClientDataSet;
    dsAsoB: TwwDataSource;
    cdsAsoC: TwwClientDataSet;
    dsAsoC: TwwDataSource;
    cdsSitReclamo: TwwClientDataSet;
    dsSitReclamo: TwwDataSource;
    cdsFPagoAporte: TwwClientDataSet;
    dsFPagoAporte: TwwDataSource;
    cdsFPagoDevolucion: TwwClientDataSet;
    dsFPagoDevolucion: TwwDataSource;
    cdsTransaccion: TwwClientDataSet;
    dsTransaccion: TwwDataSource;
    cdsTransDevol: TwwClientDataSet;
    dsTransDevol: TwwDataSource;
    cdsRegCob: TwwClientDataSet;
    dsRegCob: TwwDataSource;
    cdsCobxUse: TwwClientDataSet;
    dsCobxUse: TwwDataSource;
    cdsAutdisk: TwwClientDataSet;
    dsAutdisk: TwwDataSource;
    cdsDetRegGlob: TwwClientDataSet;
    dsDetRegGlob: TwwDataSource;
    cdsAso: TwwClientDataSet;
    dsAso: TwwDataSource;
    cdsSAso: TwwClientDataSet;
    dsSAso: TwwDataSource;
    cdsAportes: TwwClientDataSet;
    dsAportes: TwwDataSource;
    cdsBancos: TwwClientDataSet;
    dsBancos: TwwDataSource;
    cdsSQL: TwwClientDataSet;
    dsSQL: TwwDataSource;
    cdsCtasAso: TwwClientDataSet;
    dsCtasAso: TwwDataSource;
    cdsSexo: TwwClientDataSet;
    dsSexo: TwwDataSource;
    cdsLugNac: TwwClientDataSet;
    dsLugNac: TwwDataSource;
    cdsCuentas: TwwClientDataSet;
    dsCuentas: TwwDataSource;
    cdsRepresentante: TwwClientDataSet;
    dsRepresentante: TwwDataSource;
    cdsFPago: TwwClientDataSet;
    dsFPago: TwwDataSource;
    cdsSitRepr: TwwClientDataSet;
    dsSitRepr: TwwDataSource;
    cdsFRepr: TwwClientDataSet;
    dsFRepr: TwwDataSource;
    cdsSitCta: TwwClientDataSet;
    dsSitCta: TwwDataSource;
    cdsRepresentante1: TwwClientDataSet;
    dsRepresentante1: TwwDataSource;
    cdsTAso: TwwClientDataSet;
    dsTAso: TwwDataSource;
    cdsQry2: TwwClientDataSet;
    dsqry2: TwwDataSource;
    cdsDiario: TwwClientDataSet;
    dsDiario: TwwDataSource;
    cdsReporte1: TwwClientDataSet;
    cdsReporte2: TwwClientDataSet;
    cdsReporte3: TwwClientDataSet;
    dsReporte1: TwwDataSource;
    dsReporte2: TwwDataSource;
    dsReporte3: TwwDataSource;
    dsDeltaSet: TwwDataSource;
    cdsResultSet: TwwClientDataSet;
    cdsDeltaSet: TwwClientDataSet;
    dsCuentaEst: TwwDataSource;
    cdsCuentaEst: TwwClientDataSet;
    cdsTransferencia: TwwClientDataSet;
    dsTransferencia: TwwDataSource;
    cdsCia: TwwClientDataSet;
    dsCia: TwwDataSource;
    cdsPeriodo: TwwClientDataSet;
    dsPeriodo: TwwDataSource;
    dsTipDesem: TwwDataSource;
    cdsTipDesem: TwwClientDataSet;
    cdsQry1: TwwClientDataSet;
    dsQry1: TwwDataSource;
    cdsOficio: TwwClientDataSet;
    dsOficio: TwwDataSource;
    cdsAsoX: TwwClientDataSet;
    dsAsoX: TwwDataSource;
    cdsGarantia: TwwClientDataSet;
    dsGarantia: TwwDataSource;
    cdsCbcos: TwwClientDataSet;
    dsCbcos: TwwDataSource;
    dsConsulta: TwwDataSource;
    cdsConsulta: TwwClientDataSet;
    dsAgencias: TwwDataSource;
    cdsAgencias: TwwClientDataSet;
    cdsQry3: TwwClientDataSet;
    dsQry3: TwwDataSource;
    cdsSaldoTlfnGrab: TwwClientDataSet;
    dsSaldoTlfnGrab: TwwDataSource;
    dsRegCxP: TwwDataSource;
    cdsRegCxP: TwwClientDataSet;
    cdsReporte: TwwClientDataSet;
    dsReporte: TwwDataSource;
    cdsQry4: TwwClientDataSet;
    dsQry4: TwwDataSource;
    cdsUser: TwwClientDataSet;
    dsUser: TwwDataSource;
    ExcelApp: TExcelApplication;
    ExcelBook: TExcelWorkbook;
    WS: TExcelWorksheet;
    cdsqry6: TwwClientDataSet;
    dsQry6: TwwDataSource;
    cdsQry5: TwwClientDataSet;
    dsQry5: TwwDataSource;
  // Inicio HPC_201501_APO  - Cambio de DCOM a Socket
    DCOM1: TSocketConnection;
  // Fin    HPC_201501_APO  - Cambio de DCOM a Socket
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure cdsTransaccionesReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
  private
      FormatCel: array of OleVariant;
    { Private declarations }
  public
    { Public declarations }

    // Inicio HPC_201501_APO  - Cambio de DCOM a Socket
    cIP, wOfiId, widepc, ideconex, fechorcon :String;
    // Fin  HPC_201501_APO  - Cambio de DCOM a Socket
    xServicioWebGeneral:String;
    wObjetoDescr: String;
    wObjetoForma: String;
    wObjetoNombr: String;
    wObjetoDesPr: String;
    wGrupoTmp   : String;
    wComponente : TControl;

    wUsuario ,
    wModo ,
    wGrupo ,
    wAdmin , wRepFecServ,
    wModulo,wTDatos :  string;
    wAnchoPu  : Integer;
    wAnchoArt : Integer;
    wAnchoProv: Integer;
    wNoPanel  : Integer;
    wReqComp  : String;
    wRptCia   : String;
    wTMonExt   : string; // Tipo de Moneda extranjera oficial (normalmente dólares)
    wTMonLoc   : string;
    wTipoCambio : String;
    xFlg :String;
    tFlg :String;
    // Declaración Proceso de Cuenta Individual
    xInteres, xBonus, xSaldo : Double;
    xSalAnt, xSalBon :Double;
    wInt, wBon : Double;
    wSRV, sCLose, prAPOSEC, prAPOFDEV, prASOID, prTRANSFOPE, prFREG : String;
    prTRANSMTO, prTRANSMTODEV : Double;
    xNext : Boolean;
    dtFechaSistema        : TDate ;
    // Declaración Proceso de Cuenta Individual
    function MaxValue(const sDetail : String; CD : TDataSet ): String;
  	procedure AplicaDatos(wCDS: TwwClientDataSet; wNomArch : String);
		procedure ControlTran;
    procedure ExecSQL(const cSQL: String);
    function StrZero( wNumero : String; wLargo : Integer ) : string;
    function UltimoNum(wPrv,wTabla,wCampo,wWhere:string):string;
    function DisplayDescrip(wPrv,wTabla,wCampos,wWhere,wResult:string):string;
    procedure Filtracds( xxCds:TwwClientDataSet; xxSQL:String; xxCampo : string ='' );
    function ExisteError(ctrlActual: TwinControl; wCondicional: boolean; wMensaje: String): Boolean;
    function OperClientDataSet( cdsOrigen : TwwClientDataSet; wExpresion, wCondicion : String  ) : Double;
    function ObtenWhere( xSQL : String): String;
    procedure FiltraTabla( xxCds:TwwClientDataSet; xxArchivo, xxCampo, xxOrden :String  );
    //function MaxSQL(const sTabla, sMxCampo : String): String;
    function MaxSQL(const sTabla, sMxCampo, sCondicion : String): String;
    function BuscaCodMod(const sTabla, sMxCampo: String): String;
    function FRound(xReal:DOUBLE;xEnteros,xDecimal:Integer):Double;
    function NombreMes(wwMes:String):String;

    // Declaración Proceso de Cuenta Individual
    procedure ProcesarCtaIndividual(ASOID:String; xPBar:TProgressBar);
    Procedure Procesa(APOSEC : String; MONTO : Double; TRANSMTODEV: Double; APOFDEV: String; ASOID: String; TRANSFOPE: String; FREG: String);
    procedure VerificaHueco( xAPOSEC, ckAPOSEC : String);
    Function  PrimerSalAnt( ASOID : String) :Double;
    Function  ObtieneintBon( ApoSec:String):Double;
    procedure MaxProgressB( xProgressBar:TProgressBar;xCountProgressBar:Integer);
    procedure PBVisible( xPBVisible:TProgressBar);
    procedure PBVisibleF( xPBVisible:TProgressBar);
    procedure PositionProgressB( xProgressBar:TProgressBar);
    // Declaración Proceso de Cuenta Individual
    procedure AccesosUsuariosR(xxModulo,xxUsuario,xxTipo:String; xxForma:TForm);
    function BuscaObjeto( Const xNombre:String; xForm:TForm):TControl;
    Procedure AccesosUsuarios(xxModulo,xxUsuario,xxTipo,xxForma:String);
    Function NumtoStr(wNumero:double):string;							// funcion convierte numero a caracteres
    function  NumLetra(const mNum: Currency; const iIdioma, iModo: Smallint): String;
    procedure LimpiaClientDataset(cds : TwwClientDataset);

    //Eduardo Alva Aliaga    17/01/2008
    function VerificaAcceso(Pass, EncDes : string): string;
    function CrgArea(xUsuario:String ):String;
		procedure HojaExcel(Tit: string; TDs: TDataSource; TDb: TDBGrid);
 		procedure FormatosCeldas(N: Integer ; TDs: TDataSource);
    function CountReg(xSQL:String):Integer;
    function FechaSis(): tDateTime;
    function FechasOutPut(xFInput : tDateTime): tDateTime;
    //---------

    // Inicio HPC_201501_APO  - Cambio de DCOM a Socket
    function ObtenerIpdeNetbios(Host: string): string;
    function ComputerName: string;
    // Fin HPC_201501_APO  - Cambio de DCOM a Socket

 end;

var
  DM1: TDM1;
  wActuaPresu : boolean;
  wModo : String;
  SRV_E : String;
  SRV_D : String;
  SRV_V : String;
  xSQL, xBorrar : String;
  wRptCia, wRutaRpt, wUrqCia, xFec_Sis, xHor_Sis : String;
  xLogAsoid,xLogCodMo, ErrorCount : Integer;
  wCiaDef : String;
  wRutaFTP, wFormatFecha, wFormatHoras, wReplacCeros, wFormatFServ, wRepFecServi, wRepHorServi , wRepTimeServi, wRepFuncDate, wRepFuncChar : String;



  procedure cdsPost( xxCds:TwwClientDataSet);
	function  FRound(xReal : double; xEnteros, xDecimal : Integer):double;

implementation

// Inicio HPC_201501_APO  - Cambio de DCOM a Socket
uses MsgDlgs, APO001, APO202, APO020;
// Fin    HPC_201501_APO  - Cambio de DCOM a Socket

{$R *.DFM}


// Inicio HPC_201501_APO  - Cambio de DCOM a Socket
function TDM1.ObtenerIpdeNetbios(Host: string): string;
var
  WSAData: TWSADATA;
  HostEnt: phostent;
begin
  Result:= '';
  if WSAStartup(MAKEWORD(1, 1), WSADATA) = 0 then
  begin
    HostEnt:= gethostbyname(PChar(Host));
    if HostEnt <> nil then
      Result:= String(inet_ntoa(PInAddr(HostEnt.h_addr_list^)^));
    WSACleanup;
  end;
end;
// Fin  HPC_201501_APO  - Cambio de DCOM a Socket


// Inicio HPC_201501_APO  - Cambio de DCOM a Socket
function TDM1.ComputerName: string;
var
  Buffer: array[ 0..100 ] of Char;
  MaxSize: Cardinal ;
begin
  MaxSize := SizeOf( Buffer );
  if not GetComputerName( @Buffer, MaxSize ) then
    raise Exception.Create( 'No puedo determinar el nombre de la máquina' );
  Result := StrPas( @Buffer );
end;
// Fin  HPC_201501_APO  - Cambio de DCOM a Socket


function FRound(xReal:double; xEnteros, xDecimal:Integer):double;
var
  xParteDec, xflgneg : String;
  xDec : Integer;
  xMultiplo10, xUltdec, xNReal : Double;
begin
  Result:=0;
  xflgneg:='0';
  xMultiplo10:=0;

  if xReal<0 Then
  begin
    xflgneg:='1';
    xReal:=xReal*-1;
  end;

  if xReal=0 Then exit;
  // primer redondeo a un decimal + de lo indicado en los parámetros
  xDec := xDecimal+1;
  if xDec=0 Then xMultiplo10:=1;
  if xDec=1 Then xMultiplo10:=10;
  if xDec=2 Then xMultiplo10:=100;
  if xDec=3 Then xMultiplo10:=1000;
  if xDec=4 Then xMultiplo10:=10000;
  if xDec=5 Then xMultiplo10:=100000;
  if xDec=6 Then xMultiplo10:=1000000;
  if xDec=7 Then xMultiplo10:=10000000;
  xParteDec := floattostr(int(xReal*xMultiplo10 - (int(xReal)*xMultiplo10)));
  if length(xParteDec)<xDec Then xParteDec:=DM1.strZero(xParteDec,xDec);

  if length(xParteDec)>=xDec Then
    xultdec:=  strtofloat(copy(xParteDec,xDec,1))
  Else
  begin
    xUltDec := 0;
  end;
  xNReal := int(xReal*xMultiplo10/10);
  if xultdec>=5 Then xNReal := xNReal+1;

  if xflgneg='1' Then
  begin
    Result := (xNReal/(xMultiplo10/10))*-1;
  end
  Else
  begin
    Result := xNReal/(xMultiplo10/10);
  end;
end;

procedure cdsPost( xxCds:TwwClientDataSet);
var
	i:integer;
begin
  for i:=0 to xxCds.Fields.Count-1 do
  begin
  	if xxCds.Fields[i].Classtype=TStringField Then
    begin
    	if xxCds.Fields[i].AsString='' Then xxCds.Fields[i].clear;
    end;
   	if xxCds.Fields[i].Classtype=TMemoField Then
    begin
    	if xxCds.Fields[i].AsString='' Then xxCds.Fields[i].AsString:='.';
    end;
	end;
end;

procedure TDM1.ExecSQL(const cSQL: String);
begin
  DCOM1.AppServer.EjecutaSQL(cSQL);
end;

procedure TDM1.AplicaDatos(wCDS: TWWClientDataSet; wNomArch : String);    //Grabar
var
  {Delta,} Results, OwnerData : OleVariant;
begin
	Try
		if ( SRV_D = 'DB2NT' ) or ( SRV_D = 'DB2400' ) Then
			if xBorrar = '0' Then
			  DM1.DCOM1.AppServer.ParamDSPGraba('1', wNomArch);
		    wCDS.CheckBrowseMode;
		    Results:=DCOM1.AppServer.AS_ApplyUpdates(wCDS.ProviderName,wcds.Delta,-1,ErrorCount,OwnerData);
		    cdsResultSet.Data:=Results;
		    wCDS.Reconcile(Results);
	Finally
		if (SRV_D = 'DB2NT') or (SRV_D = 'DB2400') Then
			if xBorrar = '0' Then
			  DM1.DCOM1.AppServer.ParamDSPGraba('0', wNomArch);
	end;

	{wCDS.CheckBrowseMode;
  //if (VarIsNull(wcds.Delta)) or (VarIsEmpty(wcds.Delta)) Then
  //	Exit;
  Results:=
  DCOM1.AppServer.AS_ApplyUpdates(wCDS.ProviderName,wcds.Delta,-1,ErrorCount,OwnerData);
  cdsResultSet.Data:=Results;
  wCDS.Reconcile(Results);}
end;

procedure TDM1.ControlTran;
begin
	ErrorCount :=0;
  if (ErrorCount = 0 ) and ((cdsTransacciones.ChangeCount > 0) or (cdsTransacciones.Modified))Then
      DM1.AplicaDatos( DM1.cdsTransacciones, 'TRANSACCIONES'   );
  if (ErrorCount = 0 ) and ((cdsReclamo.ChangeCount > 0)   or (cdsReclamo.Modified)) Then
      DM1.AplicaDatos( DM1.cdsReclamo, 'RECLAMO'   );
  if (ErrorCount = 0 ) and ((cdsDetReclamo.ChangeCount > 0)   or (cdsDetReclamo.Modified)) Then
      DM1.AplicaDatos( DM1.cdsDetReclamo, 'DETRECLAMO'   );
  if (ErrorCount = 0 ) and ((cdsSitReclamo.ChangeCount > 0)   or (cdsSitReclamo.Modified)) Then
      DM1.AplicaDatos( DM1.cdsSitReclamo, 'SITRECLAMO'   );
  if (ErrorCount = 0 ) and ((cdsDevolucion.ChangeCount > 0)   or (cdsDevolucion.Modified)) Then
      DM1.AplicaDatos( DM1.cdsDevolucion, 'DEVOLUCION'   );
  if (ErrorCount = 0 ) and ((cdsTransDevol.ChangeCount > 0)   or (cdsTransDevol.Modified)) Then
      DM1.AplicaDatos( DM1.cdsTransDevol, 'TRANSDEVOL'   );
  if (ErrorCount = 0 ) and ((cdsAutdisk.ChangeCount > 0)   or (cdsAutdisk.Modified)) Then
      DM1.AplicaDatos( DM1.cdsAutdisk, 'AUTDISK'   );
  if (ErrorCount = 0 ) and ((cdsCobxUse.ChangeCount > 0)   or (cdsCobxUse.Modified)) Then
      DM1.AplicaDatos( DM1.cdsCobxUse, 'COBXUSE'   );
  if (ErrorCount = 0 ) and ((cdsAso.ChangeCount > 0)   or (cdsAso.Modified)) Then
      DM1.AplicaDatos( DM1.cdsAso, 'ASOCIADOS'   );
  if (ErrorCount = 0 ) and ((cdsDLabo.ChangeCount > 0)   or (cdsDLabo.Modified)) Then
      DM1.AplicaDatos( DM1.cdsDLabo, 'DLABO'   );
  if (ErrorCount = 0 ) and ((cdsDFam.ChangeCount > 0)   or (cdsDFam.Modified)) Then
      DM1.AplicaDatos( DM1.cdsDFam, 'DFAM'   );
  if (ErrorCount = 0 ) and ((cdsCtasBco.ChangeCount > 0)   or (cdsCtasBco.Modified)) Then
      DM1.AplicaDatos( DM1.cdsCtasBco, 'CTASBCO'   );
  if (ErrorCount = 0 ) and ((cdsResol.ChangeCount > 0)   or (cdsResol.Modified)) Then
      DM1.AplicaDatos( DM1.cdsResol, 'RESOL' );
  if (ErrorCount = 0 ) and ((cdsDSocioE.ChangeCount > 0)   or (cdsDSocioE.Modified)) Then
      DM1.AplicaDatos( DM1.cdsDSocioE, 'DSOCIOE' );
  if (ErrorCount = 0 ) and ((cdsRegCob.ChangeCount > 0)   or (cdsRegCob.Modified)) Then
      DM1.AplicaDatos( DM1.cdsRegCob, 'REGCOB' );
	if (ErrorCount = 0 ) and ((cdsRepresentante.ChangeCount > 0)   or (cdsRepresentante.Modified)) Then
      DM1.AplicaDatos( DM1.cdsRepresentante, 'REPRESENTANTE' );
	if (ErrorCount = 0 ) and ((cdsOficio.ChangeCount > 0)   or (cdsOficio.Modified)) Then
      DM1.AplicaDatos( DM1.cdsOficio, 'OFICIO' );                                                   
end;

function TDM1.DisplayDescrip(wPrv, wTabla, wCampos, wWhere, wResult : string):string;
var
	xSQL : string;
begin
  xSQL := '';
  xSQL := 'SELECT '+wCampos+' FROM '+wTabla;
  if length(wWhere)>0 Then xSQL:=xSQL+' WHERE '+wWhere;

  DM1.cdsQry.Filter   := '';
  DM1.cdsQry.Filtered := False;
  DM1.cdsQry.IndexFieldNames := '';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSQL);
  DM1.cdsQry.Open;
  Result:=   DM1.cdsQry.FieldByName(wResult).Asstring;
end;

function TDM1.UltimoNum(wPrv, wTabla, wCampo, wWhere : string):string;
var
  xSQL : string;
begin
  xSQL := '';
  xSQL := 'SELECT MAX('+WCAMPO+') as WMAXIMO from '+wTabla;
  if length(wWhere)>0 Then xSQL:=xSQL+' WHERE '+wWhere;

  cdsQry.Close;
  cdsQry.DataRequest(xSQL);
  cdsQry.Open;
  if cdsQry.FieldbyName('WMAXIMO').Value=Null Then
  	Result:='1'
  Else
  if cdsQry.fieldbyName('WMAXIMO').asString = '' Then
  	Result := '1'
  Else
  	Result:=inttostr(strtoint(cdsQry.FieldbyName('WMAXIMO').Value)+1);
end;

// Funcion que devuelve ceros a la Izquierda.
function TDM1.StrZero(wNumero:String; wLargo:Integer):string;
var
	i : integer;
  s : string;
begin
  s := '';
  for i:=1 to wLargo do
  begin
  	s := s+'0';
  end;
  s := s+trim(wNumero);
  Result:= copy(s,length(s)-(wLargo-1),wLargo);
end;

function TDM1.NombreMes(wwMes:String):String;
begin
  if Length(wwMes) = 0 then
  begin
    Result := '';
    Exit;
  end;
  If StrToInt(wwMes) = 1 Then Result := 'Enero';
  If StrToInt(wwMes) = 2 Then Result := 'Febrero';
  If StrToInt(wwMes) = 3 Then Result := 'Marzo';
  If StrToInt(wwMes) = 4 Then Result := 'Abril';
  If StrToInt(wwMes) = 5 Then Result := 'Mayo';
  If StrToInt(wwMes) = 6 Then Result := 'Junio';
  If StrToInt(wwMes) = 7 Then Result := 'Julio';
  If StrToInt(wwMes) = 8 Then Result := 'Agosto';
  If StrToInt(wwMes) = 9 Then Result := 'Setiembre';
  If StrToInt(wwMes) = 10 Then Result := 'Octubre';
  If StrToInt(wwMes) = 11 Then Result := 'Noviembre';
  If StrToInt(wwMes) = 12 Then Result := 'Diciembre';
end;

procedure TDM1.Filtracds( xxCds:TwwClientDataSet; xxSQL:String; xxCampo : string ='' );
begin
	if Length( xxSQL ) > 0 Then
  begin
  	xxCds.Close;
    xxCds.DataRequest( xxSQL );
  end;
  xxCds.Open;
end;

function TDM1.ExisteError(ctrlActual: TwinControl; wCondicional: boolean; wMensaje: String): boolean;
begin
  inherited;
  Result := false;
  if wCondicional Then
  begin
    if trim(wMensaje) <> '' Then
    begin
      ShowMessage(wMensaje);
      ctrlActual.setFocus ;
    end;
    Result := true;
  end;
end;

function TDM1.ObtenWhere( xSQL : String): String;
var
	xIndice   : Integer ;
begin
  xSQL      := AnsiUpperCase( xSQL ) ;
  xIndice   := Pos ( 'WHERE' , xSQL ) ;
  if xIndice <> 0 Then
  	Result := '(' + copy(xSQL , xIndice + 6 ,length(xSQL)) +')'
  Else
  	Result := '';
end;

Function TDM1.OperClientDataSet( cdsOrigen : TwwClientDataSet; wExpresion, wCondicion : String  ) : Double;
var
  cdsClone    : TwwClientDataSet;
  bmk         : TBookmark;
  Agg         : TAggregate;
begin
  Result := 0;
  If trim(wExpresion)= '' Then Exit;
  bmk:=cdsOrigen.GetBookmark;
  cdsClone    := TwwClientDataSet.Create(nil);
  try
    with cdsClone do
    begin
      CloneCursor(cdsOrigen,True);
      Agg := Aggregates.Add;
      Agg.AggregateName := 'OPER';
      Agg.Expression := wExpresion;
      Agg.Active := True;
      If Trim(wCondicion)<>'' Then
      begin
        Filtered     := False;
        Filter       := wCondicion;
        Filtered     := True;
      end;
      if Aggregates.Items[Aggregates.IndexOf('OPER')].Value<>NULL Then
         Result := Aggregates.Items[Aggregates.IndexOf('OPER')].Value;
      Aggregates.Clear;
    end;
    cdsOrigen.GotoBookmark(bmk);
    cdsOrigen.FreeBookmark(bmk);
  finally
    cdsClone.Free;
  end;
end;

procedure TDM1.FiltraTabla( xxCds:TwwClientDataSet; xxArchivo, xxCampo, xxOrden : String  );
var
	xFiltro, xSQL2 : String;
begin
  DM1.cdsAcceso.Open;
  DM1.cdsAcceso.Filtered := False;
  DM1.cdsAcceso.Filter   := '';
  DM1.cdsAcceso.Filter   := 'NTABLA='+''''+xxArchivo+'''';
  DM1.cdsAcceso.Filtered := True;

  xFiltro := '';
  DM1.cdsAcceso.First;
  while not DM1.cdsAcceso.Eof do
  begin
  	If Length(xFiltro)=0 Then
    	xFiltro:=xxCampo+'='+''''+DM1.cdsAcceso.FieldByName('CODIGO').AsString+''''
    Else
    	xFiltro:=xFiltro+' OR '+xxCampo+'='+''''+DM1.cdsAcceso.FieldByName('CODIGO').AsString+'''';
    DM1.cdsAcceso.Next;
  end;

  if Length(Trim(xFiltro))>0 Then
  begin
    xSQL2 := 'SELECT * FROM '+ xxArchivo+' WHERE '+xFiltro;
    if Length(Trim(xxOrden))>0 Then
    	xSQL2:=xSQL2+' ORDER BY '+xxOrden;

    xxCds.Close;
    xxCds.DataRequest( xSQL2 );
  end
  Else
  begin
  	xSQL2 := 'SELECT * FROM '+ xxArchivo;
    if Length(Trim(xxOrden))>0 Then
    	xSQL2:=xSQL2+' ORDER BY '+xxOrden;

    xxCds.Close;
    xxCds.DataRequest( xSQL2 );
  end;

  xxCds.Open;
end;

procedure TDM1.DataModuleCreate(Sender: TObject);
Var
  // Inicio HPC_201501_APO  - Cambio de DCOM a Socket
   D, M, Y : Word;
   xWhere, xSQL: String;
   sSQL : String;
   inifile: TIniFile;
  // Fin   HPC_201501_APO  - Cambio de DCOM a Socket
Begin
  // Inicio HPC_201501_APO  - Cambio de DCOM a Socket
   // <>'' Cuando el servidor se ejecuta Localmente
   //  =''  Ejecucion Servidor Remoto
   DCOM1.Connected := False;

  // LEE LOS DATOS DE CONEXION
  if ParamStr(1)='' then
  begin
     inifile:=TIniFile.Create('C:\SOLExes\DM_Conf_CLI.ini');
     DCOM1.Address:=IniFile.ReadString('TCPIP','ADDRESS','');
     DCOM1.Port   :=STRTOINT( IniFile.ReadString('TCPIP','PORT','') );
     wSRV:=IniFile.ReadString('MOTOR','NAME','');
     xServicioWebGeneral:= IniFile.ReadString('APIWEB','GENERAL','');     
  end;

  // OBTIENE EL IP DE LA PC
  try
      cIP:= ObtenerIpdeNetbios( computerName);
  except
      ShowMessage( 'ERROR de Conexión.');
      DCOM1.Connected:=False;
      Exit;
  end;

  // Conexion con la Aplicación Servidor
  try
     DCOM1.Connected:=true;
  except
     ShowMessage( 'ERROR de Conexión.');
     Exit;
  end;

  // Accesos al Sistemas
  wModulo := 'APO';
  sClose  := '0';
  FCtrlAcceso := TFCtrlAcceso.Create(Application);
  FCtrlAcceso.ShowModal;

  if FCtrlAcceso.cAccesoSistema='S' then
  begin
     // SI Ingreso al Sistema
     wUsuario := FCtrlAcceso.dbeUsuario.Text;
     FCtrlAcceso.free;
  end
  else
  begin
     // NO Ingreso al Sistema
     sClose:='1';
     DCOM1.Connected:=False;
     FCtrlAcceso.free;
     Exit;
  end;
  // Fin HPC_201501_APO  - Cambio de DCOM a Socket

  if sClose<>'1' then
  begin
  // Inicio HPC_201501_APO  - Cambio de DCOM a Socket
     //DM1.wAdmin:=FAccesos.wAdmin;
     //DM1.wGrupo:=FAccesos.wGrupo;
     //DM1.wUsuario:=FAccesos.wUsuario;
     /////
     DecodeDate(Date, Y, M, D);
     xBorrar:='0';
     cdsUsuarios.Open;
     cdsMGrupo.Open;
     cdsGrupos.Open;
     //** hallo la ruta de acceso para las tablas DBF (para la recepcion del FTP)
     //DM1.DCOM1.AppServer.RutaViaFTP(wRutaFTP);
  // Fin    HPC_201501_APO  - Cambio de DCOM a Socket
     wModulo := 'APO';
     wCiaDef := '02';
     sSQL    := 'TMon_Loc='+''''+'E'+'''';
     wTMonExt:= DisplayDescrip('prvTGE','TGE103','TMONID',sSQL,'TMONID');
     sSQL    := 'TMon_Loc='+''''+'L'+'''';
     wTMonLoc:= DisplayDescrip('prvTGE','TGE103','TMONID',sSQL,'TMONID');
     wTipoCambio :=  'TCAMVBC';
     xLogAsoid   :=  10;
     xLogCodMo   :=  10;
     DM1.cdsSexo.Close;
     xSQL := 'SELECT ''M'' SEXO, ''MASCULINO'' DESCRIP FROM TGE101 '
            +'UNION '
            +'SELECT ''F'' SEXO, ''FEMENINO'' DESCRIP FROM TGE101';
     DM1.cdsSexo.DataRequest(xSQL);
     DM1.cdsSexo.Open;
     // Tipo de Servidor
     DM1.DisplayDescrip('prvTGE','SOLCONFIG','*','','SRV_DB');
     SRV_E     := dm1.cdsqry.fieldbyname('SRV_EQUIP').AsString;
     SRV_D     := dm1.cdsqry.fieldbyname('SRV_DB').AsString;
     SRV_V     := dm1.cdsqry.fieldbyname('SRV_VERS').AsString;
     wAnchoPu  := dm1.cdsqry.fieldbyname('DECPU_OC').AsInteger;
     wAnchoArt := dm1.cdsqry.fieldbyname('NDIG_ARTIC').AsInteger;
     wAnchoProv:= dm1.cdsqry.fieldbyname('NDIG_PROV').AsInteger;
     wReqComp  := dm1.cdsqry.fieldbyname('RQSCOMP').AsString;
     wRptCia   := dm1.cdsqry.fieldbyname('RPTCIA').AsString;
     wUrqCia   := dm1.cdsqry.fieldbyname('URQCIA').AsString;
     //wRutaRpt := 'SOLFormatos\'+wModulo+'\'+wRptCia;
     wRutaRpt := wRutaFTP+'SOLFormatos\'+wModulo+'\'+wRptCia;
     // ****************************************************************************************************
     // Configuración Minima
     if Length(Trim(FloattoStr(Y))) <> 4 Then
     begin
     		ShowMessage('Error, Configure el Formato de Fecha de Windows, en el Panel de Control');
        Application.Terminate;
        Exit;
     end;
     if Length(Trim(wReqComp)) = 0 Then
     begin
    		ShowMessage('Error,  Falta Completar Data en SOLCONFIG');
        Application.Terminate;
        Exit;
     end;
     if Length(Trim(wRptCia)) = 0 Then
     begin
    		ShowMessage('Error,  Falta Completar Data en SOLCONFIG');
        Application.Terminate;
        Exit;
     end;
     // Configuración Minima
     // ****************************************************************************************************
     if SRV_D = 'DB2400' Then
     begin
        wFormatFServ:='DD/MM/YYYY';
      	wFormatFecha:='YYYY-MM-DD';
        wReplacCeros:='COALESCE';
        wRepFecServi:='CURRENT DATE'; wRepFecServ:='CURRENT DATE';
        wRepFuncDate:= 'DATE(';
     end
     Else
     if SRV_D = 'ORACLE' Then
     begin
        wFormatFServ:='DD/MM/YYYY';
    		wFormatFecha:='DD-MM-YYYY';
    		wFormatHoras:='HH24:MI:SS';
    		wReplacCeros:='NVL';
    		wRepFecServi:='SYSDATE'; wRepFecServ:='SYSDATE';
        wRepHorServi:='SYSDATE';
    		wRepTimeServi:='SYSDATE';
    		wRepFuncDate:='TO_DATE(';
    		wRepFuncChar:='TO_CHAR(';
     end
     Else
     if SRV_D = 'DB2NT' Then
     begin
        wFormatFServ:='DD/MM/YYYY';
       	wFormatFecha:='DD/MM/YYYY';
        wReplacCeros:='COALESCE';
        wRepFecServi:='CURRENT DATE';
        wRepFuncDate:= 'DATE(';
     end;
     DisplayDescrip('','DUAL','SYSDATE FECHA','','FECHA');
     dtFechaSistema := DM1.cdsQry.FieldByName('FECHA').AsDateTime ;
     /////

     FPrincipal:=TFPrincipal.Create(self);
     try
        FPrincipal.ShowModal;
     finally
        FPrincipal.free;
     end;
  end
  else
  begin
     if DM1<>nil then
        dm1.DCOM1.Connected:=False;
        Application.Terminate;
  end;
end;

procedure TDM1.DataModuleDestroy(Sender: TObject);
begin
 DCOM1.Connected := False;
end;

{function TDM1.MaxSQL(const sTabla, sMxCampo: String): String;
var
	xnum : integer;
  sSQL : String;
begin
  //sSQL:='SELECT MAX('+SMXCAMPO+') AS X FROM '+sTabla;
  sSQL:='SELECT MAX(CAST('+SMXCAMPO+' AS INTEGER)) AS X FROM '+sTabla;//+' '+ sWhere
  cdsQry.Close;
  cdsQry.DataRequest(sSQL);
  cdsQry.Open;
  if cdsQry.FieldByName('X').IsNull Then
    Result := '1'
  Else
  begin
    xnum := StrToInt(Trim(cdsQry.FieldByName('X').AsString));
    Result := IntToStr(xnum+1);
  end;
end;}

Function TDM1.MaxSQL(const sTabla, sMxCampo, sCondicion : String): String;
var
	xnum : integer;
  sSQL, sWhere : String;
begin
	sWhere:='WHERE '+sMxCampo+' not like (''%A%'') and '+sMxCampo+' not like (''%B%'') and '+sMxCampo+' not like (''%C%'') '+
            'and '+sMxCampo+' not like (''%D%'') and '+sMxCampo+' not like (''%E%'') and '+sMxCampo+' not like (''%F%'') '+
            'and '+sMxCampo+' not like (''%G%'') and '+sMxCampo+' not like (''%H%'') and '+sMxCampo+' not like (''%I%'') '+
            'and '+sMxCampo+' not like (''%J%'') and '+sMxCampo+' not like (''%K%'') and '+sMxCampo+' not like (''%L%'') '+
            'and '+sMxCampo+' not like (''%M%'') and '+sMxCampo+' not like (''%N%'') and '+sMxCampo+' not like (''%O%'') '+
            'and '+sMxCampo+' not like (''%P%'') and '+sMxCampo+' not like (''%Q%'') and '+sMxCampo+' not like (''%R%'') '+
            'and '+sMxCampo+' not like (''%S%'') and '+sMxCampo+' not like (''%T%'') and '+sMxCampo+' not like (''%U%'') '+
						'and '+sMxCampo+' not like (''%V%'') and '+sMxCampo+' not like (''%W%'') and '+sMxCampo+' not like (''%X%'') '+
						'and '+sMxCampo+' not like (''%Y%'') and '+sMxCampo+' not like (''%Z%'') ';
  if (SRV_D = 'DB2NT') or (SRV_D = 'DB2400') Then
    sWhere:=sWhere+'and '+SMXCAMPO+' <> '''' '
  Else
  if SRV_D = 'ORACLE' Then
    sWhere:=sWhere+'and NVL('+SMXCAMPO+',''VACIO'') <> ''VACIO'' ';
  if Length(Trim(sCondicion))>0 Then
  sWhere:=sWhere+'and '+sCondicion;

  if (SRV_D = 'DB2NT') or (SRV_D = 'DB2400') Then
  	sSQL:='SELECT MAX(CAST(COALESCE('+SMXCAMPO+',''0'') AS DECIMAL(10))) AS X FROM '+sTabla+' '+ sWhere
  Else
  if SRV_D = 'ORACLE' Then
  	sSQL:='SELECT MAX(TO_NUMBER('+SMXCAMPO+')) AS X FROM '+sTabla+' '+ sWhere;

  cdsQry.Close;
  cdsQry.DataRequest(sSQL);
  cdsQry.Open;
  if cdsQry.FieldByName('X').IsNull Then
    Result := '1'
  Else
  begin
    xnum := StrToInt(Trim(cdsQry.FieldByName('X').AsString));
    Result := IntToStr(xnum+1);
  end;

  {sSQL:='SELECT MAX('+SMXCAMPO+') AS X FROM '+sTabla;
  If Length(sWhere) > 0 Then
    sSql := sSql + ' WHERE '+sWhere;
  cdsQry.Close;
  //Application.ProcessMessages;
  cdsQry.DataRequest(sSQL);
  cdsQry.Open;
  //Application.ProcessMessages;
  if cdsQry.FieldByName('X').IsNull Then
    Result := '1'
  Else
   begin
    xnum := StrToInt(Trim(cdsQry.FieldByName('X').AsString));
    //Application.ProcessMessages;
    Result := IntToStr(xnum+1);
   end;}
end;

function TDM1.BuscaCodMod(const sTabla, sMxCampo: String): String;
var
	xnum : integer;
  sSQL: String;
begin
  sSQL:='SELECT COUNT(ASOCODMOD) AS X FROM '+sTabla+' WHERE ASOCODMOD='+''''+SMXCAMPO+'''';
  cdsQry.Close;
  cdsQry.DataRequest(sSQL);
  cdsQry.Open;

  xnum:=StrToInt(cdsQry.FieldByName('X').AsString);

  Result := IntToStr(xnum+1);
end;

function TDM1.MaxValue(const sDetail: String; CD: TDataSet): String;
var
	iMx : LongInt;
 	bmk : TBookMark;
 	dsI, dsE : Boolean;
begin
  // --------------------------- ADVERTENCIA !!!!!!!! --------------------------
  //  ESTO NO FUNCIONA EN EL CACHÉ
  // ---------------------------------------------------------------------------
  //  Result := MaxSQL('LOG309','DRQSID',
  //                   'where CIAID='''+sCIA+''' and '+'RQSID = '''+sRqs+'''' );
  // ---------------------------------------------------------------------------
	iMx := 0;
  bmk:=Nil;
  CD.DisableControls;
  dsI := (CD.State = dsInsert);
  dsE := (CD.State = dsEdit);
  if CD.RecordCount > 0 Then
  begin
  	if dsE Then bmk:=CD.GetBookmark;
  	if dsI or dsE Then CD.Cancel;

  	CD.First;
  	while not CD.Eof do
  	begin
    	if CD.FieldByName(sDetail).isNull Then
      	iMx := 0
    	Else
      if (CD.FieldByName(sDetail).AsInteger > iMx) and (CD.FieldByName(sDetail).AsInteger <> 999) Then
      	iMx := CD.FieldByName(sDetail).AsInteger;
    	CD.Next;
  	end;
  	if dsI Then
    	CD.Insert
  	Else
  	if dsE Then
    	CD.Edit;
  	if dsE Then
  	begin
    	CD.GotoBookmark(bmk);
    	CD.FreeBookmark(bmk);
  	end;
  end;
  CD.EnableControls;
  Result := IntToStr(iMx+1);
end;


function TDM1.FRound(xReal:DOUBLE;xEnteros,xDecimal:Integer):DOUBLE;
Var
	xNum   : String;
  code   : Integer;
  xNReal : DOUBLE;
begin
  xNum := Floattostrf( xReal, ffFixed, xEnteros, xDecimal );
  Val( xNum, xNReal, code );
  Result := xNReal;
end;

procedure TDM1.ProcesarCtaIndividual(ASOID:String; xPBar:TProgressBar);
var
  FRes, FCes, ckAPOSEC : String;
Begin
  xInteres:=0;
  xBonus  :=0;
  xSaldo  :=0;
  xSalAnt :=0;
  xSalBon :=0;
  wInt    :=0;
  wBon    :=0;
  prTRANSMTO   :=0;
  prTRANSMTODEV:=0;
  prAPOSEC   :='';
  prAPOFDEV  :='';
  prASOID    :='';
  prTRANSFOPE:='';
  prFREG     :='';
  xNext :=False;

  FRes:=DM1.cdsQry2.FieldByName('ASOFRESNOM').AsString;
  FCes:=DM1.cdsQry2.FieldByName('ASOFRESCESE').AsString;

//----------------------------------------------------------------------------------------------------------
  xSQL    := 'SELECT APOSEC FROM APO301 WHERE ASOID='+QuotedStr(ASOID)+' AND APOSEC='+QuotedStr('199701');
  cdsReporte.Close;
  cdsReporte.DataRequest(xSQL);
  cdsReporte.Open;

  if cdsReporte.RecordCount = 0 then
  begin
    xSalAnt       := DM1.PrimerSalAnt(ASOID);

    if xSalAnt > 0 then
    begin
      xSQL:='INSERT INTO APO301 ('+
            'ASOID, TRANSID, USEID, UPAGOID, UPROID, TMONID, TRANSANO, TRANSMES, '+
            'TRANSMTO, SALDOANT, INTERESMTO, SALDO, SALDOBONUS, BONUSMTO, '+
            'TRANSINTID, USUARIO, ASOCODMOD, ASOCODAUX, ASOAPENOM, APOSEC, CIAID '+
            ') SELECT '+
            QuotedStr(ASOID)+', ''APORTE'', USEID, UPAGOID, UPROID, ''N'', ''1997'', ''01'', 0, '+
            FloattoStr(xSalAnt)+', '+
            '0, 0, 0, 0, '+
            '''APO'', '+QuotedStr(DM1.wUsuario)+', ASOCODMOD, ASOCODAUX, ASOAPENOM, ''199701'', '+
            QuotedStr(wCiaDef)+' '+
            'FROM APO201 WHERE ASOID='+QuotedStr(ASOID);
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
    end;
  end;
//----------------------------------------------------------------------------------------------------------
  xSQL:='SELECT ASOID, APOSEC, USEID, TRANSMTO, TRANSMTODEV, APOFDEV, TRANSFOPE, FREG, '+
        'SALDOANT, SALDO, SALDOBONUS, INTERESMTO, BONUSMTO, HREG, FILLER '+
        'FROM APO301 '+
        'WHERE ASOID='+QuotedStr(ASOID)+' ';
  if (Length(Trim(FRes)) > 0) and (Length(Trim(FCes)) > 0) Then
    xSQL:=xSQL+ 'AND (APOSEC >= TO_CHAR('+wRepFuncDate+QuotedStr(FRes)+'),''YYYY'')||TO_CHAR('+wRepFuncDate+QuotedStr(FRes)+'),''MM'') '+
                'AND APOSEC <= TO_CHAR(' +wRepFuncDate+QuotedStr(FCes)+'),''YYYY'')||TO_CHAR('+wRepFuncDate+QuotedStr(FCes)+'),''MM'')) '
  else
  if (Length(Trim(FRes)) > 0) Then
    xSQL:=xSQL+ 'AND APOSEC >= TO_CHAR('+wRepFuncDate+QuotedStr(FRes)+'),''YYYY'')||TO_CHAR('+wRepFuncDate+QuotedStr(FRes)+'),''MM'') '
  else
  if (Length(Trim(FCes)) > 0) Then
    xSQL:=xSQL+ 'AND APOSEC <= TO_CHAR('+wRepFuncDate+QuotedStr(FCes)+'),''YYYY'')||TO_CHAR('+wRepFuncDate+QuotedStr(FCes)+'),''MM'') ';

  xSQL:=xSQL+'ORDER BY APOSEC, TRANSFOPE';

  DM1.cdsTransacciones.Close;
  DM1.cdsTransacciones.DataRequest(xSQL);
  DM1.cdsTransacciones.Open;
  DM1.cdsTransacciones.First;

  ckAPOSEC:=Trim(DM1.cdsTransacciones.FieldByName('APOSEC').AsString);

  prAPOSEC      := Trim(DM1.cdsTransacciones.FieldByName('APOSEC').AsString);
  prASOID       := DM1.cdsTransacciones.FieldByName('ASOID').AsString;
  prTRANSMTO    := DM1.cdsTransacciones.FieldByName('TRANSMTO').AsFloat;
  prTRANSMTODEV := DM1.cdsTransacciones.FieldByName('TRANSMTODEV').AsFloat;
  prAPOFDEV     := DM1.cdsTransacciones.FieldByName('APOFDEV').AsString;
  prTRANSFOPE   := DM1.cdsTransacciones.FieldByName('TRANSFOPE').AsString;
  prFREG        := DM1.cdsTransacciones.FieldByName('FREG').AsString;
  xSalAnt       := DM1.PrimerSalAnt(ASOID);

  if xSalAnt > 0 Then
  begin
    xSalBon:=xSalAnt;
  end
  Else
  begin
    xSalBon:=0;
  end;

  xNext:=True;

  while Not DM1.cdsTransacciones.EOF Do
  begin
    DM1.cdsTransacciones.Edit;  // hny
    DM1.Procesa(prAPOSEC,prTRANSMTO,prTRANSMTODEV,prAPOFDEV, prASOID,prTRANSFOPE,prFREG);
    ckAPOSEC:=prAPOSEC;
    cdsPost(DM1.cdsTransacciones);  // hny
    DM1.cdsTransacciones.Post;      // hny

    if xNext Then
    begin
      DM1.cdsTransacciones.Next;
    end;
    DM1.VerificaHueco(Trim(DM1.cdsTransacciones.FieldByName('APOSEC').AsString),ckAPOSEC);
  end;

  {While Not DM1.cdsTransacciones.EOF do
   begin
    DM1.cdsTransacciones.Edit;
    DM1.Procesa(prAPOSEC,prTRANSMTO,prTRANSMTODEV,prAPOFDEV, prASOID,prTRANSFOPE,prFREG);
    ckAPOSEC:=prAPOSEC;
    cdsPost(DM1.cdsTransacciones);
    DM1.cdsTransacciones.Post;
    DM1.cdsTransacciones.Next;
    DM1.VerificaHueco(Trim(DM1.cdsTransacciones.FieldByName('APOSEC').AsString),ckAPOSEC);
   end;}
  DM1.cdsTransacciones.ApplyUpdates(-1);
  DM1.cdsTransacciones.Close;
end;

procedure TDM1.VerificaHueco( xAPOSEC, ckAPOSEC : String);
var
  xAno,xMes, ckAno, ckMes : String;
Begin
  xAno:=Copy(xAPOSEC,1,4);
  xMes:=Copy(xAPOSEC,5,2);

  ckAno:=Copy(ckAPOSEC,1,4);
  ckMes:=Copy(ckAPOSEC,5,2);
  if ckMes='12' Then
  begin
    ckMes:='01';
    ckAno:= IntToStr(StrToInt(ckAno)+1);
  end
  Else
  begin
    ckMes:= IntToStr(StrToInt(ckMes)+1);
    if Length(Trim(ckMes))=1 Then
    	ckMes:='0'+ckMes;
  end;

  if ((ckAno=xAno) And (ckMes=xMes)) Or (ckAPOSEC=xAPOSEC) Then
  begin
    xNext					:= True;
    prAPOSEC			:= Trim(DM1.cdsTransacciones.FieldByName('APOSEC').AsString);
    prASOID				:= DM1.cdsTransacciones.FieldByName('ASOID').AsString;
    prAPOFDEV			:= DM1.cdsTransacciones.FieldByName('APOFDEV').AsString;
    prTRANSMTO		:= DM1.cdsTransacciones.FieldByName('TRANSMTO').AsFloat;
    prTRANSMTODEV	:= DM1.cdsTransacciones.FieldByName('TRANSMTODEV').AsFloat;
    prTRANSFOPE		:= DM1.cdsTransacciones.FieldByName('TRANSFOPE').AsString;
    prFREG				:= DM1.cdsTransacciones.FieldByName('FREG').AsString;
  end
  Else
  begin
    xNext					:= False;
    prAPOSEC			:= ckAno+ckMes;
    prAPOFDEV			:= '';
    prASOID				:= DM1.cdsTransacciones.FieldByName('ASOID').AsString;
    prTRANSMTO		:= 0;
    prTRANSMTODEV	:= 0;
    prTRANSFOPE		:= '';
    prFREG				:= '';
  end;
End;


Function TDM1.PrimerSalAnt(ASOID : String):Double;
var
  xAno: ShortInt;
begin
  {xSQL:= 'SELECT ASOFRESNOM FROM APO201 WHERE ASOID='''+ASOID+'''';
  DM1.cdsReporte1.Close;
  DM1.cdsReporte1.DataRequest(XSQL);
  DM1.cdsReporte1.Open;}

  //if Length(DM1.cdsReporte1.FieldByName('ASOFRESNOM').AsString) <> 0 Then
  if Length(DM1.cdsQry2.FieldByName('ASOFRESNOM').AsString) <> 0 Then
  begin
    xAno:=1996 - StrToInt(FormatDateTime('YYYY',DM1.cdsQry2.fieldByname('ASOFRESNOM').AsDateTime));

    if xAno < 0 Then
      xAno:=0;

    if xAno > 30 Then
      xAno:=30;

    // buscando el beneficio por el nro de años de aportacion
    {SQL:= 'SELECT BENMONTO FROM APO121 WHERE APOANO='+IntToStr(xAno);
    DM1.cdsReporte2.Close;
    DM1.cdsReporte2.DataRequest(xSQL);
    DM1.cdsReporte2.Open;
    if DM1.cdsQry.RecordCount >= 1 Then
      Result := DM1.cdsQry.FieldByName('BENMONTO').AsFloat
    Else
      Result :=0;}

    DM1.cdsReporte2.SetKey;
    DM1.cdsReporte2.FieldByname('APOANO').AsString:= IntToStr(xAno);
    if DM1.cdsReporte2.GotoKey Then
      Result := DM1.cdsReporte2.FieldByName('BENMONTO').AsFloat
    Else
      Result :=0;
  end
  Else
    Result:=0;
  //DM1.cdsQry.Close;
End;

Function TDM1.ObtieneIntBon(ApoSec:String):Double;
var
  zAno, zMes :String;
Begin
  If Length(Trim(ApoSec))=0 Then
  Begin
    ObtieneIntBon:=0;
    Exit;
  End;
  zAno:= Copy(ApoSec,1,4);
  zMes:= Copy(ApoSec,5,2);

  If (zMes='03') or (zMes='06') or (zMes='09') or (zMes='12') Then
   Begin
    ObtieneIntBon:= xSalBon*wBon;
   End
  Else
   Begin
    ObtieneIntBon:=0;
   End;
End;

Procedure TDM1.Procesa( APOSEC : String; MONTO : Double; TRANSMTODEV: Double; APOFDEV: String; ASOID: String; TRANSFOPE: String; FREG: String);
var
  wAno, wMes : String;
  qSalAnt, qSaldo, qSalBon, qBonus, qInteres : Double;
begin
  wAno:=Copy(APOSEC,1,4);
  wMes:=Copy(APOSEC,5,2);
  DM1.cdsQry.SetKey;
  DM1.cdsQry.FieldByname('APOANO').AsString:= wAno;
  DM1.cdsQry.FieldByname('APOMES').AsString:= wMes;
  if DM1.cdsQry.GotoKey Then
   begin
    wInt:=DM1.cdsQry.FieldByName('INTERES').AsFloat;
    wBon:=DM1.cdsQry.FieldByName('BONUS').AsFloat;
   end
  Else
   begin
    wInt:=0;
    wBon:=0;
   end;

  //DM1.cdsQry.Close;

  if wInt > 0 Then
    wInt:=wInt/100;

  if wBon > 0 Then
    wBon:=wBon/100;

  xBonus:=DM1.ObtieneIntBon(wAno+wMes);

  xSalAnt :=DM1.FRound(xSalAnt,15,2);

  xInteres:= xSalAnt * wInt;
  xSaldo  := xSalAnt + xInteres + xBonus + MONTO;

  if xBonus <> 0 Then
    xSalBon:=xSaldo
  Else
    xBonus:=0;

  if (TRANSMTODEV > 0) Or (APOFDEV='S') Then
    xSaldo:=xSaldo-TRANSMTODEV;

{  if xNext Then
  begin
    qSalAnt :=DM1.FRound(xSalAnt,15,2);
    qSaldo  :=DM1.FRound(xSaldo,15,2);
    qSalBon :=DM1.FRound(xSalBon,15,2);
    qBonus  :=DM1.FRound(xBonus,15,2);
    qInteres:=DM1.FRound(xInteres,15,2);

    if xNext Then
    begin
      xSQL:= 'UPDATE APO301 SET '+
             'SALDOANT='+FloatToStr(qSalAnt)+', '+
             'SALDO='+FloatToStr(qSaldo)+', '+
             'SALDOBONUS='+FloatToStr(qSalBon)+', '+
             'INTERESMTO='+FloatToStr(qInteres)+', '+
             'BONUSMTO='+FloatToStr(qBonus)+' '+
             'WHERE ASOID='+QuotedStr(ASOID)+' '+
             'AND APOSEC='+QuotedStr(APOSEC)+' '+
             'AND TRANSFOPE='+QuotedStr(TRANSFOPE)+' '+
             'AND FREG='+QuotedStr(Copy(FREG,1,10));
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
    end;
  end;
}
  qSalAnt :=DM1.FRound(xSalAnt,15,2);
  qSaldo  :=DM1.FRound(xSaldo,15,2);
  qSalBon :=DM1.FRound(xSalBon,15,2);
  qBonus  :=DM1.FRound(xBonus,15,2);
  qInteres:=DM1.FRound(xInteres,15,2);
  DM1.cdsTransacciones.FieldByName('SALDOANT').AsFloat := qSalAnt;
  DM1.cdsTransacciones.FieldByName('SALDO').AsFloat := qSaldo;
  DM1.cdsTransacciones.FieldByName('SALDOBONUS').AsFloat := qSalBon;
  DM1.cdsTransacciones.FieldByName('INTERESMTO').AsFloat := qInteres;
  DM1.cdsTransacciones.FieldByName('BONUSMTO').AsFloat := qBonus;
  xSalAnt:=xSaldo;
End;


procedure TDM1.MaxProgressB( xProgressBar:TProgressBar; xCountProgressBar: Integer);
Begin
  xProgressBar.Max:=xCountProgressBar;
End;

procedure TDM1.PositionProgressB( xProgressBar:TProgressBar);
Begin
  xProgressBar.Position:=xProgressBar.Position+1;
End;

procedure TDM1.PBVisible( xPBVisible:TProgressBar);
Begin
  xPBVisible.Visible:=True;
End;

procedure TDM1.PBVisibleF( xPBVisible:TProgressBar);
Begin
  xPBVisible.Visible:=False;
End;

procedure TDM1.AccesosUsuariosR(xxModulo,xxUsuario,xxTipo:String; xxForma:TForm);
begin
   if Trim(cdsUsuarios.FieldByname('GRUPOID').AsString)='' Then begin
      cdsUsuarios.SetKey;
      cdsUsuarios.FieldByname('USERID').AsString := xxUsuario;
      If not cdsUsuarios.GotoKey Then Exit;
   end;

   cdsGrupos.Filter := '';
   If xxTipo='1' Then begin
      cdsGrupos.Filter:='GrupoID='+''''+cdsUsuarios.FieldByname('GRUPOID').AsString+''''+' and '
                       +'ModuloID='+''''+xxModulo+''''+' and '
                       +'Tipo='+''''+xxTipo+'''';
      cdsGrupos.Filtered := True;

      if (DM1.wAdmin='S') or (DM1.wAdmin='P') Then Exit;

      cdsGrupos.First;
      While not cdsGrupos.Eof do begin
         wComponente := BuscaObjeto( cdsGrupos.FieldByName('OBJETO').AsString, xxForma );
         wComponente.Enabled := False;
         cdsGrupos.Next;
      end;
   end;

   If xxTipo='2' Then
   begin
      cdsGrupos.Filter:='GrupoID=' +''''+cdsUsuarios.FieldByname('GRUPOID').AsString+''''+' and '
                       +'ModuloID='+''''+xxModulo                +''''+' and '
                       +'Forma='   +''''+xxForma.Name            +''''+' and '
                       +'Tipo='    +''''+xxTipo                  +'''';
      cdsGrupos.Filtered := True;

      if (DM1.wAdmin='S') or (DM1.wAdmin='P') Then Exit;

      cdsGrupos.First;
      While not cdsGrupos.Eof do begin
         wComponente := BuscaObjeto(cdsGrupos.FieldByName('OBJETO').AsString, xxForma );
         If (wComponente.Name='Z2bbtnModifica') or
            (wComponente.Name='Z2bbtnConsulta') Then
            wComponente.Enabled := False
         Else begin
            wComponente.Visible := False;
         end;
         cdsGrupos.Next;
      end;
   end;

end;

function TDM1.BuscaObjeto( Const xNombre:String; xForm:TForm):TControl;
var
  ic : Integer;
begin
  ic := xForm.ComponentCount-1;
  while (xForm.Components[ic].Name<>xNombre) and (ic>-1) do
  begin
    Dec(ic);
  end;
  If xForm.Components[ic].Name=xNombre Then
    Result := TControl( xForm.Components[ic])
  Else
    Result := Nil;  
end;

Procedure TDM1.AccesosUsuarios(xxModulo,xxUsuario,xxTipo,xxForma:String);
begin
   if Trim(cdsUsuarios.FieldByname('GRUPOID').AsString)='' Then begin
      cdsUsuarios.SetKey;
      cdsUsuarios.FieldByname('UserId').AsString := xxUsuario;
      If not cdsUsuarios.GotoKey Then Exit;
   end;

   cdsGrupos.Filter := '';
   If xxTipo='1' Then begin
      cdsGrupos.Filter:='GrupoID='+''''+cdsUsuarios.FieldByname('GRUPOID').AsString+''''+' and '
                       +'ModuloID='+''''+xxModulo+''''+' and '
                       +'Tipo='+''''+xxTipo+'''';
      cdsGrupos.Filtered := True;
      cdsGrupos.First;
      While not cdsGrupos.Eof do begin
         wComponente := BuscaObjeto( cdsGrupos.FieldByName('OBJETO').AsString, Screen.ActiveForm);
         wComponente.Enabled := False;
         cdsGrupos.Next;
      end;
   end;

   If xxTipo='2' Then begin
      cdsGrupos.Filter:='GrupoID=' +''''+cdsUsuarios.FieldByname('GrupoId').AsString+''''+' and '
                       +'ModuloID='+''''+xxModulo+''''+' and '
                       +'Forma='   +''''+xxForma +''''+' and '
                       +'Tipo='    +''''+xxTipo  +'''';
      cdsGrupos.Filtered := True;
      cdsGrupos.First;
      While not cdsGrupos.Eof do begin
         wComponente := BuscaObjeto(cdsGrupos.FieldByName('OBJETO').AsString, Screen.ActiveForm );
         If (wComponente.Name='Z2bbtnModifica') or
            (wComponente.Name='Z2bbtnConsulta') Then
            wComponente.Enabled := False
         Else begin
            wComponente.Visible := False;
         end;
         cdsGrupos.Next;
      end;
   end;
end;

function TDM1.NumtoStr(wNumero: double): string;
var
	xNumStr,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12 : string;
  xGrupo, xTotal, xDecimal : string;
  xLargo, xVeces : integer;
begin
  xNumStr := floattostr(int(wNumero));
  xDecimal:= floattostr(wNumero-int(wNumero));
  if wNumero-int(wNumero)>0 Then
  begin
  	if StrToInt(Copy(xDecimal,3,5)) > 5 Then
    	xDecimal := IntToStr(StrToInt(copy(xDecimal,3,2))+1)
    Else
    	xDecimal := copy(xDecimal,3,2);
  end
  Else
  	xDecimal:='00';

  xDecimal:= ' y '+xDecimal+'/100';
  xLargo := length(xNumStr);
  x1:=''; x2:=''; x3:=''; x4:=''; x5:=''; x6:=''; x7:=''; x8:=''; x9:=''; x10:='';
  if xLargo >= 1  Then x1:=copy(xNumStr,xLargo,1);
  if xLargo >= 2  Then x2:=copy(xNumStr,xLargo-1,1);
  if xLargo >= 3  Then x3:=copy(xNumStr,xLargo-2,1);
  if xLargo >= 4  Then x4:=copy(xNumStr,xLargo-3,1);
  if xLargo >= 5  Then x5:=copy(xNumStr,xLargo-4,1);
  if xLargo >= 6  Then x6:=copy(xNumStr,xLargo-5,1);
  if xLargo >= 7  Then x7:=copy(xNumStr,xLargo-6,1);
  if xLargo >= 8  Then x8:=copy(xNumStr,xLargo-7,1);
  if xLargo >= 9  Then x9:=copy(xNumStr,xLargo-8,1);
  if xLargo >= 10 Then x10:=copy(xNumStr,xLargo-9,1);
  if xLargo >= 11 Then x11:=copy(xNumStr,xLargo-10,1);
  if xLargo >= 12 Then x12:=copy(xNumStr,xLargo-11,1);
  xVeces:=1; xTotal:='';
  while xVeces<=4 do // hasta 999,999'999,999
  begin
    if xVeces=2 Then
    begin
       x1:=x4;
       x2:=x5;
       x3:=x6;
    end;
    if xVeces=3 Then
    begin
       x1:=x7;
       x2:=x8;
       x3:=x9;
    end;
    if xVeces=4 Then
    begin
       x1:=x10;
       x2:=x11;
       x3:=x12;
    end;
    if x2='1' Then // del 11 a 19
    begin
       if x1='0' Then x2:='DIEZ';
       if x1='1' Then x2:='ONCE';
       if x1='2' Then x2:='DOCE';
       if x1='3' Then x2:='TRECE';
       if x1='4' Then x2:='CATORCE';
       if x1='5' Then x2:='QUINCE';
       if x1='6' Then x2:='DIECISEIS';
       if x1='7' Then x2:='DIECISIETE';
       if x1='8' Then x2:='DIECIOCHO';
       if x1='9' Then x2:='DIECINUEVE';
       x1:='0';
    end
    Else
    begin // del 0 al 9
    	if x1='1' Then x1:='UNO';
      if (xVeces>1) and (x1='UNO') Then x1:='UN';
      if x1='2' Then x1:='DOS';
      if x1='3' Then x1:='TRES';
      if x1='4' Then x1:='CUATRO';
      if x1='5' Then x1:='CINCO';
      if x1='6' Then x1:='SEIS';
      if x1='7' Then x1:='SIETE';
      if x1='8' Then x1:='OCHO';
      if x1='9' Then x1:='NUEVE';
      if x2='2' Then
      begin // veinte
      	x2:='VEINTI';
      	if x1='0' Then x2:='VEINTE';
      end;
      if x2='3' Then begin
      	x2:='TREINTI';
        if x1='0' Then x2:='TREINTA';
      end;
      if x2='4' Then begin
        x2:='CUARENTI';
        if x1='0' Then x2:='CUARENTA';
      end;
      if x2='5' Then begin
        x2:='CINCUENTI';
        if x1='0' Then x2:='CINCUENTA';
      end;
      if x2='6' Then begin
        x2:='SESENTI';
        if x1='0' Then x2:='SESENTA';
      end;
      if x2='7' Then begin
        x2:='SETENTI';
        if x1='0' Then x2:='SETENTA';
      end;
      if x2='8' Then begin
        x2:='OCHENTI';
        if x1='0' Then x2:='OCHENTA';
      end;
      if x2='9' Then begin
      	x2:='NOVENTI';
        if x1='0' Then x2:='NOVENTA';
      end;
      end;
      if x3='1' Then x3:='CIENTO';
      if (x2='0') and (x1='0') and (x3='CIENTO') Then
      	x3:='CIEN';
      if x3='2' Then x3:='DOSCIENTOS';
      if x3='3' Then x3:='TRESCIENTOS';
      if x3='4' Then x3:='CUATROCIENTOS';
      if x3='5' Then x3:='QUINIENTOS';
      if x3='6' Then x3:='SEISCIENTOS';
      if x3='7' Then x3:='SETECIENTOS';
      if x3='8' Then x3:='OCHOCIENTOS';
      if x3='9' Then x3:='NOVECIENTOS';
      xGrupo := '';
			//xGrupo := x3;
      if x3<>'0' Then xGrupo:=x3;
      if x2<>'0' Then xGrupo:=xGrupo+' '+x2;
      if x1<>'0' Then xGrupo:=xGrupo+x1;
      if ((xVeces=2)or(xVeces=4)) and (length(xGrupo)>1) Then
      begin
      	xGrupo:=xGrupo+' MIL';
      end;
      if (xVeces=3) and (length(xGrupo)>1) Then
      begin
      	if x1<>'UN' Then
        	xGrupo:=xGrupo+' MILLONES'
        Else
        begin
        	xGrupo:=xGrupo+' MILLÓN';
        end;
    end;
    if length(xTotal) > 0 Then
      xGrupo:=xGrupo+' ';
    xTotal := xGrupo+xTotal;
    xVeces := xVeces+1;
  end;
  Result := Trim(xTotal)+xDecimal;
end;

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

function TDM1.NumLetra(const mNum: Currency; const iIdioma, iModo: Smallint): String;
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

procedure TDM1.LimpiaClientDataset(cds: TwwClientDataset);
begin
   with cds do
   begin
     IndexFieldNames := '' ;
     Filter := '' ;
     Filtered := False ;
     if active then
       Close ;
   end ;
end;

function TDM1.VerificaAcceso(Pass, EncDes: string): string;
begin
    // Inicio HPC_201501_APO  - Cambio de DCOM a Socket
    { if EncDes='0' then
        result:=FAccesos.DesEncripta(Pass)
     else
        result:=FAccesos.Encripta(Pass);}
    // Fin  HPC_201501_APO  - Cambio de DCOM a Socket
end;

procedure TDM1.cdsTransaccionesReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
    Action := HandleReconcileError(Dataset,UpdateKind,E);
end;


function TDM1.CrgArea(xUsuario: String): String;
begin
cdsUser.Close;
cdsUser.DataRequest('SELECT USERID,USERNOM,AREA,ORIGEN,NIVEL FROM USERTABLE WHERE USERID='+QuotedStr(Trim(xUsuario)));
cdsUser.Open;
If cdsUser.RecordCount=1 Then
   Result:=cdsUser.fieldByname('AREA').AsString+cdsUser.fieldByname('ORIGEN').AsString+cdsUser.fieldByname('NIVEL').AsString
Else
   Result:='';
cdsUser.Close
end;

Procedure TDM1.HojaExcel(Tit: string; TDs: TDataSource; TDb: TDBGrid);
Var Lcid, C, CH, CH1, I, W, X, Y, TotHoja: Integer; Bk: TBookmarkStr;
    Tabla: Variant; L, A: OleVariant; HH: Extended;
Begin
	If not TDs.DataSet.Active then Exit;
	If TDs.DataSet.RecordCount = 0 then Exit;
	Lcid:= GetUserDefaultLCID;
	C:= TDb.Columns.Count;
	CH:= 1;
	If TDs.DataSet.RecordCount > 15100 then
	Begin
			HH:= TDs.DataSet.RecordCount / 15100;
			CH:= Trunc(HH);
			if Frac(HH) > 0 then CH:= CH + 1;
		end;
	ExcelApp.Visible[Lcid]:= True;
	ExcelApp.Caption:= 'Consultas en EXCEL';
	ExcelBook.ConnectTo(ExcelApp.Workbooks.Add(1, Lcid));
	if CH > 1 then
		begin
			ExcelBook.Worksheets.Add(NULL, NULL, (CH - 1), NULL, Lcid);
			for I:= 1 to CH do
				begin
					WS.ConnectTo(ExcelBook.Worksheets[I] as _Worksheet);
					WS.Name:= Tit + '_' + IntToStr(I);
				end;
		end;

	WS.ConnectTo(ExcelBook.Worksheets[1] as _Worksheet);
	WS.Activate(Lcid);
	if CH = 1 then WS.Name:= Tit;
	ExcelApp.ScreenUpdating[Lcid]:= False;
	for X:= 1 to CH do
		begin
			WS.ConnectTo(ExcelBook.Worksheets[X] as _Worksheet);
			WS.Activate(Lcid);
			for I:= 0 to (C - 1) do
				begin
					L:= WS.Cells.Item[1, I + 1];
					WS.Range[L, L].Value2:= TDb.Columns[I].Title.Caption;
				end;
		end;

	WS.ConnectTo(ExcelBook.Worksheets[1] as _Worksheet);
	WS.Activate(Lcid);

	CH1:= 1;
	W:= 2;
	I:= 1;
	Y:= 1;
	TotHoja:= 0;
	TDs.DataSet.DisableControls;
	Bk:= TDs.DataSet.Bookmark;
	Tabla:= VarArrayCreate([1, 5000, 0, C], varVariant);
	TDs.DataSet.First;
	while not TDs.DataSet.Eof do
		begin
			for X:= 0 to (C - 1) do Tabla[Y, X]:= TDs.DataSet.Fields[X].AsString;
			if Y = 5000 then
				begin
					L:= 'A' + IntToStr(W);
					WS.Range[L, WS.Cells.Item[I + 1, C]].Value2:= Tabla;
					try
						Tabla:= Unassigned;
					finally
						Tabla:= VarArrayCreate([1, 5000, 0, C], varVariant);
					end;
					Y:= 0;
					W:= I + 2;
				end;
			Inc(Y, 1);
			Inc(I, 1);
			Inc(TotHoja, 1);
			if TotHoja = 15100 then
				begin
					L:= 'A' + IntToStr(W);
					WS.Range[L, WS.Cells.Item[I, C]].Value2:= Tabla;
					try
						Tabla:= Unassigned;
					finally
						Tabla:= VarArrayCreate([1, 5000, 0, C], varVariant);
					end;
					CH1:= CH1 + 1;
					WS.ConnectTo(ExcelBook.Worksheets[CH1] as _Worksheet);
					WS.Activate(Lcid);
					Y:= 1;
					W:= 2;
					I:= 1;
					TotHoja:= 0;
				end;
			Application.ProcessMessages;
			TDs.DataSet.Next;
		end;
	CH1:= I;
	try
	   WS.Range['A' + IntToStr(W), WS.Cells.Item[CH1, C]].Value2:= Tabla;
	finally
		Tabla:= Unassigned;
	end;
	for X:= 1 to CH do
		begin
			WS.ConnectTo(ExcelBook.Worksheets[X] as _Worksheet);
			WS.Activate(Lcid);
			SetLength(FormatCel, C + 1);
			FormatosCeldas(C,TDs);
			for I:= 1 to C do
				begin
					L:= WS.Cells.Item[1, I];
					WS.Range[L, L].EntireColumn.NumberFormat:= FormatCel[I];
				end;

			for I:= 0 to (C - 1) do
				begin
					L:= WS.Cells.Item[1, I + 1];
					Y:= TDs.DataSet.Fields[I].DisplayWidth;
					if Length(TDb.Columns[I].Title.Caption) > Y then
						Y:= Length(TDb.Columns[I].Title.Caption);
					  WS.Range[L, L].EntireColumn.ColumnWidth:= Y + 2;
					if TDb.Columns[I].Alignment = taLeftJustify then A:= 2;
					if TDb.Columns[I].Alignment = taCenter then A:= 3;
					if TDb.Columns[I].Alignment = taRightJustify then A:= 4;
					WS.Range[L, L].EntireColumn.HorizontalAlignment:= A;
				end;

			L:= WS.Cells.Item[1, C];
			WS.Range['A1', L].HorizontalAlignment:= 3;
			WS.Range['A1', L].Interior.Color:= clMaroon;
			WS.Range['A1', L].Font.Color:= clWhite;
			WS.Range['A1', L].Font.Bold:= True;

			if CH = 1 then W := TDs.DataSet.RecordCount + 1
			else if (CH > 1) and (X < CH) then W:= 15101
			else if (CH > 1) and (X = CH) then W:= CH1;

			WS.PageSetup.PrintGridlines:= True;
			WS.PageSetup.PrintTitleRows:= '1:1';

			WS.DefaultInterface.Set_DisplayAutomaticPageBreaks(Lcid, True);
		end;

	WS.ConnectTo(ExcelBook.Worksheets[1] as _Worksheet);
	WS.Activate(Lcid);

	ExcelApp.ScreenUpdating[Lcid]:= True;

	TDs.DataSet.EnableControls;
	TDs.DataSet.Bookmark:= Bk;
end;

Procedure TDM1.FormatosCeldas(N: Integer; TDs: TDataSource);
Var I: Integer; F: TFieldDef;
Begin
  For I:= 1 to N do
  Begin
    F := TDs.DataSet.FieldDefs.Items[I-1];
    Case F.DataType of
      ftString:     FormatCel[I]:= DM1.StrZero('0',Length(TDs.DataSet.Fields[I-1].AsString));
      ftDate:       FormatCel[I]:= 'dd/mm/yyyy';
      ftDateTime:   FormatCel[I]:= 'dd/mm/yyyy';
      ftTimeStamp:  FormatCel[I]:= 'dd/mm/yyyy';
      ftWideString: FormatCel[I]:= 'dd/mm/yyyy';
      ftUnknown: FormatCel[I]:= DM1.StrZero('0',Length(TDs.DataSet.Fields[I-1].AsString));
    Else
      FormatCel[I]:= Null;
    End;
  End;
End;
function TDM1.CountReg(xSQL: String): Integer;
var xCount:Integer;
begin
  cdsQry.Close;
  cdsQry.DataRequest(xSQL);
  cdsQry.Open;
  xCount:=cdsQry.RecordCount;
  cdsQry.Close;
  Result:=xCount;

end;

function TDM1.FechaSis: tDateTime;
var
   FormatoFecha: PChar;
begin
   FormatoFecha:='dd/MM/yyyy';
   SetLocaleInfo(LOCALE_SYSTEM_DEFAULT, LOCALE_SSHORTDATE,FormatoFecha);
   cdsQry.Close;
   cdsQry.DataRequest('SELECT TO_CHAR(SYSDATE,''dd/mm/yyyy'') AS FECHA FROM DUAL');
   cdsQry.Open;
   If cdsQry.RecordCount > 0 Then
      Result:=FechasOutPut(cdsQry.fieldbyname('FECHA').AsDateTime)
   Else
      Result:=FechasOutPut(Date);
   cdsQry.Close;
end;

function TDM1.FechasOutPut(xFInput: tDateTime): tDateTime;
begin
      Result:=StrToDate(Copy(DateToStr(xFInput),1,10));
end;

end.
