object FrmLocalizar: TFrmLocalizar
  Left = 277
  Top = 169
  BorderIcons = [biHelp]
  BorderStyle = bsSingle
  Caption = 'Localizar'
  ClientHeight = 260
  ClientWidth = 692
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 5
    Top = 89
    Width = 684
    Height = 166
    Shape = bsFrame
  end
  object DBGrid1: TDBGrid
    Left = 11
    Top = 95
    Width = 672
    Height = 154
    BorderStyle = bsNone
    Color = 16056308
    DataSource = DataSource1
    FixedColor = cl3DLight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnCellClick = DBGrid1CellClick
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    OnKeyDown = DBGrid1KeyDown
    OnKeyPress = DBGrid1KeyPress
    OnKeyUp = DBGrid1KeyDown
  end
  object Panel1: TPanel
    Left = 5
    Top = 4
    Width = 684
    Height = 82
    TabOrder = 0
    object Label5: TLabel
      Left = 10
      Top = 32
      Width = 97
      Height = 13
      Caption = 'Entre com os dados:'
    end
    object Bevel2: TBevel
      Left = 566
      Top = 8
      Width = 2
      Height = 65
    end
    object Edit1: TMaskEdit
      Left = 10
      Top = 48
      Width = 539
      Height = 21
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkTile
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      MaxLength = 14
      ParentFont = False
      TabOrder = 0
      OnChange = Edit1Change
      OnKeyPress = Edit1KeyPress
      OnKeyUp = Edit1KeyUp
    end
    object RadioButton1: TRadioButton
      Left = 10
      Top = 9
      Width = 73
      Height = 17
      Caption = '&Matr'#237'cula'
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = RadioButton1Click
      OnKeyPress = RadioButton1KeyPress
    end
    object RadioButton3: TRadioButton
      Left = 352
      Top = 9
      Width = 49
      Height = 17
      Caption = '&Pai'
      TabOrder = 3
      OnClick = RadioButton33Click
      OnKeyPress = RadioButton33KeyPress
    end
    object RadioButton4: TRadioButton
      Left = 504
      Top = 9
      Width = 41
      Height = 17
      Caption = '&M'#227'e'
      TabOrder = 4
      OnClick = RadioButton3Click
      OnKeyPress = RadioButton3KeyPress
    end
    object BitBtn2: TBitBtn
      Left = 589
      Top = 29
      Width = 75
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
      OnClick = BitBtn2Click
    end
    object RadioButton2: TRadioButton
      Left = 169
      Top = 8
      Width = 56
      Height = 17
      Caption = '&Nome'
      TabOrder = 2
      OnClick = RadioButton2Click
      OnKeyPress = RadioButton2KeyPress
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 192
    Top = 120
  end
  object IBQuery1: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    SQL.Strings = (
      'select MATRICULA, NOME_ALUNO, NOME_PAI, NOME_MAE from ALUNOS')
    Left = 224
    Top = 120
    object IBQuery1MATRICULA: TIBStringField
      DisplayLabel = 'Matr'#237'cula'
      FieldName = 'MATRICULA'
      Origin = '"ALUNOS"."MATRICULA"'
      Size = 17
    end
    object IBQuery1NOME_ALUNO: TIBStringField
      DisplayLabel = 'Aluno(a)'
      FieldName = 'NOME_ALUNO'
      Origin = '"ALUNOS"."NOME_ALUNO"'
      Size = 50
    end
    object IBQuery1NOME_PAI: TIBStringField
      DisplayLabel = 'Nome do Pai'
      FieldName = 'NOME_PAI'
      Origin = '"ALUNOS"."NOME_PAI"'
      Size = 50
    end
    object IBQuery1NOME_MAE: TIBStringField
      DisplayLabel = 'Nome da M'#227'e'
      FieldName = 'NOME_MAE'
      Origin = '"ALUNOS"."NOME_MAE"'
      Size = 50
    end
  end
  object MainMenu1: TMainMenu
    Left = 336
    Top = 40
    object Arquivo1: TMenuItem
      Caption = 'Menu'
      ShortCut = 123
      Visible = False
      object Fechar1: TMenuItem
        Caption = 'Fechar'
        ShortCut = 122
        OnClick = Fechar1Click
      end
    end
  end
  object DataSource2: TDataSource
    DataSet = Dm.IBDS_ALUNOS
    Left = 192
    Top = 152
  end
end
