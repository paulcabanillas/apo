unit APOD01;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, wwdbedit, StdCtrls, wwdblook, Wwdbdlg, ExtCtrls, fcButton,
  fcImgBtn, fcShapeBtn, ppBands, ppClass, ppProd, ppReport, ppComm,
  variants, ppTypes, ppRelatv, ppCache, ppDB, ppDBPipe, Wwdbspin, ppCtrls, ppPrnabl, ppVar,ppViewr;

type
  TFDifApoVig2 = class(TForm)
    TRGopc: TRadioGroup;
    bbtnSalir: TfcShapeBtn;
    bbtnAceptar: TfcShapeBtn;
    DBP1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    Panel1: TPanel;
    dbspAno: TwwDBSpinEdit;
    dbspMes: TwwDBSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel8: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel9: TppLabel;
    TRGopc1: TRadioGroup;
    ppShape1: TppShape;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppShape2: TppShape;
    ppmes: TppLabel;
    ppano: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBText10: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppShape7: TppShape;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppDBCalc8: TppDBCalc;
    ppLabel21: TppLabel;
    ppDBCalc9: TppDBCalc;
    ppLabel22: TppLabel;
    ppLabel5: TppLabel;
    ppLabel16: TppLabel;
    gbxUse: TGroupBox;
    dblcduse: TwwDBLookupComboDlg;
    dbeUSE: TwwDBEdit;
    dblcdupro: TwwDBLookupComboDlg;
    dbeupro: TwwDBEdit;
    gbxDepartamento: TGroupBox;
    dblcdDepto: TwwDBLookupComboDlg;
    dbeDepto: TwwDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure TRGopcClick(Sender: TObject);
    procedure bbtnAceptarClick(Sender: TObject);
    procedure dblcdDeptoChange(Sender: TObject);
    procedure dblcduseChange(Sender: TObject);
    procedure TRGopc1Click(Sender: TObject);
    procedure bbtnSalirClick(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure dblcduproChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dblcdDeptoExit(Sender: TObject);
    procedure dbspAnoKeyPress(Sender: TObject; var Key: Char);
    procedure dblcdDeptoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure  IniFilt();
  public
    xFilt1,xmes,xano:string;
    xsi:boolean;

    { Public declarations }
  end;

var
  FDifApoVig2: TFDifApoVig2;

implementation

uses APODM;

{$R *.DFM}

procedure TFDifApoVig2.FormCreate(Sender: TObject);
begin
if not dm1.cdsDpto.active then
   dm1.cdsDpto.Open ;

if not dm1.cdsUpro.Active then
   dm1.cdsUPro.Open ;

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

 dblcduse.LookupField := 'USEID';
 dbspAno.Text := FormatDateTime('yyyy',Now);
 dbspMes.Text := FormatDateTime('mm',Now);
 Xfilt1       := 'AND APO301.TRANSMTO < APO117.APOVALOR ' ;
 dblcdDepto.Enabled := True;
end;

procedure TFDifApoVig2.TRGopcClick(Sender: TObject);
begin

 if      TRGopc.ItemIndex=0 then
     begin
       //wmc
       gbxUse.Visible           := False ;
       gbxDepartamento.Visible  := True ;
       gbxDepartamento.Top      := 152 ;
       bbtnSalir.Top            := gbxDepartamento.Top + gbxDepartamento.height + 5 ;
       bbtnAceptar.Top          := gbxDepartamento.Top + gbxDepartamento.height + 5 ;
       Height                   := bbtnSalir.Top + bbtnSalir.Height + 40 ;
       //
       dm1.cdsQry1.Close;
       dm1.cdsQry.Close;
       dblcdDepto.Enabled := True;
       dblcdUse.Enabled   := False;
       dblcdUpro.Enabled  := False;

       dblcdDepto.Text    := '' ;
       dblcdUpro.Text     := '' ;

       dblcdDepto.SetFocus;
     end

 else if TRGopc.ItemIndex=1 then
    begin
       //wmc
       gbxUse.Visible           := True ;
       gbxDepartamento.Visible  := False ;
       gbxUse.Top      := 152 ;
       bbtnSalir.Top            := gbxUse.Top + gbxUse.height + 5 ;
       bbtnAceptar.Top          := gbxUse.Top + gbxUse.height + 5 ;
       Height                   := bbtnSalir.Top + bbtnSalir.Height + 40 ;

       //

       dm1.cdsQry1.Close;
       dm1.cdsQry.Close;

       dblcdDepto.Enabled := False;
       dblcdUse.Enabled   := False;
       dblcdUpro.Enabled  := True;

       dblcdDepto.text :='';
       dblcdUpro.text  :='';

       dblcdUpro.SetFocus;

   end
 else if TRGopc.ItemIndex=2 then
    begin
       //wmc
       gbxUse.Visible           := False ;
       gbxDepartamento.Visible  := False ;
       bbtnSalir.Top            := TRGopc.Top + TRGopc.height + 10 ;
       bbtnAceptar.Top          := TRGopc.Top + TRGopc.height + 10 ;
       Height                   := bbtnSalir.Top + bbtnSalir.Height + 40 ;
       //
       dm1.cdsQry1.Close;
       dm1.cdsQry.Close;

       dblcdDepto.Enabled := False;
       dblcdUse.Enabled   := False;
       dblcdUpro.Enabled  := False;

       dblcdDepto.Text :='';
       dblcdUpro.Text  :='';

    end

end;

//Boton para Generar Reportes
procedure TFDifApoVig2.bbtnAceptarClick(Sender: TObject);
var xano,xmes,xdepto,xuse,xupro,ssql:string;
    x10:integer;
begin
   if trim(dbspAno.Text) = '' then
      begin
      showmessage('Ingrese Año');
      dbspAno.SetFocus;
      exit;
      end       ;

   if trim(dbspMes.Text) = '' then
      begin
      showmessage('Ingrese Mes');
      dbspMes.SetFocus;
      exit;
      end;

   if (dblcdDepto.Text='') AND (TRGopc.ItemIndex = 0)   then
      begin
      showmessage('Debe seleccionar un Departamento');
      dblcdDepto.SetFocus;
      exit;
      end
   else if (dblcdUse.Text='') AND (TRGopc.ItemIndex = 1) then
      begin
      showmessage('Debe seleccionar una Use');
      if trim(dbeupro.Text) <> '' then
         dblcduse.SetFocus
      else
         dblcdupro.SetFocus ;
      exit;
      end;
   dbspMes.Text := Format('%.2d',[StrToInt(dbspMes.Text)]);
   dbspMes.Refresh;
   xano  := dbspAno.Text;
   xmes  := dbspMes.Text;
   xdepto:= dblcdDepto.Text;
   xuse  := dblcdUse.Text;
   xupro := dblcdUpro.Text;
   xsi   := False;

   case TRGopc.ItemIndex of
        0:
           begin
           ssql := 'SELECT '+
                   'APO301.DPTOID,'+
                   'NVL(APO158.DPTODES,''SIN ASIGNAR DEPARTAMENTO'') DPTODES,'+
                   'APO301.USEID,'+
                   'APO101.USENOM,'+
                   'APO201.ASOCODPAGO,'+
                   'APO301.ASOCODMOD,'+
                   'APO301.ASOAPENOM,'+
                   'APO301.TRANSMTO,'+
                   'APO117.APOVALOR,'+
                   'APO117.APOVALOR - TRANSMTO  As APODIF '+
                   'FROM APO301,APO158,APO101,APO117,APO201 '+
                   'WHERE '+
                   'APO301.USEID = APO101.USEID '+
                   'AND APO301.UPAGOID = APO101.UPAGOID '+
                   'AND APO301.UPROID = APO101.UPROID '+
                   'AND APO101.DPTOID = APO158.DPTOID (+) '+
                   'AND APO201.ASOID = APO301.ASOID '+
                   'AND APO117.APOANO='''+XANO+''' '+
                   'AND APO117.APOMES='''+XMES+''' '+
                   'AND TRANSINTID=''APO'' '+
                   'AND TRANSANO='''+XANO+''' '+
                   'AND TRANSMES='''+XMES+''' '+
                   'AND APO301.DPTOID='''+XDEPTO+''' '+Xfilt1+
                   'ORDER BY 2,4,7' ;
                   xsi:=True;
           end;
        1:
           begin
           ssql := 'SELECT '+
                   'APO301.DPTOID,'+
                   'NVL(APO158.DPTODES,''SIN ASIGNAR DEPARTAMENTO'') DPTODES,'+
                   'APO301.USEID,'+
                   'APO101.USENOM,'+
                   'APO201.ASOCODPAGO,'+
                   'APO301.ASOCODMOD,'+
                   'APO301.ASOAPENOM,'+
                   'APO301.TRANSMTO,'+
                   'APO117.APOVALOR,'+
                   'APO117.APOVALOR - TRANSMTO  As APODIF '+
                   'FROM APO301,APO158,APO101,APO117,APO201 '+
                   'WHERE '+
                   'APO301.USEID = APO101.USEID '+
                   'AND APO301.UPAGOID = APO101.UPAGOID '+
                   'AND APO301.UPROID = APO101.UPROID '+
                   'AND APO101.DPTOID = APO158.DPTOID (+) '+
                   'AND APO201.ASOID = APO301.ASOID '+
                   'AND APO117.APOANO='''+XANO+''' '+
                   'AND APO117.APOMES='''+XMES+''' '+
                   'AND TRANSINTID=''APO'' '+
                   'AND TRANSANO='''+XANO+''' '+
                   'AND TRANSMES='''+XMES+''' '+
                   'AND APO301.USEID='''+XUSE+''' '+
                   'AND APO301.UPROID='''+XUPRO+''' '+Xfilt1+
                   'ORDER BY 2,4,7' ;
                   xsi:=True;
           end;
        2:
           begin
           ssql := 'SELECT '+
                   'APO301.DPTOID,'+
                   'NVL(APO158.DPTODES,''SIN ASIGNAR DEPARTAMENTO'') DPTODES,'+
                   'APO301.USEID,'+
                   'APO101.USENOM,'+
                   'APO201.ASOCODPAGO,'+
                   'APO301.ASOCODMOD,'+
                   'APO301.ASOAPENOM,'+
                   'APO301.TRANSMTO,'+
                   'APO117.APOVALOR,'+
                   'APO117.APOVALOR - TRANSMTO  As APODIF '+
                   'FROM APO301,APO158,APO101,APO117,APO201 '+
                   'WHERE '+
                   'APO301.USEID = APO101.USEID '+
                   'AND APO301.UPAGOID = APO101.UPAGOID '+
                   'AND APO301.UPROID = APO101.UPROID '+
                   'AND APO101.DPTOID = APO158.DPTOID (+) '+
                   'AND APO201.ASOID = APO301.ASOID '+
                   'AND APO117.APOANO='''+XANO+''' '+
                   'AND APO117.APOMES='''+XMES+''' '+
                   'AND TRANSINTID=''APO'' '+
                   'AND TRANSANO='''+XANO+''' '+
                   'AND TRANSMES='''+XMES+''' '+Xfilt1+
                   'ORDER BY 2,4,7' ;
                   xsi:=True;
           end;

   else
      begin
       showmessage('Debe seleccionar una opción');
       xsi:=False;
      end
   end;

   if xsi then
     begin
        Screen.Cursor:=crHourGlass;
        ppmes.Caption := xmes;
        ppano.Caption := xano;
        dm1.cdsQry1.close;
        dm1.cdsQry1.DataRequest(ssql);
        dm1.cdsQry1.open;

        if dm1.cdsQry1.RecordCount = 0 then
           begin
           ShowMessage('No existe datos para generar reporte');
           IniFilt();
           Screen.Cursor:=crDefault;
           exit;
           end;

        dbp1.DataSource := dm1.dsQry1;
        ppReport1.Print;
        ppReport1.Stop;
        DBP1.DataSource := nil ;
        ppReport1.reset ;
        IniFilt();
        Screen.Cursor:=crDefault;
     end;

end;

//Busqueda de codigo de Departamento para extraer nombre
procedure TFDifApoVig2.dblcdDeptoChange(Sender: TObject);
var Xdptoid:string;

begin
   Xdptoid:=dblcdDepto.Text;
   if dm1.cdsDpto.LOcate('DPTOID',VarArrayof([Xdptoid]),[]) then
     dbeDepto.Text := trim(dm1.cdsDpto.fieldbyName('DPTODES').Asstring)
   else
     dbeDepto.Text := '' ;

end;


//Toma el Foco del Ingreso del Ano al activar el formato


//Busqueda de codigo de Use para extraer nombre
procedure TFDifApoVig2.dblcduseChange(Sender: TObject);
  var Xuseid:string;
begin

  if trim(dblcdupro.Text) = '' then
  begin
     dbeUSE.Text := '' ;
     Exit ;
  end ;

  Xuseid :=dblcdUse.Text;
  if dm1.cdsQry.LOcate('USEID',VarArrayof([Xuseid]),[]) then
     dbeUse.Text := trim(dm1.cdsQry.fieldbyName('USENOM').Asstring)
  else
     dbeUSE.Text := '' ;

 end;


//Genera string pa filtrar Aportes Menores o Mayores al Vigente
procedure TFDifApoVig2.TRGopc1Click(Sender: TObject);
begin
  case TRGopc1.ItemIndex of
    0:  Xfilt1 := 'AND APO301.TRANSMTO > APO117.APOVALOR ' ;
    1:  Xfilt1 := 'AND APO301.TRANSMTO < APO117.APOVALOR ' ;
   end;
  //endif
end;

//Salir
procedure TFDifApoVig2.bbtnSalirClick(Sender: TObject);
begin
 self.Close;
end;


procedure TFDifApoVig2.ppSummaryBand1BeforePrint(Sender: TObject);
begin
   if ppdbcalc9.Value > 0 then
      pplabel22.Caption :='Total Aportes No Cobrados'
   else if ppdbCalc9.Value < 0 then
      pplabel22.Caption := 'Total Aportes en exceso';
end;

procedure TFDifApoVig2.IniFilt;
begin
  Exit ;
  dblcdUse.Enabled   := False;
  dblcdUpro.Enabled  := False;
  dblcdDepto.Enabled := True;
  TRGopc.ItemIndex   := 0;
  dblcdUse.Caption   := '';
  dblcdDepto.Caption := '';
  dblcdUpro.Caption  := '';
  xsi:=False;
  dblcdDepto.RefreshDisplay;
  dblcdUpro.RefreshDisplay;
  Screen.Cursor:=crDefault;
  dbspAno.SetFocus;
end;

procedure TFDifApoVig2.dblcduproChange(Sender: TObject);

  var Xuproid,ssql:string;

  begin
    Xuproid :=dblcdUpro.Text;

    dblcduse.Text  :='';
    if dm1.cdsUpro.LOcate('UPROID',VarArrayof([Xuproid]),[]) then
       begin
       dbeUpro.Text := trim(dm1.cdsUpro.fieldbyName('UPRONOM').Asstring);
       end
    else
       begin
       dbeupro.Text := '' ;
       dblcduse.Enabled := False ;
       Exit ;
       end ;

    ssql := 'select USEID,USENOM from APO101 WHERE UPROID='''+Xuproid+'''';
    dm1.cdsQry.Close;
    dm1.cdsQry.DataRequest(ssql);
    dm1.cdsQry.Open;

   if dm1.cdsQry.RecordCount > 0 then
      begin
      dblcdUse.Enabled  := True;
      dblcdUse.Text     := '' ;
      dbeUSE.Text       := '' ;
      end;
  end;


procedure TFDifApoVig2.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If key=#13 then
  Begin
     key:=#0;
     perform(CM_DialogKey,VK_TAB,0);
  End;
end;

procedure TFDifApoVig2.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState := wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomSetting := zs100Percent;
end;

procedure TFDifApoVig2.FormShow(Sender: TObject);
begin
 dbspAno.SetFocus;
 TRGopc1.ItemIndex := 1 ;
 TRGopc.ItemIndex  := 0 ;
end;

procedure TFDifApoVig2.dblcdDeptoExit(Sender: TObject);
begin
  if trim(dbeDepto.Text) = '' then
     dblcdDepto.Text := '' ;
end;

procedure TFDifApoVig2.dbspAnoKeyPress(Sender: TObject; var Key: Char);
begin
       if key in ['.','-'] then
          key := #0 ;
end;

procedure TFDifApoVig2.dblcdDeptoKeyPress(Sender: TObject; var Key: Char);
begin
   Key := UpCase(Key);
end;
end.
