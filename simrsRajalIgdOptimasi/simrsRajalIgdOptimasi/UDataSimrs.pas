unit UDataSimrs;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataSimrs = class(TDataModule)
    conSimrs: TADOConnection;
    qrywv_unitrajal: TADOQuery;
    dswv_unitrajal: TDataSource;
    qryWvTenagaMedis: TADOQuery;
    dsVwTenagaMedis: TDataSource;
    qryvw_detailtindakanpasienrajal: TADOQuery;
    dsvw_detailtindakanpasienrajal: TDataSource;
    qryvw_RiwayatTindakanLabRajal: TADOQuery;
    dsvw_riwayattindakanlabrajal: TDataSource;
    qryvw_riwayattindakanradrajal: TADOQuery;
    dsvw_riwayattindakanradrajal: TDataSource;
    qryvw_pasienrawatjalan: TADOQuery;
    dsvw_pasienrawatjalan: TDataSource;
    qryt_registrasi: TADOQuery;
    qryvw_anamesa: TADOQuery;
    qryDokter: TADOQuery;
    dsDokter: TDataSource;
    qryvw_icd10: TADOQuery;
    qryvw_diagnosa10: TADOQuery;
    qryt_kasusdiagnosa: TADOQuery;
    dst_kasusdiagnosa: TDataSource;
    qryt_jenisdiagnosa: TADOQuery;
    dst_jenisdiagnosa: TDataSource;
    qryvw_t_transaksiicd9: TADOQuery;
    dsvw_t_transaksiicd9: TDataSource;
    qryIcd9: TADOQuery;
    qryt_transaksiicd9: TADOQuery;
    qryVwPasien: TADOQuery;
    qryt_registrasirawatjalan: TADOQuery;
    qryt_tindakanpasienrajal: TADOQuery;
    dsqryt_tindakanpasienrajal: TDataSource;
    qryvw_tindakantarifrajalkelompok: TADOQuery;
    qryt_detailtindakanpasienrajal: TADOQuery;
    qryt_pemeriksaanfisik: TADOQuery;
    dst_pemeriksaanfisik: TDataSource;
    qryt_pemeriksaanfisikvital: TADOQuery;
    qryt_registrasipenunjangrajal: TADOQuery;
    dst_registrasipenunjangrajal: TDataSource;
    qryt_tindakanpenunjangrajal: TADOQuery;
    dst_tindakanpenunjangrajal: TDataSource;
    qryt_detailtindakanpenunjangrajal: TADOQuery;
    dst_detailtindakanpenunjangrajal: TDataSource;
    qryvw_detailtindakanpenunjangrajal: TADOQuery;
    dsvw_detailtindakanpenunjangrajal: TDataSource;
    qryvw_tindakanlab: TADOQuery;
    dsvw_tindakanlab: TDataSource;
    qryt_registrasiradiologirajal: TADOQuery;
    qryt_tindakanradiologirajal: TADOQuery;
    qryvw_detailtindakanradiologirajal: TADOQuery;
    qryt_detailtindakanradiologirajal: TADOQuery;
    qryvw_tindakanrad: TADOQuery;
    dsvw_tindakanrad: TDataSource;
    dsvw_detailtindakanradiologirajal: TDataSource;
    qryStatusPulang: TADOQuery;
    dsStatusKeluar: TDataSource;
    qryCaraKeluar: TADOQuery;
    dsCaraKeluar: TDataSource;
    qryt_pemakai: TADOQuery;
    qryt_aksesmenu: TADOQuery;
    dsvw_tindakantarifrajalkelomopok: TDataSource;
    conFarmasi: TADOConnection;
    qryObatRajal: TADOQuery;
    dsObatRajal: TDataSource;
    qryt_resepranap: TADOQuery;
    qryt_detailresepranap: TADOQuery;
    dst_detailresepranap: TDataSource;
    qryt_detailracikan: TADOQuery;
    dst_detailracikan: TDataSource;
    qryt_tindakanrawatjalankelompok: TADOQuery;
    qryvw_tindakantarifrajal: TADOQuery;
    dsvw_tindakantarifrajal: TDataSource;
    qryHd: TADOQuery;
    dsHd: TDataSource;
    qryTd: TADOQuery;
    dsTd: TDataSource;
    conSimLab: TADOConnection;
    qryt_registrasiokrajal: TADOQuery;
    qryt_jenisoperasi: TADOQuery;
    dst_jenis_operasi: TDataSource;
    dst_resepranap: TDataSource;
    qryt_penjualanobatrajal: TADOQuery;
    dst_penjualanobatrajal: TDataSource;
    qryt_detailpenjualanobatrajal: TADOQuery;
    dst_detailpenjualanobatrajal: TDataSource;
    qryt_jadwalkontrolpasienrajal: TADOQuery;
    dst_jadwalkontrolpasienrajal: TDataSource;
    qryt_antrianpoli: TADOQuery;
    dst_antrianpoli: TDataSource;
    qryt_statusantrian: TADOQuery;
    dst_statusantrian: TDataSource;
    qryRl4B: TADOQuery;
    dsRL4B: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
    
  end;

var
  DataSimrs: TDataSimrs;

implementation

{$R *.dfm}

end.
