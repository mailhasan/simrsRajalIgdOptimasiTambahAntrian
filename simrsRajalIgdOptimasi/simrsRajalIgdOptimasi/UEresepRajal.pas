unit UEresepRajal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, cxButtons,
  StdCtrls, ExtCtrls, ComCtrls, cxControls, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxCurrencyEdit, DBGridEhGrouping, GridsEh, DBGridEh, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, DBAxisGridsEh;

type
  TFEresepRajal = class(TForm)
    pnlBawah: TPanel;
    pnlAtas: TPanel;
    pnlKeluar: TPanel;
    pnlTengah: TPanel;
    pnlAtas1: TPanel;
    grpDataResep: TGroupBox;
    lblNoResep: TLabel;
    edtNoResep: TEdit;
    lblTglResep: TLabel;
    dtpTglResep: TDateTimePicker;
    grpKodeObat: TGroupBox;
    lblKodeObat: TLabel;
    edtKodeObat: TEdit;
    lblNamaObat: TLabel;
    cbbObat: TcxLookupComboBox;
    cxcrncydtJumlahKronis: TcxCurrencyEdit;
    cxcrncydtJumlahNonKronis: TcxCurrencyEdit;
    cxtxtdtSatuan: TcxTextEdit;
    lblSatuan: TLabel;
    lblJmlKronis: TLabel;
    lblJmlNonKronis: TLabel;
    btnInput: TButton;
    pnlTengah1: TPanel;
    pnlAtas2: TPanel;
    grpDataObatEresep: TGroupBox;
    dbgrdhDataObat: TDBGridEh;
    pnlTengah2: TPanel;
    pnl1: TPanel;
    lblAturanPakai: TLabel;
    edtAturanPakai: TEdit;
    cbbDokter: TcxLookupComboBox;
    lblDokter: TLabel;
    btnRacikan: TButton;
    grpRacikan: TGroupBox;
    dbgrdhObatRacikan: TDBGridEh;
    pmEresep: TPopupMenu;
    Hapus1: TMenuItem;
    btnRiwayatObat: TButton;
    btnJadwalKontrol: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure btnInputClick(Sender: TObject);
    procedure cbbObatKeyPress(Sender: TObject; var Key: Char);
    procedure edtJumlahPakaiKeyPress(Sender: TObject; var Key: Char);
    procedure cxcrncydtJumlahKronisKeyPress(Sender: TObject; var Key: Char);
    procedure cxcrncydtJumlahNonKronisKeyPress(Sender: TObject; var Key: Char);
    procedure edtAturanPakaiKeyPress(Sender: TObject; var Key: Char);
    procedure btnRacikanClick(Sender: TObject);
    procedure Hapus1Click(Sender: TObject);
    procedure btnRiwayatObatClick(Sender: TObject);
    procedure btnJadwalKontrolClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure tampilObat;
    procedure refreshResep;
    procedure noOtomatis;
    procedure awalEresep;
    procedure awalEresepInput;
    procedure detailTampilObat;
    procedure detailTampilObatRck;
  end;

var
  FEresepRajal: TFEresepRajal;

implementation

{$R *.dfm}
uses
  UDataSimrs, URajalIgd, UObatRacikanRawatJalan, URiwayatObatPasien, ADODB, DB,
  DateUtils, UJadwalKontrolPasienRajal;

procedure TFEresepRajal.tampilObat;
begin
  with DataSimrs.qryObatRajal do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from t_stokobat where kdDepo="DP00"';
    Open;
  end;
end;

procedure TFEresepRajal.refreshResep;
begin
  with DataSimrs.qryt_resepranap do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from t_resepranap';
    Open;
  end;
end;

procedure TFEresepRajal.noOtomatis;
begin
  edtNoResep.Text := 'RSPRJ' + FormatDateTime('ddMMYYHHmmss', Now) + '-' + IntToStr(DataSimrs.qryt_resepranap.RecordCount + 1);
  dtpTglResep.DateTime := Now;
end;

procedure TFEresepRajal.awalEresep;
begin
  tampilObat;
  noOtomatis;
  awalEresepInput;
  detailTampilObat;
  detailTampilObatRck;
end;

procedure TFEresepRajal.awalEresepInput;
begin
  edtKodeObat.Text := '';
  cbbObat.Text := '';
  cxtxtdtSatuan.Text := '';
  cxcrncydtJumlahKronis.Value := 0;
  cxcrncydtJumlahNonKronis.Value := 0;
end;

procedure TFEresepRajal.detailTampilObat;
begin
  with DataSimrs.qryt_detailresepranap do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from t_detailresepranap where noResep="' + edtNoResep.Text + '"';
    Open;
  end
end;

procedure TFEresepRajal.detailTampilObatRck;
begin
  with DataSimrs.qryt_detailracikan do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from t_detailracikan where noDetailResepRanap="' + edtNoResep.Text + '"';
    Open;
  end;
end;

procedure TFEresepRajal.FormShow(Sender: TObject);
begin
  awalEresep;
end;

procedure TFEresepRajal.btnInputClick(Sender: TObject);
var
  tglResep, noOtomatisDtlResep, kodeDokter: string;
begin
  if (edtKodeObat.Text = '') or (cbbObat.Text = '') or (cxtxtdtSatuan.Text = '') or (cbbDokter.Text = '') then
    ShowMessage('Data Harus Di Isi Lengkap...!')
  else
  begin
    tglResep := FormatDateTime('yyyy-mm-dd hh:mm:ss', dtpTglResep.DateTime);
    noOtomatisDtlResep := 'DTR' + FormatDateTime('ddMMYYHHmmss', Now) + '-' + IntToStr(DataSimrs.qryt_detailresepranap.RecordCount + 1);
    with DataSimrs.qryDokter do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from t_tenagamedis2 where namapetugasMedis="' + cbbDokter.Text + '"';
      Open;
    end;
    kodeDokter := DataSimrs.qryDokter.Fieldbyname('kdPetugasMedis').AsString;
    if DataSimrs.qryt_resepranap.Locate('noResep', edtNoResep.Text, []) then
    begin
      with DataSimrs.qryt_resepranap do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'update t_resepranap set  noResep="' + edtNoResep.Text + '",' + 'noDaftarRawatInap="' + FRawatJalanIgd.edtNoRajal.Text + '",' + 'noRekamedis="' + FRawatJalanIgd.edtNoRm.Text + '",kdDepoObat="DP01",' + 'tglResep="' + tglResep + '",kdTenagaMedis="' + kodeDokter + '",statusResep="0" where noResep="' + edtNoResep.Text + '"';

        ExecSQL;
        SQL.Text := 'select * from t_resepranap';
        Open;
      end;

      with DataSimrs.qryt_detailresepranap do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'select noResep,kdObat from t_detailresepranap where noResep="' + edtNoResep.Text + '" and kdObat="' + edtKodeObat.Text + '" ';
        Open;
      end;

      if (DataSimrs.qryt_detailresepranap['noResep'] = edtNoResep.Text) and (DataSimrs.qryt_detailresepranap['kdObat'] = edtKodeObat.Text) then
      begin
        with DataSimrs.qryt_detailresepranap do
        begin
          Close;
          SQL.Clear;
          SQL.Text := 'update t_detailresepranap set jmlPemberianKronis=jmlPemberianKronis+"' + cxcrncydtJumlahKronis.Text + '",' + 'jmlPemberianNonKronis=jmlPemberianNonKronis+"' + cxcrncydtJumlahNonKronis.Text + '" where noResep="' + edtNoResep.Text + '" and kdObat="' + edtKodeObat.Text + '"';
          ExecSQL;
          SQL.Text := 'select * from t_detailresepranap';
          Open;
        end;
      end
      else
      begin
        with DataSimrs.qryt_detailresepranap do
        begin
          Close;
          SQL.Clear;
          SQL.Text := 'insert into t_detailresepranap (noDetailResepRanap,noResep,kdObat,nmObat,aturanPakai,jmlPemberianKronis,jmlPemberianNonKronis,statusRacikan,satuanJual) values ' + '("' + noOtomatisDtlResep + '","' + edtNoResep.Text + '","' + edtKodeObat.Text + '","' + cbbObat.EditValue + '",' + '"' + edtAturanPakai.Text + '","' + cxcrncydtJumlahKronis.Text + '","' + cxcrncydtJumlahNonKronis.Text + '","0","' + cxtxtdtSatuan.Text + '")';

          ExecSQL;
          SQL.Text := 'select * from t_detailresepranap';
          Open;
        end;
      end;

      awalEresepInput;
      detailTampilObat;
    end
    else
    begin
      with DataSimrs.qryt_resepranap do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'insert into t_resepranap (noResep,noDaftarRawatInap,noRekamedis,kdDepoObat,tglResep,kdTenagaMedis,statusResep) values ' + '("' + edtNoResep.Text + '","' + FRawatJalanIgd.edtNoRajal.Text + '","' + FRawatJalanIgd.edtNoRm.Text + '","DP01","' + tglResep + '","' + kodeDokter + '","0")';
        ExecSQL;
        SQL.Text := 'select * from t_resepranap';
        open;
      end;

      with DataSimrs.qryt_detailresepranap do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'insert into t_detailresepranap (noDetailResepRanap,noResep,kdObat,nmObat,aturanPakai,jmlPemberianKronis,jmlPemberianNonKronis,statusRacikan,satuanJual) values ' + '("' + noOtomatisDtlResep + '","' + edtNoResep.Text + '","' + edtKodeObat.Text + '","' + cbbObat.EditValue + '",' + '"' + edtAturanPakai.Text + '","' + cxcrncydtJumlahKronis.Text + '","' + cxcrncydtJumlahNonKronis.Text + '","0","' + cxtxtdtSatuan.Text + '")';

        ExecSQL;
        SQL.Text := 'select * from t_detailresepranap';
        Open;
      end;

      awalEresepInput;
      detailTampilObat;
    end
  end;
end;

procedure TFEresepRajal.cbbObatKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    if cbbObat.Text = '' then
      ShowMessage('Data Obat Tidak Boleh Kosong...!')
    else
    begin
      with DataSimrs.qryObatRajal do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'select * from t_stokobat where nmObat="' + cbbObat.EditValue + '" and kdDepo="DP00"';
        Open;
      end;
      if cbbObat.EditValue = DataSimrs.qryObatRajal.FieldByName('nmObat').AsString then
      begin
        if DataSimrs.qryObatRajal.FieldByName('jmlStok').AsInteger = 0 then
        begin
          MessageDlg('Stok Obat Kosong, hubungi pihak farmasi...!', mtWarning, [mbOK], 0);
          tampilObat;
        end
        else
        begin
          cbbObat.Text := DataSimrs.qryObatRajal.Fieldbyname('nmObat').AsString;
          edtKodeObat.Text := DataSimrs.qryObatRajal.Fieldbyname('kdObat').AsString;
          cxtxtdtSatuan.Text := DataSimrs.qryObatRajal.Fieldbyname('satuan').AsString;
          edtAturanPakai.SetFocus;
          cxcrncydtJumlahKronis.Value := 0;
          cxcrncydtJumlahNonKronis.Value := 0;
          tampilObat;
        end
      end
      else
      begin
        tampilObat;
        ShowMessage('Data Obat Tidak Di Temukan...!');
      end
    end;
  end;
end;

procedure TFEresepRajal.edtJumlahPakaiKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    edtAturanPakai.SetFocus;
end;

procedure TFEresepRajal.cxcrncydtJumlahKronisKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btnInput.SetFocus;
end;

procedure TFEresepRajal.cxcrncydtJumlahNonKronisKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    cxcrncydtJumlahKronis.SetFocus;
end;

procedure TFEresepRajal.edtAturanPakaiKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    cxcrncydtJumlahNonKronis.SetFocus;
end;

procedure TFEresepRajal.btnRacikanClick(Sender: TObject);
begin
  if DataSimrs.qryt_detailresepranap.RecordCount >= 1 then
  begin
    with FObatRacikanRawatJalan do
    begin
      FObatRacikanRawatJalan.lblNoResep.Caption := DataSimrs.qryt_detailresepranap.Fieldbyname('noDetailResepRanap').AsString;
      FObatRacikanRawatJalan.lblObat.Caption := 'Nama Obat/Kapsul :' + DataSimrs.qryt_detailresepranap.Fieldbyname('nmObat').AsString;
      Show;
    end;
  end
  else
    ShowMessage('Data Tidak Di Temukan...!');
end;

procedure TFEresepRajal.Hapus1Click(Sender: TObject);
var
  idDetailResepRanap: string;
begin
  if DataSimrs.qryt_detailresepranap.RecordCount >= 1 then
  begin
    idDetailResepRanap := DataSimrs.qryt_detailresepranap['noDetailResepRanap'];
    with DataSimrs.qryt_detailresepranap do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'delete  from t_detailresepranap where noDetailResepRanap="' + idDetailResepRanap + '"';
      ExecSQL;
      SQL.Text := 'select * from t_detailresepranap';
      Open;
    end;
    detailTampilObat;
  end
  else
    ShowMessage('Data Tidak Di Tidak Ada...!');
end;

procedure TFEresepRajal.btnRiwayatObatClick(Sender: TObject);
begin
  with DataSimrs.qryt_resepranap do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from t_resepranap where noRekamedis="' + FRawatJalanIgd.edtNoRm.Text + '"';
    Open;
  end;

  with DataSimrs.qryt_penjualanobatrajal do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from t_penjualanobatrajal where noRekamedis="' + FRawatJalanIgd.edtNoRm.Text + '"';
    Open;
  end;

  FRiwayatObatPasien.Show;
end;

procedure TFEresepRajal.btnJadwalKontrolClick(Sender: TObject);
begin
  with DataSimrs.qryvw_pasienrawatjalan do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select noDaftar,noRekamedis,nmPasien,tempatLahir,tglLahir,alamat from vw_pasienrawatjalan where noDaftar="' + FRawatJalanIgd.edtNoRegistrasi.Text + '"';
    Open;
  end;
  if DataSimrs.qryvw_pasienrawatjalan['noDaftar'] = FRawatJalanIgd.edtNoRegistrasi.Text then
  begin
    with FJadwalKontrolPasienRajal do
    begin
      edtNORekamedis.Text := DataSimrs.qryvw_pasienrawatjalan['noRekamedis'];
      edtNmPasien.Text := DataSimrs.qryvw_pasienrawatjalan['nmPasien'];
      edtTempatLahir.Text := DataSimrs.qryvw_pasienrawatjalan['tempatLahir'];
      dtpTglLahir.Date := DataSimrs.qryvw_pasienrawatjalan['tglLahir'];
      cxmAlamat.Text := DataSimrs.qryvw_pasienrawatjalan['alamat'];
      Show;
    end
  end;

end;

end.

