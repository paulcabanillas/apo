unit APO510;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppCtrls, ppBands, jpeg, ppVar, ppPrnabl, ppClass, ppCache, ppComm,
  ppTypes, ppRelatv, ppProd, ppReport, ExtCtrls, wwdbedit, wwdblook, Wwdbdlg,
  StdCtrls, Mask, Wwdbspin, fcButton, fcImgBtn, fcShapeBtn, ppViewr, ppDB,
  ppDBPipe;

type
  TFRepControlRecaudacion = class(TForm)
    pnlCabecera: TPanel;
    Z2bbtnCancel: TfcShapeBtn;
    Z2bbtnAceptar: TfcShapeBtn;
    zzzzz: TPanel;
    gpperiodo: TGroupBox;
    spemes: TwwDBSpinEdit;
    speano: TwwDBSpinEdit;
    dblcdupro: TwwDBLookupComboDlg;
    dblcduse: TwwDBLookupComboDlg;
    dbeupro: TwwDBEdit;
    dbeUSE: TwwDBEdit;
    dblcdCiudad: TwwDBLookupComboDlg;
    rgreporte: TRadioGroup;
    dblcdDepto: TwwDBLookupComboDlg;
    edtProvincia: TwwDBEdit;
    edtDepto: TwwDBEdit;
    ppRepControlRecaudacion: TppReport;
    ppDBrepControlRecaudacion: TppDBPipeline;
    ppTitleBand1: TppTitleBand;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppLine4: TppLine;
    ppLabel36: TppLabel;
    ppLabel6: TppLabel;
    ppLabel9: TppLabel;
    ppLabel12: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel11: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel8: TppLabel;
    ppLabel10: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppDBCalc2: TppDBCalc;
    ppDBText3: TppDBText;
    procedure Z2bbtnAceptarClick(Sender: TObject);
    procedure Z2bbtnCancelClick(Sender: TObject);
    procedure ppRepControlRecaudacionPreviewFormCreate(Sender: TObject);
    procedure dblcdDeptoExit(Sender: TObject);
    procedure dblcdCiudadExit(Sender: TObject);
    procedure dblcduproExit(Sender: TObject);
    procedure dblcduseExit(Sender: TObject);
    procedure rgreporteClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    fwhere:string;
  public
    { Public declarations }
  end;

var
  FRepControlRecaudacion: TFRepControlRecaudacion;

implementation
uses APODM;

{$R *.DFM}

procedure TFRepControlRecaudacion.Z2bbtnAceptarClick(Sender: TObject);
var
 Reporte,mesr,messtr:string;
 mes1,mes,X10:integer;
begin
   if length(speano.text)<>4 then
   Begin
         dblcdDepto.SetFocus;
         Raise Exception.create('Error, USE no válido');
   End;

   mes1:=length(spemes.text);
   if mes1=1 then
      mesr:=concat('0',spemes.text);
   if mes1=2 then
      mesr:=spemes.text;

   mes:= strtoint(spemes.text)-1;
   if length(inttostr(mes))=1 then
      messtr:=concat('0',inttostr(mes));
   if length(inttostr(mes))=2 then
      messtr:=inttostr(mes);

   dm1.cdsReporte3.Close;
{   Reporte:='SELECT MAX(A.DPTOID) DPTOID,COUNT(*) NUMERO,MAX(A.TRANSANO)  TRANSANO, MAX(A.TRANSMES) TRANSMES '
            + ' ,MAX(A.DPTOABR) DPTOABR,MAX(D.UPRONOM) UPRONOM,MAX(A.USEID) USEID,MAX(A.USEABR) USEABR,MAX(A.UPROID) UPROID '
            + ' ,SUM(B.SUMA) MONTO_ESPERADO ,SUM(A.TRANSMTO) MONTO_RECAUDADO '
            + ' ,( SUM(A.TRANSMTO)-SUM(B.SUMA) ) AS DIFERENCIA FROM APO301 A , '
            + ' (SELECT SUM(C.TRANSMTO) AS SUMA ,MAX(C.ASOID),MAX(C.USEID) USEID '
            + ' ,MAX(TRANSMES) TRANSMES,MAX(TRANSANO) TRANSANO  FROM APO301 C '
            + ' WHERE C.TRANSMES=''0'
            + inttostr(mes)+''' AND  C.TRANSANO='''+speano.text
            + ''' GROUP BY C.USEID,C.TRANSANO,C.TRANSMES ) B , '
            + ' APO102 D  WHERE   A.TRANSANO='''+speano.text+''' AND A.TRANSMES='''+mesr
            + ''' AND A.UPROID=D.UPROID AND A.USEID=B.USEID '+fwhere+''
            + ' GROUP BY A.USEID,A.TRANSANO,A.TRANSMES '
            + ' ORDER BY A.USEID,A.TRANSANO,A.TRANSMES ';

 }
   Reporte:=' SELECT  B.DPTOID,B.USEID,B.UPROID'
//            +' ,SUM(B.MONTO_ESPERADO) MONTO_ESPERADO '
            +' ,DECODE(SUM(B.MONTO_ESPERADO),0,''NO HAY INF.'',SUM(B.MONTO_ESPERADO) ) MONTO_ESPERADO '
//            +' ,SUM(B.MONTO_RECAUDADO) MONTO_RECAUDADO '
            + ' ,DECODE(SUM(B.MONTO_RECAUDADO),0,''NO HAY INF.'',SUM(B.MONTO_RECAUDADO)) MONTO_RECAUDADO '
            + ' ,B.DPTOABR DPTOABR ,MAX(B.USEABR) USEABR,MAX(D.UPRONOM) UPRONOM '
//            + '  (100*SUM(B.MONTO_RECAUDADO))/SUM(B.MONTO_ESPERADO) GRADO'
            + ' ,DECODE(SUM(B.MONTO_ESPERADO),0,''NO HAY'',ROUND((100*SUM(B.MONTO_RECAUDADO))/SUM(B.MONTO_ESPERADO),2)) GRADO '
            + ' ,(SUM(B.MONTO_RECAUDADO)- SUM(B.MONTO_ESPERADO)) DIFERENCIA ,SUM(B.NUMERO) NUMERO '
            + ' FROM '
            + ' APO102 D , '
            + ' (SELECT A.DPTOID,A.DPTOABR ,A.USEID,A.USEABR,A.UPROID,A.TRANSANO,A.TRANSMES '
            + ' ,DECODE(A.TRANSMES,'''+mesr+''',COUNT(*),0) NUMERO '
            + ' ,DECODE(A.TRANSMES,'''+messtr+''',SUM(A.TRANSMTO),0 ) MONTO_ESPERADO '
            + ',DECODE(A.TRANSMES,'''+mesr+''',SUM(A.TRANSMTO),0) MONTO_RECAUDADO '
            + ' FROM APO301 A '
            + ' WHERE   A.TRANSANO='''+speano.text+''' '
            + ' AND  ( A.TRANSMES='''+messtr+''' OR A.TRANSMES='''+mesr+''') '
            + ' GROUP BY A.DPTOID,A.DPTOABR,A.USEID,A.USEABR,A.UPROID,A.TRANSANO,A.TRANSMES) B '
            + ' WHERE B.UPROID=D.UPROID '+fwhere+''
            + ' GROUP BY B.DPTOID,B.DPTOABR,B.USEID,B.USEABR,B.UPROID ' ;

   dm1.cdsReporte3.Close;
   dm1.cdsReporte3.DataRequest(Reporte);
   dm1.cdsReporte3.Open;

   ppRepControlRecaudacion.template.fileName:=wRutaRpt+'\ContRecAportes.rtm';
   ppRepControlRecaudacion.template.LoadFromFile;

   ppRepControlRecaudacion.Print;
   ppRepControlRecaudacion.stop;

   x10:=Self.ComponentCount-1;
   While x10 >= 0 do
    begin
        if Self.Components[x10].ClassName='TppGroup' then
        begin
          Self.Components[x10].Free;
        end;
        x10:=x10-1;
    end;
   DM1.cdsDpto.CLOSE;
   dm1.cdsUse.close;
   dm1.cdsUPro.close;
end;

procedure TFRepControlRecaudacion.Z2bbtnCancelClick(Sender: TObject);
begin
Self.Close;
end;

procedure TFRepControlRecaudacion.ppRepControlRecaudacionPreviewFormCreate(
  Sender: TObject);
begin
//, ppViewr
TppReport(Sender).PreviewForm.WindowState:=WsMaximized;
TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting:=zsPageWidth;

end;

procedure TFRepControlRecaudacion.dblcdDeptoExit(Sender: TObject);
var
xwhere:string;
begin
  xWhere:='DPTOID='''+dblcdDepto.Text+'''';
  edtDepto.Text:=DM1.DisplayDescrip('prvSQL','APO158','DPTODES',xWhere,'DPTODES');

 if (dblcdDepto.text='') and (edtDepto.text<>'') then
  begin
    dblcdDepto.SetFocus;
    Raise Exception.create('Error, USE no válido');
  end;
  
 fwhere:=' AND B.DPTOID='''+DM1.cdsDpto.fieldbyname('DPTOID').asstring+''''


end;

procedure TFRepControlRecaudacion.dblcdCiudadExit(Sender: TObject);
var
xwhere:string;
begin
  xWhere:='CIUDID='''+dblcdCiudad.Text+'''';
  edtProvincia.Text:=DM1.DisplayDescrip('prvSQL','APO123','CIUDDES',xWhere,'CIUDDES');
 if (dblcdCiudad.Text='') and (edtProvincia.text<>'') then
  begin
    dblcdCiudad.SetFocus;
    Raise Exception.create('Error, Provincia no válido');
  end;


end;

procedure TFRepControlRecaudacion.dblcduproExit(Sender: TObject);
var
xwhere:string;
begin
  xWhere:='UPROID='''+dblcdupro.Text+'''';
  dbeupro.Text:=DM1.DisplayDescrip('prvSQL','APO102','UPRONOM',xWhere,'UPRONOM');
 if (dblcdupro.Text='') and (dbeUpro.text<>'') then
  begin
    dblcdupro.SetFocus;
    Raise Exception.create('Error,Unidad de Proceso no válido');
  end;
  fwhere:=' AND B.UPROID='''+DM1.cdsuPRO.fieldbyname('UPROID').asstring+''''

end;

procedure TFRepControlRecaudacion.dblcduseExit(Sender: TObject);
var
xwhere:string;
begin
  xWhere:='USEID='''+dblcduse.Text+'''';
  dbeUSE.Text:=DM1.DisplayDescrip('prvSQL','APO101','USENOM',xWhere,'USENOM');
 if (dblcduse.text='') and (dbeUpro.text<>'') then
  begin
    dblcduse.SetFocus;
    Raise Exception.create('Error, USE no válido');
  end;
 fwhere:=' AND B.USEID='''+DM1.cdsUSE.fieldbyname('USEID').asstring+''''


end;

procedure TFRepControlRecaudacion.rgreporteClick(Sender: TObject);
begin
  if rgreporte.ItemIndex=0 then
  begin
    dblcddepto.enabled:=false;
    edtdepto.enabled:=false;
    dblcdciudad.enabled:=false;
    edtprovincia.enabled:=false;
    dblcdupro.enabled:=false;
    dbeupro.enabled:=false;
    dblcduse.enabled:=false;
    dbeuse.enabled:=false;
    fwhere:='';
    dblcduse.text:='';
    dbeuse.text:='';
    dblcdupro.text:='';
    dbeupro.text:='';
    edtprovincia.text:='';
    dblcdciudad.text:='';
    dblcddepto.text:='';
    edtdepto.text:='';
    Z2bbtnAceptar.enabled:=true;
  end;

  if rgreporte.itemindex=1 then
  begin
    dblcddepto.enabled:=true;
    DM1.Filtracds(DM1.CDSDPTO,'SELECT * FROM APO158');
    edtdepto.enabled:=false;
    dblcdciudad.enabled:=false;
    edtprovincia.enabled:=false;
    dblcdupro.enabled:=false;
    dbeupro.enabled:=false;
    dblcduse.enabled:=false;
    dbeuse.enabled:=false;
    dblcduse.text:='';
    dbeuse.text:='';
    dblcdupro.text:='';
    dbeupro.text:='';
    edtprovincia.text:='';
    dblcdciudad.text:='';
    dblcddepto.text:='';
    edtdepto.text:='';
    dblcdDepto.Selected.Clear;
    dblcdDepto.Selected.Add('DPTOID'#9'3'#9'Código');
    dblcdDepto.Selected.Add('DPTODES'#9'50'#9'Descripción');
    Z2bbtnAceptar.enabled:=true;
  end;

  if rgreporte.ItemIndex=2 then
  begin
    dblcddepto.enabled:=true;
    edtdepto.enabled:=false;
    dblcdciudad.enabled:=true;
    edtprovincia.enabled:=false;
    dblcdupro.enabled:=false;
    dbeupro.enabled:=false;
    dblcduse.enabled:=false;
    dbeuse.enabled:=false;
    dblcduse.text:='';
    dbeuse.text:='';
    dblcdupro.text:='';
    dbeupro.text:='';
    edtprovincia.text:='';
    dblcdciudad.text:='';
    dblcddepto.text:='';
    edtdepto.text:='';
    Z2bbtnAceptar.enabled:=true;
  end;
  if rgreporte.ItemIndex=3 then
  begin
    dblcddepto.enabled:=false;
    edtdepto.enabled:=false;
    dblcdciudad.enabled:=false;
    edtprovincia.enabled:=false;
    dblcdupro.enabled:=true;
    dbeupro.enabled:=false;
    dblcduse.enabled:=false;
    dbeuse.enabled:=false;
    dblcduse.text:='';
    dbeuse.text:='';
    dblcdupro.text:='';
    dbeupro.text:='';
    edtprovincia.text:='';
    dblcdciudad.text:='';
    dblcddepto.text:='';
    edtdepto.text:='';
    DM1.Filtracds(DM1.CDSUPRO,'SELECT * FROM APO102');
    dblcdupro.Selected.Clear;
    dblcdupro.Selected.Add('UPROID'#9'4'#9'Código');
    dblcdupro.Selected.Add('UPRONOM'#9'50'#9'Descripción');
    Z2bbtnAceptar.enabled:=true;

  end;
  if rgreporte.ItemIndex=4 then
  begin
    dblcddepto.enabled:=false;
    edtdepto.enabled:=false;
    dblcdciudad.enabled:=false;
    edtprovincia.enabled:=false;
    dblcdupro.enabled:=false;
    dbeupro.enabled:=false;
    dblcduse.enabled:=true;
    dbeuse.enabled:=false;
    dblcduse.text:='';
    dbeuse.text:='';
    dblcdupro.text:='';
    dbeupro.text:='';
    edtprovincia.text:='';
    dblcdciudad.text:='';
    dblcddepto.text:='';
    edtdepto.text:='';
    DM1.Filtracds(DM1.CDSUSE,'SELECT * FROM APO101');
    dblcduse.Selected.Clear;
    dblcduse.Selected.Add('USEID'#9'4'#9'Código');
    dblcduse.Selected.Add('USENOM'#9'50'#9'Descripción');
    Z2bbtnAceptar.enabled:=true;
 end;


end;

procedure TFRepControlRecaudacion.FormActivate(Sender: TObject);
begin
Z2bbtnAceptar.enabled:=false;
end;

end.
