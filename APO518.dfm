object FAponoPag: TFAponoPag
  Left = 27
  Top = 59
  BorderStyle = bsDialog
  Caption = 'Proceso de aportes faltantes'
  ClientHeight = 456
  ClientWidth = 750
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
  object btncerrar: TBitBtn
    Left = 654
    Top = 419
    Width = 89
    Height = 30
    Caption = 'Cerrar'
    TabOrder = 0
    OnClick = btncerrarClick
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
  object dtgData: TDBGrid
    Left = 440
    Top = 48
    Width = 33
    Height = 25
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Visible = False
  end
  object pgnoapo: TPageControl
    Left = 5
    Top = 9
    Width = 740
    Height = 400
    ActivePage = TabSheet1
    TabOrder = 2
    OnChange = pgnoapoChange
    object TabSheet1: TTabSheet
      Caption = 'Cabecera de procesos'
      object dbgasonoapocab: TwwDBGrid
        Left = 8
        Top = 8
        Width = 719
        Height = 270
        DisableThemesInTitle = False
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = DM1.dsTPension
        Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 2
        TitleButtons = False
        object wwDBGrid1IButton: TwwIButton
          Left = 0
          Top = 0
          Width = 29
          Height = 30
          AllowAllUp = True
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33333333FF33333333FF333993333333300033377F3333333777333993333333
            300033F77FFF3333377739999993333333333777777F3333333F399999933333
            33003777777333333377333993333333330033377F3333333377333993333333
            3333333773333333333F333333333333330033333333F33333773333333C3333
            330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
            993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
            333333333337733333FF3333333C333330003333333733333777333333333333
            3000333333333333377733333333333333333333333333333333}
          NumGlyphs = 2
          OnClick = wwDBGrid1IButtonClick
        end
      end
      object btnelipro: TBitBtn
        Left = 9
        Top = 286
        Width = 122
        Height = 30
        Caption = 'Eliminar proceso'
        TabOrder = 1
        OnClick = btneliproClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333FF33333333333330003333333333333777333333333333
          300033FFFFFF3333377739999993333333333777777F3333333F399999933333
          3300377777733333337733333333333333003333333333333377333333333333
          3333333333333333333F333333333333330033333F33333333773333C3333333
          330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
          993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
          333333377F33333333FF3333C333333330003333733333333777333333333333
          3000333333333333377733333333333333333333333333333333}
        NumGlyphs = 2
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Detalle de procesos'
      ImageIndex = 1
      object Label1: TLabel
        Left = 8
        Top = 298
        Width = 171
        Height = 13
        Caption = 'Buscando por Apellidos y nombre(s):'
      end
      object btnimprime: TBitBtn
        Left = 458
        Top = 338
        Width = 89
        Height = 30
        Caption = 'A Impresora'
        TabOrder = 0
        OnClick = btnimprimeClick
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
      object BitBtn1: TBitBtn
        Left = 632
        Top = 338
        Width = 73
        Height = 30
        Caption = 'A Excel'
        TabOrder = 1
        OnClick = BitBtn1Click
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FFFFFF0D390D
          0B360B0B360B0B360B0B360B0B360B0B360B0B360B0B360B0B360B0B360B0B36
          0B0B360B0B360BFFFFFF2885280D390D388A383A8C3A3A8C3A3A8C3A3A8C3A3A
          8C3A3A8C3A3A8C3A3A8C3A3A8C3A3A8C3A3C903C3C903C0B360B2885280D390D
          B6B6B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF2C8A2C0B360B2885280D390DB6B6B6FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFB6B6B6B6B6B6B6B6B6FFFFFFFFFFFF2885280B360B2885280D390D
          B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6002600002600002600B6B6
          B6FEFFFE2885280B360B2885280D390DB6B6B600280000280000280000280000
          2800005A00FFFFFF377837387638002600FEFFFE2885280B360B2885280D390D
          B6B6B640DE40057C05005D00005A00005A00FFFFFF3C853C3F853F002600FFFF
          FFFFFFFF2885280B360B2885280D390DB6B6B6FFFFFF50EA500A800A005A00FF
          FFFF3C853C3F843F002600FFFFFFFFFFFFFFFFFF2885280B360B2885280D390D
          B6B6B6FFFFFFFFFFFF005A00FFFFFF3C843C3F843F002600B6B6B6FFFFFFFFFF
          FFFFFFFF2885280B360B2885280D390DB6B6B6FFFFFF005A00FFFFFF3B843B3D
          813D002600002F000A310AB6B6B6FFFFFFFFFFFF2885280B360B2885280D390D
          B6B6B6005A00FFFFFF3C863C3E833E002600088008005A000028000A310AB6B6
          B6FFFFFF2885280B360B2885280D390DB6B6B64FBA4F4FBA4F4FBA4F002600FF
          FFFF56F156209820158915002B00FFFFFFFFFFFF2885280B360B2885280D390D
          B6B6B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFD
          FBFFFFFF2885280B360B2885280D390DB6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6
          B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B62784270B360B2885280D390D
          0D390D0D390D0D390D0D390D0D390D0D390D0D390D0D390D0D390D0D390D0D39
          0D0D390D0B360B288528FFFFFF28852828852828852828852828852828852828
          8528288528288528288528288528288528288528288528FFFFFF}
        Style = bsNew
      end
      object dbgasonoapodet: TwwDBGrid
        Left = 8
        Top = 8
        Width = 719
        Height = 270
        DisableThemesInTitle = False
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = DM1.dsFPagoDevolucion
        Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
      object BitBtn2: TBitBtn
        Left = 553
        Top = 338
        Width = 73
        Height = 30
        Caption = 'A Texto'
        TabOrder = 3
        OnClick = BitBtn1Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          5555555FFFFFFFFFF5555550000000000555557777777777F5555550FFFFFFFF
          0555557F5FFFF557F5555550F0000FFF0555557F77775557F5555550FFFFFFFF
          0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
          0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
          0555557F5FFF5557F5555550F000FFFF0555557F77755FF7F5555550FFFFF000
          0555557F5FF5777755555550F00FF0F05555557F77557F7555555550FFFFF005
          5555557FFFFF7755555555500000005555555577777775555555555555555555
          5555555555555555555555555555555555555555555555555555}
        NumGlyphs = 2
        Style = bsNew
      end
      object rgtiprep: TRadioGroup
        Left = 458
        Top = 283
        Width = 270
        Height = 49
        Caption = ' Seleccione el tipo de Reporte '
        Columns = 3
        Items.Strings = (
          'Resumen'
          'Detallado'
          'Sin aportes')
        TabOrder = 4
      end
      object Panel1: TPanel
        Left = 8
        Top = 314
        Width = 417
        Height = 25
        Caption = 'Panel1'
        TabOrder = 5
        object mebusca: TMaskEdit
          Left = 1
          Top = 1
          Width = 415
          Height = 21
          TabOrder = 0
          OnChange = mebuscaChange
          OnKeyPress = mebuscaKeyPress
        end
      end
    end
  end
  object cdsnoapor: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ANO'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'MES'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'UPRONOM'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'UPAGONOM'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ASOAPENOMDNI'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'ASODNI'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ASOCODMOD'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'MONTO'
        DataType = ftFloat
      end
      item
        Name = 'ASOID'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'USENOM'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'CANTIDAD'
        DataType = ftFloat
      end
      item
        Name = 'ASOCODPAGO'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'ULTAPO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'USEID'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'VARIASCUOT'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PERFAL'
        DataType = ftString
        Size = 7
      end>
    IndexDefs = <
      item
        Name = 'cdsnoaporIndex4'
        Fields = 'CANTIDAD'
      end>
    Params = <>
    StoreDefs = True
    Left = 90
    Top = 412
    Data = {
      BF0100009619E0BD010000001800000010000000000003000000BF0103414E4F
      0100490000000100055749445448020002000400034D45530100490000000100
      055749445448020002001400075550524F4E4F4D010049000000010005574944
      5448020002001E0008555041474F4E4F4D010049000000010005574944544802
      00020014000C41534F4150454E4F4D444E490100490000000100055749445448
      020002003C000641534F444E4901004900000001000557494454480200020014
      000941534F434F444D4F440100490000000100055749445448020002000A0005
      4D4F4E544F08000400000000000541534F494401004900000001000557494454
      48020002000A00065553454E4F4D010049000000010005574944544802000200
      19000843414E544944414408000400000000000A41534F434F445041474F0100
      490000000100055749445448020002000C0006554C5441504F01004900000001
      0005574944544802000200140005555345494401004900000001000557494454
      480200020014000A56415249415343554F540100490000000100055749445448
      0200020014000650455246414C01004900000001000557494454480200020007
      000000}
  end
  object dsnoapor: TDataSource
    DataSet = cdsnoapor
    Left = 98
    Top = 420
  end
  object ppbdepnoapor: TppBDEPipeline
    DataSource = dsnoapor
    UserName = 'bdepnoapor'
    Left = 140
    Top = 420
    object ppbdepnoaporppField1: TppField
      FieldAlias = 'ANO'
      FieldName = 'ANO'
      FieldLength = 4
      DisplayWidth = 4
      Position = 0
    end
    object ppbdepnoaporppField2: TppField
      FieldAlias = 'MES'
      FieldName = 'MES'
      FieldLength = 20
      DisplayWidth = 20
      Position = 1
    end
    object ppbdepnoaporppField3: TppField
      FieldAlias = 'UPRONOM'
      FieldName = 'UPRONOM'
      FieldLength = 30
      DisplayWidth = 30
      Position = 2
    end
    object ppbdepnoaporppField4: TppField
      FieldAlias = 'UPAGONOM'
      FieldName = 'UPAGONOM'
      FieldLength = 20
      DisplayWidth = 20
      Position = 3
    end
    object ppbdepnoaporppField5: TppField
      FieldAlias = 'ASOAPENOMDNI'
      FieldName = 'ASOAPENOMDNI'
      FieldLength = 60
      DisplayWidth = 60
      Position = 4
    end
    object ppbdepnoaporppField6: TppField
      FieldAlias = 'ASODNI'
      FieldName = 'ASODNI'
      FieldLength = 20
      DisplayWidth = 20
      Position = 5
    end
    object ppbdepnoaporppField7: TppField
      FieldAlias = 'ASOCODMOD'
      FieldName = 'ASOCODMOD'
      FieldLength = 10
      DisplayWidth = 10
      Position = 6
    end
    object ppbdepnoaporppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'MONTO'
      FieldName = 'MONTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object ppbdepnoaporppField9: TppField
      FieldAlias = 'ASOID'
      FieldName = 'ASOID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 8
    end
    object ppbdepnoaporppField10: TppField
      FieldAlias = 'USENOM'
      FieldName = 'USENOM'
      FieldLength = 25
      DisplayWidth = 25
      Position = 9
    end
    object ppbdepnoaporppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'CANTIDAD'
      FieldName = 'CANTIDAD'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 10
    end
    object ppbdepnoaporppField12: TppField
      FieldAlias = 'ASOCODPAGO'
      FieldName = 'ASOCODPAGO'
      FieldLength = 12
      DisplayWidth = 12
      Position = 11
    end
    object ppbdepnoaporppField13: TppField
      FieldAlias = 'ULTAPO'
      FieldName = 'ULTAPO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 12
    end
    object ppbdepnoaporppField14: TppField
      FieldAlias = 'USEID'
      FieldName = 'USEID'
      FieldLength = 20
      DisplayWidth = 20
      Position = 13
    end
    object ppbdepnoaporppField15: TppField
      FieldAlias = 'VARIASCUOT'
      FieldName = 'VARIASCUOT'
      FieldLength = 20
      DisplayWidth = 20
      Position = 14
    end
    object ppbdepnoaporppField16: TppField
      FieldAlias = 'PERFAL'
      FieldName = 'PERFAL'
      FieldLength = 7
      DisplayWidth = 7
      Position = 15
    end
  end
  object pprreporte01: TppReport
    AutoStop = False
    DataPipeline = ppbdepnoapor
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Documents and Settings\irevilla\Escritorio\qqq.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 132
    Top = 412
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppbdepnoapor'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 48419
      mmPrintPosition = 0
      object ppShape13: TppShape
        UserName = 'Shape101'
        mmHeight = 7938
        mmLeft = 50800
        mmTop = 39952
        mmWidth = 13229
        BandType = 0
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        mmHeight = 7938
        mmLeft = 130704
        mmTop = 39952
        mmWidth = 15081
        BandType = 0
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 7938
        mmLeft = 63765
        mmTop = 39952
        mmWidth = 67733
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 7938
        mmLeft = 11113
        mmTop = 39952
        mmWidth = 22490
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Unidad de Proceso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 14288
        mmTop = 29898
        mmWidth = 28046
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Unidad de Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 14288
        mmTop = 33867
        mmWidth = 24871
        BandType = 0
      end
      object ppluniprodes03: TppLabel
        UserName = 'Label3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 45773
        mmTop = 29898
        mmWidth = 96044
        BandType = 0
      end
      object ppltitulo01: TppLabel
        UserName = 'ltitulo01'
        Caption = 'RESUMEN DE APORTES FALTANTES POR ASOCIADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 37306
        mmTop = 14552
        mmWidth = 113242
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Derrama Magisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 11377
        mmTop = 0
        mmWidth = 34131
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Equipo de Cobranzas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 11377
        mmTop = 4233
        mmWidth = 32544
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 149225
        mmTop = 0
        mmWidth = 9229
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'P'#225'gina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 149225
        mmTop = 8467
        mmWidth = 10583
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
        mmLeft = 163513
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
        mmLeft = 163513
        mmTop = 8467
        mmWidth = 1588
        BandType = 0
      end
      object ppltitulodet0203: TppLabel
        UserName = 'ltitulodet0203'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 68792
        mmTop = 19844
        mmWidth = 50292
        BandType = 0
      end
      object pplunipagdes03: TppLabel
        UserName = 'lunipagdes03'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 45773
        mmTop = 33867
        mmWidth = 96044
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 11906
        mmTop = 40481
        mmWidth = 15347
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'modular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 11906
        mmTop = 43921
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'Apellidos y nombre(s)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 64823
        mmTop = 40481
        mmWidth = 27432
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'DNI del'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 131234
        mmTop = 40481
        mmWidth = 9525
        BandType = 0
      end
      object ppShape8: TppShape
        UserName = 'Shape8'
        mmHeight = 7938
        mmLeft = 145522
        mmTop = 39952
        mmWidth = 20373
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = 'Monto faltante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 146315
        mmTop = 40481
        mmWidth = 18256
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        Caption = 'asocidado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 131234
        mmTop = 43921
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label201'
        Caption = 'en aportes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 146315
        mmTop = 43921
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label41'
        Caption = 'del asociado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 64823
        mmTop = 43921
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        Caption = 'Hora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 149225
        mmTop = 4233
        mmWidth = 7144
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable5'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 163513
        mmTop = 4233
        mmWidth = 20108
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        Caption = 'Departamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 14288
        mmTop = 26194
        mmWidth = 21167
        BandType = 0
      end
      object ppldepdes03: TppLabel
        UserName = 'lupronom2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 45773
        mmTop = 26194
        mmWidth = 96044
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label45'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 43656
        mmTop = 26194
        mmWidth = 1058
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label46'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 43656
        mmTop = 29898
        mmWidth = 1058
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label47'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 43656
        mmTop = 33867
        mmWidth = 1058
        BandType = 0
      end
      object ppShape10: TppShape
        UserName = 'Shape10'
        mmHeight = 7938
        mmLeft = 33338
        mmTop = 39952
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel51: TppLabel
        UserName = 'Label51'
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 34131
        mmTop = 40481
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label52'
        Caption = 'de Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 34131
        mmTop = 43921
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel53: TppLabel
        UserName = 'Label53'
        Caption = 'UGEL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 51594
        mmTop = 40481
        mmWidth = 7673
        BandType = 0
      end
      object ppShape14: TppShape
        UserName = 'Shape14'
        mmHeight = 7938
        mmLeft = 165629
        mmTop = 39952
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel54: TppLabel
        UserName = 'Label202'
        Caption = 'Periodo del'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 166423
        mmTop = 40481
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel55: TppLabel
        UserName = 'Label55'
        Caption = 'ultimo aporte'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 166423
        mmTop = 43921
        mmWidth = 16425
        BandType = 0
      end
      object ppLabel62: TppLabel
        UserName = 'Label62'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 161132
        mmTop = 0
        mmWidth = 1058
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label63'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 161132
        mmTop = 4233
        mmWidth = 1058
        BandType = 0
      end
      object ppLabel82: TppLabel
        UserName = 'Label82'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 161132
        mmTop = 8467
        mmWidth = 1058
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'ASOCODMOD'
        DataPipeline = ppbdepnoapor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppbdepnoapor'
        mmHeight = 3175
        mmLeft = 11906
        mmTop = 0
        mmWidth = 20373
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'ASOAPENOMDNI'
        DataPipeline = ppbdepnoapor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppbdepnoapor'
        mmHeight = 3175
        mmLeft = 64823
        mmTop = 0
        mmWidth = 64294
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'ASODNI'
        DataPipeline = ppbdepnoapor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppbdepnoapor'
        mmHeight = 3175
        mmLeft = 131234
        mmTop = 0
        mmWidth = 12965
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'CANTIDAD'
        DataPipeline = ppbdepnoapor
        DisplayFormat = '###,##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'ppbdepnoapor'
        mmHeight = 3175
        mmLeft = 1852
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'MONTO'
        DataPipeline = ppbdepnoapor
        DisplayFormat = '###,##.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdepnoapor'
        mmHeight = 3175
        mmLeft = 152136
        mmTop = 0
        mmWidth = 12700
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'ASOCODPAGO'
        DataPipeline = ppbdepnoapor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppbdepnoapor'
        mmHeight = 3175
        mmLeft = 34131
        mmTop = 0
        mmWidth = 15610
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'USEID'
        DataPipeline = ppbdepnoapor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdepnoapor'
        mmHeight = 3175
        mmLeft = 51594
        mmTop = 0
        mmWidth = 8731
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText101'
        DataField = 'ULTAPO'
        DataPipeline = ppbdepnoapor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdepnoapor'
        mmHeight = 3175
        mmLeft = 166423
        mmTop = 0
        mmWidth = 13229
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppLabel31: TppLabel
        UserName = 'Label31'
        Caption = 'TOTAL GENERAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 119327
        mmTop = 529
        mmWidth = 23813
        BandType = 7
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 145521
        mmTop = 0
        mmWidth = 20373
        BandType = 7
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 145521
        mmTop = 4233
        mmWidth = 20373
        BandType = 7
      end
      object pplimpresopor: TppLabel
        UserName = 'limpresopor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 11113
        mmTop = 3704
        mmWidth = 68527
        BandType = 7
      end
      object ppLabel144: TppLabel
        UserName = 'Label144'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 144463
        mmTop = 529
        mmWidth = 1058
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'MONTO'
        DataPipeline = ppbdepnoapor
        DisplayFormat = '###,##.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdepnoapor'
        mmHeight = 3175
        mmLeft = 152136
        mmTop = 529
        mmWidth = 12700
        BandType = 7
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'CANTIDAD'
      DataPipeline = ppbdepnoapor
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppbdepnoapor'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 3969
        mmPrintPosition = 0
        object pplaportes: TppLabel
          OnPrint = pplaportesPrint
          UserName = 'laportes'
          Caption = 'Aportes Faltantes : 15'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 11377
          mmTop = 529
          mmWidth = 39952
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 6085
        mmPrintPosition = 0
        object ppLine3: TppLine
          UserName = 'Line3'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 145522
          mmTop = 0
          mmWidth = 20373
          BandType = 5
          GroupNo = 0
        end
        object ppltotalapofal: TppLabel
          UserName = 'ltotalapofal'
          Caption = 'SUBTOTAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 119327
          mmTop = 794
          mmWidth = 15198
          BandType = 5
          GroupNo = 0
        end
        object ppLabel142: TppLabel
          UserName = 'Label142'
          Caption = ':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 144463
          mmTop = 792
          mmWidth = 1058
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc4: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'MONTO'
          DataPipeline = ppbdepnoapor
          DisplayFormat = '###,##.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbdepnoapor'
          mmHeight = 3175
          mmLeft = 152136
          mmTop = 794
          mmWidth = 12700
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc2'
          DataField = 'ASOAPENOMDNI'
          DataPipeline = ppbdepnoapor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppbdepnoapor'
          mmHeight = 3175
          mmLeft = 52388
          mmTop = 794
          mmWidth = 8996
          BandType = 5
          GroupNo = 0
        end
        object ppLabel70: TppLabel
          UserName = 'Label70'
          Caption = 'CANTIDAD DE REGISTROS :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 11906
          mmTop = 792
          mmWidth = 38365
          BandType = 5
          GroupNo = 0
        end
        object ppLine14: TppLine
          UserName = 'Line14'
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 11113
          mmTop = 5027
          mmWidth = 170657
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object ppbdepnoapor01: TppBDEPipeline
    DataSource = dsnoapor
    UserName = 'bdepnoapor1'
    Left = 182
    Top = 420
    object ppbdepnoapor01ppField1: TppField
      FieldAlias = 'ANO'
      FieldName = 'ANO'
      FieldLength = 4
      DisplayWidth = 4
      Position = 0
    end
    object ppbdepnoapor01ppField2: TppField
      FieldAlias = 'MES'
      FieldName = 'MES'
      FieldLength = 20
      DisplayWidth = 20
      Position = 1
    end
    object ppbdepnoapor01ppField3: TppField
      FieldAlias = 'UPRONOM'
      FieldName = 'UPRONOM'
      FieldLength = 30
      DisplayWidth = 30
      Position = 2
    end
    object ppbdepnoapor01ppField4: TppField
      FieldAlias = 'UPAGONOM'
      FieldName = 'UPAGONOM'
      FieldLength = 20
      DisplayWidth = 20
      Position = 3
    end
    object ppbdepnoapor01ppField5: TppField
      FieldAlias = 'ASOAPENOMDNI'
      FieldName = 'ASOAPENOMDNI'
      FieldLength = 60
      DisplayWidth = 60
      Position = 4
    end
    object ppbdepnoapor01ppField6: TppField
      FieldAlias = 'ASODNI'
      FieldName = 'ASODNI'
      FieldLength = 20
      DisplayWidth = 20
      Position = 5
    end
    object ppbdepnoapor01ppField7: TppField
      FieldAlias = 'ASOCODMOD'
      FieldName = 'ASOCODMOD'
      FieldLength = 10
      DisplayWidth = 10
      Position = 6
    end
    object ppbdepnoapor01ppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'MONTO'
      FieldName = 'MONTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object ppbdepnoapor01ppField9: TppField
      FieldAlias = 'ASOID'
      FieldName = 'ASOID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 8
    end
    object ppbdepnoapor01ppField10: TppField
      FieldAlias = 'USENOM'
      FieldName = 'USENOM'
      FieldLength = 25
      DisplayWidth = 25
      Position = 9
    end
    object ppbdepnoapor01ppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'CANTIDAD'
      FieldName = 'CANTIDAD'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 10
    end
    object ppbdepnoapor01ppField12: TppField
      FieldAlias = 'ASOCODPAGO'
      FieldName = 'ASOCODPAGO'
      FieldLength = 12
      DisplayWidth = 12
      Position = 11
    end
    object ppbdepnoapor01ppField13: TppField
      FieldAlias = 'ULTAPO'
      FieldName = 'ULTAPO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 12
    end
    object ppbdepnoapor01ppField14: TppField
      FieldAlias = 'USEID'
      FieldName = 'USEID'
      FieldLength = 20
      DisplayWidth = 20
      Position = 13
    end
    object ppbdepnoapor01ppField15: TppField
      FieldAlias = 'VARIASCUOT'
      FieldName = 'VARIASCUOT'
      FieldLength = 20
      DisplayWidth = 20
      Position = 14
    end
    object ppbdepnoapor01ppField16: TppField
      FieldAlias = 'PERFAL'
      FieldName = 'PERFAL'
      FieldLength = 7
      DisplayWidth = 7
      Position = 15
    end
  end
  object pprreporte02: TppReport
    AutoStop = False
    DataPipeline = ppbdepnoapor01
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    Template.FileName = 'D:\Modulos\Aportes\Cliente\REP1.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 174
    Top = 412
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppbdepnoapor01'
    object ppHeaderBand4: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 53975
      mmPrintPosition = 0
      object ppShape24: TppShape
        UserName = 'Shape6'
        mmHeight = 7938
        mmLeft = 114565
        mmTop = 45507
        mmWidth = 18255
        BandType = 0
      end
      object ppShape25: TppShape
        UserName = 'Shape5'
        mmHeight = 7938
        mmLeft = 42333
        mmTop = 45508
        mmWidth = 72497
        BandType = 0
      end
      object ppShape26: TppShape
        UserName = 'Shape4'
        mmHeight = 7938
        mmLeft = 4233
        mmTop = 45508
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel94: TppLabel
        UserName = 'Label1'
        Caption = 'Unidad de Proceso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 14552
        mmTop = 31750
        mmWidth = 28046
        BandType = 0
      end
      object ppLabel95: TppLabel
        UserName = 'Label2'
        Caption = 'Unidad de Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 14552
        mmTop = 35454
        mmWidth = 24871
        BandType = 0
      end
      object ppLabel96: TppLabel
        UserName = 'Label3'
        Caption = 'UGEL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 14552
        mmTop = 39158
        mmWidth = 7938
        BandType = 0
      end
      object ppluniprodes04: TppLabel
        UserName = 'lupronom'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 46038
        mmTop = 31750
        mmWidth = 96044
        BandType = 0
      end
      object ppLabel98: TppLabel
        UserName = 'ltitulo01'
        Caption = 'RESUMEN DE APORTES FALTANTES POR ASOCIADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 31221
        mmTop = 14288
        mmWidth = 112184
        BandType = 0
      end
      object ppLabel99: TppLabel
        UserName = 'Label6'
        Caption = 'Derrama Magisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 4233
        mmTop = 0
        mmWidth = 34131
        BandType = 0
      end
      object ppLabel100: TppLabel
        UserName = 'Label7'
        Caption = 'Equipo de Cobranzas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 4233
        mmTop = 4233
        mmWidth = 32597
        BandType = 0
      end
      object ppLabel101: TppLabel
        UserName = 'Label12'
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 144463
        mmTop = 0
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel102: TppLabel
        UserName = 'Label13'
        Caption = 'P'#225'gina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 144463
        mmTop = 8467
        mmWidth = 10583
        BandType = 0
      end
      object ppSystemVariable10: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 158486
        mmTop = 0
        mmWidth = 19050
        BandType = 0
      end
      object ppSystemVariable11: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 158486
        mmTop = 8467
        mmWidth = 1588
        BandType = 0
      end
      object ppltitulodet0204: TppLabel
        UserName = 'ltitulo02'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 62696
        mmTop = 19579
        mmWidth = 49234
        BandType = 0
      end
      object pplunipagdes04: TppLabel
        UserName = 'lupagonom'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 46038
        mmTop = 35454
        mmWidth = 96044
        BandType = 0
      end
      object pplunigesdes04: TppLabel
        UserName = 'lusenom'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 46038
        mmTop = 39158
        mmWidth = 96044
        BandType = 0
      end
      object ppLabel106: TppLabel
        UserName = 'Label11'
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 5027
        mmTop = 46038
        mmWidth = 12435
        BandType = 0
      end
      object ppLabel107: TppLabel
        UserName = 'Label14'
        Caption = 'modular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 5027
        mmTop = 49477
        mmWidth = 12435
        BandType = 0
      end
      object ppLabel108: TppLabel
        UserName = 'Label15'
        Caption = 'Apellidos y nombre(s)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 43392
        mmTop = 46038
        mmWidth = 32808
        BandType = 0
      end
      object ppLabel109: TppLabel
        UserName = 'Label16'
        Caption = 'DNI del'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 115359
        mmTop = 46038
        mmWidth = 9525
        BandType = 0
      end
      object ppShape28: TppShape
        UserName = 'Shape8'
        mmHeight = 7938
        mmLeft = 132557
        mmTop = 45507
        mmWidth = 20373
        BandType = 0
      end
      object ppLabel111: TppLabel
        UserName = 'Label20'
        Caption = 'Monto faltante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 133350
        mmTop = 46038
        mmWidth = 18785
        BandType = 0
      end
      object ppLabel113: TppLabel
        UserName = 'Label39'
        Caption = 'asocidado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 115359
        mmTop = 49477
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel114: TppLabel
        UserName = 'Label201'
        Caption = 'en aportes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 133350
        mmTop = 49477
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel115: TppLabel
        UserName = 'Label41'
        Caption = 'del asociado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 43392
        mmTop = 49477
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel116: TppLabel
        UserName = 'Label42'
        Caption = 'Hora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 144463
        mmTop = 4233
        mmWidth = 7144
        BandType = 0
      end
      object ppSystemVariable12: TppSystemVariable
        UserName = 'SystemVariable5'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 158486
        mmTop = 4233
        mmWidth = 20108
        BandType = 0
      end
      object ppLabel117: TppLabel
        UserName = 'Label44'
        Caption = 'Departamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 14552
        mmTop = 28046
        mmWidth = 21167
        BandType = 0
      end
      object ppldepdes04: TppLabel
        UserName = 'lupronom2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 46038
        mmTop = 28046
        mmWidth = 96044
        BandType = 0
      end
      object ppLabel119: TppLabel
        UserName = 'Label45'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 43921
        mmTop = 28046
        mmWidth = 1058
        BandType = 0
      end
      object ppLabel120: TppLabel
        UserName = 'Label46'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 43921
        mmTop = 31750
        mmWidth = 1058
        BandType = 0
      end
      object ppLabel121: TppLabel
        UserName = 'Label47'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 43921
        mmTop = 35454
        mmWidth = 1058
        BandType = 0
      end
      object ppLabel122: TppLabel
        UserName = 'Label48'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 43921
        mmTop = 39158
        mmWidth = 1058
        BandType = 0
      end
      object ppShape29: TppShape
        UserName = 'Shape10'
        mmHeight = 7938
        mmLeft = 24871
        mmTop = 45508
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel123: TppLabel
        UserName = 'Label51'
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 25665
        mmTop = 46038
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel124: TppLabel
        UserName = 'Label52'
        Caption = 'de pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 25665
        mmTop = 49477
        mmWidth = 12171
        BandType = 0
      end
      object ppShape30: TppShape
        UserName = 'Shape14'
        mmHeight = 7938
        mmLeft = 152665
        mmTop = 45507
        mmWidth = 18785
        BandType = 0
      end
      object ppLabel126: TppLabel
        UserName = 'Label202'
        Caption = 'Periodo del'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 153459
        mmTop = 46038
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel127: TppLabel
        UserName = 'Label55'
        Caption = 'ultimo aporte'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 153459
        mmTop = 49477
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label4'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 156104
        mmTop = 0
        mmWidth = 1058
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label5'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 156104
        mmTop = 4233
        mmWidth = 1058
        BandType = 0
      end
      object ppLabel89: TppLabel
        UserName = 'Label89'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 156104
        mmTop = 8467
        mmWidth = 1058
        BandType = 0
      end
    end
    object ppDetailBand4: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText23: TppDBText
        UserName = 'DBText1'
        DataField = 'ASOCODMOD'
        DataPipeline = ppbdepnoapor01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppbdepnoapor01'
        mmHeight = 3175
        mmLeft = 5292
        mmTop = 0
        mmWidth = 19315
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText2'
        DataField = 'ASOAPENOMDNI'
        DataPipeline = ppbdepnoapor01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppbdepnoapor01'
        mmHeight = 3175
        mmLeft = 43392
        mmTop = 0
        mmWidth = 70908
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText3'
        DataField = 'ASODNI'
        DataPipeline = ppbdepnoapor01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppbdepnoapor01'
        mmHeight = 3175
        mmLeft = 115359
        mmTop = 0
        mmWidth = 16669
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText4'
        DataField = 'CANTIDAD'
        DataPipeline = ppbdepnoapor01
        DisplayFormat = '###,##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'ppbdepnoapor01'
        mmHeight = 3175
        mmLeft = 794
        mmTop = 0
        mmWidth = 3704
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText10'
        DataField = 'MONTO'
        DataPipeline = ppbdepnoapor01
        DisplayFormat = '###,##.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdepnoapor01'
        mmHeight = 3175
        mmLeft = 133350
        mmTop = 0
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText9'
        DataField = 'ASOCODPAGO'
        DataPipeline = ppbdepnoapor01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppbdepnoapor01'
        mmHeight = 3175
        mmLeft = 25665
        mmTop = 0
        mmWidth = 16140
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText14'
        DataField = 'ULTAPO'
        DataPipeline = ppbdepnoapor01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdepnoapor01'
        mmHeight = 3175
        mmLeft = 153459
        mmTop = 0
        mmWidth = 15346
        BandType = 4
      end
    end
    object ppSummaryBand4: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 9790
      mmPrintPosition = 0
      object ppDBCalc13: TppDBCalc
        UserName = 'DBCalc6'
        DataField = 'MONTO'
        DataPipeline = ppbdepnoapor01
        DisplayFormat = '###,##.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdepnoapor01'
        mmHeight = 3175
        mmLeft = 133350
        mmTop = 529
        mmWidth = 19050
        BandType = 7
      end
      object ppLabel128: TppLabel
        UserName = 'Label31'
        Caption = 'TOTAL GENERAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 103452
        mmTop = 529
        mmWidth = 23749
        BandType = 7
      end
      object ppLine10: TppLine
        UserName = 'Line4'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 132557
        mmTop = 0
        mmWidth = 20373
        BandType = 7
      end
      object ppLine11: TppLine
        UserName = 'Line5'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 132557
        mmTop = 4233
        mmWidth = 20373
        BandType = 7
      end
      object ppLabel129: TppLabel
        UserName = 'limpresopor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 5027
        mmTop = 6350
        mmWidth = 68527
        BandType = 7
      end
      object ppLabel69: TppLabel
        UserName = 'Label69'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 128852
        mmTop = 529
        mmWidth = 1058
        BandType = 7
      end
    end
    object ppGroup5: TppGroup
      BreakName = 'CANTIDAD'
      DataPipeline = ppbdepnoapor01
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppbdepnoapor01'
      object ppGroupHeaderBand5: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppLabel130: TppLabel
          OnPrint = pplaportesPrint
          UserName = 'laportes'
          Caption = 'Aportes Faltantes : 15'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 4233
          mmTop = 0
          mmWidth = 39952
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand5: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 5027
        mmPrintPosition = 0
        object ppDBCalc15: TppDBCalc
          UserName = 'DBCalc4'
          DataField = 'MONTO'
          DataPipeline = ppbdepnoapor01
          DisplayFormat = '###,##.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbdepnoapor01'
          mmHeight = 3175
          mmLeft = 133350
          mmTop = 1058
          mmWidth = 19050
          BandType = 5
          GroupNo = 0
        end
        object ppLine12: TppLine
          UserName = 'Line3'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 132557
          mmTop = 265
          mmWidth = 20373
          BandType = 5
          GroupNo = 0
        end
        object ppLabel131: TppLabel
          UserName = 'ltotalapofal'
          Caption = 'SUBTOTAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 103452
          mmTop = 1058
          mmWidth = 15198
          BandType = 5
          GroupNo = 0
        end
        object ppLabel28: TppLabel
          UserName = 'Label28'
          Caption = ':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 128852
          mmTop = 1058
          mmWidth = 1058
          BandType = 5
          GroupNo = 0
        end
        object ppLabel21: TppLabel
          UserName = 'Label701'
          Caption = 'CANTIDAD DE REGISTROS :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 5292
          mmTop = 1058
          mmWidth = 38365
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc12: TppDBCalc
          UserName = 'DBCalc12'
          DataField = 'ASOCODMOD'
          DataPipeline = ppbdepnoapor01
          DisplayFormat = '###,###'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppbdepnoapor01'
          mmHeight = 3175
          mmLeft = 46302
          mmTop = 1058
          mmWidth = 10319
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object ppBDEPipeline1: TppBDEPipeline
    DataSource = dsnoapor
    UserName = 'BDEPipeline1'
    Left = 225
    Top = 420
    object ppBDEPipeline1ppField1: TppField
      FieldAlias = 'ANO'
      FieldName = 'ANO'
      FieldLength = 4
      DisplayWidth = 4
      Position = 0
    end
    object ppBDEPipeline1ppField2: TppField
      FieldAlias = 'MES'
      FieldName = 'MES'
      FieldLength = 20
      DisplayWidth = 20
      Position = 1
    end
    object ppBDEPipeline1ppField3: TppField
      FieldAlias = 'UPRONOM'
      FieldName = 'UPRONOM'
      FieldLength = 30
      DisplayWidth = 30
      Position = 2
    end
    object ppBDEPipeline1ppField4: TppField
      FieldAlias = 'UPAGONOM'
      FieldName = 'UPAGONOM'
      FieldLength = 20
      DisplayWidth = 20
      Position = 3
    end
    object ppBDEPipeline1ppField5: TppField
      FieldAlias = 'ASOAPENOMDNI'
      FieldName = 'ASOAPENOMDNI'
      FieldLength = 60
      DisplayWidth = 60
      Position = 4
    end
    object ppBDEPipeline1ppField6: TppField
      FieldAlias = 'ASODNI'
      FieldName = 'ASODNI'
      FieldLength = 20
      DisplayWidth = 20
      Position = 5
    end
    object ppBDEPipeline1ppField7: TppField
      FieldAlias = 'ASOCODMOD'
      FieldName = 'ASOCODMOD'
      FieldLength = 10
      DisplayWidth = 10
      Position = 6
    end
    object ppBDEPipeline1ppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'MONTO'
      FieldName = 'MONTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object ppBDEPipeline1ppField9: TppField
      FieldAlias = 'ASOID'
      FieldName = 'ASOID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 8
    end
    object ppBDEPipeline1ppField10: TppField
      FieldAlias = 'USENOM'
      FieldName = 'USENOM'
      FieldLength = 25
      DisplayWidth = 25
      Position = 9
    end
    object ppBDEPipeline1ppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'CANTIDAD'
      FieldName = 'CANTIDAD'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 10
    end
    object ppBDEPipeline1ppField12: TppField
      FieldAlias = 'ASOCODPAGO'
      FieldName = 'ASOCODPAGO'
      FieldLength = 12
      DisplayWidth = 12
      Position = 11
    end
    object ppBDEPipeline1ppField13: TppField
      FieldAlias = 'ULTAPO'
      FieldName = 'ULTAPO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 12
    end
    object ppBDEPipeline1ppField14: TppField
      FieldAlias = 'USEID'
      FieldName = 'USEID'
      FieldLength = 20
      DisplayWidth = 20
      Position = 13
    end
    object ppBDEPipeline1ppField15: TppField
      FieldAlias = 'VARIASCUOT'
      FieldName = 'VARIASCUOT'
      FieldLength = 20
      DisplayWidth = 20
      Position = 14
    end
    object ppBDEPipeline1ppField16: TppField
      FieldAlias = 'PERFAL'
      FieldName = 'PERFAL'
      FieldLength = 7
      DisplayWidth = 7
      Position = 15
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    Template.FileName = 'D:\Modulos\Aportes\Cliente\REP1.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 217
    Top = 412
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPipeline1'
    object ppHeaderBand5: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 53975
      mmPrintPosition = 0
      object ppShape7: TppShape
        UserName = 'Shape6'
        mmHeight = 7938
        mmLeft = 166159
        mmTop = 45508
        mmWidth = 18256
        BandType = 0
      end
      object ppShape22: TppShape
        UserName = 'Shape5'
        mmHeight = 7938
        mmLeft = 87577
        mmTop = 45508
        mmWidth = 78846
        BandType = 0
      end
      object ppShape23: TppShape
        UserName = 'Shape4'
        mmHeight = 7938
        mmLeft = 4233
        mmTop = 45508
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel104: TppLabel
        UserName = 'Label1'
        Caption = 'Unidad de Proceso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 14552
        mmTop = 31750
        mmWidth = 28046
        BandType = 0
      end
      object ppLabel105: TppLabel
        UserName = 'Label2'
        Caption = 'Unidad de Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 14552
        mmTop = 35454
        mmWidth = 24871
        BandType = 0
      end
      object ppluniprodes05: TppLabel
        UserName = 'lupronom'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 46038
        mmTop = 31750
        mmWidth = 96044
        BandType = 0
      end
      object ppLabel118: TppLabel
        UserName = 'ltitulo01'
        Caption = 'RESUMEN DE ASOCIADOS SIN APORTES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4995
        mmLeft = 45005
        mmTop = 14288
        mmWidth = 84625
        BandType = 0
      end
      object ppLabel125: TppLabel
        UserName = 'Label6'
        Caption = 'Derrama Magisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 4233
        mmTop = 0
        mmWidth = 34131
        BandType = 0
      end
      object ppLabel132: TppLabel
        UserName = 'Label7'
        Caption = 'Equipo de Cobranzas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 4233
        mmTop = 4233
        mmWidth = 32597
        BandType = 0
      end
      object ppLabel133: TppLabel
        UserName = 'Label12'
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 144463
        mmTop = 0
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel134: TppLabel
        UserName = 'Label13'
        Caption = 'P'#225'gina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 144463
        mmTop = 8467
        mmWidth = 10583
        BandType = 0
      end
      object ppSystemVariable13: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 158486
        mmTop = 0
        mmWidth = 19050
        BandType = 0
      end
      object ppSystemVariable14: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 158486
        mmTop = 8467
        mmWidth = 1588
        BandType = 0
      end
      object ppltitulodet0205: TppLabel
        UserName = 'ltitulo02'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 62696
        mmTop = 19579
        mmWidth = 49234
        BandType = 0
      end
      object pplunipagdes05: TppLabel
        UserName = 'lupagonom'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 46038
        mmTop = 35454
        mmWidth = 96044
        BandType = 0
      end
      object ppLabel138: TppLabel
        UserName = 'Label11'
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 5027
        mmTop = 46038
        mmWidth = 8932
        BandType = 0
      end
      object ppLabel139: TppLabel
        UserName = 'Label14'
        Caption = 'modular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 5027
        mmTop = 49477
        mmWidth = 10245
        BandType = 0
      end
      object ppLabel140: TppLabel
        UserName = 'Label15'
        Caption = 'Apellidos y nombre(s)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 88636
        mmTop = 46038
        mmWidth = 27432
        BandType = 0
      end
      object ppLabel141: TppLabel
        UserName = 'Label16'
        Caption = 'DNI del'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 166952
        mmTop = 46038
        mmWidth = 9440
        BandType = 0
      end
      object ppLabel143: TppLabel
        UserName = 'Label39'
        Caption = 'asocidado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 166952
        mmTop = 49477
        mmWidth = 12912
        BandType = 0
      end
      object ppLabel145: TppLabel
        UserName = 'Label41'
        Caption = 'del asociado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 88636
        mmTop = 49477
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel146: TppLabel
        UserName = 'Label42'
        Caption = 'Hora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 144463
        mmTop = 4233
        mmWidth = 7144
        BandType = 0
      end
      object ppSystemVariable15: TppSystemVariable
        UserName = 'SystemVariable5'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 158486
        mmTop = 4233
        mmWidth = 20108
        BandType = 0
      end
      object ppLabel147: TppLabel
        UserName = 'Label44'
        Caption = 'Departamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 14552
        mmTop = 28046
        mmWidth = 21167
        BandType = 0
      end
      object ppldepdes05: TppLabel
        UserName = 'lupronom2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 46038
        mmTop = 28046
        mmWidth = 96044
        BandType = 0
      end
      object ppLabel149: TppLabel
        UserName = 'Label45'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 43921
        mmTop = 28046
        mmWidth = 1058
        BandType = 0
      end
      object ppLabel150: TppLabel
        UserName = 'Label46'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 43921
        mmTop = 31750
        mmWidth = 1058
        BandType = 0
      end
      object ppLabel151: TppLabel
        UserName = 'Label47'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 43921
        mmTop = 35454
        mmWidth = 1058
        BandType = 0
      end
      object ppShape31: TppShape
        UserName = 'Shape10'
        mmHeight = 7938
        mmLeft = 70115
        mmTop = 45508
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel153: TppLabel
        UserName = 'Label51'
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 70908
        mmTop = 46038
        mmWidth = 8932
        BandType = 0
      end
      object ppLabel154: TppLabel
        UserName = 'Label52'
        Caption = 'de pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 70908
        mmTop = 49477
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel157: TppLabel
        UserName = 'Label4'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 156104
        mmTop = 0
        mmWidth = 1058
        BandType = 0
      end
      object ppLabel158: TppLabel
        UserName = 'Label5'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 156104
        mmTop = 4233
        mmWidth = 1058
        BandType = 0
      end
      object ppLabel159: TppLabel
        UserName = 'Label89'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 156104
        mmTop = 8467
        mmWidth = 1058
        BandType = 0
      end
      object ppShape27: TppShape
        UserName = 'Shape27'
        mmHeight = 7938
        mmLeft = 24871
        mmTop = 45508
        mmWidth = 45508
        BandType = 0
      end
      object ppLabel110: TppLabel
        UserName = 'Label110'
        Caption = 'Descripci'#243'n de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 25665
        mmTop = 46038
        mmWidth = 18754
        BandType = 0
      end
      object ppLabel137: TppLabel
        UserName = 'Label137'
        Caption = 'UGEL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 25665
        mmTop = 49477
        mmWidth = 7705
        BandType = 0
      end
    end
    object ppDetailBand5: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText22: TppDBText
        UserName = 'DBText1'
        DataField = 'ASOCODMOD'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3175
        mmLeft = 5027
        mmTop = 0
        mmWidth = 18521
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText2'
        DataField = 'ASOAPENOMDNI'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3175
        mmLeft = 88636
        mmTop = 0
        mmWidth = 76729
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText3'
        DataField = 'ASODNI'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3175
        mmLeft = 166952
        mmTop = 0
        mmWidth = 16669
        BandType = 4
      end
      object ppDBText34: TppDBText
        UserName = 'DBText9'
        DataField = 'USENOM'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3175
        mmLeft = 25665
        mmTop = 0
        mmWidth = 42863
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'DBText32'
        DataField = 'ASOCODPAGO'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3175
        mmLeft = 70908
        mmTop = 0
        mmWidth = 16140
        BandType = 4
      end
    end
    object ppSummaryBand5: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 14288
      mmPrintPosition = 0
      object ppLabel161: TppLabel
        UserName = 'limpresopor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 5027
        mmTop = 10054
        mmWidth = 68527
        BandType = 7
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 5027
        mmTop = 529
        mmWidth = 179388
        BandType = 7
      end
      object ppDBCalc11: TppDBCalc
        UserName = 'DBCalc11'
        DataField = 'ASOAPENOMDNI'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,###'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 4191
        mmLeft = 176213
        mmTop = 1323
        mmWidth = 8202
        BandType = 7
      end
      object ppLabel10: TppLabel
        UserName = 'Label3'
        Caption = 'Cantidad de asociados sin aportes :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 114300
        mmTop = 1323
        mmWidth = 60198
        BandType = 7
      end
    end
  end
  object cdsdetalle: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'UPRONOM'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'UPAGONOM'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ASOAPENOMDNI'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'ASODNI'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ASOCODMOD'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ASOID'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'USENOM'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'CANTIDAD'
        DataType = ftFloat
      end
      item
        Name = 'ASOCODPAGO'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'ULTAPO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'USEID'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'VARIASCUOT'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PERFAL'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'ANOMES_01'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'MONTO_01'
        DataType = ftFloat
      end
      item
        Name = 'ANOMES_02'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'MONTO_02'
        DataType = ftFloat
      end
      item
        Name = 'ANOMES_03'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'MONTO_03'
        DataType = ftFloat
      end
      item
        Name = 'ANOMES_04'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'MONTO_04'
        DataType = ftFloat
      end
      item
        Name = 'ANOMES_05'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'MONTO_05'
        DataType = ftFloat
      end
      item
        Name = 'ANOMES_06'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'MONTO_06'
        DataType = ftFloat
      end
      item
        Name = 'ANOMES_07'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'MONTO_07'
        DataType = ftFloat
      end
      item
        Name = 'ANOMES_08'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'MONTO_08'
        DataType = ftFloat
      end
      item
        Name = 'MONTOT'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'cdsnoaporIndex4'
        Fields = 'CANTIDAD'
      end>
    Params = <>
    StoreDefs = True
    Left = 262
    Top = 413
    Data = {
      080300009619E0BD01000000180000001E000000000003000000080307555052
      4F4E4F4D0100490000000100055749445448020002001E0008555041474F4E4F
      4D01004900000001000557494454480200020014000C41534F4150454E4F4D44
      4E490100490000000100055749445448020002003C000641534F444E49010049
      00000001000557494454480200020014000941534F434F444D4F440100490000
      000100055749445448020002000A000541534F49440100490000000100055749
      445448020002000A00065553454E4F4D01004900000001000557494454480200
      020019000843414E544944414408000400000000000A41534F434F445041474F
      0100490000000100055749445448020002000C0006554C5441504F0100490000
      0001000557494454480200020014000555534549440100490000000100055749
      4454480200020014000A56415249415343554F54010049000000010005574944
      54480200020014000650455246414C0100490000000100055749445448020002
      00070009414E4F4D45535F303101004900000001000557494454480200020007
      00084D4F4E544F5F3031080004000000000009414E4F4D45535F303201004900
      00000100055749445448020002000700084D4F4E544F5F303208000400000000
      0009414E4F4D45535F3033010049000000010005574944544802000200070008
      4D4F4E544F5F3033080004000000000009414E4F4D45535F3034010049000000
      0100055749445448020002000700084D4F4E544F5F3034080004000000000009
      414E4F4D45535F30350100490000000100055749445448020002000700084D4F
      4E544F5F3035080004000000000009414E4F4D45535F30360100490000000100
      055749445448020002000700084D4F4E544F5F3036080004000000000009414E
      4F4D45535F30370100490000000100055749445448020002000700084D4F4E54
      4F5F3037080004000000000009414E4F4D45535F303801004900000001000557
      49445448020002000700084D4F4E544F5F30380800040000000000064D4F4E54
      4F5408000400000000000000}
  end
  object dsdetalle: TDataSource
    DataSet = cdsdetalle
    Left = 270
    Top = 421
  end
  object ppbdepdetalle01: TppBDEPipeline
    DataSource = dsdetalle
    UserName = 'bdepnoapo2'
    Left = 18
    Top = 421
    object ppbdepdetalleppField1: TppField
      FieldAlias = 'UPRONOM'
      FieldName = 'UPRONOM'
      FieldLength = 30
      DisplayWidth = 30
      Position = 0
    end
    object ppbdepdetalleppField2: TppField
      FieldAlias = 'UPAGONOM'
      FieldName = 'UPAGONOM'
      FieldLength = 20
      DisplayWidth = 20
      Position = 1
    end
    object ppbdepdetalleppField3: TppField
      FieldAlias = 'ASOAPENOMDNI'
      FieldName = 'ASOAPENOMDNI'
      FieldLength = 60
      DisplayWidth = 60
      Position = 2
    end
    object ppbdepdetalleppField4: TppField
      FieldAlias = 'ASODNI'
      FieldName = 'ASODNI'
      FieldLength = 20
      DisplayWidth = 20
      Position = 3
    end
    object ppbdepdetalleppField5: TppField
      FieldAlias = 'ASOCODMOD'
      FieldName = 'ASOCODMOD'
      FieldLength = 10
      DisplayWidth = 10
      Position = 4
    end
    object ppbdepdetalleppField6: TppField
      FieldAlias = 'ASOID'
      FieldName = 'ASOID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 5
    end
    object ppbdepdetalleppField7: TppField
      FieldAlias = 'USENOM'
      FieldName = 'USENOM'
      FieldLength = 25
      DisplayWidth = 25
      Position = 6
    end
    object ppbdepdetalleppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'CANTIDAD'
      FieldName = 'CANTIDAD'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object ppbdepdetalleppField9: TppField
      FieldAlias = 'ASOCODPAGO'
      FieldName = 'ASOCODPAGO'
      FieldLength = 12
      DisplayWidth = 12
      Position = 8
    end
    object ppbdepdetalleppField10: TppField
      FieldAlias = 'ULTAPO'
      FieldName = 'ULTAPO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 9
    end
    object ppbdepdetalleppField11: TppField
      FieldAlias = 'USEID'
      FieldName = 'USEID'
      FieldLength = 20
      DisplayWidth = 20
      Position = 10
    end
    object ppbdepdetalleppField12: TppField
      FieldAlias = 'VARIASCUOT'
      FieldName = 'VARIASCUOT'
      FieldLength = 20
      DisplayWidth = 20
      Position = 11
    end
    object ppbdepdetalleppField13: TppField
      FieldAlias = 'PERFAL'
      FieldName = 'PERFAL'
      FieldLength = 7
      DisplayWidth = 7
      Position = 12
    end
    object ppbdepdetalleppField14: TppField
      FieldAlias = 'ANOMES_01'
      FieldName = 'ANOMES_01'
      FieldLength = 7
      DisplayWidth = 7
      Position = 13
    end
    object ppbdepdetalleppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'MONTO_01'
      FieldName = 'MONTO_01'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 14
    end
    object ppbdepdetalleppField16: TppField
      FieldAlias = 'ANOMES_02'
      FieldName = 'ANOMES_02'
      FieldLength = 7
      DisplayWidth = 7
      Position = 15
    end
    object ppbdepdetalleppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'MONTO_02'
      FieldName = 'MONTO_02'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 16
    end
    object ppbdepdetalleppField18: TppField
      FieldAlias = 'ANOMES_03'
      FieldName = 'ANOMES_03'
      FieldLength = 7
      DisplayWidth = 7
      Position = 17
    end
    object ppbdepdetalleppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'MONTO_03'
      FieldName = 'MONTO_03'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object ppbdepdetalleppField20: TppField
      FieldAlias = 'ANOMES_04'
      FieldName = 'ANOMES_04'
      FieldLength = 7
      DisplayWidth = 7
      Position = 19
    end
    object ppbdepdetalleppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'MONTO_04'
      FieldName = 'MONTO_04'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 20
    end
    object ppbdepdetalleppField22: TppField
      FieldAlias = 'ANOMES_05'
      FieldName = 'ANOMES_05'
      FieldLength = 7
      DisplayWidth = 7
      Position = 21
    end
    object ppbdepdetalleppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'MONTO_05'
      FieldName = 'MONTO_05'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 22
    end
    object ppbdepdetalleppField24: TppField
      FieldAlias = 'ANOMES_06'
      FieldName = 'ANOMES_06'
      FieldLength = 7
      DisplayWidth = 7
      Position = 23
    end
    object ppbdepdetalleppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'MONTO_06'
      FieldName = 'MONTO_06'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 24
    end
    object ppbdepdetalleppField26: TppField
      FieldAlias = 'ANOMES_07'
      FieldName = 'ANOMES_07'
      FieldLength = 7
      DisplayWidth = 7
      Position = 25
    end
    object ppbdepdetalleppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'MONTO_07'
      FieldName = 'MONTO_07'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 26
    end
    object ppbdepdetalleppField28: TppField
      FieldAlias = 'ANOMES_08'
      FieldName = 'ANOMES_08'
      FieldLength = 7
      DisplayWidth = 7
      Position = 27
    end
    object ppbdepdetalleppField29: TppField
      Alignment = taRightJustify
      FieldAlias = 'MONTO_08'
      FieldName = 'MONTO_08'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 28
    end
    object ppbdepdetalleppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'MONTOT'
      FieldName = 'MONTOT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 29
    end
  end
  object pprdetnoapo01: TppReport
    AutoStop = False
    DataPipeline = ppbdepdetalle01
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Documents and Settings\irevilla\Escritorio\REP3.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 10
    Top = 413
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppbdepdetalle01'
    object ppHeaderBand6: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 42333
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape12'
        mmHeight = 7673
        mmLeft = 33602
        mmTop = 34660
        mmWidth = 18786
        BandType = 0
      end
      object pplTitulodet0101: TppLabel
        UserName = 'ltitulo03'
        Caption = 'DETALLE DE APORTES FALTANTES POR ASOCIADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 40809
        mmTop = 9790
        mmWidth = 89832
        BandType = 0
      end
      object ppLabel156: TppLabel
        UserName = 'Label5'
        Caption = 'Derrama Magisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 4233
        mmTop = 0
        mmWidth = 33338
        BandType = 0
      end
      object ppLabel163: TppLabel
        UserName = 'Label8'
        Caption = 'Equipo de Cobranzas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 4233
        mmTop = 3704
        mmWidth = 33073
        BandType = 0
      end
      object ppLabel164: TppLabel
        UserName = 'Label9'
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 156104
        mmTop = 0
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel165: TppLabel
        UserName = 'Label10'
        Caption = 'P'#225'gina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 156104
        mmTop = 7408
        mmWidth = 10583
        BandType = 0
      end
      object ppSystemVariable16: TppSystemVariable
        UserName = 'SystemVariable3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 170657
        mmTop = 0
        mmWidth = 14139
        BandType = 0
      end
      object ppSystemVariable17: TppSystemVariable
        UserName = 'SystemVariable4'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 170657
        mmTop = 7408
        mmWidth = 3440
        BandType = 0
      end
      object ppltitulodet0102: TppLabel
        UserName = 'lTitulo04'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 61913
        mmTop = 14288
        mmWidth = 47625
        BandType = 0
      end
      object ppLabel167: TppLabel
        UserName = 'Label4'
        Caption = 'Unidad de Proceso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 4233
        mmTop = 23283
        mmWidth = 29369
        BandType = 0
      end
      object ppLabel168: TppLabel
        UserName = 'Label17'
        Caption = 'Unidad de Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 4233
        mmTop = 26988
        mmWidth = 28310
        BandType = 0
      end
      object ppluniprodes01: TppLabel
        UserName = 'lupronom1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 37571
        mmTop = 23283
        mmWidth = 55563
        BandType = 0
      end
      object pplunipagdes01: TppLabel
        UserName = 'lupagonom1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 37571
        mmTop = 26988
        mmWidth = 55563
        BandType = 0
      end
      object ppLabel171: TppLabel
        UserName = 'Label22'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 35454
        mmTop = 23283
        mmWidth = 1058
        BandType = 0
      end
      object ppLabel172: TppLabel
        UserName = 'Label23'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 35454
        mmTop = 26988
        mmWidth = 1058
        BandType = 0
      end
      object ppShape33: TppShape
        UserName = 'Shape9'
        mmHeight = 7673
        mmLeft = 52123
        mmTop = 34660
        mmWidth = 79375
        BandType = 0
      end
      object ppShape34: TppShape
        UserName = 'Shape11'
        mmHeight = 7673
        mmLeft = 14552
        mmTop = 34660
        mmWidth = 19314
        BandType = 0
      end
      object ppLabel176: TppLabel
        UserName = 'Label32'
        Caption = 'DNI del'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 34131
        mmTop = 35190
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel177: TppLabel
        UserName = 'Label33'
        Caption = 'modular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 15081
        mmTop = 38629
        mmWidth = 10848
        BandType = 0
      end
      object ppLabel178: TppLabel
        UserName = 'Label34'
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 15081
        mmTop = 35190
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel179: TppLabel
        UserName = 'Label35'
        Caption = 'asociado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 34131
        mmTop = 38629
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel180: TppLabel
        UserName = 'Label36'
        Caption = 'Apellidos y nombre(s)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 52652
        mmTop = 35190
        mmWidth = 29104
        BandType = 0
      end
      object ppLabel181: TppLabel
        UserName = 'Label37'
        Caption = 'del asociado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 52652
        mmTop = 38629
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel182: TppLabel
        UserName = 'Label43'
        Caption = 'Hora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 156104
        mmTop = 3704
        mmWidth = 7938
        BandType = 0
      end
      object ppSystemVariable18: TppSystemVariable
        UserName = 'SystemVariable6'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 170657
        mmTop = 3704
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel183: TppLabel
        UserName = 'Label49'
        Caption = 'Departamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 4233
        mmTop = 19579
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel184: TppLabel
        UserName = 'Label50'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 35454
        mmTop = 19579
        mmWidth = 1058
        BandType = 0
      end
      object ppldepdes01: TppLabel
        UserName = 'ldptonom'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 37571
        mmTop = 19579
        mmWidth = 55563
        BandType = 0
      end
      object ppShape35: TppShape
        UserName = 'Shape15'
        mmHeight = 7673
        mmLeft = 4233
        mmTop = 34660
        mmWidth = 10584
        BandType = 0
      end
      object ppLabel186: TppLabel
        UserName = 'Label1'
        Caption = 'UGEL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 4763
        mmTop = 35190
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel187: TppLabel
        UserName = 'Label83'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 168275
        mmTop = 0
        mmWidth = 974
        BandType = 0
      end
      object ppLabel188: TppLabel
        UserName = 'Label90'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 168275
        mmTop = 3704
        mmWidth = 1058
        BandType = 0
      end
      object ppLabel189: TppLabel
        UserName = 'Label901'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 168275
        mmTop = 7408
        mmWidth = 1058
        BandType = 0
      end
      object ppLabel195: TppLabel
        OnPrint = ppLabel195Print
        UserName = 'Label195'
        Caption = 'UGEL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 4233
        mmTop = 30692
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel196: TppLabel
        UserName = 'Label196'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 35454
        mmTop = 30956
        mmWidth = 1058
        BandType = 0
      end
      object pplunigesdes01: TppLabel
        UserName = 'lunigesdes01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 37571
        mmTop = 30692
        mmWidth = 55584
        BandType = 0
      end
    end
    object ppDetailBand6: TppDetailBand
      BeforePrint = ppDetailBand6BeforePrint
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText_01: TppDBText
        UserName = 'DBText_01'
        DataField = 'ANOMES_01'
        DataPipeline = ppbdepdetalle01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        Transparent = True
        DataPipelineName = 'ppbdepdetalle01'
        mmHeight = 3175
        mmLeft = 4233
        mmTop = 0
        mmWidth = 11113
        BandType = 4
      end
      object ppDBText_M01: TppDBText
        UserName = 'DBText1'
        DataField = 'MONTO_01'
        DataPipeline = ppbdepdetalle01
        DisplayFormat = '###,##.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppbdepdetalle01'
        mmHeight = 3175
        mmLeft = 17463
        mmTop = 0
        mmWidth = 8202
        BandType = 4
      end
      object ppLabel_I01: TppLabel
        UserName = 'Label_I01'
        Caption = '='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3302
        mmLeft = 15579
        mmTop = 0
        mmWidth = 1651
        BandType = 4
      end
      object ppLabel_C02: TppLabel
        OnPrint = ppLabel_C02Print
        UserName = 'Label_C02'
        Caption = ','
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3302
        mmLeft = 26189
        mmTop = 0
        mmWidth = 804
        BandType = 4
      end
      object ppDBText_02: TppDBText
        UserName = 'DBText_02'
        DataField = 'ANOMES_02'
        DataPipeline = ppbdepdetalle01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        Transparent = True
        DataPipelineName = 'ppbdepdetalle01'
        mmHeight = 3175
        mmLeft = 27517
        mmTop = 0
        mmWidth = 11113
        BandType = 4
      end
      object ppDBText_M02: TppDBText
        UserName = 'DBText2'
        DataField = 'MONTO_02'
        DataPipeline = ppbdepdetalle01
        DisplayFormat = '###,##.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppbdepdetalle01'
        mmHeight = 3175
        mmLeft = 40746
        mmTop = 0
        mmWidth = 8202
        BandType = 4
      end
      object ppLabel_I02: TppLabel
        UserName = 'Label_I02'
        Caption = '='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3302
        mmLeft = 38863
        mmTop = 0
        mmWidth = 1651
        BandType = 4
      end
      object ppLabel_C03: TppLabel
        OnPrint = ppLabel_C03Print
        UserName = 'Label_C03'
        Caption = ','
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3302
        mmLeft = 49472
        mmTop = 0
        mmWidth = 804
        BandType = 4
      end
      object ppDBText_03: TppDBText
        UserName = 'DBText3'
        DataField = 'ANOMES_03'
        DataPipeline = ppbdepdetalle01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        Transparent = True
        DataPipelineName = 'ppbdepdetalle01'
        mmHeight = 3175
        mmLeft = 50800
        mmTop = 0
        mmWidth = 11113
        BandType = 4
      end
      object ppDBText_M03: TppDBText
        UserName = 'DBText_M03'
        DataField = 'MONTO_03'
        DataPipeline = ppbdepdetalle01
        DisplayFormat = '###,##.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppbdepdetalle01'
        mmHeight = 3175
        mmLeft = 64029
        mmTop = 0
        mmWidth = 8202
        BandType = 4
      end
      object ppLabel_I03: TppLabel
        UserName = 'Label6'
        Caption = '='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3302
        mmLeft = 62146
        mmTop = 0
        mmWidth = 1651
        BandType = 4
      end
      object ppLabel_C04: TppLabel
        OnPrint = ppLabel_C04Print
        UserName = 'Label_C04'
        Caption = ','
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3302
        mmLeft = 72756
        mmTop = 0
        mmWidth = 804
        BandType = 4
      end
      object ppDBText_04: TppDBText
        UserName = 'DBText_04'
        DataField = 'ANOMES_04'
        DataPipeline = ppbdepdetalle01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        Transparent = True
        DataPipelineName = 'ppbdepdetalle01'
        mmHeight = 3175
        mmLeft = 74083
        mmTop = 0
        mmWidth = 11113
        BandType = 4
      end
      object ppDBText_M04: TppDBText
        UserName = 'DBText_M04'
        DataField = 'MONTO_04'
        DataPipeline = ppbdepdetalle01
        DisplayFormat = '###,##.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppbdepdetalle01'
        mmHeight = 3175
        mmLeft = 87313
        mmTop = 0
        mmWidth = 8202
        BandType = 4
      end
      object ppLabel_I04: TppLabel
        UserName = 'Label2'
        Caption = '='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3302
        mmLeft = 85430
        mmTop = 0
        mmWidth = 1651
        BandType = 4
      end
      object ppLabel_C05: TppLabel
        OnPrint = ppLabel_C05Print
        UserName = 'Label2001'
        Caption = ','
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3302
        mmLeft = 96039
        mmTop = 0
        mmWidth = 804
        BandType = 4
      end
      object ppDBText_05: TppDBText
        UserName = 'DBText_05'
        DataField = 'ANOMES_05'
        DataPipeline = ppbdepdetalle01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        Transparent = True
        DataPipelineName = 'ppbdepdetalle01'
        mmHeight = 3175
        mmLeft = 97367
        mmTop = 0
        mmWidth = 11113
        BandType = 4
      end
      object ppDBText_M05: TppDBText
        UserName = 'DBText_M05'
        DataField = 'MONTO_05'
        DataPipeline = ppbdepdetalle01
        DisplayFormat = '###,##.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppbdepdetalle01'
        mmHeight = 3175
        mmLeft = 110596
        mmTop = 0
        mmWidth = 8202
        BandType = 4
      end
      object ppLabel_I05: TppLabel
        UserName = 'Label7'
        Caption = '='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3302
        mmLeft = 108713
        mmTop = 0
        mmWidth = 1651
        BandType = 4
      end
      object ppLabel_C06: TppLabel
        OnPrint = ppLabel_C06Print
        UserName = 'Label_C06'
        Caption = ','
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3302
        mmLeft = 119322
        mmTop = 0
        mmWidth = 804
        BandType = 4
      end
      object ppDBText_06: TppDBText
        UserName = 'DBText_06'
        DataField = 'ANOMES_06'
        DataPipeline = ppbdepdetalle01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        Transparent = True
        DataPipelineName = 'ppbdepdetalle01'
        mmHeight = 3175
        mmLeft = 120650
        mmTop = 0
        mmWidth = 11113
        BandType = 4
      end
      object ppDBText_M06: TppDBText
        UserName = 'DBText_M06'
        DataField = 'MONTO_06'
        DataPipeline = ppbdepdetalle01
        DisplayFormat = '###,##.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppbdepdetalle01'
        mmHeight = 3175
        mmLeft = 133879
        mmTop = 0
        mmWidth = 8202
        BandType = 4
      end
      object ppLabel_I06: TppLabel
        UserName = 'Label_I06'
        Caption = '='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3302
        mmLeft = 131996
        mmTop = 0
        mmWidth = 1651
        BandType = 4
      end
      object ppLabel_C07: TppLabel
        OnPrint = ppLabel_C07Print
        UserName = 'Label_C07'
        Caption = ','
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3302
        mmLeft = 142606
        mmTop = 0
        mmWidth = 804
        BandType = 4
      end
      object ppDBText_07: TppDBText
        UserName = 'DBText_07'
        DataField = 'ANOMES_07'
        DataPipeline = ppbdepdetalle01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        Transparent = True
        DataPipelineName = 'ppbdepdetalle01'
        mmHeight = 3175
        mmLeft = 143934
        mmTop = 0
        mmWidth = 11113
        BandType = 4
      end
      object ppDBText_M07: TppDBText
        UserName = 'DBText_M07'
        DataField = 'MONTO_07'
        DataPipeline = ppbdepdetalle01
        DisplayFormat = '###,##.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppbdepdetalle01'
        mmHeight = 3175
        mmLeft = 157163
        mmTop = 0
        mmWidth = 8202
        BandType = 4
      end
      object ppLabel_I07: TppLabel
        UserName = 'Label_I07'
        Caption = '='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3302
        mmLeft = 155280
        mmTop = 0
        mmWidth = 1651
        BandType = 4
      end
      object ppLabel_C08: TppLabel
        OnPrint = ppLabel_C08Print
        UserName = 'Label2002'
        Caption = ','
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3302
        mmLeft = 165889
        mmTop = 0
        mmWidth = 804
        BandType = 4
      end
      object ppDBText_08: TppDBText
        UserName = 'DBText_08'
        DataField = 'ANOMES_08'
        DataPipeline = ppbdepdetalle01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        Transparent = True
        DataPipelineName = 'ppbdepdetalle01'
        mmHeight = 3175
        mmLeft = 167217
        mmTop = 0
        mmWidth = 11113
        BandType = 4
      end
      object ppDBText_M08: TppDBText
        UserName = 'DBText_M08'
        DataField = 'MONTO_08'
        DataPipeline = ppbdepdetalle01
        DisplayFormat = '###,##.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppbdepdetalle01'
        mmHeight = 3175
        mmLeft = 180446
        mmTop = 0
        mmWidth = 8202
        BandType = 4
      end
      object ppLabel_I08: TppLabel
        UserName = 'Label_I08'
        Caption = '='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3302
        mmLeft = 178563
        mmTop = 0
        mmWidth = 1651
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'MONTOT'
        DataPipeline = ppbdepdetalle01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'ppbdepdetalle01'
        mmHeight = 3969
        mmLeft = 192882
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppSummaryBand6: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 8202
      mmPrintPosition = 0
      object pplimpreso01: TppLabel
        UserName = 'limpresopor1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 4233
        mmTop = 5027
        mmWidth = 84667
        BandType = 7
      end
      object ppLabel193: TppLabel
        UserName = 'Label21'
        Caption = 'TOTAL GENERAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 4233
        mmTop = 0
        mmWidth = 24606
        BandType = 7
      end
      object ppLabel194: TppLabel
        UserName = 'Label155'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 32279
        mmTop = 0
        mmWidth = 1058
        BandType = 7
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 4233
        mmTop = 4233
        mmWidth = 50536
        BandType = 7
      end
      object ppDBCalc10: TppDBCalc
        UserName = 'DBCalc10'
        DataField = 'MONTOT'
        DataPipeline = ppbdepdetalle01
        DisplayFormat = '###,##.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdepdetalle01'
        mmHeight = 3440
        mmLeft = 35719
        mmTop = 0
        mmWidth = 19578
        BandType = 7
      end
    end
    object ppGroup9: TppGroup
      BreakName = 'CANTIDAD'
      DataPipeline = ppbdepdetalle01
      OutlineSettings.CreateNode = True
      ReprintOnSubsequentPage = False
      UserName = 'Group9'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppbdepdetalle01'
      object ppGroupHeaderBand9: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 4233
        mmPrintPosition = 0
        object ppDBText6: TppDBText
          UserName = 'DBText6'
          DataField = 'CANTIDAD'
          DataPipeline = ppbdepdetalle01
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          Visible = False
          DataPipelineName = 'ppbdepdetalle01'
          mmHeight = 3175
          mmLeft = 66675
          mmTop = 265
          mmWidth = 10583
          BandType = 3
          GroupNo = 0
        end
        object ppLabel173: TppLabel
          OnPrint = ppLabel173Print
          UserName = 'Label173'
          Caption = 'ASOCIADOS CON 999 APORTES FALTANTES'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 4233
          mmTop = 0
          mmWidth = 61128
          BandType = 3
          GroupNo = 0
        end
        object ppLine16: TppLine
          UserName = 'Line16'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 4233
          mmTop = 3969
          mmWidth = 61128
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand9: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 4498
        mmPrintPosition = 0
        object ppLabel190: TppLabel
          UserName = 'Label190'
          Caption = 'TOTAL CANTIDAD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 4233
          mmTop = 265
          mmWidth = 25929
          BandType = 5
          GroupNo = 0
        end
        object ppLabel191: TppLabel
          UserName = 'Label191'
          Caption = ':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 32279
          mmTop = 265
          mmWidth = 1058
          BandType = 5
          GroupNo = 0
        end
        object ppLine18: TppLine
          UserName = 'Line18'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 4233
          mmTop = 4233
          mmWidth = 50536
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc6: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'MONTOT'
          DataPipeline = ppbdepdetalle01
          DisplayFormat = '###,##.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup9
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbdepdetalle01'
          mmHeight = 3440
          mmLeft = 35719
          mmTop = 265
          mmWidth = 19578
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup10: TppGroup
      BreakName = 'ASOAPENOMDNI'
      DataPipeline = ppbdepdetalle01
      OutlineSettings.CreateNode = True
      UserName = 'Group10'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppbdepdetalle01'
      object ppGroupHeaderBand10: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 3704
        mmPrintPosition = 0
        object ppDBText8: TppDBText
          UserName = 'DBText4'
          DataField = 'ASOAPENOMDNI'
          DataPipeline = ppbdepdetalle01
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppbdepdetalle01'
          mmHeight = 3175
          mmLeft = 52652
          mmTop = 0
          mmWidth = 78317
          BandType = 3
          GroupNo = 1
        end
        object ppDBText11: TppDBText
          UserName = 'DBText5'
          DataField = 'USEID'
          DataPipeline = ppbdepdetalle01
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppbdepdetalle01'
          mmHeight = 3429
          mmLeft = 4763
          mmTop = 0
          mmWidth = 9525
          BandType = 3
          GroupNo = 1
        end
        object ppDBText12: TppDBText
          UserName = 'DBText7'
          DataField = 'ASOCODMOD'
          DataPipeline = ppbdepdetalle01
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppbdepdetalle01'
          mmHeight = 3429
          mmLeft = 15081
          mmTop = 0
          mmWidth = 18256
          BandType = 3
          GroupNo = 1
        end
        object ppDBText15: TppDBText
          UserName = 'DBText15'
          DataField = 'ASODNI'
          DataPipeline = ppbdepdetalle01
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppbdepdetalle01'
          mmHeight = 3429
          mmLeft = 34131
          mmTop = 0
          mmWidth = 17727
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand10: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 4233
        mmPrintPosition = 0
        object ppLabel174: TppLabel
          UserName = 'Label174'
          Caption = 'TOTAL ASOCIADO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3386
          mmLeft = 4233
          mmTop = 0
          mmWidth = 26458
          BandType = 5
          GroupNo = 1
        end
        object ppLabel175: TppLabel
          UserName = 'Label175'
          Caption = ':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 32279
          mmTop = 0
          mmWidth = 1058
          BandType = 5
          GroupNo = 1
        end
        object ppLine17: TppLine
          UserName = 'Line17'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 4233
          mmTop = 3967
          mmWidth = 50536
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc5: TppDBCalc
          UserName = 'DBCalc5'
          DataField = 'MONTOT'
          DataPipeline = ppbdepdetalle01
          DisplayFormat = '###,##.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup10
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbdepdetalle01'
          mmHeight = 3440
          mmLeft = 35719
          mmTop = 0
          mmWidth = 19578
          BandType = 5
          GroupNo = 1
        end
      end
    end
  end
  object ppbdepdetalle02: TppBDEPipeline
    DataSource = dsdetalle
    UserName = 'bdepdetalle02'
    Left = 57
    Top = 420
    object ppField1: TppField
      FieldAlias = 'UPRONOM'
      FieldName = 'UPRONOM'
      FieldLength = 30
      DisplayWidth = 30
      Position = 0
    end
    object ppField2: TppField
      FieldAlias = 'UPAGONOM'
      FieldName = 'UPAGONOM'
      FieldLength = 20
      DisplayWidth = 20
      Position = 1
    end
    object ppField3: TppField
      FieldAlias = 'ASOAPENOMDNI'
      FieldName = 'ASOAPENOMDNI'
      FieldLength = 60
      DisplayWidth = 60
      Position = 2
    end
    object ppField4: TppField
      FieldAlias = 'ASODNI'
      FieldName = 'ASODNI'
      FieldLength = 20
      DisplayWidth = 20
      Position = 3
    end
    object ppField5: TppField
      FieldAlias = 'ASOCODMOD'
      FieldName = 'ASOCODMOD'
      FieldLength = 10
      DisplayWidth = 10
      Position = 4
    end
    object ppField6: TppField
      FieldAlias = 'ASOID'
      FieldName = 'ASOID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 5
    end
    object ppField7: TppField
      FieldAlias = 'USENOM'
      FieldName = 'USENOM'
      FieldLength = 25
      DisplayWidth = 25
      Position = 6
    end
    object ppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'CANTIDAD'
      FieldName = 'CANTIDAD'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object ppField9: TppField
      FieldAlias = 'ASOCODPAGO'
      FieldName = 'ASOCODPAGO'
      FieldLength = 12
      DisplayWidth = 12
      Position = 8
    end
    object ppField10: TppField
      FieldAlias = 'ULTAPO'
      FieldName = 'ULTAPO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 9
    end
    object ppField11: TppField
      FieldAlias = 'USEID'
      FieldName = 'USEID'
      FieldLength = 20
      DisplayWidth = 20
      Position = 10
    end
    object ppField12: TppField
      FieldAlias = 'VARIASCUOT'
      FieldName = 'VARIASCUOT'
      FieldLength = 20
      DisplayWidth = 20
      Position = 11
    end
    object ppField13: TppField
      FieldAlias = 'PERFAL'
      FieldName = 'PERFAL'
      FieldLength = 7
      DisplayWidth = 7
      Position = 12
    end
    object ppField14: TppField
      FieldAlias = 'ANOMES_01'
      FieldName = 'ANOMES_01'
      FieldLength = 7
      DisplayWidth = 7
      Position = 13
    end
    object ppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'MONTO_01'
      FieldName = 'MONTO_01'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 14
    end
    object ppField16: TppField
      FieldAlias = 'ANOMES_02'
      FieldName = 'ANOMES_02'
      FieldLength = 7
      DisplayWidth = 7
      Position = 15
    end
    object ppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'MONTO_02'
      FieldName = 'MONTO_02'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 16
    end
    object ppField18: TppField
      FieldAlias = 'ANOMES_03'
      FieldName = 'ANOMES_03'
      FieldLength = 7
      DisplayWidth = 7
      Position = 17
    end
    object ppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'MONTO_03'
      FieldName = 'MONTO_03'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object ppField20: TppField
      FieldAlias = 'ANOMES_04'
      FieldName = 'ANOMES_04'
      FieldLength = 7
      DisplayWidth = 7
      Position = 19
    end
    object ppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'MONTO_04'
      FieldName = 'MONTO_04'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 20
    end
    object ppField22: TppField
      FieldAlias = 'ANOMES_05'
      FieldName = 'ANOMES_05'
      FieldLength = 7
      DisplayWidth = 7
      Position = 21
    end
    object ppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'MONTO_05'
      FieldName = 'MONTO_05'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 22
    end
    object ppField24: TppField
      FieldAlias = 'ANOMES_06'
      FieldName = 'ANOMES_06'
      FieldLength = 7
      DisplayWidth = 7
      Position = 23
    end
    object ppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'MONTO_06'
      FieldName = 'MONTO_06'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 24
    end
    object ppField26: TppField
      FieldAlias = 'ANOMES_07'
      FieldName = 'ANOMES_07'
      FieldLength = 7
      DisplayWidth = 7
      Position = 25
    end
    object ppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'MONTO_07'
      FieldName = 'MONTO_07'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 26
    end
    object ppField28: TppField
      FieldAlias = 'ANOMES_08'
      FieldName = 'ANOMES_08'
      FieldLength = 7
      DisplayWidth = 7
      Position = 27
    end
    object ppField29: TppField
      Alignment = taRightJustify
      FieldAlias = 'MONTO_08'
      FieldName = 'MONTO_08'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 28
    end
    object ppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'MONTOT'
      FieldName = 'MONTOT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 29
    end
  end
  object pprdetnoapo02: TppReport
    AutoStop = False
    DataPipeline = ppbdepdetalle02
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Documents and Settings\irevilla\Escritorio\REP3.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 49
    Top = 412
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppbdepdetalle02'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 38629
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape12'
        mmHeight = 7673
        mmLeft = 33602
        mmTop = 30956
        mmWidth = 18786
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'ltitulo03'
        Caption = 'DETALLE DE APORTES FALTANTES POR ASOCIADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 40809
        mmTop = 9790
        mmWidth = 89832
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label5'
        Caption = 'Derrama Magisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 4233
        mmTop = 0
        mmWidth = 33338
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label8'
        Caption = 'Equipo de Cobranzas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 4233
        mmTop = 3704
        mmWidth = 33073
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label9'
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 156104
        mmTop = 0
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label10'
        Caption = 'P'#225'gina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 156104
        mmTop = 7408
        mmWidth = 10583
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 170657
        mmTop = 0
        mmWidth = 14139
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 170657
        mmTop = 7408
        mmWidth = 3440
        BandType = 0
      end
      object ppltitulodet0202: TppLabel
        UserName = 'lTitulo04'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 61913
        mmTop = 14288
        mmWidth = 47625
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label4'
        Caption = 'Unidad de Proceso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 4233
        mmTop = 23283
        mmWidth = 29369
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label17'
        Caption = 'Unidad de Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 4233
        mmTop = 26988
        mmWidth = 28310
        BandType = 0
      end
      object ppluniprodes02: TppLabel
        UserName = 'lupronom1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 37571
        mmTop = 23283
        mmWidth = 55563
        BandType = 0
      end
      object pplunipagdes02: TppLabel
        UserName = 'lupagonom1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 37571
        mmTop = 26988
        mmWidth = 55563
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label22'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 35454
        mmTop = 23283
        mmWidth = 1058
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label23'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 35454
        mmTop = 26988
        mmWidth = 1058
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape9'
        mmHeight = 7673
        mmLeft = 52123
        mmTop = 30956
        mmWidth = 79375
        BandType = 0
      end
      object ppShape9: TppShape
        UserName = 'Shape11'
        mmHeight = 7673
        mmLeft = 14552
        mmTop = 30956
        mmWidth = 19314
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label32'
        Caption = 'DNI del'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 34131
        mmTop = 31485
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label33'
        Caption = 'modular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 15081
        mmTop = 34925
        mmWidth = 10848
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label34'
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 15081
        mmTop = 31485
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label35'
        Caption = 'asociado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 34131
        mmTop = 34925
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label36'
        Caption = 'Apellidos y nombre(s)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 52652
        mmTop = 31485
        mmWidth = 29104
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label37'
        Caption = 'del asociado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 52652
        mmTop = 34925
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label43'
        Caption = 'Hora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 156104
        mmTop = 3704
        mmWidth = 7938
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable6'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 170657
        mmTop = 3704
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label49'
        Caption = 'Departamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 4233
        mmTop = 19579
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label50'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 35454
        mmTop = 19579
        mmWidth = 1058
        BandType = 0
      end
      object ppldepdes02: TppLabel
        UserName = 'ldptonom'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 37571
        mmTop = 19579
        mmWidth = 55563
        BandType = 0
      end
      object ppShape11: TppShape
        UserName = 'Shape15'
        mmHeight = 7673
        mmLeft = 4233
        mmTop = 30956
        mmWidth = 10584
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label1'
        Caption = 'UGEL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 4763
        mmTop = 31485
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label83'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 168275
        mmTop = 0
        mmWidth = 974
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label90'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 168275
        mmTop = 3704
        mmWidth = 1058
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label901'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 168275
        mmTop = 7408
        mmWidth = 1058
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      BeforePrint = ppDetailBand2BeforePrint
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppdbtAnoMesUgel01: TppDBText
        UserName = 'DBText_01'
        DataField = 'ANOMES_01'
        DataPipeline = ppbdepdetalle02
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        Transparent = True
        DataPipelineName = 'ppbdepdetalle02'
        mmHeight = 3175
        mmLeft = 4233
        mmTop = 0
        mmWidth = 11113
        BandType = 4
      end
      object ppdbtMontoUgel01: TppDBText
        UserName = 'DBText1'
        DataField = 'MONTO_01'
        DataPipeline = ppbdepdetalle02
        DisplayFormat = '###,##.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppbdepdetalle02'
        mmHeight = 3175
        mmLeft = 17463
        mmTop = 0
        mmWidth = 8202
        BandType = 4
      end
      object pplIgualUgel01: TppLabel
        UserName = 'Label_I01'
        Caption = '='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3302
        mmLeft = 15579
        mmTop = 0
        mmWidth = 1651
        BandType = 4
      end
      object pplComaUgel02: TppLabel
        OnPrint = pplComaUgel02Print
        UserName = 'Label_C02'
        Caption = ','
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3302
        mmLeft = 26189
        mmTop = 0
        mmWidth = 804
        BandType = 4
      end
      object ppdbtAnoMesUgel02: TppDBText
        UserName = 'DBText_02'
        DataField = 'ANOMES_02'
        DataPipeline = ppbdepdetalle02
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        Transparent = True
        DataPipelineName = 'ppbdepdetalle02'
        mmHeight = 3175
        mmLeft = 27517
        mmTop = 0
        mmWidth = 11113
        BandType = 4
      end
      object ppdbtMontoUgel02: TppDBText
        UserName = 'DBText2'
        DataField = 'MONTO_02'
        DataPipeline = ppbdepdetalle02
        DisplayFormat = '###,##.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppbdepdetalle02'
        mmHeight = 3175
        mmLeft = 40746
        mmTop = 0
        mmWidth = 8202
        BandType = 4
      end
      object pplIgualUgel02: TppLabel
        UserName = 'Label_I02'
        Caption = '='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3302
        mmLeft = 38863
        mmTop = 0
        mmWidth = 1651
        BandType = 4
      end
      object pplComaUgel03: TppLabel
        OnPrint = pplComaUgel03Print
        UserName = 'Label_C03'
        Caption = ','
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3302
        mmLeft = 49472
        mmTop = 0
        mmWidth = 804
        BandType = 4
      end
      object ppdbtAnoMesUgel03: TppDBText
        UserName = 'DBText3'
        DataField = 'ANOMES_03'
        DataPipeline = ppbdepdetalle02
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        Transparent = True
        DataPipelineName = 'ppbdepdetalle02'
        mmHeight = 3175
        mmLeft = 50800
        mmTop = 0
        mmWidth = 11113
        BandType = 4
      end
      object ppdbtMontoUgel03: TppDBText
        UserName = 'DBText_M03'
        DataField = 'MONTO_03'
        DataPipeline = ppbdepdetalle02
        DisplayFormat = '###,##.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppbdepdetalle02'
        mmHeight = 3175
        mmLeft = 64029
        mmTop = 0
        mmWidth = 8202
        BandType = 4
      end
      object pplIgualUgel03: TppLabel
        UserName = 'Label6'
        Caption = '='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3302
        mmLeft = 62146
        mmTop = 0
        mmWidth = 1651
        BandType = 4
      end
      object pplComaUgel04: TppLabel
        OnPrint = pplComaUgel04Print
        UserName = 'Label_C04'
        Caption = ','
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3302
        mmLeft = 72756
        mmTop = 0
        mmWidth = 804
        BandType = 4
      end
      object ppdbtAnoMesUgel04: TppDBText
        UserName = 'DBText_04'
        DataField = 'ANOMES_04'
        DataPipeline = ppbdepdetalle02
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        Transparent = True
        DataPipelineName = 'ppbdepdetalle02'
        mmHeight = 3175
        mmLeft = 74083
        mmTop = 0
        mmWidth = 11113
        BandType = 4
      end
      object ppdbtMontoUgel04: TppDBText
        UserName = 'DBText_M04'
        DataField = 'MONTO_04'
        DataPipeline = ppbdepdetalle02
        DisplayFormat = '###,##.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppbdepdetalle02'
        mmHeight = 3175
        mmLeft = 87313
        mmTop = 0
        mmWidth = 8202
        BandType = 4
      end
      object pplIgualUgel04: TppLabel
        UserName = 'Label2'
        Caption = '='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3302
        mmLeft = 85430
        mmTop = 0
        mmWidth = 1651
        BandType = 4
      end
      object pplComaUgel05: TppLabel
        OnPrint = pplComaUgel05Print
        UserName = 'Label2001'
        Caption = ','
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3302
        mmLeft = 96039
        mmTop = 0
        mmWidth = 804
        BandType = 4
      end
      object ppdbtAnoMesUgel05: TppDBText
        UserName = 'DBText_05'
        DataField = 'ANOMES_05'
        DataPipeline = ppbdepdetalle02
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        Transparent = True
        DataPipelineName = 'ppbdepdetalle02'
        mmHeight = 3175
        mmLeft = 97367
        mmTop = 0
        mmWidth = 11113
        BandType = 4
      end
      object ppdbtMontoUgel05: TppDBText
        UserName = 'DBText_M05'
        DataField = 'MONTO_05'
        DataPipeline = ppbdepdetalle02
        DisplayFormat = '###,##.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppbdepdetalle02'
        mmHeight = 3175
        mmLeft = 110596
        mmTop = 0
        mmWidth = 8202
        BandType = 4
      end
      object pplIgualUgel05: TppLabel
        UserName = 'Label7'
        Caption = '='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3302
        mmLeft = 108713
        mmTop = 0
        mmWidth = 1651
        BandType = 4
      end
      object pplComaUgel06: TppLabel
        OnPrint = pplComaUgel06Print
        UserName = 'Label_C06'
        Caption = ','
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3302
        mmLeft = 119322
        mmTop = 0
        mmWidth = 804
        BandType = 4
      end
      object ppdbtAnoMesUgel06: TppDBText
        UserName = 'DBText_06'
        DataField = 'ANOMES_06'
        DataPipeline = ppbdepdetalle02
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        Transparent = True
        DataPipelineName = 'ppbdepdetalle02'
        mmHeight = 3175
        mmLeft = 120650
        mmTop = 0
        mmWidth = 11113
        BandType = 4
      end
      object ppdbtMontoUgel06: TppDBText
        UserName = 'DBText_M06'
        DataField = 'MONTO_06'
        DataPipeline = ppbdepdetalle02
        DisplayFormat = '###,##.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppbdepdetalle02'
        mmHeight = 3175
        mmLeft = 133879
        mmTop = 0
        mmWidth = 8202
        BandType = 4
      end
      object pplIgualUgel06: TppLabel
        UserName = 'Label_I06'
        Caption = '='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3302
        mmLeft = 131996
        mmTop = 0
        mmWidth = 1651
        BandType = 4
      end
      object pplComaUgel07: TppLabel
        OnPrint = pplComaUgel07Print
        UserName = 'Label_C07'
        Caption = ','
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3302
        mmLeft = 142606
        mmTop = 0
        mmWidth = 804
        BandType = 4
      end
      object ppdbtAnoMesUgel07: TppDBText
        UserName = 'DBText_07'
        DataField = 'ANOMES_07'
        DataPipeline = ppbdepdetalle02
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        Transparent = True
        DataPipelineName = 'ppbdepdetalle02'
        mmHeight = 3175
        mmLeft = 143934
        mmTop = 0
        mmWidth = 11113
        BandType = 4
      end
      object ppdbtMontoUgel07: TppDBText
        UserName = 'DBText_M07'
        DataField = 'MONTO_07'
        DataPipeline = ppbdepdetalle02
        DisplayFormat = '###,##.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppbdepdetalle02'
        mmHeight = 3175
        mmLeft = 157163
        mmTop = 0
        mmWidth = 8202
        BandType = 4
      end
      object pplIgualUgel07: TppLabel
        UserName = 'Label_I07'
        Caption = '='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3302
        mmLeft = 155280
        mmTop = 0
        mmWidth = 1651
        BandType = 4
      end
      object pplComaUgel08: TppLabel
        OnPrint = pplComaUgel08Print
        UserName = 'Label2002'
        Caption = ','
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3302
        mmLeft = 165889
        mmTop = 0
        mmWidth = 804
        BandType = 4
      end
      object ppdbtAnoMesUgel08: TppDBText
        UserName = 'DBText_08'
        DataField = 'ANOMES_08'
        DataPipeline = ppbdepdetalle02
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        Transparent = True
        DataPipelineName = 'ppbdepdetalle02'
        mmHeight = 3175
        mmLeft = 167217
        mmTop = 0
        mmWidth = 11113
        BandType = 4
      end
      object ppdbtMontoUgel08: TppDBText
        UserName = 'DBText_M08'
        DataField = 'MONTO_08'
        DataPipeline = ppbdepdetalle02
        DisplayFormat = '###,##.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppbdepdetalle02'
        mmHeight = 3175
        mmLeft = 180446
        mmTop = 0
        mmWidth = 8202
        BandType = 4
      end
      object pplIgualUgel08: TppLabel
        UserName = 'Label_I08'
        Caption = '='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3302
        mmLeft = 178563
        mmTop = 0
        mmWidth = 1651
        BandType = 4
      end
      object ppDBText43: TppDBText
        UserName = 'DBText16'
        DataField = 'MONTOT'
        DataPipeline = ppbdepdetalle02
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'ppbdepdetalle02'
        mmHeight = 3969
        mmLeft = 193675
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 8202
      mmPrintPosition = 0
      object pplimpresopor02: TppLabel
        UserName = 'limpresopor1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 4233
        mmTop = 5027
        mmWidth = 84667
        BandType = 7
      end
      object ppLabel78: TppLabel
        UserName = 'Label21'
        Caption = 'TOTAL GENERAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 4233
        mmTop = 0
        mmWidth = 24606
        BandType = 7
      end
      object ppLabel79: TppLabel
        UserName = 'Label155'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 32279
        mmTop = 0
        mmWidth = 1058
        BandType = 7
      end
      object ppLine1: TppLine
        UserName = 'Line15'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 4233
        mmTop = 4233
        mmWidth = 50536
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc10'
        DataField = 'MONTOT'
        DataPipeline = ppbdepdetalle02
        DisplayFormat = '###,###,##.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdepdetalle02'
        mmHeight = 3440
        mmLeft = 35719
        mmTop = 0
        mmWidth = 19578
        BandType = 7
      end
    end
    object ppGroup4: TppGroup
      BreakName = 'USEID'
      DataPipeline = ppbdepdetalle02
      KeepTogether = True
      OutlineSettings.CreateNode = True
      ReprintOnSubsequentPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppbdepdetalle02'
      object ppGroupHeaderBand4: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 4233
        mmPrintPosition = 0
        object ppDBText49: TppDBText
          UserName = 'DBText8'
          DataField = 'USENOM'
          DataPipeline = ppbdepdetalle02
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppbdepdetalle02'
          mmHeight = 3429
          mmLeft = 13758
          mmTop = 0
          mmWidth = 49477
          BandType = 3
          GroupNo = 0
        end
        object ppDBText50: TppDBText
          UserName = 'DBText50'
          DataField = 'USEID'
          DataPipeline = ppbdepdetalle02
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppbdepdetalle02'
          mmHeight = 3429
          mmLeft = 4233
          mmTop = 0
          mmWidth = 8467
          BandType = 3
          GroupNo = 0
        end
        object ppLine8: TppLine
          UserName = 'Line1'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 4233
          mmTop = 3967
          mmWidth = 58738
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 4498
        mmPrintPosition = 0
        object ppLabel86: TppLabel
          UserName = 'Label1901'
          Caption = 'TOTAL UGEL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 4233
          mmTop = 265
          mmWidth = 17992
          BandType = 5
          GroupNo = 0
        end
        object ppLabel87: TppLabel
          UserName = 'Label87'
          Caption = ':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 32279
          mmTop = 265
          mmWidth = 1058
          BandType = 5
          GroupNo = 0
        end
        object ppLine9: TppLine
          UserName = 'Line9'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 4233
          mmTop = 4233
          mmWidth = 50536
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc9: TppDBCalc
          UserName = 'DBCalc9'
          DataField = 'MONTOT'
          DataPipeline = ppbdepdetalle02
          DisplayFormat = '###,###,##.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbdepdetalle02'
          mmHeight = 3175
          mmLeft = 35719
          mmTop = 529
          mmWidth = 19578
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'CANTIDAD'
      DataPipeline = ppbdepdetalle02
      OutlineSettings.CreateNode = True
      ReprintOnSubsequentPage = False
      UserName = 'Group9'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppbdepdetalle02'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 4233
        mmPrintPosition = 0
        object ppDBText44: TppDBText
          UserName = 'DBText6'
          DataField = 'CANTIDAD'
          DataPipeline = ppbdepdetalle02
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          Visible = False
          DataPipelineName = 'ppbdepdetalle02'
          mmHeight = 3175
          mmLeft = 66675
          mmTop = 265
          mmWidth = 10583
          BandType = 3
          GroupNo = 0
        end
        object ppLabel80: TppLabel
          OnPrint = ppLabel80Print
          UserName = 'Label173'
          Caption = 'ASOCIADOS CON 999 APORTES FALTANTES'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3386
          mmLeft = 4233
          mmTop = 0
          mmWidth = 61128
          BandType = 3
          GroupNo = 0
        end
        object ppLine2: TppLine
          UserName = 'Line16'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 4233
          mmTop = 3969
          mmWidth = 61128
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 4498
        mmPrintPosition = 0
        object ppLabel81: TppLabel
          UserName = 'Label190'
          Caption = 'TOTAL CANTIDAD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 4233
          mmTop = 265
          mmWidth = 25929
          BandType = 5
          GroupNo = 0
        end
        object ppLabel83: TppLabel
          UserName = 'Label191'
          Caption = ':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 32279
          mmTop = 265
          mmWidth = 1058
          BandType = 5
          GroupNo = 0
        end
        object ppLine6: TppLine
          UserName = 'Line18'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 4233
          mmTop = 4233
          mmWidth = 50536
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc7: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'MONTOT'
          DataPipeline = ppbdepdetalle02
          DisplayFormat = '###,###,##.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbdepdetalle02'
          mmHeight = 3439
          mmLeft = 35719
          mmTop = 265
          mmWidth = 19578
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'ASOAPENOMDNI'
      DataPipeline = ppbdepdetalle02
      OutlineSettings.CreateNode = True
      UserName = 'Group10'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppbdepdetalle02'
      object ppGroupHeaderBand3: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 3704
        mmPrintPosition = 0
        object ppDBText45: TppDBText
          UserName = 'DBText4'
          DataField = 'ASOAPENOMDNI'
          DataPipeline = ppbdepdetalle02
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppbdepdetalle02'
          mmHeight = 3175
          mmLeft = 52652
          mmTop = 0
          mmWidth = 78317
          BandType = 3
          GroupNo = 1
        end
        object ppDBText46: TppDBText
          UserName = 'DBText5'
          DataField = 'USEID'
          DataPipeline = ppbdepdetalle02
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppbdepdetalle02'
          mmHeight = 3429
          mmLeft = 4763
          mmTop = 0
          mmWidth = 9525
          BandType = 3
          GroupNo = 1
        end
        object ppDBText47: TppDBText
          UserName = 'DBText7'
          DataField = 'ASOCODMOD'
          DataPipeline = ppbdepdetalle02
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppbdepdetalle02'
          mmHeight = 3429
          mmLeft = 15081
          mmTop = 0
          mmWidth = 18256
          BandType = 3
          GroupNo = 1
        end
        object ppDBText48: TppDBText
          UserName = 'DBText15'
          DataField = 'ASODNI'
          DataPipeline = ppbdepdetalle02
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppbdepdetalle02'
          mmHeight = 3429
          mmLeft = 34131
          mmTop = 0
          mmWidth = 17727
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 4233
        mmPrintPosition = 0
        object ppLabel84: TppLabel
          UserName = 'Label174'
          Caption = 'TOTAL ASOCIADO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3386
          mmLeft = 4233
          mmTop = 0
          mmWidth = 26458
          BandType = 5
          GroupNo = 1
        end
        object ppLabel85: TppLabel
          UserName = 'Label175'
          Caption = ':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 32279
          mmTop = 0
          mmWidth = 1058
          BandType = 5
          GroupNo = 1
        end
        object ppLine7: TppLine
          UserName = 'Line17'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 4233
          mmTop = 3967
          mmWidth = 50536
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc8: TppDBCalc
          UserName = 'DBCalc5'
          DataField = 'MONTOT'
          DataPipeline = ppbdepdetalle02
          DisplayFormat = '###,###,##.#0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppbdepdetalle02'
          mmHeight = 3440
          mmLeft = 35719
          mmTop = 0
          mmWidth = 19578
          BandType = 5
          GroupNo = 1
        end
      end
    end
  end
end
