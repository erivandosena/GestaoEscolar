unit UnRelPais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, Jpeg, IBCustomDataSet, IBQuery,
  StdCtrls, grimgctrl;

type
  TFrmRelPais = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    IBQueryPais: TIBQuery;
    DS_Pais: TDataSource;
    Lab_end_pai: TQRLabel;
    Lab_end_mae: TQRLabel;
    Lab_end_resp: TQRLabel;
    Lab_dn_pai: TQRLabel;
    Lab_dn_mae: TQRLabel;
    Lab_dn_resp: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    ColumnHeaderBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel_Titulo: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelPais: TFrmRelPais;

implementation

uses UnDm, UnDadosPais, UnPrincipal;


{$R *.dfm}

procedure TFrmRelPais.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
Dm.IBDS_ALUNOS.FindFirst;
Dm.IBDS_ALUNOS.Locate('MATRICULA', IBQueryPais.FieldByName('MATRICULA').AsString, []);
Lab_end_pai.Caption:= Dm.IBDS_ALUNOSENDERECO_PAI.AsString+' '+Dm.IBDS_ALUNOSBAIRRO_PAI.AsString;
Lab_end_mae.Caption:= Dm.IBDS_ALUNOSENDERECO_MAE.AsString+' '+Dm.IBDS_ALUNOSBAIRRO_MAE.AsString;
Lab_end_resp.Caption:= Dm.IBDS_ALUNOSENDERECO_RESP.AsString+' '+Dm.IBDS_ALUNOSBAIRRO_RESP.AsString;
Lab_dn_pai.Caption:=  Dm.IBDS_ALUNOSDATA_NASC_PAI.AsString;
Lab_dn_mae.Caption:=  Dm.IBDS_ALUNOSDATA_NASC_MAE.AsString;
Lab_dn_resp.Caption:= Dm.IBDS_ALUNOSDATA_NASC_RESP.AsString;
//QRMemo.Lines.Text:= Dm.IBDS_ALUNOSREMEDIOS_PROIBIDOS.AsString;
//QRMemo1.Lines.Text:= Dm.IBDS_ALUNOSREMEDIOS_UTILIZADOS.AsString;
end;

procedure TFrmRelPais.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=Cafree;
end;

procedure TFrmRelPais.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
with IBQueryPais do
begin
Close;
UnPrepare;
SQL.Clear;
//SQL.Add('select distinct MATRICULA, NOME_ALUNO, DATA_NASCIMENTO, NOME_PAI, TEL_PAI, NOME_MAE, TEL_MAE, NOME_RESP, TEL_RESP  from MATRICUL ');
//SQL.Add('where SERIE = :Seri and TURMA = :Turm and TURNO = :Turn and ANO_LETIVO = :Ano');
SQL.Add('select distinct A.MATRICULA, A.NOME_ALUNO, A.TEL_ALUNO, A.TEL_CEL_ALUNO, A.DATA_NASCIMENTO, A.NOME_PAI, A.TEL_PAI, A.TEL_TRAB_PAI, ');
SQL.Add('A.TEL_CEL_PAI, A.NOME_MAE, A.TEL_MAE, A.TEL_TRAB_MAE, A.TEL_CEL_MAE, A.NOME_RESP, A.TEL_RESP, A.TEL_TRAB_RESP, A.TEL_CEL_RESP from MATRICUL M, ALUNOS A ');
SQL.Add('where M.SERIE = :Seri and M.TURMA = :Turm and M.TURNO = :Turn and M.ANO_LETIVO = :Ano and A.MATRICULA = M.MATRICULA');
ParamByName('Seri').AsString:= FrmDadosPais.CBox_Serie.Text;
ParamByName('Turm').AsString:= FrmDadosPais.CBox_Turma.Text;
ParamByName('Turn').AsString:= FrmDadosPais.CBox_Turno.Text;
ParamByName('Ano').AsString:= AnoLetivo;
SQL.Add('order by M.NOME_ALUNO');
Prepare;
Open;
end;
QRLabel_Titulo.Caption:= FrmDadosPais.CBox_Serie.Text+ '  Turma:'+FrmDadosPais.CBox_Turma.Text+ '  Turno:'+FrmDadosPais.CBox_Turno.Text+ '  Ano Letivo:'+AnoLetivo;
end;

end.
