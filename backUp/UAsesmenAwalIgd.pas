      /// STATUS PSIKOLOGI
      'tenang,cemas,marah,takut,sedih,lain_lain,statusMental,ketStatusMental,penggunaanRestarin,ketPenggunaanRestarin,jenisRestarin,KetJenisRestarin,'+
       /// PENILIAN STATUS
      'penilaianStatusFungsionalSATU,penilaianStatusFungsionalDUA,penilaianStatusFungsionalTIGA,penilaianStatusFungsionalEMPAT,penilaianStatusFungsionalLIMA,'+
      'penilaianStatusFungsionalENAM,penilaianStatusFungsionalTUJUH,penilaianStatusFungsionalDELAPAN,penilaianStatusFungsionalSEMBILAN,penilaianStatusFungsionalSEPULUH,totalPenilainStatusFungsional)'+
      /// status
      'VALUES (,,,,,'+
      ',,,,,,'+
      /// PENDAMPINGAN ROHANI
      ',,,,"'+bPenerjema+'","'+hbtBlj+'","'+crBljDisukai+'",'+
      /// STATUS PSIKOLOGI
      '"'+TENANG+'","'+CEMAS+'","'+MARAH+'","'+TAKUT+'","'+SEDIH+'","'+LAIN+'","'+STATUSMENTAL+'","'+edtMASALAH.Text+'","'+RESTARIN+'","'+edtPENGGUNARESTARIN.Text+'","'+JENISRESTARIN+'","'+edtJENISRESTARIN.Text+'",'+
      /// PENILAIN STATUS
      '"'+edtNILAI1.TEXT+'","'+IntToStr(StrToInt(edtNILAI2.TEXT))+'","'+IntToStr(StrToInt(edtNILAI3.TEXT))+'","'+IntToStr(StrToInt(edtNILAI4.TEXT))+'","'+IntToStr(StrToInt(edtNILAI5.TEXT))+'",'+
      '"'+IntToStr(StrToInt(edtNILAI6.TEXT))+'","'+IntToStr(StrToInt(edtNILAI7.TEXT))+'","'+IntToStr(StrToInt(edtNILAI8.TEXT))+'","'+IntToStr(StrToInt(edtNILAI9.TEXT))+'","'+IntToStr(StrToInt(edtNILAI10.TEXT))+'","'+IntToStr(StrToInt(edtTOTALSKOR.TEXT))+'")';
      ExecSQL;
      SQL.Text := 'SELECT * FROM t_asesmen_awal_status';
      Open;
    end;
  end;

  MessageDlg('DATA BERHASIL DI SIMPAN...!',mtInformation,[mbOK],0);
end;

procedure TFAsesmenAwalIgd.chkTIDAKADAClick(Sender: TObject);
begin
if chkTIDAKADA.Checked = True then
begin
  chkADA.Enabled := False;
  edtNilaiKepercayaanStatus.Enabled := False;
end
else
begin
  chkADA.Enabled := True;
  edtNilaiKepercayaanStatus.Enabled := True;
end
end;

procedure TFAsesmenAwalIgd.chkADAClick(Sender: TObject);
begin
if chkADA.Checked = True then
    chkTIDAKADA.Enabled := False
else
    chkTIDAKADA.Enabled := True;
end;

procedure TFAsesmenAwalIgd.chkYAClick(Sender: TObject);
begin
IF chkYA.Checked = True then
    chkTIDAK.Enabled := False
ELSE
   chkTIDAK.Enabled := True;
end;

procedure TFAsesmenAwalIgd.chkTIDAKClick(Sender: TObject);
begin
IF chkTIDAK.Checked = True then
    chkYA.Enabled := False
ELSE
   chkYA.Enabled := True;
end;

procedure TFAsesmenAwalIgd.chkINDONESIAClick(Sender: TObject);
begin
IF chkINDONESIA.Checked = True then
begin
  chkDAERAH.Enabled := False;
  chkLAINNYA.Enabled := False;
  cbbDAERAH.Text := '';
end
ELSE
begin
  chkDAERAH.Enabled := True;
  chkLAINNYA.Enabled := True;
  cbbDAERAH.ItemIndex := 0;
end;
end;

procedure TFAsesmenAwalIgd.chkDAERAHClick(Sender: TObject);
begin
IF chkDAERAH.Checked = True then
begin
  chkINDONESIA.Enabled := False;
  chkLAINNYA.Enabled := False;
  cbbDAERAH.ItemIndex := 0;
end
ELSE
begin
  chkINDONESIA.Enabled := True;
  chkLAINNYA.Enabled := True;
  cbbDAERAH.Text := '';
end;
end;

procedure TFAsesmenAwalIgd.chkYA1Click(Sender: TObject);
begin
IF chkYA1.Checked = True then
   chkTIDAK1.Enabled := False
else
   chkTIDAK1.Enabled := True;
end;

procedure TFAsesmenAwalIgd.chkTIDAK1Click(Sender: TObject);
begin
IF chkTIDAK1.Checked = True then
   chkYA1.Enabled := False
else
   chkYA1.Enabled := True;
end;

procedure TFAsesmenAwalIgd.chkYA2Click(Sender: TObject);
begin
IF chkYA2.Checked = True then
  chkTIDAK2.Enabled := False
ELSE
  chkTIDAK2.Enabled := True;
end;

procedure TFAsesmenAwalIgd.chkTIDAK2Click(Sender: TObject);
begin
IF chkTIDAK2.Checked = True then
  chkYA2.Enabled := False
ELSE
  chkYA2.Enabled := True;
end;

procedure TFAsesmenAwalIgd.chkYA3Click(Sender: TObject);
begin
IF chkYA3.Checked = True then
    chkCHKtidak3.Enabled := False
ELSE
    chkCHKtidak3.Enabled := True;
end;

procedure TFAsesmenAwalIgd.chkCHKtidak3Click(Sender: TObject);
begin
IF chkCHKtidak3.Checked = True then
    chkYA3.Enabled := False
ELSE
    chkYA3.Enabled := True;
end;

procedure TFAsesmenAwalIgd.chkMENDENGARClick(Sender: TObject);
begin
IF chkMENDENGAR.Checked = True then
begin
   chkMENULIS.Enabled := False;
   chkMEMBACA.Enabled := False; 
end
ELSE
begin
  chkMENULIS.Enabled := True;
  chkMEMBACA.Enabled := True;
end;
end;

procedure TFAsesmenAwalIgd.chkMENULISClick(Sender: TObject);
begin
IF chkMENULIS.Checked = True then
begin
   chkMENDENGAR.Enabled := False;
   chkMEMBACA.Enabled := False;
end
else
begin
  chkMENDENGAR.Enabled := True;
  chkMEMBACA.Enabled := True;
end;
end;

procedure TFAsesmenAwalIgd.chkMEMBACAClick(Sender: TObject);
begin
IF chkMEMBACA.Checked = True then
begin
  chkMENULIS.Enabled := False;
  chkMENDENGAR.Enabled := False;
end
else
begin
 chkMENULIS.Enabled := True;
 chkMENDENGAR.Enabled := True;
end;
end;

procedure TFAsesmenAwalIgd.cbbstatus1Change(Sender: TObject);
begin
IF cbbstatus1.ItemIndex = 0 then
  edtNILAI1.Text := '0'
ELSE IF cbbstatus1.ItemIndex = 1 then
  edtNILAI1.Text := '1'
ELSE
  edtNILAI1.Text := '2';
end;

procedure TFAsesmenAwalIgd.cbbstatus2Change(Sender: TObject);
begin
IF cbbstatus2.ItemIndex = 0 then
  edtNILAI2.Text := '0'
ELSE IF cbbstatus2.ItemIndex = 1 then
  edtNILAI2.Text := '1'
ELSE
  edtNILAI2.Text := '2';
end;

procedure TFAsesmenAwalIgd.cbbstatus3Change(Sender: TObject);
begin
IF cbbstatus3.ItemIndex = 0 then
  edtNILAI3.Text := '0'
else
  edtNILAI3.Text := '1';
end;

procedure TFAsesmenAwalIgd.cbbstatus4Change(Sender: TObject);
begin
IF cbbstatus4.ItemIndex = 0 then
  edtNILAI4.Text := '0'
ELSE IF cbbstatus4.ItemIndex = 1 then
  edtNILAI4.Text := '1'
ELSE
  edtNILAI4.Text := '2'
end;

procedure TFAsesmenAwalIgd.cbbstatus5Change(Sender: TObject);
begin
IF cbbstatus5.ItemIndex = 0 then
  edtNILAI5.Text := '0'
ELSE IF cbbstatus5.ItemIndex = 1 then
  edtNILAI5.Text := '1'
ELSE
  edtNILAI5.Text := '2'
end;

procedure TFAsesmenAwalIgd.cbbstatus6Change(Sender: TObject);
begin
IF cbbstatus6.ItemIndex = 0 then
  edtNILAI6.Text := '0'
ELSE IF cbbstatus6.ItemIndex = 1 then
  edtNILAI6.Text := '1'
ELSE IF cbbstatus6.ItemIndex = 2 THEN
  edtNILAI6.Text := '2'
ELSE
  edtNILAI6.Text := '3';
end;

procedure TFAsesmenAwalIgd.cbbstatus7Change(Sender: TObject);
begin
IF cbbstatus7.ItemIndex = 0 then
  edtNILAI7.Text := '0'
ELSE IF cbbstatus7.ItemIndex = 1 then
  edtNILAI7.Text := '1'
ELSE IF cbbstatus7.ItemIndex = 2 THEN
  edtNILAI7.Text := '2'
ELSE
  edtNILAI7.Text := '3';
end;


procedure TFAsesmenAwalIgd.cbbstatus8Change(Sender: TObject);
begin
IF cbbstatus8.ItemIndex = 0 then
  edtNILAI8.Text := '0'
ELSE IF  cbbstatus8.ItemIndex = 1 then
  edtNILAI8.Text := '1'
ELSE
  edtNILAI8.Text := '2';
end;

procedure TFAsesmenAwalIgd.cbbstatus9Change(Sender: TObject);
begin
IF cbbstatus9.ItemIndex = 0 then
  edtNILAI9.Text := '0'
ELSE IF  cbbstatus9.ItemIndex = 1 then
  edtNILAI9.Text := '1'
ELSE
  edtNILAI9.Text := '2';
end;

procedure TFAsesmenAwalIgd.cbbstatus10Change(Sender: TObject);
begin
IF cbbstatus10.ItemIndex = 0 then
  edtNILAI10.Text := '0'
ELSE
  edtNILAI10.Text := '1';
end;

procedure TFAsesmenAwalIgd.chkTIDAK4Click(Sender: TObject);
begin
IF chkTIDAK4.Checked = True then
    chkYAKARENA.Enabled := False
ELSE
    chkYAKARENA.Enabled := True;
end;

procedure TFAsesmenAwalIgd.chkYAKARENAClick(Sender: TObject);
begin
IF chkYAKARENA.Checked = True then
    chkTIDAK4.Enabled := False
ELSE
    chkTIDAK4.Enabled := True;
end;

procedure TFAsesmenAwalIgd.chkSADARClick(Sender: TObject);
begin
IF chkSADAR.Checked = True then
  chkADAMASALAH.Enabled := False
ELSE
  chkADAMASALAH.Enabled := True;
end;

procedure TFAsesmenAwalIgd.chkADAMASALAHClick(Sender: TObject);
begin
IF chkADAMASALAH.Checked = True then
  chkSADAR.Enabled := False
ELSE
  chkSADAR.Enabled := True;
end;

procedure TFAsesmenAwalIgd.chkOBATClick(Sender: TObject);
begin
IF chkOBAT.Checked = True then
begin
  chkALAT.Enabled := False;
  chkLAINNYA1.Enabled := False;
end
ELSE
begin
  chkALAT.Enabled := True;
  chkLAINNYA1.Enabled := True;
end;
end;

procedure TFAsesmenAwalIgd.chkALATClick(Sender: TObject);
begin
IF chkALAT.Checked = True then
begin
  chkOBAT.Enabled := False;
  chkLAINNYA1.Enabled := False;
end
ELSE
begin
  chkOBAT.Enabled := True;
  chkLAINNYA1.Enabled := True;
end;
end;

procedure TFAsesmenAwalIgd.chkLAINNYA1Click(Sender: TObject);
begin
IF chkLAINNYA1.Checked = True then
begin
  chkOBAT.Enabled := False;
  chkALAT.Enabled := False;
end
ELSE
begin
  chkOBAT.Enabled := True;
  chkALAT.Enabled := True;
end;
end;

procedure TFAsesmenAwalIgd.btnSIMPANNYERIClick(Sender: TObject);
var
  merasaNyeri,nyeriNull,nyeriSatu,nyeriDua,nyeriTiga,
  nyeriEmpat,nyeriLima,nyeriEnam,nyeriTujuh,nyeriDelapan,
  nyeriSembilan,nyeriSepuluh,tdkNyeri,nyeriRingan,nyeriSedang,
  NYERIBERAT,NYERISANGAT,terus,hilang,lainSifat,
  tumpul,tajam,tertekan,terbakar,lainyaKualitas,
  cahaya,gerakan,bebaring,lainpemberat,
  makan,sunyi,dingin,panas,lainperingan,
  mual,tidur,nafsumakan,aktifitas,lainefek:String;
begin
 if chkYaNyeri.Checked = True then
    merasaNyeri := 'Y'
 else
    merasaNyeri := 'N';
 /// gambar
 if rbNyeri0.Checked = True then
    nyeriNull  := 'Y'
 else
    nyeriNull  := 'N';
 if rbNyeri1.Checked = True then
    nyeriSatu  := 'Y'
 else
    nyeriSatu  := 'N';
 if rbNyeri2.Checked = True then
    nyeriDua  := 'Y'
 else
    nyeriDua  := 'N';
 if rbNyeri3.Checked = True then
    nyeriTiga  := 'Y'
 else
    nyeriTiga := 'N';
 if rbNyeri3.Checked = True then
    nyeriTiga  := 'Y'
 else
    nyeriTiga := 'N';
 if rbNyeri4.Checked = True then
    nyeriEmpat  := 'Y'
 else
    nyeriEmpat := 'N';
 if rbNyeri5.Checked = True then
    nyeriLima  := 'Y'
 else
    nyeriLima := 'N';
 if rbNyeri6.Checked = True then
    nyeriEnam  := 'Y'
 else
    nyeriEnam := 'N';
 if rbNyeri7.Checked = True then
    nyeriTujuh  := 'Y'
 else
    nyeriTujuh := 'N';
 if rbNyeri8.Checked = True then
    nyeriDelapan  := 'Y'
 else
    nyeriDelapan := 'N';
 if rbNyeri9.Checked = True then
    nyeriSembilan  := 'Y'
 else
    nyeriSembilan := 'N';
 if rbNyeri10.Checked = True then
    nyeriSepuluh  := 'Y'
 else
    nyeriSepuluh := 'N';

 /// identitas nyeri   
 if chktdknyeri.Checked = True then
    tdkNyeri := 'Y'
 else
    tdkNyeri := 'N';
 if chkNYERIRINGAN.Checked = True then
    nyeriRingan := 'Y'
 else
    nyeriRingan := 'N';
 if chkNYERISEDANG.Checked = True then
    nyeriSedang := 'Y'
 else
    nyeriSedang := 'N';
 if chkNYERIBERAT.Checked = True then
    NYERIBERAT := 'Y'
 else
    NYERIBERAT := 'N';
 if chkNYERISANGAT.Checked = True then
    NYERISANGAT := 'Y'
 else
    NYERISANGAT := 'N';
    
 /// sifat nyeri   
 IF chkterus.Checked = True then
    terus := 'Y'
 else
    terus := 'N';

 if chkHILANG.Checked = True then
    hilang := 'Y'
 else
    hilang := 'N';

 if chklainsifat.Checked = True then
    lainSifat := edtlainsifat.Text
 else
    lainSifat := '';
 /// KUALITAS NYERI
 IF chktumpul.Checked = True then
    tumpul := 'Y'
 else
    tumpul := 'N';
 IF chktajam.Checked = True then
    tajam := 'Y'
 else
    tajam := 'N';
 IF chktertekan.Checked = True then
    tertekan := 'Y'
 else
    tertekan := 'N';
 IF chkterbakar.Checked = True then
    terbakar := 'Y'
 else
    terbakar := 'N';
 if chklainkualitas.Checked = True then
    lainyaKualitas := edtlainkualitas.Text
 else
    lainyaKualitas := '';

 /// faktor pemberat
 if chkcahaya.Checked = True then
    cahaya := 'Y'
 else
    cahaya := 'N';
 if chkgerakan.Checked = True then
    gerakan := 'Y'
 else
    gerakan := 'N';
    
 if chkberbaring.Checked = True then
    bebaring := 'Y'
 else
    bebaring := 'N';
 if chklainpemberat.Checked = True then
    lainpemberat := edtlainpemberat.Text
 else
    lainpemberat := '';

 /// faktor peringan
 if chkmakan.Checked = True then
    makan := 'Y'
 else
    makan := 'N';
 if chksunyi.Checked = True then
    sunyi := 'Y'
 else
    sunyi := 'N';
 if chkDingin.Checked = True then
    dingin := 'Y'
 else
    dingin := 'N';
 if chkpanas.Checked = True then
    panas := 'Y'
 else
    panas := 'N';
 if chklainperingan.Checked = True then
    lainperingan := edtlainperingan.Text
 else
    lainperingan := '';

 /// efek nyeri
 if chkmual.Checked = True then
    mual := 'Y'
 else
    mual := 'N';
 if chktidur.Checked = True then
    tidur := 'Y'
 else
    tidur := 'N';
 if chknafsumakan.Checked = True then
    nafsumakan := 'Y'
 else
    nafsumakan := 'N';
 if chkaktifitas.Checked = True then
    aktifitas := 'Y'
 else
    aktifitas := 'N';
 if chklainefek.Checked = True then
    lainefek := edtlainefek.Text
 else
    lainefek := '';


 with DataSimrs1.qryt_asesmen_awal_nyeri do
 begin
   Close;
   SQL.Clear;
   SQL.Text := 'insert into t_asesmen_awal_nyeri (noRekamedis,noDaftarUnit,noDaftar,tglDaftarUnit,'+
   'merasakanNyeri,'+

   'tidakSakitNoll,nyeriRinganSATU,nyeriRinganDUA,nyeriRinganTIGA,nyeriSedangEMPAT,nyeriSedangLIMA,nyeriSedangENAM,nyeriBeratTUJUH,'+
   'nyeriBeratDELAPAN,nyeriBeratSEMBILAN,nyeriSedangSEPULUH,'+
   
   'tidakNyeri,nyeriRingan,nyeriSedang,nyeriBerat,nyeriSangatBerat,lokasiNyeri,sejakKapan,'+
   'terusMenerus,hilangTimbul,lainyaSifat,'+

   'tumpul,tajam,tertekan,lainyaKualitas,cahaya,gerakan,berbaring,lainyaPemberat,'+
   'makan,sunyi,dingin,panas,lainyaPenringan,'+
   'mualMuntah,tidur,nafsuMakan,aktifitasEfekNyeri,lainyaEfekNyeri,'+

   'wajah,kaki,aktifitasPeniliaiNyeri,menangis,bersuara,totalPenilaianAnak,'+
   
   'riwayatJatuh,diagnosa,alatbantu,tepasang,gayaBerjalan,statusMental,totalSkorPenilaiResiko,'+

   'intervensiResikoJatuhSATU,namaPetugasIntervensiResikoJatuhSATU,'+
   'intervensiResikoJatuhDUA,namaPetugasintervensiResikoJatuhDUA,'+
   'intervensiResikoJatuhTIGA,namaPetugasintervensiResikoJatuhTIGA) '+
   'values ("'+edtNoRm.Text+'","'+edtNoRegistrasi.Text+'","'+edtNoRajal.Text+'","'+FormatDateTime('yyyy-MM-dd',dtpTGLDAFTAR.Date)+'",'+
   '"'+merasaNyeri+'",'+

   '"'+nyeriNull+'","'+nyeriSatu+'","'+nyeriDua+'","'+nyeriTiga+'","'+nyeriEmpat+'","'+nyeriLima+'","'+nyeriEnam+'",'+
   '"'+nyeriTujuh+'","'+nyeriDelapan+'","'+nyeriSembilan+'","'+nyeriSepuluh+'",'+
   
   '"'+tdkNyeri+'","'+nyeriRingan+'","'+nyeriSedang+'","'+NYERIBERAT+'","'+NYERISANGAT+'","'+edtLOKASINYERI.Text+'","'+edtsejak.Text+'",'+
   '"'+terus+'","'+hilang+'","'+lainSifat+'",'+

   '"'+tumpul+'","'+tajam+'","'+tertekan+'","'+lainyaKualitas+'","'+cahaya+'","'+gerakan+'","'+bebaring+'","'+lainpemberat+'",'+
   '"'+makan+'","'+sunyi+'","'+dingin+'","'+panas+'","'+lainperingan+'",'+

   '"'+mual+'","'+tidur+'","'+nafsumakan+'","'+aktifitas+'","'+lainefek+'",'+
   '"'+cbbwajah.Text+'","'+cbbkaki.Text+'","'+cbbaktifitas.Text+'","'+cbbmenangis.Text+'","'+cbbbersuara.Text+'","'+edtTotalNyeriAnak.Text+'",'+

   '"'+edtriwayatjatuh.Text+'","'+edtdiagnosis.Text+'","'+edtalatbantu.Text+'","'+edtterpasanginfus.Text+'","'+edtgayaberjalan.Text+'","'+edtstatusmental.Text+'","'+edttotalskorrisiko.Text+'",'+
   '"'+cbbno1.Text+'","'+edtnamapetugas1.Text+'","'+cbbno2.Text+'","'+edtnamapetugas2.Text+'","'+cbbno3.Text+'","'+edtnamapetugas3.Text+'")';
   
   ExecSQL;
   SQL.Text := 'select * from t_asesmen_awal_nyeri';
   Open;
 end;
 
 MessageDlg('DATA BERHASIL DI SIMPAN...!',mtInformation,[mbOK],0);
end;

procedure TFAsesmenAwalIgd.edtTOTALSKORClick(Sender: TObject);
var
  n1,n2,n3,n4,n5,n6,n7,n8,n9,n10:Integer;
begin
  n1:= StrToInt(edtNILAI1.Text);
  n2:= StrToInt(edtNILAI2.Text);
  n3:= StrToInt(edtNILAI3.Text);
  n4:= StrToInt(edtNILAI4.Text);
  n5:= StrToInt(edtNILAI5.Text);
  n6:= StrToInt(edtNILAI6.Text);
  n7:= StrToInt(edtNILAI7.Text);
  n8:= StrToInt(edtNILAI8.Text);
  n9:= StrToInt(edtNILAI9.Text);
  n10 := StrToInt(edtNILAI10.Text);
  edtTOTALSKOR.Text := IntToStr(n1+n2+n3+n4+n5+n6+n7+n8+n9+n10);
end;

procedure TFAsesmenAwalIgd.chkYaNyeriClick(Sender: TObject);
begin
if chkYaNyeri.Checked = True then
  chkTIDAKNYERI.Enabled := False
else
  chkTIDAKNYERI.Enabled := True;
end;

procedure TFAsesmenAwalIgd.chkTIDAKNYERIClick(Sender: TObject);
begin
if chkTIDAKNYERI.Checked = True then
  chkYaNyeri.Enabled := False
else
  chkYaNyeri.Enabled := True;
end;

procedure TFAsesmenAwalIgd.edtTotalNyeriAnakClick(Sender: TObject);
begin
  edtTotalNyeriAnak.Text := IntToStr(StrToInt(cbbwajah.Text)+StrToInt(cbbkaki.Text)+StrToInt(cbbaktifitas.Text)+StrToInt(cbbmenangis.Text)+StrToInt(cbbbersuara.Text));
end;

procedure TFAsesmenAwalIgd.edttotalskorrisikoClick(Sender: TObject);
begin
  edttotalskorrisiko.Text := IntToStr((StrToInt(edtriwayatjatuh.Text)+StrToInt(edtdiagnosis.Text)+StrToInt(edtalatbantu.Text)+StrToInt(edtterpasanginfus.Text)+StrToInt(edtgayaberjalan.Text)+StrToInt(edtstatusmental.Text)));
end;

procedure TFAsesmenAwalIgd.cbbriwayatjatuhChange(Sender: TObject);
begin
if cbbriwayatjatuh.ItemIndex = 0 then
   edtriwayatjatuh.Text := '25'
else
   edtriwayatjatuh.Text := '0';
end;

procedure TFAsesmenAwalIgd.cbbdiagnosisChange(Sender: TObject);
begin
if cbbdiagnosis.ItemIndex = 0 then
    edtdiagnosis.Text := '15'
else
    edtdiagnosis.Text := '0';
end;

procedure TFAsesmenAwalIgd.cbbalatbantuChange(Sender: TObject);
begin
if cbbalatbantu.ItemIndex = 0 then
    edtalatbantu.Text := '30'
else if cbbalatbantu.ItemIndex = 1 then
    edtalatbantu.Text := '15'
else edtalatbantu.Text := '0';
end;

procedure TFAsesmenAwalIgd.cbbterpasanginfusChange(Sender: TObject);
begin
if cbbterpasanginfus.ItemIndex = 0 then
    edtterpasanginfus.Text := '20'
else
    edtterpasanginfus.Text := '0';
end;

procedure TFAsesmenAwalIgd.cbbgayaberjalanChange(Sender: TObject);
begin
if cbbgayaberjalan.ItemIndex = 0 then
    edtgayaberjalan.Text := '20'
else if cbbgayaberjalan.ItemIndex = 1 then
    edtgayaberjalan.Text := '10'
else edtgayaberjalan.Text := '0';

end;

procedure TFAsesmenAwalIgd.cbbstatusmentalChange(Sender: TObject);
begin
if cbbstatusmental.ItemIndex = 0 then
    edtstatusmental.Text := '15'
else
    edtstatusmental.Text := '0';
end;

procedure TFAsesmenAwalIgd.cbbhumpty1Change(Sender: TObject);
begin
if cbbhumpty1.ItemIndex = 0 then
    edthumptyResiko1.Text := '4'
else if cbbhumpty1.ItemIndex = 1 then
    edthumptyResiko1.Text := '3'
else  if cbbhumpty1.ItemIndex = 2 then
    edthumptyResiko1.Text := '2'
else edthumptyResiko1.Text := '2';

end;

procedure TFAsesmenAwalIgd.cbbhumpty2Change(Sender: TObject);
begin
if cbbhumpty2.ItemIndex = 0 then
  edthumptyResiko2.Text :=  '2'
else
  edthumptyResiko2.Text :=  '1';
end;

procedure TFAsesmenAwalIgd.cbbhumpty3Change(Sender: TObject);
begin
if cbbhumpty3.ItemIndex = 0 then
    edthumptyResiko3.Text := '4'
else if cbbhumpty3.ItemIndex = 1 then
    edthumptyResiko3.Text := '3'
else if cbbhumpty3.ItemIndex = 2 then
    edthumptyResiko3.Text := '2'
else
    edthumptyResiko3.Text := '1';
end;

procedure TFAsesmenAwalIgd.cbbhumpty4Change(Sender: TObject);
begin
if cbbhumpty4.ItemIndex = 0 then
   edthumptyResiko4.Text := '3'
else if cbbhumpty4.ItemIndex = 1 then
   edthumptyResiko4.Text := '2'
else
   edthumptyResiko4.Text := '1';
end;

procedure TFAsesmenAwalIgd.cbbhumpty5Change(Sender: TObject);
begin
if cbbhumpty5.ItemIndex = 0 then
  edthumptyResiko5.Text := '4'
else if cbbhumpty5.ItemIndex = 0 then
  edthumptyResiko5.Text := '3'
else if cbbhumpty5.ItemIndex = 0 then
  edthumptyResiko5.Text := '2'
else
  edthumptyResiko5.Text := '1';
end;

procedure TFAsesmenAwalIgd.cbbhumpty6Change(Sender: TObject);
begin
if cbbhumpty6.ItemIndex = 0 then
  edthumptyResiko6.Text := '3'
else if cbbhumpty6.ItemIndex = 0 then
  edthumptyResiko6.Text := '2'
else
  edthumptyResiko6.Text := '1';
end;

procedure TFAsesmenAwalIgd.cbbhumpty7Change(Sender: TObject);
begin
if cbbhumpty7.ItemIndex = 0 then
  edthumptyResiko7.Text := '3'
else if cbbhumpty7.ItemIndex = 0 then
  edthumptyResiko7.Text := '2'
else
  edthumptyResiko7.Text := '1';
end;

procedure TFAsesmenAwalIgd.edtskorhumptyClick(Sender: TObject);
begin
  edtskorhumpty.Text := IntToStr(StrToInt(edthumptyResiko1.Text)+StrToInt(edthumptyResiko2.Text)+StrToInt(edthumptyResiko3.Text)+StrToInt(edthumptyResiko4.Text)+StrToInt(edthumptyResiko5.Text)+StrToInt(edthumptyResiko6.Text)+StrToInt(edthumptyResiko7.Text))
end;

procedure TFAsesmenAwalIgd.cbbhumptyPDewasa01Change(Sender: TObject);
begin
if cbbhumptyPDewasa01.ItemIndex = 0 then
  edthumpty1.Text := '0'
else if cbbhumptyPDewasa01.ItemIndex = 1 then
  edthumpty1.Text := '1'
else
  edthumpty1.Text := '2';
end;

procedure TFAsesmenAwalIgd.cbbhumptyPDewasa02Change(Sender: TObject);
begin
if cbbhumptyPDewasa02.ItemIndex = 0 then
  edthumpty2.Text := '0'
else if cbbhumptyPDewasa02.ItemIndex = 1 then
  edthumpty2.Text := '1'
else
  edthumpty2.Text := '2';
end;

procedure TFAsesmenAwalIgd.cbbhumptyPDewasa03Change(Sender: TObject);
begin
if cbbhumptyPDewasa03.ItemIndex = 0 then
  edthumpty3.Text := '2'
else
  edthumpty3.Text := '0';
end;

procedure TFAsesmenAwalIgd.edttotalskorhumpty1Click(Sender: TObject);
begin
  edttotalskorhumpty1.Text := IntToStr(StrToInt(edthumpty1.Text)+StrToInt(edthumpty2.Text)+StrToInt(edthumpty3.Text));
end;

procedure TFAsesmenAwalIgd.edtotalskorobsClick(Sender: TObject);
var
  obs1,obs2,obs3,obs4:Integer;
begin
if cbbobs1.ItemIndex = 0 then
   obs1 := 1
else
  obs1 := 0;

if cbbobs2.ItemIndex = 0 then
   obs2 := 2
else
  obs2 := 0;

if cbbobs3.ItemIndex = 0 then
   obs3 := 1
else
  obs3 := 0;

if cbbobs4.ItemIndex = 0 then
   obs4 := 2
else
  obs4 := 0;
    
edtotalskorobs.Text := IntToStr(obs1+obs2+obs3+obs4);

end;

procedure TFAsesmenAwalIgd.edttotalskoranakClick(Sender: TObject);
var
  an1,an2,an3,an4:Integer;
begin
if cbbanak1.ItemIndex = 0 then
    an1 := 1
else
    an1 := 0;

if cbbanak2.ItemIndex = 0 then
    an2 := 2
else
    an2 := 0;

if cbbanak3.ItemIndex = 0 then
    an3 := 1
else
    an3 := 0;
if cbbanak4.ItemIndex = 0 then
    an4 := 1
else
    an4 := 0;

edttotalskoranak.Text := IntToStr(an1+an2+an3+an4);
end;

procedure TFAsesmenAwalIgd.btnSIMPANHUMPTYClick(Sender: TObject);
var
  Obs1,Obs2,Obs3,Obs4,
  an1,an2,an3,an4:Integer;
begin
  if cbbobs1.ItemIndex = 0 then
     obs1 := 1
  else
    obs1 := 0;

  if cbbobs2.ItemIndex = 0 then
     obs2 := 2
  else
    obs2 := 0;

  if cbbobs3.ItemIndex = 0 then
     obs3 := 1
  else
    obs3 := 0;

  if cbbobs4.ItemIndex = 0 then
     obs4 := 2
  else
    obs4 := 0;

    if cbbanak1.ItemIndex = 0 then
      an1 := 1
  else
      an1 := 0;

  if cbbanak2.ItemIndex = 0 then
      an2 := 2
  else
      an2 := 0;

  if cbbanak3.ItemIndex = 0 then
      an3 := 1
  else
      an3 := 0;
  if cbbanak4.ItemIndex = 0 then
      an4 := 1
  else
      an4 := 0;

  with DataSimrs1.qryt_asesmen_awal_humpty do
  begin
   Close;
   SQL.Clear;
   SQL.Text := 'insert into t_asesmen_awal_humpty (noRekamedis,noDaftar,noDaftarUnit,tglDaftarUnit,'+

   'skorUsia,skorJenisKelamin,skorDiagnosa,skorGanguanKognitif,skorGanguanLingkungan,skorResponTerhadap,'+
   'skorMedikamentos,totalSkorPenilaianResikoJatuh,'+

   'beratBadan,tinggiBadah,imt,'+

   'pasienDewasaSATU,pasienDewasaDUA,pasienDewasaTIGA,totalPasienDewasa,'+
   'pasienObstetriSATU,pasienObstetriDUA,pasienObstetriTIGA,pasienObstetriEMPAT,totalPasienObstetri,'+
   'pasienAnakSATU,pasienAnakDUA,pasienAnakTIGA,pasienAnakEMPAT,totalPasienAnak) '+
   'VALUES ("'+edtNoRm.Text+'","'+edtNoRegistrasi.Text+'","'+edtNoRajal.Text+'","'+FormatDateTime('yyyy-MM-dd',dtpTGLDAFTAR.DateTime)+'",'+

   '"'+edthumptyResiko1.Text+'","'+edthumptyResiko2.Text+'","'+edthumptyResiko3.Text+'","'+edthumptyResiko4.Text+'","'+edthumptyResiko5.Text+'",'+
   '"'+edthumptyResiko6.Text+'","'+edthumptyResiko7.Text+'","'+edtskorhumpty.Text+'",'+
   '"'+edtbb.Text+'","'+edtTb.Text+'","'+edtIMT.Text+'",'+

   '"'+edthumpty1.Text+'","'+edthumpty2.Text+'","'+edthumpty3.Text+'","'+edtskorhumpty.Text+'",'+
   
   '"'+IntToStr(Obs1)+'","'+IntToStr(Obs2)+'","'+IntToStr(Obs3)+'","'+IntToStr(Obs4)+'","'+edttotalskorhumpty1.Text+'",'+

   '"'+IntToStr(an1)+'","'+IntToStr(an2)+'","'+IntToStr(an3)+'","'+IntToStr(an4)+'","'+edttotalskoranak.Text+'")';
   ExecSQL;
   SQL.Text := 'select * from t_asesmen_awal_humpty';
   Open;
  end;
  MessageDlg('DATA BERHASIL DI SIMPAN...!',mtInformation,[mbOK],0);
end;

procedure TFAsesmenAwalIgd.btnSIMPANDISClick(Sender: TObject);
var
  dischargeSatu,dischargeDua,dischargeTiga,dischargeEmpat,
  keluhanUtama,alergi,penyakitYgLalu,MenggunakanObat,
  RiwayatKeluargaTidakAda:String;
begin
  /// discharger planing
  if chkcbya1.Checked = True then
     dischargeSatu := 'YA'
  else
     dischargeSatu := 'TIDAK';
   if chkcbya2.Checked = True then
     dischargeDua := 'YA'
  else
     dischargeDua := 'TIDAK';
  if chkcbya3.Checked = True then
     dischargeTiga := 'YA'
  else
     dischargeTiga := 'TIDAK';
  if chkcbya4.Checked = True then
     dischargeEmpat := 'YA'
  else
     dischargeEmpat := 'TIDAK';

  ///keluhan utama
  if chkcbauto.Checked = True then
     keluhanUtama := 'auto anamesis'
  else
     keluhanUtama := 'heteroanamnesis';

  /// alergi
  if chkcbtidakada.Checked = True then
     alergi := 'N'
  else
     alergi := 'Y';
  /// penyakit yang lalu
  if chkcbtidakada1.Checked = True then
     penyakitYgLalu := 'N'
  else
     penyakitYgLalu := 'Y';

  /// obat
  if chkcbtidak.Checked = True then
     MenggunakanObat := 'Y'
  else
     MenggunakanObat := 'N';

  /// penyakit keluarga
  if chkRiwayatKeluargaTidakAda.Checked = True then
     RiwayatKeluargaTidakAda := 'Y'
  else
     RiwayatKeluargaTidakAda := 'N';



  with DataSimrs1.qryt_asesmen_awal_discharge do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'insert into t_asesmen_awal_discharge (noRekamedis,noDaftar,noDaftarUnit,tglDaftarUnit,'+
    'DischargePlaningSATU,DischargePlaningDUA,DischargePlaningTIGA,DischargePlaningEMPAT,'+

    'masalahKeperawatanJamSATU,masalahKeperawatanJamDUA,masalahKeperawatanJamTIGA,masalahKeperawatanJamEMPAT,'+
    'masalahKeperawatanJamLIMA,masalahKeperawatanJamENAM,masalahKeperawatanJamTUJUH,masalahKeperawatanJamDELAPAN,'+
    'masalahKeperawatanJamSEMBILAN,masalahKeperawatanJamSEPULUH,masalahKeperawatanJamSEBELAS,masalahKeperawatanJamDUABELAS,'+

    'masalahKeperawatanLainyaTIGABELAS,masalahKeperawatanLainyaEMPATBELAS,masalahKeperawatanLainyaLIMABELAS,'+
    'masalahKeperawatanLainyaJamTIGABELAS,masalahKeperawatanLainyaJamEMPATBELAS,masalahKeperawatanLainyaJamLIMABELAS,'+

    'impelementasiSATU,impelementasiDUA,impelementasiTIGA,impelementasiEMPAT,impelementasiLIMA,impelementasiENAM,'+
    'impelementasiTUJUH,impelementasiDELAPAN,impelementasiSEMBILAN,impelementasiSEPULUH,impelementasiSEBELAS,impelementasiDUABELAS,'+

    'keluhanUtama,pilihanKeluhanUtama,riwayatPenyakit,riwayatAlergi,riwayatAlergiKet,riwayatPenyakitYangLalu,ketRiwayatPenyakitYangLalu,'+
    'menggunakanObatSaatIni,ketMenggunakanObatSaatIni,pilihPenyakitKeluarga,riwayatPenyakitKeluarga,tanggal,jam,perawat,pemeriksaanFisik,lab,rad)  '+

    'VALUES ("'+edtNoRm.Text+'","'+edtNoRegistrasi.Text+'","'+edtNoRajal.Text+'","'+FormatDateTime('yyyy-MM-dd',dtpTGLDAFTAR.DateTime)+'",'+
    
    '"'+dischargeSatu+'","'+dischargeDua+'","'+dischargeTiga+'","'+dischargeEmpat+'",'+
    
    '"'+FormatDateTime('hh:mm:ss',cxtmdt01.Time)+'","'+FormatDateTime('hh:mm:ss',cxtmdt02.Time)+'","'+FormatDateTime('hh:mm:ss',cxtmdt03.Time)+'","'+FormatDateTime('hh:mm:ss',cxtmdt04.Time)+'",'+
    '"'+FormatDateTime('hh:mm:ss',cxtmdt05.Time)+'","'+FormatDateTime('hh:mm:ss',cxtmdt06.Time)+'","'+FormatDateTime('hh:mm:ss',cxtmdt07.Time)+'","'+FormatDateTime('hh:mm:ss',cxtmdt08.Time)+'",'+
    '"'+FormatDateTime('hh:mm:ss',cxtmdt09.Time)+'","'+FormatDateTime('hh:mm:ss',cxtmdt10.Time)+'","'+FormatDateTime('hh:mm:ss',cxtmdt11.Time)+'","'+FormatDateTime('hh:mm:ss',cxtmdt12.Time)+'",'+

    '"'+edtlain1.Text+'","'+edtlain2.Text+'","'+edtlain3.Text+'","'+FormatDateTime('hh:mm:ss',cxtmdt13.Time)+'","'+FormatDateTime('hh:mm:ss',cxtmdt14.Time)+'","'+FormatDateTime('hh:mm:ss',cxtmdt15.Time)+'",'+

    '"'+edtimplementasi1.Text+'","'+edtimplementasi2.Text+'","'+edtimplementasi3.Text+'","'+edtimplementasi4.Text+'","'+edtimplementasi5.Text+'","'+edtimplementasi6.Text+'",'+
    '"'+edtimplementasi7.Text+'","'+edtimplementasi8.Text+'","'+edtimplementasi9.Text+'","'+edtimplementasi10.Text+'","'+edtimplementasi11.Text+'","'+edtimplementasi12.Text+'",'+

    '"'+edtkeluhan.Text+'","'+keluhanUtama+'","'+mmoriwayatpenyakit.Text+'","'+alergi+'","'+edtriwayatalergi.Text+'","'+penyakitYgLalu+'","'+edtriwayatpenyakit.Text+'",'+
    '"'+MenggunakanObat+'","'+edtMenggunakanObat.Text+'","'+RiwayatKeluargaTidakAda+'","'+edtriwayatpenyakitkeluarga.Text+'","'+FormatDateTime('yyyy-MM-dd',dtptanggaldis.Date)+'",'+
    '"'+FormatDateTime('hh:mm:ss',cxtmdtJAMdis.Time)+'","'+cbbperawatdis.Text+'","'+mmopemeriksaanfisik.Text+'","'+edtlab.Text+'","'+edtrad.Text+'")';
    ExecSQL;
    SQL.Text := 'select * from t_asesmen_awal_discharge';
    Open;
  end;
  MessageDlg('DATA BERHASIL DI SIMPAN...!',mtInformation,[mbOK],0);
end;

procedure TFAsesmenAwalIgd.btnSIMPANFOLLClick(Sender: TObject);
begin

with DataSimrs1.qryt_asesmen_awal_follow do
begin
 Close;
 SQL.Clear;
 SQL.Text := 'insert into t_asesmen_awal_follow (noRekamedis,noDaftar,noDaftarUnit,tglDaftarUnit,daftarMasalah,'+
 'diagnosaKerja,medis,keperawatan,tanggal,jam,rekomendasi,namaPetugas) values '+
 '("'+edtNoRm.Text+'","'+edtNoRegistrasi.Text+'","'+edtNoRajal.Text+'","'+FormatDateTime('yyyy-MM-dd',dtpTGLDAFTAR.Date)+'","'+mmodaftarmasalah.Text+'",'+
 '"'+mmomedis.Text+'","'+mmodiagnosis.Text+'","'+mmokeperawatan.Text+'","'+FormatDateTime('yyyy-MM-dd',dtpfoll.Date)+'","'+FormatDateTime('hh:mm:ss',cxtmdtfoll.Time)+'","'+edtrekomendasi.Text+'","'+cbbnamapetugas.Text+'")';
 ExecSQL;
 SQL.Text := 'select * from t_asesmen_awal_follow';
 Open;
end;
 MessageDlg('DATA BERHASIL DI SIMPAN...!',mtInformation,[mbOK],0);
end;


procedure TFAsesmenAwalIgd.btnSIMPANKRSClick(Sender: TObject);
var
  tdkSakit,sktRingan,sktSedang,sktBerat,
  cmps,apatis,somnoles,sopor,coma,
  tndkLjt,kmrOperasi,lainY,rjk,plngPaksa,
  tindakanlanjut,kamaroperasi,kamarbersalin,
  lainnyakrs,rujukke,pulangpaksa,cbmeninggal,Doa,
  kenpribadi,ambulans,kenjenazah:String;
begin
if chkcbtidaksakit.Checked = True then
    tdkSakit := 'Y'
else
    tdkSakit := 'N';

if chkcbsakitringan.Checked = True then
    sktRingan := 'Y'
else
    sktRingan := 'N';

if chkcbsakitsedang.Checked = True then
    sktSedang := 'Y'
else
    sktSedang := 'N';

if chkcbsakitberat.Checked = True then
    sktBerat := 'Y'
else
    sktBerat := 'N';

if chkcbcompos.Checked = True then
    cmps := 'Y'
else
    cmps := 'N';

if chkcbapatis.Checked = True then
    apatis := 'Y'
else
    apatis := 'N';
if chkcbsomnolens.Checked = True then
    somnoles := 'Y'
else
    somnoles := 'N';
if chkcbsopor.Checked = True then
   sopor := 'Y'
else
   sopor := 'N';
if chkcbcoma.Checked = True then
   coma := 'Y'
else
   coma := 'N';

if chkcbtindakanlanjut.Checked = True then
   tindakanlanjut := 'Y'
else
   tindakanlanjut := 'N';
if chkcbkamaroperasi.Checked = True then
   kamaroperasi  := 'Y'
else
   kamaroperasi  := 'N';
if chkcbbkamarbersalin.Checked = True then
   kamarbersalin := 'Y'
else
   kamarbersalin := 'N';
if chkcblainnyakrs.Checked = True then
   lainnyakrs := edtlainnyakrs.Text
else
   lainnyakrs := 'N';

if chkcbrujukke.Checked = True then
   rujukke := 'Y'
else
   rujukke := 'N';
if chkcbpulangpaksa.Checked = True then
   pulangpaksa := 'Y'
else
   pulangpaksa := 'N';
if chkcbmeninggal.Checked = True then
   cbmeninggal := 'Y'
else
   cbmeninggal := 'N';
if chkDOA.Checked = True then
   Doa := 'Y'
else
   Doa := 'N';
if chkcbkenpribadi.Checked = True then
   kenpribadi := 'Y'
else
   kenpribadi := 'N';
if chkcbambulans.Checked = True then
   ambulans := 'Y'
else
   ambulans := 'N';
if chkcbkenjenazah.Checked = True then
   kenjenazah := 'Y'
else
   kenjenazah := 'N';

   

  with DataSimrs1.qryt_asesmen_awal_kondisikrs do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'insert into t_asesmen_awal_kondisikrs (noRekamedis,noDaftar,noDaftarUnit,tglDaftarUnit,'+
    'tanggal,jamKeluarIgd,tidakSakit,sakitRingan,sakitSedah,sakitBerat,'+
    'composMentis,apatis,somnorles,sopor,coma,'+

    'e,v,m,tekananDarah,nadi,pr,suhu,masukRsDiRuang,pertugasYangMenerima,'+
    'tindakanLanjut,kamarOperasi,kamarBersalin,lainya,rujuk,diRujukKe,jam,'+
    'pulangPaksa,meninggalJam,doa,kendaraanPribadi,ambulans,kendaraanJenazah,perawatIGD,dokterIGD) values '+
    '("'+edtNoRm.Text+'","'+edtNoRegistrasi.Text+'","'+edtNoRajal.Text+'","'+FormatDateTime('yyyy-MM-dd',dtpTGLDAFTAR.DateTime)+'",'+
    '"'+FormatDateTime('yyyy-MM-dd',dtpKondisiKrs.Date)+'","'+FormatDateTime('hh:mm:ss',cxtmdtkrs.Time)+'","'+sktRingan+'","'+sktSedang+'","'+sktBerat+'",'+
    '"'+cmps+'","'+apatis+'","'+somnoles+'","'+sopor+'","'+coma+'",'+
    '"'+edtE.Text+'","'+edtV.Text+'","'+edtM.Text+'","'+edtTekananDarah.Text+'","'+edtNadi.Text+'","'+edtRR.Text+'","'+edtsuhukrs.Text+'","'+cbbruangan.Text+'","'+cbbpetugas.Text+'",'+
    '"'+tindakanlanjut+'","'+kamaroperasi+'","'+kamarbersalin+'","'+lainnyakrs+'","'+rujukke+'","'+edtrujukke.Text+'","'+FormatDateTime('hh:mm:ss',cxtmdtrujukke.Time)+'",'+
    '"'+pulangpaksa+'","'+cbmeninggal+'","'+FormatDateTime('hh:mm:ss',cxtmdtmeninggal.Time)+'","'+Doa+'","'+kenpribadi+'","'+ambulans+'","'+kenjenazah+'","'+cbbperawatigd.Text+'","'+cbbdokterigd.Text+'")';
    ExecSQL;
    SQL.Text := 'select * from t_asesmen_awal_kondisikrs';
    Open;
  end;
  MessageDlg('DATA BERHASIL DI SIMPAN...!',mtInformation,[mbOK],0);
end;

procedure TFAsesmenAwalIgd.btnSIMPANOBSClick(Sender: TObject);
begin
  with DataSimrs1.qryt_asesmen_awal_observasi do
  begin
   Close;
   SQL.Clear;
   SQL.Text := 'insert into t_asesmen_awal_observasi (noRekamedis,noDaftar,tglDaftarUnit,dokter,perawat,p,nomorBed,'+
   'tanggalIntruksiDokter,jamIntruksiDokter,asesment,airway,breathing,circulation,radiologi,lab,'+
   'tanggalObservasi,jamObservasi,tensi,nadi,pr,suhu,gcs,pupil,sa02,output,tindakan,keterangan,namaPetugas) values '+
   '("'+edtNoRm.Text+'","'+edtNoRegistrasi.Text+'","'+FormatDateTime('yyyy-MM-dd',dtpTGLDAFTAR.DateTime)+'","'+cbbdokterobs.Text+'","'+cbbperawatobs.Text+'","'+cbbP.Text+'","'+edtnomorbed.Text+'",'+
   '"'+FormatDateTime('yyyy-MM-dd',dtptanggalobs.Date)+'","'+FormatDateTime('hh:mm:ss',cxtmdttanggalobs.Time)+'","'+edtassesment.Text+'","'+edtairway.Text+'","'+edtbreathing.Text+'","'+edtcirculation.Text+'","'+edtradiologi.Text+'","'+edtlaboratorium.Text+'",'+
   '"'+FormatDateTime('yyyy-MM-dd',dtptanggalobs1.Date)+'","'+FormatDateTime('hh:mm:ss',cxtmdttanggalobs.Time)+'","'+edttensi.Text+'","'+edtnadiobs.Text+'","'+edtRRobs.Text+'","'+edtsuhuobs.Text+'","'+edtgcsobs.Text+'","'+edtpupil.Text+'","'+edtSa.Text+'","'+edtoutput.Text+'","'+edttindakan.Text+'","'+edtketerangan.Text+'","'+cbbpetugasobs.Text+'")';
   ExecSQL;
   SQL.Text := 'select * from t_asesmen_awal_observasi';
   Open;
  end;
  MessageDlg('DATA BERHASIL DI SIMPAN...!',mtInformation,[mbOK],0);
end;

procedure TFAsesmenAwalIgd.btnSIMPANTLClick(Sender: TObject);
var
  Rsukh,Puskesmas,lainya,cbdapat,cbpulang,cbsembuh:String;
begin
if chkRsukh.Checked = True then
    Rsukh := cbbPoli.Text
else
    Rsukh := 'tidak';

if chkPuskesmas.Checked = True then
   Puskesmas := 'Y'
else
   Puskesmas := 'N';
if chkAjuranLainya.Checked = True then
    lainya := edtlain.Text
else
    lainya := 'tidak ada';

if chkcbdapat.Checked = True then
   cbdapat := 'Y'
else
   cbdapat := 'N';

if chkcbpulang.Checked = True then
    cbpulang := 'Y'
else
    cbpulang := 'N';

if chkcbsembuh.Checked = True then
   cbsembuh := 'Y'
else
   cbsembuh := 'N';
    
  with DataSimrs1.qryt_asesmen_awal_tindaklanjut do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'insert into t_asesmen_awal_tindaklanjut (noRekamedis,noDaftar,noDaftarUnit,tglDaftarUnit,'+
    'tanggalMasuk,jamMasukIgd,tanggalKeluar,jamKeluarIgd,'+
    'anamesa,pemeriksaanFisik,pemeriksaaanPenunjang,diagnosa,tindakanYangDILakukan,obatYangDiberikan,kondisiSaatPulang,'+
    'kontrolRsuKarsaHusadaPoli,kontrolPuskesmasFaskesI,lainya,tanggalKontrol,dapatBerobatJalan,sembuh,meninggalJam,pulangAtasPermintaan,'+
    'pindahRsLain,pasien_keluargaPasien,dokterYangMerawat) values '+
    '("'+edtNoRm.Text+'","'+edtNoRegistrasi.Text+'","'+edtNoRajal.Text+'","'+FormatDateTime('yyyy-MM-dd hh:mm:ss',dtpTGLDAFTAR.DateTime)+'",'+
    '"'+FormatDateTime('yyyy-MM-dd',dtpmasuk.Date)+'","'+FormatDateTime('hh:mm:ss',cxtmdtjammasuk.Time)+'","'+FormatDateTime('yyyy-MM-dd',dtpkeluar.Date)+'","'+FormatDateTime('hh:mm:ss',cxtmdtjamkeluar.Time)+'",'+
    '"'+mmoanamnesa.Text+'","'+mmopemeriksaanfisik.Text+'","'+mmopenunjang.Text+'","'+mmodiagnosa.Text+'","'+mmotindakan.Text+'","'+mmoobat.Text+'","'+mmokondisipulang.Text+'",'+
    '"'+Rsukh+'","'+Puskesmas+'","'+lainya+'","'+FormatDateTime('yyyy-MM-dd',dtpKontrol.Date)+'","'+cbdapat+'","'+cbsembuh+'","'+FormatDateTime('yyyy-MM-dd hh:mm:ss',cxtmdtmeninggaljam.Time)+'","'+cbpulang+'",'+
    '"'+edtRSlain.Text+'","'+edtkeluargapasien.Text+'","'+cbbdokter.Text+'")';
    ExecSQL;
    SQL.Text := 'select * from t_asesmen_awal_tindaklanjut';
    Open;
  end;

  MessageDlg('DATA BERHASIL DI SIMPAN...!',mtInformation,[mbOK],0);
end;

procedure TFAsesmenAwalIgd.btnHAPUSTRIAGEClick(Sender: TObject);
var
  id,selisi:String;
begin
id := DataSimrs1.qryt_asesmen_awal_triage['idAsesmenAwalTriage'];

with DataSimrs1.qryt_asesmen_awal_triage do
begin
 Close;
 SQL.Clear;
 SQL.Text := 'select * from t_asesmen_awal_triage where idAsesmenAwalTriage="'+id+'"';
 Open;
end;

selisi := FloattoStr(StrtoDate(DateToStr(Now))-StrtoDate(DateToStr(DataSimrs1.qryt_asesmen_awal_discharge.FieldByname('tglDaftarUnit').AsDateTime)));

if (selisi > IntToStr(0)) then
begin
  MessageDlg('Data Yang Anda Mau hapus Melewati Tanggal Sekarang...!',mtWarning,[mbOK],0);
  /// panggil procedure
  tampilTriage;
end
else
begin

 with DataSimrs1.qryt_asesmen_awal_triage do
 begin
   Close;
   SQL.Clear;
   SQL.Text := 'delete from t_asesmen_awal_triage where idAsesmenAwalTriage="'+id+'"';
   ExecSQL;
   SQL.Text := 'select * from t_asesmen_awal_triage';
   Open;
 end;
 MessageDlg('Data Berhasil Di Hapus...!',mtWarning,[mbOK],0);
end;

end;

procedure TFAsesmenAwalIgd.chkNontraumaClick(Sender: TObject);
begin
if chkNontrauma.Checked = True then
  begin
   chkObstetri.Enabled := False;
   chkTrauma.Enabled := False;
   cxdtdtTglTrauma.Enabled := False;
   cxtmdtJAMTRAUMA.Enabled := False;
  end
  else
  begin
   chkObstetri.Enabled := True;
   chkTrauma.Enabled := True;
   cxdtdtTglTrauma.Enabled := True;
   cxtmdtJAMTRAUMA.Enabled := True;
  end;
end;

procedure TFAsesmenAwalIgd.chkObstetriClick(Sender: TObject);
begin
if chkObstetri.Checked = True then
  begin
   chkNontrauma.Enabled := False;
   chkTrauma.Enabled := False;
   cxdtdtTglTrauma.Enabled := False;
   cxtmdtJAMTRAUMA.Enabled := False;
  end
  else
  begin
   chkNontrauma.Enabled := True;
   chkTrauma.Enabled := True;
   cxdtdtTglTrauma.Enabled := True;
   cxtmdtJAMTRAUMA.Enabled := True;
  end;
end;

procedure TFAsesmenAwalIgd.chkTraumaClick(Sender: TObject);
begin
if chkTrauma.Checked = True then
  begin
   chkNontrauma.Enabled := False;
   chkObstetri.Enabled := False;
   cxdtdtTglTrauma.Enabled := True;
   cxtmdtJAMTRAUMA.Enabled := True;
  end
  else
  begin
   chkNontrauma.Enabled := True;
   chkObstetri.Enabled := True;
   cxdtdtTglTrauma.Enabled := True;
   cxtmdtJAMTRAUMA.Enabled := True;
  end;
end;

procedure TFAsesmenAwalIgd.btnUBAHSTATUSClick(Sender: TObject);
var
  id:String;
begin
IF DataSimrs1.qryt_asesmen_awal_status.RecordCount >= 1 then
begin
  /// kooe unik
  id := DataSimrs1.qryt_asesmen_awal_status['IdAsesmenAwalStatus'];
  /// query untuk menampilkan berdasarkan kode unik
  with DataSimrs1.qryt_asesmen_awal_status do
  begin
   Close;
   SQL.Clear;
   SQL.Text := 'select * from t_asesmen_awal_status where IdAsesmenAwalStatus="'+id+'"';
   Open;
  end;

  /// tampil di form status
   /// status
  edtCaraBayarStatus.Text := DataSimrs1.qryt_asesmen_awal_status.FieldByname('caraBayar').AsString;
  cbbSUKU.Text := DataSimrs1.qryt_asesmen_awal_status.FieldByname('Suku').AsString;
  cbbAGAMA.Text := DataSimrs1.qryt_asesmen_awal_status.FieldByname('agama').AsString;
  cbbPEKERJAAN.Text := DataSimrs1.qryt_asesmen_awal_status.FieldByname('pekerjaan').AsString;
  cbbTINGGAL.Text := DataSimrs1.qryt_asesmen_awal_status.FieldByname('tinggalBersama').AsString;

  /// nilai kepercaaan suku
  if DataSimrs1.qryt_asesmen_awal_status.FieldByname('nilaiKepercayaan').AsString = 'N' then
  chkTIDAKADA.Checked := False
  else if DataSimrs1.qryt_asesmen_awal_status.FieldByname('nilaiKepercayaan').AsString = 'Y' then
  chkADA.Checked := true
  else
  begin
  chkTIDAKADA.Checked := False;
  chkADA.Checked := False;
  end;
  edtNilaiKepercayaanStatus.Text := DataSimrs1.qryt_asesmen_awal_status.FieldByname('ketNilaiKepercayaan').AsString;

  ///membutuhkan pendampingan sosial
  if DataSimrs1.qryt_asesmen_awal_status.FieldByname('ketNilaiKepercayaan').AsString = 'N' then
  chkTIDAK.Checked := true
  else if DataSimrs1.qryt_asesmen_awal_status.FieldByname('ketNilaiKepercayaan').AsString = 'Y' then
  chkYA.Checked := true
  else
  begin
  chkTIDAK.Checked := False;
  chkYA.Checked := False;
  end;

  edtKEGIATANSPITULA.Text := DataSimrs1.qryt_asesmen_awal_status.FieldByname('ketPendampinganRohani').AsString;

  /// bahasa
  chkINDONESIA.Checked := False;
  if DataSimrs1.qryt_asesmen_awal_status.FieldByName('bahasa').AsString = 'INDONESIA' then
  chkINDONESIA.Checked := True
  else if DataSimrs1.qryt_asesmen_awal_status.FieldByName('bahasa').AsString = 'LAINYA' then
  begin
  chkLAINNYA.Checked := True;
  cbbDAERAH.Text := DataSimrs1.qryt_asesmen_awal_status.FieldByName('bahasa').AsString;
  end
  else
  begin
  chkDAERAH.Checked := True;
  cbbDAERAH.Text := DataSimrs1.qryt_asesmen_awal_status.FieldByName('bahasa').AsString;
  end;

  /// bahasa ganguan bicara
  if DataSimrs1.qryt_asesmen_awal_status.FieldByName('ganguanBicara').AsString = 'YA' then
  begin
    chkYA1.Checked := True ;
    chkTIDAK1.Checked := False ;
  end
  else if DataSimrs1.qryt_asesmen_awal_status.FieldByName('ganguanBicara').AsString = 'TIDAK' then
  begin
    chkYA1.Checked :=  False;
    chkTIDAK1.Checked := True;
  end
  else
  begin
   chkYA1.Checked := False;
   chkTIDAK1.Checked := False;
  end;
  
  //bahasa butuh penerjemah
  if DataSimrs1.qryt_asesmen_awal_status.FieldByName('butuhPenerjemah').AsBoolean = True then
  chkYA2.Checked := False
  else
  chkTIDAK2.Checked := False;

  //bahasa hambatan belajar
  if DataSimrs1.qryt_asesmen_awal_status.FieldByName('hambatanBelajar').AsBoolean = True then
  chkYA3.Checked := False
  else
  chkCHKtidak3.Checked := False;

  /// bahasa cara belajar yang disukai

  if DataSimrs1.qryt_asesmen_awal_status.FieldByName('caraBelajarYangDiSukai').AsString = 'MENDENGAR' then
  chkMENDENGAR.Checked := True
  else if DataSimrs1.qryt_asesmen_awal_status.FieldByName('caraBelajarYangDiSukai').AsString = 'MENULIS' then
  chkMENULIS.Checked := True
  else if DataSimrs1.qryt_asesmen_awal_status.FieldByName('caraBelajarYangDiSukai').AsString = 'MEMBACA' then
  chkMEMBACA.Checked := True
  else
  begin
    chkMENDENGAR.Checked := False;
    chkMENULIS.Checked := False;
    chkMEMBACA.Checked := False;
  end;

  /// status psikologi

  if DataSimrs1.qryt_asesmen_awal_status.FieldByName('tenang').AsBoolean = True then
  chkTENANG.Checked := True
  else
  chkTENANG.Checked := False;

  if DataSimrs1.qryt_asesmen_awal_status.FieldByName('marah').AsBoolean = True then
  chkMARAH.Checked := True
  else
  chkMARAH.Checked := False;
  
  if DataSimrs1.qryt_asesmen_awal_status.FieldByName('sedih').AsBoolean = True then
  chkSEDIH.Checked := True
  else
  chkSEDIH.Checked := False;

  if DataSimrs1.qryt_asesmen_awal_status.FieldByName('cemas').AsBoolean = True then
  chkCEMAS.Checked := True
  else
  chkCEMAS.Checked := False;

  if DataSimrs1.qryt_asesmen_awal_status.FieldByName('takut').AsBoolean = True then
  chkTAKUT.Checked := True
  else
  chkTAKUT.Checked := False;

  if DataSimrs1.qryt_asesmen_awal_status.FieldByName('lain_lain').AsBoolean = True then
  chkLAIN.Checked := True
  else
  chkLAIN.Checked := False;
   
  ///status mental
  if DataSimrs1.qryt_asesmen_awal_status.FieldByName('statusMental').AsString = 'SADAR' then
  begin
  chkSADAR.Checked := True;
  chkADAMASALAH.Checked := False;
  end
  else if  DataSimrs1.qryt_asesmen_awal_status.FieldByName('statusMental').AsString = 'ADA MASALAH' then
  begin
  chkSADAR.Checked := False;
  chkADAMASALAH.Checked := True;
  end
  else
  begin
  chkSADAR.Checked := False;
  chkADAMASALAH.Checked := False;
  end;
  edtMASALAH.Text := DataSimrs1.qryt_asesmen_awal_status.FieldByName('ketStatusMental').AsString;

  /// penggunaan restarin
  if DataSimrs1.qryt_asesmen_awal_status.FieldByName('penggunaanRestarin').AsBoolean =  True then
  begin
   chkTIDAK4.Checked := False;
   chkYAKARENA.Checked := True;
  end
  else
  begin
   chkTIDAK4.Checked := True;
   chkYAKARENA.Checked := False;
  end;

  edtPENGGUNARESTARIN.Text := DataSimrs1.qryt_asesmen_awal_status.FieldByName('ketPenggunaanRestarin').AsString;

  ///jenis restarin
  if DataSimrs1.qryt_asesmen_awal_status.FieldByName('jenisRestarin').AsString = 'OBAT' then
  chkOBAT.Checked := True
  else if  DataSimrs1.qryt_asesmen_awal_status.FieldByName('jenisRestarin').AsString = 'ALAT' then
  chkALAT.Checked := True
  else if  DataSimrs1.qryt_asesmen_awal_status.FieldByName('jenisRestarin').AsString = 'LAINYA' then
  chkLAINNYA1.Checked :=  True
  else
  begin
   chkOBAT.Checked := False;
   chkALAT.Checked := False;
   chkLAINNYA1.Checked :=  False;
  end;
  edtJENISRESTARIN.Text := DataSimrs1.qryt_asesmen_awal_status.FieldByName('KetJenisRestarin').AsString;

  /// penilaian stasus fungsional
  /// skor
  {cbbstatus1.Text := '';
  cbbstatus2.Text := '';
  cbbstatus3.Text := '';
  cbbstatus4.Text := '';
  cbbstatus5.Text := '';
  cbbstatus6.Text := '';
  cbbstatus7.Text := '';
  cbbstatus6.Text := '';
  cbbstatus7.Text := '';
  cbbstatus8.Text := '';
  cbbstatus9.Text := '';
  cbbstatus10.Text := '';}
  

  /// nilai
  edtNILAI1.Text:=DataSimrs1.qryt_asesmen_awal_status.FieldByName('penilaianStatusFungsionalSATU').AsString;
  edtNILAI2.Text:=dataSimrs1.qryt_asesmen_awal_status.FieldByName('penilaianStatusFungsionalDUA').AsString;
  edtNILAI3.Text:=dataSimrs1.qryt_asesmen_awal_status.FieldByName('penilaianStatusFungsionalTIGA').AsString;
  edtNILAI4.Text:=dataSimrs1.qryt_asesmen_awal_status.FieldByName('penilaianStatusFungsionalEMPAT').AsString;
  edtNILAI5.Text:=dataSimrs1.qryt_asesmen_awal_status.FieldByName('penilaianStatusFungsionalLIMA').AsString;
  edtNILAI6.Text:=dataSimrs1.qryt_asesmen_awal_status.FieldByName('penilaianStatusFungsionalENAM').AsString;
  edtNILAI7.Text:=dataSimrs1.qryt_asesmen_awal_status.FieldByName('penilaianStatusFungsionalTUJUH').AsString;
  edtNILAI8.Text:=dataSimrs1.qryt_asesmen_awal_status.FieldByName('penilaianStatusFungsionalDELAPAN').AsString;
  edtNILAI9.Text:=dataSimrs1.qryt_asesmen_awal_status.FieldByName('penilaianStatusFungsionalSEMBILAN').AsString;
  edtNILAI10.Text:=dataSimrs1.qryt_asesmen_awal_status.FieldByName('penilaianStatusFungsionalSEPULUH').AsString;
  edtTOTALSKOR.Text:=dataSimrs1.qryt_asesmen_awal_status.FieldByName('totalPenilainStatusFungsional').AsString;

  tampilStatus;
end
else
MessageDlg('Data Tidak Di Temukan...!',mtWarning,[mbOK],0);
end;

procedure TFAsesmenAwalIgd.btnHAPUSSTATUSClick(Sender: TObject);
var
  id,selisi:String;
begin
id := DataSimrs1.qryt_asesmen_awal_status['IdAsesmenAwalStatus'];

with DataSimrs1.qryt_asesmen_awal_status do
begin
 Close;
 SQL.Clear;
 SQL.Text := 'select * from t_asesmen_awal_status where IdAsesmenAwalStatus="'+id+'"';
 Open;
end;

selisi := FloattoStr(StrtoDate(DateToStr(Now))-StrtoDate(DateToStr(DataSimrs1.qryt_asesmen_awal_discharge.FieldByname('tglDaftarUnit').AsDateTime)));

if (selisi > IntToStr(0)) then
begin
  MessageDlg('Data Yang Anda Mau hapus Melewati Tanggal Sekarang...!',mtWarning,[mbOK],0);
  /// panggil procedure
  tampilStatus;
end
else
begin

 with DataSimrs1.qryt_asesmen_awal_status do
 begin
   Close;
   SQL.Clear;
   SQL.Text := 'delete from t_asesmen_awal_status where IdAsesmenAwalStatus="'+id+'"';
   ExecSQL;
   SQL.Text := 'select * from t_asesmen_awal_status';
   Open;
 end;
 MessageDlg('Data Berhasil Di Hapus...!',mtWarning,[mbOK],0);
end;
end;

procedure TFAsesmenAwalIgd.btnHAPUSNYERIClick(Sender: TObject);
var
  id1,selisi:String;
begin
  id1 := DataSimrs1.qryt_asesmen_awal_nyeri['idAsesmenAwalNyeri'];

  with DataSimrs1.qryt_asesmen_awal_nyeri do
  begin
   Close;
   SQL.Clear;
   SQL.Text := 'select * from t_asesmen_awal_nyeri where idAsesmenAwalNyeri="'+id1+'"';
   Open;
  end;

  selisi := FloattoStr(StrtoDate(DateToStr(Now))-StrtoDate(DateToStr(DataSimrs1.qryt_asesmen_awal_discharge.FieldByname('tglDaftarUnit').AsDateTime)));

  if (selisi > IntToStr(0)) then
  begin
    MessageDlg('Data Yang Anda Mau hapus Melewati Tanggal Sekarang...!',mtWarning,[mbOK],0);
    /// panggil procedure
    tampilNyeri;
  end
  else
  begin

   with DataSimrs1.qryt_asesmen_awal_nyeri do
   begin
     Close;
     SQL.Clear;
     SQL.Text := 'delete from t_asesmen_awal_nyeri where idAsesmenAwalNyeri="'+id1+'"';
     ExecSQL;
     SQL.Text := 'select * from t_asesmen_awal_nyeri';
     Open;
   end;

   MessageDlg('Data Berhasil Di Hapus...!',mtWarning,[mbOK],0);
  end;

end;

procedure TFAsesmenAwalIgd.btnHAPUSHUMPTYClick(Sender: TObject);
var
  id,selisi:String;
begin
id := DataSimrs1.qryt_asesmen_awal_humpty['idAsesmenAwalHumpty'];

with DataSimrs1.qryt_asesmen_awal_humpty do
begin
 Close;
 SQL.Clear;
 SQL.Text := 'select * from t_asesmen_awal_humpty where idAsesmenAwalHumpty="'+id+'"';
 Open;
end;

selisi := FloattoStr(StrtoDate(DateToStr(Now))-StrtoDate(DateToStr(DataSimrs1.qryt_asesmen_awal_discharge.FieldByname('tglDaftarUnit').AsDateTime)));

if (selisi > IntToStr(0)) then
begin
  MessageDlg('Data Yang Anda Mau hapus Melewati Tanggal Sekarang...!',mtWarning,[mbOK],0);
  /// panggil procedure
  tampilHumpty;
end
else
begin

 with DataSimrs1.qryt_asesmen_awal_humpty do
 begin
   Close;
   SQL.Clear;
   SQL.Text := 'delete from t_asesmen_awal_humpty where idAsesmenAwalHumpty="'+id+'"';
   ExecSQL;
   SQL.Text := 'select * from t_asesmen_awal_humpty';
   Open;
 end;
 MessageDlg('Data Berhasil Di Hapus...!',mtWarning,[mbOK],0);
end;
end;

procedure TFAsesmenAwalIgd.btnHAPUSDISClick(Sender: TObject);
var
  id,selisi:String;
begin
id := DataSimrs1.qryt_asesmen_awal_discharge['idAsesmenAwalDischarge'];

with DataSimrs1.qryt_asesmen_awal_discharge do
begin
 Close;
 SQL.Clear;
 SQL.Text := 'select * from t_asesmen_awal_discharge where idAsesmenAwalDischarge="'+id+'"';
 Open;
end;

selisi := FloattoStr(StrtoDate(DateToStr(Now))-StrtoDate(DateToStr(DataSimrs1.qryt_asesmen_awal_discharge.FieldByname('tglDaftarUnit').AsDateTime)));

if (selisi > IntToStr(0))  then
begin
  MessageDlg('Data Yang Anda Mau hapus Melewati Tanggal Sekarang...!',mtWarning,[mbOK],0);
  /// panggil procedure
  tampilDicharge;
end
else
begin

 with DataSimrs1.qryt_asesmen_awal_discharge do
 begin
   Close;
   SQL.Clear;
   SQL.Text := 'delete from t_asesmen_awal_discharge where idAsesmenAwalDischarge="'+id+'"';
   ExecSQL;
   SQL.Text := 'select * from t_asesmen_awal_discharge';
   Open;
 end;

 MessageDlg('Data Berhasil Di Hapus...!',mtWarning,[mbOK],0);
end;

end;

procedure TFAsesmenAwalIgd.btnHAPUSFOLLClick(Sender: TObject);
var
  id,selisi:String;

begin
id := DataSimrs1.qryt_asesmen_awal_follow['idAsesmenAwalFollow'];

with DataSimrs1.qryt_asesmen_awal_follow do
begin
 Close;
 SQL.Clear;
 SQL.Text := 'select * from t_asesmen_awal_follow where idAsesmenAwalFollow="'+id+'"';
 Open;
end;

selisi := FloattoStr(StrtoDate(DateToStr(Now))-StrtoDate(DateToStr(DataSimrs1.qryt_asesmen_awal_follow.FieldByname('tglDaftarUnit').AsDateTime)));

if (selisi > IntToStr(0))  then
begin
  MessageDlg('Data Yang Anda Mau hapus Melewati Tanggal Sekarang...!',mtWarning,[mbOK],0);
  /// panggil procedure
  tampilFollow;
end
else
begin

 with DataSimrs1.qryt_asesmen_awal_follow do
 begin
   Close;
   SQL.Clear;
   SQL.Text := 'delete from t_asesmen_awal_follow where idAsesmenAwalFollow="'+id+'"';
   ExecSQL;
   SQL.Text := 'select * from t_asesmen_awal_follow';
   Open;
 end;

 MessageDlg('Data Berhasil Di Hapus...!',mtWarning,[mbOK],0);
end;

end;

procedure TFAsesmenAwalIgd.btn1Click(Sender: TObject);
var
  id,selisi:String;
begin
id := DataSimrs1.qryt_asesmen_awal_kondisikrs['idAsesmenAwalKondisikrs'];

with DataSimrs1.qryt_asesmen_awal_follow do
begin
 Close;
 SQL.Clear;
 SQL.Text := 'select * from t_asesmen_awal_kondisikrs where idAsesmenAwalKondisikrs="'+id+'"';
 Open;
end;

selisi := FloattoStr(StrtoDate(DateToStr(Now))-StrtoDate(DateToStr(DataSimrs1.qryt_asesmen_awal_follow.FieldByname('tglDaftarUnit').AsDateTime)));

if (selisi > IntToStr(0))  then
begin
  MessageDlg('Data Yang Anda Mau hapus Melewati Tanggal Sekarang...!',mtWarning,[mbOK],0);
  /// panggil procedure
  tampilKondisiKrs;
end
else
begin

 with DataSimrs1.qryt_asesmen_awal_kondisikrs do
 begin
   Close;
   SQL.Clear;
   SQL.Text := 'delete from t_asesmen_awal_kondisikrs where idAsesmenAwalKondisikrs="'+id+'"';
   ExecSQL;
   SQL.Text := 'select * from t_asesmen_awal_kondisikrs';
   Open;
 end;

 MessageDlg('Data Berhasil Di Hapus...!',mtWarning,[mbOK],0);
end;

end;

procedure TFAsesmenAwalIgd.btnHAPUSOBSClick(Sender: TObject);
var
  id,selisi:String;
begin
id := DataSimrs1.qryt_asesmen_awal_observasi['idAsesmenAwalObservasi'];

with DataSimrs1.qryt_asesmen_awal_observasi do
begin
 Close;
 SQL.Clear;
 SQL.Text := 'select * from t_asesmen_awal_observasi where idAsesmenAwalObservasi="'+id+'"';
 Open;
end;

selisi := FloattoStr(StrtoDate(DateToStr(Now))-StrtoDate(DateToStr(DataSimrs1.qryt_asesmen_awal_observasi.FieldByname('tglDaftarUnit').AsDateTime)));

if (selisi > IntToStr(0))  then
begin
  MessageDlg('Data Yang Anda Mau hapus Melewati Tanggal Sekarang...!',mtWarning,[mbOK],0);
  /// panggil procedure
  tampilKondisiKrs;
end
else
begin

 with DataSimrs1.qryt_asesmen_awal_observasi do
 begin
   Close;
   SQL.Clear;
   SQL.Text := 'delete from t_asesmen_awal_observasi where idAsesmenAwalObservasi="'+id+'"';
   ExecSQL;
   SQL.Text := 'select * from t_asesmen_awal_observasi';
   Open;
 end;

 MessageDlg('Data Berhasil Di Hapus...!',mtWarning,[mbOK],0);
end;
end;

procedure TFAsesmenAwalIgd.btnHAPUSTLClick(Sender: TObject);
var
  id,selisi:String;
begin
id := DataSimrs1.qryt_asesmen_awal_tindaklanjut['idAsesmenAwalTindakLanjut'];

with DataSimrs1.qryt_asesmen_awal_tindaklanjut do
begin
 Close;
 SQL.Clear;
 SQL.Text := 'select * from t_asesmen_awal_tindaklanjut where idAsesmenAwalTindakLanjut="'+id+'"';
 Open;
end;

selisi := FloattoStr(StrtoDate(DateToStr(Now))-StrtoDate(DateToStr(DataSimrs1.qryt_asesmen_awal_tindaklanjut.FieldByname('tglDaftarUnit').AsDateTime)));

if (selisi > IntToStr(0))  then
begin
  MessageDlg('Data Yang Anda Mau hapus Melewati Tanggal Sekarang...!',mtWarning,[mbOK],0);
  /// panggil procedure
  tampilKondisiKrs;
end
else
begin

 with DataSimrs1.qryt_asesmen_awal_tindaklanjut do
 begin
   Close;
   SQL.Clear;
   SQL.Text := 'delete from t_asesmen_awal_tindaklanjut where idAsesmenAwalTindakLanjut="'+id+'"';
   ExecSQL;
   SQL.Text := 'select * from t_asesmen_awal_tindaklanjut';
   Open;
 end;

 MessageDlg('Data Berhasil Di Hapus...!',mtWarning,[mbOK],0);
end;
end;

procedure TFAsesmenAwalIgd.btnUbahTriageClick(Sender: TObject);
var
  noTrauma1,obstetri1,trauma1:Boolean;
  id:String;
begin
if DataSimrs1.qryt_asesmen_awal_triage.RecordCount >= 1 then
begin
  /// kooe unik
  id := DataSimrs1.qryt_asesmen_awal_triage['idAsesmenAwalTriage'];
  /// query untuk menampilkan berdasarkan kode unik
  with DataSimrs1.qryt_asesmen_awal_triage do
  begin
   Close;
   SQL.Clear;
   SQL.Text := 'select * from t_asesmen_awal_triage where idAsesmenAwalTriage="'+id+'"';
   Open;
  end;

  //// tampil di form

   /// non trauma
  if  DataSimrs1.qryt_asesmen_awal_triage.FieldByName('nonTrauma').AsBoolean = False then
      noTrauma1 := False
  else
      noTrauma1 := True;

  // obstetri
  if  DataSimrs1.qryt_asesmen_awal_triage.FieldByName('obsterti').AsBoolean = False then
      obstetri1 := False
  else
      obstetri1 := True;
      
  /// trauma
   if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('trauma').AsBoolean = False then
      trauma1 := False
  else
      trauma1 := True;

  lblIdTriage.Caption := DataSimrs1.qryt_asesmen_awal_triage['idAsesmenAwalTriage'];
  edtDIKRIMOLEH.Text := DataSimrs1.qryt_asesmen_awal_triage['diKrimOleh'];
  edtNAMAPENGIRIM.Text := DataSimrs1.qryt_asesmen_awal_triage['namaPengirim'];
  mmoAlamat.Text :=DataSimrs1.qryt_asesmen_awal_triage['alamatPengirim'];
  mmodiagrujukan.Text := DataSimrs1.qryt_asesmen_awal_triage['diagnosaRujukan'];
  mmoterapi.Text := DataSimrs1.qryt_asesmen_awal_triage['terapiYangDiberikan'];

  dtpTGLMASUK.Date := DataSimrs1.qryt_asesmen_awal_triage['tglMasuk'];
  cxtmdtJAM.Time := DataSimrs1.qryt_asesmen_awal_triage['jamMasuk'];
  chkNontrauma.Checked := noTrauma1;
  chkObstetri.Checked := obstetri1;
  chkTrauma.Checked := trauma1;
  cxdtdtTglTrauma.Text := DataSimrs1.qryt_asesmen_awal_triage.Fieldbyname('tglTrauma').AsString;
  cxtmdtJAMTRAUMA.Time := DataSimrs1.qryt_asesmen_awal_triage.Fieldbyname('jamTrauma').AsDateTime; 
  mmoLokasiTKP.Text := '';

   ///CARA DATANG
  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('caraDatang').AsString = 'BERJALAN'  then
  begin
    chkBERJALAN.Checked := True;
  end
  else IF DataSimrs1.qryt_asesmen_awal_triage.FieldByName('caraDatang').AsString = 'KURSI RODA'   then
  begin
    chkKURSIRODA.Checked := True;
  end
  else if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('caraDatang').AsString = 'BRANCAR' then
    chkBRANCAR.Checked := True
  ELSE
  begin
   chkBERJALAN.Checked := False;
   chkKURSIRODA.Checked := False;
   chkBRANCAR.Checked := False;
  end;

  edtKELUHANUTAMA.Text := DataSimrs1.qryt_asesmen_awal_triage.FieldByName('keluhanUtama').AsString;
  edtRIWAYATSINGKAT.Text := DataSimrs1.qryt_asesmen_awal_triage.FieldByName('riwayatSingkat').AsString;
  edtKEADAANUMUM.Text := DataSimrs1.qryt_asesmen_awal_triage.FieldByName('keadaanUmum').AsString;

  /// kesadaran
  if  DataSimrs1.qryt_asesmen_awal_triage.FieldByName('kesadaran').AsString = 'compos' then
       chkcompos.Checked := True
  else if  DataSimrs1.qryt_asesmen_awal_triage.FieldByName('kesadaran').AsString = 'apatis' then
      chkapatis.Checked := True
  else if  DataSimrs1.qryt_asesmen_awal_triage.FieldByName('kesadaran').AsString = 'somnolens' then
      chksomnolens.Checked := True
  else if  DataSimrs1.qryt_asesmen_awal_triage.FieldByName('kesadaran').AsString = 'sopor' then
      chksopor.Checked := True
  else if  DataSimrs1.qryt_asesmen_awal_triage.FieldByName('kesadaran').AsString = 'coma' then
      chkcoma.Checked := True
  else
  begin
      chkcompos.Checked := False;
      chkapatis.Checked := False;
      chksomnolens.Checked := False;
      chksopor.Checked := False;
      chkcoma.Checked := False;
  end;

  /// jalan pernafasan
  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('jalanNafasResutassiSumbatan').AsBoolean = False then
  chkSumbatan.Checked := False
  else
  chkSumbatan.Checked := True;
  
  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('jalanNafasEmergencyBebas').AsBoolean = False then
  chkBebasE.Checked := False
  else
  chkBebasE.Checked := True;

  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('jalanNafasUrgentBebas').AsBoolean = False then
  chkBebasU.Checked := False
  else
  chkBebasU.Checked := True;

  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('jalanNafasNonUrgentBebas').AsBoolean = False then
  chkNoUrgent.Checked := False
  else
  chkNoUrgent.Checked := True;

  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('jalasNafasFalseEmergencyBebas').AsBoolean = False then
  chkBebasFE.Checked := False
  else
  chkBebasFE.Checked := True;

  /// pernafasan
  /// resusitasi
  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('pernafasanResutasiHentiNafas').AsBoolean = False then
  chkHentinafas.Checked := False
  else
  chkHentinafas.Checked := True;

  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('pernafasanResutasiPR1Menit').AsBoolean = False then
  chkRR1xmnt.Checked := False
  else
  chkRR1xmnt.Checked := True;

  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('pernafasanResutasiPR40Menit').AsBoolean = False then
  chkRR40xmnt.Checked := False
  else
  chkRR40xmnt.Checked := True;

  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('pernafasanResutasiSiagnosiSentral').AsBoolean = False then
  chkSianosisSentalMenetapDenganOs2.Checked := False
  else
  chkSianosisSentalMenetapDenganOs2.Checked := True;

  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('pernafasanResutasiSiagnosi').AsBoolean = False then
  chkSianosis.Checked := False
  else
  chkSianosis.Checked := True;

  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('pernafasanResutasiApnea').AsBoolean = False then
  chkApnea.Checked := False
  else
  chkApnea.Checked := True;

  /// emergency
  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('pernafasanEmergencyPR').AsBoolean = False then
  chkRR32.Checked := False
  else
  chkRR32.Checked := True;

  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('pernafasanEmergencyWheezing').AsBoolean = False then
  chkWheezing.Checked := False
  else
  chkWheezing.Checked := True;

  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('pernafasanEmergencyPr80').AsBoolean = False then
  chkRR80.Checked := False
  else
  chkRR80.Checked := True;

  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('pernafasanEmergencySianosis').AsBoolean = False then
  chkSianosisEmergency.Checked := False
  else
  chkSianosisEmergency.Checked := True;
  
  ///tanda vital
  edtSaO2.Text := DataSimrs1.qryt_asesmen_awal_triage.FieldByName('pernafasanTandaVitalSa02').AsString;
  edtFrekNafas.Text := DataSimrs1.qryt_asesmen_awal_triage.FieldByName('pernafasanTandaVitalFrekNafas').AsString;

  /// urgent
  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('pernafasanUrgentPr24').AsBoolean = False then
  chkpr24_32Xm.Checked := False
  else
  chkpr24_32Xm.Checked := True;

  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('pernafasanUrgentWheezing').AsBoolean = False then
  chkWhezingE.Checked := False
  else
  chkWhezingE.Checked := True;

  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('pernafasanUrgentPr60').AsBoolean = False then
  chkPR60.Checked := False
  else
  chkPR60.Checked := True;

  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('pernafasanUrgentSianosi').AsBoolean = False then
  chkSianosiSentalU.Checked := False
  else
  chkSianosiSentalU.Checked := True;

  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('pernafasanNonUrgentNormal').AsBoolean = False then
  chkNormalNoU.Checked := False
  else
  chkNormalNoU.Checked := True;

  ///false emergency
  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('pernafasanFalseEmergencyNormal').AsBoolean = False then
  chkNormalFE.Checked := False
  else
  chkNormalFE.Checked := True;

  /// sirkulasi
  /// resutasi
  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('sirkulasiResutasiHenditkanJantung').AsBoolean = False then
  chkHentiJantung.Checked := False
  else
  chkHentiJantung.Checked := True;

  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('sirkulasiResutasiNadiTidakTerabahLemah').AsBoolean = False then
  chkNadiTidakTerabaLemah.Checked := False
  else
  chkNadiTidakTerabaLemah.Checked := True;

  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('sirkulasiResutasiPucatPale').AsBoolean = False then
  chkPucatpale.Checked := False
  else
  chkPucatpale.Checked := True;

  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('sirkulasiResutasiAkralDingin').AsBoolean = False then
  chkAkralDingin.Checked := False
  else
  chkAkralDingin.Checked := True;

  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('sirkulasiResutasiFrek').AsBoolean = False then
  chkFrekNadi60x.Checked := False
  else
  chkFrekNadi60x.Checked := True;

  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('sirkulasiResutasiCrt').AsBoolean = False then
  chkCrt3DetikU.Checked := False
  else
  chkCrt3DetikU.Checked := True;

  ///emergenc
  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('sirkulasiEmergencyNadiTerabaLemah').AsBoolean = False then
  chkNadiTeraba.Checked := False
  else
  chkNadiTeraba.Checked := True;

  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('sirkulasiEmergencyBraadikardia').AsBoolean = False then
  chkBraadikardia.Checked := False
  else
  chkBraadikardia.Checked := True;

  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('sirkulasiEmergencyTachikardia').AsBoolean = False then
  chkTachikardia.Checked := False
  else
  chkTachikardia.Checked := True;
  
  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('sirkulasiEmergencyPucat').AsBoolean = False then
  chkPucatPaleE.Checked := False
  else
  chkPucatPaleE.Checked := True;
  
  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('sirkulasiEmergencyAkiralDingin').AsBoolean = False then
  chkAkralDinginE.Checked := False
  else
  chkAkralDinginE.Checked := True;
  
  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('sirkulasiEmergencyFrekNadi').AsBoolean = False then
  chkFreknadiE.Checked := False
  else
  chkFreknadiE.Checked := True;

  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('sirkulasiEmergencyCrt').AsBoolean = False then
  chkCrt3DetikE.Checked := False
  else
  chkCrt3DetikE.Checked := True;

  /// tanda vital
  edtTekananDarah.Text := DataSimrs1.qryt_asesmen_awal_triage.FieldByName('sirkulasiTandaVitalTekananDarah').AsString;
  edtNadi.Text := DataSimrs1.qryt_asesmen_awal_triage.FieldByName('sirkulasiTandaVitalNadi').AsString;

  /// urgent
  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('sirkulasiUrgentNadiTeraba').AsBoolean = False then
  chkNadiTeraba120_150.Checked := False
  else
  chkNadiTeraba120_150.Checked := True;
  
  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('sirkulasiUrgentFrekNadi').AsBoolean = False then
  chkFrekNadiUrgent.Checked := False
  else
  chkFrekNadiUrgent.Checked := True;
  
  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('sirkulasiUrgentTekDarahSistole').AsBoolean = False then
  chkTekDarahSistole.Checked := False
  else
  chkTekDarahSistole.Checked := True;

  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('sirkulasiUrgentTekDarahDiastole').AsBoolean = False then
  chkTekDarahDiastole.Checked := False
  else
  chkTekDarahDiastole.Checked := True;

  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('sirkulasiUrgentCrt').AsBoolean = False then
  chkCrt3DetikU.Checked := False
  else
  chkCrt3DetikU.Checked := True;

  ///non urgent
  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('sirkulasiNonUrgentNormal').AsBoolean = False then
  chkNormalUSirkulasi.Checked := False
  else
  chkNormalUSirkulasi.Checked := True;
  
  /// false emergency
  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('sirkulasiFalseEmergencyNormal').AsBoolean = False then
  chkNormalFESirkulasi.Checked := False
  else
  chkNormalFESirkulasi.Checked := True;

  /// kesadaran
  /// resusitasi
  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('kesadaranResutasiGcs').AsBoolean = False then
  chkGCS9.Checked := False
  else
  chkGCS9.Checked := True;

  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('kesadaranResutasiNeonatus').AsBoolean = False then
  chkNeonatus36.Checked := False
  else
  chkNeonatus36.Checked := True;

  /// emergency
  chkGCS9_12.Checked := False;
  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('kesadaranEmergencyGcs').AsBoolean = False then
  chkGCS9_12.Checked := False
  else
  chkGCS9_12.Checked := True;
  
  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('kesadaranEmergencyNeonatus').AsBoolean = False then
  chkNeonatus35cE.Checked := False
  else
  chkNeonatus35cE.Checked := True;

  /// tanda vital
  edtNadiE.Text := DataSimrs1.qryt_asesmen_awal_triage.FieldByName('kesadaranTandaVitalE').AsString;
  edtNadiV.Text := DataSimrs1.qryt_asesmen_awal_triage.FieldByName('kesadaranTandaVitalV').AsString;
  edtNadiM.Text := DataSimrs1.qryt_asesmen_awal_triage.FieldByName('kesadaranTandaVitalM').AsString;
  edtSuhu.Text := DataSimrs1.qryt_asesmen_awal_triage.FieldByName('kesadaranTandaVitalSuhu').AsString;

  /// urgent
  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('kesadaranUrgentGcs').AsBoolean = False then
  chkGcs15.Checked := False
  else
  chkGcs15.Checked := True;

  /// non urgent
  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('kesadaranNonUrgentLuka').AsBoolean = False then
  chkLukaDng.Checked := False
  else
  chkLukaDng.Checked := True;

  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('kesadaranNonUrgentTrauma').AsBoolean = False then
  chkTraumaNoU.Checked := False
  else
  chkTraumaNoU.Checked := True;

  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('kesadaranNonUrgent36').AsBoolean = False then
  chk36_50CNo.Checked := False
  else
  chk36_50CNo.Checked := True;

  /// false emergency
  chknormal.Checked := False;
  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('kesadaranFalseEmergencyNormal').AsBoolean = False then
  chknormal.Checked := False
  else
  chknormal.Checked := True;

  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('kesadaranFalseEmergencyLuka').AsBoolean = False then
  chkLukaRinganFE.Checked := False
  else
  chkLukaRinganFE.Checked := True;

  if DataSimrs1.qryt_asesmen_awal_triage.FieldByName('kesadaranFalseEmergency36').AsBoolean = False then
  chk36_50cF.Checked := False
  else
  chk36_50cF.Checked := True;

  btnSIMPANTRIAGE.Caption := 'UBAH';
  /// panggil procedure
  tampilTriage;

end
else
  MessageDlg('Data Tidak Di Temukan...!',mtWarning,[mbOK],0);
end;

end.

