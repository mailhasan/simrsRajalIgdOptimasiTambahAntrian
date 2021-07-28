unit URiwayatKunjungan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, DBGridEh, StdCtrls, Mask, DBCtrlsEh,
  DBLookupEh, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, Grids;

type
  TFRiwayatKunjungan = class(TForm)
    pnlBawah: TPanel;
    pnlAtas: TPanel;
    pnlKeluar: TPanel;
    pnlTengah: TPanel;
    strngrdPoli: TStringGrid;
    procedure FormShow(Sender: TObject);
    procedure pnlKeluarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure reset;
    procedure aturkolomPoli;
    procedure ambildataKolomPoli;
    procedure tampilKolomPoli;
    procedure aturkolomTndk;
    procedure ambildataTndk;
    procedure tampildataTndk;
  end;

var
  FRiwayatKunjungan: TFRiwayatKunjungan;

implementation

{$R *.dfm}
uses UDataSimrs,URajalIgd, ADODB, DB;

/// reset
procedure TFRiwayatKunjungan.reset;
  var
  i:integer;
begin
  for i := 0 to ComponentCount -1 do
    begin
      if (Components[i] is TEdit) and (TEdit(Components[i]).Tag = 0) then
       Tedit(Components[i]).Text :=''
    end;
end;

/// atur kolom poli
procedure TFRiwayatKunjungan.aturkolompoli;
var
  i,j:integer;
begin
 with strngrdPoli do
  begin

  for i := 0 to colCount-1 do
        for j := 0 to rowCount-1 do
          Cells[i,j]:='';

  ColCount :=9;
  RowCount :=2;
  FixedCols:=1;
  DefaultROwHeight:=18;
  //Options := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect];
  Cells[0,0]:='No.';
  Cells[1,0]:= 'UNIT';
  Cells[2,0]:= 'CARA BAYAR';
  Cells[3,0]:= ' STATUS KELUAR';
  Cells[4,0]:= 'DOKTER/PETUGAS MEDIS';
  Cells[5,0]:= 'NO REGISTER';
  Cells[6,0]:= 'NO RAJAL';
  Cells[7,0]:= 'TGL MASUK';
  Cells[8,0]:= 'TGL KELUAR';

  //lebar kolom
  ColWidths[0]:=25;
  ColWidths[1]:=150;
  ColWidths[2]:=150;
  ColWidths[3]:=150;
  ColWidths[4]:=220;
  ColWidths[5]:=100;
  ColWidths[6]:=100;
  ColWidths[7]:= 100;
  ColWidths[8]:= 100;
  end;
end;

/// ambil data kolom poli
procedure TFRiwayatKunjungan.ambildatakolompoli;
begin
  with DataSimrs.qryvw_pasienrawatjalan do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT '+
                  't_registrasi.noDaftar,'+
                  't_registrasi.noRekamedis,'+
                  't_registrasirawatjalan.noRegistrasiRawatJalan,'+
                  't_registrasi.tglDaftar,'+
                  't_registrasi.tglPulang,'+
                  't_unit.unit,'+
                  't_asalpasien.asalPasien,'+
                  't_carabayar.carabayar,'+
                  't_penjamin.penjamin,'+
                  't_statuskeluar.statusKeluar,'+
                  't_tenagamedis2.namapetugasMedis,'+
                  't_registrasirawatjalan.ketMasukPasien,'+
                  't_registrasirawatjalan.statusPasien FROM t_registrasi INNER JOIN t_registrasirawatjalan '+
                  'ON t_registrasi.noDaftar = t_registrasirawatjalan.noDaftar INNER JOIN t_pasien '+
                  'ON t_registrasi.noRekamedis = t_pasien.noRekamedis INNER JOIN t_unit '+
                  'ON t_registrasirawatjalan.kdUnit = t_unit.kdUnit INNER JOIN t_asalpasien '+
                  'ON t_registrasi.kdAsalPasien = t_asalpasien.kdAsalPasien INNER JOIN t_carabayar '+
                  'ON t_registrasi.kdCaraBayar = t_carabayar.kdCaraBayar INNER JOIN t_penjamin '+
                  'ON t_registrasi.kdPenjamin = t_penjamin.kdPenjamin INNER JOIN t_statuskeluar '+
                  'ON t_registrasi.kdStatusKeluar = t_statuskeluar.kdStatusKeluar LEFT JOIN t_tenagamedis2 '+
                  'ON t_registrasi.kdTenagaMedis = t_tenagamedis2.kdPetugasMedis where t_registrasi.noRekamedis="'+FRawatJalanIgd.edtNoRm.Text+'" ORDER BY t_registrasi.tglDaftar DESC';
    Open;
  end;
end;

/// tampil data poli
procedure TFRiwayatKunjungan.tampilkolompoli;
var i:Integer;
begin
  if DataSimrs.qryvw_pasienrawatjalan.RecordCount<>0 then
  begin
    strngrdPoli.RowCount := DataSimrs.qryvw_pasienrawatjalan.RecordCount+1;
    for i:=0 to DataSimrs.qryvw_pasienrawatjalan.RecordCount-1 do
    begin
      strngrdPoli.Cells[0,i+1] := IntToStr(i+1)+'.';
      strngrdPoli.Cells[1,i+1] := DataSimrs.qryvw_pasienrawatjalan.FieldByName('unit').AsString;
      strngrdPoli.Cells[2,i+1] := DataSimrs.qryvw_pasienrawatjalan.FieldByName('carabayar').AsString;
      strngrdPoli.Cells[3,i+1] := DataSimrs.qryvw_pasienrawatjalan.FieldByName('statusKeluar').AsString;
      strngrdPoli.Cells[4,i+1] := DataSimrs.qryvw_pasienrawatjalan.FieldByName('namapetugasMedis').AsString;
      strngrdPoli.Cells[5,i+1] := DataSimrs.qryvw_pasienrawatjalan.FieldByName('noDaftar').AsString;
      strngrdPoli.Cells[6,i+1] := DataSimrs.qryvw_pasienrawatjalan.FieldByName('noRegistrasiRawatJalan').AsString;
      strngrdPoli.Cells[7,i+1] := DataSimrs.qryvw_pasienrawatjalan.FieldByName('tglDaftar').AsString;
      strngrdPoli.Cells[8,i+1] := DataSimrs.qryvw_pasienrawatjalan.FieldByName('tglPulang').AsString;
      DataSimrs.qryvw_pasienrawatjalan.Next
    end;
  end;
end;

/// aturkolom tindakan
procedure TFRiwayatKunjungan.aturkolomTndk;

begin

end;
/// ambil data tindakan
procedure TFRiwayatKunjungan.ambildataTndk;
begin

end;

/// tampil data tindakan
procedure TFRiwayatKunjungan.tampildataTndk;
begin
  
end;


procedure TFRiwayatKunjungan.FormShow(Sender: TObject);
begin
aturkolompoli; ambildatakolompoli; tampilkolompoli;
end;

procedure TFRiwayatKunjungan.pnlKeluarClick(Sender: TObject);
begin
  Close;
end;

end.
