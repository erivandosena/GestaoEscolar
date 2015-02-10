unit UnRelPlanilha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, Jpeg, IBCustomDataSet, IBQuery;

type
  TFrmRelPlanilha = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel3: TQRLabel;
    SummaryBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRLabel8: TQRLabel;
    QRSysData_N: TQRSysData;
    QRLabel2: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
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
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRShape30: TQRShape;
    IBQuery_Mensalidade: TIBQuery;
    IBQuery_MensalidadeCOD_CARN: TIntegerField;
    IBQuery_MensalidadeNUMERO_DOC: TIBStringField;
    IBQuery_MensalidadeMATRICULA: TIBStringField;
    IBQuery_MensalidadeANO_LETIVO: TIBStringField;
    IBQuery_MensalidadeNOME_RESP: TIBStringField;
    IBQuery_MensalidadeNOME_ALUNO: TIBStringField;
    IBQuery_MensalidadeTURMA: TIBStringField;
    IBQuery_MensalidadeTURNO: TIBStringField;
    IBQuery_MensalidadeCURSO: TIBStringField;
    IBQuery_MensalidadeSERIE: TIBStringField;
    IBQuery_MensalidadeMES: TIBStringField;
    IBQuery_MensalidadeDATA_VENCIMENTO: TDateTimeField;
    IBQuery_MensalidadeDATA_PAGAMENTO: TDateTimeField;
    IBQuery_MensalidadeVALOR_MENSAL: TIBBCDField;
    IBQuery_MensalidadeVALOR_ACRESC: TIBBCDField;
    IBQuery_MensalidadeVALOR_DESCON: TIBBCDField;
    IBQuery_MensalidadeNUMERO_PARCELA: TIBStringField;
    IBQuery_MensalidadeSITUACAO_PARCELA: TIBStringField;
    IBQuery_MensalidadeVALOR_APAGAR: TIBBCDField;
    IBQuery_MensalidadeVALOR_PAGO: TIBBCDField;
    IBQuery_MensalidadeVALOR_PENDENTE: TIBBCDField;
    IBQuery_MensalidadeTOTAL_PAGO: TIBBCDField;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRShapeGray: TQRShape;
    QRShape6: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape29: TQRShape;
    TitleBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabel_NomeEmpresa: TQRLabel;
    QRImage_Logo: TQRImage;
    QRLabel_Endereco1: TQRLabel;
    QRLabel_Endereco2: TQRLabel;
    QRLabel_Endereco3: TQRLabel;
    QRLabel_Endereco4: TQRLabel;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRLabel_Data: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelPlanilha: TFrmRelPlanilha;
  Valor: String;

implementation

uses UnDm, UnPrincipal, UnConsulta;

{$R *.dfm}

procedure TFrmRelPlanilha.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
// INICIA SELEÇÃO
IBQuery_Mensalidade.Close;
IBQuery_Mensalidade.SQL.Clear;
IBQuery_Mensalidade.SQL.Add('select * from CARNE ');
IBQuery_Mensalidade.SQL.Add('where (MATRICULA =:MATRICULA and ANO_LETIVO =:ALetivo) ');
IBQuery_Mensalidade.ParamByName('MATRICULA').AsString;
IBQuery_Mensalidade.ParamByName('ALetivo').AsString:= AnoLetivo;
IBQuery_Mensalidade.SQL.Add('order by NOME_ALUNO, DATA_VENCIMENTO');
IBQuery_Mensalidade.Prepare;
IBQuery_Mensalidade.Open;
end;

procedure TFrmRelPlanilha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=Cafree;
end;

procedure TFrmRelPlanilha.PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
QRLabel_NomeEmpresa.Caption:= Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
QRLabel_Endereco1.Caption:= Dm.IBDS_EMPRESAENDERECO.AsString;
QRLabel_Endereco2.Caption:= 'CNPJ: '+Dm.IBDS_EMPRESACNPJ.AsString;
QRLabel_Endereco3.Caption:= 'FONE: '+Dm.IBDS_EMPRESATELEFONE.AsString;
QRLabel_Endereco4.Caption:= Dm.IBDS_EMPRESACIDADE.AsString+' - '+Dm.IBDS_EMPRESAESTADO.AsString;
QRLabel_Data.Caption:= FrmConsulta.DBGrid_CS_Alunos.Fields[3].Text+'   -   '+FrmConsulta.CBox_CSSerie.Text+'   Turma: '+FrmConsulta.CBox_CSTurma.Text+'   Turno: '+FrmConsulta.CBox_CSTurno.Text+'   ( '+UpperCase(FrmConsulta.CBox_Mes.Text)+' / '+AnoLetivo+' )';
end;

procedure TFrmRelPlanilha.DetailBand1BeforePrint(Sender: TQRCustomBand;
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

end.
