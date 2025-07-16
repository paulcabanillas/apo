unit COB954;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppCtrls, ppBands, ppClass, ppPrnabl, ppCache, ppDB, ppDBPipe,
  ppDBBDE, ppComm, ppRelatv, ppProd, ppReport, StdCtrls, Buttons,
  wwdbdatetimepicker, ExtCtrls, ppVar, ppStrtch, ppSubRpt, wwdblook,
  Wwdbdlg, Mask;

type
  TfRepApoDepBanc = class(TForm)
    rdgFecha: TRadioGroup;
    gbRango: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    dtpFechaIni: TwwDBDateTimePicker;
    dtpFechaFin: TwwDBDateTimePicker;
    BitBtn1: TBitBtn;
    ppRApoDepBan: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppDBText14: TppDBText;
    ppLine1: TppLine;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLine2: TppLine;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppRepApoDepBan: TppBDEPipeline;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    pplFechIni: TppLabel;
    pplFechFin: TppLabel;
    ppLabel17: TppLabel;
    pplDetRes: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppSummaryBand1: TppSummaryBand;
    ppLine5: TppLine;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLine6: TppLine;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppBDEResumen: TppBDEPipeline;
    rdgUsuario: TRadioGroup;
    gbUsuario: TGroupBox;
    dblUsuario: TwwDBLookupCombo;
    ppRApoDepBanRe: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel34: TppLabel;
    ppltipforpag: TppLabel;
    pplFechIni2: TppLabel;
    ppLFechFin2: TppLabel;
    ppLabel38: TppLabel;
    pplDetRes2: TppLabel;
    ppLUsuario2: TppLabel;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable9: TppSystemVariable;
    ppLabel45: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppSummaryBand3: TppSummaryBand;
    ppLine9: TppLine;
    ppLine10: TppLine;
    BitBtn2: TBitBtn;
    ppVariable1: TppVariable;
    ppLabel48: TppLabel;
    ppVariable2: TppVariable;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppShape1: TppShape;
    ppLabel26: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText4: TppDBText;
    ppDBText8: TppDBText;
    ppDBText11: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppShape2: TppShape;
    ppLabel27: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLabel49: TppLabel;
    ppDBText19: TppDBText;
    ppDBCalc8: TppDBCalc;
    pplFechaDe: TppLabel;
    pplFechaDe2: TppLabel;
    rdgResumen: TGroupBox;
    chkResumen: TCheckBox;
    dblcdforpag: TwwDBLookupComboDlg;
    Label1: TLabel;
    pnlforpag: TPanel;
    medesforpag: TMaskEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure rdgUsuarioClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ppDBCalc2Print(Sender: TObject);
    procedure ppLabel48Print(Sender: TObject);
    procedure dblcdforpagChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRepApoDepBanc: TfRepApoDepBanc;

implementation

//uses COBDM1;
uses APODM;

{$R *.dfm}

procedure TfRepApoDepBanc.BitBtn2Click(Sender: TObject);
var  xsql,xwhere1,xwhere2,xsql2:string;
begin
  ppltipforpag.Caption := 'FORMA DE PAGO  :  '+medesforpag.Text;
  If rdgFecha.ItemIndex = 0 then
     Begin
       xwhere1:=' A.TRANSFOPE>='''+ dtpFechaIni.Text+''' AND TRANSFOPE<='''+dtpFechaFin.Text +''' ' ;
       pplFechaDe.Caption  := '(Por Fecha de Deposito)';
       pplFechaDe2.Caption := '(Por Fecha de Deposito)';
     End
  else
     Begin
       xwhere1:='A.FREG>='''+ dtpFechaIni.Text +''' AND A.FREG<='''+dtpFechaFin.Text+''' ' ;
       pplFechaDe.Caption  := '(Por Fecha de Registro)';
       pplFechaDe2.Caption := '(Por Fecha de Registro)';
     End;

   if rdgUsuario.ItemIndex = 0 then
      Begin
       xwhere2 := '';
       ppLUsuario2.Caption := ' ';
      End
   else
      Begin
       xwhere2:= 'AND A.USUARIO='''+TRIM(dblUsuario.Text)+'''';
       ppLUsuario2.Caption := DM1.cdsCEdu.FieldByname('USERNOM').AsString;
      End;

    pplFechIni.Caption  := dtpFechaIni.Text;
    pplFechFin.Caption  := dtpFechaFin.Text;
    pplFechIni2.Caption := dtpFechaIni.Text;
    pplFechFin2.Caption := dtpFechaFin.Text;


    If chkResumen.Checked then
       Begin
         pplDetRes2.Caption := '(RESUMEN)';
         xsql:= ' SELECT C.DPTODES DEPA, SUM(TRANSMTO) TOTAL,COUNT(1) REGI FROM  APO301 A, APO101 B, APO158 C '+
                ' WHERE ' +xwhere1 + xwhere2 + ' AND FORPAGOID='+QuotedStr(dblcdforpag.Text)+' AND '+
                ' A.USEID||A.UPROID||A.UPAGOID=B.USEID||B.UPROID||B.UPAGOID AND B.DPTOID=C.DPTOID '+
                ' GROUP BY C.DPTODES ';
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xsql);
         DM1.cdsQry.Open;

         ppBDEResumen.DataSource := dm1.dsQry;
         ppRApoDepBanRe.Print;
         ppRApoDepBanRe.Stop;


       End
    else
      Begin
         pplDetRes.Caption := '(DETALLE)';
         xsql  := 'SELECT USUARIO||B.BANCOID||CCBCOID||TRANSNOPE QUIEBRE,USUARIO,A.BANCOID,B.BANCONOM DESBANCO,CCBCOID,UPROID||''  ''||USEID||''  ''||ASOCODMOD||''  ''||ASOAPENOM ASOAPENOM,TRANSFOPE,TRANSNOPE,FREG,TRANSMTO,TRANSMES||''/''||TRANSANO APOSEC'+
                  ' FROM APO301 A,TGE105 B WHERE '+ xwhere1 + xwhere2 + ' AND FORPAGOID='+QuotedStr(dblcdforpag.Text)+' AND A.BANCOID=B.BANCOID ORDER BY USUARIO,BANCOID,CCBCOID,TRANSFOPE' ;
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xsql);
         DM1.cdsQry.Open;

         xsql2 := 'SELECT A.BANCOID,A.CCBCOID,B.BANCONOM,SUM(TRANSMTO) TOTAL,COUNT(1) REG FROM APO301 A,TGE105 B WHERE '+ xwhere1 + xwhere2 +' AND FORPAGOID='+QuotedStr(dblcdforpag.Text)+' AND A.BANCOID=B.BANCOID GROUP BY A.BANCOID,A.CCBCOID,B.BANCONOM ';
         DM1.cdsQry2.Close;
         DM1.cdsQry2.DataRequest(XSQL2);
         DM1.cdsQry2.Open;

         ppBDEResumen.DataSource   := dm1.dsQry2;
         ppRepApoDepBan.DataSource := dm1.dsQry;
         ppLabel16.Caption := 'FORMA DE PAGO : '+medesforpag.Text;

         ppRApoDepBan.Print;
         ppRApoDepBan.Stop;

      End;

end;

procedure TfRepApoDepBanc.rdgUsuarioClick(Sender: TObject);
begin
 if rdgUsuario.ItemIndex = 0 then
   Begin
    gbUsuario.Enabled := False;
    dblUsuario.Text   := '';
   End
 else
   Begin
    gbUsuario.Enabled := True;
    dblUsuario.Text   := '';
   End;
end;

procedure TfRepApoDepBanc.FormActivate(Sender: TObject);
var xsql:string;
begin
   xsql:= 'SELECT USERID,USERNOM FROM USERTABLE WHERE AREA=''COB'' ';
   DM1.cdsCEdu.Close;
   DM1.cdsCEdu.DataRequest(XSQL);
   DM1.cdsCEdu.Open;
   dblUsuario.LookupField := 'USERID';
   dblUsuario.LookupTable := dm1.cdsCEdu;
   rdgFecha.SetFocus;

   xSql := 'SELECT FORPAGOID, FORPAGOABR, FORPAGODES FROM COB101 WHERE FORPAGOID IN (''01'', ''02'', ''03'',''05'', ''09'')';
   DM1.cdsFormaPago.Close;
   DM1.cdsFormaPago.DataRequest(xsql);
   DM1.cdsFormaPago.Open;

   dblcdforpag.Selected.Clear;
   dblcdforpag.Selected.Add('FORPAGOID'#9'2'#9'Código'#9#9);
   dblcdforpag.Selected.Add('FORPAGODES'#9'30'#9'Descripción'#9#9);


   rdgFecha.ItemIndex := 0;
   rdgUsuario.ItemIndex := 0;

   dblcdforpag.SetFocus;

end;

procedure TfRepApoDepBanc.BitBtn1Click(Sender: TObject);
begin
CLOSE;
end;

procedure TfRepApoDepBanc.ppDBCalc2Print(Sender: TObject);
begin
ppVariable1.Value :=  ppVariable1.Value+1;

end;

procedure TfRepApoDepBanc.ppLabel48Print(Sender: TObject);
begin
ppVariable2.Value := ppVariable1.Value;
end;

procedure TfRepApoDepBanc.dblcdforpagChange(Sender: TObject);
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

procedure TfRepApoDepBanc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
  begin
    Key := #0;
    Perform(CM_DIALOGKEY, VK_TAB, 0);
  end;
end;

end.
