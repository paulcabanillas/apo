unit APO313;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Mask, ExtCtrls, wwdblook, Wwdbdlg, Grids,
  Wwdbigrd, Wwdbgrid, DBGrids, DB;

type
  TFgesapomod = class(TForm)
    Label1: TLabel;
    pnlasocodmod: TPanel;
    measocodmod: TMaskEdit;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    Panel1: TPanel;
    measoapenomdni: TMaskEdit;
    Panel2: TPanel;
    medepdes: TMaskEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Panel3: TPanel;
    meuniprodes: TMaskEdit;
    Panel4: TPanel;
    meunipagdes: TMaskEdit;
    Panel5: TPanel;
    measodni: TMaskEdit;
    Label6: TLabel;
    Panel6: TPanel;
    meunigesdes: TMaskEdit;
    Label7: TLabel;
    btnprocesar: TBitBtn;
    GroupBox1: TGroupBox;
    BitBtn2: TBitBtn;
    GroupBox2: TGroupBox;
    dblcddesnoapo: TwwDBLookupComboDlg;
    Panel9: TPanel;
    medesnoapome: TMaskEdit;
    medes: TMemo;
    GroupBox3: TGroupBox;
    dbgnoaportantes: TwwDBGrid;
    Label8: TLabel;
    Label9: TLabel;
    Panel7: TPanel;
    mecanapofal: TMaskEdit;
    Panel8: TPanel;
    memonapofal: TMaskEdit;
    btnmarcar: TBitBtn;
    btnlimpiar: TBitBtn;
    Label10: TLabel;
    BitBtn1: TBitBtn;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure measocodmodChange(Sender: TObject);
    procedure measocodmodExit(Sender: TObject);
    procedure btnprocesarClick(Sender: TObject);
    procedure dbgnoaportantesDblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnmarcarClick(Sender: TObject);
    procedure btnlimpiarClick(Sender: TObject);
    procedure dblcddesnoapoChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    procedure llenadatos;
    procedure limpia;
  public
    { Public declarations }
  end;

var
  Fgesapomod: TFgesapomod;

implementation

uses APO314, APODM;

{$R *.dfm}

procedure TFgesapomod.SpeedButton1Click(Sender: TObject);
begin
  DM1.xFlg := 'B';
  limpia;
  Try
    FBusAso := TFBusAso.create(Self);
    FBusAso.ShowModal;
  Finally
    FBusAso.Free;
  End;
  If Length(Trim(DM1.cdsAsociados.FieldByName('ASOID').AsString)) > 0 Then
  Begin
    llenadatos;
  End;
end;

procedure TFgesapomod.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
  begin
    Key := #0;
    Perform(CM_DIALOGKEY, VK_TAB, 0);
  end;
end;

procedure TFgesapomod.llenadatos;
var xdepid:String;
begin
  measocodmod.Text := DM1.cdsAsociados.FieldByName('ASOCODMOD').AsString;
  measoapenomdni.Text := DM1.cdsAsociados.FieldByName('ASOAPENOMDNI').AsString;
  measodni.Text := DM1.cdsAsociados.FieldByName('ASODNI').AsString;
  xSql := 'SELECT USENOM, DPTOID FROM APO101 WHERE UPROID = '+QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString)+' AND UPAGOID = '+QuotedStr(DM1.cdsAsociados.FieldByname('UPAGOID').AsString)+' AND USEID = '+QuotedStr(DM1.cdsAsociados.FieldByName('USEID').AsString);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  meunigesdes.Text := DM1.cdsQry.FieldByName('USENOM').AsString;
  xdepid := DM1.cdsQry.FieldByName('DPTOID').AsString;
  xSql := 'SELECT DPTODES FROM APO158 WHERE DPTOID = '+QuotedStr(xdepid);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  medepdes.Text := DM1.cdsQry.FieldByName('DPTODES').AsString;
  xSql := 'SELECT UPRONOM FROM APO102 WHERE UPROID = '+QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  meuniprodes.Text := DM1.cdsQry.FieldByName('UPRONOM').AsString;
  xSql := 'SELECT UPAGONOM FROM APO103 WHERE UPROID = '+QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString)+' AND UPAGOID = '+QuotedStr(DM1.cdsAsociados.FieldByname('UPAGOID').AsString);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  meunipagdes.Text := DM1.cdsQry.FieldByName('UPAGONOM').AsString;
end;

procedure TFgesapomod.FormActivate(Sender: TObject);
Var xSql:String;
begin

  xSql := 'SELECT CODMOTNOAPO, DESMOTNOAPO FROM APO_DES_NO_APO';
  DM1.cdsQry4.Close;
  DM1.cdsQry4.DataRequest(xSql);
  DM1.cdsQry4.Open;


  {DM1.cdsFPagoAporte.Close;
  DM1.cdsFPagoAporte.DataRequest(xSql);
  DM1.cdsFPagoAporte.Open;
  }

  dblcddesnoapo.Selected.Clear;
  dblcddesnoapo.Selected.Add('CODMOTNOAPO'#9'2'#9'Código'#9#9);
  dblcddesnoapo.Selected.Add('DESMOTNOAPO'#9'30'#9'Descripción'#9#9);

  DM1.xFlg := 'T';
  If DM1.cdsAportes.Active Then DM1.cdsAportes.EmptyDataSet;

  measocodmod.SetFocus;


End;


procedure TFgesapomod.limpia;
begin
  measocodmod.Text := '';
  measoapenomdni.Text := '';
  medepdes.Text := '';
  meuniprodes.Text := '';
  meunipagdes.Text := '';
  meunigesdes.Text := '';
  measodni.Text := '';
end;

procedure TFgesapomod.measocodmodChange(Sender: TObject);
begin
  If Length(Trim(meAsocodmod.Text)) = 0 Then
  Begin
    limpia;
    DM1.xFlg := 'N';
  End;
End;

procedure TFgesapomod.measocodmodExit(Sender: TObject);
begin
  DM1.xFlg := 'T';
  If DM1.xFlg = 'T' Then
  Begin
    If Length(Trim(meAsocodmod.Text))=0 Then
    Else
    Begin
      If Length(Trim(meAsocodmod.Text))>10 Then
      Begin
        MessageDlg('Codigo Modular No Puede Tener Mas De 10 Caracteres...!', mtError, [mbOk], 0);
         meAsocodmod.Text:='';
         meAsocodmod.SetFocus;
         Exit;
      End;

//      meAsocodmod.Text:= Format('%.10d',[StrToInt(meAsocodmod.Text)]);

      meAsocodmod.Text:= DM1.StrZero(Trim(meAsocodmod.Text),10);

      DM1.cdsAsociados.Close;
      xSql := 'SELECT A.*, B.USENOM, C.ASOTIPDES FROM APO201 A, APO101 B, APO107 C WHERE ASOCODMOD LIKE '+QuotedStr(meAsocodmod.Text+'%')
      +' AND A.USEID = B.USEID(+) AND A.UPAGOID = B.UPAGOID(+) AND A.UPROID = B.UPROID(+)'
      +' AND A.ASOTIPID = C.ASOTIPID';
      DM1.cdsAsociados.DataRequest(xSql);
      DM1.cdsAsociados.Open;
      If DM1.cdsAsociados.RecordCount = 1 Then
      Begin
        If DM1.cdsAsociados.FieldByName('DESHABILITADO').AsString = 'S' Then
        Begin
          MessageDlg(' EL REGISTRO SE ENCUENTRA BLOQUEADO/DESHABILITADO COMUNICARSE CON EQUIPO DE COBRANZAS ', mtError, [mbOk], 0);
          Exit;
        End;
        limpia;
        llenadatos;
      End
      Else
        If DM1.cdsAsociados.RecordCount > 1 Then
        Begin
          DM1.cdsAsociados.Close;
          xSql := 'SELECT A.*, B.USENOM, C.ASOTIPDES FROM APO201 A, APO101 B, APO107 C WHERE ASOCODMOD LIKE '+QuotedStr(meAsocodmod.Text+'%')
          +' AND A.USEID = B.USEID(+) AND A.UPAGOID = B.UPAGOID(+) AND A.UPROID = B.UPROID(+)'
          +' AND A.ASOTIPID = C.ASOTIPID';
          DM1.cdsAsociados.DataRequest(xSql);
          DM1.cdsAsociados.Open;
          Try
            FBusAso := TFBusAso.create(Self);
            FBusAso.ShowModal;
          Finally
            FBusAso.Free;
          End;
          llenadatos;
        End
    Else
    Begin
      limpia;
      MessageDlg('Codigo Modular No Existe...!', mtError, [mbOk], 0);
      meAsocodmod.SetFocus;
    End;
  End;
  end;
  end;

Procedure TFgesapomod.btnprocesarClick(Sender: TObject);
Var xSql:String;
  monapo, valapo:Double;
  canmar, monmar :Double;
Begin
  xSql := 'SELECT ASOAPENOMDNI, TRANSANO, TRANSMES, MESDESL, VALAPO, MONAPO, CB_OK, FLAG, USEID, UPAGOID, UPROID, ASOCODMOD, ASOCODAUX, ASOID FROM'
  +' (SELECT A.ASOAPENOMDNI, A.TRANSANO, A.TRANSMES, B.MESDESL, NVL(A.VALAPO,0) VALAPO, NVL(A.MONAPO,0) MONAPO,  NVL(FLAG,''0'') CB_OK, A.FLAG, C.ASOID,'
  +' C.USEID, C.UPAGOID, C.UPROID, C.ASOCODMOD, C.ASOCODAUX FROM APO_PRO_ASO_NO_APO_DET A, TGE181 B, APO201 C WHERE A.ASOID = '+QuotedStr(DM1.cdsAsociados.FieldByName('ASOID').AsString)
  +' AND A.ASOID = C.ASOID AND A.TRANSMES = B.MESIDR AND NVL(A.CODPRO,''99'') <> ''04'' ORDER BY TRANSANO, TRANSMES)'
  +' GROUP BY ASOAPENOMDNI, TRANSANO, TRANSMES, MESDESL, VALAPO, MONAPO, CB_OK, FLAG, USEID,UPAGOID, UPROID, ASOCODMOD, ASOCODAUX, ASOID ORDER BY TRANSANO, TRANSMES';
  DM1.cdsAportes.Close;
  DM1.cdsAportes.DataRequest(xSql);
  DM1.cdsAportes.Open;
  DM1.cdsAportes.First;
  monapo := 0;
  valapo := 0;
  While Not DM1.cdsAportes.Eof Do
  Begin
    If DM1.cdsAportes.FieldByName('FLAG').AsString = '1' Then
    Begin
      canmar := canmar + 1;
      monmar := monmar + DM1.cdsAportes.FieldByName('VALAPO').AsFloat;
    End;
    monapo := monapo + DM1.cdsAportes.FieldByName('MONAPO').AsFloat;
    valapo := valapo + DM1.cdsAportes.FieldByName('VALAPO').AsFloat;
    DM1.cdsAportes.Next;
  End;
  DM1.cdsAportes.First;
  dbgnoaportantes.Selected.Clear;
  dbgnoaportantes.Selected.Add('TRANSANO'#9'6'#9'Año del~Aporte'#9#9);
  dbgnoaportantes.Selected.Add('MESDESL'#9'15'#9'Mes del~Aporte'#9#9);
  dbgnoaportantes.Selected.Add('VALAPO'#9'10'#9'Monto del~Aporte'#9#9);
  dbgnoaportantes.Selected.Add('MONAPO'#9'9'#9'Monto~Aportado'#9#9);
  TNumericField(DM1.cdsAportes.FieldByName('VALAPO')).DisplayFormat := '##0.00';
  TNumericField(DM1.cdsAportes.FieldByName('MONAPO')).DisplayFormat := '##0.00';
  dbgnoaportantes.Selected.Add('CB_OK'#9'3'#9'Seleccionar'#9'F');
  dbgnoaportantes.SetControlType('CB_OK', fctCheckBox, '1;0');
  dbgnoaportantes.ApplySelected;
  dbgnoaportantes.ColumnByName('VALAPO').FooterValue := FormatFloat('##,###.##',valapo);
  dbgnoaportantes.ColumnByName('MONAPO').FooterValue := FormatFloat('##,###.##',monapo);
  mecanapofal.Text := FloatToStrF(canmar,ffNumber,10,0);
  memonapofal.Text := FloatToStrF(monmar,ffNumber,10,2);

End;

Procedure TFgesapomod.dbgnoaportantesDblClick(Sender: TObject);
Var can, mon : Double;
pos :TBookmark;
Begin
  pos := DM1.cdsAportes.GetBookmark;
  DM1.cdsAportes.Edit;
  If DM1.cdsAportes.FieldByName('CB_OK').AsString = '1' Then
    DM1.cdsAportes.FieldByName('CB_OK').AsString := '0'
  Else
    DM1.cdsAportes.FieldByName('CB_OK').AsString := '1';
  DM1.cdsAportes.ApplyUpdates(0);
  DM1.cdsAportes.First;
  can := 0; mon := 0;
  While Not DM1.cdsAportes.Eof Do
  Begin
    If DM1.cdsAportes.FieldByName('CB_OK').AsString = '1' Then
    Begin
      can := can + 1;
      mon := mon + DM1.cdsAportes.FieldByName('VALAPO').AsFloat;
    End;
    DM1.cdsAportes.Next;
  End;
  mecanapofal.Text := FloatToStrF(can,ffNumber,10,0);
  memonapofal.Text := FloatToStrF(mon,ffNumber,10,2);
  DM1.cdsAportes.GotoBookmark(pos);
  DM1.cdsAportes.FreeBookmark(pos);
  dbgnoaportantes.Refresh;
End;

procedure TFgesapomod.BitBtn2Click(Sender: TObject);
begin
  Fgesapomod.Close;
end;

procedure TFgesapomod.btnmarcarClick(Sender: TObject);
Var can, mon : Double;
pos         : TBookmark;
begin
  // Marcar todos
  pos :=  DM1.cdsAportes.GetBookmark;
  DM1.cdsAportes.First;
  can := 0; mon := 0;
  While Not DM1.cdsAportes.Eof Do
  Begin
    can := can + 1;
    mon := mon + DM1.cdsAportes.FieldByName('VALAPO').AsFloat;
    DM1.cdsAportes.Edit;
    DM1.cdsAportes.FieldByName('CB_OK').AsString := '1';
    DM1.cdsAportes.Next;
  End;
  mecanapofal.Text := FloatToStrF(can,ffNumber,10,0);
  memonapofal.Text := FloatToStrF(mon,ffNumber,10,2);
  DM1.cdsAportes.GotoBookmark(pos);
  DM1.cdsAportes.FreeBookmark(pos);
  dbgnoaportantes.Refresh;
End;

procedure TFgesapomod.btnlimpiarClick(Sender: TObject);
Var can, mon : Double;
pos         : TBookmark;
begin
  // Marcar todos
  pos :=  DM1.cdsAportes.GetBookmark;
  DM1.cdsAportes.First;
  can := 0; mon := 0;
  While Not DM1.cdsAportes.Eof Do
  Begin
    DM1.cdsAportes.Edit;
    DM1.cdsAportes.FieldByName('CB_OK').AsString := '0';
    DM1.cdsAportes.Next;
  End;
  mecanapofal.Text := FloatToStrF(can,ffNumber,10,0);
  memonapofal.Text := FloatToStrF(mon,ffNumber,10,2);
  DM1.cdsAportes.GotoBookmark(pos);
  DM1.cdsAportes.FreeBookmark(pos);
  dbgnoaportantes.Refresh;
End;

Procedure TFgesapomod.dblcddesnoapoChange(Sender: TObject);
Var xSql:String;
Begin
  If Trim(dblcddesnoapo.Text) = '' then
  Begin
    dblcddesnoapo.Text := '';
    medesnoapome.Text := '';
    Exit;
  End;
  If Length(Trim(dblcddesnoapo.Text)) = 2 then
  Begin
    If DM1.cdsQry4.Locate('CODMOTNOAPO', dblcddesnoapo.Text,[]) Then
    Begin
      medesnoapome.Text := DM1.cdsQry4.FieldByName('DESMOTNOAPO').AsString;
    End
    Else
    Begin
      MessageDlg('Código no Valido', mtInformation, [mbOk], 0);
      dblcddesnoapo.Text := '';
      medesnoapome.Text := '';
      Exit;
    End;
  End;
End;

Procedure TFgesapomod.BitBtn1Click(Sender: TObject);
Var canmar, monmar, monapo, valapo:Double;
Begin
  If Trim(dblcddesnoapo.Text) = '' Then
  Begin
    MessageDlg('Seleccione el tipo de conclusión', mtInformation, [mbOk], 0);
    dblcddesnoapo.SetFocus;
    Exit;
  End;
  If Trim(medes.Text) = '' Then
  Begin
    MessageDlg('Ingrese comentario de la descripción', mtInformation, [mbOk], 0);
    medes.SetFocus;
    Exit;
  End;
  If MessageDlg('¿ Seguro de incluir estos meses como no aportantes ?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
    DM1.cdsAportes.First;
    While Not DM1.cdsAportes.Eof Do
    Begin
      If DM1.cdsAportes.FieldByName('CB_OK').AsString = '1' Then
      Begin
        xSql := 'INSERT INTO APO_ASO_NO_APO(ASOID, ASOCODMOD, ASOCODAUX, ASOAPENOMDNI, UPROID, UPAGOID, USEID, TRANSANO, TRANSMES, VALAPO, CODMOTNOAPO, COMMOTNOAPO, USUREG, FECREG, HORREG)'
        +' VALUES ('+QuotedStr(DM1.cdsAportes.FieldByName('ASOID').AsString)+','+QuotedStr(DM1.cdsAportes.FieldByName('ASOCODMOD').AsString)+','+QuotedStr(DM1.cdsAportes.FieldByName('ASOCODAUX').AsString)
        +','+QuotedStr(DM1.cdsAportes.FieldByName('ASOAPENOMDNI').AsString)+','+QuotedStr(DM1.cdsAportes.FieldByName('UPROID').AsString)
        +','+QuotedStr(DM1.cdsAportes.FieldByName('UPAGOID').AsString)+','+QuotedStr(DM1.cdsAportes.FieldByName('USEID').AsString)
        +','+QuotedStr(DM1.cdsAportes.FieldByName('TRANSANO').AsString)+','+QuotedStr(DM1.cdsAportes.FieldByName('TRANSMES').AsString)
        +','+DM1.cdsAportes.FieldByName('VALAPO').AsString+','+QuotedStr(dblcddesnoapo.Text)+','+QuotedStr(medes.Text)
        +','+QuotedStr(DM1.wUsuario)+', TO_DATE(SYSDATE), SYSDATE)';
        DM1.DCOM1.AppServer.EjecutaSQL(xSql);
        xSql := 'UPDATE APO_PRO_ASO_NO_APO_DET SET USUPRO = '+QuotedStr(DM1.wUsuario)
        +' ,FECPRO= SYSDATE ,CODPRO= ''04'' ,DESPRO = '+QuotedStr(medes.Text)+' WHERE ASOID = '+QuotedStr(DM1.cdsAportes.FieldByName('ASOID').AsString)
        +' AND TRANSANO = '+QuotedStr(DM1.cdsAportes.FieldByName('TRANSANO').AsString)+' AND TRANSMES = '+QuotedStr(DM1.cdsAportes.FieldByName('TRANSMES').AsString);
        DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      End;
      DM1.cdsAportes.Next;
    End;
    xSql := 'SELECT ASOAPENOMDNI, TRANSANO, TRANSMES, MESDESL, VALAPO, MONAPO, CB_OK, FLAG, USEID, UPAGOID, UPROID, ASOCODMOD, ASOCODAUX, ASOID FROM'
    +' (SELECT A.ASOAPENOMDNI, A.TRANSANO, A.TRANSMES, B.MESDESL, NVL(A.VALAPO,0) VALAPO, NVL(A.MONAPO,0) MONAPO,  NVL(FLAG,''0'') CB_OK, A.FLAG, C.ASOID,'
    +' C.USEID, C.UPAGOID, C.UPROID, C.ASOCODMOD, C.ASOCODAUX FROM APO_PRO_ASO_NO_APO_DET A, TGE181 B, APO201 C WHERE A.ASOID = '+QuotedStr(DM1.cdsAsociados.FieldByName('ASOID').AsString)
    +' AND A.ASOID = C.ASOID AND A.TRANSMES = B.MESIDR AND NVL(A.CODPRO,''99'') <> ''04'' ORDER BY TRANSANO, TRANSMES)'
    +' GROUP BY ASOAPENOMDNI, TRANSANO, TRANSMES, MESDESL, VALAPO, MONAPO, CB_OK, FLAG, USEID,UPAGOID, UPROID, ASOCODMOD, ASOCODAUX, ASOID ORDER BY TRANSANO, TRANSMES';
    DM1.cdsAportes.Close;
    DM1.cdsAportes.DataRequest(xSql);
    DM1.cdsAportes.Open;
    DM1.cdsAportes.First;
    While Not DM1.cdsAportes.Eof Do
    Begin
      If DM1.cdsAportes.FieldByName('FLAG').AsString = '1' Then
      Begin
        canmar := canmar + 1;
        monmar := monmar + DM1.cdsAportes.FieldByName('VALAPO').AsFloat;
      End;
      monapo := monapo + DM1.cdsAportes.FieldByName('MONAPO').AsFloat;
      valapo := valapo + DM1.cdsAportes.FieldByName('VALAPO').AsFloat;
      DM1.cdsAportes.Next;
    End;
    DM1.cdsAportes.First;
    dbgnoaportantes.ColumnByName('VALAPO').FooterValue := FormatFloat('##,###.##',valapo);
    dbgnoaportantes.ColumnByName('MONAPO').FooterValue := FormatFloat('##,###.##',monapo);
    mecanapofal.Text := FloatToStrF(canmar,ffNumber,10,0);
    memonapofal.Text := FloatToStrF(monmar,ffNumber,10,2);
    dbgnoaportantes.Refresh;
    dblcddesnoapo.Text := '';
    medes.Text := '';
  End;
End;

end.
