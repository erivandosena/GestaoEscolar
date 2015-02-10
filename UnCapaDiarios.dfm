object FrmCapaDiarios: TFrmCapaDiarios
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Capas Di'#225'rio de Classe'
  ClientHeight = 150
  ClientWidth = 662
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 18
    Top = 23
    Width = 35
    Height = 13
    Caption = 'Curso:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 223
    Top = 23
    Width = 32
    Height = 13
    Caption = 'S'#233'rie:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 384
    Top = 23
    Width = 40
    Height = 13
    Caption = 'Turma:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 524
    Top = 23
    Width = 36
    Height = 13
    Caption = 'Turno:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 18
    Top = 58
    Width = 56
    Height = 13
    Caption = 'Disciplina:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 234
    Top = 58
    Width = 57
    Height = 13
    Caption = 'Professor:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object CB_Curso: TComboBox
    Left = 59
    Top = 20
    Width = 150
    Height = 22
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ItemHeight = 14
    ParentFont = False
    TabOrder = 0
    OnChange = CB_CursoChange
  end
  object CB_Serie: TComboBox
    Left = 261
    Top = 21
    Width = 113
    Height = 22
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ItemHeight = 14
    ParentFont = False
    TabOrder = 1
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
  object CB_Turma: TComboBox
    Left = 430
    Top = 21
    Width = 80
    Height = 22
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ItemHeight = 14
    ParentFont = False
    TabOrder = 2
  end
  object CB_Turno: TComboBox
    Left = 566
    Top = 20
    Width = 80
    Height = 22
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ItemHeight = 14
    ParentFont = False
    TabOrder = 3
  end
  object CB_Disciplina: TComboBox
    Left = 18
    Top = 77
    Width = 198
    Height = 21
    BevelInner = bvNone
    BevelOuter = bvNone
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    TabOrder = 4
  end
  object CB_Professor: TComboBox
    Left = 234
    Top = 77
    Width = 412
    Height = 21
    BevelInner = bvNone
    BevelOuter = bvNone
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    TabOrder = 5
    Items.Strings = (
      'ALDENIR RODRIGUES DE OLIVEIRA'
      'ANTONIO SILVINO DA SILVEIRA'
      'CARLA NAYANA AGUIAR DA SILVA'
      'CARLOS ANDR'#201' DE SOUZA SILVA'
      'FRANCISCA K'#193'TIA SOARES DE ARAUJO'
      'FRANCISCO IDELFONSO PEREIRA DA SILVA'
      'FRANCISCO JEFERSON FLORENCIO LOPES'
      'FRANCY GISLENE FREITAS SILVA'
      'ISABEL CRISTINA SALVADOR BATISTA'
      'JO'#195'O ARTUR RICARDO DE OLIVEIRA'
      'KETNA MARIA GOMES CANDIDO'
      'LUIZA HELENA LEANDRO DA SILVA'
      'MARA W'#202'LE DA SILVA '
      'MARIA CLEIDE HOLANDA LIMA'
      'MARIA DA CONCEI'#199#195'O DE HOLANDA NEGREIROS SOUSA'
      'MARIA ELIZIANA DUARTE DE CASTRO'
      'ROBERVANY LOPES DE OLIVEIRA'
      'S'#193'VIA DAIANE DA COSTA SOUZA'
      'VALDELICE SERAFIM DE AGUIAR')
  end
  object Btn_Imprimir: TBitBtn
    Left = 457
    Top = 114
    Width = 90
    Height = 25
    Cursor = crHandPoint
    Caption = 'Im&press'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = Btn_ImprimirClick
    NumGlyphs = 4
  end
  object Btn_Fechar: TBitBtn
    Left = 563
    Top = 114
    Width = 83
    Height = 25
    Cursor = crHandPoint
    Caption = '&Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = Btn_FecharClick
    NumGlyphs = 4
  end
  object RB_Inf: TRadioButton
    Left = 25
    Top = 116
    Width = 111
    Height = 17
    Caption = 'Educa'#231#227'o Infantil'
    TabOrder = 8
  end
  object RB_Fun: TRadioButton
    Left = 142
    Top = 116
    Width = 123
    Height = 17
    Caption = 'Ensino Fundamental'
    TabOrder = 9
  end
  object IBQuery_Consulta: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    CachedUpdates = True
    Left = 96
    Top = 40
  end
end
