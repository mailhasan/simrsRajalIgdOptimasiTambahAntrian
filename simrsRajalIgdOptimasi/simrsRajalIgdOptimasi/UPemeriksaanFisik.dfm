object FPemeriksaanFisik: TFPemeriksaanFisik
  Left = 350
  Top = 147
  Align = alClient
  BorderStyle = bsNone
  Caption = 'PEMERIKSAAN FISIK'
  ClientHeight = 524
  ClientWidth = 1072
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
  object pnlTengah: TPanel
    Left = 0
    Top = 49
    Width = 1072
    Height = 423
    Align = alClient
    TabOrder = 0
    object grpPemeriksaanFisik: TGroupBox
      Left = 1
      Top = 65
      Width = 1070
      Height = 357
      Align = alClient
      Caption = 'PEMERIKSAAN FISIK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object lblCatatan: TLabel
        Left = 8
        Top = 24
        Width = 58
        Height = 13
        Caption = 'CATATAN'
      end
      object lblAlergi: TLabel
        Left = 296
        Top = 24
        Width = 46
        Height = 13
        Caption = 'ALERGI'
      end
      object lblPerintahDokter: TLabel
        Left = 640
        Top = 24
        Width = 119
        Height = 13
        Caption = 'PERINTAH DOKTER'
      end
      object mmoCatatan: TMemo
        Left = 8
        Top = 40
        Width = 273
        Height = 81
        Lines.Strings = (
          '')
        TabOrder = 1
      end
      object mmoAlergi: TMemo
        Left = 296
        Top = 40
        Width = 329
        Height = 81
        TabOrder = 2
      end
      object mmoPerintahDokter: TMemo
        Left = 640
        Top = 40
        Width = 345
        Height = 81
        TabOrder = 3
      end
      object dbgrdhPemeriksaanFisik: TDBGridEh
        Left = 8
        Top = 136
        Width = 985
        Height = 209
        DataGrouping.GroupLevels = <>
        DataSource = DataSimrs.dst_pemeriksaanfisik
        DrawMemoText = True
        Flat = False
        Font.Charset = DEFAULT_CHARSET
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
        IndicatorOptions = [gioShowRowIndicatorEh]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'noDaftar'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'NO DAFTAR'
            Width = 128
          end
          item
            EditButtons = <>
            FieldName = 'catatanDokter'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'CATATAN DOKTER'
            Width = 141
          end
          item
            EditButtons = <>
            FieldName = 'catatanAlergi'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'CATATAN ALERGI'
            Width = 171
          end
          item
            EditButtons = <>
            FieldName = 'perintahDokter'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'CATATAN DOKTER'
            Width = 229
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object pnlAtas1: TPanel
      Left = 1
      Top = 1
      Width = 1070
      Height = 64
      Align = alTop
      TabOrder = 1
      object grpPemeriksanVital: TGroupBox
        Left = 1
        Top = 1
        Width = 1068
        Height = 62
        Align = alClient
        Caption = 'PEMERIKSAAN VITAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object lblBB: TLabel
          Left = 8
          Top = 16
          Width = 17
          Height = 13
          Caption = 'BB'
        end
        object lblKG: TLabel
          Left = 104
          Top = 40
          Width = 18
          Height = 13
          Caption = 'KG'
        end
        object lblTb: TLabel
          Left = 120
          Top = 16
          Width = 17
          Height = 13
          Caption = 'TB'
        end
        object lblCm: TLabel
          Left = 208
          Top = 40
          Width = 19
          Height = 13
          Caption = 'CM'
        end
        object lblNadi: TLabel
          Left = 232
          Top = 16
          Width = 31
          Height = 13
          Caption = 'NADI'
        end
        object lblSuhu: TLabel
          Left = 344
          Top = 16
          Width = 36
          Height = 13
          Caption = 'SUHU'
        end
        object lblxm: TLabel
          Left = 320
          Top = 40
          Width = 25
          Height = 13
          Caption = 'X/M'
        end
        object lblDerajat: TLabel
          Left = 440
          Top = 40
          Width = 69
          Height = 13
          Caption = 'DERAJAT C'
        end
        object lblRespirasi: TLabel
          Left = 504
          Top = 16
          Width = 67
          Height = 13
          Caption = 'RESPIRASI'
        end
        object lblxm1: TLabel
          Left = 632
          Top = 40
          Width = 25
          Height = 13
          Caption = 'X/M'
        end
        object lblTekDarah: TLabel
          Left = 656
          Top = 16
          Width = 106
          Height = 13
          Caption = 'TEKANAN DARAH'
        end
        object lblMmHg: TLabel
          Left = 784
          Top = 40
          Width = 39
          Height = 13
          Caption = 'MMHG'
        end
        object edtBb: TEdit
          Left = 8
          Top = 32
          Width = 89
          Height = 21
          TabOrder = 0
        end
        object edtTb: TEdit
          Left = 120
          Top = 32
          Width = 81
          Height = 21
          TabOrder = 1
        end
        object edtNadi: TEdit
          Left = 232
          Top = 32
          Width = 81
          Height = 21
          TabOrder = 2
        end
        object edtSuhu: TEdit
          Left = 344
          Top = 32
          Width = 89
          Height = 21
          TabOrder = 3
        end
        object edtRespirasi: TEdit
          Left = 504
          Top = 32
          Width = 121
          Height = 21
          TabOrder = 4
        end
        object edtTekDarah: TEdit
          Left = 656
          Top = 32
          Width = 121
          Height = 21
          TabOrder = 5
        end
      end
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 472
    Width = 1072
    Height = 52
    Align = alBottom
    Color = 15115304
    TabOrder = 1
    object btnSelesai: TButton
      Left = 936
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
      Left = 176
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
      TabOrder = 3
      OnClick = btnHapusClick
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 1072
    Height = 49
    Align = alTop
    Caption = 'PEMERIKSAAN FISIK / VITAL'
    Color = 15115304
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
