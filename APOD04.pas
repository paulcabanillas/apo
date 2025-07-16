unit APOD04;

// Inicio Uso Estándares: 01/08/2011
// Unidad               : APOD04
// Formulario           : frmNumApor 
// Fecha de Creación    : 15/12/2003
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Aportantes a Nivel Nacional
// Actualizaciones      :
// HPC_201501_APO       : 06/01/2015 - Cambio de DCOM a Socket
// HPC_201601_APO       : 01/04/2016 - Se adicionó botón para exportar a Excel. 

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin, fcButton, fcImgBtn, fcShapeBtn, ExtCtrls, Mask, wwdbedit,
  wwdblook, Wwdbdlg, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppCache,
//Inicio HPC_201601_APO --Definir variables
  variants, ppTypes, ppDB, ppDBPipe, ppBands, ppPrnabl, ppCtrls, ppVar,ppViewr,
  Grids, DBGrids ;
//Final HPC_201601_APO
type
  TfrmNumApor = class(TForm)
    Z2bbtnAceptar: TfcShapeBtn;
    Z2bbtnCancel: TfcShapeBtn;
    rdgSeleccione: TRadioGroup;
    GroupBox1: TGroupBox;
    SpeAnnos: TSpinEdit;
    SpEmeses: TSpinEdit;
    Label2: TLabel;
    Label1: TLabel;
    GrPDpto: TGroupBox;
    rdgDetallado: TRadioGroup;
    rdgResumen: TRadioGroup;
    Departamento: TLabel;
    wEdtDeparta: TwwDBEdit;
    grpUses: TGroupBox;
    Label3: TLabel;
    wEdtNomUse: TwwDBEdit;
    wwDBLookupComboDlg1: TwwDBLookupComboDlg;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    wwDBLookupComboDlg2: TwwDBLookupComboDlg;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText5: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBCalc1: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc2: TppDBCalc;
    ppLabel1: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppShape2: TppShape;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLine1: TppLine;
    ppTitulo: TppLabel;
    ppPeriodo: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppDBPipeline2: TppDBPipeline;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel6: TppLabel;
    ppLabel12: TppLabel;
    pptitulo1: TppLabel;
    ppLabel14: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLabel15: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppLabel16: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppperiodo1: TppLabel;
    ppDetailBand2: TppDetailBand;
    ASOCODMOD: TppDBText;
    ASOAPENOM: TppDBText;
    ppDBText4: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    DPTODES: TppDBText;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    USEID: TppDBText;
    USENOM: TppDBText;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLine2: TppLine;
    wEdtLugDes: TwwDBEdit;
    Label4: TLabel;
    wwDBLookupComboDlg3: TwwDBLookupComboDlg;
//Inicio HPC_201601_APO --SE ADICIONA UN BOTON PARA EXPORTAR A EXCEL
    BtnExcel: TfcShapeBtn;
    dtgData: TDBGrid;
//Final HPC_201601_APO
    procedure Z2bbtnCancelClick(Sender: TObject);
    procedure Z2bbtnAceptarClick(Sender: TObject);
    procedure rdgSeleccioneClick(Sender: TObject);
    procedure rdgDetalladoClick(Sender: TObject);
    procedure rdgResumenClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure wwDBLookupComboDlg1Change(Sender: TObject);
    procedure wwDBLookupComboDlg2Change(Sender: TObject);
    procedure ppGroupFooterBand3AfterPrint(Sender: TObject);
    procedure wwDBLookupComboDlg3Change(Sender: TObject);
    procedure SpeAnnosKeyPress(Sender: TObject; var Key: Char);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure wwDBLookupComboDlg2Exit(Sender: TObject);
    procedure wwDBLookupComboDlg3Exit(Sender: TObject);
    procedure wwDBLookupComboDlg1Exit(Sender: TObject);
    procedure MayKeyPress(Sender: TObject; var Key: Char);
//Inicio HPC_201601_APO --SE ADICIONA UN BOTON PARA EXPORTAR A EXCEL
    procedure BtnExcelClick(Sender: TObject);
//Final HPC_201601_APO
  private
    { Private declarations }
    Function Meses(xStr:Integer):String;
  public
    { Public declarations }
  end;

var
  frmNumApor: TfrmNumApor;

implementation

uses APODM;


{$R *.DFM}

procedure TfrmNumApor.Z2bbtnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmNumApor.Z2bbtnAceptarClick(Sender: TObject);
var xSql,xAnno,xMes,xDpto,xUse,xLugPro : String;
    x10 : Integer;
begin
if trim(SpeAnnos.Text) = '' then
begin
   SpeAnnos.SetFocus;
   Raise Exception.CReate('Ingrese Año');
end;
if trim(SpEmeses.Text) = '' then
begin
   SpEmeses.SetFocus;
   Raise Exception.CReate('Ingrese Mes');
end;

if grpDpto.Visible then
begin
   if trim(wwDBLookupComboDlg2.text) = '' then
   begin
      wwDBLookupComboDlg2.SetFocus;
      Raise Exception.CReate('Ingrese Departamento');
   end ;
end ;
if grpUses.Visible then
begin
   if trim(wwDBLookupComboDlg3.text) = '' then
   begin
      wwDBLookupComboDlg3.SetFocus;
      Raise Exception.CReate('Ingrese Lugar de Proceso');
   end ;
   if trim(wwDBLookupComboDlg1.text) = '' then
   begin
      wwDBLookupComboDlg1.SetFocus;
      Raise Exception.CReate('Ingrese USE');
   end ;
end ;

try
ppReport1.Reset ;
ppReport2.Reset ;

xAnno:= speAnnos.Text;
xMes:=  Format('%.2d',[StrToInt(speMeses.Text)]);

case rdgSeleccione.ItemIndex  of
     0: case rdgDetallado.ItemIndex of
             0: Begin
                Screen.Cursor:=crHourGlass;
                xDpto:=wwDBLookupComboDlg2.Text;
                ppperiodo1.Caption:='PERIODO : '+Meses(StrToInt(speMeses.Text))+' Del '+xAnno ;
                pptitulo1.Caption := 'DETALLE DE APORTANTES POR DEPARTAMENTO Y USE ';
                xSql:= 'SELECT                            '+
                       'APO301.DPTOID ,                   '+
                       'NVL(APO158.DPTODES,''DEPARTAMENTO POR ASIGNAR'') DPTODES , ' +
                       'APO301.USEID ,                    '+
                       'APO101.USENOM ,                   '+
                       'APO301.ASOCODMOD,                 '+
                       'APO301.ASOAPENOM,                 '+
                       'APO301.UPROID,                    '+
                       '1 DUMMY                           '+
                       'FROM APO301 ,                     '+
                       'APO158 ,                          '+
                       'APO101                            '+
                       'WHERE                             '+
                       'APO301.USEID = APO101.USEID AND   '+
// Inicio HPC_201501_APO     Cambio de DCOM a Socket
                       'APO301.UPAGOID = APO101.UPAGOID AND '+
                       'APO301.UPROID = APO101.UPROID AND   '+
                       'APO101.DPTOID = APO158.DPTOID (+)   '+
// Fin    HPC_201501_APO     Cambio de DCOM a Socket
                       'AND TRANSINTID = ''APO''          '+
                       'AND TRANSANO = '''+xAnno+'''      '+
                       'AND TRANSMES = '''+xMes+'''       '+
                       'AND APO101.DPTOID = '''+xDpto+''' ' +
                       'ORDER BY 2 , 4 , 6                ';
                        Begin
                           dm1.cdsQry1.Close;
                           dm1.cdsQry1.DataRequest(xSql);
                           dm1.cdsQry1.open;
                           if dm1.cdsQry1.RecordCount = 0 then
                              Raise exception.Create('No existe Información por Mostrar'+
                                 #13 + 'para la Selección Efectuadas');
                           //wmc 666
                           ppDBPipeline2.DataSource := dm1.dsQry1;
                           ppReport2.Print;
                           ppReport2.Stop;
                           Screen.Cursor:=crDefault;
                        End;
                End;
             1: Begin
                Screen.Cursor:=crHourGlass;
                xUse:=wwDBLookupComboDlg1.Text ;
                xLugPro:=wwDBLookupComboDlg3.Text ; ;
                ppperiodo1.Caption:='PERIODO : '+Meses(StrToInt(speMeses.Text))+' Del '+xAnno ;
                pptitulo1.Caption := 'DETALLE DE APORTANTES POR USE ';
                xSql:= 'SELECT                            '+
                       'APO301.DPTOID ,                   '+
                       'NVL(APO158.DPTODES,''DEPARTAMENTO POR ASIGNAR'') DPTODES , ' +
                       'APO301.USEID ,                    '+
                       'APO101.USENOM ,                   '+
                       'APO301.ASOCODMOD,                 '+
                       'APO301.ASOAPENOM,                 '+
                       '1 DUMMY ,                         '+
                       'APO301.UPROID                     '+
                       'FROM APO301 ,                     '+
                       'APO158 ,                          '+
                       'APO101                            '+
                       'WHERE                             '+
                       'APO301.USEID = APO101.USEID    '+
                       'AND APO301.UPAGOID = APO101.UPAGOID '+
                       'AND APO301.UPROID = APO101.UPROID '+
                       'AND APO101.DPTOID = APO158.DPTOID (+) '+
                       'AND TRANSINTID = ''APO''          '+
                       'AND TRANSANO = '''+xAnno+'''      '+
                       'AND TRANSMES = '''+xMes+'''       '+
                       'AND APO301.USEID = '''+xUse+'''   '+
                       'AND APO301.UPROID = '''+xLugPro+'''      '+
                       'ORDER BY 2 , 4 , 5                ';
                        Begin
                           dm1.cdsQry1.Close;
                           dm1.cdsQry1.DataRequest(xSql);
                           dm1.cdsQry1.open;
                           if dm1.cdsQry1.RecordCount = 0 then
                              Raise exception.Create('No existe Información por Mostrar'+
                                 #13 + 'para la Selección Efectuadas');

                           //wmc 666
                           ppDBPipeline2.DataSource := dm1.dsQry1;
                           ppReport2.Print;
                           ppReport2.Stop;
                           Screen.Cursor:=crDefault;
                        End;
                End;
        end;
     1: case rdgResumen.ItemIndex of
             0: Begin
                Screen.Cursor:=crHourGlass;
                ppperiodo.Caption:='PERIODO : '+Meses(StrToInt(speMeses.Text))+' Del '+xAnno ;
                ppTitulo.Caption := 'RESUMEN DE APORTANTES POR DEPARTAMENTO Y USE ';
                xSql:= 'SELECT                            ' +
                       'APO301.DPTOID ,                         ' +
                       'NVL(APO158.DPTODES,''DEPARTAMENTO POR ASIGNAR'') DPTODES , ' +
                       'APO301.USEID ,                          ' +
                       'APO101.USENOM ,                         ' +
                       'COUNT(*) As MOVIM ,                     ' +
                       'APO301.UPROID                           ' +
                       'FROM APO301 , APO158 , APO101           ' +
                       'WHERE                                   ' +
                       'APO301.USEID = APO101.USEID         ' +
                       'AND APO301.UPAGOID = APO101.UPAGOID ' +
                       'AND APO301.UPROID = APO101.UPROID       ' +
                       'AND APO101.DPTOID = APO158.DPTOID (+)       ' +
                       'AND TRANSINTID = ''APO''                ' +
                       'AND TRANSANO = '''+xAnno+'''            ' +
                       'AND TRANSMES = '''+xMes+'''             ' +
                       'GROUP BY                                ' +
                       'APO301.DPTOID ,                         ' +
                       'APO158.DPTODES ,                        ' +
                       'APO301.USEID ,                          ' +
                       'APO101.USENOM ,                          ' +
                       'APO301.UPROID                           ' +
                       'ORDER BY 2 , 3                          ' ;
                        Begin
                           dm1.cdsQry1.close;
                           dm1.cdsQry1.DataRequest(xSql);
                           dm1.cdsQry1.open;
                           if dm1.cdsQry1.RecordCount = 0 then
                              Raise exception.Create('No existe Información por Mostrar'+
                                 #13 + 'para la Selección Efectuadas');

                           ppDBPipeline1.DataSource := dm1.dsQry1;
                           ppReport1.Print;
                           ppReport1.Stop;
                           Screen.Cursor:=crDefault;
                        End;
                End;
             1: Begin
                Screen.Cursor:=crHourGlass;
                ppperiodo.Caption:='PERIODO : '+Meses(StrToInt(speMeses.Text))+' Del '+xAnno ;
                xDpto:=wwDBLookupComboDlg2.Text;
                ppTitulo.Caption := 'RESUMEN DE APORTANTES POR DEPARTAMENTO Y USE ';
                xSql:= 'SELECT                            ' +
                       'APO301.DPTOID ,                         ' +
                       'NVL(APO158.DPTODES,''DEPARTAMENTO POR ASIGNAR'') DPTODES , ' +
                       'APO301.USEID ,                          ' +
                       'APO101.USENOM ,                         ' +
                       'COUNT(*) As MOVIM ,                     ' +
                       'APO301.UPROID                           ' +
                       'FROM APO301 , APO158 , APO101           ' +
                       'WHERE                                   ' +
                       'APO301.USEID = APO101.USEID         ' +
                       'AND APO301.UPAGOID = APO101.UPAGOID  ' +
                       'AND APO301.UPROID = APO101.UPROID   ' +
                       'AND APO101.DPTOID = APO158.DPTOID (+)       ' +
                       'AND TRANSINTID = ''APO''                ' +
                       'AND TRANSANO = '''+xAnno+'''            ' +
                       'AND TRANSMES = '''+xMes+'''             ' +
                       'AND APO101.DPTOID = '''+xDpto+'''       ' +
                       'GROUP BY                                ' +
                       'APO301.DPTOID ,                         ' +
                       'APO158.DPTODES ,                        ' +
                       'APO301.USEID ,                          ' +
                       'APO101.USENOM,                          ' +
                       'APO301.UPROID                           ' +
                       'ORDER BY 2 , 3                          ' ;
                        Begin
                           Dm1.cdsQry1.Close;
                           Dm1.cdsQry1.DataRequest(xSql);
                           Dm1.cdsQry1.Open;
                           if dm1.cdsQry1.RecordCount = 0 then
                              Raise exception.Create('No existe Información por Mostrar'+
                                 #13 + 'para la Selección Efectuadas');

                           ppDBPipeline1.DataSource := Dm1.dsQry1;
                           ppReport1.Print;
                           ppReport1.Stop;
                           Screen.Cursor:=crDefault;
                        End;
                End;
        End;
     Else
        ShowMessage('Debe Seleccionar Detallado ó Resumen');
end;
ppDBPipeline1.DataSource := nil ;
ppDBPipeline2.DataSource := nil ;
//     x10:= self.ComponentCount-1;
//      While x10>=0 Do
//        Begin
//          If self.Components[x10].ClassName='TppGroup' Then
//             Begin
//              self.Components[x10].Free;
//             End;
//             x10:=x10-1;
//        End;
except
   Screen.Cursor:=crDefault;
   Raise ;
end ;


end;

procedure TfrmNumApor.rdgSeleccioneClick(Sender: TObject);
begin
case rdgSeleccione.ItemIndex  of
     0: Begin
           rdgDetallado.Visible :=True;
           rdgResumen.Visible :=False;
           grpDpto.Visible  :=False;
           grpUses.Visible := True;
           //wmc
           wwDBLookupComboDlg1.Enabled := FALSE ;
           rdgDetallado.ItemIndex := 1;
           wwDBLookupComboDlg1.Text := '';
           wwDBLookupComboDlg2.Text := '';
           wwDBLookupComboDlg3.Text := '';
           wEdtLugDes.Text :='';
           wEdtNomUse.Text :='';
           wEdtDeparta.Text:='';
        end;
     1: Begin
           rdgResumen.Visible :=True;
           rdgDetallado.Visible :=False;
           grpDpto.Visible  :=True;
           grpUses.Visible := False;
           //wmc
           wwDBLookupComboDlg1.Enabled := FALSE ;
           rdgResumen.ItemIndex := 1 ;
           wwDBLookupComboDlg1.Text := '';
           wwDBLookupComboDlg2.Text := '';
           wwDBLookupComboDlg3.Text := '';
           wEdtLugDes.Text :='';
           wEdtNomUse.Text :='';
           wEdtDeparta.Text:='';

        End;
     Else
        ShowMessage('<<< Seleccione Una Opción >>>');
end;
end;

Procedure TfrmNumApor.rdgDetalladoClick(Sender: TObject);
Begin

Case rdgDetallado.ItemIndex  of
     0: Begin
          grpDpto.Visible  :=True;
          grpUses.Visible := False;
          wwDBLookupComboDlg1.Text := '';
          wwDBLookupComboDlg2.Text := '';
          wwDBLookupComboDlg3.Text := '';
          wEdtLugDes.Text :='';
          wEdtNomUse.Text :='';
          wEdtDeparta.Text:='';
        End;

     1: Begin
          grpUses.Visible := True;
          //wmc
          wwDBLookupComboDlg1.Enabled := FALSE ;
          grpDpto.Visible  :=False;
          wwDBLookupComboDlg1.Text := '';
          wwDBLookupComboDlg2.Text := '';
          wwDBLookupComboDlg3.Text := '';
          wEdtLugDes.Text :='';
          wEdtNomUse.Text :='';
          wEdtDeparta.Text:='';

        End;
end;

end;

procedure TfrmNumApor.rdgResumenClick(Sender: TObject);
begin
case rdgResumen.ItemIndex  of
     0: Begin
          grpDpto.Visible  :=False;
          wwDBLookupComboDlg1.Text := '';
          wwDBLookupComboDlg2.Text := '';
          wwDBLookupComboDlg3.Text := '';
          wEdtLugDes.Text :='';
          wEdtNomUse.Text :='';
          wEdtDeparta.Text:='';
        End;

     1: Begin
          grpDpto.Visible  :=True;
          wwDBLookupComboDlg1.Text := '';
          wwDBLookupComboDlg2.Text := '';
          wwDBLookupComboDlg3.Text := '';
          wEdtLugDes.Text :='';
          wEdtNomUse.Text :='';
          wEdtDeparta.Text:='';
        End;
end;

end;

procedure TfrmNumApor.FormCreate(Sender: TObject);
begin
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
   wwDBLookupComboDlg1.LookupField := 'USEID' ;

   rdgseleccione.ItemIndex :=0;
   rdgDetallado.ItemIndex :=1;
   grpDpto.Visible  :=False;
   grpUses.Visible := True;
   //wmc
   wwDBLookupComboDlg1.Enabled := FALSE ;
  // Z2bbtnAceptar.SetFocus;
  if not dm1.cdsDpto.aCTIVE then
     dm1.cdsDpto.Open ;
  if not dm1.cdsUPro.Active  then
     dm1.cdsUPro.Open ;   
end;

procedure TfrmNumApor.wwDBLookupComboDlg1Change(Sender: TObject);
Var xUse,xUpro,xSql : String;
begin

  If Dm1.cdsQry.Locate('USEID',VarArrayof([wwDBLookupComboDlg1.Text]),[]) Then
        wEdtNomUse.text:= dm1.cdsQry.fieldbyname('USENOM').AsString
   Else
        wEdtNomUse.Text:='';

end;

procedure TfrmNumApor.wwDBLookupComboDlg2Change(Sender: TObject);
begin
  If Dm1.cdsDpto.Locate('DPTOID',VarArrayof([wwDBLookupComboDlg2.Text]),[]) Then
      wEdtDeparta.text:= dm1.cdsDpto.fieldbyname('DPTODES').AsString
   Else
      Begin
//        if length(wwDBLookupComboDlg2.Text) > 2 then
//           Begin
              Beep;
              wEdtDeparta.Text:='';
//           End
      End

end;

Function TfrmNumApor.Meses(xStr: Integer): String;
Begin
   Case xStr Of
         1: Meses:='ENERO';
         2: Meses:='FEBRERO';
         3: Meses:='MARZO';
         4: Meses:='ABRIL';
         5: Meses:='MAYO';
         6: Meses:='JUNIO';
         7: Meses:='JULIO';
         8: Meses:='AGOSTO';
         9: Meses:='SETIEMBRE';
        10: Meses:='OCTUBRE';
        11: Meses:='NOVIEMBRE';
        12: Meses:='DICIEMBRE';
   End;
end;

procedure TfrmNumApor.ppGroupFooterBand3AfterPrint(Sender: TObject);
begin
//      ppDBCalc3.Value :=0;
end;

procedure TfrmNumApor.wwDBLookupComboDlg3Change(Sender: TObject);
Var xSql:String;
Begin

  If Dm1.cdsUPro.Locate('UPROID',VarArrayof([wwDBLookupComboDlg3.Text]),[]) Then
      Begin
        wEdtNomUse.Text := '';
        wwDBLookupComboDlg1.Text := '';
        wwDBLookupComboDlg1.Enabled := True ;
        wEdtLugDes.text:= dm1.cdsUPro.fieldbyname('UPRONOM').AsString ;
        xSql := 'Select USEID,USENOM,UPROID from APO101 WHERE UPROID='''+wwDBLookupComboDlg3.Text+'''';
        dm1.cdsQry.Close;
        dm1.cdsQry.DataRequest(xSql);
        dm1.cdsQry.Open;
      End
   Else
      Begin
        wEdtLugDes.Text:='';
      End ;

end;
procedure TfrmNumApor.SpeAnnosKeyPress(Sender: TObject; var Key: Char);
begin
       if key in ['.','-'] then
          key := #0 ;
end;

procedure TfrmNumApor.ppReport2PreviewFormCreate(Sender: TObject);
begin
  ppReport2.PreviewForm.WindowState := wsMaximized;
  TppViewer(ppReport2.PreviewForm.Viewer).ZoomSetting := zs100Percent;
end;

procedure TfrmNumApor.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState := wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomSetting := zs100Percent;
end;

procedure TfrmNumApor.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If key=#13 then
  Begin
     key:=#0;
     perform(CM_DialogKey,VK_TAB,0);
  End;
end;

procedure TfrmNumApor.wwDBLookupComboDlg2Exit(Sender: TObject);
begin
   if trim(wEdtDeparta.Text) = '' then
      wwDBLookupComboDlg2.Text := '' ;
end;

procedure TfrmNumApor.wwDBLookupComboDlg3Exit(Sender: TObject);
begin
  if trim(wEdtLugDes.text) = '' then
  begin
     wwDBLookupComboDlg3.Text := '' ;
     wwDBLookupComboDlg1.Text := '';
     wwDBLookupComboDlg1.Enabled := False ;

  end ;
end;

procedure TfrmNumApor.wwDBLookupComboDlg1Exit(Sender: TObject);
begin
  if trim(wEdtNomUse.text) = '' then
     wwDBLookupComboDlg1.Text := '' ;
end;

procedure TfrmNumApor.MayKeyPress(Sender: TObject; var Key: Char);
begin
       key := UpCase(Key) ;
end;

//Inicio HPC_201601_APO --SE ADICIONA UN BOTON PARA EXPORTAR A EXCEL
procedure TfrmNumApor.BtnExcelClick(Sender: TObject);
var xSql,xAnno,xMes,xDpto,xUse,xLugPro : String;
    x10 : Integer;
begin
if trim(SpeAnnos.Text) = '' then
begin
   SpeAnnos.SetFocus;
   Raise Exception.CReate('Ingrese Año');
end;

if trim(SpEmeses.Text) = '' then
begin
   SpEmeses.SetFocus;
   Raise Exception.CReate('Ingrese Mes');
end;

if grpDpto.Visible then
begin
   if trim(wwDBLookupComboDlg2.text) = '' then
   begin
      wwDBLookupComboDlg2.SetFocus;
      Raise Exception.CReate('Ingrese Departamento');
   end ;
end;

if grpUses.Visible then
begin
   if trim(wwDBLookupComboDlg3.text) = '' then
   begin
      wwDBLookupComboDlg3.SetFocus;
      Raise Exception.CReate('Ingrese Lugar de Proceso');
   end ;
   if trim(wwDBLookupComboDlg1.text) = '' then
   begin
      wwDBLookupComboDlg1.SetFocus;
      Raise Exception.CReate('Ingrese USE');
   end ;
end ;

Try

xAnno:= speAnnos.Text;
xMes :=  Format('%.2d',[StrToInt(speMeses.Text)]);

case rdgSeleccione.ItemIndex  of
     0: case rdgDetallado.ItemIndex of
             0: Begin
                Screen.Cursor:=crHourGlass;
                xDpto:=wwDBLookupComboDlg2.Text;
                ppperiodo1.Caption:='PERIODO : '+Meses(StrToInt(speMeses.Text))+' Del '+xAnno ;
                pptitulo1.Caption := 'DETALLE DE APORTANTES POR DEPARTAMENTO Y USE ';
                xSql:= 'SELECT                            '+
                       'APO301.DPTOID ,                   '+
                       'NVL(APO158.DPTODES,''DEPARTAMENTO POR ASIGNAR'') DPTODES , ' +
                       'APO301.USEID ,                    '+
                       'APO101.USENOM ,                   '+
                       'APO301.ASOCODMOD,                 '+
                       'APO301.ASOAPENOM,                 '+
                       'APO301.UPROID,                    '+
                       '1 UNIDAD                          '+
                       'FROM APO301 ,                     '+
                       'APO158 ,                          '+
                       'APO101                            '+
                       'WHERE                             '+
                       'APO301.USEID = APO101.USEID AND   '+
                       'APO301.UPAGOID = APO101.UPAGOID AND '+
                       'APO301.UPROID = APO101.UPROID AND   '+
                       'APO101.DPTOID = APO158.DPTOID (+)   '+
                       'AND TRANSINTID = ''APO''          '+
                       'AND TRANSANO = '''+xAnno+'''      '+
                       'AND TRANSMES = '''+xMes+'''       '+
                       'AND APO101.DPTOID = '''+xDpto+''' ' +
                       'ORDER BY 2 , 4 , 6                ';
                        Begin
                           dm1.cdsQry1.Close;
                           dm1.cdsQry1.DataRequest(xSql);
                           dm1.cdsQry1.open;
                           if dm1.cdsQry1.RecordCount = 0 then
                              Raise exception.Create('No existe Información para Exportar a Excel '+
                                 #13 + 'para la Selección Efectuadas');

                              DM1.HojaExcel('Numero de Aportantes', dm1.dsQry1, DTGDATA);
                           Screen.Cursor:=crDefault;
                        End;
                End;
             1: Begin
                Screen.Cursor:=crHourGlass;
                xUse:=wwDBLookupComboDlg1.Text ;
                xLugPro:=wwDBLookupComboDlg3.Text ; ;
                ppperiodo1.Caption:='PERIODO : '+Meses(StrToInt(speMeses.Text))+' Del '+xAnno ;
                pptitulo1.Caption := 'DETALLE DE APORTANTES POR USE ';
                xSql:= 'SELECT                            '+
                       'APO301.DPTOID ,                   '+
                       'NVL(APO158.DPTODES,''DEPARTAMENTO POR ASIGNAR'') DPTODES , ' +
                       'APO301.USEID ,                    '+
                       'APO101.USENOM ,                   '+
                       'APO301.ASOCODMOD,                 '+
                       'APO301.ASOAPENOM,                 '+
                       '1 UNIDAD ,                        '+
                       'APO301.UPROID                     '+
                       'FROM APO301 ,                     '+
                       'APO158 ,                          '+
                       'APO101                            '+
                       'WHERE                             '+
                       'APO301.USEID = APO101.USEID    '+
                       'AND APO301.UPAGOID = APO101.UPAGOID '+
                       'AND APO301.UPROID = APO101.UPROID '+
                       'AND APO101.DPTOID = APO158.DPTOID (+) '+
                       'AND TRANSINTID = ''APO''          '+
                       'AND TRANSANO = '''+xAnno+'''      '+
                       'AND TRANSMES = '''+xMes+'''       '+
                       'AND APO301.USEID = '''+xUse+'''   '+
                       'AND APO301.UPROID = '''+xLugPro+'''      '+
                       'ORDER BY 2 , 4 , 5                ';
                        Begin
                           dm1.cdsQry1.Close;
                           dm1.cdsQry1.DataRequest(xSql);
                           dm1.cdsQry1.open;
                           if dm1.cdsQry1.RecordCount = 0 then
                              Raise exception.Create('No existe Información para Exportar a Excel'+
                                 #13 + 'para la Selección Efectuadas');

                            DM1.HojaExcel('Numero de Aportantes', dm1.dsQry1, DTGDATA);
                          Screen.Cursor:=crDefault;
                        End;
                End;
        end;
     1: case rdgResumen.ItemIndex of
             0: Begin
                Screen.Cursor:=crHourGlass;
                ppperiodo.Caption:='PERIODO : '+Meses(StrToInt(speMeses.Text))+' Del '+xAnno ;
                ppTitulo.Caption := 'RESUMEN DE APORTANTES POR DEPARTAMENTO Y USE ';
                xSql:= 'SELECT                            ' +
                       'APO301.DPTOID ,                         ' +
                       'NVL(APO158.DPTODES,''DEPARTAMENTO POR ASIGNAR'') DPTODES , ' +
                       'APO301.USEID ,                          ' +
                       'APO101.USENOM ,                         ' +
                       'COUNT(*) As MOVIM ,                     ' +
                       'APO301.UPROID                           ' +
                       'FROM APO301 , APO158 , APO101           ' +
                       'WHERE                                   ' +
                       'APO301.USEID = APO101.USEID         ' +
                       'AND APO301.UPAGOID = APO101.UPAGOID ' +
                       'AND APO301.UPROID = APO101.UPROID       ' +
                       'AND APO101.DPTOID = APO158.DPTOID (+)       ' +
                       'AND TRANSINTID = ''APO''                ' +
                       'AND TRANSANO = '''+xAnno+'''            ' +
                       'AND TRANSMES = '''+xMes+'''             ' +
                       'GROUP BY                                ' +
                       'APO301.DPTOID ,                         ' +
                       'APO158.DPTODES ,                        ' +
                       'APO301.USEID ,                          ' +
                       'APO101.USENOM ,                          ' +
                       'APO301.UPROID                           ' +
                       'ORDER BY 2 , 3                          ' ;
                        Begin
                           dm1.cdsQry1.close;
                           dm1.cdsQry1.DataRequest(xSql);
                           dm1.cdsQry1.open;
                           if dm1.cdsQry1.RecordCount = 0 then
                              Raise exception.Create('No existe Información para Exportar a Excel'+
                                 #13 + 'para la Selección Efectuadas');

                            DM1.HojaExcel('Numero de Aportantes', dm1.dsQry1, DTGDATA);
                           Screen.Cursor:=crDefault;
                        End;
                End;
             1: Begin
                Screen.Cursor:=crHourGlass;
                ppperiodo.Caption:='PERIODO : '+Meses(StrToInt(speMeses.Text))+' Del '+xAnno ;
                xDpto:=wwDBLookupComboDlg2.Text;
                ppTitulo.Caption := 'RESUMEN DE APORTANTES POR DEPARTAMENTO Y USE ';
                xSql:= 'SELECT                            ' +
                       'APO301.DPTOID ,                         ' +
                       'NVL(APO158.DPTODES,''DEPARTAMENTO POR ASIGNAR'') DPTODES , ' +
                       'APO301.USEID ,                          ' +
                       'APO101.USENOM ,                         ' +
                       'COUNT(*) As MOVIM ,                     ' +
                       'APO301.UPROID                           ' +
                       'FROM APO301 , APO158 , APO101           ' +
                       'WHERE                                   ' +
                       'APO301.USEID = APO101.USEID         ' +
                       'AND APO301.UPAGOID = APO101.UPAGOID  ' +
                       'AND APO301.UPROID = APO101.UPROID   ' +
                       'AND APO101.DPTOID = APO158.DPTOID (+)       ' +
                       'AND TRANSINTID = ''APO''                ' +
                       'AND TRANSANO = '''+xAnno+'''            ' +
                       'AND TRANSMES = '''+xMes+'''             ' +
                       'AND APO101.DPTOID = '''+xDpto+'''       ' +
                       'GROUP BY                                ' +
                       'APO301.DPTOID ,                         ' +
                       'APO158.DPTODES ,                        ' +
                       'APO301.USEID ,                          ' +
                       'APO101.USENOM,                          ' +
                       'APO301.UPROID                           ' +
                       'ORDER BY 2 , 3                          ' ;
                        Begin
                           Dm1.cdsQry1.Close;
                           Dm1.cdsQry1.DataRequest(xSql);
                           Dm1.cdsQry1.Open;
                           if dm1.cdsQry1.RecordCount = 0 then
                              Raise exception.Create('No existe Información para Exportar a Excel'+
                                 #13 + 'para la Selección Efectuadas');

                            DM1.HojaExcel('Numero de Aportantes', dm1.dsQry1, DTGDATA);
                           Screen.Cursor:=crDefault;
                        End;
                End;
        End;
     Else
        ShowMessage('Debe Seleccionar Detallado ó Resumen');
end;
except
   Screen.Cursor:=crDefault;
   Raise ;
end ;

end;
//Final HPC_201601_APO

end.
//proc
