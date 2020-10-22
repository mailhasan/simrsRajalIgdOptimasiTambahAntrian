unit UMasukanTindakanRawatJalan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DBGridEhGrouping, GridsEh, DBGridEh;

type
  TFMasukanTindakanRawatJalan = class(TForm)
    pnlBawah: TPanel;
    pnlAtas: TPanel;
    pnlKeluar: TPanel;
    pnlTengah: TPanel;
    grpDaftarDataTindakanRs: TGroupBox;
    pnl1: TPanel;
    dbgrdhDaftarTindakanRsPoli: TDBGridEh;
    lblCariNamaTindakan: TLabel;
    edtCariNamaTindakan: TEdit;
    btnPilih: TButton;
    grpDaftarTindakanPoli: TGroupBox;
    dbgrdhDaftarTindakanPoliIgd: TDBGridEh;
    btnHapus: TButton;
    procedure pnlKeluarClick(Sender: TObject);
    procedure btnPilihClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtCariNamaTindakanChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure tampilDataTindakan;
  end;

var
  FMasukanTindakanRawatJalan: TFMasukanTindakanRawatJalan;

implementation

{$R *.dfm}
uses UDataSImrs,UTindakanRawatjalan,URajalIgd, cxDBLookupComboBox, ADODB, DB;

procedure TFMasukanTindakanRawatJalan.tampilDataTindakan;
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
              'ON t_tindakanrawatjalankelompok.kdTarif = t_tariftindakan2.kdTarif AND t_tindakanrawatjalankelompok.kdTindakan = t_tariftindakan2.kdTindakan WHERE t_tariftindakan2.kdKelas IN ("10", "18", "19") AND t_tindakanrawatjalankelompok.unit="'+FRawatJalanIgd.cbbUnitPelayanan.Text+'"';
    Open;
  end;
end;

procedure TFMasukanTindakanRawatJalan.pnlKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFMasukanTindakanRawatJalan.btnPilihClick(Sender: TObject);
var
  i:Integer;
begin
 if dbgrdhDaftarTindakanRsPoli.SelectedRows.Count =0 then
  begin
    messageDlg('Tidak Ada data yang di pilih!!',mtwarning,[mbOK],0);
    exit;
  end;

    if dbgrdhDaftarTindakanRsPoli.SelectedRows.Count >0 then
    begin
      ///proses detail tindakan penunjang

      with dbgrdhDaftarTindakanRsPoli.DataSource.DataSet do
      begin
      for i:=0 to dbgrdhDaftarTindakanRsPoli.selectedrows.Count -1 do
      begin
      gotobookmark(pointer(dbgrdhDaftarTindakanRsPoli.SelectedRows.Items[i]));
      DataSimrs.qryt_tindakanrawatjalankelompok.Open;
      DataSimrs.qryt_tindakanrawatjalankelompok.Append;
      DataSimrs.qryt_tindakanrawatjalankelompok['kdTindakan']:=DataSimrs.qryvw_tindakantarifrajal['kdTindakan'];
      DataSimrs.qryt_tindakanrawatjalankelompok['kdTarif']:=DataSimrs.qryvw_tindakantarifrajal['kdTarif'];
      DataSimrs.qryt_tindakanrawatjalankelompok['kdUnit']:=FRawatJalanIgd.cbbUnitPelayanan.EditValue;
      DataSimrs.qryt_tindakanrawatjalankelompok['unit']:=FRawatJalanIgd.cbbUnitPelayanan.Text;
      DataSimrs.qryt_tindakanrawatjalankelompok.post;
      end;
      end;
      tampilDataTindakan;
      application.messagebox('SUKSES...!','INFORMASI',mb_ok);

    end;
end;

procedure TFMasukanTindakanRawatJalan.btnHapusClick(Sender: TObject);
var
  idKelompok:String;
begin
  if DataSimrs.qryvw_tindakantarifrajalkelompok.RecordCount<=0 then
  ShowMessage('Data Tidak ada ') else
  begin
  if MessageDlg('Anda Ingin Menghapus Data "'+DataSimrs.qryvw_tindakantarifrajalkelompok['tindakan']+'" ?', mtConfirmation,[mbyes,mbno],0)=mryes then
    begin
      idKelompok := DataSimrs.qryvw_tindakantarifrajalkelompok['idTindakanRawatjalanKelompok'];
       with DataSimrs.qryt_tindakanrawatjalankelompok do
        begin
        Close;
        SQL.Clear;
        SQL.Text := 'delete from t_tindakanrawatjalankelompok where idTindakanRawatjalanKelompok="'+idKelompok+'"';
        ExecSQL;
        SQL.Text := 'select * from t_tindakanrawatjalankelompok';
        Open;
        end;
        tampilDataTindakan;
    end
    else
    abort
  end;
end;


procedure TFMasukanTindakanRawatJalan.FormShow(Sender: TObject);
begin
  tampilDataTindakan;
end;

procedure TFMasukanTindakanRawatJalan.edtCariNamaTindakanChange(
  Sender: TObject);
begin
if edtCariNamaTindakan.Text = '' then
  begin
    with DataSimrs.qryvw_tindakantarifrajal do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'SELECT t_tariftindakan2.kdTarif,t_tariftindakan2.kdTindakan,'+
                  't_tindakan2.tindakan,t_tindakan2.kdKelompokTindakan,t_kelompoktindakan.kelompokTindakan,'+
                  't_tariftindakan2.tarif FROM t_tindakan2 INNER JOIN t_kelompoktindakan '+
                  'ON t_tindakan2.kdKelompokTindakan = t_kelompoktindakan.kdKelompokTindakan INNER JOIN t_tariftindakan2 '+
                  'ON t_tariftindakan2.kdTindakan = t_tindakan2.kdTindakan WHERE kdKelas IN("10","18","19")  ';
      Open;
    end;
  end
  else
  begin
    with DataSimrs.qryvw_tindakantarifrajal do
    begin
      Close;
      SQL.Clear;
      //SQL.Text := 'select * from vw_tindakantarifrajal where tindakan like "%'+edtCariNamaTindakan.Text+'%"';
      SQL.Text := 'SELECT t_tariftindakan2.kdTarif,t_tariftindakan2.kdTindakan,'+
                  't_tindakan2.tindakan,t_tindakan2.kdKelompokTindakan,t_kelompoktindakan.kelompokTindakan,'+
                  't_tariftindakan2.tarif FROM t_tindakan2 INNER JOIN t_kelompoktindakan '+
                  'ON t_tindakan2.kdKelompokTindakan = t_kelompoktindakan.kdKelompokTindakan INNER JOIN t_tariftindakan2 '+
                  'ON t_tariftindakan2.kdTindakan = t_tindakan2.kdTindakan WHERE kdKelas IN("10","18","19") and t_tindakan2.tindakan like "%'+edtCariNamaTindakan.Text+'%"';
      Open;
    end;
  end;
end;

end.
