object FPermintaanRadRajal: TFPermintaanRadRajal
  Left = 220
  Top = 137
  Width = 1088
  Height = 584
  Align = alClient
  BorderIcons = [biMinimize, biMaximize]
  Caption = 'PERMINTAAN PEMERIKSAAN RADIOLOGI'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTegah: TPanel
    Left = 0
    Top = 49
    Width = 1072
    Height = 444
    Align = alClient
    TabOrder = 0
    object pnlAtas1: TPanel
      Left = 1
      Top = 1
      Width = 1070
      Height = 160
      Align = alTop
      TabOrder = 0
      object grpDataPasien: TGroupBox
        Left = 1
        Top = 1
        Width = 352
        Height = 158
        Align = alLeft
        Caption = 'DATA PASIEN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object lblNORM: TLabel
          Left = 8
          Top = 24
          Width = 36
          Height = 13
          Caption = 'NO RM'
        end
        object lblNoRegistrasi: TLabel
          Left = 136
          Top = 16
          Width = 87
          Height = 13
          Caption = 'NO REGISTRASI'
        end
        object lblNAMA: TLabel
          Left = 8
          Top = 64
          Width = 33
          Height = 13
          Caption = 'NAMA'
        end
        object lblUmur: TLabel
          Left = 8
          Top = 104
          Width = 34
          Height = 13
          Caption = 'UMUR'
        end
        object lblJk: TLabel
          Left = 224
          Top = 104
          Width = 13
          Height = 13
          Caption = 'JK'
        end
        object lblTglLahir: TLabel
          Left = 208
          Top = 64
          Width = 90
          Height = 13
          Caption = 'TANGGAL LAHIR'
        end
        object edtNoRm: TEdit
          Left = 8
          Top = 40
          Width = 121
          Height = 21
          Enabled = False
          TabOrder = 0
        end
        object edtNoRegistrasi: TEdit
          Left = 136
          Top = 40
          Width = 169
          Height = 21
          Enabled = False
          TabOrder = 1
        end
        object edtNama: TEdit
          Left = 8
          Top = 80
          Width = 185
          Height = 21
          Enabled = False
          TabOrder = 2
        end
        object edtUmur: TEdit
          Left = 8
          Top = 120
          Width = 209
          Height = 21
          Enabled = False
          TabOrder = 3
        end
        object edtJk: TEdit
          Left = 224
          Top = 120
          Width = 89
          Height = 21
          Enabled = False
          TabOrder = 4
        end
        object dtpTglLahir: TDateTimePicker
          Left = 208
          Top = 80
          Width = 114
          Height = 21
          Date = 43601.396545740740000000
          Time = 43601.396545740740000000
          TabOrder = 5
        end
      end
      object grpDataPermintaan: TGroupBox
        Left = 353
        Top = 1
        Width = 716
        Height = 158
        Align = alClient
        Caption = 'DATA PERMINTAAN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object lblTglPermintaan: TLabel
          Left = 8
          Top = 24
          Width = 97
          Height = 13
          Caption = 'TGL PERMINTAAN'
        end
        object lblNoPermintaan: TLabel
          Left = 152
          Top = 24
          Width = 154
          Height = 13
          Caption = 'NO REGISTRASI RADIOLOGI'
        end
        object lblAsalRuang: TLabel
          Left = 8
          Top = 64
          Width = 71
          Height = 13
          Caption = 'ASAL RUANG'
        end
        object lblDokterPengirim: TLabel
          Left = 152
          Top = 64
          Width = 103
          Height = 13
          Caption = 'DOKTER PENGIRIM'
        end
        object lblKode: TLabel
          Left = 8
          Top = 104
          Width = 71
          Height = 13
          Caption = 'KODE RUANG'
        end
        object lblNoTransaksiTindakan: TLabel
          Left = 152
          Top = 104
          Width = 169
          Height = 13
          Caption = 'NO TRANSAKSI TINDAKAN RAD'
        end
        object dtpTglPermintaan: TDateTimePicker
          Left = 8
          Top = 40
          Width = 137
          Height = 21
          Date = 43599.479442974540000000
          Time = 43599.479442974540000000
          TabOrder = 0
        end
        object edtNoRegistrasiLab: TEdit
          Left = 152
          Top = 40
          Width = 145
          Height = 21
          Enabled = False
          TabOrder = 1
        end
        object edtAsalRuang: TEdit
          Left = 8
          Top = 80
          Width = 137
          Height = 21
          Enabled = False
          TabOrder = 2
        end
        object cbbDokter: TcxLookupComboBox
          Left = 152
          Top = 80
          ParentFont = False
          Properties.KeyFieldNames = 'kdPetugasMedis'
          Properties.ListColumns = <
            item
              Caption = 'DOKTER'
              FieldName = 'namapetugasMedis'
            end>
          Properties.ListSource = DataSimrs.dsVwTenagaMedis
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 3
          Width = 329
        end
        object btnNoPermintaan: TBitBtn
          Left = 304
          Top = 40
          Width = 33
          Height = 25
          Caption = '...'
          TabOrder = 4
        end
        object edtKode: TEdit
          Left = 8
          Top = 120
          Width = 121
          Height = 21
          Enabled = False
          TabOrder = 5
        end
        object edtNoTindakanPermintaanLab: TEdit
          Left = 152
          Top = 120
          Width = 177
          Height = 21
          Enabled = False
          TabOrder = 6
        end
        object cxlbl1: TcxLabel
          Left = 496
          Top = 16
          Caption = 'KETERANGAN / KLINIS'
        end
        object cxmKeterangan: TcxMemo
          Left = 496
          Top = 40
          TabOrder = 8
          Height = 105
          Width = 209
        end
      end
    end
    object pnlKiri: TPanel
      Left = 1
      Top = 161
      Width = 512
      Height = 282
      Align = alLeft
      Caption = 'pnlKiri'
      TabOrder = 1
      object grpPencarian: TGroupBox
        Left = 1
        Top = 1
        Width = 510
        Height = 48
        Align = alTop
        Caption = 'PENCARIAN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object edtCari: TEdit
          Left = 8
          Top = 16
          Width = 233
          Height = 21
          TabOrder = 0
          OnChange = edtCariChange
        end
      end
      object grpTindakanLab: TGroupBox
        Left = 1
        Top = 49
        Width = 510
        Height = 232
        Align = alClient
        Caption = 'TINDAKAN DAN TARIF RADIOLOGI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object dbgrdhTindakanLab: TDBGridEh
          Left = 2
          Top = 15
          Width = 506
          Height = 215
          Align = alClient
          DataGrouping.GroupLevels = <>
          DataSource = DataSimrs.dsvw_tindakanrad
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = [fsBold]
          IndicatorOptions = [gioShowRowIndicatorEh, gioShowRowselCheckboxesEh]
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              EditButtons = <>
              FieldName = 'kdTindakan'
              Footers = <>
              Title.Caption = 'KODE'
              Width = 74
            end
            item
              EditButtons = <>
              FieldName = 'tindakan'
              Footers = <>
              Title.Caption = 'TINDAKAN'
              Width = 211
            end
            item
              EditButtons = <>
              FieldName = 'kelas'
              Footers = <>
              Title.Caption = 'KELAS'
              Width = 65
            end
            item
              EditButtons = <>
              FieldName = 'tarif'
              Footers = <>
              Title.Caption = 'TARIF'
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
    end
    object pnlTengah1: TPanel
      Left = 513
      Top = 161
      Width = 558
      Height = 282
      Align = alClient
      TabOrder = 2
      object pnlKiri1: TPanel
        Left = 1
        Top = 1
        Width = 64
        Height = 280
        Align = alLeft
        TabOrder = 0
        object btnInput: TButton
          Left = 8
          Top = 128
          Width = 49
          Height = 25
          Caption = '>>'
          TabOrder = 0
          OnClick = btnInputClick
        end
        object btnHapus: TButton
          Left = 8
          Top = 184
          Width = 49
          Height = 25
          Caption = '<<'
          TabOrder = 1
          OnClick = btnHapusClick
        end
      end
      object pnlTengah2: TPanel
        Left = 65
        Top = 1
        Width = 492
        Height = 280
        Align = alClient
        TabOrder = 1
        object dbgrdhTindakanPermintaanLab: TDBGridEh
          Left = 1
          Top = 1
          Width = 490
          Height = 278
          Align = alClient
          DataGrouping.GroupLevels = <>
          DataSource = DataSimrs.dsvw_detailtindakanradiologirajal
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          IndicatorOptions = []
          Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              EditButtons = <>
              FieldName = 'kdTarif'
              Footers = <>
              Title.Caption = 'KODE'
            end
            item
              EditButtons = <>
              FieldName = 'tindakan'
              Footers = <>
              Title.Caption = 'TINDAKAN'
              Width = 255
            end
            item
              EditButtons = <>
              FieldName = 'tarif'
              Footers = <>
              Title.Caption = 'TARIF'
            end
            item
              EditButtons = <>
              FieldName = 'jumlahTindakan'
              Footers = <>
              Title.Caption = 'JUMLAH'
            end
            item
              EditButtons = <>
              FieldName = 'totalTarif'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'TOTAL TARIF'
              Width = 103
            end
            item
              EditButtons = <>
              FieldName = 'namapetugasMedis'
              Footers = <>
              Title.Caption = 'DOKTER'
              Width = 137
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 493
    Width = 1072
    Height = 52
    Align = alBottom
    Color = clTeal
    TabOrder = 1
    object btnSelesai: TButton
      Left = 16
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
    object btnCetak: TBitBtn
      Left = 96
      Top = 16
      Width = 75
      Height = 25
      Caption = 'CETAK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 1072
    Height = 49
    Align = alTop
    Caption = 'PERMINTAAN PEMERIKSAAN RADIOLOGI'
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindow
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object pnlKeluar: TPanel
      Left = 934
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
end
