//** modificado desde el 02/11/2002 hasta el 04/11/2002 por PJSV
unit APO708;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  wwdblook, Wwdbdlg, fcButton, fcImgBtn, fcShapeBtn, StdCtrls, Mask,
  wwdbedit, ExtCtrls,wwclient, wwdbdatetimepicker,db;

type
  TFToolCamOpe = class(TForm)
    pnltool: TPanel;
    dbeUSE: TwwDBEdit;
    Z2bbtnAceptar: TfcShapeBtn;
    dblcduse: TwwDBLookupComboDlg;
    dblcdNumOpe: TwwDBEdit;
    pnlNuevo: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    dbeNumOpe: TwwDBEdit;
    Z2bbtnNuevo: TfcShapeBtn;
    Z2bbtnCancela: TfcShapeBtn;
    Label3: TLabel;
    dbeFecOpe: TwwDBDateTimePicker;
    dblcdFecOpe: TwwDBDateTimePicker;
    dblcdUPro: TwwDBLookupComboDlg;
    dbeUPro: TwwDBEdit;
    dblcdUpag: TwwDBLookupComboDlg;
    dbeUpag: TwwDBEdit;
    edtAsociado: TEdit;
    lblBanco: TLabel;
    dblcdbanco: TwwDBLookupCombo;
    edtBanco: TwwDBEdit;
    lblNCta: TLabel;
    dblcdCuenta: TwwDBLookupCombo;
    lblAgencia: TLabel;
    dblcAgencia: TwwDBLookupComboDlg;
    edtAgencia: TEdit;
    procedure Z2bbtnNuevoClick(Sender: TObject);
    procedure Z2bbtnCancelaClick(Sender: TObject);
    procedure Z2bbtnAceptarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dblcduseExit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure pnlNuevoExit(Sender: TObject);
    procedure dblcdUProExit(Sender: TObject);
    procedure dblcdUpagExit(Sender: TObject);
    procedure edtAsociadoExit(Sender: TObject);
    procedure dblcdbancoExit(Sender: TObject);
    procedure dblcAgenciaExit(Sender: TObject);
  private
    wUproceso,wUpago,wUse : String;
    Function  ExisteEnAPO401:Boolean;
    Procedure InsertaEnApo401;
    Procedure ActualizaEnApo401;
    Procedure ActualizaEnAportes;
    function  NumDevecesOK:Boolean;
    procedure Limpia;
  public
     XSQL,xWhere1:STRING;
     Salir:Boolean;
     xCds:TwwClientDataSet;
  end;

var
  FToolCamOpe: TFToolCamOpe;

implementation

uses APO001, APODM;

{$R *.DFM}

procedure EjecutaSQL(cds:TwwClientDataSet;SQL:String);
begin
   cds.Close;
   cds.DataRequest(SQL);
   cds.Open;
end;

Function TFToolCamOpe.ExisteEnAPO401:Boolean;
var SQL:String;
begin
  Result:=False;
  SQL:='SELECT * FROM APO401 '+
       'WHERE USEID='''+dblcduse.Text+''' '+
       'AND TRANSNOPE='''+dblcdNumOpe.Text+''' '+
       'AND TRANSFOPE='''+dblcdFecOpe.Text+''' ';
  EjecutaSQL(xCds,SQL);
  if xCds.RecordCount > 0 then Result:=True;
end;

Procedure TFToolCamOpe.InsertaEnApo401;
var SQL:String;
begin
  SQL:='INSERT INTO APO401 '+
       'VALUES('''+
       dblcduse.Text+''','''+
       dbeNumOpe.Text+''','''+
       dbeFecOpe.Text+''','''+
       dblcdNumOpe.Text+'-'+dblcdFecOpe.Text+'*'')';
  Dm1.DCOM1.AppServer.ejecutaSQL(SQL);
end;

Procedure TFToolCamOpe.ActualizaEnApo401;
var SQL:String;
begin
  SQL:='UPDATE APO401 '+
       'SET TRANSNOPE='''+dbeNumOpe.text+''', '+
       'TRANSFOPE='''+dbeFecOpe.text+''', '+
       'ANTES=CONCAT(ANTES,'''+dblcdNumOpe.Text+'-'+dblcdFecOpe.Text+'*'') '+
       'WHERE USEID='''+dblcduse.Text+''' '+
       'AND TRANSNOPE='''+dblcdNumOpe.Text+''' '+
       'AND TRANSFOPE='''+dblcdFecOpe.Text+''' ';
  Dm1.DCOM1.AppServer.ejecutaSQL(SQL);
end;

Procedure TFToolCamOpe.ActualizaEnAportes;
var
 SQL:String;
begin
  // Actualizando la fec y Num de Operacion en Aportes
  // Unidad de Proceso y Unidad de Pago
  //** 02/11/2002 - PJSV
  SQL:='UPDATE APO301 '+
       'SET TRANSNOPE='''+dbeNumOpe.text+''', '+
       'TRANSFOPE='''+dbeFecOpe.text+''' '+
       'WHERE '+xWhere1;
       {USEID='''+dblcduse.Text+''' '+
       'AND TRANSNOPE='''+dblcdNumOpe.Text+''' '+
       'AND TRANSFOPE='''+dblcdFecOpe.Text+''' ';}
  Dm1.DCOM1.AppServer.ejecutaSQL(SQL);
end;

function TFToolCamOpe.NumDeVecesOK:Boolean;
Var Cad:String;
    n:ShortInt;
begin
  n:=0;
  Cad:=xCds.FieldByName('ANTES').AsString;
  While Pos('*',Cad)>0 do begin
    Cad[Pos('*', Cad)] := '0';
    n:=n+1;
  end;
  if n<3 then Result:=True else
  Result:=False;
end;

procedure TFToolCamOpe.Z2bbtnNuevoClick(Sender: TObject);
VAR
    HayVacio:Boolean;
    SQL:String;
begin
  // Verificando que ingresen Fec. y Num. de Operacion
  HayVacio:=False;
  if (Trim(dbeFecOpe.Text)='') or  (Trim(dbeNumOpe.Text)='') then
      HayVacio:=True;
  if HayVacio then begin
    ShowMessage('! La Fecha y el Número de Operación Nuevos son Obligatorios !');
    exit;
  end;
  Screen.Cursor:=crHourGlass;
  // Operaciones en BD
  if ExisteEnAPO401 then
    if NumDeVecesOK then
     ActualizaEnApo401
    else begin
     ShowMessage('Se ha Excedido en el Nro. de cambios (3 es el Maximo)');
     exit
    end
  else
     InsertaEnApo401;
  ActualizaEnAportes;
  Screen.Cursor:=crDefault;
  // Saliendo
  //** 02/11/2002 - PJSV
  xSQL:= 'SELECT ASOAPENOM,USEID,TRANSNOPE,TRANSFOPE '+
         'FROM APO301 WHERE '+xWhere1;
  Screen.Cursor:=crHourGlass;
  Mtx.UsuarioSQL.Clear;
  Mtx.UsuarioSQL.Add(XSQL);
  Mtx.NewQuery;
  //** 04/11/2002 - PJSV
  limpia;
  Screen.Cursor:=crDefault;
  Salir:=true;
  pnlNuevo.Parent:=FToolCamOpe;
end;

//** 02/11/2002 - PJSV
procedure TFToolCamOpe.Z2bbtnCancelaClick(Sender: TObject);
Var SQL:String;
begin
 //** 04/11/2002 - PJSV
 Limpia;
 Salir:=true;
 pnlNuevo.Parent:=FToolCamOpe;
 SQL:='SELECT ASOAPENOM,USEID,TRANSNOPE,TRANSFOPE FROM APO301 WHERE ASOAPENOM = '+quotedstr('a');
 Screen.Cursor:=crHourGlass;
 Mtx.UsuarioSQL.Clear;
 Mtx.UsuarioSQL.Add(SQL);
 Mtx.NewQuery;
 Screen.Cursor:=crDefault;
end;

//** 02/11/2002 - PJSV
procedure TFToolCamOpe.Z2bbtnAceptarClick(Sender: TObject);
begin
  xWhere1:='';
  if (Trim(dblcdUPro.Text)='') OR
     (Trim(dblcdUpag.Text)='') OR
     (Trim(dblcdNumOpe.Text)='') OR
     (Trim(dblcdFecOpe.Text)='') then begin
     ShowMessage('Por lo menos DEBE Ingresar (U.Proceso,U.Pago, Número y Fecha de Operación)');
     exit;
  end;

  // Condiciones del Panel de Seleccion

  // Unidad de Proceso y Unidad de Pago
  xWhere1:=' UPROID='+quotedstr(dblcdUPro.Text)+
           ' AND UPAGOID='+quotedstr(dblcdUPag.Text);
  // Use
  if trim(dblcdUse.Text)<>'' then
     xWhere1:=xWhere1+' AND USEID='+quotedstr(dblcdUse.Text);

  // Asoapenom
  If Trim(edtAsociado.text) <> '' then
     xWhere1:=xWhere1+' AND ASOAPENOM LIKE '+quotedstr(edtAsociado.text+'%');

  // Banco
  If trim(dblcdbanco.text) <> '' then
     xWhere1:=xWhere1+' AND BANCOID='+quotedstr(dblcdbanco.Text);

  // Cta cte del banco
  If trim(dblcdCuenta.text) <> '' then
     xWhere1:=xWhere1+' AND CCBCOID='+quotedstr(dblcdCuenta.Text);

  // Agencia
  If trim(dblcAgencia.text) <> '' then
     xWhere1:=xWhere1+' AND AGENBANCOID='+quotedstr(dblcAgencia.text);

  // Num Ope
  if trim(dblcdNumOpe.Text)<>'' then
     xWhere1:=xWhere1+' AND TRANSNOPE='+quotedstr(dblcdNumOpe.Text);
  // fecah de operacion
  if trim(dblcdFecOpe.Text)<>'' then
     xWhere1:= xWhere1+' AND TRANSFOPE='+quotedstr(dblcdFecOpe.Text);

  xWhere1 := xWhere1 + ' AND ('+wReplacCeros+'(FCIERRE,''N'') = ''N'' AND '
                     +wReplacCeros+'(CNTCONTA,''N'') = ''N'')';

  xSQL:= 'SELECT ASOAPENOM,USEID,TRANSNOPE,TRANSFOPE '+
         'FROM APO301 WHERE '+xWhere1;
   Screen.Cursor:=crHourGlass;
   Mtx.UsuarioSQL.Clear;
   Mtx.UsuarioSQL.Add(XSQL);
   Mtx.NewQuery;
   Screen.Cursor:=crDefault;
  if DM1.cdsQry1.RecordCount=0 then
   begin
     ShowMessage('No Hay Aportes con esta Fecha y Número de operación');
     exit;
   end;

  // Llamando al Panel de Actualización
  pnlNuevo.Left:=(Fprincipal.ClientWidth div 2)-(pnlNuevo.ClientWidth div 2);
  pnlNuevo.Top:=(Fprincipal.ClientHeight  div 2)-(pnlNuevo.ClientHeight div 2);
  dbeFecOpe.Clear;
  dbeNumOpe.Clear;
  pnlNuevo.Parent:=Mtx.FMant;
  dbeNumOpe.setfocus;
end;

procedure TFToolCamOpe.FormCreate(Sender: TObject);
begin
  Salir:=False;
  xcds:=TwwClientDataSet.Create(Self);
  xcds.RemoteServer:=DM1.DCOM1;
  xcds.ProviderName:='dspQry';
end;

procedure TFToolCamOpe.dblcduseExit(Sender: TObject);
begin
 if trim(dblcdUse.Text)='' then
   dbeUse.Text :=''
 else
   dbeUse.Text :=Dm1.cdsUse.fieldByName('USENOM').AsString;
 wUse := dblcduse.text;
end;

procedure TFToolCamOpe.FormDestroy(Sender: TObject);
begin
 xcds.Close;
 xcds.Free;
end;

procedure TFToolCamOpe.pnlNuevoExit(Sender: TObject);
begin
 if Not FToolCamOpe.salir then
   dbeNumOpe.setfocus;
end;

procedure TFToolCamOpe.dblcdUProExit(Sender: TObject);
begin
 if trim(dblcdUPro.Text)='' then
  begin
   dbeUpro.Clear;
   DM1.Filtracds(DM1.cdsUpro,  'SELECT UPROID,UPRONOM  FROM APO102');
   DM1.Filtracds(DM1.cdsUPago, 'SELECT UPAGOID,UPAGONOM FROM APO103');
   DM1.Filtracds(DM1.cdsUse,   'SELECT USEID, USENOM   FROM APO101');
  end
 else
  begin
   dbeUpro.text:=DM1.cdsUpro.FieldByName('UPRONOM').asstring;
   DM1.Filtracds(DM1.cdsUPago, 'SELECT UPAGOID,UPAGONOM FROM APO103 WHERE UPROID='''+dblcdUpro.Text+'''');
   DM1.Filtracds(DM1.cdsUse,   'SELECT USEID, USENOM   FROM APO101 WHERE UPROID='''+dblcdUpro.Text+'''');
  end;
 wUproceso := dblcdUPro.text;
 dblcdUpag.Clear;
 dbeUPag.Clear;
 dbeUse.Clear;
 dblcdUse.Clear;
end;

procedure TFToolCamOpe.dblcdUpagExit(Sender: TObject);
begin
 if Trim(dblcdUPag.Text)='' then begin
  dbeUPag.Clear;
  DM1.Filtracds(DM1.cdsUPago, 'SELECT UPAGOID,UPAGONOM FROM APO103');
  DM1.Filtracds(DM1.cdsUse,   'SELECT USEID, USENOM   FROM APO101');
 end
 else begin
  dbeUPag.Text:=DM1.cdsUPago.FieldByName('UPAGONOM').AsString;
  DM1.FiltraCds(DM1.cdsUse,   'SELECT USEID, USENOM   FROM APO101 WHERE UPAGOID='''+dblcdUPag.Text+'''');
 end;
 wUpago := dblcdUpag.text;
 dbeUse.Clear;
 dblcdUse.Clear;
end;

//** 02/11/2002 - PJSV
procedure TFToolCamOpe.edtAsociadoExit(Sender: TObject);
var
  xSQL: String;
  xTrue : Boolean;
begin
 If Length(Trim(edtAsociado.Text))>0 Then
  Begin
    xTrue := False;
     xSQL:='SELECT * FROM APO301 WHERE ';
    //** unidad de proceso
    If (wUproceso <> '')  then
     begin
      xSQL:= xSql + ' UPROID ='+quotedstr(wUproceso);
      xTrue := True;
     end
    else
      xTrue := False;
    //** Unidad de pago
    If (wUpago <> '') then
     begin
      If xTrue then
        xSQL:= xSql + ' AND UPAGOID ='+quotedstr(wUpago)
      else
        xSQL:= xSql + ' UPAGOID ='+quotedstr(wUpago);
      xTrue := True;
     end
    else
      xTrue := False;

    //** Use
    If (wUse <> '') then
     begin
      If xTrue then
        xSQL:= xSql + ' AND USEID ='+quotedstr(wUse)
      else
        xSQL:= xSql + ' USEID ='+quotedstr(wUse);
      xTrue := True;
     end
    else
      xTrue := False;

    //** Asociado
    If xTrue then
     xSql := xSql + ' AND ASOAPENOM LIKE '+QuotedStr(Trim(edtAsociado.Text+'%'))
    else
     xSql := xSql + ' ASOAPENOM LIKE '+QuotedStr(Trim(edtAsociado.Text+'%'));

     xSql := xSql + ' AND ('+wReplacCeros+'(FCIERRE,''N'') = ''N'' AND '
                    +wReplacCeros+'(CNTCONTA,''N'') = ''N'')';

    Screen.Cursor:=crHourGlass;
    Mtx.UsuarioSQL.Clear;
//    Mtx.FMant.wTabla:='APO301';
    Mtx.UsuarioSQL.Add(xSQL);
    Mtx.NewQuery;
    Screen.Cursor:=crDefault;
  End;
end;

//** 02/11/2002 - PJSV
procedure TFToolCamOpe.dblcdbancoExit(Sender: TObject);
var
 sWhere : String;
begin
  sWhere:= 'BANCOID='''+dblcdBanco.Text+'''' ;
  edtBanco.text:=dm1.DisplayDescrip('prvTGE','TGE105','BANCONOM, CLAUXID, AUXID',sWhere,'BANCONOM');
//** 04/11/2002 - PJSV
{  if length(dblcdbanco.text)=0 then
   begin
    Raise Exception.create('Banco Errado, Seleccione el Banco');
    exit;
   end;
}
  xSql := 'SELECT * FROM TGE106 WHERE BANCOID='+
          quotedstr(dblcdbanco.text)+' AND CIAID='+quotedstr('02');
  DM1.cdsCBcos.close;
  DM1.cdsCBcos.DataRequest(xSql);
  DM1.cdsCBcos.open;
  dblcdCuenta.Enabled := DM1.cdsCBcos.recordcount > 0;

  xSql := 'SELECT AGENBCOID,AGENBCODES FROM COB102 WHERE BANCOID='+quotedstr(dblcdbanco.text);
  DM1.cdsAgencias.close;
  DM1.cdsAgencias.Datarequest(xSql);
  DM1.cdsAgencias.open;
  dblcAgencia.Enabled := DM1.cdsAgencias.recordcount > 0;

  if length(dblcdbanco.text)=0 then
   begin
    dblcAgencia.clear;
    edtAgencia.clear;
   end;

end;

//** 02/11/2002 - PJSV
procedure TFToolCamOpe.dblcAgenciaExit(Sender: TObject);
var
 xWhere : String;
begin
  xWhere := 'AGENBCOID = '+ QuotedStr(dblcAgencia.Text) ;
  edtAgencia.Text:=DM1.DisplayDescrip('prvTGE','COB102','AGENBCODES',xWhere,'AGENBCODES');
end;

//** 04/11/2002 - PJSV
procedure TFToolCamOpe.Limpia;
begin
 dbeFecOpe.ClearDateTime;
 dbeNumOpe.Clear;
 dblcdUse.Clear;
 dbeUse.Clear;
 dblcdNumOpe.Clear;
 dblcdFecOpe.ClearDateTime;
 dbeUpag.Clear;
 dblcdUpag.Clear;
 dbeUPro.Clear;
 dblcdUPro.Clear;
 dblcdbanco.Clear;
 edtBanco.Clear;
 dblcdCuenta.Clear;
 dblcAgencia.Clear;
 edtAgencia.Clear;
 edtAsociado.Clear;
end;
//**

end.
