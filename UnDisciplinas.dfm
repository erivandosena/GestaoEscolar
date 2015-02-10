object FrmDisciplina: TFrmDisciplina
  Left = 193
  Top = 107
  BorderIcons = [biHelp]
  BorderStyle = bsSingle
  Caption = 'Disciplinas'
  ClientHeight = 523
  ClientWidth = 434
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel2: TBevel
    Left = 8
    Top = 54
    Width = 411
    Height = 100
    Style = bsRaised
  end
  object Label1: TLabel
    Left = 28
    Top = 59
    Width = 91
    Height = 13
    Caption = 'Nome da Disciplina'
    FocusControl = DBEdit1
  end
  object Label3: TLabel
    Left = 12
    Top = 160
    Width = 53
    Height = 13
    Caption = 'Disciplinas:'
  end
  object Label2: TLabel
    Left = 28
    Top = 104
    Width = 55
    Height = 13
    Caption = 'Norma LDB'
  end
  object Label4: TLabel
    Left = 92
    Top = 104
    Width = 51
    Height = 13
    Caption = 'Distribu'#237'da'
  end
  object Label5: TLabel
    Left = 156
    Top = 104
    Width = 112
    Height = 13
    Caption = 'Disciplina de unifica'#231#227'o'
    Visible = False
  end
  object Panel1: TPanel
    Left = 8
    Top = 404
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
  object DBEdit1: TDBEdit
    Left = 28
    Top = 74
    Width = 378
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'DISCIPLINA'
    DataSource = Dm.Ds_MATERIAS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 176
    Width = 411
    Height = 219
    DataSource = Dm.Ds_MATERIAS
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    Options = [dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
    ParentFont = False
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnEnter = DBGrid1Enter
    OnKeyDown = DBGrid1KeyDown
    OnKeyUp = DBGrid1KeyUp
    Columns = <
      item
        Expanded = False
        FieldName = 'DISCIPLINA'
        ReadOnly = True
        Width = 388
        Visible = True
      end>
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 434
    Height = 41
    Align = alTop
    Caption = 'CADASTRO DE DISCIPLINAS'
    Color = clActiveCaption
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object DBEdit2: TDBComboBox
    Left = 28
    Top = 120
    Width = 55
    Height = 21
    Hint = '(NC) Base nacional comum '#13#10'(PD) Parte diversificada'
    Style = csDropDownList
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkSoft
    BevelWidth = 0
    DataField = 'LDB'
    DataSource = Dm.Ds_MATERIAS
    ItemHeight = 13
    Items.Strings = (
      'NC'
      'PD')
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnKeyPress = DBEdit2KeyPress
  end
  object DBComboBox1: TDBComboBox
    Left = 92
    Top = 120
    Width = 55
    Height = 21
    Hint = 'Disciplina com m'#233'dia unida.'
    Style = csDropDownList
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkSoft
    BevelWidth = 0
    DataField = 'DISTRIBUIDA'
    DataSource = Dm.Ds_MATERIAS
    ItemHeight = 13
    Items.Strings = (
      'SIM'
      'N'#195'O')
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnChange = DBComboBox1Change
    OnKeyPress = DBEdit2KeyPress
  end
  object DBComboBox3: TDBComboBox
    Left = 156
    Top = 120
    Width = 250
    Height = 21
    Hint = 'Disciplina com m'#233'dia unida.'
    Style = csDropDownList
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkSoft
    BevelWidth = 0
    DataField = 'UNIFICACAO'
    DataSource = Dm.Ds_MATERIAS
    ItemHeight = 13
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    Visible = False
    OnKeyPress = DBEdit2KeyPress
  end
  object DataSource1: TDataSource
    DataSet = Dm.IBDS_MATERIAS
    OnStateChange = DataSource1StateChange
    Left = 248
    Top = 48
  end
  object MainMenu1: TMainMenu
    Left = 168
    Top = 48
    object Arquivo1: TMenuItem
      Caption = 'Menu'
      ShortCut = 123
      Visible = False
      object N2: TMenuItem
        Caption = '-'
      end
      object Fechar1: TMenuItem
        Caption = 'Fechar'
        ShortCut = 122
        OnClick = SpeedButton1Click
      end
    end
  end
  object IBQueryDisciplina: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    CachedUpdates = True
    SQL.Strings = (
      'select DISCIPLINA from MATERIAS'
      'order by DISCIPLINA')
    Left = 208
    Top = 48
  end
end
