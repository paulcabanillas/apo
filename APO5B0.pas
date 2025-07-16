unit APO5B0;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppBands, ppCtrls, jpeg, ppVar, ppPrnabl, ppClass, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, StdCtrls, Mask, wwdbedit, Wwdbspin, fcButton,
  fcImgBtn, fcShapeBtn, ExtCtrls, ppViewr;

type
  TFRepRecaudacionApo = class(TForm)
    pnlCabecera888: TPanel;
    lblTitulo99: TLabel;
    fcShapeBtn222: TfcShapeBtn;
    lblFondo99: TPanel;
    GroupBox18: TGroupBox;
    wwDBSpinEdit29: TwwDBSpinEdit;
    fcShapeBtn1: TfcShapeBtn;
    ppRepRecaudacionApo: TppReport;
    ppTitleBand1: TppTitleBand;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppImage1: TppImage;
    ppLabel26: TppLabel;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel12: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel28: TppLabel;
    ppLabel2: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel11: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine4: TppLine;
    ppLabel36: TppLabel;
    ppDBText13: TppDBText;
    procedure fcShapeBtn1Click(Sender: TObject);
    procedure fcShapeBtn222Click(Sender: TObject);
    procedure ppRepRecaudacionApoPreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRepRecaudacionApo: TFRepRecaudacionApo;

implementation

{$R *.DFM}

procedure TFRepRecaudacionApo.fcShapeBtn1Click(Sender: TObject);
begin
ppRepRecaudacionApo.Print;
end;

procedure TFRepRecaudacionApo.fcShapeBtn222Click(Sender: TObject);
begin
Self.Close;
end;

procedure TFRepRecaudacionApo.ppRepRecaudacionApoPreviewFormCreate(
  Sender: TObject);
begin
// , ppViewr
TppReport(Sender).PreviewForm.WindowState:=wsMaximized;
TppViewer(TppReport(Sender).PreviewForm.Viewer).ZoomSetting:=zsPageWidth;

end;

end.
