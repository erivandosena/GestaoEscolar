object FrmRelCertFun: TFrmRelCertFun
  Left = 198
  Top = 107
  Caption = 'Pr'#233'-visualiza'#231#227'o de Impress'#227'o'
  ClientHeight = 551
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
    Left = 8
    Top = 8
    Width = 813
    Height = 1191
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    BeforePrint = QuickRep1BeforePrint
    DataSet = FrmCertificado.IBQuery_AlunCert
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE'
      'QRSTRINGSBAND1')
    Functions.DATA = (
      '0'
      '0'
      #39#39
      #39#39)
    Options = []
    Page.Columns = 1
    Page.Orientation = poLandscape
    Page.PaperSize = Custom
    Page.Values = (
      100.000000000000000000
      3150.000000000000000000
      35.000000000000000000
      2150.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 1
    PrinterSettings.LastPage = 1
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 7
    PrinterSettings.ExtendedDuplex = 1
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 9
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = -1
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 2
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
      Top = 13
      Width = 737
      Height = 755
      Frame.Color = clBlack
      Frame.DrawTop = False
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
        1997.604166666667000000
        1949.979166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRShape21: TQRShape
        Left = 28
        Top = 8
        Width = 1026
        Height = 722
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1910.291666666667000000
          74.083333333333340000
          21.166666666666670000
          2714.625000000000000000)
        Pen.Width = 10
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape23: TQRShape
        Left = 49
        Top = 28
        Width = 985
        Height = 683
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1807.104166666667000000
          129.645833333333300000
          74.083333333333340000
          2606.145833333333000000)
        Pen.Width = 18
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape22: TQRShape
        Left = 64
        Top = 49
        Width = 944
        Height = 641
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1695.979166666667000000
          169.333333333333300000
          129.645833333333300000
          2497.666666666667000000)
        Pen.Width = 5
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel9: TQRLabel
        Left = 116
        Top = 256
        Width = 421
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          306.916666666666700000
          677.333333333333400000
          1113.895833333333000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'ENDERE'#199'O'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel7: TQRLabel
        Left = 1010
        Top = 730
        Width = 137
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333330000
          2672.291666666667000000
          1931.458333333333000000
          362.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'GEES 1.0 www.sisescola.com.br'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel6: TQRLabel
        Left = 546
        Top = 256
        Width = 421
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1444.625000000000000000
          677.333333333333400000
          1113.895833333333000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'MUNIC'#205'PIO / DISTRITO'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel49: TQRLabel
        Left = 209
        Top = 296
        Width = 665
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          552.979166666666700000
          783.166666666666800000
          1759.479166666667000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          'RECONHECIMENTO - ATO - N'#186' - DATA - ORG'#195'O EXPEDIDOR - VALIDADE - ' +
          'DI'#193'RIO OFICIAL'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel47: TQRLabel
        Left = 493
        Top = 170
        Width = 100
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1304.395833333333000000
          449.791666666666700000
          264.583333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ESTADO DO CEAR'#193
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel46: TQRLabel
        Left = 209
        Top = 336
        Width = 665
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          552.979166666666700000
          889.000000000000000000
          1759.479166666667000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'ENTIDADE MANTENEDORA'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel44: TQRLabel
        Left = 316
        Top = 641
        Width = 450
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          836.083333333333400000
          1695.979166666667000000
          1190.625000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          '________________________________________________________________' +
          '__'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel41: TQRLabel
        Left = 156
        Top = 574
        Width = 309
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          412.750000000000100000
          1518.708333333333000000
          817.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '__________________________________________________'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel39: TQRLabel
        Left = 612
        Top = 574
        Width = 309
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1619.250000000000000000
          1518.708333333333000000
          817.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '__________________________________________________'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel11: TQRLabel
        Left = 324
        Top = 216
        Width = 445
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          857.250000000000000000
          571.500000000000000000
          1177.395833333333000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'ESTABELECIMENTO'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel_Titulo: TQRLabel
        Left = 116
        Top = 368
        Width = 852
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333340000
          306.916666666666700000
          973.666666666666900000
          2254.250000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'CERTIFICADO DE CONCLUS'#195'O DO ENSINO M'#201'DIO'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 16
      end
      object QRLabel_DadosEscola: TQRLabel
        Left = 209
        Top = 280
        Width = 665
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          552.979166666666700000
          740.833333333333400000
          1759.479166666667000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel_DadosEscola'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 546
        Top = 240
        Width = 421
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1444.625000000000000000
          635.000000000000000000
          1113.895833333333000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Dm.IBDS_EMPRESA
        DataField = 'CIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 116
        Top = 240
        Width = 421
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          306.916666666666700000
          635.000000000000000000
          1113.895833333333000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Dm.IBDS_EMPRESA
        DataField = 'ENDERECO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 324
        Top = 200
        Width = 445
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          857.250000000000000000
          529.166666666666700000
          1177.395833333333000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Dm.IBDS_EMPRESA
        DataField = 'NOME_FANTASIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText1: TQRDBText
        Left = 209
        Top = 320
        Width = 665
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          552.979166666666700000
          846.666666666666600000
          1759.479166666667000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Dm.IBDS_EMPRESA
        DataField = 'ENTID_MANTENEDORA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel45: TQRLabel
        Left = 316
        Top = 655
        Width = 450
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          836.083333333333400000
          1733.020833333333000000
          1190.625000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'CONCLUDENTE'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel_REG_Sec: TQRLabel
        Left = 156
        Top = 588
        Width = 309
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          412.750000000000100000
          1555.750000000000000000
          817.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'SECRET'#193'RIO REG. N'#186
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel_REG_Dir: TQRLabel
        Left = 612
        Top = 588
        Width = 309
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1619.250000000000000000
          1555.750000000000000000
          817.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'DIRETOR REG. N'#186
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel_Data: TQRLabel
        Left = 270
        Top = 523
        Width = 668
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          714.375000000000000000
          1383.770833333333000000
          1767.416666666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          '_____________________ , ______ de ____________________ de ______' +
          '___'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 12
      end
      object JustifyRichEdit: TJustifyRichEdit
        Left = 120
        Top = 417
        Width = 848
        Height = 100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          
            '          O(A) DIRETOR(A) do(a) ESCOLA COSME E DAMI'#195'O, no uso de' +
            ' suas atribui'#231#245'es legais, confere o presente '
          'CERTIFICADO a GESSICA '
          
            'DOS SANTOS RABELO, natural de Fortaleza, Estado Cear'#225', nascido a' +
            ' 25 de Dezembro de 1988, tendo em vista haver '
          'conclu'#237'do o Esino '
          
            'Fundamental no ano de 2006, para que possa gozar de todos os dir' +
            'eitos, regalias e prerrogativas concedidos a este '
          't'#237'tulo pelas leis do Pa'#237's.'
          '')
        ParentFont = False
        TabOrder = 24
      end
      object QRECC_Memo: TQRRichText
        AlignWithMargins = True
        Left = 116
        Top = 408
        Width = 848
        Height = 121
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          320.145833333333400000
          306.916666666666700000
          1079.500000000000000000
          2243.666666666667000000)
        Alignment = taLeftJustify
        AutoStretch = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          
            '          O(A) DIRETOR(A) do(a) ESCOLA COSME E DAMI'#195'O, no uso de' +
            ' suas atribui'#231#245'es legais, confere o presente '
          'CERTIFICADO a GESSICA '
          
            'DOS SANTOS RABELO, natural de Fortaleza, Estado Cear'#225', nascido a' +
            ' 25 de Dezembro de 1988, tendo em vista haver '
          'conclu'#237'do o Esino '
          
            'Fundamental no ano de 2006, para que possa gozar de todos os dir' +
            'eitos, regalias e prerrogativas concedidos a este '
          't'#237'tulo pelas leis do Pa'#237's.'
          '')
        ParentRichEdit = JustifyRichEdit
      end
      object QRImage: TQRImage
        Left = 116
        Top = 74
        Width = 854
        Height = 90
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          238.125000000000000000
          306.916666666666700000
          195.791666666666700000
          2259.541666666667000000)
        Picture.Data = {
          0954474946496D616765206D00004749463839617E06B400E60000FFFFFF9821
          670E9444F7F39BB25A8E7EC1E3110C09CB8FB2FFFBFCEBA543FBFBFBDBB0CA32
          2E2BE4C3D613703826211E1B1613E9CFDF3E3937EEDBE6F3E4ED53A773F7EDF3
          F7F3F34AACD8504C4947413AB5883590663098CCE847434255514E73BA8E8F8D
          8B88858464615F959391EBEBEB696664C0BEBDF7F7F7D09340F2E721201C1C97
          CCA8EFEFEE1D4A33E4E3E3B4B3B1A5A3A19B9897F3F3F3817C7CABA9A85F5C5A
          DFDEDE7976745A5654DBE551C4C3C275716E487A91267848BAB8B8A09E9DFBF8
          A36F6C6ACFCFCE83827BDBDBDA92AC9DB9D9EAE7E7E76996A7D4D3D3486A73FB
          F6F7EBE7E7FBF7FB3E5D66B4CFC05A60634C5358C7C7C6E3DFDFF3EFEF58866A
          D7D7D6444B4FCCCBCBB0B68CCBC7C71F372BB9DBC4B0AEADE5E099D3D3CF467A
          5A666C6ECDE4D5D4E281D9E9E38A9897CACC8CECEFF13E5E43AECA63DBD7D7E3
          EEE51E27246D7477989CA1AEB9B4EFF5F3D5DCDED3CFCFD1DDD2ECF3EDABAEB0
          CFE2ADE5ECEEC2CCCEBDD5DA212027F7FBFBF6FBF7DBD7DBCBCBC72C00000000
          7E06B4000007FF800082838485868788898A8B8C2D455B3F3121343C23391F19
          1E1E191F39234234213130536B2D8CA8A9AAABACADAEAFB0B1B2B3B4B5B6B7B8
          B9BABBBCBDBEBFC0C1C2C3C4C5C6C7C8C9CACBCCCDCECFD0D1C9084E174C0A08
          D2DACB332F27244219120F06E50610102B0FEBECEB2B10E6E50F121942243F54
          33DBFBFCFDFEFF00030A1C48509002147286285498A5081F0408B021403267A1
          4225680ACDB86251C99C1B12232A78E1D1E295190A526243A3C4A2C232D90ACA
          9C49B3A6CD9B387326BB6061C28205070E10184AB468D1A00B1A4CB0C04427C1
          0B5B80089100AF1C04091F4091A8F1630A98222F90346982E4451125537ED420
          4143C807AAE6FFAE0A91B1439FD3BB78F3EADDCBB7EFAD2C190263FAA0218712
          000A04A1A1A18113A70F1EDE14828325F0630D265E008008E085180D83316580
          23289B82188D4567D0E0C6AEDFD7B063CB9E4D5BA08508408706D8CDBBB7EFDF
          BE871E581021716D620A8AD430011702830C38806CB9D1C2F82B052DA86C8981
          230303785747C42862FDB8F9F3E8D3AB370F83C186F7EF3948384108CF070EF0
          DF6B20C28710100DF9A5C08106726C968D1F197090427E1A90501A007C3096DF
          061CE480C47A1866A8E1861CD2444103421100DC882496B89B701158D0A12C4A
          90F041550F8C40C20917FA52C20E3298C08055198430C78A400629E49044B6F2
          830609249964FF0A1AEC509F0D1C28992407229407C4075226B0C107050E2247
          0E1B64998183312920029652565842916CB6E9E69B2B22108150260667D49D22
          D6C9DB500B4C00672145009101781910B1C3298BA0F0424C826C418308219000
          440C2734B14A155B8830E83919C8B0C69FA0862AEAA8041D9982941B68300521
          258C10659A221412C307A72AB9E50D847C19A6941A483608029A66C9810D1991
          6AECB1C826BB8C1320E649A270C3454081054C314A48444E2860C187B9E95622
          010744F0260A3F98400E04630E616D21085451040C2198E08104350A42423CE6
          48000322455071012260C890C10A06AC30020CFF2AABF0C20C37CC481C766850
          6B92A99E1047FF1C33CC700394597E4044C619F3F14606596E9081127C603CC3
          101FECBAE4981767BC18C969E6F042790EE7ACF3CE0A4F40E788C22995702D14
          44D0ECB707A83864094078508E0422FCB8C895DFC503011884DCFB80096E0861
          03390CD43BC80D0CACA0C11F8A282182064FCB2036CF70C72D777A2A01700309
          6E10766AAD29481045D742B8218604AFD6CA810762089EF8267B53ECB7E26E8C
          204198136780851B5DF3E006684B52CC801838208CD8DCA4976EBA79172CE0AC
          9DE136050CB33F03774003EB6648850812147C30A28C98700E031E9810C20F6B
          A0404808064850C5203294B36A213C9C638083845C603C2155940B3611459CEE
          FDF7E0130451FF623798A00107F84D9C8080E8B78FBEFA5ABADFBECB4BCADF3E
          FC14DA4FFFFAED4BF0C6F5E10BA00007D80F0AC4AE37E052CA227A1281A52C42
          4E41999DD2144101D5AD6E4F0B98E07AA84004723C0007523384029A3034E619
          E001CF43840892E79A2C94C34984F8C33B72878342D0C00321C88221AE400372
          AC0007DD23A0108748C45D40241B6F905896E097252531B1899D8322149F28A5
          277220035728A216B7C8C55BCC6944B32B2122E6B4BA03F8E91014B820011690
          0A0BA80E38E0D2A0795E20821D31400454380415BCC01C06308007791CC40ED2
          01438DED604D83A041F24EA0842B8061040608DBB56C60001BDC2B07D65180D3
          4EE801116C61FF798378410872F7001A04B28BA84C252AB101806049F195B08C
          A52C67394555A9F296B8BCA5CFE0B800D73162017B72D6010E310167FD244FC3
          5485050EC89BA499070532D8D10344A09942A0200623D8D139AA22015C090209
          0F8080104230020F90430684C0013AD0F1008231803E8480C139FEB083E459AA
          344370D13BCEE1011CC0F09B219026095C93CB821A746EAC3C52E1F6968286AE
          6F7D0E6D6844230A5188368EA11565E845313A518BEEED0323A8E641474AD2D2
          EDF237665C053077D30041AC940086B080315DCA9B961A624E11A81D0240F41B
          7089F1353F70DA0A8820D242B4207710F0000D60700221C06304C6B98006D061
          8E0768200684FF88DE3C24F09DAB606D1017709A0D0030877764B1100AC8C109
          B5390243344104E4D05749E74AD763A5040033308306F6DA98BDAE66357C056C
          6002FB57BFF675B07C356C5F150BD8C50A36B08D29EC07B630BABA5AF6B2A45A
          664F0FF0536AD54E1014D813A30E1000981682B4BC51DA04F6F4D397F68998A8
          45201B6153BE7298E0538AC041244F0900DF4180B282F0DD037800841DDC0094
          83F09D07C242851F90C3048468DE0A74785403FCC01054D8110D8A10831CECEB
          1037E0C153CF8AD9F29A17480A0002E1DAB757FBB9D77DEB7DAF7C1920DFF7C6
          B77F3A64E579F7CBDF0D21E08DB295A31B75032E0A1822B6A615440476A3410B
          20B04CBDB169FFF556B7C69F1AB0A7E2E20B0280400E0FC093103388C13D05F1
          03745C77106020470D05813C06FC741090FC00213E60800F18A709DF79803D6A
          90BB1018A206E7F82721B8134441EC80C62B2001CEFACBE426EF25262178D594
          A43CCB54D1B28A4AA4E5159BA8012F38F9CB608E4D318373005F0E62CCBE49E6
          AF9C9560410445832BDD8D9A99D01B351322B6BC39A3212E9C6639EAE40A6A5D
          4108C4A80018B02D5660CD1D0F0A9101037820265E4047915BB0861D1847AD39
          2004253F703D45EEF31CEF806E21202901DE0DA2BA98240434C991812184F9D5
          B0A6C90B7240650EA089962663E282F0B3BFF56579965B16160F12B3E4581BFB
          D8FD481D4AFDFF0C803496F643792280B510804046AC6EB60070B0680B21D33A
          67381127C5205E62408E0F1CA61053A064246B5008DD4A009182D02D03EE9985
          708A200634B0810608766EA76540D3C95B5E8A0D20841300010739D891070A81
          63032CDA10CD83005601800200AE81922B0002B237CEF1679CC03D0B5A90DE36
          10F205BDC7E4F01110804CDED00131600F0F6040CB4ABE01C2A19CE52467B9CA
          497E720179A00C95EDB8D0878E0C343753CF8658A94D2F9027A487764F0FBCF6
          2016CCDA4234A0DAA968C0050F60609C344108055332A0C47B42118C78102536
          C0875B694F4194802A55B18A046048024B66AD31B802FB0A8A8C807B49721035
          30B121AAEB81FF84EDC00330B00E870D1052A23BFEF1BA504008562081CA4B40
          035CBDBCE519A079CBEF55F39CAF3CE619F0803D981EE62BE03CE62B1FFACF77
          9EF5ABE72A03301F7B3F92E6B390CFBDEE6111E713611B11C81C44B7ED4CF513
          E15E10DAE6CDB78B5F5A31E2F9F78C5040EF4B2B619A6C21771ED0612148E041
          21E01600677FBBC307A180466780511E80C03C6C20022F64E1668A4041151273
          851FAC1D003F083221C0CE00E49A1002EC2608405030AE36084AD068EFB47B0A
          B88088C0284D406B131272F0711F0132213C071F19507AA4F7726DD00630C76B
          1768812437200182720C2202FDC1802AB88288D06D75D660B5234C3111016B44
          08CC1700C707FF0057D71BD6B18327D260BE8174A9E06C759683FE1003048303
          FE674206400383400538C00005280860270189B10336000F13476230700346C8
          0A48C00388370825B0230F4708840740D1C300A60600174004E7804E2C38878F
          970DD9B00300124BE873651B407A7BF0727ED4062FF70034234BC1A687364387
          8AC880348840DF4653D007007846004238085510848AE083A5651DBD47004E40
          089AD866AC307D04C06CFE80029EB6858630038D566A554002DAA471830003EA
          E716E78203C5A60B3330345E700EDF9535E7E0658230034E2304D70278E4C003
          2FB688CC0866AC1402B7F64AB67665FBC6006DF000D728887FD8062B4065D258
          88B0C42427D6FF8CE42874D3E74C67166D5D37089A28677EE604AB537D498740
          BE3489D6F27CAB70018F6874A5F588FF5002942401C035086F356225060136B0
          491F206400500555730E1FF08B8980023700093520032410022200292420035C
          310545B08C87406EF35608E29701D6710304B3852D30023450234AC0361F5054
          E55893FB151100D0025022513CD993F7D1934029511C808D1B288831B78D7BB0
          7241C99303B29440A90121908B363995FD856701F07BFF9566EB7241725642F0
          58678AD089A30596C2E71BEB880A57878E9B619591B80F54607EBC05007FC036
          67080094840E1A500399641C4E9501220006C5D60243002FE5447A54852FF8A2
          7EB33702ED97FF0567C72E4DA07DC00801C22808F2C400E7D60434C678371690
          E44595A0495738990595D7588995585C759A8955589817731DB8817B20881D28
          88AAA99AAB317BB5799ADE610378109ABEB95F4C8740488766DE120042E882C1
          517D935808FA7846CC976008207583D089AB408435C88E69F60F43B02342B084
          8B371F8430041DE67F309001C2780353503B33B005E4943B56310F5941049212
          037600033060073110032440043C9003E340304F6303215017A8D004B9839284
          A04808BA066C5349458502F2C690BF39A1AAC44A32002016488222181FE72382
          83E887D6B881AE695513A2A11B4A21189AA1AD46A12C3A5744E88EE4F7526754
          4C0BF089CCC9FF95BB816D9D6866C0645A4E8075D9B63A48279DA8C08FA2C88F
          072095CDB0053B4204D6D202D1C3786F03005A055C433002F0E001C586045EC0
          03DA1449234004353004D5B10AED02065E200292630E0C200435409385803C06
          509982406344000043805434506CC8F300F7D7A2803A4489810626E08D53064B
          56D644290088B119A244E947A6078E5A8224B0348D52D429819AA9B7F4A20160
          67FC78966189A336957CBB8174A49560C234084F772284809C0100AA89C0A957
          69084C4061362A0D27400ED4531A5BE0340F10958200164FB82336B0063D740E
          36B0054F0A033A520E0C30024000068F290B25A004D8A44DCFEA05F04608E165
          03E58104B933FF041F5730B2880840900E12A9A9EA1A3E7390874D64A952942A
          4C3494B2698DAE69AFD7380FEA33207A48A950C4012690825FB8AE042B37ABD5
          1BBF377DA51513C5248F84C067F4E8666429B101A034719660BD97B040BA088D
          B83AB0BA96082492C990AB062087E4E7341050AE30F0001FE01AF7A20EE59001
          E9AA36EEC90038F0036DA80BD94303354B0421440838334812200360F3A78610
          03E890AE05BBB40C7344D6222852B487AF6432FF5A7A46E9A8F58A8D12A03E54
          5BA9866A2B19E007A531B04C5BB60A7383FE488317345BA76A6637B5B68270B0
          AC3A08799261C1595A74BB27E541A48A70B00086B789D089A6880C3B104EE54A
          083F403036E6FF0444000F1F3062E2973C40504253600204B3352790B3BF5005
          3B20043B623027A0A4CD5336069001DF67082F50037611782B308E66FBBAC7B2
          2E72200EEF8579F5C501F4653FFBB6022BB007BCFBBBC0CBBB0F203FB65B5F1A
          90BBEF554AD7C319B0DBBC0CD38827E28F84704106B652768608BDA766194B53
          2C859D7256417B82741760968CD0880DC07C6D490882EB0CF56600871BA7B675
          9734405000406E66470827A056C92303DE940C54D034E51091890049F060029A
          0B002510500660C082C0BA12EABC10EC263131055120052630022670C1193C02
          1C9CC11ADCC11D1C055170C1188CC11E7CC2289CC21CBCC21E0CC22B6CC22DBC
          C1183CC2198CFF0544D09B641BC13A3C2472DB8F14949DB105AA0AD000BFE783
          6D3689B1C559A0C89504E08FD4F92B8740756C8467833B9D21CB0C6BB023BB7A
          080840C0EB76080AC05BE916B3350040CCA0005EB0993960B421800E88E656B0
          580E04F3C603F80092B9C3781C2431F1035200445580062510C8825C026800C8
          258007825CC881ACC8808CC886DC022D5002903CC9940CC98A7CC88B6CC88E6C
          C8821CC987ACC978E0C8717002512006709AC7A8CCC36C5689F358670874AB00
          20C57736B7D3B975D2DB6C21C227B0CC53083B0842017D8DC846C879BD89108A
          6E5B0C2FD0638C00AEE710808A70034E55BA89A70D0870029B795B867002744A
          8624E09E1220FF04EFE0BAA35B64A95CCE18925E121002F48B137E50C15368CE
          F0BC21C8D9C4A8109D2895275859B756DCA922340111D040558C7C1F6B95C649
          B16D567C4DAC89E97B089A5866C850058DB6628CB0030493014BA86ADC973C5E
          90C3C96068052302EB6C92DD2C0F44D00270787E85B0421EB0ADF1DCD2B23103
          21E00131406C52A9A40FA20B1C3D3AFA85046E8005AEEBD2405D1BB5DA1BAC8C
          083DCCCF00A03AC5F113143BABDD568ABC504178363BCEB27C391A6DBD11D085
          90BDC7A00060670366BC0832000F3CF0595BD068BF7AD1FB3003D1E468460B00
          5430D2E83002B87203E4E0CCBFF2D5361DD47C3D1076C82A342005A4B1192921
          1211E1B49BF1FF2B31C1289C61878D6D204E1BD98DEDD8892DD9916D20907D57
          06D1902180057A09C57D1DDA7981007856D48960958FD8A32AF29C27E2B085E0
          0414E0CF0D40C440F113B3DD401400CB8550414CECBDE2A2005649CCBFD4CBC5
          803C1970C00DE85B32602D66F254E41C105400764DF8532B54303BF2B800A048
          A576083340634E28DAE05D10CC2B083750C1DA7763356004EABDDEECDDDEEEFD
          DEF01DDFF23DDFED0D04EABD034DC11928F006123050E1FDDF3A8167AEBD0843
          BD27B76ABD8841616A792DB891CB7A525AE0421CC5E613559D6DA895DA11E60A
          024E0C97F9DC059A3BDB1DAC34C600785D10EDE1685F3508109A013B7005D837
          AE3E86082FB0FF23250EE036DE0F59200551E04D31F10244C0055CE0030E30E4
          445EE4467EE4489EE44ABEE44C7EE43E6004C6839300000312E006C572E3582E
          10DBEB0AEDA866C5F72F3EF11311A0DB0AD0E00F5E277C32E668E533C394C4A7
          B5271F8B0A7816E7BA7005DFF1D3AAB0033910425E400E361097328104C2A58A
          842D0854E0ABCE71CA833005EAF0CE59FEE8CEF00397F33660600543CE050E20
          009ABEE99CDEE99EFEE9A01EEAA23EEA9FEE0066C0069B0D003B200562D0BF90
          FEEAD1D0C3C2AD0A5639A3CD940808E033387AE626022E13506C71F67B2830B1
          AD50E0A575CCBA70018DB6C5B06026E7400239DD0F40403034B08C2FF0224DC8
          0803A8016A0DFFEBDE0E0CA7D149C5621C7910069BEE00984EEAEABEEEECDEEE
          E75E01F714134A100539E0E8DF7EEFC570B7800B0BAE6A5AB1D596BCFD2DC261
          DBE72BDBB41D14C5C94B95D8B1EA9BE1FC9EAABF008750350B55004909781753
          903B3630AD2C7642298EEB6027D1F83EF2BBA00066E03F8981930A7002422E00
          20A0E92EE0023EE0EE345FF335EF0056802BCC5B026280052944F240EF0B08A6
          D5C38D40A84500B01A6E9BA5141690C34ED01347034642C804C3611046470022
          8B0AE8EB0B2790E8B37003E6E7EA4E316B06A001A72B08C9CC78A9505DDB1CF4
          6EFF0A484003196007A59112556004332F0015D0051500F32E60F3801FF8A3EE
          00613005E581FF0622E0D97BFDF68CAF0ABD77CBAE80A391F845B2B30074DE0A
          16C0CB28E5DA6A4BECBCD71B972F0B060A0178DE0A4A903B26D0ED398102FC87
          36843005F0F0D68730480C00E88D7FFBEC32087E20060B39B6E06706335F012C
          00057100052C50013E10F382BFFC813FE49C1E067090F28951076FE001326017
          D18EFB8C4FAA0BDD0AAB7A22A0AAF47BD200591F0B4CA0757024840ADBFDAB80
          60D98F0AD1F3DDB190053B828B7E012C91C49057B2F883000821062300858687
          88898A8B8C8D8E8F909192939495969798999A9B9C9D9E9FA0A1A2A3A4A58F43
          39513700080A852F560E0202152C7D00282CB33E5CB2B3BFC0C1C2C3C4C5C6C7
          B32E2EC13E76FFB7AD85701E3468ACA6D7D8D9DADBDCDDDEDFE0E1E2E3A10401
          E704A0E601040B880A07E7F2EC0714961607EE93160BEBF307AE0C45F017C042
          270BFE0E883A6140420B4D5B181810418E1B09030F4E20AA42698607035E2A8A
          1C49B2A4C9932853AA5C79028B9B120014C804702516B00A6C5094A9F0CB0103
          5FC8821673E083A88F3448932275C054A8032251843930F2D01A801D52C4BC38
          8460A5D7AF60C38A1D4BB66CA805F20818F434019DBD430D08D2BB6049413F74
          1328F1934BA001D778E7DE726A302FEFA72A1A0CFCD034476208B39A8060DCA1
          690A040948206BDECCB9B3E7CFA023A1A8814544B55632A184013A0B040B1050
          78FE52E643A8FFED64CA1848C88123448C1F53F24CD971024E0D3344C4A461CA
          3A98033145883417E0C0CC2A055D01288992234BE8EFE0C38B1F4FBE1B4279FA
          D8B643C40470DA056B195DA0D060C18206139820883BEFDC0126855840C10414
          58E0847C77FD131F00139813C127EEA5F3890806F0A049118E95C7880C063030
          84263418808386249668E2892842E6841958C880022BAE28004718C3C8464B30
          CADC665B51CCA511861856104184193028C1512128BC30070C242CB15C730EA4
          310500404C479D154520F28218525066558A608629E698645E9310360DF6574F
          23FB11B08E9BE6B8D9DF3C041C20675AF92C78083EFD11F0A0214E3490DD41FE
          A4B7C91A2B30FFB0152648244691981749B00A26254800C1876566AAE9A69C66
          3A85043118D2D50546D4F68B8DC770B18C8EACCEC21C5348E1E0C50D07168240
          093B8890860BB238E082186014928532CC01E34018DE1D32831851BCD8E9B3D0
          462B2D7884C923182968D169D82276C5B90005175C20200509CE89CE01F85950
          C204FD98B3A62269CEB3C0A0A2547B0E5D9C8C60800C995CF08188F482196206
          555D52830139043CEDC20C37ECF0372F4851C321A49ADA9A2E41F16265AB3AF6
          28C20F3019A240116684E1A319998DEA0509C88921C1AAB38431A52133B82182
          C20FE7ACF3CE3C6F8240A1A6C0D39FA18AF077809E884CE09E3C07FCA9081377
          1D506B22D932FF3DB528EE29B409431EE06B09023C186083B3632260C2200151
          F2A202FFC2D0F3DB70C72D77085154F3CA6AB354005B192080802A2D18F7D40B
          C7843B97861B3B901D931F3B50E10A02901B62010C62C0ECAA19839E20C5CC72
          77EEF9E70C572D21291710E46723ED0570B4215D94C1087FECF805C95D4E276D
          3AD29E505098260A64A058261C7A50309917F8FED824258890014C9669E035E8
          D0472FBD864348B158210A80E00B0865605742E07983C04605A83AC085C58517
          EE2B0D4DC49436F6D83D3E841BCB09E30314D628408318334CEFFFFF00FC0E05
          FC51BB509C8769B813889B0AD80510342202E7D816236E51880BC4436B89B020
          9DAE050AD169FFE2603638440B7EA384E1316207107880123875030640C06D90
          680109246280E39D0D0801CCA10E77881214B86144310100142CE64021060304
          5DA80302D8D00554E56847BE520617A6C885365091581B934A1A4C7005F76127
          3B9153801F4250BF6158A1603790821D6CC5C336BAF18DE0C85A29E2750EA225
          02826A49C4182A300646E011408DE84217108196033CEF10556387043FC10402
          62E2021E80C0160E41A1153C80011E1801118070822BBCE002834282A560C8A9
          134080019362440B64200103180002A7DC0A182E634238DAF296B8BC040CA4D0
          C5AED4C10ABF60411784290C10BC6827C278A2317C35450960E1094BE88134A7
          D983253CE103FF1E6080AA783594284C010D32815C2BBA020DED44A129C37000
          1C0E0184282C2A97F08CA73C2131406B91828E01B0232208834144ECB1027E64
          C72111B11336DCD14D804C84BD14390AD1E10C12071BC1A05A98C20740C09518
          4D9407F85588B3D1205A82C8C1FB0E810220B4F2953980C1471E250403E0709E
          308DA92DBB52022970941570D85EDEFEC6BD31E8E16F02E085E58CE582363000
          0B4B20811A0AC0D4A63A15032CD0411230D08327145555E99C188CB8829A429C
          60A8C1084396BA3283283C4AA6684D2B1CE5388A039EA3800A55DD044120803E
          2A028F1C3C441FF44641440C9000231588B644F13379C88E120A88E41F0E7183
          5632E0042720FF811032004B8C6A0400313080078EF42C14FCEBA686A8420D3E
          F2CA0FC0C0159965C04394B00209284EADB08DADE742900398B8420E343A46DF
          04E0B7747293A86DF0400F9250800E9041074E4D2E5475C0820260E0B9547DC2
          145D80BE34C4E00D2120810C6A70057C89B32B4A48C350CC90D01D602159B24D
          AF7A3BC78479E4B5138D4C0B5C93265746D481AE45BC233B120800BAB280110D
          22C043759716FE66C25EA39B040CC496082548C403990140F07EA0DD4250E101
          2B98C3B48AF000151EA204FF8265064E6B880BB432540068A956D7CBE2164F2B
          0B58B81E2ECC9045DB98CF54BE62801488DB811E7740074B4DAE53D5B054E83A
          17BA4B700156FFA9E3822731A5C94480431322D79517889718F70B080292F35A
          177BF9CB9C626B280A6B58473432C18BA0AB005CA75F02BC17006398059B17D1
          167D16A22D6949A827C81C80F93642013930C065119185071840034D98814448
          C98AB31D6F5A1C12A9A8F4F5002004F66C40DC8201321058307BFAD3E3E90A0A
          C440848028000AACD15BAB88E58207E420093EEE7171750085E20A79B92CC000
          53A1CB6BAA567163B03201890BD102316C2C0C1106401AD708EA663BBB44A5B3
          27D6E6715846D8E96A8BE8C22CFE1BD73C2662AFB430682308B3C843409069F5
          4A0B25FEB0E94E03E00486FE000E0CF081F72DD803FD5B18DB0C80E242B01602
          3236040A3E02FF4404047AD0CF4EB8C2CDD2951A48E19D54C86D6BB44D0C1600
          F5175C78800442408623C4BAC750606E076C3D72A64635D7473E72AF31500121
          687399520AE2057060A5EA3C0E007678F8C277CE73CD54AD9F9F48A49D115127
          483471167C68F37B3196DF4614FD75F20A8513FCF1E645846DC58A80C10A5CF9
          002F15620689F1FAC266C9809015226C5D23290F2EDAEF0513A2E7708F3B49BA
          9246B775A50F34E62D0BC6800628583C187CD405505DC0802514E00EB4FE7807
          CE40EBE2CABAA94056AECAA10B021D80A00784CFA20370906F1488C04AF7CB9F
          1B68E06EB99BFEF4E0F047B9394160FF400221D5660432EBAADF8224A20E79B3
          AB23ECE48844FFFA39133F97C40B18A05A47C4E0A20C689F212E22849C85E8AC
          00C090885E7481137CE0A2C22BB1041E9025D47BFFFBA408E3E859D11538D4A6
          0250483ADF6EB2F7253630185C9000AC3B10722828FEB8B1767C014EDE545DAF
          1C03440602D0F5046D0056BF900693D40A326025C86608CB067E101881A6706E
          EC200A53A76E8F903A0666087CA0664D57087884344C37678DD00F7AA6081132
          509A105FFB150992017D8C4002B0F4018BF2021D964A0D83040CB002DD570817
          010119600294E54A1ED0838520088F26814AB88494500351607665905B205007
          0A407137D147B9000CBC80050570041E177264D0631ED7633A10861FB77F3A70
          0642E65C4756FF796AB0723DB064524102B652035662062FD2153F20057EC084
          7EF88794E01EB1D70929F80877816681C41315907470D182871007C11409BA73
          000F152067020AEE317487D03B9712092270517408001492848880022D800454
          500457A00460000643300760A0046B70032FD0042D507ADFC121162232618351
          1841036667081CE65A80588CC608007E603D22231BAE817E40450765C037BEE0
          006DF00405A0073E760464D0711EE7717A50868A5700C72579FE57006AC05CFF
          E76B5C904E61A07C5F653FFFD515FA83038C788CF6588C165060A140817DE608
          7404748D1007B2216E86502D87843115100791A0007132888780676F050A1089
          888A304B1F40FF2F2F100236C003CAC78B0C90192DF4005BA0043F0004224003
          3C60023690032CF9012EE9923960032BF9922FC9923169023C4003BE71024A40
          05B7F8192DC0000FD04522030326E00136400246880836600062778F50E97DCB
          725608502A37923780070256B05BD4C10552D00163E8854780787A20961DD005
          3AD0058AC778CDB586501580E9F85C7168800E00437970655A883F5D810452D0
          6F51F99711187CE5806E8CC02751270947A77B854018DE5608E0260083240959
          5375A2836D9BA07A8F4021A035043424019D1732553049A2D8211F9003264004
          24000435000327B00545508B74414E4DF00255A10017D0024D400557900527E0
          0531200321C0FF032390032F69023420033000069C551692B18B95E005150298
          D229770A2002CD620856791BBCC00167E08D6689785D209663A903D83886F497
          866E89864516977229873DE10674E10778F90B614007D6300458C039D3B99F72
          4775679116EE6617E652758AD007FEB54FF7720865B06D949048F9D4690C4998
          9E20988C30702B904A55F0110FE0012F050030C0008C5602C437073F99054020
          7638900119E0012101004D900112E0011F409445A00119900323400585300533
          D30445700360C02438309C1FB09124700245906F60D102DBA7A38D700137A004
          37903648A071B5C49F58EA696F200566677EC2403EC5E095517507DD289674A0
          03642A96C755FF9E3EA6033A3072253764E8C89EBC3697C290061AD604E7140C
          56B00A5DD112445989593AA82E968FE8100A17406D8B003B7D72828F303E1FC8
          980BA20B20A09093C08FE8E090FC48A09590A8E820A89A66036993590FC06829
          8611C1E283D1590834C00023C0004210100C80037F80030E0100C31703736003
          9C76150FE005270003303103ADF421262001EF843D37B00331200226E0924210
          023F8004B8F80825906CA5200830780854A03C3BC8001FB0622D8570845AAE2C
          660758F04E43240CEF370C2E20015D785CE1299E635086E2795C66D90188677F
          8F6772E7986BFE47A772B90750C22F25606C7C4A907690018B22A8E6FAB06A55
          359A780962F6FF9072F10F96D040086A7B86403E963A09D13627EF720815CB09
          EEB17A8620083785004DE99C86E0055BB78B6007012B04008536494AF000D723
          013490053860037441051230492720013AFA030F200231E02595F25814B59414
          F3073740053040032370A334E0054AE0B08A4002A4380A3658768A100334E48B
          13510807F35110BBB6B1F50358409400300416530B50100765F01A38C20049E0
          8DC745075E2807472007C705B8473006DB289E6869863E667291A76B6C28B018
          000226F013C62206787001D2C1A7051303B5C5B69EAB5E98F9099E7A0E7A6298
          E6524796C00691EA8800B057757009178B1EEF534F811174E8D10819B0026B40
          331281758630FF3074C11036901D31A00147F201445008D914496ADB421FF203
          9801005EC00029F92854E0AA40405B12D0918900040F90014959084830053220
          84BCE1052FE0B01750047320011290056BA0829F10362D7A08C7F74AD3100321
          4059101012552A01D5FAB902DC462D812934813EE2C30A4727383DE08560F98D
          3AF0B74750065FA0032F50067270A669EA856E9A7F1DC002C7D5968FFB5C93D7
          6B2040646AA064C190061A1102CD610564F3063970A5035CC3B864A815888912
          1A13E572BA01C0A9DCC202F50800D5121F63C06D96E0A07D526D25AB09074491
          16B6021E70085520117E690892816F0070362B066F7EEA01C7A301144102B78A
          2135B0052E59FF0832B05987D0BE2430021FA03CCB890823C045314002878402
          53400242680321B003EE7603217651198083A280423980083AD8215E90367CA0
          2F19F022D797AA365CC96E3405F96908B8150C49745FF0F79561399E5F10B872
          50066C80A665800788B7C1E0F97151C55C4FF5B855F504B4DC037A83C202E86B
          96E300371303ACE10015802F0A40025120BF967CCC3A642F00A9094E300FF1C1
          A83E9CC396C002AF5B90ACBB779800913EFC2EED256D9DE00F099459D037709B
          564B2D450861EB350397033B80030CE0A41940113B80ACB8BAA21E9003930204
          98A40139B0155EE001A634023220698A8000D984033020A857300522409C3800
          328930038146FF6F4A4A0A89B502700B0007F300FA5908436051597211A188CC
          24FD3F30E67537803EE8E71AE0A30C4610CA5E58C15F108D7870CA038007AAAC
          0345E085671A86D8D8638CA70671DA7F47860521406444900615A006B9CC6BD2
          B5C24DF003CD6106C24C375D56D2583D3D27ABC3AEC720B17BBA131B4891B998
          A4EB982CF0B195C067D1BC0000D2C4C077BB8A30AE887011F4A69F27B0753824
          196A6B082590A24200B7F06B8A534005A8380753300425D0022D70012F30053F
          E00530F02257E0052D600391D57C8B50041240026F0CB586B00512C003358002
          5940023990013CE0059C85001FD06119C0B59C70114948212114D11FA1115930
          0859BDDBA073FFD286108537712AC0D0066E00D37F7B5CA98C0733A0035F8007
          6850C16510B86E5A9620E7A6B5969E5425046EAA023AC0033D1097EE59973B30
          9FC0EC2CD5390257CDDBEA0D37214B008E9A091758BB00D0C3D11C00280B096C
          80C444EC885D803F6F5DDFAA132300CA163B4C33D9E4A4A135D1AE460231E0CE
          0DD1022C6B00A2792B45000627F09B22200423B0E136409330D9922E79A33650
          C74280932200045EF0034330049E5D0830D075D52A021B17DAD843053120843C
          7002175005385004458003085E0A4A008464C3216F870895F23B4C2AB6EBDDE4
          3BE3DB85B0C9C7E0021AA0068A2B9E13ECA62580067530002A300003E0A62F20
          0788E7B73D86FF788D37D46CB87F6A60053CA00270AE0344F00471D9036D0014
          0ED0B3F32900548D3DD699DE4E1EE80D0391CB9C0914D84FECF2D57492090AC0
          027356C4AD0B027D7509AD77BA47431F5D21889E10DF0430506B00011799082D
          C0035B67B61901001796B434A0923039023C200224B09AAD39075730B548D004
          2590D825D0044D808AAA38045310ACFA4B031A4E9C3129044420032770035500
          5E1F10A32340C300300D5422011C91051F100257700532E0923460C001CC09FB
          06B73FD021D87A8410A0BB85A02F062CE8EE1E2D98CC3972803EC3C00B56705C
          6538AF7F2B072F50864110E6701EF06568AF47A007C71586FAE7542C40644016
          0644A003716EFF06741E97CA24002C8C37AE5201E64D37C6FCEE1ECF29F612D6
          815866866027F9A0E8FD2809917308C364CDB6274C266BE9E0120F1272E81022
          0FE5B6607B9D085380031E60510C6003A2099DD340025EB0052F8002E17E09B6
          790327500321F0B32A6A0334C04916DEA189307CDFFB00402402D4CBB3C24204
          371A03D21E0A2ACBD7ADC403697303447051A27A84FCF6F172BF29E6855E7440
          EF5201AFF4C778F92E96A90CF0011FF8014FA668AE96FDFAC16E0A64CD85014F
          100544A0055E1B06139F8ED265310E200336712A808400C45CD173FFF999E21E
          BF6709A34B005783166E72F2E602C57EB5007692FAE8B216954AD66A31061F18
          01AE7F00BABFFF00F7FD90224B011440F36E823DE03CA1247F084400128ED002
          AA18E4722D0ECCBF0332F0B31F300238200343C0BD851003435B0335D03F08B0
          71EF6600EF54023030593840C9A590DBB5ADC6F88B0334600334C40070CB102E
          0BFAF86F222D51B3000008743E028402151585845C4B1D8D1D7A643A3A647472
          7278772A9A9B9C9A93925D8E1D502C923A6A2C050518AC184F193951582EADB5
          B62E2E850E42560E89565500C26F392DC2C7C8C9CACBCCCDCECFD0D1D2D3D4D5
          D6D7D8D9DADBDCDDDEDFE0E1E2E3E4E5E6CC040101040AE00BEA0107C9070417
          0B0404070B07F0EA11CE4CEEF51B186F029F630DD45960134718057A04D5E5B3
          F08C9FBA0314FF2CF023D00000BD6316032CF816019EBC641F20DCB07641C203
          63E7ACB5980204C7070F2342FC8009444832250F188CF86003853020394CFCB8
          11C2838D1AEDCAB56450E298021C100C68D50A21C315644D56788849B6ACD9B3
          68D3AA5DCBB6ADDBB77001FCC0E2E7589E4185407409A38B419223A28EE8B923
          8912E14E883791013CEA8C29322C52A99AACAA07112D2446F4B0C5D915974469
          A2E02564A5CEB11852AA024010B7B5EBD7B063CB9E4DBBF66B26F008840B3921
          D9BD6302F5593CB94C81C0DCF8D20D3CD01B40C20046013C8C181163330BEB26
          4CE70852B7C3DCDF1428F77EEC020306178E951841A3C69017AC9765593122BE
          6C142F60D0B0FFF16104891D4D242382076BE0C0C04A0000F100092430E00500
          55D46043063220510E0F069C900C0C394820810726C01095551A3010A06D28A6
          A8E28A2CB6E8E28BD6D420C50B76E105020B63C4D1050B88B8F04401A23472C4
          1174102649624892D1C51D914C121965AC24518B655A6811C5669D4DD9862F84
          3880C568025861A130306440058C68A6A9E69A6CB6E966361398048E05E33931
          0F79C234900E3DEC2C83C071F94440C104846A37C171EA8C545200E9BD939B3E
          DA51206903881E40D132256DD4807D1EE1391E13DF8CC72950362073C2562B48
          F0010F320038620C0684B0E20DFA7DB06A0D270A4103005330A00400E6C9208C
          08198C38040EFF191071A638401840C2322D2011DD32424030C59BD866ABEDB6
          DC767B0E10A91D73025E1540D14E1D2028824328410EE9EE1748C65BD8198D00
          D941123D3C310207268C6043144B6011821632981006062024ACB01A20A86145
          186930900B213E70C12569651C33D757DE76ECF1C72087BCADA30174F44D9C17
          29F39B328B72978C9E12456041037C4A84CF02145471DC011B4510D2010D58E0
          339FF8E8634109C72D901E32D389B4CC4720C1F38F37BC21038301BB1EB3C307
          0C64B595012B3CE0010DED60A8613332CC109B024A6486530C60B4038307E9DD
          A0D2B0C50A7342085E0C41830738FC0ACE16108C704D0806D420F2E28C37EEF8
          E367856083DAFFC218315A050CD1D125036A9852181964DC71471774C01B6F62
          6440210A1405F490C60629A890C026096C90C306550AF1FA061BA8C1FB061C04
          CFBB0A1C7C56082E8984F1553B5B609105E4D0472FFDF4D43B53F537248FE41B
          019C0A43CF3EEB980CF33A82926C333EB92D6081F9FD58EA3375B905ED2801EA
          0330C146FB1040813250E7098FF6DD2099C9842103030021190A78C11C6A4083
          0E3DC06B125080023CC0001A31E3060C80416DA8E00513F4070845B060091EF0
          A026488008C220C1036CE0811C28E00603E201C7BAD10206486069D4F0820144
          50BD1EFAF0874064930268208611592E2F3C82428F5C6004529C01749E33C5E9
          90F48926A961FF5F88999D2638400282F1E003BF131EEFD4C0890D6C491713A3
          181D00D00E3F60E107418CA31CE74847D98C677FA182C7A590710F1CB2911F07
          B8801322900EF4DD6C7DE98B40A10A150181708402CA9188FAC6B38008289250
          8D8448F81E62C8F009834E0198DA31F2810C50AE8324723A060E0C004767A000
          0C5E10810D64D5820768A07B6432410620200113C80097AF69410D84E00121D4
          C018356080093E648C1B3CE0800A9080B000500212784086DED8A505A9B10308
          F8A48EE00CA738C7B98D19888187C250801112810842F48811ED1AD218C67087
          01E88013F754413EF7B9894980EE0E5AE0C006A6C8452F72608A9A4880042E26
          0086FA000AEAFF91420CC849D18A5AF4A2C940C07846D48DF12CE31EA03A8646
          C6339E75047202CAC10805F24752A3DD2F1E17B088FE12C21105AC9467C9E159
          032E30BE91A0741D854C8E4939454A64D4C91B1448E56A46B0023050A31D4330
          80E19681041380CD001E706A8A9010831164000743C8020962009318DC500927
          98C20E8451841A5CC19A385896365679366A38F3031CC5A85EF7CAD7C7212107
          1315060ADA99884470410A4948AC62136B842418E1B15A504302244BD9D9C52E
          0592550166D5B0582C08F477A0056D1AAA54133086F6B4BCE3421A0B2B001FB0
          E0182838675F674BDBDA8ACC9478E2067652A60C3DEDF11808A8C2041AD08009
          806AA4F9E0D9FF04DE07BF8BC88C1E7422C0FD0850BE4846241F14B0E4FBA87B
          010A508A6795F4A3308A1A3575E051B71E15C60528B84D67BC1026358855339A
          0081ACB492456FCD800D6280432030400160104A7478D095185081061A10014C
          B0D1AC6952A30A1E0A866D274CE10AB7280B52789E3090C017D676C9054BE881
          88471CE2118B78096148F1C352CCE230ACD8C54B2871BE34B0012BD4B8C61CB0
          B1153840040E64A04A32208206747C632213D906AB2DAC038C30221288817216
          8EB294A71C9BA4F2D61B288BC74709F05B68ACD4A4906CEE40B84CC88B04927D
          F093EE4B5D360DF20A8364A2DC8613362A8C1A4A605ACE7841509E8738C531C3
          0BD2CC40D65CFF84821F980070CF9B81536A2081FA00E00A0C38C10E1880C222
          F0C00340C8EB344E35686A78E00127A2B2A8474DEA72D4200A0B1E428709912E
          5DFC8832B08EB5AC670DEB24E06000B8CEB5AE714D061E54490B3C30011972FD
          0562EF5A0B492EAC15167C0229D4A5D4D08EB6B4B99165E204F07FCBD0D379A7
          619C3D214ACC250B33CEAC9BE6066C7780D470B373B0ED8D3B6E78051990C615
          0CF080AF08C1005B68C6102C34832D0073454520D60896228265AE1500AB1441
          09729083634CC183F7A58612A47A8D1C180041D3CEB8C6370E0022B801197018
          8D5E08EB235A9BFCE4B1B6F5AE571E04327000C844B0C11782B0F25D07E10C1A
          606861C3B0CDFF22484143FFE6B8D0872EE5E738ED1B21893342F4878D6EC703
          7CE016C970B3DC5C8E6C57E9E9B6B67494CA8D90E0F1060628553476600009D0
          28071028C2B6707981187C2007354001C780120213884D706EDFC10F32608235
          5443CF19087A33EE3D04A21BFEF0B62D4114DEB01A369AC11737A2431D488108
          072C01E5983F7912AC906B9A0FC0F3B80EC2174C00F31C9001F435FFFC1772EE
          618A415418E63403E2674F7BDA0A101C32DDF63108D99C6CC08C6721A97AF0A9
          63F59E6D43DDB8453A3CF09805037C131A57BB21003EDDDE375DC1CF083C8157
          655015127C808D0C382035357013216421041A0881789D51021B4A981A34C850
          EDE74FFF3A4EFF21C38D678315DC0905A3B0A1D520D60199378029670233F705
          088880BA76732F572544900367807A35277A69A07389B064C810024F567F1CD8
          81720467E0301EEBE71C4CC70D7A7233C3177563465CC6C70DC8975EDD703DA7
          8203C87001EF970CB0321633200154912D2D000423C000243007CC3005C41402
          54100C27F00085070022806F2D8003C2B206BA1471CEA0680C3026D4F0840FE2
          815EF88522131F321005AA01006070396C800063703C3D208004F886AAB0040E
          28066220045A506CA1770642700604F38011987A9DF7051F6081BA50017BF403
          52304360B8888C08325E178212D165C2404858E77B8504752A98482DD8515A27
          1E12813DF060FF3257834E04F40012A05F3C2002245003278021DF87040CE001
          50E6260A000459F1015AB80C4A706924D00457903518340212800355101F1750
          263C908BCCA0001FF0006A570D24600081D588D4588D69C21A33100521601F46
          703137522EED148070082589D50389356B3D1005A16105038387A1A7067BE880
          39A00512C87282488885E0036B240C2F1005D3688D00199068121292A80D3098
          0CBC170E6B963F2A483F34433EE0A05100240C1A251182470D466732F1252BAA
          F4351E99158673579AC62654C0831CF90C60404C321015C208002F40031C0304
          C5B40503827DCD60032B2038D4D06002D9933E391B59800540070033B07F85D0
          4E24D786E348FF193DB0044F1063E698049491044EF9045170879FB780C0C687
          41368F80188883D87A5D0207C820025130923F99966AE916218196D7E089A7B4
          0C285589D080000A10746B865355B70030235DCEE00433535C176915F4A30CE3
          5190D76074DA032B0E261734C00323900319C0830FA4153C000045F00078A52D
          57A0042D7070D1B00523E0013580008C96034D484D10400222200125B0037C57
          7DC93002104084D5002BCFB296BAB99B65410252A08545B06AAD278E4B39954D
          F9044F199549809CE6D8943840046A3073B9A6063CC0875A10021F408F5FA97A
          6129960E6006D3720258A088BC599EE6490E211152DD700107890C94480DEB93
          1C374397C8A5FF9763C6971BD17B2C5333B94197C9C09E13E93D91E80D8A7914
          06D098C8A00055D00454B00643700231906F57B0428319323BC0705BD00434C0
          006B850028200197E90170340344E0015DB80C2600011A460D1B799E2EFAA2D8
          A07827890070808F6CE88698D70146306BF722626E509531260521568E4FE001
          587019C5160401C59521703BF56873F728966AA41E39207B307AA5585A0D9104
          0E4CD09EC70049E8F60CE3431013B10C9C945CE3013485A49F2F235464AA7BCB
          00A0FC030F23780D8B72743C590D4AB00262571648F08CB6E105C5740337A036
          30400254C0003480040BB60519C0030B860CF7966F1449A825E09600D0A259BA
          A99C0A00E2F9FF3CAC11074629A5C479721D60099AD794516095C819634EB9AA
          31F60442EA6B67100244609D921302DBC99D364A3164790C24100568D0A9C44A
          ACA2F20DECF98972495DD270A7CD652971CA27E0053ECCD10C90443FBDE1ACEC
          E60C7412A0002082DE70A7DA93A712C7A76791192A32034D1102C110030F8002
          A762412F600336A01F1E009AC790A22BDA021910141EA25F4280032220033110
          209A5AAC08CB9B0A200245D47843002686405884E0024A79727950070AA00793
          E186F8729CAEBA04B06A052506954FB99C21960638C0031B005032203944B0AB
          A2D79D526A0550A60442890C159AB03A5B8D6DF90D151997CA402761BA8CE4D6
          3EF6B900C014FF1042E597CCE00416319129985BCBD0AD197554DD20AEC2C098
          CF4005402003948A990FE04264F10336C0009AF94B297203C4E4053320041AD0
          2130319A32200127F003127092C2409BA9F9020CF0911EA921F1959B3B3BB83D
          790352A038F1D18D85A5178555AAB3A607ED1007703019F8E294B1FA04E6E806
          4F1963E59858185000E7788E4B60061B40045F502592736BDB19B3BD4A315A05
          00B14504ED90B3845BBB5E1812769247EB3092601A0D46471071F61CD4558901
          51ADCD5066EA806EBF2B11982A1D6C964E5EEA7BEC16B8085403388084BDA215
          2B403660BB9931510518620019807129B27742402B4400A83420010020042149
          AF72C554AF8BFF412BA08A44200110F0B61E103685A7B5B6FBBF8D881A34C21A
          7830AA02000250500675B023E1D803A6DA04AC5105937162986BB244EA949EDB
          A340226B9BA7052690B21C30211BF0A40B18A552DA5046800C3202A800DCC28D
          D8B3BACB65715A98D0908289A20C5926C3D6C03EE8A6ADBBFB0CBD8B0C5DAAAC
          DD50A000A043A4B81AABA41512A0016053991AC4B774531635101434D822EAEA
          01D3580442D0041930024AF007C7807EAD94030FE077C2B0A70F60412360000F
          B2060F70C6005040FFE8C2765C7BB13B22500026E5D20EFF773C8C6072722041
          0AD00295B1041D0BBAE7982F25269513ECC0B3268767A00698A10567B0ABBC7A
          C2A4610CAC71FF0380055C771CCAF54790B8A74753FBBCCD50B43FAC32443C0D
          4DD30FE84675ADCC0C73990CC947A0A1280C3F8035C8B006F565435921013F70
          021EE07C00D0021E12A9E6E01E2F200378B62273F076BF7205100006F4A54175
          4605C41C0228900115740CCDF7CD0A60717044052BC00067D267A2BCCE1CC729
          538005A0E9048F57581550073A9208148BA3B16604C3DA0E78D0A352E9C893F1
          B19F5B6B883C6B183002D2999598CCBA9ADC501D3A2C5160140840BBEC7CD1A2
          161237D875F0C0A6D0EBADCBA0CA5A770C737674D3E0B429186756D63ED050CB
          4CC375DB707B00B005067099E262000C00062550CC289420E2CB4614A48C41A4
          0032A0012B19FF021220040F70700DD268A26903C9AC35655715EB856F00B006
          65172044C04A18DDD5D1161F0537AC6C05B102C0022050013C02C8FA0C6B1D60
          14EDD0046B3D95430AC9B1D694B47695240C880EADC9DF49D1BC8205D7E2D582
          AD7149E70EB9AC0C720A0DAA0CD2AB910E70FA0C0A6001B21C4A4C436E438BC3
          01C0A658EB0D20F86814A7313F0D00F1874EA7227D29215774A4043960032FB0
          033C80CD31B00240700542E042F19737C240D3729C9906A04157E3014681215F
          3BD8C41D65863B8D08A0B8F47C94374A6B79B01AEDA000AC236B2326D0B3F604
          D6CD942F8BC9252CB327AC8F8D370326C0BDC55DDEA226D3E10AD3A3C4D8F310
          11FED93FD530FFD92A4D1088890C28C5A6E8CDD1E6C58F5D810C7F80556A8338
          570C0665672156F5BA758400488DCDB02B01E894A845800406D070C790A85845
          2CC1DC9A61270C3660002C6CDE20DE57358005185707067CC28E0B6B7A50D1F1
          21071C6C8E9867D7B1762F51707ADC1D7A26CCD746601F3140E221FEE31466C4
          DEB05B5A16D2EC8D0C36EC9FC0820D442E352FCDD22D1D00BAF78854B37CC2D0
          7E1A3022582D7DB032020A70014300010CA0765BCDE02AB206A1D61659F0A8C6
          8004127070306022343D55C7107F5B118B5B0101D8BC4B420DE47E2E4EE674C5
          C2B003642DB1F85CB1B2B6E2122458D34D8E99B79CD93DD0DA79E37BFDD05690
          31ACF1025850FFC77FDEE915B5D9DEF0B3523B5E47BE7B11E1D1DDB0D21D8D0C
          CB8BEA2C031DC97098318C4733502265E84C0FA08A3620E639404110C0843E8D
          A028820382EB163380031E906F26600354D02B34082B367D0C33B0BE62730237
          50B61A909B1FCA00CAECE9DEFE43F1310452009A0A30CFECC402C389E8B12607
          7619DD004005C51987740D6B564002378EE3DEFDDD1005D61BF8EDFE1E4ED516
          0E915490340CD945ABE4D91066FD1067E633D2414B333AFC49D19B0D9F924E66
          8CC62ED93579EE912BB056A712EDD8505731810040600341310266DE168C2603
          2D208C0C200446B1D5C20E004D70031286008C7A0C52FCCCFFDEF3D313AC6AC3
          1A57209C87D0FF05FF77088D1BC8B33604ED9E4E08E0E2C529E36C6D19F79EC9
          0FDD5015002AACF1CE81EDF35EFF43B70C8AC91BD20EFF510471D9DCA0EAEAA0
          9F91D427D7410FC41500EAB96E57C60DC90AB4008021A089CCE74C7E36A02B03
          1B033050152FD0DFD8C0C50CE0CC65410519A01526D0ED6CB106AB320360A093
          16A793D33004F4F1F59C0F3D68B07820C750203006A19AD6871ED793A107E914
          DD76A9B14B09E96C9D046970C9F75EE90F1D062BD10E9F8FB79DDFFB8F835B16
          0D0D77EAF005FF0CA6A4DEDDD0E4FE8010B951A7D2919F0050121C1512687F0D
          2B6D6DEA4C9148D0042D300328F06F5301F9D170011687B66581030F20DBAF81
          02C802A8D1B4FF0265380DBBDC69BE5FFF1D838885D70E5570E2070C08330063
          028586022E4B1D058C8D8D1D4C000A080000084C337A8E9B9C9B494F499C4F5A
          03A5A6A7A8A6415F1F0E87AFB0020E7095946F512595BABBBCBDBEBFC0C1C2C3
          C4C5C6C7C8C9CACBCCCDCECFD0D1D2D3D4D5D6D7D8D70401010416D317DBDD0A
          BD04071113C40BDCEC04E4D414ECEC119516E207EFBD1107DC0794000D02F012
          E74D5A04760776D5301042D908085B8C81A9A14BC18E1F57B2F1422163CD9418
          F9341E8B21C14BA52B0F345CD0F527C41641C164180022B2A6CD9B3873EADCC9
          B3A7CF9F406F2A20E2062680213E6081E8C2A24B055889167562844792A51972
          F4E8C933B56BFFA34F3D362D2192AA6CAA55AD62A92D64C5E810292782CA9D4B
          B7AEDDBB78F3EACDCB8F5BBA69E202FCDD656EC201020D42FAEACBAE41350BF2
          B8D16BB00DB12F0494D92DD845F91F800BEDA6ADE3B659D7160826949198698C
          8807BB37E2CA9D22A1210C033476D1300041829018591457C26140F6DEE3C893
          2B5FCEBCB9F362946E48A15849811157AF403CADF0F4958B1E52A7CAA984424E
          78AFE80B2C59F2A887902F41CCCA1FB02A03F6B5B07CE4D185424CEEE7000628
          E080041668A032A305E098689A95939002FC14060C13817553CD04910570405F
          077CC30B130B0446C0609504E45982A545C318892530208170BAB430870C427C
          C0C310959C60FF000FC33481C3070C40F0C108598854A4302DB480830D49CAF5
          420E38101743453C3C60C095063CE0010F5EDC804275193C70C381649669E699
          68A6790D0C5864440E1256E0A756545EE981021E50A4A727234B3CF1551467C4
          379F59F5DD27A7210E18E119105220A1E6A390462AE9A4651E441A35A0714380
          83BA4C40D0021EF2628F3CF44C134F86DD9058CF61F21CE0442F2112C60E0580
          69FAEA2E1EACD0442F45C4C08306106069C00A3000D0848B2B09734290104040
          028CD25C4045065324FB0B0C1E3CB082044078F6D3053840F0C01CBB20A084AF
          12348BA5967155F1C08B94C62BEFBCF4D6AB111F38B8910F14491DDA5D210EB0
          B7490F04132CFF861B05171CCA9E9DF49944079F9032A87C419CA181A187B255
          862E7E6051ACBD20872CF2C8248B1A1A358C95AA8B39BC24A8E182BB5CC09865
          0665784E2F86650873CB04248BA1A6D410D40B0FC5ED0244B6C15E9952060C18
          C0C00B00E4600018C48870E56B1AD51024032178CB8B02215C6982B541510101
          D6BEAC26C10812AC10AC4943403042C974D76DF7DD01BE20C51BBAF46186A115
          B0004B0563FCEB809F033FA1F8E28C2BBE30C3628152C028824E5C56C51A649C
          1F14BACC6082085EE32DFAE8A497EE93D0D404D4CF4009F1E2A93C12EA820063
          DD2C300105164CA0EA313FF7A3B22EFB64382230B156C2588AD0F4DEFA2E3130
          B40B71BC3160FF420C43AC9445D334C944C2300AE4C003091264A4910D064840
          B62F3248E0811075354F043026385F02101030E02810066C6FFAFEFCF7EFBF32
          3F90821F74F1823815823B2C285C772A000228C4010ADA9105162047C1AEF4A9
          074B9081E5E613042DB84073AF48543E80900347FDEF84284CA10A1943AB6950
          881D64E3873F78313BE12DC05A14A890A6BA112A6470485598D1613F6EE50B7B
          6C0A002FE421832EC58B2118606EBAD8410644B003A3E88238EC5382017210BA
          1628A17353A88412A8100C0440CB181710410D68D0824A9890862768020A6070
          C669E48218233040447CD1020918208C0068DE072A210403EC4085884CA42247
          26023178865FFF8600011DE2808231B0603B2CA803001EF81407B8A082A08C5C
          1A24B641F990E083203C84157625C60C186791B08CA52C2385A26A3066799558
          07CD76110121BEEC1F86A9100190770C19B65017170811AA0240CC5D284097A5
          4A102EA1B1A25EB448024DF847E87621930C7C265B4528170042C0A36400E18B
          CD50C03B148082298C600A75ACC90C84703E5FBCC0456DACC40D7010821DBC20
          04F5BB631E1B72816C416D96084DA84299538228F04D17D739040B28E1144354
          A00C0840C2BF5CF0B85056700958204B29E7C30354A6B210FAD1451546608685
          BAF4A530CD8BA534548D5375E3989590D94D79E104DAC1EE002D44000526808E
          7802C3090BC0FF290028C02A541140A99CD9C602FE110E76EC2E9D04E9A12EF2
          F8031CFC401825F88001060900ABD144173F3001031E6083186CB3172898C30E
          1840832D90111A2D201F937A728119D460053598C1F9107024002CE43F95C01F
          6FDC56BE3696C08F11B982908C1AD3CA5AF6B2CD9882140009802A1830926518
          43170E51010842D010DFF1680521B6843484A0722345C517EC735243F8C008BB
          088118AC88D9DEFAF6B7CB18D5386CD9209C6DE300E7EBE5326B57CFE4F93432
          F8F845CE3AB40B69C2E364BD580D8D0CA0815756A2095B1041BAF25789B891B5
          122528A401323026622880040F685606D0098D1A8C803A3C91C15AC5C580B34A
          820A5EF0C01AFF1C95C757D260AD575A4190EE9B470DB47121EF03AE84274CE1
          4AD8210A50230718FA65884B0AC0C3075C206A05A65A867D4271228D2D2A2A26
          018C81D00115B0D685EF5AE11ADBD8B78181EA336C1A0022F22233C4ECE972BB
          718006F8B819C11BF2CE76216402FC0E004E08CC559B514B5F6401024C82010D
          F487802BC8C004E3BD920DAAA08B0C40805CBA8881B870800CF241C0BBCD30A3
          24DE5A13B035CB59F9005B7C19708217AC4003F940C00B9030841A84E0040B11
          564300504838DFF8D19056E41BC4904F009CC0C52F9E6089F7B4042BC8200A4F
          48B18A55B1012ED4F61061D81525761005FA46FAD5B05664955186106040A81B
          4F56EE90CDA1FFE362282033BBEE758886B9985AD3DA2FBF5080041E904F0420
          2004CB4E5A963240822FA51937CCDBC20D4840E75EAC940636F0AF81B6902503
          FC811717681AFBC2A6BF60401B022BA0E76718C000DEC6FADEF8C65B08706014
          239CDAB61CDD745716D183500F400B5230F8A855F1851198F4D43E086779A370
          C87C5BFCE2A2B3E9118B91BB083420025ADD058FA75C891C6A08A74C78AE5341
          750C0B2873C81A3A72C98FABE3DE09861A51D6149D8963925AE47158BEA90118
          84734F06DC9186C698C19850D0DE03ED5B09386877255E20821FC8A009CB6E3A
          0024DE0BF00EE11D27400DC6C74E767A29800622B0761F224ADA54A656E09D48
          C2124C708652FF1801C50B57C5195AFC6F94EE87124588C2C7CA4EF8C2532AAB
          C37042039AAA29EA161B68C200B2B7800D737344209E4CF565869A6989083D59
          56AB4B9DB17FF10303B04F1730C8403FAD0D0CE2889B6E6F3C684574E10503A4
          46174560C09486B11BFC1AFEF7C01F9002DC1082775CC00CAFA84045930F8258
          3840D37067040630C8032DC0A71444505C08F25E8A2010C1D47D17800F38179D
          28D821F8E84F3F818E178C676A3E55BE504060380FAB6EEC4CA7306F07507D91
          E4FC3FD51799B1642DD30E21F70C8C2180BBD022465711DDB60B4A703694F50B
          E622120A50040D281243B07B3464669C5556C33278BF5005CB4663EA57822668
          1728E006CF52FF097DF0590C040575C0021124004F9140DC01150F134AE18101
          49804162400467707DA5F0056EF004696006DC17046490010F0771B4307562E0
          7B273885543817CA030CBAB66B91D00BAA836CC3C054271755F9073B2C870059
          987FAED20B26875CC1F03A4CE43AC34600E6D000055844042173BC504820780C
          F1D373C9601139300311B80C339001ACB4135490053C20015B700521A12339C0
          0B53D0340FF055C0B0034F54859AB88938E104C4F70E4CF03707D4057D800033
          0005DD010263500595848ADE81381594043D884126C00344A0065F401FA75031
          A0F604249084FA8569A9E400E407002F600252C889CAB88CD8101805E832B033
          4C11103CD3A4FF0B338387FC775CBB60012AB76B8C378602D86424571D22E20B
          D0A87F08F863A3070CA5777BBE700234F01BF5340567C37AC6800234105F12B0
          87D270055BB01A2EE16A37B105E9222E32E04C626589BBB005F1F5008E361C06
          908CCC389114790C672702EFE037A455077D7003AFC0025F5238F9C151E7D115
          B268306E40041BA0055A4006DD773908D75A5A005BB1355B4D087187547EFC58
          913CD993C5C07E036843E7D30D5BC80B26177AC48000C3B6332F37864ED90EBB
          336CF4C70B330355E76833BD663CF3300C33406FB2A70B4D2004D2564EBC9047
          12D923EA860D3060256EF300357081D6507BB6C70BA59703C2B1038CC5001DA8
          0B2DF20047E7FF9380199895200234606D08C07602D0400DF42F893906634007
          73028B9BB008B2B81E3FC89241081F41B0998322034FD02733B9704110022B20
          8CA9E40374600900A00451F09082F99A3DA971DEC263BE638701D06B33C54CC7
          0086FFB72A4FF9946CB80BAFE37891270F02180F88B178EFF77925D70E45190C
          44C01ACEF4732E122CFCF807DC656FC3F0023C2003C5A7962B302C6759132460
          03386002AC87021950345F233560E63438C20B0BC166B0599F156906BBA50B70
          701F0BC4981E06628979085C90838F307D4B1005D51784DD47931CF40538B038
          81326A2CD60637595B61207B536003F1699F1CCA9381F13BB47333BE90725E68
          8EA4820CC369FF2D4DF99BCB444C3A353CC4909BD50800EBB03314B0A25B597F
          48290C73B0021E10124560252640052590473F5A5E67554852570C28400E1730
          88C910766DE387383104457003E45004D6D23C36103A3A62746BD0340C4035B2
          93031050711D9AA655580351F04679C061A924491B259972F783B8C87DA57006
          62A0386240060CBA4142C0059E54A1A9640568807A51C0756ABAA89AD885B844
          10E9B85404919500403BE3F80B01F80F47C9A29101A3BA2095C6E08616526CEE
          404339033BCF5909CE680C5283A600801206109F37105F3570053CE0368734AB
          0FF095CFF0026B000D3100040A1003320097D240093C409FBCD0222BE06A2700
          035720568B76FF037E24015C070610900150CAA8DC8A6F272005F47503617052
          0D5406285006CB975A1824042D491F7F5A932CC992A2A9050CE00A3E20A87DE7
          0066900F6F60027FD9AD008B7E55C50DA1521994AA4BFB170CC2B553C8706B4E
          A60B5DC8A931C74BC795AA6D2822DFB02154A92908283381B1648E7A0CB7E18E
          005088E45509BB416F097690E3647AC64A0C406003D0909E3971340FA02552B8
          1B8805006BD090F0660321E0054AE0054D2301074534AF17B04A8B717E20050A
          E95983232720F02A28D07C00C305520084B988A75CBB627B077EB280AF10875B
          D5410338C0074B9BB6BF774BD64853C1C0040D803B144001CDA50B9BDA9BC8B0
          861E02869C8AFF3CDCA844C6B0B030BA0EBF939BC314727FEBB62BD318C72082
          2BF0ABBA803FE603005360A6C1F20042B0A133A00106A090CCD0025E1003B922
          0331A0A8D8A00064DAB86F5409345605F1B32356B40301B50B22006FEA222CF4
          262EE134AB0C50696AFBBBB1360362B06895809834B87C6A41386C50068CE902
          1A20845D1BBDAB90036D00A70EC005700A4261F04594D0500F05BCE06B7190A1
          29C9121033BA8DC3D67859C9639E8A0C40F6A9BF89B7346A7F285A21A58202DA
          B80B3E65795E2343C2D90E2F5B09ABB1B333E047F1189E592204A92B673A2201
          BEAB0C76066F066003AB6B0D8276021EA004156C6B608391EB64028575605C13
          331E60007B38FF032FB0053040023830021FA0014172251116362210BE360C69
          CF2606685B096F7A402C000533C0148C790820704932E81DEFF1AED11B5BAB80
          030F801D1B45A8F8E100564066E52505AE7AC35AFC6840890095B100875110BE
          B94CCC5909361700653C0C35F4B0923A86075094CAB500DB7A86A572944BB6B0
          3F1501C9C20F3B0394C7D0975FA9584AC303AEA6041FA03FC44196CD003D1E60
          C5D980004050B43BB99A9E7B8C373B0263927A0A869108500348400574A40BBB
          717AC2A00025700343F0033100352DB056BCBAC5B0DC5B3B20051B7A0156E00A
          81F3253138C4B1F02F9DC405A2B6C479E77D0F6052C8CB0552AC16B3601500F0
          69FF1ACBD0FCFF5BBD43005B489B0A5222BE640E0CEB0B673C955F28431E7295
          F290227F2BBFC510B1D76C09E2501A20A70B89EB5472D80D9E3153A59A0C34BC
          0B7D94253820901EB80245D2029C4BA5CB30020C0024CF6C0DCAB645BE50025E
          3002195003342697BB870279F400E2E30BA5673FCCB01ACA1ACD1E1D530D55C3
          9680009044836CA000CC6B2856BB161E76BDAF25CCC34C020CF0410C640471D0
          051174AFA6190B61B03195D0023940BC1F3DD497E5C7CA650E56AC726C6CBE17
          DB2ACD9019ADB3A9B03318BA14A9C1E0326C0C00E35B2A0121877488CD308753
          7E8C0C54E0CA462304A61B23259C0182408F0C00B9CBD00232F0021CC1CFD6D0
          042200032250FF4FF8182C3670745D45033D870022400426F0CA5317249E7B03
          223002348066C180046BA575445DD9B2F45E8DC297B79C981074C41685BCC947
          38975401F7BA7D30CDC403100233DD619A840274D01DD7BBD387705BF9F00358
          B0A1969DDB0A45CFD632012CA7959DBA330741CD4DDD0E945ACA4B994BD0752B
          BD640ED8180C03AB29AA228766AC43451609FB2044F2CBDBCC60353BFB0B4D90
          4F7F6025FFB11A8DBC1C79E60B7FB0561AD8593F5D1DB9D057BE800252136195
          30575862DFC01036DFADDBFEAD42578005E7A79A539014BE5C080DD4051720C4
          C9D7056CC004713006CD77BD64A1C4A7BD8B034004AB7D08A919072B8D082E90
          BD6A61054797FF8242F0DCFF9DE228C4B6260A5D3D245C971ADDDC60D5DFBC53
          47591A7F7B00978AA9C204559EB212DD38876634010DB0000BD000BB337FCD70
          2C0F90D6BB703D26F00FAB01019698473C10C07B31055BB0067BA80088FD0BBB
          6103F9A00462EA0136608FF664D62ABEE6272402B8A09A7E238C200900282038
          83330692B0D2D7CB03D07BE197F3053C40A10DFEC31F0EE287E20361F40F2780
          057BC9E68EEE3F360755B499D5D5CD0E75582E3E95B0CB309CE4603B9250D5CA
          F0CEFD104F1780CE9D7A0E67D4850480E2C42013242B3BF71D2CBBA7007964B4
          0050029C2BD46772028A1C0C922B7B08403EECC54E009005515258CF630022FD
          E8CC2E3A9470FF05524013EA04006CB0D983530671C0BC6AD1055D20E1B3ED02
          365077162ECC159303C54C832B7D8301EA1DC94CDBCE56B20783E6CD3EEFA3C3
          E2FADB2A5A85D5C64079A4B1AD3C436C002155586E09384AE39C41649A670E1B
          823C3937E3CF3003259CC560F001BB27134D9E23C132025F42E611092076150C
          43400261A24675F403E2726E51A4BBBA005F2BDB44BD71D0F41EF3F522E55230
          26EF4E07D64EC4465CE807D47C0C04151AF08BE38EA79C49021A20B64BC1CBB1
          70AF84AAAF64F60E358005C82EF3544F379BFA3B5E5C5CEEEC530B6201C7DDC6
          B063F00A1B21E0AC0C67B8CDBFD04BA132DC289079CB854B33130DB7A1ADBBB0
          1A0C104E0A40FF3E810803E3E501AC74022BB0029E9B1C7D6502387001754B05
          52232E5E70463B105F7BB81AB7072E97CB2C1B1AEC1D5FF59A0F320D25045F32
          094731AEC96751A42F27B0CD051C20EE171E1F676002E7FE610EEEDA001A6221
          24B687E00022A049D37E051EF0BD9BFFFB219320AB8E4CE2F064FC4E5399E1D5
          C2A094C29318CC9043940E1DC7CF4CF1F4333DD4D55A8DF09D1A2A36B7E3D041
          3EE266B276090054E04719109E108003BEBB100F90C57B8100A27BB31930C994
          2B36208F3DBD60351E50045B00081F0606195343120624008B35061F0A8B9192
          939495969798999A9B9C9D9E9FA0A1A2A3A4A5A6A7A8A9AAABACADAEAFB0933B
          126F0800B600FF60610E02BDBEBF02152CC0C00E2050BF2E1A4467414103D0D1
          D2D3D4D4CE6744125CBCBE508B4820C420E1C55C3EBF0E6675B7904851512DB7
          B1F3F4F5F6F7F8F9FAFBFCFDFEFFA498100840F0402427030D46A23090A04302
          17163874B8401385031309125800C9DE8286130F50B0D85061A40801080C6CB0
          2802468211248134794AC983073724D94CB4480404080618C088842427801806
          1E4C01D8A98A8941342E5CAA41620A0EA9958630E04969C74F060F0699880720
          87811ADF18ACD8C2B4ADDBB770E3CA9D4BB7EE5B5C35B00C9504C60A3762152A
          80280322B038105DD8B028DCCB818B0CCC0638AB46B9DAB33321347071218E0D
          9B2EC0C69519FF330E980BCE8DCDB001A0C0D60C1152FCD89D4DBBB6EDDBB873
          EB6E85D2E1C84518155ECCA891496F820D2CACDC1401E4C3031170B972E95C23
          4B4DCA2712B020A9374D04032B4692A891BB2A12064648070024E90E1961218C
          7821098784228B64B8B76D9F81A24B5821D0D1247F6C15C2253E0D028108914C
          B1024E8B08610083BB5568E1851866A8E186A3F04102163F2C82CB0B7E11134C
          177520304317150036466B8A15A38C095A7C21D964954933D9175AF0A0196786
          FD328E302DFA32D82D8411B399033E1831838800A02002164B21B01E875866A9
          E5965C7699CF4B2975941D016066740024602A2411019D34509D46074CE0442A
          4E4C70C09B29FF2D70A525E01147C0752DA584157034593011A0A95C90C15992
          20304252403D00C42435AC905E24FA3D10E26C08D4D0C20B30ECC9C90E611D18
          0902604C0283093C9C00401353FC80080D8BFC6080046878A9EBAEBCF6EAAB97
          524AE02A6BB6B460860F7FF952C16A6814294E6BA099E8181719E0A0C519363A
          A3EDB63B9EA105111930B00D372C20F38BB3CEF6C2026BC310E303176940B15E
          B0210EF8EBBDF8E6ABEFBE4C5D30D349C43D1413000851041C7213B489674A1B
          4560DE271744B0C09D01A78468261444B400792149871201BF51D2A746AE6C01
          0103F845F202228EA42AC909613DB0832431FC140387546C3A891796CA208994
          2BDC5CC90C36FFAC00D4075500B03204C3F2EBF4D350472DB5267188E0C15EAD
          0110071CBB0053C11850B068A200E5969B2E318E2993030F4490A0C5DB6778FB
          76083CD890C1927F81C0421975B0D0EED8DDF8FD373A440C618B9500A03165D3
          A24EEDF8E39047BE6503130D0CC0452091693900131C0A407629057000139D50
          5731C3642ED04004135040810516B81E410313ABB470419B67828044E25D5E1D
          C891742E3A999380B9DD2BE8E5602F0C2B883068248B3EB09724CC4FD8F86D2D
          9C2044063050210909364F42457C9352B2457C362071CB53B44AEEFEFBF0C73F
          1B0A216081166B1D5D41C439CAB6281860C1E84590BC568CB49D4603084CE069
          5CE08064296BFF0C8B4812E00458A4010A804946C8953C0050023748A169F2B8
          9EFC4648C2129A5015C67BD8E722C0BA394D82720E8909791A00C33F79820913
          3B5DC56E57B10370C4130C2148EF585326E44402860118E2710270B155284010
          FF598402522689221CC2004498C49300B083AD8C051FF64285026800941CD007
          0055E0415074F6B2AD40C067935000154E00868EB42703CF3BA11EF7C8C73E62
          E20D1208C1935A0389AD756D8202D01B22D575B6B125CB82A199811306A7AC45
          F6C207567099023A52842848210B2212A11F4749CA524A4E0199BB9E057C680B
          8E052026CB29D31039618106504C87B8CC089992038AE63CC4854724CE015C98
          104904B120F3FF28C2032030334B8CF12696A2507E3CB086451461511218823D
          8A3002198812146058A6D094B0280D28E112537063142D318407ACC065A68CA7
          3CE7A9AFC32D020E58E0811CA4888B221CCB8146420C61C80118C1B0A1308D24
          2831FC06B8C51CE36C1510DB041D10063B94408A52848314C4209B53D1F3A320
          0DE9AE8487CC4A8C0912AE4C180562824482246C1414B0A54A72A9CBD4852C14
          A02B481E8F2930971CE061234B09E9E60183A0784F6422180403B622BD45D4CC
          111D99811A25F5CD5334C103705445167E708510C5202C5F8C84026060AF2CB8
          D154956802228426D2B6BAF5ADBB518209A4F0035C74840979D81F404130065B
          948192CA8202FF1B10800689FEA20B0A0DC631D850822E0036809015E062A1C0
          82465E300C46300AE200D0820F85E0A21B84AB68474B5AB9B4B489C7144F4A17
          62A683E4EE13029A00ED267680DADA76630D980013AA8A096052C04C61044011
          35B29E32BD941E49FD401E9516960CDCE0068FD254A5820242F6846504468185
          024AB0C5569440422B2081BD9AF0A8750240098858502514F0281C94F6BDF08D
          2F3E4A20020988407D5A84821590151A5B986B6CCB02401DD2258C2E20800E8B
          391704014007CB020E0A71600D14CEC62433C8614F59880216EC201DDECAF7C3
          200EF126CA94BB971C4FB80FF94DC14072DCE0DC542E08B8D3C38A383A4AB849
          3BC705802B9BFF080B1498C5BD93B80250848682A7B833286CA104183C1014B6
          E6C60B5BF140922301060D1800022BA8EE1A5846832B253503DD15B198C74CE6
          464142013F908214E0C087502EA2047028912FCA5659020A700C5D687068D681
          823AFF820571C0C36327688517B1215D151EC2502581043378C00D1DF5689927
          4D693107157800135D24321789E03C643C0FF9A15C26D01002BCF4B7CE39C09E
          789AE396D2A41E2BE34A2466B0281BA0408A8B3A59332B71011158CA0673C0CD
          151E050122244D1235080B588292DD45DC80C906E0C180DA83B24A5BFBDAF1BD
          C1947060387EB2060971E62F392C280C6585E37FC018030A0EBDD0713C963126
          12C631C85161FF28548190B868010C3C5983087B18DB000F7829737AE283B189
          731351ADE8C0A470332D20028B668A2B85081C328524B8C2DBDC1287A98F9DDC
          2F1259088B102091ECA02C251373100404687046BBD0D7521998F2222E4004A0
          98B30647CBE30B983C02ACFC00020F90B9C0874E743FDA75071A0E017ED78304
          3BEC17A081D91B4227580128E82DB1906DA40F280BE00A32890853E8EE80B220
          060F88A0D9454FBBDA47F9DB870C2A3B3E4C25003E764C88A0583BD019089972
          AC0F1A12F14DC334540E1DF26ACED9F024995BAE3D4E00F4EA568F075FDDCF26
          141003443040E97429810CB6C200190053444F494F13164183410059122F10C1
          16430E81E9ADFFFDF5B0771C2E360B8019C4400A58880168D753023B1CD248EA
          46401D264CF54A5AB2C075F8CCA02F88C93CF4418A03D29F07C4707228C5FEFA
          D88FDC120930209E16E77303912DE1519CB997B674232F9E87136EFCCA45ACDF
          4FC35140990AFF3C9E629A1F350BBAAAE223F94E204104CA86796F5102248008
          0FC07296001F2230203E76654E36094AB01559957D145881FC72032420055160
          5195800446B05F42423A63507C96146F108400796059146505F626325790811B
          186616388334882FE7074C38643B3FD427150112B6343C06B308AE546A0BA078
          ADE07D80B22619211106317F17202AA4F6107CB70FFAC100F0542B31B36B9F40
          053410334470FF85FDA00422E04638504D9800860040054C2574D6B415D25483
          7018875B228658B0811A145A2FF0810D94486063580BE5607F66595030038AE1
          404C92043BD05DD2818175A87B72F88890B825431846C5A5696DC7304C643CC0
          943914C031041071B0307196131CBF730105F310A63609DE3785FC1002410186
          30202CA5700344B0152B60035E307AFA500230503441410354040AA4722B2D67
          4D88F08691988CCAC82991207D51700232B8086CC0353E6018F0E63515F05791
          858D72300C0436618AE40B4C62056127690080046F800552100377F86FCBF88E
          F0D80F43B85C08E01229C11DA2D85296B37107A36989421D3A681E86921103A3
          1CA64663ACE1FF1C05877095F31649C500C12609C7660A9A076D0CC00330108D
          AE80023F80035B712B24805FA420036534285B6600A7178F2AB992FE60575940
          0358200670B04502A232710650CAB2370A8002748075C1C0026CA00071401A00
          D618D538058AF7026FA0666F209288E38E2C199552990A43A8423A6630979630
          FFD26913F11B30C48AA0504B14633B9E030064A91103D3396C5295008044B3B4
          44010096FEF090D5C70A17B00342F0910C600235700546480A2850045E20042C
          B397D0980A12B2808B00065BD16553F99890490F289007B02106304016B77038
          E026672E1225CBF7359E39513E600648E966CEB69451F006C5782A501999AEF9
          9A9730843936FF1C9A761CA95826213390243373C46309B4855B2C3401C2A942
          BA49324E204B28F6115228849A1685C8B4262F767EAFD516E8A129B1D0043090
          970AE2014200045BD002C1C5090AD0025910033CE00196121423E005AB790AD9
          D3206E089BF2399FA5A0004340031E10053FD011BC779300D5056340948003A0
          633068891661EC10094D908E58A09A93D09AF419A1F2298A93D01C4DA8112341
          52492409AEC452041013D7335CDA21094CC07E0491344115002BF54A1AAAA207
          53114C606216E012943084D3E916FA1134F450052740031F101657F6001A3002
          3400043070025970054570032FF00254500457900527000340400426E001CB34
          080F900134F0FF0398090B30502A123AA6649A090A90073069023FD08E91D002
          E1762EE7E69392A558EE329A7FA07837B094522003EDB91E105AA6800A8F2DB5
          A194D0769FB80899632FCEB131149709B2A49C294109C5A910DB0700CDA91D23
          1144030343B30400318A63B3517268350F0840053B400242E0016A31080A7213
          4BB554370114ACFA201A600221700237109EAE40922B503E81FAAB808A022FB9
          511C687DAFF2A688E467805361793028D2E107249003A9D99EC05AAD65EA9C05
          F179007001B5E5040AB04A65B90883FA105659099E281541747093207766D995
          7762A21A91301FD30099FA53AAA890E53A175D146D13790F253004542A023860
          0236F0011970FFB019F00136600238200232000359A08BF880023890146C64AD
          18FB9A2E4904F969071A096EBF070C613018E7262DE99007B7460937503F52E0
          A0C69AB1303B9FD89A12AC2810BA543C29F612855709C683151FB1B3FA28AE21
          C1313E04AA695209F07A26B7A1044C960157001002B29317800259F30F372008
          12004A31BBB590B91E4A4004750803ED880B1E18B2C13006ABC1063DE92E5690
          882FCB88EB2892E6C8B5743B959F9A7094207F1971539718A96D2797929042DB
          0A3BA0C89BE3473099F331C736A883777F528490B951028FC200170B3527B015
          E953B79AAB927BC20743001B515003BB57B57460060E5401B972018945514640
          16B4A70421A0FF813120B72FBBB9B6AB921367AF936027DF076A316478EAEAA8
          9F66960B89B31AD111C6A5121C5A539D3AB387B71BE0630034A091F9222540A1
          98B79BBDCB7825B05B8776A041555B0746C03F02540674300688660579000902
          D24FF5130531D072B4F7A7DA5BBFAF07AF1B81B4E1275689BA08AEC309C6439B
          BADA9665B944BCDB7DCF7101A0B83BBA04B8B5F1035B9101DAE4344A20084261
          BF181C8F7E6035FA99B221040587541AA5D1185690139B840B04A88EA29BC12C
          BC92395510E55A4BB8704B8D3A770D50B8958027C19BB75BC96A28D13B6BB200
          38EC4B17A7212FF014E135C0BA82004010163680762D1CC571789F317902FCC9
          1A7960B6E268FF06F4B15925A0A74D29C562FC8E1397448DE37DED47C0849A09
          996362C2EB10DC718A0170016D77002C1153E109AEDAC16316C2C461F1017F80
          2F6060160F205E637CC870C8075980035240044BB7497D41BE5BBC1A553B059E
          E4B2A185C89A3C8368FCBC93504B33952732BA09FFB22699A0A1E251129F73B8
          95E004904A78F99A215760035726025FEA2533100296F20168B8C9BE1C7B6826
          0539A04D350900571006C5A00EF8C3088F168CBFFCCC1658C6A9680916F0CA35
          CCC6E387103BDB289CB6620943397FA2ABF06A315E820031B0151250034AAC21
          B1981432B0CED01CCF65262A2F200658302C9B040059CC0D0E40041785382860
          06B43020F42BFFCF062D62B41912808B3942357920211E0A2C4AAE3496C7957E
          470478DACA2554800347A38558B205B40C014200C5075DD2D6261D25002E9B72
          383B700E0E6005940C0955302576C0BE267DD36B37CEA273A327C1D37184B715
          D7A99230A87F224A08A0D371722F5B6016F2A1B51B0206427034D585D3543D69
          8893CB1280355602072FDDC5B65007F8392CB457D5648D6DD66C1DA78002402D
          3C426DB82AB100163D0911F1269EFC2B0AE0054C060126E0D41602063C6029E9
          ECC1653DD865A60021E00120A40027704EF2A000569307841DD90037D77E2212
          A3101121C104CE2997C7B9000EBC087642D77CFC2B285079833002956B1B2760
          024021014040FFBD921DDBF025255840CCF67238E998DAB2BDDB2116A378E243
          7F7909C3E51CB1DC099DA8C3A39D2FB6076D1910BFB6D104359001360704FDCA
          DBD64D5AB680068C6CC29460071E6007D71DDE62968301A312F45A3AB4655BB6
          A312103A01672D3005CD2563950340C100383005F0DC0F0AF0926EF4015E10DC
          E21DE0205502EF7051F6320BDE9499B52BE00CDE563F58DE7B97DF74623AE59D
          D4F0B3C81FE9012430C16E010632E00191C2035310DF0D5EE2EE733890700352
          4003827D052BDE66261EE3A3B54AB7F3D61110D7A58000317527355E8425F402
          35F0A357960122F09DFD50059F9B0196B2021F10034725E3505E4AB3B7083B80
          05BE8A066220FF06BB17E55C1E52F548C310BE4B377E01127E0B4E103B12C3E3
          B8847E7DB40624F001B2CA004210037350E639AE0435C0032C03011910028CDD
          E5806E74C886D8B74004B111E8881E52149E4BB6635BB5B531E95D5BEB4D530B
          87E32734454060031FB90212300224700245D00224BE082D5004EF610212909E
          0C600332B006769EE8B02E397D0093784EE8B17EEBF2D489604EE9BCEE27BB54
          DCA454022710023900A45726016B430235B00357D00455CB27DBB5063BE00524
          80033990EAACFA001F10023F20B1B8FEED27D4414C09EEE46E4A3BBEEBBD7E3A
          6462C7C04E4F0850055900043CF0011220AB57F6200C20011EA0B03630022360
          0305EB011200851646C3AA2793013C2003DFF9EAE5DEF04E630B7E80056E60D3
          0BEEF0160F3F0A1031B445963C843AA9935B4E30EAC17E053B1003746303AA0A
          16D0B4022C7F130FB0541E60033C200231B0D8DE7EF1381F3F4540BB39DFF37A
          E404742C9C13C042C1D93A556001387C6D08800225F00250AA044AA0A4545002
          4FE8F3567FF5589FF5A11008003B}
        Stretch = True
      end
    end
    object QRSubDetail1: TQRSubDetail
      Left = 38
      Top = 768
      Width = 737
      Height = 755
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = True
      Size.Values = (
        1997.604166666667000000
        1949.979166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QuickRep1
      PrintBefore = False
      PrintIfEmpty = True
      object QRShape20: TQRShape
        Left = 28
        Top = 8
        Width = 1026
        Height = 722
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1910.291666666667000000
          74.083333333333340000
          21.166666666666670000
          2714.625000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape15: TQRShape
        Left = 456
        Top = 649
        Width = 590
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          1206.500000000000000000
          1717.145833333333000000
          1561.041666666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape14: TQRShape
        Left = 456
        Top = 620
        Width = 590
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          1206.500000000000000000
          1640.416666666667000000
          1561.041666666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape13: TQRShape
        Left = 456
        Top = 591
        Width = 590
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          1206.500000000000000000
          1563.687500000000000000
          1561.041666666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape12: TQRShape
        Left = 456
        Top = 562
        Width = 590
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          1206.500000000000000000
          1486.958333333333000000
          1561.041666666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape11: TQRShape
        Left = 456
        Top = 533
        Width = 590
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          1206.500000000000000000
          1410.229166666667000000
          1561.041666666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape10: TQRShape
        Left = 456
        Top = 504
        Width = 590
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          1206.500000000000000000
          1333.500000000000000000
          1561.041666666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape9: TQRShape
        Left = 456
        Top = 376
        Width = 590
        Height = 41
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          108.479166666666700000
          1206.500000000000000000
          994.833333333333400000
          1561.041666666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape8: TQRShape
        Left = 456
        Top = 336
        Width = 590
        Height = 41
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          108.479166666666700000
          1206.500000000000000000
          889.000000000000000000
          1561.041666666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape7: TQRShape
        Left = 456
        Top = 272
        Width = 590
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          171.979166666666700000
          1206.500000000000000000
          719.666666666666800000
          1561.041666666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape6: TQRShape
        Left = 456
        Top = 240
        Width = 590
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          1206.500000000000000000
          635.000000000000000000
          1561.041666666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape5: TQRShape
        Left = 442
        Top = 168
        Width = 152
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1169.458333333333000000
          444.500000000000000000
          402.166666666666600000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape4: TQRShape
        Left = 594
        Top = 88
        Width = 460
        Height = 81
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          214.312500000000000000
          1571.625000000000000000
          232.833333333333400000
          1217.083333333333000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape3: TQRShape
        Left = 594
        Top = 49
        Width = 459
        Height = 39
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          103.187500000000000000
          1571.625000000000000000
          129.645833333333300000
          1214.437500000000000000)
        Shape = qrsRightAndLeft
        VertAdjust = 0
      end
      object QRShape19: TQRShape
        Left = 816
        Top = 240
        Width = 1
        Height = 176
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          465.666666666666700000
          2159.000000000000000000
          635.000000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape18: TQRShape
        Left = 944
        Top = 240
        Width = 1
        Height = 176
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          465.666666666666700000
          2497.666666666667000000
          635.000000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape17: TQRShape
        Left = 944
        Top = 504
        Width = 1
        Height = 175
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          463.020833333333400000
          2497.666666666667000000
          1333.500000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape16: TQRShape
        Left = 816
        Top = 504
        Width = 1
        Height = 175
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          463.020833333333400000
          2159.000000000000000000
          1333.500000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRMemo4: TQRMemo
        Left = 504
        Top = 289
        Width = 75
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666680000
          1333.500000000000000000
          764.645833333333400000
          198.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'BASE NACIONAL COMUM - LEI N'#186' 9394/96'
          'E PARTE DIVERSIFICADA')
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRMemo3: TQRMemo
        Left = 456
        Top = 19
        Width = 140
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1206.500000000000000000
          50.270833333333330000
          370.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          '2. DADOS RELATIVOS AO ________________________________')
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 11
      end
      object QRMemo2: TQRMemo
        Left = 41
        Top = 11
        Width = 71
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666680000
          108.479166666666700000
          29.104166666666670000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          '1. ESPA'#199'O RESERVADO AO'
          '    REGISTRO DO CERTIFICADO')
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 11
      end
      object QRMemo_Reg: TQRMemo
        Left = 64
        Top = 73
        Width = 102
        Height = 56
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          148.166666666666700000
          169.333333333333300000
          193.145833333333300000
          269.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'O PRESENTE CERTIFICADO FOI'
          'REGISTRADO SOB O N'#186' ______________'
          #192'S FLS. ______________ DO LIVRO N'#186' ______________')
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabelDateReg: TQRLabel
        Left = 120
        Top = 261
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          317.500000000000000000
          690.562500000000000000
          179.916666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DATA:      ______/______/__________'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel37: TQRLabel
        Left = 120
        Top = 357
        Width = 86
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          317.500000000000000000
          944.562500000000000000
          227.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ASSINATURA: ___________________________'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel35: TQRLabel
        Left = 150
        Top = 197
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          396.875000000000000000
          521.229166666666700000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'SECRETARIA DE EDUCA'#199#195'O'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel34: TQRLabel
        Left = 150
        Top = 149
        Width = 15
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          396.875000000000000000
          394.229166666666700000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ESCOLA'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel33: TQRLabel
        Left = 64
        Top = 141
        Width = 15
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          169.333333333333300000
          373.062500000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #211'RG'#195'O:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel32: TQRLabel
        Left = 503
        Top = 390
        Width = 26
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1330.854166666667000000
          1031.875000000000000000
          68.791666666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'TOTAL GERAL'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel31: TQRLabel
        Left = 503
        Top = 350
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1330.854166666667000000
          926.041666666666800000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'PROFISSIONALIZA'#199#195'O'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel30: TQRLabel
        Left = 964
        Top = 248
        Width = 20
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2550.583333333333000000
          656.166666666666800000
          52.916666666666660000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CR'#201'DITOS'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel29: TQRLabel
        Left = 831
        Top = 248
        Width = 31
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2198.687500000000000000
          656.166666666666800000
          82.020833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CARGA HOR'#193'RIA'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel28: TQRLabel
        Left = 607
        Top = 248
        Width = 30
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1606.020833333333000000
          656.166666666666800000
          79.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ESPECIFICA'#199#195'O'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel27: TQRLabel
        Left = 607
        Top = 512
        Width = 24
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1606.020833333333000000
          1354.666666666667000000
          63.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DISCIPLINAS'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel26: TQRLabel
        Left = 831
        Top = 512
        Width = 31
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2198.687500000000000000
          1354.666666666667000000
          82.020833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CARGA HOR'#193'RIA'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel25: TQRLabel
        Left = 964
        Top = 512
        Width = 20
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2550.583333333333000000
          1354.666666666667000000
          52.916666666666660000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CR'#201'DITOS'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel24: TQRLabel
        Left = 456
        Top = 480
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1206.500000000000000000
          1270.000000000000000000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '2.3. Cr'#233'ditos para Profissionaliza'#231#227'o'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel23: TQRLabel
        Left = 456
        Top = 216
        Width = 143
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1206.500000000000000000
          571.500000000000000000
          378.354166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          '2.2. Curr'#237'culo do Ensino M'#233'dio, segundo a carga hor'#225'ria e/ou n'#250'm' +
          'ero de cr'#233'ditos'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel22: TQRLabel
        Left = 599
        Top = 143
        Width = 141
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1584.854166666667000000
          378.354166666666700000
          373.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #194'MBITO: ________________________________________________________'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel21: TQRLabel
        Left = 599
        Top = 103
        Width = 137
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1584.854166666667000000
          272.520833333333400000
          362.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'PARECER OU ATO N'#186' _____________________ DI'#193'RIO OFICIAL _________'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel20: TQRLabel
        Left = 599
        Top = 61
        Width = 14
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1584.854166666667000000
          161.395833333333300000
          37.041666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'T'#205'TULO:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel19: TQRLabel
        Left = 456
        Top = 56
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1206.500000000000000000
          148.166666666666700000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '2.1. Habilita'#231#227'o'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRECC_Check2: TQRECC_Check
        Left = 120
        Top = 187
        Width = 25
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333340000
          317.500000000000000000
          494.770833333333400000
          66.145833333333340000)
        Checked = False
      end
      object QRECC_Check1: TQRECC_Check
        Left = 120
        Top = 139
        Width = 25
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333340000
          317.500000000000000000
          367.770833333333400000
          66.145833333333340000)
        Checked = True
      end
      object QRShape1: TQRShape
        Left = 28
        Top = 48
        Width = 1026
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          74.083333333333340000
          127.000000000000000000
          2714.625000000000000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape2: TQRShape
        Left = 442
        Top = 8
        Width = 1
        Height = 722
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1910.291666666667000000
          1169.458333333333000000
          21.166666666666670000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
    end
  end
end
