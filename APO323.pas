unit APO323;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, wwdbdatetimepicker, Grids,
  Wwdbigrd, Wwdbgrid, ppBands, ppCache, ppClass, ppProd, ppReport, ppComm,
  ppRelatv, ppDB, ppDBPipe, ppPrnabl, ppCtrls, db, ppVar;

type
  TFestdes = class(TForm)
    btncerrar: TBitBtn;
    gbparametros: TGroupBox;
    rgtipo: TRadioGroup;
    btnprocesar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    dbdtpinicio: TwwDBDateTimePicker;
    dbdtpfinal: TwwDBDateTimePicker;
    btnimprime: TBitBtn;
    dbgreporte: TwwDBGrid;
    dbpreporte: TppDBPipeline;
    pprresmendep: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppShape2: TppShape;
    ppLabel2: TppLabel;
    ppShape3: TppShape;
    ppLabel3: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppltitulo: TppLabel;
    pplfechas: TppLabel;
    ppLabel5: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLine1: TppLine;
    ppLine2: TppLine;
    pplimpresopor: TppLabel;
    ppLabel6: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    pprrepok: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppShape4: TppShape;
    ppLabel4: TppLabel;
    ppShape5: TppShape;
    ppLabel15: TppLabel;
    ppShape6: TppShape;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLabel28: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel29: TppLabel;
    ppDBText7: TppDBText;
    ppShape7: TppShape;
    ppLabel30: TppLabel;
    ppShape8: TppShape;
    ppLabel31: TppLabel;
    ppShape9: TppShape;
    ppLabel32: TppLabel;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    pprreginc: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppShape10: TppShape;
    ppLabel27: TppLabel;
    ppShape11: TppShape;
    ppLabel33: TppLabel;
    ppShape12: TppShape;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable9: TppSystemVariable;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppShape13: TppShape;
    ppLabel45: TppLabel;
    ppShape14: TppShape;
    ppLabel46: TppLabel;
    ppShape15: TppShape;
    ppLabel47: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppLabel48: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLabel49: TppLabel;
    ppShape16: TppShape;
    ppLabel50: TppLabel;
    ppDBText16: TppDBText;
    procedure btncerrarClick(Sender: TObject);
    procedure btnprocesarClick(Sender: TObject);
    procedure btnimprimeClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Festdes: TFestdes;

implementation

uses APODM;

{$R *.dfm}

procedure TFestdes.btncerrarClick(Sender: TObject);
begin
  Festdes.Close;
end;

procedure TFestdes.btnprocesarClick(Sender: TObject);
Var xSql:String;
    xcantot, xmontot :Double;
begin
  // Resumen mensual de depositos
  If rgtipo.ItemIndex = 0 Then
  Begin
    xSql := 'SELECT SUBSTR(FECPRO,1,4)||''/''||SUBSTR(FECPRO,5,2) ANOMES,  COUNT(*) CANTIDAD, SUM(NVL(MONTOT,0)) MONTOT FROM APO_CUE_REC_BAN_CRE_DET'
    +' WHERE TO_DATE(FECPRO, ''YYYYMMDD'') >= '+QuotedStr(dbdtpinicio.Text)+' AND TO_DATE(FECPRO, ''YYYYMMDD'') <= '+QuotedStr(dbdtpfinal.Text)+' GROUP BY SUBSTR(FECPRO,1,4)||''/''||SUBSTR(FECPRO,5,2)';
    DM1.cdsReporte.Close;
    DM1.cdsReporte.DataRequest(xSql);
    DM1.cdsReporte.Open;
    xcantot := 0;
    xmontot := 0;
    DM1.cdsReporte.First;
    While Not DM1.cdsReporte.Eof Do
    Begin
      xcantot := xcantot + DM1.cdsReporte.fieldByname('CANTIDAD').AsFloat;
      xmontot := xmontot + DM1.cdsReporte.fieldByname('MONTOT').AsFloat;
      DM1.cdsReporte.Next;
    End;
    dbgreporte.Selected.Clear;
    dbgreporte.Selected.Add('ANOMES'#9'12'#9'Ano/Mes de~deposito'#9#9);
    dbgreporte.Selected.Add('CANTIDAD'#9'10'#9'Cantidad de~registros'#9#9);
    dbgreporte.Selected.Add('MONTOT'#9'10'#9'Monto Total~depositado'#9#9);
    dbgreporte.ApplySelected;
    TNumericField(DM1.cdsReporte.FieldByName('CANTIDAD')).DisplayFormat := '###,###,##0.00';
    TNumericField(DM1.cdsReporte.FieldByName('MONTOT')).DisplayFormat := '###,###,##0';
    dbgreporte.ColumnByName('ANOMES').FooterValue := 'TOTAL :';
    dbgreporte.ColumnByName('CANTIDAD').FooterValue := FloatToStrF(xcantot,ffNumber, 10, 2);
    dbgreporte.ColumnByName('MONTOT').FooterValue := FloatToStrF(xmontot,ffNumber, 10, 2);
    dbgreporte.Refresh;
  End;
  // Aportes descargados Ok
  If rgtipo.ItemIndex = 1 Then
  Begin
    xSql := 'SELECT B.ASOCODMOD, B.ASOAPENOMDNI, ''OP-0''||A.NUMOPE NUMOPE, TO_DATE(A.FECPAG,''YYYYMMDD'') FECPAG, C.AGENBCODES, A.MONTOT'
    +' FROM APO_CUE_REC_BAN_CRE_DET A, APO201 B, COB102 C WHERE TO_DATE(FECPRO, ''YYYYMMDD'') >= '+QuotedStr(dbdtpinicio.Text)+' AND TO_DATE(FECPRO, ''YYYYMMDD'') <= '+QuotedStr(dbdtpfinal.Text)
    +' AND NVL(CIERRE, ''X'') = ''K'' AND SUBSTR(A.CAMRET,21,10) = B.ASOID(+) AND A.CODOFI = C.AGENBCOID(+)';
    DM1.cdsReporte.Close;
    DM1.cdsReporte.DataRequest(xSql);
    DM1.cdsReporte.Open;
    xmontot := 0;
    DM1.cdsReporte.First;
    While Not DM1.cdsReporte.Eof Do
    Begin
      xmontot := xmontot + DM1.cdsReporte.fieldByname('MONTOT').AsFloat;
      DM1.cdsReporte.Next;
    End;
    dbgreporte.Selected.Clear;
    dbgreporte.Selected.Add('ASOCODMOD'#9'10'#9'Código~modular'#9#9);
    dbgreporte.Selected.Add('ASOAPENOMDNI'#9'35'#9'Apellidos y~Nombre(s)'#9#9);
    dbgreporte.Selected.Add('NUMOPE'#9'10'#9'Número de~Operación'#9#9);
    dbgreporte.Selected.Add('FECPAG'#9'10'#9'Fecha de~pago'#9#9);
    dbgreporte.Selected.Add('AGENBCODES'#9'25'#9'Descripción de~la oficina'#9#9);
    dbgreporte.Selected.Add('MONTOT'#9'10'#9'Monto~total'#9#9);
    dbgreporte.ApplySelected;
    TNumericField(DM1.cdsReporte.FieldByName('MONTOT')).DisplayFormat := '###,###,##0.#0';
    dbgreporte.ColumnByName('AGENBCODES').FooterValue := 'TOTAL :';
    dbgreporte.ColumnByName('MONTOT').FooterValue := FloatToStrF(xmontot,ffNumber, 10, 2);
    dbgreporte.Refresh;
  End;
  // Aportes No registros Ok
  If rgtipo.ItemIndex = 2 Then
  Begin
    xSql := 'SELECT B.ASOCODMOD, B.ASOAPENOMDNI, ''OP-0''||A.NUMOPE NUMOPE, TO_DATE(A.FECPAG,''YYYYMMDD'') FECPAG, C.AGENBCODES, A.MONTOT'
    +' FROM APO_CUE_REC_BAN_CRE_DET A, APO201 B, COB102 C WHERE TO_DATE(FECPRO, ''YYYYMMDD'') >= '+QuotedStr(dbdtpinicio.Text)+' AND TO_DATE(FECPRO, ''YYYYMMDD'') <= '+QuotedStr(dbdtpfinal.Text)
    +' AND NVL(CIERRE, ''X'') = ''R'' AND SUBSTR(A.CAMRET,21,10) = B.ASOID(+) AND A.CODOFI = C.AGENBCOID(+)';
    DM1.cdsReporte.Close;
    DM1.cdsReporte.DataRequest(xSql);
    DM1.cdsReporte.Open;
    xmontot := 0;
    DM1.cdsReporte.First;
    While Not DM1.cdsReporte.Eof Do
    Begin
      xmontot := xmontot + DM1.cdsReporte.fieldByname('MONTOT').AsFloat;
      DM1.cdsReporte.Next;
    End;
    dbgreporte.Selected.Clear;
    dbgreporte.Selected.Add('ASOCODMOD'#9'10'#9'Código~modular'#9#9);
    dbgreporte.Selected.Add('ASOAPENOMDNI'#9'35'#9'Apellidos y~Nombre(s)'#9#9);
    dbgreporte.Selected.Add('NUMOPE'#9'10'#9'Número de~Operación'#9#9);
    dbgreporte.Selected.Add('FECPAG'#9'10'#9'Fecha de~pago'#9#9);
    dbgreporte.Selected.Add('AGENBCODES'#9'25'#9'Descripción de~la oficina'#9#9);
    dbgreporte.Selected.Add('MONTOT'#9'10'#9'Monto~total'#9#9);
    dbgreporte.ApplySelected;
    TNumericField(DM1.cdsReporte.FieldByName('MONTOT')).DisplayFormat := '###,###,##0.#0';
    dbgreporte.ColumnByName('AGENBCODES').FooterValue := 'TOTAL :';
    dbgreporte.ColumnByName('MONTOT').FooterValue := FloatToStrF(xmontot,ffNumber, 10, 2);
    dbgreporte.Refresh;
  End;
  // registros con inconsistencia
  If rgtipo.ItemIndex = 3 Then
  Begin
    xSql := 'SELECT B.ASOCODMOD, B.ASOAPENOMDNI, ''OP-0''||A.NUMOPE NUMOPE, TO_DATE(A.FECPAG,''YYYYMMDD'') FECPAG,'
    +' C.AGENBCODES, D.DESTIP, A.MONTOT'
    +' FROM APO_CUE_REC_BAN_CRE_DET A, APO201 B, COB102 C, COB_TIP_DES_CUE_REC D'
    +' WHERE TO_DATE(FECPRO, ''YYYYMMDD'') >= '+QuotedStr(dbdtpinicio.Text)+' AND TO_DATE(FECPRO, ''YYYYMMDD'') <= '+QuotedStr(dbdtpfinal.Text)
    +' AND NVL(CIERRE, ''X'') NOT IN (''K'', ''R'') AND SUBSTR(A.CAMRET,21,10) = B.ASOID(+) AND A.CODOFI = C.AGENBCOID(+) AND A.CIERRE = D.CODTIP(+)';
    DM1.cdsReporte.Close;
    DM1.cdsReporte.DataRequest(xSql);
    DM1.cdsReporte.Open;
    xmontot := 0;
    DM1.cdsReporte.First;
    While Not DM1.cdsReporte.Eof Do
    Begin
      xmontot := xmontot + DM1.cdsReporte.fieldByname('MONTOT').AsFloat;
      DM1.cdsReporte.Next;
    End;
    dbgreporte.Selected.Clear;
    dbgreporte.Selected.Add('ASOCODMOD'#9'10'#9'Código~modular'#9#9);
    dbgreporte.Selected.Add('ASOAPENOMDNI'#9'35'#9'Apellidos y~Nombre(s)'#9#9);
    dbgreporte.Selected.Add('NUMOPE'#9'10'#9'Número de~Operación'#9#9);
    dbgreporte.Selected.Add('FECPAG'#9'10'#9'Fecha de~pago'#9#9);
    dbgreporte.Selected.Add('AGENBCODES'#9'25'#9'Descripción de~la oficina'#9#9);
    dbgreporte.Selected.Add('DESTIP'#9'20'#9'Descripción de~la inconsistencia'#9#9);
    dbgreporte.Selected.Add('MONTOT'#9'10'#9'Monto~total'#9#9);
    dbgreporte.ApplySelected;
    TNumericField(DM1.cdsReporte.FieldByName('MONTOT')).DisplayFormat := '###,###,##0.#0';
    dbgreporte.ColumnByName('AGENBCODES').FooterValue := 'TOTAL :';
    dbgreporte.ColumnByName('MONTOT').FooterValue := FloatToStrF(xmontot,ffNumber, 10, 2);
    dbgreporte.Refresh;
  End;
end;

Procedure TFestdes.btnimprimeClick(Sender: TObject);
Var xWhere:String;
Begin
  xWhere := 'USERID = '+ QuotedStr(DM1.wUsuario) ;
  If rgtipo.ItemIndex = 0 Then
  Begin
    pplfechas.Caption := 'DEL '+dbdtpinicio.Text+' AL '+dbdtpfinal.Text;
    pplimpresopor.Caption := 'IMPRESO POR : '+ UpperCase(DM1.DisplayDescrip('prvTGE', 'USERTABLE', 'USERNOM', xWhere , 'USERNOM'));
    pprresmendep.Print;
  End;
  If rgtipo.ItemIndex = 1 Then
  Begin
    ppLabel26.Caption := 'PAGOS REGISTRADOS DEL '+dbdtpinicio.Text+' AL '+dbdtpfinal.Text;
    ppLabel29.Caption := 'IMPRESO POR : '+ UpperCase(DM1.DisplayDescrip('prvTGE', 'USERTABLE', 'USERNOM', xWhere , 'USERNOM'));
    pprrepok.Print;
  End;
  If rgtipo.ItemIndex = 2 Then
  Begin
    ppLabel26.Caption := 'PAGOS NO REGISTRADOS DEL '+dbdtpinicio.Text+' AL '+dbdtpfinal.Text;
    ppLabel49.Caption := 'IMPRESO POR : '+ UpperCase(DM1.DisplayDescrip('prvTGE', 'USERTABLE', 'USERNOM', xWhere , 'USERNOM'));
    pprrepok.Print;
  End;

  If rgtipo.ItemIndex = 3 Then
  Begin
    ppLabel44.Caption := 'REGISTROS INCONSISTENTES DEL '+dbdtpinicio.Text+' AL '+dbdtpfinal.Text;
    ppLabel29.Caption := 'IMPRESO POR : '+ UpperCase(DM1.DisplayDescrip('prvTGE', 'USERTABLE', 'USERNOM', xWhere , 'USERNOM'));
    pprreginc.Print;
  End;

End;

procedure TFestdes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
  begin
    Key := #0;
    Perform(CM_DIALOGKEY, VK_TAB, 0);
  end;
end;

procedure TFestdes.FormActivate(Sender: TObject);
begin
  If DM1.cdsReporte.Active = True Then
  Begin
    DM1.cdsReporte.EmptyDataSet;
    dbgreporte.Selected.Clear;
    dbgreporte.ApplySelected;
  End;
end;

end.
