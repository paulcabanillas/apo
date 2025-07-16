unit APOD07;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, wwdblook, ppBands, ppClass, ppProd, ppReport, ppComm,
  ppTypes, ppRelatv, ppCache, ppDB, ppDBPipe, Wwdbdlg, Buttons, fcButton, fcImgBtn,
  variants, fcShapeBtn, ppCtrls, ppPrnabl, ppVar,ppViewr;

type
  TFConRes = class(TForm)
    rgforma: TRadioGroup;
    rgdpto: TRadioGroup;
    ppdbsinres: TppDBPipeline;
    DBLDpto: TwwDBLookupComboDlg;
    Z2bbtnAceptar: TfcShapeBtn;
    pprsinres: TppReport;
    ppDetailBand2: TppDetailBand;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLine1: TppLine;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLine4: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine2: TppLine;
    ppLabel7: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppResumido: TppReport;
    ppDetailBand1: TppDetailBand;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppLine3: TppLine;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLabel8: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppHeaderBand1: TppHeaderBand;
    ppLabel2: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLine7: TppLine;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppHeaderBand2: TppHeaderBand;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLine8: TppLine;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    procedure FormCreate(Sender: TObject);
//    procedure BitBtn1Click(Sender: TObject);
    procedure rgformaClick(Sender: TObject);
    procedure rgdptoClick(Sender: TObject);
    procedure Z2bbtnAceptarClick(Sender: TObject);
    procedure DBLDptoExit(Sender: TObject);
    procedure ppResumidoPreviewFormCreate(Sender: TObject);
    procedure pprsinresPreviewFormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConRes: TFConRes;

implementation

uses APODM;

{$R *.DFM}

procedure TFConRes.FormCreate(Sender: TObject);
begin
   rgdpto.Visible := False;
   dblDpto.Visible := False;
   if not DM1.cdsDpto.Active then
      DM1.cdsDpto.Open ;
   if not DM1.cdsUse.Active then
      DM1.cdsUse.Open ;
      with dm1.cdsQry do
      begin
       IndexFieldNames := '' ;
       filtered   := False ;
       Close ;
      end ;
      with dm1.cdsQry1 do
      begin
       IndexFieldNames := '' ;
       filtered   := False ;
       Close ;
      end ;

end;

procedure TFConRes.rgformaClick(Sender: TObject);
begin
   rgDpto.ItemIndex := -1;
   rgDpto.Visible   := (rgForma.ItemIndex = 1);
   dblDpto.Visible := False;
   if rgdpto.Visible then
      rgdpto.ItemIndex := 0 ;

end;

procedure TFConRes.rgdptoClick(Sender: TObject);
begin
    dblDpto.Visible := rgDpto.ItemIndex = 1;
end;

procedure TFConRes.Z2bbtnAceptarClick(Sender: TObject);
begin
  if (trim(DBLDpto.Text) = '') and (DBLDpto.Visible) then
  begin
     DBLDpto.SetFocus ;
     Raise exception.Create('Ingrese Departamento');
  end ;
  case rgForma.itemindex of
    0 : begin
          xSql := ' SELECT APO201.DPTOID , APO158.DPTODES , APO201.USEID , APO101.USENOM  , COUNT(*) TOTAL'+
                  ' FROM APO201 , APO158 , APO101'+
                  ' WHERE APO201.DPTOID = APO158.DPTOID AND (APO201.UPROID = APO101.UPROID'+
                  ' AND APO201.USEID = APO101.USEID) AND APO201.ASORESNOM IS NOT NULL'+
                  ' GROUP BY APO201.DPTOID , APO158.DPTODES , APO201.USEID , APO101.USENOM'+
                  ' ORDER BY 2 , 4';
          dm1.cdsQry1.close;
          dm1.cdsQry1.DataRequest(xSql);
          dm1.cdsQry1.open;
          if dm1.cdsQry1.RecordCount = 0 then
          begin
             Raise exception.Create('NO Existen Registros que satisfagan su Consulta');
          end ;
          ppdbsinres.DataSource := dm1.dsQry1;
          ppResumido.DataPipeline := ppdbsinres ;
          ppResumido.Print;
          ppResumido.Stop;
          ppdbsinres.DataSource := nil ;
          ppResumido.Reset;
        end;
    1 : begin
          case rgDpto.itemindex of
             0 : begin
                 xSql := ' SELECT APO201.DPTOID, APO158.DPTODES, APO201.USEID, APO101.USENOM, APO201.ASOCODMOD, APO201.ASOCODAUX,  APO201.ASORESNOM,'+
                         ' APO201.ASOAPENOM, 1 DUMMY FROM APO201, APO158, APO101 WHERE APO201.DPTOID = APO158.DPTOID(+)'+
                         ' AND (APO201.UPROID = APO101.UPROID AND APO201.USEID = APO101.USEID) AND APO201.ASORESNOM IS'+
                         ' NOT NULL ORDER BY 2 , 4 , 5';
                 dm1.cdsQry1.close;
                 dm1.cdsQry1.DataRequest(xSql);
                 end;
             1 : begin
                 xSql := 'SELECT APO201.DPTOID, APO158.DPTODES, APO201.USEID, APO101.USENOM, APO201.ASOCODMOD, APO201.ASOCODAUX, APO201.ASORESNOM, APO201.ASOAPENOM, 1 DUMMY'+
                         ' FROM APO201, APO158, APO101 WHERE APO201.DPTOID = '+quotedstr(dblDpto.text)+
                         ' AND (APO201.UPROID = APO101.UPROID AND APO201.USEID = APO101.USEID) AND (APO201.DPTOID = APO158.DPTOID) AND APO201.ASORESNOM IS NOT NULL'+
                         ' ORDER BY 2 , 4 , 5';

                // xSql := 'SELECT A.ASOCODMOD,A.ASOCODAUX,A.ASOAPENOM,A.USEID,'+
                //       ' B.USENOM,B.DPTOID,B.DPTODES,A.ASORESNOM, 1 DUMMY'+
                //       ' FROM APO201 A,'+
                //       ' (Select B.USEID,B.USENOM,C.DPTOID,C.DPTODES from APO158 C,APO101 B'+
                //       ' WHERE C.DPTOID ='+quotedstr(dblDpto.text)+' AND C.DPTOID = B.DPTOID) B'+
                //       ' WHERE (A.UPROID = B.UPROID AND A.USEID = B.USEID) AND NVL(ASORESNOM,''N'') = ''N'''+
                //       ' ORDER BY USEID,ASOCODMOD,ASOCODAUX';
                 dm1.cdsQry1.close;
                 dm1.cdsQry1.DataRequest(xSql);
                 end;
        end;
        dm1.cdsQry1.open;
        if dm1.cdsQry1.RecordCount = 0 then
        begin
           Raise exception.Create('NO Existen Registros que satisfagan su Consulta');
        end ;

        ppdbsinres.DataSource := dm1.dsQry1;
        pprsinres.Print;
        pprsinres.Stop;
        ppdbsinres.DataSource := nil ;
        pprsinres.Reset;
        end;
   end;
end;

procedure TFConRes.DBLDptoExit(Sender: TObject);
begin
  if not DBLDpto.LookupTable.Locate('DPTOID',VarArrayOf([DBLDpto.Text]),[]) then
     DBLDpto.Text := '' ;
end;

procedure TFConRes.ppResumidoPreviewFormCreate(Sender: TObject);
begin
  ppResumido.PreviewForm.WindowState := wsMaximized;

  TppViewer(ppResumido.PreviewForm.Viewer).ZoomSetting := zs100Percent;
end;

procedure TFConRes.pprsinresPreviewFormCreate(Sender: TObject);
begin
  pprsinres.PreviewForm.WindowState := wsMaximized;

  TppViewer(pprsinres.PreviewForm.Viewer).ZoomSetting := zs100Percent;
end;

procedure TFConRes.FormShow(Sender: TObject);
begin
   rgforma.ItemIndex := 0 ;
end;

end.
