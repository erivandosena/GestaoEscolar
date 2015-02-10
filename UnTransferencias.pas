unit UnTransferencias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, StdCtrls, Grids, DBGrids, Buttons, Mask, DateUtils,
  DBCtrls;

type
  TFrmTransferencias = class(TForm)
    BtnFechar: TBitBtn;
    DS_Matriculado: TDataSource;
    IBQuery_Matriculado: TIBQuery;
    Panel1: TGroupBox;
    ComboBoxExibeSerie: TComboBox;
    ComboBoxExibeTurno: TComboBox;
    ComboBoxExibeTurma: TComboBox;
    Label1: TLabel;
    Label7: TLabel;
    Edit_Matricula: TEdit;
    GroupBox1: TGroupBox;
    Edit_Aluno: TMaskEdit;
    Label8: TLabel;
    Edit_Mat_Estorno: TEdit;
    Label9: TLabel;
    Btn_Envia: TBitBtn;
    Label10: TLabel;
    IBQuery_MatriculadoMATRICULA: TIBStringField;
    IBQuery_MatriculadoANO_LETIVO: TIBStringField;
    IBQuery_MatriculadoCURSO: TIBStringField;
    IBQuery_MatriculadoSERIE: TIBStringField;
    IBQuery_MatriculadoTURNO: TIBStringField;
    IBQuery_MatriculadoTURMA: TIBStringField;
    IBQuery_MatriculadoNOME_ALUNO: TIBStringField;
    IBQuery_MatriculadoSITUACAO_ALUNO: TIBStringField;
    IBQuery_Estorna: TIBQuery;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    IBStringField4: TIBStringField;
    IBStringField5: TIBStringField;
    IBStringField6: TIBStringField;
    IBStringField7: TIBStringField;
    IBStringField8: TIBStringField;
    DS_Estorna: TDataSource;
    DBGrid_Transferido: TDBGrid;
    Btn_Estorna: TBitBtn;
    ComboBox_Ano: TComboBox;
    Label3: TLabel;
    CBox_Opcao: TComboBox;
    Label4: TLabel;
    RButton_Serie: TLabel;
    RButton_Matricula: TLabel;
    CBox_AnoLetivoEstorno: TComboBox;
    Label5: TLabel;
    Label2: TLabel;
    DBGrid_Tranferencia: TDBGrid;
    Btn_Processar: TBitBtn;
    CBox_Motivo: TComboBox;
    CBox_Modalidade: TComboBox;
    Label6: TLabel;
    procedure Edit_MatriculaChange(Sender: TObject);
    procedure ComboBoxExibeSerieChange(Sender: TObject);
    procedure ComboBox_AnoKeyPress(Sender: TObject; var Key: Char);
    procedure CBox_OpcaoChange(Sender: TObject);
    procedure ComboBoxExibeTurnoKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBoxExibeTurmaKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_TransferidoKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_AlunoKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
    procedure DBGrid_TranferenciaDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure Btn_ProcessarClick(Sender: TObject);
    procedure Btn_EstornaClick(Sender: TObject);
    procedure Edit_MatriculaKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBoxExibeSerieKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox_SerieKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox_TurnoKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_AlunoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_Mat_EstornoKeyPress(Sender: TObject; var Key: Char);
    procedure Btn_EnviaClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    procedure AtualizaGerar;
  end;

var
  FrmTransferencias: TFrmTransferencias;

implementation

uses UnDm, UnPrincipal, UnLocalizar, UnBoletim;

{$R *.dfm}

procedure TFrmTransferencias.FormShow(Sender: TObject);
begin
FrmTransferencias.Top:=0;
FrmTransferencias.Left:=0;
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmTransferencias.Caption:= FrmTransferencias.Caption;
Exit;
end else
FrmTransferencias.Caption:= FrmTransferencias.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end;

procedure TFrmTransferencias.BtnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmTransferencias.DBGrid_TranferenciaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if not odd(IBQuery_Matriculado.RecNo) then // se for impar
// se a célula não está selecionada
if not (gdSelected in State) then
begin
// define uma cor de fundo
DBGrid_Tranferencia.Canvas.Brush.Color:= clCream;
DBGrid_Tranferencia.Canvas.FillRect(Rect); // pinta a célula
// pinta o texto padrão
DBGrid_Tranferencia.DefaultDrawDataCell(rect,column.Field,State);
end;
end;

procedure TFrmTransferencias.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and not (ActiveControl is TMemo) then begin
// desabilita processamento posterior da tecla
  Key := #0;
  Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFrmTransferencias.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=Cafree;
end;

procedure TFrmTransferencias.FormCreate(Sender: TObject);
begin
ComboBox_Ano.Items.Clear;
ComboBox_Ano.Items.Add(AnoLetivo);
ComboBox_Ano.Items.Add(FormatDateTime('yyyy',(IncYear(Data,-1))));
ComboBox_Ano.ItemIndex:= 1;
CBox_AnoLetivoEstorno.Items.Clear;
CBox_AnoLetivoEstorno.Items.Add(AnoLetivo);
CBox_AnoLetivoEstorno.Items.Add(FormatDateTime('yyyy',(IncYear(Data,-1))));
CBox_AnoLetivoEstorno.ItemIndex:= 1;
end;

procedure TFrmTransferencias.Btn_ProcessarClick(Sender: TObject);
begin
if Trim(CBox_Motivo.Text) = '' then
begin
CBox_Motivo.SetFocus;
Exit;
end else
If not Dm.IBDS_MATRICULAS.Locate('MATRICULA;ANO_LETIVO',VarArrayOf([IBQuery_MatriculadoMATRICULA.AsString,IBQuery_MatriculadoANO_LETIVO.AsString]), []) then
begin
ShowMessage('Número de matrícula não encontrado para continuar o processo...');
Edit_Matricula.SetFocus;
Screen.Cursor := crDefault;
Exit;
end else
with Dm.IBDS_NOTAS do
begin
Close;
UnPrepare;
SelectSQL.Clear;
SelectSQL.Add('select * from NOTAS where ANO_LETIVO = '+#39+IBQuery_MatriculadoANO_LETIVO.AsString+#39+' and MATRICULA = '+#39+IBQuery_MatriculadoMATRICULA.AsString+#39);
Prepare;
Open;
end;
Dm.IBDS_NOTAS.First;
if not Dm.IBDS_NOTAS.Eof then
repeat
 { seus comandos para a tabela }
If Dm.IBDS_NOTASCOD_BOLE.AsString = Dm.IBDS_NOTASCOD_BOLE.AsString then
begin
Dm.IBDS_NOTAS.Edit;
Dm.IBDS_NOTAS.FieldByName('RESULTADO_FINAL').AsString:= CBox_Motivo.Text;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_NOTAS.Post;
Dm.IBDS_NOTAS.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
Dm.IBDS_NOTAS.Next;
end;
until Dm.IBDS_NOTAS.Eof;
Dm.IBDS_MATRICULAS.Edit;
Dm.IBDS_MATRICULAS.FieldByName('SITUACAO_ALUNO').AsString:= CBox_Motivo.Text;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_MATRICULAS.Post;
Dm.IBDS_MATRICULAS.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
if Trim(CBox_Opcao.Text) = 'TODOS' then
begin
// SELECIONA TODOS OS MATRICULADOS
with IBQuery_Matriculado do
begin
Screen.Cursor := crSQLWait;
Close;
UnPrepare;
SQL.Clear;
SQL.Add('select MATRICULA, ANO_LETIVO, CURSO, SERIE, TURNO, TURMA, NOME_ALUNO, SITUACAO_ALUNO from MATRICUL ');
SQL.Add('where ANO_LETIVO = :AnoLet and SITUACAO_ALUNO = :Matriculado ');
ParamByName('AnoLet').AsString:= ComboBox_Ano.Text;
ParamByName('Matriculado').AsString:= 'MATRICULADO';
SQL.Add('order by NOME_ALUNO');
Prepare;
Open;
Screen.Cursor := crDefault;
end;
Exit;
end else
if Trim(CBox_Opcao.Text) = 'MATRÍCULA' then
begin
// SELECIONA OS MATRICULADOS POR MATRICULA
with IBQuery_Matriculado do
begin
Screen.Cursor := crSQLWait;
Close;
UnPrepare;
SQL.Clear;
SQL.Add('select MATRICULA, ANO_LETIVO, CURSO, SERIE, TURNO, TURMA, NOME_ALUNO, SITUACAO_ALUNO from MATRICUL ');
SQL.Add('where ANO_LETIVO = :AnoLet and MATRICULA = :Mat and SITUACAO_ALUNO = :Matriculado ');
ParamByName('AnoLet').AsString:= ComboBox_Ano.Text;
ParamByName('Mat').AsString:= Edit_Matricula.Text;
ParamByName('Matriculado').AsString:= 'MATRICULADO';
SQL.Add('order by NOME_ALUNO');
Prepare;
Open;
Screen.Cursor := crDefault;
end;
Exit;
end else
if Trim(CBox_Opcao.Text) = 'SÉRIE' then
begin
// SELECIONA OS MATRICULADOS POR SERIE
with IBQuery_Matriculado do
begin
Screen.Cursor := crSQLWait;
Close;
UnPrepare;
SQL.Clear;
SQL.Add('select MATRICULA, ANO_LETIVO, CURSO, SERIE, TURNO, TURMA, NOME_ALUNO, SITUACAO_ALUNO from MATRICUL ');
SQL.Add('where SERIE =:Seri and TURNO =:Turn and TURMA =:Turm and ANO_LETIVO = :AnoLet and SITUACAO_ALUNO = :Matriculado');
ParamByName('AnoLet').AsString:= ComboBox_Ano.Text;
ParamByName('Seri').AsString:= ComboBoxExibeSerie.Text;
ParamByName('Turn').AsString:= ComboBoxExibeTurno.Text;
ParamByName('Turm').AsString:= ComboBoxExibeTurma.Text;
ParamByName('Matriculado').AsString:= 'MATRICULADO';
SQL.Add('order by NOME_ALUNO');
Prepare;
Open;
Screen.Cursor := crDefault;
end;
DBGrid_Tranferencia.SetFocus;
end;
end;

procedure TFrmTransferencias.Btn_EstornaClick(Sender: TObject);
begin
Screen.Cursor := crSQLWait;
If not Dm.IBDS_MATRICULAS.Locate('MATRICULA;ANO_LETIVO',VarArrayOf([IBQuery_Estorna.FieldByName('MATRICULA').AsString,CBox_AnoLetivoEstorno.Text]), []) then
begin
ShowMessage('Matrícula não encontrada para continuar o processo.');
Screen.Cursor := crDefault;
Exit;
end else

with Dm.IBDS_NOTAS do
begin
Close;
UnPrepare;
SelectSQL.Clear;
SelectSQL.Add('select * from NOTAS where ANO_LETIVO = '+#39+CBox_AnoLetivoEstorno.Text+#39+' and MATRICULA = '+#39+IBQuery_Estorna.FieldByName('MATRICULA').AsString+#39);
Prepare;
Open;
end;
Dm.IBDS_NOTAS.First;
if not Dm.IBDS_NOTAS.Eof then
repeat
 { seus comandos para a tabela }
If Dm.IBDS_NOTASCOD_BOLE.AsString = Dm.IBDS_NOTASCOD_BOLE.AsString then
begin
Dm.IBDS_NOTAS.Edit;
Dm.IBDS_NOTAS.FieldByName('RESULTADO_FINAL').AsString:= 'MATRICULADO';
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_NOTAS.Post;
Dm.IBDS_NOTAS.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
Dm.IBDS_NOTAS.Next;
end;
until Dm.IBDS_NOTAS.Eof;
ShowMessage('Transferência estornada, será preciso atualizar resultados finais no boletim referente ano letivo '+CBox_AnoLetivoEstorno.Text);
Dm.IBDS_MATRICULAS.Edit;
Dm.IBDS_MATRICULAS.FieldByName('SITUACAO_ALUNO').AsString:= 'MATRICULADO';
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_MATRICULAS.Post;
Dm.IBDS_MATRICULAS.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
if Trim(Edit_Aluno.Text) <> '' then
begin
// SELECIONA TRANSFERIDO POR NOME
with IBQuery_Estorna do
begin
Close;
UnPrepare;
SQL.Clear;
SQL.Add('select MATRICULA, ANO_LETIVO, CURSO, SERIE, TURNO, TURMA, NOME_ALUNO, SITUACAO_ALUNO from MATRICUL ');
SQL.Add('where NOME_ALUNO = :Nome and SITUACAO_ALUNO = :Matriculado and ANO_LETIVO = :AnoLet');
ParamByName('AnoLet').AsString:= ComboBox_Ano.Text;
ParamByName('Nome').AsString:= Edit_Aluno.Text;
ParamByName('Matriculado').AsString:= CBox_Modalidade.Text;
SQL.Add('order by NOME_ALUNO');
Prepare;
Open;
Screen.Cursor := crDefault;
end;
Exit;
end else
if Trim(Edit_Mat_Estorno.Text) <> '' then
begin
// SELECIONA TRANSFERIDO POR MATRICULA
with IBQuery_Matriculado do
begin
Close;
UnPrepare;
SQL.Clear;
SQL.Add('select MATRICULA, ANO_LETIVO, CURSO, SERIE, TURNO, TURMA, NOME_ALUNO, SITUACAO_ALUNO from MATRICUL ');
SQL.Add('where ANO_LETIVO = :AnoLet and MATRICULA = :Mat and SITUACAO_ALUNO = :Matriculado ');
ParamByName('AnoLet').AsString:= CBox_AnoLetivoEstorno.Text;
ParamByName('Mat').AsString:= Edit_Mat_Estorno.Text;
ParamByName('Matriculado').AsString:= CBox_Modalidade.Text;
SQL.Add('order by NOME_ALUNO');
Prepare;
Open;
Screen.Cursor := crDefault;
end;
end;
end;

procedure TFrmTransferencias.AtualizaGerar;
begin
if DBGrid_Tranferencia.Fields[0].Text = '' then
begin
DBGrid_Tranferencia.Enabled:= False;
Btn_Processar.Enabled:= False;
BtnFechar.SetFocus;
Exit;
end else
DBGrid_Tranferencia.Enabled:= True;
Btn_Processar.Enabled:= True;
DBGrid_Tranferencia.SetFocus;
if DBGrid_Transferido.Fields[0].Text = '' then
begin
DBGrid_Transferido.Enabled:= False;
Btn_Estorna.Enabled:= False;
Exit;
end else
DBGrid_Transferido.Enabled:= True;
Btn_Estorna.Enabled:= True;
end;

procedure TFrmTransferencias.Edit_MatriculaChange(Sender: TObject);
begin
CBox_Opcao.ItemIndex:= 1;
end;

procedure TFrmTransferencias.Edit_MatriculaKeyPress(Sender: TObject;
  var Key: Char);
begin
If not( key in['0'..'9','-',#8,#13] ) then
begin
key:=#0;
end;
 if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
if Trim(ComboBox_Ano.Text) = '' then
begin
ComboBox_Ano.SetFocus;
Exit;
end else
if Trim(Edit_Matricula.Text) = '' then
begin
Edit_Matricula.SetFocus;
Exit;
end else
ComboBoxExibeSerie.Text:= '';
ComboBoxExibeTurma.Text:= '';
ComboBoxExibeTurno.Text:= '';
Edit_Matricula.Text:= FrmPrincipal.RetZero(Edit_Matricula.Text, 15);
Edit_Matricula.Text:= FrmLocalizar.FormataMat(Edit_Matricula.Text);
// SELECIONA OS MATRICULADOS POR MATRICULA
with IBQuery_Matriculado do
begin
Screen.Cursor := crSQLWait;
Close;
UnPrepare;
SQL.Clear;
SQL.Add('select MATRICULA, ANO_LETIVO, CURSO, SERIE, TURNO, TURMA, NOME_ALUNO, SITUACAO_ALUNO from MATRICUL ');
SQL.Add('where ANO_LETIVO = :AnoLet and MATRICULA = :Mat and SITUACAO_ALUNO = :Matriculado ');
ParamByName('AnoLet').AsString:= ComboBox_Ano.Text;
ParamByName('Mat').AsString:= Edit_Matricula.Text;
ParamByName('Matriculado').AsString:= 'MATRICULADO';
SQL.Add('order by NOME_ALUNO');
Prepare;
Open;
Screen.Cursor := crDefault;
if Trim(IBQuery_MatriculadoMATRICULA.AsString) = '' then
begin
ShowMessage('Número de matrícula inválido. Tente novamente.');
Edit_Matricula.SetFocus;
Close;
Exit;
end else
DBGrid_Tranferencia.SetFocus;
end;
end;
end;


procedure TFrmTransferencias.ComboBoxExibeSerieChange(Sender: TObject);
begin
CBox_Opcao.ItemIndex:= 2;
end;

procedure TFrmTransferencias.ComboBoxExibeSerieKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then
  begin
 // Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
Edit_Matricula.Text:= '';
ComboBoxExibeTurma.SetFocus;
end;
end;

procedure TFrmTransferencias.CBox_OpcaoChange(Sender: TObject);
begin
if Trim(ComboBox_Ano.Text) = '' then
begin
ComboBox_Ano.SetFocus;
Exit;
end else
if Trim(CBox_Opcao.Text) = 'TODOS' then
begin
Edit_Matricula.Text:= '';
ComboBoxExibeSerie.Text:= '';
ComboBoxExibeTurma.Text:= '';
ComboBoxExibeTurno.Text:= '';
Screen.Cursor := crSQLWait;
// SELECIONA OS MATRICULADOS
 IBQuery_Matriculado.Close;
 IBQuery_Matriculado.SQL.Clear;
 IBQuery_Matriculado.SQL.Add('select MATRICULA, ANO_LETIVO, CURSO, SERIE, TURNO, TURMA, NOME_ALUNO, SITUACAO_ALUNO from MATRICUL ');
 IBQuery_Matriculado.SQL.Add('where ANO_LETIVO = :AnoLet and SITUACAO_ALUNO = :Matriculado ');
 IBQuery_Matriculado.ParamByName('AnoLet').AsString:= ComboBox_Ano.Text;
 IBQuery_Matriculado.ParamByName('Matriculado').AsString:= 'MATRICULADO';
 IBQuery_Matriculado.SQL.Add('order by NOME_ALUNO');
 IBQuery_Matriculado.Prepare;
 IBQuery_Matriculado.Open;
Screen.Cursor := crDefault;

Exit;
end else
if Trim(CBox_Opcao.Text) = 'MATRÍCULA' then
begin
Edit_Matricula.SetFocus;
Exit;
end else
if Trim(CBox_Opcao.Text) = 'SÉRIE' then
begin
ComboBoxExibeSerie.SetFocus;
end;
end;

procedure TFrmTransferencias.DBGrid_TransferidoKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
  Btn_Estorna.SetFocus;
end;
end;

procedure TFrmTransferencias.ComboBox_AnoKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
CBox_Opcao.SetFocus;
end;
end;

procedure TFrmTransferencias.ComboBox_SerieKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
  ComboBoxExibeTurno.SetFocus;
  end;
end;

procedure TFrmTransferencias.ComboBox_TurnoKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
  ComboBoxExibeTurma.SetFocus;
  end;
end;

procedure TFrmTransferencias.Edit_AlunoKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
Edit_Mat_Estorno.Text:= '';
with IBQuery_Estorna do
begin
Screen.Cursor := crSQLWait;
Close;
UnPrepare;
SQL.Clear;
SQL.Add('select MATRICULA, ANO_LETIVO, CURSO, SERIE, TURNO, TURMA, NOME_ALUNO, SITUACAO_ALUNO from MATRICUL ');
SQL.Add('where NOME_ALUNO = :Nome and SITUACAO_ALUNO = :Matriculado and ANO_LETIVO = :AnoLet');
ParamByName('AnoLet').AsString:= ComboBox_Ano.Text;
ParamByName('Nome').AsString:= Edit_Aluno.Text;
ParamByName('Matriculado').AsString:= CBox_Modalidade.Text;
SQL.Add('order by NOME_ALUNO');
Prepare;
Open;
Screen.Cursor := crDefault;
if Trim(IBQuery_Estorna.FieldByName('NOME_ALUNO').AsString) = '' then
begin
ShowMessage('Nome do aluno incompleto. Tente novamente.');
Edit_Aluno.SetFocus;
Close;
Exit;
end else
DBGrid_Transferido.SetFocus;
end;
end;
end;

procedure TFrmTransferencias.Edit_AlunoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  theText: string;
  p: integer;
begin
  with Edit_Aluno do
    case key of
      8, 13, 46, 37..40: ; // Se for backspace, enter, delete, ou setas, ignora...
      else
      begin
        p := SelStart;
        theText := copy(text, 0, p);
        if Dm.IBDS_MATRICULAS.Locate('NOME_ALUNO', theText, [loCaseInsensitive, loPartialKey]) then
        begin
          text := Dm.IBDS_MATRICULAS.FieldByName('NOME_ALUNO').AsString;
          SelStart := p;
          SelLength := length(text) - selStart;
       end;
   end;
  end;
end;

procedure TFrmTransferencias.Edit_Mat_EstornoKeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['0'..'9','-',#8,#13] ) then
begin
key:=#0;
end;
 if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
if Edit_Mat_Estorno.Text = '' then
begin
Edit_Mat_Estorno.SetFocus;
Exit;
end else
Edit_Mat_Estorno.Text:= FrmPrincipal.RetZero(Edit_Mat_Estorno.Text, 15);
Edit_Mat_Estorno.Text:= FrmLocalizar.FormataMat(Edit_Mat_Estorno.Text);
if Edit_Mat_Estorno.Text = '' then
begin
Btn_Envia.Enabled:=False;
end else
Btn_Envia.Enabled:=True;
if Btn_Envia.Enabled = True then
begin
Btn_Envia.SetFocus;
Btn_EnviaClick(Nil);
end;
end;
end;

procedure TFrmTransferencias.Btn_EnviaClick(Sender: TObject);
begin
Edit_Aluno.Text:= '';
// SELECIONA OS TRANSFERIDOS
with IBQuery_Estorna do
begin
Screen.Cursor := crSQLWait;
Close;
UnPrepare;
SQL.Clear;
SQL.Add('select MATRICULA, ANO_LETIVO, CURSO, SERIE, TURNO, TURMA, NOME_ALUNO, SITUACAO_ALUNO from MATRICUL ');
SQL.Add('where ANO_LETIVO = :AnoLet and MATRICULA = :Mat and SITUACAO_ALUNO = :Matriculado ');
ParamByName('AnoLet').AsString:= CBox_AnoLetivoEstorno.Text;
ParamByName('Mat').AsString:= Edit_Mat_Estorno.Text;
ParamByName('Matriculado').AsString:= CBox_Modalidade.Text;
SQL.Add('order by NOME_ALUNO');
Prepare;
Open;
Screen.Cursor := crDefault;
if Trim(IBQuery_Estorna.FieldByName('MATRICULA').AsString) = '' then
begin
ShowMessage('Número de matrícula inválido. Tente novamente.');
Edit_Mat_Estorno.SetFocus;
Close;
Exit;
end else
DBGrid_Transferido.SetFocus;
end;
end;

procedure TFrmTransferencias.ComboBoxExibeTurmaKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
ComboBoxExibeTurno.SetFocus;
end;
end;

procedure TFrmTransferencias.ComboBoxExibeTurnoKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
Edit_Matricula.Text:= '';
CBox_Opcao.ItemIndex:= 2;
if Trim(ComboBox_Ano.Text) = '' then
begin
ComboBox_Ano.SetFocus;
Exit;
end else
if Trim(ComboBoxExibeSerie.Text) = '' then
begin
ComboBoxExibeSerie.SetFocus;
Exit;
end else
if Trim(ComboBoxExibeTurma.Text) = '' then
begin
ComboBoxExibeTurma.SetFocus;
Exit;
end else
if Trim(ComboBoxExibeTurno.Text) = '' then
begin
ComboBoxExibeTurno.SetFocus;
Exit;
end else
if CBox_Opcao.Text = 'SÉRIE' then
begin
Screen.Cursor := crSQLWait;
// SELECIONA OS MATRICULADOS
with IBQuery_Matriculado do
begin
Screen.Cursor := crSQLWait;
Close;
UnPrepare;
SQL.Clear;
SQL.Add('select MATRICULA, ANO_LETIVO, CURSO, SERIE, TURNO, TURMA, NOME_ALUNO, SITUACAO_ALUNO from MATRICUL ');
SQL.Add('where SERIE =:Seri and TURNO =:Turn and TURMA =:Turm and ANO_LETIVO = :AnoLet and SITUACAO_ALUNO = :Matriculado');
ParamByName('AnoLet').AsString:= ComboBox_Ano.Text;
ParamByName('Seri').AsString:= ComboBoxExibeSerie.Text;
ParamByName('Turn').AsString:= ComboBoxExibeTurno.Text;
ParamByName('Turm').AsString:= ComboBoxExibeTurma.Text;
ParamByName('Matriculado').AsString:= 'MATRICULADO';
SQL.Add('order by NOME_ALUNO');
Prepare;
Open;
Screen.Cursor := crDefault;
if Trim(IBQuery_MatriculadoSERIE.AsString) = '' then
begin
ShowMessage('Sequência de dados não encontrados. Tente novamente.');
ComboBoxExibeSerie.SetFocus;
Close;
Exit;
end else
DBGrid_Tranferencia.SetFocus;
end;
Exit;
end else
ShowMessage('Selecione uma opção e tente novamente.');
Screen.Cursor := crDefault;
end;
end;

end.
