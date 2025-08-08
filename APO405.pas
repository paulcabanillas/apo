// Inicio Uso Estándares     : 01/08/2011
// Modulo                    : Aportes
// Unidad                    : APO405
// Formulario                : FContabilizacion
// Fecha de Creación         :
// Autor                     :
// Objetivo                  : Contabilización de los diferentes Movimientos de APORTES
// Relacion de pases a producción:
// HPC_201601_APO            : SE IMPLEMENTA 3 COLUMNAS EN EL REPORTE (PLA,BAN,EFE), SE ADICIONA UN BOTON PARA EXPORTAR A EXCEL.
// HPC_201602_APO            : SE MODIFICA FILTRO DE REPORTE.

unit APO405;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcButton, fcImgBtn, fcShapeBtn, Wwdbspin, wwdbdatetimepicker, StdCtrls,
  ComCtrls, wwriched, Mask, wwdbedit, wwdblook, ExtCtrls, Buttons,
  Wwdbigrd, Grids, Wwdbgrid,DB, Wwdbdlg, ppEndUsr, ppProd, ppClass,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppBands, ppCache, ppCtrls,
  //Inicio HPC_201601_APO --Definir variables
  ppVar,  ppPrnabl, ppParameter, jpeg, DBGrids;
  //Final HPC_201601_APO

type
  TFContabilizacionF = class(TForm)
    pnlCabecera: TPanel;
    bbtnCancelar: TfcShapeBtn;
    bbtnSalir: TfcShapeBtn;
    pgAvance: TProgressBar;
    pnlFondo1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    dbdtpFInicio: TwwDBDateTimePicker;
    dbdtpFFin: TwwDBDateTimePicker;
    dtpFecha: TwwDBDateTimePicker;
    speAno: TEdit;
    speMes: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    Bevel1: TBevel;
    Bevel2: TBevel;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    ppdb1: TppDBPipeline;
    ppr1: TppReport;
    ppd1: TppDesigner;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText6: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine4: TppLine;
    ppDBCalc3: TppDBCalc;
    ppLabel9: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine1: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBText5: TppDBText;
    ppLabel8: TppLabel;
    PPDB2: TppDBPipeline;
    PPR2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDBText7: TppDBText;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLine7: TppLine;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLabel22: TppLabel;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLine8: TppLine;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppLabel23: TppLabel;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppLine9: TppLine;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppLabel24: TppLabel;
    ppParameterList2: TppParameterList;
    PPD2: TppDesigner;
    ppdb3: TppDBPipeline;
    ppd3: TppDesigner;
    ppr3: TppReport;
    ppParameterList3: TppParameterList;
    ppHeaderBand3: TppHeaderBand;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLabel29: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppDBText19: TppDBText;
    ppDetailBand3: TppDetailBand;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppFooterBand1: TppFooterBand;
//Inicio HPC_201601_APO --SE IMPLEMENTA 3 COLUMNAS EN EL REPORTE (PLA,BAN,EFE)
    ppLabel25: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppImage1: TppImage;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    BitBtn10: TBitBtn;
    dtgData: TDBGrid;
    ppDBCalc4: TppDBCalc;
    LBLTOTAL: TppLabel;
//Final HPC_201601_APO

    procedure bbtnCancelarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure bbtnSalirClick(Sender: TObject);
    procedure spemesExit(Sender: TObject);
    procedure dtpFechaExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
//Inicio HPC_201601_APO --SE ADICIONA UN BOTON PARA EXPORTAR A EXCEL
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);

    //Final HPC_201601_APO
//    procedure dblcNotInList(Sender: TObject);

  private
    { Private declarations }
    cLink,xLink : String;
    function UltimoDiaMes( cAno, cMes : String ) : Tdate;
    function VerificaPeriodo : Boolean;
  public
    { Public declarations }
     xSQL,wSQL,ySQL,xVar :String;
  end;

var
  FContabilizacionF: TFContabilizacionF;

implementation

USES APODM, APO404 , APO406;
{$R *.DFM}

procedure TFContabilizacionF.bbtnCancelarClick(Sender: TObject);
begin
  Close;
end;

{procedure TFContabilizacion.dblcNotInList(Sender: TObject;
  LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
begin
//  Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).DataField,NewValue,[]);
  Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookupField,NewValue,[]);
  if not Accept then
    TwwDBCustomLookupCombo(Sender).DropDown;
end;}

procedure TFContabilizacionF.FormActivate(Sender: TObject);
var
  xFecha:String;
begin
   cLink := '';
   cLink := '';
   xLink := '';
   xFecha:=DateTimeTostr(Date);
   dbdtpFInicio.Date:=Date;
   dbdtpFFin.Date:=Date;
   speano.Text:=Copy(xFecha,7,4);
   spemes.Text:=Copy(xFecha,4,2);
   dtpFecha.Date:=Date;
end;

procedure TFContabilizacionF.bbtnSalirClick(Sender: TObject);
var
  xPeriodo,xNumero,xTDiardID,xTDiardDes,xFecha : String;
  xFComp, xAnoAnt, xMesAnt, xSQL : String;
  xCia, xCuentaID46, xCuentaDes46 : String;
  xCuentaID48, xCuentaDes48 : String;
  xDocId,xDocDes,yUSEID, oSQL, pSQL : String;
  xTCambio:Real;
  xFecIniAnt, xFecFinAnt : TDate;
begin

  If Length(dtpFecha.Text)=0 Then
  Begin
    ShowMessage('Seleccione la Fecha del Comprobante');
    dbdtpFInicio.SetFocus;
    exit;
  End;
  xFComp:=DateTimeToStr(dtpFecha.Date);
  If Length(dbdtpFInicio.Text)=0 Then
  Begin
    ShowMessage('Seleccione la Fecha de Inicio');
    dbdtpFInicio.SetFocus;
    exit;
  End;

  If Length(dbdtpFFin.Text)=0 Then
  Begin
    ShowMessage('Seleccione la Fecha de Fin');
    dbdtpFFin.SetFocus;
    exit;
  End;
  If dbdtpFInicio.Date>dbdtpFFin.Date Then
  Begin
    ShowMessage('La Fecha de Inicio debe ser Mayor que la Fecha de Fin');
    dbdtpFInicio.SetFocus;
    exit;
  End;

  //******************************************************************
  // Verifica si el periodo ya se cerro
  //******************************************************************
  Screen.Cursor:=crSQLWait;
  pgAvance.Max:=15;
  pgAvance.Position:=pgAvance.Position+1;

  xSQL:=' SELECT ANO,PER'+dm1.StrZero(spemes.Text,2)+
        ' FROM TGE154 '+
        ' WHERE ANO='+QuotedStr(speAno.Text)+' '+
        ' AND PER'+dm1.StrZero(spemes.Text,2)+'<>'+QuotedStr('S');
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSQL);
  DM1.cdsQry.Open;
  pgAvance.Position:=pgAvance.Position+1;
  If DM1.cdsQry.RecordCount<>0 Then
  Begin
    ShowMessage('El Periodo de Contabilización ya se encuentra cerrado');
    speAno.SetFocus;
    Screen.Cursor:=crDefault;
    pgAvance.Max:=0;
    exit;
  End;
  DM1.cdsQry.Close;
  //******************************************************************
  // Fin Verifica si el periodo ya se cerro
  //******************************************************************

  //******************************************************************
  // Selecciona Aportes
  //******************************************************************
  xSQL:=' SELECT USEID,TRANSNOPE,MAX(TRANSFOPE) AS TRANSFOPE,SUM(TRANSMTO) AS MONTO,'+
        ' MAX(USEABR) AS USEABR FROM APO301'+
        ' WHERE TRANSINTID='+QuotedStr('APO')+
        ' AND FREG BETWEEN '+QuotedStr(dbdtpFInicio.Text)+
        ' AND '+QuotedStr(dbdtpFFin.Text)+
        ' AND NVL(APOFCNT,'+QuotedStr('X')+')='+QuotedStr('X')+
        ' GROUP BY USEID, TRANSNOPE '+
        ' ORDER BY USEID';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSQL);
  DM1.cdsQry.Open;
  pgAvance.Position:=pgAvance.Position+1;
  If DM1.cdsQry.RecordCount=0 Then
  Begin
    ShowMessage('No Existen Aportes para el Rango de Fecha de Operación Seleccionado');
    dtpFecha.SetFocus;
    Screen.Cursor:=crDefault;
    pgAvance.Max:=0;
    exit;
  End
  Else
  Begin
    FDatosContabilizacion:=TFDatosContabilizacion.Create(Self);
    FDatosContabilizacion.ShowModal;
    If xVar='X' Then
    Begin
      ShowMessage('El Proceso de Contabilización fue Cancelado');
      Screen.Cursor:=crDefault;
      pgAvance.Max:=0;
      exit;
    End;
  End;

  DM1.cdsQry.First;
  //******************************************************************
  // Fin Selecciona Aporte
  //******************************************************************

  //******************************************************************
  // Selecciona Tipo de Diario
  //******************************************************************
  xSQL:='SELECT * FROM TGE104 '+
        'WHERE TDIARID='+QuotedStr('33');
  DM1.cdsQry2.Close;
  DM1.cdsQry2.DataRequest(xSQL);
  DM1.cdsQry2.Open;
  pgAvance.Position:=pgAvance.Position+1;
  If DM1.cdsQry2.RecordCount>0 Then
  Begin
    xTDiardID:=DM1.cdsQry2.FieldByName('TDIARID').AsString;
    xTDiardDes:=DM1.cdsQry2.FieldByName('TDIARDES').AsString;
  End
  Else
  Begin
    ShowMessage('El Tipo de Diario 33 No Existe');
    Screen.Cursor:=crDefault;
    pgAvance.Max:=0;
    exit;
  End;
  //******************************************************************
  // Fin Selecciona Tipo de Diario
  //******************************************************************

  //******************************************************************
  // Selecciona Cuenta Contable
  //******************************************************************
  xSQL:='SELECT * FROM TGE202 '+
        'WHERE CUENTAID='+QuotedStr('4691205')+
        '       OR CUENTAID='+QuotedStr('4810001')+' '+
        'ORDER BY CUENTAID';
  DM1.cdsQry2.Close;
  DM1.cdsQry2.DataRequest(xSQL);
  DM1.cdsQry2.Open;
  pgAvance.Position:=pgAvance.Position+1;
  If DM1.cdsQry2.RecordCount>0 Then
  Begin
    DM1.cdsQry2.First;
    xCuentaID46:=DM1.cdsQry2.FieldByName('CUENTAID').AsString;
    xCuentaDes46:=DM1.cdsQry2.FieldByName('CTADES').AsString;
    DM1.cdsQry2.Next;
    pgAvance.Position:=pgAvance.Position+1;
    xCuentaID48:=DM1.cdsQry2.FieldByName('CUENTAID').AsString;
    xCuentaDes48:=DM1.cdsQry2.FieldByName('CTADES').AsString;
  End
  Else
  Begin
    ShowMessage('El Tipo de Diario 33 No Existe');
    Screen.Cursor:=crDefault;
    pgAvance.Max:=0;
    exit;
  End;
  //******************************************************************
  // Fin Selecciona Cuenta Contable
  //******************************************************************

  //******************************************************************
  // Selecciona Tipo de Documento
  //******************************************************************
  xSQL:=' SELECT * FROM TGE110 '+
        ' WHERE DOCID='+QuotedStr('20')+
        '       AND DOCMOD='+QuotedStr('CNT');
  DM1.cdsQry2.Close;
  DM1.cdsQry2.DataRequest(xSQL);
  DM1.cdsQry2.Open;
  pgAvance.Position:=pgAvance.Position+1;
  If DM1.cdsQry2.RecordCount>0 Then
  Begin
    xDocId:=DM1.cdsQry2.FieldByName('DOCID').AsString;
    xDocDes:=Copy(DM1.cdsQry2.FieldByName('DOCABR').AsString,1,8);
  End
  Else
  Begin
    ShowMessage('El Tipo de Documento No Existe');
    Screen.Cursor:=crDefault;
    pgAvance.Max:=0;
    exit;
  End;
  DM1.cdsQry2.Close;
  //******************************************************************
  // Fin Selecciona Tipo de Documento
  //******************************************************************

  xFecha:=DateTimeToStr(Date);
  xCia:='02';

  //******************************************************************
  // Selecciona Tipo de Cambio
  //******************************************************************
  xSQL:=' SELECT * FROM TGE107 '+
        ' WHERE FECHA='+QuotedStr(xFComp);
  DM1.cdsQry2.Close;
  DM1.cdsQry2.DataRequest(xSQL);
  DM1.cdsQry2.Open;
  pgAvance.Position:=pgAvance.Position+1;
  If DM1.cdsQry2.RecordCount>0 Then
  Begin
    xTCambio:=DM1.FRound(DM1.cdsQry2.FieldByName('TCAMVBV').AsFloat,15,2);
  End
  Else
  Begin
    ShowMessage('El Tipo de Tipo de Cambio No esta Registrado');
    Screen.Cursor:=crDefault;
    pgAvance.Max:=0;
    exit;
  End;
  //******************************************************************
  // Fin Selecciona Tipo de Cambio
  //******************************************************************


  //***********************************************************************
  // Inicia Proceso de inserción en Contabilidad
  //***********************************************************************

   //-- SE GENERAN DOS TABLAS
   //-- ESTAS SON LAS DOS TABLAS QUE SE TRANSFIEREN A CONTABILIDAD
   //CNT300_OTROS
   //CNT311_OTROS
   //ESTAS DOS TABLAS DEBEN SER PASADAS AL CNT300 Y CNT311 RESPECTIVAMENTE
   //EN LA BASE DE DATOS PROD

   //NOTA : VERIFICAR EL CORRELATIVO DE NUMERO DE DOCUMENTO QUE NO SE REPITA.


   //-- CON ESTE SELECT REVISO QUE LOS DATOS SE HAN GENERADO CORRECTAMENTE

   xSQL:='SELECT TDIARID, SUM(NVL(CNTDEBEMN,0)) DEBE, SUM(NVL(CNTHABEMN,0)) HABER '
        +'FROM CNT300_OTROS '
        +'GROUP BY TDIARID';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(xSQL);
   DM1.cdsQry2.Open;


   xSQL:='SELECT TDIARID, SUM(NVL(CNTDEBEMN,0)), SUM(NVL(CNTHABEMN,0)) '
        +'FROM CNT311_OTROS '
        +'GROUP BY TDIARID';

   //DEBEN CONTENER LA MISMA INFORMACION

   //-- AHORA SE PROCEDE A INSERTAR LAS TABLAS CNT300_OTROS Y CNT311_OTROS
   //-- EN PROD
   //-- OJO HAY QUE ESTAR EN LA BASE DE DATOS PROD

   xSQL:='INSERT INTO CNT300 '
        +'SELECT * FROM CNT300_OTROS@DESALINK ';

   xSQL:='INSERT INTO CNT311 '
        +'SELECT * FROM CNT311_OTROS@DESALINK';

   //-- PUEDES REVISAR LA INFORMACION DE APORTES EN PROD DE ESTA MANERA


   xSQL:='SELECT ROWID, A.* FROM CNT311 A '
        +'WHERE CNTANOMM = ''200409'' '
        +  'AND CNTUSER  = ''GQUISPE'' '
        +  'AND TDIARID = ''28''';

  //***********************************************************************
  // Fin Proceso de inserción en Contabilidad
  //***********************************************************************


  //******************************************************************
  // Inicio Actualiza Aportes insertados en Contabilidad
  //******************************************************************
  {xSQL:=' UPDATE APO301 SET '+
        '        APOFCNT='+QuotedStr('S')+
        ' WHERE TRANSINTID='+QuotedStr('APO')+
        '       AND TRANSFOPE BETWEEN '+QuotedStr(dbdtpFInicio.Text)+
        '       AND '+QuotedStr(dbdtpFFin.Text)+
        '       AND NVL(APOFCNT,'+QuotedStr('X')+')='+QuotedStr('X');
  DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
  pgAvance.Position:=pgAvance.Position+1;
   }
  //******************************************************************
  // Fin Actualiza Aportes insertados en Contabilidad
  //******************************************************************

  Screen.Cursor:=crDefault;
  pgAvance.Max:=0;
  ShowMessage('Operación Exitosa');
end;

procedure TFContabilizacionF.spemesExit(Sender: TObject);
begin
  If Length(Trim(speMes.Text))=1 Then
  Begin
    speMes.Text:='0'+speMes.Text;
  End;
end;

procedure TFContabilizacionF.dtpFechaExit(Sender: TObject);
var
   xAnoSig, xMesSig : String;
begin
  speAno.Text:=Copy(DateTimeToStr(dtpFecha.Date),7,4);
  speMEs.Text:=Copy(DateTimeToStr(dtpFecha.Date),4,2);

  if StrToInt(spemes.Text)>=12 then
  begin
     xAnoSig:=IntToStr( StrToInt(speano.Text)+1 );
     xMesSig:='01';
  end
  else
  begin
     xAnoSig:=speano.Text;
     xMesSig:=DM1.StrZero( IntToStr( StrToInt(speMes.Text)+1 ), 2 ) ;
  end;

  dbdtpFInicio.Date:=StrToDate('01/'+speMEs.Text+'/'+speAno.Text );
  dbdtpFFin.Date   :=StrToDate('01/'+xMesSig    +'/'+xAnoSig     )-1;
end;

function TFContabilizacionF.UltimoDiaMes( cAno, cMes : String ) : Tdate;
var
   cMesSig, cAnoSig : String;
begin
  if StrToInt( cMes )>=12 then
  begin
     cAnoSig:=IntToStr( StrToInt( cAno )+1 );
     cMesSig:='01';
  end
  else
  begin
     cAnoSig:=cAno;
     cMesSig:=DM1.StrZero( IntToStr( StrToInt( cMes )+1 ), 2 ) ;
  end;

  Result:=StrToDate('01/'+cMesSig    +'/'+cAnoSig     )-1;

end;

procedure TFContabilizacionF.BitBtn1Click(Sender: TObject);
var
  xFComp, xAnoAnt, xMesAnt, xSQL : String;
  xFecIniAnt, xFecFinAnt : TDate;
begin
  If Length(dtpFecha.Text)=0 Then
  Begin
    ShowMessage('Seleccione la Fecha del Comprobante');
    dbdtpFInicio.SetFocus;
    exit;
  End;
  xFComp:=DateTimeToStr(dtpFecha.Date);
  If Length(dbdtpFInicio.Text)=0 Then
  Begin
    ShowMessage('Seleccione la Fecha de Inicio');
    dbdtpFInicio.SetFocus;
    exit;
  End;

  If Length(dbdtpFFin.Text)=0 Then
  Begin
    ShowMessage('Seleccione la Fecha de Fin');
    dbdtpFFin.SetFocus;
    exit;
  End;
  If dbdtpFInicio.Date>dbdtpFFin.Date Then
  Begin
    ShowMessage('La Fecha de Inicio debe ser Mayor que la Fecha de Fin');
    dbdtpFInicio.SetFocus;
    exit;
  End;

   If MessageDlg('Generar BackUp del Mes Anterior ¿Esta Seguro?',mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      Exit;

   //***********************************************************************
   //    Inicia Proceso de BackUp
   //***********************************************************************

   Screen.Cursor:=crSQLWait;
   pgAvance.Max:=3;
   pgAvance.Position:=pgAvance.Position+1;

   // Calcula Mes Anterior
   if StrToInt(spemes.Text)<=1 then
   begin
      xAnoAnt:=IntToStr( StrToInt(speano.Text)-1 );
      xMesAnt:='12';
   end
   else
   begin
      xAnoAnt:=speano.Text;
      xMesAnt:=DM1.StrZero( IntToStr( StrToInt(speMes.Text)-1 ), 2 ) ;
   end;
   // Fin Mes Anterior

   xFecIniAnt:=StrToDate('01/'+xMesAnt+'/'+xAnoAnt );
   xFecFinAnt:=UltimoDiaMes( xAnoAnt, xMesAnt );

   pgAvance.Position:=pgAvance.Position+1;

   try

      // Haciendo Backup del Mes Pasado
      xSQL:='INSERT INTO DB2ADMIN.APO301_DESCARGO_HIS '
           +'SELECT * FROM DB2ADMIN.APO301_DESCARGO '
           +'WHERE FREG>='''+DateToStr( xFecIniAnt )+''' '
           +  'and FREG<='''+DateToStr( xFecFinAnt )+'''';
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      ShowMessage('Error al Generar Backup del '+xAnoAnt+xMesAnt);
      Screen.Cursor:=crDefault;
      pgAvance.Max:=0;
      Exit;
   end;

   pgAvance.Position:=pgAvance.Position+1;

   // xSQL:='SELECT COUNT(*) FROM APO301_DESCARGO_'+xAnoAnt+xMesAnt;

   // Copiando información de Aportes e inicializando la tabla
   // Tambien borra si las estructuras de las tablas son diferentes

   //xSQL:='SELECT * FROM APO301_DESCARGO';

   //xSQL:='DROP TABLE APO301_DESCARGO';
   // Se cambia por DROP el Delete por Sugerencia de Julio Geldres

  Screen.Cursor:=crDefault;
  ShowMessage('BackUp Ok');
  pgAvance.Max:=0;
end;

procedure TFContabilizacionF.BitBtn2Click(Sender: TObject);
var
  xFComp, xAnoAnt, xMesAnt, xSQL : String;
  xFecIniAnt, xFecFinAnt : TDate;
begin
  If Length(dtpFecha.Text)=0 Then
  Begin
    ShowMessage('Seleccione la Fecha del Comprobante');
    dbdtpFInicio.SetFocus;
    exit;
  End;
  xFComp:=DateTimeToStr(dtpFecha.Date);
  If Length(dbdtpFInicio.Text)=0 Then
  Begin
    ShowMessage('Seleccione la Fecha de Inicio');
    dbdtpFInicio.SetFocus;
    exit;
  End;

  If Length(dbdtpFFin.Text)=0 Then
  Begin
    ShowMessage('Seleccione la Fecha de Fin');
    dbdtpFFin.SetFocus;
    exit;
  End;
  If dbdtpFInicio.Date>dbdtpFFin.Date Then
  Begin
    ShowMessage('La Fecha de Inicio debe ser Mayor que la Fecha de Fin');
    dbdtpFInicio.SetFocus;
    exit;
  End;

  if not VerificaPeriodo then
  begin
     Exit;
  end;

   If MessageDlg('Inicializar Archivos de Trabajo ¿Esta Seguro?',mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      Exit;

   //***********************************************************************
   //    Inicia Proceso de BackUp
   //***********************************************************************

   Screen.Cursor:=crSQLWait;
   pgAvance.Max:=4;
   pgAvance.Position:=pgAvance.Position+1;
   xSQL:='TRUNCATE TABLE DB2ADMIN.APO301_DESCARGO';
   try
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
   end;
   pgAvance.Position:=pgAvance.Position+1;

   xSQL:='INSERT INTO DB2ADMIN.APO301_DESCARGO '
        +'SELECT * FROM APO301'+xLink+' '
        +'WHERE FREG>='''+DateToStr(dbdtpFInicio.Date)+''' '
        +  'and FREG<='''+DateToStr(dbdtpFFin.Date   )+''' '
        +  'and NOT RCOBID IS NULL';
   try
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      ShowMessage('Error al Generar Tabla de Trabajo 1');
      Screen.Cursor:=crDefault;
      pgAvance.Max:=0;
      Exit;
   end;
   pgAvance.Position:=pgAvance.Position+1;

   xSQL:='SELECT COUNT(*) FROM DB2ADMIN.APO301_DESCARGO';
   //-- Copiando información de Aportes de Otros tipos
   xSQL:='SELECT * FROM DB2ADMIN.APO301_OTROS';

   xSQL:='TRUNCATE TABLE DB2ADMIN.APO301_OTROS';
   try
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      ShowMessage('Error Inicializar Tabla de Trabajo 2');
      Screen.Cursor:=crDefault;
      pgAvance.Max:=0;
      Exit;
   end;
   pgAvance.Position:=pgAvance.Position+1;

   xSQL:='INSERT INTO DB2ADMIN.APO301_OTROS '
        +'SELECT * FROM APO301'+xLink+' '
        +'WHERE FREG>='''+DateToStr(dbdtpFInicio.Date)+''' '
        +  'and FREG<='''+DateToStr(dbdtpFFin.Date   )+''' '
        +  'AND FORPAGOID IN (''02'',''03'') ';
   try
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      ShowMessage('Error al Generar Tabla de Trabajo 2');
      Screen.Cursor:=crDefault;
      pgAvance.Max:=0;
      Exit;
   end;
   pgAvance.Position:=pgAvance.Position+1;
//Inicio APO_202501_DAF
   // xSQL:='DROP TABLE DB2ADMIN.APORTES'+speAno.Text+DM1.StrZero( speMes.Text,2 );
      xSQL:='TRUNCATE TABLE DB2ADMIN.APORTES_CNT ';
//Final APO_202501_DAF
   try
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
   end;
//Inicio APO_202501_DAF
        xSQL:='INSERT INTO DB2ADMIN.APORTES_CNT '
 //     xSQL:='CREATE TABLE DB2ADMIN.APORTES'+speAno.Text+DM1.StrZero( speMes.Text,2 )+' AS '
//Final APO_202501_DAF
        +'SELECT * FROM DB2ADMIN.APO301_DESCARGO '
        +'WHERE FREG>='''+DateToStr(dbdtpFInicio.Date)+''' '
        +  'and FREG<='''+DateToStr(dbdtpFFin.Date   )+''' '
        +'UNION ALL '
        +'SELECT * FROM DB2ADMIN.APO301_OTROS '
        +'WHERE FREG>='''+DateToStr(dbdtpFInicio.Date)+''' '
        +  'and FREG<='''+DateToStr(dbdtpFFin.Date   )+'''';
   try
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      ShowMessage('Error al Generar Tabla de Trabajo 3');
      Screen.Cursor:=crDefault;
      pgAvance.Max:=0;
      Exit;
   end;

   Screen.Cursor:=crDefault;
   ShowMessage( 'Inicialización OK' );
   pgAvance.Max:=0;
end;

procedure TFContabilizacionF.BitBtn3Click(Sender: TObject);
var
   xSQL : String;
begin
  Screen.Cursor:=crSQLWait;

  xSQL:='SELECT ''APO301_DESCARGO'' TABLA, A.ASOID, A.ASOAPENOM, A.USEID, A.UPAGOID, A.UPROID, '
       +   'B.USEID USE_2, B.UPAGOID UPAGO_2, B.UPROID UPAGO_2, TRANSMTO, TRANSFOPE '
       +'FROM DB2ADMIN.APO301_DESCARGO A, APO101'+xLink+'  B '
       +'WHERE A.USEID = B.USEID(+) AND A.UPAGOID = B.UPAGOID(+) AND A.UPROID = B.UPROID(+) '
       +  'AND B.USEID IS NULL';

  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSQL);
  DM1.cdsQry.Open;

  Screen.Cursor:=crDefault;

  If DM1.cdsQry.RecordCount>0 Then
  Begin
    FContaIncons:=TFContaIncons.Create(Self);
    FContaIncons.Caption:='Verifica Inconsistencias de Aportes';
    FContaIncons.ShowModal;
    FContaIncons.Free;
    Exit;
  End;

  xSQL:='SELECT ''APO301_OTROS'' TABLA, A.ASOID, A.ASOAPENOM, A.USEID, A.UPAGOID, A.UPROID, '
       +   'B.USEID USE_2, B.UPAGOID UPAGO_2, B.UPROID UPAGO_2, TRANSMTO, TRANSFOPE '
       +'FROM DB2ADMIN.APO301_OTROS A, APO101'+xLink+' B '
       +'WHERE A.USEID = B.USEID(+) AND A.UPAGOID = B.UPAGOID(+) AND A.UPROID = B.UPROID(+) '
       +  'AND B.USEID IS NULL';

  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSQL);
  DM1.cdsQry.Open;
  Screen.Cursor:=crDefault;
  If DM1.cdsQry.RecordCount>0 Then
  Begin
    FContaIncons:=TFContaIncons.Create(Self);
    FContaIncons.Caption:='Verifica Inconsistencias de Aportes';
    FContaIncons.ShowModal;
    FContaIncons.Free;
    Exit;
  End;
  ShowMessage( 'No Existen Inconsistencias' );
end;

procedure TFContabilizacionF.BitBtn4Click(Sender: TObject);
begin
   if not VerificaPeriodo then
   begin
      Exit;
   end;

   If MessageDlg('Contabilizar...  ¿Esta Seguro?',mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      Exit;

   Screen.Cursor:=crSQLWait;

   //-- BORRAR ESTAS DOS TABLAS
   xSQL:='TRUNCATE TABLE DB2ADMIN.CNT300_OTROS';
   try
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      ShowMessage('Error al Inicializar Tabla Contable 1');
      Screen.Cursor:=crDefault;
      pgAvance.Max:=0;
      Exit;
   end;

   xSQL:='TRUNCATE TABLE DB2ADMIN.CNT311_OTROS';
   try
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      ShowMessage('Error al Inicializar Tabla Contable 2');
      Screen.Cursor:=crDefault;
      pgAvance.Max:=0;
      Exit;
   end;

   //-- EJECUTAR EL PROCEDIMIENTO ALMACENADO
   //-- CON EL MES QUE SE ESTA PROCESANDO

   xSQL:='BEGIN PCK_APORTES_CNT.SP_CONTABILIZA( '''+speano.Text+spemes.Text+'''); END;';

   try
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      ShowMessage('Error al Ejecutar Contablización');
      Screen.Cursor:=crDefault;
      pgAvance.Max:=0;
      Exit;
   end;

   // vhndema Actualiza el Centro de Costo de las Comisiones
   xSQL:='Update DB2ADMIN.CNT311_OTROS SET CCOSID=''0600'' '
        +'Where CUENTAID=''93909'' AND CCOSID IS NULL';
   try
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      Screen.Cursor:=crDefault;
   end;
   // end vhndema

   Screen.Cursor:=crDefault;
   ShowMessage( 'Contabilización OK' );
   pgAvance.Max:=0;
end;

procedure TFContabilizacionF.BitBtn5Click(Sender: TObject);
begin
   //-- SE GENERAN DOS TABLAS
   //-- ESTAS SON LAS DOS TABLAS QUE SE TRANSFIEREN A CONTABILIDAD
   //CNT300_OTROS
   //CNT311_OTROS
   //ESTAS DOS TABLAS DEBEN SER PASADAS AL CNT300 Y CNT311 RESPECTIVAMENTE
   //EN LA BASE DE DATOS PROD
   //NOTA : VERIFICAR EL CORRELATIVO DE NUMERO DE DOCUMENTO QUE NO SE REPITA.

   xSQL:='SELECT ''CABECERA DE COMPROBANTE'' TITULO, TDIARID ORIGEN, SUM(NVL(CNTDEBEMN,0)) DEBE, SUM(NVL(CNTHABEMN,0)) HABER '
        +'FROM CNT300_OTROS '
        +'WHERE CIAID=''02'' AND CNTANOMM = '''+speano.Text+dm1.StrZero( spemes.Text,2)+''' '
        +'GROUP BY TDIARID';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;

   If DM1.cdsQry.RecordCount>0 Then
   Begin
       ppdb3.DataSource :=nil;
       ppr3.DataPipeline:=nil;
       //ppr3.Template.FileName:='ApoVerifica.rtm';
       //ppr3.Template.LoadFromFile;
       ppdb3.DataSource :=DM1.dsQry;
       ppr3.DataPipeline:=ppdb3;
       //ppd3.ShowModal;
       ppR3.Print;
       ppdb3.DataSource :=nil;
       ppr3.DataPipeline:=nil;
   End;

   xSQL:='SELECT ''DETALLE DE COMPROBANTE'' TITULO, TDIARID ORIGEN, SUM(NVL(CNTDEBEMN,0)) DEBE, SUM(NVL(CNTHABEMN,0)) HABER '
        +'FROM CNT311_OTROS '
        +'WHERE CIAID=''02'' AND CNTANOMM = '''+speano.Text+dm1.StrZero( spemes.Text,2)+''' '
        +'GROUP BY TDIARID';

   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;

   If DM1.cdsQry.RecordCount>0 Then
   Begin
       ppdb3.DataSource :=nil;
       ppr3.DataPipeline:=nil;
       //ppr3.Template.FileName:='ApoVerifica.rtm';
       //ppr3.Template.LoadFromFile;
       ppdb3.DataSource :=DM1.dsQry;
       ppr3.DataPipeline:=ppdb3;
       //ppd3.ShowModal;
       ppR3.Print;
       ppdb3.DataSource :=nil;
       ppr3.DataPipeline:=nil;
   End;
end;

procedure TFContabilizacionF.BitBtn6Click(Sender: TObject);
begin
   If MessageDlg('Transferir Contabilidad...  ¿Esta Seguro?',mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      Exit;

   Screen.Cursor:=crSQLWait;

   pgAvance.Max:=7;

   pgAvance.Position:=pgAvance.Position+1;

   if not VerificaPeriodo then
   begin
      Exit;
   end;

   pgAvance.Position:=pgAvance.Position+1;

   xSQL:='SELECT CIAID, TDIARID, CNTCOMPROB, '
        +  'SUM(CNTDEBEMN) DEBE, SUM(CNTHABEMN) HABER '
        +'FROM CNT300_OTROS'+cLink+' A '
        +'WHERE CIAID=''02'' AND CNTANOMM = '''+speano.Text+dm1.StrZero( spemes.Text,2)+''' '
//Inicio APO_202501_DAF
        +  'AND TDIARID IN ( ''28'',''33'',''50'' ) AND CNTLOTE IN (''DAPO'',''APO'',''RCAF'') '
//Final APO_202501_DAF
        +'GROUP BY CIAID, TDIARID, CNTCOMPROB';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;

  If DM1.cdsQry.RecordCount<=0 Then
  Begin
     ShowMessage( 'Error : No existe Información para Transferir' );
      Screen.Cursor:=crDefault;
      pgAvance.Max:=0;
      Exit;
  END;

  if DM1.FRound(Dm1.cdsQry.FieldByName('DEBE').AsFloat,15,2)<>DM1.FRound(DM1.cdsQry.FieldByName('HABER').AsFloat,15,2) THEN
  begin
      ShowMessage( 'Error : Información Contable NO CUADRA' );
      Screen.Cursor:=crDefault;
      pgAvance.Max:=0;
      Exit;
  end;

   // Verifica que Numero de Comprobante No Exista en CNT300 y CNT301

   pgAvance.Position:=pgAvance.Position+1;

    XSQL:='INSERT INTO CNT300(CIAID, TDIARID, CNTCOMPROB, CNTANOMM, CNTLOTE, CNTGLOSA, CNTTCAMBIO, CNTFCOMP, CNTESTADO, CNTCUADRE, CNTFAUTOM,'
       + '                 CNTUSER, CNTFREG, CNTHREG, CNTANO, CNTMM, CNTDD, CNTTRI, CNTSEM, CNTSS, CNTAATRI, CNTAASEM, CNTAASS, TMONID, FLAGVAR,'
       + '                 FCONS, CNTFMEC, TDIARDES, CNTDEBEMN, CNTDEBEME, CNTHABEMN, CNTHABEME, CNTSALDMN, CNTSALDME, CNTTS, DOCMOD, MODULO, FLG_AJUS_X_TCAM) '
       + '        SELECT CIAID, TDIARID, CNTCOMPROB, CNTANOMM, CNTLOTE, CNTGLOSA, CNTTCAMBIO, CNTFCOMP, CNTESTADO, CNTCUADRE, CNTFAUTOM,'
       + '               CNTUSER, CNTFREG, CNTHREG, CNTANO, CNTMM, CNTDD, CNTTRI, CNTSEM, CNTSS, CNTAATRI, CNTAASEM, CNTAASS, TMONID, FLAGVAR,'
       + '               FCONS, CNTFMEC, TDIARDES, CNTDEBEMN, CNTDEBEME, CNTHABEMN, CNTHABEME, CNTSALDMN, CNTSALDME, CNTTS, DOCMOD, MODULO, FLG_AJUS_X_TCAM FROM CNT300_OTROS ';
   try
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      ShowMessage('Error al Transferir a la Contabilidad (Cabecera)');
      Screen.Cursor:=crDefault;
      pgAvance.Max:=0;
      Exit;
   end;

   pgAvance.Position:=pgAvance.Position+1;

     XSQL:='INSERT INTO CNT311(CIAID, TDIARID, CNTCOMPROB, CNTANO, CNTANOMM, CNTLOTE, CUENTAID, CLAUXID, AUXID, DOCID, CNTSERIE, CNTNODOC,'
          +'                  CNTGLOSA, CNTDH, CCOSID, CNTTCAMBIO, CNTMTOORI, CNTMTOLOC, CNTMTOEXT, CNTFEMIS, CNTFVCMTO, CNTFCOMP, CNTESTADO,'
          +'                  CNTCUADRE, CNTFAUTOM, CNTUSER, CNTFREG, CNTHREG, CNTMM, CNTDD, CNTTRI, CNTSEM, CNTSS, CNTAATRI, CNTAASEM, CNTAASS,'
          +'                  TMONID, FLAGVAR, FCONS, CNTFMEC, TDIARDES, CTADES, AUXDES, DOCDES, CCOSDES, CNTDEBEMN, CNTDEBEME, CNTHABEMN, CNTHABEME,'
          +'                  CNTSALDMN, CNTSALDME, CAMPOVAR, CNTTS, CNTPAGADO, CNTMODDOC, CNTREG, MODULO, CTA_SECU) '
          +'           SELECT CIAID, TDIARID, CNTCOMPROB, CNTANO, CNTANOMM, CNTLOTE, CUENTAID, CLAUXID, AUXID, DOCID, CNTSERIE, CNTNODOC,'
          +'                  CNTGLOSA, CNTDH, CCOSID, CNTTCAMBIO, CNTMTOORI, CNTMTOLOC, CNTMTOEXT, CNTFEMIS, CNTFVCMTO, CNTFCOMP, CNTESTADO,'
          +'                  CNTCUADRE, CNTFAUTOM, CNTUSER, CNTFREG, CNTHREG, CNTMM, CNTDD, CNTTRI, CNTSEM, CNTSS, CNTAATRI, CNTAASEM, CNTAASS,'
          +'                  TMONID, FLAGVAR, FCONS, CNTFMEC, TDIARDES, CTADES, AUXDES, DOCDES, CCOSDES, CNTDEBEMN, CNTDEBEME, CNTHABEMN, CNTHABEME,'
          +'                  CNTSALDMN, CNTSALDME, CAMPOVAR, CNTTS, CNTPAGADO, CNTMODDOC, CNTREG, MODULO, CTA_SECU '
          +'    FROM CNT311_OTROS ';
   try
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      ShowMessage('Error al Transferir a la Contabilidad (Detalle)');
      Screen.Cursor:=crDefault;
      pgAvance.Max:=0;
      Exit;
   end;

   pgAvance.Position:=pgAvance.Position+1;

   // agregar esta rutina para agregar flags contables
   xSQL:='update APO301 SET TIPOCONT=''APO'', CNTFLAG=''S'', '
        +   'CNTANOMM='''+speano.Text+dm1.StrZero(spemes.Text,2)+''' '
        +'WHERE FREG>='''+DateToStr(dbdtpFInicio.Date)          +''' '
        +  'and FREG<='''+DateToStr(dbdtpFFin.Date   )          +''' '
        +  'and NOT RCOBID IS NULL';
   try
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      ShowMessage('Error al ACTUALIZAR 1');
      Screen.Cursor:=crDefault;
      pgAvance.Max:=0;
      Exit;
   end;

   pgAvance.Position:=pgAvance.Position+1;

   xSQL:='update APO301 SET TIPOCONT=''APO'', CNTFLAG=''S'', '
        +   'CNTANOMM='''+speano.Text+dm1.StrZero( spemes.Text,2)+''' '
        +'WHERE FREG>='''+DateToStr(dbdtpFInicio.Date)+''' '
        +  'and FREG<='''+DateToStr(dbdtpFFin.Date   )+''' '
        +  'and FORPAGOID IN (''02'',''03'',''25'')';
   try
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   except
      ShowMessage('Error al ACTUALIZAR 2');
      Screen.Cursor:=crDefault;
      pgAvance.Max:=0;
      Exit;
   end;

   pgAvance.Position:=pgAvance.Position+1;

   Screen.Cursor:=crDefault;
   ShowMessage( 'Transferencia Ok.' );
   pgAvance.Max:=0;
end;



procedure TFContabilizacionF.BitBtn8Click(Sender: TObject);
begin
   Close;
end;

procedure TFContabilizacionF.BitBtn9Click(Sender: TObject);
var
   xSQL, xMesDes : String;
   XTOTAL : DOUBLE;
begin
   Screen.Cursor:=crSQLWait;

//   Se genera en el esquema APORTES_CNT y se deben juntar las dos siguientes tablas
//APORTES301_DESCARGO
//APORTES301_OTROS
  xSQL:='Select * from db2admin.TGE181'+xLink+' Where MESID='''+IntToStr(StrToInt(speMes.Text))+'''';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSQL);
  try
     DM1.cdsQry.Open;
  except
     ShowMessage( 'Error : Sin privilegios a la tabla db2admin.TGE181 ');
     Screen.Cursor:=crDefault;
     Exit;
  end;

  xMesDes:=DM1.cdsQry.FieldByName('MESDESL').AsString;

//Inicio HPC_201601_APO --SE IMPLEMENTA 3 COLUMNAS EN EL REPORTE (PLA,BAN,EFE)
 {xSQL:='SELECT '''+xMesDes+' DEL '+speAno.Text+''' PERIODO, '
       +  'C.DPTOID, C.DPTODES, A.USEID, B.USENOM,  COUNT(*) CANTIDAD, '
       +  'SUM(NVL(TRANSMTO,0)) TOTAL '
//Inicio APO_202501_DAF
       +'FROM DB2ADMIN.APORTES'+speAno.Text+DM1.StrZero( speMes.Text,2 )+' A, APO101 B, APO158 C '
//Final APO_202501_DAF
       +'WHERE A.USEID = B.USEID(+) AND A.UPAGOID = B.UPAGOID(+) AND A.UPROID = B.UPROID(+) '
       +  'AND B.DPTOID = C.DPTOID(+) '
       +'GROUP BY C.DPTOID, C.DPTODES, A.USEID, B.USENOM '
       +'ORDER BY C.DPTODES, B.USENOM ';}
//Inicio APO_202501_DAF
//OLD
  xSQL:=' WITH APOTIPPAG AS '
  +'(SELECT DPTOID,UPROID,USEID, '
  +' SUM(CASE WHEN FORPAGO=''PLA'' THEN NVL(APORTE,0) END) PLA,'
  +' SUM(CASE WHEN FORPAGO=''EFE'' THEN NVL(APORTE,0) END) EFE,'
  +' SUM(CASE WHEN FORPAGO=''BAN'' THEN NVL(APORTE,0) END) BAN '
  +'FROM '
  +'(SELECT DPTOID,UPROID,USEID, '
  +' CASE WHEN FORPAGOABR IN (''REG'',''CEF'',''PLA'') THEN ''PLA'' ELSE FORPAGOABR END FORPAGO ,'
  +' SUM(NVL(TRANSMTO,0))APORTE '
  +'FROM APO301'+xLink+'  '
  +'WHERE FREG>='''+dbdtpFInicio.Text+''' and FREG<='''+dbdtpFFin.Text+''' AND ( FORPAGOID IN (''02'',''03'') OR RCOBID IS NOT NULL) '
  +'GROUP BY DPTOID,UPROID,USEID,FORPAGOABR '
  +'ORDER BY DPTOID,UPROID,USEID)'
  +'GROUP BY DPTOID,UPROID,USEID '
  +'ORDER BY DPTOID,UPROID,USEID) '
  +'SELECT D.PERIODO,D.DPTOID,D.DPTODES,D.UPROID,D.USEID,D.USENOM,D.CANTIDAD,NVL(E.PLA,0) PLA,NVL(E.EFE,0) EFE,NVL(E.BAN,0) BAN,NVL(D.TOTAL,0) TOTAL '
  +'FROM '
  +'(SELECT '''+xMesDes+' DEL '+speAno.Text+''' PERIODO, '
  +       'A.DPTOID, C.DPTODES,A.UPROID,'
  +       'A.USEID, B.USENOM,COUNT(*) CANTIDAD,'
  +       'SUM(NVL(TRANSMTO,0)) TOTAL '
  +'FROM   DB2ADMIN.APORTES'+speAno.Text+DM1.StrZero(speMes.Text,2)+' A, APO101'+xLink+' B, APO158'+xLink+' C '
  +'WHERE  A.USEID   = B.USEID(+)  '
  +'  AND  A.UPAGOID = B.UPAGOID(+)'
  +'  AND  A.UPROID  = B.UPROID(+) '
  +'  AND  B.DPTOID  = C.DPTOID(+) '
  +'GROUP BY A.DPTOID, C.DPTODES, A.UPROID,A.USEID, B.USENOM '
  +'ORDER BY C.DPTODES,A.UPROID, B.USENOM )D,'
  +'APOTIPPAG E '
  +'WHERE D.DPTOID=E.DPTOID AND D.UPROID=E.UPROID AND D.USEID=E.USEID ';

//NUEVO
  XSQL:='SELECT D.PERIODO,D.DPTOID,D.DPTODES,D.UPROID,D.USEID,D.USENOM,D.CANTIDAD,NVL(E.PLA,0) PLA,NVL(E.EFE,0) EFE,NVL(E.BAN,0) BAN, NVL(E.PLA,0)+NVL(E.EFE,0)+ NVL(E.BAN,0) TOTAL '      //NVL(D.TOTAL,0) TOTAL '
  +'FROM '
  +'(SELECT '''+xMesDes+' DEL '+speAno.Text+''' PERIODO, '
  +       'A.DPTOID, C.DPTODES,A.UPROID,'
  +       'A.USEID, B.USENOM,COUNT(*) CANTIDAD,'
  +       'SUM(NVL(TRANSMTO,0)) TOTAL '
  +'FROM   DB2ADMIN.APORTES_CNT A, APO101'+xLink+' B, APO158'+xLink+' C '
//Final APO_202501_DAF
  +'WHERE  A.USEID   = B.USEID(+)  '
  +'  AND  A.UPAGOID = B.UPAGOID(+)'
  +'  AND  A.UPROID  = B.UPROID(+) '
  +'  AND  B.DPTOID  = C.DPTOID(+) '
  +'GROUP BY A.DPTOID, C.DPTODES, A.UPROID,A.USEID, B.USENOM '
  +'ORDER BY C.DPTODES,A.UPROID, B.USENOM )D,'
  +'(SELECT DPTOID,UPROID,USEID, '
  +' SUM(CASE WHEN FORPAGO=''PLA'' THEN NVL(APORTE,0) END) PLA,'
  +' SUM(CASE WHEN FORPAGO=''EFE'' THEN NVL(APORTE,0) END) EFE,'
  +' SUM(CASE WHEN FORPAGO=''BAN'' THEN NVL(APORTE,0) END) BAN '
  +'FROM '
  +'(SELECT DPTOID,UPROID,USEID, '
  +' CASE WHEN FORPAGOABR IN (''REG'',''CEF'',''PLA'') THEN ''PLA'' ELSE FORPAGOABR END FORPAGO ,'
  +' SUM(NVL(TRANSMTO,0))APORTE '
//Inicio APO_202501_DAF
  +'FROM DB2ADMIN.APO301'+xLink+'  '
  +'WHERE FREG>='''+dbdtpFInicio.Text+''' and FREG<='''+dbdtpFFin.Text+''' AND ( FORPAGOID IN (''02'',''03'') OR RCOBID IS NOT NULL) '
//Final APO_202501_DAF
  +'GROUP BY DPTOID,UPROID,USEID,FORPAGOABR '
  +'ORDER BY DPTOID,UPROID,USEID)'
  +'GROUP BY DPTOID,UPROID,USEID '
  +'ORDER BY DPTOID,UPROID,USEID) E '
  +'WHERE D.DPTOID=E.DPTOID AND D.UPROID=E.UPROID AND D.USEID=E.USEID ';
//Final HPC_201601_APO
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSQL);
  DM1.cdsQry.Open;

  WHILE NOT  DM1.cdsQry.EOF DO
  BEGIN
   XTOTAL:=XTOTAL + DM1.cdsQry.fIELDBYNAME('TOTAL').ASFLOAT;
   DM1.cdsQry.Next;
  END;
   LBLTOTAL.Caption := formatfloat('###,###,###.00',XTOTAL);
  DM1.cdsQry.First;

{  try
     DM1.cdsQry.Open;
  except
     ShowMessage( 'Error : Todavia no se Inicializa Proceso...');
     Screen.Cursor:=crDefault;
     Exit;
  end;  }

  Screen.Cursor:=crDefault;
  If DM1.cdsQry.RecordCount>0 Then
  Begin
   ppdb1.DataSource :=nil;
   ppr1.DataPipeline:=nil;
//  ppr1.Template.FileName:='ApoContable.rtm';
//  ppr1.Template.LoadFromFile;
   ppdb1.DataSource :=DM1.dsQry;
   ppr1.DataPipeline:=ppdb1;
   //ppd1.ShowModal;
   ppr1.Print;
   ppdb1.DataSource :=nil;
   ppr1.DataPipeline:=nil;
  end
  else
  begin
     Screen.Cursor:=crDefault;
     ShowMessage( 'Error : No Existe información para este periodo...')
  end;
end;


function TFContabilizacionF.VerificaPeriodo : Boolean;
begin
   Result :=False;

   xSQL:=' SELECT ANO,PER'+speMes.Text+
        ' FROM db2admin.TGE154 '+
        ' WHERE ANO='+QuotedStr(speAno.Text);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   If DM1.cdsQry.FieldByName( 'PER'+speMes.Text ).AsString='S' Then
   Begin
     ShowMessage('El Periodo de Contabilización ya se encuentra cerrado');
     dtpFecha.SetFocus;
     Screen.Cursor:=crDefault;
     pgAvance.Max:=0;
     exit;
   End;
   DM1.cdsQry.Close;

   xSQL:='Select * from db2admin.CNT300 '
        +'WHERE CIAID=''02'' AND CNTANOMM='''+speAno.Text+DM1.StrZero( speMes.Text,2 )+''' '
        +  'AND TDIARID=''28'' AND CNTLOTE=''APO''';

   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;

   If DM1.cdsQry.RecordCount>0 Then
   Begin
      ShowMessage('Error : Asientos de Aportes ya fueron Transferidos a Contabilidad');
      Screen.Cursor:=crDefault;
      pgAvance.Max:=0;
      Exit;
   End;

   Result :=True;

end;

//Inicio HPC_201601_APO --SE ADICIONA UN BOTON PARA EXPORTAR A EXCEL
procedure TFContabilizacionF.BitBtn10Click(Sender: TObject);
var xsql,xMesDes: String;
begin

  Screen.Cursor:=crSQLWait;
  xSQL:='Select MESID, MESDESC, MESDESL, MESIDR, MESIDI from db2admin.TGE181 Where MESID='''+IntToStr(StrToInt(speMes.Text))+'''';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSQL);
  DM1.cdsQry.Open;
  xMesDes:=DM1.cdsQry.FieldByName('MESDESL').AsString;

  xsql:='SELECT ASOID FROM db2admin.APO301 '
       +'WHERE FREG>='''+dbdtpFInicio.Text+''' and FREG<='''+dbdtpFFin.Text+''' AND (FORPAGOID IN (''02'',''03'') OR RCOBID IS NOT NULL)';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSQL);
  DM1.cdsQry.Open;

  If  DM1.cdsQry.RecordCount=0 Then
  Begin
   ShowMessage('No existe información para exportar a Excel');
   exit;
  End;

xSQL:=' WITH APOTIPPAG AS '
  +'(SELECT DPTOID,UPROID,USEID, '
  +' SUM(CASE WHEN FORPAGO=''PLA'' THEN NVL(APORTE,0) END) PLA,'
  +' SUM(CASE WHEN FORPAGO=''EFE'' THEN NVL(APORTE,0) END) EFE,'
  +' SUM(CASE WHEN FORPAGO=''BAN'' THEN NVL(APORTE,0) END) BAN '
  +'FROM '
  +'(SELECT DPTOID,UPROID,USEID, '
  +' CASE WHEN FORPAGOABR IN (''REG'',''CEF'',''PLA'') THEN ''PLA'' ELSE FORPAGOABR END FORPAGO ,'
  +' SUM(NVL(TRANSMTO,0))APORTE '
  +'FROM db2admin.APO301 '
  +'WHERE FREG>='''+dbdtpFInicio.Text+''' and FREG<='''+dbdtpFFin.Text+''' AND ( FORPAGOID IN (''02'',''03'') OR RCOBID IS NOT NULL) '
  +'GROUP BY DPTOID,UPROID,USEID,FORPAGOABR '
  +'ORDER BY DPTOID,UPROID,USEID)'
  +'GROUP BY DPTOID,UPROID,USEID '
  +'ORDER BY DPTOID,UPROID,USEID) '

  +'SELECT D.PERIODO,D.DPTOID,D.DPTODES,D.UPROID,D.USEID,D.USENOM,D.CANTIDAD,E.PLA,E.EFE,E.BAN,D.TOTAL '
  +'FROM '
  +'(SELECT '''+xMesDes+' DEL '+speAno.Text+''' PERIODO, '
  +       'A.DPTOID, C.DPTODES,A.UPROID,'
  +       'A.USEID, B.USENOM,COUNT(*) CANTIDAD,'
  +       'SUM(NVL(TRANSMTO,0)) TOTAL '
//Inicio APO_202501_DAF
//+'FROM   DB2ADMIN.APORTES'+speAno.Text+DM1.StrZero( speMes.Text,2 )+' A, APO101 B, APO158 C '
  +'FROM   DB2ADMIN.APORTES_CNT A, APO101 B, APO158 C '
//Final APO_202501_DAF
  +'WHERE  A.USEID   = B.USEID(+)  '
  +'  AND  A.UPAGOID = B.UPAGOID(+)'
  +'  AND  A.UPROID  = B.UPROID(+) '
  +'  AND  B.DPTOID  = C.DPTOID(+) '
  +'GROUP BY A.DPTOID, C.DPTODES, A.UPROID,A.USEID, B.USENOM '
  +'ORDER BY C.DPTODES,A.UPROID, B.USENOM )D,'
  +'APOTIPPAG E '
  +'WHERE D.DPTOID=E.DPTOID AND D.UPROID=E.UPROID AND D.USEID=E.USEID ';

    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSQL);

  Try
    DM1.cdsQry.Open;
    If  DM1.cdsQry.RecordCount=0 Then
    Begin
      ShowMessage('No existe información para exportar a Excel');
      Screen.Cursor:=crDefault;
      exit;
    End;

    DM1.HojaExcel('Reporte Sustento - Aportes', dm1.dsQry, DTGDATA);
  Except
      On Ex: Exception Do
         Application.MessageBox(PChar(Ex.Message +'- Inicialice Primero '), 'ERROR', 16);
  End;
  Screen.Cursor:=crDefault;
end;
//Final HPC_201601_APO


procedure TFContabilizacionF.BitBtn7Click(Sender: TObject);
begin
//Inicio APO_202501_DAF
   xSQL:='SELECT TDIARID ORIGEN, CNTCOMPROB COMPROBANTE, CUENTAID CUENTA, '
        +   'SUM( CNTDEBEMN ) DEBE, SUM( CNTHABEMN ) HABER '
        +'FROM CNT311 A '
        +'WHERE CIAID=''02'' AND CNTANOMM = '''+speano.Text+dm1.StrZero( spemes.Text,2)+''' '
        +  'AND TDIARID IN ( ''28'',''33'',''50'' ) AND CNTLOTE IN  (''APO'',''RCAF'') '
        +'GROUP BY TDIARID, CNTCOMPROB, CUENTAID '
        +'ORDER BY TDIARID, CNTCOMPROB';
// Inicio HPC_201602_APO            : SE MODIFICA FILTRO DE REPORTE.
   xSQL:='SELECT CIAID, TDIARID, CNTCOMPROB, CUENTAID, DOCID, CNTNODOC, '
        +  'CNTDEBEMN, CNTHABEMN, AUXID, CCOSID, CNTANOMM, CNTSERIE '
        +'FROM CNT311 A '
        +'WHERE CIAID=''02'' AND CNTANOMM = '''+speano.Text+dm1.StrZero(spemes.Text,2)+''' '
        +  ' AND TDIARID IN ( ''28'',''33'',''50'' ) AND ( CNTLOTE IN  (''DAPO'',''APO'',''RCAF'') '
        +  ' OR (CNTLOTE>=''AP00'' AND CNTLOTE<=''AP99'') OR CNTLOTE = ''APB1'' OR CNTLOTE = ''APB2'' ) '
        +  ' AND  CNTFREG <> ''19/06/2025'' ' //esta fecha no se tomará poque se realizó en forma manual en contabilidad sobre un excel.
//Final APO_202501_DAF
        +'ORDER BY TDIARID, CNTCOMPROB';
// Fin HPC_201602_APO            : SE MODIFICA FILTRO DE REPORTE.
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;

  If DM1.cdsQry.RecordCount>0 Then
  Begin
   ppdb2.DataSource :=nil;
   ppr2.DataPipeline:=nil;
   //ppr2.Template.FileName:='ApoConta.rtm';
   //ppr2.Template.LoadFromFile;
   ppdb2.DataSource :=DM1.dsQry;
   ppr2.DataPipeline:=ppdb2;
   PPR2.PRINT;
   //ppd2.ShowModal;


   ppdb2.DataSource :=nil;
   ppr2.DataPipeline:=nil;
  End
  else
    ShowMessage( 'No Existe Información para este reporte' );
end;

end.
