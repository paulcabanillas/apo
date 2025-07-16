unit APO302;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcButton, fcImgBtn, fcShapeBtn, wwdbdatetimepicker, StdCtrls, ComCtrls,
  wwriched, Mask, wwdbedit, wwdblook, ExtCtrls, Wwdbspin, Buttons,
  Wwdbigrd, Grids, Wwdbgrid, Wwdotdot, Wwdbdlg,wwClient;
type
  TFListaAutDisk = class(TForm)
    pnlCabecera: TPanel;
    Panel3: TPanel;
    pnlUse: TPanel;
    bbtnSigue: TfcShapeBtn;
    bbtnAtras: TfcShapeBtn;
    dbgListaAutdisk: TwwDBGrid;
    pbLista: TProgressBar;
    procedure bbtnAtrasClick(Sender: TObject);
    procedure bbtnSigueClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    //procedure LimpiaForm;
    //procedure LimpiaVent;
  public
    { Public declarations }
  end;

var
  FListaAutDisk      : TFListaAutDisk;
  xcrea, wActualizado: Boolean;
  wModo1, xASOAPENOM : String;
  xAno,xMes, xBanco, xTrans : String;
  xSaldoAnt, xSaldoTrimAnt : Real;

implementation

uses APODM, APO001, APO306, MsgDlgs;

{$R *.DFM}

{procedure TFListaAutDisk.LimpiaForm;
begin
end;

procedure TFListaAutDisk.LimpiaVent;
begin
end;}

procedure TFListaAutDisk.bbtnAtrasClick(Sender: TObject);
begin
  Close;
end;

procedure TFListaAutDisk.bbtnSigueClick(Sender: TObject);
var
  xSQL : String;
begin
  if Trim(DM1.cdsQry2.FieldByName('FL_TRANSF').AsString) = 'S' then
  begin
    ErrorMsg(Caption, 'Ya a sido Transferido la Información');
    Exit;
  end;
  xSQL:='SELECT COUNT(*) AS X '+
        'FROM COB304 '+
        'WHERE RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
        'AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+' '+
        'AND UPROID='+QuotedStr(Trim(DM1.cdsQry2.FieldByName('UPROID').AsString))+' '+
        'AND ARCHIVO='+QuotedStr(DM1.cdsQry2.FieldByName('ARCHIVO').AsString);
  DM1.cdsReporte1.Close;
  DM1.cdsReporte1.DataRequest(xSQL);
  DM1.cdsReporte1.Open;

  if DM1.cdsReporte1.FieldByName('X').AsInteger > 0 Then
  begin
    Information(Caption, 'Ya Existe Información Transferida');
    Exit;
  end;

  Screen.Cursor:=crHourGlass;
  pbLista.Position:=pbLista.Position+1;
  xSQL:='SELECT ARCHIVO '+
        'FROM COB310 '+
        'WHERE ARCHIVO='+QuotedStr(DM1.cdsQry2.FieldByName('ARCHIVO').AsString)+' '+
        'AND TRANSANO='+QuotedStr(Trim(Copy(DM1.cdsQry2.FieldByName('PERIODO').AsString,1,4)))+' '+
        'AND TRANSMES='+QuotedStr(Trim(Copy(DM1.cdsQry2.FieldByName('PERIODO').AsString,5,2)))+' '+
        'AND UPROID='+QuotedStr(Trim(DM1.cdsQry2.FieldByName('UPROID').AsString));

  DM1.cdsReporte1.IndexFieldNames:='';
  pbLista.Position:=pbLista.Position+1;
  DM1.cdsReporte1.Close;
  pbLista.Position:=pbLista.Position+1;
  DM1.cdsReporte1.DataRequest(xSQL);
  pbLista.Position:=pbLista.Position+1;
  DM1.cdsReporte1.Open;
  pbLista.Position:=pbLista.Position+1;
  Screen.Cursor:=crDefault;
  Screen.Cursor:=crHourGlass;
  pbLista.Position:=pbLista.Position+1;
  if DM1.cdsReporte1.RecordCount > 0 Then
  begin
    pbLista.Position:=pbLista.Position+1;
    xSQL:='INSERT INTO COB304 ('+
          'ASOID, ASOCODMOD, USEID, UPROID, UPAGOID, DPTOID, TRANSANO, '+
          'TRANSMES, TMONID, TRANSMTO, TRANSAPO, TRANSCUO, '+
          'BANCOID, CCBCOID, APOSEC, ASOAPENOM, ASOCODPAGO, '+
          'FORPAGOID, TRANSNOPE, TRANSFOPE, RCOBID, '+
          'DETRCOBID, USERCOBID, USUARIO, FREG, HREG, ARCHIVO) '+
          'SELECT '+
          'A.ASOID, A.ASOCODMOD, A.USEID, A.UPROID, A.UPAGOID, SUBSTR(B.DPTOID,1,2), A.TRANSANO, '+
          'A.TRANSMES, A.TMONID, (NVL(A.TRANSMTO,0)+NVL(A.CREMTO,0)), '+FloattoStr(DM1.cdsCobxUse.FieldByName('RCOBAPOVAL').AsFloat)+', '+
          '((NVL(A.TRANSMTO,0)+NVL(A.CREMTO,0))-'+FloattoStr(DM1.cdsCobxUse.FieldByName('RCOBAPOVAL').AsFloat)+'), '+
          'B.BANCOID, B.ASONCTA, A.APOSEC, A.ASOAPENOM, A.ASOCODPAGO, '+
           QuotedStr(DM1.cdsCobxUse.FieldByName('FORPAGOID').AsString)+', '+
           QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBNOPE').AsString)+', '+
           QuotedStr(DM1.cdsCobxUse.FieldByName('DOCFECHA').AsString)+', '+
           QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+', '+
           QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString)+', '+
           QuotedStr(DM1.cdsCobxUse.FieldByName('USERCOBID').AsString)+', '+
          'A.USUARIO, A.FREG, A.HREG, A.ARCHIVO '+
          'FROM COB310 A, APO201 B '+
          'WHERE A.TRANSANO='+QuotedStr(Copy(DM1.cdsQry2.FieldByName('PERIODO').AsString,1,4))+' '+
          'AND A.TRANSMES='+QuotedStr(Copy(DM1.cdsQry2.FieldByName('PERIODO').AsString,5,2))+' '+
          'AND A.ARCHIVO='+QuotedStr(DM1.cdsQry2.FieldByName('ARCHIVO').AsString)+' '+
          'AND A.UPROID='+QuotedStr(Trim(DM1.cdsQry2.FieldByName('UPROID').AsString))+' '+
          'AND A.ASOID=B.ASOID(+)';
    DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
    pbLista.Position:=pbLista.Position+1;
    DM1.cdsReporte1.Close;
    pbLista.Position:=pbLista.Position+1;
    DM1.cdsAutdisk.Close;
    pbLista.Position:=pbLista.Position+1;
    xSQL:='SELECT * '+
          'FROM COB304 '+
          'WHERE RCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('RCOBID').AsString)+' '+
          'AND DETRCOBID='+QuotedStr(DM1.cdsCobxUse.FieldByName('DETRCOBID').AsString);
    DM1.cdsAutdisk.DataRequest(xSQL);
    DM1.cdsAutdisk.Open;
    pbLista.Position:=pbLista.Position+1;
    FIngresoLote.ActualizaFooter;
    pbLista.Position:=pbLista.Position+1;

    DM1.cdsCobxUse.Edit;

    {pbLista.Position:=pbLista.Position+1;
    DM1.cdsCobxUse.FieldByName('RCOBID').AsString:=DM1.cdsDetRegGlob.FieldByname('RCOBID').AsString;
    pbLista.Position:=pbLista.Position+1;
    DM1.cdsCobxUse.FieldByName('RCOBNOPE').AsString:=DM1.cdsDetRegGlob.FieldByname('DOCID').AsString;
    pbLista.Position:=pbLista.Position+1;
    DM1.cdsCobxUse.FieldByName('RCOBFOPE').AsDateTime:=DM1.cdsDetRegGlob.FieldByname('DOCFECHA').AsDateTime;
    pbLista.Position:=pbLista.Position+1;
    DM1.cdsCobxUse.FieldByName('USEID').AsString:=DM1.cdsUse.FieldByname('USEID').AsString;
    pbLista.Position:=pbLista.Position+1;
    DM1.cdsCobxUse.FieldByName('UPAGOID').AsString:=DM1.cdsDetRegGlob.FieldByName('UPAGOID').AsString;
    pbLista.Position:=pbLista.Position+1;
    DM1.cdsCobxUse.FieldByName('TMONID').AsString:=DM1.cdsDetRegGlob.FieldByName('TMONID').AsString;}

    pbLista.Position:=pbLista.Position+1;
    DM1.cdsCobxUse.FieldByName('RCOBUSEAPO').AsFloat:=StrToFloat(FormatFloat('########0.00',DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSAPO)','')));
    pbLista.Position:=pbLista.Position+1;
    DM1.cdsCobxUse.FieldByName('RCOBUSECUO').AsFloat:=StrToFloat(FormatFloat('########0.00',DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSCUO)','')));
    pbLista.Position:=pbLista.Position+1;
    DM1.cdsCobxUse.FieldByName('RCOBUSETOT').AsFloat:=StrToFloat(FormatFloat('########0.00',DM1.OperClientDataSet(DM1.cdsAutdisk, 'SUM(TRANSMTO)','')));
    //pbLista.Position:=pbLista.Position+1;
    //DM1.cdsCobxUse.FieldByName('RCOBANO').AsString:=DM1.cdsDetRegGlob.FieldByName('RCOBANO').AsString;
    //pbLista.Position:=pbLista.Position+1;
    //DM1.cdsCobxUse.FieldByName('RCOBMES').AsString:=DM1.cdsDetRegGlob.FieldByName('RCOBMES').AsString;
    //pbLista.Position:=pbLista.Position+1;
    //DM1.cdsCobxUse.FieldByName('USUARIO').AsString:=DM1.wUsuario;
    //pbLista.Position:=pbLista.Position+1;
    //DM1.cdsCobxUse.FieldByName('FREG').AsDateTime:=Date;
    //pbLista.Position:=pbLista.Position+1;
    //DM1.cdsCobxUse.FieldByName('HREG').AsDateTime:=Date+Time;
    pbLista.Position:=pbLista.Position+1;
    cdspost(DM1.cdsCobxUse);
    pbLista.Position:=pbLista.Position+1;
    DM1.cdsCobxUse.post;
    pbLista.Position:=pbLista.Position+1;
    DM1.ControlTran;

    xSQL:='UPDATE COB312 SET FL_TRANSF=''S'' '+
          'WHERE UPROID='+QuotedStr(DM1.cdsQry2.FieldByName('UPROID').AsString)+' '+
          'AND ARCHIVO='+QuotedStr(DM1.cdsQry2.FieldByName('ARCHIVO').AsString)+' '+
          'AND PERIODO='+QuotedStr(DM1.cdsQry2.FieldByName('PERIODO').AsString);
    DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

    pbLista.Position:=pbLista.Position+1;
    pbLista.Max:=0;
    ShowMessage('Actualización Realizada');
    FIngresoLote.dbgAportes.Enabled:=True;
    Screen.Cursor:=crDefault;
    FIngresoLote.bbtnAtras.SetFocus;
    Close;
  end
  else
  begin
    pbLista.Position:=pbLista.Position+1;
    DM1.cdsReporte1.Close;
    pbLista.Max:=0;
    Screen.Cursor:=crDefault;
    ShowMessage('No Existe Detalle para el Archivo Seleccionado');
    exit;
  end;
  pbLista.Max:=0;
end;

procedure TFListaAutDisk.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM1.cdsQry2.Close;
end;

end.
