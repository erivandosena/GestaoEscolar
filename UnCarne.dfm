object FrmCarne: TFrmCarne
  Left = 163
  Top = 118
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Carn'#234
  ClientHeight = 544
  ClientWidth = 792
  Color = clBtnFace
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
  object Bevel2: TBevel
    Left = 8
    Top = 64
    Width = 641
    Height = 55
    Style = bsRaised
  end
  object Bevel1: TBevel
    Left = 8
    Top = 8
    Width = 641
    Height = 55
    Style = bsRaised
  end
  object Label11: TLabel
    Left = 8
    Top = 278
    Width = 100
    Height = 16
    Caption = 'Carn'#234' gerado:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 8
    Top = 127
    Width = 52
    Height = 16
    Caption = 'Alunos:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 16
    Top = 16
    Width = 48
    Height = 13
    Caption = 'Matr'#237'cula:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = False
  end
  object Label6: TLabel
    Left = 185
    Top = 16
    Width = 27
    Height = 13
    Caption = 'S'#233'rie:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = False
  end
  object Label7: TLabel
    Left = 337
    Top = 16
    Width = 33
    Height = 13
    Caption = 'Turma:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = False
  end
  object Label8: TLabel
    Left = 424
    Top = 16
    Width = 31
    Height = 13
    Caption = 'Turno:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = False
  end
  object Label1: TLabel
    Left = 272
    Top = 71
    Width = 56
    Height = 13
    Caption = 'Presta'#231#245'es:'
    Transparent = False
  end
  object DBGrid_GC_Parcelas: TDBGrid
    Left = 8
    Top = 296
    Width = 777
    Height = 234
    Color = clWhite
    DataSource = DS_CarneParcelas
    FixedColor = clInfoBk
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 14
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnDrawColumnCell = DBGrid_GC_ParcelasDrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'NUMERO_PARCELA'
        Title.Alignment = taCenter
        Width = 123
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MES'
        Title.Alignment = taCenter
        Width = 123
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_MENSAL'
        Title.Alignment = taCenter
        Width = 123
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SITUACAO_PARCELA'
        Title.Alignment = taCenter
        Width = 123
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_VENCIMENTO'
        Title.Alignment = taCenter
        Width = 123
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MATRICULA'
        Title.Alignment = taCenter
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'NOME_ALUNO'
        Title.Alignment = taCenter
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'NOME_RESP'
        Title.Alignment = taCenter
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'SERIE'
        Title.Alignment = taCenter
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'TURMA'
        Title.Alignment = taCenter
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'TURNO'
        Title.Alignment = taCenter
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'CURSO'
        Title.Alignment = taCenter
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ANO_LETIVO'
        Title.Alignment = taCenter
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'NUMERO_DOC'
        Title.Alignment = taCenter
        Width = 123
        Visible = True
      end>
  end
  object DBGrid_GC_Alunos: TDBGrid
    Left = 8
    Top = 144
    Width = 777
    Height = 123
    Color = clWhite
    DataSource = DS_CarneALUNOS
    FixedColor = clInfoBk
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnCellClick = DBGrid_GC_AlunosCellClick
    OnKeyDown = DBGrid_GC_AlunosKeyDown
    OnKeyUp = DBGrid_GC_AlunosKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'MATRICULA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_ALUNO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Width = 258
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SERIE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CURSO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Width = 139
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TURMA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Width = 41
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TURNO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ANO_LETIVO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Visible = True
      end>
  end
  object CBox_GCSerie: TComboBox
    Left = 185
    Top = 30
    Width = 145
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    BevelOuter = bvRaised
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    TabOrder = 1
    OnExit = CBox_GCSerieExit
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
  object CBox_GCTurma: TComboBox
    Left = 337
    Top = 30
    Width = 80
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    BevelOuter = bvRaised
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    TabOrder = 2
    Items.Strings = (
      'A'
      'B'
      'C'
      'D'
      'E')
  end
  object CBox_GCTurno: TComboBox
    Left = 424
    Top = 30
    Width = 80
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    BevelOuter = bvRaised
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    TabOrder = 3
    Items.Strings = (
      'MANH'#195
      'TARDE'
      'NOITE')
  end
  object Btn_Gerar: TBitBtn
    Left = 528
    Top = 87
    Width = 107
    Height = 23
    Cursor = crHandPoint
    Caption = 'Gerar Carn'#234
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
    OnClick = Btn_GerarClick
    NumGlyphs = 4
  end
  object CheckBox_Data: TCheckBox
    Left = 16
    Top = 71
    Width = 80
    Height = 17
    Cursor = crHandPoint
    Caption = 'Outra Data:'
    TabOrder = 5
  end
  object CheckBox_Valor: TCheckBox
    Left = 148
    Top = 71
    Width = 80
    Height = 17
    Cursor = crHandPoint
    Caption = 'Outro Valor:'
    TabOrder = 7
  end
  object Btn_Selecionar: TBitBtn
    Left = 525
    Top = 25
    Width = 110
    Height = 23
    Cursor = crHandPoint
    Caption = 'Selecionar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Btn_SelecionarClick
    NumGlyphs = 4
  end
  object BtnFechar: TBitBtn
    Left = 664
    Top = 98
    Width = 110
    Height = 23
    Cursor = crHandPoint
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 16
    OnClick = BtnFecharClick
    NumGlyphs = 4
  end
  object UpDown1: TUpDown
    Left = 310
    Top = 89
    Width = 18
    Height = 21
    Cursor = crHandPoint
    Associate = MEdit_Fracao
    Min = 1
    Max = 1000
    Position = 12
    TabOrder = 10
  end
  object CheckBox_Selecionado: TCheckBox
    Left = 376
    Top = 71
    Width = 137
    Height = 17
    Cursor = crHandPoint
    Caption = 'Por Aluno Selecionado'
    Checked = True
    Enabled = False
    State = cbChecked
    TabOrder = 11
  end
  object MEdit_GCMatricula: TMaskEdit
    Left = 16
    Top = 30
    Width = 162
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 15
    ParentFont = False
    TabOrder = 0
    OnExit = MEdit_GCMatriculaExit
    OnKeyPress = MEdit_GCMatriculaKeyPress
  end
  object MEdit_Data: TMaskEdit
    Left = 16
    Top = 89
    Width = 89
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = bsNone
    EditMask = '99/99/9999;1;_'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 10
    ParentFont = False
    TabOrder = 6
    Text = '  /  /    '
    OnExit = MEdit_DataExit
  end
  object MEdit_Valor: TMaskEdit
    Left = 148
    Top = 89
    Width = 80
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnExit = MEdit_ValorExit
    OnKeyPress = MEdit_ValorKeyPress
  end
  object MEdit_Fracao: TMaskEdit
    Left = 272
    Top = 89
    Width = 38
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    Text = '12'
    OnKeyPress = MEdit_FracaoKeyPress
  end
  object Btn_ImprimirCarne: TBitBtn
    Left = 664
    Top = 8
    Width = 110
    Height = 23
    Cursor = crHandPoint
    Caption = 'Imprimir Carn'#234
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 15
    OnClick = Btn_ImprimirCarneClick
    NumGlyphs = 4
  end
  object Btn_ImpCapas: TBitBtn
    Left = 664
    Top = 53
    Width = 110
    Height = 23
    Cursor = crHandPoint
    Caption = 'Imprimir Capas'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 17
    OnClick = Btn_ImpCapasClick
    NumGlyphs = 4
  end
  object MainMenu1: TMainMenu
    Left = 88
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
  object DS_CarneALUNOS: TDataSource
    DataSet = IBQuery_CarneALUNOS
    Left = 88
    Top = 200
  end
  object IBQuery_CarneALUNOS: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    CachedUpdates = True
    SQL.Strings = (
      
        'select ANO_LETIVO, CURSO, MATRICULA, NOME_ALUNO, NOME_RESP, SERI' +
        'E, TURMA, TURNO, CG, COD_MATI, NUMERO_CARNE from MATRICUL'
      'where MATRICULA = '#39'0'#39
      'order by NOME_ALUNO')
    Left = 88
    Top = 168
    object IBQuery_CarneALUNOSMATRICULA: TIBStringField
      DisplayLabel = 'Matr'#237'cula'
      FieldName = 'MATRICULA'
      Origin = '"ALUNOS"."MATRICULA"'
      Size = 16
    end
    object IBQuery_CarneALUNOSNOME_ALUNO: TIBStringField
      DisplayLabel = 'Aluno(a)'
      FieldName = 'NOME_ALUNO'
      Origin = '"ALUNOS"."NOME_ALUNO"'
      Size = 50
    end
    object IBQuery_CarneALUNOSNOME_RESP: TIBStringField
      DisplayLabel = 'Respons'#225'vel'
      FieldName = 'NOME_RESP'
      Origin = '"ALUNOS"."NOME_RESP"'
      Visible = False
      Size = 50
    end
    object IBQuery_CarneALUNOSSERIE: TIBStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIE'
      Origin = '"ALUNOS"."SERIE"'
      Size = 30
    end
    object IBQuery_CarneALUNOSCURSO: TIBStringField
      DisplayLabel = 'Curso'
      FieldName = 'CURSO'
      Origin = '"ALUNOS"."CURSO"'
      Size = 21
    end
    object IBQuery_CarneALUNOSTURMA: TIBStringField
      DisplayLabel = 'Turma'
      FieldName = 'TURMA'
      Origin = '"ALUNOS"."TURMA"'
      Size = 10
    end
    object IBQuery_CarneALUNOSTURNO: TIBStringField
      DisplayLabel = 'Turno'
      FieldName = 'TURNO'
      Origin = '"ALUNOS"."TURNO"'
      Size = 5
    end
    object IBQuery_CarneALUNOSANO_LETIVO: TIBStringField
      DisplayLabel = 'Ano Letivo'
      FieldName = 'ANO_LETIVO'
      Origin = '"ALUNOS"."ANO_LETIVO"'
      Size = 4
    end
    object IBQuery_CarneALUNOSCG: TIntegerField
      FieldName = 'CG'
      Origin = '"MATRICUL"."CG"'
    end
    object IBQuery_CarneALUNOSCOD_MATI: TIntegerField
      FieldName = 'COD_MATI'
      Origin = '"MATRICUL"."COD_MATI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBQuery_CarneALUNOSNUMERO_CARNE: TIBStringField
      FieldName = 'NUMERO_CARNE'
      Origin = '"MATRICUL"."NUMERO_CARNE"'
      Size = 10
    end
  end
  object DS_CarneParcelas: TDataSource
    DataSet = IBQuery_CarneParcelas
    Left = 136
    Top = 200
  end
  object IBQuery_CarneParcelas: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    CachedUpdates = True
    SQL.Strings = (
      'select * from CARNE'
      'where MATRICULA = '#39'0'#39
      'order by DATA_VENCIMENTO')
    Left = 136
    Top = 168
    object IBQuery_CarneParcelasCOD_CARN: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'COD_CARN'
      Origin = '"CARNE"."COD_CARN"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBQuery_CarneParcelasNUMERO_DOC: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Documento'
      FieldName = 'NUMERO_DOC'
      Origin = '"CARNE"."NUMERO_DOC"'
      Required = True
      Size = 17
    end
    object IBQuery_CarneParcelasMATRICULA: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Matr'#237'cula'
      FieldName = 'MATRICULA'
      Origin = '"CARNE"."MATRICULA"'
      Size = 16
    end
    object IBQuery_CarneParcelasANO_LETIVO: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Ano Letivo'
      FieldName = 'ANO_LETIVO'
      Origin = '"CARNE"."ANO_LETIVO"'
      Size = 4
    end
    object IBQuery_CarneParcelasNOME_RESP: TIBStringField
      DisplayLabel = 'Respons'#225'vel'
      FieldName = 'NOME_RESP'
      Origin = '"CARNE"."NOME_RESP"'
      Size = 50
    end
    object IBQuery_CarneParcelasNOME_ALUNO: TIBStringField
      DisplayLabel = 'Aluno(a)'
      FieldName = 'NOME_ALUNO'
      Origin = '"CARNE"."NOME_ALUNO"'
      Size = 50
    end
    object IBQuery_CarneParcelasTURMA: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Turma'
      FieldName = 'TURMA'
      Origin = '"CARNE"."TURMA"'
      Size = 10
    end
    object IBQuery_CarneParcelasTURNO: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Turno'
      FieldName = 'TURNO'
      Origin = '"CARNE"."TURNO"'
      Size = 5
    end
    object IBQuery_CarneParcelasCURSO: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Curso'
      FieldName = 'CURSO'
      Origin = '"CARNE"."CURSO"'
      Size = 21
    end
    object IBQuery_CarneParcelasSERIE: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIE'
      Origin = '"CARNE"."SERIE"'
      Size = 30
    end
    object IBQuery_CarneParcelasMES: TIBStringField
      DisplayLabel = 'M'#234's'
      FieldName = 'MES'
      Origin = '"CARNE"."MES"'
      Size = 10
    end
    object IBQuery_CarneParcelasDATA_VENCIMENTO: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'Vencimento'
      FieldName = 'DATA_VENCIMENTO'
      Origin = '"CARNE"."DATA_VENCIMENTO"'
    end
    object IBQuery_CarneParcelasDATA_PAGAMENTO: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'Pagamento'
      FieldName = 'DATA_PAGAMENTO'
      Origin = '"CARNE"."DATA_PAGAMENTO"'
    end
    object IBQuery_CarneParcelasVALOR_MENSAL: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR_MENSAL'
      Origin = '"CARNE"."VALOR_MENSAL"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_CarneParcelasVALOR_ACRESC: TIBBCDField
      DisplayLabel = 'Acr'#233'scimo'
      FieldName = 'VALOR_ACRESC'
      Origin = '"CARNE"."VALOR_ACRESC"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_CarneParcelasVALOR_DESCON: TIBBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'VALOR_DESCON'
      Origin = '"CARNE"."VALOR_DESCON"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_CarneParcelasNUMERO_PARCELA: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Mensalidade'
      FieldName = 'NUMERO_PARCELA'
      Origin = '"CARNE"."NUMERO_PARCELA"'
      Size = 5
    end
    object IBQuery_CarneParcelasSITUACAO_PARCELA: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'SITUACAO_PARCELA'
      Origin = '"CARNE"."SITUACAO_PARCELA"'
      Size = 9
    end
    object IBQuery_CarneParcelasVALOR_APAGAR: TIBBCDField
      DisplayLabel = 'A Pagar'
      FieldName = 'VALOR_APAGAR'
      Origin = '"CARNE"."VALOR_APAGAR"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_CarneParcelasVALOR_PAGO: TIBBCDField
      DisplayLabel = 'Pago'
      FieldName = 'VALOR_PAGO'
      Origin = '"CARNE"."VALOR_PAGO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_CarneParcelasVALOR_PENDENTE: TIBBCDField
      DisplayLabel = 'Acumulado'
      FieldName = 'VALOR_PENDENTE'
      Origin = '"CARNE"."VALOR_PENDENTE"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_CarneParcelasTOTAL_PAGO: TIBBCDField
      DisplayLabel = 'Total Pago'
      FieldName = 'TOTAL_PAGO'
      Origin = '"CARNE"."TOTAL_PAGO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_CarneParcelasNUMERO_CARNE: TIBStringField
      FieldName = 'NUMERO_CARNE'
      Origin = '"CARNE"."NUMERO_CARNE"'
      Size = 10
    end
  end
  object IBQuery_DeletaCarne: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    CachedUpdates = True
    Left = 208
    Top = 200
  end
end
