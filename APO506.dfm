object FRepEstadoCtaAportes: TFRepEstadoCtaAportes
  Left = 53
  Top = 228
  ActiveControl = RGreporte
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Aportes'
  ClientHeight = 295
  ClientWidth = 644
  Color = 13165023
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = RGreporteClick
  PixelsPerInch = 96
  TextHeight = 13
  object pnlCabecera: TPanel
    Left = 0
    Top = -18
    Width = 642
    Height = 313
    BevelOuter = bvNone
    BorderWidth = 1
    Color = 10207162
    TabOrder = 0
    object TLabel
      Left = 14
      Top = 38
      Width = 273
      Height = 27
      Caption = 'Estado de Cuenta de Aportes'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Z2bbtnCancel: TfcShapeBtn
      Left = 602
      Top = 274
      Width = 31
      Height = 30
      Hint = 'Cancelar'
      Color = 13165023
      DitherColor = clWhite
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        04000000000068010000CE0E0000D80E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033911833333333333333333F333333333333
        0000339111833333911333333388F333333F3333000033911118333911118333
        38F38F333F88F33300003339111183911111833338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003339
        1118333911183333338F33838F338F33000033911183333391118333338FF833
        38F338F300003391183333333911133333388333338FFF830000333913333333
        3391833333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsRoundRect
      ShowHint = True
      TabOrder = 1
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = Z2bbtnCancelClick
    end
    object Z2bbtnAceptar: TfcShapeBtn
      Left = 562
      Top = 274
      Width = 31
      Height = 31
      Hint = 'Aceptar '
      Color = 13165023
      DitherColor = clWhite
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsRoundRect
      ShowHint = True
      TabOrder = 0
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = Z2bbtnAceptarClick
    end
    object zzzzz: TPanel
      Left = 10
      Top = 71
      Width = 594
      Height = 195
      BevelOuter = bvNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object TLabel
        Left = 229
        Top = 68
        Width = 49
        Height = 15
        Caption = 'Provincia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 228
        Top = 107
        Width = 23
        Height = 15
        Caption = 'USE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 15
        Top = 68
        Width = 71
        Height = 15
        Caption = 'Departamento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 15
        Top = 107
        Width = 94
        Height = 15
        Caption = 'Unidad de Proceso'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 14
        Top = 147
        Width = 35
        Height = 15
        Caption = 'Codigo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 108
        Top = 147
        Width = 84
        Height = 15
        Caption = 'Apellido Paterno'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 267
        Top = 148
        Width = 88
        Height = 15
        Caption = 'Apellido Materno'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 431
        Top = 148
        Width = 45
        Height = 15
        Caption = 'Nombres'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object gpperiodo: TGroupBox
        Left = 7
        Top = 8
        Width = 134
        Height = 59
        Caption = 'Periodo'
        TabOrder = 0
        Visible = False
        object TLabel
          Left = 64
          Top = 15
          Width = 21
          Height = 15
          Caption = 'Mes'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object TLabel
          Left = 12
          Top = 15
          Width = 20
          Height = 15
          Caption = 'A'#241'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object spemes: TwwDBSpinEdit
          Left = 63
          Top = 28
          Width = 56
          Height = 21
          Increment = 1.000000000000000000
          MaxValue = 12.000000000000000000
          MinValue = 1.000000000000000000
          BorderStyle = bsNone
          Color = 13165023
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          TabOrder = 1
          UnboundDataType = wwDefault
        end
        object speano: TwwDBSpinEdit
          Left = 10
          Top = 28
          Width = 51
          Height = 21
          Increment = 1.000000000000000000
          MaxValue = 2900.000000000000000000
          MinValue = 1900.000000000000000000
          BorderStyle = bsNone
          Color = 13165023
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          TabOrder = 0
          UnboundDataType = wwDefault
        end
      end
      object dblcdupro: TwwDBLookupComboDlg
        Left = 15
        Top = 122
        Width = 54
        Height = 21
        BorderStyle = bsNone
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Lookup'
        MaxWidth = 0
        MaxHeight = 209
        Selected.Strings = (
          'UPROID'#9'3'#9'C'#243'digo'#9'F'
          'UPRONOM'#9'75'#9'Descripci'#243'n'#9'F')
        LookupTable = DM1.cdsUPro
        LookupField = 'UPROID'
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 6
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
        OnExit = dblcduproExit
      end
      object dblcduse: TwwDBLookupComboDlg
        Left = 228
        Top = 122
        Width = 54
        Height = 21
        BorderStyle = bsNone
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Lookup'
        MaxWidth = 0
        MaxHeight = 209
        Selected.Strings = (
          'USEID'#9'3'#9'C'#243'digo'#9'F'
          'USENOM'#9'75'#9'Descripci'#243'n'#9'F')
        LookupTable = DM1.cdsUse
        LookupField = 'USEID'
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 8
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
        OnExit = dblcduseExit
      end
      object dbeupro: TwwDBEdit
        Left = 70
        Top = 122
        Width = 158
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 7
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeUSE: TwwDBEdit
        Left = 282
        Top = 122
        Width = 158
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 9
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dblcdCiudad: TwwDBLookupComboDlg
        Left = 229
        Top = 85
        Width = 54
        Height = 21
        BorderStyle = bsNone
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Lookup'
        MaxWidth = 0
        MaxHeight = 209
        Selected.Strings = (
          'CIUDID'#9'3'#9'C'#243'digo'#9'F'
          'CIUDDES'#9'30'#9'Descripci'#243'n'#9'F')
        LookupTable = DM1.cdsProvin
        LookupField = 'CIUDID'
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 4
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
        OnExit = dblcdCiudadExit
      end
      object dblcdDepto: TwwDBLookupComboDlg
        Left = 15
        Top = 85
        Width = 54
        Height = 21
        BorderStyle = bsNone
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Lookup'
        MaxWidth = 0
        MaxHeight = 209
        LookupTable = DM1.cdsDpto
        LookupField = 'DPTOID'
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 2
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
        OnExit = dblcdDeptoExit
      end
      object dbeProvincia: TwwDBEdit
        Left = 284
        Top = 85
        Width = 158
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 5
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeDepto: TwwDBEdit
        Left = 71
        Top = 85
        Width = 158
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 3
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dblcdaso: TwwDBLookupComboDlg
        Left = 14
        Top = 162
        Width = 91
        Height = 21
        BorderStyle = bsNone
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Lookup'
        MaxWidth = 0
        MaxHeight = 209
        LookupTable = DM1.cdsAso
        LookupField = 'ASOID'
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 10
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
        OnClick = dblcdasoClick
        OnExit = dblcdasoExit
      end
      object dbenombres: TwwDBEdit
        Left = 426
        Top = 162
        Width = 158
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 13
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeam: TwwDBEdit
        Left = 266
        Top = 162
        Width = 158
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 12
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeape: TwwDBEdit
        Left = 106
        Top = 162
        Width = 158
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 11
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object RGreporte: TRadioGroup
        Left = 7
        Top = 8
        Width = 394
        Height = 59
        Columns = 3
        ItemIndex = 5
        Items.Strings = (
          'Global'
          'Departamento'
          'Provincia'
          'Unidad de Proceso'
          'USE'
          'Individual')
        TabOrder = 1
        OnClick = RGreporteClick
      end
      object Button1: TButton
        Left = 86
        Top = 168
        Width = 17
        Height = 13
        Caption = '...'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 14
        OnClick = Button1Click
      end
    end
  end
  object ppDBRepCtaAportes: TppDBPipeline
    DataSource = DM1.dsReporte1
    UserName = 'DBRepCtaAportes'
    Left = 333
    Top = 11
  end
  object ppRepctaAportes: TppReport
    AutoStop = False
    DataPipeline = ppDBRepCtaAportes
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'RepctaAportes'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\SOLAportes\Solformatos\Apo\Dema\EstadoCtaAporte.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 374
    Top = 13
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBRepCtaAportes'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 29898
      mmPrintPosition = 0
      object ppLabel74: TppLabel
        UserName = 'Label74'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 10583
        mmTop = 5027
        mmWidth = 35983
        BandType = 0
      end
      object ppLabel75: TppLabel
        UserName = 'Label75'
        Caption = 'PREVISION SOCIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 14552
        mmTop = 9790
        mmWidth = 29104
        BandType = 0
      end
      object ppLabel76: TppLabel
        UserName = 'Label76'
        Caption = 'ESTADO DE CUENTA DE APORTES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 73290
        mmTop = 19315
        mmWidth = 48154
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 172773
        mmTop = 2381
        mmWidth = 14288
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 172773
        mmTop = 7144
        mmWidth = 17463
        BandType = 0
      end
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable7'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 188119
        mmTop = 12171
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel77: TppLabel
        UserName = 'Label77'
        Caption = 'Fecha :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 160073
        mmTop = 2381
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel78: TppLabel
        UserName = 'Label78'
        Caption = 'Hora :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 160073
        mmTop = 7144
        mmWidth = 8731
        BandType = 0
      end
      object ppLabel79: TppLabel
        UserName = 'Label79'
        Caption = 'P'#225'gina :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 160073
        mmTop = 12171
        mmWidth = 11377
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'TRANSFOPE'
        DataPipeline = ppDBRepCtaAportes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRepCtaAportes'
        mmHeight = 3704
        mmLeft = 19844
        mmTop = 794
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'TRANSNOPE'
        DataPipeline = ppDBRepCtaAportes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRepCtaAportes'
        mmHeight = 3704
        mmLeft = 36777
        mmTop = 794
        mmWidth = 17727
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'FORPAGOABR'
        DataPipeline = ppDBRepCtaAportes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRepCtaAportes'
        mmHeight = 3704
        mmLeft = 55033
        mmTop = 794
        mmWidth = 15875
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'TRANSANO'
        DataPipeline = ppDBRepCtaAportes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRepCtaAportes'
        mmHeight = 3704
        mmLeft = 73554
        mmTop = 794
        mmWidth = 6615
        BandType = 4
      end
      object ppLabel32: TppLabel
        UserName = 'Label1'
        Caption = '/'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 80963
        mmTop = 794
        mmWidth = 1588
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'TRANSMES'
        DataPipeline = ppDBRepCtaAportes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRepCtaAportes'
        mmHeight = 3704
        mmLeft = 83079
        mmTop = 794
        mmWidth = 3440
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'USEID'
        DataPipeline = ppDBRepCtaAportes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRepCtaAportes'
        mmHeight = 3704
        mmLeft = 90488
        mmTop = 794
        mmWidth = 7673
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText401'
        DataField = 'SUMAAPORTE'
        DataPipeline = ppDBRepCtaAportes
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRepCtaAportes'
        mmHeight = 3704
        mmLeft = 102923
        mmTop = 794
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'FREG'
        DataPipeline = ppDBRepCtaAportes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRepCtaAportes'
        mmHeight = 3704
        mmLeft = 3175
        mmTop = 794
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText56: TppDBText
        UserName = 'DBText56'
        DataField = 'SUMAOTRO'
        DataPipeline = ppDBRepCtaAportes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRepCtaAportes'
        mmHeight = 3704
        mmLeft = 121973
        mmTop = 794
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'SUMATOT'
        DataPipeline = ppDBRepCtaAportes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRepCtaAportes'
        mmHeight = 3704
        mmLeft = 170127
        mmTop = 794
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText57: TppDBText
        UserName = 'DBText57'
        DataField = 'TRANSMTODEV'
        DataPipeline = ppDBRepCtaAportes
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBRepCtaAportes'
        mmHeight = 3704
        mmLeft = 151077
        mmTop = 794
        mmWidth = 14288
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppGroup5: TppGroup
      BreakName = 'DPTOID'
      DataPipeline = ppDBRepCtaAportes
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group5'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBRepCtaAportes'
      object ppGroupHeaderBand5: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand5: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'CIUID'
      DataPipeline = ppDBRepCtaAportes
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBRepCtaAportes'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup6: TppGroup
      BreakName = 'UPROID'
      DataPipeline = ppDBRepCtaAportes
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group6'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBRepCtaAportes'
      object ppGroupHeaderBand6: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand6: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup7: TppGroup
      BreakName = 'USEID'
      DataPipeline = ppDBRepCtaAportes
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group7'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBRepCtaAportes'
      object ppGroupHeaderBand7: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand7: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup8: TppGroup
      BreakName = 'ASOID'
      DataPipeline = ppDBRepCtaAportes
      OutlineSettings.CreateNode = True
      NewPage = True
      UserName = 'Group8'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBRepCtaAportes'
      object ppGroupHeaderBand8: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 70644
        mmPrintPosition = 0
        object ppLabel33: TppLabel
          UserName = 'Label33'
          Caption = 
            '----------------------------------------------------------------' +
            '----------------------------------------------------------------' +
            '--------------------------------------------------'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 3440
          mmTop = 265
          mmWidth = 188384
          BandType = 3
          GroupNo = 3
        end
        object ppLabel40: TppLabel
          UserName = 'Label40'
          Caption = 'C'#243'digo Modular :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 3704
          mmTop = 5556
          mmWidth = 24077
          BandType = 3
          GroupNo = 3
        end
        object ppDBText23: TppDBText
          UserName = 'DBText23'
          DataField = 'ASOAPENOM'
          DataPipeline = ppDBRepCtaAportes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBRepCtaAportes'
          mmHeight = 3704
          mmLeft = 112448
          mmTop = 5556
          mmWidth = 77258
          BandType = 3
          GroupNo = 3
        end
        object ppDBText24: TppDBText
          UserName = 'DBText24'
          DataField = 'ASOCODMOD'
          DataPipeline = ppDBRepCtaAportes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBRepCtaAportes'
          mmHeight = 3704
          mmLeft = 30956
          mmTop = 5556
          mmWidth = 20373
          BandType = 3
          GroupNo = 3
        end
        object ppLabel41: TppLabel
          UserName = 'Label41'
          Caption = 'USE : '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 3704
          mmTop = 15610
          mmWidth = 8202
          BandType = 3
          GroupNo = 3
        end
        object ppLabel42: TppLabel
          UserName = 'Label42'
          Caption = 'Unidad de Pago : '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 3704
          mmTop = 20638
          mmWidth = 23813
          BandType = 3
          GroupNo = 3
        end
        object ppLabel43: TppLabel
          UserName = 'Label43'
          Caption = 'Res. Nombramiento :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 3704
          mmTop = 25665
          mmWidth = 29104
          BandType = 3
          GroupNo = 3
        end
        object ppLabel44: TppLabel
          UserName = 'Label44'
          Caption = 'Fec.Res.Nomb. . '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 53711
          mmTop = 25665
          mmWidth = 22225
          BandType = 3
          GroupNo = 3
        end
        object ppLabel45: TppLabel
          UserName = 'Label45'
          Caption = 'A'#241'os de Aportes a '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 3704
          mmTop = 30692
          mmWidth = 25400
          BandType = 3
          GroupNo = 3
        end
        object ppLabel46: TppLabel
          UserName = 'Label46'
          Caption = 'Unidad de Proceso : '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 111919
          mmTop = 11377
          mmWidth = 27781
          BandType = 3
          GroupNo = 3
        end
        object ppLabel47: TppLabel
          UserName = 'Label47'
          Caption = 'Res. Cese : '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 111919
          mmTop = 22225
          mmWidth = 16140
          BandType = 3
          GroupNo = 3
        end
        object ppLabel48: TppLabel
          UserName = 'Label101'
          Caption = 'Fec. Res. Cese : '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 148167
          mmTop = 22225
          mmWidth = 22225
          BandType = 3
          GroupNo = 3
        end
        object ppDBText25: TppDBText
          UserName = 'DBText25'
          DataField = 'UPAGONOM'
          DataPipeline = ppDBRepCtaAportes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBRepCtaAportes'
          mmHeight = 3704
          mmLeft = 30956
          mmTop = 20638
          mmWidth = 73819
          BandType = 3
          GroupNo = 3
        end
        object ppDBText26: TppDBText
          UserName = 'DBText26'
          DataField = 'ASORESNOM'
          DataPipeline = ppDBRepCtaAportes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBRepCtaAportes'
          mmHeight = 3704
          mmLeft = 33602
          mmTop = 25665
          mmWidth = 19050
          BandType = 3
          GroupNo = 3
        end
        object ppDBText27: TppDBText
          UserName = 'DBText27'
          DataField = 'ASOFRESNOM'
          DataPipeline = ppDBRepCtaAportes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBRepCtaAportes'
          mmHeight = 3704
          mmLeft = 77258
          mmTop = 25665
          mmWidth = 17198
          BandType = 3
          GroupNo = 3
        end
        object ppDBText28: TppDBText
          UserName = 'DBText28'
          DataField = 'UPRONOM'
          DataPipeline = ppDBRepCtaAportes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBRepCtaAportes'
          mmHeight = 3704
          mmLeft = 140494
          mmTop = 11377
          mmWidth = 53446
          BandType = 3
          GroupNo = 3
        end
        object ppDBText29: TppDBText
          UserName = 'DBText29'
          DataField = 'ASORESCESE'
          DataPipeline = ppDBRepCtaAportes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBRepCtaAportes'
          mmHeight = 3704
          mmLeft = 128852
          mmTop = 22225
          mmWidth = 17198
          BandType = 3
          GroupNo = 3
        end
        object ppDBText30: TppDBText
          UserName = 'DBText30'
          DataField = 'USEABR'
          DataPipeline = ppDBRepCtaAportes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBRepCtaAportes'
          mmHeight = 3704
          mmLeft = 30956
          mmTop = 15610
          mmWidth = 73554
          BandType = 3
          GroupNo = 3
        end
        object ppLabel49: TppLabel
          UserName = 'Label49'
          Caption = 'D.N.I. :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 3704
          mmTop = 35719
          mmWidth = 9525
          BandType = 3
          GroupNo = 3
        end
        object ppLabel50: TppLabel
          UserName = 'Label50'
          Caption = 'Cta. Ahorros :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 40481
          mmTop = 35719
          mmWidth = 19579
          BandType = 3
          GroupNo = 3
        end
        object ppDBText31: TppDBText
          UserName = 'DBText31'
          DataField = 'ASODNI'
          DataPipeline = ppDBRepCtaAportes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBRepCtaAportes'
          mmHeight = 3704
          mmLeft = 14288
          mmTop = 35719
          mmWidth = 17198
          BandType = 3
          GroupNo = 3
        end
        object ppDBText44: TppDBText
          UserName = 'DBText202'
          DataField = 'ASONCTA'
          DataPipeline = ppDBRepCtaAportes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBRepCtaAportes'
          mmHeight = 3704
          mmLeft = 62971
          mmTop = 35719
          mmWidth = 17198
          BandType = 3
          GroupNo = 3
        end
        object ppLabel51: TppLabel
          UserName = 'Label51'
          Caption = 'Domicilio :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 3704
          mmTop = 40746
          mmWidth = 15346
          BandType = 3
          GroupNo = 3
        end
        object ppDBText45: TppDBText
          UserName = 'DBText45'
          DataField = 'ASODIR'
          DataPipeline = ppDBRepCtaAportes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBRepCtaAportes'
          mmHeight = 3704
          mmLeft = 34925
          mmTop = 40746
          mmWidth = 71438
          BandType = 3
          GroupNo = 3
        end
        object ppLabel52: TppLabel
          UserName = 'Label52'
          Caption = 'C'#243'digo de Pago : '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 111654
          mmTop = 16933
          mmWidth = 23813
          BandType = 3
          GroupNo = 3
        end
        object ppLabel53: TppLabel
          UserName = 'Label53'
          Caption = 'Tipo/Situaci'#243'n Aportante : '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 111654
          mmTop = 27517
          mmWidth = 37042
          BandType = 3
          GroupNo = 3
        end
        object ppDBText46: TppDBText
          UserName = 'DBText46'
          DataField = 'ASOCODPAGO'
          DataPipeline = ppDBRepCtaAportes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBRepCtaAportes'
          mmHeight = 3704
          mmLeft = 138113
          mmTop = 16933
          mmWidth = 35454
          BandType = 3
          GroupNo = 3
        end
        object ppDBText47: TppDBText
          UserName = 'DBText47'
          DataField = 'SITCTA'
          DataPipeline = ppDBRepCtaAportes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBRepCtaAportes'
          mmHeight = 3704
          mmLeft = 148432
          mmTop = 27517
          mmWidth = 26988
          BandType = 3
          GroupNo = 3
        end
        object ppLabel54: TppLabel
          UserName = 'Label54'
          Caption = 'Tel'#233'fono : '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 111654
          mmTop = 32544
          mmWidth = 14552
          BandType = 3
          GroupNo = 3
        end
        object ppDBText48: TppDBText
          UserName = 'DBText48'
          DataField = 'ASOTELF1'
          DataPipeline = ppDBRepCtaAportes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBRepCtaAportes'
          mmHeight = 3704
          mmLeft = 132027
          mmTop = 32544
          mmWidth = 17198
          BandType = 3
          GroupNo = 3
        end
        object ppLabel55: TppLabel
          UserName = 'Label55'
          Caption = 'Tel'#233'fono : '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 111654
          mmTop = 37571
          mmWidth = 14552
          BandType = 3
          GroupNo = 3
        end
        object ppDBText49: TppDBText
          UserName = 'DBText49'
          DataField = 'ASOTELF2'
          DataPipeline = ppDBRepCtaAportes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBRepCtaAportes'
          mmHeight = 3704
          mmLeft = 132292
          mmTop = 37835
          mmWidth = 17198
          BandType = 3
          GroupNo = 3
        end
        object ppDBText50: TppDBText
          UserName = 'DBText50'
          DataField = 'ASOFRESCESE'
          DataPipeline = ppDBRepCtaAportes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBRepCtaAportes'
          mmHeight = 3704
          mmLeft = 171450
          mmTop = 22225
          mmWidth = 17198
          BandType = 3
          GroupNo = 3
        end
        object ppLabel56: TppLabel
          UserName = 'Label56'
          Caption = 
            '----------------------------------------------------------------' +
            '----------------------------------------------------------------' +
            '--------------------------------------------------'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 3704
          mmTop = 65617
          mmWidth = 188384
          BandType = 3
          GroupNo = 3
        end
        object ppLabel57: TppLabel
          UserName = 'Label57'
          Caption = 'FEC.REG.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 4233
          mmTop = 60325
          mmWidth = 12435
          BandType = 3
          GroupNo = 3
        end
        object ppLabel58: TppLabel
          UserName = 'Label201'
          Caption = 'FEC.OPER.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 19579
          mmTop = 60325
          mmWidth = 14552
          BandType = 3
          GroupNo = 3
        end
        object ppLabel59: TppLabel
          UserName = 'Label59'
          Caption = 'N.OPER.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 39688
          mmTop = 60325
          mmWidth = 11377
          BandType = 3
          GroupNo = 3
        end
        object ppLabel60: TppLabel
          UserName = 'Label60'
          Caption = 'FORM.PAG.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 53181
          mmTop = 60325
          mmWidth = 15610
          BandType = 3
          GroupNo = 3
        end
        object ppLabel61: TppLabel
          UserName = 'Label61'
          Caption = 'PERIODO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 74348
          mmTop = 60325
          mmWidth = 12965
          BandType = 3
          GroupNo = 3
        end
        object ppLabel62: TppLabel
          UserName = 'Label62'
          Caption = 'USE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 89959
          mmTop = 60325
          mmWidth = 5292
          BandType = 3
          GroupNo = 3
        end
        object ppLabel63: TppLabel
          UserName = 'Label63'
          Caption = 'APORTE POR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 99748
          mmTop = 60325
          mmWidth = 18521
          BandType = 3
          GroupNo = 3
        end
        object ppLabel64: TppLabel
          UserName = 'Label64'
          Caption = 'APORTE  POR OTROS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 119063
          mmTop = 60325
          mmWidth = 29633
          BandType = 3
          GroupNo = 3
        end
        object ppLabel69: TppLabel
          UserName = 'Label69'
          Caption = 'DEVOLC.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 151077
          mmTop = 60325
          mmWidth = 12435
          BandType = 3
          GroupNo = 3
        end
        object ppLabel70: TppLabel
          UserName = 'Label70'
          Caption = 'TOTAL ACUM'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 167217
          mmTop = 60325
          mmWidth = 19844
          BandType = 3
          GroupNo = 3
        end
        object ppLabel71: TppLabel
          UserName = 'Label71'
          Caption = 
            '----------------------------------------------------------------' +
            '----------------------------------------------------------------' +
            '--------------------------------------------------'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 3704
          mmTop = 55563
          mmWidth = 188384
          BandType = 3
          GroupNo = 3
        end
        object ppLabel72: TppLabel
          UserName = 'Label72'
          Caption = 'Centro Laboral ::'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 3440
          mmTop = 46038
          mmWidth = 24077
          BandType = 3
          GroupNo = 3
        end
        object ppLabel73: TppLabel
          UserName = 'Label73'
          Caption = 'R'#233'gimen de Pensi'#243'n :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 3440
          mmTop = 51065
          mmWidth = 30163
          BandType = 3
          GroupNo = 3
        end
        object ppDBText51: TppDBText
          UserName = 'DBText51'
          DataField = 'CEDUDES'
          DataPipeline = ppDBRepCtaAportes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBRepCtaAportes'
          mmHeight = 3704
          mmLeft = 34660
          mmTop = 46038
          mmWidth = 71967
          BandType = 3
          GroupNo = 3
        end
        object ppDBText52: TppDBText
          UserName = 'DBText52'
          DataField = 'REGPENID'
          DataPipeline = ppDBRepCtaAportes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppDBRepCtaAportes'
          mmHeight = 3704
          mmLeft = 34131
          mmTop = 51065
          mmWidth = 72761
          BandType = 3
          GroupNo = 3
        end
        object ppLabel1: TppLabel
          UserName = 'Label2'
          Caption = 'Departamento:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 3704
          mmTop = 10848
          mmWidth = 20638
          BandType = 3
          GroupNo = 4
        end
        object ppLabel2: TppLabel
          UserName = 'Label3'
          Caption = 'Ciudad:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 53975
          mmTop = 10848
          mmWidth = 11113
          BandType = 3
          GroupNo = 4
        end
        object ppDBText1: TppDBText
          UserName = 'DBText1'
          DataField = 'DPTOABR'
          DataPipeline = ppDBRepCtaAportes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBRepCtaAportes'
          mmHeight = 3704
          mmLeft = 30956
          mmTop = 10848
          mmWidth = 21167
          BandType = 3
          GroupNo = 4
        end
        object ppDBText11: TppDBText
          UserName = 'DBText8'
          DataField = 'CIUDDES'
          DataPipeline = ppDBRepCtaAportes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBRepCtaAportes'
          mmHeight = 3704
          mmLeft = 66940
          mmTop = 10848
          mmWidth = 37306
          BandType = 3
          GroupNo = 4
        end
      end
      object ppGroupFooterBand8: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 22490
        mmPrintPosition = 0
        object ppLabel80: TppLabel
          UserName = 'Label80'
          Caption = 
            '----------------------------------------------------------------' +
            '----------------------------------------------------------------' +
            '--------------------------------------------------'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 6879
          mmTop = 12171
          mmWidth = 188384
          BandType = 5
          GroupNo = 3
        end
        object ppLabel81: TppLabel
          UserName = 'Label81'
          Caption = 
            '----------------------------------------------------------------' +
            '-------------------'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 85990
          mmTop = 794
          mmWidth = 104775
          BandType = 5
          GroupNo = 3
        end
        object ppLabel82: TppLabel
          UserName = 'Label82'
          Caption = 'Incluye Aportes Registrados al :  '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 7144
          mmTop = 17727
          mmWidth = 40217
          BandType = 5
          GroupNo = 3
        end
        object ppSystemVariable8: TppSystemVariable
          UserName = 'SystemVariable8'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 48419
          mmTop = 17727
          mmWidth = 19579
          BandType = 5
          GroupNo = 3
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'SUMAAPORTE'
          DataPipeline = ppDBRepCtaAportes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup8
          Transparent = True
          DataPipelineName = 'ppDBRepCtaAportes'
          mmHeight = 3704
          mmLeft = 102923
          mmTop = 5556
          mmWidth = 17198
          BandType = 5
          GroupNo = 3
        end
        object ppDBCalc6: TppDBCalc
          UserName = 'DBCalc6'
          DataField = 'SUMAOTRO'
          DataPipeline = ppDBRepCtaAportes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup8
          Transparent = True
          DataPipelineName = 'ppDBRepCtaAportes'
          mmHeight = 3704
          mmLeft = 121973
          mmTop = 5556
          mmWidth = 17198
          BandType = 5
          GroupNo = 3
        end
        object ppDBCalc7: TppDBCalc
          UserName = 'DBCalc7'
          DataField = 'TRANSMTODEV'
          DataPipeline = ppDBRepCtaAportes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup8
          Transparent = True
          DataPipelineName = 'ppDBRepCtaAportes'
          mmHeight = 3704
          mmLeft = 151077
          mmTop = 5556
          mmWidth = 17198
          BandType = 5
          GroupNo = 3
        end
        object ppDBCalc8: TppDBCalc
          UserName = 'DBCalc8'
          DataField = 'SUMATOT'
          DataPipeline = ppDBRepCtaAportes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup8
          Transparent = True
          DataPipelineName = 'ppDBRepCtaAportes'
          mmHeight = 3704
          mmLeft = 170127
          mmTop = 5556
          mmWidth = 17198
          BandType = 5
          GroupNo = 3
        end
      end
    end
  end
  object ppDesigner1: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = ppRepctaAportes
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 502
    Top = 13
  end
end
