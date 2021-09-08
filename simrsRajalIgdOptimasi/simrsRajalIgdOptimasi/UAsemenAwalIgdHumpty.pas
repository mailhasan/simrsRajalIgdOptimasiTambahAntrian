unit UAsemenAwalIgdHumpty;

interface

procedure tampilHumpty;
procedure baruHumpty;
procedure prosesSimpanHumpty;
procedure tampilUbahHumpty;

/// PENILAIAN RISIKO JATUH PEDIATRY (Humpty Dumpty)
procedure Usia;
procedure JenisKelamin;
procedure Diagnosis;
procedure GanguanKongnitif;
procedure GanguanLingkungan;
procedure ResponTerhadapOperasi;
procedure Medikamentosa;
procedure totalSkorResiko;

implementation

uses Messages,Dialogs,UDataSimrs1,UAsesmenAwalIgd, SysUtils, Forms, ZDataset,
  ZAbstractRODataset, DB, StdCtrls, Variants;

  /// tampil humpty
procedure tampilHumpty;
begin
  with DataSimrs1.qryt_asesmen_awal_humpty do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from t_asesmen_awal_humpty';
    Open;
  end;
end;
/// baru
procedure baruHumpty;
begin
  tampilHumpty;

  with FAsesmenAwalIgd do
  begin
   /// penilain resiko  
   cbbhumpty1.ItemIndex:= 0;
   cbbhumpty2.ItemIndex:= 0;
   cbbhumpty3.ItemIndex:= 0;
   cbbhumpty4.ItemIndex:= 0;
   cbbhumpty5.ItemIndex:= 0;
   cbbhumpty6.ItemIndex:= 0;
   cbbhumpty7.ItemIndex:= 0;
   
   /// status nutrisi
   edtSkorPasien1.Text:= '0';
   edtSkorPasien2.Text:= '0';
   edtSkorPasien3.Text:= '0';
   edtSkorPasien4.Text:= '0';
   edtSkorPasien5.Text:= '0';
   edtSkorPasien6.Text:= '0';
   edtSkorPasien7.Text:= '0';

   /// stituasi nutris
   edtbb.Text := '0';
   edtTb.Text := '0';
   edtIMT.Text := '0';
   edtskorhumpty.Text := '0';

   ///pasien dewasa
   cbbImt.ItemIndex := 0;
   cbbAdaPenurunanBB.ItemIndex := 0;
   cbbApaAsupan.ItemIndex := 0;


   /// pasien dewasa
   edtImt1.Text := '0';
   edtAdaPenurunan2.Text := '0';
   edtApaAsupan.Text := '0';
   edttotalskorhumpty1.Text := '0';

   /// pasien obsterri
   cbbobs1.ItemIndex := 0;
   cbbobs2.ItemIndex := 0;
   cbbobs3.ItemIndex := 0;
   cbbobs4.ItemIndex := 0;
   edtotalskorobs.Text := '0';

   /// PASOEN ANAK
   cbbanak1.ItemIndex := 0;
   cbbanak2.ItemIndex := 0;
   cbbanak3.ItemIndex := 0;
   cbbanak4.ItemIndex := 0;
   edttotalskoranak.Text := '0';
  end;
  
end;

/// proses simpan
procedure prosesSimpanHumpty;
begin
  WITH FAsesmenAwalIgd do
  begin
    IF btnSIMPANHUMPTY.Caption = 'SIMPAN' then
    begin
     /// SIMPAN
     WITH DataSimrs1.qryt_asesmen_awal_humpty do
     begin
      Close;
      SQL.Clear;
      SQL.Text := 'INSERT INTO t_asesmen_awal_humpty (noRekamedis,noDaftar,noDaftarUnit,tglDaftarUnit,'+
      /// PENILAI RESIKO
      'skorUsia,skorJenisKelamin,skorDiagnosa,skorGanguanKognitif,skorGanguanLingkungan,skorResponTerhadap,skorMedikamentos,totalSkorPenilaianResikoJatuh,'+
      /// STATUS NUTRISI
      'beratBadan,tinggiBadah,imt,'+
      /// PASIEN DEWASA
      'pasienDewasaSATU,pasienDewasaDUA,pasienDewasaTIGA,totalPasienDewasa,'+
      /// PASIEN OBSTERTI
      'pasienObstetriSATU,pasienObstetriDUA,pasienObstetriTIGA,pasienObstetriEMPAT,totalPasienObstetri,'+
      /// PASIEN ANAK
      'pasienAnakSATU,pasienAnakDUA,pasienAnakTIGA,pasienAnakEMPAT,totalPasienAnak,createDate) values '+
      
      '("'+edtNoRm.Text+'","'+edtNoRegistrasi.Text+'","'+edtNoRajal.Text+'","'+FormatDateTime('yyyy-MM-dd',dtpTglDaftarUnit.Date)+'",'+
      /// PENILAI RESIKO
      '"'+edtSkorPasien1.Text+'","'+edtSkorPasien2.Text+'","'+edtSkorPasien3.Text+'","'+edtSkorPasien4.Text+'","'+edtSkorPasien5.Text+'","'+edtSkorPasien6.Text+'","'+edtSkorPasien7.Text+'","'+edtskorhumpty.Text+'",'+
      /// STATUS NUTRISI
      '"'+edtbb.Text+'","'+edtTb.Text+'","'+edtIMT.Text+'",'+
      /// PASIEN Dewasa
      '"'+edtImt1.Text+'","'+edtAdaPenurunan2.Text+'","'+edtApaAsupan.Text+'","'+edttotalskorhumpty1.Text+'",'+
      /// PASIEN OBSTERTI
      '"'+cbbobs1.Text+'","'+cbbobs2.Text+'","'+cbbobs3.Text+'","'+cbbobs4.Text+'","'+edtotalskorobs.Text+'",'+
       ///PASIEN ANAK
      '"'+cbbanak1.Text+'","'+cbbanak2.Text+'","'+cbbanak3.Text+'","'+cbbanak4.Text+'","'+edttotalskoranak.Text+'","'+FormatDateTime('yyyy-MM-dd hh:mm:ss',Now)+'")';
      ExecSQL;
      SQL.Text := 'SELECT * FROM t_asesmen_awal_humpty';
      Open;
     end;
    end
    ELSE
    begin
     /// UBAH
     WITH DataSimrs1.qryt_asesmen_awal_humpty do
     begin
      Close;
      SQL.Clear;
      SQL.Text := 'update t_asesmen_awal_humpty set noRekamedis="'+edtNoRm.Text+'",noDaftar="'+edtNoRegistrasi.Text+'",noDaftarUnit="'+edtNoRajal.Text+'",tglDaftarUnit="'+FormatDateTime('yyyy-MM-dd',dtpTglDaftarUnit.Date)+'",'+
      /// PENILAI RESIKO
      'skorUsia="'+edtSkorPasien1.Text+'",skorJenisKelamin="'+edtSkorPasien2.Text+'",skorDiagnosa="'+edtSkorPasien3.Text+'",skorGanguanKognitif="'+edtSkorPasien4.Text+'",skorGanguanLingkungan="'+edtSkorPasien5.Text+'",'+
      'skorResponTerhadap="'+edtSkorPasien6.Text+'",skorMedikamentos="'+edtSkorPasien7.Text+'",totalSkorPenilaianResikoJatuh="'+edtskorhumpty.Text+'",'+
      /// STATUS NUTRISI
      'beratBadan="'+edtbb.Text+'",tinggiBadah="'+edtTb.Text+'",imt="'+edtIMT.Text+'",'+
      /// PASIEN DEWASA
      'pasienDewasaSATU="'+edtImt1.Text+'",pasienDewasaDUA="'+edtAdaPenurunan2.Text+'",pasienDewasaTIGA="'+edtApaAsupan.Text+'",totalPasienDewasa="'+edttotalskorhumpty1.Text+'",'+
      /// PASIEN OBSTERTI
      'pasienObstetriSATU="'+cbbobs1.Text+'",pasienObstetriDUA="'+cbbobs2.Text+'",pasienObstetriTIGA="'+cbbobs3.Text+'",pasienObstetriEMPAT="'+cbbobs4.Text+'",totalPasienObstetri="'+edtotalskorobs.Text+'",'+
      /// PASIEN ANAK
      'pasienAnakSATU="'+cbbanak1.Text+'",pasienAnakDUA="'+cbbanak2.Text+'",pasienAnakTIGA="'+cbbanak3.Text+'",pasienAnakEMPAT="'+cbbanak4.Text+'",totalPasienAnak="'+edttotalskoranak.Text+'",'+
      'createDate="'+FormatDateTime('yyyy-MM-dd hh:mm:ss',Now)+'" WHERE idAsesmenAwalHumpty="'+lblIDHUMPTY.Caption+'"';
      
      SQL.Text := 'SELECT * FROM t_asesmen_awal_humpty';
      Open;
     end;
    end;
  end;
end;

/// tampil ubah humpty
procedure tampilUbahHumpty;
begin
  with FAsesmenAwalIgd do
  begin
   /// penilain resiko  
   cbbhumpty1.ItemIndex:= 0;
   cbbhumpty2.ItemIndex:= 0;
   cbbhumpty3.ItemIndex:= 0;
   cbbhumpty4.ItemIndex:= 0;
   cbbhumpty5.ItemIndex:= 0;
   cbbhumpty6.ItemIndex:= 0;
   cbbhumpty7.ItemIndex:= 0;
   
   /// status nutrisi
   edtSkorPasien1.Text:= '0';
   edtSkorPasien2.Text:= '0';
   edtSkorPasien3.Text:= '0';
   edtSkorPasien4.Text:= '0';
   edtSkorPasien5.Text:= '0';
   edtSkorPasien6.Text:= '0';
   edtSkorPasien7.Text:= '0';

   /// stituasi nutris
   edtbb.Text := '0';
   edtTb.Text := '0';
   edtIMT.Text := '0';
   edtskorhumpty.Text := '0';

   ///pasien dewasa
   cbbImt.ItemIndex := 0;
   cbbAdaPenurunanBB.ItemIndex := 0;
   cbbApaAsupan.ItemIndex := 0;


   /// pasien dewasa
   edtImt1.Text := '0';
   edtAdaPenurunan2.Text := '0';
   edtApaAsupan.Text := '0';
   edttotalskorhumpty1.Text := '0';

   /// pasien obsterri
   cbbobs1.ItemIndex := 0;
   cbbobs2.ItemIndex := 0;
   cbbobs3.ItemIndex := 0;
   cbbobs4.ItemIndex := 0;
   edtotalskorobs.Text := '0';

   /// PASIEN ANAK
   cbbanak1.ItemIndex := 0;
   cbbanak2.ItemIndex := 0;
   cbbanak3.ItemIndex := 0;
   cbbanak4.ItemIndex := 0;
   edttotalskoranak.Text := '0';
  end;
end;

/// PENILAIAN RISIKO JATUH PEDIATRY (Humpty Dumpty)
procedure Usia;
begin
  with FAsesmenAwalIgd do
  begin
   if cbbhumpty1.ItemIndex = 0 then
      edtSkorPasien1.Text := '4'
   else if cbbhumpty1.ItemIndex = 1 then
      edtSkorPasien1.Text := '3'
   else if cbbhumpty1.ItemIndex = 2 then
      edtSkorPasien1.Text := '2'
   else if cbbhumpty1.ItemIndex = 3 then
      edtSkorPasien1.Text := '1'
   else
      edtSkorPasien1.Text := '0';
  end;
end;

procedure JenisKelamin;
begin
  with FAsesmenAwalIgd do
  begin
   if cbbhumpty2.ItemIndex = 0 then
      edtSkorPasien2.Text := '2'
   else
      edtSkorPasien2.Text := '1';
  end;
end;

procedure Diagnosis;
begin
  with FAsesmenAwalIgd do
  begin
   if cbbhumpty3.ItemIndex = 0 then
      edtSkorPasien3.Text := '4'
   else if cbbhumpty3.ItemIndex = 1 then
      edtSkorPasien3.Text := '3'
   else if cbbhumpty3.ItemIndex = 2 then
      edtSkorPasien3.Text := '2'
   else if cbbhumpty3.ItemIndex = 3 then
      edtSkorPasien3.Text := '1'
   else
      edtSkorPasien3.Text := '0';
  end;
end;

procedure GanguanKongnitif;
begin
  with FAsesmenAwalIgd do
  begin
   if cbbhumpty4.ItemIndex = 0 then
      edtSkorPasien4.Text := '3'
   else if cbbhumpty4.ItemIndex = 1 then
      edtSkorPasien4.Text := '2'
   else if cbbhumpty4.ItemIndex = 2 then
      edtSkorPasien4.Text := '1'
   else
      edtSkorPasien4.Text := '0'
  end;
end;

procedure GanguanLingkungan;
begin
  with FAsesmenAwalIgd do
  begin
   if cbbhumpty5.ItemIndex = 0 then
      edtSkorPasien5.Text := '4'
   else if cbbhumpty5.ItemIndex = 1 then
      edtSkorPasien5.Text := '3'
   else if cbbhumpty5.ItemIndex = 2 then
      edtSkorPasien5.Text := '2'
   else if cbbhumpty5.ItemIndex = 3 then
      edtSkorPasien5.Text := '1'
   else
      edtSkorPasien5.Text := '0';
  end;
end;

procedure ResponTerhadapOperasi;
begin
  with FAsesmenAwalIgd do
  begin
    if cbbhumpty6.ItemIndex = 0 then
       edtSkorPasien6.Text := '3'
    else if cbbhumpty6.ItemIndex = 1 then
       edtSkorPasien6.Text := '2'
    else if cbbhumpty6.ItemIndex = 2 then
       edtSkorPasien6.Text := '1'
    else
      edtSkorPasien6.Text := '0';
  end;
end;

procedure Medikamentosa;
begin
  with FAsesmenAwalIgd do
  begin
   if cbbhumpty7.ItemIndex = 0 then
      edtSkorPasien7.Text := '3'
   else if cbbhumpty7.ItemIndex = 1 then
      edtSkorPasien7.Text := '2'
   else if cbbhumpty7.ItemIndex = 2 then
      edtSkorPasien7.Text := '3'
   else
      edtSkorPasien7.Text := '0';
  end;
end;

//// totak skor
procedure totalSkorResiko;
var
  skorPasien1,skorPasien2,skorPasien3,skorPasien4,skorPasien5,skorPasien6,skorPasien7,totalSkor:Integer;
begin
  with FAsesmenAwalIgd do
  begin
   skorPasien1 := StrToInt(edtSkorPasien1.Text);
   skorPasien2 := StrToInt(edtSkorPasien2.Text);
   skorPasien3 := StrToInt(edtSkorPasien3.Text);
   skorPasien4 := StrToInt(edtSkorPasien4.Text);
   skorPasien5 := StrToInt(edtSkorPasien5.Text);
   skorPasien6 := StrToInt(edtSkorPasien6.Text);
   skorPasien7:= StrToInt(edtSkorPasien7.Text);
   totalSkor:= skorPasien1+skorPasien2+skorPasien3+skorPasien4+skorPasien5+skorPasien6+skorPasien7;
   edtskorhumpty.Text := IntToStr(totalSkor);
  end;
end;

end.
