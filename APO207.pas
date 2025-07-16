unit APO207;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Wwdbdlg, StdCtrls, ExtCtrls, DBCtrls, Mask, wwdbedit, wwdbdatetimepicker,
  wwdblook, fcButton, fcImgBtn, fcShapeBtn, Buttons, Wwdbigrd, Grids,
  Wwdbgrid, fcLabel, dbiProcs,Db;

type
  TFDFam = class(TForm)
    dbgDFam: TwwDBGrid;
    btnDFam: TwwIButton;
    pnlFamiliares: TPanel;
    stFam: TStaticText;
    pnlFam: TPanel;
    sbtnDFAceptar: TfcShapeBtn;
    sbtnDFCancelar: TfcShapeBtn;
    dblcDFTRel: TwwDBLookupCombo;
    dbdtpDFFecNac: TwwDBDateTimePicker;
    dblcDFEstCiv: TwwDBLookupCombo;
    dbeDFTelf: TwwDBEdit;
    dbeDFDir: TwwDBEdit;
    dbeDFApePat: TwwDBEdit;
    dbeDFApeMat: TwwDBEdit;
    dbeDFNombres: TwwDBEdit;
    dblcDFTDoc: TwwDBLookupCombo;
    dbeDFNum: TwwDBEdit;
    edtDFTRel: TEdit;
    edtDFEstCiv: TEdit;
    edtDFDoc: TEdit;
    dbeDFApeNom: TwwDBEdit;
    edtSexo: TEdit;
    lbCodigo: TfcLabel;
    dblcSexo: TwwDBLookupCombo;
    sbtnDFNuevo: TfcShapeBtn;
    lbTitulo: TfcLabel;
    lblDepartamento: TLabel;
    dblcdDepto: TwwDBLookupComboDlg;
    edtDepto: TEdit;
    lblProvincia: TLabel;
    dblcdCiudad: TwwDBLookupComboDlg;
    edtProvincia: TEdit;
    dblcdDistrito: TwwDBLookupComboDlg;
    lblDistrito: TLabel;
    edtDistrito: TEdit;
    procedure sbtnDFCancelarClick(Sender: TObject);
    procedure dbgDFamDblClick(Sender: TObject);
    procedure btnDFamClick(Sender: TObject);
    procedure sbtnDFAceptarClick(Sender: TObject);
    procedure dblcDFTRelExit(Sender: TObject);
    procedure dblcDFEstCivExit(Sender: TObject);
    procedure dblcDFTDocExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dbgDFamKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dblcSexoExit(Sender: TObject);
    procedure dblcNotInList(Sender: TObject;
    LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
    procedure dbeDFNombresExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure dbeDFApeMatExit(Sender: TObject);
    procedure dbeDFApePatExit(Sender: TObject);
    procedure sbtnDFNuevoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dblcdDeptoExit(Sender: TObject);
    procedure dblcdCiudadExit(Sender: TObject);
    procedure dblcdDistritoExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure LimpiaEditsDF;
    function ValidaDatosCEdu:Boolean;
  public
    { Public declarations }
    sSQL,xWhere,xSQL:string;
  end;

var
  FDFam: TFDFam;

implementation

uses APODM,MsgDlgs;

{$R *.DFM}

procedure TFDFam.sbtnDFCancelarClick(Sender: TObject);
begin
   DM1.wModo:='';
   DM1.cdsDFam.CancelUpdates;
   pnlFamiliares.Visible:=False;
end;

procedure TFDFam.dbgDFamDblClick(Sender: TObject);
begin

  If DM1.cdsDFam.RecordCount=0 then
  Begin
    ErrorMsg('Error','No existen Registros a Editar');
    exit;
  End;
  DM1.wModo := 'M';
  sbtnDFNuevo.Visible:=False;

  xWhere:='PARENID='''+dblcDFTRel.Text+'''';
  edtDFTRel.Text:=DM1.DisplayDescrip('prvSQL','TGE149','PARENDES',xWhere,'PARENDES');

  xWhere:='ESTCIVID='''+dblcDFEstCiv.Text+'''';
  edtDFEstCiv.Text:=DM1.DisplayDescrip('prvSQL','TGE125','ESTCIVDES',xWhere,'ESTCIVDES');

  xWhere:='TIPDOCCOD='''+dblcDFTDoc.Text+'''';
  edtDFDoc.Text:=DM1.DisplayDescrip('prvSQL','TGE159','TIPDOCDES',xWhere,'TIPDOCDES');

  xWhere:='DPTOID='''+dblcdDepto.Text+'''';
  edtDepto.Text:=DM1.DisplayDescrip('prvSQL','APO158','DPTODES',xWhere,'DPTODES');

  xWhere:='CIUDID='''+dblcdCiudad.Text+'''';
  edtProvincia.Text:=DM1.DisplayDescrip('prvSQL','APO123','CIUDDES',xWhere,'CIUDDES');

  xWhere:='ZIPID='''+dblcdDistrito.Text+'''';
  edtDistrito.Text:=DM1.DisplayDescrip('prvSQL','APO122','ZIPDES',xWhere,'ZIPDES');

  DM1.cdsDFam.Edit;
  pnlFamiliares.visible:=true;
  dblcDFTRel.SetFocus;
end;

procedure TFDFam.btnDFamClick(Sender: TObject);
begin
  DM1.wModo := 'A';

  pnlFamiliares.Visible:=true;
  dblcDFTRel.SetFocus;
  LimpiaEditsDF;
  sbtnDFNuevo.Visible:=True;
  DM1.cdsDFam.Insert;

end;

procedure TFDFam.sbtnDFAceptarClick(Sender: TObject);
begin
//Screen.Cursor:=crHourGlass;
 If (DM1.cdsDFam.Modified) or (DM1.cdsDFam.ChangeCount > 0)  Then
 begin
  DM1.cdsDFam.Edit;
   If (DM1.wModo='A') or (DM1.wModo='M') Then
  Begin

    If Not ValidaDatosCEdu then exit;

    DM1.cdsDFam.FieldByName('FAMAPENOM').AsString:=TRIM(DM1.cdsDFam.FieldByName('FAMAPEPAT').AsString)+' '+TRIM(DM1.cdsDFam.FieldByName('FAMAPEMAT').AsString)+' '+TRIM(DM1.cdsDFam.FieldByName('FAMNOMBRE').AsString);
    DM1.cdsDFam.FieldByName('ASOID').AsString:=DM1.cdsAso.FieldByName('ASOID').AsString;
    DM1.cdsDFam.FieldByName('FREG').AsDateTime:=Date;
    DM1.cdsDFam.FieldByName('HREG').AsDateTime:=Date+SysUtils.Time;;

    cdsPost(DM1.cdsDFam);
    DM1.cdsDFam.Post;
    DM1.ControlTran;
    //Screen.Cursor:=crArrow;
    showmessage('Registro Grabado');

  end;
 end;
//Screen.Cursor:=crArrow;
end;

procedure TFDFam.dblcDFTRelExit(Sender: TObject);
begin
  xWhere:='PARENID='''+dblcDFTRel.Text+'''';
  edtDFTRel.Text:=DM1.DisplayDescrip('prvSQL','TGE149','PARENDES',xWhere,'PARENDES');
end;

procedure TFDFam.dblcDFEstCivExit(Sender: TObject);
begin
  xWhere:='ESTCIVID='''+dblcDFEstCiv.Text+'''';
  edtDFEstCiv.Text:=DM1.DisplayDescrip('prvSQL','TGE125','ESTCIVDES',xWhere,'ESTCIVDES');
end;

procedure TFDFam.dblcDFTDocExit(Sender: TObject);
begin
  xWhere:='TIPDOCCOD='''+dblcDFTDoc.Text+'''';
  edtDFDoc.Text:=DM1.DisplayDescrip('prvSQL','TGE159','TIPDOCDES',xWhere,'TIPDOCDES');
end;

procedure TFDFam.FormActivate(Sender: TObject);
begin
      sSQL := 'SELECT ASOID,FAMAPEPAT,FAMAPEMAT,FAMNOMBRE,FAMAPENOM,'+
          'FAMRELID,FAMDIRECC,DPTOID,CIUDID,ZIPID,'+
          'FAMTELF,FAMSEXO,TIPDOCCOD,FAMNUMDOC,ESTCIVID,FAMFECNAC,HREG,FREG '+
          'FROM APO203 WHERE ASOID='+DM1.cdsAso.FieldByName('ASOID').AsString;
      DM1.FiltraCDS(DM1.cdsDFam,sSQL);

      If dblcSexo.Text='M' Then edtSexo.Text:='MASCULINO';
      If dblcSexo.Text='F' Then edtSexo.Text:='FEMENINO';

      //Fin Abre Tablas Detalle

     FDFam.lbTitulo.Caption:='Asociado :'+DM1.cdsAso.FieldByName('ASOAPENOM').AsString;
     FDFam.lbCodigo.Caption:='Código Modular :'+DM1.cdsAso.FieldByName('ASOCODMOD').AsString;

     dbgDFam.RefreshDisplay;


end;

procedure TFDFam.dbgDFamKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_DELETE) and (ssCtrl in Shift)  then
  begin
  	if DM1.cdsDFam.RecordCount > 0 then
      Begin
        DM1.cdsDFam.Delete;
        DM1.ControlTran;
        ShowMessage('Registro Eliminado');
      End
    else
      ErrorMsg(Caption, ' No Existen Registros a Eliminar ');
	end;
	dbgDFam.RefreshDisplay;

end;

procedure TFDFam.dblcSexoExit(Sender: TObject);
begin
  If dblcSexo.Text='M' Then edtSexo.Text:='MASCULINO';
  If dblcSexo.Text='F' Then edtSexo.Text:='FEMENINO';

end;

procedure TFDFam.dblcNotInList(Sender: TObject;
  LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
begin
  Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookupField,NewValue,[]);
  if not Accept then
    TwwDBCustomLookupCombo(Sender).DropDown;
end;


procedure TFDFam.dbeDFNombresExit(Sender: TObject);
begin
  If length(dbeDFApePat.Text)<>0 Then
  begin
    If length(dbeDFApeMat.Text)<>0 Then
    begin
      If length(dbeDFNombres.Text)<>0 Then
      begin
        dbeDFApeNom.Text:=TRIM(dbeDFApePat.Text)+' '+TRIM(dbeDFApeMat.Text)+' '+TRIM(dbeDFNombres.Text);
      end;
    end;
  end;

end;

procedure TFDFam.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  If (DM1.wModo='A') or (DM1.wModo='M') Then
    Begin
   	  If (DM1.cdsDFam.ChangeCount > 0) or (DM1.cdsDFam.Modified) Then
      Begin
          if MessageDlg('¿Desea Grabar?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            begin
                sbtnDFAceptar.Click;
            End
          Else
            begin
                DM1.cdsDFam.Cancel;
                DM1.cdsDFam.CancelUpdates;
            end;
      End;
   End;
   DM1.wModo:='';
end;

procedure TFDFam.LimpiaEditsDF;
Begin
  edtDFTRel.Text:='';
  edtSexo.Text:='';
  edtDFEstCiv.Text:='';
  edtDFDoc.Text:='';
  edtDepto.Text:='';
  edtProvincia.Text:='';
  edtDistrito.Text:='';
End;


procedure TFDFam.dbeDFApeMatExit(Sender: TObject);
begin
  if length(dbeDFApePat.Text)<>0 Then
    if length(dbeDFApeMat.Text)<>0 Then
      if length(dbeDFNombres.Text)<>0 Then
        dbeDFApeNom.Text:=TRIM(dbeDFApePat.Text)+' '+TRIM(dbeDFApeMat.Text)+' '+TRIM(dbeDFNombres.Text);
end;

procedure TFDFam.dbeDFApePatExit(Sender: TObject);
begin
  if length(dbeDFApePat.Text)<>0 Then
    if length(dbeDFApeMat.Text)<>0 Then
      if length(dbeDFNombres.Text)<>0 Then
        dbeDFApeNom.Text:=TRIM(dbeDFApePat.Text)+' '+TRIM(dbeDFApeMat.Text)+' '+TRIM(dbeDFNombres.Text);
end;

function TFDFam.ValidaDatosCEdu:Boolean;
Begin
  //ValidaDFam;
  Result:=False;
  if length(edtDFTRel.Text)=0 Then
  begin
    ShowMessage('Seleccione el Tipo de Relación');
    dblcDFTRel.SetFocus;
    exit;
  end;
  if length(dbeDFApePat.Text)=0 Then
  begin
    ShowMessage('Registre el Apellido Paterno');
    dbeDFApePat.SetFocus;
    exit;
  end;
  if length(dbeDFApeMat.Text)=0 Then
  begin
    ShowMessage('Registre el Apellido Materno');
    dbeDFApeMat.SetFocus;
    exit;
  end;
  if length(dbeDFNombres.Text)=0 Then
  begin
    ShowMessage('Registre los Nombres');
    dbeDFNombres.SetFocus;
    exit;
  end;

{  If length(dbdtpDFFecNac.Text)=0 Then Begin
    ShowMessage('Seleccione la Fecha de Nacimiento');
    dbdtpDFFecNac.SetFocus;
    exit;
  End;

  If Not (length(dbdtpDFFecNac.Text)=0) Then
  Begin
    Present:= dbdtpDFFecNac.Date;
    DecodeDate(Present, Year, Month, Day);
    If Year>Date then
    begin
      ShowMessage('La Fecha de Nacimiento debe ser menor a la Fecha Actual');
      dbdtpDFFecNac.SetFocus;
    end;
  End;}
  if length(edtDFEstCiv.Text)=0 Then
  begin
    ShowMessage('Seleccione el Estado Civil');
    dblcDFEstCiv.SetFocus;
    exit;
  end;
  {If length(edtDFDoc.Text)=0 Then Begin
    ShowMessage('Seleccione el Tipo de Documento');
    dblcDFTDoc.SetFocus;
    exit;
  End;
  If length(dbeDFNum.Text)=0 Then Begin
    ShowMessage('Registre el Número de Documento');
    dbeDFNum.SetFocus;
    exit;
  End;

  If length(edtSexo.Text)=0 Then Begin
    ShowMessage('Seleccione el Sexo ');
    dblcSexo.SetFocus;
    exit;
  End;
  If length(edtDFDpto.Text)=0 Then Begin
    ShowMessage('Seleccione el Departamento');
    dblcDFDpto.SetFocus;
    exit;
  End;
  If length(edtDFProv.Text)=0 Then Begin
    ShowMessage('Seleccione la Provincia');
    dblcdDFProv.SetFocus;
    exit;
  End;
  If length(dbeDFDir.Text)=0 Then Begin
    ShowMessage('Registre la Dirección');
    dbeDFDir.SetFocus;
    exit;
  End;}
  Result:=True;
  // Fin Valida DFam
End;

procedure TFDFam.sbtnDFNuevoClick(Sender: TObject);
begin
    If (DM1.cdsDFam.Modified) or (DM1.cdsDFam.ChangeCount > 0)  Then
      Begin
        DM1.cdsDFam.Edit;
        If MessageDlg('Desea Guardar los Datos', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          Begin
            sbtnDFAceptar.Click;
            exit;
          End;
      End
    Else
      Begin
          DM1.wModo := 'A';
          pnlFamiliares.Visible:=true;
          dblcDFTRel.SetFocus;
          LimpiaEditsDF;
          sbtnDFNuevo.Visible:=True;
          DM1.cdsDFam.Insert;
      End;
end;

procedure TFDFam.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM1.cdsDFam.Close;
end;

procedure TFDFam.dblcdDeptoExit(Sender: TObject);
begin
  if Trim(dblcdDepto.Text)<>'' then begin
    edtDepto.Text:=DM1.cdsDpto.FieldByName('DPTODES').AsString;
    sSQL := 'SELECT CIUDID,CIUDDES,DPTOID FROM APO123'+
            ' WHERE DPTOID='+''''+dblcdDepto.Text+''''+
            ' ORDER BY DPTOID,CIUDID';
  end
  else begin
    edtDepto.Clear;
    DM1.FiltraCDS(DM1.cdsDist,'SELECT ZIPID,ZIPDES,CIUDID,DPTOID FROM APO122 ORDER BY DPTOID,CIUDID,ZIPID');
    sSQL := 'SELECT CIUDID,CIUDDES,DPTOID FROM APO123 ORDER BY DPTOID,CIUDID';
  end;
  DM1.FiltraCDS(DM1.cdsProvin,sSQL);
  DM1.cdsDFam.FieldByName('CIUDID').Clear;  edtProvincia.Clear;
  DM1.cdsDFam.FieldByName('ZIPID').Clear; edtDistrito.Clear;
end;

procedure TFDFam.dblcdCiudadExit(Sender: TObject);
begin
  if Trim(dblcdCiudad.Text)<>'' then begin
    edtProvincia.Text:=DM1.CdsProvin.FieldByName('CIUDDES').AsString;
    sSQL := 'SELECT ZIPID,ZIPDES,CIUDID,DPTOID FROM APO122 '+
            ' WHERE CIUDID='+''''+dblcdCiudad.Text+''' AND'+
            ' DPTOID='+''''+dblcdDepto.Text+''''+
            ' ORDER BY DPTOID,CIUDID,ZIPID';
  end
  else begin
    edtProvincia.Clear;
    sSQL := 'SELECT ZIPID,ZIPDES,CIUDID,DPTOID FROM APO122 ORDER BY DPTOID,CIUDID,ZIPID';
  end;
  DM1.FiltraCDS(DM1.cdsDist,sSQL);
  DM1.cdsDFam.FieldByName('ZIPID').Clear; edtDistrito.Clear;
end;

procedure TFDFam.dblcdDistritoExit(Sender: TObject);
begin
  if Trim(dblcdDistrito.Text)<>'' then begin
    edtDistrito.Text:=DM1.cdsDist.FieldByName('ZIPDES').AsString;
  end
  else
    edtDistrito.Clear;
end;

procedure TFDFam.FormKeyPress(Sender: TObject; var Key: Char);
begin
	If key=#13 then
  Begin
  	key:=#0;
    perform(CM_DialogKey,VK_TAB,0);
  End;
end;

end.
