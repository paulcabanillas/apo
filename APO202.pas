unit APO202;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, wwdblook, Wwdbdlg, Buttons, wwdbdatetimepicker, Mask, wwdbedit,
  Wwdbspin, ExtCtrls, ComCtrls, db, fcButton, fcImgBtn, fcShapeBtn;

type
  TFGeneraCtaInd = class(TForm)
    Panel1: TPanel;
    dblcdUPro: TwwDBLookupComboDlg;
    dbeUPro: TwwDBEdit;
    dblcdUpag: TwwDBLookupComboDlg;
    dbeUpag: TwwDBEdit;
    dbeUSE: TwwDBEdit;
    dblcdUSE: TwwDBLookupComboDlg;
    Z2bbtnAceptar: TfcShapeBtn;
    fcShapeBtn1: TfcShapeBtn;
    Panel2: TPanel;
    pb1: TProgressBar;
    pb2: TProgressBar;
    LbTotal: TLabel;
    lblNombre: TLabel;
    lbPro: TLabel;
    lbUse: TLabel;
    fcShapeBtn2: TfcShapeBtn;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dblcdUProExit(Sender: TObject);
    procedure dblcdUpagExit(Sender: TObject);
    procedure dblcdUSEExit(Sender: TObject);
    procedure Z2bbtnAceptarClick(Sender: TObject);
    procedure fcShapeBtn1Click(Sender: TObject);
    procedure fcShapeBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
  public
    { Public declarations }
    xSQL:string;
    wBon,xSalBon :Double;
  end;
var
  FGeneraCtaInd: TFGeneraCtaInd;
implementation

uses
APODM;

{$R *.DFM}

procedure TFGeneraCtaInd.FormActivate(Sender: TObject);
begin
  If Not DM1.cdsUPro.Active Then
  Begin
    xSQL:='SELECT * FROM APO102';
    DM1.cdsUPro.Close;
    DM1.cdsUPro.DataRequest(xSQL);
    DM1.cdsUPro.Open;
  End;
  If Not DM1.cdsUPago.Active Then
  Begin
    xSQL:='SELECT * FROM APO103';
    DM1.cdsUPago.Close;
    DM1.cdsUPago.DataRequest(xSQL);
    DM1.cdsUPago.Open;
  End;
  If Not DM1.cdsUPago.Active Then
  Begin
    xSQL:='SELECT * FROM APO101';
    DM1.cdsUse.Close;
    DM1.cdsUse.DataRequest(xSQL);
    DM1.cdsUse.Open;
  End;
  pb1.Position:=0;
  dblcdUSE.Selected.Clear;
  dblcdUSE.Selected.Add('USEID'#9'3'#9'Código');
  dblcdUSE.Selected.Add('USENOM'#9'40'#9'Descripción');
end;

procedure TFGeneraCtaInd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm1.cdsTransacciones.close;
  dm1.cdsUse.close;
end;

procedure TFGeneraCtaInd.dblcdUProExit(Sender: TObject);
begin
 if trim(dblcdUPro.Text)='' then
 begin
  dbeUpro.Clear;
  DM1.Filtracds(DM1.cdsUpro,  'SELECT UPROID,UPRONOM  FROM APO102');
  DM1.Filtracds(DM1.cdsUPago, 'SELECT UPAGOID,UPAGONOM FROM APO103');
  DM1.Filtracds(DM1.cdsUse,   'SELECT USEID, USENOM   FROM APO101');
 end
 else
 begin
  dbeUpro.text:=DM1.cdsUpro.FieldByName('UPRONOM').asstring;
  DM1.Filtracds(DM1.cdsUPago, 'SELECT UPAGOID,UPAGONOM FROM APO103 WHERE UPROID='''+dblcdUpro.Text+'''');
  DM1.Filtracds(DM1.cdsUse,   'SELECT USEID, USENOM   FROM APO101 WHERE UPROID='''+dblcdUpro.Text+'''');
  dblcdUpag.Text:='';
  dbeUpag.Text:='';
  dblcdUSE.Text:='';
  dbeUSE.Text:='';
 end;
 dblcdUpag.Clear;
 dbeUPag.Clear;
 dbeUse.Clear;
 dblcdUse.Clear;
end;

procedure TFGeneraCtaInd.dblcdUpagExit(Sender: TObject);
begin
 if Trim(dblcdUPag.Text)='' then begin
  dbeUPag.Clear;
  DM1.Filtracds(DM1.cdsUPago, 'SELECT UPAGOID,UPAGONOM FROM APO103');
  DM1.Filtracds(DM1.cdsUse,   'SELECT USEID, USENOM   FROM APO101');
 end
 else
 begin
  dbeUPag.Text:=DM1.cdsUPago.FieldByName('UPAGONOM').AsString;
  DM1.FiltraCds(DM1.cdsUse,   'SELECT USEID, USENOM   FROM APO101 WHERE UPAGOID='''+dblcdUPag.Text+'''');
  dblcdUSE.Text:='';
  dbeUSE.Text:='';
 end;
 dbeUse.Clear;
 dblcdUse.Clear;
end;

procedure TFGeneraCtaInd.dblcdUSEExit(Sender: TObject);
begin
 if trim(dblcdUse.Text)='' then
   dbeUse.Text :=''
 else begin
   dbeUse.Text :=Dm1.cdsUse.fieldByName('USENOM').AsString;
   dbeUse.Update;
 end;
end;


procedure TFGeneraCtaInd.fcShapeBtn1Click(Sender: TObject);
begin
  Screen.Cursor:=crHourGlass;
  dblcdUPro.Text:='';
  dbeUPro.Text:='';
  dblcdUpag.Text:='';
  dbeUpag.Text:='';
  dblcdUSE.Text:='';
  dbeUSE.Text:='';
//  dblcdAso.Text:='';
//  lbAsociado.Caption:='';
  DM1.Filtracds(DM1.cdsUpro,  'SELECT UPROID,UPRONOM  FROM APO102');
  DM1.Filtracds(DM1.cdsUPago, 'SELECT UPAGOID,UPAGONOM FROM APO103');
  DM1.Filtracds(DM1.cdsUse,   'SELECT USEID, USENOM   FROM APO101');
  Screen.Cursor:=crDefault;
end;

procedure TFGeneraCtaInd.fcShapeBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFGeneraCtaInd.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0;
    perform(CM_DialogKey,VK_TAB,0);
  end;
end;

procedure TFGeneraCtaInd.Z2bbtnAceptarClick(Sender: TObject);
var
  x, xTot : Integer;
  xBookMark : TBookMark;
begin
  if Length(Trim(dblcdUPro.Text))=0 Then
  begin
    ShowMessage('Debe seleccionar la Unidad de Proceso');
    dblcdUPro.SetFocus;
    exit;
  end;

  if Length(Trim(dblcdUpag.Text))=0 Then
  begin
    ShowMessage('Debe seleccionar la Unidad de Pago');
    dblcdUpag.SetFocus;
    exit;
  end;

  if Length(Trim(dblcdUSE.Text))=0 Then
  begin
    ShowMessage('Debe seleccionar la USE');
    dblcdUSE.SetFocus;
    exit;
  end;
  Screen.Cursor:=crHourGlass;
   XsQL := 'SELECT A.ASOID, A.USEID, A.UPROID, A.UPAGOID, A.ASOFRESNOM, A.ASOFRESCESE'+
           ' FROM APO201 A WHERE A.USEID='+QuotedStr(dblcdUSE.Text);
  DM1.cdsQry2.Close;
  DM1.cdsQry2.DataRequest(xSQL);
  DM1.cdsQry2.Open;

  x:=0;
  xTot:=DM1.cdsQry2.RecordCount;
  if xTot > 0 then
  begin
    LbTotal.Caption:=' Total de Asociados :  '+IntToStr(xTot);
    //pb2.Max:=xTot+1;
    //pb2.Position:=pb2.Position+1;
    lbUse.Caption:=' USE :  '+dblcdUSE.Text+'   -  '+dbeUSE.Text;

    pb2.Visible:=True;
    DM1.cdsQry2.First;
    while Not DM1.cdsQry2.EOF Do
    begin
    	Application.ProcessMessages;
      x:=x+1;
      lbPro.Caption:='';
      lbPro.Caption:=IntToStr(x);
      lbPro.Refresh;
      DM1.ProcesarCtaIndividual(DM1.cdsQry2.FieldByName('ASOID').AsString,pb1);
      DM1.cdsQry2.Next;
    end;
  end;
  pb2.Min:=0;
  pb2.Visible:=False;
  Screen.Cursor:=crDefault;
  ShowMessage('Proceso de Cálculado Finalizado');
  Close;
end;


end.
