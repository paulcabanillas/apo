unit APO330;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, wwdblook, Wwdbdlg, Grids,
  Wwdbigrd, Wwdbgrid, ComCtrls, wwdbdatetimepicker,
  DB, ImgList, DBClient, wwdbedit, Wwdbspin, Spin, Menus, DBGrids,
  StrUtils,
  ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppProd, ppReport, ppComm,
  ppRelatv, ppDB, ppDBPipe, ppEndUsr, ppParameter;

type
  TFRptAportes = class(TForm)
    pInferior: TPanel;
    btnAExcel: TBitBtn;
    btnCerrar: TBitBtn;
    pcPrincipal: TPageControl;
    tsPorFechas: TTabSheet;
    dbgPrevio: TwwDBGrid;
    gbProcesar: TGroupBox;
    btnProcesar: TBitBtn;
    imgLstGrid: TImageList;
    grbPerIni: TGroupBox;
    txtNomMesIni: TEdit;
    dbsMesIni: TSpinEdit;
    dbsAnoIni: TSpinEdit;
    grbPerFin: TGroupBox;
    txtNomMesFin: TEdit;
    dbsMesFin: TSpinEdit;
    dbsAnoFin: TSpinEdit;
    lblNroRegEncontrados: TLabel;
    dtgData: TDBGrid;
    ppDBConexion: TppDBPipeline;
    ppPrevio: TppReport;
    btnPrint: TBitBtn;
    ppDesignerRun: TppDesigner;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLblTitulo: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel10: TppLabel;
    ppLabel19: TppLabel;
    ppLabel23: TppLabel;
    ppLblPeriodo: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText9: TppDBText;
    ppDBText1: TppDBText;
    ppDBText8: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc2: TppDBCalc;
    ppLabel8: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppLine3: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText7: TppDBText;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel7: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLine1: TppLine;
    procedure btnProcesarClick(Sender: TObject);
    procedure dbgPrevioTitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure dbsMesIniChange(Sender: TObject);
    procedure dbsMesFinChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dbgPrevioCalcTitleImage(Sender: TObject;
      Field: TField; var TitleImageAttributes: TwwTitleImageAttributes);
    procedure btnAExcelClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure btnCerrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    xPerInicio,xPerFin: string;
    procedure DoSorting(cdsName:TClientDataset; AFieldName: String);
  public
    { Public declarations }
  end;

var
  FRptAportes: TFRptAportes;

implementation

uses APODM;

{$R *.dfm}

(**************************** JUVER DE LA CRUZ ********************************)
(******************************************************************************)
procedure TFRptAportes.btnProcesarClick(Sender: TObject);
  {----------------------------------------------------}
  function isFechasValidas():boolean;
    begin
      result:= not ((trim(dbsAnoIni.Text)='') or (trim(dbsMesIni.Text)='')
                    or (trim(dbsAnoFin.Text)='') or (trim(dbsMesFin.Text)=''));
    end;
  {----------------------------------------------------}
  procedure calcularTotales;
  var xTotMonto,xTotDoc,xNroRegistros:Double;
  begin
     xTotMonto:=0;
     xTotDoc:=0;
     xNroRegistros:=0;
     if DM1.cdsQry4.Active then
       begin
       DM1.cdsQry4.First;
         While not DM1.cdsQry4.Eof Do
           Begin
             xTotMonto:=xTotMonto + DM1.cdsQry4.FieldByName('MONTO').AsFloat;
             xTotDoc:=xTotDoc + DM1.cdsQry4.FieldByName('NRODOC').AsFloat;
             xNroRegistros:=xNroRegistros+1;
             DM1.cdsQry4.Next;
           End;
         self.lblNroRegEncontrados.Caption:=FloatToStr(xNroRegistros)+' Registros encontrados '
                                            + 'de '+txtNomMesIni.Text+' a '+ txtNomMesFin.Text;

         dbgPrevio.Selected.Clear;
         dbgPrevio.Selected.Add('DPTODES'#9'18'#9'Departamento~UGEL'#9);
         dbgPrevio.Selected.Add('UPRONOM'#9'32'#9'Unidad de~Proceso'#9);
         dbgPrevio.Selected.Add('UPAGONOM'#9'32'#9'Unidad de~Pago'#9);
         dbgPrevio.Selected.Add('USENOM'#9'32'#9'UGEL'#9);
         dbgPrevio.Selected.Add('MONTO'#9'12'#9'Monto~( S/. )'#9);
         dbgPrevio.Selected.Add('NRODOC'#9'10'#9'Número de~Docentes'#9);

         dbgPrevio.DataSource := DM1.dsQry4;
         dtgData.DataSource := DM1.dsQry3;

         dbgPrevio.ApplySelected;
         TNumericField(DM1.cdsQry4.FieldByName('MONTO')).DisplayFormat := '###,###,##0.00';
         TNumericField(DM1.cdsQry4.FieldByName('NRODOC')).DisplayFormat := '###,###,##0';

         dbgPrevio.ColumnByName('DPTODES').FooterValue := 'TOTAL';
         dbgPrevio.ColumnByName('MONTO').FooterValue := FloatTostrf(xTotMonto,ffnumber,15,2);
         dbgPrevio.ColumnByName('NRODOC').FooterValue := FloatTostrf(xTotDoc,ffnumber,15,0);
         dbgPrevio.RefreshDisplay;
         DM1.cdsQry4.First;
       end;
  end;
  {----------------------------------------------------}
  procedure generarDxs();
  var xSQL: String;
  begin
      xPerInicio:=Trim(dbsAnoIni.Text+Format('%.2d',[StrToInt(Trim(dbsMesIni.Text))]));
      xPerFin:=Trim(dbsAnoFin.Text+Format('%.2d',[StrToInt(Trim(dbsMesFin.Text))]));
      XSQL:='SELECT NVL(USE.DPTOID, ''99'') DPTOID, '
           +'       NVL(DPTO.DPTODES, ''POR IDENTIFICAR'') DPTODES, '
           +'       NVL(APO.UPROID, ''99'') UPROID, '
           +'       NVL(UPRO.UPRONOM, ''POR IDENTIFICAR'') UPRONOM, '
           +'       NVL(APO.UPAGOID, ''99'') UPAGOID, '
           +'       NVL(UPAGO.UPAGONOM, ''POR IDENTIFICAR'') UPAGONOM, '
           +'       NVL(APO.USEID, ''99'') USEID,  '
           +'       NVL(USE.USENOM, ''POR IDENTIFICAR'') USENOM, '
           +'       MONTO, NRODOC '
           +'  FROM (SELECT UPROID, UPAGOID, USEID, SUM(NVL(APORTES.TRANSMTO, 0)) MONTO, '
           +'                SUM(1) NRODOC '
           +'           FROM (SELECT TRANSMTO, ASOID, UPROID, UPAGOID, USEID '
           +'                    FROM APO301 '
           +'                   WHERE TRANSANO || TRANSMES '
           +'                         BETWEEN '+QuotedStr(xPerInicio)
           +'                             AND '+QuotedStr(xPerFin)
           +'                     AND TRANSINTID = ''APO'') APORTES '
           +'          GROUP BY UPROID, UPAGOID, USEID) APO, APO102 UPRO, '
           +'       APO103 UPAGO, APO101 USE, APO158 DPTO '
           +' WHERE APO.UPROID = UPRO.UPROID(+) '
           +'   AND APO.UPROID = UPAGO.UPROID(+) '
           +'   AND APO.UPAGOID = UPAGO.UPAGOID(+) '
           +'   AND APO.UPROID = USE.UPROID(+) '
           +'   AND APO.UPAGOID = USE.UPAGOID(+) '
           +'   AND APO.USEID = USE.USEID(+) '
           +'   AND USE.DPTOID = DPTO.DPTOID(+) '
           +' ORDER BY USE.DPTOID, APO.UPROID, APO.UPAGOID, APO.USEID';

      DM1.cdsQry4.Close;
      DM1.cdsQry4.DataRequest(xSql);
      DM1.cdsQry4.Open;
      //excel
      DM1.cdsQry3.Close;
      DM1.cdsQry3.DataRequest(XSQL);
      DM1.cdsQry3.Open;
  end;
  {----------------------------------------------------}
  procedure agrupar(Sender: TObject;IField:string);
    begin
      (Sender as TwwDBGrid).GroupFieldName:= IField;
      (Sender as TwwDBGrid).Datasource.Dataset.FieldByName(IField).Index := 0;
      DoSorting(TClientDataset((Sender as TwwDBGrid).Datasource.Dataset), IField);
      (Sender as TwwDBGrid).Invalidate;
    end;
  {----------------------------------------------------}
begin
  if isFechasValidas() then
    begin
      Screen.Cursor:= crHourGlass;
      generarDxs();
      calcularTotales();
      agrupar(dbgPrevio,'DPTODES');
      btnAExcel.Enabled:=true;
      btnPrint.Enabled:=true;
      Screen.Cursor:= crDefault;
    end
  else
    showmessage('Por favor seleccione fechas validas');
end;

(******************************************************************************)

procedure TFRptAportes.DoSorting(cdsName:TClientDataset; AFieldName: String);
const
  NONSORTABLE: Set of TFieldType=[ftBlob,ftMemo,ftOraBlob,ftOraCLob];
begin
  with cdsName do
  begin
    if IsEmpty or (FieldByName(AFieldName).DataType in NONSORTABLE) then
      Exit;

    if (IndexFieldNames=AFieldName) then
    begin
       IndexDefs.Update;
       if IndexDefs.IndexOf('w2wTempIndex')>-1  then
       begin
         DeleteIndex('w2wTempIndex');
         IndexDefs.Update;
       end;
       AddIndex('w2wTempIndex',AFieldName,[ixDescending,ixCaseInsensitive],'','',0);
       IndexName:='w2wTempIndex';
    end
    else
    begin
       IndexFieldNames := AFieldName;
    end;
  end;
end;

(******************************************************************************)

procedure TFRptAportes.dbgPrevioTitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
  DoSorting(TClientDataset((Sender as TwwDBGrid).Datasource.Dataset),AFieldName);
end;

(******************************************************************************)

procedure TFRptAportes.dbsMesIniChange(Sender: TObject);
begin
  if dbsMesIni.Text = '' then exit;
  txtNomMesIni.Text:=DM1.NombreMes(dbsMesIni.Text) +' de '+ dbsAnoIni.Text;
end;

(******************************************************************************)

procedure TFRptAportes.dbsMesFinChange(Sender: TObject);
begin
  if dbsMesFin.Text = '' then exit;
  txtNomMesFin.Text:=DM1.NombreMes(dbsMesFin.Text) +' de '+ dbsAnoFin.Text;
end;

(******************************************************************************)

procedure TFRptAportes.FormActivate(Sender: TObject);
var
   cadFecha:string;
begin
   cadFecha:=datetostr(DM1.dtFechaSistema);
   dbsAnoIni.Text:=Copy(cadFecha,7,4);
   dbsMesIni.Text:='01';
   dbsAnoFin.Text:=Copy(cadFecha,7,4);
   dbsMesFin.Text:=Copy(cadFecha,4,2);
   txtNomMesIni.Text:=DM1.NombreMes(dbsMesIni.Text) +' de '+ dbsAnoIni.Text;
   txtNomMesFin.Text:=DM1.NombreMes(dbsMesFin.Text) +' de '+ dbsAnoFin.Text;
   DM1.cdsQry3.Close;
   DM1.cdsQry4.Close;
end;

(******************************************************************************)

procedure TFRptAportes.dbgPrevioCalcTitleImage(Sender: TObject;
  Field: TField; var TitleImageAttributes: TwwTitleImageAttributes);
begin
  with (Sender as TwwDBGrid) do
  if Field.FieldName=TClientDataset(Datasource.Dataset).indexfieldnames then
  begin
    TitleImageAttributes.ImageIndex := 0;
  end
  else if TClientDataset(Datasource.Dataset).indexname = 'w2wTempIndex' then
  begin
     TClientDataset(Datasource.Dataset).indexdefs.Update;
     if TClientDataset(Datasource.Dataset).indexdefs.Find('w2wTempIndex').Fields = Field.Fieldname then
       TitleImageAttributes.ImageIndex := 1;
  end;
end;

(******************************************************************************)

procedure TFRptAportes.btnAExcelClick(Sender: TObject);
begin
   DM1.HojaExcel(xPerInicio+'-'+xPerFin,dtgData.DataSource, dtgData);
end;

(******************************************************************************)

procedure TFRptAportes.btnPrintClick(Sender: TObject);
begin
   If DM1.cdsQry3.RecordCount > 0 Then
   Begin
        // para diseñar en tiempo de ejecucion
        //  ppdesignerRun.Report := ppPrevio;
        //  ppdesignerRun.Show;

        // para presentar
      ppDBConexion.DataSource:=DM1.dsQry3;
      ppPrevio.DataPipeline:=ppDBConexion;
      ppLblPeriodo.Caption:='( '+DM1.NombreMes(RightStr(xPerInicio,2))
                    +' de '+LeftStr(xPerInicio,4)
                    +' a '+DM1.NombreMes(RightStr(xPerFin,2))
                    +' de '+LeftStr(xPerFin,4)+' )';

      ppPrevio.Print;
      ppPrevio.stop;
   End;
end;

(******************************************************************************)
procedure TFRptAportes.btnCerrarClick(Sender: TObject);
begin
   dbgPrevio.DataSource := nil;
   DM1.cdsQry4.Close;
   Close;
end;

procedure TFRptAportes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
end;

end.
