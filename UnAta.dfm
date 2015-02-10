object FrmAta: TFrmAta
  Left = 160
  Top = 151
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Ata de Resultados Finais'
  ClientHeight = 426
  ClientWidth = 794
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
  object Label6: TLabel
    Left = 94
    Top = 7
    Width = 34
    Height = 13
    Caption = 'S'#233'rie:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = False
  end
  object Label7: TLabel
    Left = 245
    Top = 7
    Width = 40
    Height = 13
    Caption = 'Turma:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = False
  end
  object Label8: TLabel
    Left = 332
    Top = 7
    Width = 38
    Height = 13
    Caption = 'Turno:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = False
  end
  object Label1: TLabel
    Left = 8
    Top = 7
    Width = 66
    Height = 13
    Caption = 'Ano Letivo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = False
  end
  object DBGrid_Relacao: TDBGrid
    Left = 8
    Top = 47
    Width = 678
    Height = 363
    DataSource = Dm.DS_Ata
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgCancelOnExit]
    ParentFont = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = False
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -1
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object CBox_Serie: TComboBox
    Left = 94
    Top = 20
    Width = 145
    Height = 21
    AutoDropDown = True
    AutoCloseUp = True
    BevelInner = bvLowered
    BevelKind = bkTile
    BevelOuter = bvRaised
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 13
    ParentFont = False
    TabOrder = 1
    OnEnter = CBox_SerieEnter
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
    Left = 245
    Top = 20
    Width = 80
    Height = 21
    AutoDropDown = True
    AutoCloseUp = True
    BevelInner = bvLowered
    BevelKind = bkTile
    BevelOuter = bvRaised
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 13
    ParentFont = False
    TabOrder = 2
    OnEnter = CBox_TurmaEnter
    Items.Strings = (
      'A'
      'B'
      'C'
      'D'
      'E')
  end
  object CBox_Turno: TComboBox
    Left = 332
    Top = 20
    Width = 80
    Height = 21
    AutoDropDown = True
    AutoCloseUp = True
    BevelInner = bvLowered
    BevelKind = bkTile
    BevelOuter = bvRaised
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 13
    ParentFont = False
    TabOrder = 3
    OnChange = CBox_TurnoChange
    OnEnter = CBox_TurnoEnter
    Items.Strings = (
      'MANH'#195
      'TARDE'
      'NOITE')
  end
  object Btn_Relacionar: TBitBtn
    Left = 584
    Top = 16
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
    TabOrder = 5
    OnClick = Btn_RelacionarClick
  end
  object Btn_Imprimir: TBitBtn
    Left = 696
    Top = 16
    Width = 90
    Height = 25
    Cursor = crHandPoint
    Caption = 'Imprimir'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = Btn_ImprimirClick
  end
  object BtnFechar: TBitBtn
    Left = 696
    Top = 393
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
  object CBox_AnoLetivo: TComboBox
    Left = 8
    Top = 20
    Width = 80
    Height = 21
    AutoDropDown = True
    AutoCloseUp = True
    BevelInner = bvLowered
    BevelKind = bkTile
    BevelOuter = bvRaised
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 13
    ParentFont = False
    TabOrder = 0
    Items.Strings = (
      'MANH'#195
      'TARDE'
      'NOITE')
  end
  object CBox_Unifica: TCheckBox
    Left = 432
    Top = 24
    Width = 129
    Height = 17
    Caption = 'Disciplinas Unificadas'
    TabOrder = 4
    OnClick = CBox_UnificaClick
  end
  object DBDisciplinas: TDBGrid
    Left = 537
    Top = 62
    Width = 214
    Height = 83
    DataSource = Dm.DSConsulta1
    Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgCancelOnExit]
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
  end
  object DBGrid1: TDBGrid
    Left = 537
    Top = 240
    Width = 214
    Height = 83
    DataSource = DSConsulta
    Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgCancelOnExit]
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
  end
  object DBGrid2: TDBGrid
    Left = 537
    Top = 151
    Width = 214
    Height = 83
    DataSource = Dm.DSConsulta2
    Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgCancelOnExit]
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
  end
  object DBGrid3: TDBGrid
    Left = 185
    Top = 86
    Width = 114
    Height = 261
    DataSource = DataSource1
    Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgCancelOnExit]
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
  end
  object DBGrid4: TDBGrid
    Left = 65
    Top = 86
    Width = 114
    Height = 261
    DataSource = DataSource2
    Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgCancelOnExit]
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
  end
  object PanelTempo: TPanel
    Left = 161
    Top = 191
    Width = 370
    Height = 74
    BevelInner = bvLowered
    Color = clMenu
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 14
    Visible = False
    object LabelTempo: TLabel
      Left = 10
      Top = 8
      Width = 351
      Height = 14
      Alignment = taCenter
      AutoSize = False
      Caption = 'Por favor aguarde! Iniciando processo...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object pbAplicando: TGauge
      Left = 10
      Top = 36
      Width = 351
      Height = 25
      ForeColor = clActiveCaption
      Progress = 0
    end
  end
  object DSConsulta: TDataSource
    Left = 496
  end
  object DataSource1: TDataSource
    DataSet = Dm.IBDS_DiscAta
    Left = 368
    Top = 200
  end
  object DataSource2: TDataSource
    DataSet = Dm.IBDS_DiscAta2
    Left = 264
    Top = 192
  end
  object IBConsulta: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      'select * from MATERIAS')
    Left = 464
  end
  object IBDivisor: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    Left = 704
    Top = 48
  end
end
