unit UnHistorico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, Menus, StdCtrls, Buttons, Grids,
  DBGrids, ExtCtrls;

type
  TFrmHistorico = class(TForm)
    DBGrid_Alun_Hist: TDBGrid;
    Btn_Fechar: TBitBtn;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Fechar1: TMenuItem;
    DS_AlunHist: TDataSource;
    Btn_Consultar: TBitBtn;
    SemImagem: TImage;
    Btn_Imprimir: TBitBtn;
    IBQuery_AlunHist: TIBQuery;
    IBQuery_AlunHistFOTO: TBlobField;
    IBQuery_AlunHistNOME_ALUNO: TIBStringField;
    IBQuery_AlunHistSERIE: TIBStringField;
    IBQuery_AlunHistCURSO: TIBStringField;
    IBQuery_AlunHistTURMA: TIBStringField;
    IBQuery_AlunHistTURNO: TIBStringField;
    IBQuery_AlunHistANO_LETIVO: TIBStringField;
    IBQuery_AlunHistMATRICULA: TIBStringField;
    Label4: TLabel;
    Label5: TLabel;
    DBGrid_Disc_Hist: TDBGrid;
    IBQuery_DiscHist: TIBQuery;
    Ds_DiscHist: TDataSource;
    IBQuery_DiscHistDISCIPLINA: TIBStringField;
    IBQuery_DiscHistANO_LETIVO: TIBStringField;
    DBGrid_Series_Hist: TDBGrid;
    Label6: TLabel;
    IBQuery_SeriesHist: TIBQuery;
    DS_SeriesHist: TDataSource;
    Edit_NomeAlun: TComboBox;
    Label2: TLabel;
    Edit_Mat: TEdit;
    Label1: TLabel;
    IBQuery_SeriesHistSERIE: TIBStringField;
    IBQuery_SeriesHistANO_LETIVO: TIBStringField;
    CBox_Curso: TComboBox;
    Label3: TLabel;
    IBQuery_DiscHistMEDIA_FINAL: TIBStringField;
    IBQuery_SeriesHistCOD_BOLE: TIntegerField;
    IBQuery_SeriesHistCURSO: TIBStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Btn_FecharClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBGrid_Alun_HistDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure Btn_ConsultarClick(Sender: TObject);
    procedure Btn_ImprimirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_NomeAlunKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_NomeAlunKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_MatKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_Series_HistCellClick(Column: TColumn);
    procedure CBox_CursoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  procedure CriarTabelaTemporaria;
  end;

var
  FrmHistorico: TFrmHistorico;
  Tipo: Integer;
  Campos : TField;
  Gera: Integer;
  str: String;

implementation

uses UnDm, UnPrincipal, UnAlunos, UnLocalizar;

{$R *.dfm}

procedure TFrmHistorico.FormCreate(Sender: TObject);
begin
Shortdateformat:='dd/mm/yyyy';
end;

procedure TFrmHistorico.FormShow(Sender: TObject);
begin
FrmHistorico.Top:=100;
FrmHistorico.Left:=0;
(*
Dm.IBDS_MATRICULAS.Open;
CBox_Curso.Items.Clear;
 Dm.IBDS_MATRICULAS.First;
 if not Dm.IBDS_MATRICULAS.Eof then
 repeat
 { seus comandos para a tabela }
CBox_Curso.Items.Add(Dm.IBDS_MATRICULASCURSO.AsString);
 Dm.IBDS_MATRICULAS.Next;
 until Dm.IBDS_MATRICULAS.Eof;
*)


if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmHistorico.Caption:= FrmHistorico.Caption;
Exit;
end else
FrmHistorico.Caption:= FrmHistorico.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end;

procedure TFrmHistorico.Btn_FecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmHistorico.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=Cafree;
end;

procedure TFrmHistorico.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
DeleteFile('C:\Windows\Temp\inat.jpg');
DeleteFile('C:\Windows\Temp\inat.bmp');
end;

procedure TFrmHistorico.DBGrid_Alun_HistDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
Img: TImage;
begin
if not odd(IBQuery_AlunHist.RecNo) then // se for impar
// se a célula não está selecionada
if not (gdSelected in State) then
begin
// define uma cor de fundo
DBGrid_Alun_Hist.Canvas.Brush.Color:= cl3DLight;
DBGrid_Alun_Hist.Canvas.FillRect(Rect); // pinta a célula
// pinta o texto padrão
DBGrid_Alun_Hist.DefaultDrawDataCell(rect,column.Field,State);
end;
  (*pinta o campo foto*)
if Column.Field = IBQuery_AlunHistFOTO then
begin
if IBQuery_AlunHistFOTO.Value <> '' then
begin
IBQuery_AlunHistFOTO.SaveToFile('C:\Windows\Temp\inat.jpg');
FrmPrincipal.ConverterJPegParaBmp('C:\Windows\Temp\inat.jpg');
end else
SemImagem.Picture.Bitmap.SaveToFile('C:\Windows\Temp\inat.bmp');
    if not (gdSelected in State) then // se não for a célula selecionada
    DBGrid_Alun_Hist.Canvas.FillRect(Rect); // limpa a célula
    Img:= TImage.Create(Self);
    with TPicture.Create do
    begin
if DBGrid_Alun_Hist.Fields[1].Text = '' then
begin
Assign(SemImagem.Picture.Bitmap);
end else
Img.Picture.LoadFromFile('C:\Windows\Temp\inat.bmp');
if IBQuery_AlunHistFOTO.Value = '' then
begin
 Assign(SemImagem.Picture.Bitmap);
end else
    Assign(Img.Picture.Bitmap);
    DBGrid_Alun_Hist.Canvas.StretchDraw(Rect,Bitmap);  // desenha imagem
    Free;
    end;
end;
end;

procedure TFrmHistorico.Btn_ConsultarClick(Sender: TObject);
begin 
if Trim(CBox_Curso.Text) = '' then
begin
CBox_Curso.SetFocus;
Exit;
end else
if Trim(Edit_NomeAlun.Text) = '' then
begin
Edit_NomeAlun.SetFocus;
Exit;
end else
Screen.Cursor := crSQLWait;
     // verifica se já houve filtros
     if Gera = 0 then
     begin
     Dm.ClientDS_Ata.IndexName := '';
     end else
Dm.IBDS_DiscAta.Close;
Dm.IBDS_DiscAta.SelectSQL.Clear;
Dm.IBDS_DiscAta.SelectSQL.Add('select distinct DISCIPLINA from NOTAS A ');
Dm.IBDS_DiscAta.SelectSQL.Add('where exists ( select * from BOLETIM where COD_BOLE = A.COD_BOLE and MATRICULA = A.MATRICULA)');
Dm.IBDS_DiscAta.SelectSQL.Add('order by COD_NOTA');
Dm.IBDS_DiscAta.Prepare;
Dm.IBDS_DiscAta.Open;

Dm.IBDS_NotAta.Close;
Dm.IBDS_NotAta.SelectSQL.Clear;
Dm.IBDS_NotAta.SelectSQL.Add('select * from NOTAS A ');
Dm.IBDS_NotAta.SelectSQL.Add('where exists ( select * from BOLETIM where COD_BOLE = A.COD_BOLE and MATRICULA = A.MATRICULA)');
Dm.IBDS_NotAta.SelectSQL.Add('order by COD_NOTA');
Dm.IBDS_NotAta.Open;

Dm.IBDS_MatAta.Close;
Dm.IBDS_MatAta.SelectSQL.Clear;
Dm.IBDS_MatAta.SelectSQL.Add('select * from MATRICUL A ');
Dm.IBDS_MatAta.SelectSQL.Add('where exists ( select * from BOLETIM where MATRICULA = A.MATRICULA and ANO_LETIVO = A.ANO_LETIVO)');
Dm.IBDS_MatAta.SelectSQL.Add('order by NOME_ALUNO');
Dm.IBDS_MatAta.Prepare;
Dm.IBDS_MatAta.Open;

CriarTabelaTemporaria;
//FrmPrincipal.BarraDeProgresso2(Dm.ClientDS_Ata, PBar);

Gera:= 0;
Screen.Cursor := crDefault;










(*
Edit_NomeAlun.Text:= '';
if not Dm.IBDS_BOLETIM.Locate('MATRICULA',Edit_Mat.Text,[]) then
begin
ShowMessage('A matrícula Nº: "'+Edit_Mat.Text+'" está incompleta ou é inválida. Tente novamente.');
Screen.Cursor := crDefault;
Edit_Mat.SetFocus;
Exit;
end else
//Seleciona_Notas;
Screen.Cursor := crDefault;
(*
if Edit_Matricula.Text <> '' then
begin
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
VerificaDados;    *)
end;

procedure TFrmHistorico.Btn_ImprimirClick(Sender: TObject);
begin
(*
if FrmRelAlunosRec <> Nil then Exit;
FrmRelAlunosRec := TFrmRelAlunosRec.Create(self);
FrmRelAlunosRec.QuickRep1.OnPreview := FrmPrincipal.CustomPreview;
FrmRelAlunosRec.QuickRep1.Preview;
FrmRelAlunosRec.Free;
FrmRelAlunosRec:= Nil; *)
end;

procedure TFrmHistorico.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and not (ActiveControl is TMemo) then begin
// desabilita processamento posterior da tecla
  Key := #0;
  Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFrmHistorico.Edit_NomeAlunKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
 Screen.Cursor := crSQLWait;
if CBox_Curso.Text = 'EDUCAÇÃO INFANTIL' then
begin
  // SELECIONA AS SERIRES E ANOS LETIVOS
 IBQuery_SeriesHist.Close;
 IBQuery_SeriesHist.SQL.Clear;
 IBQuery_SeriesHist.SQL.Add('select COD_BOLE, NOME_ALUNO, SERIE, CURSO, ANO_LETIVO from BOLETIM ');
 IBQuery_SeriesHist.SQL.Add('where NOME_ALUNO = :Nome and CURSO = :Curs');
 IBQuery_SeriesHist.ParamByName('Nome').AsString:= Edit_NomeAlun.Text;
 IBQuery_SeriesHist.ParamByName('Curs').AsString:= CBox_Curso.Text;
 IBQuery_SeriesHist.SQL.Add('order by SERIE');
 IBQuery_SeriesHist.Prepare;
 IBQuery_SeriesHist.Open;
 // SELECIONA ALUNO PARA HISTORICO
 IBQuery_AlunHist.Close;
 IBQuery_AlunHist.SQL.Clear;
 IBQuery_AlunHist.SQL.Add('select ANO_LETIVO, CURSO, FOTO, MATRICULA, NOME_ALUNO, SERIE, TURMA, TURNO from MATRICUL');
 IBQuery_AlunHist.SQL.Add('where NOME_ALUNO = :Nome and  exists ');
 IBQuery_AlunHist.SQL.Add('( select COD_NOTA, COD_BOLE, MATRICULA, DISCIPLINA, RESULTADO_FINAL, ANO_LETIVO from NOTAS)');
 IBQuery_AlunHist.ParamByName('Nome').AsString:= Edit_NomeAlun.Text;
 IBQuery_AlunHist.SQL.Add('order by NOME_ALUNO');
 IBQuery_AlunHist.Prepare;
 IBQuery_AlunHist.Open;
  // SELECIONA DISCIPLINAS
 IBQuery_DiscHist.Close;
 IBQuery_DiscHist.SQL.Clear;
 IBQuery_DiscHist.SQL.Add('select COD_NOTA, COD_BOLE, MATRICULA, DISCIPLINA, MEDIA_FINAL, RESULTADO_FINAL, ANO_LETIVO from NOTAS');
 IBQuery_DiscHist.SQL.Add('where COD_BOLE = :Bol');
 IBQuery_DiscHist.ParamByName('Bol').AsString:= IBQuery_SeriesHistCOD_BOLE.AsString;
 IBQuery_DiscHist.SQL.Add('order by DISCIPLINA');
 IBQuery_DiscHist.Prepare;
 IBQuery_DiscHist.Open;
Screen.Cursor := crDefault;
Exit;
end else
   // SELECIONA AS SERIRES E ANOS LETIVOS
 IBQuery_SeriesHist.Close;
 IBQuery_SeriesHist.SQL.Clear;
 IBQuery_SeriesHist.SQL.Add('select COD_BOLE, NOME_ALUNO, SERIE, CURSO, ANO_LETIVO from BOLETIM ');
 IBQuery_SeriesHist.SQL.Add('where NOME_ALUNO = :Nome and CURSO between :Cur1 and :Cur2');
 IBQuery_SeriesHist.ParamByName('Nome').AsString:= Edit_NomeAlun.Text;
 IBQuery_SeriesHist.ParamByName('Cur1').AsString:= CBox_Curso.Text+ ' I';
 IBQuery_SeriesHist.ParamByName('Cur2').AsString:= CBox_Curso.Text+ ' II';
 IBQuery_SeriesHist.SQL.Add('order by SERIE');
 IBQuery_SeriesHist.Prepare;
 IBQuery_SeriesHist.Open;
 // SELECIONA ALUNO PARA HISTORICO
 IBQuery_AlunHist.Close;
 IBQuery_AlunHist.SQL.Clear;
 IBQuery_AlunHist.SQL.Add('select ANO_LETIVO, CURSO, FOTO, MATRICULA, NOME_ALUNO, SERIE, TURMA, TURNO from MATRICUL');
 IBQuery_AlunHist.SQL.Add('where NOME_ALUNO = :Nome and  exists ');
 IBQuery_AlunHist.SQL.Add('( select COD_NOTA, COD_BOLE, MATRICULA, DISCIPLINA, RESULTADO_FINAL, ANO_LETIVO from NOTAS)');
 IBQuery_AlunHist.ParamByName('Nome').AsString:= Edit_NomeAlun.Text;
 IBQuery_AlunHist.SQL.Add('order by NOME_ALUNO');
 IBQuery_AlunHist.Prepare;
 IBQuery_AlunHist.Open;
  // SELECIONA DISCIPLINAS
 IBQuery_DiscHist.Close;
 IBQuery_DiscHist.SQL.Clear;
 IBQuery_DiscHist.SQL.Add('select COD_NOTA, COD_BOLE, MATRICULA, DISCIPLINA, MEDIA_FINAL, RESULTADO_FINAL, ANO_LETIVO from NOTAS');
 IBQuery_DiscHist.SQL.Add('where COD_BOLE = :Bol');
 IBQuery_DiscHist.ParamByName('Bol').AsString:= IBQuery_SeriesHistCOD_BOLE.AsString;
 IBQuery_DiscHist.SQL.Add('order by DISCIPLINA');
 IBQuery_DiscHist.Prepare;
 IBQuery_DiscHist.Open;
Screen.Cursor := crDefault;
end;
end;

procedure TFrmHistorico.Edit_NomeAlunKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  theText: string;
  p: integer;
begin
  with Edit_NomeAlun do
    case key of
      8, 13, 46, 37..40: ; // Se for backspace, enter, delete, ou setas, ignora...
      else
      begin
        p := SelStart;
        theText := copy(text, 0, p);
        if Dm.IBDS_BOLETIM.Locate('NOME_ALUNO', theText, [loCaseInsensitive, loPartialKey]) then
        begin
          text := Dm.IBDS_BOLETIM.FieldByName('NOME_ALUNO').AsString;
          SelStart := p;
          SelLength := length(text) - selStart;
       end;
   end;
  end;
end;

procedure TFrmHistorico.Edit_MatKeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['0'..'9','-',#8,#13] ) then
begin
key:=#0;
end;
 if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
if Edit_Mat.Text = '' then
begin
Edit_Mat.SetFocus;
Exit;
end else
Edit_Mat.Text:= FrmPrincipal.RetZero(Edit_Mat.Text, 15);
Edit_Mat.Text:= FrmLocalizar.FormataMat(Edit_Mat.Text);
if Edit_Mat.Text = '' then
begin
Btn_Consultar.Enabled:=False;
end else
Btn_Consultar.Enabled:=True;
if Btn_Consultar.Enabled = True then
begin
Btn_Consultar.SetFocus;
Btn_ConsultarClick(Nil);
end;
end;
end;

procedure TFrmHistorico.DBGrid_Series_HistCellClick(Column: TColumn);
begin
 IBQuery_DiscHist.Close;
 IBQuery_DiscHist.SQL.Clear;
 IBQuery_DiscHist.SQL.Add('select COD_NOTA, COD_BOLE, MATRICULA, DISCIPLINA, MEDIA_FINAL, RESULTADO_FINAL, ANO_LETIVO from NOTAS');
 IBQuery_DiscHist.SQL.Add('where COD_BOLE = :Bol');
 IBQuery_DiscHist.ParamByName('Bol').AsString:= IBQuery_SeriesHistCOD_BOLE.AsString;
 IBQuery_DiscHist.SQL.Add('order by DISCIPLINA');
 IBQuery_DiscHist.Prepare;
 IBQuery_DiscHist.Open;
end;

procedure TFrmHistorico.CBox_CursoChange(Sender: TObject);
begin
 Screen.Cursor := crSQLWait;
DBGrid_Alun_Hist.DataSource:= DS_SeriesHist;
if CBox_Curso.Text = 'EDUCAÇÃO INFANTIL' then
begin
 // SELECIONA ALUNOS DO CURSO INFORMADO
 IBQuery_AlunHist.Close;
 IBQuery_AlunHist.SQL.Clear;
 IBQuery_AlunHist.SQL.Add('select ANO_LETIVO, CURSO, FOTO, MATRICULA, NOME_ALUNO, SERIE, TURMA, TURNO from MATRICUL A');
 IBQuery_AlunHist.SQL.Add('where CURSO = :Curs and  exists ');
 IBQuery_AlunHist.SQL.Add('(select NOME_ALUNO, CURSO, MATRICULA from BOLETIM');
 IBQuery_AlunHist.SQL.Add('where CURSO = :Curs and MATRICULA = A.MATRICULA)');
 IBQuery_AlunHist.ParamByName('Curs').AsString:= CBox_Curso.Text;
 IBQuery_AlunHist.SQL.Add('order by NOME_ALUNO');
 IBQuery_AlunHist.Prepare;
 IBQuery_AlunHist.Open;

 Edit_NomeAlun.Items.Clear;
if not IBQuery_AlunHist.Eof then
repeat
{ meus comandos}
while not(IBQuery_AlunHist.Eof) do
begin
If Edit_NomeAlun.Items.IndexOf(IBQuery_AlunHist.fieldbyname('NOME_ALUNO').AsString) = -1 then
Edit_NomeAlun.Items.Add(IBQuery_AlunHist.fieldbyname('NOME_ALUNO').AsString);
IBQuery_AlunHist.Next;
end;
until IBQuery_AlunHist.Eof;
IBQuery_AlunHist.Close;
DBGrid_Alun_Hist.DataSource:= DS_AlunHist;
Screen.Cursor := crDefault;
Exit;
end else
 // SELECIONA ALUNOS DO CURSO INFORMADO
 IBQuery_AlunHist.Close;
 IBQuery_AlunHist.SQL.Clear;
 IBQuery_AlunHist.SQL.Add('select ANO_LETIVO, CURSO, FOTO, MATRICULA, NOME_ALUNO, SERIE, TURMA, TURNO from MATRICUL A');
 IBQuery_AlunHist.SQL.Add('where CURSO between :Cur1 and :Cur2 and  exists ');
 IBQuery_AlunHist.SQL.Add('(select NOME_ALUNO, CURSO, MATRICULA from BOLETIM');
 IBQuery_AlunHist.SQL.Add('where CURSO between :Cur1 and :Cur2 and MATRICULA = A.MATRICULA)');
 IBQuery_AlunHist.ParamByName('Cur1').AsString:= CBox_Curso.Text+ ' I';
 IBQuery_AlunHist.ParamByName('Cur2').AsString:= CBox_Curso.Text+ ' II';
 IBQuery_AlunHist.SQL.Add('order by NOME_ALUNO');
 IBQuery_AlunHist.Prepare;
 IBQuery_AlunHist.Open;

Edit_NomeAlun.Items.Clear;
if not IBQuery_AlunHist.Eof then
repeat
{ meus comandos}
while not(IBQuery_AlunHist.Eof) do
begin
If Edit_NomeAlun.Items.IndexOf(IBQuery_AlunHist.fieldbyname('NOME_ALUNO').AsString) = -1 then
Edit_NomeAlun.Items.Add(IBQuery_AlunHist.fieldbyname('NOME_ALUNO').AsString);
IBQuery_AlunHist.Next;
end;
until IBQuery_AlunHist.Eof;
IBQuery_AlunHist.Close;
DBGrid_Alun_Hist.DataSource:= DS_AlunHist;
Screen.Cursor := crDefault;
end;

procedure TFrmHistorico.CriarTabelaTemporaria;
begin
// cria estrutura do ClientDataSet
  with Dm do
  begin
    ClientDS_Ata.Close;
    ClientDS_Ata.Fields.Clear;
    ClientDS_Ata.FieldDefs.Clear;

    //coluna COD_BOLE
    Campos  := TIntegerField.Create(self);
    Campos.FieldName := 'COD_BOLE';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'Cliente';
    Campos.Visible:= False;

   // coluna NOME_ALUNO
    Campos  := TStringField.Create(self);
    Campos.FieldName := 'NOME_ALUNO';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'ALUNO(A)';
    Campos.Size:= 51;

    // colunas DISCIPLINAS
    IBDS_DiscAta.First;
    while not IBDS_DiscAta.Eof do
    begin
      Campos := TStringField.Create(Self);
    str:= StringReplace(IBDS_DiscAta.Fields[0].Value,'-',' ', [rfReplaceAll]);
    str:= StringReplace(str,'/',' ', [rfReplaceAll]);
      Campos.FieldName := FrmPrincipal.EliminaBrancos(FrmPrincipal.CheckDateFormat(FrmPrincipal.AnsiToAscii(str)));
      Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
      Campos.Index := ClientDS_Ata.FieldCount;
      Campos.DataSet := ClientDS_Ata;
      Campos.Required := False;
     // Campos.FieldKind := fkInternalCalc;
      Campos.DisplayLabel := FrmPrincipal.AbreviarNome(str);
      Campos.Alignment:= taCenter;
      Campos.Size:= 5;
      Campos.DisplayWidth:= 5;
      IBDS_DiscAta.Next;
    end;
with Dm do
  begin
    // coluna SITUACAO_FINAL
    Campos := TStringField.Create(Self);
    Campos.FieldName := 'SITUACAO_FINAL';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'SITUAÇÃO FINAL';
    Campos.Size:= 12;

    // coluna CURSO
    Campos := TStringField.Create(Self);
    Campos.FieldName := 'CURSO';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'CURSO';
    Campos.Size:= 22;
    Campos.Visible:= False;

    // coluna SERIE
    Campos := TStringField.Create(Self);
    Campos.FieldName := 'SERIE';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'SÉRIE';
    Campos.Size:= 30;
    Campos.Visible:= False;

    // coluna TURMA
    Campos := TStringField.Create(Self);
    Campos.FieldName := 'TURMA';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'TURMA';
    Campos.Size:= 10;
    Campos.Visible:= False;

    // coluna TURNO
    Campos := TStringField.Create(Self);
    Campos.FieldName := 'TURNO';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'TURNO';
    Campos.Size:= 5;
    Campos.Visible:= False;

    // coluna ANO_LETIVO
    Campos := TStringField.Create(Self);
    Campos.FieldName := 'ANO_LETIVO';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'ANO LETIVO';
    Campos.Size:= 4;
    Campos.Visible:= False;

end;
    //cria o ClientDataSet em memória e indexa
    ClientDS_Ata.CreateDataSet;
    ClientDS_Ata.AddIndex('cliente','COD_BOLE',[],'','',0);
    ClientDS_Ata.IndexName := 'cliente';
    ClientDS_Ata.IndexFieldNames:= 'NOME_ALUNO';

    // adiciona os dados cruzados baseado na consulta
    IBDS_NotAta.First;
    while not IBDS_NotAta.Eof do
    begin
      if not ClientDS_Ata.Locate('COD_BOLE', IBDS_NotAta.FieldByName('COD_BOLE').Value,[])
   and
  Dm.IBDS_MatAta.Locate('MATRICULA', IBDS_NotAta.FieldByName('MATRICULA').Value,[])
      then
      begin
        ClientDS_Ata.Append;
        ClientDS_Ata.FieldByName('COD_BOLE').AsInteger := IBDS_NotAta.FieldByName('COD_BOLE').AsInteger;
        ClientDS_Ata.FieldByName('NOME_ALUNO').AsString := IBDS_MatAta.FieldByName('NOME_ALUNO').AsString;
      end else
ClientDS_Ata.Edit;
    str:= StringReplace(IBDS_NotAta.FieldByName('DISCIPLINA').Value,'-',' ', [rfReplaceAll]);
    str:= StringReplace(str,'/',' ', [rfReplaceAll]);
ClientDS_Ata.FieldByName(FrmPrincipal.EliminaBrancos(FrmPrincipal.CheckDateFormat(FrmPrincipal.AnsiToAscii(str)))).AsString:= IBDS_NotAta.FieldByName('MEDIA_FINAL').AsString;
ClientDS_Ata.FieldByName('SITUACAO_FINAL').AsString:= IBDS_NotAta.FieldByName('RESULTADO_FINAL').AsString;

ClientDS_Ata.FieldByName('CURSO').AsString:= IBDS_MatAta.FieldByName('CURSO').AsString;
ClientDS_Ata.FieldByName('SERIE').AsString:= IBDS_MatAta.FieldByName('SERIE').AsString;
ClientDS_Ata.FieldByName('TURMA').AsString:= IBDS_MatAta.FieldByName('TURMA').AsString;
ClientDS_Ata.FieldByName('TURNO').AsString:= IBDS_MatAta.FieldByName('TURNO').AsString;
ClientDS_Ata.FieldByName('ANO_LETIVO').AsString:= IBDS_MatAta.FieldByName('ANO_LETIVO').AsString;
ClientDS_Ata.Post;
IBDS_NotAta.Next;
IBDS_MatAta.Next;
   end;
  end;    
end;

end.
