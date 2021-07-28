object FUbahTndkJumlahIGD: TFUbahTndkJumlahIGD
  Left = 423
  Top = 469
  Width = 403
  Height = 263
  Caption = 'UBAH JUMLAH TINDAKAN IGD'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object grpTindakan: TGroupBox
    Left = 0
    Top = 0
    Width = 387
    Height = 224
    Align = alClient
    Caption = 'TINDAKAN YANG AKAN DI UBAH'
    TabOrder = 0
    object lblKode: TLabel
      Left = 8
      Top = 24
      Width = 30
      Height = 13
      Caption = 'KODE'
    end
    object lblTINDAKAN: TLabel
      Left = 8
      Top = 48
      Width = 55
      Height = 13
      Caption = 'TINDAKAN'
    end
    object lblTARIF: TLabel
      Left = 8
      Top = 72
      Width = 31
      Height = 13
      Caption = 'TARIF'
    end
    object lblJML: TLabel
      Left = 8
      Top = 96
      Width = 54
      Height = 13
      Caption = 'JML AWAL'
    end
    object lblSUBTOTAL: TLabel
      Left = 8
      Top = 144
      Width = 60
      Height = 13
      Caption = 'SUB TOTAL'
    end
    object lblJMLTmbh: TLabel
      Left = 8
      Top = 120
      Width = 53
      Height = 13
      Caption = 'JML UBAH'
    end
    object lbl1: TLabel
      Left = 176
      Top = 16
      Width = 16
      Height = 13
      Caption = 'lbl1'
      Visible = False
    end
    object lblTENAGAMEDIS: TLabel
      Left = 8
      Top = 168
      Width = 81
      Height = 13
      Caption = 'TENAGA MEDIS'
    end
    object edtKode: TEdit
      Left = 96
      Top = 16
      Width = 89
      Height = 21
      Enabled = False
      TabOrder = 0
      Text = 'edtKode'
    end
    object edtTINDK: TEdit
      Left = 96
      Top = 40
      Width = 185
      Height = 21
      Enabled = False
      TabOrder = 1
      Text = 'edtTINDK'
    end
    object edtTARIF: TEdit
      Left = 96
      Top = 64
      Width = 185
      Height = 21
      Enabled = False
      TabOrder = 2
      Text = 'edtTARIF'
    end
    object edtJML: TEdit
      Left = 96
      Top = 88
      Width = 57
      Height = 21
      Enabled = False
      TabOrder = 3
      Text = 'edtJML'
    end
    object edtSUBTOTAL: TEdit
      Left = 96
      Top = 136
      Width = 185
      Height = 21
      Enabled = False
      TabOrder = 4
      Text = 'edtSUBTOTAL'
    end
    object edtJMLTMBH: TEdit
      Left = 96
      Top = 112
      Width = 57
      Height = 21
      TabOrder = 5
      Text = 'edtJMLTMBH'
    end
    object btnKeluar: TButton
      Left = 96
      Top = 192
      Width = 75
      Height = 25
      Caption = '&SELESAI'
      TabOrder = 6
      OnClick = btnKeluarClick
    end
    object btnSIMPAN: TButton
      Left = 8
      Top = 192
      Width = 75
      Height = 25
      Caption = 'SIMPAN'
      TabOrder = 7
      OnClick = btnSIMPANClick
    end
    object cbbPelaksana: TcxLookupComboBox
      Left = 99
      Top = 160
      Properties.KeyFieldNames = 'kdPetugasMedis'
      Properties.ListColumns = <
        item
          Caption = 'DOKTER'
          FieldName = 'namapetugasMedis'
        end>
      Properties.ListSource = DataSimrs.dsVwTenagaMedis
      TabOrder = 8
      Width = 270
    end
  end
end
