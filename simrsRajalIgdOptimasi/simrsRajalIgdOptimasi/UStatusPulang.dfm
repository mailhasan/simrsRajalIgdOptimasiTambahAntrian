object FStatusPulang: TFStatusPulang
  Left = 301
  Top = 149
  Width = 424
  Height = 284
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
    Height = 245
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
    object lblDIRUJUKKE: TLabel
      Left = 16
      Top = 72
      Width = 61
      Height = 13
      Caption = 'DI RUJUK KE'
    end
    object lblALASANDIRUJUK: TLabel
      Left = 16
      Top = 104
      Width = 88
      Height = 13
      Caption = 'ALASAN DI RUJUK'
    end
    object btnSimpan: TButton
      Left = 16
      Top = 200
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
    object edtDIRUJUKKE: TEdit
      Left = 128
      Top = 64
      Width = 265
      Height = 21
      TabOrder = 4
      Text = 'edtDIRUJUKKE'
    end
    object mmoALASANDIRUJUKAN: TMemo
      Left = 128
      Top = 96
      Width = 265
      Height = 89
      Lines.Strings = (
        'mmoALASANDIRUJUKAN')
      TabOrder = 5
    end
  end
end
