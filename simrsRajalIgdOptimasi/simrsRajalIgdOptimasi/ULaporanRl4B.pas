unit ULaporanRl4B;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, StdCtrls, cxButtons, cxLabel, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, cxCalendar, frxExportCSV, frxExportXML,
  frxExportXLS, frxClass, frxExportPDF, frxDBSet;

type
  TFLaporanRl4b = class(TForm)
    pnlAtas: TPanel;
    pnlKeluar: TPanel;
    pnlBawah: TPanel;
    pnlTengah: TPanel;
    cxlblUNIT: TcxLabel;
    cbbUNIT: TcxLookupComboBox;
    cxlblTglMulai: TcxLabel;
    dtpTGLMULAI: TcxDateEdit;
    cxlblSAMPAI: TcxLabel;
    dtpTGLSAMPAI: TcxDateEdit;
    btnTAMPIL: TcxButton;
    frxrprtRL4B: TfrxReport;
    frxdbdtstRL4B: TfrxDBDataset;
    frxpdfxprt1: TfrxPDFExport;
    frxmlxprt1: TfrxXMLExport;
    frxcsvxprt1: TfrxCSVExport;
    procedure btnTAMPILClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLaporanRl4b: TFLaporanRl4b;

implementation

{$R *.dfm}
uses UDataSimrs,URajalIgd, ADODB;

procedure TFLaporanRl4b.btnTAMPILClick(Sender: TObject);
begin
  {with DataSimrs.qryRl4B DO
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT noDaftar,tglDaftar,unit,kdIcd10,icd10, SUM(umur06hr) AS umur06hr, SUM(umur728hr) AS umur728hr, SUM(umur28hr1TH) AS umur28hr1TH, '+
                'SUM(umur1_4th) AS umur1_4th, SUM(umur5_14th) AS umur5_14th, SUM(UMUR15_24TH) AS UMUR15_24TH, SUM(UMUR25_44TH) AS UMUR25_44TH,'+
                'SUM(UMUR45_64TH) AS UMUR45_64TH,SUM(UMUR65KeatasTH) AS UMUR65KeatasTH,'+
                'SUM(kasusDiagnosaLama AND `LAKI-LAKI`) AS KASUSLAMA_LAKIlAKI,SUM(kasusDiagnosaLama AND `PEREMPUAN`) AS KASUSLAMA_PEREMPUAN,'+
                '(SUM(kasusDiagnosaLama AND `LAKI-LAKI`)) +(SUM(kasusDiagnosaLama AND `PEREMPUAN`)) AS JUMLAHKASUSLAMA,'+
                'SUM(kasusDiagnosaBaru AND `LAKI-LAKI`) AS KASUSBARU_LAKIlAKI,SUM(kasusDiagnosaBaru AND `PEREMPUAN`) AS KASUSBARU_PEREMPUAN,'+
                'SUM(kasusDiagnosaBaru AND `LAKI-LAKI`) +SUM(kasusDiagnosaBaru AND `PEREMPUAN`) AS JUMLAHKASUSBARU,'+
                '(SUM(kasusDiagnosaLama AND `LAKI-LAKI`)) +(SUM(kasusDiagnosaLama AND `PEREMPUAN`)) +SUM(kasusDiagnosaBaru AND `LAKI-LAKI`) +SUM(kasusDiagnosaBaru AND `PEREMPUAN`) AS JUMLAHKUNJUNGAN,'+
                '(((SUM(kasusDiagnosaLama AND `LAKI-LAKI`)) +(SUM(kasusDiagnosaLama AND `PEREMPUAN`)) +SUM(kasusDiagnosaBaru AND `LAKI-LAKI`) +SUM(kasusDiagnosaBaru AND `PEREMPUAN`)) -(SUM(UMUM)) )AS JUMLAHRUJUKAN,'+
                'SUM(RujukRSlbhtinggi) AS JUMLAHDIRUJUK FROM vw_masterlaporanrajal WHERE (tglDaftar BETWEEN "'+FormatDateTime('yyyy-MM-dd',dtpTGLMULAI.Date)+'" AND "'+FormatDateTime('yyyy-MM-dd',dtpTGLSAMPAI.Date)+'") and (unit="'+cbbUNIT.Text+'") GROUP BY icd10 ORDER BY icd10 ASC';
    Open;
  end;

  frxrprtRL4B.LoadFromFile(ExtractFilePath(Application.ExeName)+'laporan\RL4B.fr3');
  frxrprtRL4B.ShowReport; }
end;

end.
