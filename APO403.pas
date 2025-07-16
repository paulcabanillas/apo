unit APO403;

// Inicio Uso Estándares: 01/08/2011
// Unidad               : APO403
// Formulario           : FProvision
// Fecha de Creación    : 15/12/2003
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Generación de Provision de Aportes
// Actualizaciones      :
// HPC_201502_APO       : Cambiar el formato de Fecha

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcButton, fcImgBtn, fcShapeBtn, StdCtrls, wwdblook, Wwdbspin, Mask,
  wwdbedit, ComCtrls, ExtCtrls;

type
  TFProvision = class(TForm)
    pnlCabecera: TPanel;
    Panel5: TPanel;
    dbeMonto: TwwDBEdit;
    spdAno: TwwDBSpinEdit;
    spdMes: TwwDBSpinEdit;
    dblcMoneda: TwwDBLookupCombo;
    edtMoneda: TEdit;
    Z2bbtnAceptar: TfcShapeBtn;
    Z2bbtnCancelar: TfcShapeBtn;
    lblEstado: TLabel;
    dbeNumProv: TwwDBEdit;
    dbeTotProv: TwwDBEdit;
    procedure spdMesExit(Sender: TObject);
    procedure dblcMonedaExit(Sender: TObject);
    procedure Z2bbtnAceptarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure spdAnoExit(Sender: TObject);
    procedure dbeMontoExit(Sender: TObject);
    procedure Z2bbtnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FProvision: TFProvision;
  xCrea:boolean;
implementation

uses APODM;

{$R *.DFM}

procedure TFProvision.spdMesExit(Sender: TObject);
var
  sWhere:string;
begin
  sWhere:= 'APOANO = '+ quotedstr(spdAno.text)+' AND APOMES = '+ quotedstr(DM1.StrZero(spdMes.text,2)) ;
  dblcmoneda.text:=dm1.DisplayDescrip('prvTGE','APO117','TMONID,APOVALOR ',sWhere,'TMONID');
  dbeMonto.text:=FloattoStr(dm1.cdsQry.FieldbyName('APOVALOR').AsFloat);
  dblcMonedaExit(SENDER);
  if xcrea then exit;
  if Z2bbtnCancelar.Focused then exit;
  if spdMes.text='' then
  begin
    spdMes.setfocus;
    raise exception.create('Error, Ingrese el mes a Provisionar');
  end;



end;

procedure TFProvision.dblcMonedaExit(Sender: TObject);
var
  sWhere:string;
begin
  sWhere:= 'TMONID = '+ quotedstr(dblcMoneda.text) ;
  edtMoneda.text:=dm1.DisplayDescrip('prvTGE','TGE103','TMONDES',sWhere,'TMONDES');
end;

procedure TFProvision.Z2bbtnAceptarClick(Sender: TObject);
VAR
  xSQL:string;
begin
  if length(spdAno.Text)=0 then
  begin
    ShowMessage('Falta registrar Año');
    spdAno.SetFocus;
    exit;
  end;
  if length(spdMes.Text)=0 then
  begin
    ShowMessage('Falta registrar Mes');
    spdMes.SetFocus;
    exit;
  end;
  if length(dbeMonto.Text)=0 then
  begin
    ShowMessage('Falta registrar Monto del Aporte');
    dbeMonto.SetFocus;
    exit;
  end;
  xSQL:='SELECT * FROM APO119 WHERE ANO='+quotedstr(spdAno.text)
       +' AND MES='+quotedstr(dm1.StrZero(spdMes.text,2))
       +' AND MODULO='+quotedstr('PRVAPORTES');
  DM1.FILTRACDS(DM1.cdsQry,xSQL);
  if DM1.cdsQry.RecordCount>0 then
  begin
    spdAno.SetFocus;
    Raise Exception.create('Provision ya fue generada para ese periodo');
  end
  else
  begin
    xSQL:='INSERT INTO APO119 (CIAID,ANO,MES,FINICIO,MODULO,'
         +'USUARIO,FREG,HREG)'
         +'VALUES ('+quotedstr('01')+','+quotedstr(spdAno.text)+','+quotedstr(dm1.StrZero(spdMes.text,2))+','
        // Inicio HPC_201502_APO - Cambiar el formato de Fecha
         +'TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYYY')+'),'+quotedstr('PRVAPORTES')+','+quotedstr(DM1.wUsuario)+','
//         +'SYSDATE,'+quotedstr('PRVAPORTES')+','+quotedstr(DM1.wUsuario)+','
         +'TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYYY')+'),SYSDATE)';
        // Fin    HPC_201502_APO - Cambiar el formato de Fecha
/////
//         +'SYSDATE,SYSDATE)';
    try
       DM1.DCOM1.AppServer.IniciaTransaccion;
       DM1.ExecSQL(xSQL);
       DM1.DCOM1.AppServer.GrabaTransaccion;
       ShowMessage('Provisión Generada');
     except
       DM1.DCOM1.AppServer.RegresaTransaccion;
       ShowMessage('Actualización No Realizada');
       exit;
     end;
   end;

  lblEstado.visible:=true;
  lblEstado.Caption:='Procesando';
  xSQL:='INSERT INTO APO301('
        +' TRANSID, ASOID  , ASOCODMOD, ASOAPENOM,'
        +' USEID  , USEABR , UPROID ,   '
        +' UPROABR, UPAGOID, UPAGOABR,  '
        +' DPTOID , DPTOABR, TRANSANO,  '
        +' TRANSMES,TMONID , TRANSPRV, TRANSINTID,'
        +' USUARIO, '
        +' FREG   , HREG ) '
        +' SELECT '+ quotedstr('PROVISION')+',ASOID,ASOCODMOD,ASOAPENOM,'
        +'   USEID  , USEABR , UPROID , '
        +'   UPROABR, UPAGOID, UPAGOABR,'
        +'   DPTOID , DPTOABR,'+ quotedstr(spdAno.text)+','
        +    quotedstr(DM1.StrZero(spdMes.text,2))+','+quotedstr(dblcMoneda.text)+','+ quotedstr(dbeMonto.text)+','+ quotedstr('PRV')+','
        +    quotedstr(DM1.wUSUARIO)+','
        // Inicio HPC_201502_APO - Cambiar el formato de Fecha
        +    'TO_DATE(SYSDATE,'+QuotedStr('DD/MM/YYYY')+', SYSDATE)'
        // Fin    HPC_201502_APO - Cambiar el formato de Fecha

///        +   'SYSDATE, SYSDATE '
        +' FROM APO301 '
        +' WHERE TRANSANO='+quotedstr(spdAno.text)+' AND TRANSMES='+quotedstr(dm1.strzero(INTTOSTR(STRTOINT(spdMES.text)-2),2))+' AND TRANSINTID='+quotedstr('APO');
   try
     DM1.DCOM1.AppServer.IniciaTransaccion;
     DM1.ExecSQL(xSQL);
     DM1.DCOM1.AppServer.GrabaTransaccion;
   except
     DM1.DCOM1.AppServer.RegresaTransaccion;
     ShowMessage('Actualización No Realizada');
     exit;
   end;
   xSQL:='SELECT COUNT(ASOID) NUM, SUM(TRANSPRV) TOTAL FROM APO301'
         +' WHERE TRANSANO=' +quotedstr(spdAno.text)
         +' AND TRANSMES='+quotedstr(dm1.strzero(spdMES.text,2))
         +' AND TRANSINTID='+quotedstr('PRV');
   DM1.FILTRACDS(dm1.cdsQry,xSql);
   lblEstado.Caption:='';
   dbeNumProv.text:=inttostr(DM1.cdsQry.fieldbyname('NUM').asinteger);
   dbeTotProv.text:=floattostrf(DM1.cdsQry.fieldbyname('TOTAL').asfloat,ffCurrency, 10, 2);
end;

procedure TFProvision.FormActivate(Sender: TObject);
var
  Present: TDateTime;
  nYear, nMonth, nDay : word;
begin
  xCrea:=true;
  lblEstado.Caption:='';
  Present:=now;
  decodedate(present, nYear, nMonth, nDay);
  spdAno.Value:= nYear;
  spdMes.Value:= nMonth;
  spdAno.SelectAll;
  spdAno.SetFocus;
  xCrea:=false;
end;

procedure TFProvision.spdAnoExit(Sender: TObject);
begin
  if xcrea then exit;
  if Z2bbtnCancelar.Focused then exit;
  if spdAno.text='' then
  begin
    spdAno.SetFocus;
    Raise Exception.create('Error, Debe ingresar el Año');
  end;
end;

procedure TFProvision.dbeMontoExit(Sender: TObject);
var
  xSQL:string;
begin
  xSQL:='SELECT APOVALOR FROM APO117 WHERE APOANO='+QuotedStr(spdAno.text)+ ' AND APOMES='+QuotedStr(DM1.StrZero(spdMes.Text,2));
  dm1.Filtracds(dm1.cdsQry,xSql);
  if  dbeMonto.text='' then
  begin
     dbeMonto.SetFocus;
     Raise Exception.create('Ingrese el Monto del Aporte');
  end;
  if StrToFloat(dbeMonto.text)<0 then
  begin
    dbeMonto.SetFocus;
    Raise Exception.Create('Monto del Aporte no puede ser negativo');
  end;
  if StrToFloat(dbeMonto.text)<> DM1.cdsQry.FieldByName('APOVALOR').AsFloat THEN
  begin
    ShowMessage('El Monto del Aporte para el período '+#13
                          +'Año '+spdAno.Text +' Mes '+spdMes.Text+' es '+FloatToStr(DM1.cdsQry.FieldByName('APOVALOR').AsFloat));

  end;

end;

procedure TFProvision.Z2bbtnCancelarClick(Sender: TObject);
begin
  self.close;
end;

end.
