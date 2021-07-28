object DataSimrs: TDataSimrs
  OldCreateOrder = False
  Left = 282
  Top = 31
  Height = 907
  Width = 1406
  object conSimrs: TADOConnection
    Connected = True
    ConnectionString = 'Provider=MSDASQL.1;Persist Security Info=False;Data Source=simrs'
    LoginPrompt = False
    Left = 32
    Top = 16
  end
  object qrywv_unitrajal: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      't_unit.kdUnit,'
      't_unit.unit,'
      't_unit.JasaRs,'
      't_unit.jasaMedis,'
      't_unit.kdInstalasi'
      'FROM'
      't_unit WHERE kdInstalasi='#39'ki1'#39' OR kdInstalasi='#39'ki4'#39)
    Left = 32
    Top = 72
  end
  object dswv_unitrajal: TDataSource
    DataSet = qrywv_unitrajal
    Left = 112
    Top = 72
  end
  object qryWvTenagaMedis: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      't_tenagamedis2.kdPetugasMedis,'
      't_tenagamedis2.namapetugasMedis,'
      't_tenagamedis2.kdKelompokTenagaMedis,'
      't_kelompoktenagamedis.KelompokTenagaMedis'
      'FROM'
      't_tenagamedis2'
      
        'INNER JOIN t_kelompoktenagamedis ON t_tenagamedis2.kdKelompokTen' +
        'agaMedis = t_kelompoktenagamedis.kdKelompokTenagaMedis')
    Left = 40
    Top = 128
  end
  object dsVwTenagaMedis: TDataSource
    DataSet = qryWvTenagaMedis
    Left = 112
    Top = 152
  end
  object qryvw_detailtindakanpasienrajal: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      't_detailtindakanpasienrajal.idTindakanPasienRajal,'
      't_detailtindakanpasienrajal.noTindakanPasienRajal,'
      't_detailtindakanpasienrajal.kdTarif,'
      't_detailtindakanpasienrajal.tindakan,'
      't_detailtindakanpasienrajal.tarif,'
      't_detailtindakanpasienrajal.jumlahTindakan,'
      't_detailtindakanpasienrajal.totalTarif,'
      't_detailtindakanpasienrajal.kdTenagaMedis,'
      't_tenagamedis2.namapetugasMedis,'
      't_kelompoktenagamedis.KelompokTenagaMedis,'
      't_tindakanpasienrajal.noRegistrasiRawatJalan,'
      't_registrasirawatjalan.noDaftar,'
      't_tindakanpasienrajal.noTindakanPasienRajal'
      'FROM'
      't_detailtindakanpasienrajal'
      
        'INNER JOIN t_tenagamedis2 ON t_detailtindakanpasienrajal.kdTenag' +
        'aMedis = t_tenagamedis2.kdPetugasMedis'
      
        'INNER JOIN t_kelompoktenagamedis ON t_tenagamedis2.kdKelompokTen' +
        'agaMedis = t_kelompoktenagamedis.kdKelompokTenagaMedis'
      
        'INNER JOIN t_tindakanpasienrajal ON t_detailtindakanpasienrajal.' +
        'noTindakanPasienRajal = t_tindakanpasienrajal.noTindakanPasienRa' +
        'jal'
      
        'INNER JOIN t_registrasirawatjalan ON t_registrasirawatjalan.noRe' +
        'gistrasiRawatJalan = t_tindakanpasienrajal.noRegistrasiRawatJala' +
        'n '
      'limit 30')
    Left = 72
    Top = 208
  end
  object dsvw_detailtindakanpasienrajal: TDataSource
    DataSet = qryvw_detailtindakanpasienrajal
    Left = 184
    Top = 232
  end
  object qryvw_RiwayatTindakanLabRajal: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      't_registrasi.noRekamedis,'
      't_registrasi.noDaftar,'
      't_registrasipenunjangrajal.noRegistrasiPenunjangRajal,'
      't_detailtindakanpenunjangrajal.tindakan,'
      't_detailtindakanpenunjangrajal.tarif,'
      't_detailtindakanpenunjangrajal.jumlahTindakan,'
      't_detailtindakanpenunjangrajal.totalTarif'
      'FROM'
      't_registrasi'
      
        'Inner Join t_registrasipenunjangrajal ON t_registrasipenunjangra' +
        'jal.noDaftar = t_registrasi.noDaftar'
      
        'Inner Join t_tindakanpenunjangrajal ON t_registrasipenunjangraja' +
        'l.noRegistrasiPenunjangRajal = t_tindakanpenunjangrajal.noRegist' +
        'rasiPenunjangRajal'
      
        'Inner Join t_detailtindakanpenunjangrajal ON t_tindakanpenunjang' +
        'rajal.noTindakanPenunjangRajal = t_detailtindakanpenunjangrajal.' +
        'noTindakanPenunjangRajal'
      'limit 10')
    Left = 80
    Top = 288
  end
  object dsvw_riwayattindakanlabrajal: TDataSource
    DataSet = qryvw_RiwayatTindakanLabRajal
    Left = 192
    Top = 304
  end
  object qryvw_riwayattindakanradrajal: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      't_registrasiradiologirajal.noDaftar,'
      't_detailtindakanradiologirajal.kdTarif,'
      't_detailtindakanradiologirajal.tindakan,'
      't_detailtindakanradiologirajal.tarif,'
      't_detailtindakanradiologirajal.jumlahTindakan,'
      't_detailtindakanradiologirajal.totalTarif,'
      't_detailtindakanradiologirajal.statusTindakan'
      'FROM'
      't_tindakanradiologirajal'
      
        'INNER JOIN t_registrasiradiologirajal ON t_tindakanradiologiraja' +
        'l.noRegistrasiRadiologiRajal = t_registrasiradiologirajal.noRegi' +
        'strasiRadiologiRajal'
      
        'INNER JOIN t_detailtindakanradiologirajal ON t_detailtindakanrad' +
        'iologirajal.noTindakanRadiologiRajal = t_tindakanradiologirajal.' +
        'noTindakanRadiologiRajal '
      'limit 10')
    Left = 80
    Top = 352
  end
  object dsvw_riwayattindakanradrajal: TDataSource
    DataSet = qryvw_riwayattindakanradrajal
    Left = 184
    Top = 368
  end
  object qryvw_pasienrawatjalan: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      't_registrasi.noDaftar,'
      't_registrasi.noRekamedis,'
      't_registrasirawatjalan.noRegistrasiRawatJalan,'
      't_registrasi.tglDaftar,'
      't_registrasi.tglPulang,'
      't_pasien.nmPasien,'
      't_pasien.tempatLahir,'
      't_pasien.tglLahir,'
      't_pasien.jenisKelamin,'
      't_pasien.agama,'
      't_pasien.alamat,'
      't_registrasirawatjalan.kdUnit,'
      't_unit.unit,'
      't_asalpasien.asalPasien,'
      't_carabayar.carabayar,'
      't_penjamin.penjamin,'
      't_statuskeluar.statusKeluar,'
      't_tenagamedis2.namapetugasMedis,'
      't_registrasirawatjalan.ketMasukPasien,'
      't_registrasirawatjalan.statusPasien,'
      't_registrasi.statusCovid19'
      'FROM'
      't_registrasi'
      
        'INNER JOIN t_registrasirawatjalan ON t_registrasi.noDaftar = t_r' +
        'egistrasirawatjalan.noDaftar'
      
        'INNER JOIN t_pasien ON t_registrasi.noRekamedis = t_pasien.noRek' +
        'amedis'
      
        'INNER JOIN t_unit ON t_registrasirawatjalan.kdUnit = t_unit.kdUn' +
        'it'
      
        'INNER JOIN t_asalpasien ON t_registrasi.kdAsalPasien = t_asalpas' +
        'ien.kdAsalPasien'
      
        'INNER JOIN t_carabayar ON t_registrasi.kdCaraBayar = t_carabayar' +
        '.kdCaraBayar'
      
        'INNER JOIN t_penjamin ON t_registrasi.kdPenjamin = t_penjamin.kd' +
        'Penjamin'
      
        'INNER JOIN t_statuskeluar ON t_registrasi.kdStatusKeluar = t_sta' +
        'tuskeluar.kdStatusKeluar'
      
        'LEFT JOIN t_tenagamedis2 ON t_registrasi.kdTenagaMedis = t_tenag' +
        'amedis2.kdPetugasMedis LIMIT 10')
    Left = 64
    Top = 416
  end
  object dsvw_pasienrawatjalan: TDataSource
    DataSet = qryvw_pasienrawatjalan
    Left = 184
    Top = 416
  end
  object qryt_registrasi: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_registrasi limit 20')
    Left = 64
    Top = 480
  end
  object qryvw_anamesa: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      't_anamnesa.noDaftar,'
      't_anamnesa.noRekamedis,'
      't_anamnesa.kdTenagaMedis,'
      't_anamnesa.anamesa'
      'FROM'
      't_anamnesa'
      'limit 10')
    Left = 160
    Top = 488
  end
  object qryDokter: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      't_tenagamedis2.kdPetugasMedis,'
      't_tenagamedis2.namapetugasMedis,'
      't_tenagamedis2.kdKelompokTenagaMedis,'
      't_kelompoktenagamedis.KelompokTenagaMedis'
      'FROM'
      't_kelompoktenagamedis'
      
        'INNER JOIN t_tenagamedis2 ON t_tenagamedis2.kdKelompokTenagaMedi' +
        's = t_kelompoktenagamedis.kdKelompokTenagaMedis'
      'WHERE'
      't_tenagamedis2.kdKelompokTenagaMedis'
      'IN ('#39'ktm1'#39','#39'ktm2'#39','#39'ktm5'#39','#39'ktm6'#39','#39'ktm7'#39','#39'ktm8'#39')')
    Left = 32
    Top = 536
  end
  object dsDokter: TDataSource
    DataSet = qryDokter
    Left = 80
    Top = 552
  end
  object qryvw_icd10: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_icd10 limit 50')
    Left = 176
    Top = 24
  end
  object qryvw_diagnosa10: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      't_diagnosaicd10.noDiagnosaIcd10,'
      't_diagnosaicd10.noDaftar,'
      't_diagnosaicd10.noRekamedis,'
      't_diagnosaicd10.kdIcd10,'
      't_diagnosaicd10.icd10,'
      't_diagnosaicd10.kdJenisDiagnosa,'
      't_jenisdiagnosa.jenisDiagnosa,'
      't_diagnosaicd10.kdJenisKasus,'
      't_kasusdiagnosa.kasus,'
      't_diagnosaicd10.kdTenagaMedis,'
      't_tenagamedis2.namapetugasMedis,'
      't_registrasi.tglDaftar,'
      't_unit.unit'
      'FROM'
      't_diagnosaicd10'
      
        'INNER JOIN t_tenagamedis2 ON t_diagnosaicd10.kdTenagaMedis = t_t' +
        'enagamedis2.kdPetugasMedis'
      
        'INNER JOIN t_jenisdiagnosa ON t_diagnosaicd10.kdJenisDiagnosa = ' +
        't_jenisdiagnosa.kdJenisDiagnosa'
      
        'INNER JOIN t_kasusdiagnosa ON t_diagnosaicd10.kdJenisKasus = t_k' +
        'asusdiagnosa.kdKasusDiagnosa'
      
        'INNER JOIN t_registrasi ON t_diagnosaicd10.noDaftar = t_registra' +
        'si.noDaftar'
      
        'INNER JOIN t_registrasirawatjalan ON t_registrasirawatjalan.noDa' +
        'ftar = t_registrasi.noDaftar'
      
        'INNER JOIN t_unit ON t_unit.kdUnit = t_registrasirawatjalan.kdUn' +
        'it ')
    Left = 264
    Top = 32
  end
  object qryt_kasusdiagnosa: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_kasusdiagnosa')
    Left = 208
    Top = 88
  end
  object dst_kasusdiagnosa: TDataSource
    DataSet = qryt_kasusdiagnosa
    Left = 304
    Top = 96
  end
  object qryt_jenisdiagnosa: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_jenisdiagnosa')
    Left = 248
    Top = 160
  end
  object dst_jenisdiagnosa: TDataSource
    DataSet = qryt_jenisdiagnosa
    Left = 344
    Top = 160
  end
  object qryvw_t_transaksiicd9: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      't_transaksiicd9.noIcd9Pasien,'
      't_transaksiicd9.noDaftar,'
      't_transaksiicd9.kdIcd9,'
      't_transaksiicd9.icd,'
      't_transaksiicd9.kdPetugasMedis,'
      't_tenagamedis2.namapetugasMedis,'
      't_transaksiicd9.noRekamedis'
      'FROM'
      't_transaksiicd9'
      
        'INNER JOIN t_tenagamedis2 ON t_transaksiicd9.kdPetugasMedis = t_' +
        'tenagamedis2.kdPetugasMedis'
      'LIMIT 10')
    Left = 336
    Top = 232
  end
  object dsvw_t_transaksiicd9: TDataSource
    DataSet = qryvw_t_transaksiicd9
    Left = 424
    Top = 248
  end
  object qryIcd9: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_icd9  limit 50')
    Left = 336
    Top = 304
  end
  object qryt_transaksiicd9: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_transaksiicd9')
    Left = 408
    Top = 312
  end
  object qryVwPasien: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'#10#9
      'norekamedis,'#10#9
      'nmPasien,'#10
      'tempatLahir,'#10#9
      'tglLahir,'#10#9
      'jenisKelamin,'#10#9
      'agama,'#10#9
      'alamat,'#10#9
      'kelurahan,'#10
      'kecamatan,'#10#9
      'kabupaten,'#10#9
      'provinsi,'#10#9'pekerjaan '#10'FROM'#10' t_pasien LIMIT 20')
    Left = 344
    Top = 368
  end
  object qryt_registrasirawatjalan: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_registrasirawatjalan limit 20')
    Left = 336
    Top = 424
  end
  object qryt_tindakanpasienrajal: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_tindakanpasienrajal ')
    Left = 272
    Top = 480
  end
  object dsqryt_tindakanpasienrajal: TDataSource
    DataSet = qryt_tindakanpasienrajal
    Left = 360
    Top = 504
  end
  object qryvw_tindakantarifrajalkelompok: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      't_tariftindakan2.kdTarif,'
      't_tariftindakan2.kdTindakan,'
      't_tindakan2.tindakan,'
      't_tindakan2.kdKelompokTindakan,'
      't_kelompoktindakan.kelompokTindakan,'
      't_tariftindakan2.tarif,'
      't_tindakanrawatjalankelompok.unit,'
      't_tindakanrawatjalankelompok.idTindakanRawatjalanKelompok'
      'FROM'
      't_tindakan2'
      
        'INNER JOIN t_kelompoktindakan ON t_tindakan2.kdKelompokTindakan ' +
        '= t_kelompoktindakan.kdKelompokTindakan'
      
        'INNER JOIN t_tariftindakan2 ON t_tariftindakan2.kdTindakan = t_t' +
        'indakan2.kdTindakan'
      
        'INNER JOIN t_tindakanrawatjalankelompok ON t_tindakanrawatjalank' +
        'elompok.kdTarif = t_tariftindakan2.kdTarif AND t_tindakanrawatja' +
        'lankelompok.kdTindakan = t_tariftindakan2.kdTindakan')
    Left = 208
    Top = 544
  end
  object qryt_detailtindakanpasienrajal: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_detailtindakanpasienrajal limit 20')
    Left = 368
    Top = 568
  end
  object qryt_pemeriksaanfisik: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_pemeriksaanfisik limit 10')
    Left = 400
    Top = 32
  end
  object dst_pemeriksaanfisik: TDataSource
    DataSet = qryt_pemeriksaanfisik
    Left = 504
    Top = 32
  end
  object qryt_pemeriksaanfisikvital: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_pemeriksaanfisikvital limit 10')
    Left = 440
    Top = 96
  end
  object qryt_registrasipenunjangrajal: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_registrasipenunjangrajal limit 10')
    Left = 568
    Top = 152
  end
  object dst_registrasipenunjangrajal: TDataSource
    DataSet = qryt_registrasipenunjangrajal
    Left = 712
    Top = 152
  end
  object qryt_tindakanpenunjangrajal: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_tindakanpenunjangrajal limit 20')
    Left = 584
    Top = 96
  end
  object dst_tindakanpenunjangrajal: TDataSource
    DataSet = qryt_tindakanpenunjangrajal
    Left = 728
    Top = 96
  end
  object qryt_detailtindakanpenunjangrajal: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_detailtindakanpenunjangrajal limit 10')
    Left = 576
    Top = 208
  end
  object dst_detailtindakanpenunjangrajal: TDataSource
    DataSet = qryt_detailtindakanpenunjangrajal
    Left = 736
    Top = 208
  end
  object qryvw_detailtindakanpenunjangrajal: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      't_detailtindakanpenunjangrajal.idTindakanPenunjangRajal,'
      't_detailtindakanpenunjangrajal.noTindakanPenunjangRajal,'
      't_detailtindakanpenunjangrajal.kdTarif,'
      't_detailtindakanpenunjangrajal.tindakan,'
      't_detailtindakanpenunjangrajal.tarif,'
      't_detailtindakanpenunjangrajal.jumlahTindakan,'
      't_detailtindakanpenunjangrajal.totalTarif,'
      't_detailtindakanpenunjangrajal.kdTenagaMedis,'
      't_tenagamedis2.namapetugasMedis'
      'FROM'
      't_detailtindakanpenunjangrajal'
      
        'INNER JOIN t_tenagamedis2 ON t_detailtindakanpenunjangrajal.kdTe' +
        'nagaMedis = t_tenagamedis2.kdPetugasMedis'
      '')
    Left = 584
    Top = 264
  end
  object dsvw_detailtindakanpenunjangrajal: TDataSource
    DataSet = qryvw_detailtindakanpenunjangrajal
    Left = 760
    Top = 264
  end
  object qryvw_tindakanlab: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      't_tindakan2.kdTindakan,'
      't_tindakan2.tindakan,'
      't_tindakan2.kdKelompokTindakan,'
      't_kelompoktindakan.kelompokTindakan,'
      't_tariftindakan2.kdTarif,'
      't_tariftindakan2.kdKelas,'
      't_tariftindakan2.tarif,'
      't_kelas.kelas'
      'FROM'
      't_tindakan2'
      
        'INNER JOIN t_kelompoktindakan ON t_tindakan2.kdKelompokTindakan ' +
        '= t_kelompoktindakan.kdKelompokTindakan'
      
        'INNER JOIN t_tariftindakan2 ON t_tindakan2.kdTindakan = t_tarift' +
        'indakan2.kdTindakan'
      'INNER JOIN t_kelas ON t_tariftindakan2.kdKelas = t_kelas.kdKelas'
      'WHERE'
      '(t_tindakan2.kdKelompokTindakan BETWEEN '#39'15'#39' AND '#39'24'#39')')
    Left = 584
    Top = 320
  end
  object dsvw_tindakanlab: TDataSource
    DataSet = qryvw_tindakanlab
    Left = 704
    Top = 312
  end
  object qryt_registrasiradiologirajal: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_registrasiradiologirajal limit 10')
    Left = 560
    Top = 376
  end
  object qryt_tindakanradiologirajal: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_tindakanradiologirajal limit 10')
    Left = 696
    Top = 376
  end
  object qryvw_detailtindakanradiologirajal: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      't_detailtindakanradiologirajal.idTindakanRadiologiRajal,'
      't_detailtindakanradiologirajal.noTindakanRadiologiRajal,'
      't_detailtindakanradiologirajal.kdTarif,'
      't_detailtindakanradiologirajal.tindakan,'
      't_detailtindakanradiologirajal.tarif,'
      't_detailtindakanradiologirajal.jumlahTindakan,'
      't_detailtindakanradiologirajal.totalTarif,'
      't_tenagamedis2.namapetugasMedis'
      'FROM'
      't_detailtindakanradiologirajal'
      
        'INNER JOIN t_tenagamedis2 ON t_detailtindakanradiologirajal.kdTe' +
        'nagaMedis = t_tenagamedis2.kdPetugasMedis'
      'limit 10')
    Left = 568
    Top = 432
  end
  object qryt_detailtindakanradiologirajal: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_detailtindakanradiologirajal limit 20')
    Left = 560
    Top = 488
  end
  object qryvw_tindakanrad: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      't_tindakan2.kdTindakan,'
      't_tindakan2.tindakan,'
      't_tindakan2.kdKelompokTindakan,'
      't_kelompoktindakan.kelompokTindakan,'
      't_tariftindakan2.kdTarif,'
      't_tariftindakan2.kdKelas,'
      't_tariftindakan2.tarif,'
      't_kelas.kelas'
      'FROM'
      't_tindakan2'
      
        'INNER JOIN t_kelompoktindakan ON t_tindakan2.kdKelompokTindakan ' +
        '= t_kelompoktindakan.kdKelompokTindakan'
      
        'INNER JOIN t_tariftindakan2 ON t_tindakan2.kdTindakan = t_tarift' +
        'indakan2.kdTindakan'
      'INNER JOIN t_kelas ON t_tariftindakan2.kdKelas = t_kelas.kdKelas'
      'WHERE'
      't_tindakan2.kdKelompokTindakan IN (26,27,28,29)')
    Left = 552
    Top = 552
  end
  object dsvw_tindakanrad: TDataSource
    DataSet = qryvw_tindakanrad
    Left = 656
    Top = 544
  end
  object dsvw_detailtindakanradiologirajal: TDataSource
    DataSet = qryvw_detailtindakanradiologirajal
    Left = 728
    Top = 440
  end
  object qryStatusPulang: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_statuskeluar')
    Left = 944
    Top = 104
  end
  object dsStatusKeluar: TDataSource
    AutoEdit = False
    DataSet = qryStatusPulang
    Left = 1016
    Top = 120
  end
  object qryCaraKeluar: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_carakeluar')
    Left = 864
    Top = 152
  end
  object dsCaraKeluar: TDataSource
    DataSet = qryCaraKeluar
    Left = 936
    Top = 176
  end
  object qryt_pemakai: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_pemakai')
    Left = 888
    Top = 240
  end
  object qryt_aksesmenu: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_aksesmenu')
    Left = 968
    Top = 240
  end
  object dsvw_tindakantarifrajalkelomopok: TDataSource
    DataSet = qryvw_tindakantarifrajalkelompok
    Left = 240
    Top = 600
  end
  object conFarmasi: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=farma' +
      'si;'
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 904
    Top = 368
  end
  object qryObatRajal: TADOQuery
    Connection = conFarmasi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_stokobat  limit 10')
    Left = 904
    Top = 432
  end
  object dsObatRajal: TDataSource
    DataSet = qryObatRajal
    Left = 976
    Top = 432
  end
  object qryt_resepranap: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_resepranap limit 10')
    Left = 912
    Top = 496
  end
  object qryt_detailresepranap: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_detailresepranap limit 10')
    Left = 912
    Top = 544
  end
  object dst_detailresepranap: TDataSource
    DataSet = qryt_detailresepranap
    Left = 1016
    Top = 544
  end
  object qryt_detailracikan: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_detailracikan limit 10')
    Left = 936
    Top = 616
  end
  object dst_detailracikan: TDataSource
    DataSet = qryt_detailracikan
    Left = 1024
    Top = 616
  end
  object qryt_tindakanrawatjalankelompok: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_tindakanrawatjalankelompok')
    Left = 544
    Top = 616
  end
  object qryvw_tindakantarifrajal: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      't_tariftindakan2.kdTarif,'
      't_tariftindakan2.kdTindakan,'
      't_tindakan2.tindakan,'
      't_tindakan2.kdKelompokTindakan,'
      't_kelompoktindakan.kelompokTindakan,'
      't_tariftindakan2.tarif'
      'FROM'
      't_tindakan2'
      
        'INNER JOIN t_kelompoktindakan ON t_tindakan2.kdKelompokTindakan ' +
        '= t_kelompoktindakan.kdKelompokTindakan'
      
        'INNER JOIN t_tariftindakan2 ON t_tariftindakan2.kdTindakan = t_t' +
        'indakan2.kdTindakan WHERE kdKelas IN('#39'10'#39','#39'18'#39','#39'19'#39','#39'30'#39') ')
    Left = 536
    Top = 680
  end
  object dsvw_tindakantarifrajal: TDataSource
    DataSet = qryvw_tindakantarifrajal
    Left = 656
    Top = 680
  end
  object qryHd: TADOQuery
    Connection = conSimLab
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '     `PID`'
      '    , `PNAME`'
      '    , `SEX`'
      '    , DATE_FORMAT(`DOB`,"%d-%m-%Y") AS tglLahir'
      '    , `AGEYY`'
      '    , `AGEMM`'
      '    , `AGEDD`'
      '    , `LNO`'
      '    ,DATE_FORMAT(`REQUEST_DT`,"%d-%m-%Y %H.%i") AS tglPermintaan'
      '    , DATE_FORMAT(`VALIDATE_ON`,"%d-%m-%Y %H.%i") AS tglSelesai'
      '    , `SOURCE_NM`'
      '    , `CLINICIAN_NM`'
      'FROM'
      '    `labreshd`'
      'limit 30')
    Left = 1184
    Top = 184
  end
  object dsHd: TDataSource
    DataSet = qryHd
    Left = 1264
    Top = 200
  end
  object qryTd: TADOQuery
    Connection = conSimLab
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '    `ONO`'
      '    , `TEST_GROUP`'
      '    , `ITEM_PARENT`'
      '    , `TEST_NM`'
      '    , `RESULT_VALUE`'
      '    , `RESULT_FT`'
      '    , `UNIT`'
      '    , `REF_RANGE`'
      '    , `FLAG`'
      '    , `VALIDATE_BY`'
      'FROM'
      '    `labresdt`'
      'limit 20')
    Left = 1192
    Top = 272
  end
  object dsTd: TDataSource
    DataSet = qryTd
    Left = 1256
    Top = 288
  end
  object conSimLab: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=simLa' +
      'b;'
    LoginPrompt = False
    Left = 1192
    Top = 128
  end
  object qryt_registrasiokrajal: TADOQuery
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_registrasiop')
    Left = 64
    Top = 688
  end
  object qryt_jenisoperasi: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_jenisoperasi')
    Left = 928
    Top = 680
  end
  object dst_jenis_operasi: TDataSource
    DataSet = qryt_jenisoperasi
    Left = 1032
    Top = 680
  end
  object dst_resepranap: TDataSource
    DataSet = qryt_resepranap
    Left = 1000
    Top = 488
  end
  object qryt_penjualanobatrajal: TADOQuery
    Connection = conFarmasi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_penjualanobatrajal')
    Left = 928
    Top = 736
  end
  object dst_penjualanobatrajal: TDataSource
    DataSet = qryt_penjualanobatrajal
    Left = 1048
    Top = 744
  end
  object qryt_detailpenjualanobatrajal: TADOQuery
    Connection = conFarmasi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM t_detailpenjualanobatrajal LIMIT 20')
    Left = 920
    Top = 816
  end
  object dst_detailpenjualanobatrajal: TDataSource
    DataSet = qryt_detailpenjualanobatrajal
    Left = 1056
    Top = 800
  end
  object qryt_jadwalkontrolpasienrajal: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_jadwalkontrolpasienrajal')
    Left = 80
    Top = 768
  end
  object dst_jadwalkontrolpasienrajal: TDataSource
    DataSet = qryt_jadwalkontrolpasienrajal
    Left = 216
    Top = 768
  end
  object qryt_antrianpoli: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_antrianpoli')
    Left = 56
    Top = 840
  end
  object dst_antrianpoli: TDataSource
    DataSet = qryt_antrianpoli
    Left = 136
    Top = 848
  end
  object qryt_statusantrian: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_statusantrian')
    Left = 232
    Top = 848
  end
  object dst_statusantrian: TDataSource
    DataSet = qryt_statusantrian
    Left = 320
    Top = 848
  end
  object qryt_detailtindakanpasienrajalhapus: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_detailtindakanpasienrajalhapus')
    Left = 544
    Top = 736
  end
  object qryt_statuscovid19: TADOQuery
    Active = True
    Connection = conSimrs
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_statuscovid19')
    Left = 672
    Top = 24
  end
  object dst_statuscovid19: TDataSource
    DataSet = qryt_statuscovid19
    Left = 768
    Top = 32
  end
end
