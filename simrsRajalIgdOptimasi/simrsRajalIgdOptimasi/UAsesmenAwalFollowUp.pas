unit UAsesmenAwalFollowUp;

interface

procedure tampilFollow;
procedure tampilDetailFollow;

procedure baruFollwoUp;
procedure proesesSimpanFollow;
procedure tambahDetailSimpanFollow;
procedure prosesDetailSimpanFollow;

procedure tampilUbahFollow;
procedure tampilDetailUbahFollow;



implementation

uses Messages,Dialogs,UDataSimrs1,UAsesmenAwalIgd, SysUtils, Forms,
  DB, StdCtrls, Variants, DateUtils, Math;

/// tampil follow
procedure tampilFollow;
begin
 with DataSimrs1.qryt_asesmen_awal_follow do
 begin
  close;
  sql.clear;
  sql.text := 'select * from t_asesmen_awal_follow';
  open;
 end;
end;

/// tampil detail follow
procedure tampilDetailFollow;
begin
 with DataSimrs1.zqryt_detail_asesmen_awal_follow do
 begin
  close;
  sql.clear;
  sql.text := 'select * from t_detail_asesmen_awal_follow ';
  open;
 end;
end;

  /// procedure baru
procedure baruFollwoUp;
begin
  with FAsesmenAwalIgd do
  begin
    Memodaftarmasalah.Text := '';
    Memodiagnosa.Text := '';
    Memomedis.Text := '';
    Memokeperawatan.Text := '';

    btnSIMPANFOLL.Caption := 'SIMPAN';
    /// panggil procedure
    tambahDetailSimpanFollow;
  end;
end;

/// procedure tambah detail follow up
procedure tambahDetailSimpanFollow;
begin
 with FAsesmenAwalIgd do
 begin
  dtpfoll.Date :=  Now;
  cxtmdtfoll.Time := Now;
  edtrekomendasi.Text := '';
  cbbnamapetugas.Text := '';
  btnTAMBAHFOLL.Caption := 'TAMBAH';
 end;
end;

/// procedure proeses simpan
procedure proesesSimpanFollow;
begin
 with FAsesmenAwalIgd do
 begin
  if btnSIMPANFOLL.Caption ='SIMPAN' then
     begin
      with DataSimrs1.qryt_asesmen_awal_follow do
      begin
       Close;
       SQL.Clear;
       SQL.Text := 'insert into t_asesmen_awal_follow (noRekamedis,noDaftar,noDaftarUnit,tglDaftarUnit,'+
       'daftarMasalah,diagnosaKerja,medis,keperawatan) '+

       'values ("'+edtNoRm.Text+'","'+edtNoRegistrasi.Text+'","'+edtNoRajal.Text+'","'+FormatDateTime('yyyy-MM-dd',dtpTglDaftarUnit.Date)+'",'+
       '"'+Memodaftarmasalah.Text+'","'+Memodiagnosa.Text+'","'+Memomedis.Text+'","'+Memokeperawatan.Text+'")';
       ExecSQL;
       SQL.Text := 'select * from t_asesmen_awal_follow';
       Open;
      end;
     end
     else
     begin
      with DataSimrs1.qryt_asesmen_awal_follow do
      begin
       Close;
       SQL.Clear;

       SQL.Text := 'update t_asesmen_awal_follow set  noRekamedis="'+edtNoRm.Text+'",noDaftar="'+edtNoRegistrasi.Text+'",noDaftarUnit="'+edtNoRajal.Text+'",tglDaftarUnit="'+FormatDateTime('yyyy-MM-dd',dtpTglDaftarUnit.Date)+'",'+
       'daftarMasalah="'+Memodaftarmasalah.Text+'",diagnosaKerja="'+Memodiagnosa.Text+'",medis="'+Memomedis.Text+'",keperawatan="'+Memokeperawatan.Text+'" where idAsesmenAwalFollow="'+lblIdFollowUp.Caption+'"';
       ExecSQL;
       SQL.Text := 'select * from t_asesmen_awal_follow';
       Open;
      end;
     end;
 end
end;

/// simpan detail
procedure prosesDetailSimpanFollow;
begin
 with FAsesmenAwalIgd do
 begin
   IF btnTAMBAHFOLL.Caption = 'TAMBAH' then
   BEGIN
   /// PROSES SIMPAN
   with DataSimrs1.zqryt_detail_asesmen_awal_follow do
   begin
    Close;
    SQL.Clear;
    SQL.Text := 'insert into t_detail_asesmen_awal_follow (noRekamedis,noDaftar,noDaftarUnit,'+
    'tanggal,jam,rekomendasi,namaPetugas) values ("'+edtNoRm.Text+'","'+edtNoRegistrasi.Text+'","'+edtNoRegistrasi.Text+'",'+
    '"'+FormatDateTime('yyyy-MM-dd',dtpfoll.Date)+'","'+FormatDateTime('hh:mm:ss',cxtmdtfoll.Time)+'","'+edtrekomendasi.Text+'","'+cbbnamapetugas.Text+'")';
    ExecSQL;
    SQL.Text := 'select * from t_detail_asesmen_awal_follow';
    Open;
   end;
   end
   else
   begin
     /// PROSES UBAH
   with DataSimrs1.zqryt_detail_asesmen_awal_follow do
   begin
    Close;
    SQL.Clear;
    SQL.Text := 'update t_detail_asesmen_awal_follow set noRekamedis="'+edtNoRm.Text+'",noDaftar="'+edtNoRegistrasi.Text+'",noDaftarUnit="'+edtNoRegistrasi.Text+'",'+
    'tanggal="'+FormatDateTime('yyyy-MM-dd',dtpfoll.Date)+'",jam="'+FormatDateTime('hh:mm:ss',cxtmdtfoll.Time)+'",'+
    'rekomendasi="'+edtrekomendasi.Text+'",namaPetugas="'+cbbnamapetugas.Text+'" where idDetailAsesmenAwalFollow="'+lblIdDetailFollowUp.Caption+'"';
    ExecSQL;
    SQL.Text := 'select * from t_detail_asesmen_awal_follow';
    Open;
   end;

   end;

 end;
end;

/// tampil ubah follow
procedure tampilUbahFollow;
var
  id:String;
begin
if DataSimrs1.qryt_asesmen_awal_follow.RecordCount >= 1 then
begin
 DataSimrs1.qryt_asesmen_awal_follow.FieldByName('idAsesmenAwalFollow').AsString;
 with FAsesmenAwalIgd do
 begin
  lblIdFollowUp.Caption := id;
  with DataSimrs1.qryt_asesmen_awal_follow do
  begin
   Close;
   SQL.Clear;
   SQL.Text := 'select * from t_asesmen_awal_follow where idAsesmenAwalFollow="'+id+'"';
   Open;
  end;

  Memodaftarmasalah.Text := DataSimrs1.qryt_asesmen_awal_follow.FieldByname('daftarMasalah').AsString;
  Memodiagnosis.Text := DataSimrs1.qryt_asesmen_awal_follow.FieldByname('diagnosaKerja').AsString;
  Memomedis.Text := DataSimrs1.qryt_asesmen_awal_follow.FieldByname('medis').AsString;
  Memokeperawatan.Text := DataSimrs1.qryt_asesmen_awal_follow.FieldByname('keperawatan').AsString;
  btnSIMPANFOLL.Caption := 'UBAH';

  /// procedure tampil
  tampilFollow;
 end;
end
else
 MessageDlg('Data Tidak DI Temukan...!',mtWarning,[mbOK],0);
end;

/// tampil ubah detail follow
procedure tampilDetailUbahFollow;
var
  id:String;
begin
IF DataSimrs1.zqryt_detail_asesmen_awal_follow.RecordCount >= 1 then
   begin
    id := DataSimrs1.zqryt_detail_asesmen_awal_follow.Fieldbyname('idDetailAsesmenAwalFollow').AsString;

    with DataSimrs1.zqryt_detail_asesmen_awal_follow do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from t_detail_asesmen_awal_follow where idDetailAsesmenAwalFollow="'+id+'"';
      Open;
    end;

    with FAsesmenAwalIgd do
    begin
     lblIdDetailFollowUp.Caption := id;
     dtpfoll.Date := DataSimrs1.zqryt_detail_asesmen_awal_follow.Fieldbyname('tanggal').AsDateTime;
     cxtmdtfoll.Time :=DataSimrs1.zqryt_detail_asesmen_awal_follow.Fieldbyname('jam').AsDateTime;
     edtrekomendasi.Text := DataSimrs1.zqryt_detail_asesmen_awal_follow.Fieldbyname('rekomendasi').AsString;
     cbbnamapetugas.Text := DataSimrs1.zqryt_detail_asesmen_awal_follow.Fieldbyname('namaPetugas').AsString;
     btnTAMBAHFOLL.Caption := 'UBAH';
    end;

    /// panggil procedure
    tampilDetailFollow;
   end
   else
   MessageDlg('Data Tidak DI Temukan...!',mtWarning,[mbOK],0);
end;



end.
