object FLaporanRl4b: TFLaporanRl4b
  Left = 244
  Top = 173
  Width = 642
  Height = 213
  Align = alCustom
  Caption = 'LAPORAN'
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
    Width = 626
    Height = 49
    Align = alTop
    Caption = 'LAPORAN FORMULIR RL 4B'
    Color = 15115304
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindow
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object pnlKeluar: TPanel
      Left = 488
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
  object pnlBawah: TPanel
    Left = 0
    Top = 122
    Width = 626
    Height = 52
    Align = alBottom
    Color = 15115304
    TabOrder = 1
    object btnTAMPIL: TcxButton
      Left = 488
      Top = 11
      Width = 75
      Height = 25
      Caption = 'TAMPIL'
      TabOrder = 0
      OnClick = btnTAMPILClick
    end
  end
  object pnlTengah: TPanel
    Left = 0
    Top = 49
    Width = 626
    Height = 73
    Align = alClient
    TabOrder = 2
    object cxlblUNIT: TcxLabel
      Left = 8
      Top = 8
      Caption = 'UNIT'
    end
    object cbbUNIT: TcxLookupComboBox
      Left = 80
      Top = 8
      Properties.KeyFieldNames = 'unit'
      Properties.ListColumns = <
        item
          Caption = 'UNIT'
          FieldName = 'unit'
        end>
      Properties.ListSource = DataSimrs.dswv_unitrajal
      TabOrder = 1
      Width = 193
    end
    object cxlblTglMulai: TcxLabel
      Left = 8
      Top = 32
      Caption = 'TGL MULAI'
    end
    object dtpTGLMULAI: TcxDateEdit
      Left = 80
      Top = 32
      TabOrder = 3
      Width = 193
    end
    object cxlblSAMPAI: TcxLabel
      Left = 280
      Top = 32
      Caption = 'TGL SAMPAI'
    end
    object dtpTGLSAMPAI: TcxDateEdit
      Left = 360
      Top = 32
      TabOrder = 5
      Width = 209
    end
  end
  object frxrprtRL4B: TfrxReport
    Version = '4.9.35'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44125.623887939800000000
    ReportOptions.LastChange = 44127.389178078700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      '                    '
      'end.')
    Left = 72
    Top = 113
    Datasets = <
      item
        DataSet = frxdbdtstRL4B
        DataSetName = 'frxDBDatasetRL48'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 279.400000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 60.472480000000000000
        Top = 18.897650000000000000
        Width = 980.410082000000000000
        object Memo1: TfrxMemoView
          Left = 302.362400000000000000
          Top = 3.779530000000000000
          Width = 389.291590000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Formulir RL 4B'
            'DATA KEADAAN MORBIDITAS PASIEN RAWAT JALAN')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 56.692950000000000000
          Width = 982.677800000000000000
          ShowHint = False
          Diagonal = True
        end
      end
      object MasterData1: TfrxMasterData
        Height = 94.488250000000000000
        Top = 268.346630000000000000
        Width = 980.410082000000000000
        DataSet = frxdbdtstRL4B
        DataSetName = 'frxDBDatasetRL48'
        RowCount = 0
        object frxDBDatasetRL48kdIcd10: TfrxMemoView
          Left = 11.338590000000000000
          Top = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'kdIcd10'
          DataSet = frxdbdtstRL4B
          DataSetName = 'frxDBDatasetRL48'
          Memo.UTF8 = (
            '[frxDBDatasetRL48."kdIcd10"]')
        end
        object frxDBDatasetRL48icd10: TfrxMemoView
          Left = 98.267780000000000000
          Top = 7.559060000000000000
          Width = 230.551330000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'icd10'
          DataSet = frxdbdtstRL4B
          DataSetName = 'frxDBDatasetRL48'
          Memo.UTF8 = (
            '[frxDBDatasetRL48."icd10"]')
        end
        object frxDBDatasetRL48umur06hr: TfrxMemoView
          Left = 332.598640000000000000
          Top = 7.559060000000000000
          Width = 283.464750000000000000
          Height = 86.929190000000000000
          ShowHint = False
          DataSet = frxdbdtstRL4B
          DataSetName = 'frxDBDatasetRL48'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clLime
          HAlign = haBlock
          Memo.UTF8 = (
            
              '0-6 hr : [frxDBDatasetRL48."umur06hr"]| 7-28hr : [frxDBDatasetRL' +
              '48."umur728hr"]| 28hr-1th : [frxDBDatasetRL48."umur28hr1TH"]| 1-' +
              '4th : [frxDBDatasetRL48."umur1_4th"]| 5-14th : [frxDBDatasetRL48' +
              '."umur5_14th"]| 15-24th : [frxDBDatasetRL48."UMUR15_24TH"]| 25-4' +
              '4th : [frxDBDatasetRL48."UMUR25_44TH"]| 45-64th : [frxDBDatasetR' +
              'L48."UMUR45_64TH"]| 65> : [frxDBDatasetRL48."UMUR65KeatasTH"]')
          ParentFont = False
        end
        object frxDBDatasetRL48KASUSLAMA_LAKIlAKI: TfrxMemoView
          Left = 642.520100000000000000
          Top = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 75.590600000000000000
          ShowHint = False
          DataSet = frxdbdtstRL4B
          DataSetName = 'frxDBDatasetRL48'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clLime
          HAlign = haBlock
          Memo.UTF8 = (
            'LK : [frxDBDatasetRL48."KASUSLAMA_LAKIlAKI"] '
            'PR :[frxDBDatasetRL48."KASUSBARU_PEREMPUAN"]'
            '     =[frxDBDatasetRL48."JUMLAHKASUSLAMA"]')
          ParentFont = False
        end
        object frxDBDatasetRL48KASUSBARU_LAKIlAKI: TfrxMemoView
          Left = 691.653990000000000000
          Top = 7.559060000000000000
          Width = 49.133890000000000000
          Height = 71.811070000000000000
          ShowHint = False
          DataSet = frxdbdtstRL4B
          DataSetName = 'frxDBDatasetRL48'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clLime
          HAlign = haBlock
          Memo.UTF8 = (
            'LK  : [frxDBDatasetRL48."KASUSBARU_LAKIlAKI"]'
            'PR : [frxDBDatasetRL48."KASUSBARU_PEREMPUAN"]'
            '    =  [frxDBDatasetRL48."JUMLAHKASUSBARU"]')
          ParentFont = False
        end
        object frxDBDatasetRL48JUMLAHKUNJUNGAN: TfrxMemoView
          Left = 786.142240000000000000
          Top = 7.559060000000000000
          Width = 192.756030000000000000
          Height = 83.149660000000000000
          ShowHint = False
          DataSet = frxdbdtstRL4B
          DataSetName = 'frxDBDatasetRL48'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clLime
          Memo.UTF8 = (
            'KUNJUNGAN : [frxDBDatasetRL48."JUMLAHKUNJUNGAN"] '
            'RUJUKAN : [frxDBDatasetRL48."JUMLAHRUJUKAN"] '
            'DI RUJUK : [frxDBDatasetRL48."JUMLAHDIRUJUK"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 60.472480000000000000
        Top = 102.047310000000000000
        Width = 980.410082000000000000
        object Memo8: TfrxMemoView
          Left = 15.118120000000000000
          Top = 22.677180000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clGray
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            'KODE')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 98.267780000000000000
          Top = 22.677180000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clGray
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            'ICD')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 340.157700000000000000
          Top = 22.677180000000000000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clGray
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'UMUR')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 793.701300000000000000
          Top = 18.897650000000000000
          Width = 113.385900000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clGray
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'JUMLAH')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 642.520100000000000000
          Width = 113.385900000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clGray
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'KASUS'
            'LAMA | BARU')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 15.118120000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ShowHint = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 423.307360000000000000
        Width = 980.410082000000000000
        object Memo3: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 967.559680000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'Page [Page] of [TotalPages]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 22.677180000000000000
        Top = 222.992270000000000000
        Width = 980.410082000000000000
        Condition = '<frxDBDatasetRL48."unit">'
        object frxDBDatasetRL48unit: TfrxMemoView
          Left = 7.559060000000000000
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 16777180
          DataSet = frxdbdtstRL4B
          DataSetName = 'frxDBDatasetRL48'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clRed
          Memo.UTF8 = (
            'POLI : [frxDBDatasetRL48."unit"]')
          ParentFont = False
        end
      end
    end
  end
  object frxdbdtstRL4B: TfrxDBDataset
    UserName = 'frxDBDatasetRL48'
    CloseDataSource = False
    FieldAliases.Strings = (
      'noDaftar=noDaftar'
      'tglDaftar=tglDaftar'
      'unit=unit'
      'kdIcd10=kdIcd10'
      'icd10=icd10'
      'umur06hr=umur06hr'
      'umur728hr=umur728hr'
      'umur28hr1TH=umur28hr1TH'
      'umur1_4th=umur1_4th'
      'umur5_14th=umur5_14th'
      'UMUR15_24TH=UMUR15_24TH'
      'UMUR25_44TH=UMUR25_44TH'
      'UMUR45_64TH=UMUR45_64TH'
      'UMUR65KeatasTH=UMUR65KeatasTH'
      'KASUSLAMA_LAKIlAKI=KASUSLAMA_LAKIlAKI'
      'KASUSLAMA_PEREMPUAN=KASUSLAMA_PEREMPUAN'
      'JUMLAHKASUSLAMA=JUMLAHKASUSLAMA'
      'KASUSBARU_LAKIlAKI=KASUSBARU_LAKIlAKI'
      'KASUSBARU_PEREMPUAN=KASUSBARU_PEREMPUAN'
      'JUMLAHKASUSBARU=JUMLAHKASUSBARU'
      'JUMLAHKUNJUNGAN=JUMLAHKUNJUNGAN'
      'JUMLAHRUJUKAN=JUMLAHRUJUKAN'
      'JUMLAHDIRUJUK=JUMLAHDIRUJUK')
    BCDToCurrency = False
    Left = 160
    Top = 113
  end
  object frxpdfxprt1: TfrxPDFExport
    FileName = 'C:\Users\mail\Desktop\RL4B.pdf'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    OpenAfterExport = True
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 264
    Top = 121
  end
  object frxmlxprt1: TfrxXMLExport
    FileName = 
      'E:\sim\simrs\simrsRajalIgdOptimasiTambahAntrian\simrsRajalIgdOpt' +
      'imasi\simrsRajalIgdOptimasi\RL4B.xls'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Background = True
    Creator = 'FastReport'
    EmptyLines = True
    SuppressPageHeadersFooters = False
    RowsCount = 0
    Split = ssNotSplit
    Left = 336
    Top = 130
  end
  object frxcsvxprt1: TfrxCSVExport
    FileName = 'C:\Users\mail\Desktop\RL4B.csv'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Separator = ';'
    OEMCodepage = False
    NoSysSymbols = True
    ForcedQuotes = False
    Left = 392
    Top = 138
  end
end
