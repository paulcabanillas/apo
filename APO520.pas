unit APO520;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, wwdbdatetimepicker, ppCtrls, ppBands,
  ppClass, ppVar, ppPrnabl, ppCache, ppProd, ppReport, ppDB, ppComm,
  ppRelatv, ppDBPipe, ExtCtrls, ppParameter, Grids, Wwdbigrd, Wwdbgrid, DBGrids, DB,
  Mask, wwdblook, Wwdbdlg;

type
  TFCobBen = class(TForm)
    gbprincipal: TGroupBox;
    lblFecIni: TLabel;
    lblFecFin: TLabel;
    dbdtpInicial: TwwDBDateTimePicker;
    dbdtpFinal: TwwDBDateTimePicker;
    ppdbreportes: TppDBPipeline;
    ppRepNivelaciones: TppReport;
    pplblTitulo: TppLabel;
    ppShape9: TppShape;
    ppShape8: TppShape;
    ppShape6: TppShape;
    ppShape5: TppShape;
    ppShape3: TppShape;
    ppShape2: TppShape;
    ppShape1: TppShape;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppShape7: TppShape;
    ppLabel2: TppLabel;
    ppDetailBand11: TppDetailBand;
    ppdbAsoCodMod: TppDBText;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppltitulo02: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel22: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    pplimppor: TppLabel;
    rgtipo: TRadioGroup;
    dbgnivapo: TwwDBGrid;
    btnimprimir: TBitBtn;
    btnaexcel: TBitBtn;
    btncerrar: TBitBtn;
    btnprevio: TBitBtn;
    dtgData: TDBGrid;
    ppLabel16: TppLabel;
    ppDBText5: TppDBText;
    ppHeaderBand1: TppHeaderBand;
    pprapodesliq: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppShape29: TppShape;
    ppLabel52: TppLabel;
    ppShape30: TppShape;
    ppShape31: TppShape;
    ppShape32: TppShape;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppSystemVariable10: TppSystemVariable;
    ppSystemVariable11: TppSystemVariable;
    ppSystemVariable12: TppSystemVariable;
    ppShape37: TppShape;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppShape38: TppShape;
    ppDBText16: TppDBText;
    ppLabel14: TppLabel;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText25: TppDBText;
    ppLabel34: TppLabel;
    ppSummaryBand3: TppSummaryBand;
    ppRepDevoluciones: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppDBText24: TppDBText;
    ppShape17: TppShape;
    ppLabel36: TppLabel;
    ppShape20: TppShape;
    ppShape21: TppShape;
    ppShape22: TppShape;
    ppShape23: TppShape;
    ppShape25: TppShape;
    ppShape26: TppShape;
    ppLabel37: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable9: TppSystemVariable;
    ppShape27: TppShape;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppSummaryBand4: TppSummaryBand;
    pplimpresopor: TppLabel;
    Label4: TLabel;
    dblcdidedep: TwwDBLookupComboDlg;
    Panel2: TPanel;
    medesdep: TMaskEdit;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppLabel3: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLabel4: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLabel1: TppLabel;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLine1: TppLine;
    ppLabel9: TppLabel;
    ppLine6: TppLine;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppGroup8: TppGroup;
    ppGroupHeaderBand8: TppGroupHeaderBand;
    ppGroupFooterBand8: TppGroupFooterBand;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLine2: TppLine;
    ppLabel12: TppLabel;
    ppLine3: TppLine;
    ppShape4: TppShape;
    ppLabel13: TppLabel;
    ppShape10: TppShape;
    ppLabel15: TppLabel;
    ppShape11: TppShape;
    ppLabel17: TppLabel;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppLabel25: TppLabel;
    ppDBText8: TppDBText;
    ppLabel26: TppLabel;
    ppLine7: TppLine;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    procedure btnImprimePrevioClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btncerrarClick(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
    procedure rgtipoClick(Sender: TObject);
    procedure btnaexcelClick(Sender: TObject);
    procedure dbdtpInicialChange(Sender: TObject);
    procedure dbdtpFinalChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dblcdidedepChange(Sender: TObject);
  private
    { Private declarations }
    monniv, mondev :Double;
    procedure limpiadepartamento;
    procedure limpia;
  public
    { Public declarations }
    xtotniv :real;
  end;

var
  FCobBen: TFCobBen;

implementation

uses APODM;

{$R *.dfm}

procedure TFCobBen.btnImprimePrevioClick(Sender: TObject);
Var xSql :String;
begin
  xtotniv := 0;
  If dbdtpInicial.Text = '' Then
  Begin
    MessageDlg('Ingrese la fecha inicial', mtInformation, [mbOk], 0);
    dbdtpInicial.SetFocus;
    Exit;
  End;

  If dbdtpFinal.Text = '' Then
  Begin
    MessageDlg('Ingrese la fecha final', mtInformation, [mbOk], 0);
    dbdtpFinal.SetFocus;
    Exit;
  End;

  If dbdtpInicial.Date > dbdtpFinal.Date Then
  Begin
    MessageDlg('Ingrese una fecha inicial menor o igual a la fecha final', mtInformation, [mbOk], 0);
    dbdtpInicial.SetFocus;
    Exit;
  End;

  If rgtipo.ItemIndex = -1 Then
  Begin
    MessageDlg('Seleccione el tipo de reporte', mtInformation, [mbOk], 0);
    dbdtpInicial.SetFocus;
    Exit;
  End;

  Screen.Cursor:=crHourGlass;
  Case rgtipo.ItemIndex Of
  0:
    Begin
      xSql := 'SELECT A.PVSLFECBE, A.ASOCODMOD, E.DPTODES, A.ASOAPENOMDNI, SUBSTR(A.PVSLBENNR,5,7) PVSLBENNR, B.TRANSANO||''/''||B.TRANSMES ANOMES, B.TRANSMTO, A.USUARIO'
      +' FROM PVS306 A, APO301 B, APO201 C, APO101 D, APO158 E'
      +' WHERE   A.PVSESTLIQ IN (''02'',''05'')'
      +' AND A.PVSLFECBE >= '+QuotedStr(dbdtpInicial.Text)+' AND A.PVSLFECBE <= '+QuotedStr(dbdtpFinal.Text)
      +' AND  A.ASOID = C.ASOID'
      +' AND C.USEID =  D.USEID(+) AND C.UPAGOID = D.UPAGOID(+) AND C.UPROID = D.UPROID(+)'
      +' AND D.DPTOID = E.DPTOID(+) AND A.ASOID = B.ASOID AND A.PVSLBENNR = B.TRANSNOPE  AND A.PVSLFECBE = B.TRANSFOPE';
      If dblcdidedep.Text <> '' Then xSql := xSql + ' AND E.DPTOID = '+QuotedStr(dblcdidedep.Text);
      xSql := xSql + ' ORDER BY E.DPTODES, A.PVSLFECBE, SUBSTR(A.PVSLBENNR,5,7), A.ASOCODMOD, B.TRANSANO, B.TRANSMES';
      DM1.cdsReporte.Close;
      DM1.cdsReporte.DataRequest(xSql);
      DM1.cdsReporte.Open;
      monniv := 0;
      While Not DM1.cdsReporte.Eof Do
      Begin
        monniv := monniv + DM1.cdsReporte.FieldByname('TRANSMTO').AsFloat;
        DM1.cdsReporte.Next;
      End;
      dbgnivapo.Selected.Clear;
      dbgnivapo.Selected.Add('PVSLFECBE'#9'10'#9'Fecha de la~Liquidación'#9#9);
      dbgnivapo.Selected.Add('ASOCODMOD'#9'10'#9'Código~Modular'#9#9);
      dbgnivapo.Selected.Add('DPTODES'#9'18'#9'Departamento~de Origen'#9#9);
      dbgnivapo.Selected.Add('ASOAPENOMDNI'#9'50'#9'Apellidos~y Nombre(s)'#9#9);
      dbgnivapo.Selected.Add('PVSLBENNR'#9'11'#9'Número de la~Liquidación'#9#9);
      dbgnivapo.Selected.Add('ANOMES'#9'5'#9'Año y mes de~la nivelación'#9#9);
      dbgnivapo.Selected.Add('TRANSMTO'#9'10'#9'Monto de~la Nivelación'#9#9);
      dbgnivapo.Selected.Add('USUARIO'#9'10'#9'Usuario'#9#9);
      dbgnivapo.ApplySelected;
      TNumericField(DM1.cdsReporte.FieldByName('TRANSMTO')).DisplayFormat := '###,###,##0.00';
      dbgnivapo.ColumnByName('ASOAPENOMDNI').FooterValue := 'TOTAL NIVELACION :';
      dbgnivapo.ColumnByName('TRANSMTO').FooterValue := FormatFloat('###,###.#0',monniv);
    End;
  1:
    Begin
      xSql := 'SELECT A.PVSLFECBE, A.ASOCODMOD, E.DPTODES, A.ASOAPENOMDNI, SUBSTR(A.PVSLBENNR,5,7) PVSLBENNR, '
      +' B.APOANO||''/''||B.APOMES ANOMES, B.DEVMTO, A.USUARIO'
      +' FROM PVS306 A, APO305 B, APO201 C, APO101 D, APO158 E'
      +' WHERE   A.PVSESTLIQ IN (''02'',''05'') AND A.PVSLFECBE >= '+QuotedStr(dbdtpInicial.Text)+' AND A.PVSLFECBE <= '+QuotedStr(dbdtpFinal.Text)+' AND  A.ASOID = C.ASOID AND C.USEID =  D.USEID(+)'
      +' AND C.UPAGOID = D.UPAGOID(+) AND C.UPROID = D.UPROID(+) AND D.DPTOID = E.DPTOID(+)'
      +' AND A.ASOID = B.ASOID AND A.PVSLBENNR = B.TRANSNOPE  AND A.PVSLFECBE = B.TRANSFOPE';
      If dblcdidedep.Text <> '' Then xSql := xSql + ' AND E.DPTOID = '+QuotedStr(dblcdidedep.Text);
      xSql := xSql + ' ORDER BY E.DPTODES, A.PVSLFECBE, SUBSTR(A.PVSLBENNR,5,7), A.ASOCODMOD, B.APOANO, B.APOMES';
      DM1.cdsReporte.Close;
      DM1.cdsReporte.DataRequest(xSql);
      DM1.cdsReporte.Open;
      mondev := 0;
      While Not DM1.cdsReporte.Eof Do
      Begin
        mondev := mondev + DM1.cdsReporte.FieldByname('DEVMTO').AsFloat;
        DM1.cdsReporte.Next;
      End;
      dbgnivapo.Selected.Clear;
      dbgnivapo.Selected.Add('PVSLFECBE'#9'10'#9'Fecha de la~Liquidación'#9#9);
      dbgnivapo.Selected.Add('ASOCODMOD'#9'10'#9'Código~Modular'#9#9);
      dbgnivapo.Selected.Add('DPTODES'#9'18'#9'Departamento~de Origen'#9#9);
      dbgnivapo.Selected.Add('ASOAPENOMDNI'#9'50'#9'Apellidos~y Nombre(s)'#9#9);
      dbgnivapo.Selected.Add('PVSLBENNR'#9'11'#9'Número de la~Liquidación'#9#9);
      dbgnivapo.Selected.Add('ANOMES'#9'5'#9'Año y mes~de la devolución'#9#9);
      dbgnivapo.Selected.Add('DEVMTO'#9'10'#9'Monto de~la Devolución'#9#9);
      dbgnivapo.Selected.Add('USUARIO'#9'15'#9'Usuario'#9#9);
      dbgnivapo.ApplySelected;
      TNumericField(DM1.cdsReporte.FieldByName('DEVMTO')).DisplayFormat := '###,###,##0.00';
      dbgnivapo.ColumnByName('ASOAPENOMDNI').FooterValue := 'TOTAL DEVOLUCION :';
      dbgnivapo.ColumnByName('DEVMTO').FooterValue := FormatFloat('###,###.#0',mondev);
    End;
  2:
    Begin
      xSql := 'SELECT C.ASOTIPID, C.ASOCODMOD, C.ASOAPENOMDNI, E.DPTODES, B.TRANSNOPE, B.TRANSFOPE, B.USUARIO, B.TRANSANO||''/''||B.TRANSMES ANOMES,  B.TRANSMTO, A.PVSLFECBE'
      +' FROM PVS306 A, APO301 B, APO201 C, APO101 D, APO158 E WHERE A.PVSESTLIQ IN (''02'',''05'')'
      +' AND ((TO_DATE(A.FREG) >= '+QuotedStr(dbdtpInicial.Text)+') AND (TO_DATE(A.FREG) <= '+QuotedStr(dbdtpFinal.Text)+')) AND A.ASOID = B.ASOID(+)'
      +' AND A.ASOID = C.ASOID(+) AND C.UPROID = D.UPROID(+) AND C.UPAGOID = D.UPAGOID(+) AND C.USEID = D.USEID(+) AND D.DPTOID = E.DPTOID(+)'
      +' AND TO_CHAR(A.FREG, ''YYYYMMDD'') <= TO_CHAR(B.FREG, ''YYYYMMDD'') AND B.FORPAGOID <> ''05'' AND NVL(B.TRANSMTO,0)-NVL(TRANSMTODEV,0) <> 0';
      If dblcdidedep.Text <> '' Then xSql := xSql + ' AND E.DPTOID = '+QuotedStr(dblcdidedep.Text);
      xSql := xSql + ' ORDER BY E.DPTODES, C.ASOCODMOD, B.TRANSANO, B.TRANSMES';

      DM1.cdsReporte.Close;
      DM1.cdsReporte.DataRequest(xSql);
      DM1.cdsReporte.Open;
      xtotniv := 0;
      DM1.cdsReporte.First;
      While Not DM1.cdsReporte.Eof Do
      Begin
         xtotniv := xtotniv + DM1.cdsReporte.FieldByName('TRANSMTO').AsFloat;
         DM1.cdsReporte.Next;
      End;
      dbgnivapo.Selected.Clear;
      dbgnivapo.Selected.Add('ASOTIPID'#9'2'#9'Tipo de~asociado'#9#9);
      dbgnivapo.Selected.Add('ASOCODMOD'#9'10'#9'Código~Modular'#9#9);
      dbgnivapo.Selected.Add('ASOAPENOMDNI'#9'50'#9'Apellidos~y Nombre(s)'#9#9);
      dbgnivapo.Selected.Add('DPTODES'#9'18'#9'Departamento~de Origen'#9#9);
      dbgnivapo.Selected.Add('TRANSNOPE'#9'10'#9'Número de~operación'#9#9);
      dbgnivapo.Selected.Add('TRANSFOPE'#9'10'#9'Fecha de~operación'#9#9);
      dbgnivapo.Selected.Add('USUARIO'#9'15'#9'Usuario'#9#9);
      dbgnivapo.Selected.Add('ANOMES'#9'4'#9'Año/Mes~del aporte'#9#9);
      dbgnivapo.Selected.Add('TRANSMTO'#9'7'#9'Monto del~aporte'#9#9);
      dbgnivapo.Selected.Add('PVSLFECBE'#9'2'#9'Fecha de~la liquidación'#9#9);
      dbgnivapo.ApplySelected;
      TNumericField(DM1.cdsReporte.FieldByName('TRANSMTO')).DisplayFormat := '###,###,##0.00';
      dbgnivapo.ColumnByName('USUARIO').FooterValue := 'TOTAL APORTES :';
      dbgnivapo.ColumnByName('TRANSMTO').FooterValue := FormatFloat('###,###.#0',xtotniv);
    End;
  End;
  Screen.Cursor:=crDefault;
end;

procedure TFCobBen.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
  begin
    Key := #0;
    Perform(CM_DIALOGKEY, VK_TAB, 0);
  end;
end;


procedure TFCobBen.btncerrarClick(Sender: TObject);
begin
  FCobBen.Close;
end;

Procedure TFCobBen.btnimprimirClick(Sender: TObject);
Var xWhere:String;
Begin
  If rgtipo.ItemIndex = 0 Then
  Begin
    xWhere := 'USERID = '+ QuotedStr(DM1.wUsuario) ;
    pplimppor.Caption := 'IMPRESO POR : '+ UpperCase(DM1.DisplayDescrip('prvTGE', 'USERTABLE', 'USERNOM', xWhere , 'USERNOM'));
    ppltitulo02.Caption := 'DEL '+dbdtpInicial.Text+' AL '+dbdtpFinal.Text;
    ppRepNivelaciones.Print
  End;

  If rgtipo.ItemIndex = 1 Then
  Begin
    xWhere := 'USERID = '+ QuotedStr(DM1.wUsuario) ;
    pplimpresopor.Caption := 'IMPRESO POR : '+ UpperCase(DM1.DisplayDescrip('prvTGE', 'USERTABLE', 'USERNOM', xWhere , 'USERNOM'));
    ppLabel46.Caption := 'DEL '+dbdtpInicial.Text+' AL '+dbdtpFinal.Text;
    ppRepDevoluciones.Print;
  End;

  If rgtipo.ItemIndex = 2 Then
  Begin
    xWhere := 'USERID = '+ QuotedStr(DM1.wUsuario) ;
    ppLabel34.Caption := 'IMPRESO POR : '+ UpperCase(DM1.DisplayDescrip('prvTGE', 'USERTABLE', 'USERNOM', xWhere , 'USERNOM'));
    ppLabel58.Caption := 'DEL '+dbdtpInicial.Text+' AL '+dbdtpFinal.Text;
    pprapodesliq.Print;
  End;

End;

procedure TFCobBen.rgtipoClick(Sender: TObject);
begin
  limpia;

  {
  If rgtipo.ItemIndex = 0 Then FCobBen.Caption := 'Nivelaciones de Aportes'
  Else If rgtipo.ItemIndex = 1 Then FCobBen.Caption := 'Devoluciones de Aportes';
  }

end;

procedure TFCobBen.btnaexcelClick(Sender: TObject);
begin
  DM1.HojaExcel('REPORTE', DM1.dsReporte , dtgData)
end;

procedure TFCobBen.dbdtpInicialChange(Sender: TObject);
begin
  limpia;
end;

procedure TFCobBen.dbdtpFinalChange(Sender: TObject);
begin
  limpia;
end;

procedure TFCobBen.limpia;
begin
  If DM1.cdsReporte.Active Then DM1.cdsReporte.Close;
End;

procedure TFCobBen.FormActivate(Sender: TObject);
Var xSql:String;
begin
  xSql := 'SELECT DPTOID, DPTODES FROM APO158';
  DM1.cdsDpto.Close;
  DM1.cdsDpto.DataRequest(xSql);
  DM1.cdsDpto.Open;
  dblcdidedep.Selected.Clear;
  dblcdidedep.Selected.Add('DPTOID'#9'2'#9'Código'#9#9);
  dblcdidedep.Selected.Add('DPTODES'#9'30'#9'Descripción'#9#9);
end;

Procedure TFCobBen.dblcdidedepChange(Sender: TObject);
Begin
  If Trim(dblcdidedep.Text) = '' Then limpiadepartamento
  Else
  Begin
    If Length(Trim(dblcdidedep.Text)) = 2 then
    Begin
      If DM1.cdsDpto.Locate('DPTOID', dblcdidedep.Text, []) Then
        medesdep.Text := DM1.cdsDpto.FieldByName('DPTODES').AsString
      Else
      Begin
        MessageDlg('Código no Valido', mtInformation, [mbOk], 0);
        limpiadepartamento;
      End;
    End;
  End;
End;

procedure TFCobBen.limpiadepartamento;
begin
  dblcdidedep.Text := '';
  medesdep.Text := '';
end;

end.
