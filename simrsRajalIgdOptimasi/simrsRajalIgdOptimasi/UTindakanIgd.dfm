object FTindakanIgd: TFTindakanIgd
  Left = 191
  Top = 125
  Width = 1381
  Height = 675
  Align = alClient
  Caption = 'TINDAKAN IGD'
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
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 1365
    Height = 49
    Align = alTop
    Caption = 'TINDAKAN IGD'
    Color = 15115304
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindow
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object pnlKeluar: TPanel
      Left = 1227
      Top = 1
      Width = 137
      Height = 47
      Align = alRight
      Caption = 'KELUAR'
      Color = 5855743
      TabOrder = 0
      Visible = False
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 584
    Width = 1365
    Height = 52
    Align = alBottom
    Color = 15115304
    TabOrder = 1
    object btnSelesai: TButton
      Left = 104
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
    object btnHapus: TButton
      Left = 24
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
      TabOrder = 1
      OnClick = btnHapusClick
    end
  end
  object pnlTengah: TPanel
    Left = 0
    Top = 49
    Width = 1365
    Height = 535
    Align = alClient
    TabOrder = 2
    object pnlTengahAtas: TPanel
      Left = 1
      Top = 1
      Width = 1363
      Height = 96
      Align = alTop
      TabOrder = 0
      object grpTegah1: TGroupBox
        Left = 1
        Top = 1
        Width = 1361
        Height = 94
        Align = alClient
        TabOrder = 0
        object lblNoRm: TLabel
          Left = 8
          Top = 8
          Width = 33
          Height = 13
          Caption = 'NO RM'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblNmPasien: TLabel
          Left = 176
          Top = 8
          Width = 68
          Height = 13
          Caption = 'NAMA PASIEN'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblPenjamin: TLabel
          Left = 376
          Top = 8
          Width = 64
          Height = 13
          Caption = 'CARA BAYAR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblAlamat: TLabel
          Left = 640
          Top = 48
          Width = 40
          Height = 13
          Caption = 'ALAMAT'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblDokter1: TLabel
          Left = 576
          Top = 8
          Width = 40
          Height = 13
          Caption = 'DOKTER'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblAsalPasien: TLabel
          Left = 8
          Top = 48
          Width = 72
          Height = 13
          Caption = 'TEMPAT LAHIR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblTglLahir: TLabel
          Left = 176
          Top = 48
          Width = 51
          Height = 13
          Caption = 'TGL LAHIR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblUmur: TLabel
          Left = 376
          Top = 48
          Width = 29
          Height = 13
          Caption = 'UMUR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblJk: TLabel
          Left = 576
          Top = 48
          Width = 11
          Height = 13
          Caption = 'JK'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblNoRegistrasi: TLabel
          Left = 960
          Top = 8
          Width = 58
          Height = 13
          Caption = 'NO DAFTAR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblNoRajal: TLabel
          Left = 1128
          Top = 8
          Width = 49
          Height = 13
          Caption = 'NO RAJAL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edtNoRm: TEdit
          Left = 8
          Top = 24
          Width = 161
          Height = 21
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object edtNmPasien: TEdit
          Left = 176
          Top = 24
          Width = 193
          Height = 21
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object edtPenjamin: TEdit
          Left = 376
          Top = 24
          Width = 193
          Height = 21
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object edtDokter: TEdit
          Left = 576
          Top = 24
          Width = 369
          Height = 21
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object edtTempatLahir: TEdit
          Left = 8
          Top = 64
          Width = 161
          Height = 21
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object edtAlamat: TEdit
          Left = 640
          Top = 64
          Width = 681
          Height = 21
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object edtUmur: TEdit
          Left = 376
          Top = 64
          Width = 185
          Height = 21
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object edtJk: TEdit
          Left = 576
          Top = 64
          Width = 57
          Height = 21
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object dtpTglLahir: TDateTimePicker
          Left = 176
          Top = 64
          Width = 185
          Height = 21
          Date = 43522.647666087960000000
          Time = 43522.647666087960000000
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object edtNoRegistrasi: TEdit
          Left = 960
          Top = 24
          Width = 161
          Height = 21
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
        object edtNoRajal: TEdit
          Left = 1128
          Top = 24
          Width = 185
          Height = 21
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
        end
      end
    end
    object pnlTengahTengah: TPanel
      Left = 1
      Top = 97
      Width = 1363
      Height = 234
      Align = alClient
      TabOrder = 1
      object grpDokter: TGroupBox
        Left = 1
        Top = 1
        Width = 1361
        Height = 56
        Align = alTop
        Caption = 'Pilih Data Pelaksana Dokter / Perawat / Tenaga Medis'
        TabOrder = 0
        object cbbPelaksana: TcxLookupComboBox
          Left = 8
          Top = 24
          Properties.KeyFieldNames = 'kdPetugasMedis'
          Properties.ListColumns = <
            item
              Caption = 'DOKTER'
              FieldName = 'namapetugasMedis'
            end>
          Properties.ListSource = DataSimrs.dsVwTenagaMedis
          TabOrder = 0
          Width = 489
        end
        object edtNoTransaksiTindakanRajal: TEdit
          Left = 544
          Top = 22
          Width = 217
          Height = 21
          Enabled = False
          TabOrder = 1
        end
      end
      object grpDataPilihTindakan: TGroupBox
        Left = 1
        Top = 57
        Width = 1361
        Height = 176
        Align = alClient
        Caption = 'DATA PILIH TINDAKAN'
        TabOrder = 1
        object dbgrdhTindakanBerdasarKanUnit: TDBGridEh
          Left = 2
          Top = 15
          Width = 1357
          Height = 118
          Align = alClient
          DataGrouping.GroupLevels = <>
          DataSource = DataSimrs.dsvw_tindakantarifrajalkelomopok
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          IndicatorOptions = [gioShowRowIndicatorEh, gioShowRowselCheckboxesEh]
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              EditButtons = <>
              FieldName = 'kdTindakan'
              Footers = <>
              Title.Caption = 'KODE '
              Width = 84
            end
            item
              EditButtons = <>
              FieldName = 'tindakan'
              Footers = <>
              Title.Caption = 'TINDAKAN'
              Width = 378
            end
            item
              EditButtons = <>
              FieldName = 'kelompokTindakan'
              Footers = <>
              Title.Caption = 'KELOMPOK'
              Width = 231
            end
            item
              DisplayFormat = '#,#0.00'
              EditButtons = <>
              FieldName = 'tarif'
              Footers = <>
              Title.Caption = 'TARIF'
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object pnlDataTindakan: TPanel
          Left = 2
          Top = 133
          Width = 1357
          Height = 41
          Align = alBottom
          TabOrder = 1
          object lblCari: TLabel
            Left = 8
            Top = 16
            Width = 18
            Height = 13
            Caption = 'Cari'
          end
          object edtCari: TEdit
            Left = 40
            Top = 8
            Width = 233
            Height = 21
            TabOrder = 0
            OnChange = edtCariChange
          end
          object btnInput: TButton
            Left = 280
            Top = 8
            Width = 75
            Height = 25
            Caption = 'INPUT'
            TabOrder = 1
            OnClick = btnInputClick
          end
        end
      end
    end
    object grpTengahBawah: TGroupBox
      Left = 1
      Top = 331
      Width = 1363
      Height = 203
      Align = alBottom
      Caption = 'DATA TINDAKAN YANG SUDAH DI INPUT'
      TabOrder = 2
      object dbgrdhTindakanSdhDiInput: TDBGridEh
        Left = 2
        Top = 15
        Width = 1359
        Height = 186
        Align = alClient
        DataGrouping.GroupLevels = <>
        DataSource = DataSimrs.dsvw_detailtindakanpasienrajal
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        IndicatorOptions = [gioShowRowIndicatorEh]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
            Width = 350
          end
          item
            EditButtons = <>
            FieldName = 'tarif'
            Footers = <>
            Title.Caption = 'TARIF'
            Width = 71
          end
          item
            EditButtons = <>
            FieldName = 'jumlahTindakan'
            Footers = <>
            Title.Caption = 'JML'
            Width = 52
          end
          item
            EditButtons = <>
            FieldName = 'totalTarif'
            Footer.DisplayFormat = '#,#0.00'
            Footer.FieldName = 'totalTarif'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'SUB TOTAL'
            Width = 83
          end
          item
            EditButtons = <>
            FieldName = 'namapetugasMedis'
            Footers = <>
            Title.Caption = 'NAMA PETUGAS'
            Width = 272
          end
          item
            EditButtons = <>
            FieldName = 'KelompokTenagaMedis'
            Footers = <>
            Title.Caption = 'KELOMPOK'
            Width = 167
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
end
