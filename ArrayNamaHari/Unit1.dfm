object Form1: TForm1
  Left = 192
  Top = 125
  BorderStyle = bsSingle
  Caption = 'Nama Hari'
  ClientHeight = 74
  ClientWidth = 298
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
    Left = 16
    Top = 8
    Width = 41
    Height = 13
    Caption = 'Hari Ke :'
  end
  object Label2: TLabel
    Left = 16
    Top = 40
    Width = 56
    Height = 13
    Caption = 'Nama Hari :'
  end
  object nmhari: TEdit
    Left = 80
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object harike: TComboBox
    Left = 80
    Top = 8
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    Text = '1'
    Items.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7')
  end
  object sebutkan: TButton
    Left = 216
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Sebutkan'
    TabOrder = 2
    OnClick = sebutkanClick
  end
  object tutup: TButton
    Left = 216
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Tutup'
    TabOrder = 3
    OnClick = tutupClick
  end
end
