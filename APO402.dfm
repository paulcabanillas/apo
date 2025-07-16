object FContabilizacion: TFContabilizacion
  Left = 253
  Top = 136
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Aportes'
  ClientHeight = 305
  ClientWidth = 413
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
    Left = 9
    Top = 8
    Width = 396
    Height = 289
    BevelOuter = bvNone
    BorderWidth = 1
    Color = 10207162
    TabOrder = 0
    object TLabel
      Left = 10
      Top = 0
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
    object bbtnCancelar: TfcShapeBtn
      Left = 340
      Top = 248
      Width = 31
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
      OnClick = bbtnCancelarClick
    end
    object bbtnSalir: TfcShapeBtn
      Left = 301
      Top = 248
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
    object pgAvance: TProgressBar
      Left = 10
      Top = 251
      Width = 276
      Height = 24
      Min = 0
      Max = 8
      TabOrder = 2
    end
    object pnlFondo1: TPanel
      Left = 8
      Top = 31
      Width = 380
      Height = 210
      BevelOuter = bvNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object TLabel
        Left = 65
        Top = 18
        Width = 117
        Height = 15
        Caption = 'Fecha del Comprobante'
      end
      object GroupBox1: TGroupBox
        Left = 80
        Top = 48
        Width = 209
        Height = 57
        Caption = '  Periodo de Contabilización  '
        Enabled = False
        TabOrder = 0
        object TLabel
          Left = 26
          Top = 28
          Width = 23
          Height = 15
          Caption = 'Año '
        end
        object TLabel
          Left = 122
          Top = 28
          Width = 21
          Height = 15
          Caption = 'Mes'
        end
        object speAno: TEdit
          Left = 57
          Top = 24
          Width = 48
          Height = 23
          Color = 13165023
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object speMes: TEdit
          Left = 153
          Top = 24
          Width = 24
          Height = 23
          Color = 13165023
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
      end
      object GroupBox2: TGroupBox
        Left = 32
        Top = 120
        Width = 313
        Height = 81
        Caption = '  Fecha de Operación  '
        TabOrder = 1
        object TLabel
          Left = 30
          Top = 26
          Width = 80
          Height = 15
          Caption = 'Fecha de Inicio'
        end
        object TLabel
          Left = 171
          Top = 26
          Width = 64
          Height = 15
          Caption = 'Fecha de Fin'
        end
        object dbdtpFInicio: TwwDBDateTimePicker
          Left = 30
          Top = 44
          Width = 102
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
          ShowButton = True
          TabOrder = 0
        end
        object dbdtpFFin: TwwDBDateTimePicker
          Left = 171
          Top = 44
          Width = 102
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
          ShowButton = True
          TabOrder = 1
        end
      end
      object dtpFecha: TwwDBDateTimePicker
        Left = 201
        Top = 12
        Width = 102
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
        ShowButton = True
        TabOrder = 2
        OnExit = dtpFechaExit
      end
    end
  end
end
