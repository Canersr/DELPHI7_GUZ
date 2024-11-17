object Form1: TForm1
  Left = 324
  Top = 130
  Width = 979
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 961
    Height = 313
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Edit1: TEdit
    Left = 32
    Top = 328
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 32
    Top = 360
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 40
    Top = 408
    Width = 75
    Height = 25
    Caption = 'ara'
    TabOrder = 3
  end
  object Edit3: TEdit
    Left = 176
    Top = 328
    Width = 121
    Height = 21
    Color = clYellow
    ReadOnly = True
    TabOrder = 4
  end
  object Edit4: TEdit
    Left = 176
    Top = 360
    Width = 121
    Height = 21
    Color = clYellow
    ReadOnly = True
    TabOrder = 5
  end
  object Edit5: TEdit
    Left = 176
    Top = 392
    Width = 121
    Height = 21
    Color = clYellow
    ReadOnly = True
    TabOrder = 6
  end
  object Edit6: TEdit
    Left = 176
    Top = 424
    Width = 121
    Height = 21
    Color = clYellow
    ReadOnly = True
    TabOrder = 7
  end
  object ADOQuery1: TADOQuery
    Active = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\User\Deskt' +
      'op\27.03.24\bilgiler.mdb.mdb;Persist Security Info=False'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Tablo1')
    Left = 400
    Top = 128
    object ADOQuery1ADI: TWideStringField
      FieldName = 'ADI'
      Size = 255
    end
    object ADOQuery1SOYADI: TWideStringField
      FieldName = 'SOYADI'
      Size = 255
    end
    object ADOQuery1MEMLEKET: TWideStringField
      FieldName = 'MEMLEKET'
      Size = 255
    end
    object ADOQuery1GELIR: TWideStringField
      FieldName = 'GELIR'
      Size = 255
    end
    object ADOQuery1GIDER: TWideStringField
      FieldName = 'GIDER'
      Size = 255
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 432
    Top = 128
  end
end
