object FDifApo: TFDifApo
  Left = 1
  Top = 75
  BorderStyle = bsDialog
  Caption = 'Aportantes y Nuevos Aportantes'
  ClientHeight = 471
  ClientWidth = 755
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
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object gbseleccion: TGroupBox
    Left = 8
    Top = 3
    Width = 513
    Height = 164
    Caption = ' Selecci'#243'n '
    TabOrder = 0
    object Label2: TLabel
      Left = 142
      Top = 17
      Width = 82
      Height = 13
      Caption = 'A'#241'o de Proceso :'
    end
    object Label1: TLabel
      Left = 142
      Top = 40
      Width = 73
      Height = 13
      Caption = 'Departamento :'
    end
    object Label3: TLabel
      Left = 142
      Top = 68
      Width = 35
      Height = 13
      Caption = 'UGEL :'
    end
    object Label4: TLabel
      Left = 141
      Top = 95
      Width = 83
      Height = 13
      Caption = 'Mes de Proceso :'
    end
    object dbseanopro: TwwDBSpinEdit
      Left = 231
      Top = 11
      Width = 49
      Height = 21
      Increment = 1.000000000000000000
      MaxValue = 2050.000000000000000000
      MinValue = 1997.000000000000000000
      Value = 1997.000000000000000000
      CharCase = ecUpperCase
      Color = clWhite
      TabOrder = 2
      UnboundDataType = wwDefault
    end
    object rgtiprep: TRadioGroup
      Left = 7
      Top = 17
      Width = 130
      Height = 70
      Caption = ' Selecci'#243'n '
      Items.Strings = (
        'Por a'#241'o de proceso'
        'Por Departamento'
        'Por UGEL')
      TabOrder = 0
      OnClick = rgtiprepClick
    end
    object dblcddptoid: TwwDBLookupComboDlg
      Left = 231
      Top = 36
      Width = 49
      Height = 21
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsDpto
      LookupField = 'DPTOID'
      TabOrder = 1
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcddptoidChange
    end
    object pnldptodes: TPanel
      Left = 287
      Top = 36
      Width = 218
      Height = 23
      Caption = 'pnldptodes'
      Enabled = False
      TabOrder = 3
      object medptodes: TMaskEdit
        Left = 1
        Top = 1
        Width = 215
        Height = 21
        TabOrder = 0
      end
    end
    object dblcdugelid: TwwDBLookupComboDlg
      Left = 231
      Top = 63
      Width = 49
      Height = 21
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsUse
      LookupField = 'USEID'
      TabOrder = 4
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcdugelidChange
    end
    object Panel1: TPanel
      Left = 288
      Top = 63
      Width = 217
      Height = 23
      Caption = 'pnldptodes'
      Enabled = False
      TabOrder = 5
      object meugedes: TMaskEdit
        Left = 1
        Top = 1
        Width = 215
        Height = 21
        TabOrder = 0
      end
    end
    object dbsemespro: TwwDBSpinEdit
      Left = 230
      Top = 90
      Width = 49
      Height = 21
      Increment = 1.000000000000000000
      MaxValue = 12.000000000000000000
      MinValue = 1.000000000000000000
      Value = 1.000000000000000000
      CharCase = ecUpperCase
      TabOrder = 6
      UnboundDataType = wwDefault
    end
    object btnFiltrar: TBitBtn
      Left = 429
      Top = 128
      Width = 73
      Height = 30
      Caption = 'Filtrar'
      TabOrder = 7
      OnClick = btnFiltrarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
        300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
        330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
        333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
        339977FF777777773377000BFB03333333337773FF733333333F333000333333
        3300333777333333337733333333333333003333333333333377333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object rgdet: TRadioGroup
      Left = 8
      Top = 89
      Width = 129
      Height = 64
      Caption = ' Tipo de detalle '
      Items.Strings = (
        'No Aportaron'
        'Vuelven ha Aportar'
        'Nuevos Aportantes')
      TabOrder = 8
      OnClick = rgdetClick
    end
  end
  object btncerrar: TBitBtn
    Left = 674
    Top = 437
    Width = 73
    Height = 30
    Caption = 'Cerrar'
    TabOrder = 1
    OnClick = btncerrarClick
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
  object btnimprime: TBitBtn
    Left = 514
    Top = 437
    Width = 73
    Height = 30
    Caption = 'Imprimir'
    TabOrder = 2
    OnClick = btnimprimeClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
      8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
      8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
      8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
  end
  object dtgData: TDBGrid
    Left = 214
    Top = 124
    Width = 35
    Height = 29
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Visible = False
  end
  object BitBtn1: TBitBtn
    Left = 594
    Top = 437
    Width = 73
    Height = 30
    Caption = 'A Excel'
    TabOrder = 4
    OnClick = BitBtn1Click
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FFFFFF0D390D
      0B360B0B360B0B360B0B360B0B360B0B360B0B360B0B360B0B360B0B360B0B36
      0B0B360B0B360BFFFFFF2885280D390D388A383A8C3A3A8C3A3A8C3A3A8C3A3A
      8C3A3A8C3A3A8C3A3A8C3A3A8C3A3A8C3A3C903C3C903C0B360B2885280D390D
      B6B6B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF2C8A2C0B360B2885280D390DB6B6B6FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFB6B6B6B6B6B6B6B6B6FFFFFFFFFFFF2885280B360B2885280D390D
      B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6002600002600002600B6B6
      B6FEFFFE2885280B360B2885280D390DB6B6B600280000280000280000280000
      2800005A00FFFFFF377837387638002600FEFFFE2885280B360B2885280D390D
      B6B6B640DE40057C05005D00005A00005A00FFFFFF3C853C3F853F002600FFFF
      FFFFFFFF2885280B360B2885280D390DB6B6B6FFFFFF50EA500A800A005A00FF
      FFFF3C853C3F843F002600FFFFFFFFFFFFFFFFFF2885280B360B2885280D390D
      B6B6B6FFFFFFFFFFFF005A00FFFFFF3C843C3F843F002600B6B6B6FFFFFFFFFF
      FFFFFFFF2885280B360B2885280D390DB6B6B6FFFFFF005A00FFFFFF3B843B3D
      813D002600002F000A310AB6B6B6FFFFFFFFFFFF2885280B360B2885280D390D
      B6B6B6005A00FFFFFF3C863C3E833E002600088008005A000028000A310AB6B6
      B6FFFFFF2885280B360B2885280D390DB6B6B64FBA4F4FBA4F4FBA4F002600FF
      FFFF56F156209820158915002B00FFFFFFFFFFFF2885280B360B2885280D390D
      B6B6B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFD
      FBFFFFFF2885280B360B2885280D390DB6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6
      B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B62784270B360B2885280D390D
      0D390D0D390D0D390D0D390D0D390D0D390D0D390D0D390D0D390D0D390D0D39
      0D0D390D0B360B288528FFFFFF28852828852828852828852828852828852828
      8528288528288528288528288528288528288528288528FFFFFF}
    Style = bsNew
  end
  object dbgGeneral: TwwDBGrid
    Left = 9
    Top = 174
    Width = 737
    Height = 257
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsReporte
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
    TabOrder = 5
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
  end
  object pnlprocesar: TPanel
    Left = 533
    Top = 6
    Width = 212
    Height = 146
    Color = 10207162
    TabOrder = 6
    object GroupBox1: TGroupBox
      Left = 5
      Top = 25
      Width = 201
      Height = 70
      Caption = ' Seleccione el a'#241'o de proceso '
      Color = 10207162
      ParentColor = False
      TabOrder = 0
      object Label5: TLabel
        Left = 33
        Top = 32
        Width = 79
        Height = 13
        Caption = 'A'#241'o a Procesar :'
      end
      object dbseanoapro: TwwDBSpinEdit
        Left = 121
        Top = 29
        Width = 49
        Height = 21
        Increment = 1.000000000000000000
        MaxValue = 2050.000000000000000000
        MinValue = 1997.000000000000000000
        Value = 1997.000000000000000000
        CharCase = ecUpperCase
        Color = clWhite
        TabOrder = 0
        UnboundDataType = wwDefault
      end
    end
    object StaticText1: TStaticText
      Left = 1
      Top = 1
      Width = 210
      Height = 17
      Align = alTop
      Alignment = taCenter
      BorderStyle = sbsSunken
      Caption = 'PROCESO DE INFORMACION'
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
    end
    object btnProcesar: TBitBtn
      Left = 51
      Top = 102
      Width = 73
      Height = 30
      Caption = 'Procesar'
      TabOrder = 2
      OnClick = btnProcesarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
        300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
        330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
        333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
        339977FF777777773377000BFB03333333337773FF733333333F333000333333
        3300333777333333337733333333333333003333333333333377333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object BitBtn3: TBitBtn
      Left = 133
      Top = 102
      Width = 73
      Height = 30
      Caption = 'Cerrar'
      TabOrder = 3
      OnClick = BitBtn3Click
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
  object BitBtn2: TBitBtn
    Left = 434
    Top = 437
    Width = 73
    Height = 30
    Caption = 'Procesar'
    TabOrder = 7
    OnClick = BitBtn2Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
      300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
      330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
      333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
      339977FF777777773377000BFB03333333337773FF733333333F333000333333
      3300333777333333337733333333333333003333333333333377333333333333
      333333333333333333FF33333333333330003333333333333777333333333333
      3000333333333333377733333333333333333333333333333333}
    NumGlyphs = 2
  end
  object ppbdeRep: TppBDEPipeline
    DataSource = DM1.dsReporte
    UserName = 'bdeRep'
    Left = 259
    Top = 124
  end
  object pprrepdif: TppReport
    AutoStop = False
    DataPipeline = ppbdeRep
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 5080
    PrinterSetup.mmMarginRight = 5080
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 297127
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 267
    Top = 132
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppbdeRep'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 35454
      mmPrintPosition = 0
      object ppShape26: TppShape
        UserName = 'Shape26'
        mmHeight = 8467
        mmLeft = 24606
        mmTop = 26988
        mmWidth = 20108
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'Derrama Magisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 4233
        mmTop = 0
        mmWidth = 33073
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'Equipo de Cobranza'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 4233
        mmTop = 3175
        mmWidth = 30692
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 238919
        mmTop = 0
        mmWidth = 8170
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'P'#225'gina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 238919
        mmTop = 6350
        mmWidth = 9313
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 253207
        mmTop = 0
        mmWidth = 14139
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 253207
        mmTop = 6350
        mmWidth = 1566
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        Caption = 'Hora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 238919
        mmTop = 3175
        mmWidth = 6435
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable5'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 253207
        mmTop = 3175
        mmWidth = 17865
        BandType = 0
      end
      object ppLabel62: TppLabel
        UserName = 'Label62'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 250825
        mmTop = 0
        mmWidth = 974
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label63'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 250825
        mmTop = 3175
        mmWidth = 974
        BandType = 0
      end
      object ppLabel82: TppLabel
        UserName = 'Label82'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 250825
        mmTop = 6350
        mmWidth = 974
        BandType = 0
      end
      object pplanopro: TppLabel
        UserName = 'Label11'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 89959
        mmTop = 16404
        mmWidth = 92604
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label46'
        Caption = 'Modulo de Aportes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 4233
        mmTop = 6350
        mmWidth = 34925
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label50'
        Caption = 'ESTADISTICA COMPARATIVA ANUAL DE APORTANTES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 89401
        mmTop = 11642
        mmWidth = 94023
        BandType = 0
      end
      object ppShape25: TppShape
        UserName = 'Shape25'
        mmHeight = 8467
        mmLeft = 4234
        mmTop = 26988
        mmWidth = 20638
        BandType = 0
      end
      object ppLabel40: TppLabel
        OnPrint = ppLabel40Print
        UserName = 'Label41'
        Caption = 'Departamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 4763
        mmTop = 29369
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label401'
        Caption = 'Enero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 30427
        mmTop = 27517
        mmWidth = 6615
        BandType = 0
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 24606
        mmTop = 30692
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label43'
        Caption = 'A'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 27252
        mmTop = 31485
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label44'
        Caption = 'B'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 33867
        mmTop = 31485
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'C'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 40481
        mmTop = 31485
        mmWidth = 1852
        BandType = 0
      end
      object ppShape27: TppShape
        UserName = 'Shape27'
        Pen.Style = psInsideFrame
        mmHeight = 4763
        mmLeft = 37835
        mmTop = 30691
        mmWidth = 265
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        Pen.Style = psInsideFrame
        mmHeight = 4763
        mmLeft = 31221
        mmTop = 0
        mmWidth = 265
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 8467
        mmLeft = 44450
        mmTop = 26988
        mmWidth = 20108
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Febrero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 50271
        mmTop = 27517
        mmWidth = 8509
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 44450
        mmTop = 30692
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'A'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 47096
        mmTop = 31485
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'B'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 53711
        mmTop = 31485
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'C'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 60325
        mmTop = 31485
        mmWidth = 1852
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        Pen.Style = psInsideFrame
        mmHeight = 4763
        mmLeft = 57679
        mmTop = 30691
        mmWidth = 265
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        Pen.Style = psInsideFrame
        mmHeight = 4763
        mmLeft = 51065
        mmTop = 30691
        mmWidth = 265
        BandType = 0
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 8467
        mmLeft = 64294
        mmTop = 26988
        mmWidth = 20108
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Marzo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 70115
        mmTop = 27517
        mmWidth = 6689
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 64294
        mmTop = 30692
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'A'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 66940
        mmTop = 31485
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'B'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 73554
        mmTop = 31485
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'C'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 80169
        mmTop = 31485
        mmWidth = 1852
        BandType = 0
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        Pen.Style = psInsideFrame
        mmHeight = 4763
        mmLeft = 77523
        mmTop = 30691
        mmWidth = 265
        BandType = 0
      end
      object ppShape7: TppShape
        UserName = 'Shape7'
        Pen.Style = psInsideFrame
        mmHeight = 4763
        mmLeft = 70908
        mmTop = 30691
        mmWidth = 265
        BandType = 0
      end
      object ppShape8: TppShape
        UserName = 'Shape8'
        mmHeight = 8467
        mmLeft = 84138
        mmTop = 26988
        mmWidth = 20108
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Abril'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 89959
        mmTop = 27517
        mmWidth = 4911
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 84138
        mmTop = 30692
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label12'
        Caption = 'A'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 86784
        mmTop = 31485
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label13'
        Caption = 'B'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 93398
        mmTop = 31485
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label18'
        Caption = 'C'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 100013
        mmTop = 31485
        mmWidth = 1852
        BandType = 0
      end
      object ppShape9: TppShape
        UserName = 'Shape9'
        Pen.Style = psInsideFrame
        mmHeight = 4763
        mmLeft = 97367
        mmTop = 30691
        mmWidth = 265
        BandType = 0
      end
      object ppShape10: TppShape
        UserName = 'Shape10'
        Pen.Style = psInsideFrame
        mmHeight = 4763
        mmLeft = 90752
        mmTop = 30691
        mmWidth = 265
        BandType = 0
      end
      object ppShape11: TppShape
        UserName = 'Shape11'
        mmHeight = 8467
        mmLeft = 103981
        mmTop = 26988
        mmWidth = 20108
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label19'
        Caption = 'Mayo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 109802
        mmTop = 27517
        mmWidth = 5842
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 103981
        mmTop = 30692
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label20'
        Caption = 'A'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 106627
        mmTop = 31485
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label21'
        Caption = 'B'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 113242
        mmTop = 31485
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label22'
        Caption = 'C'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 119856
        mmTop = 31485
        mmWidth = 1852
        BandType = 0
      end
      object ppShape12: TppShape
        UserName = 'Shape12'
        Pen.Style = psInsideFrame
        mmHeight = 4763
        mmLeft = 117211
        mmTop = 30691
        mmWidth = 265
        BandType = 0
      end
      object ppShape13: TppShape
        UserName = 'Shape13'
        Pen.Style = psInsideFrame
        mmHeight = 4763
        mmLeft = 110596
        mmTop = 30691
        mmWidth = 265
        BandType = 0
      end
      object ppShape14: TppShape
        UserName = 'Shape14'
        mmHeight = 8467
        mmLeft = 123825
        mmTop = 26988
        mmWidth = 20108
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label24'
        Caption = 'Junio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 129646
        mmTop = 27517
        mmWidth = 5842
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 123825
        mmTop = 30692
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label25'
        Caption = 'A'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 126471
        mmTop = 31485
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label26'
        Caption = 'B'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 133086
        mmTop = 31485
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label27'
        Caption = 'C'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 139700
        mmTop = 31485
        mmWidth = 1852
        BandType = 0
      end
      object ppShape15: TppShape
        UserName = 'Shape15'
        Pen.Style = psInsideFrame
        mmHeight = 4763
        mmLeft = 137054
        mmTop = 30691
        mmWidth = 265
        BandType = 0
      end
      object ppShape16: TppShape
        UserName = 'Shape16'
        Pen.Style = psInsideFrame
        mmHeight = 4763
        mmLeft = 130440
        mmTop = 30691
        mmWidth = 265
        BandType = 0
      end
      object ppShape17: TppShape
        UserName = 'Shape17'
        mmHeight = 8467
        mmLeft = 143669
        mmTop = 26988
        mmWidth = 20108
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label28'
        Caption = 'Julio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 149490
        mmTop = 27517
        mmWidth = 5038
        BandType = 0
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 143669
        mmTop = 30692
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label29'
        Caption = 'A'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 146315
        mmTop = 31485
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label30'
        Caption = 'B'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 152929
        mmTop = 31485
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label31'
        Caption = 'C'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 159544
        mmTop = 31485
        mmWidth = 1852
        BandType = 0
      end
      object ppShape18: TppShape
        UserName = 'Shape18'
        Pen.Style = psInsideFrame
        mmHeight = 4763
        mmLeft = 156898
        mmTop = 30691
        mmWidth = 265
        BandType = 0
      end
      object ppShape19: TppShape
        UserName = 'Shape19'
        Pen.Style = psInsideFrame
        mmHeight = 4763
        mmLeft = 150284
        mmTop = 30691
        mmWidth = 265
        BandType = 0
      end
      object ppShape20: TppShape
        UserName = 'Shape20'
        mmHeight = 8467
        mmLeft = 163513
        mmTop = 26988
        mmWidth = 20108
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label101'
        Caption = 'Agosto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 169334
        mmTop = 27517
        mmWidth = 7620
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 163513
        mmTop = 30692
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label33'
        Caption = 'A'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 166159
        mmTop = 31485
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label34'
        Caption = 'B'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 173038
        mmTop = 31485
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label35'
        Caption = 'C'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 179388
        mmTop = 31485
        mmWidth = 1852
        BandType = 0
      end
      object ppShape21: TppShape
        UserName = 'Shape21'
        Pen.Style = psInsideFrame
        mmHeight = 4763
        mmLeft = 176741
        mmTop = 30691
        mmWidth = 265
        BandType = 0
      end
      object ppShape22: TppShape
        UserName = 'Shape101'
        Pen.Style = psInsideFrame
        mmHeight = 4763
        mmLeft = 170127
        mmTop = 30691
        mmWidth = 265
        BandType = 0
      end
      object ppShape23: TppShape
        UserName = 'Shape23'
        mmHeight = 8467
        mmLeft = 183357
        mmTop = 26988
        mmWidth = 20108
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label36'
        Caption = 'Setiembre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 189177
        mmTop = 27517
        mmWidth = 11176
        BandType = 0
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 183357
        mmTop = 30692
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label201'
        Caption = 'A'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 186002
        mmTop = 31485
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label37'
        Caption = 'B'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 192617
        mmTop = 31485
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label38'
        Caption = 'C'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 199232
        mmTop = 31485
        mmWidth = 1852
        BandType = 0
      end
      object ppShape24: TppShape
        UserName = 'Shape24'
        Pen.Style = psInsideFrame
        mmHeight = 4763
        mmLeft = 196586
        mmTop = 30691
        mmWidth = 265
        BandType = 0
      end
      object ppShape33: TppShape
        UserName = 'Shape33'
        Pen.Style = psInsideFrame
        mmHeight = 4763
        mmLeft = 189971
        mmTop = 30691
        mmWidth = 265
        BandType = 0
      end
      object ppShape34: TppShape
        UserName = 'Shape34'
        mmHeight = 8467
        mmLeft = 203200
        mmTop = 26988
        mmWidth = 20108
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label39'
        Caption = 'Octubre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 209021
        mmTop = 27517
        mmWidth = 8678
        BandType = 0
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 203200
        mmTop = 30692
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label40'
        Caption = 'A'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 205846
        mmTop = 31485
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label47'
        Caption = 'B'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 212461
        mmTop = 31485
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel81: TppLabel
        UserName = 'Label81'
        Caption = 'C'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 219075
        mmTop = 31485
        mmWidth = 1852
        BandType = 0
      end
      object ppShape35: TppShape
        UserName = 'Shape35'
        Pen.Style = psInsideFrame
        mmHeight = 4763
        mmLeft = 216430
        mmTop = 30691
        mmWidth = 265
        BandType = 0
      end
      object ppShape36: TppShape
        UserName = 'Shape36'
        Pen.Style = psInsideFrame
        mmHeight = 4763
        mmLeft = 209815
        mmTop = 30691
        mmWidth = 265
        BandType = 0
      end
      object ppShape37: TppShape
        UserName = 'Shape37'
        mmHeight = 8467
        mmLeft = 223044
        mmTop = 26988
        mmWidth = 20108
        BandType = 0
      end
      object ppLabel83: TppLabel
        UserName = 'Label83'
        Caption = 'Noviembre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 228865
        mmTop = 27517
        mmWidth = 11853
        BandType = 0
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 223044
        mmTop = 30692
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel84: TppLabel
        UserName = 'Label84'
        Caption = 'A'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 225690
        mmTop = 31485
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel85: TppLabel
        UserName = 'Label301'
        Caption = 'B'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 232305
        mmTop = 31485
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel86: TppLabel
        UserName = 'Label86'
        Caption = 'C'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 238919
        mmTop = 31485
        mmWidth = 1852
        BandType = 0
      end
      object ppShape38: TppShape
        UserName = 'Shape38'
        Pen.Style = psInsideFrame
        mmHeight = 4763
        mmLeft = 236273
        mmTop = 30691
        mmWidth = 265
        BandType = 0
      end
      object ppShape39: TppShape
        UserName = 'Shape39'
        Pen.Style = psInsideFrame
        mmHeight = 4763
        mmLeft = 229659
        mmTop = 30691
        mmWidth = 265
        BandType = 0
      end
      object ppShape40: TppShape
        UserName = 'Shape201'
        mmHeight = 8467
        mmLeft = 242888
        mmTop = 26988
        mmWidth = 20108
        BandType = 0
      end
      object ppLabel87: TppLabel
        UserName = 'Label87'
        Caption = 'Diciembre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 248709
        mmTop = 27517
        mmWidth = 11049
        BandType = 0
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 242888
        mmTop = 30692
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel88: TppLabel
        UserName = 'Label88'
        Caption = 'A'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 245534
        mmTop = 31485
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel89: TppLabel
        UserName = 'Label89'
        Caption = 'B'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 252148
        mmTop = 31485
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel90: TppLabel
        UserName = 'Label90'
        Caption = 'C'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 258763
        mmTop = 31485
        mmWidth = 1852
        BandType = 0
      end
      object ppShape41: TppShape
        UserName = 'Shape41'
        Pen.Style = psInsideFrame
        mmHeight = 4763
        mmLeft = 256117
        mmTop = 30691
        mmWidth = 265
        BandType = 0
      end
      object ppShape42: TppShape
        UserName = 'Shape42'
        Pen.Style = psInsideFrame
        mmHeight = 4763
        mmLeft = 249503
        mmTop = 30691
        mmWidth = 265
        BandType = 0
      end
      object ppShape43: TppShape
        UserName = 'Shape43'
        mmHeight = 8467
        mmLeft = 262733
        mmTop = 26988
        mmWidth = 21696
        BandType = 0
      end
      object ppLabel91: TppLabel
        UserName = 'Label91'
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 268553
        mmTop = 27517
        mmWidth = 5461
        BandType = 0
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 262732
        mmTop = 30692
        mmWidth = 21431
        BandType = 0
      end
      object ppLabel92: TppLabel
        UserName = 'Label92'
        Caption = 'A'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 265378
        mmTop = 31485
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel93: TppLabel
        UserName = 'Label93'
        Caption = 'B'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 271992
        mmTop = 31485
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel94: TppLabel
        UserName = 'Label901'
        Caption = 'C'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 278607
        mmTop = 31485
        mmWidth = 1852
        BandType = 0
      end
      object ppShape44: TppShape
        UserName = 'Shape44'
        Pen.Style = psInsideFrame
        mmHeight = 4763
        mmLeft = 277019
        mmTop = 30691
        mmWidth = 265
        BandType = 0
      end
      object ppShape45: TppShape
        UserName = 'Shape45'
        Pen.Style = psInsideFrame
        mmHeight = 4763
        mmLeft = 269876
        mmTop = 30691
        mmWidth = 265
        BandType = 0
      end
      object ppShape48: TppShape
        UserName = 'Shape48'
        Pen.Style = psInsideFrame
        mmHeight = 4763
        mmLeft = 31221
        mmTop = 30691
        mmWidth = 265
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 4234
        mmTop = 3967
        mmWidth = 279930
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'DPTODES'
        DataPipeline = ppbdeRep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 4763
        mmTop = 529
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'A_ENE'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 25135
        mmTop = 528
        mmWidth = 5822
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'N_ENE'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 31750
        mmTop = 528
        mmWidth = 5822
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'F_ENE'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 38365
        mmTop = 528
        mmWidth = 5822
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'A_FEB'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 44979
        mmTop = 528
        mmWidth = 5822
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'N_FEB'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 51594
        mmTop = 528
        mmWidth = 5822
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'F_FEB'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 58208
        mmTop = 528
        mmWidth = 5822
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'A_MAR'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 64823
        mmTop = 528
        mmWidth = 5822
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'N_MAR'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 71438
        mmTop = 528
        mmWidth = 5822
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'F_MAR'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 78052
        mmTop = 528
        mmWidth = 5822
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'A_ABR'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 84667
        mmTop = 528
        mmWidth = 5822
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'N_ABR'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 91281
        mmTop = 528
        mmWidth = 5822
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'F_ABR'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 97896
        mmTop = 528
        mmWidth = 5822
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'A_MAY'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 104511
        mmTop = 528
        mmWidth = 5822
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'N_MAY'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 111125
        mmTop = 529
        mmWidth = 5822
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'F_MAY'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 117740
        mmTop = 528
        mmWidth = 5822
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        DataField = 'A_JUN'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 124354
        mmTop = 528
        mmWidth = 5822
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        DataField = 'N_JUN'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 130969
        mmTop = 528
        mmWidth = 5822
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText101'
        DataField = 'F_JUN'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 137584
        mmTop = 528
        mmWidth = 5822
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        DataField = 'A_JUL'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 144198
        mmTop = 528
        mmWidth = 5822
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        DataField = 'N_JUL'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 150813
        mmTop = 529
        mmWidth = 5822
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText102'
        DataField = 'F_JUL'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 157427
        mmTop = 529
        mmWidth = 5822
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        DataField = 'A_AGO'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 164042
        mmTop = 529
        mmWidth = 5822
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        DataField = 'N_AGO'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 170657
        mmTop = 529
        mmWidth = 5822
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        DataField = 'F_AGO'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 177271
        mmTop = 529
        mmWidth = 5822
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        DataField = 'A_SET'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 183886
        mmTop = 528
        mmWidth = 5822
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        DataField = 'N_SET'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 190500
        mmTop = 529
        mmWidth = 5822
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText33'
        DataField = 'F_SET'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 197115
        mmTop = 529
        mmWidth = 5822
        BandType = 4
      end
      object ppDBText34: TppDBText
        UserName = 'DBText34'
        DataField = 'A_OCT'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 203730
        mmTop = 528
        mmWidth = 5822
        BandType = 4
      end
      object ppDBText35: TppDBText
        UserName = 'DBText35'
        DataField = 'N_OCT'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 210344
        mmTop = 528
        mmWidth = 5822
        BandType = 4
      end
      object ppDBText36: TppDBText
        UserName = 'DBText36'
        DataField = 'F_OCT'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 216959
        mmTop = 528
        mmWidth = 5822
        BandType = 4
      end
      object ppShape46: TppShape
        UserName = 'Shape22'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 24606
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppShape47: TppShape
        UserName = 'Shape47'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 31221
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppShape49: TppShape
        UserName = 'Shape49'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 37835
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppShape50: TppShape
        UserName = 'Shape50'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 44450
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppShape51: TppShape
        UserName = 'Shape501'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 51065
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppShape52: TppShape
        UserName = 'Shape52'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 57679
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppShape53: TppShape
        UserName = 'Shape53'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 64294
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppShape54: TppShape
        UserName = 'Shape54'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 70908
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppShape55: TppShape
        UserName = 'Shape55'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 77523
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppShape56: TppShape
        UserName = 'Shape56'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 84138
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppShape57: TppShape
        UserName = 'Shape57'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 90752
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppShape58: TppShape
        UserName = 'Shape58'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 97367
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppShape59: TppShape
        UserName = 'Shape59'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 103981
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppShape61: TppShape
        UserName = 'Shape61'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 117211
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppShape62: TppShape
        UserName = 'Shape62'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 123825
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppShape63: TppShape
        UserName = 'Shape63'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 130440
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppShape64: TppShape
        UserName = 'Shape64'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 137054
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppShape65: TppShape
        UserName = 'Shape65'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 143669
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppShape66: TppShape
        UserName = 'Shape66'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 183358
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppShape67: TppShape
        UserName = 'Shape67'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 249503
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppShape68: TppShape
        UserName = 'Shape68'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 242888
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppShape69: TppShape
        UserName = 'Shape69'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 236273
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppShape70: TppShape
        UserName = 'Shape70'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 229659
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppShape71: TppShape
        UserName = 'Shape71'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 223044
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppShape72: TppShape
        UserName = 'Shape72'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 216430
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppShape73: TppShape
        UserName = 'Shape73'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 209815
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppShape74: TppShape
        UserName = 'Shape74'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 203200
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppShape75: TppShape
        UserName = 'Shape75'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 196586
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppShape76: TppShape
        UserName = 'Shape76'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 189971
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppShape77: TppShape
        UserName = 'Shape77'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 176741
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppShape78: TppShape
        UserName = 'Shape78'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 170127
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppShape79: TppShape
        UserName = 'Shape79'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppShape80: TppShape
        UserName = 'Shape80'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 156898
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppShape81: TppShape
        UserName = 'Shape81'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 150284
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppDBText37: TppDBText
        UserName = 'DBText37'
        DataField = 'A_NOV'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 223573
        mmTop = 528
        mmWidth = 5822
        BandType = 4
      end
      object ppDBText38: TppDBText
        UserName = 'DBText38'
        DataField = 'N_NOV'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 230188
        mmTop = 528
        mmWidth = 5822
        BandType = 4
      end
      object ppDBText39: TppDBText
        UserName = 'DBText39'
        DataField = 'F_NOV'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 236803
        mmTop = 528
        mmWidth = 5822
        BandType = 4
      end
      object ppShape82: TppShape
        UserName = 'Shape82'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 256117
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppShape83: TppShape
        UserName = 'Shape83'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 262732
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppShape84: TppShape
        UserName = 'Shape84'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 269876
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppShape85: TppShape
        UserName = 'Shape85'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 277019
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppShape87: TppShape
        UserName = 'Shape87'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 284163
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppDBText40: TppDBText
        UserName = 'DBText40'
        DataField = 'A_DIC'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 243417
        mmTop = 529
        mmWidth = 5822
        BandType = 4
      end
      object ppDBText41: TppDBText
        UserName = 'DBText401'
        DataField = 'N_DIC'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 250032
        mmTop = 529
        mmWidth = 5822
        BandType = 4
      end
      object ppDBText42: TppDBText
        UserName = 'DBText42'
        DataField = 'F_DIC'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 256646
        mmTop = 529
        mmWidth = 5821
        BandType = 4
      end
      object ppDBText43: TppDBText
        UserName = 'DBText43'
        DataField = 'A_TOT'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 263261
        mmTop = 529
        mmWidth = 6350
        BandType = 4
      end
      object ppDBText44: TppDBText
        UserName = 'DBText44'
        DataField = 'N_TOT'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 270405
        mmTop = 529
        mmWidth = 6350
        BandType = 4
      end
      object ppDBText45: TppDBText
        UserName = 'DBText45'
        DataField = 'F_TOT'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 277548
        mmTop = 529
        mmWidth = 6350
        BandType = 4
      end
      object ppShape60: TppShape
        UserName = 'Shape60'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 110596
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppShape86: TppShape
        UserName = 'Shape86'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 4234
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 32279
      mmPrintPosition = 0
      object ppShape123: TppShape
        UserName = 'Shape123'
        mmHeight = 16404
        mmLeft = 4233
        mmTop = 15081
        mmWidth = 50536
        BandType = 7
      end
      object ppLabel48: TppLabel
        UserName = 'Label23'
        Caption = 'TOTAL :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 4763
        mmTop = 528
        mmWidth = 9260
        BandType = 7
      end
      object ppLabel49: TppLabel
        UserName = 'Label32'
        Caption = 'Nota : Estadistica no Contable'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 4233
        mmTop = 11642
        mmWidth = 36248
        BandType = 7
      end
      object pplimpresopor: TppLabel
        UserName = 'Label45'
        Caption = 'Impreso por : Luis Mendez'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 4233
        mmTop = 4763
        mmWidth = 28787
        BandType = 7
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 4234
        mmTop = 3969
        mmWidth = 279930
        BandType = 7
      end
      object ppShape88: TppShape
        UserName = 'Shape88'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 4234
        mmTop = 0
        mmWidth = 265
        BandType = 7
      end
      object ppShape89: TppShape
        UserName = 'Shape89'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 24606
        mmTop = 0
        mmWidth = 265
        BandType = 7
      end
      object ppShape90: TppShape
        UserName = 'Shape90'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 31221
        mmTop = 0
        mmWidth = 265
        BandType = 7
      end
      object ppShape91: TppShape
        UserName = 'Shape901'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 37835
        mmTop = 0
        mmWidth = 265
        BandType = 7
      end
      object ppShape92: TppShape
        UserName = 'Shape902'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 44450
        mmTop = 0
        mmWidth = 265
        BandType = 7
      end
      object ppShape93: TppShape
        UserName = 'Shape903'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 51065
        mmTop = 0
        mmWidth = 265
        BandType = 7
      end
      object ppShape94: TppShape
        UserName = 'Shape904'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 57679
        mmTop = 0
        mmWidth = 265
        BandType = 7
      end
      object ppShape95: TppShape
        UserName = 'Shape905'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 64294
        mmTop = 0
        mmWidth = 265
        BandType = 7
      end
      object ppShape96: TppShape
        UserName = 'Shape96'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 70908
        mmTop = 0
        mmWidth = 265
        BandType = 7
      end
      object ppShape97: TppShape
        UserName = 'Shape97'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 77523
        mmTop = 0
        mmWidth = 265
        BandType = 7
      end
      object ppShape98: TppShape
        UserName = 'Shape98'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 84138
        mmTop = 0
        mmWidth = 265
        BandType = 7
      end
      object ppShape99: TppShape
        UserName = 'Shape99'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 90752
        mmTop = 0
        mmWidth = 265
        BandType = 7
      end
      object ppShape100: TppShape
        UserName = 'Shape100'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 97367
        mmTop = 0
        mmWidth = 265
        BandType = 7
      end
      object ppShape101: TppShape
        UserName = 'Shape28'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 103981
        mmTop = 0
        mmWidth = 265
        BandType = 7
      end
      object ppShape102: TppShape
        UserName = 'Shape102'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 110596
        mmTop = 0
        mmWidth = 265
        BandType = 7
      end
      object ppShape103: TppShape
        UserName = 'Shape103'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 117211
        mmTop = 0
        mmWidth = 265
        BandType = 7
      end
      object ppShape104: TppShape
        UserName = 'Shape104'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 123825
        mmTop = 0
        mmWidth = 265
        BandType = 7
      end
      object ppShape105: TppShape
        UserName = 'Shape105'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 130440
        mmTop = 0
        mmWidth = 265
        BandType = 7
      end
      object ppShape106: TppShape
        UserName = 'Shape106'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 137054
        mmTop = 0
        mmWidth = 265
        BandType = 7
      end
      object ppShape107: TppShape
        UserName = 'Shape107'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 143669
        mmTop = 0
        mmWidth = 265
        BandType = 7
      end
      object ppShape108: TppShape
        UserName = 'Shape1001'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 150284
        mmTop = 0
        mmWidth = 265
        BandType = 7
      end
      object ppShape109: TppShape
        UserName = 'Shape109'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 156898
        mmTop = 0
        mmWidth = 265
        BandType = 7
      end
      object ppShape110: TppShape
        UserName = 'Shape110'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 0
        mmWidth = 265
        BandType = 7
      end
      object ppShape111: TppShape
        UserName = 'Shape111'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 170127
        mmTop = 0
        mmWidth = 265
        BandType = 7
      end
      object ppShape112: TppShape
        UserName = 'Shape112'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 176742
        mmTop = 0
        mmWidth = 265
        BandType = 7
      end
      object ppShape113: TppShape
        UserName = 'Shape113'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 183357
        mmTop = 0
        mmWidth = 265
        BandType = 7
      end
      object ppShape114: TppShape
        UserName = 'Shape114'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 189971
        mmTop = 0
        mmWidth = 265
        BandType = 7
      end
      object ppShape115: TppShape
        UserName = 'Shape115'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 196586
        mmTop = 0
        mmWidth = 265
        BandType = 7
      end
      object ppShape116: TppShape
        UserName = 'Shape116'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 203200
        mmTop = 0
        mmWidth = 265
        BandType = 7
      end
      object ppShape117: TppShape
        UserName = 'Shape117'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 209815
        mmTop = 0
        mmWidth = 265
        BandType = 7
      end
      object ppShape118: TppShape
        UserName = 'Shape1101'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 216430
        mmTop = 0
        mmWidth = 265
        BandType = 7
      end
      object ppShape119: TppShape
        UserName = 'Shape119'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 223044
        mmTop = 0
        mmWidth = 265
        BandType = 7
      end
      object ppShape120: TppShape
        UserName = 'Shape120'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 229659
        mmTop = 0
        mmWidth = 265
        BandType = 7
      end
      object ppShape121: TppShape
        UserName = 'Shape121'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 236273
        mmTop = 0
        mmWidth = 265
        BandType = 7
      end
      object ppShape122: TppShape
        UserName = 'Shape122'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 242888
        mmTop = 0
        mmWidth = 265
        BandType = 7
      end
      object ppShape126: TppShape
        UserName = 'Shape126'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 249503
        mmTop = 0
        mmWidth = 265
        BandType = 7
      end
      object ppShape127: TppShape
        UserName = 'Shape127'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 256117
        mmTop = 0
        mmWidth = 265
        BandType = 7
      end
      object ppShape128: TppShape
        UserName = 'Shape128'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 262732
        mmTop = 0
        mmWidth = 265
        BandType = 7
      end
      object ppShape129: TppShape
        UserName = 'Shape1201'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 269876
        mmTop = 0
        mmWidth = 265
        BandType = 7
      end
      object ppShape130: TppShape
        UserName = 'Shape130'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 277019
        mmTop = 0
        mmWidth = 265
        BandType = 7
      end
      object ppShape131: TppShape
        UserName = 'Shape131'
        Pen.Style = psInsideFrame
        mmHeight = 4233
        mmLeft = 284163
        mmTop = 0
        mmWidth = 265
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'A_ENE'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 25135
        mmTop = 528
        mmWidth = 5822
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'N_ENE'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 31750
        mmTop = 528
        mmWidth = 5822
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'F_ENE'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 38365
        mmTop = 528
        mmWidth = 5822
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        DataField = 'A_FEB'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 44979
        mmTop = 528
        mmWidth = 5822
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        DataField = 'N_FEB'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 51594
        mmTop = 528
        mmWidth = 5822
        BandType = 7
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc6'
        DataField = 'F_FEB'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 58208
        mmTop = 528
        mmWidth = 5822
        BandType = 7
      end
      object ppDBCalc7: TppDBCalc
        UserName = 'DBCalc7'
        DataField = 'A_MAR'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 64823
        mmTop = 528
        mmWidth = 5822
        BandType = 7
      end
      object ppDBCalc8: TppDBCalc
        UserName = 'DBCalc8'
        DataField = 'N_MAR'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 71438
        mmTop = 528
        mmWidth = 5822
        BandType = 7
      end
      object ppDBCalc9: TppDBCalc
        UserName = 'DBCalc9'
        DataField = 'F_MAR'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 78052
        mmTop = 528
        mmWidth = 5822
        BandType = 7
      end
      object ppDBCalc10: TppDBCalc
        UserName = 'DBCalc10'
        DataField = 'A_ABR'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 84667
        mmTop = 528
        mmWidth = 5822
        BandType = 7
      end
      object ppDBCalc11: TppDBCalc
        UserName = 'DBCalc101'
        DataField = 'N_ABR'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 91281
        mmTop = 528
        mmWidth = 5822
        BandType = 7
      end
      object ppDBCalc12: TppDBCalc
        UserName = 'DBCalc12'
        DataField = 'F_ABR'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 97896
        mmTop = 528
        mmWidth = 5822
        BandType = 7
      end
      object ppDBCalc13: TppDBCalc
        UserName = 'DBCalc13'
        DataField = 'A_MAY'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 104511
        mmTop = 528
        mmWidth = 5822
        BandType = 7
      end
      object ppDBCalc14: TppDBCalc
        UserName = 'DBCalc14'
        DataField = 'N_MAY'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 111125
        mmTop = 528
        mmWidth = 5822
        BandType = 7
      end
      object ppDBCalc15: TppDBCalc
        UserName = 'DBCalc15'
        DataField = 'F_MAY'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 117740
        mmTop = 528
        mmWidth = 5822
        BandType = 7
      end
      object ppDBCalc16: TppDBCalc
        UserName = 'DBCalc16'
        DataField = 'A_JUN'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 124354
        mmTop = 528
        mmWidth = 5822
        BandType = 7
      end
      object ppDBCalc17: TppDBCalc
        UserName = 'DBCalc17'
        DataField = 'N_JUN'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 130969
        mmTop = 528
        mmWidth = 5822
        BandType = 7
      end
      object ppDBCalc18: TppDBCalc
        UserName = 'DBCalc18'
        DataField = 'F_JUN'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 137584
        mmTop = 528
        mmWidth = 5822
        BandType = 7
      end
      object ppDBCalc19: TppDBCalc
        UserName = 'DBCalc19'
        DataField = 'A_JUL'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 144198
        mmTop = 528
        mmWidth = 5822
        BandType = 7
      end
      object ppDBCalc20: TppDBCalc
        UserName = 'DBCalc20'
        DataField = 'N_JUL'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 150813
        mmTop = 528
        mmWidth = 5822
        BandType = 7
      end
      object ppDBCalc21: TppDBCalc
        UserName = 'DBCalc201'
        DataField = 'F_JUL'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 157427
        mmTop = 528
        mmWidth = 5822
        BandType = 7
      end
      object ppDBCalc22: TppDBCalc
        UserName = 'DBCalc22'
        DataField = 'A_AGO'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 164042
        mmTop = 528
        mmWidth = 5822
        BandType = 7
      end
      object ppDBCalc23: TppDBCalc
        UserName = 'DBCalc23'
        DataField = 'N_AGO'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 170657
        mmTop = 528
        mmWidth = 5822
        BandType = 7
      end
      object ppDBCalc24: TppDBCalc
        UserName = 'DBCalc24'
        DataField = 'F_AGO'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 177271
        mmTop = 528
        mmWidth = 5822
        BandType = 7
      end
      object ppDBCalc25: TppDBCalc
        UserName = 'DBCalc25'
        DataField = 'A_SET'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 183886
        mmTop = 528
        mmWidth = 5822
        BandType = 7
      end
      object ppDBCalc26: TppDBCalc
        UserName = 'DBCalc26'
        DataField = 'N_SET'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 190500
        mmTop = 528
        mmWidth = 5822
        BandType = 7
      end
      object ppDBCalc28: TppDBCalc
        UserName = 'DBCalc28'
        DataField = 'F_SET'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 197115
        mmTop = 528
        mmWidth = 5822
        BandType = 7
      end
      object ppDBCalc29: TppDBCalc
        UserName = 'DBCalc29'
        DataField = 'A_OCT'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 203730
        mmTop = 528
        mmWidth = 5822
        BandType = 7
      end
      object ppDBCalc30: TppDBCalc
        UserName = 'DBCalc30'
        DataField = 'N_OCT'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 210344
        mmTop = 528
        mmWidth = 5822
        BandType = 7
      end
      object ppDBCalc31: TppDBCalc
        UserName = 'DBCalc301'
        DataField = 'F_OCT'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 216959
        mmTop = 528
        mmWidth = 5822
        BandType = 7
      end
      object ppDBCalc32: TppDBCalc
        UserName = 'DBCalc32'
        DataField = 'A_NOV'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 223573
        mmTop = 528
        mmWidth = 5822
        BandType = 7
      end
      object ppDBCalc33: TppDBCalc
        UserName = 'DBCalc33'
        DataField = 'N_NOV'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 230188
        mmTop = 528
        mmWidth = 5822
        BandType = 7
      end
      object ppDBCalc34: TppDBCalc
        UserName = 'DBCalc34'
        DataField = 'F_NOV'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 236803
        mmTop = 528
        mmWidth = 5822
        BandType = 7
      end
      object ppDBCalc35: TppDBCalc
        UserName = 'DBCalc35'
        DataField = 'A_DIC'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 243417
        mmTop = 528
        mmWidth = 5822
        BandType = 7
      end
      object ppDBCalc36: TppDBCalc
        UserName = 'DBCalc36'
        DataField = 'N_DIC'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 250032
        mmTop = 528
        mmWidth = 5822
        BandType = 7
      end
      object ppDBCalc37: TppDBCalc
        UserName = 'DBCalc37'
        DataField = 'F_DIC'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 256646
        mmTop = 528
        mmWidth = 5822
        BandType = 7
      end
      object ppDBCalc38: TppDBCalc
        UserName = 'DBCalc38'
        DataField = 'A_TOT'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 263261
        mmTop = 529
        mmWidth = 6350
        BandType = 7
      end
      object ppDBCalc39: TppDBCalc
        UserName = 'DBCalc39'
        DataField = 'N_TOT'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 270405
        mmTop = 529
        mmWidth = 6350
        BandType = 7
      end
      object ppDBCalc40: TppDBCalc
        UserName = 'DBCalc40'
        DataField = 'F_TOT'
        DataPipeline = ppbdeRep
        DisplayFormat = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeRep'
        mmHeight = 2910
        mmLeft = 277548
        mmTop = 529
        mmWidth = 6350
        BandType = 7
      end
      object pplprocesadoel: TppLabel
        UserName = 'lprocesadoel'
        Caption = 'Fecha y Hora de Proceso : 12/03/2005 09:30 am.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 4233
        mmTop = 8202
        mmWidth = 56092
        BandType = 7
      end
      object ppLabel95: TppLabel
        UserName = 'Label48'
        Caption = 'NUEVOS APORTANTES EN EL MES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 11377
        mmTop = 20373
        mmWidth = 41614
        BandType = 7
      end
      object ppLabel96: TppLabel
        UserName = 'Label96'
        Caption = 'VUELVEN HA APORTAR EN EL MES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 11377
        mmTop = 24077
        mmWidth = 41995
        BandType = 7
      end
      object ppLabel97: TppLabel
        UserName = 'Label97'
        Caption = 'NO APORTARON EN EL MES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 11377
        mmTop = 27781
        mmWidth = 33740
        BandType = 7
      end
      object ppLine18: TppLine
        UserName = 'Line18'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 4233
        mmTop = 19579
        mmWidth = 50271
        BandType = 7
      end
      object ppLabel98: TppLabel
        UserName = 'Label49'
        Caption = 'LEYENDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 22490
        mmTop = 15875
        mmWidth = 12965
        BandType = 7
      end
      object ppLabel99: TppLabel
        UserName = 'Label99'
        Caption = 'A'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 5292
        mmTop = 20373
        mmWidth = 2380
        BandType = 7
      end
      object ppLabel100: TppLabel
        UserName = 'Label100'
        Caption = 'B'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 5292
        mmTop = 24077
        mmWidth = 2380
        BandType = 7
      end
      object ppLabel101: TppLabel
        UserName = 'Label1001'
        Caption = 'C'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 5292
        mmTop = 27781
        mmWidth = 2380
        BandType = 7
      end
      object ppLine19: TppLine
        UserName = 'Line19'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 4233
        mmTop = 23548
        mmWidth = 50536
        BandType = 7
      end
      object ppLine20: TppLine
        UserName = 'Line20'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 4233
        mmTop = 27252
        mmWidth = 50536
        BandType = 7
      end
      object ppShape124: TppShape
        UserName = 'Shape124'
        Pen.Style = psInsideFrame
        mmHeight = 11642
        mmLeft = 9525
        mmTop = 19579
        mmWidth = 265
        BandType = 7
      end
    end
  end
  object ppbdedetapo: TppBDEPipeline
    DataSource = DM1.dsReporte
    UserName = 'bdedetapo'
    Left = 304
    Top = 124
  end
  object pprrepnueapo: TppReport
    AutoStop = False
    DataPipeline = ppbdedetapo
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 312
    Top = 132
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppbdedetapo'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 54769
      mmPrintPosition = 0
      object ppLabel47: TppLabel
        UserName = 'Label1'
        Caption = 'Derrama Magisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 6879
        mmTop = 0
        mmWidth = 33073
        BandType = 0
      end
      object ppLabel51: TppLabel
        UserName = 'Label51'
        Caption = 'Equipo de Cobranza'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 6879
        mmTop = 3704
        mmWidth = 30692
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label52'
        Caption = 'Modulo de Aportes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 6879
        mmTop = 7408
        mmWidth = 30163
        BandType = 0
      end
      object ppLabel53: TppLabel
        UserName = 'Label53'
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 159015
        mmTop = 0
        mmWidth = 8202
        BandType = 0
      end
      object ppLabel54: TppLabel
        UserName = 'Label54'
        Caption = 'P'#225'gina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 159015
        mmTop = 7408
        mmWidth = 9260
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 174361
        mmTop = 0
        mmWidth = 14023
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 174361
        mmTop = 7408
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel55: TppLabel
        UserName = 'Label55'
        Caption = 'Hora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 159015
        mmTop = 3704
        mmWidth = 6350
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable6'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 174361
        mmTop = 3704
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel56: TppLabel
        UserName = 'Label56'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 170921
        mmTop = 0
        mmWidth = 1058
        BandType = 0
      end
      object ppLabel57: TppLabel
        UserName = 'Label57'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 170921
        mmTop = 3704
        mmWidth = 1058
        BandType = 0
      end
      object ppLabel58: TppLabel
        UserName = 'Label58'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 170921
        mmTop = 7408
        mmWidth = 1058
        BandType = 0
      end
      object ppShape28: TppShape
        UserName = 'Shape28'
        mmHeight = 7673
        mmLeft = 16404
        mmTop = 47096
        mmWidth = 19315
        BandType = 0
      end
      object ppLabel59: TppLabel
        UserName = 'Label59'
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 16933
        mmTop = 47625
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel60: TppLabel
        UserName = 'Label60'
        Caption = 'Modular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 16933
        mmTop = 51065
        mmWidth = 10054
        BandType = 0
      end
      object ppShape29: TppShape
        UserName = 'Shape29'
        mmHeight = 7673
        mmLeft = 35454
        mmTop = 47096
        mmWidth = 18521
        BandType = 0
      end
      object ppLabel61: TppLabel
        UserName = 'Label61'
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 35983
        mmTop = 47625
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel64: TppLabel
        UserName = 'Label601'
        Caption = 'de Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 35983
        mmTop = 51065
        mmWidth = 10583
        BandType = 0
      end
      object ppShape30: TppShape
        UserName = 'Shape30'
        mmHeight = 7673
        mmLeft = 53711
        mmTop = 47096
        mmWidth = 91017
        BandType = 0
      end
      object ppLabel65: TppLabel
        UserName = 'Label65'
        Caption = 'Apellidos y'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 54240
        mmTop = 47625
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel66: TppLabel
        UserName = 'Label66'
        Caption = 'Nombre(s)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 54240
        mmTop = 51065
        mmWidth = 16933
        BandType = 0
      end
      object ppShape31: TppShape
        UserName = 'Shape31'
        mmHeight = 7673
        mmLeft = 144463
        mmTop = 47096
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel67: TppLabel
        UserName = 'Label67'
        Caption = 'DNI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 144992
        mmTop = 47625
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel68: TppLabel
        UserName = 'Label68'
        Caption = 'del Asociado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 144992
        mmTop = 51065
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel69: TppLabel
        UserName = 'Label69'
        Caption = 'DETALLE DEL COMPARATIVO MENSUAL DE ASOCIADOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 48627
        mmTop = 16933
        mmWidth = 97494
        BandType = 0
      end
      object pplTitulo02: TppLabel
        UserName = 'lTitulo02'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 58463
        mmTop = 22225
        mmWidth = 77809
        BandType = 0
      end
      object ppLabel71: TppLabel
        UserName = 'Label71'
        Caption = 'Periodo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 16404
        mmTop = 30956
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel72: TppLabel
        UserName = 'Label72'
        Caption = 'Departamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 16404
        mmTop = 37835
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel73: TppLabel
        UserName = 'Label73'
        Caption = 'UGEL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 16404
        mmTop = 41275
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel74: TppLabel
        UserName = 'Label74'
        Caption = 'Monto del Aporte'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 16404
        mmTop = 34396
        mmWidth = 21960
        BandType = 0
      end
      object ppLabel75: TppLabel
        UserName = 'Label75'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 39688
        mmTop = 30956
        mmWidth = 794
        BandType = 0
      end
      object ppLabel76: TppLabel
        UserName = 'Label76'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 39688
        mmTop = 34396
        mmWidth = 794
        BandType = 0
      end
      object ppLabel77: TppLabel
        UserName = 'Label77'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 39688
        mmTop = 37835
        mmWidth = 794
        BandType = 0
      end
      object ppLabel78: TppLabel
        UserName = 'Label78'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 39688
        mmTop = 41275
        mmWidth = 794
        BandType = 0
      end
      object pplanomes: TppLabel
        UserName = 'lanomes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 41804
        mmTop = 30956
        mmWidth = 13229
        BandType = 0
      end
      object pplmonapo: TppLabel
        UserName = 'lanoper1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 41804
        mmTop = 34396
        mmWidth = 10848
        BandType = 0
      end
      object ppldptodes: TppLabel
        UserName = 'ldptodes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 41804
        mmTop = 37835
        mmWidth = 51594
        BandType = 0
      end
      object pplUGELdes: TppLabel
        UserName = 'ldptodes1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 41804
        mmTop = 41275
        mmWidth = 62442
        BandType = 0
      end
      object ppShape32: TppShape
        UserName = 'Shape32'
        mmHeight = 7673
        mmLeft = 162190
        mmTop = 47096
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel70: TppLabel
        UserName = 'Label70'
        Caption = 'Monto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 162984
        mmTop = 47625
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel80: TppLabel
        UserName = 'Label80'
        Caption = 'Descontado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 162984
        mmTop = 51065
        mmWidth = 15080
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        DataField = 'ASOCODMOD'
        DataPipeline = ppbdedetapo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdedetapo'
        mmHeight = 3175
        mmLeft = 16933
        mmTop = 265
        mmWidth = 16933
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        DataField = 'ASOCODPAGO'
        DataPipeline = ppbdedetapo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdedetapo'
        mmHeight = 3175
        mmLeft = 35983
        mmTop = 265
        mmWidth = 16933
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText30'
        DataField = 'ASOAPENOMDNI'
        DataPipeline = ppbdedetapo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdedetapo'
        mmHeight = 3175
        mmLeft = 54240
        mmTop = 265
        mmWidth = 88371
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText301'
        DataField = 'ASODNI'
        DataPipeline = ppbdedetapo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdedetapo'
        mmHeight = 3175
        mmLeft = 144992
        mmTop = 265
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'DBText32'
        DataField = 'TRANSMTO'
        DataPipeline = ppbdedetapo
        DisplayFormat = '##,##.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdedetapo'
        mmHeight = 3175
        mmLeft = 162984
        mmTop = 265
        mmWidth = 15080
        BandType = 4
      end
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 10054
      mmPrintPosition = 0
      object ppLabel79: TppLabel
        UserName = 'Label79'
        Caption = 'Total Asociados :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 16404
        mmTop = 1323
        mmWidth = 28575
        BandType = 7
      end
      object ppltotaso: TppLabel
        UserName = 'ltotaso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 46831
        mmTop = 1323
        mmWidth = 8467
        BandType = 7
      end
      object ppLine16: TppLine
        UserName = 'Line16'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 16404
        mmTop = 265
        mmWidth = 146050
        BandType = 7
      end
      object ppLine17: TppLine
        UserName = 'Line17'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 16404
        mmTop = 5556
        mmWidth = 164307
        BandType = 7
      end
      object pplimpresopor01: TppLabel
        UserName = 'limpresopor01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 16404
        mmTop = 6350
        mmWidth = 77258
        BandType = 7
      end
      object ppDBCalc27: TppDBCalc
        UserName = 'DBCalc27'
        DataField = 'TRANSMTO'
        DataPipeline = ppbdedetapo
        DisplayFormat = '##,##.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdedetapo'
        mmHeight = 3175
        mmLeft = 162984
        mmTop = 1323
        mmWidth = 15080
        BandType = 7
      end
    end
  end
end
