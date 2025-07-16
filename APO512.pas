unit APO512;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, fcButton, fcImgBtn, fcShapeBtn,
  StdCtrls, ComCtrls, wwriched, wwdblook;

type
  TFDetOper = class(TForm)
    pnl: TPanel;
    dbgDetOper: TwwDBGrid;
    Z2bbtnAceptar: TfcShapeBtn;
    Z2bbtnCancel: TfcShapeBtn;
    Z2bbtnSalir: TfcShapeBtn;
    Panel2: TPanel;
    StaticText1: TStaticText;
    Panel3: TPanel;
    fcShapeBtn1: TfcShapeBtn;
    fcShapeBtn2: TfcShapeBtn;
    dblcdBanco: TwwDBLookupCombo;
    Edit1: TEdit;
    dblcCCBco: TwwDBLookupCombo;
    Edit2: TEdit;
    dblcTDiario: TwwDBLookupCombo;
    Edit3: TEdit;
    wwDBRichEdit1: TwwDBRichEdit;
    procedure Z2bbtnSalirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDetOper: TFDetOper;

implementation

uses APODM;

{$R *.DFM}

procedure TFDetOper.Z2bbtnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFDetOper.FormActivate(Sender: TObject);
begin
  Screen.Cursor:=crDefault;
end;

end.
