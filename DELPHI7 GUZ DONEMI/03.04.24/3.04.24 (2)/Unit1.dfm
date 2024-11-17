object Form1: TForm1
  Left = 272
  Top = 132
  Width = 703
  Height = 564
  Caption = 'Form1'
  Color = 16744448
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 408
    Width = 5
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object ListBox1: TListBox
    Left = 0
    Top = 8
    Width = 201
    Height = 385
    ItemHeight = 13
    Sorted = True
    TabOrder = 0
    OnClick = ListBox1Click
  end
  object ListBox2: TListBox
    Left = 480
    Top = 8
    Width = 185
    Height = 481
    ItemHeight = 13
    TabOrder = 1
  end
  object Button1: TButton
    Left = 264
    Top = 72
    Width = 177
    Height = 105
    Caption = 'EKLE'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 256
    Top = 224
    Width = 177
    Height = 121
    Caption = 'T'#220'M'#220'N'#220' EKLE'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Timer1: TTimer
    Interval = 1
    OnTimer = Timer1Timer
    Left = 216
    Top = 24
  end
end
