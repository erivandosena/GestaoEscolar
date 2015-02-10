object FrmMatriculas: TFrmMatriculas
  Left = 230
  Top = 74
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Matr'#237'culas'
  ClientHeight = 544
  ClientWidth = 792
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
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 264
    Width = 773
    Height = 52
  end
  object Label10: TLabel
    Left = 8
    Top = 64
    Width = 85
    Height = 13
    Caption = 'N'#227'o matriculados:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 8
    Top = 336
    Width = 63
    Height = 13
    Caption = 'Matriculados:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 15
    Top = 270
    Width = 37
    Height = 13
    Caption = 'Curso:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 282
    Top = 270
    Width = 34
    Height = 13
    Caption = 'S'#233'rie:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 593
    Top = 268
    Width = 38
    Height = 13
    Caption = 'Turno:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 479
    Top = 270
    Width = 40
    Height = 13
    Caption = 'Turma:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 708
    Top = 270
    Width = 66
    Height = 13
    Caption = 'Ano Letivo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label_AnoLetivo: TLabel
    Left = 708
    Top = 284
    Width = 65
    Height = 24
    AutoSize = False
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -27
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
    Layout = tlCenter
  end
  object Label8: TLabel
    Left = 8
    Top = 490
    Width = 117
    Height = 13
    Caption = 'Nome do(a) Aluno(a)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 368
    Top = 490
    Width = 59
    Height = 13
    Caption = 'Matr'#237'cula:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid_Matriculas: TDBGrid
    Left = 8
    Top = 352
    Width = 773
    Height = 135
    Color = clWhite
    DataSource = DS_GeraMatriculas
    FixedColor = cl3DLight
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnDrawColumnCell = DBGrid_MatriculasDrawColumnCell
    OnKeyDown = DBGrid_MatriculasKeyDown
    OnKeyUp = DBGrid_AlunosKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'MATRICULA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_ALUNO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ANO_LETIVO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CURSO'
        Width = 172
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SERIE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TURNO'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TURMA'
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_MATRICULA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTAGIO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_PAI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_MAE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_RESP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF_RESP'
        Width = 106
        Visible = True
      end>
  end
  object BtnFechar: TBitBtn
    Left = 690
    Top = 321
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
  object DBGrid_Alunos: TDBGrid
    Left = 8
    Top = 86
    Width = 773
    Height = 172
    Color = clWhite
    DataSource = DS_Alunos
    FixedColor = cl3DLight
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnCellClick = DBGrid_AlunosCellClick
    OnDrawColumnCell = DBGrid_AlunosDrawColumnCell
    OnKeyDown = DBGrid_AlunosKeyDown
    OnKeyPress = DBGrid_AlunosKeyPress
    OnKeyUp = DBGrid_AlunosKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'MATRICULA'
        Title.Caption = 'Matr'#237'cula'
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_ALUNO'
        Title.Caption = 'Aluno(a)'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CURSO'
        Title.Caption = 'Curso'
        Width = 127
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SERIE'
        Title.Caption = 'S'#233'rie'
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TURMA'
        Title.Caption = 'Turma'
        Width = 41
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TURNO'
        Title.Caption = 'Turno'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_RESP'
        Title.Caption = 'Respons'#225'vel'
        Width = 287
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ANO_LETIVO'
        Title.Caption = 'Ano Letivo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SITUACAO_ALUNO'
        Title.Caption = 'Situa'#231#227'o'
        Width = 117
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_MATRICULA'
        Title.Caption = 'Data Cadastro'
        Width = 86
        Visible = True
      end>
  end
  object Btn_Matricular: TBitBtn
    Left = 89
    Top = 321
    Width = 160
    Height = 25
    Cursor = crHandPoint
    Caption = 'Matricular'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = Btn_MatricularClick
    NumGlyphs = 4
  end
  object Btn_Remove: TBitBtn
    Left = 611
    Top = 504
    Width = 160
    Height = 25
    Cursor = crHandPoint
    Caption = 'Remover Matr'#237'cula'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = Btn_RemoveClick
    NumGlyphs = 4
  end
  object CBox_Curso: TComboBox
    Left = 15
    Top = 284
    Width = 233
    Height = 24
    BevelInner = bvLowered
    BevelKind = bkTile
    BevelOuter = bvRaised
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Courier'
    Font.Style = [fsBold]
    ItemHeight = 16
    ParentFont = False
    TabOrder = 2
    OnEnter = CBox_CursoEnter
    OnKeyPress = CBox_CursoKeyPress
    Items.Strings = (
      'EDUCA'#199#195'O INFANTIL'
      'ENSINO FUNDAMENTAL I'
      'ENSINO FUNDAMENTAL II')
  end
  object ComboBox_Serie: TComboBox
    Left = 282
    Top = 284
    Width = 159
    Height = 24
    BevelInner = bvLowered
    BevelKind = bkTile
    BevelOuter = bvRaised
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Courier'
    Font.Style = [fsBold]
    ItemHeight = 16
    ParentFont = False
    TabOrder = 3
    OnEnter = ComboBox_SerieEnter
    OnKeyPress = ComboBox_SerieKeyPress
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
  object ComboBox_Turno: TComboBox
    Left = 593
    Top = 284
    Width = 74
    Height = 24
    BevelInner = bvLowered
    BevelKind = bkTile
    BevelOuter = bvRaised
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Courier'
    Font.Style = [fsBold]
    ItemHeight = 16
    ParentFont = False
    TabOrder = 4
    OnEnter = ComboBox_TurnoEnter
    OnKeyPress = ComboBox_TurnoKeyPress
    Items.Strings = (
      'MANH'#195
      'TARDE'
      'NOITE')
  end
  object ComboBox_Turma: TComboBox
    Left = 479
    Top = 284
    Width = 74
    Height = 24
    BevelInner = bvLowered
    BevelKind = bkTile
    BevelOuter = bvRaised
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Courier'
    Font.Style = [fsBold]
    ItemHeight = 16
    ParentFont = False
    TabOrder = 5
    OnEnter = ComboBox_TurmaEnter
    Items.Strings = (
      'A'
      'B'
      'C'
      'D'
      'E')
  end
  object Panel1: TGroupBox
    Left = 8
    Top = 8
    Width = 773
    Height = 50
    Caption = 'Exibir n'#227'o matr'#237'culados por:'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 687
      Top = 6
      Width = 31
      Height = 13
      Caption = 'Turno:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 632
      Top = 6
      Width = 33
      Height = 13
      Caption = 'Turma:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object RButton_Todos: TRadioButton
      Left = 16
      Top = 21
      Width = 65
      Height = 17
      Caption = 'Todos'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = RButton_TodosClick
    end
    object RButton_Curso: TRadioButton
      Left = 118
      Top = 21
      Width = 57
      Height = 17
      Caption = 'Curso:'
      TabOrder = 1
      OnClick = RButton_CursoClick
    end
    object RButton_Serie: TRadioButton
      Left = 426
      Top = 21
      Width = 57
      Height = 17
      Caption = 'S'#233'rie:'
      TabOrder = 3
      OnClick = RButton_SerieClick
    end
    object ComboBoxExibeSerie: TComboBox
      Left = 482
      Top = 16
      Width = 144
      Height = 26
      BevelInner = bvLowered
      BevelKind = bkTile
      BevelOuter = bvRaised
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemHeight = 18
      ParentFont = False
      TabOrder = 4
      OnChange = ComboBoxExibeSerieChange
      OnEnter = ComboBoxExibeSerieEnter
      OnKeyPress = ComboBoxExibeSerieKeyPress
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
        '9'#170' S'#201'RIE ')
    end
    object ComboBoxExibeCurso: TComboBox
      Left = 181
      Top = 16
      Width = 212
      Height = 26
      BevelInner = bvLowered
      BevelKind = bkTile
      BevelOuter = bvRaised
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemHeight = 18
      ParentFont = False
      TabOrder = 2
      OnChange = ComboBoxExibeCursoChange
      OnEnter = ComboBoxExibeCursoEnter
      OnKeyPress = ComboBoxExibeCursoKeyPress
      Items.Strings = (
        'EDUCA'#199#195'O INFANTIL'
        'ENSINO FUNDAMENTAL I'
        'ENSINO FUNDAMENTAL II')
    end
    object ComboBoxExibeTurno: TComboBox
      Left = 687
      Top = 19
      Width = 78
      Height = 22
      BevelInner = bvLowered
      BevelKind = bkTile
      BevelOuter = bvRaised
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemHeight = 14
      ParentFont = False
      TabOrder = 5
      OnEnter = ComboBoxExibeTurnoEnter
      OnKeyPress = ComboBoxExibeSerieKeyPress
      Items.Strings = (
        'MANH'#195
        'TARDE'
        'NOITE')
    end
    object ComboBoxExibeTurma: TComboBox
      Left = 632
      Top = 19
      Width = 49
      Height = 22
      BevelInner = bvLowered
      BevelKind = bkTile
      BevelOuter = bvRaised
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemHeight = 14
      ParentFont = False
      TabOrder = 6
      OnEnter = ComboBoxExibeTurmaEnter
      OnKeyPress = ComboBoxExibeSerieKeyPress
      Items.Strings = (
        'A'
        'B'
        'C'
        'D'
        'E')
    end
  end
  object Edit1: TMaskEdit
    Left = 8
    Top = 504
    Width = 345
    Height = 24
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnExit = Edit1Exit
    OnKeyUp = Edit1KeyUp
  end
  object BtnOk: TBitBtn
    Left = 556
    Top = 504
    Width = 37
    Height = 24
    Cursor = crHandPoint
    Caption = 'Ok'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    OnClick = BtnOkClick
    NumGlyphs = 2
  end
  object Edit2: TEdit
    Left = 368
    Top = 504
    Width = 185
    Height = 24
    BevelInner = bvLowered
    BevelKind = bkTile
    BevelOuter = bvRaised
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
    OnKeyPress = Edit2KeyPress
  end
  object DS_Alunos: TDataSource
    DataSet = IBQuery_Alunos
    Left = 32
    Top = 144
  end
  object DS_GeraMatriculas: TDataSource
    DataSet = IBQuery_GeraMatriculas
    Left = 32
    Top = 208
  end
  object IBQuery_Alunos: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    CachedUpdates = True
    SQL.Strings = (
      
        'select FOTO, NOME_ALUNO, MATRICULA, DATA_MATRICULA, ANO_LETIVO, ' +
        'CURSO, SERIE, TURNO, TURMA,'
      
        'SEXO, DATA_NASCIMENTO, ESCOLA_ANTERIOR, CIDADE_ESCO_ANT, ESTADO_' +
        'ESCO_ANT, UF_ESCO_ANT,'
      
        'NOME_PAI, ENDERECO_PAI, BAIRRO_PAI, CIDADE_PAI, CEP_PAI, ESTADO_' +
        'PAI, UF_PAI, TEL_PAI,'
      
        'NOME_MAE, ENDERECO_MAE, BAIRRO_MAE, CIDADE_MAE, CEP_MAE, ESTADO_' +
        'MAE, UF_MAE, TEL_MAE,'
      
        'NOME_RESP, ENDERECO_RESP, BAIRRO_RESP, CIDADE_RESP, CEP_RESP, ES' +
        'TADO_RESP, UF_RESP,'
      
        'TEL_RESP, TEL_CEL_RESP, RG_RESP, CPF_RESP, NATURALIDADE, ESTADO_' +
        'NATURALIDADE from ALUNOS'
      'order by NOME_ALUNO')
    Left = 32
    Top = 112
    object IBQuery_AlunosFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = '"ALUNOS"."FOTO"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object IBQuery_AlunosNOME_ALUNO: TIBStringField
      FieldName = 'NOME_ALUNO'
      Origin = '"ALUNOS"."NOME_ALUNO"'
      Size = 50
    end
    object IBQuery_AlunosMATRICULA: TIBStringField
      FieldName = 'MATRICULA'
      Origin = '"ALUNOS"."MATRICULA"'
      Size = 17
    end
    object IBQuery_AlunosDATA_MATRICULA: TDateTimeField
      FieldName = 'DATA_MATRICULA'
      Origin = '"ALUNOS"."DATA_MATRICULA"'
    end
    object IBQuery_AlunosANO_LETIVO: TIBStringField
      FieldName = 'ANO_LETIVO'
      Origin = '"ALUNOS"."ANO_LETIVO"'
      Size = 4
    end
    object IBQuery_AlunosCURSO: TIBStringField
      FieldName = 'CURSO'
      Origin = '"ALUNOS"."CURSO"'
      Size = 21
    end
    object IBQuery_AlunosSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"ALUNOS"."SERIE"'
      Size = 30
    end
    object IBQuery_AlunosTURNO: TIBStringField
      FieldName = 'TURNO'
      Origin = '"ALUNOS"."TURNO"'
      Size = 5
    end
    object IBQuery_AlunosTURMA: TIBStringField
      FieldName = 'TURMA'
      Origin = '"ALUNOS"."TURMA"'
      Size = 10
    end
    object IBQuery_AlunosSEXO: TIBStringField
      FieldName = 'SEXO'
      Origin = '"ALUNOS"."SEXO"'
      Size = 9
    end
    object IBQuery_AlunosDATA_NASCIMENTO: TDateTimeField
      FieldName = 'DATA_NASCIMENTO'
      Origin = '"ALUNOS"."DATA_NASCIMENTO"'
    end
    object IBQuery_AlunosESCOLA_ANTERIOR: TIBStringField
      FieldName = 'ESCOLA_ANTERIOR'
      Origin = '"ALUNOS"."ESCOLA_ANTERIOR"'
      Size = 50
    end
    object IBQuery_AlunosCIDADE_ESCO_ANT: TIBStringField
      FieldName = 'CIDADE_ESCO_ANT'
      Origin = '"ALUNOS"."CIDADE_ESCO_ANT"'
      Size = 25
    end
    object IBQuery_AlunosESTADO_ESCO_ANT: TIBStringField
      FieldName = 'ESTADO_ESCO_ANT'
      Origin = '"ALUNOS"."ESTADO_ESCO_ANT"'
      Size = 25
    end
    object IBQuery_AlunosUF_ESCO_ANT: TIBStringField
      FieldName = 'UF_ESCO_ANT'
      Origin = '"ALUNOS"."UF_ESCO_ANT"'
      Size = 2
    end
    object IBQuery_AlunosNOME_PAI: TIBStringField
      FieldName = 'NOME_PAI'
      Origin = '"ALUNOS"."NOME_PAI"'
      Size = 50
    end
    object IBQuery_AlunosENDERECO_PAI: TIBStringField
      FieldName = 'ENDERECO_PAI'
      Origin = '"ALUNOS"."ENDERECO_PAI"'
      Size = 50
    end
    object IBQuery_AlunosBAIRRO_PAI: TIBStringField
      FieldName = 'BAIRRO_PAI'
      Origin = '"ALUNOS"."BAIRRO_PAI"'
      Size = 30
    end
    object IBQuery_AlunosCIDADE_PAI: TIBStringField
      FieldName = 'CIDADE_PAI'
      Origin = '"ALUNOS"."CIDADE_PAI"'
      Size = 25
    end
    object IBQuery_AlunosCEP_PAI: TIBStringField
      FieldName = 'CEP_PAI'
      Origin = '"ALUNOS"."CEP_PAI"'
      Size = 10
    end
    object IBQuery_AlunosESTADO_PAI: TIBStringField
      FieldName = 'ESTADO_PAI'
      Origin = '"ALUNOS"."ESTADO_PAI"'
      Size = 25
    end
    object IBQuery_AlunosUF_PAI: TIBStringField
      FieldName = 'UF_PAI'
      Origin = '"ALUNOS"."UF_PAI"'
      Size = 2
    end
    object IBQuery_AlunosTEL_PAI: TIBStringField
      FieldName = 'TEL_PAI'
      Origin = '"ALUNOS"."TEL_PAI"'
    end
    object IBQuery_AlunosNOME_MAE: TIBStringField
      FieldName = 'NOME_MAE'
      Origin = '"ALUNOS"."NOME_MAE"'
      Size = 50
    end
    object IBQuery_AlunosENDERECO_MAE: TIBStringField
      FieldName = 'ENDERECO_MAE'
      Origin = '"ALUNOS"."ENDERECO_MAE"'
      Size = 50
    end
    object IBQuery_AlunosBAIRRO_MAE: TIBStringField
      FieldName = 'BAIRRO_MAE'
      Origin = '"ALUNOS"."BAIRRO_MAE"'
      Size = 30
    end
    object IBQuery_AlunosCIDADE_MAE: TIBStringField
      FieldName = 'CIDADE_MAE'
      Origin = '"ALUNOS"."CIDADE_MAE"'
      Size = 25
    end
    object IBQuery_AlunosCEP_MAE: TIBStringField
      FieldName = 'CEP_MAE'
      Origin = '"ALUNOS"."CEP_MAE"'
      Size = 10
    end
    object IBQuery_AlunosESTADO_MAE: TIBStringField
      FieldName = 'ESTADO_MAE'
      Origin = '"ALUNOS"."ESTADO_MAE"'
      Size = 25
    end
    object IBQuery_AlunosUF_MAE: TIBStringField
      FieldName = 'UF_MAE'
      Origin = '"ALUNOS"."UF_MAE"'
      Size = 2
    end
    object IBQuery_AlunosTEL_MAE: TIBStringField
      FieldName = 'TEL_MAE'
      Origin = '"ALUNOS"."TEL_MAE"'
    end
    object IBQuery_AlunosNOME_RESP: TIBStringField
      FieldName = 'NOME_RESP'
      Origin = '"ALUNOS"."NOME_RESP"'
      Size = 50
    end
    object IBQuery_AlunosENDERECO_RESP: TIBStringField
      FieldName = 'ENDERECO_RESP'
      Origin = '"ALUNOS"."ENDERECO_RESP"'
      Size = 50
    end
    object IBQuery_AlunosBAIRRO_RESP: TIBStringField
      FieldName = 'BAIRRO_RESP'
      Origin = '"ALUNOS"."BAIRRO_RESP"'
      Size = 30
    end
    object IBQuery_AlunosCIDADE_RESP: TIBStringField
      FieldName = 'CIDADE_RESP'
      Origin = '"ALUNOS"."CIDADE_RESP"'
      Size = 25
    end
    object IBQuery_AlunosCEP_RESP: TIBStringField
      FieldName = 'CEP_RESP'
      Origin = '"ALUNOS"."CEP_RESP"'
      Size = 10
    end
    object IBQuery_AlunosESTADO_RESP: TIBStringField
      FieldName = 'ESTADO_RESP'
      Origin = '"ALUNOS"."ESTADO_RESP"'
      Size = 25
    end
    object IBQuery_AlunosUF_RESP: TIBStringField
      FieldName = 'UF_RESP'
      Origin = '"ALUNOS"."UF_RESP"'
      Size = 2
    end
    object IBQuery_AlunosTEL_RESP: TIBStringField
      FieldName = 'TEL_RESP'
      Origin = '"ALUNOS"."TEL_RESP"'
    end
    object IBQuery_AlunosTEL_CEL_RESP: TIBStringField
      FieldName = 'TEL_CEL_RESP'
      Origin = '"ALUNOS"."TEL_CEL_RESP"'
    end
    object IBQuery_AlunosRG_RESP: TIBStringField
      FieldName = 'RG_RESP'
      Origin = '"ALUNOS"."RG_RESP"'
      Size = 25
    end
    object IBQuery_AlunosCPF_RESP: TIBStringField
      FieldName = 'CPF_RESP'
      Origin = '"ALUNOS"."CPF_RESP"'
      Size = 14
    end
    object IBQuery_AlunosNATURALIDADE: TIBStringField
      FieldName = 'NATURALIDADE'
      Origin = '"ALUNOS"."NATURALIDADE"'
      Size = 25
    end
    object IBQuery_AlunosESTADO_NATURALIDADE: TIBStringField
      FieldName = 'ESTADO_NATURALIDADE'
      Origin = '"ALUNOS"."ESTADO_NATURALIDADE"'
      Size = 25
    end
  end
  object IBQuery_GeraMatriculas: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    CachedUpdates = True
    SQL.Strings = (
      
        'select COD_MATI, MATRICULA, DATA_MATRICULA, ANO_LETIVO, CURSO, S' +
        'ERIE, TURNO, TURMA, NOME_ALUNO, NOME_PAI, NOME_MAE, NOME_RESP, C' +
        'PF_RESP, ESTAGIO, USUARIO, CG  from MATRICUL'
      'order by NOME_ALUNO')
    Left = 32
    Top = 176
    object IBQuery_GeraMatriculasMATRICULA: TIBStringField
      DisplayLabel = 'Matr'#237'cula'
      FieldName = 'MATRICULA'
      Origin = '"MATRICUL"."MATRICULA"'
      Size = 17
    end
    object IBQuery_GeraMatriculasDATA_MATRICULA: TDateTimeField
      DisplayLabel = 'Data Matr'#237'cula'
      FieldName = 'DATA_MATRICULA'
      Origin = '"MATRICUL"."DATA_MATRICULA"'
    end
    object IBQuery_GeraMatriculasANO_LETIVO: TIBStringField
      DisplayLabel = 'Ano Letivo'
      FieldName = 'ANO_LETIVO'
      Origin = '"MATRICUL"."ANO_LETIVO"'
      Size = 4
    end
    object IBQuery_GeraMatriculasCURSO: TIBStringField
      DisplayLabel = 'Curso'
      FieldName = 'CURSO'
      Origin = '"MATRICUL"."CURSO"'
      Size = 21
    end
    object IBQuery_GeraMatriculasSERIE: TIBStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIE'
      Origin = '"MATRICUL"."SERIE"'
      Size = 30
    end
    object IBQuery_GeraMatriculasTURNO: TIBStringField
      DisplayLabel = 'Turno'
      FieldName = 'TURNO'
      Origin = '"MATRICUL"."TURNO"'
      Size = 5
    end
    object IBQuery_GeraMatriculasTURMA: TIBStringField
      DisplayLabel = 'Turma'
      FieldName = 'TURMA'
      Origin = '"MATRICUL"."TURMA"'
      Size = 10
    end
    object IBQuery_GeraMatriculasNOME_ALUNO: TIBStringField
      DisplayLabel = 'Aluno(a)'
      FieldName = 'NOME_ALUNO'
      Origin = '"MATRICUL"."NOME_ALUNO"'
      Size = 50
    end
    object IBQuery_GeraMatriculasNOME_PAI: TIBStringField
      DisplayLabel = 'Pai'
      FieldName = 'NOME_PAI'
      Origin = '"MATRICUL"."NOME_PAI"'
      Size = 50
    end
    object IBQuery_GeraMatriculasNOME_MAE: TIBStringField
      DisplayLabel = 'M'#227'e'
      FieldName = 'NOME_MAE'
      Origin = '"MATRICUL"."NOME_MAE"'
      Size = 50
    end
    object IBQuery_GeraMatriculasNOME_RESP: TIBStringField
      DisplayLabel = 'Respons'#225'vel'
      FieldName = 'NOME_RESP'
      Origin = '"MATRICUL"."NOME_RESP"'
      Size = 50
    end
    object IBQuery_GeraMatriculasCPF_RESP: TIBStringField
      DisplayLabel = 'CPF Resp.'
      FieldName = 'CPF_RESP'
      Origin = '"MATRICUL"."CPF_RESP"'
      Size = 14
    end
    object IBQuery_GeraMatriculasESTAGIO: TIBStringField
      DisplayLabel = 'Est'#225'gio Atual'
      FieldName = 'ESTAGIO'
      Origin = '"MATRICUL"."ESTAGIO"'
      Size = 8
    end
    object IBQuery_GeraMatriculasCG: TIntegerField
      FieldName = 'CG'
      Origin = '"MATRICUL"."CG"'
    end
  end
  object IBQuery_EstornaMatricula: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    CachedUpdates = True
    SQL.Strings = (
      'select * from MATRICUL'
      'order by NOME_ALUNO')
    Left = 72
    Top = 112
  end
end
