object FMasukanTindakanRawatJalan: TFMasukanTindakanRawatJalan
  Left = 105
  Top = 143
  Width = 1305
  Height = 675
  Caption = 'MASUKAN TINDAKAN RAWAT JALAN'
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
    Top = 584
    Width = 1289
    Height = 52
    Align = alBottom
    Color = 15115304
    TabOrder = 0
    object btnHapus: TButton
      Left = 8
      Top = 16
      Width = 75
      Height = 25
      Caption = 'HAPUS'
      TabOrder = 0
      OnClick = btnHapusClick
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 49
    Align = alTop
    Caption = 'MASUKAN TINDAKAN RAWAT JALAN/ IGD'
    Color = 15115304
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindow
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object pnlKeluar: TPanel
      Left = 1151
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
    Width = 1289
    Height = 535
    Align = alClient
    TabOrder = 2
    object grpDaftarDataTindakanRs: TGroupBox
      Left = 1
      Top = 1
      Width = 1287
      Height = 320
      Align = alTop
      Caption = 'DAFTAR DATA TINDAKAN RS '
      TabOrder = 0
      object pnl1: TPanel
        Left = 2
        Top = 277
        Width = 1283
        Height = 41
        Align = alBottom
        TabOrder = 0
        object lblCariNamaTindakan: TLabel
          Left = 8
          Top = 16
          Width = 117
          Height = 13
          Caption = 'CARI NAMA TINDAKAN'
        end
        object edtCariNamaTindakan: TEdit
          Left = 136
          Top = 16
          Width = 233
          Height = 21
          TabOrder = 0
          OnChange = edtCariNamaTindakanChange
        end
        object btnPilih: TButton
          Left = 384
          Top = 8
          Width = 75
          Height = 25
          Caption = 'INPUT'
          TabOrder = 1
          OnClick = btnPilihClick
        end
      end
      object dbgrdhDaftarTindakanRsPoli: TDBGridEh
        Left = 2
        Top = 15
        Width = 1283
        Height = 262
        Align = alClient
        DataSource = DataSimrs.dsvw_tindakantarifrajal
        DynProps = <>
        FooterParams.Color = clWindow
        IndicatorOptions = [gioShowRowIndicatorEh, gioShowRowselCheckboxesEh]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        TabOrder = 1
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'kdTarif'
            Footers = <>
            Title.Caption = 'KODE TARIF'
            Width = 90
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'kdTindakan'
            Footers = <>
            Title.Caption = 'KODE TINDAKAN'
            Width = 106
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'tindakan'
            Footers = <>
            Title.Caption = 'TINDAKAN'
            Width = 397
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'kelompokTindakan'
            Footers = <>
            Title.Caption = 'KELOMPOK'
            Width = 263
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
    object grpDaftarTindakanPoli: TGroupBox
      Left = 1
      Top = 321
      Width = 1287
      Height = 213
      Align = alClient
      Caption = 'DAFTAR TINDKAN POLI / IGD'
      TabOrder = 1
      object dbgrdhDaftarTindakanPoliIgd: TDBGridEh
        Left = 2
        Top = 15
        Width = 1283
        Height = 196
        Align = alClient
        DataSource = DataSimrs.dsvw_tindakantarifrajalkelomopok
        DynProps = <>
        FooterParams.Color = clWindow
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'kdTarif'
            Footers = <>
            Title.Caption = 'KODE TARIF'
            Width = 109
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'kdTindakan'
            Footers = <>
            Title.Caption = 'KODE TINDAKAN'
            Width = 108
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'kelompokTindakan'
            Footers = <>
            Title.Caption = 'KELOMPOK TINDAKAN'
            Width = 207
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'tindakan'
            Footers = <>
            Title.Caption = 'TINDAKAN'
            Width = 267
          end
          item
            CellButtons = <>
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
            FieldName = 'unit'
            Footers = <>
            Title.Caption = 'UNIT'
            Width = 146
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
end
