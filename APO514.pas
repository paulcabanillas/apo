unit APO514;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcButton, fcImgBtn, fcShapeBtn, wwdbedit, wwdblook, Wwdbdlg, StdCtrls,
  Mask, Wwdbspin, ExtCtrls, ppProd, ppClass, ppReport, ppComm, ppRelatv,
  ppTypes, ppCache, ppDB, ppDBPipe, ppViewr, ppBands, ppVar, ppPrnabl, ppCtrls;

type
  TFRepResCobEfec = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    Label2: TLabel;
    speAno: TwwDBSpinEdit;
    speMes: TwwDBSpinEdit;
    Label3: TLabel;
    Label1: TLabel;
    dbeUPro: TwwDBEdit;
    bbtnImprimir: TfcShapeBtn;
    bbtnCancela: TfcShapeBtn;
    ppdbResDctos: TppDBPipeline;
    ppRepResDctos: TppReport;
    pplblUSE: TppLabel;
    ppLabel4: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel5: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel6: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    pplblTitulo: TppLabel;
    dblcdUPro: TwwDBLookupComboDlg;
    ppLine1: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLine2: TppLine;
    ppDBCalc1: TppDBCalc;
    ppLabel11: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel12: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppLine3: TppLine;
    ppLine4: TppLine;
    procedure ppRepResDctosPreviewFormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bbtnImprimirClick(Sender: TObject);
    procedure dblcdUProExit(Sender: TObject);
    procedure bbtnCancelaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure speAnoKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRepResCobEfec: TFRepResCobEfec;

implementation

uses APODM;

{$R *.DFM}

procedure TFRepResCobEfec.ppRepResDctosPreviewFormCreate(Sender: TObject);
begin
   ppRepResDctos.PreviewForm.WindowState := wsMaximized;
   TppViewer(ppRepResDctos.PreviewForm.Viewer).ZoomSetting := zsPageWidth;
end;

procedure TFRepResCobEfec.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #13 Then
    begin
     Key := #0;
     Perform(CM_DialogKey, VK_TAB, 0);
    end;
end;

procedure TFRepResCobEfec.bbtnImprimirClick(Sender: TObject);
var
   x10 : Integer;
   xSQL : String;
begin
   Screen.Cursor := crHourGlass;
{   xSQL := 'Select Count(A.USEID) TOT_USES, A.USEID, A.UPROID, A.UPAGOID,'
          +' SUM(NVL(A.TRANSMTO,0)) TRANSMTO, B.USENOM,'
          +' Cast(''9999'' As Decimal(15,2)) DSCTADO,'
          +' SUM(NVL(C.CREMTO,0)) CREMTO,'
          +' Cast(''0'' As Decimal(15,2)) CREMTOCOB'
          +' From APO301 A, APO101 B, CRE302 C'
          +' Where A.UPROID ='+QuotedStr(dblcdUPro.Text)
          +' And A.USEID = B.USEID(+) And A.UPAGOID = B.UPAGOID(+) And A.UPROID = B.UPROID(+)'
          +' And A.USEID = C.USEID(+) And A.UPAGOID = C.UPAGOID(+) And A.UPROID = C.UPROID(+)'
          +' And A.APOSEC = 199701 And C.CREANO(+) = '+QuotedStr(speAno.Text)
          +' And C.CREMES(+) = '+QuotedStr(DM1.StrZero(speMes.Text, 2))
          +' Group By A.USEID, A.UPROID, A.UPAGOID, B.USENOM, C.CREMTO }

   xSQL := 'Select Count(A.USEID) TOT_USES, A.USEID, A.UPROID, A.UPAGOID,'
          +' SUM(NVL(A.TRANSMTO,0)) TRANSMTO, B.USENOM,'
          +' Cast(''9999'' As Decimal(15,2)) DSCTADO,'
          +' Cast(''0'' As Decimal(15,2)) CREMTO,'
          +' Cast(''0'' As Decimal(15,2)) CREMTOCOB'
          +' From APO301 A, APO101 B'
          +' Where A.UPROID ='+QuotedStr(dblcdUPro.Text)
          +' And A.UPROID = B.UPROID(+) And A.UPAGOID = B.UPAGOID(+) And A.USEID = B.USEID(+)'
          +' And A.APOSEC = '+QuotedStr(speAno.Text+DM1.StrZero(speMes.Text, 2))
          +' Group By A.UPROID, A.UPAGOID, A.USEID, B.USENOM';

   DM1.cdsReporte1.Filter   := '';
   DM1.cdsReporte1.Filtered := False;
   DM1.cdsReporte1.IndexFieldNames := '';
   DM1.cdsReporte1.Close;
   DM1.cdsReporte1.DataRequest(xSQL);
   DM1.cdsReporte1.Open;
   DM1.cdsReporte1.IndexFieldNames := 'USEID; UPROID; UPAGOID';

//Para el Monto de ENVIADO
   xSQL := 'Select USEID, UPROID, UPAGOID, SUM(NVL(CREMTO,0)) CREMTO From CRE302'
          +' Where CREANO = '+QuotedStr(speAno.Text)
          +' And CREMES = '+QuotedStr(DM1.StrZero(speMes.Text, 2))
          +' And UPROID = '+QuotedStr(dblcdUPro.Text)
          +' And CREINFO ='+QuotedStr('S')
          +' Group By UPROID, UPAGOID, USEID';

   DM1.cdsReporte2.Filter   := '';
   DM1.cdsReporte2.Filtered := False;
   DM1.cdsReporte2.IndexFieldNames := '';
   DM1.cdsReporte2.Close;
   DM1.cdsReporte2.DataRequest(xSQL);
   DM1.cdsReporte2.Open;

//Para el Monto de COBRADO
   xSQL := 'Select USEID, UPROID, UPAGOID, SUM(NVL(CREMTOCOB,0)) CREMTOCOB From CRE310'
          +' Where CREANO = '+QuotedStr(speAno.Text)
          +' And CREMES = '+QuotedStr(DM1.StrZero(speMes.Text, 2))
          +' And UPROID = '+QuotedStr(dblcdUPro.Text)
          +' Group By UPROID, UPAGOID, USEID';

   DM1.cdsReporte3.Filter   := '';
   DM1.cdsReporte3.Filtered := False;
   DM1.cdsReporte3.IndexFieldNames := '';
   DM1.cdsReporte3.Close;
   DM1.cdsReporte3.DataRequest(xSQL);
   DM1.cdsReporte3.Open;

   DM1.cdsReporte2.First;
   While Not DM1.cdsReporte2.EOF do
    begin
     DM1.cdsReporte1.SetKey;
     DM1.cdsReporte1.FieldByName('USEID').AsString   := DM1.cdsReporte2.FieldByName('USEID').AsString;
     DM1.cdsReporte1.FieldByName('UPROID').AsString  := DM1.cdsReporte2.FieldByName('UPROID').AsString;
     DM1.cdsReporte1.FieldByName('UPAGOID').AsString := DM1.cdsReporte2.FieldByName('UPAGOID').AsString;
     If DM1.cdsReporte1.GotoKey Then
      begin
       DM1.cdsReporte1.Edit;
       DM1.cdsReporte1.FieldByName('CREMTO').AsFloat := DM1.cdsReporte2.FieldByName('CREMTO').AsFloat;
      end;
     DM1.cdsReporte2.Next;
    end;

   DM1.cdsReporte3.First;
   While Not DM1.cdsReporte3.EOF do
    begin
     DM1.cdsReporte1.SetKey;
     DM1.cdsReporte1.FieldByName('USEID').AsString   := DM1.cdsReporte3.FieldByName('USEID').AsString;
     DM1.cdsReporte1.FieldByName('UPROID').AsString  := DM1.cdsReporte3.FieldByName('UPROID').AsString;
     DM1.cdsReporte1.FieldByName('UPAGOID').AsString := DM1.cdsReporte3.FieldByName('UPAGOID').AsString;
     If DM1.cdsReporte1.GotoKey Then
      begin
       DM1.cdsReporte1.Edit;
       DM1.cdsReporte1.FieldByName('CREMTOCOB').AsFloat := DM1.cdsReporte3.FieldByName('CREMTOCOB').AsFloat;
      end;
     DM1.cdsReporte3.Next;
    end;

   DM1.cdsReporte1.First;
   While Not DM1.cdsReporte1.EOF do
    begin
     DM1.cdsReporte1.Edit;
     DM1.cdsReporte1.FieldByName('DSCTADO').AsFloat := DM1.cdsReporte1.FieldByName('TRANSMTO').AsFloat +
                                                       DM1.cdsReporte1.FieldByName('CREMTOCOB').AsFloat;
     DM1.cdsReporte1.Next;
    end;

   ppRepResDctos.Template.FileName  := wRutaRpt+'\Resumen Descuentos Efec.rtm';
   ppRepResDctos.Template.LoadFromFile;
   pplblTitulo.Caption := 'RESUMEN DE DESCUENTOS EFECTUADOS '+dblcdUPro.Text+'-'+DM1.StrZero(speMes.Text, 2)+'-'+speAno.Text;
   pplblUSE.Caption    := dbeUPro.Text;
   ppRepResDctos.Print;
   ppRepResDctos.Stop;
   Screen.Cursor := crDefault;

   x10 := Self.ComponentCount - 1;
   While x10 >= 0 do
    begin
     If Self.Components[x10].ClassName = 'TppGroup' Then
      begin
       Self.Components[x10].Free;
      end;
     x10 := x10-1;
    end;
end;

procedure TFRepResCobEfec.dblcdUProExit(Sender: TObject);
var
   xWhere : String;
begin
   xWhere := 'UPROID ='+QuotedStr(dblcdUPro.Text);
   dbeUPro.Text := DM1.DisplayDescrip('prvSQL', 'APO102', 'UPRONOM', xWhere, 'UPRONOM');
end;

procedure TFRepResCobEfec.bbtnCancelaClick(Sender: TObject);
begin
   Close;
end;

procedure TFRepResCobEfec.FormActivate(Sender: TObject);
var
   Present: TDateTime;
   nYear, nMonth, nDay : word;
begin
   Present := now;
   DecodeDate(present, nYear, nMonth, nDay);
   speAno.Value := nYear;
   speMes.Value := nMonth;
   If Length(speMes.Text) = 1 Then
    begin
     speMes.Text := '0'+speMes.Text;
    end;
   speAno.SetFocus;
end;

procedure TFRepResCobEfec.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DM1.cdsReporte1.Filter   := '';
   DM1.cdsReporte1.Filtered := False;
   DM1.cdsReporte1.IndexFieldNames := '';
   DM1.cdsReporte1.Close;
   DM1.cdsReporte2.Filter   := '';
   DM1.cdsReporte2.Filtered := False;
   DM1.cdsReporte2.IndexFieldNames := '';
   DM1.cdsReporte2.Close;
   DM1.cdsReporte3.Filter   := '';
   DM1.cdsReporte3.Filtered := False;
   DM1.cdsReporte3.IndexFieldNames := '';
   DM1.cdsReporte3.Close;
end;

procedure TFRepResCobEfec.speAnoKeyPress(Sender: TObject; var Key: Char);
begin
   If Key In [' ', 'A'..'Z', 'a'..'z',
              '°', '|', '¬', '!', '"', '#', '$', '%', '&', '/', '(', ')',
              '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '[',
              ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''',
              '.', '-', '_'] Then
    Key := #0;
end;

end.
