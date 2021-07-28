unit UStatusPulang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBGridEh, Mask, DBCtrlsEh, DBLookupEh, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
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
  cxDBLookupComboBox, cxLabel;

type
  TFStatusPulang = class(TForm)
    grpStatusPulang: TGroupBox;
    lbl: TLabel;
    btnSimpan: TButton;
    cbb1: TcxLookupComboBox;
    cxlbl1: TcxLabel;
    cbb2: TcxLookupComboBox;
    lblDIRUJUKKE: TLabel;
    lblALASANDIRUJUK: TLabel;
    edtDIRUJUKKE: TEdit;
    mmoALASANDIRUJUKAN: TMemo;
    procedure btnSimpanClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Awal;
  end;

var
  FStatusPulang: TFStatusPulang;

implementation

{$R *.dfm}
uses UDataSImrs,URajalIgd, ADODB, DB;

procedure TFStatusPulang.Awal;
begin
  cbb1.Text := '';
  cbb2.Text := '';
  edtDIRUJUKKE.Text := '';
  mmoALASANDIRUJUKAN.Text := '';
  with DataSimrs.qryStatusPulang do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT * from t_statuskeluar where kdInstalasi="ki1" and kdStatusKeluar not in("15","19","20")';
    Open;
  end;

  with DataSimrs.qryCaraKeluar do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT * from t_carakeluar WHERE kdCaraKeluar not IN("7","8","10","11")';
    Open;
  end;
end;

procedure TFStatusPulang.btnSimpanClick(Sender: TObject);
begin
if (cbb1.Text = '') or (cbb2.Text='') then
  ShowMessage('Data Harus Di Isi Lengkap...!')
  else
  begin
    /// view filter diagnosa 10
    with DataSimrs.qryvw_diagnosa10 do
    begin
     Close;
     SQL.Clear;
     SQL.Text := 'select * from vw_diagnosa10 where noDaftar="'+FRawatJalanIgd.edtNoRegistrasi.Text+'" and noRekamedis="'+FRawatJalanIgd.edtNoRm.Text+'"';
     Open;
    end;

    if (FRawatJalanIgd.edtNoRegistrasi.Text=DataSimrs.qryvw_diagnosa10['noDaftar']) and (FRawatJalanIgd.edtNoRm.Text=DataSimrs.qryvw_diagnosa10['noRekamedis']) then
    begin

      with DataSimrs.qryt_registrasi do
      begin
       Close;
       SQL.Clear;
       SQL.Text := 'update t_registrasi set kdStatusKeluar="'+cbb1.EditValue+'",kdCaraKeluar="'+cbb2.EditValue+'",tglPulang="'+FormatDateTime('yyyy-MM-dd hh:mm:ss',Now)+'",dirujukke="'+edtDIRUJUKKE.Text+'",alasan="'+mmoALASANDIRUJUKAN.Text+'" where noDaftar="'+FRawatJalanIgd.edtNoRegistrasi.Text+'"';
       ExecSQL;
       SQL.Text := 'select noDaftar,kdStatusKeluar,tglPulang,dirujukke,alasan from t_registrasi';
       Open;
      end;

       /// tampil pasien RAWAT JALAN
      with FRawatJalanIgd do
      begin
        aturKolomPxRajal;

        tampilDataTglUnit;

        tampilDataPxRajal;
      end;
      
      Close;
    end
    else
    MessageDlg('ICD 10 Belum Di isi, Pasien Tidak Dapat Di Pulang...',mtWarning,[mbOK],0);
  end
end;

procedure TFStatusPulang.FormShow(Sender: TObject);
begin
  Awal;
end;

end.
