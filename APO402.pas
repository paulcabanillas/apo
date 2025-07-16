unit APO402;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcButton, fcImgBtn, fcShapeBtn, Wwdbspin, wwdbdatetimepicker, StdCtrls,
  ComCtrls, wwriched, Mask, wwdbedit, wwdblook, ExtCtrls, Buttons,
  Wwdbigrd, Grids, Wwdbgrid,DB, Wwdbdlg;

type
  TFContabilizacion = class(TForm)
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
    procedure bbtnCancelarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure bbtnSalirClick(Sender: TObject);
    procedure spemesExit(Sender: TObject);
    procedure dtpFechaExit(Sender: TObject);
//    procedure dblcNotInList(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
     xSQL,wSQL,ySQL,xVar :String;
  end;

var
  FContabilizacion: TFContabilizacion;

implementation

USES APODM, APO404 ;

{$R *.DFM}

procedure TFContabilizacion.bbtnCancelarClick(Sender: TObject);
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

procedure TFContabilizacion.FormActivate(Sender: TObject);
var
  xFecha:String;
begin
   xFecha:=DateTimeTostr(Date);
   dbdtpFInicio.Date:=Date;
   dbdtpFFin.Date:=Date;
   speano.Text:=Copy(xFecha,7,4);
   spemes.Text:=Copy(xFecha,4,2);
   dtpFecha.Date:=Date;
end;

procedure TFContabilizacion.bbtnSalirClick(Sender: TObject);
var
  xPeriodo,xNumero,xTDiardID,xTDiardDes,xFecha : String;
  xTHaberN,xTHaberD,xTDebeN,xTDebeE : Real;
  xCia,xFComp, xCuentaID46, xCuentaDes46 : String;
  xCuentaID48, xCuentaDes48 : String;
  xTCambio:Real;
  xDocId,xDocDes,yUSEID, oSQL, pSQL, xCNT301, xCNT300 : String;
  x:Integer;
  xFECMES,xFECDIA,xFECTRIM,xFECSEM,xFECSS,xFECAATRI,xFECAASEM,xFECAASS :String;
begin
  xCNT300:='PRUEBA1';
  xCNT301:='PRUEBA2';
{  If Length(speano.Text)=0 Then
  Begin
    ShowMessage('Registre el Año de Contabilizacion');
    speano.SetFocus;
  End;
  If Length(spemes.Text)=0 Then
  Begin
    ShowMessage('Registre el Mes de Contabilizacion');
    spemes.SetFocus;
  End;
}
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
  pgAvance.Max:=8;
  pgAvance.Position:=pgAvance.Position+1;

  xSQL:=' SELECT ANO,PER'+speMes.Text+
        ' FROM TGE154 '+
        ' WHERE ANO='+QuotedStr(speAno.Text)+' '+
        ' AND PER'+speMes.Text+'<>'+QuotedStr('S');
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
        ' AND TRANSFOPE BETWEEN '+QuotedStr(dbdtpFInicio.Text)+
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

  //******************************************************************
  // Genera Numero de Comprobante
  //******************************************************************
  xPeriodo:=speAno.Text+speMes.Text;
  wSQL:=' SELECT NVL( MAX( CNTCOMPROB ), ''0'' ) AS NUMERO '
       +' FROM CNT300 '
       +' WHERE CIAID='+QuotedStr(xCia)
       +'       AND TDIARID='+QuotedStr(xTDiardID)
       +'       AND CNTANOMM='+QuotedStr(xPeriodo);
  DM1.cdsReporte2.Close;
  DM1.cdsReporte2.DataRequest(wSQL);
  DM1.cdsReporte2.Open;
  pgAvance.Position:=pgAvance.Position+1;
  xNumero:=DM1.StrZero(IntToStr(StrToInt(DM1.cdsReporte2.FieldByname('NUMERO').AsString) +1 ),10);
  //******************************************************************
  // Fin Genera Numero de Comprobante
  //******************************************************************

  //******************************************************************
  // Selecciona Periodos
  //******************************************************************
  xSQL:=' SELECT D.FECMES,D.FECDIA,D.FECTRIM, '+
        '        D.FECSEM,D.FECSS,D.FECAATRI, '+
        '        D.FECAASEM,D.FECAASS '+
        ' FROM TGE114 D'+
        ' WHERE FECHA='+QuotedStr(xFComp);
  DM1.cdsQry2.Close;
  DM1.cdsQry2.DataRequest(xSQL);
  DM1.cdsQry2.Open;
  pgAvance.Position:=pgAvance.Position+1;
  If DM1.cdsQry2.RecordCount>0 Then
  Begin
    xFECMES:=DM1.cdsQry2.FieldByName('FECMES').AsString;
    xFECDIA:=DM1.cdsQry2.FieldByName('FECDIA').AsString;
    xFECTRIM:=DM1.cdsQry2.FieldByName('FECTRIM').AsString;
    xFECSEM:=DM1.cdsQry2.FieldByName('FECSEM').AsString;
    xFECSS:=DM1.cdsQry2.FieldByName('FECSS').AsString;
    xFECAATRI:=DM1.cdsQry2.FieldByName('FECAATRI').AsString;
    xFECAASEM:=DM1.cdsQry2.FieldByName('FECAASEM').AsString;
    xFECAASS:=DM1.cdsQry2.FieldByName('FECAASS').AsString;
    pgAvance.Position:=pgAvance.Position+1;
  End
  Else
  Begin
    ShowMessage('Los Periodos No Existen');
    Screen.Cursor:=crDefault;
    pgAvance.Max:=0;
    exit;
  End;
  DM1.cdsQry2.Close;
  //******************************************************************
  // Fin Selecciona Periodos
  //******************************************************************

  x:=0;
  //******************************************************************
  // Inicia Selecciona Centro de Costos
  //******************************************************************
  ySQL:=' SELECT A.USEID,B.CCOSID,B.CCOSABR '+
        ' FROM APO101 A,TGE203 B '+
        ' WHERE A.USEID='+QuotedStr(DM1.cdsQry.FieldByName('USEID').AsString)+' '+
        '       AND A.CCOSID=B.CCOSID ';
  DM1.cdsReporte3.Close;
  DM1.cdsReporte3.DataRequest(ySQL);
  DM1.cdsReporte3.Open;
  pgAvance.Position:=pgAvance.Position+1;

  If DM1.cdsReporte3.RecordCount<>0 Then
  Begin
    yUSEID:=DM1.cdsReporte3.FieldByName('USEID').AsString;
  End
  Else
  Begin
    ShowMessage('No Existe el Centro de Costo');
    Screen.Cursor:=crDefault;
    pgAvance.Max:=0;
    exit;
  End;
  //******************************************************************
  // Fin Selecciona Centro de Costos
  //******************************************************************

  xTHaberN:=0;
  xTHaberD:=0;
  xTDebeN:=0;
  xTDebeE:=0;

  //************************************************************************
  // Inicia Proceso de inserción en Contabilidad
  //************************************************************************
  While Not DM1.cdsQry.Eof Do
  Begin
    x:=x+1;
    If yUSEID<>DM1.cdsQry.FieldByName('USEID').AsString THen
    Begin
      ySQL:=' SELECT A.USEID,B.CCOSID,B.CCOSABR '+
            ' FROM APO101 A,TGE203 B '+
            ' WHERE A.USEID='+QuotedStr(DM1.cdsQry.FieldByName('USEID').AsString)+' '+
            '       AND A.CCOSID=B.CCOSID';
      DM1.cdsReporte3.Close;
      DM1.cdsReporte3.DataRequest(ySQL);
      DM1.cdsReporte3.Open;
      pgAvance.Position:=pgAvance.Position+1;
    End;

    //*********
    // Debe
    //*********
    oSQL:=' INSERT INTO '+xCNT301+' ('+
      ' CIAID                    ,CNTANO                   , CNTANOMM    ,'+
      //Cia                       Año de Contabilizacion    Año y Mes de Contabilizacón

      ' CNTMM                    ,CNTCOMPROB               ,'+
      // Mes de Contabilizacion  Nro Comprobante

      ' TDIARID                  ,TDIARDES                 ,'+
      // Tipo de Diario           Descripcion de tipo de Diario

      ' CUENTAID                 ,CTADES                   ,'+
      //Id de la Cuenta          Descripcion de la Cuenta

      ' DOCID                    ,DOCDES                   ,'+
      //Id del Documento         Descripcion del Documento

      ' CNTNODOC                 ,'+
      // Nro de Operacion

      ' CNTGLOSA                 ,'+
      // Glosa IDUSE-USEABR-AÑO y MES de Contabilización

      ' CNTDH                    ,CCOSID                    ,CCOSDES     ,'+
      //DEBE o HABER             ,ID del Centro de Costo    , Descripcion del Centro de Costo

      ' CNTTCAMBIO               ,'+
      // Tipo de Cambio

      ' CNTMTOORI                ,CNTMTOLOC   ,'+
      // Monto Original          Monto Local

      ' CNTMTOEXT                ,'+
      //Monto Extranjero

      ' CNTFEMIS                 ,CNTFVCMTO   ,'+
      //Fecha de Emision         Fecha de Vencimiento

      ' CNTFCOMP                ,'+
      // Fecha del Comprobante

      ' CNTESTADO               ,CNTCUADRE                    ,CNTUSER     ,'+
      //Estado del Comprobante , Flag Cuadre                  , Usuario

      ' CNTFREG                 ,CNTHREG     ,'+
      //Fecha de Registro       Hora de Registro

      ' TMONID                  ,CNTDEBEMN   ,'+
      //Tipo de Moneda          Debe Moneda Nacional

      ' CNTDEBEME  ,'+
      //Debe Moneda Extranjera

      ' CNTHABEMN               ,CNTHABEME   ,'+
      //Haber Moneda Nacional   Haber Moneda Extranjera

      ' CNTMODDOC               ,MODULO                        ,CNTREG       ,'+
      //Modulo                  Modulo                         Nro de Registro

      ' CNTDD                   ,CNTTRI      , '+
      ' CNTSEM                  ,CNTSS                         ,CNTAATRI    , '+
      ' CNTAASEM                ,CNTAASS )';

      pSQL:=' VALUES ('+QuotedStr(xCia)+', '+QuotedStr(speAno.Text)+', '+QuotedStr(xPeriodo)+','+
       //               Compañia             Año de Contabilizacion      Año y Mes de Contabilizacón

        QuotedStr(speMes.Text)+'   , '+QuotedStr(xNumero)+','+
       // Mes de Contabilizacion    Nro Comprobante

        QuotedStr(xTDiardID)+'     , '+QuotedStr(xTDiardDes)+','+
        // Tipo de Diario            Descripcion de tipo de Diario

        QuotedStr(xCuentaID46)+'   ,'+QuotedStr(xCuentaDes46)+','+
        //Id de la Cuenta           Descricion de la Cuenta

        QuotedStr(xDocID)+'        ,'+QuotedStr(xDocDes)+','+
        //Id del Documento          Descripcion del Documento

        QuotedStr(DM1.cdsQry.FieldByName('TRANSNOPE').AsString)+','+
        // Nro de Operacion

        QuotedStr(DM1.cdsQry.FieldByName('USEID').AsString+' '+DM1.cdsQry.FieldByName('USEABR').AsString+' - '+speAno.Text+speMes.Text)+','+
        // Glosa IDUSE-USEABR-AÑO y MES de Contabilización

        QuotedStr('D')+'           ,'+QuotedStr(DM1.cdsReporte3.FieldByName('CCOSID').AsString)+','+QuotedStr(DM1.cdsReporte3.FieldByName('CCOSABR').AsString)+','+
        //DEBE o HABER             ,ID del Centro de Costo                                       , Descripcion del Centro de Costo

        FloatToStr(xTCambio)+'     ,'+
        // Tipo de Cambio
      // Tipo de Cambio de la Fecha Actual

        FloatToStr(DM1.cdsQry.FieldByName('MONTO').AsFloat)+','+FloatToStr(DM1.cdsQry.FieldByName('MONTO').AsFloat)+','+
        // Monto Original                                      Monto Local

        FloatToStr(DM1.FRound(DM1.cdsQry.FieldByName('MONTO').AsFloat/xTcambio,15,2))+','+
        //Monto Extranjero

        QuotedStr(DM1.cdsQry.FieldByName('TRANSFOPE').AsString)+','+QuotedStr(DM1.cdsQry.FieldByName('TRANSFOPE').AsString)+','+
        //Fecha de Emision                                        Fecha de Vencimiento

        QuotedStr(xFComp)+','+
      // Fecha del Comprobante
        // dtpFecha

        QuotedStr('P')+'           ,'+QuotedStr('S')+'            ,'+QuotedStr(DM1.cdsUsuarios.FieldByName('USERID').AsString)+','+
        //Estado del Comprobante , Flag Cuadre                    , Usuario

        QuotedStr(xFecha)+',SYSDATE,'+
      //Fecha de Registro          Hora de Registro

        QuotedStr('N')+'         ,'+FloatToStr(DM1.cdsQry.FieldByName('MONTO').AsFloat)+','+
        //Tipo de Moneda          Debe Moneda Nacional

        FloatToStr(DM1.FRound(DM1.cdsQry.FieldByName('MONTO').AsFloat/xTCambio,15,2))+','+
        //Debe Moneda Extranjera

        '0,0,'+
        //Haber Moneda Nacional
        //  Haber Moneda Extranjera

        QuotedStr('APO')+'        ,'+QuotedStr('APO')+'          ,'+QuotedStr(IntToStr(x))+','+
        //Modulo                  Modulo                         Nro de Registro

        QuotedStr(xFECDIA)+'     ,'+QuotedStr(xFECTRIM)+'        ,'+
        QuotedStr(xFECSEM)+'     ,'+QuotedStr(xFECSS)+ '         ,'+QuotedStr(xFECAATRI)+'  ,'+
        QuotedStr(xFECAASEM)+'   ,'+QuotedStr(xFECAASS)+')';

       xSQL:=oSQL+pSQL;

       DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
       pgAvance.Position:=pgAvance.Position+1;

       xTDebeN:=xTDebeN+DM1.cdsQry.FieldByName('MONTO').AsFloat;
       xTDebeE:=xTDebeE+DM1.FRound(DM1.cdsQry.FieldByName('MONTO').AsFloat/xTCambio,15,2);
       xTHaberN:=xTHaberN+0;
       xTHaberD:=xTHaberD+0;

    //*********
    // Haber
    //*********
    oSQL:=' INSERT INTO '+xCNT301+' ('+
      ' CIAID                    ,CNTANO                   , CNTANOMM    ,'+
      //                         Año de Contabilizacion    Año y Mes de Contabilizacón
      ' CNTMM                    ,CNTCOMPROB               ,'+
      // Mes de Contabilizacion  Nro Comprobante
      ' TDIARID                  ,TDIARDES                 ,'+
      // Tipo de Diario           Descripcion de tipo de Diario
      ' CUENTAID                 ,CTADES                   ,'+
      //Id de la Cuenta          Descripcion de la Cuenta
      ' DOCID                    ,DOCDES                   ,'+
      //Id del Documento         Descripcion del Documento
      ' CNTNODOC                 ,'+
      // Nro de Operacion
      ' CNTGLOSA                 ,'+
      // Glosa IDUSE-USEABR-AÑO y MES de Contabilización
      ' CNTDH                    ,CCOSID                    ,CCOSDES     ,'+
      //DEBE o HABER             ,ID del Centro de Costo    , Descripcion del Centro de Costo
      ' CNTTCAMBIO               ,'+
      // Tipo de Cambio
      ' CNTMTOORI                ,CNTMTOLOC   ,'+
      // Monto Original          Monto Local
      ' CNTMTOEXT                ,'+
      //Monto Extranjero
      ' CNTFEMIS                 ,CNTFVCMTO   ,'+
      //Fecha de Emision         Fecha de Vencimiento
      ' CNTFCOMP                ,'+
      // Fecha del Comprobante
      ' CNTESTADO               ,CNTCUADRE                    ,CNTUSER     ,'+
      //Estado del Comprobante , Flag Cuadre                  , Usuario
      ' CNTFREG                 ,CNTHREG     ,'+
      //Fecha de Registro       Hora de Registro
      ' TMONID                  ,CNTDEBEMN   ,'+
      //Tipo de Moneda          Debe Moneda Nacional
      ' CNTDEBEME  ,'+
      //Debe Moneda Extranjera
      ' CNTHABEMN               ,CNTHABEME   ,'+
      //Haber Moneda Nacional   Haber Moneda Extranjera
      ' CNTMODDOC               ,MODULO                        ,CNTREG       ,'+
      //Modulo                  Modulo                         Nro de Registro
      ' CNTDD                   ,CNTTRI      , '+
      ' CNTSEM                  ,CNTSS                         ,CNTAATRI    , '+
      ' CNTAASEM                ,CNTAASS )';

      pSQL:=' VALUES ('+QuotedStr(xCia)+', '+QuotedStr(speAno.Text)+', '+QuotedStr(xPeriodo)+','+
       //                            Año de Contabilizacion      Año y Mes de Contabilizacón
        QuotedStr(speMes.Text)+'   , '+QuotedStr(xNumero)+','+
        // Mes de Contabilizacion    Nro Comprobante
        QuotedStr(xTDiardID)+'     , '+QuotedStr(xTDiardDes)+','+
        // Tipo de Diario            Descripcion de tipo de Diario
        QuotedStr(xCuentaID46)+'   ,'+QuotedStr(xCuentaDes46)+','+
        //Id de la Cuenta           Descricion de la Cuenta
        QuotedStr(xDocID)+'        ,'+QuotedStr(xDocDes)+','+
        //Id del Documento          Descripcion del Documento
        QuotedStr(DM1.cdsQry.FieldByName('TRANSNOPE').AsString)+','+
        // Nro de Operacion
        QuotedStr(DM1.cdsQry.FieldByName('USEID').AsString+' '+DM1.cdsQry.FieldByName('USEABR').AsString+' - '+speAno.Text+speMes.Text)+','+
        // Glosa IDUSE-USEABR-AÑO y MES de Contabilización
        QuotedStr('H')+'           ,'+QuotedStr(DM1.cdsReporte3.FieldByName('CCOSID').AsString)+','+QuotedStr(DM1.cdsReporte3.FieldByName('CCOSABR').AsString)+','+
        //DEBE o HABER             ,ID del Centro de Costo                                       , Descripcion del Centro de Costo
        FloatToStr(xTCambio)+'     ,'+
        // Tipo de Cambio
      // Tipo de Cambio de la Fecha Actual
        FloatToStr(DM1.cdsQry.FieldByName('MONTO').AsFloat)+','+FloatToStr(DM1.cdsQry.FieldByName('MONTO').AsFloat)+','+
        // Monto Original                                      Monto Local
        FloatToStr(DM1.FRound(DM1.cdsQry.FieldByName('MONTO').AsFloat/xTcambio,15,2))+','+
        //Monto Extranjero
        QuotedStr(DM1.cdsQry.FieldByName('TRANSFOPE').AsString)+','+QuotedStr(DM1.cdsQry.FieldByName('TRANSFOPE').AsString)+','+
        //Fecha de Emision                                        Fecha de Vencimiento
        QuotedStr(xFComp)+','+
      // Fecha del Comprobante
        // dtpFecha
        QuotedStr('P')+'           ,'+QuotedStr('S')+'            ,'+QuotedStr(DM1.cdsUsuarios.FieldByName('USERID').AsString)+','+
        //Estado del Comprobante   , Flag Cuadre                  , Usuario
        QuotedStr(xFecha)+',SYSDATE,'+
      //Fecha de Registro          Hora de Registro
        QuotedStr('N')+'         ,'+'0,'+
        //Tipo de Moneda          Debe Moneda Nacional
        '0,'+
        //Debe Moneda Extranjera
        FloatToStr(DM1.cdsQry.FieldByName('MONTO').AsFloat)+','+FloatToStr(DM1.FRound(DM1.cdsQry.FieldByName('MONTO').AsFloat/xTCambio,15,2))+','+
        //Haber Moneda Nacional                               Haber Moneda Extranjera
        QuotedStr('APO')+'        ,'+QuotedStr('APO')+'          ,'+QuotedStr(IntToStr(x))+','+
        //Modulo                    Modulo                         Nro de Registro
        QuotedStr(xFECDIA)+'         ,'+QuotedStr(xFECTRIM)+'   ,'+
        QuotedStr(xFECSEM)+'     ,'+QuotedStr(xFECSS)+ '         ,'+QuotedStr(xFECAATRI)+'  ,'+
        QuotedStr(xFECAASEM)+'   ,'+QuotedStr(xFECAASS)+')';

        xSQL:=oSQL+pSQL;

       DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
       pgAvance.Position:=pgAvance.Position+1;

       xTDebeN:=xTDebeN+0;
       xTDebeE:=xTDebeE+0;
       xTHaberN:=xTHaberN+DM1.cdsQry.FieldByName('MONTO').AsFloat;
       xTHaberD:=xTHaberD+DM1.FRound(DM1.cdsQry.FieldByName('MONTO').AsFloat/xTCambio,15,2);

       DM1.cdsQry.Next;
  End;

  //***********************************
  // Inserta Cabecera
  //***********************************

  wSQL:=' INSERT INTO '+xCNT300+' '+
      '(TDIARID                   ,CNTCOMPROB             ,CNTANOMM  , '+
      // Tipo de Diario           Nro Comprobante          Año y Mes
      ' CNTGLOSA                  ,'+
      ' CNTTCAMBIO             ,CNTFCOMP  , '+
      // Glosa                    Tipo de Cambio          Fecha de Comprobante
      ' CNTESTADO                 ,CNTCUADRE              ,CNTUSER   , '+
      // Estado                   Cuadre                  Usuario
      ' CNTFREG                   ,CNTHREG                ,CNTANO    , '+
      // Fecha de Registro        Hora de Registro        Año
      ' CNTMM                     ,CNTDD                  ,CNTTRI    , '+
      ' CNTSEM                    ,CNTSS                  ,CNTAATRI  , '+
      ' CNTAASEM                  ,CNTAASS                ,TMONID    , '+
      //                                                  Tipo de Moneda
      ' TDIARDES                  ,CNTDEBEMN              ,CNTDEBEME , '+
      //Descrip. Tipo de Diario   Debe Mon Nacional       Debe Mon Extranjera
      ' CNTHABEMN                 ,CNTHABEME              ,DOCMOD    , '+
      // Haber Mon Nacional       Haber Mon Extranjera    Modulo
      ' MODULO ) '+
      // Modulo
      ' VALUES ( '+
        QuotedStr(xTDiardID)+'   ,'+QuotedStr(xNumero)+'   ,'+QuotedStr(xPeriodo)+', '+
      // Tipo de Diario           Nro Comprobante          Año y Mes
        QuotedStr('APORTES - '+xPeriodo)+', '+
        // Glosa
        FloatToStr(xTCambio)+'   , SYSDATE                 , '+
      // Tipo de Cambio          Fecha de Comprobante
        QuotedStr('S')+'         ,'+QuotedStr('S')+'      ,'+QuotedStr(DM1.cdsUsuarios.FieldByName('USERID').AsString)+','+
      // Estado                   Cuadre                  Usuario
        QuotedStr(xFecha)+'      , SYSDATE                ,'+QuotedStr(speAno.Text)+', '+
      // Fecha de Registro        Hora de Registro        Año
        QuotedStr(xFECMES)+'     ,'+QuotedStr(xFECDIA)+'  ,'+QuotedStr(xFECTRIM)+','+
        QuotedStr(xFECSEM)+'     ,'+QuotedStr(xFECSS)+'   ,'+QuotedStr(xFECAATRI)+','+
        QuotedStr(xFECAASEM)+'   ,'+QuotedStr(xFECAASS)+' ,'+QuotedStr('N')+','+
      //                                                  Tipo de Moneda
        QuotedStr(xTDiardDes)+'  ,'+FloatToStr(xTDebeN)+'  ,'+FloatToStr(xTDebeE)+','+
      //Descrip. Tipo de Diario   Debe Mon Nacional       Debe Mon Extranjera
        FloatToStr(xTHaberN)+'    ,'+FloatToStr(xTHaberD)+' ,'+QuotedStr('APO')+', '+
      // Haber Mon Nacional       Haber Mon Extranjera    Modulo
        QuotedStr('APO')+')';
      // Modulo

  DM1.DCOM1.AppServer.EjecutaSQL(wSQL);
  pgAvance.Position:=pgAvance.Position+1;

  DM1.cdsReporte1.Close;
  DM1.cdsReporte2.Close;
  DM1.cdsReporte3.Close;

  //************************************************************************
  // Fin Proceso de inserción en Contabilidad
  //************************************************************************

  //******************************************************************
  // Inicio Actualiza Aportes insertados en Contabilidad
  //******************************************************************
  xSQL:=' UPDATE APO301 SET '+
        '        APOFCNT='+QuotedStr('S')+
        ' WHERE TRANSINTID='+QuotedStr('APO')+
        '       AND TRANSFOPE BETWEEN '+QuotedStr(dbdtpFInicio.Text)+
        '       AND '+QuotedStr(dbdtpFFin.Text)+
        '       AND NVL(APOFCNT,'+QuotedStr('X')+')='+QuotedStr('X');
  DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
  pgAvance.Position:=pgAvance.Position+1;

  //******************************************************************
  // Fin Actualiza Aportes insertados en Contabilidad
  //******************************************************************

  Screen.Cursor:=crDefault;
  pgAvance.Max:=0;
  ShowMessage('Operación Exitosa');
end;

procedure TFContabilizacion.spemesExit(Sender: TObject);
begin
  If Length(Trim(speMes.Text))=1 Then
  Begin
    speMes.Text:='0'+speMes.Text;
  End;
end;

procedure TFContabilizacion.dtpFechaExit(Sender: TObject);
begin
  speAno.Text:=Copy(DateTimeToStr(dtpFecha.Date),7,4);
  speMEs.Text:=Copy(DateTimeToStr(dtpFecha.Date),4,2);
end;

end.
