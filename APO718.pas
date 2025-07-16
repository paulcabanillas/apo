unit APO718;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcButton, fcImgBtn, fcShapeBtn, StdCtrls, ExtCtrls;

type
  TFToolIngLote = class(TForm)
    pnlTool: TPanel;
    sbtnAceptar: TfcShapeBtn;
    procedure sbtnAceptarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FToolIngLote: TFToolIngLote;
  xSQL : String;

implementation

uses APO512, APODM;

{$R *.DFM}

procedure TFToolIngLote.sbtnAceptarClick(Sender: TObject);
begin
  Screen.Cursor:=crHourGlass;
  xSQL:='SELECT * FROM COB302 '+
        'WHERE REPRID='+QuotedStr(DM1.cdsDetRegGlob.FieldByName('REPRID').AsString)+' '+
        'AND UPROID='+QuotedStr(DM1.cdsDetRegGlob.FieldByName('UPROID').AsString)+' '+
        'AND RCOBANO='+QuotedStr(DM1.cdsDetRegGlob.FieldByName('RCOBANO').AsString)+' '+
        'AND RCOBMES='+QuotedStr(DM1.cdsDetRegGlob.FieldByName('RCOBMES').AsString);

  FDetOper:=TFDetOper.Create(Self);

  FDetOper.dbgDetOper.Selected.Clear;
  FDetOper.dbgDetOper.Selected.Add('RCOBANO'#9'5'#9'Año');
  FDetOper.dbgDetOper.Selected.Add('RCOBMES'#9'3'#9'Mes');
  FDetOper.dbgDetOper.Selected.Add('UPROID'#9'4'#9'Unidad~Proceso');
  FDetOper.dbgDetOper.Selected.Add('BANCOID'#9'2'#9'Id~Banco');
  FDetOper.dbgDetOper.Selected.Add('UPAGOID'#9'3'#9'Unidad~Pago');
  FDetOper.dbgDetOper.Selected.Add('FPAGOID'#9'3'#9'Id Forma~Pago');
  FDetOper.dbgDetOper.Selected.Add('RCOBNOPE'#9'7'#9'Nº~Operac.');
  //FDetOper.dbgDetOper.Selected.Add('RCOBESTADO'#9'10'#9'Estado');
  FDetOper.dbgDetOper.Selected.Add('RCOBFOPE'#9'10'#9'Fecha~Operac.');
  FDetOper.dbgDetOper.Selected.Add('REPRID'#9'5'#9'Id~Repres.');
  FDetOper.dbgDetOper.Selected.Add('REPREPENOM'#9'10'#9'Representante');
  //FDetOper.dbgDetOper.Selected.Add('FORPAGOID'#9'10'#9'Mo7nto');
  FDetOper.dbgDetOper.Selected.Add('TMONID'#9'2'#9'Tipo~Moneda');
  //FDetOper.dbgDetOper.Selected.Add('CPAGOID'#9'10'#9'2Monto');
  FDetOper.dbgDetOper.Selected.Add('CPAGOFECHA'#9'10'#9'Fecha');
  FDetOper.dbgDetOper.Selected.Add('CPAGOMTO'#9'10'#9'Pago~Monto');
  FDetOper.dbgDetOper.Selected.Add('DOCID'#9'10'#9'Id~Docum.');
  FDetOper.dbgDetOper.Selected.Add('DOCFECHA'#9'10'#9'Fecha~Docum.');
  FDetOper.dbgDetOper.Selected.Add('DOCMTO'#9'10'#9'Monto~Docum.');
  //FDetOper.dbgDetOper.Selected.Add('NRODOCDED'#9'10'#9'8Monto');
  FDetOper.dbgDetOper.Selected.Add('USUARIO'#9'10'#9'Usuario');
  FDetOper.dbgDetOper.RefreshDisplay;

  dm1.cdsReporte1.Close;
  dm1.cdsReporte1.DataRequest(xSQL);
  dm1.cdsReporte1.Open;

  FDetOper.ShowModal;
  FDetOper.Free;
end;

end.
