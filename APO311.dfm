object Festcueapo: TFestcueapo
  Left = 9
  Top = 91
  BorderStyle = bsDialog
  Caption = 'Estado de cuenta de Aportes'
  ClientHeight = 459
  ClientWidth = 764
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 9
    Top = 4
    Width = 73
    Height = 13
    Caption = 'C'#243'digo modular'
  end
  object SpeedButton1: TSpeedButton
    Left = 101
    Top = 20
    Width = 23
    Height = 22
    Caption = '...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object Label2: TLabel
    Left = 127
    Top = 4
    Width = 164
    Height = 13
    Caption = 'Apellidos y Nombre(s) del asociado'
  end
  object Label3: TLabel
    Left = 520
    Top = 45
    Width = 77
    Height = 13
    Caption = 'Unidad de Pago'
  end
  object Label4: TLabel
    Left = 3
    Top = 45
    Width = 67
    Height = 13
    Caption = 'Departamento'
  end
  object Label5: TLabel
    Left = 255
    Top = 45
    Width = 91
    Height = 13
    Caption = 'Unidad de Proceso'
  end
  object Label6: TLabel
    Left = 520
    Top = 4
    Width = 31
    Height = 13
    Caption = 'D.N.I.:'
  end
  object pnlasocodmod: TPanel
    Left = 6
    Top = 20
    Width = 91
    Height = 23
    TabOrder = 0
    object measocodmod: TMaskEdit
      Left = 1
      Top = 1
      Width = 89
      Height = 21
      TabOrder = 0
      OnChange = measocodmodChange
      OnExit = measocodmodExit
    end
  end
  object Panel1: TPanel
    Left = 127
    Top = 20
    Width = 386
    Height = 23
    Caption = 'Panel1'
    Enabled = False
    TabOrder = 1
    object measoapenomdni: TMaskEdit
      Left = 1
      Top = 1
      Width = 384
      Height = 21
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 3
    Top = 61
    Width = 246
    Height = 23
    Caption = 'Panel1'
    Enabled = False
    TabOrder = 2
    object medepdes: TMaskEdit
      Left = 1
      Top = 1
      Width = 244
      Height = 21
      TabOrder = 0
    end
  end
  object Panel3: TPanel
    Left = 255
    Top = 61
    Width = 246
    Height = 23
    Caption = 'Panel1'
    Enabled = False
    TabOrder = 3
    object meuniprodes: TMaskEdit
      Left = 1
      Top = 1
      Width = 244
      Height = 21
      TabOrder = 0
    end
  end
  object Panel4: TPanel
    Left = 518
    Top = 61
    Width = 246
    Height = 23
    Caption = 'Panel1'
    Enabled = False
    TabOrder = 4
    object meunipagdes: TMaskEdit
      Left = 1
      Top = 1
      Width = 244
      Height = 21
      TabOrder = 0
    end
  end
  object Panel5: TPanel
    Left = 520
    Top = 19
    Width = 126
    Height = 23
    Caption = 'Panel1'
    Enabled = False
    TabOrder = 5
    object measodni: TMaskEdit
      Left = 1
      Top = 1
      Width = 124
      Height = 21
      TabOrder = 0
    end
  end
  object Panel6: TPanel
    Left = 3
    Top = 101
    Width = 246
    Height = 23
    Caption = 'Panel1'
    Enabled = False
    TabOrder = 6
    object meunigesdes: TMaskEdit
      Left = 1
      Top = 1
      Width = 244
      Height = 21
      TabOrder = 0
    end
  end
  object btnprocesar: TBitBtn
    Left = 256
    Top = 95
    Width = 79
    Height = 33
    Caption = 'Procesar'
    TabOrder = 7
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
  object wwDBGrid1: TwwDBGrid
    Left = 8
    Top = 136
    Width = 745
    Height = 273
    DisableThemesInTitle = False
    PictureMasks.Strings = (
      'MONAPO'#9'##,###.00'#9'T'#9'T'
      'MONDEV'#9'##,###.00'#9'T'#9'T'
      'MONTOT'#9'##,###.00'#9'T'#9'T')
    Selected.Strings = (
      'TRANSANO'#9'7'#9'A'#241'o del~aporte'#9#9
      'DESMES'#9'11'#9'Mes del~aporte'#9#9
      'DESUSE'#9'25'#9'Unidad de~gesti'#243'n'#9#9
      'FORPAG'#9'7'#9'Forma~de pago'#9#9
      'FECOPE'#9'10'#9'Fecha de~operaci'#243'n'#9#9
      'NUMOPE'#9'20'#9'N'#250'mero de~operaci'#243'n'#9#9
      'MONAPO'#9'10'#9'Monto del~aporte'#9#9
      'MONDEV'#9'10'#9'Monto de~la devoluci'#243'n'#9#9
      'MONTOT'#9'10'#9'Monto~Total'#9#9
      'DESNOAPO'#9'30'#9'Motivo del~no aporte'#9'F'#9
      'DETDESNOAPO'#9'250'#9'Descripci'#243'n del no aporte'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = dsaportes
    Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 8
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
  end
  object BitBtn1: TBitBtn
    Left = 589
    Top = 416
    Width = 79
    Height = 33
    Caption = 'Imprimir'
    TabOrder = 9
    OnClick = BitBtn1Click
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
  object BitBtn2: TBitBtn
    Left = 677
    Top = 416
    Width = 79
    Height = 33
    Caption = 'Cerrar'
    TabOrder = 10
    OnClick = BitBtn2Click
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
  object cdsaportes: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'TRANSANO'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'TRANSMES'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'DESMES'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'DESUSE'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'FORPAG'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'FECOPE'
        DataType = ftDate
      end
      item
        Name = 'NUMOPE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'MONAPO'
        DataType = ftFloat
      end
      item
        Name = 'MONDEV'
        DataType = ftFloat
      end
      item
        Name = 'MONTOT'
        DataType = ftFloat
      end
      item
        Name = 'DESMOTNOAPO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'COMMOTNOAPO'
        DataType = ftString
        Size = 250
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 352
    Top = 96
    Data = {
      3C0100009619E0BD01000000180000000C0000000000030000003C0108545241
      4E53414E4F0100490000000100055749445448020002000400085452414E534D
      45530100490000000100055749445448020002000200064445534D4553010049
      0000000100055749445448020002000900064445535553450100490000000100
      05574944544802000200190006464F5250414701004900000001000557494454
      48020002000300064645434F50450400060000000000064E554D4F5045010049
      0000000100055749445448020002001400064D4F4E41504F0800040000000000
      064D4F4E4445560800040000000000064D4F4E544F5408000400000000000B44
      45534D4F544E4F41504F0100490000000100055749445448020002001E000B43
      4F4D4D4F544E4F41504F010049000000010005574944544802000200FA000000}
  end
  object dsaportes: TDataSource
    DataSet = cdsaportes
    Left = 360
    Top = 104
  end
  object ppbdeestcueapo: TppBDEPipeline
    DataSource = dsaportes
    UserName = 'bdeestcueapo'
    Left = 424
    Top = 96
    object ppbdeestcueapoppField1: TppField
      FieldAlias = 'TRANSANO'
      FieldName = 'TRANSANO'
      FieldLength = 4
      DisplayWidth = 7
      Position = 0
    end
    object ppbdeestcueapoppField2: TppField
      FieldAlias = 'DESMES'
      FieldName = 'DESMES'
      FieldLength = 9
      DisplayWidth = 11
      Position = 1
    end
    object ppbdeestcueapoppField3: TppField
      FieldAlias = 'DESUSE'
      FieldName = 'DESUSE'
      FieldLength = 25
      DisplayWidth = 25
      Position = 2
    end
    object ppbdeestcueapoppField4: TppField
      FieldAlias = 'FORPAG'
      FieldName = 'FORPAG'
      FieldLength = 3
      DisplayWidth = 7
      Position = 3
    end
    object ppbdeestcueapoppField5: TppField
      FieldAlias = 'FECOPE'
      FieldName = 'FECOPE'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 4
    end
    object ppbdeestcueapoppField6: TppField
      FieldAlias = 'NUMOPE'
      FieldName = 'NUMOPE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 5
    end
    object ppbdeestcueapoppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'MONAPO'
      FieldName = 'MONAPO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object ppbdeestcueapoppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'MONDEV'
      FieldName = 'MONDEV'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object ppbdeestcueapoppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'MONTOT'
      FieldName = 'MONTOT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object ppbdeestcueapoppField10: TppField
      FieldAlias = 'TRANSMES'
      FieldName = 'TRANSMES'
      FieldLength = 2
      DisplayWidth = 2
      Position = 9
    end
    object ppbdeestcueapoppField11: TppField
      FieldAlias = 'DESMOTNOAPO'
      FieldName = 'DESMOTNOAPO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 10
    end
    object ppbdeestcueapoppField12: TppField
      FieldAlias = 'COMMOTNOAPO'
      FieldName = 'COMMOTNOAPO'
      FieldLength = 250
      DisplayWidth = 250
      Position = 11
    end
  end
  object pprestcueapo: TppReport
    AutoStop = False
    DataPipeline = ppbdeestcueapo
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
      'C:\Documents and Settings\irevilla\Escritorio\Cuenta Individual ' +
      'Control WMC.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 440
    Top = 96
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppbdeestcueapo'
    object ppHeaderBand1: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 61648
      mmPrintPosition = 0
      object ppLine8: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 5292
        mmTop = 16669
        mmWidth = 191031
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 177271
        mmTop = 3969
        mmWidth = 19315
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label1'
        Caption = 'Derrama Magisterial'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 5292
        mmTop = 0
        mmWidth = 30427
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label17'
        Caption = 'Equipo de Aportes'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 5292
        mmTop = 3969
        mmWidth = 28279
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label18'
        Caption = 'Fecha  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 161132
        mmTop = 0
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label19'
        Caption = 'Hora    '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 161132
        mmTop = 3969
        mmWidth = 10848
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 177271
        mmTop = 0
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label401'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 173567
        mmTop = 3969
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label402'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 173567
        mmTop = 0
        mmWidth = 1323
        BandType = 0
      end
      object pplbltitulo: TppLabel
        UserName = 'Label2'
        Caption = 'ESTADO DE APORTES RECAUDADOS AL  03/08/2005'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 51065
        mmTop = 11642
        mmWidth = 80963
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label3'
        Caption = 'C'#243'digo Modular'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 5292
        mmTop = 17463
        mmWidth = 24342
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label4'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 37835
        mmTop = 17463
        mmWidth = 1058
        BandType = 0
      end
      object pplasocodmod: TppLabel
        UserName = 'Label5'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 39952
        mmTop = 17463
        mmWidth = 23813
        BandType = 0
      end
      object pplasoapenomdni: TppLabel
        UserName = 'Label6'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 65352
        mmTop = 17463
        mmWidth = 118534
        BandType = 0
      end
      object ppLabel54: TppLabel
        UserName = 'Label7'
        Caption = 'UGEL.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 5292
        mmTop = 30163
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel55: TppLabel
        UserName = 'Label8'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 37835
        mmTop = 30163
        mmWidth = 1058
        BandType = 0
      end
      object pplblusenom: TppLabel
        UserName = 'Label9'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 39952
        mmTop = 30163
        mmWidth = 53975
        BandType = 0
      end
      object ppLabel57: TppLabel
        UserName = 'Label10'
        Caption = 'Unidad de Pago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 95250
        mmTop = 30163
        mmWidth = 24077
        BandType = 0
      end
      object ppLabel58: TppLabel
        UserName = 'Label11'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 127794
        mmTop = 30163
        mmWidth = 1058
        BandType = 0
      end
      object pplblupagonom: TppLabel
        UserName = 'Label12'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 130175
        mmTop = 30163
        mmWidth = 59531
        BandType = 0
      end
      object ppLabel60: TppLabel
        UserName = 'Label13'
        Caption = 'Unidad de Proceso'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 5292
        mmTop = 34396
        mmWidth = 28840
        BandType = 0
      end
      object ppLabel61: TppLabel
        UserName = 'Label14'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 37835
        mmTop = 34397
        mmWidth = 1058
        BandType = 0
      end
      object pplblupronom: TppLabel
        UserName = 'Label15'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 39952
        mmTop = 34396
        mmWidth = 53975
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label20'
        Caption = 'Reg. Pensi'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 95250
        mmTop = 34396
        mmWidth = 20108
        BandType = 0
      end
      object ppLabel64: TppLabel
        UserName = 'Label21'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 127794
        mmTop = 34396
        mmWidth = 1058
        BandType = 0
      end
      object pplblregpen: TppLabel
        UserName = 'Label22'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 130175
        mmTop = 34396
        mmWidth = 59531
        BandType = 0
      end
      object ppLabel66: TppLabel
        UserName = 'Label23'
        Caption = 'Nombramiento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 5292
        mmTop = 38631
        mmWidth = 22490
        BandType = 0
      end
      object ppLabel67: TppLabel
        UserName = 'Label27'
        Caption = 'Cese'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 96309
        mmTop = 38629
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel68: TppLabel
        UserName = 'Label28'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 37835
        mmTop = 38629
        mmWidth = 1058
        BandType = 0
      end
      object ppLabel69: TppLabel
        UserName = 'Label29'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 127794
        mmTop = 38629
        mmWidth = 1058
        BandType = 0
      end
      object pplblasoresnom: TppLabel
        UserName = 'Label24'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 40217
        mmTop = 38629
        mmWidth = 13758
        BandType = 0
      end
      object pplblasofresnom: TppLabel
        UserName = 'Label25'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 56886
        mmTop = 38629
        mmWidth = 17727
        BandType = 0
      end
      object pplblasoresces: TppLabel
        UserName = 'Label26'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 130175
        mmTop = 38629
        mmWidth = 13758
        BandType = 0
      end
      object pplblasofresces: TppLabel
        UserName = 'Label30'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 147902
        mmTop = 38629
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel93: TppLabel
        UserName = 'Label50'
        Caption = 'Pagina'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 161132
        mmTop = 7938
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel94: TppLabel
        UserName = 'Label51'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 173567
        mmTop = 7938
        mmWidth = 1323
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 177271
        mmTop = 7938
        mmWidth = 3175
        BandType = 0
      end
      object ppLabel95: TppLabel
        UserName = 'Label95'
        Caption = 'Periodo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 5292
        mmTop = 53446
        mmWidth = 12435
        BandType = 0
      end
      object ppLabel98: TppLabel
        UserName = 'Label98'
        Caption = 'Descripci'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 33867
        mmTop = 53446
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel192: TppLabel
        UserName = 'Label192'
        Caption = 'de UGEL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 33867
        mmTop = 57150
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel197: TppLabel
        UserName = 'Label197'
        Caption = 'N'#250'mero de '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 112184
        mmTop = 53446
        mmWidth = 18255
        BandType = 0
      end
      object ppLabel198: TppLabel
        UserName = 'Label198'
        Caption = 'Operaci'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 112184
        mmTop = 57150
        mmWidth = 15875
        BandType = 0
      end
      object ppLine47: TppLine
        UserName = 'Line47'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 5292
        mmTop = 52652
        mmWidth = 191031
        BandType = 0
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 5292
        mmTop = 61119
        mmWidth = 191031
        BandType = 0
      end
      object ppLabel183: TppLabel
        UserName = 'Label183'
        Caption = 'Aporte'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 135467
        mmTop = 53446
        mmWidth = 11905
        BandType = 0
      end
      object ppLabel190: TppLabel
        UserName = 'Label190'
        Caption = 'Devoluci'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 153194
        mmTop = 53446
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label16'
        Caption = 'Cod. Pago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 95250
        mmTop = 25929
        mmWidth = 15875
        BandType = 0
      end
      object pplcodpag: TppLabel
        UserName = 'Label31'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 130175
        mmTop = 25929
        mmWidth = 31485
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label32'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 127794
        mmTop = 25929
        mmWidth = 1058
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label33'
        Caption = 'Situaci'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 5292
        mmTop = 25929
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label34'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 37835
        mmTop = 25929
        mmWidth = 1058
        BandType = 0
      end
      object pplsitdoc: TppLabel
        UserName = 'Label35'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 39952
        mmTop = 25929
        mmWidth = 39952
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label36'
        Caption = 'DNI'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 5292
        mmTop = 21697
        mmWidth = 5556
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label37'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 37835
        mmTop = 21697
        mmWidth = 1058
        BandType = 0
      end
      object pplasodni: TppLabel
        UserName = 'Label38'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 39952
        mmTop = 21697
        mmWidth = 22225
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label39'
        Caption = 'Cuenta de Ahorros'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 95250
        mmTop = 21697
        mmWidth = 28617
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label40'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 127794
        mmTop = 21697
        mmWidth = 1058
        BandType = 0
      end
      object pplasoncta: TppLabel
        UserName = 'Label41'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 130175
        mmTop = 21696
        mmWidth = 26458
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label42'
        Caption = 'Direcci'#243'n domicilio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 5292
        mmTop = 42863
        mmWidth = 29422
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label43'
        Caption = 'Centro laboral'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 5292
        mmTop = 47096
        mmWidth = 21590
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label44'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 37835
        mmTop = 42863
        mmWidth = 1058
        BandType = 0
      end
      object pplasodir: TppLabel
        UserName = 'Label45'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3683
        mmLeft = 40481
        mmTop = 42863
        mmWidth = 149733
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label46'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 37835
        mmTop = 47096
        mmWidth = 1058
        BandType = 0
      end
      object pplcenedu: TppLabel
        UserName = 'Label47'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3683
        mmLeft = 40481
        mmTop = 47096
        mmWidth = 149733
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label48'
        Caption = 'Forma de'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 77258
        mmTop = 53446
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label49'
        Caption = 'Pago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 77257
        mmTop = 57150
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label52'
        Caption = 'Fecha de'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 93663
        mmTop = 53446
        mmWidth = 13494
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label53'
        Caption = 'Operaci'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 93663
        mmTop = 57150
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label1901'
        Caption = 'Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 180446
        mmTop = 53446
        mmWidth = 9525
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'DESMES'
        DataPipeline = ppbdeestcueapo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdeestcueapo'
        mmHeight = 3175
        mmLeft = 5292
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'TRANSANO'
        DataPipeline = ppbdeestcueapo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdeestcueapo'
        mmHeight = 3175
        mmLeft = 23283
        mmTop = 0
        mmWidth = 9260
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'DESUSE'
        DataPipeline = ppbdeestcueapo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdeestcueapo'
        mmHeight = 3175
        mmLeft = 33867
        mmTop = 0
        mmWidth = 42069
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'FORPAG'
        DataPipeline = ppbdeestcueapo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdeestcueapo'
        mmHeight = 3175
        mmLeft = 77258
        mmTop = 0
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'FECOPE'
        DataPipeline = ppbdeestcueapo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdeestcueapo'
        mmHeight = 3175
        mmLeft = 93663
        mmTop = 0
        mmWidth = 15875
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'NUMOPE'
        DataPipeline = ppbdeestcueapo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdeestcueapo'
        mmHeight = 3175
        mmLeft = 112184
        mmTop = 0
        mmWidth = 18256
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'MONAPO'
        DataPipeline = ppbdeestcueapo
        DisplayFormat = '#,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeestcueapo'
        mmHeight = 3175
        mmLeft = 135467
        mmTop = 0
        mmWidth = 11906
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'MONDEV'
        DataPipeline = ppbdeestcueapo
        DisplayFormat = '#,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeestcueapo'
        mmHeight = 3175
        mmLeft = 158221
        mmTop = 0
        mmWidth = 11906
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'MONTOT'
        DataPipeline = ppbdeestcueapo
        DisplayFormat = '#,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeestcueapo'
        mmHeight = 3175
        mmLeft = 178065
        mmTop = 0
        mmWidth = 11906
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'DESMOTNOAPO'
        DataPipeline = ppbdeestcueapo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        DataPipelineName = 'ppbdeestcueapo'
        mmHeight = 3175
        mmLeft = 33867
        mmTop = 0
        mmWidth = 42069
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText101'
        DataField = 'COMMOTNOAPO'
        DataPipeline = ppbdeestcueapo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        DataPipelineName = 'ppbdeestcueapo'
        mmHeight = 3175
        mmLeft = 77258
        mmTop = 0
        mmWidth = 112713
        BandType = 4
      end
    end
    object ppSummaryBand8: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 10848
      mmPrintPosition = 0
      object ppLine39: TppLine
        UserName = 'Line402'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 5292
        mmTop = 529
        mmWidth = 191031
        BandType = 7
      end
      object ppLine51: TppLine
        UserName = 'Line51'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 5292
        mmTop = 5556
        mmWidth = 191031
        BandType = 7
      end
      object pplbluser: TppLabel
        UserName = 'lbluser_a2'
        Caption = 'ppLblUser'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 5292
        mmTop = 6350
        mmWidth = 87313
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'MONAPO'
        DataPipeline = ppbdeestcueapo
        DisplayFormat = '#,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeestcueapo'
        mmHeight = 3175
        mmLeft = 135467
        mmTop = 1323
        mmWidth = 11905
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'MONDEV'
        DataPipeline = ppbdeestcueapo
        DisplayFormat = '#,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeestcueapo'
        mmHeight = 3175
        mmLeft = 158221
        mmTop = 1323
        mmWidth = 11905
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'MONTOT'
        DataPipeline = ppbdeestcueapo
        DisplayFormat = '#,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdeestcueapo'
        mmHeight = 3175
        mmLeft = 178065
        mmTop = 1323
        mmWidth = 11905
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
end
