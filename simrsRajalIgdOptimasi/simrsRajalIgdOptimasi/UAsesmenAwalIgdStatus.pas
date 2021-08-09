unit UAsesmenAwalIgdStatus;

interface

procedure tampilStatus;
procedure baruStatus;

procedure ProsesSimpanStatus;
{procedure tampilUbahStatus;
procedure hapusStatus;}


implementation
uses Messages,Dialogs,UDataSimrs1,UAsesmenAwalIgd, SysUtils, Forms, ZDataset,
  ZAbstractRODataset, DB, StdCtrls;

  /// procedure tampil query
procedure tampilStatus;
begin
 with DataSimrs1.qryt_asesmen_awal_status do
 begin
   Close;
   SQL.Clear;
   SQL.Text := 'select * from t_asesmen_awal_status';
   Open;
 end;
end;  
  /// PROCEDURE BARU STATUS
procedure baruStatus;
begin
 with FAsesmenAwalIgd do
 begin
   /// status
   edtCaraBayar.Text:= '';
   edtPEKERJAAN.Text:= '';
   edtTINGGAL.Text:= '';
   edtSUKU.Text:= '';
   edtAGAMA.Text:= '';

   ///
   chkTIDAKADA.Checked:= False;
   chkADA.Checked:= False;
   edtAdaNilaiKepercayaan.Text:= '';

   /// membutuhkan pendampingan agama
   chkYA.Checked := False;
   chkTIDAK.Checked := False;
   edtKEGIATANSPITULA.Text := '';

    /// bahasa
   chkINDONESIA.Checked := False;
   chkDAERAH.Checked := False;
   chkLAINNYA.Checked := False;
   cbbDAERAH.Text := '';

   chkYA1.Checked := False;  chkTIDAK1.Checked := False;
   chkYA2.Checked := False;  chkTIDAK2.Checked := False;
   chkYA3.Checked := False;  chkTIDAK3.Checked := False;

   chkMENDENGAR.Checked:= false;
   chkMENULIS.Checked:= false;
   chkMEMBACA.Checked:= false;

   /// status psikologi
   chkTENANG.Checked := False;
   chkCEMAS.Checked := False;
   chkMARAH.Checked := False;
   chkTAKUT.Checked := False;
   chkSEDIH.Checked := False;
   chkLAIN.Checked := False;

   ///status mental
   chkSADAR.Checked := False;
   chkADAMASALAH.Checked := False;
   edtMASALAH.Text := '';

   /// penggunaan restarin
   chkTIDAK4.Checked := False;
   chkYAKARENA.Checked := False;
   edtPENGGUNARESTARIN.Text := '';

   ///jenis restarin
   chkOBAT.Checked := False;
   chkALAT.Checked := False;
   chkLAINNYA1.Checked :=  False;
   edtJENISRESTARIN.Text := '';

   /// penilian status
   cbbstatus1.ItemIndex := 0;
   cbbstatus2.ItemIndex := 0;
   cbbstatus3.ItemIndex := 0;
   cbbstatus4.ItemIndex := 0;
   cbbstatus5.ItemIndex := 0;
   cbbstatus6.ItemIndex := 0;
   cbbstatus7.ItemIndex := 0;
   cbbstatus8.ItemIndex := 0;
   cbbstatus9.ItemIndex := 0;
   cbbstatus10.ItemIndex := 0;

   edtNILAI1.Text := '0';
   edtNILAI2.Text := '0';
   edtNILAI3.Text := '0';
   edtNILAI4.Text := '0';
   edtNILAI5.Text := '0';
   edtNILAI6.Text := '0';
   edtNILAI7.Text := '0';
   edtNILAI8.Text := '0';
   edtNILAI9.Text := '0';
   edtNILAI10.Text := '0';
   edtTOTALSKOR.Text := '0';
 end;
end;

/// proeses simpan dan ubah
procedure ProsesSimpanStatus;
var
   /// nilai kepercaraan
   nilaiKs,pdmRohani,bahasa,
   /// BAHASA
   GgBicara,bthPenerjema,hmbtBelajar,CrbDisukai,
   /// status psikologi
   tenang,cemas,marah,takut,sedih,lain
   ,
   /// status mental
   statusMental,
   /// RESATRIN
   restarin,
   jenisRestarin
   :String;
begin
  with FAsesmenAwalIgd do
  begin
    /// NILAI KEPERCAYAAN
   if chkTIDAKADA.Checked = True then
      nilaiKs := 'Y'
   else if  chkTIDAKADA.Checked = true then
      nilaiKs := 'N'
   else
      nilaiKs := 'TIDAK DI PILIH';

   /// PENDAMPINGAN ROHANI
   if chkYA.Checked = true then
      pdmRohani := 'Y'
   else if chkTIDAK.Checked = true then
      pdmRohani := 'N'
   else
      pdmRohani := 'TIDAK DIPILIH';

      /// bahasa
   if chkINDONESIA.Checked = True then
      bahasa := 'INDONESIA'
   else if chkDAERAH.Checked = True then
      bahasa := cbbDAERAH.Text
   else if chkLAINNYA.Checked = True then
      bahasa := cbbDAERAH.Text
   else
      bahasa := '';

   if chkYA1.Checked = True then
      GgBicara := 'YA'
   else if  chkTIDAK1.Checked = True then
      GgBicara := 'TIDAK'
   else
      GgBicara := 'TIDAK';

   if chkYA2.Checked = True then
      bthPenerjema := 'YA'
   else if  chkTIDAK2.Checked = True then
      bthPenerjema := 'TIDAK'
   else
      bthPenerjema := 'TIDAK';

   if chkYA3.Checked = True then
      hmbtBelajar := 'YA'
   else if  chkTIDAK3.Checked = True then
      hmbtBelajar := 'TIDAK'
   else
      hmbtBelajar := 'TIDAK';

   IF chkMENDENGAR.Checked = True then
      CrbDisukai := 'MENDENGAR'
   ELSE IF chkMENULIS.Checked = True then
      CrbDisukai := 'MENULIS'
   ELSE
      CrbDisukai := 'MEMBACA';

   /// status psikologi
   IF chkTENANG.Checked = False then
        tenang := 'N'
   else
        tenang := 'Y';

   if chkCEMAS.Checked = False then
        cemas := 'N'
   else
        cemas := 'Y';

   if chkMARAH.Checked = False then
        marah := 'N'
   else
        marah := 'Y';

   if chkTAKUT.Checked = False then
        takut := 'N'
   else
        takut := 'Y';

   if chkSEDIH.Checked = False then
        sedih := 'N'
   else
        sedih := 'Y';

   if chkLAIN.Checked = False then
        lain := 'N'
   else
        lain := 'Y';

   /// status mental
   if chkSADAR.Checked = True then
      statusMental := 'SADAR'
   else IF  chkSADAR.Checked = FALSE then
      statusMental := ''
   ELSE IF chkADAMASALAH.Checked = True then
      statusMental := edtMASALAH.Text
   else
      statusMental := '';

   /// penggunaan restarin
   if chkTIDAK4.Checked = True then
      restarin := 'N'
   else if chkYAKARENA.Checked = True then
      restarin := 'Y'
   else
      restarin := 'N';
      
   /// jenis restarin
   if chkOBAT.Checked = True then
      jenisRestarin := 'OBAT'
   else if chkALAT.Checked = True then
      jenisRestarin := 'ALAT'
   else if chkLAINNYA1.Checked = True then
      jenisRestarin := 'LAINYA'
   else
      jenisRestarin := 'TIDAK ADA';

   if btnSIMPANSTATUS.Caption = 'SIMPAN' then
   begin
    with DataSimrs1.qryt_asesmen_awal_status do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'insert into t_asesmen_awal_status (noRekamedis,noDaftar,noDaftarUnit,tglDaftarUnit,'+
      ///status
      'caraBayar,Suku,agama,pekerjaan,tinggalBersama,nilaiKepercayaan,ketNilaiKepercayaan,'+
      /// pendampingan rohani
      'PedampinganRohani,ketPendampinganRohani,'+
      /// bahasa
      'bahasa,butuhPenerjemah,hambatanBelajar,caraBelajarYangDiSukai,'+
      ///status psikologi
      'tenang,cemas,marah,takut,sedih,lain_lain,'+
      /// status mental
      'statusMental,ketStatusMental,'+
      /// restarin
      'penggunaanRestarin,ketPenggunaanRestarin,jenisRestarin,KetJenisRestarin,'+
      ///nilai
      'penilaianStatusFungsionalSATU,penilaianStatusFungsionalDUA,penilaianStatusFungsionalTIGA,penilaianStatusFungsionalEMPAT,'+
      'penilaianStatusFungsionalLIMA,penilaianStatusFungsionalENAM,penilaianStatusFungsionalTUJUH,penilaianStatusFungsionalDELAPAN,'+
      'penilaianStatusFungsionalSEMBILAN,penilaianStatusFungsionalSEPULUH,totalPenilainStatusFungsional) values '+
      '("'+edtNoRm.Text+'","'+edtNoRegistrasi.Text+'","'+edtNoRajal.Text+'","'+FormatDateTime('yyyy-MM-dd',dtpTglDaftarUnit.Date)+'",'+
      /// status
      '"'+edtCaraBayar.Text+'","'+edtSUKU.Text+'","'+edtAGAMA.Text+'","'+edtPEKERJAAN.Text+'","'+edtTINGGAL.Text+'","'+nilaiKs+'","'+edtAdaNilaiKepercayaan.Text+'"'+
      ///pendamping rohani
      '"'+pdmRohani+'","'+edtKEGIATANSPITULA.Text+'")';
      ExecSQL;
      SQL.Text := 'select * from t_asesmen_awal_status';
      Open;
    end;
   end
   else
   begin
   
   end;
        
  end;
end;


end.
