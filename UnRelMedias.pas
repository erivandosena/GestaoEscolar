unit UnRelMedias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, Jpeg, RxGIF, IBCustomDataSet,
  IBQuery, qrRRect;

type
  TFrmRelMedias = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    IBQuery_NotasBoletim: TIBQuery;
    DS_NotasBoletim: TDataSource;
    SummaryBand2: TQRBand;
    QRLabel17: TQRLabel;
    QRSysData1: TQRSysData;
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
    TitleBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    QRM_M1Etp: TQRMemo;
    QRM_R1Etp: TQRMemo;
    QRM_M2Etp: TQRMemo;
    QRM_R2Etp: TQRMemo;
    QRM_M3Etp: TQRMemo;
    QRM_R3Etp: TQRMemo;
    QRM_M4Etp: TQRMemo;
    QRM_R4Etp: TQRMemo;
    QRShape5: TQRShape;
    QRShape8: TQRShape;
    QRShape17: TQRShape;
    QRShape16: TQRShape;
    QRShape15: TQRShape;
    QRShape14: TQRShape;
    QRShape13: TQRShape;
    QRShape12: TQRShape;
    QRShape11: TQRShape;
    QRLabel_Disciplina: TQRMemo;
    QRDBText13: TQRDBText;
    QRShapeGray: TQRShape;
    QRDBT_M1Etp: TQRDBText;
    QRDBT_R1Etp: TQRDBText;
    QRDBT_M2Etp: TQRDBText;
    QRDBT_R2Etp: TQRDBText;
    QRDBT_M3Etp: TQRDBText;
    QRDBT_R3Etp: TQRDBText;
    QRDBT_M4Etp: TQRDBText;
    QRDBT_R4Etp: TQRDBText;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape21: TQRShape;
    QRShape20: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape32: TQRShape;
    QRShape31: TQRShape;
    PageHeaderBand1: TQRBand;
    QRLabel_NomeEmpresa: TQRLabel;
    QRLabel_Endereco1: TQRLabel;
    QRLabel_Endereco2: TQRLabel;
    QRLabel_Endereco3: TQRLabel;
    QRLabel_Endereco4: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape1: TQRShape;
    QRImage_Logo: TQRImage;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabel9: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel14: TQRLabel;
    QRLabel_AL: TQRLabel;
    QRMemo1: TQRMemo;
    QRDBText5: TQRDBText;
    QRMemo2: TQRMemo;
    QRMemo3: TQRMemo;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape6: TQRShape;
    QRShape4: TQRShape;
    QRMemo4: TQRMemo;
    QRShape7: TQRShape;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    SummaryBand1: TQRBand;
    QRShape9: TQRShape;
    QRMemo5: TQRMemo;
    QRShape10: TQRShape;
    QRDBText8: TQRDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelMedias: TFrmRelMedias;
  Valor: String;

implementation

uses UnDm, UnPrincipal, UnListaMedias, UnImpressaoBoletim;

{$R *.dfm}

procedure TFrmRelMedias.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
QRLabel3.Caption:= 'RELAÇÃO DE MÉDIAS (Disciplina: '+FrmListaMedias.CBox_Disciplina.Text+')';
// INICIA SELEÇÃO
IBQuery_NotasBoletim.Close;
IBQuery_NotasBoletim.SQL.Clear;
IBQuery_NotasBoletim.SQL.Add('select * from NOTAS ');
IBQuery_NotasBoletim.SQL.Add('where (MATRICULA =:MATRICULA and DISCIPLINA =:Disc and ANO_LETIVO =:ALetivo) ');
IBQuery_NotasBoletim.ParamByName('MATRICULA').AsString;
IBQuery_NotasBoletim.ParamByName('Disc').AsString:= FrmListaMedias.CBox_Disciplina.Text;
IBQuery_NotasBoletim.ParamByName('ALetivo').AsString:= AnoLetivo;
IBQuery_NotasBoletim.SQL.Add('order by COD_NOTA, COD_BOLE');
IBQuery_NotasBoletim.Prepare;
IBQuery_NotasBoletim.Open;
end;

procedure TFrmRelMedias.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

//QRLabel_Etapa1.Caption:= Etapa;
  // toggle the item background so that we can have alternating colors
  // like the greenbar paper we all know and love.
  with QRShapeGray.Brush do
    if Color = clWhite then
      Color := $00E0E0E0
    else
      Color := clWhite;
end;

procedure TFrmRelMedias.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=Cafree;
end;

procedure TFrmRelMedias.PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
QRLabel_AL.Caption:= AnoLetivo;
QRLabel_NomeEmpresa.Caption:= Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
QRLabel_Endereco1.Caption:= Dm.IBDS_EMPRESAENDERECO.AsString;
QRLabel_Endereco2.Caption:= 'CNPJ: '+Dm.IBDS_EMPRESACNPJ.AsString;
QRLabel_Endereco3.Caption:= 'FONE: '+Dm.IBDS_EMPRESATELEFONE.AsString;
QRLabel_Endereco4.Caption:= Dm.IBDS_EMPRESACIDADE.AsString+' - '+Dm.IBDS_EMPRESAESTADO.AsString;
end;

end.


