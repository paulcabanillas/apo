object FRepXCtaInd: TFRepXCtaInd
  Left = 385
  Top = 265
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'C'#225'lculo de la Cuenta Individual'
  ClientHeight = 127
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
      TabOrder = 0
    end
    object bbtnImprimir: TfcShapeBtn
      Left = 304
      Top = 57
      Width = 34
      Height = 31
      Hint = 'Imprimir'
      Color = 13165023
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
      TabOrder = 1
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnImprimirClick
    end
    object edtAsociado: TEdit
      Left = 18
      Top = 35
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
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DM1.dsReporte3
    AutoCreateFields = False
    UserName = 'DBPipeline1'
    Left = 58
    Top = 65
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
    Template.FileName = 'C:\SOLFormatos\Apo\Dema\Cuenta Individual Control WMC.rtm'
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppRepControlPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 194
    Top = 65
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
        Caption = 'COBRANZAS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 14552
        mmTop = 8731
        mmWidth = 17727
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
      object ppDBText76: TppDBText
        UserName = 'DBText76'
        DataField = 'MES'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 7144
        mmTop = 0
        mmWidth = 21431
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
end
