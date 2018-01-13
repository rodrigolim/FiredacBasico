object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 265
  ClientWidth = 504
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 135
    Width = 504
    Height = 130
    Align = alBottom
    DataSource = DTS
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CLI_ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_NOME'
        Width = 210
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_CIDADE'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 104
    Width = 240
    Height = 25
    DataSource = DTS
    TabOrder = 1
  end
  object Button2: TButton
    Left = 416
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Tabela'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button1: TButton
    Left = 368
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 3
    OnClick = Button1Click
  end
  object QRY: TFDQuery
    Connection = DM.Con
    SQL.Strings = (
      'select CLI_ID, CLI_NOME, CLI_CIDADE from clientes'
      'ORDER BY CLI_ID')
    Left = 64
    Top = 7
    object QRYCLI_ID: TStringField
      FieldName = 'CLI_ID'
      Origin = 'CLI_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object QRYCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      Required = True
      Size = 100
    end
    object QRYCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Origin = 'CLI_CIDADE'
      Required = True
      Size = 40
    end
  end
  object DTS: TDataSource
    DataSet = CDS
    Left = 127
    Top = 57
  end
  object CDS: TClientDataSet
    Aggregates = <>
    PacketRecords = 5
    Params = <>
    ProviderName = 'DSP'
    Left = 128
    Top = 8
    object CDSCLI_ID: TStringField
      FieldName = 'CLI_ID'
      Required = True
      Size = 10
    end
    object CDSCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Required = True
      Size = 100
    end
    object CDSCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Required = True
      Size = 40
    end
  end
  object DSP: TDataSetProvider
    DataSet = QRY
    Left = 63
    Top = 57
  end
end
