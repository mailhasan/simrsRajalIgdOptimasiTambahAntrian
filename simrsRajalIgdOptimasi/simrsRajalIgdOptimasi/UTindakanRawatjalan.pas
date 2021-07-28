unit UTindakanRawatjalan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxControls, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, DBGridEhGrouping, GridsEh, DBGridEh, Mask, DBCtrlsEh,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, StdCtrls, Buttons, cxButtons, ExtCtrls, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, DBAxisGridsEh, ComCtrls;

type
  TFTindakanRawatjalan = class(TForm)
    pnlAtas: TPanel;
    pnlKeluar: TPanel;
    pnlBawah: TPanel;
    btnSelesai: TButton;
    btnHapus: TButton;
    btnTambah: TcxButton;
    btnCariTindakan: TButton;
    btnMasukTindakan: TButton;
    pnlTegah: TPanel;
    dbgrdhTindakanTarifRajal: TDBGridEh;
    grpNoTransaksi: TGroupBox;
    lblTindakan: TLabel;
    lblNoTransakasi: TLabel;
    lblTarif: TLabel;
    lblJumlah: TLabel;
    lblTotal: TLabel;
    lblPelaksana: TLabel;
    lblKode: TLabel;
    btnNoTransaksi: TSpeedButton;
    edtNoTransaksiTindakanRajal: TEdit;
    cbbTindakan: TcxLookupComboBox;
    edtTarif: TEdit;
    edtTotal: TEdit;
    btnInput: TButton;
    cbbPelaksana: TcxLookupComboBox;
    edtJumlah: TDBNumberEditEh;
    edtKode: TEdit;
    grp1: TGroupBox;
    lblNoRm: TLabel;
    edtNoRmTndk: TEdit;
    lblNoRegistrasi: TLabel;
    edtNoRegistrasiTndk: TEdit;
    lblAsalPasien: TLabel;
    edtTempatLahirTndk: TEdit;
    dtpTglLahirTndk: TDateTimePicker;
    lblTglLahir: TLabel;
    edtNoRajalTndk: TEdit;
    lblNoRajal: TLabel;
    edtNmPasienTndk: TEdit;
    lblNmPasien: TLabel;
    edtUmurTndk: TEdit;
    lblUmur: TLabel;
    edtAlamatTndk: TEdit;
    lblAlamat: TLabel;
    edtPenjaminTndk: TEdit;
    lblPenjamin: TLabel;
    lblDokter1: TLabel;
    edtDokterTndk: TEdit;
    edtJkTndk: TEdit;
    lblJk: TLabel;
    lbl1: TLabel;
    lblPOLI: TLabel;
    procedure btnSelesaiClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbbTindakanKeyPress(Sender: TObject; var Key: Char);
    procedure edtJumlahKeyPress(Sender: TObject; var Key: Char);
    procedure cbbPelaksanaKeyPress(Sender: TObject; var Key: Char);
    procedure btnInputClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure btnMasukTindakanClick(Sender: TObject);
    procedure edtJumlahClick(Sender: TObject);
    procedure btnNoTransaksiClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure noTrajal;
    procedure awal;
    procedure detailTampilTindakan;
  end;

var
  FTindakanRawatjalan: TFTindakanRawatjalan;
  tarif,subTotal: Double;
  jumlah : Integer;
  tglTindakan :String;

implementation

{$R *.dfm}
uses UDataSImrs,URajalIgd, UMasukanTindakanRawatJalan,UHistoriTndkRajal, ADODB, DB, Math;

procedure TFTindakanRawatJalan.noTrajal;
begin
  with DataSimrs.qryt_tindakanpasienrajal DO
  begin
    Active := True;
    SQL.Clear;
    SQL.Text := 'SELECT noTindakanPasienRajal from t_tindakanpasienrajal';
    Open;
  end;
  edtNoTransaksiTindakanRajal.Text :='TRJ'+FormatDateTime('ddMMYYHHmmss',Now)+'-'+IntToStr(DataSimrs.qryt_tindakanpasienrajal.RecordCount+1);
end;

procedure TFTindakanRawatJalan.awal;
begin
 
  detailTampilTindakan;

  edtTarif.Text := '';
  edtKode.Text := '';
  edtJumlah.Clear;
  edtTotal.Clear;
  //cbbTindakan.EditValue := '';
  cbbPelaksana.EditValue := '';
  cbbTindakan.Text := '';
  cbbTindakan.SetFocus;
  
  
  with DataSimrs.qryvw_tindakantarifrajalkelompok do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT t_tariftindakan2.kdTarif, t_tariftindakan2.kdTindakan,'+
              't_tindakan2.tindakan,t_tindakan2.kdKelompokTindakan,'+
              't_kelompoktindakan.kelompokTindakan,t_tariftindakan2.tarif,'+
              't_tindakanrawatjalankelompok.unit,'+
              't_tindakanrawatjalankelompok.idTindakanRawatjalanKelompok FROM t_tindakan2 INNER JOIN t_kelompoktindakan '+
              'ON t_tindakan2.kdKelompokTindakan = t_kelompoktindakan.kdKelompokTindakan INNER JOIN t_tariftindakan2 '+
              'ON t_tariftindakan2.kdTindakan = t_tindakan2.kdTindakan INNER JOIN t_tindakanrawatjalankelompok '+
              'ON t_tindakanrawatjalankelompok.kdTarif = t_tariftindakan2.kdTarif AND t_tindakanrawatjalankelompok.kdTindakan = t_tariftindakan2.kdTindakan WHERE t_tariftindakan2.kdKelas IN ("10", "18", "19") AND t_tindakanrawatjalankelompok.unit="'+FRawatJalanIgd.cbbUnitPelayanan.Text+'"';
    Open;
  end;

end;

procedure TFTindakanRawatJalan.detailTampilTindakan;
begin

  with DataSimrs.qryvw_detailtindakanpasienrajal do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT t_detailtindakanpasienrajal.idTindakanPasienRajal,'+
                't_detailtindakanpasienrajal.noTindakanPasienRajal,t_detailtindakanpasienrajal.kdTarif,'+
                't_detailtindakanpasienrajal.tindakan,t_detailtindakanpasienrajal.tarif,'+
                't_detailtindakanpasienrajal.jumlahTindakan,t_detailtindakanpasienrajal.totalTarif,'+
                't_detailtindakanpasienrajal.kdTenagaMedis,t_tenagamedis2.namapetugasMedis,'+
                't_kelompoktenagamedis.KelompokTenagaMedis,t_tindakanpasienrajal.noRegistrasiRawatJalan,'+
                't_registrasirawatjalan.noDaftar FROM t_detailtindakanpasienrajal INNER JOIN t_tenagamedis2 '+
                'ON t_detailtindakanpasienrajal.kdTenagaMedis = t_tenagamedis2.kdPetugasMedis INNER JOIN t_kelompoktenagamedis '+
                'ON t_tenagamedis2.kdKelompokTenagaMedis = t_kelompoktenagamedis.kdKelompokTenagaMedis INNER JOIN t_tindakanpasienrajal '+
                'ON t_detailtindakanpasienrajal.noTindakanPasienRajal = t_tindakanpasienrajal.noTindakanPasienRajal INNER JOIN t_registrasirawatjalan '+
                'ON t_registrasirawatjalan.noRegistrasiRawatJalan = t_tindakanpasienrajal.noRegistrasiRawatJalan where t_detailtindakanpasienrajal.noTindakanPasienRajal="'+edtNoTransaksiTindakanRajal.Text+'" ';
    Open;
  end;
  
end;


procedure TFTindakanRawatjalan.btnSelesaiClick(Sender: TObject);
begin
  Close;
end;

procedure TFTindakanRawatjalan.FormShow(Sender: TObject);
begin
with DataSimrs.qryt_tindakanpasienrajal do
begin
 Active := True;
 Close;
 SQL.Clear;
 SQL.Text := 'select * from t_tindakanpasienrajal where (noRegistrasiRawatJalan="'+FRawatJalanIgd.edtNoRajal.Text+'") and (tglTindakan BETWEEN "'+FormatDateTime('yyyy-MM-dd',Now)+'" and "'+FormatDateTime('yyyy-MM-dd',Now+1)+'")';
 Open;
end;
If DataSimrs.qryt_tindakanpasienrajal.RecordCount >=1 then
    begin
    edtNoTransaksiTindakanRajal.Text := DataSimrs.qryt_tindakanpasienrajal['noTindakanPasienRajal'];
    awal;
    end
    else
    begin
    noTrajal;
    awal;
    end;
end;

procedure TFTindakanRawatjalan.cbbTindakanKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    with DataSimrs.qryvw_tindakantarifrajalkelompok do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'SELECT t_tariftindakan2.kdTarif, t_tariftindakan2.kdTindakan,'+
                't_tindakan2.tindakan,t_tindakan2.kdKelompokTindakan,'+
                't_kelompoktindakan.kelompokTindakan,t_tariftindakan2.tarif,'+
                't_tindakanrawatjalankelompok.unit,'+
                't_tindakanrawatjalankelompok.idTindakanRawatjalanKelompok FROM t_tindakan2 INNER JOIN t_kelompoktindakan '+
                'ON t_tindakan2.kdKelompokTindakan = t_kelompoktindakan.kdKelompokTindakan INNER JOIN t_tariftindakan2 '+
                'ON t_tariftindakan2.kdTindakan = t_tindakan2.kdTindakan INNER JOIN t_tindakanrawatjalankelompok '+
                'ON t_tindakanrawatjalankelompok.kdTarif = t_tariftindakan2.kdTarif AND t_tindakanrawatjalankelompok.kdTindakan = t_tariftindakan2.kdTindakan WHERE t_tindakan2.tindakan="'+cbbTindakan.EditValue+'"';
      Open;
    end;

    if cbbTindakan.EditValue = DataSimrs.qryvw_tindakantarifrajalkelompok['tindakan'] then
    begin
      cbbTindakan.EditValue := DataSimrs.qryvw_tindakantarifrajalkelompok['tindakan'];
      edtKode.Text :=  DataSimrs.qryvw_tindakantarifrajalkelompok['kdTarif'];
      edtTarif.Text :=  DataSimrs.qryvw_tindakantarifrajalkelompok['tarif'];
      edtJumlah.Text := IntToStr(1);
      subTotal := StrToFloat(edtTarif.Text)*StrToInt(edtJumlah.Text);
      edtTotal.Text := FloatToStr(subTotal);
      edtJumlah.SetFocus;
      //edtTotal.Text := FloatToStr(edtTarif.Text) *(edtTotal.Text);

      with DataSimrs.qryvw_tindakantarifrajalkelompok do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'SELECT t_tariftindakan2.kdTarif, t_tariftindakan2.kdTindakan,'+
                  't_tindakan2.tindakan,t_tindakan2.kdKelompokTindakan,'+
                  't_kelompoktindakan.kelompokTindakan,t_tariftindakan2.tarif,'+
                  't_tindakanrawatjalankelompok.unit,'+
                  't_tindakanrawatjalankelompok.idTindakanRawatjalanKelompok FROM t_tindakan2 INNER JOIN t_kelompoktindakan '+
                  'ON t_tindakan2.kdKelompokTindakan = t_kelompoktindakan.kdKelompokTindakan INNER JOIN t_tariftindakan2 '+
                  'ON t_tariftindakan2.kdTindakan = t_tindakan2.kdTindakan INNER JOIN t_tindakanrawatjalankelompok '+
                  'ON t_tindakanrawatjalankelompok.kdTarif = t_tariftindakan2.kdTarif AND t_tindakanrawatjalankelompok.kdTindakan = t_tariftindakan2.kdTindakan WHERE t_tariftindakan2.kdKelas IN ("10", "18", "19") AND t_tindakanrawatjalankelompok.unit="'+FRawatJalanIgd.cbbUnitPelayanan.Text+'"';
        Open;
      end;
      
    end
    else
    awal;
 end;
end;

procedure TFTindakanRawatjalan.edtJumlahKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
  //edtJumlah.Text := IntToStr(1);
  subTotal := StrToFloat(edtTarif.Text)*StrToInt(edtJumlah.Text);
  edtTotal.Text := FloatToStr(subTotal);
  cbbPelaksana.SetFocus;
  end
end;

procedure TFTindakanRawatjalan.cbbPelaksanaKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  btnInput.SetFocus;
end;

procedure TFTindakanRawatjalan.btnInputClick(Sender: TObject);
var
  totalTindakan,totalTindakan1:Double;
begin
if (cbbTindakan.Text='') or (edtTarif.Text='') or (edtJumlah.Text = '') or (cbbPelaksana.Text='') then
  ShowMessage('Mohon Data Di Isi Lengkap...!')
  else
  begin
    tglTindakan := FormatDateTime('yyyy-MM-dd hh:mm:ss',Now);

    /// tampil filter query tindakan pasien
    with DataSimrs.qryt_tindakanpasienrajal do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from t_tindakanpasienrajal where noTindakanPasienRajal="'+edtNoTransaksiTindakanRajal.Text+'"';
      Open;
    end;

    /// pengujian jika sudah ada no tindakan
     if DataSimrs.qryt_tindakanpasienrajal.Locate('noTindakanPasienRajal',edtNoTransaksiTindakanRajal.Text,[])  then
     begin
        /// insert di t_detailtindakanpasienrajal
        with DataSimrs.qryt_detailtindakanpasienrajal do
        begin
          Close;
          SQL.Clear;
          SQL.Text := 'insert into t_detailtindakanpasienrajal (noTindakanPasienRajal,kdTarif,'+
                      'tindakan,tarif,jumlahTindakan,totalTarif,kdTenagaMedis) values '+
                      '("'+edtNoTransaksiTindakanRajal.Text+'","'+edtKode.Text+'",'+
                      '"'+cbbTindakan.EditValue+'","'+edtTarif.Text+'","'+edtJumlah.Text+'",'+
                      '"'+edtTotal.Text+'","'+cbbPelaksana.EditValue+'")';
          ExecSQL;
          SQL.Text := 'select * from t_detailtindakanpasienrajal ';
          Open;
        end;

        //panggil procedure detail tampil tindakan
        detailTampilTindakan;
        /// tampil variabel total tindakan
        totalTindakan := dbgrdhTindakanTarifRajal.columns[3].Footer.SumValue;

        /// update data di tabel t_tindakanpasienrajal
        with DataSimrs.qryt_tindakanpasienrajal do
        begin
          Close;
          SQL.Clear;
          SQL.Text := 'update t_tindakanpasienrajal set noTindakanPasienRajal="'+edtNoTransaksiTindakanRajal.Text+'",'+
                      'noRegistrasiRawatJalan="'+edtNoRajalTndk.Text+'",tglTindakan="'+tglTindakan+'",'+
                      'totalTarifTindakan= "'+FloatToStr(totalTindakan)+'",statusPembayaran="BELUM LUNAS" where noTindakanPasienRajal="'+edtNoTransaksiTindakanRajal.Text+'"';
          ExecSQL;
          SQL.Text := 'select * from t_tindakanpasienrajal';
          Open;
        end;
        /// panggil procedure awal
        awal;

     end

     else
     begin
        /// insert di t_detailtindakanpasienrajal
        with DataSimrs.qryt_detailtindakanpasienrajal do
        begin
          Close;
          SQL.Clear;
          SQL.Text := 'insert into t_detailtindakanpasienrajal (noTindakanPasienRajal,kdTarif,'+
                      'tindakan,tarif,jumlahTindakan,totalTarif,kdTenagaMedis) values '+
                      '("'+edtNoTransaksiTindakanRajal.Text+'","'+edtKode.Text+'",'+
                      '"'+cbbTindakan.EditValue+'","'+edtTarif.Text+'",'+
                      '"'+edtJumlah.Text+'","'+edtTotal.Text+'","'+cbbPelaksana.EditValue+'")';
          ExecSQL;
          SQL.Text := 'select * from t_detailtindakanpasienrajal ';
          Open;
        end;
        
        /// panggil procedure detail tindakan
        detailTampilTindakan;

        /// panggil query di untuk total tarif
        with DataSimrs.qryt_detailtindakanpasienrajal do
        begin
          Close;
          SQL.Clear;
          SQL.Text := 'SELECT SUM(totalTarif) as subTotal from t_detailtindakanpasienrajal where noTindakanPasienRajal="'+edtNoTransaksiTindakanRajal.Text+'"';
          Open;
        end;

        totalTindakan1 := DataSimrs.qryt_detailtindakanpasienrajal.Fields[0].AsFloat;

        /// insert data di tabel tindakanpasienrajal
        
        with DataSimrs.qryt_tindakanpasienrajal do
        begin
          Close;
          SQL.Clear;
          SQL.Text := 'insert into t_tindakanpasienrajal (noTindakanPasienRajal,noRegistrasiRawatJalan,'+
                      'tglTindakan,totalTarifTindakan,statusPembayaran) values ("'+edtNoTransaksiTindakanRajal.Text+'",'+
                      '"'+edtNoRajalTndk.Text+'",'+
                      '"'+tglTindakan+'",'+
                      '"'+FloatToStr(totalTindakan1)+'","BELUM LUNAS")';
          ExecSQL;
          SQL.Text := 'select * from t_tindakanpasienrajal';
          Open;
        end;

        awal;
     end;

  end;
end;

procedure TFTindakanRawatjalan.btnHapusClick(Sender: TObject);
var
  kode,nOTrsTndk:String;
begin
if DataSimrs.qryvw_detailtindakanpasienrajal.RecordCount<=0 then
  ShowMessage('Data Tidak ada ') else
  begin
  if MessageDlg('Anda Ingin Menghapus Data "'+DataSimrs.qryvw_detailtindakanpasienrajal['tindakan']+'" ?', mtConfirmation,[mbyes,mbno],0)=mryes then
  begin

    Kode := DataSimrs.qryvw_detailtindakanpasienrajal['idTindakanPasienRajal'];
    nOTrsTndk := DataSimrs.qryvw_detailtindakanpasienrajal['noTindakanPasienRajal'];

    /// hapus tindakan
    {with DataSimrs.qryt_tindakanpenunjangrajal do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'SELECT noTindakanPasienRajal,kdTarif,tindakan,tarif,jumlahTindakan,totalTarif FROM `t_detailtindakanpasienrajal` where noTindakanPasienRajal="'+kode+'" ';
      Open;
    end;
    with DataSimrs.qryt_detailtindakanpasienrajalhapus do
    begin
    Close;
    SQL.Clear;
    SQL.Text := 'insert into t_detailtindakanpasienrajalhapus (noTindakanPasienRajal,kdTarif,tindakan,tarif,jumlahTindakan,totalTarif)  values'+
                '("'+DataSimrs.qryt_tindakanpasienrajal['noTindakanPasienRajal']+'","'+DataSimrs.qryt_tindakanpasienrajal['kdTarif']+'","'+DataSimrs.qryt_tindakanpasienrajal['tindakan']+'"'+
                '"'+DataSimrs.qryt_tindakanpasienrajal['tarif']+'","'+DataSimrs.qryt_tindakanpasienrajal['jumlahTindakan']+'","'+DataSimrs.qryt_tindakanpasienrajal['totalTarif']+'")';
    ExecSQL;
    SQL.Text := 'select * from t_detailtindakanpasienrajalhapus';
    Open;
    end;}

    with DataSimrs.qryvw_detailtindakanpasienrajal do
    begin
    Close;
    SQL.Text:='DELETE from t_detailtindakanpasienrajal WHERE idTindakanPasienRajal="'+Kode+'"';
    ExecSQL;
    SQL.Text:= 'select * from t_detailtindakanpasienrajal';
    Open;
    end;

    detailTampilTindakan;

    with DataSimrs.qryt_tindakanpasienrajal do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'update t_tindakanpasienrajal set totalTarifTindakan= "'+FloatToStr(dbgrdhTindakanTarifRajal.columns[3].Footer.SumValue)+'" where noTindakanPasienRajal="'+nOTrsTndk+'"';
      ExecSQL;
      SQL.Text := 'select * from t_tindakanpasienrajal';
      Open;
    end;

  end

  else
  abort;
  end;
end;

procedure TFTindakanRawatjalan.btnTambahClick(Sender: TObject);
begin
with DataSimrs.qryt_tindakanpasienrajal do
begin
 Active := True;
 Close;
 SQL.Clear;
 SQL.Text := 'select * from t_tindakanpasienrajal where (noRegistrasiRawatJalan="'+edtNoRajalTndk.Text+'") and (tglTindakan BETWEEN "'+FormatDateTime('yyyy-MM-dd',Now)+'" and "'+FormatDateTime('yyyy-MM-dd',Now+1)+'")';
 Open;
end;
If DataSimrs.qryt_tindakanpasienrajal.RecordCount >=1 then
    begin
    edtNoTransaksiTindakanRajal.Text := DataSimrs.qryt_tindakanpasienrajal['noTindakanPasienRajal'];
    awal;
    end
    else
    begin
    noTrajal;
    awal;
    end;
end;

procedure TFTindakanRawatjalan.btnMasukTindakanClick(Sender: TObject);
begin
  FMasukanTindakanRawatJalan.Show;
end;

procedure TFTindakanRawatjalan.edtJumlahClick(Sender: TObject);
begin
  ShowMessage('Silahkan Di Enter Saja...!');
  edtJumlah.Text;
end;

procedure TFTindakanRawatjalan.btnNoTransaksiClick(Sender: TObject);
begin
with FHistoriTndkRajal Do
begin
  lblNoRegisPasien.Caption := edtNoRajalTndk.Text;
  Show;
end;
end;

end.
