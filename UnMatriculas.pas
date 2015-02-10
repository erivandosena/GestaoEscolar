unit UnMatriculas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, ExtCtrls, Grids, DBGrids, DB,
  IBCustomDataSet, IBQuery, DBCtrls, DateUtils;

type
  TFrmMatriculas = class(TForm)
    Label10: TLabel;
    Label11: TLabel;
    DBGrid_Matriculas: TDBGrid;
    BtnFechar: TBitBtn;
    DS_Alunos: TDataSource;
    DBGrid_Alunos: TDBGrid;
    DS_GeraMatriculas: TDataSource;
    Btn_Matricular: TBitBtn;
    IBQuery_Alunos: TIBQuery;
    IBQuery_GeraMatriculas: TIBQuery;
    Btn_Remove: TBitBtn;
    IBQuery_EstornaMatricula: TIBQuery;
    Bevel1: TBevel;
    IBQuery_GeraMatriculasMATRICULA: TIBStringField;
    IBQuery_GeraMatriculasDATA_MATRICULA: TDateTimeField;
    IBQuery_GeraMatriculasANO_LETIVO: TIBStringField;
    IBQuery_GeraMatriculasCURSO: TIBStringField;
    IBQuery_GeraMatriculasSERIE: TIBStringField;
    IBQuery_GeraMatriculasTURNO: TIBStringField;
    IBQuery_GeraMatriculasTURMA: TIBStringField;
    IBQuery_GeraMatriculasNOME_ALUNO: TIBStringField;
    IBQuery_GeraMatriculasNOME_PAI: TIBStringField;
    IBQuery_GeraMatriculasNOME_MAE: TIBStringField;
    IBQuery_GeraMatriculasNOME_RESP: TIBStringField;
    IBQuery_GeraMatriculasCPF_RESP: TIBStringField;
    CBox_Curso: TComboBox;
    ComboBox_Serie: TComboBox;
    ComboBox_Turno: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ComboBox_Turma: TComboBox;
    Label_AnoLetivo: TLabel;
    IBQuery_GeraMatriculasESTAGIO: TIBStringField;
    Panel1: TGroupBox;
    RButton_Todos: TRadioButton;
    RButton_Curso: TRadioButton;
    RButton_Serie: TRadioButton;
    ComboBoxExibeSerie: TComboBox;
    ComboBoxExibeCurso: TComboBox;
    ComboBoxExibeTurno: TComboBox;
    ComboBoxExibeTurma: TComboBox;
    Label1: TLabel;
    Label7: TLabel;
    Edit1: TMaskEdit;
    Label8: TLabel;
    BtnOk: TBitBtn;
    Edit2: TEdit;
    Label9: TLabel;
    IBQuery_GeraMatriculasCG: TIntegerField;
    IBQuery_AlunosFOTO: TBlobField;
    IBQuery_AlunosNOME_ALUNO: TIBStringField;
    IBQuery_AlunosMATRICULA: TIBStringField;
    IBQuery_AlunosDATA_MATRICULA: TDateTimeField;
    IBQuery_AlunosANO_LETIVO: TIBStringField;
    IBQuery_AlunosCURSO: TIBStringField;
    IBQuery_AlunosSERIE: TIBStringField;
    IBQuery_AlunosTURNO: TIBStringField;
    IBQuery_AlunosTURMA: TIBStringField;
    IBQuery_AlunosSEXO: TIBStringField;
    IBQuery_AlunosDATA_NASCIMENTO: TDateTimeField;
    IBQuery_AlunosESCOLA_ANTERIOR: TIBStringField;
    IBQuery_AlunosCIDADE_ESCO_ANT: TIBStringField;
    IBQuery_AlunosESTADO_ESCO_ANT: TIBStringField;
    IBQuery_AlunosUF_ESCO_ANT: TIBStringField;
    IBQuery_AlunosNOME_PAI: TIBStringField;
    IBQuery_AlunosENDERECO_PAI: TIBStringField;
    IBQuery_AlunosBAIRRO_PAI: TIBStringField;
    IBQuery_AlunosCIDADE_PAI: TIBStringField;
    IBQuery_AlunosCEP_PAI: TIBStringField;
    IBQuery_AlunosESTADO_PAI: TIBStringField;
    IBQuery_AlunosUF_PAI: TIBStringField;
    IBQuery_AlunosTEL_PAI: TIBStringField;
    IBQuery_AlunosNOME_MAE: TIBStringField;
    IBQuery_AlunosENDERECO_MAE: TIBStringField;
    IBQuery_AlunosBAIRRO_MAE: TIBStringField;
    IBQuery_AlunosCIDADE_MAE: TIBStringField;
    IBQuery_AlunosCEP_MAE: TIBStringField;
    IBQuery_AlunosESTADO_MAE: TIBStringField;
    IBQuery_AlunosUF_MAE: TIBStringField;
    IBQuery_AlunosTEL_MAE: TIBStringField;
    IBQuery_AlunosNOME_RESP: TIBStringField;
    IBQuery_AlunosENDERECO_RESP: TIBStringField;
    IBQuery_AlunosBAIRRO_RESP: TIBStringField;
    IBQuery_AlunosCIDADE_RESP: TIBStringField;
    IBQuery_AlunosCEP_RESP: TIBStringField;
    IBQuery_AlunosESTADO_RESP: TIBStringField;
    IBQuery_AlunosUF_RESP: TIBStringField;
    IBQuery_AlunosTEL_RESP: TIBStringField;
    IBQuery_AlunosTEL_CEL_RESP: TIBStringField;
    IBQuery_AlunosRG_RESP: TIBStringField;
    IBQuery_AlunosCPF_RESP: TIBStringField;
    IBQuery_AlunosNATURALIDADE: TIBStringField;
    IBQuery_AlunosESTADO_NATURALIDADE: TIBStringField;
    procedure ComboBox_TurmaEnter(Sender: TObject);
    procedure ComboBox_TurnoEnter(Sender: TObject);
    procedure ComboBox_SerieEnter(Sender: TObject);
    procedure CBox_CursoEnter(Sender: TObject);
    procedure ComboBoxExibeSerieEnter(Sender: TObject);
    procedure ComboBoxExibeCursoEnter(Sender: TObject);
    procedure ComboBoxExibeTurnoEnter(Sender: TObject);
    procedure ComboBoxExibeTurmaEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
    procedure DBGrid_AlunosCellClick(Column: TColumn);
    procedure DBGrid_AlunosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid_AlunosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_MatriculasDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGrid_MatriculasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure Btn_MatricularClick(Sender: TObject);
    procedure Btn_RemoveClick(Sender: TObject);
    procedure ComboBoxExibeCursoKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBoxExibeSerieKeyPress(Sender: TObject; var Key: Char);
    procedure RButton_TodosClick(Sender: TObject);
    procedure RButton_CursoClick(Sender: TObject);
    procedure RButton_SerieClick(Sender: TObject);
    procedure ComboBoxExibeCursoChange(Sender: TObject);
    procedure ComboBoxExibeSerieChange(Sender: TObject);
    procedure DBGrid_AlunosKeyPress(Sender: TObject; var Key: Char);
    procedure CBox_CursoKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox_SerieKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox_TurnoKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure BtnOkClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    procedure AtualizaGerar;
  end;

var
  FrmMatriculas: TFrmMatriculas;
  ALetivo: Double;

implementation

uses UnDm, UnAlunos, UnPrincipal, UnLocalizar, UnDmSeleciona;

{$R *.dfm}

procedure TFrmMatriculas.FormShow(Sender: TObject);
begin
// SELECIONA OS ALUNOS PARA MATRICULAR
RButton_TodosClick(Nil);
AtualizaGerar;
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmMatriculas.Caption:= FrmMatriculas.Caption;
Exit;
end else
FrmMatriculas.Caption:= FrmMatriculas.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end;

procedure TFrmMatriculas.BtnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmMatriculas.DBGrid_AlunosCellClick(Column: TColumn);
begin
if IBQuery_AlunosANO_LETIVO.AsString = AnoLetivo then
begin
Btn_Matricular.Caption:= 'Matricular';
end else
Btn_Matricular.Caption:= 'Rematricular';
Dm.IBDS_ALUNOS.Locate('MATRICULA',IBQuery_AlunosMATRICULA.AsString, []);
CBox_Curso.Text:= IBQuery_AlunosCURSO.AsString;
ComboBox_Serie.Text:= IBQuery_AlunosSERIE.AsString;
ComboBox_Turno.Text:= IBQuery_AlunosTURNO.AsString;
ComboBox_Turma.Text:= IBQuery_AlunosTURMA.AsString;
Label_AnoLetivo.Caption:= AnoLetivo;
end;

procedure TFrmMatriculas.DBGrid_AlunosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if IBQuery_AlunosANO_LETIVO.AsString = AnoLetivo then
begin
Btn_Matricular.Caption:= 'Matricular';
end else
Btn_Matricular.Caption:= 'Rematricular';
Dm.IBDS_ALUNOS.Locate('MATRICULA',IBQuery_AlunosMATRICULA.AsString, []);
CBox_Curso.Text:= IBQuery_AlunosCURSO.AsString;
ComboBox_Serie.Text:= IBQuery_AlunosSERIE.AsString;
ComboBox_Turno.Text:= IBQuery_AlunosTURNO.AsString;
ComboBox_Turma.Text:= IBQuery_AlunosTURMA.AsString;
Label_AnoLetivo.Caption:= AnoLetivo;
end;

procedure TFrmMatriculas.DBGrid_AlunosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if not odd(IBQuery_Alunos.RecNo) then // se for impar
// se a célula não está selecionada
if not (gdSelected in State) then
begin
// define uma cor de fundo
DBGrid_Alunos.Canvas.Brush.Color:= clMoneyGreen;
DBGrid_Alunos.Canvas.FillRect(Rect); // pinta a célula
// pinta o texto padrão
DBGrid_Alunos.DefaultDrawDataCell(rect,column.Field,State);
end;
end;

procedure TFrmMatriculas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and not (ActiveControl is TMemo) then begin
// desabilita processamento posterior da tecla
  Key := #0;
  Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFrmMatriculas.DBGrid_MatriculasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if not odd(IBQuery_GeraMatriculas.RecNo) then // se for impar
// se a célula não está selecionada
if not (gdSelected in State) then
begin
// define uma cor de fundo
DBGrid_Matriculas.Canvas.Brush.Color:= clSkyBlue;
DBGrid_Matriculas.Canvas.FillRect(Rect); // pinta a célula
// pinta o texto padrão
DBGrid_Matriculas.DefaultDrawDataCell(rect,column.Field,State);
end;
end;

procedure TFrmMatriculas.DBGrid_MatriculasKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
Dm.IBDS_ALUNOS.Locate('MATRICULA',IBQuery_AlunosMATRICULA.AsString, []);
end;

procedure TFrmMatriculas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=Cafree;
end;

procedure TFrmMatriculas.FormCreate(Sender: TObject);
begin
Dm.IBDS_MATRICULAS.Close;
Dm.IBDS_MATRICULAS.Open;
Screen.Cursor := crHourGlass;
// SELECIONA OS MATRICULADOS
 IBQuery_GeraMatriculas.Close;
 IBQuery_GeraMatriculas.SQL.Clear;
 IBQuery_GeraMatriculas.SQL.Add('select MATRICULA, DATA_MATRICULA, ANO_LETIVO, CURSO, SERIE, TURNO, TURMA, NOME_ALUNO, NOME_PAI, NOME_MAE, NOME_RESP, CPF_RESP, ESTAGIO, CG from MATRICUL ');
 IBQuery_GeraMatriculas.SQL.Add('where ANO_LETIVO = :AnoLet ');
 IBQuery_GeraMatriculas.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_GeraMatriculas.SQL.Add('order by SERIE');
 IBQuery_GeraMatriculas.Prepare;
 IBQuery_GeraMatriculas.Open;
Screen.Cursor := crDefault;
end;

procedure TFrmMatriculas.Btn_MatricularClick(Sender: TObject);
begin
if CBox_Curso.Text = '' then
begin
CBox_Curso.SetFocus;
Exit;
end else
if ComboBox_Serie.Text = '' then
begin
ComboBox_Serie.SetFocus;
Exit;
end else
if ComboBox_Turno.Text = '' then
begin
ComboBox_Turno.SetFocus;
Exit;
end else
if ComboBox_Turma.Text = '' then
begin
ComboBox_Turma.SetFocus;
Exit;
end else
if not Dm.IBDS_ALUNOS.Locate('MATRICULA',IBQuery_AlunosMATRICULA.AsString,[]) then
begin
ShowMessage('Matrícula não encontrada no cadastro de alunos.');
Exit;
end else
Screen.Cursor := crSQLWait;
Dm.IBDS_ALUNOS.Edit;
Dm.IBDS_ALUNOS.FieldByName('ANO_LETIVO').AsString:= AnoLetivo;
Dm.IBDS_ALUNOS.FieldByName('CURSO').AsString:= CBox_Curso.Text;
Dm.IBDS_ALUNOS.FieldByName('SERIE').AsString:= ComboBox_Serie.Text;
Dm.IBDS_ALUNOS.FieldByName('TURNO').AsString:= ComboBox_Turno.Text;
Dm.IBDS_ALUNOS.FieldByName('TURMA').AsString:= ComboBox_Turma.Text;
Dm.IBDS_ALUNOS.FieldByName('SITUACAO_ALUNO').AsString:= 'MATRICULADO';
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_ALUNOS.Post;
Dm.IBDS_ALUNOS.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
Screen.Cursor := crHourGlass;
Dm.IBDS_MATRICULAS.Close;
Dm.IBDS_MATRICULAS.Open;
Dm.IBDS_MATRICULAS.Append;
Dm.IBDS_MATRICULAS.FieldByName('FOTO').Value:= IBQuery_AlunosFOTO.Value;
Dm.IBDS_MATRICULAS.FieldByName('NOME_ALUNO').AsString:= IBQuery_AlunosNOME_ALUNO.AsString;
Dm.IBDS_MATRICULAS.FieldByName('MATRICULA').AsString:= IBQuery_AlunosMATRICULA.AsString;
Dm.IBDS_MATRICULAS.FieldByName('DATA_MATRICULA').AsDateTime:= Data;
Dm.IBDS_MATRICULAS.FieldByName('ANO_LETIVO').AsString:= AnoLetivo;
Dm.IBDS_MATRICULAS.FieldByName('CURSO').AsString:= CBox_Curso.Text;
Dm.IBDS_MATRICULAS.FieldByName('SERIE').AsString:= ComboBox_Serie.Text;
Dm.IBDS_MATRICULAS.FieldByName('TURNO').AsString:= ComboBox_Turno.Text;
Dm.IBDS_MATRICULAS.FieldByName('TURMA').AsString:= ComboBox_Turma.Text;
Dm.IBDS_MATRICULAS.FieldByName('SEXO').AsString:= IBQuery_AlunosSEXO.AsString;
Dm.IBDS_MATRICULAS.FieldByName('DATA_NASCIMENTO').AsString:= IBQuery_AlunosDATA_NASCIMENTO.AsString;
Dm.IBDS_MATRICULAS.FieldByName('ESCOLA_ANTERIOR').AsString:= IBQuery_AlunosESCOLA_ANTERIOR.AsString;
Dm.IBDS_MATRICULAS.FieldByName('CIDADE_ESCO_ANT').AsString:= IBQuery_AlunosCIDADE_ESCO_ANT.AsString;
Dm.IBDS_MATRICULAS.FieldByName('ESTADO_ESCO_ANT').AsString:= IBQuery_AlunosESTADO_ESCO_ANT.AsString;
Dm.IBDS_MATRICULAS.FieldByName('UF_ESCO_ANT').AsString:= IBQuery_AlunosUF_ESCO_ANT.AsString;
Dm.IBDS_MATRICULAS.FieldByName('NOME_PAI').AsString:= IBQuery_AlunosNOME_PAI.AsString;
Dm.IBDS_MATRICULAS.FieldByName('ENDERECO_PAI').AsString:= IBQuery_AlunosENDERECO_PAI.AsString;
Dm.IBDS_MATRICULAS.FieldByName('BAIRRO_PAI').AsString:= IBQuery_AlunosBAIRRO_PAI.AsString;
Dm.IBDS_MATRICULAS.FieldByName('CIDADE_PAI').AsString:= IBQuery_AlunosCIDADE_PAI.AsString;
Dm.IBDS_MATRICULAS.FieldByName('CEP_PAI').AsString:= IBQuery_AlunosCEP_PAI.AsString;
Dm.IBDS_MATRICULAS.FieldByName('ESTADO_PAI').AsString:= IBQuery_AlunosESTADO_PAI.AsString;
Dm.IBDS_MATRICULAS.FieldByName('UF_PAI').AsString:= IBQuery_AlunosUF_PAI.AsString;
Dm.IBDS_MATRICULAS.FieldByName('TEL_PAI').AsString:= IBQuery_AlunosTEL_PAI.AsString;
Dm.IBDS_MATRICULAS.FieldByName('NOME_MAE').AsString:= IBQuery_AlunosNOME_MAE.AsString;
Dm.IBDS_MATRICULAS.FieldByName('ENDERECO_MAE').AsString:= IBQuery_AlunosENDERECO_MAE.AsString;
Dm.IBDS_MATRICULAS.FieldByName('BAIRRO_MAE').AsString:= IBQuery_AlunosBAIRRO_MAE.AsString;
Dm.IBDS_MATRICULAS.FieldByName('CIDADE_MAE').AsString:= IBQuery_AlunosCIDADE_MAE.AsString;
Dm.IBDS_MATRICULAS.FieldByName('CEP_MAE').AsString:= IBQuery_AlunosCEP_MAE.AsString;
Dm.IBDS_MATRICULAS.FieldByName('ESTADO_MAE').AsString:= IBQuery_AlunosESTADO_MAE.AsString;
Dm.IBDS_MATRICULAS.FieldByName('UF_MAE').AsString:= IBQuery_AlunosUF_MAE.AsString;
Dm.IBDS_MATRICULAS.FieldByName('TEL_MAE').AsString:= IBQuery_AlunosTEL_MAE.AsString;
Dm.IBDS_MATRICULAS.FieldByName('NOME_RESP').AsString:= IBQuery_AlunosNOME_RESP.AsString;
Dm.IBDS_MATRICULAS.FieldByName('ENDERECO_RESP').AsString:= IBQuery_AlunosENDERECO_RESP.AsString;
Dm.IBDS_MATRICULAS.FieldByName('BAIRRO_RESP').AsString:= IBQuery_AlunosBAIRRO_RESP.AsString;
Dm.IBDS_MATRICULAS.FieldByName('CIDADE_RESP').AsString:= IBQuery_AlunosCIDADE_RESP.AsString;
Dm.IBDS_MATRICULAS.FieldByName('CEP_RESP').AsString:= IBQuery_AlunosCEP_RESP.AsString;
Dm.IBDS_MATRICULAS.FieldByName('ESTADO_RESP').AsString:= IBQuery_AlunosESTADO_RESP.AsString;
Dm.IBDS_MATRICULAS.FieldByName('UF_RESP').AsString:= IBQuery_AlunosUF_RESP.AsString;
Dm.IBDS_MATRICULAS.FieldByName('TEL_RESP').AsString:= IBQuery_AlunosTEL_RESP.AsString;
Dm.IBDS_MATRICULAS.FieldByName('TEL_CEL_RESP').AsString:= IBQuery_AlunosTEL_CEL_RESP.AsString;
Dm.IBDS_MATRICULAS.FieldByName('RG_RESP').AsString:= IBQuery_AlunosRG_RESP.AsString;
Dm.IBDS_MATRICULAS.FieldByName('CPF_RESP').AsString:= IBQuery_AlunosCPF_RESP.AsString;
Dm.IBDS_MATRICULAS.FieldByName('NATURALIDADE').AsString:= IBQuery_AlunosNATURALIDADE.AsString;
Dm.IBDS_MATRICULAS.FieldByName('ESTADO_NATURALIDADE').AsString:= IBQuery_AlunosESTADO_NATURALIDADE.AsString;
Dm.IBDS_MATRICULAS.FieldByName('CG').AsInteger:= 0;
Dm.IBDS_MATRICULAS.FieldByName('CERT_IMPRESSO').AsInteger:= 0;
Dm.IBDS_MATRICULAS.FieldByName('SITUACAO_ALUNO').AsString:= 'MATRICULADO';
if IBQuery_AlunosANO_LETIVO.AsString = AnoLetivo then
begin
Dm.IBDS_MATRICULAS.FieldByName('ESTAGIO').AsString:= 'NOVATO';
end else
Dm.IBDS_MATRICULAS.FieldByName('ESTAGIO').AsString:= 'VETERANO';
Dm.IBDS_MATRICULAS.FieldByName('USUARIO').AsString:= Usuario;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_MATRICULAS.Post;
Dm.IBDS_MATRICULAS.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
// SELECIONA OS MATRICULADOS
 IBQuery_GeraMatriculas.Close;
 IBQuery_GeraMatriculas.SQL.Clear;
 IBQuery_GeraMatriculas.SQL.Add('select MATRICULA, DATA_MATRICULA, ANO_LETIVO, CURSO, SERIE, TURNO, TURMA, NOME_ALUNO, NOME_PAI, NOME_MAE, NOME_RESP, CPF_RESP, ESTAGIO, CG from MATRICUL ');
 IBQuery_GeraMatriculas.SQL.Add('where ANO_LETIVO = :AnoLet ');
 IBQuery_GeraMatriculas.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_GeraMatriculas.SQL.Add('order by SERIE');
 IBQuery_GeraMatriculas.Prepare;
 IBQuery_GeraMatriculas.Open;
AtualizaGerar;
if RButton_Todos.Checked = True then
begin
// SELECIONA OS ALUNOS PARA MATRICULAR
 with IBQuery_Alunos do
begin
Screen.Cursor := crSQLWait;
Close;
UnPrepare;
SQL.Clear;
SQL.Add('select FOTO, NOME_ALUNO, MATRICULA, DATA_MATRICULA, ANO_LETIVO, CURSO, SERIE, TURNO, TURMA,');
SQL.Add('SEXO, DATA_NASCIMENTO, ESCOLA_ANTERIOR, CIDADE_ESCO_ANT, ESTADO_ESCO_ANT, UF_ESCO_ANT,');
SQL.Add('NOME_PAI, ENDERECO_PAI, BAIRRO_PAI, CIDADE_PAI, CEP_PAI, ESTADO_PAI, UF_PAI, TEL_PAI,');
SQL.Add('NOME_MAE, ENDERECO_MAE, BAIRRO_MAE, CIDADE_MAE, CEP_MAE, ESTADO_MAE, UF_MAE, TEL_MAE,');
SQL.Add('NOME_RESP, ENDERECO_RESP, BAIRRO_RESP, CIDADE_RESP, CEP_RESP, ESTADO_RESP, UF_RESP,');
SQL.Add('TEL_RESP, TEL_CEL_RESP, RG_RESP, CPF_RESP, NATURALIDADE, ESTADO_NATURALIDADE from ALUNOS');
SQL.Add('where SITUACAO_ALUNO = :Pre and ANO_LETIVO = :Ano2');
SQL.Add('union all');
SQL.Add('select FOTO, NOME_ALUNO, MATRICULA, DATA_MATRICULA, ANO_LETIVO, CURSO, SERIE, TURNO, TURMA,');
SQL.Add('SEXO, DATA_NASCIMENTO, ESCOLA_ANTERIOR, CIDADE_ESCO_ANT, ESTADO_ESCO_ANT, UF_ESCO_ANT,');
SQL.Add('NOME_PAI, ENDERECO_PAI, BAIRRO_PAI, CIDADE_PAI, CEP_PAI, ESTADO_PAI, UF_PAI, TEL_PAI,');
SQL.Add('NOME_MAE, ENDERECO_MAE, BAIRRO_MAE, CIDADE_MAE, CEP_MAE, ESTADO_MAE, UF_MAE, TEL_MAE,');
SQL.Add('NOME_RESP, ENDERECO_RESP, BAIRRO_RESP, CIDADE_RESP, CEP_RESP, ESTADO_RESP, UF_RESP,');
SQL.Add('TEL_RESP, TEL_CEL_RESP, RG_RESP, CPF_RESP, NATURALIDADE, ESTADO_NATURALIDADE from MATRICUL A');
SQL.Add('where SITUACAO_ALUNO = :Situacao and ANO_LETIVO = :Ano1 and');
SQL.Add('not exists');
SQL.Add('( select FOTO, NOME_ALUNO, MATRICULA, DATA_MATRICULA, ANO_LETIVO, CURSO, SERIE, TURNO, TURMA,');
SQL.Add('SEXO, DATA_NASCIMENTO, ESCOLA_ANTERIOR, CIDADE_ESCO_ANT, ESTADO_ESCO_ANT, UF_ESCO_ANT,');
SQL.Add('NOME_PAI, ENDERECO_PAI, BAIRRO_PAI, CIDADE_PAI, CEP_PAI, ESTADO_PAI, UF_PAI, TEL_PAI,');
SQL.Add('NOME_MAE, ENDERECO_MAE, BAIRRO_MAE, CIDADE_MAE, CEP_MAE, ESTADO_MAE, UF_MAE, TEL_MAE,');
SQL.Add('NOME_RESP, ENDERECO_RESP, BAIRRO_RESP, CIDADE_RESP, CEP_RESP, ESTADO_RESP, UF_RESP,');
SQL.Add('TEL_RESP, TEL_CEL_RESP, RG_RESP, CPF_RESP, NATURALIDADE, ESTADO_NATURALIDADE, SITUACAO_ALUNO from MATRICUL');
SQL.Add('where MATRICULA = A.MATRICULA and ANO_LETIVO = :Ano2 and SITUACAO_ALUNO = :Situacao)');
ParamByName('Pre').AsString:= 'PRÉ-MATRICULADO';
ParamByName('Situacao').AsString:= 'MATRICULADO';
ParamByName('Ano1').AsString:= FormatDateTime('yyyy',(IncYear(Data,-1)));
ParamByName('Ano2').AsString:= AnoLetivo;
//SQL.Add('order by NOME_ALUNO');
Prepare;
Open;
Screen.Cursor := crDefault;
end;
end else
if RButton_Curso.Checked = True then
begin
// SELECIONA OS ALUNOS PARA MATRICULAR
with IBQuery_Alunos do
begin
Screen.Cursor := crSQLWait;
Close;
UnPrepare;
SQL.Clear;
SQL.Add('select FOTO, NOME_ALUNO, MATRICULA, DATA_MATRICULA, ANO_LETIVO, CURSO, SERIE, TURNO, TURMA,');
SQL.Add('SEXO, DATA_NASCIMENTO, ESCOLA_ANTERIOR, CIDADE_ESCO_ANT, ESTADO_ESCO_ANT, UF_ESCO_ANT,');
SQL.Add('NOME_PAI, ENDERECO_PAI, BAIRRO_PAI, CIDADE_PAI, CEP_PAI, ESTADO_PAI, UF_PAI, TEL_PAI,');
SQL.Add('NOME_MAE, ENDERECO_MAE, BAIRRO_MAE, CIDADE_MAE, CEP_MAE, ESTADO_MAE, UF_MAE, TEL_MAE,');
SQL.Add('NOME_RESP, ENDERECO_RESP, BAIRRO_RESP, CIDADE_RESP, CEP_RESP, ESTADO_RESP, UF_RESP,');
SQL.Add('TEL_RESP, TEL_CEL_RESP, RG_RESP, CPF_RESP, NATURALIDADE, ESTADO_NATURALIDADE from ALUNOS');
SQL.Add('where SITUACAO_ALUNO = :Pre and CURSO =:Curs and ANO_LETIVO = :Ano2');
SQL.Add('union all');
SQL.Add('select FOTO, NOME_ALUNO, MATRICULA, DATA_MATRICULA, ANO_LETIVO, CURSO, SERIE, TURNO, TURMA,');
SQL.Add('SEXO, DATA_NASCIMENTO, ESCOLA_ANTERIOR, CIDADE_ESCO_ANT, ESTADO_ESCO_ANT, UF_ESCO_ANT,');
SQL.Add('NOME_PAI, ENDERECO_PAI, BAIRRO_PAI, CIDADE_PAI, CEP_PAI, ESTADO_PAI, UF_PAI, TEL_PAI,');
SQL.Add('NOME_MAE, ENDERECO_MAE, BAIRRO_MAE, CIDADE_MAE, CEP_MAE, ESTADO_MAE, UF_MAE, TEL_MAE,');
SQL.Add('NOME_RESP, ENDERECO_RESP, BAIRRO_RESP, CIDADE_RESP, CEP_RESP, ESTADO_RESP, UF_RESP,');
SQL.Add('TEL_RESP, TEL_CEL_RESP, RG_RESP, CPF_RESP, NATURALIDADE, ESTADO_NATURALIDADE from MATRICUL A');
SQL.Add('where SITUACAO_ALUNO = :Situacao and ANO_LETIVO = :Ano1 and CURSO =:Curs and');
SQL.Add('not exists');
SQL.Add('( select FOTO, NOME_ALUNO, MATRICULA, DATA_MATRICULA, ANO_LETIVO, CURSO, SERIE, TURNO, TURMA,');
SQL.Add('SEXO, DATA_NASCIMENTO, ESCOLA_ANTERIOR, CIDADE_ESCO_ANT, ESTADO_ESCO_ANT, UF_ESCO_ANT,');
SQL.Add('NOME_PAI, ENDERECO_PAI, BAIRRO_PAI, CIDADE_PAI, CEP_PAI, ESTADO_PAI, UF_PAI, TEL_PAI,');
SQL.Add('NOME_MAE, ENDERECO_MAE, BAIRRO_MAE, CIDADE_MAE, CEP_MAE, ESTADO_MAE, UF_MAE, TEL_MAE,');
SQL.Add('NOME_RESP, ENDERECO_RESP, BAIRRO_RESP, CIDADE_RESP, CEP_RESP, ESTADO_RESP, UF_RESP,');
SQL.Add('TEL_RESP, TEL_CEL_RESP, RG_RESP, CPF_RESP, NATURALIDADE, ESTADO_NATURALIDADE, SITUACAO_ALUNO from MATRICUL');
SQL.Add('where MATRICULA = A.MATRICULA and ANO_LETIVO = :Ano2 and SITUACAO_ALUNO = :Situacao and CURSO =:Curs)');
ParamByName('Pre').AsString:= 'PRÉ-MATRICULADO';
ParamByName('Situacao').AsString:= 'MATRICULADO';
ParamByName('Ano1').AsString:= FormatDateTime('yyyy',(IncYear(Data,-1)));
ParamByName('Ano2').AsString:= AnoLetivo;
ParamByName('Curs').AsString:= ComboBoxExibeCurso.Text;
//SQL.Add('order by NOME_ALUNO');
Prepare;
Open;
Screen.Cursor := crDefault;
end;
end else
if RButton_Serie.Checked = True then
begin
// SELECIONA OS ALUNOS PARA MATRICULAR
with IBQuery_Alunos do
begin
Screen.Cursor := crSQLWait;
Close;
UnPrepare;
SQL.Clear;
SQL.Add('select FOTO, NOME_ALUNO, MATRICULA, DATA_MATRICULA, ANO_LETIVO, CURSO, SERIE, TURNO, TURMA,');
SQL.Add('SEXO, DATA_NASCIMENTO, ESCOLA_ANTERIOR, CIDADE_ESCO_ANT, ESTADO_ESCO_ANT, UF_ESCO_ANT,');
SQL.Add('NOME_PAI, ENDERECO_PAI, BAIRRO_PAI, CIDADE_PAI, CEP_PAI, ESTADO_PAI, UF_PAI, TEL_PAI,');
SQL.Add('NOME_MAE, ENDERECO_MAE, BAIRRO_MAE, CIDADE_MAE, CEP_MAE, ESTADO_MAE, UF_MAE, TEL_MAE,');
SQL.Add('NOME_RESP, ENDERECO_RESP, BAIRRO_RESP, CIDADE_RESP, CEP_RESP, ESTADO_RESP, UF_RESP,');
SQL.Add('TEL_RESP, TEL_CEL_RESP, RG_RESP, CPF_RESP, NATURALIDADE, ESTADO_NATURALIDADE from ALUNOS');
SQL.Add('where SITUACAO_ALUNO = :Pre and SERIE =:Seri and TURNO =:Turn and TURMA =:Turm and ANO_LETIVO = :Ano2');
SQL.Add('union all');
SQL.Add('select FOTO, NOME_ALUNO, MATRICULA, DATA_MATRICULA, ANO_LETIVO, CURSO, SERIE, TURNO, TURMA,');
SQL.Add('SEXO, DATA_NASCIMENTO, ESCOLA_ANTERIOR, CIDADE_ESCO_ANT, ESTADO_ESCO_ANT, UF_ESCO_ANT,');
SQL.Add('NOME_PAI, ENDERECO_PAI, BAIRRO_PAI, CIDADE_PAI, CEP_PAI, ESTADO_PAI, UF_PAI, TEL_PAI,');
SQL.Add('NOME_MAE, ENDERECO_MAE, BAIRRO_MAE, CIDADE_MAE, CEP_MAE, ESTADO_MAE, UF_MAE, TEL_MAE,');
SQL.Add('NOME_RESP, ENDERECO_RESP, BAIRRO_RESP, CIDADE_RESP, CEP_RESP, ESTADO_RESP, UF_RESP,');
SQL.Add('TEL_RESP, TEL_CEL_RESP, RG_RESP, CPF_RESP, NATURALIDADE, ESTADO_NATURALIDADE from MATRICUL A');
SQL.Add('where SITUACAO_ALUNO = :Situacao and ANO_LETIVO = :Ano1 and SERIE =:Seri and TURNO =:Turn and TURMA =:Turm and');
SQL.Add('not exists');
SQL.Add('( select FOTO, NOME_ALUNO, MATRICULA, DATA_MATRICULA, ANO_LETIVO, CURSO, SERIE, TURNO, TURMA,');
SQL.Add('SEXO, DATA_NASCIMENTO, ESCOLA_ANTERIOR, CIDADE_ESCO_ANT, ESTADO_ESCO_ANT, UF_ESCO_ANT,');
SQL.Add('NOME_PAI, ENDERECO_PAI, BAIRRO_PAI, CIDADE_PAI, CEP_PAI, ESTADO_PAI, UF_PAI, TEL_PAI,');
SQL.Add('NOME_MAE, ENDERECO_MAE, BAIRRO_MAE, CIDADE_MAE, CEP_MAE, ESTADO_MAE, UF_MAE, TEL_MAE,');
SQL.Add('NOME_RESP, ENDERECO_RESP, BAIRRO_RESP, CIDADE_RESP, CEP_RESP, ESTADO_RESP, UF_RESP,');
SQL.Add('TEL_RESP, TEL_CEL_RESP, RG_RESP, CPF_RESP, NATURALIDADE, ESTADO_NATURALIDADE, SITUACAO_ALUNO from MATRICUL');
SQL.Add('where MATRICULA = A.MATRICULA and ANO_LETIVO = :Ano2 and SITUACAO_ALUNO = :Situacao and SERIE =:Seri and TURNO =:Turn and TURMA =:Turm)');
ParamByName('Pre').AsString:= 'PRÉ-MATRICULADO';
ParamByName('Situacao').AsString:= 'MATRICULADO';
ParamByName('Ano1').AsString:= FormatDateTime('yyyy',(IncYear(Data,-1)));
ParamByName('Ano2').AsString:= AnoLetivo;
ParamByName('Seri').AsString:= ComboBoxExibeSerie.Text;
ParamByName('Turn').AsString:= ComboBoxExibeTurno.Text;
ParamByName('Turm').AsString:= ComboBoxExibeTurma.Text;
//SQL.Add('order by NOME_ALUNO');
Prepare;
Open;
Screen.Cursor := crDefault;
end;
end;
CBox_Curso.Text:= '';
ComboBox_Serie.Text:= '';
ComboBox_Turno.Text:= '';
ComboBox_Turma.Text:= '';
Label_AnoLetivo.Caption:= '';
Screen.Cursor := crDefault;
If not DBGrid_Alunos.Enabled = False then
begin
DBGrid_Alunos.SetFocus;
DBGrid_AlunosCellClick(Nil);
end;
end;

procedure TFrmMatriculas.Btn_RemoveClick(Sender: TObject);
begin
Screen.Cursor := crHourGlass;
if not Dm.IBDS_ALUNOS.Locate('MATRICULA',IBQuery_GeraMatriculasMATRICULA.AsString,[]) then
begin
ShowMessage('Matrícula não encontrada no cadastro de alunos.');
Screen.Cursor := crDefault;
Exit;
end else
Dm.IBDS_ALUNOS.Edit;
ALetivo:= StrToFloat(Dm.IBDS_ALUNOS.FieldByName('ANO_LETIVO').AsString);
if IBQuery_GeraMatriculasESTAGIO.AsString = 'VETERANO' then
Dm.IBDS_ALUNOS.FieldByName('ANO_LETIVO').AsString:= FloatToStr(ALetivo - 1)
else
Dm.IBDS_ALUNOS.FieldByName('ANO_LETIVO').AsString:= FloatToStr(ALetivo);
Dm.IBDS_ALUNOS.FieldByName('SITUACAO_ALUNO').AsString:= 'PRÉ-MATRICULADO';
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_ALUNOS.Post;
Dm.IBDS_ALUNOS.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
// APAGA A MATRÍCULA SELECIONADA
IBQuery_EstornaMatricula.Close;
IBQuery_EstornaMatricula.SQL.Clear;
IBQuery_EstornaMatricula.SQL.Add('Delete from MATRICUL ');
IBQuery_EstornaMatricula.SQL.Add('where MATRICULA =:Mat and ANO_LETIVO =:AnoLet ');
IBQuery_EstornaMatricula.ParamByName('Mat').AsString:= IBQuery_GeraMatriculasMATRICULA.AsString;
IBQuery_EstornaMatricula.ParamByName('AnoLet').AsString:= AnoLetivo;
IBQuery_EstornaMatricula.ExecSQL;
// SELECIONA OS MATRICULADOS
 IBQuery_GeraMatriculas.Close;
 IBQuery_GeraMatriculas.SQL.Clear;
 IBQuery_GeraMatriculas.SQL.Add('select MATRICULA, DATA_MATRICULA, ANO_LETIVO, CURSO, SERIE, TURNO, TURMA, NOME_ALUNO, NOME_PAI, NOME_MAE, NOME_RESP, CPF_RESP, ESTAGIO, CG from MATRICUL ');
 IBQuery_GeraMatriculas.SQL.Add('where ANO_LETIVO = :AnoLet ');
 IBQuery_GeraMatriculas.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_GeraMatriculas.SQL.Add('order by SERIE');
 IBQuery_GeraMatriculas.Prepare;
 IBQuery_GeraMatriculas.Open;
AtualizaGerar;
// SELECIONA OS ALUNOS PARA MATRICULAR
if RButton_Todos.Checked = True then
begin
// SELECIONA OS ALUNOS PARA MATRICULAR
 with IBQuery_Alunos do
begin
Screen.Cursor := crSQLWait;
Close;
UnPrepare;
SQL.Clear;
SQL.Add('select FOTO, NOME_ALUNO, MATRICULA, DATA_MATRICULA, ANO_LETIVO, CURSO, SERIE, TURNO, TURMA,');
SQL.Add('SEXO, DATA_NASCIMENTO, ESCOLA_ANTERIOR, CIDADE_ESCO_ANT, ESTADO_ESCO_ANT, UF_ESCO_ANT,');
SQL.Add('NOME_PAI, ENDERECO_PAI, BAIRRO_PAI, CIDADE_PAI, CEP_PAI, ESTADO_PAI, UF_PAI, TEL_PAI,');
SQL.Add('NOME_MAE, ENDERECO_MAE, BAIRRO_MAE, CIDADE_MAE, CEP_MAE, ESTADO_MAE, UF_MAE, TEL_MAE,');
SQL.Add('NOME_RESP, ENDERECO_RESP, BAIRRO_RESP, CIDADE_RESP, CEP_RESP, ESTADO_RESP, UF_RESP,');
SQL.Add('TEL_RESP, TEL_CEL_RESP, RG_RESP, CPF_RESP, NATURALIDADE, ESTADO_NATURALIDADE from ALUNOS');
SQL.Add('where SITUACAO_ALUNO = :Pre and ANO_LETIVO = :Ano2');
SQL.Add('union all');
SQL.Add('select FOTO, NOME_ALUNO, MATRICULA, DATA_MATRICULA, ANO_LETIVO, CURSO, SERIE, TURNO, TURMA,');
SQL.Add('SEXO, DATA_NASCIMENTO, ESCOLA_ANTERIOR, CIDADE_ESCO_ANT, ESTADO_ESCO_ANT, UF_ESCO_ANT,');
SQL.Add('NOME_PAI, ENDERECO_PAI, BAIRRO_PAI, CIDADE_PAI, CEP_PAI, ESTADO_PAI, UF_PAI, TEL_PAI,');
SQL.Add('NOME_MAE, ENDERECO_MAE, BAIRRO_MAE, CIDADE_MAE, CEP_MAE, ESTADO_MAE, UF_MAE, TEL_MAE,');
SQL.Add('NOME_RESP, ENDERECO_RESP, BAIRRO_RESP, CIDADE_RESP, CEP_RESP, ESTADO_RESP, UF_RESP,');
SQL.Add('TEL_RESP, TEL_CEL_RESP, RG_RESP, CPF_RESP, NATURALIDADE, ESTADO_NATURALIDADE from MATRICUL A');
SQL.Add('where SITUACAO_ALUNO = :Situacao and ANO_LETIVO = :Ano1 and');
SQL.Add('not exists');
SQL.Add('( select FOTO, NOME_ALUNO, MATRICULA, DATA_MATRICULA, ANO_LETIVO, CURSO, SERIE, TURNO, TURMA,');
SQL.Add('SEXO, DATA_NASCIMENTO, ESCOLA_ANTERIOR, CIDADE_ESCO_ANT, ESTADO_ESCO_ANT, UF_ESCO_ANT,');
SQL.Add('NOME_PAI, ENDERECO_PAI, BAIRRO_PAI, CIDADE_PAI, CEP_PAI, ESTADO_PAI, UF_PAI, TEL_PAI,');
SQL.Add('NOME_MAE, ENDERECO_MAE, BAIRRO_MAE, CIDADE_MAE, CEP_MAE, ESTADO_MAE, UF_MAE, TEL_MAE,');
SQL.Add('NOME_RESP, ENDERECO_RESP, BAIRRO_RESP, CIDADE_RESP, CEP_RESP, ESTADO_RESP, UF_RESP,');
SQL.Add('TEL_RESP, TEL_CEL_RESP, RG_RESP, CPF_RESP, NATURALIDADE, ESTADO_NATURALIDADE, SITUACAO_ALUNO from MATRICUL');
SQL.Add('where MATRICULA = A.MATRICULA and ANO_LETIVO = :Ano2 and SITUACAO_ALUNO = :Situacao)');
ParamByName('Pre').AsString:= 'PRÉ-MATRICULADO';
ParamByName('Situacao').AsString:= 'MATRICULADO';
ParamByName('Ano1').AsString:= FormatDateTime('yyyy',(IncYear(Data,-1)));
ParamByName('Ano2').AsString:= AnoLetivo;
//SQL.Add('order by NOME_ALUNO');
Prepare;
Open;
Screen.Cursor := crDefault;
end;
end else
if RButton_Curso.Checked = True then
begin
// SELECIONA OS ALUNOS PARA MATRICULAR
with IBQuery_Alunos do
begin
Screen.Cursor := crSQLWait;
Close;
UnPrepare;
SQL.Clear;
SQL.Add('select FOTO, NOME_ALUNO, MATRICULA, DATA_MATRICULA, ANO_LETIVO, CURSO, SERIE, TURNO, TURMA,');
SQL.Add('SEXO, DATA_NASCIMENTO, ESCOLA_ANTERIOR, CIDADE_ESCO_ANT, ESTADO_ESCO_ANT, UF_ESCO_ANT,');
SQL.Add('NOME_PAI, ENDERECO_PAI, BAIRRO_PAI, CIDADE_PAI, CEP_PAI, ESTADO_PAI, UF_PAI, TEL_PAI,');
SQL.Add('NOME_MAE, ENDERECO_MAE, BAIRRO_MAE, CIDADE_MAE, CEP_MAE, ESTADO_MAE, UF_MAE, TEL_MAE,');
SQL.Add('NOME_RESP, ENDERECO_RESP, BAIRRO_RESP, CIDADE_RESP, CEP_RESP, ESTADO_RESP, UF_RESP,');
SQL.Add('TEL_RESP, TEL_CEL_RESP, RG_RESP, CPF_RESP, NATURALIDADE, ESTADO_NATURALIDADE from ALUNOS');
SQL.Add('where SITUACAO_ALUNO = :Pre and CURSO =:Curs and ANO_LETIVO = :Ano2');
SQL.Add('union all');
SQL.Add('select FOTO, NOME_ALUNO, MATRICULA, DATA_MATRICULA, ANO_LETIVO, CURSO, SERIE, TURNO, TURMA,');
SQL.Add('SEXO, DATA_NASCIMENTO, ESCOLA_ANTERIOR, CIDADE_ESCO_ANT, ESTADO_ESCO_ANT, UF_ESCO_ANT,');
SQL.Add('NOME_PAI, ENDERECO_PAI, BAIRRO_PAI, CIDADE_PAI, CEP_PAI, ESTADO_PAI, UF_PAI, TEL_PAI,');
SQL.Add('NOME_MAE, ENDERECO_MAE, BAIRRO_MAE, CIDADE_MAE, CEP_MAE, ESTADO_MAE, UF_MAE, TEL_MAE,');
SQL.Add('NOME_RESP, ENDERECO_RESP, BAIRRO_RESP, CIDADE_RESP, CEP_RESP, ESTADO_RESP, UF_RESP,');
SQL.Add('TEL_RESP, TEL_CEL_RESP, RG_RESP, CPF_RESP, NATURALIDADE, ESTADO_NATURALIDADE from MATRICUL A');
SQL.Add('where SITUACAO_ALUNO = :Situacao and ANO_LETIVO = :Ano1 and CURSO =:Curs and');
SQL.Add('not exists');
SQL.Add('( select FOTO, NOME_ALUNO, MATRICULA, DATA_MATRICULA, ANO_LETIVO, CURSO, SERIE, TURNO, TURMA,');
SQL.Add('SEXO, DATA_NASCIMENTO, ESCOLA_ANTERIOR, CIDADE_ESCO_ANT, ESTADO_ESCO_ANT, UF_ESCO_ANT,');
SQL.Add('NOME_PAI, ENDERECO_PAI, BAIRRO_PAI, CIDADE_PAI, CEP_PAI, ESTADO_PAI, UF_PAI, TEL_PAI,');
SQL.Add('NOME_MAE, ENDERECO_MAE, BAIRRO_MAE, CIDADE_MAE, CEP_MAE, ESTADO_MAE, UF_MAE, TEL_MAE,');
SQL.Add('NOME_RESP, ENDERECO_RESP, BAIRRO_RESP, CIDADE_RESP, CEP_RESP, ESTADO_RESP, UF_RESP,');
SQL.Add('TEL_RESP, TEL_CEL_RESP, RG_RESP, CPF_RESP, NATURALIDADE, ESTADO_NATURALIDADE, SITUACAO_ALUNO from MATRICUL');
SQL.Add('where MATRICULA = A.MATRICULA and ANO_LETIVO = :Ano2 and SITUACAO_ALUNO = :Situacao and CURSO =:Curs)');
ParamByName('Pre').AsString:= 'PRÉ-MATRICULADO';
ParamByName('Situacao').AsString:= 'MATRICULADO';
ParamByName('Ano1').AsString:= FormatDateTime('yyyy',(IncYear(Data,-1)));
ParamByName('Ano2').AsString:= AnoLetivo;
ParamByName('Curs').AsString:= ComboBoxExibeCurso.Text;
//SQL.Add('order by NOME_ALUNO');
Prepare;
Open;
Screen.Cursor := crDefault;
end;
end else
if RButton_Serie.Checked = True then
begin
// SELECIONA OS ALUNOS PARA MATRICULAR
with IBQuery_Alunos do
begin
Screen.Cursor := crSQLWait;
Close;
UnPrepare;
SQL.Clear;
SQL.Add('select FOTO, NOME_ALUNO, MATRICULA, DATA_MATRICULA, ANO_LETIVO, CURSO, SERIE, TURNO, TURMA,');
SQL.Add('SEXO, DATA_NASCIMENTO, ESCOLA_ANTERIOR, CIDADE_ESCO_ANT, ESTADO_ESCO_ANT, UF_ESCO_ANT,');
SQL.Add('NOME_PAI, ENDERECO_PAI, BAIRRO_PAI, CIDADE_PAI, CEP_PAI, ESTADO_PAI, UF_PAI, TEL_PAI,');
SQL.Add('NOME_MAE, ENDERECO_MAE, BAIRRO_MAE, CIDADE_MAE, CEP_MAE, ESTADO_MAE, UF_MAE, TEL_MAE,');
SQL.Add('NOME_RESP, ENDERECO_RESP, BAIRRO_RESP, CIDADE_RESP, CEP_RESP, ESTADO_RESP, UF_RESP,');
SQL.Add('TEL_RESP, TEL_CEL_RESP, RG_RESP, CPF_RESP, NATURALIDADE, ESTADO_NATURALIDADE from ALUNOS');
SQL.Add('where SITUACAO_ALUNO = :Pre and SERIE =:Seri and TURNO =:Turn and TURMA =:Turm and ANO_LETIVO = :Ano2');
SQL.Add('union all');
SQL.Add('select FOTO, NOME_ALUNO, MATRICULA, DATA_MATRICULA, ANO_LETIVO, CURSO, SERIE, TURNO, TURMA,');
SQL.Add('SEXO, DATA_NASCIMENTO, ESCOLA_ANTERIOR, CIDADE_ESCO_ANT, ESTADO_ESCO_ANT, UF_ESCO_ANT,');
SQL.Add('NOME_PAI, ENDERECO_PAI, BAIRRO_PAI, CIDADE_PAI, CEP_PAI, ESTADO_PAI, UF_PAI, TEL_PAI,');
SQL.Add('NOME_MAE, ENDERECO_MAE, BAIRRO_MAE, CIDADE_MAE, CEP_MAE, ESTADO_MAE, UF_MAE, TEL_MAE,');
SQL.Add('NOME_RESP, ENDERECO_RESP, BAIRRO_RESP, CIDADE_RESP, CEP_RESP, ESTADO_RESP, UF_RESP,');
SQL.Add('TEL_RESP, TEL_CEL_RESP, RG_RESP, CPF_RESP, NATURALIDADE, ESTADO_NATURALIDADE from MATRICUL A');
SQL.Add('where SITUACAO_ALUNO = :Situacao and ANO_LETIVO = :Ano1 and SERIE =:Seri and TURNO =:Turn and TURMA =:Turm and');
SQL.Add('not exists');
SQL.Add('( select FOTO, NOME_ALUNO, MATRICULA, DATA_MATRICULA, ANO_LETIVO, CURSO, SERIE, TURNO, TURMA,');
SQL.Add('SEXO, DATA_NASCIMENTO, ESCOLA_ANTERIOR, CIDADE_ESCO_ANT, ESTADO_ESCO_ANT, UF_ESCO_ANT,');
SQL.Add('NOME_PAI, ENDERECO_PAI, BAIRRO_PAI, CIDADE_PAI, CEP_PAI, ESTADO_PAI, UF_PAI, TEL_PAI,');
SQL.Add('NOME_MAE, ENDERECO_MAE, BAIRRO_MAE, CIDADE_MAE, CEP_MAE, ESTADO_MAE, UF_MAE, TEL_MAE,');
SQL.Add('NOME_RESP, ENDERECO_RESP, BAIRRO_RESP, CIDADE_RESP, CEP_RESP, ESTADO_RESP, UF_RESP,');
SQL.Add('TEL_RESP, TEL_CEL_RESP, RG_RESP, CPF_RESP, NATURALIDADE, ESTADO_NATURALIDADE, SITUACAO_ALUNO from MATRICUL');
SQL.Add('where MATRICULA = A.MATRICULA and ANO_LETIVO = :Ano2 and SITUACAO_ALUNO = :Situacao and SERIE =:Seri and TURNO =:Turn and TURMA =:Turm)');
ParamByName('Pre').AsString:= 'PRÉ-MATRICULADO';
ParamByName('Situacao').AsString:= 'MATRICULADO';
ParamByName('Ano1').AsString:= FormatDateTime('yyyy',(IncYear(Data,-1)));
ParamByName('Ano2').AsString:= AnoLetivo;
ParamByName('Seri').AsString:= ComboBoxExibeSerie.Text;
ParamByName('Turn').AsString:= ComboBoxExibeTurno.Text;
ParamByName('Turm').AsString:= ComboBoxExibeTurma.Text;
//SQL.Add('order by NOME_ALUNO');
Prepare;
Open;
Screen.Cursor := crDefault;
end;
 end;
 Screen.Cursor := crDefault;
 if DBGrid_Matriculas.Enabled = True then
 begin
DBGrid_Matriculas.SetFocus;
end;
end;

procedure TFrmMatriculas.atualizaGerar;
begin
if DBGrid_Alunos.Fields[0].Text = '' then
begin
DBGrid_Alunos.Enabled:= False;
Btn_Matricular.Enabled:= False;
BtnFechar.SetFocus;
Exit;
end else
DBGrid_Alunos.Enabled:= True;
Btn_Matricular.Enabled:= True;
DBGrid_Alunos.SetFocus;
if DBGrid_Matriculas.Fields[0].Text = '' then
begin
DBGrid_Matriculas.Enabled:= False;
Btn_Remove.Enabled:= False;
Exit;
end else
DBGrid_Matriculas.Enabled:= True;
Btn_Remove.Enabled:= True;
end;

procedure TFrmMatriculas.ComboBoxExibeCursoKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then
begin
Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
ComboBoxExibeSerie.Text:= '';
ComboBoxExibeTurma.Text:= '';
ComboBoxExibeTurno.Text:= '';
Screen.Cursor := crHourGlass;
if RButton_Curso.Checked = True then
begin
// SELECIONA OS ALUNOS PARA MATRICULAR
with IBQuery_Alunos do
begin
Screen.Cursor := crSQLWait;
Close;
UnPrepare;
SQL.Clear;
SQL.Add('select FOTO, NOME_ALUNO, MATRICULA, DATA_MATRICULA, ANO_LETIVO, CURSO, SERIE, TURNO, TURMA,');
SQL.Add('SEXO, DATA_NASCIMENTO, ESCOLA_ANTERIOR, CIDADE_ESCO_ANT, ESTADO_ESCO_ANT, UF_ESCO_ANT,');
SQL.Add('NOME_PAI, ENDERECO_PAI, BAIRRO_PAI, CIDADE_PAI, CEP_PAI, ESTADO_PAI, UF_PAI, TEL_PAI,');
SQL.Add('NOME_MAE, ENDERECO_MAE, BAIRRO_MAE, CIDADE_MAE, CEP_MAE, ESTADO_MAE, UF_MAE, TEL_MAE,');
SQL.Add('NOME_RESP, ENDERECO_RESP, BAIRRO_RESP, CIDADE_RESP, CEP_RESP, ESTADO_RESP, UF_RESP,');
SQL.Add('TEL_RESP, TEL_CEL_RESP, RG_RESP, CPF_RESP, NATURALIDADE, ESTADO_NATURALIDADE from ALUNOS');
SQL.Add('where SITUACAO_ALUNO = :Pre and CURSO =:Curs and ANO_LETIVO = :Ano2');
SQL.Add('union all');
SQL.Add('select FOTO, NOME_ALUNO, MATRICULA, DATA_MATRICULA, ANO_LETIVO, CURSO, SERIE, TURNO, TURMA,');
SQL.Add('SEXO, DATA_NASCIMENTO, ESCOLA_ANTERIOR, CIDADE_ESCO_ANT, ESTADO_ESCO_ANT, UF_ESCO_ANT,');
SQL.Add('NOME_PAI, ENDERECO_PAI, BAIRRO_PAI, CIDADE_PAI, CEP_PAI, ESTADO_PAI, UF_PAI, TEL_PAI,');
SQL.Add('NOME_MAE, ENDERECO_MAE, BAIRRO_MAE, CIDADE_MAE, CEP_MAE, ESTADO_MAE, UF_MAE, TEL_MAE,');
SQL.Add('NOME_RESP, ENDERECO_RESP, BAIRRO_RESP, CIDADE_RESP, CEP_RESP, ESTADO_RESP, UF_RESP,');
SQL.Add('TEL_RESP, TEL_CEL_RESP, RG_RESP, CPF_RESP, NATURALIDADE, ESTADO_NATURALIDADE from MATRICUL A');
SQL.Add('where SITUACAO_ALUNO = :Situacao and ANO_LETIVO = :Ano1 and CURSO =:Curs and');
SQL.Add('not exists');
SQL.Add('( select FOTO, NOME_ALUNO, MATRICULA, DATA_MATRICULA, ANO_LETIVO, CURSO, SERIE, TURNO, TURMA,');
SQL.Add('SEXO, DATA_NASCIMENTO, ESCOLA_ANTERIOR, CIDADE_ESCO_ANT, ESTADO_ESCO_ANT, UF_ESCO_ANT,');
SQL.Add('NOME_PAI, ENDERECO_PAI, BAIRRO_PAI, CIDADE_PAI, CEP_PAI, ESTADO_PAI, UF_PAI, TEL_PAI,');
SQL.Add('NOME_MAE, ENDERECO_MAE, BAIRRO_MAE, CIDADE_MAE, CEP_MAE, ESTADO_MAE, UF_MAE, TEL_MAE,');
SQL.Add('NOME_RESP, ENDERECO_RESP, BAIRRO_RESP, CIDADE_RESP, CEP_RESP, ESTADO_RESP, UF_RESP,');
SQL.Add('TEL_RESP, TEL_CEL_RESP, RG_RESP, CPF_RESP, NATURALIDADE, ESTADO_NATURALIDADE, SITUACAO_ALUNO from MATRICUL');
SQL.Add('where MATRICULA = A.MATRICULA and ANO_LETIVO = :Ano2 and SITUACAO_ALUNO = :Situacao and CURSO =:Curs)');
ParamByName('Pre').AsString:= 'PRÉ-MATRICULADO';
ParamByName('Situacao').AsString:= 'MATRICULADO';
ParamByName('Ano1').AsString:= FormatDateTime('yyyy',(IncYear(Data,-1)));
ParamByName('Ano2').AsString:= AnoLetivo;
ParamByName('Curs').AsString:= ComboBoxExibeCurso.Text;
//SQL.Add('order by NOME_ALUNO');
Prepare;
Open;
Screen.Cursor := crDefault;
end;
 end;
 end;
Screen.Cursor := crDefault;
 if DBGrid_Alunos.Enabled = True then
 begin
DBGrid_Alunos.SetFocus;
end;
end;

procedure TFrmMatriculas.ComboBoxExibeSerieKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then
  begin
//  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
ComboBoxExibeCurso.Text:= '';
if ComboBoxExibeTurno.Text = '' then
begin
ComboBoxExibeTurno.SetFocus;
Exit;
end else
if ComboBoxExibeTurma.Text = '' then
begin
ComboBoxExibeTurma.SetFocus;
Exit;
end else
Screen.Cursor := crHourGlass;
if RButton_Serie.Checked = True then
begin
// SELECIONA OS ALUNOS PARA MATRICULAR
with IBQuery_Alunos do
begin
Screen.Cursor := crSQLWait;
Close;
UnPrepare;
SQL.Clear;
SQL.Add('select FOTO, NOME_ALUNO, MATRICULA, DATA_MATRICULA, ANO_LETIVO, CURSO, SERIE, TURNO, TURMA,');
SQL.Add('SEXO, DATA_NASCIMENTO, ESCOLA_ANTERIOR, CIDADE_ESCO_ANT, ESTADO_ESCO_ANT, UF_ESCO_ANT,');
SQL.Add('NOME_PAI, ENDERECO_PAI, BAIRRO_PAI, CIDADE_PAI, CEP_PAI, ESTADO_PAI, UF_PAI, TEL_PAI,');
SQL.Add('NOME_MAE, ENDERECO_MAE, BAIRRO_MAE, CIDADE_MAE, CEP_MAE, ESTADO_MAE, UF_MAE, TEL_MAE,');
SQL.Add('NOME_RESP, ENDERECO_RESP, BAIRRO_RESP, CIDADE_RESP, CEP_RESP, ESTADO_RESP, UF_RESP,');
SQL.Add('TEL_RESP, TEL_CEL_RESP, RG_RESP, CPF_RESP, NATURALIDADE, ESTADO_NATURALIDADE from ALUNOS');
SQL.Add('where SITUACAO_ALUNO = :Pre and SERIE =:Seri and TURNO =:Turn and TURMA =:Turm and ANO_LETIVO = :Ano2');
SQL.Add('union all');
SQL.Add('select FOTO, NOME_ALUNO, MATRICULA, DATA_MATRICULA, ANO_LETIVO, CURSO, SERIE, TURNO, TURMA,');
SQL.Add('SEXO, DATA_NASCIMENTO, ESCOLA_ANTERIOR, CIDADE_ESCO_ANT, ESTADO_ESCO_ANT, UF_ESCO_ANT,');
SQL.Add('NOME_PAI, ENDERECO_PAI, BAIRRO_PAI, CIDADE_PAI, CEP_PAI, ESTADO_PAI, UF_PAI, TEL_PAI,');
SQL.Add('NOME_MAE, ENDERECO_MAE, BAIRRO_MAE, CIDADE_MAE, CEP_MAE, ESTADO_MAE, UF_MAE, TEL_MAE,');
SQL.Add('NOME_RESP, ENDERECO_RESP, BAIRRO_RESP, CIDADE_RESP, CEP_RESP, ESTADO_RESP, UF_RESP,');
SQL.Add('TEL_RESP, TEL_CEL_RESP, RG_RESP, CPF_RESP, NATURALIDADE, ESTADO_NATURALIDADE from MATRICUL A');
SQL.Add('where SITUACAO_ALUNO = :Situacao and ANO_LETIVO = :Ano1 and SERIE =:Seri and TURNO =:Turn and TURMA =:Turm and');
SQL.Add('not exists');
SQL.Add('( select FOTO, NOME_ALUNO, MATRICULA, DATA_MATRICULA, ANO_LETIVO, CURSO, SERIE, TURNO, TURMA,');
SQL.Add('SEXO, DATA_NASCIMENTO, ESCOLA_ANTERIOR, CIDADE_ESCO_ANT, ESTADO_ESCO_ANT, UF_ESCO_ANT,');
SQL.Add('NOME_PAI, ENDERECO_PAI, BAIRRO_PAI, CIDADE_PAI, CEP_PAI, ESTADO_PAI, UF_PAI, TEL_PAI,');
SQL.Add('NOME_MAE, ENDERECO_MAE, BAIRRO_MAE, CIDADE_MAE, CEP_MAE, ESTADO_MAE, UF_MAE, TEL_MAE,');
SQL.Add('NOME_RESP, ENDERECO_RESP, BAIRRO_RESP, CIDADE_RESP, CEP_RESP, ESTADO_RESP, UF_RESP,');
SQL.Add('TEL_RESP, TEL_CEL_RESP, RG_RESP, CPF_RESP, NATURALIDADE, ESTADO_NATURALIDADE, SITUACAO_ALUNO from MATRICUL');
SQL.Add('where MATRICULA = A.MATRICULA and ANO_LETIVO = :Ano2 and SITUACAO_ALUNO = :Situacao and SERIE =:Seri and TURNO =:Turn and TURMA =:Turm)');
ParamByName('Pre').AsString:= 'PRÉ-MATRICULADO';
ParamByName('Situacao').AsString:= 'MATRICULADO';
ParamByName('Ano1').AsString:= FormatDateTime('yyyy',(IncYear(Data,-1)));
ParamByName('Ano2').AsString:= AnoLetivo;
ParamByName('Seri').AsString:= ComboBoxExibeSerie.Text;
ParamByName('Turn').AsString:= ComboBoxExibeTurno.Text;
ParamByName('Turm').AsString:= ComboBoxExibeTurma.Text;
//SQL.Add('order by NOME_ALUNO');
Prepare;
Open;
Screen.Cursor := crDefault;
end;
 end;
end;
Screen.Cursor := crDefault;
end;

procedure TFrmMatriculas.ComboBoxExibeTurmaEnter(Sender: TObject);
begin
with DmSeleciona.IBQ_AnoLetivo do
 begin
 Close;
 UnPrepare;
 SQL.Clear;
 SQL.Add('select distinct TURMA from ALUNOS ');
 SQL.Add('where SERIE = '+#39+ComboBoxExibeSerie.Text+#39);
 SQL.Add('order by TURMA');
 Prepare;
 Open;
// Adiciona dados ao combobox
ComboBoxExibeTurma.Clear;
While Not Eof do
  begin
  ComboBoxExibeTurma.Items.Add(FieldByName('TURMA').AsString);
  Next;
  end;
end;
end;

procedure TFrmMatriculas.ComboBoxExibeTurnoEnter(Sender: TObject);
begin
with DmSeleciona.IBQ_AnoLetivo do
 begin
 Close;
 UnPrepare;
 SQL.Clear;
 SQL.Add('select distinct TURNO from ALUNOS ');
 SQL.Add('where SERIE = '+#39+ComboBoxExibeSerie.Text+#39+' and TURMA = '+#39+ComboBoxExibeTurma.Text+#39);
 SQL.Add('order by TURNO');
 Prepare;
 Open;
// Adiciona dados ao combobox
ComboBoxExibeTurno.Clear;
While Not Eof do
  begin
  ComboBoxExibeTurno.Items.Add(FieldByName('TURNO').AsString);
  Next;
  end;
end;
end;

procedure TFrmMatriculas.RButton_TodosClick(Sender: TObject);
begin
ComboBoxExibeCurso.Text:= '';
ComboBoxExibeSerie.Text:= '';
ComboBoxExibeTurma.Text:= '';
ComboBoxExibeTurno.Text:= '';
Screen.Cursor := crHourGlass;
// SELECIONA OS ALUNOS PARA MATRICULAR
with IBQuery_Alunos do
begin
Screen.Cursor := crSQLWait;
Close;
UnPrepare;
SQL.Clear;
SQL.Add('select FOTO, NOME_ALUNO, MATRICULA, DATA_MATRICULA, ANO_LETIVO, CURSO, SERIE, TURNO, TURMA,');
SQL.Add('SEXO, DATA_NASCIMENTO, ESCOLA_ANTERIOR, CIDADE_ESCO_ANT, ESTADO_ESCO_ANT, UF_ESCO_ANT,');
SQL.Add('NOME_PAI, ENDERECO_PAI, BAIRRO_PAI, CIDADE_PAI, CEP_PAI, ESTADO_PAI, UF_PAI, TEL_PAI,');
SQL.Add('NOME_MAE, ENDERECO_MAE, BAIRRO_MAE, CIDADE_MAE, CEP_MAE, ESTADO_MAE, UF_MAE, TEL_MAE,');
SQL.Add('NOME_RESP, ENDERECO_RESP, BAIRRO_RESP, CIDADE_RESP, CEP_RESP, ESTADO_RESP, UF_RESP,');
SQL.Add('TEL_RESP, TEL_CEL_RESP, RG_RESP, CPF_RESP, NATURALIDADE, ESTADO_NATURALIDADE from ALUNOS');
SQL.Add('where SITUACAO_ALUNO = :Pre and ANO_LETIVO = :Ano2');
SQL.Add('union all');
SQL.Add('select FOTO, NOME_ALUNO, MATRICULA, DATA_MATRICULA, ANO_LETIVO, CURSO, SERIE, TURNO, TURMA,');
SQL.Add('SEXO, DATA_NASCIMENTO, ESCOLA_ANTERIOR, CIDADE_ESCO_ANT, ESTADO_ESCO_ANT, UF_ESCO_ANT,');
SQL.Add('NOME_PAI, ENDERECO_PAI, BAIRRO_PAI, CIDADE_PAI, CEP_PAI, ESTADO_PAI, UF_PAI, TEL_PAI,');
SQL.Add('NOME_MAE, ENDERECO_MAE, BAIRRO_MAE, CIDADE_MAE, CEP_MAE, ESTADO_MAE, UF_MAE, TEL_MAE,');
SQL.Add('NOME_RESP, ENDERECO_RESP, BAIRRO_RESP, CIDADE_RESP, CEP_RESP, ESTADO_RESP, UF_RESP,');
SQL.Add('TEL_RESP, TEL_CEL_RESP, RG_RESP, CPF_RESP, NATURALIDADE, ESTADO_NATURALIDADE from MATRICUL A');
SQL.Add('where SITUACAO_ALUNO = :Situacao and ANO_LETIVO = :Ano1 and');
SQL.Add('not exists');
SQL.Add('( select FOTO, NOME_ALUNO, MATRICULA, DATA_MATRICULA, ANO_LETIVO, CURSO, SERIE, TURNO, TURMA,');
SQL.Add('SEXO, DATA_NASCIMENTO, ESCOLA_ANTERIOR, CIDADE_ESCO_ANT, ESTADO_ESCO_ANT, UF_ESCO_ANT,');
SQL.Add('NOME_PAI, ENDERECO_PAI, BAIRRO_PAI, CIDADE_PAI, CEP_PAI, ESTADO_PAI, UF_PAI, TEL_PAI,');
SQL.Add('NOME_MAE, ENDERECO_MAE, BAIRRO_MAE, CIDADE_MAE, CEP_MAE, ESTADO_MAE, UF_MAE, TEL_MAE,');
SQL.Add('NOME_RESP, ENDERECO_RESP, BAIRRO_RESP, CIDADE_RESP, CEP_RESP, ESTADO_RESP, UF_RESP,');
SQL.Add('TEL_RESP, TEL_CEL_RESP, RG_RESP, CPF_RESP, NATURALIDADE, ESTADO_NATURALIDADE, SITUACAO_ALUNO from MATRICUL');
SQL.Add('where MATRICULA = A.MATRICULA and ANO_LETIVO = :Ano2 and SITUACAO_ALUNO = :Situacao)');
ParamByName('Pre').AsString:= 'PRÉ-MATRICULADO';
ParamByName('Situacao').AsString:= 'MATRICULADO';
ParamByName('Ano1').AsString:= FormatDateTime('yyyy',(IncYear(Data,-1)));
ParamByName('Ano2').AsString:= AnoLetivo;
//SQL.Add('order by NOME_ALUNO');
Prepare;
Open;
Screen.Cursor := crDefault;
end;
AtualizaGerar;
If not DBGrid_Alunos.Enabled = False then
begin
DBGrid_Alunos.SetFocus;
end;
end;

procedure TFrmMatriculas.RButton_CursoClick(Sender: TObject);
begin
ComboBoxExibeCurso.SetFocus;
end;

procedure TFrmMatriculas.RButton_SerieClick(Sender: TObject);
begin
ComboBoxExibeSerie.SetFocus;
end;

procedure TFrmMatriculas.ComboBoxExibeCursoChange(Sender: TObject);
begin
RButton_Curso.Checked:= True;
end;

procedure TFrmMatriculas.ComboBoxExibeCursoEnter(Sender: TObject);
begin
with DmSeleciona.IBQ_AnoLetivo do
 begin
 Close;
 UnPrepare;
 SQL.Clear;
 SQL.Add('select distinct CURSO from ALUNOS order by CURSO');
 Prepare;Open;
// Adiciona dados ao combobox
ComboBoxExibeCurso.Clear;
While Not Eof do
  begin
  ComboBoxExibeCurso.Items.Add(FieldByName('CURSO').AsString);
  Next;
  end;
end;
end;

procedure TFrmMatriculas.ComboBoxExibeSerieChange(Sender: TObject);
begin
RButton_Serie.Checked:= True;
end;

procedure TFrmMatriculas.ComboBoxExibeSerieEnter(Sender: TObject);
begin
with DmSeleciona.IBQ_AnoLetivo do
 begin
 Close;
 UnPrepare;
 SQL.Clear;
 SQL.Add('select distinct SERIE from ALUNOS order by SERIE');
 Prepare;
 Open;
// Adiciona dados ao combobox
ComboBoxExibeSerie.Clear;
While Not Eof do
  begin
  ComboBoxExibeSerie.Items.Add(FieldByName('SERIE').AsString);
  Next;
  end;
end;
end;

procedure TFrmMatriculas.DBGrid_AlunosKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
  CBox_Curso.SetFocus;
  end;
end;

procedure TFrmMatriculas.CBox_CursoEnter(Sender: TObject);
begin
with DmSeleciona.IBQ_AnoLetivo do
 begin
 Close;
 UnPrepare;
 SQL.Clear;
 SQL.Add('select distinct CURSO from ALUNOS order by CURSO');
 Prepare;Open;
// Adiciona dados ao combobox
CBox_Curso.Clear;
While Not Eof do
  begin
  CBox_Curso.Items.Add(FieldByName('CURSO').AsString);
  Next;
  end;
end;
end;

procedure TFrmMatriculas.CBox_CursoKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
  ComboBox_Serie.SetFocus;
  end;
end;

procedure TFrmMatriculas.ComboBox_SerieEnter(Sender: TObject);
begin
with DmSeleciona.IBQ_AnoLetivo do
 begin
 Close;
 UnPrepare;
 SQL.Clear;
 SQL.Add('select distinct SERIE from ALUNOS ');
 SQL.Add('where CURSO = '+#39+CBox_Curso.Text+#39);
 SQL.Add('order by SERIE');
 Prepare;
 Open;
// Adiciona dados ao combobox
ComboBox_Serie.Clear;
While Not Eof do
  begin
  ComboBox_Serie.Items.Add(FieldByName('SERIE').AsString);
  Next;
  end;
end;
end;

procedure TFrmMatriculas.ComboBox_SerieKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then
  begin
 // Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
  ComboBox_Turno.SetFocus;
  end;
end;

procedure TFrmMatriculas.ComboBox_TurnoEnter(Sender: TObject);
begin
with DmSeleciona.IBQ_AnoLetivo do
 begin
 Close;
 UnPrepare;
 SQL.Clear;
 SQL.Add('select distinct TURNO from ALUNOS ');
 SQL.Add('where SERIE = '+#39+ComboBox_Serie.Text+#39+' and TURMA = '+#39+ComboBox_Turma.Text+#39);
 SQL.Add('order by TURNO');
 Prepare;
 Open;
// Adiciona dados ao combobox
ComboBox_Turno.Clear;
While Not Eof do
  begin
  ComboBox_Turno.Items.Add(FieldByName('TURNO').AsString);
  Next;
  end;
end;
end;

procedure TFrmMatriculas.ComboBox_TurnoKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
  Btn_Matricular.SetFocus;
  end;
end;

procedure TFrmMatriculas.ComboBox_TurmaEnter(Sender: TObject);
begin
with DmSeleciona.IBQ_AnoLetivo do
 begin
 Close;
 UnPrepare;
 SQL.Clear;
 SQL.Add('select distinct TURMA from ALUNOS ');
 SQL.Add('where SERIE = '+#39+ComboBox_Serie.Text+#39);
 SQL.Add('order by TURMA');
 Prepare;
 Open;
// Adiciona dados ao combobox
ComboBox_Turma.Clear;
While Not Eof do
  begin
  ComboBox_Turma.Items.Add(FieldByName('TURMA').AsString);
  Next;
  end;
end;
end;

procedure TFrmMatriculas.Edit1Exit(Sender: TObject);
begin
if Edit1.Text = '' then
begin
Abort;
Exit;
end else
Screen.Cursor := crHourglass;
Edit2.Text:= '';
if not IBQuery_GeraMatriculas.Locate('NOME_ALUNO',Edit1.Text,[]) then
begin
ShowMessage('O nome "'+Edit1.Text+'" está incompleto ou a matrícula não existe. Tente novamente.');
Screen.Cursor := crDefault;
Edit1.SetFocus;
Exit;
end else
Btn_Remove.SetFocus;
Screen.Cursor := crDefault;
end;

procedure TFrmMatriculas.Edit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  theText: string;
  p: integer;
begin
  with Edit1 do
    case key of
      8, 13, 46, 37..40: ; // Se for backspace, enter, delete, ou setas, ignora...
      else
      begin
        p := SelStart;
        theText := copy(text, 0, p);
        if IBQuery_GeraMatriculas.Locate('NOME_ALUNO', theText, [loCaseInsensitive, loPartialKey]) then
        begin
          text := IBQuery_GeraMatriculas.FieldByName('NOME_ALUNO').AsString;
          SelStart := p;
          SelLength := length(text) - selStart;
       end;
   end;
  end;
end;

procedure TFrmMatriculas.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['0'..'9','-',#8,#13] ) then
begin
key:=#0;
end;
 if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
if Edit2.Text = '' then
begin
Edit2.SetFocus;
Exit;
end else
Edit2.Text:= FrmPrincipal.RetZero(Edit2.Text, 15);
Edit2.Text:= FrmLocalizar.FormataMat(Edit2.Text);
if Edit2.Text = '' then
begin
BtnOk.Enabled:=False;
end else
BtnOk.Enabled:=True;
if BtnOk.Enabled = True then
begin
BtnOk.SetFocus;
BtnOkClick(Nil);
end;
end;
end;

procedure TFrmMatriculas.BtnOkClick(Sender: TObject);
begin
Screen.Cursor := crHourglass;
Edit1.Text:= '';
if not IBQuery_GeraMatriculas.Locate('MATRICULA',Edit2.Text,[]) then
begin
ShowMessage('A matrícula Nº: "'+Edit2.Text+'" está incompleta ou é inválida. Tente novamente.');
Screen.Cursor := crDefault;
Edit2.SetFocus;
Exit;
end else
Screen.Cursor := crDefault;
end;

end.
