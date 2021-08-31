unit UKonsulAntarPoli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  ComCtrls, ExtCtrls, cxCurrencyEdit;

type
  TFKonsulAntarPoli = class(TForm)
    pnlTengah: TPanel;
    grpDataPasien: TGroupBox;
    lblNoIdentitas: TLabel;
    lblNama: TLabel;
    lblTempatTglLahir: TLabel;
    lblUmur: TLabel;
    lblJenisKelamin: TLabel;
    lblPendidikan: TLabel;
    lblAlamat: TLabel;
    lblPekerjaan: TLabel;
    lblKelurahanDesa: TLabel;
    lblKecamatan: TLabel;
    lblKabupaten: TLabel;
    lbl1: TLabel;
    lblProvinsi: TLabel;
    lblKodePos: TLabel;
    lblBahasa: TLabel;
    lblAgama: TLabel;
    lbl3: TLabel;
    lbl2: TLabel;
    edtNoIdentitas: TEdit;
    edtNmLengkap: TEdit;
    edtTempatLahir: TEdit;
    edtTglLahir: TEdit;
    edtTahun: TEdit;
    edtJenisKelamin: TEdit;
    edtPendidikan: TEdit;
    edtPekerjaan: TEdit;
    mmoAlamat: TMemo;
    edtKelurahanDesa: TEdit;
    edtKecamatan: TEdit;
    edtKabupaten: TEdit;
    edtProvinsi: TEdit;
    edtKodePos: TEdit;
    edtBahasa: TEdit;
    edtAgama: TEdit;
    edtLamaBaru: TEdit;
    edtNoTelepone: TEdit;
    edtNoRm: TEdit;
    grpPoliTujuan: TGroupBox;
    lblNoRegistrasi: TLabel;
    lblTanggal: TLabel;
    lblUnitPelayanan: TLabel;
    lbl4: TLabel;
    edtNoRegistrasi: TEdit;
    dtpTanggal: TDateTimePicker;
    cbbUnitPelayanan: TcxLookupComboBox;
    edtNoRegisterRajal: TEdit;
    pnlBawah: TPanel;
    btnDaftar: TcxButton;
    pnlAtas: TPanel;
    pnlKeluar: TPanel;
    lbl5: TLabel;
    cxcrncydtTarifKonsulAntarPoli: TcxCurrencyEdit;
    procedure pnlKeluarClick(Sender: TObject);
    procedure btnDaftarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure dataPasien;
    procedure tampilUmur;
    procedure noRegisterRajal;
  end;

var
  FKonsulAntarPoli: TFKonsulAntarPoli;
  iThn, iBln, iHari: Word;
implementation

{$R *.dfm}
uses UDataSImrs,DateUtils,URajalIgd, ADODB, DB;

// procedure setting umur otomatis
procedure umur(ThnLama, ThnBaru:TDate);
begin
iThn:=YearsBetween(ThnBaru, ThnLama);
if (DayOf(ThnBaru) = DayOf(ThnLama)) and (MonthOf(ThnBaru) = MonthOf(ThnLama))
and (YearOf(ThnLama) <> YearOf(ThnBaru))
then inc(iThn);
ThnLama:=IncYear(ThnLama, iThn);
iBln:=MonthsBetween(ThnBaru, ThnLama);
ThnLama:=IncMonth(ThnLama, iBln);
iHari:=DaysBetween(ThnBaru, ThnLama);
end;

/// procedure tampil umur otomatis
procedure TFKonsulAntarPoli.tampilUmur;
var
   sTgl, LTgl : TDateTime;
begin
   sTgl := Date;
   LTgl := DataSimrs.qryVwPasien['tglLahir'];
   umur(LTgl, sTgl);
end;

procedure TFKonsulAntarPoli.noRegisterRajal;
begin
  with DataSimrs.qryt_registrasirawatjalan DO
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT * FROM t_registrasirawatjalan';
    Open;
  end;
   edtNoRegisterRajal.Text :='RJ'+FormatDateTime('ddMMYYHHmmss',Now)+'-'+IntToStr(DataSimrs.qryt_registrasirawatjalan.RecordCount+1);
end;

procedure TFKonsulAntarPoli.dataPasien;
begin
  with DataSimrs.qryVwPasien do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from t_pasien where noRekamedis="'+FRawatJalanIgd.edtNoRm.Text+'"';
    Open;
  end;


    edtNmLengkap.Text := DataSimrs.qryVwPasien.FieldByname('nmPasien').AsString;
    edtNoIdentitas.Text := DataSimrs.qryVwPasien.FieldByname('noKtp').AsString;  //DataSimrs.qryVwPasien['noKtp'];
    edtTempatLahir.Text := DataSimrs.qryVwPasien.FieldByname('tempatLahir').AsString;
    edtTglLahir.Text := DataSimrs.qryVwPasien.FieldByname('tglLahir').AsString;
    tampilUmur;
    edtTahun.Text :=IntToStr(iThn)+' Tahun, '+IntToStr(iBln)+' Bulan, '+IntToStr(iHari)+' Hari';
    edtJenisKelamin.Text := DataSimrs.qryVwPasien.FieldByname('jenisKelamin').AsString;
    edtPendidikan.Text := DataSimrs.qryVwPasien.FieldByname('pendidikan').AsString;
    edtPekerjaan.Text := DataSimrs.qryVwPasien.FieldByname('pekerjaan').AsString;
    mmoAlamat.Text := DataSimrs.qryVwPasien.FieldByname('alamat').AsString;
    edtKelurahanDesa.Text := DataSimrs.qryVwPasien.FieldByname('kelurahan').AsString;
    edtKecamatan.Text := DataSimrs.qryVwPasien.FieldByname('kecamatan').AsString;
    edtKabupaten.Text := DataSimrs.qryVwPasien.FieldByname('kabupaten').AsString;
    edtProvinsi.Text := DataSimrs.qryVwPasien.FieldByname('provinsi').AsString;
    //edtBahasa.Text := DataSimrs.qryVwPasien.FieldByname('bahasa').AsString;
    edtKodePos.Text := DataSimrs.qryVwPasien.FieldByname('kdPos').AsString;
    edtAgama.Text := DataSimrs.qryVwPasien.FieldByname('agama').AsString;
    edtNoTelepone.Text := DataSimrs.qryVwPasien.FieldByname('noTelepone').AsString;
    {cbbCaraBayar.Text := DataSimrs.qryVwPasien.FieldByname('caraBayar').AsString;
    cbbPenjamin.Text := DataSimrs.qryVwPasien.FieldByname('penjamin').AsString;
    edtNoKartu.Text := DataSimrs.qryVwPasien.FieldByname('noKartuPenjamin').AsString;
    edtNoSep.Text := DataSimrs.qryVwPasien.FieldByname('noSepPenjamin').AsString;
    edtAtasNama.Text := DataSimrs.qryVwPasien.FieldByname('atasNamaPenjamin').AsString;}
    edtLamaBaru.Text := 'lama';

    noRegisterRajal;
    dtpTanggal.Date := Now;
    cbbUnitPelayanan.Text := '';

end;

procedure TFKonsulAntarPoli.pnlKeluarClick(Sender: TObject);
begin
   Close;
end;

procedure TFKonsulAntarPoli.btnDaftarClick(Sender: TObject);
var
  tglDaftar:String;
begin
if cbbUnitPelayanan.Text = '' then
     MessageDlg('Data Harus Di Isi Lengkap...!',mtInformation,[mbok],0)
  else
  begin
  //insert ke tabel registrasi rawat jalan
  tglDaftar := FormatDateTime('yyyy-MM-dd HH:mm:ss',dtpTanggal.DateTime);
  with DataSimrs.qryt_registrasirawatjalan do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'insert into t_registrasirawatjalan (noRegistrasiRawatJalan,noDaftar,kdUnit,tglMasukRawatJalan,karciPendaftaran,konsulDokter,statusPasien,konsulAntarPoli)  '+
                            'values ("'+edtNoRegisterRajal.Text+'","'+edtNoRegistrasi.Text+'","'+cbbUnitPelayanan.EditValue+'","'+tgldaftar+'",'+
                              '"'+FloatToStr(0)+'","'+FloatToStr(0)+'","konsulPoli","'+FloatToStr(cxcrncydtTarifKonsulAntarPoli.Value)+'")';
    ExecSQL;
    SQL.Text := 'select * from t_registrasirawatjalan';
    Open;
  end;
    MessageDlg('Berhasil Mendaftar....!',mtInformation,[mbok],0);
  end;
end;


procedure TFKonsulAntarPoli.FormShow(Sender: TObject);
begin
dataPasien;

  with DataSimrs.qryvw_tindakantarifrajal do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT * FROM vw_tindakantarifrajal WHERE kdTindakan="0000006"';
    Open;
  end;
  cxcrncydtTarifKonsulAntarPoli.Value := StrToFloat(DataSimrs.qryvw_tindakantarifrajal['tarif']);
end;

end.
