unit APO710;

// Inicio Uso Estándares: 01/08/2011
// Unidad               : APO710
// Formulario           : FToolCtaInd
// Fecha de Creación    : 15/12/2003
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Panel de Cuenta Individual
// Actualizaciones      :
// HPC_201501_APO       : 06/01/2015 - Cambio de DCOM a Socket

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcButton, fcImgBtn, fcShapeBtn, StdCtrls, Mask, wwdbedit, wwdblook,
  Wwdbdlg, ExtCtrls, DB,mant, ppCtrls, ppBands, ppVar, ppPrnabl, ppClass,
  ppCache, ppComm, ppRelatv, ppProd, ppReport, ppDB, ppDBPipe, ppModule,
  daDatMod, ppEndUsr, ppDBBDE, ppViewr, Buttons, MsgDlgs, ppStrtch,
  ppTypes, ppSubRpt;

type
  TFToolCtaInd = class(TForm)
    pnltool: TPanel;
    dblcdupro: TwwDBLookupComboDlg;
    dbeupro: TwwDBEdit;
    dbeUSE: TwwDBEdit;
    dblcdCiudad: TwwDBLookupComboDlg;
    dblcdDepto: TwwDBLookupComboDlg;
    dbeProvincia: TwwDBEdit;
    dbeDepto: TwwDBEdit;
    Z2bbtnAceptar: TfcShapeBtn;
    dblcduse: TwwDBLookupComboDlg;
    dblcdAso: TwwDBEdit;
    bbtnFiltroAso: TButton;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    btnImprime: TfcShapeBtn;
    bbtnSalir: TfcShapeBtn;
    ppDesigner1: TppDesigner;
    bbtnBorrar: TfcShapeBtn;
    dbeAsociado: TwwDBEdit;
    dbeUPago: TwwDBEdit;
    dblcUPago: TwwDBLookupComboDlg;
    rgReportes: TRadioGroup;
    ppRepControl: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppLabel44: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppLabel45: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLabel46: TppLabel;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText24: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLabel73: TppLabel;
    pplblCapAcum: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppGroup8: TppGroup;
    ppGroupHeaderBand8: TppGroupHeaderBand;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel57: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppDBText36: TppDBText;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppdbUSE: TppDBText;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppdbRegPens: TppDBText;
    ppLabel49: TppLabel;
    ppLabel76: TppLabel;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine10: TppLine;
    ppGroupFooterBand8: TppGroupFooterBand;
    ppLine9: TppLine;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel4: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel2: TppLabel;
    ppLabel5: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel6: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel3: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppLabel29: TppLabel;
    ppDBText9: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppGroup9: TppGroup;
    ppGroupHeaderBand9: TppGroupHeaderBand;
    ppGroupFooterBand9: TppGroupFooterBand;
    ppGroup10: TppGroup;
    ppGroupHeaderBand10: TppGroupHeaderBand;
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
    ppLabel36: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppDBText17: TppDBText;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppDBText1: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText2: TppDBText;
    ppDBText6: TppDBText;
    ppDBText10: TppDBText;
    ppDBText23: TppDBText;
    ppLabel8: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppSalAnt: TppLabel;
    ppDBText3: TppDBText;
    ppGroupFooterBand10: TppGroupFooterBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppLabel33: TppLabel;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppSalAct: TppLabel;
    RepDevolucionesxEfectuar: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppLabel56: TppLabel;
    ppLine12: TppLine;
    ppLabel58: TppLabel;
    ppLabel69: TppLabel;
    ppLabel72: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLine14: TppLine;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppDetailBand3: TppDetailBand;
    ppDBText35: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBPipeline2: TppDBPipeline;
    ppFooterBand1: TppFooterBand;
    ppSubReport1: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppLabel77: TppLabel;
    ppLine1: TppLine;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLine2: TppLine;
    ppShape7: TppShape;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppShape11: TppShape;
    ppShape12: TppShape;
    ppDetailBand4: TppDetailBand;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine11: TppLine;
    ppLine13: TppLine;
    ppLine15: TppLine;
    procedure Z2bbtnAceptarClick(Sender: TObject);
    procedure dblcdDeptoExit(Sender: TObject);
    procedure dblcdCiudadExit(Sender: TObject);
    procedure dblcduproExit(Sender: TObject);
    procedure dblcduseExit(Sender: TObject);
    procedure bbtnFiltroAsoClick(Sender: TObject);
    procedure btnImprimeClick(Sender: TObject);
    procedure bbtnSalirClick(Sender: TObject);
    procedure bbtnBorrarClick(Sender: TObject);
    procedure dblcUPagoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dblcdAsoExit(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppRepControlPreviewFormCreate(Sender: TObject);
    procedure ppGroupHeaderBand8BeforePrint(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppDetailBand3BeforePrint(Sender: TObject);
    procedure ppDetailBand4BeforePrint(Sender: TObject);
  private
    procedure Ultimos;
  public
     xcondicion : String;
     xWhere, xSQL : String;
     procedure OnToolCtaIndividual(Sender: TObject);
  end;

var
  FToolCtaInd: TFToolCtaInd;
  xCapAnt, xCapAct : String;
  xAnoAct, xMesAct : String;
  xMonto : Real;
  D, M, Y : Word;

var
  FRes, FCes, xSQL, Reporte, xFlag, xUlt : String;
  i, j, xPerio  : Integer;
  SaveFalt : TBookmark;
  xApoSec, xAsoid, xAsoResNom, xAsoApeNom, xTransAno, xTransMes : String;
  xSal, xAsoCodMod, xUseId, xUseAbr, xUproId, xPagoId, xDptoId, xCiudId : String;
  xSaldoAnt, xSaldoPos, xPorc, xInt, xBon : Double;

implementation

uses APODM, APO001, APO716;

{$R *.DFM}

procedure TFToolCtaInd.Z2bbtnAceptarClick(Sender: TObject);
{var
  FRes, FCes, xSQL, Reporte, xFlag, xUlt : String;
  i, xPerio  : integer;
  SaveFalt : TBookmark;
  xApoSec, xAsoid, xAsoResNom, xAsoApeNom, xTransAno : String;
  xSal, xAsoCodMod, xUseId, xUseAbr, xUproId, xPagoId, xDptoId, xCiudId : String;
  xSaldoAnt, xSaldoPos, xPorc, xInt, xBon : Double;}
begin
  xWhere:='';
  // DEPARTAMENTO
  If dblcdDepto.Text<>'' Then
  begin
    If Length(Trim(xWhere)) > 0 Then
     xWhere := xWhere+' AND ';
    xWhere := 'J.DPTOID='''+DM1.cdsDpto.FieldByName('DPTOID').AsString+'''';
  end;
  // PROVINCIA
  If dblcdCiudad.Text<>'' Then
  begin
    If Length(Trim(xWhere)) > 0 Then
      xWhere := xWhere+' AND ';
    xWhere := xWhere+'J.CIUDID='''+DM1.cdsProvin.FieldByName('CIUDID').AsString+'''';
  end;
  // UNIDAD DE PROCESO
  If dblcdupro.Text<>'' Then
  begin
    If Length(Trim(xWhere)) > 0 Then
      xWhere := xWhere+' AND ';
    xWhere := xWhere+'A.UPROID='''+DM1.cdsUPRO.FieldByName('UPROID').AsString+'''';
  end;
  // UNIDAD DE PAGO
  If dblcUPago.Text<>'' Then
  begin
    If Length(Trim(xWhere)) > 0 Then
      xWhere := xWhere+' AND ';
    xWhere := xWhere+'A.UPAGOID='''+DM1.cdsUPago.FieldByName('UPAGOID').AsString+'''';
  end;
  // USE
  If dblcduse.Text<>'' Then
  begin
    If Length(Trim(xWhere))>0 Then
      xWhere := xWhere+' AND ';
    xWhere := xWhere+'A.USEID='''+DM1.cdsUSE.FieldByName('USEID').AsString+'''';
  end;
  //CODIGO ASOCIADO
  If dblcdAso.Text<>'' Then
  begin
    If Length(Trim(xWhere))>0 Then
      xWhere := xWhere+' AND ';
    xWhere := xWhere+'A.ASOID='''+dblcdAso.Text+'''';
  end;

  If Trim(xWhere) = ''  Then
  begin
    showMessage('Seleccione por lo Menos un Parametro');
    Exit;
  end;

  If Length(Trim(xWhere)) > 0 Then
  begin
    xSQL := 'SELECT ASOFRESNOM, ASOFRESCESE FROM APO201 WHERE ASOID='+QuotedStr(dblcdAso.Text);
    DM1.cdsReporte1.Close;
    DM1.cdsReporte1.DataRequest(xSQL);
    DM1.cdsReporte1.Open;

    FRes := DM1.cdsReporte1.FieldByName('ASOFRESNOM').AsString;
    FCes := DM1.cdsReporte1.FieldByName('ASOFRESCESE').AsString;
    If (Length(Trim(FRes)) > 0) And (Length(Trim(FCes)) > 0) Then
     begin
      DecodeDate(StrToDateTime(FCes), Y, M, D);
      xTransMes := CurrToStr(Y)+DM1.StrZero(CurrToStr(M), 2);
     end;

    Reporte:= 'SELECT A.APOSEC, A.DEVANO, A.DEVMES, A.TRANSID, J.ASOID, J.ASORESNOM, J.ASOFRESNOM, A.DPTOABR, A.USEABR, A.FREG, '+
              'J.ASORESCESE, ASOFRESCESE, A.ASOCODMOD, A.ASOAPENOM, J.USEID, J.UPROID, A.UPAGOID, A.TRANSNOPE, A.TRANSFOPE, '+
              'A.TRANSANO, A.TRANSMES, J.REGPENID, A.SALDOBONUS, '+
              '1996-DECODE(GREATEST(TO_CHAR(ASOFRESNOM,''YYYY''),''1996''),''1996'',TO_CHAR(ASOFRESNOM,''YYYY''),1996) AAPOR, '+
              'DECODE(TRIM(A.TRANSID), ''APORTE'', A.TRANSMTO,0) TRANSMTO, '+
              'A.SALDOANT, DECODE(A.TRANSINTID, ''APO'', A.INTERESMTO,0) INTERESMTO, '+
              'A.SALDO, DECODE(A.TRANSINTID,''APO'',A.BONUSMTO,0) BONUSMTO, NVL(A.TRANSMTODEV, 0) TRANSMTODEV, A.UPROABR, A.UPAGOABR, '+
              'V.FORPAGODES AS FORPAGOABR, '+
              //+' ,DECODE(TRANSINTID,''DEV'',''DEV''||'' ''||V.FORPAGOABR||'' ''||DEVANO||''/''||DEVMES,V.FORPAGOABR ) AS FORPAGOABR '
              'A.FORPAGOID, DECODE(TRANSID, ''APORTE'', A.TRANSMTODEV, 0) SUMA, J.DPTOID, J.CIUDID, '+
              'CAST(''AAAA'' AS VARCHAR2(15)) MES, '+
              'CAST(''AAAA'' AS VARCHAR2(35)) USEN, '+
              'CAST(''AAAA'' AS VARCHAR2(15)) UPAGON, '+
              'CAST(''AAAA'' AS VARCHAR2(15)) UPRON, '+
              'CAST(''AAAA'' AS VARCHAR2(15)) REGIMEN '+
              'FROM APO301 A, APO201 J, COB101 V '+
              'WHERE ';

    If Length(Trim(xWhere)) > 0 Then
      xWhere := xWhere+' AND';
    Reporte := Reporte+xWhere;

    If (Length(Trim(FRes)) > 0) and (Length(Trim(FCes)) > 0) Then
      Reporte := Reporte+ ' (A.APOSEC >= TO_CHAR('+wRepFuncDate+QuotedStr(FRes)+'),''YYYY'')||TO_CHAR('+wRepFuncDate+QuotedStr(FRes)+'),''MM'') '+
                  'AND A.APOSEC <= TO_CHAR(' +wRepFuncDate+QuotedStr(FCes)+'),''YYYY'')||TO_CHAR('+wRepFuncDate+QuotedStr(FCes)+'),''MM'')) AND '
    else
    If (Length(Trim(FRes)) > 0) Then
      Reporte:=Reporte+ ' A.APOSEC >= TO_CHAR('+wRepFuncDate+QuotedStr(FRes)+'),''YYYY'')||TO_CHAR('+wRepFuncDate+QuotedStr(FRes)+'),''MM'') AND '
    else
    If (Length(Trim(FCes)) > 0) Then
      Reporte := Reporte+ ' A.APOSEC <= TO_CHAR('+wRepFuncDate+QuotedStr(FCes)+'),''YYYY'')||TO_CHAR('+wRepFuncDate+QuotedStr(FCes)+'),''MM'') AND ';

    Reporte := Reporte+
    //' (A.APOSEC >= TO_CHAR(J.ASOFRESNOM,''YYYY'')||TO_CHAR(J.ASOFRESNOM,''MM'')) '+
    //'AND (A.APOSEC <= TO_CHAR(J.ASOFRESCESE,''YYYY'')||TO_CHAR(J.ASOFRESCESE,''MM'')) '+
    ' J.ASOID=A.ASOID AND TRIM(A.FORPAGOID)=V.FORPAGOID(+) '+
    'ORDER BY APOSEC';

    Screen.Cursor := crHourGlass;
    FPrincipal.MtxCtaInv1.UsuarioSQL.Clear;
    FPrincipal.MtxCtaInv1.UsuarioSQL.Add(Reporte);
    FPrincipal.MtxCtaInv1.NewQuery;

    If DM1.cdsReporte2.RecordCount = 0 Then
    begin
      Screen.Cursor := crDefault;
      Information(Caption, 'No Existe Información a Mostrar');
      Exit;
    end;
//------------------------------------------------------------------------------
    DM1.cdsReporte2.Last;
//------------------------------------------------------------------------------
    xUlt   := DM1.cdsReporte2.FieldByName('APOSEC').AsString;
    xMonto := DM1.cdsReporte2.FieldByName('SALDO').AsFloat;

//Para Agregar Meses Fantasmas
    xFlag := 'N'; xSaldoAnt := 0; xSaldoPos := 0; xSal := 'N';
    DM1.cdsReporte2.First;
    xCapAnt := DM1.cdsReporte2.FieldByName('SALDOANT').AsString;
    i := StrToInt(DM1.cdsReporte2.FieldByName('TRANSMES').AsString);
    xTransAno :=  DM1.cdsReporte2.FieldByName('TRANSANO').AsString;

//GAR
//Para Ver los Años Aportados

   xSQL := 'Select Distinct SubStr(APOSEC, 1, 4) APOSEC From APO301'
          +' Where ASOID ='+QuotedStr(dblcdAso.Text);

   DM1.cdsQry1.Filter   := '';
   DM1.cdsQry1.Filtered := False;
   DM1.cdsQry1.IndexFieldNames := '';
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xSQL);
   DM1.cdsQry1.Open;
   DM1.cdsQry1.IndexFieldNames := 'APOSEC';

//GAR
//Para Rellenar los Años desde el Mes 1 hasta 12
//Hasta el Ultimo Año Aportado

   xSQL := 'Select ''999999'' APOSEC From TGE901';

   DM1.cdsQry2.Filter   := '';
   DM1.cdsQry2.Filtered := False;
   DM1.cdsQry2.IndexFieldNames := '';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(xSQL);
   DM1.cdsQry2.Open;
   DM1.cdsQry2.Delete;

//Para Completar los meses desde el primer año de aportes hasta la Fecha de Cese

   DM1.cdsQry1.First;
   For i := StrToInt(DM1.cdsQry1.FieldByName('APOSEC').AsString) To Y do
    begin
     For j := 1 To 12 do
      begin
       DM1.cdsQry2.Append;
       DM1.cdsQry2.FieldByName('APOSEC').AsString := IntToStr(i)+DM1.StrZero(IntToStr(j), 2);
       If xTransMes = DM1.cdsQry2.FieldByName('APOSEC').AsString Then
        Break;
      end;
    end;

   DM1.cdsReporte2.IndexFieldNames := 'APOSEC';
   DM1.cdsQry2.First;
   While Not DM1.cdsQry2.EOF do
    begin
     DM1.cdsReporte2.SetKey;
     DM1.cdsReporte2.FieldByName('APOSEC').AsString := DM1.cdsQry2.FieldByName('APOSEC').AsString;
     xTransAno := Copy(DM1.cdsQry2.FieldByName('APOSEC').AsString, 1, 4);
     xTransMes := Copy(DM1.cdsQry2.FieldByName('APOSEC').AsString, 5, 2);
     If Not DM1.cdsReporte2.GotoKey Then
      begin
       DM1.cdsReporte2.Insert;
       DM1.cdsReporte2.FieldByName('APOSEC').AsString     := DM1.cdsQry2.FieldByName('APOSEC').AsString;
       DM1.cdsReporte2.FieldByName('TRANSID').AsString    := 'APORTE';
       DM1.cdsReporte2.FieldByName('ASOID').AsString      := xAsoId;
       DM1.cdsReporte2.FieldByName('ASORESNOM').AsString  := xAsoResNom;
       DM1.cdsReporte2.FieldByName('ASORESCESE').AsFloat  := 0;
       DM1.cdsReporte2.FieldByName('AAPOR').AsFloat       := 0;

       xWhere := 'APOANO ='+QuotedStr(xTransAno)+' AND APOMES ='+QuotedStr(xTransMes);
       DM1.DisplayDescrip('prvTGE', 'APO117', 'INTERES, BONUS', xWhere, 'INTERES');

       xPorc := DM1.cdsQry.FieldByName('INTERES').AsFloat;
       xPorc := xPorc/100;

       xInt := DM1.FRound(xSaldoAnt * xPorc, 15, 2);
       If DM1.cdsQry.FieldByName('BONUS').AsFloat > 0 Then
        xBon := DM1.FRound((xSaldoPos * DM1.cdsQry.FieldByName('BONUS').AsFloat)/100, 15, 2)
//        xBon := DM1.FRound(xSaldoPos, 15, 2) - xInt
//        xBon := DM1.FRound(xSaldoPos - xSaldoAnt, 15, 2) - xInt
       Else
        xBon := 0;

       DM1.cdsReporte2.FieldByName('SALDOANT').AsFloat    := xSaldoAnt;
       DM1.cdsReporte2.FieldByName('INTERESMTO').AsFloat  := xInt;
       DM1.cdsReporte2.FieldByName('BONUSMTO').AsFloat    := xBon;
       DM1.cdsReporte2.FieldByName('SALDO').AsFloat       := xSaldoAnt + xInt + xBon;
       If xBon = 0 Then
        DM1.cdsReporte2.FieldByName('SALDOBONUS').AsFloat := xSaldoPos
       Else
        DM1.cdsReporte2.FieldByName('SALDOBONUS').AsFloat := xSaldoAnt + xInt + xBon;
       DM1.cdsReporte2.FieldByName('ASOCODMOD').AsString  := xAsoCodMod;
       DM1.cdsReporte2.FieldByName('ASOAPENOM').AsString  := xAsoApeNom;
       DM1.cdsReporte2.FieldByName('USEID').AsString      := xUseId;
       DM1.cdsReporte2.FieldByName('USEABR').AsString     := xUseAbr;
       DM1.cdsReporte2.FieldByName('UPROID').AsString     := xUProId;
       DM1.cdsReporte2.FieldByName('UPAGOID').AsString    := xPagoId;
       DM1.cdsReporte2.FieldByName('DPTOID').AsString     := xDptoId;
       DM1.cdsReporte2.FieldByName('CIUDID').AsString     := xCiudId;
       DM1.cdsReporte2.FieldByName('TRANSANO').AsString   := xTransAno;
       DM1.cdsReporte2.FieldByName('TRANSMES').AsString   := xTransMes;
       DM1.cdsReporte2.FieldByName('TRANSMTO').AsFloat    := 0;
       DM1.cdsReporte2.FieldByName('TRANSMTODEV').AsFloat := 0;
       xSaldoAnt := DM1.cdsReporte2.FieldByName('SALDO').AsFloat;
       xSaldoPos := DM1.cdsReporte2.FieldByName('SALDOBONUS').AsFloat;
       DM1.cdsReporte2.Post;
      end
     Else
      begin
       xSaldoAnt := DM1.cdsReporte2.FieldByName('SALDO').AsFloat;
       xSaldoPos := DM1.cdsReporte2.FieldByName('SALDOBONUS').AsFloat;
      end;
     DM1.cdsQry2.Next;
    end;

//Para las Devoluciones Por Efectuar
   If (Length(Trim(FRes)) > 0) and (Length(Trim(FCes)) > 0) Then
    begin
     xSQL := 'Select TRANSFOPE, TRANSNOPE, TRANSANO, TRANSMES, Cast(''AAA'' As Varchar2(15)) MES, TRANSMTO,'
            +' INTERESMTO From APO301'
            +' Where ASOID ='+QuotedStr(dblcdAso.Text)
            +' AND TRANSINTID = '+QuotedStr('APO')
            +' AND TRANSMTODEV Is Null ';

     xSQL := xSQL + ' AND APOSEC > TO_CHAR('+wRepFuncDate+QuotedStr(FCes)+'),''YYYY'')||TO_CHAR('+wRepFuncDate+QuotedStr(FCes)+'),''MM'')'
                  +' Order By APOSEC';

     DM1.cdsQry3.Filter   := '';
     DM1.cdsQry3.Filtered := False;
     DM1.cdsQry3.IndexFieldNames := '';
     DM1.cdsQry3.Close;
     DM1.cdsQry3.DataRequest(xSQL);
     DM1.cdsQry3.Open;
    end
   Else
    begin
     xSQL := 'Select TRANSFOPE, TRANSNOPE, TRANSANO, TRANSMES, Cast(''AAA'' As Varchar2(15)) MES, TRANSMTO,'
            +' INTERESMTO From APO301'
            +' Where ASOID ='+QuotedStr(dblcdAso.Text)
            +' AND TRANSINTID = '+QuotedStr('APO')
            +' AND APOSEC > '+QuotedStr(FCes);

     DM1.cdsQry3.Filter   := '';
     DM1.cdsQry3.Filtered := False;
     DM1.cdsQry3.IndexFieldNames := '';
     DM1.cdsQry3.Close;
     DM1.cdsQry3.DataRequest(xSQL);
     DM1.cdsQry3.Open;
    end;

//Para las Devoluciones Efectuadas
   xSQL := 'Select TRANSFOPE, TRANSNOPE, TRANSANO, TRANSMES, TRANSMTO,'
          +' INTERESMTO, Cast(''AAA'' As Varchar2(4)) ANO, Cast(''AAA'' As Varchar2(15)) MES,'
          +' Cast(''AAA'' As Varchar2(15)) NOPE, 0.00 MONTO From APO301'
          +' Where ASOID ='+QuotedStr(dblcdAso.Text)
          +' AND TRANSINTID = '+QuotedStr('APO')
          +' AND TRANSMTODEV Is Not Null';

   If (Length(Trim(FRes)) > 0) And (Length(Trim(FCes)) > 0) Then
    xSQL := xSQL + ' AND APOSEC > TO_CHAR('+wRepFuncDate+QuotedStr(FCes)+'),''YYYY'')||TO_CHAR('+wRepFuncDate+QuotedStr(FCes)+'),''MM'')'
                 +' Order By APOSEC';

   DM1.cdsQry4.Filter   := '';
   DM1.cdsQry4.Filtered := False;
   DM1.cdsQry4.IndexFieldNames := '';
   DM1.cdsQry4.Close;
   DM1.cdsQry4.DataRequest(xSQL);
   DM1.cdsQry4.Open;

    If DM1.cdsQry4.RecordCount > 0 Then
    begin
      DM1.cdsQry4.First;
      xWhere := 'ASOID ='+QuotedStr(dblcdAso.Text)+' AND TRANSINTID ='+QuotedStr('DEV');
      DM1.DisplayDescrip('prvSQL', 'APO301', 'TRANSFOPE, TRANSNOPE, TRANSANO, TRANSMES, TRANSMTO', xWhere, 'TRANSANO');
      While Not DM1.cdsQry4.EOF do
      begin
        DM1.cdsQry4.Edit;
        DM1.cdsQry4.FieldByName('ANO').AsString  := DM1.cdsQry.FieldByName('TRANSANO').AsString;
        DM1.cdsQry4.FieldByName('MES').AsString  := DM1.NombreMes(DM1.cdsQry.FieldByName('TRANSMES').AsString);
        DM1.cdsQry4.FieldByName('NOPE').AsString := DM1.cdsQry.FieldByName('TRANSNOPE').AsString;
        DM1.cdsQry4.FieldByName('MONTO').AsFloat := DM1.cdsQry.FieldByName('TRANSMTO').AsFloat;
        DM1.cdsQry4.Post;        
        DM1.cdsQry4.Next;
      end;
    end;
  end;
end;

procedure TFToolCtaInd.Ultimos;
var
  wBon, wSaldoBon : Double;
  xPer : Integer;
begin
  DecodeDate(StrToDate(xFec_Sis), Y, M, D);
  xAnoAct := FloatToStr(Y);
  xMesAct := FloatToStr(M);
  xPerio  := StrToInt(xAnoAct+xMesAct);

  if Length(Trim(FCes)) = 0 then
    xPerio:=xPerio-1
  else
  begin
    DecodeDate(StrToDate(FCes), Y, M, D);
    xPerio:=StrtoInt(FloattoStr(Y)+dm1.StrZero(FloattoStr(M),2));
  end;


  DM1.cdsReporte2.Last;

  xApoSec   :=  InttoStr(DM1.cdsReporte2.FieldByName('APOSEC').AsInteger);
  xAsoid    :=  DM1.cdsReporte2.FieldByName('ASOID').AsString;
  xAsoResNom:=  DM1.cdsReporte2.FieldByName('ASORESNOM').AsString;
  xAsoApeNom:=  DM1.cdsReporte2.FieldByName('ASOAPENOM').AsString;
  xAsoCodMod:=  DM1.cdsReporte2.FieldByName('ASOCODMOD').AsString;
  xUseId    :=  DM1.cdsReporte2.FieldByName('USEID').AsString;
  xUseAbr   :=  DM1.cdsReporte2.FieldByName('USEABR').AsString;
  xUproId   :=  DM1.cdsReporte2.FieldByName('UPROID').AsString;
  xPagoId   :=  DM1.cdsReporte2.FieldByName('UPAGOID').AsString;
  xDptoId   :=  DM1.cdsReporte2.FieldByName('DPTOID').AsString;
  xCiudId   :=  DM1.cdsReporte2.FieldByName('CIUDID').AsString;
  wSaldoBon :=  DM1.cdsReporte2.FieldByName('SALDOBONUS').AsFloat;

  while xApoSec < InttoStr(xPerio) do
  begin
    wBon      := 0;
    xApoSec   := InttoStr(DM1.cdsReporte2.FieldByName('APOSEC').AsInteger+1);
    xSaldoPos := DM1.cdsReporte2.FieldByName('SALDOANT').AsFloat;
    xSaldoAnt := DM1.cdsReporte2.FieldByName('SALDO').AsFloat;

    i := StrToInt(copy(xApoSec,5,2));
    xTransAno :=  copy(xApoSec,1,4);

    DM1.cdsReporte2.Insert;
    DM1.cdsReporte2.FieldByName('APOSEC').AsString    := xApoSec;
    DM1.cdsReporte2.FieldByName('TRANSID').AsString   := 'APORTE';
    DM1.cdsReporte2.FieldByName('ASOID').AsString     := xAsoid;
    DM1.cdsReporte2.FieldByName('ASORESNOM').AsString := xAsoResNom;
    DM1.cdsReporte2.FieldByName('ASORESCESE').AsFloat := 0;
    DM1.cdsReporte2.FieldByName('AAPOR').AsFloat      := 0;
    xWhere:= 'APOANO='+QuotedStr(xTransAno)+' AND APOMES='+QuotedStr(dm1.StrZero(InttoStr(i),2));
    DM1.DisplayDescrip('prvTGE', 'APO117', 'INTERES, BONUS', xWhere, 'INTERES');
    xPorc := DM1.cdsQry.FieldByName('INTERES').AsFloat;
    xPorc := xPorc/100;
    xInt := DM1.FRound(xSaldoAnt * xPorc,15,2);
    if DM1.cdsQry.FieldByName('BONUS').AsFloat > 0 then
    begin
      wBon:=DM1.cdsQry.FieldByName('BONUS').AsFloat/100;

      xBon := DM1.FRound(wSaldoBon * wBon,15,2)
    end
    else
      xBon := 0;
    DM1.cdsReporte2.FieldByName('SALDOANT').AsFloat   := xSaldoAnt;
    DM1.cdsReporte2.FieldByName('INTERESMTO').AsFloat := xInt;
    DM1.cdsReporte2.FieldByName('BONUSMTO').AsFloat   := xBon;
    DM1.cdsReporte2.FieldByName('SALDOBONUS').AsFloat := xSaldoAnt+xInt+xBon;
    DM1.cdsReporte2.FieldByName('SALDO').AsFloat      := xSaldoAnt+xInt+xBon;
    DM1.cdsReporte2.FieldByName('ASOCODMOD').AsString := xAsoCodMod;
    DM1.cdsReporte2.FieldByName('ASOAPENOM').AsString := xAsoApeNom;
    DM1.cdsReporte2.FieldByName('USEID').AsString     := xUseId;
    DM1.cdsReporte2.FieldByName('USEABR').AsString    := xUseAbr;
    DM1.cdsReporte2.FieldByName('UPROID').AsString    := xUproId;
    DM1.cdsReporte2.FieldByName('UPAGOID').AsString   := xPagoId;
    DM1.cdsReporte2.FieldByName('DPTOID').AsString    := xDptoId;
    DM1.cdsReporte2.FieldByName('CIUDID').AsString    := xCiudId;
    DM1.cdsReporte2.FieldByName('TRANSANO').AsString  := xTransAno;
    DM1.cdsReporte2.FieldByName('TRANSMES').AsString  := DM1.StrZero(InttoStr(i),2);
    DM1.cdsReporte2.FieldByName('TRANSMTO').AsFloat   := 0;
    DM1.cdsReporte2.Post;
    xMonto := DM1.cdsReporte2.FieldByName('SALDO').AsFloat;
  end;
end;

procedure TFToolCtaInd.dblcdDeptoExit(Sender: TObject);
begin
  If Trim(dblcdDepto.Text) = '' Then
  begin
    dbedepto.Text := '';
  end
  Else
  begin
    dbedepto.Text := DM1.cdsDpto.FieldByName('DPTODES').AsString;
    xSQL := ' SELECT * FROM APO123 '+
            ' WHERE DPTOID='+QuotedStr(dblcdDepto.Text);
    DM1.cdsProvin.Close;
    DM1.cdsProvin.DataRequest(xSQL);
    DM1.cdsProvin.Open;
  end;
end;

procedure TFToolCtaInd.dblcdCiudadExit(Sender: TObject);
begin
 If Trim(dblcdCiudad.Text) = '' Then
   dbeprovincia.Text := ''
 else
  dbeprovincia.Text := DM1.cdsProvin.FieldByName('CIUDDES').AsString;
end;

procedure TFToolCtaInd.dblcduproExit(Sender: TObject);
begin
  If Trim(dblcdUpro.Text)='' Then
  begin
    dbeupro.Text := '';
  end
  else
  begin
    dbeupro.Text := DM1.cdsUPRO.FieldByName('UPRONOM').AsString;
    xSQL := ' SELECT * FROM APO103 '+
            ' WHERE UPROID='+QuotedStr(dblcdUPro.Text);
    DM1.cdsUPago.Close;
    DM1.cdsUPago.DataRequest(xSQL);
    DM1.cdsUPago.Open;
  end;
end;

procedure TFToolCtaInd.dblcduseExit(Sender: TObject);
begin
  If Trim(dblcdUse.Text) = '' Then
  begin
    dbeUSE.Text := ''
  end
  else
  begin
    dbeUSE.Text := DM1.cdsUSE.FieldByName('USENOM').AsString;
  end;
end;

procedure TFToolCtaInd.bbtnFiltroAsoClick(Sender: TObject);
begin
  xWhere := '';
  FToolCtaIndividual := TFToolCtaIndividual.Create(Self);
  ///////////////////////////////////////////
  // DEPARTAMENTO
  If (Trim(dblcdDepto.Text)<>'') and (Trim(dblcdCiudad.Text)<>'')  Then
  begin
     xWhere:=' ;CIUDID='''+DM1.cdsProvin.FieldByName('CIUDID').AsString+'''   ';
  end
  else
  begin
    // PROVINCIA
    If dblcdCiudad.Text<>'' Then
    begin
       If Length(xWhere)<>0 Then xWhere:=xWhere+' ;';
       xWhere:=xWhere+' CIUDID='''+DM1.cdsprovin.FieldByName('CIUDID').AsString+'''   '
    end
    else
    begin
      // DEPARTAMENTO
      If (Trim(dblcdDepto.Text)<>'') Then
      begin
        If Length(xWhere)<>0 Then xWhere:=xWhere+' ;';
        xWhere:=' DPTOID='''+DM1.cdsDpto.FieldByName('DPTOID').AsString+'''  ';
      end;
    end;
  end;

  If (Trim(dblcdupro.Text)<>'') And (Trim(dblcUPago.Text)<>'')
     And (Trim(dblcduse.Text)<>'') Then
  begin
    // UNIDAD DE PROCESO
    If dblcdupro.Text<>'' Then
    begin
       If Length(xWhere)<>0 Then xWhere:=xWhere+' ;';
       xWhere:=xWhere+' UPROID='''+DM1.cdsUPRO.FieldByName('UPROID').AsString+'''  ';
    end;
    // Unid Pago
    If dblcUPago.Text<>'' Then
    begin
      If Length(xWhere)<>0 Then xWhere:=xWhere+' ;';
      xWhere:=xWhere+' UPAGOID='''+DM1.cdsUPAGO.FieldByName('UPAGOID').AsString+'''  ';
    end;

    // USE
    If dblcduse.Text<>'' Then
    begin
      If Length(xWhere)<>0 Then xWhere:=xWhere+' ;';
      xWhere:=xWhere+' USEID='''+DM1.cdsUSE.FieldByName('USEID').AsString+'''  ';
    end;
  end
  else
  begin
    // UNIDAD DE PROCESO
    If dblcdupro.Text<>'' Then
    begin
      If Length(xWhere)<>0 Then xWhere:=xWhere+' ;';
      xWhere:=xWhere+' UPROID='''+DM1.cdsUPRO.FieldByName('UPROID').AsString+'''  ';
    end
    Else
    begin
      // Unid Pago
      If dblcUPago.Text<>'' Then
      begin
        If Length(xWhere)<>0 Then xWhere:=xWhere+' ;';
        xWhere:=xWhere+' UPAGOID='''+DM1.cdsUPAGO.FieldByName('UPAGOID').AsString+'''  ';
      end
      Else
      begin
        // USE
        If dblcduse.Text<>'' Then
        begin
          If Length(xWhere)<>0 Then xWhere:=xWhere+' ;';
          xWhere := xWhere+' USEID='''+DM1.cdsUSE.FieldByName('USEID').AsString+'''  ';
        end;
      end;
    end;
  end;
  FPrincipal.MtxbAso := TMant.Create(Self);
  Try
    Screen.Cursor := crHourGlass;
    FPrincipal.MtxbAso.User            := DM1.wUsuario;
    FPrincipal.MtxbAso.Admin           := DM1.wAdmin;
    FPrincipal.MtxbAso.Module          := DM1.wModulo;
    FPrincipal.MtxbAso.DComC           := DM1.DCOM1;
    FPrincipal.MtxbAso.ControlGridDisp := FPrincipal.cgdPrincipal;
    FPrincipal.MtxbAso.OnCreateMant    := OnToolCtaIndividual;
    FPrincipal.MtxbAso.TableName       := 'APO201';
    FPrincipal.MtxbAso.Registros       := 30;
    FPrincipal.MtxbAso.ClientDataSet   := DM1.cdsAsociados;
    If Length(Trim(xWhere))<>0 Then
    begin
     FPrincipal.MtxbAso.Filter         := xWhere;
    end;
    FPrincipal.MtxbAso.Titulo 	       := 'Asociados';
    FPrincipal.MtxbAso.OnInsert        := nil;
    FPrincipal.MtxbAso.OnEdit 	       := FPrincipal.OnEditAsoCta;
    FPrincipal.MtxbAso.OnDelete        := nil;
    FPrincipal.MtxbAso.OnShow 	       := nil;
    FPrincipal.MtxbAso.SectionName     := 'Buscaapo';
    FPrincipal.MtxbAso.FileNameIni     := '\SolAportes.ini';
    Screen.Cursor := crDefault;
// Inicio HPC_201501_APO     Cambio de DCOM a Socket
    FPrincipal.MtxbAso.Tipo := 'NORMAL';
// Fin  HPC_201501_APO     Cambio de DCOM a Socket
    FPrincipal.MtxbAso.Execute;
  Finally
    FPrincipal.MtxbAso.Free;
  end;
  dbeAsociado.SetFocus;
end;

procedure TFToolCtaInd.btnImprimeClick(Sender: TObject);
var
  x10 : Integer;
begin
   If DM1.cdsReporte2.RecordCount = 0 Then
    begin
     Beep;
     MessageDlg('No Existen Datos a Imprimir', mtInformation, [mbOk], 0);
     Exit;
    end
   Else
    begin
     If rgReportes.ItemIndex = 0 Then
      begin
       DM1.cdsReporte2.DisableControls;
       ppDBPipeline1.DataSource    := DM1.dsReporte2;
       ppReport1.Template.FileName := wRutaRpt +'\Cuenta Individual.rtm';
       ppReport1.Template.LoadFromFile ;
       DM1.cdsReporte2.EnableControls;
       //ppDesigner1.ShowModal;
       ppSalAnt.Text := FloatToStrF(StrToFloat(xCapAnt), ffNumber, 15, 2);
  //     ppSalAct.Text := xCapAct;
       ppSalAct.Caption := FloatToStrF(xMonto, ffNumber, 15, 2);
       ppReport1.Print ;
       ppReport1.Stop;
      end
     Else
      begin
       DM1.cdsReporte2.DisableControls;
       ppDBPipeline1.DataSource       := DM1.dsReporte2;
       ppRepControl.Template.FileName := wRutaRpt +'\Cuenta Individual Control Aportes.rtm';
       ppRepControl.Template.LoadFromFile ;
       DM1.cdsReporte2.EnableControls;
       ppLabel76.Caption              := FloatToStrF(StrToFloat(xCapAnt), ffNumber, 15, 2);
       pplblCapAcum.Caption           := FloatToStrF(xMonto, ffNumber, 15, 2);
       ppRepControl.Print ;
       ppRepControl.Stop;
      end;
    end;

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

procedure TFToolCtaInd.bbtnSalirClick(Sender: TObject);
begin
  FPrincipal.MtxCtaInv1.FMant.Close;
end;

procedure TFToolCtaInd.OnToolCtaIndividual(Sender: TObject);
var
  pg : TPanel;
  pl : TPanel;
begin
  pg := FToolCtaIndividual.pnlTool;
  pl := TMant(Sender).FMant.pnlBtns;
  pl.Height   := pg.Height + 5;
  pl.AutoSize := True;
  pg.Parent   := TMant(Sender).FMant.pnlBtns;
  pg.Align    := alClient;
  TMant(Sender).FMant.pnlBtns.Visible  := True;
end;

procedure TFToolCtaInd.bbtnBorrarClick(Sender: TObject);
begin
  dblcdDepto.Text   := '';
  dbeDepto.Text     := '';
  dblcdCiudad.Text  := '';
  dbeProvincia.Text := '';
  dblcdupro.Text    := '';
  dbeupro.Text      := '';
  dblcduse.Text     := '';
  dbeUSE.Text       := '';
  dblcdAso.Text     := '';
  dbeAsociado.Text  := '';
  dblcUPago.Text    := '';
  dbeUPago.Text     := '';
  xWhere := '';
  xSQL := ' SELECT * FROM APO123';
  DM1.cdsProvin.Close;
  DM1.cdsProvin.DataRequest(xSQL);
  DM1.cdsProvin.Open;
  xSQL := ' SELECT * FROM APO103';
  DM1.cdsUPago.Close;
  DM1.cdsUPago.DataRequest(xSQL);
  DM1.cdsUPago.Open;
  xSQL:=' SELECT * FROM APO101';
  DM1.cdsUse.Close;
  DM1.cdsUse.DataRequest(xSQL);
  DM1.cdsUse.Open;
end;

procedure TFToolCtaInd.dblcUPagoExit(Sender: TObject);
begin
  If Trim(dblcUPago.Text)='' Then
  begin
    dbeUPago.Text:=''
  end
  else
  begin
    dbeUPago.Text:=DM1.cdsUPAGO.FieldByName('UPAGONOM').AsString;
    xSQL:='SELECT * FROM APO101 '+
          'WHERE UPROID='+QuotedStr(dblcdupro.Text)+' '+
          'AND UPAGOID='+QuotedStr(dblcUPago.Text);
    DM1.cdsUse.Close;
    DM1.cdsUse.DataRequest(xSQL);
    DM1.cdsUse.Open;
  end;
end;

procedure TFToolCtaInd.FormCreate(Sender: TObject);
begin
  xSQL:='SELECT '+wRepFuncChar+wRepFecServi+', '+QuotedStr(wFormatFServ)+') "FECHA", '+wRepFecServi+' HORA FROM DUAL';

  DM1.cdsReporte3.IndexFieldNames:='';
  dm1.cdsReporte3.Filter:='';
  dm1.cdsReporte3.Filtered:=False;

  DM1.cdsReporte3.Close;
  dm1.cdsReporte3.DataRequest(xSQL);
  dm1.cdsReporte3.Open;
  xFec_Sis := dm1.cdsReporte3.FieldByName('FECHA').AsString;
  xHor_Sis := dm1.cdsReporte3.FieldByName('HORA').AsString;

  If Not DM1.cdsDpto.Active Then
  begin
    xSQL := ' SELECT * FROM APO158';
    DM1.cdsDpto.Close;
    DM1.cdsDpto.DataRequest(xSQL);
    DM1.cdsDpto.Open;
  end;
  If Not DM1.cdsProvin.Active Then
  begin
    xSQL := ' SELECT * FROM APO123';
    DM1.cdsProvin.Close;
    DM1.cdsProvin.DataRequest(xSQL);
    DM1.cdsProvin.Open;
  end;
  If Not DM1.cdsUPro.Active Then
  begin
    xSQL := ' SELECT * FROM APO102';
    DM1.cdsUPro.Close;
    DM1.cdsUPro.DataRequest(xSQL);
    DM1.cdsUPro.Open;
  end;
  If Not DM1.cdsUPago.Active Then
  begin
    xSQL := ' SELECT * FROM APO103';
    DM1.cdsUPago.Close;
    DM1.cdsUPago.DataRequest(xSQL);
    DM1.cdsUPago.Open;
  end;
  If Not DM1.cdsUse.Active Then
  begin
    xSQL := ' SELECT * FROM APO101';
    DM1.cdsUse.Close;
    DM1.cdsUse.DataRequest(xSQL);
    DM1.cdsUse.Open;
  end;
end;

procedure TFToolCtaInd.dblcdAsoExit(Sender: TObject);
begin
  If Length(Trim(dblcdAso.Text)) > 0 Then
  begin
    Screen.Cursor := crHourGlass;
    dblcdAso.Text := DM1.StrZero(dblcdAso.Text,10);
    xWhere := 'ASOID='+QuotedStr(dblcdAso.Text);
    dbeAsociado.Text := DM1.DisplayDescrip('prvTGE', 'APO201', 'ASOAPENOM', xWhere, 'ASOAPENOM');
    Screen.Cursor := crDefault;
  end;
end;

procedure TFToolCtaInd.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.ClientHeight := 500;
  ppReport1.PreviewForm.ClientWidth  := 650;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomSetting := zsPagewidth;
end;

procedure TFToolCtaInd.ppRepControlPreviewFormCreate(Sender: TObject);
begin
   ppRepControl.PreviewForm.WindowState := wsMaximized;
   TppViewer(ppRepControl.PreviewForm.Viewer).ZoomSetting := zsPageWidth;
end;

procedure TFToolCtaInd.ppGroupHeaderBand8BeforePrint(Sender: TObject);
var
   xWhere : String;
begin
   DM1.cdsReporte2.Edit;
   xWhere := 'USEID ='+QuotedStr(DM1.cdsReporte2.FieldByName('USEID').AsString)

            +' And UPAGOID ='+QuotedStr(DM1.cdsReporte2.FieldByName('UPAGOID').AsString)
            +' And UPROID ='+QuotedStr(DM1.cdsReporte2.FieldByName('UPROID').AsString);
   DM1.cdsReporte2.FieldByName('USEN').AsString  := DM1.DisplayDescrip('prvSQL', 'APO101', 'USENOM', xWhere, 'USENOM');
   xWhere := 'UPROID ='+QuotedStr(DM1.cdsReporte2.FieldByName('UPROID').AsString);
   DM1.cdsReporte2.FieldByName('UPRON').AsString := DM1.DisplayDescrip('prvSQL', 'APO102', 'UPRONOM', xWhere, 'UPRONOM');
   xWhere := 'UPAGOID ='+QuotedStr(DM1.cdsReporte2.FieldByName('UPAGOID').AsString)
            +' And UPROID ='+QuotedStr(DM1.cdsReporte2.FieldByName('UPROID').AsString);
   DM1.cdsReporte2.FieldByName('UPAGON').AsString := DM1.DisplayDescrip('prvSQL', 'APO103', 'UPAGONOM', xWhere, 'UPAGONOM');
   xWhere := 'REGPENID ='+QuotedStr(DM1.cdsReporte2.FieldByName('REGPENID').AsString);
   DM1.cdsReporte2.FieldByName('REGIMEN').AsString := DM1.DisplayDescrip('prvSQL', 'APO105', 'REGPENDES', xWhere, 'REGPENDES');
end;

procedure TFToolCtaInd.ppDetailBand1BeforePrint(Sender: TObject);
var
   xMes : Integer;
begin
   xMes := StrToInt(DM1.cdsReporte2.FieldByName('TRANSMES').AsString);
   DM1.cdsReporte2.Edit;
   DM1.cdsReporte2.FieldByName('MES').AsString := UpperCase(DM1.NombreMes(IntToStr(xMes)));
end;

procedure TFToolCtaInd.ppDetailBand3BeforePrint(Sender: TObject);
begin
   DM1.cdsQry3.Edit;
   DM1.cdsQry3.FieldByName('MES').AsString := DM1.NombreMes(DM1.cdsQry3.FieldByName('TRANSMES').AsString);
end;

procedure TFToolCtaInd.ppDetailBand4BeforePrint(Sender: TObject);
begin
   DM1.cdsQry3.Edit;
   DM1.cdsQry3.FieldByName('MES').AsString := DM1.NombreMes(DM1.cdsQry3.FieldByName('TRANSMES').AsString);
end;

end.
