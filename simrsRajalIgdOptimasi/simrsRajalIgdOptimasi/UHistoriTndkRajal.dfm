object FHistoriTndkRajal: TFHistoriTndkRajal
  Left = 662
  Top = 432
  Width = 569
  Height = 359
  Caption = 'HISTORI TINDKAN RAWAT JALAN'
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
  object grpHistoriTndkRajal: TGroupBox
    Left = 0
    Top = 0
    Width = 553
    Height = 262
    Align = alClient
    Caption = 'HISTORI TINDAKAN RAJAL'
    TabOrder = 0
    object dbgrdhHistoriTndkRajal: TDBGridEh
      Left = 2
      Top = 15
      Width = 549
      Height = 245
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
          Title.Caption = 'NO TINDK '
          Width = 148
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'tglTindakan'
          Footers = <>
          Title.Caption = 'TGL TINDAKAN'
          Width = 132
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'totalTarifTindakan'
          Footers = <>
          Title.Caption = 'TOTAL'
          Width = 79
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'statusPembayaran'
          Footers = <>
          Title.Caption = 'STATUS PEMBAYARAN'
          Width = 151
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object grpMENU: TGroupBox
    Left = 0
    Top = 262
    Width = 553
    Height = 58
    Align = alBottom
    Caption = 'MENU'
    TabOrder = 1
    object lblNoRegisPasien: TLabel
      Left = 416
      Top = 24
      Width = 83
      Height = 13
      Caption = 'lblNoRegisPasien'
    end
    object btnProses: TButton
      Left = 16
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Proses'
      TabOrder = 0
      OnClick = btnProsesClick
    end
  end
end
