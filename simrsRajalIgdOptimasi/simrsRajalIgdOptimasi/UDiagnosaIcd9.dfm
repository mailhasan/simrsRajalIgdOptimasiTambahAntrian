object FDiagnosaIcd9: TFDiagnosaIcd9
  Left = 192
  Top = 124
  BorderStyle = bsNone
  Caption = 'DIAGNOSA ICD 9'
  ClientHeight = 745
  ClientWidth = 1458
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
  object pnlTengah: TPanel
    Left = 0
    Top = 49
    Width = 1458
    Height = 644
    Align = alClient
    TabOrder = 0
    object grpNoDokter: TGroupBox
      Left = 1
      Top = 1
      Width = 1456
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
        Left = 16
        Top = 21
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
      Width = 1456
      Height = 586
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
        Width = 1452
        Height = 169
        Align = alTop
        TabOrder = 0
        object lblIcd10: TLabel
          Left = 16
          Top = 16
          Width = 121
          Height = 18
          Caption = 'Pencarian ICD 9'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblKeterangan: TLabel
          Left = 19
          Top = 112
          Width = 86
          Height = 18
          Caption = 'Keterangan'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtKdIcd10: TEdit
          Left = 168
          Top = 40
          Width = 657
          Height = 27
          Enabled = False
          TabOrder = 0
        end
        object mmoKetarangan: TMemo
          Left = 168
          Top = 104
          Width = 657
          Height = 49
          TabOrder = 1
        end
        object lblKodeIcd9: TcxLabel
          Left = 16
          Top = 43
          Caption = 'Kode ICD 9'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
        end
        object lblIcd101: TcxLabel
          Left = 16
          Top = 72
          Caption = 'ICD 9'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.TextColor = clBlack
          Style.IsFontAssigned = True
        end
        object edtIcd9: TcxTextEdit
          Left = 168
          Top = 72
          TabOrder = 4
          Width = 657
        end
        object edtPencarian: TEdit
          Left = 168
          Top = 8
          Width = 657
          Height = 27
          TabOrder = 5
          OnChange = edtPencarianChange
        end
      end
      object dbgrdhDiagnosa: TDBGridEh
        Left = 2
        Top = 190
        Width = 1452
        Height = 394
        Align = alClient
        DataGrouping.GroupLevels = <>
        DataSource = DataSimrs.dsvw_t_transaksiicd9
        DrawMemoText = True
        Flat = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = ANSI_CHARSET
        FooterFont.Color = clNavy
        FooterFont.Height = -16
        FooterFont.Name = 'Tahoma'
        FooterFont.Style = [fsBold]
        IndicatorOptions = [gioShowRowIndicatorEh]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -16
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            EditButtons = <>
            FieldName = 'kdIcd9'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'KODE'
            Width = 220
          end
          item
            EditButtons = <>
            FieldName = 'icd'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'ICD 9'
            Width = 210
          end
          item
            EditButtons = <>
            FieldName = 'namapetugasMedis'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'NAMA PETUGAS'
            Width = 379
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object strngrdIcd9: TStringGrid
      Left = 168
      Top = 120
      Width = 993
      Height = 425
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Visible = False
      OnClick = strngrdIcd9Click
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 693
    Width = 1458
    Height = 52
    Align = alBottom
    Color = 15115304
    TabOrder = 1
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
      Left = 248
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
      Left = 8
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
      Left = 88
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
      Left = 168
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
    Width = 1458
    Height = 49
    Align = alTop
    Caption = 'DIAGNOSA ICD-9'
    Color = 15115304
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindow
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object pnlKeluar: TPanel
      Left = 1320
      Top = 1
      Width = 137
      Height = 47
      Align = alRight
      Caption = 'KELUAR'
      Color = 5855743
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindow
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = pnlKeluarClick
    end
  end
end
