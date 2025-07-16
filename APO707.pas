unit APO707;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcButton, fcImgBtn, fcShapeBtn, ExtCtrls, StdCtrls, Wwkeycb, Grids,
  Wwdbigrd, Wwdbgrid, Db, Wwdatsrc, DBClient, wwclient;

type
  TFSeleccio = class(TForm)
    pnlPendientes: TPanel;
    Label16: TLabel;
    dbgSel: TwwDBGrid;
    pnlBusca: TPanel;
    lblBusca: TLabel;
    isBusca: TwwIncrementalSearch;
    pnlDocCanje: TPanel;
    Label17: TLabel;
    dbgDoc: TwwDBGrid;
    Bevel1: TBevel;
    Z2bbtnAceptar: TfcShapeBtn;
    Z2bbtnCancel: TfcShapeBtn;
    cdsClone1: TwwClientDataSet;
    dsDocClone1: TwwDataSource;
    dsDocs1: TwwDataSource;
    cds1: TwwClientDataSet;
    cdsClone2: TwwClientDataSet;
    cdsClone3: TwwClientDataSet;
    cdsClone4: TwwClientDataSet;
    dsDocClone2: TwwDataSource;
    dsDocClone3: TwwDataSource;
    dsDocClone4: TwwDataSource;
    cds2: TwwClientDataSet;
    cds3: TwwClientDataSet;
    cds4: TwwClientDataSet;
    dsDocs2: TwwDataSource;
    dsDocs3: TwwDataSource;
    dsDocs4: TwwDataSource;
    procedure FormActivate(Sender: TObject);
    procedure dbgSelDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure dbgSelEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure dbgSelMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure dbgSelTitleButtonClick(Sender: TObject; AFieldName: String);
    procedure isBuscaKeyPress(Sender: TObject; var Key: Char);
    procedure dbgDocDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure dbgDocEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure dbgDocMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure Z2bbtnAceptarClick(Sender: TObject);
    procedure Z2bbtnCancelClick(Sender: TObject);
    procedure dbgSelEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sTipo, xRg : Integer;
    //xRg : String // identifica de que Radio Group proviene

  end;

var
  FSeleccio: TFSeleccio;

implementation

uses APODM, APO507;

{$R *.DFM}

procedure TFSeleccio.FormActivate(Sender: TObject);
var
  xSQL :String ;
begin
	Screen.Cursor:=crHourGlass;
  isBusca.Text := '';
  pnlBusca.Visible := false;
  dbgDoc.DataSource:=Nil;
  //if cdsClone.Active then
  //cdsClone.CloneCursor(cds,False);
  if xRg = 1 then
  begin
    Caption:='Selección de Departamentos';
  	Label16.Caption:='Departamento';
    Label17.Caption:='Departamento Escogidos';
	  cds1.Close;
  	cds1.ProviderName := 'prvReporte3';
    xSQL := 'SELECT DPTOID, DPTODES, DPTOABR, ''N'' FLAG ' +
            'FROM APO158';
    dbgSel.Selected.Clear;
    dbgSel.Selected.Add('DPTOID'#9'10'#9'Id');
    dbgSel.Selected.Add('DPTODES'#9'30'#9'Departamento');
    dbgSel.Selected.Add('DPTOABR'#9'20'#9'Abreviatura');

    dbgDoc.Selected.Clear;
    dbgDoc.Selected.Add('DPTOID'#9'10'#9'Id');
    dbgDoc.Selected.Add('DPTODES'#9'30'#9'Departamento');
    dbgDoc.Selected.Add('DPTOABR'#9'20'#9'Abreviatura');
  end
  else
  if xRg = 2 then
  begin
    Caption:='Selección de Provincias';
  	Label16.Caption:='Provincia';
    Label17.Caption:='Provincia Escogidas';
	  cds2.Close;
  	cds2.ProviderName := 'prvReporte3';
    xSQL := 'SELECT CIUDID, CIUDDES, CIUDABR, ''N'' FLAG ' +
            'FROM APO123';
    dbgSel.Selected.Clear;
    dbgSel.Selected.Add('CIUDID'#9'10'#9'Id');
    dbgSel.Selected.Add('CIUDDES'#9'30'#9'Ciudad');
    dbgSel.Selected.Add('CIUDABR'#9'20'#9'Abreviatura');

    dbgDoc.Selected.Clear;
    dbgDoc.Selected.Add('CIUDID'#9'10'#9'Id');
    dbgDoc.Selected.Add('CIUDDES'#9'30'#9'Departamento');
    dbgDoc.Selected.Add('CIUDABR'#9'20'#9'Abreviatura');
  end
  else
  if xRg = 3 then
  begin
    Caption:='Selección de Unidades de Procesos';
  	Label16.Caption:='Unidad de Proceso';
    Label17.Caption:='Unidad de Procesos Escogidas';
	  cds3.Close;
  	cds3.ProviderName := 'prvReporte3';
    xSQL := 'SELECT UPROID, UPRONOM, UPROABR, ''N'' FLAG ' +
            'FROM APO102';
    dbgSel.Selected.Clear;
    dbgSel.Selected.Add('UPROID'#9'6'#9'Id');
    dbgSel.Selected.Add('UPRONOM'#9'40'#9'Unidad~Proceso');
    dbgSel.Selected.Add('UPROABR'#9'17'#9'Abreviatura');

    dbgDoc.Selected.Clear;
    dbgDoc.Selected.Add('UPROID'#9'6'#9'Id');
    dbgDoc.Selected.Add('UPRONOM'#9'40'#9'Unidad~Proceso');
    dbgDoc.Selected.Add('UPROABR'#9'17'#9'Abreviatura');
  end
  else
  if xRg = 4 then
  begin
    Caption:='Selección de Uses';
  	Label16.Caption:='Use';
    Label17.Caption:='Uses Escogidas';
	  cds4.Close;
  	cds4.ProviderName := 'prvReporte3';
    xSQL := 'SELECT USEID, USENOM, USEABRE, ''N'' FLAG ' +
            'FROM APO101';
    dbgSel.Selected.Clear;
    dbgSel.Selected.Add('USEID'#9'5'#9'Id');
    dbgSel.Selected.Add('USENOM'#9'42'#9'Uses');
    dbgSel.Selected.Add('USEABRE'#9'17'#9'Abreviatura');

    dbgDoc.Selected.Clear;
    dbgDoc.Selected.Add('USEID'#9'5'#9'Id');
    dbgDoc.Selected.Add('USENOM'#9'42'#9'Uses');
    dbgDoc.Selected.Add('USEABRE'#9'17'#9'Abreviatura');
  end;

  if xRg = 1 then
  begin
    dbgSel.DataSource:=dsDocs1;
  	cds1.DataRequest(xSQL);
  	cds1.Open;

  	cds1.IndexFieldNames:='DPTOID';
    dbgDoc.DataSource:=dsDocClone1;
  	cdsClone1.CloneCursor(cds1,True) ;
  	cdsClone1.Filter := 'FLAG = ''S''' ;
  	cdsClone1.Filtered := True;
  end
  else
  if xRg = 2 then
  begin
    dbgSel.DataSource:=dsDocs2;
  	cds2.DataRequest(xSQL);
  	cds2.Open;

  	cds2.IndexFieldNames:='CIUDID';
    dbgDoc.DataSource:=dsDocClone2;
  	cdsClone2.CloneCursor(cds2,True) ;
  	cdsClone2.Filter := 'FLAG = ''S''' ;
 		cdsClone2.Filtered := True;
  end
  else
  if xRg = 3 then
  begin
    dbgSel.DataSource:=dsDocs3;
  	cds3.DataRequest(xSQL);
  	cds3.Open;

  	cds3.IndexFieldNames:='UPROID';
    dbgDoc.DataSource:=dsDocClone3;
  	cdsClone3.CloneCursor(cds3,True) ;
  	cdsClone3.Filter := 'FLAG = ''S''' ;
  	cdsClone3.Filtered := True;
  end
  else
  if xRg = 4 then
  begin
    dbgSel.DataSource:=dsDocs4;  
  	cds4.DataRequest(xSQL);
  	cds4.Open;

  	cds4.IndexFieldNames:='USEID';
    dbgDoc.DataSource:=dsDocClone4;
  	cdsClone4.CloneCursor(cds4,True);
  	cdsClone4.Filter := 'FLAG = ''S''' ;
  	cdsClone4.Filtered := True;
  end;
	Screen.Cursor:=crDefault;
end;

procedure TFSeleccio.dbgSelDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
   Accept:=True;
end;

procedure TFSeleccio.dbgSelEndDrag(Sender, Target: TObject; X, Y: Integer);
var
  I: integer;
begin
  if xRg = 1 then
  begin
  	If (Target = dbgDoc) AND (cds1.recordcount <> 0 ) Then
   	begin
      if dbgSel.SelectedList.Count>0 then
      begin
      	for i:= 0 to dbgSel.SelectedList.Count-1 do
        begin
        	dbgSel.datasource.dataset.GotoBookmark(dbgSel.SelectedList.items[i]);
          cds1.edit ;
          cds1.FieldByName('FLAG').AsString := 'S' ;
          cds1.Post ;
          dbgSel.datasource.dataset.Freebookmark(dbgSel.SelectedList.items[i]);
        end; // for
        dbgSel.SelectedList.clear;  { Clear selected record list since they are all deleted}
      end
      else
      begin
      	cds1.edit ;
        cds1.FieldByName('FLAG').AsString := 'S' ;
        cds1.Post ;
      end;
   	end;
  end
  else
  if xRg = 2 then
  begin
  	if (Target = dbgDoc) AND (cds2.recordcount <> 0 ) Then
   	begin
      if dbgSel.SelectedList.Count>0 then
      begin
      	for i:= 0 to dbgSel.SelectedList.Count-1 do
        begin
        	dbgSel.datasource.dataset.GotoBookmark(dbgSel.SelectedList.items[i]);
          cds2.edit ;
          cds2.FieldByName('FLAG').AsString := 'S' ;
          cds2.Post ;
          dbgSel.datasource.dataset.Freebookmark(dbgSel.SelectedList.items[i]);
        end; // for
        dbgSel.SelectedList.clear;  { Clear selected record list since they are all deleted}
      end
      else
      begin
      	cds2.edit ;
        cds2.FieldByName('FLAG').AsString := 'S' ;
        cds2.Post ;
      end;
   	end;
  end
  else
  if xRg = 3 then
  begin
  	If (Target = dbgDoc) AND (cds3.recordcount <> 0 ) Then
   	begin
      if dbgSel.SelectedList.Count>0 then
      begin
      	for i:= 0 to dbgSel.SelectedList.Count-1 do
        begin
        	dbgSel.datasource.dataset.GotoBookmark(dbgSel.SelectedList.items[i]);
          cds3.edit ;
          cds3.FieldByName('FLAG').AsString := 'S' ;
          cds3.Post ;
          dbgSel.datasource.dataset.Freebookmark(dbgSel.SelectedList.items[i]);
        end; // for
        dbgSel.SelectedList.clear;  { Clear selected record list since they are all deleted}
      end
      else
      begin
      	cds3.edit ;
        cds3.FieldByName('FLAG').AsString := 'S' ;
        cds3.Post ;
      end;
   	end;
  end
  else
  if xRg = 4 then
  begin
  	If (Target = dbgDoc) AND (cds4.recordcount <> 0 ) Then
   	begin
      if dbgSel.SelectedList.Count>0 then
      begin
      	for i:= 0 to dbgSel.SelectedList.Count-1 do
        begin
        	dbgSel.datasource.dataset.GotoBookmark(dbgSel.SelectedList.items[i]);
          cds4.edit ;
          cds4.FieldByName('FLAG').AsString := 'S' ;
          cds4.Post ;
          dbgSel.datasource.dataset.Freebookmark(dbgSel.SelectedList.items[i]);
        end; // for
        dbgSel.SelectedList.clear;  { Clear selected record list since they are all deleted}
      end
      else
      begin
      	cds4.edit ;
        cds4.FieldByName('FLAG').AsString := 'S' ;
        cds4.Post ;
      end;
   	end;
  end;
end;

procedure TFSeleccio.dbgSelMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   dbgSel.BeginDrag(False);
end;

procedure TFSeleccio.dbgSelTitleButtonClick(Sender: TObject; AFieldName: String);
begin
  if xRg = 1 then
  begin
  	if AFieldName='DPTOID'  then lblBusca.Caption:='Departamento:';
   	if AFieldName='DPTODES'    then lblBusca.Caption:='Descripción de Departamento:';
   	//if AFieldName='CTAABR'    then lblBusca.Caption:='Nombre Corto de Cuenta:';
  	cds1.indexfieldNames:= AFieldName;
  	cds1.First;
  	isBusca.DataSource := dsDocs1;
  end
  else
  if xRg = 2 then
  begin
  	if AFieldName='CIUDID'  then lblBusca.Caption:='Ciudad:';
   	if AFieldName='CIUDDES'    then lblBusca.Caption:='Descripción de Ciudad:';
  	cds2.indexfieldNames:= AFieldName;
  	cds2.First;
  	isBusca.DataSource := dsDocs2;
  end
  else
  if xRg = 3 then
  begin
  	if AFieldName='UPROID'  then lblBusca.Caption:='Unidad de Proceso:';
   	if AFieldName='UPRONOM'    then lblBusca.Caption:='Descripción de U. Proceso:';
  	cds3.indexfieldNames:= AFieldName;
  	cds3.First;
  	isBusca.DataSource := dsDocs3;
  end
  else
  if xRg = 4 then
  begin
  	if AFieldName='USEID'  then lblBusca.Caption:='Use:';
   	if AFieldName='USENOM'    then lblBusca.Caption:='Descripción de Use:';
  	cds4.indexfieldNames:= AFieldName;
  	cds4.First;
  	isBusca.DataSource := dsDocs4;
  end;

	//   lblBusca.Caption := AFieldName;

  isBusca.SearchField:= AFieldName;
  isBusca.Text := '';
  isBusca.Left := lblBusca.Width+24;
  pnlBusca.Width:= 12+lblBusca.Width+12+isBusca.Width+12;
  pnlBusca.Visible := True;
  isBusca.SetFocus;
end;

procedure TFSeleccio.isBuscaKeyPress(Sender: TObject; var Key: Char);
begin
	if (key=#13) or (key=#27) then
  begin
  	pnlBusca.Visible := False;
  end;
end;

procedure TFSeleccio.dbgDocDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
   Accept:=True;
end;

procedure TFSeleccio.dbgDocEndDrag(Sender, Target: TObject; X, Y: Integer);
var
	I : Integer ;
begin
  if xRg = 1 then
  begin
    if (Target = dbgSel) AND (cdsClone1.recordcount <> 0 ) Then
    Begin
      if dbgDoc.SelectedList.Count>0 then
      begin
        for i:= 0 to dbgDoc.SelectedList.Count-1 do
        begin
          dbgDoc.datasource.dataset.GotoBookmark(dbgDoc.SelectedList.items[i]);
          cdsClone1.edit ;
          cdsClone1.FieldByName('FLAG').AsString := 'N' ;
          cdsClone1.Post ;
          dbgDoc.datasource.dataset.Freebookmark(dbgDoc.SelectedList.items[i]);
        end; // for
        dbgDoc.SelectedList.clear;  { Clear selected record list since they are all deleted}
      end
      else
      begin
        cdsClone1.edit ;
        cdsClone1.FieldByName('FLAG').AsString := 'N' ;
        cdsClone1.Post ;
      end;
    end;
  end
  else
  if xRg = 2 then
  begin
    if (Target = dbgSel) AND (cdsClone2.recordcount <> 0 ) Then
    Begin
      if dbgDoc.SelectedList.Count>0 then
      begin
        for i:= 0 to dbgDoc.SelectedList.Count-1 do
        begin
          dbgDoc.datasource.dataset.GotoBookmark(dbgDoc.SelectedList.items[i]);
          cdsClone2.edit ;
          cdsClone2.FieldByName('FLAG').AsString := 'N' ;
          cdsClone2.Post ;
          dbgDoc.datasource.dataset.Freebookmark(dbgDoc.SelectedList.items[i]);
        end; // for
        dbgDoc.SelectedList.clear;  { Clear selected record list since they are all deleted}
      end
      else
      begin
        cdsClone2.edit ;
        cdsClone2.FieldByName('FLAG').AsString := 'N' ;
        cdsClone2.Post ;
      end;
    end;
  end
  else
  if xRg = 3 then
  begin
    if (Target = dbgSel) AND (cdsClone3.recordcount <> 0 ) Then
    Begin
      if dbgDoc.SelectedList.Count>0 then
      begin
        for i:= 0 to dbgDoc.SelectedList.Count-1 do
        begin
          dbgDoc.datasource.dataset.GotoBookmark(dbgDoc.SelectedList.items[i]);
          cdsClone3.edit ;
          cdsClone3.FieldByName('FLAG').AsString := 'N' ;
          cdsClone3.Post ;
          dbgDoc.datasource.dataset.Freebookmark(dbgDoc.SelectedList.items[i]);
        end; // for
        dbgDoc.SelectedList.clear;  { Clear selected record list since they are all deleted}
      end
      else
      begin
        cdsClone3.edit ;
        cdsClone3.FieldByName('FLAG').AsString := 'N' ;
        cdsClone3.Post ;
      end;
    end;
  end
  else
  if xRg = 4 then
  begin
    if (Target = dbgSel) AND (cdsClone4.recordcount <> 0 ) Then
    Begin
      if dbgDoc.SelectedList.Count>0 then
      begin
        for i:= 0 to dbgDoc.SelectedList.Count-1 do
        begin
          dbgDoc.datasource.dataset.GotoBookmark(dbgDoc.SelectedList.items[i]);
          cdsClone4.edit ;
          cdsClone4.FieldByName('FLAG').AsString := 'N' ;
          cdsClone4.Post ;
          dbgDoc.datasource.dataset.Freebookmark(dbgDoc.SelectedList.items[i]);
        end; // for
        dbgDoc.SelectedList.clear;  { Clear selected record list since they are all deleted}
      end
      else
      begin
        cdsClone4.edit ;
        cdsClone4.FieldByName('FLAG').AsString := 'N' ;
        cdsClone4.Post ;
      end;
    end;
  end;
end;

procedure TFSeleccio.dbgDocMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
	dbgDoc.BeginDrag(False);
end;

procedure TFSeleccio.Z2bbtnAceptarClick(Sender: TObject);
begin
  if xRg = 1 then
  begin
  	sWheIn1:='';
    if (cdsClone1.recordcount>0) then
    begin
      sWheIn1 := sWheIn1+'C.DPTOID IN (';
      cdsClone1.First;
      while not cdsClone1.Eof do
      begin
        sWheIn1 := sWheIn1  + '''' + cdsClone1.FieldByName('DPTOID').AsString + '''';
        cdsClone1.Next ;
        if not cdsClone1.eof then
        begin
          sWheIn1 := sWheIn1 + ' , ';
        end;
      end;
      sWheIn1 := sWheIn1 + ')';
    end;
  end
  else
  if xRg = 2 then
  begin
  	sWheIn2:='';
    if (cdsClone2.recordcount>0) then
    begin
      sWheIn2 := sWheIn2+'C.CIUDID IN (';
      cdsClone2.First;
      while not cdsClone2.Eof do
      begin
        sWheIn2 := sWheIn2  + '''' + cdsClone2.FieldByName('CIUDID').AsString + '''';
        cdsClone2.Next ;
        if not cdsClone2.eof then
        begin
          sWheIn2 := sWheIn2 + ' , ';
        end;
      end;
      sWheIn2 := sWheIn2 + ')';
    end;
  end
  else
  if xRg = 3 then
  begin
  	sWheIn3:='';
    if (cdsClone3.recordcount>0) then
    begin
      sWheIn3 := sWheIn3+'C.UPROID IN (';
      cdsClone3.First;
      while not cdsClone3.Eof do
      begin
        sWheIn3 := sWheIn3  + '''' + cdsClone3.FieldByName('UPROID').AsString + '''';
        cdsClone3.Next ;
        if not cdsClone3.eof then
        begin
          sWheIn3 := sWheIn3 + ' , ';
        end;
      end;
      sWheIn3 := sWheIn3 + ')';
    end;
  end
  else
  if xRg = 4 then
  begin
  	sWheIn4:='';
    if (cdsClone4.recordcount>0) then
    begin
      sWheIn4 := sWheIn4+'C.USEID IN (';
      cdsClone4.First;
      while not cdsClone4.Eof do
      begin
        sWheIn4 := sWheIn4  + '''' + cdsClone4.FieldByName('USEID').AsString + '''';
        cdsClone4.Next ;
        if not cdsClone4.eof then
        begin
          sWheIn4 := sWheIn4 + ' , ';
        end;
      end;
      sWheIn4 := sWheIn4 + ')';
    end;
  end;
	Close
end;

procedure TFSeleccio.Z2bbtnCancelClick(Sender: TObject);
begin
  if xRg = 1 then
  begin
  	sWheIn1:='';
  end
  else
  if xRg = 2 then
  begin
  	sWheIn2:='';
  end
  else
  if xRg = 3 then
  begin
  	sWheIn3:='';
  end
  else
  if xRg = 4 then
  begin
  	sWheIn4:='';
  end;

  Close;
end;

procedure TFSeleccio.dbgSelEnter(Sender: TObject);
begin
	pnlBusca.Visible := False;
end;

end.
