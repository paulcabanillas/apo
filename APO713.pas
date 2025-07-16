unit APO713;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcButton, fcImgBtn, fcShapeBtn, StdCtrls, ExtCtrls;

type
  TFToolDev = class(TForm)
    pnlTool: TPanel;
    lblApeMat: TLabel;
    edtAsociado: TEdit;
    sbtnAceptar: TfcShapeBtn;
    procedure sbtnAceptarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FToolDev: TFToolDev;

implementation

uses APO001, APODM;

{$R *.DFM}

procedure TFToolDev.sbtnAceptarClick(Sender: TObject);
var
  xSQL: String;
begin
  if Length(Trim(edtAsociado.Text)) > 0 Then
    xSQL:='SELECT * FROM APO311 WHERE ASOAPENOM LIKE '+QuotedStr(Trim(edtAsociado.Text+'%'))
  else
    xSQL:='SELECT * FROM APO311';

  Screen.Cursor:=crHourGlass;
  Mtx.UsuarioSQL.Clear;
  Mtx.FMant.wTabla:='APO311';
  Mtx.UsuarioSQL.Add(xSQL);
  Mtx.NewQuery;
  Screen.Cursor:=crDefault;
end;

end.
