object FTindakanRawatjalan: TFTindakanRawatjalan
  Left = 211
  Top = 68
  Width = 1132
  Height = 813
  Align = alClient
  Caption = 'TINDAKAN RAWAT JALAN '
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
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 1116
    Height = 49
    Align = alTop
    Caption = 'TINDAKAN RAWAT JALAN'
    Color = 15115304
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindow
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object pnlKeluar: TPanel
      Left = 978
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
    Top = 722
    Width = 1116
    Height = 52
    Align = alBottom
    Color = 15115304
    TabOrder = 1
    object btnSelesai: TButton
      Left = 480
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
      Left = 96
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
    object btnTambah: TcxButton
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
    object btnCariTindakan: TButton
      Left = 176
      Top = 16
      Width = 121
      Height = 25
      Caption = 'CARI TINDAKAN'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      Visible = False
    end
    object btnMasukTindakan: TButton
      Left = 304
      Top = 16
      Width = 169
      Height = 25
      Caption = 'MASUKAN TINDAKAN'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = btnMasukTindakanClick
    end
  end
  object pnlTegah: TPanel
    Left = 0
    Top = 49
    Width = 1116
    Height = 673
    Align = alClient
    TabOrder = 2
    object dbgrdhTindakanTarifRajal: TDBGridEh
      Left = 1
      Top = 305
      Width = 1114
      Height = 367
      Align = alClient
      DataSource = DataSimrs.dsvw_detailtindakanpasienrajal
      DynProps = <>
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      FooterRowCount = 1
      FooterParams.Color = clWindow
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      SumList.Active = True
      TabOrder = 0
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'tindakan'
          Footers = <>
          Title.Caption = 'TINDAKAN'
          Width = 307
        end
        item
          CellButtons = <>
          DisplayFormat = '#,#0.00'
          DynProps = <>
          EditButtons = <>
          FieldName = 'tarif'
          Footers = <>
          Title.Caption = 'TARIF'
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'jumlahTindakan'
          Footer.Font.Charset = ANSI_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -16
          Footer.Font.Name = 'Times New Roman'
          Footer.Font.Style = [fsBold]
          Footer.Value = 'TOTAL :'
          Footer.ValueType = fvtStaticText
          Footers = <>
          Title.Caption = 'JUMLAH TINDAKAN'
          Width = 113
        end
        item
          CellButtons = <>
          DisplayFormat = '#,#0.00'
          DynProps = <>
          EditButtons = <>
          FieldName = 'totalTarif'
          Footer.DisplayFormat = '#,#0.00'
          Footer.Font.Charset = ANSI_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -16
          Footer.Font.Name = 'Times New Roman'
          Footer.Font.Style = [fsBold]
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'TOTAL'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'Times New Roman'
          Title.Font.Style = [fsBold]
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'namapetugasMedis'
          Footers = <>
          Title.Caption = 'DOKTER'
          Width = 284
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'KelompokTenagaMedis'
          Footers = <>
          Title.Caption = 'KELOMPOK'
          Width = 150
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object grpNoTransaksi: TGroupBox
      Left = 1
      Top = 1
      Width = 1114
      Height = 304
      Align = alTop
      Caption = 'DATA PASIEN / NO TRANSAKSI DAN TINDAKAN RAWAT JALAN'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object lblTindakan: TLabel
        Left = 264
        Top = 192
        Width = 73
        Height = 18
        Caption = 'TINDAKAN'
      end
      object lblNoTransakasi: TLabel
        Left = 8
        Top = 192
        Width = 104
        Height = 18
        Caption = 'NO TRANSAKSI'
      end
      object lblTarif: TLabel
        Left = 8
        Top = 248
        Width = 47
        Height = 18
        Caption = 'TARIF '
      end
      object lblJumlah: TLabel
        Left = 144
        Top = 248
        Width = 54
        Height = 18
        Caption = 'JUMLAH'
      end
      object lblTotal: TLabel
        Left = 272
        Top = 248
        Width = 47
        Height = 18
        Caption = 'TOTAL'
      end
      object lblPelaksana: TLabel
        Left = 440
        Top = 248
        Width = 77
        Height = 18
        Caption = 'PELAKSANA'
      end
      object lblKode: TLabel
        Left = 808
        Top = 192
        Width = 38
        Height = 18
        Caption = 'KODE'
      end
      object btnNoTransaksi: TSpeedButton
        Left = 232
        Top = 216
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = btnNoTransaksiClick
      end
      object lbl1: TLabel
        Left = 8
        Top = 176
        Width = 308
        Height = 18
        Caption = '------------------------ TINDAKAN----------------------'
      end
      object edtNoTransaksiTindakanRajal: TEdit
        Left = 8
        Top = 216
        Width = 217
        Height = 26
        TabOrder = 0
      end
      object cbbTindakan: TcxLookupComboBox
        Left = 264
        Top = 216
        Properties.KeyFieldNames = 'tindakan'
        Properties.ListColumns = <
          item
            Caption = 'TINDAKAN'
            FieldName = 'tindakan'
          end>
        Properties.ListSource = DataSimrs.dsvw_tindakantarifrajalkelomopok
        Properties.MaxLength = 400
        TabOrder = 1
        OnKeyPress = cbbTindakanKeyPress
        Width = 537
      end
      object edtTarif: TEdit
        Left = 8
        Top = 272
        Width = 129
        Height = 26
        Enabled = False
        TabOrder = 2
      end
      object edtTotal: TEdit
        Left = 272
        Top = 272
        Width = 161
        Height = 26
        Enabled = False
        TabOrder = 3
      end
      object btnInput: TButton
        Left = 744
        Top = 264
        Width = 75
        Height = 33
        Caption = 'INPUT'
        TabOrder = 4
        OnClick = btnInputClick
      end
      object cbbPelaksana: TcxLookupComboBox
        Left = 440
        Top = 271
        Properties.KeyFieldNames = 'kdPetugasMedis'
        Properties.ListColumns = <
          item
            Caption = 'DOKTER'
            FieldName = 'namapetugasMedis'
          end>
        Properties.ListSource = DataSimrs.dsVwTenagaMedis
        TabOrder = 5
        OnKeyPress = cbbPelaksanaKeyPress
        Width = 289
      end
      object edtJumlah: TDBNumberEditEh
        Left = 144
        Top = 272
        Width = 121
        Height = 26
        DynProps = <>
        EditButtons = <>
        TabOrder = 6
        Visible = True
        OnClick = edtJumlahClick
        OnKeyPress = edtJumlahKeyPress
      end
      object edtKode: TEdit
        Left = 808
        Top = 216
        Width = 121
        Height = 26
        Enabled = False
        TabOrder = 7
      end
      object grp1: TGroupBox
        Left = 8
        Top = 16
        Width = 961
        Height = 161
        Caption = 'DATA PASIEN'
        TabOrder = 8
        object lblNoRm: TLabel
          Left = 8
          Top = 32
          Width = 47
          Height = 18
          Caption = 'NO RM'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblNoRegistrasi: TLabel
          Left = 8
          Top = 72
          Width = 81
          Height = 18
          Caption = 'NO DAFTAR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblAsalPasien: TLabel
          Left = 8
          Top = 112
          Width = 103
          Height = 18
          Caption = 'TEMPAT LAHIR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblTglLahir: TLabel
          Left = 176
          Top = 112
          Width = 73
          Height = 18
          Caption = 'TGL LAHIR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblNoRajal: TLabel
          Left = 176
          Top = 72
          Width = 66
          Height = 18
          Caption = 'NO RAJAL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblNmPasien: TLabel
          Left = 176
          Top = 32
          Width = 94
          Height = 18
          Caption = 'NAMA PASIEN'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblUmur: TLabel
          Left = 376
          Top = 112
          Width = 41
          Height = 18
          Caption = 'UMUR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblAlamat: TLabel
          Left = 376
          Top = 72
          Width = 56
          Height = 18
          Caption = 'ALAMAT'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblPenjamin: TLabel
          Left = 376
          Top = 32
          Width = 87
          Height = 18
          Caption = 'CARA BAYAR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblDokter1: TLabel
          Left = 576
          Top = 32
          Width = 57
          Height = 18
          Caption = 'DOKTER'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblJk: TLabel
          Left = 568
          Top = 112
          Width = 15
          Height = 18
          Caption = 'JK'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblPOLI: TLabel
          Left = 112
          Top = 15
          Width = 57
          Height = 18
          Caption = 'lblPOLI'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object edtNoRmTndk: TEdit
          Left = 8
          Top = 48
          Width = 161
          Height = 27
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object edtNoRegistrasiTndk: TEdit
          Left = 8
          Top = 88
          Width = 161
          Height = 27
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object edtTempatLahirTndk: TEdit
          Left = 8
          Top = 126
          Width = 161
          Height = 27
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object dtpTglLahirTndk: TDateTimePicker
          Left = 176
          Top = 125
          Width = 193
          Height = 28
          Date = 43522.647666087960000000
          Time = 43522.647666087960000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object edtNoRajalTndk: TEdit
          Left = 176
          Top = 88
          Width = 193
          Height = 27
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object edtNmPasienTndk: TEdit
          Left = 176
          Top = 48
          Width = 193
          Height = 27
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object edtUmurTndk: TEdit
          Left = 376
          Top = 126
          Width = 185
          Height = 27
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object edtAlamatTndk: TEdit
          Left = 376
          Top = 88
          Width = 569
          Height = 27
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object edtPenjaminTndk: TEdit
          Left = 376
          Top = 48
          Width = 193
          Height = 27
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object edtDokterTndk: TEdit
          Left = 576
          Top = 48
          Width = 369
          Height = 27
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
        object edtJkTndk: TEdit
          Left = 568
          Top = 128
          Width = 57
          Height = 26
          TabOrder = 10
        end
      end
    end
  end
end
