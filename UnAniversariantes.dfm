object FrmAniversariantes: TFrmAniversariantes
  Left = 212
  Top = 142
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Aniversariantes'
  ClientHeight = 425
  ClientWidth = 792
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
  object BtnImprimir: TBitBtn
    Left = 570
    Top = 386
    Width = 119
    Height = 25
    Cursor = crHandPoint
    Caption = 'Im&primir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BtnImprimirClick
    NumGlyphs = 4
  end
  object Btn_Fechar: TBitBtn
    Left = 700
    Top = 386
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
    TabOrder = 2
    OnClick = Btn_FecharClick
    NumGlyphs = 4
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 776
    Height = 357
    Color = clWhite
    DataSource = Ds_Aniv
    FixedColor = clInactiveBorder
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
  end
  object GroupBox2: TGroupBox
    Left = 11
    Top = 375
    Width = 446
    Height = 41
    Caption = 'Classe de aniversariantes:'
    TabOrder = 3
    object CB_ClasseAnin: TComboBox
      Left = 8
      Top = 14
      Width = 225
      Height = 21
      AutoComplete = False
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
      Text = 'ALUNO ANIVERSARIANDO HOJE'
      OnChange = CB_ClasseAninChange
      OnKeyPress = CB_ClasseAninKeyPress
      Items.Strings = (
        'ALUNO ANIVERSARIANDO HOJE'
        'ALUNO'
        'PAI'
        'M'#195'E'
        'RESPONS'#193'VEL')
    end
    object Btn_Consulta: TBitBtn
      Left = 360
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Consultar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Btn_ConsultaClick
    end
    object DatasAnin: TDateTimePicker
      Left = 248
      Top = 14
      Width = 97
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      Date = 38752.000000000000000000
      Format = 'MMMM'
      Time = 38752.000000000000000000
      DateMode = dmUpDown
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  object Ds_Aniv: TDataSource
    DataSet = IBQuery_Aniv
    Left = 160
    Top = 208
  end
  object IBQuery_Aniv: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    CachedUpdates = True
    SQL.Strings = (
      'select DISTINCT'
      
        'extract(day from DATA_NASCIMENTO) as dia, extract(month from DAT' +
        'A_NASCIMENTO) as mes,'
      
        'DATA_NASCIMENTO, NOME_ALUNO, NOME_PAI, NOME_MAE, NOME_RESP, TEL_' +
        'ALUNO, ANO_LETIVO from ALUNOS'
      'where ANO_LETIVO = '#39'2005'#39' AND DATA_NASCIMENTO is not null and'
      'EXTRACT(MONTH FROM DATA_NASCIMENTO) = '#39'3'#39' AND '
      
        'exists ( select MATRICULA, ANO_LETIVO from MATRICUL where ANO_LE' +
        'TIVO = '#39'2005'#39')'
      'order by 2,1')
    Filtered = True
    Left = 160
    Top = 160
    object IBQuery_AnivDATA_NASCIMENTO: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'Dia / M'#234's'
      DisplayWidth = 10
      FieldName = 'DATA_NASCIMENTO'
      Origin = '"ALUNOS"."DATA_NASCIMENTO"'
    end
    object IBQuery_AnivNOME_ALUNO: TIBStringField
      DisplayLabel = 'Aluno(a)'
      DisplayWidth = 50
      FieldName = 'NOME_ALUNO'
      Origin = '"ALUNOS"."NOME_ALUNO"'
      Size = 50
    end
    object IBQuery_AnivNOME_PAI: TIBStringField
      DisplayLabel = 'Pai'
      DisplayWidth = 50
      FieldName = 'NOME_PAI'
      Origin = '"ALUNOS"."NOME_PAI"'
      Size = 50
    end
    object IBQuery_AnivNOME_MAE: TIBStringField
      DisplayLabel = 'M'#227'e'
      DisplayWidth = 50
      FieldName = 'NOME_MAE'
      Origin = '"ALUNOS"."NOME_MAE"'
      Size = 50
    end
    object IBQuery_AnivNOME_RESP: TIBStringField
      DisplayLabel = 'Respons'#225'vel'
      DisplayWidth = 50
      FieldName = 'NOME_RESP'
      Origin = '"ALUNOS"."NOME_RESP"'
      Size = 50
    end
    object IBQuery_AnivTEL_ALUNO: TIBStringField
      DisplayLabel = 'Telefone'
      DisplayWidth = 20
      FieldName = 'TEL_ALUNO'
      Origin = '"ALUNOS"."TEL_ALUNO"'
    end
  end
  object MainMenu1: TMainMenu
    Left = 160
    Top = 128
    object Arquivo1: TMenuItem
      Caption = 'Menu'
      ShortCut = 123
      Visible = False
      OnClick = Btn_FecharClick
      object Fechar1: TMenuItem
        Caption = 'Fechar'
        ShortCut = 122
        OnClick = Fechar1Click
      end
    end
  end
  object IBQuery_Aniv_Resp: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    CachedUpdates = True
    SQL.Strings = (
      ''
      'select DISTINCT'
      
        'extract(day from data_nasc_resp) as dia, extract(month from data' +
        '_nasc_resp) as mes,'
      
        'DATA_NASC_RESP, NOME_RESP, TEL_RESP, ANO_LETIVO, NOME_ALUNO from' +
        ' ALUNOS'
      'where ANO_LETIVO = '#39'2005'#39' AND data_nasc_resp is not null and'
      'EXTRACT(MONTH FROM data_nasc_resp) = '#39'3'#39' AND'
      
        'exists ( select MATRICULA, ANO_LETIVO from MATRICUL where NOME_R' +
        'ESP <> NOME_PAI AND NOME_RESP <> NOME_MAE AND ANO_LETIVO = '#39'2005' +
        #39')'
      'order by 2,1')
    Filtered = True
    Left = 280
    Top = 160
    object IBQuery_Aniv_RespDATA_NASC_RESP: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'Dia / M'#234's'
      DisplayWidth = 10
      FieldName = 'DATA_NASC_RESP'
      Origin = '"ALUNOS"."DATA_NASC_RESP"'
    end
    object IBQuery_Aniv_RespNOME_RESP: TIBStringField
      DisplayLabel = 'Respons'#225'vel'
      DisplayWidth = 89
      FieldName = 'NOME_RESP'
      Origin = '"ALUNOS"."NOME_RESP"'
      Size = 50
    end
    object IBQuery_Aniv_RespTEL_RESP: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Telefone'
      FieldName = 'TEL_RESP'
      Origin = '"ALUNOS"."TEL_RESP"'
    end
    object IBQuery_Aniv_RespNOME_ALUNO: TIBStringField
      DisplayLabel = 'Aluno(a)'
      FieldName = 'NOME_ALUNO'
      Origin = '"ALUNOS"."NOME_ALUNO"'
      Size = 50
    end
  end
  object Ds_Aniv_Resp: TDataSource
    DataSet = IBQuery_Aniv_Resp
    Left = 280
    Top = 208
  end
  object Ds_Aniv_Pai: TDataSource
    DataSet = IBQuery_Aniv_Pai
    Left = 200
    Top = 208
  end
  object IBQuery_Aniv_Pai: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    CachedUpdates = True
    SQL.Strings = (
      'select DISTINCT'
      
        'extract(day from data_nasc_pai) as dia, extract(month from data_' +
        'nasc_pai) as mes,'
      
        'DATA_NASC_PAI, NOME_PAI, TEL_PAI, ANO_LETIVO, NOME_ALUNO from AL' +
        'UNOS where ANO_LETIVO = '#39'2005'#39' AND data_nasc_pai is not null and'
      'EXTRACT(MONTH FROM data_nasc_pai) = '#39'3'#39' AND'
      
        'exists ( select MATRICULA, ANO_LETIVO from MATRICUL where NOME_p' +
        'ai <> NOME_RESP AND ANO_LETIVO = '#39'2005'#39')'
      'order by 2,1')
    Filtered = True
    Left = 200
    Top = 160
    object IBQuery_Aniv_PaiDATA_NASC_PAI: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'Dia / M'#234's'
      DisplayWidth = 10
      FieldName = 'DATA_NASC_PAI'
      Origin = '"ALUNOS"."DATA_NASC_PAI"'
    end
    object IBQuery_Aniv_PaiNOME_PAI: TIBStringField
      DisplayLabel = 'Pai'
      DisplayWidth = 89
      FieldName = 'NOME_PAI'
      Origin = '"ALUNOS"."NOME_PAI"'
      Size = 50
    end
    object IBQuery_Aniv_PaiTEL_PAI: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Telefone'
      DisplayWidth = 20
      FieldName = 'TEL_PAI'
      Origin = '"ALUNOS"."TEL_PAI"'
    end
    object IBQuery_Aniv_PaiNOME_ALUNO: TIBStringField
      DisplayLabel = 'Aluno(a)'
      FieldName = 'NOME_ALUNO'
      Origin = '"ALUNOS"."NOME_ALUNO"'
      Size = 50
    end
  end
  object IBQuery_Aniv_Mae: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    CachedUpdates = True
    SQL.Strings = (
      'select DISTINCT'
      
        'extract(day from data_nasc_mae) as dia, extract(month from data_' +
        'nasc_mae) as mes,'
      
        'DATA_NASC_MAE, NOME_MAE, TEL_MAE, ANO_LETIVO, NOME_ALUNO from AL' +
        'UNOS'
      'where ANO_LETIVO = '#39'2005'#39' AND data_nasc_mae is not null and'
      'EXTRACT(MONTH FROM data_nasc_mae) = '#39'3'#39' AND'
      
        'exists ( select MATRICULA, ANO_LETIVO from MATRICUL where NOME_M' +
        'AE <> NOME_RESP AND ANO_LETIVO = '#39'2005'#39')'
      'order by 2,1'
      '')
    Filtered = True
    Left = 240
    Top = 160
    object IBQuery_Aniv_MaeDATA_NASC_MAE: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'Dia / M'#234's'
      DisplayWidth = 10
      FieldName = 'DATA_NASC_MAE'
      Origin = '"ALUNOS"."DATA_NASC_MAE"'
    end
    object IBQuery_Aniv_MaeNOME_MAE: TIBStringField
      DisplayLabel = 'M'#227'e'
      DisplayWidth = 89
      FieldName = 'NOME_MAE'
      Origin = '"ALUNOS"."NOME_MAE"'
      Size = 50
    end
    object IBQuery_Aniv_MaeTEL_MAE: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Telefone'
      DisplayWidth = 20
      FieldName = 'TEL_MAE'
      Origin = '"ALUNOS"."TEL_MAE"'
    end
    object IBQuery_Aniv_MaeNOME_ALUNO: TIBStringField
      DisplayLabel = 'Aluno(a)'
      FieldName = 'NOME_ALUNO'
      Origin = '"ALUNOS"."NOME_ALUNO"'
      Size = 50
    end
  end
  object Ds_Aniv_Mae: TDataSource
    DataSet = IBQuery_Aniv_Mae
    Left = 240
    Top = 208
  end
end
