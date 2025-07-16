object FRepAnuUsu: TFRepAnuUsu
  Left = 19
  Top = 50
  BorderStyle = bsDialog
  Caption = 'Reporte de Aportes Anulados'
  ClientHeight = 472
  ClientWidth = 754
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
  object Label8: TLabel
    Left = 8
    Top = 109
    Width = 91
    Height = 13
    Caption = 'Unidad de Proceso'
  end
  object Label9: TLabel
    Left = 8
    Top = 134
    Width = 77
    Height = 13
    Caption = 'Unidad de Pago'
  end
  object Label10: TLabel
    Left = 8
    Top = 159
    Width = 29
    Height = 13
    Caption = 'UGEL'
  end
  object wwDBGrid1: TwwDBGrid
    Left = 5
    Top = 185
    Width = 744
    Height = 240
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsReporte
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object BitBtn2: TBitBtn
    Left = 597
    Top = 434
    Width = 73
    Height = 29
    Caption = 'Imprimir'
    TabOrder = 1
    OnClick = BitBtn2Click
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
  object BitBtn3: TBitBtn
    Left = 677
    Top = 434
    Width = 73
    Height = 29
    Caption = 'Salir'
    TabOrder = 2
    OnClick = BitBtn3Click
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
  object GroupBox1: TGroupBox
    Left = 4
    Top = 2
    Width = 419
    Height = 179
    Caption = ' Procesar '
    Color = 10207162
    ParentColor = False
    TabOrder = 3
    object Label4: TLabel
      Left = 12
      Top = 86
      Width = 33
      Height = 13
      Caption = 'Equipo'
    end
    object Label3: TLabel
      Left = 12
      Top = 109
      Width = 51
      Height = 18
      Caption = 'Usuario:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 12
      Top = 133
      Width = 22
      Height = 13
      Caption = 'A'#241'o:'
    end
    object Label5: TLabel
      Left = 12
      Top = 158
      Width = 23
      Height = 13
      Caption = 'Mes:'
    end
    object Label1: TLabel
      Left = 12
      Top = 14
      Width = 94
      Height = 13
      Caption = 'Unidad de Proceso:'
    end
    object Label6: TLabel
      Left = 12
      Top = 38
      Width = 80
      Height = 13
      Caption = 'Unidad de Pago:'
    end
    object Label7: TLabel
      Left = 12
      Top = 62
      Width = 32
      Height = 13
      Caption = 'UGEL:'
    end
    object edtAno: TEdit
      Left = 113
      Top = 130
      Width = 33
      Height = 21
      TabOrder = 2
    end
    object edtMes: TEdit
      Left = 113
      Top = 154
      Width = 27
      Height = 21
      TabOrder = 3
    end
    object dblcdUsuId: TwwDBLookupComboDlg
      Left = 113
      Top = 107
      Width = 84
      Height = 21
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      TabOrder = 1
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnExit = dblcdUsuIdExit
    end
    object dblcdEquId: TwwDBLookupComboDlg
      Left = 113
      Top = 83
      Width = 52
      Height = 21
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcdEquIdChange
    end
    object Panel2: TPanel
      Left = 203
      Top = 83
      Width = 205
      Height = 23
      Caption = 'Panel2'
      Enabled = False
      TabOrder = 5
      object meEqudes: TMaskEdit
        Left = 1
        Top = 1
        Width = 203
        Height = 21
        TabOrder = 0
      end
    end
    object Panel3: TPanel
      Left = 203
      Top = 107
      Width = 205
      Height = 23
      Caption = 'Panel2'
      Enabled = False
      TabOrder = 6
      object meUsudes: TMaskEdit
        Left = 1
        Top = 1
        Width = 203
        Height = 21
        TabOrder = 0
      end
    end
    object BitBtn1: TBitBtn
      Left = 334
      Top = 138
      Width = 73
      Height = 29
      Caption = 'Procesar'
      TabOrder = 4
      OnClick = BitBtn1Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000BE00546D6F6E
        6D6F6E6D6F6E6D6F6E6D6F6E979899000000AAB3B77476760000006D6F6E6D6F
        6E6D6F6E6D6F6E6D6F6E6D6F6E6D6F6E6D6F6E0000006E97A474767600082A26
        2A2C252A2C6D6F6E6D6F6E6D6F6E56ACE1000000858B8C747676BE0054747676
        0000166D6F6EBEBCBC6D6F6E6D6F6E858B8C888D8E000000B2E7FC747676A770
        006D6F6E6D6F6E6D6F6E3D3F3F6D6F6E222525444C4D2D34360000003D3F40BF
        C2C3C3C5C63D3F40BEBCBC2C3335474E50222526CCCCCC00000056ACE1040506
        7D8384B3B9BB61686A373E406C7171B1B4B2B1B5B46E7576373E40686E6FCCCC
        CC8C8F8E0305056D6F6E6D6F6E6D6F6E292A2BB6BABB919799ABB1B4C2D4E3C4
        E0F3C3E4F6D5E9F3C4CCCFABB3B5CCCECE2E2E2E6D6F6E6D6F6E6D6F6E6D6F6E
        6D6F6E4C5253B6BDC193C5E87DBDEEA1D6F8B2E7FBB2E7FCBCDFF2CCD6D95B60
        616D6F6E6D6F6E6D6F6E6D6F6E090B0B292E2F969FA388B9DA59ADE485C5F440
        5969476169BEF5FDB1E5F9B4D2E7B0B6B92A2F31080A0B6D6F6E363A3AC3C4C4
        C6C8CAAEB6BA5FA3CD4EA6DD2D556F6D6F6E6D6F6E4D6877ABDEFC94BFDFBEC7
        CACBCFCFCACACB2F2F2F3A3C3C7E808185898A9CA5AB5093BA4BA4DF4F9DD123
        3C4E2840518CBEE39DD3FA699DC2AAB3B7898D8E8283843433336D6F6E6D6F6E
        3D3F406C6D6E788E9B4A9BD34EA7E356ACE163B2E576BEF06CAEDC8297A57476
        766D6F6E6D6F6E6D6F6E6D6F6E6D6F6E6D6F6E3D3F40C2C2C17A8D985893B853
        9AC5559CC75D97B980949CCFCFCE3D3F406D6F6E6D6F6E6D6F6E6D6F6E6D6F6E
        1B1B1BD2CDCE3D3F40656868757C7E9EAAAE9FAAAF767F81696D6D3D3F40D6D5
        D4191A1A6D6F6E6D6F6E6D6F6E6D6F6E1D1D1D1D1D1D6D6F6E6D6F6E3D3F40BE
        BDBCBEBCBC3D3F3F6D6F6E6D6F6E1F1F1F6D6F6E6D6F6E6D6F6E6D6F6E6D6F6E
        6D6F6E6D6F6E0000005893B86D6F6E3D3F403D3F406D6F6E6D6F6E6D6F6E6D6F
        6E6D6F6E6D6F6E6D6F6EC3C4C4C6C8CAC3C4C4C6C8CAD2CDCE6D6F6E696D6D85
        8B8C1D1D1D6D6F6E6D6F6E6D6F6E6D6F6E6D6F6E6D6F6E6D6F6E}
    end
    object dblcduproid: TwwDBLookupComboDlg
      Left = 113
      Top = 11
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
      TabOrder = 7
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcduproidChange
    end
    object dblcdupagoid: TwwDBLookupComboDlg
      Left = 113
      Top = 35
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
      TabOrder = 8
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcdupagoidChange
    end
    object dblcduseid: TwwDBLookupComboDlg
      Left = 113
      Top = 59
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
      TabOrder = 9
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcduseidChange
    end
    object Panel5: TPanel
      Left = 203
      Top = 59
      Width = 185
      Height = 23
      Caption = 'Panel1'
      Enabled = False
      TabOrder = 10
      object meusenom: TMaskEdit
        Left = 1
        Top = 1
        Width = 183
        Height = 21
        TabOrder = 0
      end
    end
    object Panel4: TPanel
      Left = 203
      Top = 35
      Width = 185
      Height = 23
      Caption = 'Panel1'
      Enabled = False
      TabOrder = 11
      object meupagonom: TMaskEdit
        Left = 1
        Top = 1
        Width = 183
        Height = 21
        TabOrder = 0
      end
    end
    object Panel1: TPanel
      Left = 203
      Top = 11
      Width = 185
      Height = 23
      Caption = 'pnlupronom'
      Enabled = False
      TabOrder = 12
      object meupronom: TMaskEdit
        Left = 1
        Top = 1
        Width = 183
        Height = 21
        TabOrder = 0
      end
    end
  end
  object ppbdeAnulaApo: TppBDEPipeline
    DataSource = DM1.dsReporte
    UserName = 'bdeAnulaApo'
    Left = 431
    Top = 10
  end
  object ppRAnulaApo: TppReport
    AutoStop = False
    DataPipeline = ppbdeAnulaApo
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Documents and Settings\irevilla\Escritorio\REPORTE.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 431
    Top = 10
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppbdeAnulaApo'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 34660
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'REPORTE DE APORTES ANULADOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5556
        mmLeft = 53711
        mmTop = 6615
        mmWidth = 89959
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Derrama Magisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 34131
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Equipo de Cobranza'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 1323
        mmTop = 4233
        mmWidth = 30268
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'F.Anula'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 1852
        mmTop = 28575
        mmWidth = 11430
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Observaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 18785
        mmTop = 28575
        mmWidth = 18838
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'No.Operac.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 104511
        mmTop = 28575
        mmWidth = 16722
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Fe.Operac.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 124354
        mmTop = 28575
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Per.Cob'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 143669
        mmTop = 28575
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Aporte'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 160073
        mmTop = 28575
        mmWidth = 10160
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Per.Cont'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 171980
        mmTop = 28575
        mmWidth = 13123
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'Fecha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 158221
        mmTop = 0
        mmWidth = 9948
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'Pag.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 158486
        mmTop = 3969
        mmWidth = 7620
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 170127
        mmTop = 0
        mmWidth = 19050
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 170392
        mmTop = 4233
        mmWidth = 1693
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 27252
        mmWidth = 196850
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 33338
        mmWidth = 196850
        BandType = 0
      end
      object ppLanomes: TppLabel
        UserName = 'Lanomes'
        Caption = 'Lanomes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 111654
        mmTop = 12435
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 'Cnt'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 188384
        mmTop = 28575
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'A'#209'O Y MES DE ANULACION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 63765
        mmTop = 12435
        mmWidth = 46302
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'fecanula'
        DataPipeline = ppbdeAnulaApo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdeAnulaApo'
        mmHeight = 3704
        mmLeft = 265
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'obsanula'
        DataPipeline = ppbdeAnulaApo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdeAnulaApo'
        mmHeight = 3175
        mmLeft = 17992
        mmTop = 265
        mmWidth = 85990
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'transnope'
        DataPipeline = ppbdeAnulaApo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdeAnulaApo'
        mmHeight = 3704
        mmLeft = 104511
        mmTop = 0
        mmWidth = 18521
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'transfope'
        DataPipeline = ppbdeAnulaApo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdeAnulaApo'
        mmHeight = 3704
        mmLeft = 124884
        mmTop = 0
        mmWidth = 17727
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'transano'
        DataPipeline = ppbdeAnulaApo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdeAnulaApo'
        mmHeight = 3704
        mmLeft = 143669
        mmTop = 0
        mmWidth = 7938
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'transmes'
        DataPipeline = ppbdeAnulaApo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdeAnulaApo'
        mmHeight = 3704
        mmLeft = 152400
        mmTop = 0
        mmWidth = 4233
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'transmto'
        DataPipeline = ppbdeAnulaApo
        DisplayFormat = '##,##.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeAnulaApo'
        mmHeight = 3704
        mmLeft = 157957
        mmTop = 0
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'cntanomm'
        DataPipeline = ppbdeAnulaApo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppbdeAnulaApo'
        mmHeight = 3704
        mmLeft = 173567
        mmTop = 0
        mmWidth = 11642
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'cntflag'
        DataPipeline = ppbdeAnulaApo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppbdeAnulaApo'
        mmHeight = 3704
        mmLeft = 188648
        mmTop = 0
        mmWidth = 4233
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'USUANULA'
        DataPipeline = ppbdeAnulaApo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'ppbdeAnulaApo'
        mmHeight = 3598
        mmLeft = 184150
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 1323
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 15610
      mmPrintPosition = 0
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'TOTAL ANULADOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 76729
        mmTop = 1058
        mmWidth = 29633
        BandType = 7
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 151342
        mmTop = 265
        mmWidth = 21431
        BandType = 7
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 
          'Nota: Solo se contabiliza aportes anulados ya contabilizados ant' +
          'eriormente ( cnt='#39'S'#39')'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 7673
        mmWidth = 125730
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'transmto'
        DataPipeline = ppbdeAnulaApo
        DisplayFormat = '###,##.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeAnulaApo'
        mmHeight = 3704
        mmLeft = 152665
        mmTop = 794
        mmWidth = 19050
        BandType = 7
      end
    end
    object ppGroup5: TppGroup
      BreakName = 'ppDBText12'
      BreakType = btCustomField
      OutlineSettings.CreateNode = True
      NewPage = True
      UserName = 'Group5'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand5: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppLabel16: TppLabel
          UserName = 'Label16'
          Caption = 'NOMBRE DEL USUARIO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 529
          mmTop = 265
          mmWidth = 40746
          BandType = 3
          GroupNo = 0
        end
        object ppDBText20: TppDBText
          UserName = 'DBText20'
          DataField = 'USUANULA'
          DataPipeline = ppbdeAnulaApo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppbdeAnulaApo'
          mmHeight = 4233
          mmLeft = 43921
          mmTop = 265
          mmWidth = 24342
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand5: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup4: TppGroup
      BreakName = 'ppDBText17'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group4'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand4: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 6085
        mmPrintPosition = 0
        object ppShape1: TppShape
          UserName = 'Shape1'
          Brush.Color = clSilver
          mmHeight = 6085
          mmLeft = 0
          mmTop = 0
          mmWidth = 197380
          BandType = 3
          GroupNo = 0
        end
        object ppDBText17: TppDBText
          UserName = 'DBText17'
          DataField = 'uproid'
          DataPipeline = ppbdeAnulaApo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = [fsBold, fsUnderline]
          Transparent = True
          DataPipelineName = 'ppbdeAnulaApo'
          mmHeight = 4586
          mmLeft = 1058
          mmTop = 794
          mmWidth = 12171
          BandType = 3
          GroupNo = 0
        end
        object ppDBText18: TppDBText
          UserName = 'DBText18'
          DataField = 'uproabr'
          DataPipeline = ppbdeAnulaApo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = [fsBold, fsUnderline]
          Transparent = True
          DataPipelineName = 'ppbdeAnulaApo'
          mmHeight = 4586
          mmLeft = 14023
          mmTop = 794
          mmWidth = 129911
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 8996
        mmPrintPosition = 0
        object ppShape2: TppShape
          UserName = 'Shape2'
          Brush.Color = clSilver
          mmHeight = 6085
          mmLeft = 0
          mmTop = 529
          mmWidth = 197380
          BandType = 5
          GroupNo = 0
        end
        object ppLabel20: TppLabel
          UserName = 'Label20'
          Caption = 'TOTAL POR UNIDA DE PROCESO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 41275
          mmTop = 1852
          mmWidth = 51594
          BandType = 5
          GroupNo = 0
        end
        object ppDBText19: TppDBText
          UserName = 'DBText19'
          DataField = 'UPROID'
          DataPipeline = ppbdeAnulaApo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppbdeAnulaApo'
          mmHeight = 3704
          mmLeft = 94456
          mmTop = 1852
          mmWidth = 12171
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc4: TppDBCalc
          UserName = 'DBCalc4'
          DataField = 'transmto'
          DataPipeline = ppbdeAnulaApo
          DisplayFormat = '###,##.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbdeAnulaApo'
          mmHeight = 3704
          mmLeft = 152136
          mmTop = 1588
          mmWidth = 19579
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'ppDBText2'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 6350
        mmPrintPosition = 0
        object ppDBText2: TppDBText
          UserName = 'DBText2'
          DataField = 'useid'
          DataPipeline = ppbdeAnulaApo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold, fsUnderline]
          Transparent = True
          DataPipelineName = 'ppbdeAnulaApo'
          mmHeight = 4057
          mmLeft = 265
          mmTop = 794
          mmWidth = 12171
          BandType = 3
          GroupNo = 0
        end
        object ppDBText13: TppDBText
          UserName = 'DBText13'
          DataField = 'useabr'
          DataPipeline = ppbdeAnulaApo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold, fsUnderline]
          Transparent = True
          DataPipelineName = 'ppbdeAnulaApo'
          mmHeight = 4057
          mmLeft = 13229
          mmTop = 794
          mmWidth = 129911
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 5821
        mmPrintPosition = 0
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'transmto'
          DataPipeline = ppbdeAnulaApo
          DisplayFormat = '###,##.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbdeAnulaApo'
          mmHeight = 3704
          mmLeft = 152136
          mmTop = 794
          mmWidth = 19844
          BandType = 5
          GroupNo = 0
        end
        object ppLabel14: TppLabel
          UserName = 'Label14'
          Caption = 'TOTAL POR USE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 67469
          mmTop = 794
          mmWidth = 25823
          BandType = 5
          GroupNo = 0
        end
        object ppDBText14: TppDBText
          UserName = 'DBText14'
          DataField = 'USEID'
          DataPipeline = ppbdeAnulaApo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppbdeAnulaApo'
          mmHeight = 3704
          mmLeft = 94192
          mmTop = 794
          mmWidth = 12171
          BandType = 5
          GroupNo = 0
        end
        object ppLine4: TppLine
          UserName = 'Line4'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 151077
          mmTop = 265
          mmWidth = 21431
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'ppDBText6'
      BreakType = btCustomField
      KeepTogether = True
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
        mmHeight = 5556
        mmPrintPosition = 0
        object ppLabel15: TppLabel
          UserName = 'Label15'
          Caption = 'TOTAL POR Nro. OPERACION'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 36248
          mmTop = 529
          mmWidth = 45932
          BandType = 5
          GroupNo = 1
        end
        object ppDBText1: TppDBText
          UserName = 'DBText1'
          DataField = 'TRANSNOPE'
          DataPipeline = ppbdeAnulaApo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppbdeAnulaApo'
          mmHeight = 3704
          mmLeft = 83608
          mmTop = 529
          mmWidth = 22490
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          DataField = 'transmto'
          DataPipeline = ppbdeAnulaApo
          DisplayFormat = '###,##.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbdeAnulaApo'
          mmHeight = 3704
          mmLeft = 152136
          mmTop = 794
          mmWidth = 19844
          BandType = 5
          GroupNo = 1
        end
        object ppLine3: TppLine
          UserName = 'Line3'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 151077
          mmTop = 265
          mmWidth = 21431
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'ppDBText3'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 3969
        mmPrintPosition = 0
        object ppDBText3: TppDBText
          UserName = 'DBText3'
          DataField = 'asoapenom'
          DataPipeline = ppbdeAnulaApo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppbdeAnulaApo'
          mmHeight = 3704
          mmLeft = 0
          mmTop = 265
          mmWidth = 83079
          BandType = 3
          GroupNo = 2
        end
        object ppDBText15: TppDBText
          UserName = 'DBText15'
          DataField = 'asocodmod'
          DataPipeline = ppbdeAnulaApo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppbdeAnulaApo'
          mmHeight = 3704
          mmLeft = 83608
          mmTop = 265
          mmWidth = 18785
          BandType = 3
          GroupNo = 2
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 2381
        mmPrintPosition = 0
      end
    end
  end
end
