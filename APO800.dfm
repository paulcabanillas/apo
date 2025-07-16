object FRepAnulApo: TFRepAnulApo
  Left = 393
  Top = 189
  BorderStyle = bsDialog
  Caption = 'Reporte de aportes anulados'
  ClientHeight = 98
  ClientWidth = 404
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 5
    Top = 4
    Width = 397
    Height = 92
    Color = 13165023
    TabOrder = 0
    object Label2: TLabel
      Left = 192
      Top = 16
      Width = 69
      Height = 18
      Caption = 'A'#241'o     mes '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 195
      Top = 58
      Width = 63
      Height = 18
      Caption = 'Anulaci'#243'n '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 38
      Top = 34
      Width = 50
      Height = 13
      Caption = 'U.Proceso'
    end
    object edtAno: TEdit
      Left = 189
      Top = 37
      Width = 33
      Height = 21
      TabOrder = 0
      OnChange = edtAnoChange
      OnExit = edtAnoExit
      OnKeyPress = edtAnoKeyPress
    end
    object edtMes: TEdit
      Left = 234
      Top = 37
      Width = 27
      Height = 21
      TabOrder = 1
      OnChange = edtMesChange
      OnExit = edtMesExit
      OnKeyPress = edtMesKeyPress
    end
    object bbtnImprimir: TfcShapeBtn
      Left = 292
      Top = 22
      Width = 48
      Height = 42
      Color = 13165023
      DitherColor = clWhite
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF7F7F7F7F7F7F7F7F7F7F7F7F0000000000007F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F0000000000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        7F7F7F7F7F7F0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF7F7F7F
        7F7F7F000000000000000000BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF7F7F7F7F7F7F
        7F7F7F0000007F7F7F0000007F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFF7F7F7F7F7F7F
        7F7F7F0000007F7F7F0000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F000000FFFFFFFFFFFF7F7F7F7F7F7F
        0000007F7F7F0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000BFBFBFFFFFFF000000
        7F7F7F0000007F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFFFF000000FFFFFF000000
        7F7F7F0000007F7F7FBFBFBF000000BFBFBF000000BFBFBF000000BFBFBF0000
        00BFBFBF000000BFBFBF000000BFBFBF000000BFBFBF000000BFBFBF000000BF
        BFBF000000BFBFBF000000BFBFBF000000BFBFBFFFFFFF000000FFFFFF000000
        7F7F7F0000007F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFFFF000000FFFFFF000000
        7F7F7F0000007F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBF7F00007F0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBF7F00007F0000BFBFBFBFBFBFFFFFFF000000FFFFFF000000
        7F7F7F0000007F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFFFFF00FFFF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFFFFF00FFFF00BFBFBFBFBFBFFFFFFF000000FFFFFF000000
        7F7F7F0000007F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFFFF000000FFFFFFFFFFFF
        000000000000BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF
        FFFFFF000000BFBFBF0000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000BFBFBFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000BFBFBF7F7F7F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBF000000BFBFBFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        000000BFBFBFBFBFBF7F7F7F000000BFBFBFBFBFBF7F7F7F7F7F7F7F7F7F7F7F
        7FBFBFBF7F7F7F7F7F7F7F7F7F7F7F7FBFBFBF7F7F7F7F7F7F7F7F7FBFBFBFFF
        FFFF000000FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        000000BFBFBFBFBFBF7F7F7F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFF
        FFFF000000FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        BFBFBFBFBFBF7F7F7F7F7F7F000000BFBFBFBFBFBF7F7F7FBFBFBF7F7F7F7F7F
        7F7F7F7FBFBFBF7F7F7F7F7F7FBFBFBF7F7F7F7F7F7F7F7F7F7F7F7FFFFFFFFF
        FFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        FFFFFFFFFFFF7F7F7F7F7F7F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        000000000000000000000000FFFFFFFFFFFFBFBFBFBFBFBFFFFFFFBFBFBFFFFF
        FFBFBFBFBFBFBFBFBFBFFFFFFFBFBFBFBFBFBFBFBFBFBFBFBFFFFFFFFFFFFF00
        0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF000000FFFFFFFFFFFFBFBFBFBFBFBFFFFFFFBFBFBFBFBFBFBFBF
        BFFFFFFFBFBFBFBFBFBFFFFFFFBFBFBFBFBFBFBFBFBFFFFFFFFFFFFF000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFFBFBFBFBFBFBFBFBFBFFFFFFFBFBFBFBFBFBFBFBF
        BFFFFFFFBFBFBFBFBFBFFFFFFFBFBFBFBFBFBFFFFFFFFFFFFF000000FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        000000FFFFFFFFFFFFBFBFBFBFBFBFFFFFFFBFBFBFBFBFBFBFBFBFBFBFBFFFFF
        FFBFBFBFBFBFBFFFFFFFBFBFBFBFBFBFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        FFFFFFFFFFFFBFBFBFBFBFBFBFBFBFFFFFFFBFBFBFBFBFBFBFBFBFFFFFFFBFBF
        BFFFFFFFBFBFBFBFBFBFBFBFBFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      NumGlyphs = 0
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeColors.Btn3DLight = 13165023
      ShadeColors.BtnHighlight = 13165023
      ShadeColors.BtnShadow = 13165023
      ShadeColors.BtnBlack = 13165023
      ShadeColors.BtnFocus = 13165023
      ShadeColors.Shadow = 13165023
      ShadeStyle = fbsHighlight
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 2
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnImprimirClick
    end
    object fcShapeBtn2: TfcShapeBtn
      Left = 349
      Top = 25
      Width = 47
      Height = 37
      Cursor = crHandPoint
      Cancel = True
      Color = 13165023
      DitherColor = clWhite
      DragCursor = crHandPoint
      Glyph.Data = {
        36080000424D3608000000000000360400002800000020000000200000000100
        080000000000000400000000000000000000000100000000000000000000C0C0
        C0000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0000000000C116
        820063F4140063F44C0044AFA00063F4980000000100C1B3A9000001F8000000
        010063F414000000020063F3AC000000000063F43400C4F32200C11698000000
        000000000000F6447800023D4400DC08B400F644D200C115A60000021C0063F4
        4C0000C4BC0063F498002C001C00000003000000000063F7A00044AFA0000000
        01003C03200063F404000000000063F48000C4F32200C115F000FFFFFF0063F4
        6400F736630000021C000000140000196E000000000096391F0000013F0063F4
        7800F719230000000100023D4400F9289900F71A790000C4B60063F6C800F719
        2E0096391F00000000006FC496000000020046000000F40000002E0002008F00
        00003F0000000001270000000000FA012700AF3BFA000000040000000000C114
        FE000000000000196E0000001400103BFA0001000000E6000000FF7A3400FA38
        6F00AF3C41006FFFFF00000001006E386F003A98B400AC04CC00000000000000
        0000000000006E0000001C00140000196E00FFFFFF0070168F008F5927000000
        0000000000000000800000000000000000000000000000000000AC04CC000000
        00000000000000000000000005000000000070175F00FFFFFF000000000020C5
        D000000000000000000000008000000000000000000000000000000000000000
        000000000000000000000000000000000500000000005F0C0000000000000000
        0000F70069000000010000000100FFFFFF00FFFFC700FFFFC70044A65C00FFFF
        FE00FFFFFF00FFFFFF00435FEF0043602B0000021C000000800042B8AC006600
        660000008000000069000000000063F67C00F7920100435FF400FFFFFE00435F
        B800FFFFFE0044AD3800435FF4000000000078021C001000000030000000177F
        B200107FB5002F000100E1C672006401170063F65800F7126A0000040A000000
        0000435FB800FFFFFF0044A65C00FFFFFF0000000000F7729900435FB80044A6
        5C0063F82400F798CF00604F8C007EC9980077EF820063F69C0063F6FC004100
        0000000001000245D000F792880000000100F7928F00410000000000010063F6
        FC004360780000FFFF000245D00043570400F7986A0041000000F7987F006012
        D4004360780000FFFF000245D00041004C00410000000000000044ACD80063F6
        C8007740AB0063F82400FB8CF800FB8FC000FFFFFF0063F71400F74AAC000000
        000043607800435708000000000077414F007744B200436D0C00F798CF00604F
        8C000000000077EF82007E61680042B4CC000000000044ACD8007746B7000000
        06007744A6007744A90000000000741C0B0042B4CC0063F79800010101010101
        0101010100010101010101010101010101010101010101010101010101010101
        0101010000010101010101010101010101010101010101010101010101010101
        0101000900010101010101010101010101010101010101010101010101010101
        0100090900010101010101010101010101010101010101010101010101010101
        0009090900010101010101010101010101010101010101010101010101010100
        0909090900010101010101010101010101010101010101010101010101010009
        0909090900010101010101010101010101010101010101010101000000000909
        0909090900000000000000000000000000000101010101010101010101000909
        0909090900080808080808000101010101010101010101010101010101000909
        0909090900080808080808000101010101010101010101010101010101000909
        0909090900080808080808000101010101010101010101010101010101000909
        0909090000080808080808000101010101010101010101010101010101000909
        0909090000080808080808000101010101010101010101010101010101000909
        0909090900080808080808000101010101010401010101010101010101000909
        0909090900080808080808000101010101040401010101010101010101000909
        0909090900080808080808000101010104040404040404010101010101000909
        0909090900080808080808000101010404040404040404010101010101000909
        0909090900080808080808000101040404040404040404010101010101000909
        0909090900080808080808000101010404040404040404010101010101000909
        0909090900080808080808000101010104040404040404010101010101000909
        0909090900080808080808000101010101040401010101010101010101000909
        0909090900080808080808000101010101010401010101010101010101000909
        0909090008080808080808000101010101010101010101010101010101000909
        0909000808080808080808000101010101010101010101010101010101000909
        0900080808080808080808000101010101010101010101010101010101000909
        0008080808080808080808000101010101010101010101010101010101000900
        0808080808080808080808000101010101010101010101010101010101000008
        0808080808080808080808000101010101010101010101010101010101000000
        0000000000000000000000000101010101010101010101010101010101010101
        0101010101010101010101010101010101010101010101010101010101010101
        0101010101010101010101010101010101010101010101010101010101010101
        0101010101010101010101010101010101010101010101010101}
      ParentClipping = True
      RoundRectBias = 25
      ShadeColors.Btn3DLight = 13165023
      ShadeColors.BtnHighlight = 13165023
      ShadeColors.BtnShadow = 13165023
      ShadeColors.BtnBlack = 13165023
      ShadeColors.BtnFocus = 13165023
      ShadeColors.Shadow = 13165023
      ShadeStyle = fbsHighlight
      TabOrder = 3
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcShapeBtn2Click
    end
    object dblUproceso: TwwDBLookupCombo
      Left = 99
      Top = 31
      Width = 49
      Height = 21
      CharCase = ecUpperCase
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'UPROID'#9'3'#9'UPROID'#9'F'
        'UPRONOM'#9'75'#9'UPRONOM'#9'F')
      Options = [loColLines, loTitles]
      TabOrder = 4
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblUprocesoChange
    end
    object Panel2: TPanel
      Left = 13
      Top = 56
      Width = 161
      Height = 25
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Enabled = False
      TabOrder = 5
      object Edit2: TEdit
        Left = 2
        Top = 2
        Width = 154
        Height = 20
        TabOrder = 0
      end
    end
    object chkTodo: TCheckBox
      Left = 45
      Top = 10
      Width = 97
      Height = 17
      Caption = 'Todo las Uproid'
      TabOrder = 6
      OnClick = chkTodoClick
    end
  end
  object ppRAnulaApo: TppReport
    AutoStop = False
    DataPipeline = ppbdeAnulaApo
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 356
    Top = 57
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppbdeAnulaApo'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 34660
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'REPORTE DE APORTES ANULADOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5556
        mmLeft = 53711
        mmTop = 6615
        mmWidth = 89959
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Derrama Magisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 34131
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Equipo de Cobranza'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 1323
        mmTop = 4233
        mmWidth = 30268
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'F.Anula'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 1852
        mmTop = 28575
        mmWidth = 11430
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Observaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 18785
        mmTop = 28575
        mmWidth = 18838
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'No.Operac.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 104511
        mmTop = 28575
        mmWidth = 16722
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Fe.Operac.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 124354
        mmTop = 28575
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Per.Cob'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 143669
        mmTop = 28575
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Aporte'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 160073
        mmTop = 28575
        mmWidth = 10160
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Per.Cont'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 171980
        mmTop = 28575
        mmWidth = 13123
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'Fecha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 158221
        mmTop = 0
        mmWidth = 9948
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'Pag.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 158486
        mmTop = 3969
        mmWidth = 7620
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 170127
        mmTop = 0
        mmWidth = 19050
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 170392
        mmTop = 4233
        mmWidth = 1693
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 27252
        mmWidth = 196850
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 33338
        mmWidth = 196850
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'A'#209'O Y MES DE ANULACION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 65617
        mmTop = 13494
        mmWidth = 46302
        BandType = 0
      end
      object ppLanomes: TppLabel
        UserName = 'Lanomes'
        Caption = 'Lanomes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4057
        mmLeft = 114036
        mmTop = 13494
        mmWidth = 15240
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 'Cnt'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 188384
        mmTop = 28575
        mmWidth = 5292
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'fecanula'
        DataPipeline = ppbdeAnulaApo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdeAnulaApo'
        mmHeight = 3704
        mmLeft = 265
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'obsanula'
        DataPipeline = ppbdeAnulaApo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdeAnulaApo'
        mmHeight = 3175
        mmLeft = 17992
        mmTop = 265
        mmWidth = 85990
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'transnope'
        DataPipeline = ppbdeAnulaApo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdeAnulaApo'
        mmHeight = 3704
        mmLeft = 104511
        mmTop = 0
        mmWidth = 18521
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'transfope'
        DataPipeline = ppbdeAnulaApo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdeAnulaApo'
        mmHeight = 3704
        mmLeft = 124884
        mmTop = 0
        mmWidth = 17727
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'transano'
        DataPipeline = ppbdeAnulaApo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdeAnulaApo'
        mmHeight = 3704
        mmLeft = 143669
        mmTop = 0
        mmWidth = 7938
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'transmes'
        DataPipeline = ppbdeAnulaApo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdeAnulaApo'
        mmHeight = 3704
        mmLeft = 152400
        mmTop = 0
        mmWidth = 4233
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'transmto'
        DataPipeline = ppbdeAnulaApo
        DisplayFormat = '##,##.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeAnulaApo'
        mmHeight = 3704
        mmLeft = 157957
        mmTop = 0
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'cntanomm'
        DataPipeline = ppbdeAnulaApo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppbdeAnulaApo'
        mmHeight = 3704
        mmLeft = 173567
        mmTop = 0
        mmWidth = 11642
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'cntflag'
        DataPipeline = ppbdeAnulaApo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppbdeAnulaApo'
        mmHeight = 3704
        mmLeft = 188648
        mmTop = 0
        mmWidth = 4233
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 1323
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 15610
      mmPrintPosition = 0
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'TOTAL ANULADOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 76729
        mmTop = 1058
        mmWidth = 29633
        BandType = 7
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 151342
        mmTop = 265
        mmWidth = 21431
        BandType = 7
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 
          'Nota: Solo se contabiliza aportes anulados ya contabilizados ant' +
          'eriormente ( cnt='#39'S'#39')'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 7673
        mmWidth = 125730
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'transmto'
        DataPipeline = ppbdeAnulaApo
        DisplayFormat = '###,##.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeAnulaApo'
        mmHeight = 3704
        mmLeft = 152665
        mmTop = 794
        mmWidth = 19050
        BandType = 7
      end
    end
    object ppGroup4: TppGroup
      BreakName = 'ppDBText17'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group4'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand4: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 6085
        mmPrintPosition = 0
        object ppShape1: TppShape
          UserName = 'Shape1'
          Brush.Color = clSilver
          mmHeight = 6085
          mmLeft = 0
          mmTop = 0
          mmWidth = 197380
          BandType = 3
          GroupNo = 0
        end
        object ppDBText17: TppDBText
          UserName = 'DBText17'
          DataField = 'uproid'
          DataPipeline = ppbdeAnulaApo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = [fsBold, fsUnderline]
          Transparent = True
          DataPipelineName = 'ppbdeAnulaApo'
          mmHeight = 4586
          mmLeft = 1058
          mmTop = 794
          mmWidth = 12171
          BandType = 3
          GroupNo = 0
        end
        object ppDBText18: TppDBText
          UserName = 'DBText18'
          DataField = 'uproabr'
          DataPipeline = ppbdeAnulaApo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = [fsBold, fsUnderline]
          Transparent = True
          DataPipelineName = 'ppbdeAnulaApo'
          mmHeight = 4586
          mmLeft = 14023
          mmTop = 794
          mmWidth = 129911
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 8996
        mmPrintPosition = 0
        object ppShape2: TppShape
          UserName = 'Shape2'
          Brush.Color = clSilver
          mmHeight = 6085
          mmLeft = 0
          mmTop = 529
          mmWidth = 197380
          BandType = 5
          GroupNo = 0
        end
        object ppLabel20: TppLabel
          UserName = 'Label20'
          Caption = 'TOTAL POR UNIDA DE PROCESO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 41275
          mmTop = 1852
          mmWidth = 51594
          BandType = 5
          GroupNo = 0
        end
        object ppDBText19: TppDBText
          UserName = 'DBText19'
          DataField = 'UPROID'
          DataPipeline = ppbdeAnulaApo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppbdeAnulaApo'
          mmHeight = 3704
          mmLeft = 94456
          mmTop = 1852
          mmWidth = 12171
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc4: TppDBCalc
          UserName = 'DBCalc4'
          DataField = 'transmto'
          DataPipeline = ppbdeAnulaApo
          DisplayFormat = '###,##.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbdeAnulaApo'
          mmHeight = 3704
          mmLeft = 152136
          mmTop = 1588
          mmWidth = 19579
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'ppDBText2'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 6350
        mmPrintPosition = 0
        object ppDBText2: TppDBText
          UserName = 'DBText2'
          DataField = 'useid'
          DataPipeline = ppbdeAnulaApo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold, fsUnderline]
          Transparent = True
          DataPipelineName = 'ppbdeAnulaApo'
          mmHeight = 4057
          mmLeft = 265
          mmTop = 794
          mmWidth = 12171
          BandType = 3
          GroupNo = 0
        end
        object ppDBText13: TppDBText
          UserName = 'DBText13'
          DataField = 'useabr'
          DataPipeline = ppbdeAnulaApo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold, fsUnderline]
          Transparent = True
          DataPipelineName = 'ppbdeAnulaApo'
          mmHeight = 4057
          mmLeft = 13229
          mmTop = 794
          mmWidth = 129911
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 5821
        mmPrintPosition = 0
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'transmto'
          DataPipeline = ppbdeAnulaApo
          DisplayFormat = '###,##.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbdeAnulaApo'
          mmHeight = 3704
          mmLeft = 152136
          mmTop = 794
          mmWidth = 19844
          BandType = 5
          GroupNo = 0
        end
        object ppLabel14: TppLabel
          UserName = 'Label14'
          Caption = 'TOTAL POR USE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 67469
          mmTop = 794
          mmWidth = 25823
          BandType = 5
          GroupNo = 0
        end
        object ppDBText14: TppDBText
          UserName = 'DBText14'
          DataField = 'USEID'
          DataPipeline = ppbdeAnulaApo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppbdeAnulaApo'
          mmHeight = 3704
          mmLeft = 94192
          mmTop = 794
          mmWidth = 12171
          BandType = 5
          GroupNo = 0
        end
        object ppLine4: TppLine
          UserName = 'Line4'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 151077
          mmTop = 265
          mmWidth = 21431
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'ppDBText6'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand3: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 1588
        mmPrintPosition = 0
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 5556
        mmPrintPosition = 0
        object ppLabel15: TppLabel
          UserName = 'Label15'
          Caption = 'TOTAL POR Nro. OPERACION'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 36248
          mmTop = 529
          mmWidth = 45932
          BandType = 5
          GroupNo = 1
        end
        object ppDBText1: TppDBText
          UserName = 'DBText1'
          DataField = 'TRANSNOPE'
          DataPipeline = ppbdeAnulaApo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppbdeAnulaApo'
          mmHeight = 3704
          mmLeft = 83608
          mmTop = 529
          mmWidth = 22490
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          DataField = 'transmto'
          DataPipeline = ppbdeAnulaApo
          DisplayFormat = '###,##.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbdeAnulaApo'
          mmHeight = 3704
          mmLeft = 152136
          mmTop = 794
          mmWidth = 19844
          BandType = 5
          GroupNo = 1
        end
        object ppLine3: TppLine
          UserName = 'Line3'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 151077
          mmTop = 265
          mmWidth = 21431
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'ppDBText3'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 3969
        mmPrintPosition = 0
        object ppDBText3: TppDBText
          UserName = 'DBText3'
          DataField = 'asoapenom'
          DataPipeline = ppbdeAnulaApo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppbdeAnulaApo'
          mmHeight = 3704
          mmLeft = 0
          mmTop = 265
          mmWidth = 83079
          BandType = 3
          GroupNo = 2
        end
        object ppDBText15: TppDBText
          UserName = 'DBText15'
          DataField = 'asocodmod'
          DataPipeline = ppbdeAnulaApo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppbdeAnulaApo'
          mmHeight = 3704
          mmLeft = 83608
          mmTop = 265
          mmWidth = 18785
          BandType = 3
          GroupNo = 2
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 2381
        mmPrintPosition = 0
      end
    end
  end
  object ppbdeAnulaApo: TppBDEPipeline
    UserName = 'bdeAnulaApo'
    Left = 324
    Top = 57
  end
end
