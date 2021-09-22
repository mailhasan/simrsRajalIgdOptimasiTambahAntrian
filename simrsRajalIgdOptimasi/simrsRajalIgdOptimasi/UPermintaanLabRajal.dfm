object FPermintaanLabRajal: TFPermintaanLabRajal
  Left = 188
  Top = 160
  Width = 1240
  Height = 582
  Align = alClient
  BorderIcons = [biMinimize, biMaximize]
  Caption = 'PERMINTAAN PEMERIKSAAN lABORATORIUM'
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
    Width = 1224
    Height = 442
    Align = alClient
    TabOrder = 0
    object pnlAtas1: TPanel
      Left = 1
      Top = 1
      Width = 1222
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
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object lblNORM: TLabel
          Left = 8
          Top = 24
          Width = 42
          Height = 13
          Caption = 'NO RM'
        end
        object lblNoRegistrasi: TLabel
          Left = 136
          Top = 16
          Width = 98
          Height = 13
          Caption = 'NO REGISTRASI'
        end
        object lblNAMA: TLabel
          Left = 8
          Top = 64
          Width = 36
          Height = 13
          Caption = 'NAMA'
        end
        object lblUmur: TLabel
          Left = 8
          Top = 104
          Width = 38
          Height = 13
          Caption = 'UMUR'
        end
        object lblJk: TLabel
          Left = 256
          Top = 64
          Width = 15
          Height = 13
          Caption = 'JK'
        end
        object lblTglLahir: TLabel
          Left = 232
          Top = 104
          Width = 100
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
          Width = 201
          Height = 21
          Enabled = False
          TabOrder = 1
        end
        object edtNama: TEdit
          Left = 8
          Top = 80
          Width = 241
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
          Left = 256
          Top = 80
          Width = 81
          Height = 21
          Enabled = False
          TabOrder = 4
        end
        object dtpTglLahir: TDateTimePicker
          Left = 232
          Top = 120
          Width = 105
          Height = 21
          Date = 43601.396545740740000000
          Time = 43601.396545740740000000
          TabOrder = 5
        end
      end
      object grpDataPermintaan: TGroupBox
        Left = 353
        Top = 1
        Width = 868
        Height = 158
        Align = alClient
        Caption = 'DATA PERMINTAAN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object lblTglPermintaan: TLabel
          Left = 8
          Top = 24
          Width = 110
          Height = 13
          Caption = 'TGL PERMINTAAN'
        end
        object lblNoPermintaan: TLabel
          Left = 152
          Top = 24
          Width = 121
          Height = 13
          Caption = 'NO REGISTRASI lAB'
        end
        object lblAsalRuang: TLabel
          Left = 8
          Top = 64
          Width = 80
          Height = 13
          Caption = 'ASAL RUANG'
        end
        object lblDokterPengirim: TLabel
          Left = 152
          Top = 64
          Width = 117
          Height = 13
          Caption = 'DOKTER PENGIRIM'
        end
        object lblKode: TLabel
          Left = 8
          Top = 104
          Width = 83
          Height = 13
          Caption = 'KODE RUANG'
        end
        object lblNoTransaksiTindakan: TLabel
          Left = 152
          Top = 104
          Width = 187
          Height = 13
          Caption = 'NO TRANSAKSI TINDAKAN LAB'
        end
        object lblCaraBayar: TLabel
          Left = 408
          Top = 120
          Width = 72
          Height = 13
          Caption = 'lblCaraBayar'
        end
        object dtpTglPermintaan: TDateTimePicker
          Left = 8
          Top = 40
          Width = 137
          Height = 21
          Date = 0.479442974537960300
          Time = 0.479442974537960300
          TabOrder = 0
        end
        object edtNoRegistrasiLab: TEdit
          Left = 152
          Top = 40
          Width = 249
          Height = 21
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
          Left = 408
          Top = 40
          Width = 33
          Height = 25
          Caption = '...'
          TabOrder = 4
        end
        object edtKode: TEdit
          Left = 8
          Top = 120
          Width = 137
          Height = 21
          Enabled = False
          TabOrder = 5
        end
        object edtNoTindakanPermintaanLab: TEdit
          Left = 152
          Top = 120
          Width = 249
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
      Width = 520
      Height = 280
      Align = alLeft
      Caption = 'pnlKiri'
      TabOrder = 1
      object grpPencarian: TGroupBox
        Left = 1
        Top = 1
        Width = 518
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
        Width = 518
        Height = 230
        Align = alClient
        Caption = 'TINDAKAN Dan TARIF LAB'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object dbgrdhTindakanLab: TDBGridEh
          Left = 2
          Top = 18
          Width = 514
          Height = 210
          Align = alClient
          DataSource = DataSimrs.dsvw_tindakanlab
          DynProps = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          FooterParams.Color = clWindow
          IndicatorOptions = [gioShowRowIndicatorEh, gioShowRowselCheckboxesEh]
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          ParentFont = False
          TabOrder = 0
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'kdTindakan'
              Footers = <>
              Title.Caption = 'KODE'
              Width = 80
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'tindakan'
              Footers = <>
              Title.Caption = 'TINDAKAN'
              Width = 211
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'kelas'
              Footers = <>
              Title.Caption = 'KELAS'
              Width = 85
            end
            item
              CellButtons = <>
              DynProps = <>
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
      Left = 521
      Top = 161
      Width = 702
      Height = 280
      Align = alClient
      TabOrder = 2
      object pnlKiri1: TPanel
        Left = 1
        Top = 1
        Width = 64
        Height = 278
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
        Width = 636
        Height = 278
        Align = alClient
        TabOrder = 1
        object dbgrdhTindakanPermintaanLab: TDBGridEh
          Left = 1
          Top = 1
          Width = 634
          Height = 276
          Align = alClient
          DataSource = DataSimrs.dsvw_detailtindakanpenunjangrajal
          DynProps = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          FooterRowCount = 1
          FooterParams.Color = clWindow
          IndicatorOptions = []
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          SumList.Active = True
          TabOrder = 0
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'kdTarif'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Footers = <>
              Title.Caption = 'KODE'
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'tindakan'
              Footers = <>
              Title.Caption = 'TINDAKAN'
              Width = 183
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'tarif'
              Footers = <>
              Title.Caption = 'TARIF'
              Width = 61
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'jumlahTindakan'
              Footer.Font.Charset = ANSI_CHARSET
              Footer.Font.Color = clWindowText
              Footer.Font.Height = -13
              Footer.Font.Name = 'Times New Roman'
              Footer.Font.Style = [fsBold]
              Footer.Value = 'TOTAL'
              Footer.ValueType = fvtStaticText
              Footers = <>
              Title.Caption = 'JUMLAH'
              Width = 51
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'totalTarif'
              Footer.Font.Charset = ANSI_CHARSET
              Footer.Font.Color = clWindowText
              Footer.Font.Height = -13
              Footer.Font.Name = 'Times New Roman'
              Footer.Font.Style = [fsBold]
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'TOTAL TARIF'
              Width = 80
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'namapetugasMedis'
              Footers = <>
              Title.Caption = 'DOKTER'
              Width = 155
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 491
    Width = 1224
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
    Width = 1224
    Height = 49
    Align = alTop
    Caption = 'PERMINTAAN PEMERIKSAAN LABORATORIUM'
    Color = clTeal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindow
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object pnlKeluar: TPanel
      Left = 1086
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
