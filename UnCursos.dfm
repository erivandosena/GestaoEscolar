object FrmCursos: TFrmCursos
  Left = 193
  Top = 107
  BorderIcons = [biHelp]
  BorderStyle = bsSingle
  Caption = 'Cursos'
  ClientHeight = 542
  ClientWidth = 434
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 59
    Width = 87
    Height = 15
    Caption = 'Nome do Curso'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Helvetica'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 12
    Top = 160
    Width = 162
    Height = 15
    Caption = 'Curso / S'#233'rie / Turma / Turno:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Helvetica'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 235
    Top = 101
    Width = 89
    Height = 15
    Caption = 'Nome da Turma'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Helvetica'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 332
    Top = 101
    Width = 85
    Height = 15
    Caption = 'Nome do Turno'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Helvetica'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 101
    Width = 83
    Height = 15
    Caption = 'Nome da S'#233'rie'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Helvetica'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 8
    Top = 420
    Width = 411
    Height = 101
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 4
    object SbExcluir: TBitBtn
      Left = 210
      Top = 8
      Width = 90
      Height = 40
      Cursor = crHandPoint
      Caption = '&Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = SbExcluirClick
    end
    object SbCancelar: TBitBtn
      Left = 310
      Top = 8
      Width = 90
      Height = 40
      Cursor = crHandPoint
      Caption = '&Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = SbCancelarClick
    end
    object SbNova: TBitBtn
      Left = 14
      Top = 8
      Width = 90
      Height = 40
      Cursor = crHandPoint
      Caption = 'No&va'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = SbNovaClick
    end
    object SbSalvar: TBitBtn
      Left = 110
      Top = 8
      Width = 90
      Height = 40
      Cursor = crHandPoint
      Caption = '&Salvar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = SbSalvarClick
    end
    object SbAtualizar: TBitBtn
      Left = 14
      Top = 54
      Width = 142
      Height = 40
      Cursor = crHandPoint
      Caption = 'Atuali&zar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = SbAtualizarClick
    end
    object SpeedButton1: TBitBtn
      Left = 258
      Top = 54
      Width = 142
      Height = 40
      Cursor = crHandPoint
      Caption = '&Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = SpeedButton1Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 179
    Width = 411
    Height = 219
    DataSource = Dm.Ds_CURSOS
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
    ParentFont = False
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'CURSO'
        ReadOnly = True
        Width = 170
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SERIE'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TURMA'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TURNO'
        Width = 65
        Visible = True
      end>
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 434
    Height = 41
    Align = alTop
    Caption = 'CADASTRO DE CURSOS'
    Color = clActiveCaption
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object DBComboBox2: TDBComboBox
    Left = 235
    Top = 122
    Width = 91
    Height = 21
    Hint = '(NC) Base nacional comum '#13#10'(PD) Parte diversificada'
    BevelInner = bvNone
    BevelOuter = bvNone
    BevelWidth = 0
    CharCase = ecUpperCase
    DataField = 'TURMA'
    DataSource = Dm.Ds_CURSOS
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ItemHeight = 13
    Items.Strings = (
      'A '
      'B'
      'C '
      'D'
      'E '
      'F'
      'G'
      'H'
      'I '
      'J '
      'K'
      'L'
      'M'
      'N '
      'O '
      'P '
      'Q'
      'R'
      'S'
      'T'
      'U'
      'V '
      'W'
      'X'
      'Y'
      'Z')
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
  end
  object DBComboBox1: TDBComboBox
    Left = 332
    Top = 120
    Width = 85
    Height = 21
    Hint = 'Disciplina com m'#233'dia unida.'
    BevelInner = bvNone
    BevelOuter = bvNone
    BevelWidth = 0
    CharCase = ecUpperCase
    DataField = 'TURNO'
    DataSource = Dm.Ds_CURSOS
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ItemHeight = 13
    Items.Strings = (
      'MANH'#195
      'TARDE'
      'NOITE'
      'INTEGRAL')
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
  end
  object DBComboBox3: TDBComboBox
    Left = 8
    Top = 122
    Width = 221
    Height = 21
    Hint = 'Disciplina com m'#233'dia unida.'
    BevelInner = bvNone
    BevelOuter = bvNone
    BevelWidth = 0
    CharCase = ecUpperCase
    DataField = 'SERIE'
    DataSource = Dm.Ds_CURSOS
    ItemHeight = 13
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
      '9'#170' S'#201'RIE'
      '1'#186' ANO'
      '2'#186' ANO'
      '3'#186' ANO')
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
  end
  object DBComboBox: TDBComboBox
    Left = 8
    Top = 74
    Width = 409
    Height = 21
    Hint = 'Disciplina com m'#233'dia unida.'
    BevelInner = bvNone
    BevelOuter = bvNone
    BevelWidth = 0
    CharCase = ecUpperCase
    DataField = 'CURSO'
    DataSource = Dm.Ds_CURSOS
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ItemHeight = 13
    Items.Strings = (
      'EDUCA'#199#195'O INFANTIL'
      'ENSINO FUNDAMENTAL I'
      'ENSINO FUNDAMENTAL II')
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
  end
  object DataSource1: TDataSource
    DataSet = Dm.IBDS_CURSOS
    OnStateChange = DataSource1StateChange
    Left = 248
    Top = 48
  end
  object IBQueryCursos: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    CachedUpdates = True
    DataSource = Dm.Ds_CURSOS
    SQL.Strings = (
      'Select * from CURSOS'
      'order by CURSO')
    Left = 208
    Top = 48
  end
end
