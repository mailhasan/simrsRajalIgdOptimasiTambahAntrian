unit UHistoriTndkRajal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TFHistoriTndkRajal = class(TForm)
    grpHistoriTndkRajal: TGroupBox;
    grpMENU: TGroupBox;
    dbgrdhHistoriTndkRajal: TDBGridEh;
    lblNoRegisPasien: TLabel;
    btnProses: TButton;
    procedure FormShow(Sender: TObject);
    procedure btnProsesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FHistoriTndkRajal: TFHistoriTndkRajal;

implementation

{$R *.dfm}
uses UDataSimrs,UTindakanRawatjalan, ADODB, DB;

procedure TFHistoriTndkRajal.FormShow(Sender: TObject);
begin
with DataSimrs.qryt_tindakanpasienrajal do
begin
  Close;
  SQL.Clear;
  SQL.Text := 'select * from t_tindakanpasienrajal where noRegistrasiRawatJalan="'+lblNoRegisPasien.Caption+'"';
  Open;
end;
end;

procedure TFHistoriTndkRajal.btnProsesClick(Sender: TObject);
var
  noIdTndk,statusPembayaran:String;
  tr_tindakanrajal: TFTindakanRawatJalan;
begin
  noIdTndk := DataSimrs.qryt_tindakanpasienrajal['noTindakanPasienRajal'];
  statusPembayaran := 'LUNAS';
  /// pengujian 
  if (DataSimrs.qryt_tindakanpasienrajal['noTindakanPasienRajal']=noIdTndk) and
      (DataSimrs.qryt_tindakanpasienrajal['statusPembayaran']=statusPembayaran) then
      MessageDlg('Tindakan Sudah Lunas...! ',mtWarning,[mbOK],0)
      else
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
                      'ON t_registrasirawatjalan.noRegistrasiRawatJalan = t_tindakanpasienrajal.noRegistrasiRawatJalan where t_tindakanpasienrajal.noRegistrasiRawatJalan="'+lblNoRegisPasien.Caption+'" ';
          Open;
       end;
       FTindakanRawatjalan.edtNoTransaksiTindakanRajal.Text := DataSimrs.qryvw_detailtindakanpasienrajal['noTindakanPasienRajal'];
       Close;
      end;
end;

end.
