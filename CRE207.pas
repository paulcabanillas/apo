unit CRE207;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, jpeg, StdCtrls, fcLabel;

type
  TFDFirmaHuella = class(TForm)
    Image3: TImage;
    Panel12: TPanel;
    Panel13: TPanel;
    lbCodigo: TfcLabel;
    lbNombre: TfcLabel;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDFirmaHuella: TFDFirmaHuella;

implementation

uses APODM;

{$R *.DFM}

procedure TFDFirmaHuella.FormActivate(Sender: TObject);
begin
  lbNombre.Caption:='Asociado :'+DM1.cdsAso.FieldByName('ASOAPENOM').AsString;
  lbCodigo.Caption:='Código Modular :'+DM1.cdsAso.FieldByName('ASOCODMOD').AsString;
end;

end.
