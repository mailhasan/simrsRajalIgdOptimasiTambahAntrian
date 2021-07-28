unit UStatusCovid19;

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
  dxSkinXmas2008Blue, Menus, cxButtons, cxLabel, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TFStatusCovid19 = class(TForm)
    grpStatsuCovid19: TGroupBox;
    cxlblStatusCovid19: TcxLabel;
    btnSimpan: TcxButton;
    cbbStatusCovid19: TcxLookupComboBox;
    procedure FormShow(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FStatusCovid19: TFStatusCovid19;

implementation

{$R *.dfm}

uses UDataSimrs,URajalIgd, ADODB, DB;

procedure TFStatusCovid19.FormShow(Sender: TObject);
begin
  cbbStatusCovid19.Text := '';
end;

procedure TFStatusCovid19.btnSimpanClick(Sender: TObject);
begin
IF (cbbStatusCovid19.Text='') then
  MessageDlg('STATUS COVID BELUM DI ISI...!',mtWarning,[mbOK],0)
  ELSE
  begin
    WITH DataSimrs.qryt_registrasi do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'update t_registrasi set statusCovid19="'+cbbStatusCovid19.Text+'",tglStatusCovid19="'+FormatDateTime('yyyy-MM-dd hh:mm:ss',Now)+'" where noDaftar="'+FRawatJalanIgd.edtNoRegistrasi.Text+'"';
      ExecSQL;
      SQL.Text := 'select noDaftar,statusCovid19,tglStatusCovid19 from t_registrasi ';
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
  end;
end;

end.
