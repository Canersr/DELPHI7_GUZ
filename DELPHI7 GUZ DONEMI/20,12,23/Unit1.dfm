object Form1: TForm1
  Left = 192
  Top = 112
  Width = 752
  Height = 563
  Caption = 'Form1'
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
    Left = 24
    Top = 144
    Width = 5
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 24
    Top = 72
    Width = 145
    Height = 21
    CharCase = ecUpperCase
    Color = clYellow
    MaxLength = 25
    TabOrder = 1
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 24
    Top = 32
    Width = 145
    Height = 21
    CharCase = ecUpperCase
    Color = clYellow
    MaxLength = 30
    TabOrder = 0
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 24
    Top = 104
    Width = 145
    Height = 21
    Color = clPurple
    MaxLength = 6
    TabOrder = 2
    OnKeyPress = Edit3KeyPress
  end
  object Button1: TButton
    Left = 192
    Top = 32
    Width = 153
    Height = 97
    Caption = 'verileri g'#246'ster'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 192
    Top = 144
    Width = 153
    Height = 65
    Caption = 'SISTEMI KAPAT'
    TabOrder = 4
  end
  object Button3: TButton
    Left = 192
    Top = 224
    Width = 161
    Height = 73
    Caption = 'form 2 yi a'#231' '
    TabOrder = 5
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 472
    Top = 264
  end
end
