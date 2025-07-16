object Fapoefe: TFapoefe
  Left = 51
  Top = 189
  BorderStyle = bsDialog
  Caption = 'Aportes por forma de pago'
  ClientHeight = 418
  ClientWidth = 709
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object gbselran: TGroupBox
    Left = 5
    Top = 4
    Width = 252
    Height = 140
    Caption = 'Seleccione Rango de Fechas'
    TabOrder = 0
    object Label1: TLabel
      Left = 9
      Top = 21
      Width = 66
      Height = 13
      Caption = 'Fecha Inicial :'
    end
    object Label2: TLabel
      Left = 9
      Top = 45
      Width = 61
      Height = 13
      Caption = 'Fecha Final :'
    end
    object dbdtpFechaI: TwwDBDateTimePicker
      Left = 98
      Top = 17
      Width = 88
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ShowButton = True
      TabOrder = 0
    end
    object dbdtpFechaF: TwwDBDateTimePicker
      Left = 98
      Top = 41
      Width = 88
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ShowButton = True
      TabOrder = 1
    end
    object rgSeleccion: TRadioGroup
      Left = 7
      Top = 65
      Width = 106
      Height = 69
      Caption = ' Selecci'#243'n '
      ItemIndex = 0
      Items.Strings = (
        'Detallado'
        'Resumido'
        'Estadistico')
      TabOrder = 2
      OnClick = rgSeleccionClick
    end
    object rgestadistico: TRadioGroup
      Left = 120
      Top = 65
      Width = 107
      Height = 58
      Caption = ' Estadistico '
      Items.Strings = (
        'Forma de pago'
        'Departamento')
      TabOrder = 3
    end
  end
  object gbparsel: TGroupBox
    Left = 262
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
  object wwDBGrid1: TwwDBGrid
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
    TabOrder = 2
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
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
  object pprreporte03: TppReport
    AutoStop = False
    DataPipeline = ppdbreportes
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
  object pprreporte04: TppReport
    AutoStop = False
    DataPipeline = ppdbreportes
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
end
