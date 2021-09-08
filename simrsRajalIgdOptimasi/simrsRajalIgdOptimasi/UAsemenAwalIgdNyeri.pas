{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
unit UAsemenAwalIgdNyeri;

interface

procedure tampilNyeri;
procedure baruNyeri;
procedure prosesSimpanNyeri;
procedure tampilUbahNyeri;

/// VALIDASI
procedure penilaiNyeri;
///procedure identitasNyeri;
procedure pilihanNyeri;
procedure RESPONTIME;

procedure Nyeriterus;
procedure NyeriHilang;
procedure NyerilainyaSifat;

/// kuealitas nyeri
procedure tumpul;
procedure tajam;
procedure tertekan;
procedure terbakar;
procedure lainyakualitas;

/// faktor pemberat
procedure cahaya;
procedure gerakan;
procedure berbaring;
procedure lainyaPemberat;

/// faktor peringan
procedure makan;
procedure sunyi;
procedure dingin;
procedure panas;
procedure lainyaPeringan;

///efek nyeri
procedure maulMuntah;
procedure tidur;
procedure nafsuMakan;
procedure akttifitas;
procedure LainyaEfek;

/// otomatis nilai nyeri anak
procedure wajah;
procedure Kaki;
procedure Aktifitas;
procedure menangis;
procedure Bersuara;
procedure totalNilaiNyeriAnak;

/// penilain resiko jatuh
procedure riwayatJatuh;
procedure Diagnosis;
procedure alatBantu;
procedure TerpasangInfus;
procedure GayaBerjalan;
procedure StatusMental;
procedure totalNilaiResikoJatuh;

///intervensi resiko jatuh
procedure cbNo1;
procedure cbNo2;
procedure cbNo3;



implementation

uses Messages,Dialogs,UDataSimrs1,UAsesmenAwalIgd, SysUtils, Forms, ZDataset,
  ZAbstractRODataset, DB, StdCtrls, Variants;

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
    cbbwajahnyeri.ItemIndex := 0;
    cbbkakinyeri.ItemIndex := 0;
    cbbaktifitasnyeri.ItemIndex := 0;
    cbbmenangisnyeri.ItemIndex := 0;
    cbbbersuaranyeri.ItemIndex := 0;

    cbbwajah.ItemIndex:= 0;
    cbbkaki.ItemIndex:= 0;
    cbbaktifitas.ItemIndex:= 0;
    cbbmenangis.ItemIndex:= 0;
    cbbbersuara.ItemIndex:= 0;
    /// resiko jatuh
    cbbriwayatjatuh.ItemIndex:= 1;
    cbbdiagnosis.ItemIndex:= 1;
    cbbalatbantu.ItemIndex:= 1;
    cbbterpasanginfus.ItemIndex:= 2;
    cbbgayaberjalan.ItemIndex:= 1;
    cbbstatusmental.ItemIndex:= 1;

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
    cbbno1.ItemIndex := 1;
    cbbno2.ItemIndex := 1;
    cbbno3.ItemIndex := 1;
    edtnamapetugas1.Text := '';
    edtnamapetugas2.Text := '';
    edtnamapetugas3.Text := '';

    edtnamapetugas1.Enabled := False;
    edtnamapetugas2.Enabled := False;
    edtnamapetugas3.Enabled := False;
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
  makan,sunyi,dingin,panas,lainyaPenringan,mualMuntah,tidur1,nafsuMakan,aktifitasEfekNyeri,lainyaEfekNyeri,
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
        tidur1 := 'N'
    else
        tidur1 := 'Y';

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
       '"'+cahaya+'","'+gerakan+'","'+berbaring+'","'+edtlainpemberat.Text+'",'+
       '"'+makan+'","'+sunyi+'","'+dingin+'","'+panas+'","'+edtlainperingan.Text+'","'+mualMuntah+'","'+tidur1+'","'+nafsuMakan+'","'+aktifitasEfekNyeri+'","'+edtlainefek.Text+'",'+
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
       'makan="'+makan+'",sunyi="'+sunyi+'",dingin="'+dingin+'",panas="'+panas+'",lainyaPenringan="'+edtlainperingan.Text+'",mualMuntah="'+mualMuntah+'",tidur="'+tidur1+'",nafsuMakan="'+nafsuMakan+'",aktifitasEfekNyeri="'+aktifitasEfekNyeri+'",lainyaEfekNyeri="'+edtlainefek.Text+'",'+
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
   cxlblIdNyeri.Caption :=  id;
   
   /// pasien merasa nyeri
   if  DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('merasakanNyeri').AsBoolean = False then
        chkTIDAKNYERI.Checked := False
   else
        chkYaNyeri.Checked := True;
        
   if DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('tidakSakitNoll').AsBoolean = False then
        rb0.Checked:= False
   else
        rb0.Checked:= True;
   if DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('nyeriRinganSATU').AsBoolean = False then
        rb1.Checked:= False
   else
       rb1.Checked:= True;
   if DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('nyeriRinganDUA').AsBoolean = False then
        rb2.Checked:= False
   else
       rb2.Checked:= True;
   if DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('nyeriRinganTIGA').AsBoolean = False then
        rb3.Checked:= False
   else
        rb3.Checked:= True;
   if DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('nyeriSedangEMPAT').AsBoolean = False then
        rb4.Checked:= False
   else
        rb4.Checked:= True;
        
   if DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('nyeriSedangLIMA').AsBoolean = False then
        rb5.Checked:= False
   else
        rb5.Checked:= True;
        
   if DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('nyeriSedangENAM').AsBoolean = False then
        rb6.Checked:= False
   else
        rb6.Checked:= True;
        
   if DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('nyeriBeratTUJUH').AsBoolean = False then
        rb7.Checked:= False
   else
        rb7.Checked:= True;
   if DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('nyeriBeratDELAPAN').AsBoolean = False then
        rb8.Checked:= False
   else
        rb8.Checked:= True;
   if DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('nyeriBeratSEMBILAN').AsBoolean = False then
        rb9.Checked:= False
   else
        rb9.Checked:= True;
        
   if DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('nyeriSedangSEPULUH').AsBoolean = False then
        rb10.Checked:= False
   else
        rb10.Checked:= True;

    ///identitas nyeri
   if DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('tidakNyeri').AsBoolean = False then
        chktdknyeri.Checked:= False
   else
        chktdknyeri.Checked:= True;
   if  DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('nyeriRingan').AsBoolean = False then
        chkNYERIRINGAN.Checked:= False
   else
        chkNYERIRINGAN.Checked:= True;
        
   if DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('nyeriBerat').AsBoolean = False then
        chkNYERIBERAT.Checked:= False
   else
        chkNYERIBERAT.Checked:= True;
   if DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('nyeriSedang').AsBoolean = False then
        chkNYERISEDANG.Checked:= False
   else
        chkNYERISEDANG.Checked:= True;
   if DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('nyeriSangatBerat').AsBoolean = False then
        chkNYERISANGAT.Checked:= False
   else
        chkNYERISANGAT.Checked:= True;

    edtLOKASINYERI.Text := DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('lokasiNyeri').AsString;
    edtsejak.Text := DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('sejakKapan').AsString;

    /// sifat nyeri
    if DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('terusMenerus').AsBoolean = False then
        chkterus.Checked:= False
    else
        chkterus.Checked:= True;
    if DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('tumpul').AsBoolean = False then
        chktumpul.Checked:= False
    else
        chktumpul.Checked:= True;
    if DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('cahaya').AsBoolean = False then
        chkcahaya.Checked:= False
    else
        chkcahaya.Checked:= True;
        
    if DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('makan').AsBoolean = False then
        chkmakan.Checked:= False
    else
        chkmakan.Checked:= True;

    if DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('mualMuntah').AsBoolean = False then
        chkmual.Checked:= False
    else
        chkmual.Checked:= True;
    if DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('tajam').AsBoolean = False then
        chktajam.Checked:= False
    else
        chktajam.Checked:= True;
        
    if DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('gerakan').AsBoolean = False then
        chkgerakan.Checked:= False
    else
        chkgerakan.Checked:= True;
        
    if DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('sunyi').AsBoolean = False then
        chksunyi.Checked:= False
    else
        chksunyi.Checked:= True;
    if DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('tidur').AsBoolean = False then
        chktidur.Checked:= False
    else
        chktidur.Checked:= True;

    if DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('hilangTimbul').AsBoolean = False then
        chkHILANG.Checked:= False
    else
        chkHILANG.Checked:= True;

    if DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('tertekan').AsBoolean = False then
        chktertekan.Checked:= False
    else
        chktertekan.Checked:= True;
    if  DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('berbaring').AsBoolean = False then
        chkberbaring.Checked:= False
    else
        chkberbaring.Checked:= True;
    if  DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('dingin').AsBoolean = False then
        chkdingin.Checked:= False
    else
        chkdingin.Checked:= True;
        
    if  DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('dingin').AsBoolean = False then
        chknafsumakan.Checked:= False
    else
        chknafsumakan.Checked:= True;

    if  DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('terbakar').AsBoolean = False then
        chkterbakar.Checked:= False
    else
        chkterbakar.Checked:= True;

    if  DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('panas').AsBoolean = False then
        chkpanas.Checked:= False
    else
        chkpanas.Checked:= True;

    if  DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('aktifitasEfekNyeri').AsBoolean = False then
        chkaktifitas.Checked:= False
    else
        chkaktifitas.Checked:= True;
        
    if  DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('lainyaSifat').AsString = '' then
        chklainsifat.Checked:= False
    else
        chklainsifat.Checked:= True;
    edtlainsifat.Text:= DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('lainyaSifat').AsString;
    
    if  DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('lainyaKualitas').AsString = '' then
        chklainkualitas.Checked:= False
    else
        chklainkualitas.Checked:= True;

    edtlainkualitas.Text:= DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('lainyaKualitas').AsString;
    
    if  DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('lainyaPemberat').AsString = '' then
        chklainpemberat.Checked:= False
    else
        chklainpemberat.Checked:= True;
    edtlainpemberat.Text:= DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('lainyaPemberat').AsString;

    if  DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('lainyaPenringan').AsString = '' then
        chklainperingan.Checked:= False
    else
        chklainperingan.Checked:= True;
    edtlainperingan.Text:= DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('lainyaPenringan').AsString;
    if DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('lainyaEfekNyeri').AsString = '' then
        chklainefek.Checked:= False
    else
        chklainefek.Checked:= True;
    edtlainefek.Text:=  DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('lainyaEfekNyeri').AsString;

    /// penilaian nyeri anak
    cbbwajah.Text:= DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('wajah').AsString;
    cbbkaki.Text:= DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('kaki').AsString;
    cbbaktifitas.Text:= DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('aktifitasPeniliaiNyeri').AsString;
    cbbmenangis.Text:= DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('menangis').AsString;
    cbbbersuara.Text:= DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('bersuara').AsString;
    /// resiko jatuh
    {cbbriwayatjatuh.ItemIndex:= 0;
    cbbdiagnosis.ItemIndex:= 0;
    cbbalatbantu.ItemIndex:= 0;
    cbbterpasanginfus.ItemIndex:= 0;
    cbbgayaberjalan.ItemIndex:= 0;
    cbbstatusmental.ItemIndex:= 0;}

    edtriwayatjatuh.Text:= DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('riwayatJatuh').AsString;
    edtdiagnosis.Text:= DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('diagnosa').AsString;
    edtalatbantu.Text:= DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('alatbantu').AsString;
    edtterpasanginfus.Text:= DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('tepasang').AsString;
    edtgayaberjalan.Text:= DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('gayaBerjalan').AsString;
    edtstatusmental.Text:= DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('statusMental').AsString;
    /// total
    edttotalnyeri.Text := DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('totalPenilaianAnak').AsString;
    edttotalskorrisiko.Text := DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('totalSkorPenilaiResiko').AsString;

    ///
    cbbno1.Text := DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('intervensiResikoJatuhSATU').AsString;
    cbbno2.Text := DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('intervensiResikoJatuhDUA').AsString;
    cbbno3.Text := DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('intervensiResikoJatuhTIGA').AsString;
    edtnamapetugas1.Text := DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('namaPetugasIntervensiResikoJatuhSATU').AsString;
    edtnamapetugas2.Text := DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('namaPetugasintervensiResikoJatuhDUA').AsString;
    edtnamapetugas3.Text := DataSimrs1.qryt_asesmen_awal_nyeri.FieldByName('namaPetugasintervensiResikoJatuhTIGA').AsString;
    
    /// tampil nyeri
    tampilNyeri;
    btnSIMPANNYERI.Caption := 'UBAH';
 end;
end
else
MessageDlg('Data Tidak Di Temukan...!',mtInformation,[mbOK],0);
end;

/// validasi

/// penilain nyeri
procedure penilaiNyeri;
begin
 with FAsesmenAwalIgd do
 begin
   if chkYaNyeri.Checked = True then
   begin
    ///chkYaNyeri.Enabled := True;
    chkTIDAKNYERI.Enabled := False;

    rb0.Enabled:= True;
    rb1.Enabled:= True;
    rb2.Enabled:= True;
    rb3.Enabled:= True;
    rb4.Enabled:= True;
    rb5.Enabled:= True;
    rb6.Enabled:= True;
    rb7.Enabled:= True;
    rb8.Enabled:= True;
    rb9.Enabled:= True;
    rb10.Enabled:= True;
   end
   else IF chkTIDAKNYERI.Checked = True then
   begin
    chkYaNyeri.Enabled := False;

    rb0.Enabled:= False;
    rb1.Enabled:= False;
    rb2.Enabled:= False;
    rb3.Enabled:= False;
    rb4.Enabled:= False;
    rb5.Enabled:= False;
    rb6.Enabled:= False;
    rb7.Enabled:= False;
    rb8.Enabled:= False;
    rb9.Enabled:= False;
    rb10.Enabled:= False;
   end
   else
   begin
    chkTIDAKNYERI.Enabled := True;
    chkYaNyeri.Enabled := True;

    rb0.Enabled:= True;
    rb1.Enabled:= True;
    rb2.Enabled:= True;
    rb3.Enabled:= True;
    rb4.Enabled:= True;
    rb5.Enabled:= True;
    rb6.Enabled:= True;
    rb7.Enabled:= True;
    rb8.Enabled:= True;
    rb9.Enabled:= True;
    rb10.Enabled:= True;
   end;
        
 end;
end;

procedure RESPONTIME;
begin
  WITH FAsesmenAwalIgd do
  begin
    IF rbP1.Checked = True then
    begin
       //rbP1.Checked := True;
       rbP2.Checked := False;
       rbP3.Checked := False;
    end
    else IF  rbP2.Checked = True then
    begin
      rbP1.Checked := False;
      //rbP2.Checked := True;
      rbP3.Checked := False;
    end
    ELSE IF rbP3.Checked = True then
    begin
       rbP1.Checked := False;
       rbP2.Checked := False;
       //rbP3.Checked := True;
    end
    ELSE
    begin
      rbP1.Checked := False;
      rbP2.Checked := False;
      rbP3.Checked := False;
    end;

  end;
end;

/// penilaian nyeri
procedure pilihanNyeri;
var
  nilai:Integer;
begin
  with FAsesmenAwalIgd do
  begin
    nilai := StrToInt(lblPasienMerasaNyeri.Caption);
    case nilai of
    /// tidak ada nyeri
    0:begin
     chktdknyeri.Checked:= True;
     chkNYERIRINGAN.Checked:= False;
     chkNYERIBERAT.Checked:= False;
     chkNYERISEDANG.Checked:= False;
     chkNYERISANGAT.Checked:= False;
    end;
    /// sedikit sakit
    1..3:begin
     chktdknyeri.Checked:= False;
     chkNYERIRINGAN.Checked:= True;
     chkNYERIBERAT.Checked:= False;
     chkNYERISEDANG.Checked:= False;
     chkNYERISANGAT.Checked:= False;
    end;
    ///
    4..6:begin
     chktdknyeri.Checked:= False;
     chkNYERIRINGAN.Checked:= false;
     chkNYERIBERAT.Checked:= False;
     chkNYERISEDANG.Checked:= True;
     chkNYERISANGAT.Checked:= False;
    end;

    7..9:begin
     chktdknyeri.Checked:= False;
     chkNYERIRINGAN.Checked:= False;
     chkNYERIBERAT.Checked:= True;
     chkNYERISEDANG.Checked:= False;
     chkNYERISANGAT.Checked:= False;
    end;

    10:begin
     chktdknyeri.Checked:= False;
     chkNYERIRINGAN.Checked:= False;
     chkNYERIBERAT.Checked:= False;
     chkNYERISEDANG.Checked:= False;
     chkNYERISANGAT.Checked:= True;
    end;

    else
    begin
      chktdknyeri.Checked:= False;
      chkNYERIRINGAN.Checked:= False;
      chkNYERIBERAT.Checked:= False;
      chkNYERISEDANG.Checked:= False;
      chkNYERISANGAT.Checked:= False;
    end;

    end;
  end;
end;

/// identitas sifat nyeri

/// terus
procedure Nyeriterus;
begin
  with FAsesmenAwalIgd do
  begin
   if chkterus.Checked = True then
    begin
     chkterus.Checked := True;
     chkHILANG.Enabled := False;
     chklainsifat.Enabled := False;
     edtlainsifat.Enabled := False;
    end
   else 
    begin
     ///chkterus.Checked := True;
     chkHILANG.Enabled := True;
     chklainsifat.Enabled := True;
     edtlainsifat.Enabled := True;
    end;
  end;
end;

/// hilang
procedure NyeriHilang;
begin
  with FAsesmenAwalIgd do
  begin
   if chkHILANG.Checked = True then
    begin
     chkterus.Enabled := False;
     ///chkHILANG.Checked := True;
     chklainsifat.Enabled := False;
     edtlainsifat.Enabled := False;
    end
   else
    begin
     chkterus.Enabled := True;
     ///chkHILANG.Checked := True;
     chklainsifat.Enabled := True;
     edtlainsifat.Enabled := True;
    end;
  end;
end;

/// lain sifat
procedure NyerilainyaSifat;
begin
  with FAsesmenAwalIgd do
  begin
   if chklainsifat.Checked = True then
    begin
     chkterus.Enabled := False;
     chkHILANG.Enabled := False;
     ///chklainsifat.Enabled := False;
     ///edtlainsifat.Enabled := False;
    end
   else
    begin
     chkterus.Enabled := True;
     chkHILANG.Enabled := True;
     ///chklainsifat.Enabled := False;
     edtlainsifat.Enabled := True;
    end;
  end;
end;

/// kualitas nyeri
procedure tumpul;
begin
  with FAsesmenAwalIgd do
  begin
    if chktumpul.Checked = True then
    begin
      chktajam.Enabled := False;
      chktertekan.Enabled := False;
      chkterbakar.Enabled := False;
      chklainkualitas.Enabled := False;
      edtlainkualitas.Enabled := False;
    end
    else
    begin
     chktajam.Enabled := True;
     chktertekan.Enabled := True;
     chkterbakar.Enabled := True;
     chklainkualitas.Enabled := True;
     edtlainkualitas.Enabled := True;
    end;
  end;
end;

procedure tajam;
begin
  with FAsesmenAwalIgd do
  begin
    if chktajam.Checked = True then
    begin
      chktumpul.Enabled := False;
      chktertekan.Enabled := False;
      chkterbakar.Enabled := False;
      chklainkualitas.Enabled := False;
      edtlainkualitas.Enabled := False;
    end
    else
    begin
     chktumpul.Enabled := True;
     chktertekan.Enabled := True;
     chkterbakar.Enabled := True;
     chklainkualitas.Enabled := True;
     edtlainkualitas.Enabled := True;
    end;
  end;
end;

procedure tertekan;
begin
  with FAsesmenAwalIgd do
  begin
    if chktertekan.Checked = True then
    begin
      chktajam.Enabled := False;
      chktumpul.Enabled := False;
      chkterbakar.Enabled := False;
      chklainkualitas.Enabled := False;
      edtlainkualitas.Enabled := False;
    end
    else
    begin
     chktajam.Enabled := True;
     chktumpul.Enabled := True;
     chkterbakar.Enabled := True;
     chklainkualitas.Enabled := True;
     edtlainkualitas.Enabled := True;
    end;
  end;
end;

procedure terbakar;
begin
  with FAsesmenAwalIgd do
  begin
    if chkterbakar.Checked = True then
    begin
      chktajam.Enabled := False;
      chktertekan.Enabled := False;
      chktumpul.Enabled := False;
      chklainkualitas.Enabled := False;
      edtlainkualitas.Enabled := False;
    end
    else
    begin
     chktajam.Enabled := True;
     chktertekan.Enabled := True;
     chktumpul.Enabled := True;
     chklainkualitas.Enabled := True;
     edtlainkualitas.Enabled := True;
    end;
  end;
end;

procedure lainyakualitas;
begin
  with FAsesmenAwalIgd do
  begin
    if chklainkualitas.Checked = True then
    begin
      chktajam.Enabled := False;
      chktertekan.Enabled := False;
      chkterbakar.Enabled := False;
      chktumpul.Enabled := False;
      edtlainkualitas.Enabled := True;
    end
    else
    begin
     chktajam.Enabled := True;
     chktertekan.Enabled := True;
     chkterbakar.Enabled := True;
     chktumpul.Enabled := True;
     edtlainkualitas.Enabled := True;
    end;
  end;
end;

/// faktor pemberat
procedure cahaya;
begin
  with FAsesmenAwalIgd do
  begin
    if chkcahaya.Checked = True then
     begin
       chkgerakan.Enabled := False;
       chkberbaring.Enabled := False;
       chklainpemberat.Enabled := False;
       edtlainpemberat.Enabled := False;
     end
     else
     begin
       chkgerakan.Enabled := True;
       chkberbaring.Enabled := True;
       chklainpemberat.Enabled := True;
       edtlainpemberat.Enabled := True;
     end;
  end;
end;

procedure gerakan;
begin
 with FAsesmenAwalIgd do
  begin
    if chkgerakan.Checked = True then
     begin
       chkcahaya.Enabled := False;
       chkberbaring.Enabled := False;
       chklainpemberat.Enabled := False;
       edtlainpemberat.Enabled := False;
     end
     else
     begin
       chkcahaya.Enabled := True;
       chkberbaring.Enabled := True;
       chklainpemberat.Enabled := True;
       edtlainpemberat.Enabled := True;
     end;
  end;
end;

procedure berbaring;
begin
 with FAsesmenAwalIgd do
  begin
    if chkberbaring.Checked = True then
     begin
       chkcahaya.Enabled := False;
       chkgerakan.Enabled := False;
       chklainpemberat.Enabled := False;
       edtlainpemberat.Enabled := False;
     end
     else
     begin
       chkcahaya.Enabled := True;
       chkgerakan.Enabled := True;
       chklainpemberat.Enabled := True;
       edtlainpemberat.Enabled := True;
     end;
  end;
end;

procedure lainyaPemberat;
begin
  with FAsesmenAwalIgd do
  begin
    if chklainpemberat.Checked = True then
     begin
       chkcahaya.Enabled := False;
       chkgerakan.Enabled := False;
       chkberbaring.Enabled := False;
       edtlainpemberat.Enabled := True;
     end
     else
     begin
       chkcahaya.Enabled := True;
       chkgerakan.Enabled := True;
       chkberbaring.Enabled := True;
       edtlainpemberat.Enabled := True;
     end;
  end;
end;

/// faktor peringan
procedure makan;
begin
 with FAsesmenAwalIgd do
 begin
   if chkmakan.Checked = True then
    begin
      chkmakan.Enabled := True;
      chksunyi.Enabled := False;
      chkdingin.Enabled := False;
      chkpanas.Enabled := False;
      chklainperingan.Enabled := False;
      edtlainperingan.Enabled := False;
    end
    else
    begin
      chkmakan.Enabled := True;
      chksunyi.Enabled := True;
      chkdingin.Enabled := True;
      chkpanas.Enabled := True;
      chklainperingan.Enabled := True;
      edtlainperingan.Enabled := True;
    end;
 end;
end;

procedure sunyi;
begin
 with FAsesmenAwalIgd do
 begin
  if chksunyi.Checked = True then
    begin
      chkmakan.Enabled := False;
      chksunyi.Enabled := True;
      chkdingin.Enabled := False;
      chkpanas.Enabled := False;
      chklainperingan.Enabled := False;
      edtlainperingan.Enabled := False;
    end
    else
    begin
      chkmakan.Enabled := True;
      chksunyi.Enabled := True;
      chkdingin.Enabled := True;
      chkpanas.Enabled := True;
      chklainperingan.Enabled := True;
      edtlainperingan.Enabled := True;
    end;
 end;
end;

procedure dingin;
begin
 with FAsesmenAwalIgd do
 begin
  if chkdingin.Checked = True then
    begin
      chkmakan.Enabled := False;
      chksunyi.Enabled := False;
      chkdingin.Enabled := True;
      chkpanas.Enabled := False;
      chklainperingan.Enabled := False;
      edtlainperingan.Enabled := False;
    end
    else
    begin
      chkmakan.Enabled := True;
      chksunyi.Enabled := True;
      chkdingin.Enabled := True;
      chkpanas.Enabled := True;
      chklainperingan.Enabled := True;
      edtlainperingan.Enabled := True;
    end;
 end;
end;

procedure panas;
begin
 with FAsesmenAwalIgd do
 begin
  if chkpanas.Checked = True then
    begin
      chkmakan.Enabled := False;
      chksunyi.Enabled := False;
      chkdingin.Enabled := False;
      chkpanas.Enabled := True;
      chklainperingan.Enabled := False;
      edtlainperingan.Enabled := False;
    end
    else
    begin
      chkmakan.Enabled := True;
      chksunyi.Enabled := True;
      chkdingin.Enabled := True;
      chkpanas.Enabled := True;
      chklainperingan.Enabled := True;
      edtlainperingan.Enabled := True;
    end;
 end;
end;

procedure lainyaPeringan;
begin
 with FAsesmenAwalIgd do
 begin
  if chklainperingan.Checked = True then
    begin
      chkmakan.Enabled := False;
      chksunyi.Enabled := False;
      chkdingin.Enabled := False;
      chkpanas.Enabled := False;
      chklainperingan.Enabled := True;
      edtlainperingan.Enabled := True;
    end
    else
    begin
      chkmakan.Enabled := True;
      chksunyi.Enabled := True;
      chkdingin.Enabled := True;
      chkpanas.Enabled := True;
      chklainperingan.Enabled := True;
      edtlainperingan.Enabled := True;
    end;
 end;
end;

/// efek nyeri
procedure maulMuntah;
begin
  with FAsesmenAwalIgd do
  begin
   if chkmual.Checked = True then
      begin
       chkmual.Enabled := True;
       chknafsumakan.Enabled := False;
       chktidur.Enabled := False;
       chkaktifitas.Enabled := False;
       chklainefek.Enabled := False;
       edtlainefek.Enabled := False;
      end
      else
      begin
       chkmual.Enabled := True;
       chknafsumakan.Enabled := True;
       chktidur.Enabled := True;
       chkaktifitas.Enabled := True;
       chklainefek.Enabled := True;
       edtlainefek.Enabled := True;
      end;
  end;
end;

procedure tidur;
begin
  with FAsesmenAwalIgd do
  begin
   if chktidur.Checked = True then
      begin
       chkmual.Enabled := False;
       chknafsumakan.Enabled := False;
       ///chktidur.Enabled := False;
       chkaktifitas.Enabled := False;
       chklainefek.Enabled := False;
       edtlainefek.Enabled := False;
      end
      else
      begin
       chkmual.Enabled := True;
       chknafsumakan.Enabled := True;
       chktidur.Enabled := True;
       chkaktifitas.Enabled := True;
       chklainefek.Enabled := True;
       edtlainefek.Enabled := True;
      end;
  end;
end;

procedure nafsuMakan;
begin
  with FAsesmenAwalIgd do
  begin
   if chknafsumakan.Checked = True then
      begin
       chkmual.Enabled := False;
       ///chknafsumakan.Enabled := False;
       chktidur.Enabled := False;
       chkaktifitas.Enabled := False;
       chklainefek.Enabled := False;
       edtlainefek.Enabled := False;
      end
      else
      begin
       chkmual.Enabled := True;
       chknafsumakan.Enabled := True;
       chktidur.Enabled := True;
       chkaktifitas.Enabled := True;
       chklainefek.Enabled := True;
       edtlainefek.Enabled := True;
      end;
  end;
end;

procedure akttifitas;
begin
  with FAsesmenAwalIgd do
  begin
   if chkaktifitas.Checked = True then
      begin
       chkmual.Enabled := False;
       chknafsumakan.Enabled := False;
       ///chkaktifitas.Enabled := False;
       chklainefek.Enabled := False;
       edtlainefek.Enabled := False;
      end
      else
      begin
       chkmual.Enabled := True;
       chknafsumakan.Enabled := True;
       chkaktifitas.Enabled := True;
       chklainefek.Enabled := True;
       edtlainefek.Enabled := True;
      end;
  end;
end;

procedure LainyaEfek;
begin
  with FAsesmenAwalIgd do
  begin
   if chklainefek.Checked = True then
      begin
       chkmual.Enabled := False;
       chknafsumakan.Enabled := False;
       chkaktifitas.Enabled := False;
       chklainefek.Enabled := True;
       edtlainefek.Enabled := True;
      end
      else
      begin
       chkmual.Enabled := True;
       chknafsumakan.Enabled := True;
       chkaktifitas.Enabled := True;
       chklainefek.Enabled := True;
       edtlainefek.Enabled := True;
      end;
  end;
end;

/// otomatis nilai nyeri anak
procedure wajah;
begin
  with FAsesmenAwalIgd do
  begin
    if cbbwajahnyeri.ItemIndex = 0 then
       cbbwajah.ItemIndex := 0
    else if cbbwajahnyeri.ItemIndex = 1 then
        cbbwajah.ItemIndex := 1
    else
        cbbwajah.ItemIndex := 2;
  end;
end;

procedure Kaki;
begin
 with FAsesmenAwalIgd do
 begin
   if cbbkakinyeri.ItemIndex = 0 then
       cbbkaki.ItemIndex := 0
   else if cbbkakinyeri.ItemIndex = 1 then
       cbbkaki.ItemIndex := 1
   else
       cbbkaki.ItemIndex := 2; 
 end;
end;

procedure Aktifitas;
begin
 with FAsesmenAwalIgd do
 begin
   if cbbaktifitasnyeri.ItemIndex = 0 then
      cbbaktifitas.ItemIndex := 0
   else if cbbaktifitasnyeri.ItemIndex = 1 then
      cbbaktifitas.ItemIndex := 1
   else
      cbbaktifitas.ItemIndex := 2;
 end;
end;

procedure menangis;
begin
 with FAsesmenAwalIgd do
 begin
   if cbbmenangisnyeri.ItemIndex = 0 then
        cbbmenangis.ItemIndex := 0
   else if cbbmenangisnyeri.ItemIndex = 1 then
        cbbmenangis.ItemIndex := 1
   else
        cbbmenangis.ItemIndex := 2;
 end;
end;

procedure Bersuara;
begin
 with FAsesmenAwalIgd do
 begin
   if cbbbersuaranyeri.ItemIndex = 0 then
        cbbbersuara.ItemIndex := 0
   else if cbbbersuaranyeri.ItemIndex = 1 then
        cbbbersuara.ItemIndex := 1
   else
        cbbbersuara.ItemIndex := 2;
 end;
end;

procedure totalNilaiNyeriAnak;
var
  wajah,Kaki,Aktifitas,menangis,Bersuara,total:Integer;
begin
  with FAsesmenAwalIgd do
  begin
   wajah := StrToInt(cbbwajah.Text);
   Kaki := StrToInt(cbbkaki.Text);
   Aktifitas := StrToInt(cbbaktifitas.Text);
   Bersuara := StrToInt(cbbbersuara.Text);
   total := wajah+Kaki+Aktifitas+Bersuara;
   edttotalnyeri.Text := IntToStr(total);

   case total of
   0:lblHasilPenilaianAnak.Caption := '0 = Nyaman';
   1..3:lblHasilPenilaianAnak.Caption := '1 - 3 = Kurang Nyaman';
   4..6:lblHasilPenilaianAnak.Caption := '4 - 6 = Nyeri Sedang';
   7..10:lblHasilPenilaianAnak.Caption := '7 - 10 = Nyeri Berat';
   else
   lblHasilPenilaianAnak.Caption := '';
  end;
  end;
end;

procedure riwayatJatuh;
begin
 with FAsesmenAwalIgd do
 begin
  if cbbriwayatjatuh.ItemIndex = 0 then
   edtriwayatjatuh.Text := '25'
  else
   edtriwayatjatuh.Text := '0';
 end;
end;

procedure Diagnosis;
begin
 with FAsesmenAwalIgd do
 begin
  if cbbdiagnosis.ItemIndex = 0 then
    edtdiagnosis.Text := '15'
  else
    edtdiagnosis.Text := '0';
 end;
end;

procedure alatBantu;
begin
 with FAsesmenAwalIgd do
 begin
  if cbbalatbantu.ItemIndex = 0 then
   edtalatbantu.Text := '30'
  else if cbbalatbantu.ItemIndex = 1 then
   edtalatbantu.Text := '15'
  else
   edtalatbantu.Text := '0';
 end;
end;

procedure TerpasangInfus;
begin
 with FAsesmenAwalIgd do
 begin
  if cbbterpasanginfus.ItemIndex = 0 then
   edtterpasanginfus.Text := '20'
  else
   edtterpasanginfus.Text := '0';
 end;
end;

procedure GayaBerjalan;
begin
 with FAsesmenAwalIgd do
 begin
  if cbbgayaberjalan.ItemIndex = 0 then
   edtgayaberjalan.Text := '20'
  else if cbbgayaberjalan.ItemIndex = 1 then
   edtgayaberjalan.Text := '10'
  else
   edtgayaberjalan.Text := '0';
 end;
end;

procedure StatusMental;
begin
 with FAsesmenAwalIgd do
 begin
  if cbbstatusmental.ItemIndex = 0 then
    edtstatusmental.Text := '10'
  else
    edtstatusmental.Text := '0';
 end;
end;

procedure totalNilaiResikoJatuh;
var
skorriwayatJatuh,
skorDiagnosis,
skoralatBantu,
skorTerpasangInfus,
skorGayaBerjalan,
skorStatusMental,
totalSkor:Integer;
begin
 with FAsesmenAwalIgd do
 begin
  skorriwayatJatuh:= StrToInt(edtriwayatjatuh.Text);
  skorDiagnosis := StrToInt(edtdiagnosis.Text);
  skoralatBantu := StrToInt(edtalatbantu.Text);
  skorTerpasangInfus := StrToInt(edtterpasanginfus.Text);
  skorGayaBerjalan := StrToInt(edtgayaberjalan.Text);
  skorStatusMental := StrToInt(edtstatusmental.Text);
  totalSkor := skorriwayatJatuh+skorDiagnosis+skoralatBantu+skorTerpasangInfus+skorGayaBerjalan+skorStatusMental;
  edttotalskorrisiko.Text := IntToStr(totalSkor);

  case totalSkor of
  45..150:lblHasilResikoJatuh.Caption:='>= Resiko Tinggi';
  25..44:lblHasilResikoJatuh.Caption:= 'Resiko Sedang';
  0..24:lblHasilResikoJatuh.Caption:= 'Resiko Rendah';
  
  else
  lblHasilResikoJatuh.Caption:= 'Kosong';
  end

 end;
end;

///intervensi resiko jatuh
procedure cbNo1;
begin
 with FAsesmenAwalIgd do
 begin
   if cbbno1.ItemIndex = 0 then
       edtnamapetugas1.Enabled := True
   else
      edtnamapetugas1.Enabled := False;
 end;
end;

procedure cbNo2;
begin
 with FAsesmenAwalIgd do
 begin
   if cbbno2.ItemIndex = 0 then
       edtnamapetugas2.Enabled := True
   else
      edtnamapetugas2.Enabled := False;
 end;
end;

procedure cbNo3;
begin
 with FAsesmenAwalIgd do
 begin
   if cbbno3.ItemIndex = 0 then
       edtnamapetugas3.Enabled := True
   else
      edtnamapetugas3.Enabled := False;
 end;
end;


end.
