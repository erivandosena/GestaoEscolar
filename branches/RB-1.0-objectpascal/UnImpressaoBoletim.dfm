object FrmImpressaoBoletim: TFrmImpressaoBoletim
  Left = 499
  Top = 124
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Impress'#227'o de Boletim'
  ClientHeight = 351
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
  OnPaint = FormPaint
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 10
    Top = 11
    Width = 771
    Height = 55
    TabOrder = 0
    object Label4: TLabel
      Left = 8
      Top = 10
      Width = 82
      Height = 13
      Caption = 'Listar boletim por:'
    end
    object Label5: TLabel
      Left = 106
      Top = 10
      Width = 97
      Height = 13
      Caption = 'Entre com os dados:'
    end
    object Label1: TLabel
      Left = 610
      Top = 10
      Width = 31
      Height = 13
      Caption = 'Turno:'
    end
    object label2: TLabel
      Left = 690
      Top = 10
      Width = 33
      Height = 13
      Caption = 'Turma:'
    end
    object CBox_Selecao: TComboBox
      Left = 8
      Top = 24
      Width = 90
      Height = 23
      AutoDropDown = True
      AutoCloseUp = True
      BevelInner = bvLowered
      BevelKind = bkTile
      BevelOuter = bvRaised
      Style = csDropDownList
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemHeight = 15
      ParentFont = False
      TabOrder = 0
      OnKeyPress = CBox_SelecaoKeyPress
      Items.Strings = (
        'ALUNO(A)'
        'MATR'#205'CULA'
        'CURSO'
        'S'#201'RIE')
    end
    object CBox_Turno: TComboBox
      Left = 610
      Top = 24
      Width = 70
      Height = 23
      AutoDropDown = True
      AutoCloseUp = True
      BevelInner = bvLowered
      BevelKind = bkTile
      BevelOuter = bvRaised
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemHeight = 15
      ParentFont = False
      TabOrder = 2
      OnEnter = CBox_TurnoEnter
      OnKeyPress = CBox_TurnoKeyPress
      Items.Strings = (
        'MANH'#195
        'TARDE'
        'NOITE')
    end
    object CBox_Turma: TComboBox
      Left = 690
      Top = 24
      Width = 70
      Height = 23
      AutoDropDown = True
      AutoCloseUp = True
      BevelInner = bvLowered
      BevelKind = bkTile
      BevelOuter = bvRaised
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemHeight = 15
      ParentFont = False
      TabOrder = 3
      OnEnter = CBox_TurmaEnter
      OnKeyPress = CBox_TurmaKeyPress
      Items.Strings = (
        'A'
        'B'
        'C'
        'D'
        'E')
    end
    object CBox: TComboBox
      Left = 104
      Top = 24
      Width = 495
      Height = 23
      AutoDropDown = True
      AutoCloseUp = True
      BevelInner = bvLowered
      BevelKind = bkTile
      BevelOuter = bvRaised
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemHeight = 15
      ParentFont = False
      TabOrder = 1
      OnEnter = CBoxEnter
      OnKeyPress = CBoxKeyPress
    end
  end
  object Btn_Imprimir: TBitBtn
    Left = 595
    Top = 315
    Width = 90
    Height = 25
    Cursor = crHandPoint
    Caption = '&Imprimir'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Btn_ImprimirClick
    NumGlyphs = 2
  end
  object Btn_Fechar: TBitBtn
    Left = 693
    Top = 315
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
    TabOrder = 3
    OnClick = Btn_FecharClick
    NumGlyphs = 4
  end
  object DBGrid_ListaBoletim: TDBGrid
    Left = 8
    Top = 72
    Width = 771
    Height = 233
    DataSource = Ds_BolImpressao
    FixedColor = cl3DLight
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnKeyPress = DBGrid_ListaBoletimKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'NOME_ALUNO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CURSO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SERIE'
        Width = 109
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TURNO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TURMA'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ANO_LETIVO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MATRICULA'
        Width = 133
        Visible = True
      end>
  end
  object Ds_BolImpressao: TDataSource
    DataSet = IBQuery_BolImpressao
    Left = 248
    Top = 48
  end
  object IBQuery_BolImpressao: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    ObjectView = True
    CachedUpdates = True
    SQL.Strings = (
      'select * from BOLETIM')
    Left = 288
    Top = 48
    object IBQuery_BolImpressaoCOD_BOLE: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'COD_BOLE'
      Origin = '"BOLETIM"."COD_BOLE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBQuery_BolImpressaoMATRICULA: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Matr'#237'cula'
      FieldName = 'MATRICULA'
      Origin = '"BOLETIM"."MATRICULA"'
      Size = 17
    end
    object IBQuery_BolImpressaoNOME_ALUNO: TIBStringField
      DisplayLabel = 'Aluno(a)'
      FieldName = 'NOME_ALUNO'
      Origin = '"BOLETIM"."NOME_ALUNO"'
      Size = 50
    end
    object IBQuery_BolImpressaoANO_LETIVO: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Ano Letivo'
      FieldName = 'ANO_LETIVO'
      Origin = '"BOLETIM"."ANO_LETIVO"'
      Size = 4
    end
    object IBQuery_BolImpressaoCURSO: TIBStringField
      DisplayLabel = 'Curso'
      FieldName = 'CURSO'
      Origin = '"BOLETIM"."CURSO"'
      Size = 21
    end
    object IBQuery_BolImpressaoSERIE: TIBStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIE'
      Origin = '"BOLETIM"."SERIE"'
      Size = 30
    end
    object IBQuery_BolImpressaoTURNO: TIBStringField
      DisplayLabel = 'Turno'
      FieldName = 'TURNO'
      Origin = '"BOLETIM"."TURNO"'
      Size = 5
    end
    object IBQuery_BolImpressaoTURMA: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Turma'
      FieldName = 'TURMA'
      Origin = '"BOLETIM"."TURMA"'
      Size = 10
    end
    object IBQuery_BolImpressaoSEXO: TIBStringField
      DisplayLabel = 'Sexo'
      FieldName = 'SEXO'
      Origin = '"BOLETIM"."SEXO"'
      Size = 9
    end
    object IBQuery_BolImpressaoDATA_NASCIMENTO: TDateTimeField
      DisplayLabel = 'Data Nascimento'
      FieldName = 'DATA_NASCIMENTO'
      Origin = '"BOLETIM"."DATA_NASCIMENTO"'
    end
    object IBQuery_BolImpressaoNOME_PAI: TIBStringField
      DisplayLabel = 'Pai'
      FieldName = 'NOME_PAI'
      Origin = '"BOLETIM"."NOME_PAI"'
      Size = 50
    end
    object IBQuery_BolImpressaoNOME_MAE: TIBStringField
      DisplayLabel = 'M'#227'e'
      FieldName = 'NOME_MAE'
      Origin = '"BOLETIM"."NOME_MAE"'
      Size = 50
    end
    object IBQuery_BolImpressaoNOME_RESP: TIBStringField
      DisplayLabel = 'Respons'#225'vel'
      FieldName = 'NOME_RESP'
      Origin = '"BOLETIM"."NOME_RESP"'
      Size = 50
    end
    object IBQuery_BolImpressaoTEL_RESP: TIBStringField
      DisplayLabel = 'Tel. Respons'#225'vel'
      FieldName = 'TEL_RESP'
      Origin = '"BOLETIM"."TEL_RESP"'
    end
    object IBQuery_BolImpressaoCPF_RESP: TIBStringField
      DisplayLabel = 'CPF do Respons'#225'vel'
      FieldName = 'CPF_RESP'
      Origin = '"BOLETIM"."CPF_RESP"'
      Size = 14
    end
  end
end
