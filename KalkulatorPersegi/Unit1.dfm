object Form1: TForm1
  Left = 63
  Top = 115
  Width = 306
  Height = 209
  Caption = 'Kelompok Persegi'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 273
    Height = 121
    Caption = 'HITUNG LUAS DAN KELILING PERSEGI'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 25
      Height = 20
      Caption = 'Sisi'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 56
      Width = 35
      Height = 20
      Caption = 'Luas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 88
      Width = 49
      Height = 20
      Caption = 'Keliling'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object sisi: TEdit
      Left = 64
      Top = 24
      Width = 65
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '0'
    end
    object hitung: TButton
      Left = 192
      Top = 24
      Width = 67
      Height = 24
      Caption = 'HITUNG'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = hitungClick
    end
    object box: TComboBox
      Left = 136
      Top = 24
      Width = 49
      Height = 24
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 1
      Text = 'cm'
      Items.Strings = (
        'mm'
        'cm'
        'dm'
        'm'
        'dam'
        'hm'
        'km')
    end
    object keliling: TEdit
      Left = 64
      Top = 88
      Width = 195
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object luas: TEdit
      Left = 64
      Top = 56
      Width = 195
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
  end
  object hapus: TButton
    Left = 8
    Top = 136
    Width = 81
    Height = 25
    Caption = 'Hapus'
    TabOrder = 1
    OnClick = hapusClick
  end
  object tentang: TButton
    Left = 104
    Top = 136
    Width = 81
    Height = 25
    Caption = 'Tentang'
    TabOrder = 2
    OnClick = tentangClick
  end
  object keluar: TButton
    Left = 200
    Top = 136
    Width = 83
    Height = 25
    Caption = 'Keluar'
    TabOrder = 3
    OnClick = keluarClick
  end
end
