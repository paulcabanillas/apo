unit APO714;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, fcButton, fcImgBtn, fcShapeBtn, ExtCtrls;

type
  TFToolRepDev = class(TForm)
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
  FToolRepDev: TFToolRepDev;

implementation

uses APO001, APODM;

{$R *.DFM}

procedure TFToolRepDev.bbtnAceptarClick(Sender: TObject);
var
  xSQL: String;
begin
  If Length(Trim(edtAsociado.Text))>0 Then
  Begin
    xSQL:='SELECT * FROM APO301 '+
          'WHERE ASOAPENOM LIKE '+QuotedStr(Trim(edtAsociado.Text+'%'));
    Screen.Cursor:=crHourGlass;
    Mtx.UsuarioSQL.Clear;
    Mtx.FMant.wTabla:='APO301';
    Mtx.UsuarioSQL.Add(xSQL);
    Mtx.NewQuery;
    Screen.Cursor:=crDefault;

    If DM1.cdsTransacciones.RecordCount=0 Then
    Begin
      xSQL:='SELECT * FROM APO301 ';
      Screen.Cursor:=crHourGlass;
      Mtx.UsuarioSQL.Clear;
      Mtx.FMant.wTabla:='APO301';
      Mtx.UsuarioSQL.Add(xSQL);
      Mtx.NewQuery;
      edtAsociado.Text:='';
      edtAsociado.SetFocus;
      Screen.Cursor:=crDefault;
      ShowMessage('No Existen Registros que cumplan la condición ');
    End;
  End;

end;

end.
