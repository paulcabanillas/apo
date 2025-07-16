unit APO301B;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, Mask, wwdbedit,
  DBGrids, DB, DBClient ;

type
  TfIncPla = class(TForm)
    GrpIncTel: TGroupBox;
    BitSeleccion: TBitBtn;
    BitSalir: TBitBtn;
    GrpAsoid: TGroupBox;
    EdtMaestro: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    EdtInconsis: TwwDBEdit;
    dbgplanilla: TwwDBGrid;
    grbConsulta: TGroupBox;
    BitConsulta: TBitBtn;
    rdbNombres: TRadioButton;
    rdbCtaAhor: TRadioButton;
    EdtBuscar: TEdit;
    procedure BitSalirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure rdbCtaAhorClick(Sender: TObject);
    procedure rdbNombresClick(Sender: TObject);
    procedure BitConsultaClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitSeleccionClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dtgInconsistenciasCellChanged(Sender: TObject);
  private
    { Private declarations }
    procedure LimpiaCds();
  public
    { Public declarations }
  end;

var
  fIncPla: TfIncPla;

implementation

uses APODM, APO301;

{$R *.dfm}

procedure TfIncPla.BitSalirClick(Sender: TObject);
begin
  // RMZ fNPago.EdtMonCob.ReadOnly := True;
  Close;
  
end;

procedure TfIncPla.FormActivate(Sender: TObject);
Var xCount:Integer;
xAposec:String;
begin

xCount:=DM1.cdsCEdu.RecordCount;

fIncPla.Caption     :='Inconsistencia De Planillas';
rdbCtaAhor.Enabled  := False; //en el cob340 no esta actualizado la cta
dbgPlanilla.Visible := True ;
dbgPlanilla.ColumnByName('ASOAPENOM').FooterValue :='N° Registros : ';
dbgPlanilla.ColumnByName('IMPORTE').FooterValue   := FloatToStrF(xCount,ffNumber, 10, 0);

end;

procedure TfIncPla.rdbCtaAhorClick(Sender: TObject);
begin
   LimpiaCds;
   EdtBuscar.Text := '';  EdtBuscar.Width:=106;   EdtBuscar.SetFocus;
end;

procedure TfIncPla.rdbNombresClick(Sender: TObject);
begin
  LimpiaCds;
  EdtBuscar.Text := '';  EdtBuscar.Width:=343;  EdtBuscar.SetFocus;
end;

procedure TfIncPla.BitConsultaClick(Sender: TObject);
Var xSql,xApoSec:String;
begin

//xApoSec:=Trim(DM1.cdsCuotas.FieldByname('CREANO').AsString)+Trim(DM1.cdsCuotas.FieldByname('CREMES').AsString);


If rdbNombres.Checked = True Then
   begin
      xSql :='SELECT ASOID,ASOAPENOM,IMPORTE,FOPERAC,NROOPE,RCOBID,DETRCOBID,TRANSANO,TRANSMES,CREFPAG,ASOCODMOD,UPROID,UPAGOID,USEID FROM COB340 WHERE '+
             ' ASOAPENOM LIKE '''+Trim(EdtBuscar.Text)+'%'''+
             ' AND NROOPE='''+TRIM(FCaptaAportes.dbeNumOpe.Text)+''''+
             ' AND FOPERAC='''+DateToStr(FCaptaAportes.dbdtpFechaOperacion.Date)+'''';
   end
 Else
   Begin
      xSql :='SELECT ASOID,ASOAPENOM,IMPORTE,FOPERAC,NROOPE,RCOBID,DETRCOBID,TRANSANO,TRANSMES,CREFPAG,ASOCODMOD,UPROID,UPAGOID,USEID FROM COB340 WHERE '+
             ' ASONCTA LIKE '''+Trim(EdtBuscar.Text)+'%'''+
             ' AND NROOPE='''+TRIM(FCaptaAportes.dbeNumOpe.Text)+''''+
             ' AND FOPERAC='''+DateToStr(FCaptaAportes.dbdtpFechaOperacion.Date)+'''';
   end;
DM1.cdsCEdu.Close;
DM1.cdsCEdu.DataRequest(xSql);
DM1.cdsCEdu.Open;
end;

procedure TfIncPla.LimpiaCds;
Var xSQL:String;
begin

DM1.cdsCEdu.Close;
xSql :='SELECT ASOID,ASOAPENOM,IMPORTE,FOPERAC,NROOPE,RCOBID,DETRCOBID,TRANSANO,TRANSMES,CREFPAG,ASOCODMOD,UPROID,UPAGOID,USEID FROM COB340 WHERE  APOSEC='+QuotedStr('900015');
DM1.cdsCEdu.DataRequest(xSQL);
DM1.cdsCEdu.Open;



end;

procedure TfIncPla.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
  End

end;



procedure TfIncPla.BitSeleccionClick(Sender: TObject);

begin

 FCaptaAportes.cdsQry2.First;

 While Not FCaptaAportes.cdsQry2.Eof do
   Begin
     If (Trim(FCaptaAportes.cdsQry2.FieldByName('CB_OK').AsString)='1') and
        (Trim(FCaptaAportes.cdsQry2.FieldByName('CB_OK2').AsString)='1') Then
       Begin
         FCaptaAportes.cdsQry2.Edit;
         FCaptaAportes.cdsQry2.FieldByName('TRANSMTO').AsCurrency :=Dm1.cdsCEdu.FieldByName('IMPORTE').AsCurrency;
         FCaptaAportes.cdsQry2.FieldByName('RCOBID').AsString     :=Dm1.cdsCEdu.FieldByName('RCOBID').AsString;
         FCaptaAportes.cdsQry2.FieldByName('DETRCOBID').AsString  :=Dm1.cdsCEdu.FieldByName('DETRCOBID').AsString;
         FCaptaAportes.dbeMonto.Text:=Dm1.cdsCEdu.FieldByName('IMPORTE').AsString;
         FCaptaAportes.dbgdetAportes.ColumnByName('TRANSMTO').FooterValue := FCaptaAportes.dbemonto.Text ;
         FCaptaAportes.dbgdetAportes.ColumnByName('TRANSMTOORI').FooterValue := FloatToStrF(DM1.OperClientDataSet(FCaptaAportes.cdsQry2,'SUM(TRANSMTOORI)',''), ffNumber, 10, 2); ;
         Close;
         Exit;
       End;
        FCaptaAportes.cdsQry2.Next
   End;

 FCaptaAportes.dbeMonto.Text:=Dm1.cdsCEdu.FieldByName('IMPORTE').AsString;
 FCaptaAportes.dbeMontoExit(SELF);
 FCaptaAportes.dbemonto.TEXT := FloatToStrF(DM1.OperClientDataSet(FCaptaAportes.cdsQry2,'SUM(TRANSMTO)',''), ffNumber, 10, 2);
 FCaptaAportes.dbgdetAportes.ColumnByName('TRANSMTO').FooterValue := FCaptaAportes.dbemonto.Text ;
 FCaptaAportes.dbgdetAportes.ColumnByName('TRANSMTOORI').FooterValue := FloatToStrF(DM1.OperClientDataSet(FCaptaAportes.cdsQry2,'SUM(TRANSMTOORI)',''), ffNumber, 10, 2); ;

 //FcaptaAportes.dbeMonto.Text.ReadOnly := False;
 Close;
end;

procedure TfIncPla.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//fNPago.EdtMonCob.ReadOnly := True;
end;

procedure TfIncPla.dtgInconsistenciasCellChanged(Sender: TObject);
begin
 // EdtInconsis.Text:=DM1.cdsCEdu.FieldByName('ASOID').AsString;

end;

end.
