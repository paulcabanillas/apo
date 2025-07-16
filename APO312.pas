unit APO312;

// Inicio Uso Estándares:   01/08/2011
// Unidad               :   APO312
// Formulario           :   Fpronapo
// Objetivo             :   Reporte de Proceso de No Aportantes
//////////////////////////////////////////////////////////////////////////
// Actualizaciones      :
// HPC_201201_APO  06/01/2012 cambio de valor máximo para Año de Proceso
//////////////////////////////////////////////////////////////////////////
// DPP_201201_APO       : El pase se realiza apartir del pase HPC_201201_APO

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, wwdbedit, Wwdbspin, Mask, ExtCtrls, wwdblook,
  Wwdbdlg;

type
  TFpronapo = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    dblcduproid: TwwDBLookupComboDlg;
    dblcdupagoid: TwwDBLookupComboDlg;
    Panel1: TPanel;
    meupronom: TMaskEdit;
    Panel2: TPanel;
    meupagonom: TMaskEdit;
    Panel3: TPanel;
    meusenom: TMaskEdit;
    dblcduseid: TwwDBLookupComboDlg;
    dbseanopro: TwwDBSpinEdit;
    dbsemespro: TwwDBSpinEdit;
    btnFiltrar: TBitBtn;
    BitBtn1: TBitBtn;
    Label6: TLabel;
    dblcddptoid: TwwDBLookupComboDlg;
    Panel4: TPanel;
    medptodes: TMaskEdit;
    StaticText1: TStaticText;
    procedure FormActivate(Sender: TObject);
    procedure dblcduproidChange(Sender: TObject);
    procedure dblcdupagoidChange(Sender: TObject);
    procedure dblcduseidChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure dblcddptoidChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    // Inicio: DPP_201201_APO
    procedure FormCreate(Sender: TObject);
    // Fin: DPP_201201_APO
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fpronapo: TFpronapo;

implementation

uses APODM;

{$R *.dfm}

procedure TFpronapo.FormActivate(Sender: TObject);
Var xSql:String;
begin
  Fpronapo.Left := 80;
  Fpronapo.Top  := 200;
  xSql := 'SELECT DPTOID, DPTODES FROM APO158';
  DM1.cdsDpto.Close;
  DM1.cdsDpto.DataRequest(xSql);
  DM1.cdsDpto.Open;
  dblcddptoid.Selected.Clear;
  dblcddptoid.Selected.Add('DPTOID'#9'2'#9'Código'#9#9);
  dblcddptoid.Selected.Add('DPTODES'#9'30'#9'Descripción'#9#9);
  dbseanopro.SetFocus;
end;

procedure TFpronapo.dblcduproidChange(Sender: TObject);
Var xSql:String;
begin
  If Trim(dblcduproid.Text) = '' then
  Begin
    dblcduproid.Text := '';
    meupronom.Text := '';
    dblcdupagoid.Text := '';
    meupagonom.Text := '';
    dblcduseid.Text := '';
    meusenom.Text := '';
    Exit;
  End;
  If Length(Trim(dblcduproid.Text)) = 3 then
  Begin
    If DM1.cdsUPro.Locate('UPROID', dblcduproid.Text, []) Then
    Begin
      meupronom.Text := DM1.cdsUPro.FieldByName('UPRONOM').AsString;
      xSql := 'SELECT UPAGOID, UPAGONOM FROM APO103 WHERE UPROID = '+QuotedStr(dblcduproid.Text);
      DM1.cdsUPago.Close;
      DM1.cdsUPago.DataRequest(xSql);
      DM1.cdsUPago.Open;
      dblcdupagoid.Selected.Clear;
      dblcdupagoid.Selected.Add('UPAGOID'#9'3'#9'Código'#9#9);
      dblcdupagoid.Selected.Add('UPAGONOM'#9'25'#9'Descipción'#9#9);
    End
    Else
    Begin
      MessageDlg('Código no Valido', mtInformation, [mbOk], 0);
      dblcduproid.Text := '';
      meupronom.Text := '';
      Exit;
    End;
  End;
end;

procedure TFpronapo.dblcdupagoidChange(Sender: TObject);
Var xSql:String;
Begin
  If Trim(dblcdupagoid.Text) = '' then
  Begin
    dblcdupagoid.Text := '';
    meupagonom.Text := '';
    dblcduseid.Text := '';
    meusenom.Text := '';
    Exit;
  End;
  If Length(Trim(dblcdupagoid.Text)) = 2 then
  Begin
    If DM1.cdsUPago.Locate('UPAGOID', dblcdupagoid.Text, []) Then
    Begin
      meupagonom.Text := DM1.cdsUPago.FieldByName('UPAGONOM').AsString;
      xSql := 'SELECT USEID, USENOM FROM APO101 WHERE UPROID = '+QuotedStr(dblcduproid.Text)+' AND UPAGOID = '+QuotedStr(dblcdupagoid.Text);
      DM1.cdsUse.Close;
      DM1.cdsUse.DataRequest(xSql);
      DM1.cdsUse.Open;
      dblcduseid.Selected.Clear;
      dblcduseid.Selected.Add('USEID'#9'3'#9'Código'#9#9);
      dblcduseid.Selected.Add('USENOM'#9'25'#9'Descipción'#9#9);
    End
    Else
    Begin
      MessageDlg('Código no Valido', mtInformation, [mbOk], 0);
      dblcdupagoid.Text := '';
      meupagonom.Text := '';
      Exit;
    End;
  End;
end;

procedure TFpronapo.dblcduseidChange(Sender: TObject);
begin
  If Trim(dblcduseid.Text) = '' then
  Begin
    dblcduseid.Text := '';
    meusenom.Text := '';
    Exit;
  End;
  If Length(Trim(dblcduseid.Text)) = 2 then
  Begin
    If DM1.cdsUse.Locate('USEID', dblcduseid.Text, []) Then
    Begin
      meusenom.Text := DM1.cdsUse.FieldByName('USENOM').AsString;
    End
    Else
    Begin
      MessageDlg('Código no Valido', mtInformation, [mbOk], 0);
      dblcduseid.Text := '';
      meusenom.Text := '';
      Exit;
    End;
  End;
end;

procedure TFpronapo.BitBtn1Click(Sender: TObject);
begin
  Fpronapo.Close;
end;

Procedure TFpronapo.btnFiltrarClick(Sender: TObject);
Var xSql, xAnoMes:String;
Begin
  Screen.Cursor := crHourGlass;
  xAnoMes :=  DM1.StrZero(dbseanopro.Text,4)+DM1.StrZero(dbsemespro.Text,2);
  If dblcduseid.Text <> '' Then
    xSql := 'BEGIN SP_NO_APORTANTES('+QuotedStr(dblcduproid.Text)+','+QuotedStr(dblcdupagoid.Text)+','+QuotedStr(dblcduseid.Text)+','+QuotedStr(xAnoMes)+','+QuotedStr('U')+','+QuotedStr(DM1.wUsuario)+'); END;'
  Else
    xSql := 'BEGIN SP_NO_APORTANTES('+QuotedStr(dblcduproid.Text)+', '+QuotedStr(dblcdupagoid.Text)+','+QuotedStr(dblcduseid.Text)+','+QuotedStr(xAnoMes)+','+QuotedStr('P')+','+QuotedStr(DM1.wUsuario)+'); END;';
  DM1.DCOM1.AppServer.EjecutaSQL(xSql);
  MessageDlg('Proceso concluido', mtInformation, [mbOk], 0);
  Screen.Cursor := crDefault;
  Fpronapo.Close;
End;

procedure TFpronapo.dblcddptoidChange(Sender: TObject);
Var xSql:String;
begin
  If Trim(dblcddptoid.Text) = '' then
  Begin
    dblcddptoid.Text := '';
    medptodes.Text := '';
    dblcduproid.Text := '';
    meupronom.Text := '';
    dblcdupagoid.Text := '';
    meupagonom.Text := '';
    dblcduseid.Text := '';
    meusenom.Text := '';
    Exit;
  End;
  If Length(Trim(dblcddptoid.Text)) = 2 then
  Begin
    If DM1.cdsDpto.Locate('DPTOID', dblcddptoid.Text, []) Then
    Begin
      medptodes.Text := DM1.cdsDpto.FieldByName('DPTODES').AsString;
      xSql := 'SELECT UPROID, UPRONOM FROM APO102 WHERE DPTOID = '+QuotedStr(dblcddptoid.Text);
      DM1.cdsUPro.Close;
      DM1.cdsUPro.DataRequest(xSql);
      DM1.cdsUPro.Open;
      dblcduproid.Selected.Clear;
      dblcduproid.Selected.Add('UPROID'#9'3'#9'Código'#9#9);
      dblcduproid.Selected.Add('UPRONOM'#9'30'#9'Descripción'#9#9);
    End
    Else
    Begin
      MessageDlg('Código no Valido', mtInformation, [mbOk], 0);
      dblcddptoid.Text := '';
      medptodes.Text := '';
      Exit;
    End;
  End;
end;

procedure TFpronapo.FormKeyPress(Sender: TObject; var Key: Char);
begin
 If Key = #13 Then
  Begin
    Key := #0;
    Perform(CM_DIALOGKEY, VK_TAB, 0);
  End;
end;

// Inicio: DPP_201201_APO
// Inicializa Año Máximo con Año de la Fecha del Sistema
procedure TFpronapo.FormCreate(Sender: TObject);
var
   xsSQL : String;
begin
   xsSQL := 'select to_char(sysdate,''YYYY'') ANOMAX  from DUAL';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsSQL);
   DM1.cdsQry.Open;
   dbseanopro.MaxValue := strtoint(DM1.cdsQry.FieldByName('ANOMAX').AsString);
   DM1.cdsQry.Close;
end;
// Fin: DPP_201201_APO

end.
