object FRiwayatObatPasien: TFRiwayatObatPasien
  Left = 85
  Top = 69
  Width = 1381
  Height = 822
  Caption = 'RIWAYAT OBAT PASIEN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBawah: TPanel
    Left = 0
    Top = 731
    Width = 1365
    Height = 52
    Align = alBottom
    Color = 15115304
    TabOrder = 0
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 1365
    Height = 49
    Align = alTop
    Caption = 'RIWAYAT E- RESEP DAN OBAT RAWAT JALAN'
    Color = 15115304
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindow
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object pnlKeluar: TPanel
      Left = 1227
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
    Width = 1365
    Height = 682
    Align = alClient
    TabOrder = 2
    object cxpgcntrl1: TcxPageControl
      Left = 1
      Top = 1
      Width = 1363
      Height = 680
      ActivePage = cxtbshtE_Resep
      Align = alClient
      TabOrder = 0
      ClientRectBottom = 676
      ClientRectLeft = 4
      ClientRectRight = 1359
      ClientRectTop = 24
      object cxtbshtE_Resep: TcxTabSheet
        Caption = 'E-RESEP'
        ImageIndex = 0
        object dbgrdhEresep: TDBGridEh
          Left = 0
          Top = 0
          Width = 1355
          Height = 652
          Align = alClient
          DataSource = DataSimrs.dst_resepranap
          DynProps = <>
          FooterParams.Color = clWindow
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          RowDetailPanel.Active = True
          RowDetailPanel.Height = 450
          TabOrder = 0
          OnCellClick = dbgrdhEresepCellClick
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'noResep'
              Footers = <>
              Title.Caption = 'NO RESEP'
              Width = 367
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'tglResep'
              Footers = <>
              Title.Caption = 'TGL RESEP'
              Width = 320
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'noRekamedis'
              Footers = <>
              Title.Caption = 'NO REKAMEDIS'
              Width = 192
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'noDaftarRawatInap'
              Footers = <>
              Title.Caption = 'NO DAFTAR '
              Width = 259
            end>
          object RowDetailData: TRowDetailPanelControlEh
            object dbgrdhDetailResep: TDBGridEh
              Left = 0
              Top = 0
              Width = 1121
              Height = 448
              Align = alClient
              DataSource = DataSimrs.dst_detailresepranap
              DrawMemoText = True
              DynProps = <>
              FooterParams.Color = clWindow
              IndicatorOptions = [gioShowRowIndicatorEh, gioShowRowselCheckboxesEh]
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
              RowDetailPanel.Active = True
              RowDetailPanel.Height = 300
              TabOrder = 0
              OnCellClick = dbgrdhDetailResepCellClick
              Columns = <
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'kdObat'
                  Footers = <>
                  Title.Caption = 'KODE OBAT'
                  Width = 95
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'nmObat'
                  Footers = <>
                  Title.Caption = 'NAMA OBAT'
                  Width = 330
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'aturanPakai'
                  Footers = <>
                  Title.Caption = 'ATURAN PAKAI'
                  Width = 92
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'satuanJual'
                  Footers = <>
                  Title.Caption = 'SATUAN JUAL'
                  Width = 113
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'keterangan'
                  Footers = <>
                  Title.Caption = 'KETERANGAN'
                  Width = 155
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'jmlPemberianKronis'
                  Footers = <>
                  Title.Caption = 'JML KRONIS'
                  Width = 97
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'jmlPemberianNonKronis'
                  Footers = <>
                  Title.Caption = 'JML NON KRONIS'
                  Width = 105
                end>
              object RowDetailData: TRowDetailPanelControlEh
                object dbgrdhRacikan: TDBGridEh
                  Left = 0
                  Top = 0
                  Width = 973
                  Height = 298
                  Align = alClient
                  DataSource = DataSimrs.dst_detailracikan
                  DrawMemoText = True
                  DynProps = <>
                  FooterParams.Color = clWindow
                  IndicatorOptions = [gioShowRowIndicatorEh, gioShowRowselCheckboxesEh]
                  Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
                  TabOrder = 0
                  Columns = <
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'kdObat'
                      Footers = <>
                      Title.Caption = 'KODE OBAT'
                      Width = 84
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'nmObat'
                      Footers = <>
                      Title.Caption = 'NAMA OBAT'
                      Width = 298
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'satuan'
                      Footers = <>
                      Title.Caption = 'SATUAN'
                      Width = 89
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'keterangan'
                      Footers = <>
                      Title.Caption = 'KETERANGAN'
                      Width = 193
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'jmlPemberianKronis'
                      Footers = <>
                      Title.Caption = 'JML KRONIS'
                      Width = 127
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'jmlPemberianNonKronis'
                      Footers = <>
                      Title.Caption = 'JML NON KRONIS'
                      Width = 113
                    end>
                  object RowDetailData: TRowDetailPanelControlEh
                  end
                end
              end
            end
          end
        end
      end
      object cxtbshtObat: TcxTabSheet
        Caption = 'OBAT'
        ImageIndex = 1
        object dbgrdhObat: TDBGridEh
          Left = 0
          Top = 0
          Width = 1355
          Height = 652
          Align = alClient
          DataSource = DataSimrs.dst_penjualanobatrajal
          DynProps = <>
          FooterParams.Color = clWindow
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          RowDetailPanel.Active = True
          RowDetailPanel.Height = 350
          TabOrder = 0
          OnCellClick = dbgrdhObatCellClick
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'noPenjualanObatRajal'
              Footers = <>
              Title.Caption = 'NO PENJUALAN OBAT'
              Width = 164
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'tglPenjualanObatRajal'
              Footers = <>
              Title.Caption = 'TGL PENJUALAN OBAT'
              Width = 183
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'noDaftar'
              Footers = <>
              Title.Caption = 'NO DAFTAR'
              Width = 236
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'tglDaftar'
              Footers = <>
              Title.Caption = 'TGL DAFTAR'
              Width = 215
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'unit'
              Footers = <>
              Title.Caption = 'UNIT'
              Width = 233
            end
            item
              CellButtons = <>
              DisplayFormat = '#,#0.00;(#,#0.00);#,#0.00 '
              DynProps = <>
              EditButtons = <>
              FieldName = 'totalAkhirPenjualanRajal'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Footers = <>
              Title.Caption = 'TOTAL PENJUALAN'
              Width = 147
            end>
          object RowDetailData: TRowDetailPanelControlEh
            object dbgrdhDetailObat: TDBGridEh
              Left = 0
              Top = 0
              Width = 1163
              Height = 348
              Align = alClient
              DataSource = DataSimrs.dst_detailpenjualanobatrajal
              DynProps = <>
              FooterParams.Color = clWindow
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              TabOrder = 0
              TitleParams.MultiTitle = True
              Columns = <
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'kdObat'
                  Footers = <>
                  Title.Caption = 'KODE OBAT'
                  Width = 88
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'namaObat'
                  Footers = <>
                  Title.Caption = 'NAMA OBAT'
                  Width = 253
                end
                item
                  CellButtons = <>
                  DisplayFormat = '#,#0.00;(#,#0.00);#,#0.00 '
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'harga'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  Footers = <>
                  Title.Caption = 'HARGA'
                  Title.Font.Charset = DEFAULT_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -13
                  Title.Font.Name = 'MS Sans Serif'
                  Title.Font.Style = [fsBold]
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'satuan'
                  Footers = <>
                  Title.Caption = 'SATUAN'
                  Width = 85
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'kebutuhanKronis'
                  Footers = <>
                  Title.Caption = 'KEBUTUHAN |  KRONIS'
                  Width = 61
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'kebutuhanNonKronis'
                  Footers = <>
                  Title.Caption = 'KEBUTUHAN | NON KRONIS'
                  Width = 84
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'diberikanKronis'
                  Footers = <>
                  Title.Caption = 'DIBERIKAN |  KRONIS'
                  Width = 70
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'diberikanNonKronis'
                  Footers = <>
                  Title.Caption = 'DIBERIKAN |  NON KRONIS'
                  Width = 79
                end
                item
                  CellButtons = <>
                  DisplayFormat = '#,#0.00;(#,#0.00);#,#0.00 '
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'subTotalPenjualan'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  Footers = <>
                  Title.Caption = 'SUB TOTAL PENJUALAN'
                  Width = 120
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
          end
        end
      end
    end
  end
end
