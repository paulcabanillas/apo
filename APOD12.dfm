object FCambioUPago: TFCambioUPago
  Left = 97
  Top = 102
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cambio de Unidades de Pago'
  ClientHeight = 553
  ClientWidth = 792
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
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object gbx1: TGroupBox
    Left = 12
    Top = 10
    Width = 369
    Height = 225
    TabOrder = 0
    object Label2: TLabel
      Left = 3
      Top = 9
      Width = 364
      Height = 18
      Alignment = taCenter
      AutoSize = False
      Caption = 'Datos de Redistribuci'#243'n'
      Color = clNavy
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lblNumero: TLabel
      Left = 235
      Top = 30
      Width = 126
      Height = 22
      Alignment = taRightJustify
      AutoSize = False
      Caption = '200300008'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 9
      Top = 59
      Width = 30
      Height = 15
      Caption = 'Fecha'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 9
      Top = 102
      Width = 54
      Height = 15
      Caption = 'U. Proceso'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 9
      Top = 174
      Width = 23
      Height = 15
      Caption = 'Tipo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 9
      Top = 37
      Width = 40
      Height = 15
      Caption = 'N'#250'mero'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object dbdtpFechaEmision: TwwDBDateTimePicker
      Left = 9
      Top = 76
      Width = 113
      Height = 23
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      Enabled = False
      ShowButton = True
      TabOrder = 0
    end
    object dblcdUPro: TwwDBLookupComboDlg
      Left = 9
      Top = 118
      Width = 113
      Height = 23
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'UPROID'#9'3'#9'Cod. U.Pro'#9'F'
        'UPRONOM'#9'75'#9'U.Proceso'#9'F')
      LookupTable = DM1.cdsUPro
      LookupField = 'UPROID'
      TabOrder = 1
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnEnter = OnEnter
      OnExit = dblcdUProExit
      OnKeyPress = dblcdUProKeyPress
    end
    object edtUPRONOM: TEdit
      Left = 124
      Top = 118
      Width = 235
      Height = 23
      Color = clMenu
      Enabled = False
      TabOrder = 2
    end
    object edtUPRODIR: TEdit
      Left = 9
      Top = 146
      Width = 350
      Height = 23
      Color = clMenu
      Enabled = False
      TabOrder = 3
    end
    object rgTipo: TRadioGroup
      Left = 9
      Top = 187
      Width = 350
      Height = 34
      Columns = 2
      Enabled = False
      ItemIndex = 0
      Items.Strings = (
        'Por Uses'
        'Por Unidad de Pago')
      TabOrder = 4
      OnClick = rgTipoClick
    end
  end
  object gbx2: TGroupBox
    Left = 413
    Top = 10
    Width = 369
    Height = 225
    TabOrder = 1
    object Label1: TLabel
      Left = 3
      Top = 9
      Width = 364
      Height = 18
      Alignment = taCenter
      AutoSize = False
      Caption = 'Datos Originales de la Unidad de Proceso'
      Color = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object dbg1: TwwDBGrid
      Left = 8
      Top = 32
      Width = 354
      Height = 186
      DisableThemesInTitle = False
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsQry1
      KeyOptions = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ReadOnly = True
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Comic Sans MS'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
    end
  end
  object gbx4: TGroupBox
    Left = 12
    Top = 250
    Width = 770
    Height = 252
    TabOrder = 2
    object Label4: TLabel
      Left = 3
      Top = 9
      Width = 765
      Height = 18
      Alignment = taCenter
      AutoSize = False
      Caption = 'Modificado'
      Color = clNavy
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object dbg3: TwwDBGrid
      Left = 6
      Top = 30
      Width = 760
      Height = 216
      DisableThemesInTitle = False
      Selected.Strings = (
        'UPROID'#9'8'#9'Unidad~Proceso'#9'T'
        'USEID'#9'10'#9'C'#243'd.~Use'#9'T'
        'USENOM'#9'50'#9'~Use'#9'T'
        'UPAGOIDORI'#9'10'#9'Unidad~Pago'#9'T'
        'UPAGOID'#9'11'#9'Nueva~U.Pago'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = dsModificado
      KeyOptions = []
      MultiSelectOptions = [msoAutoUnselect]
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      TabOrder = 0
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Comic Sans MS'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      UseTFields = False
      OnKeyPress = dbg3KeyPress
    end
  end
  object bbtnNuevo: TfcShapeBtn
    Left = 616
    Top = 514
    Width = 81
    Height = 33
    Hint = 'Nuevo'
    Caption = 'Nuevo'
    Color = 13165023
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
    ShadeStyle = fbsHighlight
    Shape = bsRoundRect
    ShowHint = True
    TabOrder = 5
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    OnClick = bbtnNuevoClick
  end
  object bbtnGrabar: TfcShapeBtn
    Left = 438
    Top = 514
    Width = 81
    Height = 33
    Hint = 'Grabar'
    Caption = 'Grabar'
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
    TabOrder = 3
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    OnClick = bbtnGrabarClick
  end
  object bbtnCancelar: TfcShapeBtn
    Left = 527
    Top = 514
    Width = 81
    Height = 33
    Hint = 'Cancelar'
    Caption = 'Cancelar'
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
    TabOrder = 4
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    OnClick = bbtnCancelarClick
  end
  object bbtnSalir: TfcShapeBtn
    Left = 705
    Top = 514
    Width = 81
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
    TabOrder = 6
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    OnClick = bbtnSalirClick
  end
  object btnImprime: TfcShapeBtn
    Left = 348
    Top = 514
    Width = 81
    Height = 33
    Hint = 'Imprime Estado de Cuenta Individual'
    Caption = ' Verificar '
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
    Options = [boFocusable]
    ParentClipping = True
    ParentShowHint = False
    RoundRectBias = 25
    ShadeStyle = fbsHighlight
    Shape = bsRoundRect
    ShowHint = True
    TabOrder = 7
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    OnClick = btnImprimeClick
  end
  object cdsModificado: TwwClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'UPROID'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'USEID'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'UPAGOIDORI'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'UPAGOID'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'USENOM'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    ValidateWithMask = True
    Left = 392
    Top = 114
    Data = {
      A50000009619E0BD010000001800000005000000000003000000A50006555052
      4F49440100490000000100055749445448020002001400055553454944010049
      00000001000557494454480200020014000A555041474F49444F524901004900
      0000010005574944544802000200140007555041474F49440100490000000100
      055749445448020002001400065553454E4F4D01004900000001000557494454
      480200020014000000}
  end
  object dsModificado: TwwDataSource
    DataSet = cdsModificado
    Left = 392
    Top = 146
  end
end
