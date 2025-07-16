unit APOD05;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcButton, fcImgBtn, fcShapeBtn, StdCtrls, Spin, wwdblook, Wwdbdlg, Mask,
  wwdbedit, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppCache, ppDB,
  variants, ppTypes, ppDBPipe, ppBands, ppVar, ppPrnabl, ppCtrls,ppViewr;

type
  TFrmRecApo = class(TForm)
    Z2bbtnAceptar: TfcShapeBtn;
    Z2bbtnCancel: TfcShapeBtn;
    GroupBox1: TGroupBox;
    SpeAnnos: TSpinEdit;
    GrPDpto: TGroupBox;
    wEdtDeparta: TwwDBEdit;
    wwDBLookupComboDlg2: TwwDBLookupComboDlg;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel6: TppLabel;
    ppLabel12: TppLabel;
    ppLabel16: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppLabel15: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppLabel14: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppperiodo1: TppLabel;
    pptitulo1: TppLabel;
    ppDBText5: TppDBText;
    ppDBText3: TppDBText;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText7: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppShape1: TppShape;
    ppShape2: TppShape;
    procedure Z2bbtnCancelClick(Sender: TObject);
    procedure wwDBLookupComboDlg2Change(Sender: TObject);
    procedure Z2bbtnAceptarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure wwDBLookupComboDlg2Exit(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeAnnosKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRecApo: TFrmRecApo;

implementation
uses APODM;
{$R *.DFM}

procedure TFrmRecApo.Z2bbtnCancelClick(Sender: TObject);
begin
Close;
end;

procedure TFrmRecApo.wwDBLookupComboDlg2Change(Sender: TObject);
begin
  If Dm1.cdsDpto.Locate('DPTOID',VarArrayof([wwDBLookupComboDlg2.Text]),[]) Then
      wEdtDeparta.text := dm1.cdsDpto.fieldbyname('DPTODES').AsString
   Else
      wEdtDeparta.Text :='';
end;

procedure TFrmRecApo.Z2bbtnAceptarClick(Sender: TObject);
var xSql,xAnno,xDpto : String;
begin
if trim(SpeAnnos.Text) = '' then
begin
  SpeAnnos.SetFocus ;
  Raise exception.Create('Ingrese Año');
end ;
if trim(wwDBLookupComboDlg2.Text) = '' then
begin
  wwDBLookupComboDlg2.SetFocus ;
  Raise exception.Create('Ingrese Departamento');
end ;
xAnno:= speAnnos.Text;
xDpto:=wwDBLookupComboDlg2.Text;
Screen.Cursor:=crHourGlass;
ppperiodo1.Caption:='PERIODO : '+xAnno ;
ppTitulo1.Caption := 'RECAUDACION DE APORTANTES POR DEPARTAMENTO ';
xSql:='SELECT                                                       '+
      '  APO301.DPTOID,                                             '+
      '  NVL(APO158.DPTODES,''DEPARTAMENTO POR ASIGNAR'') DPTODES , '+
      '  APO301.USEID,                                              '+
      '  APO101.USENOM,                                             '+
      '  APO301.TRANSMES,                                           '+
      '  TGE181.MESDESL,                                            '+
      '  APO301.UPROID,                                             '+
      '  SUM(APO301.TRANSMTO) AS MONTO                              '+
      '  FROM APO301,TGE181,APO158,APO101                           '+
      '  WHERE                                                      '+
      '  APO301.USEID=APO101.USEID                                  '+
      '  AND APO301.UPAGOID=APO101.UPAGOID                              '+
      '  AND APO301.UPROID=APO101.UPROID                            '+
      '  AND APO101.DPTOID=APO158.DPTOID(+)                         '+
      '  AND APO301.TRANSMES=TGE181.MESIDR                          '+
      '  AND APO301.TRANSINTID=''APO''                              '+
      '  AND APO301.TRANSANO='''+xAnno+'''                          '+
      '  AND APO301.DPTOID ='''+xDpto+'''                           '+
      '  GROUP BY                                                   '+
      '  APO301.DPTOID,                                             '+
      '  APO301.USEID,                                              '+
      '  APO101.USENOM,                                             '+
      '  APO158.DPTODES,                                            '+
      '  APO301.TRANSMES,                                           '+
      '  TGE181.MESDESL ,                                           '+
      '  APO301.UPROID                                              '+
      '  ORDER BY                                                   '+
      '  APO301.DPTOID,                                             '+
      '  NVL(APO158.DPTODES,''DEPARTAMENTO POR ASIGNAR''),            '+
      '  APO301.USEID,                                              '+
      '  APO101.USENOM,                                             '+
      '  APO301.TRANSMES,                                           '+
      '  TGE181.MESDESL ,                                           '+
      '  APO301.UPROID                                              ';
        Begin
           dm1.cdsQry1.close;
           dm1.cdsQry1.DataRequest(xSql);
           dm1.cdsQry1.open;
           if dm1.cdsQry1.RecordCount = 0 then
           begin
              Screen.Cursor := crDefault ;
              Raise Exception.Create('NO existen Datos para Mostrar');
           end ;
           ppDBPipeline1.DataSource := dm1.dsQry1;
           ppReport1.Print;
           ppReport1.Stop;
           Screen.Cursor:=crDefault;
           ppDBPipeline1.DataSource := nil ;
        End;

end;

procedure TFrmRecApo.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If key=#13 then
  Begin
     key:=#0;
     perform(CM_DialogKey,VK_TAB,0);
  End;
end;

procedure TFrmRecApo.wwDBLookupComboDlg2Exit(Sender: TObject);
begin
  if trim(wEdtDeparta.Text) = '' then
     wwDBLookupComboDlg2.Text := '' ;
end;

procedure TFrmRecApo.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState := wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomSetting := zs100Percent;
end;

procedure TFrmRecApo.FormCreate(Sender: TObject);
begin
 with dm1.cdsQry do
 begin
   IndexFieldNames := '' ;
   filtered   := False ;
   Close ;
 end ;
 with dm1.cdsQry1 do
 begin
   IndexFieldNames := '' ;
   filtered   := False ;
   Close ;
 end ;

  if not dm1.cdsDpto.Active then
     dm1.cdsDpto.Open ;
end;

procedure TFrmRecApo.SpeAnnosKeyPress(Sender: TObject; var Key: Char);
begin
  if key in ['-','.'] then
     key := #0 ;
end;

end.
