unit APO404;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, StdCtrls, ExtCtrls, db, fcButton, fcImgBtn,
  fcShapeBtn ;

type
  TFDatosContabilizacion = class(TForm)
    pnlCabecera: TPanel;
    dbgDatos: TwwDBGrid;
    bbtnSalir: TfcShapeBtn;
    bbtnCancelar: TfcShapeBtn;
    procedure FormActivate(Sender: TObject);
    procedure bbtnSalirClick(Sender: TObject);
    procedure bbtnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDatosContabilizacion: TFDatosContabilizacion;

implementation

uses APODM, APO402;

{$R *.DFM}

procedure TFDatosContabilizacion.FormActivate(Sender: TObject);
begin
    dbgDatos.Selected.Add('USEID'#9'10'#9'USE');
    dbgDatos.Selected.Add('TRANSNOPE'#9'10'#9'Nro Operación');
    dbgDatos.Selected.Add('TRANSFOPE'#9'10'#9'Fecha Operación');
    dbgDatos.Selected.Add('MONTO'#9'10'#9'Monto');
    dbgDatos.RefreshDisplay;
    TNumericField( DM1.cdsQry.FieldByName('MONTO') ).DisplayFormat:='###,###,###.00';
end;

procedure TFDatosContabilizacion.bbtnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFDatosContabilizacion.bbtnCancelarClick(Sender: TObject);
begin
  FContabilizacion.xVar:='X';
  Close;
end;

end.
