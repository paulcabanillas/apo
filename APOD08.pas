unit APOD08;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, wwdbdatetimepicker, fcButton, fcImgBtn, fcShapeBtn, ppCtrls,
  ppBands, ppClass, ppVar, ppPrnabl, ppProd, ppReport, ppComm, ppRelatv,
  ppTypes, ppCache, ppDB, ppDBPipe, wwdblook;

type
  TFRangoFechas = class(TForm)
    GroupBox1: TGroupBox;
    dbdtpFechaI: TwwDBDateTimePicker;
    dbdtpFechaF: TwwDBDateTimePicker;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel6: TppLabel;
    ppLabel12: TppLabel;
    ppLabel16: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppLabel15: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppLabel14: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    pptitulo1: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    Z2bbtnAceptar: TfcShapeBtn;
    Z2bbtnCancel: TfcShapeBtn;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLabel1: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDBText11: TppDBText;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel13: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    chkTodos: TCheckBox;
    chkResumen: TCheckBox;
    gbFiltro: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    dblDptoid: TwwDBLookupCombo;
    edtDpto: TEdit;
    dblUpro: TwwDBLookupCombo;
    edtUpro: TEdit;
    dblUpago: TwwDBLookupCombo;
    edtUpag: TEdit;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel35: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel36: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppTitulo2: TppLabel;
    ppLabel38: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppLabel39: TppLabel;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppLine3: TppLine;
    ppLine5: TppLine;
    ppLabel37: TppLabel;
    ppDBText24: TppDBText;
    ppDBCalc9: TppDBCalc;
    ppLine6: TppLine;
    ppLabel40: TppLabel;
    ppDBText25: TppDBText;
    ppLabel41: TppLabel;
    ppDBText26: TppDBText;
    ppDBCalc11: TppDBCalc;
    ppLabel48: TppLabel;
    ppDBCalc12: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppReport3: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppLabel49: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppLabel50: TppLabel;
    ppSystemVariable8: TppSystemVariable;
    ppLabel51: TppLabel;
    ppSystemVariable9: TppSystemVariable;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppTitulo3: TppLabel;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLabel55: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel54: TppLabel;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppGroup8: TppGroup;
    ppGroupHeaderBand8: TppGroupHeaderBand;
    ppGroupFooterBand8: TppGroupFooterBand;
    ppGroup9: TppGroup;
    ppGroupHeaderBand9: TppGroupHeaderBand;
    ppGroupFooterBand9: TppGroupFooterBand;
    ppLabel56: TppLabel;
    ppDBText32: TppDBText;
    ppLine10: TppLine;
    ppDBText33: TppDBText;
    ppDBText35: TppDBText;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppLabel63: TppLabel;
    ppDBText34: TppDBText;
    ppLine13: TppLine;
    ppLabel64: TppLabel;
    ppDBText36: TppDBText;
    ppDBCalc10: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppSummaryBand3: TppSummaryBand;
    ppDBCalc21: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppLabel65: TppLabel;
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure Z2bbtnAceptarClick(Sender: TObject);
    procedure Z2bbtnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure chkTodosClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dblDptoidChange(Sender: TObject);
    procedure dblDptoidExit(Sender: TObject);
    procedure dblUproChange(Sender: TObject);
    procedure dblUproExit(Sender: TObject);
    procedure dblUpagoChange(Sender: TObject);
    procedure dblUpagoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRangoFechas: TFRangoFechas;

implementation

uses APODM , ppViewr;

{$R *.DFM}

procedure TFRangoFechas.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState := wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomSetting := zs100Percent;
end;

procedure TFRangoFechas.Z2bbtnAceptarClick(Sender: TObject);
var
  xSql,xAnno,xDpto,xWhere1 : String;
  xFechaTmp : TDate ;
begin
if trim(dbdtpFechaI.Text) = '' then
begin
  dbdtpFechaI.SetFocus ;
  Raise exception.Create('Ingrese Fecha Inicial');
end ;
if trim(dbdtpFechaF.Text) = '' then
begin
  dbdtpFechaF.SetFocus ;
  Raise exception.Create('Ingrese Fecha Final');
end ;
if dbdtpFechaI.date > dbdtpFechaF.Date then
begin
  xFechaTmp := dbdtpFechaI.date ;
  dbdtpFechaI.date := dbdtpFechaF.Date ;
  dbdtpFechaf.Date := xFechaTmp ;
end ;


if chkTodos.Checked then
   Begin
     XWhere1:='';
   End
 Else
   Begin
     if (Length(Trim(dblDptoid.Text))> 0) And (Length(Trim(dblUpro.Text))>0) And (Length(Trim(dblUpago.Text))>0 ) Then
        xWhere1 := 'And A.Dptoid='''+dblDptoid.Text+''' And A.Uproid='''+dblUpro.Text+''' And A.Upagoid='''+dblUpago.Text+''' '
     Else if (Length(Trim(dblDptoid.Text))>0) And (Length(Trim(dblUpro.Text))>0) Then
        xWhere1 := 'And A.Dptoid='''+dblDptoid.Text+''' And A.Uproid='''+dblUpro.Text+''' '
     Else if (Length(Trim(dblDptoid.Text))>0) Then
        xWhere1 := 'And A.Dptoid='''+dblDptoid.Text+''' '
     Else XWhere1:='';
   End;


if chkResumen.Checked then
   Begin
     xSql :=  ' SELECT SUM(1) CONTADOR,DPTOID,MAX(DPTOABR)DPTOABR,UPROID,MAX(UPROABR)UPROABR,UPAGOID,MAX(UPAGOABR)UPAGOABR,'
             +'SUM(TRANSMTO) TRANSMTO '
             +' FROM APO301 A'
             +' WHERE TRANSFOPE BETWEEN TO_DATE('''+formatdatetime('dd/mm/yyyy',dbdtpFechaI.date) + ''',''DD/MM/YYYY'')'
             +' AND TO_DATE('''+formatdatetime('dd/mm/yyyy',dbdtpFechaF.date) +''',''DD/MM/YYYY'')'
             +' AND FLGRECIBO = ''S''' +xWhere1
             +' GROUP BY DPTOID,UPROID,UPAGOID' ;
     DM1.cdsQry.Close;
     DM1.cdsQry.DataRequest(xSql);
     DM1.cdsQry.Open;
     DM1.cdsQry.IndexFieldNames :='DPTOID;UPROID;UPAGOID';
     ppDBPipeline1.DataSource := DM1.dsQry;
     ppTitulo3.Caption := 'PAGO DE APORTES FECTUADOS DEL ' + dbdtpFechaI.Text + ' AL ' + dbdtpFechaF.Text ;
     ppReport3.Print;
     ppReport3.Stop;
   End
 Else
   Begin
     xSql :=  ' SELECT 1 CONTADOR,DPTOID,DPTOABR,UPROID,UPROABR,UPAGOID,UPAGOABR,USEID,USEABR,ASOCODMOD,ASOCODAUX ,ASOID , ASOAPENOM , TRANSNOPE,'
             +' TRANSFOPE , TRANSMTO , TO_CHAR( LAST_DAY(''01/''||TRANSMES||''/''||TRANSMES),''MON'')||''/''||TRANSANO PERIODO, TO_CHAR(TRANSFOPE,''YYYYMMDD'') FECHA'
             +' FROM APO301 A'
             +' WHERE TRANSFOPE BETWEEN TO_DATE('''+formatdatetime('dd/mm/yyyy',dbdtpFechaI.date) + ''',''DD/MM/YYYY'')'
             +' AND TO_DATE('''+formatdatetime('dd/mm/yyyy',dbdtpFechaF.date) +''',''DD/MM/YYYY'')'
             +' AND FLGRECIBO = ''S''' +xWhere1
             +' ORDER BY DPTOID,UPROID,UPAGOID,USEID, TO_CHAR(TRANSFOPE,''YYYYMMDD'') , TRANSANO , TRANSMES' ;
     DM1.cdsQry.Close;
     DM1.cdsQry.DataRequest(xSql);
     DM1.cdsQry.Open;
     DM1.cdsQry.IndexFieldNames :='DPTOID;UPROID;UPAGOID;TRANSFOPE';
     ppDBPipeline1.DataSource := DM1.dsQry;
     ppTitulo2.Caption := 'PAGO DE APORTES FECTUADOS DEL ' + dbdtpFechaI.Text + ' AL ' + dbdtpFechaF.Text ;
     ppReport2.Print;
     ppReport2.Stop;
   End;

DM1.cdsQry.Close;
DM1.cdsQry.IndexFieldNames:='';

{
  Screen.Cursor:=crHourGlass;
  ppTitulo1.Caption := 'PAGO DE APORTES FECTUADOS DEL ' + dbdtpFechaI.Text + ' AL ' + dbdtpFechaF.Text ;

  xSql :=  ' SELECT 1 CONTADOR,UPROID , UPROABR , USEID ,USEABR , ASOCODMOD , ASOCODAUX ,ASOID , ASOAPENOM , TRANSNOPE,'
          +' TRANSFOPE , TRANSMTO , TO_CHAR( LAST_DAY(''01/''||TRANSMES||''/''||TRANSMES),''MON'')||''/''||TRANSANO PERIODO, TO_CHAR(TRANSFOPE,''YYYYMMDD'') FECHA'
          +' FROM APO301'
          +' WHERE TRANSFOPE BETWEEN TO_DATE('''+formatdatetime('dd/mm/yyyy',dbdtpFechaI.date) + ''',''DD/MM/YYYY'')'
          +' AND TO_DATE('''+formatdatetime('dd/mm/yyyy',dbdtpFechaF.date) +''',''DD/MM/YYYY'')'
          +' AND FLGRECIBO = ''S'''
          +' ORDER BY UPROID , USEID , TO_CHAR(TRANSFOPE,''YYYYMMDD'') , TRANSANO , TRANSMES';

   dm1.LimpiaClientDataset(dm1.cdsQry1);
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
}

end;

procedure TFRangoFechas.Z2bbtnCancelClick(Sender: TObject);
begin
Close;
end;

procedure TFRangoFechas.FormShow(Sender: TObject);
begin
   dbdtpFechaI.date := Date ;
   dbdtpFechaF.date := Date ;
end;

procedure TFRangoFechas.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If (Key = #13) Then
    begin
     Key := #0;
     Perform(CM_DialogKey, VK_TAB, 0);
    end;
end;

procedure TFRangoFechas.chkTodosClick(Sender: TObject);
begin
 if chkTodos.Checked = True Then
    Begin
      dblDptoid.Text :='';dblUpro.Text:='';dblUpago.Text:='';
      edtDpto.Text   :='';edtUpro.Text:='';edtUpag.Text :='';
      gbFiltro.Enabled := False
    End
 else gbFiltro.Enabled := True;
end;

procedure TFRangoFechas.FormActivate(Sender: TObject);
begin
  Xsql:='Select Dptoid,Dptodes from Apo158';
  DM1.cdsQry2.Close;
  DM1.cdsQry2.DataRequest(Xsql);
  DM1.cdsQry2.Open;
  dblDptoid.LookupTable :=  DM1.Cdsqry2;
  dblDptoid.LookupField := 'DPTOID';
end;

procedure TFRangoFechas.dblDptoidChange(Sender: TObject);
begin
 EdtDpto.Text := DM1.cdsQry2.FieldByName('DPTODES').AsString ;
 dblUpro.Text:=''; edtUpro.Text:=''; dblUpago.Text:=''; edtUpag.Text:='';
 if Length(trim(dblUpago.Text))=0  Then dblUpago.Enabled := False ;
 if Length(trim(dblUpro.Text))=0  Then dblUpro.Enabled := False ;
 dblUpro.Enabled  := False ;
 dblUpago.Enabled := False ;
end;

procedure TFRangoFechas.dblDptoidExit(Sender: TObject);
begin
  EdtDpto.Text := DM1.cdsQry2.FieldByName('DPTODES').AsString ;
  Xsql:='SELECT UPROID,UPRONOM FROM APO102 WHERE DPTOID='''+dblDptoid.Text+''' ';
  DM1.cdsQry3.Close;
  DM1.cdsQry3.DataRequest(Xsql);
  DM1.cdsQry3.Open;
  dblUpro.LookupTable := DM1.cdsQry3;
  dblUpro.LookupField := 'UPROID';
  if DM1.cdsQry3.RecordCount > 0 then  dblUpro.Enabled:= True else dblUpro.Enabled:=False;
end;

procedure TFRangoFechas.dblUproChange(Sender: TObject);
begin
  edtUpro.Text := DM1.cdsQry3.FieldByName('UPRONOM').AsString;
  dblUpago.Text:=''; edtUpag.Text:='';
  if Length(trim(dblUpago.Text))=0  Then dblUpago.Enabled := False ;
end;

procedure TFRangoFechas.dblUproExit(Sender: TObject);
begin
edtUpro.Text := DM1.cdsQry3.FieldByName('UPRONOM').AsString;
XSQL:='SELECT UPAGOID,UPAGONOM FROM APO103 WHERE UPROID='''+dblUpro.Text +''' ';
DM1.cdsQry4.Close;
DM1.cdsQry4.DataRequest(XSQL);
DM1.cdsQry4.Open;

if DM1.cdsQry4.RecordCount > 0 then  dblUpago.Enabled:= True else dblUpago.Enabled:=False;


dblUpago.LookupTable := DM1.cdsQry4;
dblUpago.LookupField := 'UPAGOID';
end;

procedure TFRangoFechas.dblUpagoChange(Sender: TObject);
begin
edtUpag.Text := DM1.cdsQry4.FieldByName('UPAGONOM').AsString;
end;

procedure TFRangoFechas.dblUpagoExit(Sender: TObject);
begin
edtUpag.Text := DM1.cdsQry4.FieldByName('UPAGONOM').AsString;
end;

end.
