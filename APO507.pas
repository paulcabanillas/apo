unit APO507;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppBands, ppCtrls, jpeg, ppVar, ppPrnabl, ppClass, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, ExtCtrls, wwdbedit, wwdblook, Wwdbdlg,
  StdCtrls, Mask, Wwdbspin, fcButton, fcImgBtn, fcShapeBtn, ppViewr, ppDB,
  ppTypes, ppDBPipe, Buttons;

type
  TFRepUnidProcUSES = class(TForm)
    pnlCabecera1119: TPanel;
    Z2bbtnCancel: TfcShapeBtn;
    Z2bbtnAceptar: TfcShapeBtn;
    pnl5466: TPanel;
    gpperiodo: TGroupBox;
    spedtMes: TwwDBSpinEdit;
    spedtAno: TwwDBSpinEdit;
    dblcdupro: TwwDBLookupComboDlg;
    dblcduse: TwwDBLookupComboDlg;
    dbeupro: TwwDBEdit;
    dbeUSE: TwwDBEdit;
    dblcdCiudad: TwwDBLookupComboDlg;
    rdgReporte: TRadioGroup;
    dblcdDepto: TwwDBLookupComboDlg;
    edtProvincia: TwwDBEdit;
    edtDepto: TwwDBEdit;
    RepUnidProc: TppReport;
    lbl111: TLabel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl9: TLabel;
    lbl99: TLabel;
    ppReporte: TppDBPipeline;
    rgCuenta: TRadioGroup;
    gbRangos: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    dblcdDesde: TwwDBLookupComboDlg;
    dblcdHasta: TwwDBLookupComboDlg;
    Z2bbtnSelec: TBitBtn;
    ppTitleBand1: TppTitleBand;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel9: TppLabel;
    ppImage1: TppImage;
    ppLabel26: TppLabel;
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
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel7: TppLabel;
    ppDBText3: TppDBText;
    ppLabel10: TppLabel;
    ppLine5: TppLine;
    ppLine7: TppLine;
    ppLine9: TppLine;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine4: TppLine;
    ppLabel36: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText8: TppDBText;
    procedure Z2bbtnCancelClick(Sender: TObject);
    procedure Z2bbtnAceptarClick(Sender: TObject);
    procedure RepUnidProcPreviewFormCreate(Sender: TObject);
    procedure dblcdDeptoExit(Sender: TObject);
    procedure dblcdCiudadExit(Sender: TObject);
    procedure dblcduproExit(Sender: TObject);
    procedure dblcduseExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Z2bbtnSelecClick(Sender: TObject);
    procedure rgCuentaClick(Sender: TObject);
    procedure rdgReporteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRepUnidProcUSES: TFRepUnidProcUSES;
  sWheIn1, sWheIn2, sWheIn3, sWheIn4 : String;



implementation
uses APODM, APO707;
{$R *.DFM}

procedure TFRepUnidProcUSES.Z2bbtnCancelClick(Sender: TObject);
begin
  self.close;
end;

procedure TFRepUnidProcUSES.Z2bbtnAceptarClick(Sender: TObject);
var
	xSQL : String;
begin
  xSQL:='SELECT * '+
				'FROM APO301 '+
				'WHERE TRANSANO='+QuotedStr(dm1.StrZero(spedtAno.Text,4))+' '+
				'AND TRANSMES='+QuotedStr(dm1.StrZero(spedtMes.Text,2));

  {
  if Length(sWheIn1) > 0 then
  	xSQL:=xSQL +' AND ' + sWheIn1;

  if Length(sWheIn2) > 0 then
  	xSQL:=xSQL +' AND ' + sWheIn2;

  if Length(sWheIn3) > 0 then
  	xSQL:=xSQL +' AND ' + sWheIn3;

  if Length(sWheIn4) > 0 then
  	xSQL:=xSQL +' AND ' + sWheIn4;}


  dm1.cdsReporte1.Close;
  dm1.cdsReporte1.DataRequest(xSQL);
  dm1.cdsReporte1.Open;

	RepUnidProc.Template.FileName:=wRutaRpt+'\RptUnidProc.rtm';
  RepUnidProc.Template.LoadFromFile;
	RepUnidProc.Print;
end;

procedure TFRepUnidProcUSES.RepUnidProcPreviewFormCreate(Sender: TObject);
begin
	//, ppViewr
	TppReport(Sender).PreviewForm.WindowState:=WsMaximized;
	TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting:=zsPageWidth;
end;

procedure TFRepUnidProcUSES.dblcdDeptoExit(Sender: TObject);
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
end;


procedure TFRepUnidProcUSES.dblcdCiudadExit(Sender: TObject);
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

procedure TFRepUnidProcUSES.dblcduproExit(Sender: TObject);
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
end;

procedure TFRepUnidProcUSES.dblcduseExit(Sender: TObject);
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
end;

procedure TFRepUnidProcUSES.FormActivate(Sender: TObject);
var
	Y, M, D : Word;
begin
	DecodeDate(Date, Y, M, D);
  spedtAno.Value:=Y;
  spedtMes.Value:=M;
	rgCuenta.Enabled:=False;  
end;

procedure TFRepUnidProcUSES.Z2bbtnSelecClick(Sender: TObject);
begin
	Screen.Cursor:=crHourGlass;
	FSeleccio.sTipo:=rdgReporte.ItemIndex;
  FSeleccio.xRg  :=rdgReporte.ItemIndex;
  FSeleccio.ShowModal;
end;

procedure TFRepUnidProcUSES.rgCuentaClick(Sender: TObject);
var
	xSQL : String;
begin
  if rgCuenta.Itemindex = 0 then
  begin
		Z2bbtnSelec.enabled := False;
   	gbRangos.Enabled:=False;
   	dblcdDesde.Text:='';
   	dblcdHasta.Text:='';
   	dblcdDesde.Enabled:=False;
   	dblcdHasta.Enabled:=False;
  end;
  if rgCuenta.Itemindex = 1 then
  begin
  	Screen.Cursor:=crHourGlass;
   	Z2bbtnSelec.enabled := False;
   	gbRangos.Enabled:=True;
   	dblcdDesde.Text:='';
   	dblcdHasta.Text:='';
   	dblcdDesde.Enabled:=True;
   	dblcdHasta.Enabled:=True;
    {xSQL:='SELECT CIAID, CUENTAID, CTADES FROM CNT401 WHERE '
         +'CIAID='''+dblcCia.Text+''' AND  NVL(CLAUXID,''NULO'')=''NULO'' AND '
         +'NVL(AUXID,''NULO'')=''NULO'' AND NVL(CCOSID,''NULO'')=''NULO'' ORDER BY CUENTAID';}
    xSQL :='SELECT CUENTAID, CTADES, CTAABR, ''N'' FLAG ' +
           'FROM TGE202 ' ;
    //       'WHERE CTA_DET=''S'' AND CIAID='+QuotedStr(dblcCia.Text);

    //DM1.cdsCuenta.fetchondemand:=False;
    //DM1.cdsCuenta.packetrecords:=-1;
    //DM1.cdsCuenta.fetchondemand:=True;
    //DM1.FiltraCDS(DM1.cdsCuenta,xSQL);
    //dm1.cdsCuenta.IndexFieldNames:='CUENTAID';
		dblcdDesde.SetFocus;
    Screen.Cursor:=CrDefault;
  end;
  if rgCuenta.Itemindex = 2 then
  begin
  	Screen.Cursor:=crHourGlass;
   	dblcdDesde.Text:='';
   	dblcdHasta.Text:='';
   	Z2bbtnSelec.enabled := True;
   	Z2bbtnSelec.Click;
   	gbRangos.Enabled:=False;
   	dblcdDesde.Enabled:=False;
   	dblcdHasta.Enabled:=False;
  end;

end;

procedure TFRepUnidProcUSES.rdgReporteClick(Sender: TObject);
begin
	if rdgReporte.ItemIndex = 0 then
  begin
    rgCuenta.Enabled:=False;
    Z2bbtnSelec.Enabled:=False;
    sWheIn1:='';
    sWheIn2:='';
    sWheIn3:='';
    sWheIn4:='';
  end
  else
  begin
    rgCuenta.Enabled:=True;
    Z2bbtnSelec.Enabled:=True;      	
  end;
end;

end.
