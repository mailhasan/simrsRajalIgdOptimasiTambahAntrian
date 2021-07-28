object FEresepRajal: TFEresepRajal
  Left = 101
  Top = 153
  Width = 1336
  Height = 675
  Align = alClient
  Caption = 'E-RESEP RAWAT JALAN'
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
  object pnlBawah: TPanel
    Left = 0
    Top = 584
    Width = 1320
    Height = 52
    Align = alBottom
    Color = 15115304
    TabOrder = 0
    object btnRiwayatObat: TButton
      Left = 8
      Top = 16
      Width = 121
      Height = 25
      Caption = 'RIWAYAT OBAT'
      TabOrder = 0
      OnClick = btnRiwayatObatClick
    end
    object btnJadwalKontrol: TcxButton
      Left = 136
      Top = 16
      Width = 193
      Height = 25
      Caption = 'JADWAL KONTROL PASIEN'
      TabOrder = 1
      OnClick = btnJadwalKontrolClick
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 1320
    Height = 49
    Align = alTop
    Caption = 'E- RESEP RAWAT JALAN'
    Color = 15115304
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindow
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object pnlKeluar: TPanel
      Left = 1182
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
  object pnlTengah: TPanel
    Left = 0
    Top = 49
    Width = 1320
    Height = 535
    Align = alClient
    TabOrder = 2
    object pnlAtas1: TPanel
      Left = 1
      Top = 1
      Width = 1318
      Height = 136
      Align = alTop
      TabOrder = 0
      object grpDataResep: TGroupBox
        Left = 1
        Top = 1
        Width = 1316
        Height = 64
        Align = alTop
        Caption = 'DATA RESEP'
        TabOrder = 0
        object lblNoResep: TLabel
          Left = 24
          Top = 16
          Width = 55
          Height = 13
          Caption = 'NO RESEP'
        end
        object lblTglResep: TLabel
          Left = 296
          Top = 16
          Width = 60
          Height = 13
          Caption = 'TGL RESEP'
        end
        object lblDokter: TLabel
          Left = 568
          Top = 16
          Width = 40
          Height = 13
          Caption = 'DOKTER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edtNoResep: TEdit
          Left = 24
          Top = 32
          Width = 217
          Height = 21
          TabOrder = 0
          Text = 'edtNoResep'
        end
        object dtpTglResep: TDateTimePicker
          Left = 304
          Top = 32
          Width = 186
          Height = 21
          Date = 43850.700385914350000000
          Time = 43850.700385914350000000
          TabOrder = 1
        end
        object cbbDokter: TcxLookupComboBox
          Left = 568
          Top = 28
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
          TabOrder = 2
          Width = 289
        end
      end
      object grpKodeObat: TGroupBox
        Left = 1
        Top = 65
        Width = 1316
        Height = 70
        Align = alClient
        Caption = 'PENCARIAN OBAT NON RACIKAN'
        TabOrder = 1
        object lblKodeObat: TLabel
          Left = 8
          Top = 16
          Width = 62
          Height = 13
          Caption = 'KODE OBAT'
        end
        object lblNamaObat: TLabel
          Left = 136
          Top = 16
          Width = 63
          Height = 13
          Caption = 'NAMA OBAT'
        end
        object lblSatuan: TLabel
          Left = 576
          Top = 16
          Width = 44
          Height = 13
          Caption = 'SATUAN'
        end
        object lblJmlKronis: TLabel
          Left = 1024
          Top = 16
          Width = 64
          Height = 13
          Caption = 'JML KRONIS'
        end
        object lblJmlNonKronis: TLabel
          Left = 912
          Top = 16
          Width = 91
          Height = 13
          Caption = 'JML NON KRONIS'
        end
        object lblAturanPakai: TLabel
          Left = 720
          Top = 16
          Width = 79
          Height = 13
          Caption = 'ATURAN PAKAI'
        end
        object edtKodeObat: TEdit
          Left = 8
          Top = 32
          Width = 121
          Height = 21
          Enabled = False
          TabOrder = 0
        end
        object cbbObat: TcxLookupComboBox
          Left = 136
          Top = 32
          ParentFont = False
          Properties.CaseSensitiveSearch = True
          Properties.KeyFieldNames = 'nmObat'
          Properties.ListColumns = <
            item
              Caption = 'NAMA OBAT'
              Width = 400
              FieldName = 'nmObat'
            end
            item
              Caption = 'JML STOK'
              Width = 100
              FieldName = 'jmlStok'
            end>
          Properties.ListSource = DataSimrs.dsObatRajal
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 1
          OnKeyPress = cbbObatKeyPress
          Width = 433
        end
        object cxcrncydtJumlahKronis: TcxCurrencyEdit
          Left = 1024
          Top = 32
          Properties.AssignedValues.DisplayFormat = True
          TabOrder = 2
          OnKeyPress = cxcrncydtJumlahKronisKeyPress
          Width = 89
        end
        object cxcrncydtJumlahNonKronis: TcxCurrencyEdit
          Left = 912
          Top = 32
          Properties.AssignedValues.DisplayFormat = True
          TabOrder = 3
          OnKeyPress = cxcrncydtJumlahNonKronisKeyPress
          Width = 105
        end
        object cxtxtdtSatuan: TcxTextEdit
          Left = 576
          Top = 32
          TabOrder = 4
          Width = 137
        end
        object btnInput: TButton
          Left = 1120
          Top = 32
          Width = 75
          Height = 25
          Caption = 'INPUT'
          TabOrder = 5
          OnClick = btnInputClick
        end
        object edtAturanPakai: TEdit
          Left = 720
          Top = 32
          Width = 185
          Height = 21
          TabOrder = 6
          OnKeyPress = edtAturanPakaiKeyPress
        end
        object btnRacikan: TButton
          Left = 1208
          Top = 32
          Width = 75
          Height = 25
          Caption = 'RACIKAN'
          TabOrder = 7
          OnClick = btnRacikanClick
        end
      end
    end
    object pnlTengah1: TPanel
      Left = 1
      Top = 137
      Width = 1318
      Height = 397
      Align = alClient
      TabOrder = 1
      object pnlAtas2: TPanel
        Left = 1
        Top = 1
        Width = 1316
        Height = 208
        Align = alTop
        TabOrder = 0
        object grpDataObatEresep: TGroupBox
          Left = 1
          Top = 1
          Width = 1314
          Height = 206
          Align = alClient
          Caption = 'DAFTAR DATA OBAT E-RESEP NON RACIKAN'
          TabOrder = 0
          object dbgrdhDataObat: TDBGridEh
            Left = 2
            Top = 15
            Width = 1310
            Height = 189
            Align = alClient
            DataSource = DataSimrs.dst_detailresepranap
            DynProps = <>
            FooterParams.Color = clWindow
            PopupMenu = pmEresep
            TabOrder = 0
            Columns = <
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'kdObat'
                Footers = <>
                Title.Caption = 'KODE OBAT'
                Width = 75
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'nmObat'
                Footers = <>
                Title.Caption = 'NAMA OBAT'
                Width = 216
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'satuanJual'
                Footers = <>
                Title.Caption = 'SATUAN'
                Width = 91
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'aturanPakai'
                Footers = <>
                Title.Caption = 'ATURAN PAKAI'
                Width = 124
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'jmlPemberianNonKronis'
                Footers = <>
                Title.Caption = 'NON KRONIS'
                Width = 93
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'jmlPemberianKronis'
                Footers = <>
                Title.Caption = 'KRONIS'
                Width = 103
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
      end
      object pnlTengah2: TPanel
        Left = 1
        Top = 209
        Width = 1316
        Height = 187
        Align = alClient
        TabOrder = 1
        object pnl1: TPanel
          Left = 1
          Top = 1
          Width = 1314
          Height = 185
          Align = alClient
          TabOrder = 0
          object grpRacikan: TGroupBox
            Left = 1
            Top = 1
            Width = 1312
            Height = 183
            Align = alClient
            Caption = 'DAFTAR DATA OBAT RACIKAN'
            TabOrder = 0
            object dbgrdhObatRacikan: TDBGridEh
              Left = 2
              Top = 15
              Width = 1308
              Height = 166
              Align = alClient
              DataSource = DataSimrs.dst_detailracikan
              DrawMemoText = True
              DynProps = <>
              FooterParams.Color = clWindow
              TabOrder = 0
              Columns = <
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'kdObat'
                  Footers = <>
                  Title.Caption = 'KODE OBAT'
                  Width = 77
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'nmObat'
                  Footers = <>
                  Title.Caption = 'NAMA OBAT'
                  Width = 213
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'jmlPemberianNonKronis'
                  Footers = <>
                  Title.Caption = 'NON KRONIS'
                  Width = 85
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'jmlPemberian'
                  Footers = <>
                  Title.Caption = 'KRONIS'
                  Width = 75
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'keterangan'
                  Footers = <>
                  Title.Caption = 'KETERANGAN'
                  Width = 181
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
          end
        end
      end
    end
  end
  object pmEresep: TPopupMenu
    Left = 267
    Top = 268
    object Hapus1: TMenuItem
      Caption = 'Hapus'
      OnClick = Hapus1Click
    end
  end
end
