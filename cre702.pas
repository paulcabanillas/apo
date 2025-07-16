unit CRE702;

// Inicio Uso Estándares: 01/08/2011
// Unidad               : CRE702
// Formulario           : FToolAso
// Fecha de Creación    : 15/12/2003
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Panel de Asociados
// Actualizaciones      :
// HPC_201501_APO       : 06/01/2015 - Cambio de DCOM a Socket

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, fcButton, fcImgBtn, fcShapeBtn, ppDB,
  ppDBPipe, ppCtrls, ppBands, ppVar, ppClass, ppPrnabl, ppCache, ppComm,
  ppTypes, ppRelatv, ppProd, ppReport,mant, ppStrtch, ppRegion, ppDBBDE, ppSubRpt,
  ComCtrls,ppViewr, CheckLst;

type
  TFToolAso = class(TForm)
    pnlTool: TPanel;
    Z2sbtnDLab: TfcShapeBtn;
    Z2sbtnDFam: TfcShapeBtn;
    Z2sbtnAportes: TfcShapeBtn;
    Z2sbtnCtasBanc: TfcShapeBtn;
    Z2sbtnResol: TfcShapeBtn;
    Z2sbtnFirma: TfcShapeBtn;
    Z2sbtnDSocioE: TfcShapeBtn;
    lblApeMat: TLabel;
    edtAsociado: TEdit;
    sbtnAceptar: TfcShapeBtn;
    ppRepCronograma: TppReport;
    ppdbSolicitud: TppDBPipeline;
    bdepSub1: TppBDEPipeline;
    bdepSub2: TppBDEPipeline;
    bdepSub3: TppBDEPipeline;
    bdepSub4: TppBDEPipeline;
    pnlEstCta: TPanel;
    dtpAl: TDateTimePicker;
    lblAl: TLabel;
    z2bbtnFecha: TfcShapeBtn;
    bdepSub5: TppBDEPipeline;
    ppDetailBand1: TppDetailBand;
    ppDBText8: TppDBText;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel43: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel20: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel30: TppLabel;
    ppLabel107: TppLabel;
    ppLabel125: TppLabel;
    ppLabel128: TppLabel;
    ppLabel130: TppLabel;
    dbtAsoid: TppDBText;
    dbtAsoApe: TppDBText;
    dbtNroCre: TppDBText;
    dbtFecOto: TppDBText;
    dbtMoneda: TppDBText;
    dbtTipPres: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    dbtCuota: TppDBText;
    ppLabel29: TppLabel;
    ppLabel31: TppLabel;
    ppLabel36: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine15: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLabel124: TppLabel;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine37: TppLine;
    Z2sbtnCtaInd: TfcShapeBtn;
    fcShapeBtn1: TfcShapeBtn;
    procedure Z2sbtnDLabClick(Sender: TObject);
    procedure Z2sbtnDFamClick(Sender: TObject);
    procedure Z2sbtnResolClick(Sender: TObject);
    procedure Z2sbtnAportesClick(Sender: TObject);
    procedure Z2sbtnCtasBancClick(Sender: TObject);
    procedure Z2sbtnFirmaClick(Sender: TObject);
    procedure Z2sbtnDSocioEClick(Sender: TObject);
    procedure sbtnAceptarClick(Sender: TObject);
    procedure z2bbtnFechaClick(Sender: TObject);
    procedure ppRepCronogramaPreviewFormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Z2sbtnCtaIndClick(Sender: TObject);
    procedure fcShapeBtn1Click(Sender: TObject);
  private
    { Private declarations }
   MtxAportes : TMant;
   xEstid,xEstado : String;
   procedure CargaCrono(pSql : String);
  public
    { Public declarations }
    wUProceso,wUPago,wUse,wTabla,wDeDonde,sSQL:string;

  end;

var
  FToolAso: TFToolAso;
  wSql : String;


implementation

uses CRE206, APODM, CRE223, CRE222, CRE224, CRE209, CRE207,
  CRE225, APO001, APO515;

{$R *.DFM}

procedure TFToolAso.Z2sbtnDLabClick(Sender: TObject);
begin
  try
    pnlEstCta.Visible := False;  
    pnlTool.Height := 55;  
    FDLab:=TFDLab.Create(Self);
    FDLab.ShowModal;
  finally
    FDLab.Free;
    DM1.cdsDLabo.Close;
  end;

end;

procedure TFToolAso.Z2sbtnDFamClick(Sender: TObject);
begin
  try
   pnlEstCta.Visible := False;  
    pnlTool.Height := 55;  
    FDFam:=TFDFam.Create(Self);
    FDFam.ShowModal;
  finally
    FDFam.Free;
    DM1.cdsDFam.Close;
  end;
end;

procedure TFToolAso.Z2sbtnResolClick(Sender: TObject);
begin
 try
  pnlEstCta.Visible := False; 
      sSQL := 'SELECT ASOID,ASOCODMOD,ASOCODAUX,ASONRES,ASOFRES,RESID,RESFVIG,FREG,HREG '+
              'FROM APO205 WHERE ASOID='+DM1.cdsAso.FieldByName('ASOID').AsString;
      DM1.FiltraCDS(DM1.cdsResol,sSQL);

    FResoluciones:=TFResoluciones.Create(Self);
    FResoluciones.ShowModal;
  finally
    FResoluciones.Free;
    DM1.cdsResol.Close;
  end;

end;

procedure TFToolAso.Z2sbtnAportesClick(Sender: TObject);
begin
  pnlEstCta.Visible := False;
  pnlTool.Height := 55;
  DM1.cdsConsulta.Close;
  MtxAportes  := TMant.Create(Self);
  try
    MtxAportes.Admin           := DM1.wAdmin;
    MtxAportes.User            := DM1.wUsuario;
    MtxAportes.OnCreateMant    := nil ;
    MtxAportes.TableName       := 'APO301';
    MtxAportes.ClientDataSet   := DM1.cdsConsulta;
//WMC 666    MtxAportes.Filter          := 'APO301.ASOID='+
//WMC 666                                   quotedstr(FPrincipal.Mtx.FMant.cds2.FieldByName('ASOID').AsString)+
//WMC 666                                     ' AND APO301.TRANSID='+QuotedStr('APORTE');
    MtxAportes.Filter          := 'APO301.ASOID='+
                                   quotedstr(Mtx.FMant.cds2.FieldByName('ASOID').AsString)+
                                     ' AND APO301.TRANSID='+QuotedStr('APORTE');

    MtxAportes.DComC           := DM1.DCOM1;
    MtxAportes.Module          := dm1.wModulo;
    MtxAportes.Titulo 				 := 'Estado de Cuenta de Aportes';
    MtxAportes.SectionName		 :='AportesX';
    MtxAportes.FileNameIni     := '\SOLCRE.INI';
// Inicio HPC_201501_APO     Cambio de DCOM a Socket
    MtxAportes.Tipo := 'NORMAL';
// Fin  HPC_201501_APO     Cambio de DCOM a Socket
    MtxAportes.Execute;
  Finally
    DM1.cdsConsulta.Close;
 	 MtxAportes.Free;
  End;
  DM1.cdsConsulta.Close;
end;

procedure TFToolAso.Z2sbtnCtasBancClick(Sender: TObject);
begin
 try
    pnlEstCta.Visible := False; 
    pnlTool.Height := 55; 
    FDCtasBcos:=TFDCtasBcos.Create(Self);
    FDCtasBcos.ShowModal;
  finally
    FDCtasBcos.Free;
  end;

end;

procedure TFToolAso.Z2sbtnFirmaClick(Sender: TObject);
begin
 try
    pnlEstCta.Visible := False; 
    pnlTool.Height := 55; 
    FDFirmaHuella:=TFDFirmaHuella.Create(Self);
    FDFirmaHuella.ShowModal;
  finally
    FDFirmaHuella.Free;
  end;

end;

procedure TFToolAso.Z2sbtnDSocioEClick(Sender: TObject);
begin
try
  pnlEstCta.Visible := False;
    pnlTool.Height := 55;
    FDSocioEco:=TFDSocioEco.Create(Self);
    FDSocioEco.ShowModal;
  finally
    FDSocioEco.Free;
  end;
end;

procedure TFToolAso.sbtnAceptarClick(Sender: TObject);
var
  xSQL: String;
  xTrue : Boolean;
begin
  If Length(Trim(edtAsociado.Text))>0 Then
  Begin
    xTrue := False;
    If (wUproceso <> '') and (wUpago <> '') and (wUse <> '') then
     xSQL:='SELECT * FROM APO201 '+
          'WHERE ASOAPENOM LIKE '+QuotedStr(Trim(edtAsociado.Text+'%'))+
          ' and UPROID ='+quotedstr(wUproceso)+
          ' and UPAGOID ='+quotedstr(wUpago)+
          ' and USEID ='+quotedstr(wUse)
    else
     xSQL:='SELECT * FROM APO201 '+
          'WHERE ASOAPENOM LIKE '+QuotedStr(Trim(edtAsociado.Text+'%'));
    Screen.Cursor:=crHourGlass;
//WMC 666    FPrincipal.Mtx.UsuarioSQL.Clear;
//WMC 666    FPrincipal.Mtx.FMant.wTabla:='APO201';
//WMC 666    FPrincipal.Mtx.UsuarioSQL.Add(xSQL);
//WMC 666    FPrincipal.Mtx.NewQuery;

    Mtx.UsuarioSQL.Clear;
    Mtx.FMant.wTabla:='APO201';
    Mtx.UsuarioSQL.Add(xSQL);
    Mtx.NewQuery;

    Screen.Cursor:=crDefault;
    If wDeDonde = '1' then
     If DM1.cdsAso.RecordCount=0 Then
      xtrue := True;

    If wDeDonde = '2' then
     If DM1.cdsAsoX.RecordCount=0 Then
      xtrue := True;

    If xTrue then
     Begin
      xSQL:='SELECT * FROM APO201 ';
      If (wUproceso <> '') and (wUpago <> '') and (wUse <> '') then
       xSQL:='SELECT * FROM APO201 WHERE '+
             ' UPROID ='+quotedstr(wUproceso)+
             ' and UPAGOID ='+quotedstr(wUpago)+
             ' and USEID ='+quotedstr(wUse)
      else
       xSQL:='SELECT * FROM APO201 ';

      Screen.Cursor:=crHourGlass;
//WMC 666      FPrincipal.Mtx.UsuarioSQL.Clear;
//WMC 666      FPrincipal.Mtx.FMant.wTabla:='APO201';
//WMC 666      FPrincipal.Mtx.UsuarioSQL.Add(xSQL);
//WMC 666      FPrincipal.Mtx.NewQuery;

      Mtx.UsuarioSQL.Clear;
      Mtx.FMant.wTabla:='APO201';
      Mtx.UsuarioSQL.Add(xSQL);
      Mtx.NewQuery;

      edtAsociado.Text:='';
      edtAsociado.SetFocus;
      Screen.Cursor:=crDefault;
      ShowMessage('No Existen Registros que cumplan la condición ');
     End;
  End;
end;

procedure TFToolAso.z2bbtnFechaClick(Sender: TObject);
const
 xMeses : Array [1..12] of String = ('Enero','Febrero','Marzo','Abril','Mayo','Junio','Julio',
                                     'Agosto','Setiembre','Octubre','Noviembre','Diciembre');
var
 xSql : String;
 x10 : Integer;
 xDia,xMes,xAno : Word;
 xDia1,xMes1,xAno1 : Word;
 xProxAnoIni,xProxAnofin,xProxTriIni,xProxTriFin,xNewAno,xIniTri : Integer;
 xAndOr,xFecha1,xLineaFecha : String;
 xDate : TDate;
begin
   pnlEstCta.Visible := False;
   //** descodifico la fecha
   DecodeDate(dtpAl.Date,xAno,xMes,xDia);
   //** el inico del trimestre menos un mes más para tomar el saldo
   xIniTri := xMes - 4;
   //** si el mes es menor se asume que se retrocedio un año
   If xIniTri < 1 then
    begin
     xNewAno := xAno - 1;
     xIniTri := 13 + xIniTri;
    end
   else
    xNewAno := xAno;

   If xNewAno = xAno then
     xAndOr := ' AND '
   else
     xAndOr := ' OR ';

   //** CABECERA
   xSql := 'SELECT CASE WHEN A.ASOSEXO = ''F'' THEN ''Sr(a)(ita)'' else ''Sr.'' end ASOSEXO,'+
           ' A.ASOAPENOM,A.ASODIR||'' / ''||A.ASOTELF1||'' / ''||A.ASOTELF2 DOMI,'+
           ' C.ZIPDES||'' - ''||D.CIUDDES||'' - ''||E.DPTODES DIST,'+
           ' A.USEID,A.ASONCTA,A.ASODNI,A.ASOCODMOD,B.CEDUID,'+
           ' F.ZIPDES||'' - ''||G.CIUDDES||'' - ''||H.DPTODES DIST1,'+
           ' A.ASOCODMOD,A.ASODNI,A.ASONCTA,'+
           ' B.CEDDIR FROM APO201 A,APO202 B ,'+
           ' (SELECT A.ZIPDES FROM APO122 A,APO201 B WHERE '+
           ' B.ASOID='+quotedstr(Mtx.FMant.cds2.FieldByName('ASOID').AsString)+
           ' AND A.ZIPID = B.ZIPID) C,'+
           ' (SELECT A.CIUDDES FROM APO123 A,APO201 B WHERE'+
           ' B.ASOID='+quotedstr(Mtx.FMant.cds2.FieldByName('ASOID').AsString)+
           ' AND  A.CIUDID = B.CIUDID) D,'+
           ' (SELECT A.DPTODES FROM APO158 A,APO201 B WHERE '+
           ' B.ASOID='+quotedstr(Mtx.FMant.cds2.FieldByName('ASOID').AsString)+
           ' AND A.DPTOID = B.DPTOID) E,'+
           ' (SELECT A.ZIPDES FROM APO122 A,APO202 B WHERE '+
           ' B.ASOID='+quotedstr(Mtx.FMant.cds2.FieldByName('ASOID').AsString)+
           ' AND  A.ZIPID = B.ZIPID) F,'+
           ' (SELECT A.CIUDDES FROM APO123 A,APO202 B WHERE '+
           ' B.ASOID='+quotedstr(Mtx.FMant.cds2.FieldByName('ASOID').AsString)+
           ' AND  A.CIUDID = B.CIUDID) G,'+
           ' (SELECT A.DPTODES FROM APO158 A,APO202 B WHERE'+
           ' B.ASOID='+quotedstr(Mtx.FMant.cds2.FieldByName('ASOID').AsString)+
           ' AND  A.DPTOID = B.DPTOID) H'+
           ' WHERE A.ASOID='+quotedstr(Mtx.FMant.cds2.FieldByName('ASOID').AsString)+
           ' and B.ASOID = '+quotedstr(Mtx.FMant.cds2.FieldByName('ASOID').AsString);

   dm1.cdsConsulta.Close;
   dm1.cdsConsulta.DataRequest(xSql);
   dm1.cdsConsulta.Open;

  //** SUB REPROTE 1
{
  xSql  := 'select A.cremtosol,A.crenumcuo,A.cresdoact,A.tipcredes,'+
           ' A.creffinpag,A.crefinipag,A.crefotorg ,B.TMONABR'+
           ' from cre303 A,TGE103 B WHERE A.ASOID='
            +quotedstr(FPrincipal.Mtx.FMant.cds2.FieldByName('ASOID').AsString)+
           ' AND A.TMONID=B.TMONID';
}
   dm1.cdsqry1.Close;
   dm1.cdsqry1.DataRequest(xSql);
   dm1.cdsqry1.Open;


  //** SUB REPORTE 2
  xLineaFecha := 'De '+xMeses[xIniTri+1] + ' a ' +xMeses[xMes]+' del ' +IntToStr(xAno);

  xSQL := 'SELECT A.CREFVEN,A.CREDID,A.CREMES,A.CREANO,CRECUOTA,'+quotedstr(xLineaFecha)+' MESES,'+
          ' CASE WHEN CREMES <> '+IntToStr(xIniTri)+' THEN A.CREMTO ELSE 0.00 END CREMTO,'+
          ' CASE WHEN CREMES <> '+IntToStr(xIniTri)+' THEN A.CREFPAG ELSE NULL END CREFPAG,'+
          ' CASE WHEN CREMES <> '+IntToStr(xIniTri)+' THEN CASE WHEN A.CREMTOCOB IS NULL THEN ''-----'' ELSE A.FORPAGOABR END ELSE ''-----'' END FORPAGOABR,'+
          ' CASE WHEN CREMES <> '+IntToStr(xIniTri)+' THEN CASE WHEN A.CREDOCPAG IS NULL THEN ''-----'' ELSE A.CREDOCPAG END ELSE ''-----'' END CREDOCPAG,'+
          ' CASE WHEN CREMES <> '+IntToStr(xIniTri)+' THEN CASE WHEN A.CREMTOCOB IS NULL THEN 0.00 ELSE A.CREMTOCOB END ELSE 0.00 END CREMTOCOB,'+
          ' CASE WHEN A.CRESALDO  IS NULL THEN 0.00 ELSE  A.CRESALDO END CRESALDO, '+
          ' B.TMONABR'+
          ' FROM CRE302 A,TGE103 B WHERE A.ASOID='+
          quotedstr(Mtx.FMant.cds2.FieldByName('ASOID').AsString)+
          ' AND (( A.CREANO = '+IntToStr(xNewAno)+
          ' AND A.CREMES >= '+IntToStr(xIniTri)+') '+
          xAndOr+' ( A.CREANO = '+IntToStr(xAno)+
          ' AND A.CREMES <= '+IntToStr(xMes)+'))'+
          ' AND A.TMONID=B.TMONID'+
          ' ORDER BY A.CREFVEN,A.CREDID,A.CRECUOTA';

   dm1.cdsqry2.IndexFieldNames := '';
   dm1.cdsqry2.Close;
   dm1.cdsqry2.DataRequest(xSql);
   dm1.cdsqry2.Open;
   dm1.cdsqry2.First;
   If dm1.cdsqry2.FieldByName('FORPAGOABR').AsString = '' then
    begin
     dm1.cdsqry2.Insert;
     dm1.cdsqry2.FieldByName('CREANO').AsString := '----';
     dm1.cdsqry2.FieldByName('CREMES').AsString := '--';
     dm1.cdsqry2.FieldByName('CREMTO').AsString := '0.00';
     dm1.cdsqry2.FieldByName('FORPAGOABR').AsString := 'SIN MOV.';
     dm1.cdsqry2.FieldByName('CRESALDO').AsString := '0.00';
    end;
  //** SUB REPORTE 3
  If xMes < 12 then
   xFecha1 := '1/'+IntToStr(xMes + 1)+'/'+ IntToStr(xAno)
  else
   xFecha1 := '1/1/'+ IntToStr(xAno+1);

  xDate := StrToDate(xFecha1) -1;
  DecodeDate(xDate,xAno1,xMes1,xDia1);

  //** Flag para el estado de No Pagado
  xEstado := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('N'),'ESTDES');
  xEstid  := DM1.cdsQry.FieldByName('ESTID').AsString;
  xLineaFecha := 'Al '+IntToStr(xDia1)+' de ' +xMeses[xMes]+' del '+IntTostr(xAno);

  XsQL := 'SELECT CASE WHEN SUM(A.CREMTO) IS NULL THEN 0.00 ELSE SUM(A.CREMTO) END CRESALDO,'+
           quotedstr(xLineaFecha)+' Fecha,C.TMONABR '+
          ' FROM CRE302 A,CRE113 B,TGE103 C'+
          ' WHERE A.ASOID='+
          quotedstr(Mtx.FMant.cds2.FieldByName('ASOID').AsString)+
          ' AND A.CREESTID = '+quotedstr(xEstid)+
          ' AND A.CREESTID = B.ESTID(+) AND A.TMONID=C.TMONID'+
          ' GROUP BY C.TMONABR';

   dm1.cdsReporte.Close;
   dm1.cdsReporte.DataRequest(xSql);
   dm1.cdsReporte.Open;
   //** si no hay data se crea una linea para que almenos muestre
   If dm1.cdsReporte.FieldByName('TMONABR').AsString = ''then
    begin
     dm1.cdsReporte.Insert;
     dm1.cdsReporte.FieldByName('CRESALDO').AsString := '0.00';
     dm1.cdsReporte.FieldByName('FECHA').AsString := xLineaFecha;
     dm1.cdsReporte.FieldByName('TMONABR').AsString := 'S/.';
     dm1.cdsReporte.Post;
    end;

  //** SUB REPORTE 4
  //** esto es para tomar el mes inicial del proximo trimestre
  xProxTriIni := xMes + 1;
  //** se asume que se p
  If xProxTriIni > 12 then
   begin
    xProxAnoIni := xAno + 1;
    xProxTriIni := 1;
   end
  else
   xProxAnoIni := xAno;

  //** esto es para tomar el mes final del proximo trimestre
  xProxTrifin := xMes + 3;
  //** se asume que se p
  If xProxTriFin > 12 then
   begin
    xProxAnoFin := xAno + 1;
    xProxTriFin := xProxTriFin - 12;
   end
  else
    xProxAnoFin := xAno;


  If xProxAnoFin = xProxAnoIni then
   xAndOr := ' AND '
  else
   xAndOr := ' OR ';


  xSql := 'SELECT A.CREDID,A.CREFVEN,A.CRECUOTA,A.TIPCREABR,A.FORPAGOABR,CRECUOTA,CREANO,CREMES,CREMTO,B.TMONABR '+
         ' FROM CRE302 A ,TGE103 B WHERE A.ASOID='+quotedstr(Mtx.FMant.cds2.FieldByName('ASOID').AsString)+
         ' AND( ( A.CREANO = '+IntToStr(xProxAnoIni)+ ' AND CREMES >= '+IntToStr(xProxTriIni)+') '+
         xandOr+' ( CREANO = '+IntToStr(xProxAnoFin)+ '  AND CREMES <= '+IntToStr(xProxTriFin)+'))'+
         ' AND A.TMONID=B.TMONID'+
         ' ORDER BY A.CREDID,A.CREFVEN,A.CRECUOTA';

  dm1.cdsReporte1.Filter := '';
  dm1.cdsReporte1.Filtered := True;
  dm1.cdsReporte1.IndexFieldNames := '';
  dm1.cdsReporte1.close;
  dm1.cdsReporte1.DataRequest(xSql);
  dm1.cdsReporte1.open;
  If dm1.cdsReporte1.RecordCount = 0 then
   begin
    dm1.cdsReporte1.Insert;
    dm1.cdsReporte1.FieldByName('TIPCREABR').AsString := '---';
    dm1.cdsReporte1.FieldByName('FORPAGOABR').AsString := '---';
    dm1.cdsReporte1.FieldByName('CRECUOTA').AsString := '0';
    dm1.cdsReporte1.FieldByName('CREMTO').AsString := '0.00';
   end;

  //** Sub Reporte 5
  xEstado := DM1.DisplayDescrip('prvSQL','CRE113','ESTDES,ESTID','FLGTIPO='+quotedstr('N'),'ESTDES');
  xEstid  := DM1.cdsQry.FieldByName('ESTID').AsString;

  xSql := 'SELECT DISTINCT C.ASOAPEPAT||'' ''||C.ASONOMBRES||'','' ASOAPENOM, '+
          ' CASE WHEN C.ASOSEXO = ''F'' THEN ''Sr(a)(ita)'' else ''Sr.'' end ASOSEXO,'+
          ' OBS1,OBS2,OBS3,OBS4,CTA1,CTA2,CTA3,'+
          ' CASE WHEN SUM(A.CREMTO) IS NULL THEN 0.00 ELSE SUM(A.CREMTO) END CRESALDO,'+
          ' E.TMONABR'+
          ' FROM CRE302 A,CRE113 B,APO201 C,cre204 D, TGE103 E'+
          ' WHERE A.ASOID='+quotedstr(Mtx.FMant.cds2.FieldByName('ASOID').AsString)+
          ' AND A.CREESTID='+quotedstr(xestid)+' AND A.TMONID = E.TMONID  AND'+
          ' A.CREESTID = B.ESTID(+) AND A.ASOID = C.ASOID'+
          ' GROUP BY OBS1,OBS2,OBS3,OBS4,CTA1,CTA2,CTA3,A.ASOAPENOM,C.ASOAPEPAT,'+
          ' C.ASONOMBRES,ASOSEXO,E.TMONABR';

  dm1.cdsQry4.close;
  dm1.cdsQry4.DataRequest(xSql);
  dm1.cdsQry4.open;

  ppRepCronograma.DataPipeline := ppdbSolicitud;
  ppRepCronograma.Template.FileName := wRutaRpt+'\CTACORRIENTE.rtm';
  ppRepCronograma.Template.LoadFromFile ;
  ppdbSolicitud.DataSource:=DM1.dsConsulta;
  bdepSub1.DataSource:=DM1.dsQry1;
  bdepSub2.DataSource:=DM1.dsQry2;
  bdepSub3.DataSource:=dm1.dsReporte;
  bdepSub4.DataSource:=dm1.dsReporte1;
  bdepSub5.DataSource:=dm1.dsQry4;
  ppRepCronograma.Print;
  ppRepCronograma.Stop;

  x10:=Self.ComponentCount-1;
  While x10>=0 Do
  Begin
    If Self.Components[x10].ClassName='TppGroup' Then
    Begin
      Self.Components[x10].Free;
    End;
    x10:=x10-1;
  End;
end;

procedure TFToolAso.ppRepCronogramaPreviewFormCreate(Sender: TObject);
begin
  ppRepCronograma.PreviewForm.WindowState:=WsMaximized;
  TppViewer(ppRepCronograma.PreviewForm.Viewer).ZoomSetting:=zsPageWidth;
end;

procedure TFToolAso.CargaCrono(pSql: String);
var
  xCodCre,xSql,xCredid,xCredidB : String;
  x10:Integer;
begin
  dm1.cdsQry1.IndexFieldNames := '';
  dm1.cdsQry1.filter := '';
  dm1.cdsQry1.filtered := False;
  dm1.cdsQry1.Close;
  dm1.cdsQry1.DataRequest(pSql);
  dm1.cdsQry1.Open;

  dm1.cdsQry1.first;
  xCredid := '';
  If dm1.cdsQry1.Recordcount <= 0 then
   begin
    Showmessage('No contiene información');
    exit;
   end;

  dm1.cdsQry1.First;
  xCodCre := DM1.cdsQry1.FieldByName('CREDID').AsString;
  while not dm1.cdsQry1.eof do
   begin
    If xCodCre <> xCredid then
     begin
      If xCredid = '' then
       begin
        xCredid := ' A.CREDID='+QuotedStr(DM1.cdsQry1.FieldByName('CREDID').AsString);
        xCredidB := ' B.CREDID='+QuotedStr(DM1.cdsQry1.FieldByName('CREDID').AsString);
       end
      else
       begin
        xCredid := xCredid + ' OR A.CREDID='+QuotedStr(DM1.cdsQry1.FieldByName('CREDID').AsString);
        xCredidB := xCredid + ' OR B.CREDID='+QuotedStr(DM1.cdsQry1.FieldByName('CREDID').AsString);
       end;
     end;
    xCodCre := xCredid;
    dm1.cdsQry1.next;
   end;
  DM1.cdsConsulta.Filter := '';
  DM1.cdsConsulta.filtered := False;
  DM1.cdsConsulta.IndexFieldNames := '';
  DM1.cdsConsulta.Close;
//    xSql := 'SELECT A.ASOID,A.CREMES,A.CREANO,A.CRECUOTA,A.CREAMORT,A.CREMTO,A.CREINTERES,'+
//            'A.CREFLAT,A.CRECAPCRON, A.CREDID ,'+

    xSql := 'SELECT '+
            quotedstr(Dm1.cdsQry1.FieldByName('CREINTERES').AsString)+' CREINT ,'+
            quotedstr(Dm1.cdsQry1.FieldByName('CREDFLAT').AsString)+' CREDFLAT '+
            ',A.ASOID,A.CREMES,A.CREANO,A.CRECUOTA,A.CREAMORT,A.CREMTO,A.CREINTERES'+
            ',A.CREFLAT,A.CRECAPCRON, A.CREDID ,'+
            ' DECODE(CREMES,'+QuotedStr('01')+','+QuotedStr('Ene -')+','+QuotedStr('02')+','+
            ' '+QuotedStr('Feb -')+','+QuotedStr('03')+','+QuotedStr('Mar -')+','+
            ' '+QuotedStr('04')+','+QuotedStr('Abr -')+','+
            ' '+QuotedStr('05')+','+QuotedStr('May -')+','+QuotedStr('06')+','+
            ' '+Quotedstr('Jun -')+','+QuotedStr('07')+','+QuotedStr('Jul -')+','+
            ' '+QuotedStr('08')+','+QuotedStr('Ago -')+','+QuotedStr('09')+','+
            ' '+Quotedstr('Set -')+','+
            ' '+QuotedStr('10')+','+QuotedStr('Oct -')+','+QuotedStr('11')+','+
            ' '+QuotedStr('Nov -')+','+QuotedStr('12')+','+QuotedStr('Dic -')+',NULL) AS PERIODO,'+
            ' B.CREFOTORG,B.CREMTOSOL, B.ASOAPENOM,B.TMONID,B.TIPCREDES,B.CRETCALID,B.CRENUMCUO,'+
            ' C.CRETCALDES,D.TMONDES FROM (SELECT '+
            ' A.ASOID,A.CREMES,A.CREANO,A.CRECUOTA,A.CREAMORT,A.CREMTO,A.CREINTERES,'+
            ' A.CREFLAT,A.CRECAPCRON, A.CREDID'+
            ' from cre302 A WHERE A.ASOID='+quotedstr(Mtx.FMant.cds2.FieldByName('ASOID').AsString)+
            ' AND ('+xCredid+')'+
            ' ) A,(SELECT  B.CREDID,B.CREFOTORG,B.CREMTOSOL, B.ASOAPENOM,B.TMONID,'+
            ' B.TIPCREDES,B.CRETCALID,B.CRENUMCUO from cre303 B WHERE '+
            ' B.ASOID='+quotedstr(Mtx.FMant.cds2.FieldByName('ASOID').AsString)+
            ' AND ('+xCredidB+') ) B,'+
            ' CRE102 C,TGE103 D WHERE A.CREDID=B.CREDID AND C.CRETCALID(+)=B.CRETCALID '+
            ' AND B.TMONID=D.TMONID ORDER BY A.ASOID,A.CRECUOTA,A.CREANO,A.CREMES';

  DM1.cdsConsulta.DataRequest(xSQL);
  DM1.cdsConsulta.Open;
  if   DM1.cdsConsulta.RecordCount = 0 Then
   Begin
     ShowMessage ('No existe Información a mostrar');
     exit;
   End;
  ppdbSolicitud.DataSource:=DM1.dsConsulta;
  ppRepCronograma.DataPipeline := ppdbSolicitud;
  ppRepCronograma.Template.FileName := wRutaRpt+'\CronogramaPagos.rtm';
  ppRepCronograma.Template.LoadFromFile ;

  ppRepCronograma.Print;
  ppRepCronograma.Stop;

  x10:=Self.ComponentCount-1;
  While x10>=0 Do
  Begin
    If Self.Components[x10].ClassName='TppGroup' Then
    Begin
      Self.Components[x10].Free;
    End;
    x10:=x10-1;
  End;
end;

procedure TFToolAso.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key=#13 then
    begin
      key:=#0;
      perform(CM_DialogKey,VK_TAB,0);
    end;
end;

procedure TFToolAso.Z2sbtnCtaIndClick(Sender: TObject);
begin
  if not DM1.cdsAso.FieldByName('ASOFRESCESE').IsNull then
    if DM1.cdsAso.FieldByName('ASOFRESCESE').AsDateTime < StrToDate('12/01/99') then
       Raise Exception.Create('La Cta. Individual de este Asociado se calculó vía Tabla');

  try
   FRepXCtaInd := TFRepXCtaInd.Create(Self);
   FRepXCtaInd.edtAsoID.Text    := DM1.cdsAso.FieldByName('ASOID').AsString;
   FRepXCtaInd.edtAsociado.Text := DM1.cdsAso.FieldByName('ASOAPENOM').AsString;
   FRepXCtaInd.bResumen         := False ;
   FRepXCtaInd.bbtnimprimir.OnClick(FRepXCtaInd.bbtnimprimir);
  finally
   FRepXCtaInd.Free ;
  end ;
end;

procedure TFToolAso.fcShapeBtn1Click(Sender: TObject);
begin
  if not DM1.cdsAso.FieldByName('ASOFRESCESE').IsNull then
    if DM1.cdsAso.FieldByName('ASOFRESCESE').AsDateTime < StrToDate('12/01/99') then
       Raise Exception.Create('La Cta. Individual de este Asociado se calculó vía Tabla');

  try
   FRepXCtaInd := TFRepXCtaInd.Create(Self);
   FRepXCtaInd.edtAsoID.Text    := DM1.cdsAso.FieldByName('ASOID').AsString;
   FRepXCtaInd.edtAsociado.Text := DM1.cdsAso.FieldByName('ASOAPENOM').AsString;
   FRepXCtaInd.bResumen         := True ;
   FRepXCtaInd.bbtnimprimir.OnClick(FRepXCtaInd.bbtnimprimir);
  finally
   FRepXCtaInd.Free ;
  end ;
end;

end.
