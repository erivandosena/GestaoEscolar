unit UnRelDevedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, Jpeg, RxGIF, IBCustomDataSet,
  IBQuery, qrRRect;

type
  TFrmRelDevedores = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    TitleBand1: TQRBand;
    QRSysData3: TQRSysData;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRLabel8: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRSubDetail1: TQRSubDetail;
    IBQuery_RelDevMen: TIBQuery;
    DataSource2: TDataSource;
    SummaryBand1: TQRBand;
    QRExpr1: TQRExpr;
    GroupFooterBand1: TQRBand;
    GroupHeaderBand1: TQRBand;
    QRSysData4: TQRSysData;
    QRLabel17: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel22Data: TQRLabel;
    QRLabel_Endereco4: TQRLabel;
    QRLabel_Endereco3: TQRLabel;
    QRLabel_Endereco2: TQRLabel;
    QRLabel_Endereco1: TQRLabel;
    QRLabel_NomeEmpresa: TQRLabel;
    QRImage_Logo: TQRImage;
    QRLabel1: TQRLabel;
    IBQuery_RelDevMenMATRICULA: TIBStringField;
    IBQuery_RelDevMenANO_LETIVO: TIBStringField;
    IBQuery_RelDevMenNOME_RESP: TIBStringField;
    IBQuery_RelDevMenNOME_ALUNO: TIBStringField;
    IBQuery_RelDevMenTURMA: TIBStringField;
    IBQuery_RelDevMenTURMA1: TIBStringField;
    IBQuery_RelDevMenTURNO: TIBStringField;
    IBQuery_RelDevMenCURSO: TIBStringField;
    IBQuery_RelDevMenSERIE: TIBStringField;
    IBQuery_RelDevMenDATA_VENCIMENTO: TDateTimeField;
    IBQuery_RelDevMenMES: TIBStringField;
    IBQuery_RelDevMenVALOR_MENSAL: TIBBCDField;
    IBQuery_RelDevMenNUMERO_PARCELA: TIBStringField;
    IBQuery_RelDevMenSITUACAO_PARCELA: TIBStringField;
    IBQuery_RelDevMenNUMERO_DOC: TIBStringField;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    IBQuery_RelDevMenF_1: TIntegerField;
    IBQuery_RelDevMenF_2: TIBBCDField;
    QRLabel_Quant: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel_AnoLetivo: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel_Totais: TQRDBText;
    QRLabel5: TQRLabel;
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
  FrmRelDevedores: TFrmRelDevedores;
  Valor: String;

implementation

uses UnDm, UnPrincipal, UnDevedores;

{$R *.dfm}

procedure TFrmRelDevedores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=Cafree;
end;

procedure TFrmRelDevedores.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
QRLabel_NomeEmpresa.Caption:= Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
QRLabel_Endereco1.Caption:= Dm.IBDS_EMPRESAENDERECO.AsString;
QRLabel_Endereco2.Caption:= 'CNPJ: '+Dm.IBDS_EMPRESACNPJ.AsString;
QRLabel_Endereco3.Caption:= 'FONE: '+Dm.IBDS_EMPRESATELEFONE.AsString;
QRLabel_Endereco4.Caption:= Dm.IBDS_EMPRESACIDADE.AsString+' - '+Dm.IBDS_EMPRESAESTADO.AsString;
QRLabel22Data.Caption:= 'Data: '+DateToStr(Data);
QRLabel_AnoLetivo.Caption:= 'Ano Letivo: ' +AnoLetivo;
end;

procedure TFrmRelDevedores.DetailBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
 (*
 IBQuery_RelDevMen.Close;
 IBQuery_RelDevMen.SQL.Clear;
 IBQuery_RelDevMen.SQL.Add('select MATRICULA, ANO_LETIVO, NOME_RESP, NOME_ALUNO, TURMA, TURMA, TURNO, CURSO, SERIE, DATA_VENCIMENTO, MES, VALOR_MENSAL, NUMERO_PARCELA, SITUACAO_PARCELA, NUMERO_DOC from CARNE ');
 IBQuery_RelDevMen.SQL.Add('where DATA_VENCIMENTO between :DataIni and :DataFin and ANO_LETIVO = :AnoLet and SITUACAO_PARCELA = :Sit and MATRICULA = :Mat ');
 IBQuery_RelDevMen.ParamByName('DataIni').AsDate:= Frmdevedores.Data1.Date;
 IBQuery_RelDevMen.ParamByName('DataFin').AsDate:= Frmdevedores.Data2.Date;
 IBQuery_RelDevMen.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_RelDevMen.ParamByName('Sit').AsString:= 'EM ABERTO';
 IBQuery_RelDevMen.ParamByName('Mat').AsString:= Frmdevedores.IBQuery_AlunMatMATRICULA.AsString;
 IBQuery_RelDevMen.SQL.Add('order by DATA_VENCIMENTO');
 IBQuery_RelDevMen.Prepare;
 IBQuery_RelDevMen.Open;
                      *)
 IBQuery_RelDevMen.Close;
 IBQuery_RelDevMen.SQL.Clear;
 IBQuery_RelDevMen.SQL.Add('select MATRICULA, ANO_LETIVO, NOME_RESP, NOME_ALUNO, TURMA, TURMA, TURNO, CURSO, SERIE, DATA_VENCIMENTO, MES, VALOR_MENSAL, NUMERO_PARCELA, SITUACAO_PARCELA, NUMERO_DOC,');
// TOTAL DE MENSALIDADES
 IBQuery_RelDevMen.SQL.Add('(select count (DATA_VENCIMENTO) from CARNE');
 IBQuery_RelDevMen.SQL.Add('where VALOR_MENSAL is not null and DATA_VENCIMENTO between :DataIni and :DataFin and ANO_LETIVO = :AnoLet and SITUACAO_PARCELA = :Sit and MATRICULA = :Mat),');
// VALOR TOTAL DAS MENSALIDADES
 IBQuery_RelDevMen.SQL.Add('(select sum (VALOR_MENSAL) from CARNE');
 IBQuery_RelDevMen.SQL.Add('where VALOR_MENSAL is not null and DATA_VENCIMENTO between :DataIni and :DataFin  and ANO_LETIVO = :AnoLet and SITUACAO_PARCELA = :Sit and MATRICULA = :Mat)');
 IBQuery_RelDevMen.SQL.Add('from CARNE');
 IBQuery_RelDevMen.SQL.Add('where VALOR_MENSAL is not null and DATA_VENCIMENTO between :DataIni and :DataFin  and ANO_LETIVO = :AnoLet and SITUACAO_PARCELA = :Sit and MATRICULA = :Mat');
 IBQuery_RelDevMen.ParamByName('DataIni').AsDate:= Frmdevedores.Data1.Date;
 IBQuery_RelDevMen.ParamByName('DataFin').AsDate:= Frmdevedores.Data2.Date;
 IBQuery_RelDevMen.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_RelDevMen.ParamByName('Sit').AsString:= 'EM ABERTO';
 IBQuery_RelDevMen.ParamByName('Mat').AsString:= Frmdevedores.IBQuery_AlunMatMATRICULA.AsString;
 IBQuery_RelDevMen.SQL.Add('order by DATA_VENCIMENTO');
 IBQuery_RelDevMen.Prepare;
 IBQuery_RelDevMen.Open;

 QRLabel_Quant.Caption:= 'Mensalidade(s) atrazada(s): '+IBQuery_RelDevMenF_1.AsString;
 //QRLabel_Totais.Caption:= 'Total: '+IntToStr(IBQuery_RelDevMenF_2.AsInteger);
 end;

end.
