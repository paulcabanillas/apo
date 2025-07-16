unit APO307;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, StdCtrls, wwdblook, Wwdbdlg, fcButton,
  fcImgBtn, fcShapeBtn, Wwkeycb, ExtCtrls,wwclient, Buttons,
  variants, wwdbdatetimepicker, Db, DBClient, Wwdatsrc;

type
  TFFusion = class(TForm)
    gbx1: TGroupBox;
    gbx2: TGroupBox;
    gbx4: TGroupBox;
    gbx3: TGroupBox;
    bbtnNuevo: TfcShapeBtn;
    bbtnGrabar: TfcShapeBtn;
    bbtnCancelar: TfcShapeBtn;
    bbtnSalir: TfcShapeBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    sbUno: TSpeedButton;
    sbTodos: TSpeedButton;
    sbQuitaUno: TSpeedButton;
    sbQuitaTodos: TSpeedButton;
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
    dbg2: TwwDBGrid;
    Label5: TLabel;
    cdsModificado: TwwClientDataSet;
    dsModificado: TwwDataSource;
    dbg3: TwwDBGrid;
    btnImprime: TfcShapeBtn;
    dbg4: TwwDBGrid;
    cdsModificado2: TwwClientDataSet;
    dsModificado2: TwwDataSource;
    procedure bbtnSalirClick(Sender: TObject);
    procedure bbtnGrabarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dblcdUProExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure OnEnter(Sender: TObject);
    procedure dblcdUProKeyPress(Sender: TObject; var Key: Char);
    procedure rgTipoClick(Sender: TObject);
    procedure sbUnoClick(Sender: TObject);
    procedure sbTodosClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sbQuitaUnoClick(Sender: TObject);
    procedure sbQuitaTodosClick(Sender: TObject);
    procedure bbtnNuevoClick(Sender: TObject);
    procedure bbtnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsModificadoAfterScroll(DataSet: TDataSet);
    procedure btnImprimeClick(Sender: TObject);
    procedure dbg4KeyPress(Sender: TObject; var Key: Char);
    procedure dbg4CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure cdsModificadoBeforeDelete(DataSet: TDataSet);
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
  FFusion: TFFusion;

implementation

uses APODM, MsgDlgs,APO001;

{$R *.DFM}


procedure TFFusion.bbtnSalirClick(Sender: TObject);
begin
  Close ;
end;

procedure TFFusion.bbtnGrabarClick(Sender: TObject);
var
    sSQL : String ;
    cdsGrabacion  : TwwClientDataset ;
    cdsCloneUPago : TwwClientDataset ;
begin
    ValidaGrabacion2 ;
    //Configura cdsGrabacion
    if cdsModificado.RecordCount > 0 then
    begin
      cdsGrabacion := TwwClientDataset.CReate(self);
      cdsGrabacion.RemoteServer := dm1.DCOM1 ;
      cdsGrabacion.ProviderName := dm1.cdsQry.ProviderName ;
      cdsGrabacion.DataRequest('SELECT * FROM APO309');
      cdsGrabacion.Open ;
      cdsModificado.First ;
      while not cdsModificado.eof do
      begin
        cdsGrabacion.Append ;

        cdsGrabacion.FieldByName('UPROIDORI').ASString          :=  cdsModificado.FieldByName('UPROID').ASString ;
        cdsGrabacion.FieldByName('USEIDORI').ASString           :=  cdsModificado.FieldByName('USEID').ASString ;
        cdsGrabacion.FieldByName('UPAGOIDORI').ASString         :=  cdsModificado.FieldByName('UPAGOID').ASString ;
        cdsGrabacion.FieldByName('FDESHABILITADO').ASString     :=  cdsModificado.FieldByName('FDESHABILITADO').ASString ;
        cdsGrabacion.FieldByName('UPROID').ASString             :=  dblcdUPro.Text ;
        cdsGrabacion.FieldByName('USEID').ASString              :=  cdsModificado.FieldByName('USEID').ASString ;
        cdsGrabacion.FieldByName('UPAGOID').ASString            :=  cdsModificado.FieldByName('UPAGOID').ASString ;
        cdsGrabacion.FieldByName('TIPO').ASString               :=  IntToStr(rgTipo.ItemIndex) ;

        cdsModificado.Next ;
      end ;
      if rgTipo.ItemIndex = 0 then
      begin
         cdsCloneUPago := TwwClientDataSet.CReate(self);
         cdsCloneUPago.CloneCursor(cdsModificado2,True);
//         ShowMessage(inttostr(cdsCloneUPago.recordcount));
         if cdsCloneUPago.RecordCount > 0 then
         begin
            cdsCloneUPago.first ;
            while not cdsCloneUPago.eof do
            begin
              cdsGrabacion.Append ;

              cdsGrabacion.FieldByName('UPROIDORI').ASString          :=  cdsCloneUPago.FieldByName('UPROIDORI').ASString ;
              cdsGrabacion.FieldByName('USEIDORI').ASString           :=  cdsCloneUPago.FieldByName('USEIDORI').ASString ;
              cdsGrabacion.FieldByName('UPAGOIDORI').ASString         :=  cdsCloneUPago.FieldByName('UPAGOIDORI').ASString ;
              cdsGrabacion.FieldByName('FDESHABILITADO').ASString     :=  'N' ;
              cdsGrabacion.FieldByName('UPROID').ASString             :=  dblcdUPro.Text ;
              cdsGrabacion.FieldByName('USEID').ASString              :=  cdsCloneUPago.FieldByName('USEID').ASString ;
              cdsGrabacion.FieldByName('UPAGOID').ASString            :=  cdsCloneUPago.FieldByName('UPAGOID').ASString ;
              cdsGrabacion.FieldByName('TIPO').ASString               :=  '2' ;

              cdsCloneUPago.Next ;
            end ;
            cdsCloneUPago.Free ;
         end
         else
            cdsCloneUPago.Free;
      end ;
      cdsGrabacion.Next ;
    end ;
    //
    sSQL := 'BEGIN PCK_REDISTR.SP_BORRA_TEMPORAL ; END ;' ;
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
        if rgTipo.ItemIndex = 0 then
           sSQL := 'BEGIN PCK_REDISTR.SP_CONFIGURA_USES(''' +  dblcdUPro.Text + ''',''' + dm1.wUsuario +''') ; END ;'
        else
           sSQL := 'BEGIN PCK_REDISTR.SP_CONFIGURA_UPAGOS(''' +  dblcdUPro.Text + ''',''' + dm1.wUsuario +''') ; END ;' ;

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
           sbUno        .Enabled := False ;
           sbTodos      .Enabled := False ;
           sbQuitaUno   .Enabled := False ;
           sbQuitaTodos .Enabled := False ;
           bbtnGrabar   .Enabled := False ;
           bbtnCancelar .Enabled := False ;

        end
        else
           Raise Exception.CReate('Error en la Actualización');
      end ;
    end
    else
      Raise Exception.CReate('Error en el Borrado de Temporal');
end;

procedure TFFusion.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If (Key = #13) Then
    begin
     Key := #0;
     Perform(CM_DialogKey, VK_TAB, 0);
    end;
end;

procedure TFFusion.dblcdUProExit(Sender: TObject);
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

procedure TFFusion.FormCreate(Sender: TObject);
begin
   strTmp := '' ;
end;

procedure TFFusion.OnEnter(Sender: TObject);
begin
   strTmp := TCustomEdit(Sender).Text ;
end;

procedure TFFusion.dblcdUProKeyPress(Sender: TObject; var Key: Char);
begin
  if key = ' ' then
     key := #0;
end;

procedure TFFusion.RecuperaUPago;
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

  dbg2.Selected.Clear;
  dbg2.Selected.Add('UPROID'#9'7'#9'U.Proceso');
  dbg2.Selected.Add('UPAGOID'#9'7'#9'Cód.U.PAGO');
  dbg2.Selected.Add('UPAGONOM'#9'20'#9'U.PAGO');
  dbg2.Selected.Add('FDESHABILITADO'#9'3'#9'DesHab');
  dbg2.SetControlType('FDESHABILITADO', fctCheckBox, 'S;N');

  dbg2.ApplySelected;
  dbg2.UnselectAll ;

  with dm1.cdsqry2 do
  begin
    Close;
    IndexFieldNames := 'UPROID;UPAGOID' ;
//20030619    DataRequest('SELECT UPROID,UPAGOID , MIN(UPAGONOM) UPAGONOM , MIN(NVL(FDESHABILITADO,''N'')) FDESHABILITADO FROM APO103 WHERE (UPROID <> ''' + sUPROID + ''') OR (UPROID=''' + sUPROID +''' AND NVL(FDESHABILITADO,''N'')=''S'') GROUP BY UPROID , UPAGOID');
    DataRequest('SELECT UPROID,UPAGOID , MIN(UPAGONOM) UPAGONOM , MIN(NVL(FDESHABILITADO,''N'')) FDESHABILITADO FROM APO103 WHERE (UPROID <> ''' + sUPROID + ''') AND (NVL(FDESHABILITADO,''N'')=''N'') GROUP BY UPROID , UPAGOID');
    Open ;
  end ;

  dbg3.Selected.Clear;
  dbg3.Selected.Add('UPROID'#9'7'#9'U.Proceso');
  dbg3.Selected.Add('UPAGOID'#9'7'#9'Cód.U.PAGO');
  dbg3.Selected.Add('UPAGONOM'#9'25'#9'U.PAGO');
  dbg3.ApplySelected;

  dbg3.Height  := dbg2.Height  ;
  dbg4.Visible := False ;
  
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

procedure TFFusion.RecuperaUses;
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

  dbg2.Selected.Clear;
  dbg2.Selected.Add('UPROID'#9'7'#9'U.Proceso');
  dbg2.Selected.Add('USEID'#9'7'#9'Cód.USE');
  dbg2.Selected.Add('USENOM'#9'20'#9'USE');
  dbg2.Selected.Add('FDESHABILITADO'#9'3'#9'DesHab');
  dbg2.SetControlType('FDESHABILITADO', fctCheckBox, 'S;N');

  dbg2.ApplySelected;
  dbg2.UnselectAll ;

  with dm1.cdsqry2 do
  begin
    Close;
    IndexFieldNames := 'UPROID;USEID';
//wmc 20030619    DataRequest('SELECT UPROID,USEID , MIN(USENOM) USENOM ,MIN(NVL(FDESHABILITADO,''N'')) FDESHABILITADO FROM APO101 WHERE (UPROID <> ''' + sUPROID + ''') OR ( UPROID = ''' + sUPROID + ''' AND NVL(FDESHABILITADO,''N'')=''S''  ) GROUP BY UPROID , USEID');
    DataRequest('SELECT UPROID,USEID , MIN(USENOM) USENOM ,MIN(NVL(FDESHABILITADO,''N'')) FDESHABILITADO FROM APO101 WHERE (UPROID <> ''' + sUPROID + ''') AND ( NVL(FDESHABILITADO,''N'')=''N''  ) GROUP BY UPROID , USEID');
    Open ;
  end ;

  dbg3.Selected.Clear;
  dbg3.Selected.Add('UPROID'#9'7'#9'U.Proceso');
  dbg3.Selected.Add('USEID'#9'7'#9'Cód.USE');
  dbg3.Selected.Add('USENOM'#9'25'#9'USE');
  dbg3.ApplySelected;
  dbg3.UnselectAll ;

  dbg3.Height  := 127  ;
  dbg4.Visible := True ;

  cdsModificado.close ;
  cdsModificado.IndexFieldNames := 'UPROID;USEID' ;
  cdsModificado.CreateDataSet ;
  //Poner Datos Iniciales
  with dbg1.DataSource.DataSet do
  begin
     DisableControls ;
     First ;
     while not eof do
     begin
        cdsModificado.Append;
        cdsModificado.FieldByName('UPROID').AsString         := dblcdUPro.Text ;
        cdsModificado.FieldByName('USEID').AsString          := FieldByName('USEID').ASString ;
        cdsModificado.FieldByName('USENOM').AsString         := FieldByName('USENOM').ASString ;
        cdsModificado.FieldByName('FDESHABILITADO').AsString := 'N';
        Next ;
     end ;
     cdsModificado.Next ;
     EnableControls ;
  end ;
  cdsModificado.IndexFieldNames := 'UPROID;USEID' ;
  cdsModificado2.Close ;
  cdsModificado2.CreateDataSet ;
end;

procedure TFFusion.rgTipoClick(Sender: TObject);
begin
  if not showing then
    exit ;
  if rgTipo.ItemIndex = 0 then
     RecuperaUses (dblcdUPro.Text)
  else
     RecuperaUPago (dblcdUPro.Text);
end;

procedure TFFusion.sbUnoClick(Sender: TObject);
var
  i : integer ;
  bFlag : Boolean ;
begin
  bFlag := False ;
  with dbg2,dbg2.datasource.dataset do
  begin
    DisableControls; {Disable controls to improve performance}
    if SelectedList.Count = 0 then
       SelectRecord ;
    for i:= 0 to SelectedList.Count-1 do begin
     GotoBookmark(SelectedList.items[i]);
     dbg3.DataSource.DataSet.Insert ;
     if rgTipo.ItemIndex = 0 then
     begin
       dbg3.DataSource.DataSet.FieldByName('USEID').AsString := FieldbyName('USEID').AsString ;
       dbg3.DataSource.DataSet.FieldByName('USENOM').AsString := FieldbyName('USENOM').AsString ;
       //Recuperar Unidades de Pago
       DM1.LimpiaClientDataset( dm1.cdsQry4 ) ;
       DM1.cdsqry4.DataRequest( 'SELECT UPAGOID FROM APO101 WHERE UPROID = ''' + FieldbyName('UPROID').AsString
                                        + ''' AND USEID='''+ FieldbyName('USEID').AsString + ''' ' ) ;
       DM1.cdsqry4.Open ;
       DM1.cdsqry4.First ;
       while not dm1.cdsqry4.Eof do
       begin
         cdsModificado2.Append ;
         cdsmodificado2.FieldByName('UPROIDORI').AsString       := FieldbyName('UPROID').AsString  ;
         cdsmodificado2.FieldByName('UPAGOIDORI').AsString      := dm1.cdsQry4.FieldByName('UPAGOID').AsString ;
         cdsmodificado2.FieldByName('USEIDORI').AsString        := FieldbyName('USEID').AsString   ;
         cdsmodificado2.FieldByName('UPROID').AsString          := dblcdUPro.Text     ;
         cdsmodificado2.FieldByName('UPAGOID').AsString         := dm1.cdsQry4.FieldByName('UPAGOID').AsString    ;
         cdsmodificado2.FieldByName('USEID').AsString           := FieldbyName('USEID').AsString      ;
         dm1.cdsqry4.Next ;
       end ;
       cdsModificado2.Next ;
     end
     else
     begin
       dbg3.DataSource.DataSet.FieldByName('UPAGOID').AsString := FieldbyName('UPAGOID').AsString ;
       dbg3.DataSource.DataSet.FieldByName('UPAGONOM').AsString := FieldbyName('UPAGONOM').AsString ;
     end ;
     dbg3.DataSource.DataSet.FieldByName('UPROID').AsString := FieldbyName('UPROID').AsString ;
     dbg3.DataSource.DataSet.FieldByName('FDESHABILITADO').AsString := FieldbyName('FDESHABILITADO').AsString ;

     dbg3.DataSource.DataSet.Post ;
     bFlag := True  ;
    end;
    EnableControls;  { Re-enable controls }
    
  end;
  if bFlag then
  begin
    dbg3.UnselectAll ;
  end ;
  with dbg2,dbg2.datasource.dataset do
  begin
    DisableControls; {Disable controls to improve performance}
    for i:= 0 to SelectedList.Count-1 do begin
     GotoBookmark(SelectedList.items[i]);
     Delete ;
    end;
    UnselectAll ;
    if recordcount > 0 then
       SelectRecord ;
    EnableControls;  { Re-enable controls }
  end;
  //
  dbg3.DataSource.DataSet.AfterScroll(dbg3.DataSource.DataSet);
  //
end;

procedure TFFusion.sbTodosClick(Sender: TObject);
var
  i : integer ;
begin

  with dbg2,dbg2.datasource.dataset do
  begin
    DisableControls; {Disable controls to improve performance}
    for i:= 1 to RecordCount do begin
     RecNo := i ;
     dbg3.DataSource.DataSet.Insert ;
     if rgTipo.ItemIndex = 0 then
     begin
       dbg3.DataSource.DataSet.FieldByName('USEID').AsString := FieldbyName('USEID').AsString ;
       dbg3.DataSource.DataSet.FieldByName('USENOM').AsString := FieldbyName('USENOM').AsString ;
       //Recuperar Unidades de Pago
       DM1.LimpiaClientDataset( dm1.cdsQry4 ) ;
       DM1.cdsqry4.DataRequest( 'SELECT UPAGOID FROM APO101 WHERE UPROID = ''' + FieldbyName('UPROID').AsString
                                        + ''' AND USEID='''+ FieldbyName('USEID').AsString + ''' ' ) ;
       DM1.cdsqry4.Open ;
       DM1.cdsqry4.First;
       while not dm1.cdsqry4.Eof do
       begin
         cdsModificado2.Append ;
         cdsmodificado2.FieldByName('UPROIDORI').AsString       := FieldbyName('UPROID').AsString  ;
         cdsmodificado2.FieldByName('UPAGOIDORI').AsString      := dm1.cdsQry4.FieldByName('UPAGOID').AsString ;
         cdsmodificado2.FieldByName('USEIDORI').AsString        := FieldbyName('USEID').AsString   ;
         cdsmodificado2.FieldByName('UPROID').AsString          := FieldbyName('UPROID').AsString     ;
         cdsmodificado2.FieldByName('UPAGOID').AsString         := dm1.cdsQry4.FieldByName('UPAGOID').AsString    ;
         cdsmodificado2.FieldByName('USEID').AsString           := FieldbyName('USEID').AsString      ;
         dm1.cdsqry4.Next ;
       end ;
       cdsModificado2.Next ;
       
     end
     else
     begin
       dbg3.DataSource.DataSet.FieldByName('UPAGOID').AsString := FieldbyName('UPAGOID').AsString ;
       dbg3.DataSource.DataSet.FieldByName('UPAGONOM').AsString := FieldbyName('UPAGONOM').AsString ;
     end ;
     dbg3.DataSource.DataSet.FieldByName('UPROID').AsString := FieldbyName('UPROID').AsString ;
     dbg3.DataSource.DataSet.FieldByName('FDESHABILITADO').AsString := FieldbyName('FDESHABILITADO').AsString ;
     dbg3.DataSource.DataSet.Post ;
    end;
    EnableControls;  { Re-enable controls }
  end;

  with dbg2,dbg2.datasource.dataset do
  begin
    DisableControls; {Disable controls to improve performance}
    First ;
    while not Eof do
    begin
      delete ;
    end ;
    UnselectAll ;
    EnableControls;  { Re-enable controls }
  end;

end;

procedure TFFusion.ConfiguracionInicial;
begin
  LimpiaEDits;
  RecuperaUses('');
  gbx1.Enabled  := True ;
  sbUno         . Enabled := True ;
  sbTodos       . Enabled := True ;
  sbQuitaUno    . Enabled := True ;
  sbQuitaTodos  . Enabled := True ;

  dbg2.UnselectAll ;
  dbg3.UnselectAll ;
  dbdtpFechaEmision.dATE := DM1.dtFechaSistema ;
  dblcdUPro.SetFocus ;
  bbtnGrabar.Enabled   := True ;
  bbtnCancelar.Enabled := True ;
  dbg4.ReadOnly := False ;
end;

procedure TFFusion.FormShow(Sender: TObject);
begin
  if dm1.wModo = 'A' then
  begin
     ConfiguracionInicial;
  end
  else
  begin
     LimpiaEdits ;
     dbg4.ReadOnly := True ;
//wmc 20030707     RecuperaUses('');
//wmc 20030707     RecuperaUsesEdit(dm1.cdsaso.FieldByName('UPROID').ASString) ;
     gbx1.Enabled := False ;
     sbUno        .Enabled := False ;
     sbTodos      .Enabled := False ;
     sbQuitaUno   .Enabled := False ;
     sbQuitaTodos .Enabled := False ;
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
     if rgTipo.ItemIndex = 0 then
     begin
        RecuperaUses('');
        RecuperaUsesEdit(dm1.cdsaso.FieldByName('UPROID').ASString) ;
     end
     else
     begin
        RecuperaUPago('');
        RecuperaUPagoEdit(dm1.cdsaso.FieldByName('UPROID').ASString) ;
     end ;

  end ;
end;

procedure TFFusion.sbQuitaUnoClick(Sender: TObject);
var
  i : integer ;
  bFlag : Boolean  ;
begin

  bFlag := False ;
  with dbg3,dbg3.datasource.dataset do
  begin
    DisableControls; {Disable controls to improve performance}
    if SelectedList.Count = 0 then
       SelectRecord ;
    for i:= 0 to SelectedList.Count-1 do begin
     GotoBookmark(SelectedList.items[i]);
     //
     if FieldByName('UPROID').AsString <> dblcdUPro.Text then
     begin
//
       dbg2.DataSource.DataSet.Insert ;
       if rgTipo.ItemIndex = 0 then
       begin
         dbg2.DataSource.DataSet.FieldByName('USEID').AsString := FieldbyName('USEID').AsString ;
         dbg2.DataSource.DataSet.FieldByName('USENOM').AsString := FieldbyName('USENOM').AsString ;
       end
       else
       begin
         dbg2.DataSource.DataSet.FieldByName('UPAGOID').AsString := FieldbyName('UPAGOID').AsString ;
         dbg2.DataSource.DataSet.FieldByName('UPAGONOM').AsString := FieldbyName('UPAGONOM').AsString ;
       end ;
       dbg2.DataSource.DataSet.FieldByName('UPROID').AsString := FieldbyName('UPROID').AsString ;
       dbg2.DataSource.DataSet.FieldByName('FDESHABILITADO').AsString := FieldbyName('FDESHABILITADO').AsString ;
       dbg2.DataSource.DataSet.Post ;
       bFlag := True ;
//
     end ;
     //
    end;
    if bFlag then
       dbg2.UnselectAll ;
    EnableControls;  { Re-enable controls }
  end;

  with dbg3,dbg3.datasource.dataset do
  begin
    DisableControls; {Disable controls to improve performance}
    for i:= 0 to SelectedList.Count-1 do begin
     GotoBookmark(SelectedList.items[i]);
     if FieldByName('UPROID').AsString <> dblcdUPro.Text then
        Delete ;
    end;
    UnselectAll ;
    if recordcount > 0 then
       SelectRecord ;
    EnableControls;  { Re-enable controls }
  end;

end;

procedure TFFusion.sbQuitaTodosClick(Sender: TObject);
var
  i : integer ;
begin

  with dbg3,dbg3.datasource.dataset do
  begin
    DisableControls; {Disable controls to improve performance}
    for i:= 1 to RecordCount do begin
     RecNo := i ;
     if FieldByName('UPROID').AsString <> dblcdUPro.Text then
     begin
       dbg2.DataSource.DataSet.Insert ;
       if rgTipo.ItemIndex = 0 then
       begin
         dbg2.DataSource.DataSet.FieldByName('USEID').AsString := FieldbyName('USEID').AsString ;
         dbg2.DataSource.DataSet.FieldByName('USENOM').AsString := FieldbyName('USENOM').AsString ;
       end
       else
       begin
         dbg2.DataSource.DataSet.FieldByName('UPAGOID').AsString := FieldbyName('UPAGOID').AsString ;
         dbg2.DataSource.DataSet.FieldByName('UPAGONOM').AsString := FieldbyName('UPAGONOM').AsString ;
       end ;
       dbg2.DataSource.DataSet.FieldByName('UPROID').AsString := FieldbyName('UPROID').AsString ;
       dbg2.DataSource.DataSet.FieldByName('FDESHABILITADO').AsString := FieldbyName('FDESHABILITADO').AsString ;
       dbg2.DataSource.DataSet.Post ;
     end ;
    end;
    EnableControls;  { Re-enable controls }
  end;

  with dbg3,dbg3.datasource.dataset do
  begin
    DisableControls; {Disable controls to improve performance}
    First ;
    while not Eof do
    begin
     if FieldByName('UPROID').AsString <> dblcdUPro.Text then
      delete
     else
      Next;
    end ;
    UnselectAll ;
    EnableControls;  { Re-enable controls }
  end;

end;

procedure TFFusion.LimpiaEdits;
begin
  dbdtpFechaEmision.Clear ;
  dblcdUPro.Clear ;
  edtUPRONOM.Clear ;
  edtUPRODIR.Clear ;
  rgTipo.itemindex := 0 ;
  lblNumero.Caption := '' ;
end;

procedure TFFusion.bbtnNuevoClick(Sender: TObject);
begin
   ConfiguracionInicial ;
end;

procedure TFFusion.bbtnCancelarClick(Sender: TObject);
begin
  if dm1.wModo = 'A' then
     bbtnNuevo.OnClick(self);
end;

procedure TFFusion.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  MTX.NEWQUERY;
end;

procedure TFFusion.ValidaGrabacion;
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

procedure TFFusion.ValidaGrabacion2;
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

   //Validar Posible Generación de Duplicados
   //Validar Posible Generación de Duplicados [2]
   cdsTmp := TwwClientDataset.CReate(self);
   cdstmp.data := cdsModificado.Data ;
   if cdstmp.RecordCount > 0 then
   begin
     cdsTmp . First ;
     while not cdsTmp.eof do
     begin
       sUSEID := cdsTmp.FieldBYName('USEID').ASString ;
       if dm1.OperClientDataSet(cdsTmp,'COUNT(*)','USEID = ''' + sUSEID + ''' ') > 1 then
       begin
          cdsTmp.EnableControls ;
          cdsModificado.Locate('UPROID;USEID',VarArrayOf([cdsTmp.FieldByName('UPROID').AsString,
                                                          cdsTmp.FieldByName('USEID').AsString]),[]);
          cdsTmp.Free ;
          Raise Exception.Create('La Elección que Ha Hecho No Está Permitida ¡¡ VERIFIQUE !! ');
       end ;
       cdsTmp.Next ;
     end ;
     cdsTmp.Free ;
   end ;

   //Validar Modificaciones contra los Originales
   if (cdsModificado.RecordCount = dm1.cdsQry1.RecordCount) then
   begin
     if cdsModificado.RecordCount = 0 then
        Raise Exception.CReate('No ha Hecho Modificaciones a grabar');

     dm1.cdsqry1.First ;
     while not dm1.cdsqry1.eof do
     begin
        if not cdsModificado.Locate('UPROID;USEID',VarArrayOf([sUPROID,
                                                 dm1.cdsqry1.FieldByName('USEID').ASString]),[]) then
           Exit ;
        dm1.cdsQry1.Next ;
     end ;
     Raise exception.Create('No Ha Hecho Modificaciones a Grabar');
   end ;

end;

procedure TFFusion.RecuperaUPagoEdit(sUPROID: String);
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

  dbg2.Selected.Clear;
  dbg2.Selected.Add('UPROID'#9'7'#9'U.Proceso');
  dbg2.Selected.Add('UPAGOID'#9'7'#9'Cód.U.PAGO');
  dbg2.Selected.Add('UPAGONOM'#9'20'#9'U.PAGO');
  dbg2.Selected.Add('FDESHABILITADO'#9'3'#9'DesHab');
  dbg2.SetControlType('FDESHABILITADO', fctCheckBox, 'S;N');

  dbg2.ApplySelected;
  dbg2.UnselectAll ;

  with dm1.cdsqry2 do
  begin
    Close;
    IndexFieldNames := 'UPROID;UPAGOID' ;
    DataRequest('SELECT UPROID,UPAGOID , MIN(UPAGONOM) UPAGONOM , MIN(NVL(FDESHABILITADO,''N'')) FDESHABILITADO FROM APO103 WHERE (UPROID <> ''' + sUPROID + ''') OR (UPROID=''' + sUPROID +''' AND NVL(FDESHABILITADO,''N'')=''S'') GROUP BY UPROID , UPAGOID');
    Open ;
  end ;

  dbg3.Selected.Clear;
  dbg3.Selected.Add('UPROID'#9'7'#9'U.Proceso');
  dbg3.Selected.Add('UPAGOID'#9'7'#9'Cód.U.PAGO');
  dbg3.Selected.Add('UPAGONOM'#9'25'#9'U.PAGO');
  dbg3.ApplySelected;

  dbg3.Height  := dbg2.Height  ;
  dbg4.Visible := False ;

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

procedure TFFusion.RecuperaUsesEdit(sUPROID: String);
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

  cdsTmp := TwwClientDataset.CReate(self);
  cdsTmp . RemoteServer := dm1.DCOM1 ;
  cdsTmp . ProviderName := dm1.cdsQry.ProviderName ;
//wmc 20030707  sSQL := 'SELECT UPROIDORI UPROID , USEIDORI USEID, USENOM FROM APO307 , VW_APO101 WHERE NFUSION=''' + DM1.cdsAso.FieldByName('NFUSION').AsString + ''' AND APO307.UPROIDORI = VW_APO101.UPROID (+) AND APO307.USEIDORI = VW_APO101.USEID(+) ORDER BY ITEM ' ;
  sSQL := 'SELECT UPROIDORI UPROID , USEIDORI USEID, '' '' USENOM FROM APO307 WHERE NFUSION=''' + DM1.cdsAso.FieldByName('NFUSION').AsString + ''' AND TIPO=''0'' ORDER BY ITEM ' ;
  cdstmp . DataRequest(sSQL);
  cdsTmp . Open ;

  dbg3.Selected.Clear;
  dbg3.Selected.Add('UPROID'#9'7'#9'U.Proceso');
  dbg3.Selected.Add('USEID'#9'7'#9'Cód.USE');
  dbg3.Selected.Add('USENOM'#9'25'#9'USE');
  dbg3.ApplySelected;
  dbg3.UnselectAll ;

  dbg3.Height  := 127  ;
  dbg4.Visible := True ;

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
        cdsModificado . FieldByName('UPROID').AsString         := FieldByName('UPROID').ASString ;
        cdsModificado . FieldByName('USEID').AsString          := FieldByName('USEID').ASString ;
        cdsModificado . FieldByName('USENOM').AsString         := FieldByName('USENOM').ASString ;
        Next ;
     end ;
     cdsModificado.Next ;
     EnableControls ;
  end ;
  cdsModificado.IndexFieldNames := 'UPROID;USEID' ;


  cdsModificado2.close ;
  cdsModificado2.CreateDataSet ;

  DM1.LimpiaClientDataset( DM1.cdsQry4 ) ;
  DM1.cdsqry4.DataRequest( 'SELECT UPROIDORI , UPAGOIDORI,USEIDORI,UPROID,USEID,UPAGOID FROM APO307 WHERE NFUSION = ''' + DM1.cdsAso.FieldByName('NFUSION').AsString + ''' AND TIPO = ''2'' ' ) ;
  DM1.cdsqry4.Open ;
  DM1.cdsqry4.First ;
  while not dm1.cdsqry4.Eof do
  begin
   cdsModificado2.Append ;
   cdsmodificado2.FieldByName('UPROIDORI').AsString       := DM1.cdsqry4.FieldbyName('UPROIDORI').AsString   ;
   cdsmodificado2.FieldByName('UPAGOIDORI').AsString      := dm1.cdsQry4.FieldByName('UPAGOIDORI').AsString  ;
   cdsmodificado2.FieldByName('USEIDORI').AsString        := DM1.cdsqry4.FieldbyName('USEIDORI').AsString    ;
   cdsmodificado2.FieldByName('UPROID').AsString          := DM1.cdsqry4.FieldbyName('UPROID').AsString      ;
   cdsmodificado2.FieldByName('UPAGOID').AsString         := dm1.cdsQry4.FieldByName('UPAGOID').AsString     ;
   cdsmodificado2.FieldByName('USEID').AsString           := DM1.cdsqry4.FieldbyName('USEID').AsString       ;
   dm1.cdsqry4.Next ;
  end ;
  cdsModificado2.Next ;
  cdsModificado2.filter   := 'UPROIDORI=''''' ;
  cdsmodificado2.Filtered := True ;
  cdsModificado.First ;
end;

procedure TFFusion.cdsModificadoAfterScroll(DataSet: TDataSet);
begin
   if (lblNumero.Caption = '') and (rgTipo.itemindex = 0 ) and (cdsmodificado2.active) then
   begin
      cdsModificado2.Filter   := 'UPROIDORI=''' + DataSet.FieldBYName('UPROID').AsString +
                                 ''' AND USEIDORI = ''' + DataSet.FieldBYName('USEID').AsString + ''' ' ;
      cdsModificado2.Filtered := True ;
   end ;
   if (trim(lblNumero.Caption) <> '') and (rgTipo.itemindex = 0 ) and (cdsmodificado2.active) then
   begin
      cdsModificado2.Filter   := 'UPROIDORI=''' + DataSet.FieldBYName('UPROID').AsString +
                                 ''' AND USEIDORI = ''' + DataSet.FieldBYName('USEID').AsString + ''' ' ;
      cdsModificado2.Filtered := True ;
   end ;
end;

procedure TFFusion.btnImprimeClick(Sender: TObject);
begin
   ShowMessage('Aqui va el Código para Verificar');
end;

procedure TFFusion.dbg4KeyPress(Sender: TObject; var Key: Char);
begin
   Key := UpCase(Key);
end;

procedure TFFusion.dbg4CalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
//
end;

procedure TFFusion.cdsModificadoBeforeDelete(DataSet: TDataSet);
var
   cdsClone : TwwClientDataset ;
begin
   if (lblNumero.Caption = '') and (rgTipo.itemindex = 0 ) and (cdsmodificado2.active) then
   begin
      cdsClone := TwwClientDataSet.Create(self);
      cdsClone.CloneCursor(cdsmodificado2,True);
      cdsClone.Filter   := 'UPROIDORI=''' + DataSet.FieldBYName('UPROID').AsString +
                                 ''' AND USEIDORI = ''' + DataSet.FieldBYName('USEID').AsString + ''' ' ;
      cdsClone.Filtered := True ;
      while not cdsClone.Eof do
      begin
         cdsClone.Delete;
      end ;
      cdsClone.Free ;
   end ;
end;

end.
