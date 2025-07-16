unit APO800;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, wwdbedit, Wwdotdot, Wwdbcomb,
  fcButton, fcImgBtn, fcShapeBtn, ppCtrls, ppPrnabl, ppClass, ppBands,
  ppCache, ppDB, ppDBPipe, ppDBBDE, ppComm, ppRelatv, ppProd, ppReport,
  ppVar, wwdblook;

type
  TFRepAnulApo = class(TForm)
    Panel1: TPanel;
    edtAno: TEdit;
    edtMes: TEdit;
    Label2: TLabel;
    bbtnImprimir: TfcShapeBtn;
    fcShapeBtn2: TfcShapeBtn;
    ppRAnulaApo: TppReport;
    ppbdeAnulaApo: TppBDEPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDBText13: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    Label3: TLabel;
    ppDBCalc1: TppDBCalc;
    ppLabel14: TppLabel;
    ppDBText14: TppDBText;
    ppLabel16: TppLabel;
    ppLanomes: TppLabel;
    Label4: TLabel;
    dblUproceso: TwwDBLookupCombo;
    Panel2: TPanel;
    Edit2: TEdit;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel15: TppLabel;
    ppDBText1: TppDBText;
    ppDBCalc2: TppDBCalc;
    ppLabel17: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppDBText3: TppDBText;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBText15: TppDBText;
    ppLabel18: TppLabel;
    ppDBText16: TppDBText;
    ppLabel19: TppLabel;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppLabel20: TppLabel;
    ppDBText19: TppDBText;
    chkTodo: TCheckBox;
    ppDBCalc4: TppDBCalc;
    ppShape1: TppShape;
    ppDBCalc3: TppDBCalc;
    ppShape2: TppShape;
    procedure FormActivate(Sender: TObject);
    procedure bbtnImprimirClick(Sender: TObject);
    procedure fcShapeBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtAnoChange(Sender: TObject);
    procedure edtAnoExit(Sender: TObject);
    procedure edtMesChange(Sender: TObject);
    procedure edtMesExit(Sender: TObject);
    procedure edtMesKeyPress(Sender: TObject; var Key: Char);
    procedure edtAnoKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbcUsuarioChange(Sender: TObject);
    procedure dbcUsuarioExit(Sender: TObject);
    procedure dblUprocesoChange(Sender: TObject);
    procedure chkTodoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRepAnulApo: TFRepAnulApo;

implementation

uses APODM;

{$R *.dfm}

procedure TFRepAnulApo.FormActivate(Sender: TObject);
VAR XSQL:STRING;
begin
 //Combo de Unidad de Proceso
  xsql:='SELECT UPROID,UPRONOM FROM APO102';
  dm1.cdsQry.Close;
  dm1.cdsQry.DataRequest(XSQL);
  dm1.cdsQry.Open;
  dblUproceso.LookupTable  := dm1.cdsQry;
  dblUproceso.LookupField  := 'UPROID';
  chkTodo.Checked:=False;

end;

procedure TFRepAnulApo.bbtnImprimirClick(Sender: TObject);
var xsql:string;
begin
  if chkTodo.Checked then
     xsql:='SELECT * FROM APO313 WHERE  TO_CHAR(FECANULA,''YYYYMM'')='''+TRIM(edtAno.Text)+TRIM(edtMes.Text)+''' order by UPROID,USEID,TRANSNOPE'
  else
     xsql:='SELECT * FROM APO313 WHERE UPROID='''+TRIM(dblUproceso.Text)+''' AND TO_CHAR(FECANULA,''YYYYMM'')='''+TRIM(edtAno.Text)+TRIM(edtMes.Text)+''' order by UPROID,USEID,TRANSNOPE';

  DM1.cdsQry1.Close;
  DM1.cdsQry1.DataRequest(XSQL);
  DM1.cdsQry1.Open;
  ppbdeAnulaApo.DataSource := DM1.dsQry1;
  ppLanomes.Caption:= TRIM(edtAno.Text)+'-'+TRIM(edtMes.Text);
  ppRAnulaApo.Print;
end;

procedure TFRepAnulApo.fcShapeBtn2Click(Sender: TObject);
begin
CLOSE;
end;

procedure TFRepAnulApo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DM1.cdsQry.Close;
DM1.cdsQry.IndexFieldNames:='';
DM1.cdsQry1.Close;
DM1.cdsQry1.IndexFieldNames:='';
end;

procedure TFRepAnulApo.edtAnoChange(Sender: TObject);
begin
if Length(trim(edtAno.Text))<>0 then
 begin
   if ((StrToInt(edtAno.Text)<=0) or (StrToInt(edtAno.Text)<2003)) and (Length(trim(edtAno.Text))=4) then
     begin
       ShowMessage('El año de Cobranza debe ser mayor o igual al 2003');
       edtAno.SetFocus;
     end;
 End;
end;

procedure TFRepAnulApo.edtAnoExit(Sender: TObject);
begin
if Length(trim(edtAno.Text))<>0 then
  begin
    if ((StrToInt(edtAno.Text)<=0) or (StrToInt(edtAno.Text)<2003)) and (Length(trim(edtAno.Text))=4)   then
       begin
        ShowMessage('El año de Cobranza debe ser mayor o igual al 2003');
        edtAno.SetFocus;
       end;
  end;
end;

procedure TFRepAnulApo.edtMesChange(Sender: TObject);
begin
if Length(trim(edtMes.Text))<>0 then
 begin
  if ((StrToInt(edtMes.Text)<1) or (StrToInt(edtMes.Text)>12)) and (Length(trim(edtMes.Text))=2) then
     begin
       ShowMessage('El mes es inconsistente, debe ser entre 1 y 12');
       edtmes.SetFocus;
     end;
 end;
end;

procedure TFRepAnulApo.edtMesExit(Sender: TObject);
begin
if  Length(trim(edtMes.text))<>0 then
   begin
      if ((StrToInt(edtMes.Text)<1) or (StrToInt(edtMes.Text)>12)) and (Length(trim(edtMes.Text))=2)    then
       begin
        ShowMessage('El mes es inconsistente, debe ser entre 1 y 12');
        edtmes.SetFocus;
      end;
   end;
end;

procedure TFRepAnulApo.edtMesKeyPress(Sender: TObject; var Key: Char);
begin
if  key  in [' ','A'..'Z','a'..'z','°','|','!','"','#','$','%','&','/','(',')','=','?','\','¡','¿','@','¨','´','*','+','~','~','[',']','{','}','^','`','<','>',';',',',':','''','-','_'] Then
   begin
     Key :=#0;
   end;
end;

procedure TFRepAnulApo.edtAnoKeyPress(Sender: TObject; var Key: Char);
begin
if  key  in [' ','A'..'Z','a'..'z','°','|','!','"','#','$','%','&','/','(',')','=','?','\','¡','¿','@','¨','´','*','+','~','~','[',']','{','}','^','`','<','>',';',',',':','''','-','_'] Then
   begin
     Key :=#0;
   end;
end;

procedure TFRepAnulApo.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 Then
 if   (ActiveControl is TwwDBLookupCombo) or
      (ActiveControl is TCheckBox) then
      Begin
       Key:=#0;
       Perform(CM_DialogKey,VK_TAB,0);
      end
   else
      Begin
        Key:=#0;
        Perform(CM_DialogKey,VK_TAB,0);
      end;
end;

procedure TFRepAnulApo.dbcUsuarioChange(Sender: TObject);
begin
//edtUsuario.Text:=dm1.cdsQry.FieldByname('USERID').ASSTRING;
end;

procedure TFRepAnulApo.dbcUsuarioExit(Sender: TObject);
begin
//edtUsuario.Text:=dm1.cdsQry.FieldByname('USERID').ASSTRING;
end;

procedure TFRepAnulApo.dblUprocesoChange(Sender: TObject);
begin
if DM1.cdsQry.Locate('UPROID',TRIM(dblUproceso.Text),[]) THEN
   Edit2.Text:= DM1.cdsQry.FieldByName('UPRONOM').AsString
  ELSE
   Edit2.Text:= '';
end;

procedure TFRepAnulApo.chkTodoClick(Sender: TObject);
 begin
   if chkTodo.Checked then dblUproceso.Enabled := False else dblUproceso.Enabled := True;

 end;
end.
