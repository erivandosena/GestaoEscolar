unit UnDevedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, IBCustomDataSet, IBQuery, Grids, DBGrids,
  ComCtrls, Gauges;

type
  TFrmDevedores = class(TForm)
    Btn_Fechar: TBitBtn;
    Data1: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    Data2: TDateTimePicker;
    DBGrid_Clientes: TDBGrid;
    Label1: TLabel;
    DBGrid_Parcelas: TDBGrid;
    Label4: TLabel;
    IBQuery_AlunMat: TIBQuery;
    Ds_AlunMat: TDataSource;
    Ds_Parcelas: TDataSource;
    IBQuery_Men: TIBQuery;
    Btn_Exibir: TBitBtn;
    Btn_Imprimir: TBitBtn;
    IBQuery_AlunMatMATRICULA: TIBStringField;
    IBQuery_AlunMatNOME_ALUNO: TIBStringField;
    IBQuery_AlunMatNOME_RESP: TIBStringField;
    IBQuery_AlunMatTEL_RESP: TIBStringField;
    IBQuery_AlunMatSERIE: TIBStringField;
    IBQuery_AlunMatANO_LETIVO: TIBStringField;
    IBQuery_MenMATRICULA: TIBStringField;
    IBQuery_MenANO_LETIVO: TIBStringField;
    IBQuery_MenNOME_RESP: TIBStringField;
    IBQuery_MenNOME_ALUNO: TIBStringField;
    IBQuery_MenTURMA: TIBStringField;
    IBQuery_MenTURMA1: TIBStringField;
    IBQuery_MenTURNO: TIBStringField;
    IBQuery_MenCURSO: TIBStringField;
    IBQuery_MenSERIE: TIBStringField;
    IBQuery_MenDATA_VENCIMENTO: TDateTimeField;
    IBQuery_MenVALOR_MENSAL: TIBBCDField;
    IBQuery_MenNUMERO_PARCELA: TIBStringField;
    IBQuery_MenSITUACAO_PARCELA: TIBStringField;
    IBQuery_MenMES: TIBStringField;
    IBQuery_MenNUMERO_DOC: TIBStringField;
    IBQuery_AlunMatENDERECO_RESP: TIBStringField;
    IBQuery_AlunMatBAIRRO_RESP: TIBStringField;
    IBQuery_AlunMatCIDADE_RESP: TIBStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Btn_FecharClick(Sender: TObject);
    procedure Btn_ExibirClick(Sender: TObject);
    procedure DBGrid_ClientesCellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid_ClientesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Btn_ImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDevedores: TFrmDevedores;

implementation

uses UnDm, UnPrincipal, UnRelDevedores;

{$R *.dfm}

procedure TFrmDevedores.FormShow(Sender: TObject);
begin
FrmDevedores.Top:=100;
FrmDevedores.Left:=0;
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmDevedores.Caption:= FrmDevedores.Caption;
end else
FrmDevedores.Caption:= FrmDevedores.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end;

procedure TFrmDevedores.Btn_FecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmDevedores.Btn_ExibirClick(Sender: TObject);
begin
Screen.Cursor := crSQLWait;
// SELECIONA AS PARCELAS EM ATRAZO
 IBQuery_Men.Close;
 IBQuery_Men.SQL.Clear;
 IBQuery_Men.SQL.Add('select MATRICULA, ANO_LETIVO, NOME_RESP, NOME_ALUNO, TURMA, TURMA, TURNO, CURSO, SERIE, DATA_VENCIMENTO, MES, VALOR_MENSAL, NUMERO_PARCELA, SITUACAO_PARCELA, NUMERO_DOC from CARNE ');
 IBQuery_Men.SQL.Add('where VALOR_MENSAL is not null and DATA_VENCIMENTO between :DataIni and :DataFin and ANO_LETIVO = :AnoLet and SITUACAO_PARCELA = :Sit');
 IBQuery_Men.ParamByName('DataIni').AsDate:= Data1.Date;
 IBQuery_Men.ParamByName('DataFin').AsDate:= Data2.Date;
 IBQuery_Men.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_Men.ParamByName('Sit').AsString:= 'EM ABERTO';
 IBQuery_Men.SQL.Add('order by DATA_VENCIMENTO');
 IBQuery_Men.Prepare;
 IBQuery_Men.Open;
 // SELECIONA NOMES DE ALUNOS
 IBQuery_AlunMat.Close;
 IBQuery_AlunMat.SQL.Clear;
 IBQuery_AlunMat.SQL.Add('select MATRICULA, NOME_ALUNO, NOME_RESP, TEL_RESP, SERIE, ENDERECO_RESP, BAIRRO_RESP, CIDADE_RESP, ANO_LETIVO from MATRICUL A');
 IBQuery_AlunMat.SQL.Add('where ANO_LETIVO = :AnoLet and exists ( select MATRICULA, ANO_LETIVO, NOME_RESP, NOME_ALUNO, TURMA, TURMA, TURNO, CURSO, SERIE, DATA_VENCIMENTO, MES, VALOR_MENSAL, NUMERO_PARCELA, SITUACAO_PARCELA, NUMERO_DOC from CARNE B ');
 IBQuery_AlunMat.SQL.Add('where VALOR_MENSAL is not null and DATA_VENCIMENTO between :DataIni and :DataFin and ANO_LETIVO = :AnoLet and SITUACAO_PARCELA = :Sit and B.MATRICULA = A.MATRICULA)');
 IBQuery_AlunMat.ParamByName('DataIni').AsDate:= Data1.Date;
 IBQuery_AlunMat.ParamByName('DataFin').AsDate:= Data2.Date;
 IBQuery_AlunMat.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_AlunMat.ParamByName('Sit').AsString:= 'EM ABERTO';
 IBQuery_AlunMat.SQL.Add('order by NOME_ALUNO');
 IBQuery_AlunMat.Prepare;
 IBQuery_AlunMat.Open;
 IBQuery_Men.Close;
 DBGrid_Clientes.SelectedIndex;
Screen.Cursor := crDefault;
end;

procedure TFrmDevedores.DBGrid_ClientesCellClick(Column: TColumn);
begin
 IBQuery_Men.Close;
 IBQuery_Men.SQL.Clear;
 IBQuery_Men.SQL.Add('select MATRICULA, ANO_LETIVO, NOME_RESP, NOME_ALUNO, TURMA, TURMA, TURNO, CURSO, SERIE, DATA_VENCIMENTO, MES, VALOR_MENSAL, NUMERO_PARCELA, SITUACAO_PARCELA, NUMERO_DOC from CARNE ');
 IBQuery_Men.SQL.Add('where DATA_VENCIMENTO between :DataIni and :DataFin and ANO_LETIVO = :AnoLet and SITUACAO_PARCELA = :Sit and MATRICULA = :Mat ');
 IBQuery_Men.ParamByName('DataIni').AsDate:= Data1.Date;
 IBQuery_Men.ParamByName('DataFin').AsDate:= Data2.Date;
 IBQuery_Men.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_Men.ParamByName('Sit').AsString:= 'EM ABERTO';
 IBQuery_Men.ParamByName('Mat').AsString:= IBQuery_AlunMatMATRICULA.AsString;
 IBQuery_Men.SQL.Add('order by DATA_VENCIMENTO');
 IBQuery_Men.Prepare;
 IBQuery_Men.Open;
end;

procedure TFrmDevedores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=Cafree;
end;

procedure TFrmDevedores.FormCreate(Sender: TObject);
begin
Data1.Date:= Data - 30;
Data2.Date:= Data;
end;

procedure TFrmDevedores.DBGrid_ClientesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 IBQuery_Men.Close;
 IBQuery_Men.SQL.Clear;
 IBQuery_Men.SQL.Add('select MATRICULA, ANO_LETIVO, NOME_RESP, NOME_ALUNO, TURMA, TURMA, TURNO, CURSO, SERIE, DATA_VENCIMENTO, MES, VALOR_MENSAL, NUMERO_PARCELA, SITUACAO_PARCELA, NUMERO_DOC from CARNE ');
 IBQuery_Men.SQL.Add('where DATA_VENCIMENTO between :DataIni and :DataFin and ANO_LETIVO = :AnoLet and SITUACAO_PARCELA = :Sit and MATRICULA = :Mat ');
 IBQuery_Men.ParamByName('DataIni').AsDate:= Data1.Date;
 IBQuery_Men.ParamByName('DataFin').AsDate:= Data2.Date;
 IBQuery_Men.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_Men.ParamByName('Sit').AsString:= 'EM ABERTO';
 IBQuery_Men.ParamByName('Mat').AsString:= IBQuery_AlunMatMATRICULA.AsString;
 IBQuery_Men.SQL.Add('order by DATA_VENCIMENTO');
 IBQuery_Men.Prepare;
 IBQuery_Men.Open;
end;

procedure TFrmDevedores.Btn_ImprimirClick(Sender: TObject);
begin
try
 FrmRelDevedores:=TFrmRelDevedores.Create(nil);
 FrmRelDevedores.QuickRep1.PreviewModal;
finally
 FrmRelDevedores.Release;
end;
end;

end.
