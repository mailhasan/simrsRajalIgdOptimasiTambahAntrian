unit UTindakanIgd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxButtons, StdCtrls, ExtCtrls, ComCtrls, cxControls, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, DBGridEhGrouping, GridsEh, DBGridEh;

type
  TFTindakanIgd = class(TForm)
    pnlAtas: TPanel;
    pnlKeluar: TPanel;
    pnlBawah: TPanel;
    btnSelesai: TButton;
    btnHapus: TButton;
    pnlTengah: TPanel;
    pnlTengahAtas: TPanel;
    grpTegah1: TGroupBox;
    lblNoRm: TLabel;
    lblNmPasien: TLabel;
    lblPenjamin: TLabel;
    lblAlamat: TLabel;
    lblDokter1: TLabel;
    lblAsalPasien: TLabel;
    lblTglLahir: TLabel;
    lblUmur: TLabel;
    lblJk: TLabel;
    lblNoRegistrasi: TLabel;
    lblNoRajal: TLabel;
    edtNoRm: TEdit;
    edtNmPasien: TEdit;
    edtPenjamin: TEdit;
    edtDokter: TEdit;
    edtTempatLahir: TEdit;
    edtAlamat: TEdit;
    edtUmur: TEdit;
    edtJk: TEdit;
    dtpTglLahir: TDateTimePicker;
    edtNoRegistrasi: TEdit;
    edtNoRajal: TEdit;
    pnlTengahTengah: TPanel;
    grpDokter: TGroupBox;
    cbbPelaksana: TcxLookupComboBox;
    grpDataPilihTindakan: TGroupBox;
    dbgrdhTindakanBerdasarKanUnit: TDBGridEh;
    pnlDataTindakan: TPanel;
    lblCari: TLabel;
    edtCari: TEdit;
    btnInput: TButton;
    grpTengahBawah: TGroupBox;
    dbgrdhTindakanSdhDiInput: TDBGridEh;
    edtNoTransaksiTindakanRajal: TEdit;
    procedure btnInputClick(Sender: TObject);
    procedure edtCariChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure btnSelesaiClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure tindakanAwal;
    procedure noTrajal;
    procedure detailTampilTindakan;
  end;

var
  FTindakanIgd: TFTindakanIgd;

implementation

{$R *.dfm}

uses UDataSImrs, ADODB, DB;

procedure TFTindakanIgd.noTrajal;
begin
  with DataSimrs.qryt_tindakanpasienrajal DO
  begin
    Active := True;
    SQL.Clear;
    SQL.Text := 'SELECT noTindakanPasienRajal from t_tindakanpasienrajal';
    Open;
  end;
  edtNoTransaksiTindakanRajal.Text :='TRJ'+FormatDateTime('ddMMYYHHmmss',Now)+'-'+IntToStr(DataSimrs.qryt_tindakanpasienrajal.RecordCount+1);
end;

procedure TFTindakanIgd.tindakanAwal;
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
              'ON t_tindakanrawatjalankelompok.kdTarif = t_tariftindakan2.kdTarif AND t_tindakanrawatjalankelompok.kdTindakan = t_tariftindakan2.kdTindakan WHERE t_tariftindakan2.kdKelas IN ("10", "18", "19") AND t_tindakanrawatjalankelompok.unit="IGD"';
    Open;
  end;
end;

procedure TFTindakanIgd.detailTampilTindakan;
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
                'ON t_registrasirawatjalan.noRegistrasiRawatJalan = t_tindakanpasienrajal.noRegistrasiRawatJalan where t_detailtindakanpasienrajal.noTindakanPasienRajal="'+edtNoTransaksiTindakanRajal.Text+'" ';
    Open;
  end;
end;

procedure TFTindakanIgd.btnInputClick(Sender: TObject);
var
   i:Integer;
   totalTindakan1:Double;
begin
if cbbPelaksana.Text = '' then
    MessageDlg('Silahkan Pilih Data Pelaksana...!', mtInformation, [mbok], 0)
    else
    begin
       //FInputTindakanRawatJalan.Show;
    if dbgrdhTindakanBerdasarKanUnit.SelectedRows.Count =0 then
      begin
        messageDlg('Tidak Ada data yang di pilih!!',mtwarning,[mbOK],0);
        exit;
      end;

    if dbgrdhTindakanBerdasarKanUnit.SelectedRows.Count >0 then
    begin
      ///proses detail tindakan penunjang
      
      with dbgrdhTindakanBerdasarKanUnit.DataSource.DataSet do
      begin
        for i:=0 to dbgrdhTindakanBerdasarKanUnit.selectedrows.Count -1 do
        begin
        gotobookmark(pointer(dbgrdhTindakanBerdasarKanUnit.SelectedRows.Items[i]));
        DataSimrs.qryt_detailtindakanpasienrajal.Open;
        DataSimrs.qryt_detailtindakanpasienrajal.Append;
        DataSimrs.qryt_detailtindakanpasienrajal.FieldByName('noTindakanPasienRajal').AsString := edtNoTransaksiTindakanRajal.Text;
        DataSimrs.qryt_detailtindakanpasienrajal.FieldByName('kdTarif').AsString := DataSimrs.qryvw_tindakantarifrajalkelompok['kdTarif'];
        DataSimrs.qryt_detailtindakanpasienrajal.FieldByName('tindakan').AsString := DataSimrs.qryvw_tindakantarifrajalkelompok['tindakan'];
        DataSimrs.qryt_detailtindakanpasienrajal.FieldByName('tarif').AsString := DataSimrs.qryvw_tindakantarifrajalkelompok['tarif'];
        DataSimrs.qryt_detailtindakanpasienrajal.FieldByName('jumlahTindakan').AsInteger := 1;
        DataSimrs.qryt_detailtindakanpasienrajal.FieldByName('totalTarif').AsFloat := (DataSimrs.qryvw_tindakantarifrajalkelompok['tarif']*1) ;
        DataSimrs.qryt_detailtindakanpasienrajal.FieldByName('kdTenagaMedis').AsString := cbbPelaksana.EditValue;
        DataSimrs.qryt_detailtindakanpasienrajal.Post;
        end;
        detailTampilTindakan;

        {with DataSimrs.qryt_detailtindakanpasienrajal do
        begin
          Close;
          SQL.Clear;
          SQL.Text := 'SELECT SUM(totalTarif) as subTotal from t_detailtindakanpasienrajal where noTindakanPasienRajal="'+edtNoTransaksiTindakanRajal.Text+'"';
          Open;
        end;}

        totalTindakan1 := StrToFloat(FloatToStr(dbgrdhTindakanSdhDiInput.columns[4].Footer.SumValue));  ///DataSimrs.qryt_detailtindakanpasienrajal.Fields[0].AsFloat;

        
        if DataSimrs.qryt_tindakanpasienrajal.Locate('noTindakanPasienRajal',edtNoTransaksiTindakanRajal.Text,[])  then
        begin

          with DataSimrs.qryt_tindakanpasienrajal do
          begin
            Edit;
            FieldByName('noTindakanPasienRajal').AsString := edtNoTransaksiTindakanRajal.Text;
            FieldByName('noRegistrasiRawatJalan').AsString := edtNoRajal.Text;
            FieldByName('tglTindakan').AsDateTime := Now; ///FormatDateTime('yyyy-MM-dd hh:mm:ss',Now);
            FieldByName('totalTarifTindakan').AsString := FloatToStr(totalTindakan1);
            FieldByName('statusPembayaran').AsString := 'BELUM LUNAS';
            Post;
          end;
          with DataSimrs.qryt_tindakanpasienrajal do
          begin
            Close;
            SQL.Clear;
            SQL.Text := 'select * from t_tindakanpasienrajal';
            Open;
          end;
        end
        else
        begin

          with DataSimrs.qryt_tindakanpasienrajal do
          begin
            Append;
            FieldByName('noTindakanPasienRajal').AsString := edtNoTransaksiTindakanRajal.Text;
            FieldByName('noRegistrasiRawatJalan').AsString := edtNoRajal.Text;
            FieldByName('tglTindakan').AsDateTime := Now;  //FormatDateTime('yyyy-MM-dd hh:mm:ss',Now);
            FieldByName('totalTarifTindakan').AsString := FloatToStr(totalTindakan1);
            FieldByName('statusPembayaran').AsString := 'BELUM LUNAS';
            Post;
          end;

          with DataSimrs.qryt_tindakanpasienrajal do
          begin
            Close;
            SQL.Clear;
            SQL.Text := 'select * from t_tindakanpasienrajal';
            Open;
          end;

          detailTampilTindakan;

        end;



      end;


    end;
    end;
end;

procedure TFTindakanIgd.edtCariChange(Sender: TObject);
begin
if (edtCari.Text='') then
  begin
    tindakanAwal;
  end
  else
  begin
   with DataSimrs.qryvw_tindakantarifrajalkelompok do
    begin
      Active := True;
      Close;
      SQL.Clear;
      //SQL.Text := 'select * from vw_tindakantarifrajalkelompok where unit="IGD" and tindakan like "%'+edtCari.Text+'%"';
      SQL.Text := 'SELECT t_tariftindakan2.kdTarif,t_tariftindakan2.kdTindakan,'+
                  't_tindakan2.tindakan,t_tindakan2.kdKelompokTindakan,'+
                  't_kelompoktindakan.kelompokTindakan,t_tariftindakan2.tarif,'+
                  't_tindakanrawatjalankelompok.unit,'+
                  't_tindakanrawatjalankelompok.idTindakanRawatjalanKelompok FROM t_tindakan2 INNER JOIN t_kelompoktindakan ON t_tindakan2.kdKelompokTindakan = t_kelompoktindakan.kdKelompokTindakan INNER JOIN t_tariftindakan2 '+
                  'ON t_tariftindakan2.kdTindakan = t_tindakan2.kdTindakan INNER JOIN t_tindakanrawatjalankelompok '+
                  'ON t_tindakanrawatjalankelompok.kdTarif = t_tariftindakan2.kdTarif AND t_tindakanrawatjalankelompok.kdTindakan = t_tariftindakan2.kdTindakan where t_tindakan2.tindakan like "%'+edtCari.Text+'%" and t_tindakanrawatjalankelompok.unit="IGD"';
      Open;
    end;
  end;
end;

procedure TFTindakanIgd.FormShow(Sender: TObject);
begin
  noTrajal;
  detailTampilTindakan;
  tindakanAwal;
  //DataSimrs.qryvw_tindakantarifrajalkelompok.Active := False;
end;

procedure TFTindakanIgd.btnHapusClick(Sender: TObject);
var
  kode,nOTrsTndk:String;
begin
if DataSimrs.qryvw_detailtindakanpasienrajal.RecordCount<=0 then
  ShowMessage('Data Tidak ada ') else
  begin
  if MessageDlg('Anda Ingin Menghapus Data "'+DataSimrs.qryvw_detailtindakanpasienrajal['tindakan']+'" ?', mtConfirmation,[mbyes,mbno],0)=mryes then
  begin
    Kode := DataSimrs.qryvw_detailtindakanpasienrajal['idTindakanPasienRajal'];
    nOTrsTndk := DataSimrs.qryvw_detailtindakanpasienrajal['noTindakanPasienRajal'];
    with DataSimrs.qryvw_detailtindakanpasienrajal do
    begin
    Close;
    SQL.Text:='DELETE from t_detailtindakanpasienrajal WHERE idTindakanPasienRajal="'+Kode+'"';
    ExecSQL;
    SQL.Text:= 'select * from t_detailtindakanpasienrajal';
    Open;
    end;

    detailTampilTindakan;

    with DataSimrs.qryt_tindakanpasienrajal do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'update t_tindakanpasienrajal set totalTarifTindakan= "'+FloatToStr(dbgrdhTindakanSdhDiInput.columns[4].Footer.SumValue)+'" where noTindakanPasienRajal="'+nOTrsTndk+'"';
      ExecSQL;
      SQL.Text := 'select * from t_tindakanpasienrajal';
      Open;
    end;

  end

  else
  abort;
  end;
end;

procedure TFTindakanIgd.btnSelesaiClick(Sender: TObject);
begin
  Close;
end;

end.
