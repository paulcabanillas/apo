unit APO706;

// Inicio Uso Estándares: 01/08/2011
// Unidad               : APO706
// Formulario           : FToolCuotas
// Fecha de Creación    : 15/12/2003
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Panel de Cuotas
// Actualizaciones      :
// HPC_201501_APO       : 06/01/2015 - Cambio de DCOM a Socket

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Buttons, Mant, Db, Wwdatsrc, DBClient, wwclient, ppDB,
  ppDBPipe, ppBands, ppClass, ppCtrls, ppPrnabl, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, Wwdbigrd, Wwdbgrid, ExtCtrls, StdCtrls, Mask, wwdbedit;

type
  TFToolCuotas = class(TForm)
    pnlBot: TPanel;
    dbeAso: TwwDBEdit;
    Label1: TLabel;
    dbeNom: TwwDBEdit;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    //grid : TwwDBGrid;
  public
    { Public declarations }
    mTX2 : TMant;
  	procedure OnNoDelete (Sender : TObject; MantFields: TFields);
  end;

var
  FToolCuotas: TFToolCuotas;

implementation

uses APO001, APODM, MsgDlgs;

{$R *.DFM}

procedure TFToolCuotas.OnNoDelete(Sender: TObject; MantFields: TFields);
begin
	Errormsg(Caption, ' No se Puede Eliminar este Registro ');
end;


procedure TFToolCuotas.BitBtn1Click(Sender: TObject);
begin
  Mtx2 := TMant.Create(Self);
  try
    Mtx2.User   := DM1.wUsuario;
		Mtx2.Admin  := DM1.wAdmin;
    Mtx2.Module := DM1.wModulo;
    Mtx2.DComC  := DM1.DCOM1;
//    Mtx2.ControlGridDisp:= cgdPrincipal;
    Mtx2.OnCreateMant   := nil;
    Mtx2.TableName      := 'APO303';
    Mtx2.ClientDataSet  := dm1.cdsQry;
    Mtx2.Filter         := '';
   	Mtx2.Titulo 				 := 'Reclamos';
    Mtx2.OnInsert 			 := Nil;
    Mtx2.OnEdit 				 := NIL;
   	Mtx2.OnDelete 			 := OnNoDelete;
    Mtx2.OnShow 				 := Nil;
    Mtx2.SectionName		 :='ReclamoReporte';
    Mtx2.FileNameIni		 :='\SolAportes.ini';
// Inicio HPC_201501_APO     Cambio de DCOM a Socket
    Mtx2.Tipo            := 'NORMAL';
// Fin  HPC_201501_APO     Cambio de DCOM a Socket
    Mtx2.Execute;
  finally
    Mtx2.Free;
  end;

end;

end.
