unit UAsemenAwalIgdNyeri;

interface

procedure tampilNyeri;
procedure baruNyeri;
procedure prosesSimpanNyeri;
procedure tampilUbahNyeri;


implementation

uses Messages,Dialogs,UDataSimrs1,UAsesmenAwalIgd, SysUtils, Forms, ZDataset,
  ZAbstractRODataset, DB, StdCtrls;

/// tampil query nyeri
procedure tampilNyeri;
begin
 with DataSimrs1.qryt_asesmen_awal_nyeri do
 begin
  Close;
  SQL.Clear;
  SQL.Text := 'select * from t_asesmen_awal_nyeri';
  Open;
 end;
end;

/// procedure baru
procedure baruNyeri;
begin
  with FAsesmenAwalIgd do
  begin
    /// pasien merasa nyeri
    chkYaNyeri.Checked := False;
    chkTIDAKNYERI.Checked := False;

    rb0.Checked:= False;
    rb1.Checked:= False;
    rb2.Checked:= False;
    rb3.Checked:= False;
    rb4.Checked:= False;
    rb5.Checked:= False;
    rb6.Checked:= False;
    rb7.Checked:= False;
    rb8.Checked:= False;
    rb9.Checked:= False;
    rb10.Checked:= False;

    ///identitas nyeri
    chktdknyeri.Checked:= False;
    chkNYERIRINGAN.Checked:= False;
    chkNYERIBERAT.Checked:= False;
    chkNYERISEDANG.Checked:= False;
    chkNYERISANGAT.Checked:= False;
    edtLOKASINYERI.Text := '';
    edtsejak.Text := '';

    /// sifat nyeri
    chkterus.Checked:= False;
    chktumpul.Checked:= False;
    chkcahaya.Checked:= False;
    chkmakan.Checked:= False;
    chkmual.Checked:= False;
    chktajam.Checked:= False;
    chkgerakan.Checked:= False;
    chksunyi.Checked:= False;
    chktidur.Checked:= False;
    chkHILANG.Checked:= False;
    chktertekan.Checked:= False;
    chkberbaring.Checked:= False;
    chkdingin.Checked:= False;
    chknafsumakan.Checked:= False;
    chkterbakar.Checked:= False;
    chkpanas.Checked:= False;
    chkaktifitas.Checked:= False;
    chklainsifat.Checked:= False;
    edtlainsifat.Text:= '';
    chklainkualitas.Checked:= False;
    edtlainkualitas.Text:= '';
    chklainpemberat.Checked:= False;
    edtlainpemberat.Text:= '';
    chklainperingan.Checked:= False;
    edtlainperingan.Text:= '';
    chklainefek.Checked:= False;
    edtlainefek.Text:= '';

    /// penilaian nyeri anak
    cbbwajah.ItemIndex:= 0;
    cbbkaki.ItemIndex:= 0;
    cbbaktifitas.ItemIndex:= 0;
    cbbmenangis.ItemIndex:= 0;
    cbbbersuara.ItemIndex:= 0;
    /// resiko jatuh
    cbbriwayatjatuh.ItemIndex:= 0;
    cbbdiagnosis.ItemIndex:= 0;
    cbbalatbantu.ItemIndex:= 0;
    cbbterpasanginfus.ItemIndex:= 0;
    cbbgayaberjalan.ItemIndex:= 0;
    cbbstatusmental.ItemIndex:= 0;

    edtriwayatjatuh.Text:= '0';
    edtdiagnosis.Text:= '0';
    edtalatbantu.Text:= '0';
    edtterpasanginfus.Text:= '0';
    edtgayaberjalan.Text:= '0';
    edtstatusmental.Text:= '0';
    /// total
    edttotalnyeri.Text := '0';
    edttotalskorrisiko.Text := '0';

    ///
    cbbno1.ItemIndex := 0;
    cbbno2.ItemIndex := 0;
    cbbno3.ItemIndex := 0;
    edtnamapetugas1.Text := '';
    edtnamapetugas2.Text := '';
    edtnamapetugas3.Text := '';
  end;
end;

/// procedure proses simpan dan ubah
procedure prosesSimpanNyeri;
var
  /// penilaian nyeri
  merasaknNyeri,
  tdkSakitNoll,nyRSatu,nyRDua,nyRTiga,nyREmpat,nyRLima,nyREnam,nyRTujuh,nyRDelapan,nyRSembilan,nyRSepuluh,
  /// identitas nyeri
  tdkNyeri,nyrRingan,nyrSedang,nyrBerat,nyrSangat,
  /// siftat nyeri
  terusMenerus,hilangTimbul,lainyaSifat,tumpul,tajam,tertekan,terbakar,lainyaKualitas,cahaya,gerakan,berbaring,lainyaPemberat,
  makan,sunyi,dingin,panas,lainyaPenringan,mualMuntah,tidur,nafsuMakan,aktifitasEfekNyeri,lainyaEfekNyeri,
  /// intervensi
  cb1,cb2,cb3
  :String;
begin
  with FAsesmenAwalIgd do
  begin
    /// penilain nyeri
    if chkYaNyeri.Checked = True then
        merasaknNyeri := 'Y'
    else
        merasaknNyeri := 'N';

    ///if chkTIDAKNYERI Checked := False then

    if rb0.Checked = False then
        tdkSakitNoll := 'N'
    else
        tdkSakitNoll := 'Y';
    if rb1.Checked = False then
        nyRSatu := 'N'
    else
        nyRSatu := 'Y';
    if rb2.Checked = False then
        nyRDua := 'N'
    else
        nyRDua := 'Y';
    if rb3.Checked = False then
        nyRTiga := 'N'
    else
        nyRTiga := 'Y';
    if rb4.Checked = False then
        nyREmpat := 'N'
    else
        nyREmpat := 'Y';
    if rb5.Checked = False then
        nyRLima := 'N'
    else
        nyRLima := 'Y';
    if rb6.Checked = False then
        nyREnam := 'N'
    else
        nyREnam := 'Y';
    if rb7.Checked = False then
        nyRTujuh := 'N'
    else
        nyRTujuh := 'Y';
    if rb8.Checked = False then
        nyRDelapan := 'N'
    else
        nyRDelapan := 'Y';
    if rb9.Checked = False then
       nyRSembilan := 'N'
    else
       nyRSembilan := 'Y';
    if rb10.Checked = False then
        nyRSepuluh := 'N'
    else
       nyRSepuluh := 'Y';

    /// identitas nyeri
    if chktdknyeri.Checked = False then
        tdkNyeri := 'N'
    else
        tdkNyeri := 'Y';
    if chkNYERIRINGAN.Checked = False then
       nyrRingan := 'N'
    else
       nyrRingan := 'Y';
       
    if chkNYERIBERAT.Checked = False then
        nyrSedang := 'N'
    else
       nyrSedang := 'Y';
       
    if chkNYERISEDANG.Checked = False then
        nyrSedang := 'N'
    else
        nyrSedang := 'Y';

    if chkNYERISANGAT.Checked = False then
        nyrSangat := 'N'
    else
        nyrSangat := 'Y';

   /// sifat nyeri
    if chkterus.Checked = False then
        terusMenerus := 'N'
    else
        terusMenerus := 'Y';
    if chktumpul.Checked = False then
        tumpul := 'N'
    else
        tumpul := 'Y';
    if chkcahaya.Checked = False then
        cahaya := 'N'
    else
        cahaya := 'Y';
    if chkmakan.Checked = False then
        makan := 'N'
    else
        makan := 'Y';
    if chkmual.Checked = False then
        mualMuntah := 'N'
    else
        mualMuntah := 'Y';
    if chktajam.Checked = False then
       tajam := 'N'
    else
       tajam := 'Y';
    if chkgerakan.Checked = False then
        gerakan := 'N'
    else
        gerakan := 'Y';
    if chksunyi.Checked = False then
        sunyi := 'N'
    else
        sunyi := 'Y';
    if chktidur.Checked = False then
        tidur := 'N'
    else
        tidur := 'Y';
    if chkHILANG.Checked = False then
        hilangTimbul := 'N'
    else
        hilangTimbul := 'Y';
    if chktertekan.Checked = False then
        tertekan := 'N'
    else
        tertekan := 'Y';
        
    if chkberbaring.Checked = False then
        berbaring := 'N'
    else
        berbaring := 'Y';

    if chkdingin.Checked = False then
        dingin := 'N'
    else
        dingin := 'Y';
    if chknafsumakan.Checked = False then
        nafsuMakan := 'N'
    else
        nafsuMakan := 'Y';
    if chkterbakar.Checked = False then
        terbakar := 'N'
    else
        terbakar := 'Y';
    if chkpanas.Checked = False then
        panas := 'N'
    else
        panas := 'Y';
    if chkaktifitas.Checked = False then
        aktifitasEfekNyeri := 'N'
    else
        aktifitasEfekNyeri := 'Y';
    if chklainsifat.Checked = False then
        lainyaSifat := 'N'
    else
        lainyaSifat := 'Y';
        
    if chklainkualitas.Checked = False then
       lainyaKualitas := 'N'
    else
       lainyaKualitas := 'Y';
       
    //edtlainkualitas.Text:= '';
    if chklainpemberat.Checked = False then
       lainyaPemberat := 'N'
    else
       lainyaPemberat := 'Y';
    ///edtlainpemberat.Text:= '';
    if chklainperingan.Checked = False then
        lainyaPemberat := 'N'
    else
        lainyaPemberat := 'Y';
    //edtlainperingan.Text:= '';
    if chklainefek.Checked = False then
        lainyaEfekNyeri := 'N'
    else
        lainyaEfekNyeri := 'Y';
    ///edtlainefek.Text:= '';

    /// intervernsi
    if cbbno1.ItemIndex  = 0 then
       cb1 := 'YA'
    else
       cb1 := 'TIDAK';
    if cbbno2.ItemIndex = 0 then
        cb2 := 'YA'
    else
        cb2 := 'TIDAK';
    if cbbno3.ItemIndex = 0 then
        cb3 := 'YA'
    else
        cb3 := 'TIDAK';

    if btnSIMPANNYERI.Caption = 'SIMPAN' then
    begin
    /// proses simpan
      with DataSimrs1.qryt_asesmen_awal_nyeri do
      begin
       Close;
       SQL.Clear;
       SQL.Text := 'insert into t_asesmen_awal_nyeri (noRekamedis,noDaftar,noDaftarUnit,tglDaftarUnit,'+
       /// penilaian nyeri
       'merasakanNyeri,tidakSakitNoll,nyeriRinganSATU,nyeriRinganDUA,nyeriRinganTIGA,nyeriSedangEMPAT,nyeriSedangLIMA,nyeriSedangENAM,'+
       'nyeriBeratTUJUH,nyeriBeratDELAPAN,nyeriBeratSEMBILAN,nyeriSedangSEPULUH,'+
       /// identitas nyeri
       'tidakNyeri,nyeriRingan,nyeriSedang,nyeriBerat,nyeriSangatBerat,lokasiNyeri,sejakKapan,'+
       ///sifat nyeri
       'terusMenerus,hilangTimbul,lainyaSifat,tumpul,tajam,tertekan,terbakar,lainyaKualitas,'+
       'cahaya,gerakan,berbaring,lainyaPemberat,'+
       'makan,sunyi,dingin,panas,lainyaPenringan,mualMuntah,tidur,nafsuMakan,aktifitasEfekNyeri,lainyaEfekNyeri,'+
       ///penilian anak
       'wajah,kaki,aktifitasPeniliaiNyeri,menangis,bersuara,totalPenilaianAnak,'+
       ///penilai resiko
       'riwayatJatuh,diagnosa,alatbantu,tepasang,gayaBerjalan,statusMental,totalSkorPenilaiResiko,'+
       ///intervensi
       'intervensiResikoJatuhSATU,namaPetugasIntervensiResikoJatuhSATU,'+
       'intervensiResikoJatuhDUA,namaPetugasintervensiResikoJatuhDUA,'+
       'intervensiResikoJatuhTIGA,namaPetugasintervensiResikoJatuhTIGA) values '+
       /// isi dari values
       '("'+edtNoRm.Text+'","'+edtNoRegistrasi.Text+'","'+edtNoRajal.Text+'","'+FormatDateTime('yyyy-MM-dd',dtpTglDaftarUnit.Date)+'",'+
       /// penilaian nyeri
       '"'+merasaknNyeri+'","'+tdkSakitNoll+'","'+nyRSatu+'","'+nyRDua+'","'+nyRTiga+'","'+nyREmpat+'","'+nyRLima+'","'+nyREnam+'",'+
       '"'+nyRTujuh+'","'+nyRDelapan+'","'+nyRSembilan+'","'+nyRSepuluh+'",'+
       ///identitas nyeri
       '"'+tdkNyeri+'","'+nyrRingan+'","'+nyrSedang+'","'+nyrBerat+'","'+nyrSangat+'","'+edtLOKASINYERI.Text+'","'+edtsejak.Text+'",'+
       /// sifat nyeri
       '"'+terusMenerus+'","'+hilangTimbul+'","'+edtlainsifat.Text+'","'+tumpul+'","'+tajam+'","'+tertekan+'","'+terbakar+'","'+edtlainkualitas.Text+'",'+
       '"'+cahaya+'","'+gerakan+'","'+berbaring+'","'+lainyaPemberat+'",'+
       '"'+makan+'","'+sunyi+'","'+dingin+'","'+panas+'","'+edtlainperingan.Text+'","'+mualMuntah+'","'+tidur+'","'+nafsuMakan+'","'+aktifitasEfekNyeri+'","'+edtlainefek.Text+'",'+
       ///penilian anak
       '"'+cbbwajah.Text+'","'+cbbkaki.Text+'","'+cbbaktifitas.Text+'","'+cbbmenangis.Text+'","'+cbbbersuara.Text+'","'+edttotalnyeri.Text+'",'+
       ///penilain resiko
       '"'+edtriwayatjatuh.Text+'","'+edtdiagnosis.Text+'","'+edtalatbantu.Text+'","'+edtterpasanginfus.Text+'","'+edtgayaberjalan.Text+'","'+edtstatusmental.Text+'","'+edttotalnyeri.Text+'",'+
       /// intervensi
       '"'+cb1+'","'+edtnamapetugas1.Text+'","'+cb2+'","'+edtnamapetugas2.Text+'","'+cb3+'","'+edtnamapetugas3.Text+'")';
       ExecSQL;
       SQL.Text := 'select * from t_asesmen_awal_nyeri';
       Open;
      end;
    end
    else
    begin
      /// proses ubah
      with DataSimrs1.qryt_asesmen_awal_nyeri do
      begin
       Close;
       SQL.Clear;
       SQL.Text := 'update t_asesmen_awal_nyeri set noRekamedis="'+edtNoRm.Text+'",noDaftar="'+edtNoRegistrasi.Text+'",noDaftarUnit="'+edtNoRajal.Text+'",tglDaftarUnit="'+FormatDateTime('yyyy-MM-dd',dtpTglDaftarUnit.Date)+'",'+
       /// penilaian nyeri
       'merasakanNyeri="'+merasaknNyeri+'",tidakSakitNoll="'+tdkSakitNoll+'",nyeriRinganSATU="'+nyRSatu+'",nyeriRinganDUA="'+nyRDua+'",nyeriRinganTIGA="'+nyRTiga+'",nyeriSedangEMPAT="'+nyREmpat+'",nyeriSedangLIMA="'+nyRLima+'",nyeriSedangENAM="'+nyREnam+'",'+
       'nyeriBeratTUJUH="'+nyRTujuh+'",nyeriBeratDELAPAN="'+nyRDelapan+'",nyeriBeratSEMBILAN="'+nyRSembilan+'",nyeriSedangSEPULUH="'+nyRSepuluh+'",'+
       /// identitas nyeri
       'tidakNyeri="'+tdkNyeri+'",nyeriRingan="'+nyrRingan+'",nyeriSedang="'+nyrSedang+'",nyeriBerat="'+nyrBerat+'",nyeriSangatBerat="'+nyrSangat+'",lokasiNyeri="'+edtLOKASINYERI.Text+'",sejakKapan="'+edtsejak.Text+'",'+
       ///sifat nyeri
       'terusMenerus="'+terusMenerus+'",hilangTimbul="'+hilangTimbul+'",lainyaSifat="'+edtlainsifat.Text+'",tumpul="'+tumpul+'",tajam="'+tajam+'",tertekan="'+tertekan+'",terbakar="'+terbakar+'",lainyaKualitas="'+edtlainkualitas.Text+'",'+
       'cahaya="'+cahaya+'",gerakan="'+gerakan+'",berbaring="'+berbaring+'",lainyaPemberat="'+edtlainpemberat.Text+'",'+
       'makan="'+makan+'",sunyi="'+sunyi+'",dingin="'+dingin+'",panas="'+panas+'",lainyaPenringan="'+edtlainperingan.Text+'",mualMuntah="'+mualMuntah+'",tidur="'+tidur+'",nafsuMakan="'+nafsuMakan+'",aktifitasEfekNyeri="'+aktifitasEfekNyeri+'",lainyaEfekNyeri="'+edtlainefek.Text+'",'+
       ///penilian anak
       'wajah="'+cbbwajah.Text+'",kaki="'+cbbkaki.Text+'",aktifitasPeniliaiNyeri="'+cbbaktifitas.Text+'",menangis="'+cbbmenangis.Text+'",bersuara="'+cbbbersuara.Text+'",totalPenilaianAnak="'+edttotalnyeri.Text+'",'+
       ///penilai resiko
       'riwayatJatuh="'+edtriwayatjatuh.Text+'",diagnosa="'+edtdiagnosis.Text+'",alatbantu="'+edtalatbantu.Text+'",tepasang="'+edtterpasanginfus.Text+'",gayaBerjalan="'+edtgayaberjalan.Text+'",statusMental="'+edtstatusmental.Text+'",totalSkorPenilaiResiko="'+edttotalskorrisiko.Text+'",'+
       ///intervensi
       'intervensiResikoJatuhSATU="'+cb1+'",namaPetugasIntervensiResikoJatuhSATU="'+edtnamapetugas1.Text+'",'+
       'intervensiResikoJatuhDUA="'+cb2+'",namaPetugasintervensiResikoJatuhDUA="'+edtnamapetugas2.Text+'",'+
       'intervensiResikoJatuhTIGA="'+cb3+'",namaPetugasintervensiResikoJatuhTIGA="'+edtnamapetugas3.Text+'" where idAsesmenAwalNyeri="'+cxlblIdNyeri.Caption+'" ';
       ExecSQL;
       SQL.Text := 'select * from t_asesmen_awal_nyeri';
       Open;
      end;
    end;
    MessageDlg('DATA BERHASIL DISIMPAN...!',mtInformation,[mbOK],0);
    /// panggil procedure
    tampilNyeri; btnSIMPANNYERI.Caption := 'SIMPAN'; baruNyeri;
  end;
end;

/// tampil ubah nyeri
procedure tampilUbahNyeri;
var
  id:String;
begin
if DataSimrs1.qryt_asesmen_awal_nyeri.RecordCount >=1 then
begin
 id := DataSimrs1.qryt_asesmen_awal_nyeri.FieldByname('idAsesmenAwalNyeri').AsString;

 with DataSimrs1.qryt_asesmen_awal_nyeri do
 begin
   Close;
   SQL.Clear;
   SQL.Text := 'select * from t_asesmen_awal_nyeri where idAsesmenAwalNyeri="'+id+'"';
   Open;
 end;

 with FAsesmenAwalIgd do
 begin
   /// pasien merasa nyeri
   if  DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('merasakanNyeri').AsString = 'N' then
        chkTIDAKNYERI.Checked := False
   else
        chkYaNyeri.Checked := True;
        
   if DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('tidakSakitNoll').AsString = 'N' then
        rb0.Checked:= False
   else
        rb0.Checked:= True;
   if DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('nyeriRinganSATU').AsString = 'N' then     
        rb1.Checked:= False
   else
       rb1.Checked:= True;
   if DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('nyeriRinganDUA').AsString = 'N' then
        rb2.Checked:= False
   else
       rb2.Checked:= True;
   if DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('nyeriRinganTIGA').AsString = 'N' then
        rb3.Checked:= False
   else
        rb3.Checked:= True;
   if DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('nyeriSedangEMPAT').AsString = 'N' then
        rb4.Checked:= False
   else
        rb4.Checked:= True;
        
   if DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('nyeriSedangLIMA').AsString = 'N' then
        rb5.Checked:= False
   else
        rb5.Checked:= True;
        
   if DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('nyeriSedangENAM').AsString = 'N' then
        rb6.Checked:= False
   else
        rb6.Checked:= True;
        
   if DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('nyeriBeratTUJUH').AsString = 'N' then
        rb7.Checked:= False
   else
        rb7.Checked:= True;
   if DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('nyeriBeratTUJUH').AsString = 'N' then    
        rb8.Checked:= False
   else
        rb8.Checked:= True;
   if DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('nyeriBeratTUJUH').AsString = 'N' then
        rb9.Checked:= False
   else
        rb9.Checked:= True;
        
   if DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('nyeriBeratTUJUH').AsString = 'N' then
        rb10.Checked:= False
   else
        rb10.Checked:= True;

    ///identitas nyeri
   if DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('nyeriBeratTUJUH').AsString = 'N' then
        chktdknyeri.Checked:= False
   else
        chktdknyeri.Checked:= True;
   if      
    chkNYERIRINGAN.Checked:= False;
    chkNYERIBERAT.Checked:= False;
    chkNYERISEDANG.Checked:= False;
    chkNYERISANGAT.Checked:= False;
    edtLOKASINYERI.Text := '';
    edtsejak.Text := '';

    /// sifat nyeri
    chkterus.Checked:= False;
    chktumpul.Checked:= False;
    chkcahaya.Checked:= False;
    chkmakan.Checked:= False;
    chkmual.Checked:= False;
    chktajam.Checked:= False;
    chkgerakan.Checked:= False;
    chksunyi.Checked:= False;
    chktidur.Checked:= False;
    chkHILANG.Checked:= False;
    chktertekan.Checked:= False;
    chkberbaring.Checked:= False;
    chkdingin.Checked:= False;
    chknafsumakan.Checked:= False;
    chkterbakar.Checked:= False;
    chkpanas.Checked:= False;
    chkaktifitas.Checked:= False;
    chklainsifat.Checked:= False;
    edtlainsifat.Text:= '';
    chklainkualitas.Checked:= False;
    edtlainkualitas.Text:= '';
    chklainpemberat.Checked:= False;
    edtlainpemberat.Text:= '';
    chklainperingan.Checked:= False;
    edtlainperingan.Text:= '';
    chklainefek.Checked:= False;
    edtlainefek.Text:= '';

    /// penilaian nyeri anak
    cbbwajah.ItemIndex:= 0;
    cbbkaki.ItemIndex:= 0;
    cbbaktifitas.ItemIndex:= 0;
    cbbmenangis.ItemIndex:= 0;
    cbbbersuara.ItemIndex:= 0;
    /// resiko jatuh
    cbbriwayatjatuh.ItemIndex:= 0;
    cbbdiagnosis.ItemIndex:= 0;
    cbbalatbantu.ItemIndex:= 0;
    cbbterpasanginfus.ItemIndex:= 0;
    cbbgayaberjalan.ItemIndex:= 0;
    cbbstatusmental.ItemIndex:= 0;

    edtriwayatjatuh.Text:= '0';
    edtdiagnosis.Text:= '0';
    edtalatbantu.Text:= '0';
    edtterpasanginfus.Text:= '0';
    edtgayaberjalan.Text:= '0';
    edtstatusmental.Text:= '0';
    /// total
    edttotalnyeri.Text := '0';
    edttotalskorrisiko.Text := '0';

    ///
    cbbno1.ItemIndex := 0;
    cbbno2.ItemIndex := 0;
    cbbno3.ItemIndex := 0;
    edtnamapetugas1.Text := '';
    edtnamapetugas2.Text := '';
    edtnamapetugas3.Text := '';
    
    /// tampil nyeri
    tampilNyeri;
 end;
end
else
MessageDlg('Data Tidak Di Temukan...!',mtInformation,[mbOK],0);
end;

end.
