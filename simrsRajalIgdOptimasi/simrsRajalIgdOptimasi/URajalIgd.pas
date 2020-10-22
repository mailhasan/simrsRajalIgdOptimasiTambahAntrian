unit URajalIgd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinsdxNavBar2Painter, cxContainer, cxEdit, Grids,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, StdCtrls, ComCtrls, dxNavBarCollns, cxClasses,
  dxNavBarBase, dxNavBar, GridsEh, DBGridEh, ExtCtrls, frxClass, frxDBSet,
  Menus;

type
  TFRawatJalanIgd = class(TForm)
    pnlAtas: TPanel;
    pnlKeluar: TPanel;
    pnlBawah: TPanel;
    pnl1: TPanel;
    lblNoRmNama: TLabel;
    edtNoRmNama: TEdit;
    pb1: TProgressBar;
    grpTindakan: TGroupBox;
    pgcRiwayat: TPageControl;
    tsTindakan: TTabSheet;
    dbgrdhRiwayatTindakan: TDBGridEh;
    tsLab: TTabSheet;
    dbgrdhRiwayatLab: TDBGridEh;
    tsRab: TTabSheet;
    dbgrdhRad: TDBGridEh;
    pnlTegah: TPanel;
    pnlKanan: TPanel;
    dxnvbrAntrian: TdxNavBar;
    dxnvbrgrpMenu: TdxNavBarGroup;
    dxnvbrtmKananMenuItemPasien: TdxNavBarItem;
    dxnvbrtmKananMenuItemAnamesa: TdxNavBarItem;
    dxnvbrtmKananMenuItemICD10: TdxNavBarItem;
    dxnvbrtmAntrianItemIcd9: TdxNavBarItem;
    dxnvbrtmAntrianItemTindakan: TdxNavBarItem;
    dxnvbrtmAntrianItemPemeriksaan: TdxNavBarItem;
    dxnvbrtmAntrianItemAnatonim: TdxNavBarItem;
    dxnvbrtmAntrianItemPemeriksaanLab: TdxNavBarItem;
    dxnvbrtmAntrianItemPemreiksaanRad: TdxNavBarItem;
    dxnvbrtmAntrianItemStatusKeluar: TdxNavBarItem;
    dxnvbrtmAntrianItemLaporan: TdxNavBarItem;
    dxnvbrtmAntrianItemKonsulAntarPoli: TdxNavBarItem;
    dxnvbrtmAntrianItemHasilLab: TdxNavBarItem;
    dxnvbrtmAntrianEResep: TdxNavBarItem;
    dxnvbrtmAntrianItemRiwayat: TdxNavBarItem;
    dxnvbrtmAntrianItemBatalKonsul: TdxNavBarItem;
    dxnvbrtmAntrianItemTindakanIgd: TdxNavBarItem;
    pnlTengah1: TPanel;
    pnlAtasTegah: TPanel;
    grpAtas2: TGroupBox;
    lblTglMasuk: TLabel;
    lblUnitPelayanan: TLabel;
    lblDokter: TLabel;
    dtpTglMasuk: TDateTimePicker;
    btnGantiNamaDokter: TButton;
    cbbDokter: TcxLookupComboBox;
    cbbUnitPelayanan: TcxLookupComboBox;
    grpTegah1: TGroupBox;
    lblNoRm: TLabel;
    lblNoRegistrasi: TLabel;
    lblNmPasien: TLabel;
    lblPenjamin: TLabel;
    lblAlamat: TLabel;
    lblDokter1: TLabel;
    lblNoRajal: TLabel;
    lblAsalPasien: TLabel;
    lblTglLahir: TLabel;
    lblUmur: TLabel;
    lblJk: TLabel;
    edtNoRm: TEdit;
    edtNoRegistrasi: TEdit;
    edtNmPasien: TEdit;
    edtPenjamin: TEdit;
    edtDokter: TEdit;
    edtNoRajal: TEdit;
    edtTempatLahir: TEdit;
    edtAlamat: TEdit;
    edtUmur: TEdit;
    edtJk: TEdit;
    dtpTglLahir: TDateTimePicker;
    pnlTengahTegah: TPanel;
    strngrdPxRajal: TStringGrid;
    tmr1: TTimer;
    statSimrs: TStatusBar;
    frxdbdtstHd: TfrxDBDataset;
    frxrprtLab: TfrxReport;
    frxdbdtstTd: TfrxDBDataset;
    dxnvbrtmRegistrasiOK: TdxNavBarItem;
    dxnvbrtmAntrianItemRiwayatObat: TdxNavBarItem;
    dxnvbrtmAntrianItemJadwalKontrol: TdxNavBarItem;
    dxnvbrgrpPenunjang: TdxNavBarGroup;
    dxnvbrgrpResep: TdxNavBarGroup;
    dxnvbrtmPanggil: TdxNavBarItem;
    pmRawatJalan: TPopupMenu;
    PANGGILANTRIAN1: TMenuItem;
    lblSTATUSPANGGILAN: TLabel;
    cbbStatusPanggilan: TcxLookupComboBox;
    procedure pnlKeluarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxnvbrtmKananMenuItemPasienClick(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure cbbUnitPelayananPropertiesChange(Sender: TObject);
    procedure btnGantiNamaDokterClick(Sender: TObject);
    procedure strngrdPxRajalClick(Sender: TObject);
    procedure dxnvbrtmKananMenuItemAnamesaClick(Sender: TObject);
    procedure dxnvbrtmKananMenuItemICD10Click(Sender: TObject);
    procedure dxnvbrtmAntrianItemIcd9Click(Sender: TObject);
    procedure dxnvbrtmAntrianItemKonsulAntarPoliClick(Sender: TObject);
    procedure edtNoRmNamaChange(Sender: TObject);
    procedure dxnvbrtmAntrianItemBatalKonsulClick(Sender: TObject);
    procedure dxnvbrtmAntrianItemTindakanClick(Sender: TObject);
    procedure dxnvbrtmAntrianItemPemeriksaanClick(Sender: TObject);
    procedure dxnvbrtmAntrianItemPemeriksaanLabClick(Sender: TObject);
    procedure dxnvbrtmAntrianItemPemreiksaanRadClick(Sender: TObject);
    procedure dxnvbrtmAntrianItemStatusKeluarClick(Sender: TObject);
    procedure dxnvbrtmAntrianItemTindakanIgdClick(Sender: TObject);
    procedure dxnvbrtmAntrianEResepClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxnvbrtmAntrianItemHasilLabClick(Sender: TObject);
    procedure dxnvbrtmRegistrasiOKClick(Sender: TObject);
    procedure dxnvbrtmAntrianItemRiwayatObatClick(Sender: TObject);
    procedure dxnvbrtmAntrianItemJadwalKontrolClick(Sender: TObject);
    procedure PANGGILANTRIAN1Click(Sender: TObject);
    procedure dxnvbrtmPanggilClick(Sender: TObject);
    procedure dxnvbrtmAntrianItemLaporanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure reset;
    procedure tampilawal;
    procedure settingTanggal;
    procedure tampilpasienhariini;
    procedure refreshForm;
    procedure aturKolomPxRajal;
    procedure tampilDataPxRajal;
    procedure bersihData;
    procedure tampilDataTglUnit;
    procedure panggilAntrian;
  end;

var
  FRawatJalanIgd: TFRawatJalanIgd;
  tanggal, tanggal1: string;
  iThn, iBln, iHari: Word;
implementation

{$R *.dfm}
uses UDataSimrs,DateUtils,UAnamesaPasien,UKonsulAntarPoli,
     UDiagnosaIcd10,UDiagnosaIcd9,UTindakanRawatjalan,
     UPemeriksaanFisik,UPermintaanLabRajal, ADODB, DB, UPermintaanRadRajal,
     UStatusPulang, UTindakanIgd, UEresepRajal,URegistrasiRuangOk,
     URiwayatObatPasien,UJadwalKontrolPasienRajal,ULaporanRl4B;

function HorizontalIntersect(const aRect,bRect: TRect): boolean;
begin
  result := (aRect.Left < bRect.Right) and (aRect.Right > bRect.Left);
end;

function VerticalIntersect(const aRect,bRect: TRect): boolean;
begin
  result := (aRect.Top < bRect.Bottom) and (aRect.Bottom > bRect.Top);
end;

/// reset string grid
procedure TFRawatJalanIgd.reset;
var
  i:integer;
begin
  for i := 0 to ComponentCount -1 do
    begin
      if (Components[i] is TEdit) and (TEdit(Components[i]).Tag = 0) then
       Tedit(Components[i]).Text :=''
    end;
end;

/// untuk menampilkan umur(tahun,bulan,hari)
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

/// tampil awal form
procedure TFRawatJalanIgd.tampilawal;
begin
  dtpTglMasuk.DateTime := Now;
  cbbUnitPelayanan.Text := '';
  cbbDokter.Text := '';
  with DataSimrs.qryvw_detailtindakanpasienrajal do
  begin
    Active := False;
  end;
end;

/// setting awal tanggal dan tanggal selanjutnya 1 hari
procedure TFRawatJalanIgd.settingTanggal;
begin
  tanggal := FormatDateTime('yyyy-MM-dd', dtpTglMasuk.Date);
  tanggal1 := FormatDateTime('yyyy-MM-dd', IncDay(dtpTglMasuk.Date, 1));
end;

/// ambil semua data pasien hari ini
procedure TFRawatJalanIgd.tampilpasienhariini;
Var
Baris,  Nilai: Integer;
begin
  settingTanggal;
  with DataSimrs.qryvw_pasienrawatjalan do
  begin
    Active := True;
    Close;
    SQL.Clear;
    //SQL.Text := 'select * from vw_pasienrawatjalan where tglDaftar BETWEEN "' + tanggal + '" AND "' + tanggal1 + '"';
    SQL.Text := 'SELECT t_registrasi.noDaftar,t_registrasi.noRekamedis,t_registrasi.tglPulang,'+
                't_registrasirawatjalan.noRegistrasiRawatJalan,t_registrasi.tglDaftar,'+
                't_pasien.nmPasien,t_pasien.tempatLahir,t_pasien.tglLahir,t_pasien.jenisKelamin,'+
                't_pasien.agama,t_pasien.alamat,t_registrasirawatjalan.kdUnit,t_unit.unit,'+
                't_asalpasien.asalPasien,t_carabayar.carabayar,t_penjamin.penjamin,'+
                't_statuskeluar.statusKeluar,t_tenagamedis2.namapetugasMedis,'+
                't_registrasirawatjalan.ketMasukPasien,'+
                't_registrasirawatjalan.statusPasien FROM t_registrasi INNER JOIN t_registrasirawatjalan '+
                'ON t_registrasi.noDaftar = t_registrasirawatjalan.noDaftar INNER JOIN t_pasien '+
                'ON t_registrasi.noRekamedis = t_pasien.noRekamedis INNER JOIN t_unit '+
                'ON t_registrasirawatjalan.kdUnit = t_unit.kdUnit INNER JOIN t_asalpasien '+
                'ON t_registrasi.kdAsalPasien = t_asalpasien.kdAsalPasien INNER JOIN t_carabayar '+
                'ON t_registrasi.kdCaraBayar = t_carabayar.kdCaraBayar INNER JOIN t_penjamin '+
                'ON t_registrasi.kdPenjamin = t_penjamin.kdPenjamin INNER JOIN t_statuskeluar '+
                'ON t_registrasi.kdStatusKeluar = t_statuskeluar.kdStatusKeluar LEFT JOIN t_tenagamedis2 '+
                'ON t_registrasi.kdTenagaMedis = t_tenagamedis2.kdPetugasMedis where t_registrasi.tglDaftar BETWEEN "' + tanggal + '" AND "' + tanggal1 + '"';
    Open;
  end;

  pb1.visible:=true;
  Baris:=100000;
  pb1.min:=0;
  pb1.max:=Baris;
  For Nilai:=1 to Baris do
  pb1.Position:=Nilai;
  pb1.visible:=false;
end;

/// refresh form saat ada event onklik form
procedure TFRawatJalanIgd.refreshForm;
begin
  with FRawatJalanIgd do
  begin
    WindowState := wsNormal;
    WindowState := wsMaximized;
  end;
end;


/// setting atur kolom pasien rawat jalan
procedure TFRawatJalanIgd.aturKolomPxRajal;
var
  i,j:integer;
begin
 with strngrdPxRajal do
  begin

  for i := 0 to colCount-1 do
        for j := 0 to rowCount-1 do
          Cells[i,j]:='';

  ColCount :=15;
  RowCount :=2;
  FixedCols:=1;
  DefaultROwHeight:=18;
  //Options := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect];
  Cells[0,0]:='No.';
  Cells[1,0]:= 'No RM ';
  Cells[2,0]:='NAMA PASIEN ';
  Cells[3,0]:='TEMPAT LAHIR';
  Cells[4,0]:='TGL LAHIR';
  Cells[5,0]:='JK';
  Cells[6,0]:= 'ALAMAT';
  Cells[7,0]:= 'UNIT';
  Cells[8,0]:= 'CARA BAYAR';
  Cells[9,0]:= ' STATUS KELUAR';
  Cells[10,0]:= 'DOKTER/PETUGAS MEDIS';
  Cells[11,0]:= 'NO REGISTER';
  Cells[12,0]:= 'NO RAJAL';
  Cells[13,0]:= 'TGL MASUK';
  Cells[14,0]:= 'TGL KELUAR';

  //lebar kolom
  ColWidths[0]:=25;
  ColWidths[1]:=80;
  ColWidths[2]:=150;
  ColWidths[3]:=120;
  ColWidths[4]:=120;
  ColWidths[5]:=30;
  ColWidths[6]:=250;
  ColWidths[7]:= 100;
  ColWidths[8]:=100;
  ColWidths[9]:=100;
  ColWidths[10]:= 150;
  ColWidths[11]:= 100;
  ColWidths[12]:= 100;
  ColWidths[13]:= 110;
  ColWidths[14]:= 110;

  end;
end;

/// tampil data pasien rawat jalan
procedure TFRawatJalanIgd.tampilDataPxRajal;
var i:Integer;
begin
  if DataSimrs.qryvw_pasienrawatjalan.RecordCount<>0 then
  begin
    strngrdPxRajal.RowCount := DataSimrs.qryvw_pasienrawatjalan.RecordCount+1;
    for i:=0 to DataSimrs.qryvw_pasienrawatjalan.RecordCount-1 do
    begin
      strngrdPxRajal.Cells[0,i+1] := IntToStr(i+1)+'.';
      strngrdPxRajal.Cells[1,i+1] := DataSimrs.qryvw_pasienrawatjalan.FieldByName('noRekamedis').AsString;
      strngrdPxRajal.Cells[2,i+1] := DataSimrs.qryvw_pasienrawatjalan.FieldByName('nmPasien').AsString;
      strngrdPxRajal.Cells[3,i+1] := DataSimrs.qryvw_pasienrawatjalan.FieldByName('tempatLahir').AsString;
      strngrdPxRajal.Cells[4,i+1] := DataSimrs.qryvw_pasienrawatjalan.FieldByName('tglLahir').AsString;
      strngrdPxRajal.Cells[5,i+1] := DataSimrs.qryvw_pasienrawatjalan.FieldByName('jenisKelamin').AsString;
      strngrdPxRajal.Cells[6,i+1] := DataSimrs.qryvw_pasienrawatjalan.FieldByName('alamat').AsString;
      strngrdPxRajal.Cells[7,i+1] := DataSimrs.qryvw_pasienrawatjalan.FieldByName('unit').AsString;
      strngrdPxRajal.Cells[8,i+1] := DataSimrs.qryvw_pasienrawatjalan.FieldByName('carabayar').AsString;
      strngrdPxRajal.Cells[9,i+1] := DataSimrs.qryvw_pasienrawatjalan.FieldByName('statusKeluar').AsString;
      strngrdPxRajal.Cells[10,i+1] := DataSimrs.qryvw_pasienrawatjalan.FieldByName('namapetugasMedis').AsString;
      strngrdPxRajal.Cells[11,i+1] := DataSimrs.qryvw_pasienrawatjalan.FieldByName('noDaftar').AsString;
      strngrdPxRajal.Cells[12,i+1] := DataSimrs.qryvw_pasienrawatjalan.FieldByName('noRegistrasiRawatJalan').AsString;
      strngrdPxRajal.Cells[13,i+1] := DataSimrs.qryvw_pasienrawatjalan.FieldByName('tglDaftar').AsString;
      strngrdPxRajal.Cells[14,i+1] := DataSimrs.qryvw_pasienrawatjalan.FieldByName('tglPulang').AsString;
      DataSimrs.qryvw_pasienrawatjalan.Next
    end;
  end;
end;

/// procedure bersih data pasien
procedure TFRawatJalanIgd.bersihData;
begin
  edtNoRm.Text := '';
  edtNmPasien.Text := '';
  edtPenjamin.Text := '';
  edtDokter.Text := '';
  edtNoRegistrasi.Text := '';
  edtNoRajal.Text := '';
  edtAlamat.Text := '';
  edtTempatLahir.Text := '';
  edtUmur.Text := '';
  edtJk.Text := '';
end;


/// ambil data pasien berdasarkan tanggal dan combo box unit
procedure TFRawatJalanIgd.tampilDataTglUnit;
begin
  with DataSimrs.qryvw_pasienrawatjalan do
    begin
    Active := True;
    Close;
    SQL.Clear;
    //SQL.Text := 'select * from vw_pasienrawatjalan where tglDaftar BETWEEN "' + tanggal + '" AND "' + tanggal1 + '"';
    SQL.Text := 'SELECT t_registrasi.noDaftar,t_registrasi.noRekamedis,t_registrasi.tglPulang,'+
                't_registrasirawatjalan.noRegistrasiRawatJalan,t_registrasi.tglDaftar,'+
                't_pasien.nmPasien,t_pasien.tempatLahir,t_pasien.tglLahir,t_pasien.jenisKelamin,'+
                't_pasien.agama,t_pasien.alamat,t_registrasirawatjalan.kdUnit,t_unit.unit,'+
                't_asalpasien.asalPasien,t_carabayar.carabayar,t_penjamin.penjamin,'+
                't_statuskeluar.statusKeluar,t_tenagamedis2.namapetugasMedis,'+
                't_registrasirawatjalan.ketMasukPasien,'+
                't_registrasirawatjalan.statusPasien FROM t_registrasi INNER JOIN t_registrasirawatjalan '+
                'ON t_registrasi.noDaftar = t_registrasirawatjalan.noDaftar INNER JOIN t_pasien '+
                'ON t_registrasi.noRekamedis = t_pasien.noRekamedis INNER JOIN t_unit '+
                'ON t_registrasirawatjalan.kdUnit = t_unit.kdUnit INNER JOIN t_asalpasien '+
                'ON t_registrasi.kdAsalPasien = t_asalpasien.kdAsalPasien INNER JOIN t_carabayar '+
                'ON t_registrasi.kdCaraBayar = t_carabayar.kdCaraBayar INNER JOIN t_penjamin '+
                'ON t_registrasi.kdPenjamin = t_penjamin.kdPenjamin INNER JOIN t_statuskeluar '+
                'ON t_registrasi.kdStatusKeluar = t_statuskeluar.kdStatusKeluar LEFT JOIN t_tenagamedis2 '+
                'ON t_registrasi.kdTenagaMedis = t_tenagamedis2.kdPetugasMedis where t_registrasi.tglDaftar BETWEEN "' + tanggal + '" AND "' + tanggal1 + '" and unit="'+cbbUnitPelayanan.Text+'"';
    Open;
    end;
end;

/// procedure antrian
procedure TFRawatJalanIgd.panggilAntrian;
begin
  MessageDlg('Panggil Pasien Dengan RM :"'+edtNoRm.Text+'" Nama: "'+edtNmPasien.Text+'" Tujuan : "'+cbbUnitPelayanan.Text+'"',mtInformation,[mbAll],0);
end;



procedure TFRawatJalanIgd.pnlKeluarClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFRawatJalanIgd.FormShow(Sender: TObject);
begin
  /// setting tanggal
  settingTanggal;
  if cbbUnitPelayanan.Text = '' then
  begin
    /// isi procedure
     aturKolomPxRajal; tampilpasienhariini;  tampilDataPxRajal;
  end
  else
  begin
    aturKolomPxRajal;
    with DataSimrs.qryvw_pasienrawatjalan do
    begin
    Active := True;
    Close;
    SQL.Clear;
    //SQL.Text := 'select * from vw_pasienrawatjalan where tglDaftar BETWEEN "' + tanggal + '" AND "' + tanggal1 + '"';
    SQL.Text := 'SELECT t_registrasi.noDaftar,t_registrasi.noRekamedis,t_registrasi.tglPulang,'+
                't_registrasirawatjalan.noRegistrasiRawatJalan,t_registrasi.tglDaftar,'+
                't_pasien.nmPasien,t_pasien.tempatLahir,t_pasien.tglLahir,t_pasien.jenisKelamin,'+
                't_pasien.agama,t_pasien.alamat,t_registrasirawatjalan.kdUnit,t_unit.unit,'+
                't_asalpasien.asalPasien,t_carabayar.carabayar,t_penjamin.penjamin,'+
                't_statuskeluar.statusKeluar,t_tenagamedis2.namapetugasMedis,'+
                't_registrasirawatjalan.ketMasukPasien,'+
                't_registrasirawatjalan.statusPasien FROM t_registrasi INNER JOIN t_registrasirawatjalan '+
                'ON t_registrasi.noDaftar = t_registrasirawatjalan.noDaftar INNER JOIN t_pasien '+
                'ON t_registrasi.noRekamedis = t_pasien.noRekamedis INNER JOIN t_unit '+
                'ON t_registrasirawatjalan.kdUnit = t_unit.kdUnit INNER JOIN t_asalpasien '+
                'ON t_registrasi.kdAsalPasien = t_asalpasien.kdAsalPasien INNER JOIN t_carabayar '+
                'ON t_registrasi.kdCaraBayar = t_carabayar.kdCaraBayar INNER JOIN t_penjamin '+
                'ON t_registrasi.kdPenjamin = t_penjamin.kdPenjamin INNER JOIN t_statuskeluar '+
                'ON t_registrasi.kdStatusKeluar = t_statuskeluar.kdStatusKeluar LEFT JOIN t_tenagamedis2 '+
                'ON t_registrasi.kdTenagaMedis = t_tenagamedis2.kdPetugasMedis where t_registrasi.tglDaftar BETWEEN "' + tanggal + '" AND "' + tanggal1 + '" and unit="'+cbbUnitPelayanan.Text+'"';
    Open;
    end;
    tampilDataPxRajal;
  end;
  tampilawal;
  aturKolomPxRajal; tampilpasienhariini;  tampilDataPxRajal;
  grpTindakan.Visible := False;
end;

procedure TFRawatJalanIgd.dxnvbrtmKananMenuItemPasienClick(
  Sender: TObject);
begin
  if cbbUnitPelayanan.Text = '' then
  begin
  aturKolomPxRajal;  tampilpasienhariini; tampilDataPxRajal;
  end
  else
  begin
    settingTanggal;
    aturKolomPxRajal;
    with DataSimrs.qryvw_pasienrawatjalan do
    begin
    Active := True;
    Close;
    SQL.Clear;
    //SQL.Text := 'select * from vw_pasienrawatjalan where tglDaftar BETWEEN "' + tanggal + '" AND "' + tanggal1 + '"';
    SQL.Text := 'SELECT t_registrasi.noDaftar,t_registrasi.noRekamedis,t_registrasi.tglPulang,'+
                't_registrasirawatjalan.noRegistrasiRawatJalan,t_registrasi.tglDaftar,'+
                't_pasien.nmPasien,t_pasien.tempatLahir,t_pasien.tglLahir,t_pasien.jenisKelamin,'+
                't_pasien.agama,t_pasien.alamat,t_registrasirawatjalan.kdUnit,t_unit.unit,'+
                't_asalpasien.asalPasien,t_carabayar.carabayar,t_penjamin.penjamin,'+
                't_statuskeluar.statusKeluar,t_tenagamedis2.namapetugasMedis,'+
                't_registrasirawatjalan.ketMasukPasien,'+
                't_registrasirawatjalan.statusPasien FROM t_registrasi INNER JOIN t_registrasirawatjalan '+
                'ON t_registrasi.noDaftar = t_registrasirawatjalan.noDaftar INNER JOIN t_pasien '+
                'ON t_registrasi.noRekamedis = t_pasien.noRekamedis INNER JOIN t_unit '+
                'ON t_registrasirawatjalan.kdUnit = t_unit.kdUnit INNER JOIN t_asalpasien '+
                'ON t_registrasi.kdAsalPasien = t_asalpasien.kdAsalPasien INNER JOIN t_carabayar '+
                'ON t_registrasi.kdCaraBayar = t_carabayar.kdCaraBayar INNER JOIN t_penjamin '+
                'ON t_registrasi.kdPenjamin = t_penjamin.kdPenjamin INNER JOIN t_statuskeluar '+
                'ON t_registrasi.kdStatusKeluar = t_statuskeluar.kdStatusKeluar LEFT JOIN t_tenagamedis2 '+
                'ON t_registrasi.kdTenagaMedis = t_tenagamedis2.kdPetugasMedis where t_registrasi.tglDaftar BETWEEN "' + tanggal + '" AND "' + tanggal1 + '" and unit="'+cbbUnitPelayanan.Text+'"';
    Open;
    end;
    tampilDataPxRajal;
  end;
end;

/// isi timer tampil data
procedure TFRawatJalanIgd.tmr1Timer(Sender: TObject);
begin
 if cbbUnitPelayanan.Text = '' then
  begin
    aturKolomPxRajal;  tampilpasienhariini; tampilDataPxRajal;
  end
  else
  begin
    settingTanggal;
    aturKolomPxRajal;

    tampilDataTglUnit;

    tampilDataPxRajal;
  end
end;

/// tampil data berdasarkan pilihan unit
procedure TFRawatJalanIgd.cbbUnitPelayananPropertiesChange(
  Sender: TObject);
begin
 if cbbUnitPelayanan.Text = '' then
  begin
   aturKolomPxRajal; tampilpasienhariini; tampilDataPxRajal;
   bersihData;
  end
  else
  begin
    aturKolomPxRajal;

    tampilDataTglUnit;

    tampilDataPxRajal;
    bersihData;
  end;
end;

/// update data dokter setelah di pilih 
procedure TFRawatJalanIgd.btnGantiNamaDokterClick(Sender: TObject);
begin
with DataSimrs.qryt_registrasi do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'update t_registrasi set kdTenagaMedis="' + cbbDokter.EditValue + '" where noDaftar="' + edtNoRegistrasi.Text + '"';
    ExecSQL;
    {SQL.Text := 'select * from t_registrasi';
    Open;}
  end;

  if cbbUnitPelayanan.Text = '' then
  begin
    /// isi procedure
    aturKolomPxRajal;  tampilpasienhariini; tampilDataPxRajal;
  end
  else
  begin
    /// isi procedure
    settingTanggal;
    aturKolomPxRajal;

    tampilDataTglUnit;

    tampilDataPxRajal;
  end;

  MessageDlg('Data Dokter Berhasil Di Ubah!', mtInformation, [mbok], 0);
end;

procedure TFRawatJalanIgd.strngrdPxRajalClick(Sender: TObject);
var
  sTgl, LTgl : TDateTime;
begin
/// ambil data dari string grid ke text box (isian data pasien)
with strngrdPxRajal do
begin
  edtNoRm.Text:=    strngrdPxRajal.Cells[1,strngrdPxRajal.selection.top];
  edtNmPasien.Text:=   strngrdPxRajal.Cells[2,strngrdPxRajal.selection.top];
  edtTempatLahir.Text :=   strngrdPxRajal.Cells[3,strngrdPxRajal.selection.top];
  dtpTglLahir.Date  :=  StrToDate(strngrdPxRajal.Cells[4,strngrdPxRajal.selection.top]);
  edtJk.Text :=   strngrdPxRajal.Cells[5,strngrdPxRajal.selection.top];
  edtAlamat.Text :=    strngrdPxRajal.Cells[6,strngrdPxRajal.selection.top];
  cbbUnitPelayanan.Text := strngrdPxRajal.Cells[7,strngrdPxRajal.selection.top];
  edtPenjamin.Text :=   strngrdPxRajal.Cells[8,strngrdPxRajal.selection.top];
  edtDokter.Text :=   strngrdPxRajal.Cells[10,strngrdPxRajal.selection.top];
  edtNoRegistrasi.Text :=   strngrdPxRajal.Cells[11,strngrdPxRajal.selection.top];
  edtNoRajal.Text :=    strngrdPxRajal.Cells[12,strngrdPxRajal.selection.top];
  sTgl := Date;
  LTgl := dtpTglLahir.Date;
  umur(LTgl, sTgl);
  edtUmur.Text :=IntToStr(iThn)+' Tahun, '+IntToStr(iBln)+' Bulan, '+IntToStr(iHari)+' Hari';
end;

/// tampil detail tindakan pasien rawat jalan
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
              'ON t_registrasirawatjalan.noRegistrasiRawatJalan = t_tindakanpasienrajal.noRegistrasiRawatJalan where t_registrasirawatjalan.noDaftar="'+edtNoRegistrasi.Text+'" AND t_registrasirawatjalan.noRegistrasiRawatJalan="'+edtNoRajal.Text+'"';
  Open;
end;

/// tampil detail tindakan lab pasien rawat jalan
WITH DataSimrs.qryvw_RiwayatTindakanLabRajal do
begin
  Close;
  SQL.Clear;
  SQL.Text := 'SELECT t_registrasi.noRekamedis,t_registrasi.noDaftar,'+
              't_registrasipenunjangrajal.noRegistrasiPenunjangRajal,'+
              't_detailtindakanpenunjangrajal.tindakan,'+
              't_detailtindakanpenunjangrajal.tarif,t_detailtindakanpenunjangrajal.jumlahTindakan,'+
              't_detailtindakanpenunjangrajal.totalTarif FROM t_registrasi Inner Join t_registrasipenunjangrajal '+
              'ON t_registrasipenunjangrajal.noDaftar = t_registrasi.noDaftar Inner Join t_tindakanpenunjangrajal '+
              'ON t_registrasipenunjangrajal.noRegistrasiPenunjangRajal = t_tindakanpenunjangrajal.noRegistrasiPenunjangRajal Join t_detailtindakanpenunjangrajal '+
              'ON t_tindakanpenunjangrajal.noTindakanPenunjangRajal = t_detailtindakanpenunjangrajal.noTindakanPenunjangRajal where t_registrasi.noDaftar="'+edtNoRegistrasi.Text+'"';
  Open;
end;

/// tampil detail radiologi tindakan pasien rawat jalan
with DataSimrs.qryvw_riwayattindakanradrajal do
begin
  Close;
  SQL.Clear;
  SQL.Text := 'SELECT t_registrasiradiologirajal.noDaftar,'+
              't_detailtindakanradiologirajal.kdTarif,'+
              't_detailtindakanradiologirajal.tindakan,'+
              't_detailtindakanradiologirajal.tarif,'+
              't_detailtindakanradiologirajal.jumlahTindakan,'+
              't_detailtindakanradiologirajal.totalTarif,'+
              't_detailtindakanradiologirajal.statusTindakan FROM t_tindakanradiologirajal INNER JOIN t_registrasiradiologirajal '+
              'ON t_tindakanradiologirajal.noRegistrasiRadiologiRajal = t_registrasiradiologirajal.noRegistrasiRadiologiRajal INNER JOIN t_detailtindakanradiologirajal '+
              'ON t_detailtindakanradiologirajal.noTindakanRadiologiRajal = t_tindakanradiologirajal.noTindakanRadiologiRajal where t_registrasiradiologirajal.noDaftar="'+edtNoRegistrasi.Text+'"';
  Open;
end;

/// aktifkan grp panel tindakan
grpTindakan.Visible := True;

end;

procedure TFRawatJalanIgd.dxnvbrtmKananMenuItemAnamesaClick(
  Sender: TObject);
var
  tr_anamesa: TFAnamesaPasien;
begin
  if edtNoRm.Text = '' then
    MessageDlg('Silahkan Pilih Data Pasien Dulu', mtWarning, [mbOK], 0)
  else
  begin
    tr_anamesa := TFAnamesaPasien.Create(nil);
    tr_anamesa.Parent := pnlTengahTegah;
    tr_anamesa.Align := alClient;
    tr_anamesa.Show;
    refreshForm;
  end;
end;

procedure TFRawatJalanIgd.dxnvbrtmKananMenuItemICD10Click(Sender: TObject);
var
  tr_diagnosa: TFDiagnosaIcd10;
begin
  if edtNoRm.Text = '' then
    MessageDlg('Silahkan Pilih Data Pasien Dulu', mtWarning, [mbOK], 0)
  else
  begin
    tr_diagnosa := TFDiagnosaIcd10.Create(nil);
    tr_diagnosa.Parent := pnlTengahTegah;
    tr_diagnosa.Align := alClient;
    tr_diagnosa.Show;
    refreshForm;
  end;
end;

procedure TFRawatJalanIgd.dxnvbrtmAntrianItemIcd9Click(Sender: TObject);
var
  tr_diagnosa9: TFDiagnosaIcd9;
begin
  if edtNoRm.Text = '' then
    MessageDlg('Silahkan Pilih Data Pasien Dulu', mtWarning, [mbOK], 0)
  else
  begin
    tr_diagnosa9 := TFDiagnosaIcd9.Create(nil);
    tr_diagnosa9.Parent := pnlTengahTegah;
    tr_diagnosa9.Align := alClient;
    tr_diagnosa9.Show;
    refreshForm;
  end;
end;

procedure TFRawatJalanIgd.dxnvbrtmAntrianItemKonsulAntarPoliClick(
  Sender: TObject);
begin
  if (edtNoRm.Text = '') then
    MessageDlg('Silahkan Pilih Data Pasien Dulu...!', mtInformation, [mbok], 0)
  else
  begin
    FKonsulAntarPoli.edtNoRm.Text := edtNoRm.Text;
    FKonsulAntarPoli.edtNoRegistrasi.Text := edtNoRegistrasi.Text;
    FKonsulAntarPoli.Show;
  end;
end;

procedure TFRawatJalanIgd.edtNoRmNamaChange(Sender: TObject);
begin
if edtNoRmNama.Text = '' then
  begin
  aturKolomPxRajal;  tampilpasienhariini; tampilDataPxRajal;
  end
  else
  begin
    settingTanggal;
    aturKolomPxRajal;
    with DataSimrs.qryvw_pasienrawatjalan do
    begin
    Active := True;
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT t_registrasi.noDaftar,t_registrasi.noRekamedis,t_registrasi.tglPulang,'+
                't_registrasirawatjalan.noRegistrasiRawatJalan,t_registrasi.tglDaftar,'+
                't_pasien.nmPasien,t_pasien.tempatLahir,t_pasien.tglLahir,t_pasien.jenisKelamin,'+
                't_pasien.agama,t_pasien.alamat,t_registrasirawatjalan.kdUnit,t_unit.unit,'+
                't_asalpasien.asalPasien,t_carabayar.carabayar,t_penjamin.penjamin,'+
                't_statuskeluar.statusKeluar,t_tenagamedis2.namapetugasMedis,'+
                't_registrasirawatjalan.ketMasukPasien,'+
                't_registrasirawatjalan.statusPasien FROM t_registrasi INNER JOIN t_registrasirawatjalan '+
                'ON t_registrasi.noDaftar = t_registrasirawatjalan.noDaftar INNER JOIN t_pasien '+
                'ON t_registrasi.noRekamedis = t_pasien.noRekamedis INNER JOIN t_unit '+
                'ON t_registrasirawatjalan.kdUnit = t_unit.kdUnit INNER JOIN t_asalpasien '+
                'ON t_registrasi.kdAsalPasien = t_asalpasien.kdAsalPasien INNER JOIN t_carabayar '+
                'ON t_registrasi.kdCaraBayar = t_carabayar.kdCaraBayar INNER JOIN t_penjamin '+
                'ON t_registrasi.kdPenjamin = t_penjamin.kdPenjamin INNER JOIN t_statuskeluar '+
                'ON t_registrasi.kdStatusKeluar = t_statuskeluar.kdStatusKeluar LEFT JOIN t_tenagamedis2 '+
                'ON t_registrasi.kdTenagaMedis = t_tenagamedis2.kdPetugasMedis where (t_registrasi.tglDaftar BETWEEN "' + tanggal + '" AND "' + tanggal1 + '") and (t_registrasi.noRekamedis like "'+edtNoRmNama.Text+'%" or t_pasien.nmPasien like "%'+edtNoRmNama.Text+'%")';
    Open;            
    end;

    tampilDataPxRajal;
  end;
end;

procedure TFRawatJalanIgd.dxnvbrtmAntrianItemBatalKonsulClick(
  Sender: TObject);
var
  noRegRajal:String;
begin
  with DataSimrs.qryvw_pasienrawatjalan do
  begin
    Active := True;
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT t_registrasi.noDaftar,t_registrasirawatjalan.noRegistrasiRawatJalan,'+
                't_registrasirawatjalan.statusPasien,t_registrasi.noRekamedis,'+
                't_pasien.nmPasien FROM t_pasien Inner Join t_registrasi ON t_pasien.noRekamedis = t_registrasi.noRekamedis Inner Join t_registrasirawatjalan '+
                'ON t_registrasi.noDaftar = t_registrasirawatjalan.noDaftar where t_registrasi.noDaftar="'+edtNoRegistrasi.Text+'" and t_registrasirawatjalan.noRegistrasiRawatJalan="'+edtNoRajal.Text+'" and t_registrasirawatjalan.statusPasien="konsulPoli"';
  
    Open;
  end;
  if DataSimrs.qryvw_pasienrawatjalan.RecordCount = 0 then
     ShowMessage('Data Tidak ada ')
  else
  begin
    if MessageDlg('Anda Ingin Membatalkan pasien RM/Nama "'+DataSimrs.qryvw_pasienrawatjalan['noRekamedis']+'","'+DataSimrs.qryvw_pasienrawatjalan['nmPasien']+'" ?', mtConfirmation,[mbyes,mbno],0)=mryes then
    begin
      //noRegRajal := DataSimrs.qryvw_pasienrawatjalan['noRegistrasiRawatJalan'];
       with DataSimrs.qryvw_pasienrawatjalan do
       begin
         Close;
         SQL.Clear;
         SQL.Text := 'delete from t_registrasirawatjalan where noRegistrasiRawatJalan="'+edtNoRajal.Text+'"';
         ExecSQL;
         SQL.Text := 'select noRegistrasiRawatJalan  from t_registrasirawatjalan';
         Open;
       end;
       aturKolomPxRajal;  tampilDataTglUnit; tampilDataPxRajal;
    end
    else
    Abort;
  end;
end;

procedure TFRawatJalanIgd.dxnvbrtmAntrianItemTindakanClick(
  Sender: TObject);
var
  tr_tindakanrajal: TFTindakanRawatJalan;
begin
  if edtNoRm.Text = '' then
    MessageDlg('Silahkan Pilih Data Pasien Dulu', mtWarning, [mbOK], 0)
  else
  begin
    tr_tindakanrajal := TFTindakanRawatJalan.Create(nil);
    tr_tindakanrajal.Parent := pnlTengahTegah;
    tr_tindakanrajal.Align := alClient;
    tr_tindakanrajal.Show;
    grpTindakan.Visible := False;
    refreshForm;
  end;
end;

procedure TFRawatJalanIgd.dxnvbrtmAntrianItemPemeriksaanClick(
  Sender: TObject);
var
  tr_pemeriksaanfisik: TFPemeriksaanFisik;
begin
  if edtNoRm.Text = '' then
    MessageDlg('Silahkan Pilih Data Pasien Dulu', mtWarning, [mbOK], 0)
  else
  begin
    tr_pemeriksaanfisik := TFPemeriksaanFisik.Create(nil);
    tr_pemeriksaanfisik.Parent := pnlTengahTegah;
    tr_pemeriksaanfisik.Align := alClient;
    tr_pemeriksaanfisik.Show;
    refreshForm;
  end;
end;

procedure TFRawatJalanIgd.dxnvbrtmAntrianItemPemeriksaanLabClick(
  Sender: TObject);
begin
 if edtNoRm.Text='' then
     MessageDlg('Silahkan Pilih Data Pasien Dulu', mtWarning, [mbOK], 0)
  else
  begin
    with DataSimrs.qryvw_pasienrawatjalan do
    begin
      Close;
      SQL.Clear;
      //SQL.Text := 'select noRekamedis,noDaftar,nmPasien,jenisKelamin,unit,kdUnit,tglLahir from vw_pasienrawatjalan where noRekamedis="'+edtNoRm.Text+'" and noDaftar="'+edtNoRegistrasi.Text+'"';
      SQL.Text := 'SELECT t_registrasi.noDaftar,t_registrasi.noRekamedis,'+
                  't_registrasi.tglDaftar,t_pasien.nmPasien,t_pasien.tempatLahir,'+
                  't_pasien.tglLahir,t_pasien.jenisKelamin,t_pasien.agama,'+
                't_pasien.alamat,t_registrasirawatjalan.kdUnit,t_unit.unit FROM t_registrasi Inner Join t_registrasirawatjalan '+
                'ON t_registrasi.noDaftar = t_registrasirawatjalan.noDaftar Inner Join t_pasien '+
                'ON t_registrasi.noRekamedis = t_pasien.noRekamedis Inner Join t_unit '+
                'ON t_registrasirawatjalan.kdUnit = t_unit.kdUnit WHERE t_registrasi.noDaftar="'+edtNoRegistrasi.Text+'" and t_registrasi.noRekamedis="'+edtNoRm.Text+'"';
      Open;
    end;

    if DataSimrs.qryvw_pasienrawatjalan.RecordCount >= 1 then
    begin
    with FPermintaanLabRajal do
    begin
      edtNoRm.Text := DataSimrs.qryvw_pasienrawatjalan['noRekamedis'];
      edtNoRegistrasi.Text := DataSimrs.qryvw_pasienrawatjalan['noDaftar'];
      edtNama.Text := DataSimrs.qryvw_pasienrawatjalan['nmPasien'];
      edtJk.Text := DataSimrs.qryvw_pasienrawatjalan['jenisKelamin'];
      edtAsalRuang.Text := DataSimrs.qryvw_pasienrawatjalan['unit'];
      edtKode.Text := DataSimrs.qryvw_pasienrawatjalan['kdUnit'];
      dtpTglLahir.Date := DataSimrs.qryvw_pasienrawatjalan['tglLahir'];
      cbbDokter.Text := '';
      cxmKeterangan.Text := '';
      ShowModal;
    end;
    end
    else
    Abort;
  end;
end;

procedure TFRawatJalanIgd.dxnvbrtmAntrianItemPemreiksaanRadClick(
  Sender: TObject);
begin
if edtNoRm.Text='' then
     MessageDlg('Silahkan Pilih Data Pasien Dulu', mtWarning, [mbOK], 0)
  else
  begin
   with DataSimrs.qryvw_pasienrawatjalan do
    begin
      Close;
      SQL.Clear;
      //SQL.Text := 'select noRekamedis,noDaftar,nmPasien,jenisKelamin,unit,kdUnit,tglLahir from vw_pasienrawatjalan where noRekamedis="'+edtNoRm.Text+'" and noDaftar="'+edtNoRegistrasi.Text+'"';
      SQL.Text := 'SELECT t_registrasi.noDaftar,t_registrasi.noRekamedis,'+
                  't_registrasi.tglDaftar,t_pasien.nmPasien,t_pasien.tempatLahir,'+
                  't_pasien.tglLahir,t_pasien.jenisKelamin,t_pasien.agama,'+
                't_pasien.alamat,t_registrasirawatjalan.kdUnit,t_unit.unit FROM t_registrasi Inner Join t_registrasirawatjalan '+
                'ON t_registrasi.noDaftar = t_registrasirawatjalan.noDaftar Inner Join t_pasien '+
                'ON t_registrasi.noRekamedis = t_pasien.noRekamedis Inner Join t_unit '+
                'ON t_registrasirawatjalan.kdUnit = t_unit.kdUnit WHERE t_registrasi.noDaftar="'+edtNoRegistrasi.Text+'" and t_registrasi.noRekamedis="'+edtNoRm.Text+'"';
      Open;
    end;

    if DataSimrs.qryvw_pasienrawatjalan.RecordCount >= 1 then
    begin
    with FPermintaanRadRajal do
    begin
      edtNoRm.Text := DataSimrs.qryvw_pasienrawatjalan['noRekamedis'];
      edtNoRegistrasi.Text := DataSimrs.qryvw_pasienrawatjalan['noDaftar'];
      edtNama.Text := DataSimrs.qryvw_pasienrawatjalan['nmPasien'];
      edtJk.Text := DataSimrs.qryvw_pasienrawatjalan['jenisKelamin'];
      edtAsalRuang.Text := DataSimrs.qryvw_pasienrawatjalan['unit'];
      edtKode.Text := DataSimrs.qryvw_pasienrawatjalan['kdUnit'];
      dtpTglLahir.Date := DataSimrs.qryvw_pasienrawatjalan['tglLahir'];
      cbbDokter.Text := '';
      cxmKeterangan.Text := '';
      Show;
    end;
    end
    else
    Abort;
    
  end;
end;

procedure TFRawatJalanIgd.dxnvbrtmAntrianItemStatusKeluarClick(
  Sender: TObject);
begin
  FStatusPulang.Show;
end;

procedure TFRawatJalanIgd.dxnvbrtmAntrianItemTindakanIgdClick(
  Sender: TObject);
begin
 if (edtNoRm.Text = '') and (cbbUnitPelayanan.Text='IGD') then
    MessageDlg('Silahkan Pilih Data Pasien Dulu', mtWarning, [mbOK], 0)
  else
  begin
    FTindakanIgd.edtNoRm.Text := edtNoRm.Text;
    FTindakanIgd.edtNmPasien.Text := edtNmPasien.Text;
    FTindakanIgd.edtPenjamin.Text := edtPenjamin.Text;
    FTindakanIgd.edtDokter.Text := edtDokter.Text;
    FTindakanIgd.edtNoRegistrasi.Text := edtNoRegistrasi.Text;
    FTindakanIgd.edtNoRajal.Text := edtNoRajal.Text;
    FTindakanIgd.edtAlamat.Text := edtAlamat.Text;
    FTindakanIgd.edtTempatLahir.Text := edtTempatLahir.Text;
    FTindakanIgd.dtpTglLahir.Date := dtpTglLahir.Date;
    FTindakanIgd.edtUmur.Text := edtUmur.Text;
    FTindakanIgd.edtJk.Text := edtJk.Text;
    FTindakanIgd.Show;
  end;
end;

procedure TFRawatJalanIgd.dxnvbrtmAntrianEResepClick(Sender: TObject);
begin
if (edtNoRm.Text = '') then
    MessageDlg('Silahkan Pilih Data Pasien Dulu...!', mtInformation, [mbok], 0)
  else
  FEresepRajal.Show;
end;

procedure TFRawatJalanIgd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Application.Terminate;
end;

procedure TFRawatJalanIgd.dxnvbrtmAntrianItemHasilLabClick(
  Sender: TObject);
var
  noRmIgd,o:String;
begin
    noRmIgd :=  edtNoRm.Text;
    with DataSimrs.qryHd do
    begin
      Active := True;
      Close;
      SQL.Clear;
      SQL.Text := 'SELECT'+
                  '`PID`'+
                  ', `PNAME`'+
                  ', `SEX`'+
                  ', DATE_FORMAT(`DOB`,"%d-%m-%Y") AS tglLahir'+
                  ', `AGEYY`'+
                  ', `AGEMM`'+
                  ', `AGEDD`'+
                  ', `LNO`'+
                  ', DATE_FORMAT(`REQUEST_DT`,"%d-%m-%Y %H.%i") AS tglPermintaan'+
                  ', DATE_FORMAT(`VALIDATE_ON`,"%d-%m-%Y %H.%i") AS tglSelesai'+
                  ', `SOURCE_NM`'+
                  ', `CLINICIAN_NM`'+
              'FROM'+
                  '`labreshd`'+
              'WHERE (LPAD(`PID`,8,"0")="'+noRmIgd+'") AND (DATE_FORMAT(`REQUEST_DT`,"%Y-%m-%d") BETWEEN "'+FormatDateTime('YYYY-MM-dd',dtpTglMasuk.Date)+'" AND "'+FormatDateTime('YYYY-MM-dd',IncDay(dtpTglMasuk.Date,1))+'")  ';
      Open;

    end;

    o := DataSimrs.qryHd['LNO'];

    with DataSimrs.qryTd do
    begin
      Active := True;
      Close;
      SQL.Clear;
      SQL.Text := 'SELECT'+
                  '`ONO`'+
                  ', `TEST_GROUP`'+
                  ', `ITEM_PARENT`'+
                  ', `TEST_NM`'+
                  ', `RESULT_VALUE`'+
                  ', `RESULT_FT`'+
                  ', `UNIT`'+
                  ', `REF_RANGE`'+
                  ', `FLAG`'+
                  ', `VALIDATE_BY`'+
              'FROM'+
                  '`labresdt` where `ONO`="'+o+'"';
      Open;
    end;

    frxrprtLab.LoadFromFile(ExtractFilePath(Application.ExeName)+'laporan\hasilLab.fr3');
      //frxrprtKartuBerobat.PrintOptions.ShowDialog:=True;
    frxrprtLab.ShowReport;

end;

procedure TFRawatJalanIgd.dxnvbrtmRegistrasiOKClick(Sender: TObject);
begin
if (edtNoRm.Text='') or (edtNoRegistrasi.Text='') then
    MessageDlg('Silahkan Pilih Data Pasien Dulu...',mtWarning,[mbOK],0)
    else
    begin
      with DataSimrs.qryvw_pasienrawatjalan do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'SELECT noRekamedis,noDaftar,tglDaftar,`unit` FROM vw_pasienrawatjalan WHERE noRekamedis="'+edtNoRm.Text+'" AND noDaftar="'+edtNoRegistrasi.Text+'" ';
        Open;
      end;

      with FRegistrasiRuangOk do
      begin
        edtNORM.Text := DataSimrs.qryvw_pasienrawatjalan['noRekamedis'];
        edtNOREGIS.Text := DataSimrs.qryvw_pasienrawatjalan['noDaftar'];
        dtpTGLREGIS.Date := DataSimrs.qryvw_pasienrawatjalan['tglDaftar'];
        edtUNITASAL.Text := DataSimrs.qryvw_pasienrawatjalan['unit'];
        Show;
      end;
    end;
end;

procedure TFRawatJalanIgd.dxnvbrtmAntrianItemRiwayatObatClick(
  Sender: TObject);
begin
  with DataSimrs.qryt_resepranap do
begin
  Close;
  SQL.Clear;
  SQL.Text := 'select * from t_resepranap where noRekamedis="'+edtNoRm.Text+'"';
  Open;
end;

with DataSimrs.qryt_penjualanobatrajal do
begin
 Close;
 SQL.Clear;
 SQL.Text := 'select * from t_penjualanobatrajal where noRekamedis="'+edtNoRm.Text+'"';
 Open;
end;

FRiwayatObatPasien.Show;
end;

procedure TFRawatJalanIgd.dxnvbrtmAntrianItemJadwalKontrolClick(
  Sender: TObject);
begin
  with DataSimrs.qryvw_pasienrawatjalan do
   begin
     Close;
     SQL.Clear;
     SQL.Text := 'select noDaftar,noRekamedis,nmPasien,tempatLahir,tglLahir,alamat from vw_pasienrawatjalan where noDaftar="'+edtNoRegistrasi.Text+'"';
     Open;
   end;
  if DataSimrs.qryvw_pasienrawatjalan['noDaftar'] = edtNoRegistrasi.Text then
  begin
   WITH FJadwalKontrolPasienRajal Do
   begin
     edtNORekamedis.Text := DataSimrs.qryvw_pasienrawatjalan['noRekamedis'];
     edtNmPasien.Text := DataSimrs.qryvw_pasienrawatjalan['nmPasien'];
     edtTempatLahir.Text := DataSimrs.qryvw_pasienrawatjalan['tempatLahir'];
     dtpTglLahir.Date := DataSimrs.qryvw_pasienrawatjalan['tglLahir'];
     cxmAlamat.Text := DataSimrs.qryvw_pasienrawatjalan['alamat'];
     btnSimpan.Caption := 'SIMPAN';
     Show;
   end
  end;

end;

procedure TFRawatJalanIgd.PANGGILANTRIAN1Click(Sender: TObject);
begin
  panggilAntrian;
end;

procedure TFRawatJalanIgd.dxnvbrtmPanggilClick(Sender: TObject);
begin
  panggilAntrian;
end;

procedure TFRawatJalanIgd.dxnvbrtmAntrianItemLaporanClick(Sender: TObject);
begin
  FLaporanRl4b.Show;
end;

end.
