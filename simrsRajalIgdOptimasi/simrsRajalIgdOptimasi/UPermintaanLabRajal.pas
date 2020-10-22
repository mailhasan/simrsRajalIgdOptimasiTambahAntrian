unit UPermintaanLabRajal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, DBCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  DBGridEhGrouping, GridsEh, DBGridEh, Buttons, cxMemo, cxLabel;

type
  TFPermintaanLabRajal = class(TForm)
    pnlTegah: TPanel;
    pnlBawah: TPanel;
    btnSelesai: TButton;
    pnlAtas: TPanel;
    pnlKeluar: TPanel;
    pnlAtas1: TPanel;
    grpDataPasien: TGroupBox;
    lblNORM: TLabel;
    lblNoRegistrasi: TLabel;
    edtNoRm: TEdit;
    edtNoRegistrasi: TEdit;
    lblNAMA: TLabel;
    edtNama: TEdit;
    lblUmur: TLabel;
    edtUmur: TEdit;
    lblJk: TLabel;
    edtJk: TEdit;
    grpDataPermintaan: TGroupBox;
    lblTglPermintaan: TLabel;
    dtpTglPermintaan: TDateTimePicker;
    lblNoPermintaan: TLabel;
    edtNoRegistrasiLab: TEdit;
    lblAsalRuang: TLabel;
    edtAsalRuang: TEdit;
    lblDokterPengirim: TLabel;
    cbbDokter: TcxLookupComboBox;
    grpPencarian: TGroupBox;
    grpTindakanLab: TGroupBox;
    dbgrdhTindakanLab: TDBGridEh;
    edtCari: TEdit;
    pnlKiri: TPanel;
    pnlTengah1: TPanel;
    pnlKiri1: TPanel;
    btnInput: TButton;
    btnHapus: TButton;
    pnlTengah2: TPanel;
    dbgrdhTindakanPermintaanLab: TDBGridEh;
    btnNoPermintaan: TBitBtn;
    lblKode: TLabel;
    edtKode: TEdit;
    lblTglLahir: TLabel;
    dtpTglLahir: TDateTimePicker;
    lblNoTransaksiTindakan: TLabel;
    edtNoTindakanPermintaanLab: TEdit;
    btnCetak: TBitBtn;
    cxlbl1: TcxLabel;
    cxmKeterangan: TcxMemo;
    procedure pnlKeluarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtCariChange(Sender: TObject);
    procedure btnInputClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure btnSelesaiClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure awal;
    procedure dtlTndPenunjang;
    procedure UmurThnBlnHari;
    procedure batalPermintaan;
  end;

var
  FPermintaanLabRajal: TFPermintaanLabRajal;
  iThn, iBln, iHari: Word;
implementation

{$R *.dfm}

uses UDataSImrs,DB, ADODB, DateUtils, Math;

procedure TFPermintaanLabRajal.awal;
begin
  edtNoRegistrasiLab.Text :='RJLAB'+FormatDateTime('ddMMYY HHmmss',Now)+'-'+IntToStr(DataSimrs.qryt_registrasipenunjangrajal.RecordCount+1);
  edtNoTindakanPermintaanLab.Text :='TLAB'+FormatDateTime('ddMMYY HHmmss',Now)+'-'+IntToStr(DataSimrs.qryt_tindakanpenunjangrajal.RecordCount+1);
  dtpTglPermintaan.DateTime := Now;
end;


procedure TFPermintaanLabRajal.dtlTndPenunjang;
begin
  with DataSimrs.qryvw_detailtindakanpenunjangrajal do
  begin
    Close;
    SQL.Clear;
    //SQL.Text := 'select * from vw_detailtindakanpenunjangrajal where noTindakanPenunjangRajal="'+edtNoTindakanPermintaanLab.Text+'"';
    SQL.Text := ' SELECT t_detailtindakanpenunjangrajal.noTindakanPenunjangRajal,'+
                't_detailtindakanpenunjangrajal.kdTarif,t_detailtindakanpenunjangrajal.tindakan,'+
                't_detailtindakanpenunjangrajal.tarif,t_detailtindakanpenunjangrajal.jumlahTindakan,'+
                't_detailtindakanpenunjangrajal.totalTarif,t_detailtindakanpenunjangrajal.kdTenagaMedis,'+
                't_tenagamedis2.namapetugasMedis FROM t_detailtindakanpenunjangrajal INNER JOIN t_tenagamedis2 '+
                'ON t_detailtindakanpenunjangrajal.kdTenagaMedis = t_tenagamedis2.kdPetugasMedis where t_detailtindakanpenunjangrajal.noTindakanPenunjangRajal="'+edtNoTindakanPermintaanLab.Text+'"';
    Open;
  end;
end;

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

procedure TFPermintaanLabRajal.UmurThnBlnHari;
var
  sTgl, LTgl : TDateTime;
begin
  sTgl := Date;
  LTgl := dtpTglLahir.Date;
  umur(LTgl, sTgl);
  edtUmur.Text :=IntToStr(iThn)+' Tahun, '+IntToStr(iBln)+' Bulan, '+IntToStr(iHari)+' Hari';
end;

procedure TFPermintaanLabRajal.batalPermintaan;
begin
if MessageDlg('Apakah Anda Tidak Melanjutkan Permintaan Lab ?',mtConfirmation,[mbyes,mbno],0)=mrYes then
    begin
      {if DataSimrs.qryt_tindakanpenunjangrajal['noTindakanPenunjangRajal']= edtNoTindakanPermintaanLab.Text  then
      begin
      //menghapus nilai indikator
      DataSimrs.qryt_tindakanpenunjangrajal.Delete;
      //menghapus detail nilai indikator
      with DataSimrs.qryt_detailtindakanpenunjangrajal do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'delete * from t_detailtindakanpenunjangrajal where noTindakanPenunjangRajal="'+edtNoTindakanPermintaanLab.Text+'"';
        ExecSQL;
        SQL.Text := 'select * from t_detailtindakanpenunjangrajal ';
        Open;
      end;
      Close;
      ShowMessage('Penilaian Di Batalkan');
      end
      else
      begin
        Close;
        ShowMessage('Penilaian Di Batalkan');
      end }
      with DataSimrs.qryt_tindakanpenunjangrajal do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'delete from t_tindakanpenunjangrajal where noTindakanPenunjangRajal="'+edtNoTindakanPermintaanLab.Text+'"';
        ExecSQL;
        SQL.Text := 'select * from t_tindakanpenunjangrajal ';
        Open;
      end;

      with DataSimrs.qryt_detailtindakanpenunjangrajal do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'delete from t_detailtindakanpenunjangrajal where noTindakanPenunjangRajal="'+edtNoTindakanPermintaanLab.Text+'"';
        ExecSQL;
        SQL.Text := 'select * from t_detailtindakanpenunjangrajal ';
        Open;
      end;
      Close;
      ShowMessage('Penilaian Di Batalkan');
    end
    else
    Abort;
end;

procedure TFPermintaanLabRajal.pnlKeluarClick(Sender: TObject);
begin
  batalPermintaan;
end;

procedure TFPermintaanLabRajal.FormShow(Sender: TObject);
begin
  edtCari.Clear;
  awal;
  UmurThnBlnHari;
  dtlTndPenunjang;
  if edtAsalRuang.Text = 'IGD' then
  begin
    with DataSimrs.qryvw_tindakanlab do
    begin
      Close;
      SQL.Clear;
      //SQL.Text := 'select * from vw_tindakanlab where kelas="KELAS I"';
      SQL.Text := 'SELECT t_tindakan2.kdTindakan,t_tindakan2.tindakan,'+
                  't_tindakan2.kdKelompokTindakan,t_kelompoktindakan.kelompokTindakan,'+
                  't_tariftindakan2.kdTarif,t_tariftindakan2.kdKelas,t_tariftindakan2.tarif,'+
                  't_kelas.kelas FROM t_tindakan2 INNER JOIN t_kelompoktindakan '+
                  'ON t_tindakan2.kdKelompokTindakan = t_kelompoktindakan.kdKelompokTindakan INNER JOIN t_tariftindakan2 '+
                  'ON t_tindakan2.kdTindakan = t_tariftindakan2.kdTindakan INNER JOIN t_kelas '+
                  'ON t_tariftindakan2.kdKelas = t_kelas.kdKelas WHERE (t_tindakan2.kdKelompokTindakan in (15,16,17,18,19,20,21,22,23,24,59))and t_kelas.kelas="KELAS I" ';
      Open;
    end;
  end
  else
  begin
    with DataSimrs.qryvw_tindakanlab do
    begin
      Close;
      SQL.Clear;
      //SQL.Text := 'select * from vw_tindakanlab where kelas="KELAS I"';
      SQL.Text := 'SELECT t_tindakan2.kdTindakan,t_tindakan2.tindakan,'+
                  't_tindakan2.kdKelompokTindakan,t_kelompoktindakan.kelompokTindakan,'+
                  't_tariftindakan2.kdTarif,t_tariftindakan2.kdKelas,t_tariftindakan2.tarif,'+
                  't_kelas.kelas FROM t_tindakan2 INNER JOIN t_kelompoktindakan '+
                  'ON t_tindakan2.kdKelompokTindakan = t_kelompoktindakan.kdKelompokTindakan INNER JOIN t_tariftindakan2 '+
                  'ON t_tindakan2.kdTindakan = t_tariftindakan2.kdTindakan INNER JOIN t_kelas '+
                  'ON t_tariftindakan2.kdKelas = t_kelas.kdKelas WHERE (t_tindakan2.kdKelompokTindakan in (15,16,17,18,19,20,21,22,23,24,59)) and t_kelas.kelas="KELAS III" ';
      Open;
    end;
  end;
end;

procedure TFPermintaanLabRajal.edtCariChange(Sender: TObject);
begin
if edtCari.Text = '' then
  begin
    if edtAsalRuang.Text = 'IGD' then
    begin
       with DataSimrs.qryvw_tindakanlab do
        begin
          Close;
          SQL.Clear;
          //SQL.Text := 'select * from vw_tindakanlab where kelas="KELAS I"';
          SQL.Text := 'SELECT t_tindakan2.kdTindakan,t_tindakan2.tindakan,'+
                      't_tindakan2.kdKelompokTindakan,t_kelompoktindakan.kelompokTindakan,'+
                      't_tariftindakan2.kdTarif,t_tariftindakan2.kdKelas,t_tariftindakan2.tarif,'+
                      't_kelas.kelas FROM t_tindakan2 INNER JOIN t_kelompoktindakan '+
                      'ON t_tindakan2.kdKelompokTindakan = t_kelompoktindakan.kdKelompokTindakan INNER JOIN t_tariftindakan2 '+
                      'ON t_tindakan2.kdTindakan = t_tariftindakan2.kdTindakan INNER JOIN t_kelas '+
                      'ON t_tariftindakan2.kdKelas = t_kelas.kdKelas WHERE (t_tindakan2.kdKelompokTindakan in (15,16,17,18,19,20,21,22,23,24,59)) and t_kelas.kelas="KELAS I" ';
          Open;
        end;
    end
  else
  begin
    with DataSimrs.qryvw_tindakanlab do
    begin
      Close;
      SQL.Clear;
      //SQL.Text := 'select * from vw_tindakanlab where kelas="KELAS I"';
      SQL.Text := 'SELECT t_tindakan2.kdTindakan,t_tindakan2.tindakan,'+
                  't_tindakan2.kdKelompokTindakan,t_kelompoktindakan.kelompokTindakan,'+
                  't_tariftindakan2.kdTarif,t_tariftindakan2.kdKelas,t_tariftindakan2.tarif,'+
                  't_kelas.kelas FROM t_tindakan2 INNER JOIN t_kelompoktindakan '+
                  'ON t_tindakan2.kdKelompokTindakan = t_kelompoktindakan.kdKelompokTindakan INNER JOIN t_tariftindakan2 '+
                  'ON t_tindakan2.kdTindakan = t_tariftindakan2.kdTindakan INNER JOIN t_kelas '+
                  'ON t_tariftindakan2.kdKelas = t_kelas.kdKelas WHERE (t_tindakan2.kdKelompokTindakan in (15,16,17,18,19,20,21,22,23,24,59)) and t_kelas.kelas="KELAS III" ';
      Open;
    end;
  end;
  end
  else
  begin
    if edtAsalRuang.Text = 'IGD' then
    begin
      with DataSimrs.qryvw_tindakanlab do
      begin
        with DataSimrs.qryvw_tindakanlab do
        begin
          Close;
          SQL.Clear;
          SQL.Text := 'SELECT t_tindakan2.kdTindakan,t_tindakan2.tindakan,'+
                      't_tindakan2.kdKelompokTindakan,t_kelompoktindakan.kelompokTindakan,'+
                      't_tariftindakan2.kdTarif,t_tariftindakan2.kdKelas,t_tariftindakan2.tarif,'+
                      't_kelas.kelas FROM t_tindakan2 INNER JOIN t_kelompoktindakan '+
                      'ON t_tindakan2.kdKelompokTindakan = t_kelompoktindakan.kdKelompokTindakan INNER JOIN t_tariftindakan2 '+
                      'ON t_tindakan2.kdTindakan = t_tariftindakan2.kdTindakan INNER JOIN t_kelas '+
                      'ON t_tariftindakan2.kdKelas = t_kelas.kdKelas WHERE (t_tindakan2.tindakan like "%'+edtCari.Text+'%") and (t_tindakan2.kdKelompokTindakan in (15,16,17,18,19,20,21,22,23,24,59)) and (t_kelas.kelas="KELAS I")  ';
          Open;
        end;
      end;
    end
    else
    begin
       with DataSimrs.qryvw_tindakanlab do
        begin
          Close;
          SQL.Clear;
          SQL.Text := 'SELECT t_tindakan2.kdTindakan,t_tindakan2.tindakan,'+
                      't_tindakan2.kdKelompokTindakan,t_kelompoktindakan.kelompokTindakan,'+
                      't_tariftindakan2.kdTarif,t_tariftindakan2.kdKelas,t_tariftindakan2.tarif,'+
                      't_kelas.kelas FROM t_tindakan2 INNER JOIN t_kelompoktindakan '+
                      'ON t_tindakan2.kdKelompokTindakan = t_kelompoktindakan.kdKelompokTindakan INNER JOIN t_tariftindakan2 '+
                      'ON t_tindakan2.kdTindakan = t_tariftindakan2.kdTindakan INNER JOIN t_kelas '+
                      'ON t_tariftindakan2.kdKelas = t_kelas.kdKelas WHERE (t_tindakan2.tindakan like "%'+edtCari.Text+'%") and (t_tindakan2.kdKelompokTindakan in (15,16,17,18,19,20,21,22,23,24,59)) and (t_kelas.kelas="KELAS III") ';
          Open;
        end;
    end;
  end;
end;

procedure TFPermintaanLabRajal.btnInputClick(Sender: TObject);
var
  i,jml:Integer;
  tarif,total:Double;
begin
if (cbbDokter.Text = '') or (cxmKeterangan.Text='') then
  ShowMessage('Data Harus Di Isi Lengkap...!')
else
begin
  if dbgrdhTindakanLab.SelectedRows.Count =0 then
  begin
    messageDlg('Tidak Ada data yang di pilih!!',mtwarning,[mbOK],0);
    exit;
  end;

    if dbgrdhTindakanLab.SelectedRows.Count >0 then
    begin
      ///proses detail tindakan penunjang
      
      with dbgrdhTindakanLab.DataSource.DataSet do
      begin
      for i:=0 to dbgrdhTindakanLab.selectedrows.Count -1 do
      begin
      gotobookmark(pointer(dbgrdhTindakanLab.SelectedRows.Items[i]));
      DataSimrs.qryt_detailtindakanpenunjangrajal.Open;
      DataSimrs.qryt_detailtindakanpenunjangrajal.Append;
      DataSimrs.qryt_detailtindakanpenunjangrajal['noTindakanPenunjangRajal']:=edtNoTindakanPermintaanLab.Text;
      DataSimrs.qryt_detailtindakanpenunjangrajal['kdTarif']:=DataSimrs.qryvw_tindakanlab['kdTarif'];
      DataSimrs.qryt_detailtindakanpenunjangrajal['tindakan']:=DataSimrs.qryvw_tindakanlab['tindakan'];
      DataSimrs.qryt_detailtindakanpenunjangrajal['tarif']:=DataSimrs.qryvw_tindakanlab['tarif'];
      jml := StrToInt(IntToStr(1));
      tarif := DataSimrs.qryvw_tindakanlab['tarif'];
      total := jml*tarif;
      DataSimrs.qryt_detailtindakanpenunjangrajal['jumlahTindakan']:=jml;
      DataSimrs.qryt_detailtindakanpenunjangrajal['totalTarif']:=total;
      DataSimrs.qryt_detailtindakanpenunjangrajal['kdTenagaMedis']:=cbbDokter.EditValue;
      DataSimrs.qryt_detailtindakanpenunjangrajal['statusTindakan']:= 'PERMINTAAN';
      DataSimrs.qryt_detailtindakanpenunjangrajal.post;
      end;
      end;
      dtlTndPenunjang;

      ///proses  data t_tindakanpenujangrajal
      if DataSimrs.qryt_tindakanpenunjangrajal.Locate('noTindakanPenunjangRajal',edtNoTindakanPermintaanLab.Text,[])  then
        begin
          with DataSimrs.qryt_tindakanpenunjangrajal do
          begin
            Edit;
            FieldByName('noTindakanPenunjangRajal').AsString := edtNoTindakanPermintaanLab.Text;
            FieldByName('noRegistrasiPenunjangRajal').AsString := edtNoRegistrasiLab.Text;
            FieldByName('tglTindakanPenunjangRajal').AsDateTime := dtpTglPermintaan.DateTime;
            FieldByName('totalTindakanPenunjangRajal').AsFloat := StrToFloat(FloatToStr(dbgrdhTindakanPermintaanLab.columns[4].Footer.SumValue));
            FieldByName('statusPembayaran').AsString := 'BELUM LUNAS';
            Post;
          end;
          with DataSimrs.qryt_tindakanpenunjangrajal do
          begin
            Close;
            SQL.Clear;
            SQL.Text := 'select * from t_tindakanpenunjangrajal';
            Open;
          end;
        end
        else
        begin
          with DataSimrs.qryt_tindakanpenunjangrajal do
          begin
            Append;
            FieldByName('noTindakanPenunjangRajal').AsString := edtNoTindakanPermintaanLab.Text;
            FieldByName('noRegistrasiPenunjangRajal').AsString := edtNoRegistrasiLab.Text;
            FieldByName('tglTindakanPenunjangRajal').AsDateTime := dtpTglPermintaan.DateTime;
            FieldByName('totalTindakanPenunjangRajal').AsFloat := StrToFloat(FloatToStr(dbgrdhTindakanPermintaanLab.columns[4].Footer.SumValue));
            FieldByName('statusPembayaran').AsString := 'BELUM LUNAS';
            Post;
          end;
          with DataSimrs.qryt_tindakanpenunjangrajal do
          begin
            Close;
            SQL.Clear;
            SQL.Text := 'select * from t_tindakanpenunjangrajal';
            Open;
          end;
        end;

      
      application.messagebox('SUKSES...!','INFORMASI',mb_ok);

    end;

end
end;

procedure TFPermintaanLabRajal.btnHapusClick(Sender: TObject);
begin
{if DataSimrs.qryvw_detailtindakanpenunjangrajal.RecordCount >= 1 then
begin
 MessageDlg('Tidak ada data yang ditandai...',mtWarning,[mbOK],0);
 Exit;
end;
DataSimrs.qryt_detailtindakanpenunjangrajal.Delete;
dtlTndPenunjang;}
if DataSimrs.qryvw_detailtindakanpenunjangrajal.RecordCount >= 1 then
begin
DataSimrs.qryt_detailtindakanpenunjangrajal.Delete;
dtlTndPenunjang
end
else
Abort;
end;
procedure TFPermintaanLabRajal.btnSelesaiClick(Sender: TObject);
begin
if (cxmKeterangan.Text='') then
  MessageDlg('Data Harus Di Isi Lengkap...!',mtInformation,[mbok],0)
else
begin
  with DataSimrs.qryt_registrasipenunjangrajal do
  begin
    Append;
      FieldByName('noRegistrasiPenunjangRajal').AsString := edtNoRegistrasiLab.Text;
      FieldByName('noDaftar').AsString := edtNoRegistrasi.Text;
      FieldByName('kdUnitAsal').AsString := edtKode.Text;
      FieldByName('unitAsal').AsString := edtAsalRuang.Text;
      FieldByName('kdUnit').AsString := '3002';
      FieldByName('unit').AsString := 'Laboratorium';
      FieldByName('tglMasukPenunjangRajal').AsDateTime := dtpTglPermintaan.DateTime;
      FieldByName('statusPenunjang').AsString := 'PERMINTAAN';
      FieldByName('kdTenagaMedisPengirim').AsString := cbbDokter.EditValue;
      FieldByName('ketKlinis').AsString := cxmKeterangan.Text;
    Post;

    Close;
    SQL.Clear;
    SQL.Text := 'select * from t_registrasipenunjangrajal';
    Open;
  end;
  ShowMessage('PERMINTAAN LABORATORIUM BERHASIL...!');
  Close;
end;
end;

end.
