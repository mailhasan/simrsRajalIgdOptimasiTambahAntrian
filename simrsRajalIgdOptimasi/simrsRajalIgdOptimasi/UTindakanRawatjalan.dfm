object FTindakanRawatjalan: TFTindakanRawatjalan
  Left = 400
  Top = 160
  BorderStyle = bsNone
  Caption = 'TINDAKAN RAWAT JALAN '
  ClientHeight = 525
  ClientWidth = 963
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
    Width = 963
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
      Left = 825
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
    Top = 473
    Width = 963
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
    Width = 963
    Height = 424
    Align = alClient
    TabOrder = 2
    object grpNoTransaksi: TGroupBox
      Left = 1
      Top = 1
      Width = 961
      Height = 144
      Align = alTop
      Caption = 'NO TRANSAKSI DAN TINDAKAN RAWAT JALAN'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object lblTindakan: TLabel
        Left = 264
        Top = 24
        Width = 73
        Height = 18
        Caption = 'TINDAKAN'
      end
      object lblNoTransakasi: TLabel
        Left = 8
        Top = 24
        Width = 104
        Height = 18
        Caption = 'NO TRANSAKSI'
      end
      object lblTarif: TLabel
        Left = 8
        Top = 80
        Width = 47
        Height = 18
        Caption = 'TARIF '
      end
      object lblJumlah: TLabel
        Left = 144
        Top = 80
        Width = 54
        Height = 18
        Caption = 'JUMLAH'
      end
      object lblTotal: TLabel
        Left = 272
        Top = 80
        Width = 47
        Height = 18
        Caption = 'TOTAL'
      end
      object lblPelaksana: TLabel
        Left = 440
        Top = 80
        Width = 77
        Height = 18
        Caption = 'PELAKSANA'
      end
      object lblKode: TLabel
        Left = 808
        Top = 24
        Width = 38
        Height = 18
        Caption = 'KODE'
      end
      object btnNoTransaksi: TSpeedButton
        Left = 232
        Top = 48
        Width = 23
        Height = 22
        Caption = '...'
      end
      object edtNoTransaksiTindakanRajal: TEdit
        Left = 8
        Top = 48
        Width = 217
        Height = 26
        TabOrder = 0
      end
      object cbbTindakan: TcxLookupComboBox
        Left = 264
        Top = 48
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
        Top = 104
        Width = 121
        Height = 26
        Enabled = False
        TabOrder = 2
      end
      object edtTotal: TEdit
        Left = 272
        Top = 104
        Width = 161
        Height = 26
        Enabled = False
        TabOrder = 3
      end
      object btnInput: TButton
        Left = 744
        Top = 96
        Width = 75
        Height = 33
        Caption = 'INPUT'
        TabOrder = 4
        OnClick = btnInputClick
      end
      object cbbPelaksana: TcxLookupComboBox
        Left = 440
        Top = 103
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
        Top = 104
        Width = 121
        Height = 26
        EditButtons = <>
        TabOrder = 6
        Visible = True
        OnKeyPress = edtJumlahKeyPress
      end
      object edtKode: TEdit
        Left = 808
        Top = 48
        Width = 121
        Height = 26
        Enabled = False
        TabOrder = 7
      end
    end
    object dbgrdhTindakanTarifRajal: TDBGridEh
      Left = 1
      Top = 145
      Width = 961
      Height = 278
      Align = alClient
      DataGrouping.GroupLevels = <>
      DataSource = DataSimrs.dsvw_detailtindakanpasienrajal
      Flat = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      IndicatorOptions = [gioShowRowIndicatorEh]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      SumList.Active = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'tindakan'
          Footers = <>
          Title.Caption = 'TINDAKAN'
          Width = 307
        end
        item
          DisplayFormat = '#,#0.00'
          EditButtons = <>
          FieldName = 'tarif'
          Footers = <>
          Title.Caption = 'TARIF'
        end
        item
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
          DisplayFormat = '#,#0.00'
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
          EditButtons = <>
          FieldName = 'namapetugasMedis'
          Footers = <>
          Title.Caption = 'DOKTER'
          Width = 284
        end
        item
          EditButtons = <>
          FieldName = 'KelompokTenagaMedis'
          Footers = <>
          Title.Caption = 'KELOMPOK'
          Width = 150
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
end
