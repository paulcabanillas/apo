unit APO511;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, ExtCtrls;

type
  TFMuestraDatos = class(TForm)
    pnlUse: TPanel;
    Panel1: TPanel;
    lbCodDerrama1: TLabel;
    lbCodModular1: TLabel;
    Label2: TLabel;
    Panel2: TPanel;
    dbtAsociado: TDBText;
    dbtCodModular: TDBText;
    dbtCodDerrama: TDBText;
    Label1: TLabel;
    dbtUSE: TDBText;
    Label3: TLabel;
    dbtUPro: TDBText;
    Label4: TLabel;
    dbtUPago: TDBText;
    Label5: TLabel;
    dbtDepto: TDBText;
    Panel3: TPanel;
    Label6: TLabel;
    dbtTransaccion: TDBText;
    Label7: TLabel;
    bdtMes: TDBText;
    Label8: TLabel;
    dbtAno: TDBText;
    Label9: TLabel;
    dbtInteres: TDBText;
    Label10: TLabel;
    dbtFPago: TDBText;
    Label11: TLabel;
    dbtNombreUSE: TDBText;
    dbtBonus: TDBText;
    Label12: TLabel;
    Label13: TLabel;
    dbtSaldoAnt: TDBText;
    Label14: TLabel;
    dbtSaldo: TDBText;
    Panel4: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    DBText1: TDBText;
    Label17: TLabel;
    DBText2: TDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMuestraDatos: TFMuestraDatos;

implementation

uses APODM;


{$R *.DFM}

end.
