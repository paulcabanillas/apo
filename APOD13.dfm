object fAporDupli: TfAporDupli
  Left = 143
  Top = 226
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Aportes Duplicados'
  ClientHeight = 264
  ClientWidth = 663
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
  PixelsPerInch = 96
  TextHeight = 13
  object TLabel
    Left = 12
    Top = 14
    Width = 41
    Height = 16
    Caption = 'A'#209'O   '
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object TLabel
    Left = 115
    Top = 14
    Width = 26
    Height = 16
    Caption = 'MES'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Shape1: TShape
    Left = 371
    Top = 8
    Width = 284
    Height = 47
  end
  object TLabel
    Left = 12
    Top = 41
    Width = 251
    Height = 16
    Caption = '(Solo esta habilitado a partir del a'#241'o 2005)   '
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitSeleccion: TBitBtn
    Left = 206
    Top = 9
    Width = 85
    Height = 26
    Caption = '&Mostrar'
    TabOrder = 0
    OnClick = BitSeleccionClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
      0000333377777777777733330FFFFFFFFFF033337F3FFF3F3FF733330F000F0F
      00F033337F777373773733330FFFFFFFFFF033337F3FF3FF3FF733330F00F00F
      00F033337F773773773733330FFFFFFFFFF033337FF3333FF3F7333300FFFF00
      F0F03333773FF377F7373330FB00F0F0FFF0333733773737F3F7330FB0BF0FB0
      F0F0337337337337373730FBFBF0FB0FFFF037F333373373333730BFBF0FB0FF
      FFF037F3337337333FF700FBFBFB0FFF000077F333337FF37777E0BFBFB000FF
      0FF077FF3337773F7F37EE0BFB0BFB0F0F03777FF3733F737F73EEE0BFBF00FF
      00337777FFFF77FF7733EEEE0000000003337777777777777333}
    NumGlyphs = 2
  end
  object BitSalir: TBitBtn
    Left = 571
    Top = 229
    Width = 85
    Height = 26
    Caption = '&Salir'
    TabOrder = 1
    OnClick = BitSalirClick
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
      F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
      000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
      338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
      45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
      3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
      F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
      000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
      338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
      4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
      8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
      333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
      0000}
    NumGlyphs = 2
  end
  object dtgApoDup: TwwDBGrid
    Left = 8
    Top = 72
    Width = 646
    Height = 147
    Cursor = crHandPoint
    DisableThemesInTitle = False
    Selected.Strings = (
      'TRANSANO'#9'4'#9'A'#241'o'
      'TRANSMES'#9'2'#9'Mes'
      'ASOAPENOM'#9'45'#9'Apellidos y Nombres'
      'TRANSFOPE'#9'10'#9'Fecha~De Pago'
      'TRANSNOPE'#9'14'#9'Documento~De Pago'
      'TRANSMTO'#9'10'#9'Importe~Pagado'
      'FREG'#9'10'#9'Fecha De~Registro'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsBcos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
    ParentFont = False
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
  object spdAnnio: TSpinEdit
    Left = 43
    Top = 8
    Width = 57
    Height = 29
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    MaxLength = 4
    MaxValue = 2050
    MinValue = 2005
    ParentFont = False
    TabOrder = 3
    Value = 2007
  end
  object spdMes: TSpinEdit
    Left = 147
    Top = 8
    Width = 41
    Height = 29
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    MaxLength = 2
    MaxValue = 12
    MinValue = 1
    ParentFont = False
    TabOrder = 4
    Value = 10
    OnExit = spdMesExit
  end
  object PnlGrabar: TPanel
    Left = 377
    Top = 11
    Width = 274
    Height = 41
    BevelOuter = bvNone
    Color = clWindow
    Enabled = False
    TabOrder = 5
    object TLabel
      Left = 8
      Top = 13
      Width = 41
      Height = 16
      Caption = 'A'#209'O   '
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object TLabel
      Left = 106
      Top = 12
      Width = 26
      Height = 16
      Caption = 'MES'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object spdAnnioN: TSpinEdit
      Left = 41
      Top = 7
      Width = 57
      Height = 29
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      MaxLength = 4
      MaxValue = 2050
      MinValue = 2005
      ParentFont = False
      TabOrder = 0
      Value = 2007
    end
    object spdMesN: TSpinEdit
      Left = 138
      Top = 7
      Width = 41
      Height = 29
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      MaxLength = 2
      MaxValue = 12
      MinValue = 1
      ParentFont = False
      TabOrder = 1
      Value = 10
      OnExit = spdMesNExit
    end
    object BitGrabar: TBitBtn
      Left = 191
      Top = 8
      Width = 73
      Height = 26
      Caption = '&Grabar'
      TabOrder = 2
      OnClick = BitGrabarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
        00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
        00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
        00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
        0003737FFFFFFFFF7F7330099999999900333777777777777733}
      NumGlyphs = 2
    end
  end
end
