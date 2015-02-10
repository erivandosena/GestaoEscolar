object FrmInsereAluno: TFrmInsereAluno
  Left = 16
  Top = 104
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Manuten'#231#227'o de Boletim'
  ClientHeight = 159
  ClientWidth = 792
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
  object Bevel1: TBevel
    Left = 10
    Top = 80
    Width = 772
    Height = 65
  end
  object DBText1: TDBText
    Left = 16
    Top = 120
    Width = 65
    Height = 19
    AutoSize = True
    DataField = 'CURSO'
    DataSource = DataSource1
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object DBText2: TDBText
    Left = 320
    Top = 120
    Width = 65
    Height = 19
    AutoSize = True
    DataField = 'SERIE'
    DataSource = DataSource1
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object DBText3: TDBText
    Left = 568
    Top = 120
    Width = 65
    Height = 19
    AutoSize = True
    DataField = 'TURNO'
    DataSource = DataSource1
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object DBText4: TDBText
    Left = 728
    Top = 120
    Width = 50
    Height = 19
    DataField = 'TURMA'
    DataSource = DataSource1
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Panel1: TPanel
    Left = 10
    Top = 11
    Width = 671
    Height = 55
    TabOrder = 0
    object Label4: TLabel
      Left = 8
      Top = 8
      Width = 78
      Height = 13
      Caption = 'Localizar por:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 104
      Top = 8
      Width = 42
      Height = 16
      Caption = 'S'#233'rie:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 256
      Top = 8
      Width = 49
      Height = 16
      Caption = 'Turma:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 344
      Top = 8
      Width = 45
      Height = 16
      Caption = 'Turno:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ComboBox1: TComboBox
      Left = 8
      Top = 24
      Width = 90
      Height = 23
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
      OnChange = ComboBox1Change
      OnEnter = ComboBox1Enter
      OnKeyPress = ComboBox1KeyPress
      Items.Strings = (
        'MATR'#205'CULA'
        'ALUNO(A)'
        'S'#201'RIE')
    end
    object Edit1: TEdit
      Left = 104
      Top = 24
      Width = 553
      Height = 24
      BevelInner = bvLowered
      BevelKind = bkTile
      BevelOuter = bvRaised
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Courier'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      Visible = False
      OnChange = Edit1Change
      OnKeyPress = Edit1KeyPress
      OnKeyUp = Edit1KeyUp
    end
    object CBox_Serie: TComboBox
      Left = 104
      Top = 24
      Width = 145
      Height = 24
      BevelInner = bvLowered
      BevelKind = bkTile
      BevelOuter = bvRaised
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 16
      ParentFont = False
      TabOrder = 1
      OnEnter = CBox_SerieEnter
      OnKeyPress = CBox_SerieKeyPress
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
    object CBox_Turma: TComboBox
      Left = 256
      Top = 24
      Width = 80
      Height = 24
      BevelInner = bvLowered
      BevelKind = bkTile
      BevelOuter = bvRaised
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 16
      ParentFont = False
      TabOrder = 2
      OnEnter = CBox_TurmaEnter
      OnKeyPress = CBox_TurmaKeyPress
      Items.Strings = (
        'A'
        'B'
        'C'
        'D'
        'E')
    end
    object CBox_Turno: TComboBox
      Left = 344
      Top = 24
      Width = 80
      Height = 24
      BevelInner = bvLowered
      BevelKind = bkTile
      BevelOuter = bvRaised
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 16
      ParentFont = False
      TabOrder = 3
      OnEnter = CBox_TurnoEnter
      OnKeyPress = CBox_TurnoKeyPress
      Items.Strings = (
        'MANH'#195
        'TARDE'
        'NOITE')
    end
  end
  object BitBtn1: TBitBtn
    Left = 687
    Top = 27
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
    TabOrder = 1
    OnClick = BitBtn1Click
    NumGlyphs = 4
  end
  object DBGrid_InseriAluno: TDBGrid
    Left = 18
    Top = 89
    Width = 757
    Height = 25
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnKeyPress = DBGrid_InseriAlunoKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'NOME_ALUNO'
        Title.Caption = 'Nome do(a) Aluno(a)'
        Width = 592
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'MATRICULA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Width = 112
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ANO_LETIVO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Width = 30
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = IBQuery_InseriAluno
    OnStateChange = DataSource1StateChange
    Left = 152
    Top = 104
  end
  object IBQuery_InseriAluno: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    SQL.Strings = (
      
        'select MATRICULA, NOME_ALUNO, ANO_LETIVO, CURSO, SERIE, TURNO, T' +
        'URMA, SEXO, DATA_NASCIMENTO, NOME_PAI, NOME_MAE, NOME_RESP, TEL_' +
        'RESP, CPF_RESP from MATRICUL')
    Left = 184
    Top = 104
  end
end
