Unit APOD13;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, Spin, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls;

Type
   TfAporDupli = Class(TForm)
      BitSeleccion: TBitBtn;
      BitSalir: TBitBtn;
      dtgApoDup: TwwDBGrid;
      spdAnnio: TSpinEdit;
      spdMes: TSpinEdit;
      PnlGrabar: TPanel;
      spdAnnioN: TSpinEdit;
      spdMesN: TSpinEdit;
      BitGrabar: TBitBtn;
      Shape1: TShape;
      Procedure BitSeleccionClick(Sender: TObject);
      Procedure BitSalirClick(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
      Procedure BitGrabarClick(Sender: TObject); // HPP_200901_APO - Realizado por Ricardo Medina
      Procedure spdMesExit(Sender: TObject);     // HPP_200901_APO - Realizado por Ricardo Medina
      Procedure spdMesNExit(Sender: TObject);    // HPP_200901_APO - Realizado por Ricardo Medina
      Procedure FormKeyPress(Sender: TObject; Var Key: Char); // HPP_200901_APO - Realizado por Ricardo Medina
   Private
    { Private declarations }
      Procedure LimpiaGrid;
   Public
    { Public declarations }
   End;

Var
   fAporDupli: TfAporDupli;

Implementation

Uses APODM;

{$R *.dfm}

Procedure TfAporDupli.BitSeleccionClick(Sender: TObject);
Var
   xSQL, xAsoId: String;
Begin
   xAsoId := DM1.cdsTransacciones.FieldByname('ASOID').AsString;

   // HPP_200901_APO - Realizado por Ricardo Medina
   xSQL := 'BEGIN SP_ACT_APO301ID (''' + xAsoId + '''); END;';
   DM1.DCOM1.AppServer.EjecutaSQL(XSQL);

   xSQL := 'SELECT ASOID,TRANSANO,TRANSMES,ASOAPENOM,TRANSNOPE,'
         + '       TRANSFOPE,TRANSMTO,USUARIO,FREG, APOSEC,APO301ID '
         + '  FROM APO301 '
         + ' WHERE ASOID      =' + QuotedStr(xAsoId)
         + '   AND TRANSANO   =' + QuotedStr(spdAnnio.Text)
         + '   AND TRANSMES   =' + QuotedStr(Format('%.2d', [spdMes.Value]))
         + '   AND TRANSINTID =''APO'' ';
   DM1.cdsBcos.Close;
   DM1.cdsBcos.DataRequest(xSQL);
   DM1.cdsBcos.Open;
   PnlGrabar.Enabled := False;
   If DM1.cdsBcos.RecordCount > 1 Then
   Begin
      PnlGrabar.Enabled := True;
   End;
End;

Procedure TfAporDupli.BitSalirClick(Sender: TObject);
Begin
   Close;
End;

Procedure TfAporDupli.LimpiaGrid;
Var
   xSQL: String;
Begin
   xSQL := 'SELECT ASOID,TRANSANO,TRANSMES,ASOAPENOM,TRANSNOPE, '
          +'       TRANSFOPE,TRANSMTO,USUARIO,FREG,APOSEC '
          +'  FROM APO301 '
          +' WHERE ASOID    =' + QuotedStr('#$$%%!!!!') + ' AND TRANSANO=' + QuotedStr('@@@@')
          +'   AND TRANSMES =' + QuotedStr(Format('%.2d', [0])) + ' AND TRANSINTID=''APO'' ';
   DM1.cdsBcos.Close;
   DM1.cdsBcos.DataRequest(xSQL);
   DM1.cdsBcos.Open;
End;

Procedure TfAporDupli.FormActivate(Sender: TObject);
Begin
   LimpiaGrid;
   spdAnnio.Text  := Copy(DateToStr(DM1.FechaSis), 7, 4);
   spdMes.Text    := Copy(DateToStr(DM1.FechaSis), 4, 2);
   spdAnnioN.Text := Copy(DateToStr(DM1.FechaSis), 7, 4);
   spdMesN.Text   := Copy(DateToStr(DM1.FechaSis), 4, 2);
End;

// HPP_200901_APO - Realizado por Ricardo Medina
Procedure TfAporDupli.BitGrabarClick(Sender: TObject);
Var
   xSQL, xAsoId: String;
   Boton: Integer;
Begin
   // HPP_200903_APO se cambia de =2 --> >=2 por RMEDINA
   If DM1.cdsBcos.RecordCount >= 2 Then
   Begin
      Boton := Application.MessageBox('¿SEGURO DE CAMBIAR EL PERIODO DE APORTE PARA ESTE REGISTRO?', 'Sistema de Aportes', MB_YESNO + MB_ICONQUESTION);
      If Boton = ID_YES Then
      Begin
         xAsoId := DM1.cdsBcos.FieldByname('ASOID').AsString;
         xSQL := ' UPDATE APO301 '
               + '    SET TRANSMES =' + QuotedStr(spdMesN.Text) + ',TRANSANO=' + QuotedStr(spdAnnioN.Text)
               + '  WHERE ASOID    =' + QuotedStr(xAsoId)
               + '    AND TRANSFOPE=' + QuotedStr(DM1.cdsBcos.FieldByname('TRANSFOPE').AsString)
               + '    AND TRANSNOPE=' + QuotedStr(DM1.cdsBcos.FieldByname('TRANSNOPE').AsString)
               + '    AND TRANSANO =' + QuotedStr(spdAnnio.Text)
               + '    AND TRANSMES =' + QuotedStr(spdMes.Text)
               + '    AND APOSEC   =' + QuotedStr(DM1.cdsBcos.FieldByname('APOSEC').AsString)
               + '    AND FREG     =' + QuotedStr(DM1.cdsBcos.FieldByname('FREG').AsString)
               + '    AND APO301ID =' + QuotedStr(DM1.cdsBcos.FieldByname('APO301ID').AsString);
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);

         xSQL := 'SELECT ASOID,TRANSANO,TRANSMES,ASOAPENOM,TRANSNOPE,TRANSFOPE, '
               + '       TRANSMTO,USUARIO,FREG,APOSEC '
               + '  FROM APO301 '
               + ' WHERE ASOID      = ' + QuotedStr(xAsoId)
               + '   AND TRANSANO   = ' + QuotedStr(spdAnnio.Text)
               + '   AND TRANSMES   = ' + QuotedStr(Format('%.2d', [spdMes.Value]))
               + '   AND TRANSINTID = ''APO'' ';
         DM1.cdsBcos.Close;
         DM1.cdsBcos.DataRequest(xSQL);
         DM1.cdsBcos.Open;
         PnlGrabar.Enabled := False;
         If DM1.cdsBcos.RecordCount > 1 Then
         Begin
            PnlGrabar.Enabled := True;
         End;
      End;
   End
   Else
   Begin
      // HPP_200903_APO para controlar y visualizar mejor el if por RMEDINA
      If DM1.cdsBcos.RecordCount = 1 Then
      Begin
         MessageDlg('Registro NO es Duplicado!!!', mtError, [mbOk], 0);
         Exit;
      End;
   End;
End;

Procedure TfAporDupli.spdMesExit(Sender: TObject);
Begin
   spdMes.Text := Format('%.2d', [spdMes.Value]);
End;

Procedure TfAporDupli.spdMesNExit(Sender: TObject);
Begin
   spdMesN.Text := Format('%.2d', [spdMesN.Value]);
End;

Procedure TfAporDupli.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If (Key = #13) Then
   Begin
      Key := #0;
      Perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

End.

