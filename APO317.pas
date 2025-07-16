unit APO317;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, ExtCtrls, wwdblook, Wwdbdlg, StdCtrls, wwdbdatetimepicker,
  Buttons, Grids, Wwdbigrd, Wwdbgrid, ppCtrls, ppBands, ppClass, ppVar,
  ppPrnabl, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  DBGrids;

type
  TFapoefe = class(TForm)
    gbselran: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    dbdtpFechaI: TwwDBDateTimePicker;
    dbdtpFechaF: TwwDBDateTimePicker;
    rgSeleccion: TRadioGroup;
    gbparsel: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    dblcdidedep: TwwDBLookupComboDlg;
    Panel2: TPanel;
    medesdep: TMaskEdit;
    dblcdunipro: TwwDBLookupComboDlg;
    Panel3: TPanel;
    medesunipro: TMaskEdit;
    dblcdunipag: TwwDBLookupComboDlg;
    Panel4: TPanel;
    medesunipag: TMaskEdit;
    dblcdideuse: TwwDBLookupComboDlg;
    Panel5: TPanel;
    medesuniges: TMaskEdit;
    wwDBGrid1: TwwDBGrid;
    btnprocesar: TBitBtn;
    Label3: TLabel;
    dblcdforpag: TwwDBLookupComboDlg;
    Panel1: TPanel;
    medesforpag: TMaskEdit;
    rgestadistico: TRadioGroup;
    btnimprimir: TBitBtn;
    btncerrar: TBitBtn;
    ppdbreportes: TppDBPipeline;
    pprreporte03: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppShape10: TppShape;
    ppShape11: TppShape;
    ppShape12: TppShape;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppltitulosec03: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel15: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLabel17: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLine1: TppLine;
    pplimpresopor03: TppLabel;
    ppLine2: TppLine;
    pprreporte04: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppShape13: TppShape;
    ppShape14: TppShape;
    ppShape15: TppShape;
    ppLabel9: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppltitulosec04: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable9: TppSystemVariable;
    ppLabel34: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand3: TppSummaryBand;
    ppLabel35: TppLabel;
    ppLine3: TppLine;
    pplimpresopor04: TppLabel;
    ppLine4: TppLine;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBCalc5: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    procedure FormActivate(Sender: TObject);
    procedure dblcdidedepChange(Sender: TObject);
    procedure dblcdidedepExit(Sender: TObject);
    procedure dblcduniproChange(Sender: TObject);
    procedure dblcduniproExit(Sender: TObject);
    procedure dblcdunipagChange(Sender: TObject);
    procedure dblcdunipagExit(Sender: TObject);
    procedure dblcdideuseChange(Sender: TObject);
    procedure dblcdideuseExit(Sender: TObject);
    procedure limpiadepartamento;
    procedure limpiaunidaddeproceso;
    procedure limpiaunidaddepago;
    procedure limpiaunidaddegestion;
    procedure btnprocesarClick(Sender: TObject);
    procedure rgSeleccionClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dblcdforpagChange(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
    procedure btncerrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fapoefe: TFapoefe;

implementation

uses APODM;

{$R *.dfm}

Procedure TFapoefe.FormActivate(Sender: TObject);
Begin
  xSql := 'SELECT FORPAGODES, FORPAGOID FROM COB101 WHERE'
  +' FORPAGOID IN (''01'',''02'',''03'',''05'',''09'', ''22'') ORDER BY FORPAGOID';
  DM1.cdsFormaPago.Close;
  DM1.cdsFormaPago.DataRequest(xSql);
  DM1.cdsFormaPago.Open;
  dblcdforpag.Selected.Clear;
  dblcdforpag.Selected.Add('FORPAGOID'#9'3'#9'Código'#9#9);
  dblcdforpag.Selected.Add('FORPAGODES'#9'30'#9'Descripción'#9#9);

  xSql := 'SELECT DPTOID, DPTODES FROM APO158';
  DM1.cdsDpto.Close;
  DM1.cdsDpto.DataRequest(xSql);
  DM1.cdsDpto.Open;
  dblcdidedep.Selected.Clear;
  dblcdidedep.Selected.Add('DPTOID'#9'2'#9'Código'#9#9);
  dblcdidedep.Selected.Add('DPTODES'#9'30'#9'Descripción'#9#9);

  rgSeleccion.Visible := True;
  rgestadistico.Visible := False;


End;

Procedure TFapoefe.dblcdidedepChange(Sender: TObject);
Var xSql:String;
Begin
  If Trim(dblcdidedep.Text) = '' Then limpiadepartamento
  Else
  Begin
    If Length(Trim(dblcdidedep.Text)) = 2 then
    Begin
      If DM1.cdsDpto.Locate('DPTOID', dblcdidedep.Text, []) Then
      Begin
        medesdep.Text := DM1.cdsDpto.FieldByName('DPTODES').AsString;
        xSql := 'SELECT UPROID, UPRONOM FROM APO102 WHERE DPTOID = '+QuotedStr(dblcdidedep.Text);
        DM1.cdsUPro.Close;
        DM1.cdsUPro.DataRequest(xSql);
        DM1.cdsUPro.Open;
        dblcdunipro.Selected.Clear;
        dblcdunipro.Selected.Add('UPROID'#9'3'#9'Código'#9#9);
        dblcdunipro.Selected.Add('UPRONOM'#9'30'#9'Descripción'#9#9);
      End
      Else
      Begin
        MessageDlg('Código no Valido', mtInformation, [mbOk], 0);
        limpiadepartamento;
      End;
    End;
  End;
end;

procedure TFapoefe.dblcdidedepExit(Sender: TObject);
begin
  If Length(Trim(dblcdidedep.Text)) <> 2 then limpiadepartamento;
end;

procedure TFapoefe.dblcduniproChange(Sender: TObject);
begin
  If Trim(dblcdunipro.Text) = '' Then limpiaunidaddeproceso
  Else
  Begin
    If Length(Trim(dblcdunipro.Text)) = 3 then
    Begin
      If DM1.cdsUPro.Locate('UPROID', dblcdunipro.Text, []) Then
      Begin
        medesunipro.Text := DM1.cdsUPro.FieldByName('UPRONOM').AsString;
        xSql := 'SELECT UPAGOID, UPAGONOM FROM APO103 WHERE UPROID = '+QuotedStr(dblcdunipro.Text);
        DM1.cdsUPago.Close;
        DM1.cdsUPago.DataRequest(xSql);
        DM1.cdsUPago.Open;
        dblcdunipag.Selected.Clear;
        dblcdunipag.Selected.Add('UPAGOID'#9'3'#9'Código'#9#9);
        dblcdunipag.Selected.Add('UPAGONOM'#9'30'#9'Descripción'#9#9);
      End
      Else
      Begin
        MessageDlg('Código no Valido', mtInformation, [mbOk], 0);
        limpiaunidaddeproceso;
      End;
    End;
  End;
end;

procedure TFapoefe.dblcduniproExit(Sender: TObject);
begin
  If Length(Trim(dblcdunipro.Text)) <> 3 then limpiaunidaddeproceso;
end;

procedure TFapoefe.dblcdunipagChange(Sender: TObject);
begin
  If Trim(dblcdunipag.Text) = '' Then limpiaunidaddepago
  Else
  Begin
    If Length(Trim(dblcdunipag.Text)) = 2 then
    Begin
      If DM1.cdsUPago.Locate('UPAGOID', dblcdunipag.Text, []) Then
      Begin
        medesunipag.Text := DM1.cdsUPago.FieldByName('UPAGONOM').AsString;
        xSql := 'SELECT USEID, USENOM FROM APO101 WHERE UPROID = '+QuotedStr(dblcdunipro.Text)+' AND UPAGOID = '+QuotedStr(dblcdunipag.Text);
        DM1.cdsUse.Close;
        DM1.cdsUse.DataRequest(xSql);
        DM1.cdsUse.Open;
        dblcdideuse.Selected.Clear;
        dblcdideuse.Selected.Add('USEID'#9'3'#9'Código'#9#9);
        dblcdideuse.Selected.Add('USENOM'#9'30'#9'Descripción'#9#9);
      End
      Else
      Begin
        MessageDlg('Código no Valido', mtInformation, [mbOk], 0);
        limpiaunidaddepago;
      End;
    End;
  End;
end;

procedure TFapoefe.dblcdunipagExit(Sender: TObject);
begin
  If Length(Trim(dblcdunipag.Text)) <> 2 then limpiaunidaddepago;
end;

procedure TFapoefe.dblcdideuseChange(Sender: TObject);
begin
  If Trim(dblcdideuse.Text) = '' Then limpiaunidaddegestion
  Else
  Begin
    If Length(Trim(dblcdideuse.Text)) = 2 then
    Begin
      If DM1.cdsUse.Locate('USEID', dblcdideuse.Text, []) Then
        medesuniges.Text := DM1.cdsUse.FieldByName('USENOM').AsString
      Else
      Begin
        MessageDlg('Código no Valido', mtInformation, [mbOk], 0);
        limpiaunidaddegestion;
      End;
    End;
  End;
end;

procedure TFapoefe.dblcdideuseExit(Sender: TObject);
begin
  If Length(Trim(dblcdideuse.Text)) <> 2 then limpiaunidaddegestion;
end;

procedure TFapoefe.limpiadepartamento;
begin
  // Limpia departamento
  dblcdidedep.Text := '';
  medesdep.Text := '';
  // Limpiando unidad de proceso
  dblcdunipro.Text := '';
  medesunipro.Text := '';
  DM1.cdsUPro.Close;
  // Limpiando unidad de pago
  dblcdunipag.Text := '';
  medesunipag.Text := '';
  DM1.cdsUPago.Close;
  // Limpiando unidad de gestion
  dblcdideuse.Text := '';
  medesuniges.Text := '';
  DM1.cdsUse.Close;
end;

procedure TFapoefe.limpiaunidaddeproceso;
begin
  // limpia unidad de proceso
  dblcdunipro.Text := '';
  medesunipro.Text := '';
  // Limpiando unidad de pago
  dblcdunipag.Text := '';
  medesunipag.Text := '';
  DM1.cdsUPago.Close;
  // Limpiando unidad de gestion
  dblcdideuse.Text := '';
  medesuniges.Text := '';
  DM1.cdsUse.Close;
end;

procedure TFapoefe.limpiaunidaddepago;
begin
  // limpia unidad de pago
  dblcdunipag.Text := '';
  medesunipag.Text := '';
  // Limpiando unidad de gestion
  dblcdideuse.Text := '';
  medesuniges.Text := '';
  DM1.cdsUse.Close;
end;

procedure TFapoefe.limpiaunidaddegestion;
begin
  // limpia unidad de gestion
  dblcdideuse.Text := '';
  medesuniges.Text := '';
end;

procedure TFapoefe.btnprocesarClick(Sender: TObject);
Var xSql:String;
begin
  // Detallado
  If rgSeleccion.ItemIndex = 0 Then
  Begin
    xSql := 'SELECT A.FORPAGOID, G.FORPAGODES, A.DPTOID, C.DPTODES, A.UPROID, D.UPRONOM, A.UPAGOID, E.UPAGONOM, A.USEID, F.USENOM,'
    +' B.ASOID, B.ASOCODMOD, B.ASOAPENOMDNI, A.TRANSNOPE, A.TRANSFOPE, A.USUARIO, A.TRANSANO||''/''||A.TRANSMES ANOMES, A.TRANSMTO'
    +' FROM APO301 A, APO201 B, APO158 C, APO102 D, APO103 E, APO101 F, COB101 G'
    +' WHERE A.TRANSFOPE >= '+QuotedStr(dbdtpFechaI.Text)+' AND A.TRANSFOPE <= '+QuotedStr(dbdtpFechaF.Text);
    If Trim(dblcdforpag.Text) <> '' Then  xSql := xSql + ' AND A.FORPAGOID = '+QuotedStr(dblcdforpag.Text);
    If Trim(dblcdidedep.Text) <> '' Then  xSql := xSql + ' AND A.DPTOID = '+QuotedStr(dblcdidedep.Text);
    If Trim(dblcdunipro.Text) <> '' Then  xSql := xSql + ' AND A.UPROID = '+QuotedStr(dblcdunipro.Text);
    If Trim(dblcdunipag.Text) <> '' Then  xSql := xSql + ' AND A.UPAGOID = '+QuotedStr(dblcdunipag.Text);
    If Trim(dblcdideuse.Text) <> '' Then  xSql := xSql + ' AND A.UPAGOID = '+QuotedStr(dblcdideuse.Text);
    xSql := xSql + ' AND A.ASOID = B.ASOID  AND A.FORPAGOID= G.FORPAGOID AND A.DPTOID = C.DPTOID AND A.UPROID = D.UPROID'
    +' AND A.UPROID = E.UPROID AND A.UPAGOID = E.UPAGOID AND A.UPROID = F.UPROID AND A.UPAGOID = F.UPAGOID AND A.USEID = F.USEID'
    +' ORDER BY A.DPTOID, A.UPROID, A.UPAGOID, A.USEID, B.ASOID, A.TRANSFOPE, B.ASOCODMOD, B.ASOAPENOMDNI, A.TRANSANO, A.TRANSMES';

  End;

  // Resumen
  If rgSeleccion.ItemIndex = 1 Then
  Begin
    xSql := 'SELECT DPTOID, DPTODES, UPROID, UPRONOM, UPAGOID, UPAGONOM, USEID, USENOM, '
    +' ASOCODMOD, ASOAPENOMDNI, TRANSNOPE, TRANSFOPE, CANTIDAD, MONTO FROM'
    +' (SELECT A.DPTOID, C.DPTODES, A.UPROID, D.UPRONOM, A.UPAGOID, E.UPAGONOM, A.USEID, F.USENOM,'
    +' B.ASOCODMOD, B.ASOAPENOMDNI, A.TRANSNOPE, A.TRANSFOPE, COUNT(A.TRANSMTO ) CANTIDAD, SUM(NVL(A.TRANSMTO,0)) MONTO'
    +' FROM APO301 A, APO201 B, APO158 C, APO102 D, APO103 E, APO101 F'
    +' WHERE A.TRANSFOPE >= '+QuotedStr(dbdtpFechaI.Text)+' AND A.TRANSFOPE <= '+QuotedStr(dbdtpFechaF.Text);
    If Trim(dblcdforpag.Text) <> '' Then  xSql := xSql + ' AND FORPAGOID = '+QuotedStr(dblcdforpag.Text);
    If Trim(dblcdidedep.Text) <> '' Then  xSql := xSql + ' AND A.DPTOID = '+QuotedStr(dblcdidedep.Text);
    If Trim(dblcdunipro.Text) <> '' Then  xSql := xSql + ' AND A.UPROID = '+QuotedStr(dblcdunipro.Text);
    If Trim(dblcdunipag.Text) <> '' Then  xSql := xSql + ' AND A.UPAGOID = '+QuotedStr(dblcdunipag.Text);
    If Trim(dblcdideuse.Text) <> '' Then  xSql := xSql + ' AND A.UPAGOID = '+QuotedStr(dblcdideuse.Text);
    xSql := xSql + ' AND A.ASOID = B.ASOID AND A.DPTOID = C.DPTOID AND A.UPROID = D.UPROID AND A.UPROID = E.UPROID'
    +' AND A.UPAGOID = E.UPAGOID AND A.UPROID = F.UPROID AND A.UPAGOID = F.UPAGOID AND A.USEID = F.USEID'
    +' GROUP BY A.DPTOID, C.DPTODES, A.UPROID, D.UPRONOM, A.UPAGOID, E.UPAGONOM, A.USEID, F.USENOM,'
    +' B.ASOCODMOD, B.ASOAPENOMDNI, A.TRANSNOPE, A.TRANSFOPE) ORDER BY TRANSFOPE, ASOCODMOD';
  End;
    // Estadistico por forma de pago
  If (rgSeleccion.ItemIndex = 2) And (rgestadistico.ItemIndex = 0) Then
  Begin
    xSql := 'SELECT A.FORPAGOABR, B.FORPAGODES,  COUNT(*) CUENTA, SUM(NVL(TRANSMTO,0)) TRANSMTO FROM APO301 A, COB101 B'
    +' WHERE TRANSFOPE >= '+QuotedStr(dbdtpFechaI.Text)+' AND  TRANSFOPE <= '+QuotedStr(dbdtpFechaF.Text)
    +' AND A.FORPAGOID = B.FORPAGOID(+) GROUP BY A.FORPAGOABR, B.FORPAGODES';
  End;

  // Estadistico por departamento
  If (rgSeleccion.ItemIndex = 2) And (rgestadistico.ItemIndex = 1) Then
  Begin
    xSql := 'SELECT B.DPTOID, B.DPTODES, COUNT(*) CANTIDAD, SUM(NVL(TRANSMTO,0)) MONTO  FROM APO301 A, APO158 B'
    +' WHERE TRANSFOPE >= '+QuotedStr(dbdtpFechaI.Text)+' AND TRANSFOPE <= '+QuotedStr(dbdtpFechaF.Text)+' AND A.DPTOID = B.DPTOID(+)'
    +' GROUP BY B.DPTOID, B.DPTODES';
  End;
  DM1.cdsReporte.Close;
  DM1.cdsReporte.DataRequest(xSql);
  DM1.cdsReporte.Open;
end;

Procedure TFapoefe.rgSeleccionClick(Sender: TObject);
Begin
  If (rgSeleccion.ItemIndex = 0) Or (rgSeleccion.ItemIndex = 1) Then
  Begin
    rgestadistico.Visible := false;
    gbparsel.Visible := True;
  End;

  If rgSeleccion.ItemIndex = 2 Then
  Begin
    rgestadistico.Visible := True;
    gbparsel.Visible := False;
  End;
End;

procedure TFapoefe.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
  begin
    Key := #0;
    Perform(CM_DIALOGKEY, VK_TAB, 0);
  end;
end;

procedure TFapoefe.dblcdforpagChange(Sender: TObject);
begin
  If Trim(dblcdforpag.Text) = '' Then
  Begin
    dblcdforpag.Text := '';
    medesforpag.Text := '';
  End
  Else
  Begin
    If Length(Trim(dblcdforpag.Text)) = 2 then
    Begin
      If DM1.cdsFormaPago.Locate('FORPAGOID', dblcdforpag.Text, []) Then
      Begin
        medesforpag.Text := DM1.cdsFormaPago.FieldByName('FORPAGODES').AsString;
      End
      Else
      Begin
        MessageDlg('Código no Valido', mtInformation, [mbOk], 0);
        dblcdforpag.Text := '';
        medesforpag.Text := '';
      End;
    End;
  End;
end;

procedure TFapoefe.btnimprimirClick(Sender: TObject);
Var xWhere:String;
begin
  // Imprimir
 // If rgSeleccion.ItemIndex = 0 Then pprdetallado.Print;

  If (rgSeleccion.ItemIndex = 2) And (rgestadistico.ItemIndex = 0) Then
  Begin
    xWhere := 'USERID = '+ QuotedStr(DM1.wUsuario) ;
    pplimpresopor03.Caption := 'IMPRESO POR : '+ UpperCase(DM1.DisplayDescrip('prvTGE', 'USERTABLE', 'USERNOM', xWhere , 'USERNOM'));
    ppltitulosec03.Caption := 'DEL '+dbdtpFechaI.Text+' AL '+dbdtpFechaF.Text;
    pprreporte03.Print;
  End;

  If (rgSeleccion.ItemIndex = 2) And (rgestadistico.ItemIndex = 1) Then
  Begin
    xWhere := 'USERID = '+ QuotedStr(DM1.wUsuario) ;
    pplimpresopor04.Caption := 'IMPRESO POR : '+ UpperCase(DM1.DisplayDescrip('prvTGE', 'USERTABLE', 'USERNOM', xWhere , 'USERNOM'));
    ppltitulosec04.Caption := 'DEL '+dbdtpFechaI.Text+' AL '+dbdtpFechaF.Text;
    pprreporte04.Print;
  End;





end;

procedure TFapoefe.btncerrarClick(Sender: TObject);
begin
  Fapoefe.Close;
end;

end.
