unit UAsemenAwalIgdTriage;

 
interface
procedure baruTriage;
procedure ProsesSimpanTriage;

implementation
uses UDataSimrs1,UAsesmenAwalIgd, SysUtils, Forms, ZDataset,
  ZAbstractRODataset, DB;

/// procedure baru
procedure baruTriage;
begin
  with FAsesmenAwalIgd do
  begin
    //// data rujukan
    edtDIKRIMOLEH.Text:= '';
    edtNAMAPENGIRIM.Text:= '';
    mmoAlamat.Text:= '';
    mmodiagrujukan.Text := '';
    mmoterapi.Text := '';
    
    dtpTGLMASUK.DateTime:= Now;
    cxtmdtJAM.Time:= Now;
    chkNontrauma.Checked:= False;
    chkObstetri.Checked:= False;
    chkTrauma.Checked:= False;
    dtpTGLTRAUMA.DateTime:= Now;
    cxtmdtJAMTRAUMA.Time:= Now;
    mmoLokasiTKP.Text:= '';
    chkBERJALAN.Checked:= False;
    chkBRANCAR.Checked:= False;
    chkKURSIRODA.Checked:= False;
    
    /// triage
    edtKELUHANUTAMA.Text:= '';
    edtRIWAYATSINGKAT.Text:= '';
    edtKEADAANUMUM.Text:= '';
    chkcompos.Checked := False;
    chkapatis.Checked := False;
    chksomnolens.Checked := False;
    chksopor.Checked := False;
    chkcoma.Checked := False;

    /// jalan nafas
    chkSumbatan.Checked:= False;
    chkBebasE.Checked:= False;
    chkBebasU.Checked:= False;
    chkNoUrgent.Checked:= False;
    chkBebasFE.Checked:= False;

    ///pernafasan

    chkHentinafas.Checked:= False;
    chkRR1xmnt.Checked:= False;
    chkSianosis.Checked:= False;
    chkApnea.Checked:= False;
    chkRR40xmnt.Checked:= False;
    chkSianosisSentalMenetapDenganOs2.Checked:= False;
    chkRR32.Checked:= False;
    chkWheezing.Checked:= False;
    chkRR80.Checked:= False;
    chkSianosisEmergency.Checked:= False;

    edtSaO2.Text:= '';
    edtFrekNafas.Text:= '';
    chkpr24_32Xm.Checked:= False;
    chkWhezingE.Checked:= False;
    chkPR60.Checked:= False;
    chkSianosiSentalU.Checked:= False;
    chkNormalNoU.Checked:= False;
    chkNormalFE.Checked:= False;

    ///sirkulasi
    chkHentiJantung.Checked:= False;
    chkNadiTidakTerabaLemah.Checked:= False;
    chkPucatpale.Checked:= False;
    chkAkralDingin.Checked:= False;
    chkFrekNadi60x.Checked:= False;
    chkCRT3detik.Checked:= False;
    chkNadiTeraba.Checked:= False;
    chkBraadikardia.Checked:= False;
    chkTachikardia.Checked:= False;
    chkPucatPaleE.Checked:= False;
    chkAkralDinginE.Checked:= False;
    chkCrt3DetikE.Checked:= False;
    edtTekananDarah.Text:= '';
    chkFreknadiE.Checked:= False;
    edtNadi.Text:= '';
    chkNormalUSirkulasi.Checked:= False;
    chkNormalFESirkulasi.Checked:= False;
    chkNadiTeraba120_150.Checked:= False;
    chkFrekNadiUrgent.Checked:= False;
    chkTekDarahSistole.Checked:= False;
    chkTekDarahDiastole.Checked:= False;
    chkCrt3DetikU.Checked:= False;

    /// kesadaran
    chkGCS9.Checked:= False;
    chkNeonatus36.Checked:= False;
    chkGCS9_12.Checked:= False;
    chkNeonatus35cE.Checked:= False;
    edt1.Text:= '';
    edt2.Text:= '';
    edt3.Text:= '';
    chkGCS12.Checked:= False;
    chkGcs15.Checked:= False;
    chkLukaDng.Checked:= False;
    chkTraumaNoU.Checked:= False;
    edtSuhu.Text:= '';
    chk36_50CNo.Checked:= False;
    chk36_50cF.Checked:= False;
    chknormal.Checked:= False;
    CheckBox2.Checked:= False;

    rbP1.Checked := False;
    rbP2.Checked := False;
    rbP3.Checked := False;
  end;
end;

/// proses simpan & ubah Triage
procedure ProsesSimpanTriage;
var
   nonTrauma,obsterti,trauma,kesadaran,crBerjalan,
   /// jalanNafas
   jNResutassiSumbatan,jNEmergencyBebas,jNUrgentBebas,jNNonUrgentBebas,jNFalseEmergencyBebas,
   ///pernafasan
   pResutasiHentiNafas,pResutasiPR1Menit,pResutasiSiagnosi,pResutasiApnea,pResutasiPR40Menit,pResutasiSiagnosiSentral,pEmergencyPR,pEmergencyWheezing,pEmergencyPr80,pEmergencySianosis,
   pUrgentPr24,pUrgentWheezing,pUrgentPr60,pUrgentSianosi,pNonUrgentNormal,pFalseEmergencyNormal,pPR40Menit,
   /// sirkulasi
   sRHenditkanJantung,sRNadiTidakTerabahLemah,sRPucatPale,sRAkralDingin,sRFrek,sRCrt,sENadiTerabaLemah,sEBraadikardia,sETachikardia,sEPucat,sEAkiralDingin,sECrt,sEFrekNadi,
   sNonUrgentNormal,sFalseEmergencyNormal,sUrgentNadiTeraba,sUrgentFrekNadi,sUrgentTekDarahSistole,sUrgentTekDarahDiastole,sUrgentCrt,
   /// kesadaran
   kRGcs,kRNeonatus,kEcyGcs,kENeonatus,kUGcs,kNonUrgentGcs,kNonUrgentLuka,kNonUrgentTrauma,kNonUrgent36,kFalseEmergency36,kFalseEmergencyNormal,kFalseEmergencyLuka,
   pSatu,pDua,ptiga:String;
begin
  with FAsesmenAwalIgd do
  begin
    /// data rujukan
    if chkNontrauma.Checked= False then
       nonTrauma := 'N'
    else
       nonTrauma := 'Y';
    if chkObstetri.Checked= False then
      obsterti := 'N'
    else
      obsterti := 'Y';
    if chkTrauma.Checked= False then
      trauma := 'N'
    else
      trauma := 'Y';

    if chkBERJALAN.Checked = True then
      crBerjalan := 'BERJALAN'
    else if chkBRANCAR.Checked = true then
      crBerjalan := 'BRANCAR'
    else
      crBerjalan := 'KURSI RODA';

    ///triage kesadaran
    if chkcompos.Checked = True then
       kesadaran := 'compos'
    else if  chkapatis.Checked = true then
      kesadaran := 'kapasitas'
    else if  chksomnolens.Checked = true then
      kesadaran := 'somnolens'
    else if  chksopor.Checked = True then
      kesadaran := 'sopor'
    else
    //chkcoma.Checked := False;
      kesadaran := 'coma';

    ///jalan nafas
    if chkSumbatan.Checked = False then
      jNResutassiSumbatan := 'N'
    else
      jNResutassiSumbatan := 'Y';

    if chkBebasE.Checked = False then
      jNEmergencyBebas := 'N'
    else
      jNEmergencyBebas := 'Y';

    if chkBebasU.Checked = False then
      jNUrgentBebas := 'N'
    else
      jNUrgentBebas := 'Y';

    if chkNoUrgent.Checked = False then
      jNNonUrgentBebas := 'N'
    else
      jNNonUrgentBebas := 'Y';

    if chkBebasFE.Checked = False then
      jNFalseEmergencyBebas := 'N'
    else
      jNFalseEmergencyBebas := 'Y';

    ///pernafasan
    if chkHentinafas.Checked = False then
      pResutasiHentiNafas := 'N'
    else
      pResutasiHentiNafas := 'Y';

    if chkRR1xmnt.Checked = False then
      pResutasiPR1Menit := 'N'
    else
      pResutasiPR1Menit := 'Y';
      
    if chkSianosis.Checked = False then
      pResutasiSiagnosi := 'N'
    else
      pResutasiSiagnosi := 'Y';

    if chkApnea.Checked = False then
      pResutasiApnea := 'N'
    else
      pResutasiApnea := 'Y';

    if chkRR40xmnt.Checked = False then
      pPR40Menit := 'N'
    else
      pPR40Menit := 'Y';
      
    if chkSianosisSentalMenetapDenganOs2.Checked = False then
       pResutasiSiagnosiSentral := 'N'
    else
       pResutasiSiagnosiSentral := 'Y';

    if chkRR32.Checked = False then
       pEmergencyPR := 'N'
    else
       pEmergencyPR := 'Y';
       
    if chkWheezing.Checked = False then
       pEmergencyWheezing := 'N'
    else
       pEmergencyWheezing := 'Y';
       
    if chkRR80.Checked = False then
       pEmergencyPr80 := 'N'
    else
       pEmergencyPr80 := 'Y';

    if chkSianosisEmergency.Checked = False then
       pEmergencySianosis := 'N'
    else
      pEmergencySianosis := 'Y';

    if chkpr24_32Xm.Checked = True then
       pUrgentPr24 := 'N'
    else
      pUrgentPr24 := 'Y';

    if chkWhezingE.Checked = False then
       pUrgentWheezing := 'N'
    else
       pUrgentWheezing := 'Y';
       
    if chkPR60.Checked = False then
       pUrgentPr60 := 'N'
    else
       pUrgentPr60 := 'Y';
       
    if chkSianosiSentalU.Checked = False then
       pUrgentSianosi := 'N'
    else
       pUrgentSianosi := 'Y';
       
    if chkNormalNoU.Checked = False then
       pNonUrgentNormal := 'N'
    else
       pNonUrgentNormal := 'Y';

    if chkNormalFE.Checked = False then
       pFalseEmergencyNormal := 'N'
    else
      pFalseEmergencyNormal := 'Y';
      
    ///sirkulasi
    if chkHentiJantung.Checked = False then
       sRHenditkanJantung := 'N'
    else
       sRHenditkanJantung := 'Y';

    if chkNadiTidakTerabaLemah.Checked = False then
       sRNadiTidakTerabahLemah := 'N'
    else
       sRNadiTidakTerabahLemah := 'Y';

    if chkPucatpale.Checked = False then
       sRPucatPale := 'N'
    else
       sRPucatPale := 'Y';
    if chkAkralDingin.Checked = False then
       sRAkralDingin := 'N'
    else
       sRAkralDingin := 'Y';

    if chkFrekNadi60x.Checked = False then
       sRFrek := 'N'
    else
       sRFrek := 'Y';

    if chkCRT3detik.Checked = False then
       sRCrt := 'N'
    else
       sRCrt := 'Y';

    if chkNadiTeraba.Checked = False then
       sENadiTerabaLemah:='N'
    else
       sENadiTerabaLemah:='Y';

    if chkBraadikardia.Checked = False then
       sEBraadikardia := 'N'
    else
       sEBraadikardia := 'Y';

    if chkTachikardia.Checked = False then
       sETachikardia := 'N'
    else
       sETachikardia := 'Y';
       
    if chkPucatPaleE.Checked = False then
       sEPucat := 'N'
    else
       sEPucat := 'Y';

    if chkAkralDinginE.Checked = False then
       sEAkiralDingin := 'N'
    else
       sEAkiralDingin := 'Y';
       
    if chkCrt3DetikE.Checked = False then
       sECrt := 'N'
    else
       sECrt := 'Y';

    if chkFreknadiE.Checked = False then
       sEFrekNadi := 'N'
    else
       sEFrekNadi := 'Y';

    if chkNormalUSirkulasi.Checked = False then
       sNonUrgentNormal := 'N'
    else
       sNonUrgentNormal := 'Y';
       
    if chkNormalFESirkulasi.Checked = False then
       sFalseEmergencyNormal := 'N'
    else
       sFalseEmergencyNormal := 'Y';

    if chkNadiTeraba120_150.Checked = False then
       sUrgentNadiTeraba := 'N'
    else
       sUrgentNadiTeraba := 'Y';
    
    if chkFrekNadiUrgent.Checked = False then
       sUrgentFrekNadi := 'N'
    else
       sUrgentFrekNadi := 'Y';
       
    if chkTekDarahSistole.Checked = False then
        sUrgentTekDarahSistole := 'N'
    else
        sUrgentTekDarahSistole := 'Y';

    if chkTekDarahDiastole.Checked = False then
        sUrgentTekDarahDiastole := 'N'
    else
        sUrgentTekDarahDiastole := 'Y';

    if chkCrt3DetikU.Checked = False then
        sUrgentCrt := 'N'
    else
        sUrgentCrt := 'Y';

    /// kesadaran
    if chkGCS9.Checked = False then
       kRGcs := 'N'
    else
       kRGcs := 'Y';

    if chkNeonatus36.Checked = False then
       kRNeonatus := 'N'
    else
       kRNeonatus  := 'Y';

    if chkGCS9_12.Checked = False then
       kEcyGcs := 'N'
    else
       kEcyGcs := 'Y';

    if chkNeonatus35cE.Checked = False then
       kENeonatus := 'N'
    else
       kENeonatus := 'Y';

    if chkGCS12.Checked = False then
       kUGcs := 'N'
    else
       kUGcs := 'Y';

    if chkGcs15.Checked = False then
       kNonUrgentGcs := 'N'
    else
       kNonUrgentGcs := 'Y';

    if chkLukaDng.Checked = False then
       kNonUrgentLuka := 'N'
    else
       kNonUrgentLuka := 'Y';

    if chkTraumaNoU.Checked = False  then
       kNonUrgentTrauma := 'N'
    else
       kNonUrgentTrauma := 'Y';

    if chk36_50CNo.Checked = False then
       kNonUrgent36 := 'N'
    else
       kNonUrgent36 := 'Y';

    if chk36_50cF.Checked = False then
       kFalseEmergency36 := 'N'
    else
      kFalseEmergency36 := 'Y';

    if chknormal.Checked= False then
       kFalseEmergencyNormal := 'N'
    else
       kFalseEmergencyNormal := 'Y';

    if CheckBox2.Checked = False then
       kFalseEmergencyLuka := 'N'
    else
       kFalseEmergencyLuka := 'Y';

    if rbP1.Checked = False then
       pSatu := 'N'
    else
       pSatu := 'Y';

    if rbP2.Checked = False then
       pDua := 'N'
    else
       pDua := 'Y';

    if rbP3.Checked = False then
       pDua := 'N'
    else
       pDua := 'Y';
   
   

    if btnSIMPANTRIAGE.Caption = 'SIMPAN' then
    //// simpan di tabel triage
    begin
     with DataSimrs1.qryt_asesmen_awal_triage do
     begin
       Close;
       SQL.Clear;
       SQL.Text := 'insert into t_asesmen_awal_triage (noRekamedis,noDaftar,noDaftarUnit,tglDaftarUnit,'+
       /// data rujukan
       'diKrimOleh,namaPengirim,alamatPengirim,diagnosaRujukan,terapiYangDiberikan,'+
       'tglMasuk,jamMasuk,nonTrauma,obsterti,trauma,tglTrauma,jamTrauma,lokasiTkp,'+
       ///triage
       'caraDatang,keluhanUtama,riwayatSingkat,keadaanUmum,kesadaran,'+
       /// pemeriksaan -> jalan Nafas
       'jalanNafasResutassiSumbatan,jalanNafasEmergencyBebas,jalanNafasUrgentBebas,jalanNafasNonUrgentBebas,jalasNafasFalseEmergencyBebas,'+
       ///pemeriksaan -> pernafasan
       'pernafasanResutasiHentiNafas,pernafasanResutasiPR1Menit,pernafasanResutasiPR40Menit,pernafasanResutasiSiagnosiSentral,pernafasanResutasiSiagnosi,pernafasanResutasiApnea,'+

       'pernafasanEmergencyPR,pernafasanEmergencyWheezing,pernafasanEmergencyPr80,pernafasanEmergencySianosis,'+

       'pernafasanTandaVitalSa02,pernafasanTandaVitalFrekNafas,'+
       'pernafasanUrgentPr24,pernafasanUrgentWheezing,pernafasanUrgentPr60,pernafasanUrgentSianosi,'+
       'pernafasanNonUrgentNormal,pernafasanFalseEmergencyNormal,'+

       ///pemeriksaan -> sirkulasi
       'sirkulasiResutasiHenditkanJantung,sirkulasiResutasiPucatPale,sirkulasiResutasiAkralDingin,sirkulasiResutasiFrek,sirkulasiResutasiCrt,'+

       'sirkulasiEmergencyNadiTerabaLemah,sirkulasiEmergencyBraadikardia,sirkulasiEmergencyTachikardia,sirkulasiEmergencyPucat,sirkulasiEmergencyAkiralDingin,'+
       'sirkulasiEmergencyFrekNadi,sirkulasiEmergencyCrt,'+
       'sirkulasiTandaVitalTekananDarah,sirkulasiTandaVitalNadi,'+
       'sirkulasiUrgentNadiTeraba,sirkulasiUrgentFrekNadi,'+
       'sirkulasiUrgentTekDarahSistole,sirkulasiUrgentTekDarahDiastole,sirkulasiUrgentCrt,'+
       'sirkulasiNonUrgentNormal,sirkulasiFalseEmergencyNormal,'+
       /// kesadaran
       'kesadaranResutasiGcs,kesadaranResutasiNeonatus,'+
       'kesadaranEmergencyGcs,kesadaranEmergencyNeonatus,'+
       'kesadaranTandaVitalE,kesadaranTandaVitalV,kesadaranTandaVitalM,kesadaranTandaVitalSuhu,'+
       'kesadaranUrgentGcs,'+
       'kesadaranNonUrgentGcs,kesadaranNonUrgentLuka,kesadaranNonUrgentTrauma,kesadaranNonUrgent36,'+
       'kesadaranFalseEmergencyNormal,kesadaranFalseEmergencyLuka,kesadaranFalseEmergency36,'+
       'pSatu,pDua,pTiga,createDate,createUser) values ("'+edtNoRm.Text+'","'+edtNoRegistrasi.Text+'","'+edtNoRajal.Text+'","'+FormatDateTime('yyyy-MM-dd',dtpTglDaftarUnit.Date)+'",'+
       //// Data Rujukan
       '"'+edtDIKRIMOLEH.Text+'","'+edtNAMAPENGIRIM.Text+'","'+mmoAlamat.Text+'","'+mmodiagrujukan.Text+'","'+mmoterapi.Text+'",'+
       '"'+FormatDateTime('yyyy-MM-dd',dtpTGLMASUK.Date)+'","'+FormatDateTime('hh:mm:ss',Time)+'","'+nonTrauma+'","'+obsterti+'","'+trauma+'","'+FormatDateTime('yyyy-MM-dd',dtpTGLTRAUMA.Date)+'","'+FormatDateTime('hh:mm:ss',cxtmdtJAMTRAUMA.Time)+'","'+mmoLokasiTKP.Text+'",'+
       ///triage
       '"'+crBerjalan+'","'+edtKELUHANUTAMA.Text+'","'+edtRIWAYATSINGKAT.Text+'","'+edtKEADAANUMUM.Text+'","'+kesadaran+'",'+
       ///pemeriksaan -> JalanNafas
       '"'+jNResutassiSumbatan+'","'+jNEmergencyBebas+'","'+jNUrgentBebas+'","'+jNFalseEmergencyBebas+'",'+
       ///pemeriksaan -> pernafasan
       '"'+pResutasiHentiNafas+'","'+pResutasiPR1Menit+'","'+pResutasiPR40Menit+'","'+pResutasiSiagnosiSentral+'","'+pResutasiSiagnosi+'","'+pResutasiApnea+'",'+

       '"'+pEmergencyPR+'","'+pEmergencyWheezing+'","'+pUrgentPr60+'","'+pUrgentSianosi+'",'+
       '"'+edtSaO2.Text+'","'+edtFrekNafas.Text+'",'+
       '"'+pUrgentPr24+'","'+pUrgentWheezing+'","'+pUrgentPr60+'","'+pUrgentSianosi+'",'+
       '"'+pNonUrgentNormal+'","'+pFalseEmergencyNormal+'",'+
       /// sirkulasi
       '"'+sRHenditkanJantung+'","'+sRPucatPale+'","'+sRAkralDingin+'","'+sRFrek+'","'+sRCrt+'",'+
       '"'+sENadiTerabaLemah+'","'+sEBraadikardia+'","'+sETachikardia+'","'+sEPucat+'","'+sEAkiralDingin+'",'+
       '"'+sEFrekNadi+'","'+sECrt+'",'+
       '"'+edtTekananDarah.Text+'","'+edtNadi.Text+'",'+
       '"'+sUrgentNadiTeraba+'","'+sUrgentFrekNadi+'",'+
       '"'+sUrgentTekDarahSistole+'","'+sUrgentTekDarahDiastole+'","'+sUrgentCrt+'",'+
       '"'+sNonUrgentNormal+'","'+sFalseEmergencyNormal+'",'+
       /// kesadaran
       '"'+kRGcs+'","'+kRNeonatus+'",'+
       '"'+kEcyGcs+'","'+kENeonatus+'",'+
       '"'+edtE.Text+'","'+edtV.Text+'","'+edtM.Text+'","'+edtSuhu.Text+'",'+
       '"'+kUGcs+'",'+
       '"'+kNonUrgentGcs+'","'+kNonUrgentLuka+'","'+kNonUrgentTrauma+'","'+kNonUrgent36+'",'+
       '"'+kFalseEmergencyNormal+'","'+kFalseEmergencyLuka+'","'+kFalseEmergency36+'",'+
       '"'+pSatu+'","'+pDua+'","'+ptiga+'","'+FormatDateTime('yyyy-MM-dd hh:mm:ss',Now)+'","coba")';
       ExecSQL;
       SQL.Text := 'select * from t_asesmen_awal_triage';
       Open;
     end;
    end
    else
    /// update 
    begin
     with DataSimrs1.qryt_asesmen_awal_triage do
     begin
       Close;
       SQL.Clear;
       SQL.Text := 'update t_asesmen_awal_triage set noRekamedis="'+edtNoRm.Text+'"+,noDaftar="'+edtNoRegistrasi.Text+'",noDaftarUnit="'+edtNoRajal.Text+'",tglDaftarUnit="'+FormatDateTime('yyyy-MM-dd',dtpTglDaftarUnit.Date)+'",'+
       /// data rujukan
       'diKrimOleh="'+edtDIKRIMOLEH.Text+'",namaPengirim,alamatPengirim,diagnosaRujukan,terapiYangDiberikan,'+
       'tglMasuk,jamMasuk,nonTrauma,obsterti,trauma,tglTrauma,jamTrauma,lokasiTkp,'+
       ///triage
       'caraDatang,keluhanUtama,riwayatSingkat,keadaanUmum,kesadaran,'+
       /// pemeriksaan -> jalan Nafas
       'jalanNafasResutassiSumbatan,jalanNafasEmergencyBebas,jalanNafasUrgentBebas,jalanNafasNonUrgentBebas,jalasNafasFalseEmergencyBebas,'+
       ///pemeriksaan -> pernafasan
       'pernafasanResutasiHentiNafas,pernafasanResutasiPR1Menit,pernafasanResutasiPR40Menit,pernafasanResutasiSiagnosiSentral,pernafasanResutasiSiagnosi,pernafasanResutasiApnea,'+

       'pernafasanEmergencyPR,pernafasanEmergencyWheezing,pernafasanEmergencyPr80,pernafasanEmergencySianosis,'+

       'pernafasanTandaVitalSa02,pernafasanTandaVitalFrekNafas,'+
       'pernafasanUrgentPr24,pernafasanUrgentWheezing,pernafasanUrgentPr60,pernafasanUrgentSianosi,'+
       'pernafasanNonUrgentNormal,pernafasanFalseEmergencyNormal,'+

       ///pemeriksaan -> sirkulasi
       'sirkulasiResutasiHenditkanJantung,sirkulasiResutasiPucatPale,sirkulasiResutasiAkralDingin,sirkulasiResutasiFrek,sirkulasiResutasiCrt,'+

       'sirkulasiEmergencyNadiTerabaLemah,sirkulasiEmergencyBraadikardia,sirkulasiEmergencyTachikardia,sirkulasiEmergencyPucat,sirkulasiEmergencyAkiralDingin,'+
       'sirkulasiEmergencyFrekNadi,sirkulasiEmergencyCrt,'+
       'sirkulasiTandaVitalTekananDarah,sirkulasiTandaVitalNadi,'+
       'sirkulasiUrgentNadiTeraba,sirkulasiUrgentFrekNadi,'+
       'sirkulasiUrgentTekDarahSistole,sirkulasiUrgentTekDarahDiastole,sirkulasiUrgentCrt,'+
       'sirkulasiNonUrgentNormal,sirkulasiFalseEmergencyNormal,'+
       /// kesadaran
       'kesadaranResutasiGcs,kesadaranResutasiNeonatus,'+
       'kesadaranEmergencyGcs,kesadaranEmergencyNeonatus,'+
       'kesadaranTandaVitalE,kesadaranTandaVitalV,kesadaranTandaVitalM,kesadaranTandaVitalSuhu,'+
       'kesadaranUrgentGcs,'+
       'kesadaranNonUrgentGcs,kesadaranNonUrgentLuka,kesadaranNonUrgentTrauma,kesadaranNonUrgent36,'+
       'kesadaranFalseEmergencyNormal,kesadaranFalseEmergencyLuka,kesadaranFalseEmergency36'+
       'pSatu,pDua,pTiga,createDate,createUser) values (,,,'+
       //// Data Rujukan
       ',"'+edtNAMAPENGIRIM.Text+'","'+mmoAlamat.Text+'","'+mmodiagrujukan.Text+'","'+mmoterapi.Text+'",'+
       '"'+FormatDateTime('yyyy-MM-dd',dtpTGLMASUK.Date)+'","'+FormatDateTime('hh:mm:ss',Time)+'","'+nonTrauma+'","'+obsterti+'","'+trauma+'","'+FormatDateTime('yyyy-MM-dd',dtpTGLTRAUMA.Date)+'","'+FormatDateTime('hh:mm:ss',cxtmdtJAMTRAUMA.Time)+'","'+mmoLokasiTKP.Text+'",'+
       ///triage
       '"'+crBerjalan+'","'+edtKELUHANUTAMA.Text+'","'+edtRIWAYATSINGKAT.Text+'","'+edtKEADAANUMUM.Text+'","'+kesadaran+'",'+
       ///pemeriksaan -> JalanNafas
       '"'+jNResutassiSumbatan+'","'+jNEmergencyBebas+'","'+jNUrgentBebas+'","'+jNFalseEmergencyBebas+'",'+
       ///pemeriksaan -> pernafasan
       '"'+pResutasiHentiNafas+'","'+pResutasiPR1Menit+'","'+pResutasiPR40Menit+'","'+pResutasiSiagnosiSentral+'","'+pResutasiSiagnosi+'","'+pResutasiApnea+'",'+

       '"'+pEmergencyPR+'","'+pEmergencyWheezing+'","'+pUrgentPr60+'","'+pUrgentSianosi+'",'+
       '"'+edtSaO2.Text+'","'+edtFrekNafas.Text+'",'+
       '"'+pUrgentPr24+'","'+pUrgentWheezing+'","'+pUrgentPr60+'","'+pUrgentSianosi+'",'+
       '"'+pNonUrgentNormal+'","'+pFalseEmergencyNormal+'",'+
       /// sirkulasi
       '"'+sRHenditkanJantung+'","'+sRPucatPale+'","'+sRAkralDingin+'","'+sRFrek+'","'+sRCrt+'",'+
       '"'+sENadiTerabaLemah+'","'+sEBraadikardia+'","'+sETachikardia+'","'+sEPucat+'","'+sEAkiralDingin+'",'+
       '"'+sEFrekNadi+'","'+sECrt+'",'+
       '"'+edtTekananDarah.Text+'","'+edtNadi.Text+'",'+
       '"'+sUrgentNadiTeraba+'","'+sUrgentFrekNadi+'",'+
       '"'+sUrgentTekDarahSistole+'","'+sUrgentTekDarahDiastole+'","'+sUrgentCrt+'",'+
       '"'+sNonUrgentNormal+'","'+sFalseEmergencyNormal+'",'+
       /// kesadaran
       '"'+kRGcs+'","'+kRNeonatus+'",'+
       '"'+kEcyGcs+'","'+kENeonatus+'",'+
       '"'+edtE.Text+'","'+edtV.Text+'","'+edtM.Text+'","'+edtSuhu.Text+'",'+
       '"'+kUGcs+'",'+
       '"'+kNonUrgentGcs+'","'+kNonUrgentLuka+'","'+kNonUrgentTrauma+'","'+kNonUrgent36+'",'+
       '"'+kFalseEmergencyNormal+'","'+kFalseEmergencyLuka+'","'+kFalseEmergency36+'",'+
       '"'+pSatu+'","'+pDua+'","'+ptiga+'","'+FormatDateTime('yyyy-MM-dd hh:mm:ss',Now)+'","coba")';
       ExecSQL;
       SQL.Text := 'select * from t_asesmen_awal_triage';
       Open;
     end;
    end;
  end;

end;

end.
