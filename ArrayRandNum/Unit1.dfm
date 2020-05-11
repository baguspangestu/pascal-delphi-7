object Form1: TForm1
  Left = 192
  Top = 125
  BorderStyle = bsSingle
  Caption = 'Array - Random Array'
  ClientHeight = 481
  ClientWidth = 337
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox3: TGroupBox
    Left = 8
    Top = 144
    Width = 321
    Height = 329
    Caption = 'ELEMEN'
    TabOrder = 0
    object Label10: TLabel
      Left = 8
      Top = 24
      Width = 77
      Height = 13
      Caption = 'Semua Elemen :'
    end
    object AllLab: TLabel
      Left = 89
      Top = 24
      Width = 6
      Height = 13
      Caption = '0'
    end
    object Label11: TLabel
      Left = 112
      Top = 24
      Width = 78
      Height = 13
      Caption = 'Elemen Negatif :'
    end
    object NegLab: TLabel
      Left = 192
      Top = 24
      Width = 6
      Height = 13
      Caption = '0'
    end
    object Label12: TLabel
      Left = 216
      Top = 24
      Width = 72
      Height = 13
      Caption = 'Elemen Positif :'
    end
    object PosLab: TLabel
      Left = 289
      Top = 24
      Width = 6
      Height = 13
      Caption = '0'
    end
    object AllMem: TMemo
      Left = 8
      Top = 40
      Width = 97
      Height = 281
      Lines.Strings = (
        'Memo1')
      ReadOnly = True
      TabOrder = 0
    end
    object MaxMem: TMemo
      Left = 216
      Top = 40
      Width = 97
      Height = 281
      Lines.Strings = (
        'Memo3')
      ReadOnly = True
      TabOrder = 1
    end
    object MinMem: TMemo
      Left = 112
      Top = 40
      Width = 97
      Height = 281
      Lines.Strings = (
        'Memo2')
      ReadOnly = True
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox
    Left = 208
    Top = 8
    Width = 121
    Height = 129
    Caption = 'HASIL'
    TabOrder = 1
    object SumLab: TLabel
      Left = 73
      Top = 24
      Width = 12
      Height = 13
      Caption = ': 0'
    end
    object AveLab: TLabel
      Left = 73
      Top = 48
      Width = 12
      Height = 13
      Caption = ': 0'
    end
    object MinLab: TLabel
      Left = 73
      Top = 72
      Width = 12
      Height = 13
      Caption = ': 0'
    end
    object MaxLab: TLabel
      Left = 73
      Top = 96
      Width = 12
      Height = 13
      Caption = ': 0'
    end
    object Label13: TLabel
      Left = 16
      Top = 24
      Width = 24
      Height = 13
      Caption = 'Total'
    end
    object Label14: TLabel
      Left = 16
      Top = 48
      Width = 44
      Height = 13
      Caption = 'Rata-rata'
    end
    object Label15: TLabel
      Left = 16
      Top = 72
      Width = 38
      Height = 13
      Caption = 'Terkecil'
    end
    object Label16: TLabel
      Left = 16
      Top = 96
      Width = 42
      Height = 13
      Caption = 'Terbesar'
    end
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 193
    Height = 129
    Caption = 'RANGE'
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 58
      Height = 13
      Caption = 'Range Min :'
    end
    object Label2: TLabel
      Left = 16
      Top = 56
      Width = 61
      Height = 13
      Caption = 'Range Max :'
    end
    object Edit2: TEdit
      Left = 96
      Top = 56
      Width = 73
      Height = 21
      TabOrder = 0
      Text = '99'
    end
    object Edit1: TEdit
      Left = 96
      Top = 24
      Width = 73
      Height = 21
      TabOrder = 1
      Text = '-99'
    end
    object Reset: TButton
      Left = 96
      Top = 88
      Width = 75
      Height = 25
      Caption = 'Reset'
      TabOrder = 2
      OnClick = ResetClick
    end
    object Hitung: TButton
      Left = 16
      Top = 88
      Width = 75
      Height = 25
      Caption = 'Hitung'
      Default = True
      TabOrder = 3
      OnClick = HitungClick
    end
  end
end
