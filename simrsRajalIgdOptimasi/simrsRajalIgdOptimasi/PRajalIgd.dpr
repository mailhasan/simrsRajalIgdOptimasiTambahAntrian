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
  URiwayatKunjungan in 'URiwayatKunjungan.pas' {FRiwayatKunjungan},
  UUbahJmlTindkIgd in 'UUbahJmlTindkIgd.pas' {FUbahTndkJumlahIGD},
  UHistoriTndkIgd in 'UHistoriTndkIgd.pas' {FormHistoriTndkIgd},
  UStatusCovid19 in 'UStatusCovid19.pas' {FStatusCovid19},
  UHistoriTndkRajal in 'UHistoriTndkRajal.pas' {FHistoriTndkRajal},
  UAsesmenAwalIgd in 'UAsesmenAwalIgd.pas' {FAsesmenAwalIgd},
  UDataSimrs1 in 'UDataSimrs1.pas' {DataSimrs1: TDataModule},
  UAsemenAwalIgdTriage in 'UAsemenAwalIgdTriage.pas',
  UAsesmenAwalIgdStatus in 'UAsesmenAwalIgdStatus.pas',
  UAsemenAwalIgdNyeri in 'UAsemenAwalIgdNyeri.pas',
  UAsemenAwalIgdDischarge in 'UAsemenAwalIgdDischarge.pas',
  UAsesmenAwalFollowUp in 'UAsesmenAwalFollowUp.pas',
  UAsesmenAwalKondisiKrs in 'UAsesmenAwalKondisiKrs.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFAsesmenAwalIgd, FAsesmenAwalIgd);
  Application.CreateForm(TFLoginSimrs, FLoginSimrs);
  Application.CreateForm(TFRawatJalanIgd, FRawatJalanIgd);
  Application.CreateForm(TFKonsulAntarPoli, FKonsulAntarPoli);
  Application.CreateForm(TFPermintaanLabRajal, FPermintaanLabRajal);
  Application.CreateForm(TFPermintaanRadRajal, FPermintaanRadRajal);
  Application.CreateForm(TFTindakanRawatjalan, FTindakanRawatjalan);
  Application.CreateForm(TDataSimrs1, DataSimrs1);
  Application.CreateForm(TDataSimrs, DataSimrs);
  Application.CreateForm(TFTindakanIgd, FTindakanIgd);
  Application.CreateForm(TFStatusPulang, FStatusPulang);
  Application.CreateForm(TFStatusCovid19, FStatusCovid19);
  Application.CreateForm(TFRiwayatKunjungan, FRiwayatKunjungan);
  Application.CreateForm(TFEresepRajal, FEresepRajal);
  Application.CreateForm(TFRiwayatObatPasien, FRiwayatObatPasien);
  Application.CreateForm(TFJadwalKontrolPasienRajal, FJadwalKontrolPasienRajal);
  Application.CreateForm(TFAnamesaPasien, FAnamesaPasien);
  Application.CreateForm(TFDiagnosaIcd10, FDiagnosaIcd10);
  Application.CreateForm(TFDiagnosaIcd9, FDiagnosaIcd9);
  Application.CreateForm(TFPemeriksaanFisik, FPemeriksaanFisik);
  Application.CreateForm(TFObatRacikanRawatJalan, FObatRacikanRawatJalan);
  Application.CreateForm(TFMasukanTindakanRawatJalan, FMasukanTindakanRawatJalan);
  Application.CreateForm(TFRegistrasiRuangOk, FRegistrasiRuangOk);
  Application.CreateForm(TFTampilDetailIcd10, FTampilDetailIcd10);
  Application.CreateForm(TFUbahTndkJumlahIGD, FUbahTndkJumlahIGD);
  Application.CreateForm(TFormHistoriTndkIgd, FormHistoriTndkIgd);
  Application.CreateForm(TFHistoriTndkRajal, FHistoriTndkRajal);
  ///Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
