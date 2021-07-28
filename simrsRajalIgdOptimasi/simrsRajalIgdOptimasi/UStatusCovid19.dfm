object FStatusCovid19: TFStatusCovid19
  Left = 359
  Top = 203
  Width = 496
  Height = 133
  Caption = 'STATUS COVID 19'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grpStatsuCovid19: TGroupBox
    Left = 0
    Top = 0
    Width = 480
    Height = 94
    Align = alClient
    Caption = 'STATUS COVID 19'
    Color = clGradientActiveCaption
    ParentColor = False
    TabOrder = 0
    object cxlblStatusCovid19: TcxLabel
      Left = 8
      Top = 24
      Caption = 'STATUS COVID 19'
    end
    object btnSimpan: TcxButton
      Left = 8
      Top = 64
      Width = 75
      Height = 25
      Caption = 'SIMPAN'
      TabOrder = 1
      OnClick = btnSimpanClick
    end
    object cbbStatusCovid19: TcxLookupComboBox
      Left = 120
      Top = 24
      Properties.KeyFieldNames = 'statusCovid19'
      Properties.ListColumns = <
        item
          Caption = 'STATUS COVID 19'
          FieldName = 'statusCovid19'
        end>
      Properties.ListSource = DataSimrs.dst_statuscovid19
      TabOrder = 2
      Width = 337
    end
  end
end
