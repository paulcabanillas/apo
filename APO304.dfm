object FReclamos: TFReclamos
  Left = 282
  Top = 217
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Aportes'
  ClientHeight = 543
  ClientWidth = 778
  Color = 10207162
  Font.Charset = ANSI_CHARSET
  Font.Color = clNavy
  Font.Height = -11
  Font.Name = 'Comic Sans MS'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  DesignSize = (
    778
    543)
  PixelsPerInch = 96
  TextHeight = 15
  object lblTitRecl: TLabel
    Left = 7
    Top = 6
    Width = 106
    Height = 58
    Alignment = taCenter
    AutoSize = False
    Caption = 'Reclamo de Aportes'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object TLabel
    Left = 8
    Top = 153
    Width = 56
    Height = 21
    Caption = 'Aportes'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object TLabel
    Left = 7
    Top = 329
    Width = 145
    Height = 21
    Caption = 'Aportes Reclamados'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblEstado: TLabel
    Left = 19
    Top = 515
    Width = 408
    Height = 23
    Alignment = taCenter
    AutoSize = False
    Caption = 'INICIAL'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object lblDevuelto: TLabel
    Left = 441
    Top = 515
    Width = 88
    Height = 23
    Alignment = taCenter
    AutoSize = False
    Caption = 'DEVUELTO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object pnlBtnPrin: TPanel
    Left = 647
    Top = 504
    Width = 132
    Height = 39
    BevelOuter = bvNone
    Color = 10207162
    TabOrder = 8
    object Z2bbtnNuevo: TfcShapeBtn
      Left = 15
      Top = 7
      Width = 32
      Height = 32
      Hint = 'Generar Nuevo'
      Color = 10207162
      DitherColor = clWhite
      Glyph.Data = {
        76010000424D760100000000000076000000280000001F000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333033333333333333333333333333333330333333333333
        333333333333333333303000000000003333337777777777733030FFFFFFFFF0
        3333337F33333333733030FFFFFFFFF03333337F33333333733030FFFFFFFFF0
        3333337F33333333733030FFFFFFFFF03333337F33333333733030FFFFFFFFF0
        3333337F33333333733030FFFFFFFFF03333337F33333FFF733030FFFF000000
        3333337F33337777733030FFFF00FF033333337F33337F37333030FFFF00F033
        3333337F33337F77333030FFFF0003333333337FFFFF77333330300000003333
        3333337777777333333033333333333333333333333333333330}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsRaised
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 0
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = Z2bbtnNuevoClick
    end
    object Z2bbtnAceptar: TfcShapeBtn
      Left = 55
      Top = 7
      Width = 32
      Height = 32
      Hint = 'Graba Reclamo'
      Color = 10207162
      DitherColor = clWhite
      Enabled = False
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
      ShadeStyle = fbsRaised
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 1
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = Z2bbtnAceptarClick
    end
    object Z2bbtnCancel: TfcShapeBtn
      Left = 95
      Top = 7
      Width = 32
      Height = 32
      Hint = 'Cancelar '
      Color = 10207162
      DitherColor = clWhite
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsRaised
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 2
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = Z2bbtnCancelClick
    end
  end
  object PnlDatos: TPanel
    Left = 5
    Top = 93
    Width = 769
    Height = 61
    BevelOuter = bvLowered
    Color = 13165023
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object lblCModular: TLabel
      Left = 8
      Top = 8
      Width = 86
      Height = 15
      Caption = 'C'#243'digo Modular :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object lblCPago: TLabel
      Left = 192
      Top = 8
      Width = 83
      Height = 15
      Caption = 'C'#243'digo de Pago :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object lblApeNom: TLabel
      Left = 6
      Top = 37
      Width = 110
      Height = 15
      Caption = 'Apellidos y Nombres :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object lblDIden: TLabel
      Left = 406
      Top = 8
      Width = 108
      Height = 15
      Caption = 'Doc. Identificaci'#243'n :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object lblN: TLabel
      Left = 632
      Top = 10
      Width = 14
      Height = 15
      Caption = 'N'#176
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object lblTipo: TLabel
      Left = 409
      Top = 37
      Width = 29
      Height = 15
      Caption = 'Tipo :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object lblSit: TLabel
      Left = 615
      Top = 38
      Width = 56
      Height = 15
      Caption = 'Situaci'#243'n :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object dbeCodigoModular: TwwDBEdit
      Left = 99
      Top = 5
      Width = 86
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeCodigoPago: TwwDBEdit
      Left = 275
      Top = 5
      Width = 124
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeAsoNom: TwwDBEdit
      Left = 118
      Top = 35
      Width = 282
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.FocusBorders = [efRightBorder, efBottomBorder]
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeDocIdNum: TwwDBEdit
      Left = 650
      Top = 5
      Width = 111
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeTipDoc: TwwDBEdit
      Left = 517
      Top = 6
      Width = 111
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 4
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeTipo: TwwDBEdit
      Left = 472
      Top = 34
      Width = 115
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.FocusBorders = [efRightBorder, efBottomBorder]
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 5
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeSit: TwwDBEdit
      Left = 683
      Top = 34
      Width = 77
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.FocusBorders = [efRightBorder, efBottomBorder]
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 6
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
  object dbgAportes: TwwDBGrid
    Left = 4
    Top = 176
    Width = 769
    Height = 154
    DisableThemesInTitle = False
    ControlInfoInDataset = False
    Selected.Strings = (
      'TRANSID'#9'10'#9'TRANSID'#9'F'
      'TRANSDES'#9'30'#9'ccccc'#9'F'
      'TRANSVALOR'#9'10'#9'TRANSVALOR'#9'F'
      'TRANTIPVAL'#9'1'#9'TRANTIPVAL'#9'F'
      'TRANSFCA'#9'10'#9'TRANSFCA'#9'F'
      'TRANSDEBE'#9'20'#9'TRANSDEBE'#9'F'
      'TRANSHABER'#9'20'#9'TRANSHABER'#9'F'
      'TRANSINTID'#9'3'#9'TRANSINTID'#9'F'
      'USUARIO'#9'10'#9'USUARIO'#9'F'
      'FREG'#9'18'#9'FREG'#9'F'
      'HREG'#9'18'#9'HREG'#9'F')
    MemoAttributes = [mSizeable, mWordWrap, mGridShow]
    IniAttributes.Delimiter = ';;'
    TitleColor = 10207162
    FixedCols = 0
    ShowHorzScrollBar = True
    BiDiMode = bdRightToLeftNoAlign
    ParentBiDiMode = False
    BorderStyle = bsNone
    Color = 13165023
    DataSource = DM1.dsTransaccion
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    KeyOptions = [dgEnterToTab, dgAllowDelete]
    MultiSelectOptions = [msoAutoUnselect, msoShiftSelect]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
    ParentFont = False
    TabOrder = 3
    TitleAlignment = taCenter
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -11
    TitleFont.Name = 'Comic Sans MS'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    UseTFields = False
    OnDragOver = dbgAportesDragOver
    OnEndDrag = dbgAportesEndDrag
    OnMouseDown = dbgAportesMouseDown
    object dbgAportesbtn: TwwIButton
      Left = 0
      Top = 0
      Width = 25
      Height = 22
      AllowAllUp = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
        000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000
        00000000000000FFFFFF000000FFFFFF000000000000000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF000000FFFFFF000000000000000000FFFFFF000000FFFFFF
        000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF0000
        00000000000000FFFFFF000000000000000000000000000000000000000000FF
        FFFF000000000000000000000000000000000000000000FFFFFF000000000000
        FFFFFF000000000000000000000000000000000000FFFFFF0000000000000000
        00000000000000FFFFFF000000000000FFFFFF000000000000000000C0C7C000
        0000000000FFFFFF000000000000000000000000000000FFFFFF000000000000
        FFFFFF000000000000000000C0C7C0000000000000FFFFFF0000000000000000
        00000000000000FFFFFFFFFFFF00000000000000000000000000000000000000
        0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF
        000000FFFFFF000000000000000000FFFFFF000000FFFFFF0000000000000000
        00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000FF
        FFFF000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000000000000000FFFFFFFFFFFFFFFFFF000000000000000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000000FFFFFFFF
        FFFFFFFFFF000000FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000000000000000FFFFFFFFFFFFFFFFFF000000000000000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = dbgAportesbtnClick
    end
  end
  object pnlInicio: TPanel
    Left = 125
    Top = 5
    Width = 649
    Height = 84
    BevelOuter = bvLowered
    Color = 13165023
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object lblUse: TLabel
      Left = 96
      Top = 44
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
    object lblCodigo: TLabel
      Left = 338
      Top = 42
      Width = 38
      Height = 15
      Caption = 'C'#243'digo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object lblUPago: TLabel
      Left = 333
      Top = 3
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
    object lblUProceso: TLabel
      Left = 95
      Top = 4
      Width = 94
      Height = 15
      Hint = 'lblUProceso'
      Caption = 'Unidad de Proceso'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object lblNReclamo: TLabel
      Left = 6
      Top = 5
      Width = 59
      Height = 15
      Caption = 'N'#176' Reclamo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object dblcdCodigo: TwwDBEdit
      Left = 339
      Top = 56
      Width = 140
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 7
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnExit = dblcdCodigoExit
    end
    object dblcdUse: TwwDBLookupComboDlg
      Left = 95
      Top = 56
      Width = 62
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      CharCase = ecUpperCase
      BorderStyle = bsNone
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'USEID'#9'3'#9'ID'#9'F'
        'USENOM'#9'75'#9'USE'#9'F')
      LookupTable = DM1.cdsUse
      LookupField = 'USEID'
      Color = 13165023
      Enabled = False
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 5
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
    end
    object dblcdUpag: TwwDBLookupComboDlg
      Left = 335
      Top = 20
      Width = 53
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      CharCase = ecUpperCase
      BorderStyle = bsNone
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Unidad de Pago'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'UPAGOID'#9'3'#9'C'#243'digo'#9'F'
        'UPAGONOM'#9'65'#9'Nombre Unidad de Pago'#9'F')
      LookupTable = DM1.cdsUPago
      LookupField = 'UPAGOID'
      Color = 13165023
      Enabled = False
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 3
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
    end
    object dblcdUPro: TwwDBLookupComboDlg
      Left = 97
      Top = 20
      Width = 60
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      CharCase = ecUpperCase
      BorderStyle = bsNone
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Unidad de Proceso'
      MaxWidth = 0
      MaxHeight = 209
      SearchDelay = 2
      Selected.Strings = (
        'UPROID'#9'3'#9'C'#243'digo'#9'F'
        'UPRONOM'#9'75'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.cdsUPro
      LookupField = 'UPROID'
      Color = 13165023
      Enabled = False
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 1
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
    end
    object dbeUPro: TwwDBEdit
      Left = 159
      Top = 20
      Width = 164
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeUpag: TwwDBEdit
      Left = 391
      Top = 20
      Width = 167
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 4
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeUse: TwwDBEdit
      Left = 157
      Top = 56
      Width = 167
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 6
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeReclamo: TwwDBEdit
      Left = 6
      Top = 20
      Width = 75
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      DataField = 'RECLID'
      DataSource = DM1.dsReclamo
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object bbtnSigue: TfcShapeBtn
      Left = 594
      Top = 44
      Width = 32
      Height = 32
      Hint = 'Acepta '
      Color = 10207162
      Default = True
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
      ShadeStyle = fbsRaised
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 8
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnSigueClick
    end
    object btnAso: TBitBtn
      Left = 489
      Top = 52
      Width = 35
      Height = 23
      Hint = 'Busqueda Directa de Asociado'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      TabStop = False
      OnClick = btnAsoClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
        000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000
        00000000000000FFFFFF000000FFFFFF000000000000000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF000000FFFFFF000000000000000000FFFFFF000000FFFFFF
        000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF0000
        00000000000000FFFFFF000000000000000000000000000000000000000000FF
        FFFF000000000000000000000000000000000000000000FFFFFF000000000000
        FFFFFF000000000000000000000000000000000000FFFFFF0000000000000000
        00000000000000FFFFFF000000000000FFFFFF000000000000000000C0C7C000
        0000000000FFFFFF000000000000000000000000000000FFFFFF000000000000
        FFFFFF000000000000000000C0C7C0000000000000FFFFFF0000000000000000
        00000000000000FFFFFFFFFFFF00000000000000000000000000000000000000
        0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF
        000000FFFFFF000000000000000000FFFFFF000000FFFFFF0000000000000000
        00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000FF
        FFFF000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000000000000000FFFFFFFFFFFFFFFFFF000000000000000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000000FFFFFFFF
        FFFFFFFFFF000000FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000000000000000FFFFFFFFFFFFFFFFFF000000000000000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
  end
  object dbgReclamo: TwwDBGrid
    Left = 5
    Top = 351
    Width = 767
    Height = 158
    DisableThemesInTitle = False
    Selected.Strings = (
      'APOANO'#9'5'#9'A'#241'o'#9'F'
      'APOMES'#9'4'#9'Mes'#9'F'
      'RECLMOTID'#9'5'#9'Motivo'#9'F'
      'RECLSITID'#9'8'#9'Situaci'#243'n'#9'F'
      'TMONID'#9'5'#9'Moneda'#9'F'
      'APOMONTO'#9'12'#9'Monto~Aporte'#9'F'
      'TRANSFOPE'#9'11'#9'Fecha~Operaci'#243'n'#9'F'
      'TRANSNOPE'#9'12'#9'Nro~Operaci'#243'n'#9'F'
      'RECLMONTO'#9'10'#9'Monto~Recl.'#9'F'
      'RECLFINI'#9'12'#9'Fec.~Reclamo'#9'F'
      'RECLFFIN'#9'11'#9'Fec.~Conclusi'#243'n'#9'F')
    MemoAttributes = [mSizeable, mWordWrap, mGridShow]
    IniAttributes.Delimiter = ';;'
    TitleColor = 10207162
    FixedCols = 0
    ShowHorzScrollBar = True
    EditControlOptions = [ecoCheckboxSingleClick, ecoSearchOwnerForm]
    Anchors = [akLeft, akTop, akRight, akBottom]
    BorderStyle = bsNone
    Color = 13165023
    DataSource = DM1.dsDetReclamo
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    KeyOptions = [dgEnterToTab, dgAllowDelete]
    MultiSelectOptions = [msoAutoUnselect, msoShiftSelect]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
    ParentFont = False
    TabOrder = 4
    TitleAlignment = taCenter
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -11
    TitleFont.Name = 'Comic Sans MS'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = True
    UseTFields = False
    OnDblClick = dbgReclamoDblClick
    OnDragOver = dbgReclamoDragOver
    OnEndDrag = dbgReclamoEndDrag
    OnMouseDown = dbgReclamoMouseDown
    object dbgReclamoIButton: TwwIButton
      Left = 0
      Top = 0
      Width = 27
      Height = 31
      AllowAllUp = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333FF33333333FF333993333333300033377F3333333777333993333333
        300033F77FFF3333377739999993333333333777777F3333333F399999933333
        33003777777333333377333993333333330033377F3333333377333993333333
        3333333773333333333F333333333333330033333333F33333773333333C3333
        330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
        333333333337733333FF3333333C333330003333333733333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = dbgReclamoIButtonClick
    end
  end
  object PnlBusApo: TPanel
    Left = 237
    Top = 256
    Width = 304
    Height = 81
    BevelInner = bvRaised
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Color = 13165023
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    Visible = False
    object TLabel
      Left = 21
      Top = 40
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
    object TLabel
      Left = 106
      Top = 40
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
    object btnBusOK: TfcShapeBtn
      Left = 203
      Top = 35
      Width = 28
      Height = 28
      Hint = 'Aceptar '
      Color = 10207162
      Default = True
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
      ShadeStyle = fbsRaised
      Shape = bsRoundRect
      ShowHint = True
      TabOrder = 2
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = btnBusOKClick
    end
    object btnBusCan: TfcShapeBtn
      Left = 246
      Top = 35
      Width = 28
      Height = 28
      Hint = 'Cancelar'
      Cancel = True
      Color = 10207162
      DitherColor = clWhite
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsRaised
      Shape = bsRoundRect
      ShowHint = True
      TabOrder = 3
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = btnBusCanClick
    end
    object dbeBusAno: TwwDBSpinEdit
      Left = 47
      Top = 37
      Width = 50
      Height = 21
      Increment = 1.000000000000000000
      MaxValue = 2020.000000000000000000
      MinValue = 1997.000000000000000000
      Value = 1997.000000000000000000
      AutoFillDate = False
      AutoSelect = False
      BorderStyle = bsNone
      Color = 13165023
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      MaxLength = 4
      TabOrder = 0
      UnboundDataType = wwDefault
    end
    object dbeBusMes: TwwDBSpinEdit
      Left = 131
      Top = 37
      Width = 46
      Height = 21
      Increment = 1.000000000000000000
      MaxValue = 12.000000000000000000
      MinValue = 1.000000000000000000
      Value = 1.000000000000000000
      AutoSelect = False
      BorderStyle = bsNone
      Color = 13165023
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      MaxLength = 2
      TabOrder = 1
      UnboundDataType = wwDefault
    end
    object StaticText1: TStaticText
      Left = 1
      Top = 1
      Width = 298
      Height = 19
      Align = alTop
      Alignment = taCenter
      BorderStyle = sbsSunken
      Caption = 'Buscar Aporte'
      Color = clActiveCaption
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 4
    end
  end
  object cbxEnTramite: TCheckBox
    Left = 541
    Top = 520
    Width = 115
    Height = 17
    Caption = 'Iniciar en Tramite'
    TabOrder = 6
  end
  object wwDBEdit1: TwwDBEdit
    Left = 10
    Top = 61
    Width = 111
    Height = 32
    TabStop = False
    BorderStyle = bsNone
    Color = 10207162
    DataField = 'RECLID'
    DataSource = DM1.dsReclamo
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
    ParentFont = False
    ReadOnly = True
    TabOrder = 7
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object PnlReclamo: TPanel
    Left = 64
    Top = 160
    Width = 620
    Height = 329
    BevelInner = bvSpace
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Color = 13165023
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Visible = False
    object bbtnAceptar: TfcShapeBtn
      Left = 506
      Top = 291
      Width = 32
      Height = 32
      Hint = 'Grabar reclamo de aporte'
      Color = 10207162
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
      ShadeStyle = fbsRaised
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 2
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnAceptarClick
    end
    object bbtnCancelar: TfcShapeBtn
      Left = 543
      Top = 291
      Width = 32
      Height = 32
      Hint = 'Cancelar reclamo de aporte'
      Cancel = True
      Color = 10207162
      DitherColor = clWhite
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsRaised
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 3
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnCancelarClick
    end
    object StaticText2: TStaticText
      Left = 1
      Top = 1
      Width = 614
      Height = 19
      Align = alTop
      Alignment = taCenter
      BorderStyle = sbsSunken
      Caption = 'Aporte a Reclamar'
      Color = clActiveCaption
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
    object PageControl1: TPageControl
      Left = 32
      Top = 24
      Width = 553
      Height = 268
      ActivePage = TabSheet1
      TabOrder = 1
      OnChanging = PageControl1Changing
      object TabSheet1: TTabSheet
        Caption = 'Reclamo'
        object lblMonto: TLabel
          Left = 92
          Top = 26
          Width = 82
          Height = 15
          AutoSize = False
          Caption = 'Monto Aportado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          WordWrap = True
        end
        object lblAno: TLabel
          Left = 17
          Top = 26
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
        object lblMes: TLabel
          Left = 59
          Top = 26
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
        object lblMRecl: TLabel
          Left = 440
          Top = 65
          Width = 89
          Height = 15
          AutoSize = False
          Caption = 'Monto Reclamado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          WordWrap = True
        end
        object lblMon: TLabel
          Left = 186
          Top = 26
          Width = 40
          Height = 15
          Caption = 'Moneda'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object lblMReclamo: TLabel
          Left = 120
          Top = 65
          Width = 99
          Height = 15
          AutoSize = False
          Caption = 'Motivo del Reclamo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object lblObserv: TLabel
          Left = 15
          Top = 113
          Width = 76
          Height = 15
          Caption = 'Observaciones'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object lblFOpe: TLabel
          Left = 351
          Top = 26
          Width = 78
          Height = 15
          AutoSize = False
          Caption = 'Fec. Operaci'#243'n'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          WordWrap = True
        end
        object lblNOpe: TLabel
          Left = 446
          Top = 26
          Width = 83
          Height = 15
          AutoSize = False
          Caption = 'Num. Operaci'#243'n'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          WordWrap = True
        end
        object lblFRecl: TLabel
          Left = 14
          Top = 66
          Width = 89
          Height = 15
          AutoSize = False
          Caption = 'Fec. Reclamo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          WordWrap = True
        end
        object dbeMontoAportado: TwwDBEdit
          Left = 92
          Top = 43
          Width = 86
          Height = 21
          BorderStyle = bsNone
          Color = 13165023
          DataField = 'APOMONTO'
          DataSource = DM1.dsDetReclamo
          Enabled = False
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          Picture.PictureMask = '*12[#][.*2[#]]'
          TabOrder = 2
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dblctmoneda: TwwDBLookupCombo
          Left = 186
          Top = 43
          Width = 40
          Height = 21
          CharCase = ecUpperCase
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          DataField = 'TMONID'
          DataSource = DM1.dsDetReclamo
          LookupTable = DM1.cdsTMoneda
          LookupField = 'TMONID'
          Options = [loColLines, loTitles]
          Color = 13165023
          Enabled = False
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          MaxLength = 2
          TabOrder = 3
          AutoDropDown = False
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          OnExit = dblcTMonedaExit
        end
        object dbeMontoRecl: TwwDBEdit
          Left = 436
          Top = 82
          Width = 93
          Height = 21
          BorderStyle = bsNone
          Color = 13165023
          DataField = 'RECLMONTO'
          DataSource = DM1.dsDetReclamo
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          TabOrder = 10
          UnboundDataType = wwDefault
          UsePictureMask = False
          WantReturns = False
          WordWrap = False
          OnExit = dbeMontoReclExit
          OnKeyPress = dbeMontoReclKeyPress
        end
        object dblcReclMotId: TwwDBLookupCombo
          Left = 119
          Top = 82
          Width = 40
          Height = 21
          CharCase = ecUpperCase
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'RECLMOTID'#9'2'#9'ID'#9'F'
            'RECLMOTDES'#9'30'#9'Motivo del Reclamo'#9'F')
          DataField = 'RECLMOTID'
          DataSource = DM1.dsDetReclamo
          LookupTable = DM1.cdsReclMotivo
          LookupField = 'RECLMOTID'
          Options = [loColLines, loTitles]
          Color = 13165023
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          MaxLength = 2
          TabOrder = 8
          AutoDropDown = False
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          OnChange = dblcReclMotIdChange
          OnExit = dblcReclMotIdExit
        end
        object dbemoneda: TwwDBEdit
          Left = 229
          Top = 43
          Width = 119
          Height = 21
          BorderStyle = bsNone
          Color = 13165023
          Enabled = False
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          TabOrder = 4
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dbeAno: TwwDBEdit
          Left = 17
          Top = 43
          Width = 34
          Height = 21
          BorderStyle = bsNone
          Color = 13165023
          DataField = 'APOANO'
          DataSource = DM1.dsDetReclamo
          Enabled = False
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dbeMes: TwwDBEdit
          Left = 57
          Top = 43
          Width = 28
          Height = 21
          BorderStyle = bsNone
          Color = 13165023
          DataField = 'APOMES'
          DataSource = DM1.dsDetReclamo
          Enabled = False
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          TabOrder = 1
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnExit = dbeMesExit
        end
        object dbeReclMotivo: TwwDBEdit
          Left = 161
          Top = 82
          Width = 269
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
        object dbeFOperacion: TwwDBEdit
          Left = 351
          Top = 43
          Width = 88
          Height = 21
          BorderStyle = bsNone
          Color = 13165023
          DataField = 'TRANSFOPE'
          DataSource = DM1.dsDetReclamo
          Enabled = False
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          TabOrder = 5
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dbeNOperacion: TwwDBEdit
          Left = 442
          Top = 43
          Width = 87
          Height = 21
          BorderStyle = bsNone
          Color = 13165023
          DataField = 'TRANSNOPE'
          DataSource = DM1.dsDetReclamo
          Enabled = False
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          TabOrder = 6
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dbmObservacion: TDBMemo
          Left = 20
          Top = 134
          Width = 509
          Height = 93
          BorderStyle = bsNone
          DataField = 'RECLOBS'
          DataSource = DM1.dsDetReclamo
          MaxLength = 1000
          TabOrder = 11
        end
        object dbdtpFechaReclamo: TwwDBDateTimePicker
          Left = 13
          Top = 82
          Width = 97
          Height = 21
          BorderStyle = bsNone
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          Color = 13165023
          DataField = 'RECLFINI'
          DataSource = DM1.dsDetReclamo
          Epoch = 1950
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          ShowButton = True
          TabOrder = 7
          DisplayFormat = 'dd/mm/yyyy'
          OnExit = dbdtpFechaReclamoExit
          OnKeyDown = dbdtpFechaReclamoKeyDown
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Evaluaci'#243'n'
        ImageIndex = 1
        object Label1: TLabel
          Left = 7
          Top = 100
          Width = 89
          Height = 15
          AutoSize = False
          Caption = 'Monto Reclamado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          WordWrap = True
        end
        object Label2: TLabel
          Left = 119
          Top = 100
          Width = 89
          Height = 15
          AutoSize = False
          Caption = 'Monto Aceptado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          WordWrap = True
        end
        object lblSitua: TLabel
          Left = 5
          Top = 6
          Width = 86
          Height = 15
          Caption = 'Situaci'#243'n Actual'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object lblResul: TLabel
          Left = 5
          Top = 149
          Width = 135
          Height = 15
          Caption = 'Resultado de la Evaluaci'#243'n'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object lblFConc: TLabel
          Left = 251
          Top = 52
          Width = 89
          Height = 15
          AutoSize = False
          Caption = 'Fec. Conclusi'#243'n'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          WordWrap = True
        end
        object Label5: TLabel
          Left = 4
          Top = 52
          Width = 105
          Height = 15
          Caption = 'Cambio de Situaci'#243'n'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 252
          Top = 6
          Width = 96
          Height = 15
          Caption = 'Situaci'#243'n Original'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object dbeMontoReclamado: TwwDBEdit
          Left = 3
          Top = 117
          Width = 93
          Height = 21
          TabStop = False
          BorderStyle = bsNone
          Color = 13165023
          DataField = 'RECLMONTO'
          DataSource = DM1.dsDetReclamo
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          ReadOnly = True
          TabOrder = 7
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnExit = dbeMontoReclExit
        end
        object dbeMontoAceptado: TwwDBEdit
          Left = 115
          Top = 117
          Width = 93
          Height = 21
          BorderStyle = bsNone
          Color = 13165023
          DataField = 'DEVMONTO'
          DataSource = DM1.dsDetReclamo
          Enabled = False
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          TabOrder = 8
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnExit = dbeMontoAceptadoExit
          OnKeyPress = dbeMontoAceptadoKeyPress
        end
        object dblcReclSit: TwwDBLookupCombo
          Left = 5
          Top = 24
          Width = 45
          Height = 21
          CharCase = ecUpperCase
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'RECLSITID'#9'2'#9'C'#243'digo'#9'F'
            'RECLSITDES'#9'30'#9'Situaci'#243'n'#9'F')
          DataField = 'RECLSITID'
          DataSource = DM1.dsDetReclamo
          LookupTable = cdsSituacion
          LookupField = 'RECLSITID'
          Options = [loColLines, loTitles]
          Color = 13165023
          Enabled = False
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          TabOrder = 0
          AutoDropDown = False
          ShowButton = True
          SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
          UseTFields = False
          PreciseEditRegion = False
          AllowClearKey = True
          ShowMatchText = True
          OnExit = dblcReclSitExit
        end
        object dbmresultado: TwwDBRichEdit
          Left = 5
          Top = 169
          Width = 528
          Height = 62
          AutoURLDetect = False
          BorderStyle = bsNone
          Color = 13165023
          DataField = 'RECLRC'
          DataSource = DM1.dsDetReclamo
          Enabled = False
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          MaxLength = 1000
          PrintJobName = 'Delphi 5'
          TabOrder = 9
          EditorCaption = 'Edit Rich Text'
          EditorPosition.Left = 0
          EditorPosition.Top = 0
          EditorPosition.Width = 0
          EditorPosition.Height = 0
          MeasurementUnits = muInches
          PrintMargins.Top = 1.000000000000000000
          PrintMargins.Bottom = 1.000000000000000000
          PrintMargins.Left = 1.000000000000000000
          PrintMargins.Right = 1.000000000000000000
          PrintHeader.VertMargin = 0.500000000000000000
          PrintHeader.Font.Charset = DEFAULT_CHARSET
          PrintHeader.Font.Color = clWindowText
          PrintHeader.Font.Height = -11
          PrintHeader.Font.Name = 'MS Sans Serif'
          PrintHeader.Font.Style = []
          PrintFooter.VertMargin = 0.500000000000000000
          PrintFooter.Font.Charset = DEFAULT_CHARSET
          PrintFooter.Font.Color = clWindowText
          PrintFooter.Font.Height = -11
          PrintFooter.Font.Name = 'MS Sans Serif'
          PrintFooter.Font.Style = []
          RichEditVersion = 2
          Data = {
            A30000007B5C727466315C616E73695C616E7369637067313235325C64656666
            307B5C666F6E7474626C7B5C66305C666E696C5C66636861727365743020436F
            6D69632053616E73204D533B7D7D0D0A7B5C636F6C6F7274626C203B5C726564
            305C677265656E305C626C75653132383B7D0D0A5C766965776B696E64345C75
            63315C706172645C6366315C6C616E6731303235305C66305C667331365C7061
            720D0A7D0D0A00}
        end
        object dbeReclSit: TwwDBEdit
          Left = 54
          Top = 24
          Width = 192
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
        object dblcCambioSituacion: TwwDBLookupCombo
          Left = 4
          Top = 70
          Width = 45
          Height = 21
          CharCase = ecUpperCase
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'RECLSITID'#9'2'#9'C'#243'digo'#9'F'
            'RECLSITDES'#9'30'#9'Situaci'#243'n'#9'F')
          LookupTable = cdsCambioSituacion
          LookupField = 'RECLSITID'
          Options = [loColLines, loTitles]
          Color = 13165023
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          TabOrder = 4
          AutoDropDown = False
          ShowButton = True
          SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
          UseTFields = False
          PreciseEditRegion = False
          AllowClearKey = True
          ShowMatchText = True
          OnEnter = dblcCambioSituacionEnter
          OnExit = dblcCambioSituacionExit
        end
        object dbeCambioSituacion: TwwDBEdit
          Left = 53
          Top = 70
          Width = 192
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
        object dbdtpFechaConclusion: TwwDBDateTimePicker
          Left = 250
          Top = 70
          Width = 97
          Height = 21
          BorderStyle = bsNone
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          Color = 13165023
          DataField = 'RECLFFIN'
          DataSource = DM1.dsDetReclamo
          Epoch = 1950
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          ShowButton = True
          TabOrder = 6
          DisplayFormat = 'dd/mm/yyyy'
          OnExit = dbdtpFechaConclusionExit
          OnKeyDown = dbdtpFechaReclamoKeyDown
        end
        object dblcSituacionOri: TwwDBLookupCombo
          Left = 252
          Top = 24
          Width = 45
          Height = 21
          CharCase = ecUpperCase
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'RECLSITID'#9'2'#9'C'#243'digo'#9'F'
            'RECLSITDES'#9'30'#9'Situaci'#243'n'#9'F')
          LookupTable = cdsSituacion
          LookupField = 'RECLSITID'
          Options = [loColLines, loTitles]
          Color = 13165023
          Enabled = False
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          TabOrder = 2
          AutoDropDown = False
          ShowButton = True
          SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
          UseTFields = False
          PreciseEditRegion = False
          AllowClearKey = True
          ShowMatchText = True
        end
        object dbeSituacionOri: TwwDBEdit
          Left = 301
          Top = 24
          Width = 192
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
        object bbtnRegresar: TfcShapeBtn
          Left = 498
          Top = 17
          Width = 32
          Height = 32
          Hint = 'Grabar reclamo de aporte'
          Color = 10207162
          DitherColor = clWhite
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003FFFFFFFFFFF
            FFFF33333333333FFFFF3FFFFFFFFF00000F333333333377777F33FFFFFFFF09
            990F33333333337F337F333FFFFFFF09990F33333333337F337F3333FFFFFF09
            990F33333333337FFF7F33333FFFFF00000F3333333333777773333333FFFFFF
            FFFF3FFFFF3333333F330000033FFFFF0FFF77777F3333337FF30EEE0333FFF0
            00FF7F337FFF333777FF0EEE00033F00000F7F33777F3777777F0EEE0E033000
            00007FFF7F7FF777777700000E00033000FF777773777F3777F3330EEE0E0330
            00FF337FFF7F7F3777F33300000E033000FF337777737F37773333330EEE0300
            03FF33337FFF77777333333300000333333F3333777773333333}
          NumGlyphs = 2
          Options = [boFocusable]
          ParentClipping = True
          ParentShowHint = False
          RoundRectBias = 25
          ShadeStyle = fbsRaised
          Shape = bsEllipse
          ShowHint = True
          TabOrder = 10
          TabStop = True
          TextOptions.Alignment = taCenter
          TextOptions.VAlignment = vaVCenter
          OnClick = bbtnAceptarClick
        end
      end
    end
    object bbtnCierraImp: TfcShapeBtn
      Left = 599
      Top = 3
      Width = 15
      Height = 15
      Color = clBtnFace
      DitherColor = clWhite
      Glyph.Data = {
        C6000000424DC60000000000000076000000280000000A0000000A0000000100
        04000000000050000000130B0000130B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888800
        0000888888888800000080088880080000008800880088000000888000088800
        0000888800888800000088800008880000008800880088000000800888800800
        00008888888888000000}
      NumGlyphs = 0
      ParentClipping = True
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      TabOrder = 4
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnCierraImpClick
    end
  end
  object ppReport1: TppReport
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
    Template.FileName = 'C:\SOL\APO\AportesSocio\xCuenta Individual.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 745
    Top = 161
    Version = '7.02'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
  end
  object ppReport2: TppReport
    AutoStop = False
    DataPipeline = ppdbre
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
    Template.FileName = 'C:\SOL\APO\APOREPCTAIN\Cuenta.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 716
    Top = 161
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbre'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 97896
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
        mmLeft = 8731
        mmTop = 14552
        mmWidth = 35983
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
        mmLeft = 12700
        mmTop = 19315
        mmWidth = 29104
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
        mmLeft = 53711
        mmTop = 28840
        mmWidth = 66675
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
        mmLeft = 170921
        mmTop = 11906
        mmWidth = 14288
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
        mmLeft = 170921
        mmTop = 16669
        mmWidth = 17463
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
        mmLeft = 186267
        mmTop = 21696
        mmWidth = 1588
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
        mmLeft = 158221
        mmTop = 11906
        mmWidth = 8731
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
        mmLeft = 158221
        mmTop = 16669
        mmWidth = 7673
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
        mmLeft = 158221
        mmTop = 21696
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
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
        mmTop = 37835
        mmWidth = 188384
        BandType = 0
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
        mmLeft = 5027
        mmTop = 46038
        mmWidth = 20902
        BandType = 0
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
        mmLeft = 5027
        mmTop = 51329
        mmWidth = 7673
        BandType = 0
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
        mmLeft = 5027
        mmTop = 56356
        mmWidth = 21167
        BandType = 0
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
        mmLeft = 5027
        mmTop = 61383
        mmWidth = 25929
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'Fec.Res.Nomb. . '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 79375
        mmTop = 61383
        mmWidth = 20638
        BandType = 0
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
        mmLeft = 5027
        mmTop = 66411
        mmWidth = 23283
        BandType = 0
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
        mmLeft = 113506
        mmTop = 51329
        mmWidth = 24871
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
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
        mmLeft = 3969
        mmTop = 75142
        mmWidth = 188384
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
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
        mmLeft = 4233
        mmTop = 93663
        mmWidth = 188384
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 'FEC.REG.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 5027
        mmTop = 87577
        mmWidth = 12435
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'FEC.OPER.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 20373
        mmTop = 87577
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = 'N.OPER.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 40481
        mmTop = 87577
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = 'FORM.PAG.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 53975
        mmTop = 87577
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Caption = 'PERIODO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 75142
        mmTop = 87577
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        Caption = 'CAP.ACUM.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 94192
        mmTop = 87577
        mmWidth = 16140
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        Caption = 'INTERES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 112713
        mmTop = 87577
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        Caption = 'BONUS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 127265
        mmTop = 87577
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        Caption = 'APORTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 139171
        mmTop = 87577
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        Caption = 'DEVOLC.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 153194
        mmTop = 87577
        mmWidth = 12435
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Caption = 'TOTAL ACUM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 167746
        mmTop = 87842
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
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
        mmLeft = 4498
        mmTop = 83609
        mmWidth = 188384
        BandType = 0
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        DataField = 'ASOAPENOM'
        DataPipeline = ppdbre
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbre'
        mmHeight = 3704
        mmLeft = 113506
        mmTop = 46038
        mmWidth = 67998
        BandType = 0
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
        mmLeft = 113506
        mmTop = 56356
        mmWidth = 13758
        BandType = 0
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
        mmLeft = 142082
        mmTop = 56356
        mmWidth = 19579
        BandType = 0
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
        mmLeft = 7144
        mmTop = 79375
        mmWidth = 90752
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 6085
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
        mmLeft = 89959
        mmTop = 1323
        mmWidth = 794
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 30163
      mmPrintPosition = 0
      object ppLabel30: TppLabel
        UserName = 'Label30'
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
        mmLeft = 5027
        mmTop = 12171
        mmWidth = 188384
        BandType = 7
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        Caption = 
          '----------------------------------------------------------------' +
          '----------------'
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
        mmWidth = 84667
        BandType = 7
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
        mmLeft = 0
        mmTop = 17992
        mmWidth = 86519
        BandType = 7
      end
    end
  end
  object ppdbre: TppDBPipeline
    DataSource = DM1.dsReporte2
    UserName = 'dbre'
    Left = 684
    Top = 161
  end
  object cdsSituacion: TwwClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'RECLSITID'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'RECLSITDES'
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    ValidateWithMask = True
    Left = 48
    Top = 24
    Data = {
      570000009619E0BD010000001800000002000000000003000000570009524543
      4C534954494401004900000001000557494454480200020002000A5245434C53
      49544445530100490000000100055749445448020002001E000000}
  end
  object cdsCambioSituacion: TwwClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'RECLSITID'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'RECLSITDES'
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    ValidateWithMask = True
    Left = 80
    Top = 56
    Data = {
      570000009619E0BD010000001800000002000000000003000000570009524543
      4C534954494401004900000001000557494454480200020002000A5245434C53
      49544445530100490000000100055749445448020002001E000000}
  end
  object cdsCacheRec: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ValidateWithMask = True
    Left = 48
    Top = 64
  end
end
