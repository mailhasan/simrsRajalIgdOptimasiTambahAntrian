unit UAsesmenAwalIgdStatus;

interface

//proses
procedure tampilStatus;
procedure baruStatus;

procedure ProsesSimpanStatus;
procedure tampilUbahStatus;
procedure hapusStatus;
///nilai kepercayaan
procedure Y_N_NilaiKepercaan;
/// bahasa
procedure bahasa;
procedure mendengar;
procedure menulis;
procedure membaca;

/// status psikologi
procedure tenang;
procedure cemas;
procedure marah;
procedure takut;
procedure sedih;
procedure lainlain;

/// pengunaan restarin
procedure restarin;
procedure obat;
procedure alatalat;
procedure lainnya;

/// nilai
procedure nilaiSatu;
procedure nilaiDua;
procedure nilaiTiga;
procedure nilaiEmpat;
procedure nilaiLima;
procedure nilaiEnam;
procedure nilaiTujuh;
procedure nilaiDelapan;
procedure nilaiSembilan;
procedure nilaiSepuluh;
procedure totalNilaiStatus;


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
      bahasa := 'LAIN'
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
      statusMental := 'ADA MASALAH'
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
     /// simpan
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
      '"'+edtCaraBayar.Text+'","'+edtSUKU.Text+'","'+edtAGAMA.Text+'","'+edtPEKERJAAN.Text+'","'+edtTINGGAL.Text+'","'+nilaiKs+'","'+edtAdaNilaiKepercayaan.Text+'",'+
      ///pendamping rohani
      '"'+pdmRohani+'","'+edtKEGIATANSPITULA.Text+'",'+
      ///bahasa
      '"'+bahasa+'","'+bthPenerjema+'","'+hmbtBelajar+'","'+CrbDisukai+'",'+
      ///status psikologi
      '"'+tenang+'","'+cemas+'","'+marah+'","'+takut+'","'+sedih+'","'+lain+'",'+
      ///status mental
      '"'+statusMental+'","'+edtMASALAH.Text+'",'+
      /// restarin
      '"'+restarin+'","'+edtPENGGUNARESTARIN.Text+'","'+jenisRestarin+'","'+edtJENISRESTARIN.Text+'",'+
      /// nilai
      '"'+FloatToStr(StrToFloat(edtNILAI1.Text))+'","'+FloatToStr(StrToFloat(edtNILAI2.Text))+'","'+FloatToStr(StrToFloat(edtNILAI3.Text))+'","'+FloatToStr(StrToFloat(edtNILAI4.Text))+'",'+
      '"'+FloatToStr(StrToFloat(edtNILAI5.Text))+'","'+FloatToStr(StrToFloat(edtNILAI6.Text))+'","'+FloatToStr(StrToFloat(edtNILAI7.Text))+'","'+FloatToStr(StrToFloat(edtNILAI8.Text))+'",'+
      '"'+FloatToStr(StrToFloat(edtNILAI9.Text))+'","'+FloatToStr(StrToFloat(edtNILAI10.Text))+'","'+FloatToStr(StrToFloat(edtTOTALSKOR.Text))+'")';
      ExecSQL;
      SQL.Text := 'select * from t_asesmen_awal_status';
      Open;
    end;
   end
   else
   begin
     /// ubah
    with DataSimrs1.qryt_asesmen_awal_status do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'update t_asesmen_awal_status set noRekamedis="'+edtNoRm.Text+'",noDaftar="'+edtNoRegistrasi.Text+'",noDaftarUnit="'+edtNoRajal.Text+'",tglDaftarUnit="'+FormatDateTime('yyyy-MM-dd',dtpTglDaftarUnit.Date)+'",'+
      ///status
      'caraBayar="'+edtCaraBayar.Text+'",Suku="'+edtSUKU.Text+'",agama="'+edtAGAMA.Text+'",pekerjaan="'+edtPEKERJAAN.Text+'",tinggalBersama="'+edtTINGGAL.Text+'",nilaiKepercayaan="'+nilaiKs+'",ketNilaiKepercayaan="'+edtAdaNilaiKepercayaan.Text+'",'+
      /// pendampingan rohani
      'PedampinganRohani="'+pdmRohani+'",ketPendampinganRohani="'+edtKEGIATANSPITULA.Text+'",'+
      /// bahasa
      'bahasa="'+bahasa+'",butuhPenerjemah="'+bthPenerjema+'",hambatanBelajar="'+hmbtBelajar+'",caraBelajarYangDiSukai="'+CrbDisukai+'",'+
      ///status psikologi
      'tenang="'+tenang+'",cemas="'+cemas+'",marah="'+marah+'",takut="'+takut+'",sedih="'+sedih+'",lain_lain="'+lain+'",'+
      /// status mental
      'statusMental="'+statusMental+'",ketStatusMental="'+edtMASALAH.Text+'",'+
      /// restarin
      'penggunaanRestarin="'+restarin+'",ketPenggunaanRestarin="'+edtPENGGUNARESTARIN.Text+'",jenisRestarin="'+jenisRestarin+'",KetJenisRestarin="'+edtJENISRESTARIN.Text+'",'+
      ///nilai
      'penilaianStatusFungsionalSATU="'+edtNILAI1.Text+'",penilaianStatusFungsionalDUA="'+edtNILAI2.Text+'",penilaianStatusFungsionalTIGA="'+edtNILAI3.Text+'",penilaianStatusFungsionalEMPAT="'+edtNILAI4.Text+'",'+
      'penilaianStatusFungsionalLIMA="'+edtNILAI5.Text+'",penilaianStatusFungsionalENAM="'+edtNILAI6.Text+'",penilaianStatusFungsionalTUJUH="'+edtNILAI7.Text+'",penilaianStatusFungsionalDELAPAN="'+edtNILAI8.Text+'",'+
      'penilaianStatusFungsionalSEMBILAN="'+edtNILAI9.Text+'",penilaianStatusFungsionalSEPULUH="'+edtNILAI10.Text+'",totalPenilainStatusFungsional="'+edtTOTALSKOR.Text+'" where IdAsesmenAwalStatus="'+lblIdStatus.Caption+'" ' ;
      ExecSQL;
      SQL.Text := 'select * from t_asesmen_awal_status';
      Open;
    end;
   end;
    MessageDlg('DATA BERHASIL DISIMPAN...!',mtInformation,[mbOK],0);
    /// panggil procedure
    tampilStatus; btnSIMPANSTATUS.Caption := 'SIMPAN'; baruStatus;
  end;
end;

/// tampil ubah status
procedure tampilUbahStatus;
var
  id:String;
begin
if DataSimrs1.qryt_asesmen_awal_status.RecordCount >=1 then
begin
 id := DataSimrs1.qryt_asesmen_awal_status.FieldByname('IdAsesmenAwalStatus').AsString;

 with DataSimrs1.qryt_asesmen_awal_status do
 begin
   Close;
   SQL.Clear;
   SQL.Text := 'select * from t_asesmen_awal_status where IdAsesmenAwalStatus="'+id+'"';
   Open;
 end;

 with FAsesmenAwalIgd do
 begin
   lblIdStatus.Caption := id;
   /// status
   edtCaraBayar.Text:= DataSimrs1.qryt_asesmen_awal_status.FieldByname('caraBayar').AsString;
   edtPEKERJAAN.Text:= DataSimrs1.qryt_asesmen_awal_status.FieldByname('pekerjaan').AsString;
   edtTINGGAL.Text:= DataSimrs1.qryt_asesmen_awal_status.FieldByname('tinggalBersama').AsString;
   edtSUKU.Text:= DataSimrs1.qryt_asesmen_awal_status.FieldByname('Suku').AsString;
   edtAGAMA.Text:= DataSimrs1.qryt_asesmen_awal_status.FieldByname('agama').AsString;

   /// nilai kepercayaan
   if DataSimrs1.qryt_asesmen_awal_status.FieldByname('nilaiKepercayaan').AsString = 'Y' then
   begin
      chkADA.Checked:= True;
      edtAdaNilaiKepercayaan.Text:= DataSimrs1.qryt_asesmen_awal_status.FieldByname('ketNilaiKepercayaan').AsString;
   end
   else if DataSimrs1.qryt_asesmen_awal_status.FieldByname('nilaiKepercayaan').AsString = 'N' then
      chkTIDAKADA.Checked:= True
   else
   begin
      chkADA.Checked:= False;
      chkTIDAKADA.Checked:= False;
   end;

   /// membutuhkan pendampingan agama
   if  DataSimrs1.qryt_asesmen_awal_status.FieldByname('PedampinganRohani').AsString = 'YA' then
   begin
        chkYA.Checked := True;
        edtKEGIATANSPITULA.Text := DataSimrs1.qryt_asesmen_awal_status.FieldByname('PedampinganRohani').AsString;
   end
   else if DataSimrs1.qryt_asesmen_awal_status.FieldByname('PedampinganRohani').AsString = 'TIDAK' then
        chkTIDAK.Checked := True
   else
   begin
     chkYA.Checked := True;
     chkTIDAK.Checked := True;
   end;

    /// bahasa
   if DataSimrs1.qryt_asesmen_awal_status.FieldByname('bahasa').AsString = 'INDONESIA' then
        chkINDONESIA.Checked := True
   else if DataSimrs1.qryt_asesmen_awal_status.FieldByname('bahasa').AsString = 'DAERAH' then
   begin
        chkDAERAH.Checked := True;
        cbbDAERAH.Text := DataSimrs1.qryt_asesmen_awal_status.FieldByname('bahasa').AsString;
   end
   else
   chkLAINNYA.Checked := True;

   if DataSimrs1.qryt_asesmen_awal_status.FieldByname('ganguanBicara').AsString = 'YA' then
   chkYA1.Checked := true else chkTIDAK1.Checked := True;
   if DataSimrs1.qryt_asesmen_awal_status.FieldByname('butuhPenerjemah').AsString = 'YA' then
   chkYA2.Checked := True else  chkTIDAK2.Checked := True;
   if DataSimrs1.qryt_asesmen_awal_status.FieldByname('hambatanBelajar').AsString = 'YA' then
   chkYA3.Checked := True else  chkTIDAK3.Checked := True;

   if DataSimrs1.qryt_asesmen_awal_status.FieldByname('caraBelajarYangDiSukai').AsString = 'MENDENGAR' then
   chkMENDENGAR.Checked:= True
   else IF DataSimrs1.qryt_asesmen_awal_status.FieldByname('caraBelajarYangDiSukai').AsString = 'MENULIS' then
   chkMENULIS.Checked:= True
   ELSE IF DataSimrs1.qryt_asesmen_awal_status.FieldByname('caraBelajarYangDiSukai').AsString = 'MEMBACA' then
   chkMEMBACA.Checked:= True
   else
   begin
   chkMENDENGAR.Checked:= false;
   chkMENULIS.Checked:= false;
   chkMEMBACA.Checked:= false;
   end;
   
   /// status psikologi
   if DataSimrs1.qryt_asesmen_awal_status.FieldByname('tenang').AsString = 'Y' then
      chkTENANG.Checked := True else  chkTENANG.Checked := False;
   if DataSimrs1.qryt_asesmen_awal_status.FieldByname('cemas').AsString = 'Y' then
      chkCEMAS.Checked := True else  chkCEMAS.Checked := False;
   if DataSimrs1.qryt_asesmen_awal_status.FieldByname('marah').AsString = 'Y' then
      chkMARAH.Checked := True ELSE  chkMARAH.Checked := False;
   if DataSimrs1.qryt_asesmen_awal_status.FieldByname('takut').AsString = 'Y' then
      chkTAKUT.Checked := True else  chkTAKUT.Checked := False;
   if DataSimrs1.qryt_asesmen_awal_status.FieldByname('sedih').AsString = 'Y' then
      chkSEDIH.Checked := True else  chkSEDIH.Checked := False;
   if DataSimrs1.qryt_asesmen_awal_status.FieldByname('lain_lain').AsString = 'Y' then
      chkLAIN.Checked := True else  chkLAIN.Checked := False;

   ///status mental
   if DataSimrs1.qryt_asesmen_awal_status.FieldByname('statusMental').AsString = 'SADAR' then
        chkSADAR.Checked := True
   else IF  DataSimrs1.qryt_asesmen_awal_status.FieldByname('statusMental').AsString = 'ADA MASALAH' then
        chkSADAR.Checked := False
   else IF chkADAMASALAH.Checked = True then
   begin
     chkADAMASALAH.Checked := True;
     edtMASALAH.Text := DataSimrs1.qryt_asesmen_awal_status.FieldByname('ketStatusMental').AsString;
   end
   else
   begin
     chkADAMASALAH.Checked := False;
     edtMASALAH.Text := '';
   end;

   /// penggunaan restarin

   if DataSimrs1.qryt_asesmen_awal_status.FieldByname('penggunaanRestarin').AsString = 'Y' then
   begin
        chkYAKARENA.Checked := True;
        edtPENGGUNARESTARIN.Text := DataSimrs1.qryt_asesmen_awal_status.FieldByname('ketPenggunaanRestarin').AsString;
   end
   else
   begin
        chkTIDAK4.Checked := True;
   end;
   
   ///jenis restarin
   if DataSimrs1.qryt_asesmen_awal_status.FieldByname('jenisRestarin').AsString = 'OBAT' then
        chkOBAT.Checked := True
   else if DataSimrs1.qryt_asesmen_awal_status.FieldByname('jenisRestarin').AsString = 'ALAT' then
        chkALAT.Checked := True
   else if DataSimrs1.qryt_asesmen_awal_status.FieldByname('jenisRestarin').AsString = 'LAINYA' then
        chkLAINNYA1.Checked :=  True
   else
   begin
       chkOBAT.Checked := False;
       chkALAT.Checked := False;
       chkLAINNYA1.Checked :=  False;
   end;

   edtJENISRESTARIN.Text := DataSimrs1.qryt_asesmen_awal_status.FieldByname('KetJenisRestarin').AsString;

   /// penilian status
   {cbbstatus1.ItemIndex := 0;
   cbbstatus2.ItemIndex := 0;
   cbbstatus3.ItemIndex := 0;
   cbbstatus4.ItemIndex := 0;
   cbbstatus5.ItemIndex := 0;
   cbbstatus6.ItemIndex := 0;
   cbbstatus7.ItemIndex := 0;
   cbbstatus8.ItemIndex := 0;
   cbbstatus9.ItemIndex := 0;
   cbbstatus10.ItemIndex := 0;}

   edtNILAI1.Text := DataSimrs1.qryt_asesmen_awal_status.FieldByname('penilaianStatusFungsionalSATU').AsString;
   edtNILAI2.Text := DataSimrs1.qryt_asesmen_awal_status.FieldByname('penilaianStatusFungsionalDUA').AsString;
   edtNILAI3.Text := DataSimrs1.qryt_asesmen_awal_status.FieldByname('penilaianStatusFungsionalTIGA').AsString;
   edtNILAI4.Text := DataSimrs1.qryt_asesmen_awal_status.FieldByname('penilaianStatusFungsionalEMPAT').AsString;
   edtNILAI5.Text := DataSimrs1.qryt_asesmen_awal_status.FieldByname('penilaianStatusFungsionalLIMA').AsString;
   edtNILAI6.Text := DataSimrs1.qryt_asesmen_awal_status.FieldByname('penilaianStatusFungsionalENAM').AsString;
   edtNILAI7.Text := DataSimrs1.qryt_asesmen_awal_status.FieldByname('penilaianStatusFungsionalTUJUH').AsString;
   edtNILAI8.Text := DataSimrs1.qryt_asesmen_awal_status.FieldByname('penilaianStatusFungsionalDELAPAN').AsString;
   edtNILAI9.Text := DataSimrs1.qryt_asesmen_awal_status.FieldByname('penilaianStatusFungsionalSEMBILAN').AsString;
   edtNILAI10.Text := DataSimrs1.qryt_asesmen_awal_status.FieldByname('penilaianStatusFungsionalSEPULUH').AsString;
   edtTOTALSKOR.Text := DataSimrs1.qryt_asesmen_awal_status.FieldByname('totalPenilainStatusFungsional').AsString;
   btnSIMPANSTATUS.Caption := 'UBAH';
 end;
 tampilStatus;

end
else
MessageDlg('Data Tidak Di Temukan...!',mtInformation,[mbOK],0);
end;

procedure hapusStatus;
var
  id,selisih:String;
begin
if DataSimrs1.qryt_asesmen_awal_triage.RecordCount >= 1 then
begin
   id := DataSimrs1.qryt_asesmen_awal_status.FieldByname('IdAsesmenAwalStatus').AsString;

   with DataSimrs1.qryt_asesmen_awal_status do
   begin
     Close;
     SQL.Clear;
     SQL.Text := 'select * from t_asesmen_awal_status where IdAsesmenAwalStatus="'+id+'"';
     Open;
   end;
   /// selisih
  selisih := FloattoStr(StrtoDate(DateToStr(Now))-StrtoDate(DateToStr(DataSimrs1.qryt_asesmen_awal_status['tglDaftarUnit'])));
  /// pengujian selisih
  if selisih > '1' then
  begin
   MessageDlg('Tanggal Transaksi Sudah Melebihi Satu hari',mtInformation,[mbOK],0);
   tampilStatus;
  end
  else
  begin
    /// perintah hapus
   with DataSimrs1.qryt_asesmen_awal_status do
   begin
     Close;
     SQL.Clear;
     SQL.Text := 'delete from t_asesmen_awal_status where IdAsesmenAwalStatus="'+id+'"';
     ExecSQL;
     SQL.Text := 'select * from t_asesmen_awal_status';
     Open;
   end;
   MessageDlg('Berhasil Di Hapus...!',mtInformation,[mbOK],0);
  end
end
else
MessageDlg('Data Tidak Di Temukan...!',mtInformation,[mbOK],0);
end;

/// ya tidak nilai kepercayaan
procedure Y_N_NilaiKepercaan;
begin
  with FAsesmenAwalIgd do
  begin
    if chkTIDAKADA.Checked = True then
    begin
      chkADA.Enabled := False;
      edtAdaNilaiKepercayaan.Enabled := False;
    end
    else /// chkTIDAKADA.Checked = False then
    begin
      chkADA.Enabled := True;
      edtAdaNilaiKepercayaan.Enabled := True;
    end;

    if chkADA.checked = True then
       chkTIDAKADA.Enabled := false
    else ///if chkADA.checked = False  then
       chkTIDAKADA.Enabled := True;
  end;
end;

/// bahasa
procedure bahasa;
begin
  with FAsesmenAwalIgd do
  begin
    /// ganguan bicara
    if chkYA1.Checked = True then
        chkTIDAK1.Enabled := False
    else
        chkTIDAK1.Enabled := True;

    if chkTIDAK1.Checked = True then
        chkYA1.Enabled := False
    else
        chkYA1.Enabled := True;

    /// butuh penerjemaah
    if chkYA2.Checked = True then
        chkTIDAK2.Enabled := False
    else 
        chkTIDAK2.Enabled := True;

    if chkTIDAK2.Checked = True then
        chkYA2.Enabled := False
    else 
        chkYA2.Enabled := True;

     /// hambatan
    if chkYA3.Checked = True then
        chkTIDAK3.Enabled := False
    else
        chkTIDAK3.Enabled := True;

    if chkTIDAK3.Checked = True then
        chkYA3.Enabled := False
    else
        chkYA3.Enabled := True;

  end;
end;

/// cara belajar yang disukai
procedure mendengar;
begin
  with FAsesmenAwalIgd do
  begin
    /// cara belajar yang disukai
    if chkMENDENGAR.Checked = True then
    begin
     ///chkMENDENGAR.Checked := True;
     chkMENULIS.Enabled := False;
     chkMEMBACA.Enabled := False;
    end
    else //if chkMENDENGAR.Checked = False then
    begin
     ///chkMENDENGAR.Checked := True;
     chkMENULIS.Enabled := True;
     chkMEMBACA.Enabled := True;
    end;

  end;
end;

/// cara belajar yang disukai
procedure menulis;
begin
  with FAsesmenAwalIgd do
  begin
    if chkMENULIS.Checked = True then
    begin
     chkMENDENGAR.Enabled := False;
     //chkMENULIS.Checked := True;
     chkMEMBACA.Enabled := False;
    end
    else
    begin
     chkMENDENGAR.Enabled := True;
     //chkMENULIS.Checked := True;
     chkMEMBACA.Enabled := True;
    end;
  end;
end;

/// cara belajar yang disukai
procedure membaca;
begin
  with FAsesmenAwalIgd do
  begin
    if chkMEMBACA.Checked = True then
    begin
     chkMENDENGAR.Enabled := False;
     chkMENULIS.Enabled := False;
     //chkMEMBACA.Enabled := False;
    end
    else
    begin
     chkMENDENGAR.Enabled := True;
     chkMENULIS.Enabled := True;
     //chkMEMBACA.Enabled := True;
    end;
  end;
end;

/// tenang
procedure tenang;
begin
  with FAsesmenAwalIgd do
  begin
   IF chkTENANG.Checked = True then
   begin
    chkCEMAS.Enabled := False;
    chkMARAH.Enabled := False;
    chkTAKUT.Enabled := False;
    chkSEDIH.Enabled := False;
    chkLAIN.Enabled := False;
   end
   else
   begin
    chkCEMAS.Enabled := True;
    chkMARAH.Enabled := True;
    chkTAKUT.Enabled := True;
    chkSEDIH.Enabled := True;
    chkLAIN.Enabled := True;
   end;
  end;
end;


/// cemas
procedure cemas;
begin
  with FAsesmenAwalIgd do
  begin

   IF chkCEMAS.Checked = True then
   begin
    chkTENANG.Enabled := False;
    chkMARAH.Enabled := False;
    chkTAKUT.Enabled := False;
    chkSEDIH.Enabled := False;
    chkLAIN.Enabled := False
   end
   else
   begin
    chkTENANG.Enabled := True;
    chkMARAH.Enabled := True;
    chkTAKUT.Enabled := True;
    chkSEDIH.Enabled := True;
    chkLAIN.Enabled := True;
   end;

  end;
end;

///marah
procedure marah;
begin
 with FAsesmenAwalIgd do
  begin

   IF chkMARAH.Checked = True then
   begin
    chkTENANG.Enabled := False;
    chkCEMAS.Enabled := False;
    chkTAKUT.Enabled := False;
    chkSEDIH.Enabled := False;
    chkLAIN.Enabled := False
   end
   else
   begin
    chkTENANG.Enabled := True;
    chkCEMAS.Enabled := True;
    chkTAKUT.Enabled := True;
    chkSEDIH.Enabled := True;
    chkLAIN.Enabled := True;
   end;
  end;
end;

///takut
procedure takut;
begin
  with FAsesmenAwalIgd do
  begin
   IF chkTAKUT.Checked = True then
   begin
    chkTENANG.Enabled := False;
    chkCEMAS.Enabled := False;
    chkMARAH.Enabled := False;
    //chkTAKUT.Checked := False;
    chkSEDIH.Enabled := False;
    chkLAIN.Enabled := False
   end
   else
   begin
    chkTENANG.Enabled := True;
    chkCEMAS.Enabled := True;
    chkMARAH.Enabled := True;
    //chkTAKUT.Checked := True;
    chkSEDIH.Enabled := True;
    chkLAIN.Enabled := True;
   end;
  end;
end;


/// sedih
procedure sedih;
begin
  with FAsesmenAwalIgd do
  begin
   IF chkSEDIH.Checked = True then
   begin
    chkTENANG.Enabled := False;
    chkCEMAS.Enabled := False;
    chkMARAH.Enabled := False;
    chkTAKUT.Enabled := False;
    //chkSEDIH.Checked := False;
    chkLAIN.Enabled := False
   end
   else
   begin
    chkTENANG.Enabled := True;
    chkCEMAS.Enabled := True;
    chkMARAH.Enabled := True;
    chkTAKUT.Enabled := True;
    //chkSEDIH.Checked := True;
    chkLAIN.Enabled := True;
   end;
  end;
end;

/// lain
procedure lainlain;
begin
   with FAsesmenAwalIgd do
  begin
   IF chkLAIN.Checked = True then
   begin
    chkTENANG.Enabled := False;
    chkCEMAS.Enabled := False;
    chkMARAH.Enabled := False;
    chkTAKUT.Enabled := False;
    //chkSEDIH.Checked := False;
    //chkLAIN.Checked := False
   end
   else
   begin
    chkTENANG.Enabled := True;
    chkCEMAS.Enabled := True;
    chkMARAH.Enabled := True;
    chkTAKUT.Enabled := True;
    chkSEDIH.Enabled := True;
    //chkLAIN.Checked := True;
   end;
  end;
end;

procedure restarin;
begin
  with FAsesmenAwalIgd do
  begin
    if chkTIDAK4.Checked = True then
    begin
      chkYAKARENA.Enabled := False;
      edtPENGGUNARESTARIN.Enabled := False;
    end
    else
    begin
      chkYAKARENA.Enabled := True;
      edtPENGGUNARESTARIN.Enabled := True;
    end;

    if chkYAKARENA.Checked = True then
    begin
      chkTIDAK4.Enabled := False;
    end
    else
    begin
      chkTIDAK4.Enabled := True;
    end;

  end;
end;

/// jenis obat
procedure obat;
begin
 with FAsesmenAwalIgd do
 begin

    if chkOBAT.Checked = True then
    begin
      chkALAT.Enabled := False;
      chkLAINNYA1.Enabled := False;
      edtJENISRESTARIN.Enabled := False;
    end
    else
    begin
      chkALAT.Enabled := True;
      chkLAINNYA1.Enabled := True;
      edtJENISRESTARIN.Enabled := True;
    end;
 end;
end;
procedure alatalat;
begin
  with FAsesmenAwalIgd do
  begin
    if chkALAT.Checked = True then
    begin
      chkOBAT.Enabled := False;
      chkLAINNYA1.Enabled := False;
      edtJENISRESTARIN.Enabled := False;
    end
    else
    begin
      chkOBAT.Enabled := True;
      chkLAINNYA1.Enabled := True;
      edtJENISRESTARIN.Enabled := True;
    end;

  end;
end;
procedure lainnya;
begin
  with FAsesmenAwalIgd do
  begin
    if chkLAINNYA1.Checked = True then
    begin
      chkOBAT.Enabled := False;
      chkALAT.Enabled := False;
      edtJENISRESTARIN.Enabled := True;
    end
    else
    begin
      chkOBAT.Enabled := True;
      chkALAT.Enabled := True;
      edtJENISRESTARIN.Enabled := False;
    end;

  end;
end;

/// nilai satu
procedure nilaiSatu;
begin
  with FAsesmenAwalIgd do
  begin
    if cbbstatus1.ItemIndex = 0 then
        edtNILAI1.Text := '0'
    else if cbbstatus1.ItemIndex = 1 then
        edtNILAI1.Text := '1'
    else
        edtNILAI1.Text := '2';
  end;
end;

/// nilai dua
procedure nilaiDua;
begin
  with FAsesmenAwalIgd do
  begin
    if cbbstatus2.ItemIndex = 0 then
        edtNILAI2.Text := '0'
    else if cbbstatus2.ItemIndex = 1 then
        edtNILAI2.Text := '1'
    else
        edtNILAI3.Text := '2';
  end;
end;

/// nilai 3
procedure nilaiTiga;
begin
  with FAsesmenAwalIgd do
  begin
    if cbbstatus3.ItemIndex = 0 then
        edtNILAI3.Text := '0'
    else
        edtNILAI3.Text := '1';
  end;
end;

/// nilai 4
procedure nilaiEmpat;
begin
 with FAsesmenAwalIgd do
  begin
    if cbbstatus4.ItemIndex = 0 then
        edtNILAI4.Text := '0'
    else if cbbstatus4.ItemIndex = 1 then
        edtNILAI4.Text := '1'
    else
        edtNILAI4.Text := '2'
  end;
end;

/// nilai 5
procedure nilaiLima;
begin
  with FAsesmenAwalIgd do
  begin
    if cbbstatus5.ItemIndex = 0 then
        edtNILAI5.Text := '0'
    else if cbbstatus5.ItemIndex = 1 then
        edtNILAI5.Text := '1'
    else
        edtNILAI5.Text := '2'
  end;
end;

/// nilai 6
procedure nilaiEnam;
begin
  with FAsesmenAwalIgd do
  begin
    if cbbstatus6.ItemIndex = 0 then
        edtNILAI6.Text := '0'
    else if cbbstatus6.ItemIndex = 1 then
        edtNILAI6.Text := '1'
    else if cbbstatus6.ItemIndex = 2 then
        edtNILAI6.Text := '2'
    else
        edtNILAI6.Text := '3';
  end;
end;

/// nilai 7
procedure nilaiTujuh;
begin
 with FAsesmenAwalIgd do
  begin
    if cbbstatus7.ItemIndex = 0 then
        edtNILAI7.Text := '0'
    else if cbbstatus7.ItemIndex = 1 then
        edtNILAI7.Text := '1'
    else if cbbstatus7.ItemIndex = 2 then
        edtNILAI7.Text := '2'
    else
        edtNILAI7.Text := '3';
  end;
end;

/// nilai 8
procedure nilaiDelapan;
begin
 with FAsesmenAwalIgd do
  begin
    if cbbstatus8.ItemIndex = 0 then
        edtNILAI8.Text := '0'
    else if cbbstatus8.ItemIndex = 1 then
        edtNILAI8.Text := '1'
    else
        edtNILAI8.Text := '2';
  end;
end;

/// nilai 9
procedure nilaiSembilan;
begin
 with FAsesmenAwalIgd do
  begin
    if cbbstatus9.ItemIndex = 0 then
        edtNILAI9.Text := '0'
    else if cbbstatus9.ItemIndex = 1 then
        edtNILAI9.Text := '1'
    else
        edtNILAI9.Text := '2';
  end;
end;

/// nilai sepuluh
procedure nilaiSepuluh;
begin
 with FAsesmenAwalIgd do
  begin
    if cbbstatus10.ItemIndex = 0 then
        edtNILAI10.Text := '0'
    else 
        edtNILAI10.Text := '1'
  end;
end;

/// nilai total
procedure totalNilaiStatus;
var
  nilai1,nilai2,nilai3,
  nilai4,nilai5,nilai6,
  nilai7,nilai8,nilai9,nilai10:Integer;
begin
  with FAsesmenAwalIgd do
  begin
    nilai1 := StrToInt(edtNILAI1.Text);
    nilai2 := StrToInt(edtNILAI2.Text);
    nilai3 := StrToInt(edtNILAI3.Text);
    nilai4 := StrToInt(edtNILAI4.Text);
    nilai5 := StrToInt(edtNILAI5.Text);
    nilai6 := StrToInt(edtNILAI6.Text);
    nilai7 := StrToInt(edtNILAI7.Text);
    nilai8 := StrToInt(edtNILAI8.Text);
    nilai9 := StrToInt(edtNILAI9.Text);
    nilai10 := StrToInt(edtNILAI10.Text);
    edtTOTALSKOR.Text := IntToStr(nilai1+nilai2+nilai3+nilai4+nilai5+nilai6+nilai8+nilai9+nilai10);
  end;
end;


end.
