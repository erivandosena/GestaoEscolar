unit UnRelBoletim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, Jpeg, RxGIF, IBCustomDataSet,
  IBQuery, qrRRect, Barcode;

type
  TFrmRelBoletim = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRSubDetail1: TQRSubDetail;
    IBQuery_NotasBoletim: TIBQuery;
    DS_NotasBoletim: TDataSource;
    SummaryBand1: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel_AL: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText10: TQRDBText;
    QRRoundRect1: TQRRoundRect;
    QRSysData2: TQRSysData;
    QRShape46: TQRShape;
    QRShape45: TQRShape;
    QRShape30: TQRShape;
    QRLabel31: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel28: TQRLabel;
    QRDBText28: TQRDBText;
    Grafico: TQRImage;
    QRRoundRect4: TQRRoundRect;
    QRShape3: TQRRoundRect;
    QRShape1: TQRRoundRect;
    QRShape2: TQRRoundRect;
    QRShape42: TQRRoundRect;
    QRRoundRect5: TQRRoundRect;
    QRLabel3: TQRLabel;
    QRRoundRect6: TQRRoundRect;
    QRRoundRect7: TQRRoundRect;
    QRRoundRect8: TQRRoundRect;
    QRLabel9: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel32: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel33: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel34: TQRLabel;
    QRDBText29: TQRDBText;
    QRLabel35: TQRLabel;
    QRDBText31: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRDBText33: TQRDBText;
    QRRoundRect9: TQRRoundRect;
    QRLabel38: TQRLabel;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRLabel39: TQRLabel;
    QRShape5: TQRShape;
    QRShape8: TQRShape;
    QRShape6: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape14: TQRShape;
    QRShape16: TQRShape;
    QRShapeGray: TQRShape;
    QRDBT_Disciplina: TQRDBText;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRLabel_Etapa1: TQRLabel;
    QRLabel_Etapa2: TQRLabel;
    QRDBT_M1Etp: TQRDBText;
    QRDBT_R1Etp: TQRDBText;
    QRDBT_M2Etp: TQRDBText;
    QRDBT_R2Etp: TQRDBText;
    QRDBT_R4Etp: TQRDBText;
    QRDBT_M4Etp: TQRDBText;
    QRDBT_R3Etp: TQRDBText;
    QRDBT_M3Etp: TQRDBText;
    QRDBT_ResultadoFinal: TQRDBText;
    QRDBT_MFinal: TQRDBText;
    QRDBT_RFinal: TQRDBText;
    QRDBT_Provao: TQRDBText;
    QRMemo_Mes: TQRMemo;
    QRM_M1Etp: TQRMemo;
    QRM_R1Etp: TQRMemo;
    QRM_M2Etp: TQRMemo;
    QRM_R2Etp: TQRMemo;
    QRM_M3Etp: TQRMemo;
    QRM_R3Etp: TQRMemo;
    QRM_M4Etp: TQRMemo;
    QRM_R4Etp: TQRMemo;
    QRM_Provao: TQRMemo;
    QRM_RFinal: TQRMemo;
    QRM_MFinal: TQRMemo;
    QRM_ResultadoFinal: TQRMemo;
    QRShape35: TQRShape;
    QRM_Mes2: TQRMemo;
    QRM_Mes1: TQRMemo;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRDBT_Mes1: TQRDBText;
    QRDBT_1_AV3: TQRDBText;
    IBQuery_NotasBoletimCOD_NOTA: TIntegerField;
    IBQuery_NotasBoletimCOD_BOLE: TIntegerField;
    IBQuery_NotasBoletimMATRICULA: TIBStringField;
    IBQuery_NotasBoletimANO_LETIVO: TIBStringField;
    IBQuery_NotasBoletimDISCIPLINA: TIBStringField;
    IBQuery_NotasBoletimETAPA_1_MAR: TIBStringField;
    IBQuery_NotasBoletimETAPA_1_ABR: TIBStringField;
    IBQuery_NotasBoletimETAPA_1_M: TIBStringField;
    IBQuery_NotasBoletimETAPA_1_R: TIBStringField;
    IBQuery_NotasBoletimETAPA_2_MAI: TIBStringField;
    IBQuery_NotasBoletimETAPA_2_JUN: TIBStringField;
    IBQuery_NotasBoletimETAPA_2_M: TIBStringField;
    IBQuery_NotasBoletimETAPA_2_R: TIBStringField;
    IBQuery_NotasBoletimETAPA_3_AGO: TIBStringField;
    IBQuery_NotasBoletimETAPA_3_SET: TIBStringField;
    IBQuery_NotasBoletimETAPA_3_M: TIBStringField;
    IBQuery_NotasBoletimETAPA_3_R: TIBStringField;
    IBQuery_NotasBoletimETAPA_4_OUT: TIBStringField;
    IBQuery_NotasBoletimETAPA_4_NOV: TIBStringField;
    IBQuery_NotasBoletimETAPA_4_M: TIBStringField;
    IBQuery_NotasBoletimETAPA_4_R: TIBStringField;
    IBQuery_NotasBoletimPROVAO: TIBStringField;
    IBQuery_NotasBoletimPROVAO_R: TIBStringField;
    IBQuery_NotasBoletimMEDIA_FINAL: TIBStringField;
    IBQuery_NotasBoletimFALTAS: TIntegerField;
    IBQuery_NotasBoletimPONTOS: TIBStringField;
    IBQuery_NotasBoletimRESULTADO_FINAL: TIBStringField;
    IBQuery_Mensagem: TIBQuery;
    QRLabel_Disciplina: TQRMemo;
    Barcode1: TBarcode;
    QRShape39: TQRShape;
    QRShape4: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape40: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape7: TQRShape;
    IBQuery_NotasBoletimETAPA_1_AV3: TIBStringField;
    IBQuery_NotasBoletimETAPA_2_AV3: TIBStringField;
    IBQuery_NotasBoletimETAPA_3_AV3: TIBStringField;
    IBQuery_NotasBoletimETAPA_4_AV3: TIBStringField;
    QRDBT_Mes2: TQRDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelBoletim: TFrmRelBoletim;
  Valor: String;

implementation

uses UnDm, UnImpressaoBoletim, UnPrincipal, UnBoletim;

{$R *.dfm}

procedure TFrmRelBoletim.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
// INICIA SELEÇÃO
IBQuery_NotasBoletim.Close;
IBQuery_NotasBoletim.SQL.Clear;
IBQuery_NotasBoletim.SQL.Add('select * from NOTAS ');
IBQuery_NotasBoletim.SQL.Add('where (MATRICULA =:MATRICULA and ANO_LETIVO =:ALetivo) ');
IBQuery_NotasBoletim.ParamByName('MATRICULA').AsString;
IBQuery_NotasBoletim.ParamByName('ALetivo').AsString:= AnoLetivo;
IBQuery_NotasBoletim.SQL.Add('order by COD_NOTA, COD_BOLE');
IBQuery_NotasBoletim.Prepare;
IBQuery_NotasBoletim.Open;

if (FrmImpressaoBoletim.IBQuery_BolImpressao.FieldByName('CURSO').AsString = 'EDUCAÇÃO INFANTIL') then
begin
if Etapa = '1ª Etapa' then
begin
//----------MÊS 1---------------------------------------------------------------
QRM_Mes1.Enabled:= False;
QRDBT_Mes1.Enabled:= False;
//----------MÊS 2---------------------------------------------------------------
QRM_Mes2.Enabled:= False;
QRDBT_Mes2.Enabled:= False;
//----------MÉDIA 1ª ETAPA------------------------------------------------------
QRM_M1Etp.Lines.Clear;
QRM_M1Etp.Lines.Add('Média');
QRM_M1Etp.Lines.Add('1ª Etapa');
QRM_M1Etp.Left:= 269;
QRDBT_M1Etp.Left:= 269;
QRM_M1Etp.Width:= 68;
QRDBT_M1Etp.Width:= 68;
//----------REC 1ª ETAPA--------------------------------------------------------
QRM_R1Etp.Enabled:= False;
QRDBT_R1Etp.Enabled:= False;
//----------MÉDIA 2ª ETAPA------------------------------------------------------
QRM_M2Etp.Lines.Clear;
QRM_M2Etp.Lines.Add('Média');
QRM_M2Etp.Lines.Add('2ª Etapa');
QRM_M2Etp.Left:= 339;
QRDBT_M2Etp.Left:= 339;
QRM_M2Etp.Width:= 68;
QRDBT_M2Etp.Width:= 68;
//----------REC 2ª ETAPA--------------------------------------------------------
QRM_R2Etp.Enabled:= False;
QRDBT_R2Etp.Enabled:= False;
//----------MÉDIA 3ª ETAPA------------------------------------------------------
QRM_M3Etp.Lines.Clear;
QRM_M3Etp.Lines.Add('Média');
QRM_M3Etp.Lines.Add('3ª Etapa');
QRM_M3Etp.Left:= 409;
QRDBT_M3Etp.Left:= 409;
QRM_M3Etp.Width:= 68;
QRDBT_M3Etp.Width:= 68;
//----------REC 3ª ETAPA--------------------------------------------------------
QRM_R3Etp.Enabled:= False;
QRDBT_R3Etp.Enabled:= False;
//----------MÉDIA 4ª ETAPA------------------------------------------------------
QRM_M4Etp.Lines.Clear;
QRM_M4Etp.Lines.Add('Média');
QRM_M4Etp.Lines.Add('4ª Etapa');
QRM_M4Etp.Left:= 479;
QRDBT_M4Etp.Left:= 479;
QRM_M4Etp.Width:= 68;
QRDBT_M4Etp.Width:= 68;
//----------REC 4ª ETAPA--------------------------------------------------------
QRM_R4Etp.Enabled:= False;
QRDBT_R4Etp.Enabled:= False;
//----------PROVÃO--------------------------------------------------------------
QRM_Provao.Enabled:= False;
QRDBT_Provao.Enabled:= False;
//----------REC FINAL-----------------------------------------------------------
QRM_RFinal.Enabled:= False;
QRDBT_RFinal.Enabled:= False;
//----------MEDIA FINAL---------------------------------------------------------
QRM_MFinal.Lines.Clear;
QRM_MFinal.Lines.Add('Média');
QRM_MFinal.Lines.Add('Final');
QRM_MFinal.Left:= 548;
QRDBT_MFinal.Left:= 548;
QRM_MFinal.Width:= 68;
QRDBT_MFinal.Width:= 68;

QRM_ResultadoFinal.Lines.Clear;
QRM_ResultadoFinal.Lines.Add('Resultado');
QRM_ResultadoFinal.Lines.Add(Etapa);
QRM_ResultadoFinal.Left:= 617;
QRM_ResultadoFinal.Width:= 107;
QRDBT_ResultadoFinal.Left:= 619;
QRDBT_ResultadoFinal.Width:= 107;

QRShape35.Enabled:= False;
QRShape11.Enabled:= False;
QRShape10.Enabled:= False;
QRShape9.Enabled:= False;

QRShape8.Width:= 70;
QRShape16.Width:= 70;
QRShape14.Width:= 70;
QRShape12.Width:= 70;
QRShape6.Width:= 70;
QRShape6.Left:= 547;

QRShape37.Enabled:= False;
QRShape38.Enabled:= False;
QRShape19.Enabled:= False;
QRShape20.Enabled:= False;
QRShape23.Enabled:= False;
QRShape25.Enabled:= False;
QRShape27.Enabled:= False;
QRShape28.Enabled:= False;

QRLabel_Disciplina.Width:= 248;
QRLabel_Disciplina.Font.Size:= 14;
QRShape29.Left:= 616;

Exit;
end else
if Etapa = '2ª Etapa' then
begin
//----------MÊS 1---------------------------------------------------------------
QRM_Mes1.Enabled:= False;
QRDBT_Mes1.Enabled:= False;
//----------MÊS 2---------------------------------------------------------------
QRM_Mes2.Enabled:= False;
QRDBT_Mes2.Enabled:= False;
//----------MÉDIA 1ª ETAPA------------------------------------------------------
QRM_M1Etp.Lines.Clear;
QRM_M1Etp.Lines.Add('Média');
QRM_M1Etp.Lines.Add('1ª Etapa');
QRM_M1Etp.Left:= 269;
QRDBT_M1Etp.Left:= 269;
QRM_M1Etp.Width:= 68;
QRDBT_M1Etp.Width:= 68;
//----------REC 1ª ETAPA--------------------------------------------------------
QRM_R1Etp.Enabled:= False;
QRDBT_R1Etp.Enabled:= False;
//----------MÉDIA 2ª ETAPA------------------------------------------------------
QRM_M2Etp.Lines.Clear;
QRM_M2Etp.Lines.Add('Média');
QRM_M2Etp.Lines.Add('2ª Etapa');
QRM_M2Etp.Left:= 339;
QRDBT_M2Etp.Left:= 339;
QRM_M2Etp.Width:= 68;
QRDBT_M2Etp.Width:= 68;
//----------REC 2ª ETAPA--------------------------------------------------------
QRM_R2Etp.Enabled:= False;
QRDBT_R2Etp.Enabled:= False;
//----------MÉDIA 3ª ETAPA------------------------------------------------------
QRM_M3Etp.Lines.Clear;
QRM_M3Etp.Lines.Add('Média');
QRM_M3Etp.Lines.Add('3ª Etapa');
QRM_M3Etp.Left:= 409;
QRDBT_M3Etp.Left:= 409;
QRM_M3Etp.Width:= 68;
QRDBT_M3Etp.Width:= 68;
//----------REC 3ª ETAPA--------------------------------------------------------
QRM_R3Etp.Enabled:= False;
QRDBT_R3Etp.Enabled:= False;
//----------MÉDIA 4ª ETAPA------------------------------------------------------
QRM_M4Etp.Lines.Clear;
QRM_M4Etp.Lines.Add('Média');
QRM_M4Etp.Lines.Add('4ª Etapa');
QRM_M4Etp.Left:= 479;
QRDBT_M4Etp.Left:= 479;
QRM_M4Etp.Width:= 68;
QRDBT_M4Etp.Width:= 68;
//----------REC 4ª ETAPA--------------------------------------------------------
QRM_R4Etp.Enabled:= False;
QRDBT_R4Etp.Enabled:= False;
//----------PROVÃO--------------------------------------------------------------
QRM_Provao.Enabled:= False;
QRDBT_Provao.Enabled:= False;
//----------REC FINAL-----------------------------------------------------------
QRM_RFinal.Enabled:= False;
QRDBT_RFinal.Enabled:= False;
//----------MEDIA FINAL---------------------------------------------------------
QRM_MFinal.Lines.Clear;
QRM_MFinal.Lines.Add('Média');
QRM_MFinal.Lines.Add('Final');
QRM_MFinal.Left:= 548;
QRDBT_MFinal.Left:= 548;
QRM_MFinal.Width:= 68;
QRDBT_MFinal.Width:= 68;

QRM_ResultadoFinal.Lines.Clear;
QRM_ResultadoFinal.Lines.Add('Resultado');
QRM_ResultadoFinal.Lines.Add(Etapa);
QRM_ResultadoFinal.Left:= 617;
QRM_ResultadoFinal.Width:= 107;
QRDBT_ResultadoFinal.Left:= 619;
QRDBT_ResultadoFinal.Width:= 107;

QRShape35.Enabled:= False;
QRShape11.Enabled:= False;
QRShape10.Enabled:= False;
QRShape9.Enabled:= False;

QRShape8.Width:= 70;
QRShape16.Width:= 70;
QRShape14.Width:= 70;
QRShape12.Width:= 70;
QRShape6.Width:= 70;
QRShape6.Left:= 547;

QRShape37.Enabled:= False;
QRShape38.Enabled:= False;
QRShape19.Enabled:= False;
QRShape20.Enabled:= False;
QRShape23.Enabled:= False;
QRShape25.Enabled:= False;
QRShape27.Enabled:= False;
QRShape28.Enabled:= False;

QRShape29.Left:= 616;
Exit;
end else
if Etapa = '3ª Etapa' then
begin
//----------MÊS 1---------------------------------------------------------------
QRM_Mes1.Enabled:= False;
QRDBT_Mes1.Enabled:= False;
//----------MÊS 2---------------------------------------------------------------
QRM_Mes2.Enabled:= False;
QRDBT_Mes2.Enabled:= False;
//----------MÉDIA 1ª ETAPA------------------------------------------------------
QRM_M1Etp.Lines.Clear;
QRM_M1Etp.Lines.Add('Média');
QRM_M1Etp.Lines.Add('1ª Etapa');
QRM_M1Etp.Left:= 269;
QRDBT_M1Etp.Left:= 269;
QRM_M1Etp.Width:= 68;
QRDBT_M1Etp.Width:= 68;
//----------REC 1ª ETAPA--------------------------------------------------------
QRM_R1Etp.Enabled:= False;
QRDBT_R1Etp.Enabled:= False;
//----------MÉDIA 2ª ETAPA------------------------------------------------------
QRM_M2Etp.Lines.Clear;
QRM_M2Etp.Lines.Add('Média');
QRM_M2Etp.Lines.Add('2ª Etapa');
QRM_M2Etp.Left:= 339;
QRDBT_M2Etp.Left:= 339;
QRM_M2Etp.Width:= 68;
QRDBT_M2Etp.Width:= 68;
//----------REC 2ª ETAPA--------------------------------------------------------
QRM_R2Etp.Enabled:= False;
QRDBT_R2Etp.Enabled:= False;
//----------MÉDIA 3ª ETAPA------------------------------------------------------
QRM_M3Etp.Lines.Clear;
QRM_M3Etp.Lines.Add('Média');
QRM_M3Etp.Lines.Add('3ª Etapa');
QRM_M3Etp.Left:= 409;
QRDBT_M3Etp.Left:= 409;
QRM_M3Etp.Width:= 68;
QRDBT_M3Etp.Width:= 68;
//----------REC 3ª ETAPA--------------------------------------------------------
QRM_R3Etp.Enabled:= False;
QRDBT_R3Etp.Enabled:= False;
//----------MÉDIA 4ª ETAPA------------------------------------------------------
QRM_M4Etp.Lines.Clear;
QRM_M4Etp.Lines.Add('Média');
QRM_M4Etp.Lines.Add('4ª Etapa');
QRM_M4Etp.Left:= 479;
QRDBT_M4Etp.Left:= 479;
QRM_M4Etp.Width:= 68;
QRDBT_M4Etp.Width:= 68;
//----------REC 4ª ETAPA--------------------------------------------------------
QRM_R4Etp.Enabled:= False;
QRDBT_R4Etp.Enabled:= False;
//----------PROVÃO--------------------------------------------------------------
QRM_Provao.Enabled:= False;
QRDBT_Provao.Enabled:= False;
//----------REC FINAL-----------------------------------------------------------
QRM_RFinal.Enabled:= False;
QRDBT_RFinal.Enabled:= False;
//----------MEDIA FINAL---------------------------------------------------------
QRM_MFinal.Lines.Clear;
QRM_MFinal.Lines.Add('Média');
QRM_MFinal.Lines.Add('Final');
QRM_MFinal.Left:= 548;
QRDBT_MFinal.Left:= 548;
QRM_MFinal.Width:= 68;
QRDBT_MFinal.Width:= 68;

QRM_ResultadoFinal.Lines.Clear;
QRM_ResultadoFinal.Lines.Add('Resultado');
QRM_ResultadoFinal.Lines.Add(Etapa);
QRM_ResultadoFinal.Left:= 617;
QRM_ResultadoFinal.Width:= 107;
QRDBT_ResultadoFinal.Left:= 619;
QRDBT_ResultadoFinal.Width:= 107;

QRShape35.Enabled:= False;
QRShape11.Enabled:= False;
QRShape10.Enabled:= False;
QRShape9.Enabled:= False;

QRShape8.Width:= 70;
QRShape16.Width:= 70;
QRShape14.Width:= 70;
QRShape12.Width:= 70;
QRShape6.Width:= 70;
QRShape6.Left:= 547;

QRShape37.Enabled:= False;
QRShape38.Enabled:= False;
QRShape19.Enabled:= False;
QRShape20.Enabled:= False;
QRShape23.Enabled:= False;
QRShape25.Enabled:= False;
QRShape27.Enabled:= False;
QRShape28.Enabled:= False;

QRShape29.Left:= 616;
Exit;
end else
if Etapa = '4ª Etapa' then
begin
//----------MÊS 1---------------------------------------------------------------
QRM_Mes1.Enabled:= False;
QRDBT_Mes1.Enabled:= False;
//----------MÊS 2---------------------------------------------------------------
QRM_Mes2.Enabled:= False;
QRDBT_Mes2.Enabled:= False;
//----------MÉDIA 1ª ETAPA------------------------------------------------------
QRM_M1Etp.Lines.Clear;
QRM_M1Etp.Lines.Add('Média');
QRM_M1Etp.Lines.Add('1ª Etapa');
QRM_M1Etp.Left:= 269;
QRDBT_M1Etp.Left:= 269;
QRM_M1Etp.Width:= 68;
QRDBT_M1Etp.Width:= 68;
//----------REC 1ª ETAPA--------------------------------------------------------
QRM_R1Etp.Enabled:= False;
QRDBT_R1Etp.Enabled:= False;
//----------MÉDIA 2ª ETAPA------------------------------------------------------
QRM_M2Etp.Lines.Clear;
QRM_M2Etp.Lines.Add('Média');
QRM_M2Etp.Lines.Add('2ª Etapa');
QRM_M2Etp.Left:= 339;
QRDBT_M2Etp.Left:= 339;
QRM_M2Etp.Width:= 68;
QRDBT_M2Etp.Width:= 68;
//----------REC 2ª ETAPA--------------------------------------------------------
QRM_R2Etp.Enabled:= False;
QRDBT_R2Etp.Enabled:= False;
//----------MÉDIA 3ª ETAPA------------------------------------------------------
QRM_M3Etp.Lines.Clear;
QRM_M3Etp.Lines.Add('Média');
QRM_M3Etp.Lines.Add('3ª Etapa');
QRM_M3Etp.Left:= 409;
QRDBT_M3Etp.Left:= 409;
QRM_M3Etp.Width:= 68;
QRDBT_M3Etp.Width:= 68;
//----------REC 3ª ETAPA--------------------------------------------------------
QRM_R3Etp.Enabled:= False;
QRDBT_R3Etp.Enabled:= False;
//----------MÉDIA 4ª ETAPA------------------------------------------------------
QRM_M4Etp.Lines.Clear;
QRM_M4Etp.Lines.Add('Média');
QRM_M4Etp.Lines.Add('4ª Etapa');
QRM_M4Etp.Left:= 479;
QRDBT_M4Etp.Left:= 479;
QRM_M4Etp.Width:= 68;
QRDBT_M4Etp.Width:= 68;
//----------REC 4ª ETAPA--------------------------------------------------------
QRM_R4Etp.Enabled:= False;
QRDBT_R4Etp.Enabled:= False;
//----------PROVÃO--------------------------------------------------------------
QRM_Provao.Enabled:= False;
QRDBT_Provao.Enabled:= False;
//----------REC FINAL-----------------------------------------------------------
QRM_RFinal.Enabled:= False;
QRDBT_RFinal.Enabled:= False;
//----------MEDIA FINAL---------------------------------------------------------
QRM_MFinal.Lines.Clear;
QRM_MFinal.Lines.Add('Média');
QRM_MFinal.Lines.Add('Final');
QRM_MFinal.Left:= 548;
QRDBT_MFinal.Left:= 548;
QRM_MFinal.Width:= 68;
QRDBT_MFinal.Width:= 68;

QRM_ResultadoFinal.Lines.Clear;
QRM_ResultadoFinal.Lines.Add('Resultado');
QRM_ResultadoFinal.Lines.Add('Final');
QRM_ResultadoFinal.Left:= 617;
QRM_ResultadoFinal.Width:= 107;
QRDBT_ResultadoFinal.Left:= 619;
QRDBT_ResultadoFinal.Width:= 107;

QRShape35.Enabled:= False;
QRShape11.Enabled:= False;
QRShape10.Enabled:= False;
QRShape9.Enabled:= False;

QRShape8.Width:= 70;
QRShape16.Width:= 70;
QRShape14.Width:= 70;
QRShape12.Width:= 70;
QRShape6.Width:= 70;
QRShape6.Left:= 547;

QRShape37.Enabled:= False;
QRShape38.Enabled:= False;
QRShape19.Enabled:= False;
QRShape20.Enabled:= False;
QRShape23.Enabled:= False;
QRShape25.Enabled:= False;
QRShape27.Enabled:= False;
QRShape28.Enabled:= False;

QRShape29.Left:= 616;
end;
end;

if(FrmImpressaoBoletim.IBQuery_BolImpressao.FieldByName('CURSO').AsString = 'ENSINO FUNDAMENTAL I') or
(FrmImpressaoBoletim.IBQuery_BolImpressao.FieldByName('CURSO').AsString = 'ENSINO FUNDAMENTAL II') then
begin
if Etapa = '1ª Etapa' then
begin
//----------MÊS 1---------------------------------------------------------------
QRM_Mes1.Lines.Clear;
QRM_Mes1.Lines.Add('1ª Etapa');
QRM_Mes1.Lines.Add('AV1  AV2  AV3');
QRM_Mes1.Width:= 71;
QRM_Mes1.Left:= 198;
QRDBT_Mes1.Left:= 198;
QRDBT_Mes1.DataField:= 'ETAPA_1_MAR';
QRDBT_Mes1.Width:= 23;
QRShape35.Width:= QRShape35.Width*2;
//----------MÊS 2---------------------------------------------------------------
QRM_Mes2.Enabled:= False;
QRDBT_Mes2.Left:= QRDBT_Mes2.Left-12;
QRDBT_Mes2.DataField:= 'ETAPA_1_ABR';
QRDBT_Mes2.Width:= 23;
//----------AV3-----------------------------------------------------------------
QRDBT_1_AV3.Left:= QRDBT_1_AV3.Left+6;
QRDBT_1_AV3.DataField:= 'ETAPA_1_AV3';
QRShape38.Width:= 23;
QRShape38.Shape:= qrsRightAndLeft;
QRShape38.Left:= QRShape38.Left-10;
//----------MÉDIA 1ª ETAPA------------------------------------------------------
QRM_M1Etp.Lines.Clear;
QRM_M1Etp.Lines.Add('1ª Etp.');
QRM_M1Etp.Lines.Add('Média');
QRM_M1Etp.Left:= 268;
QRDBT_M1Etp.Left:= 268;
//----------REC 1ª ETAPA--------------------------------------------------------
QRM_R1Etp.Lines.Clear;
QRM_R1Etp.Lines.Add('1ª Etp.');
QRM_R1Etp.Lines.Add('Rec.');
QRM_R1Etp.Left:= 303;
QRDBT_R1Etp.Left:= 303;
//----------MÉDIA 2ª ETAPA------------------------------------------------------
QRM_M2Etp.Lines.Clear;
QRM_M2Etp.Lines.Add('2ª Etp.');
QRM_M2Etp.Lines.Add('Média');
QRM_M2Etp.Left:= 338;
QRDBT_M2Etp.Left:= 338;
//----------REC 2ª ETAPA--------------------------------------------------------
QRM_R2Etp.Lines.Clear;
QRM_R2Etp.Lines.Add('2ª Etp.');
QRM_R2Etp.Lines.Add('Rec.');
QRM_R2Etp.Left:= 373;
QRDBT_R2Etp.Left:= 373;
//----------MÉDIA 3ª ETAPA------------------------------------------------------
QRM_M3Etp.Lines.Clear;
QRM_M3Etp.Lines.Add('3ª Etp.');
QRM_M3Etp.Lines.Add('Média');
QRM_M3Etp.Left:= 408;
QRDBT_M3Etp.Left:= 408;
//----------REC 3ª ETAPA--------------------------------------------------------
QRM_R3Etp.Lines.Clear;
QRM_R3Etp.Lines.Add('3ª Etp.');
QRM_R3Etp.Lines.Add('Rec.');
QRM_R3Etp.Left:= 443;
QRDBT_R3Etp.Left:= 443;
//----------MÉDIA 4ª ETAPA------------------------------------------------------
QRM_M4Etp.Lines.Clear;
QRM_M4Etp.Lines.Add('4ª Etp.');
QRM_M4Etp.Lines.Add('Média');
QRM_M4Etp.Left:= 478;
QRDBT_M4Etp.Left:= 478;
//----------REC 4ª ETAPA--------------------------------------------------------
QRM_R4Etp.Lines.Clear;
QRM_R4Etp.Lines.Add('4ª Etp.');
QRM_R4Etp.Lines.Add('Rec.');
QRM_R4Etp.Left:= 513;
QRDBT_R4Etp.Left:= 513;
//----------PROVÃO--------------------------------------------------------------
QRM_Provao.Lines.Clear;
QRM_Provao.Lines.Add('Pro');
QRM_Provao.Lines.Add('vão');
QRM_Provao.Left:= 548;
QRDBT_Provao.Left:= 548;
//----------REC FINAL-----------------------------------------------------------
QRM_RFinal.Lines.Clear;
QRM_RFinal.Lines.Add('Rec.');
QRM_RFinal.Lines.Add('Final');
QRM_RFinal.Left:= 583;
QRDBT_RFinal.Left:= 583;
//----------MEDIA FINAL---------------------------------------------------------
QRM_MFinal.Lines.Clear;
QRM_MFinal.Lines.Add('Média');
QRM_MFinal.Lines.Add('Final');
QRM_MFinal.Left:= 618;
QRDBT_MFinal.Left:= 618;

QRM_ResultadoFinal.Lines.Clear;
QRM_ResultadoFinal.Lines.Add('Resultado');
QRM_ResultadoFinal.Lines.Add(Etapa);

Exit;
end else
if Etapa = '2ª Etapa' then
begin
//----------MÊS 1---------------------------------------------------------------
QRM_Mes1.Lines.Clear;
QRM_Mes1.Lines.Add('2ª Etapa');
QRM_Mes1.Lines.Add('AV1  AV2  AV3');
QRM_Mes1.Width:= 71;
QRM_Mes1.Left:= 268;
QRDBT_Mes1.Left:= 268;
QRDBT_Mes1.DataField:= 'ETAPA_2_MAI';
QRDBT_Mes1.Width:= 23;
QRShape35.Left:= 268;
QRShape35.Width:= QRShape35.Width*2;
//----------MÊS 2---------------------------------------------------------------
QRM_Mes2.Enabled:= False;
QRDBT_Mes2.Left:= 303-11;
QRDBT_Mes2.DataField:= 'ETAPA_2_JUN';
QRDBT_Mes2.Width:= 23;
//----------AV3-----------------------------------------------------------------
QRDBT_1_AV3.Left:= 303+8;
QRDBT_1_AV3.DataField:= 'ETAPA_2_AV3';
QRShape38.Width:= 23;
QRShape38.Shape:= qrsRightAndLeft;
QRShape38.Left:= 303-10;
QRShape19.Left:= 232;
QRShape8.Left:= 198;
//----------MÉDIA 1ª ETAPA------------------------------------------------------
QRM_M1Etp.Lines.Clear;
QRM_M1Etp.Lines.Add('1ª Etp.');
QRM_M1Etp.Lines.Add('Média');
QRM_M1Etp.Left:= 198;
QRDBT_M1Etp.Left:= 198;
//----------REC 1ª ETAPA--------------------------------------------------------
QRM_R1Etp.Lines.Clear;
QRM_R1Etp.Lines.Add('1ª Etp.');
QRM_R1Etp.Lines.Add('Rec.');
QRM_R1Etp.Left:= 233;
QRDBT_R1Etp.Left:= 233;
//----------MÉDIA 2ª ETAPA------------------------------------------------------
QRM_M2Etp.Lines.Clear;
QRM_M2Etp.Lines.Add('2ª Etp.');
QRM_M2Etp.Lines.Add('Média');
QRM_M2Etp.Left:= 338;
QRDBT_M2Etp.Left:= 338;
//----------REC 2ª ETAPA--------------------------------------------------------
QRM_R2Etp.Lines.Clear;
QRM_R2Etp.Lines.Add('2ª Etp.');
QRM_R2Etp.Lines.Add('Rec.');
QRM_R2Etp.Left:= 373;
QRDBT_R2Etp.Left:= 373;
//----------MÉDIA 3ª ETAPA------------------------------------------------------
QRM_M3Etp.Lines.Clear;
QRM_M3Etp.Lines.Add('3ª Etp.');
QRM_M3Etp.Lines.Add('Média');
QRM_M3Etp.Left:= 408;
QRDBT_M3Etp.Left:= 408;
//----------REC 3ª ETAPA--------------------------------------------------------
QRM_R3Etp.Lines.Clear;
QRM_R3Etp.Lines.Add('3ª Etp.');
QRM_R3Etp.Lines.Add('Rec.');
QRM_R3Etp.Left:= 443;
QRDBT_R3Etp.Left:= 443;
//----------MÉDIA 4ª ETAPA------------------------------------------------------
QRM_M4Etp.Lines.Clear;
QRM_M4Etp.Lines.Add('4ª Etp.');
QRM_M4Etp.Lines.Add('Média');
QRM_M4Etp.Left:= 478;
QRDBT_M4Etp.Left:= 478;
//----------REC 4ª ETAPA--------------------------------------------------------
QRM_R4Etp.Lines.Clear;
QRM_R4Etp.Lines.Add('4ª Etp.');
QRM_R4Etp.Lines.Add('Rec.');
QRM_R4Etp.Left:= 513;
QRDBT_R4Etp.Left:= 513;
//----------PROVÃO--------------------------------------------------------------
QRM_Provao.Lines.Clear;
QRM_Provao.Lines.Add('Pro');
QRM_Provao.Lines.Add('vão');
QRM_Provao.Left:= 548;
QRDBT_Provao.Left:= 548;
//----------REC FINAL-----------------------------------------------------------
QRM_RFinal.Lines.Clear;
QRM_RFinal.Lines.Add('Rec.');
QRM_RFinal.Lines.Add('Final');
QRM_RFinal.Left:= 583;
QRDBT_RFinal.Left:= 583;
//----------MEDIA FINAL---------------------------------------------------------
QRM_MFinal.Lines.Clear;
QRM_MFinal.Lines.Add('Média');
QRM_MFinal.Lines.Add('Final');
QRM_MFinal.Left:= 618;
QRDBT_MFinal.Left:= 618;

QRM_ResultadoFinal.Lines.Clear;
QRM_ResultadoFinal.Lines.Add('Resultado');
QRM_ResultadoFinal.Lines.Add(Etapa);
Exit;
end else
if Etapa = '3ª Etapa' then
begin
//----------MÊS 1---------------------------------------------------------------
QRM_Mes1.Lines.Clear;
QRM_Mes1.Lines.Add('3ª Etapa');
QRM_Mes1.Lines.Add('AV1  AV2  AV3');
QRM_Mes1.Width:= 71;
QRM_Mes1.Left:= 337;
QRDBT_Mes1.Left:= 337;
QRDBT_Mes1.DataField:= 'ETAPA_3_AGO';
QRDBT_Mes1.Width:= 23;
QRShape35.Left:= 337;
QRShape35.Width:= QRShape35.Width*2;
//----------MÊS 2---------------------------------------------------------------
QRM_Mes2.Enabled:= False;
QRDBT_Mes2.Left:= 372-11;
QRDBT_Mes2.DataField:= 'ETAPA_3_SET';
QRDBT_Mes2.Width:= 23;
//----------AV3-----------------------------------------------------------------
QRDBT_1_AV3.Left:= 372+8;
QRDBT_1_AV3.DataField:= 'ETAPA_3_AV3';
QRShape38.Width:= 23;
QRShape38.Shape:= qrsRightAndLeft;
QRShape38.Left:= 372-10;
QRShape20.Left:= 232;
QRShape16.Left:= 198;
//----------MÉDIA 1ª ETAPA------------------------------------------------------
QRM_M1Etp.Lines.Clear;
QRM_M1Etp.Lines.Add('1ª Etp.');
QRM_M1Etp.Lines.Add('Média');
QRM_M1Etp.Left:= 198;
QRDBT_M1Etp.Left:= 198;
//----------REC 1ª ETAPA--------------------------------------------------------
QRM_R1Etp.Lines.Clear;
QRM_R1Etp.Lines.Add('1ª Etp.');
QRM_R1Etp.Lines.Add('Rec.');
QRM_R1Etp.Left:= 233;
QRDBT_R1Etp.Left:= 233;
//----------MÉDIA 2ª ETAPA------------------------------------------------------
QRM_M2Etp.Lines.Clear;
QRM_M2Etp.Lines.Add('2ª Etp.');
QRM_M2Etp.Lines.Add('Média');
QRM_M2Etp.Left:= 268;
QRDBT_M2Etp.Left:= 268;
//----------REC 2ª ETAPA--------------------------------------------------------
QRM_R2Etp.Lines.Clear;
QRM_R2Etp.Lines.Add('2ª Etp.');
QRM_R2Etp.Lines.Add('Rec.');
QRM_R2Etp.Left:= 303;
QRDBT_R2Etp.Left:= 303;
//----------MÉDIA 3ª ETAPA------------------------------------------------------
QRM_M3Etp.Lines.Clear;
QRM_M3Etp.Lines.Add('3ª Etp.');
QRM_M3Etp.Lines.Add('Média');
QRM_M3Etp.Left:= 408;
QRDBT_M3Etp.Left:= 408;
//----------REC 3ª ETAPA--------------------------------------------------------
QRM_R3Etp.Lines.Clear;
QRM_R3Etp.Lines.Add('3ª Etp.');
QRM_R3Etp.Lines.Add('Rec.');
QRM_R3Etp.Left:= 443;
QRDBT_R3Etp.Left:= 443;
//----------MÉDIA 4ª ETAPA------------------------------------------------------
QRM_M4Etp.Lines.Clear;
QRM_M4Etp.Lines.Add('4ª Etp.');
QRM_M4Etp.Lines.Add('Média');
QRM_M4Etp.Left:= 478;
QRDBT_M4Etp.Left:= 478;
//----------REC 4ª ETAPA--------------------------------------------------------
QRM_R4Etp.Lines.Clear;
QRM_R4Etp.Lines.Add('4ª Etp.');
QRM_R4Etp.Lines.Add('Rec.');
QRM_R4Etp.Left:= 513;
QRDBT_R4Etp.Left:= 513;
//----------PROVÃO--------------------------------------------------------------
QRM_Provao.Lines.Clear;
QRM_Provao.Lines.Add('Pro');
QRM_Provao.Lines.Add('vão');
QRM_Provao.Left:= 548;
QRDBT_Provao.Left:= 548;
//----------REC FINAL-----------------------------------------------------------
QRM_RFinal.Lines.Clear;
QRM_RFinal.Lines.Add('Rec.');
QRM_RFinal.Lines.Add('Final');
QRM_RFinal.Left:= 583;
QRDBT_RFinal.Left:= 583;
//----------MEDIA FINAL---------------------------------------------------------
QRM_MFinal.Lines.Clear;
QRM_MFinal.Lines.Add('Média');
QRM_MFinal.Lines.Add('Final');
QRM_MFinal.Left:= 618;
QRDBT_MFinal.Left:= 618;

QRM_ResultadoFinal.Lines.Clear;
QRM_ResultadoFinal.Lines.Add('Resultado');
QRM_ResultadoFinal.Lines.Add(Etapa);
Exit;
end else
if Etapa = '4ª Etapa' then
begin
//----------MÊS 1---------------------------------------------------------------
QRM_Mes1.Lines.Clear;
QRM_Mes1.Lines.Add('4ª Etapa');
QRM_Mes1.Lines.Add('AV1  AV2  AV3');
QRM_Mes1.Width:= 71;
QRM_Mes1.Left:= 408;
QRDBT_Mes1.Left:= 408;
QRDBT_Mes1.DataField:= 'ETAPA_4_OUT';
QRDBT_Mes1.Width:= 23;
QRShape35.Left:= 408;
QRShape35.Width:= QRShape35.Width*2;
//----------MÊS 2---------------------------------------------------------------
QRM_Mes2.Enabled:= False;
QRDBT_Mes2.Left:= 442-11;
QRDBT_Mes2.DataField:= 'ETAPA_4_NOV';
QRDBT_Mes2.Width:= 23;
//----------AV3-----------------------------------------------------------------
QRDBT_1_AV3.Left:= 442+8;
QRDBT_1_AV3.DataField:= 'ETAPA_4_AV3';
QRShape38.Width:= 23;
QRShape38.Shape:= qrsRightAndLeft;
QRShape38.Left:= 442-10;
QRShape23.Left:= 232;
QRShape14.Left:= 198;
//----------MÉDIA 1ª ETAPA------------------------------------------------------
QRM_M1Etp.Lines.Clear;
QRM_M1Etp.Lines.Add('1ª Etp.');
QRM_M1Etp.Lines.Add('Média');
QRM_M1Etp.Left:= 198;
QRDBT_M1Etp.Left:= 198;
//----------REC 1ª ETAPA--------------------------------------------------------
QRM_R1Etp.Lines.Clear;
QRM_R1Etp.Lines.Add('1ª Etp.');
QRM_R1Etp.Lines.Add('Rec.');
QRM_R1Etp.Left:= 233;
QRDBT_R1Etp.Left:= 233;
//----------MÉDIA 2ª ETAPA------------------------------------------------------
QRM_M2Etp.Lines.Clear;
QRM_M2Etp.Lines.Add('2ª Etp.');
QRM_M2Etp.Lines.Add('Média');
QRM_M2Etp.Left:= 268;
QRDBT_M2Etp.Left:= 268;
//----------REC 2ª ETAPA--------------------------------------------------------
QRM_R2Etp.Lines.Clear;
QRM_R2Etp.Lines.Add('2ª Etp.');
QRM_R2Etp.Lines.Add('Rec.');
QRM_R2Etp.Left:= 303;
QRDBT_R2Etp.Left:= 303;
//----------MÉDIA 3ª ETAPA------------------------------------------------------
QRM_M3Etp.Lines.Clear;
QRM_M3Etp.Lines.Add('3ª Etp.');
QRM_M3Etp.Lines.Add('Média');
QRM_M3Etp.Left:= 338;
QRDBT_M3Etp.Left:= 338;
//----------REC 3ª ETAPA--------------------------------------------------------
QRM_R3Etp.Lines.Clear;
QRM_R3Etp.Lines.Add('3ª Etp.');
QRM_R3Etp.Lines.Add('Rec.');
QRM_R3Etp.Left:= 373;
QRDBT_R3Etp.Left:= 373;
//----------MÉDIA 4ª ETAPA------------------------------------------------------
QRM_M4Etp.Lines.Clear;
QRM_M4Etp.Lines.Add('4ª Etp.');
QRM_M4Etp.Lines.Add('Média');
QRM_M4Etp.Left:= 478;
QRDBT_M4Etp.Left:= 478;
//----------REC 4ª ETAPA--------------------------------------------------------
QRM_R4Etp.Lines.Clear;
QRM_R4Etp.Lines.Add('4ª Etp.');
QRM_R4Etp.Lines.Add('Rec.');
QRM_R4Etp.Left:= 513;
QRDBT_R4Etp.Left:= 513;
//----------PROVÃO--------------------------------------------------------------
QRM_Provao.Lines.Clear;
QRM_Provao.Lines.Add('Pro');
QRM_Provao.Lines.Add('vão');
QRM_Provao.Left:= 548;
QRDBT_Provao.Left:= 548;
//----------REC FINAL-----------------------------------------------------------
QRM_RFinal.Lines.Clear;
QRM_RFinal.Lines.Add('Rec.');
QRM_RFinal.Lines.Add('Final');
QRM_RFinal.Left:= 583;
QRDBT_RFinal.Left:= 583;
//----------MEDIA FINAL---------------------------------------------------------
QRM_MFinal.Lines.Clear;
QRM_MFinal.Lines.Add('Média');
QRM_MFinal.Lines.Add('Final');
QRM_MFinal.Left:= 618;
QRDBT_MFinal.Left:= 618;

QRM_ResultadoFinal.Lines.Clear;
QRM_ResultadoFinal.Lines.Add('Resultado');
QRM_ResultadoFinal.Lines.Add('Final');
end;
end;
end;

procedure TFrmRelBoletim.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=Cafree;
end;

procedure TFrmRelBoletim.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  // toggle the item background so that we can have alternating colors
  // like the greenbar paper we all know and love.
  with QRShapeGray.Brush do
    if Color = clWhite then
      Color := $00E0E0E0
    else
      Color := clWhite;
end;

procedure TFrmRelBoletim.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
QRLabel_AL.Caption:= 'Ano Letivo '+AnoLetivo;
QRLabel_Etapa1.Caption:= Etapa;

end;

procedure TFrmRelBoletim.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
QRLabel_Etapa2.Caption:= Etapa;

Grafico.Picture := Nil;
Barcode1.Left:=1;
BarCode1.Top:=1;
Barcode1.Height:=45;
Grafico.Height:=45;
BarCode1.Text := IBQuery_NotasBoletim.FieldByName('MATRICULA').AsString;
Barcode1.DrawBarcode(Grafico.Canvas);

// INICIA SELEÇÃO
IBQuery_Mensagem.Close;
IBQuery_Mensagem.SQL.Clear;
IBQuery_Mensagem.SQL.Add('select COD_NOTA, COD_BOLE, MATRICULA, RESULTADO_FINAL, ANO_LETIVO from NOTAS ');
IBQuery_Mensagem.SQL.Add('where (MATRICULA =:MATRICULA and ANO_LETIVO =:ALetivo) ');
IBQuery_Mensagem.ParamByName('MATRICULA').AsString;
IBQuery_Mensagem.ParamByName('ALetivo').AsString:= AnoLetivo;
IBQuery_Mensagem.SQL.Add('order by COD_NOTA, COD_BOLE');
IBQuery_Mensagem.Prepare;
IBQuery_Mensagem.Open;

if  FrmImpressaoBoletim.IBQuery_BolImpressao.FieldByName('CURSO').AsString = 'EDUCAÇÃO INFANTIL' then
begin
if not IBQuery_Mensagem.Locate('RESULTADO_FINAL', 'MELHORAR', [loPartialKey, loCaseInsensitive]) then
begin
QRMemo_Mes.Lines.Text:= '';
QRMemo_Mes.Lines.Add(Dm.IBDS_EMPRESAINSTRUCAO_BOLETIM_APRO.Value);
Exit;
end else
QRMemo_Mes.Lines.Text:= '';
QRMemo_Mes.Lines.Add(Dm.IBDS_EMPRESAINSTRUCAO_BOLETIM_REPRO.Value);
Exit;
end else
if not IBQuery_Mensagem.Locate('RESULTADO_FINAL', 'REC.', [loPartialKey, loCaseInsensitive]) then
begin
QRMemo_Mes.Lines.Text:= '';
QRMemo_Mes.Lines.Add(Dm.IBDS_EMPRESAINSTRUCAO_BOLETIM_APRO.Value);
Exit;
end else
QRMemo_Mes.Lines.Text:= '';
QRMemo_Mes.Lines.Add(Dm.IBDS_EMPRESAINSTRUCAO_BOLETIM_REPRO.Value);
end;

end.


