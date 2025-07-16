object DM1: TDM1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 3
  Top = 1
  Height = 646
  Width = 862
  object cdsUsuarios: TwwClientDataSet
    Aggregates = <>
    IndexFieldNames = 'USERID'
    Params = <>
    ProviderName = 'dspUsuario'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 145
    Top = 337
  end
  object cdsMGrupo: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMGrupo'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 281
    Top = 337
  end
  object cdsGrupos: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGrupos'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 216
    Top = 337
  end
  object cdsAcceso: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAcceso'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 22
    Top = 504
  end
  object dsUsuarios: TwwDataSource
    DataSet = cdsUsuarios
    Left = 145
    Top = 370
  end
  object dsMGrupo: TwwDataSource
    DataSet = cdsMGrupo
    Left = 281
    Top = 370
  end
  object dsGrupos: TwwDataSource
    DataSet = cdsGrupos
    Left = 216
    Top = 376
  end
  object dsAcceso: TwwDataSource
    DataSet = cdsAcceso
    Left = 22
    Top = 536
  end
  object cdsAsociados: TwwClientDataSet
    Aggregates = <>
    PacketRecords = 500
    Params = <>
    ProviderName = 'prvAsociados'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 458
    Top = 5
  end
  object cdsTransacciones: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTransacciones'
    RemoteServer = DCOM1
    OnReconcileError = cdsTransaccionesReconcileError
    ControlType.Strings = (
      'APOFDEV;CheckBox;S;N'
      'APOFRECL;CheckBox;S;N'
      'TRANSFFCIND;CheckBox;S;N'
      'APOFNP;CheckBox;S;N')
    ValidateWithMask = True
    Left = 35
    Top = 97
  end
  object dsAsociados: TwwDataSource
    DataSet = cdsAsociados
    Left = 458
    Top = 45
  end
  object dsTransacciones: TwwDataSource
    DataSet = cdsTransacciones
    Left = 35
    Top = 127
  end
  object cdsUse: TwwClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'USEID'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'USENOM'
        DataType = ftString
        Size = 75
      end
      item
        Name = 'USEABRE'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'USETELF'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'USEDIR'
        DataType = ftString
        Size = 75
      end
      item
        Name = 'DIRDPTOID'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'DIRPROVID'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'DIRZIPID'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'DEPTOID'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'PROVID'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'ZONAID'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'UPROID'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'UPAGOID'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'TIPUSEID'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CCOSID'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'USUARIO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'FREG'
        DataType = ftDateTime
      end
      item
        Name = 'HREG'
        DataType = ftDateTime
      end
      item
        Name = 'CODANT'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'FLGFUSION'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'prvUse'
    RemoteServer = DCOM1
    StoreDefs = True
    ValidateWithMask = True
    Left = 393
    Top = 5
  end
  object cdsSituacAsoc: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvSituacAsoc'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 327
    Top = 5
  end
  object cdsTipoAsoc: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTipoAsoc'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 615
    Top = 5
  end
  object dsSituacAsoc: TwwDataSource
    DataSet = cdsSituacAsoc
    Left = 327
    Top = 45
  end
  object dsTipoAsoc: TwwDataSource
    DataSet = cdsTipoAsoc
    Left = 615
    Top = 45
  end
  object dsUse: TwwDataSource
    DataSet = cdsUse
    Left = 393
    Top = 45
  end
  object cdsQry: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 261
    Top = 5
  end
  object dsQry: TwwDataSource
    DataSet = cdsQry
    Left = 261
    Top = 45
  end
  object cdsTMoneda: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTMoneda'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 772
    Top = 5
  end
  object dsTMoneda: TwwDataSource
    DataSet = cdsTMoneda
    Left = 772
    Top = 45
  end
  object cdsBcos: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvBcos'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 451
    Top = 97
  end
  object dsBcos: TwwDataSource
    DataSet = cdsBcos
    Left = 451
    Top = 127
  end
  object cdsCtaCtes: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvCtaCtes'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 656
    Top = 179
  end
  object dsCtaCtes: TwwDataSource
    DataSet = cdsCtaCtes
    Left = 656
    Top = 208
  end
  object cdsFormaPago: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvFormaPago'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 463
    Top = 260
  end
  object dsFormaPago: TwwDataSource
    DataSet = cdsFormaPago
    Left = 463
    Top = 284
  end
  object cdsAsociados1: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvAsociados'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 538
    Top = 5
  end
  object dsAsociados1: TwwDataSource
    DataSet = cdsAsociados1
    Left = 538
    Top = 45
  end
  object dsDetReclamo: TwwDataSource
    DataSet = cdsDetReclamo
    Left = 659
    Top = 127
  end
  object cdsReclMotivo: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvReclMotivo'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 516
    Top = 97
  end
  object cdsReclSit: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvReclSit'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 587
    Top = 97
  end
  object cdsReclamo: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvReclamo'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 392
    Top = 179
  end
  object cdsDetReclamo: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvDetReclamo'
    RemoteServer = DCOM1
    ControlType.Strings = (
      'RECLFDEV;CheckBox;S;N')
    PictureMasks.Strings = (
      'APOMONTO'#9'*12[#][.*2[#]]'#9'T'#9'F')
    ValidateWithMask = True
    Left = 659
    Top = 97
  end
  object dsReclamo: TwwDataSource
    DataSet = cdsReclamo
    Left = 392
    Top = 208
  end
  object dsReclSit: TwwDataSource
    DataSet = cdsReclSit
    Left = 587
    Top = 127
  end
  object dsReclMotivo: TwwDataSource
    DataSet = cdsReclMotivo
    Left = 516
    Top = 127
  end
  object dsUse1: TwwDataSource
    DataSet = cdsUse1
    Left = 64
    Top = 45
  end
  object cdsUse1: TwwClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'USEID'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'USENOM'
        DataType = ftString
        Size = 75
      end
      item
        Name = 'USEABRE'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'USETELF'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'USEDIR'
        DataType = ftString
        Size = 75
      end
      item
        Name = 'DIRDPTOID'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'DIRPROVID'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'DIRZIPID'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'DEPTOID'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'PROVID'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'ZONAID'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'UPROCID'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'UPAGOID'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'TIPUSEID'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'USUARIO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'FREG'
        DataType = ftDateTime
      end
      item
        Name = 'HREG'
        DataType = ftDateTime
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'prvUse'
    RemoteServer = DCOM1
    StoreDefs = True
    ValidateWithMask = True
    Left = 64
    Top = 5
  end
  object cdsReclamo1: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvReclamo'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 120
    Top = 97
  end
  object dsReclamo1: TwwDataSource
    DataSet = cdsReclamo1
    Left = 120
    Top = 127
  end
  object cdsDevolucion: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvDevolucion'
    RemoteServer = DCOM1
    PictureMasks.Strings = (
      'DEVMTO'#9'*12[#][.*2[#]]'#9'T'#9'F'
      'APOMONTO'#9'*12[#][.*2[#]]'#9'T'#9'F')
    ValidateWithMask = True
    Left = 383
    Top = 97
  end
  object cdsDevMotivo: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvDevMotivo'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 741
    Top = 97
  end
  object dsDevolucion: TwwDataSource
    DataSet = cdsDevolucion
    Left = 383
    Top = 127
  end
  object dsDevMotivo: TwwDataSource
    DataSet = cdsDevMotivo
    Left = 741
    Top = 127
  end
  object cdsAgenciaBco: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvAgenciaBco'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 471
    Top = 179
  end
  object dsAgenciaBco: TwwDataSource
    DataSet = cdsAgenciaBco
    Left = 471
    Top = 208
  end
  object cdsDLabo: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvDLabo'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 151
    Top = 504
  end
  object dsDLabo: TwwDataSource
    DataSet = cdsDLabo
    Left = 151
    Top = 536
  end
  object cdsDFam: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvDFam'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 185
    Top = 97
  end
  object dsDFam: TwwDataSource
    DataSet = cdsDFam
    Left = 185
    Top = 127
  end
  object cdsEjecuta: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvEjecuta'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 183
    Top = 422
  end
  object dsEjecuta: TwwDataSource
    DataSet = cdsEjecuta
    Left = 183
    Top = 448
  end
  object cdsCtasBco: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvCtasBco'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 267
    Top = 179
  end
  object dsCtasBco: TwwDataSource
    DataSet = cdsCtasBco
    Left = 267
    Top = 208
  end
  object cdsResol: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvResol'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 395
    Top = 337
  end
  object dsResol: TwwDataSource
    DataSet = cdsResol
    Left = 395
    Top = 370
  end
  object cdsDSocioE: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvDSocioE'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 87
    Top = 504
  end
  object dsDSocioE: TwwDataSource
    DataSet = cdsDSocioE
    Left = 89
    Top = 536
  end
  object cdsUSES: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvUSES'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 330
    Top = 179
  end
  object dsUSES: TwwDataSource
    DataSet = cdsUSES
    Left = 330
    Top = 208
  end
  object cdsUPro: TwwClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'UPROID'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'UPRONOM'
        DataType = ftString
        Size = 75
      end
      item
        Name = 'UPROABR'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'UPROTELF'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'UPRODIR'
        DataType = ftString
        Size = 75
      end
      item
        Name = 'DIRDPTOID'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'DIRPROVID'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'DIRZIPID'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'DPTOID'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CIUDID'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'ZONAID'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'REPRID'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'UPROFDES'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'BANCOID'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'PROVBCOID'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'OFDESID'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'USUARIO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'FREG'
        DataType = ftDateTime
      end
      item
        Name = 'HREG'
        DataType = ftDateTime
      end
      item
        Name = 'FLGFUSION'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'prvUProceso'
    RemoteServer = DCOM1
    StoreDefs = True
    ValidateWithMask = True
    Left = 779
    Top = 179
  end
  object dsUPro: TwwDataSource
    DataSet = cdsUPro
    Left = 779
    Top = 208
  end
  object cdsUPago: TwwClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'UPAGOID'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'UPROID'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'UPAGONOM'
        DataType = ftString
        Size = 65
      end
      item
        Name = 'UPAGOTELF'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'UPAGODIR'
        DataType = ftString
        Size = 75
      end
      item
        Name = 'DIRDPTOID'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'DIRPROVID'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'DIRZIPID'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'DPTOID'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CIUDID'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'ZONAID'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'REPID'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'REPDIR'
        DataType = ftString
        Size = 75
      end
      item
        Name = 'REPTELF'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'UPAGOFDES'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'BANCOID'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'PROVBCOID'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'OFDESID'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'USUARIO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'FREG'
        DataType = ftDateTime
      end
      item
        Name = 'HREG'
        DataType = ftDateTime
      end
      item
        Name = 'USE'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'UPAGOABR'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'CODANT'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'FLGFUSION'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'prvUPago'
    RemoteServer = DCOM1
    StoreDefs = True
    ValidateWithMask = True
    Left = 220
    Top = 260
  end
  object dsUPago: TwwDataSource
    DataSet = cdsUPago
    Left = 218
    Top = 284
  end
  object cdsTResol: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTResol'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 587
    Top = 337
  end
  object dsTResol: TwwDataSource
    DataSet = cdsTResol
    Left = 587
    Top = 370
  end
  object cdsTPension: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTPension'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 786
    Top = 504
  end
  object dsTPension: TwwDataSource
    DataSet = cdsTPension
    Left = 786
    Top = 536
  end
  object cdsCEdu: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvCEdu'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 120
    Top = 5
  end
  object dsCEdu: TwwDataSource
    DataSet = cdsCEdu
    Left = 120
    Top = 45
  end
  object cdsCAso: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvCAso'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 340
    Top = 337
  end
  object dsCAso: TwwDataSource
    DataSet = cdsCAso
    Left = 340
    Top = 370
  end
  object cdsTUSE: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTUSE'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 796
    Top = 422
  end
  object dsTUSE: TwwDataSource
    DataSet = cdsTUSE
    Left = 796
    Top = 448
  end
  object cdsOfDes: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvOfDes'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 457
    Top = 337
  end
  object dsOfDes: TwwDataSource
    DataSet = cdsOfDes
    Left = 457
    Top = 370
  end
  object cdsCViv: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvCViv'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 278
    Top = 260
  end
  object dsCViv: TwwDataSource
    DataSet = cdsCViv
    Left = 278
    Top = 284
  end
  object cdsDpto: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvDpto'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 15
    Top = 422
  end
  object cdsTVia: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTVia'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 106
    Top = 260
  end
  object cdsDist: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvDist'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 129
    Top = 422
  end
  object cdsTZona: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTZona'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 292
    Top = 422
  end
  object cdsTDoc: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTDoc'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 203
    Top = 179
  end
  object cdsUbigeo: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvUbigeo'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 83
    Top = 179
  end
  object cdsProvin: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvProvin'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 23
    Top = 179
  end
  object cdsEstCiv: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvEstCiv'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 144
    Top = 179
  end
  object dsTDoc: TwwDataSource
    DataSet = cdsTDoc
    Left = 203
    Top = 208
  end
  object dsEstCiv: TwwDataSource
    DataSet = cdsEstCiv
    Left = 143
    Top = 208
  end
  object dsUbigeo: TwwDataSource
    DataSet = cdsUbigeo
    Left = 83
    Top = 208
  end
  object dsProvin: TwwDataSource
    DataSet = cdsProvin
    Left = 23
    Top = 208
  end
  object dsDpto: TwwDataSource
    DataSet = cdsDpto
    Left = 15
    Top = 448
  end
  object dsTVia: TwwDataSource
    DataSet = cdsTVia
    Left = 106
    Top = 284
  end
  object dsDist: TwwDataSource
    DataSet = cdsDist
    Left = 129
    Top = 448
  end
  object dsTZona: TwwDataSource
    DataSet = cdsTZona
    Left = 292
    Top = 448
  end
  object cdsPais: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvPais'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 484
    Top = 504
  end
  object dsPais: TwwDataSource
    DataSet = cdsPais
    Left = 484
    Top = 536
  end
  object cdsGradoI: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvGradoI'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 600
    Top = 504
  end
  object dsGradoI: TwwDataSource
    DataSet = cdsGradoI
    Left = 600
    Top = 536
  end
  object cdsGradoA: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvGradoA'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 541
    Top = 504
  end
  object dsGradoA: TwwDataSource
    DataSet = cdsGradoA
    Left = 541
    Top = 536
  end
  object cdsProf: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvProf'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 656
    Top = 504
  end
  object dsProf: TwwDataSource
    DataSet = cdsProf
    Left = 659
    Top = 536
  end
  object dsTRela: TwwDataSource
    DataSet = cdsTRela
    Left = 721
    Top = 208
  end
  object cdsTRela: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTRela'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 721
    Top = 179
  end
  object cdsAsoB: TwwClientDataSet
    Aggregates = <>
    PacketRecords = 50
    Params = <>
    ProviderName = 'prvAsociados'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 159
    Top = 260
  end
  object dsAsoB: TwwDataSource
    DataSet = cdsAsoB
    Left = 159
    Top = 284
  end
  object cdsAsoC: TwwClientDataSet
    Aggregates = <>
    PacketRecords = 50
    Params = <>
    ProviderName = 'prvAsociados'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 397
    Top = 260
  end
  object dsAsoC: TwwDataSource
    DataSet = cdsAsoC
    Left = 397
    Top = 284
  end
  object cdsSitReclamo: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvSitReclamo'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 544
    Top = 260
  end
  object dsSitReclamo: TwwDataSource
    DataSet = cdsSitReclamo
    Left = 544
    Top = 284
  end
  object cdsFPagoAporte: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvFPagoAporte'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 192
    Top = 5
  end
  object dsFPagoAporte: TwwDataSource
    DataSet = cdsFPagoAporte
    Left = 192
    Top = 45
  end
  object cdsFPagoDevolucion: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvFPagoDevolucion'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 568
    Top = 179
  end
  object dsFPagoDevolucion: TwwDataSource
    DataSet = cdsFPagoDevolucion
    Left = 568
    Top = 208
  end
  object cdsTransaccion: TwwClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    ProviderName = 'prvTransaccion'
    RemoteServer = DCOM1
    OnReconcileError = cdsTransaccionesReconcileError
    ValidateWithMask = True
    Left = 693
    Top = 5
  end
  object dsTransaccion: TwwDataSource
    DataSet = cdsTransaccion
    Left = 693
    Top = 45
  end
  object cdsTransDevol: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTransDevol'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 303
    Top = 97
  end
  object dsTransDevol: TwwDataSource
    DataSet = cdsTransDevol
    Left = 303
    Top = 127
  end
  object cdsRegCob: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvRegCob'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 652
    Top = 589
  end
  object dsRegCob: TwwDataSource
    AutoEdit = False
    DataSet = cdsRegCob
    Left = 652
    Top = 619
  end
  object cdsCobxUse: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvCobxUse'
    RemoteServer = DCOM1
    PictureMasks.Strings = (
      'RCOBAPOVAL'#9'*12[#][.*2[#]]'#9'T'#9'F')
    ValidateWithMask = True
    Left = 582
    Top = 589
  end
  object dsCobxUse: TwwDataSource
    AutoEdit = False
    DataSet = cdsCobxUse
    Left = 583
    Top = 619
  end
  object cdsAutdisk: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAutdisk'
    RemoteServer = DCOM1
    OnReconcileError = cdsTransaccionesReconcileError
    ControlType.Strings = (
      'FREGCOB;CheckBox;S;N')
    ValidateWithMask = True
    Left = 25
    Top = 337
  end
  object dsAutdisk: TwwDataSource
    DataSet = cdsAutdisk
    Left = 25
    Top = 370
  end
  object cdsDetRegGlob: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvDetRegGlob'
    RemoteServer = DCOM1
    PictureMasks.Strings = (
      'DOCMTO'#9'*12[#][.*2[#]]'#9'T'#9'F')
    ValidateWithMask = True
    Left = 34
    Top = 260
  end
  object dsDetRegGlob: TwwDataSource
    DataSet = cdsDetRegGlob
    Left = 34
    Top = 284
  end
  object cdsAso: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvAso'
    RemoteServer = DCOM1
    OnReconcileError = cdsTransaccionesReconcileError
    ValidateWithMask = True
    Left = 239
    Top = 422
  end
  object dsAso: TwwDataSource
    DataSet = cdsAso
    Left = 239
    Top = 448
  end
  object cdsSAso: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvSAso'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 345
    Top = 422
  end
  object dsSAso: TwwDataSource
    DataSet = cdsSAso
    Left = 345
    Top = 448
  end
  object cdsAportes: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvAportes'
    RemoteServer = DCOM1
    PictureMasks.Strings = (
      'TRANSMTO'#9'*12[#][.*2[#]]'#9'F'#9'F')
    ValidateWithMask = True
    Left = 771
    Top = 260
  end
  object dsAportes: TwwDataSource
    DataSet = cdsAportes
    Left = 771
    Top = 284
  end
  object cdsBancos: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBancos'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 338
    Top = 260
  end
  object dsBancos: TwwDataSource
    DataSet = cdsBancos
    Left = 338
    Top = 284
  end
  object cdsSQL: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvSQL'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 851
    Top = 422
  end
  object dsSQL: TwwDataSource
    DataSet = cdsSQL
    Left = 851
    Top = 448
  end
  object cdsCtasAso: TwwClientDataSet
    Aggregates = <>
    PacketRecords = 50
    Params = <>
    ProviderName = 'prvCtasAso'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 520
    Top = 337
  end
  object dsCtasAso: TwwDataSource
    DataSet = cdsCtasAso
    Left = 520
    Top = 370
  end
  object cdsSexo: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 239
    Top = 97
  end
  object dsSexo: TwwDataSource
    DataSet = cdsSexo
    Left = 239
    Top = 127
  end
  object cdsLugNac: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvUbigeo'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 778
    Top = 337
  end
  object dsLugNac: TwwDataSource
    DataSet = cdsLugNac
    Left = 778
    Top = 370
  end
  object cdsCuentas: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvCuentas'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 719
    Top = 589
  end
  object dsCuentas: TwwDataSource
    DataSet = cdsCuentas
    Left = 719
    Top = 619
  end
  object cdsRepresentante: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvRepresentante'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 230
    Top = 504
  end
  object dsRepresentante: TwwDataSource
    DataSet = cdsRepresentante
    Left = 231
    Top = 536
  end
  object cdsFPago: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvFPago'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 362
    Top = 504
  end
  object dsFPago: TwwDataSource
    DataSet = cdsFPago
    Left = 362
    Top = 536
  end
  object cdsSitRepr: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvSitRepr'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 425
    Top = 504
  end
  object dsSitRepr: TwwDataSource
    DataSet = cdsSitRepr
    Left = 425
    Top = 536
  end
  object cdsFRepr: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvFRepr'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 304
    Top = 504
  end
  object dsFRepr: TwwDataSource
    DataSet = cdsFRepr
    Left = 304
    Top = 536
  end
  object cdsSitCta: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvSitCta'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 17
    Top = 589
  end
  object dsSitCta: TwwDataSource
    DataSet = cdsSitCta
    Left = 15
    Top = 619
  end
  object cdsRepresentante1: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvRepresentante'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 94
    Top = 589
  end
  object dsRepresentante1: TwwDataSource
    DataSet = cdsRepresentante1
    Left = 97
    Top = 619
  end
  object cdsTAso: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTAso'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 717
    Top = 337
  end
  object dsTAso: TwwDataSource
    DataSet = cdsTAso
    Left = 717
    Top = 370
  end
  object cdsQry2: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 398
    Top = 422
  end
  object dsqry2: TwwDataSource
    AutoEdit = False
    DataSet = cdsQry2
    Left = 398
    Top = 448
  end
  object cdsDiario: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvDiario'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 90
    Top = 337
  end
  object dsDiario: TwwDataSource
    DataSet = cdsDiario
    Left = 90
    Top = 370
  end
  object cdsReporte1: TwwClientDataSet
    Aggregates = <>
    PacketRecords = 100
    Params = <>
    ProviderName = 'prvReporte1'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 717
    Top = 504
  end
  object cdsReporte2: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvReporte2'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 653
    Top = 337
  end
  object cdsReporte3: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvReporte3'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 735
    Top = 422
  end
  object dsReporte1: TwwDataSource
    DataSet = cdsReporte1
    Left = 717
    Top = 536
  end
  object dsReporte2: TwwDataSource
    DataSet = cdsReporte2
    Left = 653
    Top = 370
  end
  object dsReporte3: TwwDataSource
    DataSet = cdsReporte3
    Left = 735
    Top = 448
  end
  object dsDeltaSet: TwwDataSource
    DataSet = cdsDeltaSet
    Left = 785
    Top = 616
  end
  object cdsResultSet: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ValidateWithMask = True
    Left = 785
    Top = 590
  end
  object cdsDeltaSet: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ValidateWithMask = True
    Left = 853
    Top = 589
  end
  object dsCuentaEst: TwwDataSource
    DataSet = cdsCuentaEst
    Left = 238
    Top = 619
  end
  object cdsCuentaEst: TwwClientDataSet
    Aggregates = <>
    PacketRecords = 100
    Params = <>
    ProviderName = 'prvCuentaEst'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 238
    Top = 589
  end
  object cdsTransferencia: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvAportes'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 323
    Top = 589
  end
  object dsTransferencia: TwwDataSource
    AutoEdit = False
    DataSet = cdsTransferencia
    Left = 324
    Top = 619
  end
  object cdsCia: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvCia'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 448
    Top = 589
  end
  object dsCia: TwwDataSource
    DataSet = cdsCia
    Left = 448
    Top = 619
  end
  object cdsPeriodo: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvPeriodo'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 852
    Top = 504
  end
  object dsPeriodo: TwwDataSource
    DataSet = cdsPeriodo
    Left = 852
    Top = 536
  end
  object dsTipDesem: TwwDataSource
    DataSet = cdsTipDesem
    Left = 513
    Top = 619
  end
  object cdsTipDesem: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTipDesem'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 510
    Top = 589
  end
  object cdsQry1: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 837
    Top = 5
  end
  object dsQry1: TwwDataSource
    DataSet = cdsQry1
    Left = 837
    Top = 45
  end
  object cdsOficio: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvOficio'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 172
    Top = 589
  end
  object dsOficio: TwwDataSource
    DataSet = cdsOficio
    Left = 172
    Top = 619
  end
  object cdsAsoX: TwwClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    PacketRecords = 100
    Params = <>
    ProviderName = 'prvAsoX'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 837
    Top = 337
  end
  object dsAsoX: TwwDataSource
    DataSet = cdsAsoX
    Left = 837
    Top = 370
  end
  object cdsGarantia: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvGarantia'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 455
    Top = 422
  end
  object dsGarantia: TwwDataSource
    DataSet = cdsGarantia
    Left = 455
    Top = 448
  end
  object cdsCbcos: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvCbcos'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 76
    Top = 422
  end
  object dsCbcos: TwwDataSource
    DataSet = cdsCbcos
    Left = 76
    Top = 448
  end
  object dsConsulta: TwwDataSource
    DataSet = cdsConsulta
    Left = 524
    Top = 448
  end
  object cdsConsulta: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvConsulta'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 524
    Top = 422
  end
  object dsAgencias: TwwDataSource
    DataSet = cdsAgencias
    Left = 665
    Top = 448
  end
  object cdsAgencias: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAgencias'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 665
    Top = 422
  end
  object cdsQry3: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 838
    Top = 179
  end
  object dsQry3: TwwDataSource
    DataSet = cdsQry3
    Left = 838
    Top = 208
  end
  object cdsSaldoTlfnGrab: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 825
    Top = 97
  end
  object dsSaldoTlfnGrab: TwwDataSource
    DataSet = cdsSaldoTlfnGrab
    Left = 825
    Top = 127
  end
  object dsRegCxP: TwwDataSource
    DataSet = cdsRegCxP
    Left = 839
    Top = 284
  end
  object cdsRegCxP: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 839
    Top = 260
  end
  object cdsReporte: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvReporte'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 594
    Top = 421
  end
  object dsReporte: TwwDataSource
    DataSet = cdsReporte
    Left = 594
    Top = 451
  end
  object cdsQry4: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 610
    Top = 260
  end
  object dsQry4: TwwDataSource
    DataSet = cdsQry4
    Left = 610
    Top = 284
  end
  object cdsUser: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvUser'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 397
    Top = 589
  end
  object dsUser: TwwDataSource
    DataSet = cdsUser
    Left = 397
    Top = 619
  end
  object ExcelApp: TExcelApplication
    AutoConnect = False
    ConnectKind = ckNewInstance
    AutoQuit = False
    Left = 930
    Top = 125
  end
  object ExcelBook: TExcelWorkbook
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 930
    Top = 221
  end
  object WS: TExcelWorksheet
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 930
    Top = 173
  end
  object cdsqry6: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 713
    Top = 260
  end
  object dsQry6: TwwDataSource
    DataSet = cdsqry6
    Left = 713
    Top = 284
  end
  object cdsQry5: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvQry'
    RemoteServer = DCOM1
    ValidateWithMask = True
    Left = 660
    Top = 260
  end
  object dsQry5: TwwDataSource
    DataSet = cdsQry5
    Left = 662
    Top = 284
  end
  object DCOM1: TSocketConnection
    ServerGUID = '{2F67C47B-7F34-4E3E-99E6-2EC5414192DF}'
    ServerName = 'SrvAplApo.SrvDMApo'
    Address = ' '
    Left = 15
    Top = 4
  end
end
