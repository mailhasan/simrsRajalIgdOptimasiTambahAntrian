object FJadwalKontrolPasienRajal: TFJadwalKontrolPasienRajal
  Left = 462
  Top = 161
  Width = 682
  Height = 491
  Caption = 'JADWAL KONTROL PASIEN RAWAT JALAN'
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
    Top = 407
    Width = 666
    Height = 45
    Align = alBottom
    Color = 15115304
    TabOrder = 0
    object btnSimpan: TcxButton
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Caption = 'SIMPAN'
      TabOrder = 0
      OnClick = btnSimpanClick
    end
    object btnUbah: TcxButton
      Left = 96
      Top = 8
      Width = 75
      Height = 25
      Caption = 'UBAH'
      TabOrder = 1
      OnClick = btnUbahClick
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 666
    Height = 49
    Align = alTop
    Caption = 'JADWAL KONTROL PASIEN '
    Color = 15115304
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindow
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object pnlKeluar: TPanel
      Left = 569
      Top = 1
      Width = 96
      Height = 47
      Align = alRight
      Caption = 'KELUAR'
      Color = 5855743
      TabOrder = 0
      OnClick = pnlKeluarClick
    end
  end
  object cxpgcntrl1: TcxPageControl
    Left = 0
    Top = 49
    Width = 666
    Height = 358
    ActivePage = cxtbshtDataKontrol
    Align = alClient
    TabOrder = 2
    ClientRectBottom = 354
    ClientRectLeft = 4
    ClientRectRight = 662
    ClientRectTop = 24
    object cxtbshtDataKontrol: TcxTabSheet
      Caption = 'DATA JADWAL KONTROL PASIEN'
      ImageIndex = 0
      object dxlytcntrl1: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 658
        Height = 330
        Align = alClient
        TabOrder = 0
        TabStop = False
        object cbbUnitTujuan: TcxLookupComboBox
          Left = 127
          Top = 231
          Properties.KeyFieldNames = 'kdUnit'
          Properties.ListColumns = <
            item
              Caption = 'UNIT'
              FieldName = 'unit'
            end>
          Properties.ListSource = DataSimrs.dswv_unitrajal
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          Style.ButtonStyle = btsHotFlat
          Style.PopupBorderStyle = epbsSingle
          TabOrder = 5
          Width = 145
        end
        object dtpJadwalKontrol: TcxDateEdit
          Left = 127
          Top = 258
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          Style.ButtonStyle = btsHotFlat
          Style.PopupBorderStyle = epbsSingle
          TabOrder = 6
          Width = 121
        end
        object cbbDokter: TcxLookupComboBox
          Left = 127
          Top = 285
          Properties.KeyFieldNames = 'kdPetugasMedis'
          Properties.ListColumns = <
            item
              Caption = 'DOKTER'
              FieldName = 'namapetugasMedis'
            end>
          Properties.ListSource = DataSimrs.dsVwTenagaMedis
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          Style.ButtonStyle = btsHotFlat
          Style.PopupBorderStyle = epbsSingle
          TabOrder = 7
          Width = 145
        end
        object edtNORekamedis: TcxTextEdit
          Left = 127
          Top = 36
          Enabled = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          StyleDisabled.BorderColor = clBtnShadow
          StyleDisabled.Color = clHighlightText
          StyleDisabled.TextColor = clBtnText
          TabOrder = 0
          Text = 'edtNORekamedis'
          Width = 187
        end
        object edtNmPasien: TcxTextEdit
          Left = 398
          Top = 36
          Enabled = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          StyleDisabled.Color = clHighlightText
          StyleDisabled.TextColor = clBtnText
          TabOrder = 1
          Text = 'edtNmPasien'
          Width = 206
        end
        object edtTempatLahir: TcxTextEdit
          Left = 127
          Top = 63
          Enabled = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          Style.TextColor = clWindowFrame
          Style.TransparentBorder = True
          StyleDisabled.Color = clHighlightText
          StyleDisabled.TextColor = clBtnText
          TabOrder = 2
          Text = 'edtTempatLahir'
          Width = 187
        end
        object dtpTglLahir: TcxDateEdit
          Left = 398
          Top = 63
          Enabled = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          Style.ButtonStyle = btsHotFlat
          Style.PopupBorderStyle = epbsSingle
          StyleDisabled.Color = clHighlightText
          StyleDisabled.TextColor = clBtnText
          TabOrder = 3
          Width = 204
        end
        object cxmAlamat: TcxMemo
          Left = 127
          Top = 104
          Enabled = False
          Lines.Strings = (
            'cxmAlamat')
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          StyleDisabled.Color = clHighlightText
          StyleDisabled.TextColor = clBtnText
          TabOrder = 4
          Height = 89
          Width = 185
        end
        object dxlytgrpLayoutControl1Group_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avTop
          LayoutLookAndFeel = dxLayoutWebLookAndFeel1
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxlytcntrl1Group2: TdxLayoutGroup
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            object dxlytgrpdxlytcntrl1GroupDataPasien: TdxLayoutGroup
              CaptionOptions.Text = 'DATA PASIEN'
              ButtonOptions.Buttons = <>
              object dxlytgrpdxlytcntrl1Group1: TdxLayoutGroup
                ButtonOptions.Buttons = <>
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxlytmNoRekamedis: TdxLayoutItem
                  CaptionOptions.Text = 'NO RM'
                  Enabled = False
                  Control = edtNORekamedis
                  ControlOptions.ShowBorder = False
                end
                object dxlytmNmPasien: TdxLayoutItem
                  CaptionOptions.Text = 'NAMA PASIEN'
                  Enabled = False
                  Control = edtNmPasien
                  ControlOptions.ShowBorder = False
                end
              end
              object dxlytgrpTglLahir: TdxLayoutGroup
                ButtonOptions.Buttons = <>
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxlytmTempatlLahir: TdxLayoutItem
                  CaptionOptions.Text = 'TEMPAT LAHIR'
                  Enabled = False
                  Control = edtTempatLahir
                  ControlOptions.ShowBorder = False
                end
                object dxlytmdxlytcntrl1ItemTglLahir: TdxLayoutItem
                  CaptionOptions.Text = 'TGL LAHIR'
                  Enabled = False
                  Control = dtpTglLahir
                  ControlOptions.ShowBorder = False
                end
              end
            end
            object dxlytgrpdxlytcntrl1Group2: TdxLayoutGroup
              ButtonOptions.Buttons = <>
              object dxlytmAlamat: TdxLayoutItem
                CaptionOptions.Text = 'ALAMAT'
                Enabled = False
                Control = cxmAlamat
                ControlOptions.ShowBorder = False
              end
            end
            object dxlytgrpdxlytcntrl1GroupJadwal: TdxLayoutGroup
              CaptionOptions.Text = 'JADWAL KONTROL'
              ButtonOptions.Buttons = <>
              object dxlytmUnitTujuan: TdxLayoutItem
                CaptionOptions.Text = 'UNIT TUJUAN'
                Control = cbbUnitTujuan
                ControlOptions.ShowBorder = False
              end
              object dxlytmJadwalKontrol: TdxLayoutItem
                CaptionOptions.Text = 'JADWAL KONTROL'
                Control = dtpJadwalKontrol
                ControlOptions.ShowBorder = False
              end
              object dxlytmDokter: TdxLayoutItem
                CaptionOptions.Text = 'DOKTER'
                Control = cbbDokter
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
    end
    object cxtbshtRiwayat: TcxTabSheet
      Caption = 'RIWAYAT JADWAL KONTROL PASIEN'
      ImageIndex = 1
      OnClick = cxtbshtRiwayatClick
      OnShow = cxtbshtRiwayatShow
      object cxgrd1: TcxGrid
        Left = 0
        Top = 0
        Width = 658
        Height = 330
        Align = alClient
        TabOrder = 0
        object cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = DataSimrs.dst_jadwalkontrolpasienrajal
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Editing = False
          object cxgrdbclmnGrid1DBTableView1noRekamedis: TcxGridDBColumn
            Caption = 'NO RM'
            DataBinding.FieldName = 'noRekamedis'
            Width = 54
          end
          object cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn
            Caption = 'NO TRANSAKSI'
            DataBinding.FieldName = 'IDJadwalKontrolPasienRajal'
            Width = 89
          end
          object cxgrdbclmnGrid1DBTableView1unit: TcxGridDBColumn
            Caption = 'UNIT'
            DataBinding.FieldName = 'unit'
            Width = 49
          end
          object cxgrdbclmnGrid1DBTableView1tglJadwalKontrolPasienRajal: TcxGridDBColumn
            Caption = 'JADWAL KONTROL'
            DataBinding.FieldName = 'tglJadwalKontrolPasienRajal'
            Width = 124
          end
          object cxgrdbclmnGrid1DBTableView1namapetugasMedis: TcxGridDBColumn
            Caption = 'DOKTER'
            DataBinding.FieldName = 'namapetugasMedis'
            Width = 141
          end
        end
        object cxgrdlvlGrid1Level1: TcxGridLevel
          GridView = cxgrdbtblvwGrid1DBTableView1
        end
      end
    end
  end
  object dxlytlkndflst1: TdxLayoutLookAndFeelList
    Left = 624
    Top = 88
    object dxLayoutWebLookAndFeel1: TdxLayoutWebLookAndFeel
    end
  end
end
