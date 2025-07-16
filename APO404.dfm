object FDatosContabilizacion: TFDatosContabilizacion
  Left = 203
  Top = 119
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Datos de la Contabilizacion'
  ClientHeight = 426
  ClientWidth = 410
  Color = 13165023
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlCabecera: TPanel
    Left = 5
    Top = 5
    Width = 400
    Height = 417
    BevelOuter = bvNone
    BorderWidth = 1
    Color = 10207162
    TabOrder = 0
    object TLabel
      Left = 10
      Top = 8
      Width = 179
      Height = 27
      AutoSize = False
      Caption = 'Contabilizacion'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object dbgDatos: TwwDBGrid
      Left = 9
      Top = 47
      Width = 384
      Height = 354
      Selected.Strings = (
        'FAMAPEPAT'#9'20'#9'APELLIDO PATERNO'#9'F'
        'FAMAPEMAT'#9'20'#9'AOPELLIDO MATERNO'#9'F'
        'FAMNOMBRE'#9'20'#9'NOMBRES'#9'F'
        'FAMAPENOM'#9'50'#9'APELLIDOS Y NOMBRES'#9'F'
        'FAMRELID'#9'2'#9'RELACION'#9'F'
        'FAMDIRECC'#9'75'#9'DIRECCION'#9'F'
        'DEPTID'#9'3'#9'DEPTO'#9'F'
        'PROVINID'#9'3'#9'PROVINCIA'#9'F'
        'DISTID'#9'3'#9'DISTRITO'#9'F'
        'FAMTELF'#9'15'#9'TELEFONO'#9'F'
        'FAMSEXO'#9'1'#9'SEXO'#9'F'
        'TIPDOCCOD'#9'2'#9'TIPO DOC'#9'F'
        'FAMNUMDOC'#9'15'#9'NUMERO DOC'#9'F'
        'ESTCIVID'#9'2'#9'EST CIVIL'#9'F'
        'FAMFECNAC'#9'18'#9'FECHA NACIMIENTO'#9'F')
      MemoAttributes = [mSizeable, mWordWrap, mGridShow]
      IniAttributes.Delimiter = ';;'
      TitleColor = 10207162
      FixedCols = 0
      ShowHorzScrollBar = True
      BorderStyle = bsNone
      Color = 13165023
      DataSource = DM1.dsQry
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
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'Comic Sans MS'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      UseTFields = False
      IndicatorColor = icBlack
    end
    object bbtnSalir: TfcShapeBtn
      Left = 300
      Top = 8
      Width = 31
      Height = 31
      Hint = 'Contabilizar'
      Color = 13165023
      DitherColor = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -8
      Font.Name = 'Comic Sans MS'
      Font.Style = []
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
      ParentFont = False
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      Shape = bsRoundRect
      ShowHint = True
      TabOrder = 1
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnSalirClick
    end
    object bbtnCancelar: TfcShapeBtn
      Left = 340
      Top = 8
      Width = 31
      Height = 31
      Hint = 'Cancelar Contabilización'
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
      TabOrder = 2
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnCancelarClick
    end
  end
end
