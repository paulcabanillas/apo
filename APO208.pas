unit APO208;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, Wwdbigrd, Grids, Wwdbgrid, fcLabel,db, ppCtrls, ppBands,
  ppClass, ppVar, ppPrnabl, ppProd, ppReport, ppDB, ppComm, ppRelatv,
  ppCache, ppDBPipe, fcButton, fcImgBtn, fcShapeBtn, ppViewr, ComCtrls;

type
  TFDAportes = class(TForm)
    dbgDatosAportes: TwwDBGrid;
    lblCodigo: TfcLabel;
    lblTitulo: TfcLabel;
    btnImprime: TfcShapeBtn;
    ppdbRepApo: TppDBPipeline;
    ppRepApo: TppReport;
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
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
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
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel7: TppLabel;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppLine5: TppLine;
    pgCta: TProgressBar;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnImprimeClick(Sender: TObject);
    procedure ppRepApoPreviewFormCreate(Sender: TObject);
    procedure ppGroupHeaderBand10BeforePrint(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ppGroupHeaderBand3BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    sSQL:string;
    { Public declarations }
  end;

var
  FDAportes: TFDAportes;
  xMonto, xCapital : Real;
  FRes, FCes, xUlt : String;
  xCapAnt, xCapAct : String;
  xSaldoAnt, xSaldoPos, xPorc, xInt, xBon : Double;
  D, M, Y : Word;
  xAsoCodMod, xUseId, xUseAbr, xUproId, xPagoId, xDptoId, xCiudId : String;
  xFlag, xSal, xTransAno : String;
  Ano, Mes, Dia : Word;

implementation

uses APODM;

{$R *.DFM}

procedure TFDAportes.FormActivate(Sender: TObject);
var
   xSQL, xWhere, xTransMes : String;
   i, j : Integer;
begin
   Screen.Cursor := crHourGlass;
   DM1.ProcesarCtaIndividual(DM1.cdsAso.FieldByName('ASOID').AsString, pgCta);
   xSQL := 'SELECT ASOFRESNOM, ASOFRESCESE FROM APO201'
          +' WHERE ASOID ='+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);

   DM1.cdsAportes.Filter   := '';
   DM1.cdsAportes.Filtered := False;
   DM1.cdsAportes.IndexFieldNames := '';
   DM1.cdsAportes.Close;
   DM1.cdsAportes.DataRequest(xSQL);
   DM1.cdsAportes.Open;

   FRes := DM1.cdsAportes.FieldByName('ASOFRESNOM').AsString;
   FCes := DM1.cdsAportes.FieldByName('ASOFRESCESE').AsString;
   If (Length(FRes) > 0) And (Length(FCes) > 0) Then
    begin
     DecodeDate(StrToDateTime(FCes), Y, M, D);
     xTransMes := CurrToStr(Y)+DM1.StrZero(CurrToStr(M), 2);
    end
   Else
    begin
     FCes := '';
    end;

   xSQL := 'SELECT '+wRepFuncChar+wRepFecServi+', '+QuotedStr(wFormatFServ)+') "FECHA", '+wRepFecServi+' HORA FROM DUAL';

   DM1.cdsReporte1.Filter   := '';
   DM1.cdsReporte1.Filtered := False;
   DM1.cdsReporte1.IndexFieldNames := '';
   DM1.cdsReporte1.Close;
   DM1.cdsReporte1.DataRequest(xSQL);
   DM1.cdsReporte1.Open;
   xFec_Sis := DM1.cdsReporte1.FieldByName('FECHA').AsString;
   xHor_Sis := DM1.cdsReporte1.FieldByName('HORA').AsString;

   xSQL := 'Select A.APOSEC, A.DEVANO, A.DEVMES, A.TRANSID, J.ASOID, J.ASORESNOM, J.ASOFRESNOM,'
          +' A.DPTOABR, A.USEABR, A.FREG, A.USEID, A.UPAGOID UPAGO, A.UPROID UPRO,'
          +' J.ASORESCESE, J.ASOFRESCESE, A.ASOCODMOD, A.ASOAPENOM, J.USEID USE, J.UPROID, J.UPAGOID,'
          +' A.TRANSNOPE, A.TRANSFOPE, A.TRANSANO, A.TRANSMES, J.REGPENID, A.SALDOBONUS,'
          +' 1996-DECODE(GREATEST(to_char(ASOFRESNOM,''YYYY''),''1996''),''1996'', to_char(ASOFRESNOM,''YYYY''),1996) AAPOR,'
          +' DECODE(TRIM(A.TRANSINTID), ''APO'', NVL(A.TRANSMTO, 0), 0) TRANSMTO,'
          +' NVL(A.SALDOANT, 0) SALDOANT, DECODE(TRIM(A.TRANSID), ''APORTE'', NVL(A.INTERESMTO, 0), 0) INTERESMTO, NVL(A.SALDO, 0) SALDO,'
          +' DECODE(TRIM(A.TRANSINTID), ''APO'', NVL(A.BONUSMTO, 0), 0) BONUSMTO, NVL(A.TRANSMTODEV, 0) TRANSMTODEV, A.UPROABR, A.UPAGOABR, '
          +' V.FORPAGODES AS FORPAGOABR,'
//                +' ,DECODE(TRANSINTID,''DEV'',''DEV''||'' ''||V.FORPAGOABR||'' ''||DEVANO||''/''||DEVMES,V.FORPAGOABR ) AS FORPAGOABR '
          +' A.FORPAGOID, DECODE(TRIM(TRANSID), ''APORTE'', A.TRANSMTODEV, 0) SUMA, J.DPTOID, J.CIUDID,'
          +' Cast(''AAAA'' As Varchar2(15)) MES,'
          +' Cast(''AAAA'' As Varchar2(35)) USEN,'
          +' Cast(''AAAA'' As Varchar2(35)) UPAGON,'
          +' Cast(''AAAA'' As Varchar2(35)) UPRON,'
          +' Cast(''AAAA'' As Varchar2(15)) REGIMEN'
          +' FROM APO301 A, APO201 J, COB101 V '
          +' WHERE A.ASOID ='+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)
          +' AND A.TRANSINTID ='+QuotedStr('APO')+' AND ';

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

   DM1.cdsReporte.DisableControls;
   DM1.cdsReporte.Filter   := '';
   DM1.cdsReporte.Filtered := False;
   DM1.cdsReporte.IndexFieldNames := '';
   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest(xSQL);
   DM1.cdsReporte.Open;
   DM1.cdsReporte.First;
   xCapital := DM1.cdsReporte.FieldByName('SALDOANT').AsFloat;
   DM1.cdsReporte.Last;
   If Length(xTransMes) = 0 Then
    begin
     DecodeDate(Date, Ano, Mes, Dia);
     xTransMes := CurrToStr(Ano)+DM1.StrZero(CurrToStr(Mes), 2);
    end;

   xMonto   := DM1.cdsReporte.FieldByName('SALDO').AsFloat;
   xUlt     := DM1.cdsReporte.FieldByName('APOSEC').AsString;
   xUseId   := DM1.cdsReporte.FieldByName('USE').AsString;
   xUProId  := DM1.cdsReporte.FieldByName('UPRO').AsString;
   xPagoId  := DM1.cdsReporte.FieldByName('UPAGO').AsString;
   xDptoId  := DM1.cdsReporte.FieldByName('DPTOID').AsString;
   xCiudId  := DM1.cdsReporte.FieldByName('CIUDID').AsString;

   dbgDatosAportes.Selected.Clear;
   dbgDatosAportes.Selected.Add('TRANSID'#9'10'#9'Transacción'#9'T');
   dbgDatosAportes.Selected.Add('TRANSANO'#9'6'#9'Año'#9'T');
   dbgDatosAportes.Selected.Add('TRANSMES'#9'6'#9'Mes'#9'T');
   dbgDatosAportes.Selected.Add('TRANSNOPE'#9'10'#9'Nro Operación'#9'T');
   dbgDatosAportes.Selected.Add('TRANSFOPE'#9'10'#9'Fecha~Operación'#9'T');
   dbgDatosAportes.Selected.Add('SALDOANT'#9'10'#9'Capital~Acumulado'#9'T');
   dbgDatosAportes.Selected.Add('INTERESMTO'#9'10'#9'Interés~Monto'#9'T');
   dbgDatosAportes.Selected.Add('BONUSMTO'#9'10'#9'Bonus~Monto'#9'T');
   dbgDatosAportes.Selected.Add('TRANSMTO'#9'10'#9'Aporte'#9'T');
   dbgDatosAportes.Selected.Add('TRANSMTODEV'#9'10'#9'Devolución'#9'T');
   dbgDatosAportes.Selected.Add('SALDO'#9'10'#9'Saldo'#9'T');
   dbgDatosAportes.ApplySelected;

   TNumericField(DM1.cdsReporte.FieldByName('TRANSMTO')).DisplayFormat    := '###,###,##0.00';
   TNumericField(DM1.cdsReporte.FieldByName('TRANSMTO')).EditFormat       := '########0.00';
   TNumericField(DM1.cdsReporte.FieldByName('TRANSMTODEV')).DisplayFormat := '###,###,##0.00';
   TNumericField(DM1.cdsReporte.FieldByName('TRANSMTODEV')).EditFormat    := '########0.00';
   TNumericField(DM1.cdsReporte.FieldByName('INTERESMTO')).DisplayFormat  := '###,###,##0.00';
   TNumericField(DM1.cdsReporte.FieldByName('INTERESMTO')).EditFormat     := '########0.00';
   TNumericField(DM1.cdsReporte.FieldByName('BONUSMTO')).DisplayFormat    := '###,###,##0.00';
   TNumericField(DM1.cdsReporte.FieldByName('BONUSMTO')).EditFormat       := '########0.00';
   TNumericField(DM1.cdsReporte.FieldByName('SALDO')).DisplayFormat       := '###,###,##0.00';
   TNumericField(DM1.cdsReporte.FieldByName('SALDO')).EditFormat          := '########0.00';
   TNumericField(DM1.cdsReporte.FieldByName('SALDOANT')).DisplayFormat    := '###,###,##0.00';
   TNumericField(DM1.cdsReporte.FieldByName('SALDOANT')).EditFormat       := '########0.00';

   DM1.cdsReporte.EnableControls;

   dbgDatosAportes.ColumnByName('TRANSMTO').FooterValue    := FloatToStrF(DM1.OperClientDataSet(DM1.cdsReporte, 'SUM(TRANSMTO)', ''), ffNumber, 15, 2);
   dbgDatosAportes.ColumnByName('TRANSMTODEV').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsReporte, 'SUM(TRANSMTODEV)', ''), ffNumber, 15, 2);
   dbgDatosAportes.ColumnByName('INTERESMTO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsReporte, 'SUM(INTERESMTO)', ''), ffNumber, 15, 2);
   dbgDatosAportes.ColumnByName('BONUSMTO').FooterValue    := FloatToStrF(DM1.OperClientDataSet(DM1.cdsReporte, 'SUM(BONUSMTO)', ''), ffNumber, 15, 2);
//   dbgDatosAportes.ColumnByName('SALDO').FooterValue       := FloatToStrF(DM1.OperClientDataSet(DM1.cdsReporte, 'SUM(SALDO)', ''), ffNumber, 15, 2);

   If DM1.cdsReporte.RecordCount > 0 Then
    begin
  //Para Agregar Meses Fantasmas
     xFlag := 'N'; xSaldoAnt := 0; xSaldoPos := 0; xSal := 'N';
     DM1.cdsReporte.First;
     xCapAnt   := DM1.cdsReporte.FieldByName('SALDOANT').AsString;
     xTransAno :=  DM1.cdsReporte.FieldByName('TRANSANO').AsString;

  //GAR
  //Para Ver los Años Aportados

     xSQL := 'Select Distinct TRANSANO From APO301'
            +' Where ASOID ='+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)
            +' And TRANSINTID ='+QuotedStr('APO');

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
     For i := StrToInt(DM1.cdsQry1.FieldByName('TRANSANO').AsString) To Y do
      begin
       For j := 1 To 12 do
        begin
         DM1.cdsQry2.Append;
         DM1.cdsQry2.FieldByName('APOSEC').AsString := IntToStr(i)+DM1.StrZero(IntToStr(j), 2);
         If xTransMes = IntToStr(i)+DM1.StrZero(IntToStr(j), 2) Then
          Break;
        end;
      end;

     DM1.cdsReporte.IndexFieldNames := '';      
     DM1.cdsReporte.IndexFieldNames := 'TRANSANO; TRANSMES';
     DM1.cdsQry2.First;
     While Not DM1.cdsQry2.EOF do
      begin
       xTransAno := Copy(DM1.cdsQry2.FieldByName('APOSEC').AsString, 1, 4);
       xTransMes := Copy(DM1.cdsQry2.FieldByName('APOSEC').AsString, 5, 2);
       DM1.cdsReporte.SetKey;
       DM1.cdsReporte.FieldByName('TRANSANO').AsString := xTransAno;
       DM1.cdsReporte.FieldByName('TRANSMES').AsString := xTransMes;
       If Not DM1.cdsReporte.GotoKey Then
        begin
         DM1.cdsReporte.Insert;
         DM1.cdsReporte.FieldByName('APOSEC').AsString     := DM1.cdsQry2.FieldByName('APOSEC').AsString;
         DM1.cdsReporte.FieldByName('TRANSID').AsString    := 'APORTE';
         DM1.cdsReporte.FieldByName('ASOID').AsString      := DM1.cdsAso.FieldByName('ASOID').AsString;
  //       DM1.cdsReporte.FieldByName('ASORESNOM').AsString  := FExpedienteLiquidacion.dbeNroResNomb.Text;
  //       DM1.cdsReporte.FieldByName('ASORESCESE').AsString := FExpedienteLiquidacion.dbeNroResCese.Text;
         DM1.cdsReporte.FieldByName('AAPOR').AsFloat       := 0;

         xWhere := 'APOANO ='+QuotedStr(xTransAno)+' AND APOMES ='+QuotedStr(xTransMes);
         DM1.DisplayDescrip('prvTGE', 'APO117', 'INTERES, BONUS', xWhere, 'INTERES');

         xPorc := DM1.cdsQry.FieldByName('INTERES').AsFloat;
         xPorc := xPorc/100;

         xInt := FRound(xSaldoAnt * xPorc, 15, 2);
         If DM1.cdsQry.FieldByName('BONUS').AsFloat > 0 Then
          xBon := FRound((xSaldoPos * DM1.cdsQry.FieldByName('BONUS').AsFloat)/100, 15, 2)
  //        xBon := DM1.FRound(xSaldoPos, 15, 2) - xInt
  //        xBon := DM1.FRound(xSaldoPos - xSaldoAnt, 15, 2) - xInt
         Else
          xBon := 0;

         DM1.cdsReporte.FieldByName('SALDOANT').AsFloat    := xSaldoAnt;
         DM1.cdsReporte.FieldByName('INTERESMTO').AsFloat  := xInt;
         DM1.cdsReporte.FieldByName('BONUSMTO').AsFloat    := xBon;
         DM1.cdsReporte.FieldByName('SALDO').AsFloat       := xSaldoAnt + xInt + xBon;
         If xBon = 0 Then
          DM1.cdsReporte.FieldByName('SALDOBONUS').AsFloat := xSaldoPos
         Else
          DM1.cdsReporte.FieldByName('SALDOBONUS').AsFloat := xSaldoAnt + xInt + xBon;
         DM1.cdsReporte.FieldByName('ASOCODMOD').AsString  := DM1.cdsAso.FieldByName('ASOCODMOD').AsString;
         DM1.cdsReporte.FieldByName('ASOAPENOM').AsString  := DM1.cdsAso.FieldByName('ASOAPENOM').AsString;
         DM1.cdsReporte.FieldByName('USEID').AsString      := xUseId;
         DM1.cdsReporte.FieldByName('USEABR').AsString     := xUseAbr;
         DM1.cdsReporte.FieldByName('UPROID').AsString     := xUProId;
         DM1.cdsReporte.FieldByName('UPAGOID').AsString    := xPagoId;
         DM1.cdsReporte.FieldByName('DPTOID').AsString     := xDptoId;
         DM1.cdsReporte.FieldByName('CIUDID').AsString     := xCiudId;
         DM1.cdsReporte.FieldByName('TRANSANO').AsString   := xTransAno;
         DM1.cdsReporte.FieldByName('TRANSMES').AsString   := xTransMes;
         DM1.cdsReporte.FieldByName('TRANSMTO').AsFloat    := 0;
         DM1.cdsReporte.FieldByName('TRANSMTODEV').AsFloat := 0;
         xSaldoAnt := DM1.cdsReporte.FieldByName('SALDO').AsFloat;
         xSaldoPos := DM1.cdsReporte.FieldByName('SALDOBONUS').AsFloat;
         DM1.cdsReporte.Post;
        end
       Else
        begin
         xSaldoAnt := DM1.cdsReporte.FieldByName('SALDO').AsFloat;
         xSaldoPos := DM1.cdsReporte.FieldByName('SALDOBONUS').AsFloat;
        end;
       DM1.cdsQry2.Next;
      end;
//////////////////////////////////////////////////////////////////////////////////////////////////////////
///Esto se lo acabo de agregar
     dbgDatosAportes.ColumnByName('TRANSMTO').FooterValue    := FloatToStrF(DM1.OperClientDataSet(DM1.cdsReporte, 'SUM(TRANSMTO)', ''), ffNumber, 15, 2);
     dbgDatosAportes.ColumnByName('TRANSMTODEV').FooterValue := FloatToStrF(DM1.OperClientDataSet(DM1.cdsReporte, 'SUM(TRANSMTODEV)', ''), ffNumber, 15, 2);
     dbgDatosAportes.ColumnByName('INTERESMTO').FooterValue  := FloatToStrF(DM1.OperClientDataSet(DM1.cdsReporte, 'SUM(INTERESMTO)', ''), ffNumber, 15, 2);
     dbgDatosAportes.ColumnByName('BONUSMTO').FooterValue    := FloatToStrF(DM1.OperClientDataSet(DM1.cdsReporte, 'SUM(BONUSMTO)', ''), ffNumber, 15, 2);

//Para las Devoluciones Por Efectuar
     If (Length(Trim(FRes)) > 0) and (Length(Trim(FCes)) > 0) Then
      begin
       xSQL := 'Select TRANSFOPE, TRANSNOPE, TRANSANO, TRANSMES, Cast(''AAA'' As Varchar2(15)) MES, TRANSMTO,'
              +' INTERESMTO From APO301'
              +' Where ASOID ='+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)
              +' AND TRANSINTID = '+QuotedStr('APO');
//              +' AND TRANSMTODEV Is Null ';

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
              +' Where ASOID ='+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)
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
            +' Where ASOID ='+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)
            +' AND TRANSINTID = '+QuotedStr('APO')
            +' AND TRANSMTODEV Is Not Null';

     If (Length(Trim(FRes)) > 0) And (Length(Trim(FCes)) > 0) Then
      begin
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
         While Not DM1.cdsQry4.EOF do
          begin
           xWhere := 'ASOID ='+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)
                    +' And TRANSINTID ='+QuotedStr('DEV');

           If Length(DM1.DisplayDescrip('prvSQL', 'APO301', 'TRANSFOPE, TRANSNOPE, TRANSANO, TRANSMES, TRANSMTO', xWhere, 'TRANSANO')) > 0 Then
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
    end;

   FDAportes.lblTitulo.Caption := 'Asociado : '+DM1.cdsAso.FieldByName('ASOAPENOM').AsString;
   FDAportes.lblCodigo.Caption := 'Código Modular : '+DM1.cdsAso.FieldByName('ASOCODMOD').AsString;

   dbgDatosAportes.RefreshDisplay;
   Screen.Cursor := crDefault;
end;

procedure TFDAportes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   DM1.cdsAportes.Filter          := '';
   DM1.cdsAportes.Filtered        := False;
   DM1.cdsAportes.IndexFieldNames := '';
   DM1.cdsAportes.Close;
end;

procedure TFDAportes.btnImprimeClick(Sender: TObject);
var
   x10 : Integer;
begin
   Screen.Cursor := crHourGlass;
   DM1.cdsReporte.Last;
   xMonto := DM1.cdsReporte.FieldByName('SALDO').AsFloat;

   DM1.cdsReporte.DisableControls;
   ppRepApo.Template.FileName := wRutaRpt +'\Cuenta Individual Aportes.rtm';
   DM1.cdsReporte.EnableControls;
   ppRepApo.Template.LoadFromFile;
   pplabel30.Caption           := FloatToStrF(xMonto, ffNumber, 15, 2);
   ppLabel75.Caption           := FloatToStrF(xCapital, ffNumber, 15, 2);
   ppRepApo.Print;
   ppRepApo.Stop;

   x10 := Self.ComponentCount - 1;
   While x10 >= 0 do
    begin
     If Self.Components[x10].ClassName = 'TppGroup' Then
      begin
       Self.Components[x10].Free;
      end;
     x10 := x10-1;
    end;
   Screen.Cursor := crDefault;
end;

procedure TFDAportes.ppRepApoPreviewFormCreate(Sender: TObject);
begin
   ppRepApo.PreviewForm.WindowState := wsMaximized;
   TppViewer(ppRepApo.PreviewForm.Viewer).ZoomSetting := zsPageWidth;
end;

procedure TFDAportes.ppGroupHeaderBand10BeforePrint(Sender: TObject);
var
   xWhere : String;
begin
   DM1.cdsReporte.Edit;
   xWhere := 'USEID ='+QuotedStr(DM1.cdsReporte.FieldByName('USE').AsString)
            +' And UPAGOID ='+QuotedStr(DM1.cdsReporte.FieldByName('UPAGO').AsString)
            +' And UPROID ='+QuotedStr(DM1.cdsReporte.FieldByName('UPRO').AsString);
   DM1.cdsReporte.FieldByName('USEN').AsString  := DM1.DisplayDescrip('prvSQL', 'APO101', 'USENOM', xWhere, 'USENOM');
   xWhere := 'UPROID ='+QuotedStr(DM1.cdsReporte.FieldByName('UPRO').AsString);
   DM1.cdsReporte.FieldByName('UPRON').AsString := DM1.DisplayDescrip('prvSQL', 'APO102', 'UPRONOM', xWhere, 'UPRONOM');
   xWhere := 'UPAGOID ='+QuotedStr(DM1.cdsReporte.FieldByName('UPAGO').AsString)
            +' And UPROID ='+QuotedStr(DM1.cdsReporte.FieldByName('UPRO').AsString);
   DM1.cdsReporte.FieldByName('UPAGON').AsString := DM1.DisplayDescrip('prvSQL', 'APO103', 'UPAGONOM', xWhere, 'UPAGONOM');
   xWhere := 'REGPENID ='+QuotedStr(DM1.cdsReporte.FieldByName('REGPENID').AsString);
   DM1.cdsReporte.FieldByName('REGIMEN').AsString := DM1.DisplayDescrip('prvSQL', 'APO105', 'REGPENDES', xWhere, 'REGPENDES');
end;

procedure TFDAportes.FormKeyPress(Sender: TObject; var Key: Char);
begin
	If key=#13 then
  Begin
  	key:=#0;
    perform(CM_DialogKey,VK_TAB,0);
  End;
end;

procedure TFDAportes.ppGroupHeaderBand3BeforePrint(Sender: TObject);
var
   xWhere : String;
begin
   DM1.cdsReporte.Edit;
   xWhere := 'USEID ='+QuotedStr(DM1.cdsReporte.FieldByName('USE').AsString)
            +' And UPAGOID ='+QuotedStr(DM1.cdsReporte.FieldByName('UPAGOID').AsString)
            +' And UPROID ='+QuotedStr(DM1.cdsReporte.FieldByName('UPROID').AsString);
   DM1.cdsReporte.FieldByName('USEN').AsString  := DM1.DisplayDescrip('prvSQL', 'APO101', 'USENOM', xWhere, 'USENOM');
   xWhere := 'UPROID ='+QuotedStr(DM1.cdsReporte.FieldByName('UPROID').AsString);
   DM1.cdsReporte.FieldByName('UPRON').AsString := DM1.DisplayDescrip('prvSQL', 'APO102', 'UPRONOM', xWhere, 'UPRONOM');
   xWhere := 'UPAGOID ='+QuotedStr(DM1.cdsReporte.FieldByName('UPAGOID').AsString)
            +' And UPROID ='+QuotedStr(DM1.cdsReporte.FieldByName('UPROID').AsString);
   DM1.cdsReporte.FieldByName('UPAGON').AsString := DM1.DisplayDescrip('prvSQL', 'APO103', 'UPAGONOM', xWhere, 'UPAGONOM');
   xWhere := 'REGPENID ='+QuotedStr(DM1.cdsReporte.FieldByName('REGPENID').AsString);
   DM1.cdsReporte.FieldByName('REGIMEN').AsString := DM1.DisplayDescrip('prvSQL', 'APO105', 'REGPENDES', xWhere, 'REGPENDES');
end;

end.
