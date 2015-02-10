unit UnRelExtrato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, Jpeg, IBCustomDataSet, IBQuery,
  qrRRect;

type
  TFrmRelExtrato = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel8: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel_Data: TQRLabel;
    IBQuery_Extrato: TIBQuery;
    QRSubDetail1: TQRSubDetail;
    QRShapeGray: TQRShape;
    QRShape9: TQRShape;
    QRShape8: TQRShape;
    QRShape7: TQRShape;
    QRShape6: TQRShape;
    QRShape5: TQRShape;
    QRShape4: TQRShape;
    QRShape3: TQRShape;
    QRShape29: TQRShape;
    QRShape2: TQRShape;
    QRDBText7: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText1: TQRDBText;
    IBQuery_ExtratoCOD_CARN: TIntegerField;
    IBQuery_ExtratoNUMERO_DOC: TIBStringField;
    IBQuery_ExtratoMATRICULA: TIBStringField;
    IBQuery_ExtratoANO_LETIVO: TIBStringField;
    IBQuery_ExtratoNOME_RESP: TIBStringField;
    IBQuery_ExtratoNOME_ALUNO: TIBStringField;
    IBQuery_ExtratoTURMA: TIBStringField;
    IBQuery_ExtratoTURNO: TIBStringField;
    IBQuery_ExtratoCURSO: TIBStringField;
    IBQuery_ExtratoSERIE: TIBStringField;
    IBQuery_ExtratoMES: TIBStringField;
    IBQuery_ExtratoDATA_VENCIMENTO: TDateTimeField;
    IBQuery_ExtratoDATA_PAGAMENTO: TDateTimeField;
    IBQuery_ExtratoVALOR_MENSAL: TIBBCDField;
    IBQuery_ExtratoVALOR_ACRESC: TIBBCDField;
    IBQuery_ExtratoVALOR_DESCON: TIBBCDField;
    IBQuery_ExtratoNUMERO_PARCELA: TIBStringField;
    IBQuery_ExtratoSITUACAO_PARCELA: TIBStringField;
    IBQuery_ExtratoVALOR_APAGAR: TIBBCDField;
    IBQuery_ExtratoVALOR_PAGO: TIBBCDField;
    IBQuery_ExtratoVALOR_PENDENTE: TIBBCDField;
    IBQuery_ExtratoTOTAL_PAGO: TIBBCDField;
    QRDBText4: TQRDBText;
    QRShape30: TQRShape;
    QRShape28: TQRShape;
    QRShape22: TQRShape;
    QRShape17: TQRShape;
    QRShape16: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel32: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel33: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel34: TQRLabel;
    QRDBText29: TQRDBText;
    QRLabel36: TQRLabel;
    QRDBText33: TQRDBText;
    QRLabel35: TQRLabel;
    QRDBText31: TQRDBText;
    QRRoundRect7: TQRRoundRect;
    QRLabel1: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText9: TQRLabel;
    QRShape31: TQRShape;
    QRLabel19: TQRLabel;
    QRDBText11: TQRDBText;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText2: TQRDBText;
    QRBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRImage_Logo: TQRImage;
    QRLabel_NomeEmpresa: TQRLabel;
    QRLabel_Endereco1: TQRLabel;
    QRLabel_Endereco2: TQRLabel;
    QRLabel_Endereco3: TQRLabel;
    QRLabel_Endereco4: TQRLabel;
    QRLabel7: TQRLabel;
    QRMemo: TQRMemo;
    QRRoundRect1: TQRRoundRect;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRDBText6: TQRDBText;
    QRMemo1: TQRMemo;
    QRMemo2: TQRMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelExtrato: TFrmRelExtrato;

implementation

uses UnDm, UnPrincipal, UnConsulta;

{$R *.dfm}

procedure TFrmRelExtrato.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=Cafree;
end;

procedure TFrmRelExtrato.PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
QRLabel_NomeEmpresa.Caption:= Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
QRLabel_Endereco1.Caption:= Dm.IBDS_EMPRESAENDERECO.AsString;
QRLabel_Endereco2.Caption:= 'CNPJ: '+Dm.IBDS_EMPRESACNPJ.AsString;
QRLabel_Endereco3.Caption:= 'FONE: '+Dm.IBDS_EMPRESATELEFONE.AsString;
QRLabel_Endereco4.Caption:= Dm.IBDS_EMPRESACIDADE.AsString+' - '+Dm.IBDS_EMPRESAESTADO.AsString;
QRLabel_Data.Caption:= 'Período de: '+UpperCase(FormatDateTime('mmmm',FrmConsulta.Data1.Date))+'/'+FormatDateTime('yyyy',FrmConsulta.Data1.Date)+' - '+UpperCase(FormatDateTime('mmmm',FrmConsulta.Data2.Date))+'/'+FormatDateTime('yyyy',FrmConsulta.Data2.Date);
Dm.IBDS_MATRICULAS.Open;
Dm.IBDS_MATRICULAS.Locate('MATRICULA', FrmConsulta.IBQuery_CSALUNOSMATRICULA.AsString,[]);
QRMemo.Lines.Clear;
QRMemo.Lines.Add(Dm.IBDS_MATRICULASNOME_RESP.AsString);
QRMemo.Lines.Add(Dm.IBDS_MATRICULASENDERECO_RESP.AsString);
QRMemo.Lines.Add(Dm.IBDS_MATRICULASBAIRRO_RESP.AsString);
QRMemo.Lines.Add('CEP:'+Dm.IBDS_MATRICULASCEP_RESP.AsString+' '+Dm.IBDS_MATRICULASCIDADE_RESP.AsString+' - '+Dm.IBDS_MATRICULASESTADO_RESP.AsString);
Dm.IBDS_MATRICULAS.Close;
end;

procedure TFrmRelExtrato.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 IBQuery_Extrato.Close;
 IBQuery_Extrato.SQL.Clear;
 IBQuery_Extrato.SQL.Add('select * from CARNE ');
 IBQuery_Extrato.SQL.Add('where DATA_VENCIMENTO between :Inicio and :Final and MATRICULA = :Mat and ANO_LETIVO = :AnoLet');
 IBQuery_Extrato.ParamByName('Inicio').AsDate:= FrmConsulta.Data1.Date-30;
 IBQuery_Extrato.ParamByName('Final').AsDate:= FrmConsulta.Data2.Date;
 IBQuery_Extrato.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_Extrato.ParamByName('Mat').AsString:= FrmConsulta.IBQuery_CSALUNOSMATRICULA.AsString;
 IBQuery_Extrato.SQL.Add('order by DATA_VENCIMENTO');
 IBQuery_Extrato.Prepare;
 IBQuery_Extrato.Open;
end;

procedure TFrmRelExtrato.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
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

