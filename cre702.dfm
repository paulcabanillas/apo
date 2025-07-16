object FToolAso: TFToolAso
  Left = 213
  Top = 229
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  AutoScroll = False
  AutoSize = True
  Caption = 'FToolAso'
  ClientHeight = 55
  ClientWidth = 793
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTool: TPanel
    Left = 0
    Top = 0
    Width = 793
    Height = 55
    BevelOuter = bvNone
    Color = 13165023
    TabOrder = 0
    object lblApeMat: TLabel
      Left = 398
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
    object Z2sbtnDLab: TfcShapeBtn
      Left = 6
      Top = 16
      Width = 32
      Height = 31
      Hint = 'Centros de Trabajo'
      Color = 10207162
      DitherColor = clWhite
      Enabled = False
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033BBBBBBBBBB
        BB33337777777777777F33BB00BBBBBBBB33337F77333333F37F33BB0BBBBBB0
        BB33337F73F33337FF7F33BBB0BBBB000B33337F37FF3377737F33BBB00BB00B
        BB33337F377F3773337F33BBBB0B00BBBB33337F337F7733337F33BBBB000BBB
        BB33337F33777F33337F33EEEE000EEEEE33337F3F777FFF337F33EE0E80000E
        EE33337F73F77773337F33EEE0800EEEEE33337F37377F33337F33EEEE000EEE
        EE33337F33777F33337F33EEEEE00EEEEE33337F33377FF3337F33EEEEEE00EE
        EE33337F333377F3337F33EEEEEE00EEEE33337F33337733337F33EEEEEEEEEE
        EE33337FFFFFFFFFFF7F33EEEEEEEEEEEE333377777777777773}
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
      OnClick = Z2sbtnDLabClick
    end
    object Z2sbtnDFam: TfcShapeBtn
      Left = 39
      Top = 16
      Width = 32
      Height = 31
      Hint = 'Datos Familiares'
      Color = 10207162
      DitherColor = clWhite
      Enabled = False
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0000377777777777777703030303030303037F7F7F7F7F7F7F7F000000000000
        00007777777777777777933393303933337073F37F37F73F3377393393303393
        379037FF7F37F37FF777379793303379793037777337F3777737339933303339
        93303377F3F7F3F77F3733993930393993303377F737F7377FF7399993303399
        999037777337F377777793993330333393307377FF37F3337FF7333993303333
        993033377F37F33377F7333993303333993033377337F3337737333333303333
        33303FFFFFF7FFFFFFF700000000000000007777777777777777030303030303
        03037F7F7F7F7F7F7F7F00000000000000007777777777777777}
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
      OnClick = Z2sbtnDFamClick
    end
    object Z2sbtnAportes: TfcShapeBtn
      Left = 138
      Top = 16
      Width = 32
      Height = 31
      Hint = 'Aportes'
      Color = 10207162
      DitherColor = clWhite
      Enabled = False
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500055555500
        00005777FFFFFF77777750B077000003333057F77777777F555750B070888803
        B3B057F7F75FFF7F555700B07700000B3B3077F7F577777F555750B07777770B
        B3B057F7F555557F555750B07777770BBB3057F7FFFFFF7F555750B00000000B
        BBB057F77777777F555750B05F5F5F0BBBB057F7F7F7F77F555750B05F5F5F0B
        BBB057F7F7F7F77F555750B05F5F5F0BBBB057F7F7F7F77F555750B07777770B
        BBB057F77777777F555750B05F5F5F0BBBB057F7F757577F5557500055555503
        BBB057775555557F555755555555550B3BB055555555557F5557555555555503
        B3B055555555557FFFF755555555550000005555555555777777}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 4
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = Z2sbtnAportesClick
    end
    object Z2sbtnCtasBanc: TfcShapeBtn
      Left = 170
      Top = 16
      Width = 32
      Height = 31
      Hint = 'Cuentas Bancarias'
      Color = 10207162
      DitherColor = clWhite
      Enabled = False
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00550000000005
        555555777777777FF5555500000000805555557777777777FF555550BBBBB008
        05555557F5FFF7777FF55550B000B030805555F7F777F7F777F550000000B033
        005557777777F7F5775550BBBBB00033055557F5FFF777F57F5550B000B08033
        055557F77757F7F57F5550BBBBB08033055557F55557F7F57F5550BBBBB00033
        055557FFFFF777F57F5550000000703305555777777757F57F555550FFF77033
        05555557FFFFF7FF7F55550000000003055555777777777F7F55550777777700
        05555575FF5555777F55555003B3B3B00555555775FF55577FF55555500B3B3B
        005555555775FFFF77F555555570000000555555555777777755}
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
      OnClick = Z2sbtnCtasBancClick
    end
    object Z2sbtnResol: TfcShapeBtn
      Left = 105
      Top = 16
      Width = 32
      Height = 31
      Hint = 'Resoluciones'
      Color = 10207162
      DitherColor = clWhite
      Enabled = False
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555000000
        000055555F77777777775555000FFFFFFFF0555F777F5FFFF55755000F0F0000
        FFF05F777F7F77775557000F0F0FFFFFFFF0777F7F7F5FFFFFF70F0F0F0F0000
        00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFFFFF70F0F0F0F0000
        00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFF55570F0F0F0F000F
        FFF07F7F7F7F77755FF70F0F0F0FFFFF00007F7F7F7F5FF577770F0F0F0F00FF
        0F057F7F7F7F77557F750F0F0F0FFFFF00557F7F7F7FFFFF77550F0F0F000000
        05557F7F7F77777775550F0F0000000555557F7F7777777555550F0000000555
        55557F7777777555555500000005555555557777777555555555}
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
      OnClick = Z2sbtnResolClick
    end
    object Z2sbtnFirma: TfcShapeBtn
      Left = 203
      Top = 16
      Width = 32
      Height = 31
      Hint = 'Firma y Huella'
      Color = 10207162
      DitherColor = clWhite
      Enabled = False
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000055
        555557777777775F55550FFFFFFFFF0555557F5555555F7FFF5F0FEEEEEE0000
        05007F555555777775770FFFFFF0BFBFB00E7F5F5557FFF557770F0EEEE000FB
        FB0E7F75FF57775555770FF00F0FBFBFBF0E7F57757FFFF555770FE0B00000FB
        FB0E7F575777775555770FFF0FBFBFBFBF0E7F5575FFFFFFF5770FEEE0000000
        FB0E7F555777777755770FFFFF0B00BFB0007F55557577FFF7770FEEEEE0B000
        05557F555557577775550FFFFFFF0B0555557FF5F5F57575F55500F0F0F0F0B0
        555577F7F7F7F7F75F5550707070700B055557F7F7F7F7757FF5507070707050
        9055575757575757775505050505055505557575757575557555}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 6
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = Z2sbtnFirmaClick
    end
    object Z2sbtnDSocioE: TfcShapeBtn
      Left = 72
      Top = 16
      Width = 32
      Height = 31
      Hint = 'Datos Socio Econ'#243'micos'
      Color = 10207162
      DitherColor = clWhite
      Enabled = False
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000333FFF3777777777F3000330FFFFFFF033777FF7F3FF3FF7F07B7030F00F0
        0F0377777F7F7737737F0BBB030FFFFFFF0377777F7F3FFFF37F07B7030F0000
        FF037777737F7777337F3000330FFFFFFF033777337F3FF3FF7F3333330F00F0
        00033333337F7737777F3333330FFFF0FF033FFFFF7F3FF7F3730000030F08F0
        F03377777F7F7737F7330999030FFFF0033377777F7FFFF77333099903000000
        333377777F7777773333099903333333333377777F33FFFFFFF3000003300000
        00337777733777777733333333330CCC033333333333777773333333333330C0
        3333333333333777333333333333330333333333333333733333}
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
      OnClick = Z2sbtnDSocioEClick
    end
    object edtAsociado: TEdit
      Left = 396
      Top = 27
      Width = 324
      Height = 23
      CharCase = ecUpperCase
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object sbtnAceptar: TfcShapeBtn
      Left = 732
      Top = 22
      Width = 31
      Height = 31
      Hint = 'Guardar Datos del Asociado'
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
      ShadeStyle = fbsHighlight
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 8
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = sbtnAceptarClick
    end
    object pnlEstCta: TPanel
      Left = 392
      Top = 2
      Width = 385
      Height = 53
      BevelInner = bvLowered
      BevelOuter = bvLowered
      Color = 13165023
      TabOrder = 9
      Visible = False
      object lblAl: TLabel
        Left = 24
        Top = 16
        Width = 16
        Height = 18
        Caption = 'AL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object dtpAl: TDateTimePicker
        Left = 48
        Top = 16
        Width = 89
        Height = 21
        Date = 37494.000000000000000000
        Time = 37494.000000000000000000
        Checked = False
        MaxDate = 55153.000000000000000000
        MinDate = 36891.000000000000000000
        TabOrder = 0
        Visible = False
      end
      object z2bbtnFecha: TfcShapeBtn
        Left = 149
        Top = 8
        Width = 31
        Height = 31
        Hint = 'Guardar Datos del Asociado'
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
        ShadeStyle = fbsHighlight
        Shape = bsEllipse
        ShowHint = True
        TabOrder = 1
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = z2bbtnFechaClick
      end
    end
    object Z2sbtnCtaInd: TfcShapeBtn
      Left = 238
      Top = 16
      Width = 32
      Height = 31
      Hint = 'Cta. Individual'
      Color = 10207162
      DitherColor = clWhite
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
        73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
        0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
        0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
        0333337F777777737F333308888888880333337F333333337F33330888888888
        03333373FFFFFFFF733333700000000073333337777777773333}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 10
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      Visible = False
      OnClick = Z2sbtnCtaIndClick
    end
    object fcShapeBtn1: TfcShapeBtn
      Left = 272
      Top = 17
      Width = 32
      Height = 31
      Hint = 'Cta. Individual'
      Color = 10207162
      DitherColor = clWhite
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
        73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
        0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
        0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
        0333337F777777737F333308888888880333337F333333337F33330888888888
        03333373FFFFFFFF733333700000000073333337777777773333}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 11
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      Visible = False
      OnClick = fcShapeBtn1Click
    end
  end
  object ppRepCronograma: TppReport
    AutoStop = False
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = '16K'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 119
    Template.FileName = 'C:\SOLDB\Solformatos\Cob\Dema\CronogramaPagos.rtm'
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppRepCronogramaPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 385
    Top = 9
    Version = '7.02'
    mmColumnWidth = 0
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'CREMTO'
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 65881
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'CRECUOTA'
        DisplayFormat = '0#'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 6085
        mmTop = 529
        mmWidth = 9525
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'PERIODO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 21960
        mmTop = 529
        mmWidth = 24871
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'CREANO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 47361
        mmTop = 529
        mmWidth = 9790
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'CRECAPCRON'
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 165100
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'CREAMORT'
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 87313
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'CREINTERES'
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 113242
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'CREFLAT'
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 140494
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object ppLine21: TppLine
        UserName = 'Line21'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 4763
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine22: TppLine
        UserName = 'Line22'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 20108
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine23: TppLine
        UserName = 'Line23'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 58208
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine24: TppLine
        UserName = 'Line24'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 85196
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine25: TppLine
        UserName = 'Line25'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 109538
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine26: TppLine
        UserName = 'Line26'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 133879
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine27: TppLine
        UserName = 'Line27'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 160602
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine28: TppLine
        UserName = 'Line28'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 187325
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'dbtNroCre'
      BreakType = btCustomField
      OutlineSettings.CreateNode = True
      NewPage = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand1: TppGroupHeaderBand
        PrintHeight = phDynamic
        mmBottomOffset = 0
        mmHeight = 67469
        mmPrintPosition = 0
        object ppLabel43: TppLabel
          UserName = 'Label43'
          Caption = 'Cuota a Pagar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 59002
          mmTop = 55563
          mmWidth = 27517
          BandType = 3
          GroupNo = 0
        end
        object ppLabel17: TppLabel
          UserName = 'Label17'
          Caption = 'Cronograma de Pagos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 13
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 5292
          mmLeft = 77523
          mmTop = 5292
          mmWidth = 50271
          BandType = 3
          GroupNo = 0
        end
        object ppLabel18: TppLabel
          UserName = 'Label18'
          Caption = 'Fecha :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 154252
          mmTop = 794
          mmWidth = 14817
          BandType = 3
          GroupNo = 0
        end
        object ppLabel19: TppLabel
          UserName = 'Label19'
          Caption = 'Hora :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 154252
          mmTop = 6350
          mmWidth = 12700
          BandType = 3
          GroupNo = 0
        end
        object ppSystemVariable1: TppSystemVariable
          UserName = 'SystemVariable1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 169598
          mmTop = 529
          mmWidth = 21167
          BandType = 3
          GroupNo = 0
        end
        object ppSystemVariable2: TppSystemVariable
          UserName = 'SystemVariable2'
          VarType = vtTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 169863
          mmTop = 6085
          mmWidth = 27517
          BandType = 3
          GroupNo = 0
        end
        object ppLabel20: TppLabel
          UserName = 'Label20'
          AutoSize = False
          Caption = 'Tipo de Pr'#233'stamo :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 92075
          mmTop = 11377
          mmWidth = 29104
          BandType = 3
          GroupNo = 0
        end
        object ppLabel22: TppLabel
          UserName = 'Label22'
          AutoSize = False
          Caption = 'Monto :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 92075
          mmTop = 23548
          mmWidth = 11642
          BandType = 3
          GroupNo = 0
        end
        object ppLabel23: TppLabel
          UserName = 'Label23'
          AutoSize = False
          Caption = 'Inter'#233's :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 92075
          mmTop = 29633
          mmWidth = 12435
          BandType = 3
          GroupNo = 0
        end
        object ppLabel27: TppLabel
          UserName = 'Label27'
          AutoSize = False
          Caption = 'Comisi'#243'n FLAT :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 92075
          mmTop = 35719
          mmWidth = 25665
          BandType = 3
          GroupNo = 0
        end
        object ppLabel28: TppLabel
          UserName = 'Label28'
          AutoSize = False
          Caption = 'Tiempo :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 92075
          mmTop = 42333
          mmWidth = 13229
          BandType = 3
          GroupNo = 0
        end
        object ppLabel30: TppLabel
          UserName = 'Label30'
          AutoSize = False
          Caption = 'Tipode Cuotas :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 92075
          mmTop = 17198
          mmWidth = 24077
          BandType = 3
          GroupNo = 0
        end
        object ppLabel107: TppLabel
          UserName = 'Label107'
          AutoSize = False
          Caption = 'Asociado :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 4498
          mmTop = 11377
          mmWidth = 19315
          BandType = 3
          GroupNo = 0
        end
        object ppLabel125: TppLabel
          UserName = 'Label125'
          AutoSize = False
          Caption = 'Nro Cr'#233'dito :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 4498
          mmTop = 23548
          mmWidth = 19315
          BandType = 3
          GroupNo = 0
        end
        object ppLabel128: TppLabel
          UserName = 'Label128'
          AutoSize = False
          Caption = 'Fecha :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 4498
          mmTop = 29633
          mmWidth = 11642
          BandType = 3
          GroupNo = 0
        end
        object ppLabel130: TppLabel
          UserName = 'Label130'
          Caption = 'Moneda :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 4498
          mmTop = 35719
          mmWidth = 16933
          BandType = 3
          GroupNo = 0
        end
        object dbtAsoid: TppDBText
          UserName = 'dbtAsoid'
          DataField = 'ASOID'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          mmHeight = 4233
          mmLeft = 25135
          mmTop = 11377
          mmWidth = 35719
          BandType = 3
          GroupNo = 0
        end
        object dbtAsoApe: TppDBText
          UserName = 'dbtAsoApe'
          DataField = 'ASOAPENOM'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          mmHeight = 4233
          mmLeft = 4498
          mmTop = 17198
          mmWidth = 83873
          BandType = 3
          GroupNo = 0
        end
        object dbtNroCre: TppDBText
          UserName = 'dbtNroCre'
          DataField = 'CREDID'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          mmHeight = 4233
          mmLeft = 25135
          mmTop = 23548
          mmWidth = 42863
          BandType = 3
          GroupNo = 0
        end
        object dbtFecOto: TppDBText
          UserName = 'dbtFecOto'
          DataField = 'CREFOTORG'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          mmHeight = 4233
          mmLeft = 25135
          mmTop = 29633
          mmWidth = 41540
          BandType = 3
          GroupNo = 0
        end
        object dbtMoneda: TppDBText
          UserName = 'dbtMoneda'
          DataField = 'TMONDES'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          mmHeight = 4233
          mmLeft = 25135
          mmTop = 35719
          mmWidth = 58738
          BandType = 3
          GroupNo = 0
        end
        object dbtTipPres: TppDBText
          UserName = 'dbtTipPres'
          DataField = 'TIPCREDES'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          mmHeight = 4233
          mmLeft = 123825
          mmTop = 11377
          mmWidth = 70115
          BandType = 3
          GroupNo = 0
        end
        object ppDBText9: TppDBText
          UserName = 'DBText9'
          DataField = 'CRETCALDES'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          mmHeight = 4233
          mmLeft = 123825
          mmTop = 17198
          mmWidth = 70379
          BandType = 3
          GroupNo = 0
        end
        object ppDBText10: TppDBText
          UserName = 'DBText10'
          DataField = 'CREMTOSOL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          mmHeight = 4233
          mmLeft = 123825
          mmTop = 23548
          mmWidth = 38894
          BandType = 3
          GroupNo = 0
        end
        object ppDBText11: TppDBText
          UserName = 'DBText11'
          DataField = 'CREINTERES'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          mmHeight = 4233
          mmLeft = 123825
          mmTop = 29633
          mmWidth = 31221
          BandType = 3
          GroupNo = 0
        end
        object ppDBText12: TppDBText
          UserName = 'DBText12'
          DataField = 'CREFLAT'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          mmHeight = 4233
          mmLeft = 123825
          mmTop = 35719
          mmWidth = 27517
          BandType = 3
          GroupNo = 0
        end
        object dbtCuota: TppDBText
          UserName = 'dbtCuota'
          DataField = 'CRENUMCUO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          mmHeight = 4233
          mmLeft = 123825
          mmTop = 42333
          mmWidth = 5556
          BandType = 3
          GroupNo = 0
        end
        object ppLabel29: TppLabel
          UserName = 'Label29'
          AutoSize = False
          Caption = 'meses'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 131234
          mmTop = 42333
          mmWidth = 10319
          BandType = 3
          GroupNo = 0
        end
        object ppLabel31: TppLabel
          UserName = 'Label31'
          Caption = 'Cuota'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 7144
          mmTop = 55563
          mmWidth = 10583
          BandType = 3
          GroupNo = 0
        end
        object ppLabel36: TppLabel
          UserName = 'Label36'
          Caption = 'Periodo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 33338
          mmTop = 55563
          mmWidth = 14817
          BandType = 3
          GroupNo = 0
        end
        object ppLabel44: TppLabel
          UserName = 'Label44'
          Caption = 'Capital'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 166159
          mmTop = 55563
          mmWidth = 14817
          BandType = 3
          GroupNo = 0
        end
        object ppLabel45: TppLabel
          UserName = 'Label45'
          Caption = 'Amortizaci'#243'n'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 86519
          mmTop = 55563
          mmWidth = 25400
          BandType = 3
          GroupNo = 0
        end
        object ppLabel49: TppLabel
          UserName = 'Label49'
          Caption = 'Interes'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 115888
          mmTop = 55563
          mmWidth = 14817
          BandType = 3
          GroupNo = 0
        end
        object ppLabel50: TppLabel
          UserName = 'Label50'
          Caption = 'Comisi'#243'n FLAT'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 134409
          mmTop = 55563
          mmWidth = 27517
          BandType = 3
          GroupNo = 0
        end
        object ppLabel51: TppLabel
          UserName = 'Label51'
          AutoSize = False
          Caption = 
            '----------------------------------------------------------------' +
            '----------------------------------------------------------------' +
            '---------------------------------------------'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 4763
          mmTop = 60325
          mmWidth = 182827
          BandType = 3
          GroupNo = 0
        end
        object ppLabel52: TppLabel
          UserName = 'Label52'
          AutoSize = False
          Caption = 
            '----------------------------------------------------------------' +
            '----------------------------------------------------------------' +
            '---------------------------------------------'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 4233
          mmLeft = 4763
          mmTop = 50006
          mmWidth = 182827
          BandType = 3
          GroupNo = 0
        end
        object ppLine11: TppLine
          UserName = 'Line11'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14817
          mmLeft = 4763
          mmTop = 52388
          mmWidth = 3704
          BandType = 3
          GroupNo = 0
        end
        object ppLine12: TppLine
          UserName = 'Line12'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14817
          mmLeft = 20108
          mmTop = 52388
          mmWidth = 3704
          BandType = 3
          GroupNo = 0
        end
        object ppLine13: TppLine
          UserName = 'Line13'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14817
          mmLeft = 58208
          mmTop = 52388
          mmWidth = 3704
          BandType = 3
          GroupNo = 0
        end
        object ppLine15: TppLine
          UserName = 'Line15'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14817
          mmLeft = 85196
          mmTop = 52388
          mmWidth = 3704
          BandType = 3
          GroupNo = 0
        end
        object ppLine17: TppLine
          UserName = 'Line17'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14817
          mmLeft = 109538
          mmTop = 52388
          mmWidth = 3704
          BandType = 3
          GroupNo = 0
        end
        object ppLine18: TppLine
          UserName = 'Line18'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14817
          mmLeft = 133879
          mmTop = 52388
          mmWidth = 3704
          BandType = 3
          GroupNo = 0
        end
        object ppLine19: TppLine
          UserName = 'Line19'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14817
          mmLeft = 160602
          mmTop = 52388
          mmWidth = 3704
          BandType = 3
          GroupNo = 0
        end
        object ppLine20: TppLine
          UserName = 'Line20'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14552
          mmLeft = 187325
          mmTop = 52388
          mmWidth = 265
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 11906
        mmPrintPosition = 0
        object ppLabel109: TppLabel
          UserName = 'Label109'
          AutoSize = False
          Caption = 
            '----------------------------------------------------------------' +
            '----------------------------------------------------------------' +
            '---------------------------------------------'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 5027
          mmTop = 0
          mmWidth = 182563
          BandType = 5
          GroupNo = 0
        end
        object ppLabel110: TppLabel
          UserName = 'Label110'
          AutoSize = False
          Caption = 
            '----------------------------------------------------------------' +
            '----------------------------------------------------------------' +
            '---------------------------------------------'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 5027
          mmTop = 6085
          mmWidth = 182827
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'CREMTO'
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 61648
          mmTop = 3440
          mmWidth = 21431
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          DataField = 'CREFLAT'
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 138113
          mmTop = 3440
          mmWidth = 19579
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          DataField = 'CREINTERES'
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 113242
          mmTop = 3440
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc4: TppDBCalc
          UserName = 'DBCalc4'
          DataField = 'CREAMORT'
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 87313
          mmTop = 3440
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppLabel124: TppLabel
          UserName = 'Label124'
          Caption = 'Total'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 32808
          mmTop = 3440
          mmWidth = 10583
          BandType = 5
          GroupNo = 0
        end
        object ppLine30: TppLine
          UserName = 'Line30'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 9261
          mmLeft = 4763
          mmTop = 0
          mmWidth = 265
          BandType = 5
          GroupNo = 0
        end
        object ppLine31: TppLine
          UserName = 'Line301'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 9261
          mmLeft = 20108
          mmTop = 0
          mmWidth = 265
          BandType = 5
          GroupNo = 0
        end
        object ppLine32: TppLine
          UserName = 'Line32'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 9261
          mmLeft = 58208
          mmTop = 0
          mmWidth = 3175
          BandType = 5
          GroupNo = 0
        end
        object ppLine33: TppLine
          UserName = 'Line33'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 9261
          mmLeft = 85196
          mmTop = 0
          mmWidth = 3175
          BandType = 5
          GroupNo = 0
        end
        object ppLine34: TppLine
          UserName = 'Line34'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 9261
          mmLeft = 109538
          mmTop = 0
          mmWidth = 3175
          BandType = 5
          GroupNo = 0
        end
        object ppLine35: TppLine
          UserName = 'Line35'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 9261
          mmLeft = 133879
          mmTop = 0
          mmWidth = 3175
          BandType = 5
          GroupNo = 0
        end
        object ppLine36: TppLine
          UserName = 'Line36'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 9261
          mmLeft = 160602
          mmTop = 0
          mmWidth = 3175
          BandType = 5
          GroupNo = 0
        end
        object ppLine37: TppLine
          UserName = 'Line37'
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 9261
          mmLeft = 187325
          mmTop = 0
          mmWidth = 3175
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object ppdbSolicitud: TppDBPipeline
    UserName = 'dbSolicitud'
    Left = 334
    Top = 5
  end
  object bdepSub1: TppBDEPipeline
    UserName = 'bdepSub1'
    Left = 729
    Top = 12
  end
  object bdepSub2: TppBDEPipeline
    UserName = 'bdepSub2'
    Left = 697
    Top = 12
  end
  object bdepSub3: TppBDEPipeline
    UserName = 'bdepSub3'
    Left = 665
    Top = 12
  end
  object bdepSub4: TppBDEPipeline
    UserName = 'bdepSub4'
    Left = 633
    Top = 12
  end
  object bdepSub5: TppBDEPipeline
    UserName = 'bdepSub5'
    Left = 601
    Top = 12
  end
end
