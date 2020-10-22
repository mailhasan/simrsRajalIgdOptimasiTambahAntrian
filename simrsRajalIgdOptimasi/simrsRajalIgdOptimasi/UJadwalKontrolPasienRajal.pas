unit UJadwalKontrolPasienRajal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPC, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxMemo, cxDBEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, dxLayoutControl, cxTextEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Menus, StdCtrls, cxButtons, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxLayoutLookAndFeels;

type
  TFJadwalKontrolPasienRajal = class(TForm)
    pnlBawah: TPanel;
    pnlAtas: TPanel;
    pnlKeluar: TPanel;
    cxpgcntrl1: TcxPageControl;
    cxtbshtDataKontrol: TcxTabSheet;
    cxtbshtRiwayat: TcxTabSheet;
    dxlytgrpLayoutControl1Group_Root: TdxLayoutGroup;
    dxlytcntrl1: TdxLayoutControl;
    dxlytgrpdxlytcntrl1GroupDataPasien: TdxLayoutGroup;
    dxlytgrpdxlytcntrl1GroupJadwal: TdxLayoutGroup;
    cbbUnitTujuan: TcxLookupComboBox;
    dxlytmUnitTujuan: TdxLayoutItem;
    dtpJadwalKontrol: TcxDateEdit;
    dxlytmJadwalKontrol: TdxLayoutItem;
    cbbDokter: TcxLookupComboBox;
    dxlytmDokter: TdxLayoutItem;
    btnSimpan: TcxButton;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxgrd1: TcxGrid;
    edtNORekamedis: TcxTextEdit;
    dxlytmNoRekamedis: TdxLayoutItem;
    edtNmPasien: TcxTextEdit;
    dxlytmNmPasien: TdxLayoutItem;
    edtTempatLahir: TcxTextEdit;
    dxlytmTempatlLahir: TdxLayoutItem;
    dxlytgrpdxlytcntrl1Group1: TdxLayoutGroup;
    dtpTglLahir: TcxDateEdit;
    dxlytmdxlytcntrl1ItemTglLahir: TdxLayoutItem;
    dxlytgrpTglLahir: TdxLayoutGroup;
    cxmAlamat: TcxMemo;
    dxlytmAlamat: TdxLayoutItem;
    dxlytgrpdxlytcntrl1Group2: TdxLayoutGroup;
    dxlytcntrl1Group2: TdxLayoutGroup;
    cxgrdbclmnGrid1DBTableView1noRekamedis: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1unit: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1tglJadwalKontrolPasienRajal: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1namapetugasMedis: TcxGridDBColumn;
    dxlytlkndflst1: TdxLayoutLookAndFeelList;
    dxLayoutWebLookAndFeel1: TdxLayoutWebLookAndFeel;
    btnUbah: TcxButton;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    procedure btnSimpanClick(Sender: TObject);
    procedure pnlKeluarClick(Sender: TObject);
    procedure cxtbshtRiwayatClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnUbahClick(Sender: TObject);
    procedure cxtbshtRiwayatShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FJadwalKontrolPasienRajal: TFJadwalKontrolPasienRajal;

implementation

{$R *.dfm}
uses UDataSimrs,URajalIgd,DateUtils, ADODB;

procedure TFJadwalKontrolPasienRajal.btnSimpanClick(Sender: TObject);
begin
if (cbbUnitTujuan.Text='') or (cbbDokter.Text='') then
    MessageDlg('Data Harus Di Isi Lengkap....!',mtWarning,[mbOK],0)
    else
    begin
      with DataSimrs.qryt_jadwalkontrolpasienrajal do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'insert into t_jadwalkontrolpasienrajal (noRekamedis,kdUnit,unit,tglJadwalKontrolPasienRajal,'+
                    'kdPetugasMedis,namapetugasMedis,createDate,statusKontrol) values ("'+edtNORekamedis.Text+'","'+cbbUnitTujuan.EditValue+'",'+
                    '"'+cbbUnitTujuan.Text+'","'+FormatDateTime('yyyy-mm-dd',dtpJadwalKontrol.Date)+'","'+cbbDokter.EditValue+'","'+cbbDokter.Text+'","'+FormatDateTime('yyyy-mm-dd hh:mm:ss',Now)+'","tidak hadir")';
        ExecSQL;
        SQL.Text := 'select * from t_jadwalkontrolpasienrajal';
        Open;
      end;
      MessageDlg('Jadwal Kontrol Berhasil Di Simpan....!',mtWarning,[mbOK],0);
      
    end;
end;

procedure TFJadwalKontrolPasienRajal.pnlKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFJadwalKontrolPasienRajal.cxtbshtRiwayatClick(Sender: TObject);
begin
with DataSimrs.qryt_jadwalkontrolpasienrajal do
begin
 Close;
 SQL.Clear;
 SQL.Text := 'select * from t_jadwalkontrolpasienrajal where noRekamedis="'+FRawatJalanIgd.edtNoRm.Text+'"';
 Open;
end;
end;

procedure TFJadwalKontrolPasienRajal.FormShow(Sender: TObject);
begin
with DataSimrs.qryt_jadwalkontrolpasienrajal do
begin
 Close;
 SQL.Clear;
 SQL.Text := 'select * from t_jadwalkontrolpasienrajal where noRekamedis="'+FRawatJalanIgd.edtNoRm.Text+'"';
 Open;
end;

cbbUnitTujuan.Text := '';
dtpJadwalKontrol.Date := Now;
cbbDokter.Text := '';

end;

procedure TFJadwalKontrolPasienRajal.btnUbahClick(Sender: TObject);
var
 AColIndex: Integer;
  AValue: Variant;
  IdJadwalKontrol:Integer;
  noRm:String;
begin
  AColIndex := cxgrdbtblvwGrid1DBTableView1.Controller.FocusedItemIndex;
  AValue := cxgrdbtblvwGrid1DBTableView1.Controller.FocusedRecord.Values[AColIndex];
  IdJadwalKontrol := DataSimrs.qryt_jadwalkontrolpasienrajal['IDJadwalKontrolPasienRajal'];
with DataSimrs.qryt_jadwalkontrolpasienrajal do
begin
  Close;
  SQL.Clear;
  SQL.Text := 'select * from t_jadwalkontrolpasienrajal where (IDJadwalKontrolPasienRajal="'+IntToStr(IdJadwalKontrol)+'") and (statusKontrol="tidak hadir") ';
  Open;
end;
if (DataSimrs.qryt_jadwalkontrolpasienrajal['IDJadwalKontrolPasienRajal']= AValue) and (DataSimrs.qryt_jadwalkontrolpasienrajal['statusKontrol']='tidak hadir') then
  begin
   cbbUnitTujuan.Text := DataSimrs.qryt_jadwalkontrolpasienrajal['unit'];
   dtpJadwalKontrol.Date := DataSimrs.qryt_jadwalkontrolpasienrajal['tglJadwalKontrolPasienRajal'];
   cbbDokter.EditValue := DataSimrs.qryt_jadwalkontrolpasienrajal['kdPetugasMedis'];

   noRm := DataSimrs.qryt_jadwalkontrolpasienrajal['noRekamedis'];
   with DataSimrs.qryvw_pasienrawatjalan do
   begin
     Close;
     SQL.Clear;
     SQL.Text := 'select * from vw_pasienrawatjalan where noRekamedis="'+noRm+'"';
     Open;
   end;
   edtNORekamedis.Text := DataSimrs.qryvw_pasienrawatjalan['noRekamedis'];
   edtNmPasien.Text := DataSimrs.qryvw_pasienrawatjalan['nmPasien'];
   edtTempatLahir.Text := DataSimrs.qryvw_pasienrawatjalan['tempatLahir'];
   dtpTglLahir.Date := DataSimrs.qryvw_pasienrawatjalan['tglLahir'];
   cxmAlamat.Text := DataSimrs.qryvw_pasienrawatjalan['alamat'];

   cxtbshtDataKontrol.Show;
  end
  else
  begin
  MessageDlg('Tanggal Jadwal Sudah Lebih Dari Satu Hari input....!',mtInformation,[mbOK],0);
  end;
end;

procedure TFJadwalKontrolPasienRajal.cxtbshtRiwayatShow(Sender: TObject);
begin
with DataSimrs.qryt_jadwalkontrolpasienrajal do
begin
 Close;
 SQL.Clear;
 SQL.Text := 'select * from t_jadwalkontrolpasienrajal where (createDate BETWEEN "'+FormatDateTime('yyyy-MM-dd',FRawatJalanIgd.dtpTglMasuk.Date)+'" and "'+FormatDateTime('yyyy-MM-dd',IncDay(FRawatJalanIgd.dtpTglMasuk.Date,1))+'") and noRekamedis="'+edtNORekamedis.Text+'"';
 Open;
end;
end;
end.
