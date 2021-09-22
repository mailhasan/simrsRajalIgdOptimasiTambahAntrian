unit UAsesmenAwalKondisiKrs;

interface

procedure tampilAwalKondisiKrs;
procedure baruKondisiKrs;
procedure prosesSimpanKondisiKrs;


implementation

uses Messages,Dialogs,UDataSimrs1,UAsesmenAwalIgd, SysUtils, Forms,
  DB, StdCtrls, Variants, DateUtils, Math, ZDataset, ZAbstractRODataset;

  //// tampil awal kondisi krs
procedure tampilAwalKondisiKrs;
begin
with DataSimrs1.qryt_asesmen_awal_kondisikrs do
begin
 Close;
 SQL.Clear;
 SQL.Text := 'select * from t_asesmen_awal_kondisikrs';
 Open;
end;
end;

/// tampil baru kondisi krs
procedure baruKondisiKrs;
begin
  with FAsesmenAwalIgd do
  begin
    ///
   dtpKondisiKrs.Date :=  Now;
   cxtmdtkrs.Time := Now;
   /// keadaan umum
   cbtidaksakit.Checked := False;
   cbsakitringan.Checked := False;
   cbsakitsedang.Checked := False;
   cbsakitberat.Checked := False;
   ///kesadaraan
   cbcompos.Checked := False;
   cbapatis.Checked := False;
   cbsomnolens.Checked := False;
   cbsopor.Checked := False;
   cbcoma.Checked := False;
   /// tanda vital
   edtE.Text := '';
   edtV.Text := '';
   edtM.Text := '';

   edttekanan.Text := '';
   edtSpO2.Text := '';
   edtnadikrs.Text := '';
   edtRR.Text := '';
   edtsuhukrs.Text := '';

   cbbruangan.Text := '';
   cbbpetugas.Text := '';

   cbtindakanlanjut.Checked := False;
   cbkamaroperasi. Checked := False;
   cbbkamarbersalin.Checked := False;
   cblainnyakrs.Checked := False;
   edtlainnyakrs.Text := '';

   cbrujukke.Checked := False;
   edtrujukke.Text := '';
   cxtmdtrujukke.Time := Now;

   cbpulangpaksa.Checked := False;
   cbmeninggal.Checked := False; cxtmdtmeninggal.Time := Now;
   cbDOA.Checked := False;
   chkKrs.Checked := False;

   //// transportasi pulang
   cbkenpribadi.Checked := False;
   cbambulans.Checked :=False;
   cbkenjenazah.Checked := False;

   cbbperawatigd.Text := '';
   cbbdokterigd.Text := '';

  end;
end;

procedure prosesSimpanKondisiKrs;
begin
  with FAsesmenAwalIgd do
  begin
   with DataSimrs1.qryt_asesmen_awal_kondisikrs do
   begin
    Close;
    SQL.Clear;
    SQL.Text := 'insert into t_asesmen_awal_kondisikrs (noRekamedis,noDaftar,noDaftarUnit,tglDaftarUnit,'+

    'tanggal,jamKeluarIgd,tidakSakit,sakitRingan,sakitSedah,sakitBerat,'+
    'composMentis,apatis,somnorles,sopor,coma,'+

    'e,v,m,tekananDarah,nadi,pr,suhu,masukRsDiRuang,pertugasYangMenerima,'+
    'tindakanLanjut,kamarOperasi,kamarBersalin,lainya,'+
    'rujuk,diRujukKe,jam,'+
    'pulangPaksa,meninggalJam,doa,'+
    'kendaraanPribadi,ambulans,kendaraanJenazah,perawatIGD,dokterIGD) values '+
    '("'+edtNoRm.Text+'","'+edtNoRegistrasi.Text+'","'+edtNoRajal.Text+'","'+FormatDateTime('yyyy-MM-dd',dtpTglDaftarUnit.Date)+'",'+

    '"'+edtE.Text+'","'+edtV.Text+'","'+edtM.Text+'","'+edttekanan.Text+'","'+edtSpO2.Text+'","'+edtNadi.Text+'","'+edtRR.Text+'","'+edtSuhu.Text+'",'+
    ')';
    ExecSQL;
    SQL.Text := 'select * from t_asesmen_awal_kondisikrs';
    Open;
   end;
  end;
end;

end.

