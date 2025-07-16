object Faporeg: TFaporeg
  Left = 34
  Top = 81
  BorderStyle = bsDialog
  Caption = 'Cobranza de Aportes'
  ClientHeight = 428
  ClientWidth = 719
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
  object gbselran: TGroupBox
    Left = 5
    Top = 4
    Width = 238
    Height = 140
    Caption = 'Seleccione el Periodo :'
    TabOrder = 0
    object Label8: TLabel
      Left = 14
      Top = 27
      Width = 42
      Height = 13
      Caption = 'Periodo :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object rgSeleccion: TRadioGroup
      Left = 7
      Top = 53
      Width = 106
      Height = 69
      Caption = ' Selecci'#243'n '
      ItemIndex = 0
      Items.Strings = (
        'Detallado'
        'Resumido'
        'Estadistico')
      TabOrder = 0
      OnClick = rgSeleccionClick
    end
    object rgestadistico: TRadioGroup
      Left = 120
      Top = 64
      Width = 107
      Height = 58
      Caption = ' Estadistico '
      Items.Strings = (
        'Forma de pago'
        'Departamento')
      TabOrder = 1
      OnClick = rgestadisticoClick
    end
    object perano: TwwDBSpinEdit
      Left = 68
      Top = 21
      Width = 58
      Height = 26
      Cursor = crHandPoint
      Increment = 1.000000000000000000
      MaxValue = 2050.000000000000000000
      MinValue = 2005.000000000000000000
      Value = 2005.000000000000000000
      AutoFillDate = False
      AutoSize = False
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      LimitEditRect = True
      MaxLength = 4
      ParentFont = False
      TabOrder = 2
      UnboundDataType = wwDefault
    end
    object permes: TwwDBSpinEdit
      Left = 133
      Top = 21
      Width = 39
      Height = 26
      Cursor = crHandPoint
      Increment = 1.000000000000000000
      MaxValue = 12.000000000000000000
      MinValue = 1.000000000000000000
      Value = 1.000000000000000000
      AutoFillDate = False
      AutoSize = False
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      LimitEditRect = True
      MaxLength = 2
      ParentFont = False
      TabOrder = 3
      UnboundDataType = wwDefault
      UsePictureMask = False
      OnExit = permesExit
    end
  end
  object gbparsel: TGroupBox
    Left = 251
    Top = 4
    Width = 361
    Height = 149
    Caption = ' Parametros de la selecci'#243'n '
    TabOrder = 1
    object Label4: TLabel
      Left = 10
      Top = 45
      Width = 73
      Height = 13
      Caption = 'Departamento :'
    end
    object Label5: TLabel
      Left = 10
      Top = 69
      Width = 97
      Height = 13
      Caption = 'Unidad de Proceso :'
    end
    object Label6: TLabel
      Left = 10
      Top = 95
      Width = 83
      Height = 13
      Caption = 'Unidad de Pago :'
    end
    object Label7: TLabel
      Left = 10
      Top = 122
      Width = 88
      Height = 13
      Caption = 'Unidad de Gesti'#243'n'
    end
    object Label3: TLabel
      Left = 10
      Top = 24
      Width = 74
      Height = 13
      Caption = 'Forma de pago:'
    end
    object dblcdidedep: TwwDBLookupComboDlg
      Left = 113
      Top = 42
      Width = 46
      Height = 21
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsDpto
      LookupField = 'DPTOID'
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcdidedepChange
      OnExit = dblcdidedepExit
    end
    object Panel2: TPanel
      Left = 166
      Top = 42
      Width = 185
      Height = 23
      Enabled = False
      TabOrder = 1
      object medesdep: TMaskEdit
        Left = 1
        Top = 1
        Width = 182
        Height = 21
        TabOrder = 0
      end
    end
    object dblcdunipro: TwwDBLookupComboDlg
      Left = 113
      Top = 67
      Width = 46
      Height = 21
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsUPro
      LookupField = 'UPROID'
      TabOrder = 2
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcduniproChange
      OnExit = dblcduniproExit
    end
    object Panel3: TPanel
      Left = 166
      Top = 67
      Width = 185
      Height = 23
      Enabled = False
      TabOrder = 3
      object medesunipro: TMaskEdit
        Left = 1
        Top = 1
        Width = 182
        Height = 21
        TabOrder = 0
      end
    end
    object dblcdunipag: TwwDBLookupComboDlg
      Left = 113
      Top = 92
      Width = 46
      Height = 21
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsUPago
      LookupField = 'UPAGOID'
      TabOrder = 4
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcdunipagChange
      OnExit = dblcdunipagExit
    end
    object Panel4: TPanel
      Left = 166
      Top = 92
      Width = 185
      Height = 23
      Enabled = False
      TabOrder = 5
      object medesunipag: TMaskEdit
        Left = 1
        Top = 1
        Width = 182
        Height = 21
        TabOrder = 0
      end
    end
    object dblcdideuse: TwwDBLookupComboDlg
      Left = 113
      Top = 118
      Width = 46
      Height = 21
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsUse
      LookupField = 'USEID'
      TabOrder = 6
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcdideuseChange
      OnExit = dblcdideuseExit
    end
    object Panel5: TPanel
      Left = 166
      Top = 118
      Width = 185
      Height = 23
      Enabled = False
      TabOrder = 7
      object medesuniges: TMaskEdit
        Left = 1
        Top = 1
        Width = 182
        Height = 21
        TabOrder = 0
      end
    end
    object dblcdforpag: TwwDBLookupComboDlg
      Left = 113
      Top = 16
      Width = 46
      Height = 21
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsFormaPago
      LookupField = 'FORPAGOID'
      Color = clWhite
      MaxLength = 2
      TabOrder = 8
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcdforpagChange
    end
    object Panel1: TPanel
      Left = 166
      Top = 16
      Width = 185
      Height = 23
      Enabled = False
      TabOrder = 9
      object medesforpag: TMaskEdit
        Left = 1
        Top = 1
        Width = 182
        Height = 21
        TabOrder = 0
      end
    end
  end
  object dbgprevio: TwwDBGrid
    Left = 8
    Top = 160
    Width = 692
    Height = 209
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsReporte
    Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
    TabOrder = 2
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
  end
  object btnprocesar: TBitBtn
    Left = 630
    Top = 24
    Width = 73
    Height = 31
    Caption = 'Procesar'
    TabOrder = 3
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
  object btnimprimir: TBitBtn
    Left = 548
    Top = 377
    Width = 73
    Height = 31
    Caption = 'Imprimir'
    TabOrder = 4
    OnClick = btnimprimirClick
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
  object btncerrar: TBitBtn
    Left = 628
    Top = 377
    Width = 73
    Height = 31
    Caption = 'Cerrar'
    TabOrder = 5
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
  object ppdbreportes: TppDBPipeline
    DataSource = DM1.dsReporte
    UserName = 'dbreportes'
    Left = 360
    Top = 376
  end
  object pprreporte04: TppReport
    AutoStop = False
    DataPipeline = ppdbreportes
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter 8 1/2 x 11 in'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 119
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 480
    Top = 376
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbreportes'
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 37306
      mmPrintPosition = 0
      object ppShape13: TppShape
        UserName = 'Shape3'
        mmHeight = 8202
        mmLeft = 120915
        mmTop = 28046
        mmWidth = 24606
        BandType = 0
      end
      object ppShape14: TppShape
        UserName = 'Shape2'
        mmHeight = 8202
        mmLeft = 96573
        mmTop = 28046
        mmWidth = 24606
        BandType = 0
      end
      object ppShape15: TppShape
        UserName = 'Shape1'
        mmHeight = 8202
        mmLeft = 30692
        mmTop = 28046
        mmWidth = 66146
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label1'
        Caption = 'Descripci'#243'n del'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 31750
        mmTop = 28840
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label2'
        Caption = 'Cantidad'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 97367
        mmTop = 28840
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label3'
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 121709
        mmTop = 28840
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'lblTitulo'
        Caption = 'ESTADISTICA DE APORTES COBRADOS POR DEPARTAMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 39158
        mmTop = 13758
        mmWidth = 97198
        BandType = 0
      end
      object ppltitulosec04: TppLabel
        UserName = 'ppltitulo02'
        Caption = 'DEL 99/99/9999 AL 99/99/9999'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 59002
        mmTop = 17727
        mmWidth = 57150
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label11'
        Caption = 'Derrama Magisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 15346
        mmTop = 0
        mmWidth = 25400
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label19'
        Caption = 'Equipo de Cobranzas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 15346
        mmTop = 3440
        mmWidth = 27252
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label201'
        Caption = 'Fecha :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 129911
        mmTop = 0
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label9'
        Caption = 'Hora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 129911
        mmTop = 3440
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label22'
        Caption = 'Pagina:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 129911
        mmTop = 6879
        mmWidth = 9525
        BandType = 0
      end
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 142611
        mmTop = 0
        mmWidth = 14023
        BandType = 0
      end
      object ppSystemVariable8: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 142611
        mmTop = 3440
        mmWidth = 17463
        BandType = 0
      end
      object ppSystemVariable9: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 142611
        mmTop = 6879
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label4'
        Caption = 'Departamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 31750
        mmTop = 32279
        mmWidth = 18521
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'DPTOID'
        DataPipeline = ppdbreportes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbreportes'
        mmHeight = 3175
        mmLeft = 31750
        mmTop = 0
        mmWidth = 6350
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'DPTODES'
        DataPipeline = ppdbreportes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbreportes'
        mmHeight = 3175
        mmLeft = 39158
        mmTop = 0
        mmWidth = 55563
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'CANTIDAD'
        DataPipeline = ppdbreportes
        DisplayFormat = '#,0; -#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbreportes'
        mmHeight = 3175
        mmLeft = 103981
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'MONTO'
        DataPipeline = ppdbreportes
        DisplayFormat = '#,0.00; -#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbreportes'
        mmHeight = 3175
        mmLeft = 128323
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppSummaryBand3: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 9260
      mmPrintPosition = 0
      object ppLabel35: TppLabel
        UserName = 'Label5'
        Caption = 'Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 84931
        mmTop = 794
        mmWidth = 10583
        BandType = 7
      end
      object ppLine3: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 30692
        mmTop = 4763
        mmWidth = 114564
        BandType = 7
      end
      object pplimpresopor04: TppLabel
        UserName = 'limpresopor03'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 30692
        mmTop = 5821
        mmWidth = 65088
        BandType = 7
      end
      object ppLine4: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 30692
        mmTop = 0
        mmWidth = 114564
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        DataField = 'CANTIDAD'
        DataPipeline = ppdbreportes
        DisplayFormat = '#,0; -#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbreportes'
        mmHeight = 3175
        mmLeft = 103981
        mmTop = 794
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc7: TppDBCalc
        UserName = 'DBCalc7'
        DataField = 'MONTO'
        DataPipeline = ppdbreportes
        DisplayFormat = '#,0.00; -#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbreportes'
        mmHeight = 3175
        mmLeft = 128323
        mmTop = 794
        mmWidth = 17198
        BandType = 7
      end
    end
  end
  object pprreporte03: TppReport
    AutoStop = False
    DataPipeline = ppdbreportes
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter 8 1/2 x 11 in'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 119
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 512
    Top = 376
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbreportes'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 37306
      mmPrintPosition = 0
      object ppShape10: TppShape
        UserName = 'Shape3'
        mmHeight = 8202
        mmLeft = 119592
        mmTop = 28046
        mmWidth = 24606
        BandType = 0
      end
      object ppShape11: TppShape
        UserName = 'Shape2'
        mmHeight = 8202
        mmLeft = 95250
        mmTop = 28046
        mmWidth = 24606
        BandType = 0
      end
      object ppShape12: TppShape
        UserName = 'Shape1'
        mmHeight = 8202
        mmLeft = 29369
        mmTop = 28046
        mmWidth = 66146
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Forma de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 30427
        mmTop = 28840
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label2'
        Caption = 'Cantidad'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 96044
        mmTop = 28840
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label3'
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 120386
        mmTop = 28840
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'lblTitulo'
        Caption = 'ESTADISTICA DE APORTES COBRADOS POR FORMA DE PAGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 38629
        mmTop = 12965
        mmWidth = 97631
        BandType = 0
      end
      object ppltitulosec03: TppLabel
        UserName = 'ppltitulo02'
        Caption = 'DEL 99/99/9999 AL 99/99/9999'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 58738
        mmTop = 16933
        mmWidth = 57150
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label11'
        Caption = 'Derrama Magisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 15346
        mmTop = 0
        mmWidth = 25400
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label19'
        Caption = 'Equipo de Cobranzas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 15346
        mmTop = 3440
        mmWidth = 27252
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label201'
        Caption = 'Fecha :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 129911
        mmTop = 0
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label9'
        Caption = 'Hora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 129911
        mmTop = 3440
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label22'
        Caption = 'Pagina:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 129911
        mmTop = 6879
        mmWidth = 9525
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 142611
        mmTop = 0
        mmWidth = 14023
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 142611
        mmTop = 3440
        mmWidth = 17463
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 142611
        mmTop = 6879
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label4'
        Caption = 'pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 30427
        mmTop = 32279
        mmWidth = 9790
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText8: TppDBText
        UserName = 'DBText1'
        DataField = 'FORPAGOABR'
        DataPipeline = ppdbreportes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbreportes'
        mmHeight = 3175
        mmLeft = 30427
        mmTop = 0
        mmWidth = 7673
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText2'
        DataField = 'FORPAGODES'
        DataPipeline = ppdbreportes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbreportes'
        mmHeight = 3175
        mmLeft = 39688
        mmTop = 0
        mmWidth = 54504
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText3'
        DataField = 'CUENTA'
        DataPipeline = ppdbreportes
        DisplayFormat = '#,0; -#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbreportes'
        mmHeight = 3175
        mmLeft = 98690
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText4'
        DataField = 'TRANSMTO'
        DataPipeline = ppdbreportes
        DisplayFormat = '#,0.00; -#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbreportes'
        mmHeight = 3175
        mmLeft = 123825
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 8996
      mmPrintPosition = 0
      object ppLabel17: TppLabel
        UserName = 'Label5'
        Caption = 'Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 83608
        mmTop = 794
        mmWidth = 10583
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'CUENTA'
        DataPipeline = ppdbreportes
        DisplayFormat = '#,0; -#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbreportes'
        mmHeight = 3175
        mmLeft = 98690
        mmTop = 794
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'TRANSMTO'
        DataPipeline = ppdbreportes
        DisplayFormat = '#,0.00; -#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbreportes'
        mmHeight = 3175
        mmLeft = 123825
        mmTop = 794
        mmWidth = 17198
        BandType = 7
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 29369
        mmTop = 4763
        mmWidth = 114564
        BandType = 7
      end
      object pplimpresopor03: TppLabel
        UserName = 'limpresopor03'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 29369
        mmTop = 5821
        mmWidth = 65088
        BandType = 7
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 29369
        mmTop = 0
        mmWidth = 114564
        BandType = 7
      end
    end
  end
  object pprdetallado: TppReport
    AutoStop = False
    DataPipeline = ppdbreportes
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter 8 1/2 x 11 in'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 119
    Template.FileName = 'C:\Documents and Settings\irevilla\Escritorio\detallado.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 408
    Top = 376
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbreportes'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 37835
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape3'
        mmHeight = 12435
        mmLeft = 22225
        mmTop = 25135
        mmWidth = 75405
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 12435
        mmLeft = 3969
        mmTop = 25135
        mmWidth = 18522
        BandType = 0
      end
      object pplblTitulo: TppLabel
        UserName = 'lblTitulo'
        Caption = 'PAGO DE APORTES EFECTUADOS DEL 01/12/2005 AL 31/12/2005'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 46302
        mmTop = 10583
        mmWidth = 99484
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label11'
        Caption = 'Derrama Magisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 3969
        mmTop = 0
        mmWidth = 25400
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label19'
        Caption = 'Equipo de Cobranzas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 3969
        mmTop = 2910
        mmWidth = 27252
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label201'
        Caption = 'Fecha :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 161396
        mmTop = 0
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label9'
        Caption = 'Hora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 161396
        mmTop = 2910
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label22'
        Caption = 'Pagina:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 161396
        mmTop = 5821
        mmWidth = 9525
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 174096
        mmTop = 0
        mmWidth = 14023
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 174096
        mmTop = 2910
        mmWidth = 17463
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 174096
        mmTop = 5821
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label41'
        Caption = '(DETALLADO)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 85383
        mmTop = 14817
        mmWidth = 21590
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 4763
        mmTop = 26723
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label36'
        Caption = 'Modular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 4763
        mmTop = 30427
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label54'
        Caption = 'Nombres y Apellidos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 23019
        mmTop = 26723
        mmWidth = 33602
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape1'
        mmHeight = 12435
        mmLeft = 97367
        mmTop = 25135
        mmWidth = 21431
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 12435
        mmLeft = 118534
        mmTop = 25135
        mmWidth = 20638
        BandType = 0
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 12435
        mmLeft = 138907
        mmTop = 25135
        mmWidth = 22225
        BandType = 0
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        mmHeight = 12435
        mmLeft = 160867
        mmTop = 25135
        mmWidth = 14552
        BandType = 0
      end
      object ppShape7: TppShape
        UserName = 'Shape7'
        mmHeight = 12435
        mmLeft = 175155
        mmTop = 25135
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label1'
        Caption = 'N'#250'mero de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 98161
        mmTop = 26723
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label16'
        Caption = 'Operaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 98161
        mmTop = 30427
        mmWidth = 16140
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label21'
        Caption = 'Fecha de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 119327
        mmTop = 26723
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label23'
        Caption = 'Operaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 119327
        mmTop = 30427
        mmWidth = 16140
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label24'
        Caption = 'Usuario que'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 139965
        mmTop = 26723
        mmWidth = 18785
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label28'
        Caption = 'Registro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 139965
        mmTop = 30427
        mmWidth = 13494
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label37'
        Caption = 'A'#241'o/mes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 161661
        mmTop = 26723
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label38'
        Caption = 'aporte'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 161661
        mmTop = 30427
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label39'
        Caption = 'Monto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 176213
        mmTop = 26723
        mmWidth = 10848
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label52'
        Caption = 'de Aporte'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 176213
        mmTop = 30427
        mmWidth = 15610
        BandType = 0
      end
    end
    object ppDetailBand4: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'ASOCODMOD'
        DataPipeline = ppdbreportes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbreportes'
        mmHeight = 3175
        mmLeft = 4763
        mmTop = 0
        mmWidth = 16933
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'ASOAPENOMDNI'
        DataPipeline = ppdbreportes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbreportes'
        mmHeight = 3175
        mmLeft = 23019
        mmTop = 0
        mmWidth = 73819
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'TRANSNOPE'
        DataPipeline = ppdbreportes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbreportes'
        mmHeight = 3175
        mmLeft = 98161
        mmTop = 0
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'TRANSFOPE'
        DataPipeline = ppdbreportes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbreportes'
        mmHeight = 3175
        mmLeft = 119327
        mmTop = 0
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'USUARIO'
        DataPipeline = ppdbreportes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbreportes'
        mmHeight = 3175
        mmLeft = 139700
        mmTop = 0
        mmWidth = 20638
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'TRANSMTO'
        DataPipeline = ppdbreportes
        DisplayFormat = '#,0.00; -#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbreportes'
        mmHeight = 3387
        mmLeft = 175949
        mmTop = 0
        mmWidth = 15611
        BandType = 4
      end
      object ppDBText53: TppDBText
        UserName = 'DBText8'
        DataField = 'ASOID'
        DataPipeline = ppdbreportes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        DataPipelineName = 'ppdbreportes'
        mmHeight = 3440
        mmLeft = 1852
        mmTop = 0
        mmWidth = 2381
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'ANOMES'
        DataPipeline = ppdbreportes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbreportes'
        mmHeight = 3175
        mmLeft = 161661
        mmTop = 0
        mmWidth = 12965
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 9260
      mmPrintPosition = 0
      object ppShape8: TppShape
        UserName = 'Shape8'
        mmHeight = 4763
        mmLeft = 80169
        mmTop = 0
        mmWidth = 112713
        BandType = 7
      end
      object pplimppordet: TppLabel
        UserName = 'Label25'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 5292
        mmTop = 6085
        mmWidth = 66940
        BandType = 7
      end
      object ppLine5: TppLine
        UserName = 'Line11'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 5027
        mmTop = 5292
        mmWidth = 187590
        BandType = 7
      end
      object ppLabel44: TppLabel
        UserName = 'Label51'
        Caption = 'TOTAL GENERAL :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 81227
        mmTop = 528
        mmWidth = 25400
        BandType = 7
      end
      object ppDBCalc11: TppDBCalc
        UserName = 'DBCalc11'
        DataField = 'TRANSMTO'
        DataPipeline = ppdbreportes
        DisplayFormat = '#,0.00; -#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbreportes'
        mmHeight = 3440
        mmLeft = 175948
        mmTop = 528
        mmWidth = 15611
        BandType = 7
      end
      object ppDBCalc18: TppDBCalc
        UserName = 'DBCalc18'
        DataField = 'TRANSMTO'
        DataPipeline = ppdbreportes
        DisplayFormat = '#,0; -#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppdbreportes'
        mmHeight = 3440
        mmLeft = 163248
        mmTop = 528
        mmWidth = 9525
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'ppDBText16'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 3969
        mmPrintPosition = 0
        object ppDBText16: TppDBText
          UserName = 'dbtforpagoid'
          DataField = 'FORPAGOID'
          DataPipeline = ppdbreportes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3440
          mmLeft = 4763
          mmTop = 0
          mmWidth = 7144
          BandType = 3
          GroupNo = 0
        end
        object ppDBText18: TppDBText
          UserName = 'DBText22'
          DataField = 'FORPAGODES'
          DataPipeline = ppdbreportes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3440
          mmLeft = 13229
          mmTop = 0
          mmWidth = 92604
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 4234
        mmPrintPosition = 0
        object ppLine11: TppLine
          UserName = 'Line101'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 71438
          mmTop = 0
          mmWidth = 119855
          BandType = 5
          GroupNo = 0
        end
        object ppDBText54: TppDBText
          UserName = 'DBText54'
          DataField = 'FORPAGODES'
          DataPipeline = ppdbreportes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3440
          mmLeft = 71438
          mmTop = 528
          mmWidth = 82815
          BandType = 5
          GroupNo = 0
        end
        object ppLabel48: TppLabel
          UserName = 'Label48'
          Caption = 'TOTAL FORMA DE PAGO :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 29104
          mmTop = 528
          mmWidth = 35983
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc10: TppDBCalc
          UserName = 'DBCalc10'
          DataField = 'TRANSMTO'
          DataPipeline = ppdbreportes
          DisplayFormat = '#,0.00; -#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3440
          mmLeft = 175948
          mmTop = 528
          mmWidth = 15611
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc17: TppDBCalc
          UserName = 'DBCalc17'
          DataField = 'TRANSMTO'
          DataPipeline = ppdbreportes
          DisplayFormat = '#,0; -#,0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3440
          mmLeft = 163248
          mmTop = 528
          mmWidth = 9525
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'ppDBText20'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 3970
        mmPrintPosition = 0
        object ppDBText20: TppDBText
          UserName = 'dbtdptoid'
          DataField = 'DPTOID'
          DataPipeline = ppdbreportes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3440
          mmLeft = 4498
          mmTop = 0
          mmWidth = 7144
          BandType = 3
          GroupNo = 1
        end
        object ppDBText21: TppDBText
          UserName = 'dbtdptoid1'
          DataField = 'DPTODES'
          DataPipeline = ppdbreportes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3440
          mmLeft = 12965
          mmTop = 0
          mmWidth = 92604
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 4234
        mmPrintPosition = 0
        object ppLine10: TppLine
          UserName = 'Line10'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 71438
          mmTop = 0
          mmWidth = 119855
          BandType = 5
          GroupNo = 1
        end
        object ppLabel47: TppLabel
          UserName = 'Label47'
          Caption = 'TOTAL DEPARTAMENTO : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 29104
          mmTop = 528
          mmWidth = 36248
          BandType = 5
          GroupNo = 1
        end
        object ppDBText52: TppDBText
          UserName = 'DBText52'
          DataField = 'DPTODES'
          DataPipeline = ppdbreportes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3440
          mmLeft = 71438
          mmTop = 528
          mmWidth = 82815
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc9: TppDBCalc
          UserName = 'DBCalc9'
          DataField = 'TRANSMTO'
          DataPipeline = ppdbreportes
          DisplayFormat = '#,0.00; -#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3440
          mmLeft = 175948
          mmTop = 528
          mmWidth = 15611
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc16: TppDBCalc
          UserName = 'DBCalc16'
          DataField = 'TRANSMTO'
          DataPipeline = ppdbreportes
          DisplayFormat = '#,0; -#,0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3440
          mmLeft = 163248
          mmTop = 528
          mmWidth = 9525
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'ppDBText23'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand3: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 3970
        mmPrintPosition = 0
        object ppDBText23: TppDBText
          UserName = 'dbtuproid'
          DataField = 'UPROID'
          DataPipeline = ppdbreportes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3440
          mmLeft = 5027
          mmTop = 0
          mmWidth = 7144
          BandType = 3
          GroupNo = 2
        end
        object ppDBText24: TppDBText
          UserName = 'dbtuproid1'
          DataField = 'UPRONOM'
          DataPipeline = ppdbreportes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3440
          mmLeft = 13494
          mmTop = 0
          mmWidth = 92604
          BandType = 3
          GroupNo = 2
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 4234
        mmPrintPosition = 0
        object ppLine9: TppLine
          UserName = 'Line9'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 71438
          mmTop = 0
          mmWidth = 119855
          BandType = 5
          GroupNo = 2
        end
        object ppLabel46: TppLabel
          UserName = 'Label46'
          Caption = 'TOTAL UNIDAD DE PROCESO :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 29104
          mmTop = 528
          mmWidth = 41804
          BandType = 5
          GroupNo = 2
        end
        object ppDBText25: TppDBText
          UserName = 'DBText10'
          DataField = 'UPRONOM'
          DataPipeline = ppdbreportes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3440
          mmLeft = 71438
          mmTop = 528
          mmWidth = 82815
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc8: TppDBCalc
          UserName = 'DBCalc8'
          DataField = 'TRANSMTO'
          DataPipeline = ppdbreportes
          DisplayFormat = '#,0.00; -#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3440
          mmLeft = 175948
          mmTop = 528
          mmWidth = 15611
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc15: TppDBCalc
          UserName = 'DBCalc15'
          DataField = 'TRANSMTO'
          DataPipeline = ppdbreportes
          DisplayFormat = '#,0; -#,0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3440
          mmLeft = 163248
          mmTop = 528
          mmWidth = 9525
          BandType = 5
          GroupNo = 2
        end
      end
    end
    object ppGroup4: TppGroup
      BreakName = 'ppDBText26'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group4'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand4: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 3970
        mmPrintPosition = 0
        object ppDBText26: TppDBText
          UserName = 'dbtupagoid'
          DataField = 'UPAGOID'
          DataPipeline = ppdbreportes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3440
          mmLeft = 4763
          mmTop = 0
          mmWidth = 7144
          BandType = 3
          GroupNo = 3
        end
        object ppDBText40: TppDBText
          UserName = 'DBText25'
          DataField = 'UPAGONOM'
          DataPipeline = ppdbreportes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3440
          mmLeft = 13229
          mmTop = 0
          mmWidth = 92604
          BandType = 3
          GroupNo = 3
        end
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 4234
        mmPrintPosition = 0
        object ppLine8: TppLine
          UserName = 'Line8'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 71438
          mmTop = 0
          mmWidth = 119855
          BandType = 5
          GroupNo = 3
        end
        object ppLabel45: TppLabel
          UserName = 'Label45'
          Caption = 'TOTAL UNIDAD DE PAGO : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 29104
          mmTop = 528
          mmWidth = 37306
          BandType = 5
          GroupNo = 3
        end
        object ppDBText49: TppDBText
          UserName = 'DBText49'
          DataField = 'UPAGONOM'
          DataPipeline = ppdbreportes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3440
          mmLeft = 71438
          mmTop = 528
          mmWidth = 82815
          BandType = 5
          GroupNo = 3
        end
        object ppDBCalc6: TppDBCalc
          UserName = 'DBCalc6'
          DataField = 'TRANSMTO'
          DataPipeline = ppdbreportes
          DisplayFormat = '#,0.00; -#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3440
          mmLeft = 175948
          mmTop = 528
          mmWidth = 15611
          BandType = 5
          GroupNo = 3
        end
        object ppDBCalc14: TppDBCalc
          UserName = 'DBCalc14'
          DataField = 'TRANSMTO'
          DataPipeline = ppdbreportes
          DisplayFormat = '#,0; -#,0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3440
          mmLeft = 163248
          mmTop = 528
          mmWidth = 9525
          BandType = 5
          GroupNo = 3
        end
      end
    end
    object ppGroup5: TppGroup
      BreakName = 'ppDBText50'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group5'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand5: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 3970
        mmPrintPosition = 0
        object ppDBText50: TppDBText
          UserName = 'dbtuseid'
          DataField = 'USEID'
          DataPipeline = ppdbreportes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3440
          mmLeft = 4763
          mmTop = 0
          mmWidth = 7144
          BandType = 3
          GroupNo = 4
        end
        object ppDBText51: TppDBText
          UserName = 'DBText26'
          DataField = 'USENOM'
          DataPipeline = ppdbreportes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3440
          mmLeft = 13229
          mmTop = 0
          mmWidth = 92604
          BandType = 3
          GroupNo = 4
        end
      end
      object ppGroupFooterBand5: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 4234
        mmPrintPosition = 0
        object ppLine7: TppLine
          UserName = 'Line7'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 71438
          mmTop = 0
          mmWidth = 119855
          BandType = 5
          GroupNo = 4
        end
        object ppLabel2: TppLabel
          UserName = 'Label2'
          Caption = 'TOTAL UNIDAD DE GESTION :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 29104
          mmTop = 528
          mmWidth = 40217
          BandType = 5
          GroupNo = 4
        end
        object ppDBText22: TppDBText
          UserName = 'DBText9'
          DataField = 'USENOM'
          DataPipeline = ppdbreportes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3440
          mmLeft = 71438
          mmTop = 528
          mmWidth = 82815
          BandType = 5
          GroupNo = 4
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          DataField = 'TRANSMTO'
          DataPipeline = ppdbreportes
          DisplayFormat = '#,0.00; -#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3440
          mmLeft = 175948
          mmTop = 528
          mmWidth = 15611
          BandType = 5
          GroupNo = 4
        end
        object ppDBCalc13: TppDBCalc
          UserName = 'DBCalc13'
          DataField = 'TRANSMTO'
          DataPipeline = ppdbreportes
          DisplayFormat = '#,0; -#,0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3440
          mmLeft = 163248
          mmTop = 528
          mmWidth = 9525
          BandType = 5
          GroupNo = 4
        end
      end
    end
    object ppGroup17: TppGroup
      BreakName = 'ppDBText53'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group17'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand17: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand17: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 4233
        mmPrintPosition = 0
        object ppLabel43: TppLabel
          UserName = 'Label43'
          Caption = 'TOTAL ASOCIADO :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 29104
          mmTop = 528
          mmWidth = 27781
          BandType = 5
          GroupNo = 5
        end
        object ppLine6: TppLine
          UserName = 'Line6'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 71438
          mmTop = 0
          mmWidth = 119855
          BandType = 5
          GroupNo = 5
        end
        object ppDBText19: TppDBText
          UserName = 'DBText19'
          DataField = 'ASOAPENOMDNI'
          DataPipeline = ppdbreportes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3440
          mmLeft = 71438
          mmTop = 528
          mmWidth = 82815
          BandType = 5
          GroupNo = 5
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'TRANSMTO'
          DataPipeline = ppdbreportes
          DisplayFormat = '#,0.00; -#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup17
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3440
          mmLeft = 175948
          mmTop = 528
          mmWidth = 15611
          BandType = 5
          GroupNo = 5
        end
        object ppDBCalc12: TppDBCalc
          UserName = 'DBCalc12'
          DataField = 'TRANSMTO'
          DataPipeline = ppdbreportes
          DisplayFormat = '#,0; -#,0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup17
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3440
          mmLeft = 163248
          mmTop = 528
          mmWidth = 9525
          BandType = 5
          GroupNo = 5
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object pprresumen: TppReport
    AutoStop = False
    DataPipeline = ppdbreportes
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter 8 1/2 x 11 in'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 119
    Template.FileName = 'C:\Documents and Settings\irevilla\Escritorio\resumen.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 448
    Top = 376
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbreportes'
    object ppHeaderBand4: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 37835
      mmPrintPosition = 0
      object ppShape9: TppShape
        UserName = 'Shape3'
        mmHeight = 12435
        mmLeft = 22225
        mmTop = 25135
        mmWidth = 75405
        BandType = 0
      end
      object ppShape16: TppShape
        UserName = 'Shape2'
        mmHeight = 12435
        mmLeft = 3969
        mmTop = 25135
        mmWidth = 18522
        BandType = 0
      end
      object ppltitulores: TppLabel
        UserName = 'lblTitulo'
        Caption = 'PAGO DE APORTES EFECTUADOS DEL 01/12/2005 AL 31/12/2005'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 46302
        mmTop = 10848
        mmWidth = 99484
        BandType = 0
      end
      object ppLabel55: TppLabel
        UserName = 'Label11'
        Caption = 'Derrama Magisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 3969
        mmTop = 0
        mmWidth = 25400
        BandType = 0
      end
      object ppLabel56: TppLabel
        UserName = 'Label19'
        Caption = 'Equipo de Cobranzas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 3969
        mmTop = 2910
        mmWidth = 27252
        BandType = 0
      end
      object ppLabel57: TppLabel
        UserName = 'Label201'
        Caption = 'Fecha :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 161396
        mmTop = 0
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel58: TppLabel
        UserName = 'Label9'
        Caption = 'Hora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 161396
        mmTop = 2910
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel59: TppLabel
        UserName = 'Label22'
        Caption = 'Pagina:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 161396
        mmTop = 5821
        mmWidth = 9525
        BandType = 0
      end
      object ppSystemVariable10: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 174096
        mmTop = 0
        mmWidth = 14023
        BandType = 0
      end
      object ppSystemVariable11: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 174096
        mmTop = 2910
        mmWidth = 17463
        BandType = 0
      end
      object ppSystemVariable12: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 174096
        mmTop = 5821
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel60: TppLabel
        UserName = 'Label41'
        Caption = '(RESUMEN)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 87181
        mmTop = 15081
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel61: TppLabel
        UserName = 'Label20'
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 4763
        mmTop = 26723
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel62: TppLabel
        UserName = 'Label36'
        Caption = 'Modular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 4763
        mmTop = 30427
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label54'
        Caption = 'Nombres y Apellidos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 23019
        mmTop = 26723
        mmWidth = 33602
        BandType = 0
      end
      object ppShape17: TppShape
        UserName = 'Shape1'
        mmHeight = 12435
        mmLeft = 97367
        mmTop = 25135
        mmWidth = 21431
        BandType = 0
      end
      object ppShape18: TppShape
        UserName = 'Shape4'
        mmHeight = 12435
        mmLeft = 118534
        mmTop = 25135
        mmWidth = 20638
        BandType = 0
      end
      object ppShape19: TppShape
        UserName = 'Shape5'
        mmHeight = 12435
        mmLeft = 138907
        mmTop = 25135
        mmWidth = 22225
        BandType = 0
      end
      object ppShape20: TppShape
        UserName = 'Shape6'
        mmHeight = 12435
        mmLeft = 160867
        mmTop = 25135
        mmWidth = 14552
        BandType = 0
      end
      object ppShape21: TppShape
        UserName = 'Shape7'
        mmHeight = 12435
        mmLeft = 175155
        mmTop = 25135
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel64: TppLabel
        UserName = 'Label1'
        Caption = 'N'#250'mero de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 98161
        mmTop = 26723
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel65: TppLabel
        UserName = 'Label16'
        Caption = 'Operaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 98161
        mmTop = 30427
        mmWidth = 16140
        BandType = 0
      end
      object ppLabel66: TppLabel
        UserName = 'Label21'
        Caption = 'Fecha de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 119327
        mmTop = 26723
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel67: TppLabel
        UserName = 'Label23'
        Caption = 'Operaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 119327
        mmTop = 30427
        mmWidth = 16140
        BandType = 0
      end
      object ppLabel68: TppLabel
        UserName = 'Label24'
        Caption = 'Usuario que'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 139965
        mmTop = 26723
        mmWidth = 18785
        BandType = 0
      end
      object ppLabel69: TppLabel
        UserName = 'Label28'
        Caption = 'Registro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 139965
        mmTop = 30427
        mmWidth = 13494
        BandType = 0
      end
      object ppLabel70: TppLabel
        UserName = 'Label37'
        Caption = 'Cant.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 161661
        mmTop = 26723
        mmWidth = 8202
        BandType = 0
      end
      object ppLabel71: TppLabel
        UserName = 'Label38'
        Caption = 'de Reg.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 161661
        mmTop = 30427
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel72: TppLabel
        UserName = 'Label39'
        Caption = 'Monto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 176213
        mmTop = 26723
        mmWidth = 10848
        BandType = 0
      end
      object ppLabel73: TppLabel
        UserName = 'Label52'
        Caption = 'de Aporte'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 176213
        mmTop = 30427
        mmWidth = 15610
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText27: TppDBText
        UserName = 'DBText1'
        DataField = 'ASOCODMOD'
        DataPipeline = ppdbreportes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbreportes'
        mmHeight = 3175
        mmLeft = 4763
        mmTop = 0
        mmWidth = 16933
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText2'
        DataField = 'ASOAPENOMDNI'
        DataPipeline = ppdbreportes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbreportes'
        mmHeight = 3175
        mmLeft = 23019
        mmTop = 0
        mmWidth = 73819
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText3'
        DataField = 'TRANSNOPE'
        DataPipeline = ppdbreportes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbreportes'
        mmHeight = 3175
        mmLeft = 98161
        mmTop = 0
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText4'
        DataField = 'TRANSFOPE'
        DataPipeline = ppdbreportes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbreportes'
        mmHeight = 3175
        mmLeft = 119327
        mmTop = 0
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText5'
        DataField = 'USUARIO'
        DataPipeline = ppdbreportes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbreportes'
        mmHeight = 3175
        mmLeft = 139700
        mmTop = 0
        mmWidth = 20638
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'DBText6'
        DataField = 'TRANSMTO'
        DataPipeline = ppdbreportes
        DisplayFormat = '#,0.00; -#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbreportes'
        mmHeight = 3175
        mmLeft = 175949
        mmTop = 0
        mmWidth = 15611
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText7'
        DataField = 'CANTIDAD'
        DataPipeline = ppdbreportes
        DisplayFormat = '#,0; -#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbreportes'
        mmHeight = 3260
        mmLeft = 161661
        mmTop = 0
        mmWidth = 12964
        BandType = 4
      end
    end
    object ppSummaryBand4: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 8996
      mmPrintPosition = 0
      object ppShape22: TppShape
        UserName = 'Shape8'
        mmHeight = 4233
        mmLeft = 79904
        mmTop = 0
        mmWidth = 112713
        BandType = 7
      end
      object pplimpresoporres: TppLabel
        UserName = 'Label25'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 5027
        mmTop = 5821
        mmWidth = 66940
        BandType = 7
      end
      object ppLabel75: TppLabel
        UserName = 'Label51'
        Caption = 'TOTAL GENERAL :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 80698
        mmTop = 528
        mmWidth = 25400
        BandType = 7
      end
      object ppLine12: TppLine
        UserName = 'Line11'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 4763
        mmTop = 4763
        mmWidth = 187590
        BandType = 7
      end
      object ppDBCalc29: TppDBCalc
        UserName = 'DBCalc29'
        DataField = 'TRANSMTO'
        DataPipeline = ppdbreportes
        DisplayFormat = '#,0.00; -#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbreportes'
        mmHeight = 3175
        mmLeft = 175948
        mmTop = 528
        mmWidth = 15610
        BandType = 7
      end
      object ppDBCalc30: TppDBCalc
        UserName = 'DBCalc30'
        DataField = 'CANTIDAD'
        DataPipeline = ppdbreportes
        DisplayFormat = '#,0; -#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbreportes'
        mmHeight = 3175
        mmLeft = 161661
        mmTop = 528
        mmWidth = 12965
        BandType = 7
      end
    end
    object ppGroup7: TppGroup
      BreakName = 'ppDBText36'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group7'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand7: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 3969
        mmPrintPosition = 0
        object ppDBText36: TppDBText
          UserName = 'dbtforpagoid'
          DataField = 'FORPAGOID'
          DataPipeline = ppdbreportes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3440
          mmLeft = 3969
          mmTop = 0
          mmWidth = 7144
          BandType = 3
          GroupNo = 0
        end
        object ppDBText35: TppDBText
          UserName = 'DBText22'
          DataField = 'FORPAGODES'
          DataPipeline = ppdbreportes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3439
          mmLeft = 11906
          mmTop = 0
          mmWidth = 92604
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand7: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 4234
        mmPrintPosition = 0
        object ppDBCalc27: TppDBCalc
          UserName = 'DBCalc27'
          DataField = 'CANTIDAD'
          DataPipeline = ppdbreportes
          DisplayFormat = '#,0; -#,0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3175
          mmLeft = 161661
          mmTop = 528
          mmWidth = 12965
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc28: TppDBCalc
          UserName = 'DBCalc28'
          DataField = 'TRANSMTO'
          DataPipeline = ppdbreportes
          DisplayFormat = '#,0.00; -#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3175
          mmLeft = 175948
          mmTop = 528
          mmWidth = 15610
          BandType = 5
          GroupNo = 0
        end
        object ppLine17: TppLine
          UserName = 'Line17'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 80698
          mmTop = 0
          mmWidth = 110861
          BandType = 5
          GroupNo = 0
        end
        object ppLabel80: TppLabel
          UserName = 'Label80'
          Caption = 'FORMA DE PAGO :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 23019
          mmTop = 529
          mmWidth = 25929
          BandType = 5
          GroupNo = 0
        end
        object ppDBText46: TppDBText
          UserName = 'DBText46'
          DataField = 'FORPAGODES'
          DataPipeline = ppdbreportes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3440
          mmLeft = 80698
          mmTop = 528
          mmWidth = 73290
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup8: TppGroup
      BreakName = 'ppDBText38'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group8'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand8: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 3970
        mmPrintPosition = 0
        object ppDBText38: TppDBText
          UserName = 'dbtdptoid'
          DataField = 'DPTOID'
          DataPipeline = ppdbreportes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3440
          mmLeft = 3969
          mmTop = 0
          mmWidth = 7144
          BandType = 3
          GroupNo = 1
        end
        object ppDBText39: TppDBText
          UserName = 'dbtdptoid1'
          DataField = 'DPTODES'
          DataPipeline = ppdbreportes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3440
          mmLeft = 11906
          mmTop = 0
          mmWidth = 92604
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand8: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 4234
        mmPrintPosition = 0
        object ppDBCalc25: TppDBCalc
          UserName = 'DBCalc25'
          DataField = 'TRANSMTO'
          DataPipeline = ppdbreportes
          DisplayFormat = '#,0.00; -#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup8
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3175
          mmLeft = 175948
          mmTop = 528
          mmWidth = 15610
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc26: TppDBCalc
          UserName = 'DBCalc26'
          DataField = 'CANTIDAD'
          DataPipeline = ppdbreportes
          DisplayFormat = '#,0; -#,0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup8
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3175
          mmLeft = 161661
          mmTop = 528
          mmWidth = 12965
          BandType = 5
          GroupNo = 1
        end
        object ppLine16: TppLine
          UserName = 'Line16'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 80698
          mmTop = 0
          mmWidth = 110861
          BandType = 5
          GroupNo = 1
        end
        object ppLabel79: TppLabel
          UserName = 'Label79'
          Caption = 'DEPARTAMENTO :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 23019
          mmTop = 529
          mmWidth = 25400
          BandType = 5
          GroupNo = 1
        end
        object ppDBText43: TppDBText
          UserName = 'DBText43'
          DataField = 'DPTODES'
          DataPipeline = ppdbreportes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3440
          mmLeft = 80698
          mmTop = 529
          mmWidth = 73290
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup9: TppGroup
      BreakName = 'ppDBText41'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group9'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand9: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 3970
        mmPrintPosition = 0
        object ppDBText41: TppDBText
          UserName = 'dbtuproid'
          DataField = 'UPROID'
          DataPipeline = ppdbreportes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3440
          mmLeft = 3969
          mmTop = 0
          mmWidth = 7144
          BandType = 3
          GroupNo = 2
        end
        object ppDBText42: TppDBText
          UserName = 'dbtuproid1'
          DataField = 'UPRONOM'
          DataPipeline = ppdbreportes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3440
          mmLeft = 11906
          mmTop = 0
          mmWidth = 92604
          BandType = 3
          GroupNo = 2
        end
      end
      object ppGroupFooterBand9: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 4234
        mmPrintPosition = 0
        object ppDBCalc23: TppDBCalc
          UserName = 'DBCalc23'
          DataField = 'CANTIDAD'
          DataPipeline = ppdbreportes
          DisplayFormat = '#,0; -#,0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup9
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3175
          mmLeft = 161661
          mmTop = 528
          mmWidth = 12965
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc24: TppDBCalc
          UserName = 'DBCalc24'
          DataField = 'TRANSMTO'
          DataPipeline = ppdbreportes
          DisplayFormat = '#,0.00; -#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup9
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3175
          mmLeft = 175948
          mmTop = 528
          mmWidth = 15610
          BandType = 5
          GroupNo = 2
        end
        object ppLine15: TppLine
          UserName = 'Line15'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 80698
          mmTop = 0
          mmWidth = 110861
          BandType = 5
          GroupNo = 2
        end
        object ppLabel78: TppLabel
          UserName = 'Label78'
          Caption = 'UNIDAD DE PROCESO :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 23019
          mmTop = 529
          mmWidth = 30956
          BandType = 5
          GroupNo = 2
        end
        object ppDBText37: TppDBText
          UserName = 'DBText37'
          DataField = 'UPRONOM'
          DataPipeline = ppdbreportes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3440
          mmLeft = 80698
          mmTop = 529
          mmWidth = 73290
          BandType = 5
          GroupNo = 2
        end
      end
    end
    object ppGroup10: TppGroup
      BreakName = 'ppDBText44'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group10'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand10: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 3970
        mmPrintPosition = 0
        object ppDBText44: TppDBText
          UserName = 'dbtupagoid'
          DataField = 'UPAGOID'
          DataPipeline = ppdbreportes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3440
          mmLeft = 3969
          mmTop = 0
          mmWidth = 7144
          BandType = 3
          GroupNo = 3
        end
        object ppDBText45: TppDBText
          UserName = 'DBText25'
          DataField = 'UPAGONOM'
          DataPipeline = ppdbreportes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3440
          mmLeft = 11906
          mmTop = 0
          mmWidth = 92604
          BandType = 3
          GroupNo = 3
        end
      end
      object ppGroupFooterBand10: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 4234
        mmPrintPosition = 0
        object ppDBCalc21: TppDBCalc
          UserName = 'DBCalc21'
          DataField = 'CANTIDAD'
          DataPipeline = ppdbreportes
          DisplayFormat = '#,0; -#,0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup10
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3175
          mmLeft = 161661
          mmTop = 528
          mmWidth = 12965
          BandType = 5
          GroupNo = 3
        end
        object ppDBCalc22: TppDBCalc
          UserName = 'DBCalc22'
          DataField = 'TRANSMTO'
          DataPipeline = ppdbreportes
          DisplayFormat = '#,0.00; -#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup10
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3175
          mmLeft = 175948
          mmTop = 528
          mmWidth = 15610
          BandType = 5
          GroupNo = 3
        end
        object ppLine14: TppLine
          UserName = 'Line14'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 80698
          mmTop = 0
          mmWidth = 110861
          BandType = 5
          GroupNo = 3
        end
        object ppDBText34: TppDBText
          UserName = 'DBText34'
          DataField = 'UPAGONOM'
          DataPipeline = ppdbreportes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3440
          mmLeft = 80698
          mmTop = 529
          mmWidth = 73289
          BandType = 5
          GroupNo = 3
        end
        object ppLabel77: TppLabel
          UserName = 'Label77'
          Caption = 'TOTAL APORTES UNIDAD DE PAGO : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 23019
          mmTop = 529
          mmWidth = 51594
          BandType = 5
          GroupNo = 3
        end
      end
    end
    object ppGroup11: TppGroup
      BreakName = 'ppDBText47'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group11'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand11: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 3970
        mmPrintPosition = 0
        object ppDBText47: TppDBText
          UserName = 'dbtuseid'
          DataField = 'USEID'
          DataPipeline = ppdbreportes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3440
          mmLeft = 3969
          mmTop = 0
          mmWidth = 7144
          BandType = 3
          GroupNo = 4
        end
        object ppDBText48: TppDBText
          UserName = 'DBText26'
          DataField = 'USENOM'
          DataPipeline = ppdbreportes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3440
          mmLeft = 11906
          mmTop = 0
          mmWidth = 92604
          BandType = 3
          GroupNo = 4
        end
      end
      object ppGroupFooterBand11: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 4233
        mmPrintPosition = 0
        object ppDBCalc19: TppDBCalc
          UserName = 'DBCalc19'
          DataField = 'CANTIDAD'
          DataPipeline = ppdbreportes
          DisplayFormat = '#,0; -#,0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup11
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3175
          mmLeft = 161661
          mmTop = 528
          mmWidth = 12965
          BandType = 5
          GroupNo = 4
        end
        object ppDBCalc20: TppDBCalc
          UserName = 'DBCalc20'
          DataField = 'TRANSMTO'
          DataPipeline = ppdbreportes
          DisplayFormat = '#,0.00; -#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup11
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3175
          mmLeft = 175948
          mmTop = 528
          mmWidth = 15610
          BandType = 5
          GroupNo = 4
        end
        object ppLine13: TppLine
          UserName = 'Line13'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 80698
          mmTop = 0
          mmWidth = 110861
          BandType = 5
          GroupNo = 4
        end
        object ppLabel76: TppLabel
          UserName = 'Label76'
          Caption = 'TOTAL APORTES UGEL :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 23019
          mmTop = 529
          mmWidth = 34131
          BandType = 5
          GroupNo = 4
        end
        object ppDBText17: TppDBText
          UserName = 'DBText17'
          DataField = 'USENOM'
          DataPipeline = ppdbreportes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbreportes'
          mmHeight = 3440
          mmLeft = 80698
          mmTop = 529
          mmWidth = 73289
          BandType = 5
          GroupNo = 4
        end
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
end
