object FrmDadosPais: TFrmDadosPais
  Left = 196
  Top = 108
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Dados de Pais e Respons'#225'vel Financeiro'
  ClientHeight = 57
  ClientWidth = 658
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel
    Left = 8
    Top = 8
    Width = 38
    Height = 13
    Caption = 'S'#233'rie:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = False
  end
  object Label7: TLabel
    Left = 160
    Top = 8
    Width = 46
    Height = 13
    Caption = 'Turma:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = False
  end
  object Label8: TLabel
    Left = 247
    Top = 8
    Width = 42
    Height = 13
    Caption = 'Turno:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = False
  end
  object CBox_Serie: TComboBox
    Left = 8
    Top = 21
    Width = 145
    Height = 22
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ItemHeight = 14
    ParentFont = False
    TabOrder = 0
    OnChange = CBox_SerieChange
    Items.Strings = (
      'MATERNAL'
      'JARDIM I'
      'JARDIM II'
      'ALFABETIZA'#199#195'O'
      'INFANTIL II'
      'INFANTIL III'
      'INFANTIL IV'
      'INFANTIL V'
      '1'#170' S'#201'RIE'
      '2'#170' S'#201'RIE'
      '3'#170' S'#201'RIE'
      '4'#170' S'#201'RIE'
      '5'#170' S'#201'RIE'
      '6'#170' S'#201'RIE'
      '7'#170' S'#201'RIE'
      '8'#170' S'#201'RIE'
      '9'#170' S'#201'RIE')
  end
  object CBox_Turma: TComboBox
    Left = 160
    Top = 21
    Width = 80
    Height = 22
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ItemHeight = 14
    ParentFont = False
    TabOrder = 1
    Items.Strings = (
      'A'
      'B'
      'C'
      'D'
      'E')
  end
  object CBox_Turno: TComboBox
    Left = 247
    Top = 21
    Width = 80
    Height = 22
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ItemHeight = 14
    ParentFont = False
    TabOrder = 2
    Items.Strings = (
      'MANH'#195
      'TARDE'
      'NOITE')
  end
  object Btn_Relacionar: TBitBtn
    Left = 347
    Top = 19
    Width = 150
    Height = 25
    Cursor = crHandPoint
    Caption = 'Visualizar Relat'#243'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Btn_RelacionarClick
  end
  object BtnFechar: TBitBtn
    Left = 544
    Top = 19
    Width = 90
    Height = 25
    Cursor = crHandPoint
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = BtnFecharClick
    NumGlyphs = 4
  end
  object IBQuerySelecao: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    Left = 504
    Top = 16
  end
end
