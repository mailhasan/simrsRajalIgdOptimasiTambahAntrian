unit UUbahJmlTindkIgd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
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
  cxDBLookupEdit, cxDBLookupComboBox;

type
  TFUbahTndkJumlahIGD = class(TForm)
    grpTindakan: TGroupBox;
    lblKode: TLabel;
    edtKode: TEdit;
    lblTINDAKAN: TLabel;
    edtTINDK: TEdit;
    lblTARIF: TLabel;
    edtTARIF: TEdit;
    lblJML: TLabel;
    edtJML: TEdit;
    lblSUBTOTAL: TLabel;
    edtSUBTOTAL: TEdit;
    lblJMLTmbh: TLabel;
    edtJMLTMBH: TEdit;
    btnKeluar: TButton;
    btnSIMPAN: TButton;
    lbl1: TLabel;
    lblTENAGAMEDIS: TLabel;
    cbbPelaksana: TcxLookupComboBox;
    procedure btnKeluarClick(Sender: TObject);
    procedure btnSIMPANClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUbahTndkJumlahIGD: TFUbahTndkJumlahIGD;

implementation

{$R *.dfm}

uses UDataSimrs,UTindakanIgd, ADODB, DB;

procedure TFUbahTndkJumlahIGD.btnKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFUbahTndkJumlahIGD.btnSIMPANClick(Sender: TObject);
var
  totalTindakan1,totalTindakan2,tarif,totalTarif:Double;
  jmlTmb:Integer;
begin
if (edtJMLTMBH.Text='') OR (edtJMLTMBH.Text=IntToStr(0)) then
  MessageDlg('JUMLAH UBAH TIDAK BOLEH KOSONG ATAU 0',mtWarning,[mbOK],0)
  else
  begin
    jmlTmb := StrToInt(edtJMLTMBH.Text);
    tarif := StrToFloat(edtTARIF.Text);
    totalTarif := jmlTmb*tarif;
     /// DETAIL TINDAKAN
   with DataSimrs.qryt_detailtindakanpasienrajal do
   begin
     Close;
     SQL.Clear;
     SQL.Text := 'update t_detailtindakanpasienrajal set jumlahTindakan="'+FloatToStr(jmlTmb)+'",totalTarif="'+FloatToStr(totalTarif)+'",kdTenagaMedis="'+cbbPelaksana.EditValue+'" where idTindakanPasienRajal="'+lbl1.Caption+'"';
     ExecSQL;
     SQL.Text := 'select * from t_detailtindakanpasienrajal';
     Open;
   end;
   
   /// detail tampil tindakan pasien rajal
   FTindakanIgd.detailTampilTindakan;
              /// rumus sum total tarif
   with DataSimrs.qryt_detailtindakanpasienrajal do
   begin
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT SUM(totalTarif) as subTotal from t_detailtindakanpasienrajal where noTindakanPasienRajal="'+FTindakanIgd.edtNoTransaksiTindakanRajal.Text+'"';
    Open;
   end;

   totalTindakan2 := DataSimrs.qryt_detailtindakanpasienrajal.Fields[0].AsFloat;

   /// update t_tindakanpasien rajal
   with DataSimrs.qryt_tindakanpasienrajal do
   begin
    Close;
    SQL.Clear;
    SQL.Text := 'update t_tindakanpasienrajal set totalTarifTindakan= "'+FloatToStr(totalTindakan2)+'",statusPembayaran="BELUM LUNAS" where noTindakanPasienRajal="'+FTindakanIgd.edtNoTransaksiTindakanRajal.Text+'"';
    ExecSQL;
    SQL.Text := 'select * from t_tindakanpasienrajal';
    Open;
   end;

   /// detail tampil tindakan pasien rajal
   FTindakanIgd.detailTampilTindakan;
   with DataSimrs.qryt_tindakanpasienrajal do
   begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from t_tindakanpasienrajal';
    Open;
   end;

   /// detail tindakan pasien rajal
   with DataSimrs.qryt_detailtindakanpasienrajal do
   begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from t_detailtindakanpasienrajal';
    Open;
   end;
   
  end;

end;

end.
