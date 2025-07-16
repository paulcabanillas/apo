unit APO503;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppBands, ppCtrls, ppVar, jpeg, ppPrnabl, ppClass, ppCache, ppComm,
  ppTypes, ppRelatv, ppProd, ppReport, ExtCtrls, wwdbedit, wwdblook, Wwdbdlg,
  StdCtrls, Mask, Wwdbspin, fcButton, fcImgBtn, fcShapeBtn, ppViewr, DB,
  ComCtrls, ppDB, ppDBPipe, ppStrtch, ppSubRpt;

type
  TFRepX = class(TForm)
    pnlCabecera: TPanel;
    Z2bbtnCancel: TfcShapeBtn;
    Z2bbtnAceptar: TfcShapeBtn;
    lblApeMat: TLabel;
    edtAsoID: TEdit;
    edtAsociado: TEdit;
    Label1: TLabel;
    pgCta: TProgressBar;
    Label2: TLabel;
    bbtnImprimir: TfcShapeBtn;
    ppdbRepCtaInd: TppDBPipeline;
    ppRepCtaInd: TppReport;
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
    ppDBText26: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel33: TppLabel;
    ppLabel30: TppLabel;
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
    ppDBText3: TppDBText;
    ppDBText6: TppDBText;
    ppDBText10: TppDBText;
    ppDBText23: TppDBText;
    ppLabel8: TppLabel;
    ppLabel37: TppLabel;
    ppLabel48: TppLabel;
    ppDBText25: TppDBText;
    ppLabel72: TppLabel;
    ppLabel75: TppLabel;
    ppLabel77: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppGroupFooterBand10: TppGroupFooterBand;
    ppLine5: TppLine;
    pnlTipoRep: TPanel;
    StaticText1: TStaticText;
    rgTipoRep: TRadioGroup;
    bbtnAceptar: TfcShapeBtn;
    fcShapeBtn1: TfcShapeBtn;
    ppDBPipeline1: TppDBPipeline;
    ppRepAso: TppReport;
    ppRepControl: TppReport;
    ppDBPipeline2: TppDBPipeline;
    ppDBPipeline3: TppDBPipeline;
    ppHeaderBand2: TppHeaderBand;
    ppLabel7: TppLabel;
    ppLabel16: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLabel17: TppLabel;
    ppLabel31: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppLabel32: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppLabel38: TppLabel;
    ppLabel132: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLabel39: TppLabel;
    ppDBText24: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    RepDevolucionesxEfec: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppLabel69: TppLabel;
    ppLine15: TppLine;
    ppLabel74: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLine16: TppLine;
    ppShape7: TppShape;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppShape11: TppShape;
    ppShape12: TppShape;
    ppDetailBand4: TppDetailBand;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
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
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppDBText39: TppDBText;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppDBText50: TppDBText;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel70: TppLabel;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLabel71: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppGroupFooterBand8: TppGroupFooterBand;
    ppLine10: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLine11: TppLine;
    lblUser: TppLabel;
    ppTitleBand3: TppTitleBand;
    ppLabel73: TppLabel;
    ppLabel76: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppSystemVariable8: TppSystemVariable;
    ppLabel84: TppLabel;
    ppSystemVariable9: TppSystemVariable;
    ppLabel85: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppDBText56: TppDBText;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppLabel107: TppLabel;
    ppLabel108: TppLabel;
    ppdbUSE: TppDBText;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppdbRegPens: TppDBText;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine17: TppLine;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppLabel115: TppLabel;
    ppLabel116: TppLabel;
    ppLabel117: TppLabel;
    ppLabel131: TppLabel;
    ppHeaderBand3: TppHeaderBand;
    ppLabel118: TppLabel;
    ppLabel119: TppLabel;
    ppSystemVariable10: TppSystemVariable;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppSystemVariable11: TppSystemVariable;
    ppLabel122: TppLabel;
    ppSystemVariable12: TppSystemVariable;
    ppLine18: TppLine;
    ppDetailBand3: TppDetailBand;
    ppLabel123: TppLabel;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    ppDBText74: TppDBText;
    ppDBText75: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand3: TppSummaryBand;
    ppLabel124: TppLabel;
    pplblCapAcum: TppLabel;
    RepDevolucionesxEfectuar: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppLabel125: TppLabel;
    ppLine19: TppLine;
    ppLabel126: TppLabel;
    ppLabel127: TppLabel;
    ppLabel128: TppLabel;
    ppLabel129: TppLabel;
    ppLabel130: TppLabel;
    ppLine20: TppLine;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppDetailBand5: TppDetailBand;
    ppDBText76: TppDBText;
    ppDBText77: TppDBText;
    ppDBText78: TppDBText;
    ppDBText79: TppDBText;
    ppDBText80: TppDBText;
    ppLine21: TppLine;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppLine22: TppLine;
    ppGroup11: TppGroup;
    ppGroupHeaderBand11: TppGroupHeaderBand;
    ppGroupFooterBand11: TppGroupFooterBand;
    ppGroup12: TppGroup;
    ppGroupHeaderBand12: TppGroupHeaderBand;
    ppGroupFooterBand12: TppGroupFooterBand;
    ppGroup13: TppGroup;
    ppGroupHeaderBand13: TppGroupHeaderBand;
    ppGroupFooterBand13: TppGroupFooterBand;
    ppGroup14: TppGroup;
    ppGroupHeaderBand14: TppGroupHeaderBand;
    ppGroupFooterBand14: TppGroupFooterBand;
    ppGroup15: TppGroup;
    ppGroupHeaderBand15: TppGroupHeaderBand;
    ppGroupFooterBand15: TppGroupFooterBand;
    lblUsuario: TppLabel;
    procedure dblcNotInList(Sender: TObject; LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
    procedure Z2bbtnAceptarClick(Sender: TObject);
    procedure Z2bbtnCancelClick(Sender: TObject);
    procedure bbtnImprimirClick(Sender: TObject);
    procedure ppRepCtaIndPreviewFormCreate(Sender: TObject);
    procedure ppGroupHeaderBand10BeforePrint(Sender: TObject);
    procedure bbtnAceptarClick(Sender: TObject);
    procedure ppRepAsoPreviewFormCreate(Sender: TObject);
    procedure ppRepControlPreviewFormCreate(Sender: TObject);
    procedure ppDetailBand4BeforePrint(Sender: TObject);
    procedure ppDetailBand5BeforePrint(Sender: TObject);
    procedure fcShapeBtn1Click(Sender: TObject);
    procedure ppDetailBand3BeforePrint(Sender: TObject);
    procedure ppTitleBand3BeforePrint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    xSQL : String;
  end;
var
  FRepX: TFRepX;
  xMonto, xCapital : Real;
  xAsoCodMod, xUseId, xUseAbr, xUproId, xPagoId, xDptoId, xCiudId : String;
  xFlag, xSal, xTransAno : String;
  xSaldoAnt, xSaldoPos, xPorc, xInt, xBon : Double;
  xCapAnt, xCapAct : String;
  FRes, FCes, xUlt : String;
  D, M, Y : Word;
  xPerio, i : Integer;  

implementation

uses APODM;
{$R *.DFM}

procedure TFRepX.dblcNotInList(Sender: TObject; LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
begin
  Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookupField, NewValue,[]);
  if not Accept Then
    TwwDBCustomLookupCombo(Sender).DropDown;
end;

procedure TFRepX.Z2bbtnAceptarClick(Sender: TObject);
begin
   xSQL := 'SELECT APOANO, APOMES, INTERES, BONUS '+
         'FROM APO117';

   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;

   DM1.cdsQry.IndexFieldNames  := 'APOANO; APOMES';

  Screen.Cursor := crHourGlass;
  xSQL := 'SELECT ASOID, USEID, UPROID, UPAGOID, ASOFRESNOM, ASOFRESCESE '+
          'FROM APO201 '+
          'WHERE ASOID='+QuotedStr(edtASOID.Text);

  DM1.cdsQry2.Close;
  DM1.cdsQry2.DataRequest(xSQL);
  DM1.cdsQry2.Open;
  DM1.ProcesarCtaIndividual(edtASOID.Text, pgCta);
  Screen.Cursor := crDefault;
  Beep;
  MessageDlg('Cuenta Individual Calculada', mtCustom, [mbOk], 0);
  bbtnImprimir.Enabled := True;     
  DM1.cdsQry.IndexFieldNames  := '';
  //Close;
end;

procedure TFRepX.Z2bbtnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TFRepX.bbtnImprimirClick(Sender: TObject);
var
  i, j, x10 : Integer;
  Ano, Mes, Dia : Word;
  xSQL, xWhere, xTransMes : String;
begin
  Screen.Cursor := crHourGlass;

   xSQL := 'SELECT ASOFRESNOM, ASOFRESCESE FROM APO201'
          +' WHERE ASOID ='+QuotedStr(edtAsoID.Text);

   DM1.cdsAportes.Filter   := '';
   DM1.cdsAportes.Filtered := False;
   DM1.cdsAportes.IndexFieldNames := '';
   DM1.cdsAportes.Close;
   DM1.cdsAportes.DataRequest(xSQL);
   DM1.cdsAportes.Open;

   FRes := DM1.cdsAportes.FieldByName('ASOFRESNOM').AsString;
   FCes := DM1.cdsAportes.FieldByName('ASOFRESCESE').AsString;
   If (Length(Trim(FRes)) > 0) And (Length(Trim(FCes)) > 0) Then
    begin
     DecodeDate(StrToDateTime(FCes), Y, M, D);
     xTransMes := CurrToStr(Y)+DM1.StrZero(CurrToStr(M), 2);
    end;

   xSQL :='SELECT A.APOSEC, A.DEVANO, A.DEVMES, A.TRANSID, J.ASOID, J.ASORESNOM, J.ASOFRESNOM, '+
          'A.DPTOABR, A.USEABR, A.FREG, A.USEID USE, A.UPAGOID UPAGO, A.UPROID UPRO, '+
          'J.ASORESCESE, ASOFRESCESE, A.ASOCODMOD, A.ASOAPENOM, J.USEID, J.UPROID, J.UPAGOID, '+
          'A.TRANSNOPE, A.TRANSFOPE, A.TRANSANO, A.TRANSMES, J.REGPENID, A.SALDOBONUS, '+
          '1996-DECODE(GREATEST(TO_CHAR(ASOFRESNOM,''YYYY''),''1996''),''1996'', TO_CHAR(ASOFRESNOM,''YYYY''),1996) AAPOR, '+
          //'DECODE(A.TRANSINTID,''APO'', A.TRANSMTO,0) TRANSMTO, A.SALDOANT,'
          'CASE WHEN A.TRANSINTID=''APO'' THEN A.TRANSMTO ELSE 0 END  TRANSMTO, A.SALDOANT, '+
          //+' DECODE(A.TRANSID,''APORTE'', A.INTERESMTO,0) INTERESMTO, A.SALDO,'
          'CASE WHEN A.TRANSID=''APORTE'' THEN A.INTERESMTO ELSE 0 END INTERESMTO, A.SALDO, '+
          //'DECODE(A.TRANSINTID,''APO'', A.BONUSMTO,0) BONUSMTO,
          'CASE WHEN A.TRANSINTID=''APO'' THEN A.BONUSMTO ELSE 0 END BONUSMTO, '+
          'A.TRANSMTODEV, A.UPROABR, A.UPAGOABR, '+
          'V.FORPAGODES AS FORPAGOABR, A.FORPAGOID, DECODE(TRANSID,''APORTE'', A.TRANSMTODEV,0) SUMA, '+
          'J.DPTOID, J.CIUDID, '+
          'CAST(''AAAA'' AS VARCHAR2(15)) MES, '+
          'CAST(''AAAA'' AS VARCHAR2(50)) USEN, '+
          'CAST(''AAAA'' AS VARCHAR2(50)) UPAGON, '+
          'CAST(''AAAA'' AS VARCHAR2(50)) UPRON, '  +
          'CAST(''AAAA'' AS VARCHAR2(15)) REGIMEN '+
          'FROM APO301 A, APO201 J, COB101 V '+
          'WHERE A.ASOID ='+QuotedStr(edtAsoID.Text)+' '+
          'AND A.ASOID = J.ASOID AND TRIM(A.FORPAGOID) = V.FORPAGOID(+) AND ';

   If (Length(Trim(FRes)) > 0) and (Length(Trim(FCes)) > 0) Then
//18-03-2003     xSQL := xSQL+ ' (A.APOSEC >= TO_CHAR('+wRepFuncDate+QuotedStr(FRes)+'),''YYYY'')||TO_CHAR('+wRepFuncDate+QuotedStr(FRes)+'),''MM'') '+
//18-03-2003               'AND A.APOSEC <= TO_CHAR(' +wRepFuncDate+QuotedStr(FCes)+'),''YYYY'')||TO_CHAR('+wRepFuncDate+QuotedStr(FCes)+'),''MM'')) AND '
    xSQL := xSQL+ ' (A.TRANSANO||A.TRANSMES >= TO_CHAR('+wRepFuncDate+QuotedStr(FRes)+'),''YYYY'')||TO_CHAR('+wRepFuncDate+QuotedStr(FRes)+'),''MM'') '+
                  'AND A.TRANSANO||A.TRANSMES <= TO_CHAR(' +wRepFuncDate+QuotedStr(FCes)+'),''YYYY'')||TO_CHAR('+wRepFuncDate+QuotedStr(FCes)+'),''MM'')) AND '
   Else
    If (Length(Trim(FRes)) > 0) Then
//18-03-2003     xSQL := xSQL + ' A.APOSEC >= TO_CHAR('+wRepFuncDate+QuotedStr(FRes)+'),''YYYY'')||TO_CHAR('+wRepFuncDate+QuotedStr(FRes)+'),''MM'') AND '
     xSQL := xSQL + ' A.TRANSANO||A.TRANSMES >= TO_CHAR('+wRepFuncDate+QuotedStr(FRes)+'),''YYYY'')||TO_CHAR('+wRepFuncDate+QuotedStr(FRes)+'),''MM'') AND '
    Else
     If (Length(Trim(FCes)) > 0) Then
//18-03-2003      xSQL := xSQL + ' A.APOSEC <= TO_CHAR('+wRepFuncDate+QuotedStr(FCes)+'),''YYYY'')||TO_CHAR('+wRepFuncDate+QuotedStr(FCes)+'),''MM'') AND ';
      xSQL := xSQL + ' A.TRANSANO||A.TRANSMES <= TO_CHAR('+wRepFuncDate+QuotedStr(FCes)+'),''YYYY'')||TO_CHAR('+wRepFuncDate+QuotedStr(FCes)+'),''MM'') AND ';

   xSQL := xSQL+
    //' (A.APOSEC >= TO_CHAR(J.ASOFRESNOM,''YYYY'')||TO_CHAR(J.ASOFRESNOM,''MM'')) '+
    //'AND (A.APOSEC <= TO_CHAR(J.ASOFRESCESE,''YYYY'')||TO_CHAR(J.ASOFRESCESE,''MM'')) '+
     ' J.ASOID = A.ASOID AND TRIM(A.FORPAGOID) = V.FORPAGOID(+)'
    +' ORDER BY APOSEC';

   DM1.cdsReporte3.Filter   := '';
   DM1.cdsReporte3.Filtered := False;
   DM1.cdsReporte3.IndexFieldNames := '';
   DM1.cdsReporte3.Close;
   DM1.cdsReporte3.DataRequest(xSQL);
   DM1.cdsReporte3.Open;
   DM1.cdsReporte3.IndexFieldNames := 'APOSEC; TRANSFOPE';
   DM1.cdsReporte3.First;
   xCapital := DM1.cdsReporte3.FieldByName('SALDOANT').AsFloat;
   DM1.cdsReporte3.Last;
   If Length(xTransMes) = 0 Then
    begin     DecodeDate(Date, Ano, Mes, Dia);     xTransMes := CurrToStr(Ano)+DM1.StrZero(CurrToStr(Mes), 2);    end;   xMonto    := DM1.cdsReporte3.FieldByName('SALDO').AsFloat;
   xUlt      := DM1.cdsReporte3.FieldByName('APOSEC').AsString;
   xUseAbr   := DM1.cdsReporte3.FieldByName('USEABR').AsString;
   xUseId    := DM1.cdsReporte3.FieldByName('USE').AsString;
   xUProId   := DM1.cdsReporte3.FieldByName('UPRO').AsString;
   xPagoId   := DM1.cdsReporte3.FieldByName('UPAGO').AsString;
   xDptoId   := DM1.cdsReporte3.FieldByName('DPTOID').AsString;
   xCiudId   := DM1.cdsReporte3.FieldByName('CIUDID').AsString;

//Para Agregar Meses Fantasmas
   xFlag := 'N'; xSaldoAnt := 0; xSaldoPos := 0; xSal := 'N';
   DM1.cdsReporte3.First;
   xCapAnt := DM1.cdsReporte3.FieldByName('SALDOANT').AsString;
   xTransAno :=  DM1.cdsReporte3.FieldByName('TRANSANO').AsString;

   xSQL :='SELECT DISTINCT TRANSANO FROM APO301 '+
          'WHERE ASOID='+QuotedStr(edtASOID.Text)+' '+
          'AND TRANSINTID='+QuotedStr('APO');

   DM1.cdsQry1.Filter   := '';
   DM1.cdsQry1.Filtered := False;
   DM1.cdsQry1.IndexFieldNames := '';
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xSQL);
   DM1.cdsQry1.Open;
   DM1.cdsQry1.IndexFieldNames := 'TRANSANO';
//18-03-03   DM1.cdsQry1.IndexFieldNames := 'APOSEC';

   If Length(Trim(FCes)) = 0 Then
    begin
     //DM1.cdsQry1.Last;
//18-03-03     Y := DM1.cdsQry1.FieldByName('APOSEC').AsVariant;
     //Y := DM1.cdsQry1.FieldByName('TRANSANO').AsVariant;
     y := Ano;
    end;

//GAR
//Para Rellenar los Años desde el Mes 1 hasta 12
//Hasta el Ultimo Año Aportado

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
   DM1.cdsReporte3.IndexFieldNames := '';
   DM1.cdsReporte3.IndexFieldNames := 'TRANSANO; TRANSMES';
   DM1.cdsQry2.First;
   While Not DM1.cdsQry2.EOF do
    begin
     xTransAno := Copy(DM1.cdsQry2.FieldByName('APOSEC').AsString, 1, 4);
     xTransMes := Copy(DM1.cdsQry2.FieldByName('APOSEC').AsString, 5, 2);
     DM1.cdsReporte3.SetKey;
//18-03-2003     DM1.cdsReporte.FieldByName('APOSEC').AsString := xTransAno+xTransMes;
     DM1.cdsReporte3.FieldByName('TRANSANO').AsString := xTransAno;
     DM1.cdsReporte3.FieldByName('TRANSMES').AsString := xTransMes;
//17-03-2002      DM1.cdsReporte.FieldByName('APOSEC').AsString := DM1.cdsQry2.FieldByName('APOSEC').AsString;
//17-02-2002     xTransAno := Copy(DM1.cdsQry2.FieldByName('APOSEC').AsString, 1, 4);
//17-02-2002     xTransMes := Copy(DM1.cdsQry2.FieldByName('APOSEC').AsString, 5, 2);
     If Not DM1.cdsReporte3.GotoKey Then
      begin
       DM1.cdsReporte3.Insert;
       DM1.cdsReporte3.FieldByName('APOSEC').AsString      := DM1.cdsQry2.FieldByName('APOSEC').AsString;
       DM1.cdsReporte3.FieldByName('TRANSID').AsString     := 'APORTE';
       DM1.cdsReporte3.FieldByName('ASOID').AsString       := edtASOID.Text;
       DM1.cdsReporte3.FieldByName('ASORESNOM').AsString   := '';//FExpedienteLiquidacion.dbeNroResNomb.Text;
       DM1.cdsReporte3.FieldByName('ASOFRESNOM').AsString  := '';//FExpedienteLiquidacion.dbdtpFecResNomb.Text;
       DM1.cdsReporte3.FieldByName('ASORESCESE').AsString  := '';//FExpedienteLiquidacion.dbeNroResCese.Text;
       DM1.cdsReporte3.FieldByName('ASOFRESCESE').AsString := '';//FExpedienteLiquidacion.dbdtpFecResCese.Text;
       DM1.cdsReporte3.FieldByName('AAPOR').AsFloat        := 0;

       xWhere := 'APOANO ='+QuotedStr(xTransAno)+' AND APOMES ='+QuotedStr(xTransMes);
       DM1.DisplayDescrip('prvTGE', 'APO117', 'INTERES, BONUS', xWhere, 'INTERES');

       xPorc := DM1.cdsQry.FieldByName('INTERES').AsFloat;
       xPorc := xPorc/100;

       xInt := FRound(xSaldoAnt * xPorc, 15, 2);
//       xInt := xSaldoAnt * xPorc;
       If DM1.cdsQry.FieldByName('BONUS').AsFloat > 0 Then
        xBon := FRound((xSaldoPos * DM1.cdsQry.FieldByName('BONUS').AsFloat)/100, 15, 2)
//        xBon := (xSaldoPos * DM1.cdsQry.FieldByName('BONUS').AsFloat)/100
//        xBon := DM1.FRound(xSaldoPos, 15, 2) - xInt
//        xBon := DM1.FRound(xSaldoPos - xSaldoAnt, 15, 2) - xInt
       Else
        xBon := 0;

       DM1.cdsReporte3.FieldByName('SALDOANT').AsFloat    := xSaldoAnt;
       DM1.cdsReporte3.FieldByName('INTERESMTO').AsFloat  := xInt;
       DM1.cdsReporte3.FieldByName('BONUSMTO').AsFloat    := xBon;
       DM1.cdsReporte3.FieldByName('SALDO').AsFloat       := FRound(xSaldoAnt + xInt + xBon, 15, 2);
//06       DM1.cdsReporte.FieldByName('SALDO').AsFloat       := xSaldoAnt + xInt + xBon;
       If xBon = 0 Then
        DM1.cdsReporte3.FieldByName('SALDOBONUS').AsFloat := xSaldoPos
       Else
        DM1.cdsReporte3.FieldByName('SALDOBONUS').AsFloat := FRound(xSaldoAnt + xInt + xBon, 15, 2);
//06        DM1.cdsReporte.FieldByName('SALDOBONUS').AsFloat := xSaldoAnt + xInt + xBon;
       DM1.cdsReporte3.FieldByName('ASOCODMOD').AsString  := '';//FExpedienteLiquidacion.dbeCodModular.Text;
       DM1.cdsReporte3.FieldByName('ASOAPENOM').AsString  := edtAsociado.Text;//FExpedienteLiquidacion.dbeApeNom.Text;
       DM1.cdsReporte3.FieldByName('USEID').AsString      := xUseId;
       DM1.cdsReporte3.FieldByName('USEABR').AsString     := xUseAbr;
       DM1.cdsReporte3.FieldByName('UPROID').AsString     := xUProId;
       DM1.cdsReporte3.FieldByName('UPAGOID').AsString    := xPagoId;
       DM1.cdsReporte3.FieldByName('DPTOID').AsString     := xDptoId;
       DM1.cdsReporte3.FieldByName('CIUDID').AsString     := xCiudId;
       DM1.cdsReporte3.FieldByName('TRANSANO').AsString   := xTransAno;
       DM1.cdsReporte3.FieldByName('TRANSMES').AsString   := xTransMes;
       DM1.cdsReporte3.FieldByName('TRANSMTO').AsFloat    := 0;
       DM1.cdsReporte3.FieldByName('TRANSMTODEV').AsFloat := 0;
       xSaldoAnt := DM1.cdsReporte3.FieldByName('SALDO').AsFloat;
       xSaldoPos := DM1.cdsReporte3.FieldByName('SALDOBONUS').AsFloat;
       DM1.cdsReporte3.Post;
      end
     Else
      begin
       xSaldoAnt := DM1.cdsReporte3.FieldByName('SALDO').AsFloat;
       xSaldoPos := DM1.cdsReporte3.FieldByName('SALDOBONUS').AsFloat;
      end;
     DM1.cdsQry2.Next;
    end;

//////////////////////////////////////////////////////////////////////////////////////////////////////////

   //FDatosAportes.lblTitulo.Caption := 'Asociado : '+FExpedienteLiquidacion.dbeApeNom.Text;
   //FDatosAportes.lblCodigo.Caption := 'Código Modular : '+DM1.cdsExpLiq.FieldByName('ASOCODMOD').AsString;

//Para las Devoluciones Por Efectuar
  if (Length(Trim(FRes)) > 0) and (Length(Trim(FCes)) > 0) Then
  begin
    xSQL :='SELECT TRANSFOPE, TRANSNOPE, TRANSANO, TRANSMES, '+
           'CAST(''AAA'' AS VARCHAR2(15)) MES, TRANSMTO, INTERESMTO '+
           'FROM APO301 '+
           'WHERE ASOID='+QuotedStr(edtASOID.Text)+' '+
           'AND TRANSINTID='+QuotedStr('APO');
           //'AND TRANSMTODEV IS NULL';

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
            'WHERE ASOID='+QuotedStr(edtASOID.Text)+' '+
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
          'WHERE ASOID='+QuotedStr(edtASOID.Text)+' '+
          'AND TRANSINTID='+QuotedStr('APO')+' '+
          'AND TRANSMTODEV IS NOT NULL';

  if (Length(Trim(FRes)) > 0) And (Length(Trim(FCes)) > 0) Then
  begin
    xSQL := xSQL + ' AND APOSEC > TO_CHAR('+wRepFuncDate+QuotedStr(FCes)+'),''YYYY'')||TO_CHAR('+wRepFuncDate+QuotedStr(FCes)+'),''MM'')'
                  +' Order By APOSEC';

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
        xWhere :='ASOID='+QuotedStr(edtASOID.Text)+' '+
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

  Screen.Cursor := crDefault;
  pnlTipoRep.Visible  := True;
  rgTipoRep.ItemIndex := 0;

  {ppRepCtaInd.Template.LoadFromFile;
  pplabel30.Caption := FloatToStrF(xMonto, ffNumber, 15, 2);
  ppRepCtaInd.Print;
  ppRepCtaInd.Stop;

  xSQL:= 'SELECT APOANO, APOMES, INTERES, BONUS '+
         'FROM APO117';

  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSQL);
  DM1.cdsQry.Open;
  DM1.cdsQry.IndexFieldNames  := 'APOANO; APOMES';
  Screen.Cursor := crDefault;

  x10 := Self.ComponentCount - 1;
  while x10 >= 0 do
  begin
    If Self.Components[x10].ClassName = 'TppGroup' Then
    begin
      Self.Components[x10].Free;
    end;
    x10 := x10-1;
  end;}
end;

procedure TFRepX.ppRepCtaIndPreviewFormCreate(Sender: TObject);
begin
   ppRepCtaInd.PreviewForm.WindowState := wsMaximized;
   TppViewer(ppRepCtaInd.PreviewForm.Viewer).ZoomSetting := zsPageWidth;
end;

procedure TFRepX.ppGroupHeaderBand10BeforePrint(Sender: TObject);
var
   xWhere : String;
begin
   DM1.cdsReporte3.Edit;
   xWhere := 'USEID ='+QuotedStr(DM1.cdsReporte3.FieldByName('USE').AsString)
            +' And UPAGOID ='+QuotedStr(DM1.cdsReporte3.FieldByName('UPAGO').AsString)
            +' And UPROID ='+QuotedStr(DM1.cdsReporte3.FieldByName('UPRO').AsString);
   DM1.cdsReporte3.FieldByName('USEN').AsString    := DM1.DisplayDescrip('prvSQL', 'APO101', 'USENOM', xWhere, 'USENOM');
   xWhere := 'UPROID ='+QuotedStr(DM1.cdsReporte3.FieldByName('UPRO').AsString);
   DM1.cdsReporte3.FieldByName('UPRON').AsString   := DM1.DisplayDescrip('prvSQL', 'APO102', 'UPRONOM', xWhere, 'UPRONOM');
   xWhere := 'UPAGOID ='+QuotedStr(DM1.cdsReporte3.FieldByName('UPAGO').AsString)
            +' And UPROID ='+QuotedStr(DM1.cdsReporte3.FieldByName('UPRO').AsString);
   DM1.cdsReporte3.FieldByName('UPAGON').AsString  := DM1.DisplayDescrip('prvSQL', 'APO103', 'UPAGONOM', xWhere, 'UPAGONOM');
   xWhere := 'REGPENID ='+QuotedStr(DM1.cdsReporte3.FieldByName('REGPENID').AsString);
   DM1.cdsReporte3.FieldByName('REGIMEN').AsString := DM1.DisplayDescrip('prvSQL', 'APO105', 'REGPENDES', xWhere, 'REGPENDES');
   xWhere := 'APOANO ='+QuotedStr(DM1.cdsReporte3.FieldByName('AAPOR').AsString);
   ppLabel75.Caption := FloatToStrF(StrToFloat(DM1.DisplayDescrip('prvSQL', 'APO121', 'BENMONTO', xWhere, 'BENMONTO')), ffNumber, 15, 2);
end;

procedure TFRepX.bbtnAceptarClick(Sender: TObject);
var
   x10 : Integer;
begin
  If DM1.cdsReporte3.RecordCount = 0 Then
  begin
     Beep;
     MessageDlg('No Existen Datos a Visualizar', mtInformation, [mbOk], 0);
     Screen.Cursor := crDefault;
     Exit;
  end;

  Screen.Cursor := crHourGlass;
  DM1.cdsReporte3.Last;
  xMonto             := DM1.cdsReporte3.FieldByName('SALDO').AsFloat;
  pnlTipoRep.Visible := False;
  If rgTipoRep.ItemIndex = 0 Then //Si es por Control
  begin
    DM1.cdsReporte3.DisableControls;
    ppDBPipeline1.DataSource   := DM1.dsReporte3;
    ppRepAso.Template.FileName := wRutaRpt +'\Cuenta Individual.rtm';
    DM1.cdsReporte3.EnableControls;
    ppRepAso.Template.LoadFromFile;
    pplabel41.Caption          := FloatToStrF(xMonto, ffNumber, 15, 2);
    ppLabel68.Caption          := FloatToStrF(xCapital, ffNumber, 15, 2);
    lblUser.Caption := dm1.wUsuario;
    ppRepAso.Print;
    ppRepAso.Stop;
    Screen.Cursor := crDefault;
  end
  else //Si es para Asociado
  begin
    DM1.cdsReporte3.DisableControls;
    ppDBPipeline1.DataSource       := DM1.dsReporte3;
    ppRepControl.Template.FileName := wRutaRpt +'\Cuenta Individual Control.rtm';
    DM1.cdsReporte3.EnableControls;
    ppRepControl.Template.LoadFromFile ;
    pplblCapAcum.Caption           := FloatToStrF(xMonto, ffNumber, 15, 2);
    ppLabel112.Caption              := FloatToStrF(xCapital, ffNumber, 15, 2);
    lblUsuario.Caption  := dm1.wUsuario;
    ppRepControl.Print ;
    ppRepControl.Stop;
    Screen.Cursor := crDefault;
  end;
{
  x10 := Self.ComponentCount - 1;
  while x10 >= 0 do
  begin
    If Self.Components[x10].ClassName = 'TppGroup' Then
    begin
      Self.Components[x10].Free;
    end;
    x10 := x10-1;
  end;
  ppDBPipeline1.DataSource := nil;}
end;

procedure TFRepX.ppRepAsoPreviewFormCreate(Sender: TObject);
begin
	ppRepAso.PreviewForm.ClientHeight := 500;
	ppRepAso.PreviewForm.ClientWidth  := 650;
	TppViewer(ppRepAso.PreviewForm.Viewer).ZoomSetting := zsPagewidth;

  //ppRepAso.PreviewForm.WindowState := wsMaximized;
  //TppViewer(ppRepAso.PreviewForm.Viewer).ZoomSetting := zsPageWidth;
end;

procedure TFRepX.ppRepControlPreviewFormCreate(Sender: TObject);
begin
	ppRepControl.PreviewForm.ClientHeight := 500;
	ppRepControl.PreviewForm.ClientWidth  := 650;
	TppViewer(ppRepControl.PreviewForm.Viewer).ZoomSetting := zsPagewidth;

  //ppRepControl.PreviewForm.WindowState := wsMaximized;
  //TppViewer(ppRepControl.PreviewForm.Viewer).ZoomSetting := zsPageWidth;
end;

procedure TFRepX.ppDetailBand4BeforePrint(Sender: TObject);
begin
   DM1.cdsQry3.Edit;
   DM1.cdsQry3.FieldByName('MES').AsString := DM1.NombreMes(DM1.cdsQry3.FieldByName('TRANSMES').AsString);
end;

procedure TFRepX.ppDetailBand5BeforePrint(Sender: TObject);
begin
   DM1.cdsQry3.Edit;
   DM1.cdsQry3.FieldByName('MES').AsString := DM1.NombreMes(DM1.cdsQry3.FieldByName('TRANSMES').AsString);
end;

procedure TFRepX.fcShapeBtn1Click(Sender: TObject);
begin
  pnlTipoRep.Visible := False;
end;

procedure TFRepX.ppDetailBand3BeforePrint(Sender: TObject);
var
   xMes : Integer;
begin
   xMes := StrToInt(DM1.cdsReporte3.FieldByName('TRANSMES').AsString);
   DM1.cdsReporte3.Edit;
   DM1.cdsReporte3.FieldByName('MES').AsString := UpperCase(DM1.NombreMes(IntToStr(xMes)));
end;

procedure TFRepX.ppTitleBand3BeforePrint(Sender: TObject);
var
   xWhere, xUse, xUPago, xUPro, xReg : String;
begin
   DM1.cdsReporte3.Edit;
   xWhere :='ASOID ='+QuotedStr(edtASOID.Text)+' '+
            'AND ASOCODMOD ='+QuotedStr(DM1.cdsReporte3.FieldByName('ASOCODMOD').AsString);

   xUse   := DM1.DisplayDescrip('prvSQL', 'APO201', 'USEID, UPROID, UPAGOID, REGPENID', xWhere, 'USEID');
   xUpago := DM1.cdsQry.FieldByName('UPAGOID').AsString;
   xUPro  := DM1.cdsQry.FieldByName('UPROID').AsString;
   xReg   := DM1.cdsQry.FieldByName('REGPENID').AsString;

   xWhere := 'USEID ='+QuotedStr(xUse)
            +' And UPAGOID ='+QuotedStr(xUpago)
            +' And UPROID ='+QuotedStr(xUPro);
   DM1.cdsReporte3.FieldByName('USEN').AsString  := DM1.DisplayDescrip('prvSQL', 'APO101', 'USENOM', xWhere, 'USENOM');
   xWhere := 'UPROID ='+QuotedStr(xUPro);
   DM1.cdsReporte3.FieldByName('UPRON').AsString := DM1.DisplayDescrip('prvSQL', 'APO102', 'UPRONOM', xWhere, 'UPRONOM');
   xWhere := 'UPAGOID ='+QuotedStr(xUPago)
            +' And UPROID ='+QuotedStr(xUPro);
   DM1.cdsReporte3.FieldByName('UPAGON').AsString := DM1.DisplayDescrip('prvSQL', 'APO103', 'UPAGONOM', xWhere, 'UPAGONOM');
   xWhere := 'REGPENID ='+QuotedStr(xReg);
   DM1.cdsReporte3.FieldByName('REGIMEN').AsString := DM1.DisplayDescrip('prvSQL', 'APO105', 'REGPENDES', xWhere, 'REGPENDES');
end;

procedure TFRepX.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ppdbRepCtaInd.DataSource:=Nil;
  ppDBPipeline1.DataSource:=Nil;
  ppDBPipeline3.DataSource:=Nil;
  ppDBPipeline2.DataSource:=Nil;
   DM1.cdsReporte3.Filter          := '';
   DM1.cdsReporte3.Filtered        := False;
   DM1.cdsReporte3.IndexFieldNames := '';
   DM1.cdsReporte3.Close;
   DM1.cdsAportes.Filter   := '';
   DM1.cdsAportes.Filtered := False;
   DM1.cdsAportes.IndexFieldNames := '';
   DM1.cdsAportes.Close;
end;

end.
