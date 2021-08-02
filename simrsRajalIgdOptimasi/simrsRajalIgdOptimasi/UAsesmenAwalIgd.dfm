object FAsesmenAwalIgd: TFAsesmenAwalIgd
  Left = 463
  Top = 62
  Width = 1456
  Height = 897
  Align = alClient
  AutoSize = True
  Caption = 'ASESMEN AWAL IGD'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 1440
    Height = 49
    Align = alTop
    Caption = 'ASESMEN AWAL IGD'
    Color = 15115304
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindow
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object pnlKeluar: TPanel
      Left = 1302
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
    Width = 1440
    Height = 809
    Align = alClient
    TabOrder = 1
    object pnlTengahAtas: TPanel
      Left = 1
      Top = 1
      Width = 1438
      Height = 96
      Align = alTop
      TabOrder = 0
      object grpTegah1: TGroupBox
        Left = 1
        Top = 1
        Width = 1436
        Height = 94
        Align = alClient
        Color = 16577248
        ParentColor = False
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
          Width = 71
          Height = 13
          Caption = 'NO RAJAL/IGD'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
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
          Width = 481
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
          Width = 193
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
          Width = 193
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
          Width = 193
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
        end
        object dtpTglDaftarUnit: TDateTimePicker
          Left = 1128
          Top = 64
          Width = 186
          Height = 21
          Date = 44407.410763518520000000
          Time = 44407.410763518520000000
          TabOrder = 11
        end
      end
    end
    object pgcAsesmenAwalIgd: TPageControl
      Left = 1
      Top = 97
      Width = 1438
      Height = 711
      ActivePage = tsTRIAGE
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object tsTRIAGE: TTabSheet
        Caption = 'TRIAGE'
        object grpTriageDataRujukan: TGroupBox
          Left = 0
          Top = 0
          Width = 1430
          Height = 145
          Align = alTop
          Caption = 'DATA RUJUKAN'
          Color = 16577248
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          object lblDIKIRIMOLEH: TLabel
            Left = 8
            Top = 24
            Width = 69
            Height = 13
            Caption = 'DIKIRIM OLEH'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblNAMAPENGIRIM: TLabel
            Left = 8
            Top = 48
            Width = 81
            Height = 13
            Caption = 'NAMA PENGIRIM'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblALAMATPENGIRIM: TLabel
            Left = 8
            Top = 72
            Width = 92
            Height = 13
            Caption = 'ALAMAT PENGIRIM'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblTGLMASUK: TLabel
            Left = 456
            Top = 24
            Width = 85
            Height = 13
            Caption = 'TGL MASUK / JAM'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblJENISKASUS: TLabel
            Left = 456
            Top = 48
            Width = 63
            Height = 13
            Caption = 'JENIS KASUS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblTgljamTrauma: TLabel
            Left = 664
            Top = 64
            Width = 76
            Height = 13
            Caption = 'Tgl/Jam Trauma'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblLOKASITKP: TLabel
            Left = 584
            Top = 96
            Width = 50
            Height = 13
            Caption = 'Lokasi TKP'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblCARADATANG: TLabel
            Left = 456
            Top = 120
            Width = 72
            Height = 13
            Caption = 'CARA DATANG'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblDIAGNOSISRUJUKAN: TLabel
            Left = 8
            Top = 96
            Width = 108
            Height = 13
            Caption = 'DIAGNOSIS RUJUKAN '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 56
            Top = 120
            Width = 5
            Height = 13
          end
          object lblTERAPIYGDIBERIKAN: TLabel
            Left = 8
            Top = 120
            Width = 109
            Height = 13
            Caption = 'TERAPI YG DIBERIKAN'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblKodeTriage: TLabel
            Left = 1024
            Top = 80
            Width = 79
            Height = 13
            Caption = 'lblKodeTriage'
          end
          object edtDIKRIMOLEH: TEdit
            Left = 144
            Top = 16
            Width = 265
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            Text = 'edtDIKRIMOLEH'
          end
          object edtNAMAPENGIRIM: TEdit
            Left = 144
            Top = 40
            Width = 265
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Text = 'edtNAMAPENGIRIM'
          end
          object mmoAlamat: TMemo
            Left = 144
            Top = 64
            Width = 265
            Height = 25
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Lines.Strings = (
              'mmoAlamat')
            ParentFont = False
            TabOrder = 2
          end
          object dtpTGLMASUK: TDateTimePicker
            Left = 584
            Top = 16
            Width = 105
            Height = 21
            Date = 44349.414277731480000000
            Time = 44349.414277731480000000
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object cxtmdtJAM: TcxTimeEdit
            Left = 696
            Top = 16
            EditValue = 0d
            TabOrder = 4
            Width = 81
          end
          object chkNontrauma: TCheckBox
            Left = 584
            Top = 40
            Width = 81
            Height = 17
            Caption = 'Non trauma'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object chkObstetri: TCheckBox
            Left = 672
            Top = 40
            Width = 65
            Height = 17
            Caption = 'Obstetri'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
          end
          object chkTrauma: TCheckBox
            Left = 584
            Top = 64
            Width = 65
            Height = 17
            Caption = 'Trauma'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
          end
          object dtpTGLTRAUMA: TDateTimePicker
            Left = 752
            Top = 64
            Width = 105
            Height = 21
            Date = 44349.414277731480000000
            Time = 44349.414277731480000000
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
          end
          object cxtmdtJAMTRAUMA: TcxTimeEdit
            Left = 864
            Top = 64
            EditValue = 0d
            TabOrder = 9
            Width = 121
          end
          object mmoLokasiTKP: TMemo
            Left = 664
            Top = 88
            Width = 321
            Height = 25
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Lines.Strings = (
              'mmoLOKASITKP')
            ParentFont = False
            TabOrder = 10
          end
          object chkBERJALAN: TCheckBox
            Left = 584
            Top = 120
            Width = 73
            Height = 17
            Caption = 'Berjalan'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
          end
          object chkBRANCAR: TCheckBox
            Left = 776
            Top = 120
            Width = 81
            Height = 17
            Caption = 'Brancar'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 12
          end
          object chkKURSIRODA: TCheckBox
            Left = 672
            Top = 120
            Width = 89
            Height = 17
            Caption = 'Kursi Roda'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 13
          end
          object grpMenuTriage: TGroupBox
            Left = 1040
            Top = 16
            Width = 361
            Height = 57
            Caption = 'MENU'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 14
            object btnSIMPANTRIAGE: TButton
              Left = 88
              Top = 16
              Width = 81
              Height = 25
              Caption = 'SIMPAN'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              OnClick = btnSIMPANTRIAGEClick
            end
            object btnUBAHTRIAGE: TButton
              Left = 176
              Top = 16
              Width = 81
              Height = 25
              Caption = 'UBAH'
              TabOrder = 1
            end
            object btnHAPUSTRIAGE: TButton
              Left = 264
              Top = 16
              Width = 81
              Height = 25
              Caption = 'HAPUS'
              TabOrder = 2
            end
            object btnBaru: TButton
              Left = 8
              Top = 16
              Width = 75
              Height = 25
              Caption = 'BARU'
              TabOrder = 3
              OnClick = btnBaruClick
            end
          end
          object mmodiagrujukan: TMemo
            Left = 144
            Top = 88
            Width = 265
            Height = 25
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Lines.Strings = (
              'mmodiagrujukan')
            ParentFont = False
            TabOrder = 15
          end
          object mmoterapi: TMemo
            Left = 144
            Top = 112
            Width = 265
            Height = 25
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Lines.Strings = (
              'mmoterapi')
            ParentFont = False
            TabOrder = 16
          end
        end
        object grpRIWAYATTRIAGE: TGroupBox
          Left = 1081
          Top = 145
          Width = 349
          Height = 537
          Align = alClient
          Caption = 'DAFTAR RIWAYAT DATA TRIAGE PASIEN'
          Color = 16577248
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 1
        end
        object grpTRIAGE: TGroupBox
          Left = 0
          Top = 145
          Width = 1081
          Height = 537
          Align = alLeft
          Caption = 'TRIAGE (diisi oleh perawat, beri tanda [v])'
          Color = 16577248
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 2
          object lblKELUHANUTAMA: TLabel
            Left = 8
            Top = 24
            Width = 83
            Height = 13
            Caption = 'KELUHAN UTAMA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblRIWAYATSINGKAT: TLabel
            Left = 8
            Top = 48
            Width = 93
            Height = 13
            Caption = 'RIWAYAT SINGKAT'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblKEADAAANUMUM: TLabel
            Left = 8
            Top = 72
            Width = 87
            Height = 13
            Caption = 'KEADAAAN UMUM'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl1: TLabel
            Left = 8
            Top = 96
            Width = 60
            Height = 13
            Caption = 'KESADARAN'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblPEMERIKSAAN: TLabel
            Left = 8
            Top = 120
            Width = 79
            Height = 13
            Caption = 'PEMERIKSAAN'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblEMERGENCY: TLabel
            Left = 312
            Top = 128
            Width = 65
            Height = 13
            Caption = 'EMERGENCY'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblTANDA: TLabel
            Left = 496
            Top = 120
            Width = 38
            Height = 13
            Caption = 'TANDA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblNON: TLabel
            Left = 816
            Top = 120
            Width = 22
            Height = 13
            Caption = 'NON'
            Font.Charset = ANSI_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblFalse: TLabel
            Left = 928
            Top = 120
            Width = 33
            Height = 13
            Caption = 'FALSE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblRESUSITASI: TLabel
            Left = 168
            Top = 128
            Width = 68
            Height = 13
            Caption = 'RESUSITASI'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblVITAL: TLabel
            Left = 501
            Top = 136
            Width = 33
            Height = 13
            Caption = 'VITAL'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label1: TLabel
            Left = 912
            Top = 136
            Width = 65
            Height = 13
            Caption = 'EMERGENCY'
            Font.Charset = ANSI_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label2: TLabel
            Left = 808
            Top = 136
            Width = 44
            Height = 13
            Caption = 'URGENT'
            Font.Charset = ANSI_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblURGENT: TLabel
            Left = 648
            Top = 128
            Width = 44
            Height = 13
            Caption = 'URGENT'
            Color = clBtnFace
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object edtKELUHANUTAMA: TEdit
            Left = 144
            Top = 24
            Width = 713
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            Text = 'edtKELUHANUTAMA'
          end
          object edtRIWAYATSINGKAT: TEdit
            Left = 144
            Top = 48
            Width = 713
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Text = 'edtRIWAYATSINGKAT'
          end
          object edtKEADAANUMUM: TEdit
            Left = 144
            Top = 72
            Width = 713
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            Text = 'edtKEADAANUMUM'
          end
          object grpJALANNAFAS: TGroupBox
            Left = 8
            Top = 152
            Width = 1001
            Height = 33
            Caption = 'JALAN NAFAS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            object GroupBox7: TGroupBox
              Left = 128
              Top = -8
              Width = 345
              Height = 41
              Color = 11181051
              ParentColor = False
              TabOrder = 7
            end
            object GroupBox8: TGroupBox
              Left = 792
              Top = -8
              Width = 209
              Height = 41
              Color = clMoneyGreen
              ParentColor = False
              TabOrder = 6
            end
            object GroupBox5: TGroupBox
              Left = 576
              Top = -8
              Width = 217
              Height = 41
              Color = 9303029
              ParentColor = False
              TabOrder = 5
            end
            object chkSumbatan: TCheckBox
              Left = 136
              Top = 8
              Width = 97
              Height = 17
              Caption = 'Sumbatan'
              Color = 11181051
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object chkBebasE: TCheckBox
              Left = 304
              Top = 8
              Width = 97
              Height = 17
              Caption = 'Bebas'
              Color = 11181051
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object chkNoUrgent: TCheckBox
              Left = 800
              Top = 8
              Width = 81
              Height = 17
              Caption = 'Bebas'
              Color = clMoneyGreen
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 3
            end
            object chkBebasFE: TCheckBox
              Left = 912
              Top = 8
              Width = 81
              Height = 17
              Caption = 'Bebas'
              Color = clMoneyGreen
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 4
            end
            object chkBebasU: TCheckBox
              Left = 608
              Top = 8
              Width = 65
              Height = 17
              Caption = 'Bebas'
              Color = 9303029
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 2
            end
          end
          object grpPERNAFASAN: TGroupBox
            Left = 8
            Top = 184
            Width = 1001
            Height = 137
            Caption = 'PERNAFASAN'
            TabOrder = 4
            object lblSaO2: TLabel
              Left = 480
              Top = 16
              Width = 30
              Height = 13
              Caption = 'SaO2:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object lbl6: TLabel
              Left = 480
              Top = 72
              Width = 52
              Height = 13
              Caption = 'Frek Nafas'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object lbl10: TLabel
              Left = 504
              Top = 40
              Width = 10
              Height = 13
              Caption = '%'
            end
            object lbl11: TLabel
              Left = 536
              Top = 96
              Width = 28
              Height = 13
              Caption = 'x/mnt'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object GroupBox9: TGroupBox
              Left = 128
              Top = 0
              Width = 345
              Height = 145
              Color = 11181051
              ParentColor = False
              TabOrder = 20
              object lblNeonatus: TLabel
                Left = 8
                Top = 56
                Width = 46
                Height = 13
                Caption = 'Neonatus'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object lblMenetapDenganOs2: TLabel
                Left = 24
                Top = 112
                Width = 104
                Height = 13
                Caption = 'Menetap Dengan Os2'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object lbl3: TLabel
                Left = 179
                Top = 56
                Width = 46
                Height = 13
                Caption = 'Neonatus'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object lbl5: TLabel
                Left = 192
                Top = 112
                Width = 104
                Height = 13
                Caption = 'Menetap Dengan Os2'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
            end
            object GroupBox2: TGroupBox
              Left = 792
              Top = -8
              Width = 209
              Height = 145
              Color = clMoneyGreen
              ParentColor = False
              TabOrder = 19
            end
            object GroupBox6: TGroupBox
              Left = 576
              Top = 0
              Width = 217
              Height = 145
              Color = 9303029
              ParentColor = False
              TabOrder = 18
              object lbl16: TLabel
                Left = 27
                Top = 56
                Width = 46
                Height = 13
                Caption = 'Neonatus'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object lbl17: TLabel
                Left = 48
                Top = 112
                Width = 104
                Height = 13
                Caption = 'Menetap Dengan Os2'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
            end
            object chkHentinafas: TCheckBox
              Left = 136
              Top = 8
              Width = 97
              Height = 17
              Caption = 'Henti nafas'
              Color = 11181051
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object chkRR1xmnt: TCheckBox
              Left = 136
              Top = 24
              Width = 97
              Height = 17
              Caption = 'RR < 1x/mnt'
              Color = 11181051
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object chkSianosis: TCheckBox
              Left = 224
              Top = 8
              Width = 73
              Height = 17
              Caption = 'Sianosis'
              Color = 11181051
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 2
            end
            object chkApnea: TCheckBox
              Left = 224
              Top = 24
              Width = 65
              Height = 17
              Caption = 'Apnea'
              Color = 11181051
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 3
            end
            object chkRR40xmnt: TCheckBox
              Left = 136
              Top = 72
              Width = 97
              Height = 17
              Caption = 'RR <40x/mnt'
              Color = 11181051
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 4
            end
            object chkSianosisSentalMenetapDenganOs2: TCheckBox
              Left = 136
              Top = 88
              Width = 129
              Height = 25
              Caption = 'Sianosis Sentral '
              Color = 11181051
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 5
            end
            object chkRR32: TCheckBox
              Left = 304
              Top = 8
              Width = 97
              Height = 17
              Caption = 'RR>32 x/mnt'
              Color = 11181051
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 6
            end
            object chkWheezing: TCheckBox
              Left = 304
              Top = 24
              Width = 97
              Height = 17
              Caption = 'Wheezing'
              Color = 11181051
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 7
            end
            object chkRR80: TCheckBox
              Left = 304
              Top = 72
              Width = 161
              Height = 17
              Caption = 'RR > 80 x/mnt RR <40x/mnt '
              Color = 11181051
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 8
            end
            object chkSianosisEmergency: TCheckBox
              Left = 304
              Top = 88
              Width = 129
              Height = 25
              Caption = 'Sianosis Sentral '
              Color = 11181051
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 9
            end
            object edtSaO2: TEdit
              Left = 480
              Top = 32
              Width = 81
              Height = 21
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 10
              Text = 'edtSaO2'
            end
            object edtFrekNafas: TEdit
              Left = 480
              Top = 88
              Width = 57
              Height = 21
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 11
              Text = 'edtFrekNafas'
            end
            object chkpr24_32Xm: TCheckBox
              Left = 608
              Top = 8
              Width = 97
              Height = 17
              Caption = 'RR 24-32 x/mnt'
              Color = 9303029
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 12
            end
            object chkWhezingE: TCheckBox
              Left = 608
              Top = 24
              Width = 97
              Height = 17
              Caption = 'Wheezing'
              Color = 9303029
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 13
            end
            object chkPR60: TCheckBox
              Left = 608
              Top = 72
              Width = 121
              Height = 17
              Caption = 'RR < 60 x/mnt RR '
              Color = 9303029
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 14
            end
            object chkSianosiSentalU: TCheckBox
              Left = 608
              Top = 88
              Width = 129
              Height = 25
              Caption = 'Sianosis Sentral '
              Color = 9303029
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 15
            end
            object chkNormalNoU: TCheckBox
              Left = 800
              Top = 64
              Width = 73
              Height = 17
              Caption = 'Normal'
              Color = clMoneyGreen
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 16
            end
            object chkNormalFE: TCheckBox
              Left = 912
              Top = 64
              Width = 73
              Height = 17
              Caption = 'Normal'
              Color = clMoneyGreen
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 17
            end
          end
          object grpSirkulasi: TGroupBox
            Left = 8
            Top = 320
            Width = 1001
            Height = 169
            Caption = 'SIRKULASI'
            TabOrder = 5
            object lbl2: TLabel
              Left = 136
              Top = 104
              Width = 46
              Height = 13
              Caption = 'Neonatus'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lbl8: TLabel
              Left = 480
              Top = 40
              Width = 75
              Height = 13
              Caption = 'Tekanan Darah'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lblNADI: TLabel
              Left = 480
              Top = 104
              Width = 22
              Height = 13
              Caption = 'Nadi'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lbl9: TLabel
              Left = 304
              Top = 104
              Width = 46
              Height = 13
              Caption = 'Neonatus'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lbl12: TLabel
              Left = 536
              Top = 64
              Width = 30
              Height = 13
              Caption = 'mmHg'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lbl13: TLabel
              Left = 536
              Top = 128
              Width = 27
              Height = 13
              Caption = 'x/mnt'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object GroupBox13: TGroupBox
              Left = 576
              Top = 0
              Width = 217
              Height = 177
              Color = 9303029
              ParentColor = False
              TabOrder = 24
              object lbl19: TLabel
                Left = 27
                Top = 96
                Width = 46
                Height = 13
                Caption = 'Neonatus'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
            end
            object GroupBox12: TGroupBox
              Left = 792
              Top = -8
              Width = 209
              Height = 177
              Color = clMoneyGreen
              ParentColor = False
              TabOrder = 23
            end
            object GroupBox10: TGroupBox
              Left = 128
              Top = -8
              Width = 345
              Height = 177
              Color = 11181051
              ParentColor = False
              TabOrder = 22
            end
            object chkHentiJantung: TCheckBox
              Left = 136
              Top = 8
              Width = 97
              Height = 17
              Caption = 'Henti Jantung'
              Color = 11181051
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object chkNadiTidakTerabaLemah: TCheckBox
              Left = 136
              Top = 24
              Width = 153
              Height = 17
              Caption = 'Nadi Tidak Teraba/Lemah'
              Color = 11181051
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object chkPucatpale: TCheckBox
              Left = 136
              Top = 64
              Width = 97
              Height = 17
              Caption = 'Pucat (pale)'
              Color = 11181051
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 2
            end
            object chkAkralDingin: TCheckBox
              Left = 136
              Top = 80
              Width = 97
              Height = 17
              Caption = 'Akral Dingin'
              Color = 11181051
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 3
            end
            object chkFrekNadi60x: TCheckBox
              Left = 136
              Top = 120
              Width = 145
              Height = 17
              Caption = 'Frek. nadi < 60x/mnt'
              Color = 11181051
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 4
            end
            object chkCRT3detik: TCheckBox
              Left = 136
              Top = 136
              Width = 97
              Height = 17
              Caption = 'CRT >3 detik'
              Color = 11181051
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 5
            end
            object chkNadiTeraba: TCheckBox
              Left = 304
              Top = 8
              Width = 145
              Height = 17
              Caption = 'Nadi Teraba Lemah'
              Color = 11181051
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 6
            end
            object chkBraadikardia: TCheckBox
              Left = 304
              Top = 24
              Width = 145
              Height = 17
              Caption = 'Braadikardia (<50x/mnt)'
              Color = 11181051
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 7
            end
            object chkTachikardia: TCheckBox
              Left = 304
              Top = 40
              Width = 137
              Height = 17
              Caption = 'Tachikardia (>150x/mnt)'
              Color = 11181051
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 8
            end
            object chkPucatPaleE: TCheckBox
              Left = 304
              Top = 64
              Width = 97
              Height = 17
              Caption = 'Pucat (pale)'
              Color = 11181051
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 9
            end
            object chkAkralDinginE: TCheckBox
              Left = 304
              Top = 80
              Width = 97
              Height = 17
              Caption = 'Akral Dingin'
              Color = 11181051
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 10
            end
            object chkCrt3DetikE: TCheckBox
              Left = 304
              Top = 136
              Width = 97
              Height = 17
              Caption = 'CRT >3 detik'
              Color = 11181051
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 11
            end
            object edtTekananDarah: TEdit
              Left = 480
              Top = 56
              Width = 57
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 12
              Text = 'edtTekananDarah'
            end
            object chkFreknadiE: TCheckBox
              Left = 304
              Top = 120
              Width = 129
              Height = 17
              Caption = 'Frek. nadi < 60x/mnt'
              Color = 11181051
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 13
            end
            object edtNadi: TEdit
              Left = 480
              Top = 120
              Width = 57
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 14
              Text = 'edtNadi'
            end
            object chkNormalUSirkulasi: TCheckBox
              Left = 800
              Top = 72
              Width = 73
              Height = 17
              Caption = 'Normal'
              Color = clMoneyGreen
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 15
            end
            object chkNormalFESirkulasi: TCheckBox
              Left = 912
              Top = 72
              Width = 73
              Height = 17
              Caption = 'Normal'
              Color = clMoneyGreen
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 16
            end
            object chkNadiTeraba120_150: TCheckBox
              Left = 608
              Top = 8
              Width = 145
              Height = 17
              Caption = 'Nadi Teraba 120-150'
              Color = 9303029
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 17
            end
            object chkFrekNadiUrgent: TCheckBox
              Left = 608
              Top = 64
              Width = 177
              Height = 17
              Caption = 'Frek. nadi Neonatus >160 x/mnt'
              Color = 9303029
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 18
            end
            object chkTekDarahSistole: TCheckBox
              Left = 608
              Top = 112
              Width = 169
              Height = 17
              Caption = 'Tek. Darah Sistole >160 x/mnt'
              Color = 9303029
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 19
            end
            object chkTekDarahDiastole: TCheckBox
              Left = 608
              Top = 128
              Width = 169
              Height = 17
              Caption = 'Tek. Darah Diastole >100x/mnt'
              Color = 9303029
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 20
            end
            object chkCrt3DetikU: TCheckBox
              Left = 608
              Top = 144
              Width = 97
              Height = 17
              Caption = 'CRT <3 detik'
              Color = 9303029
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 21
            end
          end
          object grpKESADARAN: TGroupBox
            Left = 8
            Top = 488
            Width = 1001
            Height = 137
            Caption = 'KESADARAN'
            TabOrder = 6
            object lblGCS: TLabel
              Left = 480
              Top = 8
              Width = 28
              Height = 13
              Caption = 'GCS :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lblE: TLabel
              Left = 480
              Top = 24
              Width = 7
              Height = 13
              Caption = 'E'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lbl14: TLabel
              Left = 480
              Top = 48
              Width = 7
              Height = 13
              Caption = 'V'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lbl15: TLabel
              Left = 480
              Top = 72
              Width = 9
              Height = 13
              Caption = 'M'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lbl24: TLabel
              Left = 480
              Top = 104
              Width = 25
              Height = 13
              Caption = 'Suhu'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lbl25: TLabel
              Left = 560
              Top = 104
              Width = 13
              Height = 13
              Caption = 'oC'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object GroupBox15: TGroupBox
              Left = 576
              Top = -8
              Width = 217
              Height = 145
              Color = 9303029
              ParentColor = False
              TabOrder = 18
            end
            object GroupBox14: TGroupBox
              Left = 792
              Top = -8
              Width = 209
              Height = 145
              Color = clMoneyGreen
              ParentColor = False
              TabOrder = 17
              object lbl22: TLabel
                Left = 30
                Top = 56
                Width = 67
                Height = 13
                Caption = 'Resiko Infeksi'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object lbl23: TLabel
                Left = 27
                Top = 88
                Width = 54
                Height = 13
                Caption = 'dan Fraktur'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object lbl26: TLabel
                Left = 31
                Top = 120
                Width = 34
                Height = 13
                Caption = '37,50C'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label3: TLabel
                Left = 138
                Top = 56
                Width = 63
                Height = 13
                Caption = 'Tanpa Risiko'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object lblinfeksi: TLabel
                Left = 138
                Top = 72
                Width = 31
                Height = 13
                Caption = 'Infeksi'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object lbl27: TLabel
                Left = 143
                Top = 120
                Width = 34
                Height = 13
                Caption = '36,50C'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
            end
            object GroupBox11: TGroupBox
              Left = 128
              Top = -8
              Width = 345
              Height = 145
              Color = 11181051
              ParentColor = False
              TabOrder = 16
            end
            object chkGCS9: TCheckBox
              Left = 136
              Top = 48
              Width = 97
              Height = 17
              Caption = 'GCS < 9'
              Color = 11181051
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object chkNeonatus36: TCheckBox
              Left = 136
              Top = 96
              Width = 121
              Height = 17
              Caption = 'Neonatus <36,5oC'
              Color = 11181051
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
            end
            object chkGCS9_12: TCheckBox
              Left = 304
              Top = 48
              Width = 97
              Height = 17
              Caption = 'GCS 9-12'
              Color = 11181051
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 2
            end
            object chkNeonatus35cE: TCheckBox
              Left = 304
              Top = 96
              Width = 121
              Height = 17
              Caption = 'Neonatus <36,5oC'
              Color = 11181051
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 3
            end
            object edt1: TEdit
              Left = 488
              Top = 20
              Width = 81
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              Text = 'edtNadi'
            end
            object edt2: TEdit
              Left = 488
              Top = 68
              Width = 81
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              Text = 'edtNadi'
            end
            object edt3: TEdit
              Left = 488
              Top = 44
              Width = 81
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
              Text = 'edtNadi'
            end
            object chkGCS12: TCheckBox
              Left = 608
              Top = 56
              Width = 97
              Height = 17
              Caption = 'GCS > 12'
              Color = 9303029
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 7
            end
            object chkGcs15: TCheckBox
              Left = 800
              Top = 16
              Width = 73
              Height = 17
              Caption = 'GCS 15'
              Color = clMoneyGreen
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 8
            end
            object chkLukaDng: TCheckBox
              Left = 800
              Top = 32
              Width = 81
              Height = 17
              Caption = 'Luka dengan'
              Color = clMoneyGreen
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 9
            end
            object chkTraumaNoU: TCheckBox
              Left = 800
              Top = 64
              Width = 73
              Height = 17
              Caption = 'Trauma'
              Color = clMoneyGreen
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 10
            end
            object edtSuhu: TEdit
              Left = 512
              Top = 96
              Width = 49
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 11
              Text = 'edtSuhu'
            end
            object chk36_50CNo: TCheckBox
              Left = 800
              Top = 96
              Width = 73
              Height = 17
              Caption = '36,50C >'
              Color = clMoneyGreen
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 12
            end
            object chk36_50cF: TCheckBox
              Left = 912
              Top = 96
              Width = 73
              Height = 17
              Caption = '36,50C >'
              Color = clMoneyGreen
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 13
            end
            object chknormal: TCheckBox
              Left = 912
              Top = 16
              Width = 73
              Height = 17
              Caption = 'Normal'
              Color = clMoneyGreen
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 14
            end
            object CheckBox2: TCheckBox
              Left = 912
              Top = 32
              Width = 81
              Height = 17
              Caption = 'Luka ringan '
              Color = clMoneyGreen
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 15
            end
          end
          object grpAREA: TGroupBox
            Left = 8
            Top = 624
            Width = 1001
            Height = 25
            Caption = 'AREA'
            TabOrder = 7
            object GroupBox18: TGroupBox
              Left = 792
              Top = -8
              Width = 209
              Height = 41
              Color = clMoneyGreen
              ParentColor = False
              TabOrder = 2
              object rbP3: TRadioButton
                Left = 56
                Top = 16
                Width = 113
                Height = 17
                Caption = 'P3'
                TabOrder = 0
              end
            end
            object GroupBox17: TGroupBox
              Left = 576
              Top = 0
              Width = 217
              Height = 41
              Color = 9303029
              ParentColor = False
              TabOrder = 1
              object rbP2: TRadioButton
                Left = 56
                Top = 8
                Width = 113
                Height = 17
                Caption = 'P2'
                TabOrder = 0
              end
            end
            object GroupBox16: TGroupBox
              Left = 128
              Top = -8
              Width = 345
              Height = 41
              Color = 11181051
              ParentColor = False
              TabOrder = 0
              object rbP1: TRadioButton
                Left = 120
                Top = 8
                Width = 113
                Height = 17
                Caption = 'P1'
                TabOrder = 0
              end
            end
          end
          object grpRESPONETIME: TGroupBox
            Left = 8
            Top = 696
            Width = 857
            Height = 25
            Caption = 'RESPONE TIME'
            TabOrder = 8
            object lbl7: TLabel
              Left = 200
              Top = 8
              Width = 51
              Height = 13
              Caption = '1 MENIT'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lbl30: TLabel
              Left = 544
              Top = 8
              Width = 58
              Height = 13
              Caption = '10 MENIT'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clYellow
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lbl31: TLabel
              Left = 712
              Top = 8
              Width = 58
              Height = 13
              Caption = '60 MENIT'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clLime
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object chkcompos: TCheckBox
            Left = 144
            Top = 96
            Width = 97
            Height = 17
            Caption = 'Compos Mentis'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
          end
          object chkapatis: TCheckBox
            Left = 312
            Top = 96
            Width = 97
            Height = 17
            Caption = 'Apatis'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
          end
          object chksomnolens: TCheckBox
            Left = 456
            Top = 96
            Width = 97
            Height = 17
            Caption = 'Somnolens'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
          end
          object chksopor: TCheckBox
            Left = 616
            Top = 96
            Width = 97
            Height = 17
            Caption = 'Sopor'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 12
          end
          object chkcoma: TCheckBox
            Left = 784
            Top = 96
            Width = 97
            Height = 17
            Caption = 'Coma'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 13
          end
          object grprespontime: TGroupBox
            Left = 8
            Top = 648
            Width = 1001
            Height = 25
            Caption = 'RESPON TIME'
            TabOrder = 14
            object GroupBox20: TGroupBox
              Left = 792
              Top = -8
              Width = 209
              Height = 41
              Color = clMoneyGreen
              ParentColor = False
              TabOrder = 2
              object lbl60menit: TLabel
                Left = 89
                Top = 16
                Width = 50
                Height = 13
                Caption = '60 Menit'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
            object GroupBox21: TGroupBox
              Left = 576
              Top = 0
              Width = 217
              Height = 41
              Color = 9303029
              ParentColor = False
              TabOrder = 1
              object lbl10menit: TLabel
                Left = 81
                Top = 8
                Width = 50
                Height = 13
                Caption = '10 Menit'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
            object GroupBox22: TGroupBox
              Left = 128
              Top = -8
              Width = 345
              Height = 41
              Color = 11181051
              ParentColor = False
              TabOrder = 0
              object lbl1menit: TLabel
                Left = 128
                Top = 16
                Width = 43
                Height = 13
                Caption = '1 Menit'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
          end
        end
      end
      object tsSTATUS: TTabSheet
        Caption = 'STATUS'
        ImageIndex = 1
        object grpStatusAtas: TGroupBox
          Left = 0
          Top = 0
          Width = 1430
          Height = 129
          Align = alTop
          Caption = 
            'STATUS SOSIAL, EKONOMI, PSIKOLOGI DAN SPIRITUAL (diisi oleh pera' +
            'wat, beri tanda [v])'
          Color = 16577248
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          object lblPEKERJAAN: TLabel
            Left = 336
            Top = 32
            Width = 57
            Height = 13
            Caption = 'PEKERJAAN'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblTINGGAL: TLabel
            Left = 336
            Top = 56
            Width = 93
            Height = 13
            Caption = 'TINGGAL BERSAMA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblSUKU: TLabel
            Left = 8
            Top = 56
            Width = 26
            Height = 13
            Caption = 'SUKU'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblAGAMA: TLabel
            Left = 8
            Top = 80
            Width = 36
            Height = 13
            Caption = 'AGAMA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblCARABAYAR: TLabel
            Left = 8
            Top = 32
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
          object Label4: TLabel
            Left = 672
            Top = 28
            Width = 131
            Height = 13
            Caption = 'NILAI KEPERCAYAAN SUKU'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Edit1: TEdit
            Left = 96
            Top = 24
            Width = 225
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
          object edtPEKERJAAN: TComboBox
            Left = 456
            Top = 24
            Width = 193
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemHeight = 13
            ParentFont = False
            TabOrder = 1
            Text = 'cbbPEKERJAAN'
          end
          object edtTINGGAL: TComboBox
            Left = 456
            Top = 48
            Width = 193
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemHeight = 13
            ParentFont = False
            TabOrder = 2
            Text = 'cbbTINGGAL'
          end
          object edtSUKU: TComboBox
            Left = 96
            Top = 48
            Width = 225
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemHeight = 13
            ParentFont = False
            TabOrder = 3
            Text = 'cbbSUKU'
          end
          object edtAGAMA: TComboBox
            Left = 96
            Top = 72
            Width = 225
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemHeight = 13
            ParentFont = False
            TabOrder = 4
            Text = 'cbbAGAMA'
          end
          object grpMENUSTATUS: TGroupBox
            Left = 1080
            Top = 16
            Width = 321
            Height = 57
            Caption = 'MENU'
            TabOrder = 5
            object btnSIMPANSTATUS: TButton
              Left = 16
              Top = 16
              Width = 81
              Height = 25
              Caption = 'SIMPAN'
              TabOrder = 0
            end
            object btnUBAHSTATUS: TButton
              Left = 112
              Top = 16
              Width = 81
              Height = 25
              Caption = 'UBAH'
              TabOrder = 1
            end
            object btnHAPUSSTATUS: TButton
              Left = 216
              Top = 16
              Width = 81
              Height = 25
              Caption = 'HAPUS'
              TabOrder = 2
            end
          end
          object chkTIDAKADA: TCheckBox
            Left = 672
            Top = 48
            Width = 97
            Height = 17
            Caption = 'TIDAK ADA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
          end
          object chkADA: TCheckBox
            Left = 776
            Top = 48
            Width = 113
            Height = 17
            Caption = 'ADA, SEBUTKAN'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
          end
          object Edit2: TEdit
            Left = 672
            Top = 68
            Width = 329
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            Text = 'edtAdaNilaiKepercayaan'
          end
        end
        object grpRIWAYATSTATUS: TGroupBox
          Left = 1080
          Top = 128
          Width = 353
          Height = 689
          Caption = 'DAFTAR RIWAYAT STATUS PASIEN'
          Color = 16577248
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 1
        end
        object grpInterpretasiHasil: TGroupBox
          Left = 0
          Top = 752
          Width = 1081
          Height = 105
          Caption = 'Interpretasi Hasil '
          Color = 16577248
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 2
          object lbl48: TLabel
            Left = 16
            Top = 24
            Width = 67
            Height = 16
            Caption = '20 : Mandiri'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbl49: TLabel
            Left = 16
            Top = 48
            Width = 187
            Height = 16
            Caption = '12 - 19 : Ketergantungan Ringan'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbl50: TLabel
            Left = 320
            Top = 24
            Width = 179
            Height = 16
            Caption = '9 - 11 Ketergantungan Sedang'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbl51: TLabel
            Left = 320
            Top = 48
            Width = 156
            Height = 16
            Caption = '5 - 8 Ketergantungan Berat'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbl52: TLabel
            Left = 592
            Top = 24
            Width = 152
            Height = 16
            Caption = '0- 4 Ketergantungan Total'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
        end
        object GroupBox4: TGroupBox
          Left = 0
          Top = 344
          Width = 1081
          Height = 409
          Caption = 'PENILAIAN STATUS FUNGSIONAL (Barthel Index)'
          Color = 16577248
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 3
          object lbl44: TLabel
            Left = 80
            Top = 16
            Width = 41
            Height = 13
            Caption = 'FUNGSI'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl45: TLabel
            Left = 400
            Top = 16
            Width = 108
            Height = 13
            Caption = 'SKOR, KETERANGAN'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl46: TLabel
            Left = 832
            Top = 16
            Width = 31
            Height = 13
            Caption = 'NILAI'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl34: TLabel
            Left = 8
            Top = 40
            Width = 264
            Height = 16
            Caption = '1. Mengendalikan rangsang pembuangan tinja'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl35: TLabel
            Left = 8
            Top = 72
            Width = 214
            Height = 16
            Caption = '2. Mengendalikan rangsang berkemih'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl36: TLabel
            Left = 8
            Top = 104
            Width = 271
            Height = 32
            Caption = '3. Membersihkan diri (seka muka, sisir rambut)'#13#10
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl37: TLabel
            Left = 8
            Top = 136
            Width = 245
            Height = 32
            Caption = '4. Penggunaan jamban, masuk, dan keluar'#13#10
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblMELEPASKAN: TLabel
            Left = 24
            Top = 152
            Width = 271
            Height = 16
            Caption = '(melepaskan, memakai celana, membersihkan)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl38: TLabel
            Left = 8
            Top = 184
            Width = 52
            Height = 16
            Caption = '5. Makan'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl39: TLabel
            Left = 8
            Top = 208
            Width = 235
            Height = 16
            Caption = '6. Berubah sikap dari berbaring ke duduk'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl40: TLabel
            Left = 8
            Top = 240
            Width = 128
            Height = 16
            Caption = '7. Berpindah/ berjalan'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl41: TLabel
            Left = 8
            Top = 272
            Width = 95
            Height = 16
            Caption = '8. Memakai baju'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl42: TLabel
            Left = 8
            Top = 304
            Width = 116
            Height = 16
            Caption = '9. Naik turun tangga'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl43: TLabel
            Left = 8
            Top = 336
            Width = 56
            Height = 16
            Caption = '10. Mandi'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbltotalskorstatus: TLabel
            Left = 736
            Top = 376
            Width = 69
            Height = 13
            Caption = 'TOTAL SKOR'
          end
          object cbbstatus1: TComboBox
            Left = 320
            Top = 40
            Width = 497
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemHeight = 16
            ParentFont = False
            TabOrder = 0
            Text = 'cbbstatus1'
            Items.Strings = (
              '(0) Tak Terkendali / tak teratur (perlu pencahar)'
              '(1) Kadang-kadang tak terkendali (1x seminggu)'
              '(2) Terkendali teratur')
          end
          object edtNILAI1: TEdit
            Left = 840
            Top = 40
            Width = 121
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Text = 'edtNILAI1'
          end
          object cbbstatus2: TComboBox
            Left = 320
            Top = 72
            Width = 497
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemHeight = 16
            ParentFont = False
            TabOrder = 2
            Text = 'cbbstatus2'
            Items.Strings = (
              '(0) Tak Terkendali / pakai kateter'
              '(1) Kadang-kadang tak terkendali (1x 24 jam)'
              '(2) Mandiri')
          end
          object edtNILAI2: TEdit
            Left = 840
            Top = 72
            Width = 121
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            Text = 'edtNILAI2'
          end
          object cbbstatus3: TComboBox
            Left = 320
            Top = 104
            Width = 497
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemHeight = 16
            ParentFont = False
            TabOrder = 4
            Text = 'cbbstatus3'
            Items.Strings = (
              '(0) Butuh pertolongan orang lain'
              '(1) Mandiri')
          end
          object edtNILAI3: TEdit
            Left = 840
            Top = 104
            Width = 121
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            Text = 'edtNILAI3'
          end
          object cbbstatus4: TComboBox
            Left = 320
            Top = 136
            Width = 497
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemHeight = 16
            ParentFont = False
            TabOrder = 6
            Text = 'cbbstatus4'
            Items.Strings = (
              '(0) Tergantung pertolongan orang lain'
              
                '(1) Perlu pertolongan pada beberapa tapi dapat mengerjakan sendi' +
                'ri kegiatan yang lain'
              '(2) Mandiri')
          end
          object edtNILAI4: TEdit
            Left = 840
            Top = 136
            Width = 121
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            Text = 'edtNILAI4'
          end
          object cbbstatus5: TComboBox
            Left = 320
            Top = 176
            Width = 497
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemHeight = 16
            ParentFont = False
            TabOrder = 8
            Text = 'cbbstatus5'
            Items.Strings = (
              '(0) Tidak mampu'
              '(1) Perlu ditolong memotong makanan'
              '(2) Mandiri')
          end
          object edtNILAI5: TEdit
            Left = 840
            Top = 176
            Width = 121
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
            Text = 'edtNILAI5'
          end
          object cbbstatus6: TComboBox
            Left = 320
            Top = 208
            Width = 497
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemHeight = 16
            ParentFont = False
            TabOrder = 10
            Text = 'cbbstatus6'
            Items.Strings = (
              '(0) Tidak mampu'
              '(1) Perlu banyak bantuan untuk bisa duduk (2 orang)'
              '(2) Bantuan minimal 1 orang'
              '(3) Mandiri')
          end
          object edtNILAI6: TEdit
            Left = 840
            Top = 208
            Width = 121
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
            Text = 'edtNILAI6'
          end
          object cbbstatus7: TComboBox
            Left = 320
            Top = 240
            Width = 497
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemHeight = 16
            ParentFont = False
            TabOrder = 12
            Text = 'cbbstatus7'
            Items.Strings = (
              '(0) Tidak mampu'
              '(1) Bisa (pindah) dengan kursi roda'
              '(2) Berjalan dengan bantuan 1 orang'
              '(3) Mandiri')
          end
          object cbbstatus8: TComboBox
            Left = 320
            Top = 272
            Width = 497
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemHeight = 16
            ParentFont = False
            TabOrder = 13
            Text = 'cbbstatus8'
            Items.Strings = (
              '(0) Tergantung orang lain'
              '(1) Sebagian dibantu (misalnya mengancing baju)'
              '(2) Mandiri')
          end
          object cbbstatus9: TComboBox
            Left = 320
            Top = 304
            Width = 497
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemHeight = 16
            ParentFont = False
            TabOrder = 14
            Text = 'cbbstatus9'
            Items.Strings = (
              '(0) Tidak mampu'
              '(1) Butuh pertolongan'
              '(2) Mandiri')
          end
          object cbbstatus10: TComboBox
            Left = 320
            Top = 336
            Width = 497
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemHeight = 16
            ParentFont = False
            TabOrder = 15
            Text = 'cbbstatus10'
            Items.Strings = (
              '(0) Tergantung orang lain'
              '(1) Mandiri')
          end
          object edtNILAI7: TEdit
            Left = 840
            Top = 240
            Width = 121
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 16
            Text = 'edtNILAI7'
          end
          object edtNILAI8: TEdit
            Left = 840
            Top = 272
            Width = 121
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 17
            Text = 'edtNILAI8'
          end
          object edtNILAI9: TEdit
            Left = 840
            Top = 304
            Width = 121
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 18
            Text = 'edtNILAI9'
          end
          object edtNILAI10: TEdit
            Left = 840
            Top = 336
            Width = 121
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 19
            Text = 'edtNILAI10'
          end
          object edtTOTALSKOR: TEdit
            Left = 840
            Top = 369
            Width = 121
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 20
            Text = 'edtTOTALSKOR'
          end
        end
        object grpPENGGUNARESTARIN: TGroupBox
          Left = 0
          Top = 296
          Width = 505
          Height = 49
          Caption = 'PENGGUNA RESTARIN'
          Color = 16577248
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 4
          object edtPENGGUNARESTARIN: TEdit
            Left = 176
            Top = 16
            Width = 313
            Height = 21
            TabOrder = 0
            Text = 'edtPENGGUNARESTARIN'
          end
          object chkTIDAK4: TCheckBox
            Left = 8
            Top = 24
            Width = 97
            Height = 17
            Caption = 'TIDAK'
            TabOrder = 1
          end
          object chkYAKARENA: TCheckBox
            Left = 80
            Top = 24
            Width = 89
            Height = 17
            Caption = 'YA, KARENA'
            TabOrder = 2
          end
        end
        object grpJENISRESTARIN: TGroupBox
          Left = 504
          Top = 296
          Width = 577
          Height = 49
          Caption = 'JENIS RESTARIN'
          Color = 16577248
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 5
          object edtJENISRESTARIN: TEdit
            Left = 256
            Top = 16
            Width = 241
            Height = 21
            TabOrder = 0
            Text = 'edtJENISRESTARIN'
          end
          object chkOBAT: TCheckBox
            Left = 8
            Top = 24
            Width = 97
            Height = 17
            Caption = 'OBAT - OBAT'
            TabOrder = 1
          end
          object chkALAT: TCheckBox
            Left = 104
            Top = 24
            Width = 57
            Height = 17
            Caption = 'ALAT'
            TabOrder = 2
          end
          object chkLAINNYA1: TCheckBox
            Left = 176
            Top = 24
            Width = 81
            Height = 17
            Caption = 'LAINNYA'
            TabOrder = 3
          end
        end
        object grpSTATUSPSIKOLOGI: TGroupBox
          Left = 0
          Top = 240
          Width = 505
          Height = 57
          Caption = 'STATUS PSIKOLOGI'
          Color = 16577248
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 6
          object chkTENANG: TCheckBox
            Left = 120
            Top = 16
            Width = 97
            Height = 17
            Caption = 'TENANG'
            TabOrder = 0
          end
          object chkCEMAS: TCheckBox
            Left = 120
            Top = 32
            Width = 97
            Height = 17
            Caption = 'CEMAS'
            TabOrder = 1
          end
          object chkMARAH: TCheckBox
            Left = 216
            Top = 16
            Width = 97
            Height = 17
            Caption = 'MARAH'
            TabOrder = 2
          end
          object chkTAKUT: TCheckBox
            Left = 216
            Top = 32
            Width = 97
            Height = 17
            Caption = 'TAKUT'
            TabOrder = 3
          end
          object chkSEDIH: TCheckBox
            Left = 328
            Top = 16
            Width = 97
            Height = 17
            Caption = 'SEDIH'
            TabOrder = 4
          end
          object chkLAIN: TCheckBox
            Left = 328
            Top = 32
            Width = 97
            Height = 17
            Caption = 'LAIN - LAIN'
            TabOrder = 5
          end
        end
        object grpSTATUSMENTAL: TGroupBox
          Left = 504
          Top = 240
          Width = 577
          Height = 57
          Caption = 'STATUS MENTAL'
          Color = 16577248
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 7
          object chkSADAR: TCheckBox
            Left = 8
            Top = 16
            Width = 313
            Height = 17
            Caption = 'SADAR DAN ORIENTASI BAIK'
            TabOrder = 0
          end
          object chkADAMASALAH: TCheckBox
            Left = 8
            Top = 32
            Width = 225
            Height = 17
            Caption = 'ADA MASALAH PERILAKU, SEBUTKAN'
            TabOrder = 1
          end
          object edtMASALAH: TEdit
            Left = 256
            Top = 24
            Width = 241
            Height = 21
            TabOrder = 2
            Text = 'edtMASALAH'
          end
        end
        object grpBAHASA: TGroupBox
          Left = 0
          Top = 168
          Width = 1081
          Height = 73
          Caption = 'BAHASA'
          Color = 16577248
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 8
          object lblGanguanBicara: TLabel
            Left = 328
            Top = 16
            Width = 104
            Height = 13
            Caption = 'GANGGUANG BICARA'
          end
          object lbl33: TLabel
            Left = 328
            Top = 32
            Width = 101
            Height = 13
            Caption = 'BUTUH PENERJEMAH'
          end
          object lblHAMBATANBELAJAR: TLabel
            Left = 328
            Top = 48
            Width = 101
            Height = 13
            Caption = 'HAMBATAN BELAJAR'
          end
          object lblCARABELAJAR: TLabel
            Left = 640
            Top = 16
            Width = 148
            Height = 13
            Caption = 'CARA BELAJAR YANG DISUKAI'
          end
          object chkINDONESIA: TCheckBox
            Left = 8
            Top = 16
            Width = 97
            Height = 17
            Caption = 'INDONESIA'
            TabOrder = 0
          end
          object chkDAERAH: TCheckBox
            Left = 8
            Top = 32
            Width = 97
            Height = 17
            Caption = 'DAERAH'
            TabOrder = 1
          end
          object cbbDAERAH: TComboBox
            Left = 72
            Top = 32
            Width = 145
            Height = 21
            ItemHeight = 13
            TabOrder = 2
            Text = 'cbbDAERAH'
          end
          object chkLAINNYA: TCheckBox
            Left = 8
            Top = 48
            Width = 65
            Height = 17
            Caption = 'LAINNYA'
            TabOrder = 3
          end
          object chkYA1: TCheckBox
            Left = 472
            Top = 16
            Width = 89
            Height = 17
            Caption = 'YA'
            TabOrder = 4
          end
          object chkTIDAK1: TCheckBox
            Left = 536
            Top = 16
            Width = 97
            Height = 17
            Caption = 'TIDAK'
            TabOrder = 5
          end
          object chkYA2: TCheckBox
            Left = 472
            Top = 32
            Width = 89
            Height = 17
            Caption = 'YA'
            TabOrder = 6
          end
          object chkYA3: TCheckBox
            Left = 472
            Top = 48
            Width = 89
            Height = 17
            Caption = 'YA'
            TabOrder = 7
          end
          object chkTIDAK2: TCheckBox
            Left = 536
            Top = 32
            Width = 97
            Height = 17
            Caption = 'TIDAK'
            TabOrder = 8
          end
          object CHKtidak3: TCheckBox
            Left = 536
            Top = 48
            Width = 97
            Height = 17
            Caption = 'TIDAK'
            TabOrder = 9
          end
          object chkMENDENGAR: TCheckBox
            Left = 824
            Top = 16
            Width = 97
            Height = 17
            Caption = 'MENDENGAR'
            TabOrder = 10
          end
          object chkMENULIS: TCheckBox
            Left = 824
            Top = 32
            Width = 97
            Height = 17
            Caption = 'MENULIS'
            TabOrder = 11
          end
          object chkMEMBACA: TCheckBox
            Left = 824
            Top = 48
            Width = 97
            Height = 17
            Caption = 'MEMBACA'
            TabOrder = 12
          end
        end
        object grpPENDAMPINGANROHANI: TGroupBox
          Left = 0
          Top = 128
          Width = 1081
          Height = 41
          Caption = 'MEMBUTUHKAN PENDAMPINGAN ROHANI'
          Color = 16577248
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 9
          object lblkegiatan: TLabel
            Left = 296
            Top = 16
            Width = 307
            Height = 16
            Caption = 'Kegiatan Spiritual yang dibutuhkan selama perawatan'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edtKEGIATANSPITULA: TEdit
            Left = 624
            Top = 16
            Width = 377
            Height = 21
            TabOrder = 0
            Text = 'edtKEGIATANSPITULA'
          end
          object chkYA: TCheckBox
            Left = 8
            Top = 16
            Width = 89
            Height = 17
            Caption = 'YA'
            TabOrder = 1
          end
          object chkTIDAK: TCheckBox
            Left = 168
            Top = 16
            Width = 97
            Height = 17
            Caption = 'TIDAK'
            TabOrder = 2
          end
        end
      end
      object tsNyeri: TTabSheet
        Caption = 'NYERI'
        ImageIndex = 2
        object grpSIFAT: TGroupBox
          Left = 0
          Top = 232
          Width = 1081
          Height = 129
          Color = 16577248
          ParentColor = False
          TabOrder = 3
          object lblsifat: TLabel
            Left = 16
            Top = 12
            Width = 79
            Height = 14
            Caption = 'SIFAT NYERI :'
          end
          object lblKUALITAS: TLabel
            Left = 16
            Top = 36
            Width = 106
            Height = 14
            Caption = 'KUALITAS  NYERI :'
          end
          object lblPEMBERAT: TLabel
            Left = 16
            Top = 60
            Width = 117
            Height = 14
            Caption = 'FAKTOR PEMBERAT :'
          end
          object lblPERINGAN: TLabel
            Left = 16
            Top = 84
            Width = 114
            Height = 14
            Caption = 'FAKTOR PERINGAN :'
          end
          object lblEFEK: TLabel
            Left = 16
            Top = 108
            Width = 73
            Height = 14
            Caption = 'EFEK NYERI :'
          end
          object chkterus: TCheckBox
            Left = 128
            Top = 8
            Width = 121
            Height = 17
            Caption = 'Terus Menerus'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object chktumpul: TCheckBox
            Left = 128
            Top = 32
            Width = 121
            Height = 17
            Caption = 'Tumpul'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object chkcahaya: TCheckBox
            Left = 128
            Top = 56
            Width = 105
            Height = 17
            Caption = 'Cahaya'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object chkmakan: TCheckBox
            Left = 128
            Top = 80
            Width = 97
            Height = 17
            Caption = 'Makan'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object chkmual: TCheckBox
            Left = 128
            Top = 104
            Width = 113
            Height = 17
            Caption = 'Mual Muntah'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object chktajam: TCheckBox
            Left = 280
            Top = 32
            Width = 121
            Height = 17
            Caption = 'Tajam'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object chkgerakan: TCheckBox
            Left = 280
            Top = 56
            Width = 121
            Height = 17
            Caption = 'Gerakan'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
          end
          object chksunyi: TCheckBox
            Left = 280
            Top = 80
            Width = 97
            Height = 17
            Caption = 'Sunyi'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
          end
          object chktidur: TCheckBox
            Left = 280
            Top = 104
            Width = 113
            Height = 17
            Caption = 'Tidur'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
          end
          object chkHILANG: TCheckBox
            Left = 456
            Top = 8
            Width = 121
            Height = 17
            Caption = 'Hilang Timbul'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
          end
          object chktertekan: TCheckBox
            Left = 456
            Top = 32
            Width = 121
            Height = 17
            Caption = 'Tertekan'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
          end
          object chkberbaring: TCheckBox
            Left = 456
            Top = 56
            Width = 121
            Height = 17
            Caption = 'Berbaring'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
          end
          object chkdingin: TCheckBox
            Left = 456
            Top = 80
            Width = 97
            Height = 17
            Caption = 'Dingin'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 12
          end
          object chknafsumakan: TCheckBox
            Left = 456
            Top = 104
            Width = 113
            Height = 17
            Caption = 'Nafsu Makan'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 13
          end
          object chkterbakar: TCheckBox
            Left = 632
            Top = 32
            Width = 121
            Height = 17
            Caption = 'Terbakar'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 14
          end
          object chkpanas: TCheckBox
            Left = 632
            Top = 80
            Width = 97
            Height = 17
            Caption = 'Panas'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 15
          end
          object chkaktifitas: TCheckBox
            Left = 632
            Top = 104
            Width = 113
            Height = 17
            Caption = 'Aktifitas'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 16
          end
          object chklainsifat: TCheckBox
            Left = 792
            Top = 8
            Width = 97
            Height = 17
            Caption = 'Lainnya :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 17
          end
          object edtlainsifat: TEdit
            Left = 896
            Top = 12
            Width = 105
            Height = 22
            TabOrder = 18
            Text = 'edtlainsifat'
          end
          object chklainkualitas: TCheckBox
            Left = 792
            Top = 32
            Width = 97
            Height = 17
            Caption = 'Lainnya :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 19
          end
          object edtlainkualitas: TEdit
            Left = 896
            Top = 36
            Width = 105
            Height = 22
            TabOrder = 20
            Text = 'edtlainkualitas'
          end
          object chklainpemberat: TCheckBox
            Left = 792
            Top = 56
            Width = 97
            Height = 17
            Caption = 'Lainnya :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 21
          end
          object edtlainpemberat: TEdit
            Left = 896
            Top = 60
            Width = 105
            Height = 22
            TabOrder = 22
            Text = 'edtlainpemberat'
          end
          object chklainperingan: TCheckBox
            Left = 792
            Top = 80
            Width = 97
            Height = 17
            Caption = 'Lainnya :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 23
          end
          object edtlainperingan: TEdit
            Left = 896
            Top = 84
            Width = 105
            Height = 22
            TabOrder = 24
            Text = 'edtlainperingan'
          end
          object chklainefek: TCheckBox
            Left = 792
            Top = 104
            Width = 97
            Height = 17
            Caption = 'Lainnya :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 25
          end
          object edtlainefek: TEdit
            Left = 896
            Top = 108
            Width = 105
            Height = 22
            TabOrder = 26
            Text = 'edtlainefek'
          end
        end
        object grpAtasNyeri: TGroupBox
          Left = 0
          Top = 0
          Width = 1430
          Height = 185
          Align = alTop
          Caption = 'PENILAIAN NYERI (DEWASA)'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          object lblPASIENNYERI: TLabel
            Left = 8
            Top = 16
            Width = 120
            Height = 13
            Caption = 'PASIEN MERASA NYERI :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Image3: TImage
            Left = 136
            Top = 32
            Width = 649
            Height = 153
            Picture.Data = {
              0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000029300
              00009C080600000023DF2001000000017352474200AECE1CE90000000467414D
              410000B18F0BFC6105000000097048597300000EC300000EC301C76FA8640000
              921B494441547801ECDD07BC5C55B53FF095DE082984DE9BF4CE7BF4265D0405
              112C4891A6223CF559DF4344DF13EB130B0A224A13512C2082F4AA7405E9107A
              0B250452494808FCE77BF2DF3793C9DCB93373EFDC3B33F7E4937DCF997D763B
              6BEDB5D66FADBDCF3903DE29FC8BFC5F4E819C023905720AE414C829905320A7
              404E813A2830A08025DFA9A35E5E25A7404E819C023905720AE414C829D0EF28
              50C04D3160C08045EEFB8D37DE88993367C69B6FBE19F3E7CF8FB7DF7E3B5239
              65070D1A1443860C8925965822468D1A1503070E5CA47EABFFC8C164AB73301F
              7F4E819C023905720AE414C829D0AB14001667CC9811D3A64D8BA953A766C7E9
              D3A7C7DCB9733320693040244029390726478F1E1D4B2EB9648C1D3B36C68C19
              9325F9CAB772EA51309908564C107909B123723162570E3A87D8870E1DDA81D8
              11DD3549FDE2DFF2F2945320A740751428273FB367CF0E4AB0D8834EAD9135F2
              48B9F19E25BFD3F5FCD8FC14A067F177CE9C39316FDEBC2C3AC2F01979E2EFE0
              C18363E4C89199CEC56BD7F2D4F714602B67CD9AD511DD4AF612DF92ADC4AFC4
              BB5C367B8767C57A942C4D9932255E78E18578E595570280C49FF1E3C7C732CB
              2C138EF88337F2D5C547FA56D9175F7C31AB274FB9A5975E3A965F7EF95876D9
              6563D8B061BD73430DE8A5216012B1A175096247400931D33D100CC44468E7C0
              24C45E8CD6A1760C4975F263F353803264C81834FC95D2A8F19911A30C85FA09
              92BC743D3F368602640C4FC8A244161DF188AC5278F8E03C8D20F128C924B9E4
              4D2765A74DF552F9FCD8FB1428E6010092F88AB7CE390D6FBDF5563630FC551E
              8F9DD3AB1C053CA567137FC9645621FFD32B14C013B2996CE5EBAFBF9E397A49
              365D4F7296CEC926DE25BE25DEB1A1BD32E87ED4099ABB5D3C708E3F4F3DF554
              3CF3CC33D9523610B8E69A6B666050B95A12397DF2C927E3D9679FCDA2992BAC
              B042ACBEFAEA19A864276B69AB19CAF62898A4A85E7AE9A59020760A0E03264C
              9890119B612204141985A6BC0480507E2FBFFC72BCFAEAAB59889852530F8121
              F656246E3330B8D163C03F8A30257C749E1C07D7F1DA3C90F01E2F2942F3C191
              327494DFE8F1F6B7F6274F9E1C3C61B285377880DECB2DB75CB6CC02D4E30965
              8936F885770C1C39568F43307CF8F0586AA9A53239A6407350895A7D9FC81A1E
              899238071E478C18112BAEB8628C1B372EC818B92283468BFF800AFE8AAEE031
              D009A09817784BE79A17CAE7A9E72880F649CE9CA3FFA4499302FFECB5237BC0
              3DFAE31D3EE24B1A81EBA2CD78C7BE4A78A99C68189EB39564551D7DA4FEFCCE
              53FD144067C0EFE1871F0E3C587FFDF5432AE64FFDAD4768FBBEFBEECB22D26B
              ACB146ACBBEEBA99EC76A7CDDEAEDB6360D2C486B09F7EFAE96C5965A595568A
              B5D65A2B84706BBD2942F6C4134FC4F3CF3F9FA17F6DADB6DA6AC100120E42A2
              4DE78E79EA7D0A506C9420A082F71C07A3A0D4F0895264901250515E62B8183D
              204762FC3818800A65A82EE3A72D09AF733EA344E5844E52020D3CE8E79E7B2E
              5352142123C383264B955B5AFC2A43F7D8638F85F6F08FB15B75D55533C082BF
              FACD79B438DD1A9193684DDEF04384E4B5D75ECB803E2324B28127B5F46D293C
              F197EEA5B3B563AE0026FAD45ECE6354A82FA121FA39D27FF8C6560226E4896C
              3AD6DA3AD97CFCF1C7B34859924DBCA347011DFDE9B7D676FB7BF962BA01EF80
              9E8824BDF76FFFF66F412ED0483947A91E3AAB5F5CEF81071E087D712636DF7C
              F32C4AA9ED5648DD0693A21826F3238F3C92EDCFD964934D629D75D6E9785209
              804806AE568220B4B6EFB9E79EECC9A977BDEB5DB1F6DA6B677B7D5C2B6642AD
              6DE7E56BA34031BD8140CA5012B55A79E5958332B45FA4B65623801E3CE68800
              968455A20CF1B73BF3A7D6B1B4437934C497071F7C305B2EE3E16EB0C1061DCA
              AFBBF7C8C1FBE73FFF195613F09CAC8B2A77B7DDBC7EF51410CD62743871ABAC
              B24A6CB6D9663D16C5208F77DE7967B6A74BDBE60F47A458FEAB1F695EB29802
              403B0029BAC51960CF36DA68A3E8A9E569CEC5BDF7DE1BDA0628F18E535F3C86
              FCBC6B0A98EB4AB13F9CAB3BEEB823DB17B9F5D65BC76A85A0966B8D4C96BF6F
              BEF9E6E01CFCFBBFFF7BB6F4DDC8FE7AAAED6E814937FDAF7FFD2B8B7E6CB8E1
              86B1E5965B66201200A0F02826E72634A46D19A574E0AE27B0490830D012B772
              C5D7F423F1DE20764BE0A565FCCE53E32820C2251C4F197222F07CBDF5D68B5A
              2321E5464880797E808A734E03652B6A59AE7C9EB78002684566FC02F078B58F
              3EFA6800E45B6DB5555802732DC9527179F9D52475A424A7EAE8E3AEBBEECA9E
              44248FA2CAF2F3D4380A70DC38EDF4A0A8FF0E3BEC906DF64F3D261EA7DFD51C
              F13595739E784C7FDF7EFBED5980007FAD329967CA38A63AF9B1320512BDD8B6
              FBEFBF3FACB8B1614042D26DF5F02DF5AA7D29F14DFEC48913430086EC6FB1C5
              16D90A827CE572DEA1447589B3F6F7BFFF3DB36F3BEDB453B62D080DD5AE868E
              CA56534E7B29A53A8202B7DE7A6BB63A0B57B185A94CB31EEB0693A2536E5608
              78F7DD77EF08C7F2BE7847A24D42C18829946FEF0E4F89B79B963113E1184120
              05F8946799850740188A09E7FA55575D95452977DC71C76CFF16054B90F4535C
              363FEF590A589AC15780CFC4A60C1388C4B3EED09F32555F326A8088C1141161
              C8CC077DB896CA38CF5364FB8BCD7FFB216FBBEDB66CFFD5F6DB6F1F963C1B4D
              1F9EF3D5575F9D454278EDBDD167A3EFA959DBE7BC9109B241268084DE18EBDF
              FEF6B7B004AE4FCE6392F95C0EBBA67ED259822E1C2FE08483C751EEBA76F74A
              00AFA25BB640D0D55611E889EEB5DADEB5F14B422711C91B6EB8217BBAFADDEF
              7E77F65E48D750A0ABB90F08B269B619942BAB1D493FDA2B4DAEA9E778CB2DB7
              C4D385AD83F42B87AEB46C33FDAE0B4CDA2B77EDB5D76651893DF6D8230BD323
              1E02F0661F7AE8A160D0D20436A1796596DF36DD74D3B014AE2C6299F4D0BF36
              0148E0D092A748C776DB6DD7B1A4AD2CE23B5E73CD35D963F9BBEDB65B58626D
              2682B6E35828417C055876DD75D70CC437FA3EF505A8104C1118F301EFCD9B46
              F7DD6AED3356D75F7F7DB6BF78CF3DF7CCDE6196E4B1167A55A26FE9B5E2DF14
              1EC0B1EDB6DB0647A3D5E8D7ECE3B5224047D28BE48FCEC35FFAB03B632FE661
              693BC5ED8B420395C0A428490A0694D6C97F2FA040315D3D50CAC9E30CECBCF3
              CE9156D416945CF8979E63FB2C79D722B30B5B587896FAD71E104B366D85B0DD
              A5BB6D2FECA5FDCE12DD6092A44FC99B4058BAD6D55D931B813440D25683D2F2
              826DF25CAFD4A676C8B73237DD7453F610A5001A3BA87E33A69AC1A4E8E06597
              5D962DAFECB3CF3E8BDC9327032FBCF0C238E8A0833A42EBC505282513FB3DEF
              794FB61C9E08252AF9C10F7EB063DF0FAFE0CF7FFE73D686F0727A72B4581030
              1B387DEF7BDF9B3DE4A32D7D1597F13B4FDDA38008F475D75D97BDB91FAD132F
              CAB58A07A2D09418411099762C2DAB5C253EA5EB8EBCC36223AA2DF995EA2BD3
              EE29D14054FFAF7FFD6B16AD2757C5D17C65121DD00B28B192C0B0B9268F52B3
              64AA1E05A67C29CF5259D75292E75C1B8E8C967D7C0C26A730E5BB96A7FA2940
              968075BA73FFFDF7CFC04829EDEB6FBDF39AFAC0C37424837FF9CB5F42844494
              32D554269DE7C70514204764C86A0E104E2772F23A032568CC96914D80BD1A9A
              5A15F0F08D36E9D9053D2FFCABCDD48EAD43823922949E405E582A3F2BA500BA
              89E8C2322292D5AE8AA987DEB00B9E7B788DE355DA3E3E0B9408B4A5ED7CA565
              D2EF348F00503698FEDE65975D3A70522AD72CC79AC0A4090C480214FBEDB75F
              F6D4B61B4144C78B2FBE380B078B56FA5D9C12B17960C9B345241EB748A5A780
              954F042458E79F7F7E60A8E571D74A93C815A6BFFFFDEFEF20701A4B69D9FC77
              F51448BC12511605A6ACDEF7BEF7650DA46B7E389728351E3821E1D5E1213E00
              28F6EE157BE3AEA9CB489A4F808D3CE579E5804D9A1FCA498CA97D4014B2FD46
              CA53D6AEF5C784E6EE1B1D6CFB4073401FBDE59726E5EC81B3419F812377E82D
              1F1D19244B28B61558C674ADB40D0651D237254807A432A91D1118CE22F9F700
              55BA9E1FEBA70020201D70C0011D40B21C7F8A7BC05FFA935CCA2733A532259A
              4DF6EC632FE6A5F29D255B5CE85C0E8307AFCC85AEC6D2595BED9ECFC9B30D4C
              F0853C547A488D5CD171C0C2DE7BEF5D1569BC0ACA96072B018049A54AE4D31C
              E29058E5A1932B95EFCFD7D0E8EEBBEFCE1E6A833BAA9DE3A9DC3FFEF18F6C9F
              A3559A720FA492210FB8E199AD2AE4077FE8E14A740752014A7AD5AA6F57E52B
              B5D5A86B558349C4120D64943EFAD18F76441611C3E05CFFFDEF7F1F04878292
              579C5C9712119C4BE9772A2B4F928FF04007C2A77E8ACB39FFDDEF7E9701C9BD
              F6DA2B1B53693965F2543B05284340926162C8F0A3B41542E0D540F65202928C
              9287AD801A860A7061743CA493EAAAC3A110C52220F82B4F0226CD1DCB78804D
              719F42FD36AF1B8B32A9BDFE7CB4F5C0C35068D299B162A894B1F50450475BE0
              1EAD192FA082B78CDEB6A0C82FA6A9EB788C57788A5F9C0BEDF0BE814FF2EAA8
              DE95575E993D454E1E81547979AA8D02E8498F890672DEAD000100F2B5E49A63
              71C2170E1D7E01308EC02499E490A7873D521DF26745C82BB9445F38F3E645BA
              DED911801100B092A45E67E5FA633EFEE00D5D065470802D937A7767BA564C97
              9447FE94F7643770585CA6B373CE0200CA49B0DD4BB9D49EF394521E9DABBCED
              649C72FA225D4B65FBFB114D0136B26049197DD0044F1D3B4BCA29A33E3B458E
              44F053F9743DFDF67014C02A8826CACFCE959649651DD335D1656FE9B0EFB6DC
              12BAB27D99BA0493E9461872CB69802462970E5A39C414B5605810B7B44C4FFE
              D69F3E4465CE3BEFBCE0715922E8C93EFA5B5B89A60C932893BD1FF86D299482
              34E98B69A21C20096C5842E9CCB8A476D5750EE030484089B9A47DCA0EF81469
              76EEA12EA051F9548F6105802CF79963F2FB6B42F33FFEF18F21226959199DC8
              43293D0006B4B6678AB12ABD9E7E77565F4483EC03863C6DE53894A2D6142647
              8F414B7D9B27BFFAD5AFB217FA527AFD9D4F89BEB51CD1D83CA7D7E8B46DB6D9
              A6D3EACADAD30C789A13003F674E349283E02D1A7E27FEA486E84D73433DE7CA
              78389293402653B9E2A3BEB473F9E597672F6E36F780D5E232FDF51C6DDC3BFA
              088270F4EC51DC78E38D65779AF0590493EEB3DAA77EA7854B2E7008000CCE02
              5E93BD521D5D5C451F37DE7863F6500967AF78CCC5E5FAEBB9570079F5192C91
              745D57FC28A639DA7ADB025D4BFE38EF6C586A839C892873CCD94DCE1ED00A54
              92A3AEF8A12F2B03F883E7A58EBFFCBE4C5D82493760C2536C5ED689506E3A11
              A874F00086095D7C5D7D46452A2D9F7E2BA31EC394F2BA3A1A9B3A18686FDDA1
              871E9A2DB377552FBF5E9E02E8896F0C8CFD51A20F9454F9D20B72D5C18305BF
              BAFF577BF809984AC573CDB2F8AF7FFDEBE0CD592250B627FBEEFEE87BAF057B
              936DC6F6901AB92AA653F128442280F6148948E5F0B9B85C67E7A25D80246557
              5C46840AFD459DD3B5D4B6E5F42BAEB822F6DD77DF8E0F0D14D7CDCFBBA6807D
              57E868FF39FE96E3179D29FA25F2AC8CA89627EA39F45DF7B0B084208036380D
              229878AA1D6DA652782B9137FD9E7DF6D961EE01BBA94C7E8C0010386F64C31E
              E6AE6862C5C053FA964539855D952FBE0E9C98271C087D71CA8BAF973B1720B0
              CC6A3F9FF982A7E5E656B9BAED9897EE1FD08621D8BB4ACE5B310DD4F5DB91FC
              0093E4C352B43C7A97B3EDE97DF3C243CBC024F0086C8A48733C44190563E859
              ED554A1C40F3456040BB95CAF6F6B52EC1A401894EF0800E3BECB06CA33F4295
              4E4079CACA4FE7221850B82553139D972CE4CF0B5646595EB544303082D153A6
              2BC2AA9FFA73B4DC8D891ED8714DDBF2F3541B05F0CADE57139C82ABAD76F5A5
              451F2540A45A5E51D084CFF2FB873FFCE1ECA9E56AEB563FB2E62D99E635B06D
              C9EAE0830F0EDEAF7CA32EA585FCE23CBF8BCB31428001D090008832125954D6
              7C508693A72F79F890AE2B9BFA70EEBADF56311C79D0782C3F4FD55100B83BF7
              DC73E3031FF840F6E60474454BB59D3BE289480A00C8B00007F2395CEA932DFC
              B2ED447E71725D396DE17BD2B5DA34AF38930025A0E8BABACA3A4AC6020489BE
              7DE4231FC9225D29DFB13F277652C4D0BE52760CDDD02BD1A4F8B72898152076
              0B80F1B0231E8838B18389F6A92E796527B5E11A3BAA0D80D296136D9053D78B
              FB4CF51D057BF4C9E672F6D865F9FD35255A597636EFD9BC6AA292A91EBAD1C7
              1C88C403BC837D38D440A46D05B69DA03BB06A3B11208F575EFB63DFBB08A695
              1E7306FFB55B2E916BA0145035C7CA95E9ABBC2EC1A4C94DB1D9FBC15BAD66A0
              084DA8281C931AA1B443896114A25174BC24FB074C700ACD5119E595B19FA79A
              FE941181B9E8A28BE2F0C30FCF0CAC7EE5E7A97A0A000914212371F4D147678E
              43A5DAF88CCE8E128041E17120182BC242B0F033B5239F02B44CAA0EC1214092
              32F21CB5EB589C8C4FBEE56E7DD94B567CBDBF9C9F73CE394121011180603DF7
              CD2BA6F0F00B4DEDF321DF9494DFF2C927B9B26F162F29424A900152A652BF3C
              7DD1530F6E25DE562A9F5F5B4801CE12FA5B465E98BBE08C0C98FB221CCA3154
              89BE229978A62E9E39022A22F9C0074364798D430688E0A356398E2228DAF59B
              81B3F7CB9237E36A4EC84F898CE23FBB601EA6A55C79A94C7F3CDA376EC91A5D
              D9CB44A772B4C03F7A165FD010DFE84D3424D3ECA3C893D5077611F823B3ECA3
              DFF8873F78875FFAB54D012FE8DC727DA6F1907B7D6B9F0E2957B63FE5C126F6
              4A8ACA5B76EEEADE131DC9A2950111495165B2887F74A6E821F92373E6853921
              FA68A587FDE2A88926E3155E888AE2359ED0B3F28D877D4C7299C66555880C6B
              2FC97EBAD697C72EC1247001B55B424E44EC6CC0E93AC180B631A678B2021022
              1600A550AFD7FF202A8595DA84E4D525309ED246CC74ADB323A622B8E824A6DA
              AB95C6D2599D3C7F510AA097BD8C68683B83FD3EF208C7A225CBFFC203DE1763
              E5488800104A0F48014244B928BD175F7C317BB514456A4E307CB64F7858A77C
              EB0B728DC7190FDE380F39E49010ED96D75F1283C233B5FCC901ABE7BE397964
              DADE38F403F079E51EF2208B22892254E49881520E4FFD26AFC009DE7635372E
              BDF4D2EC5DB4DAA44CEB196B7FAB8317F69C7AA80A102CA5311990E7211BA043
              E4519EBDC61E7E625CE4315AA29640BD3D601223C468E21DF0480F9349734A94
              839CA2B7F6C9A557A458E93147E4A744D6E95B4FBE9A27F6559B33E97A7F3D92
              2B0F48A019DAE20B5A16D383AEB354494FA2AB57F508A8E0031D88E780027001
              4CB081E6049BA83DC013B827AFE6003BCAC6E2215042DF7A0A193051BFB86FF5
              8D876E162553DF3ECDE232FDF11C2DF140349E9DAA860622C4F4A1A830394447
              3407ECFFF4A73F652FFAB74D0CE0E3540396EC9555DEEF7CE73B59A046C0C6FE
              7F80D4186CEB0244814FCE047994926C25FED1C5FAB5546EBB5735E3ED8D329D
              824903977EF39BDF040362127735204A461D9113068770F89D8407EAE64D212E
              8170EE4934E000B14547E46BE717BFF84500A318AC0D42D059FFE9BAD792506E
              6939BEB3F279FEE2144073C687123BE69863167BEDD3E23516CD215C3607537C
              0448C89F174DC1123AEFC7C267116B0A12AF79849C050266C98EF011A8455B5E
              F82BF199A3614F2790638E2C2CD1FE67B620303896356B01688976400220EEF5
              128C0EC5C5A8011F94A06569320898F09CF1D135CA8DA2E30C529C14592599C4
              090087177EE08107669F229397A7F21448FC49CEBBE563A0AF7CE985B9A91E3D
              CD98E1A927838116AF7BE270002274383009E8E039A3C7483146A25EC0CD873E
              F4A1EC23110B5B5FF885A5E2BC744E0ECF3CF3CCB042409777351F52BD763CD2
              65001A3D486E4AEFD17572C416027EE825E8C1A91351262300BAEB7424C71EE8
              C32300916EC64BE093EC0330EADAAB47076A4FDFDEF7AA1F2093BD2D1D47FACD
              11301FE8010E489A47E97A7F3A02927415BB556935148DE014F262699BA396F8
              031FD1C71E4E9300446FB639F6D863034FF0550080A370FAE9A7676F9E217B1E
              84228F82686C247B4847E337BE9361FAB8941FEC3479C37BF3A6F47A5FFCEE14
              4C1A0C625D70C105C1F3147695D755829AD5F9E4273F99A16F0AE7D4534F0D46
              50E4E9FBDFFF7EF0A02CA39C78E289C123FBE52F7F1904C03E38513144C20042
              47C830515E577DEBEB8C33CE084AB1D2A4E8AA9DFE789DF101D080045B0C6AA1
              01204A310185B6195074BC5E02274A92941CC1637884F12DD101FFF84DA902A2
              946739455C3A16F38102B62705F0AD666E94B6D18ABF1918EF5EB5D709A0ACE5
              1ED00C9D4486292B4B32641068C403409E5205189565B844B3E4FDF6B7BFCD3E
              2070E4914786A828E3C359A43C3B1B83365C335E7BB944C29A45E91957B325F4
              C21F5B75D00A7D8D519E63A5444F0393A21CF8299A2CEA6F058081E4C4D1C996
              CD39079C79CE9C72963CC91CF963982C9B56D3671A0F9D41C6CD95FECC5F0083
              CD4AB291E8938E224FAEE333DE8A38A9E36118AB69C03E10C9D1A317D93D7A91
              DD248BE684879E38EB1C0D20049F448FB5E9ED17A92FFA16784D36BB1C5FD869
              0E3C27D18354A96E7F3CD283B083F95FC9818355449EF1C7D62D2B2EEAC133F4
              B16D0AE88AAFC01EC79CEE237FF2044A804358074F8148A09EFD147893AAA53F
              5BAB5DB6DA58AAADD7C87215C1243040003EF6B18F65912A93B7ABC140F8A217
              1FFFF8C7B3EF0623F677BFFBDDB0E485903FF8C10F42B48AB7FCAD6F7D2B7873
              5FFCE2170361857D8F3FFEF8AC0B44D6B7D03062971388AC60C91FFD5094185D
              7229FF598102E8CFC80015227E158A2E7609101581B24C4A51FA6D0BC359679D
              953D40F0F9CF7F3E18391ED671C71D1784C0D1BE1206F0A4934ECABEEF4C71F2
              E416EBA04C060F918114D96614CB1469BB2C115E32014C3202B5DC60922100DC
              121CC7EE94534E09AF1702264F3BEDB4EC4954068671C24BF9BC680E1A0780EC
              02283C66208517DDD918B4415F009F9C0B06AB52F9CEDAE94FF90080481F7D0B
              08241A7645037B90BD0398B34676D19A7CE12567CB4A00193BF9E493C3F218E7
              5E39FCD4A7798557A25EF6DC39EFAACF745D04858302E0E073CAEF6F470003D0
              6077C857F1FDB381F64802829651137D054B44A24511C927D9042EE9453CE498
              93776D01A9DFFEF6B7B3C8319002F8009B22CAF4690297CAA6D4D5FCD1177B6D
              A521D5E96F47010C3A8A43847795EE9FD386C75672AC982AAB3ED9C37FCEB560
              8C8830FB44DF89509265B2451ECD058E03674F94127F95C753F6B12B9EE95312
              9116ED1411B52221AFAF534530697243D042E15D0D14119481DE2D7303818848
              4810142179BD8484F745811D71C411AA04832592E5E9547B7764029B00248F4B
              1BCEE57795787712E5D655D9FCFA020AA0AF8999B6082CC8ADFE2F830408528A
              96D9FCB639FF273FF949007A5FF9CA57826362D9FB339FF94C888C01329C0A60
              F0139FF8449687E7A25FD5F44C887994C66E8E987F49495753BF15CB7862302D
              87000EB5DC033A9121869F076D0986032022C5233EEAA8A382611299E4E9028D
              22593C608093E7CDD10046380CF85C0D78A07C293E5FF628DDC355CBF8FB4359
              E0C2667EBAB31ADA269A884491354EB4BDED40CBD7BEF6B5B05A409E44C1F01A
              CF392164935EE7BC8B8A79DD9648BF95214E442D72C471E46CE887814C63EA6F
              477202D47BE0ACDA7B278722FF6888DF12DEB1BB8022D0613E70E4C828596553
              ED670702C9247082FFF468AD3A904E16B41155E65C543BEE762A278842A70181
              685CCFBDB19BF41C7C032092433A127D814ABCC42BD8888E354FF04A14947381
              9F642EE9E86AC620D2CD11111410B5AEA64EA3CB540493969F196A80A0AB8120
              8EC4605D72C925D9B79C3DD1066D17D745604611E1192E5E3390C14826A2F0E2
              B421D44F90B48BD8C5ED7476AEAE2818AF8E7076562ECF5F4001B4358985EA29
              B77ABC54CAD0B23563C219D09E8885CDFE94142FDAD791786E0C1AE3E63AE3C9
              63E3C9DB6722E245292E1859E5BFFA004609946D0DEEA3DA3952B9E5E6BD0A10
              8850881EA1652D234DF411C5B037D2DE394B9E965CD09F1113D5B71F8B1C0290
              641468342F78D9F8655914C8E4C957D33F2751BB8C2C905A4D9DFE5A06D017FD
              B005C15C96AAA58555003C21BF742E671DAF6CF711FD607438D9B69900206495
              D12347400ABD6C6B52AD4E8AF1597E25B7E6532D6356B71D12C020CAC78966F3
              92AC75756FCA8942D27D4005670D3F00455B5A38F8E49303C006937B6DA231BD
              C799C65FD12972AA2EFBAB4CA5A45F6D7020801B6086ACA7FC4A75DBED9AE567
              8E00A72A451B6BBD47B2861FE48EBEC33BA01F76C1338E5B296FD8CCA4C3814C
              7D9249C76A129D6C6FB4BDB26C6835751A5DA6533049E1F0382DB95052B50CC4
              BE01C68851E2E92212E22100C6315818076030303C30510BC28819CA101E06AF
              967E95551F10259884505E9E3AA7000522CA676B8289C9A39247D9745E6BD12B
              040538E445030DC0492A81A73C37BCA7B0787014AEFD2384892321728DE722D3
              E643AA5BE9688C942E2FDE9EDE7A8C60A5F69BF19AFD87A20864AA16FE94DE0B
              2584E6B69DF09879E78039A567B9052D39659C3E791C027245AE5DA7244BDBAC
              F4DBC3749C463CAF54AEBF5FE304D35996DBAA0105C5F4E224906132468EF110
              C8F19006FD2B328C9F1C02DB17E4917BC654E4D8BC52B79E7965DFA4A536A0A6
              D67117DF43AB9E930BFA8B9D445BBAA95A3A923D91314E04DDCBA1A633C927BD
              CA067A580AE8034CC89EB645A66C1163633908F5D00EEFCD0FBCF344783D6DB4
              7A1D7A8EEE4347418E7AEFC7523970CEB6B16B7844B7A6F6F0D239F9600BE121
              FA900CE2BFC097555B4EBB725D25D168CE275B6B45B0ABF2BD71BD53302952C8
              7889F099E0B50E867243A484D20988E807E04828B4A70FDE154162B4005844A2
              D42854656A4DFAB08C4EC030ABD6FAFDAD3CC56762DB2F296A28F2550F0D0885
              CDE0A2CD789CF829EC2FAC2F9AC58B16AD5486C113E6C77BC265A33281AEB66F
              E3E6D159A2B33C4791575BB755CB592930AF8B9554BDF7628F8F84861419BE73
              F2F084E2A3F48011CB608C25FAF280293BB4A72CABEDDBAB6E44DB2C25D552AF
              DAF6DBA51C2798EEA31F6BA153E28748A408193D8A268E684EB6F0581E4742C4
              0B7FF1593E1048F6523BCAD5923C6CA02D4FA36AB796BAED5096532BC228BA25
              42582D1DD10CBDD82C5B1200C45417DFCC037A947E067838E2A25F78C6AEEACF
              D22C99AC878E1C442098034FF6EB69A3D5EBA0391D2732CC49AFF57EE848FC60
              FFF00E56228322CA003A7E895216F3C81E4BF544F3D93E4E202CE4371D5BCD18
              CC19411A36D51CA8A64EA3CB740A264D34D145FB7710A4968124215187A0893E
              F184813B444574892029630F9DC49041DACACA2F97D493285BA9B40CA6021880
              11812CBD9EFF5E9C0226B67DAEF699525E8B97E83A27F1DC921A4F1A8F2420C4
              9E11D12DBFF1CCB2008F90B11341B1CC42A1A5EB5DF7B6A0040785C3231A6AC9
              6E416EFBFE05CADC2B0552EF5DA2B194648FBC3897B4E99AA384578EC5A9ABEB
              C565D3B94FB1DA77CDF8A57ED2B5FCB89002B61F588E6650CAD17E61C945CFF0
              444AB4A573193391E7A4BBC9A736253CE7C429EF6102ADA9EF9AF35A9388A720
              802D51DAACB57EAB97E72C8B1C0292B582727C4934A30FE962912D095D8AAF03
              108234CAD10174AB32F5F2CE1C1099140D1751D5567F4BEC10908E6F522DF70F
              D0E33BFE01FE6C99FA0228E88A77F238FFDAC627B69113EFB787186D2F118526
              B3B68958F94932ABADCE1279139986A99A3E3209DC792257D4A79A9BEBECA653
              3E4180E081C994577AA4E494A9A4D4082E61B20C5EAE1C06021850BEF07D691F
              F9EFC52980370CBE27F093125BBC54E51C8292F8C193B69C4631028A6AE299A3
              32848F30D8DA204FC237D724BFAB49C0A428B47D9A229DD5D469D532E803F0FB
              C41E4FB727EE439B96BA00718E5C699B000979D41F9E955EAFF63779141DB38C
              D49D76AAEDAF55CB019300892D40B5C841E9FD5A11C2B7D2D59D24A3640F1F44
              514AEBD6F39B51034C38F0DAADA78D56AE63795364911320B29CE85CED3D29AF
              2C1DE9BC5E1DAC8D5A9225760F009907804D2D75DBA52C702E3A0B4FE05F35F7
              8547E41330B4D2866F1C29BC4FF5D156108D0E153CA15FD563B34441C9395C05
              CC7A3899AD146174AD1A19D26E1A377D91FAEDCB63C5C824E5663F9A9BEE6C90
              082425023847E8D2F2D03FC38569A28F22608C19D08A900008C2A67D23A5F5D3
              6F009747664925E5151F0152AF8CC1DC3C32594C99F2E7F865A913CD3CD19BF8
              58BE7475B9F82A4289B7F66AE9A3784E08E9DB1F265AC56BABAED5C54B114CFB
              6EED3511F55ABC447BE5884CDA7B28CADB137746E1790ADFAB8644864B796F0B
              0A1A7B808A875D6F9F1C157BF22C2395F6516F9BED580F2FBC268403562C2FB5
              DCAB2D099ED6F6200E1D2B95F2CE321B7E5BDED67677792232498770E0BBDB96
              F1B45A12E000264595459C4AF55D35F7A38E88163ADA26545A875D035AE854E7
              3DE13C7300001291C9FE0A26E940CBC5EC1030574AF772BFF18A7C02811EBC21
              5F704B676094F3667E0094C5114C7652827BF0164FAB7524046B602AA094935E
              6E9CBD9DD729984400CBC55E35C173E96C60886152526290B9DFE5148A578DD8
              30CA3831860800B923A4B6858CF5636F552941314F19805374C63BB5805279A5
              49944DB4CADE3221E0D2EBF9EF452980B668267A243269C21394454B55FF4B7B
              922747ED23B21787F21385B4A44659F2E45D17C93067AA6F7DD192E6125E732C
              2C112C7AB5FD7ED933E905D3145F777894284366BDEC9A22645028455B4CF0CF
              3617CACA6F7CAAE450A6F63A3B1A3799E5DCF5C4B83BEBA7D5F3ED9904B82D5B
              95D3A1D5DC9F8769444B0012B2064C6A136FE94F8E1C278103C6F8E187544DDB
              9D95F1E01DBD6F85A0DE7177D6762BE4DB036EB9934D62DCC94F3D34B5D7CE92
              A78738D05374992D24A7121BA92FF25F1A75AE874E64DC1E5A7A999EAEA78D56
              AF03C491177262F5A496FBB1942DB20B04DA26808EB5D4C763F202180ABED896
              921CBCAEDA21E7F63E03C0F46A57E57BE37AA7601200F8F9CF7F1E5D3DCD4D70
              7866224DDE3566D008E4582E019E3C011E016101260001E7C09FF64A0531E511
              348A4B044D19A9B40F024229E74F739752A6FC6FB405CA448FBC628750C92B47
              DBF22D94CFE58C105202A304C02AA22C0A6D7E101CA91E90627CDA346E0E8F7D
              84966AE5B57372AF8C0870405EBA7BAFE8C8985832C127E083F1023AB42D7A65
              1339B9ACB73F7D786D8D97D3F7071EA15BBD890E257F8C1A19A9A71DFA9581C3
              4FDB13182A06935340F60012F3C79733F4813F8EF5F495EA78651583C61076B7
              ADD4662B1D13CD396440199AD6A33F055C800A3CB21D8CCC39720038F964934C
              8A5CE36D776964A51020B21D8C9C77B7BD56AD6F5B08BC63F5049DABBD0F7C11
              10C30BF2A51EDEB37DEC9D36FD962F991312193157521DFDC34496ABADD6D90F
              AB7CA524A26C899EAED07FA5B2BD75AD53306900DE1FC64BE271F95D2E515A8C
              7A5A82A354CA954B44454CD78149914802E2B7A42DD725BF53529742F4C43182
              1358653125954947C0D6CBAF3D854E18537E7EEC9C02F8E7937996A9F00FBD4B
              79D079EDC5AF94AB4FE17206B44F79A9A59C633D7DA94B68012C5B3118616DB5
              7362B43D752D72558BD2AB8626E40B98F47421B912FD60C8AAA95BA98C6539E3
              B6ECCA10562ADBDFAFA577BDDA1A82073D450F4FAC326EF4AD5521864CDB64C8
              B11EF9532F25BA5FF49A5C77B7ADD4662B1D395F963C81403A145D6BA543AA83
              4FC9B903FE25DBC2BC12A898269DD9BFE2329D9DA7BEAC1089A802A7823A9D95
              6FF77C34B0422ABAC871EEEA7ED14F2A9551F6C83E4AD16373018F944BED9913
              923C322898229006488A34EADB327835BC1054D32E00DC2C38A7229804CAA067
              034600847003C509C110D57B9610D02B603A2B5B5CAFD6737B0E28DBC30E3B2C
              92912B371E13036344D96AEDA3BF96A70CBDAF51B85ED8BCBBFC53BF9496C5BC
              4AD7E5159F97D6A9F45B3D4FC089E6780ADD325EA5F2ED708DD2E18459D6AF27
              A2DB9B34C01FFCB59DC10674DB57E892DE1C43ABF505F45982F6D02303817ECD
              7E0FC08EF788FA9A99AD2CCD3EDE468D4F840F38E334353BDF926CA62789D9F7
              5A97681B45C7BE6817DFF0CF9ED75AB629A0A304FF70023C882698C58E02FF9C
              B7E4F42BC7617714BCB1444D975B21E0C4ABCB19F3BB33A75B5D73CBEAAB6826
              206A8B52CAEF0BDA15F759114C7AFF929B04E05472238EC529DD086F4A74CB57
              6B4435E42B57AE8EFC6A9236D417CEF5301023EA6927F9EABBE6589C7C6D03C2
              17FE2DCECFCFCB53002D39043C6B74B6642CAF1C6DCBB7D037B9C69CDEBDE665
              E7AD30E6EE52CA8BE1EDABF2C00CCFB6BBED35B27EE287AFAB70FE2CCF3B36B2
              CF566F9B53E7DBDC9C2306A516194CF4AE9506A95E3AD65ADF6A833969CC8C6A
              ADF5DBA53C87C9C318F6A2B23FCD7E5FF88D6F96BAE993661F6F23C707DC0986
              D1A91E36ACA52F7424A768493F03E6405E356D0084DE0D2B226A0B9855DA6A96
              AC05CC3CACE5957B56AAAAE9AB37CA54049390B3A77C79CA6E12D14A07958829
              DFCB6B458B7867BC5406BFBB0A0648152115EAF784B67EA4E27EFD9628635EB2
              A8A4E51C7979AA4C0174944C4E2F1DB73DA01C9F4B5B5127952B3E2F2D57CFEF
              6ADAB31FC57C33867A9796EA195B5FD61105B2AC6F19941271EF95C6838E125A
              F190BB2B8B95FA2ABDA65F791EECE2D879CAB537FBD7772BA5A42BFFF0873FC4
              6AABAD16220EF82BD5721FA21FF42003E95CC20B493BDA13F514C917DD762E5F
              52C675E7D526FBD3ED85E52CF467FE72C4ED771448C1BB6AE997CA25DA3B8A54
              897425DE29231F6FD0985306F89069D7EA491EE81140B03D08EFEA69A31DEA24
              BADA676C7F315AC01AB5DC9B48A16567201230D4A6FAF8E5589A5C778DCC03B1
              F43A1B2692290F8F4BEBA4DF74B93A64D7036F29BF198E9D8249372C5D74D145
              211A588D8098FC9EAE1532C71400B43B3709B543EF10BB57A2608054DAA671CA
              17B64F4BE17E9796CB7F774E018E035EA333E3D079C908139EB2B3F998F24CF4
              AF54A7D2B5549F01B4A9D9BC293672E5EADA522112EE25AFF6F4A636CA956DA7
              3C1F120024BDCAA31A63824F22B81414654509596EE6EC912BF9893EF88A8E52
              CA4B47F224299F52BAD6D991FCFABA8387E1F0B4B37279FE02994257BCB2B99E
              438CBF68DE157DC82E704076F03B81C974C44F495B12D93207CC07F300A01009
              75DE555FC5D7C9ABFD92B63659A2D376F1F5FE748E166C0F1E78E342ADF74EF6
              EC2FB677CFFE7280923DC5B7E2B6D01898C42F7ADA722A5E1697A9E69CAD1449
              1549D3463575DAB90C19129C1055865D6AB9575149FB24D5F3F00C9EE153356D
              880CDBDAC28689347655C70BCF6D1DB26F9E83DE55F9DEBC5E114C2288817BC5
              8B871C28BBCE06970848987CAB95E7E4E93E868F52ECAC5EB97CC264FF907D92
              228CF65BE93BF5515A47BE04C82230435B5A26FF5D99023C1E7CA3580845A5D2
              149F07353CADEDE9331E59A5F2D55CB379D9BE15734EFF8E52B9BA786D7ED82F
              79ECB1C7962BD2B679BC67743FE080038241E9EA4619251108C09F074C8E004A
              F2C908314CDAC053732019303446FF74744E8E53E244904DEDA95F2ED9720244
              E2A77ADA28572ECF8B48740606BD27D2D22380568E367885EE64C68A02D0CE18
              CAC7D3C45BCE8294E8EE88BFF8ACAE888AF9A18CB9448E256D94EB37E5E947FF
              5E1DE56D0056AEB4A1FD54A63F1E013436CB5229F9483CAD861678684B19508A
              EF648BCC00FE682D69CF75B26C0510CF3DD028D043CE5CAF86079C0C7DB1B3E6
              5935E3EB0F6580427B1ED9B46AA393E4C77B5BD11F30AF854E895FF4B327F9D5
              07463B6B83DC5E73CD35612ED8F297747767E57B3BBF5330990642F9583A06E8
              AA79CA483D46CB5E29C0D2FB24014ADE2F2366790531944B491FEA240567732A
              C4EEC96D61E354AEB323A6F0E8182F9F7FB4FFA0B3B2797E790A3010E82E5CEF
              7D937884AEE594937C0AC90321409DE8A04DC7E55BEE3A9757671F0881DA69A7
              9D62B5C2329F3ECAF5AD357D7B6088002B2FAF3F2560C3AB3C3CF9C7E0D472EF
              22580C17F96298525DFC476F09EF1D5DC307D71CE539AA67B33AC78DB153AE34
              E9C716195FEC61584BAFE7BF3BA70083411F8A70E1457149F4975CF7B270B203
              007A70A01E3AE32D0745C423B5E5210051CBE27E8BCFD5F1DBEBC43CB0672E9A
              1B92FCFE9A803BEF5206ACBD05059F2AD1245D67F76C31B2DA628B586732554A
              5736CF1CE03C00175D3901A93F800970B2E2E87DA4A5EDF6D7DF403A60C8B102
              ECC85EA2596734F15C89D50472C06E7556AE523E502F2A0A27958B4EA63108EC
              E94BB0AC5A2C56A9DF9EBED62598D4A188118F0B50ABC578D9900A2468C38497
              4C78A012A3E443DB8C134612460054748CB7051422A47295849272F32514F5EC
              2350A75279EDE569510AA0193E88EEA23D2503E477A5D8089FA7E184DD014A3C
              A34C176D7DF15FFA0338001B1EBD79C06121C88B975E90A30EBEF2CA2DF78A96
              572ABFA056FBFC35CFC90D85C218D89250EDFD27DAF50435F04A3B9574C1E597
              5F9E79D08C6AB379D0C6DECC892E04D4BC9B53E4A91CEFECD10324E83BDB8ADC
              4FB972F2CBA57265B56989DD1E578E5AB97A294F545274CB472DCC037229A5EB
              FDF54836D94AD149BCAB860EDE3E0228708CD9B06AEAA4325688E860CBB3E642
              CAEFECC811C7374BEA3EEC518DAEEEACAD76CC070EE11DF6CC4BFDCBC949F17D
              DBBFA80C304F0E8AAFD572CE99807FF0104E2AAD8BCF56A4CC2991D3D2EBCDF0
              BB2A306902FAF28CF73B42E088578BE20018784388C50B035218466D488C0D02
              0AF1FA9C18B09988A32FE7CA39A6549C0F8C102811B5E2BAA96C7EAC8E027842
              19DAFBE3097EC2514AF7722DD97B438102929607F0111FF094B20280B4A37D11
              159E58029296DA44B8CA7964A57DE1B9B963791BC8F5208A3C6D97966DC7DFC5
              F7EA9DAB22520C3F5AB8DF6AE950DC8E7A3D9552BB641D980476CD876AC7D553
              E368E576120DEDA31279B29DC16A4E290D017A7C97AF4EBA67BFD379A5A33AA9
              6CF17935752CED79B04AF4C6EA51AA93DA4BBFFBE3917D03F2F14764B92B9AB0
              ADF42D0742F95A6896F866454944946DF6CE48F9DA29D7B7A7EF390C6C395BAB
              5C9E165200ED3CA72160D115B85706EFBC2F52F065612BB59FE1213B8A7FECA1
              168C050FD94C914B73CA98ACF2A66BCA354BEA124CA6415B06B174ED352C36FE
              D67B03DA032A1CB5815894A2F35A92FAEA0226A269F6657597A1B5F4DFAE652D
              B588F29AD0685AE93E130F9431E1014A8E837D5FC024700990E2AF4418B4CF2B
              C63B6008CF0887368ADBF3BB34B92EDACD1B142507564BCBF497DF9624BD2E4B
              34D792077A36C3BDE32FA06BD9D5724C72249A616CAD3406AB04B633D8CA508D
              A3D55BF74606D9017AD7160672DD5B7DB74A3F5E5C0DDCD16DF85769DCB69B58
              651071B22284BEB5CA327BEA497236DACBE33970E5DAC133A0846EF679D34AE3
              EACFD7D82F5140F6CA162E76AC989EE91C9FF10F284FAB03F5D24D9F00A5BEAC
              F0A53E8CC15C62576B8976D73B8EEED4EB124C6A3CDD98BD3C5ED5E35D8496AB
              53BE325DA56ACA120A822475D69E765C53068011010158EC35519FF1723D4FB5
              53006DD15564E9E28B2F0E4FE1D6B30FCB5605F384A08946E38BD1E08DE533C2
              C221C137F9D526CA1080B20441F18A52F6476396F864CFAA0730004ACB5CE898
              AE39EFAD84BF78EB48095B92A123ECBBEB8BF1F4D67D37AA1F74444FFB913D14
              2762C56168547F95DA2DE51F87D1BC13546040E98B4AF5FBE33534F360921533
              AF7CB117AE333AD8AF6ACB807DA7F4A2BAB5D034951711C517FDD85A92F462BA
              2E026A799B130A70D2C3E99A3A795A9402021E9E1FB02A605919BD162D11C1FE
              A0215AD7C2B3D276FCD68EE49CEC3BE299283290C931170195DFACA92A309906
              0F258B3AF07C845B793808D05D42A6F6AB3926456B2C10BB97C57A616E5F8CA5
              9AF1B65299445B3C15EAA7E8441F380E5DDD87BAE681D455D9745D3FCEABA9C3
              71E0555B0E0272D5ABA5BEF2ED928AEF1BE8F79B076DFFA473F7590D4D95EB89
              84F714A0080BB001482670DB13EDF7E7362CA3D97A624B075082BFBDCD5BFD49
              2231B698D81FE601ACDE1E4B2BCD035B01803B0E30404936CB8D1F68B1E54764
              920D2B57A6DA3CED587AF59A99629DCD56DA072872E9A5EAF53E2852ED385ABD
              5C9AD7F610B3399C6274F384BD7B4BD79DF7744A6D5BE1C13340D243C8E4ADA7
              FBEAE9F66A02933A271C1E7E5875D5550381090002B846E1383622E923B50FB1
              335C3C3F864B94CB75FDA632CEF3543F05D01850C15F9EAC63FDAD75AF266588
              DF3C78EFDF4BCBE2DD6BB5756B9BEB12006739D48BAE79CEE4B133A3D5C8BB35
              1620128F184EC62A97C3EE531C5DD1D1B2B2371D8840D7B35250CF48F4AD9EFE
              1D0149E3F0BA37511279CAA4EB7EE769010592736555C6DE57112C009C8C2E28
              B1E0AF72E8272DC8E999BFF8A225EDEAC3ABFDE84E7B2A2DBDCBA33B94C9D3E2
              14403F341271B4CA22B0E2B7D530D163F98BD7EAB91C20D64BD4ADEED9E262CB
              59CFB5DEB8966A0293886C827A68C27223400935139274AD1143D5366662A270
              BE27C43DFDE61D593CBAD4A772C6977EE7C7FA2880D6948D2820A0E2BD6736DB
              F3D0EA6BB1FE5A402D6588E75E8ECC98A6F1D5DF6A7BD51405218F8024436FE5
              C01D36521E52DBC02C59C42373C4EB46D23563C853FD1428A6E365975D16C089
              253791A7FA5BADAE260044DF1A83E80850C4A859914A2DB896EBDB448D458F89
              36228F68874E7827F0A1241D264FF2BBA752EA577B56733879822EF66EDA1E24
              BFB88CDF795A9402E823C96507E957ABA0B66D89105A6E86795CEF4ED24731FF
              ED9BE4B401FEFAF5CC027BD79D3E7AB36E4D60B2786000A5F73A0AFD42EC0047
              F1F5469C0BE1335A10BB4F2B7A8D02A144F846F4D75FDB34C9DDBB896EE9C427
              D32CB179FF5C12A2E232CA3622711CF0DBAB3352C44BBFC6D588FE5AB1CD34FF
              29225F9B710F22101C3D60C0EF462573037FECDBB4391CD868545F79BB11DE58
              613F33FEDAF4DFE8D502F2E7E95F3C16D11238C8E5AFFA99986865354F740B28
              D9628B2D826CD6BA5FBCFA5E1794046239E01EDC305FBCE666C195FC6FBD14B0
              DD0438B732E6FDD902591E98E9AE3D322F00554E1B7E991F8202F66BD63BD6BE
              A85717984C42C2F3F1DD6C1E33AF87C79CC0464FDE8C073ABCCB1023BD460890
              F4242F438A91524FF697B7B5800289CF94A1C80821E238780A5B8974DD794F27
              1BC51931CB7B36945B5EC0EFDC71589CD2892EA249A22014120F9AC2F39AA6E2
              1A3DC133FB79F42122097000FAA2A13DD176F158F3F3C52960433E3D682B011E
              8B5C745726F04D4F498F9A471C771112F2C789D49732CAA6727EE7A9730AA095
              843F22F81E80F15095E83D7A5A4928AEAD6C77694B36D94A0E38FBECD561BDA1
              AF8BEFA39DCFADD6B14B5EDB05EB08A279100D2FD9C76AEF9DF30F3701FD640D
              988469D857811BEDF4C47CD04E6FA5BAC064E9E03CB906B5DB74CF631631AC85
              B0A5EDA5DF0C155001B123B8C807E148D7F363632960324B9421C56433B2A8B0
              2513C68C57D6D323C0730AD77C0292ECD724B40C9C717457D9F6F4789BB13D2F
              DE053A28273243E191C7EE462A192AFCF77A260F67315296EE3878CD4887761D
              135DE825C7EECF921B478B41EB6EB4CB96127BC4C81F1EDBD6E2C1AE46C8B9B1
              F7C7E421180F56A02DDE010EF41BDDD61D7A0027F6DA592510BD1635E304E8A7
              3BEDE6751752802D4CF6C7AA0CA78E2CD2AB5668253AD78A81F72BCB575E3DB6
              CCDE7F3A5424D2CA2E5DEA37D915F9A7A7F5A6BCA3BA8EAD92BA0D26DDB89B16
              BD62C010579402A0445C887DD4A85155D303A1314AD2163029BA6279C0B1EA86
              F2820DA180A5139E19FE022A8E04A8BBCA1088E49D3162A25EDAF64049436EA2
              4D1B258B6E8D3C52528C963D3894950816F9218F80A532CA769538116451228B
              78E349511E3430D955FDFC7ACF52008F13EFC822C70160483A17F0034E18B26A
              7A66E0F0569404180144386E5E5553FC42F26ADACACB744E016002DF24C0CF03
              161C32B2488EC826DE49CA74DED2C22B641CDFF04F04997C9A0B1E92E2602889
              97D5CE05E5F3541B05449CD15E3498FD426FCBD31C3B36112FC9ACE41A7DEA48
              27E311DEB39FB5F5DA9CA57B044CBA35447314B605361056C4C286E364C01019
              624F44561E6179C4042301494A4D3E41B3DF83A2541643523F7EE7A9F72850AC
              0C2930D168C002980454380E8C582D8241A9F2D03822DAC277730550C173FC96
              CC97DEBBD3D6ED09ADD2E8939CD822421E3966AEE1134546B6181EF2C8D8A4F2
              F84C1E293DF288373C68E79C4220C39E1E6D49FA4C75FDCE53632980DE529209
              FC1221E184D199641030711421A183F1B7B83C00C908923FB24CEE3873CA72E2
              4449D25DE82BE76FA246F78E68A985444F4BA67847F7C9A3FBD84BB28977C5B2
              A92E5EE35D924D205224996CAA635FA415237D48EA386ADB314F8DA7001C0303
              D19BF88467E88F971C85A47B1B3F92DEEFA1DB60B2B321232AC46EC984B2528E
              80506C889B12E1A00411DEE4A708192BE17F1110F5F2D4F714C09B340ABC730E
              08F2B0810D9E58022A0025DEC963C494579F60150315F5CD0D7904CDBE5B7CD7
              B6F28E92FA8E79AA8D0268986887C62217E4D191DC25794C32A975B2884FE457
              1906CE5E684B3078A44C9E9A8F0278CD811759948045E0901123839251E32DBE
              4A742E59C55B11124046993CF52E05F002A02C8E6E25D9C437328CBF78473EF1
              D6916CE21BFEE5B2D9BB3CCB7B5B9C020D0193263E0128EE8EE7CB9382D89330
              3062941DAFAA1C62273CDA20508E796A4E0A001EC5CAD02845B1CC8194E4E127
              C589FF7E5386800A00C9A8C9CB53CF52802C6A111F1C5302248079C939DE28C3
              0110D5C29B5203A52D65521BF9B13928508E2FE48CBEC55FF2E9B7D1E2AF8834
              FE72FE4A75ABB694CBF98C0A8D4FE85D4A6BF2886F6C25DE018ECA700EE8557C
              2B954D232DD796FC3CE514E80D0A34044CF6C6C0F33EFA9E0294975150748E29
              593E13EAB78446192AC7685186C97128071E011AE5523BF931A7404E819C0239
              05720A343B05D838632CB585F224D73BBBE67A3BA41C4CB60317F37BC8299053
              20A7404E819C023905FA8402C0A28E01C6E2737929D96A24D0E2D91129E5B7CB
              310793EDC2C9FC3E720AE414C8295086028C1B2357E6529E955320A7400F51C0
              C38EDEAE6075CD2B12D3EA1BF9B30DCC7B5BED57B78DC89B12565F7DF5B0EDC4
              F57690CF3E039310BA7D94086FFF8E630FF1346FA64928D0999058CE263C5293
              0CB5DF0F23F1CA7E2DDB133C4025E53C6A8FA981AF8C9DBBB1DFCE5E75E7796A
              6E0AB0916C25FB688B50CEB7E6E217BD69446CDAEDB7DF1EE79F7F7E7813C951
              471D159E0770CD83553E4BEC61557CB407D653F71FFCE007C33B9B531BADAE6B
              FB044C7A4D89AF0178079EA7D63CC5EB15403686237E9EDA8B0249217AE08AB7
              462112A056179EF6E2D282BBF1627AAF7DF28E4F9FCFC3AB0557F2BFAD468124
              63A22177DD7557787D1063B6EEBAEB86CFB58990B4DA3DF597F17A60CA0BC8BD
              BBD95B51EC3717CD62273DACDA5FE8D0ECF709187A11FD030F3C10228FBE3CE4
              D55A871E7A680798F439E23FFEF18FE1157A1B6CB0410097CAEFB2CB2EF1A10F
              7D2804D39AFD3EAB195FAF81498ACD80BC13EBACB3CE0A2F5446445E17547FC8
              218784EFFB021892B2796A6D0A50880C188F8C42B44FC467C428444F24B6F6DD
              B5DFE82DD19C71C61941391E76D861B1DF7EFB059EB5DF9DB6FF1D257DEB89E0
              73CE3927C82099F3409CBCF7BEF7BD71E08107066721D7B7CD371F1E7FFCF1B8
              F0C20BC3D1EBF2BC0103EF7C5AF6031FF8400097CD37EAFE37227CF9ED6F7F1B
              D75D775D088CC137DEF7F9D18F7E340393DE03FA9BDFFC266EB9E596D877DF7D
              E3E0830F0E9FBC15C1F45A277AD692783B50AE57C124A5C5D33AF5D453C3DBDF
              3FF6B18F854F250A017B3DCC97BFFCE5C8BDE5769856111C84471E79247EFEF3
              9F875794306496DA249FC424440C597BDC6DEBDF85E8F1E9A79F9E79D71CBC0F
              7FF8C3B1F7DE7BE746AB45590B4CD2B7575F7D759C5300930C9C2808E346DFD2
              B3279C7042582910AD6CD1DB6CCB618B76E11B90C2F17EFFFBDF1FDE1D0A94D8
              A270ECB1C786FD766D79F32D76537805F0FB56F7C48913C38AAB6FAFC33696B9
              0553380522960266742A0C74F6D96707F93CE28823C2473A5AECB6CB0EB7D7C1
              24444E5076D8618738E6986332A0F1CD6F7E332C7D9F7CF2C9E10B0C65479A67
              B614053CB986D77FFDEB5F63A79D768AF7BCE73DE1A5CAF200CA134F3C315788
              7DCCD104380CC332CCF5D75F1FDE63671906F0A0F8F20808EAB466123539EDB4
              D3C217900E3FFCF0F0993DC6CFF6A2A5975E3A5B76C3DF1C4C36177FE9CE6BAE
              B926C824DD69C954D0C58A1E993DF2C823C377BD9B6BD4FD7334F80114BA7BD1
              49F60D86216F026600E605175C9005CD00CC3DF6D82393470E9E48B3A08AE08A
              FAAD9E7A1D4CFEE0073F089F90DA679F7DC20654C0E27FFFF77F03D145267962
              AD4ED47CFC1196B82944CBDB84C57E1F860C88E4387CF6B39FCD361FE7B4EA3B
              0AE0877DACF6EFFCF8C73FCEC08648D595575E19071D7450E600001B7D37C2BC
              E7EE50C072F629A79C121EA8DA7AEBADC36F11683AD66FDB8CD21CE84E3F79DD
              9EA780AD26175D7451166CD9628B2D32DED993B7EDB6DBC6FEFBEF9F6F3FE979
              9277BB457A531412D04F60121F7FFDEB5F67FB953905094C9E7BEEB9014CCA63
              1FBBDD791334D06B6032DDEB77BEF39D6C290D90B4878017263269BFD6F1C71F
              1F842595CD8FAD4F01A052E443BAF7DE7BC39E3CE7279D7452F8AE77EBDF616B
              DF812D08A2573E89F9852F7C21DBCBCC93B6E7473419D86CED3BECBFA3F7E180
              6F7CE31B99D1C2479FA905282DCB316A96DD6C35218FFD974ACD75E729D2E5BB
              DD975F7E7900284668DB107D69BF24472095732D4FCD4101BC2A059356016C4F
              E0087CE4231F0941340FC3894C923D9149CE5D73DC41F746D16B60324DFEEF7D
              EF7B211242286CF0B714F33FFFF33F19720726DB05A5778F2DED513BF1DCDD88
              3CF3C6ECFDD97DF7DD8321939FA7BEA5807D5994209EECB5D75E71D55557C565
              975D9629BDDD76DB2D7CAF1910E9DB51E6BDD7430160D2AA8F7D92B615D9073B
              79F2E4B03A6445C84A905794A465BA7AFAC8EBF43C05448B6FBDF5D61099247F
              022C9C80BFFDED6FE1611CA044F4ABE77BCE5BAC97026C1DDD499FE20D906899
              DB6731E5DD78E38DB1E79E7BC601071C1078FBBBDFFD2E3877CA5916AFB7DF66
              AAD7EB605214C4AB47182FD10F4F3F517810FC57BEF295D868A38D9A893EF958
              BA4101DEB4EAA2CE3C369B91BD92C4DE110FE4B896A7BEA380254F32273AE929
              7BAFE6F21A19514ACBDD64D172B74DFF7D37CABCE77A296079DB4AD033CF3C13
              1EDA0028B5F5ED6F7F3B7B62FFE31FFF7870DEF3C824AA344F021CAD0E008FC0
              0627CF3B423DB4018870C445B89A67C4F94880C92BAEB822F0CDD3D964CB0338
              28239F63605B497A3590E56F184850AD5DF46BAF83C94B2FBD342075FB40FEE3
              3FFE237B4A8DA76CFFC0D7BFFEF5F0543706E4A9F52940C008CDAF7EF5ABEC01
              ABADB6DA2ADB8BC7BB6EFDBB6BFD3B60A0387796D4AC1000FF8EA2567847291E
              7DF4D191BFD7AE35792DC2E56D0A7FFFFBDFB34833C7C093FADFFDEE773379B4
              12E4A5C97964B2B9F82BA26C69F48E3BEEC8DE430838CAB3F74E20C6C371B6A0
              34D7A8FBF768E84B0F307A68CA93F6A2C72BAEB8624614CF08C03D7827786679
              DB13DF9ED2F72C81BAED2083BD0E26BD88F55BDFFA56583A7BDFFBDE174F3FFD
              74507622560C97E848C681FC4F4B538080887231660025A3E51D5B5E49621F25
              6F2C7FB8A36F598C0F5E6901745066F861C9DB728D3D753CE715565821FBE497
              EB7D3BDABCF75A2840FEF0CCAB4A3873F4AD073780126F5860F03C04275AA25C
              2D6DE7651B4B010E9D379E8866592A7DF7BBDF1D964BC9A5151D2B7AF4696347
              91B75E0B05C89B874DAD0258D559638D35B23763A436ACF678AB0260C9F6F950
              8B65EE74BD1D8EBD0626110BC1453F283328DE320C2507C1DBCF03AD2B932B37
              D46ADD84871EAC1281FECB5FFE123E0346B828428A127FBD34B95DF68AB42EA7
              161FB92519DEB507E480494BA0F889678B97CE739A950278267114F053948BBE
              C54FAB3F1E7EF485236572DE361F1739E264D13B094593F18DFEF4D514E05274
              ABF946DD7F47544E8ECAE5B533857A1D4C525C00E5FDF7DF9F7D564834C40B75
              BD0DBEBF11BF5D27163E0AE78B405B42F5317B513000D33D538CA2D0BC33BFF3
              D4B714C02F726914DE3129914709AFE4E7A9F52890F84AF63C4D2A6AE27BEB9C
              F6B49FABF5EEAAFF8C980EB5DFDCEA81A08B073B38E06432F1B6FF50A3B9EF14
              3F4A479874AAFCAEAE2BD3EAA957C164AB132B1F7F751420382290DE279A145F
              AAE99A738A31DF8B871279CA29905320A7404E819C02AD4D815E0793C084548A
              DA818ED626653EFA448152FEA6FCFCD8BC14483C734CA32C96D194971F5B8F02
              782A257EA6F3F4BBF5EEA87F8C189FA4623E159FF70F2AE477D92A14E87530D9
              2A84C9C7593F059202B49DA154F9A56B5A2FBD262F4F3905720AE414C8299053
              20A7406B51200793ADC5AF7CB43905720AE414C829905320A7404E81A6A240C3
              C0647104AAF88EE5FB5D6F544AFD7AEBEA374F3905720AE414C829905320A740
              4E819C023D47819AC0A4F7287967E0F0E1C3C31382409DCF3D797541F17BAFBC
              A5DF3B953EF5A94F2D36529F11F26E339F162ABDE8695FAFB0F084F7965B6E19
              A5FB28BD4CF9273FF949F6E2EBF434A2AFAA78E1B937CB97B697FFCE29D0AC14
              78E59557E2E9C23B56C90D796AD671E6E3CA29905320A740BB53E091471EC93E
              1D0BCF34FA5EBDEB15965A77DD75B3F76DD7D29F712EBDF4D2D967356BA9D71B
              656B02935E68EC8B1988316CD8B0F07EC89D77DE397CEFD567D9D28095F1B26A
              AFFF4979E978E081070620E8AB3729CFD1D3BF679D7556F6617BAF41F8EFFFFE
              EF00285D4BC97BD230C0CB5CB7DF7EFB2CDB57017C7BD6D774FEFCE73FC7AEBB
              EE1A5E1A9A5DCCFFE41468520A7CFFFBDF0F8ED58F7FFCE3EC9376D50CD337EC
              6FBEF9E6B8E69A6B162BFEA31FFD287CB2F2D0430F8DE4C4F994DE25975C12C7
              1D775CFE2DF4C528D63319564A3806DEE7E805EFA9552F29E6E42EB7DC72D94B
              DF537EB31E8DD57DB807AFF2F24A1AAF13F22DE17263A6F3ED895E669965E2DA
              6BAF0DBADE975A040A965D76D972555A2A6FD2A4492148E2DBE5EC5123076F0E
              A1A7600A9B9AFA4A73083DF3F74A26AAD4767CF2C92733BD386AD4A84067AF5B
              3AE28823C23C2F6EE998638E09EF5E958AF3BDEB5360CCBB92D5F506129F4AEC
              6A4EE09DB2E5CAD1DFBFFCE52F0376216BC5FD7575EE957A3EF6E23DCD5D95ED
              EDEB358149A8D8F742FFEBBFFE2BB6DE7AEBF04513939CD2F9C637BE113E1784
              F00F3DF450DC79E79D9992B9ECB2CBC2B746BDED7DB7DD760BDF65F6026B06CF
              D71944287DF5C69BE137DC70C3ECF351DE3FE8DD934027452502AA3F5F03D874
              D34D0398247814B82FEA780F97088F367D6ACAC4D05F6F13B35DFAC30B2F96E7
              30F8E41341AC746F408B1721FB8A11E1C50BDF5BF79E4902A52E4784E1D97CF3
              CD438459DBF2530292CC2FFCD54ECA4F47F5CD179FDC94C7F8014A5EE0CB9B14
              2917D176ADD9936F625308148E17837FEF7BDF0BF3F9F2CB2F0F8E917701A281
              B9EDDD803E3F497970C06EBFFDF64C0951721C39D7DCEFE1871F1E9C299F40BC
              E1861B321AFB8A0D9A7EF18B5F8C934E3A291E78E08110F9C707ED79313259F5
              5945EF03DD6FBFFDB217CCFBFAC6B3CF3E9B7DC1C1F7B9D1D7D8D0D7178CF0F0
              C61B6F0C0E205E73FAE8052B09FADB6CB3CD421972896FEAF9EA837BC5E7E79F
              7FBEA36D343066F384ACBB2765DD532B240E2E7D080CF84C21BD839EFFF99FFF
              19AE711A8A0142B3DE930F0C485FFEF29733DD7EFEF9E7C7CF7EF6B3207369CC
              E60AE3E83BEE0CA139EB6B2CF80AF0D0D17485EF80DF74D34DE1F3A9AD1875F7
              A270F74E26D893CE0075A24B2D4720D5FC27DFA99EF9620ED1BBBE9BCE3E022E
              9FFFFCE7837CFCDFFFFD5FB07DA97C7EAC9E02F7DC734FB019F4269B4337D1B7
              64923344D7D25BF415FC70D4514705BE0B48C11D679C7146A6577D64455D739A
              E3AE2E3D9ECA9105B2C1B6B14D7401DB49372A2B0F708475C80E7D6C6C74A33C
              77A43D80970CE99B7E75DDFCD08F32C6F0E94F7F3A8E3CF2C86C9CCA6A5B1FCE
              3BABA76EA3534D60320D669B6DB6C980E4673EF399F0750546DD84F7017A008F
              470764FA1E25E524A44B88FEF0873F648CE5BD32180485F02082682760C963F8
              E4273F19DB6EBB6D304C98E21A257DEAA9A766F91871F1C5178728A7CF4C3192
              5EB00CC058EE568E624BE3CD8FD553C0C4A5D8264E9C9885E0F16F871D76A8D8
              80EFC47A6FA4A34F63FA9AD18E3BEE189C0C911902C2D96084181E5E19C14D02
              C2608944FBC203A0632E25014B1DE32963070CC9C3F72F7CE10B01284D9D3A35
              EEBDF7DEE0B5B9D6EC0968A2A47CBF15E006C40040E7648143C698BBD7BBEEBA
              2B804A917EBF293540F0BAEBAE0B4A8D1177BF942039213322FCF888E6E4905C
              1D76D861C1385158E413ED2837514BDF871559C2F72DB6D8228B6C0277FA33A6
              C71F7F3C7314193B4B2C9C07FC007C2962DF11E62402F4FAC5BBF3CE3B2FF011
              5F52BD2F7DE94BF1CD6F7E33C8BEB64565CF3DF7DC20EF9C08730320364FDC53
              2B247A0DCDD002AD804860DC1784D0D9FDA32F6326F2C751A6CB1E7EF8E16C1B
              8F6D3A8002D0CE1001E90C0310C67001F5B616A1291DC7B8D0778EE4926CE18F
              3A00AD3C0612F0D376AAE7BAB9A52FB4F7E2F2E488D0D9009339E008009B7F00
              15D924D364153F192B32672B135E7B8936FE7DF5AB5F0DD7040E3804279C7042
              16384007FCE7147144B6DB6EBBECBECD79F74B4FB8D766E1355AB02B68C9E123
              07E6F62DB7DC126407EF3850C5FC13F4100861D48168B4C603B6084DD1C9E72B
              4539CD118196AF7DED6BD98A0400625E0033FA047CE85C726E1CE8491F981FEA
              A1A573ED9175F287CFC09171A1A9319045BC075A397522CD7E2B87DEC6650E25
              7ED0F778602C56FDCC15F7686EA9C72EE3AFBAEEC31CA2F3399AEA356B02C8E8
              45FACF58CD613432B71DDD83E013C7FB139FF844B83F609F4344777208FD364F
              7FF8C31FC65E7BED15F2E9581F77505FA412BFF049793CA5DB6010F8069F3828
              F2E95B3AC1A74C39EFE61B9DA14D758052FA429BA79F7E7A166420CB74818001
              1DC976E21D5E09D0B10DEE53004ED4B55C3DE51BCDA39AC1A49B4724DF79657C
              1845CB75C000A1FBD39FFE942DDF3182BE25CAA0518622147E2B4B2830921122
              84E926D5D11EC46ED91AAAC70C0AF5E9C2FE328A8D61A49418B50B2EB8203358
              18A51C104310315C99D46E7EAC9E02048767FCB9CF7D2EF6DE7BEF6C6F86C9ED
              B388848031028228965FFCE21799E7CC788A10A23B50440912140A1838A028F1
              8EF1028C4E39E5940CF80117C026050A9C58A6A51C1944CE0245C6881190DFFF
              FEF7C139015224ED13220056C44E549C41E3B1F586E0544FD1C54B5228E8C429
              23030CB348231A53E41435C7CBFC6674010C34D3128583F6BC6BF72E4FA27CCC
              798AD39101033E007AF2CA88509094113042397EE0031FC8F61F8BF4A3296547
              AE810574940FECA1BFED2377DF7D77EC5CD8D642A9916B7289AFE6C541071D14
              E689B9410E8DD998CC0BF5F4CB51E01C8A66E12F47D45C39F9E493B32896FA22
              978CB07B6A85044CE2039961F8E939B283368C31BE02090C91FB4103DB15800A
              061C9FD09D83C541301F1806096867F48018B2C0E8911774D32603C9C8C8C76B
              7A96412487C640C7AA87EFE40E80C44BE3E5909B03C6643ED0E5B6480092C088
              3ECE3CF3CC38F1C413C3B7BDB509003176F28CD9BD3368E629104A5F033B8008
              99066EDCB7F94DE72BEBDE8DCBFC712FF43C39308E66488020000C801923E0C6
              D0B36F1C587C0124C81FDA020FAEE31F3DC8E155069DE8A5B3CF3E3BDB06A65D
              720564037664836305BC5821405F204D1F9641E946ED9B4356F7F4A33DCE033D
              AA2E6044BE4531B58F4FF405590626E51B273D29DAA63DB2AB1FB26D0E91C59D
              76DA298C27CD218E29200DF000C8EAB92E2844FF731ECC216324DFCDC0B7AEC6
              40D7913D400BBDE9606050823BC88515124E0F9D04CB98E3DA15ACA093D017FE
              2017E86A354E79F426E7E6807A826568CEEED16D7424FB85576C14004A4F1A13
              991704415F63627FF1850D607FCD0F34674BE5E11F671B1E1235672B05F52AD5
              237F1C1EF7D2C8541798A4341082524158868F528098110E2101478A449E492A
              1A83E09425E565928AAC309E6E9012A29C445A8487D5A1EC0827CF8832441446
              8D57C6A05262C02720A11CA544C87CBFB4D901857B6EC644E998D8F8611B0365
              4308784F809D890ED898E400079A9BE40C1BC56B3EE0ABFD53941100A83C21E6
              DD52B4943170015898E4E6864899E814A12620A2CC0009AFECA73FFD69B66448
              98F19F32E63C003EA26DF2295DE3A6F42D6734236D8D49349EF2063EECC301C4
              282F51421120B2259A402EDC1F6028AAC5B03118E828EA41DEF0469B1220C0C1
              22330005FE006C64143DD5A1FC192D0E21191155423FF42437686DCF10A325FA
              49F9525E680E909239F3C0788002D72939F70040022DC6415992478E9DA89D7A
              F86BA99C034221E33B7E59B661BC3895FAD6360FDB3DB542A2B3D0949E334FCD
              7520101D187BCE1410C6E165AC8065A0838C8828310478C9D8D0657823A2497F
              69935C3136E48ABE03C4004C3C63ACEC55F78D6DB204B48B90E2B9B9831FEA71
              D23821CA018D1C0B3A1ABDD1982C8944D2BB743640C2489A2FF4315D0F5C00A8
              E6A9F69567C0183473481B2233225EF84E3718B779C13ED836434F68D30A84F1
              9A1BE62A79308E6649EC1350ED5E187D2B6EE40F58A793DC07FD04881C7FFCF1
              01209235340640003FFC436372A51EBEB37F9C0D726E9E880AA2277093226378
              AB8EFEF5CDC916A0415FF68F43A02DF4244BC68AFEE610DBCAF9E37C98478027
              1D4C4F980BC673CE39E76411640FB272668024B24C0E39387480FB3206F3037F
              D4C36FFD71F8D002C031873911CDC2B74AE330B7E947F7801FE6393AE11B47C7
              DC76DFF4241D54DC165B68AED2BD8218401E3C4287C21E682CFA88AF22946C1C
              FB0670D2E5E8C486D29540381DAD0EBDC95E01AB8EF4AE31711EB46BDE251ED0
              890210C649EE386CB0163D90EE25D5C36FE3C43BF53827F46BF13D35E2BC2E30
              C91B36892826C040B4D19102B30CC0233291290E86024131CC44B65F00A2276C
              94160529FC6C62232822618C7A149A680DC36B2F1E62113A0286F0CE318E1225
              48000C65EB0120C0A61104EB0F6D121E3C253CC01D034549A12F5A332CE84CD9
              32147E9B13262C8348F900200493974FF1323A26B60816EF0DC814990034D094
              87666E10228A8BE2E43112209E30E7821103A85C2790142BAFD0671B29696311
              D9D45EB326808A5C182FA38AAEC030500E7000591436654406DC23E5C76071C0
              28248AC2FC07D80014F70AF459926318F061F5D557CF1ED4C11B6012E0414780
              1ECDF100E80666D08F21A1202D9B30641E74033A8001C68AB70DD89A031C0AC6
              48E409BF3803141FE0C3010188DD172FDC92B67AC0A9794507183363C410035E
              9422A346E9E1B7FB774FAD908049731D0830F7F18A7E33E7813040006FCC4BF7
              28720C5CD261E88BD60CB908061D863F68C688302CF80E54724244B6E8480644
              E40C0D4518CD073AD376237407F8CD31FC564F1DF3804E043AF04DC4CC9C30A7
              E851912CCE0170828FE69076E8638E0070AC7F7A9D91A4FBF113C83156F28B06
              E6309D0E28D11F1C16E3076EF019C824BB4099BE186679CDC26B7A4DD4076DDD
              379BC3496053C817E740E416DF44F8CC5F5B17802F735B1EBD872722966808C4
              A8076C981FF41CBB96EE1998044CC8145DC031C60B6DB3B3F41A602EDA8977E6
              105D88BEE4128825731C0BF34DE4D2580117740724EDB323B7E685F987F6F867
              6C641F1F004932E87EB50FB8E09D7A7ED3E5F48A368CC37CC7FB741FCD7C34C7
              39466C87719BBFE4017004EAD0D76F7461F3C80099754F22B2F4305B03E35809
              C03F7A8A7C902F915EBC954FA63848F4AE76F010C631AF003D8E395E290F5402
              93F8872FDA24436CAB7AA2957430079DCC18A7F9669CE4DBD8CCBD544F3EE08C
              DFA91ED924CFEEA591A96630C99853160C02A23044263F23C2503276261A43C5
              20121CA17B8CC450089D710110B5C3FB728D1053A614A56B94178509D4888811
              2E860CD33014D1804D65294CCA92C7AF7F7529B14612AE5DDB06284C6674A584
              84D49DF3AE3805F84A40182FFCA688281D86893052441C0BCA9142C543E17F46
              11402188044DD4C6FC208CBC6C479E2100C57BA44829457CA6D4F19F0126D404
              8B009B67E6074743A483222668490934238F44352C8152CCC6873E8C05A5468E
              281DE796192D9BA233202DAAC498F04AC911C0EE48896847D4838306D8887291
              31D7B5AD3E59C52F4E9DF2AEC90704811DE3D21F25867F8CA271E09B5506ED31
              7A0C2419641C8152E3C5676D5358784CE91A2F3924DB8C964829E50A44EB9723
              695E98537404E32DAA03746AD3185B21E11FE0449751ECF80A1430E41C0406C0
              FDA18FFB168D06C60069F70C08E0213942576D98EB9C2EB206C893417465E444
              1BE84A20417B8C620202A22C1C0CC61E68544F6258CC1773CAFCC01F72638C9C
              368E9EE825E78E310448391B80097925ABC6968095DFE686B9284A85FF4008F9
              E3002A6BF9D39C01A6E8113A846E614CC9AD7EB4018C90DD66E1B56D0780131D
              22720C18B23B741C7E9AB7640D8806AC3875688CA7EC97A57CFC630FC92B3060
              FFBF7AF41C192317A2B7F8429EC88732003E5BC9BEA1B1150BF24146C934FE72
              36E94A34A31739A4C011D90346F0885D3406F539261C4663A43B0177FD5A8122
              BFC02407941349F6C93AB9E4DC0092E69D7AEE0358768F740750661EB1BBCDC2
              BB4AE300DA006CCE178715BF3873F8C5B6913FF4624B383D9C07B8439B822964
              C4BC60BB38D06C11FA9927E86E4EA86B3EC0481C69CE832339E200284B07A229
              C78B0CEA5BF08D7E56973309CFD0216C1CD96227E1246312D1A61B6C3D10D8C1
              0B7CE1C0AAA70CA08A2FA91E1D43FEDC4B2353CD60B29183C9DBEE7B0A50A00C
              984885C88889C9C810244ACC08291982C64B62102940931E8067384D78008572
              A4B8284F6045D49A71A22C6D5D60E0088FA5380247D828414A526278B54DC829
              458A8E31A51C295B6312213026C6CF1818370A5A5E2B250A09D01369A08CDC07
              03D0DBF7C03001A0F860B91538C21BCB71941EB0CED0007E95C60664E19539A3
              1ECF1BCF19464E823C734B44BB523BCD7E0D38A0C0297BF7CA207088F051BEF9
              0F5470B244200044F70D5C9AD36481E3C4F9623CF09EEC8906015E8C36E78983
              07D88B6E729A8174F2C63801FFE485E365A919000210CC1F860F101225252B68
              EFBA7E8158808E030EF4A135874EC40B401649013E443E803EF7E4FE000F6D90
              4D4E241009309ABF1C25DB17806B4B7E40AD3E041DC83AA3990090FB07908D43
              DFCD908074801C38C64F7398A1B69408C4A3015DE3DE8013461BFF80677C15B9
              C56F8E17800E008A54A9879F741AFD48A70238E40AB0031E0050009C6EA33FC9
              20B041DF6AD71C024A388DC0A879C049A31F8123400758324EE53926DA013604
              7F800FD12CDB23801F7388D368EC7431BD2F984357E311208437E69E796C8EEB
              C7BDB80F7302886D06BE7535062B9F680D54A10DA707AFF1905D32D7D1033D45
              2A6DB9A2AFB48B9F8036E7417979A2B8E80B505A02C7433A0DF0769D838096DA
              E1A038D7BEFADA25679C2AF2621CF880EEEAA2AFDF6C31B08F17649B3CA771D2
              23C6441F0842D01B95EAE953DB8D4C39986C24755BB46DCB3826B2094DD1B80D
              139D0039B79F8F72A270293742C6300098A20F048881E2355144942921A59C2D
              758B861022512875B441B9115A864AC485612224CE8D8322100961E418627D12
              667D51C0F2080C6F8C801B672B25F76239020D444078AF7D317EFBBDF08262C4
              2B600F2FAC28E021C08E8FD58CADB89EA517F7263A03A452A4947035EDF48732
              801960C528302E8C0EA30FD873D82CA703020C7A57F40040015972A31E4004C8
              94ABA73F4E5CB96BC57978D78A4E5AF13D34F21CFFACD8E8833340AF71CC0001
              79BD91C82EF08857FA3306914D9162114D7341008073EF7AA5240209C8A639C4
              414AF757A95E7EADFF52200793FD97F7F99DE714C829D02414102DB12C6689CD
              90EC97B2DC2F4A26A229A2228F53E57AA564B9CB923680534BBD4A6DE6D72A53
              00FF2C658BC27266394F1CEECAB57AF6AA3170D439F25A3606D130CBA91C76C0
              5014B39A39A43C47C6B1967AFACD53FFA4400E26FB27DFF3BBCE29905320A740
              4E819C023905720AF408057230D92364CC1BC929905320A7404E819C02390572
              0AF44F0AE460B27FF23DBFEB9C023905720AE414C829905320A7408F50200793
              3D42C6BC919C023905720AE414C829905320A740FFA4400E26FB27DFF3BBCE29
              905320A7404E819C023905720AF408057230D92364CC1BC929905320A7404E81
              9C023905720AF44F0AE460B27FF23DBFEB9C023905720AE414C829905320A740
              8F502007933D42C6BC919C023905720AE414C829905320A740FFA4409F81C979
              F3E7C7C34FBC1453A6CD8C25460E8FB557593AC68E1ED93FB990DF754E819C02
              3905720A34150566CC9A130F3FFD52CC9E3D2F965D6A74ACBBFA724D35BE9E1A
              0C1B3CF199C9F1E6DC79B1F4B8D1B1CE6ACBC6E041037BAAF93E6DE7A557A7C5
              13CFBF1AF3DE9A1F2B2C3D36DEB5EA327D3A9EDEE8FCED77DE89479E7C295E79
              7D460C1F3634D65C69A98CAF8DEEBB4FC0E4CC37DE8CDF5F7B77DC72EF333179
              EA1BB1C488A1B1C95ACBC4C7DEBB552C3F614CA3EFB929DAF719B3279E7B35A6
              1714D6B82547C61A2B4D688A71356A10849950CF7A634E4C2828AC55971FDFA8
              AE9AB65DBC7EEA855763406184ABAEB0548C596244E1ACBDFEBFF2DAF478E195
              6999315A6DC5A56274C1516CAF3B5CF46E9E786E724C9B393BC68F1915AB1578
              BAE8D5F6FCF562C140BF38795A0C1D3A38565B7EA942306058DBDDE8AB5367C5
              B997DE16774F7C2966CD99172B2C352ADEB3DD7AB1F7761BC4A036015A9866FE
              5E78E53FE281275F8D390530B9EC524BC4BBB75C33F6DF6593183A64B0222D9B
              EE7DF4F9B8E89ABB63E273AFC75B6FBF1D2B4E181D7B6FBB6EECBDFD06317000
              2DDCB2B7D6E9C0E7CE9B1F97DC704F5CFF8F27E3A5293363784146D75D75A938
              B480AD1A8D317A1D4CFAE4D35917DF12E7FFF5EE78FB9D01317BDA2B316C8971
              3168F090D875CB35E27387EC1A4B2E31BC5362B5C3851905307DC90DFF8A3B1F
              783EA617CEC72F3922B6DB78D5785F4180870C1ED40EB7B8C83DBC36ED8DF8D3
              F5F7C4DD8F4E8A59052F7FE9B12363A72DD6887DB6DF28060E6C4FA15E840085
              1FCFBEF45A5C78C53F62E2F3AFC5807722D65A697C1CBCD7E6B1FA0AEDE344DC
              7ADF9371C5DF1F8AE75E9911430A06F75DAB2C1507EFB979ACB25CFB390EF3E7
              BF1D7FB9E9FEB8F1EE27E2F519050769CC88D865CBB5DA0E6C14A6EE22FF6FBE
              FBF1B8F2D687E285C93363D8D041B1EE2A13E2A0028F575A66DC22E55AF9C79B
              F3DE8A1F5F70435C72F3C3F1CEDBF362EE1B3362C4D86562C9E103E3331FD939
              76DF7ADD56BEBD8EB14F9E3A334EF9C595F1CF89AFC4DC3933E2AD39B30AF7B9
              6C8C1C3A208EDE7FEB3870B7CD3BCAB6DAC953935E8DFFFDC555F1D80BD3E3CD
              99AFC7DBF3E7C68831CBC6B85143E2F883B78BDDB65EAFD56EA9AAF1FEF1DA7B
              E2E77FBA2D66CF7DA780AD5E8EC1C39788A12396882DD7592EBE78F86EB1DC52
              4B56D54E3D857A1D4C3EF8F8A438E1BB7F88390504FDD223B7C494671F882597
              5E2556D868D7183474787CF6C33B1626F166F5DC4B4BD411A1FB65014C5F78F5
              BD31BF002A08F0D0914BC6F0821378E4FBB68A83F6D83C7CDBB5256EA68A41CE
              79735EFCF47737C5C5373D58283D20DE7A7376B8DFD1C307C4A73EB87DECB3C3
              8685FCF6FEFFDAB459F17FE75D1737DFF75CBC3D6F6E76B383860C8D7F5B6FB9
              F8D2E17BC432E3476779ADFCE7EE879F8BEF15EEF185297362DEECE931B0E01C
              0E1A3C34B6DD68A5F8CC477769A812EB0BBA5DF1F707E3C717DE1C33E7BD53B8
              DF993164C4E802D818109F3E78870C50F6C5981ADDE7EDF73E193FB8E0A67869
              DA9C0C6099C303070D8E9D375BB5C0E377C75285E86CA3C7D01BEDDF76DF53F1
              851F5E12F30B5BB15EB8FFBA9839F9D9587EBDED63FC2A1BC7EACB2D113FFDCA
              C1317AD4F0DE184A43FB38FBCFB7C6AF2EBD3BE6CC7C2D9EBFEFEA7873C69458
              7AED7F8FA5D7D832C68E1A1C3FF9D20763F5155BCFD9E5E87DEFDC6BE2F2DB9E
              8859AFBD10CFDF7B75CC9F3B3B965F7F8718B7D286B1CAD223E347857B9B3076
              8986D2B7B71B7FFEE5A9F1E96FFD2E5E9DF166BCF2F85DF1EA13FF88E14B2E1D
              2B6DBC7B16B03B64CF4DE2D80FEED0B061F52A987CFBED77E2BBE75C1D97DFFA
              584C9DF4683C7AC339316FCECC18386848ACB1CD81B1EC3ADBC4DA2B8E8D9F7C
              F9A0C2D277FB2D9DE0E29DF73F1D5FFAC9A585FD29F3E3E589B7C68C579E89F1
              2BAF1F13D6D83C460F1F14DFFDCCFB63A3B55754B42DD275773C125F3BF3CA98
              3F6F5E701E66BD362926ACBE692CB5EA46B1D4E86171EAE70F684985550B732C
              23FDF4A25BB3B93EE981EB230A7B5A96DF60A718BAC4F8387C9FCDE2A8FDB7AB
              A5B9A62B3BB3B075E14B05E37BDF535362DA4B4FC42B136F8B21058F78F9F50B
              F738724C7C68F78DE3B883776C1B27E9E52933E2B86FFD365E9EFA664C7EEA5F
              F1FA730F64F379FCAA1BC7F2E3466460A31D1C84E289367DE69CF8DCF77F1F8F
              16223D53273D12AF3CF68F18366A4CC140EF54E0F5A83862DF2DE3C8F76F5B5C
              A525CF0BA219DF38F3AF71CD5D4F667C7DF486730BBA6B4E8C5E66F5586FD723
              63E8F051F1AD13F68DED375DB325EF2F0D7A6A219A7EF4D7CF8F175F9B1DCFDE
              73453CF7AF2BB34B230AE063DDC27D8E1CBF4241376DDE92BAE9F9C2369B23BF
              765ECC286C4F78EAB63FC64B8FDE9ADDDBE8A5578D757639BC306FC7C5578ED8
              AD10C8D820CB6F973FE75D76679C79F1EDF1C6EB93E2E16BCF8A3905E7C0BDAD
              B2F9DEB1D2267BC6326387C7995FFD6861FF64634074AF82491B9A3FF1CD0BE3
              9997A6C79377FC295E7CE866F79AA525975B33D6DBEDE818396278FCFCC40F17
              1EC869BF8DB26F153601FFF76997C6AD0FBE10AF3E796F3C71EB6F3380317CF4
              845867E78F1514D61AB1D7566BC5978FDC23060D1C98D1A595FFD883F3B9EFFD
              21EE7FFAB578F9915B339ECF9F3727468E5DBE20D487C6C8F12BC58777DF283E
              79D08E6DBB87E58D39F3E2986FFC3A9E7E7956BCF0C0B5F1CC5D97666072E5CD
              F7899537DDB3B0176B649C79D247626C0BEF9FBCF99F8FC77FFFECB27873F6AC
              78ECA6F3334751747DA54DF6889537DB3B961C31287EF9F5436385098D5B62E9
              4D39F9E375F7C6A9BFB929E64C7F351EBEEEAC82F27E31468E5BBEA0BF8E2A44
              00968A2F1DB66BECB7D386BD39A486F775D56D0F1740D65531B710759E78E339
              31FDE5A70A5B5406C5CA9BBF2756DE68B7425472589CF33F8717E6716B0701E6
              BEF54E1C7AE2D9F1DCCB051B75DBEF3B8048C4808CBF4B151C868377DB383EFD
              A11DA395FFFDE3A1670B2B84BF2FAC14BD11F7FFF5B4C25C7EA5E37656DD629F
              5869D3BD62933527C4695FFE50C109ECB8D4713263466159FCADB73A7EF7E509
              5D3373E6CC9833674E614E0E8C5B1F7821CEB8E4EE7863EACBF1C0153FC96C6C
              1ADFDA3B7C24967DD736B1CDFACBC6B1EFDB3C65F7F871F6ECD9F1C61B6FF478
              BB9D35F84E610FE899973D108F3E3F335EB8FFDA78FAAE4B3B8A721036DCFBF8
              C272F7A8F8FE67DF1F5B6FBC46C7B59E3CE95530F9C2CBAFC751DFF84D4C9D3E
              2B1EBCFAF44254EEE948FF060F1B199BECFB9F317CF4B84278FDA0D86C9D15D3
              A5B639DA5BF5D1AFFC2AA6CE981D136F3E2FA63C7D5FC7BDADB0FE8EB1DA5607
              1436092F11BFFE56C1031ED471A9654F7888879D786EBC31FBCD82A7F4F32C6A
              956E86B7B4F2A67BC7BB561E1BBF3AF96329BBED8E4F4C7A3D3EFED5730A8AEE
              CD78F0AA9FC6AC29CF67F73862CC72B1E1DEC7C5B011A3E2F4133F121BAEB16C
              965FCD1FCB6F146835651B5DC658BE7BCE3571E59D4FC5E427FF198F5E7F7647
              97430B91AB0DF73E218617F6447FFE901D63972DD62C0465DFE9B8DE88137BB2
              1916E3EAE9F6D1DC9392A7FDE1CEB8EBD1C9F1E2C37F2B3884177574B3E6B607
              C572EBED185BAFB74C1C77C09659BE3AC6F35693185E8362E4183B63F3BBABF4
              4E816517DFF65CDCFBCCCCC26ACAEDF1D8CDBFEEA83262C909B1E15EC7C7E0C2
              BEACC3775F3BD65E61899A790C044C9D3AB5A3CDBE3A418FE9B3DF8E3FDC3125
              66CC9A1D0FB151939FE918CE2A0590B5CA66EF891596981B5BADFC76CDF7D9D1
              500D27C6642EBFFAEAAB3DDADF94F94BC623AF8F2ED8E0A7E2C12B4FCFF614A6
              618D5F65C302703E3A460C9A1B9B8E9D5C80D18509902EFEFFE36BAFBD1673E7
              CEFDFFBFFAF68046D3A64DCBC0DBC0421066DE987562EEE8B50AFAE89EE0F8D0
              096984B62BACB9EDC13170CEE418F1EA1D3D4AD3D487F1CC9A352BA64F9F5E00
              E2035276438F03870C8B616BEF1503878D2BACF89E1D539E59882D060C1C141B
              BDE73F0AC1AA55E38B1FDB29F6DB7993868CA557C1E4532F4C898F9F747ECC7E
              734EDC77F98F62F6D4973A6ECA0D6FF6FE2F1536002F17DF387AB7D872FDEE83
              494F4C539C1D9DF4F1C91393A6C657CFB82666CD989A794C290C6D584B4C58A9
              002E4E8811C387C6C94714F6E78C1ED69089AEAF940819216C84A12350135F98
              11E75FF778CC9A36391EF8EB8F0B1EE2ACD4758C5DE15DB1C11E9F283C093A38
              4ED86FFD18317460768DC7CBB8643FFAF88F7B307F80817A87F2C2F48171D3C4
              3959F4EAFE2B4ECBF6EE686BC0C0C1B1D13E27C4E809ABC4B66B0E8955C72EAE
              B0952B4D683365CA94D2EC3EF98D3EF3DE7A2B1E786D4CCC7867C978F2F63FC6
              A4076F8C8E7F0306C6FABB1D15E30AC669C23B9362DCDB2F357C4E9379C0A451
              73BAF0286FBC31EEDF62EEA031F1F8DF2E28EC4DBAB3E37697596BAB587BA743
              62C8BCD762C4E43B0AF9EF64C6C478E615B67914329AE2BFF95C0B988C018362
              C2A6FBC7D0712BC5137FFF5D51B4AE10AF2B18EF0DF63C2EC62CBF764C7BECFA
              983DE9FEC0835A6E14AF9A813EE6F3E091E36385AD0FC9E6E903051BF5C6B497
              3B6E65A58D778BD5FE7DFFC2F2F7FD31E9CEDF65653A2E36F0849E06DC8CAFA7
              BA99B0F6B6B1F216FBC5D4171E2E80E63316B99725975BAB003E8ECF96491FBD
              EA47F1F65BF316EB76DCB8713164C89045EA2D56A81733468F1E1D23468CC87A
              1CB8DCE63164D90D0BDBAA6E8BC7FFFE9B2C2FFD5966CD2DE35DBB1C1E73A74D
              8A779EBEA621E3C7AF51A346C5124B2C91BA6DE8D1BC981F83637A412FC5E091
              85A0C5E931EDC5C716E9536472EC8AEBC4F1076E5D78606E8B45AEF5D48F5E05
              9393264F8BA3BFFEEB786DFA1BD9049EFEF2931DF73164D8A8D878BFFF8C2185
              3D56CBBF3531C60E9DDB2D4667042E6CA0064E3A3AE9E39337078F8DD7476E54
              D8E8FC6ADC77D90FE3ADB90BC3E09E68DFB400A6071414773C73750C7C6B56B7
              EEBFDA5B7DFDF5C26B130A80A0DAF2D59643FFA113D68E31EBEE1E335F7D2E03
              936FCF5FB82C32AAB02747247A5E61D97BEA3DBF8DC2A384D9FD026F1467B5FD
              34BA1CF026D5DBCF8402C058739B8362FA4B8FC7FD85C864C1D27634B5C1DE9F
              8E712BAE1B4FDE7A51619FE1AD1DF9954E060F1E1C1455A532BD758DD2F400C6
              CADB16B62C2CB54A4CBCE9BC985CD8F45DDCFFBB763A3496597BAB98FAC42DF1
              C633B7673C2EBEDE93E7D9780AE066CC9831814E3DD9766AEB9D018363E0EABB
              1774F6F878E89A3363EAF30FA54B85BDCF8588CE1EC7C4BC998528D2535766DB
              1900ABF1E3C76786B7A3601F9F0C1B362C860F1F5E152FC8F1FCB723260D5E2F
              DE1936261E29ECC59AF2ECFD8BDCC1BABB1D1D1356DB3446CE7A2C968A97AB6A
              B7B801F3193829CEEBABF3B93124EE7F7DA942C0637E81BF6764CBF9692CAB6E
              B96FB63565E531F3639B5507640FE8A46B8D3A9AD3E6F2D8B163B325DC9EEAE7
              C929EFC495F7BC1A33A73C53086CFC7411C06829DFBEC9F1A306C6C15B4F28CC
              E3F98B759BE6B4F12D76B10F3280C9912347663D5F71C7D3F197DB9F29ACFCDD
              1B8FDCF0ABC2F8173AEA2B14F671AFB1ED0763ADE547C5670FDCBCE6B99A75D0
              C51F3431A77B134CCE79F3ADF8F2CFAE8AE726CF284426CF2DDCFBBF3A469905
              2EDE5B884C4E58B9B005E7DDB1EF8E1B755CEBC9935E0593B366CF8D4F9D7261
              3CFEFFDA3B13781BABF58FFF748E638A50C87CCCE33567AACC0A15290D428892
              5B1A541A2451A2019554CA5F112A921099C9508690315399E744E623C37F7DD7
              BDFB5CD7D5E11C7B7CF7F2F19EBDF73BACB59EE75DC3EF19D78E03DAB268BC76
              AC9E95484B96DC25ACC4A0B3A77470C53736AC3DF1620ABEF0421984E1324941
              426CA65C4A1D5F5B278EFEA95513DF51C2B13F396D8FF499AF5599DB9E14C962
              D3EC99279D3C62CF07FA0F0B2F8B0BFCF2675D2C4209A9AFD19E98823A7A6097
              0193030C783E9E5845A61C058C26D698C7529D528E132B14ABD306679D51962C
              592C58F2777B122B4EC617DAC024C5918CC7FEEBD65D47E3B470CB191D36807A
              F5E481C6993FC15E4F75C515967E7C852BE53EA33C19FFB2E72FF68777C5C272
              B1FB82753D26265693561CD1E67D278CC9D768AD4C868673EB2668216B7C79D5
              2A9DD51CD9023279FBEAE37D61E6A20FA135F19DF7E7E7E9B3A9F4FA8805DAF6
              BB7155F97EA8F17D5E9A58FC35052BAA78EDD62608278DBAB6AC62B5923E3019
              171797785FA8BFD0168E4B6DC7A9D367F544DFB166DE3E68DC73866B9F8914F5
              3DCB382F692C0C99F39450FBC695D4AC4EF2172AE6E9E4B4C75777203E59A33A
              BC3A525BF71CB63EDE3EBF7E2C6725EA3FA4AC86CED6B75452FBA6D502517DD0
              CA5CB775BFDA771FAA04930E68F5940FACE5C4577901A37DCD55BA8EAE2B9953
              FD9FBAD3773A623E672E5AAF6E1F4CD2F143C62236F93DFD75ECD0BFDB9ECAF8
              EAB736D1EA1575CBF5C5F45CDBFAFF3EEF8D8FA7FA7EAD85BFEC343E9333B479
              D137894465C89A5B8CD1B4C6A5EAED67EE548512F912AFF9F34B50C1E459D3F2
              0123676AD4CC353A6C1CB8F11BC4893DD6A4042A68FC18B2191574E16BD3AB79
              8D7C2620E3EC652F3C4C522C2CA6DAB0F88F3F4EAF61F36DA2F2B5333E36AAE8
              8D89EDCA5EB8B20ADF70AFAEC994567D1EB959E9D3C45C36FD8985FFCD171602
              2428165E16E2BFB92D45A759D43798A4EC9DFB8FD7F16347B5C64C58A469F015
              96AB742D3169E5CF71A5DE7ECA98D062AFB097902E698FFDE1813F6BB7FCAEF6
              3D3E33810BC64FD838831F337955210B4DF43F8C3F615C864C26FAB7B9CA15CD
              C9E9883C5E1B3C59DF2DFC55BB8D0FE1C6F95F26D280B5A1B4D1BEA63382D28B
              0F36B00983132F46F097A7FB99497BCD4E9B4E65F3E2098994C45FD7C4A4E1A8
              A76AA5739BAC0C4D13CF7BE1CB0B03C669EEF26D66A19AA94D8BC6269294C658
              92D0B0A7B932AB7A3D7A9BC9B55924F15AA47EE93D648A26998C23074CC691F5
              B3FE9571244B9E922A5AA39552A749AB7E9D9BEABAD2F923953CDBEE03878FA9
              A30986DDBEEF98769A0C139B7FFAD6E4D43C252C46C5EAB4533A1314DAE18E2A
              6A794B65B14ED88722E4CFB6DD07F460CF113A7CFC94B62C9968FAEC74DBF2AB
              72163581AEF72BD65841BB3F74B36EAA56C29EF7C21FD6EF11268FF187631658
              45DCBAD943AD7F3E4250FE4A8D95BB746DE5CA6A829BBBB5109BA40482E6A082
              490820E3FEE36F8ED1C1A327B5F7D725FAC3388A6634FE8238AEC7C6C51907D1
              DABAAD66196EF5E4D1A9CF282DDBB8D7F873CCD3A685638D79E1A462E3D2A968
              ADFB95256F29D530C9CB5F7BACB12768279768879EC3F5EBCE43DAB162BAB62C
              65C23A6373F2153713165AB9C637165397D6F53D41EF858820617BFB1EC6B7CE
              246E27C26EC7CA99F6B69C26E00A304D7AA48FBBB730DBB565B2E723F1CFC4B9
              ABD4FB9399265FDD7EAD9BF17F3A6272BB41478EA2554DCAAFBB942EF515FAD0
              041915C99F9DD3917D98689421E37ED490094BCC64BDD598423F3239170F292E
              436695ACDFC12CC6B9D5A16915B39B57E5C8A6F3BCD68F9ABA54EF7E3157F810
              AE9DF949A2BFFBBF02079B9A88FD589385E33EE5CB99F5BC2723EF2791CE6879
              D0C8EE5A3BCFE499DC6202AB6E347EA18555C2040CF67BBA99F1F58EECA875DE
              CAF0898BF4C1981F8C1FF7096D378032C16427C856A8A24871952D539C0984BD
              47797264E6D6883A0892EBFFD94C93DB788D4E1E3D6884BEE9266AFDA87214BF
              5E998D6F6FA15C994C4ABA66010355A162D68EBD07F5F81BA36DCA32F277EFDD
              B0D0E499BCC602C95893D2EAC91675526439B8547A820E2669D8E8A94B3474E2
              4F260FD459A3B13962C0545A65489F56752BE657C7BB6A7862A042E7858EE90B
              D6AAC7C753F4D7C9130660CDD0E17D9B75950946C95DAAB652C7C6A867C75B54
              B352910B3D1A91E7C6CC58A6FE23E6E8AF84A32697D9146B4E215A3067891BCD
              BEA1B17AEB89262A5F3C5F44D276A98D7E77E46C8D9EB5CAD0BEDBE4749B647D
              78F2966F6480472EDD5ABD889E6D7B9322F9DF41A3E578B4CF97DA62D21F1145
              48943302525E931A288311146B95CBAF973BDE6AD25D0527B231D0BC641BD487
              7B8DD4B184D35628FC63DB6A9367B29CCD939B315DAC3EECDA5CF1B9221F549D
              CBC77D078ED884C83BFE38664CFBCB4C54F70F464B77A549FD64AC2859729994
              6685F47CBB9B8D4529F2DFF14993C26DE017B335CE6CB470FA6C8C4E9F4AB01B
              6A64BF2A4E4FB7ACA36A650B9ECB9A88FDCE660A033E9F6D726A6E2492CA6CA8
              60E84C935E59D2C7EAE13BABAB51046F28B17DCF01F51B3E438BD6EC32F3ED19
              E342754A31A9D329E6D461F57EF26E552B532062DF5B520D9FB3F437BD32C8E4
              B13E1367D6DC63866613C8AB33AA6B76E7AA5E3883FEFC638FB267CFAEDAB56B
              27554C8AAE85044C92EAE09B592BF4F6FF8DD11133219F314118158AE7D1BB3D
              3A99BD7CE3524448A43C74FCC449BD356C86262F586F3B395B3DA5C978B59984
              A526354AEA917B6B295D9AD49142CE45DB491AA4D73F99AAB976F79704A3C5F9
              D3484BD90CBD67D4B26105B56D52DD82E88B1614C1376C365B7B751BF8AD36EF
              3D66764B3924E3C061727E5DA5F8EC19D4C3080F81DE333518AC9BBEE017BD63
              34577F1E3D657D954855C14E47050C8D2FB46FA0E2F13982D18CA0D46194931A
              F4D55C8D9CBCCC4CD3321AD9034A67CCBC3157981C85B756B27D3A55505A12DC
              4A26CE59A581A3E75A25C0F1437B159B3AAD0998CCA4A2B933A9AB019205F364
              0B6E8302581BFBAD7F35FD67ADDEB45F7F9D91B25C995A0DAA15577563390A60
              B5412F7ACFFE436253855F771D3680324619D2A4D28D65F39B84DEA583DE167F
              57F8DBF67D1A694CBF13A6CED3D5D9B29B7718A74DCBA6AB5BE7F66AD8B0A1BF
              AB0B7979A46B9A366D9A067CFA8DD2E528AE7C854B9A75F6AC4A15C8A10C2777
              E89BD1230CA83E63533AB569D346AD5AB5F26B9B430226A160DEBC797ABCCB4B
              AA59A7BE8E1F39AC554BE66BF0E08F54AC58312E7BFAD8F3C7617D6A4C65CB36
              ECD6C953525A6306AC5C3297DA36AEA6AB32A6F31CED5B77EDD788C94BB566D3
              EF661BCD3376EBC8EA65F2AA4DE3AA06387B5B78F0BDCCC5AB361BF0B1C424EC
              3F6C4E9D55BE1C19755FC34AAA5C3A5E5EF877D610317EF6724D9AB756FB0E9D
              308292A131FB956AD9A8922A958A97D7FE1D3E9AA0A1131668F1DA9D4A38954A
              19CC7EC6008DFB1A56347DDA3BC2E0B9EF8D60A2EF7E5CAFA163BFD71633A6CF
              9A6C19D52B9630F35655952D96E7DC5B3DF1FDD8F1E35AB272A34E9C3C6D92B2
              A73326FCAB451AA36BAEB92660D90242C5B8852B3698BC8847754D968C2A5FAA
              50A89AE1F77A57AE5EAB56EDFEA9AE2F76537C9E1C9A346EB4E6CF9FAFB163C7
              DA404FBF5718C202E7CE9DABD1A3478B747FB1E932AB53E72ED61A94257D8CDA
              B66EA92A55AAE8861B6ED00F3FFCA051A34609E099376F5EBFB53824609249A9
              65CB96CA9933A77AF7EE2D729E3569D2C412FBFAEBAFFB8DB8702EE8C8B1042D
              5FBFDD4C54A794DEE4962C5734B7CD3119CE6DBE9CB6ED3F7844AB7FDD655C1A
              D2282E2695CA16CDE5798DE4F9FCC2317CFD963DF674E17CD9943FE7D5F6BB97
              FEF08E77FD7ED08049A968FE1C6601F696B9F7DC7795F0D729AD58BFD304D41D
              37DBBFC6996D5073294DEA58938A32E6DCDB3CF5FD975F7E51A767BA6BFDA6ED
              363063C8FB7D55B746554FD1E82366E5CA951A38D0A4CD397346E4C1246519D9
              1458A3B265F38E16F6A79F7ED2175F7C61C0E4214B7AB366CD74D34D37D9EF91
              FE07C0D4B97367F12EA18564E200AA112346A864C9929CF2CCB17EFD7A1BB43B
              6BD62CAD5DBB566FBFFDB6A56DF6ECD97AECB1C7B470E1429B8B131E54AC5851
              6FBEF9A66EBBED367B8F3FFE84044C92FBB15AB56AFAE8A38F54BD7A754B47FF
              FEFD3575AAD9B77BE244BFE6D3B285BB3F21E30092FCCC99333565CA14BBC816
              2F5EDCAAD7BD14B11D32E6BA8A43CE81F1E3C7EBC71F7FB46083491AE91F1352
              C81B168006ECDAB54B0F3DF49072E5CAA552A54A593079F3CD37AB68D1A201A8
              2DF4456ED8B0419F7FFEB9CD274944F3A2458BB471E346FBBEAFBEDA1B822079
              7D9B376FAE4C9932A960C182DAB16387D6AD5B27FA7538654249696F606CDE71
              C71D7AE59557ACF28A31DAA54B170D1B364C356AD44869B161FDDCBBEFBE6BC1
              E4FBEFBF6FDBF9F1C71FEBEBAFBFD677DF7D677FF387717BF7DD77AB5DBB76FC
              F4CB1112304987AD5FBFBE2510700125C3870F17C744032663626238E5F90389
              81098BC11CAC04A7C1662ABB6DBCF0C20B4A4848B026220486575F7D55AD5BB7
              0E765342561F807AC992259A346992051D2CC477DE79A74D1C1DB24605A1624C
              293B77EEB40084944F41A832E855346DDA546C7587A48FC5A552A54ABAFFFEFB
              83DE8E60543874E850E38A34D8F6635FEE55FCDFA365BE7EE289278446B26BD7
              AEC1607750EA60D38AAA55ABDAF77AE38D370AED162083B90AA121288D086025
              AC3FAFBDF69A66CF9E2DF2F30290D1D001267D8AAC00561F92A2DF79E71D2B10
              F8C024BF51E88C1B372EB13D682401D96DDBB64D3C77B95F420226B76FDFAE5A
              B56A09E2585821E2D34F3FD5575F7D652522721472CEAB07667D165A80F39A35
              6BACD62E77EEDC9E241710B974E952A18986403A2FF46356E177341CF8B000A8
              011D000E0488E79F7F5EF7DC738F67C9478383B98CAD04F1D1F1C2C274A19785
              20C8A2D4BE7D7B6B42BAD03D5E39D7A953276B5D2853A68C58A40B152AA45B6E
              B9C52BE4254907DA3A0440E66D2F994731DF63B6DFBB77AF8A1429A2AD5BB75A
              0DE5030F3C204CFA493225422E4223E0984F68025C62E646131B212424AB99EF
              BDF79ED54CF2C98368263FF9E413EB2BC96F0EE6ACA79F7E5A004A7EFBE30809
              986471C51CF4C61B6FA871E3C6968E679F7D5668313EFBEC33FBDBCB7F88BAE2
              45E7C891C36A6301565E0593E7BFC7471F7DD43AAFFBFC39CEBFEEC5DF9856F0
              63A95BB7AEDD56AF458B16D6ACC420F722BDD0F4DC73CF897E8EA6038B439E3C
              DE0BD0804E7CBF7FFDF5576BEA658BB90E1D3AC8676DE1BA970EAC09589530F1
              621EDDB3678FBA75EBE657BFAB70E5578F1E3DEC020D08F19AB2E3E79F7FB6E6
              4E764343081C3972A40DD408D777919C76A1CC408067DF6EB4E8BD7AF5123EA2
              08056C299A9CB2C2FD5E1297730C1830C06A26C1183EF70CB4CD041D952B574E
              DF7FFFBDB516A1CCF3A76014123009C14CBADBB66D131A9A43870ED94FCC07F7
              DE7B6FB8BFB3CB6E1F8EDC4CC6484A48BBF8E54403985CB16285EDC4FDFAF54B
              F495BD6C66464801BCEF65CB96D9603304A6DB6FBF5D984823A4F9C96A269A68
              A47F04440E4C4A5E0593DF7EFBAD756C67D1C27C069D83060D9217DD56D0C2B2
              002328B048F5EDDBD7FAD8C18364759008BB79FFFEFD36950C7DBA5EBD7A11D6
              FAA49B8BB584F748546FE5CA956D842FE3176DA517347728AE505C4027423D96
              C0975E7A498D1A354A9A31117875C1820542D8012C23C893FE081F67DE23BE91
              F463B4CFACC3580A71376397407F911A123049E3F121033C1288C14BFEC73FFE
              6123BBBDEA5B05CDE71F9B366DB2FE55D1A099FCEDB7DFC42254B66C59F1DECF
              E785D77F33D0918AE9EBBB77EFD68409138499D06B7423281139884F74EDDAB5
              2D60265D058972BD46EBF9F4B008A3011833668CE8E7E75F8FF4DF1D3B76B420
              99285068412824B08E83DF5E3D10860816C5DFDB6BEBD39C397384499BE85F1F
              B0C8972F9F009877DD7557C4BF52E623FA2B6E0AF8F6E25AD4A0418388A7EB42
              04F02E070F1E6CAD5FD08AB2EAC9279F146E2958883EFCF043EBDF9D3F7F7E3D
              FEF8E322C5D585CA49E9B99081491ABC6AD52AB1C8C6C5C589D440A8D9391F2D
              07000BD3119A49341A5EA57BDFBE7DC24C8403349F7474AFD2FA77746DD9B2C5
              4AFD5CC7E48D8B0392A1D716A7193366D89414046B201DD3BFD1C4C6C7C77B2E
              4B0316164C68BEFE8C9050A74E1D6126C49CC4BBF6D28199AC7BF7EE025462EA
              C5CF9D60237E7B89CE736941B375EBADB70A21019FD173AF79E13BD61240639B
              366DECCE28D08B7FDD90214344608E17688406C62A9F68D4F9F4EA712E9D7C3F
              9FDE0B9DF3172F420A26FD4544A49683D33392129334402B52E948AADDA4817A
              EAA9A76CDAA73E7DFA8828509CA0C9F585C92CA967BD7A6DF1E2C5C29D63B689
              30C4BCE4253A5970F1C9612122F80669194D005A59AFB972D0B701CDBC43C015
              A937F09F4433E9453337EE4868AC500000A0D178E0C64084AC97FAF0B9B4E043
              8859F4ADB7DEB22991CEBDE685EF68EED06611FCCA7C4CE6095CAF089444C9E3
              051A1D0DC1E1800393C1E1F37FD582FA19B53351ED445411BA5FB87061615EF8
              AF1B3DF083DC7448F60048D26A403B5A394C0FFE56B3872BBB30B1B03B01E963
              6823918598CC102208DAE09C578E2FBFFCD23AB863CE47CB3179F2641B318846
              DA6B11DD4434A3A95BBD7AB5D5BAA26526C08C4C155E799FE7D3C1F8C5E78AF3
              98F27DA6517E7BF14020C2B282AF9917E9F3D144100E4092791A9733DF79F7E9
              3870A91C7060F25239E5C7FB30FF117884E9931D2588A802703DF2C8237EAC25
              3C8A220D10810968710852A0552CBAF8D31161C76FAF1FCB972F17266D266B68
              05643DFCF0C3D674C66FAF1E68DE319F61E62602D88B74222C91FA08F311E0CA
              EBA0C38BEFD0D1E438E03870F91C7060F2F27998EC12D0DA107483662343860C
              E2378092A0856417E61E087B0E9092024089F997C656A85041356BD6E4ABA70F
              22D8A1194D5DB4080E9E7EA18E38C701C701C781BFE18003937FC31877DA71C0
              71C071C071C071C071C071C071E0E21C7060F2E23C0AE81D98C788E4263F141A
              9C8056E60A0F09074E9C38218234F01FF4F94D86A42141AA14F336FB3513295A
              A0408120D5EAAA090607B0A8B0CF317EA2C1A82FDCEA602CE3DBCEEE65D75D77
              5DB835CFB5C77120910358C3C82EC1AE465840132F04E88B03930162ECA516EB
              C0E4A5722A72EF630172603272DF9F6BF97F38E0C0E4091B28E9C0E47FFA84FB
              169E1C7060323CDF4BC05AE5C064C0581B36053B301936AFC235E4323940B47E
              CF9E3D15ED9A4976FD61C798CB64A77BDC7120601C70603260AC0DCF821D980C
              CFF7E2CF56451B982479376980C8568046D69FBC7465859603ECE74B6E49764C
              096D4B42533B63991D447059295FBE7C681AE16A751CB8040E90F3B64A952A62
              1E7666EE4B6058A4DFE20393C3870F17E972229D1ED7FEFFE500E991F0B36201
              8A069F4972F33DF8E08322213FBEC0FFCB116F9C21C93351EA070E1CF0064197
              40C5E6CD9B458AAB952B575EC2DDDEBB053049BE5C72C47A75A38960BE35B653
              66971692A707B3DE68A88B84FB249F274F6A303651703E9321EE55804992774F
              9B364DA48C0971735CF501E2005B85B2D560A54A95025443F8144B2A249CBE01
              59EC06133E2DF36F4B48F4CC6E460067FF961CBEA5B1F8972A554A6CC117BEAD
              0C5CCBC895DBA85123B56AD54AEC751CB89AA2A364C0396B20425974501C3C2A
              01E808BC3367CE149F81AED981C94073F822E5339048765CAF5E3DEBD87D91DB
              23FA325BCEB19D22DBB241774413938CC6B300B395244EFB6C41978C4723FA56
              3458E4508D682292683CC12803070ED4BC79F3142DFD9931CCC2449F4E82359E
              BDC45EEC6C3491295326AD5AB5CAB374068330C6CCA04183845BCCCB2FBF2CF7
              CFBF1C60CB53769B634723C6AD7F4BFFDFD21C98FC5F9E04FDCCFCF9F3F5C927
              9FD84115F4CA835821E65E26623A77342D462C3CCD9B37B76E0CC1303704F195
              467555C3860D135BA12E59B224AAF9E088771C482907D8096ED3A64D42304B69
              19EEB9F0E0800393E1F11EB461C306B1E56098342720CDC077E3F6DB6F17E65E
              B41B01A9240C0B053803A0C3B069AE4997C10104C001030668E9D2A597518A7B
              D471203A398066F299679EB10122A3478F8E4E2678886A07263DF432C39D949D
              3B77AA74E9D2DABE7DBBD89F3BDCDBEBDAE7389014071C984C8A3BEE9AE340D2
              1C004C76E9D2459B4D5097039349F32A12AE3A3019096FC9236D245501012868
              61093AF208598E8C28E580039351FAE21DD97EE18003937E6163D814E2C064D8
              BC0AEF37C48149EFBFE368A2D081C9687ADB8E567F73C081497F7334B4E53930
              195AFE4755ED0E4C46D5EBF63CB10E4C7AFE153B0203C801072603C8DC1014ED
              C06408981EAD553A3019AD6FDE9B743B30E9CDF7EAA80A0E071C980C0E9F8355
              8B0393C1E2B4AB470E4CBA4EE0250E3830E9A5B7E9680936071C980C36C7035B
              9F039381E5AF2BFD1C0E3830790E33DCD788E780039311FF0A1D0121E4800393
              21647E00AA766032004C75455E98030E4C5E982FEE6C6472C081C9C87C6FAED5
              E1C1010726C3E33DF8AB150E4CFA8B93AE9C8B72C081C98BB2C8DD10411CF8E8
              A38FD4B76F5FAD5BB72E825AED9AEA38101E1C004C3EFDF4D362079CAFBFFE3A
              3C1AE55A91620E38309962D6B90793CB01072693CB31777F387360DAB4691A3F
              7EBCD805279CDBE9DAE638108E1C004C3EF5D453DA6C92963B30198E6F28796D
              72603279FC72775F0607366EDC28B615DCB66D9B5CD2F2CB60A47B342C3870E8
              D021FDF9E79FCA9B376F58B4C735C27120D238F0E38F3FDA6D846FBAE9A6486B
              BA6BEF791C7060F23C86B89F81E3001268FDFAF5B570E14265CD9A357015B992
              1D071C071C071C07C29E03A74F9FB66D8C8989B19FEE4FE472C081C9C87D7711
              D7F2E3C78F6BC99225AA52A58A52A74E1D71ED770D761CF01707F6EDDB675365
              55AE5C59575C7185BF8A75E5380E380E380E8484030E4C8684EDAE52C701C781
              6073008DF8679F7DA6071F7C5065CB96D5575F7DA54C9932292526B62FBFFC52
              7BF6ECD1638F3D66C93872E488DE78E30DB1EF7CDBB66D2F5AE6F4E9D3F5CA2B
              AF68EAD4A94A93268D2DC3FD711C08770E1C3E7C586FBEF9A6AEBDF65AFDF39F
              FF142E4B8CA3C71F7F3CD942D1CE9D3BF5FAEBAFEB85175E508E1C3974ECD831
              EB7FBC7AF56A9D397346F7DD779F1A366CA854A952259B2D282E686BF6ECD993
              FDAC7B20651C706032657C734F390E380E441807860C19A28E1D3BAA75EBD622
              121B20C8A2F8E4934F2A5DBA74961ACC6E7FFDF597D2A64DAB93274FEAD4A953
              4A9F3EBDBDC6F7D8D858252424E8BBEFBED3DEBD7BF5D0430FD96B3D7BF61401
              39B56BD7B6BF7BF4E861174116354EF8CAE73BE7264F9EAC4E9D3A093F625F99
              804ABEFBEAA17EB4969CE3397ED33E165734FBCE340857DC114C0ED0E7AFBFFE
              7A3B2E66CC98218428C6D4A4499394214306F9FA2A7DDCD7E78F1E3D6AC710FD
              D6D7B7196308631F7CF0819E78E20965CB964DFBF7EF57DDBA7555AE5C3965CE
              9C59B367CFD698316354A850214B22E550073FCE2D8771C06FCA64AC520F013D
              086C6FBDF596AD9B67DC11580E38301958FE4674E90B162C10E6B85B6FBDD5D2
              C1E046A3935C7F47A44CA25E4B9428A162C58AD9B2962E5DAA5F7EF945274E9C
              B09345AD5AB5B479F3662D5EBC5877DC71879820EC8DEE8FE3809F38F0E1871F
              6AE4C89102900D1B364C03070EB4BEBBFC2E58B0A05AB56AA55EBD7AC9D74FBB
              77EF6E17CBBBEFBE5B681B9F7DF6590B200172152B56D466D35FFBF4E9635B77
              E79D776AE5CA95FAF4D34F952F5F3EE5C9934713264C108B25809005B35EBD7A
              EADFBFBFD06A5E79E595DAB56B97E6CD9BA7175F7CD1824A165022C367CE9CA9
              59B366E9B7DF7E13F751C6C18307D5A54B171BF0C3820D58BDE1861B6CDDEE8F
              E340B038B07BF76EDD76DB6D42E357B56A55D1EF3B74E860B58BE3C68DD37BEF
              BDA79F7FFE59C3870F177D1430B768D122C5C7C7DBB1C5BCCFB53FFEF8432D5B
              B6D4D8B163ADA693310398441803AC021AD150722F6BC1CB2FBF6CD70BC62682
              1BC2D8C489132D007DE49147F4F9E79F5B4B01C093F6B469D3466BD7AED53DF7
              DC63C739E5058B47D15A8F0393D1FAE62F81EE871F7E58489CA3468D121307A0
              92C5164079098FFFD72DCF3FFFBC6EBEF966D532A0910BE41743BB933B776EBB
              40B22867CC98D12EF698519840B8CF1D8E03FEE2C0FBEFBFAFE5CB975BD3368B
              0BDA135F5601FA22409385F2D5575F155ACC03070ED8AC033CC3F566CD9A5970
              874613E088FFEF37DF7C639BF7C30F3FD8C513D0F7E8A38FAA4E9D3A6AD2A489
              00A96854D09C0014299F056EC78E1D9A33678E56AC58A1A143870AC16DCA9429
              5663CA39DA8AC694C5B977EFDE36171FC25CD1A245C578C4645FA040015BB7FB
              E338102C0E2000DD75D75DA28F23E43CF7DC73160C926F1525C0175F7C21801E
              F7D5AC59538CA5EBAEBBCE2A0910A81084E8D72FBDF492F59DBFFFFEFBAD969F
              7E0D98443389B076D55557094D23E390F2100411E088FE7EEDB5D7ACF0D5AF5F
              3F75EBD64D8D1A3512F5021E711B018022C8315EB8CE38A4CC60F1285AEB7160
              325ADFFC25D08D4666CD9A35AA56AD9A060D1A643FBB76ED6A35262D5AB4D0D5
              575F2D163D2611244DBEA35D217718A68611234658CD2380112D648D1A354434
              3755F37C5C5C9C0095CF3CF38CD5E660F663D2C0978CC9810960D9B26562C221
              50013322660F406791224554BE7C79BB10A3F969DEBCB9FDCDAE24947BEE73D4
              E70EC701FA27C0104D060B1B40926030406283060DAC96055087099CFE461FC3
              0C8E0692BEDCAE5D3BAB35A7BF22FC00E8D0ACA07947BB890FD8E0C183AD690E
              6D239A4EFC31190BDCC3228A8693F2E8CBB4012D245A17C60F5ACAB7DF7E5B5B
              B76EB5BE942CA22C842C96BFFFFEBBE8D3A4D6428B83A0E7DEA8E340B0390048
              6CDAB4A9D504D26F7107217FF0B7DF7E9BE8F281F692BEED0376CCFB9C438BC9
              FA8080C438A3CF57AF5EDDF675C61A6092F1C23AC0F8634EC7BF190039DB98BC
              19ABDBB76FB7AE2A98DB517460CAC66F9375843186E99D71C37D0887684B83CD
              A368ADCF81C9687DF397403783B954A95276B0A355012462EA43DA6CDFBEBD2A
              55AA648319B88649C3E7F7C2332C9A4C1448A598333043003A018654CDC2CCCE
              07B7DF7EBBD5B4609A403A65C11D3D7AB46A190D262671FCC490669182F175A3
              6C260BB4A438681350C16402A0F4015E4C213CC7228E840AB8A44E77443707D0
              64B088D117091840EB8170C4415F4233C842461F47AB82361141084089769045
              11FF30EE61219D3F7FBEF593C487128D3D420EC2170B1FDA1134902C929C479B
              CF3840638920B565CB16A1CD04A4322E583CE7CE9D6B0310306FF31D53379A1A
              802E60F2FBEFBF577C7CBC00BF1CD1FD361DF5A1E00002137D121087BF2F7D1C
              B72734F58C1FFA36C20E7D158D3B8A0194112806183BEBD7AF170A03EE07F095
              2953C68E83E2C58B5B972A2C60CCFDCCE1086C08578C075C5218239483BB0740
              927186761F810EB3366E1FB4014049F0CD030F3C6083E218DB6E0D087C6F7160
              32F03C8ED81AD04CB268FDF4D34FD6CF0C5F187C600068F8BE001657AD5A65A3
              EE30DFA129C4CC97254B167DFCF1C7AA650021608F410EF84353E30B58E093C5
              12ED107E937CA77C2204916801A198BB916459F8993C905A9920009344CE12B0
              C0C28FB40C9844DB83298436F21C1A2816774C9A11FB125CC3FDC601B41498C2
              E8332C66B85ED02759105990F864910434D297F0AB44DB41A4297E5A2C62B86A
              A02D0490A26DE73C5A49164ECAA71FB278311ED0AEB3B8710E30D9B97367BDF3
              CE3BD61FB264C992367A9536B0E012C9CA82C7B3F467C61500964857FA34E012
              E10B5F35B4AB084E8C37BF31C715E43870091C409B88D61D7F62E679FA2F89FB
              018898A5D19C33DFE33B8C3692B998FE4CD10861B88EA0C5443B8926129711E6
              727C8C01802813B81FD008D044C3899B08F75037E5302670054153CF7934A398
              CDD192325E2903AB19F33FE30C4507E5F1AC3B02C701072603C7DB882F19ADE1
              BDF7DE6BD3A8A015442AC5E91910C7A28A5F23A91D586C9156910E19D0686370
              A4E61C260A9CA271AAA60C40248C61116791051CA2E544B3932B572EABE9044C
              62D2C01F8DF200B44C4E004D4C2CA473616262A2615F64C022A0119321D22B8B
              3A0B338B3E8B32410CD4E98EE8E600820E820B9A46B67243E3C182886605AD25
              DA0F1628FA178B125A1434DCF4A5C2850B8BFECF3504151636CAA2CFC255A25A
              290F2D3A1A763EB94EAA20EA423B898F23BBE660C64688F2693EF19FA46D944D
              7B5894F1E7442BCA35A2621937B48D7258840968736012CEBB23981CA0CF320E
              72E6CC69730513A009D8CB9F3FBF4D138412004B158A08DA0530E41EBEA3B164
              CEA7AFF39DB2180B0049C61842195626C612E38F9DA5180F3C8B169331C777FC
              90199708603CCB39C61EE38DF1019064CC700EEB14E38E4FEE7347E038E0C064
              E0781BF125A32569DCB8B18D88431A441B8206B174E9D2D6D486890109113087
              F610E006C0440B89490FFF48348A98ABD12A6236C7FC0D63009098C5D1BE000A
              99A05830A9072D11E6400024C0159338264900289A192606CA47F2E53C130A93
              14DA21002C1A252451C02D6096F651A73B1C07FE8E03A4126171A25FFDDD3DA1
              3C8FA614D321E3AB42850A368F250B6628DBE4EA761C389703F802A38D678E47
              C170EE35F7DDFB1C7060D2FBEF38C514020ED1A0A0C941C2440B88C90D4D1F40
              13F306266F163826124C886861007768278976256718600EAD0A138C4F938389
              90E7D0E20024913C91202907F306CFE21F094844EB88748BD9028D250016404B
              4005A6711655B43A8056CCEFBEE7482D81A44C3D2966827B302A3880890DED08
              C24B3812CCB8C244C8279A5404AA706CA76B53F472006D21FEC36807A3970BD1
              4BB90393D1FBEE534C39660D524390370F87EB1417948C0771F6466B89091013
              22CEDC682F935184BBD571C071C071C071C071C07120001C706032004CF57A91
              F8BAE00B864F171AC160D08B46863AF1B741D389F63118F5BA3A1C071C071C07
              1C071C071C0792E680039349F3C75D751C701C701C701C701C701C701C701C48
              82030E4C26C11C77C971C071C071C071C071C071C071C07120690EFC3F18B195
              19A26FF61E0000000049454E44AE426082}
          end
          object chkYaNyeri: TCheckBox
            Left = 160
            Top = 16
            Width = 321
            Height = 17
            Caption = 'YA (Centang pada gambar atau nomor yang sesuai)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object chkTIDAKNYERI: TCheckBox
            Left = 464
            Top = 16
            Width = 145
            Height = 17
            Caption = 'TIDAK NYERI'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object grpMENUNYERI: TGroupBox
            Left = 1080
            Top = 16
            Width = 321
            Height = 57
            Caption = 'MENU'
            TabOrder = 2
            object btnSIMPANNYERI: TButton
              Left = 16
              Top = 16
              Width = 81
              Height = 25
              Caption = 'SIMPAN'
              TabOrder = 0
            end
            object btnUBAHNYERI: TButton
              Left = 112
              Top = 16
              Width = 81
              Height = 25
              Caption = 'UBAH'
              TabOrder = 1
            end
            object btnHAPUSNYERI: TButton
              Left = 216
              Top = 16
              Width = 81
              Height = 25
              Caption = 'HAPUS'
              TabOrder = 2
            end
          end
          object rb0: TRadioButton
            Left = 160
            Top = 136
            Width = 33
            Height = 17
            Caption = '0'
            TabOrder = 3
          end
          object rb1: TRadioButton
            Left = 224
            Top = 136
            Width = 33
            Height = 17
            Caption = '1'
            TabOrder = 4
          end
          object rb2: TRadioButton
            Left = 288
            Top = 136
            Width = 33
            Height = 17
            Caption = '2'
            TabOrder = 5
          end
          object rb3: TRadioButton
            Left = 352
            Top = 136
            Width = 33
            Height = 17
            Caption = '3'
            TabOrder = 6
          end
          object rb4: TRadioButton
            Left = 408
            Top = 136
            Width = 33
            Height = 17
            Caption = '4'
            TabOrder = 7
          end
          object rb5: TRadioButton
            Left = 464
            Top = 136
            Width = 33
            Height = 17
            Caption = '5'
            TabOrder = 8
          end
          object rb6: TRadioButton
            Left = 528
            Top = 136
            Width = 33
            Height = 17
            Caption = '6'
            TabOrder = 9
          end
          object rb7: TRadioButton
            Left = 584
            Top = 136
            Width = 33
            Height = 17
            Caption = '7'
            TabOrder = 10
          end
          object rb8: TRadioButton
            Left = 648
            Top = 136
            Width = 33
            Height = 17
            Caption = '8'
            TabOrder = 11
          end
          object rb9: TRadioButton
            Left = 704
            Top = 136
            Width = 33
            Height = 17
            Caption = '9'
            TabOrder = 12
          end
          object rb10: TRadioButton
            Left = 760
            Top = 136
            Width = 33
            Height = 17
            Caption = '10'
            TabOrder = 13
          end
        end
        object grpNYERI: TGroupBox
          Left = 0
          Top = 184
          Width = 1081
          Height = 57
          Caption = 'INTENSITAS NYERI'
          Color = 16577248
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          object lblLokasi: TLabel
            Left = 128
            Top = 32
            Width = 64
            Height = 13
            Caption = 'Lokasi Nyeri :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblsejak: TLabel
            Left = 632
            Top = 32
            Width = 66
            Height = 13
            Caption = 'Sejak Kapan :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object chktdknyeri: TCheckBox
            Left = 128
            Top = 8
            Width = 105
            Height = 17
            Caption = 'Tidak Nyeri (0)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object chkNYERIRINGAN: TCheckBox
            Left = 280
            Top = 8
            Width = 129
            Height = 17
            Caption = 'Nyeri Ringan (1-3)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object chkNYERIBERAT: TCheckBox
            Left = 632
            Top = 8
            Width = 129
            Height = 17
            Caption = 'Nyeri Berat (7-9)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object chkNYERISEDANG: TCheckBox
            Left = 456
            Top = 8
            Width = 129
            Height = 17
            Caption = 'Nyeri Sedang (4-6)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object chkNYERISANGAT: TCheckBox
            Left = 792
            Top = 8
            Width = 161
            Height = 17
            Caption = 'Nyeri Sangat Berat (10)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object edtLOKASINYERI: TEdit
            Left = 216
            Top = 32
            Width = 369
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            Text = 'edtLOKASINYERI'
          end
          object edtsejak: TEdit
            Left = 720
            Top = 32
            Width = 281
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            Text = 'edtsejak'
          end
        end
        object grpPENILAIANNYERI: TGroupBox
          Left = 0
          Top = 360
          Width = 1081
          Height = 161
          Caption = 'PENILAIAN NYERI ANAK <6 TAHUN (SKALA FLACC)  '
          Color = 16577248
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 2
          object lblpengkajian: TLabel
            Left = 24
            Top = 16
            Width = 63
            Height = 13
            Caption = 'Pengkajian'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl0: TLabel
            Left = 184
            Top = 16
            Width = 8
            Height = 16
            Caption = '0'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl01: TLabel
            Left = 416
            Top = 16
            Width = 8
            Height = 16
            Caption = '1'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl02: TLabel
            Left = 712
            Top = 16
            Width = 8
            Height = 16
            Caption = '2'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblnilai: TLabel
            Left = 912
            Top = 16
            Width = 23
            Height = 13
            Caption = 'Nilai'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblwajah: TLabel
            Left = 40
            Top = 40
            Width = 31
            Height = 13
            Caption = 'Wajah'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblkaki: TLabel
            Left = 40
            Top = 64
            Width = 19
            Height = 13
            Caption = 'Kaki'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblaktifitas: TLabel
            Left = 40
            Top = 88
            Width = 39
            Height = 13
            Caption = 'Aktifitas'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblmenangis: TLabel
            Left = 32
            Top = 112
            Width = 45
            Height = 13
            Caption = 'Menangis'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblbersuara: TLabel
            Left = 32
            Top = 136
            Width = 43
            Height = 13
            Caption = 'Bersuara'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbltersenyum: TLabel
            Left = 112
            Top = 40
            Width = 179
            Height = 13
            Caption = 'Tersenyum/tidak ada ekspresi khusus'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblgerakan: TLabel
            Left = 112
            Top = 64
            Width = 120
            Height = 13
            Caption = 'Gerakan normal/relaksasi'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblterkadang: TLabel
            Left = 352
            Top = 40
            Width = 151
            Height = 13
            Caption = 'Terkadang meringis/menarik diri'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 608
            Top = 40
            Width = 255
            Height = 13
            Caption = 'Sering menggertakan dagu dan mengatupkan rahang'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbltidaktenang: TLabel
            Left = 352
            Top = 64
            Width = 143
            Height = 13
            Caption = 'Gerakan Tidak tenang/tegang'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblkakidibuat: TLabel
            Left = 608
            Top = 64
            Width = 163
            Height = 13
            Caption = 'Kaki dibuat menenang/menarik diri'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbltidur: TLabel
            Left = 112
            Top = 88
            Width = 177
            Height = 13
            Caption = 'Tidur, posisi normal, mudah bergerak'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblgerakanmenggeliat: TLabel
            Left = 352
            Top = 88
            Width = 171
            Height = 13
            Caption = 'Gerakan menggeliat, berguling kaku'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblmelengkung: TLabel
            Left = 608
            Top = 88
            Width = 191
            Height = 13
            Caption = 'Melengkung punggung/kaku/mengentak'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbltidakmenangis: TLabel
            Left = 112
            Top = 112
            Width = 171
            Height = 13
            Caption = 'Tidak menangis (bangun tidur/tidur)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblmengerang: TLabel
            Left = 352
            Top = 112
            Width = 108
            Height = 13
            Caption = 'Mengerang, merengek'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblmenangisterus: TLabel
            Left = 608
            Top = 112
            Width = 203
            Height = 13
            Caption = 'Menangis terus-menerus, terisak, menjerit'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblbersuaranormal: TLabel
            Left = 112
            Top = 136
            Width = 119
            Height = 13
            Caption = 'Bersuara normal, tenang'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 352
            Top = 136
            Width = 212
            Height = 13
            Caption = 'Tenang bila dipeluk, digendong/diajak bicara'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 608
            Top = 136
            Width = 120
            Height = 13
            Caption = 'Sulit untuk menenangkan'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object cbbwajah: TComboBox
            Left = 896
            Top = 32
            Width = 105
            Height = 21
            ItemHeight = 13
            TabOrder = 0
            Text = 'cbbwajah'
            Items.Strings = (
              '0'
              '1'
              '2')
          end
          object cbbkaki: TComboBox
            Left = 896
            Top = 56
            Width = 105
            Height = 21
            ItemHeight = 13
            TabOrder = 1
            Text = 'cbbkaki'
            Items.Strings = (
              '0'
              '1'
              '2')
          end
          object cbbaktifitas: TComboBox
            Left = 896
            Top = 80
            Width = 105
            Height = 21
            ItemHeight = 13
            TabOrder = 2
            Text = 'cbbaktifitas'
            Items.Strings = (
              '0'
              '1'
              '2')
          end
          object cbbmenangis: TComboBox
            Left = 896
            Top = 104
            Width = 105
            Height = 21
            ItemHeight = 13
            TabOrder = 3
            Text = 'cbbmenangis'
            Items.Strings = (
              '0'
              '1'
              '2')
          end
          object cbbbersuara: TComboBox
            Left = 896
            Top = 128
            Width = 105
            Height = 21
            ItemHeight = 13
            TabOrder = 4
            Text = 'cbbbersuara'
            Items.Strings = (
              '0'
              '1'
              '2')
          end
        end
        object grpskalanyeri: TGroupBox
          Left = 0
          Top = 512
          Width = 1081
          Height = 33
          Color = 16577248
          ParentColor = False
          TabOrder = 4
          object lblskala: TLabel
            Left = 32
            Top = 12
            Width = 32
            Height = 13
            Caption = 'Skala :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblnyaman: TLabel
            Left = 120
            Top = 12
            Width = 59
            Height = 13
            Caption = '0 = Nyaman'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblkurangnyaman: TLabel
            Left = 224
            Top = 12
            Width = 112
            Height = 13
            Caption = '1 - 3 = Kurang Nyaman'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblnyerisedang: TLabel
            Left = 384
            Top = 12
            Width = 100
            Height = 13
            Caption = '4 - 6 = Nyeri Sedang'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblnyeriberat: TLabel
            Left = 576
            Top = 12
            Width = 96
            Height = 13
            Caption = '7 - 10 = Nyeri Berat'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 792
            Top = 12
            Width = 69
            Height = 13
            Caption = 'TOTAL SKOR'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Edit3: TEdit
            Left = 896
            Top = 8
            Width = 105
            Height = 22
            TabOrder = 0
            Text = 'edttotalnyeri'
          end
        end
        object grpprisikojatuh: TGroupBox
          Left = 0
          Top = 544
          Width = 1081
          Height = 185
          Caption = 'PENILAIAN RISIKO JATUH (Morse Fall Scale)'
          Color = 16577248
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 5
          object lblfaktorrisiko: TLabel
            Left = 32
            Top = 20
            Width = 77
            Height = 13
            Caption = 'Faktor Risiko '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblskalarisiko: TLabel
            Left = 352
            Top = 12
            Width = 31
            Height = 13
            Caption = 'Skala'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblpoin: TLabel
            Left = 584
            Top = 12
            Width = 24
            Height = 13
            Caption = 'Poin'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label9: TLabel
            Left = 912
            Top = 12
            Width = 66
            Height = 13
            Caption = 'Skor Pasien'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblriwayatjatuh: TLabel
            Left = 32
            Top = 36
            Width = 69
            Height = 13
            Caption = 'Riwayat Jatuh'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbldiagnosis: TLabel
            Left = 32
            Top = 60
            Width = 206
            Height = 13
            Caption = 'Diagnosis Sekunder (>= 2 diagnosis medis)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblalatbantu: TLabel
            Left = 32
            Top = 84
            Width = 50
            Height = 13
            Caption = 'Alat Bantu'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblterpasang: TLabel
            Left = 32
            Top = 108
            Width = 79
            Height = 13
            Caption = 'Terpasang Infus'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblgaya: TLabel
            Left = 32
            Top = 132
            Width = 67
            Height = 13
            Caption = 'Gaya Berjalan'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblstatusmental: TLabel
            Left = 32
            Top = 156
            Width = 65
            Height = 13
            Caption = 'Status Mental'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object cbbriwayatjatuh: TComboBox
            Left = 312
            Top = 32
            Width = 497
            Height = 21
            ItemHeight = 13
            TabOrder = 0
            Text = 'cbbriwayatjatuh'
            Items.Strings = (
              'Ya                                       (25)'
              'Tidak                                   (0)')
          end
          object cbbdiagnosis: TComboBox
            Left = 312
            Top = 56
            Width = 497
            Height = 21
            ItemHeight = 13
            TabOrder = 1
            Text = 'cbbdiagnosis'
            Items.Strings = (
              'Ya                                       (15)'
              'Tidak                                   (0)')
          end
          object cbbalatbantu: TComboBox
            Left = 312
            Top = 80
            Width = 497
            Height = 21
            ItemHeight = 13
            TabOrder = 2
            Text = 'cbbalatbantu'
            Items.Strings = (
              'Perabot                                                (30)'
              'Tongkat / Alat Penopang                    (15)'
              'Tidak ada / Kursi Roda / Tirah Baring (0)')
          end
          object cbbterpasanginfus: TComboBox
            Left = 312
            Top = 104
            Width = 497
            Height = 21
            ItemHeight = 13
            TabOrder = 3
            Text = 'cbbterpasanginfus'
            Items.Strings = (
              'Ya                                       (20)'
              'Tidak                                   (0)')
          end
          object cbbgayaberjalan: TComboBox
            Left = 312
            Top = 128
            Width = 497
            Height = 21
            ItemHeight = 13
            TabOrder = 4
            Text = 'cbbgayaberjalan'
            Items.Strings = (
              'Terganggu                                  (20)'
              'Lemah                                         (10)'
              'Normal/Tirah Baring/ Mobilitas    (0)')
          end
          object cbbstatusmental: TComboBox
            Left = 312
            Top = 152
            Width = 497
            Height = 21
            ItemHeight = 13
            TabOrder = 5
            Text = 'cbbstatusmental'
            Items.Strings = (
              'Sering lupa akan keterbatasan yang dimiliki    (15)'
              'Orientasi baik terhadap kemampuan diri sendiri (0)')
          end
          object Edit4: TEdit
            Left = 896
            Top = 24
            Width = 105
            Height = 21
            TabOrder = 6
            Text = 'edtriwayatjatuh'
          end
          object Edit5: TEdit
            Left = 896
            Top = 48
            Width = 105
            Height = 21
            TabOrder = 7
            Text = 'edtdiagnosis'
          end
          object Edit6: TEdit
            Left = 896
            Top = 72
            Width = 105
            Height = 21
            TabOrder = 8
            Text = 'edtalatbantu'
          end
          object Edit7: TEdit
            Left = 896
            Top = 96
            Width = 105
            Height = 21
            TabOrder = 9
            Text = 'edtterpasanginfus'
          end
          object Edit8: TEdit
            Left = 896
            Top = 120
            Width = 105
            Height = 21
            TabOrder = 10
            Text = 'edtgayaberjalan'
          end
          object Edit9: TEdit
            Left = 896
            Top = 144
            Width = 105
            Height = 21
            TabOrder = 11
            Text = 'edtstatusmental'
          end
        end
        object grpRIWAYATNYERI: TGroupBox
          Left = 1080
          Top = 184
          Width = 353
          Height = 633
          Caption = 'DAFTAR RIWAYAT PENILAIAN NYERI PASIEN'
          Color = 16577248
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 6
        end
        object GroupBox3: TGroupBox
          Left = 0
          Top = 720
          Width = 1081
          Height = 33
          Color = 16577248
          ParentColor = False
          TabOrder = 7
          object lbltotalskorrisiko: TLabel
            Left = 792
            Top = 12
            Width = 79
            Height = 13
            Caption = 'TOTAL SKOR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblskalanyeri: TLabel
            Left = 8
            Top = 12
            Width = 338
            Height = 13
            Caption = 
              '>= 45 = Risiko Tinggi; 25 - 44 = Risiko Sedang ; 0 - 24 = Risiko' +
              ' Rendah'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbljikanyeri: TLabel
            Left = 352
            Top = 12
            Width = 399
            Height = 13
            Caption = 
              'Jika risiko sedang dan risiko tinggi, maka pasang gelang : "Fall' +
              ' Risk" '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object edttotalskorrisiko: TEdit
            Left = 880
            Top = 8
            Width = 121
            Height = 22
            TabOrder = 0
            Text = 'edttotalskorrisiko'
          end
        end
        object grpintervensi: TGroupBox
          Left = 0
          Top = 752
          Width = 1081
          Height = 97
          Caption = 'INTERVENSI RISIKO JATUH'
          Color = 16577248
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 8
          object lblno: TLabel
            Left = 184
            Top = 4
            Width = 17
            Height = 13
            Caption = 'No'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblhasil: TLabel
            Left = 240
            Top = 4
            Width = 68
            Height = 13
            Caption = 'Hasil Kajian'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbltindakan: TLabel
            Left = 400
            Top = 4
            Width = 54
            Height = 13
            Caption = 'Tindakan'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblnamapetugas: TLabel
            Left = 872
            Top = 4
            Width = 83
            Height = 13
            Caption = 'Nama Petugas'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblyatidak: TLabel
            Left = 648
            Top = 4
            Width = 54
            Height = 13
            Caption = 'Ya/Tidak'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl1risiko: TLabel
            Left = 192
            Top = 20
            Width = 6
            Height = 13
            Caption = '1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbl2risiko: TLabel
            Left = 192
            Top = 44
            Width = 6
            Height = 13
            Caption = '2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbl3risiko: TLabel
            Left = 192
            Top = 68
            Width = 6
            Height = 13
            Caption = '3'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbltdkberisiko: TLabel
            Left = 240
            Top = 20
            Width = 67
            Height = 13
            Caption = 'Tidak Berisiko'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lblrisikorendah: TLabel
            Left = 240
            Top = 44
            Width = 70
            Height = 13
            Caption = 'Risiko Rendah'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lblrisikotinggi: TLabel
            Left = 240
            Top = 68
            Width = 61
            Height = 13
            Caption = 'Risiko Tinggi'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbltdkadatindakan: TLabel
            Left = 384
            Top = 20
            Width = 92
            Height = 13
            Caption = 'Tidak ada tindakan'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbledukasi: TLabel
            Left = 408
            Top = 44
            Width = 38
            Height = 13
            Caption = 'Edukasi'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lblpasangstiker: TLabel
            Left = 384
            Top = 68
            Width = 99
            Height = 13
            Caption = 'Pasang stiker kuning'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object cbbno1: TComboBox
            Left = 608
            Top = 16
            Width = 145
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 13
            ParentFont = False
            TabOrder = 0
            Text = 'cbbno1'
            Items.Strings = (
              'Ya'
              'Tidak')
          end
          object cbbno2: TComboBox
            Left = 608
            Top = 40
            Width = 145
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 13
            ParentFont = False
            TabOrder = 1
            Text = 'cbbno2'
            Items.Strings = (
              'Ya'
              'Tidak')
          end
          object cbbno3: TComboBox
            Left = 608
            Top = 64
            Width = 145
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 13
            ParentFont = False
            TabOrder = 2
            Text = 'cbbno3'
            Items.Strings = (
              'Ya'
              'Tidak')
          end
          object edtnamapetugas1: TEdit
            Left = 856
            Top = 16
            Width = 121
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            Text = 'edtnamapetugas1'
          end
          object edtnamapetugas2: TEdit
            Left = 856
            Top = 40
            Width = 121
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            Text = 'edtnamapetugas2'
          end
          object edtnamapetugas3: TEdit
            Left = 856
            Top = 64
            Width = 121
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            Text = 'edtnamapetugas3'
          end
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'HUMPTY DUMPTY'
        ImageIndex = 3
        object grphumpty: TGroupBox
          Left = 0
          Top = 0
          Width = 1433
          Height = 217
          Caption = 'PENILAIAN RISIKO JATUH PEDIATRY (Humpty Dumpty)'
          Color = 16577248
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          object lblparameter: TLabel
            Left = 64
            Top = 24
            Width = 68
            Height = 13
            Caption = 'PARAMETER'
          end
          object lblkriteriapoin: TLabel
            Left = 560
            Top = 16
            Width = 87
            Height = 13
            Caption = 'KRITERIA, POIN'
          end
          object lblskorpasienhumpty: TLabel
            Left = 864
            Top = 16
            Width = 73
            Height = 13
            Caption = 'SKOR PASIEN'
          end
          object lblusia: TLabel
            Left = 32
            Top = 48
            Width = 24
            Height = 13
            Caption = 'USIA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbljenkelhumpty: TLabel
            Left = 32
            Top = 72
            Width = 74
            Height = 13
            Caption = 'JENIS KELAMIN'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbldiaghumpty: TLabel
            Left = 32
            Top = 96
            Width = 56
            Height = 13
            Caption = 'DIAGNOSIS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblgangguan: TLabel
            Left = 32
            Top = 120
            Width = 107
            Height = 13
            Caption = 'GANGGUAN KOGNITIF'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblgangguanling: TLabel
            Left = 32
            Top = 144
            Width = 123
            Height = 13
            Caption = 'GANGGUAN LINGKUNGAN'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblrespon: TLabel
            Left = 32
            Top = 168
            Width = 309
            Height = 13
            Caption = 'RESPON TERHADAP OPERASI/OBAT PENENANG/EFEK ANESTESI'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblmedika: TLabel
            Left = 32
            Top = 192
            Width = 86
            Height = 13
            Caption = 'MEDIKAMENTOSA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object ComboBox1: TComboBox
            Left = 384
            Top = 40
            Width = 449
            Height = 21
            ItemHeight = 13
            TabOrder = 0
            Text = 'cbbhumpty1'
            Items.Strings = (
              
                'Dibawah 3 tahun                                                 ' +
                '                                     (4)'
              
                '3 - 7 tahun                                                     ' +
                '                                           (3)'
              
                '7 - 13 tahun                                                    ' +
                '                                          (2)'
              
                '13 tahun                                                        ' +
                '                                           (1)')
          end
          object ComboBox2: TComboBox
            Left = 384
            Top = 64
            Width = 449
            Height = 21
            ItemHeight = 13
            TabOrder = 1
            Text = 'cbbhumpty2'
            Items.Strings = (
              
                'Laki - laki                                                     ' +
                '                                             (2)'
              
                'Perempuan                                                       ' +
                '                                        (1)')
          end
          object ComboBox3: TComboBox
            Left = 384
            Top = 88
            Width = 449
            Height = 21
            ItemHeight = 13
            TabOrder = 2
            Text = 'cbbhumpty3'
            Items.Strings = (
              
                'Diagnosis Neurologi                                             ' +
                '                                    (4)'
              
                'Perubahan dlm Oksigenasi (Anemia,Anoreksia,Dehidrasi,Respiratori' +
                'k,Sinkop/Sakit Kepala) (3)'
              
                'Gangguan Perilaku                                               ' +
                '                                   (2)'
              
                'Diagnosis lainnya                                               ' +
                '                                      (1)')
          end
          object ComboBox4: TComboBox
            Left = 384
            Top = 112
            Width = 449
            Height = 21
            ItemHeight = 13
            TabOrder = 3
            Text = 'cbbhumpty4'
            Items.Strings = (
              
                'Tidak sadar terhadap keterbatasan                               ' +
                '                           (3)'
              
                'Lupa keterbatsan                                                ' +
                '                                      (2)'
              
                'Mengetahui kemampuan diri                                       ' +
                '                               (1)')
          end
          object ComboBox5: TComboBox
            Left = 384
            Top = 136
            Width = 449
            Height = 21
            ItemHeight = 13
            TabOrder = 4
            Text = 'cbbhumpty5'
            Items.Strings = (
              
                'Riwayat jatuh dari tempat tidur saat bayi/anak                  ' +
                '                       (4)'
              
                'Pasien menggunakan alat bantu atau box atau mebel               ' +
                '              (3)'
              
                'Pasien berada di tempat tidur                                   ' +
                '                                 (2)'
              
                'Diluar gawat darurat                                            ' +
                '                                      (1)')
          end
          object ComboBox6: TComboBox
            Left = 384
            Top = 160
            Width = 449
            Height = 21
            ItemHeight = 13
            TabOrder = 5
            Text = 'cbbhumpty6'
            Items.Strings = (
              
                'Dalam 24 jam                                                    ' +
                '                                        (3)'
              
                'Dalam 48 jam riwayat jatuh                                      ' +
                '                                  (2)'
              
                'Lebih dari 48 jam                                               ' +
                '                                         (1)')
          end
          object ComboBox7: TComboBox
            Left = 384
            Top = 184
            Width = 449
            Height = 21
            ItemHeight = 13
            TabOrder = 6
            Text = 'cbbhumpty7'
            Items.Strings = (
              
                'Bermacam-macam obat yang digunakan : obat sedatif, hipnotik,barb' +
                'iturat,fenotiazin,anti depresan,diuretika/laksans,narkotik (3)'
              
                'Pengguna salah satu obat diatas                                 ' +
                '                            (2)'
              
                'Pengobatan lain                                                 ' +
                '                                      (1)')
          end
          object Edit10: TEdit
            Left = 848
            Top = 40
            Width = 121
            Height = 21
            TabOrder = 7
            Text = 'edthumpty1'
          end
          object Edit11: TEdit
            Left = 848
            Top = 64
            Width = 121
            Height = 21
            TabOrder = 8
            Text = 'edthumpty2'
          end
          object Edit12: TEdit
            Left = 848
            Top = 88
            Width = 121
            Height = 21
            TabOrder = 9
            Text = 'edthumpty3'
          end
          object Edit13: TEdit
            Left = 848
            Top = 112
            Width = 121
            Height = 21
            TabOrder = 10
            Text = 'edthumpty4'
          end
          object Edit14: TEdit
            Left = 848
            Top = 136
            Width = 121
            Height = 21
            TabOrder = 11
            Text = 'edthumpty5'
          end
          object Edit15: TEdit
            Left = 848
            Top = 160
            Width = 121
            Height = 21
            TabOrder = 12
            Text = 'edthumpty6'
          end
          object Edit16: TEdit
            Left = 848
            Top = 184
            Width = 121
            Height = 21
            TabOrder = 13
            Text = 'edthumpty7'
          end
          object GroupBox19: TGroupBox
            Left = 0
            Top = 216
            Width = 249
            Height = 1
            Caption = 'GroupBox19'
            TabOrder = 14
          end
          object grpMENUHUMPTY: TGroupBox
            Left = 1080
            Top = 16
            Width = 321
            Height = 57
            Caption = 'MENU'
            TabOrder = 15
            object btnSIMPANHUMPTY: TButton
              Left = 16
              Top = 16
              Width = 81
              Height = 25
              Caption = 'SIMPAN'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBtnFace
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object btnUBAHHUMPTY: TButton
              Left = 112
              Top = 16
              Width = 81
              Height = 25
              Caption = 'UBAH'
              TabOrder = 1
            end
            object btnHAPUSHUMPTY: TButton
              Left = 216
              Top = 16
              Width = 81
              Height = 25
              Caption = 'HAPUS'
              TabOrder = 2
            end
          end
        end
        object grpskalahumpty: TGroupBox
          Left = 0
          Top = 216
          Width = 1081
          Height = 49
          Color = 16577248
          ParentColor = False
          TabOrder = 1
          object lblskalahumpty: TLabel
            Left = 200
            Top = 8
            Width = 394
            Height = 14
            Caption = 
              '>= 45 = Risiko Tinggi; 25 - 44 = Risiko Sedang; 0 - 24 = Risiko ' +
              'Rendah '
          end
          object lbljikahumpty: TLabel
            Left = 168
            Top = 28
            Width = 387
            Height = 13
            Caption = 
              'Jika risiko sedang dan risiko tinggi, maka pasang gelang : "Fall' +
              ' Risk" '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblskorhumpty: TLabel
            Left = 752
            Top = 20
            Width = 69
            Height = 13
            Caption = 'TOTAL SKOR'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object edtskorhumpty: TEdit
            Left = 848
            Top = 16
            Width = 121
            Height = 22
            TabOrder = 0
            Text = 'edtskorhumpty'
          end
        end
        object grpnutrisi: TGroupBox
          Left = 0
          Top = 264
          Width = 1081
          Height = 41
          Caption = 'STATUS NUTRISI (diisi oleh perawat)'
          Color = 16577248
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 2
          object lblbb: TLabel
            Left = 248
            Top = 16
            Width = 76
            Height = 13
            Caption = 'BERAT BADAN :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblKg: TLabel
            Left = 408
            Top = 24
            Width = 12
            Height = 13
            Caption = 'Kg'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblTb: TLabel
            Left = 480
            Top = 16
            Width = 79
            Height = 13
            Caption = 'TINGGI BADAN :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblcm: TLabel
            Left = 640
            Top = 24
            Width = 13
            Height = 13
            Caption = 'cm'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 712
            Top = 16
            Width = 25
            Height = 13
            Caption = 'IMT :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblkgm: TLabel
            Left = 816
            Top = 24
            Width = 30
            Height = 13
            Caption = 'Kg/m2'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edtbb: TEdit
            Left = 336
            Top = 16
            Width = 65
            Height = 21
            TabOrder = 0
            Text = 'edtbb'
          end
          object edtTb: TEdit
            Left = 568
            Top = 16
            Width = 65
            Height = 21
            TabOrder = 1
            Text = 'edtTb'
          end
          object Edit17: TEdit
            Left = 744
            Top = 16
            Width = 65
            Height = 21
            TabOrder = 2
            Text = 'edtIMT'
          end
        end
        object grppasiendewasa: TGroupBox
          Left = 0
          Top = 304
          Width = 1081
          Height = 145
          Caption = 'PASIEN DEWASA'
          Color = 16577248
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 3
          object lblindeks: TLabel
            Left = 56
            Top = 40
            Width = 147
            Height = 16
            Caption = 'Indeks Masa Tubuh (IMT)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblada: TLabel
            Left = 56
            Top = 64
            Width = 307
            Height = 16
            Caption = 'Ada penurunan berat badan yang TIDAK DIINGINKAN?'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 56
            Top = 88
            Width = 294
            Height = 16
            Caption = 'Apa asupan makanan berkurang karena tidak nafsu'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label12: TLabel
            Left = 56
            Top = 104
            Width = 267
            Height = 16
            Caption = 'makan > 5 hari dan atau disertai penyakit akut'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblparameter2: TLabel
            Left = 136
            Top = 16
            Width = 68
            Height = 13
            Caption = 'PARAMETER'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblkriteria2: TLabel
            Left = 552
            Top = 16
            Width = 87
            Height = 13
            Caption = 'KRITERIA, POIN'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblskorhumpty2: TLabel
            Left = 888
            Top = 16
            Width = 30
            Height = 13
            BiDiMode = bdLeftToRight
            Caption = 'SKOR'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentFont = False
          end
          object lbltotalskorhumpty1: TLabel
            Left = 752
            Top = 116
            Width = 69
            Height = 13
            Caption = 'TOTAL SKOR'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl1humpty: TLabel
            Left = 32
            Top = 40
            Width = 7
            Height = 16
            Caption = '1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbl2humpty: TLabel
            Left = 32
            Top = 64
            Width = 7
            Height = 16
            Caption = '2'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl3humpty: TLabel
            Left = 32
            Top = 88
            Width = 7
            Height = 16
            Caption = '3'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblnohumpty: TLabel
            Left = 24
            Top = 16
            Width = 19
            Height = 13
            Caption = 'NO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ComboBox8: TComboBox
            Left = 392
            Top = 32
            Width = 441
            Height = 21
            ItemHeight = 13
            TabOrder = 0
            Text = 'cbbhumpty01'
            Items.Strings = (
              
                'Obesitas atau >20 kg/m2                                         ' +
                '                       (0)'
              
                '18,5 - 20 kg/m2                                                 ' +
                '                              (1)'
              
                '<18,5 kg/m2                                                     ' +
                '                               (2)')
          end
          object ComboBox9: TComboBox
            Left = 392
            Top = 56
            Width = 441
            Height = 21
            ItemHeight = 13
            TabOrder = 1
            Text = 'cbbhumpty02'
            Items.Strings = (
              
                '< 5 %                                                           ' +
                '                                    (0)'
              
                '5 - 10 %                                                        ' +
                '                                   (1)'
              
                '> 10 %                                                          ' +
                '                                   (2)')
          end
          object ComboBox10: TComboBox
            Left = 392
            Top = 80
            Width = 441
            Height = 21
            ItemHeight = 13
            TabOrder = 2
            Text = 'cbbhumpty03'
            Items.Strings = (
              
                'Ya                                                              ' +
                '                                      (2)'
              
                'Tidak                                                           ' +
                '                                     (0)')
          end
          object edthumpty1: TEdit
            Left = 848
            Top = 32
            Width = 121
            Height = 21
            TabOrder = 3
            Text = 'edthumpty1'
          end
          object edthumpty2: TEdit
            Left = 848
            Top = 56
            Width = 121
            Height = 21
            TabOrder = 4
            Text = 'edthumpty2'
          end
          object edthumpty3: TEdit
            Left = 848
            Top = 80
            Width = 121
            Height = 21
            TabOrder = 5
            Text = 'edthumpty3'
          end
          object edttotalskorhumpty1: TEdit
            Left = 848
            Top = 112
            Width = 121
            Height = 21
            TabOrder = 6
            Text = 'edttotalskorhumpty1'
          end
        end
        object grppasienobstetri: TGroupBox
          Left = 0
          Top = 448
          Width = 1081
          Height = 153
          Caption = 'PASIEN OBSTETRI / KEHAMILAN / NIFAS'
          Color = 16577248
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 4
          object Label13: TLabel
            Left = 32
            Top = 32
            Width = 7
            Height = 16
            Caption = '1'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label14: TLabel
            Left = 32
            Top = 56
            Width = 7
            Height = 16
            Caption = '2'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label15: TLabel
            Left = 32
            Top = 80
            Width = 7
            Height = 16
            Caption = '3'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label16: TLabel
            Left = 32
            Top = 104
            Width = 7
            Height = 16
            Caption = '4'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblnohumpty1: TLabel
            Left = 24
            Top = 16
            Width = 15
            Height = 13
            Caption = 'NO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbltotalskorhumpty2: TLabel
            Left = 744
            Top = 132
            Width = 69
            Height = 13
            Caption = 'TOTAL SKOR'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbllno1: TLabel
            Left = 56
            Top = 32
            Width = 306
            Height = 16
            Caption = 'Apakah asupan berkurang karena tidak nafsu makan?'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblno2: TLabel
            Left = 56
            Top = 56
            Width = 371
            Height = 16
            Caption = 'Ada pertambahan BB yang kurang atau lebih selama kehamilan ?'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblno3: TLabel
            Left = 56
            Top = 80
            Width = 180
            Height = 16
            Caption = 'Nilai Hb<10g/dl atau HCT<30%'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label24: TLabel
            Left = 56
            Top = 104
            Width = 480
            Height = 16
            Caption = 
              'Ada gangguan metabolisme atau kondisi khusus (DM, Tiroid, Infeks' +
              'i Kronis, HIV, dll)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label36: TLabel
            Left = 136
            Top = 16
            Width = 68
            Height = 13
            Caption = 'PARAMETER'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label37: TLabel
            Left = 888
            Top = 16
            Width = 30
            Height = 13
            BiDiMode = bdLeftToRight
            Caption = 'SKOR'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentFont = False
          end
          object ComboBox11: TComboBox
            Left = 832
            Top = 32
            Width = 145
            Height = 21
            ItemHeight = 13
            TabOrder = 0
            Text = 'cbbobs1'
            Items.Strings = (
              'Ya               (1)'
              'Tidak          (0)')
          end
          object ComboBox12: TComboBox
            Left = 832
            Top = 56
            Width = 145
            Height = 21
            ItemHeight = 13
            TabOrder = 1
            Text = 'cbbobs2'
            Items.Strings = (
              'Ya               (2)'
              'Tidak          (0)')
          end
          object ComboBox13: TComboBox
            Left = 832
            Top = 80
            Width = 145
            Height = 21
            ItemHeight = 13
            TabOrder = 2
            Text = 'cbbobs3'
            Items.Strings = (
              'Ya               (1)'
              'Tidak          (0)')
          end
          object ComboBox14: TComboBox
            Left = 832
            Top = 104
            Width = 145
            Height = 21
            ItemHeight = 13
            TabOrder = 3
            Text = 'cbbobs4'
            Items.Strings = (
              'Ya               (2)'
              'Tidak          (0)')
          end
          object Edit22: TEdit
            Left = 832
            Top = 128
            Width = 145
            Height = 21
            TabOrder = 4
            Text = 'edtotalskorobs'
          end
        end
        object grppasienanak: TGroupBox
          Left = 0
          Top = 600
          Width = 1081
          Height = 217
          Caption = 'PASIEN ANAK'
          Color = 16577248
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 5
          object lblnohumpty2: TLabel
            Left = 24
            Top = 16
            Width = 15
            Height = 13
            Caption = 'NO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbltotalskorhumpty3: TLabel
            Left = 744
            Top = 196
            Width = 69
            Height = 13
            Caption = 'TOTAL SKOR'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label17: TLabel
            Left = 32
            Top = 32
            Width = 7
            Height = 16
            Caption = '1'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label18: TLabel
            Left = 32
            Top = 56
            Width = 7
            Height = 16
            Caption = '2'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label19: TLabel
            Left = 32
            Top = 112
            Width = 7
            Height = 16
            Caption = '3'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label20: TLabel
            Left = 32
            Top = 168
            Width = 7
            Height = 16
            Caption = '4'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label25: TLabel
            Left = 56
            Top = 32
            Width = 170
            Height = 16
            Caption = 'Apakah pasien tampak kurus?'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label26: TLabel
            Left = 56
            Top = 56
            Width = 326
            Height = 16
            Caption = 'Apakah terdapat penurunan BB selama 1 bulan terakhir ?'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label27: TLabel
            Left = 56
            Top = 128
            Width = 405
            Height = 16
            Caption = 
              '- Diare >=5x/hari dan atau muntah > 3x/hari dalam seminggu terak' +
              'hir'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label28: TLabel
            Left = 168
            Top = 208
            Width = 170
            Height = 13
            Caption = 'Total Skor >= 2 : Konsul ke Ahli Gizi'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label29: TLabel
            Left = 56
            Top = 112
            Width = 302
            Height = 16
            Caption = 'Apakah terdapat SALAH SATU dari kondisi tersebut ?'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label30: TLabel
            Left = 32
            Top = 208
            Width = 71
            Height = 13
            Caption = 'KESIMPULAN'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label31: TLabel
            Left = 56
            Top = 88
            Width = 387
            Height = 16
            Caption = 
              '- Jika bayi < 1 tahun berat badan tidak naik selama 3 bulan tera' +
              'khir'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label32: TLabel
            Left = 56
            Top = 72
            Width = 240
            Height = 16
            Caption = '- Berdasarkan penilaian objektif orang tua'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label33: TLabel
            Left = 56
            Top = 184
            Width = 242
            Height = 16
            Caption = '(Diare kronis, HIV, PJB, Ginjak, Stoma, dll)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label34: TLabel
            Left = 56
            Top = 168
            Width = 577
            Height = 16
            Caption = 
              'Apakah terdapat penyakit atau keadaan yang mengakibatkan pasien ' +
              'beresiko mengalami malnutrisi ?'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label35: TLabel
            Left = 56
            Top = 144
            Width = 319
            Height = 16
            Caption = '- Asupan makanan berkurang selama 1 minggu terakhir'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label38: TLabel
            Left = 888
            Top = 16
            Width = 30
            Height = 13
            BiDiMode = bdLeftToRight
            Caption = 'SKOR'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentFont = False
          end
          object Label21: TLabel
            Left = 136
            Top = 16
            Width = 68
            Height = 13
            Caption = 'PARAMETER'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object cbbanak1: TComboBox
            Left = 832
            Top = 32
            Width = 145
            Height = 21
            ItemHeight = 13
            TabOrder = 0
            Text = 'cbbanak1'
            Items.Strings = (
              'Ya               (1)'
              'Tidak          (0)')
          end
          object cbbanak2: TComboBox
            Left = 832
            Top = 64
            Width = 145
            Height = 21
            ItemHeight = 13
            TabOrder = 1
            Text = 'cbbanak2'
            Items.Strings = (
              'Ya               (2)'
              'Tidak          (0)')
          end
          object cbbanak3: TComboBox
            Left = 832
            Top = 112
            Width = 145
            Height = 21
            ItemHeight = 13
            TabOrder = 2
            Text = 'cbbanak3'
            Items.Strings = (
              'Ya               (1)'
              'Tidak          (0)')
          end
          object cbbanak4: TComboBox
            Left = 832
            Top = 160
            Width = 145
            Height = 21
            ItemHeight = 13
            TabOrder = 3
            Text = 'cbbanak4'
            Items.Strings = (
              'Ya               (2)'
              'Tidak          (0)')
          end
          object edttotalskoranak: TEdit
            Left = 832
            Top = 192
            Width = 145
            Height = 21
            TabOrder = 4
            Text = 'edttotalskoranak'
          end
        end
        object grpRIWAYATHUMPTY: TGroupBox
          Left = 1080
          Top = 216
          Width = 353
          Height = 609
          Caption = 'DAFTAR RIWAYAT PENILAIAN RISIKO JATUH'
          Color = 16577248
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 6
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'DISCHARGE PLANING'
        ImageIndex = 4
        object grpdischarge: TGroupBox
          Left = 0
          Top = 0
          Width = 1430
          Height = 97
          Align = alTop
          Caption = 'DISCHARGE PLANNING (diisi oleh perawat, beri tanda [v])'
          Color = 16577248
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          object lblusiadis: TLabel
            Left = 24
            Top = 24
            Width = 91
            Height = 16
            Caption = 'Usia > 65 tahun'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblketerbatasan: TLabel
            Left = 24
            Top = 40
            Width = 130
            Height = 16
            Caption = 'Keterbatasan mobilitas'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl2dis: TLabel
            Left = 8
            Top = 40
            Width = 7
            Height = 16
            Caption = '2'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl3dis: TLabel
            Left = 8
            Top = 56
            Width = 7
            Height = 16
            Caption = '3'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl1dis: TLabel
            Left = 8
            Top = 24
            Width = 7
            Height = 16
            Caption = '1'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblperawatan: TLabel
            Left = 24
            Top = 56
            Width = 191
            Height = 16
            Caption = 'Perawatan / pengobatan lanjutan'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblbantuan: TLabel
            Left = 24
            Top = 72
            Width = 262
            Height = 16
            Caption = 'Bantuan untuk melakukan aktivitas sehari-hari'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl4dis: TLabel
            Left = 8
            Top = 72
            Width = 7
            Height = 16
            Caption = '4'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object grpMENUDIS: TGroupBox
            Left = 1080
            Top = 16
            Width = 321
            Height = 57
            Caption = 'MENU'
            TabOrder = 0
            object btnSIMPANDIS: TButton
              Left = 16
              Top = 16
              Width = 81
              Height = 25
              Caption = 'SIMPAN'
              TabOrder = 0
            end
            object btnUBAHDIS: TButton
              Left = 112
              Top = 16
              Width = 81
              Height = 25
              Caption = 'UBAH'
              TabOrder = 1
            end
            object btnHAPUSDIS: TButton
              Left = 216
              Top = 16
              Width = 81
              Height = 25
              Caption = 'HAPUS'
              TabOrder = 2
            end
          end
          object cbya1: TCheckBox
            Left = 296
            Top = 24
            Width = 97
            Height = 17
            Caption = 'Ya'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object cbtidak1: TCheckBox
            Left = 392
            Top = 24
            Width = 113
            Height = 17
            Caption = 'Tidak'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object cbya2: TCheckBox
            Left = 296
            Top = 40
            Width = 97
            Height = 17
            Caption = 'Ya'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object cbya3: TCheckBox
            Left = 296
            Top = 56
            Width = 97
            Height = 17
            Caption = 'Ya'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object cbya4: TCheckBox
            Left = 296
            Top = 72
            Width = 97
            Height = 17
            Caption = 'Ya'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object cbtidak2: TCheckBox
            Left = 392
            Top = 40
            Width = 113
            Height = 17
            Caption = 'Tidak'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
          end
          object cbtidak3: TCheckBox
            Left = 392
            Top = 56
            Width = 113
            Height = 17
            Caption = 'Tidak'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
          end
          object cbtidak4: TCheckBox
            Left = 392
            Top = 72
            Width = 113
            Height = 17
            Caption = 'Tidak'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
          end
          object grpjikadis: TGroupBox
            Left = 560
            Top = 0
            Width = 201
            Height = 97
            TabOrder = 9
            object Label39: TLabel
              Left = 32
              Top = 16
              Width = 133
              Height = 13
              Caption = 'Jika salah satu jawaban '#39'Ya'#39
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label40: TLabel
              Left = 40
              Top = 32
              Width = 119
              Height = 13
              Caption = 'maka dilanjutkan dengan'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label41: TLabel
              Left = 24
              Top = 48
              Width = 146
              Height = 13
              Caption = 'pengisian lembar perencanaan'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label42: TLabel
              Left = 56
              Top = 64
              Width = 78
              Height = 13
              Caption = 'pulang lanjutan.'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
          end
        end
        object grpRIWAYATDISCHARGE: TGroupBox
          Left = 1080
          Top = 93
          Width = 350
          Height = 732
          Caption = 'DAFTAR RIWAYAT DISCHARGE PLANNING'
          Color = 16577248
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 1
        end
        object grpmasalahdis: TGroupBox
          Left = 0
          Top = 96
          Width = 1081
          Height = 385
          Caption = 'MASALAH KEPERAWATAN'
          Color = 16577248
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 2
          object Label43: TLabel
            Left = 24
            Top = 24
            Width = 212
            Height = 16
            Caption = 'Ketidakefektifan Bersihan Jalan Nafas'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label47: TLabel
            Left = 24
            Top = 48
            Width = 154
            Height = 16
            Caption = 'Ketidakefektifan Pola Nafas'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label48: TLabel
            Left = 24
            Top = 72
            Width = 148
            Height = 16
            Caption = 'Gangguan Pertukaran Gas'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label49: TLabel
            Left = 24
            Top = 96
            Width = 137
            Height = 16
            Caption = 'Hipertemia / Hipotermia'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label50: TLabel
            Left = 24
            Top = 240
            Width = 76
            Height = 16
            Caption = 'Retensi Urine'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label51: TLabel
            Left = 24
            Top = 192
            Width = 226
            Height = 16
            Caption = 'Risiko Ketidakstabilan Kadar Gula Darah'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label52: TLabel
            Left = 24
            Top = 312
            Width = 65
            Height = 16
            Caption = 'Lain - lain :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label53: TLabel
            Left = 24
            Top = 288
            Width = 96
            Height = 16
            Caption = 'Ikterus Neonatus'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label54: TLabel
            Left = 24
            Top = 264
            Width = 58
            Height = 16
            Caption = 'Nyeri Akut'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label55: TLabel
            Left = 24
            Top = 120
            Width = 223
            Height = 16
            Caption = 'Kelebihan / Kekurangan Volume Cairan'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label56: TLabel
            Left = 24
            Top = 144
            Width = 147
            Height = 16
            Caption = 'Penurunan Curah Jantung'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label57: TLabel
            Left = 24
            Top = 168
            Width = 245
            Height = 16
            Caption = 'Risiko Ketidakefektifan Perfusi Otak / Ginjal'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label58: TLabel
            Left = 24
            Top = 216
            Width = 64
            Height = 16
            Caption = 'Risiko Syok'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label45: TLabel
            Left = 520
            Top = 8
            Width = 84
            Height = 13
            Caption = 'IMPLEMENTASI'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl01dis: TLabel
            Left = 8
            Top = 24
            Width = 7
            Height = 16
            Caption = '1'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl02dis: TLabel
            Left = 8
            Top = 48
            Width = 7
            Height = 16
            Caption = '2'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label60: TLabel
            Left = 8
            Top = 72
            Width = 7
            Height = 16
            Caption = '3'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label61: TLabel
            Left = 8
            Top = 96
            Width = 7
            Height = 16
            Caption = '4'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label62: TLabel
            Left = 8
            Top = 120
            Width = 7
            Height = 16
            Caption = '5'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label63: TLabel
            Left = 8
            Top = 144
            Width = 7
            Height = 16
            Caption = '6'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label64: TLabel
            Left = 8
            Top = 168
            Width = 7
            Height = 16
            Caption = '7'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label65: TLabel
            Left = 8
            Top = 192
            Width = 7
            Height = 16
            Caption = '8'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label66: TLabel
            Left = 8
            Top = 216
            Width = 7
            Height = 16
            Caption = '9'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label67: TLabel
            Left = 8
            Top = 240
            Width = 14
            Height = 16
            Caption = '10'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label68: TLabel
            Left = 8
            Top = 264
            Width = 14
            Height = 16
            Caption = '11'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label69: TLabel
            Left = 8
            Top = 288
            Width = 14
            Height = 16
            Caption = '12'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label70: TLabel
            Left = 8
            Top = 312
            Width = 14
            Height = 16
            Caption = '13'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object GroupBox23: TGroupBox
            Left = 272
            Top = 0
            Width = 97
            Height = 377
            TabOrder = 0
            object Label44: TLabel
              Left = 40
              Top = 8
              Width = 24
              Height = 13
              Caption = 'JAM'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object cxtmdt02: TcxTimeEdit
              Left = 8
              Top = 48
              EditValue = 0d
              TabOrder = 0
              Width = 81
            end
            object cxtmdt03: TcxTimeEdit
              Left = 8
              Top = 72
              EditValue = 0d
              TabOrder = 1
              Width = 81
            end
            object cxtmdt04: TcxTimeEdit
              Left = 8
              Top = 96
              EditValue = 0d
              TabOrder = 2
              Width = 81
            end
            object cxtmdt05: TcxTimeEdit
              Left = 8
              Top = 120
              EditValue = 0d
              TabOrder = 3
              Width = 81
            end
            object cxtmdt07: TcxTimeEdit
              Left = 8
              Top = 168
              EditValue = 0d
              TabOrder = 4
              Width = 81
            end
            object cxtmdt08: TcxTimeEdit
              Left = 8
              Top = 192
              EditValue = 0d
              TabOrder = 5
              Width = 81
            end
            object cxtmdt09: TcxTimeEdit
              Left = 8
              Top = 216
              EditValue = 0d
              TabOrder = 6
              Width = 81
            end
            object cxtmdt10: TcxTimeEdit
              Left = 8
              Top = 240
              EditValue = 0d
              TabOrder = 7
              Width = 81
            end
            object cxtmdt11: TcxTimeEdit
              Left = 8
              Top = 264
              EditValue = 0d
              TabOrder = 8
              Width = 81
            end
            object cxtmdt06: TcxTimeEdit
              Left = 8
              Top = 144
              EditValue = 0d
              TabOrder = 9
              Width = 81
            end
            object cxtmdt01: TcxTimeEdit
              Left = 8
              Top = 24
              EditValue = 0d
              TabOrder = 10
              Width = 81
            end
            object cxtmdt12: TcxTimeEdit
              Left = 8
              Top = 288
              EditValue = 0d
              TabOrder = 11
              Width = 81
            end
            object cxtmdt13: TcxTimeEdit
              Left = 8
              Top = 312
              EditValue = 0d
              TabOrder = 12
              Width = 81
            end
            object cxtmdt14: TcxTimeEdit
              Left = 8
              Top = 336
              EditValue = 0d
              TabOrder = 13
              Width = 81
            end
            object cxtmdt15: TcxTimeEdit
              Left = 8
              Top = 360
              EditValue = 0d
              TabOrder = 14
              Width = 81
            end
          end
          object edtlain1: TEdit
            Left = 96
            Top = 312
            Width = 177
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Text = 'edtlain1'
          end
          object edtlain2: TEdit
            Left = 96
            Top = 336
            Width = 177
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            Text = 'edtlain2'
          end
          object edtlain3: TEdit
            Left = 96
            Top = 360
            Width = 177
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            Text = 'edtlain3'
          end
          object edtimplementasi1: TEdit
            Left = 368
            Top = 24
            Width = 281
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            Text = 'edtimplementasi1'
          end
          object edtimplementasi2: TEdit
            Left = 368
            Top = 48
            Width = 281
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            Text = 'edtimplementasi2'
          end
          object edtimplementasi3: TEdit
            Left = 368
            Top = 72
            Width = 281
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            Text = 'edtimplementasi3'
          end
          object edtimplementasi4: TEdit
            Left = 368
            Top = 96
            Width = 281
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            Text = 'edtimplementasi4'
          end
          object edtimplementasi5: TEdit
            Left = 368
            Top = 120
            Width = 281
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            Text = 'edtimplementasi5'
          end
          object edtimplementasi6: TEdit
            Left = 368
            Top = 144
            Width = 281
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
            Text = 'edtimplementasi6'
          end
          object edtimplementasi7: TEdit
            Left = 368
            Top = 168
            Width = 281
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
            Text = 'edtimplementasi7'
          end
          object edtimplementasi8: TEdit
            Left = 368
            Top = 192
            Width = 281
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
            Text = 'edtimplementasi8'
          end
          object edtimplementasi9: TEdit
            Left = 368
            Top = 216
            Width = 281
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 12
            Text = 'edtimplementasi9'
          end
          object edtimplementasi10: TEdit
            Left = 368
            Top = 240
            Width = 281
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 13
            Text = 'edtimplementasi10'
          end
          object edtimplementasi11: TEdit
            Left = 368
            Top = 264
            Width = 281
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 14
            Text = 'edtimplementasi11'
          end
          object edtimplementasi12: TEdit
            Left = 368
            Top = 288
            Width = 281
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 15
            Text = 'edtimplementasi12'
          end
          object edtimplementasi13: TEdit
            Left = 368
            Top = 312
            Width = 281
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 16
            Text = 'edtimplementasi13'
          end
          object edtimplementasi14: TEdit
            Left = 368
            Top = 336
            Width = 281
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 17
            Text = 'edtimplementasi14'
          end
          object edtimplementasi15: TEdit
            Left = 368
            Top = 360
            Width = 281
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 18
            Text = 'edtimplementasi15'
          end
        end
        object GroupBox27: TGroupBox
          Left = 656
          Top = 104
          Width = 425
          Height = 377
          Caption = 'SUBJECTIVE (diisi oleh Dokter Jaga, beri tanda [v])'
          Color = 16577248
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 3
          object lblkeluhan: TLabel
            Left = 8
            Top = 17
            Width = 95
            Height = 16
            Caption = 'Keluhan Utama :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblriwayatpenyakit: TLabel
            Left = 8
            Top = 65
            Width = 105
            Height = 16
            Caption = 'Riwayat Penyakit :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblriwayatalergi: TLabel
            Left = 8
            Top = 121
            Width = 87
            Height = 16
            Caption = 'Riwayat Alergi:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object cbtidakada: TCheckBox
            Left = 120
            Top = 120
            Width = 113
            Height = 17
            Caption = 'Tidak Ada'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object cbyaalergi: TCheckBox
            Left = 256
            Top = 120
            Width = 105
            Height = 17
            Caption = 'Ya, Sebutkan :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object cbauto: TCheckBox
            Left = 120
            Top = 40
            Width = 113
            Height = 17
            Caption = 'Auto-anamnesis'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object cbhetero: TCheckBox
            Left = 256
            Top = 40
            Width = 129
            Height = 17
            Caption = 'Heteroanamnesis'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object Edit18: TEdit
            Left = 120
            Top = 12
            Width = 297
            Height = 22
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            Text = 'edtkeluhan'
          end
          object Edit20: TEdit
            Left = 120
            Top = 148
            Width = 297
            Height = 22
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            Text = 'edtriwayatalergi'
          end
          object Memoriwayatpenyakit: TMemo
            Left = 120
            Top = 64
            Width = 297
            Height = 57
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            Lines.Strings = (
              'Memoriwayatpenyakit')
            ParentFont = False
            TabOrder = 6
          end
        end
        object GroupBox28: TGroupBox
          Left = 656
          Top = 280
          Width = 425
          Height = 145
          Color = 16577248
          ParentColor = False
          TabOrder = 4
          object lblriwayatobat: TLabel
            Left = 8
            Top = 73
            Width = 162
            Height = 16
            Caption = 'Menggunakan obat saat ini :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblriwayatpenyakitdanobat: TLabel
            Left = 8
            Top = 9
            Width = 276
            Height = 16
            Caption = 'Riwayat Penyakit yang lalu dan pengobatannya :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object cbtidakada1: TCheckBox
            Left = 120
            Top = 24
            Width = 113
            Height = 17
            Caption = 'Tidak Ada'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object cbyariwayat: TCheckBox
            Left = 256
            Top = 24
            Width = 113
            Height = 17
            Caption = 'Ya, Sebutkan :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object cbtidak: TCheckBox
            Left = 120
            Top = 88
            Width = 113
            Height = 17
            Caption = 'Tidak'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object cbyaobat: TCheckBox
            Left = 256
            Top = 88
            Width = 105
            Height = 17
            Caption = 'Ya, Sebutkan :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object edtpenyakitkeluarga: TEdit
            Left = 120
            Top = 108
            Width = 297
            Height = 22
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            Text = 'edtlain1'
          end
          object edtriwayatpenyakit: TEdit
            Left = 120
            Top = 48
            Width = 297
            Height = 22
            TabOrder = 5
            Text = 'edtriwayatpenyakit'
          end
        end
        object GroupBox33: TGroupBox
          Left = 656
          Top = 408
          Width = 425
          Height = 81
          Color = 16577248
          ParentColor = False
          TabOrder = 5
          object lblriwayatkeluarga: TLabel
            Left = 8
            Top = 9
            Width = 159
            Height = 16
            Caption = 'Riwayat Penyakit Keluarga :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object CheckBox4: TCheckBox
            Left = 120
            Top = 24
            Width = 113
            Height = 17
            Caption = 'Tidak Ada'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object CheckBox5: TCheckBox
            Left = 256
            Top = 24
            Width = 97
            Height = 17
            Caption = 'Ya, Sebutkan :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object edtriwayatpenyakitkeluarga: TEdit
            Left = 120
            Top = 48
            Width = 289
            Height = 22
            TabOrder = 2
            Text = 'edtriwayatpenyakitkeluarga'
          end
        end
        object GroupBox26: TGroupBox
          Left = 0
          Top = 480
          Width = 1081
          Height = 49
          Color = 16577248
          ParentColor = False
          TabOrder = 6
          object lbljamdis: TLabel
            Left = 464
            Top = 24
            Width = 24
            Height = 13
            Caption = 'JAM'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbltanggaldis: TLabel
            Left = 200
            Top = 24
            Width = 52
            Height = 13
            Caption = 'TANGGAL'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblperawatdis: TLabel
            Left = 696
            Top = 24
            Width = 55
            Height = 13
            Caption = 'PERAWAT'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object cxtmJAMdis: TcxTimeEdit
            Left = 512
            Top = 16
            EditValue = 0d
            TabOrder = 0
            Width = 145
          end
          object dtptanggaldis: TDateTimePicker
            Left = 272
            Top = 16
            Width = 145
            Height = 21
            Date = 44349.414277731480000000
            Time = 44349.414277731480000000
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object cbbperawatdis: TComboBox
            Left = 776
            Top = 16
            Width = 297
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemHeight = 13
            ParentFont = False
            TabOrder = 2
            Text = 'cbbperawatdis'
          end
        end
        object GroupBox34: TGroupBox
          Left = 0
          Top = 528
          Width = 1081
          Height = 217
          Color = clWhite
          ParentColor = False
          TabOrder = 7
          object Label85: TLabel
            Left = 16
            Top = 9
            Width = 111
            Height = 16
            Caption = 'Pemeriksaan Fisik :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Image1: TImage
            Left = 24
            Top = 32
            Width = 73
            Height = 177
            Picture.Data = {
              0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000004D00
              0000B2080600000007CD427C000000017352474200AECE1CE90000000467414D
              410000B18F0BFC6105000000097048597300000EC300000EC301C76FA8640000
              2536494441547801EDDD09FC7D43F907F0F9258490C8923D29140AD9B2244B1B
              112212DA84AC89CAFA13B22F256469A12C6D762A224BC812D9255B21646DB5EB
              EF3DFF9EFB3ABFEBDCEFBDE7DE73CECF8BDFEFF57A7E73EECC3333CF7CE69999
              679E9973BEE3FEFBE2BF34E95F2504C6BD88D97F2BE51882F9C53AD20B2FBC90
              733EFFFCF369F2C927CFCFE3C68DCB61FCF7DC73CFA5D7BEF6B5F13387F2A2D7
              BCE635495ECFDD3C99B1C5FF5A012DDAA3C141934D36597AE08107D21FFEF087
              74D34D37A5471E79244D39E5940970AF7BDDEBD2DBDFFEF6B4CC32CBA4B9E69A
              2B030E30C0294BD80DB8F8B6A835D0689AC60A35F884134E48BFFFFDEFD3820B
              2E98165E78E134EFBCF3A669A79D36FDFBDFFF4E7FFBDBDFD275D75D97AEBDF6
              DAB4C0020BA44D37DD346B200D033AC0DB02A8AC9ED640D35880016EFFFDF7CF
              43ED8B5FFC627AC31BDE90E592860012E1E38F3F9E7EFCE31FA7DB6FBF3DEDBE
              FBEE69FAE9A74FCA013ACA1927C27FAD810608F4FDEF7F3F0FCB5D76D9250128
              40106A7F84018AF0A4934E4A7FFCE31FD31E7BEC91C1A671E2F14F0C6A0D348D
              BBEFBEFBD2BEFBEE9B0E38E08034CD34D3881A98C68F1F9FDEFBDEF7A655575D
              35CF713476E0CC3533B60ADA19679C911E7DF4D1F499CF7CA672C3EFBAEBAE74
              C8218724437BAAA9A64AAF1AD03478C515574C4B2FBD7425D0ACA886F23EFBEC
              93DEFFFEF7A765975DB633B7D5AC440315D7AAA699CC69D93CF3CC333068E638
              44B3CE3CF3CC74CF3DF7A46DB6D9E6D5011A5382A600CE243EC5145324E1205D
              0B347CCC905FFEF29769E79D777EF580B6D75E7BA5AF7FFDEBD9E6A23980E847
              8C5AA001F8BCF3CE4BB7DC724BDA61871D5E3DA0EDB7DF7E594B689939AA1F60
              D2992940C36FD5B582227180C4D336B536A76924DB6CB3CD36CB5B230D46FD1A
              2C1F9EFFFCE73F89A66EB7DD76699659661135F0F0CECC35FED71A68643EFCF0
              C333606BAEB966A58580B63DF8E08309E87BEEB9679A73CE395F9926070D296A
              D23FFFF9CFBCEA31373EFFF9CF672D29A603752C02DA97BFFCE5BC4FFDCA57BE
              D261EDAEA793D0E043639AD6DD18FB475BA8AF7DED6BE9F5AF7F7D25D02C06B4
              8D47E4A28B2E4A3BEEB8636721E8AEA741AC3A45B706DADD77DF9D8E3BEEB8C4
              ECD050120CAA698C5BFBCDCB2EBB2CFDEE77BFCBABA7FC4859839683BF0E6A05
              340D3391B3D168C9ACB3CEDAD1947E8DA06108683FFFF9CFF336CC62A24C6045
              D8AF9C3AD35B034D034F3CF1C4F4F0C30FA7CF7DEE7379C32EAE5F6300C6A633
              44CD697C6B8B2EBA6807F45714684530A261F7DF7F7F5A6BADB5D2F6DB6F9F36
              DC70C3DC707CC0038ED06FE437B0C4FDE52F7F49564D606DBDF5D6793EC433B1
              A8314DEB6E104D313759F9669E79E66CE402131F6080241427142F8F61C91179
              CA29A7A4EF7DEF7B791161E80214CFC4A0D6400B309C0B7CFBDBDF4E7BEFBDF7
              04ED0554F000374001262D5B7BEDB5134D9329D23C4F0C6A0D348D070AEDB1E1
              3699BFED6D6F7B499BA503053F8D32075A3C0E3EF8E0EC1A97EE340BC82FC9DC
              52446BA0012C803044FFF18F7FA4430F3D349F40696B80001460D1362B2E9EDF
              FEF6B7E9473FFA517AD39BDED4D9490056BE8941AD83061C5AF3ECB3CFE6C560
              EEB9E7CE0B025001015821306EBCF1C67CC4C76BBBFEFAEBE793AB679E79A692
              97443975536BA0D1208001EB88238E482BAFBC729EA3C4030968D2FDA669C013
              FACD20FED4A73E95F7AD00102F9C58D41A68400080D5D0C67DF1C517CF0725C0
              4200009AD0EF00D23065D77DF2939F4CABADB65A3E8DC2271DEFC4A0D640D338
              A0D1926F7CE31BD9D76FF30E206980901ECF7E034CFAAEBBEE9A0F91575F7DF5
              F4A10F7D084B1ED2F9E17FFFE1FFDF63E34123A06968B1117E6B8938BB82B3CE
              3A2B9F613A5D97261E60427C483C800167483B38E6C46476D03A5717824F58CC
              EB7793343268869D061A2E9E090B006681DF1A2EEEB1C71E4BBC1CAE1C3039A6
              9B6EBA812C7B650104704F3DF5543AFAE8A3F3B505DEDBE5975F3ECD34D34C8A
              CFAB6AB1BE902927D6FCDFC8A0112E64D240826BA4B94BF8D0430FA573CF3D37
              DFDBD0C88F7EF4A389BB5B1AA0236FAF50F9CA0D7EE10D37DC907EF39BDFA43F
              FDE94FF90EC84A2BAD94165B6CB15C047075143E94236BFEAF36D0340E6021B0
              0601EBCF7FFE737AD7BBDE95E7227656F069D020A02913E1951780B458FE279E
              782285BB082E1B6CB0415A68A185B2D6E1258BF8BAA916D0CC3B1A4238E792F6
              8936E70E76991686A2340DD6180D0644E4913616D11EA0C903086520DA2C9F78
              7EB61FFEF087C9AA0CBCAAD71E9433288D041AC103302099E06FBEF9E664955B
              6EB9E5B2FB47839046132A0013469CF85EA40E84BF174FA4D13C3B07DAEDCE87
              93785E62F5E341BDCAA8125F0934C223150809F1E4934FA61FFCE007E98E3BEE
              C8206DBBEDB679BB83A74D2AEE14EC24CE3FFFFCC4A5C407F7E637BF399B283A
              89CCA3CA55093495114EE5E8E9A79F4EBBEDB65B9A6FBEF9128B5DAFD2BC1836
              F8DB22431F203AD31056EF39E79C93AEB8E28AEC5131C4C98547DA2854093402
              014585E6A39FFEF4A7C950D09B84360C084C3084AF2D5277D4E559FDC89D3606
              3143DA6F147CC38695410B8180F4D5AF7E356DB5D556794FE837ED0B1A56A061
              F3A93FF29251E791C502E13A833353BF5B072D8412BA2F7BDA69A765D5F79B16
              86B07EB74DEA2603B0D4EDB790416C1BA68319C280133F0A55D234151146C5CC
              0A73C4BAEBAE2BFA654940A459DFFAD6B7D2FCF3CF9F6DC5881B45E0CAA0A914
              705CD0EBADB75E7AE73BDF394AFD8DE52527D2C10C60B4D34E3BE5551490A354
              5C193495F1BABA3245EDE376B6F8971B010D40F7DE7B6F722EE1DEAEABA7A3CA
              391468EE88B93FEB8AC1A802B4919FB3C0410E4D73503D6A9D438176E1851726
              062443D650D59B882D6422F68CF434013D0BEBA25EE59225EA50273EE4AC81F7
              77CB2DB7CC2B7DF00C1B56028D50E6885FFDEA57D9C3C0DC88A55E7C3C5B203C
              8B23980608EB224028AB58AEFAF8DCBCF5A2E3A4AB1F0F23DCDD362760CE24A4
              8D4295408B8A7EF18B5F24175AF49C06D030C62E506DABC4993B08EF99E028F2
              371132812EBDF4D244FB19E0511F19DCF73DF0C003932B5E73CC31C7C8D55702
              0D006A343C6FBDF5D66CD88A039678024AB3E773E722E2F5B8F4A6880CE6AB15
              565821ADB1C61A492792457DC033A7F1FA3A3F75BA2F7E14AA045A5474F5D557
              A78B2EFAFF7B62802198DE352C9DA07B49C2C4CBD9288F74E4B9092283C317F7
              443839FD560F308167FFC903C34C3222A48D4295402384B9E3EF7FFF7B1A3F7E
              7C7EC92B1C8B4091464873C7C73EF6B16C4C6A8034348AA0DD79C9522C9327D7
              C5C12F7CE10B9D132B79DCC0B48522D3228B2C226A64AA041A00086BB89D7CF2
              C9E9ECB3CF4EE60AAE17926804213FFDE94F278E40F72FC4CB230DF95D074599
              5196D5FCF4D34FCFF772C9271E8FE3427B4F2692DF4683B451A812682A320C09
              C59DCDC0A5716F7DEB5BB3A52D5D6F7B6B8E77C1DC628802BB0E61951F048062
              27A8D73BA4EA3504A593F5B6DB6E4BC71F7F7C1AFFE2C888C529CA1836AC041A
              41106109C335E4762350004908AE222746E60F40E1171FE99EEB20E59223CABA
              FEFAEBB3E633B8C54B2797D5DC3B5936EC13153400DC79E79DF9BE18A3918084
              17F22A00327A5603A40991E73A485DC5F2AEB9E69AF4EB5FFF3A59458BE59387
              8D66CB57D7B941254D234C4CF6CE048E3AEAA8FC4284780DD0B30005DAE69B6F
              9E669B6DB67CB6295E3AC2DB045921F9CEDCB204A83AD4C746B3929389A6891F
              952A830600C078E1D53034AF11828091E630D8DB766F79CB5BF24B121A211D5F
              5344CB18DC0CD8A88F3C760340336CB9E3EBA8BF326851A9B9CB15F732D0F42A
              2373892596C8EC1A01E8FCA3A1FF5C31F5B505B69AFA749285C0C8303C0DDB38
              4A1C55844AA011468504D2ABEEC09681F6CD6F7E337FE5E0031FF84067559547
              DEA6E8B0C30E4B4B2DB554FE2C050DD349E435A7D134DA3F51E634422000F051
              199E040284B810960D67E5FCF8C73F9E41934723F03541B449E77DE2139FC817
              FFFC268F3AD98DB6500C5C739AF85165184AD38040302BA4FD5C3822C513CA36
              CBE6F94B5FFA52BE22200E8D2A6C317FD4258E3601CD7BA033CE38E3041DE523
              29343F4C0E40CA330A55024D45B40900843657D82E756F4F5C4D70DB11A8534F
              3D756E441DC2AA1FA95B480EA145E93BDFF94E7ED7C0364E1C1EE946C431C71C
              93AFE09BF3EA90A332688409A12C045C2D1FFEF0873BFB3D423128F53C370D4F
              29AD14AF11F2D6453A50B9175F7C71BAEAAAABF28B66E2D4434E211F9BCF5AD0
              B419669821AFE6A3D63F14680422EC77BFFBDDFC8D2043D46FC210DAB33DE92A
              ABAC926F0C115E5ADD440E65DB3E3127EC757550689BD5D3DC4AEB75DE3AEBAC
              538B089540232441080518DB13B658D984EF220A1EAFF3D42269A11072E81C80
              89765B5C07BDFBDDEFCE538174248D0C567A072B34CE108DBC911F5F15AA0C9A
              0A556047E08EBF6D9455495C51884B2EB9245FE40B0BBD98867714224394672A
              B082F3229B2A022CE57B469E4D176C38C0CA2F4E19C87315AA049A8255A8F778
              323C6FB4D146B977BB2BE7AAE13A6289E39347FE3A4879EA433C2940A3D13E1F
              264D5DC2A8CBEF9FFDEC67C9552CCE4A4046BA34E504EF206125D0A2224394AA
              EB39178709D15DF1E5975F9E90CB3165E98308D78B47796451277297D79CE6F0
              5A9A38E9F20345688832C6795FFCC683D773F0781E842A81A612C2C48AC477D5
              6B6B622FE81CC1AB86F254156C2CE1A33C21E216E2682C6A3559A30CCF3A9AA7
              C3A2C5DB2C4DBC1080C241A932682AB0C433607B691161B89F1D2A9B6B34CCE2
              21EFA0828DC5A77C84476778E98C016B98AA4B7CB12EBCC8FB0BF6C4EE00FB8D
              E4C75F852A8146209558895CE473EF4BC54501A3729FB7E14DF55D2066807C65
              7CC15F255427521E724D8289C351C0C45096F8E009B919C0E63DB7C1230D6F55
              AA049A8A9C56B3F469597C54A4AC52B7107D16E2B39FFD6CE9425196A76A1C79
              E4B1829A63BDDD676E0312D0A445E8D9079EDCE474D3495E245E870A07A54AA0
              29D4472FB9B95D1B1D6BC81D7BECB189803E6158B7A691231A0C148E469B7273
              5A6CDBC4E35177689F57207DE4C9CD8048579667E1A0541934668485C01D5B42
              A9A8AC52F38797249826F8F466199FFC55497948798829E1ACD5C2A41EE589A7
              719E01E7B0C5CDF39FFCE427F9E85187471978AAD0C0A04505E6059F51B5DF14
              870818957A663B6DB2C926F90558CB3C9E684CF08D122A4F7EA1727DFD8F3FCD
              B4010C6091038FD06F7C5E31B27B6076D81948538610EFA05419345BA7F7BDEF
              7DD9E1A74215A93404F3DB4995EF09E165CBE9698D915607455DEA5737D0EC2B
              DD78E471E9551FB3036086A7F938CAA92AD3C0A0299843CF10309F850F4D3CE1
              5100A3374F3DF5D4E4E3238493A67108FFA814E5456821B059F77E94ED92F243
              16CF28782D181FFCE00793ED542F70F18F45954033913AF1B172EAB59860554E
              FD81E2B209DBCC97A7D84DC1D3DD88B1841A240D0848BDA603757138325E4D1F
              E28BE5E0259FE9C5752BE692F488F73C2855028D37F6CA2BAF4C400BA0544418
              BF01E31A96773A9D0FC4621169F8F0D7491AAD7C1FA433D9CF3EFBECF9DD78F1
              C5FAE2B7031820DB339323E23D0F4A3D415398428C7B95EBB9EEFD9B38E94282
              E0B3F49B64B98CCC33CA091EE9CAAC9394AF5CAF1A095D97701EE0255ABFA3AE
              E0D3F1BE8E657B274E7A91CFEF7ED4133419A3508DA645DE7F7298A257A51749
              C5D2F9D1BC1D6298F23CD002A04A2FF2D7F54C466533259C0FD8DEC50BB46575
              70C5739E02768A29A618CA933B26681A0CAC10CC26DCE6D8810981C4233C7E03
              D4A5397E2DC29BDB002E0D70C2BA49FD40630FAAC307D2DD10B239F75B5AD489
              F75FFFFA573E4BF0994443591CBEE019241C1334056AB44255EE4CC0046FBE52
              B8F408ADAC04652BE9755712C2DC90571978EB263228DFB73B981C56477B50D7
              BDBC305B561F43D8AD4987D991BF8CAF575C4FD014269350831D9359A1BC745F
              7C615F3AA1F9CE783F1CA6B08598253CBAF2E2112AAF6E52B632C900305F6CD6
              819C05E62D694178F1590C6CF12C067E47FAA0614FD01440CB148AB85F781200
              622E1087872086A76D93DEF3B5644766EC2569F822C4DF04295FB97C6AAE4BE8
              58A74FB4FE8D6F7C637618688B8E43BCCADEEBA291F255A5BEA02950456C3444
              18739D38C20A9D17B0FE81EA13F88C5A46B074800A81A7AC26897679670B186E
              409A5B9DCB86BCEA268779CDD986B6F81B07E2ABD098A0692C020C1F1A2DF2AA
              B5389547E8088DBAF3BF139C9D4670F9088357D82491C597190E3AE8A0BC2177
              619AA7C5906560034EFD3A913CA60FBB083B03F1556820D05468B8995CD95F54
              5D252AB785B17C733602D569B755D4FCA721086F00E8B9092213594C13EEC6B9
              07CCBF6631F23E3D3B126021878F04383CA60455E529052D1AAA30C0187E561C
              C0311A552C1E9FC9DF853ABE2CFC1C8FB4D295050DC12B1EBFB01F451E650F9A
              47993A565D8C6B4392E9C1EC6137DA0B2B0BE1C5E7AD3C73207F1F33497C37F5
              92A1035A542A2366057B66A4AA5863D836F8F49834BD47CD7DA62BD4DCB7382C
              FF84C1131402C7EF5EA17AA415F98BCFD2CA483E321B9E0E8E9D03E0231FF7B6
              CF5DE01187F8E098504606D73D8D338AD4655F2D44CAC45FA40E680A4400C1CC
              F7E4ACD0E188BFB6E31A539C3C05A89C7A8ECF0C09F38678AB2B10DFF18E77E4
              FB1D2A53B1323D0F42CAC12794D7F3A0646A601259C9E521A3D59C8C4C207148
              D988D7D79715681E8D039EF6E2E9451DD082C18B154E922EB8E082FCA92EBDC4
              BD037D80069F90E38F805C2D0460CB01CD4E80112C0F30F10E0A9ACED23961D6
              287710E0F0A9C31E94BCBC18EA27B3F9D54755FC1D2A8A815799D2E5B1D177F6
              61387338D83BD354C6B18318F217A9039A8D2CB409ADC1EE6758B25560186ABC
              679955A872AAEF1D287FF349C500677A146F1D16F3C8DB8F1CC5E928BDAD51CA
              ED97A798EE9D01EFAA7FE4231FC99A0E34DE6393BE4581DC64126FAAD12EA136
              015059DCF4CE6C1D0EB10CC415A9039AE5D79CE5B33371CD92D09855A022858A
              538138027A55505EE9160CF30430F18843F205296F2CB28078BFC9F0D6A0B178
              8B69510F991C0673C703839C6C37F59B36E42902E7599A90A6799B8FA6CACB0D
              660194A7481DD0AC385C39329B24990F84F75BA1918970883017BDF852197711
              5344BADEF1AA4DACA4E2FA91B2941FA1B947830D8F7E798BE9911F68A1693A18
              F036F334D6E829E6896779D9754C1473B71BE1C8C861BE045F841DD0BCBCC0D7
              2E414536DD4C0CEE16008957380D02A4D0DCC798F5129774657875D14D6ABF07
              2165D6015AD4656172172DE6346D01A4F3504A117C11AA1F591068B9F998C248
              B7A844DBFC0EEA80161111D2162F8539A830A7014EE3904A84471E796432EFD1
              48F96CDAA9B4EB557E0F42515684C36A5AD465FE22537C3F52E73A24A610DE6D
              08BE08D58BF0011CB834926238B92F9E85449E0E68326294D930639B59098123
              4E18E99EA9BE099F5783F52DCE70E56F131715F40BD52B6F84C38216F9CDA916
              26AB65C499429C0D58450DD3A24CE6AE689F05C041B876CB8B8FB2088B340168
              1815E01E86B783BD238919401A262D789C549BBF6CCCF148A3690E5EC24929BE
              1F294FD9111A224C98F7BCE73D9DD5AF5F19D2A343BD7A6474F0DE929B5CD2C8
              A95C5F0B54179226AF0D3C190C651B795B42DE1171084F914A4163EB303BD835
              6E47FB5CB48A15A02215B2BC990504F15B1ADF3B43D18950B192B19E236F84F6
              B1AC779A420BCA7ABAACBCC8CF6401180763E49766976225A445160A6598FCC9
              CD4DEFCF62028BA381E3C189169E329A003405E81D43C4F2EC48CC12EC99CBC7
              B9A26B09B62978786AF5480867F7E0B567AB50596565711AA4DE082D22B4C195
              281DA593CAF2F58AB3CF349FE95072C92FA44526765B261BFB9852787B1D1ED3
              702F8DD8BB9AFB623128ABA7035A08A840805845F8DA65FEEB5FFF9A3FE0A607
              19AF1AE6228C61289F462343D6EAE92588B2CACAE202AC08E535342DFDCAD6E8
              B27C6571CAD06813B91777E5C74736641450040E55BE41F39C6D13F7110DA504
              3A7DE38D37CE1FE894B78C5E029AED04D0A0AD50BDE0BA941592F1CA8BC186A2
              FE5C2E7A3186108F8785809A97555616A7A11A14A1FA946F88889347BAB01F01
              C964AFD13ADBEF28838CDE51E563B3E370C9DAAA6ADE36FD98C3B5D1C8E206B7
              98F4AA6F02D0540004BD65C3AB67B88E09218E2A8B6782B8E0E2F0043FD55781
              39CDDE8DB9126511565ABF86E3C7E3D8CF44CEAB1A8D8E329433163148A3C39D
              A2E355AE50D9643567698F91C421619BE4588F69A15DCA5037FB54BE329A0034
              05D33493A52162F2D400BF699D71CF53603E606ED842C943300D630B7179DB46
              C5564C1A9EB2CACBE25C3636B4AC62D207CDAB1EAB204D63F29051FE6EE20637
              F11B312EF2909B72D84333E6B9B480AABC5E757740D30B1855C294A0BAB1826A
              005F132B5B8F58594CB43441C1483E5E0E421BDA265C71CA8C74BFC722BDEC04
              492F3311783AAACC695643C3CE0A5CE6FB270B83D5BC65B1602518B216338E0A
              A3C808C247CE5E727740C30838CC04A5B204F07BC925974CB626564DBF510026
              9FDE12E7D910F6DEA5537671487C2F01A40799A04D03C0B2D8E8A041F2457E2B
              BCE339A0854C91262487369A4EC8AF939D6D88B330F8CCAB91D4AFCE09405390
              8255A0602B8D02F43C53441A40A50BFD467882CC139EC3F311BCC27E64327665
              C0DC6241E835C47A95C3B06660C7AA4EC66E5E20D915905B7BF1207CE210F991
              B832EA80168991297E0F12EAA9E8592BA81588E0E2551ED4AF2CDB3776207EE6
              0DE37A1079A2F14C249E097352BFBA46497F0968C316168D7358CBBD6CD1D078
              E5498BDEF4BB17D112805BF9EC444CCABD788BF1CA57972D94CDFAB08671B1CC
              B19E47062D041622BD6E597787CD04EBF7208011D2E99021EAD521EE764BBFF8
              7EA45EA059E5ED5E9C44455CBFBCC3A48F0C9A4A0D43C33300622BB953618849
              1F94C2CEB35DB31095F9B27A95C51F6695B70830775ED6A0112E40F34CABB857
              4CB80C6371B4A05763A523F9EC3858EC565F73235BD0214BAFBCC578B6174395
              96EBC0B1EA2CE61BE6B9164DEBAED86D44CE40C3C52A2C5D2390E72060011C60
              EC25EF27F874A29BE17606AE3718AAC13F56C864B0F765E78DC557475A23A0B1
              7F6C7E1DD4989881D30D18E10D6721D06CBF689743117B5D268B89BDEC084D9E
              6E628C733698D37AD5D79D67D8DF8D8046186E180631ADA14D868CF822010D60
              D26DDF58E900438C5BABA78D77314FAF671E5BBC618047D9BDF847896F0C34DE
              0EDB31DB21A000A75BDBC48B431A092C5B30DE13133A67A615789006DA49008C
              F785A6C9A35C61DDD408680030546CDC4DE6E1292D0A1F0D13E719A826725703
              6CA46D9E4DEA2EDCE02923F900630781DF51A23DB2FA955796A78EB8C640235C
              F4BEBDABDFFD8803D32AE874DC42625E044AAF7C019A0EE228E0C00CCD8CB45E
              7947896F0434C3CE1C665BC35D64C80DD208E7A68C5A93390F84A12D5FB7D684
              2649D378F321EFAB215DD4CCB100976F586A0434C200CE352677D50C1DDE03F1
              639133061B7E5E5BF69AE1ADE1A8980F687E473CEF887A9838808CF808F1D649
              8D8046700DA36D26732B2153A29FE07604EEB7D909F0D9D3345A56D6785E1769
              C8EEC1293A7E75A8BF2C8FB43AA831D008CD58756C664267E48A0BA135ACF8AC
              F186A66B0EBCA86E66D3345BA2B27C3A457E1D63936FDFCACD2E4E9AF23C3741
              8D81465817699C8F1A9E1ADEDD902270D2CD6326721760ACBA26763778941524
              0F52166DD319B66DE6B5F0BA2A2BF89B081B018DA01A665E3364783CDC0F135F
              243CF11B00E6246FEE391DB21A3A1D2ADB46D124C008699A0F30B95CE8905999
              483A8AF2EB0C1B012D842628BF1A1382E7C2EF203C411A6E58D234FC7EBB4BE2
              257EDB29E0D0AC625E71F8C499FF78551CFD015F7C311D4F9DD40868344C2F6B
              28F73577B95B886582030E2FBBCCFCC5DCC0E730DABD326E2600284B7C907C9E
              E5E577732AAF73F08A13020F4FDDD408681A843494ADE604C8B02B0A2F1DE101
              B2AB0C4C0D1B74F1C842E004BCCCED0D14E501C66ACBA489832079952BBD096A
              04340D0AA199027C626E5A161BA061C0D268C76736EB6C2D1A238DB698E0699B
              A1EAF2B0FCF885EA103AF6B36A7242BA2F6761101FF57BAE9B1A014DA309AAE1
              8617406CA4C575937DA379C80AEBD8AFE81561E07A8FC1254160A1004BE837E0
              DD95759619F3A13475A3EEFAEAF8DD2868C0B3B5D1681BF1A2C0D234984608D9
              597610869ADF88D9E1AE854D388080815F5E6501451C7383696338E3932E0DE1
              AB9B1A014D43086ADFE95D0386AAC668B0F8201A264E23DD42747CA7E1F23BC3
              64ECFA0D407CE223AFDFF1ECD88E11CDBC09A08AE9C15757D80868219CF72AED
              25ED0834221A14E9C01027CDEEC1A61BAF7BAFE642DAE92A0450F14528BF67A1
              7843383A47BCF2224D5837350A9A2FC1B82847D334AE5B780D8C385AC7A075B7
              CC9F8AA335BE3EE5CE48F014C3D03A00D134A07125D1E828B7ACCE6219C33E37
              0A9A035F93394BBFAC011A8708AFF18C5BDB2657526DF4AD8AB655BDF2020E48
              4EB1B8D72D26519E5099CAAE9B1A05CD90739D93D6B83FD12DBC8621F11AC809
              E9248BB6B94863A8020CE12952E493E664DE69146F0A20C5E18DD0739DD42868
              3CAACC008D2F3A07A301C5868B633A78A183D9612EB4F28AEF26C088030AC2EB
              04CC0DC62833D285755363A0115EE3CC334C071700FB09EFDCD2519E4F58B868
              677B549647B9C052070D65149BFBEC3FA5899386A72CFFA8718D805614D87CE6
              AF510C726D0A68DE6170B98EC9C13554D640E507385660D7119CE6BB41290D58
              915E967FD4B8C64023BC1E67676DB1C5166910D0BCD66D7EB233F0BA90EB5A65
              0D54760063E57480839777589D6579EA8C6B0C34426A9815CD8B5C5E45143716
              D915B802CAC5E37A8289BD177F00E76A97FBC0169B983769997C4D01D808686C
              2EA600D09802AE2684DB4643A2C11A56241FAAD3700E451BF55E0B813C5186E1
              ECDD27DA2C0E4947EA12D64D8D80A6A7090F381F3E77C3D19E32C09406D06263
              FC7677C36D72F7CB381619C5650D975F1DCAB73A5B38063D5B2DD639EC7323A0
              6914D260B7813818ADA2B488A000925E0C793B6CBA6D9B681AC0689A2D953C45
              92D76F76202F8A298097575C1BD438683C10565097595CA58F066B1CD0680C70
              F9C56CA39C44B98ACFB633E45C25C55B2465C84B8BD97656D9882BF235F5DC18
              684C01C347E3681A3B8DA52F5E5C90C66A1C2722ADE1C1A55D5644F3A045417A
              91A20C777BDD14B2ED2AA637FDDC08682174689121EA3335B4471AC08445E24B
              0302ADA479B651DE9AE1EA2EF27906B4E16CC8BBC4E7E371F2486B831A052D1A
              408B4CD84C081B708D8E34CF1A6CA839F4E5B094E6D56843D3B19CDFDD64C5E4
              0C30A47502EAE669EA7723A001A2D808C3C964EDBD27F61A0DC403AC0869A273
              003C1ACBFC90C6C6F3BB9B7C6E8C93D36E039FB2BA799AFADD0A688437F44CF0
              E61F8D4401AC063B14E147B385C26FEFE98E468012BC91CF9CE7B51CDF111127
              4FF0786E925A03CD352AEE6CF31ACD8B45221AEAED3DD71168A206DB4ED95695
              AD8C34CC7ED39C567C7F2ACA92BF496A04B432815D91677779E729266E1A023C
              209AF3DC636396C81F67061C91F868A37864EEB3E5E20531D4A5B50598FA5B03
              4D65266E57499D8102429CC63A4C36DCDC06772E20DED0C46F2E0C50E4C16F6B
              E6D49E3B1C6F00E7B90D6A1534EE1E430E38D1382078B5C7A6DB7073522ECD0B
              AFCC0FA0B1F60186F0F39CC4FD5ABCE2846D51ABA0D11E0B027000118D74F9C5
              8B16E6BB18AEB40B38F6AC161043589AF98C0B1DAFD536CA6813B8D640A325B6
              54E62EBEAF18861AEDB56F2687390A100190215BBCE60E188E4AF743B8820C4B
              402A5B9AB2DAA0D640D340DA6395645678FF29E29C26199EEEB1B9F7A1E140B0
              2BE0F570453E787D0ADB0D705F9B0AAF49F00BDBA0D6408BC6F8901BCDB2FD09
              201CF6C6F73E4CF011CFD361B26786005119DE35B0AB709B28340CBF7484A769
              6A0DB46820CF2C0D02881B3E865778389C26B96A65783251F0D8C0BB45091065
              D8367909366E4846BCB069B0A2FC5641532930CC6BEEC7CE3FFFFCF9CFF31AB6
              4EE2991E267E7CBEFDC318B668480798E16845E53E7288824FBCF015099A2114
              0D7467C376CAF5AB88A381AE16700FD140AB29A7A5BDA7BC80039A616C68D234
              F1C0528674E0B5411345D36C817CD08E87562335DA612F9BCC75047396BD285F
              DAB2CB2E9B3F588E0F39E3F44D5D2F9D014D1C7A4582160D0CB3C3F7886CA700
              A6D1FC63866D18AD6C31C0C42A8B07307603E63D2BAAB98FA605E169835AD3B4
              000D3886A055D1A97834523C7384B7969941EB6CB73CE309701DB800927332CA
              04269EB6A855D06884ED11C3D430F481A7004383D96A40322459FC267C9FDF09
              1EF9ADBC3EDACBE8A56900932E0D29A7696A14B4688C4698C44DF0CE295DF603
              1A4D091E8D7791058F0B30407375D4162A7894C365E47E2D73042FE0DC486A0B
              303234021A3034464380E159C3DC570306B7B745407C1662DC384172EEC93564
              75C4C7010934E5047086B121AA5CF3A28C9E91E736A811D034100145833588DD
              65E5E333735783512B0DE165BFF9D34A0E5398231605739ADD80FC3A029F7C8C
              61F31F4DE3A404946765796E9A1A074D43CD55B64E340708B445C38001048068
              B0B75B848035EFF9CC8495521C7E6509FD9687CDE6935FF6A1CA92D606350A9A
              463A9A73724E3318AB00D340441381A6A15EEBE16703B0C9DF6D6D0E4B8B8172
              10B090320C777FB58767D7FB53BD4EAD945D3735021A2DD04880D81AD90AF160
              C4FCD4DD086F069BD8CD65AE2500D36B8FFC695E0F625E280F60F2C6B3F354A7
              F05C4D86B4B436A871D034C257DABDAA63D879698C2659140C55F313AD627B39
              81070CD08586340DB541B73BE04773F8E2B4DED554176BDC2EE2D8F4A13A79D4
              D734350E1A00680653C181B0F7A000C527063CDA0810DFE4D068BC116A3C2D74
              ADC1E1B0A16E8B0530EE24F69C1B905662C31D7F1BD408686D083E31EB9804DA
              10E84F026D12684320304496499A3609B421101822CBFF0141C01A8FCD8B8E29
              0000000049454E44AE426082}
          end
          object Image2: TImage
            Left = 1000
            Top = 32
            Width = 73
            Height = 169
            Picture.Data = {
              0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000004C00
              0000AC0806000000D1D34AA9000000017352474200AECE1CE90000000467414D
              410000B18F0BFC6105000000097048597300000EC300000EC301C76FA8640000
              2512494441547801EDDD05F46D451506F041B10B036CC1404CEC160551100103
              135B51EC2E5450540C4C40913491B00B4542C12EC4EEEE2E6C01F5FD66ADEFAD
              E178FB9E7311E4ADB5DF9C3BB36766CF77F6CCECD93373FEEBFC7BCDBF72F6BF
              991158670D5EFF9E99FB6CC6723660732AC1CA00FBD7BFFE55D6687315EF9CE7
              3C67F9FBDFFF5E3EF5A94F950F7FF8C3E597BFFC6539EF79CF5BC4A3DFFFFEF7
              E52217B948D9669B6DCAAD6E75AB728E739CA39C7AEAA935AFE775D659A7C6D5
              8815FFB732C04E3BEDB40AD8BAEBAE5BDEFDEE77978F7CE423E55297BA540564
              934D36A9000142FB81F39DEF7CA71C72C821E5D297BE74D969A79DCA79CE739E
              A20C3C404378574D2B038C7669EC9BDEF4A6F2D5AF7EB53CFAD18F2E97B9CC65
              D6B61718780081F09E72CA29E5A52F7D6905EB118F784439D7B9CE554113E259
              9B79850F2B034C9BBEFFFDEF977DF6D9A7ECBAEBAEE54217BA50ED82E275435D
              D6339084E26823109FFDEC67979BDEF4A6E576B7BB5DED8AC0FCBF00ECB0C30E
              2B1A7BB7BBDDAD82E51938C83370001630C401EE57BFFA55D9638F3DCA339FF9
              CC72B18B5DACE60D8FBCABA4956A18CDBAEF7DEF5B8C59C099A7D1AF7AD5AB6A
              BECD37DFFCFF03303361BAA3019C56D020E4791A7DF2939F2C1FFBD8C7CAA31E
              F5A83AA3CE03F6B4B2E7495F998619E88F3CF2C83AD89FEF7CE7AB32020BD51F
              53FEFBC10F7E500E3DF4D0F2F8C73FBE9CFFFCE7AF5D7B4A9641925706D84927
              9D548E3BEEB8F298C73CA600CCAC687C9AD62A5D17A8DFFEF6B7CB11471C519E
              F4A4279D3535CCACA7A108285FFAD297CA51471D551EFBD8C7D6060788A4E399
              44BAE4C73FFEF1AAA18CDC49BC43A60DA6618CCF8C33C2AF7FFDEBE51DEF7847
              79E2139F58CE7DEE73D7813BA0CDD2C037BFF9CD8599B1FDF6DBD75099B3E4EB
              9B6730C07439DA13502C77CC74BAD4052E70816AF54B47D31AA58CE73CE739E5
              2E77B94BB9F6B5AF5DC7AF59F24D2B7791F44100D3C068184DF8CB5FFE520E3E
              F8E0F2E94F7FBA1C70C001056069B0F46982FFE31FFF283BEEB863352B68E825
              2E71890ADAB47C43A40F0218418146CB0002BCA73DED697591FDAC673DAB5CF9
              CA57AEDD0A5F80F33C8E4C181FF8C007CA6F7EF39BDAA5AD2F679930C695B74C
              FC6080110A680001D88B5EF4A272F18B5FBCDCF8C6372E9B6EBA695DE28C6A74
              F2C81FA2997FFEF39FCB09279C501EF9C847964B5EF292357FD257190E069886
              6B88D91230BAE2452F7AD13A0E19BC691F30A5E16B2979A57B16FEE217BF28AF
              78C52BCA339EF18C72E10B5FF8ACD925351430BAA585F76B5FFBDABA1E344B02
              127078C6814533E545FBEFBF7F7501DDF5AE77ADDD595C9B6F55CF83699806D0
              8E104D7AF2939F5C1EFCE00797AB5FFDEA0560E2F08D22604907A849C3C27B97
              5D76291B6CB041D52EF1A3F20D1D371860014AC33CD3084EC357BFFAD565E79D
              77AE8EC300D23612907869A6745DF10D6F7843D19D1FF8C00756FB0DBF34E1AA
              6930C0BA0D011AF0AC07FFF9CF7F96FBDCE73E8523505C97D7EF00C7D87DE73B
              DF59C72FAE1D69F220CFABA695019686F1E35BE698EDE2B5489A10B08896F9FD
              96B7BCA58E592C7C5A15A012E25925AD1CB09FFFFCE7E5A0830E2AC6335E876E
              6381254E0834DAC5A9C8CA3749D03CC0E13923686580018056B0A75EFCE21757
              374DBA58DBF0F025EE5DEF7A57F9EB5FFF5AEE7EF7BBD7F14BBAB4330AB4330C
              305DD2AE91C6B74483000B181AA64B4AA76101495A9EA5AD9206014C83D2883C
              0B35F24F7FFA53D973CF3DCB139EF084EA9F074E7885004BA80B9A59BFF8C52F
              D699D598A71CE9DD7CE256418301A6611A0500042C1AF3B6B7BDADFCE4273F29
              0F7FF8C3AB5FACDB48F91227FF6F7FFBDBF28217BCA0B0C19816E294230CDF2A
              C3C101D3188D638802CB2CF9D4A73EB51AA04094862714FB0B7008385608279F
              7C72B13749EBE441F224F4BC0A1A0430826BACC6FCEE77BF2B3CA5BAD6652F7B
              D96A7FADBFFEFA7543161878F087E4CB739B666FD25EA6A5D1461B6D54ADFDF0
              AD325C18300D431A254404F71B1034E5ED6F7F7B056BE38D372EECA82B5CE10A
              6B1B8A1FAF3C5D1A95C627C6A7FF95AF7CA57A3D00C74DA42EFC2943997E23CF
              28697D840B01060C8212C0F88408A88BA16F7DEB5B4537B2EEE3F8331B4A4F1E
              F9E621E56B38D2353FF399CFD40D15BEFDEB5FFFFAF5D08AAEAA0EBC881CEA93
              679EBAA6F1CE0D186108C2986C85F4CCC6B2F401D89DEE74A7728B5BDCA2DA4E
              0046BC14D3041A970E0C8D4FC836B3F5F6BEF7BDAF3086775A7360C5A25E7E7C
              91D3B3B8BE686EC008ACF1DE602BD4CF7EF6B3C220BDE635AF59EE75AF7BD5B3
              13D2F113DA335017155C9DCA915F599EC9E0B731F28D6F7C63D9628B2DCA565B
              6D55D65B6FBDBA6790743C7DD1C280D1324218D48D55DCC8F7B8C73DCAE66BB6
              F2352EE0681CC101973CF2CD4AF2A1E4F5AC7CF953B6F2C9F19AD7BCA63826B5
              F5D65B973BDEF18E55BB018BB72F9A1B3042AA5C031C8A337B7139DFF6B6B7AD
              A68234D4155443BB71F896A1949950593FFDE94FAB610C301A973ABB21DE4568
              6EC054023480EDB5D75E75DB9E9FCAF894F8847857454063EB7119318C5FF292
              9714F69E0D13329057B82CCD0D18C1BC2DE38685B15D20F691785D4557F48C67
              59E1E6C9EF25A9571E5D9447E48217BC6071B40A8864132F7D199A1BB054FCF4
              A73FBD6E68DCF08637ACB6550022749E97116C91BC340C70B49D96BDEC652FAB
              9B260C65F17D68D9DC8069C80F7FF8C3C2D56CFCE2D302120214C2B36A523F02
              0C02DA2B5FF9CA6275C1688E762D0BDA5C80110820471F7D74F9DEF7BE573734
              7810560DCEACF59900F6DE7BEFAA65860D60917FD6FCA3F81602CC41DD9BDCE4
              26E5E637BFF9DAEEB8AC20A384EB23EEF9CF7F7EB5CDAE77BDEBD5CD5FA02D53
              EE5C80A9C876FDCB5FFEF2BA65EF8C03F55F5608E5F64DE90D561E9650CC0C2F
              D5A4B44C5D7303F68D6F7CA330549DC2D11D09F6BF08584039F1C413EBE509FE
              37E32DD092B64838376096404E4373317B73C0021A41A26D09171168D13C6440
              AD3CCA3241710438F593714CFCA23437603CA0FBEDB75F75317B632A2628029A
              505C6625CF43907AD497B2BD2471EAF52C0D7DF7BBDF2D6F7DEB5BEB51512F58
              7AF22C12CE0DD81FFEF087B2EFBEFB5601188684629B79B3ADA07E2F22D02279
              00450EF5CBEF591C19B882D0431FFAD07AA344FA323437601C79CF7DEE73EBB1
              237E2E421114311CD93FE208BD8C60F3E665E6A83B32C94F0EDAC515956D3A71
              D216A5B9015311B3E2BAD7BD6ED97C8D678200C00196E5881B6867840BD9F9B3
              DBDCE636E50637B841351FBC4064E976CF7BDEB31EF55CB63B6AFB42807DEE73
              9F2B76A42D8F8C0B01ED79CF7B5E5D2E5DE31AD7A842AB6028CA3090AE676789
              1FEE8A57BC62F58591E9831FFC60F9FCE73F5F870FDA27CFCACD0A02D2288774
              B7DC72CBC280F5E60868B974A31BDDA8701B8B1B0A2CE5924388C8C3796909E4
              5A8E38F2D8A592C6068B3CE2A52F4A736B184109C116D30DED487B6B04E1F574
              9C1290E216156A967C9123BCBA240766AB619FFDEC67EB751BDB737A822E4ACE
              E459249C1BB054E21892634B766F8003C4F7BCE73D85E7F3DEF7BE773D8B1FDE
              214280210078718603B74CAC3EC493C70E1399ECB2BB7D92F865E4991B30E300
              F53EF0C003CB861B6E586813A191B1CDB891DB1ECB08362D2F6D0100592CD778
              2618A7EDF95780B9DFE47E120D9B56E62CE973034650E01833B880CD4AE26899
              7B8D8CDAA73CE529D5133B8B008BF2E4C5C9FFCD6F7EB318AF1EF7B8C7D53B00
              E26898DD2B66052001264EDA32B43060BC00C6AFAB5DED6AD563013402EDBEFB
              EEF5E0083F94DFCB08372D2F0D5387B1EAA31FFD68BD1A98F5AD78CB38A60E57
              F51906588434C8DAF83023124EE3842F7CE10BEB5563F13451FC50142D730C81
              36DDFFFEF73FDDD869BFD2CCCDFCC918B6AC4C736B581A6F5CF0890453B6EE48
              C308E38ACCE52E77B9024CF1E11F224C9DBE52C09AB779CC7F9F97FA852F7CA1
              1C73CC31F5061CC0BCD065E5581830C2DDF296B7ACD7F9084918E4B686BDC1FB
              DDEF7E75ED16E19715B4CD9F32A3612E4D5CE52A5729B7BEF5ADEB5EA4742F8F
              99E35218D78EAE1A80DBB2E67D9E1B30C23812E0DCBC25902DFA7666721194D3
              8EBFCCE25CA3080F4C34AF80A3F8C9201E0066C9F62EB9F8D44306F51B260026
              1EE15994E6064C4516BA4061F7B899A6EB45105DC3E68899C996BD06C9A39180
              F3DC07014B794C0A7E7B03BB17A4ECC8E28EA659D201645DB20F191602CCB171
              F4B0873DAC5E472624D200A14D544B243E7F6B388DD308247D59D270A43E07F4
              CC905E1E2D5276EA01A68BF96ED249C38FF02C4A0B0166D7C894ED7202ED5279
              84146A8086F8FA0941D3386978FB202F41E39D19338666F251B67AD429A4EDE4
              34C6E197BE0C4D052C150B55440817A50810F70E418C1578006813D51B7703D7
              E762C4CB8B4FD807A94F7777C38D26DB504EF96454A790B3D3813EAE1FE928F5
              E3F18C4F380B4D042C05264CC1AEE0B17918ADD2C427F4FCE52F7FB93CE4210F
              A95F3321A886CD22CCAC3CEAC22B746FC9CB1977B5F9D8638F2D366EF0D1C441
              012314A2FE84D370FEA5F7BEF7BDF57308F1E94B978607603EB78087161AE78C
              6349535E5F64B6E6B0A4450053AEFA85A1BFFDED6F7523D71759EC4D4A47499F
              379CA8610A8BEA03C5DB3145F381B17980200E1F21F29B5D64F67413CDDB378E
              A51CBC7D919D6D06F2EB5FFFFA6292892C293F755A3A1977CD969648E4246FF8
              E609A702A67060D1203B4616DD2A761D59A5D285A9D4B331EEF297BF7C616933
              2F00261E85AF8FD0213E47AE5C8BD6E568725B2ED950F62118B00E26E3595496
              A980794B0AF7F6B86FACDBEC490241C5C094E6995F6ADD75D72D3C1604738383
              2FCA5B55069E3E892BC9AAE2473FFA51D1F5BD24E5032972A9175984BBDBD4CE
              A678A50967A5A980A56205DA1055E9B6DB6E5BEF3AB682E15339F0F8A600C6ED
              C2371670A52B675952AFB28C93B6FD744DC734AF739DEBACF5E7B775E065C432
              41DC28F102932E2DCFB3843301A650C48FCF9B6A3057B83821A25DC04276954C
              08C631C7CECD4E2D2FFE65C8CB510F07A1B5ABD5454C8BD4231DB0EAC16F4801
              D6031EF080FAFD0B7CD28508DF2C3415B014624672A9CA12C4967BE2852A16AA
              D8DBB66C72FEF5CE77BE73B9D6B5AE55FD654917F6457FFCE31F0B5BCF92C84E
              158726198043260438C38A381A063C7B94860EBCF3CA321130152A50C1BA9775
              9941DCBA4C9CCA857890674739CD4ABFFEF5AFAB27C3E93FF149172E4BAD5C4E
              19BAB4E5C283815FF70752EAA0F9C012E7935C5C415C53DA109EC897DF93C299
              01F3F9505D80414AA8B650C0216F8D4B853941A03400AF46CE23983C9328E5D9
              8CA1FD8C53DA4FDBA491A55B9FE59C19DC44C431A07CBCC0F43C0B4D050C10DE
              109F39A06E7FFBDBD701BF2D5CA5E1E38935BDBB0774873BDCA1F24AEF0ADFE6
              5FE439659A25690DD0CC808600F22AB30B841D2D8B71B621B32865E09D952602
              A61040A8D8A5812B5DE94A65B3CD36AB97D6A585C2E36891CF5619331894AD9B
              BA6FC0D4A94CA1B135C7CB2DB4BDB05160E8B678F9C9CCF6917F9E702A601AEF
              8D312900C6CB4ADDDB4A221CFB8B53D114EE0A8B8158A3F0E201BCE7BE4899CA
              E74E72D6C3969A75AE4B61EA90260C31607DAD9386852769B3865301F30635D4
              C7361886FCF85DC054C61EE24A41962AF62B750F42238D530EDE654959A1BCCC
              AB5EF5AAF5A6AF6EC70B4CCB52AFFAF26CC3D7D86A875E3C92269C8566068C86
              D9B8B586041820118155E8323BFFB973583CA03E546B7D47088D93079FDFCB92
              F2D4AD3C2FC1C0EFB7B315DCD596407A8374F142A4DEDD76DBAD3CE8410F2A1B
              ADB9A42AAFB292267D1ACD0C9845373B07082A6A0B7664808F9FA08C5A5DF3C7
              3FFE71219CD9925004076E9B6FD167E5210D454EEE185B9109800BDDF28D96A9
              034FF839068C5F6C442F31E9C259682260A9447733FBD9D136BB683CD032BE71
              E75837E61BAB5604B4CD7EA0B30E78094370611FA46EE529DB84A41E4B3632B3
              E8ED5AB934265D7DE2F11B5F4D4CDA6225226D1E9A093080A848DFCF5B4B2584
              30D03A39632DC7D6617D9B890864598497E0C8F3B2A4F148DD8857C4BA921785
              46F362B0EAC9157B2B755A4679A11CA03CB1F2276D9670226029800B850BD8B8
              946EE50D5369DE0BD63D63D0A2D6E608AF86B18CDD96328608C9401E3D80DBC9
              6607C3559C71D42AC3E52C72A67E2F8D464A6327E20DF8E19904E254C05C1536
              151B9FCC920AB3DC5031322BEA0A0EA5A8DC3AD23EE5280337022D1B761BA83C
              673D1CBD325BFAED832226005AE79C07D90C25422B16DDD290E1A56A53C0D7B6
              6E2F525E682C60112A1BB3E9F3E2655609D57774D398A1FB89B729C1A1D76AA3
              F8BE891C6448434D346646E68CBA6895651A800C177EE395E64503CBC7DF00AC
              1C602A53BADF783C77E97480C980199302647209DD87B7F9C48D47D2A509CD82
              A672DD15AF7C4E583B6B6A7C489CF8BE49E3533E597C85D3E113967EE474FC4A
              57058E053AB9B5513A23D7FA9879C115A51D260EE9F894196A659F0A98B597DD
              21BB3FDE92C2081AB5A65D065A15799BBAA8EE9BA54A5B599FCFEAD3A094C943
              622FD4C4A49B454E6319508C57915F5ECF2E3DF060F0D8EA495E3CD384BDA96C
              7CC2D421AC80291C010293864B74844817D31D552AB3747C6C9F6C86E097C607
              66AD66E9C1D6C12B5E59E3A8D514822BDB98937C09C7E54FBCC63B77DBF5F08A
              7FDDEB5E57BF57666C55FE28B9D88DAC01E6912F23580BA7CDA943580133D0F9
              A13048CB6889C1A7E5D09CE590343C1A400806A033F0C6AE08C0F6B2E5C567D6
              C6CB378A8005EC849654EC3C5B67E293479D791E17725C5A8D98AD693C79938F
              51ED6070FB22DA72783A689C59DE24C7F835D3B3E3981F2D6F052C11186D4711
              D8C259B75239DB45BF0F30C62E1FF1C8DFE8487E7B80BBAF3981A89B6A78F893
              DE0DA5274EE3FC95198BE20CDC40131F9E49A19748C358F84C0B6523C0E90DC6
              36B3BCDF6D3978F8EF74DD9BDDEC66C5D86B22800593497CCB5F0173688303CE
              7AD0004968056124300DF406FCD6089A6590B431EAB7EE2CE432E63367B75167
              65C82FDF28A259E235029FC3788E8D5BAF2A4F9A32A47B9E44666C673A8C9F5E
              6E78E5354CF09539C3EF77D2846417A7C7BCFFFDEF2F40D3BBF410CE525A892F
              540163991BAFD82CEEEAF86DCAD5E7312A909679260C1BC65BB453234DA334D0
              ACE39BF934CC1F72C20F08614BF8131FD0E4E70DF5120CBECAD5187C9E935F5E
              CFE285215DD270A00D9911A529971B5B6FE03DE996A53C716658A059A1E89A14
              A45B87F22A604E1F9BDD8C59C0E2FA300EE98E6D2685FBEDF30B1AEAADA98C50
              0A33B83AAE6991AE42712179E5F1BB9B260E996068812EE9C5285B3C9217A98B
              0C6D9A74138EAEC7B5638B0F8F3A85CA65177A19CAC52F5E7942650999445606
              BEE1230E5F972A60348673CD5F55305B30F41CC954080193290270A768B4B14E
              C1F88416E8A6EFEE9B949FB6088D53BA38A14CFF3C1D96360EB0986C004ECBD9
              44BA859766C75DBC17A40C96B83A3D879403301F1DE99A056C49639CCD5EED41
              DA82C8A52DCAA3E186042F4C5CCA6EC30A98598460CE7359B41AF4CC8C0A5178
              9BC173DE188B1E50E2F01A2B00665A4EBCB41001BD102FC62E94DFDE32802CDC
              FD551993099384D169C6D220651B1381E659795DB90C199647010C8FF2C9616C
              D5837457139934244D79B413400EDA30686DA6785978BA5401237404A0963BEC
              B043FD5E740A6C336984D53E5B2B03A24AF1985100ADF1F28A6B8916D32A71EA
              14A2D46D79A3DBF0B9254E7A28E00588C40B954DC33807A361F81130788C8D73
              313BE4E1E5309BD370975099102C0083BD4D9CB40B6FA802A6D0447813C6AFB8
              4564222002822508578FE93B8D975FDA24C0E447CA4B5D6D28BE05CCEFA42B5B
              1D7E7B1676899670720630E9F2E0177A017A12478197A247198B391B01046C60
              1A87ED47D8239057392D55C0D210A685F189A78106D8F5519131C75B9211A0BC
              95B4A86D94676F51B76116845F9E71947A936E9622A859527908CF28C1932761
              0B98413FF9847894C1AEB214A23DC64CC718743FCB3FE3B81E4319CCFE8C5679
              E46DA90296080D3643B267B86B0C80DE8E0AD8391A6387C6F2C3B89306099501
              6C829B690CCCE22691C6C89B9086A91711B64D9B548E34EE1C673AF8E1343C65
              4A4B39C632C3094702CBC02D11A77A4C5E8E3F58E5E89E86155A4859E46FE974
              80B15730AAD86D35A770D82F846745DB62F7264C0EBA2C30A5A540B39C4AD970
              E9AE491B15A65109D5E7500919343279DAE7C475439304C0B9C9CDB0CAC4236F
              2BA7E30E6654ED70B559BAF14BDB4C78800728F3A66D9BB2D05AC054C042B77C
              A0A2FE0EA4B7258ECFCB6AC060AC7BAA883D43106F415E159BFD58CB2A67FCA9
              6012255F4263A083C68E5F2A4FFC28A1479569F6E5FF320E71D7E0915F486643
              84327D37D12CAF3D067C5E18ED65F4EA397A95B1509ABC5D3A1D60A6656B4815
              B3D6CD18DE9A19915D66E798BA024EE521C06998B74CCDB98A0DAADDCABABFD3
              20F9014FC37909008657F96DE8791C199BAC833319295B7E943C89E306B21A60
              C658647BF98612C391DE6369983CDD702D6012689553C7D652660D768B8D04FD
              DD446071CDD5638C182588A99DF14AC32CAB5A1EE577490380056CBCDE34A391
              51EB77F8DBE7C47543E7C42CEFAC650D07CAEEE613275FE24D6CBA270D04A289
              8C0D481E84B74BA7038C8DF5894F7CA2FE953D5DD35209FAD456A1664D06E4A8
              C2D27083AA2D2EAA1DC1BA95B6BF934F1C1BD0946E96D485DA34E993E8F0C30F
              AF673ECCE0F28EAB5B99CA91AE4D34DB6F6D9286E417378A4E07180616F3873E
              F4A1425B0CF866BB142A5D810AF7DC92B74708FD5FB7026E9BAFE5ED3E27AF31
              537767AD7B51CAEBF28EFB6DC2B0C230644C6AB0FCDA20543E0DC32F8EBCE292
              26ECD27F01464D65C4A8108DF11C02560A4D5C78C49B5D9921B3D862C927542E
              F7B22589E1A09D34949BBAC685667660B5264997573D6D9CDF2871A9872C89EB
              86FF05188614A200CF42F1E308C82AC167469587BF2CC04B03BEB02D039FDFF2
              197459E2BA09C000278F3484AF257CCAC723B4D9611D6BD2C2270FF23C8EDAFA
              C3236E52BE918025F3AC615B8931D022D672C3E0AB0CE9C2AE206DBC898609A3
              8B98A1DB49A39B4F59C9EB59BAA18097C518EB77F7E5E0EB837A018C20DE3421
              19AE0660B329C0C4699C46E0EB52F259D3318E198E4C033BD3F284DA7C294FDE
              A49B30B86F18AD8913B6F9FA78EE05B056700DD6A500668A6E1B07BC5668697E
              6B187B08B1E5742DCB30E9D2C6E553AFEEA84E4B36DE524B1C7952AEB04FEA0D
              308DD330C2026CBBEDB6AB47CE35CA2C344A6879C4CBE35687CD085A298EA1AC
              3C80F8DD25E5CA2FDD5151FB01EC465D19AF34F93DF749BD0116A1086911CFE7
              CF43AA4100919ED033D228248F45302F8331285D3A4B9C6EBE6E5E9BB8AC765B
              6966D77612C2DB27F50A9886210D70A24703680C50082D4D18124F5380EAC08B
              0B079C7F9668D68416F8F2A0E411CA234E28AF0535D0F382F048479EFBA4DE00
              D37802129C675317B144A26904D630614BF220797463FE29CB2E3615B00196F4
              369F676009E5F59954BBF0363AD4D3A6E1E9937A018C401A26049A35A7C3B716
              B2B9C22C5EFA3832685BD65852D136EB570B648D074A375FE285EAE29291377C
              A3F2246D99B017C0021641028CB76E796399632CD280A4E10BC92BDE068A89C2
              1959E0F16B19C027E5935739D6AF00362B0F397EA9AB17C014D4A5AF7DED6B85
              9B8707C2B8A4E15D1EBF69883420F1883829C4E3C137053060E21B47D6BE3492
              ABD9EA601C5F5FF18301E6ED3B52C0E2E7F9D070D40A8EC76FF134CCC117671B
              18A18C574668D28521F9E4F1DB4112DACCEE9BC50727CF3234186034C79BE7EA
              A1611A885A61DB869B196D73015717CBBD4C3C34705C3E2E289B278CD6333560
              1A48534CF5E37660F020E30EC01C24E1EDE4AA9687F701589380F68D0C5B638C
              D6333D6016D3DC2D363626359CE3D2B8C50C3170DBA0A0590EF93213E4056C4B
              34583C2FAB3528BB8DD1DAF20CF13C4897D4585AC162671A70286AB8B8518DD0
              AD1C8231D0DB7CE026B7A9C154B0AC024C375F007374D48921FB0E677AC0AC0F
              751906E9B88603C21AD2E6896E656604822D3BC62B8F6F17682F443EF1EE05F0
              C79B24AC2AC40F4983685804765ED417E2A6BD7D7F34DD3864A6E36DA05D560A
              067200A6BC51A1CF8E3ADDE384217047F1F4193728600EA9D93A635E4C6AB8B5
              274DE1CFA225BCA9B6F818BD4E12D1A46EA3D3251D9FD28D6D9E4CEAF6DDFC8B
              FE1E1430FE2D339F41DCA583AE9069B47D508D76A6218DB60BED2FC8334B4669
              4EF2DA947544CAE462AC1B056EB7DE657E0F0A18A08C2FD694D6791AD40A9B46
              B3F235981961ACC3E33E90701460ED18C6976FD10D34E59F29014B8358EFBA0A
              EFA9C66B90B04BB6F59CA6A18DBA24FF3EA3D772C76E741784942F9E1FCDC607
              D0942FAE5B7E9FBF07D53097A31C4C89A5AF41ADF01AAE81C63AFB8AD69E0E13
              3B9664C2B0EDA63BE269F3798E763A6669E3D70116E58FE2C5DF170D06988D60
              3E2EC62810346694D040B3C566D7871D66FD083C6B4AF61B008C6BA3F28AB32A
              B0076A658017891F8A06038C6D651C621A30280133AA3189E7D3727A90FFCCE5
              08DAE50C1AB046E50B205613CE63D8F51EF752C2DB473818606CA318A3D67801
              A62B74BA96F1CE2C49C3EC9E1BBFE403C224C0E4B369CC2D84B75B7EDFBF0703
              4C97D4CDCC90D687D31AE3E41097B44D1067CC3810391E013D2AAF7860EBF6AE
              1B723C4E02B62FE006012C8DD1CDAC079DB520F0A806E115EFB8B74538F3C389
              407E3403FEB87CE2F15BB4B7138BF8216930C080C034707ED40CE6371AD71897
              0F38039911AE01D21A2E6E8076354C9CB2DC9E63C3992C8C77E3CAEE337E50C0
              2C8B18948E3019BC4709AE5B01C462DBB8E7E281639500A36101A7CD9B38AE1D
              17CA4C2CC6BB9667A8E74101632399BDF8C3C60166DDC8BAB788761085C7950D
              E62421C068D2B8C63BB5ED98006F086D9CC43BAE8C79E307012C42F8C2000FAA
              CB5A00EB3688A6201A065C0B6DFE33B7E2E2DA497ACA148A539619D2E9485D1E
              E8D286A64101E30935D339C9380A308D6B1BCF9DAD8B1ACF8C4BD11A80E20DC9
              631636A9701D79295D9EF0F61D0E0A9835225F9705741ADF3640C3FDA62D8C55
              268881DCA2DDF51DE3129E5160F8D01AD70E1F9A97A20CA4BC216950C0CC768C
              5007E4EC19761B449B80611C723C00486E6270267AE64CECE601A038874F7866
              AD0EBC0CE50C0954CA1E0CB080C179E864A0A3E4BA652A6E43DFEB01AC8D0C1B
              B3D687DCD5010C402DBF6717E275459BBFCA1DC583AF6F1A0CB0CC7E36426885
              933934615403742F7CB48AA630462DDA59FEF85B3094E5B72EEC0C99B3F55ECE
              997ED0B7D7E8CDB3958C49B42727798080D2785DCB72C8406FA16E3F338B6F60
              00117F28EE205D9D16261E90791E2A1C4CC3D250E3934D5AB3194F8486000A08
              428D7453CE7932E7F401865F37B63E0C3F3EFCF2F94482CFDBF0F9D35A69F856
              418300A661844F437431173B19B1E21040F10080DDE54EB6752763D50A81B19B
              2BD278F1C9278F25174F2EC7A1BADA34E943D22080115843841AC913618CC94E
              B638E91A8AC7D9085E0A7E2D7C7EB3F88182073F3EA1E5133F3E73C218873FDD
              1FCFD0B412C09CDBB73FE90C972E072C0D0380D02D5FCB1B963E8018AE80B19E
              4C9793073FDB2EFE7F69E2E591A6ACA16930C008AE311AE2262CAF8281DF769A
              2E261E8FD020CF9E72FDD96F57F96CFFF389C578158FDFB61A7734B734A0C449
              439E87A641000314227C1A651CF3D15C9F6A11275D880760B4891F5FC30DE82E
              7C322DAC2DF1E293461BDB8F79885F250D0E98C600C6CEF6F1C71F5FD85ADD6E
              6910B78ECC07425C64A59116E0DC3DCA001603376E6FE397F855D320806944BA
              5DB40368EC269ED47860F1B0D558F6663C7B8B7E03CC52C93E2553049FFC6EFC
              FB9A2613455755CFAA6930C002148B1F081ACC80D5785F1D30BB692CCDB176A4
              49B6D5C41BF39816014C19E25DFC62E4CEE22B53F610342860A67B0D0512C0CC
              6E7CF7C6263BDCE2344A9C7314BEC862E633431ADC792FAC17810F741718006C
              49844FDE55D3608005A4B6413C11AC780B6BBEFBF0D8F430C6D128405AFAB89C
              CFF56C13381A66FC3231F8F2C0590E305A411B800234CFC860CEEAF75D08F134
              C70D361BB2F6220DE6AE02FA8307595BE243B6EDE4759682E68A5B350DA6611A
              023421A03CBB52C35C705247B74AA3A5F39EEA92964F4EFCF80686B18AC671F9
              D0285FCFC3237FCA95D7F3AA6830C000A41169D089279E58FF9E9B6B356C3247
              9B8C61D2913362CC0D138299D0A2DD02DCDA325DD22CABFB9A41B975925F3DAB
              A2C1006BBB22F0F8AF8044736CBDD112DD519A863B7CC763C1BAD71DC5B97BD4
              6AA10B0CBE3BC6254D237971E50738C0127A1E8A06034C439086F3D3DBE1B1A0
              663218B4DD3E939686B1EE9DF5A245BE706282A061010CAF533D6EBB996D4D1C
              AD2D263D650D190E0658AB61C6201B210E8CD80977BADABA52174C439912BA1A
              C02CBE7545E31C2D04003EE728981FD69C964778BC1475850FEF903408601A81
              22B8C63244698E81DB47DBD858B4459A314A83AD299D93606FF1855977A69BE1
              E3ED3086994D9DD891471DEA92EE79681A0430427BEB1A8B3C6B9065913310AE
              F9D136EE65E9088F93D3CEDB5B11D8FCCD514FE5C9EF64A2C5B70D62E5C8072C
              21C237340D06D828C179552D8338FFF8F7351250C6295FC7E36874CCF3B0C30E
              2B3EC3A0FB4AA381429B258E079C25D792A3003396D122BE78862BEDC0477B74
              53171A74491B22C63437DA8C5300C3679F1398C63F33A4B855D3CA34CCBAD298
              63C0F7E92A1F6DE34C34F03B84C2D2B7F8D6159DDEE1A67648D861BC80C2DC70
              2F09A80CDAC4AF325C1960BA1EA24D4EEA30643DD33A803133D85D344A1C4D72
              8A87AF5F77A4718C59635C4E65AF12A8D4B532C05448CB8C5B80029E13842C7F
              DA6202C013C2E7031E2E77E131A6E9C678F14817AE9A560AD8A4C6653C3BA380
              98245B9BF63F03582BD4FFF2F3D980CDF976FE0376E8DC56C41B578000000000
              49454E44AE426082}
          end
          object Memopemeriksaanfisik: TMemo
            Left = 136
            Top = 40
            Width = 809
            Height = 145
            Lines.Strings = (
              'Memopemeriksaanfisik')
            TabOrder = 0
          end
        end
        object GroupBox35: TGroupBox
          Left = 0
          Top = 736
          Width = 1081
          Height = 89
          Color = 16577248
          ParentColor = False
          TabOrder = 8
          object lblpenunjang: TLabel
            Left = 16
            Top = 17
            Width = 137
            Height = 16
            Caption = 'Pemeriksaan Penunjang'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbllab: TLabel
            Left = 16
            Top = 33
            Width = 100
            Height = 16
            Caption = '1. Laboratorium :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblrad: TLabel
            Left = 16
            Top = 57
            Width = 76
            Height = 16
            Caption = '2. Radiologi :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edtlab: TEdit
            Left = 128
            Top = 32
            Width = 945
            Height = 22
            TabOrder = 0
            Text = 'edtlab'
          end
          object edtrad: TEdit
            Left = 128
            Top = 56
            Width = 945
            Height = 22
            TabOrder = 1
            Text = 'edtrad'
          end
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'FOLLOW UP'
        ImageIndex = 6
        object GroupBox29: TGroupBox
          Left = 0
          Top = 0
          Width = 1430
          Height = 169
          Align = alTop
          Color = 16577248
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          object lblasesmen: TLabel
            Left = 504
            Top = 8
            Width = 59
            Height = 16
            Caption = 'ASESMEN'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object grpMENUFOLL: TGroupBox
            Left = 1080
            Top = 16
            Width = 321
            Height = 57
            Caption = 'MENU'
            TabOrder = 0
            object btnSIMPANFOLL: TButton
              Left = 16
              Top = 16
              Width = 81
              Height = 25
              Caption = 'SIMPAN'
              TabOrder = 0
            end
            object btnUBAHFOLL: TButton
              Left = 112
              Top = 16
              Width = 81
              Height = 25
              Caption = 'UBAH'
              TabOrder = 1
            end
            object btnHAPUSFOLL: TButton
              Left = 216
              Top = 16
              Width = 81
              Height = 25
              Caption = 'HAPUS'
              TabOrder = 2
            end
          end
          object GroupBox31: TGroupBox
            Left = 536
            Top = 24
            Width = 537
            Height = 145
            TabOrder = 1
            object lbldiagnosiskerja: TLabel
              Left = 184
              Top = 16
              Width = 227
              Height = 14
              Caption = 'DIAGNOSIS KERJA, DIAGNOSIS BANDING'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Memodiagnosis: TMemo
              Left = 16
              Top = 32
              Width = 505
              Height = 105
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              Lines.Strings = (
                'Memodiagnosis')
              ParentFont = False
              TabOrder = 0
            end
          end
          object GroupBox36: TGroupBox
            Left = 0
            Top = 24
            Width = 537
            Height = 145
            TabOrder = 2
            object lbldaftarmasalah: TLabel
              Left = 224
              Top = 16
              Width = 103
              Height = 14
              Caption = 'DAFTAR MASALAH'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Memodaftarmasalah: TMemo
              Left = 16
              Top = 32
              Width = 505
              Height = 105
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              Lines.Strings = (
                'Memodaftarmasalah')
              ParentFont = False
              TabOrder = 0
            end
          end
        end
        object grpRIWAYATFOLL: TGroupBox
          Left = 1072
          Top = 169
          Width = 361
          Height = 732
          Caption = 'DAFTAR RIWAYAT FOLLOW UP PASIEN'
          Color = 16577248
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 1
        end
        object GroupBox38: TGroupBox
          Left = 0
          Top = 168
          Width = 1073
          Height = 169
          Color = 16577248
          ParentColor = False
          TabOrder = 2
          object lblplanning: TLabel
            Left = 328
            Top = 8
            Width = 430
            Height = 16
            Caption = 'PLANNING / RENCANA ASUHAN DAN CATATAN PERKEMBANGAN IGD  '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object GroupBox39: TGroupBox
            Left = 536
            Top = 24
            Width = 537
            Height = 145
            TabOrder = 0
            object lblkeperawatan: TLabel
              Left = 184
              Top = 16
              Width = 75
              Height = 13
              Caption = 'KEPERAWATAN'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Memokeperawatan: TMemo
              Left = 16
              Top = 32
              Width = 505
              Height = 105
              Lines.Strings = (
                'Memokeperawatan')
              TabOrder = 0
            end
          end
          object GroupBox40: TGroupBox
            Left = 0
            Top = 24
            Width = 537
            Height = 145
            TabOrder = 1
            object lblmedis: TLabel
              Left = 224
              Top = 16
              Width = 31
              Height = 13
              Caption = 'MEDIS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Memomedis: TMemo
              Left = 16
              Top = 32
              Width = 505
              Height = 105
              Lines.Strings = (
                'Memomedis')
              TabOrder = 0
            end
          end
        end
        object GroupBox41: TGroupBox
          Left = 0
          Top = 336
          Width = 1073
          Height = 489
          Color = 16577248
          ParentColor = False
          TabOrder = 3
          object lblfollow: TLabel
            Left = 504
            Top = 8
            Width = 71
            Height = 16
            Caption = 'FOLLOW UP'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object GroupBox1: TGroupBox
            Left = 16
            Top = 144
            Width = 209
            Height = 345
            TabOrder = 0
            object lbltanggalfoll: TLabel
              Left = 64
              Top = 16
              Width = 73
              Height = 13
              Caption = 'TANGGAL, JAM'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
          end
          object GroupBox24: TGroupBox
            Left = 224
            Top = 144
            Width = 545
            Height = 345
            TabOrder = 1
            object lblrekomen: TLabel
              Left = 155
              Top = 16
              Width = 230
              Height = 13
              Caption = 'REKOMENDASI / TERAPI / RENCANA TINDAKAN'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
          end
          object GroupBox25: TGroupBox
            Left = 768
            Top = 144
            Width = 289
            Height = 345
            TabOrder = 2
            object lblnamafoll1: TLabel
              Left = 108
              Top = 16
              Width = 77
              Height = 13
              Caption = 'NAMA PETUGAS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
          end
          object grpfollow: TGroupBox
            Left = 16
            Top = 24
            Width = 1041
            Height = 121
            TabOrder = 3
            object lbltanggaljam: TLabel
              Left = 8
              Top = 16
              Width = 73
              Height = 13
              Caption = 'TANGGAL, JAM'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object lblrekomendasi: TLabel
              Left = 11
              Top = 40
              Width = 230
              Height = 13
              Caption = 'REKOMENDASI / TERAPI / RENCANA TINDAKAN'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object lblnamafoll: TLabel
              Left = 12
              Top = 64
              Width = 77
              Height = 13
              Caption = 'NAMA PETUGAS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object dtpfoll: TDateTimePicker
              Left = 312
              Top = 16
              Width = 105
              Height = 21
              Date = 44349.414277731480000000
              Time = 44349.414277731480000000
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object cxtmdtfoll: TcxTimeEdit
              Left = 432
              Top = 16
              EditValue = 0d
              TabOrder = 1
              Width = 81
            end
            object cbbnamapetugas: TComboBox
              Left = 312
              Top = 64
              Width = 217
              Height = 22
              ItemHeight = 14
              TabOrder = 2
              Text = 'cbbnamapetugas'
            end
            object edtrekomendasi: TEdit
              Left = 312
              Top = 40
              Width = 721
              Height = 22
              TabOrder = 3
              Text = 'edtrekomendasi'
            end
            object btnTAMBAHFOLL: TButton
              Left = 952
              Top = 88
              Width = 75
              Height = 25
              Caption = 'TAMBAH'
              TabOrder = 4
            end
          end
        end
      end
      object tskondisikrsigd: TTabSheet
        Caption = 'KONDISI KRS IGD'
        ImageIndex = 7
        object grpkrs: TGroupBox
          Left = 0
          Top = 0
          Width = 1430
          Height = 121
          Align = alTop
          Color = 16577248
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          object lbltanggalkrs: TLabel
            Left = 8
            Top = 40
            Width = 46
            Height = 13
            Caption = 'TANGGAL'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblkeadaan: TLabel
            Left = 8
            Top = 64
            Width = 80
            Height = 13
            Caption = 'KEADAAN UMUM'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblkesadaran: TLabel
            Left = 8
            Top = 88
            Width = 60
            Height = 13
            Caption = 'KESADARAN'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label102: TLabel
            Left = 336
            Top = 40
            Width = 82
            Height = 13
            Caption = 'JAM KELUAR IGD'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbltampak: TLabel
            Left = 112
            Top = 64
            Width = 43
            Height = 13
            Caption = 'TAMPAK '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 56
            Top = 120
            Width = 5
            Height = 13
          end
          object Label59: TLabel
            Left = 512
            Top = 40
            Width = 20
            Height = 13
            Caption = 'WIB'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label22: TLabel
            Left = 336
            Top = 8
            Width = 272
            Height = 16
            Caption = 'KONDISI SAAT PINDAH / PULANG DARI IGD'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DateTimePicker1: TDateTimePicker
            Left = 112
            Top = 32
            Width = 105
            Height = 21
            Date = 44349.414277731480000000
            Time = 44349.414277731480000000
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object cxtmdtkrs: TcxTimeEdit
            Left = 424
            Top = 32
            EditValue = 0d
            TabOrder = 1
            Width = 81
          end
          object cbtidaksakit: TCheckBox
            Left = 208
            Top = 64
            Width = 81
            Height = 17
            Caption = 'TIDAK SAKIT'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object cbsakitsedang: TCheckBox
            Left = 456
            Top = 64
            Width = 89
            Height = 17
            Caption = 'SAKIT SEDANG'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object cbsakitringan: TCheckBox
            Left = 336
            Top = 64
            Width = 89
            Height = 17
            Caption = 'SAKIT RINGAN'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object cbsakitberat: TCheckBox
            Left = 584
            Top = 64
            Width = 97
            Height = 17
            Caption = 'SAKIT BERAT'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object cbsomnolens: TCheckBox
            Left = 456
            Top = 88
            Width = 81
            Height = 17
            Caption = 'SOMNOLENS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
          end
          object cbapatis: TCheckBox
            Left = 336
            Top = 88
            Width = 89
            Height = 17
            Caption = 'APATIS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
          end
          object grpMENUKRS: TGroupBox
            Left = 1080
            Top = 16
            Width = 321
            Height = 57
            Caption = 'MENU'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 8
            object btnSIMPANKRS: TButton
              Left = 16
              Top = 16
              Width = 81
              Height = 25
              Caption = 'SIMPAN'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object btnUBAHKRS: TButton
              Left = 112
              Top = 16
              Width = 81
              Height = 25
              Caption = 'UBAH'
              TabOrder = 1
            end
            object Button18: TButton
              Left = 216
              Top = 16
              Width = 81
              Height = 25
              Caption = 'HAPUS'
              TabOrder = 2
            end
          end
          object cbcompos: TCheckBox
            Left = 208
            Top = 88
            Width = 113
            Height = 17
            Caption = 'COMPOS MENTIS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
          end
          object cbsopor: TCheckBox
            Left = 584
            Top = 88
            Width = 81
            Height = 17
            Caption = 'SOPOR'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
          end
          object cbcoma: TCheckBox
            Left = 704
            Top = 88
            Width = 81
            Height = 17
            Caption = 'COMA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
          end
        end
        object grpRIWAYATKONDISIKRS: TGroupBox
          Left = 1080
          Top = 121
          Width = 350
          Height = 732
          Caption = 'DAFTAR RIWAYAT KONDISI KRS PASIEN'
          Color = 16577248
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 1
        end
        object grpkrs1: TGroupBox
          Left = 0
          Top = 120
          Width = 1081
          Height = 705
          Color = 16577248
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 2
          object Label123: TLabel
            Left = 560
            Top = 48
            Width = 109
            Height = 13
            Caption = 'MASUK RS DI RUANG :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label124: TLabel
            Left = 560
            Top = 88
            Width = 138
            Height = 13
            Caption = 'PETUGAS YANG MENERIMA :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblperawatigd: TLabel
            Left = 256
            Top = 468
            Width = 70
            Height = 13
            Caption = 'PERAWAT IGD'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbldokterigd: TLabel
            Left = 632
            Top = 468
            Width = 61
            Height = 13
            Caption = 'DOKTER IGD'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object cbbruangan: TComboBox
            Left = 712
            Top = 48
            Width = 201
            Height = 21
            ItemHeight = 13
            TabOrder = 0
            Text = 'cbbruangan'
          end
          object GroupBox46: TGroupBox
            Left = 8
            Top = 400
            Width = 1065
            Height = 57
            Caption = 'TRANSPORTASI PULANG'
            Color = 15920124
            ParentColor = False
            TabOrder = 1
            object cbkenpribadi: TCheckBox
              Left = 160
              Top = 24
              Width = 129
              Height = 17
              Caption = 'KENDARAAN PRIBADI'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object cbambulans: TCheckBox
              Left = 320
              Top = 24
              Width = 81
              Height = 17
              Caption = 'AMBULANS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object cbkenjenazah: TCheckBox
              Left = 480
              Top = 24
              Width = 137
              Height = 17
              Caption = 'KENDARAAN JENAZAH'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
          end
          object cbbperawatigd: TComboBox
            Left = 224
            Top = 488
            Width = 145
            Height = 21
            ItemHeight = 13
            TabOrder = 2
            Text = 'cbbperawatigd'
          end
          object cbbdokterigd: TComboBox
            Left = 592
            Top = 488
            Width = 145
            Height = 21
            ItemHeight = 13
            TabOrder = 3
            Text = 'cbbdokterigd'
          end
          object grptandavital: TGroupBox
            Left = 8
            Top = 8
            Width = 521
            Height = 217
            Caption = 'TANDA VITAL'
            TabOrder = 4
            object lblgcskrs: TLabel
              Left = 8
              Top = 48
              Width = 27
              Height = 13
              Caption = 'GCS :'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label72: TLabel
              Left = 144
              Top = 48
              Width = 6
              Height = 13
              Caption = 'E'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label73: TLabel
              Left = 216
              Top = 48
              Width = 6
              Height = 13
              Caption = 'V'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label76: TLabel
              Left = 288
              Top = 48
              Width = 8
              Height = 13
              Caption = 'M'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label77: TLabel
              Left = 8
              Top = 80
              Width = 91
              Height = 13
              Caption = 'TEKANAN DARAH :'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label78: TLabel
              Left = 216
              Top = 80
              Width = 29
              Height = 13
              Caption = 'mmHg'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label79: TLabel
              Left = 8
              Top = 112
              Width = 25
              Height = 13
              Caption = 'NADI'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label80: TLabel
              Left = 216
              Top = 112
              Width = 42
              Height = 13
              Caption = 'x / menit'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label74: TLabel
              Left = 8
              Top = 144
              Width = 14
              Height = 13
              Caption = 'RR'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label81: TLabel
              Left = 216
              Top = 144
              Width = 42
              Height = 13
              Caption = 'x / menit'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label75: TLabel
              Left = 8
              Top = 176
              Width = 27
              Height = 13
              Caption = 'SUHU'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label82: TLabel
              Left = 216
              Top = 176
              Width = 13
              Height = 13
              Caption = 'oC'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object edtE: TEdit
              Left = 152
              Top = 48
              Width = 57
              Height = 21
              TabOrder = 0
              Text = 'edtE'
            end
            object edtV: TEdit
              Left = 224
              Top = 48
              Width = 57
              Height = 21
              TabOrder = 1
              Text = 'edtV'
            end
            object edtM: TEdit
              Left = 296
              Top = 48
              Width = 57
              Height = 21
              TabOrder = 2
              Text = 'edtM'
            end
            object edttekanan: TEdit
              Left = 144
              Top = 80
              Width = 65
              Height = 21
              TabOrder = 3
              Text = 'edttekanan'
            end
            object edtnadikrs: TEdit
              Left = 144
              Top = 112
              Width = 65
              Height = 21
              TabOrder = 4
              Text = 'edtnadikrs'
            end
            object edtRR: TEdit
              Left = 144
              Top = 144
              Width = 65
              Height = 21
              TabOrder = 5
              Text = 'edtRR'
            end
            object edtsuhukrs: TEdit
              Left = 144
              Top = 176
              Width = 65
              Height = 21
              TabOrder = 6
              Text = 'edtsuhukrs'
            end
          end
          object GroupBox30: TGroupBox
            Left = 8
            Top = 224
            Width = 1065
            Height = 177
            TabOrder = 5
            object lbljamrujuk: TLabel
              Left = 304
              Top = 60
              Width = 20
              Height = 13
              Caption = 'JAM'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object lblwibrujuk: TLabel
              Left = 416
              Top = 60
              Width = 20
              Height = 13
              Caption = 'WIB'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object lblwibmeninggal: TLabel
              Left = 240
              Top = 124
              Width = 20
              Height = 13
              Caption = 'WIB'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object cbtindakanlanjut: TCheckBox
              Left = 8
              Top = 24
              Width = 137
              Height = 17
              Caption = 'TINDAKAN LANJUTAN DI :'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object cbkamaroperasi: TCheckBox
              Left = 160
              Top = 24
              Width = 113
              Height = 17
              Caption = 'KAMAR OPERASI'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object cbbkamarbersalin: TCheckBox
              Left = 320
              Top = 24
              Width = 105
              Height = 17
              Caption = 'KAMAR BERSALIN'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object cblainnyakrs: TCheckBox
              Left = 480
              Top = 24
              Width = 81
              Height = 17
              Caption = 'LAINNYA :'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object edtlainnyakrs: TEdit
              Left = 552
              Top = 20
              Width = 201
              Height = 21
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              Text = 'edtlainnyakrs'
            end
            object cbrujukke: TCheckBox
              Left = 8
              Top = 56
              Width = 81
              Height = 17
              Caption = 'RUJUK, KE '
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
            end
            object edtrujukke: TEdit
              Left = 160
              Top = 52
              Width = 121
              Height = 21
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
              Text = 'edtrujukke'
            end
            object cxtmdtrujukke: TcxTimeEdit
              Left = 328
              Top = 52
              EditValue = 0d
              TabOrder = 7
              Width = 81
            end
            object cbpulangpaksa: TCheckBox
              Left = 8
              Top = 88
              Width = 105
              Height = 17
              Caption = 'PULANG PAKSA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 8
            end
            object cbmeninggal: TCheckBox
              Left = 8
              Top = 120
              Width = 169
              Height = 17
              Caption = 'MENINGGAL , JAM :'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 9
            end
            object cxtmdtmeninggal: TcxTimeEdit
              Left = 152
              Top = 116
              EditValue = 0d
              TabOrder = 10
              Width = 81
            end
            object cbDOA: TCheckBox
              Left = 8
              Top = 152
              Width = 153
              Height = 17
              Caption = 'DEATH ON ARRIVAL (DOA)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 11
            end
          end
          object cbbpetugas: TComboBox
            Left = 712
            Top = 88
            Width = 201
            Height = 21
            ItemHeight = 13
            TabOrder = 6
            Text = 'cbbpetugas'
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'OBSERVASI'
        ImageIndex = 5
        object grpRIWAYATOBSERVASI: TGroupBox
          Left = 1080
          Top = 120
          Width = 350
          Height = 705
          Caption = 'DAFTAR RIWAYAT OBSERVASI'
          Color = 16577248
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 0
        end
        object GroupBox37: TGroupBox
          Left = 0
          Top = 0
          Width = 1430
          Height = 121
          Align = alTop
          Color = 16577248
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          object lbldokterobs: TLabel
            Left = 8
            Top = 40
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
          object lblperawatobs: TLabel
            Left = 8
            Top = 64
            Width = 49
            Height = 13
            Caption = 'PERAWAT'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblbed: TLabel
            Left = 328
            Top = 72
            Width = 67
            Height = 13
            Caption = 'NOMOR BED :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 56
            Top = 120
            Width = 5
            Height = 13
          end
          object lblP: TLabel
            Left = 328
            Top = 48
            Width = 13
            Height = 13
            Caption = 'P :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label87: TLabel
            Left = 400
            Top = 8
            Width = 162
            Height = 16
            Caption = 'FORM OBSERVASI PASIEN'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object grpMENUOBS: TGroupBox
            Left = 1080
            Top = 16
            Width = 321
            Height = 57
            Caption = 'MENU'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object btnSIMPANOBS: TButton
              Left = 16
              Top = 16
              Width = 81
              Height = 25
              Caption = 'SIMPAN'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object btnUBAHOBS: TButton
              Left = 112
              Top = 16
              Width = 81
              Height = 25
              Caption = 'UBAH'
              TabOrder = 1
            end
            object btnHAPUSOBS: TButton
              Left = 216
              Top = 16
              Width = 81
              Height = 25
              Caption = 'HAPUS'
              TabOrder = 2
            end
          end
          object cbbdokterobs: TComboBox
            Left = 128
            Top = 40
            Width = 145
            Height = 21
            ItemHeight = 13
            TabOrder = 1
            Text = 'cbbdokterobs'
          end
          object cbbperawatobs: TComboBox
            Left = 128
            Top = 64
            Width = 145
            Height = 21
            ItemHeight = 13
            TabOrder = 2
            Text = 'cbbperawatobs'
          end
          object cbbP: TComboBox
            Left = 440
            Top = 48
            Width = 145
            Height = 21
            ItemHeight = 13
            TabOrder = 3
            Text = 'cbbP'
          end
          object edtnomorbed: TEdit
            Left = 440
            Top = 72
            Width = 145
            Height = 21
            TabOrder = 4
            Text = 'edtnomorbed'
          end
        end
        object GroupBox48: TGroupBox
          Left = 0
          Top = 120
          Width = 1081
          Height = 249
          Color = 16577248
          ParentColor = False
          TabOrder = 2
          object Label95: TLabel
            Left = 16
            Top = 48
            Width = 83
            Height = 13
            Caption = 'TANGGAL , JAM :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbllaboratorium: TLabel
            Left = 16
            Top = 216
            Width = 93
            Height = 13
            Caption = '2. LABORATORIUM'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label104: TLabel
            Left = 16
            Top = 72
            Width = 58
            Height = 13
            Caption = 'ASSESMENT'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label106: TLabel
            Left = 16
            Top = 96
            Width = 41
            Height = 13
            Caption = 'AIRWAY'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label108: TLabel
            Left = 16
            Top = 120
            Width = 57
            Height = 13
            Caption = 'BREATHING'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblradiologi: TLabel
            Left = 16
            Top = 192
            Width = 73
            Height = 13
            Caption = '1. RADIOLOGI '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label110: TLabel
            Left = 16
            Top = 144
            Width = 69
            Height = 13
            Caption = 'CIRCULATION'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label111: TLabel
            Left = 8
            Top = 168
            Width = 139
            Height = 13
            Caption = 'PEMERIKSAAN PENUNJANG :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblinstruksi: TLabel
            Left = 416
            Top = 8
            Width = 119
            Height = 16
            Caption = 'INSTRUKSI DOKTER'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object dtptanggalobs: TDateTimePicker
            Left = 152
            Top = 40
            Width = 89
            Height = 21
            Date = 44349.414277731480000000
            Time = 44349.414277731480000000
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object cxtmdttanggalobs: TcxTimeEdit
            Left = 248
            Top = 40
            EditValue = 0d
            TabOrder = 1
            Width = 81
          end
          object edtassesment: TEdit
            Left = 152
            Top = 64
            Width = 913
            Height = 22
            TabOrder = 2
            Text = 'edtassesment'
          end
          object edtairway: TEdit
            Left = 152
            Top = 88
            Width = 913
            Height = 22
            TabOrder = 3
            Text = 'edtairway'
          end
          object edtbreathing: TEdit
            Left = 152
            Top = 112
            Width = 913
            Height = 22
            TabOrder = 4
            Text = 'edtbreathing'
          end
          object edtcirculation: TEdit
            Left = 152
            Top = 136
            Width = 913
            Height = 22
            TabOrder = 5
            Text = 'edtcirculation'
          end
          object edtradiologi: TEdit
            Left = 152
            Top = 184
            Width = 913
            Height = 22
            TabOrder = 6
            Text = 'edtradiologi'
          end
          object edtlaboratorium: TEdit
            Left = 152
            Top = 208
            Width = 913
            Height = 22
            TabOrder = 7
            Text = 'edtlaboratorium'
          end
        end
        object GroupBox49: TGroupBox
          Left = 0
          Top = 368
          Width = 1081
          Height = 193
          Color = 16577248
          ParentColor = False
          TabOrder = 3
          object lbltanggalobs1: TLabel
            Left = 16
            Top = 48
            Width = 83
            Height = 13
            Caption = 'TANGGAL , JAM :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblsaobs: TLabel
            Left = 504
            Top = 72
            Width = 26
            Height = 13
            Caption = 'SaO2'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbltensi: TLabel
            Left = 16
            Top = 72
            Width = 29
            Height = 13
            Caption = 'TENSI'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblnadiobs: TLabel
            Left = 16
            Top = 96
            Width = 25
            Height = 13
            Caption = 'NADI'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblRRobs: TLabel
            Left = 16
            Top = 120
            Width = 14
            Height = 13
            Caption = 'RR'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblpupilobs: TLabel
            Left = 504
            Top = 48
            Width = 28
            Height = 13
            Caption = 'PUPIL'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblsuhuobs: TLabel
            Left = 16
            Top = 144
            Width = 27
            Height = 13
            Caption = 'SUHU'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblgcsobs: TLabel
            Left = 16
            Top = 168
            Width = 20
            Height = 13
            Caption = 'GCS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label112: TLabel
            Left = 368
            Top = 17
            Width = 253
            Height = 16
            Caption = 'OBSERVASI PASIEN (diisi oleh perawat)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblketobs: TLabel
            Left = 504
            Top = 144
            Width = 66
            Height = 13
            Caption = 'KETERANGAN'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbltindakanobs: TLabel
            Left = 504
            Top = 120
            Width = 51
            Height = 13
            Caption = 'TINDAKAN'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbloutputobs: TLabel
            Left = 504
            Top = 96
            Width = 40
            Height = 13
            Caption = 'OUTPUT'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblpetugasobs: TLabel
            Left = 504
            Top = 168
            Width = 77
            Height = 13
            Caption = 'NAMA PETUGAS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object dtptanggalobs1: TDateTimePicker
            Left = 152
            Top = 40
            Width = 89
            Height = 21
            Date = 44349.414277731480000000
            Time = 44349.414277731480000000
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object cxtmdttangalobs1: TcxTimeEdit
            Left = 248
            Top = 40
            EditValue = 0d
            TabOrder = 1
            Width = 81
          end
          object edttensi: TEdit
            Left = 152
            Top = 64
            Width = 177
            Height = 22
            TabOrder = 2
            Text = 'edttensi'
          end
          object edtnadiobs: TEdit
            Left = 152
            Top = 88
            Width = 177
            Height = 22
            TabOrder = 3
            Text = 'edtnadiobs'
          end
          object edtRRobs: TEdit
            Left = 152
            Top = 112
            Width = 177
            Height = 22
            TabOrder = 4
            Text = 'edtRRobs'
          end
          object edtsuhuobs: TEdit
            Left = 152
            Top = 136
            Width = 177
            Height = 22
            TabOrder = 5
            Text = 'edtsuhuobs'
          end
          object edtgcsobs: TEdit
            Left = 152
            Top = 160
            Width = 177
            Height = 22
            TabOrder = 6
            Text = 'edtgcsobs'
          end
          object edtpupil: TEdit
            Left = 656
            Top = 40
            Width = 177
            Height = 22
            TabOrder = 7
            Text = 'edtpupil'
          end
          object edtSa: TEdit
            Left = 656
            Top = 64
            Width = 177
            Height = 22
            TabOrder = 8
            Text = 'edtSa'
          end
          object edtoutput: TEdit
            Left = 656
            Top = 88
            Width = 177
            Height = 22
            TabOrder = 9
            Text = 'edtoutput'
          end
          object edttindakan: TEdit
            Left = 656
            Top = 112
            Width = 177
            Height = 22
            TabOrder = 10
            Text = 'edttindakan'
          end
          object edtketerangan: TEdit
            Left = 656
            Top = 136
            Width = 177
            Height = 22
            TabOrder = 11
            Text = 'edtketerangan'
          end
          object btnTAMBAHOBS: TButton
            Left = 936
            Top = 152
            Width = 75
            Height = 25
            Caption = 'TAMBAH'
            TabOrder = 12
          end
          object cbbpetugasobs: TComboBox
            Left = 656
            Top = 160
            Width = 177
            Height = 22
            ItemHeight = 14
            TabOrder = 13
            Text = 'cbbpetugasobs'
          end
        end
        object grpdaftarobs: TGroupBox
          Left = 0
          Top = 560
          Width = 1081
          Height = 265
          Caption = 'DAFTAR OBSERVASI'
          Color = 16577248
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 4
        end
      end
      object TabSheet5: TTabSheet
        Caption = 'TINDAK LANJUT'
        ImageIndex = 8
        object GroupBox44: TGroupBox
          Left = 0
          Top = 0
          Width = 1430
          Height = 121
          Align = alTop
          Color = 16577248
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          object Label88: TLabel
            Left = 96
            Top = 40
            Width = 83
            Height = 13
            Caption = 'TANGGAL MASUK'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label91: TLabel
            Left = 672
            Top = 72
            Width = 82
            Height = 13
            Caption = 'JAM KELUAR IGD'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 56
            Top = 120
            Width = 5
            Height = 13
          end
          object Label93: TLabel
            Left = 888
            Top = 72
            Width = 20
            Height = 13
            Caption = 'WIB'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label94: TLabel
            Left = 448
            Top = 8
            Width = 193
            Height = 16
            Caption = 'INSTRUKSI TINDAK LANJUT IGD'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label90: TLabel
            Left = 672
            Top = 40
            Width = 87
            Height = 13
            Caption = 'TANGGAL KELUAR'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label92: TLabel
            Left = 288
            Top = 80
            Width = 20
            Height = 13
            Caption = 'WIB'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label135: TLabel
            Left = 96
            Top = 80
            Width = 78
            Height = 13
            Caption = 'JAM MASUK IGD'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object dtpmasuk: TDateTimePicker
            Left = 200
            Top = 32
            Width = 105
            Height = 21
            Date = 44349.414277731480000000
            Time = 44349.414277731480000000
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object cxtmdtjamkeluar: TcxTimeEdit
            Left = 792
            Top = 64
            EditValue = 0d
            TabOrder = 1
            Width = 81
          end
          object grpMENUTL: TGroupBox
            Left = 1080
            Top = 16
            Width = 321
            Height = 57
            Caption = 'MENU'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            object btnSIMPANTL: TButton
              Left = 16
              Top = 16
              Width = 81
              Height = 25
              Caption = 'SIMPAN'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object btnUBAHTL: TButton
              Left = 112
              Top = 16
              Width = 81
              Height = 25
              Caption = 'UBAH'
              TabOrder = 1
            end
            object btnHAPUSTL: TButton
              Left = 216
              Top = 16
              Width = 81
              Height = 25
              Caption = 'HAPUS'
              TabOrder = 2
            end
          end
          object dtpkeluar: TDateTimePicker
            Left = 792
            Top = 32
            Width = 105
            Height = 21
            Date = 44349.414277731480000000
            Time = 44349.414277731480000000
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object cxtmdtjammasuk: TcxTimeEdit
            Left = 200
            Top = 72
            EditValue = 0d
            TabOrder = 4
            Width = 81
          end
        end
        object grpRIWAYATTINDAKLANJUT: TGroupBox
          Left = 1080
          Top = 120
          Width = 350
          Height = 705
          Caption = 'DAFTAR RIWAYAT TINDAK LANJUT'
          Color = 16577248
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 1
        end
        object GroupBox32: TGroupBox
          Left = 0
          Top = 120
          Width = 1081
          Height = 609
          Color = 16577248
          ParentColor = False
          TabOrder = 2
          object lblsaya: TLabel
            Left = 32
            Top = 472
            Width = 324
            Height = 16
            Caption = 'Saya telah memahami dan menyetujui penjelasan diatas'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblpasien: TLabel
            Left = 112
            Top = 504
            Width = 161
            Height = 16
            Caption = 'PASIEN / KELUARGA PASIEN'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbldokteryang: TLabel
            Left = 616
            Top = 504
            Width = 147
            Height = 16
            Caption = 'DOKTER YANG MERAWAT'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object GroupBox47: TGroupBox
            Left = 0
            Top = 0
            Width = 1081
            Height = 97
            TabOrder = 0
            object lblanamnesa: TLabel
              Left = 16
              Top = 8
              Width = 61
              Height = 13
              Caption = 'ANAMNESA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lblpemeriksaanfisik: TLabel
              Left = 560
              Top = 8
              Width = 112
              Height = 13
              Caption = 'PEMERIKSAAN FISIK'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Memoanamnesa: TMemo
              Left = 16
              Top = 24
              Width = 505
              Height = 57
              Lines.Strings = (
                'Memoanamnesa')
              TabOrder = 0
            end
            object Memopemeriksaantindaklanjut: TMemo
              Left = 560
              Top = 24
              Width = 505
              Height = 57
              Lines.Strings = (
                'Memopemeriksaantindaklanjut')
              TabOrder = 1
            end
          end
          object GroupBox51: TGroupBox
            Left = 0
            Top = 88
            Width = 1081
            Height = 97
            TabOrder = 1
            object lblpemeriksaanpenunjang: TLabel
              Left = 16
              Top = 8
              Width = 146
              Height = 13
              Caption = 'PEMERIKSAAN PENUNJANG'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lbldiagnosa: TLabel
              Left = 560
              Top = 8
              Width = 59
              Height = 13
              Caption = 'DIAGNOSA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Memopenunjang: TMemo
              Left = 16
              Top = 24
              Width = 505
              Height = 57
              Lines.Strings = (
                'Memopenunjang')
              TabOrder = 0
            end
            object Memodiagnosa: TMemo
              Left = 560
              Top = 24
              Width = 505
              Height = 57
              Lines.Strings = (
                'Memodiagnosa')
              TabOrder = 1
            end
          end
          object GroupBox52: TGroupBox
            Left = 0
            Top = 176
            Width = 1081
            Height = 97
            TabOrder = 2
            object lbltindakanyang: TLabel
              Left = 16
              Top = 8
              Width = 157
              Height = 13
              Caption = 'TINDAKAN YANG DILAKUKAN'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lblobat: TLabel
              Left = 560
              Top = 8
              Width = 127
              Height = 13
              Caption = 'OBAT YANG DIBERIKAN'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Memotindakan: TMemo
              Left = 16
              Top = 24
              Width = 505
              Height = 57
              Lines.Strings = (
                'Memotindakan')
              TabOrder = 0
            end
            object Memoobat: TMemo
              Left = 560
              Top = 24
              Width = 505
              Height = 57
              Lines.Strings = (
                'Memoobat')
              TabOrder = 1
            end
          end
          object GroupBox53: TGroupBox
            Left = 0
            Top = 264
            Width = 1081
            Height = 97
            TabOrder = 3
            object lblkondisi: TLabel
              Left = 16
              Top = 8
              Width = 161
              Height = 13
              Caption = 'KONDISI PADA SAAT PULANG'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lblanjuran: TLabel
              Left = 560
              Top = 8
              Width = 261
              Height = 13
              Caption = 'ANJURAN / RENCANA / KONTROL SELANJUTNYA '
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label130: TLabel
              Left = 856
              Top = 24
              Width = 99
              Height = 13
              Caption = 'TANGGAL KONTROL '
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Memokondisipulang: TMemo
              Left = 16
              Top = 24
              Width = 505
              Height = 57
              Lines.Strings = (
                'Memokondisipulang')
              TabOrder = 0
            end
            object CheckBox3: TCheckBox
              Left = 560
              Top = 24
              Width = 185
              Height = 17
              Caption = 'RSU KARSA HUSADA BATU, POLI'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object CheckBox6: TCheckBox
              Left = 560
              Top = 72
              Width = 89
              Height = 17
              Caption = 'LAIN - LAIN'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object CheckBox7: TCheckBox
              Left = 560
              Top = 48
              Width = 137
              Height = 17
              Caption = 'PUSKESMAS / FASKES I'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object ComboBox18: TComboBox
              Left = 744
              Top = 24
              Width = 105
              Height = 22
              ItemHeight = 14
              TabOrder = 4
              Text = 'ComboBox18'
            end
            object DateTimePicker6: TDateTimePicker
              Left = 960
              Top = 24
              Width = 105
              Height = 21
              Date = 44349.414277731480000000
              Time = 44349.414277731480000000
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
            end
            object edtlain: TEdit
              Left = 744
              Top = 64
              Width = 321
              Height = 22
              TabOrder = 6
              Text = 'edtlain'
            end
          end
          object grpalasanpulang: TGroupBox
            Left = 0
            Top = 352
            Width = 1081
            Height = 97
            Caption = 'ALASAN PULANG'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
            object Label131: TLabel
              Left = 688
              Top = 32
              Width = 20
              Height = 13
              Caption = 'WIB'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object cbdapat: TCheckBox
              Left = 24
              Top = 32
              Width = 137
              Height = 17
              Caption = 'DAPAT BEROBAT JALAN'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object cbpulang: TCheckBox
              Left = 24
              Top = 64
              Width = 169
              Height = 17
              Caption = 'PULANG ATAS PERMINTAAN'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object cbsembuh: TCheckBox
              Left = 272
              Top = 32
              Width = 89
              Height = 17
              Caption = 'SEMBUH'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object cbpindah: TCheckBox
              Left = 480
              Top = 64
              Width = 121
              Height = 17
              Caption = 'PINDAH RS LAIN :'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object cbmeninggaljam: TCheckBox
              Left = 480
              Top = 32
              Width = 121
              Height = 17
              Caption = 'MENINGGAL, JAM :'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
            object cxtmdtmeninggaljam: TcxTimeEdit
              Left = 600
              Top = 24
              EditValue = 0d
              TabOrder = 5
              Width = 81
            end
            object edtRSlain: TEdit
              Left = 600
              Top = 56
              Width = 465
              Height = 22
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
              Text = 'edtRSlain'
            end
          end
          object edtkeluargapasien: TEdit
            Left = 136
            Top = 528
            Width = 121
            Height = 22
            TabOrder = 5
            Text = 'edtkeluargapasien'
          end
          object cbbdokter: TComboBox
            Left = 616
            Top = 528
            Width = 145
            Height = 22
            ItemHeight = 14
            TabOrder = 6
            Text = 'cbbdokter'
          end
        end
      end
    end
  end
end
