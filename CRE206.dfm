object FDLab: TFDLab
  Left = 0
  Top = 111
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Datos Laborales'
  ClientHeight = 395
  ClientWidth = 779
  Color = 10207162
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Comic Sans MS'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 15
  object lbTitulo: TfcLabel
    Left = 256
    Top = 6
    Width = 68
    Height = 19
    Caption = 'Asociado :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    TextOptions.Alignment = taLeftJustify
    TextOptions.VAlignment = vaTop
  end
  object lbCodigo: TLabel
    Left = 12
    Top = 8
    Width = 109
    Height = 19
    Caption = 'Código Modular :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbgDatosLaborales: TwwDBGrid
    Left = 3
    Top = 37
    Width = 775
    Height = 356
    Selected.Strings = (
      'ASOCODPAGO'#9'25'#9'CODIGO PAGO'#9'F'
      'USEID'#9'3'#9'USE'#9'F'
      'UPAGOID'#9'3'#9'UNIDAD PAGO'#9'F'
      'CEDUDES'#9'45'#9'CENTRO EDUCATIVO'#9'F'
      'ASOFINI'#9'18'#9'FECHA INICIO'#9'F'
      'ASOFFIN'#9'18'#9'FECHA FIN'#9'F'
      'ASOCARID'#9'2'#9'CARGO'#9'F'
      'ASOSITID'#9'2'#9'SITUACION'#9'F')
    MemoAttributes = [mSizeable, mWordWrap, mGridShow]
    IniAttributes.Delimiter = ';;'
    TitleColor = 10207162
    FixedCols = 0
    ShowHorzScrollBar = True
    BorderStyle = bsNone
    Color = 13165023
    DataSource = DM1.dsDLabo
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    KeyOptions = [dgEnterToTab, dgAllowDelete]
    MultiSelectOptions = [msoAutoUnselect, msoShiftSelect]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgMultiSelect]
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
    OnDblClick = dbgDatosLaboralesDblClick
    OnKeyDown = dbgDatosLaboralesKeyDown
    IndicatorColor = icBlack
    object btnDLaborales: TwwIButton
      Left = 0
      Top = 0
      Width = 28
      Height = 28
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
      OnClick = btnDLaboralesClick
    end
  end
  object pnlDatosLaborales: TPanel
    Left = 3
    Top = 48
    Width = 760
    Height = 344
    BorderStyle = bsSingle
    Color = 10207162
    TabOrder = 1
    Visible = False
    object StaticText1: TStaticText
      Left = 1
      Top = 1
      Width = 754
      Height = 18
      Align = alTop
      Alignment = taCenter
      BorderStyle = sbsSunken
      Caption = 'Datos Laborales'
      Color = clActiveCaption
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
    object pnlDLab: TPanel
      Left = 4
      Top = 22
      Width = 748
      Height = 315
      BevelOuter = bvNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object TLabel
        Left = 18
        Top = 46
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
      object TLabel
        Left = 132
        Top = 2
        Width = 77
        Height = 15
        Caption = 'Código de Pago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 251
        Top = 2
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
        Left = 284
        Top = 46
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
        Left = 19
        Top = 2
        Width = 80
        Height = 15
        Caption = 'Código Modular'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object gbCEdu: TGroupBox
        Left = 7
        Top = 93
        Width = 738
        Height = 214
        Caption = 'Centro Educativo'
        TabOrder = 9
        object TLabel
          Left = 234
          Top = 19
          Width = 40
          Height = 15
          Caption = 'Nombre'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 7
          Top = 162
          Width = 83
          Height = 15
          Caption = 'Fecha de Inicio '
        end
        object Label6: TLabel
          Left = 147
          Top = 162
          Width = 64
          Height = 15
          Caption = 'Fecha de Fin'
        end
        object Label7: TLabel
          Left = 7
          Top = 112
          Width = 33
          Height = 15
          Caption = 'Cargo '
        end
        object TLabel
          Left = 10
          Top = 16
          Width = 75
          Height = 15
          Caption = 'Estado Laboral'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object lblDepartamento: TLabel
          Left = 7
          Top = 63
          Width = 74
          Height = 15
          Caption = 'Departamento '
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object lblProvincia: TLabel
          Left = 242
          Top = 63
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
        object lblDistrito: TLabel
          Left = 485
          Top = 63
          Width = 40
          Height = 15
          Caption = 'Distrito'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object dblcbdCEdu: TwwDBLookupComboDlg
          Left = 234
          Top = 35
          Width = 72
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          BorderStyle = bsNone
          GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
          GridColor = clWhite
          GridTitleAlignment = taLeftJustify
          Caption = 'Centro Educativo'
          MaxWidth = 0
          MaxHeight = 209
          SearchDelay = 2
          Selected.Strings = (
            'CEDUID'#9'5'#9'ID'#9'F'
            'CEDUDES'#9'40'#9'DESCRIPCION'#9'F'
            'DPTOID'#9'3'#9'DPTO'#9'F'
            'PROVINID'#9'3'#9'PROVINCIA'#9'F'
            'DISTID'#9'3'#9'DISTRITO'#9'F')
          DataField = 'CEDUID'
          DataSource = DM1.dsDLabo
          LookupTable = DM1.cdsCEdu
          LookupField = 'CEDUID'
          SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
          Color = 13165023
          Frame.Enabled = True
          Frame.FocusBorders = [efRightBorder, efBottomBorder]
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          ParentFont = False
          TabOrder = 2
          AutoDropDown = True
          ShowButton = True
          AllowClearKey = True
          ShowMatchText = True
          OnExit = dblcbdCEduExit
        end
        object dbdtpDLFinicio: TwwDBDateTimePicker
          Left = 7
          Top = 179
          Width = 109
          Height = 21
          BorderStyle = bsNone
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          Color = 13165023
          DataField = 'ASOFINI'
          DataSource = DM1.dsDLabo
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
          TabOrder = 12
          DisplayFormat = 'dd/mm/yyyy'
        end
        object dbdtpDLFFin: TwwDBDateTimePicker
          Left = 146
          Top = 179
          Width = 109
          Height = 21
          BorderStyle = bsNone
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          Color = 13165023
          DataField = 'ASOFFIN'
          DataSource = DM1.dsDLabo
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
          TabOrder = 13
          DisplayFormat = 'dd/mm/yyyy'
        end
        object dblcCargo: TwwDBLookupCombo
          Left = 7
          Top = 133
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
            'CARGOID'#9'2'#9'ID'#9'F'
            'CARGODES'#9'35'#9'DESCRIPCION'#9'F')
          DataField = 'ASOCARID'
          DataSource = DM1.dsDLabo
          LookupTable = DM1.cdsCAso
          LookupField = 'CARGOID'
          Options = [loColLines, loTitles]
          Color = 13165023
          DropDownCount = 15
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          ParentFont = False
          TabOrder = 10
          AutoDropDown = True
          ShowButton = True
          SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
          UseTFields = False
          AllowClearKey = True
          ShowMatchText = True
          OnExit = dblcCargoExit
          OnNotInList = dblcNotInList
        end
        object edtCargo: TEdit
          Left = 51
          Top = 133
          Width = 170
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
          TabOrder = 11
        end
        object dblcDLabEstLab: TwwDBLookupCombo
          Left = 10
          Top = 37
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
            'ASOSITID'#9'2'#9'ID'#9'F'
            'ASOSITDES'#9'40'#9'DESCRIPCION'#9'F')
          DataField = 'ASOSITID'
          DataSource = DM1.dsDLabo
          LookupTable = DM1.cdsSAso
          LookupField = 'ASOSITID'
          Options = [loColLines, loTitles]
          Color = 13165023
          DropDownCount = 15
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          ParentFont = False
          TabOrder = 0
          AutoDropDown = True
          ShowButton = True
          SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
          UseTFields = False
          AllowClearKey = True
          ShowMatchText = True
          OnExit = dblcDLabEstLabExit
          OnNotInList = dblcNotInList
        end
        object edtDLabEstLab: TEdit
          Left = 53
          Top = 37
          Width = 170
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
          TabOrder = 1
        end
        object dblcdDepto: TwwDBLookupComboDlg
          Left = 7
          Top = 83
          Width = 46
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          CharCase = ecUpperCase
          BorderStyle = bsNone
          GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
          GridColor = clWhite
          GridTitleAlignment = taLeftJustify
          Caption = 'Departamentos'
          MaxWidth = 0
          MaxHeight = 209
          Selected.Strings = (
            'DPTOID'#9'3'#9'Código'#9'F'
            'DPTODES'#9'30'#9'Departamento'#9'F')
          DataField = 'DPTOID'
          DataSource = DM1.dsDLabo
          LookupTable = DM1.cdsDpto
          LookupField = 'DPTOID'
          SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
          Color = 13165023
          Frame.Enabled = True
          Frame.FocusBorders = [efRightBorder, efBottomBorder]
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          ParentFont = False
          TabOrder = 4
          AutoDropDown = False
          ShowButton = True
          AllowClearKey = True
          UseTFields = False
          ShowMatchText = True
          OnExit = dblcdDeptoExit
        end
        object edtDepto: TEdit
          Left = 56
          Top = 83
          Width = 173
          Height = 23
          Color = 13165023
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object dblcdProv: TwwDBLookupComboDlg
          Left = 236
          Top = 83
          Width = 63
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
          Caption = 'Provincias'
          MaxWidth = 0
          MaxHeight = 209
          Selected.Strings = (
            'CIUDID'#9'3'#9'Código'#9'F'
            'CIUDDES'#9'30'#9'Ciudad'#9'F'
            'DPTOID'#9'3'#9'Dpto.'#9'F')
          DataField = 'CIUDID'
          DataSource = DM1.dsDLabo
          LookupTable = DM1.cdsProvin
          LookupField = 'CIUDID'
          SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
          Color = 13165023
          Frame.Enabled = True
          Frame.FocusBorders = [efRightBorder, efBottomBorder]
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          ParentFont = False
          TabOrder = 6
          AutoDropDown = False
          ShowButton = True
          AllowClearKey = True
          UseTFields = False
          ShowMatchText = True
          OnExit = dblcdProvExit
        end
        object edtProvincia: TEdit
          Left = 301
          Top = 83
          Width = 176
          Height = 23
          Color = 13165023
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object dblcdDist: TwwDBLookupComboDlg
          Left = 485
          Top = 83
          Width = 75
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
          Caption = 'Distritos'
          MaxWidth = 0
          MaxHeight = 209
          Selected.Strings = (
            'ZIPID'#9'4'#9'Código'#9'F'
            'ZIPDES'#9'50'#9'Distrito'#9'F'
            'CIUDID'#9'3'#9'Ciudad'#9'F'
            'DPTOID'#9'3'#9'Dpto.'#9'F')
          DataField = 'ZIPID'
          DataSource = DM1.dsDLabo
          LookupTable = DM1.cdsDist
          LookupField = 'ZIPID'
          SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
          Color = 13165023
          Frame.Enabled = True
          Frame.FocusBorders = [efRightBorder, efBottomBorder]
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          ParentFont = False
          TabOrder = 8
          AutoDropDown = False
          ShowButton = True
          AllowClearKey = True
          UseTFields = False
          ShowMatchText = True
          OnExit = dblcdDistExit
        end
        object edtDist: TEdit
          Left = 562
          Top = 83
          Width = 167
          Height = 23
          Color = 13165023
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
        object sbtnDLabAceptar: TfcShapeBtn
          Left = 647
          Top = 170
          Width = 32
          Height = 31
          Hint = 'Grabar Datos Laborales'
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
          TabOrder = 14
          TabStop = True
          TextOptions.Alignment = taCenter
          TextOptions.VAlignment = vaVCenter
          OnClick = sbtnDLabAceptarClick
        end
        object sbtnDLabCancelar: TfcShapeBtn
          Left = 687
          Top = 170
          Width = 32
          Height = 31
          Hint = 'Cancelar'
          Color = 10207162
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
          TabOrder = 15
          TabStop = True
          TextOptions.Alignment = taCenter
          TextOptions.VAlignment = vaVCenter
          OnClick = sbtnDLabCancelarClick
        end
        object edtCEdu: TwwDBEdit
          Left = 315
          Top = 35
          Width = 414
          Height = 21
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 13165023
          DataField = 'CEDUDES'
          DataSource = DM1.dsDLabo
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          Frame.Enabled = True
          Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
          ParentFont = False
          TabOrder = 3
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
      end
      object dblcDLabUPago: TwwDBLookupCombo
        Left = 18
        Top = 67
        Width = 48
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
          'UPAGOID'#9'3'#9'ID'#9'F'
          'UPAGONOM'#9'65'#9'DESCRIPCION'#9'F')
        DataField = 'UPAGOID'
        DataSource = DM1.dsDLabo
        LookupTable = DM1.cdsUPago
        LookupField = 'UPAGOID'
        Options = [loColLines, loTitles]
        Color = 13165023
        DropDownCount = 15
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 4
        AutoDropDown = True
        ShowButton = True
        UseTFields = False
        AllowClearKey = False
        OnExit = dblcDLabUPagoExit
        OnNotInList = dblcNotInList
      end
      object edtDLabUPago: TEdit
        Left = 68
        Top = 67
        Width = 205
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
        TabOrder = 5
      end
      object cbVigencia: TCheckBox
        Left = 571
        Top = 72
        Width = 65
        Height = 17
        Caption = 'Principal'
        TabOrder = 8
      end
      object dbeDLCodPago: TwwDBEdit
        Left = 132
        Top = 23
        Width = 105
        Height = 21
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 13165023
        DataField = 'ASOCODPAGO'
        DataSource = DM1.dsDLabo
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
      object dblcDLabUPro: TwwDBLookupCombo
        Left = 251
        Top = 23
        Width = 48
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
          'UPROID'#9'3'#9'ID'#9'F'
          'UPRONOM'#9'65'#9'DESCRIPCION'#9'F')
        DataField = 'UPROID'
        DataSource = DM1.dsDLabo
        LookupTable = DM1.cdsUPro
        LookupField = 'UPROID'
        Options = [loColLines, loTitles]
        Color = 13165023
        DropDownCount = 15
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 2
        AutoDropDown = True
        ShowButton = True
        UseTFields = False
        AllowClearKey = False
        OnExit = dblcDLabUProExit
        OnNotInList = dblcNotInList
      end
      object edtDLabUProc: TEdit
        Left = 301
        Top = 23
        Width = 205
        Height = 23
        CharCase = ecUpperCase
        Color = 13165023
        Enabled = False
        TabOrder = 3
      end
      object dblcDLabUSE: TwwDBLookupCombo
        Left = 284
        Top = 67
        Width = 51
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'USEID'#9'3'#9'ID'#9'F'
          'USENOM'#9'65'#9'DESCRIPCION'#9'F')
        DataField = 'USEID'
        DataSource = DM1.dsDLabo
        LookupTable = DM1.cdsUSES
        LookupField = 'USEID'
        Options = [loColLines, loTitles]
        Color = 13165023
        DropDownCount = 15
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 6
        AutoDropDown = True
        ShowButton = True
        SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
        UseTFields = False
        AllowClearKey = True
        ShowMatchText = True
        OnExit = dblcDLabUSEExit
        OnNotInList = dblcNotInList
      end
      object edtDLabUSE: TEdit
        Left = 337
        Top = 67
        Width = 205
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
        TabOrder = 7
      end
      object dbeCodigoModular: TwwDBEdit
        Left = 19
        Top = 23
        Width = 105
        Height = 21
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 13165023
        DataField = 'ASOCODMOD'
        DataSource = DM1.dsDLabo
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnExit = dbeCodigoModularExit
      end
    end
  end
end
