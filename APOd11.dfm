object FControlReclamos: TFControlReclamos
  Left = 22
  Top = 56
  BorderStyle = bsDialog
  Caption = 'Control de Reclamos'
  ClientHeight = 448
  ClientWidth = 736
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object gbselran: TGroupBox
    Left = 5
    Top = 3
    Width = 204
    Height = 148
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
      Top = 63
      Width = 129
      Height = 66
      ItemIndex = 0
      Items.Strings = (
        'Resumido'
        'Detallado'
        'Estadistico x Dpto.')
      TabOrder = 2
      OnClick = rgSeleccionClick
    end
  end
  object dbgprevio: TwwDBGrid
    Left = 7
    Top = 158
    Width = 721
    Height = 243
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
    TabOrder = 1
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
    Left = 582
    Top = 9
    Width = 79
    Height = 29
    Caption = 'Procesar'
    TabOrder = 2
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
  object gbparsel: TGroupBox
    Left = 214
    Top = 3
    Width = 361
    Height = 149
    Caption = ' Parametros de la selecci'#243'n '
    TabOrder = 3
    object Label3: TLabel
      Left = 10
      Top = 20
      Width = 39
      Height = 13
      Caption = 'Estado :'
    end
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
    object dblcdsitrec: TwwDBLookupComboDlg
      Left = 113
      Top = 17
      Width = 46
      Height = 21
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsReclSit
      LookupField = 'RECLSITID'
      MaxLength = 2
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcdsitrecChange
      OnExit = dblcdsitrecExit
    end
    object Panel1: TPanel
      Left = 166
      Top = 17
      Width = 185
      Height = 23
      Enabled = False
      TabOrder = 1
      object medessitrec: TMaskEdit
        Left = 1
        Top = 1
        Width = 182
        Height = 21
        TabOrder = 0
      end
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
      TabOrder = 2
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
      TabOrder = 3
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
      TabOrder = 4
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
      TabOrder = 5
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
      TabOrder = 6
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
      TabOrder = 7
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
      TabOrder = 8
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
      TabOrder = 9
      object medesuniges: TMaskEdit
        Left = 1
        Top = 1
        Width = 182
        Height = 21
        TabOrder = 0
      end
    end
  end
  object btnimprimir: TBitBtn
    Left = 563
    Top = 408
    Width = 79
    Height = 29
    Caption = 'Imprimir'
    TabOrder = 4
    OnClick = btnimprimirClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      0003377777777777777308888888888888807F33333333333337088888888888
      88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
      8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
      8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
  end
  object btncerrar: TBitBtn
    Left = 651
    Top = 408
    Width = 79
    Height = 29
    Caption = 'Cerrar'
    TabOrder = 5
    OnClick = btncerrarClick
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
  object ppbderep03: TppBDEPipeline
    DataSource = DM1.dsReporte
    UserName = 'bderep03'
    Left = 517
    Top = 408
  end
  object pprep03: TppReport
    AutoStop = False
    DataPipeline = ppbderep03
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
    Left = 525
    Top = 416
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppbderep03'
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 35719
      mmPrintPosition = 0
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 8997
        mmLeft = 119592
        mmTop = 26458
        mmWidth = 24606
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 8997
        mmLeft = 95250
        mmTop = 26458
        mmWidth = 24606
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 8997
        mmLeft = 29369
        mmTop = 26458
        mmWidth = 66146
        BandType = 0
      end
      object ppLabel58: TppLabel
        UserName = 'Label58'
        Caption = 'Descripci'#243'n del'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 30427
        mmTop = 27517
        mmWidth = 19389
        BandType = 0
      end
      object ppLabel59: TppLabel
        UserName = 'Label59'
        Caption = 'Cantidad'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 96044
        mmTop = 27517
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel60: TppLabel
        UserName = 'Label60'
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 120386
        mmTop = 27517
        mmWidth = 6350
        BandType = 0
      end
      object pplblTitulo: TppLabel
        UserName = 'lblTitulo'
        Caption = 'ESTADISTICA DE RECLAMOS DE APORTES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 54030
        mmTop = 12965
        mmWidth = 66844
        BandType = 0
      end
      object ppltitulo02: TppLabel
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
      object ppLabel61: TppLabel
        UserName = 'Label61'
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
      object ppLabel62: TppLabel
        UserName = 'Label62'
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
      object ppLabel63: TppLabel
        UserName = 'Label63'
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
      object ppLabel64: TppLabel
        UserName = 'Label64'
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
      object ppLabel65: TppLabel
        UserName = 'Label65'
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
        UserName = 'SystemVariable7'
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
        UserName = 'SystemVariable8'
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
        UserName = 'SystemVariable9'
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
      object ppLabel66: TppLabel
        UserName = 'Label66'
        Caption = 'departamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 30427
        mmTop = 30956
        mmWidth = 17484
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        DataField = 'DPTOID'
        DataPipeline = ppbderep03
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbderep03'
        mmHeight = 3175
        mmLeft = 30427
        mmTop = 0
        mmWidth = 4498
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        DataField = 'DPTODES'
        DataPipeline = ppbderep03
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbderep03'
        mmHeight = 3175
        mmLeft = 36248
        mmTop = 0
        mmWidth = 55827
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        DataField = 'CANRECL'
        DataPipeline = ppbderep03
        DisplayFormat = '#,0; -#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbderep03'
        mmHeight = 3175
        mmLeft = 96044
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        DataField = 'RECLMONTO'
        DataPipeline = ppbderep03
        DisplayFormat = '#,0.00; -#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbderep03'
        mmHeight = 3175
        mmLeft = 120386
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppSummaryBand3: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 9790
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 29369
        mmTop = 0
        mmWidth = 114829
        BandType = 7
      end
      object ppDBCalc13: TppDBCalc
        UserName = 'DBCalc13'
        DataField = 'CANRECL'
        DataPipeline = ppbderep03
        DisplayFormat = '#,0; -#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbderep03'
        mmHeight = 3175
        mmLeft = 96044
        mmTop = 794
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc14: TppDBCalc
        UserName = 'DBCalc14'
        DataField = 'RECLMONTO'
        DataPipeline = ppbderep03
        DisplayFormat = '#,0.00; -#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbderep03'
        mmHeight = 3175
        mmLeft = 120386
        mmTop = 794
        mmWidth = 17198
        BandType = 7
      end
      object ppLabel67: TppLabel
        UserName = 'Label67'
        Caption = 'Total :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 85461
        mmTop = 794
        mmWidth = 7938
        BandType = 7
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 29369
        mmTop = 5027
        mmWidth = 114829
        BandType = 7
      end
      object pplimpresopor: TppLabel
        UserName = 'limpresopor'
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
    end
  end
  object ppbderep02: TppBDEPipeline
    DataSource = DM1.dsReporte
    UserName = 'bdeprep02'
    Left = 472
    Top = 408
  end
  object pprep02: TppReport
    AutoStop = False
    DataPipeline = ppbderep02
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
    Template.FileName = 'C:\Documents and Settings\irevilla\Escritorio\HOLA.RTM'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 480
    Top = 416
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppbderep02'
    object ppHeaderBand4: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 30427
      mmPrintPosition = 0
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 8202
        mmLeft = 10319
        mmTop = 21960
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel68: TppLabel
        UserName = 'Label68'
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 10848
        mmTop = 22490
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel69: TppLabel
        UserName = 'Label69'
        Caption = 'Modular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 10848
        mmTop = 26194
        mmWidth = 12700
        BandType = 0
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 8202
        mmLeft = 27781
        mmTop = 21960
        mmWidth = 76729
        BandType = 0
      end
      object ppLabel70: TppLabel
        UserName = 'Label70'
        Caption = 'Apellidos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 28310
        mmTop = 22490
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel71: TppLabel
        UserName = 'Label71'
        Caption = 'y Nombres'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 28310
        mmTop = 26194
        mmWidth = 16669
        BandType = 0
      end
      object ppShape11: TppShape
        UserName = 'Shape11'
        mmHeight = 8202
        mmLeft = 104246
        mmTop = 21960
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel77: TppLabel
        UserName = 'Label77'
        Caption = 'Periodo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 104775
        mmTop = 22490
        mmWidth = 11906
        BandType = 0
      end
      object ppShape12: TppShape
        UserName = 'Shape12'
        mmHeight = 8202
        mmLeft = 118269
        mmTop = 21960
        mmWidth = 20109
        BandType = 0
      end
      object ppLabel78: TppLabel
        UserName = 'Label78'
        Caption = 'Fecha de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 118798
        mmTop = 22490
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel79: TppLabel
        UserName = 'Label79'
        Caption = 'Inicio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 118798
        mmTop = 26194
        mmWidth = 8202
        BandType = 0
      end
      object ppShape13: TppShape
        UserName = 'Shape13'
        mmHeight = 8202
        mmLeft = 157957
        mmTop = 21960
        mmWidth = 17463
        BandType = 0
      end
      object ppShape14: TppShape
        UserName = 'Shape14'
        mmHeight = 8202
        mmLeft = 175155
        mmTop = 21960
        mmWidth = 17463
        BandType = 0
      end
      object ppShape15: TppShape
        UserName = 'Shape15'
        mmHeight = 8202
        mmLeft = 138113
        mmTop = 21960
        mmWidth = 20108
        BandType = 0
      end
      object ppLabel80: TppLabel
        UserName = 'Label80'
        Caption = 'Monto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 158486
        mmTop = 22490
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel81: TppLabel
        UserName = 'Label801'
        Caption = 'Reclamado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 158486
        mmTop = 26194
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel82: TppLabel
        UserName = 'Label802'
        Caption = 'Monto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 175684
        mmTop = 22490
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel83: TppLabel
        UserName = 'Label83'
        Caption = 'Aceptado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 175684
        mmTop = 26194
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel84: TppLabel
        UserName = 'Label84'
        Caption = 'Fecha de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 138642
        mmTop = 22490
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel85: TppLabel
        UserName = 'Label85'
        Caption = 'Conclusi'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 138642
        mmTop = 26194
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel86: TppLabel
        UserName = 'lblTitulo1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 20108
        mmTop = 11377
        mmWidth = 141817
        BandType = 0
      end
      object ppLabel88: TppLabel
        UserName = 'Label88'
        Caption = 'DETALLADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 81227
        mmTop = 15346
        mmWidth = 19579
        BandType = 0
      end
      object ppLabel89: TppLabel
        UserName = 'Label89'
        Caption = 'Derrama Magisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 10319
        mmTop = 0
        mmWidth = 26458
        BandType = 0
      end
      object ppLabel90: TppLabel
        UserName = 'Label90'
        Caption = 'Equipo de Cobranzas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 10319
        mmTop = 3440
        mmWidth = 28046
        BandType = 0
      end
      object ppLabel91: TppLabel
        UserName = 'Label91'
        Caption = 'Fecha :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 162454
        mmTop = 0
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel92: TppLabel
        UserName = 'Label92'
        Caption = 'Hora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 162454
        mmTop = 3440
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel99: TppLabel
        UserName = 'Label99'
        Caption = 'Pagina:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 162454
        mmTop = 6879
        mmWidth = 9525
        BandType = 0
      end
      object ppSystemVariable10: TppSystemVariable
        UserName = 'SystemVariable10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 175155
        mmTop = 0
        mmWidth = 14023
        BandType = 0
      end
      object ppSystemVariable11: TppSystemVariable
        UserName = 'SystemVariable11'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 175155
        mmTop = 3440
        mmWidth = 17463
        BandType = 0
      end
      object ppSystemVariable12: TppSystemVariable
        UserName = 'SystemVariable12'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 175155
        mmTop = 6879
        mmWidth = 1588
        BandType = 0
      end
    end
    object ppDetailBand4: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object DBTASOAPENOMDNI: TppDBText
        UserName = 'DBTASOAPENOMDNI'
        DataField = 'ASOAPENOMDNI'
        DataPipeline = ppbderep02
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbderep02'
        mmHeight = 3175
        mmLeft = 28310
        mmTop = 0
        mmWidth = 75672
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'DBText32'
        DataField = 'ASOCODMOD'
        DataPipeline = ppbderep02
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppbderep02'
        mmHeight = 3175
        mmLeft = 10848
        mmTop = 0
        mmWidth = 16670
        BandType = 4
      end
      object ppDBText34: TppDBText
        UserName = 'DBTASOAPENOMDNI1'
        DataField = 'PERIODO'
        DataPipeline = ppbderep02
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbderep02'
        mmHeight = 3175
        mmLeft = 104775
        mmTop = 0
        mmWidth = 13229
        BandType = 4
      end
      object ppDBText35: TppDBText
        UserName = 'DBText35'
        DataField = 'RECLFINI'
        DataPipeline = ppbderep02
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbderep02'
        mmHeight = 3175
        mmLeft = 118798
        mmTop = 0
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText36: TppDBText
        UserName = 'DBText36'
        DataField = 'RECLMONTO'
        DataPipeline = ppbderep02
        DisplayFormat = '#,0.00; -#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbderep02'
        mmHeight = 3175
        mmLeft = 158486
        mmTop = 0
        mmWidth = 13494
        BandType = 4
      end
      object ppDBText37: TppDBText
        UserName = 'DBText37'
        DataField = 'DEVMONTO'
        DataPipeline = ppbderep02
        DisplayFormat = '#,0.00; -#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbderep02'
        mmHeight = 3175
        mmLeft = 175684
        mmTop = 0
        mmWidth = 13494
        BandType = 4
      end
      object ppDBText38: TppDBText
        UserName = 'DBText38'
        DataField = 'RECLFFIN'
        DataPipeline = ppbderep02
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbderep02'
        mmHeight = 3175
        mmLeft = 138642
        mmTop = 0
        mmWidth = 19050
        BandType = 4
      end
    end
    object ppSummaryBand4: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 9260
      mmPrintPosition = 0
      object ppShape16: TppShape
        UserName = 'Shape16'
        mmHeight = 4498
        mmLeft = 43656
        mmTop = 0
        mmWidth = 146843
        BandType = 7
      end
      object ppLabel87: TppLabel
        UserName = 'Label87'
        Caption = 'TOTAL GENERAL :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 44186
        mmTop = 529
        mmWidth = 25400
        BandType = 7
      end
      object ppDBCalc25: TppDBCalc
        UserName = 'DBCalc25'
        DataField = 'RECLMONTO'
        DataPipeline = ppbderep02
        DisplayFormat = '#,0.00; -#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbderep02'
        mmHeight = 3440
        mmLeft = 158486
        mmTop = 529
        mmWidth = 14023
        BandType = 7
      end
      object ppDBCalc26: TppDBCalc
        UserName = 'DBCalc26'
        DataField = 'DEVMONTO'
        DataPipeline = ppbderep02
        DisplayFormat = '#,0.00; -#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbderep02'
        mmHeight = 3175
        mmLeft = 175684
        mmTop = 529
        mmWidth = 13494
        BandType = 7
      end
      object ppLabel100: TppLabel
        UserName = 'limpresopor1'
        Caption = 'limpresopor1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 10848
        mmTop = 5821
        mmWidth = 52388
        BandType = 7
      end
    end
    object ppGroup16: TppGroup
      BreakName = 'DBTRECLSITID'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group16'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand16: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 3969
        mmPrintPosition = 0
        object DBTRECLSITID: TppDBText
          UserName = 'DBTRECLSITID'
          DataField = 'RECLSITID'
          DataPipeline = ppbderep02
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppbderep02'
          mmHeight = 3387
          mmLeft = 43656
          mmTop = 0
          mmWidth = 7408
          BandType = 3
          GroupNo = 0
        end
        object ppLabel93: TppLabel
          UserName = 'Label93'
          Caption = 'ESTADO :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 11377
          mmTop = 0
          mmWidth = 13420
          BandType = 3
          GroupNo = 0
        end
        object ppDBText55: TppDBText
          UserName = 'DBText55'
          DataField = 'RECLSITDES'
          DataPipeline = ppbderep02
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppbderep02'
          mmHeight = 3387
          mmLeft = 52388
          mmTop = 0
          mmWidth = 52388
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand16: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppShape10: TppShape
          UserName = 'Shape10'
          mmHeight = 4233
          mmLeft = 43656
          mmTop = 0
          mmWidth = 146843
          BandType = 5
          GroupNo = 0
        end
        object ppDBText31: TppDBText
          UserName = 'DBText31'
          DataField = 'RECLSITDES'
          DataPipeline = ppbderep02
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppbderep02'
          mmHeight = 3440
          mmLeft = 70379
          mmTop = 528
          mmWidth = 66675
          BandType = 5
          GroupNo = 0
        end
        object ppLabel76: TppLabel
          UserName = 'Label76'
          Caption = 'TOTAL ESTADO :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 44186
          mmTop = 529
          mmWidth = 24342
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc27: TppDBCalc
          UserName = 'DBCalc27'
          DataField = 'RECLMONTO'
          DataPipeline = ppbderep02
          DisplayFormat = '#,0.00; -#,0.00+'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup16
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbderep02'
          mmHeight = 3440
          mmLeft = 158486
          mmTop = 529
          mmWidth = 14023
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc28: TppDBCalc
          UserName = 'DBCalc28'
          DataField = 'DEVMONTO'
          DataPipeline = ppbderep02
          DisplayFormat = '#,0.00; -#,0.00+'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup16
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbderep02'
          mmHeight = 3440
          mmLeft = 175684
          mmTop = 529
          mmWidth = 13494
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup17: TppGroup
      BreakName = 'DBTDPTOID'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group17'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand17: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 3970
        mmPrintPosition = 0
        object DBTDPTOID: TppDBText
          UserName = 'DBTDPTOID'
          DataField = 'DPTOID'
          DataPipeline = ppbderep02
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppbderep02'
          mmHeight = 3387
          mmLeft = 43656
          mmTop = 0
          mmWidth = 7408
          BandType = 3
          GroupNo = 1
        end
        object ppDBText56: TppDBText
          UserName = 'DBText56'
          DataField = 'DPTODES'
          DataPipeline = ppbderep02
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppbderep02'
          mmHeight = 3387
          mmLeft = 52388
          mmTop = 0
          mmWidth = 52388
          BandType = 3
          GroupNo = 1
        end
        object ppLabel94: TppLabel
          UserName = 'Label94'
          Caption = 'DEPARTAMENTO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 11377
          mmTop = 0
          mmWidth = 24596
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand17: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppShape9: TppShape
          UserName = 'Shape9'
          mmHeight = 4233
          mmLeft = 43656
          mmTop = 0
          mmWidth = 146843
          BandType = 5
          GroupNo = 1
        end
        object ppLabel75: TppLabel
          UserName = 'Label75'
          Caption = 'TOTAL DEPARTAMENTO :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 44186
          mmTop = 529
          mmWidth = 36248
          BandType = 5
          GroupNo = 1
        end
        object ppDBText30: TppDBText
          UserName = 'DBText30'
          DataField = 'DPTODES'
          DataPipeline = ppbderep02
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppbderep02'
          mmHeight = 3440
          mmLeft = 82021
          mmTop = 528
          mmWidth = 55033
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc23: TppDBCalc
          UserName = 'DBCalc23'
          DataField = 'RECLMONTO'
          DataPipeline = ppbderep02
          DisplayFormat = '#,0.00; -#,0.00+'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup17
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbderep02'
          mmHeight = 3440
          mmLeft = 158486
          mmTop = 529
          mmWidth = 14023
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc24: TppDBCalc
          UserName = 'DBCalc24'
          DataField = 'DEVMONTO'
          DataPipeline = ppbderep02
          DisplayFormat = '#,0.00; -#,0.00+'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup17
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbderep02'
          mmHeight = 3440
          mmLeft = 175684
          mmTop = 529
          mmWidth = 13494
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup18: TppGroup
      BreakName = 'DBTUPROID'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group18'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand18: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 3970
        mmPrintPosition = 0
        object DBTUPROID: TppDBText
          UserName = 'DBTUPROID'
          DataField = 'UPROID'
          DataPipeline = ppbderep02
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppbderep02'
          mmHeight = 3387
          mmLeft = 43656
          mmTop = 0
          mmWidth = 7409
          BandType = 3
          GroupNo = 2
        end
        object ppDBText57: TppDBText
          UserName = 'DBText57'
          DataField = 'UPRONOM'
          DataPipeline = ppbderep02
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppbderep02'
          mmHeight = 3387
          mmLeft = 52388
          mmTop = 0
          mmWidth = 52388
          BandType = 3
          GroupNo = 2
        end
        object ppLabel95: TppLabel
          UserName = 'Label95'
          Caption = 'UNIDAD DE PROCESO :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 11377
          mmTop = 0
          mmWidth = 31221
          BandType = 3
          GroupNo = 2
        end
      end
      object ppGroupFooterBand18: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppShape8: TppShape
          UserName = 'Shape8'
          mmHeight = 4233
          mmLeft = 43656
          mmTop = 0
          mmWidth = 146843
          BandType = 5
          GroupNo = 2
        end
        object ppLabel74: TppLabel
          UserName = 'Label74'
          Caption = 'TOTAL UNIDAD DE PROCESO :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 44186
          mmTop = 529
          mmWidth = 42333
          BandType = 5
          GroupNo = 2
        end
        object ppDBText29: TppDBText
          UserName = 'DBText29'
          DataField = 'UPRONOM'
          DataPipeline = ppbderep02
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppbderep02'
          mmHeight = 3440
          mmLeft = 87577
          mmTop = 528
          mmWidth = 49477
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc21: TppDBCalc
          UserName = 'DBCalc21'
          DataField = 'RECLMONTO'
          DataPipeline = ppbderep02
          DisplayFormat = '#,0.00; -#,0.00+'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup18
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbderep02'
          mmHeight = 3440
          mmLeft = 158486
          mmTop = 529
          mmWidth = 14023
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc22: TppDBCalc
          UserName = 'DBCalc22'
          DataField = 'DEVMONTO'
          DataPipeline = ppbderep02
          DisplayFormat = '#,0.00; -#,0.00+'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup18
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbderep02'
          mmHeight = 3440
          mmLeft = 175684
          mmTop = 529
          mmWidth = 13494
          BandType = 5
          GroupNo = 2
        end
      end
    end
    object ppGroup19: TppGroup
      BreakName = 'DBTUPAGOID'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group19'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand19: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 3970
        mmPrintPosition = 0
        object DBTUPAGOID: TppDBText
          UserName = 'DBTUPAGOID'
          DataField = 'UPAGOID'
          DataPipeline = ppbderep02
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppbderep02'
          mmHeight = 3387
          mmLeft = 43656
          mmTop = 0
          mmWidth = 7409
          BandType = 3
          GroupNo = 3
        end
        object ppDBText58: TppDBText
          UserName = 'DBText58'
          DataField = 'UPAGONOM'
          DataPipeline = ppbderep02
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppbderep02'
          mmHeight = 3387
          mmLeft = 52388
          mmTop = 0
          mmWidth = 52388
          BandType = 3
          GroupNo = 3
        end
        object ppLabel96: TppLabel
          UserName = 'Label96'
          Caption = 'UNIDAD DE PAGO :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 11377
          mmTop = 0
          mmWidth = 26374
          BandType = 3
          GroupNo = 3
        end
      end
      object ppGroupFooterBand19: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppShape7: TppShape
          UserName = 'Shape7'
          mmHeight = 4234
          mmLeft = 43656
          mmTop = 0
          mmWidth = 146843
          BandType = 5
          GroupNo = 3
        end
        object ppLabel73: TppLabel
          UserName = 'Label73'
          Caption = 'TOTAL UNIDAD DE PAGO :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 44186
          mmTop = 529
          mmWidth = 37042
          BandType = 5
          GroupNo = 3
        end
        object ppDBText28: TppDBText
          UserName = 'DBText28'
          DataField = 'UPAGONOM'
          DataPipeline = ppbderep02
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppbderep02'
          mmHeight = 3440
          mmLeft = 82550
          mmTop = 528
          mmWidth = 54504
          BandType = 5
          GroupNo = 3
        end
        object ppDBCalc19: TppDBCalc
          UserName = 'DBCalc19'
          DataField = 'RECLMONTO'
          DataPipeline = ppbderep02
          DisplayFormat = '#,0.00; -#,0.00+'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup19
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbderep02'
          mmHeight = 3440
          mmLeft = 158486
          mmTop = 529
          mmWidth = 14023
          BandType = 5
          GroupNo = 3
        end
        object ppDBCalc20: TppDBCalc
          UserName = 'DBCalc20'
          DataField = 'DEVMONTO'
          DataPipeline = ppbderep02
          DisplayFormat = '#,0.00; -#,0.00+'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup19
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbderep02'
          mmHeight = 3440
          mmLeft = 175684
          mmTop = 529
          mmWidth = 13494
          BandType = 5
          GroupNo = 3
        end
      end
    end
    object ppGroup20: TppGroup
      BreakName = 'DBTUSEID'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group20'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand20: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 3970
        mmPrintPosition = 0
        object DBTUSEID: TppDBText
          UserName = 'DBText301'
          DataField = 'USEID'
          DataPipeline = ppbderep02
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppbderep02'
          mmHeight = 3387
          mmLeft = 43656
          mmTop = 0
          mmWidth = 7409
          BandType = 3
          GroupNo = 4
        end
        object ppDBText59: TppDBText
          UserName = 'DBText59'
          DataField = 'USENOM'
          DataPipeline = ppbderep02
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppbderep02'
          mmHeight = 3387
          mmLeft = 52388
          mmTop = 0
          mmWidth = 52388
          BandType = 3
          GroupNo = 4
        end
        object ppLabel97: TppLabel
          UserName = 'Label97'
          Caption = 'UNIDAD DE GESTION :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 11377
          mmTop = 0
          mmWidth = 30903
          BandType = 3
          GroupNo = 4
        end
      end
      object ppGroupFooterBand20: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppShape6: TppShape
          UserName = 'Shape6'
          mmHeight = 4233
          mmLeft = 43656
          mmTop = 0
          mmWidth = 146843
          BandType = 5
          GroupNo = 4
        end
        object ppLabel72: TppLabel
          UserName = 'Label72'
          Caption = 'TOTAL USE :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 44186
          mmTop = 529
          mmWidth = 18785
          BandType = 5
          GroupNo = 4
        end
        object ppDBText27: TppDBText
          UserName = 'DBText27'
          DataField = 'USENOM'
          DataPipeline = ppbderep02
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppbderep02'
          mmHeight = 3440
          mmLeft = 63765
          mmTop = 528
          mmWidth = 73290
          BandType = 5
          GroupNo = 4
        end
        object ppDBCalc17: TppDBCalc
          UserName = 'DBCalc17'
          DataField = 'RECLMONTO'
          DataPipeline = ppbderep02
          DisplayFormat = '#,0.00; -#,0.00+'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup20
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbderep02'
          mmHeight = 3440
          mmLeft = 158486
          mmTop = 529
          mmWidth = 14023
          BandType = 5
          GroupNo = 4
        end
        object ppDBCalc18: TppDBCalc
          UserName = 'DBCalc18'
          DataField = 'DEVMONTO'
          DataPipeline = ppbderep02
          DisplayFormat = '#,0.00; -#,0.00+'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup20
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbderep02'
          mmHeight = 3440
          mmLeft = 175684
          mmTop = 529
          mmWidth = 13494
          BandType = 5
          GroupNo = 4
        end
      end
    end
    object ppGroup21: TppGroup
      BreakName = 'DBTASOID'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group21'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand21: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 265
        mmPrintPosition = 0
        object DBTASOID: TppDBText
          UserName = 'DBTASOID'
          DataField = 'ASOID'
          DataPipeline = ppbderep02
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          Visible = False
          DataPipelineName = 'ppbderep02'
          mmHeight = 265
          mmLeft = 0
          mmTop = 0
          mmWidth = 4763
          BandType = 3
          GroupNo = 5
        end
      end
      object ppGroupFooterBand21: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppShape25: TppShape
          UserName = 'Shape25'
          mmHeight = 4233
          mmLeft = 43656
          mmTop = 0
          mmWidth = 146843
          BandType = 5
          GroupNo = 5
        end
        object ppLabel98: TppLabel
          UserName = 'Label98'
          Caption = 'TOTAL ASOCIADO :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 44186
          mmTop = 528
          mmWidth = 28575
          BandType = 5
          GroupNo = 5
        end
        object ppDBText60: TppDBText
          UserName = 'DBTASOAPENOMDNI2'
          DataField = 'ASOAPENOMDNI'
          DataPipeline = ppbderep02
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppbderep02'
          mmHeight = 3440
          mmLeft = 74083
          mmTop = 528
          mmWidth = 62971
          BandType = 5
          GroupNo = 5
        end
        object ppDBCalc15: TppDBCalc
          UserName = 'DBCalc15'
          DataField = 'RECLMONTO'
          DataPipeline = ppbderep02
          DisplayFormat = '#,0.00; -#,0.00+'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup21
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbderep02'
          mmHeight = 3440
          mmLeft = 158486
          mmTop = 529
          mmWidth = 14023
          BandType = 5
          GroupNo = 5
        end
        object ppDBCalc16: TppDBCalc
          UserName = 'DBCalc16'
          DataField = 'DEVMONTO'
          DataPipeline = ppbderep02
          DisplayFormat = '#,0.00; -#,0.00+'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup21
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbderep02'
          mmHeight = 3440
          mmLeft = 175684
          mmTop = 529
          mmWidth = 13494
          BandType = 5
          GroupNo = 5
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppbderep01: TppBDEPipeline
    DataSource = DM1.dsReporte
    UserName = 'bderep01'
    Left = 424
    Top = 408
  end
  object pprep01: TppReport
    AutoStop = False
    DataPipeline = ppbderep01
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
    Template.FileName = 'C:\Documents and Settings\irevilla\Escritorio\rep1.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 432
    Top = 416
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppbderep01'
    object ppHeaderBand5: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 29898
      mmPrintPosition = 0
      object ppShape17: TppShape
        UserName = 'Shape17'
        mmHeight = 8202
        mmLeft = 10319
        mmTop = 20902
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel101: TppLabel
        UserName = 'Label1'
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3439
        mmLeft = 10848
        mmTop = 21431
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel102: TppLabel
        UserName = 'Label2'
        Caption = 'Modular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3439
        mmLeft = 10848
        mmTop = 25135
        mmWidth = 12700
        BandType = 0
      end
      object ppShape18: TppShape
        UserName = 'Shape18'
        mmHeight = 8202
        mmLeft = 27781
        mmTop = 20902
        mmWidth = 76729
        BandType = 0
      end
      object ppLabel103: TppLabel
        UserName = 'Label701'
        Caption = 'Apellidos y'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 28310
        mmTop = 21431
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel104: TppLabel
        UserName = 'Label104'
        Caption = 'Nombres'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 28310
        mmTop = 25135
        mmWidth = 12171
        BandType = 0
      end
      object ppShape37: TppShape
        UserName = 'Shape37'
        mmHeight = 8202
        mmLeft = 104246
        mmTop = 20902
        mmWidth = 20108
        BandType = 0
      end
      object ppLabel122: TppLabel
        UserName = 'Label122'
        Caption = 'Fecha de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 104775
        mmTop = 21431
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel123: TppLabel
        UserName = 'Label123'
        Caption = 'Inicio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 104775
        mmTop = 25135
        mmWidth = 8731
        BandType = 0
      end
      object ppShape38: TppShape
        UserName = 'Shape38'
        mmHeight = 8202
        mmLeft = 141288
        mmTop = 20902
        mmWidth = 17463
        BandType = 0
      end
      object ppShape39: TppShape
        UserName = 'Shape39'
        mmHeight = 8202
        mmLeft = 158486
        mmTop = 20902
        mmWidth = 17463
        BandType = 0
      end
      object ppShape40: TppShape
        UserName = 'Shape40'
        mmHeight = 8202
        mmLeft = 124090
        mmTop = 20902
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel124: TppLabel
        UserName = 'Label803'
        Caption = 'Monto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 141817
        mmTop = 21431
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel125: TppLabel
        UserName = 'Label125'
        Caption = 'Reclamado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 141817
        mmTop = 25135
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel126: TppLabel
        UserName = 'Label126'
        Caption = 'Monto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 159015
        mmTop = 21431
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel127: TppLabel
        UserName = 'Label127'
        Caption = 'Aceptado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 159015
        mmTop = 25135
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel128: TppLabel
        UserName = 'Label128'
        Caption = 'Fecha de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 124619
        mmTop = 21431
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel129: TppLabel
        UserName = 'Label129'
        Caption = 'Conclusi'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 124619
        mmTop = 25135
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel130: TppLabel
        UserName = 'Label130'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3683
        mmLeft = 20108
        mmTop = 11906
        mmWidth = 141817
        BandType = 0
      end
      object ppLabel131: TppLabel
        UserName = 'Label131'
        Caption = 'RESUMEN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 82021
        mmTop = 16669
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel132: TppLabel
        UserName = 'Label132'
        Caption = 'Derrama Magisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 10319
        mmTop = 0
        mmWidth = 26458
        BandType = 0
      end
      object ppLabel133: TppLabel
        UserName = 'Label901'
        Caption = 'Equipo de Cobranzas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 10319
        mmTop = 3440
        mmWidth = 28046
        BandType = 0
      end
      object ppLabel134: TppLabel
        UserName = 'Label134'
        Caption = 'Fecha :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 162454
        mmTop = 0
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel135: TppLabel
        UserName = 'Label135'
        Caption = 'Hora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 162454
        mmTop = 3440
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel136: TppLabel
        UserName = 'Label136'
        Caption = 'Pagina:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 162454
        mmTop = 6879
        mmWidth = 9525
        BandType = 0
      end
      object ppSystemVariable13: TppSystemVariable
        UserName = 'SystemVariable101'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 175155
        mmTop = 0
        mmWidth = 14023
        BandType = 0
      end
      object ppSystemVariable14: TppSystemVariable
        UserName = 'SystemVariable14'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 175155
        mmTop = 3440
        mmWidth = 17463
        BandType = 0
      end
      object ppSystemVariable15: TppSystemVariable
        UserName = 'SystemVariable15'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 175155
        mmTop = 6879
        mmWidth = 1588
        BandType = 0
      end
      object ppShape36: TppShape
        UserName = 'Shape36'
        mmHeight = 8202
        mmLeft = 175684
        mmTop = 20902
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel121: TppLabel
        UserName = 'Label121'
        Caption = 'Cantidad'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 176213
        mmTop = 21431
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel137: TppLabel
        UserName = 'Label137'
        Caption = 'de Mov.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 176213
        mmTop = 25135
        mmWidth = 10583
        BandType = 0
      end
    end
    object ppDetailBand5: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText33: TppDBText
        UserName = 'DBTASOAPENOMDNI'
        DataField = 'ASOAPENOMDNI'
        DataPipeline = ppbderep01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppbderep01'
        mmHeight = 3175
        mmLeft = 29104
        mmTop = 0
        mmWidth = 74083
        BandType = 4
      end
      object ppDBText39: TppDBText
        UserName = 'DBText32'
        DataField = 'ASOCODMOD'
        DataPipeline = ppbderep01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppbderep01'
        mmHeight = 3175
        mmLeft = 10848
        mmTop = 0
        mmWidth = 16669
        BandType = 4
      end
      object ppDBText41: TppDBText
        UserName = 'DBText35'
        DataField = 'RECLFINI'
        DataPipeline = ppbderep01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppbderep01'
        mmHeight = 3175
        mmLeft = 104775
        mmTop = 0
        mmWidth = 16670
        BandType = 4
      end
      object ppDBText42: TppDBText
        UserName = 'DBText36'
        DataField = 'RECLMONTO'
        DataPipeline = ppbderep01
        DisplayFormat = '#,0.00; -#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbderep01'
        mmHeight = 3175
        mmLeft = 141817
        mmTop = 0
        mmWidth = 14023
        BandType = 4
      end
      object ppDBText43: TppDBText
        UserName = 'DBText37'
        DataField = 'DEVMONTO'
        DataPipeline = ppbderep01
        DisplayFormat = '#,0.00; -#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbderep01'
        mmHeight = 3175
        mmLeft = 159015
        mmTop = 0
        mmWidth = 14023
        BandType = 4
      end
      object ppDBText44: TppDBText
        UserName = 'DBText38'
        DataField = 'RECLFFIN'
        DataPipeline = ppbderep01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppbderep01'
        mmHeight = 3175
        mmLeft = 124619
        mmTop = 0
        mmWidth = 16670
        BandType = 4
      end
      object ppDBText40: TppDBText
        UserName = 'DBText1'
        DataField = 'CANTIDAD'
        DataPipeline = ppbderep01
        DisplayFormat = '#,0; -#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbderep01'
        mmHeight = 3175
        mmLeft = 176213
        mmTop = 0
        mmWidth = 14023
        BandType = 4
      end
    end
    object ppSummaryBand5: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 8731
      mmPrintPosition = 0
      object ppShape19: TppShape
        UserName = 'Shape16'
        mmHeight = 4498
        mmLeft = 29104
        mmTop = 0
        mmWidth = 162454
        BandType = 7
      end
      object ppLabel115: TppLabel
        UserName = 'Label115'
        Caption = 'TOTAL GENERAL :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 29634
        mmTop = 528
        mmWidth = 25527
        BandType = 7
      end
      object ppDBCalc36: TppDBCalc
        UserName = 'DBCalc36'
        DataField = 'CANTIDAD'
        DataPipeline = ppbderep01
        DisplayFormat = '#,0; -#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbderep01'
        mmHeight = 3440
        mmLeft = 176213
        mmTop = 529
        mmWidth = 14023
        BandType = 7
      end
      object ppDBCalc29: TppDBCalc
        UserName = 'DBCalc29'
        DataField = 'DEVMONTO'
        DataPipeline = ppbderep01
        DisplayFormat = '#,0.00; -#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbderep01'
        mmHeight = 3440
        mmLeft = 159015
        mmTop = 529
        mmWidth = 14023
        BandType = 7
      end
      object ppDBCalc48: TppDBCalc
        UserName = 'DBCalc48'
        DataField = 'RECLMONTO'
        DataPipeline = ppbderep01
        DisplayFormat = '#,0.00; -#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbderep01'
        mmHeight = 3440
        mmLeft = 141817
        mmTop = 529
        mmWidth = 14023
        BandType = 7
      end
      object ppLabel117: TppLabel
        UserName = 'Label117'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 10319
        mmTop = 5556
        mmWidth = 52388
        BandType = 7
      end
    end
    object ppGroup4: TppGroup
      BreakName = 'DBTRECLSITID01'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group4'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand4: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 3969
        mmPrintPosition = 0
        object DBTRECLSITID01: TppDBText
          UserName = 'DBTRECLSITID01'
          DataField = 'RECLSITID'
          DataPipeline = ppbderep01
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppbderep01'
          mmHeight = 3440
          mmLeft = 25135
          mmTop = 0
          mmWidth = 6085
          BandType = 3
          GroupNo = 0
        end
        object ppDBText46: TppDBText
          UserName = 'DBText46'
          DataField = 'RECLSITDES'
          DataPipeline = ppbderep01
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppbderep01'
          mmHeight = 3440
          mmLeft = 32015
          mmTop = 0
          mmWidth = 70644
          BandType = 3
          GroupNo = 0
        end
        object ppLabel106: TppLabel
          UserName = 'Label106'
          Caption = 'ESTADO :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3439
          mmLeft = 10848
          mmTop = 0
          mmWidth = 13494
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppShape41: TppShape
          UserName = 'Shape41'
          mmHeight = 4498
          mmLeft = 29104
          mmTop = 0
          mmWidth = 162454
          BandType = 5
          GroupNo = 0
        end
        object ppLabel105: TppLabel
          UserName = 'Label87'
          Caption = 'TOTAL ESTADO :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 29634
          mmTop = 528
          mmWidth = 23453
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc40: TppDBCalc
          UserName = 'DBCalc40'
          DataField = 'CANTIDAD'
          DataPipeline = ppbderep01
          DisplayFormat = '#,0; -#,0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbderep01'
          mmHeight = 3440
          mmLeft = 176213
          mmTop = 529
          mmWidth = 14023
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc44: TppDBCalc
          UserName = 'DBCalc44'
          DataField = 'DEVMONTO'
          DataPipeline = ppbderep01
          DisplayFormat = '#,0.00; -#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbderep01'
          mmHeight = 3440
          mmLeft = 159015
          mmTop = 529
          mmWidth = 14023
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc47: TppDBCalc
          UserName = 'DBCalc47'
          DataField = 'RECLMONTO'
          DataPipeline = ppbderep01
          DisplayFormat = '#,0.00; -#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbderep01'
          mmHeight = 3440
          mmLeft = 141817
          mmTop = 529
          mmWidth = 14023
          BandType = 5
          GroupNo = 0
        end
        object ppDBText61: TppDBText
          UserName = 'DBText61'
          DataField = 'RECLSITDES'
          DataPipeline = ppbderep01
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppbderep01'
          mmHeight = 3440
          mmLeft = 54769
          mmTop = 529
          mmWidth = 67733
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup5: TppGroup
      BreakName = 'DBTDPTOID01'
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
        object ppLabel108: TppLabel
          UserName = 'Label108'
          Caption = 'DEPARTAMENTO :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3439
          mmLeft = 10848
          mmTop = 0
          mmWidth = 25400
          BandType = 3
          GroupNo = 1
        end
        object DBTDPTOID01: TppDBText
          UserName = 'DBTDPTOID01'
          DataField = 'DPTOID'
          DataPipeline = ppbderep01
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppbderep01'
          mmHeight = 3439
          mmLeft = 37306
          mmTop = 0
          mmWidth = 6086
          BandType = 3
          GroupNo = 1
        end
        object ppDBText47: TppDBText
          UserName = 'DBText47'
          DataField = 'DPTODES'
          DataPipeline = ppbderep01
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppbderep01'
          mmHeight = 3440
          mmLeft = 44715
          mmTop = 0
          mmWidth = 58208
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand5: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppShape35: TppShape
          UserName = 'Shape35'
          mmHeight = 4498
          mmLeft = 29104
          mmTop = 0
          mmWidth = 162454
          BandType = 5
          GroupNo = 1
        end
        object ppLabel116: TppLabel
          UserName = 'Label116'
          Caption = 'TOTAL DEPARTAMENTO :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3439
          mmLeft = 29634
          mmTop = 528
          mmWidth = 35433
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc39: TppDBCalc
          UserName = 'DBCalc39'
          DataField = 'CANTIDAD'
          DataPipeline = ppbderep01
          DisplayFormat = '#,0; -#,0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbderep01'
          mmHeight = 3440
          mmLeft = 176213
          mmTop = 529
          mmWidth = 14023
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc43: TppDBCalc
          UserName = 'DBCalc43'
          DataField = 'DEVMONTO'
          DataPipeline = ppbderep01
          DisplayFormat = '#,0.00; -#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbderep01'
          mmHeight = 3440
          mmLeft = 159015
          mmTop = 529
          mmWidth = 14023
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc46: TppDBCalc
          UserName = 'DBCalc46'
          DataField = 'RECLMONTO'
          DataPipeline = ppbderep01
          DisplayFormat = '#,0.00; -#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbderep01'
          mmHeight = 3440
          mmLeft = 141817
          mmTop = 529
          mmWidth = 14023
          BandType = 5
          GroupNo = 1
        end
        object ppDBText54: TppDBText
          UserName = 'DBText54'
          DataField = 'DPTODES'
          DataPipeline = ppbderep01
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppbderep01'
          mmHeight = 3440
          mmLeft = 66411
          mmTop = 529
          mmWidth = 56092
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup6: TppGroup
      BreakName = 'DBTUPROID01'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group6'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand6: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 3970
        mmPrintPosition = 0
        object DBTUPROID01: TppDBText
          UserName = 'DBTUPROID01'
          DataField = 'UPROID'
          DataPipeline = ppbderep01
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppbderep01'
          mmHeight = 3387
          mmLeft = 43127
          mmTop = 0
          mmWidth = 6086
          BandType = 3
          GroupNo = 2
        end
        object ppLabel109: TppLabel
          UserName = 'Label109'
          Caption = 'UNIDAD DE PROCESO :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3439
          mmLeft = 10848
          mmTop = 0
          mmWidth = 31485
          BandType = 3
          GroupNo = 2
        end
        object ppDBText48: TppDBText
          UserName = 'DBText48'
          DataField = 'UPRONOM'
          DataPipeline = ppbderep01
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppbderep01'
          mmHeight = 3440
          mmLeft = 50271
          mmTop = 0
          mmWidth = 52652
          BandType = 3
          GroupNo = 2
        end
      end
      object ppGroupFooterBand6: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppShape34: TppShape
          UserName = 'Shape34'
          mmHeight = 4498
          mmLeft = 29104
          mmTop = 0
          mmWidth = 162454
          BandType = 5
          GroupNo = 2
        end
        object ppLabel114: TppLabel
          UserName = 'Label114'
          Caption = 'TOTAL UNIDAD DE PROCESO :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3439
          mmLeft = 29634
          mmTop = 528
          mmWidth = 42376
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc38: TppDBCalc
          UserName = 'DBCalc38'
          DataField = 'CANTIDAD'
          DataPipeline = ppbderep01
          DisplayFormat = '#,0; -#,0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbderep01'
          mmHeight = 3440
          mmLeft = 176213
          mmTop = 529
          mmWidth = 14023
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc42: TppDBCalc
          UserName = 'DBCalc42'
          DataField = 'DEVMONTO'
          DataPipeline = ppbderep01
          DisplayFormat = '#,0.00; -#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbderep01'
          mmHeight = 3440
          mmLeft = 159015
          mmTop = 529
          mmWidth = 14023
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc45: TppDBCalc
          UserName = 'DBCalc45'
          DataField = 'RECLMONTO'
          DataPipeline = ppbderep01
          DisplayFormat = '#,0.00; -#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup6
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbderep01'
          mmHeight = 3440
          mmLeft = 141817
          mmTop = 529
          mmWidth = 14023
          BandType = 5
          GroupNo = 2
        end
        object ppDBText53: TppDBText
          UserName = 'DBText53'
          DataField = 'UPRONOM'
          DataPipeline = ppbderep01
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppbderep01'
          mmHeight = 3440
          mmLeft = 73025
          mmTop = 529
          mmWidth = 49477
          BandType = 5
          GroupNo = 2
        end
      end
    end
    object ppGroup7: TppGroup
      BreakName = 'DBTUPAGOID01'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group7'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand7: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 3970
        mmPrintPosition = 0
        object DBTUPAGOID01: TppDBText
          UserName = 'DBTUPAGOID01'
          DataField = 'UPAGOID'
          DataPipeline = ppbderep01
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppbderep01'
          mmHeight = 3387
          mmLeft = 38365
          mmTop = 0
          mmWidth = 6086
          BandType = 3
          GroupNo = 3
        end
        object ppLabel110: TppLabel
          UserName = 'Label110'
          Caption = 'UNIDAD DE PAGO :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3439
          mmLeft = 10848
          mmTop = 0
          mmWidth = 26458
          BandType = 3
          GroupNo = 3
        end
        object ppDBText49: TppDBText
          UserName = 'DBText49'
          DataField = 'UPAGONOM'
          DataPipeline = ppbderep01
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppbderep01'
          mmHeight = 3440
          mmLeft = 44979
          mmTop = 0
          mmWidth = 57944
          BandType = 3
          GroupNo = 3
        end
      end
      object ppGroupFooterBand7: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppShape33: TppShape
          UserName = 'Shape33'
          mmHeight = 4498
          mmLeft = 29104
          mmTop = 0
          mmWidth = 162454
          BandType = 5
          GroupNo = 3
        end
        object ppLabel113: TppLabel
          UserName = 'Label113'
          Caption = 'TOTAL UNIDAD DE PAGO :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3439
          mmLeft = 29634
          mmTop = 528
          mmWidth = 36407
          BandType = 5
          GroupNo = 3
        end
        object ppDBCalc37: TppDBCalc
          UserName = 'DBCalc37'
          DataField = 'CANTIDAD'
          DataPipeline = ppbderep01
          DisplayFormat = '#,0; -#,0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbderep01'
          mmHeight = 3440
          mmLeft = 176213
          mmTop = 529
          mmWidth = 14023
          BandType = 5
          GroupNo = 3
        end
        object ppDBCalc41: TppDBCalc
          UserName = 'DBCalc41'
          DataField = 'DEVMONTO'
          DataPipeline = ppbderep01
          DisplayFormat = '#,0.00; -#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbderep01'
          mmHeight = 3440
          mmLeft = 159015
          mmTop = 529
          mmWidth = 14023
          BandType = 5
          GroupNo = 3
        end
        object ppDBCalc30: TppDBCalc
          UserName = 'DBCalc30'
          DataField = 'RECLMONTO'
          DataPipeline = ppbderep01
          DisplayFormat = '#,0.00; -#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbderep01'
          mmHeight = 3440
          mmLeft = 141817
          mmTop = 529
          mmWidth = 14023
          BandType = 5
          GroupNo = 3
        end
        object ppDBText52: TppDBText
          UserName = 'DBText52'
          DataField = 'UPAGONOM'
          DataPipeline = ppbderep01
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppbderep01'
          mmHeight = 3440
          mmLeft = 67204
          mmTop = 529
          mmWidth = 55298
          BandType = 5
          GroupNo = 3
        end
      end
    end
    object ppGroup8: TppGroup
      BreakName = 'DBTUSEID01'
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
        object DBTUSEID01: TppDBText
          UserName = 'DBText2'
          DataField = 'USEID'
          DataPipeline = ppbderep01
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppbderep01'
          mmHeight = 3387
          mmLeft = 42598
          mmTop = 0
          mmWidth = 6086
          BandType = 3
          GroupNo = 4
        end
        object ppLabel111: TppLabel
          UserName = 'Label1101'
          Caption = 'UNIDAD DE GESTION :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3439
          mmLeft = 10848
          mmTop = 0
          mmWidth = 30956
          BandType = 3
          GroupNo = 4
        end
        object ppDBText50: TppDBText
          UserName = 'DBText50'
          DataField = 'USENOM'
          DataPipeline = ppbderep01
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppbderep01'
          mmHeight = 3387
          mmLeft = 49213
          mmTop = 0
          mmWidth = 53975
          BandType = 3
          GroupNo = 4
        end
      end
      object ppGroupFooterBand8: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppShape32: TppShape
          UserName = 'Shape32'
          mmHeight = 4498
          mmLeft = 29104
          mmTop = 0
          mmWidth = 162454
          BandType = 5
          GroupNo = 4
        end
        object ppLabel112: TppLabel
          UserName = 'Label112'
          Caption = 'TOTAL USE :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3439
          mmLeft = 29634
          mmTop = 528
          mmWidth = 19315
          BandType = 5
          GroupNo = 4
        end
        object ppDBText51: TppDBText
          UserName = 'DBText51'
          DataField = 'USENOM'
          DataPipeline = ppbderep01
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppbderep01'
          mmHeight = 3439
          mmLeft = 50006
          mmTop = 528
          mmWidth = 72761
          BandType = 5
          GroupNo = 4
        end
        object ppDBCalc33: TppDBCalc
          UserName = 'DBCalc33'
          DataField = 'RECLMONTO'
          DataPipeline = ppbderep01
          DisplayFormat = '#,0.00; -#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup8
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbderep01'
          mmHeight = 3440
          mmLeft = 141817
          mmTop = 529
          mmWidth = 14023
          BandType = 5
          GroupNo = 4
        end
        object ppDBCalc34: TppDBCalc
          UserName = 'DBCalc34'
          DataField = 'DEVMONTO'
          DataPipeline = ppbderep01
          DisplayFormat = '#,0.00; -#,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup8
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbderep01'
          mmHeight = 3440
          mmLeft = 159015
          mmTop = 529
          mmWidth = 14023
          BandType = 5
          GroupNo = 4
        end
        object ppDBCalc35: TppDBCalc
          UserName = 'DBCalc35'
          DataField = 'CANTIDAD'
          DataPipeline = ppbderep01
          DisplayFormat = '#,0; -#,0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup8
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbderep01'
          mmHeight = 3440
          mmLeft = 176213
          mmTop = 529
          mmWidth = 14023
          BandType = 5
          GroupNo = 4
        end
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
end
