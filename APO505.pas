unit APO505;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppBands, ppCtrls, ppVar, jpeg, ppPrnabl, ppClass, ppCache, ppComm,
  ppTypes, ppRelatv, ppProd, ppReport, ExtCtrls, wwdbedit, wwdblook, Wwdbdlg,
  StdCtrls, Mask, Wwdbspin, fcButton, fcImgBtn, fcShapeBtn, ppViewr;

type
  TFRepDevAportes = class(TForm)
    pnlCabecera888: TPanel;
    fcShapeBtn222: TfcShapeBtn;
    fcShapeBtn188: TfcShapeBtn;
    lblFondo99: TPanel;
    GroupBox18: TGroupBox;
    wwDBSpinEdit19: TwwDBSpinEdit;
    wwDBSpinEdit29: TwwDBSpinEdit;
    wwDBLookupComboDlg281: TwwDBLookupComboDlg;
    wwDBLookupComboDlg333: TwwDBLookupComboDlg;
    wwDBEdit3999: TwwDBEdit;
    wwDBEdit4333: TwwDBEdit;
    wwDBLookupComboDlg10: TwwDBLookupComboDlg;
    RadioGroup199: TRadioGroup;
    wwDBLookupComboDlg48: TwwDBLookupComboDlg;
    wwDBEdit100: TwwDBEdit;
    wwDBEdit22: TwwDBEdit;
    ppRepDevAportes: TppReport;
    ppTitleBand1: TppTitleBand;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel12: TppLabel;
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
    ppLabel31: TppLabel;
    ppDBText8: TppDBText;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel36: TppLabel;
    ppLabel2: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    lblTitulo99: TLabel;
    lbl474: TLabel;
    lbl745: TLabel;
    lbl78: TLabel;
    lbl50: TLabel;
    lbl412: TLabel;
    lbl7887: TLabel;
    ppLine5: TppLine;
    ppLine4: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    procedure fcShapeBtn188Click(Sender: TObject);
    procedure fcShapeBtn222Click(Sender: TObject);
    procedure ppRepDevAportesPreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRepDevAportes: TFRepDevAportes;

implementation

{$R *.DFM}

procedure TFRepDevAportes.fcShapeBtn188Click(Sender: TObject);
begin
ppRepDevAportes.Print;
end;

procedure TFRepDevAportes.fcShapeBtn222Click(Sender: TObject);
begin
self.Close;
end;

procedure TFRepDevAportes.ppRepDevAportesPreviewFormCreate(
  Sender: TObject);
begin
//, ppViewr
TppReport(Sender).PreviewForm.WindowState:=WsMaximized;
TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting:=zsPageWidth;

end;

end.
