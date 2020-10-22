unit UDiagnosaIcd9;

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
  dxSkinXmas2008Blue, DBGridEhGrouping, StdCtrls, Grids, GridsEh, DBGridEh,
  cxTextEdit, cxLabel, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, ExtCtrls;

type
  TFDiagnosaIcd9 = class(TForm)
    pnlTengah: TPanel;
    grpNoDokter: TGroupBox;
    cbbDokter: TcxLookupComboBox;
    grpDiagnosa: TGroupBox;
    pnlAtas1: TPanel;
    lblIcd10: TLabel;
    lblKeterangan: TLabel;
    edtKdIcd10: TEdit;
    mmoKetarangan: TMemo;
    lblKodeIcd9: TcxLabel;
    lblIcd101: TcxLabel;
    edtIcd9: TcxTextEdit;
    edtPencarian: TEdit;
    dbgrdhDiagnosa: TDBGridEh;
    strngrdIcd9: TStringGrid;
    pnlBawah: TPanel;
    btnSelesai: TButton;
    btnSimpan: TButton;
    btnTambah: TButton;
    btnUbah: TButton;
    btnHapus: TButton;
    pnlAtas: TPanel;
    pnlKeluar: TPanel;
    procedure pnlKeluarClick(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure edtPencarianChange(Sender: TObject);
    procedure strngrdIcd9Click(Sender: TObject);
    procedure btnSelesaiClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure tambah;
    procedure tampilRiwayatIcd9;
    procedure tampilIcd9;
    procedure tampilDokter;
    procedure aturkolomIcd9;
    procedure tampildataIcd9;
  end;

var
  FDiagnosaIcd9: TFDiagnosaIcd9;

implementation

{$R *.dfm}
uses UDataSImrs,URajalIgd;

procedure TFDiagnosaIcd9.tambah;
begin
  cbbDokter.Text := FRawatJalanIgd.edtDokter.Text;
  edtPencarian.Text := '';
  edtKdIcd10.Text := '';
  edtIcd9.Text := '';
  
  //tampilDokter;
  tampilRiwayatIcd9;
end;

procedure TFDiagnosaIcd9.tampilRiwayatIcd9;
begin
  with DataSimrs.qryvw_t_transaksiicd9 do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT t_transaksiicd9.noIcd9Pasien, t_transaksiicd9.noDaftar,'+
                't_transaksiicd9.kdIcd9,t_transaksiicd9.icd,'+
                't_transaksiicd9.kdPetugasMedis,t_tenagamedis2.namapetugasMedis,'+
                't_transaksiicd9.noRekamedis FROM t_transaksiicd9 INNER JOIN t_tenagamedis2 '+
                'ON t_transaksiicd9.kdPetugasMedis = t_tenagamedis2.kdPetugasMedis where t_transaksiicd9.noRekamedis="'+FRawatJalanIgd.edtNoRm.Text+'"';
    Open;
  end;
end;

procedure TFDiagnosaIcd9.tampilIcd9;
begin
  with DataSimrs.qryIcd9 do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from t_icd9 where kdIcd9 like "'+edtPencarian.Text+'%" or  icd9 like  "%'+edtPencarian.Text+'%" limit 50';
    Open;
  end;
end;

procedure TFDiagnosaIcd9.tampilDokter;
begin
  with DataSimrs.qryDokter do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT t_tenagamedis2.kdPetugasMedis,t_tenagamedis2.namapetugasMedis,'+
                't_tenagamedis2.kdKelompokTenagaMedis,'+
               't_kelompoktenagamedis.KelompokTenagaMedis FROM t_kelompoktenagamedis INNER JOIN t_tenagamedis2 '+
               'ON t_tenagamedis2.kdKelompokTenagaMedis = t_kelompoktenagamedis.kdKelompokTenagaMedis WHERE t_tenagamedis2.kdKelompokTenagaMedis IN ("ktm1","ktm2","ktm5","ktm6","ktm7","ktm8")';
    Open;
  end;
end;

procedure TFDiagnosaIcd9.aturkolomIcd9;
begin
  with strngrdIcd9 do
  begin
    ColCount :=3;
    RowCount :=2;
    FixedCols:=1;
    DefaultROwHeight:=18;
    Cells[0,0]:='No.';
    Cells[1,0]:='Kode Icd';
    Cells[2,0]:='ICD 9';

    //lebar kolom
    ColWidths[0]:=25;
    ColWidths[1]:=150;
    ColWidths[2]:=400;
  end;
end;

procedure TFDiagnosaIcd9.tampildataIcd9;
var
  i:Integer;
begin
  if DataSimrs.qryIcd9.RecordCount<>0 then
  begin
    strngrdIcd9.RowCount := DataSimrs.qryIcd9.RecordCount+1;
    for i:=0 to DataSimrs.qryIcd9.RecordCount-1 do
    begin
      strngrdIcd9.Cells[0,i+1] := IntToStr(i+1)+'.';
      strngrdIcd9.Cells[1,i+1] := DataSimrs.qryIcd9.FieldByName('kdIcd9').AsString;
      strngrdIcd9.Cells[2,i+1] := DataSimrs.qryIcd9.FieldByName('icd9').AsString;
      DataSimrs.qryIcd9.Next;
    end;
  end;
end;

procedure TFDiagnosaIcd9.pnlKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFDiagnosaIcd9.btnTambahClick(Sender: TObject);
begin
  tambah;
end;

procedure TFDiagnosaIcd9.FormShow(Sender: TObject);
begin
  tambah;
end;

procedure TFDiagnosaIcd9.btnSimpanClick(Sender: TObject);
begin
if (cbbDokter.Text = '') or (edtKdIcd10.Text='') or (edtIcd9.Text='') then
  ShowMessage('Data Harus Di Isi Lengkap...!')
  else
  begin
    with DataSimrs.qryvw_t_transaksiicd9 do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'insert into t_transaksiicd9 (noDaftar,noRekamedis,kdIcd9,icd,kdPetugasMedis) values '+
                  '("'+FRawatJalanIgd.edtNoRegistrasi.Text+'","'+FRawatJalanIgd.edtNoRm.Text+'",'+
                  '"'+edtKdIcd10.Text+'","'+edtIcd9.Text+'","'+cbbDokter.EditValue+'")';
      ExecSQL;
      SQL.Text := 'select * from t_transaksiicd9';
      Open;
    end;
    tampilRiwayatIcd9;
  end;
end;

procedure TFDiagnosaIcd9.btnHapusClick(Sender: TObject);
var
  kode:String;
begin
if DataSimrs.qryvw_t_transaksiicd9.RecordCount<=0 then
  ShowMessage('Data Tidak ada ') else
  begin
  if MessageDlg('Anda Ingin Menghapus Data Diagnosa ICD 9?', mtConfirmation,[mbyes,mbno],0)=mryes then
  begin
    Kode := DataSimrs.qryvw_t_transaksiicd9['noIcd9Pasien'];
    with DataSimrs.qryt_transaksiicd9 do
    begin
    Close;
    SQL.Text:='DELETE from t_transaksiicd9 WHERE noIcd9Pasien="'+IntToStr(StrToInt(kode))+'"';
    ExecSQL;
    SQL.Text:='select * from t_transaksiicd9';
    Open;
    end;
  tampilRiwayatIcd9;
  end
  else
  abort;
end;
end;

procedure TFDiagnosaIcd9.edtPencarianChange(Sender: TObject);
begin
if edtPencarian.Text = '' then
    strngrdIcd9.Visible := False
  else
  begin
    strngrdIcd9.Visible := True;
    aturkolomIcd9; tampilIcd9; tampildataIcd9;
  end;
end;

procedure TFDiagnosaIcd9.strngrdIcd9Click(Sender: TObject);
begin
  edtKdIcd10.Text := strngrdIcd9.Cells[1,strngrdIcd9.selection.top];
  edtIcd9.Text := strngrdIcd9.Cells[2,strngrdIcd9.selection.top];
  strngrdIcd9.Visible := False;
end;

procedure TFDiagnosaIcd9.btnSelesaiClick(Sender: TObject);
begin
  Close;
end;

end.
