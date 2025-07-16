
unit CRE206;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  wwdbdatetimepicker, Wwdbdlg, Mask, wwdbedit, wwdblook, StdCtrls,
  fcButton, fcImgBtn, fcShapeBtn, ExtCtrls, Buttons, Wwdbigrd, Grids,
  Wwdbgrid, fcLabel,ComCtrls, Wwdbcomb,Wwdotdot,
  Db, dbiProcs,dbclient,wwclient;


type
  TFDLab = class(TForm)
    dbgDatosLaborales: TwwDBGrid;
    btnDLaborales: TwwIButton;
    pnlDatosLaborales: TPanel;
    StaticText1: TStaticText;
    pnlDLab: TPanel;
    gbCEdu: TGroupBox;
    lbTitulo: TfcLabel;
    lbCodigo: TLabel;
    edtDLabUPago: TEdit;
    cbVigencia: TCheckBox;
    dbeDLCodPago: TwwDBEdit;
    dblcDLabUPro: TwwDBLookupCombo;
    edtDLabUProc: TEdit;
    dblcDLabUSE: TwwDBLookupCombo;
    edtDLabUSE: TEdit;
    dblcbdCEdu: TwwDBLookupComboDlg;
    Label5: TLabel;
    dbdtpDLFinicio: TwwDBDateTimePicker;
    dbdtpDLFFin: TwwDBDateTimePicker;
    Label6: TLabel;
    Label7: TLabel;
    dblcCargo: TwwDBLookupCombo;
    edtCargo: TEdit;
    dblcDLabEstLab: TwwDBLookupCombo;
    edtDLabEstLab: TEdit;
    dblcDLabUPago: TwwDBLookupCombo;
    dbeCodigoModular: TwwDBEdit;
    lblDepartamento: TLabel;
    dblcdDepto: TwwDBLookupComboDlg;
    edtDepto: TEdit;
    dblcdProv: TwwDBLookupComboDlg;
    lblProvincia: TLabel;
    edtProvincia: TEdit;
    dblcdDist: TwwDBLookupComboDlg;
    edtDist: TEdit;
    lblDistrito: TLabel;
    sbtnDLabAceptar: TfcShapeBtn;
    sbtnDLabCancelar: TfcShapeBtn;
    edtCEdu: TwwDBEdit;
    procedure btnDLaboralesClick(Sender: TObject);
    procedure sbtnDLabCancelarClick(Sender: TObject);
    procedure dbgDatosLaboralesDblClick(Sender: TObject);
    procedure dblcDLabUSEExit(Sender: TObject);
    procedure sbtnDLabAceptarClick(Sender: TObject);
    procedure dblcDLabProvExit(Sender: TObject);
    procedure dblcDLabUPagoExit(Sender: TObject);
    procedure dblcDLabUProExit(Sender: TObject);
    procedure dblcDLabDptoExit(Sender: TObject);
    procedure dblcDLabDistExit(Sender: TObject);
    procedure dblcDLabEstLabExit(Sender: TObject);
    procedure dblcCargoExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dblcbdCEduExit(Sender: TObject);
    procedure dbgDatosLaboralesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dblcNotInList(Sender: TObject;
    LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dblcdDeptoExit(Sender: TObject);
    procedure dblcdProvExit(Sender: TObject);
    procedure dblcdDistExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCodigoModularExit(Sender: TObject);
  private
    { Private declarations }
     xCorreWhere,xCorreWherex,xCorreWherey : String; //** Where solo para el correlativo del Crédito
    xCorre : String; //** para el correlativo del numero de crédito
    xPaso : Boolean; //** True = el correlativo es valido
    xCorreCadena,xTipocorre,xCorreASOID,xCorreCampo,xArea,xTabla,xEstid,xEstado,xCreano,xCremes : String;
    xCeros : Integer;
    procedure CorreCred(pCorre : String); //** para el correlativo del numero del crédito
    Procedure BuscaCorre; //** para constatar que nop exista el numero del crédito
    procedure  Correlativo; //** llama a CorreCred y BuscaCorre


    procedure LipiaEditsDL;
    function ValidaDatosLab:Boolean;
  public
    { Public declarations }
    sSQL,xWhere:string;
    EstadoCB:Boolean;
  end;

var
  FDLab: TFDLab;

implementation

uses APODM,MsgDlgs, CRE201 ,APO001;

{$R *.DFM}

procedure TFDLab.btnDLaboralesClick(Sender: TObject);
begin
  DM1.wModo := 'A';
  //** 13/11/2002 - PJSV
  dbeCodigoModular.Enabled := True;
  dbeDLCodPago.Enabled := True;
  dblcDLabUPro.Enabled := True;
  dblcDLabUPago.Enabled := True;
  dblcDLabUSE.Enabled := True;

  sSQL :='SELECT CEDUID, CEDUDES '+
         'FROM APO108 ORDER BY CEDUID';
  DM1.cdsCEdu.FetchOnDemand:=False;
  DM1.cdsCEdu.PacketRecords:=100;
  DM1.FiltraCDS(DM1.cdsCEdu,sSQL);
  DM1.cdsCEdu.FetchOnDemand:=True;

  pnlDatosLaborales.Height:= 345;
  pnlDatosLaborales.Left  := 11;
  pnlDatosLaborales.Top   := 48;
  pnlDatosLaborales.Width := 760;
  pnlDatosLaborales.Visible:=True;
  dbeCodigoModular.SetFocus;

  DM1.cdsDLabo.Insert;

  LipiaEditsDL;

  dblcCargo.Text:='03';
  DM1.cdsDLabo.FieldByName('ASOCARID').AsString:='03';
  xWhere:='CARGOID='''+dblcCargo.Text+'''';
  edtCargo.Text:=DM1.DisplayDescrip('prvSQL','APO111','CARGODES',xWhere,'CARGODES');

  dblcDLabEstLab.Text:='AC';
  DM1.cdsDLabo.FieldByName('ASOSITID').AsString:='AC';
  xWhere:='ASOSITID='''+dblcDLabEstLab.Text+'''';
  edtDLabEstLab.Text:=DM1.DisplayDescrip('prvSQL','APO106','ASOSITDES',xWhere,'ASOSITDES');
  cbVigencia.Checked:=False;

  //** 13/11/2002 - PJSV
  if FAsociados.wNuevo = 'S' then
  begin
    DM1.cdsDLabo.FieldByName('ASOCODMOD').AsString := FAsociados.dbeCodMod.text;
    dbeCodigoModular.text := FAsociados.dbeCodMod.text;
  end;
end;

procedure TFDLab.sbtnDLabCancelarClick(Sender: TObject);
begin
  DM1.wModo:='';
  DM1.cdsDLabo.CancelUpdates;
  pnlDatosLaborales.Visible:=False;
end;

procedure TFDLab.dbgDatosLaboralesDblClick(Sender: TObject);
begin
  If DM1.cdsDLabo.RecordCount=0 then
  Begin
    ErrorMsg('Error','No existen Registros a Editar');
    exit;
  End;
  DM1.wModo := 'M';

  Screen.Cursor:=crHourGlass;
  //** 13/11/2002 - PJSV
  dbeCodigoModular.Enabled := False;
  dbeDLCodPago.Enabled := False;
  dblcDLabUPro.Enabled := False;
  dblcDLabUPago.Enabled := False;
  dblcDLabUSE.Enabled := False;

  xWhere:='USEID='''+dblcDLabUSE.Text+'''';
  edtDLabUSE.Text:=DM1.DisplayDescrip('prvSQL','APO101','USENOM',xWhere,'USENOM');

  xWhere:='UPAGOID ='''+dblcDLabUPago.Text+'''';
  edtDLabUPago.Text:=DM1.DisplayDescrip('prvSQL','APO103','UPAGONOM',xWhere,'UPAGONOM');

  xWhere:='UPROID='''+dblcDLabUPro.Text+'''';
  edtDLabUProc.Text:=DM1.DisplayDescrip('prvSQL','APO102','UPRONOM',xWhere,'UPRONOM');

  xWhere:='DPTOID='''+dblcdDepto.Text+'''';
  edtDepto.Text:=DM1.DisplayDescrip('prvSQL','APO158','DPTODES',xWhere,'DPTODES');

  xWhere:='CIUDID='''+dblcdProv.Text+'''';
  edtProvincia.Text:=DM1.DisplayDescrip('prvSQL','APO123','CIUDDES',xWhere,'CIUDDES');

  xWhere:='ZIPID='''+dblcdDist.Text+'''';
  edtDist.Text:=DM1.DisplayDescrip('prvSQL','APO122','ZIPDES',xWhere,'ZIPDES');

  xWhere:='CARGOID='''+dblcCargo.Text+'''';
  edtCargo.Text:=DM1.DisplayDescrip('prvSQL','APO111','CARGODES',xWhere,'CARGODES');

  sSQL :='SELECT CEDUID, CEDUDES '+
         'FROM APO108 ORDER BY CEDUID';
  DM1.cdsCEdu.FetchOnDemand:=False;
  DM1.cdsCEdu.PacketRecords:=100;
  DM1.FiltraCDS(DM1.cdsCEdu,sSQL);
  DM1.cdsCEdu.FetchOnDemand:=True;

  xWhere:='ASOSITID='''+dblcDLabEstLab.Text+'''';
  edtDLabEstLab.Text:=DM1.DisplayDescrip('prvSQL','APO106','ASOSITDES',xWhere,'ASOSITDES');

  xWhere:='CEDUID='''+dblcbdCEdu.Text+'''';
  edtCEdu.Text:=DM1.DisplayDescrip('prvSQL','APO108','CEDUDES',xWhere,'CEDUDES');

  If DM1.cdsDLabo.FieldByName('FVIGENTE').AsString='S' then cbVigencia.Checked:=True;
  If DM1.cdsDLabo.FieldByName('FVIGENTE').AsString='N' then cbVigencia.Checked:=False;

  If cbVigencia.Checked=True then
    Begin
      EstadoCB:=True
    End
  Else
    Begin
      EstadoCB:=False
    End;

  DM1.cdsDLabo.Edit;
  pnlDatosLaborales.Height:= 345;
  pnlDatosLaborales.Left  := 11;
  pnlDatosLaborales.Top   := 48;
  pnlDatosLaborales.Width := 760;
  pnlDatosLaborales.visible:=true;
  Screen.Cursor:=crDefault;
  //** 13/11/2002 - PJSV
  If dbeDLCodPago.enabled then
   dbeDLCodPago.SetFocus;
end;

procedure TFDLab.dblcDLabUSEExit(Sender: TObject);
begin
  xWhere:='USEID='+QuotedStr(dblcDLabUSE.Text);
  edtDLabUSE.Text:=DM1.DisplayDescrip('prvSQL','APO101','USENOM',xWhere,'USENOM');
end;

procedure TFDLab.sbtnDLabAceptarClick(Sender: TObject);
var
  xN,xX:string;
  xMarca: TBookmark;
begin
  if (DM1.cdsDLabo.Modified=True) or (DM1.cdsDLabo.ChangeCount > 0) or (cbVigencia.Checked<>EstadoCB) Then
  begin
    DM1.cdsDLabo.Edit;
    If (DM1.wModo='A') or (DM1.wModo='M') Then
    Begin
      If Not ValidaDatosLab then exit;

      Screen.Cursor:=crHourGlass;
      //** 13/11/2002 - PJSV
      If (DM1.wModo='A') then
      begin
        //** 19/12/2002 - PJSV
        //** CALCULO DEl codigo ASOID
        if Length(DM1.cdsAso.FieldByName('ASOID').AsString) = 0 then
         begin
          xTipocorre := '7';
          xArea := DM1.DisplayDescrip('prvSQL','CRE117','MODULOID','AREAID=''005''','MODULOID');
          xCorreWhere :=  ' CREAREA = '+quotedstr(xArea)+' and '+
                          ' TIPO ='+quotedstr(xTipocorre)+' and ';
          xCorreWherex := ' x.CREAREA = '+quotedstr(xArea)+' and '+
                          ' x.TIPO ='+quotedstr(xTipocorre)+' and ';
          xCorreWherey := ' y.CREAREA = '+quotedstr(xArea)+' and '+
                          ' y.TIPO ='+quotedstr(xTipocorre);
          xTabla := 'CRE210';
          xCeros := 10;
          xCorreCampo := 'ASOID';
          Correlativo;
          xCorreASOID := xCorre;
        end
       else
        xCorreASOID := DM1.cdsAso.FieldByName('ASOID').AsString;

        if dm1.cdsAso.State = dsBrowse then
         DM1.cdsAso.Edit;
        DM1.cdsAso.FieldByName('ASOID').AsString:= xCorreASOID;
        DM1.cdsAso.FieldByName('CIAID').AsString:= '02';  //** por defecto
        FAsociados.dbeCodigo.Text:=DM1.cdsAso.FieldByName('ASOID').AsString;
        //**
        //DM1.cdsDLabo.FieldByName('ASOSITID').AsString:='AC';
      end;

      DM1.cdsDLabo.FieldByName('ASOID').AsString:=DM1.cdsAso.FieldByName('ASOID').AsString;
      DM1.cdsDLabo.FieldByName('ASOCODMOD').AsString :=  dbeCodigoModular.text; //DM1.cdsAso.FieldByName('ASOCODMOD').AsString;
      //**
      DM1.cdsDLabo.FieldByName('CEDUDES').AsString:=edtCEdu.Text;
      DM1.cdsDLabo.FieldByName('UPAGOID').AsString;
      DM1.cdsDLabo.FieldByName('UPROID').AsString;
      DM1.cdsDLabo.FieldByName('FREG').AsDateTime:=Date;
      DM1.cdsDLabo.FieldByName('HREG').AsDateTime:=Date+SysUtils.Time;;

      If cbVigencia.Checked Then
      	DM1.cdsDLabo.FieldByName('FVIGENTE').AsString:='X'
      else
      	DM1.cdsDLabo.FieldByName('FVIGENTE').AsString:='N';

      cdsPost(DM1.cdsDLabo);
      Dm1.AplicaDatos(DM1.cdsDLabo,'DLAB');

      If cbVigencia.Checked Then
      Begin
        DM1.cdsAso.Edit;
        DM1.cdsAso.FieldByName('ASOCODMOD').AsString:=DM1.cdsDLabo.FieldByName('ASOCODMOD').AsString;
        DM1.cdsAso.FieldByName('ASOCODPAGO').AsString:=DM1.cdsDLabo.FieldByName('ASOCODPAGO').AsString;
        //** 13/11/2002 - PJSV
        If (DM1.wModo='A') then
         DM1.cdsAso.FieldByName('ASOCODAUX').AsString:= DM1.BuscaCodMod('APO201',DM1.cdsDLabo.FieldByName('ASOCODMOD').AsString);
        //**
        DM1.cdsAso.FieldByName('USEID').AsString:=DM1.cdsDLabo.FieldByName('USEID').AsString;
        DM1.cdsAso.FieldByName('UPAGOID').AsString:=DM1.cdsDLabo.FieldByName('UPAGOID').AsString;
        DM1.cdsAso.FieldByName('UPROID').AsString:=DM1.cdsDLabo.FieldByName('UPROID').AsString;
        DM1.cdsAso.FieldByName('ASOSITID').AsString:=DM1.cdsDLabo.FieldByName('ASOSITID').AsString;
        
        xWhere:='ASOSITID='''+dblcDLabEstLab.Text+'''';
        DM1.DisplayDescrip('prvSQL','APO106','ASOSITDES, NOREQCOLEG',xWhere,'ASOSITDES');
        if dm1.cdsQry.FieldByName('NOREQCOLEG').AsString = 'S' then
          DM1.cdsAso.FieldByName('ASOTIPID').AsString:=DM1.cdsDLabo.FieldByName('ASOSITID').AsString;

        cdsPost(DM1.cdsAso);
        DM1.cdsAso.Post;
        Dm1.AplicaDatos(DM1.cdsAso,'ASO');

        FAsociados.dblcSituacionExit(nil);
        FAsociados.dblcTipoExit(nil);

      	xMarca:=DM1.cdsDLabo.GetBookmark;
      	DM1.cdsDLabo.First;
      	While Not DM1.cdsDLabo.Eof Do
      	 Begin
          If DM1.cdsDLabo.FieldByName('FVIGENTE').AsString='S' Then
          Begin
            DM1.cdsDLabo.Edit;
            DM1.cdsDLabo.FieldByName('FVIGENTE').AsString:='N';
            cdsPost(DM1.cdsDLabo);
            DM1.cdsDLabo.Post;
            Dm1.AplicaDatos(DM1.cdsDLabo,'DLAB');
            xN:='S';
          End;
          If DM1.cdsDLabo.FieldByName('FVIGENTE').AsString='X' Then
          Begin
            DM1.cdsDLabo.Edit;
            DM1.cdsDLabo.FieldByName('FVIGENTE').AsString:='S';
            cdsPost(DM1.cdsDLabo);
            DM1.cdsDLabo.Post;
            Dm1.AplicaDatos(DM1.cdsDLabo,'DLAB');
            xX:='S';
          End;
          If (xN='S') And (xX='S') Then
          begin
	          Screen.Cursor:=crDefault;
            break;
          end;
          DM1.cdsDLabo.Next;
        End;
      	DM1.cdsDLabo.GotoBookmark(xMarca);
      End;
    end;
  end;
  Screen.Cursor:=crDefault;
  ShowMessage('Registro Grabado');
  //** 13/11/2002 - PJSV
  If FAsociados.wNuevo = 'S' then
  begin
    FAsociados.dbeCodMod.enabled := False;
    FAsociados.dblcUProceso.enabled := False;
    FAsociados.dblcUSE.enabled := False;
    Close;
  end;
  //**
end;

procedure TFDLab.dblcDLabProvExit(Sender: TObject);
begin
{  xWhere:='CIUDID='''+dblcDLabProv.Text+'''';
  edtDLabProv.Text:=DM1.DisplayDescrip('prvSQL','APO123','CIUDDES',xWhere,'CIUDDES');}

end;

procedure TFDLab.dblcDLabUPagoExit(Sender: TObject);
begin
  sSQL := 'SELECT * '+
          'FROM APO101 WHERE UPAGOID='+QuotedStr(dblcDLabUPago.Text)+
          'ORDER BY USEID';
//  DM1.FiltraCDS(DM1.cdsUSES,sSQL);
  DM1.cdsUSES.filter := '';
  DM1.cdsUSES.Filtered := False;
  DM1.cdsUSES.close;
//  DM1.cdsUSES.ProviderName := 'prvQry';
  DM1.cdsUSES.dataRequest(sSql);
  DM1.cdsUSES.open;

  //** 13/11/2002 - PJSV
  xWhere:='UPAGOID ='+quotedstr(dblcDLabUPago.Text);
  edtDLabUPago.Text:=DM1.DisplayDescrip('prvSQL','APO103','UPAGONOM',xWhere,'UPAGONOM');
  //**
end;

procedure TFDLab.dblcDLabUProExit(Sender: TObject);
begin
  xWhere:='UPROID='''+dblcDLabUPro.Text+'''';
  edtDLabUProc.Text:=DM1.DisplayDescrip('prvSQL','APO102','UPRONOM',xWhere,'UPRONOM');

  sSQL := 'SELECT * '+
          'FROM APO103 WHERE UPROID='+QuotedStr(dblcDLabUPro.Text);
  DM1.cdsUPago.filter := '';
  DM1.cdsUPago.filtered := False;            
  DM1.cdsUPago.close;
  DM1.cdsUPago.dataRequest(sSql);
  DM1.cdsUPago.open;
//  DM1.FiltraCDS(DM1.cdsUPago,sSQL);
end;

procedure TFDLab.dblcDLabDptoExit(Sender: TObject);
begin
{  xWhere:='DPTOID='''+dblcDLabDpto.Text+'''';
  edtDLabDpto.Text:=DM1.DisplayDescrip('prvSQL','APO158','DPTODES',xWhere,'DPTODES');}

end;

procedure TFDLab.dblcDLabDistExit(Sender: TObject);
begin
{  xWhere:='ZIPID='''+dblcDLabDist.Text+'''';
  edtDLabDist.Text:=DM1.DisplayDescrip('prvSQL','APO122','ZIPDES',xWhere,'ZIPDES');}



end;

procedure TFDLab.dblcDLabEstLabExit(Sender: TObject);
begin
  xWhere:='ASOSITID='''+dblcDLabEstLab.Text+'''';
  edtDLabEstLab.Text:=DM1.DisplayDescrip('prvSQL','APO106','ASOSITDES, NOREQCOLEG',xWhere,'ASOSITDES');
  if dm1.cdsQry.FieldByName('NOREQCOLEG').AsString = 'S' then
  begin
    dblcbdCEdu.Enabled:=False;
    dblcdDepto.Enabled:=False;
    dblcdProv.Enabled:=False;
    dblcdDist.Enabled:=False;
    dblcCargo.Enabled:=False;
    dbdtpDLFinicio.Enabled:=False;
    dbdtpDLFFin.Enabled:=False;
  end
  else
  begin
    dblcbdCEdu.Enabled:=True;
    dblcdDepto.Enabled:=True;
    dblcdProv.Enabled:=True;
    dblcdDist.Enabled:=True;
    dblcCargo.Enabled:=True;
    dbdtpDLFinicio.Enabled:=True;
    dbdtpDLFFin.Enabled:=True;
  end;

end;

procedure TFDLab.dblcCargoExit(Sender: TObject);
begin
  xWhere:='CARGOID='''+dblcCargo.Text+'''';
  edtCargo.Text:=DM1.DisplayDescrip('prvSQL','APO111','CARGODES',xWhere,'CARGODES');
end;

procedure TFDLab.FormActivate(Sender: TObject);
begin
  sSQL := 'SELECT ASOSITID,ASOSITDES,ASOSITABR,ASOFACT,HREG,FREG,USUARIO FROM APO106'+
          ' ORDER BY ASOSITID';
  DM1.FiltraCDS(DM1.cdsSAso,sSQL);

  xWhere:='ASOSITID='''+dblcDLabEstLab.Text+'''';
  edtDLabEstLab.Text:=DM1.DisplayDescrip('prvSQL','APO106','ASOSITDES',xWhere,'ASOSITDES');

  xWhere:='UPAGOID ='''+dblcDLabUPago.Text+'''';
  edtDLabUPago.Text:=DM1.DisplayDescrip('prvSQL','APO103','UPAGONOM',xWhere,'UPAGONOM');

  FDLab.lbTitulo.Caption:='Asociado : '+DM1.cdsAso.FieldByName('ASOAPENOM').AsString;
  FDLab.lbCodigo.Caption:='Código Modular : '+DM1.cdsAso.FieldByName('ASOCODMOD').AsString;

  sSQL := 'SELECT ASOID, ASOCODMOD, ASOCODPAGO, USEID, UPROID, UPAGOID, CIUDID, DPTOID, '+
          'CEDUID, CEDUDES, ASOFINI, ASOFFIN, ASOCARID, ASOSITID, FVIGENTE, FREG, HREG, ZIPID '+
          'FROM APO202 WHERE ASOID='+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);
  DM1.FiltraCDS(DM1.cdsDLabo,sSQL);

  dbgDatosLaborales.Selected.Clear;
  dbgDatosLaborales.Selected.Add('ASOCODPAGO'#9'15'#9'Cod~Pago');
  dbgDatosLaborales.Selected.Add('USEID'#9'3'#9'Cod~U.S.E.');
  dbgDatosLaborales.Selected.Add('UPAGOID'#9'3'#9'U.~Pago');
  dbgDatosLaborales.Selected.Add('CEDUDES'#9'37'#9'Centro~Educativo');
  dbgDatosLaborales.Selected.Add('ASOFINI'#9'10'#9'Fecha~Inicio');
  dbgDatosLaborales.Selected.Add('ASOFFIN'#9'10'#9'Fecha~Final');
  dbgDatosLaborales.Selected.Add('ASOCARID'#9'5'#9'Cargo');
  dbgDatosLaborales.Selected.Add('ASOSITID'#9'12'#9'Situación');
  dbgDatosLaborales.RefreshDisplay;

  //** 13/11/2002 - PJSV
  If FAsociados.wNuevo = 'S' then
   begin
    btnDLaborales.OnClick(btnDLaborales);
   end;
end;

procedure TFDLab.dblcbdCEduExit(Sender: TObject);
var
  xxx : String;
begin
  if Length(Trim(dblcbdCEdu.Text)) > 0 then
  begin
    xWhere:='CEDUID='''+dblcbdCEdu.Text+'''';
    xxx := DM1.DisplayDescrip('prvSQL','APO108','CEDUDES',xWhere,'CEDUDES');
    edtCEdu.Text:= xxx;
    DM1.cdsDLabo.FieldByName('CEDUDES').AsString:= xxx;
  end;
end;

procedure TFDLab.dbgDatosLaboralesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_DELETE) and (ssCtrl in Shift)  then
  begin
  	if DM1.cdsDLabo.RecordCount > 0 then
    begin
      if Question('Confirmar', 'Esta Seguro de Eliminar '+ #13+#13+
                  ' Desea Continuar ') then
	    begin
  		  DM1.cdsDLabo.Delete;
        Dm1.AplicaDatos(DM1.cdsAso,'ASO');
        //DM1.ControlTran;
        ShowMessage('Registro Eliminado');
      end;
    end
    else
      ErrorMsg(Caption, ' No Existen Registros a Eliminar ');
	end;
	dbgDatosLaborales.RefreshDisplay;
end;

procedure TFDLab.dblcNotInList(Sender: TObject;
  LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
begin
//  Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).DataField,NewValue,[]);
  Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookupField,NewValue,[]);
  if not Accept then
    TwwDBCustomLookupCombo(Sender).DropDown;
end;

procedure TFDLab.LipiaEditsDL;
begin
  dbeDLCodPago.Text:='';
  edtDLabUProc.Text:='';
  edtDLabUSE.Text:='';
  edtDLabUPago.Text:='';
  dbdtpDLFinicio.Date:=Date;
  dbdtpDLFFin.Date:=Date;
  edtDLabUSE.Text:='';
  edtCEdu.text:='';
  edtDepto.Text:='';
  edtProvincia.Text:='';
  edtDist.Text:='';
end;

function TFDLab.ValidaDatosLab:Boolean;
var
  Present,FPresent: TDateTime;
  Year, Month, Day, FYear, FMonth, FDay: Word;
begin
     result:=False;

     If length(dbeCodigoModular.Text)=0 Then Begin
        ShowMessage('Registre el Código Modular');
        dbeCodigoModular.SetFocus;
        exit;
     End;
     If length(dbeDLCodPago.Text)=0 Then Begin
        ShowMessage('Registre el Código de Pago');
        dbeDLCodPago.SetFocus;
        exit;
      End;
      If length(edtDLabUSE.Text)=0 Then Begin
        ShowMessage('Seleccione la USE');
        dblcDLabUSE.SetFocus;
        exit;
      End;
      If length(edtDLabUProc.Text)=0 Then Begin
        ShowMessage('Seleccione la Unidad de Proceso');
        dblcDLabUPro.SetFocus;
        exit;
      End;
      If length(dblcDLabUPago.Text)=0 Then Begin
        ShowMessage('Seleccione la Unidad de Pago');
        dblcDLabUPago.SetFocus;
        exit;
      End;
{      If length(edtDLRegimen.Text)=0 Then Begin
        ShowMessage('Seleccione el Régimen de Pensión');
        dblcDLRegimen.SetFocus;
        exit;
      End;}

      If length(edtCEdu.Text)=0 Then Begin
        xWhere:='ASOSITID='''+dblcDLabEstLab.Text+'''';
         DM1.DisplayDescrip('prvSQL','APO106','NOREQCOLEG',xWhere,'NOREQCOLEG');
         if dm1.cdsQry.FieldByName('NOREQCOLEG').AsString <> 'S' then
         BEGIN
          ShowMessage('Registre el Nombre del Centro Educativo');
          dblcbdCEdu.SetFocus;
          exit;
         end;  
      End;

      If (length(dbdtpDLFinicio.Text)<>0) And (length(dbdtpDLFFin.Text)<>0) Then
      Begin
          Present:= dbdtpDLFInicio.Date;
          DecodeDate(Present, Year, Month, Day);

          FPresent:=dbdtpDLFFin.Date;
          DecodeDate(FPresent,FYear, FMonth, FDay);

          If Year>Date then
          begin
            ShowMessage('La Fecha de Inicio debe ser menor a la Fecha Actual');
            dbdtpDLFInicio.SetFocus;
            exit;
          end;

          If Year>FYear then
          begin
            ShowMessage('La Fecha de Inicio debe ser menor a la Fecha de Fin');
            dbdtpDLFInicio.SetFocus;
            exit;
          end;

          If FYear>Date then
          begin
            ShowMessage('La Fecha de Fin debe ser menor a la Fecha Actual');
            dbdtpDLFInicio.SetFocus;
            exit;
          end;

      End;
      If (length(dbdtpDLFinicio.Text)<>0) And (length(dbdtpDLFFin.Text)=0) Then
      Begin
            Present:= dbdtpDLFinicio.Date;
            FPresent:=dbdtpDLFFin.Date;
            DecodeDate(Present, Year, Month, Day);
            DecodeDate(FPresent,FYear, FMonth, FDay);

            If Year>Date then
            begin
              ShowMessage('La Fecha de Inicio debe ser menor a la Fecha Actual');
              dbdtpDLFinicio.SetFocus;
              exit;
            end;
      End;
      If (length(dbdtpDLFinicio.Text)=0) And (length(dbdtpDLFFin.Text)<>0) Then
      Begin
              ShowMessage('Debe registrar la Feha de Inicio');
              dbdtpDLFinicio.SetFocus;
              exit;
      End;

    {      If length(edtDLabDpto.Text)=0 Then Begin
            ShowMessage('Seleccione el Departamento');
            dblcDLabDpto.SetFocus;
            exit;
          End;}
    {      If length(edtDLabProv.Text)=0 Then Begin
            ShowMessage('Seleccione la Provincia');
            dblcDLabProv.SetFocus;
            exit;
          End;}
    {      If length(edtDLabDist.Text)=0 Then Begin
            ShowMessage('Seleccione el Distrito');
            dblcDLabDist.SetFocus;
            exit;
          End;}
    {      If length(dbeDireccion.Text)=0 Then Begin
            ShowMessage('Registre la Dirección');
            dbeDireccion.SetFocus;
            exit;
          End;}
   result:=true;
End;


procedure TFDLab.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  xWhere:='UPROID='''+FAsociados.dblcUProceso.Text+'''';
  FAsociados.edtUProceso.Text:=DM1.DisplayDescrip('prvSQL','APO102','UPRONOM',xWhere,'UPRONOM');
  xWhere:='USEID='''+FAsociados.dblcUSE.Text+'''';
  FAsociados.edtUSE.Text:=DM1.DisplayDescrip('prvSQL','APO101','USENOM',xWhere,'USENOM');
  xWhere:='UPAGOID ='''+FAsociados.dblcUPago.Text+'''';
  FAsociados.edtUPago.Text:=DM1.DisplayDescrip('prvSQL','APO103','UPAGONOM',xWhere,'UPAGONOM');
end;

procedure TFDLab.dblcdDeptoExit(Sender: TObject);
begin
  If Trim(dblcdDepto.Text)<>'' Then
  Begin
    edtDepto.Text:=DM1.cdsDpto.FieldByName('DPTODES').AsString;
    sSQL := 'SELECT CIUDID,CIUDDES,DPTOID FROM APO123'+
            ' WHERE DPTOID='+''''+dblcdDepto.Text+''''+
            ' ORDER BY DPTOID,CIUDID';
  End
  Else
  Begin
    edtDepto.Clear;
    DM1.FiltraCDS(DM1.cdsDist,'SELECT ZIPID,ZIPDES,CIUDID,DPTOID FROM APO122 ORDER BY DPTOID,CIUDID,ZIPID');
    sSQL := 'SELECT CIUDID,CIUDDES,DPTOID FROM APO123 ORDER BY DPTOID,CIUDID';
  End;
  DM1.FiltraCDS(DM1.cdsProvin,sSQL);
  DM1.cdsDLabo.FieldByName('CIUDID').Clear;
  edtProvincia.Clear;
  DM1.cdsDLabo.FieldByName('ZIPID').Clear;
  edtDist.Clear;

end;

procedure TFDLab.dblcdProvExit(Sender: TObject);
begin
  If Trim(dblcdProv.Text)<>'' Then
  Begin
    edtProvincia.Text:=DM1.cdsProvin.FieldByName('CIUDDES').AsString;
    sSQL := 'SELECT ZIPID,ZIPDES,CIUDID,DPTOID FROM APO122 '+
            ' WHERE CIUDID='+''''+dblcdProv.Text+''' AND'+
            ' DPTOID='+''''+dblcdDepto.Text+''''+
            ' ORDER BY DPTOID,CIUDID,ZIPID';
  End
  Else
  Begin
    edtProvincia.Clear;
    sSQL := 'SELECT ZIPID,ZIPDES,CIUDID,DPTOID FROM APO122 ORDER BY DPTOID,CIUDID,ZIPID';
  End;

  DM1.FiltraCDS(DM1.cdsDist,sSQL);
  DM1.cdsDLabo.FieldByName('ZIPID').Clear;
  edtDist.Clear;
end;

procedure TFDLab.dblcdDistExit(Sender: TObject);
begin
  If Trim(dblcdDist.Text)<>'' Then
  Begin
    edtDist.Text:=DM1.cdsDist.FieldByName('ZIPDES').AsString;
  End
  Else
    edtDist.Clear;
end;

procedure TFDLab.FormKeyPress(Sender: TObject; var Key: Char);
begin
 If key=#13 then
  Begin
   key:=#0;
   perform(CM_DialogKey,VK_TAB,0);
  End;

end;

Procedure TFDLab.Correlativo;
begin
  //** cuando es primera vez, se pasa el nombre del campo del cual se sacara el correlativo
  xCorre := xCorreCampo;
  Repeat
    //** si esto se repitiera más de una vez, xCorre será igual al correlativo que se
    //** encontro más 1
    CorreCred(xcorre);
    //** verifica en la tabla auxiliar que el correlativo no este tomado por otro usuario
    BuscaCorre;
    //** esta busqueda se repitirá hasta que se encuentra un correlativo que no haya
    //** sido tomado
  until xPaso = True;
end;

procedure TFDLab.CorreCred(pCorre : String);
var
 xCadena,xSql : String;
begin
 //** dependiendo del pCorre, lleno xCadena para el Sql
 If pCorre = 'CREDID' then
   xCadena := 'substr(CREDID,9,7)'
 else
   xCadena := pCorre;

   xSql := 'select '+xCadena+' +1 NUMCRED from CRE206 '+
           'where '+ xCorreWhere +
           xCorreCampo+' IN (select x.'+xCorreCampo+' from CRE206 x, CRE206 y '+
          ' where '+ xCorreWherex + xCorreWherey +')';
   Dm1.cdsQry.Close;
   Dm1.cdsQry.DataRequest(xSql);
   Dm1.cdsQry.Open;
   //** asigno el nuevo correlativo
   If Dm1.cdsQry.FieldByName('NUMCRED').AsInteger = 0 then
    xCorre := dm1.StrZero(IntToStr(Dm1.cdsQry.FieldByName('NUMCRED').AsInteger+1),xCeros)
   else
    xCorre := dm1.StrZero(IntToStr(Dm1.cdsQry.FieldByName('NUMCRED').AsInteger),xCeros);
end;

Procedure TFDLab.BuscaCorre;
var
 xSql : String;
begin
  //** por defecto
  xPaso := True;
  //** busco en la tabla auxiliar de correlativos si en xcorre ya existe,
  //** ejemplo : en CRE303 puede ser que este en el 1000 si más de un usuario toma
  //** este mas uno van a tener el 1001, lo cual es verdad, para evitar esto grabo
  //** en CRE201 y verifico que el 1001 no exista en este sino sigue buscando
  xSql := 'SELECT count(NUMERO) TOTAL FROM '+xTabla+' WHERE NUMERO='+quotedstr(xCorre);
  Dm1.cdsQry.Close;
  Dm1.cdsQry.DataRequest(xSql);
  Dm1.cdsQry.Open;
  //** False = para que siga repitiendo la busqueda
  If Dm1.cdsQry.FieldByName('TOTAL').Asfloat > 0 then
    xPaso := False
  else
   //** sino graba en la tabla auxiliar (cre201)
    begin
     xSql := 'INSERT INTO '+xTabla+' (NUMERO) VALUES (';
     If xCorreCampo = 'CREDID' then
      xSql := xSql + quotedstr(xCorreCadena+xCorre)+')'
     else
      xSql := xSql + quotedstr(xCorre)+')';
     DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

     If StrtoInt(xCorre) = 1 then
      begin
       If xCorreCampo = 'CREDID' then
        xSql := 'INSERT INTO CRE206 ('+xCorreCampo+',CREAREA,TIPO) VALUES ('+quotedstr(xCorreCadena+xCorre)+
                ','+quotedstr(xArea)+','+quotedstr(xTipocorre)+')'
       else
        xSql := 'INSERT INTO CRE206 ('+xCorreCampo+',CREAREA,TIPO) VALUES ('+quotedstr(xCorre)+
                ','+quotedstr(xArea)+','+quotedstr(xTipocorre)+')';
      end
     else
      begin
       If xCorreCampo = 'CREDID' then
        xSql := 'UPDATE CRE206 SET '+xCorreCampo+' ='+quotedstr(xCorreCadena+xCorre)+
                ' WHERE CREAREA ='+quotedstr(xArea)+
                ' AND SUBSTR(CREDID,1,2)='+quotedstr(copy(xCorreCadena,1,2))+
                ' AND SUBSTR(CREDID,3,4)='+quotedstr(copy(xCorreCadena,3,4))+
                ' AND SUBSTR(CREDID,7,2)='+quotedstr(copy(xCorreCadena,7,2))+
                ' AND TIPO ='+quotedstr(xTipocorre)
       else
        xSql := 'UPDATE CRE206 SET '+xCorreCampo+' ='+quotedstr(xCorre)+
                ' WHERE CREAREA ='+quotedstr(xArea)+
                ' AND TIPO ='+quotedstr(xTipocorre);
//                ' WHERE CREAREA ='+quotedstr(xArea);
      end;
     DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
    end;
end;

procedure TFDLab.dbeCodigoModularExit(Sender: TObject);
var
  xVar : String;
begin
  if Length(Trim(dbeCodigoModular.Text)) > 0 then
  begin
    xVar:=dm1.StrZero(dbeCodigoModular.Text,xLogCodMo);
    dbeCodigoModular.Text := xVar;
    DM1.cdsDLabo.FieldByName('ASOCODMOD').AsString:= xVar;
  end
  else
  begin
    dbeCodigoModular.Text := '';
    DM1.cdsDLabo.FieldByName('ASOCODMOD').AsString:='';
  end;
end;

end.
