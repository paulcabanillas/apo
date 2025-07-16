object Fpronapo: TFpronapo
  Left = 227
  Top = 233
  BorderStyle = bsDialog
  Caption = ' Procesando no aportantes '
  ClientHeight = 228
  ClientWidth = 394
  Color = 13165023
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
    Top = 14
    Width = 390
    Height = 174
    TabOrder = 0
    object Label2: TLabel
      Left = 8
      Top = 19
      Width = 76
      Height = 13
      Caption = 'A'#241'o de Proceso'
    end
    object Label3: TLabel
      Left = 8
      Top = 94
      Width = 91
      Height = 13
      Caption = 'Unidad de Proceso'
    end
    object Label4: TLabel
      Left = 8
      Top = 119
      Width = 77
      Height = 13
      Caption = 'Unidad de Pago'
    end
    object Label5: TLabel
      Left = 8
      Top = 144
      Width = 29
      Height = 13
      Caption = 'UGEL'
    end
    object Label1: TLabel
      Left = 8
      Top = 43
      Width = 77
      Height = 13
      Caption = 'Mes de Proceso'
    end
    object Label6: TLabel
      Left = 8
      Top = 67
      Width = 67
      Height = 13
      Caption = 'Departamento'
    end
    object dblcduproid: TwwDBLookupComboDlg
      Left = 113
      Top = 94
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
      Top = 119
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
      Left = 170
      Top = 94
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
      Left = 170
      Top = 119
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
    object Panel3: TPanel
      Left = 170
      Top = 144
      Width = 185
      Height = 23
      Caption = 'Panel1'
      Enabled = False
      TabOrder = 8
      object meusenom: TMaskEdit
        Left = 1
        Top = 1
        Width = 183
        Height = 21
        TabOrder = 0
      end
    end
    object dblcduseid: TwwDBLookupComboDlg
      Left = 113
      Top = 144
      Width = 52
      Height = 21
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsUse
      LookupField = 'USEID'
      TabOrder = 5
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcduseidChange
    end
    object dbseanopro: TwwDBSpinEdit
      Left = 113
      Top = 19
      Width = 49
      Height = 21
      Increment = 1.000000000000000000
      MaxValue = 2050.000000000000000000
      MinValue = 1997.000000000000000000
      TabOrder = 0
      UnboundDataType = wwDefault
    end
    object dbsemespro: TwwDBSpinEdit
      Left = 113
      Top = 43
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
      Top = 67
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
    object Panel4: TPanel
      Left = 170
      Top = 67
      Width = 185
      Height = 23
      Caption = 'pnlupronom'
      Enabled = False
      TabOrder = 9
      object medptodes: TMaskEdit
        Left = 1
        Top = 1
        Width = 183
        Height = 21
        TabOrder = 0
      end
    end
  end
  object btnFiltrar: TBitBtn
    Left = 230
    Top = 193
    Width = 77
    Height = 31
    Caption = 'Procesar'
    TabOrder = 1
    OnClick = btnFiltrarClick
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
  object BitBtn1: TBitBtn
    Left = 314
    Top = 193
    Width = 77
    Height = 31
    Caption = 'Cerrar'
    TabOrder = 2
    OnClick = BitBtn1Click
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
  object StaticText1: TStaticText
    Left = 0
    Top = 0
    Width = 394
    Height = 17
    Align = alTop
    Alignment = taCenter
    BevelInner = bvNone
    Caption = ' Proceso de no aportantes '
    Color = 10207162
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = 15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 3
  end
end
