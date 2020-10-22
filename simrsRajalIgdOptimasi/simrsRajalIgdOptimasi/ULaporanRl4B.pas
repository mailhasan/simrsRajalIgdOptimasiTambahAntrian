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
    frxlsxprt1: TfrxXLSExport;
    frxmlxprt1: TfrxXMLExport;
    frxcsvxprt1: TfrxCSVExport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLaporanRl4b: TFLaporanRl4b;

implementation

{$R *.dfm}
uses UDataSimrs;

end.
