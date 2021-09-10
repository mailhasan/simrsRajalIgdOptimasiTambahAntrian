{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
unit UAsesmenAwalIgd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxSpinEdit,
  cxTimeEdit, cxCheckListBox, cxGroupBox, cxCheckGroup, frxpngimage,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxLabel;

type
  TFAsesmenAwalIgd = class(TForm)
    pnlAtas: TPanel;
    pnlKeluar: TPanel;
    pnlTengah: TPanel;
    pnlTengahAtas: TPanel;
    grpTegah1: TGroupBox;
    lblNoRm: TLabel;
    lblNmPasien: TLabel;
    lblPenjamin: TLabel;
    lblAlamat: TLabel;
    lblDokter1: TLabel;
    lblAsalPasien: TLabel;
    lblTglLahir: TLabel;
    lblUmur: TLabel;
    lblJk: TLabel;
    lblNoRegistrasi: TLabel;
    lblNoRajal: TLabel;
    edtNoRm: TEdit;
    edtNmPasien: TEdit;
    edtPenjamin: TEdit;
    edtDokter: TEdit;
    edtTempatLahir: TEdit;
    edtAlamat: TEdit;
    edtUmur: TEdit;
    edtJk: TEdit;
    dtpTglLahir: TDateTimePicker;
    edtNoRegistrasi: TEdit;
    edtNoRajal: TEdit;
    pgcAsesmenAwalIgd: TPageControl;
    tsTRIAGE: TTabSheet;
    grpTriageDataRujukan: TGroupBox;
    lblDIKIRIMOLEH: TLabel;
    lblNAMAPENGIRIM: TLabel;
    lblALAMATPENGIRIM: TLabel;
    lblTGLMASUK: TLabel;
    lblJENISKASUS: TLabel;
    lblTgljamTrauma: TLabel;
    lblLOKASITKP: TLabel;
    lblCARADATANG: TLabel;
    lblDIAGNOSISRUJUKAN: TLabel;
    lblTERAPIYGDIBERIKAN: TLabel;
    edtDIKRIMOLEH: TEdit;
    edtNAMAPENGIRIM: TEdit;
    mmoAlamat: TMemo;
    dtpTGLMASUK: TDateTimePicker;
    cxtmdtJAM: TcxTimeEdit;
    chkNontrauma: TCheckBox;
    chkObstetri: TCheckBox;
    chkTrauma: TCheckBox;
    dtpTGLTRAUMA: TDateTimePicker;
    cxtmdtJAMTRAUMA: TcxTimeEdit;
    mmoLokasiTKP: TMemo;
    chkBERJALAN: TCheckBox;
    chkBRANCAR: TCheckBox;
    chkKURSIRODA: TCheckBox;
    grpMenuTriage: TGroupBox;
    btnSIMPANTRIAGE: TButton;
    btnUBAHTRIAGE: TButton;
    mmodiagrujukan: TMemo;
    mmoterapi: TMemo;
    grpRIWAYATTRIAGE: TGroupBox;
    grpTRIAGE: TGroupBox;
    lblKELUHANUTAMA: TLabel;
    lblRIWAYATSINGKAT: TLabel;
    lblKEADAAANUMUM: TLabel;
    lbl1: TLabel;
    lblPEMERIKSAAN: TLabel;
    lblEMERGENCY: TLabel;
    lblTANDA: TLabel;
    lblURGENT: TLabel;
    lblNON: TLabel;
    lblFalse: TLabel;
    lblRESUSITASI: TLabel;
    lblVITAL: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    edtKELUHANUTAMA: TEdit;
    edtRIWAYATSINGKAT: TEdit;
    edtKEADAANUMUM: TEdit;
    grpJALANNAFAS: TGroupBox;
    chkSumbatan: TCheckBox;
    chkBebasE: TCheckBox;
    chkBebasU: TCheckBox;
    chkNoUrgent: TCheckBox;
    chkBebasFE: TCheckBox;
    grpPERNAFASAN: TGroupBox;
    lblSaO2: TLabel;
    lbl6: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    chkHentinafas: TCheckBox;
    chkRR1xmnt: TCheckBox;
    chkSianosis: TCheckBox;
    chkApnea: TCheckBox;
    chkRR40xmnt: TCheckBox;
    chkSianosisSentalMenetapDenganOs2: TCheckBox;
    chkRR32: TCheckBox;
    chkWheezing: TCheckBox;
    chkRR80: TCheckBox;
    chkSianosisEmergency: TCheckBox;
    edtSaO2: TEdit;
    edtFrekNafas: TEdit;
    chkpr24_32Xm: TCheckBox;
    chkWhezingE: TCheckBox;
    chkPR60: TCheckBox;
    chkSianosiSentalU: TCheckBox;
    chkNormalNoU: TCheckBox;
    chkNormalFE: TCheckBox;
    grpSirkulasi: TGroupBox;
    lbl2: TLabel;
    lbl8: TLabel;
    lblNADI: TLabel;
    lbl9: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    chkHentiJantung: TCheckBox;
    chkNadiTidakTerabaLemah: TCheckBox;
    chkPucatpale: TCheckBox;
    chkAkralDingin: TCheckBox;
    chkFrekNadi60x: TCheckBox;
    chkCRT3detik: TCheckBox;
    chkNadiTeraba: TCheckBox;
    chkBraadikardia: TCheckBox;
    chkTachikardia: TCheckBox;
    chkPucatPaleE: TCheckBox;
    chkAkralDinginE: TCheckBox;
    chkCrt3DetikE: TCheckBox;
    edtTekananDarah: TEdit;
    chkFreknadiE: TCheckBox;
    edtNadi: TEdit;
    chkNormalUSirkulasi: TCheckBox;
    chkNormalFESirkulasi: TCheckBox;
    chkNadiTeraba120_150: TCheckBox;
    chkFrekNadiUrgent: TCheckBox;
    chkTekDarahSistole: TCheckBox;
    chkTekDarahDiastole: TCheckBox;
    chkCrt3DetikU: TCheckBox;
    grpKESADARAN: TGroupBox;
    lblGCS: TLabel;
    lblE: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    lbl24: TLabel;
    lbl25: TLabel;
    chkGCS9: TCheckBox;
    chkNeonatus36: TCheckBox;
    chkGCS9_12: TCheckBox;
    chkNeonatus35cE: TCheckBox;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    chkGCS12: TCheckBox;
    chkGcs15: TCheckBox;
    chkLukaDng: TCheckBox;
    chkTraumaNoU: TCheckBox;
    edtSuhu: TEdit;
    chk36_50CNo: TCheckBox;
    chk36_50cF: TCheckBox;
    chknormal: TCheckBox;
    CheckBox2: TCheckBox;
    grpAREA: TGroupBox;
    grpRESPONETIME: TGroupBox;
    lbl7: TLabel;
    lbl30: TLabel;
    lbl31: TLabel;
    chkcompos: TCheckBox;
    chkapatis: TCheckBox;
    chksomnolens: TCheckBox;
    chksopor: TCheckBox;
    chkcoma: TCheckBox;
    tsSTATUS: TTabSheet;
    grpStatusAtas: TGroupBox;
    lblPEKERJAAN: TLabel;
    lblTINGGAL: TLabel;
    lblSUKU: TLabel;
    lblAGAMA: TLabel;
    lblCARABAYAR: TLabel;
    edtCaraBayar: TEdit;
    edtPEKERJAAN: TComboBox;
    edtTINGGAL: TComboBox;
    edtSUKU: TComboBox;
    edtAGAMA: TComboBox;
    grpMENUSTATUS: TGroupBox;
    btnSIMPANSTATUS: TButton;
    btnUBAHSTATUS: TButton;
    grpRIWAYATSTATUS: TGroupBox;
    TabSheet1: TTabSheet;
    tsNyeri: TTabSheet;
    grpAtasNyeri: TGroupBox;
    chkYaNyeri: TCheckBox;
    lblPASIENNYERI: TLabel;
    chkTIDAKNYERI: TCheckBox;
    Image3: TImage;
    grpNYERI: TGroupBox;
    chktdknyeri: TCheckBox;
    chkNYERIRINGAN: TCheckBox;
    chkNYERIBERAT: TCheckBox;
    chkNYERISEDANG: TCheckBox;
    chkNYERISANGAT: TCheckBox;
    lblLokasi: TLabel;
    edtLOKASINYERI: TEdit;
    lblsejak: TLabel;
    grpMENUNYERI: TGroupBox;
    btnSIMPANNYERI: TButton;
    btnUBAHNYERI: TButton;
    rb0: TRadioButton;
    rb1: TRadioButton;
    rb2: TRadioButton;
    rb3: TRadioButton;
    rb4: TRadioButton;
    rb5: TRadioButton;
    rb6: TRadioButton;
    rb7: TRadioButton;
    rb8: TRadioButton;
    rb9: TRadioButton;
    rb10: TRadioButton;
    grpPENILAIANNYERI: TGroupBox;
    lblpengkajian: TLabel;
    lblnilai: TLabel;
    grpSIFAT: TGroupBox;
    lblsifat: TLabel;
    lblKUALITAS: TLabel;
    lblPEMBERAT: TLabel;
    lblPERINGAN: TLabel;
    lblEFEK: TLabel;
    lblwajah: TLabel;
    lblkaki: TLabel;
    lblaktifitas: TLabel;
    chkterus: TCheckBox;
    chktumpul: TCheckBox;
    chkcahaya: TCheckBox;
    chkmakan: TCheckBox;
    chkmual: TCheckBox;
    chktajam: TCheckBox;
    chkgerakan: TCheckBox;
    chksunyi: TCheckBox;
    chktidur: TCheckBox;
    chkHILANG: TCheckBox;
    chktertekan: TCheckBox;
    chkberbaring: TCheckBox;
    chkdingin: TCheckBox;
    chknafsumakan: TCheckBox;
    chkterbakar: TCheckBox;
    chkpanas: TCheckBox;
    chkaktifitas: TCheckBox;
    chklainsifat: TCheckBox;
    edtlainsifat: TEdit;
    chklainkualitas: TCheckBox;
    edtlainkualitas: TEdit;
    chklainpemberat: TCheckBox;
    edtlainpemberat: TEdit;
    chklainperingan: TCheckBox;
    edtlainperingan: TEdit;
    chklainefek: TCheckBox;
    edtlainefek: TEdit;
    lblmenangis: TLabel;
    lblbersuara: TLabel;
    edtsejak: TEdit;
    cbbwajah: TComboBox;
    cbbkaki: TComboBox;
    cbbaktifitas: TComboBox;
    cbbmenangis: TComboBox;
    cbbbersuara: TComboBox;
    grpskalanyeri: TGroupBox;
    lblskala: TLabel;
    lblnyaman: TLabel;
    lblkurangnyaman: TLabel;
    lblnyerisedang: TLabel;
    lblnyeriberat: TLabel;
    Label8: TLabel;
    grpprisikojatuh: TGroupBox;
    edttotalnyeri: TEdit;
    lblfaktorrisiko: TLabel;
    lblskalarisiko: TLabel;
    lblpoin: TLabel;
    Label9: TLabel;
    lblriwayatjatuh: TLabel;
    grpRIWAYATNYERI: TGroupBox;
    lbldiagnosis: TLabel;
    lblalatbantu: TLabel;
    lblterpasang: TLabel;
    lblgaya: TLabel;
    lblstatusmental: TLabel;
    cbbriwayatjatuh: TComboBox;
    cbbdiagnosis: TComboBox;
    cbbalatbantu: TComboBox;
    cbbterpasanginfus: TComboBox;
    cbbgayaberjalan: TComboBox;
    cbbstatusmental: TComboBox;
    edtriwayatjatuh: TEdit;
    edtdiagnosis: TEdit;
    edtalatbantu: TEdit;
    edtterpasanginfus: TEdit;
    edtgayaberjalan: TEdit;
    edtstatusmental: TEdit;
    GroupBox3: TGroupBox;
    lbltotalskorrisiko: TLabel;
    lblskalanyeri: TLabel;
    lbljikanyeri: TLabel;
    grpintervensi: TGroupBox;
    lblno: TLabel;
    lblhasil: TLabel;
    grpInterpretasiHasil: TGroupBox;
    lbl48: TLabel;
    lbl49: TLabel;
    lbl50: TLabel;
    lbl51: TLabel;
    lbl52: TLabel;
    GroupBox4: TGroupBox;
    lbl44: TLabel;
    lbl45: TLabel;
    lbl46: TLabel;
    lbl34: TLabel;
    lbl35: TLabel;
    lbl36: TLabel;
    lbl37: TLabel;
    lblMELEPASKAN: TLabel;
    lbl38: TLabel;
    lbl39: TLabel;
    lbl40: TLabel;
    lbl41: TLabel;
    lbl42: TLabel;
    lbl43: TLabel;
    cbbstatus1: TComboBox;
    edtNILAI1: TEdit;
    cbbstatus2: TComboBox;
    edtNILAI2: TEdit;
    cbbstatus3: TComboBox;
    edtNILAI3: TEdit;
    cbbstatus4: TComboBox;
    edtNILAI4: TEdit;
    cbbstatus5: TComboBox;
    edtNILAI5: TEdit;
    cbbstatus6: TComboBox;
    edtNILAI6: TEdit;
    cbbstatus7: TComboBox;
    cbbstatus8: TComboBox;
    cbbstatus9: TComboBox;
    cbbstatus10: TComboBox;
    edtNILAI7: TEdit;
    edtNILAI8: TEdit;
    edtNILAI9: TEdit;
    edtNILAI10: TEdit;
    edtTOTALSKOR: TEdit;
    lbltotalskorstatus: TLabel;
    grpPENGGUNARESTARIN: TGroupBox;
    edtPENGGUNARESTARIN: TEdit;
    chkTIDAK4: TCheckBox;
    chkYAKARENA: TCheckBox;
    grpJENISRESTARIN: TGroupBox;
    edtJENISRESTARIN: TEdit;
    chkOBAT: TCheckBox;
    chkALAT: TCheckBox;
    chkLAINNYA1: TCheckBox;
    grpSTATUSPSIKOLOGI: TGroupBox;
    chkTENANG: TCheckBox;
    chkCEMAS: TCheckBox;
    chkMARAH: TCheckBox;
    chkTAKUT: TCheckBox;
    chkSEDIH: TCheckBox;
    chkLAIN: TCheckBox;
    grpSTATUSMENTAL: TGroupBox;
    chkSADAR: TCheckBox;
    chkADAMASALAH: TCheckBox;
    edtMASALAH: TEdit;
    grpBAHASA: TGroupBox;
    lblGanguanBicara: TLabel;
    lbl33: TLabel;
    lblHAMBATANBELAJAR: TLabel;
    lblCARABELAJAR: TLabel;
    chkINDONESIA: TCheckBox;
    chkDAERAH: TCheckBox;
    cbbDAERAH: TComboBox;
    chkLAINNYA: TCheckBox;
    chkYA1: TCheckBox;
    chkTIDAK1: TCheckBox;
    chkYA2: TCheckBox;
    chkYA3: TCheckBox;
    chkTIDAK2: TCheckBox;
    CHKtidak3: TCheckBox;
    chkMENDENGAR: TCheckBox;
    chkMENULIS: TCheckBox;
    chkMEMBACA: TCheckBox;
    grpPENDAMPINGANROHANI: TGroupBox;
    lblkegiatan: TLabel;
    edtKEGIATANSPITULA: TEdit;
    chkYA: TCheckBox;
    chkTIDAK: TCheckBox;
    Label4: TLabel;
    chkTIDAKADA: TCheckBox;
    chkADA: TCheckBox;
    edtAdaNilaiKepercayaan: TEdit;
    edttotalskorrisiko: TEdit;
    lbltindakan: TLabel;
    lblnamapetugas: TLabel;
    lblyatidak: TLabel;
    lbl1risiko: TLabel;
    lbl2risiko: TLabel;
    lbl3risiko: TLabel;
    lbltdkberisiko: TLabel;
    lblrisikorendah: TLabel;
    lblrisikotinggi: TLabel;
    lbltdkadatindakan: TLabel;
    lbledukasi: TLabel;
    lblpasangstiker: TLabel;
    cbbno1: TComboBox;
    cbbno2: TComboBox;
    cbbno3: TComboBox;
    edtnamapetugas1: TEdit;
    edtnamapetugas2: TEdit;
    edtnamapetugas3: TEdit;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    tskondisikrsigd: TTabSheet;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    GroupBox8: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox7: TGroupBox;
    GroupBox9: TGroupBox;
    GroupBox10: TGroupBox;
    GroupBox11: TGroupBox;
    GroupBox12: TGroupBox;
    GroupBox13: TGroupBox;
    GroupBox14: TGroupBox;
    GroupBox15: TGroupBox;
    lblNeonatus: TLabel;
    lblMenetapDenganOs2: TLabel;
    lbl3: TLabel;
    lbl5: TLabel;
    lbl16: TLabel;
    lbl17: TLabel;
    GroupBox16: TGroupBox;
    GroupBox17: TGroupBox;
    GroupBox18: TGroupBox;
    grprespontime: TGroupBox;
    GroupBox20: TGroupBox;
    GroupBox21: TGroupBox;
    GroupBox22: TGroupBox;
    lbl1menit: TLabel;
    lbl10menit: TLabel;
    lbl60menit: TLabel;
    lbl22: TLabel;
    lbl23: TLabel;
    lbl26: TLabel;
    Label3: TLabel;
    lblinfeksi: TLabel;
    lbl27: TLabel;
    grphumpty: TGroupBox;
    lblparameter: TLabel;
    lblkriteriapoin: TLabel;
    lblskorpasienhumpty: TLabel;
    lblusia: TLabel;
    lbljenkelhumpty: TLabel;
    lbldiaghumpty: TLabel;
    lblgangguan: TLabel;
    lblgangguanling: TLabel;
    lblrespon: TLabel;
    lblmedika: TLabel;
    cbbhumpty1: TComboBox;
    cbbhumpty2: TComboBox;
    cbbhumpty3: TComboBox;
    cbbhumpty4: TComboBox;
    cbbhumpty5: TComboBox;
    cbbhumpty6: TComboBox;
    cbbhumpty7: TComboBox;
    edtSkorPasien1: TEdit;
    edtSkorPasien2: TEdit;
    edtSkorPasien3: TEdit;
    edtSkorPasien4: TEdit;
    edtSkorPasien5: TEdit;
    edtSkorPasien6: TEdit;
    edtSkorPasien7: TEdit;
    GroupBox19: TGroupBox;
    grpskalahumpty: TGroupBox;
    lblskalahumpty: TLabel;
    lbljikahumpty: TLabel;
    lblskorhumpty: TLabel;
    edtskorhumpty: TEdit;
    grpnutrisi: TGroupBox;
    lblbb: TLabel;
    edtbb: TEdit;
    lblKg: TLabel;
    lblTb: TLabel;
    edtTb: TEdit;
    lblcm: TLabel;
    Label10: TLabel;
    edtIMT: TEdit;
    lblkgm: TLabel;
    grppasiendewasa: TGroupBox;
    grppasienobstetri: TGroupBox;
    grppasienanak: TGroupBox;
    lblindeks: TLabel;
    lblada: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    lblparameter2: TLabel;
    lblkriteria2: TLabel;
    lblskorhumpty2: TLabel;
    lbltotalskorhumpty1: TLabel;
    cbbImt: TComboBox;
    grpMENUHUMPTY: TGroupBox;
    btnSIMPANHUMPTY: TButton;
    btnUBAHHUMPTY: TButton;
    grpRIWAYATHUMPTY: TGroupBox;
    cbbAdaPenurunanBB: TComboBox;
    cbbApaAsupan: TComboBox;
    edtImt1: TEdit;
    edtAdaPenurunan2: TEdit;
    edtApaAsupan: TEdit;
    edttotalskorhumpty1: TEdit;
    lbl1humpty: TLabel;
    lbl2humpty: TLabel;
    lbl3humpty: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    cbbobs1: TComboBox;
    cbbobs2: TComboBox;
    cbbobs3: TComboBox;
    cbbobs4: TComboBox;
    cbbanak1: TComboBox;
    cbbanak2: TComboBox;
    cbbanak3: TComboBox;
    cbbanak4: TComboBox;
    lblnohumpty: TLabel;
    lblnohumpty1: TLabel;
    lblnohumpty2: TLabel;
    lbltotalskorhumpty2: TLabel;
    lbltotalskorhumpty3: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    lbllno1: TLabel;
    lblno2: TLabel;
    lblno3: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label21: TLabel;
    edtotalskorobs: TEdit;
    edttotalskoranak: TEdit;
    grpdischarge: TGroupBox;
    lblusiadis: TLabel;
    lblketerbatasan: TLabel;
    lbl2dis: TLabel;
    lbl3dis: TLabel;
    lbl1dis: TLabel;
    grpMENUDIS: TGroupBox;
    btnSIMPANDIS: TButton;
    btnUBAHDIS: TButton;
    cbya1: TCheckBox;
    cbtidak1: TCheckBox;
    grpRIWAYATDISCHARGE: TGroupBox;
    grpmasalahdis: TGroupBox;
    lblperawatan: TLabel;
    lblbantuan: TLabel;
    lbl4dis: TLabel;
    cbya2: TCheckBox;
    cbya3: TCheckBox;
    cbya4: TCheckBox;
    cbtidak2: TCheckBox;
    cbtidak3: TCheckBox;
    cbtidak4: TCheckBox;
    grpjikadis: TGroupBox;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    GroupBox23: TGroupBox;
    Label44: TLabel;
    Label43: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label45: TLabel;
    lbl01dis: TLabel;
    lbl02dis: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    edtlain1: TEdit;
    edtlain2: TEdit;
    edtlain3: TEdit;
    cxtmdt02: TcxTimeEdit;
    cxtmdt03: TcxTimeEdit;
    cxtmdt04: TcxTimeEdit;
    cxtmdt05: TcxTimeEdit;
    cxtmdt07: TcxTimeEdit;
    cxtmdt08: TcxTimeEdit;
    cxtmdt09: TcxTimeEdit;
    cxtmdt10: TcxTimeEdit;
    cxtmdt11: TcxTimeEdit;
    cxtmdt06: TcxTimeEdit;
    cxtmdt01: TcxTimeEdit;
    cxtmdt12: TcxTimeEdit;
    cxtmdt13: TcxTimeEdit;
    cxtmdt14: TcxTimeEdit;
    cxtmdt15: TcxTimeEdit;
    edtimplementasi1: TEdit;
    edtimplementasi2: TEdit;
    edtimplementasi3: TEdit;
    edtimplementasi4: TEdit;
    edtimplementasi5: TEdit;
    edtimplementasi6: TEdit;
    edtimplementasi7: TEdit;
    edtimplementasi8: TEdit;
    edtimplementasi9: TEdit;
    edtimplementasi10: TEdit;
    edtimplementasi11: TEdit;
    edtimplementasi12: TEdit;
    edtimplementasi13: TEdit;
    edtimplementasi14: TEdit;
    edtimplementasi15: TEdit;
    GroupBox27: TGroupBox;
    GroupBox28: TGroupBox;
    grpRIWAYATOBSERVASI: TGroupBox;
    lblkeluhan: TLabel;
    lblriwayatpenyakit: TLabel;
    lblriwayatalergi: TLabel;
    cbtidakada: TCheckBox;
    cbyaalergi: TCheckBox;
    cbauto: TCheckBox;
    cbhetero: TCheckBox;
    GroupBox29: TGroupBox;
    lblasesmen: TLabel;
    grpMENUFOLL: TGroupBox;
    btnSIMPANFOLL: TButton;
    btnUBAHFOLL: TButton;
    Edit18: TEdit;
    Edit20: TEdit;
    GroupBox33: TGroupBox;
    cbtidakada1: TCheckBox;
    cbyariwayat: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    lblriwayatkeluarga: TLabel;
    lblriwayatobat: TLabel;
    cbtidak: TCheckBox;
    cbyaobat: TCheckBox;
    edtpenyakitkeluarga: TEdit;
    GroupBox26: TGroupBox;
    lbljamdis: TLabel;
    lbltanggaldis: TLabel;
    lblperawatdis: TLabel;
    cxtmJAMdis: TcxTimeEdit;
    dtptanggaldis: TDateTimePicker;
    cbbperawatdis: TComboBox;
    lblriwayatpenyakitdanobat: TLabel;
    GroupBox34: TGroupBox;
    Label85: TLabel;
    GroupBox35: TGroupBox;
    lblpenunjang: TLabel;
    lbllab: TLabel;
    lblrad: TLabel;
    Image1: TImage;
    Image2: TImage;
    Memoriwayatpenyakit: TMemo;
    Memopemeriksaanfisik: TMemo;
    GroupBox31: TGroupBox;
    grpRIWAYATFOLL: TGroupBox;
    GroupBox36: TGroupBox;
    lbldaftarmasalah: TLabel;
    GroupBox38: TGroupBox;
    lblplanning: TLabel;
    GroupBox39: TGroupBox;
    GroupBox40: TGroupBox;
    GroupBox41: TGroupBox;
    grpkrs: TGroupBox;
    lbltanggalkrs: TLabel;
    lblkeadaan: TLabel;
    lblkesadaran: TLabel;
    Label102: TLabel;
    lbltampak: TLabel;
    DateTimePicker1: TDateTimePicker;
    cxtmdtkrs: TcxTimeEdit;
    cbtidaksakit: TCheckBox;
    cbsakitsedang: TCheckBox;
    cbsakitringan: TCheckBox;
    cbsakitberat: TCheckBox;
    cbsomnolens: TCheckBox;
    cbapatis: TCheckBox;
    grpMENUKRS: TGroupBox;
    btnSIMPANKRS: TButton;
    btnUBAHKRS: TButton;
    btnTAMBAHKONDISI: TButton;
    cbcompos: TCheckBox;
    cbsopor: TCheckBox;
    cbcoma: TCheckBox;
    grpRIWAYATKONDISIKRS: TGroupBox;
    grpkrs1: TGroupBox;
    Label123: TLabel;
    cbbruangan: TComboBox;
    Label124: TLabel;
    GroupBox46: TGroupBox;
    cbkenpribadi: TCheckBox;
    cbambulans: TCheckBox;
    cbkenjenazah: TCheckBox;
    lbl19: TLabel;
    edtriwayatpenyakit: TEdit;
    edtriwayatpenyakitkeluarga: TEdit;
    edtlab: TEdit;
    edtrad: TEdit;
    Memodaftarmasalah: TMemo;
    lbldiagnosiskerja: TLabel;
    lblmedis: TLabel;
    lblkeperawatan: TLabel;
    Memomedis: TMemo;
    Memodiagnosis: TMemo;
    Memokeperawatan: TMemo;
    lblfollow: TLabel;
    GroupBox1: TGroupBox;
    GroupBox24: TGroupBox;
    GroupBox25: TGroupBox;
    lbltanggalfoll: TLabel;
    lblrekomen: TLabel;
    lblnamafoll1: TLabel;
    grpfollow: TGroupBox;
    lbltanggaljam: TLabel;
    dtpfoll: TDateTimePicker;
    cxtmdtfoll: TcxTimeEdit;
    lblrekomendasi: TLabel;
    lblnamafoll: TLabel;
    cbbnamapetugas: TComboBox;
    edtrekomendasi: TEdit;
    btnTAMBAHFOLL: TButton;
    Label59: TLabel;
    Label22: TLabel;
    lblperawatigd: TLabel;
    lbldokterigd: TLabel;
    cbbperawatigd: TComboBox;
    cbbdokterigd: TComboBox;
    grptandavital: TGroupBox;
    lblgcskrs: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label74: TLabel;
    Label81: TLabel;
    Label75: TLabel;
    Label82: TLabel;
    GroupBox30: TGroupBox;
    cbtindakanlanjut: TCheckBox;
    cbkamaroperasi: TCheckBox;
    cbbkamarbersalin: TCheckBox;
    cblainnyakrs: TCheckBox;
    edtlainnyakrs: TEdit;
    cbrujukke: TCheckBox;
    edtrujukke: TEdit;
    lbljamrujuk: TLabel;
    cxtmdtrujukke: TcxTimeEdit;
    lblwibrujuk: TLabel;
    cbpulangpaksa: TCheckBox;
    cbmeninggal: TCheckBox;
    cxtmdtmeninggal: TcxTimeEdit;
    cbDOA: TCheckBox;
    cbbpetugas: TComboBox;
    lblwibmeninggal: TLabel;
    TabSheet5: TTabSheet;
    GroupBox37: TGroupBox;
    lbldokterobs: TLabel;
    lblperawatobs: TLabel;
    lblbed: TLabel;
    lblP: TLabel;
    Label87: TLabel;
    grpMENUOBS: TGroupBox;
    btnSIMPANOBS: TButton;
    btnUBAHOBS: TButton;
    btnTAMBAHOBSERVASI: TButton;
    GroupBox44: TGroupBox;
    Label88: TLabel;
    Label91: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    dtpmasuk: TDateTimePicker;
    cxtmdtjamkeluar: TcxTimeEdit;
    grpMENUTL: TGroupBox;
    btnSIMPANTL: TButton;
    btnUBAHTL: TButton;
    btnTAMBAHTL: TButton;
    grpRIWAYATTINDAKLANJUT: TGroupBox;
    GroupBox48: TGroupBox;
    Label95: TLabel;
    lbllaboratorium: TLabel;
    Label104: TLabel;
    Label106: TLabel;
    Label108: TLabel;
    lblradiologi: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    cbbdokterobs: TComboBox;
    cbbperawatobs: TComboBox;
    cbbP: TComboBox;
    edtnomorbed: TEdit;
    lblinstruksi: TLabel;
    dtptanggalobs: TDateTimePicker;
    cxtmdttanggalobs: TcxTimeEdit;
    edtassesment: TEdit;
    edtairway: TEdit;
    edtbreathing: TEdit;
    edtcirculation: TEdit;
    edtradiologi: TEdit;
    edtlaboratorium: TEdit;
    GroupBox49: TGroupBox;
    lbltanggalobs1: TLabel;
    lblsaobs: TLabel;
    lbltensi: TLabel;
    lblnadiobs: TLabel;
    lblRRobs: TLabel;
    lblpupilobs: TLabel;
    lblsuhuobs: TLabel;
    lblgcsobs: TLabel;
    dtptanggalobs1: TDateTimePicker;
    cxtmdttangalobs1: TcxTimeEdit;
    Label112: TLabel;
    lblketobs: TLabel;
    lbltindakanobs: TLabel;
    lbloutputobs: TLabel;
    lblpetugasobs: TLabel;
    edttensi: TEdit;
    edtnadiobs: TEdit;
    edtRRobs: TEdit;
    edtsuhuobs: TEdit;
    edtgcsobs: TEdit;
    edtpupil: TEdit;
    edtSa: TEdit;
    edtoutput: TEdit;
    edtketerangan: TEdit;
    btnTAMBAHOBS: TButton;
    grpdaftarobs: TGroupBox;
    GroupBox32: TGroupBox;
    GroupBox47: TGroupBox;
    lblanamnesa: TLabel;
    Memoanamnesa: TMemo;
    lblpemeriksaanfisik: TLabel;
    GroupBox51: TGroupBox;
    lblpemeriksaanpenunjang: TLabel;
    lbldiagnosa: TLabel;
    GroupBox52: TGroupBox;
    lbltindakanyang: TLabel;
    lblobat: TLabel;
    GroupBox53: TGroupBox;
    lblkondisi: TLabel;
    lblanjuran: TLabel;
    Memopemeriksaantindaklanjut: TMemo;
    Memopenunjang: TMemo;
    Memodiagnosa: TMemo;
    Memotindakan: TMemo;
    Memoobat: TMemo;
    Memokondisipulang: TMemo;
    CheckBox3: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    grpalasanpulang: TGroupBox;
    cbdapat: TCheckBox;
    cbpulang: TCheckBox;
    cbsembuh: TCheckBox;
    cbpindah: TCheckBox;
    cbmeninggaljam: TCheckBox;
    ComboBox18: TComboBox;
    Label130: TLabel;
    DateTimePicker6: TDateTimePicker;
    edtlain: TEdit;
    cxtmdtmeninggaljam: TcxTimeEdit;
    edtRSlain: TEdit;
    Label131: TLabel;
    lblsaya: TLabel;
    lblpasien: TLabel;
    lbldokteryang: TLabel;
    edtkeluargapasien: TEdit;
    cbbdokter: TComboBox;
    Label90: TLabel;
    dtpkeluar: TDateTimePicker;
    Label92: TLabel;
    Label135: TLabel;
    cxtmdtjammasuk: TcxTimeEdit;
    edtE: TEdit;
    edtV: TEdit;
    edtM: TEdit;
    edttekanan: TEdit;
    edtnadikrs: TEdit;
    edtRR: TEdit;
    edtsuhukrs: TEdit;
    cbbpetugasobs: TComboBox;
    btnBaru: TButton;
    dtpTglDaftarUnit: TDateTimePicker;
    rbP1: TRadioButton;
    rbP2: TRadioButton;
    rbP3: TRadioButton;
    lblKodeTriage: TLabel;
    cxgrdbtblvwTriage: TcxGridDBTableView;
    cxgrdlvlTriage: TcxGridLevel;
    cxgrdTriage: TcxGrid;
    cxgrdbclmnTriageidAsesmenAwalTriage: TcxGridDBColumn;
    cxgrdbclmnTriagenoRekamedis: TcxGridDBColumn;
    cxgrdbclmnTriagenoDaftar: TcxGridDBColumn;
    cxgrdbclmnTriagenoDaftarUnit: TcxGridDBColumn;
    cxgrdbclmnTriagetglDaftarUnit: TcxGridDBColumn;
    cxgrdbclmnTriagediKrimOleh: TcxGridDBColumn;
    cxgrdbclmnTriagenamaPengirim: TcxGridDBColumn;
    cxgrdbclmnTriagealamatPengirim: TcxGridDBColumn;
    cxgrdbclmnTriagediagnosaRujukan: TcxGridDBColumn;
    cxgrdbclmnTriageterapiYangDiberikan: TcxGridDBColumn;
    cxgrdbclmnTriagetglMasuk: TcxGridDBColumn;
    cxgrdbclmnTriagejamMasuk: TcxGridDBColumn;
    cxgrdbclmnTriagenonTrauma: TcxGridDBColumn;
    cxgrdbclmnTriageobsterti: TcxGridDBColumn;
    cxgrdbclmnTriagetrauma: TcxGridDBColumn;
    cxgrdbclmnTriagetglTrauma: TcxGridDBColumn;
    cxgrdbclmnTriagejamTrauma: TcxGridDBColumn;
    cxgrdbclmnTriagelokasiTkp: TcxGridDBColumn;
    cxgrdbclmnTriagecaraDatang: TcxGridDBColumn;
    cxgrdbclmnTriagekeluhanUtama: TcxGridDBColumn;
    cxgrdbclmnTriageriwayatSingkat: TcxGridDBColumn;
    cxgrdbclmnTriagekeadaanUmum: TcxGridDBColumn;
    cxgrdbclmnTriagekesadaran: TcxGridDBColumn;
    cxgrdbclmnTriagejalanNafasResutassiSumbatan: TcxGridDBColumn;
    cxgrdbclmnTriagejalanNafasEmergencyBebas: TcxGridDBColumn;
    cxgrdbclmnTriagejalanNafasUrgentBebas: TcxGridDBColumn;
    cxgrdbclmnTriagejalanNafasNonUrgentBebas: TcxGridDBColumn;
    cxgrdbclmnTriagejalasNafasFalseEmergencyBebas: TcxGridDBColumn;
    cxgrdbclmnTriagepernafasanResutasiHentiNafas: TcxGridDBColumn;
    cxgrdbclmnTriagepernafasanResutasiPR1Menit: TcxGridDBColumn;
    cxgrdbclmnTriagepernafasanResutasiPR40Menit: TcxGridDBColumn;
    cxgrdbclmnTriagepernafasanResutasiSiagnosiSentral: TcxGridDBColumn;
    cxgrdbclmnTriagepernafasanResutasiSiagnosi: TcxGridDBColumn;
    cxgrdbclmnTriagepernafasanResutasiApnea: TcxGridDBColumn;
    cxgrdbclmnTriagepernafasanEmergencyPR: TcxGridDBColumn;
    cxgrdbclmnTriagepernafasanEmergencyWheezing: TcxGridDBColumn;
    cxgrdbclmnTriagepernafasanEmergencyPr80: TcxGridDBColumn;
    cxgrdbclmnTriagepernafasanEmergencySianosis: TcxGridDBColumn;
    cxgrdbclmnTriagepernafasanTandaVitalSa02: TcxGridDBColumn;
    cxgrdbclmnTriagepernafasanTandaVitalFrekNafas: TcxGridDBColumn;
    cxgrdbclmnTriagepernafasanUrgentPr24: TcxGridDBColumn;
    cxgrdbclmnTriagepernafasanUrgentWheezing: TcxGridDBColumn;
    cxgrdbclmnTriagepernafasanUrgentPr60: TcxGridDBColumn;
    cxgrdbclmnTriagepernafasanUrgentSianosi: TcxGridDBColumn;
    cxgrdbclmnTriagepernafasanNonUrgentNormal: TcxGridDBColumn;
    cxgrdbclmnTriagepernafasanFalseEmergencyNormal: TcxGridDBColumn;
    cxgrdbclmnTriagesirkulasiResutasiHenditkanJantung: TcxGridDBColumn;
    cxgrdbclmnTriagesirkulasiResutasiNadiTidakTerabahLemah: TcxGridDBColumn;
    cxgrdbclmnTriagesirkulasiResutasiPucatPale: TcxGridDBColumn;
    cxgrdbclmnTriagesirkulasiResutasiAkralDingin: TcxGridDBColumn;
    cxgrdbclmnTriagesirkulasiResutasiFrek: TcxGridDBColumn;
    cxgrdbclmnTriagesirkulasiResutasiCrt: TcxGridDBColumn;
    cxgrdbclmnTriagesirkulasiEmergencyNadiTerabaLemah: TcxGridDBColumn;
    cxgrdbclmnTriagesirkulasiEmergencyBraadikardia: TcxGridDBColumn;
    cxgrdbclmnTriagesirkulasiEmergencyTachikardia: TcxGridDBColumn;
    cxgrdbclmnTriagesirkulasiEmergencyPucat: TcxGridDBColumn;
    cxgrdbclmnTriagesirkulasiEmergencyAkiralDingin: TcxGridDBColumn;
    cxgrdbclmnTriagesirkulasiEmergencyFrekNadi: TcxGridDBColumn;
    cxgrdbclmnTriagesirkulasiEmergencyCrt: TcxGridDBColumn;
    cxgrdbclmnTriagesirkulasiTandaVitalTekananDarah: TcxGridDBColumn;
    cxgrdbclmnTriagesirkulasiTandaVitalNadi: TcxGridDBColumn;
    cxgrdbclmnTriagesirkulasiUrgentNadiTeraba: TcxGridDBColumn;
    cxgrdbclmnTriagesirkulasiUrgentFrekNadi: TcxGridDBColumn;
    cxgrdbclmnTriagesirkulasiUrgentTekDarahSistole: TcxGridDBColumn;
    cxgrdbclmnTriagesirkulasiUrgentTekDarahDiastole: TcxGridDBColumn;
    cxgrdbclmnTriagesirkulasiUrgentCrt: TcxGridDBColumn;
    cxgrdbclmnTriagesirkulasiNonUrgentNormal: TcxGridDBColumn;
    cxgrdbclmnTriagesirkulasiFalseEmergencyNormal: TcxGridDBColumn;
    cxgrdbclmnTriagekesadaranResutasiGcs: TcxGridDBColumn;
    cxgrdbclmnTriagekesadaranResutasiNeonatus: TcxGridDBColumn;
    cxgrdbclmnTriagekesadaranEmergencyGcs: TcxGridDBColumn;
    cxgrdbclmnTriagekesadaranEmergencyNeonatus: TcxGridDBColumn;
    cxgrdbclmnTriagekesadaranTandaVitalE: TcxGridDBColumn;
    cxgrdbclmnTriagekesadaranTandaVitalV: TcxGridDBColumn;
    cxgrdbclmnTriagekesadaranTandaVitalM: TcxGridDBColumn;
    cxgrdbclmnTriagekesadaranTandaVitalSuhu: TcxGridDBColumn;
    cxgrdbclmnTriagekesadaranUrgentGcs: TcxGridDBColumn;
    cxgrdbclmnTriagekesadaranNonUrgentGcs: TcxGridDBColumn;
    cxgrdbclmnTriagekesadaranNonUrgentLuka: TcxGridDBColumn;
    cxgrdbclmnTriagekesadaranNonUrgentTrauma: TcxGridDBColumn;
    cxgrdbclmnTriagekesadaranNonUrgent36: TcxGridDBColumn;
    cxgrdbclmnTriagekesadaranFalseEmergencyNormal: TcxGridDBColumn;
    cxgrdbclmnTriagekesadaranFalseEmergencyLuka: TcxGridDBColumn;
    cxgrdbclmnTriagekesadaranFalseEmergency36: TcxGridDBColumn;
    cxgrdbclmnTriagepSatu: TcxGridDBColumn;
    cxgrdbclmnTriagepDua: TcxGridDBColumn;
    cxgrdbclmnTriagepTiga: TcxGridDBColumn;
    cxgrdbclmnTriagecreateDate: TcxGridDBColumn;
    cxgrdbclmnTriagecreateUser: TcxGridDBColumn;
    cxgrdbclmnTriagemodifDate: TcxGridDBColumn;
    cxgrdbclmnTriagemodifUser: TcxGridDBColumn;
    btnBaruStatus: TButton;
    lblIdStatus: TLabel;
    cxgrdbtblvwStatus: TcxGridDBTableView;
    cxgrdlvlStatus: TcxGridLevel;
    cxgrdStatus: TcxGrid;
    cxgrdbclmnStatusIdAsesmenAwalStatus: TcxGridDBColumn;
    cxgrdbclmnStatusnoRekamedis: TcxGridDBColumn;
    cxgrdbclmnStatusnoDaftar: TcxGridDBColumn;
    cxgrdbclmnStatusnoDaftarUnit: TcxGridDBColumn;
    cxgrdbclmnStatustglDaftarUnit: TcxGridDBColumn;
    cxgrdbclmnStatuscaraBayar: TcxGridDBColumn;
    cxgrdbclmnStatusSuku: TcxGridDBColumn;
    cxgrdbclmnStatusagama: TcxGridDBColumn;
    cxgrdbclmnStatuspekerjaan: TcxGridDBColumn;
    cxgrdbclmnStatustinggalBersama: TcxGridDBColumn;
    cxgrdbclmnStatusnilaiKepercayaan: TcxGridDBColumn;
    cxgrdbclmnStatusketNilaiKepercayaan: TcxGridDBColumn;
    cxgrdbclmnStatusPedampinganRohani: TcxGridDBColumn;
    cxgrdbclmnStatusketPendampinganRohani: TcxGridDBColumn;
    cxgrdbclmnStatusbahasa: TcxGridDBColumn;
    cxgrdbclmnStatusganguanBicara: TcxGridDBColumn;
    cxgrdbclmnStatusbutuhPenerjemah: TcxGridDBColumn;
    cxgrdbclmnStatushambatanBelajar: TcxGridDBColumn;
    cxgrdbclmnStatuscaraBelajarYangDiSukai: TcxGridDBColumn;
    cxgrdbclmnStatustenang: TcxGridDBColumn;
    cxgrdbclmnStatuscemas: TcxGridDBColumn;
    cxgrdbclmnStatusmarah: TcxGridDBColumn;
    cxgrdbclmnStatustakut: TcxGridDBColumn;
    cxgrdbclmnStatussedih: TcxGridDBColumn;
    cxgrdbclmnStatuslain_lain: TcxGridDBColumn;
    cxgrdbclmnStatusstatusMental: TcxGridDBColumn;
    cxgrdbclmnStatusketStatusMental: TcxGridDBColumn;
    cxgrdbclmnStatuspenggunaanRestarin: TcxGridDBColumn;
    cxgrdbclmnStatusketPenggunaanRestarin: TcxGridDBColumn;
    cxgrdbclmnStatusjenisRestarin: TcxGridDBColumn;
    cxgrdbclmnStatusKetJenisRestarin: TcxGridDBColumn;
    cxgrdbclmnStatuspenilaianStatusFungsionalSATU: TcxGridDBColumn;
    cxgrdbclmnStatuspenilaianStatusFungsionalDUA: TcxGridDBColumn;
    cxgrdbclmnStatuspenilaianStatusFungsionalTIGA: TcxGridDBColumn;
    cxgrdbclmnStatuspenilaianStatusFungsionalEMPAT: TcxGridDBColumn;
    cxgrdbclmnStatuspenilaianStatusFungsionalLIMA: TcxGridDBColumn;
    cxgrdbclmnStatuspenilaianStatusFungsionalENAM: TcxGridDBColumn;
    cxgrdbclmnStatuspenilaianStatusFungsionalTUJUH: TcxGridDBColumn;
    cxgrdbclmnStatuspenilaianStatusFungsionalDELAPAN: TcxGridDBColumn;
    cxgrdbclmnStatuspenilaianStatusFungsionalSEMBILAN: TcxGridDBColumn;
    cxgrdbclmnStatuspenilaianStatusFungsionalSEPULUH: TcxGridDBColumn;
    cxgrdbclmnStatustotalPenilainStatusFungsional: TcxGridDBColumn;
    btnBaruNyeri: TButton;
    cxgrdbtblvwNyeri: TcxGridDBTableView;
    cxgrdlvlNyeri: TcxGridLevel;
    cxgrdNyeri: TcxGrid;
    cxgrdbclmnNyeriidAsesmenAwalNyeri: TcxGridDBColumn;
    cxgrdbclmnNyerinoRekamedis: TcxGridDBColumn;
    cxgrdbclmnNyerinoDaftar: TcxGridDBColumn;
    cxgrdbclmnNyerinoDaftarUnit: TcxGridDBColumn;
    cxgrdbclmnNyeritglDaftarUnit: TcxGridDBColumn;
    cxgrdbclmnNyerimerasakanNyeri: TcxGridDBColumn;
    cxgrdbclmnNyeritidakSakitNoll: TcxGridDBColumn;
    cxgrdbclmnNyerinyeriRinganSATU: TcxGridDBColumn;
    cxgrdbclmnNyerinyeriRinganDUA: TcxGridDBColumn;
    cxgrdbclmnNyerinyeriRinganTIGA: TcxGridDBColumn;
    cxgrdbclmnNyerinyeriSedangEMPAT: TcxGridDBColumn;
    cxgrdbclmnNyerinyeriSedangLIMA: TcxGridDBColumn;
    cxgrdbclmnNyerinyeriSedangENAM: TcxGridDBColumn;
    cxgrdbclmnNyerinyeriBeratTUJUH: TcxGridDBColumn;
    cxgrdbclmnNyerinyeriBeratDELAPAN: TcxGridDBColumn;
    cxgrdbclmnNyerinyeriBeratSEMBILAN: TcxGridDBColumn;
    cxgrdbclmnNyerinyeriSedangSEPULUH: TcxGridDBColumn;
    cxgrdbclmnNyeritidakNyeri: TcxGridDBColumn;
    cxgrdbclmnNyerinyeriRingan: TcxGridDBColumn;
    cxgrdbclmnNyerinyeriSedang: TcxGridDBColumn;
    cxgrdbclmnNyerinyeriBerat: TcxGridDBColumn;
    cxgrdbclmnNyerinyeriSangatBerat: TcxGridDBColumn;
    cxgrdbclmnNyerilokasiNyeri: TcxGridDBColumn;
    cxgrdbclmnNyerisejakKapan: TcxGridDBColumn;
    cxgrdbclmnNyeriterusMenerus: TcxGridDBColumn;
    cxgrdbclmnNyerihilangTimbul: TcxGridDBColumn;
    cxgrdbclmnNyerilainyaSifat: TcxGridDBColumn;
    cxgrdbclmnNyeritumpul: TcxGridDBColumn;
    cxgrdbclmnNyeritajam: TcxGridDBColumn;
    cxgrdbclmnNyeritertekan: TcxGridDBColumn;
    cxgrdbclmnNyerilainyaKualitas: TcxGridDBColumn;
    cxgrdbclmnNyericahaya: TcxGridDBColumn;
    cxgrdbclmnNyerigerakan: TcxGridDBColumn;
    cxgrdbclmnNyeriberbaring: TcxGridDBColumn;
    cxgrdbclmnNyerilainyaPemberat: TcxGridDBColumn;
    cxgrdbclmnNyerimakan: TcxGridDBColumn;
    cxgrdbclmnNyerisunyi: TcxGridDBColumn;
    cxgrdbclmnNyeridingin: TcxGridDBColumn;
    cxgrdbclmnNyeripanas: TcxGridDBColumn;
    cxgrdbclmnNyerilainyaPenringan: TcxGridDBColumn;
    cxgrdbclmnNyerimualMuntah: TcxGridDBColumn;
    cxgrdbclmnNyeritidur: TcxGridDBColumn;
    cxgrdbclmnNyerinafsuMakan: TcxGridDBColumn;
    cxgrdbclmnNyeriaktifitasEfekNyeri: TcxGridDBColumn;
    cxgrdbclmnNyerilainyaEfekNyeri: TcxGridDBColumn;
    cxgrdbclmnNyeriwajah: TcxGridDBColumn;
    cxgrdbclmnNyerikaki: TcxGridDBColumn;
    cxgrdbclmnNyeriaktifitasPeniliaiNyeri: TcxGridDBColumn;
    cxgrdbclmnNyerimenangis: TcxGridDBColumn;
    cxgrdbclmnNyeribersuara: TcxGridDBColumn;
    cxgrdbclmnNyeritotalPenilaianAnak: TcxGridDBColumn;
    cxgrdbclmnNyeririwayatJatuh: TcxGridDBColumn;
    cxgrdbclmnNyeridiagnosa: TcxGridDBColumn;
    cxgrdbclmnNyerialatbantu: TcxGridDBColumn;
    cxgrdbclmnNyeritepasang: TcxGridDBColumn;
    cxgrdbclmnNyerigayaBerjalan: TcxGridDBColumn;
    cxgrdbclmnNyeristatusMental: TcxGridDBColumn;
    cxgrdbclmnNyeritotalSkorPenilaiResiko: TcxGridDBColumn;
    cxgrdbclmnNyeriintervensiResikoJatuhSATU: TcxGridDBColumn;
    cxgrdbclmnNyerinamaPetugasIntervensiResikoJatuhSATU: TcxGridDBColumn;
    cxgrdbclmnNyeriintervensiResikoJatuhDUA: TcxGridDBColumn;
    cxgrdbclmnNyerinamaPetugasintervensiResikoJatuhDUA: TcxGridDBColumn;
    cxgrdbclmnNyeriintervensiResikoJatuhTIGA: TcxGridDBColumn;
    cxgrdbclmnNyerinamaPetugasintervensiResikoJatuhTIGA: TcxGridDBColumn;
    cxlblIdNyeri: TcxLabel;
    btnBaruHumpty: TButton;
    lblIDHUMPTY: TLabel;
    cbbwajahnyeri: TComboBox;
    cbbkakinyeri: TComboBox;
    cbbaktifitasnyeri: TComboBox;
    cbbmenangisnyeri: TComboBox;
    cbbbersuaranyeri: TComboBox;
    edtSpO2: TEdit;
    Label5: TLabel;
    CheckBox1: TCheckBox;
    Memo1: TMemo;
    btnTAMBAHDISCHARGE: TButton;
    btnTAMBAHFOLLOW: TButton;
    lblInterpretasiHasil: TLabel;
    lblPasienMerasaNyeri: TLabel;
    lblHasilPenilaianAnak: TLabel;
    lblHasilResikoJatuh: TLabel;
    lblHasilPenilaiResiko: TLabel;
    cxgrdbtblvwHumpty: TcxGridDBTableView;
    cxgrdlvlHumpty: TcxGridLevel;
    cxgrdHumpty: TcxGrid;
    cxgrdbclmnHumptyidAsesmenAwalHumpty: TcxGridDBColumn;
    cxgrdbclmnHumptynoRekamedis: TcxGridDBColumn;
    cxgrdbclmnHumptynoDaftar: TcxGridDBColumn;
    cxgrdbclmnHumptynoDaftarUnit: TcxGridDBColumn;
    cxgrdbclmnHumptytglDaftarUnit: TcxGridDBColumn;
    cxgrdbclmnHumptyskorUsia: TcxGridDBColumn;
    cxgrdbclmnHumptyskorJenisKelamin: TcxGridDBColumn;
    cxgrdbclmnHumptyskorDiagnosa: TcxGridDBColumn;
    cxgrdbclmnHumptyskorGanguanKognitif: TcxGridDBColumn;
    cxgrdbclmnHumptyskorGanguanLingkungan: TcxGridDBColumn;
    cxgrdbclmnHumptyskorResponTerhadap: TcxGridDBColumn;
    cxgrdbclmnHumptyskorMedikamentos: TcxGridDBColumn;
    cxgrdbclmnHumptytotalSkorPenilaianResikoJatuh: TcxGridDBColumn;
    cxgrdbclmnHumptyberatBadan: TcxGridDBColumn;
    cxgrdbclmnHumptytinggiBadah: TcxGridDBColumn;
    cxgrdbclmnHumptyimt: TcxGridDBColumn;
    cxgrdbclmnHumptypasienDewasaSATU: TcxGridDBColumn;
    cxgrdbclmnHumptypasienDewasaDUA: TcxGridDBColumn;
    cxgrdbclmnHumptypasienDewasaTIGA: TcxGridDBColumn;
    cxgrdbclmnHumptytotalPasienDewasa: TcxGridDBColumn;
    cxgrdbclmnHumptypasienObstetriSATU: TcxGridDBColumn;
    cxgrdbclmnHumptypasienObstetriDUA: TcxGridDBColumn;
    cxgrdbclmnHumptypasienObstetriTIGA: TcxGridDBColumn;
    cxgrdbclmnHumptypasienObstetriEMPAT: TcxGridDBColumn;
    cxgrdbclmnHumptytotalPasienObstetri: TcxGridDBColumn;
    cxgrdbclmnHumptypasienAnakSATU: TcxGridDBColumn;
    cxgrdbclmnHumptypasienAnakDUA: TcxGridDBColumn;
    cxgrdbclmnHumptypasienAnakTIGA: TcxGridDBColumn;
    cxgrdbclmnHumptypasienAnakEMPAT: TcxGridDBColumn;
    cxgrdbclmnHumptytotalPasienAnak: TcxGridDBColumn;
    cxgrdbclmnHumptycreateDate: TcxGridDBColumn;
    cxgrdbclmnHumptycreateUser: TcxGridDBColumn;
    cxgrdbclmnHumptymodifDate: TcxGridDBColumn;
    cxgrdbclmnHumptymodifUser: TcxGridDBColumn;
    procedure pnlKeluarClick(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure btnSIMPANTRIAGEClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnUBAHTRIAGEClick(Sender: TObject);
    procedure chkNontraumaClick(Sender: TObject);
    procedure chkObstetriClick(Sender: TObject);
    procedure chkTraumaClick(Sender: TObject);
    procedure chkBERJALANClick(Sender: TObject);
    procedure chkKURSIRODAClick(Sender: TObject);
    procedure chkBRANCARClick(Sender: TObject);
    procedure chkcomposClick(Sender: TObject);
    procedure chkapatisClick(Sender: TObject);
    procedure chksomnolensClick(Sender: TObject);
    procedure chksoporClick(Sender: TObject);
    procedure chkcomaClick(Sender: TObject);
    procedure btnBaruStatusClick(Sender: TObject);
    procedure btnUBAHSTATUSClick(Sender: TObject);
    procedure btnSIMPANSTATUSClick(Sender: TObject);
    procedure cbbstatus1Change(Sender: TObject);
    procedure cbbstatus2Change(Sender: TObject);
    procedure cbbstatus3Change(Sender: TObject);
    procedure cbbstatus4Change(Sender: TObject);
    procedure cbbstatus5Change(Sender: TObject);
    procedure cbbstatus6Change(Sender: TObject);
    procedure cbbstatus7Change(Sender: TObject);
    procedure cbbstatus8Change(Sender: TObject);
    procedure cbbstatus9Change(Sender: TObject);
    procedure cbbstatus10Change(Sender: TObject);
    procedure edtTOTALSKORClick(Sender: TObject);
    procedure chkTIDAKADAClick(Sender: TObject);
    procedure chkADAClick(Sender: TObject);
    procedure chkYA1Click(Sender: TObject);
    procedure chkTIDAK1Click(Sender: TObject);
    procedure chkYA2Click(Sender: TObject);
    procedure chkTIDAK2Click(Sender: TObject);
    procedure chkYA3Click(Sender: TObject);
    procedure CHKtidak3Click(Sender: TObject);
    procedure chkMENDENGARClick(Sender: TObject);
    procedure chkMENULISClick(Sender: TObject);
    procedure chkMEMBACAClick(Sender: TObject);
    procedure chkTENANGClick(Sender: TObject);
    procedure chkCEMASClick(Sender: TObject);
    procedure chkMARAHClick(Sender: TObject);
    procedure chkTAKUTClick(Sender: TObject);
    procedure chkSEDIHClick(Sender: TObject);
    procedure chkLAINClick(Sender: TObject);
    procedure chkTIDAK4Click(Sender: TObject);
    procedure chkYAKARENAClick(Sender: TObject);
    procedure chkOBATClick(Sender: TObject);
    procedure chkALATClick(Sender: TObject);
    procedure chkLAINNYA1Click(Sender: TObject);
    procedure btnBaruNyeriClick(Sender: TObject);
    procedure btnSIMPANNYERIClick(Sender: TObject);
    procedure btnUBAHNYERIClick(Sender: TObject);
    procedure chkYaNyeriClick(Sender: TObject);
    procedure btnBaruHumptyClick(Sender: TObject);
    procedure chkTIDAKNYERIClick(Sender: TObject);
    procedure rb0Click(Sender: TObject);
    procedure rb1Click(Sender: TObject);
    procedure rb2Click(Sender: TObject);
    procedure rb3Click(Sender: TObject);
    procedure rb4Click(Sender: TObject);
    procedure rb5Click(Sender: TObject);
    procedure rb6Click(Sender: TObject);
    procedure rb7Click(Sender: TObject);
    procedure rb8Click(Sender: TObject);
    procedure rb9Click(Sender: TObject);
    procedure rb10Click(Sender: TObject);
    procedure edtTOTALSKORChange(Sender: TObject);
    procedure chkterusClick(Sender: TObject);
    procedure chkHILANGClick(Sender: TObject);
    procedure chklainsifatClick(Sender: TObject);
    procedure chktumpulClick(Sender: TObject);
    procedure chktajamClick(Sender: TObject);
    procedure chktertekanClick(Sender: TObject);
    procedure chkterbakarClick(Sender: TObject);
    procedure chklainkualitasClick(Sender: TObject);
    procedure chkcahayaClick(Sender: TObject);
    procedure chkgerakanClick(Sender: TObject);
    procedure chkberbaringClick(Sender: TObject);
    procedure chklainpemberatClick(Sender: TObject);
    procedure chkmakanClick(Sender: TObject);
    procedure chksunyiClick(Sender: TObject);
    procedure chkdinginClick(Sender: TObject);
    procedure chkpanasClick(Sender: TObject);
    procedure chklainperinganClick(Sender: TObject);
    procedure chkmualClick(Sender: TObject);
    procedure chktidurClick(Sender: TObject);
    procedure chknafsumakanClick(Sender: TObject);
    procedure chkaktifitasClick(Sender: TObject);
    procedure chklainefekClick(Sender: TObject);
    procedure cbbwajahnyeriChange(Sender: TObject);
    procedure cbbkakinyeriChange(Sender: TObject);
    procedure cbbaktifitasnyeriChange(Sender: TObject);
    procedure cbbmenangisnyeriChange(Sender: TObject);
    procedure cbbbersuaranyeriChange(Sender: TObject);
    procedure edttotalnyeriClick(Sender: TObject);
    procedure edttotalnyeriChange(Sender: TObject);
    procedure cbbriwayatjatuhChange(Sender: TObject);
    procedure cbbdiagnosisChange(Sender: TObject);
    procedure cbbalatbantuChange(Sender: TObject);
    procedure cbbterpasanginfusChange(Sender: TObject);
    procedure cbbgayaberjalanChange(Sender: TObject);
    procedure cbbstatusmentalChange(Sender: TObject);
    procedure edttotalskorrisikoClick(Sender: TObject);
    procedure cbbno1Change(Sender: TObject);
    procedure cbbno2Change(Sender: TObject);
    procedure cbbno3Change(Sender: TObject);
    procedure cbbhumpty1Change(Sender: TObject);
    procedure cbbhumpty2Change(Sender: TObject);
    procedure cbbhumpty3Change(Sender: TObject);
    procedure cbbhumpty4Change(Sender: TObject);
    procedure cbbhumpty5Change(Sender: TObject);
    procedure cbbhumpty6Change(Sender: TObject);
    procedure cbbhumpty7Change(Sender: TObject);
    procedure edtskorhumptyClick(Sender: TObject);
    procedure cbbImtChange(Sender: TObject);
    procedure cbbAdaPenurunanBBChange(Sender: TObject);
    procedure cbbApaAsupanChange(Sender: TObject);
    procedure edttotalskorhumpty1Click(Sender: TObject);
    procedure edtIMTClick(Sender: TObject);
    procedure edtotalskorobsClick(Sender: TObject);
    procedure edttotalskoranakClick(Sender: TObject);
    procedure btnSIMPANHUMPTYClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAsesmenAwalIgd: TFAsesmenAwalIgd;

implementation

{$R *.dfm}
uses UAsemenAwalIgdTriage,UDataSimrs1,UAsesmenAwalIgdStatus,UAsemenAwalIgdNyeri,UAsemenAwalIgdHumpty;

procedure TFAsesmenAwalIgd.pnlKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFAsesmenAwalIgd.btnBaruClick(Sender: TObject);
begin
  /// panggil dari unit asesmen awal igd triage
  baruTriage; tampilTriage; btnSIMPANTRIAGE.Caption := 'SIMPAN';
end;

procedure TFAsesmenAwalIgd.btnSIMPANTRIAGEClick(Sender: TObject);
begin
  /// panggil dari procedure unit asesmen awal igd triage
  ProsesSimpanTriage;
end;

procedure TFAsesmenAwalIgd.FormShow(Sender: TObject);
begin
  /// panggil procedure 
  baruTriage;
end;

procedure TFAsesmenAwalIgd.btnUBAHTRIAGEClick(Sender: TObject);
begin
  /// panggil procedure ubah triage
  tampilUbahTriage;
end;

procedure TFAsesmenAwalIgd.chkNontraumaClick(Sender: TObject);
begin
JenisKasusChekNontrauma;
end;

procedure TFAsesmenAwalIgd.chkObstetriClick(Sender: TObject);
begin
JenisKasusChekObsterti;
end;

procedure TFAsesmenAwalIgd.chkTraumaClick(Sender: TObject);
begin
JenisKasusChektrauma;
end;

procedure TFAsesmenAwalIgd.chkBERJALANClick(Sender: TObject);
begin
CaraDatangBerjalan;
end;

procedure TFAsesmenAwalIgd.chkKURSIRODAClick(Sender: TObject);
begin
CaraDatangKursiRoda;
end;

procedure TFAsesmenAwalIgd.chkBRANCARClick(Sender: TObject);
begin
CaraDatangBrancar;
end;

procedure TFAsesmenAwalIgd.chkcomposClick(Sender: TObject);
begin
kesadaranCompos;
end;

procedure TFAsesmenAwalIgd.chkapatisClick(Sender: TObject);
begin
kesadarankapasitas;
end;

procedure TFAsesmenAwalIgd.chksomnolensClick(Sender: TObject);
begin
kesadaranSomnolens;
end;

procedure TFAsesmenAwalIgd.chksoporClick(Sender: TObject);
begin
kesadaranSopor;
end;

procedure TFAsesmenAwalIgd.chkcomaClick(Sender: TObject);
begin
kesadaranComa;
end;

procedure TFAsesmenAwalIgd.btnBaruStatusClick(Sender: TObject);
begin
 /// baru status
 baruStatus;       
end;

procedure TFAsesmenAwalIgd.btnUBAHSTATUSClick(Sender: TObject);
begin
tampilUbahStatus;
end;

procedure TFAsesmenAwalIgd.btnSIMPANSTATUSClick(Sender: TObject);
begin
ProsesSimpanStatus; tampilStatus; btnSIMPANSTATUS.Caption := 'SIMPAN';
end;

procedure TFAsesmenAwalIgd.cbbstatus1Change(Sender: TObject);
begin
  nilaiSatu;
end;

procedure TFAsesmenAwalIgd.cbbstatus2Change(Sender: TObject);
begin
nilaiDua;
end;

procedure TFAsesmenAwalIgd.cbbstatus3Change(Sender: TObject);
begin
nilaiTiga;
end;

procedure TFAsesmenAwalIgd.cbbstatus4Change(Sender: TObject);
begin
nilaiEmpat;
end;

procedure TFAsesmenAwalIgd.cbbstatus5Change(Sender: TObject);
begin
nilaiLima;
end;

procedure TFAsesmenAwalIgd.cbbstatus6Change(Sender: TObject);
begin
nilaiEnam;
end;

procedure TFAsesmenAwalIgd.cbbstatus7Change(Sender: TObject);
begin
nilaiTujuh;
end;

procedure TFAsesmenAwalIgd.cbbstatus8Change(Sender: TObject);
begin
nilaiDelapan;
end;

procedure TFAsesmenAwalIgd.cbbstatus9Change(Sender: TObject);
begin
nilaiSembilan;
end;

procedure TFAsesmenAwalIgd.cbbstatus10Change(Sender: TObject);
begin
nilaiSepuluh;
end;

procedure TFAsesmenAwalIgd.edtTOTALSKORClick(Sender: TObject);
begin
totalNilaiStatus;
end;

procedure TFAsesmenAwalIgd.chkTIDAKADAClick(Sender: TObject);
begin
Y_N_NilaiKepercaan;
end;

procedure TFAsesmenAwalIgd.chkADAClick(Sender: TObject);
begin
Y_N_NilaiKepercaan;
end;

procedure TFAsesmenAwalIgd.chkYA1Click(Sender: TObject);
begin
bahasa;
end;

procedure TFAsesmenAwalIgd.chkTIDAK1Click(Sender: TObject);
begin
bahasa;
end;

procedure TFAsesmenAwalIgd.chkYA2Click(Sender: TObject);
begin
bahasa;
end;

procedure TFAsesmenAwalIgd.chkTIDAK2Click(Sender: TObject);
begin
bahasa;
end;

procedure TFAsesmenAwalIgd.chkYA3Click(Sender: TObject);
begin
bahasa;
end;

procedure TFAsesmenAwalIgd.CHKtidak3Click(Sender: TObject);
begin
bahasa;
end;

procedure TFAsesmenAwalIgd.chkMENDENGARClick(Sender: TObject);
begin
///mendengar;
end;

procedure TFAsesmenAwalIgd.chkMENULISClick(Sender: TObject);
begin
///menulis;
end;

procedure TFAsesmenAwalIgd.chkMEMBACAClick(Sender: TObject);
begin
/// membaca;
end;

procedure TFAsesmenAwalIgd.chkTENANGClick(Sender: TObject);
begin
  tenang
end;

procedure TFAsesmenAwalIgd.chkCEMASClick(Sender: TObject);
begin
cemas;
end;

procedure TFAsesmenAwalIgd.chkMARAHClick(Sender: TObject);
begin
marah
end;

procedure TFAsesmenAwalIgd.chkTAKUTClick(Sender: TObject);
begin
takut;
end;

procedure TFAsesmenAwalIgd.chkSEDIHClick(Sender: TObject);
begin
sedih;
end;

procedure TFAsesmenAwalIgd.chkLAINClick(Sender: TObject);
begin
lainlain;
end;

procedure TFAsesmenAwalIgd.chkTIDAK4Click(Sender: TObject);
begin
restarin;
end;

procedure TFAsesmenAwalIgd.chkYAKARENAClick(Sender: TObject);
begin
restarin;
end;

procedure TFAsesmenAwalIgd.chkOBATClick(Sender: TObject);
begin
obat
end;

procedure TFAsesmenAwalIgd.chkALATClick(Sender: TObject);
begin
alatalat;
end;

procedure TFAsesmenAwalIgd.chkLAINNYA1Click(Sender: TObject);
begin
lainnya;
end;

procedure TFAsesmenAwalIgd.btnBaruNyeriClick(Sender: TObject);
begin
baruNyeri;  tampilNyeri; btnSIMPANNYERI.Caption := 'SIMPAN';
end;

procedure TFAsesmenAwalIgd.btnSIMPANNYERIClick(Sender: TObject);
begin
prosesSimpanNyeri;
end;

procedure TFAsesmenAwalIgd.btnUBAHNYERIClick(Sender: TObject);
begin
tampilUbahNyeri;
end;

procedure TFAsesmenAwalIgd.chkYaNyeriClick(Sender: TObject);
begin
penilaiNyeri;
end;

procedure TFAsesmenAwalIgd.btnBaruHumptyClick(Sender: TObject);
begin
baruHumpty;
end;

procedure TFAsesmenAwalIgd.chkTIDAKNYERIClick(Sender: TObject);
begin
penilaiNyeri;
end;

procedure TFAsesmenAwalIgd.rb0Click(Sender: TObject);
begin
if rb0.Checked = True then
begin
  lblPasienMerasaNyeri.Caption := '0';
  pilihanNyeri;
end;
end;

procedure TFAsesmenAwalIgd.rb1Click(Sender: TObject);
begin
if rb1.Checked = True then
begin
  lblPasienMerasaNyeri.Caption := '1';
  pilihanNyeri;
end;
end;

procedure TFAsesmenAwalIgd.rb2Click(Sender: TObject);
begin
if rb2.Checked = True then
begin
   lblPasienMerasaNyeri.Caption := '2';
   pilihanNyeri;
end;
end;

procedure TFAsesmenAwalIgd.rb3Click(Sender: TObject);
begin
if rb3.Checked = True then
begin
   lblPasienMerasaNyeri.Caption := '3';
   pilihanNyeri;
end;
end;

procedure TFAsesmenAwalIgd.rb4Click(Sender: TObject);
begin
if rb4.Checked = True then
begin
   lblPasienMerasaNyeri.Caption := '4';
   pilihanNyeri;
end;
end;

procedure TFAsesmenAwalIgd.rb5Click(Sender: TObject);
begin
if rb5.Checked = True then
begin
   lblPasienMerasaNyeri.Caption := '5';
   pilihanNyeri;
end;
end;

procedure TFAsesmenAwalIgd.rb6Click(Sender: TObject);
begin
if rb6.Checked = True then
begin
   lblPasienMerasaNyeri.Caption := '6';
   pilihanNyeri;
end;
end;

procedure TFAsesmenAwalIgd.rb7Click(Sender: TObject);
begin
if rb7.Checked = True then
begin
   lblPasienMerasaNyeri.Caption := '7';
   pilihanNyeri;
end;
end;

procedure TFAsesmenAwalIgd.rb8Click(Sender: TObject);
begin
if rb8.Checked = True then
begin
   lblPasienMerasaNyeri.Caption := '8';
   pilihanNyeri;
end;
end;

procedure TFAsesmenAwalIgd.rb9Click(Sender: TObject);
begin
if rb9.Checked = True then
begin
   lblPasienMerasaNyeri.Caption := '9';
   pilihanNyeri;
end;
end;

procedure TFAsesmenAwalIgd.rb10Click(Sender: TObject);
begin
if rb10.Checked = True then
begin
   lblPasienMerasaNyeri.Caption := '10';
   pilihanNyeri;
end;
end;

procedure TFAsesmenAwalIgd.edtTOTALSKORChange(Sender: TObject);
begin
totalNilaiStatus;
end;

procedure TFAsesmenAwalIgd.chkterusClick(Sender: TObject);
begin
Nyeriterus;
end;

procedure TFAsesmenAwalIgd.chkHILANGClick(Sender: TObject);
begin
NyeriHilang;
end;

procedure TFAsesmenAwalIgd.chklainsifatClick(Sender: TObject);
begin
NyerilainyaSifat;
end;

procedure TFAsesmenAwalIgd.chktumpulClick(Sender: TObject);
begin
tumpul;
end;

procedure TFAsesmenAwalIgd.chktajamClick(Sender: TObject);
begin
tajam;
end;

procedure TFAsesmenAwalIgd.chktertekanClick(Sender: TObject);
begin
tertekan;
end;

procedure TFAsesmenAwalIgd.chkterbakarClick(Sender: TObject);
begin
terbakar;
end;

procedure TFAsesmenAwalIgd.chklainkualitasClick(Sender: TObject);
begin
lainyakualitas;
end;

procedure TFAsesmenAwalIgd.chkcahayaClick(Sender: TObject);
begin
cahaya;
end;

procedure TFAsesmenAwalIgd.chkgerakanClick(Sender: TObject);
begin
gerakan;
end;

procedure TFAsesmenAwalIgd.chkberbaringClick(Sender: TObject);
begin
berbaring;
end;

procedure TFAsesmenAwalIgd.chklainpemberatClick(Sender: TObject);
begin
lainyaPemberat;
end;

procedure TFAsesmenAwalIgd.chkmakanClick(Sender: TObject);
begin
makan;
end;

procedure TFAsesmenAwalIgd.chksunyiClick(Sender: TObject);
begin
sunyi;
end;

procedure TFAsesmenAwalIgd.chkdinginClick(Sender: TObject);
begin
dingin;
end;

procedure TFAsesmenAwalIgd.chkpanasClick(Sender: TObject);
begin
panas;
end;

procedure TFAsesmenAwalIgd.chklainperinganClick(Sender: TObject);
begin
lainyaPeringan;
end;

procedure TFAsesmenAwalIgd.chkmualClick(Sender: TObject);
begin
maulMuntah;
end;

procedure TFAsesmenAwalIgd.chktidurClick(Sender: TObject);
begin
tidur;
end;

procedure TFAsesmenAwalIgd.chknafsumakanClick(Sender: TObject);
begin
nafsuMakan;
end;

procedure TFAsesmenAwalIgd.chkaktifitasClick(Sender: TObject);
begin
akttifitas;
end;

procedure TFAsesmenAwalIgd.chklainefekClick(Sender: TObject);
begin
LainyaEfek;
end;

procedure TFAsesmenAwalIgd.cbbwajahnyeriChange(Sender: TObject);
begin
wajah;
end;

procedure TFAsesmenAwalIgd.cbbkakinyeriChange(Sender: TObject);
begin
Kaki;
end;

procedure TFAsesmenAwalIgd.cbbaktifitasnyeriChange(Sender: TObject);
begin
Aktifitas;
end;

procedure TFAsesmenAwalIgd.cbbmenangisnyeriChange(Sender: TObject);
begin
menangis;
end;

procedure TFAsesmenAwalIgd.cbbbersuaranyeriChange(Sender: TObject);
begin
Bersuara;
end;

procedure TFAsesmenAwalIgd.edttotalnyeriClick(Sender: TObject);
begin
totalNilaiNyeriAnak;
end;

procedure TFAsesmenAwalIgd.edttotalnyeriChange(Sender: TObject);
begin
totalNilaiNyeriAnak;
end;

procedure TFAsesmenAwalIgd.cbbriwayatjatuhChange(Sender: TObject);
begin
riwayatJatuh;
end;

procedure TFAsesmenAwalIgd.cbbdiagnosisChange(Sender: TObject);
begin
Diagnosis;
end;

procedure TFAsesmenAwalIgd.cbbalatbantuChange(Sender: TObject);
begin
alatBantu;
end;

procedure TFAsesmenAwalIgd.cbbterpasanginfusChange(Sender: TObject);
begin
TerpasangInfus;
end;

procedure TFAsesmenAwalIgd.cbbgayaberjalanChange(Sender: TObject);
begin
GayaBerjalan;
end;

procedure TFAsesmenAwalIgd.cbbstatusmentalChange(Sender: TObject);
begin
StatusMental;
end;

procedure TFAsesmenAwalIgd.edttotalskorrisikoClick(Sender: TObject);
begin
totalNilaiResikoJatuh;
end;

procedure TFAsesmenAwalIgd.cbbno1Change(Sender: TObject);
begin
cbNo1;
end;

procedure TFAsesmenAwalIgd.cbbno2Change(Sender: TObject);
begin
cbNo2;
end;

procedure TFAsesmenAwalIgd.cbbno3Change(Sender: TObject);
begin
cbNo3;
end;

procedure TFAsesmenAwalIgd.cbbhumpty1Change(Sender: TObject);
begin
Usia;
end;

procedure TFAsesmenAwalIgd.cbbhumpty2Change(Sender: TObject);
begin
JenisKelamin;
end;

procedure TFAsesmenAwalIgd.cbbhumpty3Change(Sender: TObject);
begin
Diagnosis;
end;

procedure TFAsesmenAwalIgd.cbbhumpty4Change(Sender: TObject);
begin
GanguanKongnitif;
end;

procedure TFAsesmenAwalIgd.cbbhumpty5Change(Sender: TObject);
begin
GanguanLingkungan;
end;

procedure TFAsesmenAwalIgd.cbbhumpty6Change(Sender: TObject);
begin
ResponTerhadapOperasi;
end;

procedure TFAsesmenAwalIgd.cbbhumpty7Change(Sender: TObject);
begin
Medikamentosa;
end;

procedure TFAsesmenAwalIgd.edtskorhumptyClick(Sender: TObject);
begin
totalSkorResiko;
end;

procedure TFAsesmenAwalIgd.cbbImtChange(Sender: TObject);
begin
imtPxDewasa;
end;

procedure TFAsesmenAwalIgd.cbbAdaPenurunanBBChange(Sender: TObject);
begin
adaPenuruganPxDewasa;
end;

procedure TFAsesmenAwalIgd.cbbApaAsupanChange(Sender: TObject);
begin
adaAsupanPxDewasa;
end;

procedure TFAsesmenAwalIgd.edttotalskorhumpty1Click(Sender: TObject);
begin
totalPxHumpty;
end;

procedure TFAsesmenAwalIgd.edtIMTClick(Sender: TObject);
begin
hitungStatusNutrisi;
end;

procedure TFAsesmenAwalIgd.edtotalskorobsClick(Sender: TObject);
begin
totalSkorObs;
end;

procedure TFAsesmenAwalIgd.edttotalskoranakClick(Sender: TObject);
begin
totalSkorAnak;
end;

procedure TFAsesmenAwalIgd.btnSIMPANHUMPTYClick(Sender: TObject);
begin
prosesSimpanHumpty;
end;

end.
