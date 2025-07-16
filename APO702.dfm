object FToolProvision: TFToolProvision
  Left = 226
  Top = 425
  Width = 759
  Height = 103
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
  object pnlTool: TPanel
    Left = 4
    Top = 3
    Width = 740
    Height = 66
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
      Left = 20
      Top = 12
      Width = 90
      Height = 16
      Caption = 'Provisión sobre:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblInt: TLabel
      Left = 463
      Top = 36
      Width = 38
      Height = 15
      Caption = 'Interes'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object lblBon: TLabel
      Left = 558
      Top = 36
      Width = 30
      Height = 15
      Caption = 'Bonus'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object lblAnoProv: TLabel
      Left = 20
      Top = 35
      Width = 20
      Height = 15
      Caption = 'Año'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object lblMesProv: TLabel
      Left = 101
      Top = 35
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
      Left = 196
      Top = 12
      Width = 48
      Height = 16
      Caption = 'A partir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblAno: TLabel
      Left = 196
      Top = 35
      Width = 20
      Height = 15
      Caption = 'Año'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object lblMes: TLabel
      Left = 277
      Top = 35
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
    object lblPeri: TLabel
      Left = 349
      Top = 35
      Width = 61
      Height = 15
      Caption = 'N° Periodos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object dbeInteres: TwwDBEdit
      Left = 505
      Top = 31
      Width = 43
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      TabOrder = 5
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object Z2bbtnAceptar: TfcShapeBtn
      Left = 698
      Top = 24
      Width = 31
      Height = 28
      Hint = 'Genera Provisión'
      Color = 13165023
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
      TabOrder = 7
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = Z2bbtnAceptarClick
    end
    object dbeBonus: TwwDBEdit
      Left = 592
      Top = 31
      Width = 51
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      TabOrder = 6
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object spdAnoBase: TwwDBSpinEdit
      Left = 44
      Top = 32
      Width = 50
      Height = 21
      Increment = 1
      MaxValue = 2020
      MinValue = 1997
      AutoFillDate = False
      BorderStyle = bsNone
      Color = 13165023
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      MaxLength = 4
      TabOrder = 0
      UnboundDataType = wwDefault
    end
    object spdMesBase: TwwDBSpinEdit
      Left = 123
      Top = 32
      Width = 39
      Height = 21
      Increment = 1
      MaxValue = 12
      MinValue = 1
      Value = 1
      BorderStyle = bsNone
      Color = 13165023
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      MaxLength = 2
      Picture.PictureMask = '0#'
      TabOrder = 1
      UnboundDataType = wwDefault
      OnExit = spdMesBaseExit
    end
    object spdAnoIni: TwwDBSpinEdit
      Left = 220
      Top = 32
      Width = 50
      Height = 21
      Increment = 1
      MaxValue = 2020
      MinValue = 1997
      AutoFillDate = False
      BorderStyle = bsNone
      Color = 13165023
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      MaxLength = 4
      TabOrder = 2
      UnboundDataType = wwDefault
    end
    object spdMesIni: TwwDBSpinEdit
      Left = 299
      Top = 32
      Width = 39
      Height = 21
      Increment = 1
      MaxValue = 12
      MinValue = 1
      Value = 1
      BorderStyle = bsNone
      Color = 13165023
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      MaxLength = 2
      TabOrder = 3
      UnboundDataType = wwDefault
      OnExit = spdMesIniExit
    end
    object spdNumPer: TwwDBSpinEdit
      Left = 413
      Top = 32
      Width = 39
      Height = 21
      Increment = 1
      MaxValue = 11
      MinValue = 1
      Value = 1
      BorderStyle = bsNone
      Color = 13165023
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      MaxLength = 2
      TabOrder = 4
      UnboundDataType = wwDefault
    end
  end
end
