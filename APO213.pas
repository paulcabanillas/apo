unit APO213;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcButton, fcImgBtn, fcShapeBtn, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid,
  ppEndUsr, ppCache, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass,
  ppReport, ppBands, ppPrnabl, ppCtrls;

type
  TFInconsistencias = class(TForm)
    dbgInconsistencias: TwwDBGrid;
    Panel1: TPanel;
    Z2bbtnCancel: TfcShapeBtn;
    procedure Z2bbtnCancelClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FInconsistencias: TFInconsistencias;

implementation

uses APODM;

{$R *.DFM}

procedure TFInconsistencias.Z2bbtnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TFInconsistencias.FormActivate(Sender: TObject);
begin
  dbgInconsistencias.Selected.Clear;
  dbgInconsistencias.Selected.Add('AÑO'#9'4'#9'Año');
  dbgInconsistencias.Selected.Add('MES'#9'3'#9'Mes');
  dbgInconsistencias.Selected.Add('ASOID'#9'10'#9'Código');
  dbgInconsistencias.Selected.Add('COD_MODULAR'#9'10'#9'Código Modular');
  dbgInconsistencias.Selected.Add('ASOCIADO'#9'40'#9'Apellidos y Nombres');
  dbgInconsistencias.Selected.Add('COD_PAGO'#9'10'#9'Código de Pago');
  dbgInconsistencias.Selected.Add('USE'#9'8'#9'Use');
  dbgInconsistencias.Selected.Add('UNID_PROCESO'#9'8'#9'Unid de~Proceso');
  dbgInconsistencias.Selected.Add('UNID_PAGO'#9'8'#9'Unid de~Pago');
  dbgInconsistencias.Selected.Add('APORTE'#9'12'#9'Monto Aportes');
  dbgInconsistencias.Selected.Add('CREDITO'#9'12'#9'Monto Cuotas');
  dbgInconsistencias.Selected.Add('TOTAL'#9'12'#9'Monto Total');
  dbgInconsistencias.Selected.Add('INCONSISTENCIA'#9'60'#9'Inconsistencia');
  dbgInconsistencias.Selected.Add('BANCOID'#9'10'#9'Banco');
  dbgInconsistencias.Selected.Add('CCBCOID'#9'13'#9'Cuenta Bancaria');
  dbgInconsistencias.Selected.Add('USUARIO'#9'10'#9'Usuario');
  dbgInconsistencias.Selected.Add('FREG'#9'10'#9'Fecha~Registro');
  dbgInconsistencias.Selected.Add('HREG'#9'22'#9'Hora Registro');
  dbgInconsistencias.Selected.Add('X'#9'3'#9'X');

  dbgInconsistencias.DataSource:=DM1.dsTransferencia;

  dbgInconsistencias.ColumnByName('CREDITO').FooterValue:=FloatToStrF(DM1.OperClientDataSet(DM1.cdsTransferencia , 'SUM(CREDITO)',''),ffNumber, 15, 2);
  dbgInconsistencias.ColumnByName('APORTE').FooterValue:=FloatToStrF(DM1.OperClientDataSet(DM1.cdsTransferencia , 'SUM(APORTE)',''),ffNumber, 15, 2);
  dbgInconsistencias.ColumnByName('TOTAL').FooterValue:=FloatToStrF(DM1.OperClientDataSet(DM1.cdsTransferencia , 'SUM(TOTAL)',''),ffNumber, 15, 2);
  dbgInconsistencias.ColumnByName('ASOCIADO').FooterValue:=FloatToStrF(DM1.OperClientDataSet(DM1.cdsTransferencia , 'COUNT(ASOCIADO)',''),ffNumber, 15,0);

end;

procedure TFInconsistencias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM1.cdsTransferencia.Close;
  DM1.cdsTransferencia.Free;
  dbgInconsistencias.Free;
end;

end.
