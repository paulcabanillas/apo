unit CRE209;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Wwdbigrd, Grids, Wwdbgrid, fcLabel;

type
  TFDSituaciones = class(TForm)
    wwDBGrid7: TwwDBGrid;
    wwIButton7: TwwIButton;
    Edit1: TEdit;
    lbCodigo: TfcLabel;
    lbTitulo: TfcLabel;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDSituaciones: TFDSituaciones;

implementation

{$R *.DFM}

procedure TFDSituaciones.FormActivate(Sender: TObject);
begin
  Edit1.Text:='';
end;

end.                   
