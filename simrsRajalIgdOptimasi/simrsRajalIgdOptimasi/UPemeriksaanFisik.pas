unit UPemeriksaanFisik;

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
  dxSkinXmas2008Blue, DBGridEhGrouping, StdCtrls, GridsEh, DBGridEh,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, ExtCtrls;

type
  TFPemeriksaanFisik = class(TForm)
    pnlTengah: TPanel;
    pnlBawah: TPanel;
    btnSelesai: TButton;
    btnSimpan: TButton;
    btnTambah: TButton;
    btnHapus: TButton;
    pnlAtas: TPanel;
    pnlKeluar: TPanel;
    grpPemeriksaanFisik: TGroupBox;
    pnlAtas1: TPanel;
    grpPemeriksanVital: TGroupBox;
    lblBB: TLabel;
    lblKG: TLabel;
    lblTb: TLabel;
    lblCm: TLabel;
    lblNadi: TLabel;
    lblSuhu: TLabel;
    lblxm: TLabel;
    lblDerajat: TLabel;
    lblRespirasi: TLabel;
    lblxm1: TLabel;
    lblTekDarah: TLabel;
    edtBb: TEdit;
    edtTb: TEdit;
    edtNadi: TEdit;
    edtSuhu: TEdit;
    edtRespirasi: TEdit;
    edtTekDarah: TEdit;
    lblMmHg: TLabel;
    lblCatatan: TLabel;
    mmoCatatan: TMemo;
    lblAlergi: TLabel;
    mmoAlergi: TMemo;
    lblPerintahDokter: TLabel;
    mmoPerintahDokter: TMemo;
    dbgrdhPemeriksaanFisik: TDBGridEh;
    procedure pnlKeluarClick(Sender: TObject);
    procedure btnSelesaiClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure pmrskVital;
    procedure pmrskFisik;
    procedure tampilPemeriksanfisik;
    procedure tampilPemeriksanvital;
  end;

var
  FPemeriksaanFisik: TFPemeriksaanFisik;

implementation

{$R *.dfm}

uses UDataSImrs,URajalIgd, ADODB, DB, DateUtils;

procedure TFPemeriksaanFisik.pmrskVital;
begin
  edtBb.Clear;
  edtTb.Clear;
  edtNadi.Clear;
  edtSuhu.Clear;
  edtRespirasi.Clear;
end;

procedure TFPemeriksaanFisik.pmrskFisik;
begin
  mmoCatatan.Clear;
  mmoAlergi.Clear;
  mmoPerintahDokter.Clear;
end;

procedure TFPemeriksaanFisik.tampilPemeriksanfisik;
begin
  with DataSimrs.qryt_pemeriksaanfisik do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from t_pemeriksaanfisik where noDaftar="'+FRawatJalanIgd.edtNoRegistrasi.Text+'"';
    Open;
  end
end;

procedure TFPemeriksaanFisik.tampilPemeriksanvital;
begin
  with DataSimrs.qryt_pemeriksaanfisikvital do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from t_pemeriksaanfisikvital where noDaftar="'+FRawatJalanIgd.edtNoRegistrasi.Text+'"';
    Open;
  end;
  if DataSimrs.qryt_pemeriksaanfisikvital.RecordCount >= 1 then
  begin
     with DataSimrs.qryt_pemeriksaanfisikvital do
     begin
       edtBb.Text := FieldByname('beratBadan').AsString;
       edtTb.Text := FieldByname('tinggiBadan').AsString;
       edtNadi.Text := FieldByname('nadi').AsString;
       edtSuhu.Text := FieldByname('suhuBadan').AsString;
       edtRespirasi.Text := FieldByname('respirasi').AsString;
       edtTekDarah.Text := FieldByname('tekDarah').AsString;
     end
  end
  else
  Abort;
end;

procedure TFPemeriksaanFisik.pnlKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFPemeriksaanFisik.btnSelesaiClick(Sender: TObject);
begin
  Close;
end;

procedure TFPemeriksaanFisik.FormShow(Sender: TObject);
begin
  tampilPemeriksanfisik;
  tampilPemeriksanvital;
end;

procedure TFPemeriksaanFisik.btnTambahClick(Sender: TObject);
begin
  pmrskFisik;
end;

procedure TFPemeriksaanFisik.btnSimpanClick(Sender: TObject);
begin
if DataSimrs.qryt_pemeriksaanfisikvital.Locate('noDaftar',FRawatJalanIgd.edtNoRegistrasi.Text,[])  then
begin
  with DataSimrs.qryt_pemeriksaanfisikvital do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'update t_pemeriksaanfisikvital set noDaftar="'+FRawatJalanIgd.edtNoRegistrasi.Text+'",beratBadan="'+edtBb.Text+'",'+
                'tinggiBadan="'+edtTb.Text+'",suhuBadan="'+edtSuhu.Text+'",'+
                'respirasi="'+edtRespirasi.Text+'",tekDarah="'+edtTekDarah.Text+'",nadi="'+edtNadi.Text+'" where noDaftar="'+FRawatJalanIgd.edtNoRegistrasi.Text+'"';
    ExecSQL;
    SQL.Text := 'select * from t_pemeriksaanfisikvital';
    Open;
  end;
end

else
begin
   with DataSimrs.qryt_pemeriksaanfisikvital do
   begin
    Close;
    SQL.Clear;
    SQL.Text := 'insert into t_pemeriksaanfisikvital (noDaftar,beratBadan,tinggiBadan,suhuBadan,respirasi,tekDarah,nadi) values'+
                '("'+FRawatJalanIgd.edtNoRegistrasi.Text+'","'+edtBb.Text+'","'+edtTb.Text+'","'+edtSuhu.Text+'","'+edtRespirasi.Text+'","'+edtTekDarah.Text+'","'+edtNadi.Text+'")';
    ExecSQL;
    SQL.Text := 'select * from t_pemeriksaanfisikvital';
    Open
   end;
end;

with DataSimrs.qryt_pemeriksaanfisik do
begin
  Close;
  SQL.Clear;
  SQL.Text := 'insert into t_pemeriksaanfisik (noDaftar,catatanDokter,catatanAlergi,perintahDokter) values '+
              ' ("'+FRawatJalanIgd.edtNoRegistrasi.Text+'","'+mmoCatatan.Text+'","'+mmoAlergi.Text+'","'+mmoPerintahDokter.Text+'")';
  ExecSQL;
  SQL.Text := 'select * from t_pemeriksaanfisik';
  Open;
end;
tampilPemeriksanfisik;

end;
procedure TFPemeriksaanFisik.btnHapusClick(Sender: TObject);
var
   kode: String;
begin
if DataSimrs.qryt_pemeriksaanfisik.RecordCount<=0 then
  ShowMessage('Data Tidak ada ') else
  begin
  if MessageDlg('Anda Ingin Menghapus Data "'+DataSimrs.qryt_pemeriksaanfisik['noDaftar']+'" ?', mtConfirmation,[mbyes,mbno],0)=mryes then
  begin
    Kode := DataSimrs.qryt_pemeriksaanfisik['kdPemeriksaanFisik'];
    with DataSimrs.qryt_pemeriksaanfisik do
    begin
    Close;
    SQL.Text:='DELETE from t_pemeriksaanfisik WHERE kdPemeriksaanFisik="'+Kode+'"';
    ExecSQL;
    SQL.Text := 'select * from t_pemeriksaanfisik';
  end;
  tampilPemeriksanfisik;
  end
  else
  abort;
  end;
end;


end.
