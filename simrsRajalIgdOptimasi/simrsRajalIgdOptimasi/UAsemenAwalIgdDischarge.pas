unit UAsemenAwalIgdDischarge;

interface

procedure baruDicharge;
procedure proesesSimpanDicharge;

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
begin
  with FAsesmenAwalIgd do
  begin
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
      'menggunakanObatSaatIni,ketMenggunakanObatSaatIni,pilihPenyakitKeluarga,riwayatPenyakitKeluarga,tanggal,jam,perawat,pemeriksaanFisik,lab,rad)';
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



end.
