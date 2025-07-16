unit APO715;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcButton, fcImgBtn, fcShapeBtn, StdCtrls, ExtCtrls;

type
  TFAsoCtaInd = class(TForm)
    pnlTool: TPanel;
    lblApeMat: TLabel;
    edtAsociado: TEdit;
    sbtnAceptar: TfcShapeBtn;
    btnCtaUse: TfcShapeBtn;
    procedure sbtnAceptarClick(Sender: TObject);
    procedure btnCtaUseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAsoCtaInd: TFAsoCtaInd;

implementation

uses APO001, APODM, APO202;

{$R *.DFM}

procedure TFAsoCtaInd.sbtnAceptarClick(Sender: TObject);
var
  xSQL: String;
begin
  if Length(Trim(edtAsociado.Text))>0 Then
    xSQL:='SELECT * FROM APO201 WHERE ASOAPENOM LIKE '+QuotedStr(Trim(edtAsociado.Text+'%'))
  else
    xSQL:='SELECT * FROM APO201';

  Screen.Cursor:=crHourGlass;
  FPrincipal.MtxCI.UsuarioSQL.Clear;
  FPrincipal.MtxCI.FMant.wTabla:='APO201';
  FPrincipal.MtxCI.UsuarioSQL.Add(xSQL);
  FPrincipal.MtxCI.NewQuery;
  Screen.Cursor:=crDefault;

  {If DM1.cdsAsociados.RecordCount=0 Then
  Begin
    xSQL:='SELECT * FROM APO201 ';
    Screen.Cursor:=crHourGlass;
    FPrincipal.MtxCI.UsuarioSQL.Clear;
    FPrincipal.MtxCI.FMant.wTabla:='APO201';
    FPrincipal.MtxCI.UsuarioSQL.Add(xSQL);
    FPrincipal.MtxCI.NewQuery;
    edtAsociado.Text:='';
    edtAsociado.SetFocus;
    Screen.Cursor:=crDefault;

    ShowMessage('No Existen Registros que cumplan la condición ');
  End;}
end;

procedure TFAsoCtaInd.btnCtaUseClick(Sender: TObject);
begin
  FGeneraCtaInd:=TFGeneraCtaInd.Create(Self);
  FGeneraCtaInd.ShowModal;
end;

end.
