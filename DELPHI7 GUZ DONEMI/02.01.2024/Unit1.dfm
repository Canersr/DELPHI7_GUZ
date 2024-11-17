object Form1: TForm1
  Left = 191
  Top = 120
  Width = 979
  Height = 563
  Caption = 'Form1'
  Color = clSkyBlue
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
    Left = 40
    Top = 8
    Width = 209
    Height = 21
    MaxLength = 20
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 40
    Top = 40
    Width = 209
    Height = 21
    MaxLength = 20
    TabOrder = 1
  end
  object ComboBox1: TComboBox
    Left = 40
    Top = 72
    Width = 209
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ParentShowHint = False
    ShowHint = False
    Sorted = True
    TabOrder = 2
    OnClick = ComboBox1Click
    Items.Strings = (
      'ANTALYA'
      'ISPARTA'
      'SAMSUN')
  end
  object ComboBox2: TComboBox
    Left = 40
    Top = 104
    Width = 209
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ParentShowHint = False
    ShowHint = False
    Sorted = True
    TabOrder = 3
  end
  object CheckBox1: TCheckBox
    Left = 40
    Top = 136
    Width = 97
    Height = 17
    Caption = #214#286'RENC'#304
    TabOrder = 4
    OnClick = CheckBox1Click
  end
  object CheckBox2: TCheckBox
    Left = 40
    Top = 160
    Width = 97
    Height = 17
    Caption = #199'ALI'#350'AN'
    TabOrder = 5
    OnClick = CheckBox2Click
  end
  object CheckBox3: TCheckBox
    Left = 40
    Top = 184
    Width = 97
    Height = 17
    Caption = 'EMEKL'#304
    TabOrder = 6
    OnClick = CheckBox3Click
  end
  object Button1: TButton
    Left = 144
    Top = 128
    Width = 105
    Height = 73
    Caption = 'EKLE'
    TabOrder = 7
    OnClick = Button1Click
  end
  object ListBox1: TListBox
    Left = 264
    Top = 8
    Width = 449
    Height = 193
    ItemHeight = 13
    TabOrder = 8
  end
  object Button2: TButton
    Left = 760
    Top = 424
    Width = 113
    Height = 73
    Caption = #199'IKI'#350
    TabOrder = 9
    OnClick = Button2Click
  end
end
