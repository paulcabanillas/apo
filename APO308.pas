unit APO308;
                                                                                                                                                                                                            DEV
interface

uses
  Windows, SysUtils, Classes, Controls, Forms, Dialogs, fcButton, fcImgBtn,
  fcShapeBtn, StdCtrls, ComCtrls, wwriched, ExtCtrls, StrContainer, mant, DB,
  ppPrnabl, ppClass, ppStrtch, ppRichTx, ppCache, ppBands, ppComm,
  ppTypes, ppRelatv, ppProd, ppReport,
  Messages, fcLabel, ControlGridDisp, ppViewr, 
  Buttons, ToolWin, ppCtrls, Wwintl, Grids, Wwdbigrd, Wwdbgrid;

type
  TFTOficio = class(TForm)
    pnlTool: TPanel;
    z2bbtndiskette: TfcShapeBtn;
    z2bbtnImprime: TfcShapeBtn;
    wwDBRichEdit1: TwwDBRichEdit;
    wwDBRichEdit2: TwwDBRichEdit;
    savdlg1: TSaveDialog;
    scFILES: TStrContainer;
    edtNomArch: TEdit;
    rptOficio: TppReport;
    ppDetailBand1: TppDetailBand;
    rchtPagina: TppRichText;
    ppHeaderBand1: TppHeaderBand;
    z2bbtnAcepta: TfcShapeBtn;
    procedure z2bbtnImprimeClick(Sender: TObject);
    procedure z2bbtndisketteClick(Sender: TObject);
    procedure rptOficioPreviewFormCreate(Sender: TObject);
    procedure z2bbtnAceptaClick(Sender: TObject);
  private
    { Private declarations }
    xFechaCom : TDate;
    xDocid,xEcanomm,xTDiarid,xCcBcoid,xTmonid,xBancoid,xFpagoid,xAuxid  : String;
    xMaxNumComp,xNodoc,xCuentaid,xCptoid,xClauxid,xCiaid,xGlosa : String;
    xECTCAMB,cPgoOri,cPgoLoc,cPgoExt : Double;
    procedure PanelToolAso(Sender: TObject);
    procedure OnEditAso(Sender: TObject; MantFields: TFields);
    procedure ActualizaSaldosTGE401(ccPgoOri,ccPgoLoc,ccPgoExt: double; sSigno : String);
    procedure ActSdoAuxiliar(const xCIAID, xANO, xMES, xCLAUXID, xAUXID, MONTOMN, MONTOME, MTOSLOC, MTOSEXT, xOper: String);
    procedure SaldosCaja310;
    procedure ActuCaja301;
    procedure ActuCre313;
  public
    { Public declarations }
  end;

  function WinExecAndWait32(FileName:String; Visibility:integer):integer;

var
  FTOficio: TFTOficio;
  sSQL : String;


implementation

uses APODM, APO001, MsgDlgs, CRE702;

{$R *.DFM}

procedure TFTOficio.z2bbtnImprimeClick(Sender: TObject);
//////// Para sustituir Tipo CTRL + R del DELPHI
Function Sustituir(pCadena,pEsto,pPor : String) : STring;
var
 xPos : Integer;
begin
   xPos := Pos(pEsto,pCadena);
   Result := '';
   while (xPos <> 0 ) do
    begin
      Result := Result + copy(pCadena,1,xPos-1)+pPor;
      Delete(pCadena,1,xPos+Length(pEsto)-1);
      xPos := Pos(pEsto,pCadena);
    end;
    Result := Result + pCadena;
end;

const
   cMeses : Array[1..12] of String = ('Enero','Febrero','Marzo','Abril','Mayo','Junio',
                                    	'Julio','Agosto','Setiembre','Octubre','Noviembre','Diciembre');
var
  xMeses, xCampo1, xCampo2, xCampo3, xCampo4, xCampo5, xCampo6, xCampo7, xCampo8,
  xCiudad, xLinea, xTmonAbr, xTmondes, xCampo9, xCampo10, xCampo11, xCampo12, xCampo13, xCampo14, xSql : String;
  xAno, xMes, xDia : Word;
  xFalta, xI : Integer;
  xTotal : double;
  xAgen, xDpto, xNuevoCampo1, xNuevoCampo, xAgencias, xRutaWord : String;
begin
  if Fprincipal.MtxOfi.FMant.dbgFiltro.SelectedList.Count = 0 then
   begin
  	 Information(Caption, 'No Hay Oficio(s) Seleccionado(s)');
    Exit;
   end;

  Try
	 edtNomArch.visible := False;
    xCampo5 := Fprincipal.MtxOfi.FMant.cds2.fieldbyname('NOFID').AsString;
    xCampo5 := dm1.cdsOficio.FieldByName('NOFID').AsString;
    Fprincipal.MtxOfi.FMant.cds2.DisableControls;
    DecodeDate(Date,xANo,xMes,xDia);
    Case xMes of
      1 : xMeses := cMeses[xMes];
      2 : xMeses := cMeses[xMes];
      3 : xMeses := cMeses[xMes];
      4 : xMeses := cMeses[xMes];
      5 : xMeses := cMeses[xMes];
      6 : xMeses := cMeses[xMes];
      7 : xMeses := cMeses[xMes];
      8 : xMeses := cMeses[xMes];
      9 : xMeses := cMeses[xMes];
      10: xMeses := cMeses[xMes];
      11: xMeses := cMeses[xMes];
      12: xMeses := cMeses[xMes];
    end;
  If FPrincipal.MtxOfi.FMant.dbgFiltro.SelectedList.Count > 0 then
   Begin
    xSQL := 'SELECT CIADES CAMPO01, '+QuotedStr('Sistema de Seguridad y Bienestar')+' '+
            'CAMPO02, '+QuotedStr('SOCIAL del Magisterio')+' CAMPO03, CIALUGAR ||'+
            quotedstr(', '+FloatToStr(xDia)+' de '+xMeses+' del '+FloatToStr(xAno))+' '+
            'CAMPO04 FROM TGE101 WHERE CNTCONSOL ='+quotedstr('S');
    dm1.cdsQry1.Close;
    dm1.cdsQry1.DataRequest(xSQL);
    dm1.cdsQry1.Open;

    xCampo1 := Dm1.cdsQry1.FieldByName('CAMPO01').AsString;
    xCampo2 := Dm1.cdsQry1.FieldByName('CAMPO02').AsString;
    xCampo3 := Dm1.cdsQry1.FieldByName('CAMPO03').AsString;
    xCampo4 := Dm1.cdsQry1.FieldByName('CAMPO04').AsString;
    xCampo5 := Fprincipal.MtxOfi.FMant.cds2.fieldbyname('NOFID').AsString;
    xSQL := 'TMONID='+quotedstr(Fprincipal.MtxOfi.FMant.cds2.fieldbyname('TMONID').AsString);
    xTMonAbr := Dm1.DisplayDescrip('prvSQL','TGE103','TMONDES,TMONABR',xSql,'TMONABR');
    xTmondes := Dm1.cdsQry.FieldByName('TMONDES').AsString;

   for xI:= 0 to Fprincipal.MtxOfi.FMant.dbgFiltro.SelectedList.Count-1 do
    begin
     If FPrincipal.MtxOfi.FMant.cds2.fieldbyname('ESTADO').AsString = 'INICIAL' Then
      begin
        xSQL := 'TIPDESEID='+quotedstR(Fprincipal.MtxOfi.FMant.cds2.fieldbyname('TIPDESEID').AsString);
        xAgencias := Dm1.DisplayDescrip('prvSQL','CRE104','ACTAGEN',xSql,'ACTAGEN');
        xSQL := 'BANCOID='+quotedstR(Fprincipal.MtxOfi.FMant.cds2.fieldbyname('BANCOID').AsString);
        xCampo6 := Dm1.DisplayDescrip('prvSQL','TGE105','BANCONOM',xSql,'BANCONOM');
        xCAmpo7 := 'OFICINA PRINCIPAL';
        if xAgencias <> 'S' then
          begin
           xSQL:='SELECT '+
                        'A.DEVMTO, A.TRANSFOPE, NROFICIO, '' '' CARGOSA, '' '' REPRESA, '+
                        'B.ASOAPENOM, B.DPTOID, B.ASODNI, B.TIPDOCCOD, B.ASODOCNUM, B.ASOID, '' '' CREID, '' '' CRENUMCTA, '+
                        'C.DPTODES, BANCONOM, '' '' CRELUGGIRO, '' '' CARGOSG, '' '' REPRESG, '+
                        ''' '' CARGOJI, '' '' REPREJI, '' '' CCBCOID, '' '' MONTOTOT, '' '' MONTDES '+
                        'FROM APO305 A, APO201 B, TGE158 C, TGE105 D '+
                 'WHERE TRANSFOPE >='+QuotedStr(DateToStr(dm1.cdsOficio.fieldbyname('FECINI').AsDateTime))+' '+
                 'AND TRANSFOPE <='+QuotedStr(DateToStr(dm1.cdsOficio.fieldbyname('FECFIN').AsDateTime))+' '+
                 'AND TIPDESEID = '+QuotedStr(dm1.cdsOficio.fieldbyname('TIPDESEID').AsString)+' '+
                 'AND NROFICIO='+QuotedStr(dm1.cdsOficio.fieldbyname('NOFID').AsString)+' '+
                        'AND A.ASOID=B.ASOID '+
                        'AND B.DPTOID=C.DPTOID '+
                        'AND A.BANCOID=D.BANCOID';

           Dm1.cdsQry2.Close;
           Dm1.cdsQry2.DataRequest(xSQL);
           Dm1.cdsQry2.Open;
           //** Para la Plantilla1_oficio
           xCampo8  := Dm1.cdsQry2.FieldByName('REPRESA').AsString;
           xCampo9  := Dm1.cdsQry2.FieldByName('CARGOSG').AsString; //FPrincipal.Fprincipal.MtxOfiOficioP.FMant.cds2.fieldbyname('CCBCOID').AsString;
           //xSql := 'TMONID='+quotedstr(FPrincipal.Fprincipal.MtxOfiOficioP.FMant.cds2.fieldbyname('TMONID').AsString);
           //xTMonAbr := Dm1.DisplayDescrip('prvSQL','TGE103','TMONDES,TMONABR',xSql,'TMONABR');
           //xTmondes := Dm1.cdsQry.FieldByName('TMONDES').AsString;
           xCampo10 := Fprincipal.MtxOfi.FMant.cds2.fieldbyname('CCBCOID').AsString;
           xCampo11 := xTMonAbr;
           xCampo12 := FloatToStrF(Fprincipal.MtxOfi.FMant.cds2.fieldbyname('MONTOTOT').AsFloat,ffFixed,15,2);
           xCampo13 := Fprincipal.MtxOfi.FMant.cds2.fieldbyname('MONTDES').AsString + ' '+xTmonDes;
           xCampo14 := IntToStr(DM1.cdsQry2.Recordcount);

           wwDBRichEdit1.Width := 800;
           wwDBRichEdit2.Width := 800;
           wwDBRichEdit1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName ) +wRutaRpt+'\Plantilla1_Oficio.RTF');
           wwDBRichEdit2.Lines.Clear;
           wwDBRichEdit1.Font.Name := 'Courier New';
           wwDBRichEdit2.Font.Name := 'Courier New';
           wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit1.Lines.Text,'CAMPO01',xCampo1);
           wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO02',xCampo2);
           wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO03',xCampo3);
           wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO04',xCampo4);
           wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO05',xCampo5);

           wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO06',xCampo6);
           wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO07',xCampo7);
           wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO08',xCampo8);
           wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO09',xCampo9);
           wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO10',xCampo10);
           wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO11',xCampo11);
           wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO12',xCampo12);
           wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO13',xCampo13);
           wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO14',xCampo14);

           wwDBRichEdit2.Lines.SaveToFile(ExtractFilePath(Application.ExeName ) +wRutaRpt+'\Oficio1_'+Trim(xCampo5)+'.RTF');
           xRutaWord := ExtractFilePath('C:\Archivos de programa\Microsoft Office\Office\Winword.exe') ;
           rchtPagina.LoadFromFile(ExtractFilePath(Application.ExeName ) +wRutaRpt+'\Oficio1_'+Trim(xCampo5)+'.RTF');
           rptOficio.Print;

           //** Para la Plantilla1_1_oficio
           wwDBRichEdit1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName ) +wRutaRpt+'\Plantilla1_1_Oficio.RTF');
           wwDBRichEdit2.Lines.Clear;
           wwDBRichEdit1.Font.Name := 'Courier New';
           wwDBRichEdit2.Font.Name := 'Courier New';
           wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit1.Lines.Text,'CAMPO01',xCampo1);
           wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO02',xCampo2);
           wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO03',xCampo3);
           wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO04',xCampo4);
           wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO05',xCampo5);

           Dm1.cdsQry2.First;
           xTotal := 0;
           while not Dm1.cdsQry2.Eof do
            begin
             xSql := 'DPTOID='+quotedstr(Dm1.cdsQry2.FieldByName('DPTOID').AsString);
             xCiudad := Dm1.DisplayDescrip('prvSQL','TGE158','DPTOABR',xSql,'DPTOABR');
             xNuevoCampo := Copy(Dm1.cdsQry2.FieldByName('ASOAPENOM').AsString,1,35);
             xFalta := 0;
             If Length(xNuevoCampo) < 35 then
              begin
               xFalta := 35 - Length(xNuevoCampo);
               For xFalta := 0 to xFalta -1 do
                 xNuevoCampo := xNuevoCampo + ' ';
              end;

             xNuevoCampo1 := FloatToStrF(Dm1.cdsQry2.FieldByName('DEVMTO').AsFloat,ffFixed,15,2);
             If Length(xNuevoCampo1) < 10 then
              begin
               xFalta := 10 - Length(xNuevoCampo1);
               For xFalta := 0 to xFalta -1 do
                 xNuevoCampo1 := ' '+xNuevoCampo1;
              end;

             If Length(xCiudad) < 15 then
              begin
               xFalta := 15 - Length(xCiudad);
               For xFalta := 0 to xFalta -1 do
                 xCiudad := xCiudad + ' ';
              end;
             wwDBRichEdit2. Lines.Insert(11,xNuevoCampo+
             ' '+ xNuevoCampo1 +
             '      '+xCiudad);
             xTotal := xTotal + Dm1.cdsQry2.FieldByName('DEVMTO').AsFloat;
             scFILES.Lines.Add(xLinea);
             DM1.cdsQry2.next;
            end;
           xCAmpo8 := IntToStr(DM1.cdsQry2.Recordcount);
           xCAmpo9 := FloatToStrF(xTotal,ffFixed,15,2);
           wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO08',xCampo8);
           wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO09',xCampo9);

           wwDBRichEdit2.Lines.SaveToFile(ExtractFilePath(Application.ExeName ) +wRutaRpt+'\Oficio1_1_'+Trim(xCampo5)+'.RTF');
           xRutaWord := ExtractFilePath('C:\Archivos de programa\Microsoft Office\Office\Winword.exe') ;
           rchtPagina.LoadFromFile(ExtractFilePath(Application.ExeName ) +wRutaRpt+'\Oficio1_1_'+Trim(xCampo5)+'.RTF');
           rptOficio.Print;
           //WinExecAndWait32(xRutaWord+'Winword.exe ' +ExtractFilePath(Application.ExeName ) +wRutaRpt+'\Oficio1_1_'+Trim(xCampo5)+'.RTF',1);

           //** Para la Plantilla2_oficio
           if DM1.cdsQry2.Recordcount >= 10 then
            begin
             xCampo10  := IntToStr(DM1.cdsQry2.Recordcount);
             xSql := 'TMONID='+quotedstr(Fprincipal.MtxOfi.FMant.cds2.fieldbyname('TMONID').AsString);
             xTMonAbr := Dm1.DisplayDescrip('prvSQL','TGE103','TMONDES,TMONABR',xSql,'TMONABR');
             xTmondes := Dm1.cdsQry.FieldByName('TMONDES').AsString;
             xCampo11 := xTMonAbr;
             xCampo12 := FloatToStrF(Fprincipal.MtxOfi.FMant.cds2.fieldbyname('MONTOTOT').AsFloat,ffFixed,15,2);
             xCampo13 := Fprincipal.MtxOfi.FMant.cds2.fieldbyname('MONTDES').AsString;
             xCampo14 := xTmondes;

             wwDBRichEdit1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName ) +wRutaRpt+'\Plantilla2_Oficio.RTF');
             wwDBRichEdit2.Lines.Clear;
             wwDBRichEdit1.Font.Name := 'Courier New';
             wwDBRichEdit2.Font.Name := 'Courier New';
             wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit1.Lines.Text,'CAMPO01',xCampo1);
             wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO02',xCampo2);
             wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO03',xCampo3);
             wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO04',xCampo4);
             wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO05',xCampo5);
             wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO06',xCampo5);
             wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO07',xCampo5);
             wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO08',xCampo8);
             wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO09',xCampo9);
             wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO10',xCampo10);
             wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO11',xCampo11);
             wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO12',xCampo12);
             wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO13',xCampo13);
             wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO14',xCampo14);

             wwDBRichEdit2.Lines.SaveToFile(ExtractFilePath(Application.ExeName ) +wRutaRpt+'\Oficio2_'+Trim(xCampo5)+'.RTF'); //('C:\SolCreditos\CREOFICIO\Oficio2.RTF');
             xRutaWord := ExtractFilePath('C:\Archivos de programa\Microsoft Office\Office\Winword.exe') ;
             rchtPagina.LoadFromFile(ExtractFilePath(Application.ExeName ) +wRutaRpt+'\Oficio2_'+Trim(xCampo5)+'.RTF');
             rptOficio.Print;
            end;
          end
        else
         If xAgencias = 'S' then
          begin
           //** Para la Plantilla3_oficio
           xSQL:='SELECT A.DEVMTO, B.ASOAPENOM, B.DPTOID, B.ASODNI, C.DPTODES, BANCONOM, '' '' CRELUGGIRO, '' '' CARGOSG, '' '' REPRESG '+
                        'FROM APO305 A, APO201 B, TGE158 C, TGE105 D '+
                 'WHERE TRANSFOPE >='+QuotedStr(DateToStr(dm1.cdsOficio.fieldbyname('FECINI').AsDateTime))+' '+
                 'AND TRANSFOPE <='+QuotedStr(DateToStr(dm1.cdsOficio.fieldbyname('FECFIN').AsDateTime))+' '+
                 'AND TIPDESEID = '+QuotedStr(dm1.cdsOficio.fieldbyname('TIPDESEID').AsString)+' '+
                 'AND NROFICIO='+QuotedStr(dm1.cdsOficio.fieldbyname('NOFID').AsString)+' '+
                        'AND A.ASOID=B.ASOID '+
                        'AND B.DPTOID=C.DPTOID '+
                        'AND A.BANCOID=D.BANCOID';

           Dm1.cdsQry2.Close;
           Dm1.cdsQry2.DataRequest(xSql);
           Dm1.cdsQry2.Open;
           xCampo8  := Dm1.cdsQry2.FieldByName('REPRESG').AsString;
           xCampo9  := Dm1.cdsQry2.FieldByName('CARGOSG').AsString;
           xCAmpo10 := Fprincipal.MtxOfi.FMant.cds2.fieldbyname('CCBCOID').AsString;
           wwDBRichEdit1.Width := 800;
           wwDBRichEdit2.Width := 800;
           wwDBRichEdit1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName ) +wRutaRpt+'\Plantilla3_Oficio.RTF');
           wwDBRichEdit2.Lines.Clear;
           wwDBRichEdit1.Font.Name := 'Courier New';
           wwDBRichEdit2.Font.Name := 'Courier New';
           wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit1.Lines.Text,'CAMPO01',xCampo1);
           wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO02',xCampo2);
           wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO03',xCampo3);
           wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO04',xCampo4);
           wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO05',xCampo5);
           wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO06',xCampo6);
           wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO07',xCampo7);
           wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO08',xCampo8);
           wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO09',xCampo9);
           wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO10',xCampo10);
           Dm1.cdsQry2.First;
           xTotal := 0;
           while not Dm1.cdsQry2.Eof do
            begin
               xNuevoCampo := Copy(Dm1.cdsQry2.FieldByName('ASOAPENOM').AsString,1,15);
               xFalta := 0;
               if Length(xNuevoCampo) < 15 then
                begin
                  xFalta := 15 - Length(xNuevoCampo);
                  For xFalta := 0 to xFalta -1 do
                     xNuevoCampo := xNuevoCampo + ' ';
                end;

               xNuevoCampo1 := FloatToStrF(Dm1.cdsQry2.FieldByName('DEVMTO').AsFloat,ffFixed,15,2);
               if Length(xNuevoCampo1) < 10 then
                begin
                  xFalta := 10 - Length(xNuevoCampo1);
                  For xFalta := 0 to xFalta -1 do
                     xNuevoCampo1 := ' '+xNuevoCampo1;
                end;

               xAgen := Copy(Dm1.cdsQry2.FieldByName('BANCONOM').AsString,1,10);
               xFalta := 0;
               if Length(xAgen) < 10 then
                begin
                  xFalta := 10 - Length(xAgen);
                  For xFalta := 0 to xFalta -1 do
                     xAgen := xAgen + ' ';
                end;

               xDpto := Copy(Dm1.cdsQry2.FieldByName('DPTODES').AsString,1,10);
               xFalta := 0;
               if Length(xDpto) < 10 then
                begin
                  xFalta := 10 - Length(xDpto);
                  For xFalta := 0 to xFalta -1 do
                     xDpto := xDpto+' ';
                end;

               wwDBRichEdit2. Lines.Insert(27,xNuevoCampo+
               ' '+ xTMonAbr + ' '+xNuevoCampo1+
               ' '+xAgen + ' '+xDpto+' '+ Dm1.cdsQry2.FieldByName('ASODNI').AsString);
               xTotal := xTotal + Dm1.cdsQry2.FieldByName('DEVMTO').AsFloat;
               DM1.cdsQry2.next;
            end;
           xCAmpo11 := IntToStr(DM1.cdsQry2.Recordcount);
           xCAmpo12 := xTMonAbr + ' '+FloatToStrF(xTotal,ffFixed,15,2);
           wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO11',xCampo11);
           wwDBRichEdit2.Lines.Text := Sustituir(wwDBRichEdit2.Lines.Text,'CAMPO12',xCampo12);

           wwDBRichEdit2.Lines.SaveToFile(ExtractFilePath(Application.ExeName ) +wRutaRpt+'\Oficio3_'+Trim(xCampo5)+'.RTF');
           rchtPagina.LoadFromFile(ExtractFilePath(Application.ExeName ) +wRutaRpt+'\Oficio3_'+Trim(xCampo5)+'.RTF');
           rptOficio.Print;
          end;

       //** 29/10/2002 - pjsv
       xSql := 'UPDATE APO209 SET ESTADO='+quotedstr('IMPRESO')+
               ' , OFIGLOSA ='+quotedstr(xGlosa)+
               ' WHERE NOFID='+quotedstr(Trim(xCampo5));
       DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
       FPrincipal.MtxOfi.RefreshFilter;
      end
     else
      Begin
         ShowMessage('El Oficio N° :'+
                      FPrincipal.MtxOfi.FMant.cds2.fieldbyname('NOFID').AsString+
                      'ya se encuentra Aceptado');
      end;
    end;
   end
  else
   Showmessage('No Hay Oficio(s) seleccionado(s)');
 Finally
  FPrincipal.MtxOfi.FMant.cds2.EnableControls;
 end;
end;

function WinExecAndWait32(FileName:String; Visibility:integer):integer;
var
  zAppName:array[0..512] of char;
  zCurDir:array[0..255] of char;
  WorkDir:String;
  StartupInfo:TStartupInfo;
  ProcessInfo:TProcessInformation;
  Resultado,exitCode: DWord;
begin
  StrPCopy(zAppName,FileName);
  GetDir(0,WorkDir);
  StrPCopy(zCurDir,WorkDir);
  FillChar(StartupInfo,Sizeof(StartupInfo),#0);
  StartupInfo.cb := Sizeof(StartupInfo);

  StartupInfo.dwFlags := STARTF_USESHOWWINDOW;
  StartupInfo.wShowWindow := Visibility;
  CreateProcess(nil,
    zAppName,                      { pointer to command line string }
    nil,                           { pointer to process security attributes}
    nil,                           { pointer to thread security attributes}
    false,                         { handle inheritance flag }
    CREATE_NEW_CONSOLE or          { creation flags }
    NORMAL_PRIORITY_CLASS,
    nil,                           { pointer to new environment block }
    nil,                           { pointer to current directory name }
    StartupInfo,                   { pointer to STARTUPINFO }
    ProcessInfo);

  {Espera a que termine la ejecucion}
  {Wait until execution finish}
  repeat
    exitCode := WaitForSingleObject( ProcessInfo.hProcess,1000);
    Application.ProcessMessages;
  until (exitCode <> WAIT_TIMEOUT);
  GetExitCodeProcess(ProcessInfo.hProcess,Resultado);
  MessageBeep(0);
  CloseHandle(ProcessInfo.hProcess );
  Result:=Resultado;
end;

procedure TFTOficio.z2bbtndisketteClick(Sender: TObject);
var
 xI : Integer;
 xLinea, xAgencias : String;
begin
 Try
   edtNomArch.visible := False;
	if Fprincipal.MtxOfi.FMant.dbgFiltro.SelectedList.Count > 0 then
	 begin
     for xI:= 0 to Fprincipal.MtxOfi.FMant.dbgFiltro.SelectedList.Count-1 do
    	begin
       xSQL:='SELECT ''1123'' EMISION, ''0022'' ENTIDAD, ''1'' EXONERADO, '+
       				'''18'' BANCO, ''0'' TIPGIR, APO305.AGENBANCOID, '+
              'CRE104.ACTAGEN, APO201.ASODNI, SUBSTR(APO305.ASOAPENOM,1,30) ASOAPENOM, '+
              'APO305.DEVMTO, ''041'' DEPOSITO, APO305.ASONCTA, APO209.TIPDESEID, '+
              '''....................................................................................................'' PUNTO '+
              'FROM APO305, APO201, APO209, CRE104 '+
              'WHERE APO305.ASOID=APO201.ASOID '+
              'AND TRIM(APO209.NOFID)=TRIM(APO305.NROFICIO) '+
              'AND APO305.NROFICIO='+quotedstr(DM1.cdsOficio.fieldbyname('NOFID').asstring)+
              'AND APO209.TIPDESEID=CRE104.TIPDESEID';
       Dm1.cdsQry2.Close;
       Dm1.cdsQry2.DataRequest(xSql);
       Dm1.cdsQry2.Open;
       if Dm1.cdsQry2.RecordCount <= 10 then
        begin
         while not Dm1.cdsQry2.Eof do
          begin
           if Dm1.cdsQry2.FieldByName('ACTAGEN').AsString = 'S' then
            begin
              xLinea:='';
              xLinea:= DM1.cdsQry2.fieldbyname('EMISION').AsString;
              xLinea:= xLinea+DM1.cdsQry2.fieldbyname('ENTIDAD').AsString;
              xLinea:= xLinea+DM1.cdsQry2.fieldbyname('AGENBANCOID').AsString;
              xLinea:= xLinea+DM1.cdsQry2.fieldbyname('ASOAPENOM').AsString;
              xLinea:= xLinea+DM1.cdsQry2.fieldbyname('ASODNI').AsString;
              xLinea:= xLinea+ DM1.StrZero(DM1.cdsQry2.fieldbyname('DEVMTO').AsString,15);
              xLinea:= xLinea+DM1.cdsQry2.fieldbyname('EXONERADO').AsString;
              xLinea:= xLinea+DM1.cdsQry2.fieldbyname('BANCO').AsString;
              xLinea:= xLinea+DM1.cdsQry2.fieldbyname('TIPGIR').AsString;
              scFILES.Lines.Add(xLinea);
            end
           else
            begin
              xLinea:='';
              xLinea:= DM1.cdsQry2.fieldbyname('DEPOSITO').AsString;
              xLinea:= xLinea+DM1.cdsQry2.fieldbyname('ASONCTA').AsString;
              xLinea:= xLinea+DM1.StrZero(DM1.cdsQry2.fieldbyname('DEVMTO').AsString,15);
              xLinea:= xLinea+DM1.cdsQry2.fieldbyname('PUNTO').AsString;
              scFILES.Lines.Add(xLinea);
            end;
            DM1.cdsQry2.next;
          end;
         if savdlg1.Execute then
          begin
          	edtNomArch.visible := True;
          	edtNomArch.Text := savdlg1.FileName;
          	scFILES.Lines.SaveToFile(edtNomArch.Text);
        	 end;
        end;
  		end;
    end
 	else
    Showmessage('No Hay Oficio(s) seleccionado(s)');
  finally
  	//Fprincipal.MtxOfi.FMant.cds2.EnableControls;
  end;
end;


procedure TFTOficio.OnEditAso(Sender: TObject; MantFields: TFields);
var
  CodigoAso, xSql, xUse : String;
Begin
  CodigoAso :=DM1.cdsAsoX.FieldByName('ASOID').AsString;
  sSQL := 'SELECT ASOID,ASOCODMOD,ASOCODAUX,ASOCODPAGO,ASOAPENOM,USEID,UPROID, '+
          'UPAGOID,ASORESNOM,ASOEMAIL, '+
          'ASOFRESNOM,RESID,REGPENID,ASOSITID,ASOFACT, ASOTIPID,VIAID,VIANOMBRE,ASONUMDIR, '+
          'ASODPTO,ZONAID,ZONANOMB,UBIGEOID,DPTOID,ZIPID,CIUDID,PAISID,ASOLNACID,REFDOM, '+
          'ASOFECNAC,ASOTELF1,ASOTELF2,TIPDOCCOD,ASODOCNUM,ASOLIBMIL,ASORUC,ESTCIVID, '+
          'ASOSEXO,BANCOID,ASONCTA,SITCTA,ASODNI,GRAACID,GRAINSID,PROFID,ASOFLUGING, '+
          'ASODIR FROM APO201 WHERE ASOID='+QuotedStr(CodigoAso);
  DM1.FiltraCDS(DM1.cdsAso,sSQL);

  xSQL := 'SELECT CREDID,TIPGARID,TIPGARDES,GLOSA,TIPGARNRO,'+
          'TIPGARFEC,TIPGARVIG,USUARIO,FREG,HREG '+
          ' FROM CRE202 WHERE CREDID='+QuotedStr('xx');
  DM1.FiltraCDS(DM1.cdsGarantia,xSQL);

  TMant(Sender).FMant.Close;
End;


procedure TFTOficio.PanelToolAso(Sender: TObject);
var
	pgx : TPanel;
	plx : TPanel;
begin
  pgx := FToolAso.pnlTool;
  plx := TMant(Sender).FMant.pnlBtns;
  plx.Height   := pgx.Height + 5;
  plx.AutoSize := True;
  pgx.Parent   := TMant(Sender).FMant.pnlBtns;
  pgx.Align    := alClient;
  TMant(Sender).FMant.pnlBtns.Visible  := True;
End;

procedure TFTOficio.rptOficioPreviewFormCreate(Sender: TObject);
begin
	rptOficio.PreviewForm.ClientHeight := 500;
	rptOficio.PreviewForm.ClientWidth  := 650;
	TppViewer(rptOficio.PreviewForm.Viewer).ZoomSetting := zsPagewidth;
end;

procedure TFTOficio.z2bbtnAceptaClick(Sender: TObject);
Const
 xCaja302 : String = 'CIAID,TDIARID,ECANOMM,ECNOCOMP,CLAUXID,PROV,PROVRUC,ECFCOMP,'+
                     'ECFEMICH,ECFPAGOP,FPAGOID,DOCID,ECNODOC,TMONID,ECTCAMB,ECMTOORI,'+
                     'ECMTOLOC,ECMTOEXT,BANCOID,CCBCOID,CPTOID,CUENTAID,ECGLOSA,ECLOTE,'+
                     'ECELABO,ECESTADO,ECCONTA,ECUSER,ECFREG,ECHREG,ECANO,ECMM,ECDD,'+
                     'ECSS,ECSEM,ECTRI,ECAASS,ECAASEM,ECAATRI,EC_IE,CAJARETIGV,'+
                     'AUXID,CCBCOVOUCH,ECNOCHQ,ECGIRA,ECFCOBCH,ECCHQEMI,EC_PROCE';
var
 xI : Integer;
 xNumComp1,xNumComp2,xCampo,xSql : String;
begin
  If FPrincipal.MtxOfi.FMant.dbgFiltro.SelectedList.Count > 0 then
   Begin
    for xI:= 0 to FPrincipal.MtxOfi.FMant.dbgFiltro.SelectedList.Count-1 do
     begin
       If FPrincipal.MtxOfi.FMant.cds2.fieldbyname('ESTADO').AsString = 'ACEPTADO' then
        Showmessage('El Oficio ya se encuentra Aceptado')
       else
        If FPrincipal.MtxOfi.FMant.cds2.fieldbyname('ESTADO').AsString = 'IMPRESO' then
         begin
           dm1.cdsUSE.open;
           dm1.cdsUSE.indexfieldnames := 'USEID';
          //** selecciona los creditos que estan involucrados con el oficio
{          Xsql:= 'SELECT C.TIPDOCCOD,C.ASODOCNUM,A.ASOID,A.ASOAPENOM,A.CREFOTORG,'+
                 'B.CREMTOOTOR,A.CREDID,A.CRENUMCTA,A.DPTOID,A.CRELUGGIRO,A.useid,'+
                 'D.BANCONOM,F.CARGOSA,F.REPRESA,F.CARGOSG,F.REPRESG,F.CARGOJI,F.REPREJI,'+
                 'E.CCBCOID,E.MONTOTOT,E.MONTDES,E.CREMOD,E.CREUSER,E.NOFID,FREG'+
                 ' FROM APO305 A,APO201 C,TGE105 D,APO209 E,'+
                 ' (SELECT B.ASOID,B.ASOAPENOM,B.useid,SUM(devmto) cremtootor from'+
                 ' APO305 B where B.NROFICIO='+quotedstr(FPrincipal.MtxOfi.FMant.cds2.FieldByName('NOFID').AsString)+
                 ' group by B.ASOID,B.ASOAPENOM,B.useid) B,'+
                 ' (SELECT G.BANCOID,MAX(G.CSA) CARGOSA,MAX(G.RSA) REPRESA,MAX(G.CSG) '+
                 ' CARGOSG,   MAX(G.RSG) REPRESG, MAX(G.CJI) CARGOJI  '+
                 ' , MAX(G.RJI)  REPREJI  FROM (SELECT BANCOID,DECODE(FLGCAR,''SA'','+
                 ' REPCAR,NULL) CSA '+
                 ' ,DECODE(FLGCAR,''SA'',REPNOM,NULL) RSA '+
                 ' ,DECODE(FLGCAR,''SG'',REPCAR,NULL) CSG '+
                 ' ,DECODE(FLGCAR,''SG'',REPNOM,NULL) RSG '+
                 ' ,DECODE(FLGCAR,''JI'',REPCAR,NULL) CJI '+
                 ' ,DECODE(FLGCAR,''JI'',REPNOM,NULL) RJI '+
                 ' FROM CRE107 WHERE BANCOID='+quotedstr(FPrincipal.MtxOfi.FMant.cds2.FieldByName('BANCOID').AsString)+
                 ' ) G GROUP BY G.BANCOID ) F'+
                 ' WHERE A.NROFICIO='+quotedstr(FPrincipal.MtxOfi.FMant.cds2.FieldByName('NOFID').AsString)+
                 ' AND A.ASOID = B.ASOID '+
                 ' AND A.ASOID=C.ASOID AND E.BANCOID='+quotedstr(FPrincipal.MtxOfi.FMant.cds2.FieldByName('BANCOID').AsString)+
                 ' AND D.BANCOID=E.BANCOID AND TRIM(E.NOFID)=TRIM(A.NROFICIO)';
}
          xSql := xSql + 'SELECT * FROM APO305 '+
                       'WHERE TRANSFOPE >='+QuotedStr(DateToStr(DM1.cdsOficio.fieldbyname('FECINI').AsDateTime))+' '+
                       'AND TRANSFOPE <='+QuotedStr(DateToStr(DM1.cdsOficio.fieldbyname('FECFIN').AsDateTime))+' '+
                       'AND TIPDESEID='+QuotedStr(DM1.cdsOficio.fieldbyname('TIPDESEID').AsString)+' '+
                       'AND NROFICIO='+QuotedStr(DM1.cdsOficio.fieldbyname('NOFID').AsString);
          DM1.cdsReporte.Close;
          DM1.cdsReporte.DataRequest(xSql);
          DM1.cdsReporte.Open;

          //** JALA EL TIPO DE DOCUMENTO PARA TOMAR EL NUMERO DE COMPROBANTE
          xSql := 'SELECT DOCID FROM TGE110 WHERE DOCMOD LIKE '+quotedstr('%'+dm1.wModulo+'%');
          dm1.cdsQry.Close;
          dm1.cdsQry.DataRequest(xSql);
          dm1.cdsQry.Open;
          xDocid := dm1.cdsQry.fieldByName('DOCID').AsString;
          xSql := 'select  NVL(MAX(CNTCOMPROB),0) +1 TOTAL from cnt301'+
                  ' where CIAID='+quotedstr(FPrincipal.MtxOfi.FMant.cds2.fieldbyname('CIAID').AsString)+
                  ' and TDIARID='+quotedstr(FPrincipal.MtxOfi.FMant.cds2.fieldbyname('CCBCOVOUCH').AsString)+
                  ' AND CNTANOMM='+quotedstr(FPrincipal.MtxOfi.FMant.cds2.fieldbyname('APOANO').AsString+
                                       FPrincipal.MtxOfi.FMant.cds2.fieldbyname('APOMES').AsString);
          dm1.cdsQry.Close;
          dm1.cdsQry.DataRequest(xSql);
          dm1.cdsQry.Open;
          xNumComp1 := dm1.cdsQry.fieldByName('TOTAL').AsString;

          xSql := 'select NVL(MAX(ECNOCOMP),0) +1 TOTAL from CAJA302'+
                  ' where CIAID='+quotedstr(FPrincipal.MtxOfi.FMant.cds2.fieldbyname('CIAID').AsString)+
                  ' and TDIARID='+quotedstr(FPrincipal.MtxOfi.FMant.cds2.fieldbyname('CCBCOVOUCH').AsString)+
                  ' AND ECANOMM='+quotedstr(FPrincipal.MtxOfi.FMant.cds2.fieldbyname('APOANO').AsString+
                                       FPrincipal.MtxOfi.FMant.cds2.fieldbyname('APOMES').AsString);
          dm1.cdsQry.Close;
          dm1.cdsQry.DataRequest(xSql);
          dm1.cdsQry.Open;
          xNumComp2 := dm1.cdsQry.fieldByName('TOTAL').AsString;

          If xNumComp1 < xNumComp2 then
           xMaxNumComp := xNumComp2
          else
           xMaxNumComp := xNumComp1;
          //******************

          //** ACTUALIZO CAJA302
          //** CIAID
          xCampo := quotedstr(FPrincipal.MtxOfi.FMant.cds2.fieldbyname('CIAID').AsString)+',';
          xCiaid := FPrincipal.MtxOfI.FMant.cds2.fieldbyname('CIAID').AsString;
          //** TDIARID
          xCampo := xCampo + quotedstr(FPrincipal.MtxOfi.FMant.cds2.fieldbyname('CCBCOVOUCH').AsString)+',';
          xTDiarid := FPrincipal.MtxOfi.FMant.cds2.fieldbyname('CCBCOVOUCH').AsString;
          //** ECANOMM
          xCampo := xCampo + quotedstr(FPrincipal.MtxOfi.FMant.cds2.fieldbyname('APOANO').AsString+
                                       FPrincipal.MtxOfi.FMant.cds2.fieldbyname('APOMES').AsString)+',';
          xEcanomm := FPrincipal.MtxOfi.FMant.cds2.fieldbyname('APOANO').AsString+
                                       FPrincipal.MtxOfi.FMant.cds2.fieldbyname('APOMES').AsString;
          //** ECNOCOMP
          xCampo := xCampo + quotedstr(xMaxNumComp)+',';
          //**CLAUXID
          xCampo := xCampo + quotedstr(FPrincipal.MtxOfi.FMant.cds2.fieldbyname('CLAUXID').AsString)+',';
          xClauxid := FPrincipal.MtxOfi.FMant.cds2.fieldbyname('CLAUXID').AsString;
          //** PROV
          xCampo := xCampo + quotedstr(FPrincipal.MtxOfi.FMant.cds2.fieldbyname('AUXID').AsString)+',';
          xAuxid := FPrincipal.MtxOfi.FMant.cds2.fieldbyname('AUXID').AsString;
          //** PROVRUC
          xCampo := xCampo + quotedstr(FPrincipal.MtxOfi.FMant.cds2.fieldbyname('AUXRUC').AsString)+',';
          //** ECFCOMP
          xCampo := xCampo + quotedstr(FPrincipal.MtxOfi.FMant.cds2.fieldbyname('FREG').AsString)+',';
          xFechaCom := FPrincipal.MtxOfi.FMant.cds2.fieldbyname('FREG').AsDateTime;
          //** ECFEMICH
          xCampo := xCampo + quotedstr(FPrincipal.MtxOfi.FMant.cds2.fieldbyname('FREG').AsString)+',';
          //** ECFPAGOP
          xCampo := xCampo + quotedstr(FPrincipal.MtxOfi.FMant.cds2.fieldbyname('FREG').AsString)+',';
          //** FPAGOID
          xCampo := xCampo + quotedstr(FPrincipal.MtxOfi.FMant.cds2.fieldbyname('FPAGOID').AsString)+',';
          xFPagoid := FPrincipal.MtxOfi.FMant.cds2.fieldbyname('FPAGOID').AsString;
          //** DOCID
          xCampo := xCampo + quotedstr(xDocid)+',';
          //** ECNODOC
          xCampo := xCampo +  quotedStr(FPrincipal.MtxOfi.FMant.cds2.FieldByName('NOFID').AsString)+', ';
          xNodoc := FPrincipal.MtxOfi.FMant.cds2.FieldByName('NOFID').AsString;
          //** TMONID
          xCampo := xCampo +  quotedStr(FPrincipal.MtxOfi.FMant.cds2.FieldByName('TMONID').AsString)+', ';
          xTmonid := FPrincipal.MtxOfi.FMant.cds2.FieldByName('TMONID').AsString;
          //** ECTCAMB
          xCampo := xCampo +  FPrincipal.MtxOfi.FMant.cds2.FieldByName('TCAMB').AsString+', ';
          xECTCAMB := FPrincipal.MtxOfi.FMant.cds2.FieldByName('TCAMB').AsFloat;
          //** ECMTOORI
          xCampo := xCampo +  FPrincipal.MtxOfi.FMant.cds2.FieldByName('MONTOTOT').AsString+', ';
          cPgoOri := FPrincipal.MtxOfi.FMant.cds2.FieldByName('MONTOTOT').AsFloat;
          //** ECMTOLOC
          xCampo := xCampo +  FPrincipal.MtxOfi.FMant.cds2.FieldByName('MONTOTOT').AsString+', ';
          cPgoLoc := FPrincipal.MtxOfi.FMant.cds2.FieldByName('MONTOTOT').AsFloat;
          //** ECMTOEXT
          xCampo := xCampo +  FloattoStr(FRound(FPrincipal.MtxOfi.FMant.cds2.FieldByName('MONTOTOT').AsFloat/
                                                          FPrincipal.MtxOfi.FMant.cds2.FieldByName('TCAMB').AsFloat ,15,4))+',';
          cPgoExt := FPrincipal.MtxOfi.FMant.cds2.FieldByName('MONTOTOT').AsFloat/
                     FPrincipal.MtxOfi.FMant.cds2.FieldByName('TCAMB').AsFloat;
          //** BANCOID
          xCampo := xCampo +  quotedStr(FPrincipal.MtxOfi.FMant.cds2.FieldByName('BANCOID').AsString)+', ';
          xBancoid := FPrincipal.MtxOfi.FMant.cds2.FieldByName('BANCOID').AsString;
          //** CCBCOID
          xCampo := xCampo +  quotedStr(FPrincipal.MtxOfi.FMant.cds2.FieldByName('CCBCOID').AsString)+', ';
          xCcBcoid := FPrincipal.MtxOfi.FMant.cds2.FieldByName('CCBCOID').AsString;
          //** CPTOID
          xCampo := xCampo +  quotedStr(FPrincipal.MtxOfi.FMant.cds2.FieldByName('CPTOID').AsString)+', ';
          xCptoid := FPrincipal.MtxOfi.FMant.cds2.FieldByName('CPTOID').AsString;
          //** CUENTAID
          xCampo := xCampo +  quotedStr(FPrincipal.MtxOfi.FMant.cds2.FieldByName('CUENTAID').AsString)+', ';
          xCuentaid := FPrincipal.MtxOfi.FMant.cds2.FieldByName('CUENTAID').AsString;
          //** ECGLOSA
          xCampo := xCampo +  quotedStr(FPrincipal.MtxOfi.FMant.cds2.FieldByName('OFIGLOSA').AsString)+', ';
          //** ECLOTE
          xCampo := xCampo +  quotedStr('000')+', ';
          //** ECELABO
          xCampo := xCampo +  quotedStr('OFICIOCRE')+', ';
          //** ECESTADO
          xCampo := xCampo +  quotedStr('P')+', ';
          //** ECCONTA
          xCampo := xCampo +  quotedStr('N')+', ';
          //** ECUSER
          xCampo := xCampo +  quotedStr(Dm1.wUsuario)+', ';
          //** ECFREG
          xCampo := xCampo +  wRepFecServi+', ';
          //** ECHREG
          xCampo := xCampo +  wRepTimeServi+', ';
          xSql := 'SELECT * FROM TGE114 WHERE FECHA='+quotedstr(FPrincipal.MtxOfi.FMant.cds2.fieldbyname('FREG').AsString);
          dm1.cdsQry.close;
          dm1.cdsQry.datarequest(xSql);
          dm1.cdsQry.open;
          //** ECANO
          xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECANO').AsString)+', ';
          //** ECMM
          xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECMES').AsString)+', ';
          //** ECDD
          xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECDIA').AsString)+', ';
          //** ECSS
          xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECSS').AsString)+', ';
          //** ECSEM
          xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECSEM').AsString)+', ';
          //** ECTRI
          xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECTRIM').AsString)+', ';
          //** ECAASS
          xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECAASS').AsString)+', ';
          //** ECAASEM
          xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECAASEM').AsString)+', ';
          //** ECAATRI
          xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECAATRI').AsString)+', ';
          //** EC_IE
          xCampo := xCampo +  quotedStr('E')+', ';
          //** CAJARETIGV
          xCampo := xCampo +  quotedStr('N')+', ';
          //** AUXID
          xCampo := xCampo + quotedstr(FPrincipal.MtxOfi.FMant.cds2.fieldbyname('AUXID').AsString)+',';
          //** CCBCOVOUCH
          xCampo := xCampo + quotedstr(FPrincipal.MtxOfi.FMant.cds2.fieldbyname('CCBCOVOUCH').AsString)+',';
          //** ECNOCHQ
          xCampo := xCampo + quotedstr(FPrincipal.MtxOfi.FMant.cds2.fieldbyname('NOFID').AsString)+',';
          //** ECGIRA
          xCampo := xCampo + quotedstr(Dm1.DisplayDescrip('prvSQL','TGE105','BANCONOM',
                                       'BANCOID ='+quotedstr(FPrincipal.MtxOfi.FMant.cds2.fieldbyname('BANCOID').AsString),'BANCONOM'))+',';
          //** ECFCOBCH
          xCampo := xCampo + quotedstr(FPrincipal.MtxOfi.FMant.cds2.fieldbyname('FREG').AsString)+',';
          //** ECCHQEMI
          xCampo := xCampo + quotedstr('S')+','; //** S = me indica que fue emitido
          //** EC_PROCE
          xCampo := xCampo +  quotedStr('3');

          xSql := 'INSERT INTO CAJA302 ('+xCaja302+') VALUES ('+xCampo+')';
          DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

           //** Actualiza Caja301
           ActuCaja301;

          //** Actualiza Saldo TGE401
          ActualizaSaldosTGE401(cPgoOri,cPgoLoc,cPgoExt, '-');

          //** Actualiza Saldo CAJA310
          SaldosCaja310;

          //** Actualizo APO209
          xSql := 'UPDATE APO209 SET ESTADO='+quotedstr('ACEPTADO')+
                 ' WHERE NOFID='+quotedstr(Trim(FPrincipal.MtxOfi.FMant.cds2.fieldbyname('NOFID').AsString));
          DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

          //** Actuliza la provision de los créditos por el rango (CRE313) = CNT301
          // ActuCre313;
           FPrincipal.MtxOfi.RefreshFilter;
         end
       else
        Showmessage('Debe de Imprimirse antes de Aceptar');
     end;
   end
  else
   Showmessage('Debe de Selecionar un Oficio');
end;

procedure TFTOficio.ActualizaSaldosTGE401(ccPgoOri,ccPgoLoc,ccPgoExt: double; sSigno : String);
var
  xDia,xAno,xMes : word;
  xDatAux : StructSaldosAux;
begin
   with  xDatAux do
    begin
     CIAID     :=  xCiaid;
     CLAUXID   :=  xClauxid;
     AUXID     :=  xAuxid;
     MONTOMN   :=  floattostr(ccPgoLoc);
     if trim(MONTOMN) = '' then
      MONTOMN := '0';

     MONTOME   :=  floattostr(ccPgoExt);
     if trim(MONTOME) = '' then
      MONTOME := '0';

     FECHA     :=  xFechaCom;
     if trim(MTOSLOC) = '' then
      MTOSLOC := '0';

     if trim(MTOSEXT) = '' then
      MTOSEXT := '0';

     DecodeDate(xDatAux.FECHA,xAno,xMes,xDia);
//     xMes := strMes(xDatAux.FECHA) ;
//     xAno := strAno(xDatAux.FECHA) ;
     ActSdoAuxiliar(xDatAux.CIAID,FloatToStr(xANO),Dm1.StrZero(FloatToStr(xMES),2),
                        xDatAux.CLAUXID,xDatAux.AUXID ,xDatAux.MONTOMN,
                        xDatAux.MONTOME,xDatAux.MTOSLOC,xDatAux.MTOSEXT,sSigno);
     end;
end;


procedure TFTOficio.ActSdoAuxiliar(const xCIAID, xANO, xMES, xCLAUXID,
  xAUXID, MONTOMN, MONTOME, MTOSLOC, MTOSEXT, xOper: String);
var
   xWhere,xParte1,xParte2,xParte11,xParte22 : String;
   xSQL : String;
   xxSaldo13 : String;
   xxSaldo01, xxSaldo02, xxSaldo03, xxSaldo04, xxSaldo05, xxSaldo06 : String;
   xxSaldo07, xxSaldo08, xxSaldo09, xxSaldo10, xxSaldo11, xxSaldo12 : String;
begin
   xSQL := 'SELECT * FROM XTGE401PER WHERE CIAID = '+quotedstr(xCIAID)+
           ' AND ANO = '+quotedstr(xANO)+
           ' AND CLAUXID = '+quotedstr(xCLAUXID)+
           ' AND AUXID = '+quotedstr(xAUXID);
   DM1.cdsQry.close;
//   DM1.cdsQry.ProviderName := 'prvTGE';
   DM1.Filtracds(DM1.cdsQry,xSQL);

   if DM1.cdsQry.recordcount > 0 then
   begin
      if xOper = '+' then
       XSQL:='UPDATE XTGE401PER '
            + 'SET HABETMN'+XMES+'='+wReplacCeros+'(HABETMN'+xMES+' ,0)+ '+MONTOMN+', '
            +      'HABETME'+XMES+'='+wReplacCeros+'(HABETME'+xMES+' ,0)+ '+MONTOME+', '
            +      'HABESMN'+XMES+'='+wReplacCeros+'(HABESMN'+xMES+' ,0)+ '+MTOSLOC+', '
            +      'HABESME'+XMES+'='+wReplacCeros+'(HABESME'+xMES+' ,0)+ '+MTOSEXT
            + ' WHERE CIAID ='+quotedstr(xCIAID)+' AND ANO ='+quotedstr(xANO)
            +      ' AND CLAUXID='+quotedstr(xCLAUXID)+' AND AUXID  ='+quotedstr(xAUXID)
      else
       XSQL:='UPDATE XTGE401PER '
            + 'SET HABETMN'+XMES+'='+wReplacCeros+'(HABETMN'+xMES+',0) + '+MONTOMN+', '
            +      'HABETME'+XMES+'='+wReplacCeros+'(HABETME'+xMES+',0) + '+MONTOME+', '
            +      'HABESMN'+XMES+'='+wReplacCeros+'(HABESMN'+xMES+',0) + '+MTOSLOC+', '
            +      'HABESME'+XMES+'='+wReplacCeros+'(HABESME'+xMES+',0) + '+MTOSEXT
            +' WHERE CIAID ='+quotedstr(xCIAID)+' AND ANO ='+quotedstr(xANO)
            +      ' AND CLAUXID='+quotedstr(xCLAUXID)+' AND AUXID  ='+quotedstr(xAUXID)
   end
   else
   begin
      XSQL:='INSERT INTO XTGE401PER (CIAID,ANO,CLAUXID,AUXID,HABETMN'+XMES+',HABETME'+XMES +
                       ', HABESMN'+XMES+',HABESME'+XMES+')   ' +
                       ' VALUES('+quotedstr(XCIAID)+','+quotedstr(XANO)+','+
                       quotedstr(xCLAUXID)+','+quotedstr(xAUXID)+','+
                       MONTOMN + ','+MONTOME+','+MTOSLOC+','+MTOSEXT +')' ;
   end                                                                                           ;

   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

//////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////
  xSQL := 'UPDATE XTGE401PER SET ';
  xxSaldo01:='( '+wReplacCeros+'(SALDTMN00,0)+'+wReplacCeros+'(DEBETMN01,0)-'+wReplacCeros+'(HABETMN01,0))';
  xxSaldo02:='( '+wReplacCeros+'(SALDTMN00,0)+'+wReplacCeros+'(DEBETMN01,0)-'+wReplacCeros+'(HABETMN01,0) '
                               +'+'+wReplacCeros+'(DEBETMN02,0)-'+wReplacCeros+'(HABETMN02,0) )';
  xxSaldo03:='( '+wReplacCeros+'(SALDTMN00,0)+'+wReplacCeros+'(DEBETMN01,0)-'+wReplacCeros+'(HABETMN01,0) '
                               +'+'+wReplacCeros+'(DEBETMN02,0)-'+wReplacCeros+'(HABETMN02,0) '
                               +'+'+wReplacCeros+'(DEBETMN03,0)-'+wReplacCeros+'(HABETMN03,0) )';
  xxSaldo04:='( '+wReplacCeros+'(SALDTMN00,0)+'+wReplacCeros+'(DEBETMN01,0)-'+wReplacCeros+'(HABETMN01,0) '
                                   +'+'+wReplacCeros+'(DEBETMN02,0)-'+wReplacCeros+'(HABETMN02,0) '
                                   +'+'+wReplacCeros+'(DEBETMN03,0)-'+wReplacCeros+'(HABETMN03,0) '
                                   +'+'+wReplacCeros+'(DEBETMN04,0)-'+wReplacCeros+'(HABETMN04,0) )';
  xxSaldo05:='( '+wReplacCeros+'(SALDTMN00,0)+'+wReplacCeros+'(DEBETMN01,0)-'+wReplacCeros+'(HABETMN01,0) '
                               +'+'+wReplacCeros+'(DEBETMN02,0)-'+wReplacCeros+'(HABETMN02,0) '
                               +'+'+wReplacCeros+'(DEBETMN03,0)-'+wReplacCeros+'(HABETMN03,0) '
                               +'+'+wReplacCeros+'(DEBETMN04,0)-'+wReplacCeros+'(HABETMN04,0) '
                               +'+'+wReplacCeros+'(DEBETMN05,0)-'+wReplacCeros+'(HABETMN05,0) )';
  xxSaldo06:='( '+wReplacCeros+'(SALDTMN00,0)+'+wReplacCeros+'(DEBETMN01,0)-'+wReplacCeros+'(HABETMN01,0) '
                               +'+'+wReplacCeros+'(DEBETMN02,0)-'+wReplacCeros+'(HABETMN02,0) '
                               +'+'+wReplacCeros+'(DEBETMN03,0)-'+wReplacCeros+'(HABETMN03,0) '
                               +'+'+wReplacCeros+'(DEBETMN04,0)-'+wReplacCeros+'(HABETMN04,0) '
                               +'+'+wReplacCeros+'(DEBETMN05,0)-'+wReplacCeros+'(HABETMN05,0) '
                               +'+'+wReplacCeros+'(DEBETMN06,0)-'+wReplacCeros+'(HABETMN06,0) )';
  xxSaldo07:='( '+wReplacCeros+'(SALDTMN00,0)+'+wReplacCeros+'(DEBETMN01,0)-'+wReplacCeros+'(HABETMN01,0) '
                               +'+'+wReplacCeros+'(DEBETMN02,0)-'+wReplacCeros+'(HABETMN02,0) '
                               +'+'+wReplacCeros+'(DEBETMN03,0)-'+wReplacCeros+'(HABETMN03,0) '
                               +'+'+wReplacCeros+'(DEBETMN04,0)-'+wReplacCeros+'(HABETMN04,0) '
                               +'+'+wReplacCeros+'(DEBETMN05,0)-'+wReplacCeros+'(HABETMN05,0) '
                               +'+'+wReplacCeros+'(DEBETMN06,0)-'+wReplacCeros+'(HABETMN06,0) '
                               +'+'+wReplacCeros+'(DEBETMN07,0)-'+wReplacCeros+'(HABETMN07,0) )';
  xxSaldo08:='( '+wReplacCeros+'(SALDTMN00,0)+'+wReplacCeros+'(DEBETMN01,0)-'+wReplacCeros+'(HABETMN01,0) '
                               +'+'+wReplacCeros+'(DEBETMN02,0)-'+wReplacCeros+'(HABETMN02,0) '
                               +'+'+wReplacCeros+'(DEBETMN03,0)-'+wReplacCeros+'(HABETMN03,0) '
                               +'+'+wReplacCeros+'(DEBETMN04,0)-'+wReplacCeros+'(HABETMN04,0) '
                               +'+'+wReplacCeros+'(DEBETMN05,0)-'+wReplacCeros+'(HABETMN05,0) '
                               +'+'+wReplacCeros+'(DEBETMN06,0)-'+wReplacCeros+'(HABETMN06,0) '
                               +'+'+wReplacCeros+'(DEBETMN07,0)-'+wReplacCeros+'(HABETMN07,0) '
                               +'+'+wReplacCeros+'(DEBETMN08,0)-'+wReplacCeros+'(HABETMN08,0) )';
  xxSaldo09:='( '+wReplacCeros+'(SALDTMN00,0)+'+wReplacCeros+'(DEBETMN01,0)-'+wReplacCeros+'(HABETMN01,0) '
                               +'+'+wReplacCeros+'(DEBETMN02,0)-'+wReplacCeros+'(HABETMN02,0) '
                               +'+'+wReplacCeros+'(DEBETMN03,0)-'+wReplacCeros+'(HABETMN03,0) '
                               +'+'+wReplacCeros+'(DEBETMN04,0)-'+wReplacCeros+'(HABETMN04,0) '
                               +'+'+wReplacCeros+'(DEBETMN05,0)-'+wReplacCeros+'(HABETMN05,0) '
                               +'+'+wReplacCeros+'(DEBETMN06,0)-'+wReplacCeros+'(HABETMN06,0) '
                               +'+'+wReplacCeros+'(DEBETMN07,0)-'+wReplacCeros+'(HABETMN07,0) '
                               +'+'+wReplacCeros+'(DEBETMN08,0)-'+wReplacCeros+'(HABETMN08,0) '
                               +'+'+wReplacCeros+'(DEBETMN09,0)-'+wReplacCeros+'(HABETMN09,0) )';
  xxSaldo10:='( '+wReplacCeros+'(SALDTMN00,0)+'+wReplacCeros+'(DEBETMN01,0)-'+wReplacCeros+'(HABETMN01,0) '
                               +'+'+wReplacCeros+'(DEBETMN02,0)-'+wReplacCeros+'(HABETMN02,0) '
                               +'+'+wReplacCeros+'(DEBETMN03,0)-'+wReplacCeros+'(HABETMN03,0) '
                               +'+'+wReplacCeros+'(DEBETMN04,0)-'+wReplacCeros+'(HABETMN04,0) '
                               +'+'+wReplacCeros+'(DEBETMN05,0)-'+wReplacCeros+'(HABETMN05,0) '
                               +'+'+wReplacCeros+'(DEBETMN06,0)-'+wReplacCeros+'(HABETMN06,0) '
                               +'+'+wReplacCeros+'(DEBETMN07,0)-'+wReplacCeros+'(HABETMN07,0) '
                               +'+'+wReplacCeros+'(DEBETMN08,0)-'+wReplacCeros+'(HABETMN08,0) '
                               +'+'+wReplacCeros+'(DEBETMN09,0)-'+wReplacCeros+'(HABETMN09,0) '
                               +'+'+wReplacCeros+'(DEBETMN10,0)-'+wReplacCeros+'(HABETMN10,0) )';
  xxSaldo11:='( '+wReplacCeros+'(SALDTMN00,0)+'+wReplacCeros+'(DEBETMN01,0)-'+wReplacCeros+'(HABETMN01,0) '
                               +'+'+wReplacCeros+'(DEBETMN02,0)-'+wReplacCeros+'(HABETMN02,0) '
                               +'+'+wReplacCeros+'(DEBETMN03,0)-'+wReplacCeros+'(HABETMN03,0) '
                               +'+'+wReplacCeros+'(DEBETMN04,0)-'+wReplacCeros+'(HABETMN04,0) '
                               +'+'+wReplacCeros+'(DEBETMN05,0)-'+wReplacCeros+'(HABETMN05,0) '
                               +'+'+wReplacCeros+'(DEBETMN06,0)-'+wReplacCeros+'(HABETMN06,0) '
                               +'+'+wReplacCeros+'(DEBETMN07,0)-'+wReplacCeros+'(HABETMN07,0) '
                               +'+'+wReplacCeros+'(DEBETMN08,0)-'+wReplacCeros+'(HABETMN08,0) '
                               +'+'+wReplacCeros+'(DEBETMN09,0)-'+wReplacCeros+'(HABETMN09,0) '
                               +'+'+wReplacCeros+'(DEBETMN10,0)-'+wReplacCeros+'(HABETMN10,0) '
                               +'+'+wReplacCeros+'(DEBETMN11,0)-'+wReplacCeros+'(HABETMN11,0) )';
  xxSaldo12:='( '+wReplacCeros+'(SALDTMN00,0)+'+wReplacCeros+'(DEBETMN01,0)-'+wReplacCeros+'(HABETMN01,0) '
                               +'+'+wReplacCeros+'(DEBETMN02,0)-'+wReplacCeros+'(HABETMN02,0) '
                               +'+'+wReplacCeros+'(DEBETMN03,0)-'+wReplacCeros+'(HABETMN03,0) '
                               +'+'+wReplacCeros+'(DEBETMN04,0)-'+wReplacCeros+'(HABETMN04,0) '
                               +'+'+wReplacCeros+'(DEBETMN05,0)-'+wReplacCeros+'(HABETMN05,0) '
                               +'+'+wReplacCeros+'(DEBETMN06,0)-'+wReplacCeros+'(HABETMN06,0) '
                               +'+'+wReplacCeros+'(DEBETMN07,0)-'+wReplacCeros+'(HABETMN07,0) '
                               +'+'+wReplacCeros+'(DEBETMN08,0)-'+wReplacCeros+'(HABETMN08,0) '
                               +'+'+wReplacCeros+'(DEBETMN09,0)-'+wReplacCeros+'(HABETMN09,0) '
                               +'+'+wReplacCeros+'(DEBETMN10,0)-'+wReplacCeros+'(HABETMN10,0) '
                               +'+'+wReplacCeros+'(DEBETMN11,0)-'+wReplacCeros+'(HABETMN11,0) '
                               +'+'+wReplacCeros+'(DEBETMN12,0)-'+wReplacCeros+'(HABETMN12,0) )';
  xxSaldo13:='( '+wReplacCeros+'(SALDTMN00,0)+'+wReplacCeros+'(DEBETMN01,0)-'+wReplacCeros+'(HABETMN01,0) '
                                   +'+'+wReplacCeros+'(DEBETMN02,0)-'+wReplacCeros+'(HABETMN02,0) '
                                   +'+'+wReplacCeros+'(DEBETMN03,0)-'+wReplacCeros+'(HABETMN03,0) '
                                   +'+'+wReplacCeros+'(DEBETMN04,0)-'+wReplacCeros+'(HABETMN04,0) '
                                   +'+'+wReplacCeros+'(DEBETMN05,0)-'+wReplacCeros+'(HABETMN05,0) '
                                   +'+'+wReplacCeros+'(DEBETMN06,0)-'+wReplacCeros+'(HABETMN06,0) '
                                   +'+'+wReplacCeros+'(DEBETMN07,0)-'+wReplacCeros+'(HABETMN07,0) '
                                   +'+'+wReplacCeros+'(DEBETMN08,0)-'+wReplacCeros+'(HABETMN08,0) '
                                   +'+'+wReplacCeros+'(DEBETMN09,0)-'+wReplacCeros+'(HABETMN09,0) '
                                   +'+'+wReplacCeros+'(DEBETMN10,0)-'+wReplacCeros+'(HABETMN10,0) '
                                   +'+'+wReplacCeros+'(DEBETMN11,0)-'+wReplacCeros+'(HABETMN11,0) '
                                   +'+'+wReplacCeros+'(DEBETMN12,0)-'+wReplacCeros+'(HABETMN12,0) '
                                   +'+'+wReplacCeros+'(DEBETMN13,0)-'+wReplacCeros+'(HABETMN13,0) )';
  xParte1 := 'SALDTMN01='+xxSaldo01
             +',SALDTMN02='+xxSaldo02
             + ',SALDTMN03='+xxSaldo03
             + ',SALDTMN04='+xxSaldo04
             + ',SALDTMN05='+xxSaldo05
             + ',SALDTMN06='+xxSaldo06
             + ',SALDTMN07='+xxSaldo07
             + ',SALDTMN08='+xxSaldo08;
  xParte11 :=',SALDTMN09='+xxSaldo09
             + ',SALDTMN10='+xxSaldo10
             + ',SALDTMN11='+xxSaldo11
             + ',SALDTMN12='+xxSaldo12
             + ',SALDTMN13='+xxSaldo13;

  xxSaldo01:='( '+wReplacCeros+'(SALDTME00,0)+'+wReplacCeros+'(DEBETME01,0)-'+wReplacCeros+'(HABETME01,0) )';
  xxSaldo02:='( '+wReplacCeros+'(SALDTME00,0)+'+wReplacCeros+'(DEBETME01,0)-'+wReplacCeros+'(HABETME01,0) '
                                    +'+'+wReplacCeros+'(DEBETME02,0)-'+wReplacCeros+'(HABETME02,0) )';
  xxSaldo03:='( '+wReplacCeros+'(SALDTME00,0)+'+wReplacCeros+'(DEBETME01,0)-'+wReplacCeros+'(HABETME01,0) '
                                   +'+'+wReplacCeros+'(DEBETME02,0)-'+wReplacCeros+'(HABETME02,0) '
                                   +'+'+wReplacCeros+'(DEBETME03,0)-'+wReplacCeros+'(HABETME03,0) )';
  xxSaldo04:='( '+wReplacCeros+'(SALDTME00,0)+'+wReplacCeros+'(DEBETME01,0)-'+wReplacCeros+'(HABETME01,0) '
                                   +'+'+wReplacCeros+'(DEBETME02,0)-'+wReplacCeros+'(HABETME02,0) '
                                   +'+'+wReplacCeros+'(DEBETME03,0)-'+wReplacCeros+'(HABETME03,0) '
                                   +'+'+wReplacCeros+'(DEBETME04,0)-'+wReplacCeros+'(HABETME04,0) )';
  xxSaldo05:='( '+wReplacCeros+'(SALDTME00,0)+'+wReplacCeros+'(DEBETME01,0)-'+wReplacCeros+'(HABETME01,0) '
                                   +'+'+wReplacCeros+'(DEBETME02,0)-'+wReplacCeros+'(HABETME02,0) '
                                   +'+'+wReplacCeros+'(DEBETME03,0)-'+wReplacCeros+'(HABETME03,0) '
                                   +'+'+wReplacCeros+'(DEBETME04,0)-'+wReplacCeros+'(HABETME04,0) '
                                   +'+'+wReplacCeros+'(DEBETME05,0)-'+wReplacCeros+'(HABETME05,0) )';
  xxSaldo06:='( '+wReplacCeros+'(SALDTME00,0)+'+wReplacCeros+'(DEBETME01,0)-'+wReplacCeros+'(HABETME01,0) '
                                   +'+'+wReplacCeros+'(DEBETME02,0)-'+wReplacCeros+'(HABETME02,0) '
                                   +'+'+wReplacCeros+'(DEBETME03,0)-'+wReplacCeros+'(HABETME03,0) '
                                   +'+'+wReplacCeros+'(DEBETME04,0)-'+wReplacCeros+'(HABETME04,0) '
                                   +'+'+wReplacCeros+'(DEBETME05,0)-'+wReplacCeros+'(HABETME05,0) '
                                   +'+'+wReplacCeros+'(DEBETME06,0)-'+wReplacCeros+'(HABETME06,0) )';
  xxSaldo07:='( '+wReplacCeros+'(SALDTME00,0)+'+wReplacCeros+'(DEBETME01,0)-'+wReplacCeros+'(HABETME01,0) '
                                   +'+'+wReplacCeros+'(DEBETME02,0)-'+wReplacCeros+'(HABETME02,0) '
                                   +'+'+wReplacCeros+'(DEBETME03,0)-'+wReplacCeros+'(HABETME03,0) '
                                   +'+'+wReplacCeros+'(DEBETME04,0)-'+wReplacCeros+'(HABETME04,0) '
                                   +'+'+wReplacCeros+'(DEBETME05,0)-'+wReplacCeros+'(HABETME05,0) '
                                   +'+'+wReplacCeros+'(DEBETME06,0)-'+wReplacCeros+'(HABETME06,0) '
                                   +'+'+wReplacCeros+'(DEBETME07,0)-'+wReplacCeros+'(HABETME07,0) )';
  xxSaldo08:='( '+wReplacCeros+'(SALDTME00,0)+'+wReplacCeros+'(DEBETME01,0)-'+wReplacCeros+'(HABETME01,0) '
                                   +'+'+wReplacCeros+'(DEBETME02,0)-'+wReplacCeros+'(HABETME02,0) '
                                   +'+'+wReplacCeros+'(DEBETME03,0)-'+wReplacCeros+'(HABETME03,0) '
                                   +'+'+wReplacCeros+'(DEBETME04,0)-'+wReplacCeros+'(HABETME04,0) '
                                   +'+'+wReplacCeros+'(DEBETME05,0)-'+wReplacCeros+'(HABETME05,0) '
                                   +'+'+wReplacCeros+'(DEBETME06,0)-'+wReplacCeros+'(HABETME06,0) '
                                   +'+'+wReplacCeros+'(DEBETME07,0)-'+wReplacCeros+'(HABETME07,0) '
                                   +'+'+wReplacCeros+'(DEBETME08,0)-'+wReplacCeros+'(HABETME08,0) )';
  xxSaldo09:='( '+wReplacCeros+'(SALDTME00,0)+'+wReplacCeros+'(DEBETME01,0)-'+wReplacCeros+'(HABETME01,0) '
                                   +'+'+wReplacCeros+'(DEBETME02,0)-'+wReplacCeros+'(HABETME02,0) '
                                   +'+'+wReplacCeros+'(DEBETME03,0)-'+wReplacCeros+'(HABETME03,0) '
                                   +'+'+wReplacCeros+'(DEBETME04,0)-'+wReplacCeros+'(HABETME04,0) '
                                   +'+'+wReplacCeros+'(DEBETME05,0)-'+wReplacCeros+'(HABETME05,0) '
                                   +'+'+wReplacCeros+'(DEBETME06,0)-'+wReplacCeros+'(HABETME06,0) '
                                   +'+'+wReplacCeros+'(DEBETME07,0)-'+wReplacCeros+'(HABETME07,0) '
                                   +'+'+wReplacCeros+'(DEBETME08,0)-'+wReplacCeros+'(HABETME08,0) '
                                   +'+'+wReplacCeros+'(DEBETME09,0)-'+wReplacCeros+'(HABETME09,0) )';
  xxSaldo10:='( '+wReplacCeros+'(SALDTME00,0)+'+wReplacCeros+'(DEBETME01,0)-'+wReplacCeros+'(HABETME01,0) '
                                   +'+'+wReplacCeros+'(DEBETME02,0)-'+wReplacCeros+'(HABETME02,0) '
                                   +'+'+wReplacCeros+'(DEBETME03,0)-'+wReplacCeros+'(HABETME03,0) '
                                   +'+'+wReplacCeros+'(DEBETME04,0)-'+wReplacCeros+'(HABETME04,0) '
                                   +'+'+wReplacCeros+'(DEBETME05,0)-'+wReplacCeros+'(HABETME05,0) '
                                   +'+'+wReplacCeros+'(DEBETME06,0)-'+wReplacCeros+'(HABETME06,0) '
                                   +'+'+wReplacCeros+'(DEBETME07,0)-'+wReplacCeros+'(HABETME07,0) '
                                   +'+'+wReplacCeros+'(DEBETME08,0)-'+wReplacCeros+'(HABETME08,0) '
                                   +'+'+wReplacCeros+'(DEBETME09,0)-'+wReplacCeros+'(HABETME09,0) '
                                   +'+'+wReplacCeros+'(DEBETME10,0)-'+wReplacCeros+'(HABETME10,0) )';
  xxSaldo11:='( '+wReplacCeros+'(SALDTME00,0)+'+wReplacCeros+'(DEBETME01,0)-'+wReplacCeros+'(HABETME01,0) '
                                   +'+'+wReplacCeros+'(DEBETME02,0)-'+wReplacCeros+'(HABETME02,0) '
                                   +'+'+wReplacCeros+'(DEBETME03,0)-'+wReplacCeros+'(HABETME03,0) '
                                   +'+'+wReplacCeros+'(DEBETME04,0)-'+wReplacCeros+'(HABETME04,0) '
                                   +'+'+wReplacCeros+'(DEBETME05,0)-'+wReplacCeros+'(HABETME05,0) '
                                   +'+'+wReplacCeros+'(DEBETME06,0)-'+wReplacCeros+'(HABETME06,0) '
                                   +'+'+wReplacCeros+'(DEBETME07,0)-'+wReplacCeros+'(HABETME07,0) '
                                   +'+'+wReplacCeros+'(DEBETME08,0)-'+wReplacCeros+'(HABETME08,0) '
                                   +'+'+wReplacCeros+'(DEBETME09,0)-'+wReplacCeros+'(HABETME09,0) '
                                   +'+'+wReplacCeros+'(DEBETME10,0)-'+wReplacCeros+'(HABETME10,0) '
                                   +'+'+wReplacCeros+'(DEBETME11,0)-'+wReplacCeros+'(HABETME11,0) )';
  xxSaldo12:='( '+wReplacCeros+'(SALDTME00,0)+'+wReplacCeros+'(DEBETME01,0)-'+wReplacCeros+'(HABETME01,0) '
                                   +'+'+wReplacCeros+'(DEBETME02,0)-'+wReplacCeros+'(HABETME02,0) '
                                   +'+'+wReplacCeros+'(DEBETME03,0)-'+wReplacCeros+'(HABETME03,0) '
                                   +'+'+wReplacCeros+'(DEBETME04,0)-'+wReplacCeros+'(HABETME04,0) '
                                   +'+'+wReplacCeros+'(DEBETME05,0)-'+wReplacCeros+'(HABETME05,0) '
                                   +'+'+wReplacCeros+'(DEBETME06,0)-'+wReplacCeros+'(HABETME06,0) '
                                   +'+'+wReplacCeros+'(DEBETME07,0)-'+wReplacCeros+'(HABETME07,0) '
                                   +'+'+wReplacCeros+'(DEBETME08,0)-'+wReplacCeros+'(HABETME08,0) '
                                   +'+'+wReplacCeros+'(DEBETME09,0)-'+wReplacCeros+'(HABETME09,0) '
                                   +'+'+wReplacCeros+'(DEBETME10,0)-'+wReplacCeros+'(HABETME10,0) '
                                   +'+'+wReplacCeros+'(DEBETME11,0)-'+wReplacCeros+'(HABETME11,0) '
                                   +'+'+wReplacCeros+'(DEBETME12,0)-'+wReplacCeros+'(HABETME12,0) )';
  xxSaldo13:='( '+wReplacCeros+'(SALDTME00,0)+'+wReplacCeros+'(DEBETME01,0)-'+wReplacCeros+'(HABETME01,0) '
                                   +'+'+wReplacCeros+'(DEBETME02,0)-'+wReplacCeros+'(HABETME02,0) '
                                   +'+'+wReplacCeros+'(DEBETME03,0)-'+wReplacCeros+'(HABETME03,0) '
                                   +'+'+wReplacCeros+'(DEBETME04,0)-'+wReplacCeros+'(HABETME04,0) '
                                   +'+'+wReplacCeros+'(DEBETME05,0)-'+wReplacCeros+'(HABETME05,0) '
                                   +'+'+wReplacCeros+'(DEBETME06,0)-'+wReplacCeros+'(HABETME06,0) '
                                   +'+'+wReplacCeros+'(DEBETME07,0)-'+wReplacCeros+'(HABETME07,0) '
                                   +'+'+wReplacCeros+'(DEBETME08,0)-'+wReplacCeros+'(HABETME08,0) '
                                   +'+'+wReplacCeros+'(DEBETME09,0)-'+wReplacCeros+'(HABETME09,0) '
                                   +'+'+wReplacCeros+'(DEBETME10,0)-'+wReplacCeros+'(HABETME10,0) '
                                   +'+'+wReplacCeros+'(DEBETME11,0)-'+wReplacCeros+'(HABETME11,0) '
                                   +'+'+wReplacCeros+'(DEBETME12,0)-'+wReplacCeros+'(HABETME12,0) '
                                   +'+'+wReplacCeros+'(DEBETME13,0)-'+wReplacCeros+'(HABETME13,0) ) ';
  xParte2 := 'SALDTME01='+xxSaldo01
             +',SALDTME02='+xxSaldo02
             + ',SALDTME03='+xxSaldo03
             + ',SALDTME04='+xxSaldo04
             + ',SALDTME05='+xxSaldo05
             + ',SALDTME06='+xxSaldo06
             + ',SALDTME07='+xxSaldo07;
  xParte22 := ',SALDTME08='+xxSaldo08
             + ',SALDTME09='+xxSaldo09
             + ',SALDTME10='+xxSaldo10
             + ',SALDTME11='+xxSaldo11
             + ',SALDTME12='+xxSaldo12
             + ',SALDTME13='+xxSaldo13;

 xWhere := ' WHERE CIAID='+''''+xCiaID    +''''+' AND '
               + 'ANO='        +''''+xAno    +''''+' AND '
               + 'CLAUXID='    +''''+xCLAUXID  +''''+' AND '
               + 'AUXID='      +''''+xAUXID    +'''';
  xSQL := xSQL +xParte1+xParte11+','+xParte2+xParte22+xWhere;
  xSQL := UpperCase( xSQL );
  DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

//////////////////////////////////////
//                                  //
//   Actualiza DebeSMN y HaberSME   //
//                                  //
//////////////////////////////////////
  xSQL := 'UPDATE XTGE401PER SET ';
  xxSaldo01:='( '+wReplacCeros+'(SALDSMN00,0)+'+wReplacCeros+'(DEBESMN01,0)-'+wReplacCeros+'(HABESMN01,0) )';
  xxSaldo02:='( '+wReplacCeros+'(SALDSMN00,0)+'+wReplacCeros+'(DEBESMN01,0)-'+wReplacCeros+'(HABESMN01,0) '
                                   +'+'+wReplacCeros+'(DEBESMN02,0)-'+wReplacCeros+'(HABESMN02,0) )';
  xxSaldo03:='( '+wReplacCeros+'(SALDSMN00,0)+'+wReplacCeros+'(DEBESMN01,0)-'+wReplacCeros+'(HABESMN01,0) '
                                   +'+'+wReplacCeros+'(DEBESMN02,0)-'+wReplacCeros+'(HABESMN02,0) '
                                   +'+'+wReplacCeros+'(DEBESMN03,0)-'+wReplacCeros+'(HABESMN03,0) )';
  xxSaldo04:='( '+wReplacCeros+'(SALDSMN00,0)+'+wReplacCeros+'(DEBESMN01,0)-'+wReplacCeros+'(HABESMN01,0) '
                                   +'+'+wReplacCeros+'(DEBESMN02,0)-'+wReplacCeros+'(HABESMN02,0) '
                                   +'+'+wReplacCeros+'(DEBESMN03,0)-'+wReplacCeros+'(HABESMN03,0) '
                                   +'+'+wReplacCeros+'(DEBESMN04,0)-'+wReplacCeros+'(HABESMN04,0) )';
  xxSaldo05:='( '+wReplacCeros+'(SALDSMN00,0)+'+wReplacCeros+'(DEBESMN01,0)-'+wReplacCeros+'(HABESMN01,0) '
                                   +'+'+wReplacCeros+'(DEBESMN02,0)-'+wReplacCeros+'(HABESMN02,0) '
                                   +'+'+wReplacCeros+'(DEBESMN03,0)-'+wReplacCeros+'(HABESMN03,0) '
                                   +'+'+wReplacCeros+'(DEBESMN04,0)-'+wReplacCeros+'(HABESMN04,0) '
                                   +'+'+wReplacCeros+'(DEBESMN05,0)-'+wReplacCeros+'(HABESMN05,0) )';
  xxSaldo06:='( '+wReplacCeros+'(SALDSMN00,0)+'+wReplacCeros+'(DEBESMN01,0)-'+wReplacCeros+'(HABESMN01,0) '
                                   +'+'+wReplacCeros+'(DEBESMN02,0)-'+wReplacCeros+'(HABESMN02,0) '
                                   +'+'+wReplacCeros+'(DEBESMN03,0)-'+wReplacCeros+'(HABESMN03,0) '
                                   +'+'+wReplacCeros+'(DEBESMN04,0)-'+wReplacCeros+'(HABESMN04,0) '
                                   +'+'+wReplacCeros+'(DEBESMN05,0)-'+wReplacCeros+'(HABESMN05,0) '
                                   +'+'+wReplacCeros+'(DEBESMN06,0)-'+wReplacCeros+'(HABESMN06,0) )';
  xxSaldo07:='( '+wReplacCeros+'(SALDSMN00,0)+'+wReplacCeros+'(DEBESMN01,0)-'+wReplacCeros+'(HABESMN01,0) '
                                   +'+'+wReplacCeros+'(DEBESMN02,0)-'+wReplacCeros+'(HABESMN02,0) '
                                   +'+'+wReplacCeros+'(DEBESMN03,0)-'+wReplacCeros+'(HABESMN03,0) '
                                   +'+'+wReplacCeros+'(DEBESMN04,0)-'+wReplacCeros+'(HABESMN04,0) '
                                   +'+'+wReplacCeros+'(DEBESMN05,0)-'+wReplacCeros+'(HABESMN05,0) '
                                   +'+'+wReplacCeros+'(DEBESMN06,0)-'+wReplacCeros+'(HABESMN06,0) '
                                   +'+'+wReplacCeros+'(DEBESMN07,0)-'+wReplacCeros+'(HABESMN07,0) )';
  xxSaldo08:='( '+wReplacCeros+'(SALDSMN00,0)+'+wReplacCeros+'(DEBESMN01,0)-'+wReplacCeros+'(HABESMN01,0) '
                                   +'+'+wReplacCeros+'(DEBESMN02,0)-'+wReplacCeros+'(HABESMN02,0) '
                                   +'+'+wReplacCeros+'(DEBESMN03,0)-'+wReplacCeros+'(HABESMN03,0) '
                                   +'+'+wReplacCeros+'(DEBESMN04,0)-'+wReplacCeros+'(HABESMN04,0) '
                                   +'+'+wReplacCeros+'(DEBESMN05,0)-'+wReplacCeros+'(HABESMN05,0) '
                                   +'+'+wReplacCeros+'(DEBESMN06,0)-'+wReplacCeros+'(HABESMN06,0) '
                                   +'+'+wReplacCeros+'(DEBESMN07,0)-'+wReplacCeros+'(HABESMN07,0) '
                                   +'+'+wReplacCeros+'(DEBESMN08,0)-'+wReplacCeros+'(HABESMN08,0) )';
  xxSaldo09:='( '+wReplacCeros+'(SALDSMN00,0)+'+wReplacCeros+'(DEBESMN01,0)-'+wReplacCeros+'(HABESMN01,0) '
                                   +'+'+wReplacCeros+'(DEBESMN02,0)-'+wReplacCeros+'(HABESMN02,0) '
                                   +'+'+wReplacCeros+'(DEBESMN03,0)-'+wReplacCeros+'(HABESMN03,0) '
                                   +'+'+wReplacCeros+'(DEBESMN04,0)-'+wReplacCeros+'(HABESMN04,0) '
                                   +'+'+wReplacCeros+'(DEBESMN05,0)-'+wReplacCeros+'(HABESMN05,0) '
                                   +'+'+wReplacCeros+'(DEBESMN06,0)-'+wReplacCeros+'(HABESMN06,0) '
                                   +'+'+wReplacCeros+'(DEBESMN07,0)-'+wReplacCeros+'(HABESMN07,0) '
                                   +'+'+wReplacCeros+'(DEBESMN08,0)-'+wReplacCeros+'(HABESMN08,0) '
                                   +'+'+wReplacCeros+'(DEBESMN09,0)-'+wReplacCeros+'(HABESMN09,0) )';
  xxSaldo10:='( '+wReplacCeros+'(SALDSMN00,0)+'+wReplacCeros+'(DEBESMN01,0)-'+wReplacCeros+'(HABESMN01,0) '
                                   +'+'+wReplacCeros+'(DEBESMN02,0)-'+wReplacCeros+'(HABESMN02,0) '
                                   +'+'+wReplacCeros+'(DEBESMN03,0)-'+wReplacCeros+'(HABESMN03,0) '
                                   +'+'+wReplacCeros+'(DEBESMN04,0)-'+wReplacCeros+'(HABESMN04,0) '
                                   +'+'+wReplacCeros+'(DEBESMN05,0)-'+wReplacCeros+'(HABESMN05,0) '
                                   +'+'+wReplacCeros+'(DEBESMN06,0)-'+wReplacCeros+'(HABESMN06,0) '
                                   +'+'+wReplacCeros+'(DEBESMN07,0)-'+wReplacCeros+'(HABESMN07,0) '
                                   +'+'+wReplacCeros+'(DEBESMN08,0)-'+wReplacCeros+'(HABESMN08,0) '
                                   +'+'+wReplacCeros+'(DEBESMN09,0)-'+wReplacCeros+'(HABESMN09,0) '
                                   +'+'+wReplacCeros+'(DEBESMN10,0)-'+wReplacCeros+'(HABESMN10,0) )';
  xxSaldo11:='( '+wReplacCeros+'(SALDSMN00,0)+'+wReplacCeros+'(DEBESMN01,0)-'+wReplacCeros+'(HABESMN01,0) '
                                   +'+'+wReplacCeros+'(DEBESMN02,0)-'+wReplacCeros+'(HABESMN02,0) '
                                   +'+'+wReplacCeros+'(DEBESMN03,0)-'+wReplacCeros+'(HABESMN03,0) '
                                   +'+'+wReplacCeros+'(DEBESMN04,0)-'+wReplacCeros+'(HABESMN04,0) '
                                   +'+'+wReplacCeros+'(DEBESMN05,0)-'+wReplacCeros+'(HABESMN05,0) '
                                   +'+'+wReplacCeros+'(DEBESMN06,0)-'+wReplacCeros+'(HABESMN06,0) '
                                   +'+'+wReplacCeros+'(DEBESMN07,0)-'+wReplacCeros+'(HABESMN07,0) '
                                   +'+'+wReplacCeros+'(DEBESMN08,0)-'+wReplacCeros+'(HABESMN08,0) '
                                   +'+'+wReplacCeros+'(DEBESMN09,0)-'+wReplacCeros+'(HABESMN09,0) '
                                   +'+'+wReplacCeros+'(DEBESMN10,0)-'+wReplacCeros+'(HABESMN10,0) '
                                   +'+'+wReplacCeros+'(DEBESMN11,0)-'+wReplacCeros+'(HABESMN11,0) )';
  xxSaldo12:='( '+wReplacCeros+'(SALDSMN00,0)+'+wReplacCeros+'(DEBESMN01,0)-'+wReplacCeros+'(HABESMN01,0) '
                                   +'+'+wReplacCeros+'(DEBESMN02,0)-'+wReplacCeros+'(HABESMN02,0) '
                                   +'+'+wReplacCeros+'(DEBESMN03,0)-'+wReplacCeros+'(HABESMN03,0) '
                                   +'+'+wReplacCeros+'(DEBESMN04,0)-'+wReplacCeros+'(HABESMN04,0) '
                                   +'+'+wReplacCeros+'(DEBESMN05,0)-'+wReplacCeros+'(HABESMN05,0) '
                                   +'+'+wReplacCeros+'(DEBESMN06,0)-'+wReplacCeros+'(HABESMN06,0) '
                                   +'+'+wReplacCeros+'(DEBESMN07,0)-'+wReplacCeros+'(HABESMN07,0) '
                                   +'+'+wReplacCeros+'(DEBESMN08,0)-'+wReplacCeros+'(HABESMN08,0) '
                                   +'+'+wReplacCeros+'(DEBESMN09,0)-'+wReplacCeros+'(HABESMN09,0) '
                                   +'+'+wReplacCeros+'(DEBESMN10,0)-'+wReplacCeros+'(HABESMN10,0) '
                                   +'+'+wReplacCeros+'(DEBESMN11,0)-'+wReplacCeros+'(HABESMN11,0) '
                                   +'+'+wReplacCeros+'(DEBESMN12,0)-'+wReplacCeros+'(HABESMN12,0) )';
  xxSaldo13:='( '+wReplacCeros+'(SALDSMN00,0)+'+wReplacCeros+'(DEBESMN01,0)-'+wReplacCeros+'(HABESMN01,0) '
                                   +'+'+wReplacCeros+'(DEBESMN02,0)-'+wReplacCeros+'(HABESMN02,0) '
                                   +'+'+wReplacCeros+'(DEBESMN03,0)-'+wReplacCeros+'(HABESMN03,0) '
                                   +'+'+wReplacCeros+'(DEBESMN04,0)-'+wReplacCeros+'(HABESMN04,0) '
                                   +'+'+wReplacCeros+'(DEBESMN05,0)-'+wReplacCeros+'(HABESMN05,0) '
                                   +'+'+wReplacCeros+'(DEBESMN06,0)-'+wReplacCeros+'(HABESMN06,0) '
                                   +'+'+wReplacCeros+'(DEBESMN07,0)-'+wReplacCeros+'(HABESMN07,0) '
                                   +'+'+wReplacCeros+'(DEBESMN08,0)-'+wReplacCeros+'(HABESMN08,0) '
																	 +'+'+wReplacCeros+'(DEBESMN09,0)-'+wReplacCeros+'(HABESMN09,0) '
                                   +'+'+wReplacCeros+'(DEBESMN10,0)-'+wReplacCeros+'(HABESMN10,0) '
                                   +'+'+wReplacCeros+'(DEBESMN11,0)-'+wReplacCeros+'(HABESMN11,0) '
                                   +'+'+wReplacCeros+'(DEBESMN12,0)-'+wReplacCeros+'(HABESMN12,0) '
                                   +'+'+wReplacCeros+'(DEBESMN13,0)-'+wReplacCeros+'(HABESMN13,0) )';
  xParte1 := 'SALDSMN01='+xxSaldo01
             +',SALDSMN02='+xxSaldo02
             + ',SALDSMN03='+xxSaldo03
             + ',SALDSMN04='+xxSaldo04
             + ',SALDSMN05='+xxSaldo05
             + ',SALDSMN06='+xxSaldo06
             + ',SALDSMN07='+xxSaldo07
             + ',SALDSMN08='+xxSaldo08;
  xParte11 := ',SALDSMN09='+xxSaldo09
             + ',SALDSMN10='+xxSaldo10
             + ',SALDSMN11='+xxSaldo11
             + ',SALDSMN12='+xxSaldo12
             + ',SALDSMN13='+xxSaldo13;

  xxSaldo01:='( '+wReplacCeros+'(SALDSME00,0)+'+wReplacCeros+'(DEBESME01,0)-'+wReplacCeros+'(HABESME01,0) )';
  xxSaldo02:='( '+wReplacCeros+'(SALDSME00,0)+'+wReplacCeros+'(DEBESME01,0)-'+wReplacCeros+'(HABESME01,0) '
                                   +'+'+wReplacCeros+'(DEBESME02,0)-'+wReplacCeros+'(HABESME02,0) )';
  xxSaldo03:='( '+wReplacCeros+'(SALDSME00,0)+'+wReplacCeros+'(DEBESME01,0)-'+wReplacCeros+'(HABESME01,0) '
                                   +'+'+wReplacCeros+'(DEBESME02,0)-'+wReplacCeros+'(HABESME02,0) '
                                   +'+'+wReplacCeros+'(DEBESME03,0)-'+wReplacCeros+'(HABESME03,0) )';
  xxSaldo04:='( '+wReplacCeros+'(SALDSME00,0)+'+wReplacCeros+'(DEBESME01,0)-'+wReplacCeros+'(HABESME01,0) '
                                   +'+'+wReplacCeros+'(DEBESME02,0)-'+wReplacCeros+'(HABESME02,0) '
																	 +'+'+wReplacCeros+'(DEBESME03,0)-'+wReplacCeros+'(HABESME03,0) '
                                   +'+'+wReplacCeros+'(DEBESME04,0)-'+wReplacCeros+'(HABESME04,0) )';
  xxSaldo05:='( '+wReplacCeros+'(SALDSME00,0)+'+wReplacCeros+'(DEBESME01,0)-'+wReplacCeros+'(HABESME01,0) '
                                   +'+'+wReplacCeros+'(DEBESME02,0)-'+wReplacCeros+'(HABESME02,0) '
                                   +'+'+wReplacCeros+'(DEBESME03,0)-'+wReplacCeros+'(HABESME03,0) '
                                   +'+'+wReplacCeros+'(DEBESME04,0)-'+wReplacCeros+'(HABESME04,0) '
                                   +'+'+wReplacCeros+'(DEBESME05,0)-'+wReplacCeros+'(HABESME05,0) )';
  xxSaldo06:='( '+wReplacCeros+'(SALDSME00,0)+'+wReplacCeros+'(DEBESME01,0)-'+wReplacCeros+'(HABESME01,0) '
                                   +'+'+wReplacCeros+'(DEBESME02,0)-'+wReplacCeros+'(HABESME02,0) '
                                   +'+'+wReplacCeros+'(DEBESME03,0)-'+wReplacCeros+'(HABESME03,0) '
                                   +'+'+wReplacCeros+'(DEBESME04,0)-'+wReplacCeros+'(HABESME04,0) '
                                   +'+'+wReplacCeros+'(DEBESME05,0)-'+wReplacCeros+'(HABESME05,0) '
                                   +'+'+wReplacCeros+'(DEBESME06,0)-'+wReplacCeros+'(HABESME06,0) )';
  xxSaldo07:='( '+wReplacCeros+'(SALDSME00,0)+'+wReplacCeros+'(DEBESME01,0)-'+wReplacCeros+'(HABESME01,0) '
                                   +'+'+wReplacCeros+'(DEBESME02,0)-'+wReplacCeros+'(HABESME02,0) '
                                   +'+'+wReplacCeros+'(DEBESME03,0)-'+wReplacCeros+'(HABESME03,0) '
                                   +'+'+wReplacCeros+'(DEBESME04,0)-'+wReplacCeros+'(HABESME04,0) '
                                   +'+'+wReplacCeros+'(DEBESME05,0)-'+wReplacCeros+'(HABESME05,0) '
                                   +'+'+wReplacCeros+'(DEBESME06,0)-'+wReplacCeros+'(HABESME06,0) '
                                   +'+'+wReplacCeros+'(DEBESME07,0)-'+wReplacCeros+'(HABESME07,0) )';
  xxSaldo08:='( '+wReplacCeros+'(SALDSME00,0)+'+wReplacCeros+'(DEBESME01,0)-'+wReplacCeros+'(HABESME01,0) '
                                   +'+'+wReplacCeros+'(DEBESME02,0)-'+wReplacCeros+'(HABESME02,0) '
                                   +'+'+wReplacCeros+'(DEBESME03,0)-'+wReplacCeros+'(HABESME03,0) '
                                   +'+'+wReplacCeros+'(DEBESME04,0)-'+wReplacCeros+'(HABESME04,0) '
                                   +'+'+wReplacCeros+'(DEBESME05,0)-'+wReplacCeros+'(HABESME05,0) '
                                   +'+'+wReplacCeros+'(DEBESME06,0)-'+wReplacCeros+'(HABESME06,0) '
                                   +'+'+wReplacCeros+'(DEBESME07,0)-'+wReplacCeros+'(HABESME07,0) '
																	 +'+'+wReplacCeros+'(DEBESME08,0)-'+wReplacCeros+'(HABESME08,0) )';
  xxSaldo09:='( '+wReplacCeros+'(SALDSME00,0)+'+wReplacCeros+'(DEBESME01,0)-'+wReplacCeros+'(HABESME01,0) '
                                   +'+'+wReplacCeros+'(DEBESME02,0)-'+wReplacCeros+'(HABESME02,0) '
                                   +'+'+wReplacCeros+'(DEBESME03,0)-'+wReplacCeros+'(HABESME03,0) '
                                   +'+'+wReplacCeros+'(DEBESME04,0)-'+wReplacCeros+'(HABESME04,0) '
                                   +'+'+wReplacCeros+'(DEBESME05,0)-'+wReplacCeros+'(HABESME05,0) '
                                   +'+'+wReplacCeros+'(DEBESME06,0)-'+wReplacCeros+'(HABESME06,0) '
                                   +'+'+wReplacCeros+'(DEBESME07,0)-'+wReplacCeros+'(HABESME07,0) '
                                   +'+'+wReplacCeros+'(DEBESME08,0)-'+wReplacCeros+'(HABESME08,0) '
                                   +'+'+wReplacCeros+'(DEBESME09,0)-'+wReplacCeros+'(HABESME09,0) )';
  xxSaldo10:='( '+wReplacCeros+'(SALDSME00,0)+'+wReplacCeros+'(DEBESME01,0)-'+wReplacCeros+'(HABESME01,0) '
                                   +'+'+wReplacCeros+'(DEBESME02,0)-'+wReplacCeros+'(HABESME02,0) '
                                   +'+'+wReplacCeros+'(DEBESME03,0)-'+wReplacCeros+'(HABESME03,0) '
                                   +'+'+wReplacCeros+'(DEBESME04,0)-'+wReplacCeros+'(HABESME04,0) '
                                   +'+'+wReplacCeros+'(DEBESME05,0)-'+wReplacCeros+'(HABESME05,0) '
                                   +'+'+wReplacCeros+'(DEBESME06,0)-'+wReplacCeros+'(HABESME06,0) '
                                   +'+'+wReplacCeros+'(DEBESME07,0)-'+wReplacCeros+'(HABESME07,0) '
                                   +'+'+wReplacCeros+'(DEBESME08,0)-'+wReplacCeros+'(HABESME08,0) '
                                   +'+'+wReplacCeros+'(DEBESME09,0)-'+wReplacCeros+'(HABESME09,0) '
                                   +'+'+wReplacCeros+'(DEBESME10,0)-'+wReplacCeros+'(HABESME10,0) )';
  xxSaldo11:='( '+wReplacCeros+'(SALDSME00,0)+'+wReplacCeros+'(DEBESME01,0)-'+wReplacCeros+'(HABESME01,0) '
                                   +'+'+wReplacCeros+'(DEBESME02,0)-'+wReplacCeros+'(HABESME02,0) '
                                   +'+'+wReplacCeros+'(DEBESME03,0)-'+wReplacCeros+'(HABESME03,0) '
                                   +'+'+wReplacCeros+'(DEBESME04,0)-'+wReplacCeros+'(HABESME04,0) '
                                   +'+'+wReplacCeros+'(DEBESME05,0)-'+wReplacCeros+'(HABESME05,0) '
                                   +'+'+wReplacCeros+'(DEBESME06,0)-'+wReplacCeros+'(HABESME06,0) '
                                   +'+'+wReplacCeros+'(DEBESME07,0)-'+wReplacCeros+'(HABESME07,0) '
																	 +'+'+wReplacCeros+'(DEBESME08,0)-'+wReplacCeros+'(HABESME08,0) '
                                   +'+'+wReplacCeros+'(DEBESME09,0)-'+wReplacCeros+'(HABESME09,0) '
                                   +'+'+wReplacCeros+'(DEBESME10,0)-'+wReplacCeros+'(HABESME10,0) '
                                   +'+'+wReplacCeros+'(DEBESME11,0)-'+wReplacCeros+'(HABESME11,0) )';
  xxSaldo12:='( '+wReplacCeros+'(SALDSME00,0)+'+wReplacCeros+'(DEBESME01,0)-'+wReplacCeros+'(HABESME01,0) '
                                   +'+'+wReplacCeros+'(DEBESME02,0)-'+wReplacCeros+'(HABESME02,0) '
                                   +'+'+wReplacCeros+'(DEBESME03,0)-'+wReplacCeros+'(HABESME03,0) '
                                   +'+'+wReplacCeros+'(DEBESME04,0)-'+wReplacCeros+'(HABESME04,0) '
                                   +'+'+wReplacCeros+'(DEBESME05,0)-'+wReplacCeros+'(HABESME05,0) '
                                   +'+'+wReplacCeros+'(DEBESME06,0)-'+wReplacCeros+'(HABESME06,0) '
                                   +'+'+wReplacCeros+'(DEBESME07,0)-'+wReplacCeros+'(HABESME07,0) '
                                   +'+'+wReplacCeros+'(DEBESME08,0)-'+wReplacCeros+'(HABESME08,0) '
                                   +'+'+wReplacCeros+'(DEBESME09,0)-'+wReplacCeros+'(HABESME09,0) '
                                   +'+'+wReplacCeros+'(DEBESME10,0)-'+wReplacCeros+'(HABESME10,0) '
                                   +'+'+wReplacCeros+'(DEBESME11,0)-'+wReplacCeros+'(HABESME11,0) '
                                   +'+'+wReplacCeros+'(DEBESME12,0)-'+wReplacCeros+'(HABESME12,0) )';
  xxSaldo13:='( '+wReplacCeros+'(SALDSME00,0)+'+wReplacCeros+'(DEBESME01,0)-'+wReplacCeros+'(HABESME01,0) '
                                   +'+'+wReplacCeros+'(DEBESME02,0)-'+wReplacCeros+'(HABESME02,0) '
                                   +'+'+wReplacCeros+'(DEBESME03,0)-'+wReplacCeros+'(HABESME03,0) '
                                   +'+'+wReplacCeros+'(DEBESME04,0)-'+wReplacCeros+'(HABESME04,0) '
                                   +'+'+wReplacCeros+'(DEBESME05,0)-'+wReplacCeros+'(HABESME05,0) '
                                   +'+'+wReplacCeros+'(DEBESME06,0)-'+wReplacCeros+'(HABESME06,0) '
                                   +'+'+wReplacCeros+'(DEBESME07,0)-'+wReplacCeros+'(HABESME07,0) '
                                   +'+'+wReplacCeros+'(DEBESME08,0)-'+wReplacCeros+'(HABESME08,0) '
                                   +'+'+wReplacCeros+'(DEBESME09,0)-'+wReplacCeros+'(HABESME09,0) '
                                   +'+'+wReplacCeros+'(DEBESME10,0)-'+wReplacCeros+'(HABESME10,0) '
                                   +'+'+wReplacCeros+'(DEBESME11,0)-'+wReplacCeros+'(HABESME11,0) '
																	 +'+'+wReplacCeros+'(DEBESME12,0)-'+wReplacCeros+'(HABESME12,0) '
                                   +'+'+wReplacCeros+'(DEBESME13,0)-'+wReplacCeros+'(HABESME13,0) ) ';
  xParte2 := 'SALDSME01='+xxSaldo01
             +',SALDSME02='+xxSaldo02
             + ',SALDSME03='+xxSaldo03
             + ',SALDSME04='+xxSaldo04
             + ',SALDSME05='+xxSaldo05
             + ',SALDSME06='+xxSaldo06
             + ',SALDSME07='+xxSaldo07
             + ',SALDSME08='+xxSaldo08;
  xParte22 :=',SALDSME09='+xxSaldo09
             + ',SALDSME10='+xxSaldo10
             + ',SALDSME11='+xxSaldo11
             + ',SALDSME12='+xxSaldo12
             + ',SALDSME13='+xxSaldo13;

 xWhere := ' WHERE CIAID='+''''+xCiaID    +''''+' AND '
               + 'ANO='        +''''+xAno    +''''+' AND '
               + 'CLAUXID='    +''''+xCLAUXID  +''''+' AND '
               + 'AUXID='      +''''+xAUXID    +'''';
  xSQL := xSQL +xParte1+xParte11+','+xParte2+xParte22+xWhere;
  xSQL := UpperCase( xSQL );
  DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
end;

procedure TFTOficio.SaldosCaja310;
var
 sFecha,ssql : String;
begin
  //** 05/12/2000 - pjsv - para la actualizacion de caja310
  ssql := 'FPAGOID='+quotedstr(xFPagoid);
  // solo si la forma de pago es <> a Canje se debe actualizar CAJA310
  if DM1.DisplayDescrip('prvSQL','TGE112','FCANJE',ssql,'FCANJE') <> 'S' then
   begin
    sFecha := formatdatetime(wFormatFecha,xFechaCom);
    ssql := 'BANCOID='+quotedstr(xBancoid);
    // Si es Caja, solo se hace un apdate
    if DM1.DisplayDescrip('prvSQL','TGE105','BCOTIPCTA',ssql,'BCOTIPCTA') = 'C' then
      begin
       If xTmonid = DM1.wTMonLoc then
        ssql := 'UPDATE CAJA310 SET STTOTEGR= '+wReplacCeros+'(STTOTEGR,0) + '+FloatToStr(cPgoOri)+
                ' , STSALDOFIN= '+wReplacCeros+'(STSALDOINIC,0) + '+
                wReplacCeros+'(STTOTING,0) -('+wReplacCeros+'(STTOTEGR,0) +'+FloatToStr(cPgoOri)+')'+
                ' , TMONID='+quotedstr(xTmonid)+
                ' WHERE STFECHA='+quotedstr(sfecha)+
                ' AND BANCOID='+quotedstr(xBancoid)
       else
        ssql := 'UPDATE CAJA310 SET STEGREXT= '+wReplacCeros+'(STEGREXT,0) + '+FloatToStr(cPgoOri)+
                ' , STSDOFINEXT= '+wReplacCeros+'(STSDOINIEXT,0) + '+
                wReplacCeros+'(STINGEXT,0) - ('+wReplacCeros+'(STEGREXT,0) +'+FloatToStr(cPgoOri)+')'+
                ' , TMONID='+quotedstr(xTmonid)+
                ' WHERE STFECHA='+quotedstr(sfecha)+
                ' AND BANCOID='+quotedstr(xBancoid);
      end
    else
     //** si es Banco se comprueba si existe para hacer un update
     //** si no un INSERT INTO
     if DM1.DisplayDescrip('prvSQL','TGE105','BCOTIPCTA',ssql,'BCOTIPCTA') = 'B' then
      begin
       DM1.cdsSaldoTlfnGrab.SetKey;
       DM1.cdsSaldoTlfnGrab.FieldByName('STFECHA').AsString := DateToStr(xFechaCom);
       DM1.cdsSaldoTlfnGrab.FieldByName('BANCOID').AsString := xBancoid;
       DM1.cdsSaldoTlfnGrab.FieldByName('CCBCOID').AsString := xCcBcoid;
       If DM1.cdsSaldoTlfnGrab.GotoKey then
        begin
         If xTmonid = DM1.wTMonLoc then
          ssql := 'UPDATE CAJA310 SET STTOTEGR= '+wReplacCeros+'(STTOTEGR,0) + '+FloatToStr(cPgoOri)+
                  ' ,STSALDOFIN= '+wReplacCeros+'(STSALDOINIC,0) + '+wReplacCeros+
                  '(STTOTING,0) - ('+wReplacCeros+'(STTOTEGR,0) +'+FloatToStr(cPgoOri)+')'+
                  ' ,TMONID='+quotedstr(xTmonid)+
                  ' WHERE STFECHA='+quotedstr(sfecha)+
                  ' AND BANCOID='+quotedstr(xBancoid)+
                  ' AND CCBCOID='+quotedstr(xCcBcoid)
         else
          ssql := 'UPDATE CAJA310 SET STEGREXT= '+wReplacCeros+'(STEGREXT,0) + '+FloatToStr(cPgoOri)+
                  ' ,STSDOFINEXT= '+wReplacCeros+'(STSDOINIEXT,0) + '+wReplacCeros+
                  '(STINGEXT,0) - ('+wReplacCeros+'(STEGREXT,0) +'+FloatToStr(cPgoOri)+')'+
                  ' ,TMONID='+quotedstr(xTmonid)+
                  ' WHERE STFECHA='+quotedstr(sfecha)+
                  ' AND BANCOID='+quotedstr(xBancoid)+
                  ' AND CCBCOID='+quotedstr(xCcBcoid)
        end
       else
        begin
         If xTMonid = dm1.wtmonLoc then
          ssql := 'INSERT INTO CAJA310 (STFECHA,BANCOID,STTOTEGR,STSALDOFIN,TMONID,CCBCOID) VALUES'+
                  ' ('+quotedstr(sfecha)+','+quotedstr(xBancoid)+','+FloatToStr(cPgoOri)+
                  ' ,-'+FloatToStr(cPgoOri)+','+quotedstr(xTMonid)+','+quotedstr(xCcBcoid)+')'
         else
          ssql := 'INSERT INTO CAJA310 (STFECHA,BANCOID,STEGREXT,STSDOFINEXT,TMONID,CCBCOID) VALUES'+
                  ' ('+quotedstr(sfecha)+','+quotedstr(xBancoid)+','+FloatToStr(cPgoOri)+
                  ' ,-'+FloatToStr(cPgoOri)+','+quotedstr(xTMonid)+','+quotedstr(xCcBcoid)+')';
        end;
      end;
      DM1.DCOM1.AppServer.EjecutaSQL(ssql);
   end;
end;


procedure TFTOficio.ActuCaja301;
Const
 xCaja301 : String = 'CIAID,TDIARID,ECANOMM,ECNOCOMP,DOCID2,DOCMOD,CPTOID,TDIARID2,'+
                     'CUENTAID,CLAUXID,PROV,CCOSID,TMONID,DEMTOORI,CPNODOC,DEFCOMP,CPFEMIS,'+
                     'CPFVCMTO,CPANOMM,DETCPAG,DEDH,DETCDOC,CPSERIE,DEMTOLOC,DEMTOEXT,'+
                     'CPNOREG,DEUSER,DEFREG,DEHREG,DEANO,DEMM,DEDD,DESS,DESEM,'+
                     'DETRI,DEAASS,DEAASEM,DEAATRI';
var
 xCampo,aux,xWhere : String;
 xCpnoreg : Integer;
begin
  xCpnoreg := 0;
   While not DM1.cdsReporte.eof do
    begin
      xCpnoreg := xCpnoreg + 1;
      //** CIAID
      xCampo := quotedstr(xCiaid)+',';
      //**TDIARID
      xCampo := xCampo + quotedstr(xTdiarid)+',';
      //**ECANOMM
      xCampo := xCampo + quotedstr(xEcanomm)+',';
      //** ECNOCOMP
      xCampo := xCampo + quotedstr(xMaxNumComp)+',';
      //** DOCID2
      xCampo := xCampo + quotedstr(xDocid)+',';
      //** DOCMOD
      xCampo := xCampo + quotedstr(dm1.wModulo)+',';
      //** CPTOID
      xCampo := xCampo + quotedstr(xCptoid)+',';
      //** TDIARID2
      xCampo := xCampo + quotedstr(xTdiarid)+',';
      //** CUENTAID
      xCampo := xCampo + quotedstr(xCuentaid)+',';

      xWhere:='CIAID='+quotedstr(xCiaid)+' AND CUENTAID='+quotedstr(xCuentaid);
      DM1.DisplayDescrip('prvSQL','TGE202','CUENTAID, CTA_CCOS, CTA_AUX',xWhere,'CuentaId');

      if DM1.cdsQry.fieldbyName('CTA_AUX').asString = 'S' then
       begin
       //** CLAUXID
       xCampo := xCampo + quotedstr(xClauxid)+',';
       //** PROV
       xCampo := xCampo + quotedstr(xAuxid)+',';
       end
      else
       begin
        //** CLAUXID
        xCampo := xCampo + quotedstr('')+',';
        //** PROV
        xCampo := xCampo + quotedstr('')+',';
       end;

      if DM1.cdsQry.fieldbyName('CTA_CCOS').asString = 'S' then
       begin
        //** CCOSID
        DM1.cdsUSE.SetKey;
        DM1.cdsUSE.FieldByName('USEID').AsString := DM1.cdsReporte.FieldByName('USEID').AsString;
        If DM1.cdsUSE.gotokey then
         xCampo := xCampo + quotedstr(DM1.cdsUSE.FieldByName('CCOSID').AsString)+','
        else
         //** CCOSID
         xCampo := xCampo + quotedstr('')+',';
       end
      else
       //** CCOSID
       xCampo := xCampo + quotedstr('')+',';

      //**TMONID
      xCampo := xCampo + quotedstr(xTmonid)+',';
      //**DEMTOORI
      xCampo := xCampo + dm1.cdsReporte.FieldByName('DEVMTO').AsString +',';
      //** CPNODOC
      xCampo := xCampo + quotedstr(xNodoc)+',';
      //** DEFCOMP
      xCampo := xCampo + quotedstr(DateToStr(xFechaCom))+',';
      //** CPFEMIS
      xCampo := xCampo + quotedstr(DateToStr(xFechaCom))+',';
      //** CPFVCMTO
      xCampo := xCampo + quotedstr(DateToStr(xFechaCom))+',';
      //** CPANOMM
      xCampo := xCampo + quotedstr(xEcanomm)+',';
      //** DETCPAG
      xCampo := xCampo + FloatToStr(xECTCAMB)+',';
      //** DEDH
      xCampo := xCampo + quotedstr('D')+',';
      //** DETCDOC
      xCampo := xCampo + FloatToStr(xECTCAMB)+',';
      //**CPSERIE
      xCampo := xCampo + quotedstr('000')+',';
       xWhere:='TMONID='+quotedstr(xTmonid);
       aux:=DM1.DisplayDescrip('prvSQL','TGE103','TMONDES',xWhere,'TMONDES');
      if (length(aux)>0) and (dm1.cdsReporte.FieldByName('DEVMTO').AsFloat > 0 ) then //(DM1.cdsRegCxP.FieldByName('DEMTOORI').AsFloat>0) then
       begin
         if xTmonid = DM1.wTMonLoc then
          begin
           //** DEMTOLOC
           xCampo := xCampo + FloatToStr(dm1.cdsReporte.FieldByName('DEVMTO').AsFloat)+',';
           //**DEMTOEXT
           xCampo := xCampo + FloatToStr(dm1.cdsReporte.FieldByName('DEVMTO').AsFloat/xECTCAMB)+',';
          end
         else
          begin
           //** DEMTOLOC
           xCampo := xCampo + FloatToStr(dm1.cdsReporte.FieldByName('DEVMTO').AsFloat*xECTCAMB)+',';
           //**DEMTOEXT
           xCampo := xCampo + FloatToStr(dm1.cdsReporte.FieldByName('DEVMTO').AsFloat)+',';
          end;
       end
      else
       begin
        //**DEMTOEXT
        xCampo := xCampo + '0.00,';
        //**DEMTOEXT
        xCampo := xCampo + '0.00,';
       end;

      //** CPNOREG
      xCampo := xCampo + quotedstr(Dm1.StrZero(IntToStr(xCpnoreg),10))+',';
      //**DEUSER
      xCampo := xCampo + quotedstr(dm1.wUsuario)+',';
      //*DEFREG
      xCampo := xCampo + wRepFecServi +',';
      //**DEHREG
      xCampo := xCampo + wRepTimeServi +',';

      xSql := 'SELECT * FROM TGE114 WHERE FECHA='+quotedstr(FPrincipal.MtxOfi.FMant.cds2.fieldbyname('FREG').AsString);
      dm1.cdsQry.close;
      dm1.cdsQry.datarequest(xSql);
      dm1.cdsQry.open;
      //**DEANO
      xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECANO').AsString)+', ';
      //**DEMM
      xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECMES').AsString)+', ';
      //**DEDD
      xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECDIA').AsString)+', ';
      //**DESS
      xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECSS').AsString)+', ';
      //**DESEM
      xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECSEM').AsString)+', ';
      //**DETRI
      xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECTRIM').AsString)+', ';
      //**DEAASS
      xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECAASS').AsString)+', ';
      //**DEAASEM
      xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECAASEM').AsString)+', ';
      //**DEAATRI
      xCampo := xCampo +  quotedStr(DM1.cdsQry.fieldByName('FECAATRI').AsString);

      xSql := 'INSERT INTO CAJA301 ('+xCaja301+') VALUES ('+xCampo+')';
     DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
     DM1.cdsReporte.next;
    end;
end;

procedure TFTOficio.ActuCre313;
Const
 xCre313 : String =  'CIAID,TDIARID,CNTCOMPROB,CNTANO,CNTANOMM,CNTLOTE,CUENTAID,DOCID,'+
                     'CNTSERIE,CNTNODOC,CNTGLOSA,CNTDH,CNTTCAMBIO,CNTMTOORI,CNTMTOLOC,'+
                     'CNTMTOEXT,CNTFEMIS,CNTFVCMTO,CNTFCOMP,CNTESTADO,CNTCUADRE,CNTUSER,'+
                     'CNTFREG,CNTHREG,CNTMM,CNTDD,CNTTRI,CNTSEM,CNTSS,CNTAATRI,CNTAASEM,'+
                     'CNTAASS,TMONID,TDIARDES,CTADES,CNTDEBEMN,CNTDEBEME,CNTHABEMN,CNTHABEME,'+
                     'CNTSALDMN,CNTSALDME,CNMODOC,CNTREG';

var
 xCampo,aux,xWhere : String;
begin
   While not DM1.cdsReporte.eof do
    begin
      //** CIAID
      xCampo := quotedstr(xCiaid)+',';
      //** TDIARID
      xCampo := xCampo + quotedstr(xTdiarid)+',';
      //** CNTCOMPROB
      xCampo := xCampo + quotedstr(xMaxNumComp)+',';
      //** CNTANO
      xCampo := xCampo + quotedstr(copy(xEcanomm,1,4))+',';
      //** CNTANOMM
      xCampo := xCampo + quotedstr(xEcanomm)+',';
      //** CNTLOTE
      xCampo := xCampo + quotedstr('000')+',';

      xCampo := xCampo + quotedstr(xDocid)+',';
      xCampo := xCampo + quotedstr(dm1.wModulo)+',';
      xCampo := xCampo + quotedstr(xCptoid)+',';
      xCampo := xCampo + quotedstr(xTdiarid)+',';
      xCampo := xCampo + quotedstr(xCuentaid)+',';

      xWhere:='CIAID='+quotedstr(xCiaid)+' AND CUENTAID='+quotedstr(xCuentaid);
      DM1.DisplayDescrip('prvSQL','TGE202','CUENTAID, CTA_CCOS, CTA_AUX',xWhere,'CuentaId');

      if DM1.cdsQry.fieldbyName('CTA_AUX').asString = 'S' then
       begin
       xCampo := xCampo + quotedstr(xClauxid)+',';
       xCampo := xCampo + quotedstr(xAuxid)+',';
       end
      else
       begin
        xCampo := xCampo + quotedstr('')+',';
        xCampo := xCampo + quotedstr('')+',';
       end;

      xCampo := xCampo + quotedstr(xTmonid)+',';
      xCampo := xCampo + dm1.cdsReporte.FieldByName('CREMTOOTOR').AsString +',';
      xCampo := xCampo + quotedstr(xNodoc)+',';
      xCampo := xCampo + quotedstr(DateToStr(xFechaCom))+',';
      xCampo := xCampo + quotedstr(DateToStr(xFechaCom))+',';
      xCampo := xCampo + quotedstr(DateToStr(xFechaCom))+',';
      xCampo := xCampo + quotedstr(xEcanomm)+',';
      xCampo := xCampo + FloatToStr(xECTCAMB)+',';
      xCampo := xCampo + quotedstr('D')+',';
      xCampo := xCampo + FloatToStr(xECTCAMB)+',';
      xCampo := xCampo + quotedstr('000')+',';
       xWhere:='TMONID='+quotedstr(xTmonid);
       aux:=DM1.DisplayDescrip('prvSQL','TGE103','TMONDES',xWhere,'TMONDES');
       if (length(aux)>0) and (dm1.cdsReporte.FieldByName('CREMTOOTOR').AsFloat > 0 ) then //(DM1.cdsRegCxP.FieldByName('DEMTOORI').AsFloat>0) then
        begin
         if xTmonid = DM1.wTMonLoc then
          begin
           xCampo := xCampo + FloatToStr(dm1.cdsReporte.FieldByName('CREMTOOTOR').AsFloat)+',';
           xCampo := xCampo + FloatToStr(dm1.cdsReporte.FieldByName('CREMTOOTOR').AsFloat/xECTCAMB);
          end
         else
          begin
           xCampo := xCampo + FloatToStr(dm1.cdsReporte.FieldByName('CREMTOOTOR').AsFloat*xECTCAMB)+',';
           xCampo := xCampo + FloatToStr(dm1.cdsReporte.FieldByName('CREMTOOTOR').AsFloat);
          end;
       end
      else
       begin
        xCampo := xCampo + '0.00,';
        xCampo := xCampo + '0.00';
       end;

      xSql := 'INSERT INTO CAJA301 ('+xCre313+') VALUES ('+xCampo+')';
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
     DM1.cdsReporte.next;
    end;
end;

end.
