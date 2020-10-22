unit UAnamesaPasien;

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
  dxSkinXmas2008Blue, DBGridEhGrouping, GridsEh, DBGridEh, StdCtrls,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Grids;

type
  TFAnamesaPasien = class(TForm)
    pnlAtas: TPanel;
    pnlKeluar: TPanel;
    pnlBawah: TPanel;
    btnSelesai: TButton;
    btnSimpan: TButton;
    pnlTengah: TPanel;
    grpNoDokter: TGroupBox;
    cbbDokter: TcxLookupComboBox;
    grpAnamesa: TGroupBox;
    mmoAnamesa: TMemo;
    strngrdAnamesa: TStringGrid;
    procedure FormShow(Sender: TObject);
    procedure btnSelesaiClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure aturkolom;
    procedure ambildata;
    procedure tampilData;
  end;

var
  FAnamesaPasien: TFAnamesaPasien;

implementation

{$R *.dfm}
uses UDataSimrs,URajalIgd;

function HorizontalIntersect(const aRect,bRect: TRect): boolean;
begin
  result := (aRect.Left < bRect.Right) and (aRect.Right > bRect.Left);
end;

function VerticalIntersect(const aRect,bRect: TRect): boolean;
begin
  result := (aRect.Top < bRect.Bottom) and (aRect.Bottom > bRect.Top);
end;

procedure TFAnamesaPasien.aturkolom;
begin
 with strngrdAnamesa do
  begin
  ColCount :=3;
  RowCount :=2;
  FixedCols:=1;
  DefaultROwHeight:=18;
  //Options := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect];
  Cells[0,0]:='No.';
  Cells[1,0]:= 'No DAFTAR ';
  Cells[2,0]:='ANAMESA ';


  //lebar kolom
  ColWidths[0]:=25;
  ColWidths[1]:=120;
  ColWidths[2]:=400;

  end;
end;

procedure TFAnamesaPasien.ambildata;
begin
  with DataSimrs.qryvw_anamesa do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT t_anamnesa.noDaftar,t_anamnesa.noRekamedis,'+
                't_anamnesa.kdTenagaMedis,'+
                't_anamnesa.anamesa FROM t_anamnesa where t_anamnesa.noDaftar="'+FRawatJalanIgd.edtNoRegistrasi.Text+'"';
    Open;
  end;
  if DataSimrs.qryvw_anamesa.RecordCount >= 1 then
     mmoAnamesa.Text := DataSimrs.qryvw_anamesa['anamesa']
  else
  Abort;
end;

procedure TFAnamesaPasien.tampilData;
var i:Integer;
begin
  if DataSimrs.qryvw_anamesa.RecordCount<>0 then
  begin
    strngrdAnamesa.RowCount := DataSimrs.qryvw_anamesa.RecordCount+1;
    for i:=0 to DataSimrs.qryvw_anamesa.RecordCount-1 do
    begin
      strngrdAnamesa.Cells[0,i+1] := IntToStr(i+1)+'.';
      strngrdAnamesa.Cells[1,i+1] := DataSimrs.qryvw_anamesa.FieldByName('noDaftar').AsString;
      strngrdAnamesa.Cells[2,i+1] := DataSimrs.qryvw_anamesa.FieldByName('anamesa').AsString;
      DataSimrs.qryvw_anamesa.Next
    end;
  end;
end;

procedure TFAnamesaPasien.FormShow(Sender: TObject);
begin
 cbbDokter.Text := FRawatJalanIgd.edtDokter.Text;
 aturkolom; ambildata; tampilData;
end;

procedure TFAnamesaPasien.btnSelesaiClick(Sender: TObject);
begin
  Close;
end;

procedure TFAnamesaPasien.btnSimpanClick(Sender: TObject);
begin
if cbbDokter.Text = '' then
   MessageDlg('Data Tidak Boleh Kosong...!',mtInformation,[mbok],0)
else
begin
if  DataSimrs.qryvw_anamesa.Locate('noDaftar',FRawatJalanIgd.edtNoRegistrasi.Text,[]) then
  begin
   with DataSimrs.qryvw_anamesa do
    begin
      Close;
      SQL.Clear;
      SQL.Text :='update t_anamnesa set anamesa="'+mmoAnamesa.Text+'" where noDaftar="'+FRawatJalanIgd.edtNoRegistrasi.Text+'"';
      ExecSQL;
      //SQL.Text := 'select * from t_anamnesa';
      //Open;
      aturkolom; ambildata; tampilData;
    end;
  end

  else
  begin
    with DataSimrs.qryvw_anamesa do
    begin
      Close;
      SQL.Clear;
      SQL.Text :='insert into t_anamnesa (noDaftar,noRekamedis,kdTenagaMedis,anamesa) values ("'+FRawatJalanIgd.edtNoRegistrasi.Text+'","'+FRawatJalanIgd.edtNoRm.Text+'","'+cbbDokter.EditValue+'","'+mmoAnamesa.Lines.Text+'")';
      ExecSQL;
      //SQL.Text := 'select * from t_anamnesa';
      //Open;
      aturkolom; ambildata; tampilData;
    end;
  end
end;
end;

end.
