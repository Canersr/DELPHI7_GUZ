object Form1: TForm1
  Left = 889
  Top = 128
  Width = 474
  Height = 563
  Caption = 'Form1'
  Color = 12615680
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 120
    Top = 224
    Width = 169
    Height = 105
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 441
    Height = 177
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
  end
  object Timer1: TTimer
    Interval = 1
    Left = 416
    Top = 256
  end
  object ADOTable1: TADOTable
    Active = True
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=bilgiler.accdb;Per' +
      'sist Security Info=False'
    CursorType = ctStatic
    TableName = 'Tablo1'
    Left = 280
    Top = 104
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 312
    Top = 104
  end
end
