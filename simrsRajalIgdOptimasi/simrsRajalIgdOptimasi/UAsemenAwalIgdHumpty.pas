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

/// status nutrisi
procedure hitungStatusNutrisi;

//// pasien dewasa
procedure imtPxDewasa;
procedure adaPenuruganPxDewasa;
procedure adaAsupanPxDewasa;
procedure totalPxHumpty;

/// skor pasien obsterti
procedure totalSkorObs;

/// skor pasien anak
procedure totalSkorAnak;

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
   cbbobs1.ItemIndex := 1;
   cbbobs2.ItemIndex := 1;
   cbbobs3.ItemIndex := 1;
   cbbobs4.ItemIndex := 1;
   edtotalskorobs.Text := '0';

   /// PASOEN ANAK
   cbbanak1.ItemIndex := 1;
   cbbanak2.ItemIndex := 1;
   cbbanak3.ItemIndex := 1;
   cbbanak4.ItemIndex := 1;
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
var
  id:String;
begin
if DataSimrs1.qryt_asesmen_awal_humpty.RecordCount >= 1 then
begin
   id := DataSimrs1.qryt_asesmen_awal_humpty.FieldByname('idAsesmenAwalHumpty').AsString;

   with DataSimrs1.qryt_asesmen_awal_humpty do
   begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from t_asesmen_awal_humpty where idAsesmenAwalHumpty="'+id+'"';
    Open;
   end;

  with FAsesmenAwalIgd do
  begin

   /// penilain resiko  
   {cbbhumpty1.ItemIndex:= 0
   cbbhumpty2.ItemIndex:= 0;
   cbbhumpty3.ItemIndex:= 0;
   cbbhumpty4.ItemIndex:= 0;
   cbbhumpty5.ItemIndex:= 0;
   cbbhumpty6.ItemIndex:= 0;
   cbbhumpty7.ItemIndex:= 0; }
   
   /// status nutrisi
   edtSkorPasien1.Text:= DataSimrs1.qryt_asesmen_awal_humpty.FieldByname('skorUsia').AsString;
   edtSkorPasien2.Text:= DataSimrs1.qryt_asesmen_awal_humpty.FieldByname('skorJenisKelamin').AsString;
   edtSkorPasien3.Text:= DataSimrs1.qryt_asesmen_awal_humpty.FieldByname('skorDiagnosa').AsString;
   edtSkorPasien4.Text:= DataSimrs1.qryt_asesmen_awal_humpty.FieldByname('skorGanguanKognitif').AsString;
   edtSkorPasien5.Text:= DataSimrs1.qryt_asesmen_awal_humpty.FieldByname('skorGanguanLingkungan').AsString;
   edtSkorPasien6.Text:= DataSimrs1.qryt_asesmen_awal_humpty.FieldByname('skorResponTerhadap').AsString;
   edtSkorPasien7.Text:= DataSimrs1.qryt_asesmen_awal_humpty.FieldByname('skorMedikamentos').AsString;

   /// stituasi nutris
   edtbb.Text := DataSimrs1.qryt_asesmen_awal_humpty.FieldByname('beratBadan').AsString;
   edtTb.Text := DataSimrs1.qryt_asesmen_awal_humpty.FieldByname('tinggiBadah').AsString;
   edtIMT.Text := DataSimrs1.qryt_asesmen_awal_humpty.FieldByname('imt').AsString;
   edtskorhumpty.Text := DataSimrs1.qryt_asesmen_awal_humpty.FieldByname('totalSkorPenilaianResikoJatuh').AsString;

   /// pasien dewasa
   edtImt1.Text := DataSimrs1.qryt_asesmen_awal_humpty.FieldByname('pasienDewasaSATU').AsString;
   edtAdaPenurunan2.Text := DataSimrs1.qryt_asesmen_awal_humpty.FieldByname('pasienDewasaDUA').AsString;
   edtApaAsupan.Text := DataSimrs1.qryt_asesmen_awal_humpty.FieldByname('pasienDewasaTIGA').AsString;
   edttotalskorhumpty1.Text := DataSimrs1.qryt_asesmen_awal_humpty.FieldByname('totalPasienDewasa').AsString;

   /// pasien obsterri
   cbbobs1.ItemIndex := DataSimrs1.qryt_asesmen_awal_humpty.FieldByname('pasienObstetriSATU').AsInteger;
   cbbobs2.ItemIndex := DataSimrs1.qryt_asesmen_awal_humpty.FieldByname('pasienObstetriDUA').AsInteger;
   cbbobs3.ItemIndex := DataSimrs1.qryt_asesmen_awal_humpty.FieldByname('pasienObstetriTIGA').AsInteger;
   cbbobs4.ItemIndex := DataSimrs1.qryt_asesmen_awal_humpty.FieldByname('pasienObstetriEMPAT').AsInteger;
   edtotalskorobs.Text := DataSimrs1.qryt_asesmen_awal_humpty.FieldByname('totalPasienObstetri').AsString;

   /// PASIEN ANAK
   cbbanak1.ItemIndex := DataSimrs1.qryt_asesmen_awal_humpty.FieldByname('pasienAnakSATU').AsInteger;;
   cbbanak2.ItemIndex := DataSimrs1.qryt_asesmen_awal_humpty.FieldByname('pasienAnakDUA').AsInteger;;
   cbbanak3.ItemIndex := DataSimrs1.qryt_asesmen_awal_humpty.FieldByname('pasienAnakTIGA').AsInteger;;
   cbbanak4.ItemIndex := DataSimrs1.qryt_asesmen_awal_humpty.FieldByname('pasienAnakEMPAT').AsInteger;;
   edttotalskoranak.Text := DataSimrs1.qryt_asesmen_awal_humpty.FieldByname('totalPasienAnak').AsString;;
  end
end
else
 MessageDlg('Data Tidak Di Temukan...!',mtWarning,[mbOK],0);
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

   case totalSkor of
   45..150:lblHasilPenilaiResiko.Caption := '>= 45 Resiko Tinggi';
   25..44:lblHasilPenilaiResiko.Caption := '25-44 Resiko Sedang';
   0..24:lblHasilPenilaiResiko.Caption := '00-24 Resiko Rendah';
   else
   lblHasilPenilaiResiko.Caption := 'Kosong';
   end

  end;
end;

/// status nutrisi
procedure hitungStatusNutrisi;
var
  bb,tb:extended;
  imt:String;
begin
  with FAsesmenAwalIgd do
  begin
    bb:=StrToFloat(edtbb.Text);
    tb := StrToFloat(edtTb.Text)*StrToFloat(edtTb.Text);
    ///ShowMessage(FormatFloat('#,##0.00;( #,##0.00);Kosong', tb));
    ///imt := (bb)/StrToFloat(FormatFloat('#,##0.00;( #,##0.00);Kosong', tb));
    imt := FloatToStr((bb)/(tb));

    ///ShowMessage('#,##0 : '+formatfloat('#,##0', imt));
    edtIMT.Text := formatfloat('0.####', StrToFloat(imt));   ///FloatToStr((imt);
  end;
end;

/// pasien dewasa
procedure imtPxDewasa;
begin
  with FAsesmenAwalIgd do
  begin
   if cbbImt.ItemIndex = 0 then
       edtImt1.Text := '0'
   else if cbbImt.ItemIndex = 1 then
       edtImt1.Text := '1'
   else
       edtImt1.Text := '2'; 
  end;
end;

procedure adaPenuruganPxDewasa;
begin
  with FAsesmenAwalIgd do
  begin
   if cbbAdaPenurunanBB.ItemIndex = 0 then
       edtAdaPenurunan2.Text := '0'
   else if cbbAdaPenurunanBB.ItemIndex = 1 then
       edtAdaPenurunan2.Text := '1'
   else
       edtAdaPenurunan2.Text := '2';
  end;
end;

procedure adaAsupanPxDewasa;
begin
  with FAsesmenAwalIgd do
  begin
   if cbbApaAsupan.ItemIndex = 0 then
       edtApaAsupan.Text := '2'
   else 
       edtApaAsupan.Text := '0'
  end;
end;

procedure totalPxHumpty;
var
  skorImtpxDewasa,skorAdaPenuruanpxDewasa,skorAsupanpxDewasa,totalpxDewasaHumpty:Integer;
begin
 with FAsesmenAwalIgd do
 begin
   skorImtpxDewasa := StrToInt(edtImt1.Text);
   skorAdaPenuruanpxDewasa :=StrToInt(edtAdaPenurunan2.Text);
   skorAsupanpxDewasa := StrToInt(edtApaAsupan.Text);
   totalpxDewasaHumpty := skorImtpxDewasa+skorAdaPenuruanpxDewasa+skorAsupanpxDewasa;
   edttotalskorhumpty1.Text := IntToStr(totalpxDewasaHumpty);
 end;
end;

/// skor obsterti
procedure totalSkorObs;
var
  skorObs1,skorObs2,skorObs3,skorObs4,totalSkor:Integer;
begin
 with FAsesmenAwalIgd do
 begin
  if cbbobs1.ItemIndex = 0 then
      skorObs1 := 1
  else
      skorObs1 := 0;

   if cbbobs2.ItemIndex = 0 then
      skorObs2 := 2
  else
      skorObs2 := 0;

  if cbbobs3.ItemIndex = 0 then
      skorObs3 := 1
  else
      skorObs3 := 0;

  if cbbobs4.ItemIndex = 0 then
      skorObs4 := 2
  else
      skorObs4 := 0;

  totalSkor:= skorObs1+skorObs2+skorObs3+skorObs4;
  edtotalskorobs.Text := IntToStr(totalSkor);
 end;
end;

/// skor pasien anak
procedure totalSkorAnak;
var
  cbAnk1,cbAnk2,cbAnk3,cbAnk4,totalSkorAnak:Integer;
begin
 with FAsesmenAwalIgd do
 begin
  if cbbanak1.ItemIndex = 0 then
      cbAnk1 := 1
  else
      cbAnk1 := 0;

   if cbbanak2.ItemIndex = 0 then
      cbAnk2 := 2
  else
      cbAnk2 := 0;

  if cbbanak3.ItemIndex = 0 then
      cbAnk3 := 1
  else
      cbAnk3 := 0;

  if cbbanak4.ItemIndex = 0 then
      cbAnk4 := 2
  else
      cbAnk4 := 0;

  totalSkorAnak:= cbAnk1+cbAnk2+cbAnk3+cbAnk4;
  edttotalskoranak.Text := IntToStr(totalSkorAnak);
 end;
end;


end.
