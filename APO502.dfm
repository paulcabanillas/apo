object FRepApoNoDesc: TFRepApoNoDesc
  Left = 223
  Top = 242
  Width = 540
  Height = 264
  Caption = 'Aportes'
  Color = 13165023
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlCabecera: TPanel
    Left = 3
    Top = 3
    Width = 519
    Height = 223
    BevelOuter = bvNone
    BorderWidth = 1
    Color = 10207162
    TabOrder = 0
    object TLabel
      Left = 16
      Top = -2
      Width = 227
      Height = 27
      Caption = 'Aportes No Descontados'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object fcShapeBtn2: TfcShapeBtn
      Left = 442
      Top = 188
      Width = 32
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
      Shape = bsRoundRect
      ShowHint = True
      TabOrder = 0
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcShapeBtn2Click
    end
    object fcShapeBtn1: TfcShapeBtn
      Left = 397
      Top = 188
      Width = 32
      Height = 31
      Hint = 'Aceptar '
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
      Shape = bsRoundRect
      ShowHint = True
      TabOrder = 1
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcShapeBtn1Click
    end
    object zzzzz: TPanel
      Left = 8
      Top = 27
      Width = 503
      Height = 156
      BevelOuter = bvNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object TLabel
        Left = 229
        Top = 68
        Width = 49
        Height = 15
        Caption = 'Provincia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 228
        Top = 107
        Width = 23
        Height = 15
        Caption = 'USE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 15
        Top = 68
        Width = 71
        Height = 15
        Caption = 'Departamento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 15
        Top = 107
        Width = 94
        Height = 15
        Caption = 'Unidad de Proceso'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object GroupBox1: TGroupBox
        Left = 7
        Top = 8
        Width = 134
        Height = 59
        Caption = 'Periodo'
        TabOrder = 0
        object TLabel
          Left = 64
          Top = 15
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
          Left = 12
          Top = 15
          Width = 20
          Height = 15
          Caption = 'A'#241'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object wwDBSpinEdit1: TwwDBSpinEdit
          Left = 63
          Top = 28
          Width = 56
          Height = 21
          Increment = 1.000000000000000000
          BorderStyle = bsNone
          Color = 13165023
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          TabOrder = 0
          UnboundDataType = wwDefault
        end
        object wwDBSpinEdit2: TwwDBSpinEdit
          Left = 10
          Top = 28
          Width = 51
          Height = 21
          Increment = 1.000000000000000000
          BorderStyle = bsNone
          Color = 13165023
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          TabOrder = 1
          UnboundDataType = wwDefault
        end
      end
      object wwDBLookupComboDlg2: TwwDBLookupComboDlg
        Left = 15
        Top = 122
        Width = 54
        Height = 21
        BorderStyle = bsNone
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Lookup'
        MaxWidth = 0
        MaxHeight = 209
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 1
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
      end
      object wwDBLookupComboDlg3: TwwDBLookupComboDlg
        Left = 228
        Top = 122
        Width = 54
        Height = 21
        BorderStyle = bsNone
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Lookup'
        MaxWidth = 0
        MaxHeight = 209
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 2
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
      end
      object wwDBEdit39: TwwDBEdit
        Left = 70
        Top = 122
        Width = 158
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 3
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBEdit43: TwwDBEdit
        Left = 282
        Top = 122
        Width = 158
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 4
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBLookupComboDlg1: TwwDBLookupComboDlg
        Left = 229
        Top = 85
        Width = 54
        Height = 21
        BorderStyle = bsNone
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Lookup'
        MaxWidth = 0
        MaxHeight = 209
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 5
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
      end
      object RadioGroup1: TRadioGroup
        Left = 151
        Top = 8
        Width = 346
        Height = 59
        Columns = 3
        Items.Strings = (
          'Global'
          'Departamento'
          'Provincia'
          'Unidad de Proceso'
          'USE')
        TabOrder = 6
      end
      object wwDBLookupComboDlg4: TwwDBLookupComboDlg
        Left = 15
        Top = 85
        Width = 54
        Height = 21
        BorderStyle = bsNone
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Lookup'
        MaxWidth = 0
        MaxHeight = 209
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 7
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
      end
      object wwDBEdit1: TwwDBEdit
        Left = 284
        Top = 85
        Width = 158
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 8
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBEdit2: TwwDBEdit
        Left = 71
        Top = 85
        Width = 158
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 9
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
  end
  object ppRepApoNoDesc: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta (216 x 279 mm) '
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppRepApoNoDescPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 283
    Top = 184
    Version = '7.02'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 79111
      mmPrintPosition = 0
      object ppImage1: TppImage
        UserName = 'Image1'
        AutoSize = True
        MaintainAspectRatio = False
        Picture.Data = {
          0A544A504547496D616765D70D0000FFD8FFE000104A46494600010101012C01
          2C0000FFDB004300080606070605080707070909080A0C140D0C0B0B0C191213
          0F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F2739
          3D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232
          3232323232323232323232323232323232323232323232323232323232323232
          32323232323232323232323232FFC0001108005C009103012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F7FA
          28A2800A28A2800A2B0BC47E32D03C25F66FEDCBFF00B27DAB7793FB9924DDB7
          1BBEE29C6370EBEB5C8689E1A5F19D84BE218FC65E298A1BDBCBA6852D350314
          42213C8A9B50AE546D55E0D007A6515C2FFC2B3FFA9DFC69FF00836FFEC28974
          0BFF0005D84FACD9F8A35ABF82D71717B6BAACCB72B2DBA063208CED051F6925
          482012A0371C800EEA8AF33D2743D63C7A92F89351F126BBA558DDB7FC4B2C74
          E98DA98EDC13B5A5041DCEDD72323182090405D2FF008567FF0053BF8D3FF06D
          FF00D850077545799F88BC072E91E19D5752B7F1AF8C5A6B4B39AE2359355254
          B221600E141C647AD775A7F88B44D5EE1ADF4DD634FBD99577B476D7492305C8
          19214938C91CFBD0069514514005145140051451400514514005145140051457
          11E31D4B5D8BC67E12D1F46D512C13506BA69CC96CB32B88915C29070707E61F
          2B29F9BAF02803C87E3678C74FF126AF6BA6D9C3751CDA3CF756F70D32A8566D
          C8B94C3124650F503B57ADFC1BFF009253A2FF00DB7FFD1F257CD3E2F12AF8D7
          5E5B8749261A8DC091E3428ACDE636485249033DB271EA6BE96F837FF24A745F
          FB6FFF00A3E4A00EEAB0BC6DFF00221788BFEC1973FF00A29AB76B0BC6DFF221
          788BFEC1973FFA29A800F04FFC885E1DFF00B065B7FE8A5ADDAC2F04FF00C885
          E1DFFB065B7FE8A5ADDA00C2F1B7FC885E22FF00B065CFFE8A6AF9D7E0EF8974
          8F0AF8BAEEFB5ABBFB2DB4960F0ABF96EF97324640C2827A29FCABE8AF1B7FC8
          85E22FFB065CFF00E8A6AF8CE803EE2B2BCB7D46C2DAFAD24F32DAE6259A27C1
          1B918020E0F23823AD4F5E5FE15D63C57A25C7823C3FACC3A625B6A36B246B1C
          50CAB3C31C36EACBBCB3603E4E186DC0C1E79E3D42800A28A2800A28A2800A28
          A2800A28A2800AE17C53FF00255BC01FF711FF00D10B5DD564F88744FEDCB08E
          38AF26B1BCB7945C59DDC27E68650080C57A3A90CCA54F04311EE003E5BF895E
          1FD5745F1AEA771A8D9BC10EA17971716B212196543231041048CE08C83C8C8C
          81915F407C1BFF009253A2FF00DB7FFD1F2569681AA45E2DD3750D2B5ED3AD7E
          DF613FD9B50B29103C4EC30CB2AABF3E5BF0CA58763D71938569A668DA25CDFE
          9335B7892DECAD2709A7C7A7FF006898842D1A3B7CD0F0C7CD79B9625BB74000
          00F45AC2F1B7FC885E22FF00B065CFFE8A6AE7A6B8F095B2092EEEFC55690EE5
          433DD4FAB4312162146E77215464819240A5F1C7852287C15AC5CD86ABABDB4D
          0594F23799A8CF711CA9E53068D925765C104F20020E083C7201D07827FE442F
          0EFF00D832DBFF00452D6ED799F863C21AAEBBE0AD0A7D4FC55ABD9016711B6B
          7D1A716F1C70F9681431DA59DC850C493805885007279EBDBBF04E9D7F736377
          F14BC691DCDB4AD0CA9F6B98ED75241191160F20F4A00F50F1B7FC885E22FF00
          B065CFFE8A6AF8FB4CD32F759D4ADF4ED3AD9EE6EEE1B647127527F900064927
          8001278AF5BD6AE7C39A968B7965E1DF1F78D358D56688AC1605E7985C7F7959
          0A2E576EECF3C0C9C36307D52CF4CF0AFC2CF0D5C4D04696D16DDD23C920335D
          C8A84850588DCE70D841819270064D0073FF0064B9D37C51F09EC2E90C5716F6
          1750CC9B81C32DAA0232383823B57A7D727E1CD22EF51BB87C55E214FF00899C
          B17FA1D91076699138FB801009948C6F7201FE11851CF5940051451400514514
          00514514005145140051451401CF788BC30DAB5C43A9699A83E91ADDBA98E2BF
          8A25933113F347221E244EE01FBAD823BE68CBE2BBFF000EDEC56BE2AB144B59
          5B09ACD92B7D9572C401306C980F318C92CA4B1F980071D7D14011C13C5736F1
          DC5BCA92C32A878E48D832BA9190411C10477AC6F1B7FC885E22FF00B065CFFE
          8A6AC2D1BC3DE21F0DF8835EB8D2F4ED146957F2C4D6D64B7D240906C4D85822
          C05433E149C7A632D8CD5ED6E0F15EB1A0EA3A5FF6568B0FDB2D65B7F33FB565
          6D9BD4AE71F6719C6738C8A00BFE09FF00910BC3BFF60CB6FF00D14B5BB5C9E8
          9078AF47D074ED2FFB2B459BEC76B15BF99FDAB2AEFD8A1738FB39C6719C64D5
          1F14F87FC49E30B4B0D32FAD34CB4D356FE19EF561D4E673710A93BA3C0853AE
          411CF551F50005F7C498E7D58E95E13D227F12DD47B4CD2DACCA96B102ACC019
          8E5777CA3DB9233B86DA346F046A777AF41E22F1A6A50EA7A85B6EFB159C11ED
          B5B22589DCB9C176C6DC330C8C72588523B3B3B2B4D3AD12D2C6D61B5B68F3B2
          1823088B9393851C0E493F8D4F40051451400514514005145140051451401E77
          A9472EABF1B1747B8BED4934F5F0E0BA16F6B7F35BAF9BF692BBCF96EB93B4E3
          F2F415C35FF8F3C5B6315B787AC2FEFA4920D6750D385E5BE9EB7D7D2C36CB19
          4CA315576FDE1DCD8070A0F5CEEF5FD5FC17E1ED7B554D4F53D3C5C5D24490E5
          A69023C6AFE62A3A060AEBBF0D86041207A0A8B57F0178575DD32D74DBFD0ED1
          ACED599EDE2854C2222DCB6D31952012724742704F205007947827E2178EEFFC
          4769A6C9749A90B8D4E4B69E2D4AC12CE5B782131F98C9B5955A5DB212D18DEC
          9E5E7041C9D1F84DF13B54D6E3BF1E21D512E63B2B296F6EE492D6389E10ACA1
          42796F9913687627CB054903272B5E8167F0E3C2361059C36FA346AB657BF6FB
          72D2C8CD1CDF2FCC18B138F9132B9DA768C8E293FE15BF8516C21B28F4B68608
          6DE4B55F22EA68D9A1918BBC6CCAE19D0B1276B12064E3AD0079A597C5EF104D
          F0E7C45797526929ADDAC30DCD9BDBCF1C9FBA9E5D9CC618ED68B70186E794DC
          3392DD3F87FE25EA9AFF0088FC3BA6C7A6C11452C463D699F892DAEF64F88826
          ECA7CD6CE7E6DC76B2E769C67ACD67C07E19D7D615D43498D961B716AAB0C8F0
          0F24306119F2CAEE40CA08539008C8C5493782BC373B5F3BE93006BF95A6BA68
          F28657689E1624A91D524718E99766FBC49A00E3BE1B7C4AB8F18789B54B2B97
          81EDE789AFF4E485407B681653098E7E4E243847C73F7C9CE0A81CB78BB5DF11
          68FF001375DD7ADF56D48E8BA05E69DF6CD3E29731B5BCF16242119829390000
          0757DD918CD7B0A7863474B8D1A75B4C4BA2C4D0E9EDE6BFEE5190211D7E6F95
          40F9B3D3D6A44F0F69297DAADE7D8A379B56448EFBCC25D6754528AA5492B8DA
          48C01CE79CD007905A7C41D6B4FF0019EADE21D76E1C68D27871B53D334D0E55
          444D3A2401C2EE0257EEDF363CCEC06D16348F8C1AE6ABE17431DBE8CDE20B8D
          5ED6C22405FECF0C7709BE377C3316395914A860548E402307D335AF05F87FC4
          37735D6A9A7F9F34D6AB6723F9D226E85641285F9587F1A839EBDB38E2A6B8F0
          B68577A85EDEDCE9904D2DF4490DDAC8374770A87285E33F23329E8C41603807
          1401C2C5E2BD44F8B3C37A3C5A9D9EB7762E351B2B99D639EC57CF82DD1B63A0
          7646258F2FB19467E5504735DBC4FE28BAF0A789BED7AD368FE24D36DCDFA591
          D2923DB1C68448137BC826859948120C10DCFDD2AB5D4689F0B7C2BA16D10D93
          CEB1DC5C4F025CC9BD6113C6B1C9185E032144030FB8F5E79AB9A5FC3DF0A68D
          A7DE58D868B0430DEC4F05C36E6691E3700327984970A70380400791CD007935
          DF8D3C7D1CDE1FD3D75ABEB97BBD163D59E6D23408AE6E1BCD6E11D0B85DA98C
          0750BD4654939A9BC3FF00127C5DACE8B773492D9DE249A6DF6A3751B5BB5ABD
          A46AB2AC4B0BACAAF2A6F8C02EA095DD82FBBEEFA7EABF0DBC21ADC1610EA1A2
          C732585BADADB112C8AC912E36A16560580C71B89C64FA9C89F0DBC211DB5A5B
          A68B1AA5A5BCF6B0912C9B84530612216DD9607CC7C649C6E24633401C3F8A7E
          25EA3A17843C229A6CDA741A8EA1A62EA13BDE4CCE1238E2593CBC33176329DC
          8ACCC49208CEE3B977F4AF104DABFC5DB26B7B9BB5D2EF3C251DFC7692390A19
          E718628095DFB4E33F866BACD33C31A3E8F762EAC6CF64EB6B1D9A48F23C8638
          23002C69B89DABC0240C64F27279AC88BE18783A0B9D2EE63D1F13695B4D9B9B
          99898B6C8D28EAFF0037CEEC79CF5C74E2803AEA28A2800A28A2800A28A2800A
          28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
          28A2803FFFD9}
        mmHeight = 24342
        mmLeft = 0
        mmTop = 794
        mmWidth = 38365
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = 'APORTES NO DESCONTADOS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 61383
        mmTop = 32544
        mmWidth = 80433
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'lblFInic1'
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6615
        mmLeft = 99219
        mmTop = 39423
        mmWidth = 12435
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'lblFFin2'
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6615
        mmLeft = 112184
        mmTop = 39423
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        AutoSize = False
        Caption = 'Sistema de Aportes'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5292
        mmLeft = 529
        mmTop = 22490
        mmWidth = 43656
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        AutoSize = False
        Caption = 'Fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 151695
        mmTop = 9878
        mmWidth = 13053
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        AutoSize = False
        Caption = 'Hora'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 151695
        mmTop = 14111
        mmWidth = 13053
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        AutoSize = False
        Caption = 'Pagina'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 151695
        mmTop = 18344
        mmWidth = 13053
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 165806
        mmTop = 9878
        mmWidth = 29633
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable5'
        AutoSize = False
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 165806
        mmTop = 14111
        mmWidth = 29633
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable6'
        AutoSize = False
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 165806
        mmTop = 18344
        mmWidth = 29633
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        AutoSize = False
        Caption = 'Unidad de Proceso:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 61383
        mmTop = 53181
        mmWidth = 33867
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        AutoSize = False
        Caption = 'USE:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 3175
        mmTop = 53181
        mmWidth = 22225
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        Caption = 'Apellidos y Nombres'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 32808
        mmTop = 71173
        mmWidth = 31750
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        Caption = 'Monto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 4498
        mmLeft = 158486
        mmTop = 70908
        mmWidth = 10583
        BandType = 0
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 2117
        mmTop = 76465
        mmWidth = 197380
        BandType = 0
      end
      object ppLine16: TppLine
        UserName = 'Line16'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 2117
        mmTop = 68792
        mmWidth = 197380
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        AutoSize = False
        Caption = 'Periodo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6615
        mmLeft = 74348
        mmTop = 39423
        mmWidth = 23548
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 98425
        mmTop = 53181
        mmWidth = 30692
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label45'
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 40217
        mmTop = 53181
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label46'
        Caption = 'C'#243'digo Mod'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 6615
        mmTop = 70908
        mmWidth = 18256
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'Documento:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 3175
        mmTop = 57679
        mmWidth = 22754
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 40217
        mmTop = 57679
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'Fecha:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 61383
        mmTop = 57679
        mmWidth = 33867
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 98425
        mmTop = 57679
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label301'
        AutoSize = False
        Caption = 'Departamento:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 130969
        mmTop = 53181
        mmWidth = 33867
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 168011
        mmTop = 53181
        mmWidth = 19050
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 2117
        mmTop = 67998
        mmWidth = 197380
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label7'
        Caption = 'Nro de cuotas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 114036
        mmTop = 71173
        mmWidth = 21431
        BandType = 0
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Pen.Style = psDot
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 28046
        mmTop = 68792
        mmWidth = 265
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Pen.Style = psDot
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 110596
        mmTop = 68792
        mmWidth = 265
        BandType = 0
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Pen.Style = psDot
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 139700
        mmTop = 69056
        mmWidth = 265
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 19579
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 39158
      mmPrintPosition = 0
      object ppLine2: TppLine
        UserName = 'Line2'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 2117
        mmTop = 794
        mmWidth = 197381
        BandType = 7
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 2117
        mmTop = 0
        mmWidth = 197381
        BandType = 7
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 2117
        mmTop = 7408
        mmWidth = 197381
        BandType = 7
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 2117
        mmTop = 21167
        mmWidth = 197381
        BandType = 7
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 2117
        mmTop = 20373
        mmWidth = 197381
        BandType = 7
      end
      object ppLabel7: TppLabel
        UserName = 'Label5'
        Caption = 'Total por USE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 13053
        mmTop = 2117
        mmWidth = 23636
        BandType = 7
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 2117
        mmTop = 13758
        mmWidth = 197381
        BandType = 7
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Total por Documento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 13053
        mmTop = 8467
        mmWidth = 35278
        BandType = 7
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Total por Unidad de Proceso'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 13053
        mmTop = 15169
        mmWidth = 47625
        BandType = 7
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Total General'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 13053
        mmTop = 22578
        mmWidth = 23283
        BandType = 7
      end
    end
  end
end
