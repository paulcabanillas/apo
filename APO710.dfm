object FToolCtaInd: TFToolCtaInd
  Left = 89
  Top = 211
  Width = 855
  Height = 184
  Caption = 'Cuenta Individual'
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnltool: TPanel
    Left = 3
    Top = 3
    Width = 838
    Height = 149
    BevelOuter = bvNone
    Color = 13165023
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TLabel
      Left = 211
      Top = 1
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
      Left = 511
      Top = 43
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
      Left = 3
      Top = 1
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
      Left = 4
      Top = 43
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
      Left = 7
      Top = 88
      Width = 85
      Height = 15
      Caption = 'Codigo Asociado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object TLabel
      Left = 137
      Top = 88
      Width = 172
      Height = 15
      Caption = 'Apellidos y Nombres del Asociado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object TLabel
      Left = 252
      Top = 43
      Width = 78
      Height = 15
      Caption = 'Unidad de Pago'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object dblcdupro: TwwDBLookupComboDlg
      Left = 4
      Top = 61
      Width = 54
      Height = 21
      BorderStyle = bsNone
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Unidad de Proceso'
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
      TabOrder = 4
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnExit = dblcduproExit
    end
    object dbeupro: TwwDBEdit
      Left = 59
      Top = 61
      Width = 193
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
    object dbeUSE: TwwDBEdit
      Left = 566
      Top = 61
      Width = 204
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      Enabled = False
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      TabOrder = 8
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dblcdCiudad: TwwDBLookupComboDlg
      Left = 211
      Top = 18
      Width = 54
      Height = 21
      BorderStyle = bsNone
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Provincia'
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
      TabOrder = 2
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnExit = dblcdCiudadExit
    end
    object dblcdDepto: TwwDBLookupComboDlg
      Left = 3
      Top = 18
      Width = 54
      Height = 21
      BorderStyle = bsNone
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Departamento'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'DPTOID'#9'3'#9'Codigo'#9'F'
        'DPTODES'#9'30'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.cdsDpto
      LookupField = 'DPTOID'
      Color = 13165023
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnExit = dblcdDeptoExit
    end
    object dbeProvincia: TwwDBEdit
      Left = 266
      Top = 18
      Width = 215
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
    object dbeDepto: TwwDBEdit
      Left = 58
      Top = 18
      Width = 154
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      Enabled = False
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object Z2bbtnAceptar: TfcShapeBtn
      Left = 443
      Top = 95
      Width = 31
      Height = 33
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
      TabOrder = 13
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = Z2bbtnAceptarClick
    end
    object dblcduse: TwwDBLookupComboDlg
      Left = 511
      Top = 61
      Width = 55
      Height = 21
      BorderStyle = bsNone
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'USE'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'USEID'#9'3'#9'Use'#9'F'
        'USENOM'#9'75'#9'Nombre'#9'F')
      LookupTable = DM1.cdsUse
      LookupField = 'USEID'
      Color = 13165023
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      TabOrder = 9
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      UseTFields = False
      OnExit = dblcduseExit
    end
    object dblcdAso: TwwDBEdit
      Left = 4
      Top = 106
      Width = 127
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      Frame.Enabled = True
      Frame.Transparent = True
      Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
      Frame.NonFocusStyle = efsFrameSunken
      TabOrder = 10
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnExit = dblcdAsoExit
    end
    object bbtnFiltroAso: TButton
      Left = 112
      Top = 107
      Width = 17
      Height = 18
      Caption = '...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      OnClick = bbtnFiltroAsoClick
    end
    object btnImprime: TfcShapeBtn
      Left = 663
      Top = 95
      Width = 31
      Height = 33
      Hint = 'Imprime Estado de Cuenta Individual'
      Color = 13165023
      DitherColor = clWhite
      Glyph.Data = {
        E6040000424DE604000000000000360000002800000014000000140000000100
        180000000000B0040000C40E0000C40E00000000000000000000FFFFFFC0C0C0
        FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFC0C0C0FFFF
        FFC0C0C0FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFC0C0C0C0C0C000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000FFFFFFC0C0C0FFFFFFFFFFFF8080808080808080808080
        8080808080808080808080808080808080808080808080808080808080808080
        8080808080C0C0C0FFFFFFC0C0C0406060C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08080
        80000000C0C0C0FFFFFF000000FFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0808080
        000000C0C0C0000000FFFFFF0000FF0000FF0000FFC0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C080808080808000
        0000406060FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8080808080800000004060
        60FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080808080000000FFFFFF000000
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0FFFFFF808080000000C0C0C0FFFFFF00000000
        0000C0C0C0406060000000000000000000000000000000000000000000000000
        000000000000000000406060FFFFFF000000FFFFFFC0C0C0FFFFFFC0C0C00000
        00000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF000000000000000000C0C0C0C0C0C0FFFFFFC0C0C0FFFFFFC0C0C080A0A0
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        00FFFFFFC0C0C0FFFFFFFFFFFFC0C0C0FFFFFFC0C0C0FFFFFF80A0A0000000FF
        FFFF40000040000040000040000040000040000040000080A0A0000000C0C0C0
        FFFFFFC0C0C0C0C0C0FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFC0C0C0000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000C0C0C0FF
        FFFFFFFFFFC0C0C0FFFFFFC0C0C0FFFFFFC0C0C0FFFFFF000000FFFFFF400000
        40000040000040000040000040000080A0A0FFFFFF000000FFFFFFC0C0C0C0C0
        C0FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFC0C0C0FFFFFF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0C0FFFFFFFFFFFFC0C0C0
        FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFC0C0C0000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFC0C0C0C0C0C0FFFFFFC0C0C0FF
        FFFFC0C0C0FFFFFFC0C0C0FFFFFF000000000000000000000000000000000000
        000000000000000000000000C0C0C0FFFFFFFFFFFFC0C0C0FFFFFFC0C0C0FFFF
        FFC0C0C0FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFC0
        C0C0FFFFFFC0C0C0FFFFFFC0C0C0C0C0C0FFFFFFC0C0C0FFFFFFC0C0C0FFFFFF
        C0C0C0FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFC0C0C0FFFFFFC0C0
        C0FFFFFFC0C0C0FFFFFF}
      NumGlyphs = 0
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsRoundRect
      ShowHint = True
      TabOrder = 14
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = btnImprimeClick
    end
    object bbtnSalir: TfcShapeBtn
      Left = 748
      Top = 95
      Width = 64
      Height = 33
      Hint = 'Salir'
      Caption = '&Salir'
      Color = 13165023
      DitherColor = clWhite
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
        0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
        0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
        0333337F777FFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsRoundRect
      ShowHint = True
      TabOrder = 16
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnSalirClick
    end
    object bbtnBorrar: TfcShapeBtn
      Left = 708
      Top = 95
      Width = 31
      Height = 33
      Hint = 'Limpiar'
      Color = 13165023
      DitherColor = clWhite
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
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsRoundRect
      ShowHint = True
      TabOrder = 15
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnBorrarClick
    end
    object dbeAsociado: TwwDBEdit
      Left = 133
      Top = 105
      Width = 298
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      Frame.Enabled = True
      Frame.Transparent = True
      Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
      Frame.NonFocusStyle = efsFrameSunken
      TabOrder = 12
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeUPago: TwwDBEdit
      Left = 307
      Top = 61
      Width = 204
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
    object dblcUPago: TwwDBLookupComboDlg
      Left = 252
      Top = 61
      Width = 55
      Height = 21
      BorderStyle = bsNone
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Unidad de Pago'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'UPAGOID'#9'3'#9'Id'#9'F'
        'UPAGONOM'#9'40'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.cdsUPago
      LookupField = 'UPAGOID'
      Color = 13165023
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      TabOrder = 6
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      UseTFields = False
      OnExit = dblcUPagoExit
    end
    object rgReportes: TRadioGroup
      Left = 487
      Top = 85
      Width = 159
      Height = 54
      Caption = 'Reportes '
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Control'
        'Asociado')
      TabOrder = 17
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DM1.dsReporte2
    AutoCreateFields = False
    UserName = 'DBPipeline1'
    Left = 514
    Top = 5
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report1'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\SOLExes\SOLFormatos\Apo\Dema\Cuenta Individual.rtm'
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppReport1PreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 586
    Top = 5
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 25665
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 13494
        mmTop = 11906
        mmWidth = 35983
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Fecha :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 160338
        mmTop = 7673
        mmWidth = 8731
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 174361
        mmTop = 7673
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'PREVISION SOCIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 17463
        mmTop = 16404
        mmWidth = 29104
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Hora :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 160602
        mmTop = 12435
        mmWidth = 7673
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 174361
        mmTop = 12435
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'P'#225'gina :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 160867
        mmTop = 17198
        mmWidth = 9790
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 174625
        mmTop = 17727
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'ESTADO DE CUENTA INDIVIDUAL DE APORTES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 64029
        mmTop = 20638
        mmWidth = 66675
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppLabel29: TppLabel
        UserName = 'Label29'
        Caption = '/'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 93398
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'FREG'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'dd/mm/yy'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 1852
        mmTop = 0
        mmWidth = 13229
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'TRANSNOPE'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 31221
        mmTop = 265
        mmWidth = 20373
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'FORPAGOABR'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2910
        mmLeft = 52388
        mmTop = 265
        mmWidth = 32808
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'TRANSANO'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 86254
        mmTop = 0
        mmWidth = 6879
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'TRANSMES'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 94456
        mmTop = 0
        mmWidth = 3440
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'SALDOANT'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 101071
        mmTop = 0
        mmWidth = 16669
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'INTERESMTO'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 117740
        mmTop = 0
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        DataField = 'BONUSMTO'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 133086
        mmTop = 0
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        DataField = 'TRANSMTO'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 148432
        mmTop = 0
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        DataField = 'TRANSMTODEV'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 163513
        mmTop = 0
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        DataField = 'SALDO'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 178594
        mmTop = 0
        mmWidth = 18785
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        DataField = 'TRANSFOPE'
        DataPipeline = ppDBPipeline1
        DisplayFormat = 'dd/mm/yy'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 16669
        mmTop = 0
        mmWidth = 13494
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 9790
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        UserName = 'RepDevolucionesxEfectuar1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 3969
        mmWidth = 203200
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = ppDBPipeline2
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'ChildReport1'
          PrinterSetup.PaperName = 'Carta'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 279401
          PrinterSetup.mmPaperWidth = 215900
          PrinterSetup.PaperSize = 1
          Template.FileName = 'C:\SOLExes\SOLFormatos\Apo\Dema\Cuenta Individual.rtm'
          Left = 360
          Top = 200
          Version = '7.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipeline2'
          object ppTitleBand2: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 16933
            mmPrintPosition = 0
            object ppLabel77: TppLabel
              UserName = 'Label77'
              Caption = 'DEVOLUCIONES POR FECTUAR :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 9790
              mmTop = 1058
              mmWidth = 42069
              BandType = 1
            end
            object ppLine1: TppLine
              UserName = 'Line1'
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 9790
              mmTop = 6085
              mmWidth = 114300
              BandType = 1
            end
            object ppLabel78: TppLabel
              UserName = 'Label78'
              Caption = 'Mes de Aporte'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              WordWrap = True
              mmHeight = 7408
              mmLeft = 12700
              mmTop = 7408
              mmWidth = 10054
              BandType = 1
            end
            object ppLabel79: TppLabel
              UserName = 'Label79'
              Caption = 'A'#241'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 41275
              mmTop = 7144
              mmWidth = 5292
              BandType = 1
            end
            object ppLabel80: TppLabel
              UserName = 'Label80'
              Caption = 'Importe'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 55033
              mmTop = 7144
              mmWidth = 9260
              BandType = 1
            end
            object ppLabel81: TppLabel
              UserName = 'Label81'
              Caption = 'Fecha de Operaci'#243'n'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              WordWrap = True
              mmHeight = 7408
              mmLeft = 75406
              mmTop = 7408
              mmWidth = 13229
              BandType = 1
            end
            object ppLabel82: TppLabel
              UserName = 'Label82'
              Caption = 'N'#176' Documento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              WordWrap = True
              mmHeight = 7408
              mmLeft = 99219
              mmTop = 7673
              mmWidth = 14288
              BandType = 1
            end
            object ppLine2: TppLine
              UserName = 'Line2'
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 9790
              mmTop = 15875
              mmWidth = 114300
              BandType = 1
            end
            object ppShape7: TppShape
              UserName = 'Shape7'
              mmHeight = 10054
              mmLeft = 124090
              mmTop = 6085
              mmWidth = 265
              BandType = 1
            end
            object ppShape8: TppShape
              UserName = 'Shape8'
              mmHeight = 10054
              mmLeft = 93927
              mmTop = 6085
              mmWidth = 265
              BandType = 1
            end
            object ppShape9: TppShape
              UserName = 'Shape9'
              mmHeight = 10054
              mmLeft = 69321
              mmTop = 6085
              mmWidth = 265
              BandType = 1
            end
            object ppShape10: TppShape
              UserName = 'Shape10'
              mmHeight = 10054
              mmLeft = 50536
              mmTop = 6085
              mmWidth = 265
              BandType = 1
            end
            object ppShape11: TppShape
              UserName = 'Shape11'
              mmHeight = 10054
              mmLeft = 36513
              mmTop = 6085
              mmWidth = 265
              BandType = 1
            end
            object ppShape12: TppShape
              UserName = 'Shape12'
              mmHeight = 10054
              mmLeft = 9790
              mmTop = 6085
              mmWidth = 265
              BandType = 1
            end
          end
          object ppDetailBand4: TppDetailBand
            BeforePrint = ppDetailBand4BeforePrint
            mmBottomOffset = 0
            mmHeight = 5821
            mmPrintPosition = 0
            object ppDBText25: TppDBText
              UserName = 'DBText25'
              DataField = 'TRANSANO'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 3704
              mmLeft = 30956
              mmTop = 794
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText26: TppDBText
              UserName = 'DBText26'
              AutoSize = True
              DataField = 'MES'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 3704
              mmLeft = 10848
              mmTop = 794
              mmWidth = 5556
              BandType = 4
            end
            object ppDBText51: TppDBText
              UserName = 'DBText51'
              DataField = 'TRANSMTO'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0.00; -#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 3704
              mmLeft = 50271
              mmTop = 794
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText52: TppDBText
              UserName = 'DBText52'
              AutoSize = True
              DataField = 'TRANSNOPE'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 3704
              mmLeft = 99484
              mmTop = 794
              mmWidth = 16404
              BandType = 4
            end
            object ppDBText53: TppDBText
              UserName = 'DBText501'
              DataField = 'TRANSFOPE'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 3704
              mmLeft = 72761
              mmTop = 794
              mmWidth = 17198
              BandType = 4
            end
          end
        end
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'DPTOID'
      OutlineSettings.CreateNode = True
      NewPage = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'CIUID'
      OutlineSettings.CreateNode = True
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand3: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup4: TppGroup
      BreakName = 'UPROID'
      OutlineSettings.CreateNode = True
      UserName = 'Group4'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand4: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup9: TppGroup
      BreakName = 'USEID'
      OutlineSettings.CreateNode = True
      UserName = 'Group9'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand9: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand9: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup10: TppGroup
      BreakName = 'ASOID'
      OutlineSettings.CreateNode = True
      NewPage = True
      UserName = 'Group10'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand10: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 52652
        mmPrintPosition = 0
        object ppLabel18: TppLabel
          UserName = 'Label18'
          Caption = 'Fecha Registro'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 7408
          mmLeft = 2117
          mmTop = 41275
          mmWidth = 10054
          BandType = 3
          GroupNo = 4
        end
        object ppLabel19: TppLabel
          UserName = 'Label19'
          Caption = 'Fecha Operaci'#243'n'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 7408
          mmLeft = 16140
          mmTop = 41275
          mmWidth = 12700
          BandType = 3
          GroupNo = 4
        end
        object ppLabel20: TppLabel
          UserName = 'Label20'
          Caption = 'N'#250'mero Operaci'#243'n'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 7408
          mmLeft = 32544
          mmTop = 41275
          mmWidth = 12700
          BandType = 3
          GroupNo = 4
        end
        object ppLabel21: TppLabel
          UserName = 'Label21'
          Caption = 'Forma de Pago'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 52388
          mmTop = 44715
          mmWidth = 18256
          BandType = 3
          GroupNo = 4
        end
        object ppLabel22: TppLabel
          UserName = 'Label22'
          Caption = 'Periodo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 85461
          mmTop = 44715
          mmWidth = 9525
          BandType = 3
          GroupNo = 4
        end
        object ppLabel23: TppLabel
          UserName = 'Label23'
          Caption = 'Capital Acumulado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 7408
          mmLeft = 101600
          mmTop = 41275
          mmWidth = 13494
          BandType = 3
          GroupNo = 4
        end
        object ppLabel24: TppLabel
          UserName = 'Label24'
          Caption = 'Inter'#233's'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 120650
          mmTop = 44715
          mmWidth = 8467
          BandType = 3
          GroupNo = 4
        end
        object ppLabel25: TppLabel
          UserName = 'Label25'
          Caption = 'Bonus'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 138642
          mmTop = 44715
          mmWidth = 7408
          BandType = 3
          GroupNo = 4
        end
        object ppLabel26: TppLabel
          UserName = 'Label26'
          Caption = 'Aporte'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 151871
          mmTop = 44715
          mmWidth = 8731
          BandType = 3
          GroupNo = 4
        end
        object ppLabel27: TppLabel
          UserName = 'Label27'
          Caption = 'Devoluc'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 165894
          mmTop = 44715
          mmWidth = 10319
          BandType = 3
          GroupNo = 4
        end
        object ppLabel28: TppLabel
          UserName = 'Label28'
          Caption = 'Total Acumulado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 7408
          mmLeft = 183886
          mmTop = 41275
          mmWidth = 13494
          BandType = 3
          GroupNo = 4
        end
        object ppLabel36: TppLabel
          UserName = 'Label36'
          Caption = 
            '(*) a Diciembre 1998 - Bonus=1%, a partir de Enero 1999 - Bonus ' +
            '= 0.5%'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 6350
          mmTop = 33602
          mmWidth = 90752
          BandType = 3
          GroupNo = 4
        end
        object ppLabel9: TppLabel
          UserName = 'Label9'
          Caption = 'C'#243'digo Modular :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 2910
          mmTop = 5292
          mmWidth = 20902
          BandType = 3
          GroupNo = 4
        end
        object ppLabel10: TppLabel
          UserName = 'Label10'
          Caption = 'USE : '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 2910
          mmTop = 10319
          mmWidth = 7673
          BandType = 3
          GroupNo = 4
        end
        object ppLabel11: TppLabel
          UserName = 'Label11'
          Caption = 'Unidad de Pago : '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 2910
          mmTop = 15346
          mmWidth = 21167
          BandType = 3
          GroupNo = 4
        end
        object ppLabel12: TppLabel
          UserName = 'Label12'
          Caption = 'Res. Nombramiento :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 2910
          mmTop = 20373
          mmWidth = 25929
          BandType = 3
          GroupNo = 4
        end
        object ppLabel13: TppLabel
          UserName = 'Label13'
          Caption = 'Fecha.Res.Nombramiento :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 53181
          mmTop = 20373
          mmWidth = 33073
          BandType = 3
          GroupNo = 4
        end
        object ppLabel14: TppLabel
          UserName = 'Label14'
          Caption = 'A'#241'os de Aportes a '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 2910
          mmTop = 25400
          mmWidth = 23283
          BandType = 3
          GroupNo = 4
        end
        object ppLabel15: TppLabel
          UserName = 'Label15'
          Caption = 'Unidad de Proceso : '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 112184
          mmTop = 10319
          mmWidth = 24871
          BandType = 3
          GroupNo = 4
        end
        object ppDBText17: TppDBText
          UserName = 'DBText17'
          DataField = 'ASOAPENOM'
          DataPipeline = ppDBPipeline1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3704
          mmLeft = 112184
          mmTop = 5292
          mmWidth = 77258
          BandType = 3
          GroupNo = 4
        end
        object ppLabel34: TppLabel
          UserName = 'Label34'
          Caption = 'Res. Cese : '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 112184
          mmTop = 20373
          mmWidth = 13758
          BandType = 3
          GroupNo = 4
        end
        object ppLabel35: TppLabel
          UserName = 'Label35'
          Caption = 'Fec. Res. Cese : '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 148432
          mmTop = 20373
          mmWidth = 19579
          BandType = 3
          GroupNo = 4
        end
        object ppDBText1: TppDBText
          UserName = 'DBText1'
          DataField = 'ASOCODMOD'
          DataPipeline = ppDBPipeline1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3704
          mmLeft = 30692
          mmTop = 5292
          mmWidth = 20373
          BandType = 3
          GroupNo = 4
        end
        object ppDBText4: TppDBText
          UserName = 'DBText4'
          DataField = 'ASORESNOM'
          DataPipeline = ppDBPipeline1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3704
          mmLeft = 30956
          mmTop = 20373
          mmWidth = 19050
          BandType = 3
          GroupNo = 4
        end
        object ppDBText5: TppDBText
          UserName = 'DBText5'
          DataField = 'ASOFRESNOM'
          DataPipeline = ppDBPipeline1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3704
          mmLeft = 87313
          mmTop = 20373
          mmWidth = 14817
          BandType = 3
          GroupNo = 4
        end
        object ppDBText7: TppDBText
          UserName = 'DBText7'
          DataField = 'ASORESCESE'
          DataPipeline = ppDBPipeline1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3704
          mmLeft = 126736
          mmTop = 20373
          mmWidth = 17198
          BandType = 3
          GroupNo = 4
        end
        object ppDBText8: TppDBText
          UserName = 'DBText8'
          DataField = 'ASOFRESCESE'
          DataPipeline = ppDBPipeline1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3704
          mmLeft = 168805
          mmTop = 20373
          mmWidth = 17198
          BandType = 3
          GroupNo = 4
        end
        object ppDBText2: TppDBText
          UserName = 'DBText2'
          DataField = 'USEABR'
          DataPipeline = ppDBPipeline1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3704
          mmLeft = 30692
          mmTop = 10319
          mmWidth = 73554
          BandType = 3
          GroupNo = 4
        end
        object ppDBText6: TppDBText
          UserName = 'DBText6'
          DataField = 'UPROABR'
          DataPipeline = ppDBPipeline1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3704
          mmLeft = 137584
          mmTop = 10319
          mmWidth = 51858
          BandType = 3
          GroupNo = 4
        end
        object ppDBText10: TppDBText
          UserName = 'DBText10'
          DataField = 'AAPOR'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3704
          mmLeft = 48419
          mmTop = 25400
          mmWidth = 5292
          BandType = 3
          GroupNo = 4
        end
        object ppDBText23: TppDBText
          UserName = 'DBText23'
          DataField = 'ASOFRESNOM'
          DataPipeline = ppDBPipeline1
          DisplayFormat = 'YYYY'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          Visible = False
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3704
          mmLeft = 30692
          mmTop = 25400
          mmWidth = 7408
          BandType = 3
          GroupNo = 4
        end
        object ppLabel8: TppLabel
          UserName = 'Label8'
          Caption = 'A'#241'os'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 54240
          mmTop = 25400
          mmWidth = 6350
          BandType = 3
          GroupNo = 4
        end
        object ppLabel37: TppLabel
          UserName = 'Label37'
          Caption = '-->'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 41275
          mmTop = 25400
          mmWidth = 3704
          BandType = 3
          GroupNo = 4
        end
        object ppLabel38: TppLabel
          UserName = 'Label32'
          Caption = '1986'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 30692
          mmTop = 25400
          mmWidth = 6350
          BandType = 3
          GroupNo = 4
        end
        object ppLabel39: TppLabel
          UserName = 'Label38'
          Caption = 'Capital Acumulado a Diciembre de 1996'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3704
          mmLeft = 74083
          mmTop = 25400
          mmWidth = 48948
          BandType = 3
          GroupNo = 4
        end
        object ppSalAnt: TppLabel
          UserName = 'Label39'
          Caption = '.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 133350
          mmTop = 25400
          mmWidth = 794
          BandType = 3
          GroupNo = 4
        end
        object ppDBText3: TppDBText
          UserName = 'DBText3'
          DataField = 'UPAGOABR'
          DataPipeline = ppDBPipeline1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3704
          mmLeft = 32279
          mmTop = 15346
          mmWidth = 73554
          BandType = 3
          GroupNo = 4
        end
        object ppLine3: TppLine
          UserName = 'Line3'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 1323
          mmTop = 2381
          mmWidth = 193675
          BandType = 3
          GroupNo = 4
        end
        object ppLine4: TppLine
          UserName = 'Line4'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 1323
          mmTop = 31221
          mmWidth = 193675
          BandType = 3
          GroupNo = 4
        end
        object ppLine5: TppLine
          UserName = 'Line5'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 1323
          mmTop = 50800
          mmWidth = 193675
          BandType = 3
          GroupNo = 4
        end
        object ppLine11: TppLine
          UserName = 'Line11'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 1323
          mmTop = 39423
          mmWidth = 193675
          BandType = 3
          GroupNo = 4
        end
      end
      object ppGroupFooterBand10: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 17727
        mmPrintPosition = 0
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'SALDOANT'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup10
          TextAlignment = taRightJustified
          Transparent = True
          Visible = False
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3704
          mmLeft = 102394
          mmTop = 4498
          mmWidth = 15346
          BandType = 5
          GroupNo = 4
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          DataField = 'INTERESMTO'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup10
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3704
          mmLeft = 118534
          mmTop = 4498
          mmWidth = 14288
          BandType = 5
          GroupNo = 4
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          DataField = 'BONUSMTO'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup10
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3704
          mmLeft = 133350
          mmTop = 4498
          mmWidth = 14817
          BandType = 5
          GroupNo = 4
        end
        object ppDBCalc4: TppDBCalc
          UserName = 'DBCalc4'
          DataField = 'TRANSMTO'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup10
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3704
          mmLeft = 148696
          mmTop = 4498
          mmWidth = 15081
          BandType = 5
          GroupNo = 4
        end
        object ppDBCalc5: TppDBCalc
          UserName = 'DBCalc5'
          DataField = 'TRANSMTODEV'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup10
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3704
          mmLeft = 164042
          mmTop = 4498
          mmWidth = 14288
          BandType = 5
          GroupNo = 4
        end
        object ppLabel33: TppLabel
          UserName = 'Label33'
          Caption = 
            'Capital Acumulado a la fecha de Emisi'#243'n de este Reporte :       ' +
            '         S/.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 10319
          mmTop = 13494
          mmWidth = 86519
          BandType = 5
          GroupNo = 4
        end
        object ppDBCalc6: TppDBCalc
          UserName = 'DBCalc6'
          DataField = 'SALDO'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup10
          TextAlignment = taRightJustified
          Transparent = True
          Visible = False
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3704
          mmLeft = 178594
          mmTop = 4498
          mmWidth = 18785
          BandType = 5
          GroupNo = 4
        end
        object ppDBCalc7: TppDBCalc
          UserName = 'DBCalc7'
          DataField = 'SALDO'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0.00;-#,0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup10
          TextAlignment = taRightJustified
          Transparent = True
          Visible = False
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3440
          mmLeft = 129382
          mmTop = 14023
          mmWidth = 20373
          BandType = 5
          GroupNo = 4
        end
        object ppSalAct: TppLabel
          UserName = 'SalAct'
          Caption = '.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 101336
          mmTop = 13758
          mmWidth = 794
          BandType = 5
          GroupNo = 4
        end
        object ppLine13: TppLine
          UserName = 'Line13'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 1323
          mmTop = 1852
          mmWidth = 193675
          BandType = 5
          GroupNo = 4
        end
        object ppLine15: TppLine
          UserName = 'Line15'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 1323
          mmTop = 10583
          mmWidth = 193675
          BandType = 5
          GroupNo = 4
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
    Report = ppReport1
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 771
    Top = 5
  end
  object ppRepControl: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Data1'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 
      'C:\SOLExes\SOLFormatos\Apo\Dema\Cuenta Individual Control Aporte' +
      's.rtm'
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppRepControlPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 666
    Top = 5
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 39688
      mmPrintPosition = 0
      object ppLabel40: TppLabel
        UserName = 'Label401'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 13494
        mmTop = 16404
        mmWidth = 34396
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label1'
        Caption = 'Fecha :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 160338
        mmTop = 12171
        mmWidth = 8731
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 174361
        mmTop = 12171
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label40'
        Caption = 'PREVISION SOCIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 17463
        mmTop = 20902
        mmWidth = 29104
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label41'
        Caption = 'Hora :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 160602
        mmTop = 16933
        mmWidth = 7673
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable5'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 174361
        mmTop = 16933
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label42'
        Caption = 'P'#225'gina :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 160867
        mmTop = 21696
        mmWidth = 9790
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable6'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 174625
        mmTop = 21696
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label43'
        Caption = 'ESTADO DE CUENTA INDIVIDUAL DE APORTES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 60590
        mmTop = 28575
        mmWidth = 66675
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppLabel46: TppLabel
        UserName = 'Label44'
        Caption = '/'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 29369
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        DataField = 'TRANSANO'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 31221
        mmTop = 0
        mmWidth = 6615
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        AutoSize = True
        DataField = 'MES'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 11113
        mmTop = 0
        mmWidth = 5556
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        DataField = 'SALDOANT'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 89959
        mmTop = 0
        mmWidth = 16669
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText30'
        DataField = 'INTERESMTO'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 109009
        mmTop = 0
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText31'
        DataField = 'BONUSMTO'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 126207
        mmTop = 0
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'DBText32'
        DataField = 'TRANSMTO'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 142875
        mmTop = 0
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText201'
        DataField = 'TRANSMTODEV'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 159809
        mmTop = 0
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText34: TppDBText
        UserName = 'DBText34'
        DataField = 'SALDO'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 177007
        mmTop = 0
        mmWidth = 18785
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        DataField = 'USEABR'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 40746
        mmTop = 0
        mmWidth = 47625
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand2: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 13494
      mmPrintPosition = 0
      object ppLabel73: TppLabel
        UserName = 'Label73'
        Caption = 
          'Capital Acumulado a la fecha de Emisi'#243'n de este Reporte :       ' +
          '         S/.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 8202
        mmTop = 529
        mmWidth = 90223
        BandType = 7
      end
      object pplblCapAcum: TppLabel
        UserName = 'lblCapAcum'
        Caption = 'lblCapAcum'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 103452
        mmTop = 529
        mmWidth = 17463
        BandType = 7
      end
      object RepDevolucionesxEfectuar: TppSubReport
        UserName = 'RepDevolucionesxEfectuar'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 7408
        mmWidth = 203200
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppDBPipeline2
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'ChildReport1'
          PrinterSetup.PaperName = 'Carta'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 279401
          PrinterSetup.mmPaperWidth = 215900
          PrinterSetup.PaperSize = 1
          Template.FileName = 
            'C:\SOLExes\SOLFormatos\Apo\Dema\Cuenta Individual Control Aporte' +
            's.rtm'
          Left = 360
          Top = 200
          Version = '7.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipeline2'
          object ppTitleBand1: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 16933
            mmPrintPosition = 0
            object ppLabel56: TppLabel
              UserName = 'Label56'
              Caption = 'DEVOLUCIONES POR FECTUAR :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 9790
              mmTop = 1058
              mmWidth = 42069
              BandType = 1
            end
            object ppLine12: TppLine
              UserName = 'Line12'
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 9790
              mmTop = 6085
              mmWidth = 114300
              BandType = 1
            end
            object ppLabel58: TppLabel
              UserName = 'Label58'
              Caption = 'Mes de Aporte'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              WordWrap = True
              mmHeight = 7408
              mmLeft = 12700
              mmTop = 7408
              mmWidth = 10054
              BandType = 1
            end
            object ppLabel69: TppLabel
              UserName = 'Label69'
              Caption = 'A'#241'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 41275
              mmTop = 7144
              mmWidth = 5292
              BandType = 1
            end
            object ppLabel72: TppLabel
              UserName = 'Label45'
              Caption = 'Importe'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 55033
              mmTop = 7144
              mmWidth = 9260
              BandType = 1
            end
            object ppLabel74: TppLabel
              UserName = 'Label74'
              Caption = 'Fecha de Operaci'#243'n'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              WordWrap = True
              mmHeight = 7408
              mmLeft = 75406
              mmTop = 7408
              mmWidth = 13229
              BandType = 1
            end
            object ppLabel75: TppLabel
              UserName = 'Label75'
              Caption = 'N'#176' Documento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              WordWrap = True
              mmHeight = 7408
              mmLeft = 99219
              mmTop = 7673
              mmWidth = 14288
              BandType = 1
            end
            object ppLine14: TppLine
              UserName = 'Line14'
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 9790
              mmTop = 15875
              mmWidth = 114300
              BandType = 1
            end
            object ppShape1: TppShape
              UserName = 'Shape1'
              mmHeight = 10054
              mmLeft = 124090
              mmTop = 6085
              mmWidth = 265
              BandType = 1
            end
            object ppShape2: TppShape
              UserName = 'Shape2'
              mmHeight = 10054
              mmLeft = 93927
              mmTop = 6085
              mmWidth = 265
              BandType = 1
            end
            object ppShape3: TppShape
              UserName = 'Shape3'
              mmHeight = 10054
              mmLeft = 69321
              mmTop = 6085
              mmWidth = 265
              BandType = 1
            end
            object ppShape4: TppShape
              UserName = 'Shape4'
              mmHeight = 10054
              mmLeft = 50536
              mmTop = 6085
              mmWidth = 265
              BandType = 1
            end
            object ppShape5: TppShape
              UserName = 'Shape5'
              mmHeight = 10054
              mmLeft = 36513
              mmTop = 6085
              mmWidth = 265
              BandType = 1
            end
            object ppShape6: TppShape
              UserName = 'Shape6'
              mmHeight = 10054
              mmLeft = 9790
              mmTop = 6085
              mmWidth = 265
              BandType = 1
            end
          end
          object ppDetailBand3: TppDetailBand
            BeforePrint = ppDetailBand3BeforePrint
            mmBottomOffset = 0
            mmHeight = 5821
            mmPrintPosition = 0
            object ppDBText35: TppDBText
              UserName = 'DBText35'
              DataField = 'TRANSANO'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 3704
              mmLeft = 30956
              mmTop = 794
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText47: TppDBText
              UserName = 'DBText47'
              AutoSize = True
              DataField = 'MES'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 3704
              mmLeft = 10848
              mmTop = 794
              mmWidth = 5556
              BandType = 4
            end
            object ppDBText48: TppDBText
              UserName = 'DBText48'
              DataField = 'TRANSMTO'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0.00; -#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 3704
              mmLeft = 50271
              mmTop = 794
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText49: TppDBText
              UserName = 'DBText49'
              AutoSize = True
              DataField = 'TRANSNOPE'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 3704
              mmLeft = 99484
              mmTop = 794
              mmWidth = 16404
              BandType = 4
            end
            object ppDBText50: TppDBText
              UserName = 'DBText50'
              DataField = 'TRANSFOPE'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 3704
              mmLeft = 72761
              mmTop = 794
              mmWidth = 17198
              BandType = 4
            end
          end
        end
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'DPTOID'
      OutlineSettings.CreateNode = True
      NewPage = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
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
    object ppGroup5: TppGroup
      BreakName = 'CIUID'
      OutlineSettings.CreateNode = True
      UserName = 'Group5'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
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
    object ppGroup6: TppGroup
      BreakName = 'UPROID'
      OutlineSettings.CreateNode = True
      UserName = 'Group6'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
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
      OutlineSettings.CreateNode = True
      UserName = 'Group7'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
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
      OutlineSettings.CreateNode = True
      NewPage = True
      UserName = 'Group8'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand8: TppGroupHeaderBand
        BeforePrint = ppGroupHeaderBand8BeforePrint
        mmBottomOffset = 0
        mmHeight = 54240
        mmPrintPosition = 0
        object ppLabel50: TppLabel
          UserName = 'Label50'
          Caption = 'Periodo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 10583
          mmTop = 48154
          mmWidth = 9525
          BandType = 3
          GroupNo = 4
        end
        object ppLabel51: TppLabel
          UserName = 'Label51'
          Caption = 'Capital Acumulado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 7408
          mmLeft = 91017
          mmTop = 44450
          mmWidth = 14288
          BandType = 3
          GroupNo = 4
        end
        object ppLabel52: TppLabel
          UserName = 'Label52'
          Caption = 'Interes'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 110331
          mmTop = 48154
          mmWidth = 8731
          BandType = 3
          GroupNo = 4
        end
        object ppLabel53: TppLabel
          UserName = 'Label53'
          Caption = 'Bonus'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 129646
          mmTop = 48154
          mmWidth = 8202
          BandType = 3
          GroupNo = 4
        end
        object ppLabel54: TppLabel
          UserName = 'Label54'
          Caption = 'Aporte'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 146315
          mmTop = 48154
          mmWidth = 8731
          BandType = 3
          GroupNo = 4
        end
        object ppLabel55: TppLabel
          UserName = 'Label55'
          Caption = 'Devoluc.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 161396
          mmTop = 48154
          mmWidth = 11113
          BandType = 3
          GroupNo = 4
        end
        object ppLabel57: TppLabel
          UserName = 'Label57'
          Caption = 'Total Acumulado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          WordWrap = True
          mmHeight = 7408
          mmLeft = 177800
          mmTop = 44450
          mmWidth = 14288
          BandType = 3
          GroupNo = 4
        end
        object ppLabel59: TppLabel
          UserName = 'Label59'
          Caption = 
            '(*) a Diciembre 1998 - Bonus=1%, a partir de Enero 1999 - Bonus ' +
            '= 0.5%'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 12965
          mmTop = 37306
          mmWidth = 90752
          BandType = 3
          GroupNo = 4
        end
        object ppLabel60: TppLabel
          UserName = 'Label60'
          Caption = 'C'#243'digo Modular :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 9790
          mmTop = 7144
          mmWidth = 20902
          BandType = 3
          GroupNo = 4
        end
        object ppLabel61: TppLabel
          UserName = 'Label101'
          Caption = 'USE : '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 9790
          mmTop = 12171
          mmWidth = 7673
          BandType = 3
          GroupNo = 4
        end
        object ppLabel62: TppLabel
          UserName = 'Label62'
          Caption = 'Unidad de Pago : '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 9790
          mmTop = 17198
          mmWidth = 21167
          BandType = 3
          GroupNo = 4
        end
        object ppLabel63: TppLabel
          UserName = 'Label63'
          Caption = 'Res. Nombramiento :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 9790
          mmTop = 22225
          mmWidth = 26194
          BandType = 3
          GroupNo = 4
        end
        object ppLabel64: TppLabel
          UserName = 'Label64'
          Caption = 'Fec.Res.Nomb. . '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 59531
          mmTop = 22225
          mmWidth = 21696
          BandType = 3
          GroupNo = 4
        end
        object ppLabel65: TppLabel
          UserName = 'Label65'
          Caption = 'A'#241'os de Aportes a '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 9790
          mmTop = 27252
          mmWidth = 25135
          BandType = 3
          GroupNo = 4
        end
        object ppLabel66: TppLabel
          UserName = 'Label66'
          Caption = 'Unidad de Proceso : '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 118534
          mmTop = 12171
          mmWidth = 26458
          BandType = 3
          GroupNo = 4
        end
        object ppDBText36: TppDBText
          UserName = 'DBText36'
          DataField = 'ASOAPENOM'
          DataPipeline = ppDBPipeline1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3704
          mmLeft = 118534
          mmTop = 7144
          mmWidth = 77258
          BandType = 3
          GroupNo = 4
        end
        object ppLabel67: TppLabel
          UserName = 'Label67'
          Caption = 'Res. Cese : '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 118534
          mmTop = 22225
          mmWidth = 15610
          BandType = 3
          GroupNo = 4
        end
        object ppLabel68: TppLabel
          UserName = 'Label68'
          Caption = 'Fec. Res. Cese : '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 154782
          mmTop = 22225
          mmWidth = 21960
          BandType = 3
          GroupNo = 4
        end
        object ppDBText37: TppDBText
          UserName = 'DBText37'
          DataField = 'ASOCODMOD'
          DataPipeline = ppDBPipeline1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3704
          mmLeft = 37042
          mmTop = 7144
          mmWidth = 20373
          BandType = 3
          GroupNo = 4
        end
        object ppDBText38: TppDBText
          UserName = 'DBText38'
          DataField = 'ASORESNOM'
          DataPipeline = ppDBPipeline1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3704
          mmLeft = 37306
          mmTop = 22225
          mmWidth = 19050
          BandType = 3
          GroupNo = 4
        end
        object ppDBText39: TppDBText
          UserName = 'DBText39'
          AutoSize = True
          DataField = 'ASOFRESNOM'
          DataPipeline = ppDBPipeline1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3704
          mmLeft = 82550
          mmTop = 22225
          mmWidth = 19050
          BandType = 3
          GroupNo = 4
        end
        object ppDBText40: TppDBText
          UserName = 'DBText40'
          DataField = 'ASORESCESE'
          DataPipeline = ppDBPipeline1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3704
          mmLeft = 134938
          mmTop = 22225
          mmWidth = 17198
          BandType = 3
          GroupNo = 4
        end
        object ppDBText41: TppDBText
          UserName = 'DBText41'
          DataField = 'ASOFRESCESE'
          DataPipeline = ppDBPipeline1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3704
          mmLeft = 177800
          mmTop = 22225
          mmWidth = 17198
          BandType = 3
          GroupNo = 4
        end
        object ppDBText42: TppDBText
          UserName = 'DBText42'
          DataField = 'USEN'
          DataPipeline = ppDBPipeline1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3704
          mmLeft = 37042
          mmTop = 12171
          mmWidth = 73554
          BandType = 3
          GroupNo = 4
        end
        object ppDBText43: TppDBText
          UserName = 'DBText43'
          DataField = 'UPAGON'
          DataPipeline = ppDBPipeline1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3704
          mmLeft = 37042
          mmTop = 17198
          mmWidth = 73554
          BandType = 3
          GroupNo = 4
        end
        object ppDBText44: TppDBText
          UserName = 'DBText44'
          DataField = 'UPRON'
          DataPipeline = ppDBPipeline1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3704
          mmLeft = 145786
          mmTop = 12171
          mmWidth = 51858
          BandType = 3
          GroupNo = 4
        end
        object ppDBText45: TppDBText
          UserName = 'DBText101'
          DataField = 'AAPOR'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3704
          mmLeft = 54769
          mmTop = 27252
          mmWidth = 5292
          BandType = 3
          GroupNo = 4
        end
        object ppDBText46: TppDBText
          UserName = 'DBText46'
          DataField = 'ASOFRESNOM'
          DataPipeline = ppDBPipeline1
          DisplayFormat = 'YYYY'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3704
          mmLeft = 37042
          mmTop = 27252
          mmWidth = 7408
          BandType = 3
          GroupNo = 4
        end
        object ppLabel70: TppLabel
          UserName = 'Label70'
          Caption = 'A'#241'os'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 60590
          mmTop = 27252
          mmWidth = 6350
          BandType = 3
          GroupNo = 4
        end
        object ppLabel71: TppLabel
          UserName = 'Label71'
          Caption = '-->'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 47625
          mmTop = 27517
          mmWidth = 3704
          BandType = 3
          GroupNo = 4
        end
        object ppdbUSE: TppDBText
          UserName = 'dbUSE'
          DataPipeline = ppDBPipeline1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3704
          mmLeft = 30692
          mmTop = 48154
          mmWidth = 17198
          BandType = 3
          GroupNo = 4
        end
        object ppLabel47: TppLabel
          UserName = 'Label46'
          Caption = 'Reg. Pen :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 118534
          mmTop = 17198
          mmWidth = 12965
          BandType = 3
          GroupNo = 4
        end
        object ppLabel48: TppLabel
          UserName = 'Label47'
          Caption = 'USE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 61913
          mmTop = 48154
          mmWidth = 5292
          BandType = 3
          GroupNo = 4
        end
        object ppdbRegPens: TppDBText
          UserName = 'dbRegPens'
          AutoSize = True
          DataField = 'REGIMEN'
          DataPipeline = ppDBPipeline1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3704
          mmLeft = 134144
          mmTop = 17198
          mmWidth = 11642
          BandType = 3
          GroupNo = 4
        end
        object ppLabel49: TppLabel
          UserName = 'Label49'
          Caption = 'Capital Acumulado a Diciembre de 1996 '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 99748
          mmTop = 27252
          mmWidth = 51065
          BandType = 3
          GroupNo = 4
        end
        object ppLabel76: TppLabel
          UserName = 'Label76'
          Caption = 'Label76'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 161132
          mmTop = 27252
          mmWidth = 10054
          BandType = 3
          GroupNo = 4
        end
        object ppLine6: TppLine
          UserName = 'Line6'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 9790
          mmTop = 43127
          mmWidth = 189971
          BandType = 3
          GroupNo = 4
        end
        object ppLine7: TppLine
          UserName = 'Line7'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 9790
          mmTop = 52652
          mmWidth = 189971
          BandType = 3
          GroupNo = 4
        end
        object ppLine8: TppLine
          UserName = 'Line8'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 9790
          mmTop = 34660
          mmWidth = 189971
          BandType = 3
          GroupNo = 4
        end
        object ppLine10: TppLine
          UserName = 'Line10'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 9790
          mmTop = 3969
          mmWidth = 189971
          BandType = 3
          GroupNo = 4
        end
      end
      object ppGroupFooterBand8: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 2381
        mmPrintPosition = 0
        object ppLine9: TppLine
          UserName = 'Line9'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 9790
          mmTop = 1058
          mmWidth = 189971
          BandType = 5
          GroupNo = 4
        end
      end
    end
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = DM1.dsQry3
    UserName = 'DBPipeline2'
    Left = 699
    Top = 5
  end
end
