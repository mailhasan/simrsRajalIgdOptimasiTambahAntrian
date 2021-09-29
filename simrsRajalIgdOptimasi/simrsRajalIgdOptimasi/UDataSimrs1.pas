unit UDataSimrs1;

interface

uses
  SysUtils, Classes, DB, ADODB, ZAbstractConnection, ZConnection,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TDataSimrs1 = class(TDataModule)
    conSimrs: TZConnection;
    qryt_asesmen_awal_triage: TZQuery;
    qryt_asesmen_awal_status: TZQuery;
    qryt_asesmen_awal_nyeri: TZQuery;
    qryt_asesmen_awal_humpty: TZQuery;
    qryt_asesmen_awal_discharge: TZQuery;
    qryt_asesmen_awal_follow: TZQuery;
    qryt_asesmen_awal_kondisikrs: TZQuery;
    qryt_asesmen_awal_observasi: TZQuery;
    qryt_asesmen_awal_tindaklanjut: TZQuery;
    dst_asesmen_awal_triage: TDataSource;
    dst_asesmen_awal_status: TDataSource;
    dst_asesmen_awal_nyeri: TDataSource;
    dst_asesmen_awal_humpty: TDataSource;
    dst_asesmen_awal_discharge: TDataSource;
    dst_asesmen_awal_follow: TDataSource;
    dst_asesmen_awal_kondisikrs: TDataSource;
    dst_asemen_awal_observasi: TDataSource;
    dst_asesmen_awal_tindakLanjut: TDataSource;
    zqryt_detail_asesmen_awal_follow: TZQuery;
    dst_detail_asesmen_awal_follow: TDataSource;
    zqryt_asesmen_awal_observasi_pasien: TZQuery;
    dst_asesmen_awal_observasi_pasien: TDataSource;
    procedure conSimrsAfterConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataSimrs1: TDataSimrs1;

implementation

{$R *.dfm}

procedure TDataSimrs1.conSimrsAfterConnect(Sender: TObject);
begin
  qryt_asesmen_awal_triage.Active:= True;
  qryt_asesmen_awal_status.Active:= True;
  qryt_asesmen_awal_nyeri.Active:= True;
  qryt_asesmen_awal_humpty.Active:= True;
  qryt_asesmen_awal_discharge.Active:= True;
  qryt_asesmen_awal_follow.Active:= True;
  qryt_asesmen_awal_kondisikrs.Active:= True;
  qryt_asesmen_awal_observasi.Active:= True;
  qryt_asesmen_awal_tindaklanjut.Active:= True;
  zqryt_detail_asesmen_awal_follow.Active := True;
  zqryt_asesmen_awal_observasi_pasien.Active := True;
end;

end.
