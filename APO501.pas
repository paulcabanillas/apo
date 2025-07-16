unit APO501;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppBands, ppCtrls, ppVar, jpeg, ppPrnabl, ppClass, ppCache, ppComm,
  ppTypes, ppRelatv, ppProd, ppReport, fcButton, fcImgBtn, fcShapeBtn, Wwdbspin,
  StdCtrls, Mask, wwdbedit, wwdblook, ExtCtrls, ppViewr, Wwdbdlg;

type
  TFRepCaptacionAportes = class(TForm)
    pnlCabecera: TPanel;
    fcShapeBtn2: TfcShapeBtn;
    fcShapeBtn1: TfcShapeBtn;
    ppRepDetAportes: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppImage1: TppImage;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel24: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel33: TppLabel;
    ppLabel35: TppLabel;
    ppLabel42: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    zzzzz: TPanel;
    GroupBox1: TGroupBox;
    wwDBSpinEdit1: TwwDBSpinEdit;
    wwDBSpinEdit2: TwwDBSpinEdit;
    wwDBLookupComboDlg2: TwwDBLookupComboDlg;
    wwDBLookupComboDlg3: TwwDBLookupComboDlg;
    wwDBEdit39: TwwDBEdit;
    wwDBEdit43: TwwDBEdit;
    wwDBLookupComboDlg1: TwwDBLookupComboDlg;
    RadioGroup1: TRadioGroup;
    wwDBLookupComboDlg4: TwwDBLookupComboDlg;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    ppRepResAportes: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppImage2: TppImage;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel12: TppLabel;
    ppLabel14: TppLabel;
    ppLabel34: TppLabel;
    ppLabel15: TppLabel;
    ppLabel36: TppLabel;
    ppLabel41: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel19: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    fcShapeBtn10: TfcShapeBtn;
    fcShapeBtn3: TfcShapeBtn;
    ppLabel2: TppLabel;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLabel13: TppLabel;
    ppLabel18: TppLabel;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLabel20: TppLabel;
    ppLine1: TppLine;
    ppLabel23: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    procedure fcShapeBtn1Click(Sender: TObject);
    procedure ppRepDetAportesPreviewFormCreate(Sender: TObject);
    procedure fcShapeBtn2Click(Sender: TObject);
    procedure fcShapeBtn3Click(Sender: TObject);
    procedure fcShapeBtn10Click(Sender: TObject);
    procedure ppRepResAportesPreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRepCaptacionAportes: TFRepCaptacionAportes;

implementation

{$R *.DFM}

procedure TFRepCaptacionAportes.fcShapeBtn1Click(Sender: TObject);
begin
  ppRepDetAportes.Print;
end;

procedure TFRepCaptacionAportes.ppRepDetAportesPreviewFormCreate(Sender: TObject);
begin
//, ppViewr
TppReport(Sender).PreviewForm.WindowState:=WsMaximized;
TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting:=zsPageWidth;

end;

procedure TFRepCaptacionAportes.fcShapeBtn2Click(Sender: TObject);
begin
  self.Close;

end;

procedure TFRepCaptacionAportes.fcShapeBtn3Click(Sender: TObject);
begin
ppRepDetAportes.Print;
end;

procedure TFRepCaptacionAportes.fcShapeBtn10Click(Sender: TObject);
begin
ppRepResAportes.Print;
end;

procedure TFRepCaptacionAportes.ppRepResAportesPreviewFormCreate(
  Sender: TObject);
begin
//, ppViewr
TppReport(Sender).PreviewForm.WindowState:=WsMaximized;
TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting:=zsPageWidth;

end;

end.
