object FDevolucionAportes: TFDevolucionAportes
  Left = 369
  Top = 195
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Aportes'
  ClientHeight = 518
  ClientWidth = 774
  Color = 13165023
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
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
  TextHeight = 13
  object pnlCabecera: TPanel
    Left = 4
    Top = 3
    Width = 768
    Height = 511
    BevelOuter = bvNone
    BorderWidth = 1
    Color = 10207162
    TabOrder = 0
    object TLabel
      Left = 3
      Top = 8
      Width = 204
      Height = 27
      Caption = 'Devoluci'#243'n de Aportes'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object TLabel
      Left = 11
      Top = 321
      Width = 138
      Height = 21
      Caption = 'Aportes a Devolver'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object fcLabel3: TfcLabel
      Left = 100
      Top = 478
      Width = 93
      Height = 33
      Caption = 'Grabado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaTop
      Visible = False
    end
    object PageControl1: TPageControl
      Left = 4
      Top = 172
      Width = 760
      Height = 147
      ActivePage = TabSheet1
      MultiLine = True
      TabOrder = 5
      TabPosition = tpRight
      object TabSheet1: TTabSheet
        Caption = 'Reclamos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        object fcLabel2: TfcLabel
          Left = 696
          Top = 14
          Width = 35
          Height = 104
          Caption = 'Reclamos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -24
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TextOptions.Alignment = taLeftJustify
          TextOptions.Rotation = 270
          TextOptions.VAlignment = vaTop
        end
        object dbgDetReclamo: TwwDBGrid
          Left = 1
          Top = 1
          Width = 681
          Height = 132
          DisableThemesInTitle = False
          Selected.Strings = (
            'RECLID'#9'10'#9'Reclamo'#9'F'
            'APOANO'#9'4'#9'A'#241'o'#9'F'
            'APOMES'#9'4'#9'Mes'#9'F'
            'TMONID'#9'5'#9'Moneda'#9'F'
            'RECLMONTO'#9'10'#9'Monto'#9'F'
            'RECLSITID'#9'7'#9'Situaci'#243'n'#9'F'
            'RECLFINI'#9'13'#9'Fecha Reclamo'#9'F')
          MemoAttributes = [mSizeable, mWordWrap, mGridShow]
          IniAttributes.Delimiter = ';;'
          TitleColor = 10207162
          FixedCols = 0
          ShowHorzScrollBar = True
          BiDiMode = bdRightToLeftNoAlign
          ParentBiDiMode = False
          BorderStyle = bsNone
          Color = 13165023
          DataSource = DM1.dsDetReclamo
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          KeyOptions = [dgEnterToTab, dgAllowDelete]
          MultiSelectOptions = [msoAutoUnselect, msoShiftSelect]
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          ParentFont = False
          TabOrder = 0
          TitleAlignment = taCenter
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clNavy
          TitleFont.Height = -11
          TitleFont.Name = 'Comic Sans MS'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
          UseTFields = False
          OnDragOver = dbgDetReclamoDragOver
          OnEndDrag = dbgDetReclamoEndDrag
          OnMouseDown = dbgDetReclamoMouseDown
          object dbgDetReclamoIButton: TwwIButton
            Left = 0
            Top = 0
            Width = 22
            Height = 22
            AllowAllUp = True
            NumGlyphs = 2
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Aportes'
        ImageIndex = 1
        object fcLabel1: TfcLabel
          Left = 696
          Top = 17
          Width = 35
          Height = 93
          Caption = 'Aportes'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -24
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TextOptions.Alignment = taLeftJustify
          TextOptions.Rotation = 270
          TextOptions.VAlignment = vaTop
        end
        object dbgAportes: TwwDBGrid
          Left = 1
          Top = 1
          Width = 681
          Height = 132
          DisableThemesInTitle = False
          Selected.Strings = (
            'TRANSANO'#9'5'#9'A'#241'o'#9'F'
            'TRANSMES'#9'3'#9'Mes'#9'F'
            'FORPAGOABR'#9'15'#9'Forma~Pago'#9'F'
            'TMONID'#9'3'#9'Moneda'#9'F'
            'TRANSMTO'#9'12'#9'Monto'#9'F'
            'TRANSMTODEV'#9'12'#9'Monto~Devuelto'#9'F'
            'APOFDEV'#9'6'#9'Devuelto(S/N)'#9'F'
            'APOFNP'#9'1'#9'No Procede(S/N)'#9'F')
          MemoAttributes = [mSizeable, mWordWrap, mGridShow]
          IniAttributes.Delimiter = ';;'
          TitleColor = 10207162
          FixedCols = 0
          ShowHorzScrollBar = True
          BiDiMode = bdRightToLeftNoAlign
          ParentBiDiMode = False
          BorderStyle = bsNone
          Color = 13165023
          DataSource = DM1.dsTransacciones
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          KeyOptions = [dgEnterToTab, dgAllowDelete]
          MultiSelectOptions = [msoAutoUnselect, msoShiftSelect]
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
          OnDragOver = dbgAportesDragOver
          OnEndDrag = dbgAportesEndDrag
          OnMouseDown = dbgAportesMouseDown
        end
      end
    end
    object Z2bbtnAceptar: TfcShapeBtn
      Left = 691
      Top = 477
      Width = 31
      Height = 32
      Hint = 'Devuelve Aporte'
      Color = 13165023
      DitherColor = clWhite
      Enabled = False
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
      TabOrder = 3
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = Z2bbtnAceptarClick
    end
    object Z2bbtnCancel: TfcShapeBtn
      Left = 732
      Top = 477
      Width = 31
      Height = 36
      Hint = 'Cancelar'
      Cancel = True
      Color = 13165023
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
      TabOrder = 4
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = Z2bbtnCancelClick
    end
    object dbgDevolver: TwwDBGrid
      Left = 8
      Top = 344
      Width = 754
      Height = 129
      DisableThemesInTitle = False
      ControlInfoInDataset = False
      ControlType.Strings = (
        'TIPODEV;CheckBox;1;0')
      Selected.Strings = (
        'DEVID'#9'10'#9'ID'#9'F'
        'APOANO'#9'8'#9'A'#241'o del ~Aporte'#9'F'
        'APOMES'#9'6'#9'Mes del ~Aporte'#9'F'
        'TMONID'#9'5'#9'Moneda'#9'F'
        'APOMONTO'#9'12'#9'Monto ~del Aporte'#9'F'
        'DEVMTO'#9'12'#9'Monto~Devuelto'#9'F'
        'DEVMOTID'#9'8'#9'Motivo ~Devoluci'#243'n'#9'F'
        'TIPODEV'#9'12'#9'Devoluci'#243'n ~Reclamos'#9'F')
      MemoAttributes = [mSizeable, mWordWrap, mGridShow]
      IniAttributes.Delimiter = ';;'
      TitleColor = 10207162
      FixedCols = 0
      ShowHorzScrollBar = True
      BorderStyle = bsNone
      Color = 13165023
      DataSource = DM1.dsDevolucion
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      KeyOptions = [dgEnterToTab, dgAllowDelete]
      MultiSelectOptions = [msoAutoUnselect, msoShiftSelect]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgMultiSelect, dgShowFooter]
      ParentFont = False
      TabOrder = 1
      TitleAlignment = taCenter
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Comic Sans MS'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      UseTFields = False
      OnDblClick = dbgDevolverDblClick
      OnDragOver = dbgDevolverDragOver
      OnEndDrag = dbgDevolverEndDrag
      OnMouseDown = dbgDevolverMouseDown
      object dbgDevolverIButton: TwwIButton
        Left = 0
        Top = 0
        Width = 22
        Height = 35
        AllowAllUp = True
        NumGlyphs = 2
      end
    end
    object Z2bbtnNuevo: TfcShapeBtn
      Left = 648
      Top = 477
      Width = 31
      Height = 32
      Hint = 'Nueva Devoluci'#243'n'
      Color = 13165023
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
      TabOrder = 2
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = Z2bbtnNuevoClick
    end
    object pnlInicio: TPanel
      Left = 212
      Top = 4
      Width = 552
      Height = 68
      Color = 13165023
      TabOrder = 0
      object TLabel
        Left = 278
        Top = 13
        Width = 38
        Height = 15
        Caption = 'U. Pago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 281
        Top = 41
        Width = 35
        Height = 15
        Caption = 'C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 4
        Top = 41
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
        Left = 4
        Top = 13
        Width = 54
        Height = 15
        Caption = 'U. Proceso'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object dblcdUpro: TwwDBEdit
        Left = 67
        Top = 8
        Width = 44
        Height = 21
        TabStop = False
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'UPROID'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnEnter = EnterpnlAsociado
      end
      object bbtnSigue: TfcShapeBtn
        Left = 513
        Top = 32
        Width = 31
        Height = 32
        Hint = 'Borra Cabecera'
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
        OnClick = bbtnSigueClick
      end
      object btnAso: TBitBtn
        Left = 456
        Top = 37
        Width = 24
        Height = 23
        Hint = 'Busqueda Directa de Asociado'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        TabStop = False
        OnClick = btnAsoClick
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
          000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000
          00000000000000FFFFFF000000FFFFFF000000000000000000FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF000000FFFFFF000000000000000000FFFFFF000000FFFFFF
          000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF0000
          00000000000000FFFFFF000000000000000000000000000000000000000000FF
          FFFF000000000000000000000000000000000000000000FFFFFF000000000000
          FFFFFF000000000000000000000000000000000000FFFFFF0000000000000000
          00000000000000FFFFFF000000000000FFFFFF000000000000000000C0C7C000
          0000000000FFFFFF000000000000000000000000000000FFFFFF000000000000
          FFFFFF000000000000000000C0C7C0000000000000FFFFFF0000000000000000
          00000000000000FFFFFFFFFFFF00000000000000000000000000000000000000
          0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF
          000000FFFFFF000000000000000000FFFFFF000000FFFFFF0000000000000000
          00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000FF
          FFFF000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000000000000000FFFFFFFFFFFFFFFFFF000000000000000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000000FFFFFFFF
          FFFFFFFFFF000000FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000000000000000FFFFFFFFFFFFFFFFFF000000000000000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      object edtUPro: TwwDBEdit
        Left = 117
        Top = 8
        Width = 157
        Height = 21
        TabStop = False
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'UPRONOM'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnEnter = EnterpnlAsociado
      end
      object edtUPago: TwwDBEdit
        Left = 387
        Top = 9
        Width = 157
        Height = 21
        TabStop = False
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'UPAGONOM'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnEnter = EnterpnlAsociado
      end
      object edtUse: TwwDBEdit
        Left = 117
        Top = 39
        Width = 157
        Height = 21
        TabStop = False
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'USENOM'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnEnter = EnterpnlAsociado
      end
      object dblcdCodigo: TwwDBComboDlg
        Left = 333
        Top = 37
        Width = 118
        Height = 21
        OnCustomDlg = dblcdCodigoCustomDlg
        ShowButton = True
        Style = csDropDown
        BorderStyle = bsNone
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        WordWrap = False
        UnboundDataType = wwDefault
        OnExit = dblcdCodigoExit
      end
      object dblcdUse: TwwDBEdit
        Left = 67
        Top = 38
        Width = 44
        Height = 21
        TabStop = False
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'USEID'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnEnter = EnterpnlAsociado
      end
      object dblcdUPago: TwwDBEdit
        Left = 333
        Top = 8
        Width = 44
        Height = 21
        TabStop = False
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'UPAGOID'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnEnter = EnterpnlAsociado
      end
    end
    object wwDBEdit1: TwwDBEdit
      Left = 40
      Top = 38
      Width = 150
      Height = 32
      TabStop = False
      BorderStyle = bsNone
      Color = 10207162
      DataField = 'DEVID'
      DataSource = DM1.dsDevolucion
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object Panel2: TPanel
      Left = 4
      Top = 77
      Width = 759
      Height = 89
      Color = 13165023
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      object TLabel
        Left = 4
        Top = 8
        Width = 80
        Height = 15
        Caption = 'C'#243'digo Modular'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 190
        Top = 8
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
      object TLabel
        Left = 468
        Top = 35
        Width = 71
        Height = 15
        Caption = 'F. Desembolso'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object Label4: TLabel
        Left = 451
        Top = 63
        Width = 70
        Height = 15
        Caption = 'Lugar de Giro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 4
        Top = 35
        Width = 43
        Height = 15
        Caption = 'Fecha E.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 190
        Top = 35
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
      object TLabel
        Left = 340
        Top = 35
        Width = 32
        Height = 15
        Caption = 'Monto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 4
        Top = 63
        Width = 65
        Height = 15
        Caption = 'Caja/Bancos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 269
        Top = 63
        Width = 37
        Height = 15
        Caption = 'Cta.Cte'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object TLabel
        Left = 574
        Top = 8
        Width = 35
        Height = 15
        Caption = 'Cuenta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object dbeCodigoModular: TwwDBEdit
        Left = 95
        Top = 5
        Width = 89
        Height = 21
        TabStop = False
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'ASOCODMOD'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnEnter = OnEnter
      end
      object dbeAsoNom: TwwDBEdit
        Left = 244
        Top = 5
        Width = 317
        Height = 21
        TabStop = False
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 13165023
        DataField = 'ASOAPENOM'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.FocusBorders = [efRightBorder, efBottomBorder]
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnEnter = OnEnter
      end
      object dblcFormaDesem: TwwDBLookupCombo
        Left = 559
        Top = 32
        Width = 47
        Height = 21
        CharCase = ecUpperCase
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'TIPDESEID'#9'4'#9'C'#243'digo'#9'F'
          'TIPDESEDES'#9'35'#9'Descripci'#243'n'#9'F')
        DataField = 'TIPDESEID'
        DataSource = DM1.dsTransDevol
        LookupTable = DM1.cdsTipDesem
        LookupField = 'TIPDESEID'
        Options = [loColLines, loTitles]
        Color = 13165023
        DropDownCount = 15
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        MaxLength = 3
        TabOrder = 5
        AutoDropDown = True
        ShowButton = True
        SearchDelay = 2
        PreciseEditRegion = False
        AllowClearKey = False
        OnEnter = dblcFormaDesemEnter
        OnExit = dblcFormaDesemExit
        OnKeyPress = OnKeyPress
      end
      object dblcAgencia: TwwDBLookupComboDlg
        Left = 536
        Top = 60
        Width = 89
        Height = 21
        CharCase = ecUpperCase
        BorderStyle = bsNone
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'USE'
        MaxWidth = 0
        MaxHeight = 209
        SearchDelay = 2
        Selected.Strings = (
          'AGENBCOID'#9'8'#9'Agencia ID'#9'F'
          'AGENBCODES'#9'30'#9'Descripci'#243'n'#9'F')
        DataField = 'AGENBANCOID'
        DataSource = DM1.dsTransDevol
        LookupTable = DM1.cdsAgenciaBco
        LookupField = 'AGENBCOID'
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 10
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
        ShowMatchText = True
        OnEnter = dblcAgenciaEnter
        OnExit = dblcAgenciaExit
        OnKeyPress = OnKeyPress
      end
      object dbeMonedaCab: TwwDBEdit
        Left = 244
        Top = 32
        Width = 85
        Height = 21
        TabStop = False
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'ASOCODMOD'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnEnter = OnEnter
      end
      object dbeMonto: TwwDBEdit
        Left = 380
        Top = 32
        Width = 85
        Height = 21
        TabStop = False
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'TRANSMTO'
        DataSource = DM1.dsTransDevol
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnEnter = OnEnter
      end
      object edtAgencia: TwwDBEdit
        Left = 632
        Top = 60
        Width = 121
        Height = 21
        TabStop = False
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 11
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object edtFormaDesem: TwwDBEdit
        Left = 613
        Top = 32
        Width = 140
        Height = 21
        TabStop = False
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'TIPDESEABR'
        DataSource = DM1.dsTransDevol
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 6
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbdtpFechaDev: TwwDBDateTimePicker
        Left = 95
        Top = 32
        Width = 89
        Height = 21
        BorderStyle = bsNone
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Color = 13165023
        DataField = 'TRANSFOPE'
        DataSource = DM1.dsTransDevol
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
        TabOrder = 2
        DisplayFormat = 'dd/mm/yyyy'
      end
      object dblcBanco: TwwDBLookupCombo
        Left = 95
        Top = 58
        Width = 50
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'BANCOID'#9'3'#9'Id'#9'F'
          'BANCONOM'#9'40'#9'Banco'#9'F')
        DataField = 'BANCOID'
        DataSource = DM1.dsTransDevol
        LookupTable = DM1.cdsBcos
        LookupField = 'BANCOID'
        Options = [loColLines, loRowLines, loTitles]
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        MaxLength = 2
        ParentFont = False
        TabOrder = 7
        AutoDropDown = False
        ShowButton = True
        SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
        PreciseEditRegion = False
        AllowClearKey = True
        ShowMatchText = True
        OnEnter = dblcBancoEnter
        OnExit = dblcBancoExit
        OnKeyPress = OnKeyPress
      end
      object dblcCCBco: TwwDBLookupCombo
        Left = 325
        Top = 58
        Width = 117
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'CCBCOID'#9'30'#9'Cuenta Corriente del Banco'#9'F'
          'CCBCODES'#9'40'#9'Descripci'#243'n'#9'F')
        DataField = 'CCBCOID'
        DataSource = DM1.dsTransDevol
        LookupTable = DM1.cdsCbcos
        LookupField = 'CCBCOID'
        Options = [loColLines, loRowLines, loTitles]
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        MaxLength = 30
        ParentFont = False
        TabOrder = 9
        AutoDropDown = False
        ShowButton = True
        SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
        PreciseEditRegion = False
        AllowClearKey = True
        ShowMatchText = True
        OnEnter = dblcCCBcoEnter
        OnExit = dblcCCBcoExit
        OnKeyPress = OnKeyPress
      end
      object dbeBanco: TwwDBEdit
        Left = 151
        Top = 59
        Width = 109
        Height = 21
        TabStop = False
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeCuentaAsociado: TwwDBEdit
        Left = 620
        Top = 5
        Width = 133
        Height = 21
        TabStop = False
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'ASOCODMOD'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        ReadOnly = True
        TabOrder = 12
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnEnter = OnEnter
      end
      object pnlCajaDerrama: TPanel
        Left = 265
        Top = 54
        Width = 489
        Height = 29
        BiDiMode = bdLeftToRight
        Color = 13165023
        Ctl3D = True
        ParentBiDiMode = False
        ParentCtl3D = False
        TabOrder = 13
        Visible = False
        object Label12: TLabel
          Left = 7
          Top = 8
          Width = 86
          Height = 13
          Caption = 'Desembolsar En : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBLkOfiDes: TwwDBLookupCombo
          Left = 101
          Top = 3
          Width = 44
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'OFDESID'#9'2'#9'Codigo'#9'F'
            'OFDESNOM'#9'25'#9'Descripci'#243'n'#9'F')
          LookupTable = DM1.cdsOfDes
          LookupField = 'OFDESID'
          Options = [loColLines, loRowLines, loTitles]
          ParentFont = False
          TabOrder = 0
          AutoDropDown = False
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          OnChange = DBLkOfiDesChange
        end
        object EdtOfiDes: TEdit
          Left = 152
          Top = 3
          Width = 151
          Height = 24
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
      end
    end
    object Z2bbtnImpre: TfcShapeBtn
      Left = 608
      Top = 477
      Width = 31
      Height = 32
      Color = 13165023
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
      TabOrder = 8
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = Z2bbtnImprimirClick
    end
  end
  object pnlAportes: TPanel
    Left = 136
    Top = 193
    Width = 510
    Height = 253
    BorderStyle = bsSingle
    Color = 10207162
    TabOrder = 1
    Visible = False
    object StaticText2: TStaticText
      Left = 1
      Top = 1
      Width = 504
      Height = 19
      Align = alTop
      Alignment = taCenter
      BorderStyle = sbsSunken
      Caption = 'Aportes'
      Color = clActiveCaption
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
    object Panel5: TPanel
      Left = 1
      Top = 20
      Width = 504
      Height = 189
      Align = alTop
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
        Left = 11
        Top = 42
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
      object TLabel
        Left = 102
        Top = 42
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
        Left = 175
        Top = 42
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
      object TLabel
        Left = 341
        Top = 42
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
      object TLabel
        Left = 175
        Top = 77
        Width = 39
        Height = 15
        Caption = 'Motivo '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 10
        Top = 77
        Width = 90
        Height = 15
        Caption = 'Monto a Devolver'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object Label2: TLabel
        Left = 10
        Top = 109
        Width = 134
        Height = 15
        Caption = 'Resultado de la Conclusi'#243'n'
      end
      object TLabel
        Left = 10
        Top = 9
        Width = 83
        Height = 15
        Caption = 'Tipo Devoluci'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object dbeMontoDevoluc: TwwDBEdit
        Left = 119
        Top = 74
        Width = 40
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'DEVMTO'
        DataSource = DM1.dsDevolucion
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        Picture.PictureMask = '*12[#][.*2[#]]'
        TabOrder = 5
        UnboundDataType = wwDefault
        UsePictureMask = False
        WantReturns = False
        WordWrap = False
        OnEnter = dbeMontoDevolucEnter
        OnExit = dbeMontoDevolucExit
        OnKeyPress = dbeMontoDevolucKeyPress
      end
      object spdAno: TwwDBSpinEdit
        Left = 39
        Top = 39
        Width = 48
        Height = 21
        Increment = 1.000000000000000000
        MaxValue = 9999.000000000000000000
        MinValue = 1900.000000000000000000
        Value = 1900.000000000000000000
        AutoFillDate = False
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'APOANO'
        DataSource = DM1.dsDevolucion
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 1
        UnboundDataType = wwDefault
      end
      object spdMes: TwwDBSpinEdit
        Left = 127
        Top = 39
        Width = 33
        Height = 21
        Increment = 1.000000000000000000
        MaxValue = 12.000000000000000000
        MinValue = 1.000000000000000000
        Value = 1.000000000000000000
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'APOMES'
        DataSource = DM1.dsDevolucion
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 2
        UnboundDataType = wwDefault
        OnExit = spdMesExit
      end
      object dblcMoneda: TwwDBLookupCombo
        Left = 372
        Top = 68
        Width = 41
        Height = 21
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        DataField = 'TMONID'
        DataSource = DM1.dsDevolucion
        Options = [loColLines, loTitles]
        Color = 13165023
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 3
        Visible = False
        AutoDropDown = True
        ShowButton = True
        SearchDelay = 2
        PreciseEditRegion = False
        AllowClearKey = False
        OnExit = dblcMonedaExit
      end
      object dbeMtoAporte: TwwDBEdit
        Left = 415
        Top = 39
        Width = 71
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'APOMONTO'
        DataSource = DM1.dsDevolucion
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        Picture.PictureMask = '*12[#][.*2[#]]'
        TabOrder = 4
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dblcMotDev: TwwDBLookupCombo
        Left = 220
        Top = 74
        Width = 42
        Height = 21
        CharCase = ecUpperCase
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'RECLMOTID'#9'2'#9'ID'#9'F'
          'RECLMOTDES'#9'30'#9'Motivo Devoluci'#243'n'#9'F')
        DataField = 'DEVMOTID'
        DataSource = DM1.dsDevolucion
        LookupTable = DM1.cdsReclMotivo
        LookupField = 'RECLMOTID'
        Options = [loColLines, loTitles]
        Color = 13165023
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        TabOrder = 6
        AutoDropDown = True
        ShowButton = True
        SearchDelay = 2
        PreciseEditRegion = False
        AllowClearKey = False
        OnEnter = dblcMotDevEnter
        OnExit = dblcMotDevExit
      end
      object dbmresultado: TDBMemo
        Left = 18
        Top = 128
        Width = 481
        Height = 54
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'DEVRC'
        DataSource = DM1.dsDevolucion
        MaxLength = 1000
        ScrollBars = ssVertical
        TabOrder = 7
      end
      object dbcTipoDevolucion: TwwDBComboBox
        Left = 125
        Top = 3
        Width = 209
        Height = 21
        TabStop = False
        ShowButton = False
        Style = csSimple
        MapList = True
        AllowClearKey = False
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'TIPODEV'
        DataSource = DM1.dsDevolucion
        DropDownCount = 8
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ItemHeight = 0
        Items.Strings = (
          'Por Aportes'#9'0'
          'Por Reclamos'#9'1')
        ParentFont = False
        ReadOnly = True
        Sorted = False
        TabOrder = 0
        UnboundDataType = wwDefault
      end
      object edtMotDev: TwwDBEdit
        Left = 265
        Top = 74
        Width = 182
        Height = 21
        TabStop = False
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnEnter = OnEnter
      end
      object edtMoneda: TwwDBEdit
        Left = 220
        Top = 39
        Width = 114
        Height = 21
        TabStop = False
        BorderStyle = bsNone
        Color = 13165023
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        ReadOnly = True
        TabOrder = 9
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnEnter = OnEnter
      end
    end
    object bbtnCierraImp: TfcShapeBtn
      Left = 491
      Top = 3
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
    object bbtnAceptar: TfcShapeBtn
      Left = 424
      Top = 213
      Width = 31
      Height = 32
      Hint = 'Borra Cabecera'
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
      TabOrder = 3
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnAceptarClick
    end
    object bbtnCancelar: TfcShapeBtn
      Left = 464
      Top = 213
      Width = 31
      Height = 32
      Hint = 'Acepta Cabecera'
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
      TabOrder = 4
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = bbtnCancelarClick
    end
  end
  object ppReport1: TppReport
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
    Template.FileName = 'C:\SOLFormatos\Apo\Dema\ReciboAporte.rtm'
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppReport1PreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 568
    Top = 482
    Version = '7.02'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 265907
      mmPrintPosition = 0
      object ppLabel8: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 10cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 5027
        mmTop = 2910
        mmWidth = 71438
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        AutoSize = False
        Caption = 'Jr. Gregorio Escobedo 598 Jes'#250's Mar'#237'a - Telf. 463-5262'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 5027
        mmTop = 12965
        mmWidth = 71438
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        AutoSize = False
        Caption = 'Equipo de Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 5027
        mmTop = 7938
        mmWidth = 71438
        BandType = 0
      end
      object pplblNombreRecibi: TppLabel
        UserName = 'lblNombreRecibi'
        AutoSize = False
        Caption = 'Recib'#237' Conforme'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 142082
        mmTop = 237332
        mmWidth = 52123
        BandType = 0
      end
      object pplblDNIRecibi: TppLabel
        UserName = 'lblDNIRecibi'
        AutoSize = False
        Caption = 'Cajero(a)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 142082
        mmTop = 241565
        mmWidth = 52123
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        AutoSize = False
        Caption = 'POR CONCEPTO    : DEVOLUCI'#211'N DE APORTES DE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 11377
        mmTop = 65617
        mmWidth = 151077
        BandType = 0
      end
      object pplbldetalle: TppMemo
        UserName = 'lbldetalle'
        Caption = 'lbldetalle'
        CharWrap = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 94192
        mmLeft = 11113
        mmTop = 73025
        mmWidth = 179123
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object pplblRecibiConforme: TppLabel
        UserName = 'lblRecibiConforme'
        AutoSize = False
        Caption = 'Recib'#237' Conforme'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 142082
        mmTop = 246328
        mmWidth = 52123
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'lblNombre1'
        AutoSize = False
        Caption = 'Revisado por'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 7938
        mmTop = 206375
        mmWidth = 52123
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label50'
        AutoSize = False
        Caption = 'Contabilizado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 74613
        mmTop = 206375
        mmWidth = 52123
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label52'
        AutoSize = False
        Caption = 'Vo.Bo.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 142082
        mmTop = 206375
        mmWidth = 52123
        BandType = 0
      end
      object pplblHechopor: TppLabel
        UserName = 'lblHechopor'
        AutoSize = False
        Caption = 'Revisado por'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 7938
        mmTop = 258763
        mmWidth = 52123
        BandType = 0
      end
      object ppLabel56: TppLabel
        UserName = 'Label56'
        AutoSize = False
        Caption = 'TOTAL DEVOLUCI'#211'N   S/...:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 7673
        mmTop = 178859
        mmWidth = 52123
        BandType = 0
      end
      object pplblTotal: TppLabel
        UserName = 'lblTotal'
        AutoSize = False
        Caption = 'TOTAL DEVOLUCI'#211'N   S/...:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 143140
        mmTop = 178859
        mmWidth = 52123
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label401'
        AutoSize = False
        Caption = 'Fecha :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 158486
        mmTop = 2910
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'Hora  :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 158486
        mmTop = 7938
        mmWidth = 14288
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175948
        mmTop = 2910
        mmWidth = 16933
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175948
        mmTop = 7938
        mmWidth = 21167
        BandType = 0
      end
      object pplblTitulo: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'Label1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 5027
        mmTop = 22225
        mmWidth = 192617
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'FEC. DOCUMENTO.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 5292
        mmTop = 34925
        mmWidth = 35719
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = 'SE'#209'OR(A).......:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 5292
        mmTop = 39423
        mmWidth = 35719
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Caption = 'COD.MODULAR....:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 5292
        mmTop = 43921
        mmWidth = 35719
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Caption = 'DEPARTAMENTO...:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 5292
        mmTop = 48683
        mmWidth = 35719
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        AutoSize = False
        Caption = 
          '________________________________________________________________' +
          '________________________________________________________________' +
          '__'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 5556
        mmLeft = 5292
        mmTop = 58473
        mmWidth = 197380
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        AutoSize = False
        Caption = 'DESEMBOLSO.....:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 5292
        mmTop = 57150
        mmWidth = 35719
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label102'
        AutoSize = False
        Caption = 
          '________________________________________________________________' +
          '________________________________________________________________' +
          '__'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 5556
        mmLeft = 5292
        mmTop = 50800
        mmWidth = 197380
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label103'
        AutoSize = False
        Caption = 
          '________________________________________________________________' +
          '________________________________________________________________' +
          '__'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 5556
        mmLeft = 5292
        mmTop = 173567
        mmWidth = 197380
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        AutoSize = False
        Caption = 
          '________________________________________________________________' +
          '________________________________________________________________' +
          '__'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 5556
        mmLeft = 5292
        mmTop = 180711
        mmWidth = 197380
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        AutoSize = False
        Caption = '____________________________________'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 5556
        mmLeft = 7938
        mmTop = 201084
        mmWidth = 52123
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        AutoSize = False
        Caption = '____________________________________'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 5556
        mmLeft = 74613
        mmTop = 201084
        mmWidth = 52123
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        AutoSize = False
        Caption = '____________________________________'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 5556
        mmLeft = 142082
        mmTop = 201084
        mmWidth = 52123
        BandType = 0
      end
      object pplblLineaRecibiConforme: TppLabel
        UserName = 'lblLineaRecibiConforme'
        AutoSize = False
        Caption = '____________________________________'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 5556
        mmLeft = 142082
        mmTop = 232305
        mmWidth = 52123
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        AutoSize = False
        Caption = '____________________________________'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 5556
        mmLeft = 7938
        mmTop = 254001
        mmWidth = 52652
        BandType = 0
      end
      object pplblDesembolso: TppLabel
        UserName = 'lblDesembolso'
        AutoSize = False
        Caption = 'DESEMBOLSO.....:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 41540
        mmTop = 57415
        mmWidth = 160073
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        AutoSize = False
        Caption = 'COD.PAGO.......:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 115359
        mmTop = 43921
        mmWidth = 35719
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        AutoSize = False
        Caption = 'U. DE PROCESO..:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 115359
        mmTop = 48683
        mmWidth = 35719
        BandType = 0
      end
      object pplblCodigoModular: TppLabel
        UserName = 'lblCodigoModular'
        AutoSize = False
        Caption = 'COD.MODULAR....:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 41804
        mmTop = 43921
        mmWidth = 72761
        BandType = 0
      end
      object pplblDepartamento: TppLabel
        UserName = 'lblDepartamento'
        AutoSize = False
        Caption = 'COD.MODULAR....:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 41804
        mmTop = 48683
        mmWidth = 72761
        BandType = 0
      end
      object pplblCodPago: TppLabel
        UserName = 'Label201'
        AutoSize = False
        Caption = 'COD.PAGO.......:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 151607
        mmTop = 43921
        mmWidth = 46038
        BandType = 0
      end
      object pplblUProceso: TppLabel
        UserName = 'lblUProceso'
        AutoSize = False
        Caption = 'U. DE PROCESO..:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 151607
        mmTop = 48683
        mmWidth = 46038
        BandType = 0
      end
      object pplblFecha: TppLabel
        UserName = 'lblFecha'
        AutoSize = False
        Caption = 'COD.MODULAR....:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 41804
        mmTop = 34925
        mmWidth = 72761
        BandType = 0
      end
      object pplblNombre: TppLabel
        UserName = 'lblNombre'
        AutoSize = False
        Caption = 'COD.MODULAR....:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 41804
        mmTop = 39423
        mmWidth = 155840
        BandType = 0
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
