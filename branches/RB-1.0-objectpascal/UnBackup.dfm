object FrmBackup: TFrmBackup
  Left = 279
  Top = 165
  BorderIcons = [biHelp]
  BorderStyle = bsSingle
  Caption = 'C'#243'pia de Seguran'#231'a'
  ClientHeight = 165
  ClientWidth = 618
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 520
    Top = 0
    Width = 90
    Height = 25
    Cursor = crHandPoint
    Hint = 'Inicia o backup'
    Caption = '&Executar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = BitBtn1Click
    NumGlyphs = 2
  end
  object BitBtn3: TBitBtn
    Left = 520
    Top = 26
    Width = 90
    Height = 25
    Cursor = crHandPoint
    Hint = 'Restaura o backup'
    Caption = '&Restaurar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = BitBtn3Click
    NumGlyphs = 2
  end
  object BitBtn5: TBitBtn
    Left = 520
    Top = 131
    Width = 90
    Height = 25
    Cursor = crHandPoint
    Hint = 'Cancela o backup e fecha janela'
    Caption = '&Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    OnClick = BitBtn4Click
    NumGlyphs = 4
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 170
    Width = 603
    Height = 40
    Caption = 'Progresso da C'#243'pia de Seguran'#231'a'
    TabOrder = 7
    object ProgressBar1: TProgressBar
      Left = 8
      Top = 20
      Width = 587
      Height = 9
      TabOrder = 0
    end
  end
  object BitBtn4: TBitBtn
    Left = 520
    Top = 76
    Width = 90
    Height = 25
    Cursor = crHandPoint
    Hint = 'Restaura o backup'
    Caption = 'F&ormatar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = BitBtn34Click
  end
  object BitBtn2: TBitBtn
    Left = 520
    Top = 51
    Width = 90
    Height = 25
    Cursor = crHandPoint
    Caption = '&Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object CheckBox_BackupDiario: TCheckBox
    Left = 520
    Top = 107
    Width = 90
    Height = 17
    Caption = 'Backup Di'#225'rio'
    TabOrder = 5
    OnClick = CheckBox_BackupDiarioClick
  end
  object GroupBox2: TGroupBox
    Left = 9
    Top = 1
    Width = 505
    Height = 156
    Caption = 'Local da C'#243'pia de Seguran'#231'a'
    TabOrder = 0
    object Label1: TLabel
      Left = 212
      Top = 23
      Width = 234
      Height = 13
      Caption = 'E:\PROJETOS\versionados\Gees\fontes - C'#243'pia'
      Transparent = True
    end
    object DriveComboBox1: TDriveComboBox
      Left = 7
      Top = 20
      Width = 200
      Height = 19
      BevelInner = bvLowered
      BevelKind = bkTile
      BevelOuter = bvRaised
      DirList = DirectoryListBox1
      TabOrder = 1
      TextCase = tcUpperCase
      OnKeyPress = DriveComboBox1KeyPress
    end
    object DirectoryListBox1: TDirectoryListBox
      Left = 7
      Top = 45
      Width = 250
      Height = 87
      BevelInner = bvNone
      BevelOuter = bvNone
      DirLabel = Label1
      FileList = FileListBox1
      ItemHeight = 16
      PopupMenu = PopupMenu1
      TabOrder = 2
      OnKeyPress = DirectoryListBox1KeyPress
    end
    object FileListBox1: TFileListBox
      Left = 263
      Top = 45
      Width = 234
      Height = 87
      BevelInner = bvNone
      BevelOuter = bvNone
      ItemHeight = 13
      Mask = '*.bck'
      TabOrder = 0
      OnDblClick = BitBtn3Click
      OnKeyPress = FileListBox1KeyPress
    end
    object FileListBox: TListBox
      Left = 288
      Top = 66
      Width = 185
      Height = 57
      ItemHeight = 13
      Items.Strings = (
        'C:\Inforamos\Gees\GEES.FDB')
      TabOrder = 3
      Visible = False
    end
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'bck'
    FileName = 'Sgo_Copia_de_Seguranca.bck'
    Filter = 'Arquivos de Backup (*.bck)|*.bck'
    Title = 'Salvar C'#243'pia de Seguran'#231'a'
    Left = 312
    Top = 91
  end
  object PopupMenu1: TPopupMenu
    Left = 344
    Top = 88
    object OrigemPadrodaCpiadeSegurana1: TMenuItem
      Caption = '&Origem Padr'#227'o da C'#243'pia de Seguran'#231'a'
      OnClick = OrigemdoBackup1Click
    end
  end
  object MainMenu1: TMainMenu
    Left = 416
    Top = 88
    object Arquivo1: TMenuItem
      Caption = 'Menu'
      ShortCut = 123
      object OrigemPadrodaCpiadeSegurana2: TMenuItem
        Caption = 'Origem Padr'#227'o da C'#243'pia de Seguran'#231'a'
        OnClick = OrigemdoBackup1Click
      end
      object ExecurarCpiadesegurana1: TMenuItem
        Caption = 'Executar C'#243'pia de Seguran'#231'a'
        OnClick = BitBtn1Click
      end
      object Restaurar1: TMenuItem
        Caption = 'Restaurar C'#243'pia de Seguran'#231'a'
        OnClick = BitBtn3Click
      end
      object FormatarDisquete1: TMenuItem
        Caption = 'Formatar Disquete'
        OnClick = BitBtn34Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Fechar1: TMenuItem
        Caption = 'Fechar'
        ShortCut = 122
        OnClick = BitBtn4Click
      end
    end
  end
  object BackupFile1: TBackupFile
    Version = '3.00'
    BackupMode = bmIncremental
    CompressionLevel = clFastest
    RestoreMode = rmAll
    MaxSize = 0
    SetArchiveFlag = True
    OnProgress = BackupFile1Progress
    OnError = BackupFile1Error
    RestoreFullPath = False
    SaveFileID = False
    Left = 376
    Top = 88
  end
end
