unit APO401;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcButton, fcImgBtn, fcShapeBtn, wwdblook, Wwdbspin, wwdbdatetimepicker,
  StdCtrls, ComCtrls, wwriched, Mask, wwdbedit, ExtCtrls, Wwdbdlg, DBCtrls;

type
  TFActualizaCtaInd = class(TForm)
    pnlCabecera: TPanel;
    Panel1: TPanel;
    fcShapeBtn2: TfcShapeBtn;
    fcShapeBtn1: TfcShapeBtn;
    wwDBEdit43: TwwDBEdit;
    wwDBEdit39: TwwDBEdit;
    dbeNomPost: TwwDBEdit;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    wwDBLookupComboDlg1: TwwDBLookupComboDlg;
    Panel2: TPanel;
    wwDBSpinEdit3: TwwDBSpinEdit;
    wwDBSpinEdit4: TwwDBSpinEdit;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    ProgressBar1: TProgressBar;
    wwDBEdit3: TwwDBEdit;
    wwDBLookupCombo1: TwwDBLookupCombo;
    wwDBLookupCombo2: TwwDBLookupCombo;
    wwDBEdit4: TwwDBEdit;
    wwDBLookupCombo3: TwwDBLookupCombo;
    dbeNomPri: TwwDBEdit;
    dbeLugProc: TwwDBEdit;
    RadioGroup1: TRadioGroup;
    GroupBox1: TGroupBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    wwDBSpinEdit5: TwwDBSpinEdit;
    wwDBSpinEdit2: TwwDBSpinEdit;
    procedure fcShapeBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FActualizaCtaInd: TFActualizaCtaInd;

implementation

{$R *.DFM}

procedure TFActualizaCtaInd.fcShapeBtn2Click(Sender: TObject);
begin
	self.close;
end;

end.
