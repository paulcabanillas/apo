unit CRE225;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, wwdbedit, StdCtrls, wwdblook, fcButton, fcImgBtn, fcShapeBtn,
  ExtCtrls, Buttons, Wwdbigrd, Grids, Wwdbgrid, fcLabel,db,
  wwclient;

type
  TFDSocioEco = class(TForm)
    lbCodigo: TLabel;
    lbTitulo: TfcLabel;
    dbgDatosSocioE: TwwDBGrid;
    btnDLaborales: TwwIButton;
    pnlDatosSocioEco: TPanel;
    StaticText1: TStaticText;
    pnlDLab: TPanel;
    sbtnDSabAceptar: TfcShapeBtn;
    sbtnDSabCancelar: TfcShapeBtn;
    dblcCondViv: TwwDBLookupCombo;
    edtCondViv: TEdit;
    dbeCodigoModular: TwwDBEdit;
    dbeInMagisterial: TwwDBEdit;
    dbeInmuebles: TwwDBEdit;
    dbrVehiculo: TwwDBEdit;
    procedure btnDLaboralesClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgDatosSocioEDblClick(Sender: TObject);
    procedure sbtnDSabCancelarClick(Sender: TObject);
    procedure sbtnDSabAceptarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure dbgDatosSocioEKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dblcCondVivExit(Sender: TObject);
    procedure dblcNotInList(Sender: TObject;
    LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
    sSQL,xWhere:String;
  end;

var
  FDSocioEco: TFDSocioEco;

implementation

{$R *.DFM}

Uses APODM,MsgDlgs;

procedure TFDSocioEco.btnDLaboralesClick(Sender: TObject);
begin
  pnlDatosSocioEco.Visible:=True;
  dbeCodigoModular.SetFocus;
  DM1.wModo := 'A';
  DM1.cdsDSocioE.Insert;
  edtCondViv.Text:='';
  dbeCodigoModular.SetFocus;
end;

procedure TFDSocioEco.FormActivate(Sender: TObject);
begin
  sSQL := 'SELECT ASOID, ITEM, ASOCODMOD, AINGMAG, AINGFAM, ACAPAG, CONVIVID, VEHICULO, INMUEBLE, FREG, HREG '+
          'FROM APO206 WHERE ASOID='+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);
  DM1.FiltraCDS(DM1.cdsDSocioE,sSQL);

  dbgDatosSocioE.Selected.Clear;
  dbgDatosSocioE.Selected.Add('ITEM'#9'3'#9'Item');
  dbgDatosSocioE.Selected.Add('AINGMAG'#9'10'#9'Ingreso~Magisterial');
  dbgDatosSocioE.Selected.Add('AINGFAM'#9'10'#9'Ingreso~Familiar');
  dbgDatosSocioE.Selected.Add('ACAPAG'#9'8'#9'Capacidad~Pago');
  dbgDatosSocioE.Selected.Add('CONVIVID'#9'5'#9'Cond.~Vivienda');
  dbgDatosSocioE.Selected.Add('INMUEBLE'#9'29'#9'Inmueble');
  dbgDatosSocioE.Selected.Add('VEHICULO'#9'25'#9'Vehiculo');
  dbgDatosSocioE.RefreshDisplay;

  sSQL := 'SELECT TIPVIVID,TIPVIVABR,TIPVIVDES FROM APO109'+
          ' ORDER BY TIPVIVID';
  DM1.FiltraCDS(DM1.cdsCViv,sSQL);

  FDSocioEco.lbTitulo.Caption:='Asociado :'+DM1.cdsAso.FieldByName('ASOAPENOM').AsString;
  FDSocioEco.lbCodigo.Caption:='Código Modular :'+DM1.cdsAso.FieldByName('ASOCODMOD').AsString;
end;

procedure TFDSocioEco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM1.cdsDSocioE.Close;
end;

procedure TFDSocioEco.dbgDatosSocioEDblClick(Sender: TObject);
begin
  If DM1.cdsDSocioE.RecordCount=0 then
  Begin
    ErrorMsg('Error ','No existen Registros a Editar');
    exit;
  End;
  DM1.wModo := 'M';

  xWhere:='TIPVIVID='+QuotedStr(dblcCondViv.Text);
  edtCondViv.Text:=DM1.DisplayDescrip('prvSQL','APO109','TIPVIVDES',xWhere,'TIPVIVDES');

  DM1.cdsDSocioE.Edit;
  pnlDatosSocioEco.Visible:=true;
  dbeCodigoModular.SetFocus;
end;

procedure TFDSocioEco.sbtnDSabCancelarClick(Sender: TObject);
begin
  DM1.wModo:='';
  DM1.cdsDSocioE.CancelUpdates;
  pnlDatosSocioEco.Visible:=False;
end;

procedure TFDSocioEco.sbtnDSabAceptarClick(Sender: TObject);
var
  cdsNum : TwwClientDataSet;
begin
  if (DM1.cdsDSocioE.Modified=True) or (DM1.cdsDSocioE.ChangeCount > 0) Then
  begin
    //DM1.cdsDSocioE.Edit;
    if (DM1.wModo='A') or (DM1.wModo='M') Then
    begin
      if (DM1.wModo='A') Then
      begin
        cdsNum := TwwClientDataSet.Create(nil);
        cdsNum.CloneCursor(dm1.cdsDSocioE,False);
        DM1.cdsDSocioE.FieldByName('ITEM').AsString     := DM1.StrZero(DM1.MaxValue('ITEM',cdsNum),2);
        cdsNum.Free;        
      end;

      DM1.cdsDSocioE.FieldByName('ASOID').AsString    := DM1.cdsAso.FieldByName('ASOID').AsString;
      DM1.cdsDSocioE.FieldByName('ASOCODMOD').AsString:= DM1.cdsAso.FieldByName('ASOCODMOD').AsString;
      DM1.cdsDSocioE.FieldByName('FREG').AsDateTime   := Date;
      DM1.cdsDSocioE.FieldByName('HREG').AsDateTime   := Date+SysUtils.Time;

      cdsPost(DM1.cdsDSocioE);
      Dm1.AplicaDatos(DM1.cdsDSocioE,'SOCIOE');
      //DM1.ControlTran;
      ShowMessage('Resistro Grabado');
      pnlDatosSocioEco.Visible:=False;
    end;
  end;
end;

procedure TFDSocioEco.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  Exit;
  if (DM1.wModo='A') or (DM1.wModo='M') Then
  begin
    if (DM1.cdsDSocioE.ChangeCount > 0) or (DM1.cdsDSocioE.Modified) Then
    begin
      if MessageDlg('¿Desea Grabar?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        sbtnDSabAceptar.Click;
      end
      else
      begin
        DM1.cdsDSocioE.Cancel;
        DM1.cdsDSocioE.CancelUpdates;
      end;
    end;
  end;
end;

procedure TFDSocioEco.dbgDatosSocioEKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key=VK_DELETE) and (ssCtrl in Shift)  then
  begin
  	if DM1.cdsDSocioE.RecordCount > 0 then
    begin
      if Question('Confirmar', 'Esta Seguro de Eliminar '+ #13+#13+
                  ' Desea Continuar ') then
	    begin
  		  DM1.cdsDSocioE.Delete;
        DM1.ControlTran;
        ShowMessage('Registro Eliminado');
      end;
    End
    else
      ErrorMsg(Caption, ' No Existen Registros a Eliminar ');
	end;
	dbgDatosSocioE.RefreshDisplay;
end;

procedure TFDSocioEco.dblcCondVivExit(Sender: TObject);
begin
  xWhere:='TIPVIVID='+QuotedStr(dblcCondViv.Text);
  edtCondViv.Text:=DM1.DisplayDescrip('prvSQL','APO109','TIPVIVDES',xWhere,'TIPVIVDES');
end;

procedure TFDSocioEco.dblcNotInList(Sender: TObject; LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
begin
  //Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).DataField,NewValue,[]);
  Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookupField,NewValue,[]);
  if not Accept then
    TwwDBCustomLookupCombo(Sender).DropDown;
end;

procedure TFDSocioEco.FormKeyPress(Sender: TObject; var Key: Char);
begin
	if key=#13 then
  begin
  	key:=#0;
    perform(CM_DialogKey,VK_TAB,0);
  end;
end;

end.
