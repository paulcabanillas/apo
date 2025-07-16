unit APO711;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, fcButton, fcImgBtn, fcShapeBtn, ExtCtrls;

type
  TFToolCaptaAporte = class(TForm)
    pnlTool: TPanel;
    lblApeMat: TLabel;
    edtAsociado: TEdit;
    sbtnAceptar: TfcShapeBtn;
    Z2sbtnCtaInd: TfcShapeBtn;
    fcShapeBtn1: TfcShapeBtn;
    procedure sbtnAceptarClick(Sender: TObject);
    procedure Z2sbtnCtaIndClick(Sender: TObject);
    procedure fcShapeBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FToolCaptaAporte: TFToolCaptaAporte;

implementation

uses APO001, APODM, APO515;

{$R *.DFM}

procedure TFToolCaptaAporte.sbtnAceptarClick(Sender: TObject);
var
  xSQL: String;
begin
  If Length(Trim(edtAsociado.Text))>0 Then
    xSQL:='SELECT * FROM APO201 WHERE ASOAPENOM LIKE '+QuotedStr(Trim(edtAsociado.Text+'%'))
  else
    xSQL:='SELECT * FROM APO201';
  Screen.Cursor:=crHourGlass;
  Mtx.UsuarioSQL.Clear;
  Mtx.FMant.wTabla:='APO201';
  Mtx.UsuarioSQL.Add(xSQL);
  Mtx.NewQuery;
  Screen.Cursor:=crDefault;
  Exit;

    If DM1.cdsAsociados.RecordCount=0 Then
    Begin
      xSQL:='SELECT * FROM APO201 ';
      Screen.Cursor:=crHourGlass;
      Mtx.UsuarioSQL.Clear;
      Mtx.FMant.wTabla:='APO201';
      Mtx.UsuarioSQL.Add(xSQL);
      Mtx.NewQuery;
      edtAsociado.Text:='';
      edtAsociado.SetFocus;
      Screen.Cursor:=crDefault;

      ShowMessage('No Existen Registros que cumplan la condición ');
    End;
end;

procedure TFToolCaptaAporte.Z2sbtnCtaIndClick(Sender: TObject);
begin
  if not DM1.cdsAsociados.FieldByName('ASOFRESCESE').IsNull then
    if DM1.cdsAsociados.FieldByName('ASOFRESCESE').AsDateTime < StrToDate('12/01/99') then
       Raise Exception.Create('La Cta. Individual de este Asociado se calculó vía Tabla');
  try
   FRepXCtaInd := TFRepXCtaInd.Create(Self);
   FRepXCtaInd.edtAsoID.Text    := DM1.cdsAsociados.FieldByName('ASOID').AsString;
   FRepXCtaInd.edtAsociado.Text := DM1.cdsAsociados.FieldByName('ASOAPENOM').AsString;
   FRepXCtaInd.bResumen         := False ;
   FRepXCtaInd.bbtnimprimir.OnClick(FRepXCtaInd.bbtnimprimir);
  finally
   FRepXCtaInd.Free ;
  end ;
end;

procedure TFToolCaptaAporte.fcShapeBtn1Click(Sender: TObject);
begin
  if not DM1.cdsAsociados.FieldByName('ASOFRESCESE').IsNull then
    if DM1.cdsAsociados.FieldByName('ASOFRESCESE').AsDateTime < StrToDate('12/01/99') then
       Raise Exception.Create('La Cta. Individual de este Asociado se calculó vía Tabla');

  try
   FRepXCtaInd := TFRepXCtaInd.Create(Self);
   FRepXCtaInd.edtAsoID.Text    := DM1.cdsAsociados.FieldByName('ASOID').AsString;
   FRepXCtaInd.edtAsociado.Text := DM1.cdsAsociados.FieldByName('ASOAPENOM').AsString;
   FRepXCtaInd.bResumen         := True ;
   FRepXCtaInd.bbtnimprimir.OnClick(FRepXCtaInd.bbtnimprimir);
  finally
   FRepXCtaInd.Free ;
  end ;
end;

end.
