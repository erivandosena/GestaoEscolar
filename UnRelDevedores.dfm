object FrmRelDevedores: TFrmRelDevedores
  Left = 430
  Top = 315
  Caption = 'Pr'#233'-visualiza'#231#227'o de Impress'#227'o'
  ClientHeight = 464
  ClientWidth = 804
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 15
  object QuickRep1: TQuickRep
    Tag = 1
    Left = 8
    Top = 8
    Width = 1123
    Height = 794
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    BeforePrint = QuickRep1BeforePrint
    DataSet = FrmDevedores.IBQuery_AlunMat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poLandscape
    Page.PaperSize = A4
    Page.Values = (
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 0
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PreviewWidth = 640
    PreviewHeight = 480
    PrevInitialZoom = qrZoomToFit
    object DetailBand1: TQRBand
      Left = 38
      Top = 215
      Width = 1047
      Height = 31
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = DetailBand1BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        82.020833333333330000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText3: TQRDBText
        Left = 848
        Top = 1
        Width = 95
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          2243.666666666667000000
          2.645833333333333000
          251.354166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FrmDevedores.IBQuery_AlunMat
        DataField = 'TEL_RESP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText4: TQRDBText
        Left = 984
        Top = 1
        Width = 57
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          2603.500000000000000000
          2.645833333333333000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FrmDevedores.IBQuery_AlunMat
        DataField = 'SERIE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText1: TQRDBText
        Left = 464
        Top = 1
        Width = 320
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1227.666666666667000000
          2.645833333333333000
          846.666666666666600000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FrmDevedores.IBQuery_AlunMat
        DataField = 'NOME_RESP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText2: TQRDBText
        Left = 55
        Top = 1
        Width = 320
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          145.520833333333300000
          2.645833333333333000
          846.666666666666600000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FrmDevedores.IBQuery_AlunMat
        DataField = 'NOME_ALUNO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel10: TQRLabel
        Left = 2
        Top = 1
        Width = 50
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          5.291666666666667000
          2.645833333333333000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Aluno(a):'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel11: TQRLabel
        Left = 386
        Top = 1
        Width = 75
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1021.291666666667000000
          2.645833333333333000
          198.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Respons'#225'vel:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel12: TQRLabel
        Left = 792
        Top = 1
        Width = 53
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          2095.500000000000000000
          2.645833333333333000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Telefone:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel13: TQRLabel
        Left = 948
        Top = 1
        Width = 33
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          2508.250000000000000000
          2.645833333333333000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'S'#233'rie:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel2: TQRLabel
        Left = 2
        Top = 17
        Width = 56
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          5.291666666666667000
          44.979166666666670000
          148.166666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Endere'#231'o:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText8: TQRDBText
        Left = 61
        Top = 17
        Width = 357
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          161.395833333333300000
          44.979166666666670000
          944.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FrmDevedores.IBQuery_AlunMat
        DataField = 'ENDERECO_RESP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel3: TQRLabel
        Left = 424
        Top = 17
        Width = 37
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1121.833333333333000000
          44.979166666666670000
          97.895833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Bairro:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText9: TQRDBText
        Left = 464
        Top = 17
        Width = 329
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1227.666666666667000000
          44.979166666666670000
          870.479166666666800000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FrmDevedores.IBQuery_AlunMat
        DataField = 'BAIRRO_RESP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel4: TQRLabel
        Left = 803
        Top = 17
        Width = 42
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          2124.604166666667000000
          44.979166666666670000
          111.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Cidade:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText10: TQRDBText
        Left = 848
        Top = 17
        Width = 193
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          2243.666666666667000000
          44.979166666666670000
          510.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FrmDevedores.IBQuery_AlunMat
        DataField = 'CIDADE_RESP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
    end
    object TitleBand1: TQRBand
      Left = 38
      Top = 177
      Width = 1047
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        52.916666666666670000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRSysData3: TQRSysData
        Left = 930
        Top = 0
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2460.625000000000000000
          0.000000000000000000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Text = 'Hora:'
        Transparent = False
        FontSize = 8
      end
      object QRLabel22Data: TQRLabel
        Left = 2
        Top = 0
        Width = 103
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          5.291666666666667000
          0.000000000000000000
          272.520833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Data: 21/03/1976'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object PageFooterBand1: TQRBand
      Left = 38
      Top = 311
      Width = 1047
      Height = 36
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        95.250000000000000000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRSysData1: TQRSysData
        Left = 499
        Top = 14
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1320.270833333333000000
          37.041666666666670000
          238.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Text = 'P'#225'gina '
        Transparent = False
        FontSize = 8
      end
      object QRLabel8: TQRLabel
        Left = 2
        Top = 14
        Width = 143
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          5.291666666666667000
          37.041666666666670000
          378.354166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'GEES 1.0 www.sisescola.com.br'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object PageHeaderBand1: TQRBand
      Left = 38
      Top = 38
      Width = 1047
      Height = 139
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        367.770833333333300000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRLabel_Endereco4: TQRLabel
        Left = 376
        Top = 70
        Width = 300
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          994.833333333333400000
          185.208333333333300000
          793.750000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'CIDADE - ESTADO'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel_Endereco1: TQRLabel
        Left = 376
        Top = 27
        Width = 300
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          994.833333333333400000
          71.437500000000000000
          793.750000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Rua'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel_NomeEmpresa: TQRLabel
        Left = 376
        Top = 1
        Width = 300
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333340000
          994.833333333333400000
          2.645833333333333000
          793.750000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'NOME DA EMPRESA'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 14
      end
      object QRImage_Logo: TQRImage
        Left = 286
        Top = 8
        Width = 85
        Height = 85
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          224.895833333333300000
          756.708333333333400000
          21.166666666666670000
          224.895833333333300000)
        Center = True
        Picture.Data = {
          0A544A504547496D6167657C790000FFD8FFE000104A46494600010101006000
          600000FFE1001645786966000049492A0008000000000000000000FFDB004300
          080606070605080707070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A
          1C1C20242E2720222C231C1C2837292C30313434341F27393D38323C2E333432
          FFDB0043010909090C0B0C180D0D1832211C2132323232323232323232323232
          3232323232323232323232323232323232323232323232323232323232323232
          3232323232FFC0001108015E015E03012200021101031101FFC4001F00000105
          01010101010100000000000000000102030405060708090A0BFFC400B5100002
          010303020403050504040000017D010203000411051221314106135161072271
          14328191A1082342B1C11552D1F02433627282090A161718191A25262728292A
          3435363738393A434445464748494A535455565758595A636465666768696A73
          7475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9
          AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4
          E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F010003010101010101010101
          0000000000000102030405060708090A0BFFC400B51100020102040403040705
          040400010277000102031104052131061241510761711322328108144291A1B1
          C109233352F0156272D10A162434E125F11718191A262728292A35363738393A
          434445464748494A535455565758595A636465666768696A737475767778797A
          82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6
          B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2
          F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F7FA28A2800A28A2800A
          28A2800A28A2800A28A2800A28A28012969A485192703EB5C66BFF0013FC39A1
          16896E7EDB72BC7956DF360FBB7DD1F9E7DA9A8B96C694E94EA3B415CED2A0BA
          BCB6B285A6BAB88A0897ABC8E140FC4D7836B5F18B5FD43747A7A45A7427A151
          E649FF007D1E3F215C9476FE20F14DD9648EFF00539BA163BA4DBF53D056F1C3
          BDE4EC7A54F299DB9AAC9451EF3AA7C54F0A69BB956FDAEE41FC16A85F3FF02E
          17F5AE4AFF00E39282574ED1588ECF71363FF1D51FD6B9FD2FE0DF88EF36B5E3
          5B58A1EA1DF7B8FC178FD6BAFD3FE086930806FF0052BBB961D446046A7F99FD
          6AB968C777734F6797D1F89F3338CBBF8C3E29B9CF92D676A3B7950E7FF4226B
          16E7E2178B2EBFD6EB9723FEB9ED8FFF004102BDCAD3E1A7846C8653488E46F5
          99DA4CFE04E2AFC56DE15D3A610450E916D2838D8AB1AB7E542AB05F0C46B1B8
          58FF000E95FF00AF99F37FFC245E21B96C7F6C6A729F4172E7FAD1F68F1149CF
          9DAAB7BEE90D7D568B1850102EDED81C53F68F4147D617617F6BA5A2A6BFAF91
          F28FDB7C450F3F69D553FE0720A747E29F115BB7CBADEA4A4766B97C7E44D7D5
          785EE0563DFEBBE1FB594DBDFEA360920E0C72CAB91F507A50ABDFEC8D668A7A
          7B2BFF005E87CFF6DF12BC5D6B809ACC8E07696347FE6B9ADCB2F8D3E2280817
          36F6372A3A928C8C7F1071FA57AE268BE13D72232C563A55E2670648E38DB07E
          A2B2EF7E14F84AF012BA7BDBB9FE2866618FC0923F4A3DA537BC44F198496952
          95BFAF91CED87C70D3E4206A1A4DC41EF0B8947EBB6BAFD33E21785B55C2C1AB
          C31C87F827FDD1CFA7CD807F0AE2F50F81D6EC0B69BAC4B19EC971187CFE231F
          CAB8CD57E14F8AB4C0CE9691DEC639DD6AF93FF7C9C1FC851C94A5B3B07B0C05
          6F825CAFFAEE7D1AAEAE032B0653C820F069D5F2A59EB3E21F0BDCF956F757B6
          1229C985F207E28DC7E62BBDD13E35DF40563D6EC12E53A19ADFE47FFBE4F07F
          31512C3C96DA98D5CAAAC55E9BE647B752D73DA0F8D341F118034FBE43311930
          49F2483F03D7F0CD74158B4D6E79B384A0ED25662D14514890A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280128CD15
          8BE22F14695E18B3373A95C04CE7CB8979790FA28FEBD29A4DBB22A3094DF2C5
          5D9B448039E95C1F8A3E29E89A017B7B53FDA17ABC7970B7C8A7FDA7FE8335E5
          BE2DF899ABF894C96F6EC6C74F3C793137CCE3FDB6EFF41C7D697C2BF0C35AF1
          16CB89D4D858373E6CABF3B8FF00657FA9C0FAD74468A8ABCD9EBD2CBA9D28FB
          4C53B7919DE21F1D6BFE2890C57374C96EE70B6B6E0AA1F623AB7E39AD3F0FFC
          2AF10EB5B25B88869D6ADCEFB81F391EC9D7F3C57B37873C0BA1F86155ACED44
          972060DCCDF3487E87B7E18ADDBCBB86C2CA6BB9DB6C30C6D239F40064D0EBDB
          4820A999A8AF67868D91C5E87F09FC37A40592EA16D4671CEEB93F2E7D90718F
          AE6BB5B65B586210DB2C488830123C003F015E151EA5E20F8A9E249EC21D4058
          58A21944209DAA8081CE3EF373DFD4F4E9583E27F08EBBE0BBA496691CC05F10
          DE40C402DD71EAA7EBE8719C51ECDC9DA52D44F092AB2E5AD57DEEC7D35515C4
          F15ADB4B713B848A252EEC7A000649AC0F02EB5FDBDE0FD3EF1DF74C23F2A6C9
          C9DEBC127DCF07F1AC9F8B3A93E9FE05B848CB06BA9120DC0E383927F4523F1A
          C543DEE53CE8D06EB7B27BDEC797F8BFE206ADE2AD55ACF4E9A5B6D3D9FCA861
          8DB065C9C65B1D73E9D07EA77AF7E0ADD47A29B8B7D4BCFD4963DED094C2BB77
          50D9E3BF27AFB579DF869953C51A4B36368BC8B3FF007D8AFABC7415D1564E9D
          944F631D51E0F9214745F99E21F06756BC5F115CE953DD4A6DCDBB32C0EC4857
          0C3381DB826BDC2B8FD3BE1F69FA6F8CA7F11C5753F9D248EE2118080B8C1CF1
          93C926BA7D46ED34FD36EAF24E52089A56FA019FE958D46A52BA3CCC654856AB
          CD4FADBEF3CB3E297C41B8B2B83A0E8F7062940FF4A9D3865CF4553D8FAFFF00
          AEB95F875E0287C5E6F2EF519674B484845311019DCF3D483D07F315C45EDDCB
          7F7D7179339796691A4763C64939AFA0FE12592DA7806D651D6E659256FAEEDB
          FC945744D7B2A7A1EB6222B05854A9E8DF53C935B82FBE1CF8D66874BBD95447
          878D8F1BD0F3861D1BD3F0AF76F07F88E2F14F8760D4542ACA7E49907F038EA3
          FAFE35E37F195D5BC7014754B5407EB9635B1F03F5065D4B54D3893B64896703
          3D0A9C1FFD0854D48F35352EA678BA4AB612359FC4923DAEB88BBF8A1A069DE2
          1BBD22FBCF80C0FB3CF29B909C0CF4E47391D3B576F5F3C7C5EBF86EFC6EF0C4
          A336B0A44EC3BB7DEFD3207E158D1829CACCF3F01878D7A8E12EC7B767C3FE2B
          B1C7FA0EA56FE9F2C814FF00435C56BBF06348BD0D2E8F712584BD446D9923FD
          791F99FA57997827C31AD788B5099B46BB166F6AA19A72EC9827A00579CF5FCA
          BE91D3ADE6B4D3ADA09E769E68E355795BAB903926AA77A4FDD66B5D4F053E5A
          553E47CD5AF781BC43E18732DD5A33408722EADCEF41EF9EABF8E2B63C35F15F
          5DD10A417ADFDA568382B337EF147B3FF8E6BE862A1BA806B83F13FC2AD0F5DD
          F3D9A0D36F4F3BE15F918FFB49D3F2C552AD1969346F0CC69565C9898FCCD9F0
          DF8DF44F14C6058DCECB8C65ADA5C2C8BF877FA8CD7495F2EEBFE12D77C1F76A
          F7513A22B662BB818EC27B61BF84FD706BB2F087C5FB9B331D9788835C41C28B
          B41FBC41FED0FE21EFD7EB4A7434BC3533AF96DE3ED30EEE8F70A5AA961A85AE
          A7671DD59DC473C120CABA3641AB55CED58F25A69D98B4514500145145001451
          450014514500145145001451450014514500251EF48480327B578E7C41F8A449
          9748F0F4D81CACD7A87F3087FF0066FCBD6AE10737646F87C34EBCF960743E39
          F89D67E1D1269FA66CBAD4C70DCE5213FED7A9F6FCEBC660B7D7BC6DAE9DA26B
          FBE979676E883DCF45515A3E0EF026A3E2FBBF3016834F46C4B74C339F65F53F
          CABDD6DAD3C3DE00D0783159DAAFDF95CE5E56C77EECDD781F85745E3495A3AB
          3D873A3815ECE92E69BFEBFA460783FE16699A004BCD4B65F6A2390587EEE23F
          EC83D4FB9FD2AC78C3E25E97E1957B4B62B79A900479487E58CFFB6DDBE9D78E
          D5E7DE2FF8B37DAC17B3D18C9636278697FE5AC83FF651EC39F7ED5A7A5FC1CB
          2D534282FA3D79A496E235915D22CC7C8E47273EDDBE94B97ED55662E86AAAE3
          65BF4FEB63D37C2DE23B7F1468306A500DACDF2CB1E73E5B8EABFD7E84533C67
          672DF783B56B7877798D6CE5428C93819C7E38C572FF000E3C15AA7852F2F1AF
          75084C72F1F668BE6DC0120393DBDBEBCD7A36322B095A33F74F3EB7252AD7A4
          EE96A8F93743D72FFC39AB45A85849B268F8653F75D7BAB0F4AF6DD3BC67E1BF
          881A3C9A3EA4CB697370BB1A194E32DD8A3742738C77FAD739F103E16CE2EA6D
          5BC3D6E1E27CBCB669F794F7283B8F6F7E2BC95D5E290ABAB23A9E41E0835D96
          8D5575B9EFB850C745548BB497DE8FA7FC1FE12B7F0869AF696F773DC79ADBDC
          C980BBB18CA8EDFAF4AE77E33C2D2782A371D23BB463F4C30FEB5E7BE09F897A
          8787EE22B4D46496EF4CE14AB1CBC43A6549EC3D2BD7FC5D6B1F897C037CB64F
          E6ACF6FE742CA325B187181EF8C7E35CEE328544E4797528D5C3E2A33AAEF77B
          9F33C12186E62954E191C303E9835F5E412ACF6F1CB19CA3A8607D41AF8FF18E
          2BEA1F01DF8D4BC0FA44E3A8B7119C9EE9F21FFD06B5C4ABA4CECCEA178C2674
          75CD78FEE1ADBC09AC489C1F20AFFDF471FD6B2BE24F8CAF7C216762D6114124
          B72EEA7CE04E000391823D6AE6A2CFE26F85F2CBB434D75A7798550757DBBB03
          F115CF18B5693D8F22952945C2ACB66CF9A2BEA5F03DB2DAF82347897A7D951F
          FEFA1BBFAD7CB5D3AD7D63E1C509E17D2D47416710FF00C70574629E891EC672
          FDC82F33C0BE2ACBE6FC43D4403908225FFC707F8D6D7C128D8F8AAFA403E55B
          3209FABAFF0085717E2DBB17DE2ED5EE55F72BDD49B4FB0381FA57AAFC11D31E
          0D2750D4A4181712AC71E473851927E9F37E9553F76958D714D53C028BEC91E9
          B7F79169FA7DC5E4E711411B48E7D80C9AF93751BD9752D4AE6F6720CB712B48
          C7DC9CD7BCFC60D6BFB3BC202C918096FE411E33CEC5F998FF0021F8D7846996
          32EA9AADA5843FEB2E2558D73EE7153878DA2E465945250A52AD2EBFA1EF3F08
          F45FECCF072DDBA626BF7329E30760E147E84FFC0ABD02A0B2B48AC6C60B4817
          6C50C6B1A0F4006054F5CB37CD26CF0EBD4756A39BEA140A2B2F5DD7AC3C39A5
          49A86A12EC85380072CEDD9547727FCF1492B99C62E4ECB726BC9B4E9A65D2EF
          1E077B9462B6F2E0F98A3AF07AD795F8CBE0F8C497FE1AE0F56B276FFD018FF2
          3F9F6AF3CF1478B2FBC4DAFF00F6A4A7C831E16DD233FEA941C8E7B9EF9FE55E
          D1F0AF5DD635DF0ECB36A922CAB0C9E4C3311F3BE073BBD7A8E7EB5D1C92A4B9
          933D7742BE060AAC65EA8F19F0FF0089F5AF05EA6FF672F1ED6DB3DA4C0856C7
          62BD8FBF5AF7EF0978D74CF1759EFB57F2EE90665B673F3A7BFB8F7FE555BC65
          E01D33C5B6E64602DB5151FBBB945E4FB30FE21FCABC16FB4FD6FC11AFAAC9E6
          5A5EC277453467E571EAA7B83FFD6355EED65D99B5A86611BAF7667D53DA92B8
          3F017C45B6F1444B657BB20D551794E8B30F55FEA2BBCAE6945C5D99E2D5A53A
          52E59AD45A28A2A4CC28A28A0028A28A0028A28A0028A28A004A4240193C52FD
          6BC6FE297C4125A5F0F691363F86F2743F9C60FF003FCBD6AE10737646F86C3C
          EBCF92253F893F125B5079B44D126C5A0F92E2E50FFADF5553FDDF7EFF004EB9
          3F0FFE1D4FE2795750D403C3A4A37D1A723B0FF67D4FE5EC7C3AF87D2789EE46
          A1A82326931374E86761FC23FD9F53F87D3E828218ADE148618D6389142AA20C
          0503A002B79CD535CB13D5C4E2618487B0A1BF5632CECE0B0B58ED6D61486089
          76A220C002B9AF177812C7C61736725E5CDC442DC3022223E707EB903047A575
          945732934EE8F1A15670973C5EA7CA7E27F0F5CF8635D9F4DB8CB043BA2976E0
          4887A37F9EF9AEFF00E1078C3ECB707C3B7D2FEE6625ED199BEEBF74FC7A8F7F
          AD769F133C223C4BA09B8B68C1D46CC178B039917BA7F51EFF005AF9D91DE390
          323323A9C8607041AEE835561667D2519C71F86E59EEBF3EE7777BE29B8F0EFC
          57BFD4A2B896E614B968A5576277479F9907D3B7D057BFD95E417F650DDDB482
          482640E8E3B835E1DE0FF87BA2F8BFC2CF7506A5731EAA8C5655254A23678CAE
          32411DF3EBE95D86932DDFC2DF02B36B92FDAF32E2DE08012119813B771EC704
          F4E39EB9AC6AA8BD16E8F3F1B0A53B429FC6B4B773BFBED42CF4CB63737D7315
          BC2382F2B8519F4E6B96D5FC27E19F1F6989A843E58794131DEDB8DAC4F4E7FB
          DD31CF3C76AAB7D3DBFC45F8637134080DC3445C46002639939DA3EBD3E8DEF5
          E57E03F1EDC783EE1E09A369F4E99B32440FCC8DD372FBFB77C0A9853959B5BA
          33C3E16A384A54DDA717B197E2CF08EA1E11D4BECD778782424C170A3E59547F
          2232323FFD75EB5F0635392F3C2D71632B337D9262133D918671F9EEFCEB92F8
          87E35B1F1AC161A668B697134CB2EFCB45F3648C0550324F5E7E82BD1FE1CF85
          A6F0B786FC9BC0A2F6E1FCD9941076760B91D703F9D695657A7EF6E75632B396
          112ACAD3FEB53C9BE24782A6F0EEB12DF5B45FF12CB990B46CA38898F3B4FA77
          C7B569FC2FF1ED8F876DEE34BD5E5315ABBF9B14A14B056C608200279C0FD6BD
          CA7821B985E09E3492271B591C6430F420D72173F0C3C1D248666D384401DCDB
          6660BF966A1558CA3CB3318E3E9D5A3EC6BA6FCD1E5BF12FC576FE2FD6ACEDF4
          9F327B6B652A84464191D8F381D7180BFAD7AFF806C6FB4FF0469D67A8C2D0DC
          468C0A391900B1233E9C11C556B0B7F01F859C9B69B49B5973F7E4B852FF0081
          639FCAAEBF8F7C2A9F7B5DB2FF0080C80FF2A539371518AD0CABD57529468D28
          3E55F79E33F10FC0975E1DD4A6BEB4819F4A9DCB2B20CF924FF09F41E86BA2B1
          F8BF6965E0B86C63B49FFB561B610212079790301B39CF4E718F6F7AF413E39F
          08DC218DF5AB1647182AEE3047A1CD662E97F0DF52B91246344965F48E641FF8
          E838FD2AB9EE929A36FAC73C231C4C1BB1E25E16F0AEA3E2DD585BDAC6C22041
          B8B823E58D49EBEE7AE077FCEBE98D274CB6D1749B6D3ED542C102055F7F527D
          C9E69F616D636768B158430436FD556150ABFA565F8BFC3D2F8A3427D362BF6B
          3DCEAE5D5776EC7383C8E3383F85454A8EA3B3D11CF8AC5BC54D465EEC4F18F8
          B9AE2EABE2E36B0C9BA0B04F2861B2379E5BFA0FC2AC7C1BD18DF78AA5D45D73
          158C5907B6F6E07E9B8FE159DADFC2DF13E93BA44B617D08FE3B63B8FF00DF3D
          7F4ABBE0AF1EC3E09D26F6C6E34A9A4BC79B783BB676036B67918C1FCEBA5DBD
          9F2C353D7959E13D961DDFA7F99EFAF3C51CA913CA8B23E4AA9600B63AE077A9
          6BE69B7B8D57E2378E6D56E252AF33807CB2408621C9C67D067F1AF79F10F893
          4EF09E902EAF24240016388365E43D38C9E7DCD72CE938B4BA9E2E23052A328C
          2F793E858D7F5FB0F0E69726A1A84C1235E1547DE76ECAA3B9AF20923D43C73F
          6BF1778854C1A058A3B5B5AEE2A2523A229F42700BF73C0FF65B2E81E28F8A29
          73AECAE96D6C808B1824CED6E7903F5F9BB9E3E989ADF89FC4769E1C7F08EB16
          E62F29914332ED6F2D7A2FA30C85208F4EF5B5385B45B9DF86C3287BB069CFAF
          92EB638E6669652D81B99BA015F53783F47FEC1F0A69FA795C491C40C99FEFB7
          2DFA922BE7FF00879A37F6DF8D2C2165DD0C2DE7CBC646D5E707EA703F1AFA70
          70314B132DA219CD6D63497A8563788FC35A7F89F4D6B2D4220C3AA483EF46DE
          A0D6CD15CC9B4EE8F1232945F345EA7CB9E25F0CEA9E0AD6963959C61B7DB5DC
          7950F8EE0F661E9DABD83E1D7C448FC490AE9BA93AC7AAC6BC1E82E00EE3FDAF
          51F88F6EBF5ED06C3C47A5CBA7EA116F89F9523EF2376653D8D7CDFE23F0EEA7
          E09D7C44EEEACADE65ADD47F2EF00F047A11DC76AEA8C9568D9EE7BB4EA4330A
          7ECE7A4D1F52515C47C3CF1D47E2BD3FECF74CA9AA5BAFEF5071E62FF7D7FA8E
          C7F0AEDEB9A517176678B5694A94DC27BA168A28A9330A28A2800A28A280128A
          2B17C53E22B6F0C6853EA570412A36C51E7991CF451FE7A669A4DBB22A117392
          8C77672DF13FC73FF08EE9FF00D9BA7CBFF133B95FBCBD614FEF7D4F6FCEBCAB
          C0BE0D9FC5FACE24DC961010D733773FEC8F73FA5675BC3AAF8DBC55B3719AFA
          F64CBB9E883B9F6503F957D27E1DD02CFC37A341A6D92E1231F3391CC8DDD8FB
          9AEA9354A365B9EE559470143D9C3E365FB3B482C2D22B5B5896286250888A30
          140ED5629296B91BB9E0B6DBBB0A28A28013DABC03E2BF843FB13581AB5A478B
          1BD63B80E91CBD48FA1EA3F1F4AF7FACDD7747B5D7B47B9D3AF5730CCB8241E5
          4F50C3DC1AD294F92573AB0789787AAA5D3A9F39F81BC572784FC411DD12CD67
          2FEEEE6307AAFA8F71D7F4EF5EB1F16F51B26F018512A486EA58CC055B3BBF8B
          70F6C7F3AF0A9ECA58F5292C22C4F224C625F2BE6DE41C7CBEB9AF52F07FC229
          AE962BDF1233C716032592B7CC7FDF3DBE839FA575545152536CF73190A11A91
          C449DADF8907C16B9D563D52EADE3B5964D2E65CCB2F448E41D0F3EB9C6073D0
          F6AEEE6F855E139AE0CE6C1D4B36E2AB3305FCB35BD777DA3784F47569E482C6
          CA21B5140C0FA051D4FD2BC97C4DF192F6ECBDB6810FD921E9F689403237D074
          5FD7F0AC7DFA92BC743CF4F118AACEA515CA99E8E967E0FF000241E7ECB2D3F2
          38773991BE99CB1FA0AE4F5AF8D9610168B47B096E9BA09673E5A7D40EA7F4AF
          2CB0D1FC41E2FBF67B682EAFE663879E46240FABB703F3AF45D13E08960B2EB9
          A960F786D07FECEC3FA7E356E108EB37766F2C361A8FBD899F348E4B53F8A7E2
          BD4890B7CB6919FE0B640BFF008F1CB7EB58223F107881B704D4F526CF5C3CDF
          E35F45695E01F0CE8E01B6D2606907FCB498798DF5CB671F85746A8A8A155428
          1D00153EDE31F8510F32A34F4A34CF99ADFE1C78BAE8663D12751FF4D1D13FF4
          222AF27C24F1730E6CA14F669D7FA1AFA369090A093C0A5F59919BCE2BBD923E
          747F847E2E519167037FBB70BFD6A8DC7C36F17DB0CBE8B2B0FF00A67223FE81
          8D7D0B63E23D1F52BD9ECACF51B79EE603892347C91FE3D7B7D2B578A7F589AD
          D0FF00B5B111769451F28B5A788340632341A969E7FBFB648BF5E2B674CF89DE
          2BD30A81A97DAA31FC17281F3F8FDEFD6BE942AA4608047D2B9FD53C0FE1BD60
          31BCD22D8B9EB246BE5B7FDF4B834FDBC5FC48B599D2A9A56A670BA37C6EB590
          AC7ACE9AF09E865B66DEBFF7C9E40FC4D764ADE10F1DDB1C7D8B50F979E312A0
          FD197F4AE275AF82313069344D4591BA886E8641FF00810E9F91AF37D57C39E2
          0F095DAC9776D716AC8DF25CC4DF2E7D9D7A7F3A6A14E7F03B32A387C2D777C3
          CB9647BA69DF0FECBC3A353B9F0FC8D0DF5D43E5C2F3FCEB0FD3DBA75CF415E2
          FAE695AD58789ED20F1635DCC8655433339937C7BB9D84F5EBD3DEBA2F0C7C61
          D4F4E296FAD466FED86079CB812A8FE4DF8E0FBD7AFE99ABE87E2CB18EE6D248
          2F238DD640AC3E689C7209079522A6F3A6EF2D4873C460E6E5557327D7FE09A9
          6F1C50DAC51C31AC7122008817685503818EDF4AF9C7E266B89AE78CEE5A0904
          96D6C041132F438FBC7DF9279AF4FF0089969E2F9228EE740B8905A46856586D
          89129CF56F71F4E4578090DBB073BB3CE6AB0F0FB46B94D08DDD66EEFF0023DA
          BE0968DE569F7DACC88374EFE44448E76AF271EC491FF7CD7ACD6378534B5D17
          C2DA75828C18A15DDFEF1E5BF526B6AB9EA4B9A4D9E4E2EAFB5AD29851451507
          389585E29F0CD9F8AB4692C2EC61BEF43281CC6FD88FEA2B768A69B4EE8A84DC
          24A51DD1F2B4B1EAFE09F1463260BFB37CAB0FBAE3D7DD48FE75F46784FC4D6B
          E2AD0E2D42DB0B27DC9A22798DFB8FF0F6AC4F88FE0B5F1468E6E2D5146A96A0
          984F4F317BA1FE9EFF00535E37E08F154FE10F102CAFBFEC929F2EEE1EF8F5C7
          A8FF0011DEBA9DAB42EB747B9351C7D0E78FC68FA768A86DE78AEADE39E17592
          29143A3A9C860790454D5C8782F40A28A2800A28A280109C0CF6AF9C7E2678B4
          F897C40D6F6D2674FB22638B07876FE27FE83D87BD7A97C53F147F607868DADB
          C9B6F6FF00314783CAA7F1B7E471F53ED5E5DF0C3C29FF00091F89167B88F758
          596249723876FE14FEA7D87BD74D18A8A7367B397528D283C554E9B1E97F0B3C
          1FFD83A28D4AEE3C6A17AA0904731C7D42FD4F53F87A57A151D0628AC2527277
          67955AACAACDCE5D45A28A2A4CC28A28A00299246B2C6D1BA864605581E8453A
          97B50072FE1BF0368BE187927B4B70F732313E749CB2293F757D0638F53DEB2F
          C6DF126C3C2EAF676812F354C7FAA07E58BD0B9FFD97AFD2B0BE22FC4DFB0B4B
          A36833037432B3DD2F222F555FF6BDFB7D7A79D784BC17AA78CAFD8C45A3B50D
          99EEE41900FA0FEF37F935D30A77F7EA1ECD0C2732F6F8A7A14EE2EB5EF1B6B6
          BBCCF7F7B27DC451C20F61D156BD4FC2BF076D6D44777E21717537516B19C46B
          F53D5BF97D6BBBF0E785B4BF0BD80B6D3A00AC40F3266E5E43EAC7FA74ADBA53
          AEDE91D119627329497251F762436D6B6F65025BDB431C30A0C2A46A15547B01
          45CDDDBD95BBDC5D4D1C30A0CB492305551EE4D63F89BC5363E19B359270F35C
          CC765BDAC43324CDE807F5AE76CFC25A9F8A6E1354F194A7CB07741A4C4C4451
          0EDBFF00BCDFE7DAB251EACE2852BAE7A8ECBF17E84D37C436D4677B6F0B68B7
          7AC3A9DA67FF0055003FEFB7FF005A902FC4ABC1BCBE8562A7A261DD87D7A8AE
          D60B686D2DD61B7852289170A91A85503D80AE4FC11E227D47ED5A5DDCC64BAB
          5725198E4BC79E09393920F1F975EB49CD276488962A9D3928462B5EFAFF00C0
          FC0AC64F893A7FCED068BA9A0FF9671B34721FA1385AF32F1D78D3C557F73269
          FA85BCDA4DB9FF009755054B8E9CB7F10FA715F445676B1A269DAED8BDA6A568
          93C47A061CA9F507A83EE2B485449DDA3AF0F8B8427CD382FEBF03E5082796DA
          649E095E2990EE478D8AB29F50457ADF83BE23F8AEFED8DA0D0DF5995384B846
          F2B07FDB6C6DFE55CF7837C21A66ADF11352D22EFCD92CEC1A52A9BB064D9204
          0188FAF6AF7FB4B3B7B1B64B7B5823861418548D42851EC056D5AA476B1E8663
          8BA3A41C2ECE33ED1F12EE3E74B2D06D57FB92C923B0FC54E290EB9E3DD306FB
          FF000DD9DFC43EF3585C1561F456C935DDD66EB3ACC1A35AACD3032492388E28
          9480D231E8066B9B9D75478D2C4462AF28AB7CFF00CCC8D13C7DA2EB173F6276
          96C350CE0DA5EA796F9F419E0FD3AFB57492C315C44D14D1A491B8C32BAE411E
          E2B335CF0CE93E24B4F2752B349081F248061D3FDD6EA2B9217BAE7C3C955352
          925D5BC385B6ADDE333DA8EDBFFBCBEFFCB814593F84B50854D69E8FB7F932AF
          8ABE0FE9FA807BAD0996C6E4F3E41E6173FCD7F0E3DABC91E3D7BC15AD8C89F4
          FBE8FA11D1C7F265FCC57D4567796F7F6915D5ACC93412AEE474390C2A96BBE1
          ED37C4760D67A95BACA9CED6E8C87D54F635AC2B35A4B5475E1F319D3FDDD6F7
          A3F89C7F823E2859F884C7A7EAA23B4D48FCA87388E63EDE87DBF2ABDE2EF86B
          A4F8989BA840B2D409C99A31C3F3CEE5EE7AF3D7EB5E41E34F016A3E10B9F341
          6B8D39DBF777207DDF67F43FCEBB1F879F14183C5A3F8827C838482F1CFE4AE7
          FF0066FCFD6AA50B7BF4CDEAE1B957D6306F4EC7AF59DB2D9D9C36C8CECB122A
          0676DCC4018E4F735629010464515CA788DDD8B451450014514500267AD786FC
          5DF078D3EF87882CA3C5B5CB62E5547DC93B37D0FF003FAD7B9553D574DB6D63
          4CB8D3EED37C13A1471F5EE3DC75ABA73E495CE9C2621D0AAA6B6EA7977C1DF1
          6F9B13786EF64CBC60C96858F55FE24FC3A8F6CFA57AEE6BE55BEB5D43C19E2C
          788314BBB198346F8E187507E847F3AFA5BC3FAD5BF88342B4D4EDCE1274C95C
          E763742BF81C8AD6BC127CCB6675E67875192AD0F8646AD14515CE796252310A
          3278029D5C57C4FD7CE87E0DB8589F17379FE8F163A8DDF78FFDF39FC48A718F
          33B1A52A6EA4D41753C57C75E217F1478B6E6E6225EDD1BC8B651DD01E08FA9C
          9FC6BDE3C0BE1C5F0C785EDACD940B971E6DC1F590F51F8703F0AF1AF855E1FF
          00EDAF1747712A6EB6B00277CF42FF00C03F3E7FE035F45D745795AD047A999D
          45051C3C3642D14515CC78E145145001451450025795FC4FF88474C49342D225
          C5EB8C5C4EA7FD4A9FE15FF68FAF6FAF4E8BE21F8C93C29A2910303A95C8296E
          BD76FAB9F61FCF15E21E14F0D5F78D3C43E4077D85BCDBBB96E4AA93C9CF763D
          ABA29535F1CB63D5C06162D3C456F85177C09E05B9F175F79B2EE8B4C85BF7D3
          63963FDD5F7FE55F44E9FA7DAE9563159594090DBC4BB52351C0A4D334DB4D1F
          4E82C2C61115BC2A15147F33EA7DEAE5454A8E6FC8E6C6632588979744158FE2
          5F105B786B459B50B9CB6DF962887595CF451FE7D6B5C903935E75E21D4ACBC4
          7F107C39A2DA5C25C2D9CEF7575B0EE546419504FAE41FCEA211BB31A14F9E5A
          ECB57F2347C27E19BA7BB6F13788B12EB570331C647CB691F6451D8FAFFF00AC
          9ED68C51DE93776454A8EA4AEC2BC5356BF97C37F12A6BB55DAA93E5D5780C8C
          327AFA83F9FA57B5D7917C51D2248B574D41232629E3019B39C30E3EB8C6DFC4
          D65536BA3CACC94952538EE9DCF5986549E1496360D1BA865607820F43521E86
          B91F873A99D43C230A39264B5630124F50391FA103F0AEB8F43569DD5CEEA351
          54829AEA78C7C393FF00177FC45F4B9FFD1EB5ECF5E2DF0E4FFC5DFF00117D2E
          7FF47AD7B4D6D5BE23D2CC3F8ABD17E4472CA96F0BCB2B848D14B3331C000752
          6BCA6C7509BC6FE3E8252FE5D9DAB6F863663C2AF7007F113DFB7BF00EAFC51D
          7CDB59C5A340C4497037CC47641D07E27F9537E15E9221B6B9D49E2399309148
          7B8FE2C7E9CFAE7D2B964F9A5CA8F9DAD55D6C4C684765AB3D205472C49344F1
          C88AF1B8219586411E869F4B5A9EA2D0F369A29BE1A6B02E20DF27856F64C4D1
          727EC521FE21FEC9FF003DB3E8B1BACA8AE8C191864303904551D774F5D5B42B
          EB07008B881E319EC48E0FE7587F0DF50FED0F02E9BB9B32C086DDD7BAEC2540
          3F80156FDE8DCE99BF694F9FAAD1F9F63A7BBB582FAD64B6B9892582452AE8E3
          2187BD7CF7F107E1F4BE16B937B641E5D2656E18F2606FEEB7B7A1FF0027E8AA
          AF79676F7F692DADD42B3412A9478DC7041A74EA3832B098B9E1E775B754792F
          C2EF88459A2F0F6B1365BEED9CEE7AFA464FF2FCBD2BD8ABE65F1D783EE3C1FA
          DEC42ED63312F6B377FF0074FF00B43FFAF5EB9F0CBC6BFF00092695F61BC707
          53B451BC9EB2A740FF005EC7FF00AF5A55A69AE78EC75E3F0D1947EB14767B9D
          FD14515CE7921451450014514500794FC66F0D7DAF4D8B5FB78FF7B6988E7C77
          8C9E0FE0C7FF001E3E958BF05FC49F66D46E3409DFF7773996DF3D9C0F987E20
          67FE026BD9EFACE1D42C67B3B840F0CF1B46EA7B8230457CB9750DE7843C58F1
          2922E74FB9CA3118DC01C83F4231F9D75526A707067B7826B1387961E5BAD8FA
          AE8C552D27518756D2AD6FEDCE62B889645F6C8E957B35CAF4678AD38BB312BE
          7FF8C5AD1D43C58BA7C6D9874F8F691FF4D1B96FD368FC2BDE6F2EA2B2B29EEA
          66DB1431B48E7D001935F2CDBC771E29F1622313E76A3779623F8773727F01FC
          ABA30F1D5C9F43D5CA69AE795596D147B97C27D0FF00B27C1B15CBA627BF6F3D
          BD76F441F4C73FF02AEEEA2B7863B6B78E08942C71A85551D801802A5AC652E6
          95CF36B54756A39BEA2D14515266145145002557BDBB82C2CA7BBB9711C10A17
          918F60064D58AF25F8CFE253059C1E1FB77C3CF89AE31FDC07E51F8919FC07AD
          5C23CD2B1BE1A83AF55411E67E21D66FBC67E297B908EF24F208ADA01CED5CE1
          547F9EA4D7D05E0BF0B41E14D022B450AD72E37DCCA3F8DFFC0741FF00D7AF37
          F835E17171752F886E63CA424C56A08EAD8F99BF01C7E27D2BD7356D674FD0EC
          9AEF51BA8EDE15EEE7927D00EA4FB0ADAB4BEC44F4331AD76B0D4B6468573BE2
          5F1A68BE168737F720CE4652DE2F9A46FC3B74EA702BCC3C55F18AF2F77DAE80
          86D603C1B9907EF1BFDD1D17F9FD2BCBE69E5B999E69E5796573977918B331F5
          24D3A7876F591585CA653F7AB68BB1D9F8ABE26EB5E232F6F039B0B06E3C985B
          E671FED377FA0C0FAD6EFC10D38CBAE6A3A811C4102C43EAE73FC93F5AF2CEF5
          F427C1FD2BEC1E0A5BA75C497B334BC8E768F947FE824FE35A564A10B23B71F1
          861F0AE3056BE87A0D14515C27CC8958BE27D0D35ED1E4B668D5A553BA2258AE
          0FD7B6464771EC6B6E929357444E0A71717B33CBBE15BC967AA6ADA5CE8E9200
          AE55C60A95383C7E22BD44F435CC35BADAFC468AE30156EF4F6407BB3A3A93FA
          11F9574E7A5282B2B186129FB387B3ECD9E2DF0E7FE4AF7883E973FF00A3D6BD
          A09DAA49EC2BC5BE1C1FF8BBBAFF00FBB73FFA396BD4FC5375F63F0C6A32E486
          303226DEBB9BE51FA915BD7D247AD99CB96A5FB25F91E40D15CF8D3C693C89BB
          CB9A6C062A4EC8C100640F418F4FA8AF6AD334F874BD36DECA05012140B90A06
          E3DC9C773D6B3BC2FE1DB5F0FE950C51C282E59019E4EACCDDF9F4ADDAE7846D
          AB3C5C1E1BD927397C4F7168A28AB3B84232315F376ABAAEADE06F1F6ACBA65C
          B42A2E59CC2798DD5BE6008FA1EBD6BE91AF07F8D5A51B6F12DA6A2AB84BB836
          923BBA1C1FD0AD6F876B9ACFA9E9E54E2EABA72D9A3B7F097C55D2F5EF2ED751
          2BA7DF9C001DBF7721FF0065BB7D0FAF7AF410411915F1D576FE13F899AC786C
          A5B4EC6FB4F1C793237CC83FD96EDF43C71DAB4A987EB13AF15947DAA3F71EE9
          E29F0EDB789F429F4EB900161BA2931CC6E3A30FF3D335F3859DD6A5E0AF1509
          3698EF2C652B2464F0E3B8FA11FCF35F45786FC5FA478A6DFCCD3EE479A065E0
          7E244FA8FEA38AE07E33785C496F1788ED63F9E3C457581D57F85BF03C7E23D2
          A68CB95F248C32FAAE94DE1EAAD19E9FA4EA96DACE956DA8DA3EE82E103A9EE3
          D41F7078ABD5E2FF0005FC4A63B89FC3D70FF2C999EDB27A1FE25FCB9FC0D7B4
          563521C92B1C18BA0E85570168A28A839C28A28A004AF13F8D9A1886FECB5B89
          7E59C791311FDE1CA9FA9191FF0001AF6CAE5FE2168E35AF056A36EABBA58E3F
          3E2E39DC9F371F5008FC6B4A52E59A675E06B7B2AF1974397F82FADFDAFC3F73
          A4C8D992CA4DD183FF003CDF9FFD0B77E62BD40F35F377C2DD5FFB2BC7368ACD
          88AF01B67CFA9E57FF001E007E35F48D5578DA66B99D2F675DB5B3D4E2FE2A6A
          9FD9BE03BD556DB25D15B75F7DC7E61FF7C86AF32F837A67DB3C64D78CB94B28
          19C1F476F947E85BF2AE83E395FE1348D3D4F04BCEE3E9855FE6D57FE08E9E21
          F0FEA17E570D71702307D5507F8B35691F768DFB9D54FF007397B97591EA7451
          45729E2851451400514514011CD2A4113CB23054452CCC7A002BE59D6EFEE7C5
          9E2E9EE6356796F6E024087A85CED41F962BDD7E296AE749F035E2A36D96EC8B
          64FF00817DEFFC74357977C21D1BFB4BC622F245CC5611997A71BCF0BFCC9FC2
          BAA8AE58B99ED65C951A33C433DC743D1E2D0F40B4D2EDDB6AC1104DE0756EED
          F89C9AF17F18F85351D57C43782CF5E5D66F20387B4998473C63AE15785231CF
          CB8FA57BDE78AF2DB6F0AE99E25F1FF8BE1D4124124325B3C1344E55E2250E48
          3F975F4ACE94ECDB672E0EBB84E551BF3DAFD4F12B8B79ED67782E61921950E1
          A3914AB0FA835157B7EB7E12D76D21F2EF2D61F1569A83E5F33F777910FF0065
          C72DFA93E95E777DE1AD36E1279746D4BCB96105A5D3F53C413C78EB827E56EF
          E98AEC8D5523DEA18E8545AFF5FE460699A7CFAB6A96BA7DB0CCD732AC6BC74C
          9EB5F57E9D650E9BA6DB59403115BC4B120F651815E4FF00073C24CBBBC49791
          E320C76608EDD19FFA0FC6BD8AB97113E6765D0F1B35C4AA951423B2FCC28AA1
          AA6B1A7E8B666EB51BB8ADA11FC4E719F603A93EC2BCC357F8BD797F72D65E14
          D2A5B873C09648D9D8FB845E7F3FCAB28C252D8E1A386A95BE15A77E87AF668C
          8AF059B4EF8ABAD1F3646D4101EC2E12DC7FDF2187F2AAC741F89DA61F355B55
          E39C477A25CFFC0431CD69EC57F323AD65F1B6B5237F53D8FC52AD6D6F69AC46
          BB9F4E984AE02E498986D900FC0E7FE035B91C89342B2C6C191D432B0E84115E
          1963F147C47A3C86C7C4DA79BA8586D749E1F265DBD0F6C1FC473EB5EA1E0DF1
          0683AB68D141A35C3158230AD04CDFBD41EE3FA8E2B39529435E87255C0D6A12
          726AF17D51E77F0E3FE4AE6BDFEEDCFF00E8E5AF47BF61ADF88A0D350EEB6D3D
          96E6ECF62FFF002CD3F9B1FA0AF36F86E73F16F5DF75B9FF00D1CB5D7EA3E2DF
          0FFC3FB37B269DAFB516769648E3C1777639CB9E8BDBFC2AEB45CA49237CC68D
          4AD888C20AFA23BEA33EF5E057BF147C61AFDC343A3406DD4F48ED21F364C7BB
          107F402A08ED3E28DC9F355F5A19E70D3ECFD0914FD83EAEC68B2C9A5EFC92F9
          9F42668AF0CB6F127C4EF0FE1AF2C6EAF205EAB35BF9800FF7939FCCD763E1CF
          8B5A36AEEB6DA883A65D938C4A73193FEFF6FC71532A525B6A635303560B9A36
          92F2D4F43AE1BE2A684759F06CF2C4BBA7B23F684C75207DE1FF007CE4FE02BB
          6565750CAC0A919047343AABA9561953C106A22F95DCE7A551D2A8A6BA1F1E52
          8C9E3A93D2BBCD7FC051E9BE39FECE9AFE1D3F4CBADD35BDD4E3E50BD4A7A647
          4E48E31EB5D16871E936131B7F0468726B7A821DAFAA5E0C4311F6271F90C67D
          4D77BAAAD747D54F1D050528ABDFEEF9B39AF0D7C3FD76529AADD5CFF615A45F
          3FDAA66D8EA3D40C8C7E38EBDEBD8F48BED2BC59A15F69B15ECBA9411A9B69AE
          2440BE6123A8C003BF502B2EDBC033EAB3ADEF8C3539353981DCB6919296F1FD
          146377D78CF7CD27C34863825F13C70C691C49AC4C88A830140C60015CD526A4
          AF7D8F17135D574E77D636DB6FF367887FA67843C5BDC5CE9D75F40C14FF0026
          1FA1AFA92C2F22D42C2DEF2DDB7433C6B221F5046457887C6AD1C5A788AD7558
          D7097B16C723FBE9C73F815FCABB5F83DAB9D43C1DF6376CC9632B45D79D87E6
          5FE647E1555BDF8299B63D2AF8686216FD7FAF53D0E8A28AE53C50A28A2800A6
          B00CA41190474A751401F296B36B27873C5F77043F2BD95D96889EC03650FE58
          AFA92C2EE3BFD3EDAF22398E789645FA1191FCEBC13E31E9E2D3C6DF6955F96E
          EDD2427FDA5CA9FD02D7A9FC30BFFB7F8034E2C72F08681BDB6B103FF1DC574D
          6F7A0A47B5987EF70D4EB1E55F18AEFED3E3A6873C5B5B471E3DCE5BFF006615
          EB1F0D2CFEC5F0FF004A4230D2234A7DF73161FA115E1BF106E3ED5E3DD624F4
          9BCBFF00BE542FF4AFA3BC3F6DF63F0EE9B6B8C7956B1A7E4A053ABA538A0C7F
          B984A50FEB634A8A28AE53C50A28A2800A28A2803C5BE38EA3BAF34AD314F088
          F3B8F5C9C2FF0026ADCF82BA67D9BC2F737ECB87BBB8201F544181FA96AF3EF8
          B5766E7E205E464E45BC71C43FEF90DFCD8D7B4F802D059780F47840C66DD653
          F57F9FFF0066AEA9FBB4923DAC4FEEB01082EBFF000E7495C3F86FE5F8A3E315
          F55B43FF0090FF00FAF5DC570DA0FCBF163C543FBD0DB1FF00C705610D99E6D0
          F867E9FAA3B83D2BC53C51AD693E22F19436DAFC0FA4E976873BE7B5713DD1F4
          C85CAA7F9FA7B65472C114E85258D6443D432E4510972EA2C3D654A4DB5FF00E
          40FC48F05D85AA470EA71F968A1638E185CE00E8000BC573DA87C53BCD4EF0E9
          9E1DD3D21B865CACDA948B167D36A93C93DB9FC2BD260D32C2D9F7C1656F1BFF
          00792200FF002AADAC787B49D7EDBC8D4EC62B85C7CACC30CBF461C8FC2A94A0
          9DEC694EA61E32BB8B7EAFF4D0F18D4B435B391756F889AC4B35D38CC5A740E1
          A461E991F2A2FD38F7AB361A8F8AB5CB536FE11D261D0B471D66185C8F5691B9
          27FDD19AEA6F7C13ADE91184D1EE60D634E460C34BD59448171FDC73D3DBA01E
          F5C978A669BC4F702CEEF52BAD12F5400BA5EA2365B9FF0071D4007FE040FD6B
          752E63D2A75554B6CFF25FF6E94EE741B3CE75DF88D134DFC4B0992EB1F8EEFE
          945B699A144FFF0012CF8932C1276DD04B10FCF70AE3354D1352D166116A3672
          405BEEB30CABFF00BAC383F8550FAD6DC975B9E8C70EE51D27A7A2B7E47B1443
          C5C2C8877D27C63A483F346AEAEE07B1C673FF007D5619F0F5BDECEFA9782E6B
          AD3F57B4F9E6D26725668FD7613D47B1F5FC2BCFED2F2E6C2E16E2D2E25B7997
          A3C4E548FC4577BA378F20D4E7B783C4E0A5CC447D9B58B7016680FF00B58FBC
          BEBDBD41A8719475461530F5692E686ABCBF55B3F91CC695AA6BB0EBB72DA699
          5755BEDF0BF969FBCCB3066C0FE1391F857510786B47F0ECEABAD24DAEEBF27C
          C34AB3258213CFEF18724FF8F4239AD9B4D275FD3FC5FABEB37D7B616D612C1B
          E4D59221B7CB6E8621FDF38C739FF81719E6F52F1F0B18E5B1F09DBFD82D9CFE
          F6F241BAE6E0F76663D339FAFD3A50DB93F744E73AD2E5A5D95EDFABFF0023A9
          997C6CD66A1AE347F09E9DFC316F48CE3EA33CFE55892E9914ADFE95F1415A4F
          692471F9EFAF3DB8B99EEE669AE6792695BABC8C598FE26A1AA54EC6F0C1B8EB
          CC97A25FADCF51B3D1FC4E8FBFC3BE39B5D49D79100BC258FF00C01B23F3AAFA
          96B4934E2C3E20F871A2B83C26A36C823947BF1F2B8FA71ED581A2781756D4E0
          17F72C9A5E9AB866BCBB3B063D541E4FD781EF5E89A56B573258268DE19B6B9F
          11490B82752D486208987F749E4E3B0CE7D09ACE565E671D66A0F46A5E7B35F3
          5A15F4FD33C53E10B5FB7E89ACDADEE81E5F9A91EA0C62C2FA61B1B4F3EA056D
          E91F17F42BC8C7F6947369D2676966532464FB328FE956AD3E1FC9A95C25EF8B
          B529355B85395B653B2DE33ECA3AFD78CF715D8AD859A5A0B45B5805B01B4442
          31B00F4C74AC2528BDF53CEAD5A8CB49ABBEEB4FF87FB8E2BC51AB7823C53A14
          96777AE59AFF001452AB8DF1BF62075FC2ABFC36F17A6A119D065855A5B30563
          BAB584886641DFA0DA7EB8CD75FF00F08AF87BCCDFFD87A6EFFEF7D9533FCAB4
          E182282358E28D2345E8A8B802A79A3CB63175A9FB374D26FD5EC487A1FA570D
          F0D7E68BC48FFDED6EE3FF0065FF001AEE4FDD35C37C30E74CD69FFBFABDC37F
          E834A3F0B229FF000A7F222F8BDA60BEF03CB70065ECE649863AE33B4FE8D9FC
          2B87F827A89B7F12DED81384BAB7DE3DD90F1FA3357B0789ECC5FF0085B54B5C
          64CB6B228FAED38FD6BE7AF871766CFC7FA4C99C0790C47DF7291FD6B7A5EF52
          68F4F06FDA60AA537D0FA728A28AE53C50A28A2800A28A2803C83E39D9E6D748
          BD03EE49244C7EA011FF00A09AB5F03EEFCCD0B52B3CE4C37224FC1940FF00D9
          4D68FC66B6F3FC1025C7FA8BA8DFF3057FF66AE4FE085D797AAEAD6FFF003D20
          47FF00BE588FFD9ABA96B46C7B50FDE65CD767FA9C078889B9F17EAB8EB25FCA
          07E321AFAB2350B1AA8E00000AF94EE3F79E2F973FC57E7FF4657D5CBD05188D
          9066FA2A71F2FF002168A28AE53C50A28A2800A0F4A283D0D007CB7E3B9BCFF1
          D6B2FE972C9FF7CFCBFD2BE96D220FB3E8D6500E3CB8117F2502BE61F17E7FE1
          33D6F3D7EDD37FE866BEA6B7C7D9A2C74D83F957557F8627B399FF000692F2FF
          0022635C2E91F2FC5EF108FEF59C07F415DD570BA77CBF18F581FDED3A23FA8A
          C21D4F368ED3F4FD51DD51451506025145713E3AF8816DE118D6DE18D6E75195
          729116C041CE19BF1EDFCA9C62E4EC8BA74A7565CB057676D54753D1F4ED66D4
          DBEA3670DCC47F8645CE3DC1EC7DC57CFD75F15FC5B71333A5FA4084E4471C2B
          85FCC13F9D58B0F8BFE2AB47CDC4B6D789FDD9610B8FC5715BFD5E6B53D2FEC9
          C4457326AFEA7A0DFF00C3FD474C81D3C3B7D1CF64C7E6D27531E6C247A293CA
          FF009E6BCE756F0DE986E4DBDCC13F867513C086EF325A4A7FD89472BF8E457A
          37877E2FE8BAABAC1A8A369D3B700B9DD193FEF76FC47E35DCDC5AD86B36223B
          88A0BBB4940601943AB0EC47F8D0AA4E0FDE147135F0D2B555F3FEB467CB7AB7
          87F53D1197EDB6ACB13FFAB9D0EE8A41DB6B8E0F15975F425F7C3A9F4F595FC2
          FA81B68A4CF99A75E7EFADA4F6C1CE3F5FC2BCEB5BF0E58C73F97AB69F3786EF
          58FCB32033594ADEC47299F6CE2BA215948F5B0F9842A6FF00D7CBFCAE70E6F2
          E5AD8DBB5CCC6024131973B78E9C7B64FE750D75907C3FD599DA59E7B0834D50
          18EA2D72A6065CFF00091C93ED8FCABA2F0FE8F64B304F0AE8EFAE5E21C36A97
          E9B2D623C7289DFF001E6A9CE2B6369E2E9415E3AFF5D59CAE8BE09D5355B7FB
          6CFE5E9DA68197BCBC6D898FF673F7BF97BD75FE1FD32C219847E12D19F5CBE4
          386D56FD765B44DC72AA7FFD7EE6BB7B2F87BF6DB84BEF15EA126AF74A72B01F
          92DE3F6083AFE3F9576B0410DB42B0C11245120C2A20C003D85734EBDCF1F139
          8B968B5FCBFCDFE071567F0F9AFEE12F7C59A8C9AB5C29CADBE765BC47D9475F
          D33E95DAC16F0DAC090411245120C2A228000F602B97D77C7DA6E9577FD9F651
          CBAA6A8D90B696A371C8FEF1EDDFD6B8EF116BBF1362D3A5D43FB3A2D3ECA352
          CFE5147755F53924FE42B3E594F739152AD5DAE7692E97D3EE47AF71EA28AF95
          DBC65E25790B9D7B50C9F4B8603F2CD7AAFC2FF88177ADDCB68DABC9E6DD042F
          04C700B81D54FA9EF9F6AA9D09455CD6BE57568C1CEF7B1EA9451456079A237D
          D3F4AE1BE1673E1BBD7FEFEA33B7EA2BB96FBA7E95C3FC28E7C1BBFF00BF7531
          FF00C7AAD7C2CDE1FC197AAFD4ED9D4321046410722BE54D04FD8FC5FA667FE5
          8DFC59FC2415F56B7435F28C3FF23847B7FE82031FF7F2B7C3ECCF4B29D63513
          EDFE67D5C3A0A5A45FBA296B94F1828A28A0028A28A00E37E29C7E6FC3AD53D5
          446DF948B5E51F096EBECBE29BA73D0D930FFC7D2BD7FE238DDF0FF5807FE788
          3FF8F0AF0DF014862D76761C7FA330FF00C796BAE8FF000D9EF65D1E7C2CE2F6
          BFF919979FB9F185C67F83506FD24AFAB97EE8FA57CA7E2A8DADFC63AC28E0AD
          F4A47FDF648AFAA20904B6F1C83EEBA861F8D2C46D16679B7BD1A72F2FF225A2
          8A2B94F1428A28A00283D28A2803E5BF1E43E478EB594FFA7967FF00BEBE6FEB
          5F4B68F38B9D16CA71CF990237E6A0D7807C5BB436DF102EE4C605C451CA3FEF
          9DBFCD4D7B3FC3FBC17BE03D1E5073B6DC45FF007C7C9FFB2D7556D69C59ED66
          1EF61694FF00AD8E96B85B4F97E345F8FEF69287FF001F15DD570D17CBF1B26F
          F6B4507FF228AC21D4F3286D2F43BAA28A2A0C069E86BE53F156AAFAD78A351B
          F76C8926609ECA3851F9015F5637435F23EAB68F63ABDE5A483E786778CFE048
          AEAC2EECF6B254B9E4FA952BD9BE187C3EB29B4B8F5CD5ED92E1E7C9B78645CA
          AA74DC41E093DBDB9EFC78C8E4E3B9AFACF42B6167A0E9F6C3A456D1A7E4A056
          988934AC8EBCDEBCA9D3518BB5CCAD5BC03E1AD62D1A0974B82163F765B6411B
          A9F5C81CFE39AF227D5BC47F0AF5C9F4A171F69B42A5E25933B1D4E40603F84F
          A81E95F41D79F7C47F065E78A6FB4692CE38CC70CA52E496C30462BC8CF50307
          F3E86B9E94F5B4B63CAC1E25297B3ACEF17DCEABC357F79AA7876C6FAFE18E1B
          8B88848C919F9403C8FD315A3716B05DC0F05C431CB0B8C3248A1830F7069F1C
          690C491A2854400281D00A7D64DEBA1C327EF36B438D5F861E165D47ED62C98A
          03B85A99098437AEDFE9D3DABAE8608ADE148A18D638D0615117000F61525143
          937B8E75673F89DCAD7D7D6DA658CB79793A436F12EE791CF00578878DBE2B5D
          EAAD369FA2335B58676B4F8C4930EF8FEEAFEBF9E2BDA353D1EC7584852FE013
          C704A26446FBBB8020123BF53C57CABA9A08F56BD4FEECEEA3FEFA35D1878464
          EECF5729A14AA49B92BB5F71DA7C1F8CCDE3D491B9296F2364FE03FAD7BF5F5B
          477B61716B28CC7346D1B0F62306BC23E0B8CF8D263E966FFF00A12D7BF37DD3
          F4A588F8CCF3576C4E9D91F1F489B2574FEEB115D77C2E0C7E21E99B7AFEF3F2
          D8D9AE4EE5B7DDCCE3F89D8FEB5E97F05B467B9D7EEB5674FDD5AC5B118FF7DB
          D3F0CFE62BAAA3B419EE6326A386937D8F76A28A2BCD3E3C6B9C231F6AE27E12
          8FF8B7F66DDDA594FF00E3E6BB2BA6D96B337A213FA5723F0A463E1CE987D4CC
          7FF22BD5AF819D11FE04BD57EA76323058D989C00324D7CA9A00379E30D3323F
          D6DFC59FC6415F4B78A6F3EC1E15D56EB3831DAC857EBB4E3F5C57CF9F0DECCD
          E7C40D25319092194FB6D527F9815BD0D23267A3967BB46ACFC8FA687414B451
          5CA78C1451450014514500729F121B67C3ED5C9FF9E407E6C2BC43E1EC06E35E
          9D076B563FF8F2D7B2FC579445F0EF5119E5DA251FF7F14FF4AF31F83D6C27F1
          4DE161945B2607EBBD3FFAF5D7474A6CF772F97B3C24E6FBFF009191F12ADBEC
          BF107564C6033AC83FE048A7F99AFA0BC2B73F6CF09E93719C97B3889FAED19F
          D6BC67E34D9183C6105C85C2DC5AAE4FAB2B107F4DB5E91F0A6F7ED7E00B152D
          9781A485BDB0C48FD08A5575A5164637DFC1D39F6FEBF43B6A28A2B94F1428A2
          8A0028A28A00F17F8E3A6EDBAD2B5351C323C0E7D30772FF0036ADAF829A98B9
          F0C5DE9ECD97B4B8C81E88E323F50D5B5F14348FED7F035EEC5CCB698B94FF00
          80FDEFFC74B5795FC22D67FB33C64B6923621BF8CC5C9C0DE395FE447E35D4BD
          FA36EC7B54FF007F97B8ADE27D115C237CBF1B13FDAD13FF006A9FF0AEEAB84B
          A507E345A6464368ECBFF910D610EA79943797A33BBA2B9AD5BFE122D241BAD2
          847AA5BA8CBD94EDB651FEE49DFE8C09EBCF6ACED27E28787EFE636D7B24BA5D
          E29DAF0DE26CDAC3A8DDD07E38A4A0DABA12A1392E686ABC8EDABE7FF8BBE1D7
          D2FC4BFDA71A0FB36A0371207DD906370FC783F8D7BE452C73A0922915D18643
          29C83599E24D02DBC4BA24FA6DD0C2C832AF8C9461D187F9E99AAA53E495CD70
          588787ACA4F6EA7CA59C57D65A05DADF787B4EBA5C625B68DF8F7515F317887C
          3F7DE1AD5A5D3EFE3DAEBCA38FBB22F620FA57AEFC1AF112DD68D3687338F3AD
          18BC20F531B1C9FC9BF98AE9C42E68F323D8CD61ED682AB0D52FC99EA7451457
          11F38145145001451450021E86BE49D6FF00E43DA8FF00D7D49FFA11AFAD9BEE
          9FA57C8DAABEFD62F9FF00BD7121FF00C78D75617767B992FC53F91DD7C1838F
          1A4DEF68FF00FA12D7AFF8CF5C8FC3FE15BFBD67092F9663806465A46E1719EB
          EBF406BE7EF04F8997C29AEB6A26D5EE4981A35895B6E4923BF3E95DB8F0CF8B
          3E24EA315F6BB9D374E8FF00D5C6570403D76A75C9E393FD315556179F33D8BC
          6E1D3C4FB4A8ED156F9F91E71A16857FE23D563B0B088C92B9CBB1FBB1AF7663
          E95F4B7857C3D0786341B7D360C1651BA5703EFB9EADFE7B014FF0FF008674BF
          0CD88B6D3A008081BE46FBF27BB1EF59DE21F1F787FC37BD2EAF04B72BFF002E
          D07CEFF8F65FC715954A8EA3B44E3C5E2AA6325C94D6875358FAD789B47D0230
          751BE8E376FB910F9A47FA28E4D7925DFC46F1578C6FFF00B2FC37686D564FF9
          E7F34817B92E7851CFFF005EBBAF07FC3BB5D0A41A9EA729D43597F99E790960
          8C7AEDCF7FF68F3F4CE2A5D3515EF18CF08A8ABD67AF65B9B0350BFD4748BABB
          96CDEC2D8C0EC91CDFEB9B8EAC3A27D393CF6E954BE182EDF877A48FF6643FF9
          11AB7B5C6D9E1FD45BD2DA43FF008E9AC6F86EBB7E1FE903FE9913FF008F1A5F
          6199DEF45DB4D57E4CC9F8BFA98B1F04496C1B0F7B324431D700EE3FFA0E3F1A
          E23E0969C67F11DF6A04656DADC20FF79CFF00829A6FC68D67ED9E24B6D2E360
          52CA2DCE07F7DF07FF00410BF9D771F083473A778316EE45C497D2B4BC8E760F
          957F913F8D6DF051F53D1FE065FE72FEBF23D068A28AE53C50A28A2800A28A28
          03CD7E355CF93E0FB7841E67BB4047B0563FCC0AE7FE075AEFBAD66E48FBA914
          60FD4B13FC853FE39DEEE9F47B107EEAC9338FAE02FF0026ADAF82967E4F856E
          EE99706E2E8E0FAAAA803F5CD756D40F697EEF2EF57FA953E3869FE6693A66A0
          07FA899A238F4719FF00D93F5A8BE076A01ACF55D359B98E449D07AEE183FF00
          A08FCEBB4F887A5FF6B781B53815732245E7271CE50EEFD4023F1AF18F853AAF
          F66F8EED91DB11DE235BB67D4F2BFA803F1A21EF526BB050FDF60250EB1FF873
          E90A28A2B94F1428A28A0028A4DC3D452E7340114B1ACD13C6EA19581041E845
          7CB5AF69B71E14F175C5AC45924B3B81240FDF19DC87F2C57D535E4FF19FC346
          E6C20F105BA664B6FDD5C63BC64F07F027F5F6ADE84ED2B3EA7A795D750ABC92
          DA47A2787F58875FD06CF53871B678C3100FDD6E8C3F0208AE67C5565AC69DE2
          CB2F14E9B603508ADED9ADE7B647DB260927728EFD7A5717F06FC502D6F66F0F
          DD4988EE0F996C58F47C7CCBF8819FC0FAD7B754CD7B3998D7A6F0B5DAB5D7E8
          CC1F0F78B749F12C4DF629F6DC27FACB6946D9633EEBF5EE38AA5E2DF01693E2
          C84BCD1F917C1711DD463E61E81BFBC3EBF862A5F1078274CD7A5178BE658EA6
          9CC77D6A76480FBE3AFF009E456227897C41E0F71078AAD8DEE9C0E1756B44CE
          D1FF004D1074FAFF003A4B7BC09A6B5E7A0ECFB75FF82797EA163E2EF86F7B88
          AEAE21B766FDDCD136E864FAA9E33EC4574FA1FC6CB88B6C7ADE9E255EF35A9C
          37FDF2783F98FA57AC433E95E24D2B746D6F7F6538C1E8EADEC47F4AF25F197C
          2196D4497DE1C0D2C23E66B363965FF709EBF43CFD6B78CE13D26B53D0A588C3
          E23DCC4C6D2EFB1DAC9A8F833E23588B37B98659483B11DBCB9A338E4AE79FE6
          38EF5E73AD7C2CF1168377F6DD1256BC8E33BD1E06D93263DBD7E95E75246F0C
          AD1C8AD1C88DB595860A91D8D751A27C45F12E865521BF6B9807FCB1BAFDE0FC
          FEF0FC0D68A9CA3F0B3B2383AB417EE2575D99B707C4BF1C68CC6DEFA1133AF1
          B6EAD8AB0FFBE715DD782BC4DE32F10EA892EA3A5456DA56C3BA4F2D9327F876
          EE24B74EDEB54B44F8D1A4DD058B57B492CA4E8644FDE47F5E391F91AF44D375
          7D3B57B7F3B4FBC82E23F589C1C7D7D2B0A8DAD1C6C79B8B938A6A54527DCBF4
          5145739E50514514018FE21D7AD3C3BA5BDE5DEF6C9D91C518CB48E7A2AFBD78
          C685F09B5BD6E6377A991A65BC8C5F0E374A73CFDDEDF891F4AF75BC9ED6D203
          737724314517CC64948013B6727A75AF3CF117C63D274F2F068F136A138E3CCF
          B9103F5EA7F0FCEB6A4E4B4823D0C14EBA4E3423ABDD9D1E81E02F0F78682CB6
          F68B24EBCFDA6E70EE31DC765FC00ACDF10FC55F0FE881A1B797FB46E87FCB3B
          739507DDFA7E593ED5E2DAFF008DB5EF12330BFBE6101FF97787E48C7E1DFF00
          1CD73EAA5982A8258F000EF5BC685F59B3D2A595B9BE7C44AECECBC43F137C43
          AFEF896E3EC36A7FE58DB12091FED3753FA0F6A87C1FE02D53C5B7024406DF4F
          07F7974E383ECA3F88FE95D67823E134975E5EA3E23468A12374765D19BFDFF4
          1FECF5F5C74AF67B7821B5812082248A28D42A220C0503A002A675630F760678
          8C752C3AF67865AF732FC3DE19D33C3160B69A74010607992372F21F563DFF00
          956CF158BAFF008A349F0D5B79DA8DD2A3B0FDDC29F34921F65FEBD2B9630F8A
          BC73CCE64F0FE88DFF002CD4FF00A54EBEE7F841FF0039AE7E572D59E4AA73A9
          FBCA8ECBBBFEB52E78B3C6165E4DD787F4B8E4D4F56B989E1105AF22324632ED
          D0633FE38AD1D154F84BC036C353DB1B58DA6E9829CE08E481EA7B568687E1DD
          2BC39662DB4CB44854FDF7C65DCFAB1EA6BCD7E33F8A02C717872D64F99B12DD
          E0F41FC2A7F9FE02AA2949F2237A3055E6A8D35A5EED9E671A5E78BFC5A17937
          5A8DCE4F70A18F3F828FD057D49636915858C16702ED8608D6345F400605790F
          C17F0D16967F115C27CAA0C36D91DFF89BFF0065FF00BEABD9AAB112BBE55D0D
          734ACA551528ED1168A28AC0F2C28A28A0028A2A1B9B88ED6D65B89582C71217
          763D80193402573E76F8B1A88BFF001EDD229CA5AC6902E3D86E3FAB1AF67F87
          DA7FF66F81349808C3343E6B7D5CEFFF00D9ABE788966F13F8B141CF9BA8DE73
          8FE1DEFCFE59AFAAA28D21852340151142A8F402BA6BBE58A89ED664FD9D1A74
          473AAC88CAC01523041EF5F2B6B3673F85FC5D736F112B258DD6E849F407721F
          CB69AFAAEBC47E35E89E46A765ADC6BF25C2F912903F8D7953F88CFF00DF3538
          795A56EE639555E5AAE9BDA47B0E95A845AAE93697F07FABB889645F6C8CE2AE
          D798FC18D745E787E7D2257CCB62FBA307FE79B73FA1DDF98AECFC59AE7FC239
          E19BDD4C287789311A9E85C9C0CF238C9159CA0D4B94E3AD87942BBA4BB94FC5
          7E39D23C27162EA4335E32931DAC47E63EE7FBA3DCFE19AF19D7BE2A788F5876
          4B7B8FECFB7CF096E70DF8B75AE59DB52F106AA58F9F7B7D70DD8176635E93E1
          CF82F753859F5EBAFB3A9E7ECF010CFF008B741F866BA9429D35796E7B50C361
          7071BD67797F5B23CC26BDBCBA98CB35D4F2CAC796672C4D75FE1EF1A78A7C28
          629E74BB9F4C72018EE55B691FECB1FBA7E95EE5A3784B42D0147F6769D0C520
          1FEB48DCFF00F7D1E6B1BE24EBFA7693E15BDB4B8789EEAEA131C56F9F98EEE3
          763B01C9CFA8A97594DF2A4652CC215E4A9469DD33A6D2754B6D674BB7D42CDF
          7C13A865CF51EA0FB83C7E153DDDA437D6735A5C4624866428E87A3291822BCE
          FE0ADC4D2F84EE6172C522BA611E4F4040240FC73F9D7A5D73CE3CB268F22BD3
          F6355C5743E5BF12E897BE0DF14BDB2BBAB44E26B59C705973956FAF1F98AF7E
          F0478AA1F166811DD02AB7718097310FE17F5FA1EA3FFAD55BE20783E3F16686
          5620A350B7CBDB39EE7BA1F63FCF15E17E18F115FF0082FC45E788DC6D6F2AEE
          D9B8DC01E41F461DABA3F8D0F347B1A66187FEFC4FA8E98E8922323A86523041
          1904554D2755B4D6B4D86FEC65125BCCBB95876F63E8455EAE5D8F09A7176670
          FA8780E4B1BC7D4FC237A74ABC272F6FD6DE6F665FE1FC3F2A5D33C7A2DEF134
          AF15599D23513C2C8E7F7137BABF6FC7F3AEDEA96A7A4D8EB366D69A8DAC7710
          3754906707D47A1F7155CD7D246EAB292B5557F3EBFF0004E73C59E00D23C5B0
          99C816F7D8F92EA219278E370FE21D3FC45783F897C27AB785AEFC9D42DCF96C
          7F773A731C9F43EBEC79AF666D03C49E0B265F0DCEDA9E96A72DA5DD3FCE83FE
          99BFF4FD0D6B697E25D03C676D2E9B73104B9236CFA75E261D48EBC1EB8F6E9E
          D5B42A386DAA3BF0F8AAB87578BE687E2BFC8F99AA7B5BCB9B1B813DA5C4B04A
          BC0789CA91F88AF4DF197C23B8B0125F787835C5B8CB35A9399107FB27F887B7
          5FAD796BA346CC8EA5594E0AB0C106BAA338CD687BB46BD2C446F1773D0743F8
          C1AFE9BB63BF58B51847F7FE493FEFA1C7E62BD2743F8ABE1AD5F6C735C3584E
          7F82E86D1FF7D74FCC8AF9CE8A8950848E7AF9650ABAA567E47D67A86BDA5697
          65F6BBDBF821808CABB38F9B8CF1EBF85799788BE354685A0F0FD9F98471F69B
          9185FC13A9FC71F4AF1B2C58005890A30013D29338E9531C3C56FA98D0CA2941
          DE6EE69EB1E20D5B5F9FCED4EFE5B86072AAC70ABF451C0ACBA5EB5D5F83FC05
          A9F8B6E0491A9B7D3D4FCF74EBC1F651FC47F4AD9B8C11E8CA54E842EF448C2D
          2747BFD73504B2D3AD9E79D8670BD147A93D857BCF827E1A58786563BDBDD977
          AA6DE5C8F9223DC20FEBD7E99C5749E1EF0CE99E18D3C5A69B004181E64ADCBC
          87D58D63EB3E3DB7B7BC3A56856CFAC6AC78F2A0FB91FBBBF41FE738AE49D594
          F48EC7CFE271D5714DC29691FEB73AABBBCB6B0B57B9BB9E38208C65A4918281
          F8D70D378BB59F14CCD69E0DB4D96C0ED9356BA42235FF00714FDE3FE71DE9F6
          9E08BED6EEA3D47C677BF6D914EE8F4F8495B787F0FE23FE79AEE61862B78122
          86348E34002A20C003D00AC748F99C37A74B6F79FE1FF04E6740F02E9FA45CFF
          0068DE4926A7AB372F7B75F3303FEC8E8A3F5F7AEAA8AAD7D7D6DA6D8CD79773
          2C56F0A967918E00152DB933194E751EBAB333C57E23B6F0BE833EA17043381B
          618B3CC8E7A0FEA7D81AF9CB4EB2D4BC6BE2A10EF325DDE4A5E5908E10752DF4
          03FA0ABBE35F16DCF8C75C322ABADA44765AC1DF1EA47F78FF0080AF61F86BE0
          A1E18D23ED57883FB4EED4197BF94BD93FA9F7FA0AEA56A30BBDD9EDC12C061F
          9A5F1C8EBB4BD36DB48D32DB4FB44D904081107D3B9F73D69BAAEB3A7E8766D7
          7A95D476F0038DCE7927D00EA4FB0ABE7819AF0C36B2FC55F1CEA105C6A86DEC
          EC430B68D17394DD8C807B9E093F4FC3084799B6F63CBC3D155A4E53764B56CE
          B66F8D1E1A8A528915FCA01FBE912E0FE6D5A7A4FC50F0B6AAE13EDC6D246380
          B74BB3F5E57F5AE1354F8217D0A17D2F5486E0F5F2E64F2CFE04641FD2BCFF00
          57F0C6B5A0B11A969B3C0A0E3CC2BB909F661C1FCEB754A94B667A74F0782ACA
          D4E7A9F55453453C4B2C522C88C32AC87208F635257CBBE18F19EADE16BB592C
          E767B7CFEF2DA439471F4EC7DC57D15E1BF115978A3488F51B2276B1DAE87AC6
          D81953F98AC6A527038319819E19DDEABB9B15C3FC56D67FB27C1373123626BD
          22DD3E8796FF00C7411F8D7715E01F1875DFED1F14A69D13E61D3D369C74F31B
          96FD368FC0D1463CD342CBE8FB5AE9745A8CF83BA39BFF0017B5FB2FEEAC222F
          9FF6DBE503F2DC7F0AFA0AB82F849A19D27C1B1DD48B89EFDBCF391CECE8A3E9
          8E7FE055DED15A7CD31E635BDAD776D96815CFF8D3411E23F0ADEE9EA0198AEF
          809ED22F23F3E9F435D0D25669D9DCE384DC24A4B747CC1E06D79BC31E2EB5BA
          9894819BC8B907B237073F4383F857BA7C44D2E5D67C0F7F0DB2EF99504C8A3F
          8B69C903F0CD7917C57F0D1D13C52D7B0A62D350CCAB8E824FE31F9FCDF8D7A5
          FC2AF130D77C302CA77CDE586227C9E593F81BF2E3F0F7AEAABAA5511EDE37DF
          8C3194FA6E637C22B9F0FD97879DDAE6DA2D51A4613F9CEAAFB78C63273B718F
          C735E8B69AEE957D77F64B4D46D67B80A58C714A1C80319271D3A8AF2FF177C2
          09AEF575BAF0FB431C33B9F36195B6AC47D5703EEFB75FC3A6BE81F0FF0047F0
          1C4DAFEA7A8C924F6A858C80EC44CF1803A9CF4E7AE7A56735097BD7D59CB888
          D0ABFBC536DBE87A43BAA296760AA06493C015E1DE31B9F02CBE2B9751B8BBBB
          D458A8DD6D684797BC75CB93D0FA2FBF3583E35F887A8F8AAE24B785DADB4A0D
          F240382E33C17F53EDD07EB5CFE89E1FD53C45782D74BB479E4FE26E8A83D493
          C0AD69D1E5F7A4CECC265EE8AF6B5656FEBB9E9BA1FC5BD0749896CE0F0EC965
          683BC0EAC49C75230327DC9AF52D175CD3F5FD3D6FB4DB959E027048E0A9F423
          A835C0787FE0CE976912CBAE4CF7B391CC71B148D7FF00663F5E3E95CDE937F6
          DE0FF8B92697A3CCEFA5DC4CB6D247BF700CD8FF00D058919EBD4544A309DF93
          739AAD1C3D7E6F617BAD7C99EEB5E5FF0013BE1E9D591F5BD262CDFA0FDFC2A3
          FD728EE3FDA1FAD7A85158426E2EE8F3E8579D09A9C4F9A7C0DE38BBF07EA255
          C3CBA74ADFBFB7EE0FF797D1BF9FF2FA2B4DD4ED358D3E1BEB09D66B794655D7
          F97B1F6AF38F889F0C86A865D63438C2DE9F9A7B61C09BFDA5F46FE7F5EBE67E
          16F17EABE0CD49FC90CD017C5C59CA480C475FF75BDEBA6508D55CD1DCF62AD1
          A78E87B5A3A4FAA3E9F34560F86BC5BA578AACFCFB09BF78A3F79039C3C67DC7
          F5E95BD5CAD35A33C39C250972C9598573FE21F07693E2301EEA268AED398AEE
          03B2543DB0DDFF001AE828A136B54109CA0EF176679EFF006B78A3C13F26B70B
          EB5A3AF02FEDD7F7D12FFD345EFF005FD68D67C29E19F88D62753D2EEA24BB3F
          F2F308E738FBB22FF8E0D7A09008C1E4571BAB78061378DAAF872EDB46D53A96
          847EEA5F674E9FE7A1AD233D6FB33AA9D75CDCC9F2CBBADBE68F06F10F85F55F
          0C5E7D9F53B7280FFAB99798E4FA1FE9D6B1BAD7D012789D421D07E206951DB0
          97E45BB0BBADA6F420FF0009EFEDED5C5F8B7E155C59C6DA97871CDFD837CFE4
          A9DD222F5F948FBE3F5E9D6BAA156FA48F770F8FBDA35B47DFA33CCE9554B305
          50493C002AF697A3DFEB5A8AD869F6AF35C37F081F74772C7B0AF70F0BF80F45
          F03D9FF6BEB771049788B969E5388E13E899EFDB3D4F6C671573A8A06F8AC653
          A0BBBEC731E08F84B2DDF97A8F88D1A28080D1D9F466FF007FFBA3FD9EBEB8E9
          5E99AD789743F0859450CEE9190A160B38141761D00541DBB7A573F278A35DF1
          748D6DE11B536B619DAFAB5DA617FED9A9EBFE7A56CF87BC0FA6E8731BD95A4B
          FD51F992FAE8EE727DBFBBFCFDCD724DDDDE7F71E0622ACAA4B9ABBFFB757F5A
          7E6627D87C55E383BB5179341D15BA5AC47FD2261FED9FE11EDFA77AEC346D07
          4CD02CC5AE99691C11FF001103E673EAC7A93F5AD3ED4564E4DE871CEB4A4B95
          68BB216928AC7F1078974CF0D589BAD4AE04639D918E5E43E8A3B9A4936EC8CE
          3172768AD4D0BDBDB7D3ED25BABB992182252CEEE7000AF9EBE2078FE7F15DDF
          D96D0BC5A4C4DF221E0CCDFDE6F6F4154FC63E3AD4BC6176118182C11BF756A8
          7393EADEA6BB9F879F0BCC6D0EB1E20870E30F059B8FBBE8CE3D7DBF3F41D508
          4692E696E7B9470F4F050F6D5FE2E8877C2FF87DF66F2BC43ACC3B64FBD69038
          FB9FEDB0F5F4F4EBE982F3C78C7E2D5A45A4DEC97561294B396324795B8B6094
          C75C71CF739E718AECBE235A5EDDF8175286C32640A19957AB2020B01F80AE4B
          E1CE89A1F87FC2C3C5D7CF9B8D8E4C920C08402576A0EEC7A67F01DEA79B9939
          CBD0C15555A32AF5756F448F58EA2BE68F17E8FA8782FC633B5AC92DBAB399AD
          278DB076376CFA8E41AD87F8C5E215D66E2EA0101B276FDDDAC89908BD072307
          3FD7B56F4BF11FC2BE2EB03A7789B4D96D77642CCBFBC119FEF2B01B81FC0FBE
          69D384A9BBDAE8D70D87C46125CD28DE2F7B147C3FF1A6FADF6C3AE5A8BB4EF3
          C3847FC57EE9FD2BD2B49F19F867C4B0F9305F40CF20DAD6D7185639EDB5BAFE
          19AF1BBDF87125E6FB8F0BEA76BABDAFDE08B2AACA83FDA07FCFB572B77A1EAF
          A7C816EB4DBB81BB6F85855BA54E7B686F3C1E12BEB4DF2BFEBA1EDDE29F84FA
          3EAB0C973A505B0BCC120271139F75EDF87E55CFFC0E7B84BCD661C66DC2C658
          FA3E4E3F4CD71DA1699E37D5235B1D34EA896B27CA4B48F1C417BE49E3F0AF72
          F0578522F09684B64AEB2DC48DE64F3018DCDE83D87FF5FBD44DF2C1C5BB9CF8
          993A14254673E66F6F2347C45AC43A068179A9CD82B0465829FE26E8A3F13815
          F35687A75D78BBC5B05B48CCF2DE4E649E4EE173B9DBF2CD777F19BC4C2EAFA1
          F0FDB3E63B7C4B7041EAE47CABF8039FC47A56BFC18F0D1B6D3E7D7EE13125CF
          EEADF3DA30793F891FF8EFBD10FDDD3E67BB2B0EBEA984759EF2D8F538214B78
          238625091C6A1554740074152D145729E1EE14514500735E37F0D278A7C35716
          200FB42FEF2DD8FF000C83A7E7C8FC6BC07C25AFDC783FC5315D3ABAA23186EA
          1239D99F9863D4633F515F515787FC60F08FD8EF47886CA3FDC5C10B74AA3EEB
          F40DF43FCFEB5D1426BE07D4F5B2DAF177C3D4D99ED56F7115DDB457103AC914
          AA1D1D4F0C0F20D78FFC6ED66617161A2A12B16CFB4C9FED1C955FCB07F3A93E
          0FF8C723FE11ABE939196B3663D7B94FEA3F1F6ABDF18BC2F3DFDADB6BB69119
          5AD10A5C28EBE5E720E3D8E73F5F6A211E4AB664D0A2B0D8C51A9F2FD0E3FC0B
          F0CEEBC49B6FF52325AE97D571C3CDFEEFA0F7FCBDBDBADED746F09E8CCB0A43
          636100DCC49C01EE49E49FD6BCD1FE34D95B68F0C361A3C82E9220815C858A32
          060631C91EDC579AF887C55AB789EEBCED4AE4B2039485388D3E83FAF5AD1C2A
          547EF688EB9E1B158B9DEAFBB1EC779E35F8B735F2C9A7F878BC16E72AF78787
          71FEC0FE11EFD7E95CE7C33D0A5D67C616D70432DAD8B0B89A5EC08E5467DCFE
          80FA551F0AF82357F155C28B584C7661B125D38C2AFD3FBC7D8574DF106583C2
          3A7DB784346668E264F3AF65CFCF3127804FE19FCAAAD15EE4773A3969535F56
          A1F13DFCBCD9EA52FC43F09C177F657D6A0F301DB950CCB9FF00780C7EB5D15B
          5CC177024F6D324D0B8CABC6C0AB7D08AF9F3E1AF822D3C5B737B2EA0F22DADB
          055DB19DA598E7BFB63F515AFE0AD75BC23F102EBC366E1A5D2E5BA68173FC2F
          9C29FD369FFEB5633A2B5517AA3CDAF80A6B9A349B728EACF72AE23C6BF0E34F
          F14A35D41B6D353038980F964F671DFEBD7EBD2BB38A68EE21496291648DC065
          7539047A83525631938BBA3CEA55674A5CD07667CAD7BA7EBDE0AD697CD59AC6
          EE3398E643F2B8F553D187F935E9DE14F8C90CAB1DA788E310C9D3ED712E54FF
          00BCBDBEA3F215E9BAA69361AD59359EA36B1DC40DFC2E3A1F507B1F715E41E2
          7F83573017B9F0F4DE7C7D7ECB31C38FF75BA1FC71F535D0AA42A2B4F73D88E2
          B0F8B5CB5D5A5DCF65B4BDB6D42D92E2CEE229E1719592260C0FE22AC57CA96B
          A87883C21A8B2432DDE9D720FCD1382A1BEAA786AF42D13E36CF1858B5BD384A
          3BCD6A707FEF93C1FCC544B0ED6B1D4E7AD95548FBD49F323DA68AE574AF88BE
          17D580116AB0C321FF0096771FBA23DBE6E0FE06BA78E68E68C3C722BAB0E194
          E41AC5C5ADCF3A74A707692B10DED85AEA36AF6D796F1CF038C34722E41AE226
          F09EB5E1595AE7C1F7665B42773E9376C4A1FF00AE6C7EE9FF00393D2BD028A6
          A4D154EB4A1A74EDD0F3487C6E1A59AD745F09DCA788E73FE9303C4102103019
          DF8CAFA74FC2B46C7C0B71AA5DA6A5E31BDFED2B90731D9A716D0FB05FE2FC7A
          F7CD771B57716C0C9EF4EA6E7D8D2588FF009F6ADF8BFBC6471A451AC71A2AA2
          8C055180053E9AF2246A59D955472493802B9BD53E20786349C8B8D5E0771FF2
          CE03E6B67D3E5CE3F1A949BD8C634E737EEAB9D3543717305AC0D35CCD1C3120
          CB3C8C15547B935E45AD7C6E255A3D134DE7B4D767FF00641FE35E73A8EB7E20
          F175F2C7753DD5F4CC7E48235240FA22F15B470F27BE87A3472AAB2D6A7BA8F5
          6F157C62B2B2592D7C3E82F27E9F6970444BF41D5BF41F5AF2844D7FC6BADF1E
          7EA17D2753D907F255FC8576DE18F839A85F14B9D7A6FB1C1D7C88C832B7D4F4
          5FD4D7B168FA0E9BA0590B4D32D23B78BBEDFBCC7D49EA4FD6ADCE14F48EACE8
          789C360D72D057977390F047C31B2F0E14BED4765E6A639538FDDC3FEE8EE7DC
          FE18AF41141A64922451B4923AA22825998E001EA6B9E527277679156B4EB4B9
          A6EEC24748E367760A8A32493800572DE1EF1568DE29B9D434AB1B366B6B4F97
          73443C9753C71E9939E0F5033EB8E3FE28F8875CBA6B8D0B4AD3EF16D22884B7
          77291921D0F4C11FC1C1C9F623B1CF97F87BC4BA9F85F51175A74C54E4799136
          76483D1856D0A378DFA9E8E1B2E7568B95FDEE87A17C45F86AB62EFAE68B6E5A
          D33BEEAD23E0C63BB27B7A8EDF4E9CBDBF808EB1A2BEADA16A76F730C4B99E1B
          82229213D4839F9718EF915ECFE11F1DE97E2EB7D90B7D9EF947EF2D646E7EAA
          7F88570DF10BE1FDC69A977ABF870C896B329FB6D9C47002E72481DD78C91DBA
          8E3A5C2A497BB2D19B61F175A0D50AAECD77FD7F46793406EADCFDA6DDA64F2D
          F0268C9186FA8AEBB47F8A7E27D29446F7297D10180B74BB8FFDF4307F335EB7
          F0E8E8573E0CB7B7D3111A30B8BA8E400B190FDEDE3DF1C7B62B97F1BFC303A8
          EBB632E856515B5BCE765D321C2A1FEF6CEDC7A557B58B7CB246CF1B42AD474E
          B42D6373E1F78D359F175DDD3DCE9904161128026463F7FF00BBCF5FE9F8D747
          E2DF11C1E17F0F5C6A32E0C806C86327FD6487A0FEA7D81AB5A369165E1DD1E1
          D3ECD424102F2CC7963DD89F535E03F11FC607C53AE94B77274DB425201D9CF7
          7FC7B7B56318AA93D16879F428471588F715A2BFAFC4C9D0B4ABDF1978AE3B66
          76796EA532DCCD8FBAB9CBB7F9EF8AFA82CED21B0B286D2DD02430A04451D940
          C015C3FC2DF081F0F687F6EBB8F6EA17A033061CC69FC2BF5EE7FF00AD5DFD2A
          D3E6765B2166389556A7247E142D1451589E7051451400955350B0B7D4EC26B2
          BA884904C851D0F706AE51427604ECEE8F96BC4FE1FBEF05F894DBEF75F2D84B
          6970BC165CF07EA3BFBD7BAF807C630F8B7450642ABA84002DCC43B9ECC3D8FE
          9D2AD78D3C276FE2DD11AD64DA9751E5EDA623EE37BFB1EFFF00D6AF9F34FBED
          5BC11E26F3151A0BCB57D92C4FD1D7BA9F507FC08AEBD2B47CD1EF2E5CC2859F
          C713DC757F855E18D5AE0CFF006692D246396FB2BED07F02081F854569F0CFC2
          1A0C6F79750999211BCC9792E5540F51C0FCC5749E1BF1158F89F478B50B17E1
          BE592327E68DBBA9AE0BE35C3A99D22CA68267FECE0E56E225FEF7F093EA3AFD
          3F1ACA2E6E5CAD9C14675E7515094DA3A6F0978DF47F11DEDDE9BA6C2F08B4FF
          0053F261648F81B863A73D8F6C7B81E37F14E4F33E226A5EDE5AFF00E38B5E9B
          F0774BB7B3F0835FA9533DE48C5CFA052540FE67F1AF1DF18EA0BA9F8C756BB8
          DC3C6F70C1194E4151F2823F015B528A551D8F47014E30C64D4364AC7A7FC26F
          B4C3E02D627D3E1596F7CF7F2918E033045C027EB5CCE97E0CFB3E8FA878ABC5
          ACF026D76B7B7662B24D290704F71CF41DFA9E3AF7BF09ECDB49F011BABC6589
          2795EE373F01530064E7FDD26BCEBC75E26B9F17CF73750B14D0EC1C4700391E
          6C8DD0FB92013EC07A9E546EE6D2229CA7531338C344DEAFF4323C2DE3AD67C2
          B2AADACC66B427E6B594E50FD3FBA7E95F47E917B36A5A4DADECF69259C93461
          CC12105933EB8FFF005FA8078AF9BBC09A0FFC245E2EB2B4742D6E8DE74FC71B
          179C1FAF03F1AF6DF1EF8E6D7C2BA63C10C8B26A932110C408CC791F7DBD87A1
          EB4ABC5392515A8B33A519D68D3A51F799D9D15E13E13F8BD7DA714B4D755EF6
          DBA0B81FEB57EBFDEFE7EE6BD7F4CF12E8DABEC5B1D42095DD37AC7BB0C57D70
          79AC674A51DCF36BE0EAD07692D3B96353D1B4DD66DFC8D46CA1B98FB09101C7
          B83D8FD2BCF359F829A5DC969349BD9AC9CF22393F789F4E7E61F99AF52A314A
          35251D9914B13568BF72563E72D4FE13F8AB4F24C56B15EC639DD6F20CFE4D83
          F9573CD6DE20F0FB9668752D3D81FBC03C5FAF15F57521507B0AD5621F547A10
          CDEA5AD52299F305B78FFC5768311EB9747FEBA9127FE840D5F4F8ADE314183A
          A2B7D6DE3FFE26BE81B9D0748BC24DCE996731FF00A6902B7F31545BC13E187E
          4E83A70FA5BA8FE42ABDB537BC4AFED0C34BE2A5F91E18DF15BC62C3035455FA
          5BC7FF00C4D51B9F885E2CBA18935CB91FF5CF6C7FFA0815F402F823C2EBD341
          D3FF001814FF004ABB6FE1ED1AD0E6DB49B184FAC76E8BFC851EDA9ADA21FDA1
          855F0D2FC8F9882F883C40DD353D45B3FEDCDFE35BFA67C2BF15EA2417B24B38
          CFF1DCC817FF001D196FD2BE8F08A0600007D29693C4BE889966F3B5A9C523CA
          746F825610159357D425BA6EA62847969F427927F4AF44D2740D2B4283CAD32C
          21B652304A2FCCDF53D4FE35A54B58CAA4A5BB3CFAB8AAD5BE39094515E73E33
          F8A763A179965A514BDD401C31CE628BEA4753EC3FFAD4A31727644D2A33AD2E
          582B9E832BB450C922C6F29552C117196C7619C0CD7CE7E34F885AB7896796D3
          0D6560AD8FB329E5B1FDF3DFE9D2BBCF017C538AFB6E9DE209D63BB24ECBA7C2
          AC8492707B2F5FA71581F183C342D35C875A806DB7BEC24C40E16403AFE23F91
          ADE9479276923D4C0D154311ECEBC75E8CF45F875AE586B3E13B48AD1DBCDB38
          9219E391B2EAC075EBD0F38FCBB563F8DFE16D9EBBE6EA1A404B4D48FCCC98C4
          731F7F46F7FCFAE6BC6748D5F54F096B8B776AC61B984EC9236FBAEBDD587707
          FF00AE2BE8EF0A78AEC3C59A52DE5A36D9570B3C0C7E689BD0FA8F43DFF3009C
          654E5CD1271542AE0EA7B6A4F47FD6A7CD1736DA9681AA98A659ECEFADDF2392
          ACA7B107F9115EBBE09F8B515DECD3FC44E914E4854BBC611FFDFF00EE9F7E9F
          4AEEBC4FE11D2BC556260BF8B12A8FDD4E9C3C67D8F71EC6BE77F157856F7C2B
          ACFF0067DC959378DD0489FF002D1338071D8FB55A946B2B3DCEBA756863E3C9
          515A5FD6C765F103423A1788EDEFFC2B713452DF70F0593105198E011B7A06CF
          03D41C7A0F51F03E8173E1CF0D416779732CF70C4CB2077DC2366EAABEDFD727
          BD739F0D3C02742B61AB6A719FED29D7E48DBFE58AFA7FBDFCBF3ABDF10FC751
          785B4E36B68EAFAADC2FEED7AF94BFDF6FE83BD6726E4D416A705694AB3586A7
          EF5BAF7FF808E73E2CF8E0410BF8734E97F7CE3FD32453F714FF0007D4F7F6E3
          BF1CE7C2BF057F6E6A6357BE8B3A7DA3FC8AC389A41DBE83A9FC07AD73BE14F0
          CDF78D3C41E4877D85BCCBBB96E76827939EEC7B57D2DA6E9D6BA4E9D05859C4
          22B78102228F4FF1AB9C9538F22DCE9C4D48E0E8FB0A7F13DD9707028A28AE43
          C30A28A2800A28A2800A28A2800AE0BE22F8093C5365F6DB2554D5605F90F413
          2FF70FF435DE51551938BBA34A55654A6A71DCF973C33E24D4FC15AEB4A88E00
          6F2EEAD64F977807907D18763DABE87B1BFD1FC6DE1C3247B6E6C6E5764B13F5
          53DD587661FE045731F113E1D45E2385B53D35163D551791D16E00EC7D1BD0FE
          07DBC7BC3BE23D5BC15AD3C90ABA956D973692E407C7623B11EBDABA5A555734
          773DA9C29E3E1ED296934777ACFC34F1469227B7F0CEA334DA6DC13BAD45C796
          403D41C900F1819EFE951785BE0F5F49791DC788CA416B1B6E36C8E19A4F6247
          007D39FA75AF52F0CF8A34DF1569C2EEC25F98604B0B70F19F423FAD627C43D1
          FC4FAA58C4DE1EBE68444099608DCC6F2E7FDACF3F4E3BF5A855277E57A1CD0C
          6622FEC64D45F57D4E67C71AEDC788B5787C0BE1B5411860973221F940007CBC
          7455EFEE31DB9E47E22A5A68D258785B4FC793611F993B018324CF8CB1F5E31F
          4CE2BA7F84D0C7A2DA6BD7FA8D8DC413DA8C492C898DAA06E29CF39E338FA7E3
          E6CC9A978BBC4B335B40D3DE5E4CCFB17A0C9F7E807E95B4159DBA23BF0B08C2
          A38A7EEC3AF76FA9D1F8335B3E1CD327FECCB7FB5F887526115BA05DDE4C63F8
          8FB93DBFD904F18CF2BADB4CFAADC1BABBFB5DDEE3E74C1B702FDC03DC0E99FC
          ABD2358B1B3F861E15FB3C3224DE23D450A35C29E624FE2D9DC0EC0F049E7B60
          70BE10F0ECDE29F11DBE9E9B8444F9970E3AA463A9FE83DC8AA8B5ACCDE8D487
          BF88E9DFBFFC03D07E15780ED2F34F6D6F58B449D253B6D629402BB475723EBC
          0FA1F6AE77E2C45A6D8F8BA3B7D323114915BA09B631E1BF847B6176F4AF799A
          5B4D0F45790A886D2CE0276A8FBA8ABD07E02BE55D5B519757D5AEF509CE65B8
          95A43DF193D2B3A4DCE6E4CE4C04E789C44AB49E88ED3C29E2BF1DA59DCDCE9C
          D26A567678334771FBCDA0E718E77763D0D76DA1FC66D2AF5920D52D26B29588
          5DE9FBC4CFE1F30FC8D5EF070D33C09E03B39756B84B67BC612C85F39DCFD063
          AF031F4E6B9FD1BE1C5C1F8829ACE2D24D0CCCF7703DBC80AFDECC6B8FC41F4E
          2A64E126EE8C6ACB0F5653E78D92D9AD2E7B003919A5A29AEDB5198F619AE53C
          51D499AF30FF0085D7A547234773A4DFC4EA7047CA7FA8A997E35F874F5B5D44
          7FDB343FFB3569EC67D8EA781C47F29E9345709A6FC58F0EEA9A85BD9422ED66
          B8916340F10C6E6381D0D7779E2A5C5C7730A94A74DDA6AC148481DC0AF18F18
          7C49F17E9B74F6C34C5D2A3DEC91CAF197326D38255986D23A76EF581E13B6B8
          F887ABDCD96B5AEDF8956232C3F3E549CF3C1FA8E07BD68A8BB733677432E9FB
          3F6B3924BEF3E860C0F4607E86B8EF887E20D67C37A0FDB74AB785D770492690
          9262CF4217A1E71C93F81CD78B6BDA66B9E00F109823BF991B1BE0B885CA8913
          3E99E3DC57A1687E2C5F883E10D4BC3FA885FED7FB3B14E804E472AC3D082064
          7E3F4AF65CB696E8D3EA3ECB96B27CD0EA727E14F8A1AAE99ADBCBABDCC97967
          72DFBE0DD53FDA5F4C7A74AEFF005BF871E1CF11E8935EE891C50DD4E3CE8278
          98F96C7FBA57A007A7038FD2BC7A3F0D5C5E785DF5AB206516B298AEE21CB277
          0FFEEF38FC2B73E1F78FE6F0B5D8B3BC66934A95BE75EA613FDE5F6F515B4E1F
          6A9EE7A188C3DEF570AED25BA5D4E4DF4ABD496E61303F9F68584F1E3E64C1E4
          E3D2B7B4FF00194F2F87E7F0F6B3BAEB4E91310487992D9C7DD20F75F6F4E95E
          95F103407B84B7F1B786E61F6CB751248D172268C0FBDC75C0E083D57E95CC4B
          E10D3BC75A27F6E7860476BA8A7177A7E76A6FFF0067FBB9EDDBE9834D548C95
          D94B174EB414AA2D3F2654D2F428FC7BE1375B6645F10692A2319381750FF083
          EE31807D803D78E5344D6B53F096B82EADB74371131496190101867946157FC2
          5AC5CF82FC6304D7714B0AAB7937713A90761EB91EDC1FC2BB2F885E13BFF11F
          8EE01A469E42DC5BA3C97458796DDB713DB0303D78E9CF25D2767B329CD53A8E
          9D4D612575FAA3BAF0FF00C48D03C406D205B8FB3DFCE306DE5046D6F4DDD0E4
          F4C727D2B66F3C35A55F6B969AC5C5AA3DEDAE7CB723F227D71DBD09AC4F077C
          3BD2FC2D1A4EE05DEA58C9B875FB9EC83B7D7AFF002A87C77F112CFC2D0B5A5A
          94B8D5597E58B3F2C5FED3FF00877AE56AF2B40F0A54D4EB72616FFD7E85AF1C
          F8E6D3C2361B576CDA94ABFB8833D3FDA6F45FE7FCBC1AC2C758F1C7890A2335
          C5EDCBEF9657E88BDC9F451FE00516361AD78E3C44510BDD5EDC36F96690F083
          D49ECA3FFAC2BE87F08F84AC3C23A58B5B51BE77C19EE08F9A46FE83D056CDC6
          8C7CCF49BA797D3B2D66C97C2FE1AB3F0B68E96166B93F7A5948F9A47EE4FF00
          856E51466B95B6DDD9E1CA729C9CA5B8B4514522428A28A0028A28A0028A28A0
          028A28A004AE23C75F0F2CFC570B5D5BECB6D5107C92E3E593FD97FF001EA3F4
          AEDE8AA8C9C5DD1A52AB3A52E683B33E568A5D77C13E2138F36CAFE038653D1D
          7DFB329AF71F05FC47D3BC50896B7056D354C730B1F964F743DFE9D7EBD6B6BC
          4DE13D2FC5563F67D422FDE2FF00AA9D3878CFB1FE9D2BC07C55E07D5FC1F75B
          E6532DA6EFDD5E4438F6CFF74FF919AE94E15959E8CF694E863E3CB3D267D13A
          D68B6DAEE9375A75C1748AE170ED136D6F6E6B85BBB13F0AFC3F14DA3692DA94
          CED8BCBB618C2F5E71CA8CFE03BF38CF35E0EF8BB75A788ECBC401EEADBEEADD
          2F3220FF006BFBC3DFAFD6BD974ED4EC358B25BAB0B98AE6DDFA3A1C8FA1F43E
          C6B26A54DD9EC70D4A75B0AF92A2BC7F067CBBE22D7EF3C4BACCBA95EB0F31F0
          15149DA8A3A015EEBF0BFC2C3C3FE1B4B99D317D7C04B213D557F857F239FA9F
          6AABE2BF84FA5EB4ED75A595D3AF09C90ABFBA7FAAF6FA8FCABA7D63536F0B78
          59AEDA29B507B58D54AA8C34878049C0E3D4D5D4A8A515189D18AC5C6BD28D2A
          3A5FA7E471FF0019B5EFB1787E1D22271E6DF3E641E91AF3FA9C7E46BC8FC25E
          1C9BC53E20874D8A4312B2B3C9305DDE5A81D71F5C0FC69FE30F12CBE2BF1049
          A8C911850288E2859B76C51DB3F5C9FC6BD3FE0A68F143A4DEEB0F8334F27929
          EC8B827F327F415AAFDD52F33B52782C1FF79FE6CF3C7D0F56D4BC751786EFAF
          67BA9639FC9DEEE5F6C6392C327A6DE6BE94B6823B4B68ADE140914481114745
          00600AF36B5D7FC196DF129DAC2D2E26D4EE0989AE201BE23231E48E7F0C8E3A
          FD6BD3FB573D693763CAC7D69D4E44D59585A28A2B13CF3E6FF8AE41F8857C00
          036A4438FF00701FEB5D77C1DD22C750F0FEAAF7F6905C44D3AA81346180C2FB
          FD6B8AF89F2093E21EAA47628BF9228A4D1FC4DAE68DE0CBDB3B1B122C6EA465
          92F4C6C7696500A83D01C63F3AEF716E9A48FA89D294F070845D9BB1D6DAFC39
          BAB7F8836D7FA38826D161BB4983ACEA4C6A0862319CF078AF6AED5E5FF04610
          BE1BBF97BBDD63F251FE35EA15CB59BE6B3E87898E9CDD5E493BF2E870FF0015
          344FED7F05CF2C6999EC8FDA13006703EF0FCB27F0AF0AF0BEB0DA0F89B4FD48
          13B629479800EA87861F9135F54CD124F0BC32A864752ACA7A107A8AF94BC45A
          4BE85E21BED35C1FDC4A55091D54F2A7F118ADB0EEF17167A394D45529CA848F
          72F8ABA12EB9E0F37B000F3D8FFA4232F78F1F3807E983FF0001AF09D17549B4
          5D66D7518090F0481B00E370EE3F11C57BF7C39D523F1178061B7B90246811AD
          26523A80303FF1D23F5AF9F353B36D3B54BBB2720B5BCCF113FEEB115547AC19
          AE5CDA53C3CFA1DDC17DADE87E2FD6347F0C430CDFDAACB2C20A8204646F5237
          71F75FBF1543C47F0D75DD0F48FED7B8F266192D70900FF539FCB8E7B74ADBD7
          A497C2D77E09F1110778B348E540304AAA8C8FAED7C7E15EA769E20D27C51A4D
          F0D2658B51D9195785B2818B0385391C67A671EB49D4946CD2D0C6789A94796A
          4168F77E9A6E78C7C3EF8852F86661A7DFB34BA548DDF930127923DBD47F9326
          ABAC41E0BF189D4FC277D6F7165789BDA05219172725081D3B11DC67152F87BE
          106B3AA32CFAA11A6DB1E7611BA523FDDFE1FC7F2AF52D27E1CF86B4816ED158
          2CB340C5D669CEF62718C9EDFA5139D34EE56231185A751C96B7DD2D998961A1
          2FC48D0E3BFF00136906C2E83FEE2684ED678BF1E71D7AFAE475AEF6D2D6DB4C
          B08AD61022B78102A02C4ED51EE6B33C45E2CD23C2F6A65D46E95642331C09CC
          8FF45FEA78AF0BF17FC46D57C525ADD09B3D373C5BC6DCBFFBEDDFE9D2B28C25
          51F91C54B0F5B16F4D21F82F43B6F1C7C5A8EDC49A7787245926FBB25EF554FF
          0073D4FBF4FAD79CF86BC2BAB78D354710EF29BB75CDE4B92173D727F89BDABA
          2F057C2BBED70C77DAC07B3D3CFCCA98C4B30F6FEE8F73F87AD7BA69DA6D9E93
          651D9D85BA5BDBC630A8838FFEB9F7AD1CE34D5A1B9D5531347071F674359756
          67786BC2FA7785B4D169611F279965619791BD49FE95B94506B95B6DDD9E2CE7
          29CB9A4F5168A28A448514514005145140051451400514514005145140051451
          4005433C115CC2F0CF124B1382AC8EB90C3D0835351402D0F20F16FC1D498C97
          BE1B711B9E4D9C87E53FEE376FA1FCC5799DA5F6BFE0CD59844F71A7DDA7DF89
          C6030F7078615F55565EB3E1FD2BC4169F67D4ECE3B841F74B0C32FD0F515D10
          AED2B4B547A987CCE515C9597344F3EF0D7C66B2BB096FAFC3F639BA7DA2205A
          23F51D57F5AF4DB4BDB5D42D967B4B88AE2171F2BC6C194FE22BC63C49F05EF6
          D8BCFA05CFDAA3EBF679C8571F46E87F1C57070DD7883C21A8958DEF34DB91F7
          918150DF553C30AA74A13578337782C3E257361E567D8FA275BF03F87B5F0CD7
          9A745E7367F7D10D8F9F5C8EBF8E6B80D5FE106A56B04A9E1FD6A536EFF7AD67
          72A187A65783F88155343F8D9770ED8B5BB05B85EF35B1DADF8A9E0FE62BD134
          7F885E19D682883538A294E3F7571FBB6CFA73C1FC09A9B55A660E38DC2F9AFB
          D1C77C2EF015F68DAB5DEA7ACDAF933C23CAB74241E48F99811EDC7E26BD669A
          19480C0823DA9DFCAB29C9C9DD9C388AF3AF3E7985267DA96B2FC4171A9DAE89
          71368F6C9737EA079513F46E4673C8ED93D6A519455DA47CDDE3997CEF1C6B2E
          7B5D3AFE471FD2BD5FE1A68D16A9F0BAE6C67E23BD92552DB73B73F2E47B8C66
          BCD352F05F8C2EAFAE2F2EF45BA79A791A4919141C92727EED747A26B5E3CF0E
          7874E8F67E1BBAC29631CED6CECC9B8E7A63071DB3FAD76CF5825167D2626D3C
          3C69D392BAB75EC767E0DB9F0FF852FE5F07DB6A525E5EBDC3393E51C06DA32B
          91C7016BD0EBC23E19E81ACAF8FA3BFD4ECAF2231C72CAD2DC46CBBD9863A9EA
          7E6AF77AE6AA9291E3E3E11855D1DDB5ABF30AF0EF8DBA64106B361A8C6CA24B
          98D92550067E5C618FD41C7FC06BDC6B98D67C05A16BFAD2EA9A940F348B108F
          CB0FB51B07209C724F3EB4A9CD465764E0ABAA1579E5B1E2BF0FBC6577E16BBB
          A86DF4E7BF5BC0A04284860E3382383EA6BA7F0C7C37D475DD7E4D7BC4B07D96
          0966371F65E8D21273823AA8CFAF3FCEBD72C348D3B498BCBB0B282D94F51146
          173F5F5AB13DCC169134B713470C4BD5E460A07E26AE55AEDF2ADCE8AD987349
          BA51B37D7A9CA78C7C090F8BAE34E32DE496F05B6E0E8833B81C70074078EB5A
          FE1FF0BE93E19B66874CB558CB81E6484E5DF1EA7FC8AC1D67E2B78634A0C915
          CB5FCC3F82D46E1FF7D1F97F226BCE35DF8C5AEEA21A2D3638F4D84F75F9E4FF
          00BE8F03F014461524ADD054B0B8BAD050DA3E7A1ED7AC788B49D02DFCFD4EFA
          2B75C7CAAC72CDF451C9FC2BC9BC4FF19AEAE77DB787E036D19E3ED33005CFFB
          ABD07E39FC2B83D3B43F1078BAF5A4B6B7B9BD958E1EE2462547D5DB8AF52F0D
          7C18B3B62971AFDC7DAA41CFD9E125631F53D5BF4ABE4A74F596ACEA587C2613
          5ACF99F63CBF4AD0B5FF00196A4ED6D1CD772B37EF6E6663B57FDE73FCBAD7B4
          7843E16E97E1E31DDDF6DBFD41790CEBFBB8CFFB2BEBEE7F4AEE2D2CEDAC2D92
          DAD208E081061638D42A8FC054F59CEB3968B447262731A95572C3488B451456
          279C145145001451450014514500145145001451450014514500145145001451
          450014514500145145002552D434AB0D5AD8C1A85A437111FE1950301F4F4ABA
          2969DEC34DC5DD1E5FADFC17D22ECB49A4DD4D6321E91BFEF63FD7E61F99AF3D
          D5FE16F8A74ADCCB66B7B10E77DAB6E3FF007C9C1FD2BE91EB456B1AF3477D2C
          CEBD3D1BBAF33E53B5D67C43E1B9BC982F2FAC5D7930B1651F8A1E3F4AEA74FF
          008C7E26B4016E7EC978BDCC91ED6FCD703F4AF7ABBB0B3BF84C5796B05C467F
          8658C30FC8D731A87C30F095FE5CE96B039FE2B7764C7E00E3F4ABF6D097C48E
          AFED0C355FE353391B3F8E701C0BDD1244F568660DFA103F9D6DDB7C65F0C4F8
          F345EDBFFD74841FFD049ACEBBF81FA5499367AADE439ED2AAC807E58AC4BAF8
          217F1E7ECDACDB49FF005D2164FE44D3B516354F2FA9B36BEF3BE8FE2978365F
          F98B853FEDC120FF00D96AC0F88BE116191AD5BFE2187F4AF20BAF84DAEDAFDE
          BCD348F691FF00F88ACB7F016A919C19ECCFD1DBFF0089A7EC69F7348E5B8696
          B193FEBE47B937C47F0827275A83F0563FD2AACBF15FC1D1F4D51A43E896F27F
          55AF1A87E1F6AB39C25C590FABBFFF00135AF6DF07B5D9C0637DA72AFB3B93FF
          00A051EC69ADD8A5976161ACA4FF00AF91DCDCFC6AF0EC5910DB5FCE7B111AA8
          FD5BFA5615EFC739581163A2229ECF34F9FF00C7401FCE996BF03677C1B9D723
          5F5115B96FD4B0ADCB3F829A0C386BABCBDB923A8DCA8A7F219FD697EE510E39
          753DEEFEFF00F8079F6A3F163C577F954BC8AD10FF000DBC407EAD93FAD73EB1
          7883C4F7390BA86A72E7AFCF2EDFC7B57D0FA7FC3EF0AE9B83068D6ECC3F8A60
          653FF8F66BA38A28E28C2451AA228C055180297B78C7E14279951A5FC1A67816
          8FF077C437E55AF9A0D3E23D779DEFF92F1F9915E89A1FC24F0E692564BA8DF5
          19C77B83F267FDC1C7E79AEF68ACE55A7238EB66388ABA5ECBC88E1822B78962
          86348E35185545C003D854B451591C3B85145140051451400514514005145140
          05145140051451401FFFD9}
        Stretch = True
      end
      object QRLabel1: TQRLabel
        Left = 394
        Top = 104
        Width = 243
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          1042.458333333333000000
          275.166666666666700000
          642.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'RELA'#199#195'O DE INADIMPLENTES'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel_Endereco2: TQRLabel
        Left = 376
        Top = 41
        Width = 300
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          994.833333333333400000
          108.479166666666700000
          793.750000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'CNPJ'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel_Endereco3: TQRLabel
        Left = 376
        Top = 55
        Width = 300
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          994.833333333333400000
          145.520833333333300000
          793.750000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'FONE'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
    end
    object QRSubDetail1: TQRSubDetail
      Left = 38
      Top = 260
      Width = 1047
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        34.395833333333330000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QuickRep1
      DataSet = IBQuery_RelDevMen
      FooterBand = GroupFooterBand1
      HeaderBand = GroupHeaderBand1
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBText15: TQRDBText
        Left = 802
        Top = 0
        Width = 87
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2121.958333333333000000
          0.000000000000000000
          230.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = IBQuery_RelDevMen
        DataField = 'VALOR_MENSAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 910
        Top = 0
        Width = 129
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2407.708333333333000000
          0.000000000000000000
          341.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = IBQuery_RelDevMen
        DataField = 'NUMERO_DOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText7: TQRDBText
        Left = 594
        Top = 0
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1571.625000000000000000
          0.000000000000000000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = IBQuery_RelDevMen
        DataField = 'NUMERO_PARCELA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 682
        Top = 0
        Width = 111
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1804.458333333333000000
          0.000000000000000000
          293.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = IBQuery_RelDevMen
        DataField = 'DATA_VENCIMENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
    end
    object SummaryBand1: TQRBand
      Left = 38
      Top = 288
      Width = 1047
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        60.854166666666670000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRExpr1: TQRExpr
        Left = 576
        Top = 2
        Width = 120
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1524.000000000000000000
          5.291666666666667000
          317.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        Color = clWhite
        Master = QRSubDetail1
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(VALOR_MENSAL)'
        Mask = 'R$ #,##0.00'
        FontSize = 9
      end
      object QRSysData4: TQRSysData
        Left = 2
        Top = 2
        Width = 239
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          5.291666666666667000
          5.291666666666667000
          632.354166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDetailCount
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Text = 'Total de registros: '
        Transparent = False
        FontSize = 9
      end
      object QRLabel17: TQRLabel
        Left = 387
        Top = 2
        Width = 183
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1023.937500000000000000
          5.291666666666667000
          484.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Valor total dos atrazados:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
    end
    object GroupFooterBand1: TQRBand
      Left = 38
      Top = 273
      Width = 1047
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        39.687500000000000000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRLabel_Quant: TQRLabel
        Left = 2
        Top = 1
        Width = 183
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          5.291666666666667000
          2.645833333333333000
          484.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Mensalidade(s) atrazada(s)'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel_Totais: TQRDBText
        Left = 298
        Top = 1
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          788.458333333333300000
          2.645833333333333000
          58.208333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = IBQuery_RelDevMen
        DataField = 'F_2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel5: TQRLabel
        Left = 250
        Top = 1
        Width = 43
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          661.458333333333300000
          2.645833333333333000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
    end
    object GroupHeaderBand1: TQRBand
      Left = 38
      Top = 246
      Width = 1047
      Height = 14
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        37.041666666666670000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupHeader
      object QRLabel19: TQRLabel
        Left = 594
        Top = 1
        Width = 71
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1571.625000000000000000
          2.645833333333333000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Mensalidade'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel20: TQRLabel
        Left = 802
        Top = 1
        Width = 30
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          2121.958333333333000000
          2.645833333333333000
          79.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Valor'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel7: TQRLabel
        Left = 910
        Top = 1
        Width = 78
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          2407.708333333333000000
          2.645833333333333000
          206.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Documento N'#186
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel9: TQRLabel
        Left = 682
        Top = 1
        Width = 68
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1804.458333333333000000
          2.645833333333333000
          179.916666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Vencimento'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
    end
    object ColumnHeaderBand1: TQRBand
      Left = 38
      Top = 197
      Width = 1047
      Height = 18
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        47.625000000000000000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel_AnoLetivo: TQRLabel
        Left = 480
        Top = 1
        Width = 87
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          1270.000000000000000000
          2.645833333333333000
          230.187500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'AnoLetivo: 0000'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
  end
  object IBQuery_RelDevMen: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    SQL.Strings = (
      
        'select MATRICULA, ANO_LETIVO, NOME_RESP, NOME_ALUNO, TURMA, TURM' +
        'A, TURNO, CURSO, SERIE, DATA_VENCIMENTO, MES, VALOR_MENSAL, NUME' +
        'RO_PARCELA, SITUACAO_PARCELA, NUMERO_DOC,'
      ''
      '(select count (DATA_VENCIMENTO) from CARNE'
      
        'where DATA_VENCIMENTO between '#39'01/01/2005'#39' and '#39'12/31/2005'#39' and ' +
        'ANO_LETIVO = '#39'2005'#39' and SITUACAO_PARCELA = '#39'EM ABERTO'#39' and MATRI' +
        'CULA = A.MATRICULA),'
      ''
      '(select sum (VALOR_MENSAL) from CARNE'
      
        'where DATA_VENCIMENTO between '#39'01/01/2005'#39' and '#39'12/31/2005'#39' and ' +
        'ANO_LETIVO = '#39'2005'#39' and SITUACAO_PARCELA = '#39'EM ABERTO'#39' and MATRI' +
        'CULA = A.MATRICULA)'
      'from CARNE A'
      
        'where DATA_VENCIMENTO between '#39'01/01/2005'#39' and '#39'12/31/2005'#39' and ' +
        'ANO_LETIVO = '#39'2005'#39' and SITUACAO_PARCELA = '#39'EM ABERTO'#39' and MATRI' +
        'CULA = A.MATRICULA'
      'order by DATA_VENCIMENTO')
    Left = 16
    Top = 16
    object IBQuery_RelDevMenMATRICULA: TIBStringField
      FieldName = 'MATRICULA'
      Origin = '"CARNE"."MATRICULA"'
      Size = 17
    end
    object IBQuery_RelDevMenANO_LETIVO: TIBStringField
      FieldName = 'ANO_LETIVO'
      Origin = '"CARNE"."ANO_LETIVO"'
      Size = 4
    end
    object IBQuery_RelDevMenNOME_RESP: TIBStringField
      FieldName = 'NOME_RESP'
      Origin = '"CARNE"."NOME_RESP"'
      Size = 50
    end
    object IBQuery_RelDevMenNOME_ALUNO: TIBStringField
      FieldName = 'NOME_ALUNO'
      Origin = '"CARNE"."NOME_ALUNO"'
      Size = 50
    end
    object IBQuery_RelDevMenTURMA: TIBStringField
      FieldName = 'TURMA'
      Origin = '"CARNE"."TURMA"'
      Size = 10
    end
    object IBQuery_RelDevMenTURMA1: TIBStringField
      FieldName = 'TURMA1'
      Origin = '"CARNE"."TURMA"'
      Size = 10
    end
    object IBQuery_RelDevMenTURNO: TIBStringField
      FieldName = 'TURNO'
      Origin = '"CARNE"."TURNO"'
      Size = 5
    end
    object IBQuery_RelDevMenCURSO: TIBStringField
      FieldName = 'CURSO'
      Origin = '"CARNE"."CURSO"'
      Size = 21
    end
    object IBQuery_RelDevMenSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"CARNE"."SERIE"'
      Size = 30
    end
    object IBQuery_RelDevMenDATA_VENCIMENTO: TDateTimeField
      FieldName = 'DATA_VENCIMENTO'
      Origin = '"CARNE"."DATA_VENCIMENTO"'
    end
    object IBQuery_RelDevMenMES: TIBStringField
      FieldName = 'MES'
      Origin = '"CARNE"."MES"'
      Size = 10
    end
    object IBQuery_RelDevMenVALOR_MENSAL: TIBBCDField
      DefaultExpression = '0'
      FieldName = 'VALOR_MENSAL'
      Origin = '"CARNE"."VALOR_MENSAL"'
      DisplayFormat = 'R$ #0.00'
      EditFormat = 'R$ #0.00'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_RelDevMenNUMERO_PARCELA: TIBStringField
      FieldName = 'NUMERO_PARCELA'
      Origin = '"CARNE"."NUMERO_PARCELA"'
      Size = 5
    end
    object IBQuery_RelDevMenSITUACAO_PARCELA: TIBStringField
      FieldName = 'SITUACAO_PARCELA'
      Origin = '"CARNE"."SITUACAO_PARCELA"'
      Size = 9
    end
    object IBQuery_RelDevMenNUMERO_DOC: TIBStringField
      FieldName = 'NUMERO_DOC'
      Origin = '"CARNE"."NUMERO_DOC"'
      Required = True
      Size = 17
    end
    object IBQuery_RelDevMenF_1: TIntegerField
      FieldName = 'F_1'
      ProviderFlags = []
    end
    object IBQuery_RelDevMenF_2: TIBBCDField
      DefaultExpression = '0'
      FieldName = 'F_2'
      ProviderFlags = []
      DisplayFormat = 'R$ #0.00'
      EditFormat = 'R$ #0.00'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object DataSource2: TDataSource
    DataSet = IBQuery_RelDevMen
    Left = 16
    Top = 50
  end
end
