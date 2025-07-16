unit APO303;

// Inicio Uso Estándares: 01/08/2011
// Unidad               : APO303
// Formulario           : FDevolucionAportes
// Fecha de Creación    : 15/12/2003
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Devolución de Aportes
// Actualizaciones      :
// HPC_201501_APO       : 06/01/2015 - Cambio de DCOM a Socket
// HPC_201503_APO       : Error al Seleccionar registros de devolución
// APO_202101_HPC       : Opción desembolso en efectivo en oficinas
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  wwdblook, fcButton, fcImgBtn, fcShapeBtn, StdCtrls, Mask, wwdbedit,
  ExtCtrls, wwdbdatetimepicker, Grids, Wwdbigrd, Wwdbgrid, Wwdbdlg,
  Wwdbspin, Buttons,DB, ComCtrls, wwriched, ppCtrls, ppBands, ppVar,
  ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppDB,
  ppTypes, ppDBPipe, ppDBBDE, ppStrtch, ppMemo, Mant, DBClient, wwclient, Wwdatsrc,
  variants, Wwdotdot, Wwdbcomb, fcLabel,ppviewr, DBCtrls;

type
  TFDevolucionAportes = class(TForm)
    pnlCabecera: TPanel;
    Z2bbtnAceptar: TfcShapeBtn;
    Z2bbtnCancel: TfcShapeBtn;
    dbgDevolver: TwwDBGrid;
    Z2bbtnNuevo: TfcShapeBtn;
    pnlInicio: TPanel;
    bbtnSigue: TfcShapeBtn;
    Label1: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dbgAportes: TwwDBGrid;
    dbgDetReclamo: TwwDBGrid;
    dbgDetReclamoIButton: TwwIButton;
    dbgDevolverIButton: TwwIButton;
    wwDBEdit1: TwwDBEdit;
    btnAso: TBitBtn;
    edtUPro: TwwDBEdit;
    edtUPago: TwwDBEdit;
    edtUse: TwwDBEdit;
    dblcdCodigo: TwwDBComboDlg;
    dblcdUpro: TwwDBEdit;
    dblcdUse: TwwDBEdit;
    dblcdUPago: TwwDBEdit;
    pnlAportes: TPanel;
    StaticText2: TStaticText;
    Panel5: TPanel;
    Label2: TLabel;
    dbeMontoDevoluc: TwwDBEdit;
    spdAno: TwwDBSpinEdit;
    spdMes: TwwDBSpinEdit;
    dblcMoneda: TwwDBLookupCombo;
    dbeMtoAporte: TwwDBEdit;
    dblcMotDev: TwwDBLookupCombo;
    dbmresultado: TDBMemo;
    dbcTipoDevolucion: TwwDBComboBox;
    bbtnCierraImp: TfcShapeBtn;
    bbtnAceptar: TfcShapeBtn;
    bbtnCancelar: TfcShapeBtn;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    dbeCodigoModular: TwwDBEdit;
    dbeAsoNom: TwwDBEdit;
    dblcFormaDesem: TwwDBLookupCombo;
    dblcAgencia: TwwDBLookupComboDlg;
    dbeMonedaCab: TwwDBEdit;
    dbeMonto: TwwDBEdit;
    edtAgencia: TwwDBEdit;
    edtFormaDesem: TwwDBEdit;
    dbdtpFechaDev: TwwDBDateTimePicker;
    fcLabel1: TfcLabel;
    fcLabel2: TfcLabel;
    fcLabel3: TfcLabel;
    dblcBanco: TwwDBLookupCombo;
    dblcCCBco: TwwDBLookupCombo;
    dbeBanco: TwwDBEdit;
    dbeCuentaAsociado: TwwDBEdit;
    edtMotDev: TwwDBEdit;
    edtMoneda: TwwDBEdit;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel8: TppLabel;
    ppLabel37: TppLabel;
    ppLabel39: TppLabel;
    pplblNombreRecibi: TppLabel;
    pplblDNIRecibi: TppLabel;
    ppLabel44: TppLabel;
    pplbldetalle: TppMemo;
    pplblRecibiConforme: TppLabel;
    ppLabel48: TppLabel;
    ppLabel50: TppLabel;
    ppLabel52: TppLabel;
    pplblHechopor: TppLabel;
    ppLabel56: TppLabel;
    pplblTotal: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    Z2bbtnImpre: TfcShapeBtn;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    pplblTitulo: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel9: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    pplblLineaRecibiConforme: TppLabel;
    ppLabel18: TppLabel;
    pplblDesembolso: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    pplblCodigoModular: TppLabel;
    pplblDepartamento: TppLabel;
    pplblCodPago: TppLabel;
    pplblUProceso: TppLabel;
    pplblFecha: TppLabel;
    pplblNombre: TppLabel;
//Inicio APO_202101_HPC  
//Opción desembolso en efectivo en oficinas
    pnlCajaDerrama: TPanel;
    Label12: TLabel;
    DBLkOfiDes: TwwDBLookupCombo;
    EdtOfiDes: TEdit;
//Fin APO_202101_HPC  
    procedure Z2bbtnCancelClick(Sender: TObject);
    procedure dblcMonedaExit(Sender: TObject);
    procedure dblcMotDevExit(Sender: TObject);
    procedure dblcdCodigoExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dblcFormaDesemExit(Sender: TObject);
    procedure dblcAgenciaExit(Sender: TObject);
    procedure bbtnAceptarClick(Sender: TObject);
    procedure bbtnCancelarClick(Sender: TObject);
    procedure Z2bbtnAceptarClick(Sender: TObject);
    procedure Z2bbtnNuevoClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbgDevolverDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure dbgAportesMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure dbgAportesEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure dbgDevolverDblClick(Sender: TObject);
    procedure dbgAportesDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure dbgDevolverEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure dbgDevolverMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure dbgDetReclamoDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure dbgDetReclamoMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure dbgDetReclamoEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure bbtnSigueClick(Sender: TObject);
    procedure spdMesExit(Sender: TObject);
    procedure btnAsoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dblcdCodigoCustomDlg(Sender: TObject);
    procedure OnEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EnterpnlAsociado(Sender: TObject);
    procedure bbtnCierraImpClick(Sender: TObject);
    procedure dbeMontoDevolucKeyPress(Sender: TObject; var Key: Char);
    procedure dbeMontoDevolucExit(Sender: TObject);
    procedure dbeMontoDevolucEnter(Sender: TObject);
    procedure dblcMotDevEnter(Sender: TObject);
    procedure dblcFormaDesemEnter(Sender: TObject);
    procedure dblcAgenciaEnter(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dblcBancoExit(Sender: TObject);
    procedure OnKeyPress(Sender: TObject; var Key: Char);
    procedure dblcBancoEnter(Sender: TObject);
    procedure dblcCCBcoEnter(Sender: TObject);
    procedure dblcCCBcoExit(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure Z2bbtnImprimirClick(Sender: TObject);
    procedure GrabaDesEfe();
//Inicio APO_202101_HPC  
//Opción desembolso en efectivo en oficinas
    procedure DBLkOfiDesChange(Sender: TObject);
//Fin APO_202101_HPC  


  private
    wAdicionaDetalle : Boolean ;
    //** guardará el tipo de desembolso y una N = Nuevo numero de NA, M = el mismo # NA
    cDesembolso : Array[1..5,1..2] of String;
    xAnop,xMesp,xDiap : Word;
    xArea,xTabla,xDevol:string;
    i:integer;
    xCorreCampo,xCorreNabo,xCorre : String; //** para el correlativo del numero de crédito
    xPaso : Boolean; //** True = el correlativo es valido
    xsysdate : TDate;
    xCeros : Integer;
    xAnoC,xMesC,xDiaC : Word;
    xTipocorre : String;
    xCorreCadena,xCorreWhere,xCorreWherex,xCorreWherey : String; //** Where solo para el correlativo del Crédito
    tmpNumeroEnter : Currency ;
    tmpCadenaEnter : String ;
    xTDiar,xComprob,xPeriodo : string;
    dtFechaSistema : TDate ;
    //** Busca en APo305 por FREG para saber si hay alguna devolucion
    //** con oficio, si ese fuera el caso se genera un nuevo numero de nota de abono
    //** si no toma el mismo numero de abono
    procedure BuscaApo305;
    Function ObtenerSaldoAnterior:Double;
    procedure CorreCred(pCorre : String); //** para el correlativo del numero del crédito
    Procedure BuscaCorre; //** para constatar que nop exista el numero del crédito
    procedure  Correlativo; //** llama a CorreCred y BuscaCorre
    procedure BlanqueaCabecera ;
    function  BuscaAporteReclamo(strAPO301ID:String) : String;
    procedure QuitaFlagAporte(sAPO301ID : String);
    procedure QuitaFlagReclamo(sAPO301ID , sRECLID : String);
    procedure PonFlagAporte(sAPO301ID : String);
    function  EsNumero(strNumero : String) : Boolean ;
    procedure ValidaDetalle ;
    procedure LimpiaControles ;
    procedure ValidaGrabacion ;
    procedure AsignaAnoMes(var sAno , sMes : String ) ;
    procedure AdicionalesGrabacion;
    procedure AsignaItems ;
    function  RecuperaCorrelativo : String ;
    procedure CreaIndice ;
    procedure BorraIndice ;
    procedure InsertaMovCaja;
    procedure cdsTransaccionesAfterOpen(DataSet: TDataSet);
  public
    sSQL, xCodAux : String;
    procedure GrabaTransaccion;
    procedure LlenarDatosAsociado(ASOID:String);
  end;

var
  FDevolucionAportes: TFDevolucionAportes;
  xCrea,wActualizado : boolean;
  xUse,xAsoApenom : string;
  xSaldoAnt : Real;
  
implementation

USES APODM, APO001, MsgDlgs, APO719;

{$R *.DFM}

procedure TFDevolucionAportes.Z2bbtnCancelClick(Sender: TObject);
begin
  close;
end;

procedure TFDevolucionAportes.dblcMonedaExit(Sender: TObject);
var
  sWhere:string;
begin
  sWhere:= 'TMONID = '+ QuotedStr(dblcMoneda.Text) ;
  edtMoneda.Text:=dm1.DisplayDescrip('prvTGE','TGE103','TMONDES',sWhere,'TMONDES');
end;

procedure TFDevolucionAportes.dblcMotDevExit(Sender: TObject);
begin
  if bbtnCancelar.focused or bbtnCierraImp.Focused then
     Exit ;
  if (tmpCadenaEnter = dblcMotDev.DataSource.DataSet.FieldByName(dblcMotDev.DataField).AsString) then
    Exit ;

  if dblcMotDev.LookupTable.Locate('RECLMOTID',VarArrayOf([trim(dblcMotDev.Text)]),[]) then
  begin
     edtMotDev.text := dblcMotDev.LookupTable.FieldByName('RECLMOTDES').AsString  ;
     try
      dm1.cdsDevolucion.FieldByName(dblcMotDev.DataField).AsString :=
          trim(dm1.cdsDevolucion.FieldByName(dblcMotDev.DataField).AsString) ;
     except
      dm1.cdsDevolucion.edit;
      dm1.cdsDevolucion.FieldByName(dblcMotDev.DataField).AsString :=
          trim(dm1.cdsDevolucion.FieldByName(dblcMotDev.DataField).AsString) ;
     end;
  end
  else
  begin
     edtMotDev.Text := '' ;
     try
      dm1.cdsDevolucion.FieldByName(dblcMotDev.DataField).Clear ;
     except
      dm1.cdsDevolucion.edit;
      dm1.cdsDevolucion.FieldByName(dblcMotDev.DataField).Clear ;
     end;
  end;

end;

procedure TFDevolucionAportes.dblcdCodigoExit(Sender: TObject);
var
  sWhere : string;
  strASOID : String ;
  x : TPanel;
begin
   if z2bbtnCancel.Focused or ((activecontrol.parent = pnlInicio) and (ActiveControl <> bbtnSigue)) then
   begin
      Exit ;
   end ;

   if trim(dblcdCodigo.Text) = '' then
   begin
     ShowMessage('Ingrese Código de Asociado');
     dblcdcodigo . setfocus ;
     Exit ;
   end   ;
   strASOID := Trim(dblcdCodigo.Text);
   strASOID := DM1.StrZero(strASOID, xLogAsoid);
   LlenarDatosAsociado (strASOID);
   if trim(dblcdUSE.Text) = '' then
   begin
     ShowMessage('NO se encuentra este Código de Asociado');
     dblcdCodigo.SetFocus ;
   end ;
end;

procedure TFDevolucionAportes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if pnlInicio.Enabled then
     btnAso.SetFocus ;
  if pnlAportes.Visible then
     bbtnCancelar.OnClick(bbtnCancelar);   

  DM1.cdsUse.IndexFieldNames:='';
  DM1.cdsTransacciones.Cancel;
  DM1.cdsDetReclamo.Cancel;
  DM1.cdsDevolucion.Cancel;
  DM1.cdsTransacciones.close;
  DM1.cdsDetReclamo.CLOSE;
  DM1.cdsDevolucion.Close;
  Dm1.cdsTransDevol.cancel;
  DM1.cdstransacciones.IndexFieldNames:='';
  DM1.cdsTransacciones.Filter:='';
  DM1.cdstransacciones.close;
  DM1.cdsDetReclamo.IndexFieldNames:='';
  DM1.cdsDetReclamo.Filter:='';
  DM1.cdsDetReclamo.close;

end;


procedure TFDevolucionAportes.dblcFormaDesemExit(Sender: TObject);
var
  sWhere:string;
  procedure DesHabilitaAgencia ;
  begin
    dblcAgencia.DataSource.DataSet.FieldByName(dblcAgencia.DataField).Clear ;
    edtAgencia.Clear ;
    dblcAgencia.Enabled := False ;
  end ;

  procedure LimpiaDatosBanco ;
  begin
    dblcBanco . Enabled := False ;
    dblcBanco . DataSource.DataSet.FieldByName(dblcBanco . DataField).Clear ;
    dbeBanco  . Clear ;

    dblcCCBco . Enabled := False ;
    dblcCCBco . DataSource.DataSet.FieldByName(dblcCCBco . DataField).Clear ;
  end ;

begin

  if bbtnCancelar.Focused then
     Exit ;

  if tmpCadenaEnter <> trim(dblcFormaDesem.Text) then
  begin
    if trim(dblcFormaDesem.Text) = '' then
    begin
      DesHabilitaAgencia;
      dblcFormaDesem.DataSource.DataSet.FieldByName(dblcFormaDesem.DataField).Clear ;
      dblcFormaDesem.DataSource.DataSet.FieldByName(edtFormaDesem.DataField).Clear ;
      LimpiaDatosBanco ;
    end
    else
    begin
      //Búsqueda
      DesHabilitaAgencia ;
      if dblcFormaDesem.LookupTable.Locate('TIPDESEID',VarArrayOf([dblcFormaDesem.Text]),[]) then
      begin
        dblcAgencia.Enabled := (dblcFormaDesem.LookupTable.FieldByName('ACTAGEN').AsString = 'S');
        edtFormaDesem.DataSource.DataSet.FieldByName(edtFormaDesem.DataField).AsString
                               := dblcFormaDesem.LookupTable.FieldByName('TIPDESEABR').AsString ;
        LimpiaDatosBanco ;
        if dblcFormaDesem.LookupTable.FieldByName('ACTBCO').AsString = 'S' then
        begin
           dblcBanco . Enabled := True ;

           dblcBanco . LookupTable . Filter := 'CLAUXID = ''B'' ' ;
           dblcBanco . LookupTable . Filtered := True ;
        end
        else
        begin
           dblcBanco . Enabled := True ;

           dblcBanco . LookupTable . Filter := 'CLAUXID = ''C'' ' ;
           dblcBanco . LookupTable . Filtered := True ;
        end ;
        dblcBanco . OnEnter ( dblcBanco ) ;
        dblcBanco . SetFocus ;
      end
      else
      begin

        dblcFormaDesem.DataSource.DataSet.FieldByName(dblcFormaDesem.DataField).Clear ;
        dblcFormaDesem.DataSource.DataSet.FieldByName(edtFormaDesem.DataField).Clear ;
        LimpiaDatosBanco ;

      end ;
    end;
    if dblcBanco.Enabled and (trim(dblcBanco.Text)='') then
    begin
       panel2.SetFocus;
       dblcBanco.SetFocus;
    end ;
  end ;
//Inicio APO_202101_HPC  
//Opción desembolso en efectivo en oficinas
  If  dblcFormaDesem.Text='04' Then
  begin
    dblcCCBco.Text:='';
    edtAgencia.Text:='';
    pnlCajaDerrama.Visible := True;
  end;
//Fin APO_202101_HPC  

end;

procedure TFDevolucionAportes.dblcAgenciaExit(Sender: TObject);
var
  sWhere:string;
begin

  if bbtnCancelar.Focused then
     Exit ;

  if tmpCadenaEnter <> trim(dblcAgencia.Text) then
  begin
    if trim(dblcAgencia.Text) = '' then
      edtAgencia.Clear 
    else
    begin
      //Búsqueda
      sWhere:= 'AGENBCOID = '+ QuotedStr(dblcAgencia.Text) ;
      DM1.DisplayDescrip('prvTGE','COB102','AGENBCODES',sWhere,'AGENBCODES');

      if dm1.cdsQry.RecordCount > 0 then
        edtAgencia.Text := dm1.cdsQry.FieldByName('AGENBCODES').AsString
      else
      begin
        dblcAgencia.DataSource.DataSet.FieldByName(dblcAgencia.DataField).Clear ;
        edtAgencia.Clear ;
      end ;
    end;
  end ;
end;

procedure TFDevolucionAportes.bbtnAceptarClick(Sender: TObject);
var
 xSql : String;
 rr:currency;
begin
  ValidaDetalle ;
  DM1.cdsDevolucion.Edit;
  DM1.cdsDevolucion.FieldByName('TMONID').AsString     := dblcMoneda.Text;
  DM1.cdsDevolucion.FieldByName('APOMONTO').AsFloat    := StrToFloat(dbeMtoAporte.Text);
  DM1.cdsDevolucion.FieldByName('DEVMTO').AsFloat      := StrToFloat(dbeMontoDevoluc.Text);
  DM1.cdsDevolucion.FieldByName('TIPDESEID').AsString  := dblcFormaDesem.Text;
  DM1.cdsDevolucion.FieldByName('TIPDESEABR').AsString  := edtFormaDesem.Text;
  //DM1.cdsDevolucion.FieldByName('FORPAGOABR').AsString := DM1.cdsFPagoDevolucion.FieldByName('FORPAGOABR').AsString;
  DM1.cdsDevolucion.FieldByName('AGENBCOID').AsString  := dblcAgencia.Text;
  If Length(dblcAgencia.Text) > 0 then
   begin
    xSql := 'SELECT DPTOID FROM COB102 WHERE AGENBCOID='+quotedstr(dblcAgencia.Text);
    dm1.cdsQry.close;
    dm1.cdsQry.DataRequest(xSql);
    dm1.cdsQry.open;
    DM1.cdsDevolucion.FieldByName('DPTOGIRO').AsString := DM1.cdsQry.FieldByName('DPTOID').AsString;
   end;
  DM1.cdsDevolucion.FieldByName('DEVMOTID').AsString   := dblcMotDev.Text;
  DM1.cdsDevolucion.FieldByName('DEVRC').AsString      := Trim(dbmResultado.Text);
  DM1.cdsDevolucion.FieldByName('APOFPD').AsString     := 'S';
  DM1.cdsDevolucion.FieldByName('ASOCODMOD').AsString  := dbeCodigoModular.Text;
  //** 30/10/2002 - PJSV, se agrega para el oficio
  DM1.cdsDevolucion.FieldByName('ASOAPENOM').AsString  := dbeAsoNom.Text ;
  DM1.cdsDevolucion.FieldByName('USEID').AsString  := dblcdUSE.text;
  //**
  //DM1.cdsDevolucion.FieldByName('CIAID').AsString      := wCiaDef;
  //DM1.cdsDevolucion.FieldByName('APOSEC').AsString     :=Copy(DateToStr(Date),7,4)+Copy(DateToStr(Date),4,2);
  //DM1.cdsDevolucion.FieldByName('ASOCODMOD').AsString:=DM1.cdsAsociados1.FieldByName('ASOCODMOD').AsString;
  //DM1.cdsDevolucion.FieldByName('ASOCODAUX').AsString:=DM1.cdsAsociados1.FieldByName('ASOCODAUX').AsString;
  DM1.cdsDevolucion.FieldByName('NRONABO').AsString  := xCorreNabo;
  cdspost(DM1.cdsDevolucion);
  DM1.cdsDevolucion.post;

//wmc xxx  DM1.cdsTransDevol.Edit;
//wmc xxx  DM1.cdsTransDevol.FieldByName('TRANSMTO').Asfloat := StrToFloat(dbeMontoDevoluc.Text);
//wmc xxx  cdspost(DM1.cdsTransDevol);
//wmc xxx  DM1.cdsTransDevol.Post;

  wActualizado:=True;
  pnlAportes.Visible:=False;
  pnlCabecera.Enabled  := True ;

  dbgDetReclamo.ColumnByName('RECLMONTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsDetReclamo,'SUM(RECLMONTO)',''),ffNumber, 10, 2);
  dbgDevolver.ColumnByName('APOMONTO').FooterValue    := FloatToStrF(DM1.OperClientDataSet(DM1.cdsDevolucion,'SUM(APOMONTO)',''),ffNumber, 10, 2);
  dbgDevolver.ColumnByName('DEVMTO').FooterValue      := FloatToStrF(DM1.OperClientDataSet(DM1.cdsDevolucion,'SUM(DEVMTO)',''),ffNumber, 10, 2);
  if dm1.wModo = 'A' then
  begin
   dm1.cdsTransDevol.edit ;
   rr:=  DM1.OperClientDataSet(DM1.cdsDevolucion,'SUM(DEVMTO)','');
 //dm1.cdsTransDevol.FieldByName('TRANSMTO').AsString := dbgDevolver.ColumnByName('DEVMTO').FooterValue ;
   dm1.cdsTransDevol.FieldByName('TRANSMTO').AsString := CurrToStr(rr);
  end ;
  if not Z2bbtnAceptar . Enabled then
     Z2bbtnAceptar . Enabled  := True ;
end;

procedure TFDevolucionAportes.bbtnCancelarClick(Sender: TObject);
var rr:currency;
begin
  if wAdicionaDetalle then
  begin
    QuitaFlagAporte(dm1.cdsDevolucion.FieldByName('APO301ID').AsString);
    dbgDetReclamo.ColumnByName('RECLMONTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsDetReclamo,'SUM(RECLMONTO)',''),ffNumber, 10, 2);
    dbgDevolver.ColumnByName('APOMONTO').FooterValue    := FloatToStrF(DM1.OperClientDataSet(DM1.cdsDevolucion,'SUM(APOMONTO)',''),ffNumber, 10, 2);
    dbgDevolver.ColumnByName('DEVMTO').FooterValue      := FloatToStrF(DM1.OperClientDataSet(DM1.cdsDevolucion,'SUM(DEVMTO)',''),ffNumber, 10, 2);
    if dm1.wModo = 'A' then
    begin
      rr:=  DM1.OperClientDataSet(DM1.cdsDevolucion,'SUM(DEVMTO)','');
      dm1.cdsTransDevol.FieldByName('TRANSMTO').AsString := CurrToStr(rr);
    // dm1.cdsTransDevol.FieldByName('TRANSMTO').AsString := dbgDevolver.ColumnByName('DEVMTO').FooterValue ;
    end ;
  end ;
  DM1.cdsDevolucion.Cancel;
  pnlAportes.Visible   :=False ;
  pnlCabecera.Enabled := True  ;
end;

procedure TFDevolucionAportes.Z2bbtnAceptarClick(Sender: TObject);
var
  xSQL, xApoSec : string;
  x : Integer;
  cds : TwwClientDataset ;
  i , iRecCount : Integer ;
  sSql : String ;
  sRECLID  : String ;
  sANO , sMES : String ;
  sCorrelativo : String ;
begin

  ValidaGrabacion ;

  //CIM 29/04/2003
  xTDiar   :='';
  xComprob :='';
  xPeriodo :='';

  //Si es =04 se inserta en Mov.Caja recien cuando el dinero se desembolsa (EN LA OPCION DE CAJA DEL SISTEMA DE CREDITOS)
  //Y NO AQUI.
  If Trim(dblcFormaDesem.Text)<>'04' then  InsertaMovCaja;
  //*

  GrabaTransaccion ;
  AsignaItems ;
  {Procesos a realizar
  1. Grabar los Campos Correspondientes a la Transacción Afectada APOFDEV,APOFRECL,APOFNP
  2. Si la Transacción Afectara Reclamos Grabar los Campos Correspondientes en La Cabecera APO302
  3. Si la Transacción Afectara Reclamos Grabar los Campos Correspondientes en El Detalle APO303
  }

  //INICIO DE PROCESO DE GRABACIÓN
  if DM1.cdsTransDevol.ApplyUpdates(0) = 0 then
  begin
     if dm1.cdsDevolucion.ApplyUpdates(0) = 0 then
     begin
        cds := TwwClientDataset.Create(self);
        cds.CloneCursor(dm1.cdsDevolucion,True);
        iRecCount := cds.RecordCount ;
        AsignaAnoMes(sANO , sMES ) ;
        sRECLID := '' ;
        sSql := ' BEGIN ' ;
        for i := 1 to iRecCount do
        begin
            cds.RecNo := i ;
            if (cds.FieldByName('TIPODEV').AsString = '1') then
            begin
               //Sentencia que actualiza APO302
               if sRECLID <> cds.FieldByName('RECLID').AsString then
               begin
                  sRECLID := cds.FieldByName('RECLID').AsString ;
                  //Sentencia que actualiza APO302
                  sSql := sSql + #13 + ' UPDATE APO302 SET RECDEVUELTO=''S'' WHERE RECLID = ''' + cds.fieldByName('RECLID').AsString + ''' ; '
               end ;
               //Sentencia que actualiza APO303
               //En caso de que se permitan devoluciones parciales
               //esas modificaciones deberían ir aquí
            end ;
            //Sentencia que actualiza APO301
            sSql := sSql +  #13 + ' UPDATE APO301 SET APOFDEV=''S'' ,'
                        + #13 + 'DEVANO = ''' + sANO + ''' , '
                        + #13 + 'DEVMES = ''' + sMES + ''' , '
                        + #13 + 'TRANSMTODEV = NVL(TRANSMTODEV,0) + '
                        + cds.FieldByName('DEVMTO').AsString + #13 + ' WHERE ASOID = '''
                        + cds.FieldByName('ASOID').AsString + ''' AND APO301ID = '''
                        + cds.FieldByName('APO301ID').AsString + ''' ;' ;
        end ;
        //cOMMIT ;
        sSql := sSql + #13 + ' COMMIT;' ;
        sSql := sSql + #13 + ' END ;';

        DM1.DCOM1.AppServer.EjecutaSQL(sSQL);
        ShowMessage('Actualización Exitosa');
        cds.Free ;
        cds := nil ;

        //Adiciona a archivo de desembolso en Efectivo si es devolución en efectivo
         If Trim(dblcFormaDesem.Text)='04' Then
           Begin
             GrabaDesEfe;
           End;

        //Adicionales despues de una Actualización Exitosa :
        AdicionalesGrabacion ;
        wActualizado             := False;
        Z2bbtnAceptar . Enabled  := False ;
        Z2bbtnImpre   . Enabled  := TRue ;
        //
     end
     else
     begin
        DM1.DCOM1.AppServer.EjecutaSQL(
          'DELETE FROM APO311 WHERE DEVID='''
            + dm1.cdsTransDevol.FieldByName('DEVID').AsString + ''' ' );
        Raise Exception.Create('Error en la Grabación del Detalle de la Devolución');
     end ;
  end
  else
     Raise exception.Create('No se Pudo Grabar la Devolución');

end;


procedure TFDevolucionAportes.Z2bbtnNuevoClick(Sender: TObject);
begin

  if pnlInicio.Enabled then
     btnAso.SetFocus ;
  if pnlAportes.Visible then
     bbtnCancelar.OnClick(bbtnCancelar);

  Dm1.cdsTransDevol.cancel;

  DM1.cdsTransacciones.close;
  DM1.cdsDetReclamo.CLOSE;
  DM1.cdsDevolucion.Close;
  DM1.cdstransacciones.close;
  DM1.cdsDetReclamo.close;
  DM1.wModo := 'A' ;
  OnShow(self);
end;

procedure TFDevolucionAportes.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if  (DM1.wModo='A') or (DM1.wModo='M') then
  begin
    if wActualizado then
    begin
      if Application.MessageBox(' Tiene Datos No Actualizados '+#13+
            '¿Desea Salir y Cancelar sus Actualizaciones?',
            'Grabaciones Pendientes',
             MB_YESNO + MB_DEFBUTTON1) <> IDYES then
      	CanClose := false
    	else
      begin
        dm1.cdsDevolucion.CancelUpdates;
      end;
    end;
  end;
end;

procedure TFDevolucionAportes.FormKeyPress(Sender: TObject; var Key: Char);
begin
//  if (key=#13) and (ActiveControl <> dbmresultado) then
  if (key=#13)  then
  begin
    key:=#0;
    if dblcFormaDesem.Focused then
    begin

    end ;
    perform(CM_DialogKey,VK_TAB,0);
  end;
end;

procedure TFDevolucionAportes.GrabaTransaccion;
var
  xSQL, sUProceso, sUPago, sDepto : string;
  sCorrelativo : String ;
begin
  sCorrelativo := RecuperaCorrelativo ;
  if trim(sCorrelativo)='' then
     Raise exception.Create('Error en la Recuperación del Correlativo');
  DM1.cdstransdevol.FieldByName('DEVID').AsString       := sCorrelativo ;
  DM1.cdstransdevol.FieldByName('TRANSNOPE').AsString   := DM1.cdstransdevol.FieldByName('DEVID').AsString ;
  DM1.cdsTransDevol.FieldByName('TRANSID').AsString		  := DM1.DisplayDescrip('prvTGE','APO118','TRANSID','TRANSINTID='+QuotedStr('DEV'),'TRANSID');
  DM1.cdsTransDevol.FieldByName('ASOID').AsString		    := dblcdCodigo.Text;
  DM1.cdsTransDevol.FieldByName('ASOCODMOD').AsString		:= DM1.cdsAsociados.FieldByName('ASOCODMOD').AsString;
  DM1.cdsTransDevol.FieldByName('ASOCODAUX').AsString		:= DM1.cdsAsociados.FieldByName('ASOCODAUX').AsString;
  DM1.cdsTransDevol.FieldByName('ASOAPENOM').AsString		:= trim(dbeAsoNom.Text);
  DM1.cdsTransDevol.FieldByName('USEID').AsString		    := dblcdUse.Text;
  DM1.cdsTransDevol.FieldByName('USEABR').AsString		  := edtUse.Text;
  DM1.cdsTransDevol.FieldByName('UPROID').AsString		  := DM1.DisplayDescrip('prvTGE','APO101','UPROID','USEID='+QuotedStr(dblcdUse.Text),'UPROID');
  sUProceso:=DM1.DisplayDescrip('prvTGE','APO102','UPROABR','UPROID='+QuotedStr(DM1.cdsTransDevol.fieldbyName('UPROID').asString),'UPROABR');
  DM1.cdsTransDevol.FieldByName('UPROABR').AsString		  := sUProceso;
  DM1.cdsTransDevol.FieldByName('UPAGOID').AsString		  := DM1.DisplayDescrip('prvTGE','APO101','UPAGOID','USEID = '+QuotedStr(dblcdUse.Text),'UPAGOID');
  sUPago:=DM1.DisplayDescrip('prvTGE','APO103','UPAGOABR','UPAGOID='+QuotedStr( DM1.cdsTransDevol.FieldByName('UPAGOID').AsString),'UPAGOABR');
  DM1.cdsTransDevol.FieldByName('UPAGOABR').AsString		:= sUPago;
  DM1.cdsTransDevol.FieldByName('DPTOID').AsString      := DM1.DisplayDescrip('prvTGE','APO101','DPTOID,CIUDID','USEID = '+QuotedStr(dblcdUse.Text),'DPTOID');
  DM1.cdsTransDevol.FieldByName('CIUDID').AsString:=DM1.cdsQry.FieldByName('CIUDID').AsString;
  sDepto:=DM1.DisplayDescrip('prvTGE','APO158','DPTOABR ','DPTOID='+QuotedStr(DM1.cdsTransDevol.FieldByName('DPTOID').AsString),'DPTOABR');
  DM1.cdsTransDevol.FieldByName('DPTOABR').AsString		  := sDepto;

  xSql:='SELECT * FROM TGE114 WHERE FECHA=TO_DATE('''+ FormatDateTime('YYYYMMDD', dbdtpFechaDev.Date)+ ''',''YYYYMMDD'')';
  dm1.cdsReporte1.Close;
  dm1.cdsReporte1.DataRequest(xSql);
  dm1.cdsReporte1.Open;

  DM1.cdsTransDevol.FieldByName('TRANSANO').AsString		:= DM1.cdsReporte1.FieldByName('FECANO').AsString;
  DM1.cdsTransDevol.FieldByName('TRANSMES').AsString		:= DM1.cdsReporte1.FieldByName('FECMES').AsString;
  DM1.cdsTransDevol.FieldByName('TRANSTRIM').AsString		:= DM1.cdsReporte1.FieldByName('FECTRIM').AsString;
  DM1.cdsTransDevol.FieldByName('TRANSSEM').AsString		:= DM1.cdsReporte1.FieldByName('FECSEM').AsString;
  DM1.cdsTransDevol.FieldByName('TRANSAAMM').AsString		:= DM1.cdsReporte1.FieldByName('FECANO').AsString+DM1.cdsReporte1.fieldbyname('FECMES').AsString;
  DM1.cdsTransDevol.FieldByName('TRANSAATRI').AsString  := DM1.cdsReporte1.FieldByName('FECAATRI').AsString;
  DM1.cdsTransDevol.FieldByName('TRANSAASEM').AsString  := DM1.cdsReporte1.FieldByName('FECAASEM').AsString;
  DM1.cdsTransDevol.FieldByName('DEVANO').AsString		  := DM1.cdsTransDevol.FieldByName('TRANSANO').AsString;
  DM1.cdsTransDevol.FieldByName('DEVMES').AsString		  := DM1.cdsTransDevol.FieldByName('TRANSMES').AsString;

  DM1.cdsTransDevol.FieldByName('TIPDESEID').AsString		:= dblcFormaDesem.Text;
  DM1.cdsTransDevol.FieldByName('TIPDESEABR').AsString	        := edtFormaDesem.Text;
  DM1.cdsTransDevol.FieldByName('TMONID').AsString		:= 'N';
//WMC 20030623  DM1.cdsTransDevol.FieldByName('TRANSMTO').Asfloat		:= StrToFloat(dbeMtoAporte.Text);
//wmc 666  DM1.cdsTransDevol.FieldByName('BANCOID').AsString		:= dblcBanco.Text;
//wmc 666  DM1.cdsTransDevol.FieldByName('CCBCOID').AsString		:= dbeCuenta.Text;
  DM1.cdsTransDevol.FieldByName('TRANSFFCIND').AsString	        := '';
  DM1.cdsTransDevol.FieldByName('TRANSINTID').AsString	        := 'DEV';

  //CIM 29/04/2003
//WMC 20030625  DM1.cdsTransDevol.FieldByName('BANCODESEM').AsString	        := dblcBanco.Text;
  DM1.cdsTransDevol.FieldByName('BANCOID').AsString	        := dblcBanco.Text;
//WMC 20030625  DM1.cdsTransDevol.FieldByName('CCBCOIDDESEM').AsString        := dblcCCBco.Text;
  DM1.cdsTransDevol.FieldByName('CCBCOID').AsString             := dblcCCBco.Text;
  DM1.cdsTransDevol.FieldByName('TDIARID').AsString	        := xTDiar;
  DM1.cdsTransDevol.FieldByName('ECANOMM').AsString	        := xPeriodo;
  DM1.cdsTransDevol.FieldByName('ECNOCOMP').AsString	        := xComprob;
  //*
  //ASONCTA
  //DPTOGIRO
{
  if dblcAgencia.Enabled and (trim(dblcAgencia.text)<> '') then
  begin
    DM1.cdsTransDevol.FieldByName('ASONCTA').AsString	        := dbeCuentaAsociado .Text ;
    if dblcAgencia.LookupTable.Locate('BANCOID;AGENBCOID',
                VarArrayOf([DM1.cdsTransDevol.FieldByName('BANCOID').AsString,
                            DM1.cdsTransDevol.FieldByName('AGENBANCOID').AsString]),[]) then
       DM1.cdsTransDevol.FieldByName('DPTOGIRO').AsString := dblcAgencia.LookupTable.fIELDbYnAME('DPTOID').AsString

  end
}
  if dblcCCBco.Enabled and not dblcAgencia.Enabled then
  begin
    DM1.cdsTransDevol.FieldByName('ASONCTA').AsString	        := dbeCuentaAsociado .Text ;
    if dblcAgencia.LookupTable.Locate('BANCOID;AGENBCOID',
                VarArrayOf([DM1.cdsTransDevol.FieldByName('BANCOID').AsString,
                            DM1.cdsTransDevol.FieldByName('AGENBANCOID').AsString]),[]) then
       DM1.cdsTransDevol.FieldByName('DPTOGIRO').AsString := dblcAgencia.LookupTable.fIELDbYnAME('DPTOID').AsString

  end ;

  DM1.cdsTransDevol.FieldByName('USUARIO').AsString		:= DM1.wUsuario;
  DM1.cdsTransDevol.FieldByName('FREG').AsDateTime		:= Date;
  DM1.cdsTransDevol.FieldByName('HREG').AsDateTime		:= Date+SysUtils.Time;
  cdspost(DM1.cdsTransDevol);
  DM1.cdsTransDevol.post;
end;

procedure TFDevolucionAportes.dbgDevolverDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept:=true;
end;

procedure TFDevolucionAportes.dbgAportesMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   if ((dm1.wmodo = 'A') and ( dm1.cdsTransacciones.RecordCount > 0 )) then
      dbgAportes.BeginDrag(False);
end;

procedure TFDevolucionAportes.dbgAportesEndDrag(Sender, Target: TObject; X, Y: Integer);
var
  xSql:string;
  sMensaje : String ;
begin
  If Target=dbgDevolver then
  begin
    //Validaciones
    {
     1. Verificar que tenga saldo por Devolver.
     2. Verificar que no se encuentre en proceso de Reclamo.
    }
    //1.
    if DM1.cdsTransacciones.fieldbyname('TRANSMTO').AsCurrency -
       DM1.cdsTransacciones.fieldbyname('TRANSMTODEV').AsCurrency <= 0 then
    begin
      showmessage('Este Aporte No tiene Saldo por Devolver');
      Exit;
    end ;
    //2.
    sMensaje := BuscaAporteReclamo(dm1.cdsTransacciones.FieldByName('APO301ID').AsString);
    if trim(sMensaje) <> '' then
    begin
      ShowMessage(sMensaje) ;
      Exit ;
    end ;
//wmc    DM1.cdsDevolucion.Insert;
    DM1.cdsDevolucion.Append;
//wmc    DM1.cdsDevolucion.FieldByName('DEVID').AsString	  := xDevol;
    // Inicio HPC_201503_APO       : Error al Seleccionar registros de devolución
    DM1.cdsDevolucion.FieldByName('DEVID').AsString	   	:= '0';
    // fin    HPC_201503_APO       : Error al Seleccionar registros de devolución
    DM1.cdsDevolucion.FieldByName('APOANO').AsString 	  := DM1.cdsTransacciones.FieldByName('TRANSANO').AsString;
    DM1.cdsDevolucion.FieldByName('APOMES').AsString 	  := DM1.cdsTransacciones.FieldByName('TRANSMES').AsString;
    DM1.cdsDevolucion.FieldByName('TMONID').AsString 	  := DM1.cdsTransacciones.FieldByName('TMONID').AsString;
    DM1.cdsDevolucion.FieldByName('APOMONTO').Asfloat 	  := DM1.cdsTransacciones.FieldByName('TRANSMTO').AsFloat -
                                                             DM1.cdsTransacciones.FieldByName('TRANSMTODEV').AsFloat  ;
    DM1.cdsDevolucion.FieldByName('ASOID').AsString   	  := DM1.cdsAsociados.FieldByName('ASOID').AsString;
    DM1.cdsDevolucion.FieldByName('ASOCODMOD').AsString   := DM1.cdsAsociados.FieldByName('ASOCODMOD').AsString;
    DM1.cdsDevolucion.FieldByName('ASONCTA').AsString     := DM1.cdsAsociados.FieldByName('ASONCTA').AsString;
    DM1.cdsDevolucion.FieldByName('BANCOID').AsString     := DM1.cdsAsociados.FieldByName('BANCOID').AsString;
    DM1.cdsDevolucion.FieldByName('DEVMTO').AsFloat       := DM1.cdsTransacciones.FieldByName('TRANSMTO').AsFloat -
                                                             DM1.cdsTransacciones.FieldByName('TRANSMTODEV').AsFloat  ;
    DM1.cdsDevolucion.FieldByName('USUARIO').AsString     := DM1.wUsuario;
    DM1.cdsDevolucion.FieldByName('FREG').AsDateTime      := Date;
    DM1.cdsDevolucion.FieldByName('HREG').AsDateTime      := Date+SysUtils.Time;
    DM1.cdsDevolucion.FieldByName('TRANSNOPE').AsString   := DM1.cdsTransacciones.FieldByName('TRANSNOPE').AsString;
    DM1.cdsDevolucion.FieldByName('TRANSFOPE').AsDateTime := DM1.cdsTransacciones.FieldByName('TRANSFOPE').AsDateTime;
    DM1.cdsDevolucion.FieldByName('APO301ID').AsString    := DM1.cdsTransacciones.FieldByName('APO301ID').AsString;
    DM1.cdsDevolucion.FieldByName('TIPODEV').AsString     := '0'; //APORTES

    cdspost(DM1.cdsDevolucion);
//wmc comnetado para cancelar panel de edición    DM1.cdsDevolucion.Next;
//wmc    DM1.cdsDevolucion.Post;

//WMC    GrabaTransaccion(sender);

    DM1.cdsTransacciones.Edit;
//wmc    DM1.cdsTransacciones.FieldByName('APOFDEV').AsString:='S';
    DM1.cdsTransacciones.FieldByName('OK').AsString:='1';
    cdsPost(DM1.cdsTransacciones);
    DM1.cdsTransacciones.Post;

//WMC    DM1.cdsTransacciones.Filter:='(APOFDEV<>'+QuotedStr('S')+' OR APOFDEV IS NULL)';
//WMC    DM1.cdsTransacciones.Filtered:=True;

//wmc    dbgDetReclamo.ColumnByName('RECLMONTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsDetReclamo,'SUM(RECLMONTO)',''),ffNumber, 10, 2);
//wmc    dbgDevolver.ColumnByName('APOMONTO').FooterValue    := FloatToStrF(DM1.OperClientDataSet(DM1.cdsDevolucion,'SUM(APOMONTO)',''),ffNumber, 10, 2);
//wmc    dbgDevolver.ColumnByName('DEVMTO').FooterValue      := FloatToStrF(DM1.OperClientDataSet(DM1.cdsDevolucion,'SUM(DEVMTO)',''),ffNumber, 10, 2);
    //llamar al dobleclick
    wAdicionaDetalle := True ;
    dbgdevolver.OnDblClick(dbgdevolver);
  end;

end;

procedure TFDevolucionAportes.dbgDevolverDblClick(Sender: TObject);
begin

  if dbgDevolver.Focused then
     wAdicionaDetalle := False ;
  pnlAportes.visible     :=True;
  dblcMonedaExit(sender);
  tmpCadenaEnter := dblcMotDev.Text ;
  dblcMotDevExit(sender);
  pnlCabecera.Enabled := False ;
  if dm1.wModo <> 'A' then
  begin
     Panel5.Enabled := False  ;
     bbtnAceptar.Visible := False ;
  end
  else
  begin
     Panel5.Enabled := True ;
     bbtnAceptar.Visible := ( dm1.cdsDevolucion.FieldByName('TIPODEV').AsString = '0' ) ;
     //[0]Aportes       [1]Reclamos
     dbeMontoDevoluc.Enabled := ( dm1.cdsDevolucion.FieldByName('TIPODEV').AsString = '0' ) ;
     dblcMotDev.Enabled      := ( dm1.cdsDevolucion.FieldByName('TIPODEV').AsString = '0' ) ;
     dbmresultado.Enabled    := ( dm1.cdsDevolucion.FieldByName('TIPODEV').AsString = '0' ) ;
     //
     if dbeMontoDevoluc.Enabled then
     begin
       dbeMontoDevoluc.SetFocus;
       DM1.cdsDevolucion.Edit;
     end ;
     //
  end ;
  if wAdicionaDetalle then
     edtMotDev.Clear ;

end;

procedure TFDevolucionAportes.dbgAportesDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
   if (dm1.wmodo = 'A') then
      Accept := True
   else
      Accept := False ;
end;

procedure TFDevolucionAportes.dbgDevolverEndDrag(Sender, Target: TObject; X, Y: Integer);
var Fecope, Devano, Devmes, Asociado, Bwhere, Flagdev, Numope : string;
  cds  : TwwClientDataset ;
  i    : word ;
  rr:currency;
begin
  if target=dbgAportes then
  begin
      //Hay que verificar que sea un Aporte
      if dm1.cdsDevolucion.FieldByName('TIPODEV').AsString <> '0' then
      begin
         ShowMessage('Esta Devolución corresponde a un Reclamo');
         Exit ;
      end;
      QuitaFlagAporte(DM1.cdsDevolucion.FieldByName('APO301ID').AsString) ;
      DM1.cdsDevolucion.Edit ;
      Dm1.cdsDevolucion.Delete;

      dbgDevolver.ColumnByName('APOMONTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsDevolucion,'SUM(APOMONTO)',''),ffNumber, 10, 2);
      dbgDevolver.ColumnByName('DEVMTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsDevolucion,'SUM(DEVMTO)',''),ffNumber, 10, 2);
      if dm1.wModo = 'A' then
      begin
       dm1.cdsTransDevol.edit ;
       rr:=  DM1.OperClientDataSet(DM1.cdsDevolucion,'SUM(DEVMTO)','');
       dm1.cdsTransDevol.FieldByName('TRANSMTO').AsString := CurrToStr(rr);
      //dm1.cdsTransDevol.FieldByName('TRANSMTO').AsString := dbgDevolver.ColumnByName('DEVMTO').FooterValue ;
      end ;

  end;
  if target=dbgDetReclamo then
  begin
      //Hay que verificar que sea un Reclamo
      if dm1.cdsDevolucion.FieldByName('TIPODEV').AsString <> '1' then
      begin
         ShowMessage('Esta Devolución corresponde a un Aporte no a un Reclamo');
         Exit ;
      end;
//**********************************************************************************//
      cds := TwwClientDataset.Create (self);
      cds.CloneCursor(dm1.cdsDevolucion,True);
      cds.Filter   := 'RECLID=''' + dm1.cdsDevolucion.FieldByName('RECLID').AsString + ''' ' ;
      cds.Filtered := True ;
      for i := 1 to cds.recordcount do
      begin
        cds.RecNo := i ;
        QuitaFlagReclamo(cds.FieldByName('APO301ID').AsString,cds.FieldByName('RECLID').AsString) ;
      end ;
      while not cds.eof do
         cds.Delete;
      cds.Free ;
      cds := nil ;
//**********************************************************************************//
      //Reemplazar
//wmc xxx      QuitaFlagReclamo(DM1.cdsDevolucion.FieldByName('APO301ID').AsString) ;
//wmc xxx      DM1.cdsDevolucion.Edit ;
//wmc xxx      Dm1.cdsDevolucion.Delete;

      dbgDetReclamo.ColumnByName('RECLMONTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsDetReclamo,'SUM(RECLMONTO)',''),ffNumber, 10, 2);
      dbgDevolver.ColumnByName('APOMONTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsDevolucion,'SUM(APOMONTO)',''),ffNumber, 10, 2);
      dbgDevolver.ColumnByName('DEVMTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsDevolucion,'SUM(DEVMTO)',''),ffNumber, 10, 2);
      if dm1.wModo = 'A' then
      begin
       dm1.cdsTransDevol.edit ;
       rr:=  DM1.OperClientDataSet(DM1.cdsDevolucion,'SUM(DEVMTO)','');
       dm1.cdsTransDevol.FieldByName('TRANSMTO').AsString := CurrToStr(rr);
       //dm1.cdsTransDevol.FieldByName('TRANSMTO').AsString := dbgDevolver.ColumnByName('DEVMTO').FooterValue ;
      end ;

  end;
end;

procedure TFDevolucionAportes.dbgDevolverMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (dm1.cdsDevolucion.RecordCount>0) and (dm1.wmodo = 'A') then
  	dbgDevolver.BeginDrag(False) ;
end;

procedure TFDevolucionAportes.dbgDetReclamoDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
   if (dm1.wmodo = 'A') then
      Accept := True
   else
      Accept := False ;
end;

procedure TFDevolucionAportes.dbgDetReclamoMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   if ((dm1.wmodo = 'A') and ( dm1.cdsDetReclamo.RecordCount > 0 )) then
      dbgDetReclamo.BeginDrag(False);
end;

procedure TFDevolucionAportes.dbgDetReclamoEndDrag(Sender, Target: TObject; X, Y: Integer);
var
  xSql:string;
  cds :TwwClientDataset;
  i : integer ;
  rr:currency;
begin
  if target=dbgDevolver then
  begin
    //*****************//
    cds := TwwClientDataset.Create (self);
    cds.CloneCursor(dm1.cdsDetReclamo,True);
    cds.Filter   := 'RECLID=''' + dm1.cdsDetReclamo.FieldByName('RECLID').AsString + ''' ' ;
    cds.Filtered := True ;
    for i := 1 to cds.recordcount do
    begin
////////////////*********************************//////////////////
        cds.RecNo := i ;
    //wmc    DM1.cdsDevolucion.insert;
        DM1.cdsDevolucion.Append;
    //wmc    DM1.cdsDevolucion.FieldByName('DEVID').AsString		:= xDevol;
        // Inicio HPC_201503_APO       : Error al Seleccionar registros de devolución
        DM1.cdsDevolucion.FieldByName('DEVID').AsString		:= '0';
        // fin    HPC_201503_APO       : Error al Seleccionar registros de devolución
        DM1.cdsDevolucion.FieldByName('APOANO').AsString 		:= cds.FieldByName('APOANO').AsString;
        DM1.cdsDevolucion.FieldByName('APOMES').AsString 		:= cds.FieldByName('APOMES').AsString;
        DM1.cdsDevolucion.FieldByName('TMONID').AsString 		:= cds.FieldByName('TMONID').AsString;
        DM1.cdsDevolucion.FieldByName('APOMONTO').AsFloat 		:= cds.FieldByName('APOMONTO').AsFloat;
        DM1.cdsDevolucion.FieldByName('DEVFRECL').AsString 		:= 'S';
        DM1.cdsDevolucion.FieldByName('RECLID').AsString 		:= cds.FieldByName('RECLID').AsString;
        DM1.cdsDevolucion.FieldByName('ASOID').AsString 		:= DM1.cdsAsociados.FieldByName('ASOID').AsString;
        DM1.cdsDevolucion.FieldByName('ASOCODMOD').AsString		:= DM1.cdsAsociados.FieldByname('ASOCODMOD').AsString;
        DM1.cdsDevolucion.FieldByName('ASOCODAUX').AsString		:= DM1.cdsAsociados.FieldByname('ASOCODAUX').AsString;
        DM1.cdsDevolucion.FieldByName('ASONCTA').AsString 		:= DM1.cdsAsociados.FieldByName('ASONCTA').AsString;
        DM1.cdsDevolucion.FieldByName('BANCOID').AsString 		:= DM1.cdsAsociados.FieldByName('BANCOID').AsString;
        DM1.cdsDevolucion.FieldByName('DEVMTO').AsFloat 		:= cds.FieldByName('RECLMONTO').AsFloat;
        DM1.cdsDevolucion.FieldByName('USUARIO').AsString 		:= DM1.wUsuario;
        DM1.cdsDevolucion.FieldByName('FREG').Asdatetime 		:= Date;
        DM1.cdsDevolucion.FieldByName('HREG').AsDateTime 		:= Date+SysUtils.Time;
        DM1.cdsDevolucion.FieldByName('TRANSNOPE').AsString 	        := cds.FieldByName('TRANSNOPE').AsString;
        DM1.cdsDevolucion.FieldByName('TRANSFOPE').Asdatetime           := cds.FieldByName('TRANSFOPE').AsDateTime;
        DM1.cdsDevolucion.FieldByName('APO301ID').AsString              := cds.FieldByName('APO301ID').AsString;

        DM1.cdsDevolucion.FieldByName('DEVMTO').ASCurrency 	        := cds.FieldByName('DEVMONTO').AsCurrency;
        DM1.cdsDevolucion.FieldByName('DEVMOTID').AsString              := cds.FieldByName('RECLMOTID').AsString;
        DM1.cdsDevolucion.FieldByName('DEVRC').AsString                 := cds.FieldByName('RECLRC').AsString;

        DM1.cdsDevolucion.FieldByName('TIPODEV').AsString               := '1'; //RECLAMOS

        cdspost(DM1.cdsDevolucion);
    //wmc    DM1.cdsDevolucion.Post;
        DM1.cdsDevolucion.Next;
    //wmc    GrabaTransaccion(sender);
        cds.Edit;
        cds.FieldByName('OK').AsString:='1';
    //wmc    DM1.cdsDetReclamo.FieldByName('RECLSITID').AsString:='03';
    //wmc    DM1.cdsDetReclamo.FieldByName('RECLFFIN').AsDateTime:=Date;
        cdspost(cds);
        cds.post;
////////////////*********************************//////////////////
    end ;
    cds.Free ;
    cds := nil ;
    //*****************//

    dbgDetReclamo.ColumnByName('RECLMONTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsDetReclamo,'SUM(RECLMONTO)',''),ffNumber, 10, 2);
    dbgDevolver.ColumnByName('APOMONTO').FooterValue    := FloatToStrF(DM1.OperClientDataSet(DM1.cdsDevolucion,'SUM(APOMONTO)',''),ffNumber, 10, 2);
    dbgDevolver.ColumnByName('DEVMTO').FooterValue      := FloatToStrF(DM1.OperClientDataSet(DM1.cdsDevolucion,'SUM(DEVMTO)',''),ffNumber, 10, 2);
    if dm1.wModo = 'A' then
    begin
     dm1.cdsTransDevol.edit ;
     rr:=  DM1.OperClientDataSet(DM1.cdsDevolucion,'SUM(DEVMTO)','');
     dm1.cdsTransDevol.FieldByName('TRANSMTO').AsString := CurrToStr(rr);
     //dm1.cdsTransDevol.FieldByName('TRANSMTO').AsString := dbgDevolver.ColumnByName('DEVMTO').FooterValue ;
    end ;
    Z2bbtnAceptar . Enabled  := True ;
  end;
end;

procedure TFDevolucionAportes.bbtnSigueClick(Sender: TObject);
var
  xSQL:String;
begin

  xSQL := 'BEGIN SP_ACT_APO301ID (''' + dblcdCodigo.text + '''); END;';
  DM1.DCOM1.AppServer.EjecutaSQL(XSQL);

  xSql:='SELECT APO301.*,''0'' OK FROM APO301 WHERE ASOID='+ QuotedStr(dblcdCodigo.text)
       +' AND TRANSINTID='+quotedstr('APO');

  DM1.Filtracds(DM1.cdsTransacciones,xSql);
// WMC 666  DM1.cdsTransacciones.IndexFieldNames:='TRANSANO;TRANSMES;TRANSFOPE';
  DM1.cdsTransacciones.Filter:='(OK='+quotedstr('0')+')';
  DM1.cdsTransacciones.Filtered:=True;

  TNumericField(DM1.cdsTransacciones.FieldByName('TRANSMTO')).DisplayFormat:='###,###,##0.00';
  TNumericField(DM1.cdsTransacciones.FieldByName('TRANSMTO')).EditFormat:='########0.00';
  TNumericField(DM1.cdsTransacciones.FieldByName('TRANSMTODEV')).DisplayFormat:='###,###,##0.00';
  TNumericField(DM1.cdsTransacciones.FieldByName('TRANSMTODEV')).EditFormat:='########0.00';

  dbgAportes.ColumnByName('TRANSMTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.CdsTransacciones,'SUM(TRANSMTO)',''),ffNumber, 10, 2);

//wmc xxx  xSql:='SELECT * FROM APO305 WHERE ASOID='+QuotedStr(dblcdCodigo.Text);
  if dm1.wModo = 'A' then
    xSql := 'SELECT * FROM APO305 WHERE 1=0'
  else
    xSQL := 'SELECT * FROM APO305 WHERE DEVID =''' + DM1.cdsTransDevol.FieldByName('DEVID').AsString + ''' ';
  DM1.Filtracds(dm1.cdsDevolucion,xSQL);

  TNumericField(DM1.cdsDevolucion.FieldByName('APOMONTO')).DisplayFormat:='###,###,##0.00';
  TNumericField(DM1.cdsDevolucion.FieldByName('APOMONTO')).EditFormat:='########0.00';
  dbgDevolver.ColumnByName('APOMONTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsDevolucion,'SUM(APOMONTO)',''),ffNumber, 10, 2);
  TNumericField(DM1.cdsDevolucion.FieldByName('DEVMTO')).DisplayFormat:='###,###,##0.00';
  TNumericField(DM1.cdsDevolucion.FieldByName('DEVMTO')).EditFormat:='########0.00';
  dbgDevolver.ColumnByName('DEVMTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsDevolucion,'SUM(DEVMTO)',''),ffNumber, 10, 2);
  if dm1.wModo = 'A' then
  begin
   dm1.cdsTransDevol.FieldByName(dbdtpFechaDev.DataField).AsDateTime := dtFechaSistema ;
   Panel2.Enabled := True ;
   dbdtpFechaDev.SetFocus ;
  end ;


//wmc xxx  xSql:='SELECT * FROM APO301 WHERE ASOID='+QUOTEDSTR(dblcdCodigo.Text)+'AND TRANSINTID='+QUOTEDSTR('DEV');
//wmc xxx  DM1.FILTRACDS(dm1.cdsTransDevol,XSQL);
//wmc xxx  DM1.cdsTransDevol.IndexFieldNames:='ASOID;TRANSANO;TRANSMES;TRANSINTID;TRANSNOPE;TRANSFOPE';

  xSql:='SELECT APO303.*,''0'' OK FROM APO303 , APO302 WHERE APO302.RECESTADO IN (''03'',''04'') AND NVL(APO302.RECDEVUELTO,''N'')=''N'' AND APO303.RECLSITID IN (''03'',''04'') AND APO302.ASOID='+QUOTEDSTR(dblcdCodigo.Text) +' AND APO302.RECLID = APO303.RECLID  ';
  DM1.FILTRACDS(dm1.cdsDetReclamo,XSQL);
  DM1.cdsDetReclamo.IndexFieldNames:='RECLID;APOANO;APOMES;TRANSFOPE';
  DM1.cdsDetReclamo.Filter   := 'OK = ''0''';
  DM1.cdsDetReclamo.filtered := True;

  TNumericField(DM1.cdsDetReclamo.FieldByName('RECLMONTO')).DisplayFormat:='###,###,##0.00';
  TNumericField(DM1.cdsDetReclamo.FieldByName('RECLMONTO')).EditFormat:='########0.00';
  dbgDetReclamo.ColumnByName('RECLMONTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsDetReclamo,'SUM(RECLMONTO)',''),ffNumber, 10, 2);

  bbtnSigue . Enabled := False ;
  btnAso    . Enabled := False ;

  pnlinicio.enabled:=false;
end;

// POR HERNAN
Function TFDevolucionAportes.ObtenerSaldoAnterior:Double;
var  xANO: ShortInt;  SsQL : String;
begin
   sSQL:= 'SELECT ASOFRESNOM FROM APO201 WHERE ASOID='''+
   dblcdCodigo.text+'''';
   DM1.FiltraCDS(DM1.cdsQry,sSQL);
   if trim(DM1.cdsQry.fieldByname('ASOFRESNOM').AsString)<>'' then
   begin
    xANO:=1996-StrToInt(FormatDateTime('YYYY',DM1.cdsQry.fieldByname('ASOFRESNOM').AsDateTime));
    if xANO<0 then xANO:=0;
    // buscando el beneficio por el nro de años de aportacion
    sSQL:= 'SELECT BENMONTO FROM APO121 WHERE APOANO='+IntToStr(xANO);
    DM1.FiltraCDS(DM1.cdsQry,sSQL);
    Result := DM1.cdsQry.fieldByname('BENMONTO').AsFloat;
   end
   else
    Result:=0;
end;

procedure TFDevolucionAportes.spdMesExit(Sender: TObject);
begin
  If Length(Trim(spdMes.Text))=1 Then
  Begin
    spdMes.Text:='0'+spdMes.Text;
  End;
end;

procedure TFDevolucionAportes.Correlativo;
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

procedure TFDevolucionAportes.CorreCred(pCorre: String);
var
 xCadena,xSql : String;
begin
 //** dependiendo del pCorre, lleno xCadena para el Sql
 If pCorre = 'CREDID' then
   xCadena := 'substr(CREDID,9,7)'
 else
   xCadena := pCorre;

 //** busco el minimo y le agrego uno para que no hayan huecos, OJO por el día activo
 xSql := 'select min('+xCadena+' +1) NUMCRED from CRE206 '+
         ' where '+ xCorreWhere +
         xCorreCampo+' not in (select x.'+xCorreCampo+' from CRE206 x, CRE206 y'+
         ' where '+ xCorreWherex + xCorreWherey +
         'x.'+xCorreCampo+' = y.'+xCorreCampo+' +1)';
 Dm1.cdsQry.Close;
 Dm1.cdsQry.DataRequest(xSql);
 Dm1.cdsQry.Open;
 //** si devuelve vacio, busco el ultimo correlativo que hubiera, no interesa el día
 If Dm1.cdsQry.FieldByName('NUMCRED').AsString = '' then
  begin
   xSql := 'select max('+xCadena+' +1) NUMCRED from CRE206 '+
           'where '+ xCorreWhere +
           xCorreCampo+' IN (select x.'+xCorreCampo+' from CRE206 x, CRE206 y '+
          ' where '+ xCorreWherex + xCorreWherey +
          'x.'+xCorreCampo+' = y.'+xCorreCampo+' +1)';
//           'where x.'+xCorreCampo+' = y.'+xCorreCampo+' +1) AND CREAREA = '+quotedstr(xArea);
   Dm1.cdsQry.Close;
   Dm1.cdsQry.DataRequest(xSql);
   Dm1.cdsQry.Open;
   //** asigno el nuevo correlativo
   xCorre := dm1.StrZero(IntToStr(Dm1.cdsQry.FieldByName('NUMCRED').AsInteger + 1),xCeros);
  end
 else
   //** asigno el nuevo correlativo
  xCorre := dm1.StrZero(Dm1.cdsQry.FieldByName('NUMCRED').AsString,xCeros);
end;

procedure TFDevolucionAportes.BuscaCorre;
var
 xSql : String;
begin
  //** por defecto
  xPaso := True;
  //** busco en la tabla auxiliar de correlativos si en xcorre ya existe,
  //** ejemplo : en CRE303 puede ser que este en el 1000 si más de un usuario toma
  //** este mas uno van a tener el 1001, lo cual es verdad, para evitar esto grabo
  //** en CRE201 y verifico que el 1001 no exista en este sino sigue buscando
  xSql := 'SELECT count(NUMERO) TOTAL FROM '+xTabla+' WHERE NUMERO='+quotedstr(xCorre);
  Dm1.cdsQry.Close;
  Dm1.cdsQry.DataRequest(xSql);
  Dm1.cdsQry.Open;
  //** False = para que siga repitiendo la busqueda
  If Dm1.cdsQry.FieldByName('TOTAL').Asfloat > 0 then
    xPaso := False
  else
   //** sino graba en la tabla auxiliar (cre201)
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
        xSql := 'INSERT INTO CRE206 ('+xCorreCampo+',CREAREA,CORREANO,TIPO) VALUES ('+quotedstr(xCorreCadena+xCorre)+
                ','+quotedstr(xArea)+','+quotedstr(FloatToStr(xAnoC))+','+quotedstr(xTipocorre)+')'
       else
        xSql := 'INSERT INTO CRE206 ('+xCorreCampo+',CREAREA,CORREANO,TIPO) VALUES ('+quotedstr(xCorre)+
                ','+quotedstr(xArea)+','+quotedstr(FloatToStr(xAnoC))+','+quotedstr(xTipocorre)+')';
      end
     else
      begin
       If xCorreCampo = 'CREDID' then
        xSql := 'UPDATE CRE206 SET '+xCorreCampo+' ='+quotedstr(xCorreCadena+xCorre)+
                ' WHERE CREAREA ='+quotedstr(xArea)+' AND CORREANO='+quotedstr(FloatToStr(xAnoC))+
                ' AND SUBSTR(CREDID,1,2)='+quotedstr(copy(xCorreCadena,1,2))+
                ' AND SUBSTR(CREDID,3,4)='+quotedstr(copy(xCorreCadena,3,4))+
                ' AND SUBSTR(CREDID,7,2)='+quotedstr(copy(xCorreCadena,7,2))+
                ' AND TIPO ='+quotedstr(xTipocorre)
       else
        xSql := 'UPDATE CRE206 SET '+xCorreCampo+' ='+quotedstr(xCorre)+
                ' WHERE CREAREA ='+quotedstr(xArea)+' AND CORREANO='+quotedstr(FloatToStr(xAnoC))+
                ' AND TIPO ='+quotedstr(xTipocorre);
//                ' WHERE CREAREA ='+quotedstr(xArea);
      end;
     DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
    end;
end;

procedure TFDevolucionAportes.BuscaApo305;
var
 xSql : String;
 xI : Integer;
begin
   for xI := 1 to 5 do
    begin
     cDesembolso[xI,1] := '';
     cDesembolso[xI,2] := '';
    end;

   xSql := 'select TIPDESEID from cre104 where tipdev=''S'' and flgoficio<>''N''';
   dm1.cdsqry.close;
   dm1.cdsqry.DataRequest(xSql);
   dm1.cdsqry.Open;
   dm1.cdsqry.First;   
   xI := 1;
   While not dm1.cdsqry.eof do
    begin
     xSql := 'SELECT COUNT(DEVID) TOTAL FROM APO305 WHERE FREG='+wRepFecServi+
             ' AND TIPDESEID = '+dm1.cdsqry.FieldByName('TIPDESEID').AsString+
             ' AND NROFICIO is not null';
     dm1.cdsqry1.close;
     dm1.cdsqry1.DataRequest(xSql);
     dm1.cdsqry1.Open;
     If dm1.cdsqry1.FieldByName('TOTAL').AsFloat > 0 then
      begin
       cDesembolso[xI,1] := dm1.cdsqry.FieldByName('TIPDESID').AsString;
       cDesembolso[xI,2] := 'N';
      end
     else
      begin
       cDesembolso[xI,1] := dm1.cdsqry.FieldByName('TIPDESEID').AsString;
       cDesembolso[xI,2] := 'M';
      end;
      xI := xI + 1;
     dm1.cdsqry.next;
    end;
end;

procedure TFDevolucionAportes.btnAsoClick(Sender: TObject);
begin
   xNamForm  := 'FDevolucionAportes';
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
    MtxAsocia.ClientDataSet   := dm1.cdsAsociados1;
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

procedure TFDevolucionAportes.FormShow(Sender: TObject);
var
  xSql : String;
begin

//**************************
  Z2bbtnAceptar . Enabled  := False ;
  If DM1.wModo='M' Then
  begin
   i:=0;
   xCrea := True;
   LlenarDatosAsociado(dm1.cdsTransDevol.FieldByName('ASOID').AsString);
   if dblcBanco.LookupTable.Locate('BANCOID', VarArrayOf([dblcBanco.Text]),[]) then
    dbeBanco.Text := dblcBanco.LookupTable.FieldByName('BANCOABR').AsString;

   panel2.Enabled               := False ;
   z2bbtnAceptar.Enabled        := False ;
   bbtnSigue.OnClick(bbtnSigue);
   wActualizado:=False;

   bbtnSigue   . Enabled := False ;
   btnAso      . Enabled := False ;
   Z2bbtnImpre . Enabled := True ;
  end
  else
  begin

   i:=0;
   xCrea:=true;
   wActualizado:=False;

   LimpiaControles ;

   bbtnSigue.Enabled            := True ;
   panel2.Enabled               := False ;
   pnlInicio.Enabled            := True ;
   Z2bbtnImpre . Enabled        := False ;   

   dm1.cdsTransDevol . Insert ;

   dblcdCodigo . SetFocus ;
   bbtnSigue   . Enabled := True ;
   btnAso      . Enabled := True ;
   dblcBanco   . Enabled := False ;
   dblcCCBco   . Enabled := False ;
   dblcAgencia . Enabled := False ;

  end;
//**************************


end;
procedure TFDevolucionAportes.LlenarDatosAsociado(ASOID:String);
var
   sSQL   : String ;
   sWhere : String ;
begin
   xSQL :=

           ' SELECT APO201.ASOCODMOD,                          '
         +  '        APO201.ASOCODPAGO,                         '
         +  '        APO201.ASOAPENOM,                          '
         +  '                                                   '
         +  '        APO201.ASOTIPID,                           '
         +  '        APO107.ASOTIPDES,                          '
         +  '                                                   '
         +  '        APO201.ASOSITID,                           '
         +  '        APO106.ASOSITDES,                          '
         +  '                                                   '
         +  '        APO201.BANCOID,                            '
         +  '        TGE105.BANCONOM,                           '
         +  '                                                   '
         +  '        APO201.ASONCTA,                            '
         +  '        APO201.SITCTA,                             '
         +  '        COB103.SITCTADES,                          '
         +  '                                                   '
         +  '        APO201.USEID,                              '
         +   '       A.USENOM,                                  '
         +   '       APO201.UPROID,                             '
         +   '       B.UPRONOM,                                 '
         +  '        APO201.UPAGOID,                            '
         +  '        C.UPAGONOM                                 '
         +  '                                                   '
         +  '   FROM                                            '
         +  '        APO201,                                    '
         +  '        APO107,                                    '
         +  '        TGE105,                                    '
         +  '        COB103,                                    '
         +  '        APO106,                                    '
         +  '        APO101 A,                                  '
         +  '        APO102 B,                                  '
         +  '        APO103 C                                   '
         +  '  WHERE                                            '
         +  '        APO201.ASOID = ''' + ASOID +'''       '
         +  '        AND APO201.ASOTIPID = APO107.ASOTIPID (+)  '
         +  '        AND APO201.BANCOID = TGE105.BANCOID   (+)  '
         +  '        AND APO201.SITCTA = COB103.SITCTAID   (+)  '
         +  '        AND APO201.ASOSITID = APO106.ASOSITID (+)  '
         +  '        AND APO201.UPROID = A.UPROID          (+)  '
         +  '        AND APO201.USEID = A.USEID            (+)  '
         +  '        AND APO201.UPROID = B.UPROID          (+)  '
         +  '        AND APO201.UPROID = C.UPROID          (+)  '
         +  '        AND APO201.UPAGOID = C.UPAGOID        (+)  ' ;

   DM1.FiltraCds(DM1.cdsQry,xSQL);
   if dm1.cdsQry.Recordcount > 0 then
   begin
    dblcdUPro          .Text := DM1.cdsQry.FieldByName( dblcdUPro       .DataField).AsString ;
    edtUPro            .Text := DM1.cdsQry.FieldByName( edtUPro         .DataField).AsString ;
    dblcdUPago         .Text := DM1.cdsQry.FieldByName( dblcdUPago      .DataField).AsString ;
    edtUPago           .Text := DM1.cdsQry.FieldByName( edtUPago        .DataField).AsString ;
    dblcdUSE           .Text := DM1.cdsQry.FieldByName( dblcdUSE        .DataField).AsString ;
    edtUse             .Text := DM1.cdsQry.FieldByName( edtUse          .DataField).AsString ;
    dbeCodigoModular   .Text := DM1.cdsQry.FieldByName( dbeCodigoModular.DataField).AsString ;
    dbeAsoNom          .Text := DM1.cdsQry.FieldByName( dbeAsoNom       .DataField).AsString ;
    dblcdCodigo        .Text := ASOID ;
    if (dm1.cdsQry.FieldByName('SITCTA').AsString = 'A') and not dm1.cdsQry.FieldByName('ASONCTA').IsNUll then
       dbeCuentaAsociado  .Text := DM1.cdsQry.FieldByName('ASONCTA').AsString
    else
       if not dm1.cdsQry.FieldByName('ASONCTA').IsNUll then
          dbeCuentaAsociado . Text := 'INACTIVA' ;

    dm1.Filtracds(dm1.cdsAsociados,'SELECT * FROM APO201 WHERE ASOID = ''' + ASOID + ''' ');
   end
   else
    BlanqueaCabecera ;
   if dm1.wModo = 'M' then
   begin
      if trim(dblcAgencia.Text) <> '' then
      begin
        sWhere:= 'AGENBCOID = '+ QuotedStr(trim(dblcAgencia.Text)) ;
        edtAgencia.Text:=DM1.DisplayDescrip('prvTGE','COB102','AGENBCODES',sWhere,'AGENBCODES');
      end ;
   end ;
end;

procedure TFDevolucionAportes.BlanqueaCabecera;
begin
	dblcdUPro          . Clear ;
	edtUPro            . Clear ;
	dblcdUPago         . Clear ;
	edtUPago           . Clear ;
	dblcdUSE           . Clear ;
	edtUse             . Clear ;
	dbeCodigoModular   . Clear ;
        edtAgencia         . Clear ;
	dbeAsoNom          . Clear ;
        dbeCuentaAsociado  . Clear ;
        dbeBanco           . Clear ;
//wmc 666	dblcSituacion    .Clear ;
//wmc 666	edtSituacion     .Clear ;
//wmc 666	dblcTipoAsoc     .Clear ;
//wmc 666	edtTipoAso       .Clear ;
//wmc 666	dblcBanco        .Clear ;
//wmc 666	edtBanco         .Clear ;
//wmc 666	dbeCuenta        .Clear ;
//wmc 666	edtSitCta        .Clear ;
end;

procedure TFDevolucionAportes.dblcdCodigoCustomDlg(Sender: TObject);
begin
   btnAso.OnClick(btnAso);
end;

procedure TFDevolucionAportes.OnEnter(Sender: TObject);
begin
   Panel2.SetFocus ;
end;

procedure TFDevolucionAportes.FormCreate(Sender: TObject);
begin
  dbeMonedaCab.Text := dm1.DisplayDescrip('prvTGE','TGE103','TMONDES','TMONID=''N''','TMONDES');
  if dm1.cdsQry.Active then
     dm1.cdsQry.Close ;
  dm1.cdsQry.DataRequest('SELECT SYSDATE FECHA FROM DUAL') ;
  dm1.cdsQry.Open ;
//Inicio APO_202101_HPC  
//Opción desembolso en efectivo en oficinas
  xSQL := 'SELECT OFDESID,OFDESNOM FROM APO110 WHERE SUBSTR(OFDESID,1,1)<>''M'' ORDER BY OFDESID';
  DM1.cdsOfDes.Close;
  DM1.cdsOfDes.DataRequest(xSQL);
  DM1.cdsOfDes.Open;
//Fin APO_202101_HPC  
  dtFechaSistema := dm1.cdsQry.FieldByName('FECHA').AsDateTime ;
  CreaIndice ;
  dm1.cdstransacciones.AfterOpen := cdsTransaccionesAfterOpen ;
end;

procedure TFDevolucionAportes.EnterpnlAsociado(Sender: TObject);
begin
    dblcdCodigo.SetFocus ;
end;

procedure TFDevolucionAportes.bbtnCierraImpClick(Sender: TObject);
begin
   bbtnCancelar.SetFocus ;
   bbtnCancelar.OnClick(bbtnCancelar);
end;

function TFDevolucionAportes.BuscaAporteReclamo(
  strAPO301ID: String): String;
var
  sSQL : String ;
begin
  with dm1.cdsQry do
  begin
    Close;
    sSQL :=
            '  SELECT APO302.RECLID                   '
           + '  FROM APO303 , APO302                   '
           + '  WHERE                                  '
           + '  APO301ID ='''+ strAPO301ID +'''           '
           + '  AND APO303.RECLID = APO302.RECLID      '
           + '  AND RECDEVUELTO = ''N''                '
           + '  AND NOT RECESTADO IN (''03'',''04'')     ' ;
    DataRequest(sSQL);
    Open ;
    if RecordCount > 0 then
       Result := 'Este Aporte ya se encuentra en Fase de Reclamo en el Reclamo Nº ' +  FieldBYName('RECLID').AsString
    else
       Result := '';
    Close ;   
  end;

end;

procedure TFDevolucionAportes.PonFlagAporte(sAPO301ID: String);
var
  cds : TwwClientDataset ;
begin

end;

procedure TFDevolucionAportes.QuitaFlagAporte(sAPO301ID: String);
var
  cds : TwwClientDataset ;
begin
  cds := TwwClientDataSet.Create(self);
  cds.CloneCursor(dm1.cdsTransacciones,True);
  if cds.Locate('APO301ID',VarArrayOf([sAPO301ID]),[]) then
  begin
     cds.Edit;
     cds.FieldByName('OK').AsString := '0';
     cds.Post;
  end ;
end;

procedure TFDevolucionAportes.QuitaFlagReclamo(sAPO301ID,sRECLID: String);
var
  cds : TwwClientDataset ;
begin
  cds := TwwClientDataSet.Create(self);
  cds.CloneCursor(dm1.cdsDetReclamo,True);
  if cds.Locate('APO301ID;RECLID',VarArrayOf([sAPO301ID,sRECLID]),[]) then
  begin
     cds.Edit;
     cds.FieldByName('OK').AsString := '0';
     cds.Post;
  end ;
end;

procedure TFDevolucionAportes.dbeMontoDevolucKeyPress(Sender: TObject;
  var Key: Char);
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
     j := dbeMontoDevoluc.SelStart ;
     if ( j - i >= 2 ) and ( key <> #8 ) then
        key := #0
     else
     begin
        if (j >= i) and ( key <> #8 ) then
           if (Length(sCadBuscar) - i) >= 2 then
           begin
//               dbeMonto.Text := leftstr(sCadBuscar,Length(sCadBuscar) - 1) ;
               dbeMontoDevoluc.Text := copy(sCadBuscar,1,Length(sCadBuscar) - 1) ;
               dbeMontoDevoluc.SelStart := j ;
           end ;
     end ;
   end ;
end;

procedure TFDevolucionAportes.dbeMontoDevolucExit(Sender: TObject);
var
   strNumero  : String ;
   currNumero : Currency ;
begin
   If bbtnCancelar.Focused or bbtnCierraImp.Focused then
      Exit ;
   If (trim(dbeMontoDevoluc.Text)='') Then
      Exit;
   if (tmpNumeroEnter = dbeMontoDevoluc.DataSource.DataSet.FieldByName(dbeMontoDevoluc.DataField).AsCurrency) then
      Exit ;
   strNumero := trim(dbeMontoDevoluc.Text);
   if EsNumero(strNumero) then
   begin
     if StrToCurr(strNumero) = 0 then
        dbeMontoDevoluc.Datasource.dataset.FieldByName(dbeMontoDevoluc.Datafield).clear
     else
     begin
       currNumero := StrToCurr(strNumero) ;
       If DM1.cdsDevolucion.FieldByName('APOMONTO').AsFloat<
        currNumero Then
        begin
         ShowMessage('El Monto a Devolver no puede ser mayor al monto Aportado');
         dbeMontoDevoluc.Datasource.dataset.FieldByName(dbeMontoDevoluc.Datafield).clear ;
         dbeMontoDevoluc.SetFocus;
         dbeMontoDevoluc.DataSource := nil ;
         dbeMontoDevoluc.DataSource := dbgDevolver.DataSource ;
         Exit;
        end;
     end;
   end
   else
   begin
     dbeMontoDevoluc.Datasource.dataset.FieldByName(dbeMontoDevoluc.Datafield).clear ;
   end ;
end;

function TFDevolucionAportes.EsNumero(strNumero: String): Boolean;
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

procedure TFDevolucionAportes.ValidaDetalle;
begin

  if trim(edtMotDev.Text) = '' then
  begin
     dblcMotDev.SetFocus ;
     Raise exception.create('Ingrese Motivo de la Devolución');
  end ;

  if not dm1.cdsDevolucion.FieldByName(dbeMontoDevoluc.DataField).IsNull then
  begin
    if dm1.cdsDevolucion.FieldByName(dbeMontoDevoluc.DataField).AsCurrency = 0 then
    begin
       dbeMontoDevoluc.SetFocus ;
       Raise exception.create('Ingrese Monto a Devolver');
    end ;
  end
  else
  begin
     dbeMontoDevoluc.SetFocus ;
     Raise exception.create('Ingrese Monto a Devolver');
  end;

end;

procedure TFDevolucionAportes.LimpiaControles;
begin
  dblcdUpro          . Clear ;
  edtUPro            . Clear ;
  dblcdUPago         . Clear ;
  edtUPago           . Clear ;
  dblcdUse           . Clear ;
  edtUse             . Clear ;
  dbeCodigoModular   . Clear ;
  dbeAsoNom          . Clear ;
//  dbeMonedaCab       . Clear ;
  edtFormaDesem      . Clear ;
  edtAgencia         . Clear ;
  dblcdCodigo        . Clear ;

end;

procedure TFDevolucionAportes.dbeMontoDevolucEnter(Sender: TObject);
begin
   tmpNumeroEnter := dm1.cdsDevolucion.FieldByName(dbeMontoDevoluc.DataField).AsCurrency ;
end;

procedure TFDevolucionAportes.dblcMotDevEnter(Sender: TObject);
begin
  tmpCadenaEnter := dm1.cdsDevolucion.FieldByName(dblcMotDev.DataField).AsString ;
end;

procedure TFDevolucionAportes.ValidaGrabacion;
var
  bAbono : boolean ;
begin
  bAbono := False ;
  if dbgDevolver.DataSource.DataSet.RecordCount = 0 then
     Raise Exception.Create(' No hay Devoluciones por Grabar ');
  if trim(dbdtpFechaDev.Text) = '' then
  begin
     dbdtpFechaDev.SetFocus ;
     Raise Exception.Create(' Ingrese Fecha de Devolución ');
  end;
  if trim(edtFormaDesem.Text) = '' then
  begin
     dblcFormaDesem.SetFocus ;
     Raise Exception.Create(' Ingrese Forma de Desembolso ');
  end;

  if dblcAgencia.Enabled and (trim(edtAgencia.Text)= '') then
  begin
     dblcAgencia.SetFocus ;
     Raise Exception.Create(' Ingrese Agencia de Giro ');
  end ;

  if dblcBanco.Enabled and (trim(dbeBanco.Text)= '') then
  begin
     dblcBanco.SetFocus ;
     Raise Exception.Create(' Ingrese Caja/Bancos para el Desembolso ');
  end ;

  if dblcCCBco.Enabled  and (trim(dblcCCBco.Text)= '') then
  begin
     dblcCCBco.SetFocus ;
     Raise Exception.Create(' Ingrese Cuenta Corriente ');
  end ;

  if dblcFormaDesem.LookupTable.Locate('TIPDESEID',VarArrayOf([dblcFormaDesem.text]),[]) then
  begin
     if dblcFormaDesem.LookupTable.FieldByName('ACTBCO').AsString = 'S' then
     begin
        if dblcFormaDesem.LookupTable.FieldByName('ACTAGEN').AsString <> 'S' then
           bAbono := True ;
     end ;
  end
  else
     Raise Exception.Create(' Error de Configuración -- Consulte a Sistemas');
     
  if ((trim(dbeCuentaAsociado.Text) = '') or (dbeCuentaAsociado.Text = 'INACTIVA')) and (bAbono) then
  begin
     dblcCCBco.SetFocus ;
     Raise Exception.Create(' El Tipo de Desembolso no puede ser el seleccionado  '
        +#13 + 'pues el Asociado No tiene Registrada Cuenta de TeleAhorro');
  end ;

end;

procedure TFDevolucionAportes.dblcFormaDesemEnter(Sender: TObject);
begin
   tmpCadenaEnter := dblcFormaDesem.DataSource.DataSet.FieldByName( dblcFormaDesem.DataField ).AsString ;
end;

procedure TFDevolucionAportes.AsignaAnoMes(var sAno, sMes: String);
var
  Year, Month, Day : Word;
begin

  DecodeDate(dbdtpFechaDev.Date , Year , Month, Day);
  sAno := dm1.StrZero(IntToStr(Year),4) ;
  sMes := dm1.StrZero(IntToStr(Month),2) ;

end;

procedure TFDevolucionAportes.AdicionalesGrabacion;
begin
        Z2bbtnAceptar.Enabled := False ;
        //////////////****************************************///////////////////////
        dm1.wModo := 'M' ;
{*********************************}
        bbtnSigue.Enabled            := False ;
        panel2.Enabled               := False ;
        z2bbtnAceptar.Enabled        := False ;
{*********************************}
        xSql:='SELECT APO301.*,''0'' OK FROM APO301 WHERE ASOID='+ QuotedStr(dblcdCodigo.text)
             +' AND TRANSINTID='+quotedstr('APO');

        DM1.Filtracds(DM1.cdsTransacciones,xSql);
//WMC 666        DM1.cdsTransacciones.IndexFieldNames:='TRANSANO;TRANSMES;TRANSFOPE';
        DM1.cdsTransacciones.Filter:='(OK='+quotedstr('0')+')';
        DM1.cdsTransacciones.Filtered:=True;

        TNumericField(DM1.cdsTransacciones.FieldByName('TRANSMTO')).DisplayFormat:='###,###,##0.00';
        TNumericField(DM1.cdsTransacciones.FieldByName('TRANSMTO')).EditFormat:='########0.00';
        dbgAportes.ColumnByName('TRANSMTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.CdsTransacciones,'SUM(TRANSMTO)',''),ffNumber, 10, 2);
        TNumericField(DM1.cdsTransacciones.FieldByName('TRANSMTODEV')).DisplayFormat:='###,###,##0.00';
        TNumericField(DM1.cdsTransacciones.FieldByName('TRANSMTODEV')).EditFormat:='########0.00';


//WMC XXX        xSql:='SELECT APO303.*,''0'' OK FROM APO303 , APO302 WHERE APO302.ASOID='+QUOTEDSTR(dblcdCodigo.Text) +' AND APO302.RECLID = APO303.RECLID AND APO302.RECESTADO IN (''03'',''04'')';
  xSql:='SELECT APO303.*,''0'' OK FROM APO303 , APO302 WHERE APO302.RECESTADO IN (''03'',''04'') AND NVL(APO302.RECDEVUELTO,''N'')=''N'' AND APO303.RECLSITID IN (''03'',''04'') AND APO302.ASOID='+QUOTEDSTR(dblcdCodigo.Text) +' AND APO302.RECLID = APO303.RECLID  ';
        DM1.FILTRACDS(dm1.cdsDetReclamo,XSQL);
        DM1.cdsDetReclamo.IndexFieldNames:='RECLID;APOANO;APOMES;TRANSFOPE';
        DM1.cdsDetReclamo.Filter   := 'OK = ''0''';
        DM1.cdsDetReclamo.filtered := True;

        TNumericField(DM1.cdsDetReclamo.FieldByName('RECLMONTO')).DisplayFormat:='###,###,##0.00';
        TNumericField(DM1.cdsDetReclamo.FieldByName('RECLMONTO')).EditFormat:='########0.00';
        dbgDetReclamo.ColumnByName('RECLMONTO').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsDetReclamo,'SUM(RECLMONTO)',''),ffNumber, 10, 2);

        bbtnsigue.enabled:=false;
        pnlinicio.enabled:=false;
        //////////////****************************************///////////////////////
end;

procedure TFDevolucionAportes.AsignaItems;
var
  bmk : TBookMark;
  i : integer ;
  iRecCount : integer ;
begin

  bmk := dm1.cdsDevolucion.GetBookmark;
  dm1.cdsDEvolucion.DisableControls ;
  dm1.cdsDevolucion.First ;

  iRecCount := dm1.cdsDevolucion.RecordCount ;
  for i := 1 to iRecCount do
  begin
     dm1.cdsDevolucion.RecNo := i ;
     dm1.cdsDevolucion.Edit ;
     dm1.cdsDevolucion.FieldByName('ITEMID').AsString
          := dm1.StrZero(inttostr(i),3) ;
     dm1.cdsDevolucion.FieldByName('DEVID').AsString
          := DM1.cdsTransDevol.FieldByName('DEVID').AsString ;
     dm1.cdsDevolucion.Post ;
  end ;
  dm1.cdsDevolucion.GotoBookmark(bmk);
  DM1.cdsDevolucion.FreeBookmark(bmk);
  dm1.cdsDevolucion.EnableControls ;
end;

function TFDevolucionAportes.RecuperaCorrelativo: String;
var
  sANO   : String ;
  sMES   : String ;
  sSQL   : String ;
begin
   AsignaAnoMes( sANO , sMES );
   SSQL := 'BEGIN SP_RECUPERA_CORRELATIVO(''DEVOLUCION'' , ''' + sANO + ''');  END ;' ;
   dm1.DCOM1.Appserver.EjecutaSQL(ssql);
   dm1.cdsQry.Close ;
   dm1.cdsQry.DataRequest('SELECT CODIGO FROM TMP001') ;
   dm1.cdsQry.Open  ;
   if dm1.cdsQry.FieldByName('CODIGO').AsInteger = 0 then
     result := ''
   else
     result := dm1.cdsQry.FieldByName('CODIGO').AsString ;
end;

procedure TFDevolucionAportes.dblcAgenciaEnter(Sender: TObject);
begin
   tmpCadenaEnter := dblcFormaDesem.DataSource.DataSet.FieldByName( dblcAgencia.DataField ).AsString ;
end;

procedure TFDevolucionAportes.BorraIndice;
begin
  dm1.cdsTransacciones.IndexDefs.Delete(dm1.cdsTransacciones.IndexDefs.IndexOf('ixs1')) ;
  dm1.cdsTransacciones.IndexName := '';
end;

procedure TFDevolucionAportes.CreaIndice;
begin

  with DM1.cdsTransacciones.IndexDefs.AddIndexDef do
  begin
    Name := 'ixs1';
    Fields := 'TRANSANO;TRANSMES';
    Options := [ixDescending, ixDescending];
  end;
  dm1.cdsTransacciones.IndexName := 'ixs1';

end;

procedure TFDevolucionAportes.FormDestroy(Sender: TObject);
begin
  BorraIndice ;
  dm1.cdstransacciones.AfterOpen := nil ;
end;

procedure TFDevolucionAportes.InsertaMovCaja;
var
   xSQL,xWhere, xDocid,xFPago,xCuenta,xCpto,xCptoDes,xCuentaDet,
   xBanco,xCCBco,xEgira ,xAnoMM      : string;
   xTCambio,xMtoDevL,xMtoDevE ,xMtoDDevL,xMtoDDevE: double;
   Y,M,D,Yx,Mx,Dx : word;
begin
   xMtoDevL :=0;
   xMtoDevE :=0;

   xMtoDDevL :=0;
   xMtoDDevE :=0;

   xMtoDevL :=dm1.cdsTransDevol.FieldByName('TRANSMTO').AsFloat;

   xBanco   := dblcBanco.Text;
   xCCBco   := dblcCCBco.Text;

   xWhere:= 'BANCOID = '+ QuotedStr(dblcBanco.Text);
   DM1.DisplayDescrip('prvTGE','TGE105','BANCOABR,BCOTIPCTA,CUENTAID',xWhere,'BANCOABR');
   xCuenta := dm1.cdsQry.fieldbyname('CUENTAID').AsString;

   if DM1.cdsQry.FieldByName('BCOTIPCTA').Value='C' then
      xTDiar  := DM1.DisplayDescrip('prvTGE','TGE106','CCBCOVOUCH','BANCOID='+quotedstr(dblcBanco.text),'CCBCOVOUCH')
   else
   begin
      xTDiar := DM1.DisplayDescrip('prvTGE','TGE106','CCBCOVOUCH,CTAPRINC','CIAID='''+wCiaDef+''' and BANCOID='+quotedstr(dblcBanco.text)
                                  +' AND CCBCOID='+quotedstr(dblcCCBco.text),'CCBCOVOUCH');
      xCuenta := dm1.cdsQry.fieldbyname('CTAPRINC').AsString;
   end;

   DecodeDate(dbdtpFechaDev.Date,Y,M,D);
   xPeriodo := Floattostr(Y)+DM1.StrZero(Floattostr(M),2);

   xFPago   := DM1.DisplayDescrip('prvTGE','CRE104','FPAGOID','TIPDESEID='+quotedstr(dblcFormaDesem.text),'FPAGOID');

   xCpto    := DM1.DisplayDescrip('prvTGE','CAJA201','CPTOID,CPTODES,CUENTAID','CPTOEQUI='+quotedstr('DEVAPORTES'),'CPTOID');
   xCptoDes := DM1.cdsQry.fieldbyname('CPTODES').AsString;
   xCuentaDet := DM1.cdsQry.fieldbyname('CUENTAID').AsString;

   xWhere := 'DOCMOD=''CAJA'' and DOCTIPREG=''E'' and FCING=''N''';
   xDocid :=DM1.DisplayDescrip('prvSQL','TGE110','DOCID',xwhere,'DOCID');

   xWhere:='CIAID='+quotedstr(wCiaDef)+' AND ECANOMM='+quotedstr(xPeriodo)
          +' AND TDIARID='+ quotedstr(xTdiar); // + ' AND EC_PROCE='+quotedstr('B');
   xComprob :=DM1.UltimoNum('prvSQL','CAJA321','ECNOCOMP',xWhere);
   xComprob :=DM1.StrZero(xComprob,10);

   xWhere:='TMONID='+quotedstr(DM1.wTMonExt);
   xTCambio:=strtoFloat(DM1.DisplayDescrip('prvSQL','TGE107','TMONID, '+'TCAMVOV',xWhere,'TCAMVOV'));

   xMtoDevE := FRound(xMtoDevL/xTCambio,15,2);

   xEGira   := Copy(dbeAsoNom.Text,1,60);

   xWhere:='FECHA= TO_DATE('+''''+ formatdatetime('DD/MM/YYYY',Date)+''')';
   DM1.DisplayDescrip('prvTGE','TGE114','*',xWhere,'FECANO');

   xSQL := ' INSERT INTO CAJA321( '+
          ' CIAID,  TDIARID,  ECANOMM,  ECNOCOMP,  CLAUXID,  PROV,  PROVRUC,  ECFCOMP, '+
          ' ECFPAGOP,FPAGOID,  DOCID,  ECNODOC,  TMONID,  ECTCAMB,  ECMTOORI,  ECMTOLOC, '+
          ' ECMTOEXT,  BANCOID,CCBCOID, ECGIRA,  CPTOID,  CUENTAID,  ECGLOSA,  ECLOTE, '+
          ' ECELABO,ECESTADO, ECCONTA, ECUSER,  ECFREG,  ECHREG,  ECANO,  ECMM, ECDD, ECSS, ECSEM,'+
          ' ECTRI,  ECAASS,  ECAASEM,  ECAATRI, EC_PROCE, ECSALMN,  ECSALME) '+
          ' VALUES('+
          Quotedstr(wCiaDef)+','+Quotedstr(xTDiar)+','+Quotedstr(xPeriodo)+','+Quotedstr(xComprob)+','+
          Quotedstr('AS')+','+Quotedstr(dblcdCodigo.Text)+','+Quotedstr(dbeCodigoModular.Text)+',SYSDATE,'+
          ' SYSDATE,'+Quotedstr(xFPago)+','+Quotedstr(xDocId)+','+Quotedstr(xComprob)+','+Quotedstr(DM1.wTMonLoc)
          +','+''+Floattostr(xTCambio)+''+','+''+Floattostr(xMtoDevL)+''+','+''+Floattostr(xMtoDevL)+''
          +','+''+Floattostr(xMtoDevE)+''+','+Quotedstr(xBanco)+','+Quotedstr(xCCBco)+','+Quotedstr(xEGira)
          +','+Quotedstr(xCpto)+','+Quotedstr(xCuenta)+','+Quotedstr(xCptodes)+','+Quotedstr('001')
          +','+Quotedstr('EFECTAPO')+','+Quotedstr('C')+','+Quotedstr('N')+','+Quotedstr(DM1.wUsuario)
          +',SYSDATE,SYSDATE,'+Quotedstr(DM1.cdsqry.FieldByName('FECANO').AsString)
          +','+Quotedstr(DM1.cdsqry.FieldByName('FECMES').AsString)+','+Quotedstr(DM1.cdsqry.FieldByName('FECDIA').AsString)
          +','+Quotedstr(DM1.cdsqry.FieldByName('FECSS').AsString)+','+Quotedstr(DM1.cdsqry.FieldByName('FECSEM').AsString)
          +','+Quotedstr(DM1.cdsqry.FieldByName('FECTRIM').AsString)+','+Quotedstr(DM1.cdsqry.FieldByName('FECAASS').AsString)
          +','+Quotedstr(DM1.cdsqry.FieldByName('FECAASEM').AsString)+','+Quotedstr(DM1.cdsqry.FieldByName('FECAATRI').AsString)
          +','+Quotedstr('X')+','+''+Floattostr(xMtoDevL)+''+','+''+Floattostr(xMtoDevE)+''+')';
   tRY
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
   end;

   DM1.cdsDevolucion.DisableControls;
   DM1.cdsDevolucion.First;
   while not DM1.cdsDevolucion.Eof do
   begin
      DecodeDate(DM1.cdsDevolucion.FieldByName('TRANSFOPE').AsDateTime,Yx,Mx,Dx);
      xAnoMM := Floattostr(Yx)+DM1.StrZero(Floattostr(Mx),2);
      xMtoDDevL := DM1.cdsDevolucion.FieldByName('DEVMTO').AsFloat;
      xMtoDDevE := FRound(xMtoDDevL/xTCambio,15,2);

      xSQL := ' INSERT INTO  CAJA322 ('+
              '  CIAID,  TDIARID,  ECANOMM,  ECNOCOMP, CPANOMM, CPSERIE,CPNODOC,        '+
              '  TMONID, DEFCOMP, DETCDOC, DETCPAG, DEDH, DEMTOORI,DEMTOLOC, DEMTOEXT,  '+
              '  DESALLOC,  DESALEXT,  CPTOID,  CUENTAID,CPFEMIS,DEUSER,  DEFREG,DEHREG,'+
              '  DEANO,  DEMM,DEDD,  DESS,DESEM, DETRI,  DEAASS,  DEAASEM,  DEAATRI,    '+
              '  DEESTADO,  PROV,  PROVRUC,  DEGIRA,  CLAUXID,   DOCMOD,  DEGLOSA,  ECGLOSA  ) '+
              '  VALUES('
              +Quotedstr(wCiaDef)+','+Quotedstr(xTDiar)+','+Quotedstr(xPeriodo)+','+Quotedstr(xComprob)+','+Quotedstr(xAnoMM)
              +','+Quotedstr('APO')+','+Quotedstr(DM1.cdsDevolucion.FieldByName('TRANSNOPE').AsString)+','+Quotedstr(DM1.wTMonLoc)
              +','+Quotedstr(Datetostr(DM1.cdsTransDevol.FieldByName('TRANSFOPE').AsDatetime))+','+Floattostr(xTCambio)+''
              +','+Floattostr(xTCambio)+''+','+Quotedstr('D')+','+''+Floattostr(xMtoDDevL)+''+','+''+Floattostr(xMtoDDevL)+''
              +','+''+Floattostr(xMtoDDevE)+''+','+''+Floattostr(xMtoDDevL)+''+','+''+Floattostr(xMtoDDevE)+''
              +','+Quotedstr(xCpto)+','+Quotedstr(xCuentaDet)+','+Quotedstr(Datetostr(DM1.cdsDevolucion.FieldByName('TRANSFOPE').AsDateTime))
              +','+Quotedstr(DM1.wUsuario)+',SYSDATE,SYSDATE,'+Quotedstr(DM1.cdsqry.FieldByName('FECANO').AsString)
              +','+Quotedstr(DM1.cdsqry.FieldByName('FECMES').AsString)+','+Quotedstr(DM1.cdsqry.FieldByName('FECDIA').AsString)
              +','+Quotedstr(DM1.cdsqry.FieldByName('FECSS').AsString)+','+Quotedstr(DM1.cdsqry.FieldByName('FECSEM').AsString)
              +','+Quotedstr(DM1.cdsqry.FieldByName('FECTRIM').AsString)+','+Quotedstr(DM1.cdsqry.FieldByName('FECAASS').AsString)
              +','+Quotedstr(DM1.cdsqry.FieldByName('FECAASEM').AsString)+','+Quotedstr(DM1.cdsqry.FieldByName('FECAATRI').AsString)
              +','+Quotedstr('P')+','+DM1.cdsDevolucion.FieldByName('ASOID').AsString+','+Quotedstr(DM1.cdsDevolucion.FieldByName('ASOCODMOD').AsString)
              +','+Quotedstr(xEGira)+','+Quotedstr('AS')+','+Quotedstr('APO')+','+Quotedstr(xCptodes)+','+Quotedstr(xCptodes)+')';

       tRY
          DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
       except
       end;
       DM1.cdsDevolucion.Next;
   end;


   DM1.cdsDevolucion.EnableControls;


end;

procedure TFDevolucionAportes.dblcBancoExit(Sender: TObject);
var
    sWhere : string;
begin
//Inicio APO_202101_HPC  
//Opción desembolso en efectivo en oficinas
   pnlCajaDerrama.Visible := False;


  If  dblcFormaDesem.Text='04' Then
  begin
    if dblcBanco.LookupTable.Locate('BANCOID', VarArrayOf([dblcBanco.Text]),[]) then
       dbeBanco.Text := dblcBanco.LookupTable.FieldByName('BANCOABR').AsString;
    dblcCCBco.Text:='';
    edtAgencia.Text:='';
    pnlCajaDerrama.Visible := True;
    DBLkOfiDes.SetFocus;
    DBLkOfiDes.DropDown;
  end

  Else

  begin
//Fin APO_202101_HPC  

  if tmpCadenaEnter <> dblcBanco.Text then
  begin

    if dblcBanco.Text = '' then
    begin
      dblcBanco . DataSource . DataSet . FieldByName(dblcBanco.datafield).Clear ;
      dbeBanco  . Clear ;
      dblcCCBco . DataSource . DataSet . FieldByName(dblcCCBco.datafield).Clear ;
      dblcCCBco . Enabled  := False ;
    end
    else
    begin
  ///******
      if dblcBanco.LookupTable.Locate('BANCOID', VarArrayOf([dblcBanco.Text]),[]) then
      begin
        dbeBanco.Text := dblcBanco.LookupTable.FieldByName('BANCOABR').AsString;
        if dblcBanco.LookupTable.FieldByName('BCOTIPCTA').Value='C' then
           dblcCCBco.Enabled:=False
        else
        begin  //Si es BANCO
           dblcCCBco.Enabled:=True;
           DM1.cdsCbcos.Filtered:=False;
           DM1.cdsCbcos.Filter:='';   //Filtrar la lista de CtaCte por Banco
           DM1.cdsCbcos.Filter:= 'CIAID='+Quotedstr(wCiaDef)+' AND BANCOID='+''''+dblcBanco.Text+'''';
           DM1.cdsCbcos.Filtered:=True;
           dblcCCBco.setfocus;
        end;
      end
      else
      begin
        if not (dblcBanco.DataSource.DataSet.state in [dsEdit , dsInsert]) then
           dblcBanco.DataSource.DataSet.Edit ;

        dblcBanco.DataSource.DataSet.FieldByName(dblcBanco.DataField).Clear ;
        dbeBanco.Clear ;
        dblcCCBco . DataSource . DataSet . FieldByName(dblcCCBco.datafield).Clear ;
        dblcCCBco . Enabled  := False ;

      end ;
  ///******
    end ;
//
  end ;
//Inicio APO_202101_HPC  
//Opción desembolso en efectivo en oficinas
  end;
//Fin APO_202101_HPC  

end;

procedure TFDevolucionAportes.cdsTransaccionesAfterOpen(DataSet: TDataSet);
begin
   try
      dm1.cdsTransacciones.IndexName := 'ixs1';
   finally
   end ;
end;

procedure TFDevolucionAportes.OnKeyPress(Sender: TObject; var Key: Char);
begin
   if key = ' ' then
      key := #0 ;
end;

procedure TFDevolucionAportes.dblcBancoEnter(Sender: TObject);
begin
   tmpCadenaEnter := dblcBanco.datasource.dataset.FieldByName(dblcBanco.DataField).AsString ;
end;

procedure TFDevolucionAportes.dblcCCBcoEnter(Sender: TObject);
begin
   tmpCadenaEnter := dblcCCBco.Text ;
end;

procedure TFDevolucionAportes.dblcCCBcoExit(Sender: TObject);
begin
  if dblcCCBco.Text <> tmpCadenaEnter then
  begin
     if not dblcCCBco.LookupTable.locate('BANCOID;CCBCOID',VarArrayOf([dblcBanco.text,dblcCCBco.text]),[]) then
        dblcCCBco.DataSource.DataSet.FieldByName(dblcCCBco.Datafield).Clear ;
  end ;
end;

procedure TFDevolucionAportes.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState := wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomSetting := zs100Percent;

end;

procedure TFDevolucionAportes.Z2bbtnImprimirClick(Sender: TObject);
var
 sAporteDetalle , sSQL: String ;
 cds : TwwClientDataset ;
 i , iContador : word ;
 sFormaDesem : String ;
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
 cds.CloneCursor(twwClientDataset(dbgDevolver.datasource.dataset),False);
 for i:=1 to cds.recordcount do
 begin
    Inc(iContador);
    cds.recno := i ;
    sAporteDetalle := sAporteDetalle
                + RetornaAporte(cds.FieldByName('APOANO').AsString,cds.FieldByName('APOMES').AsString)
                + ' = ' + formatfloat('###.00',cds.FieldByName('DEVMTO').ASCurrency)
                + '     ' ;
    if icontador = 4 then
    begin
       icontador := 0 ;
       sAporteDetalle := sAporteDetalle + #13 ;
    end ;
 end ;
 cds.Free ;

 pplblDetalle.Lines.Text  := sAporteDetalle ;
 //
 if dblcFormaDesem.LookupTable.Locate('TIPDESEID',VarArrayOf([dblcFormaDesem.text]),[]) then
 begin
    if trim(dblcFormaDesem.LookupTable.FieldByName('ACTBCO').AsString )= 'S' then
    begin
       if trim(dblcFormaDesem.LookupTable.FieldByName('ACTAGEN').AsString) = 'S' then
          sFormaDesem := 'G'
       else
          sFormaDesem := 'A';
    end
    else
       sFormaDesem := 'E';
 end ;
 pplblLineaRecibiConforme.Visible := False ;
 pplblNombreRecibi.Visible        := False ;
 pplblDNIRecibi.Visible           := False ;
 pplblRecibiConforme.Visible      := False ;

 sSQL :=
   ' SELECT APO102.UPRONOM , APO158.DPTODES , X.ASOCODPAGO ,X.ASODNI'
  + ' FROM '
  + ' ( '
  + ' select UPROID , ASOCODPAGO, DPTOID ,ASODNI'
  + ' from APO201 '
  + ' where ASOID = ''' + dblcdCodigo.Text + ''' '
  + ' ) X , APO102,APO158 '
  + ' WHERE X.UPROID = APO102.UPROID(+) '
  + '   AND X.DPTOID = APO158.DPTOID(+) ' ;

 DM1.cdsQry.Close ;
 DM1.cdsQry.DataRequest(sSQL);
 dm1.cdsQry.Open ;

 if sFormaDesem = 'E' then
 begin
   pplblLineaRecibiConforme.Visible := True ;
   pplblNombreRecibi.Visible        := True ;
   pplblDNIRecibi.Visible           := True ;
   pplblRecibiConforme.Visible      := True ;

   pplblNombreRecibi.Caption        := dbeAsoNom.Text ;
   pplblDNIRecibi.Caption           := 'D.N.I...:' + DM1.cdsQry.FieldBYName('ASODNI').AsString ;

   pplblTitulo.Caption              := 'NOTA DE PAGO EN EFECTIVO   Nro.   ' + wwDBEdit1.Text + '-DM-APO'  ;
   pplblDesembolso.Caption          := 'EN EFECTIVO POR CAJA' ;
 end;
 if sFormaDesem = 'A' then
 begin
   pplblTitulo.Caption              := 'NOTA DE ABONO EN CUENTA DE AHORROS  Nro.   ' + wwDBEdit1.Text + '-DM-APO'  ;
   pplblDesembolso.Caption          := 'TELEAHORROS No ..:' + dbeCuentaAsociado.Text ;
 end;
 if sFormaDesem = 'G' then
 begin
   sSQL :=
     ' SELECT '
    + ' DPTODES , AGENBCODES '
    + ' FROM '
    + ' ( '
    + ' SELECT BANCOID,DPTOID,DPTOGIRO,AGENBANCOID '
    + ' FROM APO311 '
    + ' WHERE APO311.DEVID =''' + wwDBEdit1.Text + ''' '
    + ' ) X , APO158,COB102 '
    + ' WHERE '
    + ' X.DPTOID = APO158.DPTOID (+) '
    + ' AND X.BANCOID = COB102.BANCOID (+) '
    + ' AND X.AGENBANCOID = COB102.AGENBCOID (+) ' ;
   DM1.cdsQry1.close ;
   dm1.cdsqry1.DataRequest(sSQL);
   dm1.CDSQRY1.open ;
   pplblTitulo.Caption              := 'NOTA DE PAGO CON GIRO/TRANSFERENCIA   Nro.   ' + wwDBEdit1.Text + '-DM-APO'  ;
   pplblDesembolso.Caption          := 'GIRO CON DESTINO '+ DM1.CDSQRY1.FIELDByName('DPTODES').AsString + ' en la AGENCIA ' + DM1.CDSQRY1.FIELDByName('AGENBCODES').AsString ;
 end;

 pplblFecha.Caption             := dbdtpFechaDev.Text ;
 pplblNombre.Caption            := dbeAsoNom.Text ;
 pplblCodigoModular.caption     := dbeCodigoModular.Text ;
 //Buscar Descripción de Departamento
 pplblDepartamento.caption      := dm1.cdsQry.FieldBYName('DPTODES').AsString ;
 //Buscar Código de Pago
 pplblCodPago.Caption           := dm1.cdsQry.FieldBYName('ASOCODPAGO').AsString ;
 //BUscar U.Proceso
 pplblUProceso.Caption          := dm1.cdsQry.FieldBYName('UPRONOM').AsString ;
 pplblTotal.Caption             := FormatFloat( '###,###.00',dm1.cdsTransDevol.FieldBYName('TRANSMTO').ASCURRENCY ) ;
 pplblHechopor.Caption          := 'HECHO POR ' + dm1.cdsTransDevol.FieldBYName('USUARIO').AsString ;
 //
 ppReport1.Print;

end;


//Graba para la devolución en Efectivo
procedure TFDevolucionAportes.GrabaDesEfe;
var xSql,xAsotipid,xAsodni,xCodofi,xMontodol,xTipcamb,xAsocodpago:string;
begin

   xSql:='Select * From Apo201 where Asoid='''+Dm1.cdsTransDevol.FieldByName('Asoid').AsString+''' ';
   Dm1.cdsCEdu.Close;
   Dm1.cdsCEdu.DataRequest(xSql);
   Dm1.cdsCEdu.Open;
   xAsotipid  := Dm1.cdsCEdu.FieldByName('Asotipid').AsString;
   xAsodni    := Dm1.cdsCEdu.FieldByName('AsoDni').AsString;
   xAsocodpago:= Dm1.cdsCEdu.FieldByName('Asocodpago').AsString;
//Inicio APO_202101_HPC  
//Opción desembolso en efectivo en oficinas
   If  dblcFormaDesem.Text = '04' Then
         xCodofi    := DBLkOfiDes.TEXT
   Else  xCodofi    := Copy(Dm1.CrgArea(DM1.wUsuario),4,2);
//Fin APO_202101_HPC  
   xSql :='Select * From Tge107 Where Fecha=(SELECT MAX(FECHA) '+
          'From Tge107 Where Fecha<=To_char(Sysdate,''DD/MM/YYYY'')) AND Tmonid=''D'' ' ;
   Dm1.cdsCEdu.close;
   Dm1.cdsCEdu.dataRequest(xSQL);
   Dm1.cdsCEdu.Open;
   xTipcamb   := Dm1.cdsCEdu.FieldByName('TCAMVBC').AsString;
   Dm1.cdsCEdu.Close;

   If StrToCurr(xTipcamb)>0 Then
       xMontodol:= CurrToStr(Dm1.cdsTransDevol.FieldByName('Transmto').AsCurrency/StrToCurr(xTipCamb))
   else xMontodol:='0.00';

   xSql:='Insert into Des_Dev_Apo_Efe (Asoid,Asocodmod,Asocodaux,Asotipid,Asodni,Asoapenom,Uproid,Useid,Upagoid,Coddep,'+
                                    'Codofi,Montosol,Montodol,Tipcamb,Asocodpago,'+
                                    'Asofecdev,Asonumdev,Asoanodev) values ('+
       QuotedStr(Dm1.cdsTransDevol.FieldByName('Asoid').AsString)+','+QuotedStr(Dm1.cdsTransDevol.FieldByName('Asocodmod').AsString)+','+
       QuotedStr(Dm1.cdsTransDevol.FieldByName('Asocodaux').AsString)+','+QuotedStr(xAsotipid)+','+QuotedStr(xAsodni)+','+QuotedStr(Dm1.cdsTransDevol.FieldbyName('Asoapenom').AsString)+','+
       QuotedStr(Dm1.cdsTransDevol.FieldByName('Uproid').AsString)+','+QuotedStr(Dm1.cdsTransDevol.FieldByName('Useid').AsString)+','+QuotedStr(Dm1.cdsTransDevol.FieldByName('Upagoid').AsString)+','+
       QuotedStr(Dm1.cdsTransDevol.FieldByName('Dptoid').AsString)+','+QuotedStr(xCodofi)+','+Dm1.cdsTransDevol.FieldByName('TRANSMTO').AsString+','+xMontodol+','+xTipcamb+','+
       QuotedStr(xAsocodpago)+',To_char('''+Copy(Dm1.cdsTransDevol.FieldByName('Transfope').AsString,1,10)+'''),'+QuotedStr(Dm1.cdsTransDevol.FieldByName('Devid').AsString)+','+
       QuotedStr(Dm1.cdsTransDevol.FieldByName('DEVANO').AsString)+')';

   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);


   Dm1.cdsCEdu.IndexFieldNames :='';
//Inicio APO_202101_HPC  
//Opción desembolso en efectivo en oficinas
end;

procedure TFDevolucionAportes.DBLkOfiDesChange(Sender: TObject);
begin
   If DM1.cdsOfdes.Locate('OFDESID', VarArrayof([DBLkOfiDes.Text]), []) Then
   Begin
      EdtOfiDes.Text := DM1.cdsOfdes.fieldbyname('OFDESNOM').AsString;
   end;
//Fin APO_202101_HPC  

end;

end.
