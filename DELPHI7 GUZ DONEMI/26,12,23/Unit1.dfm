object Form1: TForm1
  Left = 694
  Top = 307
  Width = 725
  Height = 502
  Caption = 'Form1'
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 24
    Top = 32
    Width = 249
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 20
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 24
    Top = 64
    Width = 249
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 20
    TabOrder = 1
  end
  object ComboBox1: TComboBox
    Left = 24
    Top = 96
    Width = 257
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    Sorted = True
    TabOrder = 2
    OnClick = ComboBox1Click
    Items.Strings = (
      'ANTALYA'
      'ISPARTA'
      'SAMSUN')
  end
  object ComboBox2: TComboBox
    Left = 24
    Top = 128
    Width = 257
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    Sorted = True
    TabOrder = 3
  end
  object CheckBox1: TCheckBox
    Left = 16
    Top = 160
    Width = 97
    Height = 17
    Caption = #214#286'RENC'#304
    TabOrder = 4
    OnClick = CheckBox1Click
  end
  object CheckBox2: TCheckBox
    Left = 16
    Top = 184
    Width = 97
    Height = 17
    Caption = #199'ALI'#350'AN'
    TabOrder = 5
    OnClick = CheckBox2Click
  end
  object CheckBox3: TCheckBox
    Left = 16
    Top = 208
    Width = 97
    Height = 17
    Caption = 'EMEKL'#304
    TabOrder = 6
    OnClick = CheckBox3Click
  end
  object Button1: TButton
    Left = 112
    Top = 160
    Width = 137
    Height = 81
    Caption = 'EKLE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = Button1Click
  end
  object ListBox1: TListBox
    Left = 296
    Top = 32
    Width = 361
    Height = 209
    ItemHeight = 13
    TabOrder = 8
  end
  object Button2: TButton
    Left = 568
    Top = 376
    Width = 137
    Height = 81
    Caption = #199'IKI'#350
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = Button2Click
  end
end
