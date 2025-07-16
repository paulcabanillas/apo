unit APO705;

// Inicio Uso Estándares: 01/08/2011
// Unidad               : APO705
// Formulario           : FToolAportes
// Fecha de Creación    : 15/12/2003
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Panel de Aportes
// Actualizaciones      :
// HPC_201501_APO       : 06/01/2015 - Cambio de DCOM a Socket

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Buttons, Mant, Db, Wwdatsrc, DBClient, wwclient, ppDB,
  ppDBPipe, ppBands, ppClass, ppCtrls, ppPrnabl, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, Wwdbigrd, Wwdbgrid, ExtCtrls, StdCtrls, fcButton,
  fcImgBtn, fcShapeBtn;

type
  TFToolAportes = class(TForm)
    pnlBot: TPanel;
    bbtnReclamos: TBitBtn;
    bbtnAceptar: TfcShapeBtn;
    edtAsociado: TEdit;
    lblApeMat: TLabel;
    procedure bbtnReclamosClick(Sender: TObject);
    procedure bbtnAceptarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    //grid : TwwDBGrid;
    procedure OnEditRepAportes (Sender : TObject; MantFields: TFields);
  public
    { Public declarations }
    mTX2, MTX1 : TMant;
  	procedure OnNoDelete (Sender : TObject; MantFields: TFields);
  end;

var
  FToolAportes: TFToolAportes;

implementation

uses APO001, APODM, APO706, MsgDlgs;

{$R *.DFM}

procedure TFToolAportes.OnNoDelete(Sender: TObject; MantFields: TFields);
begin
	Errormsg(Caption, ' No se Puede Eliminar este Registro ');
end;

procedure TFToolAportes.bbtnReclamosClick(Sender: TObject);
begin
  Screen.Cursor:=crHourGlass;
  Mtx2 := TMant.Create(Self);
  try
    Mtx2.Admin          := DM1.wAdmin;
    Mtx2.User           := DM1.wUsuario;
    Mtx2.Module         := DM1.wModulo;
    Mtx2.DComC          := DM1.DCOM1;
    Mtx2.ControlGridDisp:= FPrincipal.cgdPrincipal;
    Mtx2.ClientDataSet  := dm1.cdsQry;
    Mtx2.TableName      := 'APO303';
   	Mtx2.Titulo 				:= 'Reclamos';
    Mtx2.OnCreateMant   := nil;
    Mtx2.OnInsert 			:= Nil;
    Mtx2.OnEdit 				:= OnEditRepAportes;
   	Mtx2.OnDelete 			:= OnNoDelete;
    Mtx2.OnShow 				:= Nil;
    Mtx2.Filter         := 'ASOID='+QuotedStr(DM1.cdsTransacciones.FieldByName('ASOID').AsString);
    Mtx2.SectionName		:='ReclamoReporte';
    Mtx2.FileNameIni		:='\SolAportes.ini';
    Mtx2.NoVisible.Clear;
		Screen.Cursor:=crDefault;
// Inicio HPC_201501_APO     Cambio de DCOM a Socket
    Mtx2.Tipo            := 'NORMAL';
// Fin  HPC_201501_APO     Cambio de DCOM a Socket
    Mtx2.Execute;
  finally
    Mtx2.Free;
  end;
end;

procedure TFToolAportes.OnEditRepAportes (Sender : TObject; MantFields: TFields);
begin
  if DM1.cdsTransacciones.RecordCount=0 then
  begin
  	ShowMessage('No existen registros a editar');
    exit;
  end;

  FToolCuotas := TFToolCuotas.Create(Self);
  FToolCuotas.dbeAso.Text :=dm1.cdsTransacciones.FieldByName('ASOID').AsString;
  FToolCuotas.dbeNom.Text :=dm1.cdsTransacciones.FieldByName('ASOAPENOM').AsString;

  Mtx1 := TMant.Create(Self);
  try
    Mtx1.User           := DM1.wUsuario;
		Mtx1.Admin          := DM1.wAdmin;
    Mtx1.Module         := DM1.wModulo;
    Mtx1.DComC          := DM1.DCOM1;
    Mtx1.ControlGridDisp:= FPrincipal.cgdPrincipal;
    Mtx1.OnCreateMant   := Nil;//ToolCuotasCreate;
    Mtx1.TableName      := 'APO301';
    Mtx1.ClientDataSet  := dm1.cdsAsociados1;
    Mtx1.Filter         := 'APO301.ASOID='+QuotedStr(dm1.cdsTransacciones.FieldByName('ASOID').AsString);
   	Mtx1.Titulo 				:= 'Aportes Asociado';
    Mtx1.OnInsert 			:= Nil;
    Mtx1.OnEdit 				:= NIL;
   	Mtx1.OnDelete 			:= OnNoDelete;
    Mtx1.OnShow 				:= Nil;
    Mtx1.SectionName		:='AportesReporte2';
    Mtx1.FileNameIni		:='\SolAportes.ini';
    Mtx1.Colors.Add('ASOID;clTeal;clWhite;;;APOFDEV%=%S%;');
    Mtx1.Colors.Add('ASOID;clRed;clWhite;;;APOFRECL%=%S%AND%APOFDEV%<>%S%;');
// Inicio HPC_201501_APO     Cambio de DCOM a Socket
    Mtx1.Tipo            := 'NORMAL';
// Fin  HPC_201501_APO     Cambio de DCOM a Socket
    Mtx1.Execute;
  finally
    Mtx1.Free;
    FToolCuotas.Free;
  end;
end;

procedure TFToolAportes.bbtnAceptarClick(Sender: TObject);
var
  xSQL: String;
begin
  if Length(Trim(edtAsociado.Text))>0 Then
    xSQL:='SELECT * FROM APO301 WHERE ASOAPENOM LIKE '+QuotedStr(Trim(edtAsociado.Text+'%'))
  else
    xSQL:='SELECT * FROM APO201';

  Screen.Cursor:=crHourGlass;
  Mtx.UsuarioSQL.Clear;
  Mtx.FMant.wTabla:='APO301';
  Mtx.UsuarioSQL.Add(xSQL);
  Mtx.NewQuery;
  Screen.Cursor:=crDefault;
end;

procedure TFToolAportes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If key=#13 Then
  Begin
     key:=#0;
     perform(CM_DialogKey,VK_TAB,0);
  End;
end;

end.
