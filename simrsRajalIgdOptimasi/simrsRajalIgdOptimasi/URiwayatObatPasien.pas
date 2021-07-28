unit URiwayatObatPasien;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPC, DBGridEhGrouping, GridsEh,
  DBGridEh, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  DBAxisGridsEh;

type
  TFRiwayatObatPasien = class(TForm)
    pnlBawah: TPanel;
    pnlAtas: TPanel;
    pnlKeluar: TPanel;
    pnlTengah: TPanel;
    cxpgcntrl1: TcxPageControl;
    cxtbshtE_Resep: TcxTabSheet;
    cxtbshtObat: TcxTabSheet;
    dbgrdhEresep: TDBGridEh;
    dbgrdhDetailResep: TDBGridEh;
    dbgrdhRacikan: TDBGridEh;
    dbgrdhObat: TDBGridEh;
    dbgrdhDetailObat: TDBGridEh;
    procedure dbgrdhEresepCellClick(Column: TColumnEh);
    procedure pnlKeluarClick(Sender: TObject);
    procedure dbgrdhDetailResepCellClick(Column: TColumnEh);
    procedure dbgrdhObatCellClick(Column: TColumnEh);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRiwayatObatPasien: TFRiwayatObatPasien;

implementation

{$R *.dfm}
uses UDataSimrs, ADODB, DB;

procedure TFRiwayatObatPasien.dbgrdhEresepCellClick(Column: TColumnEh);
begin

with DataSimrs.qryt_detailresepranap do
begin
 Close;
 SQL.Text := 'select * from t_detailresepranap where noResep="'+DataSimrs.qryt_resepranap['noResep']+'"';
 Open;
end;

end;

procedure TFRiwayatObatPasien.pnlKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFRiwayatObatPasien.dbgrdhDetailResepCellClick(
  Column: TColumnEh);
begin

with DataSimrs.qryt_detailracikan do
begin
 Close;
 SQL.Text := 'select * from t_detailracikan where noDetailResepRanap="'+DataSimrs.qryt_detailresepranap['noDetailResepRanap']+'"';
 Open;
end;
end;

procedure TFRiwayatObatPasien.dbgrdhObatCellClick(Column: TColumnEh);
begin

with DataSimrs.qryt_detailpenjualanobatrajal do
begin
 Close;
 SQL.Text := 'select * from t_detailpenjualanobatrajal where noPenjualanObatRajal="'+DataSimrs.qryt_penjualanobatrajal['noPenjualanObatRajal']+'"';
 Open;
end;

end;

end.
