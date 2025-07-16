unit CRE222;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  jpeg, ExtCtrls, StdCtrls, DBCtrls, wwdbdatetimepicker, Wwdbdlg, Mask,
  wwdbedit, wwdblook, fcButton, fcImgBtn, fcShapeBtn, Buttons, Wwdbigrd,
  variants, Grids, Wwdbgrid, ComCtrls, fcLabel,Db, dbiProcs,dbclient,wwclient;

type
  TFResoluciones = class(TForm)
    dbgResol: TwwDBGrid;
    wwIButton1: TwwIButton;
    pnlResolucion: TPanel;
    StaticText5: TStaticText;
    Panel11: TPanel;
    dblcRTipResol: TwwDBLookupCombo;
    edtRDescripcion: TEdit;
    dbeNroResol: TwwDBEdit;
    cbVigencia: TCheckBox;
    lbCodigo: TfcLabel;
    lbTitulo: TfcLabel;
    dbdtpRfecha: TwwDBDateTimePicker;
    sbtnRAceptar: TfcShapeBtn;
    sbtnRCancelar: TfcShapeBtn;
    procedure sbtnRCancelarClick(Sender: TObject);
    procedure wwIButton1Click(Sender: TObject);
    procedure dbgResolDblClick(Sender: TObject);
    procedure sbtnRAceptarClick(Sender: TObject);
    procedure dblcRTipResolExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dbgResolKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure dblcNotInList(Sender: TObject; LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
    function ValidaDatosResol:Boolean;
  public
    { Public declarations }
    sSQL,xWhere:string;
    EstadoCB:Boolean;
  end;

var
  FResoluciones: TFResoluciones;

implementation

uses APODM,MsgDlgs,CRE201;

{$R *.DFM}

procedure TFResoluciones.sbtnRCancelarClick(Sender: TObject);
begin
//wmc 20030722  DM1.wModo:='';
  DM1.cdsResol.CancelUpdates;
  pnlResolucion.Visible:=False;
  wwIButton1.Enabled := True ;
  dbgResol.Enabled := True ;
end;

procedure TFResoluciones.wwIButton1Click(Sender: TObject);
begin
//wmc 20030722  DM1.wModo:='A';

  xWhere:='TIPRESID='''+dblcRTipResol.Text+'''';
  edtRDescripcion.Text:=DM1.DisplayDescrip('prvSQL','APO104','TIPRESDES',xWhere,'TIPRESDES');

  pnlResolucion.Visible:=true;
  Panel11.Enabled := True ;  
  dblcRTipResol.SetFocus;

  cbVigencia.Checked:=False;
  EstadoCB:=False;
  DM1.cdsResol.Insert;
  edtRDescripcion.Text:='';
  wwIButton1.Enabled := False ;
  dbgResol.Enabled   := False ;
  sbtnRAceptar.Enabled  := True ;

end;

procedure TFResoluciones.dbgResolDblClick(Sender: TObject);
begin
  If DM1.cdsResol.RecordCount=0 then
  begin
    ErrorMsg('Error','No existen Registros a Editar');
    exit;
  end;

//wmc 20030722  DM1.wModo:='M';

  If DM1.cdsResol.FieldByName('RESFVIG').AsString='S' then cbVigencia.Checked:=True;
  If DM1.cdsResol.FieldByName('RESFVIG').AsString='N' then cbVigencia.Checked:=False;
  pnlResolucion.Visible:=true;
//wmc 20030722  dblcRTipResol.SetFocus;

  xWhere:='TIPRESID='''+dblcRTipResol.Text+'''';
  edtRDescripcion.Text:=DM1.DisplayDescrip('prvSQL','APO104','TIPRESDES',xWhere,'TIPRESDES');

  DM1.cdsResol.edit;

  xWhere:='TIPRESID='''+dblcRTipResol.Text+'''';
  edtRDescripcion.Text:=DM1.DisplayDescrip('prvSQL','APO104','TIPRESDES',xWhere,'TIPRESDES');
  Panel11.Enabled := False ;
  sbtnRAceptar.Enabled  := False ;
  wwIButton1.Enabled := False ;
  dbgResol.Enabled   := False ;
  
//wmc 20030722  EstadoCB:=cbVigencia.Checked;
end;

procedure TFResoluciones.sbtnRAceptarClick(Sender: TObject);
var
  cds : TwwClientDataset ;
begin
  // Screen.Cursor:=crHourGlass;
  if (DM1.cdsResol.Modified) or (DM1.cdsResol.ChangeCount > 0) Then
  begin
    DM1.cdsResol.Edit;
    If Not ValidaDatosResol then exit;

    DM1.cdsResol.Edit;
    DM1.cdsResol.FieldByName('ASOID').AsString:=DM1.cdsAso.FieldByName('ASOID').AsString;
    DM1.cdsResol.FieldByName('ASOCODMOD').AsString:=DM1.cdsAso.FieldByName('ASOCODMOD').AsString;
    DM1.cdsResol.FieldByName('ASOCODAUX').AsString:=DM1.cdsAso.FieldByName('ASOCODAUX').AsString;
    DM1.cdsResol.FieldByName('FREG').AsDateTime:=Date;
    DM1.cdsResol.FieldByName('HREG').AsDateTime:=Date+SysUtils.Time;;

    DM1.cdsResol.FieldByName('RESFVIG').AsString:='X';
    DM1.cdsResol.Post;
    //
    cds := TwwClientDataSet.Create(self) ;
    cds.CloneCursor (dm1.cdsResol,True) ;
    cds .Filter := 'RESFVIG = ''S''' ;
    cds . Filtered := TRue ;
    if cds.Recordcount > 0 then
    begin
       cds.First ;
       while not cds.eof do
       begin
          cds.Edit;
          cds.FieldByName('RESFVIG').AsString := 'N' ;
          cds.Next ;
       end ;
    end ;
    cds.Free ;
    //
    DM1.cdsResol.Edit ;
    DM1.cdsResol.FieldByName('RESFVIG').AsString:='S';

    cdsPost(DM1.cdsResol);
    DM1.AplicaDatos(Dm1.cdsResol,'RESOL');// ControlTran;
    if (dblcRTipResol.Text = '01') or
       (dblcRTipResol.Text = '03') or
       (dblcRTipResol.Text = '05')  then
    begin
      DM1.cdsAso.Edit;
      DM1.cdsAso.FieldByName('RESID').AsString        := DM1.cdsResol.FieldByName('RESID').AsString;
      DM1.cdsAso.FieldByName('ASORESNOM').AsString    := DM1.cdsResol.FieldByName('ASONRES').AsString;
      DM1.cdsAso.FieldByName('ASOFRESNOM').AsDateTime := DM1.cdsResol.FieldByName('ASOFRES').AsDateTime;
      DM1.cdsAso.FieldByName('ASOTIPID').AsString     := 'DO';

      cdsPost(DM1.cdsAso);
      DM1.cdsAso.Post;
      DM1.AplicaDatos(Dm1.cdsAso,'ASO');
    end
    else
    begin
      if (dblcRTipResol.Text = '04') then
      begin
        DM1.cdsAso.Edit;
        DM1.cdsAso.FieldByName('RESID').AsString         := DM1.cdsResol.FieldByName('RESID').AsString;
        DM1.cdsAso.FieldByName('ASORESCESE').AsString    := DM1.cdsResol.FieldByName('ASONRES').AsString;
        DM1.cdsAso.FieldByName('ASOFRESCESE').AsDateTime := DM1.cdsResol.FieldByName('ASOFRES').AsDateTime;
        DM1.cdsAso.FieldByName('ASOTIPID').AsString      := 'CE';
        DM1.cdsAso.FieldByName('FSINLIQ').AsString       := 'S';

        cdsPost(DM1.cdsAso);
        DM1.cdsAso.Post;
        DM1.AplicaDatos(Dm1.cdsAso,'ASO');
      end ;
    end ;
    ShowMessage('Registro Grabado');

  end
  else
  begin
    ShowMessage('Ingrese Datos para Grabación') ;
    dblcRTipResol.SetFocus ;
  end ;
end;

procedure TFResoluciones.dblcRTipResolExit(Sender: TObject);
begin
  xWhere:='TIPRESID='''+dblcRTipResol.Text+'''';
  edtRDescripcion.Text:=DM1.DisplayDescrip('prvSQL','APO104','TIPRESDES',xWhere,'TIPRESDES');
  if trim(edtRDescripcion.Text) = '' then
     dblcRTipResol.DataSource.DataSet.fieldByName(dblcRTipResol.DataField).clear ;
end;

procedure TFResoluciones.FormActivate(Sender: TObject);
begin
  DM1.cdsTResol.Open;
  if DM1.cdsTResol.Locate('TIPRESID',VarArrayOf(['02']),[]) then
     DM1.cdsTResol.delete ;
  sSQL := 'SELECT ASOID, ASOCODMOD, ASOCODAUX, ASONRES, ASOFRES, RESID, RESFVIG, FREG, HREG '+
           'FROM APO205 WHERE ASOID='+DM1.cdsAso.FieldByName('ASOID').AsString;
  DM1.FiltraCDS(DM1.cdsResol,sSQL);

  dbgResol.Selected.Clear;
  dbgResol.Selected.Add('ASOID'#9'11'#9'Id~Socio');
  dbgResol.Selected.Add('ASOCODMOD'#9'11'#9'Cod~Modular');
  //dbgResol.Selected.Add('ASOCODAUX'#9'10'#9'Tipo~Resol.');
  dbgResol.Selected.Add('RESID'#9'3'#9'Tipo~Resol.');
  dbgResol.Selected.Add('ASONRES'#9'10'#9'Nº~Resol');
  dbgResol.Selected.Add('ASOFRES'#9'10'#9'Fecha~Resol');
  dbgResol.Selected.Add('RESFVIG'#9'5'#9'Vigente');
  //dbgResol.Selected.Add('FREG'#9'10'#9'Devuelto');
  dbgResol.Selected.Add('HREG'#9'20'#9'Fecha~Registro');
  dbgResol.RefreshDisplay;

  FResoluciones.lbTitulo.Caption:='Asociado : '+DM1.cdsAso.FieldByName('ASOAPENOM').AsString;
  FResoluciones.lbCodigo.Caption:='Código Modular :'+DM1.cdsAso.FieldByName('ASOCODMOD').AsString;
end;

procedure TFResoluciones.dbgResolKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key=VK_DELETE) and (ssCtrl in Shift)  then
  begin
  	if DM1.cdsResol.RecordCount > 0 then
    begin
  		DM1.cdsResol.Delete;
      DM1.ControlTran;
    end
    else
      ErrorMsg(Caption, ' No Existen Registros a Eliminar ');
	end;
	dbgResol.RefreshDisplay;
end;

function TFResoluciones.ValidaDatosResol:Boolean;
var
  Present: TDateTime;
  APresent: TDateTime;
  Year, Month, Day: Word;
  AYear, AMonth, ADay: Word;
begin
  result:=False;

  //Valida
  if length(edtRDescripcion.Text) = 0 Then
  begin
    ShowMessage('Seleccione el Tipo de Resolución');
    dblcRTipResol.SetFocus;
    exit;
  end;

  if length(dbeNroResol.Text) = 0 Then
  begin
    ShowMessage('Registre el Número de Resolución');
    dbeNroResol.SetFocus;
    exit;
  end;

  if length(dbdtpRfecha.Text) = 0 Then
  begin
    ShowMessage('Seleccione la Fecha de la Resolución');
    dbdtpRfecha.SetFocus;
    exit;
  end;

  Present:= dbdtpRfecha.Date;
  DecodeDate(Present, Year, Month, Day);
  APresent:= Date;
  DecodeDate(APresent, AYear, AMonth, ADay);

  if (length(dbdtpRfecha.Text)<>0)  Then
  begin
    if Year > AYear then
    begin
      ShowMessage('La Fecha dede ser menor o igual a la Fecha Actual');
      dbdtpRfecha.SetFocus;
      exit;
    end;
  end;
  // Fin Valida
  result:=True;
End;

procedure TFResoluciones.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  xWhere:='TIPRESID='''+FAsociados.dblcRTipResol.Text+'''';
  FAsociados.edtResolDescrip.Text:=DM1.DisplayDescrip('prvSQL','APO104','TIPRESDES',xWhere,'TIPRESDES');
  DM1.cdsResol.Close;
end;

procedure TFResoluciones.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if (DM1.wModo='A') or (DM1.wModo='M') Then
  begin
    if (DM1.cdsResol.ChangeCount > 0) or (DM1.cdsResol.Modified) Then
    begin
      if MessageDlg('¿Desea Grabar?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        sbtnRAceptar.Click;
      end
      else
      begin
        DM1.cdsResol.Cancel;
        DM1.cdsResol.CancelUpdates;
      end;
    end;
  end;
end;

procedure TFResoluciones.dblcNotInList(Sender: TObject; LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
begin
  //  Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).DataField,NewValue,[]);
  Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookupField,NewValue,[]);
  if not Accept then
    TwwDBCustomLookupCombo(Sender).DropDown;
end;

procedure TFResoluciones.FormKeyPress(Sender: TObject; var Key: Char);
begin
	if key=#13 then
  begin
  	key:=#0;
    perform(CM_DialogKey,VK_TAB,0);
  end;
end;

end.
