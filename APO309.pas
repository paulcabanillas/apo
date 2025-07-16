unit APO309;

interface

uses

  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdbdatetimepicker, Buttons, ppBands, ppCache,
  ppClass, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE,
  ppPrnabl, ppCtrls, ppVar, wwdblook;

type
  TFRepDevApo = class(TForm)
    btnImprimir: TBitBtn;
    BtnCancelar: TBitBtn;
    ppBDEPipeline1: TppBDEPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText9: TppDBText;
    ppPageStyle1: TppPageStyle;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppDBText13: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppDBText14: TppDBText;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLabel7: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel8: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel9: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    dbdtpInicio: TwwDBDateTimePicker;
    dbdtpFinal: TwwDBDateTimePicker;
    GroupBox2: TGroupBox;
    chkTodos: TCheckBox;
    chkResumen: TCheckBox;
    gbFiltro: TGroupBox;
    dblDptoid: TwwDBLookupCombo;
    edtDpto: TEdit;
    dblUpro: TwwDBLookupCombo;
    edtUpro: TEdit;
    dblUpago: TwwDBLookupCombo;
    edtUpag: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppLabel19: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLabel20: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppLabel21: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppTitulo1: TppLabel;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppDBText8: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppDBText21: TppDBText;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLabel34: TppLabel;
    ppDBText24: TppDBText;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
    ppLine21: TppLine;
    ppLabel35: TppLabel;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppReport3: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppLabel36: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppLabel37: TppLabel;
    ppSystemVariable8: TppSystemVariable;
    ppLabel38: TppLabel;
    ppSystemVariable9: TppSystemVariable;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppTitulo2: TppLabel;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel50: TppLabel;
    ppLabel42: TppLabel;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppLabel43: TppLabel;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppGroup8: TppGroup;
    ppGroupHeaderBand8: TppGroupHeaderBand;
    ppGroupFooterBand8: TppGroupFooterBand;
    ppGroup9: TppGroup;
    ppGroupHeaderBand9: TppGroupHeaderBand;
    ppGroupFooterBand9: TppGroupFooterBand;
    ppGroup10: TppGroup;
    ppGroupHeaderBand10: TppGroupHeaderBand;
    ppGroupFooterBand10: TppGroupFooterBand;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLabel49: TppLabel;
    ppDBText35: TppDBText;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppSummaryBand2: TppSummaryBand;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppLine29: TppLine;
    ppLabel48: TppLabel;
    ppLabel47: TppLabel;
    ppLabel51: TppLabel;
    ppLine19: TppLine;
    procedure btnImprimirClick(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dblDptoidChange(Sender: TObject);
    procedure dblDptoidExit(Sender: TObject);
    procedure dblUproExit(Sender: TObject);
    procedure dblUproChange(Sender: TObject);
    procedure dblUpagoChange(Sender: TObject);
    procedure dblUpagoExit(Sender: TObject);
    procedure chkTodosClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRepDevApo: TFRepDevApo;

implementation

uses APODM;

{$R *.dfm}

Procedure TFRepDevApo.btnImprimirClick(Sender: TObject);
Var xSql,xWhere1 :String; //,xWhere2,xWhere3
Begin
  If chkTodos.Checked then
  Begin
     XWhere1:='';
  End
  Else
  Begin
     If (Length(Trim(dblDptoid.Text))> 0) And (Length(Trim(dblUpro.Text))>0) And (Length(Trim(dblUpago.Text))>0 ) Then
        xWhere1 := 'And A.Dptoid='''+dblDptoid.Text+''' And A.Uproid='''+dblUpro.Text+''' And A.Upagoid='''+dblUpago.Text+''' '
     Else if (Length(Trim(dblDptoid.Text))>0) And (Length(Trim(dblUpro.Text))>0) Then
        xWhere1 := 'And A.Dptoid='''+dblDptoid.Text+''' And A.Uproid='''+dblUpro.Text+''' '
     Else if (Length(Trim(dblDptoid.Text))>0) Then
        xWhere1 := 'And A.Dptoid='''+dblDptoid.Text+''' '
     Else XWhere1:='';
  End;

  If chkResumen.Checked then
  Begin
    xSql :='SELECT A.DPTOID,A.UPROID,MAX(C.DPTOABR) DPTOABR,A.UPAGOID,MAX(A.UPAGOABR) UPAGOABR,MAX(D.UPRONOM) UPRONOM, '+
    'SUM(NVL(A.TRANSMTO,0)) DEV, COUNT(*) CANTIDAD '+
    'From APO311 A,APO201 B,APO158 C,APO102 D,APO103 E,APO101 F '+
    'Where A.FREG BETWEEN '+QuotedStr(dbdtpInicio.Text)+' AND '+QuotedStr(dbdtpFinal.Text)+' AND A.TRANSINTID=''DEV'' AND A.ASOID=B.ASOID(+)'+
    ' AND A.UPROID=F.UPROID   AND A.UPAGOID=F.UPAGOID AND A.USEID=F.USEID '+
    ' AND A.DPTOID=C.DPTOID(+) AND A.UPROID=D.UPROID(+) AND (A.UPROID=E.UPROID(+) AND A.UPAGOID=E.UPAGOID(+)) '+xWhere1+
    ' Group By A.Dptoid,A.Uproid,A.Upagoid ';
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    DM1.cdsQry.IndexFieldNames :='DPTOID;UPROID;UPAGOID';
    ppTitulo2.Caption := 'DEVOLUCION DE APORTACIONES EFECTUADAS DEL '+Trim(dbdtpInicio.Text)+' AL '+Trim(dbdtpFinal.Text);
    ppReport3.Print;
    ppReport3.Stop;
  End
  Else
  Begin
    xSql :=' SELECT A.DPTOID,A.UPROID,MAX(C.DPTOABR) DPTOABR,A.UPAGOID,MAX(D.UPRONOM) UPRONOM,A.ASOCODMOD, A.ASOAPENOM, TO_CHAR(A.TRANSFOPE, ''DD/MM/YYYY'') TRANSFOPE, '+
    ' SUM(NVL(A.TRANSMTO,0)) DEV, COUNT(*) CANTIDAD, A.NROFICIO, A.TIPDESEABR, A.TIPDESEID '+
    ' From APO311 A,APO201 B,APO158 C,APO102 D,APO103 E,APO101 F '+
    ' Where A.FREG BETWEEN '+QuotedStr(dbdtpInicio.Text)+' AND '+QuotedStr(dbdtpFinal.Text)+' AND A.TRANSINTID=''DEV'' AND A.ASOID=B.ASOID(+)' +
    ' AND A.UPROID=F.UPROID   AND A.UPAGOID=F.UPAGOID AND A.USEID=F.USEID '+
    ' AND A.DPTOID=C.DPTOID(+) AND A.UPROID=D.UPROID(+) AND (A.UPROID=E.UPROID(+) AND A.UPAGOID=E.UPAGOID(+)) '+xWhere1+
    ' Group By A.Dptoid,A.Uproid,A.Upagoid,to_char(A.transfope,''DD/MM/YYYY''),A.TIPDESEID, A.TIPDESEABR, A.ASOCODMOD, A.ASOAPENOM, A.NROFICIO';
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    DM1.cdsQry.IndexFieldNames :='DPTOID;UPROID;UPAGOID;TIPDESEID;TRANSFOPE';
    ppTitulo1.Caption := 'DEVOLUCION DE APORTACIONES EFECTUADAS DEL '+Trim(dbdtpInicio.Text)+' AL '+Trim(dbdtpFinal.Text);
    ppReport2.Print;
    ppReport2.Stop;
  End;
  DM1.cdsQry.Close;
  DM1.cdsQry.IndexFieldNames:='';
End;

procedure TFRepDevApo.ppHeaderBand1BeforePrint(Sender: TObject);
begin
ppLabel12.Caption := 'DEVOLUCION DE APORTACIONES EFECTUADAS DEL '+dbdtpInicio.Text+' AL '+dbdtpFinal.Text;
end;

procedure TFRepDevApo.BtnCancelarClick(Sender: TObject);
begin
FRepDevApo.Close;
DM1.cdsQry.Close;
end;

procedure TFRepDevApo.FormActivate(Sender: TObject);
VAR xsql:string;
begin
 Xsql:='Select Dptoid,Dptodes from Apo158';
 DM1.cdsQry2.Close;
 DM1.cdsQry2.DataRequest(Xsql);
 DM1.cdsQry2.Open;
 dblDptoid.LookupTable :=  DM1.Cdsqry2;
 dblDptoid.LookupField := 'DPTOID';
 dbdtpInicio.Date:=Date;
 dbdtpFinal.Date:=Date;
end;

procedure TFRepDevApo.dblDptoidChange(Sender: TObject);
begin
  EdtDpto.Text := DM1.cdsQry2.FieldByName('DPTODES').AsString ;
  dblUpro.Text:=''; edtUpro.Text:=''; dblUpago.Text:=''; edtUpag.Text:='';
  if Length(trim(dblUpago.Text))=0  Then dblUpago.Enabled := False ;
  if Length(trim(dblUpro.Text))=0  Then dblUpro.Enabled := False ;
  dblUpro.Enabled  := False ;
  dblUpago.Enabled := False ;
end;

procedure TFRepDevApo.dblDptoidExit(Sender: TObject);
VAR Xsql:string;
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

procedure TFRepDevApo.dblUproExit(Sender: TObject);
VAR XSQL:STRING;
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

procedure TFRepDevApo.dblUproChange(Sender: TObject);
begin
  edtUpro.Text := DM1.cdsQry3.FieldByName('UPRONOM').AsString;
  dblUpago.Text:=''; edtUpag.Text:='';
  if Length(trim(dblUpago.Text))=0  Then dblUpago.Enabled := False ;
end;

procedure TFRepDevApo.dblUpagoChange(Sender: TObject);
begin
  edtUpag.Text := DM1.cdsQry4.FieldByName('UPAGONOM').AsString;
end;

procedure TFRepDevApo.dblUpagoExit(Sender: TObject);
begin
  edtUpag.Text := DM1.cdsQry4.FieldByName('UPAGONOM').AsString;
end;

procedure TFRepDevApo.chkTodosClick(Sender: TObject);
begin
 if chkTodos.Checked = True Then
 Begin
   dblDptoid.Text :='';dblUpro.Text:='';dblUpago.Text:='';
   edtDpto.Text   :='';edtUpro.Text:='';edtUpag.Text :='';
   gbFiltro.Enabled := False
 End
 else gbFiltro.Enabled := True;
end;

procedure TFRepDevApo.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If (Key = #13) Then
  begin
    Key := #0;
    Perform(CM_DialogKey, VK_TAB, 0);
  End;
end;

end.
