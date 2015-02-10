unit UnRelFichaNota;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, Jpeg, RxGIF, IBCustomDataSet,
  IBQuery, qrRRect, Grids, DBGrids, QrAngLbl;

type
  TFrmRelFichaNota = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QRLabel_NomeEmpresa: TQRLabel;
    QRLabel_Endereco1: TQRLabel;
    QRLabel_Endereco2: TQRLabel;
    QRLabel_Endereco3: TQRLabel;
    QRLabel_Endereco4: TQRLabel;
    QRLabel_TITULO: TQRLabel;
    QRImage_Logo: TQRImage;
    SummaryBand1: TQRBand;
    DetailBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    QRDBT_1REC: TQRDBText;
    QRDBT_MAI: TQRDBText;
    QRDBT_2REC: TQRDBText;
    QRDBT_AGO: TQRDBText;
    QRDBT_MAR: TQRDBText;
    QRDBT_ABR: TQRDBText;
    QRDBT_OUT: TQRDBText;
    QRDBT_3REC: TQRDBText;
    QRDBT_1M: TQRDBText;
    QRDBT_JUN: TQRDBText;
    QRDBT_2M: TQRDBText;
    QRDBT_SET: TQRDBText;
    QRDBT_3M: TQRDBText;
    QRDBT_Aluno: TQRDBText;
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
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShapeGray: TQRShape;
    QRSysData4: TQRSysData;
    QRShape16: TQRShape;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRShape3: TQRShape;
    QRLabel4: TQRLabel;
    QRShape4: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape5: TQRShape;
    QRLabel7: TQRLabel;
    QRShape7: TQRShape;
    QRLabel8: TQRLabel;
    QRShape8: TQRShape;
    QRLabel9: TQRLabel;
    QRShape9: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape6: TQRShape;
    QRLabel12: TQRLabel;
    QRShape11: TQRShape;
    QRLabel13: TQRLabel;
    QRShape12: TQRShape;
    QRLabel14: TQRLabel;
    QRShape13: TQRShape;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape14: TQRShape;
    QRLabel18: TQRLabel;
    QRShape15: TQRShape;
    QRLabel19: TQRLabel;
    QRShape17: TQRShape;
    QRLabel20: TQRLabel;
    QRShape30: TQRShape;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRShape34: TQRShape;
    QRLabel23: TQRLabel;
    QRShape39: TQRShape;
    QRLabel24: TQRLabel;
    QRShape40: TQRShape;
    QRLabel25: TQRLabel;
    QRShape41: TQRShape;
    QRLabel26: TQRLabel;
    QRDBT_4M: TQRDBText;
    QRDBT_RF: TQRDBText;
    QRDBT_NOV: TQRDBText;
    QRDBT_4REC: TQRDBText;
    QRDBT_P: TQRDBText;
    QRDBT_MF: TQRDBText;
    QRShape10: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel_Disciplina: TQRLabel;
    QRSysData2: TQRSysData;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRLabel3: TQRLabel;
    QRDBT_1_AV3: TQRDBText;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRLabel30: TQRLabel;
    QRDBT_2_AV3: TQRDBText;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRLabel31: TQRLabel;
    QRDBT_3_AV3: TQRDBText;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    QRLabel32: TQRLabel;
    QRDBT_4_AV3: TQRDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelFichaNota: TFrmRelFichaNota;

implementation

uses UnDm, UnFichaNota;


{$R *.dfm}

procedure TFrmRelFichaNota.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=Cafree;
end;

procedure TFrmRelFichaNota.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
QRLabel_NomeEmpresa.Caption:= Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
QRLabel_Endereco1.Caption:= Dm.IBDS_EMPRESAENDERECO.AsString;
QRLabel_Endereco2.Caption:= 'CNPJ: '+Dm.IBDS_EMPRESACNPJ.AsString;
QRLabel_Endereco3.Caption:= 'FONE: '+Dm.IBDS_EMPRESATELEFONE.AsString;
QRLabel_Endereco4.Caption:= Dm.IBDS_EMPRESACIDADE.AsString+' - '+Dm.IBDS_EMPRESAESTADO.AsString;

QRLabel_TITULO.Caption:= 'FICHA DE NOTA - '+FrmFichaNota.CBox_AnoLetivo.Text+' - '+FrmFichaNota.CBox_Serie.Text;
QRLabel_Disciplina.Caption:= FrmFichaNota.CBox_Disciplina.Text;

if (FrmFichaNota.CBox_Curso.Text = 'EDUCAÇÃO INFANTIL') then
begin
QRShape1.Width:= 366;
// 1ª etp
QRLabel6.Left:= 367;
QRDBT_1M.Left:= 367;
QRLabel6.Width:= 137;
QRDBT_1M.Width:= 137;
QRLabel6.Alignment:= taCenter;
QRDBT_1M.Alignment:= taCenter;
QRLabel6.Transparent:= False;
QRLabel6.Caption:= 'Média';
// 2ª etp
QRLabel11.Left:= 507;
QRDBT_2M.Left:= 507;
QRLabel11.Width:= 137;
QRDBT_2M.Width:= 137;
QRLabel11.Alignment:= taCenter;
QRDBT_2M.Alignment:= taCenter;
QRLabel11.Transparent:= False;
QRLabel11.Caption:= 'Média';
// 3ª etp
QRLabel16.Left:= 647;
QRDBT_3M.Left:= 647;
QRLabel16.Width:= 137;
QRDBT_3M.Width:= 137;
QRLabel16.Alignment:= taCenter;
QRDBT_3M.Alignment:= taCenter;
QRLabel16.Transparent:= False;
QRLabel16.Caption:= 'Média';
// 4ª etp
QRLabel22.Left:= 787;
QRDBT_4M.Left:= 787;
QRLabel22.Width:= 137;
QRDBT_4M.Width:= 137;
QRLabel22.Alignment:= taCenter;
QRDBT_4M.Alignment:= taCenter;
QRLabel22.Transparent:= False;
QRLabel22.Caption:= 'Média';
// result. final
QRLabel26.Left:= 927;
QRDBT_MF.Left:= 927;
QRLabel26.Width:= 102;
QRDBT_MF.Width:= 102;
QRLabel26.Alignment:= taCenter;
QRDBT_MF.Alignment:= taCenter;
QRLabel26.Transparent:= False;
QRLabel26.Caption:= 'Média final';
// linhas verticais
QRShape2.Enabled:= False;
QRShape3.Enabled:= False;
QRShape4.Enabled:= False;
QRShape7.Enabled:= False;
QRShape8.Enabled:= False;
QRShape9.Enabled:= False;
QRShape11.Enabled:= False;
QRShape12.Enabled:= False;
QRShape13.Enabled:= False;
QRShape15.Enabled:= False;
QRShape17.Enabled:= False;
QRShape30.Enabled:= False;
QRShape39.Enabled:= False;
QRShape40.Enabled:= False;
QRShape38.Enabled:= False;
QRShape18.Enabled:= False;
QRShape19.Enabled:= False;
QRShape20.Enabled:= False;
QRShape22.Enabled:= False;
QRShape23.Enabled:= False;
QRShape25.Enabled:= False;
QRShape26.Enabled:= False;
QRShape27.Enabled:= False;
QRShape29.Enabled:= False;
QRShape36.Enabled:= False;
QRShape10.Enabled:= False;
QRShape35.Enabled:= False;
QRShape33.Enabled:= False;
QRShape47.Enabled:= False;
QRShape48.Enabled:= False;
QRShape49.Enabled:= False;
QRShape50.Enabled:= False;
QRShape51.Enabled:= False;
QRShape52.Enabled:= False;
QRShape53.Enabled:= False;
QRShape54.Enabled:= False;
end;
if FrmFichaNota.CheckBox_Planilha.Checked = True then
begin
if (FrmFichaNota.CBox_Curso.Text = 'ENSINO FUNDAMENTAL I') or (FrmFichaNota.CBox_Curso.Text = 'ENSINO FUNDAMENTAL II')then
begin
QRShape1.Width:=  1031;
end else
QRShape1.Width:=  366;
QRDBT_MAR.DataField:= '';
QRDBT_ABR.DataField:= '';
QRDBT_1_AV3.DataField:= '';
QRDBT_1REC.DataField:= '';
QRDBT_1M.DataField:= '';
QRDBT_MAI.DataField:= '';
QRDBT_JUN.DataField:= '';
QRDBT_2_AV3.DataField:= '';
QRDBT_2REC.DataField:= '';
QRDBT_2M.DataField:= '';
QRDBT_AGO.DataField:= '';
QRDBT_SET.DataField:= '';
QRDBT_3_AV3.DataField:= '';
QRDBT_3REC.DataField:= '';
QRDBT_3M.DataField:= '';
QRDBT_OUT.DataField:= '';
QRDBT_NOV.DataField:= '';
QRDBT_4_AV3.DataField:= '';
QRDBT_4REC.DataField:= '';
QRDBT_4M.DataField:= '';
QRDBT_P.DataField:= '';
QRDBT_RF.DataField:= '';
QRDBT_MF.DataField:= '';
Exit;
end else
QRShape1.Width:=  1031;
QRDBT_MAR.DataField:= 'ETAPA_1_MAR';
QRDBT_ABR.DataField:= 'ETAPA_1_ABR';
QRDBT_1_AV3.DataField:= 'ETAPA_1_AV3';
QRDBT_1REC.DataField:= 'ETAPA_1_R';
QRDBT_1M.DataField:= 'ETAPA_1_M';
QRDBT_MAI.DataField:= 'ETAPA_2_MAI';
QRDBT_JUN.DataField:= 'ETAPA_2_JUN';
QRDBT_2_AV3.DataField:= 'ETAPA_2_AV3';
QRDBT_2REC.DataField:= 'ETAPA_2_R';
QRDBT_2M.DataField:= 'ETAPA_2_M';
QRDBT_AGO.DataField:= 'ETAPA_3_AGO';
QRDBT_SET.DataField:= 'ETAPA_3_SET';
QRDBT_3_AV3.DataField:= 'ETAPA_3_AV3';
QRDBT_3REC.DataField:= 'ETAPA_3_R';
QRDBT_3M.DataField:= 'ETAPA_3_M';
QRDBT_OUT.DataField:= 'ETAPA_4_OUT';
QRDBT_NOV.DataField:= 'ETAPA_4_NOV';
QRDBT_4_AV3.DataField:= 'ETAPA_4_AV3';
QRDBT_4REC.DataField:= 'ETAPA_4_R';
QRDBT_4M.DataField:= 'ETAPA_4_M';
QRDBT_P.DataField:= 'PROVAO';
QRDBT_RF.DataField:= 'PROVAO_R';
QRDBT_MF.DataField:= 'MEDIA_FINAL';
end;

procedure TFrmRelFichaNota.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
// toggle the item background so that we can have alternating colors like the greenbar paper we all know and love.
  with QRShapeGray.Brush do
    if Color = clWhite then
      Color := $00E0E0E0
    else
      Color := clWhite;
end;

end.





