unit APO712;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcButton, fcImgBtn, fcShapeBtn, StdCtrls, ExtCtrls;

type
  TFPToolCtaInd = class(TForm)
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
  FPToolCtaInd: TFPToolCtaInd;

implementation

uses APO001, APODM;

{$R *.DFM}

procedure TFPToolCtaInd.sbtnAceptarClick(Sender: TObject);
var
  xSQL: String;
begin
  If Length(Trim(edtAsociado.Text))>0 Then
  Begin
    xSQL:='SELECT * FROM APO201 '+
          'WHERE ASOAPENOM LIKE '+QuotedStr(Trim(edtAsociado.Text+'%'));
    Screen.Cursor:=crHourGlass;
    FPrincipal.MtxCI.UsuarioSQL.Clear;
    FPrincipal.MtxCI.FMant.wTabla:='APO201';
    FPrincipal.MtxCI.UsuarioSQL.Add(xSQL);
    FPrincipal.MtxCI.NewQuery;
    Screen.Cursor:=crDefault;

    If DM1.cdsAsociados.RecordCount=0 Then
    Begin
      xSQL:='SELECT * FROM APO201 ';
      Screen.Cursor:=crHourGlass;
      FPrincipal.MtxCI.UsuarioSQL.Clear;
      FPrincipal.MtxCI.FMant.wTabla:='APO201';
      FPrincipal.MtxCI.UsuarioSQL.Add(xSQL);
      FPrincipal.MtxCI.NewQuery;
      Screen.Cursor:=crDefault;

      ShowMessage('No Existen Registros que cumplan la condición ');
    End;

 End;
end;

end.
