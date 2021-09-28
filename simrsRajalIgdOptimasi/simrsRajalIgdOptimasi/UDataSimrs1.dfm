object DataSimrs1: TDataSimrs1
  OldCreateOrder = False
  Left = 261
  Top = 151
  Height = 843
  Width = 1280
  object conSimrs: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    AfterConnect = conSimrsAfterConnect
    HostName = '192.168.200.2'
    Port = 0
    Database = 'simrs'
    User = 'lis'
    Password = 'lis1234'
    Protocol = 'mysql'
    LibraryLocation = 
      '\\simrs_02\New folder\kelengkapan Pengembangan\programming\libmy' +
      'sql\libmysql.dll'
    Left = 216
    Top = 24
  end
  object qryt_asesmen_awal_triage: TZQuery
    Connection = conSimrs
    SQL.Strings = (
      'select * from t_asesmen_awal_triage')
    Params = <>
    Left = 80
    Top = 32
  end
  object qryt_asesmen_awal_status: TZQuery
    Connection = conSimrs
    SQL.Strings = (
      'select * from t_asesmen_awal_status')
    Params = <>
    Left = 80
    Top = 104
  end
  object qryt_asesmen_awal_nyeri: TZQuery
    Connection = conSimrs
    SQL.Strings = (
      'select * from t_asesmen_awal_nyeri')
    Params = <>
    Left = 80
    Top = 168
  end
  object qryt_asesmen_awal_humpty: TZQuery
    Connection = conSimrs
    SQL.Strings = (
      'select * from t_asesmen_awal_humpty')
    Params = <>
    Left = 80
    Top = 232
  end
  object qryt_asesmen_awal_discharge: TZQuery
    Connection = conSimrs
    SQL.Strings = (
      'select * from t_asesmen_awal_discharge')
    Params = <>
    Left = 80
    Top = 304
  end
  object qryt_asesmen_awal_follow: TZQuery
    Connection = conSimrs
    SQL.Strings = (
      'select * from t_asesmen_awal_follow')
    Params = <>
    Left = 72
    Top = 376
  end
  object qryt_asesmen_awal_kondisikrs: TZQuery
    Connection = conSimrs
    SQL.Strings = (
      'select * from t_asesmen_awal_kondisikrs')
    Params = <>
    Left = 80
    Top = 448
  end
  object qryt_asesmen_awal_observasi: TZQuery
    Connection = conSimrs
    SQL.Strings = (
      'SELECT * FROM t_asesmen_awal_observasi')
    Params = <>
    Left = 80
    Top = 512
  end
  object qryt_asesmen_awal_tindaklanjut: TZQuery
    Connection = conSimrs
    SQL.Strings = (
      'select * from t_asesmen_awal_tindaklanjut')
    Params = <>
    Left = 80
    Top = 592
  end
  object dst_asesmen_awal_triage: TDataSource
    DataSet = qryt_asesmen_awal_triage
    Left = 256
    Top = 64
  end
  object dst_asesmen_awal_status: TDataSource
    DataSet = qryt_asesmen_awal_status
    Left = 224
    Top = 128
  end
  object dst_asesmen_awal_nyeri: TDataSource
    DataSet = qryt_asesmen_awal_nyeri
    Left = 208
    Top = 192
  end
  object dst_asesmen_awal_humpty: TDataSource
    DataSet = qryt_asesmen_awal_humpty
    Left = 200
    Top = 256
  end
  object dst_asesmen_awal_discharge: TDataSource
    DataSet = qryt_asesmen_awal_discharge
    Left = 208
    Top = 328
  end
  object dst_asesmen_awal_follow: TDataSource
    DataSet = qryt_asesmen_awal_follow
    Left = 200
    Top = 400
  end
  object dst_asesmen_awal_kondisikrs: TDataSource
    DataSet = qryt_asesmen_awal_kondisikrs
    Left = 216
    Top = 472
  end
  object dst_asemen_awal_observasi: TDataSource
    DataSet = qryt_asesmen_awal_observasi
    Left = 224
    Top = 536
  end
  object dst_asesmen_awal_tindakLanjut: TDataSource
    DataSet = qryt_asesmen_awal_tindaklanjut
    Left = 224
    Top = 616
  end
  object zqryt_detail_asesmen_awal_follow: TZQuery
    Connection = conSimrs
    SQL.Strings = (
      'select * from t_detail_asesmen_awal_follow')
    Params = <>
    Left = 408
    Top = 40
  end
  object dst_detail_asesmen_awal_follow: TDataSource
    DataSet = zqryt_detail_asesmen_awal_follow
    Left = 456
    Top = 104
  end
end
