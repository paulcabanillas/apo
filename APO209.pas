unit APO209;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, Wwdbigrd, Grids, Wwdbgrid, fcLabel;

type
  TFDCtaINd = class(TForm)
    dbgDFam: TwwDBGrid;
    btnDFam: TwwIButton;
    lbCodigo: TfcLabel;
    lbTitulo: TfcLabel;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDCtaINd: TFDCtaINd;

implementation

uses APODM;

{$R *.DFM}

procedure TFDCtaINd.FormActivate(Sender: TObject);
begin
    FDCtaInd.lbTitulo.Caption:='Asociado :'+DM1.cdsAso.FieldByName('ASOAPENOM').AsString;
    FDCtaInd.lbCodigo.Caption:='C�digo Modular :'+DM1.cdsAso.FieldByName('ASOCODMOD').AsString;

end;

end.
