unit APO305;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  wwdblook, fcButton, fcImgBtn, fcShapeBtn, Wwdbdlg, StdCtrls, Mask,
  wwdbedit, Wwdbspin, ExtCtrls, wwdbdatetimepicker, Buttons, Wwdbigrd,
  Grids, Wwdbgrid, DBCtrls;

type
  TFCobxUse = class(TForm)
    pnlCabecera: TPanel;
    fcShapeBtn1: TfcShapeBtn;
    fcShapeBtn2: TfcShapeBtn;
    fcShapeBtn3: TfcShapeBtn;
    pnlInicio: TPanel;
    wwDBEdit1: TwwDBEdit;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    dblcUProceso: TwwDBLookupCombo;
    edtUProceso: TEdit;
    Panel1: TPanel;
    wwDBSpinEdit1: TwwDBSpinEdit;
    wwDBSpinEdit2: TwwDBSpinEdit;
    Edit2: TEdit;
    dblcdUse: TwwDBLookupComboDlg;
    bbtnSigue: TfcShapeBtn;
    dblcBanco: TwwDBLookupCombo;
    edtBanco: TEdit;
    dblcCtaCte: TwwDBLookupCombo;
    dbgAportes: TwwDBGrid;
    bbtnIngresaAporte: TwwIButton;
    pnlAportes: TPanel;
    StaticText2: TStaticText;
    Panel5: TPanel;
    Label1: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    bbtnAceptar: TfcShapeBtn;
    bbtnCancel: TfcShapeBtn;
    dbeCodigoModular: TwwDBEdit;
    dbeCodigoPago: TwwDBEdit;
    dbeApePat: TwwDBEdit;
    dbeApeMat: TwwDBEdit;
    dbeNombres: TwwDBEdit;
    dblcdCodigo: TwwDBLookupComboDlg;
    wwDBEdit5: TwwDBEdit;
    wwDBEdit6: TwwDBEdit;
    wwDBEdit7: TwwDBEdit;
    wwDBEdit8: TwwDBEdit;
    dblcFormaPago: TwwDBLookupCombo;
    edtFormaPago: TEdit;
    Panel2: TPanel;
    wwDBEdit9: TwwDBEdit;
    wwDBEdit10: TwwDBEdit;
    wwDBEdit11: TwwDBEdit;
    wwDBLookupCombo2: TwwDBLookupCombo;
    Edit4: TEdit;
    DBRadioGroup2: TDBRadioGroup;
    fcShapeBtn4: TfcShapeBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCobxUse: TFCobxUse;

implementation
uses apodm;
{$R *.DFM}

end.
