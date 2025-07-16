object FCaptaAportesWMC: TFCaptaAportesWMC
  Left = 110
  Top = 45
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Aportes'
  ClientHeight = 573
  ClientWidth = 792
  Color = 13165023
  Font.Charset = ANSI_CHARSET
  Font.Color = clNavy
  Font.Height = -11
  Font.Name = 'Comic Sans MS'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object pnlCabecera: TPanel
    Left = 2
    Top = 1
    Width = 786
    Height = 568
    BevelOuter = bvNone
    BorderWidth = 1
    Color = 10207162
    TabOrder = 0
    object TLabel
      Left = 7
      Top = 27
      Width = 204
      Height = 30
      AutoSize = False
      Caption = 'Captación de Aportes'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object z2bbtnNuevo: TfcShapeBtn
      Left = 645
      Top = 533
      Width = 31
      Height = 32
      Color = 10207162
      DitherColor = clWhite
      Glyph.Data = {
        76010000424D760100000000000076000000280000001F000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333033333333333333333333333333333330333333333333
        333333333333333333303000000000003333337777777777733030FFFFFFFFF0
        3333337F33333333733030FFFFFFFFF03333337F33333333733030FFFFFFFFF0
        3333337F33333333733030FFFFFFFFF03333337F33333333733030FFFFFFFFF0
        3333337F33333333733030FFFFFFFFF03333337F33333FFF733030FFFF000000
        3333337F33337777733030FFFF00FF033333337F33337F37333030FFFF00F033
        3333337F33337F77333030FFFF0003333333337FFFFF77333330300000003333
        3333337777777333333033333333333333333333333333333330}
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
      Visible = False
      OnClick = z2bbtnNuevoClick
    end
    object Z2bbtnCancel: TfcShapeBtn
      Left = 727
      Top = 533
      Width = 31
      Height = 32
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
      ShadeStyle = fbsRaised
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 0
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = Z2bbtnCancelClick
    end
    object Z2bbtnAceptar: TfcShapeBtn
      Left = 687
      Top = 533
      Width = 31
      Height = 32
      Hint = 'Registrar Aportes'
      Color = 10207162
      Default = True
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
      ShadeStyle = fbsRaised
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 1
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      Visible = False
      OnClick = Z2bbtnAceptarClick
    end
    object pnlDatos: TPanel
      Left = 5
      Top = 117
      Width = 779
      Height = 70
      Color = 13165023
      Enabled = False
      TabOrder = 2
      object TLabel
        Left = 7
        Top = 12
        Width = 70
        Height = 15
        Caption = 'Cod. Modular:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 160
        Top = 12
        Width = 52
        Height = 15
        Caption = 'Cod. Pago:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label54: TLabel
        Left = 328
        Top = 11
        Width = 68
        Height = 15
        Caption = 'Ape. Paterno '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label55: TLabel
        Left = 546
        Top = 11
        Width = 69
        Height = 15
        Caption = 'Ape. Materno'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label56: TLabel
        Left = 6
        Top = 43
        Width = 51
        Height = 15
        Caption = 'Nombres :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 223
        Top = 41
        Width = 81
        Height = 15
        Caption = 'Situación Asoc.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 466
        Top = 41
        Width = 54
        Height = 15
        Caption = 'Tipo Asoc.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object dbeCodigoModular: TwwDBEdit
        Left = 80
        Top = 10
        Width = 69
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeCodigoPago: TwwDBEdit
        Left = 215
        Top = 10
        Width = 108
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeApePat: TwwDBEdit
        Left = 397
        Top = 9
        Width = 140
        Height = 19
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 13165023
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.FocusBorders = [efRightBorder, efBottomBorder]
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeApeMat: TwwDBEdit
        Left = 624
        Top = 9
        Width = 140
        Height = 19
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 13165023
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.FocusBorders = [efRightBorder, efBottomBorder]
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 3
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeNombres: TwwDBEdit
        Left = 62
        Top = 41
        Width = 154
        Height = 19
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 13165023
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.FocusBorders = [efRightBorder, efBottomBorder]
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 4
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dblcSituacion: TwwDBLookupCombo
        Left = 305
        Top = 38
        Width = 40
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'CONTNUM'#9'9'#9'ID'#9'F'
          'CONTACTO'#9'20'#9'Contacto'#9'F')
        LookupField = 'ASOSITID'
        Options = [loColLines, loTitles]
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 5
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
        OnExit = dblcSituacionExit
      end
      object edtSituacion: TEdit
        Left = 346
        Top = 38
        Width = 116
        Height = 21
        CharCase = ecUpperCase
        Color = 13165023
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object dblcTipoAsoc: TwwDBLookupCombo
        Left = 524
        Top = 38
        Width = 41
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'CONTNUM'#9'9'#9'ID'#9'F'
          'CONTACTO'#9'20'#9'Contacto'#9'F')
        LookupField = 'ASOTIPID'
        Options = [loColLines, loTitles]
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 7
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
        OnExit = dblcTipoAsocExit
      end
      object edtTipoAso: TEdit
        Left = 565
        Top = 38
        Width = 145
        Height = 21
        Color = 13165023
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
    end
    object Panel2: TPanel
      Left = 5
      Top = 188
      Width = 778
      Height = 338
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object dbgAportes: TwwDBGrid
        Left = 6
        Top = 3
        Width = 767
        Height = 327
        Selected.Strings = (
          'TRANSANO'#9'4'#9'Año'#9'F'
          'TRANSMES'#9'2'#9'Mes'#9'F'
          'TMONID'#9'6'#9'Moneda'#9'F'
          'TRANSMTO'#9'11'#9'Monto'#9'F'
          'FORPAGOABR'#9'6'#9'Forma~Pago'#9'F'
          'BANCOID'#9'5'#9'Banco'#9'F'
          'CCBCOID'#9'13'#9'CtaCte '#9'F'
          'TRANSNOPE'#9'11'#9'N° Operacion'#9'F'
          'TRANSFOPE'#9'9'#9'Fecha~Operacion'#9'F'
          'APOFDEV'#9'7'#9'Devuelto'#9'F'
          'APOFRECL'#9'9'#9'En Reclamo'#9'F'
          'APOFNP'#9'7'#9'No Procede'#9'F'
          'TRANSFFCIND'#9'7'#9'Calculado ~Cta. Ind.'#9'F'
          'USUARIO'#9'12'#9'Usuario'#9'F'
          'FREG'#9'11'#9'Fecha ~de Registro'#9'F'
          'HREG'#9'18'#9'Hora ~de Registro'#9'F')
        MemoAttributes = [mSizeable, mWordWrap, mGridShow]
        IniAttributes.Delimiter = ';;'
        TitleColor = 10207162
        FixedCols = 0
        ShowHorzScrollBar = True
        BorderStyle = bsNone
        Color = 13165023
        DataSource = DM1.dsTransacciones
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        KeyOptions = [dgEnterToTab, dgAllowDelete]
        MultiSelectOptions = [msoAutoUnselect, msoShiftSelect]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgMultiSelect, dgShowFooter]
        ParentFont = False
        TabOrder = 0
        TitleAlignment = taCenter
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -11
        TitleFont.Name = 'Comic Sans MS'
        TitleFont.Style = []
        TitleLines = 2
        TitleButtons = False
        UseTFields = False
        OnDblClick = dbgAportesDblClick
        OnKeyDown = dbgAportesKeyDown
        IndicatorColor = icBlack
        object bbtnIngresaAporte: TwwIButton
          Left = 0
          Top = 0
          Width = 36
          Height = 36
          AllowAllUp = True
          Enabled = False
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
          OnClick = bbtnIngresaAporteClick
        end
      end
    end
    object pnlInicio: TPanel
      Left = 215
      Top = 2
      Width = 569
      Height = 112
      Color = 13165023
      TabOrder = 4
      object TLabel
        Left = 11
        Top = 12
        Width = 63
        Height = 15
        Caption = 'Transacción'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 11
        Top = 33
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
      object TLabel
        Left = 287
        Top = 33
        Width = 78
        Height = 15
        Caption = 'Unidad de Pago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 317
        Top = 87
        Width = 38
        Height = 15
        Caption = 'Código:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 11
        Top = 84
        Width = 26
        Height = 15
        Caption = 'USE:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object edtTransaccion: TEdit
        Left = 83
        Top = 8
        Width = 331
        Height = 21
        CharCase = ecUpperCase
        Color = 13165023
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnExit = edtTransaccionExit
      end
      object dblcTransaccion: TwwDBLookupCombo
        Left = 75
        Top = 8
        Width = 46
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'CONTNUM'#9'9'#9'ID'#9'F'
          'CONTACTO'#9'20'#9'Contacto'#9'F')
        Options = [loColLines, loTitles]
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 1
        Visible = False
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
        OnExit = dblcTransaccionExit
      end
      object dblcdUPro: TwwDBLookupComboDlg
        Left = 12
        Top = 52
        Width = 67
        Height = 21
        CharCase = ecUpperCase
        BorderStyle = bsNone
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Use'
        MaxWidth = 0
        MaxHeight = 209
        SearchDelay = 2
        Selected.Strings = (
          'UPROID'#9'4'#9'ID'#9'F'
          'UPRONOM'#9'30'#9'NOMBRE'#9'F')
        LookupTable = DM1.cdsUPro
        LookupField = 'UPROID'
        AutoSelect = False
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 2
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = True
        UseTFields = False
        ShowMatchText = True
        OnExit = dblcdUProExit
      end
      object edtUPro: TEdit
        Left = 82
        Top = 52
        Width = 189
        Height = 21
        CharCase = ecUpperCase
        Color = 13165023
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object dblcdUPago: TwwDBLookupComboDlg
        Left = 288
        Top = 52
        Width = 57
        Height = 21
        CharCase = ecUpperCase
        BorderStyle = bsNone
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Use'
        MaxWidth = 0
        MaxHeight = 209
        SearchDelay = 2
        Selected.Strings = (
          'UPAGOID'#9'4'#9'ID'#9'F'
          'UPAGONOM'#9'30'#9'NOMBRE'#9'F')
        LookupTable = DM1.cdsUPago
        LookupField = 'UPAGOID'
        AutoSelect = False
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 4
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = True
        UseTFields = False
        ShowMatchText = True
        OnExit = dblcdUPagoExit
      end
      object edtUPago: TEdit
        Left = 347
        Top = 52
        Width = 199
        Height = 21
        CharCase = ecUpperCase
        Color = 13165023
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object dblcdCodigo: TwwDBLookupComboDlg
        Left = 362
        Top = 82
        Width = 97
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        CharCase = ecUpperCase
        BorderStyle = bsNone
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Código'
        MaxWidth = 0
        MaxHeight = 209
        SearchDelay = 2
        Selected.Strings = (
          'ASOID'#9'15'#9'ID'#9'F'
          'ASOCODMOD'#9'10'#9'Código Modular'#9'F'
          'ASOAPENOM'#9'90'#9'Apellidos y Nombres'#9'F')
        LookupTable = DM1.cdsAsociados1
        LookupField = 'ASOID'
        AutoSelect = False
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 8
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = True
        ShowMatchText = True
        OnDropDown = dblcdCodigoDropDown
        OnExit = dblcdCodigoExit
      end
      object edtUse: TEdit
        Left = 84
        Top = 81
        Width = 221
        Height = 21
        CharCase = ecUpperCase
        Color = 13165023
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object dblcdUSE: TwwDBLookupComboDlg
        Left = 38
        Top = 82
        Width = 45
        Height = 21
        CharCase = ecUpperCase
        BorderStyle = bsNone
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Use'
        MaxWidth = 0
        MaxHeight = 209
        SearchDelay = 2
        Selected.Strings = (
          'USEID'#9'3'#9'ID'#9'F'
          'USENOM'#9'75'#9'USE'#9'F')
        LookupTable = DM1.cdsUse
        LookupField = 'USEID'
        AutoSelect = False
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 6
        AutoDropDown = True
        ShowButton = True
        AllowClearKey = True
        ShowMatchText = True
        OnExit = dblcdUSEExit
      end
      object bbtnAceptaCab: TfcShapeBtn
        Left = 492
        Top = 78
        Width = 34
        Height = 31
        Hint = 'Registrar Aportes'
        Color = 10207162
        Default = True
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
        Layout = blGlyphTop
        NumGlyphs = 2
        Options = [boFocusable]
        ParentClipping = True
        ParentShowHint = False
        RoundRectBias = 25
        ShadeStyle = fbsRaised
        Shape = bsEllipse
        ShowHint = True
        TabOrder = 9
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = bbtnAceptaCabClick
      end
      object fcShapeBtn2: TfcShapeBtn
        Left = 530
        Top = 77
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
        ShadeStyle = fbsRaised
        Shape = bsEllipse
        ShowHint = True
        TabOrder = 10
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = fcShapeBtn2Click
      end
    end
  end
  object pnlAportes: TPanel
    Left = 221
    Top = 116
    Width = 405
    Height = 439
    BorderStyle = bsSingle
    Color = 10207162
    TabOrder = 1
    Visible = False
    object StaticText1: TStaticText
      Left = 1
      Top = 1
      Width = 399
      Height = 18
      Align = alTop
      Alignment = taCenter
      BorderStyle = sbsSunken
      Caption = 'Aportes'
      Color = clActiveCaption
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
    object Panel3: TPanel
      Left = 1
      Top = 19
      Width = 399
      Height = 415
      Align = alClient
      BevelOuter = bvNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Panel1: TPanel
        Left = 1
        Top = 2
        Width = 394
        Height = 166
        Color = 10207162
        TabOrder = 0
        object Label5: TLabel
          Left = 7
          Top = 3
          Width = 73
          Height = 15
          Caption = 'Forma de Pago'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object lblBanco: TLabel
          Left = 7
          Top = 43
          Width = 31
          Height = 15
          Caption = 'Banco'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 206
          Top = 44
          Width = 42
          Height = 15
          Caption = 'Agencia'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 7
          Top = 86
          Width = 87
          Height = 15
          Caption = 'Cuenta Corriente'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object lblOperacion: TLabel
          Left = 141
          Top = 86
          Width = 71
          Height = 15
          Caption = 'Nº Operacion'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 285
          Top = 86
          Width = 102
          Height = 15
          Caption = 'Fecha de Operación'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object Label8: TLabel
          Left = 7
          Top = 126
          Width = 40
          Height = 15
          Caption = 'Moneda'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 141
          Top = 126
          Width = 70
          Height = 15
          Caption = 'Monto Aporte'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object dbeFormaPagoAbr: TwwDBEdit
          Left = 272
          Top = 21
          Width = 129
          Height = 21
          BorderStyle = bsNone
          Color = 13165023
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          TabOrder = 2
          UnboundDataType = wwDefault
          Visible = False
          WantReturns = False
          WordWrap = False
        end
        object dblcFormaPago: TwwDBLookupCombo
          Left = 7
          Top = 21
          Width = 51
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          CharCase = ecUpperCase
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'FORPAGOID'#9'3'#9'Id'#9'F'
            'FORPAGODES'#9'25'#9'Descripción'#9'F')
          LookupTable = DM1.cdsFPagoAporte
          LookupField = 'FORPAGOID'
          Options = [loColLines, loTitles]
          Color = 13165023
          DropDownCount = 15
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          MaxLength = 3
          ParentFont = False
          TabOrder = 0
          AutoDropDown = False
          ShowButton = True
          SearchDelay = 2
          UseTFields = False
          AllowClearKey = False
          OnChange = dblcFormaPagoChange
          OnExit = dblcFormaPagoExit
        end
        object dbeFormaPago: TwwDBEdit
          Left = 64
          Top = 21
          Width = 249
          Height = 21
          BorderStyle = bsNone
          Color = 13165023
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          ParentFont = False
          TabOrder = 1
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dblcBanco: TwwDBLookupCombo
          Left = 7
          Top = 61
          Width = 42
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          CharCase = ecUpperCase
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'BANCOID'#9'2'#9'ID'#9'F'
            'BANCONOM'#9'40'#9'Banco'#9'F')
          LookupTable = DM1.cdsBancos
          LookupField = 'BANCOID'
          Options = [loColLines, loTitles]
          Color = 13165023
          DropDownCount = 15
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          MaxLength = 2
          ParentFont = False
          TabOrder = 3
          AutoDropDown = False
          ShowButton = True
          SearchDelay = 2
          AllowClearKey = False
          OnChange = dblcBancoChange
          OnExit = dblcBancoExit
        end
        object dblcAgencia: TwwDBLookupComboDlg
          Left = 206
          Top = 62
          Width = 83
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          CharCase = ecUpperCase
          BorderStyle = bsNone
          GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
          GridColor = clWhite
          GridTitleAlignment = taLeftJustify
          Caption = 'Lugar'
          MaxWidth = 0
          MaxHeight = 209
          SearchDelay = 2
          Selected.Strings = (
            'AGENBCOID'#9'8'#9'Agencia ID'#9'F'
            'AGENBCODES'#9'30'#9'Descripción'#9'F'
            'BANCOID'#9'2'#9'Banco'#9'F')
          LookupTable = DM1.cdsAgenciaBco
          LookupField = 'AGENBCOID'
          Color = 13165023
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          ParentFont = False
          TabOrder = 5
          AutoDropDown = False
          ShowButton = True
          AllowClearKey = False
          ShowMatchText = True
          OnChange = dblcAgenciaChange
          OnExit = dblcAgenciaExit
        end
        object dbeBanco: TwwDBEdit
          Left = 53
          Top = 61
          Width = 149
          Height = 21
          BorderStyle = bsNone
          Color = 13165023
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          ParentFont = False
          TabOrder = 4
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dbeAgencia: TwwDBEdit
          Left = 293
          Top = 62
          Width = 96
          Height = 21
          BorderStyle = bsNone
          Color = 13165023
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          ParentFont = False
          TabOrder = 6
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dblcCtaCte: TwwDBLookupCombo
          Left = 7
          Top = 105
          Width = 125
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'CCBCOID'#9'40'#9'Cta. Cte.'#9'F'
            'TMONID'#9'4'#9'Moneda'#9'F')
          LookupTable = DM1.cdsCtaCtes
          LookupField = 'CCBCOID'
          Options = [loColLines, loTitles]
          AutoSelect = False
          Color = 13165023
          DropDownCount = 15
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          ParentFont = False
          TabOrder = 7
          AutoDropDown = False
          ShowButton = True
          SearchDelay = 2
          AllowClearKey = False
          ShowMatchText = True
          OnExit = dblcCtaCteExit
        end
        object dbeNumOpe: TwwDBEdit
          Left = 141
          Top = 105
          Width = 135
          Height = 21
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 13165023
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          ParentFont = False
          TabOrder = 8
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dbdtpFechaOperacion: TwwDBDateTimePicker
          Left = 285
          Top = 105
          Width = 97
          Height = 21
          BorderStyle = bsNone
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          Color = 13165023
          Epoch = 1950
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          ShowButton = True
          TabOrder = 9
          DisplayFormat = 'dd/mm/yyyy'
        end
        object dblcMoneda: TwwDBLookupCombo
          Left = 7
          Top = 143
          Width = 43
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          CharCase = ecUpperCase
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'TMONID'#9'2'#9'ID'#9'F'
            'TMONDES'#9'30'#9'Descripción'#9'F')
          LookupTable = DM1.cdsTMoneda
          LookupField = 'TMONID'
          Options = [loColLines, loTitles]
          Color = 13165023
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          MaxLength = 1
          ParentFont = False
          TabOrder = 10
          Visible = False
          AutoDropDown = True
          ShowButton = True
          SearchDelay = 2
          AllowClearKey = False
          OnExit = dblcMonedaExit
        end
        object dbeMoneda: TwwDBEdit
          Left = 7
          Top = 143
          Width = 125
          Height = 21
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 13165023
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          ParentFont = False
          TabOrder = 11
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dbeMonto: TwwDBEdit
          Left = 141
          Top = 143
          Width = 76
          Height = 21
          BorderStyle = bsNone
          Color = 13165023
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          ParentFont = False
          Picture.PictureMask = 
            '{{{#[#][#]{{;,###*[;,###]},*#}[.*#]},.#*#}[E[[+,-]#[#][#]]],({{#' +
            '[#][#]{{;,###*[;,###]},*#}[.*#]},.#*#}[E[[+,-]#[#][#]]]),[-]{{#[' +
            '#][#]{{;,###*[;,###]},*#}[.*#]},.#*#}[E[[+,-]#[#][#]]]}'
          TabOrder = 12
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnEnter = dbeMontoEnter
          OnExit = dbeMontoExit
          OnKeyPress = dbeMontoKeyPress
        end
      end
      object Panel4: TPanel
        Left = 1
        Top = 170
        Width = 394
        Height = 200
        Color = 10207162
        TabOrder = 1
        object dbgDetAportes: TwwDBGrid
          Left = 5
          Top = 6
          Width = 384
          Height = 185
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          OnCellChanged = dbgDetAportesCellChanged
          FixedCols = 0
          ShowHorzScrollBar = True
          EditControlOptions = [ecoCheckboxSingleClick, ecoSearchOwnerForm]
          Color = clInfoBk
          DataSource = dsQry2
          KeyOptions = []
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
          TabOrder = 0
          TitleAlignment = taCenter
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clNavy
          TitleFont.Height = -11
          TitleFont.Name = 'Comic Sans MS'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
          OnKeyPress = dbgDetAportesKeyPress
          IndicatorColor = icBlack
          FooterCellColor = clCaptionText
          object wwDBGrid1IButton: TwwIButton
            Left = 0
            Top = 0
            Width = 31
            Height = 29
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
      end
      object fcShapeBtn3: TfcShapeBtn
        Left = 354
        Top = 375
        Width = 34
        Height = 32
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
        TabOrder = 2
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = fcShapeBtn3Click
      end
      object bbtnAceptar: TfcShapeBtn
        Left = 314
        Top = 375
        Width = 34
        Height = 32
        Hint = 'Graba Aporte'
        Color = 10207162
        Default = True
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
        ShadeStyle = fbsRaised
        Shape = bsEllipse
        ShowHint = True
        TabOrder = 3
        TabStop = True
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaVCenter
        OnClick = bbtnAceptarClick2
      end
      object bbtnNuevo: TfcShapeBtn
        Left = 272
        Top = 375
        Width = 31
        Height = 32
        Color = 10207162
        DitherColor = clWhite
        Glyph.Data = {
          76010000424D760100000000000076000000280000001F000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333033333333333333333333333333333330333333333333
          333333333333333333303000000000003333337777777777733030FFFFFFFFF0
          3333337F33333333733030FFFFFFFFF03333337F33333333733030FFFFFFFFF0
          3333337F33333333733030FFFFFFFFF03333337F33333333733030FFFFFFFFF0
          3333337F33333333733030FFFFFFFFF03333337F33333FFF733030FFFF000000
          3333337F33337777733030FFFF00FF033333337F33337F37333030FFFF00F033
          3333337F33337F77333030FFFF0003333333337FFFFF77333330300000003333
          3333337777777333333033333333333333333333333333333330}
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
        OnClick = bbtnNuevoClick
      end
      object bbtnImprimir: TfcShapeBtn
        Left = 8
        Top = 375
        Width = 31
        Height = 32
        Color = 10207162
        DitherColor = clWhite
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
        Visible = False
        OnClick = bbtnImprimirClick
      end
    end
    object bbtnCierraImp: TfcShapeBtn
      Left = 382
      Top = 2
      Width = 15
      Height = 15
      Color = clBtnFace
      DitherColor = clWhite
      Glyph.Data = {
        C6000000424DC60000000000000076000000280000000A0000000A0000000100
        04000000000050000000130B0000130B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888800
        0000888888888800000080088880080000008800880088000000888000088800
        0000888800888800000088800008880000008800880088000000800888800800
        00008888888888000000}
      NumGlyphs = 0
      ParentClipping = True
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      TabOrder = 2
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnCierraImpClick
    end
  end
  object pnlPeriodoInicial: TPanel
    Left = 333
    Top = 309
    Width = 184
    Height = 132
    Color = 10207162
    TabOrder = 2
    Visible = False
    object Label3: TLabel
      Left = 37
      Top = 30
      Width = 20
      Height = 15
      Caption = 'Año'
    end
    object Label4: TLabel
      Left = 109
      Top = 30
      Width = 21
      Height = 15
      Caption = 'Mes'
    end
    object stPeriodoInicial: TStaticText
      Left = 1
      Top = 1
      Width = 182
      Height = 18
      Align = alTop
      Alignment = taCenter
      BorderStyle = sbsSunken
      Caption = 'Confirme Periodo de Inicio'
      Color = clActiveCaption
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
    object bbtnAceptarPeriodoInicial: TfcShapeBtn
      Left = 96
      Top = 90
      Width = 34
      Height = 32
      Hint = 'Graba Aporte'
      Color = 10207162
      Default = True
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
      ShadeStyle = fbsRaised
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 1
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnAceptarPeriodoInicialClick
    end
    object bbtnSalirPeriodoInicial: TfcShapeBtn
      Left = 136
      Top = 91
      Width = 34
      Height = 32
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
      TabOrder = 2
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnSalirPeriodoInicialClick
    end
    object fcShapeBtn5: TfcShapeBtn
      Left = 170
      Top = 2
      Width = 15
      Height = 15
      Color = clBtnFace
      DitherColor = clWhite
      Glyph.Data = {
        C6000000424DC60000000000000076000000280000000A0000000A0000000100
        04000000000050000000130B0000130B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888800
        0000888888888800000080088880080000008800880088000000888000088800
        0000888800888800000088800008880000008800880088000000800888800800
        00008888888888000000}
      ParentClipping = True
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      TabOrder = 3
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcShapeBtn5Click
    end
    object SpeAnnos: TSpinEdit
      Left = 35
      Top = 54
      Width = 57
      Height = 24
      MaxValue = 2050
      MinValue = 1997
      TabOrder = 4
      Value = 1997
      OnKeyPress = SpeAnnosKeyPress
    end
    object SpEmeses: TSpinEdit
      Left = 107
      Top = 54
      Width = 41
      Height = 24
      MaxValue = 12
      MinValue = 1
      TabOrder = 5
      Value = 1
      OnKeyPress = SpeAnnosKeyPress
    end
  end
  object cdsAporte: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTGE'
    RemoteServer = DM1.DCOM1
    ValidateWithMask = True
    Left = 79
    Top = 277
  end
  object dsQry2: TwwDataSource
    DataSet = cdsQry2
    Left = 687
    Top = 269
  end
  object cdsQry2: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry'
    RemoteServer = DM1.DCOM1
    ValidateWithMask = True
    Left = 663
    Top = 253
  end
  object ppReport1: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    Template.FileName = 'C:\SOLFormatos\Apo\Dema\ReciboAporte.rtm'
    UserName = 'Report'
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppReport1PreviewFormCreate
    Left = 360
    Top = 530
    Version = '4.22 Pro'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 265907
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Alignment = taCenter
        AutoSize = False
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 10cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 5027
        mmTop = 11642
        mmWidth = 71438
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Alignment = taCenter
        AutoSize = False
        Caption = 'Jr. Gregorio Escobedo 598 Jesús María - Telf. 461-7354'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 5027
        mmTop = 21696
        mmWidth = 71438
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Alignment = taCenter
        AutoSize = False
        Caption = 'RUC 20136424867'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 10cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 5027
        mmTop = 26194
        mmWidth = 71438
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Alignment = taCenter
        AutoSize = False
        Caption = 'Equipo de Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 5027
        mmTop = 16669
        mmWidth = 71438
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Caption = 'RECIBÍ DE       :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 10848
        mmTop = 41010
        mmWidth = 33867
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Caption = 'LA CANTIDAD DE  :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 10848
        mmTop = 48154
        mmWidth = 33867
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Caption = 
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '---------------------------------------------------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 6350
        mmTop = 55298
        mmWidth = 189707
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        AutoSize = False
        Caption = '-------------------------------------------------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 135732
        mmTop = 234157
        mmWidth = 52123
        BandType = 0
      end
      object pplblFecha: TppLabel
        UserName = 'lblFecha'
        AutoSize = False
        Caption = '20136424867'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 3969
        mmTop = 220928
        mmWidth = 108479
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Alignment = taCenter
        AutoSize = False
        Caption = 'RECIBI CONFORME'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 135732
        mmTop = 239184
        mmWidth = 52123
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Alignment = taCenter
        AutoSize = False
        Caption = 'Cajero(a)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 135732
        mmTop = 244211
        mmWidth = 52123
        BandType = 0
      end
      object pplblAsociado: TppLabel
        UserName = 'lblAsociado'
        AutoSize = False
        Caption = 'RECIBÍ DE               :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 45508
        mmTop = 41010
        mmWidth = 151077
        BandType = 0
      end
      object pplblMontoLetras: TppLabel
        UserName = 'lblMontoLetras'
        AutoSize = False
        Caption = 'RECIBÍ DE               :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 45244
        mmTop = 48154
        mmWidth = 151077
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        AutoSize = False
        Caption = 'POR CONCEPTO    : PAGO DE APORTES DE '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 11113
        mmTop = 60061
        mmWidth = 151077
        BandType = 0
      end
      object pplblMonto1: TppLabel
        UserName = 'lblMonto1'
        Alignment = taCenter
        AutoSize = False
        Caption = 'S/.10000.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 5cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 5027
        mmTop = 32808
        mmWidth = 71438
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Alignment = taCenter
        AutoSize = False
        Caption = 'RECIBO INGRESO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 5cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 122767
        mmTop = 11906
        mmWidth = 71438
        BandType = 0
      end
      object pplblNumero: TppLabel
        UserName = 'lblNumero'
        Alignment = taCenter
        AutoSize = False
        Caption = '000000005'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 5cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 122767
        mmTop = 22225
        mmWidth = 71438
        BandType = 0
      end
      object pplblMonto2: TppLabel
        UserName = 'lblMonto2'
        Alignment = taCenter
        AutoSize = False
        Caption = 'S/.10000.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 5cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 122767
        mmTop = 32808
        mmWidth = 71438
        BandType = 0
      end
      object pplbldetalle: TppMemo
        UserName = 'lbldetalle'
        Caption = 'lbldetalle'
        CharWrap = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 139171
        mmLeft = 20902
        mmTop = 69056
        mmWidth = 158750
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
end
