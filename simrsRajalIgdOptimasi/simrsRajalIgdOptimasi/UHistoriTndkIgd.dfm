object FormHistoriTndkIgd: TFormHistoriTndkIgd
  Left = 240
  Top = 252
  Width = 910
  Height = 353
  Caption = 'HISTORI TINDAKAN IGD'
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
    Width = 894
    Height = 49
    Align = alTop
    Caption = 'HISTORI TINDAKAN'
    Color = 15115304
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindow
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object pnlKeluar: TPanel
      Left = 799
      Top = 1
      Width = 94
      Height = 47
      Align = alRight
      Caption = 'KELUAR'
      Color = 5855743
      TabOrder = 0
      Visible = False
      OnClick = pnlKeluarClick
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 265
    Width = 894
    Height = 49
    Align = alBottom
    Color = 15115304
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindow
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object btnProses: TButton
      Left = 16
      Top = 16
      Width = 75
      Height = 25
      Caption = 'PROSES'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnProsesClick
    end
  end
  object pnlTengah: TPanel
    Left = 0
    Top = 49
    Width = 894
    Height = 216
    Align = alClient
    TabOrder = 2
    object dbgrdhHistoriTndk: TDBGridEh
      Left = 1
      Top = 1
      Width = 892
      Height = 214
      Align = alClient
      DataSource = DataSimrs.dsqryt_tindakanpasienrajal
      DynProps = <>
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'noTindakanPasienRajal'
          Footers = <>
          Title.Caption = 'NO TINDAKAN '
          Width = 162
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'tglTindakan'
          Footers = <>
          Title.Caption = 'TGL TINDAKAN'
          Width = 120
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'totalTarifTindakan'
          Footers = <>
          Title.Caption = 'TOTAL TARIF'
          Width = 128
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'statusPembayaran'
          Footers = <>
          Title.Caption = 'STATUS PEMBAYARAN'
          Width = 155
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
end
