object FStatusPulang: TFStatusPulang
  Left = 301
  Top = 149
  Width = 424
  Height = 151
  Caption = 'STATUS PULANG'
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
  object grpStatusPulang: TGroupBox
    Left = 0
    Top = 0
    Width = 408
    Height = 113
    Align = alClient
    Caption = 'STATUS PULANG'
    Color = clGradientActiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    object lbl: TLabel
      Left = 16
      Top = 24
      Width = 80
      Height = 13
      Caption = 'STATUS PULANG'
    end
    object btnSimpan: TButton
      Left = 16
      Top = 72
      Width = 75
      Height = 25
      Caption = 'SIMPAN'
      TabOrder = 0
      OnClick = btnSimpanClick
    end
    object cbb1: TcxLookupComboBox
      Left = 128
      Top = 16
      Properties.KeyFieldNames = 'kdStatusKeluar'
      Properties.ListColumns = <
        item
          Caption = 'STATUS KELUAR'
          FieldName = 'statusKeluar'
        end>
      Properties.ListSource = DataSimrs.dsStatusKeluar
      TabOrder = 1
      Width = 265
    end
    object cxlbl1: TcxLabel
      Left = 16
      Top = 48
      Caption = 'CARA KELUAR'
    end
    object cbb2: TcxLookupComboBox
      Left = 128
      Top = 40
      Properties.KeyFieldNames = 'kdCaraKeluar'
      Properties.ListColumns = <
        item
          Caption = 'CARA KELUAR'
          FieldName = 'caraKeluar'
        end>
      Properties.ListSource = DataSimrs.dsCaraKeluar
      TabOrder = 3
      Width = 265
    end
  end
end
