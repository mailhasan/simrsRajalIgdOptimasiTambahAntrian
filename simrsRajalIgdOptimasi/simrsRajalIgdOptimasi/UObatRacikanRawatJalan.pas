unit UObatRacikanRawatJalan;

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
  dxSkinXmas2008Blue, StdCtrls, cxTextEdit, cxCurrencyEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TFObatRacikanRawatJalan = class(TForm)
    pnlBawah: TPanel;
    pnlAtas: TPanel;
    pnlKeluar: TPanel;
    pnlTengah: TPanel;
    grp1: TGroupBox;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lblAturanPakaiCatatan: TLabel;
    edtKdObatRacikan: TEdit;
    cbbNamaObatCarikan: TcxLookupComboBox;
    cxcrncydtJmlKronisRacikan: TcxCurrencyEdit;
    cxcrncydtJmlNonKronisRacikan: TcxCurrencyEdit;
    cxtxtdtSatuanRacikan: TcxTextEdit;
    btnInputRck: TButton;
    edtAturPakaiCatatan: TEdit;
    lblNoResep: TLabel;
    lblObat: TLabel;
    procedure cbbNamaObatCarikanKeyPress(Sender: TObject; var Key: Char);
    procedure btnInputRckClick(Sender: TObject);
    procedure cbbNamaObatCarikanDblClick(Sender: TObject);
    procedure edtAturPakaiCatatanKeyPress(Sender: TObject; var Key: Char);
    procedure cxcrncydtJmlNonKronisRacikanKeyPress(Sender: TObject;
      var Key: Char);
    procedure cxcrncydtJmlKronisRacikanKeyPress(Sender: TObject;
      var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
     procedure awalEresepInputRck;
     procedure tampilObat;
  end;

var
  FObatRacikanRawatJalan: TFObatRacikanRawatJalan;

implementation

uses UDataSimrs,UEresepRajal;

{$R *.dfm}

procedure TFObatRacikanRawatJalan.awalEresepInputRck;
begin
  edtKdObatRacikan.Text := '';
  cbbNamaObatCarikan.Text := '';
  cxtxtdtSatuanRacikan.Text := '';
  cxcrncydtJmlKronisRacikan.Value := 0;
  cxcrncydtJmlNonKronisRacikan.Value := 0;
end;

procedure TFObatRacikanRawatJalan.tampilObat;
begin
  with DataSimrs.qryObatRajal do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from t_stokobat where kdDepo="DP00"';
    Open;
  end;
end;



procedure TFObatRacikanRawatJalan.cbbNamaObatCarikanKeyPress(
  Sender: TObject; var Key: Char);
begin
IF Key=#13 then
  begin
    if cbbNamaObatCarikan.EditValue = '' then
      ShowMessage('Data Obat Tidak Boleh Kosong...!')
    else
    begin
      with DataSimrs.qryObatRajal do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'select * from t_stokobat where nmObat="'+cbbNamaObatCarikan.EditValue+'" and kdDepo="DP00"';
        Open;
      end;
      if cbbNamaObatCarikan.EditValue =DataSimrs.qryObatRajal.FieldByName('nmObat').AsString   then
        begin
          if DataSimrs.qryObatRajal.FieldByName('jmlStok').AsInteger = 0 then
          begin
            MessageDlg('Stok Obat Kosong, hubungi pihak farmasi...!',mtWarning,[mbOK],0);
            tampilObat;
          end
          else
          begin
          cbbNamaObatCarikan.Text := DataSimrs.qryObatRajal.Fieldbyname('nmObat').AsString;
          edtKdObatRacikan.Text := DataSimrs.qryObatRajal.Fieldbyname('kdObat').AsString;
          cxtxtdtSatuanRacikan.Text :=  DataSimrs.qryObatRajal.Fieldbyname('satuan').AsString;
          edtAturPakaiCatatan.SetFocus;
          cxcrncydtJmlKronisRacikan.Value := 0;
          cxcrncydtJmlNonKronisRacikan.Value := 0;
          tampilObat;
          end;
        end
      else
      begin
        tampilObat;
        ShowMessage('Data Obat Tidak Di Temukan...!');
      end
    end;
  end;
end;

procedure TFObatRacikanRawatJalan.btnInputRckClick(Sender: TObject);
var
  tglResepRck,noOtomatisDtlResepRck,kodeDokterRck:String;
begin
if (edtKdObatRacikan.Text='') or (cbbNamaObatCarikan.Text='') or (cxtxtdtSatuanRacikan.Text='') or (FEresepRajal.cbbDokter.Text='') then
  ShowMessage('Data Harus Di Isi Lengkap...!')
  else
  begin
      tglResepRck := FormatDateTime('yyyy-mm-dd hh:mm:ss',FEresepRajal.dtpTglResep.DateTime);
      noOtomatisDtlResepRck :=  lblNoResep.Caption;
      with DataSimrs.qryDokter do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'select * from t_tenagamedis2 where namapetugasMedis="'+FEresepRajal.cbbDokter.Text+'"';
        Open;
      end;
      kodeDokterRck :=  DataSimrs.qryDokter.Fieldbyname('kdPetugasMedis').AsString;
      if DataSimrs.qryt_detailresepranap.Locate('noDetailResepRanap',noOtomatisDtlResepRck,[])  then
      begin
        with DataSimrs.qryt_detailresepranap do
        begin
          Close;
          SQL.Clear;
          SQL.Text := 'update t_detailresepranap set statusRacikan="1" where noDetailResepRanap="'+noOtomatisDtlResepRck+'"';

          ExecSQL;
          SQL.Text := 'select * from t_detailresepranap';
          Open;
        end;


        with DataSimrs.qryt_detailracikan do
        begin
          Close;
          SQL.Clear;
          SQL.Text := 'insert into t_detailracikan (noDetailResepRanap,kdObat,nmObat,keterangan,jmlPemberianKronis,jmlPemberianNonKronis) values '+
                      '("'+noOtomatisDtlResepRck+'","'+edtKdObatRacikan.Text+'","'+cbbNamaObatCarikan.EditValue+'","'+edtAturPakaiCatatan.Text+'","'+cxcrncydtJmlKronisRacikan.Text+'","'+cxcrncydtJmlNonKronisRacikan.Text+'")';

          ExecSQL;
          SQL.Text := 'select * from t_detailracikan';
          Open;
        end;

        with DataSimrs.qryt_detailracikan do
        begin
          Close;
          SQL.Clear;
          SQL.Text := 'select * from t_detailracikan where noDetailResepRanap="'+noOtomatisDtlResepRck+'"';
          Open;
        end;
        
        awalEresepInputRck;
        FEresepRajal.detailTampilObat;
      end;

    end;
end;

procedure TFObatRacikanRawatJalan.cbbNamaObatCarikanDblClick(
  Sender: TObject);
begin
  awalEresepInputRck;
  tampilObat;
end;

procedure TFObatRacikanRawatJalan.edtAturPakaiCatatanKeyPress(
  Sender: TObject; var Key: Char);
begin
if key=#13 then
  cxcrncydtJmlNonKronisRacikan.SetFocus;
end;

procedure TFObatRacikanRawatJalan.cxcrncydtJmlNonKronisRacikanKeyPress(
  Sender: TObject; var Key: Char);
begin
if key=#13 then
    cxcrncydtJmlKronisRacikan.SetFocus;
end;

procedure TFObatRacikanRawatJalan.cxcrncydtJmlKronisRacikanKeyPress(
  Sender: TObject; var Key: Char);
begin
if key=#13 then
  btnInputRck.SetFocus;
end;

end.
