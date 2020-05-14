object Form1: TForm1
  Left = 192
  Top = 124
  Width = 561
  Height = 311
  Caption = 'Program Menampilkan Data Pegawai'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 56
    Width = 64
    Height = 13
    Caption = 'No Pegawai :'
  end
  object Label2: TLabel
    Left = 56
    Top = 88
    Width = 34
    Height = 13
    Caption = 'Nama :'
  end
  object Label3: TLabel
    Left = 56
    Top = 120
    Width = 71
    Height = 13
    Caption = 'Tanggal Lahir :'
  end
  object Label4: TLabel
    Left = 56
    Top = 152
    Width = 70
    Height = 13
    Caption = 'Jenis Kelamin :'
  end
  object DBEditNoPeg: TDBEdit
    Left = 144
    Top = 56
    Width = 121
    Height = 21
    DataField = 'NoPeg'
    DataSource = DataSourcePribadi
    ReadOnly = True
    TabOrder = 0
  end
  object DBEditNamaPeg: TDBEdit
    Left = 144
    Top = 88
    Width = 241
    Height = 21
    DataField = 'NamaPeg'
    DataSource = DataSourcePribadi
    ReadOnly = True
    TabOrder = 1
  end
  object DBEditTglLahir: TDBEdit
    Left = 144
    Top = 120
    Width = 121
    Height = 21
    DataField = 'TglLahir'
    DataSource = DataSourcePribadi
    ReadOnly = True
    TabOrder = 2
  end
  object ButtonPertama: TButton
    Left = 440
    Top = 8
    Width = 83
    Height = 25
    Caption = '&Pertama'
    TabOrder = 3
    OnClick = ButtonPertamaClick
  end
  object ButtonTerakhir: TButton
    Left = 440
    Top = 40
    Width = 83
    Height = 25
    Caption = '&Terakhir'
    TabOrder = 4
    OnClick = ButtonTerakhirClick
  end
  object ButtonBerikutnya: TButton
    Left = 440
    Top = 72
    Width = 83
    Height = 25
    Caption = '&Berikutnya'
    TabOrder = 5
    OnClick = ButtonBerikutnyaClick
  end
  object ButtonSebelumnya: TButton
    Left = 440
    Top = 104
    Width = 83
    Height = 25
    Caption = '&Sebelumnya'
    TabOrder = 6
    OnClick = ButtonSebelumnyaClick
  end
  object ButtonTambah: TButton
    Left = 440
    Top = 144
    Width = 83
    Height = 25
    Caption = 'T&ambah'
    TabOrder = 7
    OnClick = ButtonTambahClick
  end
  object ButtonBatal: TButton
    Left = 440
    Top = 176
    Width = 83
    Height = 25
    Caption = 'Bata&l'
    TabOrder = 8
    OnClick = ButtonBatalClick
  end
  object ButtonSimpan: TButton
    Left = 440
    Top = 208
    Width = 83
    Height = 25
    Caption = 'S&impan'
    TabOrder = 9
    OnClick = ButtonSimpanClick
  end
  object ButtonHapus: TButton
    Left = 440
    Top = 240
    Width = 83
    Height = 25
    Caption = '&Hapus'
    TabOrder = 10
    OnClick = ButtonHapusClick
  end
  object DBRGKelamin: TDBRadioGroup
    Left = 144
    Top = 152
    Width = 121
    Height = 65
    DataField = 'Kelamin'
    DataSource = DataSourcePribadi
    Items.Strings = (
      'Pria'
      'Wanita')
    ReadOnly = True
    TabOrder = 11
    Values.Strings = (
      'True'
      'False')
  end
  object TablePribadi: TTable
    Active = True
    OnCalcFields = TablePribadiCalcFields
    DatabaseName = 'Latihan'
    TableName = 'Pribadi.db'
    Left = 56
    Top = 8
    object TablePribadiNoPeg: TStringField
      FieldName = 'NoPeg'
      Size = 5
    end
    object TablePribadiNamaPeg: TStringField
      FieldName = 'NamaPeg'
      Size = 25
    end
    object TablePribadiTglLahir: TDateField
      FieldName = 'TglLahir'
    end
    object TablePribadiKelamin: TBooleanField
      FieldName = 'Kelamin'
    end
    object TablePribadiJenisKelamin: TStringField
      FieldKind = fkCalculated
      FieldName = 'JenisKelamin'
      Size = 6
      Calculated = True
    end
  end
  object DataSourcePribadi: TDataSource
    DataSet = TablePribadi
    Left = 96
    Top = 8
  end
end
