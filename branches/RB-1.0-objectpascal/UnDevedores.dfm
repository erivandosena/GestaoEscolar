object FrmDevedores: TFrmDevedores
  Left = 93
  Top = 135
  BiDiMode = bdLeftToRight
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Inadimpl'#234'ncias'
  ClientHeight = 425
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 8
    Top = 4
    Width = 70
    Height = 13
    Caption = 'Data Inicial:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 101
    Top = 4
    Width = 63
    Height = 13
    Caption = 'Data Final:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 8
    Top = 56
    Width = 58
    Height = 13
    Caption = 'Cliente(s):'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 408
    Top = 56
    Width = 149
    Height = 13
    Caption = 'Mensalidade(s) em atraso:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Btn_Fechar: TBitBtn
    Left = 693
    Top = 17
    Width = 83
    Height = 25
    Cursor = crHandPoint
    Caption = '&Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = Btn_FecharClick
    NumGlyphs = 4
  end
  object Data1: TDateTimePicker
    Left = 8
    Top = 20
    Width = 85
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BevelWidth = 0
    Date = 38188.732800115740000000
    Time = 38188.732800115740000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Data2: TDateTimePicker
    Left = 101
    Top = 20
    Width = 85
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BevelWidth = 0
    Date = 38188.732803240740000000
    Time = 38188.732803240740000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DBGrid_Clientes: TDBGrid
    Left = 8
    Top = 72
    Width = 393
    Height = 313
    DataSource = Ds_AlunMat
    FixedColor = cl3DLight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnCellClick = DBGrid_ClientesCellClick
    OnKeyDown = DBGrid_ClientesKeyDown
    OnKeyUp = DBGrid_ClientesKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'MATRICULA'
        Title.Caption = 'Matr'#237'cula'
        Width = 100
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
        FieldName = 'NOME_RESP'
        Title.Caption = 'Respons'#225'vel'
        Visible = True
      end>
  end
  object DBGrid_Parcelas: TDBGrid
    Left = 408
    Top = 72
    Width = 377
    Height = 313
    DataSource = Ds_Parcelas
    FixedColor = cl3DLight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'NUMERO_PARCELA'
        Title.Alignment = taCenter
        Title.Caption = 'Mensalidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_VENCIMENTO'
        Title.Alignment = taCenter
        Title.Caption = 'Vencimento'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_MENSAL'
        Title.Caption = 'Valor'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO_DOC'
        Title.Alignment = taCenter
        Title.Caption = 'Documento N'#186
        Visible = True
      end>
  end
  object Btn_Exibir: TBitBtn
    Left = 200
    Top = 17
    Width = 89
    Height = 25
    Cursor = crHandPoint
    Caption = 'Consultar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Btn_ExibirClick
    NumGlyphs = 4
  end
  object Btn_Imprimir: TBitBtn
    Left = 606
    Top = 17
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'Im&primir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Btn_ImprimirClick
    NumGlyphs = 4
  end
  object IBQuery_AlunMat: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    DataSource = Dm.Ds_MATRICULAS
    SQL.Strings = (
      
        'select MATRICULA, NOME_ALUNO, NOME_RESP, TEL_RESP, SERIE, ENDERE' +
        'CO_RESP, BAIRRO_RESP, CIDADE_RESP, ANO_LETIVO  from MATRICUL'
      'where MATRICULA = '#39'0'#39
      'order by NOME_ALUNO')
    Left = 360
    Top = 120
    object IBQuery_AlunMatMATRICULA: TIBStringField
      Alignment = taCenter
      FieldName = 'MATRICULA'
      Origin = '"MATRICUL"."MATRICULA"'
      Size = 17
    end
    object IBQuery_AlunMatNOME_ALUNO: TIBStringField
      FieldName = 'NOME_ALUNO'
      Origin = '"MATRICUL"."NOME_ALUNO"'
      Size = 50
    end
    object IBQuery_AlunMatNOME_RESP: TIBStringField
      FieldName = 'NOME_RESP'
      Origin = '"MATRICUL"."NOME_RESP"'
      Size = 50
    end
    object IBQuery_AlunMatTEL_RESP: TIBStringField
      FieldName = 'TEL_RESP'
      Origin = '"MATRICUL"."TEL_RESP"'
    end
    object IBQuery_AlunMatSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"MATRICUL"."SERIE"'
      Size = 30
    end
    object IBQuery_AlunMatANO_LETIVO: TIBStringField
      FieldName = 'ANO_LETIVO'
      Origin = '"MATRICUL"."ANO_LETIVO"'
      Size = 4
    end
    object IBQuery_AlunMatENDERECO_RESP: TIBStringField
      FieldName = 'ENDERECO_RESP'
      Origin = '"MATRICUL"."ENDERECO_RESP"'
      Size = 50
    end
    object IBQuery_AlunMatBAIRRO_RESP: TIBStringField
      FieldName = 'BAIRRO_RESP'
      Origin = '"MATRICUL"."BAIRRO_RESP"'
      Size = 30
    end
    object IBQuery_AlunMatCIDADE_RESP: TIBStringField
      FieldName = 'CIDADE_RESP'
      Origin = '"MATRICUL"."CIDADE_RESP"'
      Size = 25
    end
  end
  object Ds_AlunMat: TDataSource
    DataSet = IBQuery_AlunMat
    Left = 360
    Top = 160
  end
  object Ds_Parcelas: TDataSource
    DataSet = IBQuery_Men
    Left = 416
    Top = 160
  end
  object IBQuery_Men: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    DataSource = Dm.Ds_IBDS_CARNE
    SQL.Strings = (
      
        'select MATRICULA, ANO_LETIVO, NOME_RESP, NOME_ALUNO, TURMA, TURM' +
        'A, TURNO, CURSO, SERIE, DATA_VENCIMENTO, VALOR_MENSAL, NUMERO_PA' +
        'RCELA, MES, SITUACAO_PARCELA, NUMERO_DOC from CARNE'
      'where MATRICULA = '#39'0'#39' '
      'order by DATA_VENCIMENTO')
    Left = 416
    Top = 120
    object IBQuery_MenMATRICULA: TIBStringField
      FieldName = 'MATRICULA'
      Origin = '"CARNE"."MATRICULA"'
      Size = 17
    end
    object IBQuery_MenANO_LETIVO: TIBStringField
      FieldName = 'ANO_LETIVO'
      Origin = '"CARNE"."ANO_LETIVO"'
      Size = 4
    end
    object IBQuery_MenNOME_RESP: TIBStringField
      FieldName = 'NOME_RESP'
      Origin = '"CARNE"."NOME_RESP"'
      Size = 50
    end
    object IBQuery_MenNOME_ALUNO: TIBStringField
      FieldName = 'NOME_ALUNO'
      Origin = '"CARNE"."NOME_ALUNO"'
      Size = 50
    end
    object IBQuery_MenTURMA: TIBStringField
      FieldName = 'TURMA'
      Origin = '"CARNE"."TURMA"'
      Size = 10
    end
    object IBQuery_MenTURMA1: TIBStringField
      FieldName = 'TURMA1'
      Origin = '"CARNE"."TURMA"'
      Size = 10
    end
    object IBQuery_MenTURNO: TIBStringField
      FieldName = 'TURNO'
      Origin = '"CARNE"."TURNO"'
      Size = 5
    end
    object IBQuery_MenCURSO: TIBStringField
      FieldName = 'CURSO'
      Origin = '"CARNE"."CURSO"'
      Size = 21
    end
    object IBQuery_MenSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"CARNE"."SERIE"'
      Size = 30
    end
    object IBQuery_MenDATA_VENCIMENTO: TDateTimeField
      Alignment = taCenter
      FieldName = 'DATA_VENCIMENTO'
      Origin = '"CARNE"."DATA_VENCIMENTO"'
    end
    object IBQuery_MenMES: TIBStringField
      FieldName = 'MES'
      Origin = '"CARNE"."MES"'
      Size = 10
    end
    object IBQuery_MenVALOR_MENSAL: TIBBCDField
      Alignment = taCenter
      FieldName = 'VALOR_MENSAL'
      Origin = '"CARNE"."VALOR_MENSAL"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_MenNUMERO_PARCELA: TIBStringField
      Alignment = taCenter
      FieldName = 'NUMERO_PARCELA'
      Origin = '"CARNE"."NUMERO_PARCELA"'
      Size = 5
    end
    object IBQuery_MenSITUACAO_PARCELA: TIBStringField
      FieldName = 'SITUACAO_PARCELA'
      Origin = '"CARNE"."SITUACAO_PARCELA"'
      Size = 9
    end
    object IBQuery_MenNUMERO_DOC: TIBStringField
      Alignment = taCenter
      FieldName = 'NUMERO_DOC'
      Origin = '"CARNE"."NUMERO_DOC"'
      Required = True
      Size = 17
    end
  end
end
