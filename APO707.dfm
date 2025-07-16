object FSeleccio: TFSeleccio
  Left = 408
  Top = 153
  BorderStyle = bsDialog
  Caption = 'FSeleccio'
  ClientHeight = 567
  ClientWidth = 519
  Color = 13165023
  Font.Charset = ANSI_CHARSET
  Font.Color = clNavy
  Font.Height = -11
  Font.Name = 'Comic Sans MS'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 15
  object Bevel1: TBevel
    Left = 7
    Top = 514
    Width = 509
    Height = 43
    Shape = bsFrame
  end
  object pnlPendientes: TPanel
    Left = 8
    Top = 8
    Width = 507
    Height = 241
    BevelInner = bvRaised
    BorderStyle = bsSingle
    Caption = 'pnlPendientes'
    TabOrder = 0
    object Label16: TLabel
      Left = 2
      Top = 2
      Width = 499
      Height = 16
      Align = alTop
      Alignment = taCenter
      Caption = 'Cuentas'
      Color = clActiveCaption
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object dbgSel: TwwDBGrid
      Left = 2
      Top = 18
      Width = 499
      Height = 217
      Selected.Strings = (
        'CUENTAID'#9'15'#9'Cuenta'
        'CTADES'#9'40'#9'Descripción'
        'CTAABR'#9'20'#9'Abr.')
      MemoAttributes = [mSizeable, mWordWrap, mGridShow]
      IniAttributes.Delimiter = ';;'
      TitleColor = 11974251
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alClient
      Color = clInfoBk
      DataSource = dsDocs1
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      KeyOptions = [dgEnterToTab]
      MultiSelectOptions = [msoShiftSelect]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgMultiSelect]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -12
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = True
      UseTFields = False
      OnTitleButtonClick = dbgSelTitleButtonClick
      OnDragOver = dbgSelDragOver
      OnEndDrag = dbgSelEndDrag
      OnEnter = dbgSelEnter
      OnMouseDown = dbgSelMouseDown
      IndicatorColor = icBlack
    end
    object pnlBusca: TPanel
      Left = 96
      Top = 88
      Width = 281
      Height = 41
      Color = 10207162
      TabOrder = 1
      Visible = False
      object lblBusca: TLabel
        Left = 12
        Top = 13
        Width = 146
        Height = 15
        Caption = 'Nombre de Clase de Auxiliar'
      end
      object isBusca: TwwIncrementalSearch
        Left = 160
        Top = 8
        Width = 105
        Height = 23
        AutoSelect = False
        AutoSize = False
        CharCase = ecUpperCase
        TabOrder = 0
        OnKeyPress = isBuscaKeyPress
      end
    end
  end
  object pnlDocCanje: TPanel
    Left = 6
    Top = 253
    Width = 509
    Height = 257
    BevelInner = bvRaised
    BorderStyle = bsSingle
    Caption = 'pnlDocCanje'
    TabOrder = 1
    object Label17: TLabel
      Left = 2
      Top = 2
      Width = 501
      Height = 16
      Align = alTop
      Alignment = taCenter
      Caption = 'Cuentas Escogidas'
      Color = clActiveCaption
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object dbgDoc: TwwDBGrid
      Left = 2
      Top = 18
      Width = 501
      Height = 233
      Selected.Strings = (
        'CUENTAID'#9'15'#9'Cuenta'
        'CTADES'#9'40'#9'Descripción'
        'CTAABR'#9'20'#9'Abr.')
      IniAttributes.Delimiter = ';;'
      TitleColor = 11974251
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alClient
      DataSource = dsDocClone1
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      KeyOptions = []
      MultiSelectOptions = [msoShiftSelect]
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgMultiSelect]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -12
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      UseTFields = False
      OnDragOver = dbgDocDragOver
      OnEndDrag = dbgDocEndDrag
      OnMouseDown = dbgDocMouseDown
      IndicatorColor = icBlack
    end
  end
  object Z2bbtnAceptar: TfcShapeBtn
    Left = 414
    Top = 522
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
    TabOrder = 2
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    OnClick = Z2bbtnAceptarClick
  end
  object Z2bbtnCancel: TfcShapeBtn
    Left = 454
    Top = 522
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
    TabOrder = 3
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    OnClick = Z2bbtnCancelClick
  end
  object cdsClone1: TwwClientDataSet
    Aggregates = <>
    Filter = 'FLAG='#39'S'#39
    Filtered = True
    Params = <>
    ValidateWithMask = True
    Left = 66
    Top = 319
  end
  object dsDocClone1: TwwDataSource
    DataSet = cdsClone1
    Left = 140
    Top = 322
  end
  object dsDocs1: TwwDataSource
    DataSet = cds1
    Left = 420
    Top = 284
  end
  object cds1: TwwClientDataSet
    Aggregates = <>
    Filter = 'FLAG='#39'N'#39
    Filtered = True
    Params = <>
    ProviderName = 'prvReporte3'
    RemoteServer = DM1.DCOM1
    ValidateWithMask = True
    Left = 346
    Top = 289
  end
  object cdsClone2: TwwClientDataSet
    Aggregates = <>
    Filter = 'FLAG='#39'S'#39
    Filtered = True
    Params = <>
    ValidateWithMask = True
    Left = 64
    Top = 367
  end
  object cdsClone3: TwwClientDataSet
    Aggregates = <>
    Filter = 'FLAG='#39'S'#39
    Filtered = True
    Params = <>
    ValidateWithMask = True
    Left = 56
    Top = 415
  end
  object cdsClone4: TwwClientDataSet
    Aggregates = <>
    Filter = 'FLAG='#39'S'#39
    Filtered = True
    Params = <>
    ValidateWithMask = True
    Left = 48
    Top = 463
  end
  object dsDocClone2: TwwDataSource
    DataSet = cdsClone2
    Left = 144
    Top = 375
  end
  object dsDocClone3: TwwDataSource
    DataSet = cdsClone3
    Left = 152
    Top = 423
  end
  object dsDocClone4: TwwDataSource
    DataSet = cdsClone4
    Left = 152
    Top = 479
  end
  object cds2: TwwClientDataSet
    Aggregates = <>
    Filter = 'FLAG='#39'N'#39
    Filtered = True
    Params = <>
    ProviderName = 'prvReporte3'
    RemoteServer = DM1.DCOM1
    ValidateWithMask = True
    Left = 352
    Top = 343
  end
  object cds3: TwwClientDataSet
    Aggregates = <>
    Filter = 'FLAG='#39'N'#39
    Filtered = True
    Params = <>
    ProviderName = 'prvReporte3'
    RemoteServer = DM1.DCOM1
    ValidateWithMask = True
    Left = 352
    Top = 391
  end
  object cds4: TwwClientDataSet
    Aggregates = <>
    Filter = 'FLAG='#39'N'#39
    Filtered = True
    Params = <>
    ProviderName = 'prvReporte3'
    RemoteServer = DM1.DCOM1
    ValidateWithMask = True
    Left = 344
    Top = 455
  end
  object dsDocs2: TwwDataSource
    DataSet = cds2
    Left = 432
    Top = 343
  end
  object dsDocs3: TwwDataSource
    DataSet = cds3
    Left = 432
    Top = 399
  end
  object dsDocs4: TwwDataSource
    DataSet = cds4
    Left = 432
    Top = 463
  end
end
