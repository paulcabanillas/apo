unit APO717;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, fcButton, fcImgBtn, fcShapeBtn, ExtCtrls;

type
  TFToolAsoCta = class(TForm)
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
  FToolAsoCta: TFToolAsoCta;

implementation

uses APO704, APODM;

{$R *.DFM}

procedure TFToolAsoCta.bbtnAceptarClick(Sender: TObject);
var
  xSQL: String;
begin
  If Length(Trim(edtAsociado.Text))>0 Then
  Begin
    xSQL:='SELECT * FROM APO201 '+
          'WHERE ASOAPENOM LIKE '+QuotedStr(Trim(edtAsociado.Text+'%'));
    Screen.Cursor:=crHourGlass;
    FToolApo.MtxCtaAso.UsuarioSQL.Clear;
    FToolApo.MtxCtaAso.FMant.wTabla:='APO201';
    FToolApo.MtxCtaAso.UsuarioSQL.Add(xSQL);
    FToolApo.MtxCtaAso.NewQuery;
    Screen.Cursor:=crDefault;
    If DM1.cdsAsociados.RecordCount=0 Then
    Begin
      xSQL:='SELECT * FROM APO201 ';
      Screen.Cursor:=crHourGlass;
      FToolApo.MtxCtaAso.UsuarioSQL.Clear;
      FToolApo.MtxCtaAso.FMant.wTabla:='APO201';
      FToolApo.MtxCtaAso.UsuarioSQL.Add(xSQL);
      FToolApo.MtxCtaAso.NewQuery;
      Screen.Cursor:=crDefault;
      ShowMessage('No Existen Registros que cumplan la condición ');
    End;
  End;

end;

end.
