object FrmRelBoletim: TFrmRelBoletim
  Left = 208
  Top = 105
  Caption = 'Pr'#233'-visualiza'#231#227'o de Impress'#227'o'
  ClientHeight = 466
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
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    BeforePrint = QuickRep1BeforePrint
    DataSet = FrmImpressaoBoletim.IBQuery_BolImpressao
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
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      80.000000000000000000
      2970.000000000000000000
      85.000000000000000000
      2100.000000000000000000
      80.000000000000000000
      80.000000000000000000
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
      Left = 30
      Top = 32
      Width = 734
      Height = 156
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
      ForceNewPage = True
      Size.Values = (
        412.750000000000000000
        1942.041666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRShape39: TQRShape
        Left = 0
        Top = 0
        Width = 733
        Height = 160
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Width = 0
        Size.Values = (
          423.333333333333300000
          0.000000000000000000
          0.000000000000000000
          1939.395833333333000000)
        Pen.Width = 6
        Shape = qrsRectangle
        RoundFactor = 0.070000000298023220
        VertAdjust = 0
      end
      object QRShape3: TQRRoundRect
        Left = 8
        Top = 88
        Width = 718
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333320000
          21.166666666666670000
          232.833333333333300000
          1899.708333333333000000)
        EllipseHeight = 15.000000000000000000
        EllipseWidth = 15.000000000000000000
      end
      object QRShape42: TQRRoundRect
        Left = 8
        Top = 42
        Width = 718
        Height = 42
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          111.125000000000000000
          21.166666666666670000
          111.125000000000000000
          1899.708333333333000000)
        EllipseHeight = 15.000000000000000000
        EllipseWidth = 15.000000000000000000
      end
      object QRShape1: TQRRoundRect
        Left = 8
        Top = 8
        Width = 168
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          21.166666666666670000
          21.166666666666670000
          444.500000000000000000)
        EllipseHeight = 15.000000000000000000
        EllipseWidth = 15.000000000000000000
      end
      object QRShape2: TQRRoundRect
        Left = 558
        Top = 8
        Width = 168
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          1476.375000000000000000
          21.166666666666670000
          444.500000000000000000)
        EllipseHeight = 15.000000000000000000
        EllipseWidth = 15.000000000000000000
      end
      object QRLabel8: TQRLabel
        Left = 520
        Top = 62
        Width = 49
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1375.833333333333000000
          164.041666666666700000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CPF N'#186':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 384
        Top = 92
        Width = 37
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1016.000000000000000000
          243.416666666666700000
          97.895833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Turno:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 13
        Top = 92
        Width = 39
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          34.395833333333330000
          243.416666666666700000
          103.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Curso:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 520
        Top = 44
        Width = 58
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1375.833333333333000000
          116.416666666666700000
          153.458333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Matr'#237'cula:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 13
        Top = 44
        Width = 53
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          34.395833333333330000
          116.416666666666700000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Aluno(a):'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel27: TQRLabel
        Left = 231
        Top = 92
        Width = 35
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          611.187500000000000000
          243.416666666666700000
          92.604166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'S'#233'rie:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 13
        Top = 62
        Width = 78
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          34.395833333333330000
          164.041666666666700000
          206.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Respons'#225'vel:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel_AL: TQRLabel
        Left = 567
        Top = 12
        Width = 100
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          1500.187500000000000000
          31.750000000000000000
          264.583333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Ano Letivo'
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
      object QRLabel13: TQRLabel
        Left = 19
        Top = 12
        Width = 147
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          50.270833333333330000
          31.750000000000000000
          388.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Boletim Escolar'
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
      object QRLabel10: TQRLabel
        Left = 480
        Top = 92
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1270.000000000000000000
          243.416666666666700000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Turma:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel1: TQRLabel
        Left = 573
        Top = 92
        Width = 39
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1516.062500000000000000
          243.416666666666700000
          103.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Etapa:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText9: TQRDBText
        Left = 56
        Top = 93
        Width = 169
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          148.166666666666700000
          246.062500000000000000
          447.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FrmImpressaoBoletim.IBQuery_BolImpressao
        DataField = 'CURSO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText8: TQRDBText
        Left = 582
        Top = 45
        Width = 138
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1539.875000000000000000
          119.062500000000000000
          365.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FrmImpressaoBoletim.IBQuery_BolImpressao
        DataField = 'MATRICULA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 96
        Top = 45
        Width = 420
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          254.000000000000000000
          119.062500000000000000
          1111.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FrmImpressaoBoletim.IBQuery_BolImpressao
        DataField = 'NOME_ALUNO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 582
        Top = 63
        Width = 138
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1539.875000000000000000
          166.687500000000000000
          365.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FrmImpressaoBoletim.IBQuery_BolImpressao
        DataField = 'CPF_RESP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText27: TQRDBText
        Left = 270
        Top = 93
        Width = 109
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          714.375000000000000000
          246.062500000000000000
          288.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FrmImpressaoBoletim.IBQuery_BolImpressao
        DataField = 'SERIE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 182
        Top = 6
        Width = 371
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          481.541666666666700000
          15.875000000000000000
          981.604166666666800000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Dm.IBDS_EMPRESA
        DataField = 'NOME_FANTASIA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 12
      end
      object QRDBText12: TQRDBText
        Left = 96
        Top = 63
        Width = 420
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          254.000000000000000000
          166.687500000000000000
          1111.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FrmImpressaoBoletim.IBQuery_BolImpressao
        DataField = 'NOME_RESP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText11: TQRDBText
        Left = 526
        Top = 93
        Width = 43
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1391.708333333333000000
          246.062500000000000000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FrmImpressaoBoletim.IBQuery_BolImpressao
        DataField = 'TURMA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText10: TQRDBText
        Left = 426
        Top = 93
        Width = 49
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1127.125000000000000000
          246.062500000000000000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FrmImpressaoBoletim.IBQuery_BolImpressao
        DataField = 'TURNO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 182
        Top = 23
        Width = 371
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          481.541666666666700000
          60.854166666666680000
          981.604166666666800000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Dm.IBDS_EMPRESA
        DataField = 'SLOGAN'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRShape5: TQRShape
        Left = 8
        Top = 123
        Width = 718
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          21.166666666666670000
          325.437500000000000000
          1899.708333333333000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape8: TQRShape
        Left = 267
        Top = 123
        Width = 36
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          706.437500000000000000
          325.437500000000000000
          95.250000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape6: TQRShape
        Left = 617
        Top = 123
        Width = 36
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          1632.479166666667000000
          325.437500000000000000
          95.250000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape9: TQRShape
        Left = 582
        Top = 123
        Width = 36
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          1539.875000000000000000
          325.437500000000000000
          95.250000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape10: TQRShape
        Left = 547
        Top = 123
        Width = 36
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          1447.270833333333000000
          325.437500000000000000
          95.250000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape11: TQRShape
        Left = 512
        Top = 123
        Width = 36
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          1354.666666666667000000
          325.437500000000000000
          95.250000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape12: TQRShape
        Left = 477
        Top = 123
        Width = 36
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          1262.062500000000000000
          325.437500000000000000
          95.250000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape14: TQRShape
        Left = 407
        Top = 123
        Width = 36
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          1076.854166666667000000
          325.437500000000000000
          95.250000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape16: TQRShape
        Left = 337
        Top = 123
        Width = 36
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          891.645833333333200000
          325.437500000000000000
          95.250000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel_Etapa1: TQRLabel
        Left = 617
        Top = 93
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1632.479166666667000000
          246.062500000000000000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Etapa'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape35: TQRShape
        Left = 197
        Top = 123
        Width = 36
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          521.229166666666700000
          325.437500000000000000
          95.250000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRM_Mes1: TQRMemo
        Left = 198
        Top = 124
        Width = 34
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.020833333333320000
          523.875000000000000000
          328.083333333333300000
          89.958333333333320000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Lines.Strings = (
          '1'#170' Etp.'
          'Mar')
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRM_Mes2: TQRMemo
        Left = 233
        Top = 124
        Width = 34
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.020833333333320000
          616.479166666666800000
          328.083333333333300000
          89.958333333333320000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Lines.Strings = (
          '1'#170' Etp.'
          'Abr')
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRM_M1Etp: TQRMemo
        Left = 268
        Top = 124
        Width = 34
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.020833333333320000
          709.083333333333200000
          328.083333333333300000
          89.958333333333320000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Lines.Strings = (
          'M'#233'dia'
          '1'#170' Etp.')
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRM_R1Etp: TQRMemo
        Left = 303
        Top = 124
        Width = 34
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.020833333333320000
          801.687500000000000000
          328.083333333333300000
          89.958333333333320000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Lines.Strings = (
          'Rec.'
          '1'#170' Etp.')
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRM_M2Etp: TQRMemo
        Left = 338
        Top = 124
        Width = 34
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.020833333333320000
          894.291666666666800000
          328.083333333333300000
          89.958333333333320000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Lines.Strings = (
          'M'#233'dia'
          '2'#170' Etp.')
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRM_R2Etp: TQRMemo
        Left = 373
        Top = 124
        Width = 34
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.020833333333320000
          986.895833333333200000
          328.083333333333300000
          89.958333333333320000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Lines.Strings = (
          'Rec.'
          '2'#170' Etp.')
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRM_M3Etp: TQRMemo
        Left = 408
        Top = 124
        Width = 34
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.020833333333330000
          1079.500000000000000000
          328.083333333333300000
          89.958333333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Lines.Strings = (
          'M'#233'dia'
          '3'#170' Etp.')
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRM_R3Etp: TQRMemo
        Left = 443
        Top = 124
        Width = 34
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.020833333333320000
          1172.104166666667000000
          328.083333333333300000
          89.958333333333320000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Lines.Strings = (
          'Rec.'
          '3'#170' Etp.')
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRM_M4Etp: TQRMemo
        Left = 478
        Top = 124
        Width = 34
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.020833333333320000
          1264.708333333333000000
          328.083333333333300000
          89.958333333333320000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Lines.Strings = (
          'M'#233'dia'
          '4'#170' Etp.')
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRM_R4Etp: TQRMemo
        Left = 513
        Top = 124
        Width = 34
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.020833333333320000
          1357.312500000000000000
          328.083333333333300000
          89.958333333333320000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Lines.Strings = (
          'Rec.'
          '4'#170' Etp.')
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRM_Provao: TQRMemo
        Left = 548
        Top = 124
        Width = 34
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.020833333333320000
          1449.916666666667000000
          328.083333333333300000
          89.958333333333320000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Lines.Strings = (
          'Pro'
          'v'#227'o')
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRM_RFinal: TQRMemo
        Left = 583
        Top = 124
        Width = 34
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.020833333333320000
          1542.520833333333000000
          328.083333333333300000
          89.958333333333320000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Lines.Strings = (
          'Rec.'
          'Final')
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRM_MFinal: TQRMemo
        Left = 618
        Top = 124
        Width = 34
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.020833333333320000
          1635.125000000000000000
          328.083333333333300000
          89.958333333333320000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Lines.Strings = (
          'M'#233'dia'
          'Final')
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRM_ResultadoFinal: TQRMemo
        Left = 658
        Top = 124
        Width = 61
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.020833333333320000
          1740.958333333333000000
          328.083333333333300000
          161.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Lines.Strings = (
          'Resultado'
          'Final')
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel_Disciplina: TQRMemo
        Left = 13
        Top = 129
        Width = 180
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333320000
          34.395833333333330000
          341.312500000000000000
          476.250000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Lines.Strings = (
          'Disciplina')
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 12
      end
    end
    object QRSubDetail1: TQRSubDetail
      Left = 30
      Top = 188
      Width = 734
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Frame.Style = psInsideFrame
      AlignToBottom = False
      BeforePrint = QRSubDetail1BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        52.916666666666670000
        1942.041666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QuickRep1
      DataSet = IBQuery_NotasBoletim
      FooterBand = SummaryBand1
      PrintBefore = False
      PrintIfEmpty = True
      object QRShape40: TQRShape
        Left = 0
        Top = -2
        Width = 733
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Frame.Width = 0
        Size.Values = (
          58.208333333333320000
          0.000000000000000000
          -5.291666666666667000
          1939.395833333333000000)
        Pen.Width = 6
        Shape = qrsRightAndLeft
        VertAdjust = 0
      end
      object QRShapeGray: TQRShape
        Left = 9
        Top = 0
        Width = 718
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          58.208333333333340000
          23.812500000000000000
          0.000000000000000000
          1899.708333333333000000)
        Brush.Color = 14737632
        Pen.Style = psClear
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape18: TQRShape
        Left = 267
        Top = -1
        Width = 1
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          706.437500000000000000
          -2.645833333333333000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape19: TQRShape
        Left = 302
        Top = -1
        Width = 1
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          799.041666666666800000
          -2.645833333333333000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape20: TQRShape
        Left = 372
        Top = -1
        Width = 1
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          984.250000000000000000
          -2.645833333333333000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape21: TQRShape
        Left = 337
        Top = -1
        Width = 1
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          891.645833333333300000
          -2.645833333333333000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape22: TQRShape
        Left = 407
        Top = -1
        Width = 1
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          1076.854166666667000000
          -2.645833333333333000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape23: TQRShape
        Left = 442
        Top = -1
        Width = 1
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          1169.458333333333000000
          -2.645833333333333000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape24: TQRShape
        Left = 477
        Top = -1
        Width = 1
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          1262.062500000000000000
          -2.645833333333333000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape25: TQRShape
        Left = 512
        Top = -1
        Width = 1
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          1354.666666666667000000
          -2.645833333333333000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape26: TQRShape
        Left = 547
        Top = -1
        Width = 1
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          1447.270833333333000000
          -2.645833333333333000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape27: TQRShape
        Left = 582
        Top = -1
        Width = 1
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          1539.875000000000000000
          -2.645833333333333000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape28: TQRShape
        Left = 617
        Top = -1
        Width = 1
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          1632.479166666667000000
          -2.645833333333333000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape29: TQRShape
        Left = 652
        Top = -1
        Width = 1
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          1725.083333333333000000
          -2.645833333333333000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape31: TQRShape
        Left = 8
        Top = -1
        Width = 1
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          21.166666666666670000
          -2.645833333333333000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape32: TQRShape
        Left = 725
        Top = -1
        Width = 1
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          1918.229166666667000000
          -2.645833333333333000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape37: TQRShape
        Left = 197
        Top = -1
        Width = 1
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          521.229166666666700000
          -2.645833333333333000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape38: TQRShape
        Left = 232
        Top = -1
        Width = 1
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          613.833333333333200000
          -2.645833333333333000
          2.645833333333333000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRDBT_Disciplina: TQRDBText
        Left = 10
        Top = 3
        Width = 186
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          26.458333333333330000
          7.937500000000000000
          492.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = IBQuery_NotasBoletim
        DataField = 'DISCIPLINA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBT_M1Etp: TQRDBText
        Left = 268
        Top = 3
        Width = 34
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          709.083333333333200000
          7.937500000000000000
          89.958333333333320000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = IBQuery_NotasBoletim
        DataField = 'ETAPA_1_M'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBT_R1Etp: TQRDBText
        Left = 303
        Top = 3
        Width = 34
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          801.687500000000000000
          7.937500000000000000
          89.958333333333320000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = IBQuery_NotasBoletim
        DataField = 'ETAPA_1_R'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBT_M2Etp: TQRDBText
        Left = 338
        Top = 3
        Width = 34
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          894.291666666666800000
          7.937500000000000000
          89.958333333333320000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = IBQuery_NotasBoletim
        DataField = 'ETAPA_2_M'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBT_R2Etp: TQRDBText
        Left = 373
        Top = 3
        Width = 34
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          986.895833333333200000
          7.937500000000000000
          89.958333333333320000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = IBQuery_NotasBoletim
        DataField = 'ETAPA_2_R'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBT_M3Etp: TQRDBText
        Left = 408
        Top = 3
        Width = 34
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1079.500000000000000000
          7.937500000000000000
          89.958333333333320000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = IBQuery_NotasBoletim
        DataField = 'ETAPA_3_M'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBT_R3Etp: TQRDBText
        Left = 443
        Top = 3
        Width = 34
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1172.104166666667000000
          7.937500000000000000
          89.958333333333320000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = IBQuery_NotasBoletim
        DataField = 'ETAPA_3_R'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBT_M4Etp: TQRDBText
        Left = 478
        Top = 3
        Width = 34
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1264.708333333333000000
          7.937500000000000000
          89.958333333333320000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = IBQuery_NotasBoletim
        DataField = 'ETAPA_4_M'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBT_R4Etp: TQRDBText
        Left = 513
        Top = 3
        Width = 34
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1357.312500000000000000
          7.937500000000000000
          89.958333333333320000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = IBQuery_NotasBoletim
        DataField = 'ETAPA_4_R'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBT_Provao: TQRDBText
        Left = 548
        Top = 3
        Width = 34
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1449.916666666667000000
          7.937500000000000000
          89.958333333333320000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = IBQuery_NotasBoletim
        DataField = 'PROVAO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBT_RFinal: TQRDBText
        Left = 583
        Top = 3
        Width = 34
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1542.520833333333000000
          7.937500000000000000
          89.958333333333320000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = IBQuery_NotasBoletim
        DataField = 'PROVAO_R'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBT_MFinal: TQRDBText
        Left = 618
        Top = 3
        Width = 34
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1635.125000000000000000
          7.937500000000000000
          89.958333333333320000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = IBQuery_NotasBoletim
        DataField = 'MEDIA_FINAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBT_ResultadoFinal: TQRDBText
        Left = 653
        Top = 3
        Width = 72
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1727.729166666667000000
          7.937500000000000000
          190.500000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = IBQuery_NotasBoletim
        DataField = 'RESULTADO_FINAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBT_Mes1: TQRDBText
        Left = 198
        Top = 3
        Width = 34
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          523.875000000000000000
          7.937500000000000000
          89.958333333333320000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = IBQuery_NotasBoletim
        DataField = 'ETAPA_1_MAR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBT_1_AV3: TQRDBText
        Left = 233
        Top = 3
        Width = 34
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          616.479166666666800000
          7.937500000000000000
          89.958333333333320000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = IBQuery_NotasBoletim
        DataField = 'ETAPA_1_AV3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBT_Mes2: TQRDBText
        Left = 233
        Top = 3
        Width = 34
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          616.479166666666800000
          7.937500000000000000
          89.958333333333320000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = IBQuery_NotasBoletim
        DataField = 'ETAPA_1_ABR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
    end
    object SummaryBand1: TQRBand
      Left = 30
      Top = 208
      Width = 734
      Height = 449
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = SummaryBand1BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        1187.979166666667000000
        1942.041666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRShape33: TQRShape
        Left = 0
        Top = -2
        Width = 733
        Height = 85
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Frame.Width = 0
        Size.Values = (
          224.895833333333300000
          0.000000000000000000
          -5.291666666666667000
          1939.395833333333000000)
        Pen.Width = 6
        Shape = qrsRightAndLeft
        VertAdjust = 0
      end
      object QRRoundRect4: TQRRoundRect
        Left = 0
        Top = 153
        Width = 734
        Height = 251
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          664.104166666666800000
          0.000000000000000000
          404.812500000000000000
          1942.041666666667000000)
        Pen.Width = 2
        EllipseHeight = 15.000000000000000000
        EllipseWidth = 15.000000000000000000
      end
      object QRRoundRect6: TQRRoundRect
        Left = 8
        Top = 193
        Width = 355
        Height = 70
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          185.208333333333300000
          21.166666666666670000
          510.645833333333300000
          939.270833333333200000)
        EllipseHeight = 15.000000000000000000
        EllipseWidth = 15.000000000000000000
      end
      object QRRoundRect7: TQRRoundRect
        Left = 371
        Top = 193
        Width = 355
        Height = 70
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          185.208333333333300000
          981.604166666666800000
          510.645833333333300000
          939.270833333333200000)
        EllipseHeight = 15.000000000000000000
        EllipseWidth = 15.000000000000000000
      end
      object QRRoundRect8: TQRRoundRect
        Left = 8
        Top = 272
        Width = 718
        Height = 58
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          153.458333333333300000
          21.166666666666670000
          719.666666666666800000
          1899.708333333333000000)
        EllipseHeight = 15.000000000000000000
        EllipseWidth = 15.000000000000000000
      end
      object QRLabel9: TQRLabel
        Left = 13
        Top = 228
        Width = 18
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          34.395833333333330000
          603.250000000000000000
          47.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Pai:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText1: TQRDBText
        Left = 83
        Top = 228
        Width = 276
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          219.604166666666700000
          603.250000000000000000
          730.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FrmImpressaoBoletim.IBQuery_BolImpressao
        DataField = 'NOME_PAI'
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
      object QRLabel29: TQRLabel
        Left = 13
        Top = 244
        Width = 24
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          34.395833333333330000
          645.583333333333300000
          63.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'M'#227'e:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText28: TQRDBText
        Left = 83
        Top = 244
        Width = 276
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          219.604166666666700000
          645.583333333333200000
          730.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FrmImpressaoBoletim.IBQuery_BolImpressao
        DataField = 'NOME_MAE'
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
      object QRShape45: TQRShape
        Left = 32
        Top = 308
        Width = 300
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333330000
          84.666666666666680000
          814.916666666666800000
          793.750000000000000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape46: TQRShape
        Left = 400
        Top = 308
        Width = 300
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333330000
          1058.333333333333000000
          814.916666666666800000
          793.750000000000000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel30: TQRLabel
        Left = 150
        Top = 314
        Width = 64
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          396.875000000000000000
          830.791666666666700000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Respons'#225'vel'
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
      object QRLabel31: TQRLabel
        Left = 517
        Top = 314
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1367.895833333333000000
          830.791666666666700000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Secret'#225'rio(a)'
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
      object QRLabel32: TQRLabel
        Left = 376
        Top = 196
        Width = 33
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          994.833333333333300000
          518.583333333333300000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Curso:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText3: TQRDBText
        Left = 415
        Top = 197
        Width = 299
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1098.020833333333000000
          521.229166666666700000
          791.104166666666800000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FrmImpressaoBoletim.IBQuery_BolImpressao
        DataField = 'CURSO'
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
      object QRLabel33: TQRLabel
        Left = 376
        Top = 212
        Width = 29
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          994.833333333333300000
          560.916666666666700000
          76.729166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'S'#233'rie:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText14: TQRDBText
        Left = 415
        Top = 213
        Width = 299
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1098.020833333333000000
          563.562500000000000000
          791.104166666666800000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FrmImpressaoBoletim.IBQuery_BolImpressao
        DataField = 'SERIE'
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
      object QRLabel34: TQRLabel
        Left = 376
        Top = 228
        Width = 32
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          994.833333333333300000
          603.250000000000000000
          84.666666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Turno:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText29: TQRDBText
        Left = 415
        Top = 229
        Width = 119
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1098.020833333333000000
          605.895833333333200000
          314.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FrmImpressaoBoletim.IBQuery_BolImpressao
        DataField = 'TURNO'
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
      object QRLabel35: TQRLabel
        Left = 376
        Top = 244
        Width = 34
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          994.833333333333300000
          645.583333333333300000
          89.958333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Turma:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText31: TQRDBText
        Left = 415
        Top = 245
        Width = 119
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1098.020833333333000000
          648.229166666666800000
          314.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FrmImpressaoBoletim.IBQuery_BolImpressao
        DataField = 'TURMA'
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
      object QRLabel36: TQRLabel
        Left = 543
        Top = 228
        Width = 52
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1436.687500000000000000
          603.250000000000000000
          137.583333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Ano letivo:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel37: TQRLabel
        Left = 543
        Top = 244
        Width = 31
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1436.687500000000000000
          645.583333333333300000
          82.020833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Etapa:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText33: TQRDBText
        Left = 600
        Top = 229
        Width = 114
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1587.500000000000000000
          605.895833333333200000
          301.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FrmImpressaoBoletim.IBQuery_BolImpressao
        DataField = 'ANO_LETIVO'
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
      object QRRoundRect9: TQRRoundRect
        Left = 8
        Top = 339
        Width = 718
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875000000000000000
          21.166666666666670000
          896.937500000000000000
          1899.708333333333000000)
        EllipseHeight = 15.000000000000000000
        EllipseWidth = 15.000000000000000000
      end
      object QRSysData2: TQRSysData
        Left = 13
        Top = 369
        Width = 125
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          34.395833333333330000
          976.312500000000000000
          330.729166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDate
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = 'Emiss'#227'o:         '
        Transparent = True
        FontSize = 8
      end
      object QRLabel28: TQRLabel
        Left = 13
        Top = 348
        Width = 47
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          34.395833333333330000
          920.750000000000000000
          124.354166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Matr'#237'cula:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText7: TQRDBText
        Left = 83
        Top = 348
        Width = 150
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          219.604166666666700000
          920.750000000000000000
          396.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FrmImpressaoBoletim.IBQuery_BolImpressao
        DataField = 'MATRICULA'
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
      object QRLabel38: TQRLabel
        Left = 13
        Top = 196
        Width = 46
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          34.395833333333330000
          518.583333333333300000
          121.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Aluno(a):'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText34: TQRDBText
        Left = 83
        Top = 196
        Width = 276
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          219.604166666666700000
          518.583333333333300000
          730.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FrmImpressaoBoletim.IBQuery_BolImpressao
        DataField = 'NOME_ALUNO'
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
      object QRDBText35: TQRDBText
        Left = 83
        Top = 212
        Width = 276
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          219.604166666666700000
          560.916666666666700000
          730.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FrmImpressaoBoletim.IBQuery_BolImpressao
        DataField = 'NOME_RESP'
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
      object QRLabel39: TQRLabel
        Left = 13
        Top = 212
        Width = 67
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          34.395833333333330000
          560.916666666666700000
          177.270833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Respons'#225'vel:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRShape30: TQRShape
        Left = 0
        Top = 112
        Width = 734
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333330000
          0.000000000000000000
          296.333333333333300000
          1942.041666666667000000)
        Pen.Style = psDot
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRRoundRect5: TQRRoundRect
        Left = 8
        Top = 162
        Width = 718
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          21.166666666666670000
          428.625000000000000000
          1899.708333333333000000)
        EllipseHeight = 15.000000000000000000
        EllipseWidth = 15.000000000000000000
      end
      object QRLabel3: TQRLabel
        Left = 257
        Top = 165
        Width = 220
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          679.979166666666700000
          436.562500000000000000
          582.083333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'COMPROVANTE DE RECEBIMENTO'
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
      object QRRoundRect1: TQRRoundRect
        Left = 8
        Top = 8
        Width = 718
        Height = 66
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          174.625000000000000000
          21.166666666666670000
          21.166666666666670000
          1899.708333333333000000)
        EllipseHeight = 15.000000000000000000
        EllipseWidth = 15.000000000000000000
      end
      object QRLabel_Etapa2: TQRLabel
        Left = 600
        Top = 245
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1587.500000000000000000
          648.229166666666700000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Etapa'
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
      object QRMemo_Mes: TQRMemo
        Left = 14
        Top = 14
        Width = 706
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875000000000000000
          37.041666666666670000
          37.041666666666670000
          1867.958333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object Grafico: TQRImage
        Left = 368
        Top = 343
        Width = 353
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          105.833333333333300000
          973.666666666666800000
          907.520833333333200000
          933.979166666666800000)
      end
      object QRShape4: TQRShape
        Left = 8
        Top = -1
        Width = 718
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666667000
          21.166666666666670000
          -2.645833333333333000
          1899.708333333333000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape34: TQRShape
        Left = 0
        Top = 81
        Width = 733
        Height = 6
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Frame.Width = 0
        Size.Values = (
          15.875000000000000000
          0.000000000000000000
          214.312500000000000000
          1939.395833333333000000)
        Pen.Width = 6
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel11: TQRLabel
        Left = 0
        Top = 88
        Width = 88
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          0.000000000000000000
          232.833333333333300000
          232.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'GEES 1.0 www.rwd.net.br'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel12: TQRLabel
        Left = 0
        Top = 405
        Width = 42
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          0.000000000000000000
          1071.562500000000000000
          111.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'GEES 1.0'
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
      object QRShape7: TQRShape
        Left = 0
        Top = 429
        Width = 734
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333330000
          0.000000000000000000
          1135.062500000000000000
          1942.041666666667000000)
        Pen.Style = psDot
        Shape = qrsHorLine
        VertAdjust = 0
      end
    end
  end
  object IBQuery_NotasBoletim: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    CachedUpdates = True
    DataSource = FrmImpressaoBoletim.Ds_BolImpressao
    SQL.Strings = (
      'select * from NOTAS'
      'where (MATRICULA = :MATRICULA)'
      'order by COD_BOLE')
    Top = 40
    ParamData = <
      item
        DataType = ftString
        Name = 'MATRICULA'
        ParamType = ptUnknown
        Size = 18
      end>
    object IBQuery_NotasBoletimCOD_NOTA: TIntegerField
      FieldName = 'COD_NOTA'
      Origin = '"NOTAS"."COD_NOTA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBQuery_NotasBoletimCOD_BOLE: TIntegerField
      FieldName = 'COD_BOLE'
      Origin = '"NOTAS"."COD_BOLE"'
      Required = True
    end
    object IBQuery_NotasBoletimMATRICULA: TIBStringField
      FieldName = 'MATRICULA'
      Origin = '"NOTAS"."MATRICULA"'
      Size = 17
    end
    object IBQuery_NotasBoletimANO_LETIVO: TIBStringField
      FieldName = 'ANO_LETIVO'
      Origin = '"NOTAS"."ANO_LETIVO"'
      Size = 4
    end
    object IBQuery_NotasBoletimDISCIPLINA: TIBStringField
      FieldName = 'DISCIPLINA'
      Origin = '"NOTAS"."DISCIPLINA"'
      Size = 30
    end
    object IBQuery_NotasBoletimETAPA_1_MAR: TIBStringField
      FieldName = 'ETAPA_1_MAR'
      Origin = '"NOTAS"."ETAPA_1_MAR"'
      Size = 5
    end
    object IBQuery_NotasBoletimETAPA_1_ABR: TIBStringField
      FieldName = 'ETAPA_1_ABR'
      Origin = '"NOTAS"."ETAPA_1_ABR"'
      Size = 5
    end
    object IBQuery_NotasBoletimETAPA_1_AV3: TIBStringField
      FieldName = 'ETAPA_1_AV3'
      Origin = '"NOTAS"."ETAPA_1_AV3"'
      Size = 5
    end
    object IBQuery_NotasBoletimETAPA_1_M: TIBStringField
      FieldName = 'ETAPA_1_M'
      Origin = '"NOTAS"."ETAPA_1_M"'
      Size = 5
    end
    object IBQuery_NotasBoletimETAPA_1_R: TIBStringField
      FieldName = 'ETAPA_1_R'
      Origin = '"NOTAS"."ETAPA_1_R"'
      Size = 5
    end
    object IBQuery_NotasBoletimETAPA_2_MAI: TIBStringField
      FieldName = 'ETAPA_2_MAI'
      Origin = '"NOTAS"."ETAPA_2_MAI"'
      Size = 5
    end
    object IBQuery_NotasBoletimETAPA_2_JUN: TIBStringField
      FieldName = 'ETAPA_2_JUN'
      Origin = '"NOTAS"."ETAPA_2_JUN"'
      Size = 5
    end
    object IBQuery_NotasBoletimETAPA_2_AV3: TIBStringField
      FieldName = 'ETAPA_2_AV3'
      Origin = '"NOTAS"."ETAPA_2_AV3"'
      Size = 5
    end
    object IBQuery_NotasBoletimETAPA_2_M: TIBStringField
      FieldName = 'ETAPA_2_M'
      Origin = '"NOTAS"."ETAPA_2_M"'
      Size = 5
    end
    object IBQuery_NotasBoletimETAPA_2_R: TIBStringField
      FieldName = 'ETAPA_2_R'
      Origin = '"NOTAS"."ETAPA_2_R"'
      Size = 5
    end
    object IBQuery_NotasBoletimETAPA_3_AGO: TIBStringField
      FieldName = 'ETAPA_3_AGO'
      Origin = '"NOTAS"."ETAPA_3_AGO"'
      Size = 5
    end
    object IBQuery_NotasBoletimETAPA_3_SET: TIBStringField
      FieldName = 'ETAPA_3_SET'
      Origin = '"NOTAS"."ETAPA_3_SET"'
      Size = 5
    end
    object IBQuery_NotasBoletimETAPA_3_AV3: TIBStringField
      FieldName = 'ETAPA_3_AV3'
      Origin = '"NOTAS"."ETAPA_3_AV3"'
      Size = 5
    end
    object IBQuery_NotasBoletimETAPA_3_M: TIBStringField
      FieldName = 'ETAPA_3_M'
      Origin = '"NOTAS"."ETAPA_3_M"'
      Size = 5
    end
    object IBQuery_NotasBoletimETAPA_3_R: TIBStringField
      FieldName = 'ETAPA_3_R'
      Origin = '"NOTAS"."ETAPA_3_R"'
      Size = 5
    end
    object IBQuery_NotasBoletimETAPA_4_OUT: TIBStringField
      FieldName = 'ETAPA_4_OUT'
      Origin = '"NOTAS"."ETAPA_4_OUT"'
      Size = 5
    end
    object IBQuery_NotasBoletimETAPA_4_NOV: TIBStringField
      FieldName = 'ETAPA_4_NOV'
      Origin = '"NOTAS"."ETAPA_4_NOV"'
      Size = 5
    end
    object IBQuery_NotasBoletimETAPA_4_AV3: TIBStringField
      FieldName = 'ETAPA_4_AV3'
      Origin = '"NOTAS"."ETAPA_4_AV3"'
      Size = 5
    end
    object IBQuery_NotasBoletimETAPA_4_M: TIBStringField
      FieldName = 'ETAPA_4_M'
      Origin = '"NOTAS"."ETAPA_4_M"'
      Size = 5
    end
    object IBQuery_NotasBoletimETAPA_4_R: TIBStringField
      FieldName = 'ETAPA_4_R'
      Origin = '"NOTAS"."ETAPA_4_R"'
      Size = 5
    end
    object IBQuery_NotasBoletimPROVAO: TIBStringField
      FieldName = 'PROVAO'
      Origin = '"NOTAS"."PROVAO"'
      Size = 5
    end
    object IBQuery_NotasBoletimPROVAO_R: TIBStringField
      FieldName = 'PROVAO_R'
      Origin = '"NOTAS"."PROVAO_R"'
      Size = 5
    end
    object IBQuery_NotasBoletimMEDIA_FINAL: TIBStringField
      FieldName = 'MEDIA_FINAL'
      Origin = '"NOTAS"."MEDIA_FINAL"'
      Size = 5
    end
    object IBQuery_NotasBoletimFALTAS: TIntegerField
      FieldName = 'FALTAS'
      Origin = '"NOTAS"."FALTAS"'
    end
    object IBQuery_NotasBoletimPONTOS: TIBStringField
      FieldName = 'PONTOS'
      Origin = '"NOTAS"."PONTOS"'
      Size = 4
    end
    object IBQuery_NotasBoletimRESULTADO_FINAL: TIBStringField
      FieldName = 'RESULTADO_FINAL'
      Origin = '"NOTAS"."RESULTADO_FINAL"'
      Size = 9
    end
  end
  object DS_NotasBoletim: TDataSource
    DataSet = IBQuery_NotasBoletim
    Top = 74
  end
  object IBQuery_Mensagem: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    CachedUpdates = True
    DataSource = FrmImpressaoBoletim.Ds_BolImpressao
    SQL.Strings = (
      'select * from NOTAS'
      'where (MATRICULA = :MATRICULA)'
      'order by COD_BOLE')
    Top = 104
    ParamData = <
      item
        DataType = ftString
        Name = 'MATRICULA'
        ParamType = ptUnknown
        Size = 18
      end>
  end
  object Barcode1: TBarcode
    Height = 34
    Top = 0
    Left = 0
    Modul = 1
    Ratio = 3.000000000000000000
    Typ = bcCode39
  end
end
