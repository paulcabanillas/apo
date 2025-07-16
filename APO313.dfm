object Fgesapomod: TFgesapomod
  Left = 4
  Top = 86
  ActiveControl = dblcddesnoapo
  BorderStyle = bsDialog
  Caption = 'Gestion de no aportantes'
  ClientHeight = 429
  ClientWidth = 792
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 9
    Top = 4
    Width = 73
    Height = 13
    Caption = 'C'#243'digo modular'
  end
  object SpeedButton1: TSpeedButton
    Left = 101
    Top = 20
    Width = 23
    Height = 22
    Caption = '...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object Label2: TLabel
    Left = 127
    Top = 4
    Width = 164
    Height = 13
    Caption = 'Apellidos y Nombre(s) del asociado'
  end
  object Label3: TLabel
    Left = 520
    Top = 45
    Width = 77
    Height = 13
    Caption = 'Unidad de Pago'
  end
  object Label4: TLabel
    Left = 3
    Top = 45
    Width = 67
    Height = 13
    Caption = 'Departamento'
  end
  object Label5: TLabel
    Left = 255
    Top = 45
    Width = 91
    Height = 13
    Caption = 'Unidad de Proceso'
  end
  object Label6: TLabel
    Left = 520
    Top = 4
    Width = 31
    Height = 13
    Caption = 'D.N.I.:'
  end
  object Label7: TLabel
    Left = 5
    Top = 87
    Width = 29
    Height = 13
    Caption = 'UGEL'
  end
  object pnlasocodmod: TPanel
    Left = 6
    Top = 20
    Width = 91
    Height = 23
    TabOrder = 0
    object measocodmod: TMaskEdit
      Left = 1
      Top = 1
      Width = 89
      Height = 21
      TabOrder = 0
      OnChange = measocodmodChange
      OnExit = measocodmodExit
    end
  end
  object Panel1: TPanel
    Left = 127
    Top = 20
    Width = 386
    Height = 23
    Caption = 'Panel1'
    Enabled = False
    TabOrder = 1
    object measoapenomdni: TMaskEdit
      Left = 1
      Top = 1
      Width = 384
      Height = 21
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 3
    Top = 61
    Width = 246
    Height = 23
    Caption = 'Panel1'
    Enabled = False
    TabOrder = 2
    object medepdes: TMaskEdit
      Left = 1
      Top = 1
      Width = 244
      Height = 21
      TabOrder = 0
    end
  end
  object Panel3: TPanel
    Left = 255
    Top = 61
    Width = 246
    Height = 23
    Caption = 'Panel1'
    Enabled = False
    TabOrder = 3
    object meuniprodes: TMaskEdit
      Left = 1
      Top = 1
      Width = 244
      Height = 21
      TabOrder = 0
    end
  end
  object Panel4: TPanel
    Left = 520
    Top = 61
    Width = 246
    Height = 23
    Caption = 'Panel1'
    Enabled = False
    TabOrder = 4
    object meunipagdes: TMaskEdit
      Left = 1
      Top = 1
      Width = 244
      Height = 21
      TabOrder = 0
    end
  end
  object Panel5: TPanel
    Left = 520
    Top = 19
    Width = 126
    Height = 23
    Caption = 'Panel1'
    Enabled = False
    TabOrder = 5
    object measodni: TMaskEdit
      Left = 1
      Top = 1
      Width = 124
      Height = 21
      TabOrder = 0
    end
  end
  object Panel6: TPanel
    Left = 3
    Top = 101
    Width = 246
    Height = 23
    Caption = 'Panel1'
    Enabled = False
    TabOrder = 6
    object meunigesdes: TMaskEdit
      Left = 1
      Top = 1
      Width = 244
      Height = 21
      TabOrder = 0
    end
  end
  object btnprocesar: TBitBtn
    Left = 256
    Top = 95
    Width = 79
    Height = 33
    Caption = 'Procesar'
    TabOrder = 7
    OnClick = btnprocesarClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00370777033333
      3330337F3F7F33333F3787070003333707303F737773333373F7007703333330
      700077337F3333373777887007333337007733F773F333337733700070333333
      077037773733333F7F37703707333300080737F373333377737F003333333307
      78087733FFF3337FFF7F33300033330008073F3777F33F777F73073070370733
      078073F7F7FF73F37FF7700070007037007837773777F73377FF007777700730
      70007733FFF77F37377707700077033707307F37773F7FFF7337080777070003
      3330737F3F7F777F333778080707770333333F7F737F3F7F3333080787070003
      33337F73FF737773333307800077033333337337773373333333}
    NumGlyphs = 2
  end
  object GroupBox1: TGroupBox
    Left = 3
    Top = 130
    Width = 779
    Height = 250
    TabOrder = 8
    object GroupBox2: TGroupBox
      Left = 427
      Top = 16
      Width = 345
      Height = 201
      Caption = ' Conclusi'#243'n '
      TabOrder = 0
      object Label10: TLabel
        Left = 9
        Top = 17
        Width = 95
        Height = 13
        Caption = 'Motivo de no aporte'
      end
      object dblcddesnoapo: TwwDBLookupComboDlg
        Left = 8
        Top = 36
        Width = 46
        Height = 21
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Lookup'
        MaxWidth = 0
        MaxHeight = 209
        LookupTable = DM1.cdsQry4
        LookupField = 'CODMOTNOAPO'
        TabOrder = 0
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
        OnChange = dblcddesnoapoChange
      end
      object Panel9: TPanel
        Left = 60
        Top = 35
        Width = 276
        Height = 23
        Caption = 'Panel9'
        TabOrder = 1
        object medesnoapome: TMaskEdit
          Left = 1
          Top = 1
          Width = 274
          Height = 21
          TabOrder = 0
        end
      end
      object medes: TMemo
        Left = 8
        Top = 65
        Width = 328
        Height = 88
        TabOrder = 2
      end
      object BitBtn1: TBitBtn
        Left = 261
        Top = 161
        Width = 75
        Height = 33
        Caption = 'Grabar'
        TabOrder = 3
        OnClick = BitBtn1Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
          7700333333337777777733333333008088003333333377F73377333333330088
          88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
          000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
          FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
          99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
          99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
          99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
          93337FFFF7737777733300000033333333337777773333333333}
        NumGlyphs = 2
      end
    end
    object GroupBox3: TGroupBox
      Left = 8
      Top = 16
      Width = 413
      Height = 229
      Caption = ' Meses no Aportados '
      TabOrder = 1
      object Label8: TLabel
        Left = 8
        Top = 174
        Width = 102
        Height = 13
        Caption = 'Cantidad de Aportes :'
      end
      object Label9: TLabel
        Left = 8
        Top = 201
        Width = 112
        Height = 13
        Caption = 'Monto total de aportes :'
      end
      object dbgnoaportantes: TwwDBGrid
        Left = 8
        Top = 17
        Width = 396
        Height = 144
        DisableThemesInTitle = False
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = DM1.dsAportes
        Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 2
        TitleButtons = False
        OnDblClick = dbgnoaportantesDblClick
      end
      object Panel7: TPanel
        Left = 125
        Top = 170
        Width = 63
        Height = 23
        Caption = 'Panel7'
        Enabled = False
        TabOrder = 1
        object mecanapofal: TMaskEdit
          Left = 1
          Top = 1
          Width = 61
          Height = 21
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          TabOrder = 0
        end
      end
      object Panel8: TPanel
        Left = 125
        Top = 197
        Width = 63
        Height = 23
        Caption = 'Panel7'
        Enabled = False
        TabOrder = 2
        object memonapofal: TMaskEdit
          Left = 1
          Top = 1
          Width = 61
          Height = 21
          TabOrder = 0
        end
      end
      object btnmarcar: TBitBtn
        Left = 248
        Top = 168
        Width = 75
        Height = 33
        Caption = 'Todos'
        TabOrder = 3
        OnClick = btnmarcarClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555000000
          000055555F77777777775555000FFFFFFFF0555F777F5FFFF55755000F0F0000
          FFF05F777F7F77775557000F0F0FFFFFFFF0777F7F7F5FFFFFF70F0F0F0F0000
          00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFFFFF70F0F0F0F0000
          00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFF55570F0F0F0F000F
          FFF07F7F7F7F77755FF70F0F0F0FFFFF00007F7F7F7F5FF577770F0F0F0F00FF
          0F057F7F7F7F77557F750F0F0F0FFFFF00557F7F7F7FFFFF77550F0F0F000000
          05557F7F7F77777775550F0F0000000555557F7F7777777555550F0000000555
          55557F7777777555555500000005555555557777777555555555}
        NumGlyphs = 2
      end
      object btnlimpiar: TBitBtn
        Left = 329
        Top = 167
        Width = 75
        Height = 33
        Caption = 'Limpiar'
        TabOrder = 4
        OnClick = btnlimpiarClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
          555557777F777555F55500000000555055557777777755F75555005500055055
          555577F5777F57555555005550055555555577FF577F5FF55555500550050055
          5555577FF77577FF555555005050110555555577F757777FF555555505099910
          555555FF75777777FF555005550999910555577F5F77777775F5500505509990
          3055577F75F77777575F55005055090B030555775755777575755555555550B0
          B03055555F555757575755550555550B0B335555755555757555555555555550
          BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
          50BB555555555555575F555555555555550B5555555555555575}
        NumGlyphs = 2
      end
    end
  end
  object BitBtn2: TBitBtn
    Left = 702
    Top = 388
    Width = 79
    Height = 33
    Caption = 'Cerrar'
    TabOrder = 9
    OnClick = BitBtn2Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
      03333377777777777F333301111111110333337F333333337F33330111111111
      0333337F333333337F333301111111110333337F333333337F33330111111111
      0333337F333333337F333301111111110333337F333333337F33330111111111
      0333337F3333333F7F333301111111B10333337F333333737F33330111111111
      0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
      0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
      0333337F377777337F333301111111110333337F333333337F33330111111111
      0333337FFFFFFFFF7F3333000000000003333377777777777333}
    NumGlyphs = 2
  end
end
