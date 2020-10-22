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
  with DataSimrs.qryt_registrasi do
  begin
   Close;
   SQL.Clear;
   SQL.Text := 'update t_registrasi set kdStatusKeluar="'+cbb1.EditValue+'",kdCaraKeluar="'+cbb2.EditValue+'",tglPulang="'+FormatDateTime('yyyy-MM-dd hh:mm:ss',Now)+'" where noDaftar="'+FRawatJalanIgd.edtNoRegistrasi.Text+'"';
   ExecSQL;
   SQL.Text := 'select noDaftar,kdStatusKeluar,tglPulang from t_registrasi';
   Open;
  end;
  FRawatJalanIgd.tampilpasienhariini;
  Close;
  end
end;

procedure TFStatusPulang.FormShow(Sender: TObject);
begin
  Awal;
end;

end.
