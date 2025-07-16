unit APOD12;

// Inicio Uso Estándares: 01/08/2011
// Unidad               : APOD12
// Formulario           : FCambioUPago
// Fecha de Creación    : 15/12/2003
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Cambio de Unidad de Pago
// Actualizaciones      :
// HPC_201501_APO       : 06/01/2015 - Cambio de DCOM a Socket

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, StdCtrls, wwdblook, Wwdbdlg, fcButton,
  fcImgBtn, fcShapeBtn, Wwkeycb, ExtCtrls,wwclient, Buttons,
  variants, wwdbdatetimepicker, Db, DBClient, Wwdatsrc;

type
  TFCambioUPago = class(TForm)
    gbx1: TGroupBox;
    gbx2: TGroupBox;
    gbx4: TGroupBox;
    bbtnNuevo: TfcShapeBtn;
    bbtnGrabar: TfcShapeBtn;
    bbtnCancelar: TfcShapeBtn;
    bbtnSalir: TfcShapeBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    lblNumero: TLabel;
    dbdtpFechaEmision: TwwDBDateTimePicker;
    Label6: TLabel;
    dblcdUPro: TwwDBLookupComboDlg;
    edtUPRONOM: TEdit;
    edtUPRODIR: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    rgTipo: TRadioGroup;
    dbg1: TwwDBGrid;
    Label5: TLabel;
    cdsModificado: TwwClientDataSet;
    dsModificado: TwwDataSource;
    dbg3: TwwDBGrid;
    btnImprime: TfcShapeBtn;
    procedure bbtnSalirClick(Sender: TObject);
    procedure bbtnGrabarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dblcdUProExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure OnEnter(Sender: TObject);
    procedure dblcdUProKeyPress(Sender: TObject; var Key: Char);
    procedure rgTipoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbtnNuevoClick(Sender: TObject);
    procedure bbtnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnImprimeClick(Sender: TObject);
    procedure dbg4KeyPress(Sender: TObject; var Key: Char);
    procedure dbg4CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure dbg3KeyPress(Sender: TObject; var Key: Char);
  private
    strTmp : String ;
    procedure RecuperaUses  ( sUPROID : String );
    procedure RecuperaUPago ( sUPROID : String );

    procedure RecuperaUsesEdit  ( sUPROID : String );
    procedure RecuperaUPagoEdit ( sUPROID : String );

    procedure ConfiguracionInicial ;
    procedure LimpiaEdits ;
    procedure ValidaGrabacion ;
    procedure ValidaGrabacion2 ;
  public
  end;

var
  FCambioUPago: TFCambioUPago;

implementation

uses APODM, MsgDlgs,APO001;

{$R *.DFM}


procedure TFCambioUPago.bbtnSalirClick(Sender: TObject);
begin
  Close ;
end;

procedure TFCambioUPago.bbtnGrabarClick(Sender: TObject);
var
    sSQL : String ;
    cdsGrabacion  : TwwClientDataset ;
    cdsClone : TwwClientDataset ;
begin
    ValidaGrabacion2 ;
    //Configura cdsGrabacion
    cdsGrabacion := TwwClientDataset.CReate(self);
    cdsGrabacion.RemoteServer := dm1.DCOM1 ;
    cdsGrabacion.ProviderName := dm1.cdsQry.ProviderName ;
    cdsGrabacion.DataRequest('SELECT * FROM APO309');
    cdsGrabacion.Open ;
    cdsClone := TwwClientDataSet.CReate(self);
    cdsClone.CloneCursor(cdsModificado,True);
    cdsClone.Filter := 'NOT UPAGOID IS NULL AND UPAGOIDORI <> UPAGOID AND UPAGOID <>''''';
    cdsClone.Filtered := True ;
    cdsClone.First ;
    while not cdsClone.eof do
    begin
      cdsGrabacion.Append ;

      cdsGrabacion.FieldByName('UPROIDORI').ASString          :=  cdsClone.FieldByName('UPROID').ASString ;
      cdsGrabacion.FieldByName('USEIDORI').ASString           :=  cdsClone.FieldByName('USEID').ASString ;
      cdsGrabacion.FieldByName('UPAGOIDORI').ASString         :=  cdsClone.FieldByName('UPAGOIDORI').ASString ;
      cdsGrabacion.FieldByName('FDESHABILITADO').ASString     :=  'N' ;
      cdsGrabacion.FieldByName('UPROID').ASString             :=  dblcdUPro.Text ;
      cdsGrabacion.FieldByName('USEID').ASString              :=  cdsClone.FieldByName('USEID').ASString ;
      cdsGrabacion.FieldByName('UPAGOID').ASString            :=  cdsClone.FieldByName('UPAGOID').ASString ;
      cdsGrabacion.FieldByName('TIPO').ASString               :=  IntToStr(rgTipo.ItemIndex) ;

      cdsClone.Next ;
    end ;
    cdsGrabacion.Next ;
    //
    sSQL := 'BEGIN PCK_CAMBIO_UPAGO.SP_BORRA_TEMPORAL ; END ;' ;
    dm1.DCOM1.AppServer.Ejecutasql(sSQL) ;
    DM1.cdsQry.close ;
    DM1.cdsQry.DataRequest('SELECT * FROM TMP003');
    DM1.cdsQry.Open ;
    if dm1.cdsQry.FieldByName('CODIGO_ERROR').AsString = '0' then
    begin
      cdsGrabacion.DataRequest('SELECT * FROM APO309');
      if cdsGrabacion.ApplyUpdates(0) > 0 then
      begin
         Raise Exception.CReate('Error en la Actualización');
      end
      else
      begin
        sSQL := 'BEGIN PCK_CAMBIO_UPAGO.SP_ACTUALIZA_UPAGO(''' +  dblcdUPro.Text + ''',''' + dm1.wUsuario +''') ; END ;';

        dm1.DCOM1.AppServer.Ejecutasql(SSQL) ;
        DM1.cdsQry.close ;
        DM1.cdsQry.Datarequest('SELECT * FROM TMP003');
        DM1.cdsQry.Open ;
        if dm1.cdsQry.FieldByName('CODIGO_ERROR').AsString = '0' then
        begin
           lblNumero.Caption := dm1.cdsQry.FieldByName('ADICIONAL').AsString ;
           ShowMessage('Actualización Exitosa');
           //Actualizar Botones
           gbx1.Enabled := False ;
           bbtnGrabar   .Enabled := False ;
           bbtnCancelar .Enabled := False ;
           dbg3.ReadOnly         := True  ;
        end
        else
           Raise Exception.CReate('Error en la Actualización');
      end ;
    end
    else
      Raise Exception.CReate('Error en el Borrado de Temporal');
end;

procedure TFCambioUPago.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If (Key = #13) and (ActiveControl <> dbg3 ) Then
    begin
     Key := #0;
     Perform(CM_DialogKey, VK_TAB, 0);
    end;
end;

procedure TFCambioUPago.dblcdUProExit(Sender: TObject);
begin
   if dblcdUPro.Text <> strTmp then
   begin
     if not DM1.cdsUPro.Locate('UPROID', VarArrayOf([dblcdUPro.Text]),[]) then
      begin
       edtUPRONOM.Clear ;
       edtUPRODIR.Clear ;
       dblcdUPro.Clear ;
      end
      else
      begin
       edtUPRONOM.Text := DM1.cdsUPro.FieldByName('UPRONOM').AsString;
       edtUPRODIR.Text := DM1.cdsUPro.FieldByName('UPRODIR').AsString;
      end ;
     { adicionales }
     if rgTipo.ItemIndex = 0 then
       RecuperaUses (dblcdUPro.Text)
     else
       RecuperaUPago(dblcdUPro.Text);
   end ;
end;

procedure TFCambioUPago.FormCreate(Sender: TObject);
begin
   strTmp := '' ;
end;

procedure TFCambioUPago.OnEnter(Sender: TObject);
begin
   strTmp := TCustomEdit(Sender).Text ;
end;

procedure TFCambioUPago.dblcdUProKeyPress(Sender: TObject; var Key: Char);
begin
  if key = ' ' then
     key := #0;
end;

procedure TFCambioUPago.RecuperaUPago;
begin

  dbg1.Selected.Clear;
  dbg1.Selected.Add('UPAGOID'#9'10'#9'Cód.U.PAGO');
  dbg1.Selected.Add('UPAGONOM'#9'30'#9'U.PAGO');
  dbg1.ApplySelected;

  with dm1.cdsqry1 do
  begin
    close;
    IndexFieldNames := 'UPAGOID' ;
    DataRequest('SELECT UPAGOID , MIN(UPAGONOM) UPAGONOM FROM APO103 WHERE UPROID=''' + sUPROID + ''' AND NVL(FDESHABILITADO,''N'')=''N'' GROUP BY UPAGOID');
    Open ;
  end ;

  with dm1.cdsqry2 do
  begin
    Close;
    IndexFieldNames := 'UPROID;UPAGOID' ;
//20030619    DataRequest('SELECT UPROID,UPAGOID , MIN(UPAGONOM) UPAGONOM , MIN(NVL(FDESHABILITADO,''N'')) FDESHABILITADO FROM APO103 WHERE (UPROID <> ''' + sUPROID + ''') OR (UPROID=''' + sUPROID +''' AND NVL(FDESHABILITADO,''N'')=''S'') GROUP BY UPROID , UPAGOID');
    DataRequest('SELECT UPROID,UPAGOID , MIN(UPAGONOM) UPAGONOM , MIN(NVL(FDESHABILITADO,''N'')) FDESHABILITADO FROM APO103 WHERE (UPROID <> ''' + sUPROID + ''') AND (NVL(FDESHABILITADO,''N'')=''N'') GROUP BY UPROID , UPAGOID');
    Open ;
  end ;
{ wmc 666
  dbg3.Selected.Clear;
  dbg3.Selected.Add('UPROID'#9'7'#9'U.Proceso');
  dbg3.Selected.Add('UPAGOID'#9'7'#9'Cód.U.PAGO');
  dbg3.Selected.Add('UPAGONOM'#9'25'#9'U.PAGO');
  dbg3.ApplySelected;
}
//wmc 666  dbg3.Height  := dbg2.Height  ;

  cdsModificado.Close ;
  cdsModificado.IndexFieldNames := 'UPROID;UPAGOID' ;
  cdsModificado.CreateDataSet ;

  //Poner Datos Iniciales
  with dbg1.DataSource.DataSet do
  begin
     DisableControls ;
     First ;
     while not eof do
     begin
        cdsModificado.Append;
        cdsModificado.FieldByName('UPROID').AsString   := dblcdUPro.Text ;
        cdsModificado.FieldByName('UPAGOID').AsString  := FieldByName('UPAGOID').ASString ;
        cdsModificado.FieldByName('UPAGONOM').AsString := FieldByName('UPAGONOM').ASString ;
        Next ;
     end ;
     cdsModificado.Next ;
     EnableControls ;
  end ;

end;

procedure TFCambioUPago.RecuperaUses;
begin

  dbg1.Selected.Clear;
  dbg1.Selected.Add('USEID'#9'10'#9'Cód.USE');
  dbg1.Selected.Add('USENOM'#9'30'#9'USE');
  dbg1.ApplySelected;

  with DM1.cdsQry1 do
  begin
    Close;
    IndexFieldNames := 'USEID' ;
    DataRequest('SELECT USEID , MIN(USENOM) USENOM FROM APO101 WHERE UPROID=''' + sUPROID + ''' AND NVL(FDESHABILITADO,''N'')=''N'' GROUP BY USEID');
    Open ;
  end ;

  with dm1.cdsqry2 do
  begin
    Close;
    IndexFieldNames := 'UPROID;USEID';
    DataRequest('SELECT UPROID,USEID ,USENOM,UPAGOID FROM APO101 WHERE UPROID = ''' + sUPROID + ''' ');
    Open ;
  end ;

  dbg3.UnselectAll ;

  cdsModificado.close ;
  cdsModificado.IndexFieldNames := 'UPROID;USEID' ;
  cdsModificado.CreateDataSet ;
  //Poner Datos Iniciales
  with DM1.cdsQry2 do
  begin
     DisableControls ;
     First ;
     while not eof do
     begin
        cdsModificado.Append;
        cdsModificado.FieldByName('UPROID').AsString         := dblcdUPro.Text ;
        cdsModificado.FieldByName('USEID').AsString          := FieldByName('USEID').ASString ;
        cdsModificado.FieldByName('USENOM').AsString         := FieldByName('USENOM').ASString ;
        cdsModificado.FieldByName('UPAGOIDORI').AsString        := FieldByName('UPAGOID').ASString ;
//        cdsModificado.FieldByName('FDESHABILITADO').AsString := 'N';
        Next ;
     end ;
     cdsModificado.Next ;
     EnableControls ;
  end ;
  cdsModificado.IndexFieldNames := 'UPROID;USEID' ;
end;

procedure TFCambioUPago.rgTipoClick(Sender: TObject);
begin
  if not showing then
    exit ;
  if rgTipo.ItemIndex = 0 then
     RecuperaUses (dblcdUPro.Text)
  else
     RecuperaUPago (dblcdUPro.Text);
end;

procedure TFCambioUPago.ConfiguracionInicial;
begin
  LimpiaEDits;
  RecuperaUses('');
  gbx1.Enabled  := True ;

  dbg3.UnselectAll ;
  dbdtpFechaEmision.dATE := DM1.dtFechaSistema ;
  dblcdUPro.SetFocus ;
  bbtnGrabar.Enabled   := True ;
  bbtnCancelar.Enabled := True ;
  dbg3.ReadOnly        := False ;
end;

procedure TFCambioUPago.FormShow(Sender: TObject);
begin
  if dm1.wModo = 'A' then
  begin
     ConfiguracionInicial;
  end
  else
  begin
     dbg3.ReadOnly := True ;
     LimpiaEdits ;
     RecuperaUses('');
     RecuperaUsesEdit(dm1.cdsaso.FieldByName('UPROID').ASString) ;
     gbx1.Enabled := False ;
     bbtnGrabar   .Enabled := False ;
     bbtnCancelar .Enabled := False ;
     rgTipo.ItemIndex      := dm1.cdsaso.FieldByName('TIPO').AsInteger ;
     lblNumero.Caption     := dm1.cdsaso.FieldByName('NFUSION').AsString ;
     dbdtpFechaEmision.Date := dm1.cdsaso.FieldByName('FFUSION').AsDateTime ;
////
     dblcdUPro.Text        := dm1.cdsaso.FieldByName('UPROID').ASString ;
     if DM1.cdsUPro.Locate('UPROID', VarArrayOf([dm1.cdsaso.FieldByName('UPROID').ASString]),[]) then
      begin
       edtUPRONOM.Text := DM1.cdsUPro.FieldByName('UPRONOM').AsString;
       edtUPRODIR.Text := DM1.cdsUPro.FieldByName('UPRODIR').AsString;
      end ;
////
  end ;
end;

procedure TFCambioUPago.LimpiaEdits;
begin
  dbdtpFechaEmision.Clear ;
  dblcdUPro.Clear ;
  edtUPRONOM.Clear ;
  edtUPRODIR.Clear ;
  rgTipo.itemindex := 0 ;
  lblNumero.Caption := '' ;
end;

procedure TFCambioUPago.bbtnNuevoClick(Sender: TObject);
begin
   ConfiguracionInicial ;
end;

procedure TFCambioUPago.bbtnCancelarClick(Sender: TObject);
begin
  if dm1.wModo = 'A' then
     bbtnNuevo.OnClick(self);
end;

procedure TFCambioUPago.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  MTX.NEWQUERY;
end;

procedure TFCambioUPago.ValidaGrabacion;
var
   cdsClone1 , cdsClone2 : TwwClientDataset ;
   sUPROID , sUSEID : string ;
begin

   //Validar que se haya escogido La Unidad de Proceso Adecuada
   if trim(dblcdUPro.Text) = '' then
   begin
     dblcdUPro.SetFocus ;
     Raise exception.CReate('Ingrese Unidad de Proceso');
   end ;

   //Validar Posible Generación de Duplicados
   if cdsModificado.RecordCount > 0 then
   begin
     cdsClone1 := TwwClientDataset.Create(self) ;
     cdsClone2 := TwwClientDataset.Create(self) ;
     cdsClone1 . CloneCursor( dm1.cdsQry2 ,True ) ;
     cdsClone2 . CloneCursor( cdsModificado , True ) ;

     sUPROID := dblcdUPro.Text ;
     cdsClone2 . First ;
     while not cdsClone2.eof do
     begin
       sUSEID := cdsClone2.FieldBYName('USEID').ASString ;
       cdsClone1.filter := 'UPROID = ''' + sUPROID + ''' AND USEID = ''' + sUSEID + ''' ' ;
       cdsClone1.Filtered := TRue ;
       if cdsClone1.RecordCount > 0 then
       begin
          cdsModificado.Locate('UPROID;USEID',VarArrayOf([cdsclone2.FieldBYName('UPROID').ASString ,
                                                          cdsclone2.FieldBYName('USEID').ASString]),[]);
          dm1.cdsQry2.Locate('UPROID;USEID',VarArrayOf([cdsclone1.FieldBYName('UPROID').ASString ,
                                                          cdsclone1.FieldBYName('USEID').ASString]),[]);
          cdsClone1.Free ;
          cdsClone2.Free ;
          Raise Exception.Create('La Elección que Ha Hecho No Está Permitida ¡¡ VERIFIQUE !! ');
       end ;
       cdsClone2.Next ;
     end ;
     cdsClone1.Free ;
     cdsClone2.Free ;
   end ;
end;

procedure TFCambioUPago.ValidaGrabacion2;
var
   cdsClone1 : TwwClientDataset ;
   sUPROID , sUSEID : string ;
   iContador  : Integer ;
   cdsTmp    : TwwClientDataset ;
begin

   //Validar que se haya escogido La Unidad de Proceso Adecuada
   if trim(dblcdUPro.Text) = '' then
   begin
     dblcdUPro.SetFocus ;
     Raise exception.CReate('Ingrese Unidad de Proceso');
   end ;

   if dbg3.datasource.DataSet.state in [dsInsert,dsEdit] then
      dbg3.datasource.dataset.Post ;

   //Validar Modificaciones contra los Originales
   if dbg3.datasource.DataSet.recordcount = 0 then
     Raise Exception.Create('No hay Datos por Modificar');

   iContador := 0 ;
   with dbg3.DataSource.DataSet do
   begin
     DisableControls ;
     First ;
     while not eof do
     begin
        if (trim(fieldbyname('UPAGOID').AsString)<>'')
            and (trim(fieldbyname('UPAGOID').AsString)<>trim(fieldbyname('UPAGOIDORI').AsString)) then
        begin
          Inc(iContador);
          break;
        end ;
        Next ;
     end ;
     EnableControls;
   end ;

   if iContador = 0 then
      Raise Exception.Create('No hay Datos por Modificar');

   //Validar que existan las Unidades de Pago
   cdsTmp := TwwClientDataset.Create(self);
   cdsTmp.CloneCursor(cdsModificado,True);
   cdsTmp.Filter := 'NOT UPAGOID IS NULL AND UPAGOIDORI <> UPAGOID AND UPAGOID <>''''';
   cdstmp.Filtered := True ;
   cdsTmp.First ;
   while not cdsTmp.Eof do
   begin
      //Buscar la Unidad de Pago
      DM1.LimpiaClientDataset(DM1.cdsQry2);
      dm1.cdsQry2.DataRequest('SELECT COUNT(*) CONTADOR FROM APO103 WHERE UPROID = '''
                                + cdsTmp.FieldByName('UPROID').AsString + ''' AND UPAGOID = '''
                                + cdsTmp.FieldByName('UPAGOID').AsString + ''' ');
      DM1.cdsQry2.Open ;
      if dm1.cdsQry2.FieldByName('CONTADOR').ASInteger = 0 then
      begin
         dbg3.DataSource.DataSet.Locate('UPROID;USEID;UPAGOIDORI',
                                VarArrayOf([cdsTmp.FieldByName('UPROID') .AsString,
                                            cdsTmp.FieldByName('USEID')  .AsString,
                                            cdsTmp.FieldByName('UPAGOIDORI').AsString]),[]);
         cdsTmp.Free ;
         Raise Exception.Create('La Unidad de Pago seleccionada ' +#13
                              + 'No se encuentra registrada en la Base de Datos');
      end ;
      cdstmp.Next ;
   end ;
   cdsTmp.Free ;

end;

procedure TFCambioUPago.RecuperaUPagoEdit(sUPROID: String);
begin

  dbg1.Selected.Clear;
  dbg1.Selected.Add('UPAGOID'#9'10'#9'Cód.U.PAGO');
  dbg1.Selected.Add('UPAGONOM'#9'30'#9'U.PAGO');
  dbg1.ApplySelected;

  with dm1.cdsqry1 do
  begin
    close;
    IndexFieldNames := 'UPAGOID' ;
    DataRequest('SELECT UPAGOID , MIN(UPAGONOM) UPAGONOM FROM APO103 WHERE UPROID=''' + sUPROID + ''' AND NVL(FDESHABILITADO,''N'')=''N'' GROUP BY UPAGOID');
    Open ;
  end ;

  with dm1.cdsqry2 do
  begin
    Close;
    IndexFieldNames := 'UPROID;UPAGOID' ;
    DataRequest('SELECT UPROID,UPAGOID , MIN(UPAGONOM) UPAGONOM , MIN(NVL(FDESHABILITADO,''N'')) FDESHABILITADO FROM APO103 WHERE (UPROID <> ''' + sUPROID + ''') OR (UPROID=''' + sUPROID +''' AND NVL(FDESHABILITADO,''N'')=''S'') GROUP BY UPROID , UPAGOID');
    Open ;
  end ;
{wmc 666
  dbg3.Selected.Clear;
  dbg3.Selected.Add('UPROID'#9'7'#9'U.Proceso');
  dbg3.Selected.Add('UPAGOID'#9'7'#9'Cód.U.PAGO');
  dbg3.Selected.Add('UPAGONOM'#9'25'#9'U.PAGO');
  dbg3.ApplySelected;
}
//wmc 666  dbg3.Height  := dbg2.Height  ;

  cdsModificado.Close ;
  cdsModificado.IndexFieldNames := 'UPROID;UPAGOID' ;
  cdsModificado.CreateDataSet ;

  //Poner Datos Iniciales
  with dbg1.DataSource.DataSet do
  begin
     DisableControls ;
     First ;
     while not eof do
     begin
        cdsModificado.Append;
        cdsModificado.FieldByName('UPROID').AsString   := dblcdUPro.Text ;
        cdsModificado.FieldByName('UPAGOID').AsString  := FieldByName('UPAGOID').ASString ;
        cdsModificado.FieldByName('UPAGONOM').AsString := FieldByName('UPAGONOM').ASString ;
        Next ;
     end ;
     cdsModificado.Next ;
     EnableControls ;
  end ;

end;

procedure TFCambioUPago.RecuperaUsesEdit(sUPROID: String);
var
  cdsTmp : TwwClientDataset ;
  sSQL : String ;
begin
  dbg1.Selected.Clear;
  dbg1.Selected.Add('USEID'#9'10'#9'Cód.USE');
  dbg1.Selected.Add('USENOM'#9'30'#9'USE');
  dbg1.ApplySelected;

  with DM1.cdsQry1 do
  begin
    Close;
    IndexFieldNames := 'USEID' ;
    DataRequest('SELECT USEID , MIN(USENOM) USENOM FROM APO101 WHERE UPROID=''' + sUPROID + ''' AND NVL(FDESHABILITADO,''N'')=''N'' GROUP BY USEID');
    Open ;
  end ;

  cdsTmp := TwwClientDataset.Create(self);
  cdsTmp . RemoteServer := dm1.DCOM1 ;
  cdsTmp . ProviderName := dm1.cdsQry.ProviderName ;
// Inicio HPC_201501_APO     Cambio de DCOM a Socket
  sSQL := 'SELECT UPROIDORI,USEIDORI,UPAGOIDORI,APO307.UPAGOID,USENOM FROM APO307,VW_APO101 WHERE NFUSION=''' + DM1.cdsAso.FieldByName('NFUSION').AsString + ''' AND APO307.UPROIDORI = VW_APO101.UPROID (+) AND APO307.USEIDORI = VW_APO101.USEID(+) ORDER BY ITEM ' ;
// Fin  HPC_201501_APO     Cambio de DCOM a Socket
  cdstmp . DataRequest(sSQL);
  cdsTmp . Open ;

  dbg3.UnselectAll ;

  dbg3.Height  := 127  ;

  cdsModificado.close ;
  cdsModificado.IndexFieldNames := 'UPROID;USEID' ;
  cdsModificado.CreateDataSet ;
  //Poner Datos Iniciales
  with cdsTmp do
  begin
     DisableControls ;
     First ;
     while not eof do
     begin
        cdsModificado . Append;
        cdsModificado.FieldByName('UPROID').AsString         := FieldByName('UPROIDORI').ASString ;
        cdsModificado.FieldByName('USEID').AsString          := FieldByName('USEIDORI').ASString ;
        cdsModificado.FieldByName('USENOM').AsString         := FieldByName('USENOM').ASString ;
        cdsModificado.FieldByName('UPAGOIDORI').AsString     := FieldByName('UPAGOIDORI').ASString ;
        cdsModificado.FieldByName('UPAGOID').AsString        := FieldByName('UPAGOID').ASString ;
        Next ;
     end ;
     cdsModificado.Next ;
     EnableControls ;
  end ;
  cdsModificado.IndexFieldNames := 'UPROID;USEID' ;
end;

procedure TFCambioUPago.btnImprimeClick(Sender: TObject);
begin
   ShowMessage('Aqui va el Código para Verificar');
end;

procedure TFCambioUPago.dbg4KeyPress(Sender: TObject; var Key: Char);
begin
   Key := UpCase(Key);
end;

procedure TFCambioUPago.dbg4CalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
//
end;

procedure TFCambioUPago.dbg3KeyPress(Sender: TObject; var Key: Char);
begin
 if key=' ' then
    key := #0;
end;

end.
