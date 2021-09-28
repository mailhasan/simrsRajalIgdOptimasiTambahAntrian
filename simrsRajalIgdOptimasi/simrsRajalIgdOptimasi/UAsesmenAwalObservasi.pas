unit UAsesmenAwalObservasi;

interface

procedure tampilAwalObervasi;
procedure baruObservasi;
procedure prosesSimpanObservasi;


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
procedure baruObservasi;
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

  dtptanggalobs1.Date := Now;
  cxtmdttangalobs1.Time := Now;

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
 end;
end;

/// proses simpan dan ubah observasi
procedure prosesSimpanObservasi;
begin
 with FAsesmenAwalIgd do
 begin
   if btnSIMPANOBS.Caption = 'SIMPAN' then
   begin
    with DataSimrs1.qryt_asesmen_awal_observasi DO
    begin
     Close;
     SQL.Clear;
     SQL.Text := '';
     ExecSQL;
     SQL.Text := '';
     Open;
    end;
   end
   ELSE
   begin
   
   end;
 end;
end;

end.
