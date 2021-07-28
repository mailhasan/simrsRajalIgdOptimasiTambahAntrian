unit ULoginSimrs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, cxButtons, cxControls, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxGroupBox,
  frxpngimage, cxImage;

type
  TFLoginSimrs = class(TForm)
    pnlTengah: TPanel;
    pnlBawah: TPanel;
    pnlTengah1: TPanel;
    lblLogin: TLabel;
    img1: TcxImage;
    lblUsername: TLabel;
    edtUsername: TEdit;
    lblPassword: TLabel;
    edtPassword: TEdit;
    lblLevel: TLabel;
    cbbLevel: TComboBox;
    btnLogin: TcxButton;
    btnBatal: TcxButton;
    procedure btnLoginClick(Sender: TObject);
    procedure edtUsernameKeyPress(Sender: TObject; var Key: Char);
    procedure edtPasswordKeyPress(Sender: TObject; var Key: Char);
    procedure cbbLevelKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLoginSimrs: TFLoginSimrs;

implementation

{$R *.dfm}
uses UDataSimrs,URajalIgd,WinSock,scktcomp ,UTindakanIgd, ADODB, DB;

function GetComputerNameFromWindows: string;
var
  iLen: Cardinal;
begin
  iLen := MAX_COMPUTERNAME_LENGTH + 1;
  Result := StringOfChar(#0, iLen);
  GetComputerName(PChar(Result), iLen);
  SetLength(Result, iLen);
end;

procedure TFLoginSimrs.btnLoginClick(Sender: TObject);
begin
if (edtUsername.Text='') or (edtPassword.Text='') then
    MessageDlg('Data Harus Di Isi Lengkap...!',mtWarning,[mbok],0)
else
begin
  with DataSimrs.qryt_pemakai do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from t_pemakai where username="'+edtUsername.Text+'" and password="'+edtPassword.Text+'"';
    Open;
  end;
  if (edtUsername.Text = DataSimrs.qryt_pemakai.FieldByName('username').AsString) or
     (edtPassword.Text = DataSimrs.qryt_pemakai.FieldByName('password').AsString) then
  begin
    with DataSimrs.qryt_aksesmenu do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from t_aksesmenu where (username="'+edtUsername.Text+'") AND (instalasi="'+(cbbLevel.Text)+'")';
      Open;
    end;
    IF (edtUsername.Text = DataSimrs.qryt_aksesmenu.FieldByName('username').AsString) and
            (DataSimrs.qryt_aksesmenu.FieldByName('instalasi').AsString = 'rawat jalan - igd') then
    begin
      FRawatJalanIgd.Show;
      FRawatJalanIgd.statSimrs.Panels[0].Text := edtUsername.Text;
      FRawatJalanIgd.statSimrs.Panels[1].Text := cbbLevel.Text;
      FRawatJalanIgd.statSimrs.Panels[2].Text := GetComputerNameFromWindows;
      FRawatJalanIgd.statSimrs.Panels[3].Text := DataSimrs.qryt_pemakai['namaUser'];
    end
  end
  else
    ShowMessage('salah');
end

end;

procedure TFLoginSimrs.edtUsernameKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
begin
  Key:=#0;
  edtPassword.SetFocus;
end;
end;

procedure TFLoginSimrs.edtPasswordKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
begin
   Key:=#0;
   cbbLevel.SetFocus;
end;
end;

procedure TFLoginSimrs.cbbLevelKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then                                                                           
   Key:=#0;
   btnLogin.SetFocus;
end;

procedure TFLoginSimrs.FormShow(Sender: TObject);
begin
  cbbLevel.ItemIndex := 3;
  FTindakanIgd.Close;
end;

procedure TFLoginSimrs.btnBatalClick(Sender: TObject);
begin
  Application.Terminate;
end;

end.
