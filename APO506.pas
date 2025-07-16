unit APO506;

// Inicio Uso Estándares: 01/08/2011
// Unidad               : APO506
// Formulario           : FRepEstadoCtaAportes
// Fecha de Creación    : 15/12/2003
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Estado de Cuenta de Aportes
// Actualizaciones      :
// HPC_201501_APO       : 06/01/2015 - Cambio de DCOM a Socket

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppCtrls, ppVar, ppPrnabl, ppClass, ppBands, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, fcButton, fcImgBtn, fcShapeBtn, StdCtrls, Mask,
  wwdbedit, ExtCtrls, wwdblook, Wwdbdlg, Wwdbspin, ppViewr, ppDB, ppDBPipe,
  ppTypes, ppEndUsr,db,mant,ControlGridDisp, Grids, DBGrids;

type
  TFRepEstadoCtaAportes = class(TForm)
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
    dblcdDepto: TwwDBLookupComboDlg;
    dbeProvincia: TwwDBEdit;
    dbeDepto: TwwDBEdit;
    dblcdaso: TwwDBLookupComboDlg;
    dbenombres: TwwDBEdit;
    dbeam: TwwDBEdit;
    dbeape: TwwDBEdit;
    RGreporte: TRadioGroup;
    ppDBRepCtaAportes: TppDBPipeline;
    Button1: TButton;
    ppRepctaAportes: TppReport;
    ppDesigner1: TppDesigner;
    ppHeaderBand1: TppHeaderBand;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable7: TppSystemVariable;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLabel32: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText10: TppDBText;
    ppDBText56: TppDBText;
    ppDBText9: TppDBText;
    ppDBText57: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppGroup8: TppGroup;
    ppGroupHeaderBand8: TppGroupHeaderBand;
    ppLabel33: TppLabel;
    ppLabel40: TppLabel;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppDBText31: TppDBText;
    ppDBText44: TppDBText;
    ppLabel51: TppLabel;
    ppDBText45: TppDBText;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppLabel54: TppLabel;
    ppDBText48: TppDBText;
    ppLabel55: TppLabel;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppDBText11: TppDBText;
    ppGroupFooterBand8: TppGroupFooterBand;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppSystemVariable8: TppSystemVariable;
    ppDBCalc1: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    procedure Z2bbtnAceptarClick(Sender: TObject);
    procedure Z2bbtnCancelClick(Sender: TObject);
    procedure ppRepCtaAportesPreviewFormCreate(Sender: TObject);
    procedure dblcdDeptoExit(Sender: TObject);
    procedure dblcdCiudadExit(Sender: TObject);
    procedure dblcduproExit(Sender: TObject);
    procedure dblcduseExit(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure RGreporteClick(Sender: TObject);
    procedure dblcdasoExit(Sender: TObject);
    procedure dblcdasoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    xcondicion:string;
    Xwhere:string;

    procedure OnEditRAsociado (Sender : TObject; MantFields: TFields);
    { Private declarations }

  public
   mtxaso:TMant ;
    { Public declarations }
  end;

var
  FRepEstadoCtaAportes: TFRepEstadoCtaAportes;

implementation
uses APODM, MsgDlgs, APO303;

{$R *.DFM}

procedure TFRepEstadoCtaAportes.Z2bbtnAceptarClick(Sender: TObject);
var
  reporte:string;
  X10:integer;
begin
  Reporte:=
  'SELECT A.DEVANO,A.DEVMES,A.TRANSID,A.ASOID,J.CIUDID,C.CIUDDES,J.ASORESNOM,J.ASOFRESNOM, '
     +' A.DPTOABR,A.USEABR, A.FREG,G.UPRONOM,P.UPAGONOM,J.ASORESCESE,J.ASOFRESCESE, '
     +' A.ASOCODMOD,A.ASOAPENOM,A.USEID,A.UPROID,A.UPAGOID, '
     +' A.TRANSNOPE,A.TRANSFOPE ,A.TRANSANO,A.TRANSMES '
     +' ,DECODE(A.FORPAGOABR,''REG'',A.TRANSMTO,DECODE(A.FORPAGOABR,''PLA'',A.TRANSMTO,0)) SUMAAPORTE '
     +' ,DECODE(A.FORPAGOABR,''REG'',0,DECODE(A.FORPAGOABR,''PLA'',0,A.TRANSMTO)) SUMAOTRO '
     +' ,A.SALDOANT,A.INTERESMTO,A.SALDO,A.BONUSMTO,A.TRANSMTODEV,V.FORPAGODES '
     +' ,DECODE(TRANSID,''DEVOLUCION'',''DEV''||'' ''||V.FORPAGOABR||'' ''||DEVANO||''/''||DEVMES,V.FORPAGOABR ) '
     +' FORPAGOABR  ,V.FORPAGOID, '
     +' DECODE(TRANSID,''APORTE'',A.TRANSMTODEV,0) APORTEDEV, '
     +' A.DPTOID,J.ASODNI,J.ASONCTA,J.ASODIR,J.REGPENID,J.ASOCODPAGO,J.SITCTA,J.ASOTELF1 '
     +' ,J.ASOTELF2 ,DECODE(K.FVIGENTE,''S'',K.CEDUDES,'' '') CEDUDES '
     +' ,A.TRANSMTO + DECODE(A.TRANSMTODEV,'''',0,A.TRANSMTODEV) SUMATOT '
 +' FROM APO301 A, APO101 F, APO102 G, APO201 J,APO202 K, APO103 P , COB101 V, APO123 C'
 +' WHERE A.ASOID=J.ASOID'
     +' AND  A.DPTOID=F.DPTOID(+) '
     +' AND  J.CIUDID=C.CIUDID(+) '
     +' AND A.USEID=F.USEID(+) '
     +' AND J.ASOID=K.ASOID(+) '
     +' AND A.UPROID=G.UPROID(+) '
     +' AND A.UPAGOID=P.UPAGOID(+) '
     +' AND A.FORPAGOID=V.FORPAGOID(+) '
     +Xwhere
 +' ORDER BY A.DPTOID,J.CIUDID,A.UPROID,A.USEID,A.ASOID,A.TRANSANO,A.TRANSMES';

	Screen.Cursor:=crHourGlass;

   dm1.cdsReporte1.Close;
   dm1.cdsReporte1.DataRequest(Reporte);
   dm1.cdsReporte1.Open;

   ppDBRepCtaAportes.DataSource:=DM1.dsReporte1;
	if dm1.cdsReporte1.RecordCount = 0 then  begin
    ErrorMsg(Caption, ' No Existe Información ');
   	Screen.Cursor := crDefault;
    Exit;
   end;

   ppRepCtaAportes.template.fileName:=wRutaRpt+'\EstadoCtaAporte.rtm';
   ppRepCtaAportes.template.LoadFromFile;
   Screen.Cursor:=crDefault;
//   ppDesigner1.Show;
   ppRepCtaAportes.Print;
   ppRepCtaAportes.stop;

   Screen.Cursor:=crDefault;

   x10:=Self.ComponentCount-1;
   While x10 >= 0 do
    begin
        if Self.Components[x10].ClassName='TppGroup' then
          Self.Components[x10].Free;
        x10:=x10-1;
    end;
end;

{begin

  ppRepCtaAportes.Print;
end;}

procedure TFRepEstadoCtaAportes.OnEditRAsociado(Sender: TObject; MantFields: TFields);
begin
  if DM1.cdsAsociados.RecordCount = 0 then
  begin
    ShowMessage('No existen registros a editar');
    exit;
  end;
  FRepEstadoCtaAportes.dblcdaso.text:=dm1.cdsasociados.fieldbyname('ASOID').asstring;
  FRepEstadoCtaAportes.dbeape.text:=DM1.cdsasociados.fieldbyname('ASOAPEPAT').asstring;
  FRepEstadoCtaAportes.dbeam.text:=DM1.cdsasociados.fieldbyname('ASOAPEMAT').asstring;
  FRepEstadoCtaAportes.dbenombres.text:=DM1.cdsasociados.fieldbyname('ASONOMBRES').asstring;
  xwhere:=' AND A.ASOID='''+DM1.cdsAsociados.fieldbyname('ASOID').asstring+'''';
end;
procedure TFRepEstadoCtaAportes.Z2bbtnCancelClick(Sender: TObject);
begin
  self.Close;

end;

procedure TFRepEstadoCtaAportes.ppRepCtaAportesPreviewFormCreate(
  Sender: TObject);
begin
//, ppViewr
TppReport(Sender).PreviewForm.WindowState:=WsMaximized;
TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting:=zsPageWidth;

end;

procedure TFRepEstadoCtaAportes.dblcdDeptoExit(Sender: TObject);
begin
   xCondicion:='DPTOID='''+DM1.cdsDpto.fieldbyname('DPTOID').asstring+'''';
   dbedepto.text:=DM1.DisplayDescrip('prvTGE','APO158','*',xCondicion,'DPTODES');
   xwhere:=' AND A.DPTOID='''+DM1.cdsDpto.fieldbyname('DPTOID').asstring+''''

{  xWhere:='DPTOID='''+dblcdDepto.Text+'''';
  edtDepto.Text:=DM1.DisplayDescrip('prvSQL','APO158','DPTODES',xWhere,'DPTODES');

 if (dblcdDepto.text='') and (edtDepto.text<>'') then
  begin
    dblcdDepto.SetFocus;
    Raise Exception.create('Error, USE no válido');
  end;}


end;


procedure TFRepEstadoCtaAportes.dblcdCiudadExit(Sender: TObject);
begin
   xCondicion:='CIUDID='''+DM1.cdsprovin.fieldbyname('CIUDID').asstring+'''';
   dbeprovincia.text:=DM1.DisplayDescrip('prvTGE','APO123','*',xCondicion,'CIUDDES');

{  xWhere:='CIUDID='''+dblcdCiudad.Text+'''';
  edtProvincia.Text:=DM1.DisplayDescrip('prvSQL','APO123','CIUDDES',xWhere,'CIUDDES');
 if (dblcdCiudad.Text='') and (edtProvincia.text<>'') then
  begin
    dblcdCiudad.SetFocus;
    Raise Exception.create('Error, Provincia no válido');
  end;}


end;

procedure TFRepEstadoCtaAportes.dblcduproExit(Sender: TObject);
begin
   xCondicion:='UPROID='''+DM1.cdsUPRO.fieldbyname('UPROID').asstring+'''';
   dbeupro.text:=DM1.DisplayDescrip('prvTGE','APO102','*',xCondicion,'UPRONOM');
   xwhere:=' AND A.UPROID='''+DM1.cdsUPRO.fieldbyname('UPROID').asstring+''''

{  xWhere:='UPROID='''+dblcdupro.Text+'''';
  dbeupro.Text:=DM1.DisplayDescrip('prvSQL','APO102','UPRONOM',xWhere,'UPRONOM');
 if (dblcdupro.Text='') and (dbeUpro.text<>'') then
  begin
    dblcdupro.SetFocus;
    Raise Exception.create('Error,Unidad de Proceso no válido');
  end;
 }
end;

procedure TFRepEstadoCtaAportes.dblcduseExit(Sender: TObject);
var
XSQL:string;
begin
   xCondicion:='USEID='''+DM1.cdsUSE.fieldbyname('USEID').asstring+'''';
   dbeuse.text:=DM1.DisplayDescrip('prvTGE','APO101','*',xCondicion,'USENOM');
   if rgreporte.ItemIndex=5 then
   begin
     XSQL:='SELECT * FROM APO201 WHERE USEID='''+DM1.cdsUSE.fieldbyname('USEID').asstring+'''';
     DM1.cdsAso.close;
     dm1.cdsAso.DataRequest(XSQL);
     dm1.cdsAso.open;
     dblcdAso.enabled:=true;
   end;
   xwhere:=' AND A.USEID='''+DM1.cdsUSE.fieldbyname('USEID').asstring+''''

{
  xWhere:='USEID='''+dblcduse.Text+'''';
  dbeUSE.Text:=DM1.DisplayDescrip('prvSQL','APO101','USENOM',xWhere,'USENOM');
 if (dblcduse.text='') and (dbeUpro.text<>'') then
  begin
    dblcduse.SetFocus;
    Raise Exception.create('Error, USE no válido');
  end;
   if rgreporte.ItemIndex=5 then
   begin
     XSQL:='SELECT * FROM APO201 WHERE USEID='''+DM1.cdsUSES.fieldbyname('USEID').asstring+'''';
     DM1.cdsAso.close;
     dm1.cdsAso.DataRequest(XSQL);
     dm1.cdsAso.open;
     dblcAso.enabled:=true;
   end;
 }

end;

procedure TFRepEstadoCtaAportes.RadioGroup1Click(Sender: TObject);
begin
  if rgreporte.ItemIndex=0 then
  begin
    dblcddepto.enabled:=false;
    dbedepto.enabled:=false;
    dblcdciudad.enabled:=false;
    dbeprovincia.enabled:=false;
    dblcdupro.enabled:=false;
    dbeupro.enabled:=false;
    dblcduse.enabled:=false;
    dbeuse.enabled:=false;
    dblcdaso.enabled:=false;
    dbeape.enabled:=false;
    dbeam.enabled:=false;
    dbenombres.enabled:=false;
    xwhere:='';
  end;

  if rgreporte.ItemIndex=1 then
  begin
    dblcddepto.enabled:=true;
    dbedepto.enabled:=false;
    dblcdciudad.enabled:=false;
    dbeprovincia.enabled:=false;
    dblcdupro.enabled:=false;
    dbeupro.enabled:=false;
    dblcduse.enabled:=false;
    dbeuse.enabled:=false;
    dblcdaso.enabled:=false;
    dbeape.enabled:=false;
    dbeam.enabled:=false;
    dbenombres.enabled:=false;
  end;

  if rgreporte.ItemIndex=2 then
  begin
    dblcddepto.enabled:=true;
    dbedepto.enabled:=false;
    dblcdciudad.enabled:=true;
    dbeprovincia.enabled:=false;
    dblcdupro.enabled:=false;
    dbeupro.enabled:=false;
    dblcduse.enabled:=false;
    dbeuse.enabled:=false;
    dblcdaso.enabled:=false;
    dbeape.enabled:=false;
    dbeam.enabled:=false;
    dbenombres.enabled:=false;
  end;
  if rgreporte.ItemIndex=3 then
  begin
    dblcddepto.enabled:=false;
    dbedepto.enabled:=false;
    dblcdciudad.enabled:=false;
    dbeprovincia.enabled:=false;
    dblcdupro.enabled:=true;
    dbeupro.enabled:=false;
    dblcduse.enabled:=false;
    dbeuse.enabled:=false;
    dblcdaso.enabled:=false;
    dbeape.enabled:=false;
    dbeam.enabled:=false;
    dbenombres.enabled:=false;
  end;
  if rgreporte.ItemIndex=4 then
  begin
    dblcddepto.enabled:=false;
    dbedepto.enabled:=false;
    dblcdciudad.enabled:=false;
    dbeprovincia.enabled:=false;
    dblcdupro.enabled:=false;
    dbeupro.enabled:=false;
    dblcduse.enabled:=true;
    dbeuse.enabled:=false;
    dblcdaso.enabled:=false;
    dbeape.enabled:=false;
    dbeam.enabled:=false;
    dbenombres.enabled:=false;
  end;

  if rgreporte.ItemIndex=5 then
  begin
    dblcddepto.enabled:=false;
    dbedepto.enabled:=false;
    dblcdciudad.enabled:=false;
    dbeprovincia.enabled:=false;
    dblcdupro.enabled:=false;
    dbeupro.enabled:=false;
    dblcduse.enabled:=true;
    dbeuse.enabled:=false;
    dblcdaso.enabled:=false;
    dbeape.enabled:=false;
    dbeam.enabled:=false;
    dbenombres.enabled:=false;
  end;


end;

procedure TFRepEstadoCtaAportes.RGreporteClick(Sender: TObject);
begin
  if rgreporte.ItemIndex=0 then  begin
    dblcddepto.enabled:=false;
    dbedepto.enabled:=false;
    dblcdciudad.enabled:=false;
    dbeprovincia.enabled:=false;
    dblcdupro.enabled:=false;
    dbeupro.enabled:=false;
    dblcduse.enabled:=false;
    dbeuse.enabled:=false;
    dblcdaso.enabled:=false;
    dbeape.enabled:=false;
    dbeam.enabled:=false;
    dbenombres.enabled:=false;
    xwhere:='';
    dblcduse.text:='';
    dbeuse.text:='';
    dblcdaso.text:='';
    dbeape.text:='';
    dbeam.text:='';
    dbenombres.text:='';
    dblcdupro.text:='';
    dbeupro.text:='';
    dbeprovincia.text:='';
    dblcdciudad.text:='';
    dblcddepto.text:='';
    dbedepto.text:='';
  end;

  if rgreporte.itemindex=1 then  begin
    dblcddepto.enabled:=true;
    dbedepto.enabled:=false;
    dblcdciudad.enabled:=false;
    dbeprovincia.enabled:=false;
    dblcdupro.enabled:=false;
    dbeupro.enabled:=false;
    dblcduse.enabled:=false;
    dbeuse.enabled:=false;
    dblcdaso.enabled:=false;
    dbeape.enabled:=false;
    dbeam.enabled:=false;
    dbenombres.enabled:=false;
    dblcduse.text:='';
    dbeuse.text:='';
    dblcdaso.text:='';
    dbeape.text:='';
    dbeam.text:='';
    dbenombres.text:='';
    dblcdupro.text:='';
    dbeupro.text:='';
    dbeprovincia.text:='';
    dblcdciudad.text:='';
    dblcddepto.text:='';
    dbedepto.text:='';

  end;

  if rgreporte.ItemIndex=2 then  begin
    dblcddepto.enabled:=true;
    dbedepto.enabled:=false;
    dblcdciudad.enabled:=true;
    dbeprovincia.enabled:=false;
    dblcdupro.enabled:=false;
    dbeupro.enabled:=false;
    dblcduse.enabled:=false;
    dbeuse.enabled:=false;
    dblcdaso.enabled:=false;
    dbeape.enabled:=false;
    dbeam.enabled:=false;
    dbenombres.enabled:=false;
    dblcduse.text:='';
    dbeuse.text:='';
    dblcdaso.text:='';
    dbeape.text:='';
    dbeam.text:='';
    dbenombres.text:='';
    dblcdupro.text:='';
    dbeupro.text:='';
    dbeprovincia.text:='';
    dblcdciudad.text:='';
    dblcddepto.text:='';
    dbedepto.text:='';

  end;
  if rgreporte.ItemIndex=3 then  begin
    dblcddepto.enabled:=false;
    dbedepto.enabled:=false;
    dblcdciudad.enabled:=false;
    dbeprovincia.enabled:=false;
    dblcdupro.enabled:=true;
    dbeupro.enabled:=false;
    dblcduse.enabled:=false;
    dbeuse.enabled:=false;
    dblcdaso.enabled:=false;
    dbeape.enabled:=false;
    dbeam.enabled:=false;
    dbenombres.enabled:=false;
    dblcduse.text:='';
    dbeuse.text:='';
    dblcdaso.text:='';
    dbeape.text:='';
    dbeam.text:='';
    dbenombres.text:='';
    dblcdupro.text:='';
    dbeupro.text:='';
    dbeprovincia.text:='';
    dblcdciudad.text:='';
    dblcddepto.text:='';
    dbedepto.text:='';

  end;
  if rgreporte.ItemIndex=4 then  begin
    dblcddepto.enabled:=false;
    dbedepto.enabled:=false;
    dblcdciudad.enabled:=false;
    dbeprovincia.enabled:=false;
    dblcdupro.enabled:=false;
    dbeupro.enabled:=false;
    dblcduse.enabled:=true;
    dbeuse.enabled:=false;
    dblcdaso.enabled:=false;
    dbeape.enabled:=false;
    dbeam.enabled:=false;
    dbenombres.enabled:=false;
    dblcduse.text:='';
    dbeuse.text:='';
    dblcdaso.text:='';
    dbeape.text:='';
    dbeam.text:='';
    dbenombres.text:='';
    dblcdupro.text:='';
    dbeupro.text:='';
    dbeprovincia.text:='';
    dblcdciudad.text:='';
    dblcddepto.text:='';
    dbedepto.text:='';
  end;

  if rgreporte.ItemIndex=5 then  begin
    dblcddepto.enabled:=false;
    dbedepto.enabled:=false;
    dblcdciudad.enabled:=false;
    dbeprovincia.enabled:=false;
    dblcdupro.enabled:=false;
    dbeupro.enabled:=false;
    dblcduse.enabled:=false;
    dbeuse.enabled:=false;
    dblcdaso.enabled:=true;
    dbeape.enabled:=false;
    dbeam.enabled:=false;
    dbenombres.enabled:=false;
    dblcduse.text:='';
    dbeuse.text:='';
    dblcdaso.text:='';
    dbeape.text:='';
    dbeam.text:='';
    dbenombres.text:='';
    dblcdupro.text:='';
    dbeupro.text:='';
    dbeprovincia.text:='';
    dblcdciudad.text:='';
    dblcddepto.text:='';
    dbedepto.text:='';
    dblcdaso.Selected.Clear;
    dblcdaso.Selected.Add('ASOID'#9'15'#9'Id');
    dblcdaso.Selected.Add('ASOAPENOM'#9'50'#9'Nombres');
  end;
end;

procedure TFRepEstadoCtaAportes.dblcdasoExit(Sender: TObject);
begin
   xCondicion:='ASOID='''+DM1.cdsASO.fieldbyname('ASOID').asstring+'''';
   dbeape.text:=DM1.DisplayDescrip('prvTGE','APO201','*',xCondicion,'ASOAPEPAT');
   dbeam.text:=dm1.cdsQry.FieldByName('ASOAPEMAT').asstring;
   dbenombres.text:=dm1.cdsQry.FieldByName('ASONOMBRES').asstring;
   xwhere:=' AND A.ASOID='''+DM1.cdsASO.fieldbyname('ASOID').asstring+''''
end;

procedure TFRepEstadoCtaAportes.dblcdasoClick(Sender: TObject);
begin
//  SacaMenu(sender);
  dm1.FiltraTabla( DM1.cdsUse, 'APO101', 'USEID', '' );
  Mtxaso := TMant.Create(Self);
  try
    Mtxaso.User   := DM1.wUsuario;
		Mtxaso.Admin  := DM1.wAdmin;
    Mtxaso.Module := DM1.wModulo;
    Mtxaso.DComC  := DM1.DCOM1;
//    Mtxaso.ControlGridDisp := cgdPrincipal;
    Mtxaso.OnCreateMant  := nil ;
    Mtxaso.TableName     := 'APO201';
    MtxAso.Registros       := 30;
    Mtxaso.ClientDataSet := dm1.cdsAsociados;
    Mtxaso.Filter        := '';
   	Mtxaso.Titulo 				:= 'Asociados';
    Mtxaso.OnInsert 			:= nil;
    Mtxaso.OnEdit 				:= nil;//OnEditRAsociado;
   	Mtxaso.OnDelete 			:= nil;//OnNoDelete;
    Mtxaso.OnShow 				:= nil;
    Mtxaso.SectionName		:='BusqAsociado';
    Mtxaso.FileNameIni		:='\SolAportes.ini';
// Inicio HPC_201501_APO     Cambio de DCOM a Socket
    Mtxaso.Tipo            := 'NORMAL';
// Fin  HPC_201501_APO     Cambio de DCOM a Socket
    Mtxaso.Execute;
  finally
//    FDevolucionAportes.free;
    Mtxaso.Free;
    DM1.cdsUse.Close;
    DM1.cdsFPagoDevolucion.close;
  end;


end;

procedure TFRepEstadoCtaAportes.Button1Click(Sender: TObject);
begin
  MtxASO := TMant.Create(Self);
  try
    Mtxaso.User   := DM1.wUsuario;
		Mtxaso.Admin  := DM1.wAdmin;
    Mtxaso.Module := DM1.wModulo;
    Mtxaso.DComC  := DM1.DCOM1;
//    Mtxaso.ControlGridDisp := cgdPrincipal;
    Mtxaso.OnCreateMant  := nil ;
    Mtxaso.TableName     := 'APO201';
    MtxAso.Registros       := 30;
    Mtxaso.ClientDataSet := dm1.cdsAsociados;
    Mtxaso.Filter        := '';
   	Mtxaso.Titulo 				:= 'Asociados';
    Mtxaso.OnInsert 			:= nil;
    Mtxaso.OnEdit 				:= OnEditRAsociado;//OnEditDevolucion;
   	Mtxaso.OnDelete 			:= nil; //OnNoDelete;
    Mtxaso.OnShow 				:= nil;
    Mtxaso.SectionName		:='Devolucion';
    Mtxaso.FileNameIni		:='\SolAportes.ini';
// Inicio HPC_201501_APO     Cambio de DCOM a Socket
    Mtxaso.Tipo            := 'NORMAL';
// Fin  HPC_201501_APO     Cambio de DCOM a Socket
    Mtxaso.Execute;
  finally
    Mtxaso.Free;
    DM1.cdsUse.Close;
  end;

end;

end.


