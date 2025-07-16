// Inicio Uso Estándares         :   /  /
// Unidad                        : APO320
// Formulario                    : Fcuerecapo
// Fecha de Creación             :   /  /
// Autor                         :
// Objetivo                      : Descardo de recaudacion de aportes por bancos

// Actualizaciones               : HPC_201202_APO -   MEMO 638-2012-DM-COB
//                               : se modifica el parametro de fecha de inicio del descargo de aportes por recaudadora
//                               : debe ser '200701' si la fecha de resolucion de nombramiento es menor, caso contrario
//                               : tomara el año y mes de la fecha de resolucion de nombramiento.
// DPP_201202_APO                : El pase a producción se realiza a partir del HPC_201202

unit APO320;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, ComCtrls,DB,
  ExtCtrls, ppBands, ppCache, ppClass, ppProd, ppReport, ppComm, ppRelatv,
  ppDB, ppDBPipe, ppDBBDE, ppPrnabl, ppCtrls, ppVar;

type
  Tfcuerecapo = class(TForm)
    btncerrar: TBitBtn;
    pccuerecapo: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    dbgcabcuerecapobancre: TwwDBGrid;
    btndesrec: TBitBtn;
    dbgdetcuerecapobancre: TwwDBGrid;
    btnvalpag: TBitBtn;
    dbgnoreg: TwwDBGrid;
    btndesarcrec: TBitBtn;
    btnmarpag: TBitBtn;
    btndetdeldia: TBitBtn;
    ppdbpdetdeldia: TppDBPipeline;
    pprdetdeldia: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppShape2: TppShape;
    ppLabel2: TppLabel;
    ppShape3: TppShape;
    ppLabel3: TppLabel;
    ppShape4: TppShape;
    ppLabel4: TppLabel;
    ppShape5: TppShape;
    ppLabel5: TppLabel;
    ppShape6: TppShape;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppltitulo: TppLabel;
    ppLine1: TppLine;
    ppLabel15: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine2: TppLine;
    pplimpresopor: TppLabel;
    ppDBCalc2: TppDBCalc;
    btnestreg: TBitBtn;
    ppdbpestreg: TppDBPipeline;
    pprpestreg: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppShape7: TppShape;
    ppLabel16: TppLabel;
    ppShape8: TppShape;
    ppLabel17: TppLabel;
    ppShape9: TppShape;
    ppLabel18: TppLabel;
    ppShape10: TppShape;
    ppLabel19: TppLabel;
    ppShape12: TppShape;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppltitulodetdes: TppLabel;
    ppShape11: TppShape;
    ppShape13: TppShape;
    ppLabel20: TppLabel;
    ppLabel31: TppLabel;
    ppShape14: TppShape;
    ppLabel32: TppLabel;
    ppSummaryBand2: TppSummaryBand;
    ppDBText7: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText14: TppDBText;
    ppDBCalc3: TppDBCalc;
    ppLabel30: TppLabel;
    ppLine3: TppLine;
    ppLabel33: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppLine4: TppLine;
    pplimpresopor02: TppLabel;
    pplmontot: TppLabel;
    btnimpestdes: TBitBtn;
    btnenvban: TBitBtn;
    btnvalaut: TBitBtn;
    pnlapenom: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    edtBuscarDet: TEdit;
    rgord: TRadioGroup;
    ChKDESCENDENTE: TCheckBox;
    procedure FormActivate(Sender: TObject);
    procedure btncerrarClick(Sender: TObject);
    procedure btndesrecClick(Sender: TObject);
    procedure pccuerecapoChange(Sender: TObject);
    procedure btnvalpagClick(Sender: TObject);
    procedure dbgcabcuerecapobancreCellChanged(Sender: TObject);
    procedure btndesarcrecClick(Sender: TObject);
    procedure btnmarpagClick(Sender: TObject);
    procedure btndetdeldiaClick(Sender: TObject);
    procedure btnestregClick(Sender: TObject);
    procedure btneliminaClick(Sender: TObject);
    procedure btnimpestdesClick(Sender: TObject);
    procedure btnenvbanClick(Sender: TObject);
    procedure edtBuscarDetChange(Sender: TObject);
    procedure edtBuscarDetKeyPress(Sender: TObject; var Key: Char);
    procedure btnvalautClick(Sender: TObject);
    procedure rgordClick(Sender: TObject);
    procedure dbgdetcuerecapobancreDblClick(Sender: TObject);
  private
    procedure gridnoregistrados;
    procedure gridcabecera(flg:String);
    procedure validapagoaporte;
    function buscaunmesdespues(xanomes:String):String;
    function buscamesinicial(xanomes:String):String;
    procedure cargadetalle(xfecpro:String; xorde:String);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcuerecapo: Tfcuerecapo;


implementation

uses APODM, APO321, APO322, APO323, APO324, APO521;

{$R *.dfm}

procedure Tfcuerecapo.FormActivate(Sender: TObject);
begin
  gridcabecera('1');
  gridnoregistrados;
  pccuerecapo.TabIndex := 0;
  pnlapenom.Visible := False;
  rgord.Visible := False;
  TabSheet2.Caption := 'Detalle del día '+dm1.cdsCuentas.FieldByName('FECPRO').AsString;
  TabSheet3.Caption := 'Pagos no registrados del día '+dm1.cdsCuentas.FieldByName('FECPRO').AsString;
end;

procedure Tfcuerecapo.btncerrarClick(Sender: TObject);
begin
 fcuerecapo.Close;
end;

procedure Tfcuerecapo.btndesrecClick(Sender: TObject);
begin
  Try
    Fdescuerec := TFdescuerec.Create(Self);
    Fdescuerec.showmodal;
  Finally
    Fdescuerec.free;
  End;
  xSql := ' SELECT SUBSTR(FECPRO,7,2)||''/''||SUBSTR(FECPRO,5,2)||''/''||SUBSTR(FECPRO,1,4) FECPRO,'
  +' NUMCUE, CANTOT, DECODE(CODMON, ''0'', ''MN'', ''ME'') CODMON,  MONTOT, CODSUC, UPPER(CIERRE) CIERRE, FECPRO ORDENA'
  +' FROM APO_CUE_REC_BAN_CRE_CAB ORDER BY ORDENA DESC';
  DM1.cdsCuentas.Close;
  DM1.cdsCuentas.DataRequest(xSql);
  DM1.cdsCuentas.Open;
  dbgcabcuerecapobancre.Refresh;
end;

procedure Tfcuerecapo.pccuerecapoChange(Sender: TObject);
var xfecpro :String;
begin
  xfecpro := Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString,7,4)+Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString,4,2)+Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString,1,2);
  If pccuerecapo.TabIndex  = 0 Then
  Begin
    pnlapenom.Visible := False;
    rgord.Visible := False;
  End;
  // Detalle de Pagos
  If pccuerecapo.TabIndex  = 1 Then
  begin
    pnlapenom.Visible := True;
    rgord.Visible := True;
    cargadetalle(xfecpro, '3');
    edtBuscarDet.SetFocus;
  End;
  //Pagos no registrados
  If pccuerecapo.TabIndex  = 2 Then
  begin
    pnlapenom.Visible := True;
    rgord.Visible := False;
    gridnoregistrados;
  End;

end;

Procedure Tfcuerecapo.btnvalpagClick(Sender: TObject);
Var xfecpro, xSql:String;
Begin
  xfecpro := Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString,7,4)+Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString,4,2)+Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString,1,2);
  validapagoaporte;
  MessageDlg('La validación ha concluido', mtInformation, [mbOk], 0);
  cargadetalle(xfecpro, '1');
  gridcabecera('1');
  gridnoregistrados;
end;

procedure Tfcuerecapo.dbgcabcuerecapobancreCellChanged(Sender: TObject);
begin
  TabSheet2.Caption := 'Detalle del día '+dm1.cdsCuentas.FieldByName('FECPRO').AsString;
  TabSheet3.Caption := 'Pagos no registrados del día '+dm1.cdsCuentas.FieldByName('FECPRO').AsString;
end;

procedure Tfcuerecapo.btndesarcrecClick(Sender: TObject);
Var xAnoMesIni, xAnoMesFin, xAnoMesFinPos, xSql:String;
  xmontorestante, xMonto, xmontodescargado, xdeuapo:Double;
  xCiudId, xUseabr, xUpagoabr, xUproabr, xDptoid, xDptoabr, xfecpro :String;
  xNumOpe, xFecOpe, xWhere, xTransAamm, xTransTrim, xTransAaTri, xTransSem, xTransAaSem,xOrden : String;
begin
  xfecpro := Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString,7,4)+Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString,4,2)+Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString,1,2);
  xAnoMesIni    := '200701';
  // Inicio: DPP_201202_APO
    Xsql := 'SELECT CASE WHEN ASOFRESNOM IS NULL THEN NULL ELSE TO_CHAR(ASOFRESNOM,''YYYYMM'') END vfecResnom FROM APO201 '+
            'WHERE ASOID = '+QuotedStr(DM1.cdsDetReclamo.FieldByName('ASOID').AsString);
    DM1.cdsAso.Close;
    DM1.cdsAso.DataRequest(xSql);
    DM1.cdsAso.Open;
    If Length(Trim(Dm1.cdsAso.FieldByName('vfecResnom').AsString))=6 Then
    Begin
      If StrToInt(Dm1.cdsAso.FieldByName('vfecResnom').AsString)> StrToInt(xAnoMesIni) Then
      Begin
         xAnoMesIni:= Dm1.cdsAso.FieldByName('vfecResnom').AsString;
      End;
    End;
  // Fin: DPP_201202_APO

  If ChKDESCENDENTE.Checked Then
  Begin
     xSql   := 'SELECT TO_CHAR( ADD_MONTHS(SYSDATE,-1),''YYYYMM'')  ANOMES FROM DUAL ';
     xOrden := ' ORDER BY TRANSANO desc, TRANSMES desc ';
  End
  Else
  Begin
     xSql    := 'SELECT TO_CHAR(SYSDATE, ''YYYYMM'') ANOMES FROM DUAL';
     xOrden  := ' ORDER BY TRANSANO,TRANSMES ';
  End;
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  xAnoMesFin    := DM1.cdsQry.FieldByName('ANOMES').AsString;
  xAnoMesFinPos := buscaunmesdespues(DM1.cdsQry.FieldByName('ANOMES').AsString);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  DM1.cdsDetReclamo.First;
  While Not DM1.cdsDetReclamo.Eof Do
  Begin
    // verificando el saldo de la deuda
    If DM1.cdsDetReclamo.FieldByName('MONTOT').AsFloat <= 51.75 Then
    Begin
      xSql := 'SELECT TRANSANO, TRANSMES, NVL(APOVALOR,0)-NVL(TRANSMTO,0) TRANSMTO FROM'
      +' (SELECT TRANSANO, TRANSMES, SUM(NVL(APOVALOR,0)) APOVALOR, SUM(NVL(TRANSMTO,0)) TRANSMTO'
      +' FROM (SELECT APOANO TRANSANO, APOMES TRANSMES, APOVALOR APOVALOR, 0 TRANSMTO FROM APO117'
      +' WHERE APOANO||APOMES >= '+QuotedStr(xAnoMesIni)+' AND APOANO||APOMES <= '+QuotedStr(xAnoMesFin)
      +' UNION SELECT A.APOANO TRANSANO, A.APOMES TRANSMES, 0 APOVALOR, NVL(B.TRANSMTO,0) TRANSMTO'
      +' FROM (SELECT A.APOANO, A.APOMES, A.APOVALOR FROM APO117 A WHERE A.APOANO||A.APOMES >= '+QuotedStr(xAnoMesIni)
      +' AND A.APOANO||A.APOMES <= '+QuotedStr(xAnoMesFin)+') A, APO301 B WHERE B.ASOID = '+QuotedStr(DM1.cdsDetReclamo.FieldByName('ASOID').AsString)
  //  +' AND A.APOANO = B.TRANSANO(+) AND A.APOMES = B.TRANSMES(+) AND NVL(A.APOVALOR,0)-NVL(B.TRANSMTO,0) > 0)'
      +' AND A.APOANO = B.TRANSANO(+) AND A.APOMES = B.TRANSMES(+))'
      +' GROUP BY TRANSANO, TRANSMES) WHERE NVL(APOVALOR,0)-NVL(TRANSMTO,0) > 0 '+ xOrden;
      DM1.cdsQry4.Close;
      DM1.cdsQry4.DataRequest(xSql);
      DM1.cdsQry4.Open;
      xSql := 'SELECT * FROM APO201 WHERE ASOID = '+QuotedStr(DM1.cdsDetReclamo.FieldByName('ASOID').AsString);
      DM1.cdsAso.Close;
      DM1.cdsAso.DataRequest(xSql);
      DM1.cdsAso.Open;
      xmontorestante := DM1.cdsDetReclamo.FieldByName('MONTOT').AsFloat;
      xNumOpe        := DM1.cdsDetReclamo.FieldByName('NUMOPE').AsString;
      xFecOpe        := DM1.cdsDetReclamo.FieldByName('FECPAG').AsString;
      DM1.cdsQry4.First;
      While Not DM1.cdsQry4.Eof Do
      Begin
        If xmontorestante > 0 Then
        Begin
          xmontodescargado := 0;
          If xmontorestante >= DM1.cdsQry4.FieldByName('TRANSMTO').AsFloat Then
          Begin
            xmontodescargado := DM1.cdsQry4.FieldByName('TRANSMTO').AsFloat;
            xmontorestante   := xmontorestante - xmontodescargado;
          End
          Else
          Begin
            xmontodescargado := xmontorestante;
            xmontorestante := 0;
          End;
          xWhere    := 'UPROID = '+QuotedStr(DM1.cdsAso.FieldByName('UPROID').AsString)+' AND UPAGOID = '+QuotedStr(DM1.cdsAso.FieldByName('UPAGOID').AsString)+' AND USEID = '+QuotedStr(DM1.cdsAso.FieldByName('USEID').AsString);
          xUseAbr   := DM1.DisplayDescrip('PRV', 'APO101', 'USEABRE', xWhere, 'USEABRE');
          xDptoid   := DM1.DisplayDescrip('PRV', 'APO101', 'DPTOID', xWhere, 'DPTOID');
          xWhere    := 'DPTOID = '+QuotedStr(xDptoid);
          xDptoAbr  := DM1.DisplayDescrip('PRV', 'APO158', 'DPTOABR', xWhere, 'DPTOABR');
          xCiudId   := Copy(DM1.cdsAso.FieldByName('CIUDID').AsString,1,4);
          xWhere    := 'UPROID = '+QuotedStr(DM1.cdsAso.FieldByName('UPROID').AsString)+' AND UPAGOID = '+QuotedStr(DM1.cdsAso.FieldByName('UPAGOID').AsString);
          xUpagoAbr := DM1.DisplayDescrip('PRV', 'APO103', 'UPAGOABR', xWhere, 'UPAGOABR');
          xWhere    := 'UPROID = '+QuotedStr(DM1.cdsAso.FieldByName('UPROID').AsString);
          xUproAbr  := DM1.DisplayDescrip('PRV', 'APO102', 'UPROABR', xWhere, 'UPROABR');
          xWhere    := 'DPTOID = '+QuotedStr(Copy(DM1.cdsAso.FieldByname('ZIPID').AsString,1,2));
          xSql := 'SELECT TO_CHAR(SYSDATE, ''YYYYMM'') TRANSAAMM, TO_CHAR(SYSDATE, ''YYYYQ'') TRANSAATRI, TO_CHAR(SYSDATE, ''Q'') TRANSTRIM,'
          +' DECODE(TO_CHAR(SYSDATE,''Q''),''1'',''1'',''2'',''1'',''3'',''2'',''4'',''2'') TRANSSEM,'
          +' TO_CHAR(SYSDATE, ''YYYY'')||DECODE(TO_CHAR(SYSDATE,''Q''),''1'',''1'',''2'',''1'',''3'',''2'',''4'',''2'') TRANSAASEM FROM DUAL';
          DM1.cdsQry.Close;
          DM1.cdsQry.DataRequest(xSql);
          DM1.cdsQry.Open;
          xTransAamm  := DM1.cdsQry.FieldByName('TRANSAAMM').AsString;
          xTransTrim  := DM1.cdsQry.FieldByName('TRANSTRIM').AsString;
          xTransAaTri := DM1.cdsQry.FieldByName('TRANSAATRI').AsString;
          xTransSem   := DM1.cdsQry.FieldByName('TRANSSEM').AsString;
          xTransAaSem := DM1.cdsQry.FieldByName('TRANSAASEM').AsString;
          xSql := 'INSERT INTO APO301 (ASOID, TRANSID, USEID, USEABR, UPAGOID, UPAGOABR, UPROID,'
          +' UPROABR, TRANSNOPE, TRANSFOPE, TRANSANO, TRANSMES, TRANSMTO, TRANSINTID, USUARIO,'
          +' ASOCODMOD, ASOCODAUX, FORPAGOID, ASOAPENOM, FORPAGOABR, DPTOID, DPTOABR, CIUDID,'
          +' FREG, HREG, APOSEC, CIAID, CNTANOMM, TRANSAAMM, TRANSAATRI, TRANSTRIM, TRANSSEM,'
          +' TRANSAASEM, TMONID, BANCOID, CCBCOID) VALUES ('
          +QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)
          +', '+QuotedStr('APORTE')
          +', '+QuotedStr(DM1.cdsAso.FieldByname('USEID').AsString)
          +', '+QuotedStr(xUseAbr)
          +', '+QuotedStr(DM1.cdsAso.FieldByName('UPAGOID').AsString)
          +', '+QuotedStr(xUpagoAbr)
          +', '+QuotedStr(DM1.cdsAso.FieldByName('UPROID').AsString)
          +', '+QuotedStr(xUproAbr)
          +', '+QuotedStr(xNumOpe)
          +', '+QuotedStr(xFecOpe)
          +', '+QuotedStr(DM1.cdsQry4.FieldByName('TRANSANO').AsString)
          +', '+QuotedStr(DM1.cdsQry4.FieldByName('TRANSMES').AsString)
          +', '+FloatToStr(xmontodescargado)
          +', ''APO'''
          +', '+QuotedStr(DM1.wUsuario)
          +', '+QuotedStr(DM1.cdsAso.FieldByname('ASOCODMOD').AsString)
          +', '+QuotedStr(DM1.cdsAso.FieldByname('ASOCODAUX').AsString)
          +', ''03'''
          +', '+QuotedStr(DM1.cdsAso.FieldByname('ASOAPENOMDNI').AsString)
          +', ''BAN'''
          +', '+QuotedStr(xDptoid)
          +', '+QuotedStr(xDptoAbr)
          +', '+QuotedStr(xCiudId)
          +', TO_DATE(SYSDATE)'
          +', SYSDATE'
          +', TO_CHAR(SYSDATE, ''YYYYMM'')'
          +', ''02'''
          +', TO_CHAR(SYSDATE, ''YYYYMM'')'
          +', '+QuotedStr(xTransAamm)
          +', '+QuotedStr(xTransAaTri)
          +', '+QuotedStr(xTransTrim)
          +', '+QuotedStr(xTransSem)
          +', '+QuotedStr(xTransAaSem)
          +', ''N'''
          +', ''03'''
          +', ''193-1590074-0-52'''
          +')';
          DM1.DCOM1.AppServer.EjecutaSQL(xSql);
          //Actualiza APO301ID
          xSql := 'BEGIN SP_ACT_APO301ID ('+QuotedStr(DM1.cdsDetReclamo.FieldByName('ASOID').AsString)+'); END;';
          DM1.DCOM1.AppServer.EjecutaSQL(XSQL);
        End
        Else Break;
        DM1.cdsQry4.Next;
      End;
    End;
    DM1.cdsDetReclamo.Next;
  End;
  cargadetalle(xfecpro,'1' );
  validapagoaporte;
  gridcabecera('1');
  //griddetalle;
  gridnoregistrados;
  MessageDlg('El descargo ha concluido...', mtInformation, [mbOk], 0);
End;

procedure Tfcuerecapo.gridnoregistrados;
Var xSql, xfecpro :String;
begin
  xfecpro := Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString,7,4)+Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString,4,2)+Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString,1,2);
  xSql := 'SELECT FILA, ROWNUM NUMERO, ASOCODMOD, ASOAPENOMDNI, MONTOT, ''OP-0''||NUMOPE NUMOPE, AGENBCODES, CIERRE, DESTIP, ASOID, TO_DATE(FECPAG,''YYYYMMDD'') FECPAG'
  +' FROM (SELECT A.ROWID FILA, B.ASOCODMOD, B.ASOAPENOMDNI, A.MONTOT, A.NUMOPE, A.REFERENCIA, C.AGENBCODES, A.CIERRE, D.DESTIP,'
  +' B.ASOID, A.FECPAG FROM APO_CUE_REC_BAN_CRE_DET A, APO201 B, COB102 C, COB_TIP_DES_CUE_REC D'
  +' WHERE FECPRO = '+QuotedStr(xfecpro)+' AND CIERRE = ''R'' AND SUBSTR(CAMRET,21,10) = B.ASOID AND C.BANCOID(+) = ''03'' AND A.CODOFI = C.AGENBCOID(+)'
  +' AND A.CIERRE = D.CODTIP(+) ORDER BY B.ASOAPENOMDNI)';
  DM1.cdsDetReclamo.Close;
  DM1.cdsDetReclamo.DataRequest(xSql);
  DM1.cdsDetReclamo.Open;
  dbgnoreg.Selected.Clear;
  dbgnoreg.Selected.Add('ASOCODMOD'#9'10'#9'Código~Modular'#9#9);
  dbgnoreg.Selected.Add('ASOAPENOMDNI'#9'39'#9'Apellidos y~Nombre(s)'#9#9);
  dbgnoreg.Selected.Add('MONTOT'#9'9'#9'Monto~depositado'#9#9);
  dbgnoreg.Selected.Add('AGENBCODES'#9'18'#9'Oficina de~deposito'#9#9);
  dbgnoreg.Selected.Add('NUMOPE'#9'12'#9'Número de~operación'#9#9);
  dbgnoreg.Selected.Add('DESTIP'#9'19'#9'Estado del~pago'#9#9);
  dbgnoreg.ApplySelected;
  TNumericField(DM1.cdsDetReclamo.FieldByName('MONTOT')).DisplayFormat := '###,###,##0.00';
  dbgnoreg.Refresh;
end;

procedure Tfcuerecapo.validapagoaporte;
Var xSql, xflg, xfecpro:String;
begin
  xfecpro := Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString, 7,4)+Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString, 4,2)+Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString, 1,2);
  // Validando pago de aportes
  // Verificando descargo Ok
  // Validar pagos descargados
  DM1.cdsDFam.First;
  While Not DM1.cdsDFam.Eof Do
  Begin
    If (DM1.cdsDFam.FieldByName('CIERRE').AsString <> 'T') And (DM1.cdsDFam.FieldByName('CIERRE').AsString <> 'O') And (DM1.cdsDFam.FieldByName('CIERRE').AsString <> 'C') Then
    Begin
      xflg := 'N';
      xSql := 'SELECT SUM(NVL(TRANSMTO,0)) TRANSMTO FROM APO301 WHERE ASOID = '+QuotedStr(DM1.cdsDFam.FieldByName('ASOID').AsString)
      +' AND TRANSNOPE = '+QuotedStr(DM1.cdsDFam.FieldByName('NUMOPE').AsString)+' AND TO_CHAR(TRANSFOPE, ''DD/MM/YYYY'') = '+QuotedStr(DM1.cdsDFam.FieldByName('FECPAG').AsString)
      +' AND BANCOID = ''03'' AND CCBCOID = ''193-1590074-0-52'' AND FORPAGOID = ''03''';
      DM1.cdsQry4.Close;
      DM1.cdsQry4.DataRequest(xSql);
      DM1.cdsQry4.Open;
      If DM1.cdsDFam.FieldByName('MONTOT').AsFloat = DM1.cdsQry4.FieldByName('TRANSMTO').AsFloat Then
      Begin
        xSql := 'UPDATE APO_CUE_REC_BAN_CRE_DET SET CIERRE = ''K'' WHERE ROWID = '+QuotedStr(DM1.cdsDFam.FieldByName('FILA').AsString);
        DM1.DCOM1.AppServer.EjecutaSQL(xSql);
        xflg := 'S';
      End;
      //Verificando descargo inconsistente por numero de documento
      If xflg = 'N' Then
      Begin
        xSql := 'SELECT SUM(NVL(TRANSMTO,0)) TRANSMTO FROM APO301 WHERE ASOID = '+QuotedStr(DM1.cdsDFam.FieldByName('ASOID').AsString)
        +' AND TO_CHAR(TRANSFOPE, ''DD/MM/YYYY'') = '+QuotedStr(DM1.cdsDFam.FieldByName('FECPAG').AsString)
        +' AND BANCOID = ''03'' AND CCBCOID = ''193-1590074-0-52'' AND FORPAGOID = ''03''';
        DM1.cdsQry4.Close;
        DM1.cdsQry4.DataRequest(xSql);
        DM1.cdsQry4.Open;
        If DM1.cdsDFam.FieldByName('MONTOT').AsFloat = DM1.cdsQry4.FieldByName('TRANSMTO').AsFloat Then
        Begin
          xSql := 'UPDATE APO_CUE_REC_BAN_CRE_DET SET CIERRE = ''N'' WHERE ROWID = '+QuotedStr(DM1.cdsDFam.FieldByName('FILA').AsString);
          DM1.DCOM1.AppServer.EjecutaSQL(xSql);
          xflg := 'S';
        End;
      End;
      //Verificando descargo inconsistente por fecha de documento
      If xflg = 'N' Then
      Begin
        xSql := 'SELECT SUM(NVL(TRANSMTO,0)) TRANSMTO FROM APO301 WHERE ASOID = '+QuotedStr(DM1.cdsDFam.FieldByName('ASOID').AsString)
        +' AND TRANSNOPE = '+QuotedStr(DM1.cdsDFam.FieldByName('NUMOPE').AsString)
        +' AND BANCOID = ''03'' AND CCBCOID = ''193-1590074-0-52'' AND FORPAGOID = ''03''';
        DM1.cdsQry4.Close;
        DM1.cdsQry4.DataRequest(xSql);
        DM1.cdsQry4.Open;
        If DM1.cdsDFam.FieldByName('MONTOT').AsFloat = DM1.cdsQry4.FieldByName('TRANSMTO').AsFloat Then
        Begin
          xSql := 'UPDATE APO_CUE_REC_BAN_CRE_DET SET CIERRE = ''N'' WHERE ROWID = '+QuotedStr(DM1.cdsDFam.FieldByName('FILA').AsString);
          DM1.DCOM1.AppServer.EjecutaSQL(xSql);
          xflg := 'S';
        End;
      End;
      //Verificando descargo inconsistente por cuenta errada
      If xflg = 'N' Then
      Begin
        xSql := 'SELECT SUM(NVL(TRANSMTO,0)) TRANSMTO FROM APO301 WHERE ASOID = '+QuotedStr(DM1.cdsDFam.FieldByName('ASOID').AsString)
        +' AND TRANSNOPE = '+QuotedStr(DM1.cdsDFam.FieldByName('NUMOPE').AsString)+' AND TO_CHAR(TRANSFOPE, ''DD/MM/YYYY'') = '+QuotedStr(DM1.cdsDFam.FieldByName('FECPAG').AsString);
        DM1.cdsQry4.Close;
        DM1.cdsQry4.DataRequest(xSql);
        DM1.cdsQry4.Open;
        If DM1.cdsDFam.FieldByName('MONTOT').AsFloat = DM1.cdsQry4.FieldByName('TRANSMTO').AsFloat Then
        Begin
          xSql := 'UPDATE APO_CUE_REC_BAN_CRE_DET SET CIERRE = ''E'' WHERE ROWID = '+QuotedStr(DM1.cdsDFam.FieldByName('FILA').AsString);
          DM1.DCOM1.AppServer.EjecutaSQL(xSql);
          xflg := 'S';
        End;
      End;
      //No registrados
      If xflg = 'N' Then
      Begin
        xSql := 'UPDATE APO_CUE_REC_BAN_CRE_DET SET CIERRE = ''R'' WHERE ROWID = '+QuotedStr(DM1.cdsDFam.FieldByName('FILA').AsString);
        DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      End;
    End;
    DM1.cdsDFam.Next;
  End;
  xSql := 'SELECT COUNT(*) CUENTA FROM APO_CUE_REC_BAN_CRE_DET WHERE FECPRO = '+QuotedStr(xfecpro)+' AND NVL(CIERRE, ''X'')  NOT IN (''K'',''T'',''O'',''C'')';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  If DM1.cdsQry.FieldByName('CUENTA').AsInteger = 0 Then
  Begin
    xSql := 'UPDATE APO_CUE_REC_BAN_CRE_CAB SET CIERRE = ''OK'' WHERE FECPRO = '+QuotedStr(xfecpro);
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);
  End
  Else
  Begin
    xSql := 'UPDATE APO_CUE_REC_BAN_CRE_CAB SET CIERRE = NULL WHERE FECPRO = '+QuotedStr(xfecpro);
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);
  End;

end;

procedure Tfcuerecapo.gridcabecera(flg:String);
Var xRegistro: TBookmark;
    xtmp :String;
begin
  // Grid de cabeceras
  xtmp := 'N';
  Begin
    If DM1.cdsCuentas.Active = True Then
    Begin
      xRegistro:=DM1.cdsCuentas.GetBookmark;
      xtmp := 'S';
    End;
    If flg = '2' Then   xtmp := 'N';
    xSql := 'SELECT TO_DATE(FECPRO, ''YYYYMMDD'') FECPRO, NUMCUE, CANTOT, DECODE(CODMON, ''0'', ''MN'', ''ME'') CODMON,  MONTOT, CODSUC, UPPER(CIERRE) CIERRE, FECPRO ORDENA'
    +' FROM APO_CUE_REC_BAN_CRE_CAB ORDER BY ORDENA DESC';
    DM1.cdsCuentas.Close;
    DM1.cdsCuentas.DataRequest(xSql);
    DM1.cdsCuentas.Open;
    If xtmp = 'S' Then DM1.cdsCuentas.GotoBookmark(xRegistro);
    dbgcabcuerecapobancre.Selected.Clear;
    dbgcabcuerecapobancre.Selected.Add('FECPRO'#9'12'#9'Fecha de~Proceso'#9#9);
    dbgcabcuerecapobancre.Selected.Add('NUMCUE'#9'10'#9'Número de~Cuenta'#9#9);
    dbgcabcuerecapobancre.Selected.Add('CANTOT'#9'10'#9'Cantidad de Pagos~Realizados'#9#9);
    dbgcabcuerecapobancre.Selected.Add('CODMON'#9'12'#9'Tipo de~Moneda'#9#9);
    dbgcabcuerecapobancre.Selected.Add('MONTOT'#9'15'#9'Monto Total~Pagado'#9#9);
    dbgcabcuerecapobancre.Selected.Add('CODSUC'#9'12'#9'Código de~sucursal'#9#9);
    dbgcabcuerecapobancre.Selected.Add('CIERRE'#9'12'#9'Estado del~descargo'#9#9);
    dbgcabcuerecapobancre.ApplySelected;
    TNumericField(DM1.cdsCuentas.FieldByName('MONTOT')).DisplayFormat := '###,###,##0.00';
    TNumericField(DM1.cdsCuentas.FieldByName('CANTOT')).DisplayFormat := '###,###,##0';
    dbgcabcuerecapobancre.Refresh;
  End;
end;

procedure Tfcuerecapo.btnmarpagClick(Sender: TObject);
Var xfecpro:String;
begin
  xfecpro := Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString,7,4)+Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString,4,2)+Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString,1,2);
  // Marcar pago
  Try
    Fpagosobservados := TFpagosobservados.Create(Self);
    Fpagosobservados.showmodal;
  Finally
    Fpagosobservados.free;
  End;
  cargadetalle(xfecpro, '1');
end;

procedure Tfcuerecapo.btndetdeldiaClick(Sender: TObject);
Var xWhere:String;
begin
  ppltitulo.Caption := 'PAGOS REGISTRADOS EN CUENTA RECAUDADORA DE APORTES DIA : '+DM1.cdsCuentas.FieldByName('FECPRO').AsString;
  xWhere := 'USERID = '+ QuotedStr(DM1.wUsuario) ;
  pplimpresopor.Caption := 'IMPRESO POR : '+ UpperCase(DM1.DisplayDescrip('prvTGE', 'USERTABLE', 'USERNOM', xWhere , 'USERNOM'));
  pprdetdeldia.Print;
  pprdetdeldia.Stop;
end;

procedure Tfcuerecapo.btnestregClick(Sender: TObject);
Var xSql, xWhere, xfecpro:String;
begin
  xfecpro := Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString,7,4)+Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString,4,2)+Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString,1,2);
  // Estado de los registros.
  xSql := 'SELECT D.ASOID, A.NUMOPE, A.MONTOT, D.ASOCODMOD, D.ASOAPENOMDNI, B.TRANSANO, B.TRANSMES, B.TRANSMTO, C.DESTIP'
  +' FROM APO_CUE_REC_BAN_CRE_DET A, APO301 B, COB_TIP_DES_CUE_REC C, APO201 D WHERE A.FECPRO = '+QuotedStr(xfecpro)
  +' AND SUBSTR(A.CAMRET,21,10) = B.ASOID(+) AND SUBSTR(A.CAMRET,21,10) = D.ASOID(+) AND TO_DATE(A.FECPAG, ''YYYYMMDD'') = B.TRANSFOPE(+) AND ''OP-0''||A.NUMOPE = B.TRANSNOPE(+)'
  +' AND A.CIERRE = C.CODTIP ORDER BY D.ASOID, A.NUMOPE, B.TRANSANO, B.TRANSMES';
  DM1.cdsReporte.Close;
  DM1.cdsReporte.DataRequest(xSql);
  DM1.cdsReporte.Open;
  ppltitulodetdes.Caption := 'DESCARGO CUENTA RECAUDADORA DE APORTES DIA : '+DM1.cdsCuentas.FieldByName('FECPRO').AsString;
  xWhere := 'USERID = '+ QuotedStr(DM1.wUsuario) ;
  pplimpresopor02.Caption := 'IMPRESO POR : '+ UpperCase(DM1.DisplayDescrip('prvTGE', 'USERTABLE', 'USERNOM', xWhere , 'USERNOM'));
  pplmontot.Caption := FloatToStrF(DM1.cdsCuentas.FieldByName('MONTOT').AsFloat,ffNumber,10,2);
  pprpestreg.Print;
  pprpestreg.Stop;
end;

procedure Tfcuerecapo.btneliminaClick(Sender: TObject);
Var xSql,xfecpro:String;
begin
  xfecpro := Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString,7,4)+Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString,4,2)+Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString,1,2);
  // eliminar descargo
  If MessageDlg('se eliminara los registros descargado del banco.  Seguro?',
  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
    xSql := 'DELETE APO_CUE_REC_BAN_CRE_CAB WHERE FECPRO = '+QuotedStr(xfecpro);
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);
    xSql := 'DELETE APO_CUE_REC_BAN_CRE_DET WHERE FECPRO = '+QuotedStr(xfecpro);
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);
    gridcabecera('2');
    MessageDlg('El registro de descargo ya fue eliminado', mtInformation, [mbOk], 0);
  End;
end;

procedure Tfcuerecapo.btnimpestdesClick(Sender: TObject);
begin
  Try
    Festdes := TFestdes.Create(Self);
    Festdes.showmodal;
  Finally
    Festdes.free;
  End;
end;

procedure Tfcuerecapo.btnenvbanClick(Sender: TObject);
begin
  Try
    Fenvinfbcocreapo := TFenvinfbcocreapo.Create(Self);
    Fenvinfbcocreapo.showmodal;
  Finally
    Fenvinfbcocreapo.free;
  End;
end;

procedure Tfcuerecapo.edtBuscarDetChange(Sender: TObject);
begin
  If pccuerecapo.TabIndex = 1 Then
  Begin
    If Length(Trim(edtBuscarDet.Text))>0 Then
      DM1.cdsDFam.Locate('ASOAPENOMDNI', VarArrayOf([TRIM(edtBuscarDet.Text)]), [loPartialKey]);
  End;
  If pccuerecapo.TabIndex = 2 Then
  Begin
    If Length(Trim(edtBuscarDet.Text))>0 Then
      DM1.cdsDetReclamo.Locate('ASOAPENOMDNI', VarArrayOf([TRIM(edtBuscarDet.Text)]), [loPartialKey]);
  End;
end;

procedure Tfcuerecapo.edtBuscarDetKeyPress(Sender: TObject; var Key: Char);
begin
 If Key=#13 Then
  Begin
    If Length(Trim(edtBuscarDet.Text))>0 Then
    Begin
      edtBuscarDet.Text := '';
      dbgdetcuerecapobancre.SetFocus;
    End
    Else
    Begin
      MessageDlg('Debe Digitar El Nombre Del Asociado, Para Iniciar La Busqueda', mtError,[mbOk], 0 );
      edtBuscarDet.SetFocus;
    End;
  End;
end;

function Tfcuerecapo.buscaunmesdespues(xanomes: String): String;
Var xano, xmes:Double;
begin
  xano := StrToFloat(copy(xanomes,1,4));
  xmes := StrToFloat(Copy(xanomes,5,2));
  If xmes = 12 Then
  Begin
    xmes := 1;
    xano := xano + 1;
  End
  Else
  Begin
    xmes := xmes + 1;
  End;
  Result := DM1.StrZero(FloatToStr(xano),4)+DM1.StrZero(FloatToStr(xmes),2);
end;

function Tfcuerecapo.buscamesinicial(xanomes: String): String;
Var xAno, xMes :Double;
begin
  xano := StrToFloat(copy(xanomes,1,4));
  xmes := StrToFloat(Copy(xanomes,5,2));
  If (xMes-3) <= 0 Then
  Begin
    xMes := 12 + (xMes-3);
    xAno := xAno - 1;
  End
  Else
  Begin
    xMes := xMes - 3;
  End;
  Result := DM1.StrZero(FloatToStr(xano),4)+DM1.StrZero(FloatToStr(xmes),2);
end;

procedure Tfcuerecapo.btnvalautClick(Sender: TObject);
Var xfecpro, xSql :String;
begin
  xfecpro := Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString,7,4)+Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString,4,2)+Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString,1,2);
  xSql := 'SELECT B.ASOID, B.ASOAPENOMDNI, A.CAMRET CAMRETBCO, A.CODIDE CODIDEBCO, A.NUMOPE, ''                              '' DES'
  +' FROM APO_CUE_REC_BAN_CRE_DET A, APO201 B WHERE A.FECPRO = '+QuotedStr(xfecpro)
  +' AND SUBSTR(A.CAMRET,21,10) = B.ASOID(+) AND B.ASOID IS NULL';
  DM1.cdsQry4.Close;
  DM1.cdsQry4.DataRequest(xSql);
  DM1.cdsQry4.Open;
  If DM1.cdsQry4.RecordCount > 0 Then
  Begin
    Try
      FIncdescuerec := TFIncdescuerec.create(Self);
      FIncdescuerec.ShowModal;
    Finally
      FIncdescuerec.Free;
    end;
  End
  Else
    MessageDlg(' ! No se encontro registros errados ! ', mtInformation,[mbOk],0);
end;


procedure Tfcuerecapo.rgordClick(Sender: TObject);
Var xfecpro:String;
begin
  xfecpro := Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString, 7,4)+Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString, 4,2)+Copy(DM1.cdsCuentas.FieldByName('FECPRO').AsString, 1,2);
  If rgord.ItemIndex = 0 Then cargadetalle(xfecpro, '1');
  If rgord.ItemIndex = 1 Then cargadetalle(xfecpro, '2');
  If rgord.ItemIndex = 2 Then cargadetalle(xfecpro, '3');
end;

procedure Tfcuerecapo.cargadetalle(xfecpro, xorde: String);
Var xSql, xsqlorden:String;
begin
  If xorde = '1' Then xsqlorden := ' ORDER BY MONTOT)';
  If xorde = '2' Then xsqlorden := ' ORDER BY CIERRE)';
  If xorde = '3' Then xsqlorden := ' ORDER BY ASOAPENOMDNI)';
  xSql := 'SELECT FILA, ROWNUM NUMERO, FLAMAR, ASOCODMOD, ASOAPENOMDNI, MONTOT, ''OP-0''||NUMOPE NUMOPE, AGENBCODES, CIERRE, DESTIP, ASOID, TO_DATE(FECPAG, ''YYYYMMDD'') FECPAG'
  +' FROM (SELECT A.ROWID FILA, B.ASOCODMOD, B.ASOAPENOMDNI, A.MONTOT, A.NUMOPE, A.REFERENCIA, C.AGENBCODES, A.CIERRE, D.DESTIP,'
  +' B.ASOID, A.FECPAG, A.FLAMAR FROM APO_CUE_REC_BAN_CRE_DET A, APO201 B, COB102 C, COB_TIP_DES_CUE_REC D'
  +' WHERE FECPRO = '+QuotedStr(xfecpro)+' AND SUBSTR(CAMRET,21,10) = B.ASOID AND C.BANCOID(+) = ''03'' AND A.CODOFI = C.AGENBCOID(+)'
  +' AND A.CIERRE = D.CODTIP(+)';
  xSql := xSql + xsqlorden;

  DM1.cdsDFam.Close;
  DM1.cdsDFam.DataRequest(xSql);
  DM1.cdsDFam.Open;
  dbgdetcuerecapobancre.Selected.Clear;
  dbgdetcuerecapobancre.SetControlType('FLAMAR',fctCheckBox, 'S;N');
  dbgdetcuerecapobancre.Selected.Add('FLAMAR'#9'7'#9'Marcar'#9#9);  
  dbgdetcuerecapobancre.Selected.Add('ASOCODMOD'#9'10'#9'Código~Modular'#9#9);
  dbgdetcuerecapobancre.Selected.Add('ASOAPENOMDNI'#9'39'#9'Apellidos y~Nombre(s)'#9#9);
  dbgdetcuerecapobancre.Selected.Add('MONTOT'#9'9'#9'Monto~depositado'#9#9);
  dbgdetcuerecapobancre.Selected.Add('AGENBCODES'#9'18'#9'Oficina de~deposito'#9#9);
  dbgdetcuerecapobancre.Selected.Add('NUMOPE'#9'12'#9'Número de~operación'#9#9);
  dbgdetcuerecapobancre.Selected.Add('DESTIP'#9'19'#9'Estado del~pago'#9#9);
  dbgdetcuerecapobancre.ApplySelected;
  TNumericField(DM1.cdsDFam.FieldByName('MONTOT')).DisplayFormat := '###,###,##0.00';
  dbgdetcuerecapobancre.Refresh;
end;

procedure Tfcuerecapo.dbgdetcuerecapobancreDblClick(Sender: TObject);
begin
  If DM1.cdsDFam.FieldByName('CIERRE').AsString <> 'R' Then
  Begin
    MessageDlg('No puede marcar un registro si no se encuentra como no registrado', mtInformation,[mbOk],0);
    Exit;
  End;
  DM1.cdsDFam.Edit;
  If DM1.cdsDFam.FieldByName('FLAMAR').AsString = 'S' Then
    DM1.cdsDFam.FieldByName('FLAMAR').AsString := 'N'
  Else
    DM1.cdsDFam.FieldByName('FLAMAR').AsString := 'S';
  DM1.cdsDFam.Post;
end;

end.
