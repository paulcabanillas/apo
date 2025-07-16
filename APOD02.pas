// Inicio Uso Estándares     : 01/08/2011
// Modulo                    : Aportes
// Unidad                    : APOD02
// Formulario                : FRecApoxDpto
// Fecha de Creación         :
// Autor                     : Sistemas - Desarrollo
// Objetivo                  : Emitir Reporte de Recaudación de Aportes por DPTO.
// Relacion de pases a producción:
// HPC_201601_APO            : SE ADICIONA UN BOTON PARA EXPORTAR A EXCEL.
unit APOD02;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcButton, fcImgBtn, fcShapeBtn, wwdbedit, wwdblook, Wwdbdlg, StdCtrls,
  Mask, Wwdbspin, ppCtrls, ppVar, ppPrnabl, ppClass, ppBands, ppProd,
  variants, ppTypes, ppReport, ppComm, ppRelatv, ppCache, ppDB, ppDBPipe, ppViewr,
//Inicio HPC_201601_APO --Definir variables
  ExtCtrls, Grids, DBGrids;
//Final HPC_201601_APO
type
  TFRecApoxDpto = class(TForm)
    GroupBox1: TGroupBox;
    dbspAno: TwwDBSpinEdit;
    GroupBox2: TGroupBox;
    dblcdDepto: TwwDBLookupComboDlg;
    dbeDepto: TwwDBEdit;
    bbtnCancelar: TfcShapeBtn;
    bbtnSalir: TfcShapeBtn;
    DBP3: TppDBPipeline;
    ppReport2: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppShape17: TppShape;
    ppShape15: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
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
    ppLabel4: TppLabel;
    ppShape14: TppShape;
    ppShape1: TppShape;
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
    ppShape16: TppShape;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLabel3: TppLabel;
    pplDepartamento: TppLabel;
//Inicio HPC_201601_APO --SE ADICIONA UN BOTON PARA EXPORTAR A EXCEL
    BtnExcel: TfcShapeBtn;
    dtgData: TDBGrid;
//Final HPC_201601_APO
    procedure bbtnSalirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dblcdDeptoChange(Sender: TObject);
    procedure bbtnCancelarClick(Sender: TObject);
    procedure dbspAnoKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dblcdDeptoExit(Sender: TObject);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
//Inicio HPC_201601_APO --SE ADICIONA UN BOTON PARA EXPORTAR A EXCEL
    procedure BtnExcelClick(Sender: TObject);
//Final HPC_201601_APO
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRecApoxDpto: TFRecApoxDpto;

implementation

uses APODM;

{$R *.DFM}



procedure TFRecApoxDpto.bbtnSalirClick(Sender: TObject);
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
   ppReport2.Reset ;
   xano  := dbspAno.Text;
   xdepto:= dblcdDepto.Text;
   {ssql := ' SELECT'+
           ' TRANSANO,'+
           ' DPTODES,' +
           ' USENOM,'  +
           ' SUM(NVL(ENE,0)) as ENE1,'+
           ' SUM(NVL(FEB,0)) as FEB1,'+
           ' SUM(NVL(MAR,0)) as MAR1,'+
           ' SUM(NVL(ABR,0)) as ABR1,'+
           ' SUM(NVL(MAY,0)) as MAY1,'+
           ' SUM(NVL(JUN,0)) as JUN1,'+
           ' SUM(NVL(JUL,0)) as JUL1,'+
           ' SUM(NVL(AGO,0)) as AGO1,'+
           ' SUM(NVL(SETI,0)) as SET1,'+
           ' SUM(NVL(OCT,0)) as OCT1,'+
           ' SUM(NVL(NOV,0)) as NOV1,'+
           ' SUM(NVL(DIC,0)) as DIC1,'+
           'SUM(NVL(ENE,0))+SUM(NVL(FEB,0))+SUM(NVL(MAR,0))+SUM(NVL(ABR,0))+SUM(NVL(MAY,0))+SUM(NVL(JUN,0))+SUM(NVL(JUL,0))+SUM(NVL(AGO,0))+SUM(NVL(SETI,0))+SUM(NVL(OCT,0))+SUM(NVL(NOV,0))+SUM(NVL(DIC,0)) as TOT '+
           'FROM '+
           '(Select APO301.TRANSANO,'+
                   'APO301.TRANSMES,'+
                   'DPTOABR DPTODES,'+
                   'NVL(XXX1.USEABR,''   '')  USENOM,'+
                   'CASE WHEN APO301.TRANSMES=''01'' THEN  SUM(TRANSMTO-NVL(TRANSMTODEV,0)) END AS ENE,'+
                   'CASE WHEN APO301.TRANSMES=''02'' THEN  SUM(TRANSMTO-NVL(TRANSMTODEV,0)) END AS FEB,'+
                   'CASE WHEN APO301.TRANSMES=''03'' THEN  SUM(TRANSMTO-NVL(TRANSMTODEV,0)) END AS MAR,'+
                   'CASE WHEN APO301.TRANSMES=''04'' THEN  SUM(TRANSMTO-NVL(TRANSMTODEV,0)) END AS ABR,'+
                   'CASE WHEN APO301.TRANSMES=''05'' THEN  SUM(TRANSMTO-NVL(TRANSMTODEV,0)) END AS MAY,'+
                   'CASE WHEN APO301.TRANSMES=''06'' THEN  SUM(TRANSMTO-NVL(TRANSMTODEV,0)) END AS JUN,'+
                   'CASE WHEN APO301.TRANSMES=''07'' THEN  SUM(TRANSMTO-NVL(TRANSMTODEV,0)) END AS JUL,'+
                   'CASE WHEN APO301.TRANSMES=''08'' THEN  SUM(TRANSMTO-NVL(TRANSMTODEV,0)) END AS AGO,'+
                   'CASE WHEN APO301.TRANSMES=''09'' THEN  SUM(TRANSMTO-NVL(TRANSMTODEV,0)) END AS SETI,'+
                   'CASE WHEN APO301.TRANSMES=''10'' THEN  SUM(TRANSMTO-NVL(TRANSMTODEV,0)) END AS OCT,'+
                   'CASE WHEN APO301.TRANSMES=''11'' THEN  SUM(TRANSMTO-NVL(TRANSMTODEV,0)) END AS NOV,'+
                   'CASE WHEN APO301.TRANSMES=''12'' THEN  SUM(TRANSMTO-NVL(TRANSMTODEV,0)) END AS DIC '+
            ' from   APO301,XXX1'+
            ' where  APO301.UPROID = XXX1.UPROID(+) AND '+
                   ' APO301.USEID = XXX1.USEID(+) AND '+
                   ' APO301.TRANSANO='''+xano+''' AND '+
                   ' APO301.DPTOID='''+xdepto+''' AND '+
                   ' TRANSINTID=''APO'' AND '+
                   ' (NVL(TRANSMTO,0)-NVL(TRANSMTODEV,0)) > 0 '+
            ' group by APO301.TRANSANO,'+
                     'APO301.TRANSMES,'+
                     'APO301.DPTOABR,'+
                     'XXX1.USEABR '+
            ' order by  1,3,4,2) '+
            ' GROUP BY TRANSANO,DPTODES,USENOM' ;  CAMBIADO POR EL OTRO PORQUE NO SE DEBE USAR XXX1 }

   ssql := ' SELECT'+
           ' TRANSANO,'+
           ' DPTODES,' +
           ' USENOM,'  +
           ' SUM(NVL(ENE,0)) as ENE1,'+
           ' SUM(NVL(FEB,0)) as FEB1,'+
           ' SUM(NVL(MAR,0)) as MAR1,'+
           ' SUM(NVL(ABR,0)) as ABR1,'+
           ' SUM(NVL(MAY,0)) as MAY1,'+
           ' SUM(NVL(JUN,0)) as JUN1,'+
           ' SUM(NVL(JUL,0)) as JUL1,'+
           ' SUM(NVL(AGO,0)) as AGO1,'+
           ' SUM(NVL(SETI,0)) as SET1,'+
           ' SUM(NVL(OCT,0)) as OCT1,'+
           ' SUM(NVL(NOV,0)) as NOV1,'+
           ' SUM(NVL(DIC,0)) as DIC1,'+
           'SUM(NVL(ENE,0))+SUM(NVL(FEB,0))+SUM(NVL(MAR,0))+SUM(NVL(ABR,0))+SUM(NVL(MAY,0))+SUM(NVL(JUN,0))+SUM(NVL(JUL,0))+SUM(NVL(AGO,0))+SUM(NVL(SETI,0))+SUM(NVL(OCT,0))+SUM(NVL(NOV,0))+SUM(NVL(DIC,0)) as TOT '+
           'FROM '+
           '(Select APO301.TRANSANO,'+
                   'APO301.TRANSMES,'+
                   'DPTOABR DPTODES,'+
                   'NVL(XXX1.USENOM,''   '')  USENOM,'+
                   'CASE WHEN APO301.TRANSMES=''01'' THEN  SUM(TRANSMTO-NVL(TRANSMTODEV,0)) END AS ENE,'+
                   'CASE WHEN APO301.TRANSMES=''02'' THEN  SUM(TRANSMTO-NVL(TRANSMTODEV,0)) END AS FEB,'+
                   'CASE WHEN APO301.TRANSMES=''03'' THEN  SUM(TRANSMTO-NVL(TRANSMTODEV,0)) END AS MAR,'+
                   'CASE WHEN APO301.TRANSMES=''04'' THEN  SUM(TRANSMTO-NVL(TRANSMTODEV,0)) END AS ABR,'+
                   'CASE WHEN APO301.TRANSMES=''05'' THEN  SUM(TRANSMTO-NVL(TRANSMTODEV,0)) END AS MAY,'+
                   'CASE WHEN APO301.TRANSMES=''06'' THEN  SUM(TRANSMTO-NVL(TRANSMTODEV,0)) END AS JUN,'+
                   'CASE WHEN APO301.TRANSMES=''07'' THEN  SUM(TRANSMTO-NVL(TRANSMTODEV,0)) END AS JUL,'+
                   'CASE WHEN APO301.TRANSMES=''08'' THEN  SUM(TRANSMTO-NVL(TRANSMTODEV,0)) END AS AGO,'+
                   'CASE WHEN APO301.TRANSMES=''09'' THEN  SUM(TRANSMTO-NVL(TRANSMTODEV,0)) END AS SETI,'+
                   'CASE WHEN APO301.TRANSMES=''10'' THEN  SUM(TRANSMTO-NVL(TRANSMTODEV,0)) END AS OCT,'+
                   'CASE WHEN APO301.TRANSMES=''11'' THEN  SUM(TRANSMTO-NVL(TRANSMTODEV,0)) END AS NOV,'+
                   'CASE WHEN APO301.TRANSMES=''12'' THEN  SUM(TRANSMTO-NVL(TRANSMTODEV,0)) END AS DIC '+
            ' from   APO301,APO101 XXX1'+
            ' where  APO301.UPROID = XXX1.UPROID(+) AND '+
                   ' APO301.USEID  = XXX1.USEID(+) AND '+
                   ' APO301.UPAGOID = XXX1.UPAGOID(+) AND '+
                   ' APO301.TRANSANO='''+xano+''' AND '+
                   ' XXX1.DPTOID='''+xdepto+''' AND '+
                   ' TRANSINTID=''APO'' AND '+
                   ' (NVL(TRANSMTO,0)-NVL(TRANSMTODEV,0)) > 0 '+
            ' group by APO301.TRANSANO,'+
                     'APO301.TRANSMES,'+
                     'APO301.DPTOABR,'+
                     'XXX1.USENOM '+
            ' order by  1,3,4,2) '+
            ' GROUP BY TRANSANO,DPTODES,USENOM' ;
    Screen.Cursor:=crHourGlass;
    dm1.cdsQry1.Close;
    dm1.cdsQry1.DataRequest(ssql);
    dm1.cdsQry1.Open;

    if dm1.cdsQry1.RecordCount >0 then
       begin
         dbp3.DataSource := dm1.dsQry1;
         ppReport2.DataPipeline := DBP3 ;
         pplDepartamento.Caption := trim(dbeDepto.Text);
         ppReport2.Print;
         ppReport2.Stop;
       end
    else
    begin
       showmessage('No existe datos para generar reporte');
       ppReport2.DataPipeline := nil ;
       DBP3.DataSource        := nil ;
    end ;
    //endif

    Screen.Cursor:=crDefault;

end;



procedure TFRecApoxDpto.FormCreate(Sender: TObject);
begin
 if not dm1.cdsDpto.active then
    dm1.cdsDpto.Open;

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
 dbspAno.Text := FormatDateTime('yyyy',Now);
 dblcdDepto.Enabled := True;
end;

procedure TFRecApoxDpto.FormActivate(Sender: TObject);
begin
 dbspAno.SetFocus;
end;

procedure TFRecApoxDpto.dblcdDeptoChange(Sender: TObject);
var Xdptoid:string;

begin
   Xdptoid:=dblcdDepto.Text;
   if dm1.cdsDpto.LOcate('DPTOID',VarArrayof([Xdptoid]),[]) then
     dbeDepto.Text := trim(dm1.cdsDpto.fieldbyName('DPTODES').Asstring)
   else
     dbeDepto.Text := '' ;
  //endif
end;
procedure TFRecApoxDpto.bbtnCancelarClick(Sender: TObject);
begin
 self.Close;
end;

procedure TFRecApoxDpto.dbspAnoKeyPress(Sender: TObject; var Key: Char);
begin
  if key in ['-','.'] then
     key := #0 ;
end;

procedure TFRecApoxDpto.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If key=#13 then
  Begin
     key:=#0;
     perform(CM_DialogKey,VK_TAB,0);
  End;

end;

procedure TFRecApoxDpto.dblcdDeptoExit(Sender: TObject);
begin
  if trim(dbeDepto.Text)= '' then
     dblcdDepto.Text := '';
end;

procedure TFRecApoxDpto.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppReport2.PreviewForm.WindowState := wsMaximized;
  TppViewer(ppReport2.PreviewForm.Viewer).ZoomSetting := zs100Percent;
end;

//Inicio HPC_201601_APO --SE ADICIONA UN BOTON PARA EXPORTAR A EXCEL
procedure TFRecApoxDpto.BtnExcelClick(Sender: TObject);
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
   ppReport2.Reset ;
   xano  := dbspAno.Text;
   xdepto:= dblcdDepto.Text;
   ssql := ' SELECT'+
           ' TRANSANO,'+
           ' DPTODES,' +
           ' USENOM,'  +
           ' SUM(NVL(ENE,0)) as "ENERO",'+
           ' SUM(NVL(FEB,0)) as "FEBRERO",'+
           ' SUM(NVL(MAR,0)) as "MARZO",'+
           ' SUM(NVL(ABR,0)) as "ABRIL",'+
           ' SUM(NVL(MAY,0)) as "MAYO",'+
           ' SUM(NVL(JUN,0)) as "JUNIO",'+
           ' SUM(NVL(JUL,0)) as "JULIO",'+
           ' SUM(NVL(AGO,0)) as "AGOSTO",'+
           ' SUM(NVL(SETI,0)) as "SETIEMBRE",'+
           ' SUM(NVL(OCT,0)) as  "OCTUBRE",'+
           ' SUM(NVL(NOV,0)) as "NOVIEMBRE",'+
           ' SUM(NVL(DIC,0)) as "DICIEMBRE",'+
           'SUM(NVL(ENE,0))+SUM(NVL(FEB,0))+SUM(NVL(MAR,0))+SUM(NVL(ABR,0))+SUM(NVL(MAY,0))+SUM(NVL(JUN,0))+SUM(NVL(JUL,0))+SUM(NVL(AGO,0))+SUM(NVL(SETI,0))+SUM(NVL(OCT,0))+SUM(NVL(NOV,0))+SUM(NVL(DIC,0)) as TOT '+
           'FROM '+
           '(Select APO301.TRANSANO,'+
                   'APO301.TRANSMES,'+
                   'DPTOABR DPTODES,'+
                   'NVL(XXX1.USENOM,''   '')  USENOM,'+
                   'CASE WHEN APO301.TRANSMES=''01'' THEN  SUM(TRANSMTO-NVL(TRANSMTODEV,0)) END AS ENE,'+
                   'CASE WHEN APO301.TRANSMES=''02'' THEN  SUM(TRANSMTO-NVL(TRANSMTODEV,0)) END AS FEB,'+
                   'CASE WHEN APO301.TRANSMES=''03'' THEN  SUM(TRANSMTO-NVL(TRANSMTODEV,0)) END AS MAR,'+
                   'CASE WHEN APO301.TRANSMES=''04'' THEN  SUM(TRANSMTO-NVL(TRANSMTODEV,0)) END AS ABR,'+
                   'CASE WHEN APO301.TRANSMES=''05'' THEN  SUM(TRANSMTO-NVL(TRANSMTODEV,0)) END AS MAY,'+
                   'CASE WHEN APO301.TRANSMES=''06'' THEN  SUM(TRANSMTO-NVL(TRANSMTODEV,0)) END AS JUN,'+
                   'CASE WHEN APO301.TRANSMES=''07'' THEN  SUM(TRANSMTO-NVL(TRANSMTODEV,0)) END AS JUL,'+
                   'CASE WHEN APO301.TRANSMES=''08'' THEN  SUM(TRANSMTO-NVL(TRANSMTODEV,0)) END AS AGO,'+
                   'CASE WHEN APO301.TRANSMES=''09'' THEN  SUM(TRANSMTO-NVL(TRANSMTODEV,0)) END AS SETI,'+
                   'CASE WHEN APO301.TRANSMES=''10'' THEN  SUM(TRANSMTO-NVL(TRANSMTODEV,0)) END AS OCT,'+
                   'CASE WHEN APO301.TRANSMES=''11'' THEN  SUM(TRANSMTO-NVL(TRANSMTODEV,0)) END AS NOV,'+
                   'CASE WHEN APO301.TRANSMES=''12'' THEN  SUM(TRANSMTO-NVL(TRANSMTODEV,0)) END AS DIC '+
            ' from   APO301,APO101 XXX1'+
            ' where  APO301.UPROID = XXX1.UPROID(+) AND '+
                   ' APO301.USEID  = XXX1.USEID(+) AND '+
                   ' APO301.UPAGOID = XXX1.UPAGOID(+) AND '+
                   ' APO301.TRANSANO='''+xano+''' AND '+
                   ' XXX1.DPTOID='''+xdepto+''' AND '+
                   ' TRANSINTID=''APO'' AND '+
                   ' (NVL(TRANSMTO,0)-NVL(TRANSMTODEV,0)) > 0 '+
            ' group by APO301.TRANSANO,'+
                     'APO301.TRANSMES,'+
                     'APO301.DPTOABR,'+
                     'XXX1.USENOM '+
            ' order by  1,3,4,2) '+
            ' GROUP BY TRANSANO,DPTODES,USENOM' ;
    Screen.Cursor:=crHourGlass;
    dm1.cdsQry1.Close;
    dm1.cdsQry1.DataRequest(ssql);
    dm1.cdsQry1.Open;

    if dm1.cdsQry1.RecordCount >0 then
       begin
         DM1.HojaExcel('Recaudación de Aportes', dm1.dsQry1, DTGDATA);
       end
    else
    begin
       showmessage('No existe datos para generar Excel');
    end ;

   Screen.Cursor:=crDefault;
End;
//Final HPC_201601_APO

end.
