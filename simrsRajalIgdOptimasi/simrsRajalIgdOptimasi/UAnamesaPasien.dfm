object FAnamesaPasien: TFAnamesaPasien
  Left = 192
  Top = 124
  BorderStyle = bsNone
  Caption = 'ANAMESA PASIEN'
  ClientHeight = 525
  ClientWidth = 963
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
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 963
    Height = 49
    Align = alTop
    Caption = 'ANAMESA PASIEN'
    Color = 15115304
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindow
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object pnlKeluar: TPanel
      Left = 825
      Top = 1
      Width = 137
      Height = 47
      Align = alRight
      Caption = 'KELUAR'
      Color = 5855743
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindow
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Visible = False
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 472
    Width = 963
    Height = 53
    Align = alBottom
    Color = 15115304
    TabOrder = 1
    object btnSelesai: TButton
      Left = 96
      Top = 18
      Width = 75
      Height = 25
      Caption = 'SELESAI'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnSelesaiClick
    end
    object btnSimpan: TButton
      Left = 16
      Top = 17
      Width = 75
      Height = 25
      Caption = 'SIMPAN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnSimpanClick
    end
  end
  object pnlTengah: TPanel
    Left = 0
    Top = 49
    Width = 963
    Height = 423
    Align = alClient
    TabOrder = 2
    object grpNoDokter: TGroupBox
      Left = 1
      Top = 1
      Width = 961
      Height = 56
      Align = alTop
      Caption = 'DOKTER'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object cbbDokter: TcxLookupComboBox
        Left = 16
        Top = 24
        Properties.KeyFieldNames = 'kdPetugasMedis'
        Properties.ListColumns = <
          item
            Caption = 'DOKTER'
            FieldName = 'namapetugasMedis'
          end>
        Properties.ListSource = DataSimrs.dsDokter
        TabOrder = 0
        Width = 305
      end
    end
    object grpAnamesa: TGroupBox
      Left = 1
      Top = 57
      Width = 961
      Height = 365
      Align = alClient
      Caption = 'ANAMESA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object mmoAnamesa: TMemo
        Left = 2
        Top = 20
        Width = 957
        Height = 154
        Align = alTop
        TabOrder = 0
      end
      object strngrdAnamesa: TStringGrid
        Left = 2
        Top = 174
        Width = 957
        Height = 189
        Align = alClient
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goRowMoving, goColMoving, goRowSelect]
        TabOrder = 1
      end
    end
  end
end
