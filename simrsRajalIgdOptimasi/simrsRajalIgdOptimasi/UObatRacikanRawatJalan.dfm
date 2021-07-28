object FObatRacikanRawatJalan: TFObatRacikanRawatJalan
  Left = 116
  Top = 199
  Width = 1088
  Height = 243
  Caption = 'OBAT RACIKAN RAWAT JALAN'
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
    Top = 152
    Width = 1072
    Height = 52
    Align = alBottom
    Color = 15115304
    TabOrder = 0
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 1072
    Height = 49
    Align = alTop
    Caption = 'E- RESEP OBAT RACIKAN RAWAT JALAN'
    Color = 15115304
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindow
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object pnlKeluar: TPanel
      Left = 934
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
    Width = 1072
    Height = 103
    Align = alClient
    TabOrder = 2
    object grp1: TGroupBox
      Left = 1
      Top = 1
      Width = 1070
      Height = 101
      Align = alClient
      Caption = 'PENCARIAN OBAT RACIKAN'
      TabOrder = 0
      object lbl1: TLabel
        Left = 8
        Top = 48
        Width = 62
        Height = 13
        Caption = 'KODE OBAT'
      end
      object lbl2: TLabel
        Left = 136
        Top = 48
        Width = 63
        Height = 13
        Caption = 'NAMA OBAT'
      end
      object lbl3: TLabel
        Left = 432
        Top = 48
        Width = 44
        Height = 13
        Caption = 'SATUAN'
      end
      object lbl4: TLabel
        Left = 880
        Top = 48
        Width = 64
        Height = 13
        Caption = 'JML KRONIS'
      end
      object lbl5: TLabel
        Left = 768
        Top = 48
        Width = 91
        Height = 13
        Caption = 'JML NON KRONIS'
      end
      object lblAturanPakaiCatatan: TLabel
        Left = 576
        Top = 48
        Width = 74
        Height = 13
        Caption = 'KETERANGAN'
      end
      object lblNoResep: TLabel
        Left = 8
        Top = 16
        Width = 55
        Height = 13
        Caption = 'lblNoResep'
        Visible = False
      end
      object lblObat: TLabel
        Left = 80
        Top = 16
        Width = 67
        Height = 24
        Caption = 'lblObat'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtKdObatRacikan: TEdit
        Left = 8
        Top = 64
        Width = 121
        Height = 21
        Enabled = False
        TabOrder = 0
      end
      object cbbNamaObatCarikan: TcxLookupComboBox
        Left = 136
        Top = 64
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
        OnDblClick = cbbNamaObatCarikanDblClick
        OnKeyPress = cbbNamaObatCarikanKeyPress
        Width = 289
      end
      object cxcrncydtJmlKronisRacikan: TcxCurrencyEdit
        Left = 880
        Top = 64
        Properties.AssignedValues.DisplayFormat = True
        TabOrder = 2
        OnKeyPress = cxcrncydtJmlKronisRacikanKeyPress
        Width = 89
      end
      object cxcrncydtJmlNonKronisRacikan: TcxCurrencyEdit
        Left = 768
        Top = 64
        Properties.AssignedValues.DisplayFormat = True
        TabOrder = 3
        OnKeyPress = cxcrncydtJmlNonKronisRacikanKeyPress
        Width = 105
      end
      object cxtxtdtSatuanRacikan: TcxTextEdit
        Left = 432
        Top = 64
        TabOrder = 4
        Width = 137
      end
      object btnInputRck: TButton
        Left = 976
        Top = 56
        Width = 75
        Height = 25
        Caption = 'INPUT'
        TabOrder = 5
        OnClick = btnInputRckClick
      end
      object edtAturPakaiCatatan: TEdit
        Left = 576
        Top = 64
        Width = 185
        Height = 21
        TabOrder = 6
        OnKeyPress = edtAturPakaiCatatanKeyPress
      end
    end
  end
end
