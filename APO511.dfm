object FMuestraDatos: TFMuestraDatos
  Left = 206
  Top = 274
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Datos'
  ClientHeight = 374
  ClientWidth = 509
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
  object pnlUse: TPanel
    Left = 2
    Top = 3
    Width = 503
    Height = 366
    BevelOuter = bvNone
    Color = 10207162
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Panel1: TPanel
      Left = 4
      Top = 4
      Width = 493
      Height = 57
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object lbCodDerrama1: TLabel
        Left = 10
        Top = 7
        Width = 111
        Height = 19
        Caption = 'Codigo Derrama :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbCodModular1: TLabel
        Left = 254
        Top = 7
        Width = 109
        Height = 19
        Caption = 'Codigo Modular :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 10
        Top = 31
        Width = 68
        Height = 19
        Caption = 'Asociado :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbtAsociado: TDBText
        Left = 88
        Top = 31
        Width = 401
        Height = 18
        DataField = 'ASOAPENOM'
        DataSource = DM1.dsAsociados1
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbtCodModular: TDBText
        Left = 368
        Top = 7
        Width = 118
        Height = 17
        DataField = 'ASOCODMOD'
        DataSource = DM1.dsAsociados1
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbtCodDerrama: TDBText
        Left = 127
        Top = 7
        Width = 114
        Height = 17
        DataField = 'ASOID'
        DataSource = DM1.dsAsociados1
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Panel2: TPanel
      Left = 4
      Top = 64
      Width = 493
      Height = 97
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label1: TLabel
        Left = 14
        Top = 8
        Width = 33
        Height = 16
        Caption = 'USE :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbtUSE: TDBText
        Left = 52
        Top = 8
        Width = 53
        Height = 17
        DataField = 'USEID'
        DataSource = DM1.dsAsociados1
      end
      object Label3: TLabel
        Left = 14
        Top = 53
        Width = 107
        Height = 16
        Caption = 'Unidad de Proceso :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbtUPro: TDBText
        Left = 128
        Top = 53
        Width = 233
        Height = 17
        DataField = 'UPROABR'
        DataSource = DM1.dsAsociados1
      end
      object Label4: TLabel
        Left = 14
        Top = 29
        Width = 91
        Height = 16
        Caption = 'Unidad de Pago :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbtUPago: TDBText
        Left = 128
        Top = 29
        Width = 241
        Height = 17
        DataField = 'UPAGOID'
        DataSource = DM1.dsAsociados1
      end
      object Label5: TLabel
        Left = 14
        Top = 74
        Width = 84
        Height = 16
        Caption = 'Departamento :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbtDepto: TDBText
        Left = 128
        Top = 74
        Width = 273
        Height = 17
        DataField = 'DPTOABR'
        DataSource = DM1.dsAsociados1
      end
      object Label11: TLabel
        Left = 103
        Top = 8
        Width = 80
        Height = 16
        Caption = 'Nombre USE :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbtNombreUSE: TDBText
        Left = 187
        Top = 8
        Width = 302
        Height = 17
        DataField = 'USEABR'
        DataSource = DM1.dsAsociados1
      end
    end
    object Panel3: TPanel
      Left = 5
      Top = 164
      Width = 493
      Height = 197
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object Label6: TLabel
        Left = 59
        Top = 37
        Width = 73
        Height = 16
        Caption = 'Transacción :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbtTransaccion: TDBText
        Left = 185
        Top = 37
        Width = 176
        Height = 17
        DataField = 'TRANSID'
        DataSource = DM1.dsAsociados1
      end
      object Label7: TLabel
        Left = 59
        Top = 13
        Width = 32
        Height = 16
        Caption = 'Mes :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object bdtMes: TDBText
        Left = 93
        Top = 13
        Width = 65
        Height = 17
        DataField = 'TRANSMES'
        DataSource = DM1.dsAsociados1
      end
      object Label8: TLabel
        Left = 187
        Top = 13
        Width = 30
        Height = 16
        Caption = 'Año :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbtAno: TDBText
        Left = 229
        Top = 13
        Width = 65
        Height = 17
        DataField = 'TRANSANO'
        DataSource = DM1.dsAsociados1
      end
      object Label9: TLabel
        Left = 59
        Top = 91
        Width = 49
        Height = 16
        Caption = 'Interes :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbtInteres: TDBText
        Left = 185
        Top = 91
        Width = 136
        Height = 17
        DataField = 'INTERESMTO'
        DataSource = DM1.dsAsociados1
      end
      object Label10: TLabel
        Left = 59
        Top = 64
        Width = 119
        Height = 16
        Caption = 'Importe de la Cuota :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbtFPago: TDBText
        Left = 185
        Top = 64
        Width = 128
        Height = 17
        DataField = 'TRANSMTO'
        DataSource = DM1.dsAsociados1
      end
      object dbtBonus: TDBText
        Left = 185
        Top = 119
        Width = 136
        Height = 17
        DataField = 'BONUSMTO'
        DataSource = DM1.dsAsociados1
      end
      object Label12: TLabel
        Left = 59
        Top = 147
        Width = 88
        Height = 16
        Caption = 'Saldo Anterior :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 59
        Top = 119
        Width = 40
        Height = 16
        Caption = 'Bonus :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbtSaldoAnt: TDBText
        Left = 185
        Top = 147
        Width = 136
        Height = 17
        DataField = 'SALDOANT'
        DataSource = DM1.dsAsociados1
      end
      object Label14: TLabel
        Left = 59
        Top = 173
        Width = 78
        Height = 16
        Caption = 'Saldo Actual :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbtSaldo: TDBText
        Left = 185
        Top = 173
        Width = 152
        Height = 17
        DataField = 'SALDO'
        DataSource = DM1.dsAsociados1
      end
      object Panel4: TPanel
        Left = 304
        Top = 6
        Width = 153
        Height = 83
        Color = 13165023
        TabOrder = 0
        object Label15: TLabel
          Left = 17
          Top = 10
          Width = 120
          Height = 15
          Caption = 'Periodo de Transacción'
        end
        object Label16: TLabel
          Left = 33
          Top = 56
          Width = 32
          Height = 16
          Caption = 'Mes :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText1: TDBText
          Left = 78
          Top = 56
          Width = 36
          Height = 17
          DataField = 'DEVMES'
          DataSource = DM1.dsAsociados1
        end
        object Label17: TLabel
          Left = 34
          Top = 32
          Width = 30
          Height = 16
          Caption = 'Año :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText2: TDBText
          Left = 76
          Top = 32
          Width = 44
          Height = 17
          DataField = 'DEVANO'
          DataSource = DM1.dsAsociados1
        end
      end
    end
  end
end
