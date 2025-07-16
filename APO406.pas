unit APO406;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, ppEndUsr, ppProd,
  ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ExtCtrls, ppBands,
  ppCache, ppPrnabl, ppCtrls, ppVar, ppParameter;

type
  TFContaIncons = class(TForm)
    Panel1: TPanel;
    dbgResultado: TwwDBGrid;
    BitBtn1: TBitBtn;
    ppdb1: TppDBPipeline;
    ppr1: TppReport;
    ppd1: TppDesigner;
    bbtnVerifica: TBitBtn;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel5: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel4: TppLabel;
    ppDBText8: TppDBText;
    ppLabel11: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine3: TppLine;
    ppDBCalc1: TppDBCalc;
    ppLabel10: TppLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure bbtnVerificaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FContaIncons: TFContaIncons;

implementation

{$R *.dfm}

USES APODM;

procedure TFContaIncons.BitBtn1Click(Sender: TObject);
begin
   Close;
end;

procedure TFContaIncons.bbtnVerificaClick(Sender: TObject);
begin
   ppdb1.DataSource :=nil;
   ppr1.DataPipeline:=nil;
//   ppr1.Template.FileName:='ApoVerifica.rtm';
//   ppr1.Template.LoadFromFile;
   ppdb1.DataSource :=DM1.dsQry;
   ppr1.DataPipeline:=ppdb1;
   ppr1.Print;
   //ppd1.ShowModal;
   ppdb1.DataSource :=nil;
   ppr1.DataPipeline:=nil;
end;

end.
