unit UHistoriTndkIgd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TFormHistoriTndkIgd = class(TForm)
    pnlAtas: TPanel;
    pnlKeluar: TPanel;
    pnlBawah: TPanel;
    pnlTengah: TPanel;
    btnProses: TButton;
    dbgrdhHistoriTndk: TDBGridEh;
    procedure pnlKeluarClick(Sender: TObject);
    procedure btnProsesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormHistoriTndkIgd: TFormHistoriTndkIgd;

implementation

{$R *.dfm}
USES UDataSimrs,UTindakanIgd, ADODB, DB;

procedure TFormHistoriTndkIgd.pnlKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormHistoriTndkIgd.btnProsesClick(Sender: TObject);
var
  noIdTndk,statusPembayaran:String;
begin
  noIdTndk := DataSimrs.qryt_tindakanpasienrajal['noTindakanPasienRajal'];
  statusPembayaran := 'LUNAS';
  with DataSimrs.qryt_tindakanpasienrajal do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from t_tindakanpasienrajal where noTindakanPasienRajal="'+noIdTndk+'" and statusPembayaran="'+statusPembayaran+'"';
    Open;
  end;
  /// pengujian 
  if (DataSimrs.qryt_tindakanpasienrajal['noTindakanPasienRajal']=noIdTndk) and
      (DataSimrs.qryt_tindakanpasienrajal['statusPembayaran']=statusPembayaran) then
      MessageDlg('Tindakan Sudah Lunas...! ',mtWarning,[mbOK],0)
      else
      begin
       FTindakanIgd.edtNoTransaksiTindakanRajal.Text := noIdTndk;
        with DataSimrs.qryvw_detailtindakanpasienrajal do
        begin
          Close;
          SQL.Clear;
          {SQL.Text := 'SELECT t_detailtindakanpasienrajal.idTindakanPasienRajal,'+
                      't_detailtindakanpasienrajal.noTindakanPasienRajal,t_detailtindakanpasienrajal.kdTarif,'+
                      't_detailtindakanpasienrajal.tindakan,t_detailtindakanpasienrajal.tarif,'+
                      't_detailtindakanpasienrajal.jumlahTindakan,t_detailtindakanpasienrajal.totalTarif,'+
                      't_detailtindakanpasienrajal.kdTenagaMedis,t_tenagamedis2.namapetugasMedis,'+
                      't_kelompoktenagamedis.KelompokTenagaMedis,t_tindakanpasienrajal.noRegistrasiRawatJalan,'+
                      't_registrasirawatjalan.noDaftar FROM t_detailtindakanpasienrajal INNER JOIN t_tenagamedis2 '+
                      'ON t_detailtindakanpasienrajal.kdTenagaMedis = t_tenagamedis2.kdPetugasMedis INNER JOIN t_kelompoktenagamedis '+
                      'ON t_tenagamedis2.kdKelompokTenagaMedis = t_kelompoktenagamedis.kdKelompokTenagaMedis INNER JOIN t_tindakanpasienrajal '+
                      'ON t_detailtindakanpasienrajal.noTindakanPasienRajal = t_tindakanpasienrajal.noTindakanPasienRajal INNER JOIN t_registrasirawatjalan '+
                      'ON t_registrasirawatjalan.noRegistrasiRawatJalan = t_tindakanpasienrajal.noRegistrasiRawatJalan where t_detailtindakanpasienrajal.noTindakanPasienRajal="'+edtNoTransaksiTindakanRajal.Text+'" ';}

          SQL.Text := 'SELECT t_detailtindakanpasienrajal.idTindakanPasienRajal,'+
                          't_detailtindakanpasienrajal.noTindakanPasienRajal,'+
                          't_detailtindakanpasienrajal.kdTarif,'+
                          't_detailtindakanpasienrajal.tindakan,'+
                          't_detailtindakanpasienrajal.tarif,'+
                          't_detailtindakanpasienrajal.jumlahTindakan,'+
                          't_detailtindakanpasienrajal.totalTarif,'+
                          't_detailtindakanpasienrajal.kdTenagaMedis,'+
                          't_tenagamedis2.namapetugasMedis,t_tindakanpasienrajal.noTindakanPasienRajal,'+
                          't_kelompoktenagamedis.KelompokTenagaMedis,'+
                          't_tindakanpasienrajal.noRegistrasiRawatJalan, t_registrasirawatjalan.noDaftar FROM t_detailtindakanpasienrajal INNER JOIN t_tenagamedis2 '+
                          'ON t_detailtindakanpasienrajal.kdTenagaMedis = t_tenagamedis2.kdPetugasMedis INNER JOIN t_kelompoktenagamedis '+
                          'ON t_tenagamedis2.kdKelompokTenagaMedis = t_kelompoktenagamedis.kdKelompokTenagaMedis INNER JOIN t_tindakanpasienrajal '+
                          'ON t_detailtindakanpasienrajal.noTindakanPasienRajal = t_tindakanpasienrajal.noTindakanPasienRajal INNER JOIN t_registrasirawatjalan '+
                          'ON t_registrasirawatjalan.noRegistrasiRawatJalan = t_tindakanpasienrajal.noRegistrasiRawatJalan where t_tindakanpasienrajal.noTindakanPasienRajal="'+noIdTndk+'"';
          Open;

        end;
        Close;
      end;

end;

end.
