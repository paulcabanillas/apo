unit APO319;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, wwdblook, Wwdbdlg,
  wwdbdatetimepicker, Grids, Wwdbigrd, Wwdbgrid, db, ppProd, ppClass,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, ppVar, ppCtrls,
  ppPrnabl, ppBands, ppCache;

type
  TFcobefeapo = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    dbdtpinicio: TwwDBDateTimePicker;
    dbdtpfin: TwwDBDateTimePicker;
    Label3: TLabel;
    dblcdusuario: TwwDBLookupComboDlg;
    Panel1: TPanel;
    edtnomusuario: TEdit;
    btnfiltrar: TBitBtn;
    dbgreporte: TwwDBGrid;
    btnimprimir: TBitBtn;
    btnsalir: TBitBtn;
    bdepreporte: TppBDEPipeline;
    pprreporte: TppReport;
    ppDetailBand1: TppDetailBand;
    ppShape7: TppShape;
    pplblTitulo: TppLabel;
    ppShape6: TppShape;
    ppShape5: TppShape;
    ppShape3: TppShape;
    ppShape2: TppShape;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel22: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel16: TppLabel;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppHeaderBand1: TppHeaderBand;
    ppLabel4: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLine4: TppLine;
    ppDBText6: TppDBText;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel2: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel3: TppLabel;
    pplimpresopor: TppLabel;
    procedure FormActivate(Sender: TObject);
    procedure btnsalirClick(Sender: TObject);
    procedure dblcdusuarioChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnfiltrarClick(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fcobefeapo: TFcobefeapo;

implementation

uses APODM;

{$R *.dfm}

procedure TFcobefeapo.FormActivate(Sender: TObject);
Var xSql:String;
begin
 If DM1.cdsReporte.Active = True Then DM1.cdsReporte.Close;
 dbdtpinicio.Date := date;
 dbdtpfin.Date := date;

  xSql := 'SELECT A.USERID, UPPER(A.USERNOM) USERNOM FROM USERTABLE A, TGE006 B'
  +' WHERE A.AREA = ''CAJ'' AND A.ORIGEN = ''01'' AND A.USERID = B.USERID AND (B.FECEXP IS NULL OR B.FECEXP < SYSDATE)';

  DM1.cdsUsuarios.Close;
  DM1.cdsUsuarios.DataRequest(xSql);
  DM1.cdsUsuarios.Open;
  dblcdusuario.Selected.Clear;
  dblcdusuario.Selected.Add('USERID'#9'15'#9'Código'#9#9);
  dblcdusuario.Selected.Add('USERNOM'#9'35'#9'Descripción'#9#9);

  dblcdusuario.Enabled := True;
  dblcdusuario.Text := dm1.wUsuario;
  dblcdusuario.Enabled := False;

end;

procedure TFcobefeapo.btnsalirClick(Sender: TObject);
begin
 Fcobefeapo.Close;
end;

procedure TFcobefeapo.dblcdusuarioChange(Sender: TObject);
begin
  If Trim(dblcdusuario.Text) = '' Then edtnomusuario.text := ''
  Else
  Begin
    If DM1.cdsUsuarios.Locate('USERID', dblcdusuario.Text, []) Then
      edtnomusuario.Text := DM1.cdsUsuarios.FieldByName('USERNOM').AsString
    Else
    Begin
      MessageDlg('Código no Valido', mtInformation, [mbOk], 0);
      edtnomusuario.text := '';
    End;
  End;
end;

procedure TFcobefeapo.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
  begin
    Key := #0;
    Perform(CM_DIALOGKEY, VK_TAB, 0);
  end;
end;

procedure TFcobefeapo.btnfiltrarClick(Sender: TObject);
Var xSql:String;
montot, cantot:Double;
begin
  montot := 0;
  cantot := 0;
  xSql := 'SELECT TRANSFOPE, USEID, ASOCODMOD, ASOAPENOM, TRANSNOPE, COUNT(*) CANAPO, SUM(NVL(TRANSMTO,0)) TRANSMTO'
  +' FROM APO301 WHERE TRANSFOPE >= '+QuotedStr(dbdtpinicio.Text)+' AND TRANSFOPE <= '+QuotedStr(dbdtpfin.Text)
  +' AND FORPAGOID = ''02'' AND USUARIO = '+QuotedStr(dblcdusuario.Text)
  +' GROUP BY TRANSFOPE, USEID, ASOCODMOD, ASOAPENOM, TRANSNOPE ORDER BY TRANSFOPE, USEID, ASOCODMOD, ASOAPENOM';
  DM1.cdsReporte.Close;
  DM1.cdsReporte.DataRequest(xSql);
  DM1.cdsReporte.Open;
  DM1.cdsReporte.First;
  While Not DM1.cdsReporte.Eof Do
  Begin
    montot := montot + DM1.cdsReporte.FieldByName('TRANSMTO').AsFloat;
    cantot := cantot + DM1.cdsReporte.FieldByName('CANAPO').AsFloat;
    DM1.cdsReporte.Next;
  End;
  DM1.cdsReporte.First;
  dbgreporte.Selected.Clear;
  dbgreporte.Selected.Add('USEID'#9'10'#9'Ugel'#9#9);
  dbgreporte.Selected.Add('ASOCODMOD'#9'10'#9'Codigo~Modular'#9#9);
  dbgreporte.Selected.Add('ASOAPENOM'#9'42'#9'Apellido(s) y~Nombre(s)'#9#9);
  dbgreporte.Selected.Add('TRANSNOPE'#9'10'#9'Número~Operación'#9#9);
  dbgreporte.Selected.Add('CANAPO'#9'10'#9'Cantidad~aporte'#9#9);
  dbgreporte.Selected.Add('TRANSMTO'#9'10'#9'Monto~aporte'#9#9);
  dbgreporte.ApplySelected;
  TNumericField(DM1.cdsReporte.FieldByName('TRANSMTO')).DisplayFormat := '###,###,##0.00';
  TNumericField(DM1.cdsReporte.FieldByName('CANAPO')).DisplayFormat := '###,###,##0';
  dbgreporte.ColumnByName('ASOAPENOM').FooterValue := 'TOTAL APORTE :';
  dbgreporte.ColumnByName('TRANSMTO').FooterValue := FormatFloat('###,###.#0',montot);
  dbgreporte.ColumnByName('CANAPO').FooterValue := FormatFloat('###,###',cantot);
end;

procedure TFcobefeapo.btnimprimirClick(Sender: TObject);
Var xWhere:String;
begin
  xWhere := 'USERID = '+ QuotedStr(DM1.wUsuario) ;
  pplimpresopor.Caption := 'IMPRESO POR : '+ UpperCase(DM1.DisplayDescrip('prvTGE', 'USERTABLE', 'USERNOM', xWhere , 'USERNOM'));
  pplblTitulo.Caption := 'COBRANZA EFECTUADA DE APORTES DEL '+dbdtpinicio.Text+' AL '+dbdtpfin.Text;
  ppLabel1.Caption := 'USUARIO : '+DM1.wUsuario;
  pprreporte.Print;
end;

end.
