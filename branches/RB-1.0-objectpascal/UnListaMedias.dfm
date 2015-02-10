object FrmListaMedias: TFrmListaMedias
  Left = 218
  Top = 171
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Listagem de M'#233'dias'
  ClientHeight = 444
  ClientWidth = 792
  Color = clMenu
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 256
    Top = 8
    Width = 33
    Height = 15
    Caption = 'S'#233'rie:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Helvetica'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 407
    Top = 8
    Width = 39
    Height = 15
    Caption = 'Turma:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Helvetica'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 493
    Top = 8
    Width = 35
    Height = 15
    Caption = 'Turno:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Helvetica'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 579
    Top = 8
    Width = 58
    Height = 15
    Caption = 'Disciplina:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Helvetica'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 8
    Width = 62
    Height = 15
    Caption = 'Ano Letivo:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Helvetica'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 80
    Top = 8
    Width = 37
    Height = 15
    Caption = 'Curso:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Helvetica'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid_Listagem: TDBGrid
    Left = 8
    Top = 64
    Width = 636
    Height = 361
    Color = clWhite
    DataSource = Ds_BolMedias
    FixedColor = cl3DLight
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid_ListagemCellClick
    OnDrawColumnCell = DBGrid_ListagemDrawColumnCell
    OnDblClick = DBGrid_ListagemDblClick
    OnKeyDown = DBGrid_ListagemKeyDown
    OnKeyUp = DBGrid_ListagemKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'MATRICULA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_ALUNO'
        Width = 456
        Visible = True
      end>
  end
  object Btn_Fechar: TBitBtn
    Left = 674
    Top = 400
    Width = 90
    Height = 25
    Cursor = crHandPoint
    Caption = '&Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = Btn_FecharClick
    NumGlyphs = 4
  end
  object Btn_Informar: TBitBtn
    Left = 674
    Top = 64
    Width = 90
    Height = 25
    Cursor = crHandPoint
    Caption = '&Informar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = Btn_InformarClick
    NumGlyphs = 4
  end
  object CBox_Serie: TComboBox
    Left = 256
    Top = 24
    Width = 145
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
    TabOrder = 2
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
    Left = 407
    Top = 24
    Width = 80
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
    TabOrder = 3
    OnEnter = CBox_TurmaEnter
  end
  object CBox_Turno: TComboBox
    Left = 493
    Top = 24
    Width = 80
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
    OnEnter = CBox_TurnoEnter
  end
  object Btn_Imprimir: TBitBtn
    Left = 674
    Top = 105
    Width = 90
    Height = 25
    Cursor = crHandPoint
    Caption = 'Im&primir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = Btn_ImprimirClick
    NumGlyphs = 4
  end
  object CBox_Disciplina: TComboBox
    Left = 579
    Top = 24
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
    TabOrder = 1
    OnEnter = CBox_CursoEnter
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 425
    Width = 792
    Height = 19
    Panels = <
      item
        Width = 50
      end
      item
        Width = 50
      end
      item
        Width = 50
      end
      item
        Width = 50
      end>
  end
  object MainMenu1: TMainMenu
    Left = 120
    Top = 128
    object Arquivo1: TMenuItem
      Caption = 'Menu'
      ShortCut = 123
      Visible = False
      object Fechar1: TMenuItem
        Caption = 'Fechar'
        ShortCut = 122
        OnClick = Btn_FecharClick
      end
    end
  end
  object Ds_BolMedias: TDataSource
    DataSet = IBQuery_BolMedias
    Left = 176
    Top = 128
  end
  object IBQuery_BolMedias: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    ObjectView = True
    CachedUpdates = True
    SQL.Strings = (
      'select * from BOLETIM')
    Left = 232
    Top = 128
    object IBQuery_BolMediasCOD_BOLE: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'COD_BOLE'
      Origin = '"BOLETIM"."COD_BOLE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBQuery_BolMediasMATRICULA: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Matr'#237'cula'
      FieldName = 'MATRICULA'
      Origin = '"BOLETIM"."MATRICULA"'
      Size = 17
    end
    object IBQuery_BolMediasNOME_ALUNO: TIBStringField
      DisplayLabel = 'Aluno(a)'
      FieldName = 'NOME_ALUNO'
      Origin = '"BOLETIM"."NOME_ALUNO"'
      Size = 50
    end
    object IBQuery_BolMediasANO_LETIVO: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Ano Letivo'
      FieldName = 'ANO_LETIVO'
      Origin = '"BOLETIM"."ANO_LETIVO"'
      Size = 4
    end
    object IBQuery_BolMediasCURSO: TIBStringField
      DisplayLabel = 'Curso'
      FieldName = 'CURSO'
      Origin = '"BOLETIM"."CURSO"'
      Size = 21
    end
    object IBQuery_BolMediasSERIE: TIBStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIE'
      Origin = '"BOLETIM"."SERIE"'
      Size = 30
    end
    object IBQuery_BolMediasTURNO: TIBStringField
      DisplayLabel = 'Turno'
      FieldName = 'TURNO'
      Origin = '"BOLETIM"."TURNO"'
      Size = 5
    end
    object IBQuery_BolMediasTURMA: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Turma'
      FieldName = 'TURMA'
      Origin = '"BOLETIM"."TURMA"'
      Size = 10
    end
    object IBQuery_BolMediasSEXO: TIBStringField
      DisplayLabel = 'Sexo'
      FieldName = 'SEXO'
      Origin = '"BOLETIM"."SEXO"'
      Size = 9
    end
    object IBQuery_BolMediasDATA_NASCIMENTO: TDateTimeField
      DisplayLabel = 'Data Nascimento'
      FieldName = 'DATA_NASCIMENTO'
      Origin = '"BOLETIM"."DATA_NASCIMENTO"'
    end
    object IBQuery_BolMediasNOME_PAI: TIBStringField
      DisplayLabel = 'Pai'
      FieldName = 'NOME_PAI'
      Origin = '"BOLETIM"."NOME_PAI"'
      Size = 50
    end
    object IBQuery_BolMediasNOME_MAE: TIBStringField
      DisplayLabel = 'M'#227'e'
      FieldName = 'NOME_MAE'
      Origin = '"BOLETIM"."NOME_MAE"'
      Size = 50
    end
    object IBQuery_BolMediasNOME_RESP: TIBStringField
      DisplayLabel = 'Respons'#225'vel'
      FieldName = 'NOME_RESP'
      Origin = '"BOLETIM"."NOME_RESP"'
      Size = 50
    end
    object IBQuery_BolMediasTEL_RESP: TIBStringField
      DisplayLabel = 'Tel. Respons'#225'vel'
      FieldName = 'TEL_RESP'
      Origin = '"BOLETIM"."TEL_RESP"'
    end
    object IBQuery_BolMediasCPF_RESP: TIBStringField
      DisplayLabel = 'CPF do Respons'#225'vel'
      FieldName = 'CPF_RESP'
      Origin = '"BOLETIM"."CPF_RESP"'
      Size = 14
    end
  end
end
