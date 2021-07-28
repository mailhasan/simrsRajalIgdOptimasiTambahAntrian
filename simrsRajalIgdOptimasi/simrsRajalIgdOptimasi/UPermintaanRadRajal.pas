unit UPermintaanRadRajal;

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
  DBGridEhGrouping, GridsEh, DBGridEh, Buttons, cxMemo, cxLabel,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, DBAxisGridsEh;

type
  TFPermintaanRadRajal = class(TForm)
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
    lblCaraBayar: TLabel;
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
  FPermintaanRadRajal: TFPermintaanRadRajal;
  iThn, iBln, iHari: Word;
implementation

{$R *.dfm}

uses UDataSImrs,DB, ADODB, DateUtils, Math,URajalIgd;

procedure TFPermintaanRadRajal.awal;
begin
  with DataSimrs.qryt_registrasiradiologirajal do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select noRegistrasiRadiologiRajal from t_registrasiradiologirajal';
    Open;
  end;

  with DataSimrs.qryt_tindakanradiologirajal do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select noTindakanRadiologiRajal from t_tindakanradiologirajal';
    Open;
  end;

  edtNoRegistrasiLab.Text :='RJRAD'+FormatDateTime('ddMMYYHHmmss',Now)+'-'+IntToStr(DataSimrs.qryt_registrasiradiologirajal.RecordCount+1);
  edtNoTindakanPermintaanLab.Text :='TRAD'+FormatDateTime('ddMMYYHHmmss',Now)+'-'+IntToStr(DataSimrs.qryt_tindakanradiologirajal.RecordCount+1);
  dtpTglPermintaan.DateTime := Now;
end;


procedure TFPermintaanRadRajal.dtlTndPenunjang;
begin
  with DataSimrs.qryvw_detailtindakanradiologirajal do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT t_detailtindakanradiologirajal.noTindakanRadiologiRajal,'+
                't_detailtindakanradiologirajal.kdTarif,t_detailtindakanradiologirajal.tindakan,'+
                't_detailtindakanradiologirajal.tarif,t_detailtindakanradiologirajal.jumlahTindakan,'+
                't_detailtindakanradiologirajal.totalTarif,'+
                't_tenagamedis2.namapetugasMedis FROM t_detailtindakanradiologirajal INNER JOIN t_tenagamedis2 '+
                'ON t_detailtindakanradiologirajal.kdTenagaMedis = t_tenagamedis2.kdPetugasMedis where t_detailtindakanradiologirajal.noTindakanRadiologiRajal="'+edtNoTindakanPermintaanLab.Text+'"';
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

procedure TFPermintaanRadRajal.UmurThnBlnHari;
var
  sTgl, LTgl : TDateTime;
begin
  sTgl := Date;
  LTgl := dtpTglLahir.Date;
  umur(LTgl, sTgl);
  edtUmur.Text :=IntToStr(iThn)+' Tahun, '+IntToStr(iBln)+' Bulan, '+IntToStr(iHari)+' Hari';
end;

procedure TFPermintaanRadRajal.batalPermintaan;
begin
if MessageDlg('Apakah Anda Tidak Melanjutkan Permintaan Radiologi ?',mtConfirmation,[mbyes,mbno],0)=mrYes then
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
      with DataSimrs.qryt_tindakanradiologirajal do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'delete from t_tindakanradiologirajal where noTindakanRadiologiRajal="'+edtNoTindakanPermintaanLab.Text+'"';
        ExecSQL;
        SQL.Text := 'select * from t_tindakanradiologirajal ';
        Open;
      end;

      with DataSimrs.qryt_detailtindakanradiologirajal do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'delete from t_detailtindakanradiologirajal where noTindakanRadiologiRajal="'+edtNoTindakanPermintaanLab.Text+'"';
        ExecSQL;
        SQL.Text := 'select * from t_detailtindakanradiologirajal ';
        Open;
      end;
      Close;
      ShowMessage('Penilaian Di Batalkan');
    end
    else
    Abort;
end;

procedure TFPermintaanRadRajal.pnlKeluarClick(Sender: TObject);
begin
  batalPermintaan;
end;

procedure TFPermintaanRadRajal.FormShow(Sender: TObject);
begin
  edtCari.Clear;
  awal;
  UmurThnBlnHari;
  dtlTndPenunjang;
  if (FRawatJalanIgd.cbbUnitPelayanan.Text='IGD') then
  begin
    
   with DataSimrs.qryvw_tindakanrad do
   begin
      Close;
      SQL.Clear;
      SQL.Text := 'SELECT t_tindakan2.kdTindakan,t_tindakan2.tindakan,'+
                  't_tindakan2.kdKelompokTindakan,t_kelompoktindakan.kelompokTindakan,'+
                  't_tariftindakan2.kdTarif,t_tariftindakan2.kdKelas,t_tariftindakan2.tarif,'+
                  't_kelas.kelas FROM t_tindakan2 INNER JOIN t_kelompoktindakan '+
                  'ON t_tindakan2.kdKelompokTindakan = t_kelompoktindakan.kdKelompokTindakan INNER JOIN t_tariftindakan2 '+
                  'ON t_tindakan2.kdTindakan = t_tariftindakan2.kdTindakan INNER JOIN t_kelas '+
                  'ON t_tariftindakan2.kdKelas = t_kelas.kdKelas WHERE t_tindakan2.kdKelompokTindakan IN (26,27,28,29,57,61) and (kelas="KELAS II")';
      Open;
   end;
  end
  else
  begin
   with DataSimrs.qryvw_tindakanrad do
   begin
      Close;
      SQL.Clear;
      SQL.Text := 'SELECT t_tindakan2.kdTindakan,t_tindakan2.tindakan,'+
                  't_tindakan2.kdKelompokTindakan,t_kelompoktindakan.kelompokTindakan,'+
                  't_tariftindakan2.kdTarif,t_tariftindakan2.kdKelas,t_tariftindakan2.tarif,'+
                  't_kelas.kelas FROM t_tindakan2 INNER JOIN t_kelompoktindakan '+
                  'ON t_tindakan2.kdKelompokTindakan = t_kelompoktindakan.kdKelompokTindakan INNER JOIN t_tariftindakan2 '+
                  'ON t_tindakan2.kdTindakan = t_tariftindakan2.kdTindakan INNER JOIN t_kelas '+
                  'ON t_tariftindakan2.kdKelas = t_kelas.kdKelas WHERE t_tindakan2.kdKelompokTindakan IN (26,27,28,29,57,61) and (kelas="KELAS III")';
      Open;
   end;
  end;
end;

procedure TFPermintaanRadRajal.edtCariChange(Sender: TObject);
begin
if edtCari.Text = '' then
  begin
    if (edtAsalRuang.Text='IGD') then
    begin
    with DataSimrs.qryvw_tindakanrad do
     begin
        Close;
        SQL.Clear;
        SQL.Text := 'SELECT t_tindakan2.kdTindakan,t_tindakan2.tindakan,'+
                    't_tindakan2.kdKelompokTindakan,t_kelompoktindakan.kelompokTindakan,'+
                    't_tariftindakan2.kdTarif,t_tariftindakan2.kdKelas,t_tariftindakan2.tarif,'+
                    't_kelas.kelas FROM t_tindakan2 INNER JOIN t_kelompoktindakan '+
                    'ON t_tindakan2.kdKelompokTindakan = t_kelompoktindakan.kdKelompokTindakan INNER JOIN t_tariftindakan2 '+
                    'ON t_tindakan2.kdTindakan = t_tariftindakan2.kdTindakan INNER JOIN t_kelas '+
                    'ON t_tariftindakan2.kdKelas = t_kelas.kdKelas WHERE t_tindakan2.kdKelompokTindakan IN (26,27,28,29,57,61) and (t_kelas.kelas="KELAS II")';
        Open;
     end;
    end
    else
    begin
     with DataSimrs.qryvw_tindakanrad do
     begin
        Close;
        SQL.Clear;
        SQL.Text := 'SELECT t_tindakan2.kdTindakan,t_tindakan2.tindakan,'+
                    't_tindakan2.kdKelompokTindakan,t_kelompoktindakan.kelompokTindakan,'+
                    't_tariftindakan2.kdTarif,t_tariftindakan2.kdKelas,t_tariftindakan2.tarif,'+
                    't_kelas.kelas FROM t_tindakan2 INNER JOIN t_kelompoktindakan '+
                    'ON t_tindakan2.kdKelompokTindakan = t_kelompoktindakan.kdKelompokTindakan INNER JOIN t_tariftindakan2 '+
                    'ON t_tindakan2.kdTindakan = t_tariftindakan2.kdTindakan INNER JOIN t_kelas '+
                    'ON t_tariftindakan2.kdKelas = t_kelas.kdKelas WHERE t_tindakan2.kdKelompokTindakan IN (26,27,28,29,57,61) and (t_kelas.kelas="KELAS III")';
        Open;
     end;
    end;
  end
  else
  begin
    if (edtAsalRuang.Text='IGD') then
    begin
      with DataSimrs.qryvw_tindakanrad do
      begin
        Close;
        SQL.Clear;
        //SQL.Text := 'select * from vw_tindakanrad where kelas="KELAS III" and tindakan like "%'+edtCari.Text+'%"';
        SQL.Text := 'SELECT t_tindakan2.kdTindakan,t_tindakan2.tindakan,'+
                      't_tindakan2.kdKelompokTindakan,t_kelompoktindakan.kelompokTindakan,'+
                      't_tariftindakan2.kdTarif,t_tariftindakan2.kdKelas,t_tariftindakan2.tarif,'+
                      't_kelas.kelas FROM t_tindakan2 INNER JOIN t_kelompoktindakan '+
                      'ON t_tindakan2.kdKelompokTindakan = t_kelompoktindakan.kdKelompokTindakan INNER JOIN t_tariftindakan2 '+
                      'ON t_tindakan2.kdTindakan = t_tariftindakan2.kdTindakan INNER JOIN t_kelas '+
                      'ON t_tariftindakan2.kdKelas = t_kelas.kdKelas WHERE (t_tindakan2.tindakan like "%'+edtCari.Text+'%") and (t_tindakan2.kdKelompokTindakan IN (26,27,28,29,57,61)) and (t_kelas.kelas="KELAS II") ';
        Open;
      end;
    end
    else
    begin
      with DataSimrs.qryvw_tindakanrad do
      begin
        Close;
        SQL.Clear;
        //SQL.Text := 'select * from vw_tindakanrad where kelas="KELAS III" and tindakan like "%'+edtCari.Text+'%"';
        SQL.Text := 'SELECT t_tindakan2.kdTindakan,t_tindakan2.tindakan,'+
                      't_tindakan2.kdKelompokTindakan,t_kelompoktindakan.kelompokTindakan,'+
                      't_tariftindakan2.kdTarif,t_tariftindakan2.kdKelas,t_tariftindakan2.tarif,'+
                      't_kelas.kelas FROM t_tindakan2 INNER JOIN t_kelompoktindakan '+
                      'ON t_tindakan2.kdKelompokTindakan = t_kelompoktindakan.kdKelompokTindakan INNER JOIN t_tariftindakan2 '+
                      'ON t_tindakan2.kdTindakan = t_tariftindakan2.kdTindakan INNER JOIN t_kelas '+
                      'ON t_tariftindakan2.kdKelas = t_kelas.kdKelas WHERE (t_tindakan2.tindakan like "%'+edtCari.Text+'%") and (t_tindakan2.kdKelompokTindakan IN (26,27,28,29,57,61)) and (t_kelas.kelas="KELAS III") ';
        Open;
      end;
    end;
  end;
end;

procedure TFPermintaanRadRajal.btnInputClick(Sender: TObject);
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
      DataSimrs.qryt_detailtindakanradiologirajal.Open;
      DataSimrs.qryt_detailtindakanradiologirajal.Append;
      DataSimrs.qryt_detailtindakanradiologirajal.FieldByName('noTindakanRadiologiRajal').AsString:=edtNoTindakanPermintaanLab.Text;
      DataSimrs.qryt_detailtindakanradiologirajal.FieldByName('kdTarif').AsString:=DataSimrs.qryvw_tindakanrad['kdTarif'];
      DataSimrs.qryt_detailtindakanradiologirajal.FieldByName('tindakan').AsString:=DataSimrs.qryvw_tindakanrad['tindakan'];
      DataSimrs.qryt_detailtindakanradiologirajal.FieldByName('tarif').AsFloat:=DataSimrs.qryvw_tindakanrad.FieldByname('tarif').AsFloat;
      jml := StrToInt(IntToStr(1));
      tarif := DataSimrs.qryvw_tindakanrad.Fieldbyname('tarif').AsFloat;
      total := jml*tarif;
      DataSimrs.qryt_detailtindakanradiologirajal.FieldByName('jumlahTindakan').AsInteger:=jml;
      DataSimrs.qryt_detailtindakanradiologirajal.FieldByName('totalTarif').AsFloat:=total;
      DataSimrs.qryt_detailtindakanradiologirajal.FieldByName('kdTenagaMedis').AsString:=cbbDokter.EditValue;
      DataSimrs.qryt_detailtindakanradiologirajal.FieldByName('statusTindakan').AsString := 'PERMINTAAN';
      DataSimrs.qryt_detailtindakanradiologirajal.post;
      end;
      end;
      dtlTndPenunjang;

      ///proses  data t_tindakanpenujangrajal
      if DataSimrs.qryt_tindakanradiologirajal.Locate('noTindakanRadiologiRajal',edtNoTindakanPermintaanLab.Text,[])  then
        begin
          with DataSimrs.qryt_tindakanradiologirajal do
          begin
            Edit;
            FieldByName('noTindakanRadiologiRajal').AsString := edtNoTindakanPermintaanLab.Text;
            FieldByName('noRegistrasiRadiologiRajal').AsString := edtNoRegistrasiLab.Text;
            FieldByName('tglTindakanRadiologiRajal').AsDateTime := dtpTglPermintaan.DateTime;
            FieldByName('totalTindakanRadiologiRajal').AsFloat := StrToFloat(FloatToStr(dbgrdhTindakanPermintaanLab.columns[4].Footer.SumValue));
            FieldByName('statusPembayaran').AsString := 'BELUM LUNAS';
            Post;
          end;
          with DataSimrs.qryt_tindakanradiologirajal do
          begin
            Close;
            SQL.Clear;
            SQL.Text := 'select * from t_tindakanradiologirajal';
            Open;
          end;
        end
        else
        begin
          with DataSimrs.qryt_tindakanradiologirajal do
          begin
            Append;
            FieldByName('noTindakanRadiologiRajal').AsString := edtNoTindakanPermintaanLab.Text;
            FieldByName('noRegistrasiRadiologiRajal').AsString := edtNoRegistrasiLab.Text;
            FieldByName('tglTindakanRadiologiRajal').AsDateTime := dtpTglPermintaan.DateTime;
            FieldByName('totalTindakanRadiologiRajal').AsFloat := StrToFloat(FloatToStr(dbgrdhTindakanPermintaanLab.columns[4].Footer.SumValue));
            FieldByName('statusPembayaran').AsString := 'BELUM LUNAS';
            Post;
          end;
          with DataSimrs.qryt_tindakanradiologirajal do
          begin
            Close;
            SQL.Clear;
            SQL.Text := 'select * from t_tindakanradiologirajal';
            Open;
          end;
        end;

      
      application.messagebox('SUKSES...!','INFORMASI',mb_ok);

    end;

end
end;

procedure TFPermintaanRadRajal.btnHapusClick(Sender: TObject);
var
  idTindkPermintaanRad:Integer;
  tndk:String;
begin
{if DataSimrs.qryvw_detailtindakanpenunjangrajal.RecordCount >= 1 then
begin
 MessageDlg('Tidak ada data yang ditandai...',mtWarning,[mbOK],0);
 Exit;
end;
DataSimrs.qryt_detailtindakanpenunjangrajal.Delete;
dtlTndPenunjang;
idTindkPermintaanRad := DataSimrs.qryvw_detailtindakanradiologirajal['idTindakanRadiologiRajal'];

with DataSimrs.qryvw_detailtindakanradiologirajal do
begin
 Close;
 SQL.Clear;
 SQL.Text := 'select * from vw_detailtindakanradiologirajal where idTindakanRadiologiRajal="'+IntToStr(idTindkPermintaanRad)+'"';
 Open;
end;

if DataSimrs.qryvw_detailtindakanradiologirajal.RecordCount >= 1 then
begin
//DataSimrs.qryt_detailtindakanradiologirajal.Delete;
with DataSimrs.qryt_detailtindakanradiologirajal do
begin
 Close;
 SQL.Clear;
 SQL.Text := 'delete from t_detailtindakanradiologirajal where idTindakanRadiologiRajal="'+IntToStr(idTindkPermintaanRad)+'"';
 ExecSQL;
 SQL.Text := 'select * from t_detailtindakanradiologirajal';
 Open;
end;

dtlTndPenunjang
end
else
Abort;}
if DataSimrs.qryvw_detailtindakanradiologirajal.RecordCount <= 0 then
  ShowMessage('Data Tidak ada ') else
begin
  if MessageDlg('Anda Ingin Menghapus Data "'+DataSimrs.qryvw_detailtindakanradiologirajal['tindakan']+'" ?', mtConfirmation,[mbyes,mbno],0)=mryes then
  begin
    tndk := DataSimrs.qryvw_detailtindakanradiologirajal['tindakan'];

    with DataSimrs.qryvw_detailtindakanradiologirajal do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from vw_detailtindakanradiologirajal where noTindakanRadiologiRajal="'+edtNoTindakanPermintaanLab.Text+'" and tindakan="'+tndk+'"';
      Open;
    end;

    idTindkPermintaanRad:= DataSimrs.qryvw_detailtindakanradiologirajal['idTindakanRadiologiRajal'];
    with DataSimrs.qryt_detailtindakanradiologirajal do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'delete FROM  t_detailtindakanradiologirajal where idTindakanRadiologiRajal="'+IntToStr(idTindkPermintaanRad)+'"';
      ExecSQL;
      SQL.Text := 'select * from t_detailtindakanradiologirajal';
      Open;
    end;
    ///DataSimrs.qryt_detailtindakanpenunjangrajal.Delete;
    dtlTndPenunjang;

    ///proses  data t_tindakanpenujangrajal
      if DataSimrs.qryt_tindakanradiologirajal.Locate('noTindakanRadiologiRajal',edtNoTindakanPermintaanLab.Text,[])  then
        begin
          with DataSimrs.qryt_tindakanradiologirajal do
          begin
            Edit;
            FieldByName('noTindakanRadiologiRajal').AsString := edtNoTindakanPermintaanLab.Text;
            FieldByName('noRegistrasiRadiologiRajal').AsString := edtNoRegistrasiLab.Text;
            FieldByName('tglTindakanRadiologiRajal').AsDateTime := dtpTglPermintaan.DateTime;
            FieldByName('totalTindakanRadiologiRajal').AsFloat := StrToFloat(FloatToStr(dbgrdhTindakanPermintaanLab.columns[4].Footer.SumValue));
            FieldByName('statusPembayaran').AsString := 'BELUM LUNAS';
            Post;
          end;
          with DataSimrs.qryt_tindakanradiologirajal do
          begin
            Close;
            SQL.Clear;
            SQL.Text := 'select * from t_tindakanradiologirajal';
            Open;
          end;
        end
        else
        begin
          with DataSimrs.qryt_tindakanradiologirajal do
          begin
            Append;
            FieldByName('noTindakanRadiologiRajal').AsString := edtNoTindakanPermintaanLab.Text;
            FieldByName('noRegistrasiRadiologiRajal').AsString := edtNoRegistrasiLab.Text;
            FieldByName('tglTindakanRadiologiRajal').AsDateTime := dtpTglPermintaan.DateTime;
            FieldByName('totalTindakanRadiologiRajal').AsFloat := StrToFloat(FloatToStr(dbgrdhTindakanPermintaanLab.columns[4].Footer.SumValue));
            FieldByName('statusPembayaran').AsString := 'BELUM LUNAS';
            Post;
          end;
          with DataSimrs.qryt_tindakanradiologirajal do
          begin
            Close;
            SQL.Clear;
            SQL.Text := 'select * from t_tindakanradiologirajal';
            Open;
          end;
        end;

  end
  else
  Abort;
end;


end;

procedure TFPermintaanRadRajal.btnSelesaiClick(Sender: TObject);
begin
if (cxmKeterangan.Text='') then
  MessageDlg('Data Harus Di Isi Lengkap...!',mtInformation,[mbok],0)
else
begin
  with DataSimrs.qryt_registrasiradiologirajal do
  begin
    Append;
      FieldByName('noRegistrasiRadiologiRajal').AsString := edtNoRegistrasiLab.Text;
      FieldByName('noDaftar').AsString := edtNoRegistrasi.Text;
      FieldByName('kdUnitAsal').AsString := edtKode.Text;
      FieldByName('unitAsal').AsString := edtAsalRuang.Text;
      FieldByName('kdUnit').AsString := '3001';
      FieldByName('unit').AsString := 'Radiologi';
      FieldByName('tglMasukRadiologiRajal').AsDateTime := dtpTglPermintaan.DateTime;
      FieldByName('statusRadiologi').AsString := 'PERMINTAAN';
      FieldByName('kdTenagaMedisPengirim').AsString := cbbDokter.EditValue;
      FieldByName('keterangan').AsString := cxmKeterangan.Text;
    Post;

    Close;
    SQL.Clear;
    SQL.Text := 'select * from t_registrasiradiologirajal';
    Open;
  end;
  ShowMessage('PERMINTAAN RADIOLOGI BERHASIL...!');
  Close;
end;
end;

end.
