unit APO702;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Wwdbspin, fcButton, fcImgBtn, fcShapeBtn, StdCtrls, Mask, wwdbedit,
  ExtCtrls;

type
  TFToolProvision = class(TForm)
    pnlTool: TPanel;
    dbeInteres: TwwDBEdit;
    Z2bbtnAceptar: TfcShapeBtn;
    dbeBonus: TwwDBEdit;
    spdAnoBase: TwwDBSpinEdit;
    spdMesBase: TwwDBSpinEdit;
    spdAnoIni: TwwDBSpinEdit;
    spdMesIni: TwwDBSpinEdit;
    spdNumPer: TwwDBSpinEdit;
    lblAnoProv: TLabel;
    lblMesProv: TLabel;
    lblAno: TLabel;
    lblMes: TLabel;
    lblPeri: TLabel;
    lblInt: TLabel;
    lblBon: TLabel;
    procedure Z2bbtnAceptarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure spdMesBaseExit(Sender: TObject);
    procedure spdMesIniExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CalcPrv;
  end;

var
  FToolProvision: TFToolProvision;
  xanobase,xmesbase,xano:string;
  xinteres,xbonus:real;
  xnumper,xmes:integer;
  xSql:string;

implementation

uses
   APO001,APODM;

{$R *.DFM}

procedure TFToolProvision.CalcPrv;
var
  i : integer;
begin
  xAnoBase:= spdAnoBase.text;
  xMesBase:= spdMesBase.text;
  xmes    := StrToInt(spdmesini.text);
  xnumper := StrToInt(spdNumPer.text);
  xinteres:= StrToFloat(dbeinteres.text);
  xbonus	:= StrToFloat(dbebonus.text);

  xSQL:='SELECT A.UPROID, A.UPAGOID, A.USEID, B.USENOM ';
  for i:=1 to xnumper do
  begin
    case xmes of
       1: xSql:= xsql+', SUM(NVL(A.SALDO,0))*'+FloatToStr(xInteres)+' AS ENEINT';
       2: xSql:= xsql+', SUM(NVL(A.SALDO,0))*'+FloatToStr(xInteres)+' AS FEBINT';
       3:	xSql:= xsql+', SUM(NVL(A.SALDO,0))*'+FloatToStr(xInteres)+' AS MARINT, SUM(NVL(A.SALDO,0))*'+FloatToStr(xBonus) +' AS MARBON';
       4:	xSql:= xsql+', SUM(NVL(A.SALDO,0))*'+FloatToStr(xInteres)+' AS ABRINT';
       5:	xSql:= xsql+', SUM(NVL(A.SALDO,0))*'+FloatToStr(xInteres)+' AS MAYINT';
       6:	xSql:= xsql+', SUM(NVL(A.SALDO,0))*'+FloatToStr(xInteres)+' AS JUNINT, SUM(NVL(A.SALDO,0))*'+FloatToStr(xBonus) +' AS JUNBON';
       7:	xSql:= xsql+', SUM(NVL(A.SALDO,0))*'+FloatToStr(xInteres)+' AS JULINT';
       8:	xSql:= xsql+', SUM(NVL(A.SALDO,0))*'+FloatToStr(xInteres)+' AS AGOINT';
       9:	xSql:= xsql+', SUM(NVL(A.SALDO,0))*'+FloatToStr(xInteres)+' AS SETINT, SUM(NVL(A.SALDO,0))*'+FloatToStr(xBonus) +' AS SETBON';
       10:xSql:= xsql+', SUM(NVL(A.SALDO,0))*'+FloatToStr(xInteres)+' AS OCTINT';
       11:xSql:= xsql+', SUM(NVL(A.SALDO,0))*'+FloatToStr(xInteres)+' AS NOVINT';
       12:xSql:= xsql+', SUM(NVL(A.SALDO,0))*'+FloatToStr(xInteres)+' AS DICINT, SUM(NVL(A.SALDO,0))*'+FloatToStr(xBonus) +' AS DICBON';
    end;
    if xnumper=1 then
      exit;
    xmes := xmes+1;
    if xmes = 13 then
      xmes:=1;
    xinteres:=(xinteres + 1) * xinteres;
    xbonus:=(xbonus + 1) * xbonus;
    //     i:=i+1 ;
  end;
  xSQL:=xSQL+ ' FROM APO301 A, APO101 B '+
              'WHERE TRANSINTID='+quotedstr('APO')+' '+
              'AND TRANSANO='+quotedstr(xanobase)+' '+
              'AND TRANSMES='+quotedstr(dm1.strzero(xmesbase,2))+' '+
              'AND A.USEID=B.USEID '+
              'GROUP BY A.USEID, A.UPROID, A.UPAGOID, B.USENOM';
  //dbeprueba.text:=xsql;
end;

procedure TFToolProvision.Z2bbtnAceptarClick(Sender: TObject);
begin
  {if (Length(Trim(dbeInteres.Text))=0) or
     (Length(Trim(dbeBonus.Text))=0) Then
  begin
    xSQL:='SELECT APOANO, APOMES, INTERES, BONUS '+
          'FROM APO117 '+
          'WHERE APOANO='+QuotedStr(spdAnoBase.Text)+' AND '+
          'APOMES='+QuotedStr(spdMesBase.Text);
    DM1.cdsQry2.Close;
    DM1.cdsQry2.DataRequest(xSQL);
    DM1.cdsQry2.Open;
    dbeInteres.Text:=DM1.cdsQry2.FieldByName('INTERES').AsString;
    dbeBonus.Text:=DM1.cdsQry2.FieldByName('BONUS').AsString;
    DM1.cdsQry2.Close;
  end;}

  Try
    Screen.Cursor:=crHourGlass;
    CalcPrv;

    Mtx.UsuarioSQL.Clear;
    Mtx.UsuarioSQL.Add(xSQL);
    Mtx.NewQuery;
  Finally
    Screen.Cursor:=crDefault;
  End;
end;

procedure TFToolProvision.FormCreate(Sender: TObject);
var
  Present : TDateTime;
  nYear, nMonth, nDay : word;
  xSQL : String;
begin
  Present:=now;
  decodedate(present,nYear,nMonth, nDay);
  spdAnoBase.Value:= nYear;
  spdMesBase.Value:= nMonth-4;

  if Length(Trim(spdMesBase.Text))=1 Then
  begin
    spdMesBase.Text:='0'+spdMesBase.Text;
  end;

  xSQL:='SELECT APOANO, APOMES, INTERES, BONUS '+
        'FROM APO117 '+
        'WHERE APOANO='+QuotedStr(spdAnoBase.Text)+' '+
        'AND APOMES='+QuotedStr(spdMesBase.Text);
  DM1.cdsQry2.Close;
  DM1.cdsQry2.DataRequest(xSQL);
  DM1.cdsQry2.Open;

  dbeInteres.Text:=DM1.cdsQry2.FieldByName('INTERES').AsString;
  dbeBonus.Text:=DM1.cdsQry2.FieldByName('BONUS').AsString;

  DM1.cdsQry2.Close;

  spdAnoIni.Value:= nYear;
  spdMesIni.Value:= nMonth-2;
  xAnoBase:= spdAnoBase.text;
  xMesBase:= spdMesBase.text;
  if Length(Trim(spdMesIni.Text))=1 Then
  begin
    spdMesIni.Text:='0'+spdMesIni.Text;
  end;
  spdNumPer.text:='3';
end;

procedure TFToolProvision.spdMesBaseExit(Sender: TObject);
begin
  if Length(Trim(spdMesBase.Text))=1 Then
  begin
    spdMesBase.Text:='0'+spdMesBase.Text;
  end;

  if (Length(Trim(spdMesBase.Text))<>0) and
     (Length(Trim(spdAnoBase.Text))<>0) then
  begin
    xSQL:='SELECT APOANO, APOMES, INTERES, BONUS '+
          'FROM APO117 '+
          'WHERE APOANO='+QuotedStr(spdAnoBase.Text)+' '+
          'AND APOMES='+QuotedStr(spdMesBase.Text);
    DM1.cdsQry2.Close;
    DM1.cdsQry2.DataRequest(xSQL);
    DM1.cdsQry2.Open;
    dbeInteres.Text:=DM1.cdsQry2.FieldByName('INTERES').AsString;
    dbeBonus.Text:=DM1.cdsQry2.FieldByName('BONUS').AsString;
    DM1.cdsQry2.Close;
  End;
end;

procedure TFToolProvision.spdMesIniExit(Sender: TObject);
begin
  if Length(Trim(spdMesBase.Text))=1 Then
  begin
    spdMesIni.Text:='0'+spdMesIni.Text;
  end;
end;

end.
