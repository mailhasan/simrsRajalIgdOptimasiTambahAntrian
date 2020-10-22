program PRajalIgd;

uses
  Forms,
  URajalIgd in 'URajalIgd.pas' {Form1},
  UDataSimrs in 'UDataSimrs.pas' {DataSimrs: TDataModule},
  UAnamesaPasien in 'UAnamesaPasien.pas' {FAnamesaPasien},
  UDiagnosaIcd10 in 'UDiagnosaIcd10.pas' {FDiagnosaIcd10},
  UDiagnosaIcd9 in 'UDiagnosaIcd9.pas' {FDiagnosaIcd9},
  UKonsulAntarPoli in 'UKonsulAntarPoli.pas' {FKonsulAntarPoli},
  UTindakanRawatjalan in 'UTindakanRawatjalan.pas' {FTindakanRawatjalan},
  UPemeriksaanFisik in 'UPemeriksaanFisik.pas' {FPemeriksaanFisik},
  UPermintaanLabRajal in 'UPermintaanLabRajal.pas' {FPermintaanLabRajal},
  UPermintaanRadRajal in 'UPermintaanRadRajal.pas' {FPermintaanRadRajal},
  UStatusPulang in 'UStatusPulang.pas' {FStatusPulang},
  ULoginSimrs in 'ULoginSimrs.pas' {FLoginSimrs},
  UTindakanIgd in 'UTindakanIgd.pas' {FTindakanIgd},
  UEresepRajal in 'UEresepRajal.pas' {FEresepRajal},
  UObatRacikanRawatJalan in 'UObatRacikanRawatJalan.pas' {FObatRacikanRawatJalan},
  UMasukanTindakanRawatJalan in 'UMasukanTindakanRawatJalan.pas' {FMasukanTindakanRawatJalan},
  URegistrasiRuangOk in 'URegistrasiRuangOk.pas' {FRegistrasiRuangOk},
  UTampilDetailIcd10 in 'UTampilDetailIcd10.pas' {FTampilDetailIcd10},
  URiwayatObatPasien in 'URiwayatObatPasien.pas' {FRiwayatObatPasien},
  UJadwalKontrolPasienRajal in 'UJadwalKontrolPasienRajal.pas' {FJadwalKontrolPasienRajal},
  ULaporanRl4B in 'ULaporanRl4B.pas' {FLaporanRl4b};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFRawatJalanIgd, FRawatJalanIgd);
  Application.CreateForm(TFLoginSimrs, FLoginSimrs);
  Application.CreateForm(TDataSimrs, DataSimrs);
  Application.CreateForm(TFAnamesaPasien, FAnamesaPasien);
  Application.CreateForm(TFDiagnosaIcd10, FDiagnosaIcd10);
  Application.CreateForm(TFDiagnosaIcd9, FDiagnosaIcd9);
  Application.CreateForm(TFKonsulAntarPoli, FKonsulAntarPoli);
  Application.CreateForm(TFTindakanRawatjalan, FTindakanRawatjalan);
  Application.CreateForm(TFPemeriksaanFisik, FPemeriksaanFisik);
  Application.CreateForm(TFPermintaanLabRajal, FPermintaanLabRajal);
  Application.CreateForm(TFPermintaanRadRajal, FPermintaanRadRajal);
  Application.CreateForm(TFStatusPulang, FStatusPulang);
  Application.CreateForm(TFTindakanIgd, FTindakanIgd);
  Application.CreateForm(TFEresepRajal, FEresepRajal);
  Application.CreateForm(TFObatRacikanRawatJalan, FObatRacikanRawatJalan);
  Application.CreateForm(TFMasukanTindakanRawatJalan, FMasukanTindakanRawatJalan);
  Application.CreateForm(TFRegistrasiRuangOk, FRegistrasiRuangOk);
  Application.CreateForm(TFTampilDetailIcd10, FTampilDetailIcd10);
  Application.CreateForm(TFRiwayatObatPasien, FRiwayatObatPasien);
  Application.CreateForm(TFJadwalKontrolPasienRajal, FJadwalKontrolPasienRajal);
  Application.CreateForm(TFLaporanRl4b, FLaporanRl4b);
  Application.Run;
end.
