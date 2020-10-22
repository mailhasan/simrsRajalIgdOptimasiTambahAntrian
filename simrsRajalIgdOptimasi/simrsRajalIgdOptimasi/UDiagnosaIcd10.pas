unit UDiagnosaIcd10;

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
  dxSkinXmas2008Blue, DBGridEhGrouping, Grids, GridsEh, DBGridEh, cxLabel,
  cxTextEdit, StdCtrls, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, ExtCtrls;

type
  TFDiagnosaIcd10 = class(TForm)
    pnlBawah: TPanel;
    btnSelesai: TButton;
    btnSimpan: TButton;
    btnTambah: TButton;
    btnUbah: TButton;
    btnHapus: TButton;
    pnlAtas: TPanel;
    pnlKeluar: TPanel;
    pnlTengah: TPanel;
    grpNoDokter: TGroupBox;
    cbbDokter: TcxLookupComboBox;
    grpDiagnosa: TGroupBox;
    pnlAtas1: TPanel;
    lblIcd10: TLabel;
    lblJenisDiagnosa: TLabel;
    lblJenisKasus: TLabel;
    cbbJenisDiagnosa: TcxLookupComboBox;
    cbbJenisKasus: TcxLookupComboBox;
    edtKdIcd10: TEdit;
    edtIcd10: TcxTextEdit;
    lblKodeIcd: TcxLabel;
    lblIcd: TcxLabel;
    edtPencarian: TEdit;
    strngrdIcd: TStringGrid;
    strngrdDiagnosa10: TStringGrid;
    procedure pnlKeluarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtPencarianChange(Sender: TObject);
    procedure edtPencarianKeyPress(Sender: TObject; var Key: Char);
    procedure edtPencarianKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure strngrdIcdDblClick(Sender: TObject);
    procedure strngrdIcdKeyPress(Sender: TObject; var Key: Char);
    procedure btnTambahClick(Sender: TObject);
    procedure cbbJenisDiagnosaKeyPress(Sender: TObject; var Key: Char);
    procedure cbbJenisKasusKeyPress(Sender: TObject; var Key: Char);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure btnSelesaiClick(Sender: TObject);
    procedure btnTampilDetailClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure tambah;
    procedure tampilIcd10;
    procedure vw_diagnosa10;
    procedure aturKolomIcd10;
    procedure tampildataicd10;
    procedure aturKolomDiagnosa10;
    procedure tampildataDiagnosa10;
  end;

var
  FDiagnosaIcd10: TFDiagnosaIcd10;

implementation

{$R *.dfm}
uses UDataSImrs,UTampilDetailIcd10, URajalIgd, ADODB, DB;

procedure TFDiagnosaIcd10.tambah;
begin
  cbbDokter.Text := FRawatJalanIgd.edtDokter.Text;
  edtPencarian.Text := '';
  edtKdIcd10.Text := '';
  edtIcd10.Text := '';
  cbbJenisDiagnosa.EditText := '';
  cbbJenisKasus.EditText := '';
  
  ///ambil dari procedure
  aturKolomDiagnosa10; vw_diagnosa10; tampildataDiagnosa10;
end;

procedure TFDiagnosaIcd10.tampilIcd10;
begin
 with DataSimrs.qryvw_icd10 do
  begin
    Active := True;
    Close;
    SQL.Clear;
    SQL.Text := 'select * from t_icd10 where kdIcd10 like "%'+edtPencarian.Text+'%" or icd10 like "%'+edtPencarian.Text+'%" or keterangan like "%'+edtPencarian.Text+'%" limit 80';
    Open;
  end;
end;

procedure TFDiagnosaIcd10.vw_diagnosa10;
begin
  with DataSimrs.qryvw_diagnosa10 do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT t_diagnosaicd10.noDiagnosaIcd10,t_diagnosaicd10.noDaftar,'+
                't_diagnosaicd10.noRekamedis,t_diagnosaicd10.kdIcd10,'+
                't_diagnosaicd10.icd10,t_diagnosaicd10.kdJenisDiagnosa,t_jenisdiagnosa.jenisDiagnosa,'+
                't_diagnosaicd10.kdJenisKasus,t_kasusdiagnosa.kasus,t_diagnosaicd10.kdTenagaMedis,'+
                't_tenagamedis2.namapetugasMedis,t_registrasi.tglDaftar,'+
                't_unit.unit FROM t_diagnosaicd10 INNER JOIN t_tenagamedis2 '+
                'ON t_diagnosaicd10.kdTenagaMedis = t_tenagamedis2.kdPetugasMedis INNER JOIN t_jenisdiagnosa '+
                'ON t_diagnosaicd10.kdJenisDiagnosa = t_jenisdiagnosa.kdJenisDiagnosa INNER JOIN t_kasusdiagnosa '+
                'ON t_diagnosaicd10.kdJenisKasus = t_kasusdiagnosa.kdKasusDiagnosa INNER JOIN t_registrasi '+
                'ON t_diagnosaicd10.noDaftar = t_registrasi.noDaftar INNER JOIN t_registrasirawatjalan '+
                'ON t_registrasirawatjalan.noDaftar = t_registrasi.noDaftar INNER JOIN t_unit '+
                'ON t_unit.kdUnit = t_registrasirawatjalan.kdUnit where t_diagnosaicd10.noRekamedis="'+FRawatJalanIgd.edtNoRm.Text+'" limit 30';
    Open;
  end;
end;

procedure TFDiagnosaIcd10.aturKolomIcd10;
begin
  with strngrdIcd do
  begin
    ColCount :=4;
    RowCount :=2;
    FixedCols:=1;
    DefaultROwHeight:=18;
    Cells[0,0]:='No.';
    Cells[1,0]:='Kode Icd';
    Cells[2,0]:='ICD';
    Cells[3,0]:='Keterangan';

    //lebar kolom
    ColWidths[0]:=25;
    ColWidths[1]:=150;
    ColWidths[2]:=400;
    ColWidths[3]:=400;
  end;
end;

procedure TFDiagnosaIcd10.aturKolomDiagnosa10;
begin
  with strngrdDiagnosa10 do
  begin
    ColCount :=9;
    RowCount :=2;
    FixedCols:=1;
    DefaultROwHeight:=18;
    Cells[0,0]:='No.';
    Cells[1,0]:='Kode Icd';
    Cells[2,0]:='ICD';
    Cells[3,0]:='JENIS DIDAGNOSA';
    Cells[4,0]:='KASUS';
    Cells[5,0]:='NAMA PETUGAS MEDIS';
    Cells[6,0]:='TGL DAFTAR';
    Cells[7,0]:='UNIT';
    Cells[8,0]:='id';

    //lebar kolom
    ColWidths[0]:=25;
    ColWidths[1]:=150;
    ColWidths[2]:=200;
    ColWidths[3]:=200;
    ColWidths[4]:=200;
    ColWidths[5]:=200;
    ColWidths[6]:=200;
    ColWidths[7]:=200;
    ColWidths[8]:=20;
  end;
end;


procedure TFDiagnosaIcd10.tampildataicd10;
var i:Integer;
begin
 if DataSimrs.qryvw_icd10.RecordCount<>0 then
  begin
    strngrdIcd.RowCount := DataSimrs.qryvw_icd10.RecordCount+1;
    for i:=0 to DataSimrs.qryvw_icd10.RecordCount-1 do
    begin
      strngrdIcd.Cells[0,i+1] := IntToStr(i+1)+'.';
      strngrdIcd.Cells[1,i+1] := DataSimrs.qryvw_icd10.FieldByName('kdIcd10').AsString;
      strngrdIcd.Cells[2,i+1] := DataSimrs.qryvw_icd10.FieldByName('icd10').AsString;
      strngrdIcd.Cells[3,i+1] := DataSimrs.qryvw_icd10.FieldByName('keterangan').AsString;
      DataSimrs.qryvw_icd10.Next;
    end;
  end;
end;

procedure TFDiagnosaIcd10.tampildataDiagnosa10;
var i:Integer;
begin
 if DataSimrs.qryvw_diagnosa10.RecordCount<>0 then
  begin
    strngrdDiagnosa10.RowCount := DataSimrs.qryvw_diagnosa10.RecordCount+1;
    for i:=0 to DataSimrs.qryvw_diagnosa10.RecordCount-1 do
    begin
      strngrdDiagnosa10.Cells[0,i+1] := IntToStr(i+1)+'.';
      strngrdDiagnosa10.Cells[1,i+1] := DataSimrs.qryvw_diagnosa10.FieldByName('kdIcd10').AsString;
      strngrdDiagnosa10.Cells[2,i+1] := DataSimrs.qryvw_diagnosa10.FieldByName('icd10').AsString;
      strngrdDiagnosa10.Cells[3,i+1] := DataSimrs.qryvw_diagnosa10.FieldByName('jenisDiagnosa').AsString;
      strngrdDiagnosa10.Cells[4,i+1] := DataSimrs.qryvw_diagnosa10.FieldByName('kasus').AsString;
      strngrdDiagnosa10.Cells[5,i+1] := DataSimrs.qryvw_diagnosa10.FieldByName('namapetugasMedis').AsString;
      strngrdDiagnosa10.Cells[6,i+1] := DataSimrs.qryvw_diagnosa10.FieldByName('tglDaftar').AsString;
      strngrdDiagnosa10.Cells[7,i+1] := DataSimrs.qryvw_diagnosa10.FieldByName('unit').AsString;
      strngrdDiagnosa10.Cells[8,i+1] := DataSimrs.qryvw_diagnosa10.FieldByName('noDiagnosaIcd10').AsString;
      DataSimrs.qryvw_diagnosa10.Next;
    end;
  end;
end;

procedure TFDiagnosaIcd10.pnlKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFDiagnosaIcd10.FormShow(Sender: TObject);
begin
   tambah;
   cbbDokter.Text := FRawatJalanIgd.edtDokter.Text;
end;

procedure TFDiagnosaIcd10.edtPencarianChange(Sender: TObject);
begin
if edtPencarian.Text = '' then
  strngrdIcd.Visible := False
  else
  begin
  strngrdIcd.Visible := True;
  aturKolomIcd10; tampilIcd10; tampildataicd10;
  end
end;

procedure TFDiagnosaIcd10.edtPencarianKeyPress(Sender: TObject;
  var Key: Char);
begin
IF Key=#13 then
  strngrdIcd.SetFocus;
end;

procedure TFDiagnosaIcd10.edtPencarianKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=VK_DOWN then
  strngrdIcd.SetFocus;
end;

procedure TFDiagnosaIcd10.strngrdIcdDblClick(Sender: TObject);
begin
  edtKdIcd10.Text := strngrdIcd.Cells[1,strngrdIcd.selection.top];
  edtIcd10.Text := strngrdIcd.Cells[2,strngrdIcd.selection.top];
  cbbJenisDiagnosa.SetFocus;
  strngrdIcd.Visible := False;
end;

procedure TFDiagnosaIcd10.strngrdIcdKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
  edtKdIcd10.Text := strngrdIcd.Cells[1,strngrdIcd.selection.top];
  edtIcd10.Text := strngrdIcd.Cells[2,strngrdIcd.selection.top];
  cbbJenisDiagnosa.SetFocus;
  strngrdIcd.Visible := False;
  end;
end;

procedure TFDiagnosaIcd10.btnTambahClick(Sender: TObject);
begin
  tambah;
end;

procedure TFDiagnosaIcd10.cbbJenisDiagnosaKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  cbbJenisKasus.SetFocus;
end;

procedure TFDiagnosaIcd10.cbbJenisKasusKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  btnSimpan.SetFocus;
end;

procedure TFDiagnosaIcd10.btnSimpanClick(Sender: TObject);
begin
if (cbbDokter.Text='') or (edtIcd10.Text='') or (edtKdIcd10.Text='') or (cbbJenisDiagnosa.Text='') or (cbbJenisKasus.Text='')  then
  ShowMessage('Mohon Data Di Isi Lengkap...!')
  else
  begin
    with DataSimrs.qryvw_diagnosa10 do
    begin
      Close;
      SQL.Clear;
      SQL.Text :='insert into t_diagnosaicd10 (noDaftar,noRekamedis,kdIcd10,icd10,'+
                  'kdJenisDiagnosa,kdJenisKasus,kdTenagaMedis) values '+
                  '("'+FRawatJalanIgd.edtNoRegistrasi.Text+'",'+
                  '"'+FRawatJalanIgd.edtNoRm.Text+'","'+edtKdIcd10.Text+'",'+
                  '"'+edtIcd10.Text+'","'+cbbJenisDiagnosa.EditValue+'",'+
                  '"'+cbbJenisKasus.EditValue+'","'+cbbDokter.EditValue+'")';
      ExecSQL;
      //SQL.Text := 'select * from t_diagnosaicd10 where noDaftar="'+FTransaksiRawatJalan.edtNoRegistrasi.Text+'"';
      //Open;
    end;
    //ambil dari procedure untuk tampil data diagnosa icd10
    aturKolomDiagnosa10; vw_diagnosa10; tampildataDiagnosa10;
  end
end;

procedure TFDiagnosaIcd10.btnHapusClick(Sender: TObject);
var
  kode: String;
begin
with DataSimrs.qryvw_diagnosa10 do
begin
  Close;
  SQL.Clear;
  SQL.Text := 'SELECT * from t_diagnosaicd10 where noDiagnosaIcd10="'+strngrdDiagnosa10.Cells[8,strngrdDiagnosa10.selection.top]+'"';
  Open;
end;

if DataSimrs.qryvw_diagnosa10.RecordCount<=0 then
  ShowMessage('Data Tidak ada ') else
  begin
  if MessageDlg('Anda Ingin Menghapus Data Diagnosa...?', mtConfirmation,[mbyes,mbno],0)=mryes then
  begin
    Kode := DataSimrs.qryvw_diagnosa10['noDiagnosaIcd10'];
    with DataSimrs.qryvw_diagnosa10 do
    begin
      Close;
      SQL.Text:='DELETE from t_diagnosaicd10 WHERE noDiagnosaIcd10="'+Kode+'"';
      ExecSQL;
      //SQL.Text:= 'select * from t_diagnosaicd10';
      //Open;
    end;
    aturKolomDiagnosa10; vw_diagnosa10; tampildataDiagnosa10;
  end else
  abort;
end;
end;

procedure TFDiagnosaIcd10.btnSelesaiClick(Sender: TObject);
begin
  Close;
end;

procedure TFDiagnosaIcd10.btnTampilDetailClick(Sender: TObject);
begin
  FTampilDetailIcd10.Show;
end;

end.
