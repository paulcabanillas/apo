object FRepX: TFRepX
  Left = 530
  Top = 443
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'C'#225'lculo de la Cuenta Individual'
  ClientHeight = 273
  ClientWidth = 445
  Color = 13165023
  Font.Charset = ANSI_CHARSET
  Font.Color = clNavy
  Font.Height = -11
  Font.Name = 'Comic Sans MS'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 15
  object pnlCabecera: TPanel
    Left = 3
    Top = 3
    Width = 438
    Height = 99
    BevelOuter = bvNone
    BorderWidth = 1
    Color = 10207162
    TabOrder = 0
    object lblApeMat: TLabel
      Left = 118
      Top = 6
      Width = 107
      Height = 15
      Caption = 'Apellidos y Nombres '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 14
      Top = 6
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
    object Label2: TLabel
      Left = 16
      Top = 104
      Width = 38
      Height = 15
      Caption = 'Inicio :'
    end
    object Z2bbtnCancel: TfcShapeBtn
      Left = 391
      Top = 57
      Width = 34
      Height = 31
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
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 1
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = Z2bbtnCancelClick
    end
    object Z2bbtnAceptar: TfcShapeBtn
      Left = 349
      Top = 57
      Width = 34
      Height = 31
      Hint = 'Procesar Cuenta Individual'
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
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 0
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = Z2bbtnAceptarClick
    end
    object edtAsoID: TEdit
      Left = 10
      Top = 27
      Width = 95
      Height = 23
      CharCase = ecUpperCase
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object edtAsociado: TEdit
      Left = 106
      Top = 27
      Width = 324
      Height = 23
      CharCase = ecUpperCase
      Color = 13165023
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object pgCta: TProgressBar
      Left = 12
      Top = 64
      Width = 278
      Height = 16
      Smooth = True
      TabOrder = 4
      Visible = False
    end
    object bbtnImprimir: TfcShapeBtn
      Left = 304
      Top = 57
      Width = 34
      Height = 31
      Hint = 'Imprimir'
      Color = 13165023
      DitherColor = clWhite
      Enabled = False
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 5
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnImprimirClick
    end
  end
  object pnlTipoRep: TPanel
    Left = 121
    Top = 112
    Width = 202
    Height = 151
    BevelInner = bvLowered
    BevelWidth = 2
    Color = 10207162
    TabOrder = 1
    Visible = False
    object StaticText1: TStaticText
      Left = 4
      Top = 4
      Width = 194
      Height = 20
      Align = alTop
      Alignment = taCenter
      Caption = 'Tipo Reporte'
      Color = clNavy
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
    object rgTipoRep: TRadioGroup
      Left = 7
      Top = 25
      Width = 184
      Height = 68
      Color = 10207162
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Control'
        'Asociado')
      ParentColor = False
      TabOrder = 1
    end
    object bbtnAceptar: TfcShapeBtn
      Left = 154
      Top = 106
      Width = 34
      Height = 31
      Hint = 'Guardar Datos'
      Color = 10207162
      DitherColor = clWhite
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 2
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnAceptarClick
    end
    object fcShapeBtn1: TfcShapeBtn
      Left = 116
      Top = 106
      Width = 34
      Height = 31
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
      ShadeStyle = fbsHighlight
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 3
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcShapeBtn1Click
    end
  end
  object ppdbRepCtaInd: TppDBPipeline
    DataSource = DM1.dsReporte3
    UserName = 'dbRepCtaInd'
    Left = 51
    Top = 53
  end
  object ppRepCtaInd: TppReport
    AutoStop = False
    DataPipeline = ppdbRepCtaInd
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
    Template.FileName = 'C:\SOLExes\SOLFormatos\Apo\Dema\Rep Cuenta Individual.rtm'
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppRepCtaIndPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 74
    Top = 101
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbRepCtaInd'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 39688
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
        mmTop = 16404
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
        mmTop = 12171
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
        mmTop = 12171
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
        mmLeft = 16933
        mmTop = 20902
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
        mmLeft = 160338
        mmTop = 16933
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
        mmTop = 16933
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
        mmLeft = 160338
        mmTop = 21696
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
        mmTop = 21696
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
        mmLeft = 60590
        mmTop = 28575
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
        mmLeft = 93927
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        AutoSize = True
        DataField = 'FREG'
        DataPipeline = ppdbRepCtaInd
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppdbRepCtaInd'
        mmHeight = 3704
        mmLeft = 19579
        mmTop = 0
        mmWidth = 7144
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'TRANSNOPE'
        DataPipeline = ppdbRepCtaInd
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRepCtaInd'
        mmHeight = 3704
        mmLeft = 46038
        mmTop = 0
        mmWidth = 16140
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'FORPAGOABR'
        DataPipeline = ppdbRepCtaInd
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbRepCtaInd'
        mmHeight = 3704
        mmLeft = 62706
        mmTop = 0
        mmWidth = 23283
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'TRANSANO'
        DataPipeline = ppdbRepCtaInd
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbRepCtaInd'
        mmHeight = 3704
        mmLeft = 87048
        mmTop = 0
        mmWidth = 6615
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'TRANSMES'
        DataPipeline = ppdbRepCtaInd
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdbRepCtaInd'
        mmHeight = 3704
        mmLeft = 94986
        mmTop = 0
        mmWidth = 3440
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'SALDOANT'
        DataPipeline = ppdbRepCtaInd
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRepCtaInd'
        mmHeight = 3704
        mmLeft = 99748
        mmTop = 0
        mmWidth = 16669
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'INTERESMTO'
        DataPipeline = ppdbRepCtaInd
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRepCtaInd'
        mmHeight = 3704
        mmLeft = 117211
        mmTop = 0
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        DataField = 'BONUSMTO'
        DataPipeline = ppdbRepCtaInd
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRepCtaInd'
        mmHeight = 3704
        mmLeft = 133350
        mmTop = 0
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        DataField = 'TRANSMTO'
        DataPipeline = ppdbRepCtaInd
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRepCtaInd'
        mmHeight = 3704
        mmLeft = 149490
        mmTop = 0
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        DataField = 'TRANSMTODEV'
        DataPipeline = ppdbRepCtaInd
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRepCtaInd'
        mmHeight = 3704
        mmLeft = 166159
        mmTop = 0
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        DataField = 'SALDO'
        DataPipeline = ppdbRepCtaInd
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbRepCtaInd'
        mmHeight = 3704
        mmLeft = 182563
        mmTop = 0
        mmWidth = 16669
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        AutoSize = True
        DataField = 'TRANSFOPE'
        DataPipeline = ppdbRepCtaInd
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppdbRepCtaInd'
        mmHeight = 3704
        mmLeft = 30163
        mmTop = 0
        mmWidth = 16140
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        AutoSize = True
        DataField = 'USEID'
        DataPipeline = ppdbRepCtaInd
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppdbRepCtaInd'
        mmHeight = 3704
        mmLeft = 8731
        mmTop = 0
        mmWidth = 7673
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
      mmHeight = 14288
      mmPrintPosition = 0
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
        mmLeft = 6879
        mmTop = 1058
        mmWidth = 90223
        BandType = 7
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        Caption = 'Label30'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 100277
        mmTop = 1058
        mmWidth = 10848
        BandType = 7
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'DPTOID'
      DataPipeline = ppdbRepCtaInd
      OutlineSettings.CreateNode = True
      NewPage = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppdbRepCtaInd'
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
      DataPipeline = ppdbRepCtaInd
      OutlineSettings.CreateNode = True
      UserName = 'Group4'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppdbRepCtaInd'
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
      DataPipeline = ppdbRepCtaInd
      OutlineSettings.CreateNode = True
      UserName = 'Group9'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppdbRepCtaInd'
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
      DataPipeline = ppdbRepCtaInd
      OutlineSettings.CreateNode = True
      NewPage = True
      UserName = 'Group10'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppdbRepCtaInd'
      object ppGroupHeaderBand10: TppGroupHeaderBand
        BeforePrint = ppGroupHeaderBand10BeforePrint
        mmBottomOffset = 0
        mmHeight = 56886
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
          mmLeft = 17992
          mmTop = 45508
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
          mmLeft = 31485
          mmTop = 45508
          mmWidth = 13229
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
          mmLeft = 47361
          mmTop = 45508
          mmWidth = 13229
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
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3704
          mmLeft = 65088
          mmTop = 49213
          mmWidth = 19050
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
          mmLeft = 87577
          mmTop = 49213
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
          mmLeft = 100806
          mmTop = 45508
          mmWidth = 14288
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
          mmLeft = 120121
          mmTop = 49213
          mmWidth = 8731
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
          mmLeft = 138907
          mmTop = 49213
          mmWidth = 8202
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
          mmLeft = 152929
          mmTop = 49213
          mmWidth = 8731
          BandType = 3
          GroupNo = 4
        end
        object ppLabel27: TppLabel
          UserName = 'Label27'
          Caption = 'Devoluc.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 167746
          mmTop = 49213
          mmWidth = 11113
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
          mmLeft = 183621
          mmTop = 45508
          mmWidth = 14288
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
          mmLeft = 12965
          mmTop = 37306
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
          mmLeft = 9790
          mmTop = 7144
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
          mmLeft = 10054
          mmTop = 12171
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
          mmLeft = 10054
          mmTop = 17198
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
          mmLeft = 10054
          mmTop = 22225
          mmWidth = 25929
          BandType = 3
          GroupNo = 4
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
          mmLeft = 59531
          mmTop = 22225
          mmWidth = 20638
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
          mmLeft = 10054
          mmTop = 27252
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
          mmLeft = 118534
          mmTop = 12171
          mmWidth = 26458
          BandType = 3
          GroupNo = 4
        end
        object ppDBText17: TppDBText
          UserName = 'DBText17'
          DataField = 'ASOAPENOM'
          DataPipeline = ppdbRepCtaInd
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppdbRepCtaInd'
          mmHeight = 3704
          mmLeft = 118534
          mmTop = 7144
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
          mmLeft = 118534
          mmTop = 22225
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
          mmLeft = 154782
          mmTop = 22225
          mmWidth = 19579
          BandType = 3
          GroupNo = 4
        end
        object ppDBText1: TppDBText
          UserName = 'DBText1'
          DataField = 'ASOCODMOD'
          DataPipeline = ppdbRepCtaInd
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppdbRepCtaInd'
          mmHeight = 3704
          mmLeft = 37042
          mmTop = 7144
          mmWidth = 20373
          BandType = 3
          GroupNo = 4
        end
        object ppDBText4: TppDBText
          UserName = 'DBText4'
          DataField = 'ASORESNOM'
          DataPipeline = ppdbRepCtaInd
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppdbRepCtaInd'
          mmHeight = 3704
          mmLeft = 37042
          mmTop = 22225
          mmWidth = 19050
          BandType = 3
          GroupNo = 4
        end
        object ppDBText5: TppDBText
          UserName = 'DBText5'
          DataField = 'ASOFRESNOM'
          DataPipeline = ppdbRepCtaInd
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppdbRepCtaInd'
          mmHeight = 3704
          mmLeft = 81756
          mmTop = 22225
          mmWidth = 17198
          BandType = 3
          GroupNo = 4
        end
        object ppDBText7: TppDBText
          UserName = 'DBText7'
          DataField = 'ASORESCESE'
          DataPipeline = ppdbRepCtaInd
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppdbRepCtaInd'
          mmHeight = 3704
          mmLeft = 135467
          mmTop = 22225
          mmWidth = 17198
          BandType = 3
          GroupNo = 4
        end
        object ppDBText8: TppDBText
          UserName = 'DBText8'
          DataField = 'ASOFRESCESE'
          DataPipeline = ppdbRepCtaInd
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppdbRepCtaInd'
          mmHeight = 3704
          mmLeft = 177800
          mmTop = 22225
          mmWidth = 17198
          BandType = 3
          GroupNo = 4
        end
        object ppDBText2: TppDBText
          UserName = 'DBText2'
          AutoSize = True
          DataField = 'USEN'
          DataPipeline = ppdbRepCtaInd
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppdbRepCtaInd'
          mmHeight = 3704
          mmLeft = 37042
          mmTop = 12171
          mmWidth = 7144
          BandType = 3
          GroupNo = 4
        end
        object ppDBText3: TppDBText
          UserName = 'DBText3'
          AutoSize = True
          DataField = 'UPAGON'
          DataPipeline = ppdbRepCtaInd
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppdbRepCtaInd'
          mmHeight = 3704
          mmLeft = 37042
          mmTop = 16933
          mmWidth = 11642
          BandType = 3
          GroupNo = 4
        end
        object ppDBText6: TppDBText
          UserName = 'DBText6'
          AutoSize = True
          DataField = 'UPRON'
          DataPipeline = ppdbRepCtaInd
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppdbRepCtaInd'
          mmHeight = 3704
          mmLeft = 146844
          mmTop = 12171
          mmWidth = 9260
          BandType = 3
          GroupNo = 4
        end
        object ppDBText10: TppDBText
          UserName = 'DBText10'
          DataField = 'AAPOR'
          DataPipeline = ppdbRepCtaInd
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppdbRepCtaInd'
          mmHeight = 3704
          mmLeft = 54769
          mmTop = 27517
          mmWidth = 5292
          BandType = 3
          GroupNo = 4
        end
        object ppDBText23: TppDBText
          UserName = 'DBText23'
          DataField = 'ASOFRESNOM'
          DataPipeline = ppdbRepCtaInd
          DisplayFormat = 'YYYY'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppdbRepCtaInd'
          mmHeight = 3704
          mmLeft = 37042
          mmTop = 27517
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
          mmLeft = 60590
          mmTop = 27517
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
          mmLeft = 47625
          mmTop = 27517
          mmWidth = 3704
          BandType = 3
          GroupNo = 4
        end
        object ppLabel48: TppLabel
          UserName = 'Label48'
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
        object ppDBText25: TppDBText
          UserName = 'dbRegPens1'
          AutoSize = True
          DataField = 'REGIMEN'
          DataPipeline = ppdbRepCtaInd
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppdbRepCtaInd'
          mmHeight = 3704
          mmLeft = 134144
          mmTop = 17198
          mmWidth = 11642
          BandType = 3
          GroupNo = 4
        end
        object ppLabel72: TppLabel
          UserName = 'Label72'
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
        object ppLabel75: TppLabel
          UserName = 'Label32'
          Caption = 'Label32'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 156634
          mmTop = 27252
          mmWidth = 10054
          BandType = 3
          GroupNo = 4
        end
        object ppLabel77: TppLabel
          UserName = 'Label77'
          Caption = 'USE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 10054
          mmTop = 45508
          mmWidth = 5292
          BandType = 3
          GroupNo = 4
        end
        object ppLine1: TppLine
          UserName = 'Line1'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 9260
          mmTop = 53711
          mmWidth = 189971
          BandType = 3
          GroupNo = 4
        end
        object ppLine2: TppLine
          UserName = 'Line2'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 9260
          mmTop = 43127
          mmWidth = 189971
          BandType = 3
          GroupNo = 4
        end
        object ppLine3: TppLine
          UserName = 'Line3'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 9260
          mmTop = 34925
          mmWidth = 189971
          BandType = 3
          GroupNo = 4
        end
        object ppLine4: TppLine
          UserName = 'Line4'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 9260
          mmTop = 4233
          mmWidth = 189971
          BandType = 3
          GroupNo = 4
        end
      end
      object ppGroupFooterBand10: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 2910
        mmPrintPosition = 0
        object ppLine5: TppLine
          UserName = 'Line5'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 9260
          mmTop = 794
          mmWidth = 189971
          BandType = 5
          GroupNo = 4
        end
      end
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DM1.dsReporte3
    AutoCreateFields = False
    UserName = 'DBPipeline1'
    Left = 26
    Top = 201
  end
  object ppRepAso: TppReport
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
    OnPreviewFormCreate = ppRepAsoPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 74
    Top = 144
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 39688
      mmPrintPosition = 0
      object ppLabel7: TppLabel
        UserName = 'Label1'
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
      object ppLabel16: TppLabel
        UserName = 'Label16'
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
        mmWidth = 9525
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
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'COBRANZA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 19844
        mmTop = 20902
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
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
      object ppLabel32: TppLabel
        UserName = 'Label32'
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
        mmWidth = 10054
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
        mmTop = 22225
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        Caption = 'ESTADO DE CUENTA INDIVIDUAL DE APORTES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 60590
        mmTop = 28575
        mmWidth = 62706
        BandType = 0
      end
      object ppLabel132: TppLabel
        UserName = 'Label132'
        Caption = 'Usuario:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 160867
        mmTop = 27252
        mmWidth = 10583
        BandType = 0
      end
      object lblUser: TppLabel
        UserName = 'lblUser'
        Caption = 'lblUser'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 174361
        mmTop = 27252
        mmWidth = 8731
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppLabel39: TppLabel
        UserName = 'Label39'
        Caption = '/'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 93927
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        DataField = 'FREG'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 15610
        mmTop = 0
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        DataField = 'TRANSNOPE'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 46038
        mmTop = 0
        mmWidth = 16140
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        DataField = 'FORPAGOABR'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 62706
        mmTop = 0
        mmWidth = 23283
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
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
        mmLeft = 87048
        mmTop = 0
        mmWidth = 6615
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText301'
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
        mmLeft = 94986
        mmTop = 0
        mmWidth = 3440
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText31'
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
        mmLeft = 99748
        mmTop = 0
        mmWidth = 16669
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'DBText32'
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
        mmLeft = 117211
        mmTop = 0
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText33'
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
        mmLeft = 133350
        mmTop = 0
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText34: TppDBText
        UserName = 'DBText34'
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
        mmLeft = 149490
        mmTop = 0
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText35: TppDBText
        UserName = 'DBText201'
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
        mmLeft = 166159
        mmTop = 0
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText36: TppDBText
        UserName = 'DBText36'
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
        mmLeft = 182563
        mmTop = 0
        mmWidth = 16669
        BandType = 4
      end
      object ppDBText37: TppDBText
        UserName = 'DBText37'
        DataField = 'TRANSFOPE'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 30956
        mmTop = 0
        mmWidth = 14552
        BandType = 4
      end
      object ppDBText38: TppDBText
        UserName = 'DBText38'
        AutoSize = True
        DataField = 'USEID'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 7408
        mmTop = 0
        mmWidth = 7673
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
      mmHeight = 14817
      mmPrintPosition = 0
      object ppLabel40: TppLabel
        UserName = 'Label402'
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
        mmLeft = 6879
        mmTop = 1058
        mmWidth = 90223
        BandType = 7
      end
      object ppLabel41: TppLabel
        UserName = 'Label301'
        Caption = 'Label30'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 100277
        mmTop = 1058
        mmWidth = 11113
        BandType = 7
      end
      object RepDevolucionesxEfec: TppSubReport
        UserName = 'RepDevolucionesxEfec'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 8467
        mmWidth = 203200
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = ppDBPipeline2
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
          Left = 368
          Top = 208
          Version = '7.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipeline2'
          object ppTitleBand2: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 16933
            mmPrintPosition = 0
            object ppLabel69: TppLabel
              UserName = 'Label69'
              Caption = 'DEVOLUCIONES POR FECTUAR :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 10054
              mmTop = 529
              mmWidth = 42069
              BandType = 1
            end
            object ppLine15: TppLine
              UserName = 'Line15'
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 10054
              mmTop = 5556
              mmWidth = 114300
              BandType = 1
            end
            object ppLabel74: TppLabel
              UserName = 'Label74'
              Caption = 'Mes de Aporte'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              WordWrap = True
              mmHeight = 7408
              mmLeft = 12965
              mmTop = 6879
              mmWidth = 10054
              BandType = 1
            end
            object ppLabel78: TppLabel
              UserName = 'Label78'
              Caption = 'A'#241'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 41540
              mmTop = 6615
              mmWidth = 5292
              BandType = 1
            end
            object ppLabel79: TppLabel
              UserName = 'Label79'
              Caption = 'Importe'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 55298
              mmTop = 6615
              mmWidth = 9260
              BandType = 1
            end
            object ppLabel80: TppLabel
              UserName = 'Label80'
              Caption = 'Fecha de Operaci'#243'n'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              WordWrap = True
              mmHeight = 7408
              mmLeft = 75671
              mmTop = 6879
              mmWidth = 13229
              BandType = 1
            end
            object ppLabel81: TppLabel
              UserName = 'Label81'
              Caption = 'N'#176' Documento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              WordWrap = True
              mmHeight = 7408
              mmLeft = 99484
              mmTop = 7144
              mmWidth = 14288
              BandType = 1
            end
            object ppLine16: TppLine
              UserName = 'Line16'
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 10054
              mmTop = 15346
              mmWidth = 114300
              BandType = 1
            end
            object ppShape7: TppShape
              UserName = 'Shape7'
              mmHeight = 10054
              mmLeft = 124354
              mmTop = 5556
              mmWidth = 265
              BandType = 1
            end
            object ppShape8: TppShape
              UserName = 'Shape8'
              mmHeight = 10054
              mmLeft = 94192
              mmTop = 5556
              mmWidth = 265
              BandType = 1
            end
            object ppShape9: TppShape
              UserName = 'Shape9'
              mmHeight = 10054
              mmLeft = 69586
              mmTop = 5556
              mmWidth = 265
              BandType = 1
            end
            object ppShape10: TppShape
              UserName = 'Shape10'
              mmHeight = 10054
              mmLeft = 50800
              mmTop = 5556
              mmWidth = 265
              BandType = 1
            end
            object ppShape11: TppShape
              UserName = 'Shape11'
              mmHeight = 10054
              mmLeft = 36777
              mmTop = 5556
              mmWidth = 265
              BandType = 1
            end
            object ppShape12: TppShape
              UserName = 'Shape12'
              mmHeight = 10054
              mmLeft = 10054
              mmTop = 5556
              mmWidth = 265
              BandType = 1
            end
          end
          object ppDetailBand4: TppDetailBand
            BeforePrint = ppDetailBand4BeforePrint
            mmBottomOffset = 0
            mmHeight = 5292
            mmPrintPosition = 0
            object ppDBText51: TppDBText
              UserName = 'DBText51'
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
            object ppDBText52: TppDBText
              UserName = 'DBText52'
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
            object ppDBText53: TppDBText
              UserName = 'DBText53'
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
            object ppDBText54: TppDBText
              UserName = 'DBText54'
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
            object ppDBText55: TppDBText
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
        BeforePrint = ppGroupHeaderBand10BeforePrint
        mmBottomOffset = 0
        mmHeight = 56886
        mmPrintPosition = 0
        object ppLabel42: TppLabel
          UserName = 'Label42'
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
          mmLeft = 17727
          mmTop = 45508
          mmWidth = 10583
          BandType = 3
          GroupNo = 4
        end
        object ppLabel43: TppLabel
          UserName = 'Label43'
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
          mmLeft = 31485
          mmTop = 45508
          mmWidth = 13229
          BandType = 3
          GroupNo = 4
        end
        object ppLabel44: TppLabel
          UserName = 'Label201'
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
          mmLeft = 47361
          mmTop = 45508
          mmWidth = 13229
          BandType = 3
          GroupNo = 4
        end
        object ppLabel45: TppLabel
          UserName = 'Label45'
          Caption = 'Forma de Pago'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3704
          mmLeft = 65088
          mmTop = 49213
          mmWidth = 19050
          BandType = 3
          GroupNo = 4
        end
        object ppLabel46: TppLabel
          UserName = 'Label46'
          Caption = 'Periodo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 87577
          mmTop = 49213
          mmWidth = 9525
          BandType = 3
          GroupNo = 4
        end
        object ppLabel47: TppLabel
          UserName = 'Label47'
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
          mmLeft = 100806
          mmTop = 45508
          mmWidth = 14288
          BandType = 3
          GroupNo = 4
        end
        object ppLabel49: TppLabel
          UserName = 'Label49'
          Caption = 'Inter'#233's'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 120121
          mmTop = 49213
          mmWidth = 8731
          BandType = 3
          GroupNo = 4
        end
        object ppLabel50: TppLabel
          UserName = 'Label501'
          Caption = 'Bonus'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 138907
          mmTop = 49213
          mmWidth = 8202
          BandType = 3
          GroupNo = 4
        end
        object ppLabel51: TppLabel
          UserName = 'Label51'
          Caption = 'Aporte'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 152929
          mmTop = 49213
          mmWidth = 8731
          BandType = 3
          GroupNo = 4
        end
        object ppLabel52: TppLabel
          UserName = 'Label52'
          Caption = 'Devoluc.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 167746
          mmTop = 49213
          mmWidth = 11113
          BandType = 3
          GroupNo = 4
        end
        object ppLabel53: TppLabel
          UserName = 'Label53'
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
          mmLeft = 183621
          mmTop = 45508
          mmWidth = 14288
          BandType = 3
          GroupNo = 4
        end
        object ppLabel54: TppLabel
          UserName = 'Label54'
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
        object ppLabel55: TppLabel
          UserName = 'Label55'
          Caption = 'C'#243'digo Modular'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 9790
          mmTop = 7144
          mmWidth = 19579
          BandType = 3
          GroupNo = 4
        end
        object ppLabel56: TppLabel
          UserName = 'Label101'
          Caption = 'USE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 10054
          mmTop = 12171
          mmWidth = 5292
          BandType = 3
          GroupNo = 4
        end
        object ppLabel57: TppLabel
          UserName = 'Label57'
          Caption = 'Unidad de Pago'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 10054
          mmTop = 17198
          mmWidth = 19844
          BandType = 3
          GroupNo = 4
        end
        object ppLabel58: TppLabel
          UserName = 'Label58'
          Caption = 'Res. Nombramiento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 10054
          mmTop = 22225
          mmWidth = 24606
          BandType = 3
          GroupNo = 4
        end
        object ppLabel59: TppLabel
          UserName = 'Label59'
          Caption = 'Fec.Res.Nomb. :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 59531
          mmTop = 22225
          mmWidth = 20902
          BandType = 3
          GroupNo = 4
        end
        object ppLabel60: TppLabel
          UserName = 'Label601'
          Caption = 'A'#241'os de Aportes a '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 10054
          mmTop = 27252
          mmWidth = 25135
          BandType = 3
          GroupNo = 4
        end
        object ppLabel61: TppLabel
          UserName = 'Label61'
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
        object ppDBText39: TppDBText
          UserName = 'DBText39'
          AutoSize = True
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
          mmWidth = 17463
          BandType = 3
          GroupNo = 4
        end
        object ppLabel62: TppLabel
          UserName = 'Label62'
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
        object ppLabel63: TppLabel
          UserName = 'Label63'
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
        object ppDBText40: TppDBText
          UserName = 'DBText401'
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
        object ppDBText41: TppDBText
          UserName = 'DBText41'
          DataField = 'ASORESNOM'
          DataPipeline = ppDBPipeline1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3704
          mmLeft = 37042
          mmTop = 22225
          mmWidth = 19050
          BandType = 3
          GroupNo = 4
        end
        object ppDBText42: TppDBText
          UserName = 'DBText42'
          DataField = 'ASOFRESNOM'
          DataPipeline = ppDBPipeline1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3704
          mmLeft = 81756
          mmTop = 22225
          mmWidth = 17198
          BandType = 3
          GroupNo = 4
        end
        object ppDBText43: TppDBText
          UserName = 'DBText43'
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
          mmLeft = 135467
          mmTop = 22225
          mmWidth = 17198
          BandType = 3
          GroupNo = 4
        end
        object ppDBText44: TppDBText
          UserName = 'DBText44'
          DataField = 'ASOFRESCESE'
          DataPipeline = ppDBPipeline1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 3704
          mmLeft = 177800
          mmTop = 22225
          mmWidth = 17198
          BandType = 3
          GroupNo = 4
        end
        object ppDBText45: TppDBText
          UserName = 'DBText45'
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
        object ppDBText46: TppDBText
          UserName = 'DBText46'
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
          mmTop = 16933
          mmWidth = 73554
          BandType = 3
          GroupNo = 4
        end
        object ppDBText47: TppDBText
          UserName = 'DBText47'
          AutoSize = True
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
          mmLeft = 148961
          mmTop = 12171
          mmWidth = 9260
          BandType = 3
          GroupNo = 4
        end
        object ppDBText48: TppDBText
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
          mmTop = 27517
          mmWidth = 5292
          BandType = 3
          GroupNo = 4
        end
        object ppDBText49: TppDBText
          UserName = 'DBText49'
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
          mmLeft = 192617
          mmTop = 13758
          mmWidth = 7408
          BandType = 3
          GroupNo = 4
        end
        object ppLabel64: TppLabel
          UserName = 'Label64'
          Caption = 'A'#241'os'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 60590
          mmTop = 27517
          mmWidth = 6879
          BandType = 3
          GroupNo = 4
        end
        object ppLabel65: TppLabel
          UserName = 'Label65'
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
        object ppLabel66: TppLabel
          UserName = 'Label66'
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
        object ppDBText50: TppDBText
          UserName = 'DBText502'
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
        object ppLabel67: TppLabel
          UserName = 'Label67'
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
        object ppLabel68: TppLabel
          UserName = 'Label68'
          Caption = 'Label32'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 160602
          mmTop = 27252
          mmWidth = 10054
          BandType = 3
          GroupNo = 4
        end
        object ppLabel70: TppLabel
          UserName = 'Label701'
          Caption = 'USE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 10054
          mmTop = 45508
          mmWidth = 5292
          BandType = 3
          GroupNo = 4
        end
        object ppLine6: TppLine
          UserName = 'Line6'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 9260
          mmTop = 53711
          mmWidth = 189971
          BandType = 3
          GroupNo = 4
        end
        object ppLine7: TppLine
          UserName = 'Line7'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 9260
          mmTop = 43127
          mmWidth = 189971
          BandType = 3
          GroupNo = 4
        end
        object ppLine8: TppLine
          UserName = 'Line8'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 9260
          mmTop = 34925
          mmWidth = 189971
          BandType = 3
          GroupNo = 4
        end
        object ppLine9: TppLine
          UserName = 'Line9'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 9260
          mmTop = 4233
          mmWidth = 189971
          BandType = 3
          GroupNo = 4
        end
        object ppLabel71: TppLabel
          UserName = 'Label7'
          Caption = '1996'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 36248
          mmTop = 27252
          mmWidth = 6350
          BandType = 3
          GroupNo = 4
        end
        object ppLabel86: TppLabel
          UserName = 'Label86'
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 35454
          mmTop = 7144
          mmWidth = 794
          BandType = 3
          GroupNo = 4
        end
        object ppLabel87: TppLabel
          UserName = 'Label87'
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 35454
          mmTop = 12171
          mmWidth = 794
          BandType = 3
          GroupNo = 4
        end
        object ppLabel88: TppLabel
          UserName = 'Label88'
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 35454
          mmTop = 17198
          mmWidth = 794
          BandType = 3
          GroupNo = 4
        end
        object ppLabel89: TppLabel
          UserName = 'Label89'
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 35454
          mmTop = 22225
          mmWidth = 794
          BandType = 3
          GroupNo = 4
        end
      end
      object ppGroupFooterBand8: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 8202
        mmPrintPosition = 0
        object ppLine10: TppLine
          UserName = 'Line102'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 9260
          mmTop = 794
          mmWidth = 189971
          BandType = 5
          GroupNo = 4
        end
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
          mmLeft = 101071
          mmTop = 2381
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
          mmLeft = 118004
          mmTop = 2381
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
          mmLeft = 133615
          mmTop = 2381
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
          mmLeft = 149754
          mmTop = 2381
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
          mmLeft = 166688
          mmTop = 2381
          mmWidth = 14288
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
          mmLeft = 180446
          mmTop = 2381
          mmWidth = 18785
          BandType = 5
          GroupNo = 4
        end
        object ppLine11: TppLine
          UserName = 'Line11'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 9260
          mmTop = 7144
          mmWidth = 189971
          BandType = 5
          GroupNo = 4
        end
      end
    end
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
    Template.FileName = 'C:\SOLExes\SOLFormatos\Apo\Dema\Cuenta Individual Control.rtm'
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppRepControlPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 162
    Top = 201
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppTitleBand3: TppTitleBand
      BeforePrint = ppTitleBand3BeforePrint
      mmBottomOffset = 0
      mmHeight = 78581
      mmPrintPosition = 0
      object ppLabel73: TppLabel
        UserName = 'Label38'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 10583
        mmTop = 3704
        mmWidth = 34396
        BandType = 1
      end
      object ppLabel76: TppLabel
        UserName = 'Label39'
        Caption = 'Fecha :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 157427
        mmTop = 3704
        mmWidth = 9525
        BandType = 1
      end
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 171450
        mmTop = 3704
        mmWidth = 14288
        BandType = 1
      end
      object ppLabel82: TppLabel
        UserName = 'Label40'
        Caption = 'COBRANZAS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 19579
        mmTop = 8731
        mmWidth = 17727
        BandType = 1
      end
      object ppLabel83: TppLabel
        UserName = 'Label41'
        Caption = 'Hora :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 157427
        mmTop = 8467
        mmWidth = 7673
        BandType = 1
      end
      object ppSystemVariable8: TppSystemVariable
        UserName = 'SystemVariable5'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 171450
        mmTop = 8467
        mmWidth = 17463
        BandType = 1
      end
      object ppLabel84: TppLabel
        UserName = 'Label42'
        Caption = 'P'#225'gina :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 157427
        mmTop = 13229
        mmWidth = 10054
        BandType = 1
      end
      object ppSystemVariable9: TppSystemVariable
        UserName = 'SystemVariable6'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 171450
        mmTop = 13229
        mmWidth = 1588
        BandType = 1
      end
      object ppLabel85: TppLabel
        UserName = 'Label43'
        Caption = 'ESTADO DE CUENTA INDIVIDUAL DE APORTES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 62706
        mmTop = 17727
        mmWidth = 62706
        BandType = 1
      end
      object ppLabel90: TppLabel
        UserName = 'Label50'
        Caption = 'Periodo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 12965
        mmTop = 72761
        mmWidth = 9525
        BandType = 1
      end
      object ppLabel91: TppLabel
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
        mmLeft = 93663
        mmTop = 69056
        mmWidth = 14288
        BandType = 1
      end
      object ppLabel92: TppLabel
        UserName = 'Label52'
        Caption = 'Interes'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 112713
        mmTop = 72761
        mmWidth = 8731
        BandType = 1
      end
      object ppLabel93: TppLabel
        UserName = 'Label53'
        Caption = 'Bonus'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 132027
        mmTop = 72761
        mmWidth = 8202
        BandType = 1
      end
      object ppLabel94: TppLabel
        UserName = 'Label54'
        Caption = 'Aporte'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 148696
        mmTop = 72761
        mmWidth = 8731
        BandType = 1
      end
      object ppLabel95: TppLabel
        UserName = 'Label55'
        Caption = 'Devoluc.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 163777
        mmTop = 72761
        mmWidth = 11113
        BandType = 1
      end
      object ppLabel96: TppLabel
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
        mmLeft = 180446
        mmTop = 69056
        mmWidth = 14288
        BandType = 1
      end
      object ppLabel97: TppLabel
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
        mmLeft = 15610
        mmTop = 61913
        mmWidth = 90752
        BandType = 1
      end
      object ppLabel98: TppLabel
        UserName = 'Label60'
        Caption = 'C'#243'digo Modular'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 12435
        mmTop = 31750
        mmWidth = 19579
        BandType = 1
      end
      object ppLabel99: TppLabel
        UserName = 'Label99'
        Caption = 'USE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 12435
        mmTop = 36777
        mmWidth = 5292
        BandType = 1
      end
      object ppLabel100: TppLabel
        UserName = 'Label62'
        Caption = 'Unidad de Pago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 12435
        mmTop = 41804
        mmWidth = 19844
        BandType = 1
      end
      object ppLabel101: TppLabel
        UserName = 'Label63'
        Caption = 'Res. Nombramiento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 12435
        mmTop = 46831
        mmWidth = 24606
        BandType = 1
      end
      object ppLabel102: TppLabel
        UserName = 'Label64'
        Caption = 'Fec.Res.Nomb. :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 62177
        mmTop = 46831
        mmWidth = 20902
        BandType = 1
      end
      object ppLabel103: TppLabel
        UserName = 'Label65'
        Caption = 'A'#241'os de Aportes a '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 12435
        mmTop = 51858
        mmWidth = 25135
        BandType = 1
      end
      object ppLabel104: TppLabel
        UserName = 'Label66'
        Caption = 'Unidad de Proceso : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 121179
        mmTop = 36777
        mmWidth = 26458
        BandType = 1
      end
      object ppDBText56: TppDBText
        UserName = 'DBText36'
        AutoSize = True
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
        mmLeft = 121179
        mmTop = 31750
        mmWidth = 17463
        BandType = 1
      end
      object ppLabel105: TppLabel
        UserName = 'Label67'
        Caption = 'Res. Cese : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 121179
        mmTop = 46831
        mmWidth = 15610
        BandType = 1
      end
      object ppLabel106: TppLabel
        UserName = 'Label68'
        Caption = 'Fec. Res. Cese : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 157427
        mmTop = 46831
        mmWidth = 21960
        BandType = 1
      end
      object ppDBText57: TppDBText
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
        mmLeft = 39688
        mmTop = 31750
        mmWidth = 20373
        BandType = 1
      end
      object ppDBText58: TppDBText
        UserName = 'DBText38'
        DataField = 'ASORESNOM'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 39688
        mmTop = 46831
        mmWidth = 19050
        BandType = 1
      end
      object ppDBText59: TppDBText
        UserName = 'DBText39'
        DataField = 'ASOFRESNOM'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 84402
        mmTop = 46831
        mmWidth = 17198
        BandType = 1
      end
      object ppDBText60: TppDBText
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
        mmLeft = 137584
        mmTop = 46831
        mmWidth = 17198
        BandType = 1
      end
      object ppDBText61: TppDBText
        UserName = 'DBText41'
        DataField = 'ASOFRESCESE'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 180446
        mmTop = 46831
        mmWidth = 17198
        BandType = 1
      end
      object ppDBText62: TppDBText
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
        mmLeft = 39688
        mmTop = 36777
        mmWidth = 73554
        BandType = 1
      end
      object ppDBText63: TppDBText
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
        mmLeft = 39688
        mmTop = 41804
        mmWidth = 73554
        BandType = 1
      end
      object ppDBText64: TppDBText
        UserName = 'DBText44'
        AutoSize = True
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
        mmLeft = 149754
        mmTop = 36777
        mmWidth = 9260
        BandType = 1
      end
      object ppDBText65: TppDBText
        UserName = 'DBText65'
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
        mmLeft = 57415
        mmTop = 51858
        mmWidth = 5292
        BandType = 1
      end
      object ppDBText66: TppDBText
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
        Visible = False
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 192088
        mmTop = 41010
        mmWidth = 7408
        BandType = 1
      end
      object ppLabel107: TppLabel
        UserName = 'Label70'
        Caption = 'A'#241'os'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 63236
        mmTop = 51858
        mmWidth = 6350
        BandType = 1
      end
      object ppLabel108: TppLabel
        UserName = 'Label71'
        Caption = '-->'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 50271
        mmTop = 52123
        mmWidth = 3704
        BandType = 1
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
        mmLeft = 33073
        mmTop = 72761
        mmWidth = 17198
        BandType = 1
      end
      object ppLabel109: TppLabel
        UserName = 'Label46'
        Caption = 'Reg. Pen :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 121179
        mmTop = 41804
        mmWidth = 12965
        BandType = 1
      end
      object ppLabel110: TppLabel
        UserName = 'Label47'
        Caption = 'USE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 64294
        mmTop = 72761
        mmWidth = 5292
        BandType = 1
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
        mmLeft = 136790
        mmTop = 41804
        mmWidth = 11642
        BandType = 1
      end
      object ppLabel111: TppLabel
        UserName = 'Label49'
        Caption = 'Capital Acumulado a Diciembre de 1996 '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 102394
        mmTop = 51858
        mmWidth = 51065
        BandType = 1
      end
      object ppLabel112: TppLabel
        UserName = 'Label76'
        Caption = 'Label76'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 162190
        mmTop = 51858
        mmWidth = 10054
        BandType = 1
      end
      object ppLine12: TppLine
        UserName = 'Line6'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 9790
        mmTop = 67733
        mmWidth = 189971
        BandType = 1
      end
      object ppLine13: TppLine
        UserName = 'Line7'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 9790
        mmTop = 77523
        mmWidth = 189971
        BandType = 1
      end
      object ppLine14: TppLine
        UserName = 'Line8'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 9790
        mmTop = 59267
        mmWidth = 189971
        BandType = 1
      end
      object ppLine17: TppLine
        UserName = 'Line10'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 9790
        mmTop = 28575
        mmWidth = 189971
        BandType = 1
      end
      object ppLabel113: TppLabel
        UserName = 'Label16'
        Caption = '1996'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 38894
        mmTop = 51858
        mmWidth = 6350
        BandType = 1
      end
      object ppLabel114: TppLabel
        UserName = 'Label82'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 38100
        mmTop = 31750
        mmWidth = 794
        BandType = 1
      end
      object ppLabel115: TppLabel
        UserName = 'Label83'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 38100
        mmTop = 36777
        mmWidth = 794
        BandType = 1
      end
      object ppLabel116: TppLabel
        UserName = 'Label84'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 38100
        mmTop = 41804
        mmWidth = 794
        BandType = 1
      end
      object ppLabel117: TppLabel
        UserName = 'Label85'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 38100
        mmTop = 46831
        mmWidth = 794
        BandType = 1
      end
      object ppLabel131: TppLabel
        UserName = 'Label131'
        Caption = 'Usuario:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 157427
        mmTop = 18521
        mmWidth = 10583
        BandType = 1
      end
      object lblUsuario: TppLabel
        UserName = 'lblUsuario'
        Caption = 'lblUsuario'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 171450
        mmTop = 18785
        mmWidth = 12435
        BandType = 1
      end
    end
    object ppHeaderBand3: TppHeaderBand
      PrintOnFirstPage = False
      mmBottomOffset = 0
      mmHeight = 20108
      mmPrintPosition = 0
      object ppLabel118: TppLabel
        UserName = 'Label90'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 10583
        mmTop = 3704
        mmWidth = 34396
        BandType = 0
      end
      object ppLabel119: TppLabel
        UserName = 'Label91'
        Caption = 'Fecha :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 157427
        mmTop = 3704
        mmWidth = 9525
        BandType = 0
      end
      object ppSystemVariable10: TppSystemVariable
        UserName = 'SystemVariable7'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 171450
        mmTop = 3704
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel120: TppLabel
        UserName = 'Label401'
        Caption = 'PREVISION SOCIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 14552
        mmTop = 8731
        mmWidth = 26458
        BandType = 0
      end
      object ppLabel121: TppLabel
        UserName = 'Label93'
        Caption = 'Hora :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 157427
        mmTop = 8467
        mmWidth = 7673
        BandType = 0
      end
      object ppSystemVariable11: TppSystemVariable
        UserName = 'SystemVariable8'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 171450
        mmTop = 8467
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel122: TppLabel
        UserName = 'Label94'
        Caption = 'P'#225'gina :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 157427
        mmTop = 13229
        mmWidth = 9790
        BandType = 0
      end
      object ppSystemVariable12: TppSystemVariable
        UserName = 'SystemVariable9'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 171450
        mmTop = 13229
        mmWidth = 1588
        BandType = 0
      end
      object ppLine18: TppLine
        UserName = 'Line101'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 9790
        mmTop = 19050
        mmWidth = 189971
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      BeforePrint = ppDetailBand3BeforePrint
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppLabel123: TppLabel
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
      object ppDBText67: TppDBText
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
      object ppDBText68: TppDBText
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
      object ppDBText69: TppDBText
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
      object ppDBText70: TppDBText
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
      object ppDBText71: TppDBText
        UserName = 'DBText31'
        BlankWhenZero = True
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
      object ppDBText72: TppDBText
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
      object ppDBText73: TppDBText
        UserName = 'DBText73'
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
      object ppDBText74: TppDBText
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
      object ppDBText75: TppDBText
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
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand3: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 29369
      mmPrintPosition = 0
      object ppLabel124: TppLabel
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
        mmTop = 13229
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
        mmTop = 13229
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
        mmTop = 21696
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
          Template.FileName = 'C:\SOLExes\SOLFormatos\Apo\Dema\Cuenta Individual Control.rtm'
          Left = 360
          Top = 200
          Version = '7.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipeline2'
          object ppTitleBand1: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 16933
            mmPrintPosition = 0
            object ppLabel125: TppLabel
              UserName = 'Label17'
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
            object ppLine19: TppLine
              UserName = 'Line12'
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 9790
              mmTop = 6085
              mmWidth = 114300
              BandType = 1
            end
            object ppLabel126: TppLabel
              UserName = 'Label31'
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
            object ppLabel127: TppLabel
              UserName = 'Label127'
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
            object ppLabel128: TppLabel
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
            object ppLabel129: TppLabel
              UserName = 'Label56'
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
            object ppLabel130: TppLabel
              UserName = 'Label58'
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
            object ppLine20: TppLine
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
          object ppDetailBand5: TppDetailBand
            BeforePrint = ppDetailBand5BeforePrint
            mmBottomOffset = 0
            mmHeight = 5821
            mmPrintPosition = 0
            object ppDBText76: TppDBText
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
            object ppDBText77: TppDBText
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
            object ppDBText78: TppDBText
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
            object ppDBText79: TppDBText
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
            object ppDBText80: TppDBText
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
      object ppLine21: TppLine
        UserName = 'Line17'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 9790
        mmTop = 794
        mmWidth = 189971
        BandType = 7
      end
      object ppDBCalc13: TppDBCalc
        UserName = 'DBCalc13'
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
        Visible = False
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 91017
        mmTop = 2117
        mmWidth = 15346
        BandType = 7
      end
      object ppDBCalc14: TppDBCalc
        UserName = 'DBCalc14'
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
        mmLeft = 109538
        mmTop = 2117
        mmWidth = 14288
        BandType = 7
      end
      object ppDBCalc15: TppDBCalc
        UserName = 'DBCalc15'
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
        mmLeft = 126207
        mmTop = 2117
        mmWidth = 14817
        BandType = 7
      end
      object ppDBCalc16: TppDBCalc
        UserName = 'DBCalc101'
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
        mmLeft = 142875
        mmTop = 2117
        mmWidth = 15081
        BandType = 7
      end
      object ppDBCalc17: TppDBCalc
        UserName = 'DBCalc17'
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
        mmLeft = 160073
        mmTop = 2117
        mmWidth = 14288
        BandType = 7
      end
      object ppDBCalc18: TppDBCalc
        UserName = 'DBCalc18'
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
        Visible = False
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 177007
        mmTop = 2117
        mmWidth = 18785
        BandType = 7
      end
      object ppLine22: TppLine
        UserName = 'Line18'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 9790
        mmTop = 7144
        mmWidth = 189971
        BandType = 7
      end
    end
    object ppGroup11: TppGroup
      BreakName = 'DPTOID'
      OutlineSettings.CreateNode = True
      NewPage = True
      ReprintOnSubsequentPage = False
      UserName = 'Group11'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand11: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand11: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup12: TppGroup
      BreakName = 'CIUID'
      OutlineSettings.CreateNode = True
      UserName = 'Group12'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand12: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand12: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup13: TppGroup
      BreakName = 'UPROID'
      OutlineSettings.CreateNode = True
      UserName = 'Group13'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand13: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand13: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup14: TppGroup
      BreakName = 'USEID'
      OutlineSettings.CreateNode = True
      UserName = 'Group14'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand14: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand14: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup15: TppGroup
      BreakName = 'ASOID'
      OutlineSettings.CreateNode = True
      NewPage = True
      UserName = 'Group15'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand15: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand15: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = DM1.dsQry3
    UserName = 'DBPipeline2'
    Left = 312
    Top = 208
  end
  object ppDBPipeline3: TppDBPipeline
    DataSource = DM1.dsQry4
    UserName = 'DBPipeline3'
    Left = 360
    Top = 168
  end
end
