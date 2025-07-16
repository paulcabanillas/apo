unit APO716;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, fcButton, fcImgBtn, fcShapeBtn, ExtCtrls;

type
  TFToolCtaIndividual = class(TForm)
    pnlTool: TPanel;
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
  FToolCtaIndividual: TFToolCtaIndividual;

implementation

uses APO001, APODM;

{$R *.DFM}

procedure TFToolCtaIndividual.bbtnAceptarClick(Sender: TObject);
var
  xSQL: String;
begin
  If Length(Trim(edtAsociado.Text))>0 Then
  Begin
    xSQL:='SELECT * FROM APO201 '+
          'WHERE ASOAPENOM LIKE '+QuotedStr(Trim(edtAsociado.Text+'%'));
    Screen.Cursor:=crHourGlass;
    FPrincipal.MtxbAso.UsuarioSQL.Clear;
    FPrincipal.MtxbAso.FMant.wTabla:='APO201';
    FPrincipal.MtxbAso.UsuarioSQL.Add(xSQL);
    FPrincipal.MtxbAso.NewQuery;
    Screen.Cursor:=crDefault;
    If DM1.cdsAsociados.RecordCount=0 Then
    Begin
      xSQL:='SELECT * FROM APO201 ';
      Screen.Cursor:=crHourGlass;
      FPrincipal.MtxbAso.UsuarioSQL.Clear;
      FPrincipal.MtxbAso.FMant.wTabla:='APO201';
      FPrincipal.MtxbAso.UsuarioSQL.Add(xSQL);
      FPrincipal.MtxbAso.NewQuery;
      Screen.Cursor:=crDefault;
      ShowMessage('No Existen Registros que cumplan la condición ');
    End;
  End;
end;

end.
