object FrmFichaNota: TFrmFichaNota
  Left = 196
  Top = 108
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Rela'#231#227'o de Notas'
  ClientHeight = 425
  ClientWidth = 785
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 256
    Top = 8
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
  object Label4: TLabel
    Left = 407
    Top = 8
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
  object Label5: TLabel
    Left = 493
    Top = 8
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
  object Label9: TLabel
    Left = 579
    Top = 8
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
  object Label10: TLabel
    Left = 8
    Top = 8
    Width = 63
    Height = 13
    Caption = 'Ano Letivo:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 80
    Top = 8
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
  object DBGrid_RelacaoNota: TDBGrid
    Left = 8
    Top = 64
    Width = 641
    Height = 336
    DataSource = Dm.DS_Ata
    FixedColor = cl3DLight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -1
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
  end
  object Btn_Relacionar: TBitBtn
    Left = 674
    Top = 64
    Width = 90
    Height = 25
    Cursor = crHandPoint
    Caption = 'Relacionar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = Btn_RelacionarClick
  end
  object BtnFechar: TBitBtn
    Left = 683
    Top = 376
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
    TabOrder = 8
    OnClick = BtnFecharClick
    NumGlyphs = 4
  end
  object PBar: TProgressBar
    Left = 8
    Top = 406
    Width = 641
    Height = 17
    Smooth = True
    Step = 1
    TabOrder = 10
  end
  object GroupBox1: TGroupBox
    Left = 664
    Top = 95
    Width = 113
    Height = 97
    Caption = 'Impress'#227'o'
    TabOrder = 7
    object Btn_Imprimir: TBitBtn
      Left = 12
      Top = 24
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Btn_ImprimirClick
    end
    object CheckBox_Planilha: TCheckBox
      Left = 12
      Top = 64
      Width = 90
      Height = 17
      Caption = 'Planilha'
      TabOrder = 0
    end
  end
  object CBox_Serie: TComboBox
    Left = 256
    Top = 24
    Width = 145
    Height = 21
    AutoDropDown = True
    AutoCloseUp = True
    BevelInner = bvNone
    BevelOuter = bvNone
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    TabOrder = 2
    OnEnter = CBox_SerieEnter
  end
  object CBox_Turma: TComboBox
    Left = 407
    Top = 24
    Width = 80
    Height = 21
    AutoDropDown = True
    AutoCloseUp = True
    BevelInner = bvNone
    BevelOuter = bvNone
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    TabOrder = 3
    OnEnter = CBox_TurmaEnter
  end
  object CBox_Turno: TComboBox
    Left = 493
    Top = 24
    Width = 80
    Height = 21
    AutoDropDown = True
    AutoCloseUp = True
    BevelInner = bvNone
    BevelOuter = bvNone
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    TabOrder = 4
    OnEnter = CBox_TurnoEnter
  end
  object CBox_Disciplina: TComboBox
    Left = 579
    Top = 24
    Width = 198
    Height = 21
    AutoDropDown = True
    AutoCloseUp = True
    BevelInner = bvNone
    BevelOuter = bvNone
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    TabOrder = 5
    OnEnter = CBox_DisciplinaEnter
    Items.Strings = (
      '')
  end
  object CBox_AnoLetivo: TComboBox
    Left = 8
    Top = 24
    Width = 66
    Height = 21
    AutoDropDown = True
    AutoCloseUp = True
    BevelInner = bvNone
    BevelOuter = bvNone
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    TabOrder = 0
    Items.Strings = (
      'A'
      'B'
      'C'
      'D'
      'E')
  end
  object CBox_Curso: TComboBox
    Left = 80
    Top = 24
    Width = 170
    Height = 21
    AutoDropDown = True
    AutoCloseUp = True
    BevelInner = bvNone
    BevelOuter = bvNone
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    TabOrder = 1
    OnEnter = CBox_CursoEnter
  end
end
