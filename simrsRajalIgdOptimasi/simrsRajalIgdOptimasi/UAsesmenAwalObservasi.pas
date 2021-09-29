unit UAsesmenAwalObservasi;

interface

procedure tampilAwalObervasi;
procedure baruObservasiInstruksiDokter;
procedure baruObservasi;
procedure prosesInstruksiDokter;
procedure prosesSimpanObservasi;

procedure tampilUbahInstruksiDokter;
procedure tampilUbahObservasi;


implementation

uses Messages,Dialogs,UDataSimrs1,UAsesmenAwalIgd, SysUtils, Forms,
  DB, StdCtrls, Variants, DateUtils, Math, ZDataset, ZAbstractRODataset;

  //// tampil asesmen awal observasi
procedure tampilAwalObervasi;
begin
 with DataSimrs1.qryt_asesmen_awal_observasi do
 begin
  Close;
  SQL.Clear;
  SQL.Text := 'select * from t_asesmen_awal_observasi';
  Open;
 end;
end;

//// procedure baru bpjs
procedure baruObservasiInstruksiDokter;
begin
/// panggil procedur
tampilAwalObervasi;

 with FAsesmenAwalIgd do
 begin
  cbbdokterobs.Text := '';
  cbbperawatobs.Text := '';

  cbbP.Text := '';
  edtnomorbed.Text := '';
  /// instruksi dokter
  dtptanggalobs.Date := Now;
  cxtmdttanggalobs.Time := Now;

  edtassesment.Text := '';
  edtairway.Text := '';
  edtbreathing.Text := '';
  edtcirculation.Text := '';

  edtradiologi.Text := '';
  edtlaboratorium.Text := '';

 end;
end;

procedure baruObservasi;
begin
  with FAsesmenAwalIgd do
  begin
   //// observasi pasien
    edttensi.Text := '';
    edtnadiobs.Text := '';
    edtRRobs.Text := '';
    edtsuhuobs.Text := '';
    edtgcsobs.Text := '';

    edtpupil.Text := '';
    edtSa.Text := '';
    edtoutput.Text := '';
    edtketerangan.Text := '';
    cbbpetugasobs.Text := '';

    mmoTndk.Text := '';

    dtptanggalobs1.Date := Now;
    cxtmdttangalobs1.Time := Now;
  end;
end;

/// proses simpan dan ubah instruksi dokter
procedure prosesInstruksiDokter;
begin
 with FAsesmenAwalIgd do
 begin
   if btnSIMPANOBS.Caption = 'SIMPAN' then
   begin
    with DataSimrs1.qryt_asesmen_awal_observasi DO
    begin
     Close;
     SQL.Clear;
     SQL.Text := 'insert into t_asesmen_awal_observasi (noRekamedis,noDaftar,noDaftarUnit,tglDaftarUnit,'+
     'dokter,perawat,p,nomorBed,'+
     'tanggalIntruksiDokter,jamIntruksiDokter,asesment,airway,breathing,circulation,'+
     'radiologi,lab) values '+
     '("'+edtNoRm.Text+'","'+edtNoRegistrasi.Text+'","'+edtNoRajal.Text+'","'+FormatDateTime('yyyy-MM-dd',dtpTglDaftarUnit.Date)+'",'+
     '"'+cbbdokterobs.Text+'","'+cbbperawatobs.Text+'","'+cbbP.Text+'","'+edtnomorbed.Text+'",'+
     '"'+FormatDateTime('yyyy-MM-dd',dtptanggalobs.Date)+'","'+FormatDateTime('hh:mm:ss',cxtmdttanggalobs.Time)+'","'+edtassesment.Text+'","'+edtairway.Text+'","'+edtbreathing.Text+'","'+edtcirculation.Text+'",'+
     '"'+edtradiologi.Text+'","'+edtlaboratorium.Text+'")';
     ExecSQL;
     SQL.Text := 'select * from t_asesmen_awal_observasi';
     Open;
    end;
   end
   ELSE
   begin
    with DataSimrs1.qryt_asesmen_awal_observasi DO
    begin
     Close;
     SQL.Clear;
     SQL.Text := 'update t_asesmen_awal_observasi set noRekamedis="'+edtNoRm.Text+'",noDaftar="'+edtNoRegistrasi.Text+'",noDaftarUnit="'+edtNoRajal.Text+'",tglDaftarUnit="'+FormatDateTime('yyyy-MM-dd',dtpTglDaftarUnit.Date)+'",'+
     'dokter="'+cbbdokterobs.Text+'",perawat="'+cbbperawatobs.Text+'",p="'+cbbP.Text+'",nomorBed="'+edtnomorbed.Text+'",'+
     'tanggalIntruksiDokter="'+FormatDateTime('yyyy-MM-dd',dtptanggalobs.Date)+'",jamIntruksiDokter="'+FormatDateTime('hh:mm:ss',cxtmdttanggalobs.Time)+'",asesment="'+edtassesment.Text+'",airway="'+edtairway.Text+'",breathing="'+edtbreathing.Text+'",circulation="'+edtcirculation.Text+'",'+
     'radiologi="'+edtradiologi.Text+'",lab="'+edtlaboratorium.Text+'" where idAsesmenAwalObservasi="'+lblIdInstruksiDokter.Caption+'"';
     ExecSQL;
     SQL.Text := 'select * from t_asesmen_awal_observasi';
     Open;
    end;

   end;
 end;
end;

/// proses simpan observasi dokter
procedure prosesSimpanObservasi;
begin
 with FAsesmenAwalIgd do
 begin
   if btnTAMBAHOBS.Caption = 'TAMBAH' then
   begin
     /// proses tambah
     with DataSimrs1.zqryt_asesmen_awal_observasi_pasien do
     begin
      Close;
      SQL.Clear;
      SQL.Text := 'insert into t_asesmen_awal_observasi_pasien (noRekamedis,noDaftar,noDaftarUnit,tglDaftarUnit,'+
      'tanggalObservasi,jamObservasi,'+
      'tensi,nadi,pr,suhu,gcs,'+
      'pupil,sa02,output,tindakan,keterangan,namaPetugas) values '+
      '("'+edtNoRm.Text+'","'+edtNoRegistrasi.Text+'","'+edtNoRajal.Text+'","'+FormatDateTime('yyyy-MM-dd',dtpTglDaftarUnit.Date)+'",'+
      '"'+FormatDateTime('yyyy-MM-dd',dtptanggalobs1.Date)+'","'+FormatDateTime('hh:mm:ss',cxtmdttangalobs1.Time)+'",'+
      '"'+edttensi.Text+'","'+edtNadi.Text+'","'+edtRRobs.Text+'","'+edtsuhuobs.Text+'","'+edtgcsobs.Text+'",'+
      '"'+edtpupil.Text+'","'+edtSaO2.Text+'","'+edtoutput.Text+'","'+Memotindakan.Text+'","'+edtketerangan.Text+'","'+cbbpetugasobs.Text+'")';
      ExecSQL;
      SQL.Text := 'select * from t_asesmen_awal_observasi_pasien';
      Open;
     end;
   end
   else
   begin
    /// proses ubah
    with DataSimrs1.zqryt_asesmen_awal_observasi_pasien do
     begin
      Close;
      SQL.Clear;
      SQL.Text := 'update t_asesmen_awal_observasi_pasien set noRekamedis="'+edtNoRm.Text+'",noDaftar="'+edtNoRegistrasi.Text+'",noDaftarUnit="'+edtNoRajal.Text+'",tglDaftarUnit="'+FormatDateTime('yyyy-MM-dd',dtpTglDaftarUnit.Date)+'",'+
      'tanggalObservasi="'+FormatDateTime('yyyy-MM-dd',dtptanggalobs1.Date)+'",jamObservasi="'+FormatDateTime('hh:mm:ss',cxtmdttangalobs1.Time)+'",'+
      'tensi="'+edttensi.Text+'",nadi="'+edtNadi.Text+'",pr="'+edtRRobs.Text+'",suhu="'+edtsuhuobs.Text+'",gcs="'+edtgcsobs.Text+'",'+
      'pupil="'+edtpupil.Text+'",sa02="'+edtSaO2.Text+'",output="'+edtoutput.Text+'",tindakan="'+Memotindakan.Text+'",keterangan="'+edtketerangan.Text+'",namaPetugas="'+cbbpetugasobs.Text+'" where idAsesmenAwalObservasiPasien="'+lblIdObservasiPasien.Caption+'"';
      ExecSQL;
      SQL.Text := 'select * from t_asesmen_awal_observasi_pasien';
      Open;
     end;
   end;
 end;
end;

procedure tampilUbahInstruksiDokter;
var
  id:String;
begin
if DataSimrs1.qryt_asesmen_awal_observasi.RecordCount >=1 then
   begin
    with FAsesmenAwalIgd do
    begin
      id:= DataSimrs1.qryt_asesmen_awal_observasi.FieldByname('idAsesmenAwalObservasi').AsString;

      with DataSimrs1.qryt_asesmen_awal_observasi do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'select * from t_asesmen_awal_observasi where idAsesmenAwalObservasi="'+id+'"';
        Open;
      end;

      with FAsesmenAwalIgd do
      begin
        cbbdokterobs.Text := DataSimrs1.qryt_asesmen_awal_observasi.Fieldbyname('dokter').AsString;
        cbbperawatobs.Text := DataSimrs1.qryt_asesmen_awal_observasi.Fieldbyname('perawat').AsString;

        cbbP.Text := DataSimrs1.qryt_asesmen_awal_observasi.Fieldbyname('p').AsString;
        edtnomorbed.Text := DataSimrs1.qryt_asesmen_awal_observasi.Fieldbyname('nomorBed').AsString;
        /// instruksi dokter
        dtptanggalobs.Date := DataSimrs1.qryt_asesmen_awal_observasi.Fieldbyname('tanggalIntruksiDokter').AsDateTime;
        cxtmdttanggalobs.Time := DataSimrs1.qryt_asesmen_awal_observasi.Fieldbyname('jamIntruksiDokter').AsDateTime;

        edtassesment.Text := DataSimrs1.qryt_asesmen_awal_observasi.Fieldbyname('asesment').AsString;
        edtairway.Text := DataSimrs1.qryt_asesmen_awal_observasi.Fieldbyname('airway').AsString;
        edtbreathing.Text := DataSimrs1.qryt_asesmen_awal_observasi.Fieldbyname('breathing').AsString;
        edtcirculation.Text := DataSimrs1.qryt_asesmen_awal_observasi.Fieldbyname('circulation').AsString;

        edtradiologi.Text := DataSimrs1.qryt_asesmen_awal_observasi.Fieldbyname('radiologi').AsString;
        edtlaboratorium.Text := DataSimrs1.qryt_asesmen_awal_observasi.Fieldbyname('lab').AsString;

        {dtptanggalobs1.Date := DataSimrs1.qryt_asesmen_awal_observasi.Fieldbyname('radiologi').AsString;
        cxtmdttangalobs1.Time := Now;}
        
      end;


    end;  
   end
   else
   MessageDlg('Data Tidak Di Temukan...!',mtWarning,[mbOK],0);
end;

procedure tampilUbahObservasi;
var
  id:String;
begin
if DataSimrs1.zqryt_asesmen_awal_observasi_pasien.RecordCount >= 1 then
   begin
    id := DataSimrs1.zqryt_asesmen_awal_observasi_pasien.FieldByname('idAsesmenAwalObservasiPasien').AsString;
    with DataSimrs1.zqryt_asesmen_awal_observasi_pasien do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from t_asesmen_awal_observasi_pasien where idAsesmenAwalObservasiPasien="'+id+'"';
      Open;
    end;

    with FAsesmenAwalIgd do
    begin
     //// observasi pasien
      edttensi.Text := DataSimrs1.zqryt_asesmen_awal_observasi_pasien.FieldByname('tensi').AsString;
      edtnadiobs.Text := DataSimrs1.zqryt_asesmen_awal_observasi_pasien.FieldByname('nadi').AsString;
      edtRRobs.Text := DataSimrs1.zqryt_asesmen_awal_observasi_pasien.FieldByname('pr').AsString;
      edtsuhuobs.Text := DataSimrs1.zqryt_asesmen_awal_observasi_pasien.FieldByname('suhu').AsString;
      edtgcsobs.Text := DataSimrs1.zqryt_asesmen_awal_observasi_pasien.FieldByname('gcs').AsString;

      edtpupil.Text := DataSimrs1.zqryt_asesmen_awal_observasi_pasien.FieldByname('pupil').AsString;
      edtSa.Text := DataSimrs1.zqryt_asesmen_awal_observasi_pasien.FieldByname('sa02').AsString;
      edtoutput.Text := DataSimrs1.zqryt_asesmen_awal_observasi_pasien.FieldByname('output').AsString;
      edtketerangan.Text := DataSimrs1.zqryt_asesmen_awal_observasi_pasien.FieldByname('keterangan').AsString;
      cbbpetugasobs.Text := DataSimrs1.zqryt_asesmen_awal_observasi_pasien.FieldByname('namaPetugas').AsString;

      mmoTndk.Text := DataSimrs1.zqryt_asesmen_awal_observasi_pasien.FieldByname('tindakan').AsString;

      dtptanggalobs1.Date := DataSimrs1.zqryt_asesmen_awal_observasi_pasien.FieldByname('tanggalObservasi').AsDateTime;
      cxtmdttangalobs1.Time := DataSimrs1.zqryt_asesmen_awal_observasi_pasien.FieldByname('jamObservasi').AsDateTime;
    end;
    
   end
   else
   MessageDlg('Data Tidak Di Temukan...!',mtWarning,[mbOK],0);
end;



end.
