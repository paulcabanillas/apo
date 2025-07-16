unit APO704;

// Inicio Uso Estándares: 01/08/2011
// Unidad               : APO704
// Formulario           : FToolApo
// Fecha de Creación    : 15/12/2003
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Panel de Aportes
// Actualizaciones      :
// HPC_201501_APO       : 06/01/2015 - Cambio de DCOM a Socket

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcButton, fcImgBtn, fcShapeBtn, StdCtrls, Mask, wwdbedit, wwdblook,
  Wwdbdlg, ExtCtrls, DB,Mant, ppCtrls, ppBands, ppClass, ppReport,
  ppStrtch, ppSubRpt, ppVar, ppPrnabl, ppProd, ppComm, ppRelatv, ppCache,
  ppTypes, ppDB, ppDBPipe, ppEndUsr, ppViewr , wwClient;

type
  TFToolApo = class(TForm)
    pnltool: TPanel;
    Z2bbtnAceptar: TfcShapeBtn;
    bbtnClear: TfcShapeBtn;
    Button1: TButton;
    bbtnSalir: TfcShapeBtn;
    btnImprime: TfcShapeBtn;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppDesigner1: TppDesigner;
    dblcdAsoCod: TEdit;
    dblcdAsoNom: TEdit;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    lblUsuario: TppLabel;
    ppLine1: TppLine;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel13: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppLabel31: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel14: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine2: TppLine;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLabel12: TppLabel;
    ppLabel32: TppLabel;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    procedure Z2bbtnAceptarClick(Sender: TObject);
    procedure bbtnClearClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure bbtnSalirClick(Sender: TObject);
    procedure btnImprimeClick(Sender: TObject);
    procedure dblcdAsoCodExit(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
     cdsClone : TwwClientDataset;
  public
     MtxCtaAso :TMant;
     xcondicion:string;
     Xwhere:string;
     procedure OnEditAsoEstadoCta(Sender: TObject; MantFields: TFields);
     procedure OnToolEstadoCta(Sender: TObject);
  end;

var
  FToolApo: TFToolApo;
  sWhere : String;
  xMonto, xCapital : Real;

implementation

uses APODM, APO001, APO716, APO717, APO710;

{$R *.DFM}

{procedure TFToolApo.Z2bbtnAceptarClick(Sender: TObject);
var
  reporte:string;
begin
  xWhere:='';
  // DEPARTAMENTO
  If dblcdDepto.Text<>'' then
  Begin
     If Length(Trim(xWhere))>0 Then xWhere:=xWhere+' AND ';
     xwhere:=' J.DPTOID='''+DM1.cdsDpto.FieldByName('DPTOID').asstring+''' ';
  End;
  // PROVINCIA
  If dblcdCiudad.Text<>'' then
  Begin
     If Length(Trim(xWhere))>0 Then xWhere:=xWhere+' AND ';
     xWhere:=xWhere+' J.CIUDID='''+DM1.cdsprovin.FieldByName('CIUDID').asstring+''' ';
  End;
  // UNIDAD DE PROCESO
  If dblcdupro.Text<>'' then
  Begin
     If Length(Trim(xWhere))>0 Then xWhere:=xWhere+' AND ';
     xwhere:=xWhere+' A.UPROID='''+DM1.cdsUPRO.FieldByName('UPROID').asstring+''' ';
  End;
  // UNIDAD DE PAGO
  if dblcdUPago.Text<>'' then
  Begin
   If Length(Trim(xWhere))>0 Then xWhere:=xWhere+' AND ';
   xwhere:=xWhere+' A.UPAGOID='''+DM1.cdsUPago.FieldByName('UPAGOID').asstring+'''';
  End;

  // USE
  if dblcduse.Text<>'' then
  Begin
   If Length(Trim(xWhere))>0 Then xWhere:=xWhere+' AND ';
   xwhere:=xWhere+' A.USEID='''+DM1.cdsUSE.FieldByName('USEID').asstring+'''';
  End;
  //CODIGO ASOCIADO
  if dblcdAsoCod.Text<>'' then
  Begin
   If Length(Trim(xWhere))>0 Then xWhere:=xWhere+' AND ';
   xwhere:=xWhere+' A.ASOID='''+dblcdAsoCod.Text+'''  ';
  End;
  //NOMBRE ASOCIADO
  if dblcdAsoNom.Text<>'' then
  Begin
   If Length(Trim(xWhere))>0 Then xWhere:=xWhere+' AND ';
   xwhere:=xWhere+' A.ASOAPENOM LIKE '''+dblcdAsoNom.Text+'%''  ';
  end;

  if trim(xWhere)=''  then
  begin
   showMessage('Seleccione por lo menos un para metro');
  exit;
  end;

  Reporte:= 'SELECT A.ASOID,A.ASOCODMOD,A.USEABR,A.FREG,A.TRANSFOPE,A.TRANSNOPE,A.FORPAGOABR, '+
       			'A.PERIODO,A.USEID,A.SUMAAPORTE, A.SUMAOTRO,A.SUMATOT, '+
       			'A.TRANSMTODEV, A.FREG,A.HREG, '+
       			'B.DPTOID,B.CIUDID,B.ASORESNOM,B.ASOFRESNOM,B.ASODNI,B.ASONCTA, '+
       			'B.ASODIR,B.REGPENID,B.ASOAPENOM,B.UPROID,B.ASOCODPAGO,B.ASORESCESE, '+
       			'B.ASOFRESCESE,B.ASOTELF1,B.ASOTELF2,B.USEID,B.SITCTA, '+
       			'K.CEDUDES,D.DPTOABR,C.CIUDDES,R.REGPENDES,G.UPRONOM '+
						'FROM (SELECT A.ASOID,A.ASOCODMOD,A.USEABR,A.FREG, A.TRANSFOPE,A.TRANSNOPE, '+
            'A.FORPAGOABR,A.TRANSANO||''/''||A.TRANSMES PERIODO,A.USEID, '+
            'DECODE(SUBSTR(A.FORPAGOABR,1,3),''PLA'',A.TRANSMTO,0) SUMAAPORTE, '+
            'DECODE(SUBSTR(A.FORPAGOABR,1,3),''PLA'',0,DECODE(LEAST(A.TRANSMTO,0),0,A.TRANSMTO,0)) SUMAOTRO, '+
            'A.TRANSMTO SUMATOT,DECODE(A.TRANSINTID,''DEV'',A.TRANSMTO,0) TRANSMTODEV,A.HREG '+
      			'FROM APO301 A WHERE A.ASOID='+QuotedStr(dblcdAsoCod.Text)+') A, '+
     				'(SELECT B.ASOID,B.DPTOID,B.CIUDID,B.ASORESNOM,B.ASOFRESNOM,B.ASODNI,B.ASONCTA,B.ASODIR, '+
            'B.REGPENID,B.ASOAPENOM,B.UPROID,B.ASOCODPAGO,B.ASORESCESE,B.ASOFRESCESE,B.ASOTELF1, '+
            'B.ASOTELF2,B.USEID,B.SITCTA FROM APO201 B WHERE B.ASOID='+QuotedStr(dblcdAsoCod.Text)+') B, '+
     				'(SELECT K.CEDUDES,K.ASOID FROM APO202 K WHERE K.ASOID='+QuotedStr(dblcdAsoCod.Text)+' and K.FVIGENTE=''S'') K, '+
    				'APO123 C,APO158 D,APO102 G,APO103 P,APO105 R,APO106 T,APO101 U '+
						'WHERE ';
   					If Length(Trim(xWhere))>0 Then xWhere:=xWhere+' AND ';
   						REPORTE:=REPORTE+xWhere+
            'A.ASOID = B.ASOID AND '+
            'B.ASOID = K.ASOID(+) AND '+
            'B.CIUDID = C.CIUDID(+) AND '+
            'C.DPTOID = D.DPTOID(+) AND '+
            'B.USEID = U.USEID(+) AND '+
            'U.UPAGOID = P.UPAGOID(+) AND '+
            'U.UPROID = G.UPROID(+) AND '+
            'B.REGPENID = R.REGPENID(+) AND '+
            'B.SITCTA = T.ASOSITID(+)';


  {REPORTE:='SELECT J.ASOID,J.DPTOID,D.DPTOABR,J.CIUDID,C.CIUDDES,A.ASOCODMOD,'+
               'U.USEABRE,A.USEABR,P.UPAGONOM,J.ASORESNOM,J.ASOFRESNOM,J.ASODNI,'+
               'J.ASONCTA,J.ASODIR,K.CEDUDES,J.REGPENID,R.REGPENDES,J.ASOAPENOM,'+
               'J.UPROID,G.UPRONOM,J.ASOCODPAGO,J.ASORESCESE,J.ASOFRESCESE,'+
               'T.ASOSITDES,J.ASOTELF1,J.ASOTELF2,A.FREG,A.TRANSFOPE,A.TRANSNOPE,'+
               'A.FORPAGOABR, '+
               'A.TRANSANO||''/''||A.TRANSMES PERIODO,A.USEID,'+
               'DECODE(SUBSTR(A.FORPAGOABR,1,3),''PLA'',A.TRANSMTO,0) SUMAAPORTE,'+
               'DECODE(SUBSTR(A.FORPAGOABR,1,3),''PLA'',0,DECODE(LEAST(A.TRANSMTO,0),0,A.TRANSMTO,0)) SUMAOTRO,'+
               'DECODE(A.TRANSINTID,''DEV'',A.TRANSMTO,0) TRANSMTODEV, A.TRANSMTO SUMATOT,A.FREG,A.HREG '+
           'FROM APO301 A, APO102 G, APO201 J, APO202 K, APO103 P,'+
               'APO123 C,APO158 D, APO101 U,APO105 R,APO106 T '+
           'WHERE ';
   If Length(Trim(xWhere))>0 Then xWhere:=xWhere+' AND ';
   REPORTE:=REPORTE+xWhere+
               ' J.ASOID(+)=A.ASOID AND J.DPTOID=D.DPTOID(+) AND J.ASOID=K.ASOID(+) AND K.FVIGENTE(+)=''S'' AND J.REGPENID=R.REGPENID(+) AND '+
               ' J.CIUDID=C.CIUDID(+) AND J.UPAGOID=P.UPAGOID(+) AND J.USEID=U.USEID(+) AND J.SITCTA=T.ASOSITID(+) AND '+
               ' J.UPROID=G.UPROID(+) ';}
//           'ORDER BY A.DPTOID,A.CIUDID,A.UPROID,A.USEID,A.ASOID,A.APOSEC,A.TRANSFOPE';
  //Screen.Cursor:=crHourGlass;

  //Mtx.UsuarioSQL.Clear;
  //Application.ProcessMessages;
  //Mtx.UsuarioSQL.Add(Reporte);
  //Application.ProcessMessages;
  //Mtx.NewQuery;
  //Application.ProcessMessages;

  //Screen.Cursor:=crDefault;
//end;

procedure TFToolApo.Z2bbtnAceptarClick(Sender: TObject);
var
  xUseid, xUpagoid, xUproid, xCiudid, xDptoid, xAsoapenom, xAsoid, reporte : string;
  i, j : Integer;
  Ano, Mes, Dia : Word;
  xSQL, xWhere, xTransMes : String;

begin
  xWhere  :='';
  xAsoid  := FToolApo.dblcdAsoCod.Text;
  xAsoapenom := FToolApo.dblcdAsoNom.Text+'%';

  if (xAsoid = '') or (xAsoapenom = '') then
  begin
    showMessage(' Seleccione El Codigo del Asociado ');
    Exit;
  end;

  Reporte:= 'SELECT A.APOSEC, B.ASOID, A.USEABR, A.FREG, A.TRANSFOPE, A.TRANSNOPE, A.FORPAGOABR, '+
       			'A.PERIODO, A.USEID, A.SUMAAPORTE, A.SUMAOTRO, A.SUMATOT, '+
       			'A.TRANSMTODEV, A.HREG, A.TRANSANO, A.TRANSMES, '+
       			'B.DPTOID, B.CIUDID, B.ASORESNOM, B.ASOFRESNOM, B.ASODNI, B.ASONCTA, '+
       			'B.ASODIR, B.REGPENID, B.ASOAPENOM, B.UPROID, B.ASOCODPAGO, B.ASORESCESE, '+
       			'B.ASOFRESCESE, B.ASOTELF1, B.ASOTELF2, B.SITCTA, '+
            'B.ASOCODMOD, B.ASOSITID, B.USENOM, CAST(''AAAA'' AS VARCHAR2(15)) MES, '+
       			'K.CEDUDES, D.DPTOABR, C.CIUDDES, R.REGPENDES, G.UPRONOM '+

 						'FROM (SELECT A.APOSEC, A.ASOID, A.ASOCODMOD, A.USEABR, A.FREG, A.TRANSFOPE, A.TRANSNOPE, A.TRANSANO, A.TRANSMES, '+
            'A.FORPAGOABR, A.TRANSANO||''/''||A.TRANSMES PERIODO, A.USEID, '+
            'A.TRANSMTO SUMAAPORTE, '+
            'CASE WHEN SUBSTR(A.FORPAGOABR,1,3)=''PLA'' THEN A.TRANSMTO ELSE A.TRANSMTO END SUMAOTRO, '+
            'A.TRANSMTO-NVL(A.TRANSMTODEV,0) SUMATOT, '+
            'CASE WHEN A.TRANSINTID=''DEV'' THEN A.TRANSMTO ELSE NVL(TRANSMTODEV,0) END TRANSMTODEV, A.HREG '+
            'FROM APO301 A WHERE A.ASOID='+quotedstr(xAsoid);
{
  Reporte := Reporte + ') A, (SELECT B.ASOID, B.DPTOID, B.CIUDID, B.ASORESNOM, B.ASOFRESNOM, B.ASODNI, B.ASONCTA, B.ASODIR, '+
                        'B.REGPENID, B.ASOAPENOM, B.UPROID, B.ASOCODPAGO, B.ASORESCESE, B.ASOFRESCESE, B.ASOTELF1, '+
                        'B.ASOCODMOD, B.ASOSITID, '+
                        'B.ASOTELF2, B.USEID, B.SITCTA , B.UPAGOID FROM APO201 B WHERE B.ASOID='+quotedstr(xAsoid);
}
//adición de use
  Reporte := Reporte + ') A, (SELECT B.ASOID, B.DPTOID, B.CIUDID, B.ASORESNOM, B.ASOFRESNOM, B.ASODNI, B.ASONCTA, B.ASODIR, '+
                        'B.REGPENID, B.ASOAPENOM, B.UPROID, B.ASOCODPAGO, B.ASORESCESE, B.ASOFRESCESE, B.ASOTELF1, '+
                        'B.ASOCODMOD, B.ASOSITID, '+
                        'B.ASOTELF2, B.USEID, B.SITCTA , B.UPAGOID ,B1.USENOM FROM APO201 B , APO101 B1 WHERE B.ASOID='+quotedstr(xAsoid) +
                        ' AND B.UPROID = B1.UPROID(+) AND B.USEID = B1.USEID(+) AND B.UPAGOID = B1.UPAGOID(+)';

  Reporte := Reporte +') B, (SELECT MIN(K.CEDUDES) CEDUDES, MIN(K.ASOID) ASOID FROM APO202 K WHERE K.ASOID='+xAsoid+' AND K.FVIGENTE=''S'') K, '+
             					'APO123 C, APO158 D, APO102 G, APO103 P, APO105 R, APO106 T'+
                             ' WHERE A.ASOID=B.ASOID AND B.ASOID=K.ASOID(+) ' +
                                   ' AND B.CIUDID   = C.CIUDID(+) AND C.DPTOID=D.DPTOID(+) ' +
                                   ' AND G.UPROID   = B.UPROID ' +
                                   ' AND P.UPROID   = B.UPROID ' +
                                   ' AND P.UPAGOID  = B.UPAGOID ' +
                                   ' AND B.REGPENID = R.REGPENID(+)' +
                                   ' AND B.SITCTA   = T.ASOSITID(+)' ;

  Screen.Cursor:=crHourGlass;

  Mtx.UsuarioSQL.Clear;
  DM1.cdsReporte1.Filter   := '';
  DM1.cdsReporte1.Filtered := False;
  DM1.cdsReporte1.IndexFieldNames := '';
  Application.ProcessMessages;
  Mtx.UsuarioSQL.Add(Reporte);
  Application.ProcessMessages;
  Mtx.NewQuery;
  Application.ProcessMessages;
  if mtx.ClientDataSet.RecordCount = 0 then
  begin
    Raise Exception.Create('Este Asociado no tiene Aportes Registrados')  ;
  end ;
//////////////////////////////////////////////////////////////////// inicio de proceso de insercion de Fantasmas

  Screen.Cursor := crHourGlass;

   DM1.cdsReporte1.IndexFieldNames := 'APOSEC; TRANSFOPE';
   DM1.cdsReporte1.First;
   DM1.cdsReporte1.Last;
   If Length(xTransMes) = 0 Then
   begin
     DecodeDate(Date, Ano, Mes, Dia);
     xTransMes := CurrToStr(Ano)+DM1.StrZero(CurrToStr(Mes), 2);
   end;
   cdsClone.CloneCursor(dm1.cdsReporte1,False);
   cdsClone.First ;
   
   xMonto    := 0;//DM1.cdsReporte1.FieldByName('SALDO').AsFloat;
   xUlt      := DM1.cdsReporte1.FieldByName('APOSEC').AsString;
   xUseAbr   := DM1.cdsReporte1.FieldByName('USEABR').AsString;
   xUseId    := '';//DM1.cdsReporte1.FieldByName('USE').AsString;
   xUProId   := '';//DM1.cdsReporte1.FieldByName('UPRO').AsString;
   xPagoId   := '';//DM1.cdsReporte1.FieldByName('UPAGO').AsString;
   xDptoId   := DM1.cdsReporte1.FieldByName('DPTOID').AsString;
   xCiudId   := DM1.cdsReporte1.FieldByName('CIUDID').AsString;

//Para Agregar Meses Fantasmas
   xFlag := 'N'; xSaldoAnt := 0; xSaldoPos := 0; xSal := 'N';
   DM1.cdsReporte1.First;
   xCapAnt  := '0';//DM1.cdsReporte3.FieldByName('SALDOANT').AsString;
   xTransAno:= DM1.cdsReporte1.FieldByName('TRANSANO').AsString;

   xSQL :='SELECT DISTINCT TRANSANO FROM APO301 '+
          'WHERE ASOID='+QuotedStr(xAsoid)+' '+
          'AND TRANSINTID='+QuotedStr('APO');

   DM1.cdsQry1.Filter   := '';
   DM1.cdsQry1.Filtered := False;
   DM1.cdsQry1.IndexFieldNames := '';
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xSQL);
   DM1.cdsQry1.Open;
   DM1.cdsQry1.IndexFieldNames := 'TRANSANO';

   If Length(Trim(FCes)) = 0 Then
    begin
     Y := Ano;
    end;

   xSQL := 'SELECT ''999999'' APOSEC FROM TGE901';

   DM1.cdsQry2.Filter   := '';
   DM1.cdsQry2.Filtered := False;
   DM1.cdsQry2.IndexFieldNames := '';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(xSQL);
   DM1.cdsQry2.Open;
   DM1.cdsQry2.Delete;

//Para Completar los meses desde el primer año de aportes hasta la Fecha de Cese
   DM1.cdsQry1.First;
//18-03-03   For i := StrToInt(DM1.cdsQry1.FieldByName('APOSEC').AsString) To Y do
  For i := StrToInt(DM1.cdsQry1.FieldByName('TRANSANO').AsString) To Y do
  begin
    For j := 1 To 12 do
    begin
      DM1.cdsQry2.Append;
      DM1.cdsQry2.FieldByName('APOSEC').AsString := IntToStr(i)+DM1.StrZero(IntToStr(j), 2);
      if xTransMes = IntToStr(i)+DM1.StrZero(IntToStr(j), 2) then
       //If xTransMes = DM1.cdsQry2.FieldByName('APOSEC').AsString Then
      Break;
    end;
  end;

//18-03-2003   DM1.cdsReporte.IndexFieldNames := 'APOSEC';
  DM1.cdsReporte1.IndexFieldNames := '';
  DM1.cdsReporte1.IndexFieldNames := 'TRANSANO; TRANSMES';
  DM1.cdsQry2.First;
  While Not DM1.cdsQry2.EOF do
  begin
    xTransAno := Copy(DM1.cdsQry2.FieldByName('APOSEC').AsString, 1, 4);
    xTransMes := Copy(DM1.cdsQry2.FieldByName('APOSEC').AsString, 5, 2);
    DM1.cdsReporte1.SetKey;
    DM1.cdsReporte1.FieldByName('TRANSANO').AsString := xTransAno;
    DM1.cdsReporte1.FieldByName('TRANSMES').AsString := xTransMes;
    if Not DM1.cdsReporte1.GotoKey Then
    begin
      DM1.cdsReporte1.Insert;
      DM1.cdsReporte1.FieldByName('APOSEC').AsString      := DM1.cdsQry2.FieldByName('APOSEC').AsString;
      DM1.cdsReporte1.FieldByName('ASOAPENOM'  ).AsString := cdsClone.FieldBYName('ASOAPENOM'  ).AsString ;
      DM1.cdsReporte1.FieldByName('ASOCODMOD'  ).AsString := cdsClone.FieldBYName('ASOCODMOD'  ).AsString ;
      DM1.cdsReporte1.FieldByName('USENOM'     ).AsString := cdsClone.FieldBYName('USENOM'     ).AsString ;
      DM1.cdsReporte1.FieldByName('REGPENDES'  ).AsString := cdsClone.FieldBYName('REGPENDES'  ).AsString ;
      DM1.cdsReporte1.FieldByName('ASOFRESNOM' ).AsString := cdsClone.FieldBYName('ASOFRESNOM' ).AsString ;
      DM1.cdsReporte1.FieldByName('ASOFRESCESE').AsString := cdsClone.FieldBYName('ASOFRESCESE').AsString ;
      DM1.cdsReporte1.FieldByName('ASODIR'     ).AsString := cdsClone.FieldBYName('ASODIR'     ).AsString ;
      DM1.cdsReporte1.FieldByName('CEDUDES'    ).AsString := cdsClone.FieldBYName('CEDUDES'    ).AsString ;
      DM1.cdsReporte1.FieldByName('UPRONOM'    ).AsString := cdsClone.FieldBYName('UPRONOM'    ).AsString ;
      DM1.cdsReporte1.FieldByName('ASOCODPAGO' ).AsString := cdsClone.FieldBYName('ASOCODPAGO' ).AsString ;
      DM1.cdsReporte1.FieldByName('ASOSITID'   ).AsString := cdsClone.FieldBYName('ASOSITID'   ).AsString ;
      DM1.cdsReporte1.FieldByName('ASORESNOM'  ).AsString := cdsClone.FieldBYName('ASORESNOM'  ).AsString ;
      DM1.cdsReporte1.FieldByName('ASORESCESE' ).AsString := cdsClone.FieldBYName('ASORESCESE' ).AsString ;
      DM1.cdsReporte1.FieldByName('DPTOABR'    ).AsString := cdsClone.FieldBYName('DPTOABR'    ).AsString ;
      DM1.cdsReporte1.FieldByName('ASONCTA'    ).AsString := cdsClone.FieldBYName('ASONCTA'    ).AsString ;
      DM1.cdsReporte1.FieldByName('ASODNI'     ).AsString := cdsClone.FieldBYName('ASODNI'     ).AsString ;

// Inicio HPC_201501_APO     Cambio de DCOM a Socket
      DM1.cdsReporte1.FieldByName('ASOID'     ).AsString := cdsClone.FieldBYName('ASOID'     ).AsString ;
// Fin    HPC_201501_APO     Cambio de DCOM a Socket


      DM1.cdsReporte1.FieldByName('USEID').AsString      := xUseId;
      DM1.cdsReporte1.FieldByName('USEABR').AsString     := xUseAbr;
      DM1.cdsReporte1.FieldByName('UPROID').AsString     := xUProId;
      DM1.cdsReporte1.FieldByName('DPTOID').AsString     := xDptoId;
      DM1.cdsReporte1.FieldByName('CIUDID').AsString     := xCiudId;
      DM1.cdsReporte1.FieldByName('TRANSANO').AsString   := xTransAno;
      DM1.cdsReporte1.FieldByName('TRANSMES').AsString   := xTransMes;
      DM1.cdsReporte1.FieldByName('TRANSMTODEV').AsFloat := 0;
      xSaldoAnt := 0;//DM1.cdsReporte1.FieldByName('SALDO').AsFloat;
      xSaldoPos := 0;//DM1.cdsReporte1.FieldByName('SALDOBONUS').AsFloat;
      DM1.cdsReporte1.Post;
    end
    else
    begin
      xSaldoAnt := 0;//DM1.cdsReporte1.FieldByName('SALDO').AsFloat;
      xSaldoPos := 0;//DM1.cdsReporte1.FieldByName('SALDOBONUS').AsFloat;
    end;
    DM1.cdsQry2.Next;
  end;

//////////////////////////////////////////////////////////////////////////////////////////////////////////

//Para las Devoluciones Por Efectuar
  if (Length(Trim(FRes)) > 0) and (Length(Trim(FCes)) > 0) Then
  begin
    xSQL :='SELECT TRANSFOPE, TRANSNOPE, TRANSANO, TRANSMES, '+
           'CAST(''AAA'' AS VARCHAR2(15)) MES, TRANSMTO, INTERESMTO '+
           'FROM APO301 '+
           'WHERE ASOID='+QuotedStr(xAsoid)+' '+
           'AND TRANSINTID='+QuotedStr('APO')+' '+
           'AND TRANSMTODEV IS NULL';

    xSQL := xSQL + ' AND APOSEC > TO_CHAR('+wRepFuncDate+QuotedStr(FCes)+'),''YYYY'')||TO_CHAR('+wRepFuncDate+QuotedStr(FCes)+'),''MM'')'
                  +' ORDER BY APOSEC';

    DM1.cdsQry3.Filter   := '';
    DM1.cdsQry3.Filtered := False;
    DM1.cdsQry3.IndexFieldNames := '';
    DM1.cdsQry3.Close;
    DM1.cdsQry3.DataRequest(xSQL);
    DM1.cdsQry3.Open;
  end
  else
  begin
    xSQL := 'SELECT TRANSFOPE, TRANSNOPE, TRANSANO, TRANSMES, '+
            'CAST(''AAA'' AS VARCHAR2(15)) MES, TRANSMTO, INTERESMTO '+
            'FROM APO301 '+
            'WHERE ASOID='+QuotedStr(xAsoid)+' '+
            'AND TRANSINTID='+QuotedStr('APO')+' '+
            'AND APOSEC>'+QuotedStr(FCes);

     DM1.cdsQry3.Filter   := '';
     DM1.cdsQry3.Filtered := False;
     DM1.cdsQry3.IndexFieldNames := '';
     DM1.cdsQry3.Close;
     DM1.cdsQry3.DataRequest(xSQL);
     DM1.cdsQry3.Open;
  end;

  //Para las Devoluciones Efectuadas
  xSQL := 'SELECT TRANSFOPE, TRANSNOPE, TRANSANO, TRANSMES, TRANSMTO, INTERESMTO, '+
          'CAST(''AAA'' AS VARCHAR2(4)) ANO, CAST(''AAA'' AS VARCHAR2(15)) MES, '+
          'CAST(''AAA'' AS VARCHAR2(15)) NOPE, 0.00 MONTO '+
          'FROM APO301 '+
          'WHERE ASOID='+QuotedStr(xAsoid)+' '+
          'AND TRANSINTID='+QuotedStr('APO')+' '+
          'AND TRANSMTODEV IS NOT NULL';

  if (Length(Trim(FRes)) > 0) And (Length(Trim(FCes)) > 0) Then
  begin
    xSQL := xSQL + ' AND APOSEC > TO_CHAR('+wRepFuncDate+QuotedStr(FCes)+'),''YYYY'')||TO_CHAR('+wRepFuncDate+QuotedStr(FCes)+'),''MM'') '
                 + ' ORDER BY APOSEC';

    DM1.cdsQry4.Filter   := '';
    DM1.cdsQry4.Filtered := False;
    DM1.cdsQry4.IndexFieldNames := '';
    DM1.cdsQry4.Close;
    DM1.cdsQry4.DataRequest(xSQL);
    DM1.cdsQry4.Open;

    if DM1.cdsQry4.RecordCount > 0 Then
    begin
      DM1.cdsQry4.First;
      While Not DM1.cdsQry4.EOF do
      begin
        xWhere :='ASOID='+QuotedStr(xAsoid)+' '+
                 'AND TRANSINTID='+QuotedStr('DEV');
        if Length(DM1.DisplayDescrip('prvSQL', 'APO301', 'TRANSFOPE, TRANSNOPE, TRANSANO, TRANSMES, TRANSMTO', xWhere, 'TRANSANO')) > 0 Then
        begin
          DM1.cdsQry4.Edit;
          DM1.cdsQry4.FieldByName('ANO').AsString  := DM1.cdsQry.FieldByName('TRANSANO').AsString;
          DM1.cdsQry4.FieldByName('MES').AsString  := DM1.NombreMes(DM1.cdsQry.FieldByName('TRANSMES').AsString);
          DM1.cdsQry4.FieldByName('NOPE').AsString := DM1.cdsQry.FieldByName('TRANSNOPE').AsString;
          DM1.cdsQry4.FieldByName('MONTO').AsFloat := DM1.cdsQry.FieldByName('TRANSMTO').AsFloat;
        end;
        DM1.cdsQry4.Next;
      end;
    end;
  end;

  DM1.cdsReporte1.DisableControls;
  if DM1.cdsReporte1.RecordCount > 0 Then
  begin
    DM1.cdsReporte1.First;
    While Not DM1.cdsReporte1.EOF do
    begin
      DM1.cdsReporte1.Edit;
      DM1.cdsReporte1.FieldByName('MES').AsString  := DM1.NombreMes(DM1.cdsReporte1.FieldByName('TRANSMES').AsString);
      DM1.cdsReporte1.Post;
      DM1.cdsReporte1.Next;
    end;
  end;
  DM1.cdsReporte1.EnableControls;

/////////////////////////////////////////////////////////////////// Fin del Proceso de insercion de fastasmas
  Screen.Cursor:=crDefault;
end;


procedure TFToolApo.bbtnClearClick(Sender: TObject);
begin
  dblcdAsoCod.Text:='';
  dblcdAsoNom.Text:='';
end;

procedure TFToolApo.Button1Click(Sender: TObject);
begin
  FToolAsoCta:=TFToolAsoCta.Create(Self);
  MtxCtaAso := TMant.Create(Self);
  Try
    MtxCtaAso.User           := DM1.wUsuario;
		MtxCtaAso.Admin          := DM1.wAdmin;
    MtxCtaAso.Module         := DM1.wModulo;
    MtxCtaAso.DComC          := DM1.DCOM1;
    MtxCtaAso.ControlGridDisp:= FPrincipal.cgdPrincipal;
    MtxCtaAso.OnCreateMant   := OnToolEstadoCta;
    MtxCtaAso.TableName      := 'APO201';
    MtxCtaAso.Registros      := 30;
    MtxCtaAso.ClientDataSet  := DM1.cdsAsociados;
    MtxCtaAso.Titulo  			 := 'Asociados';
    MtxCtaAso.OnEdit 	  		 := OnEditAsoEstadoCta;
    MtxCtaAso.SectionName		 := 'BuscaApoCta';
    MtxCtaAso.FileNameIni		 := '\SolAportes.ini';
// Inicio HPC_201501_APO     - Cambio de DCOM a Socket
    MtxCtaAso.Tipo               := 'NORMAL';
// Fin    HPC_201501_APO     - Cambio de DCOM a Socket
    MtxCtaAso.Execute;
  Finally
    MtxCtaAso.Free;
  End;
end;

procedure TFToolApo.OnEditAsoEstadoCta(Sender: TObject; MantFields: TFields);
begin
  if DM1.cdsAsociados.RecordCount = 0 then
  begin
    ShowMessage('No Existen Registros a Editar');
    exit;
  end;
  FToolApo.dblcdAsoCod.Text:=DM1.cdsAsociados.FieldByName('ASOID').AsString;
  FToolApo.dblcdAsoNom.Text:=DM1.cdsAsociados.FieldByName('ASOAPENOM').AsString;
  TMant(Sender).FMant.Close;
end;

procedure TFToolApo.OnToolEstadoCta(Sender: TObject);
var
	pg : TPanel;
	pl : TPanel;
begin
  pg  := FToolAsoCta.pnlTool;
  pl  := TMant(Sender).FMant.pnlBtns;
  pl.Height   := pg.Height + 5;
  pl.AutoSize := True;
  pg.Parent   := TMant(Sender).FMant.pnlBtns;
  pg.Align    := alClient;
	TMant(Sender).FMant.pnlBtns.Visible  := True;
end;

procedure TFToolApo.bbtnSalirClick(Sender: TObject);
begin
  Mtx.FMant.Close;
end;

procedure TFToolApo.btnImprimeClick(Sender: TObject);
var
  x10 : Integer;
begin
  if DM1.cdsReporte1.RecordCount = 0 Then
  begin
    Beep;
    MessageDlg('No Existen Datos a Imprimir', mtInformation, [mbOk], 0);
    Exit;
  end;

  DM1.cdsReporte1.DisableControls;
  ppDBPipeline1.DataSource    := DM1.dsReporte1;
  ppReport1.Template.FileName := wRutaRpt +'\Estado Cuenta.rtm';
  ppReport1.Template.LoadFromFile ;
  DM1.cdsReporte1.EnableControls;
  //ppSalAnt.Text := FloatToStrF(StrToFloat(xCapAnt), ffNumber, 15, 2);
  //     ppSalAct.Text := xCapAct;
  //ppSalAct.Caption := FloatToStrF(xMonto, ffNumber, 15, 2);
  lblUsuario.Caption:=dm1.wUsuario;
  //ppDesigner1.ShowModal;
  ppReport1.Print ;
  ppReport1.Stop;

  x10 := Self.ComponentCount-1;
  While x10 >= 0 do
  begin
    If Self.Components[x10].ClassName = 'TppGroup' Then
    begin
      Self.Components[x10].Free;
    end;
    x10:=x10-1;
  end;
  ppDBPipeline1.DataSource := nil;
end;

procedure TFToolApo.dblcdAsoCodExit(Sender: TObject);
begin
  If Length(dblcdAsoCod.Text)>0 Then
  Begin
    dblcdAsoCod.Text:=DM1.StrZero(dblcdAsoCod.Text,10);
  	sWhere:= 'ASOID='+ QuotedStr(dblcdAsoCod.Text);
  	dblcdAsoNom.Text:=DM1.DisplayDescrip('prvTGE','APO201','ASOAPENOM',sWhere,'ASOAPENOM');
  End;
end;

procedure TFToolApo.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState := wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomSetting := zs100Percent;
end;

procedure TFToolApo.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If (Key = #13) Then
    begin
     Key := #0;
     Perform(CM_DialogKey, VK_TAB, 0);
    end;
end;

procedure TFToolApo.FormCreate(Sender: TObject);
begin
 cdsClone := TwwClientDataSet.Create(self);
end;

procedure TFToolApo.FormDestroy(Sender: TObject);
begin
 cdsClone.Free ; 
end;

end.
