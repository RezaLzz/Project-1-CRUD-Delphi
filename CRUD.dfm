object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 827
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lbl1: TLabel
    Left = 160
    Top = 64
    Width = 59
    Height = 15
    Caption = 'Id Nasabah'
  end
  object lbl2: TLabel
    Left = 160
    Top = 104
    Width = 81
    Height = 15
    Caption = 'Nama Nasabah'
  end
  object lbl3: TLabel
    Left = 160
    Top = 144
    Width = 87
    Height = 15
    Caption = 'Alamat Nasabah'
  end
  object edtID: TEdit
    Left = 296
    Top = 61
    Width = 201
    Height = 23
    TabOrder = 0
  end
  object edtNama: TEdit
    Left = 296
    Top = 101
    Width = 201
    Height = 23
    TabOrder = 1
  end
  object edtAlamat: TEdit
    Left = 296
    Top = 141
    Width = 201
    Height = 23
    TabOrder = 2
  end
  object btnSave: TButton
    Left = 264
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Save'
    TabOrder = 3
    OnClick = btnSaveClick
  end
  object btnUpdate: TButton
    Left = 376
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Update'
    TabOrder = 4
    OnClick = btnUpdateClick
  end
  object btnDelete: TButton
    Left = 488
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Delete'
    TabOrder = 5
    OnClick = btnDeleteClick
  end
  object dbgrd1: TDBGrid
    Left = 160
    Top = 280
    Width = 497
    Height = 120
    DataSource = ds1
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Zconnection1: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    Connected = True
    DisableSavepoints = False
    HostName = 'localhost'
    Port = 3306
    Database = 'db_bankcahaya_reza'
    User = 'root'
    Password = ''
    Protocol = 'mariadb'
    Left = 8
    Top = 24
  end
  object ZQuery1: TZQuery
    Connection = Zconnection1
    Active = True
    SQL.Strings = (
      'SELECT * FROM nasabah')
    Params = <>
    Left = 40
    Top = 24
  end
  object ds1: TDataSource
    DataSet = ZQuery1
    Left = 72
    Top = 24
  end
end
