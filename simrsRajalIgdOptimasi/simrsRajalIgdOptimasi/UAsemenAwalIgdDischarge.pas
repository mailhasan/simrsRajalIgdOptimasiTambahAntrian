unit UAsemenAwalIgdDischarge;

interface

procedure baruDicharge;
procedure proesesSimpanDicharge;

procedure usiaLbh65;
procedure keterBtsMobilitias;
procedure perawatan;
procedure bntUntuk;

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
  usia65,ktbMobilitas,Prwt,bntuan,isiKeluhanUtama:String;
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



   if btnSIMPANDIS.Caption = 'SIMPAN' then
   begin
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
      'menggunakanObatSaatIni,ketMenggunakanObatSaatIni,pilihPenyakitKeluarga,riwayatPenyakitKeluarga,tanggal,jam,perawat,pemeriksaanFisik,lab,rad) values '+
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
      
      '"'+edtKeluhan.Text+'","'+isiKeluhanUtama+'")';
      ExecSQL;
      SQL.Text := 'select * from t_asesmen_awal_discharge';
      Open;
    end;
   end
   else
   begin

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



end.
