object FrmTransferencias: TFrmTransferencias
  Left = 230
  Top = 74
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = '  '
  ClientHeight = 544
  ClientWidth = 794
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
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 343
    Width = 773
    Height = 138
    Caption = 'Estornar transfer'#234'ncia por:'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    object Label8: TLabel
      Left = 105
      Top = 21
      Width = 93
      Height = 13
      Caption = 'Tipo de Molalidade:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 514
      Top = 21
      Width = 48
      Height = 13
      Caption = 'Matr'#237'cula:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 7
      Top = 21
      Width = 54
      Height = 13
      Caption = 'Ano Letivo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 253
      Top = 21
      Width = 100
      Height = 13
      Caption = 'Nome do(a) Aluno(a):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit_Aluno: TMaskEdit
      Left = 253
      Top = 36
      Width = 253
      Height = 24
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkTile
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnKeyPress = Edit_AlunoKeyPress
      OnKeyUp = Edit_AlunoKeyUp
    end
    object Edit_Mat_Estorno: TEdit
      Left = 512
      Top = 36
      Width = 185
      Height = 24
      BevelInner = bvLowered
      BevelKind = bkTile
      BevelOuter = bvRaised
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnKeyPress = Edit_Mat_EstornoKeyPress
    end
    object Btn_Envia: TBitBtn
      Left = 704
      Top = 36
      Width = 59
      Height = 24
      Cursor = crHandPoint
      Caption = 'Enviar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = Btn_EnviaClick
      NumGlyphs = 2
    end
    object DBGrid_Transferido: TDBGrid
      Left = 3
      Top = 66
      Width = 758
      Height = 58
      Color = clWhite
      DataSource = DS_Estorna
      FixedColor = cl3DLight
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
      ParentFont = False
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnKeyPress = DBGrid_TransferidoKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'MATRICULA'
          Title.Caption = 'Matr'#237'cula'
          Width = 97
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_ALUNO'
          Title.Caption = 'Aluno(a)'
          Width = 310
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
          FieldName = 'CURSO'
          Title.Caption = 'Curso'
          Width = 131
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SERIE'
          Title.Caption = 'S'#233'rie'
          Width = 91
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
          Width = 43
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SITUACAO_ALUNO'
          Title.Caption = 'Situa'#231#227'o atual'
          Visible = True
        end>
    end
    object CBox_AnoLetivoEstorno: TComboBox
      Left = 7
      Top = 36
      Width = 92
      Height = 24
      BevelInner = bvNone
      BevelOuter = bvNone
      Style = csDropDownList
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 16
      ParentFont = False
      TabOrder = 0
      Items.Strings = (
        '1976')
    end
    object CBox_Modalidade: TComboBox
      Left = 105
      Top = 36
      Width = 142
      Height = 24
      BevelInner = bvNone
      BevelOuter = bvNone
      Style = csDropDownList
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Courier'
      Font.Style = [fsBold]
      ItemHeight = 16
      ParentFont = False
      TabOrder = 1
      OnKeyPress = ComboBox_SerieKeyPress
      Items.Strings = (
        'TRANSFERIDO'
        'DESISTENTE'
        'EVADIDO'
        'CONCLUINDO')
    end
  end
  object BtnFechar: TBitBtn
    Left = 691
    Top = 500
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
    TabOrder = 3
    OnClick = BtnFecharClick
    NumGlyphs = 4
  end
  object Panel1: TGroupBox
    Left = 8
    Top = 8
    Width = 773
    Height = 329
    Caption = 'Exibir n'#227'o transferidos por:'
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
      Top = 21
      Width = 31
      Height = 13
      Caption = 'Turno:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 631
      Top = 21
      Width = 33
      Height = 13
      Caption = 'Turma:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label10: TLabel
      Left = 7
      Top = 66
      Width = 138
      Height = 13
      Caption = 'Transfer'#234'ncia(s) pendente(s):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 7
      Top = 21
      Width = 54
      Height = 13
      Caption = 'Ano Letivo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 119
      Top = 20
      Width = 40
      Height = 13
      Caption = 'Op'#231#245'es:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object RButton_Serie: TLabel
      Left = 482
      Top = 21
      Width = 27
      Height = 13
      Alignment = taRightJustify
      Caption = 'S'#233'rie:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object RButton_Matricula: TLabel
      Left = 258
      Top = 17
      Width = 48
      Height = 13
      Alignment = taRightJustify
      Caption = 'Matr'#237'cula:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 12
      Top = 300
      Width = 58
      Height = 13
      Caption = 'Modalidade:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object ComboBoxExibeSerie: TComboBox
      Left = 481
      Top = 36
      Width = 132
      Height = 24
      BevelInner = bvLowered
      BevelOuter = bvRaised
      Style = csDropDownList
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemHeight = 16
      ParentFont = False
      TabOrder = 3
      OnChange = ComboBoxExibeSerieChange
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
        '9'#170' S'#201'RIE')
    end
    object ComboBoxExibeTurno: TComboBox
      Left = 687
      Top = 36
      Width = 74
      Height = 24
      BevelInner = bvNone
      BevelOuter = bvNone
      Style = csDropDownList
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemHeight = 16
      ParentFont = False
      TabOrder = 5
      OnKeyPress = ComboBoxExibeTurnoKeyPress
      Items.Strings = (
        'MANH'#195
        'TARDE'
        'NOITE')
    end
    object ComboBoxExibeTurma: TComboBox
      Left = 631
      Top = 36
      Width = 42
      Height = 24
      BevelInner = bvNone
      BevelOuter = bvNone
      Style = csDropDownList
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemHeight = 16
      ParentFont = False
      TabOrder = 4
      OnKeyPress = ComboBoxExibeTurmaKeyPress
      Items.Strings = (
        'A'
        'B'
        'C'
        'D'
        'E')
    end
    object Edit_Matricula: TEdit
      Left = 258
      Top = 36
      Width = 185
      Height = 24
      BevelInner = bvLowered
      BevelKind = bkTile
      BevelOuter = bvRaised
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnChange = Edit_MatriculaChange
      OnKeyPress = Edit_MatriculaKeyPress
    end
    object ComboBox_Ano: TComboBox
      Left = 7
      Top = 36
      Width = 92
      Height = 24
      BevelInner = bvNone
      BevelOuter = bvNone
      Style = csDropDownList
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 16
      ParentFont = False
      TabOrder = 0
      OnKeyPress = ComboBox_AnoKeyPress
      Items.Strings = (
        '1976')
    end
    object CBox_Opcao: TComboBox
      Left = 119
      Top = 36
      Width = 114
      Height = 24
      BevelInner = bvNone
      BevelOuter = bvNone
      Style = csDropDownList
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 16
      ParentFont = False
      TabOrder = 1
      OnChange = CBox_OpcaoChange
      Items.Strings = (
        'TODOS'
        'MATR'#205'CULA'
        'S'#201'RIE')
    end
    object DBGrid_Tranferencia: TDBGrid
      Left = 3
      Top = 82
      Width = 754
      Height = 208
      Color = clWhite
      DataSource = DS_Matriculado
      FixedColor = cl3DLight
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 6
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = DBGrid_TranferenciaDrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'MATRICULA'
          Title.Caption = 'Matr'#237'cula'
          Width = 97
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_ALUNO'
          Title.Caption = 'Aluno(a)'
          Width = 310
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
          FieldName = 'CURSO'
          Title.Caption = 'Curso'
          Width = 131
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SERIE'
          Title.Caption = 'S'#233'rie'
          Width = 91
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
          Width = 43
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SITUACAO_ALUNO'
          Title.Caption = 'Situa'#231#227'o atual'
          Visible = True
        end>
    end
    object Btn_Processar: TBitBtn
      Left = 233
      Top = 296
      Width = 160
      Height = 25
      Cursor = crHandPoint
      Caption = 'Processar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = Btn_ProcessarClick
      NumGlyphs = 4
    end
    object CBox_Motivo: TComboBox
      Left = 76
      Top = 296
      Width = 142
      Height = 24
      BevelInner = bvNone
      BevelOuter = bvNone
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Courier'
      Font.Style = [fsBold]
      ItemHeight = 16
      ParentFont = False
      TabOrder = 7
      OnKeyPress = ComboBox_SerieKeyPress
      Items.Strings = (
        'TRANSFERIDO'
        'DESISTENTE'
        'EVADIDO'
        'CONCLUINDO')
    end
  end
  object Btn_Estorna: TBitBtn
    Left = 321
    Top = 500
    Width = 160
    Height = 25
    Cursor = crHandPoint
    Caption = 'Reativar Matr'#237'cula'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Btn_EstornaClick
    NumGlyphs = 4
  end
  object DS_Matriculado: TDataSource
    DataSet = IBQuery_Matriculado
    Left = 112
    Top = 160
  end
  object IBQuery_Matriculado: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    CachedUpdates = True
    SQL.Strings = (
      'select * from MATRICUL'
      'order by NOME_ALUNO')
    Left = 80
    Top = 160
    object IBQuery_MatriculadoMATRICULA: TIBStringField
      FieldName = 'MATRICULA'
      Origin = '"MATRICUL"."MATRICULA"'
      Size = 17
    end
    object IBQuery_MatriculadoNOME_ALUNO: TIBStringField
      FieldName = 'NOME_ALUNO'
      Origin = '"MATRICUL"."NOME_ALUNO"'
      Size = 50
    end
    object IBQuery_MatriculadoCURSO: TIBStringField
      FieldName = 'CURSO'
      Origin = '"MATRICUL"."CURSO"'
      Size = 21
    end
    object IBQuery_MatriculadoSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"MATRICUL"."SERIE"'
      Size = 30
    end
    object IBQuery_MatriculadoTURMA: TIBStringField
      FieldName = 'TURMA'
      Origin = '"MATRICUL"."TURMA"'
      Size = 10
    end
    object IBQuery_MatriculadoTURNO: TIBStringField
      FieldName = 'TURNO'
      Origin = '"MATRICUL"."TURNO"'
      Size = 5
    end
    object IBQuery_MatriculadoANO_LETIVO: TIBStringField
      FieldName = 'ANO_LETIVO'
      Origin = '"MATRICUL"."ANO_LETIVO"'
      Size = 4
    end
    object IBQuery_MatriculadoSITUACAO_ALUNO: TIBStringField
      FieldName = 'SITUACAO_ALUNO'
      Origin = '"MATRICUL"."SITUACAO_ALUNO"'
      Size = 11
    end
  end
  object IBQuery_Estorna: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    CachedUpdates = True
    SQL.Strings = (
      'select * from MATRICUL'
      'order by NOME_ALUNO')
    Left = 80
    Top = 192
    object IBStringField1: TIBStringField
      FieldName = 'MATRICULA'
      Origin = '"MATRICUL"."MATRICULA"'
      Size = 17
    end
    object IBStringField2: TIBStringField
      FieldName = 'NOME_ALUNO'
      Origin = '"MATRICUL"."NOME_ALUNO"'
      Size = 50
    end
    object IBStringField3: TIBStringField
      FieldName = 'CURSO'
      Origin = '"MATRICUL"."CURSO"'
      Size = 21
    end
    object IBStringField4: TIBStringField
      FieldName = 'SERIE'
      Origin = '"MATRICUL"."SERIE"'
      Size = 30
    end
    object IBStringField5: TIBStringField
      FieldName = 'TURMA'
      Origin = '"MATRICUL"."TURMA"'
      Size = 10
    end
    object IBStringField6: TIBStringField
      FieldName = 'TURNO'
      Origin = '"MATRICUL"."TURNO"'
      Size = 5
    end
    object IBStringField7: TIBStringField
      FieldName = 'ANO_LETIVO'
      Origin = '"MATRICUL"."ANO_LETIVO"'
      Size = 4
    end
    object IBStringField8: TIBStringField
      FieldName = 'SITUACAO_ALUNO'
      Origin = '"MATRICUL"."SITUACAO_ALUNO"'
      Size = 11
    end
  end
  object DS_Estorna: TDataSource
    DataSet = IBQuery_Estorna
    Left = 112
    Top = 192
  end
end
