object Festdes: TFestdes
  Left = 108
  Top = 175
  BorderStyle = bsDialog
  Caption = 'Estadisticas de descargo'
  ClientHeight = 366
  ClientWidth = 647
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
  object btncerrar: TBitBtn
    Left = 558
    Top = 329
    Width = 82
    Height = 32
    Caption = 'Cerrar'
    TabOrder = 2
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
  object gbparametros: TGroupBox
    Left = 6
    Top = 1
    Width = 437
    Height = 102
    Caption = ' Parametros del reporte '
    TabOrder = 0
    object Label1: TLabel
      Left = 5
      Top = 21
      Width = 63
      Height = 13
      Caption = 'Fecha Inicial:'
    end
    object Label2: TLabel
      Left = 5
      Top = 46
      Width = 58
      Height = 13
      Caption = 'Fecha Final:'
    end
    object rgtipo: TRadioGroup
      Left = 165
      Top = 8
      Width = 186
      Height = 89
      Caption = ' Tipo de reporte '
      Items.Strings = (
        'Resumen mensual de depositos'
        'Aportes descargados Ok'
        'Aportes no registrados'
        'Aportes con inconsistencias')
      TabOrder = 2
    end
    object btnprocesar: TBitBtn
      Left = 354
      Top = 13
      Width = 78
      Height = 32
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
    object dbdtpinicio: TwwDBDateTimePicker
      Left = 76
      Top = 18
      Width = 83
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
    object dbdtpfinal: TwwDBDateTimePicker
      Left = 76
      Top = 42
      Width = 83
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
  end
  object btnimprime: TBitBtn
    Left = 467
    Top = 329
    Width = 82
    Height = 32
    Caption = 'Imprimir'
    TabOrder = 1
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
  object dbgreporte: TwwDBGrid
    Left = 5
    Top = 105
    Width = 633
    Height = 218
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsReporte
    Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
    TabOrder = 3
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
  end
  object dbpreporte: TppDBPipeline
    DataSource = DM1.dsReporte
    UserName = 'dbpreporte'
    Left = 8
    Top = 336
  end
  object pprresmendep: TppReport
    AutoStop = False
    DataPipeline = dbpreporte
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 40
    Top = 336
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbpreporte'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 35454
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 9261
        mmLeft = 35983
        mmTop = 25929
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'A'#241'o/Mes de deposito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 36777
        mmTop = 26723
        mmWidth = 16139
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 9261
        mmLeft = 53446
        mmTop = 25929
        mmWidth = 25135
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Cantidad de registros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 54240
        mmTop = 26723
        mmWidth = 23548
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 9261
        mmLeft = 78317
        mmTop = 25929
        mmWidth = 21431
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Monto depositado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 79111
        mmTop = 26723
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Pagina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 109802
        mmTop = 1852
        mmWidth = 8731
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 109802
        mmTop = 5292
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Hora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 109802
        mmTop = 8731
        mmWidth = 6085
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 121973
        mmTop = 1852
        mmWidth = 1588
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 121973
        mmTop = 5292
        mmWidth = 14817
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 121973
        mmTop = 8731
        mmWidth = 18521
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 120386
        mmTop = 1852
        mmWidth = 794
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 120386
        mmTop = 5292
        mmWidth = 794
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 120386
        mmTop = 8731
        mmWidth = 794
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label11'
        Caption = 'Derrama Magisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 5292
        mmTop = 1852
        mmWidth = 25400
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'Equipo de Cobranzas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 5292
        mmTop = 5292
        mmWidth = 27252
        BandType = 0
      end
      object ppltitulo: TppLabel
        UserName = 'Label13'
        Caption = 'RESUMEN MENSUAL DE DEPOSITOS EN CUENTA RECAUDADORA DE APORTES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 12617
        mmTop = 13758
        mmWidth = 111337
        BandType = 0
      end
      object pplfechas: TppLabel
        UserName = 'lfechas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 29898
        mmTop = 20638
        mmWidth = 76994
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'DEL BANCO DE CREDITO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 50800
        mmTop = 17198
        mmWidth = 35190
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'ANOMES'
        DataPipeline = dbpreporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpreporte'
        mmHeight = 3175
        mmLeft = 36777
        mmTop = 0
        mmWidth = 16140
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'CANTIDAD'
        DataPipeline = dbpreporte
        DisplayFormat = '#,###0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpreporte'
        mmHeight = 3175
        mmLeft = 54240
        mmTop = 0
        mmWidth = 23548
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'MONTOT'
        DataPipeline = dbpreporte
        DisplayFormat = '#,###0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpreporte'
        mmHeight = 3175
        mmLeft = 79111
        mmTop = 0
        mmWidth = 19844
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 9790
      mmPrintPosition = 0
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'TOTALES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 36777
        mmTop = 529
        mmWidth = 14023
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'CANTIDAD'
        DataPipeline = dbpreporte
        DisplayFormat = '#,###0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpreporte'
        mmHeight = 3175
        mmLeft = 54240
        mmTop = 529
        mmWidth = 23548
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'MONTOT'
        DataPipeline = dbpreporte
        DisplayFormat = '#,###0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpreporte'
        mmHeight = 3175
        mmLeft = 79111
        mmTop = 529
        mmWidth = 19844
        BandType = 7
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 35454
        mmTop = 0
        mmWidth = 63500
        BandType = 7
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 35454
        mmTop = 3969
        mmWidth = 63500
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
        mmLeft = 5292
        mmTop = 6615
        mmWidth = 61648
        BandType = 7
      end
    end
  end
  object pprrepok: TppReport
    AutoStop = False
    DataPipeline = dbpreporte
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 72
    Top = 336
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbpreporte'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 29633
      mmPrintPosition = 0
      object ppShape4: TppShape
        UserName = 'Shape1'
        mmHeight = 9260
        mmLeft = 5821
        mmTop = 20108
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label1'
        Caption = 'C'#243'digo Modular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 6615
        mmTop = 20902
        mmWidth = 16139
        BandType = 0
      end
      object ppShape5: TppShape
        UserName = 'Shape2'
        mmHeight = 9260
        mmLeft = 24606
        mmTop = 20108
        mmWidth = 71966
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label2'
        Caption = 'Apellidos y Nombres'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 6085
        mmLeft = 25400
        mmTop = 20902
        mmWidth = 27517
        BandType = 0
      end
      object ppShape6: TppShape
        UserName = 'Shape3'
        mmHeight = 9260
        mmLeft = 96309
        mmTop = 20108
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label3'
        Caption = 'N'#250'mero de operaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 97102
        mmTop = 20902
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label7'
        Caption = 'Pagina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 159279
        mmTop = 265
        mmWidth = 8731
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label8'
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 159279
        mmTop = 3704
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label9'
        Caption = 'Hora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 159279
        mmTop = 7144
        mmWidth = 6085
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 171450
        mmTop = 265
        mmWidth = 1588
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 171450
        mmTop = 3704
        mmWidth = 14817
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 171450
        mmTop = 7144
        mmWidth = 18521
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label10'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 169863
        mmTop = 265
        mmWidth = 794
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label101'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 169863
        mmTop = 3704
        mmWidth = 794
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label12'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 169863
        mmTop = 7144
        mmWidth = 794
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label11'
        Caption = 'Derrama Magisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 5292
        mmTop = 1852
        mmWidth = 25400
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label14'
        Caption = 'Equipo de Cobranzas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 5292
        mmTop = 5292
        mmWidth = 27252
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label13'
        Caption = 'CUENTA RECAUDADORA BANCO DE CREDITO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 64294
        mmTop = 12171
        mmWidth = 64770
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'lfechas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 24606
        mmTop = 15875
        mmWidth = 144198
        BandType = 0
      end
      object ppShape7: TppShape
        UserName = 'Shape7'
        mmHeight = 9260
        mmLeft = 116946
        mmTop = 20108
        mmWidth = 20108
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        Caption = 'Fecha de pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7144
        mmLeft = 117475
        mmTop = 21167
        mmWidth = 14023
        BandType = 0
      end
      object ppShape8: TppShape
        UserName = 'Shape8'
        mmHeight = 9260
        mmLeft = 136790
        mmTop = 20108
        mmWidth = 31750
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label301'
        Caption = 'Nombre de la agencia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7144
        mmLeft = 137319
        mmTop = 21167
        mmWidth = 18256
        BandType = 0
      end
      object ppShape9: TppShape
        UserName = 'Shape9'
        mmHeight = 9260
        mmLeft = 168275
        mmTop = 20108
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        Caption = 'Monto total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 168805
        mmTop = 21167
        mmWidth = 12965
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText4: TppDBText
        UserName = 'DBText1'
        DataField = 'ASOAPENOMDNI'
        DataPipeline = dbpreporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpreporte'
        mmHeight = 3175
        mmLeft = 25400
        mmTop = 0
        mmWidth = 70379
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText2'
        DataField = 'NUMOPE'
        DataPipeline = dbpreporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpreporte'
        mmHeight = 3175
        mmLeft = 97102
        mmTop = 0
        mmWidth = 19315
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText3'
        DataField = 'MONTOT'
        DataPipeline = dbpreporte
        DisplayFormat = '#,###0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpreporte'
        mmHeight = 3175
        mmLeft = 169069
        mmTop = 0
        mmWidth = 19314
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText4'
        DataField = 'ASOCODMOD'
        DataPipeline = dbpreporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpreporte'
        mmHeight = 3175
        mmLeft = 6615
        mmTop = 0
        mmWidth = 18256
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'FECPAG'
        DataPipeline = dbpreporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpreporte'
        mmHeight = 3175
        mmLeft = 118269
        mmTop = 0
        mmWidth = 18521
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'AGENBCODES'
        DataPipeline = dbpreporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpreporte'
        mmHeight = 3175
        mmLeft = 137584
        mmTop = 0
        mmWidth = 30163
        BandType = 4
      end
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 9260
      mmPrintPosition = 0
      object ppLabel28: TppLabel
        UserName = 'Label5'
        Caption = 'TOTALES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 138377
        mmTop = 794
        mmWidth = 14023
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'MONTOT'
        DataPipeline = dbpreporte
        DisplayFormat = '#,###0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpreporte'
        mmHeight = 3175
        mmLeft = 169069
        mmTop = 794
        mmWidth = 19314
        BandType = 7
      end
      object ppLine3: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 5821
        mmTop = 0
        mmWidth = 183358
        BandType = 7
      end
      object ppLine4: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 5821
        mmTop = 4498
        mmWidth = 183358
        BandType = 7
      end
      object ppLabel29: TppLabel
        UserName = 'limpresopor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 5821
        mmTop = 6085
        mmWidth = 61648
        BandType = 7
      end
    end
  end
  object pprreginc: TppReport
    AutoStop = False
    DataPipeline = dbpreporte
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 297127
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 104
    Top = 336
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbpreporte'
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 29633
      mmPrintPosition = 0
      object ppShape10: TppShape
        UserName = 'Shape1'
        mmHeight = 9261
        mmLeft = 5821
        mmTop = 20109
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label1'
        Caption = 'C'#243'digo Modular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 6615
        mmTop = 20902
        mmWidth = 16139
        BandType = 0
      end
      object ppShape11: TppShape
        UserName = 'Shape2'
        mmHeight = 9261
        mmLeft = 24606
        mmTop = 20109
        mmWidth = 71966
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label2'
        Caption = 'Apellidos y Nombres'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 6085
        mmLeft = 25400
        mmTop = 20902
        mmWidth = 27517
        BandType = 0
      end
      object ppShape12: TppShape
        UserName = 'Shape3'
        mmHeight = 9261
        mmLeft = 96309
        mmTop = 20109
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label3'
        Caption = 'N'#250'mero de operaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 97102
        mmTop = 20902
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label7'
        Caption = 'Pagina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 200555
        mmTop = 265
        mmWidth = 8731
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label8'
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 200555
        mmTop = 3704
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label9'
        Caption = 'Hora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 200555
        mmTop = 7144
        mmWidth = 6085
        BandType = 0
      end
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 212725
        mmTop = 265
        mmWidth = 1588
        BandType = 0
      end
      object ppSystemVariable8: TppSystemVariable
        UserName = 'SystemVariable2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 212725
        mmTop = 3704
        mmWidth = 14817
        BandType = 0
      end
      object ppSystemVariable9: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 212725
        mmTop = 7144
        mmWidth = 18521
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label10'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 211138
        mmTop = 265
        mmWidth = 794
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label101'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 211138
        mmTop = 3704
        mmWidth = 794
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label12'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 211138
        mmTop = 7144
        mmWidth = 794
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label11'
        Caption = 'Derrama Magisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 5292
        mmTop = 1852
        mmWidth = 25400
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label14'
        Caption = 'Equipo de Cobranzas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 5292
        mmTop = 5292
        mmWidth = 27252
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label13'
        Caption = 'CUENTA RECAUDADORA BANCO DE CREDITO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 85196
        mmTop = 12171
        mmWidth = 64770
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'lfechas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 45508
        mmTop = 15875
        mmWidth = 144198
        BandType = 0
      end
      object ppShape13: TppShape
        UserName = 'Shape7'
        mmHeight = 9261
        mmLeft = 116946
        mmTop = 20109
        mmWidth = 20108
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label30'
        Caption = 'Fecha de pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7144
        mmLeft = 117475
        mmTop = 21167
        mmWidth = 14023
        BandType = 0
      end
      object ppShape14: TppShape
        UserName = 'Shape8'
        mmHeight = 9261
        mmLeft = 136790
        mmTop = 20109
        mmWidth = 31750
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label301'
        Caption = 'Nombre de la agencia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7145
        mmLeft = 137319
        mmTop = 21167
        mmWidth = 18256
        BandType = 0
      end
      object ppShape15: TppShape
        UserName = 'Shape9'
        mmHeight = 9261
        mmLeft = 209550
        mmTop = 20109
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label32'
        Caption = 'Monto total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 210080
        mmTop = 20902
        mmWidth = 12965
        BandType = 0
      end
      object ppShape16: TppShape
        UserName = 'Shape16'
        mmHeight = 9261
        mmLeft = 168275
        mmTop = 20109
        mmWidth = 41539
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label50'
        Caption = 'Tipo de inconsistencia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7145
        mmLeft = 169598
        mmTop = 21167
        mmWidth = 23813
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText10: TppDBText
        UserName = 'DBText1'
        DataField = 'ASOAPENOMDNI'
        DataPipeline = dbpreporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpreporte'
        mmHeight = 3175
        mmLeft = 25400
        mmTop = 0
        mmWidth = 70379
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText2'
        DataField = 'NUMOPE'
        DataPipeline = dbpreporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpreporte'
        mmHeight = 3175
        mmLeft = 97102
        mmTop = 0
        mmWidth = 19315
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText3'
        DataField = 'MONTOT'
        DataPipeline = dbpreporte
        DisplayFormat = '#,###0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpreporte'
        mmHeight = 3175
        mmLeft = 210080
        mmTop = 0
        mmWidth = 19315
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText4'
        DataField = 'ASOCODMOD'
        DataPipeline = dbpreporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpreporte'
        mmHeight = 3175
        mmLeft = 6615
        mmTop = 0
        mmWidth = 18256
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText8'
        DataField = 'FECPAG'
        DataPipeline = dbpreporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpreporte'
        mmHeight = 3175
        mmLeft = 118269
        mmTop = 0
        mmWidth = 18521
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText9'
        DataField = 'AGENBCODES'
        DataPipeline = dbpreporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpreporte'
        mmHeight = 3175
        mmLeft = 137584
        mmTop = 0
        mmWidth = 30163
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'DESTIP'
        DataPipeline = dbpreporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpreporte'
        mmHeight = 3175
        mmLeft = 169069
        mmTop = 0
        mmWidth = 39952
        BandType = 4
      end
    end
    object ppSummaryBand3: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 9260
      mmPrintPosition = 0
      object ppLabel48: TppLabel
        UserName = 'Label5'
        Caption = 'TOTALES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 169598
        mmTop = 794
        mmWidth = 14023
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'MONTOT'
        DataPipeline = dbpreporte
        DisplayFormat = '#,###0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpreporte'
        mmHeight = 3175
        mmLeft = 210080
        mmTop = 794
        mmWidth = 19315
        BandType = 7
      end
      object ppLine5: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 5821
        mmTop = 0
        mmWidth = 224366
        BandType = 7
      end
      object ppLine6: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 5821
        mmTop = 4498
        mmWidth = 224366
        BandType = 7
      end
      object ppLabel49: TppLabel
        UserName = 'limpresopor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 5821
        mmTop = 6085
        mmWidth = 61648
        BandType = 7
      end
    end
  end
end
