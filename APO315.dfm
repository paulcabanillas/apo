object Fgesnoapolot: TFgesnoapolot
  Left = 148
  Top = 63
  BorderStyle = bsDialog
  Caption = 'Gesti'#243'n de no aportantes en lotes'
  ClientHeight = 501
  ClientWidth = 716
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
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 2
    Top = -1
    Width = 452
    Height = 127
    TabOrder = 0
    object Label2: TLabel
      Left = 18
      Top = 16
      Width = 82
      Height = 13
      Caption = 'A'#241'o de Proceso :'
    end
    object Label3: TLabel
      Left = 18
      Top = 71
      Width = 91
      Height = 13
      Caption = 'Unidad de Proceso'
    end
    object Label4: TLabel
      Left = 18
      Top = 97
      Width = 77
      Height = 13
      Caption = 'Unidad de Pago'
    end
    object Label1: TLabel
      Left = 174
      Top = 12
      Width = 83
      Height = 13
      Caption = 'Mes de Proceso :'
    end
    object Label6: TLabel
      Left = 18
      Top = 43
      Width = 67
      Height = 13
      Caption = 'Departamento'
    end
    object dblcduproid: TwwDBLookupComboDlg
      Left = 113
      Top = 66
      Width = 52
      Height = 21
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsUPro
      LookupField = 'UPROID'
      TabOrder = 3
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcduproidChange
    end
    object dblcdupagoid: TwwDBLookupComboDlg
      Left = 113
      Top = 93
      Width = 52
      Height = 21
      CharCase = ecUpperCase
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
      OnChange = dblcdupagoidChange
    end
    object Panel1: TPanel
      Left = 174
      Top = 66
      Width = 185
      Height = 23
      Caption = 'pnlupronom'
      Enabled = False
      TabOrder = 6
      object meupronom: TMaskEdit
        Left = 1
        Top = 1
        Width = 183
        Height = 21
        TabOrder = 0
      end
    end
    object Panel2: TPanel
      Left = 174
      Top = 93
      Width = 185
      Height = 23
      Caption = 'Panel1'
      Enabled = False
      TabOrder = 7
      object meupagonom: TMaskEdit
        Left = 1
        Top = 1
        Width = 183
        Height = 21
        TabOrder = 0
      end
    end
    object dbseanopro: TwwDBSpinEdit
      Left = 113
      Top = 12
      Width = 52
      Height = 21
      Increment = 1.000000000000000000
      MaxValue = 2000.000000000000000000
      MinValue = 1997.000000000000000000
      TabOrder = 0
      UnboundDataType = wwDefault
    end
    object dbsemespro: TwwDBSpinEdit
      Left = 281
      Top = 12
      Width = 49
      Height = 21
      Increment = 1.000000000000000000
      MaxValue = 12.000000000000000000
      MinValue = 1.000000000000000000
      TabOrder = 1
      UnboundDataType = wwDefault
    end
    object dblcddptoid: TwwDBLookupComboDlg
      Left = 113
      Top = 39
      Width = 52
      Height = 21
      CharCase = ecUpperCase
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
      OnChange = dblcddptoidChange
    end
    object btnprocesar: TBitBtn
      Left = 368
      Top = 12
      Width = 75
      Height = 33
      Caption = 'Procesar'
      TabOrder = 5
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
    object btnlimpiar: TBitBtn
      Left = 369
      Top = 51
      Width = 75
      Height = 33
      Caption = 'Cerrar'
      TabOrder = 8
      OnClick = btnlimpiarClick
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
  end
  object dbgnoapomes: TwwDBGrid
    Left = 8
    Top = 136
    Width = 697
    Height = 177
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsDevolucion
    Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
  object Panel3: TPanel
    Left = 174
    Top = 39
    Width = 185
    Height = 23
    Caption = 'pnlupronom'
    Enabled = False
    TabOrder = 2
    object medepdes: TMaskEdit
      Left = 1
      Top = 1
      Width = 183
      Height = 21
      TabOrder = 0
    end
  end
  object GroupBox3: TGroupBox
    Left = 7
    Top = 319
    Width = 386
    Height = 169
    Caption = ' Conclusi'#243'n '
    TabOrder = 3
    object Label10: TLabel
      Left = 9
      Top = 17
      Width = 95
      Height = 13
      Caption = 'Motivo de no aporte'
    end
    object dblcddesnoapo: TwwDBLookupComboDlg
      Left = 8
      Top = 36
      Width = 46
      Height = 21
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsFPagoAporte
      LookupField = 'CODMOTNOAPO'
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcddesnoapoChange
    end
    object Panel9: TPanel
      Left = 60
      Top = 35
      Width = 235
      Height = 23
      Caption = 'Panel9'
      Enabled = False
      TabOrder = 1
      object medesnoapome: TMaskEdit
        Left = 1
        Top = 1
        Width = 233
        Height = 21
        TabOrder = 0
      end
    end
    object medes: TMemo
      Left = 8
      Top = 65
      Width = 286
      Height = 76
      TabOrder = 2
    end
    object btngrabar: TBitBtn
      Left = 301
      Top = 33
      Width = 75
      Height = 33
      Caption = 'Grabar'
      TabOrder = 3
      OnClick = btngrabarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
        7700333333337777777733333333008088003333333377F73377333333330088
        88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
        000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
        FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
        99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      NumGlyphs = 2
    end
  end
end
