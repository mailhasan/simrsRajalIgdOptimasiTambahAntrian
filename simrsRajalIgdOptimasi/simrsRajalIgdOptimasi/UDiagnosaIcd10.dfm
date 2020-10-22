object FDiagnosaIcd10: TFDiagnosaIcd10
  Left = 192
  Top = 124
  BorderStyle = bsNone
  Caption = 'DAIGNOSA ICD 10'
  ClientHeight = 754
  ClientWidth = 1489
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
  object pnlBawah: TPanel
    Left = 0
    Top = 702
    Width = 1489
    Height = 52
    Align = alBottom
    Color = 15115304
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object btnSelesai: TButton
      Left = 1344
      Top = 16
      Width = 75
      Height = 25
      Caption = 'SELESAI'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnSelesaiClick
    end
    object btnSimpan: TButton
      Left = 256
      Top = 16
      Width = 75
      Height = 25
      Caption = 'SIMPAN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnSimpanClick
    end
    object btnTambah: TButton
      Left = 16
      Top = 16
      Width = 75
      Height = 25
      Caption = 'TAMBAH'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btnTambahClick
    end
    object btnUbah: TButton
      Left = 96
      Top = 16
      Width = 75
      Height = 25
      Caption = 'UBAH'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      Visible = False
    end
    object btnHapus: TButton
      Left = 176
      Top = 16
      Width = 75
      Height = 25
      Caption = 'HAPUS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = btnHapusClick
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 1489
    Height = 49
    Align = alTop
    Caption = 'DIAGNOSA ICD-10'
    Color = 15115304
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindow
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object pnlKeluar: TPanel
      Left = 1351
      Top = 1
      Width = 137
      Height = 47
      Align = alRight
      Caption = 'KELUAR'
      Color = 5855743
      TabOrder = 0
      OnClick = pnlKeluarClick
    end
  end
  object pnlTengah: TPanel
    Left = 0
    Top = 49
    Width = 1489
    Height = 653
    Align = alClient
    TabOrder = 2
    object grpNoDokter: TGroupBox
      Left = 1
      Top = 1
      Width = 1487
      Height = 56
      Align = alTop
      Caption = 'DOKTER'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object cbbDokter: TcxLookupComboBox
        Left = 8
        Top = 22
        Properties.KeyFieldNames = 'kdPetugasMedis'
        Properties.ListColumns = <
          item
            Caption = 'DOKTER'
            FieldName = 'namapetugasMedis'
          end>
        Properties.ListSource = DataSimrs.dsDokter
        TabOrder = 0
        Width = 305
      end
    end
    object grpDiagnosa: TGroupBox
      Left = 1
      Top = 57
      Width = 1487
      Height = 595
      Align = alClient
      Caption = 'DIAGNOSA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object pnlAtas1: TPanel
        Left = 2
        Top = 21
        Width = 1483
        Height = 169
        Align = alTop
        TabOrder = 0
        object lblIcd10: TLabel
          Left = 16
          Top = 0
          Width = 131
          Height = 18
          Caption = 'Pencarian ICD 10'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblJenisDiagnosa: TLabel
          Left = 16
          Top = 96
          Width = 112
          Height = 18
          Caption = 'Jenis Diagnosa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblJenisKasus: TLabel
          Left = 16
          Top = 128
          Width = 87
          Height = 18
          Caption = 'Jenis Kasus'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cbbJenisDiagnosa: TcxLookupComboBox
          Left = 168
          Top = 96
          Properties.KeyFieldNames = 'kdJenisDiagnosa'
          Properties.ListColumns = <
            item
              Caption = 'JENIS DIAGNOSA'
              FieldName = 'jenisDiagnosa'
            end>
          Properties.ListSource = DataSimrs.dst_jenisdiagnosa
          TabOrder = 0
          OnKeyPress = cbbJenisDiagnosaKeyPress
          Width = 689
        end
        object cbbJenisKasus: TcxLookupComboBox
          Left = 168
          Top = 128
          Properties.KeyFieldNames = 'kdKasusDiagnosa'
          Properties.ListColumns = <
            item
              Caption = 'KASUS'
              FieldName = 'kasus'
            end>
          Properties.ListSource = DataSimrs.dst_kasusdiagnosa
          TabOrder = 1
          OnKeyPress = cbbJenisKasusKeyPress
          Width = 689
        end
        object edtKdIcd10: TEdit
          Left = 168
          Top = 32
          Width = 689
          Height = 27
          Enabled = False
          TabOrder = 2
        end
        object edtIcd10: TcxTextEdit
          Left = 168
          Top = 64
          Enabled = False
          StyleDisabled.BorderColor = clWindow
          StyleDisabled.Color = clWindow
          TabOrder = 3
          Width = 689
        end
        object lblKodeIcd: TcxLabel
          Left = 16
          Top = 24
          Caption = 'Kode ICD'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
        end
        object lblIcd: TcxLabel
          Left = 16
          Top = 56
          Caption = 'ICD'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
        end
        object edtPencarian: TEdit
          Left = 168
          Top = 0
          Width = 601
          Height = 27
          TabOrder = 6
          OnChange = edtPencarianChange
          OnKeyPress = edtPencarianKeyPress
          OnKeyUp = edtPencarianKeyUp
        end
      end
      object strngrdDiagnosa10: TStringGrid
        Left = 2
        Top = 190
        Width = 1483
        Height = 403
        Align = alClient
        DefaultRowHeight = 30
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goRowMoving, goColMoving, goRowSelect]
        ParentFont = False
        TabOrder = 1
      end
    end
    object strngrdIcd: TStringGrid
      Left = 168
      Top = 112
      Width = 937
      Height = 305
      DefaultRowHeight = 30
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goRowMoving, goColMoving, goRowSelect]
      ParentFont = False
      TabOrder = 2
      Visible = False
      OnDblClick = strngrdIcdDblClick
      OnKeyPress = strngrdIcdKeyPress
    end
  end
end
