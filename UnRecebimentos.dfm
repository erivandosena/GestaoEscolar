object FrmRecebimentos: TFrmRecebimentos
  Left = 224
  Top = 10
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Recebimentos'
  ClientHeight = 544
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
  OnCloseQuery = FormCloseQuery
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 7
    Width = 775
    Height = 51
    Style = bsRaised
  end
  object Label9: TLabel
    Left = 162
    Top = 14
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
  object Label1: TLabel
    Left = 16
    Top = 14
    Width = 58
    Height = 13
    Caption = 'Documento:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = False
  end
  object Label2: TLabel
    Left = 328
    Top = 14
    Width = 42
    Height = 13
    Caption = 'Aluno(a):'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = False
  end
  object Label3: TLabel
    Left = 8
    Top = 439
    Width = 87
    Height = 19
    Caption = 'Acrescimo:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = False
  end
  object Label4: TLabel
    Left = 296
    Top = 439
    Width = 80
    Height = 19
    Caption = 'Desconto:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = False
  end
  object Label5: TLabel
    Left = 575
    Top = 439
    Width = 87
    Height = 19
    Caption = 'Total Pago:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = False
  end
  object Label7: TLabel
    Left = 448
    Top = 396
    Width = 92
    Height = 19
    Caption = 'Juros/Mora:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = False
  end
  object Label8: TLabel
    Left = 320
    Top = 396
    Width = 47
    Height = 19
    Caption = 'Multa:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = False
  end
  object Label10: TLabel
    Left = 56
    Top = 396
    Width = 132
    Height = 19
    Caption = 'Data Pagamento:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = False
  end
  object Label_Multa: TLabel
    Left = 370
    Top = 392
    Width = 75
    Height = 29
    AutoSize = False
    Caption = '0,00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label_Juros: TLabel
    Left = 543
    Top = 392
    Width = 75
    Height = 29
    AutoSize = False
    Caption = '0,00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 264
    Top = 140
    Width = 70
    Height = 19
    Caption = 'Aluno(a):'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = False
  end
  object DBText1: TDBText
    Left = 335
    Top = 140
    Width = 65
    Height = 19
    AutoSize = True
    DataField = 'NOME_ALUNO'
    DataSource = DS_PGParcelas
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText3: TDBText
    Left = 85
    Top = 140
    Width = 65
    Height = 19
    AutoSize = True
    DataField = 'MATRICULA'
    DataSource = DS_PGParcelas
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 8
    Top = 140
    Width = 75
    Height = 19
    Caption = 'Matr'#237'cula:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = False
  end
  object Label13: TLabel
    Left = 618
    Top = 396
    Width = 43
    Height = 19
    Caption = 'Total:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = False
  end
  object Label_Total: TLabel
    Left = 665
    Top = 392
    Width = 120
    Height = 29
    AutoSize = False
    Caption = '0,00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label16: TLabel
    Left = 9
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
  object Label17: TLabel
    Left = 161
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
  object Label18: TLabel
    Left = 248
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
  object Btn_Acessar: TBitBtn
    Left = 665
    Top = 25
    Width = 110
    Height = 23
    Cursor = crHandPoint
    Caption = 'Exibir Aluno'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Btn_AcessarClick
    NumGlyphs = 4
  end
  object MEdit_PGMatricula: TMaskEdit
    Left = 162
    Top = 27
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
    ParentFont = False
    TabOrder = 1
    OnExit = MEdit_PGMatriculaExit
    OnKeyPress = MEdit_PGMatriculaKeyPress
  end
  object MEdit_PGDoc: TMaskEdit
    Left = 16
    Top = 27
    Width = 142
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
    MaxLength = 17
    ParentFont = False
    TabOrder = 0
    OnExit = MEdit_PGDocExit
    OnKeyPress = MEdit_PGDocKeyPress
  end
  object MEdit_PGAluno: TMaskEdit
    Left = 328
    Top = 27
    Width = 330
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
    MaxLength = 49
    ParentFont = False
    TabOrder = 2
    OnExit = MEdit_PGAlunoExit
  end
  object DBGrid_PG_Parcelas: TDBGrid
    Left = 8
    Top = 160
    Width = 777
    Height = 226
    Color = clWhite
    DataSource = DS_PGParcelas
    FixedColor = clInfoBk
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnCellClick = DBGrid_PG_ParcelasCellClick
    OnDrawColumnCell = DBGrid_PG_ParcelasDrawColumnCell
    OnDblClick = DBGrid_PG_ParcelasDblClick
    OnExit = DBGrid_PG_ParcelasExit
    OnKeyDown = DBGrid_PG_ParcelasKeyDown
    OnKeyUp = DBGrid_PG_ParcelasKeyDown
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
        FieldName = 'VALOR_PENDENTE'
        Title.Alignment = taCenter
        Width = 123
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO_DOC'
        Title.Alignment = taCenter
        Width = 123
        Visible = True
      end>
  end
  object MEdit_Acrescimo: TMaskEdit
    Left = 97
    Top = 432
    Width = 120
    Height = 35
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    MaxLength = 15
    ParentFont = False
    TabOrder = 12
    Text = '0,00'
    OnExit = MEdit_AcrescimoExit
  end
  object MEdit_Desconto: TMaskEdit
    Left = 378
    Top = 432
    Width = 120
    Height = 35
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    MaxLength = 15
    ParentFont = False
    TabOrder = 13
    Text = '0,00'
    OnExit = MEdit_DescontoExit
  end
  object MEdit_Apagar: TMaskEdit
    Left = 664
    Top = 432
    Width = 120
    Height = 35
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    MaxLength = 15
    ParentFont = False
    TabOrder = 14
    Text = '0,00'
    OnExit = MEdit_ApagarExit
  end
  object Btn_ConfirmaPG: TBitBtn
    Left = 8
    Top = 480
    Width = 210
    Height = 49
    Cursor = crHandPoint
    Caption = 'Confirmar Pagamento'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 15
    OnClick = Btn_ConfirmaPGClick
  end
  object Btn_EstornaPG: TBitBtn
    Left = 440
    Top = 480
    Width = 210
    Height = 49
    Cursor = crHandPoint
    Caption = 'Estornar Pagamento'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 17
    OnClick = Btn_EstornaPGClick
  end
  object BtnFechar: TBitBtn
    Left = 683
    Top = 480
    Width = 100
    Height = 49
    Cursor = crHandPoint
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 18
    OnClick = BtnFecharClick
  end
  object Btn_ProximoPG: TBitBtn
    Left = 224
    Top = 480
    Width = 210
    Height = 49
    Cursor = crHandPoint
    Caption = 'Pr'#243'ximo Pagamento'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 16
    OnClick = Btn_ProximoPGClick
  end
  object MEdit_DataPG: TMaskEdit
    Left = 191
    Top = 392
    Width = 124
    Height = 32
    BevelInner = bvNone
    BorderStyle = bsNone
    CharCase = ecUpperCase
    EditMask = '99/99/9999;1;_'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    MaxLength = 10
    ParentColor = True
    ParentFont = False
    TabOrder = 11
    Text = '  /  /    '
    OnExit = MEdit_DataPGExit
  end
  object CBox_CSSerie: TComboBox
    Left = 9
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
    TabOrder = 4
    OnEnter = CBox_CSSerieEnter
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
    Left = 161
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
    OnEnter = CBox_CSTurmaEnter
    Items.Strings = (
      'A'
      'B'
      'C'
      'D'
      'E')
  end
  object CBox_CSTurno: TComboBox
    Left = 248
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
    TabOrder = 6
    OnEnter = CBox_CSTurnoEnter
    Items.Strings = (
      'MANH'#195
      'TARDE'
      'NOITE')
  end
  object BtnGeral: TBitBtn
    Left = 481
    Top = 82
    Width = 110
    Height = 23
    Cursor = crHandPoint
    Caption = 'Exibir Geral'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = BtnGeralClick
    NumGlyphs = 4
  end
  object CBox_Mes: TComboBox
    Left = 337
    Top = 83
    Width = 136
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    BevelOuter = bvRaised
    Style = csDropDownList
    CharCase = ecLowerCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier'
    Font.Style = [fsBold]
    ItemHeight = 13
    ParentFont = False
    TabOrder = 7
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
  object CBox_Desconto: TComboBox
    Left = 8
    Top = 394
    Width = 46
    Height = 32
    BevelInner = bvLowered
    BevelKind = bkTile
    BevelOuter = bvRaised
    Style = csDropDownList
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 24
    ParentFont = False
    TabOrder = 10
    OnEnter = CBox_DescontoEnter
    Items.Strings = (
      '0'
      '3'
      '5')
  end
  object IBQuery_PGParcelas: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    BufferChunks = 6
    CachedUpdates = True
    SQL.Strings = (
      'select * from CARNE'
      'where MATRICULA = '#39'0'#39
      'order by DATA_VENCIMENTO')
    Left = 136
    Top = 248
    object IBQuery_PGParcelasCOD_CARN: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'COD_CARN'
      Origin = '"CARNE"."COD_CARN"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBQuery_PGParcelasNUMERO_DOC: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Documento'
      FieldName = 'NUMERO_DOC'
      Origin = '"CARNE"."NUMERO_DOC"'
      Required = True
      Size = 17
    end
    object IBQuery_PGParcelasMATRICULA: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Matr'#237'cula'
      FieldName = 'MATRICULA'
      Origin = '"CARNE"."MATRICULA"'
      Size = 16
    end
    object IBQuery_PGParcelasANO_LETIVO: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Ano Letivo'
      FieldName = 'ANO_LETIVO'
      Origin = '"CARNE"."ANO_LETIVO"'
      Size = 4
    end
    object IBQuery_PGParcelasNOME_RESP: TIBStringField
      DisplayLabel = 'Respons'#225'vel'
      FieldName = 'NOME_RESP'
      Origin = '"CARNE"."NOME_RESP"'
      Size = 50
    end
    object IBQuery_PGParcelasNOME_ALUNO: TIBStringField
      DisplayLabel = 'Aluno(a)'
      FieldName = 'NOME_ALUNO'
      Origin = '"CARNE"."NOME_ALUNO"'
      Size = 50
    end
    object IBQuery_PGParcelasTURMA: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Turma'
      FieldName = 'TURMA'
      Origin = '"CARNE"."TURMA"'
      Size = 10
    end
    object IBQuery_PGParcelasTURNO: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Turno'
      FieldName = 'TURNO'
      Origin = '"CARNE"."TURNO"'
      Size = 5
    end
    object IBQuery_PGParcelasCURSO: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Curso'
      FieldName = 'CURSO'
      Origin = '"CARNE"."CURSO"'
      Size = 21
    end
    object IBQuery_PGParcelasSERIE: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIE'
      Origin = '"CARNE"."SERIE"'
      Size = 30
    end
    object IBQuery_PGParcelasMES: TIBStringField
      DisplayLabel = 'M'#234's'
      FieldName = 'MES'
      Origin = '"CARNE"."MES"'
      Size = 10
    end
    object IBQuery_PGParcelasDATA_VENCIMENTO: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'Vencimento'
      FieldName = 'DATA_VENCIMENTO'
      Origin = '"CARNE"."DATA_VENCIMENTO"'
    end
    object IBQuery_PGParcelasDATA_PAGAMENTO: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'Pagamento'
      FieldName = 'DATA_PAGAMENTO'
      Origin = '"CARNE"."DATA_PAGAMENTO"'
    end
    object IBQuery_PGParcelasVALOR_MENSAL: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR_MENSAL'
      Origin = '"CARNE"."VALOR_MENSAL"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_PGParcelasVALOR_ACRESC: TIBBCDField
      DisplayLabel = 'Acr'#233'scimo'
      FieldName = 'VALOR_ACRESC'
      Origin = '"CARNE"."VALOR_ACRESC"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_PGParcelasVALOR_DESCON: TIBBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'VALOR_DESCON'
      Origin = '"CARNE"."VALOR_DESCON"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_PGParcelasNUMERO_PARCELA: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Mensalidade'
      FieldName = 'NUMERO_PARCELA'
      Origin = '"CARNE"."NUMERO_PARCELA"'
      Size = 5
    end
    object IBQuery_PGParcelasSITUACAO_PARCELA: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'SITUACAO_PARCELA'
      Origin = '"CARNE"."SITUACAO_PARCELA"'
      Size = 9
    end
    object IBQuery_PGParcelasVALOR_APAGAR: TIBBCDField
      DisplayLabel = 'A Pagar'
      FieldName = 'VALOR_APAGAR'
      Origin = '"CARNE"."VALOR_APAGAR"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_PGParcelasVALOR_PAGO: TIBBCDField
      DisplayLabel = 'Pago'
      FieldName = 'VALOR_PAGO'
      Origin = '"CARNE"."VALOR_PAGO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_PGParcelasVALOR_PENDENTE: TIBBCDField
      DisplayLabel = 'Restante'
      FieldName = 'VALOR_PENDENTE'
      Origin = '"CARNE"."VALOR_PENDENTE"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_PGParcelasTOTAL_PAGO: TIBBCDField
      DisplayLabel = 'Total Pago'
      FieldName = 'TOTAL_PAGO'
      Origin = '"CARNE"."TOTAL_PAGO"'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object DS_PGParcelas: TDataSource
    DataSet = IBQuery_PGParcelas
    Left = 136
    Top = 280
  end
  object DataSource_Carne: TDataSource
    DataSet = Dm.IBDS_CARNE
    Left = 216
    Top = 272
  end
end
