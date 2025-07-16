unit APO515;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppBands, ppCtrls, ppVar, jpeg, ppPrnabl, ppClass, ppCache, ppComm,
  ppTypes, ppRelatv, ppProd, ppReport, ExtCtrls, wwdbedit, wwdblook, Wwdbdlg,
  StdCtrls, Mask, Wwdbspin, fcButton, fcImgBtn, fcShapeBtn, ppViewr, DB,
  ComCtrls, ppDB, ppDBPipe, ppStrtch, ppSubRpt;

type
  TFRepXCtaInd = class(TForm)
    pnlCabecera: TPanel;
    edtAsoID: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    bbtnImprimir: TfcShapeBtn;
    ppDBPipeline1: TppDBPipeline;
    ppRepControl: TppReport;
    edtAsociado: TEdit;
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
    lblUsuario: TppLabel;
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
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    ppDBText74: TppDBText;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand3: TppSummaryBand;
    ppLabel124: TppLabel;
    pplblCapAcum: TppLabel;
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
    procedure bbtnImprimirClick(Sender: TObject);
    procedure ppGroupHeaderBand10BeforePrint(Sender: TObject);
    procedure ppRepControlPreviewFormCreate(Sender: TObject);
    procedure ppDetailBand4BeforePrint(Sender: TObject);
    procedure ppDetailBand5BeforePrint(Sender: TObject);
    procedure ppDetailBand3BeforePrint(Sender: TObject);
    procedure ppTitleBand3BeforePrint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    xSQL : String;
    bResumen : Boolean ;
  end;
var
  FRepXCtaInd: TFRepXCtaInd;
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

const
   cMeses : Array[1..12] of String = ('ENERO','FEBRERO','MARZO','ABRIL','MAYO','JUNIO',
                                    	'JULIO','AGOSTO','SETIEMBRE','OCTUBRE','NOVIEMBRE','DICIEMBRE');

procedure TFRepXCtaInd.bbtnImprimirClick(Sender: TObject);
var
  i, j, x10 : Integer;
  Ano, Mes, Dia : Word;
  xSQL, xWhere, xTransMes : String;
begin

   with dm1.cdsreporte3 do
   begin
     //Ejecuta store procedure de la Cta. Individual
     if bResumen  = False then
       xSQL := 'BEGIN PCK_PROCESA_APORTES_OPT.SP_PROCESA_CTAIND (''' + edtAsoID.text + '''); END;'
     else
       xSQL := 'BEGIN PCK_PROCESA_APORTES_OPT.SP_ACUMULA_RESUMEN_ASOID (''' + edtAsoID.text + '''); END;' ;

     DM1.DCOM1.AppServer.EjecutaSQL(XSQL);
     //Ejecuta sql de recuperación para Reporte
     xSQL :=
       ' SELECT '
     +  '  C.USENOM USEN , E.UPAGONOM UPAGON	, D.UPRONOM UPRON	,'
     +  '  1996-DECODE(GREATEST(TO_CHAR(ASOFRESNOM,''YYYY''),''1996''),''1996'', TO_CHAR(ASOFRESNOM,''YYYY''),1996) AAPOR	,'
     +  '  B.ASOAPENOM	, B.ASOCODMOD	, B.ASOFRESCESE	,'
     +  '  B.ASOFRESNOM	, B.ASORESCESE	, B.ASORESNOM	,'
     +  '  F.REGPENDES REGIMEN	, A.BONUSMTO	, A.INTERESMTO	,'
     +  '  ''          '' MES , A.SALDO	, A.SALDOANT	,'
     +  '  A.TRANSANO	, A.TRANSMTO	, A.TRANSMTODEV	, A.USEABR ,A.TRANSMES'
     +  ' FROM APO201 B , ' ;
     if not bResumen then
       xSQL := xSQL +  '(SELECT * FROM CTAIND02_OPT WHERE ASOID = ''' + edtAsoID.Text + ''' ) A'
     else
       xSQL := xSQL +  '(SELECT * FROM CTAIND03_OPT WHERE ASOID = ''' + edtAsoID.Text + ''' ) A';
     xSQL := xSQL
     +  ' ,APO101 C , APO102 D , APO103 E , APO105 F'
     +  ' WHERE '
     +  '       B.ASOID =''' + EDTASOID.Text +''' '
     +  '   AND B.UPROID  = C.UPROID (+) '
     +  '   AND B.USEID   = C.USEID (+) '
     +  '   AND B.UPAGOID = C.UPAGOID (+) '
     +  '   AND B.UPROID  = D.UPROID (+) '
     +  '   AND B.UPROID  = E.UPROID (+) '
     +  '   AND B.UPAGOID = E.UPAGOID (+) '
     +  '   AND B.REGPENID = F.REGPENID (+) '
     +  '   ORDER BY A.TRANSANO , A.TRANSMES ' ;
     Close ;
     DataRequest(xSQL);
     Open  ;
     if RecordCount > 0 then
     begin
       xCapital := FieldBYName('SALDOANT').AsCurrency ;
{
       while not eof do
       begin
          edit;
          FieldByName('MES').AsString := Cmeses[FieldByName('TRANSMES').ASInteger] ;
          Next ;
       end ;
}
       Screen.Cursor := crHourGlass;
       DM1.cdsReporte3.Last;
       xMonto             := DM1.cdsReporte3.FieldByName('SALDO').AsFloat;
       DM1.cdsReporte3.DisableControls;
       ppDBPipeline1.DataSource       := DM1.dsReporte3;
       ppRepControl.Template.FileName := wRutaRpt +'\Cuenta Individual Control WMC.rtm';
       DM1.cdsReporte3.EnableControls;
       ppRepControl.Template.LoadFromFile ;
       pplblCapAcum.Caption           := FloatToStrF(xMonto, ffNumber, 15, 2);
       ppLabel112.Caption              := FloatToStrF(xCapital, ffNumber, 15, 2);
       lblUsuario.Caption  := dm1.wUsuario;
       ppRepControl.Print ;
       ppRepControl.Stop;
       Screen.Cursor := crDefault;

     end
     else
        Raise exception.Create('No existen Datos para Mostrar en este Reporte');
   end ;
end;

procedure TFRepXCtaInd.ppGroupHeaderBand10BeforePrint(Sender: TObject);
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
//   ppLabel75.Caption := FloatToStrF(StrToFloat(DM1.DisplayDescrip('prvSQL', 'APO121', 'BENMONTO', xWhere, 'BENMONTO')), ffNumber, 15, 2);
end;

procedure TFRepXCtaInd.ppRepControlPreviewFormCreate(Sender: TObject);
begin
  ppRepControl.PreviewForm.WindowState := wsMaximized;
  TppViewer(ppRepControl.PreviewForm.Viewer).ZoomSetting := zsPageWidth;
end;

procedure TFRepXCtaInd.ppDetailBand4BeforePrint(Sender: TObject);
begin
   if trim(DM1.cdsQry3.FieldByName('TRANSMES').AsString) = '' then
     Exit ;
     
   DM1.cdsQry3.Edit;
   DM1.cdsQry3.FieldByName('MES').AsString := DM1.NombreMes(DM1.cdsQry3.FieldByName('TRANSMES').AsString);
end;

procedure TFRepXCtaInd.ppDetailBand5BeforePrint(Sender: TObject);
begin
   if trim(DM1.cdsQry3.FieldByName('TRANSMES').AsString) = '' then
     Exit ;

   DM1.cdsQry3.Edit;
   DM1.cdsQry3.FieldByName('MES').AsString := DM1.NombreMes(DM1.cdsQry3.FieldByName('TRANSMES').AsString);
end;

procedure TFRepXCtaInd.ppDetailBand3BeforePrint(Sender: TObject);
var
   xMes : Integer;
begin
   if trim(DM1.cdsReporte3.FieldByName('TRANSMES').AsString) = '' then
     Exit ;
   xMes := StrToInt(DM1.cdsReporte3.FieldByName('TRANSMES').AsString);
   DM1.cdsReporte3.Edit;
   DM1.cdsReporte3.FieldByName('MES').AsString := UpperCase(DM1.NombreMes(IntToStr(xMes)));
end;

procedure TFRepXCtaInd.ppTitleBand3BeforePrint(Sender: TObject);
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

procedure TFRepXCtaInd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ppDBPipeline1.DataSource:=Nil;
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
