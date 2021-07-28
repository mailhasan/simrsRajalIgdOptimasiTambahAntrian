object FRegistrasiRuangOk: TFRegistrasiRuangOk
  Left = 339
  Top = 77
  Width = 965
  Height = 870
  Caption = 'REGISTRASI KE RUANG OK'
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
    Top = 779
    Width = 949
    Height = 52
    Align = alBottom
    Color = 15115304
    TabOrder = 0
    object btnPROSES: TcxButton
      Left = 16
      Top = 16
      Width = 75
      Height = 25
      Caption = 'SELESAI'
      TabOrder = 0
      OnClick = btnPROSESClick
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 949
    Height = 49
    Align = alTop
    Caption = 'REGISTRASI RUANG OK'
    Color = 15115304
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindow
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object pnlKeluar: TPanel
      Left = 811
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
    Width = 949
    Height = 730
    Align = alClient
    TabOrder = 2
    object grpData: TGroupBox
      Left = 1
      Top = 1
      Width = 947
      Height = 416
      Align = alTop
      Caption = 'DATA PASIEN / REGISTRASI OK'
      TabOrder = 0
      object lblNOREGISTEROK: TLabel
        Left = 16
        Top = 16
        Width = 92
        Height = 13
        Caption = 'NO REGISTER OK'
      end
      object lblTGLREGISTEROK: TLabel
        Left = 16
        Top = 40
        Width = 97
        Height = 13
        Caption = 'TGL REGISTER OK'
      end
      object lblNORM: TLabel
        Left = 16
        Top = 64
        Width = 36
        Height = 13
        Caption = 'NO RM'
      end
      object lblNOREGISTRASI: TLabel
        Left = 16
        Top = 88
        Width = 84
        Height = 13
        Caption = 'NO REGISTRASI'
      end
      object lblTGLREGISTRASI: TLabel
        Left = 16
        Top = 112
        Width = 89
        Height = 13
        Caption = 'TGL REGISTRASI'
      end
      object lblUNITASAL: TLabel
        Left = 16
        Top = 136
        Width = 56
        Height = 13
        Caption = 'UNIT ASAL'
      end
      object lblDOKTERPENGIRIM: TLabel
        Left = 16
        Top = 160
        Width = 101
        Height = 13
        Caption = 'DOKTER PENGIRIM'
      end
      object lblJENISOPERASI: TLabel
        Left = 16
        Top = 184
        Width = 80
        Height = 13
        Caption = 'JENIS OPERASI'
      end
      object lblTGLPERMINTAANOP: TLabel
        Left = 16
        Top = 216
        Width = 113
        Height = 13
        Caption = 'TGL PERMINTAAN OP'
      end
      object lblTGLKONFIRMASIJADWALOP: TLabel
        Left = 16
        Top = 248
        Width = 155
        Height = 13
        Caption = 'TGL KONFIRMASI JADWAL OP'
      end
      object lblDOKTEROPERATOR: TLabel
        Left = 16
        Top = 280
        Width = 108
        Height = 13
        Caption = 'DOKTER OPERATOR'
      end
      object lblKETERANGAN: TLabel
        Left = 16
        Top = 304
        Width = 74
        Height = 13
        Caption = 'KETERANGAN'
      end
      object lblDIAGNOSAPREOP: TLabel
        Left = 16
        Top = 328
        Width = 99
        Height = 13
        Caption = 'DIAGNOSA PRE OP'
      end
      object lblSTATUSOPERASI: TLabel
        Left = 16
        Top = 352
        Width = 93
        Height = 13
        Caption = 'STATUS OPERASI'
      end
      object lblSTATUSBACA: TLabel
        Left = 16
        Top = 376
        Width = 74
        Height = 13
        Caption = 'STATUS BACA'
      end
      object edtNOREGISTRASI: TEdit
        Left = 184
        Top = 8
        Width = 121
        Height = 21
        TabOrder = 0
        Text = 'edtNOREGISTRASI'
      end
      object dtpTGLREGISTRASIOK: TDateTimePicker
        Left = 184
        Top = 32
        Width = 186
        Height = 21
        Date = 43973.413675081020000000
        Time = 43973.413675081020000000
        TabOrder = 1
      end
      object edtNORM: TEdit
        Left = 184
        Top = 56
        Width = 121
        Height = 21
        TabOrder = 2
        Text = 'edtNORM'
      end
      object edtNOREGIS: TEdit
        Left = 184
        Top = 80
        Width = 121
        Height = 21
        TabOrder = 3
        Text = 'edtNOREGIS'
      end
      object dtpTGLREGIS: TDateTimePicker
        Left = 184
        Top = 104
        Width = 186
        Height = 21
        Date = 43973.414161782410000000
        Time = 43973.414161782410000000
        TabOrder = 4
      end
      object edtUNITASAL: TEdit
        Left = 184
        Top = 128
        Width = 121
        Height = 21
        TabOrder = 5
        Text = 'edtUNITASAL'
      end
      object cbbDOKTERPENGIRIM: TcxLookupComboBox
        Left = 184
        Top = 152
        Properties.KeyFieldNames = 'namapetugasMedis'
        Properties.ListColumns = <
          item
            Caption = 'DOKTER'
            FieldName = 'namapetugasMedis'
          end>
        Properties.ListSource = DataSimrs.dsDokter
        TabOrder = 6
        Width = 265
      end
      object cbbJenisOperasi: TcxLookupComboBox
        Left = 184
        Top = 176
        Properties.KeyFieldNames = 'kdJenisOperasi'
        Properties.ListColumns = <
          item
            Caption = 'JENIS OPERASI'
            FieldName = 'jenisOperasi'
          end>
        Properties.ListSource = DataSimrs.dst_jenis_operasi
        TabOrder = 7
        Width = 265
      end
      object dtpTglPermintaanOp: TcxDateEdit
        Left = 184
        Top = 208
        TabOrder = 8
        Width = 193
      end
      object dtpTglKonfirmasiJadwal: TcxDateEdit
        Left = 184
        Top = 240
        TabOrder = 9
        Width = 193
      end
      object cbbDokterOperator: TcxLookupComboBox
        Left = 184
        Top = 272
        Properties.KeyFieldNames = 'namapetugasMedis'
        Properties.ListColumns = <
          item
            Caption = 'DOKTER'
            FieldName = 'namapetugasMedis'
          end>
        Properties.ListSource = DataSimrs.dsDokter
        TabOrder = 10
        Width = 265
      end
      object edtKeterangan: TcxTextEdit
        Left = 184
        Top = 296
        TabOrder = 11
        Text = 'edtKeterangan'
        Width = 265
      end
      object edtDIAGNOSAPREOP: TcxTextEdit
        Left = 184
        Top = 320
        TabOrder = 12
        Text = 'edtDIAGNOSAPREOP'
        Width = 201
      end
      object cbbStatusOperasi: TcxComboBox
        Left = 184
        Top = 344
        Properties.Items.Strings = (
          'YA'
          'TIDAK')
        TabOrder = 13
        Text = 'cbbStatusOperasi'
        Width = 161
      end
      object cbbStatusBaca: TcxComboBox
        Left = 184
        Top = 368
        Properties.Items.Strings = (
          'YA'
          'TIDAK')
        TabOrder = 14
        Text = 'cbbStatusBaca'
        Width = 161
      end
    end
    object pnlTindakan: TPanel
      Left = 1
      Top = 417
      Width = 947
      Height = 312
      Align = alClient
      TabOrder = 1
      object grpTindakan: TGroupBox
        Left = 1
        Top = 1
        Width = 945
        Height = 112
        Align = alTop
        Caption = 'TINDAKAN'
        TabOrder = 0
        object lblNoTransakasi: TLabel
          Left = 8
          Top = 16
          Width = 80
          Height = 13
          Caption = 'NO TRANSAKSI'
        end
        object lblTindakan: TLabel
          Left = 232
          Top = 16
          Width = 55
          Height = 13
          Caption = 'TINDAKAN'
        end
        object lblKode: TLabel
          Left = 776
          Top = 16
          Width = 30
          Height = 13
          Caption = 'KODE'
        end
        object lblTarif: TLabel
          Left = 8
          Top = 64
          Width = 34
          Height = 13
          Caption = 'TARIF '
        end
        object lblJumlah: TLabel
          Left = 136
          Top = 64
          Width = 43
          Height = 13
          Caption = 'JUMLAH'
        end
        object lblTotal: TLabel
          Left = 264
          Top = 64
          Width = 35
          Height = 13
          Caption = 'TOTAL'
        end
        object edtNoTransaksiTindakanRajal: TEdit
          Left = 8
          Top = 32
          Width = 217
          Height = 21
          Enabled = False
          TabOrder = 0
        end
        object cbbTindakan: TcxLookupComboBox
          Left = 232
          Top = 32
          Properties.KeyFieldNames = 'kdtarif'
          Properties.ListColumns = <
            item
              Caption = 'TINDAKAN'
              FieldName = 'tindakan'
            end>
          Properties.ListSource = dsvw_tindakanoperas
          Properties.MaxLength = 400
          TabOrder = 1
          OnKeyPress = cbbTindakanKeyPress
          Width = 537
        end
        object edtKode: TEdit
          Left = 778
          Top = 32
          Width = 121
          Height = 21
          TabOrder = 2
        end
        object edtTarif: TEdit
          Left = 8
          Top = 80
          Width = 121
          Height = 21
          TabOrder = 3
        end
        object edtJumlah: TDBNumberEditEh
          Left = 136
          Top = 80
          Width = 121
          Height = 21
          DynProps = <>
          EditButtons = <>
          TabOrder = 4
          Visible = True
        end
        object edtTotal: TEdit
          Left = 264
          Top = 80
          Width = 161
          Height = 21
          TabOrder = 5
        end
        object btnInput: TButton
          Left = 432
          Top = 80
          Width = 153
          Height = 25
          Caption = 'INPUT'
          TabOrder = 6
          OnClick = btnInputClick
        end
      end
      object grpDetailTindakan: TGroupBox
        Left = 1
        Top = 113
        Width = 945
        Height = 198
        Align = alClient
        Caption = 'DETAIL TINDAKAN'
        TabOrder = 1
        object dbgrdhDetailTindakan: TDBGridEh
          Left = 2
          Top = 15
          Width = 941
          Height = 181
          Align = alClient
          DataSource = dst_detailtindakanok
          DynProps = <>
          FooterRowCount = 1
          FooterParams.Color = clWindow
          SumList.Active = True
          TabOrder = 0
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'kdTarif'
              Footers = <>
              Title.Caption = 'KODE TARIF'
              Width = 76
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'kdTindakan'
              Footers = <>
              Title.Caption = 'KODE TINDAKAN'
              Width = 86
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'tindakan'
              Footers = <>
              Title.Caption = 'TINDAKAN'
              Width = 228
            end
            item
              CellButtons = <>
              DisplayFormat = '#,#0.00'
              DynProps = <>
              EditButtons = <>
              FieldName = 'tarif'
              Footers = <>
              Title.Caption = 'TARIF'
              Width = 105
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'jmlTindakan'
              Footers = <>
              Title.Caption = 'JML'
              Width = 52
            end
            item
              CellButtons = <>
              DisplayFormat = '#,#0.00'
              DynProps = <>
              EditButtons = <>
              FieldName = 'subTotal'
              Footer.DisplayFormat = '#,#0.00'
              Footer.FieldName = 'subTotal'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'SUB TOTAL'
              Width = 99
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
    end
  end
  object qryvw_tindakanoperas: TADOQuery
    Connection = DataSimrs.conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM vw_tindakanoperasi ')
    Left = 513
    Top = 106
  end
  object dsvw_tindakanoperas: TDataSource
    DataSet = qryvw_tindakanoperas
    Left = 633
    Top = 106
  end
  object qryt_tindakanok: TADOQuery
    Connection = DataSimrs.conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM t_tindakanok')
    Left = 513
    Top = 170
  end
  object qryt_detailtindakanok: TADOQuery
    Connection = DataSimrs.conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM t_detailtindakanok')
    Left = 617
    Top = 170
  end
  object dst_detailtindakanok: TDataSource
    DataSet = qryt_detailtindakanok
    Left = 617
    Top = 242
  end
end
