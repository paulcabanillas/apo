unit APO310;

// Inicio Uso Estándares:   01/08/2011
// Unidad               :   APO310
// Formulario           :   FRepEstRecaudacion
// Objetivo             :   Reporte de Estadística de Recaudación
//////////////////////////////////////////////////////////////////////////
// Actualizaciones      :
// HPC_201201_APO  06/01/2012 cambio de valor máximo para Año de Proceso
//////////////////////////////////////////////////////////////////////////
// DPP_201201_APO       : El pase se realiza apartir del pase HPC_201201_APO

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwclearbuttongroup, wwradiogroup, Mask, wwdbedit,
  Wwdbspin, fcButton, fcImgBtn, fcShapeBtn, ppProd, ppClass, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, ppBands, ppCache, ppPrnabl,
  ppCtrls, ppVar, TXComp;

type
  TFRepEstRecaudacion = class(TForm)
    Z2bbtnAceptar: TfcShapeBtn;
    Z2bbtnCancel: TfcShapeBtn;
    Label1: TLabel;
    dbseAno: TwwDBSpinEdit;
    rgTipoRep: TwwRadioGroup;
    bdepRepEstRec: TppBDEPipeline;
    pprCanRecaudado: TppReport;
    pprMonRecaudado: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
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
    ppDBText14: TppDBText;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLine1: TppLine;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLine2: TppLine;
    ppLabel14: TppLabel;
    ppLine3: TppLine;
    ppLabel15: TppLabel;
    ppLine4: TppLine;
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
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppLine5: TppLine;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppLine6: TppLine;
    ppLabel16: TppLabel;
    ppSummaryBand2: TppSummaryBand;
    ppDBText28: TppDBText;
    ppDBCalc26: TppDBCalc;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel44: TppLabel;
    ExtraOptions1: TExtraOptions;
    procedure Z2bbtnAceptarClick(Sender: TObject);
    procedure Z2bbtnCancelClick(Sender: TObject);
    // Inicio: DPP_201201_APO
    procedure FormCreate(Sender: TObject);
    // Fin: DPP_201201_APO
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRepEstRecaudacion: TFRepEstRecaudacion;

implementation

uses APODM;

{$R *.dfm}

procedure TFRepEstRecaudacion.Z2bbtnAceptarClick(Sender: TObject);
Var xSql:String;
begin
   If rgTipoRep.ItemIndex = 0 Then
   Begin
      xSql :=  ' SELECT TRANSANO, DPTODES, SUM(NVL(ENE,0)) as ENE1, SUM(NVL(FEB,0)) as FEB1, SUM(NVL(MAR,0)) as MAR1, SUM(NVL(ABR,0)) as ABR1,'
             + ' SUM(NVL(MAY,0)) as MAY1, SUM(NVL(JUN,0)) as JUN1, SUM(NVL(JUL,0)) as JUL1, SUM(NVL(AGO,0)) as AGO1, SUM(NVL(SETI,0)) as SET1, SUM(NVL(OCT,0)) as OCT1,'
             + ' SUM(NVL(NOV,0)) as NOV1, SUM(NVL(DIC,0)) as DIC1,SUM(NVL(ENE,0))+SUM(NVL(FEB,0))+SUM(NVL(MAR,0))+SUM(NVL(ABR,0))+SUM(NVL(MAY,0))+SUM(NVL(JUN,0))+SUM(NVL(JUL,0))+SUM(NVL(AGO,0))+SUM(NVL(SETI,0))+SUM(NVL(OCT,0))+SUM(NVL(NOV,0))+SUM(NVL(DIC,0)) as TOT'
             + ' FROM (Select APO301.TRANSANO,APO301.TRANSMES,APO158.DPTODES,'
             + ' CASE WHEN APO301.TRANSMES=''01'' THEN  SUM(NVL(TRANSMTO,0)-NVL(TRANSMTODEV,0)) END AS ENE,  CASE WHEN APO301.TRANSMES=''02'' THEN  SUM(NVL(TRANSMTO,0)-NVL(TRANSMTODEV,0)) END AS FEB,'
             + ' CASE WHEN APO301.TRANSMES=''03'' THEN  SUM(NVL(TRANSMTO,0)-NVL(TRANSMTODEV,0)) END AS MAR,  CASE WHEN APO301.TRANSMES=''04'' THEN  SUM(NVL(TRANSMTO,0)-NVL(TRANSMTODEV,0)) END AS ABR,'
             + ' CASE WHEN APO301.TRANSMES=''05'' THEN  SUM(NVL(TRANSMTO,0)-NVL(TRANSMTODEV,0)) END AS MAY,  CASE WHEN APO301.TRANSMES=''06'' THEN  SUM(NVL(TRANSMTO,0)-NVL(TRANSMTODEV,0)) END AS JUN,'
             + ' CASE WHEN APO301.TRANSMES=''07'' THEN  SUM(NVL(TRANSMTO,0)-NVL(TRANSMTODEV,0)) END AS JUL,  CASE WHEN APO301.TRANSMES=''08'' THEN  SUM(NVL(TRANSMTO,0)-NVL(TRANSMTODEV,0)) END AS AGO,'
             + ' CASE WHEN APO301.TRANSMES=''09'' THEN  SUM(NVL(TRANSMTO,0)-NVL(TRANSMTODEV,0)) END AS SETI, CASE WHEN APO301.TRANSMES=''10'' THEN  SUM(NVL(TRANSMTO,0)-NVL(TRANSMTODEV,0)) END AS OCT,'
             + ' CASE WHEN APO301.TRANSMES=''11'' THEN  SUM(NVL(TRANSMTO,0)-NVL(TRANSMTODEV,0)) END AS NOV,  CASE WHEN APO301.TRANSMES=''12'' THEN  SUM(NVL(TRANSMTO,0)-NVL(TRANSMTODEV,0)) END AS DIC'
             + ' FROM APO301, APO101,APO158'
             + ' WHERE APO301.USEID = APO101.USEID AND  APO301.UPAGOID = APO101.UPAGOID AND APO301.UPROID = APO101.UPROID'
             + ' AND APO101.DPTOID=APO158.DPTOID '
             + ' AND  APO301.TRANSANO = '+QuotedStr(dbseAno.Text)
             + ' AND  TRANSINTID=''APO'''
             + ' AND  (NVL(TRANSMTO,0)-NVL(TRANSMTODEV,0)) > 0'
             + ' GROUP BY APO301.TRANSANO,APO301.TRANSMES,APO158.DPTODES'
             + ' ORDER BY 2)'
             + ' GROUP BY TRANSANO, DPTODES';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      ppLabel23.Caption := 'MONTO DE RECAUDACION DE APORTES A NIVEL NACIONAL AÑO : '+dbseAno.Text+' AL '+DateToStr(Date);
      pprMonRecaudado.Print;
      pprMonRecaudado.Stop;
   End
   Else
   Begin
      xSql :=  ' SELECT TRANSANO,DPTODES, SUM(NVL(ENE,0)) as ENE1, SUM(NVL(FEB,0)) as FEB1, SUM(NVL(MAR,0)) as MAR1, SUM(NVL(ABR,0)) as ABR1,'
             + ' SUM(NVL(MAY,0)) as MAY1, SUM(NVL(JUN,0)) as JUN1, SUM(NVL(JUL,0)) as JUL1, SUM(NVL(AGO,0)) as AGO1, SUM(NVL(SETI,0)) as SET1, SUM(NVL(OCT,0)) as OCT1,'
             + ' SUM(NVL(NOV,0)) as NOV1, SUM(NVL(DIC,0)) as DIC1,SUM(NVL(ENE,0))+SUM(NVL(FEB,0))+SUM(NVL(MAR,0))+SUM(NVL(ABR,0))+SUM(NVL(MAY,0))+SUM(NVL(JUN,0))+SUM(NVL(JUL,0))+SUM(NVL(AGO,0))+SUM(NVL(SETI,0))+SUM(NVL(OCT,0))+SUM(NVL(NOV,0))+SUM(NVL(DIC,0)) as TOT'
             + ' FROM (Select APO301.TRANSANO,APO301.TRANSMES,APO158.DPTODES,'
             + ' CASE WHEN APO301.TRANSMES=''01'' THEN  SUM(1) END AS ENE,  CASE WHEN APO301.TRANSMES=''02'' THEN  SUM(1) END AS FEB,'
             + ' CASE WHEN APO301.TRANSMES=''03'' THEN  SUM(1) END AS MAR,  CASE WHEN APO301.TRANSMES=''04'' THEN  SUM(1) END AS ABR,'
             + ' CASE WHEN APO301.TRANSMES=''05'' THEN  SUM(1) END AS MAY,  CASE WHEN APO301.TRANSMES=''06'' THEN  SUM(1) END AS JUN,'
             + ' CASE WHEN APO301.TRANSMES=''07'' THEN  SUM(1) END AS JUL,  CASE WHEN APO301.TRANSMES=''08'' THEN  SUM(1) END AS AGO,'
             + ' CASE WHEN APO301.TRANSMES=''09'' THEN  SUM(1) END AS SETI, CASE WHEN APO301.TRANSMES=''10'' THEN  SUM(1) END AS OCT,'
             + ' CASE WHEN APO301.TRANSMES=''11'' THEN  SUM(1) END AS NOV,  CASE WHEN APO301.TRANSMES=''12'' THEN  SUM(1) END AS DIC'
             + ' FROM APO301, APO101,APO158'
             + ' WHERE APO301.USEID = APO101.USEID AND  APO301.UPAGOID = APO101.UPAGOID AND APO301.UPROID = APO101.UPROID AND APO101.DPTOID=APO158.DPTOID '
             + ' AND  APO301.TRANSANO = '+QuotedStr(dbseAno.Text)
             + ' AND  TRANSINTID=''APO'''
             + ' AND  (NVL(TRANSMTO,0)-NVL(TRANSMTODEV,0)) > 0'
             + ' GROUP BY APO301.TRANSANO,APO301.TRANSMES,APO158.DPTODES'
             + ' ORDER BY 2)'
             + ' GROUP BY TRANSANO,DPTODES';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      ppLabel41.Caption := 'CANTIDAD DE APORTANTES A NIVEL NACIONAL AÑO : '+dbseAno.Text+' AL '+DateToStr(Date);
      pprCanRecaudado.Print;
      pprCanRecaudado.Stop;
   end;
   end;
procedure TFRepEstRecaudacion.Z2bbtnCancelClick(Sender: TObject);
begin
FRepEstRecaudacion.Close;
end;

// Inicio: DPP_201201_APO
// Inicializa Año Máximo con Año de la Fecha del Sistema
procedure TFRepEstRecaudacion.FormCreate(Sender: TObject);
var
   xsSQL : String;
begin
   xsSQL := 'select to_char(sysdate,''YYYY'') ANOMAX  from DUAL';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsSQL);
   DM1.cdsQry.Open;
   dbseAno.MaxValue := strtoint(DM1.cdsQry.FieldByName('ANOMAX').AsString);
   DM1.cdsQry.Close;
end;
// Fin: DPP_201201_APO

end.
