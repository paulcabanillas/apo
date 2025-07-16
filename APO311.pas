unit APO311;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, wwdbedit, Wwdbspin, Mask, ExtCtrls, StdCtrls, wwdblook, Wwdbdlg,
  Buttons, Wwdbigrd, Grids, Wwdbgrid, ComCtrls, DB, DBClient, ppProd,
  ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, ppBands,
  ppStrtch, ppSubRpt, ppCtrls, ppVar, ppPrnabl, ppCache, ppParameter;

type
  TFestcueapo = class(TForm)
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    pnlasocodmod: TPanel;
    measocodmod: TMaskEdit;
    Panel1: TPanel;
    measoapenomdni: TMaskEdit;
    Panel2: TPanel;
    medepdes: TMaskEdit;
    Panel3: TPanel;
    meuniprodes: TMaskEdit;
    Panel4: TPanel;
    meunipagdes: TMaskEdit;
    Panel5: TPanel;
    measodni: TMaskEdit;
    Panel6: TPanel;
    meunigesdes: TMaskEdit;
    btnprocesar: TBitBtn;
    wwDBGrid1: TwwDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cdsaportes: TClientDataSet;
    dsaportes: TDataSource;
    ppbdeestcueapo: TppBDEPipeline;
    pprestcueapo: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppLine8: TppLine;
    ppSystemVariable4: TppSystemVariable;
    ppLabel24: TppLabel;
    ppLabel27: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    pplbltitulo: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    pplasocodmod: TppLabel;
    pplasoapenomdni: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    pplblusenom: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    pplblupagonom: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    pplblupronom: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    pplblregpen: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    pplblasoresnom: TppLabel;
    pplblasofresnom: TppLabel;
    pplblasoresces: TppLabel;
    pplblasofresces: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppLabel95: TppLabel;
    ppLabel98: TppLabel;
    ppLabel192: TppLabel;
    ppLabel197: TppLabel;
    ppLabel198: TppLabel;
    ppLine47: TppLine;
    ppLine11: TppLine;
    ppLabel183: TppLabel;
    ppLabel190: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppSummaryBand8: TppSummaryBand;
    ppLine39: TppLine;
    ppLine51: TppLine;
    pplbluser: TppLabel;
    ppLabel2: TppLabel;
    pplcodpag: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    pplsitdoc: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    pplasodni: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    pplasoncta: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    pplasodir: TppLabel;
    ppLabel14: TppLabel;
    pplcenedu: TppLabel;
    ppLabel13: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText1: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    procedure FormActivate(Sender: TObject);
    procedure measocodmodChange(Sender: TObject);
    procedure measocodmodExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure limpia;
    procedure llenadatos;
    procedure btnprocesarClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Festcueapo: TFestcueapo;

implementation

uses APODM, APO314;

{$R *.dfm}





Procedure TFestcueapo.FormActivate(Sender: TObject);
Begin
  measocodmod.SetFocus;
end;


procedure TFestcueapo.limpia;
begin
  measocodmod.Text := '';
  measoapenomdni.Text := '';
  medepdes.Text := '';
  meuniprodes.Text := '';
  meunipagdes.Text := '';
  meunigesdes.Text := '';
  measodni.Text := '';
end;

procedure TFestcueapo.llenadatos;
Var xdepid:String;
begin
  measocodmod.Text := DM1.cdsAsociados.FieldByName('ASOCODMOD').AsString;
  measoapenomdni.Text := DM1.cdsAsociados.FieldByName('ASOAPENOMDNI').AsString;
  measodni.Text := DM1.cdsAsociados.FieldByName('ASODNI').AsString;
  xSql := 'SELECT USENOM, DPTOID FROM APO101 WHERE UPROID = '+QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString)+' AND UPAGOID = '+QuotedStr(DM1.cdsAsociados.FieldByname('UPAGOID').AsString)+' AND USEID = '+QuotedStr(DM1.cdsAsociados.FieldByName('USEID').AsString);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  meunigesdes.Text := DM1.cdsQry.FieldByName('USENOM').AsString;
  xdepid := DM1.cdsQry.FieldByName('DPTOID').AsString;
  xSql := 'SELECT DPTODES FROM APO158 WHERE DPTOID = '+QuotedStr(xdepid);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  medepdes.Text := DM1.cdsQry.FieldByName('DPTODES').AsString;
  xSql := 'SELECT UPRONOM FROM APO102 WHERE UPROID = '+QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  meuniprodes.Text := DM1.cdsQry.FieldByName('UPRONOM').AsString;
  xSql := 'SELECT UPAGONOM FROM APO103 WHERE UPROID = '+QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString)+' AND UPAGOID = '+QuotedStr(DM1.cdsAsociados.FieldByname('UPAGOID').AsString);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  meunipagdes.Text := DM1.cdsQry.FieldByName('UPAGONOM').AsString;
end;

procedure TFestcueapo.measocodmodChange(Sender: TObject);
begin
  If Length(Trim(meAsocodmod.Text)) = 0 Then
  Begin
    limpia;
    DM1.xFlg := 'N';
  End;
end;

procedure TFestcueapo.measocodmodExit(Sender: TObject);
begin
  DM1.xFlg := 'T';
  If DM1.xFlg = 'T' Then
  Begin
    If Length(Trim(meAsocodmod.Text))=0 Then
    Else
    Begin
      If Length(Trim(meAsocodmod.Text))>10 Then
      Begin
        MessageDlg('Codigo Modular No Puede Tener Mas De 10 Caracteres...!', mtError, [mbOk], 0);
         meAsocodmod.Text:='';
         meAsocodmod.SetFocus;
         Exit;
      End;
      meAsocodmod.Text:=Format('%.10d',[StrToInt(meAsocodmod.Text)]);
      DM1.cdsAsociados.Close;
      xSql := 'SELECT A.*, B.USENOM, C.ASOTIPDES FROM APO201 A, APO101 B, APO107 C WHERE ASOCODMOD LIKE '+QuotedStr(meAsocodmod.Text+'%')
      +' AND A.USEID = B.USEID(+) AND A.UPAGOID = B.UPAGOID(+) AND A.UPROID = B.UPROID(+)'
      +' AND A.ASOTIPID = C.ASOTIPID';
      DM1.cdsAsociados.DataRequest(xSql);
      DM1.cdsAsociados.Open;
      If DM1.cdsAsociados.RecordCount = 1 Then
      Begin
        If DM1.cdsAsociados.FieldByName('DESHABILITADO').AsString = 'S' Then
        Begin
          MessageDlg(' EL REGISTRO SE ENCUENTRA BLOQUEADO/DESHABILITADO COMUNICARSE CON EQUIPO DE COBRANZAS ', mtError, [mbOk], 0);
          Exit;
        End;
        limpia;
        llenadatos;
      End
      Else
        If DM1.cdsAsociados.RecordCount > 1 Then
        Begin
          DM1.cdsAsociados.Close;
          xSql := 'SELECT A.*, B.USENOM, C.ASOTIPDES FROM APO201 A, APO101 B, APO107 C WHERE ASOCODMOD LIKE '+QuotedStr(meAsocodmod.Text+'%')
          +' AND A.USEID = B.USEID(+) AND A.UPAGOID = B.UPAGOID(+) AND A.UPROID = B.UPROID(+)'
          +' AND A.ASOTIPID = C.ASOTIPID';
          DM1.cdsAsociados.DataRequest(xSql);
          DM1.cdsAsociados.Open;
          Try
            FBusAso := TFBusAso.create(Self);
            FBusAso.ShowModal;
          Finally
            FBusAso.Free;
          End;
          llenadatos;
        End
    Else
    Begin
      limpia;
      MessageDlg('Codigo Modular No Existe...!', mtError, [mbOk], 0);
      meAsocodmod.SetFocus;
    End;
  End;
  end;
end;

procedure TFestcueapo.SpeedButton1Click(Sender: TObject);
begin
  DM1.xFlg := 'B';
  limpia;
  Try
    FBusAso := TFBusAso.create(Self);
    FBusAso.ShowModal;
  Finally
    FBusAso.Free;
  End;
  If Length(Trim(DM1.cdsAsociados.FieldByName('ASOID').AsString)) > 0 Then
  Begin
    llenadatos;
  End;
end;

Procedure TFestcueapo.btnprocesarClick(Sender: TObject);
Var xanomes, xSql, xano, xmes, xanoini, xmesini:String;
Begin
  xanomes := DM1.StrZero(Copy(DateToStr(DM1.cdsAsociados.FieldByName('ASOFRESNOM').AsDateTime),7,4),4)+DM1.StrZero(Copy(DateToStr(DM1.cdsAsociados.FieldByName('ASOFRESNOM').AsDateTime),4,2),2);
  If DM1.cdsAsociados.FieldByName('ASOFRESNOM').AsString = '' Then
  Begin
    xanoini := '1997';
    xmesini := '01';
  End
  Else
  Begin
    If xanomes >= '199701' Then
    Begin
      xanoini := DM1.StrZero(Copy(DateToStr(date),7,4),4);
      xmesini := DM1.StrZero(Copy(DateToStr(date),4,2),2);
    End
    Else
    Begin
      xanoini := '1997';
      xmesini := '01';
    End;
  End;
  xano := DM1.StrZero(Copy(DateToStr(date),7,4),4);
  xmes := DM1.StrZero(Copy(DateToStr(date),4,2),2);
  cdsaportes.EmptyDataSet;
  cdsaportes.IndexFieldNames := 'TRANSANO;TRANSMES';
  // Tomando de la tabla de aportantes
  xSql := 'SELECT  A.APOANO, A.APOMES, D.USENOM, B.FORPAGOABR, B.TRANSFOPE, B.TRANSNOPE, B.TRANSMTO, B.TRANSMTODEV'
  +' FROM APO117 A, APO301 B, APO201 C, APO101 D WHERE B.ASOID(+) = '+QuotedStr(DM1.cdsAsociados.FieldByName('ASOID').AsString)
  +' AND C.ASOID = '+QuotedStr(DM1.cdsAsociados.FieldByName('ASOID').AsString)
  +' AND A.APOANO = B.TRANSANO(+) AND A.APOMES = B.TRANSMES(+) AND C.USEID = D.USEID AND C.UPAGOID = D.UPAGOID AND C.UPROID = D.UPROID'
  +' AND A.APOANO||APOMES >= '+QuotedStr(xanoini+xmesini)
  +' AND A.APOANO||APOMES <= '+QuotedStr(xano+xmes)
  +' ORDER BY APOANO, APOMES';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  While Not DM1.cdsQry.Eof Do
  Begin
    cdsaportes.Append;
    cdsaportes.FieldByName('TRANSANO').AsString := DM1.cdsQry.FieldByName('APOANO').AsString;
    cdsaportes.FieldByName('DESMES').AsString   := UpperCase(DM1.NombreMes(DM1.cdsQry.FieldByName('APOMES').AsString));
    cdsaportes.FieldByName('TRANSMES').AsString := DM1.cdsQry.FieldByName('APOMES').AsString;
    cdsaportes.FieldByName('DESUSE').AsString   := DM1.cdsQry.FieldByName('USENOM').AsString;
    cdsaportes.FieldByName('FORPAG').AsString   := DM1.cdsQry.FieldByName('FORPAGOABR').AsString;
    cdsaportes.FieldByName('FECOPE').AsString   := DM1.cdsQry.FieldByName('TRANSFOPE').AsString;
    cdsaportes.FieldByName('NUMOPE').AsString   := DM1.cdsQry.FieldByName('TRANSNOPE').AsString;
    cdsaportes.FieldByName('MONAPO').AsFloat    := DM1.cdsQry.FieldByName('TRANSMTO').AsFloat;
    cdsaportes.FieldByName('MONDEV').AsFloat    := DM1.cdsQry.FieldByName('TRANSMTODEV').AsFloat;
    cdsaportes.FieldByName('MONTOT').AsFloat    := DM1.cdsQry.FieldByName('TRANSMTO').AsFloat-DM1.cdsQry.FieldByName('TRANSMTODEV').AsFloat;
    cdsaportes.Post;
    DM1.cdsQry.Next;
  End;
  TNumericField(cdsaportes.FieldByName('MONAPO')).DisplayFormat := '##,###.00';
  TNumericField(cdsaportes.FieldByName('MONDEV')).DisplayFormat := '##,###.00';
  TNumericField(cdsaportes.FieldByName('MONTOT')).DisplayFormat := '##,###.00';
  // Tomando de la tabla de no aportantes
  cdsaportes.First;
  While Not cdsaportes.Eof Do
  Begin
    If cdsaportes.FieldByName('MONAPO').AsFloat = 0 Then
    Begin
      xSql := 'SELECT B.DESMOTNOAPO, A.COMMOTNOAPO FROM APO_ASO_NO_APO A, APO_DES_NO_APO B'
      +' WHERE ASOID = '+QuotedStr(DM1.cdsAsociados.FieldByName('ASOID').AsString)+' AND TRANSANO = '+QuotedStr(cdsaportes.FieldByName('TRANSANO').AsString)+' AND TRANSMES = '+QuotedStr(cdsaportes.FieldByName('TRANSMES').AsString)
      +' AND A.CODMOTNOAPO = B.CODMOTNOAPO';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      If DM1.cdsQry.RecordCount > 0 Then
      Begin
        cdsaportes.Edit;
        cdsaportes.FieldByName('DESMOTNOAPO').AsString    := DM1.cdsQry.FieldByName('DESMOTNOAPO').AsString;
        cdsaportes.FieldByName('COMMOTNOAPO').AsString := DM1.cdsQry.FieldByName('COMMOTNOAPO').AsString;
        cdsaportes.Post;        
      End;
    End;
    cdsaportes.Next;
  End;
End;

Procedure TFestcueapo.BitBtn2Click(Sender: TObject);
Begin
  Festcueapo.Close;
End;

procedure TFestcueapo.BitBtn1Click(Sender: TObject);
Var xSql:String;
begin
  pplasodni.Caption       := DM1.cdsAsociados.FieldByName('ASODNI').AsString;
  pplasocodmod.Caption    := DM1.cdsAsociados.FieldByName('ASOCODMOD').AsString;
  pplasoapenomdni.Caption := DM1.cdsAsociados.FieldByName('ASOAPENOMDNI').AsString;
  pplasoncta.Caption      := DM1.cdsAsociados.FieldByName('ASONCTA').AsString;
  pplcodpag.Caption       := DM1.cdsAsociados.FieldByName('ASOCODPAGO').AsString;
  pplblasoresnom.Caption  := DM1.cdsAsociados.FieldByName('ASORESNOM').AsString;
  pplblasofresnom.Caption := DM1.cdsAsociados.FieldByName('ASOFRESNOM').AsString;
  pplblasoresces.Caption  := DM1.cdsAsociados.FieldByName('ASORESCESE').AsString;
  pplblasofresces.Caption := DM1.cdsAsociados.FieldByName('ASOFRESCESE').AsString;
  pplasodir.Caption       := DM1.cdsAsociados.FieldByName('ASODIR').AsString;
  pplcenedu.Caption       := DM1.cdsAsociados.FieldByName('ASODESLAB').AsString;
  xSql := 'SELECT ASOTIPID||''-''||ASOTIPDES ASOTIPDES FROM APO107 WHERE ASOTIPID ='+QuotedStr(DM1.cdsAsociados.FieldByName('ASOTIPID').AsString);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  pplsitdoc.Caption := DM1.cdsQry.FieldByName('ASOTIPDES').AsString;
  xSql := 'SELECT USENOM FROM APO101 WHERE UPROID = '+QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString)+' AND UPAGOID = '+QuotedStr(DM1.cdsAsociados.FieldByName('UPAGOID').AsString)+' AND USEID = '+QuotedStr(DM1.cdsAsociados.FieldByName('USEID').AsString);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  pplblusenom.Caption := DM1.cdsQry.FieldByName('USENOM').AsString;
  xSql := 'SELECT UPRONOM FROM APO102 WHERE UPROID = '+QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  pplblupronom.Caption := DM1.cdsQry.FieldByName('UPRONOM').AsString;
  xSql := 'SELECT UPAGONOM FROM APO103 WHERE UPROID = '+QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString)+' AND UPAGOID = '+QuotedStr(DM1.cdsAsociados.FieldByName('UPAGOID').AsString);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  pplblupagonom.Caption := DM1.cdsQry.FieldByName('UPAGONOM').AsString;
  xSql := 'USERID = '+QuotedStr(DM1.wUsuario);
  pplbluser.Caption :=  'IMPRESO POR : '+UpperCase(DM1.DisplayDescrip('prvTGE','TGE006','USERNOM',xSql,'USERNOM'));
  pplbltitulo.Caption := 'ESTADO DE CUENTA DE APORTES AL '+DateToStr(date);
  xSql := 'SELECT REGPENDES FROM APO105 WHERE REGPENID ='+QuotedStr(DM1.cdsAsociados.FieldByName('REGPENID').AsString);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  pplblregpen.Caption := DM1.cdsQry.FieldByName('REGPENDES').AsString;
  pprestcueapo.Print;
end;

procedure TFestcueapo.ppDetailBand1BeforePrint(Sender: TObject);
begin
  If (cdsaportes.FieldByName('MONTOT').AsFloat = 0) And (cdsaportes.FieldByName('MONDEV').AsFloat = 0) And (cdsaportes.FieldByName('MONAPO').AsFloat = 0) Then
  Begin
    ppDBText4.Visible := False;
    ppDBText1.Visible := False;
    ppDBText5.Visible := False;
    ppDBText6.Visible := False;
    ppDBText7.Visible := False;
    ppDBText8.Visible := False;
    ppDBText9.Visible := False;
    ppDBText10.Visible := True;
    ppDBText11.Visible := True;
  End
  Else
  Begin
    ppDBText4.Visible := True;
    ppDBText1.Visible := True;
    ppDBText5.Visible := True;
    ppDBText6.Visible := True;
    ppDBText7.Visible := True;
    ppDBText8.Visible := True;
    ppDBText9.Visible := True;
    ppDBText10.Visible := False;
    ppDBText11.Visible := False;
  End;
end;

end.
