unit UnInsereAluno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,UnDm, DBCtrls, StdCtrls, Buttons, DB, IBCustomDataSet, IBQuery,
  ExtCtrls, Grids, DBGrids;

type
  TFrmInsereAluno = class(TForm)
    Panel1: TPanel;
    Label4: TLabel;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    DataSource1: TDataSource;
    IBQuery_InseriAluno: TIBQuery;
    BitBtn1: TBitBtn;
    Bevel1: TBevel;
    DBGrid_InseriAluno: TDBGrid;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Label1: TLabel;
    CBox_Serie: TComboBox;
    CBox_Turma: TComboBox;
    Label2: TLabel;
    CBox_Turno: TComboBox;
    Label3: TLabel;
    procedure CBox_TurnoEnter(Sender: TObject);
    procedure CBox_TurmaEnter(Sender: TObject);
    procedure CBox_SerieEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1Enter(Sender: TObject);
    procedure DBGrid_InseriAlunoKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure CBox_TurnoKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CBox_SerieKeyPress(Sender: TObject; var Key: Char);
    procedure CBox_TurmaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure InsereBoletim;
    procedure AlteraBoletim;
    procedure ObterDisciplinasPorCurso;
  public
    { Public declarations }
  end;

var
  FrmInsereAluno: TFrmInsereAluno;

implementation

uses UnPrincipal, UnBoletim, UnLocalizar, UnDmSeleciona;

{$R *.dfm}

procedure TFrmInsereAluno.BitBtn1Click(Sender: TObject);
begin
if (Dm.DS_BOLETIM.State = dsEdit) or (Dm.DS_BOLETIM.State = dsInsert) then
begin
Dm.IBDS_BOLETIM.Cancel;
Dm.IBDS_BOLETIM.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
// CANCELA ALTERAÇÕES
FrmBoletim.IBDS_ExibeNotas.Cancel;
FrmBoletim.IBDS_ExibeNotas.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
end else
Close;
end;

procedure TFrmInsereAluno.Edit1Change(Sender: TObject);
var a,b,c: String;
begin
Screen.Cursor := crHourglass;
if ComboBox1.Text = '' then
begin
ComboBox1.Text:='ALUNO(A)';
Label1.Caption:= 'Informe o(a) '+ComboBox1.Text;
end
else
FrmInsereAluno.Height:=183;
DBGrid_InseriAluno.Enabled:= False;
If Edit1.Text = '' then
Begin
IBQuery_InseriAluno.SQL.Clear;
FrmInsereAluno.Height:=102;
end
else
if ComboBox1.Text = 'ALUNO(A)' then
begin
Edit1.MaxLength:=49;
IBQuery_InseriAluno.Close;
IBQuery_InseriAluno.SQL.Clear;
a:='Select MATRICULA, NOME_ALUNO, ANO_LETIVO, CURSO, SERIE, TURNO, TURMA, SEXO, DATA_NASCIMENTO, NOME_PAI, NOME_MAE, NOME_RESP, TEL_RESP, CPF_RESP from MATRICUL ';
b:='Where ANO_LETIVO = '+#39+AnoLetivo+#39+' and NOME_ALUNO Like:Consulta ';
c:='Order By NOME_ALUNO';
IBQuery_InseriAluno.SQL.Add(a+b+c);
IBQuery_InseriAluno.Params[0].AsString;
IBQuery_InseriAluno.ParamByName('Consulta').AsString:=Edit1.Text+'%';
IBQuery_InseriAluno.Open;
end else
if ComboBox1.Text = 'MATRÍCULA' then
begin
Edit1.MaxLength:=22;
IBQuery_InseriAluno.Close;
IBQuery_InseriAluno.SQL.Clear;
a:='Select MATRICULA, NOME_ALUNO, ANO_LETIVO, CURSO, SERIE, TURNO, TURMA, SEXO, DATA_NASCIMENTO, NOME_PAI, NOME_MAE, NOME_RESP, TEL_RESP, CPF_RESP from MATRICUL ';
b:='Where ANO_LETIVO = '+#39+AnoLetivo+#39+' and MATRICULA Like:Consulta ';
c:='Order By NOME_ALUNO';
IBQuery_InseriAluno.SQL.Add(a+b+c);
IBQuery_InseriAluno.Params[0].AsString;
IBQuery_InseriAluno.ParamByName('Consulta').AsString:=Edit1.Text+'%';
IBQuery_InseriAluno.Open;
end;
Screen.Cursor := crDefault;
end;

procedure TFrmInsereAluno.DataSource1StateChange(Sender: TObject);
begin
//BitBtn2.Enabled:= DataSource1.State in [dsBrowse];
end;

procedure TFrmInsereAluno.ComboBox1Change(Sender: TObject);
begin
if ComboBox1.Text = 'SÉRIE' then
begin
Label1.Caption:= 'Informe o(a) '+ComboBox1.Text;
Label2.Visible:= True;
Label3.Visible:= True;
CBox_Serie.Visible:= True;
CBox_Turma.Visible:= True;
CBox_Turno.Visible:= True;
Edit1.Visible:= False;
CBox_Serie.SetFocus;
Exit;
end else
Label1.Caption:= 'Informe o(a) '+ComboBox1.Text;
Label2.Visible:= False;
Label3.Visible:= False;
CBox_Serie.Visible:= False;
CBox_Turma.Visible:= False;
CBox_Turno.Visible:= False;
Edit1.Visible:= True;
Edit1.Text:='';
Edit1.SetFocus;
end;

procedure TFrmInsereAluno.ComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
 if ComboBox1.Text = 'SÉRIE' then
begin
CBox_Serie.SetFocus;
Exit;
end else
Edit1.SetFocus;
  end;
end;

procedure TFrmInsereAluno.ComboBox1Enter(Sender: TObject);
begin
if ComboBox1.Text = '' then
begin
ComboBox1.ItemIndex:= 0;
end;
end;

procedure TFrmInsereAluno.DBGrid_InseriAlunoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
  Key := #0;
  { Suprime o som }
  { escreva aqui os seus comandos }
  if FrmBoletim.DS_Boletim.State = dsEdit then
  begin
  AlteraBoletim;
  end else
  InsereBoletim;
  end;
end;

procedure TFrmInsereAluno.Edit1KeyUp(Sender: TObject; var Key: Word;
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
        if IBQuery_InseriAluno.Locate('NOME_ALUNO', theText, [loCaseInsensitive, loPartialKey]) then
        begin
          text := IBQuery_InseriAluno.FieldByName('NOME_ALUNO').AsString;
          SelStart := p;
          SelLength := length(text) - selStart;
       end;
   end;
  end;
end;

procedure TFrmInsereAluno.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if ComboBox1.Text = 'MATRÍCULA' then
begin
If not( key in['0'..'9','-',#8,#13] ) then
begin
key:=#0;
end;
end;
 if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
if Edit1.Text = '' then
begin
Edit1.SetFocus;
Exit;
end else
if ComboBox1.Text = 'MATRÍCULA' then
begin
Edit1.Text:= FrmPrincipal.RetZero(Edit1.Text, 15);
Edit1.Text:= FrmLocalizar.FormataMat(Edit1.Text);
end else
if IBQuery_InseriAluno.FieldByName('NOME_ALUNO').AsString <> '' then
begin
InsereBoletim;
Exit;
end else
Edit1.SetFocus;
end;
end;

procedure TFrmInsereAluno.FormShow(Sender: TObject);
begin
FrmInsereAluno.Top:=0;
FrmInsereAluno.Left:=0;
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmInsereAluno.Caption:= FrmInsereAluno.Caption;
Exit;
end else
FrmInsereAluno.Caption:= FrmInsereAluno.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end;

procedure TFrmInsereAluno.CBox_TurnoEnter(Sender: TObject);
begin
with DmSeleciona.IBQ_AnoLetivo do
 begin
 Close;
 UnPrepare;
 SQL.Clear;
 SQL.Add('select distinct TURNO from MATRICUL ');
 SQL.Add('where SERIE = '+#39+CBox_Serie.Text+#39+' and TURMA = '+#39+CBox_Turma.Text+#39);
 SQL.Add('order by TURNO');
 Prepare;
 Open;
// Adiciona dados ao combobox
CBox_Turno.Clear;
While Not Eof do
  begin
  CBox_Turno.Items.Add(FieldByName('TURNO').AsString);
  Next;
  end;
end;
end;

procedure TFrmInsereAluno.CBox_TurnoKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
Screen.Cursor := crHourGlass;
 IBQuery_InseriAluno.Close;
 IBQuery_InseriAluno.SQL.Clear;
 IBQuery_InseriAluno.SQL.Add('select MATRICULA, NOME_ALUNO, ANO_LETIVO, CURSO, SERIE, TURNO, TURMA, SEXO, DATA_NASCIMENTO, NOME_PAI, NOME_MAE, NOME_RESP, TEL_RESP, CPF_RESP from MATRICUL ');
 IBQuery_InseriAluno.SQL.Add('where SERIE = :SerieAluno and TURMA = :TurmaAluno and TURNO = :TurnoAluno and ANO_LETIVO = :AnoLet ');
 IBQuery_InseriAluno.ParamByName('SerieAluno').AsString:= CBox_Serie.Text;
 IBQuery_InseriAluno.ParamByName('TurmaAluno').AsString:= CBox_Turma.Text;
 IBQuery_InseriAluno.ParamByName('TurnoAluno').AsString:= CBox_Turno.Text;
 IBQuery_InseriAluno.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_InseriAluno.SQL.Add('order by NOME_ALUNO');
 IBQuery_InseriAluno.Prepare;
 IBQuery_InseriAluno.Open;
Screen.Cursor := crDefault;
FrmInsereAluno.Height:=183;
If IBQuery_InseriAluno.FieldByName('NOME_ALUNO').AsString = '' then
Begin
IBQuery_InseriAluno.SQL.Clear;
FrmInsereAluno.Height:=102;
DBGrid_InseriAluno.Enabled:= True;
Exit;
end else
DBGrid_InseriAluno.SetFocus;
  end;
end;

procedure TFrmInsereAluno.FormCreate(Sender: TObject);
begin
if (EDICAO = 'ALTERAR') then
begin
     ComboBox1.Clear;
     ComboBox1.Items.Add('MATRÍCULA');
     ComboBox1.Items.Add('ALUNO(A)');
     Label1.Caption:= 'Informe o(a) '+ComboBox1.Text;
Label2.Visible:= False;
Label3.Visible:= False;
CBox_Serie.Visible:= False;
CBox_Turma.Visible:= False;
CBox_Turno.Visible:= False;
Edit1.Visible:= True;
Edit1.Text:='';
ComboBox1.ItemIndex:= 1;
Exit;
end else
ComboBox1.ItemIndex:= 2;
end;

procedure TFrmInsereAluno.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and not (ActiveControl is TMemo) then begin
// desabilita processamento posterior da tecla
  Key := #0;
  Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFrmInsereAluno.CBox_SerieEnter(Sender: TObject);
begin
with DmSeleciona.IBQ_AnoLetivo do
 begin
 Close;
 UnPrepare;
 SQL.Clear;
 SQL.Add('select distinct SERIE from MATRICUL order by SERIE');
 Prepare;
 Open;
// Adiciona dados ao combobox
CBox_Serie.Clear;
While Not Eof do
  begin
  CBox_Serie.Items.Add(FieldByName('SERIE').AsString);
  Next;
  end;
end;
end;

procedure TFrmInsereAluno.CBox_SerieKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
//  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
  CBox_Turma.SetFocus;
  end;
end;

procedure TFrmInsereAluno.CBox_TurmaEnter(Sender: TObject);
begin
with DmSeleciona.IBQ_AnoLetivo do
 begin
 Close;
 UnPrepare;
 SQL.Clear;
 SQL.Add('select distinct TURMA from MATRICUL ');
 SQL.Add('where SERIE = '+#39+CBox_Serie.Text+#39);
 SQL.Add('order by TURMA');
 Prepare;
 Open;
// Adiciona dados ao combobox
CBox_Turma.Clear;
While Not Eof do
  begin
  CBox_Turma.Items.Add(FieldByName('TURMA').AsString);
  Next;
  end;
end;
end;

procedure TFrmInsereAluno.CBox_TurmaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
  CBox_Turno.SetFocus;
  end;
end;

procedure TFrmInsereAluno.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=Cafree;
end;

procedure TFrmInsereAluno.InsereBoletim;
begin
  Screen.Cursor := crHourGlass;

  if not (FrmBoletim.IBQueryNumMatricula.Locate('MATRICULA', DBGrid_InseriAluno.Columns.Items[1].Field.AsString, [])) then
  begin
  Dm.IBDS_BOLETIM.Append;
  Dm.IBDS_BOLETIM.FieldByName('MATRICULA').asString := IBQuery_InseriAluno.FieldByName('MATRICULA').asString;
  Dm.IBDS_BOLETIM.FieldByName('NOME_ALUNO').asString := IBQuery_InseriAluno.FieldByName('NOME_ALUNO').asString;
  Dm.IBDS_BOLETIM.FieldByName('ANO_LETIVO').asString := IBQuery_InseriAluno.FieldByName('ANO_LETIVO').asString;
  Dm.IBDS_BOLETIM.FieldByName('CURSO').asString := IBQuery_InseriAluno.FieldByName('CURSO').asString;
  Dm.IBDS_BOLETIM.FieldByName('SERIE').asString := IBQuery_InseriAluno.FieldByName('SERIE').asString;
  Dm.IBDS_BOLETIM.FieldByName('TURNO').asString := IBQuery_InseriAluno.FieldByName('TURNO').asString;
  Dm.IBDS_BOLETIM.FieldByName('TURMA').asString := IBQuery_InseriAluno.FieldByName('TURMA').asString;
  Dm.IBDS_BOLETIM.FieldByName('SEXO').asString := IBQuery_InseriAluno.FieldByName('SEXO').asString;
  Dm.IBDS_BOLETIM.FieldByName('DATA_NASCIMENTO').asString := IBQuery_InseriAluno.FieldByName('DATA_NASCIMENTO').asString;
  Dm.IBDS_BOLETIM.FieldByName('NOME_PAI').asString := IBQuery_InseriAluno.FieldByName('NOME_PAI').asString;
  Dm.IBDS_BOLETIM.FieldByName('NOME_MAE').asString := IBQuery_InseriAluno.FieldByName('NOME_MAE').asString;
  Dm.IBDS_BOLETIM.FieldByName('NOME_RESP').asString := IBQuery_InseriAluno.FieldByName('NOME_RESP').asString;
  Dm.IBDS_BOLETIM.FieldByName('TEL_RESP').asString := IBQuery_InseriAluno.FieldByName('TEL_RESP').asString;
  Dm.IBDS_BOLETIM.FieldByName('CPF_RESP').asString := IBQuery_InseriAluno.FieldByName('CPF_RESP').asString;

  //SALVA
  if not (DM.IBTransaction.InTransaction) then
  Dm.IBTransaction.StartTransaction;
  Dm.IBDS_BOLETIM.Post;
  Dm.IBDS_BOLETIM.ApplyUpdates;
  DM.IBTransaction.CommitRetaining;
  Dm.IBDS_BOLETIM.Refresh;

  Dm.IBDS_BOLETIM.Locate('MATRICULA', DBGrid_InseriAluno.Columns.Items[1].Field.AsString, []);
  FrmBoletim.Seleciona_Notas;

  //MONTAGEM DAS DICIPLINAS
  ObterDisciplinasPorCurso;

  if (FrmBoletim.IBQuery_Disciplinas.IsEmpty) then
  begin
  if MessageBox(0,PChar('Ainda não foram incluídas disciplinas para '+ DBText2.Caption +'.'+#13+'Deseja realizar à inclusão das disciplinas agora?'),'Pergunta',mb_yesno+mb_iconquestion)=6 then
  Screen.Cursor := crDefault;
  ShowMessage('Boletim cadastrado com sucesso!');
  BitBtn1.OnClick(nil);
  Exit;
  end else

  FrmBoletim.IBQuery_Disciplinas.First;
  if not FrmBoletim.IBQuery_Disciplinas.Eof then
  repeat
  FrmBoletim.IBDS_ExibeNotas.Append;
  FrmBoletim.IBDS_ExibeNotasDISCIPLINA.AsString := FrmBoletim.IBQuery_DisciplinasDISCIPLINA.AsString;

  //SALVA
  if not (Dm.IBTransaction.InTransaction) then
  Dm.IBTransaction.StartTransaction;
  FrmBoletim.IBDS_ExibeNotas.Post;
  FrmBoletim.IBDS_ExibeNotas.ApplyUpdates;
  Dm.IBTransaction.CommitRetaining;

  FrmBoletim.IBQuery_Disciplinas.Next;
  FrmBoletim.IBDS_ExibeNotas.Next;
  until FrmBoletim.IBQuery_Disciplinas.Eof;

  Dm.IBDS_BOLETIM.Locate('MATRICULA', DBGrid_InseriAluno.Columns.Items[1].Field.AsString, []);
  FrmBoletim.Seleciona_Notas;

  Screen.Cursor := crDefault;
  ShowMessage('Boletim cadastrado com sucesso!');
  end
  else
  ShowMessage('Não é possível salvar os dados, a matrícula nº: "' + DBGrid_InseriAluno.Columns.Items[1].Field.AsString + '" já foi adicionada ao boletim.');
  // CANCELA ALTERAÇÕES
  FrmBoletim.IBDS_ExibeNotas.Cancel;
  FrmBoletim.IBDS_ExibeNotas.CancelUpdates;
  Dm.IBTransaction.RollbackRetaining;
  Dm.IBDS_BOLETIM.Cancel;
  Dm.IBDS_BOLETIM.CancelUpdates;
  Dm.IBTransaction.RollbackRetaining;
  Screen.Cursor := crDefault;
end;

procedure TFrmInsereAluno.AlteraBoletim;
begin
  Screen.Cursor := crHourGlass;
  if (FrmBoletim.IBQueryNumMatricula.Locate('MATRICULA', DBGrid_InseriAluno.Columns.Items[1].Field.AsString, [])) then
  begin
    //Dm.IBDS_BOLETIM.Append;
    Dm.IBDS_BOLETIM.FieldByName('MATRICULA').asString := IBQuery_InseriAluno.FieldByName('MATRICULA').asString;
    Dm.IBDS_BOLETIM.FieldByName('NOME_ALUNO').asString := IBQuery_InseriAluno.FieldByName('NOME_ALUNO').asString;
    Dm.IBDS_BOLETIM.FieldByName('ANO_LETIVO').asString := IBQuery_InseriAluno.FieldByName('ANO_LETIVO').asString;
    Dm.IBDS_BOLETIM.FieldByName('CURSO').asString := IBQuery_InseriAluno.FieldByName('CURSO').asString;
    Dm.IBDS_BOLETIM.FieldByName('SERIE').asString := IBQuery_InseriAluno.FieldByName('SERIE').asString;
    Dm.IBDS_BOLETIM.FieldByName('TURNO').asString := IBQuery_InseriAluno.FieldByName('TURNO').asString;
    Dm.IBDS_BOLETIM.FieldByName('TURMA').asString := IBQuery_InseriAluno.FieldByName('TURMA').asString;
    Dm.IBDS_BOLETIM.FieldByName('SEXO').asString := IBQuery_InseriAluno.FieldByName('SEXO').asString;
    Dm.IBDS_BOLETIM.FieldByName('DATA_NASCIMENTO').asString := IBQuery_InseriAluno.FieldByName('DATA_NASCIMENTO').asString;
    Dm.IBDS_BOLETIM.FieldByName('NOME_PAI').asString := IBQuery_InseriAluno.FieldByName('NOME_PAI').asString;
    Dm.IBDS_BOLETIM.FieldByName('NOME_MAE').asString := IBQuery_InseriAluno.FieldByName('NOME_MAE').asString;
    Dm.IBDS_BOLETIM.FieldByName('NOME_RESP').asString := IBQuery_InseriAluno.FieldByName('NOME_RESP').asString;
    Dm.IBDS_BOLETIM.FieldByName('TEL_RESP').asString := IBQuery_InseriAluno.FieldByName('TEL_RESP').asString;
    Dm.IBDS_BOLETIM.FieldByName('CPF_RESP').asString := IBQuery_InseriAluno.FieldByName('CPF_RESP').asString;

    //SALVA
    if not (DM.IBTransaction.InTransaction) then
    Dm.IBTransaction.StartTransaction;
    Dm.IBDS_BOLETIM.Post;
    Dm.IBDS_BOLETIM.ApplyUpdates;
    DM.IBTransaction.CommitRetaining;
    Dm.IBDS_BOLETIM.Refresh;

    Dm.IBDS_BOLETIM.Locate('MATRICULA', DBGrid_InseriAluno.Columns.Items[1].Field.AsString, []);
    FrmBoletim.Seleciona_Notas;

    if MessageBox(0,'Deseja também atualizar as diciplinas?'+#13+'Todas as médias serão excluídas, deseja continuar?','Pergunta',mb_yesno+mb_iconquestion)=6 then
    begin
    //EXCLUI DICIPLINAS CADASTRADAS
    FrmBoletim.IBQuery_Disciplinas.Close;
    FrmBoletim.IBQuery_Disciplinas.SQL.Clear;
    FrmBoletim.IBQuery_Disciplinas.SQL.Add('delete from NOTAS ');
    FrmBoletim.IBQuery_Disciplinas.SQL.Add('where COD_BOLE =:CodBoletim and ANO_LETIVO =:ALetivo ');
    FrmBoletim.IBQuery_Disciplinas.ParamByName('CodBoletim').AsInteger := Dm.IBDS_BOLETIM.FieldByName('COD_BOLE').Value;
    FrmBoletim.IBQuery_Disciplinas.ParamByName('ALetivo').AsString := DBGrid_InseriAluno.Columns.Items[2].Field.AsString;
    FrmBoletim.IBQuery_Disciplinas.Prepare;
    FrmBoletim.IBQuery_Disciplinas.Open;

    Dm.IBDS_BOLETIM.Locate('MATRICULA', DBGrid_InseriAluno.Columns.Items[1].Field.AsString, []);
    FrmBoletim.Seleciona_Notas;

    //MONTAGEM DAS DICIPLINAS
    ObterDisciplinasPorCurso;

    FrmBoletim.IBQuery_Disciplinas.First;
    if not FrmBoletim.IBQuery_Disciplinas.Eof then
      repeat
      FrmBoletim.IBDS_ExibeNotas.Append;
      FrmBoletim.IBDS_ExibeNotasDISCIPLINA.AsString := FrmBoletim.IBQuery_DisciplinasDISCIPLINA.AsString;

      //SALVA
      if not (Dm.IBTransaction.InTransaction) then
      Dm.IBTransaction.StartTransaction;
      FrmBoletim.IBDS_ExibeNotas.Post;
      FrmBoletim.IBDS_ExibeNotas.ApplyUpdates;
      Dm.IBTransaction.CommitRetaining;

      FrmBoletim.IBQuery_Disciplinas.Next;
      FrmBoletim.IBDS_ExibeNotas.Next;
      until FrmBoletim.IBQuery_Disciplinas.Eof;

    end else

    Dm.IBDS_BOLETIM.Locate('MATRICULA', DBGrid_InseriAluno.Columns.Items[1].Field.AsString, []);
    FrmBoletim.Seleciona_Notas;

    Screen.Cursor := crDefault;
    ShowMessage('Boletim alterado com sucesso!');
    BitBtn1.OnClick(nil);
  end
  else
    ShowMessage('Não é possível alterar dados, matrícula nº: "' + DBGrid_InseriAluno.Columns.Items[1].Field.AsString + '" não consta no boletim.');
  // CANCELA ALTERAÇÕES
  FrmBoletim.IBDS_ExibeNotas.Cancel;
  FrmBoletim.IBDS_ExibeNotas.CancelUpdates;
  Dm.IBTransaction.RollbackRetaining;
  Dm.IBDS_BOLETIM.Cancel;
  Dm.IBDS_BOLETIM.CancelUpdates;
  Dm.IBTransaction.RollbackRetaining;
  Screen.Cursor := crDefault;
end;

procedure TFrmInsereAluno.ObterDisciplinasPorCurso;
begin
  FrmBoletim.IBQuery_Disciplinas.Close;
  FrmBoletim.IBQuery_Disciplinas.SQL.Clear;
  FrmBoletim.IBQuery_Disciplinas.SQL.Add('select distinct DISCIPLINA from NOTAS ');
  FrmBoletim.IBQuery_Disciplinas.SQL.Add('where SERIE =:Serie and ANO_LETIVO =:ALetivo ');
  FrmBoletim.IBQuery_Disciplinas.ParamByName('Serie').AsString := DBText2.Caption;
  FrmBoletim.IBQuery_Disciplinas.ParamByName('ALetivo').AsString := DBGrid_InseriAluno.Columns.Items[2].Field.AsString;
  FrmBoletim.IBQuery_Disciplinas.SQL.Add('order by COD_NOTA');
  FrmBoletim.IBQuery_Disciplinas.Prepare;
  FrmBoletim.IBQuery_Disciplinas.Open;
end;

end.
