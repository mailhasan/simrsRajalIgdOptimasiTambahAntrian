object FKonsulAntarPoli: TFKonsulAntarPoli
  Left = 233
  Top = 124
  Width = 1147
  Height = 633
  Caption = 'KONSUL ANTAR POLI'
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
  object pnlTengah: TPanel
    Left = 0
    Top = 49
    Width = 1131
    Height = 493
    Align = alClient
    TabOrder = 0
    object grpDataPasien: TGroupBox
      Left = 1
      Top = 1
      Width = 608
      Height = 491
      Align = alLeft
      Caption = 'DATA IDENTITAS PASIEN'
      Color = clSkyBlue
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      object lblNoIdentitas: TLabel
        Left = 16
        Top = 56
        Width = 143
        Height = 18
        Caption = 'No Identitas  / KTP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblNama: TLabel
        Left = 16
        Top = 88
        Width = 110
        Height = 18
        Caption = 'Nama Lengkap'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblTempatTglLahir: TLabel
        Left = 16
        Top = 120
        Width = 130
        Height = 18
        Caption = 'Tempat/Tgl Lahir'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblUmur: TLabel
        Left = 16
        Top = 152
        Width = 40
        Height = 18
        Caption = 'Umur'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblJenisKelamin: TLabel
        Left = 16
        Top = 184
        Width = 103
        Height = 18
        Caption = 'Jenis Kelamin'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblPendidikan: TLabel
        Left = 16
        Top = 216
        Width = 83
        Height = 18
        Caption = 'Pendidikan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblAlamat: TLabel
        Left = 16
        Top = 280
        Width = 52
        Height = 18
        Caption = 'Alamat'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblPekerjaan: TLabel
        Left = 16
        Top = 248
        Width = 76
        Height = 18
        Caption = 'Pekerjaan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblKelurahanDesa: TLabel
        Left = 16
        Top = 360
        Width = 130
        Height = 18
        Caption = 'Kelurahan / Desa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblKecamatan: TLabel
        Left = 16
        Top = 392
        Width = 82
        Height = 18
        Caption = 'Kecamatan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblKabupaten: TLabel
        Left = 16
        Top = 384
        Width = 5
        Height = 19
      end
      object lbl1: TLabel
        Left = 16
        Top = 424
        Width = 130
        Height = 18
        Caption = 'Kabupaten / Kota'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblProvinsi: TLabel
        Left = 16
        Top = 456
        Width = 62
        Height = 18
        Caption = 'Provinsi'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblKodePos: TLabel
        Left = 360
        Top = 360
        Width = 68
        Height = 18
        Caption = 'Kode Pos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblBahasa: TLabel
        Left = 352
        Top = 216
        Width = 54
        Height = 18
        Caption = 'Bahasa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblAgama: TLabel
        Left = 352
        Top = 184
        Width = 50
        Height = 18
        Caption = 'Agama'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl3: TLabel
        Left = 352
        Top = 248
        Width = 89
        Height = 18
        Caption = 'No. Telepon'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl2: TLabel
        Left = 16
        Top = 24
        Width = 54
        Height = 18
        Caption = 'No. RM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtNoIdentitas: TEdit
        Left = 184
        Top = 56
        Width = 409
        Height = 27
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object edtNmLengkap: TEdit
        Left = 184
        Top = 88
        Width = 409
        Height = 27
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object edtTempatLahir: TEdit
        Left = 184
        Top = 120
        Width = 209
        Height = 27
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object edtTglLahir: TEdit
        Left = 400
        Top = 120
        Width = 193
        Height = 27
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object edtTahun: TEdit
        Left = 184
        Top = 152
        Width = 409
        Height = 27
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object edtJenisKelamin: TEdit
        Left = 184
        Top = 184
        Width = 153
        Height = 27
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object edtPendidikan: TEdit
        Left = 184
        Top = 216
        Width = 153
        Height = 27
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
      object edtPekerjaan: TEdit
        Left = 184
        Top = 248
        Width = 153
        Height = 27
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
      end
      object mmoAlamat: TMemo
        Left = 184
        Top = 280
        Width = 409
        Height = 65
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
      end
      object edtKelurahanDesa: TEdit
        Left = 184
        Top = 352
        Width = 169
        Height = 27
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
      end
      object edtKecamatan: TEdit
        Left = 184
        Top = 384
        Width = 169
        Height = 27
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
      end
      object edtKabupaten: TEdit
        Left = 184
        Top = 416
        Width = 169
        Height = 27
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
      end
      object edtProvinsi: TEdit
        Left = 184
        Top = 448
        Width = 169
        Height = 27
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
      end
      object edtKodePos: TEdit
        Left = 440
        Top = 352
        Width = 153
        Height = 27
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
      end
      object edtBahasa: TEdit
        Left = 456
        Top = 216
        Width = 137
        Height = 27
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 14
      end
      object edtAgama: TEdit
        Left = 456
        Top = 184
        Width = 137
        Height = 27
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 15
      end
      object edtLamaBaru: TEdit
        Left = 448
        Top = 56
        Width = 105
        Height = 27
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 16
        Visible = False
      end
      object edtNoTelepone: TEdit
        Left = 456
        Top = 248
        Width = 137
        Height = 27
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 17
      end
      object edtNoRm: TEdit
        Left = 184
        Top = 24
        Width = 145
        Height = 27
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 18
      end
    end
    object grpPoliTujuan: TGroupBox
      Left = 609
      Top = 1
      Width = 521
      Height = 491
      Align = alClient
      Caption = 'POLI TUJUAN'
      Color = clSkyBlue
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      object lblNoRegistrasi: TLabel
        Left = 24
        Top = 40
        Width = 107
        Height = 18
        Caption = 'No. Registrasi'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblTanggal: TLabel
        Left = 24
        Top = 104
        Width = 59
        Height = 18
        Caption = 'Tanggal'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblUnitPelayanan: TLabel
        Left = 24
        Top = 136
        Width = 113
        Height = 18
        Caption = 'Unit Pelayanan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl4: TLabel
        Left = 24
        Top = 72
        Width = 203
        Height = 18
        Caption = 'No. Registrasi Rawat Jalan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl5: TLabel
        Left = 24
        Top = 168
        Width = 212
        Height = 18
        Caption = 'TARIF KONSUL ANTAR POLI'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtNoRegistrasi: TEdit
        Left = 264
        Top = 40
        Width = 241
        Height = 27
        Enabled = False
        TabOrder = 0
      end
      object dtpTanggal: TDateTimePicker
        Left = 264
        Top = 104
        Width = 241
        Height = 27
        Date = 43509.432595706020000000
        Time = 43509.432595706020000000
        TabOrder = 1
      end
      object cbbUnitPelayanan: TcxLookupComboBox
        Left = 264
        Top = 136
        Properties.CharCase = ecUpperCase
        Properties.KeyFieldNames = 'kdUnit'
        Properties.ListColumns = <
          item
            Caption = 'UNIT'
            MinWidth = 50
            FieldName = 'unit'
          end>
        Properties.ListSource = DataSimrs.dswv_unitrajal
        Properties.MaxLength = 50
        TabOrder = 2
        Width = 241
      end
      object edtNoRegisterRajal: TEdit
        Left = 264
        Top = 72
        Width = 241
        Height = 27
        Enabled = False
        TabOrder = 3
      end
      object cxcrncydtTarifKonsulAntarPoli: TcxCurrencyEdit
        Left = 264
        Top = 168
        TabOrder = 4
        Width = 241
      end
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 542
    Width = 1131
    Height = 52
    Align = alBottom
    Color = 15115304
    TabOrder = 1
    object btnDaftar: TcxButton
      Left = 576
      Top = 16
      Width = 75
      Height = 25
      Caption = 'DAFTAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnDaftarClick
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 1131
    Height = 49
    Align = alTop
    Caption = 'KONSULTASI ANTAR POLI'
    Color = 15115304
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindow
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object pnlKeluar: TPanel
      Left = 993
      Top = 1
      Width = 137
      Height = 47
      Align = alRight
      Caption = 'KELUAR'
      Color = 5855743
      Font.Charset = DEFAULT_CHARSET
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
