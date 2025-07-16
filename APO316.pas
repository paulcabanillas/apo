unit APO316;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdbdatetimepicker, Buttons, Grids, Wwdbigrd, Wwdbgrid, db,
  ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE,
  ppCtrls, ppVar, ppPrnabl, ppBands, ppCache;

type
  TFEstapoxforpag = class(TForm)
    dbgprevio: TwwDBGrid;
    GroupBox1: TGroupBox;
    btnprocesar: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    dbdtpinicio: TwwDBDateTimePicker;
    dbdtpfinal: TwwDBDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    ppbdepreporte: TppBDEPipeline;
    pprreporte: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    pplblTitulo: TppLabel;
    ppltitulo02: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel22: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLabel4: TppLabel;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppLabel5: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLine1: TppLine;
    pplimpresopor: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLine2: TppLine;
    procedure btnprocesarClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEstapoxforpag: TFEstapoxforpag;

implementation

uses APODM;

{$R *.dfm}

procedure TFEstapoxforpag.btnprocesarClick(Sender: TObject);
Var xSql:String;
Cantidad, Total:Double;
begin
    xSql := 'SELECT A.FORPAGOABR, B.FORPAGODES,  COUNT(*) CUENTA, SUM(NVL(TRANSMTO,0)) TRANSMTO FROM APO301 A, COB101 B'
    +' WHERE TRANSFOPE >= '+QuotedStr(dbdtpinicio.Text)+' AND  TRANSFOPE <= '+QuotedStr(dbdtpfinal.Text)
    +' AND A.FORPAGOID = B.FORPAGOID GROUP BY A.FORPAGOABR, B.FORPAGODES';
    DM1.cdsReporte.Close;
    DM1.cdsReporte.DataRequest(xSql);
    DM1.cdsReporte.Open;
    dbgprevio.DataSource := DM1.dsReporte;
    dbgprevio.Selected.Clear;
    dbgprevio.Selected.Add('FORPAGOABR'#9'3'#9'Código de la~forma de pago'#9#9);
    dbgprevio.Selected.Add('FORPAGODES'#9'30'#9'Descripción~de la forma de pago'#9#9);
    dbgprevio.Selected.Add('CUENTA'#9'10'#9'Cantidad de~aportes registrados'#9#9);
    dbgprevio.Selected.Add('TRANSMTO'#9'10'#9'Monto total de~aportes registrados'#9#9);
    TNumericField(DM1.cdsReporte.FieldByName('CUENTA')).DisplayFormat := '###,###,##0';
    TNumericField(DM1.cdsReporte.FieldByName('TRANSMTO')).DisplayFormat := '###,###,##0.00';
    dbgprevio.ApplySelected;
    DM1.cdsReporte.First;
    Cantidad := 0;
    Total := 0;
    While Not DM1.cdsReporte.Eof Do
    Begin
      Cantidad := Cantidad + DM1.cdsReporte.FieldByName('CUENTA').AsFloat;
      Total    := Total    + DM1.cdsReporte.FieldByName('TRANSMTO').AsFloat;
      DM1.cdsReporte.Next;
    End;
    DM1.cdsReporte.First;
    dbgprevio.ColumnByName('FORPAGODES').FooterValue := 'Totales :';
    dbgprevio.ColumnByName('CUENTA').FooterValue := FormatFloat('##,###.##',Cantidad);
    dbgprevio.ColumnByName('TRANSMTO').FooterValue := FormatFloat('##,###.##',Total);


    {
      dbgnoaportantes.Selected.Clear;
  dbgnoaportantes.Selected.Add('TRANSANO'#9'6'#9'Año del~Aporte'#9#9);
  dbgnoaportantes.Selected.Add('MESDESL'#9'15'#9'Mes del~Aporte'#9#9);
  dbgnoaportantes.Selected.Add('VALAPO'#9'10'#9'Monto del~Aporte'#9#9);
  dbgnoaportantes.Selected.Add('MONAPO'#9'9'#9'Monto~Aportado'#9#9);
  TNumericField(DM1.cdsAportes.FieldByName('VALAPO')).DisplayFormat := '##0.00';
  TNumericField(DM1.cdsAportes.FieldByName('MONAPO')).DisplayFormat := '##0.00';
  dbgnoaportantes.Selected.Add('CB_OK'#9'3'#9'Seleccionar'#9'F');
  dbgnoaportantes.SetControlType('CB_OK', fctCheckBox, '1;0');
  dbgnoaportantes.ApplySelected;
  dbgnoaportantes.ColumnByName('VALAPO').FooterValue := FormatFloat('##,###.##',valapo);
  dbgnoaportantes.ColumnByName('VALAPO').FooterValue := FormatFloat('##,###.##',valapo);
  dbgnoaportantes.ColumnByName('MONAPO').FooterValue := FormatFloat('##,###.##',monapo);
  mecanapofal.Text := FloatToStrF(canmar,ffNumber,10,0);
  memonapofal.Text := FloatToStrF(monmar,ffNumber,10,2);
    }

End;

procedure TFEstapoxforpag.BitBtn2Click(Sender: TObject);
begin
  FEstapoxforpag.Close;
end;

procedure TFEstapoxforpag.FormKeyPress(Sender: TObject; var Key: Char);
begin
If Key = #13 Then
  begin
    Key := #0;
    Perform(CM_DIALOGKEY, VK_TAB, 0);
  end;
end;

procedure TFEstapoxforpag.FormActivate(Sender: TObject);
begin
  dbdtpinicio.SetFocus;
  If DM1.cdsReporte.Active = True Then DM1.cdsReporte.EmptyDataSet;
end;

procedure TFEstapoxforpag.BitBtn1Click(Sender: TObject);
Var xWhere:String;
begin
   xWhere := 'USERID = '+ QuotedStr(DM1.wUsuario) ;
   pplimpresopor.Caption := 'IMPRESO POR : '+ UpperCase(DM1.DisplayDescrip('prvTGE', 'USERTABLE', 'USERNOM', xWhere , 'USERNOM'));
   ppltitulo02.Caption := 'DEL '+dbdtpinicio.Text+' AL '+dbdtpfinal.Text;
   pprreporte.Print;
end;

end.
