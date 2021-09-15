unit UAsemenAwalIgdDischarge;

interface

procedure baruDicharge;
procedure proesesSimpanDicharge;

procedure usiaLbh65;
procedure keterBtsMobilitias;
procedure perawatan;
procedure bntUntuk;

procedure klhUtama;
procedure rwtAlergi;
procedure rwtPenyakitYgLalu;
procedure mngKnObat;
procedure rwtPyktKeluarga;



implementation

uses Messages,Dialogs,UDataSimrs1,UAsesmenAwalIgd, SysUtils, Forms, ZDataset,
  ZAbstractRODataset, DB, StdCtrls, Variants, DateUtils;

  /// baru
procedure baruDicharge;
begin
 With FAsesmenAwalIgd do
 begin
   cbya1.Checked:= False;
   cbtidak1.Checked:= False;
   cbya2.Checked:= False;
   cbya3.Checked:= False;
   cbya4.Checked:= False;
   cbtidak2.Checked:= False;
   cbtidak3.Checked:= False;
   cbtidak4.Checked:= False;

   /// masalah keperawatan
   cxtmdt01.Time := Now;
   cxtmdt02.Time := Now;
   cxtmdt03.Time := Now;
   cxtmdt04.Time := Now;
   cxtmdt05.Time := Now;
   cxtmdt06.Time := Now;
   cxtmdt07.Time := Now;
   cxtmdt08.Time := Now;
   cxtmdt09.Time := Now;
   cxtmdt10.Time := Now;
   cxtmdt11.Time := Now;
   cxtmdt12.Time := Now;
   cxtmdt13.Time := Now;
   cxtmdt14.Time := Now;
   cxtmdt15.Time := Now;

   edtlain1.Text := '';
   edtlain2.Text := '';
   edtlain3.Text := '';

   edtimplementasi1.Text := '';
   edtimplementasi2.Text := '';
   edtimplementasi3.Text := '';
   edtimplementasi4.Text := '';
   edtimplementasi5.Text := '';
   edtimplementasi6.Text := '';
   edtimplementasi7.Text := '';
   edtimplementasi8.Text := '';
   edtimplementasi9.Text := '';
   edtimplementasi10.Text := '';
   edtimplementasi11.Text := '';
   edtimplementasi12.Text := '';
   edtimplementasi13.Text := '';
   edtimplementasi14.Text := '';
   edtimplementasi15.Text := '';

   edtkeluhan.Text := '';
   cbauto.Checked := False;
   cbhetero.Checked := False;

   Memoriwayatpenyakit.Text := '';
   cbtidakada.Checked := False;
   cbyaalergi.Checked := False;
   edtriwayatalergi.Text := '';

   cbtidakada1.Checked := False;
   cbyariwayat.Checked := False;
   edtriwayatpenyakit.Text := '';

   cbtidak.Checked := False;
   cbyaobat.Checked := False;
   edtpenyakitkeluarga.Text := '';

   dtptanggaldis.DateTime := Now;
   cxtmJAMdis.Time := Now;

   chkRwTdkAda.Checked := False;
   chkRwK.Checked := False;
   edtriwayatpenyakitkeluarga.Text := '';

   cbbperawatdis.Text := '';
   Memopemeriksaanfisik.Text := '';
   edtlab.Text := '';
   edtrad.Text := '';
 end;
end;

procedure proesesSimpanDicharge;
var
  usia65,ktbMobilitas,Prwt,bntuan,isiKeluhanUtama,
  rwyAlergi,rwPenyakit,mgObat,rwPenyakitKlrg:String;
begin
  with FAsesmenAwalIgd do
  begin
   /// usia
   if cbya1.Checked = True then
       usia65 := 'YA';

   if cbtidak1.Checked = True then
       usia65 := 'TIDAK';

   /// mobilitas
    if cbya2.Checked = True then
       ktbMobilitas := 'YA';

   if cbtidak2.Checked = True then
       ktbMobilitas := 'TIDAK';

   /// perawatan
   if cbya3.Checked = True then
       Prwt := 'YA';

   if cbtidak3.Checked = True then
       Prwt := 'TIDAK';

   /// bantuan
   if cbya4.Checked = True then
       bntuan := 'YA';

   if cbtidak4.Checked = True then
       bntuan := 'TIDAK';

   ///isi keluhan utama
   if cbauto.Checked = True then
      isiKeluhanUtama := 'auto anamesis'
   else if cbhetero.Checked = True then
      isiKeluhanUtama := 'heteroanamnesis'
   else
     isiKeluhanUtama := 'kosong';

   /// alergi
   if cbtidakada.Checked = True then
      rwyAlergi := 'N'
   else
      rwyAlergi := 'Y';

   ///penyakit
   if  cbtidakada1.Checked = True then
        rwPenyakit := 'N'
   else
        rwPenyakit := 'Y';
   /// obat
   if cbtidak.Checked = True then
      mgObat := 'N'
   else
      mgObat := 'Y';
  /// penyakit keluarga
  if chkRwTdkAda.Checked = True then
     rwPenyakitKlrg := 'N'
  else
     rwPenyakitKlrg := 'Y';

   //// proses simpan dan ubah
   if btnSIMPANDIS.Caption = 'SIMPAN' then
   begin
     /// simpan
    with DataSimrs1.qryt_asesmen_awal_discharge do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'insert into t_asesmen_awal_discharge (noRekamedis,noDaftar,noDaftarUnit,tglDaftarUnit,'+

      'DischargePlaningSATU,DischargePlaningDUA,DischargePlaningTIGA,DischargePlaningEMPAT,'+

      'masalahKeperawatanJamSATU,masalahKeperawatanJamDUA,masalahKeperawatanJamTIGA,masalahKeperawatanJamEMPAT,masalahKeperawatanJamLIMA,'+
      'masalahKeperawatanJamENAM,masalahKeperawatanJamTUJUH,masalahKeperawatanJamDELAPAN,masalahKeperawatanJamSEMBILAN,masalahKeperawatanJamSEPULUH,'+
      'masalahKeperawatanJamSEBELAS,masalahKeperawatanJamDUABELAS,'+

      'masalahKeperawatanLainyaTIGABELAS,masalahKeperawatanLainyaEMPATBELAS,masalahKeperawatanLainyaLIMABELAS,'+
      'masalahKeperawatanLainyaJamTIGABELAS,masalahKeperawatanLainyaJamEMPATBELAS,masalahKeperawatanLainyaJamLIMABELAS,'+

      'impelementasiSATU,impelementasiDUA,impelementasiTIGA,impelementasiEMPAT,impelementasiLIMA,'+
      'impelementasiENAM,impelementasiTUJUH,impelementasiDELAPAN,impelementasiSEMBILAN,impelementasiSEPULUH,'+
      'impelementasiSEBELAS,impelementasiDUABELAS,'+

      'keluhanUtama,pilihanKeluhanUtama,riwayatPenyakit,riwayatAlergi,riwayatAlergiKet,riwayatPenyakitYangLalu,ketRiwayatPenyakitYangLalu,'+
      'menggunakanObatSaatIni,ketMenggunakanObatSaatIni,pilihPenyakitKeluarga,riwayatPenyakitKeluarga,'+
      'tanggal,jam,perawat,pemeriksaanFisik,lab,rad) values '+
      '("'+edtNoRm.Text+'","'+edtNoRegistrasi.Text+'","'+edtNoRajal.Text+'","'+FormatDateTime('yyyy-MM-dd',Now)+'",'+

      '"'+usia65+'","'+ktbMobilitas+'","'+ktbMobilitas+'","'+Prwt+'","'+bntuan+'",'+

      '"'+FormatDateTime('hh:mm:ss',cxtmdt01.Time)+'","'+FormatDateTime('hh:mm:ss',cxtmdt02.Time)+'","'+FormatDateTime('hh:mm:ss',cxtmdt03.Time)+'","'+FormatDateTime('hh:mm:ss',cxtmdt04.Time)+'","'+FormatDateTime('hh:mm:ss',cxtmdt05.Time)+'",'+
      '"'+FormatDateTime('hh:mm:ss',cxtmdt06.Time)+'","'+FormatDateTime('hh:mm:ss',cxtmdt07.Time)+'","'+FormatDateTime('hh:mm:ss',cxtmdt08.Time)+'","'+FormatDateTime('hh:mm:ss',cxtmdt09.Time)+'","'+FormatDateTime('hh:mm:ss',cxtmdt10.Time)+'",'+
      '"'+FormatDateTime('hh:mm:ss',cxtmdt11.Time)+'","'+FormatDateTime('hh:mm:ss',cxtmdt12.Time)+'",'+

      '"'+edtlain1.Text+'","'+edtlain2.Text+'","'+edtlain3.Text+'",'+
      '"'+FormatDateTime('hh:mm:ss',cxtmdt13.Time)+'","'+FormatDateTime('hh:mm:ss',cxtmdt14.Time)+'","'+FormatDateTime('hh:mm:ss',cxtmdt15.Time)+'",'+

      '"'+edtimplementasi1.Text+'","'+edtimplementasi2.Text+'","'+edtimplementasi4.Text+'","'+edtimplementasi5.Text+'",'+
      '"'+edtimplementasi6.Text+'","'+edtimplementasi7.Text+'","'+edtimplementasi8.Text+'","'+edtimplementasi9.Text+'","'+edtimplementasi10.Text+'",'+
      '"'+edtimplementasi11.Text+'","'+edtimplementasi12.Text+'",'+

      '"'+edtKeluhan.Text+'","'+isiKeluhanUtama+'","'+Memoriwayatpenyakit.Text+'","'+rwyAlergi+'","'+edtriwayatalergi.Text+'","'+rwPenyakit+'","'+edtriwayatpenyakit.Text+'",'+
      '"'+mgObat+'","'+edtpenyakitkeluarga.Text+'","'+rwPenyakitKlrg+'","'+edtriwayatpenyakitkeluarga.Text+'",'+
      '"'+FormatDateTime('yyyy-MM-dd',dtptanggaldis.Date)+'","'+FormatDateTime('hh:mm:ss',cxtmJAMdis.Time)+'","'+cbbperawatdis.Text+'","'+Memopemeriksaanfisik.Text+'","'+edtlab.Text+'","'+edtrad.Text+'")';
      ExecSQL;
      SQL.Text := 'select * from t_asesmen_awal_discharge';
      Open;
    end;

   end
   else
   begin
     /// ubah
    with DataSimrs1.qryt_asesmen_awal_discharge do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'update t_asesmen_awal_discharge set noRekamedis="'+edtNoRm.Text+'",noDaftar="'+edtNoRegistrasi.Text+'",noDaftarUnit="'+edtNoRajal.Text+'",tglDaftarUnit="'+FormatDateTime('yyyy-MM-dd',Now)+'",'+

      'DischargePlaningSATU="'+usia65+'",DischargePlaningDUA="'+ktbMobilitas+'",DischargePlaningTIGA="'+Prwt+'",DischargePlaningEMPAT="'+bntuan+'",'+

      'masalahKeperawatanJamSATU="'+FormatDateTime('hh:mm:ss',cxtmdt01.Time)+'",masalahKeperawatanJamDUA="'+FormatDateTime('hh:mm:ss',cxtmdt02.Time)+'",masalahKeperawatanJamTIGA="'+FormatDateTime('hh:mm:ss',cxtmdt03.Time)+'",'+
      'masalahKeperawatanJamEMPAT="'+FormatDateTime('hh:mm:ss',cxtmdt04.Time)+'",masalahKeperawatanJamLIMA="'+FormatDateTime('hh:mm:ss',cxtmdt05.Time)+'",'+
      'masalahKeperawatanJamENAM="'+FormatDateTime('hh:mm:ss',cxtmdt06.Time)+'",masalahKeperawatanJamTUJUH="'+FormatDateTime('hh:mm:ss',cxtmdt07.Time)+'",masalahKeperawatanJamDELAPAN="'+FormatDateTime('hh:mm:ss',cxtmdt08.Time)+'",'+
      'masalahKeperawatanJamSEMBILAN="'+FormatDateTime('hh:mm:ss',cxtmdt09.Time)+'",masalahKeperawatanJamSEPULUH="'+FormatDateTime('hh:mm:ss',cxtmdt10.Time)+'",'+
      'masalahKeperawatanJamSEBELAS="'+FormatDateTime('hh:mm:ss',cxtmdt11.Time)+'",masalahKeperawatanJamDUABELAS="'+FormatDateTime('hh:mm:ss',cxtmdt12.Time)+'",'+

      'masalahKeperawatanLainyaTIGABELAS="'+edtlain1.Text+'",masalahKeperawatanLainyaEMPATBELAS="'+edtlain2.Text+'",masalahKeperawatanLainyaLIMABELAS="'+edtlain3.Text+'",'+
      'masalahKeperawatanLainyaJamTIGABELAS="'+FormatDateTime('hh:mm:ss',cxtmdt13.Time)+'",masalahKeperawatanLainyaJamEMPATBELAS="'+FormatDateTime('hh:mm:ss',cxtmdt14.Time)+'",masalahKeperawatanLainyaJamLIMABELAS="'+FormatDateTime('hh:mm:ss',cxtmdt15.Time)+'",'+

      'impelementasiSATU="'+edtimplementasi1.Text+'",impelementasiDUA="'+edtimplementasi2.Text+'",impelementasiTIGA="'+edtimplementasi3.Text+'",'+
      'impelementasiEMPAT="'+edtimplementasi4.Text+'",impelementasiLIMA="'+edtimplementasi5.Text+'",'+
      'impelementasiENAM="'+edtimplementasi6.Text+'",impelementasiTUJUH="'+edtimplementasi7.Text+'",impelementasiDELAPAN="'+edtimplementasi8.Text+'"'+
      ',impelementasiSEMBILAN="'+edtimplementasi9.Text+'",impelementasiSEPULUH="'+edtimplementasi10.Text+'",'+
      'impelementasiSEBELAS="'+edtimplementasi11.Text+'",impelementasiDUABELAS="'+edtimplementasi12.Text+'",'+

      'keluhanUtama="'+edtKeluhan.Text+'",pilihanKeluhanUtama="'+isiKeluhanUtama+'",riwayatPenyakit="'+Memoriwayatpenyakit.Text+'",'+
      'riwayatAlergi="'+rwyAlergi+'",riwayatAlergiKet="'+edtriwayatalergi.Text+'",riwayatPenyakitYangLalu="'+rwPenyakit+'",ketRiwayatPenyakitYangLalu="'+edtriwayatpenyakit.Text+'",'+
      'menggunakanObatSaatIni="'+mgObat+'",ketMenggunakanObatSaatIni="'+edtpenyakitkeluarga.Text+'",pilihPenyakitKeluarga="'+rwPenyakitKlrg+'",riwayatPenyakitKeluarga="'+edtriwayatpenyakitkeluarga.Text+'",'+
      'tanggal="'+FormatDateTime('yyyy-MM-dd',dtptanggaldis.Date)+'",jam="'+FormatDateTime('hh:mm:ss',cxtmJAMdis.Time)+'",perawat="'+cbbperawatdis.Text+'",pemeriksaanFisik="'+Memopemeriksaanfisik.Text+'",'+
      'lab="'+edtlab.Text+'",rad="'+edtrad.Text+'" idAsesmenAwalDischarge="'+lblIdDischarge.Caption+'"';
      ExecSQL;
      SQL.Text := 'select * from t_asesmen_awal_discharge';
      Open;
    end;

   end;
   
  end;
end;

procedure usiaLbh65;
begin
 with FAsesmenAwalIgd do
 begin
  if cbya1.Checked = True then
     cbtidak1.Enabled := False
  else
     cbtidak1.Enabled := True;

  if cbtidak1.Checked = True then
     cbya1.Enabled := False
  else
     cbya1.Enabled := True;
 end;
end;

procedure keterBtsMobilitias;
begin
 with FAsesmenAwalIgd do
 begin
  if cbya2.Checked = True then
     cbtidak2.Enabled := False
  else
     cbtidak2.Enabled := True;

  if cbtidak2.Checked = True then
     cbya2.Enabled := False
  else
     cbya2.Enabled := True;
 end;
end;

procedure perawatan;
begin
 with FAsesmenAwalIgd do
 begin
  if cbya3.Checked = True then
     cbtidak3.Enabled := False
  else
     cbtidak3.Enabled := True;

  if cbtidak3.Checked = True then
     cbya3.Enabled := False
  else
     cbya3.Enabled := True;
 end;
end;

procedure bntUntuk;
begin
 with FAsesmenAwalIgd do
 begin
  if cbya4.Checked = True then
     cbtidak4.Enabled := False
  else
     cbtidak4.Enabled := True;

  if cbtidak4.Checked = True then
     cbya4.Enabled := False
  else
     cbya4.Enabled := True;
 end;
end;

procedure klhUtama;
begin
 with FAsesmenAwalIgd do
 begin
  /// auto
  if cbauto.Checked = True then
      cbhetero.Enabled := False
  else
      cbhetero.Enabled := True;
  ///heteroan
  if cbhetero.Checked = True then
      cbauto.Enabled := False
  else
      cbauto.Enabled := True;
 end;
end;

procedure rwtAlergi;
begin
 with FAsesmenAwalIgd do
 begin
  if cbtidakada.Checked = True then
       cbyaalergi.Enabled := False
  else
       cbyaalergi.Enabled := True;

  if cbyaalergi.Checked = True then
       cbtidakada.Enabled := False
  else
       cbtidakada.Enabled := True;
 end;
end;

procedure rwtPenyakitYgLalu;
begin
 with FAsesmenAwalIgd do
 begin
  if cbtidakada1.Checked = True then
        cbyariwayat.Enabled := False
  else
        cbyariwayat.Enabled := True;

  if cbyariwayat.Checked = True then
        cbtidakada1.Enabled := False
  else
        cbtidakada1.Enabled := True;

 end;
end;

procedure mngKnObat;
begin
 with FAsesmenAwalIgd do
 begin
  if cbtidak.Checked = True then
      cbyaobat.Enabled := False
  else
      cbyaobat.Enabled := True;

  if cbyaobat.Checked = True then
      cbtidak.Enabled := False
  else
      cbtidak.Enabled := True;
 end;
end;

procedure rwtPyktKeluarga;
begin
 with FAsesmenAwalIgd do
 begin
  if chkRwTdkAda.Checked = True then
        chkRwK.Enabled := False
  else
        chkRwK.Enabled := True;

  if chkRwK.Checked = True then
        chkRwTdkAda.Enabled := False
  else
        chkRwTdkAda.Enabled := True;
 end;
end;








end.
