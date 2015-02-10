object FrmConsulta: TFrmConsulta
  Left = 451
  Top = 373
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Consulta'
  ClientHeight = 546
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label10: TLabel
    Left = 8
    Top = 119
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
  object Label11: TLabel
    Left = 8
    Top = 271
    Width = 103
    Height = 16
    Caption = 'Mensalidades:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = 8
    Top = 7
    Width = 777
    Height = 51
    Style = bsRaised
  end
  object Label9: TLabel
    Left = 24
    Top = 70
    Width = 59
    Height = 13
    Caption = 'Matr'#237'cula:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = False
  end
  object Label6: TLabel
    Left = 209
    Top = 70
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
    Left = 361
    Top = 70
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
    Left = 448
    Top = 70
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
  object Label2: TLabel
    Left = 374
    Top = 25
    Width = 10
    Height = 16
    Caption = #224
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 25
    Top = 25
    Width = 91
    Height = 16
    Caption = 'Rela'#231#227'o por:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = False
  end
  object Label3: TLabel
    Left = 228
    Top = 25
    Width = 19
    Height = 16
    Caption = 'de'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid_CS_Parcelas: TDBGrid
    Left = 8
    Top = 288
    Width = 777
    Height = 242
    Color = clWhite
    DataSource = DS_CSParcelas
    FixedColor = clInfoBk
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnDrawColumnCell = DBGrid_CS_ParcelasDrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'NUMERO_PARCELA'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MES'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_MENSAL'
        Title.Alignment = taCenter
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SITUACAO_PARCELA'
        Title.Alignment = taCenter
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_VENCIMENTO'
        Title.Alignment = taCenter
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_PAGAMENTO'
        Title.Alignment = taCenter
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_ACRESC'
        Title.Alignment = taCenter
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_DESCON'
        Title.Alignment = taCenter
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_APAGAR'
        Title.Alignment = taCenter
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_PAGO'
        Title.Alignment = taCenter
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_PENDENTE'
        Title.Alignment = taCenter
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL_PAGO'
        Title.Alignment = taCenter
        Visible = False
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
        Width = 113
        Visible = True
      end>
  end
  object CBox_CSSerie: TComboBox
    Left = 209
    Top = 83
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
    Font.Style = [fsBold]
    ItemHeight = 13
    ParentFont = False
    TabOrder = 3
    OnExit = CBox_CSSerieExit
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
  object CBox_CSTurma: TComboBox
    Left = 361
    Top = 83
    Width = 80
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    BevelOuter = bvRaised
    Style = csDropDownList
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 13
    ParentFont = False
    TabOrder = 4
    Items.Strings = (
      'A'
      'B'
      'C'
      'D'
      'E')
  end
  object CBox_CSTurno: TComboBox
    Left = 448
    Top = 83
    Width = 80
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    BevelOuter = bvRaised
    Style = csDropDownList
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 13
    ParentFont = False
    TabOrder = 5
    Items.Strings = (
      'MANH'#195
      'TARDE'
      'NOITE')
  end
  object Btn_Informar: TBitBtn
    Left = 539
    Top = 83
    Width = 100
    Height = 23
    Cursor = crHandPoint
    Caption = 'Informar'
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
  object BtnFechar: TBitBtn
    Left = 667
    Top = 22
    Width = 100
    Height = 23
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
  object MEdit_CSMatricula: TMaskEdit
    Left = 24
    Top = 83
    Width = 169
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnExit = MEdit_CSMatriculaExit
    OnKeyPress = MEdit_CSMatriculaKeyPress
  end
  object DBGrid_CS_Alunos: TDBGrid
    Left = 8
    Top = 136
    Width = 777
    Height = 124
    Color = clWhite
    DataSource = DS_CSALUNOS
    FixedColor = clInfoBk
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnCellClick = DBGrid_CS_AlunosCellClick
    OnDrawColumnCell = DBGrid_CS_AlunosDrawColumnCell
    OnDblClick = DBGrid_CS_AlunosDblClick
    OnKeyDown = DBGrid_CS_AlunosKeyDown
    OnKeyUp = DBGrid_CS_AlunosKeyDown
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
  object Btn_Imprimir: TBitBtn
    Left = 667
    Top = 83
    Width = 100
    Height = 23
    Cursor = crHandPoint
    Caption = 'Planilha'
    Enabled = False
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
  object Data1: TDateTimePicker
    Left = 256
    Top = 22
    Width = 114
    Height = 24
    Cursor = crHandPoint
    BevelInner = bvNone
    BevelOuter = bvNone
    Date = 37751.739146018520000000
    Format = 'MMMM'
    Time = 37751.739146018520000000
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    OnExit = Data1Exit
  end
  object Data2: TDateTimePicker
    Left = 389
    Top = 22
    Width = 114
    Height = 24
    Cursor = crHandPoint
    BevelInner = bvNone
    BevelOuter = bvNone
    Date = 37751.739146018520000000
    Format = 'MMMM'
    Time = 37751.739146018520000000
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
    OnExit = Data2Exit
  end
  object CBox_Relacao: TComboBox
    Left = 121
    Top = 22
    Width = 96
    Height = 24
    BevelInner = bvLowered
    BevelKind = bkTile
    BevelOuter = bvRaised
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
    OnChange = CBox_RelacaoChange
    Items.Strings = (
      'M'#202'S'
      'PER'#205'ODO')
  end
  object CBox_Mes: TComboBox
    Left = 257
    Top = 22
    Width = 245
    Height = 24
    BevelInner = bvLowered
    BevelKind = bkTile
    BevelOuter = bvRaised
    Style = csDropDownList
    CharCase = ecLowerCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Courier'
    Font.Style = [fsBold]
    ItemHeight = 16
    ParentFont = False
    TabOrder = 1
    Visible = False
    Items.Strings = (
      'janeiro'
      'fevereiro'
      'mar'#231'o'
      'abril'
      'maio'
      'junho'
      'julho'
      'agosto'
      'setembro'
      'outubro'
      'novembro'
      'dezembro')
  end
  object IBQuery_CSALUNOS: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      
        'select ANO_LETIVO, CURSO, MATRICULA, NOME_ALUNO, NOME_RESP, SERI' +
        'E, TURMA, TURNO from ALUNOS'
      'where MATRICULA = '#39'0'#39
      'order by NOME_ALUNO')
    Left = 80
    Top = 168
    object IBQuery_CSALUNOSMATRICULA: TIBStringField
      DisplayLabel = 'Matr'#237'cula'
      FieldName = 'MATRICULA'
      Origin = '"ALUNOS"."MATRICULA"'
      Size = 16
    end
    object IBQuery_CSALUNOSNOME_ALUNO: TIBStringField
      DisplayLabel = 'Aluno(a)'
      FieldName = 'NOME_ALUNO'
      Origin = '"ALUNOS"."NOME_ALUNO"'
      Size = 50
    end
    object IBQuery_CSALUNOSNOME_RESP: TIBStringField
      DisplayLabel = 'Respons'#225'vel'
      FieldName = 'NOME_RESP'
      Origin = '"ALUNOS"."NOME_RESP"'
      Visible = False
      Size = 50
    end
    object IBQuery_CSALUNOSSERIE: TIBStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIE'
      Origin = '"ALUNOS"."SERIE"'
      Size = 30
    end
    object IBQuery_CSALUNOSCURSO: TIBStringField
      DisplayLabel = 'Curso'
      FieldName = 'CURSO'
      Origin = '"ALUNOS"."CURSO"'
      Size = 21
    end
    object IBQuery_CSALUNOSTURMA: TIBStringField
      DisplayLabel = 'Turma'
      FieldName = 'TURMA'
      Origin = '"ALUNOS"."TURMA"'
      Size = 10
    end
    object IBQuery_CSALUNOSTURNO: TIBStringField
      DisplayLabel = 'Turno'
      FieldName = 'TURNO'
      Origin = '"ALUNOS"."TURNO"'
      Size = 5
    end
    object IBQuery_CSALUNOSANO_LETIVO: TIBStringField
      DisplayLabel = 'Ano Letivo'
      FieldName = 'ANO_LETIVO'
      Origin = '"ALUNOS"."ANO_LETIVO"'
      Size = 4
    end
  end
  object IBQuery_CSParcelas: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      'select * from CARNE'
      'where MATRICULA = '#39'0'#39' '
      'order by DATA_VENCIMENTO')
    Left = 128
    Top = 168
    object IBQuery_CSParcelasCOD_CARN: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'COD_CARN'
      Origin = '"CARNE"."COD_CARN"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBQuery_CSParcelasNUMERO_DOC: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Documento'
      FieldName = 'NUMERO_DOC'
      Origin = '"CARNE"."NUMERO_DOC"'
      Required = True
      Size = 17
    end
    object IBQuery_CSParcelasMATRICULA: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Matr'#237'cula'
      FieldName = 'MATRICULA'
      Origin = '"CARNE"."MATRICULA"'
      Size = 16
    end
    object IBQuery_CSParcelasANO_LETIVO: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Ano Letivo'
      FieldName = 'ANO_LETIVO'
      Origin = '"CARNE"."ANO_LETIVO"'
      Size = 4
    end
    object IBQuery_CSParcelasNOME_RESP: TIBStringField
      DisplayLabel = 'Respons'#225'vel'
      FieldName = 'NOME_RESP'
      Origin = '"CARNE"."NOME_RESP"'
      Size = 50
    end
    object IBQuery_CSParcelasNOME_ALUNO: TIBStringField
      DisplayLabel = 'Aluno(a)'
      FieldName = 'NOME_ALUNO'
      Origin = '"CARNE"."NOME_ALUNO"'
      Size = 50
    end
    object IBQuery_CSParcelasTURMA: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Turma'
      FieldName = 'TURMA'
      Origin = '"CARNE"."TURMA"'
      Size = 10
    end
    object IBQuery_CSParcelasTURNO: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Turno'
      FieldName = 'TURNO'
      Origin = '"CARNE"."TURNO"'
      Size = 5
    end
    object IBQuery_CSParcelasCURSO: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Curso'
      FieldName = 'CURSO'
      Origin = '"CARNE"."CURSO"'
      Size = 21
    end
    object IBQuery_CSParcelasSERIE: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIE'
      Origin = '"CARNE"."SERIE"'
      Size = 30
    end
    object IBQuery_CSParcelasMES: TIBStringField
      DisplayLabel = 'M'#234's'
      FieldName = 'MES'
      Origin = '"CARNE"."MES"'
      Size = 10
    end
    object IBQuery_CSParcelasDATA_VENCIMENTO: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'Vencimento'
      FieldName = 'DATA_VENCIMENTO'
      Origin = '"CARNE"."DATA_VENCIMENTO"'
    end
    object IBQuery_CSParcelasDATA_PAGAMENTO: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'Pagamento'
      FieldName = 'DATA_PAGAMENTO'
      Origin = '"CARNE"."DATA_PAGAMENTO"'
    end
    object IBQuery_CSParcelasVALOR_MENSAL: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR_MENSAL'
      Origin = '"CARNE"."VALOR_MENSAL"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_CSParcelasVALOR_ACRESC: TIBBCDField
      DisplayLabel = 'Acr'#233'scimo'
      FieldName = 'VALOR_ACRESC'
      Origin = '"CARNE"."VALOR_ACRESC"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_CSParcelasVALOR_DESCON: TIBBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'VALOR_DESCON'
      Origin = '"CARNE"."VALOR_DESCON"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_CSParcelasNUMERO_PARCELA: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Mensalidade'
      FieldName = 'NUMERO_PARCELA'
      Origin = '"CARNE"."NUMERO_PARCELA"'
      Size = 5
    end
    object IBQuery_CSParcelasSITUACAO_PARCELA: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'SITUACAO_PARCELA'
      Origin = '"CARNE"."SITUACAO_PARCELA"'
      Size = 9
    end
    object IBQuery_CSParcelasVALOR_APAGAR: TIBBCDField
      DisplayLabel = 'A Pagar'
      FieldName = 'VALOR_APAGAR'
      Origin = '"CARNE"."VALOR_APAGAR"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_CSParcelasVALOR_PAGO: TIBBCDField
      DisplayLabel = 'Pago'
      FieldName = 'VALOR_PAGO'
      Origin = '"CARNE"."VALOR_PAGO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_CSParcelasVALOR_PENDENTE: TIBBCDField
      DisplayLabel = 'Restante'
      FieldName = 'VALOR_PENDENTE'
      Origin = '"CARNE"."VALOR_PENDENTE"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_CSParcelasTOTAL_PAGO: TIBBCDField
      DisplayLabel = 'Total Pago'
      FieldName = 'TOTAL_PAGO'
      Origin = '"CARNE"."TOTAL_PAGO"'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object DS_CSParcelas: TDataSource
    DataSet = IBQuery_CSParcelas
    Left = 128
    Top = 200
  end
  object DS_CSALUNOS: TDataSource
    DataSet = IBQuery_CSALUNOS
    Left = 80
    Top = 200
  end
end
