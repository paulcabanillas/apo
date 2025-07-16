unit APOD03;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Wwdbspin, fcButton, fcImgBtn, fcShapeBtn, Mask, wwdbedit, StdCtrls,
  wwdblook, Wwdbdlg, ppPrnabl, ppClass, ppCtrls, ppBands, ppProd, ppReport,
  variants, ppTypes, ppComm, ppRelatv, ppCache, ppDB, ppDBPipe, ppVar,ppViewr;

type
  TFAporxDpto = class(TForm)
    GroupBox2: TGroupBox;
    dblcdDepto: TwwDBLookupComboDlg;
    dbeDepto: TwwDBEdit;
    GroupBox1: TGroupBox;
    bbtnCancelar: TfcShapeBtn;
    bbtnSalir: TfcShapeBtn;
    dbspAno: TwwDBSpinEdit;
    DBP2: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBText1: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText14: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppShape11: TppShape;
    ppShape12: TppShape;
    ppShape13: TppShape;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
    ppLabel3: TppLabel;
    ppShape15: TppShape;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel9: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel12: TppLabel;
    ppLabel8: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable1: TppSystemVariable;
    ppLabel13: TppLabel;
    ppLabel15: TppLabel;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppShape16: TppShape;
    ppShape14: TppShape;
    ppShape17: TppShape;
    ppLabel4: TppLabel;
    procedure dblcdDeptoChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbtnCancelarClick(Sender: TObject);
    procedure bbtnSalirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbspAnoKeyPress(Sender: TObject; var Key: Char);
    procedure dblcdDeptoExit(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAporxDpto: TFAporxDpto;

implementation

uses APODM;

{$R *.DFM}

procedure TFAporxDpto.dblcdDeptoChange(Sender: TObject);
var Xdptoid:string;

begin
   Xdptoid:=dblcdDepto.Text;
   if dm1.cdsDpto.LOcate('DPTOID',VarArrayof([Xdptoid]),[]) then
     dbeDepto.Text := trim(dm1.cdsDpto.fieldbyName('DPTODES').Asstring)
   else
     dbeDepto.Text := '' ;
  //endif
end;
procedure TFAporxDpto.FormActivate(Sender: TObject);
begin
 dbspAno.SetFocus;
end;

procedure TFAporxDpto.FormCreate(Sender: TObject);
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
 if not dm1.cdsDpto.active then
    dm1.cdsDpto.Open;
 dbspAno.Text := FormatDateTime('yyyy',Now);
 dblcdDepto.Enabled := True;
 
end;

procedure TFAporxDpto.bbtnCancelarClick(Sender: TObject);
begin
 self.Close;
end;

procedure TFAporxDpto.bbtnSalirClick(sender: TObject);
var ssql,xano,xdepto:string;
begin
   if trim(dbspAno.Text)='' then
   begin
     dbspAno.SetFocus ;
     Raise Exception.Create('Ingrese Año');
   end ;
   if trim(dblcdDepto.Text)='' then
   begin
     dblcdDepto.SetFocus ;
     Raise Exception.Create('Ingrese Departamento');
   end ;

   xano  := dbspAno.Text;
   xdepto:= dblcdDepto.Text;
   ssql := ' SELECT TRANSANO, DPTODES, USENOM,'+
           ' SUM(NVL(ENE,0)) AS ENE1, SUM(NVL(FEB,0)) AS FEB1, SUM(NVL(MAR,0))  AS MAR1,'+
           ' SUM(NVL(ABR,0)) AS ABR1, SUM(NVL(MAY,0)) AS MAY1, SUM(NVL(JUN,0))  AS JUN1,'+
           ' SUM(NVL(JUL,0)) AS JUL1, SUM(NVL(AGO,0)) AS AGO1, SUM(NVL(SETI,0)) AS SET1,'+
           ' SUM(NVL(OCT,0)) AS OCT1, SUM(NVL(NOV,0)) AS NOV1, SUM(NVL(DIC,0))  AS DIC1,'+
           'SUM(NVL(ENE,0))+SUM(NVL(FEB,0))+SUM(NVL(MAR,0))+SUM(NVL(ABR,0))+SUM(NVL(MAY,0))+SUM(NVL(JUN,0))+SUM(NVL(JUL,0))+SUM(NVL(AGO,0))+SUM(NVL(SETI,0))+SUM(NVL(OCT,0))+SUM(NVL(NOV,0))+SUM(NVL(DIC,0)) AS TOT '+
           'FROM '+
           '(SELECT APO301.TRANSANO, APO301.TRANSMES, APO158.DPTODES, APO101.USENOM, '+
           'CASE WHEN APO301.TRANSMES=''01'' THEN  COUNT(*) END AS ENE, CASE WHEN APO301.TRANSMES=''02'' THEN  COUNT(*) END AS FEB, CASE WHEN APO301.TRANSMES=''03'' THEN  COUNT(*) END AS MAR,'+
           'CASE WHEN APO301.TRANSMES=''04'' THEN  COUNT(*) END AS ABR, CASE WHEN APO301.TRANSMES=''05'' THEN  COUNT(*) END AS MAY, CASE WHEN APO301.TRANSMES=''06'' THEN  COUNT(*) END AS JUN,'+
           'CASE WHEN APO301.TRANSMES=''07'' THEN  COUNT(*) END AS JUL, CASE WHEN APO301.TRANSMES=''08'' THEN  COUNT(*) END AS AGO, CASE WHEN APO301.TRANSMES=''09'' THEN  COUNT(*) END AS SETI,'+
           'CASE WHEN APO301.TRANSMES=''10'' THEN  COUNT(*) END AS OCT, CASE WHEN APO301.TRANSMES=''11'' THEN  COUNT(*) END AS NOV, CASE WHEN APO301.TRANSMES=''12'' THEN  COUNT(*) END AS DIC '+
           'FROM APO301, APO158, APO101 '+
           'WHERE APO301.TRANSANO='''+xano+''' AND '+
                 'APO301.USEID=APO101.USEID AND '+
                 'APO301.UPAGOID=APO101.UPAGOID AND '+
                 'APO301.UPROID=APO101.UPROID AND '+
                 'APO101.DPTOID=APO158.DPTOID AND '+
                 'APO101.DPTOID='''+xdepto+''' AND '+
                 'TRANSINTID=''APO'' '+
           'GROUP BY APO301.TRANSANO, APO301.TRANSMES, APO158.DPTODES, APO101.USENOM '+
           'ORDER BY 1, 3, 4, 2) '+
           'GROUP BY TRANSANO, DPTODES, USENOM' ;

    Screen.Cursor:=crHourGlass;
    dm1.cdsQry.Close;
    dm1.cdsQry.DataRequest(ssql);
    dm1.cdsQry.Open;

    if dm1.cdsQry.RecordCount >0 then
       begin
         DBP2.DataSource := dm1.dsQry;
         ppReport1.DataPipeline := DBP2 ;
         ppReport1.Print;
         ppReport1.Stop;
       end
    else
    begin
       showmessage('No existe datos para generar reporte');
       ppReport1.DataPipeline := nil ;
       DBP2.DataSource        := nil ;
    end ;
    //endif

    Screen.Cursor:=crDefault;

end;

procedure TFAporxDpto.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If key=#13 then
  Begin
     key:=#0;
     perform(CM_DialogKey,VK_TAB,0);
  End;

end;

procedure TFAporxDpto.dbspAnoKeyPress(Sender: TObject; var Key: Char);
begin
  if key in ['-','.'] then
     key := #0 ;
end;

procedure TFAporxDpto.dblcdDeptoExit(Sender: TObject);
begin
  if trim(dbeDepto.Text)= '' then
     dblcdDepto.Text := '';

end;

procedure TFAporxDpto.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState := wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomSetting := zs100Percent;
end;

end.
