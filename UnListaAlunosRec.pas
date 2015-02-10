unit UnListaAlunosRec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, Menus, StdCtrls, Buttons, Grids,
  DBGrids, ExtCtrls;

type
  TFrmListaAlunosRec = class(TForm)
    DBGrid_Listagem: TDBGrid;
    Btn_Fechar: TBitBtn;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Fechar1: TMenuItem;
    DS_AlunRec: TDataSource;
    Btn_Todos: TBitBtn;
    Btn_Informar: TBitBtn;
    SemImagem: TImage;
    CBox_Serie: TComboBox;
    CBox_Turma: TComboBox;
    CBox_Turno: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Btn_Imprimir: TBitBtn;
    IBQuery_AlunRec: TIBQuery;
    IBQuery_AlunRecFOTO: TBlobField;
    IBQuery_AlunRecNOME_ALUNO: TIBStringField;
    IBQuery_AlunRecSERIE: TIBStringField;
    IBQuery_AlunRecCURSO: TIBStringField;
    IBQuery_AlunRecTURMA: TIBStringField;
    IBQuery_AlunRecTURNO: TIBStringField;
    IBQuery_AlunRecANO_LETIVO: TIBStringField;
    IBQuery_AlunRecMATRICULA: TIBStringField;
    Label4: TLabel;
    Label5: TLabel;
    DBGrid_Parcelas: TDBGrid;
    IBQuery_Dep: TIBQuery;
    Ds_Dep: TDataSource;
    IBQuery_DepCOD_NOTA: TIntegerField;
    IBQuery_DepCOD_BOLE: TIntegerField;
    IBQuery_DepMATRICULA: TIBStringField;
    IBQuery_DepDISCIPLINA: TIBStringField;
    IBQuery_DepRESULTADO_FINAL: TIBStringField;
    IBQuery_DepANO_LETIVO: TIBStringField;
    Edit_Matricula: TEdit;
    Label9: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Btn_FecharClick(Sender: TObject);
    procedure Btn_TodosClick(Sender: TObject);
    procedure DBGrid_ListagemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBGrid_ListagemDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure Btn_InformarClick(Sender: TObject);
    procedure Btn_ImprimirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_ListagemCellClick(Column: TColumn);
    procedure Edit_MatriculaExit(Sender: TObject);
    procedure CBox_SerieEnter(Sender: TObject);
    procedure CBox_TurmaEnter(Sender: TObject);
    procedure CBox_TurnoEnter(Sender: TObject);
  private
    { Private declarations }
    procedure VerificaDados;
  public
    { Public declarations }
  end;

var
  FrmListaAlunosRec: TFrmListaAlunosRec;
  Tipo: Integer;

implementation

uses UnDm, UnPrincipal, UnAlunos, UnLocalizar, UnRelAlunosRec, UnDmSeleciona;

{$R *.dfm}

procedure TFrmListaAlunosRec.FormCreate(Sender: TObject);
begin
Shortdateformat:='dd/mm/yyyy';
end;

procedure TFrmListaAlunosRec.FormShow(Sender: TObject);
begin
FrmListaAlunosRec.Top:=100;
FrmListaAlunosRec.Left:=0;
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmListaAlunosRec.Caption:= FrmListaAlunosRec.Caption;
Exit;
end else
FrmListaAlunosRec.Caption:= FrmListaAlunosRec.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end;

procedure TFrmListaAlunosRec.Btn_FecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmListaAlunosRec.Btn_TodosClick(Sender: TObject);
begin
Screen.Cursor := crSQLWait;
// SELECIONA AS RECUPERAÇÕES
 IBQuery_Dep.Close;
 IBQuery_Dep.SQL.Clear;
 IBQuery_Dep.SQL.Add('select COD_NOTA, COD_BOLE, MATRICULA, DISCIPLINA, RESULTADO_FINAL, ANO_LETIVO from NOTAS ');
 IBQuery_Dep.SQL.Add('where ANO_LETIVO = :AnoLet and RESULTADO_FINAL = :Resultado');
 IBQuery_Dep.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_Dep.ParamByName('Resultado').AsString:= 'REC.';
 IBQuery_Dep.SQL.Add('order by DISCIPLINA');
 IBQuery_Dep.Prepare;
 IBQuery_Dep.Open;
 // SELECIONA NOMES DE ALUNOS DE RECUPERAÇÃO
 IBQuery_AlunRec.Close;
 IBQuery_AlunRec.SQL.Clear;
 IBQuery_AlunRec.SQL.Add('select ANO_LETIVO, CURSO, FOTO, MATRICULA, NOME_ALUNO, SERIE, TURMA, TURNO from MATRICUL A');
 IBQuery_AlunRec.SQL.Add('where ANO_LETIVO = :AnoLet and exists ( select COD_NOTA, COD_BOLE, MATRICULA, DISCIPLINA, RESULTADO_FINAL, ANO_LETIVO from NOTAS B ');
 IBQuery_AlunRec.SQL.Add('where ANO_LETIVO = :AnoLet and RESULTADO_FINAL = :Resultado and B.MATRICULA = A.MATRICULA)');
 IBQuery_AlunRec.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_AlunRec.ParamByName('Resultado').AsString:= 'REC.';
 IBQuery_AlunRec.SQL.Add('order by NOME_ALUNO');
 IBQuery_AlunRec.Prepare;
 IBQuery_AlunRec.Open;
 IBQuery_Dep.Close;
Screen.Cursor := crDefault;
VerificaDados;
end;

procedure TFrmListaAlunosRec.DBGrid_ListagemKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 IBQuery_Dep.Close;
 IBQuery_Dep.SQL.Clear;
 IBQuery_Dep.SQL.Add('select COD_NOTA, COD_BOLE, MATRICULA, DISCIPLINA, RESULTADO_FINAL, ANO_LETIVO from NOTAS ');
 IBQuery_Dep.SQL.Add('where ANO_LETIVO = :AnoLet and RESULTADO_FINAL = :Resultado and MATRICULA = :Mat');
 IBQuery_Dep.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_Dep.ParamByName('Resultado').AsString:= 'REC.';
 IBQuery_Dep.ParamByName('Mat').AsString:= IBQuery_AlunRecMATRICULA.AsString;
 IBQuery_Dep.SQL.Add('order by DISCIPLINA');
 IBQuery_Dep.Prepare;
 IBQuery_Dep.Open;
end;

procedure TFrmListaAlunosRec.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=Cafree;
end;

procedure TFrmListaAlunosRec.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
DeleteFile('C:\Windows\Temp\inat.jpg');
DeleteFile('C:\Windows\Temp\inat.bmp');
end;

procedure TFrmListaAlunosRec.DBGrid_ListagemDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
Img: TImage;
begin
if not odd(IBQuery_AlunRec.RecNo) then // se for impar
// se a célula não está selecionada
if not (gdSelected in State) then
begin
// define uma cor de fundo
DBGrid_Listagem.Canvas.Brush.Color:= cl3DLight;
DBGrid_Listagem.Canvas.FillRect(Rect); // pinta a célula
// pinta o texto padrão
DBGrid_Listagem.DefaultDrawDataCell(rect,column.Field,State);
end;
  (*pinta o campo foto*)
if Column.Field = IBQuery_AlunRecFOTO then
begin
if IBQuery_AlunRecFOTO.Value <> '' then
begin
IBQuery_AlunRecFOTO.SaveToFile('C:\Windows\Temp\inat.jpg');
FrmPrincipal.ConverterJPegParaBmp('C:\Windows\Temp\inat.jpg');
end else
SemImagem.Picture.Bitmap.SaveToFile('C:\Windows\Temp\inat.bmp');
    if not (gdSelected in State) then // se não for a célula selecionada
    DBGrid_Listagem.Canvas.FillRect(Rect); // limpa a célula
    Img:= TImage.Create(Self);
    with TPicture.Create do
    begin
if DBGrid_Listagem.Fields[1].Text = '' then
begin
Assign(SemImagem.Picture.Bitmap);
end else
Img.Picture.LoadFromFile('C:\Windows\Temp\inat.bmp');
if IBQuery_AlunRecFOTO.Value = '' then
begin
 Assign(SemImagem.Picture.Bitmap);
end else
    Assign(Img.Picture.Bitmap);
    DBGrid_Listagem.Canvas.StretchDraw(Rect,Bitmap);  // desenha imagem
    Free;
    end;
end;
end;

procedure TFrmListaAlunosRec.Btn_InformarClick(Sender: TObject);
begin
if Edit_Matricula.Text <> '' then
begin
CBox_Serie.Text:= '';
CBox_Turma.Text:= '';
CBox_Turno.Text:= '';
Screen.Cursor := crSQLWait;
// SELECIONA AS RECUPERAÇÕES
 IBQuery_Dep.Close;
 IBQuery_Dep.SQL.Clear;
 IBQuery_Dep.SQL.Add('select COD_NOTA, COD_BOLE, MATRICULA, DISCIPLINA, RESULTADO_FINAL, ANO_LETIVO from NOTAS ');
 IBQuery_Dep.SQL.Add('where ANO_LETIVO = :AnoLet and RESULTADO_FINAL = :Resultado');
 IBQuery_Dep.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_Dep.ParamByName('Resultado').AsString:= 'REC.';
 IBQuery_Dep.SQL.Add('order by MATRICULA');
 IBQuery_Dep.Prepare;
 IBQuery_Dep.Open;
 // SELECIONA NOMES DE ALUNOS DE RECUPERAÇÃO
 IBQuery_AlunRec.Close;
 IBQuery_AlunRec.SQL.Clear;
 IBQuery_AlunRec.SQL.Add('select ANO_LETIVO, CURSO, FOTO, MATRICULA, NOME_ALUNO, SERIE, TURMA, TURNO from MATRICUL A');
 IBQuery_AlunRec.SQL.Add('where MATRICULA = :Mat and ANO_LETIVO = :AnoLet and  exists ');
 IBQuery_AlunRec.SQL.Add('( select COD_NOTA, COD_BOLE, MATRICULA, DISCIPLINA, RESULTADO_FINAL, ANO_LETIVO from NOTAS B ');
 IBQuery_AlunRec.SQL.Add('where ANO_LETIVO = :AnoLet and RESULTADO_FINAL = :Resultado and B.MATRICULA = :Mat)');
 IBQuery_AlunRec.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_AlunRec.ParamByName('Mat').AsString:= Edit_Matricula.Text;
 IBQuery_AlunRec.ParamByName('Resultado').AsString:= 'REC.';
 IBQuery_AlunRec.SQL.Add('order by NOME_ALUNO');
 IBQuery_AlunRec.Prepare;
 IBQuery_AlunRec.Open;
 IBQuery_Dep.Close;
Screen.Cursor := crDefault;
VerificaDados;
Exit;
end else
if CBox_Serie.Text = '' then
begin
CBox_Serie.SetFocus;
Exit;
end else
if CBox_Turma.Text = '' then
begin
CBox_Turma.SetFocus;
Exit;
end else
if CBox_Turno.Text = '' then
begin
CBox_Turno.SetFocus;
Exit;
end else
Screen.Cursor := crSQLWait;
// SELECIONA AS RECUPERAÇÕES
 IBQuery_Dep.Close;
 IBQuery_Dep.SQL.Clear;
 IBQuery_Dep.SQL.Add('select COD_NOTA, COD_BOLE, MATRICULA, DISCIPLINA, RESULTADO_FINAL, ANO_LETIVO from NOTAS ');
 IBQuery_Dep.SQL.Add('where ANO_LETIVO = :AnoLet and RESULTADO_FINAL = :Resultado');
 IBQuery_Dep.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_Dep.ParamByName('Resultado').AsString:= 'REC.';
 IBQuery_Dep.SQL.Add('order by MATRICULA');
 IBQuery_Dep.Prepare;
 IBQuery_Dep.Open;
 // SELECIONA NOMES DE ALUNOS DE RECUPERAÇÃO
 IBQuery_AlunRec.Close;
 IBQuery_AlunRec.SQL.Clear;
 IBQuery_AlunRec.SQL.Add('select ANO_LETIVO, CURSO, FOTO, MATRICULA, NOME_ALUNO, SERIE, TURMA, TURNO from MATRICUL A');
 IBQuery_AlunRec.SQL.Add('where ANO_LETIVO = :AnoLet and SERIE = :Serie and TURMA = :Turma and TURNO = :Turno and exists');
 IBQuery_AlunRec.SQL.Add('( select COD_NOTA, COD_BOLE, MATRICULA, DISCIPLINA, RESULTADO_FINAL, ANO_LETIVO from NOTAS B ');
 IBQuery_AlunRec.SQL.Add('where ANO_LETIVO = :AnoLet and RESULTADO_FINAL = :Resultado and B.MATRICULA = A.MATRICULA)');
 IBQuery_AlunRec.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_AlunRec.ParamByName('Serie').AsString:= CBox_Serie.Text;
 IBQuery_AlunRec.ParamByName('Turno').AsString:= CBox_Turno.Text;
 IBQuery_AlunRec.ParamByName('Turma').AsString:= CBox_Turma.Text;
 IBQuery_AlunRec.ParamByName('Resultado').AsString:= 'REC.';
 IBQuery_AlunRec.SQL.Add('order by NOME_ALUNO');
 IBQuery_AlunRec.Prepare;
 IBQuery_AlunRec.Open;
 IBQuery_Dep.Close;
 DBGrid_Listagem.SelectedIndex;
Screen.Cursor := crDefault;
VerificaDados;
end;

procedure TFrmListaAlunosRec.Btn_ImprimirClick(Sender: TObject);
begin
try
 FrmRelAlunosRec:=TFrmRelAlunosRec.Create(nil);
 FrmRelAlunosRec.QuickRep1.PreviewModal;
finally
 FrmRelAlunosRec.Release;
end;
end;

procedure TFrmListaAlunosRec.VerificaDados;
begin
if DBGrid_Listagem.Fields[1].Text = '' then
begin
Btn_Imprimir.Enabled:= False;
DBGrid_Listagem.Enabled:= False;
Exit;
end else
DBGrid_Listagem.Enabled:= True;
Btn_Imprimir.Enabled:= True;
end;

procedure TFrmListaAlunosRec.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and not (ActiveControl is TMemo) then begin
// desabilita processamento posterior da tecla
  Key := #0;
  Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFrmListaAlunosRec.DBGrid_ListagemCellClick(Column: TColumn);
begin
 IBQuery_Dep.Close;
 IBQuery_Dep.SQL.Clear;
 IBQuery_Dep.SQL.Add('select COD_NOTA, COD_BOLE, MATRICULA, DISCIPLINA, RESULTADO_FINAL, ANO_LETIVO from NOTAS ');
 IBQuery_Dep.SQL.Add('where ANO_LETIVO = :AnoLet and RESULTADO_FINAL = :Resultado and MATRICULA = :Mat');
 IBQuery_Dep.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_Dep.ParamByName('Resultado').AsString:= 'REC.';
 IBQuery_Dep.ParamByName('Mat').AsString:= IBQuery_AlunRecMATRICULA.AsString;
 IBQuery_Dep.SQL.Add('order by DISCIPLINA');
 IBQuery_Dep.Prepare;
 IBQuery_Dep.Open;
end;

procedure TFrmListaAlunosRec.Edit_MatriculaExit(Sender: TObject);
begin
Edit_Matricula.Text:= FrmPrincipal.RetZero(Edit_Matricula.Text, 15);
Edit_Matricula.Text:= FrmLocalizar.FormataMat(Edit_Matricula.Text);
end;

procedure TFrmListaAlunosRec.CBox_SerieEnter(Sender: TObject);
begin
Edit_Matricula.Text:= '';
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
end;

procedure TFrmListaAlunosRec.CBox_TurmaEnter(Sender: TObject);
begin
Edit_Matricula.Text:= '';
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

procedure TFrmListaAlunosRec.CBox_TurnoEnter(Sender: TObject);
begin
Edit_Matricula.Text:= '';
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

end.
