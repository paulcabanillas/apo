unit APO719;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, fcButton, fcImgBtn, fcShapeBtn, Buttons, ExtCtrls;

type
  TFToolBusq = class(TForm)
    pnlBot: TPanel;
    lblApeMat: TLabel;
    bbtnAceptar: TfcShapeBtn;
    edtAsociado: TEdit;
    procedure bbtnAceptarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FToolBusq: TFToolBusq;
  xSQL: String;

implementation

uses APODM, MsgDlgs, APO001;

{$R *.DFM}

procedure TFToolBusq.bbtnAceptarClick(Sender: TObject);
begin
  if Length(Trim(edtAsociado.Text))>0 Then
    xSQL:='SELECT * FROM APO201 WHERE ASOAPENOM LIKE '+QuotedStr(Trim(edtAsociado.Text+'%'))
  else
    xSQL:='SELECT * FROM APO201';
  Screen.Cursor:=crHourGlass;
  MtxAsocia.UsuarioSQL.Clear;
  MtxAsocia.FMant.wTabla:='APO201';
  MtxAsocia.UsuarioSQL.Add(xSQL);
  MtxAsocia.NewQuery;
  Screen.Cursor:=crDefault;
end;

end.
