unit APO720;

// Inicio Uso Estándares: 01/08/2011
// Unidad               : APO403
// Formulario           : FProvision
// Fecha de Creación    : 15/12/2003
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Generación de Oficios
// Actualizaciones      :
// HPC_201502_APO       : Cambiar el formato de Fecha

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcButton, fcImgBtn, fcShapeBtn, StdCtrls, wwdblook, wwdbdatetimepicker,
  Mask, wwdbedit,Toolwin,extctrls, StrContainer,db, ppEndUsr, ppDB,
  ppDBPipe, ppCtrls, ppBands, ppVar, ppPrnabl, ppClass, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, Wwdbdlg, ppDBBDE;

type
  TFToolOficio = class(TForm)
    pnlTool: TPanel;
    dbdtpFechar: TwwDBDateTimePicker;
    dbeNOficio: TwwDBEdit;
    edtBanco: TwwDBEdit;
    dblcdbanco: TwwDBLookupCombo;
    dblcdCuenta: TwwDBLookupCombo;
    z2bbtnFiltar: TfcShapeBtn;
    z2bbtnGrabar: TfcShapeBtn;
    bbtnCancelar: TfcShapeBtn;
    ppRepCronograma: TppReport;
    ppDBCronograma: TppDBPipeline;
    edtCia1: TwwDBEdit;
    dblcCia: TwwDBLookupCombo;
    Timer1: TTimer;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLabel20: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel36: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel107: TppLabel;
    ppLabel125: TppLabel;
    ppLabel128: TppLabel;
    ppLabel130: TppLabel;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine15: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    dbtAsoid: TppDBText;
    dbtAsoApe: TppDBText;
    dbtNroCre: TppDBText;
    dbtFecOto: TppDBText;
    dbtMoneda: TppDBText;
    dbtTipPres: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    dbtCuota: TppDBText;
    ppLabel29: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLabel124: TppLabel;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppGroupFooterBand1: TppGroupFooterBand;
    lblTipDesem: TLabel;
    dblcbTipDesm: TwwDBLookupCombo;
    edtTipDesem: TEdit;
    dbdtpFini: TwwDBDateTimePicker;
    dbdtpFfin: TwwDBDateTimePicker;
    lblCia: TLabel;
    lblFReg: TLabel;
    lblNOficio: TLabel;
    lblBanco: TLabel;
    lblNCta: TLabel;
    lblFIni: TLabel;
    lblFin: TLabel;
    lblAgencia: TLabel;
    dblcAgencia: TwwDBLookupComboDlg;
    edtAgencia: TEdit;
    procedure z2bbtnFiltarClick(Sender: TObject);
    procedure dblcdbancoExit(Sender: TObject);
    procedure z2bbtnGrabarClick(Sender: TObject);
    procedure dbdtpFecharExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbtnCancelarClick(Sender: TObject);
    procedure dblcNotInList(Sender: TObject; LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
    procedure dblcCiaExit(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure dblcdCuentaExit(Sender: TObject);
    procedure dblcAgenciaExit(Sender: TObject);
    procedure dblcbTipDesmExit(Sender: TObject);
    procedure z2bbtnCronoClick(Sender: TObject);

    //    procedure dbdtpFechaRegExit(Sender: TObject);
  private
    { Private declarations }
    //xTmonid, xSQLs, XAno, XMes : String;
    //Capital, InteresMto, Amortizacion, FlatMto, xComision, xGastosAdm, xSeguro : Real;
    xCptoid,xCuentaid,xAuxRuc,xFPagoid,xVouch,xClauxid,xAuxid,xTmonid,XAno,XMes : String;
    Year, month, day : Word;
    xCorre : String; //** para el correlativo del numero de crédito
    xPaso : Boolean; //** True = el correlativo es valido
    procedure CorreCred(pCorre : String); //** para el correlativo del numero del crédito
    Procedure BuscaCorre; //** para constatar que nop exista el numero del crédito
    procedure  Correlativo; //** llama a CorreCred y BuscaCorre
  public
    { Public declarations }
		function  CalcTipoCambio(sMoneda: string; dtFecha: tdatetime; sCampo : string) : string;
  end;

var
  FToolOficio: TFToolOficio;
  sWhere, xWhere :string;
  xSQL : String;

implementation

uses APODM, APO001, MsgDlgs;

{$R *.DFM}

function TFToolOficio.CalcTipoCambio(sMoneda: string; dtFecha: tdatetime; sCampo : string) : string;
var
	sSQL : string;
begin
	result := '';
	if dtFecha = 0 then exit;
  if trim(sMoneda)='' then exit;
  sSQL := 'SELECT ' +sCampo+ ' FROM TGE107 WHERE TMONID=' +quotedStr(dm1.wTMonExt);
  if (SRV_D = 'DB2NT') or (SRV_D = 'DB2400') then
    sSQL := sSQL + ' AND FECHA=DATE(' +quotedStr(formatdatetime(wFormatFecha,dtFecha))+ ')'
  else
	if SRV_D = 'ORACLE' then
    sSQL := sSQL + ' AND FECHA=(' +quotedStr(formatdatetime(wFormatFecha,dtFecha))+ ')';
  DM1.cdsSQL.close;
  DM1.cdsSQL.DataRequest(sSQL);
  DM1.cdsSQL.open;
  result := DM1.cdsSQL.fieldbyName(DM1.wTipoCambio).asString;
end;

procedure TFToolOficio.z2bbtnFiltarClick(Sender: TObject);
begin
  if length(dbeNOficio.text) = 0 then
  begin
  	dbdtpFecharExit(Sender)
  end;

  if (length(dblcdbanco.text)=0) and (dblcdbanco.Enabled) then
  begin
    dblcdbanco.setfocus;
    Raise Exception.create('Banco Errado, Seleccione el Banco');
  end;

  if (length(dblcdCuenta.text)=0) and (dblcdCuenta.Enabled) then
  begin
    dblcdCuenta.setfocus;
    Raise Exception.create('Cuenta Errado, Seleccione la Cta. Cte. del Banco');
  end;

  xSQL:='SELECT * FROM APO305 '+
        'WHERE TRANSFOPE >='+QuotedStr(DateToStr(dbdtpFini.Date))+' '+
        'AND TRANSFOPE <='+QuotedStr(DateToStr(dbdtpFfin.Date))+' '+
        'AND TIPDESEID = '+QuotedStr(dblcbTipDesm.Text)+' '+
        'AND NVL(NROFICIO,''XX'')=''XX''';

  dm1.cdsReporte1.Close;
  dm1.cdsReporte1.DataRequest(xSQL);
  dm1.cdsReporte1.Open;
  if dm1.cdsReporte1.RecordCount > 0 then
    z2bbtnGrabar.enabled:=true
  else
    z2bbtnGrabar.enabled:=false;
  Fprincipal.Mtx1.refreshdisplay;
end;

procedure TFToolOficio.dblcdbancoExit(Sender: TObject);
begin
  if bbtnCancelar.focused then
  	Exit;

  sWhere:= 'BANCOID='''+dblcdBanco.Text+'''' ;
  edtBanco.text:=dm1.DisplayDescrip('prvTGE','TGE105','BANCONOM, CLAUXID, AUXID',sWhere,'BANCONOM');

  if dm1.wModo = 'A' then
  begin
  	dm1.cdsOficio.Fieldbyname('CLAUXID').AsString  := dm1.cdsQry.FieldByName('CLAUXID').AsString;
   dm1.cdsOficio.Fieldbyname('AUXID').AsString    := dm1.cdsQry.FieldByName('AUXID').AsString;
   //** 30/10/2002 - PJSV
   xClauxid := dm1.cdsQry.fieldByName('CLAUXID').AsString;
   xAuxid   := dm1.cdsQry.fieldByName('AUXID').AsString;
   sWhere:= 'CLAUXID = '+quotedstr(xClauxid)+' AND AUXID ='+quotedstr(xAuxid);
   xAuxRuc  := DM1.DisplayDescrip('prvSQL','CNT201','AUXRUC',sWhere,'AUXRUC');
   sWhere:= 'CPTODES = '+quotedstr('OFICIOS PENDIENTES DE PAGO');
   xCptoid  := DM1.DisplayDescrip('prvSQL','CXP201','CPTOID',sWhere,'CPTOID');
   //**
  end;

  if length(dblcdbanco.text)=0 then
  begin
  	//dblcdbanco.setfocus;
    Raise Exception.create('Banco Errado, Seleccione el Banco');
  end
  else
  begin
    DM1.FiltraCDS(DM1.cdsCBcos, 'SELECT * FROM TGE106 WHERE BANCOID='+quotedstr(dblcdBanco.text)+' AND CIAID='+quotedstr(dblcCia.text));
    dblcdCuenta.OnExit(dblcdCuenta);
  end;
  DM1.FiltraCDS(DM1.cdsAgenciaBco, 'SELECT * FROM COB102 WHERE BANCOID='+QuotedStr(dblcdbanco.Text));
end;

procedure TFToolOficio.z2bbtnGrabarClick(Sender: TObject);
var
  xSuma : double;
begin
  if Question(Caption,'El Proceso Generara los Oficios'+#13+#13+'¿Está seguro que desea Continuar?') then
  begin
    try
      //** 30/10/2002 - PJSV
  		//sWhere:='MODOFIC='+quotedstr(DM1.wModulo)+' '+
      //      	'AND FECANO='+quotedstr(DM1.cdsOficio.FieldByName('FECANO').AsString);
  		//dm1.DisplayDescrip('prvTGE','APO209','MAX(NOFID)+1 AS CODIGO',sWhere,'CODIGO');
      //**
      dm1.cdsOficio.Edit;
      //** 30/10/2002 - PJSV
      //dm1.cdsOficio.Fieldbyname('NOFID').AsString 		:= DM1.StrZero(dm1.cdsQry.fieldbyname('CODIGO').asstring, 6);
      dm1.cdsOficio.Fieldbyname('NOFID').AsString := dbeNOficio.text;      
      //**
      dm1.cdsOficio.Fieldbyname('TIPDESEID').AsString := dblcbTipDesm.Text;
      dm1.cdsOficio.Fieldbyname('MODOFIC').AsString   := dm1.wModulo;
      dm1.cdsOficio.Fieldbyname('BANCOID').AsString   := dblcdbanco.Text;
      dm1.cdsOficio.Fieldbyname('FECINI').AsString   	:= dbdtpFini.text;
      dm1.cdsOficio.Fieldbyname('FECFIN').AsString    := dbdtpFfin.text;
      dm1.cdsOficio.Fieldbyname('CCBCOID').AsString   := dblcdcuenta.text;
      dm1.cdsOficio.Fieldbyname('FREG').AsDateTime    := Date;
      dm1.cdsOficio.Fieldbyname('HREG').AsDateTime    := Date+Time;
      dm1.cdsOficio.Fieldbyname('USUARIO').AsString   := dm1.wUsuario;
      dm1.cdsOficio.Fieldbyname('CIAID').AsString     := dblcCia.text;
    	dm1.cdsOficio.Fieldbyname('TCAMB').AsString	  	:= CalcTipoCambio(DM1.cdsOficio.FieldByName('TMONID').AsString,
                                                								DM1.cdsOficio.FieldByName('FREG').AsDateTime,
                            							      						DM1.wTipoCambio);
      //** 30/10/2002 - PJSV
      dm1.cdsOficio.fieldbyname('APOANO').AsString   := FloatToStr(Year);
      dm1.cdsOficio.fieldbyname('APOMES').AsString   := Dm1.strZero(FloatToStr(Month),2);
      dm1.cdsOficio.fieldbyname('CCBCOVOUCH').AsString := xVouch;
      dm1.cdsOficio.fieldbyname('AUXRUC').AsString   := xAuxRuc;
		dm1.cdsOficio.FieldByName('CPTOID').AsString	:= xCptoid;
      //**
  		sWhere := 'AUXID='+QuotedStr(dm1.cdsOficio.Fieldbyname('AUXID').AsString)+
      			 ' AND CLAUXID='+QuotedStr(dm1.cdsOficio.Fieldbyname('CLAUXID').AsString);
      dm1.cdsOficio.FieldByName('PROVRUC').AsString		:= dm1.DisplayDescrip('prvTGE','CNT201','AUXRUC',sWhere,'AUXRUC');
      cdsPost(DM1.cdsOficio);
      dm1.controltran;

      dm1.cdsReporte1.First;
      xSuma:=0;
      while not dm1.cdsReporte1.eof do
      begin
       //Correlativo;

        xSQL:='UPDATE APO305 SET NROFICIO='+QuotedStr(dbeNOficio.text)+' '+
              'WHERE ASOID='+QuotedStr(dm1.cdsReporte1.fieldbyname('ASOID').AsString)+' '+
              'AND TRANSFOPE >='+QuotedStr(DateToStr(dbdtpFini.Date))+' '+
              'AND TRANSFOPE <='+QuotedStr(DateToStr(dbdtpFfin.Date))+' '+
              'AND TIPDESEID = '+QuotedStr(dblcbTipDesm.Text)+' '+
              'AND NVL(NROFICIO,''XX'')=''XX''';

        DM1.cdsQry.Close;
        DM1.cdsQry.DataRequest(xSQL);
        DM1.cdsQry.Execute;

        xSuma:=xSuma + dm1.cdsReporte1.fieldbyname('DEVMTO').AsFloat;
        dm1.cdsReporte1.Next;
      end;
      dm1.cdsOficio.Edit;
      dm1.cdsOficio.FieldByName('MONTOTOT').AsFloat   := xsuma;
      dm1.cdsOficio.FieldByName('MONTDES').AsString   := '('+Trim(dm1.NumtoStr(xSuma))+')';
      cdsPost(DM1.cdsOficio);
      dm1.cdsOficio.Post;
      dm1.controltran;
      //** DM1.DCOM1.AppServer.SolCommit; //GrabaTransaccion;

      xSQL:='SELECT * FROM APO305 '+
            'WHERE TRANSFOPE >='+QuotedStr(DateToStr(dbdtpFini.Date))+' '+
            'AND TRANSFOPE <='+QuotedStr(DateToStr(dbdtpFfin.Date))+' '+
            'AND TIPDESEID = '+QuotedStr(dblcbTipDesm.Text)+' '+
            'AND NROFICIO='+QuotedStr(dbeNOficio.Text);
      FPrincipal.Mtx1.UsuarioSQL.Clear;
      FPrincipal.Mtx1.UsuarioSQL.Add( xSQL );
      FPrincipal.Mtx1.NewQuery;
      //Mtx.refreshdisplay;

      Showmessage('Datos Actualizados');
    Except
      //** hABILITAR LUEGO
      //** DM1.DCOM1.AppServer.SolRollBack;// RegresaTransaccion;
    end;
  End;
end;

procedure TFToolOficio.dbdtpFecharExit(Sender: TObject);
var
  SQL, sFecha : string;
begin
  if   DM1.wModo = 'A' then
  begin
    DecodeDate(dbdtpFechar.Date, Year, Month, Day);
    //wano := IntToStr(Year);

    sFecha := FormatDateTime(wFormatFecha, dbdtpFechar.Date);
    SQL:='SELECT * FROM TGE114 WHERE FECHA='+QuotedStr(sFecha);

    dm1.cdsReporte2.Close;
    dm1.cdsReporte2.DataRequest(SQL);
    dm1.cdsReporte2.Open;

    DM1.cdsOficio.FieldByName('FECANO').AsString		:= DM1.cdsReporte2.FieldByName('FECANO').AsString;
    DM1.cdsOficio.FieldByName('FECMES').AsString		:= DM1.cdsReporte2.FieldByName('FECMES').AsString;
    DM1.cdsOficio.FieldByName('FECDIA').AsString		:= DM1.cdsReporte2.FieldByName('FECDIA').AsString;    
    DM1.cdsOficio.FieldByName('FECTRIM').AsString		:= DM1.cdsReporte2.FieldByName('FECTRIM').AsString;
    DM1.cdsOficio.FieldByName('FECSEM').AsString		:= DM1.cdsReporte2.FieldByName('FECSEM').AsString;
    DM1.cdsOficio.FieldByName('FECSS').AsString			:= DM1.cdsReporte2.FieldByName('FECSS').AsString;
    DM1.cdsOficio.FieldByName('FECAASS').AsString		:= DM1.cdsReporte2.FieldByName('FECAASS').AsString;
    DM1.cdsOficio.FieldByName('FECMMSS').AsString		:= DM1.cdsReporte2.FieldByName('FECMMSS').AsString;            
    DM1.cdsOficio.FieldByName('FECAAMM').AsString		:= DM1.cdsReporte2.FieldByName('FECANO').AsString+DM1.cdsReporte2.fieldbyname('FECMES').AsString;
    DM1.cdsOficio.FieldByName('FECAATRI').AsString	:= DM1.cdsReporte2.FieldByName('FECAATRI').AsString;
    DM1.cdsOficio.FieldByName('FECAASEM').AsString	:= DM1.cdsReporte2.FieldByName('FECAASEM').AsString;

    SQL:= 'SELECT MAX(NOFID)+1 AS CODIGO '+
    			'FROM APO209 '+
          'WHERE MODOFIC='+quotedstr(DM1.wModulo)+' '+
          'AND FECANO='+quotedstr(DM1.cdsOficio.FieldByName('FECANO').AsString);
          //'AND TO_CHAR(FREG,''YYYY'')='+quotedstr(WANO);
    dm1.cdsQry.Close;
    dm1.cdsqry.datarequest(SQL);
    dm1.cdsQry.open;

    if dm1.cdsQry.fieldbyname('CODIGO').isnull then
      DM1.cdsOficio.FieldByName('NOFID').AsString:='000001'
    else
     begin
      {codigo:=dm1.MaxSQL('APO209','NOFID','');
      sql:='SELECT SUBSTR(''0000''||'+codigo+' ,LENGTH('+codigo+'),5) AS CODIGO FROM APO209';
      dm1.cdsQry.Close;
      dm1.cdsQry.DataRequest(sql);
      dm1.cdsQry.open;}
      DM1.cdsOficio.FieldByName('NOFID').AsString:=DM1.StrZero(dm1.cdsQry.fieldbyname('CODIGO').asstring, 6);
     end;
    //** 30/10/2002 - PJSV
    dbeNOficio.text := DM1.cdsOficio.FieldByName('NOFID').AsString;
    //**
  end;
end;

procedure TFToolOficio.dblcNotInList(Sender: TObject; LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
begin
//  Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).DataField,NewValue,[]);
  Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookupField,NewValue,[]);
  if not Accept then
    TwwDBCustomLookupCombo(Sender).DropDown;
end;

procedure TFToolOficio.FormCreate(Sender: TObject);
begin
  xSQL := 'SELECT CIAID, CIADES FROM TGE101';
  Dm1.cdsCia.close;
  Dm1.cdsCtaCtes.DataRequest(xSql);
  Dm1.cdsCia.Open;
  dblcCia.LookupTable := Dm1.cdsCia;
  dblcCia.LookupField := 'CIAID';
  dblcCia.Selected.clear;
  dblcCia.Selected.Add('CIAID'#9'2'#9'Id~Cia');
  dblcCia.Selected.Add('CIADES'#9'20'#9'Nombre~Cia');

  if DM1.wModo = 'M' then
  begin
    dbdtpFechar.enabled:=false;
    dblcdbanco.enabled:=false;
    dblcdcuenta.enabled:=false;
    dbdtpFini.enabled:=false;
    dbdtpFfin.enabled:=false;
    sWhere:= 'BANCOID = '''+ dm1.cdsOficio.fieldbyname('BANCOID').asstring+'''' ;
    edtBanco.text:=dm1.DisplayDescrip('prvTGE','TGE105','BANCONOM',sWhere,'BANCONOM');
    z2bbtnGrabar.enabled:=false;
    z2bbtnFiltar.enabled:=false;
  end
  else
  begin
    dbdtpFechar.enabled:=true;
    dblcdbanco.enabled:=true;
    dblcdcuenta.enabled:=true;
    dbdtpFini.enabled:=true;
    dbdtpFfin.enabled:=true;
    z2bbtnGrabar.enabled:=false;
    z2bbtnFiltar.enabled:=true;
    DM1.cdsOficio.FieldByName('FREG').AsDateTime	:=Date;
    DM1.cdsOficio.FieldByName('FECINI').AsDateTime:=Date;
    DM1.cdsOficio.FieldByName('FECFIN').AsDateTime:=Date;
    DM1.cdsOficio.FieldByName('ESTADO').AsString	:='INICIAL';    
  end;
end;

procedure TFToolOficio.bbtnCancelarClick(Sender: TObject);
begin
  DM1.cdsOficio.CancelUpdates;
  FToolOficio.Close;
end;

procedure TFToolOficio.dblcCiaExit(Sender: TObject);
var
  xSQL : String;
begin
  xSql := 'CIAID='+quotedstr(dblcCia.Text);
  edtCia1.text := Dm1.DisplayDescrip('prvSQL','TGE101','CIADES',xSql,'CIADES');
end;

procedure TFToolOficio.Timer1Timer(Sender: TObject);
begin
   Timer1.Enabled := False;
   If Dm1.wModo = 'A' then
    dblcCia.Text := '02'
   else
    dblcCia.Text := DM1.cdsOficio.fieldbyname('CIAID').AsString;
    //dblcCia.Text := FPrincipal.Mtx.FMant.cds2.fieldbyname('CIAID').AsString;
   dblcCia.OnExit(dblcCia);
end;

procedure TFToolOficio.dblcdCuentaExit(Sender: TObject);
begin
  if dm1.wModo = 'A' then
  begin
		dm1.cdsOficio.FieldByName('TDIARID').AsString	:=DM1.cdsCBcos.FieldByName('CCBCOVOUCH').AsString;
		dm1.cdsOficio.FieldByName('CUENTAID').AsString:=DM1.cdsCBcos.FieldByName('CTAPRINC').AsString;
		dm1.cdsOficio.FieldByName('TMONID').AsString	:=DM1.cdsCBcos.FieldByName('TMONID').AsString;
      xVouch  := DM1.cdsCBcos.FieldByName('CCBCOVOUCH').AsString;
  end;
end;

procedure TFToolOficio.dblcAgenciaExit(Sender: TObject);
begin
  xWhere:= 'AGENBCOID = '+ QuotedStr(dblcAgencia.Text) ;
  edtAgencia.Text:=DM1.DisplayDescrip('prvTGE','COB102','AGENBCODES',xWhere,'AGENBCODES');
end;

procedure TFToolOficio.dblcbTipDesmExit(Sender: TObject);
begin
  xWhere := 'TIPDESEID='+quotedstr(dblcbTipDesm.text);
  edtTipDesem.text := DM1.DisplayDescrip('prvSQL','CRE104','ACTBCO, ACTAGEN, TIPDESEDES, FPAGOID',xWhere,'TIPDESEDES');

  if dm1.cdsQry.FieldByName('ACTBCO').AsString = 'S' then
  begin
  	dblcdbanco.Enabled:=True;
    dblcdCuenta.Enabled:=True;
    if dm1.cdsQry.FieldByName('ACTAGEN').AsString = 'S' then
    begin
      dblcAgencia.Enabled:=True;
      edtAgencia.Text:='';
    end
    else
    begin
    	dblcAgencia.Enabled:=False;
    	edtAgencia.Text:='';
    end;
  end
  else
  begin
  	dblcdbanco.Enabled:=False;
    dblcdCuenta.Enabled:=False;
    dblcAgencia.Enabled:=False;
    edtAgencia.Text:='';
		edtBanco.Text:='';
    DM1.cdsOficio.FieldByName('AGENBCOID').AsString:='';
  end;

  if dm1.wModo = 'A' then
    DM1.cdsOficio.FieldByName('FPAGOID').AsString	:= dm1.cdsQry.FieldByName('FPAGOID').AsString;
end;

procedure TFToolOficio.z2bbtnCronoClick(Sender: TObject);
var
	xNumComp, xGlosa, xDocId, xComp : String;
  xCnt, xCaj : Integer;
begin
	if dm1.cdsOficio.FieldByName('ESTADO').AsString = 'ACEPTADO' then
  begin
    Information(Caption, 'El Oficio ya se encuentra Aceptado');
  	Exit;
  end;

  if not Question(Caption,  'Esta Seguro de Aceptar el Oficio '+DM1.cdsOficio.FieldByName('NOFID').AsString+
                            #13+#13+'Desea Continuar ? ') then
  	Exit;

  sWhere:= 'DOCMOD LIKE ''%'+dm1.wModulo+'%''';
	xDocId:=dm1.DisplayDescrip('prvTGE','TGE110','DOCID',sWhere,'DOCID');

	xGlosa	:= 'Oficio Nº '+DM1.cdsOficio.FieldByName('NOFID').AsString+' - '+
  												DM1.cdsOficio.FieldByName('FECANO').AsString+' - DM - '+
  												DM1.cdsOficio.FieldByName('MODOFIC').AsString;

  {xSQL:='SELECT MAX(ECNOCOMP)+1 AS CODIGO '+
        'FROM CAJA302 '+
        'WHERE CIAID='+quotedstr(DM1.cdsOficio.FieldByName('CIAID').AsString)+' '+
        'AND TDIARID='+quotedstr(DM1.cdsOficio.FieldByName('TDIARID').AsString)+' '+
        'AND ECANOMM='+quotedstr(DM1.cdsOficio.FieldByName('FECAAMM').AsString);
  dm1.cdsQry.Close;
  dm1.cdsQry.datarequest(xSQL);
  dm1.cdsQry.open;}

  sWhere:='CIAID='+quotedstr(DM1.cdsOficio.FieldByName('CIAID').AsString)+' '+
       		'AND TDIARID='+quotedstr(DM1.cdsOficio.FieldByName('TDIARID').AsString)+' '+
        	'AND CNTANOMM='+quotedstr(DM1.cdsOficio.FieldByName('FECAAMM').AsString);

  dm1.DisplayDescrip('prvTGE','CNT301','MAX(CNTCOMPROB)+1 AS CODIGO',sWhere,'CODIGO');
  xCnt := dm1.cdsQry.FieldByName('CODIGO').AsInteger;

  sWhere:='CIAID='+quotedstr(DM1.cdsOficio.FieldByName('CIAID').AsString)+' '+
       		'AND TDIARID='+quotedstr(DM1.cdsOficio.FieldByName('TDIARID').AsString)+' '+
        	'AND ECANOMM='+quotedstr(DM1.cdsOficio.FieldByName('FECAAMM').AsString);
  dm1.DisplayDescrip('prvTGE','CAJA302','MAX(ECNOCOMP)+1 AS CODIGO',sWhere,'CODIGO');
  xCaj := dm1.cdsQry.FieldByName('CODIGO').AsInteger;

  if xCnt > xCaj then
  	xComp:=InttoStr(xCnt)
  else
  	xComp:=InttoStr(xCaj);

  xNumComp:= DM1.StrZero(xComp, 10);

  xSQL := 'INSERT INTO CAJA302 ('+
          'CIAID, TDIARID, ECANOMM, ECNOCOMP, CLAUXID, PROV, PROVRUC, ECFCOMP, ECFEMICH, ECFPAGOP, '+
          'ECFCOBCH, FPAGOID, DOCID, ECNODOC, TMONID, ECTCAMB, ECMTOORI, ECMTOLOC, ECMTOEXT, BANCOID, '+
          'CCBCOID, ECGIRA, CPTOID, CUENTAID, ECGLOSA, ECLOTE, ECELABO, ECESTADO, ECCONTA, EC_IE, '+
          'CAJARETIGV, CCBCOVOUCH, PRVBANCOID, ECUSER, ECFREG, ECHREG, '+
          'ECANO, ECMM, ECDD, ECSS, ECSEM, ECTRI, ECAASS, ECAASEM, ECAATRI)'+
          ' VALUES ('+

          QuotedStr(DM1.cdsOficio.FieldByName('CIAID').AsString)+', '+
          QuotedStr(DM1.cdsOficio.FieldByName('TDIARID').AsString)+', '+
          QuotedStr(DM1.cdsOficio.FieldByName('FECAAMM').AsString)+', '+
          QuotedStr(xNumComp)+', '+
          QuotedStr(DM1.cdsOficio.FieldByName('CLAUXID').AsString)+', '+
          QuotedStr(DM1.cdsOficio.FieldByName('AUXID').AsString)+', '+
          QuotedStr(DM1.cdsOficio.FieldByName('PROVRUC').AsString)+', '+
          QuotedStr(DateTimeToStr(DM1.cdsOficio.FieldByName('FREG').AsDateTime))+', '+
          QuotedStr(DateTimeToStr(DM1.cdsOficio.FieldByName('FREG').AsDateTime))+', '+
          QuotedStr(DateTimeToStr(DM1.cdsOficio.FieldByName('FREG').AsDateTime))+', '+
          QuotedStr(DateTimeToStr(DM1.cdsOficio.FieldByName('FREG').AsDateTime))+', '+
          QuotedStr(DM1.cdsOficio.FieldByName('FPAGOID').AsString)+', '+
          QuotedStr(xDocId)+', '+
          QuotedStr(DM1.cdsOficio.FieldByName('NOFID').AsString)+', '+
          QuotedStr(DM1.cdsOficio.FieldByName('TMONID').AsString)+', '+
          DM1.cdsOficio.FieldByName('TCAMB').AsString+', '+
          DM1.cdsOficio.FieldByName('MONTOTOT').AsString+', '+
          DM1.cdsOficio.FieldByName('MONTOTOT').AsString+', '+
          FloattoStr(FRound(DM1.cdsOficio.FieldByName('MONTOTOT').AsFloat/DM1.cdsOficio.FieldByName('TCAMB').AsFloat,15,4))+', '+
          QuotedStr(DM1.cdsOficio.FieldByName('BANCOID').AsString)+', '+
          QuotedStr(DM1.cdsOficio.FieldByName('CCBCOID').AsString)+', '+
          QuotedStr(DM1.cdsOficio.FieldByName('USUARIO').AsString)+', '+
          QuotedStr(DM1.cdsOficio.FieldByName('CPTOID').AsString)+', '+
          QuotedStr(DM1.cdsOficio.FieldByName('CUENTAID').AsString)+', '+
          QuotedStr(xGlosa)+', '+
          QuotedStr('0000')+', '+
          QuotedStr('OFICIOAPO')+', '+
          QuotedStr('P')+', '+
          QuotedStr('N')+', '+
          QuotedStr('E')+', '+
          QuotedStr('N')+', '+
          QuotedStr(DM1.cdsOficio.FieldByName('TDIARID').AsString)+', '+
          QuotedStr(DM1.cdsOficio.FieldByName('CLAUXID').AsString)+', '+
          QuotedStr(DM1.cdsOficio.FieldByName('USUARIO').AsString)+', '+
// Inicio HPC_201502_APO       : Cambiar el formato de Fecha
					'TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYYY')+'), SYSDATE, '+
// Fin    HPC_201502_APO       : Cambiar el formato de Fecha
          QuotedStr(DM1.cdsOficio.FieldByName('FECANO').AsString)+', '+
          QuotedStr(DM1.cdsOficio.FieldByName('FECMES').AsString)+', '+
          QuotedStr(DM1.cdsOficio.FieldByName('FECDIA').AsString)+', '+
          QuotedStr(DM1.cdsOficio.FieldByName('FECSS').AsString)+', '+
          QuotedStr(DM1.cdsOficio.FieldByName('FECSEM').AsString)+', '+
          QuotedStr(DM1.cdsOficio.FieldByName('FECTRIM').AsString)+', '+
          QuotedStr(DM1.cdsOficio.FieldByName('FECAASS').AsString)+', '+
          QuotedStr(DM1.cdsOficio.FieldByName('FECAASEM').AsString)+', '+
          QuotedStr(DM1.cdsOficio.FieldByName('FECAATRI').AsString)+')';

  //xSQL:= xSQL;
  //DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

  dm1.cdsOficio.Edit;
  dm1.cdsOficio.FieldByName('ESTADO').AsString := 'ACEPTADO';
  cdsPost(DM1.cdsOficio);
  dm1.cdsOficio.Post;
  dm1.controltran;
  z2bbtnFiltar.Enabled:=False;
  z2bbtnGrabar.Enabled:=False;
  bbtnCancelar.Enabled:=False;
  Showmessage('Datos Aceptados');
end;


Procedure TFToolOficio.Correlativo;
begin
  //** cuando es primera vez, se pasa el nombre del campo del cual se sacara el correlativo
  xCorre := 'CREDID';
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

procedure TFToolOficio.CorreCred(pCorre : String);
var
 xCadena,xSql : String;
begin
 //** dependiendo del pCorre, lleno xCadena para el Sql
 If pCorre = '' then
   xCadena := 'substr(CREDID,3,8)'
 else
   xCadena := pCorre;

 //** busco el minimo y le agrego uno para que no hayan huecos, OJO por el día activo
 xSql := 'select min('+xCadena+' +1) NUMCRED from CRE206 '+
         ' where CREDID not in (select x.CREDID from CRE206 x, CRE206 y'+
         ' where x.CREDID = y.CREDID +1) and CREAREA = '+quotedstr('APO');
//         ' and freg = to_date(sysdate)';
 Dm1.cdsQry.Close;
 Dm1.cdsQry.DataRequest(xSql);
 Dm1.cdsQry.Open;
 //** si devuelve vacio, busco el ultimo correlativo que hubiera, no interesa el día
 If Dm1.cdsQry.FieldByName('NUMCRED').AsString = '' then
  begin
   xSql := 'select max('+xCadena+' +1) NUMCRED from CRE206 '+
           'where CREDID IN (select x.CREDID from CRE206 x, CRE206 y '+
           'where x.CREDID = y.CREDID +1) AND CREAREA = '+quotedstr('APO');
   Dm1.cdsQry.Close;
   Dm1.cdsQry.DataRequest(xSql);
   Dm1.cdsQry.Open;
   //** asigno el nuevo correlativo
   xCorre := dm1.StrZero(Dm1.cdsQry.FieldByName('NUMCRED').AsString,8);
  end
 else
   //** asigno el nuevo correlativo
  xCorre := dm1.StrZero(Dm1.cdsQry.FieldByName('NUMCRED').AsString,8);
end;

Procedure TFToolOficio.BuscaCorre;
begin
  //** por defecto
  xPaso := True;
  //** busco en la tabla auxiliar de correlativos si en xcorre ya existe,
  //** ejemplo : en CRE303 puede ser que este en el 1000 si más de un usuario toma
  //** este mas uno van a tener el 1001, lo cual es verdad, para evitar esto grabo
  //** en CRE201 y verifico que el 1001 no exista en este sino sigue buscando
  xSql := 'SELECT count(NRONABO) TOTAL FROM APO210 WHERE NRONABO='+quotedstr(xCorre);
  Dm1.cdsQry.Close;
  Dm1.cdsQry.DataRequest(xSql);
  Dm1.cdsQry.Open;
  //** False = para que siga repitiendo la busqueda
  If Dm1.cdsQry.FieldByName('TOTAL').Asfloat > 0 then
    xPaso := False
  else
   //** sino graba en la tabla auxiliar (cre201)
    begin
     xSql := 'INSERT INTO APO210 (NRONABO) VALUES ('+quotedstr(xCorre)+')';
     DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
     xSql := 'UPDATE CRE206 SET CREDID ='+quotedstr(xCorre)+ ' WHERE CREAREA ='+quotedstr('APO');
     DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
    end;
end;

{
procedure TFToolOficio.z2bbtnImprimeClick(Sender: TObject);
begin
   DM1.cdsReporte1.First;
    while DM1.cdsReporte1.eof do
     begin
      //** Abono en cuenta
      If DM1.cdsReporte1.FieldByName('TIPDESID').AsString  = 'A' then
       begin
        pplblTit.Caption := 'NOTA DE ABONO EN CUENTA DE AHORRROS Nro.'
       end;
      //** nota de giro
      If DM1.cdsReporte1.FieldByName('TIPDESID').AsString  = 'P' then
       begin
        pplblTit.Caption := 'NOTA DE PAGO CON GIRO / TRANSFERENCIA Nro.'
       end;

      //** efectivo
      If DM1.cdsReporte1.FieldByName('TIPDESID').AsString  = 'E' then
       begin
        pplblTit.Caption := 'NOTA DE PAGO EN EFECTIVO Nro.'
       end;
     end;

  pprptNotaAbono.Print ;
  pprptNotaAbono.Stop;

  x10:=Self.ComponentCount-1;
  While x10 >= 0 do
  begin
    if Self.Components[x10].ClassName='TppGroup' then
    begin
      Self.Components[x10].Free;
    end;
    x10:=x10-1;
  end;
  bdeppNotaAbono.DataSource:=nil;

end;
}

end.

