unit URegistrasiRuangOk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, ComCtrls, StdCtrls, cxCalendar,
  Menus, cxButtons, Mask, DBCtrlsEh, DB, ADODB, DBGridEhGrouping, GridsEh,
  DBGridEh, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  DBAxisGridsEh;

type
  TFRegistrasiRuangOk = class(TForm)
    pnlBawah: TPanel;
    pnlAtas: TPanel;
    pnlKeluar: TPanel;
    pnlTengah: TPanel;
    btnPROSES: TcxButton;
    grpData: TGroupBox;
    lblNOREGISTEROK: TLabel;
    edtNOREGISTRASI: TEdit;
    lblTGLREGISTEROK: TLabel;
    dtpTGLREGISTRASIOK: TDateTimePicker;
    lblNORM: TLabel;
    edtNORM: TEdit;
    lblNOREGISTRASI: TLabel;
    edtNOREGIS: TEdit;
    lblTGLREGISTRASI: TLabel;
    dtpTGLREGIS: TDateTimePicker;
    lblUNITASAL: TLabel;
    edtUNITASAL: TEdit;
    lblDOKTERPENGIRIM: TLabel;
    cbbDOKTERPENGIRIM: TcxLookupComboBox;
    lblJENISOPERASI: TLabel;
    cbbJenisOperasi: TcxLookupComboBox;
    lblTGLPERMINTAANOP: TLabel;
    dtpTglPermintaanOp: TcxDateEdit;
    lblTGLKONFIRMASIJADWALOP: TLabel;
    dtpTglKonfirmasiJadwal: TcxDateEdit;
    lblDOKTEROPERATOR: TLabel;
    cbbDokterOperator: TcxLookupComboBox;
    lblKETERANGAN: TLabel;
    edtKeterangan: TcxTextEdit;
    lblDIAGNOSAPREOP: TLabel;
    edtDIAGNOSAPREOP: TcxTextEdit;
    lblSTATUSOPERASI: TLabel;
    cbbStatusOperasi: TcxComboBox;
    lblSTATUSBACA: TLabel;
    cbbStatusBaca: TcxComboBox;
    pnlTindakan: TPanel;
    grpTindakan: TGroupBox;
    lblNoTransakasi: TLabel;
    edtNoTransaksiTindakanRajal: TEdit;
    cbbTindakan: TcxLookupComboBox;
    lblTindakan: TLabel;
    edtKode: TEdit;
    lblKode: TLabel;
    lblTarif: TLabel;
    edtTarif: TEdit;
    edtJumlah: TDBNumberEditEh;
    lblJumlah: TLabel;
    edtTotal: TEdit;
    lblTotal: TLabel;
    btnInput: TButton;
    qryvw_tindakanoperas: TADOQuery;
    dsvw_tindakanoperas: TDataSource;
    qryt_tindakanok: TADOQuery;
    qryt_detailtindakanok: TADOQuery;
    grpDetailTindakan: TGroupBox;
    dbgrdhDetailTindakan: TDBGridEh;
    dst_detailtindakanok: TDataSource;
    procedure pnlKeluarClick(Sender: TObject);
    procedure btnPROSESClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbbTindakanKeyPress(Sender: TObject; var Key: Char);
    procedure btnInputClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure noRegisOkOtomasi;
    procedure tampilDataTindakan;
    procedure tampilDetailTindakan;
  end;

var
  FRegistrasiRuangOk: TFRegistrasiRuangOk;

implementation

{$R *.dfm}

uses UDataSimrs,URajalIgd;

procedure TFRegistrasiRuangOk.noRegisOkOtomasi;
begin
  if FRawatJalanIgd.cbbUnitPelayanan.Text = 'IGD' then
     edtNOREGISTRASI.Text :='OP02'+FormatDateTime('ddMMYYHHmmss',Now)+'-'+IntToStr(DataSimrs.qryt_registrasiokrajal.RecordCount+1)
  else
    edtNOREGISTRASI.Text :='OP01'+FormatDateTime('ddMMYYHHmmss',Now)+'-'+IntToStr(DataSimrs.qryt_registrasiokrajal.RecordCount+1);

  qryt_tindakanok.Active := True;
    
  if FRawatJalanIgd.cbbUnitPelayanan.Text = 'IGD' then
    edtNoTransaksiTindakanRajal.Text := 'TOP02'+FormatDateTime('ddMMYYHHmmss',Now)+'-'+IntToStr(qryt_tindakanok.RecordCount+1)
  else
    edtNoTransaksiTindakanRajal.Text := 'TOP01'+FormatDateTime('ddMMYYHHmmss',Now)+'-'+IntToStr(qryt_tindakanok.RecordCount+1);
    
end;

procedure TFRegistrasiRuangOk.tampilDataTindakan;
begin
  with qryvw_tindakanoperas do
  begin
    Active := True;
    SQL.Clear;
    SQL.Text := 'SELECT * FROM vw_tindakanoperasi ';
    Open;
  end
end;

procedure TFRegistrasiRuangOk.tampilDetailTindakan;
begin
  with qryt_detailtindakanok do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from t_detailtindakanok where noTindakanOP="'+edtNoTransaksiTindakanRajal.Text+'"';
    Open;
  end;
end;

procedure TFRegistrasiRuangOk.pnlKeluarClick(Sender: TObject);
begin
Close;
end;

procedure TFRegistrasiRuangOk.btnPROSESClick(Sender: TObject);
var
  tglRegisOk,tglRegis,tglPermintaanOp,tglKonfirmasiJadwal,stOperasi,stBaca:String;
begin
if (cbbJenisOperasi.Text='') or (cbbDOKTERPENGIRIM.Text='') or
  (cbbDokterOperator.Text='') or (edtKeterangan.Text='') or
  (edtDIAGNOSAPREOP.Text='') or (cbbStatusOperasi.Text='') or
  (cbbStatusBaca.Text='') or (cbbJenisOperasi.Text='') then
    MessageDlg('Data Harus Di Isi Lengkap....!',mtInformation,[mbOK],0)
  else
  begin
    tglRegisOk := FormatDateTime('yyyy-mm-dd hh:mm:ss',dtpTGLREGISTRASIOK.DateTime);
    tglRegis := FormatDateTime('yyyy-mm-dd hh:mm:ss',dtpTGLREGIS.DateTime);
    tglPermintaanOp := FormatDateTime('yyyy-mm-dd hh:mm:ss',dtpTglPermintaanOp.Date);
    tglKonfirmasiJadwal := FormatDateTime('yyyy-mm-dd hh:mm:ss',dtpTglKonfirmasiJadwal.Date);

    if cbbStatusOperasi.Text = 'YA' then
      stOperasi := '1'
    else
      stOperasi := '0';

    if cbbStatusBaca.Text = 'YA' then
      stBaca := '1'
    ELSE
      stBaca := '0';
      
    with DataSimrs.qryt_registrasiokrajal do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'insert into t_registrasiokrajal (noRegistrasiOP,tglRegistrasiOP,'+
                  'noRM,noRegistrasi,tglRegistrasi,unitAsal,dokterSPengirim,'+
                  'kdJenisOperasi,tglPermintaanOP,tglKonfirmasiJadwalOP,dokterOperator,'+
                  'keterangan,diagnosaPreOP,statusOP,statusBaca,createdID,createdDate,) '+
                  'values ("'+edtNOREGISTRASI.Text+'","'+tglRegisOk+'",'+
                  '"'+edtNORM.Text+'","'+edtNOREGIS.Text+'","'+tglRegis+'","'+edtUNITASAL.Text+'",'+
                  '"'+cbbDOKTERPENGIRIM.Text+'","'+cbbJenisOperasi.EditValue+'",'+
                  '"'+tglPermintaanOp+'","'+tglKonfirmasiJadwal+'","'+cbbDokterOperator.Text+'"'+
                  '"'+edtKeterangan.Text+'","'+edtDIAGNOSAPREOP.Text+'","'+stOperasi+'",'+
                  '"'+stBaca+'","'+ FRawatJalanIgd.statSimrs.Panels[0].Text+'",'+
                  '"'+FormatDateTime('yyyy-mm-dd hh:mm:ss',Now)+'",) ';
      ExecSQL;
      SQL.Text := 'select noRegistrasiOP from t_registrasiokrajal';
      Open;
    end;
    
  end;
  MessageDlg('Masih Dalam Pengembangan...!',mtInformation,[mbOK],0)

end;

procedure TFRegistrasiRuangOk.FormShow(Sender: TObject);
begin
  noRegisOkOtomasi;
  cbbDOKTERPENGIRIM.Text := '';
  cbbJenisOperasi.Text := '';
  dtpTglPermintaanOp.Date := Now;
  dtpTglKonfirmasiJadwal.Date := Now;
  cbbDOKTERPENGIRIM.Text := '';
  edtDIAGNOSAPREOP.Text := '';
  edtKeterangan.Text := '';
  cbbStatusOperasi.Text := 'YA';
  cbbStatusBaca.Text := 'TIDAK';

  tampilDataTindakan;
  tampilDetailTindakan;
end;

procedure TFRegistrasiRuangOk.cbbTindakanKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key =#13 then
  begin
    with qryvw_tindakanoperas do
    begin
      Active := True;
      SQL.Clear;
      SQL.Text := 'select * from vw_tindakanoperasi where kdTarif="'+cbbTindakan.EditValue+'"';
      Open;
    end;

    if cbbTindakan.EditValue = qryvw_tindakanoperas['kdTarif'] then
    begin
      cbbTindakan.Text := qryvw_tindakanoperas['tindakan'];
      edtKode.Text := qryvw_tindakanoperas['kdTindakan'];
      edtTarif.Text := qryvw_tindakanoperas['tarif'];
      edtJumlah.Text := IntToStr(1);
      edtTotal.Text :=  FloatToStr(StrToFloat(edtTarif.Text)*StrToInt(edtJumlah.Text));

      tampilDataTindakan;
    end
    else
    MessageDlg('Data Tindakan Tidak Di Temukan....!',mtInformation,[mbOK],0);
  end;
end;

procedure TFRegistrasiRuangOk.btnInputClick(Sender: TObject);
var
  subTotalTindakan:Double;
begin
  if (cbbTindakan.Text='') or (edtKode.Text='') or (edtTarif.Text='') or (edtTotal.Text='') then
    MessageDlg('Data Harus Di Isi Lengkap...!',mtInformation,[mbOK],0)
  else
  begin
    if qryt_tindakanok.Locate('noTindakanOP',edtNoTransaksiTindakanRajal.Text,[])  then
    begin
      with qryt_detailtindakanok do
      begin
        Active := True;
        SQL.Clear;
        SQL.Text := 'insert into t_detailtindakanok (noTindakanOP,operator,kdTindakan,tindakan,jmlTindakan,kdTarif,'+
                    'tarif,subTotal,jenisTindakan,statusHapus) values ("'+edtNoTransaksiTindakanRajal.Text+'","'+cbbDokterOperator.Text+'",'+
                    '"'+edtKode.Text+'","'+cbbTindakan.Text+'","'+edtJumlah.Text+'","'+cbbTindakan.EditValue+'",'+
                    '"'+edtTarif.Text+'","'+edtTotal.Text+'","permintaan","0")';
        ExecSQL;
        SQL.Text := 'select * from t_detailtindakanok';
        Open
      end;

      tampilDetailTindakan;
      
      subTotalTindakan := dbgrdhDetailTindakan.columns[5].Footer.SumValue;
      with qryt_tindakanok do
      begin
        Active := True;
        SQL.Clear;
        SQL.Text := 'update t_tindakanok set totalTarifTindakan="'+FloatToStr(subTotalTindakan)+'" where noTindakanOP="'+edtNoTransaksiTindakanRajal.Text+'"';
        ExecSQL;
        SQL.Text := 'select * from t_tindakanok';
        Open;
      end;
      
    end
    else
    begin
      with qryt_detailtindakanok do
      begin
        Active := True;
        SQL.Clear;
        SQL.Text := 'insert into t_detailtindakanok (noTindakanOP,operator,kdTindakan,tindakan,jmlTindakan,kdTarif,'+
                    'tarif,subTotal,jenisTindakan,statusHapus) values ("'+edtNoTransaksiTindakanRajal.Text+'","'+cbbDokterOperator.Text+'",'+
                    '"'+edtKode.Text+'","'+cbbTindakan.Text+'","'+edtJumlah.Text+'","'+cbbTindakan.EditValue+'",'+
                    '"'+edtTarif.Text+'","'+edtTotal.Text+'","permintaan","0")';
        ExecSQL;
        SQL.Text := 'select * from t_detailtindakanok';
        Open
      end;

      tampilDetailTindakan;

      with qryt_detailtindakanok do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'SELECT SUM(subTotal) as subTotal from t_detailtindakanok where noTindakanOP="'+edtNoTransaksiTindakanRajal.Text+'"';
        Open;
      end;

      subTotalTindakan := qryt_detailtindakanok.Fields[0].AsFloat;
      
      with qryt_tindakanok do
      begin
        Active := True;
        SQL.Clear;
        SQL.Text := 'insert into t_tindakanok (noTindakanOP,noRegistrasiOP,tglTindakan,totalTarifTindakan,statusPembayaran,'+
                    'statusTindakan,dokterOP) values ("'+edtNoTransaksiTindakanRajal.Text+'",'+
                    '"'+edtNOREGIS.Text+'","'+FormatDateTime('yyyy-mm-dd hh:mm:ss',Now)+'",'+
                    '"'+FloatToStr(subTotalTindakan)+'","BELUM LUNAS","0","'+cbbDokterOperator.Text+'") ';
        ExecSQL;
        SQL.Text := 'select * from t_tindakanok';
        Open;
      end;

       tampilDetailTindakan;

    end;
  end;
end;

end.
