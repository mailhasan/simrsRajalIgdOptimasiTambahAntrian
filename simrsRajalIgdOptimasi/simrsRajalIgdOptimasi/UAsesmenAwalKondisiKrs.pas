unit UAsesmenAwalKondisiKrs;

interface

procedure tampilAwalKondisiKrs;
procedure baruKondisiKrs;
procedure prosesSimpanKondisiKrs;

procedure tampilUbahKondisiKrs;


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

/// proses simpan dan ubah krs
procedure prosesSimpanKondisiKrs;
var
  tidaksakit,kamarOperasi,sakitRingan,sakitsedang,
  sakitBerat,composMentis,apatis,somnolens,sopor,coma,
  tindakanlanjut,kamarbersalin,lainnyakrs,rujuk,
  pulangpaksa,doa,kenpribadi,ambulans,kenjenazah:String;
begin
  with FAsesmenAwalIgd do
  begin
  /// kesadaran umum
  if cbtidaksakit.Checked = True then
     tidaksakit := 'Y'
  else
    tidaksakit := 'N';

  if cbsakitringan.Checked = True then
     sakitringan := 'Y'
  else
    kamaroperasi := 'N';

  if cbsakitsedang.Checked = True then
     sakitsedang := 'Y'
  else
     sakitsedang := 'N';

  if cbsakitberat.Checked = True then
     sakitBerat := 'Y'
  else
    sakitBerat := 'N';

  ///kesadaran
  if cbcompos.Checked = True then
     composMentis := 'Y'
  else
     composMentis := 'N';

  if cbapatis.Checked = True then
     apatis := 'Y'
  else
    apatis := 'N';

  if cbsomnolens.Checked = True then
     somnolens := 'Y'
  else
     somnolens := 'N';

  if cbtindakanlanjut.Checked = True then
     tindakanlanjut := 'Y'
  else
     tindakanlanjut := 'N';

  if cbkamaroperasi.Checked = True then
     kamarOperasi := 'Y'
  else
    kamarOperasi := 'N';

  if cbbkamarbersalin.Checked = True then
     kamarbersalin := 'Y'
  else
     kamarbersalin := 'N';

  if cblainnyakrs.Checked = True then
     lainnyakrs := 'Y'
  else
     lainnyakrs := 'N';

  if cbrujukke.Checked = True then
     rujuk := 'Y'
  else
     rujuk := 'N';

  if cbpulangpaksa.Checked = True then
     pulangpaksa := 'Y'
  else
    pulangpaksa := 'N';
  if cbDOA.Checked = True then
     doa := 'Y'
  else
     doa := 'N';

  if cbkenpribadi.Checked = True then
     kenpribadi := 'Y'
  else
     kenpribadi := 'N';

  if cbambulans.Checked = True then
     ambulans := 'Y'
  else
    ambulans := 'N';

  if cbkenjenazah.Checked = True then
     kenjenazah := 'Y'
  else
     kenjenazah := 'N';
  if btnSIMPANKRS.Caption = 'SIMPAN' then
  begin
   /// proses simpan
   with DataSimrs1.qryt_asesmen_awal_kondisikrs do
   begin
    Close;
    SQL.Clear;
    SQL.Text := 'insert into t_asesmen_awal_kondisikrs (noRekamedis,noDaftar,noDaftarUnit,tglDaftarUnit,'+

    'tanggal,jamKeluarIgd,tidakSakit,sakitRingan,sakitSedah,sakitBerat,'+
    'composMentis,apatis,somnorles,sopor,coma,'+

    'e,v,m,tekananDarah,SpO2,nadi,pr,suhu,masukRsDiRuang,pertugasYangMenerima,'+
    'tindakanLanjut,kamarOperasi,kamarBersalin,lainya,'+
    'rujuk,diRujukKe,jam,'+
    'pulangPaksa,meninggalJam,doa,'+
    'kendaraanPribadi,ambulans,kendaraanJenazah,perawatIGD,dokterIGD) values '+
    '("'+edtNoRm.Text+'","'+edtNoRegistrasi.Text+'","'+edtNoRajal.Text+'","'+FormatDateTime('yyyy-MM-dd',dtpTglDaftarUnit.Date)+'",'+

    '"'+FormatDateTime('yyyy-MM-dd',dtpKondisiKrs.Date)+'","'+FormatDateTime('hh:mm:ss',cxtmdtkrs.Time)+'",'+
    '"'+tidaksakit+'","'+sakitRingan+'","'+sakitsedang+'","'+sakitBerat+'","'+composMentis+'"'+
    '"'+apatis+'","'+somnolens+'","'+sopor+'","'+coma+'",'+

    '"'+edtE.Text+'","'+edtV.Text+'","'+edtM.Text+'","'+edttekanan.Text+'","'+edtSpO2.Text+'","'+edtNadi.Text+'","'+edtRR.Text+'","'+edtSuhu.Text+'","'+cbbruangan.Text+'","'+cbbpetugas.Text+'",'+
    '"'+tindakanlanjut+'","'+kamarOperasi+'","'+kamarbersalin+'","'+lainnyakrs+'",'+
    '"'+rujuk+'","'+edtrujukke.Text+'","'+FormatDateTime('hh:mm:ss',cxtmdtrujukke.Time)+'"),'+
    '"'+pulangpaksa+'","'+FormatDateTime('hh:mm:ss',cxtmdtmeninggal.Time)+'","'+doa+'",'+
    '"'+kenpribadi+'","'+ambulans+'","'+kenjenazah+'","'+cbbperawatigd.Text+'","'+cbbdokterigd.Text+'")';
    ExecSQL;
    SQL.Text := 'select * from t_asesmen_awal_kondisikrs';
    Open;
   end;
  end
  else
  begin
   /// proses ubah
   with DataSimrs1.qryt_asesmen_awal_kondisikrs do
   begin
    Close;
    SQL.Clear;
    SQL.Text := 'update t_asesmen_awal_kondisikrs set noRekamedis="'+edtNoRm.Text+'",noDaftar="'+edtNoRegistrasi.Text+'",noDaftarUnit="'+edtNoRajal.Text+'",tglDaftarUnit="'+FormatDateTime('yyyy-MM-dd',dtpTglDaftarUnit.Date)+'",'+

    'tanggal="'+FormatDateTime('yyyy-MM-dd',dtpKondisiKrs.Date)+'",jamKeluarIgd="'+FormatDateTime('hh:mm:ss',cxtmdtkrs.Time)+'",tidakSakit="'+tidaksakit+'",sakitRingan="'+sakitRingan+'",sakitSedah="'+sakitsedang+'",sakitBerat="'+sakitBerat+'",'+
    'composMentis="'+composMentis+'",apatis="'+apatis+'",somnorles="'+somnolens+'",sopor="'+sopor+'",coma="'+coma+'",'+

    'e="'+edtE.Text+'",v="'+edtV.Text+'",m="'+edtM.Text+'",tekananDarah="'+edttekanan.Text+'",SpO2="'+edtSpO2.Text+'",nadi="'+edtNadi.Text+'",pr="'+edtRR.Text+'",suhu="'+edtSuhu.Text+'",masukRsDiRuang="'+cbbruangan.Text+'",pertugasYangMenerima="'+cbbpetugas.Text+'",'+
    'tindakanLanjut="'+tindakanlanjut+'",kamarOperasi="'+kamarOperasi+'",kamarBersalin='+kamarbersalin+'",lainya="'+lainnyakrs+'",'+
    'rujuk="'+rujuk+'",diRujukKe="'+edtrujukke.Text+'",jam="'+FormatDateTime('hh:mm:ss',cxtmdtrujukke.Time)+'",'+
    'pulangPaksa="'+pulangpaksa+'",meninggalJam="'+FormatDateTime('hh:mm:ss',cxtmdtmeninggal.Time)+'",doa="'+doa+'",'+
    'kendaraanPribadi="'+kenpribadi+'",ambulans="'+ambulans+'",kendaraanJenazah="'+kenjenazah+'",perawatIGD="'+cbbperawatigd.Text+'",dokterIGD="'+cbbdokterigd.Text+'" where idAsesmenAwalKondisikrs="'+lblIdKondisiKrsIGD.Caption+'" ';
    ExecSQL;
    SQL.Text := 'select * from t_asesmen_awal_kondisikrs';
    Open;
   end;
  end;
end;
end;

/// tampil ubah kondisi krs
procedure tampilUbahKondisiKrs;
var
  id:String;
begin
if DataSimrs1.qryt_asesmen_awal_kondisikrs.RecordCount >= 1 then
   begin
    id := DataSimrs1.qryt_asesmen_awal_kondisikrs.Fieldbyname('idAsesmenAwalKondisikrs').AsString;
    with DataSimrs1.qryt_asesmen_awal_kondisikrs do
    begin
     Close;
     SQL.Clear;
     SQL.Text := 'select * from t_asesmen_awal_kondisikrs where idAsesmenAwalKondisikrs="'+id+'"';
     Open;
    end;

    with FAsesmenAwalIgd do
    begin
      lblIdKondisiKrsIGD.Caption := id;
      ///
     dtpKondisiKrs.Date :=  DataSimrs1.qryt_asesmen_awal_kondisikrs.Fieldbyname('tanggal').AsDateTime;
     cxtmdtkrs.Time := DataSimrs1.qryt_asesmen_awal_kondisikrs.Fieldbyname('jamKeluarIgd').AsDateTime;
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

   end
   else
   begin

   end;
end;

end.

