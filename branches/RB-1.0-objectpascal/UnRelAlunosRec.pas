unit UnRelAlunosRec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, Jpeg, RxGIF, IBCustomDataSet,
  IBQuery, qrRRect;

type
  TFrmRelAlunosRec = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    TitleBand1: TQRBand;
    QRSysData3: TQRSysData;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRLabel8: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRSubDetail1: TQRSubDetail;
    IBQuery_RelDep: TIBQuery;
    DataSource2: TDataSource;
    SummaryBand1: TQRBand;
    GroupFooterBand1: TQRBand;
    GroupHeaderBand1: TQRBand;
    QRSysData4: TQRSysData;
    QRLabel19: TQRLabel;
    QRLabel22Data: TQRLabel;
    QRLabel_Endereco4: TQRLabel;
    QRLabel_Endereco3: TQRLabel;
    QRLabel_Endereco2: TQRLabel;
    QRLabel_Endereco1: TQRLabel;
    QRLabel_NomeEmpresa: TQRLabel;
    QRImage_Logo: TQRImage;
    QRLabel1: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel_AnoLetivo: TQRLabel;
    QRLabel_Totais: TQRDBText;
    QRLabel5: TQRLabel;
    IBQuery_RelDepCOD_NOTA: TIntegerField;
    IBQuery_RelDepCOD_BOLE: TIntegerField;
    IBQuery_RelDepMATRICULA: TIBStringField;
    IBQuery_RelDepDISCIPLINA: TIBStringField;
    IBQuery_RelDepRESULTADO_FINAL: TIBStringField;
    IBQuery_RelDepANO_LETIVO: TIBStringField;
    IBQuery_RelDepF_1: TIntegerField;
    QRLabel3: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
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
  FrmRelAlunosRec: TFrmRelAlunosRec;
  Valor: String;

implementation

uses UnDm, UnPrincipal,UnListaAlunosRec, UnDevedores;

{$R *.dfm}

procedure TFrmRelAlunosRec.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=Cafree;
end;

procedure TFrmRelAlunosRec.QuickRep1BeforePrint(Sender: TCustomQuickRep;
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

procedure TFrmRelAlunosRec.DetailBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
 IBQuery_RelDep.Close;
 IBQuery_RelDep.SQL.Clear;
 IBQuery_RelDep.SQL.Add('select COD_NOTA, COD_BOLE, MATRICULA, DISCIPLINA, RESULTADO_FINAL, ANO_LETIVO,');
// TOTAL DE DEPENDENCIAS
 IBQuery_RelDep.SQL.Add('(select count (RESULTADO_FINAL) from NOTAS');
 IBQuery_RelDep.SQL.Add('where ANO_LETIVO = :AnoLet and RESULTADO_FINAL = :Situacao and MATRICULA = :Mat)');
 IBQuery_RelDep.SQL.Add('from NOTAS');
 IBQuery_RelDep.SQL.Add('where ANO_LETIVO = :AnoLet and RESULTADO_FINAL = :Situacao and MATRICULA = :Mat');
 IBQuery_RelDep.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_RelDep.ParamByName('Situacao').AsString:= 'REC.';
 IBQuery_RelDep.ParamByName('Mat').AsString:= FrmListaAlunosRec.IBQuery_AlunRecMATRICULA.AsString;
 IBQuery_RelDep.SQL.Add('order by DISCIPLINA');
 IBQuery_RelDep.Prepare;
 IBQuery_RelDep.Open;
 end;

end.
