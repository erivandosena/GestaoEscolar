object FrmBoletim: TFrmBoletim
  Left = 293
  Top = 257
  BorderIcons = [biHelp]
  BorderStyle = bsSingle
  Caption = 'Boletim Escolar'
  ClientHeight = 560
  ClientWidth = 1065
  Color = clMenu
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
  object Bevel1: TBevel
    Left = 8
    Top = 8
    Width = 777
    Height = 73
  end
  object Label13: TLabel
    Left = 16
    Top = 13
    Width = 100
    Height = 13
    Caption = 'Nome do(a) Aluno(a):'
  end
  object Label14: TLabel
    Left = 553
    Top = 47
    Width = 33
    Height = 13
    Caption = 'Turma:'
  end
  object Label30: TLabel
    Left = 441
    Top = 47
    Width = 31
    Height = 13
    Caption = 'Turno:'
  end
  object Label31: TLabel
    Left = 684
    Top = 48
    Width = 54
    Height = 13
    Caption = 'Ano Letivo:'
  end
  object Label34: TLabel
    Left = 528
    Top = 13
    Width = 48
    Height = 13
    Caption = 'Matr'#237'cula:'
  end
  object Label35: TLabel
    Left = 264
    Top = 47
    Width = 27
    Height = 13
    Caption = 'S'#233'rie:'
  end
  object Label36: TLabel
    Left = 15
    Top = 47
    Width = 30
    Height = 13
    Caption = 'Curso:'
  end
  object DBText2: TDBText
    Left = 528
    Top = 27
    Width = 60
    Height = 16
    AutoSize = True
    DataField = 'MATRICULA'
    DataSource = Dm.Ds_BOLETIM
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText3: TDBText
    Left = 15
    Top = 61
    Width = 60
    Height = 16
    AutoSize = True
    DataField = 'CURSO'
    DataSource = Dm.Ds_BOLETIM
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText4: TDBText
    Left = 264
    Top = 61
    Width = 60
    Height = 16
    AutoSize = True
    DataField = 'SERIE'
    DataSource = Dm.Ds_BOLETIM
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText5: TDBText
    Left = 441
    Top = 61
    Width = 60
    Height = 16
    AutoSize = True
    DataField = 'TURNO'
    DataSource = Dm.Ds_BOLETIM
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText6: TDBText
    Left = 553
    Top = 61
    Width = 60
    Height = 16
    AutoSize = True
    DataField = 'TURMA'
    DataSource = Dm.Ds_BOLETIM
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText7: TDBText
    Left = 684
    Top = 63
    Width = 60
    Height = 16
    AutoSize = True
    DataField = 'ANO_LETIVO'
    DataSource = Dm.Ds_BOLETIM
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText8: TDBText
    Left = 16
    Top = 27
    Width = 65
    Height = 19
    AutoSize = True
    DataField = 'NOME_ALUNO'
    DataSource = Dm.Ds_BOLETIM
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 560
    Top = 454
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
  object Label2: TLabel
    Left = 8
    Top = 454
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
  object Label3: TLabel
    Left = 684
    Top = 13
    Width = 27
    Height = 13
    Caption = 'Sexo:'
  end
  object DBText1: TDBText
    Left = 684
    Top = 27
    Width = 60
    Height = 16
    AutoSize = True
    DataField = 'SEXO'
    DataSource = Dm.Ds_BOLETIM
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel2: TPanel
    Left = 8
    Top = 498
    Width = 778
    Height = 44
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 14
    object SbExcluir: TBitBtn
      Left = 148
      Top = 5
      Width = 70
      Height = 35
      Cursor = crHandPoint
      Caption = '&Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = SbExcluirClick
    end
    object SbCancelar: TBitBtn
      Left = 218
      Top = 5
      Width = 70
      Height = 35
      Cursor = crHandPoint
      Caption = '&Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = SbCancelarClick
    end
    object SbNova: TBitBtn
      Left = 8
      Top = 5
      Width = 70
      Height = 35
      Cursor = crHandPoint
      Caption = 'No&vo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = SbNovaClick
    end
    object SbAnterior: TBitBtn
      Left = 448
      Top = 5
      Width = 70
      Height = 35
      Cursor = crHandPoint
      Caption = 'An&terior'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = SbAnteriorClick
    end
    object SbProxima: TBitBtn
      Left = 518
      Top = 5
      Width = 70
      Height = 35
      Cursor = crHandPoint
      Caption = 'P&r'#243'xima'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = SbProximaClick
      Layout = blGlyphRight
    end
    object SpeedButton1: TBitBtn
      Left = 698
      Top = 5
      Width = 70
      Height = 35
      Cursor = crHandPoint
      Caption = '&Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      OnClick = SpeedButton1Click
    end
    object SbAtualiza: TBitBtn
      Left = 358
      Top = 5
      Width = 70
      Height = 35
      Cursor = crHandPoint
      Caption = 'Atuali&zar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = SbAtualizaClick
    end
    object SbSalvar: TBitBtn
      Left = 78
      Top = 5
      Width = 70
      Height = 35
      Cursor = crHandPoint
      Caption = '&Salvar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = SbSalvarClick
    end
    object SbAlterar: TBitBtn
      Left = 288
      Top = 5
      Width = 70
      Height = 35
      Cursor = crHandPoint
      Caption = '&Alterar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = SbAlterarClick
    end
    object Btn_Imprimir: TBitBtn
      Left = 608
      Top = 5
      Width = 70
      Height = 35
      Cursor = crHandPoint
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = Btn_ImprimirClick
      Layout = blGlyphRight
    end
  end
  object DBGrid_Boletim: TDBGrid
    Left = 8
    Top = 131
    Width = 1049
    Height = 321
    Cursor = crMultiDrag
    DataSource = Ds_ExibeNotas
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgColLines, dgRowLines, dgTabs]
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid_BoletimDrawColumnCell
    OnKeyPress = DBGrid_BoletimKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'MATRICULA'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ANO_LETIVO'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'DISCIPLINA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        PickList.Strings = (
          '')
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 200
        Visible = True
      end
      item
        Color = 15661053
        Expanded = False
        FieldName = 'ETAPA_1_MAR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'AV1'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 26
        Visible = True
      end
      item
        Color = 15661053
        Expanded = False
        FieldName = 'ETAPA_1_ABR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'AV2'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 26
        Visible = True
      end
      item
        Color = 15661053
        Expanded = False
        FieldName = 'ETAPA_1_AV3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'AV3'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 26
        Visible = True
      end
      item
        Color = 16776176
        Expanded = False
        FieldName = 'ETAPA_1_M'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'M'
        Width = 26
        Visible = True
      end
      item
        Color = 15858417
        Expanded = False
        FieldName = 'ETAPA_1_R'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'R'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 26
        Visible = True
      end
      item
        Color = 15661053
        Expanded = False
        FieldName = 'ETAPA_2_MAI'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'AV1'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 26
        Visible = True
      end
      item
        Color = 15661053
        Expanded = False
        FieldName = 'ETAPA_2_JUN'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'AV2'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 26
        Visible = True
      end
      item
        Color = 15661053
        Expanded = False
        FieldName = 'ETAPA_2_AV3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'AV3'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 26
        Visible = True
      end
      item
        Color = 16776176
        Expanded = False
        FieldName = 'ETAPA_2_M'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'M'
        Width = 26
        Visible = True
      end
      item
        Color = 15858417
        Expanded = False
        FieldName = 'ETAPA_2_R'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'R'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 26
        Visible = True
      end
      item
        Color = 15661053
        Expanded = False
        FieldName = 'ETAPA_3_AGO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'AV1'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 26
        Visible = True
      end
      item
        Color = 15661053
        Expanded = False
        FieldName = 'ETAPA_3_SET'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'AV2'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 26
        Visible = True
      end
      item
        Color = 15661053
        Expanded = False
        FieldName = 'ETAPA_3_AV3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'AV3'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 26
        Visible = True
      end
      item
        Color = 16776176
        Expanded = False
        FieldName = 'ETAPA_3_M'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'M'
        Width = 26
        Visible = True
      end
      item
        Color = 15858417
        Expanded = False
        FieldName = 'ETAPA_3_R'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'R'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 26
        Visible = True
      end
      item
        Color = 15661053
        Expanded = False
        FieldName = 'ETAPA_4_OUT'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'AV1'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 26
        Visible = True
      end
      item
        Color = 15661053
        Expanded = False
        FieldName = 'ETAPA_4_NOV'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'AV2'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 26
        Visible = True
      end
      item
        Color = 15661053
        Expanded = False
        FieldName = 'ETAPA_4_AV3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'AV3'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 26
        Visible = True
      end
      item
        Color = 16776176
        Expanded = False
        FieldName = 'ETAPA_4_M'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'M'
        Width = 26
        Visible = True
      end
      item
        Color = 15858417
        Expanded = False
        FieldName = 'ETAPA_4_R'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'R'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 26
        Visible = True
      end
      item
        Color = 16776176
        Expanded = False
        FieldName = 'MEDIA_FINAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'MF'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 26
        Visible = True
      end
      item
        Color = 15794175
        Expanded = False
        FieldName = 'PROVAO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Prov'#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 47
        Visible = True
      end
      item
        Color = 15858417
        Expanded = False
        FieldName = 'PROVAO_R'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'RP'
        Width = 26
        Visible = True
      end
      item
        Color = 16776176
        Expanded = False
        FieldName = 'RESULTADO_FINAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Resultado Final'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FALTAS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'PONTOS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Visible = False
      end>
  end
  object BtnOk: TBitBtn
    Left = 748
    Top = 464
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
    TabOrder = 13
    OnClick = BtnOkClick
    NumGlyphs = 2
  end
  object Edit2: TEdit
    Left = 560
    Top = 468
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
  object Btn_1Etapa: TBitBtn
    Left = 211
    Top = 100
    Width = 82
    Height = 25
    Cursor = crHandPoint
    Caption = '1'#170' Etapa'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Btn_1EtapaClick
    Glyph.Data = {
      D6000000424DD60000000000000076000000280000000E0000000C0000000100
      04000000000060000000C40E0000C40E00001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      7700777777777777770077777777777777007777777777777700777777777777
      7700777777777777770077777777777777007777777777777700777777777777
      7700777777777777770077777777777777007777777777777700}
    Margin = 0
    Spacing = 7
  end
  object Btn_RemoveDisc: TBitBtn
    Left = 8
    Top = 100
    Width = 202
    Height = 25
    Cursor = crHandPoint
    Caption = 'Remove/Altera Disciplina'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = Btn_RemoveDiscClick
  end
  object Btn_2Etapa: TBitBtn
    Left = 352
    Top = 100
    Width = 82
    Height = 25
    Cursor = crHandPoint
    Caption = '2'#170' Etapa'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Btn_2EtapaClick
    Glyph.Data = {
      D6000000424DD60000000000000076000000280000000E0000000C0000000100
      04000000000060000000C40E0000C40E00001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      7700777777777777770077777777777777007777777777777700777777777777
      7700777777777777770077777777777777007777777777777700777777777777
      7700777777777777770077777777777777007777777777777700}
    Spacing = 7
  end
  object Btn_3Etapa: TBitBtn
    Left = 480
    Top = 100
    Width = 82
    Height = 25
    Cursor = crHandPoint
    Caption = '3'#170' Etapa'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = Btn_3EtapaClick
    Glyph.Data = {
      D6000000424DD60000000000000076000000280000000E0000000C0000000100
      04000000000060000000C40E0000C40E00001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      7700777777777777770077777777777777007777777777777700777777777777
      7700777777777777770077777777777777007777777777777700777777777777
      7700777777777777770077777777777777007777777777777700}
    Spacing = 7
  end
  object Btn_4Etapa: TBitBtn
    Left = 615
    Top = 100
    Width = 82
    Height = 25
    Cursor = crHandPoint
    Caption = '4'#170' Etapa'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = Btn_4EtapaClick
    Glyph.Data = {
      D6000000424DD60000000000000076000000280000000E0000000C0000000100
      04000000000060000000C40E0000C40E00001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      7700777777777777770077777777777777007777777777777700777777777777
      7700777777777777770077777777777777007777777777777700777777777777
      7700777777777777770077777777777777007777777777777700}
    Spacing = 7
  end
  object Btn_Provao: TBitBtn
    Left = 778
    Top = 100
    Width = 47
    Height = 25
    Cursor = crHandPoint
    Caption = 'Prov'#227'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = Btn_ProvaoClick
  end
  object RButton_1: TRadioButton
    Left = 217
    Top = 106
    Width = 14
    Height = 12
    Cursor = crHandPoint
    TabOrder = 1
  end
  object RButton_2: TRadioButton
    Left = 352
    Top = 106
    Width = 14
    Height = 12
    Cursor = crHandPoint
    TabOrder = 3
  end
  object CheckB_Faltas: TCheckBox
    Left = 791
    Top = 36
    Width = 80
    Height = 17
    Caption = 'Falta'
    TabOrder = 15
    OnClick = CheckB_FaltasClick
  end
  object CheckB_Pontos: TCheckBox
    Left = 877
    Top = 36
    Width = 80
    Height = 17
    Caption = 'Ponto'
    TabOrder = 16
    OnClick = CheckB_PontosClick
  end
  object RButton_3: TRadioButton
    Left = 490
    Top = 106
    Width = 14
    Height = 12
    Cursor = crHandPoint
    TabOrder = 5
  end
  object RButton_4: TRadioButton
    Left = 624
    Top = 106
    Width = 14
    Height = 12
    Cursor = crHandPoint
    TabOrder = 7
  end
  object Edit1: TComboBox
    Left = 9
    Top = 468
    Width = 527
    Height = 24
    BevelInner = bvLowered
    BevelKind = bkTile
    BevelOuter = bvRaised
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Courier'
    Font.Style = [fsBold]
    ItemHeight = 0
    ParentFont = False
    TabOrder = 11
    OnKeyDown = Edit1KeyDown
    OnKeyPress = Edit1KeyPress
    OnKeyUp = Edit1KeyUp
    OnSelect = Edit1Select
  end
  object CheckB_B: TCheckBox
    Left = 791
    Top = 13
    Width = 80
    Height = 17
    Caption = 'Bimestres'
    TabOrder = 17
    OnClick = CheckB_BClick
  end
  object CheckB_P: TCheckBox
    Left = 877
    Top = 12
    Width = 80
    Height = 17
    Caption = 'Prov'#227'o'
    TabOrder = 18
    OnClick = CheckB_PClick
  end
  object Btn_MediaMatJard: TBitBtn
    Left = 751
    Top = 100
    Width = 26
    Height = 25
    Cursor = crHandPoint
    Caption = 'MF'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 19
    OnClick = Btn_MediaMatJardClick
  end
  object Btn_MediaFin: TBitBtn
    Left = 751
    Top = 100
    Width = 26
    Height = 25
    Cursor = crHandPoint
    Caption = 'MF'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 20
    OnClick = Btn_MediaFinClick
  end
  object DS_Boletim: TDataSource
    DataSet = Dm.IBDS_BOLETIM
    OnStateChange = DS_BoletimStateChange
    Left = 145
    Top = 208
  end
  object IBDS_ExibeNotas: TIBDataSet
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    ObjectView = True
    AfterInsert = IBDS_ExibeNotasAfterInsert
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from NOTAS'
      'where'
      '  COD_NOTA = :OLD_COD_NOTA')
    InsertSQL.Strings = (
      'insert into NOTAS'
      
        '  (ANO_LETIVO, COD_BOLE, COD_NOTA, DISCIPLINA, DISTRIBUIDA, ETAP' +
        'A_1_ABR, '
      
        '   ETAPA_1_M, ETAPA_1_MAR, ETAPA_1_AV3, ETAPA_1_R, ETAPA_2_JUN, ' +
        'ETAPA_2_M, ETAPA_2_MAI, '
      
        '   ETAPA_2_R, ETAPA_2_AV3, ETAPA_3_AGO, ETAPA_3_M, ETAPA_3_R, ET' +
        'APA_3_SET, ETAPA_3_AV3, ETAPA_4_M, '
      
        '   ETAPA_4_NOV, ETAPA_4_OUT, ETAPA_4_R, ETAPA_4_AV3, FALTAS, MAT' +
        'RICULA, MEDIA_FINAL, '
      
        '   PONTOS, PROVAO, PROVAO_R, RESULTADO_FINAL, SERIE, TURMA, TURN' +
        'O)'
      'values'
      
        '  (:ANO_LETIVO, :COD_BOLE, :COD_NOTA, :DISCIPLINA, :DISTRIBUIDA,' +
        ' :ETAPA_1_ABR, '
      
        '   :ETAPA_1_M, :ETAPA_1_MAR, :ETAPA_1_AV3, :ETAPA_1_R, :ETAPA_2_' +
        'JUN, :ETAPA_2_M, :ETAPA_2_MAI, '
      
        '   :ETAPA_2_R, :ETAPA_2_AV3, :ETAPA_3_AGO, :ETAPA_3_M, :ETAPA_3_' +
        'R, :ETAPA_3_SET, :ETAPA_3_AV3, :ETAPA_4_M, '
      
        '   :ETAPA_4_NOV, :ETAPA_4_OUT, :ETAPA_4_R, :ETAPA_4_AV3, :FALTAS' +
        ', :MATRICULA, :MEDIA_FINAL, '
      
        '   :PONTOS, :PROVAO, :PROVAO_R, :RESULTADO_FINAL, :SERIE, :TURMA' +
        ', :TURNO)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_NOTA,'
      '  COD_BOLE,'
      '  MATRICULA,'
      '  ANO_LETIVO,'
      '  DISCIPLINA,'
      '  ETAPA_1_MAR,'
      '  ETAPA_1_ABR,'
      '  ETAPA_1_AV3'
      '  ETAPA_1_M,'
      '  ETAPA_1_R,'
      '  ETAPA_2_MAI,'
      '  ETAPA_2_JUN,'
      '  ETAPA_2_AV3,'
      '  ETAPA_2_M,'
      '  ETAPA_2_R,'
      '  ETAPA_3_AGO,'
      '  ETAPA_3_SET,'
      '  ETAPA_3_AV3,'
      '  ETAPA_3_M,'
      '  ETAPA_3_R,'
      '  ETAPA_4_OUT,'
      '  ETAPA_4_NOV,'
      '  ETAPA_4_AV3,'
      '  ETAPA_4_M,'
      '  ETAPA_4_R,'
      '  PROVAO,'
      '  PROVAO_R,'
      '  MEDIA_FINAL,'
      '  FALTAS,'
      '  PONTOS,'
      '  RESULTADO_FINAL,'
      '  SERIE,'
      '  TURMA,'
      '  TURNO,'
      '  DISTRIBUIDA'
      'from NOTAS '
      'where'
      '  COD_NOTA = :COD_NOTA')
    SelectSQL.Strings = (
      
        'select ANO_LETIVO, COD_BOLE, COD_NOTA, DISCIPLINA, DISTRIBUIDA, ' +
        'ETAPA_1_ABR, ETAPA_1_AV3, ETAPA_1_M, ETAPA_1_MAR, ETAPA_1_R, ETA' +
        'PA_2_AV3, ETAPA_2_JUN, ETAPA_2_M, ETAPA_2_MAI, ETAPA_2_R, ETAPA_' +
        '3_AGO, ETAPA_3_AV3, ETAPA_3_M, ETAPA_3_R, ETAPA_3_SET, ETAPA_4_A' +
        'V3, ETAPA_4_M, ETAPA_4_NOV, ETAPA_4_OUT, ETAPA_4_R, FALTAS, MATR' +
        'ICULA, MEDIA_FINAL, PONTOS, PROVAO, PROVAO_R, RESULTADO_FINAL, S' +
        'ERIE, TURMA, TURNO from NOTAS'
      'order by COD_NOTA, COD_BOLE')
    ModifySQL.Strings = (
      'update NOTAS'
      'set'
      '  ANO_LETIVO = :ANO_LETIVO,'
      '  COD_BOLE = :COD_BOLE,'
      '  COD_NOTA = :COD_NOTA,'
      '  DISCIPLINA = :DISCIPLINA,'
      '  DISTRIBUIDA = :DISTRIBUIDA,'
      '  ETAPA_1_ABR = :ETAPA_1_ABR,'
      '  ETAPA_1_MAR = :ETAPA_1_MAR,'
      '  ETAPA_1_AV3 =:ETAPA_1_AV3,'
      '  ETAPA_1_M = :ETAPA_1_M,'
      '  ETAPA_1_R = :ETAPA_1_R,'
      '  ETAPA_2_JUN = :ETAPA_2_JUN,'
      '  ETAPA_2_MAI = :ETAPA_2_MAI,'
      '  ETAPA_2_AV3 =:ETAPA_2_AV3,'
      '  ETAPA_2_M = :ETAPA_2_M,'
      '  ETAPA_2_R = :ETAPA_2_R,'
      '  ETAPA_3_AGO = :ETAPA_3_AGO,'
      '  ETAPA_3_SET = :ETAPA_3_SET,'
      '  ETAPA_3_AV3 =:ETAPA_3_AV3,'
      '  ETAPA_3_M = :ETAPA_3_M,'
      '  ETAPA_3_R = :ETAPA_3_R,'
      '  ETAPA_4_NOV = :ETAPA_4_NOV,'
      '  ETAPA_4_OUT = :ETAPA_4_OUT,'
      '  ETAPA_4_AV3 =:ETAPA_4_AV3,'
      '  ETAPA_4_M = :ETAPA_4_M,'
      '  ETAPA_4_R = :ETAPA_4_R,'
      '  FALTAS = :FALTAS,'
      '  MATRICULA = :MATRICULA,'
      '  MEDIA_FINAL = :MEDIA_FINAL,'
      '  PONTOS = :PONTOS,'
      '  PROVAO = :PROVAO,'
      '  PROVAO_R = :PROVAO_R,'
      '  RESULTADO_FINAL = :RESULTADO_FINAL,'
      '  SERIE = :SERIE,'
      '  TURMA = :TURMA,'
      '  TURNO = :TURNO'
      'where'
      '  COD_NOTA = :OLD_COD_NOTA')
    GeneratorField.ApplyEvent = gamOnPost
    Left = 24
    Top = 208
    object IBDS_ExibeNotasCOD_NOTA: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'COD_NOTA'
      Origin = '"NOTAS"."COD_NOTA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDS_ExibeNotasCOD_BOLE: TIntegerField
      DisplayLabel = 'C'#243'digo Boletim'
      FieldName = 'COD_BOLE'
      Origin = '"NOTAS"."COD_BOLE"'
      Required = True
    end
    object IBDS_ExibeNotasMATRICULA: TIBStringField
      DisplayLabel = 'Matr'#237'cula'
      FieldName = 'MATRICULA'
      Origin = '"NOTAS"."MATRICULA"'
      Size = 17
    end
    object IBDS_ExibeNotasANO_LETIVO: TIBStringField
      DisplayLabel = 'Ano Letivo'
      FieldName = 'ANO_LETIVO'
      Origin = '"NOTAS"."ANO_LETIVO"'
      Size = 4
    end
    object IBDS_ExibeNotasDISCIPLINA: TIBStringField
      DisplayLabel = 'Disciplina'
      FieldName = 'DISCIPLINA'
      Origin = '"NOTAS"."DISCIPLINA"'
      Size = 30
    end
    object IBDS_ExibeNotasETAPA_1_MAR: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Mar'
      FieldName = 'ETAPA_1_MAR'
      Origin = '"NOTAS"."ETAPA_1_MAR"'
      Size = 5
    end
    object IBDS_ExibeNotasETAPA_1_ABR: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Abr'
      FieldName = 'ETAPA_1_ABR'
      Origin = '"NOTAS"."ETAPA_1_ABR"'
      Size = 5
    end
    object IBDS_ExibeNotasETAPA_1_AV3: TIBStringField
      Alignment = taCenter
      FieldName = 'ETAPA_1_AV3'
      Origin = '"NOTAS"."ETAPA_1_AV3"'
      Size = 5
    end
    object IBDS_ExibeNotasETAPA_1_M: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'M1'#170
      FieldName = 'ETAPA_1_M'
      Origin = '"NOTAS"."ETAPA_1_M"'
      Size = 5
    end
    object IBDS_ExibeNotasETAPA_1_R: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'R1'#170
      FieldName = 'ETAPA_1_R'
      Origin = '"NOTAS"."ETAPA_1_R"'
      Size = 5
    end
    object IBDS_ExibeNotasETAPA_2_MAI: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Mai'
      FieldName = 'ETAPA_2_MAI'
      Origin = '"NOTAS"."ETAPA_2_MAI"'
      Size = 5
    end
    object IBDS_ExibeNotasETAPA_2_JUN: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Jun'
      FieldName = 'ETAPA_2_JUN'
      Origin = '"NOTAS"."ETAPA_2_JUN"'
      Size = 5
    end
    object IBDS_ExibeNotasETAPA_2_AV3: TIBStringField
      Alignment = taCenter
      FieldName = 'ETAPA_2_AV3'
      Origin = '"NOTAS"."ETAPA_2_AV3"'
      Size = 5
    end
    object IBDS_ExibeNotasETAPA_2_M: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'M2'#170
      FieldName = 'ETAPA_2_M'
      Origin = '"NOTAS"."ETAPA_2_M"'
      Size = 5
    end
    object IBDS_ExibeNotasETAPA_2_R: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'R2'#170
      FieldName = 'ETAPA_2_R'
      Origin = '"NOTAS"."ETAPA_2_R"'
      Size = 5
    end
    object IBDS_ExibeNotasETAPA_3_AGO: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Ago'
      FieldName = 'ETAPA_3_AGO'
      Origin = '"NOTAS"."ETAPA_3_AGO"'
      Size = 5
    end
    object IBDS_ExibeNotasETAPA_3_SET: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Set'
      FieldName = 'ETAPA_3_SET'
      Origin = '"NOTAS"."ETAPA_3_SET"'
      Size = 5
    end
    object IBDS_ExibeNotasETAPA_3_AV3: TIBStringField
      Alignment = taCenter
      FieldName = 'ETAPA_3_AV3'
      Origin = '"NOTAS"."ETAPA_3_AV3"'
      Size = 5
    end
    object IBDS_ExibeNotasETAPA_3_M: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'M3'#170
      FieldName = 'ETAPA_3_M'
      Origin = '"NOTAS"."ETAPA_3_M"'
      Size = 5
    end
    object IBDS_ExibeNotasETAPA_3_R: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'R3'#170
      FieldName = 'ETAPA_3_R'
      Origin = '"NOTAS"."ETAPA_3_R"'
      Size = 5
    end
    object IBDS_ExibeNotasETAPA_4_OUT: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Out'
      FieldName = 'ETAPA_4_OUT'
      Origin = '"NOTAS"."ETAPA_4_OUT"'
      Size = 5
    end
    object IBDS_ExibeNotasETAPA_4_NOV: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Nov'
      FieldName = 'ETAPA_4_NOV'
      Origin = '"NOTAS"."ETAPA_4_NOV"'
      Size = 5
    end
    object IBDS_ExibeNotasETAPA_4_AV3: TIBStringField
      Alignment = taCenter
      FieldName = 'ETAPA_4_AV3'
      Origin = '"NOTAS"."ETAPA_4_AV3"'
      Size = 5
    end
    object IBDS_ExibeNotasETAPA_4_M: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'M4'#170
      FieldName = 'ETAPA_4_M'
      Origin = '"NOTAS"."ETAPA_4_M"'
      Size = 5
    end
    object IBDS_ExibeNotasETAPA_4_R: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'R4'#170
      FieldName = 'ETAPA_4_R'
      Origin = '"NOTAS"."ETAPA_4_R"'
      Size = 5
    end
    object IBDS_ExibeNotasPROVAO: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Pro'
      FieldName = 'PROVAO'
      Origin = '"NOTAS"."PROVAO"'
      Size = 5
    end
    object IBDS_ExibeNotasPROVAO_R: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'R.F'
      FieldName = 'PROVAO_R'
      Origin = '"NOTAS"."PROVAO_R"'
      Size = 5
    end
    object IBDS_ExibeNotasMEDIA_FINAL: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'M.F'
      FieldName = 'MEDIA_FINAL'
      Origin = '"NOTAS"."MEDIA_FINAL"'
      Size = 5
    end
    object IBDS_ExibeNotasFALTAS: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Faltas'
      FieldName = 'FALTAS'
      Origin = '"NOTAS"."FALTAS"'
    end
    object IBDS_ExibeNotasPONTOS: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Pontos'
      FieldName = 'PONTOS'
      Origin = '"NOTAS"."PONTOS"'
      Size = 4
    end
    object IBDS_ExibeNotasSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"NOTAS"."SERIE"'
      Size = 30
    end
    object IBDS_ExibeNotasTURMA: TIBStringField
      FieldName = 'TURMA'
      Origin = '"NOTAS"."TURMA"'
      Size = 10
    end
    object IBDS_ExibeNotasTURNO: TIBStringField
      FieldName = 'TURNO'
      Origin = '"NOTAS"."TURNO"'
      Size = 5
    end
    object IBDS_ExibeNotasRESULTADO_FINAL: TIBStringField
      FieldName = 'RESULTADO_FINAL'
      Origin = '"NOTAS"."RESULTADO_FINAL"'
      Size = 11
    end
  end
  object Ds_ExibeNotas: TDataSource
    DataSet = IBDS_ExibeNotas
    OnStateChange = Ds_ExibeNotasStateChange
    Left = 56
    Top = 208
  end
  object IBQueryNumMatricula: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    CachedUpdates = True
    SQL.Strings = (
      'select MATRICULA, ANO_LETIVO from BOLETIM'
      'where ANO_LETIVO = '#39'+#39+AnoLetivo+#39+'#39' '
      'order by MATRICULA')
    Left = 24
    Top = 272
  end
  object IBQueryExibe_CODNOTA: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    CachedUpdates = True
    SQL.Strings = (
      'select max (COD_NOTA) from NOTAS')
    Left = 24
    Top = 240
  end
  object IBQuery_ApagaDisc: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    CachedUpdates = True
    Left = 24
    Top = 304
  end
  object IBQuery_Disciplinas: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    CachedUpdates = True
    SQL.Strings = (
      'select COD_NOTA, COD_BOLE, DISCIPLINA, ANO_LETIVO from NOTAS')
    Left = 104
    Top = 140
    object IBQuery_DisciplinasDISCIPLINA: TIBStringField
      FieldName = 'DISCIPLINA'
      Origin = '"NOTAS"."DISCIPLINA"'
      Size = 30
    end
  end
  object MainMenu1: TMainMenu
    Left = 352
    Top = 48
    object N1Etapa1: TMenuItem
      Caption = '1Etapa'
      ShortCut = 112
      Visible = False
      OnClick = Btn_1EtapaClick
    end
    object N2Etapa1: TMenuItem
      Caption = '2Etapa'
      ShortCut = 113
      Visible = False
      OnClick = Btn_2EtapaClick
    end
    object N3Etapa1: TMenuItem
      Caption = '3Etapa'
      ShortCut = 114
      Visible = False
      OnClick = Btn_3EtapaClick
    end
    object N4Etapa1: TMenuItem
      Caption = '4Etapa'
      ShortCut = 115
      Visible = False
      OnClick = Btn_4EtapaClick
    end
    object MF1: TMenuItem
      Caption = 'MF'
      ShortCut = 116
      Visible = False
    end
    object Provo1: TMenuItem
      Caption = 'Prov'#227'o'
      ShortCut = 117
      Visible = False
      OnClick = Btn_ProvaoClick
    end
  end
end
