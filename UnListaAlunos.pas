unit UnListaAlunos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, Menus, StdCtrls, Buttons, Grids,
  DBGrids, ExtCtrls;

type
  TFrmListaAlunos = class(TForm)
    DBGrid_Listagem: TDBGrid;
    Btn_Fechar: TBitBtn;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Fechar1: TMenuItem;
    DS_ALUNOS: TDataSource;
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
    IBQuery_ALUNOS: TIBQuery;
    IBQuery_ALUNOSFOTO: TBlobField;
    IBQuery_ALUNOSNOME_ALUNO: TIBStringField;
    IBQuery_ALUNOSSERIE: TIBStringField;
    IBQuery_ALUNOSCURSO: TIBStringField;
    IBQuery_ALUNOSTURMA: TIBStringField;
    IBQuery_ALUNOSTURNO: TIBStringField;
    IBQuery_ALUNOSANO_LETIVO: TIBStringField;
    IBQuery_ALUNOSMATRICULA: TIBStringField;
    procedure CBox_TurnoEnter(Sender: TObject);
    procedure CBox_TurmaEnter(Sender: TObject);
    procedure CBox_SerieEnter(Sender: TObject);
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
    procedure DBGrid_ListagemDblClick(Sender: TObject);
    procedure DBGrid_ListagemCellClick(Column: TColumn);
  private
    { Private declarations }
    procedure VerificaDados;
  public
    { Public declarations }
  end;

var
  FrmListaAlunos: TFrmListaAlunos;
  Tipo: Integer;

implementation

uses UnDm, UnPrincipal, UnAlunos, UnRelAlunos, UnDmSeleciona;

{$R *.dfm}

procedure TFrmListaAlunos.FormCreate(Sender: TObject);
begin
Shortdateformat:='dd/mm/yyyy';
end;

procedure TFrmListaAlunos.FormShow(Sender: TObject);
begin
FrmListaAlunos.Top:=100;
FrmListaAlunos.Left:=0;
Screen.Cursor := crHourGlass;
 IBQuery_ALUNOS.Close;
 IBQuery_ALUNOS.SQL.Clear;
// IBQuery_ALUNOS.SQL.Add('select ANO_LETIVO, CURSO, FOTO, MATRICULA, NOME_ALUNO, SERIE, TURMA, TURNO from MATRICUL ');
// IBQuery_ALUNOS.SQL.Add('where ANO_LETIVO = :AnoLet ');
 IBQuery_ALUNOS.SQL.Add('select distinct M.ANO_LETIVO, M.CURSO, M.FOTO, M.MATRICULA, A.NOME_ALUNO, M.SERIE, M.TURMA, M.TURNO from MATRICUL M, ALUNOS A ');
 IBQuery_ALUNOS.SQL.Add('where M.ANO_LETIVO = :AnoLet and M.MATRICULA = A.MATRICULA ');
 IBQuery_ALUNOS.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_ALUNOS.SQL.Add('order by A.NOME_ALUNO, M.SERIE');
 IBQuery_ALUNOS.Prepare;
 IBQuery_ALUNOS.Open;
Screen.Cursor := crDefault;
VerificaDados;
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmListaAlunos.Caption:= FrmListaAlunos.Caption;
Exit;
end else
FrmListaAlunos.Caption:= FrmListaAlunos.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end;

procedure TFrmListaAlunos.Btn_FecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmListaAlunos.Btn_TodosClick(Sender: TObject);
begin
Tipo:= 2;
Screen.Cursor := crHourGlass;
 IBQuery_ALUNOS.Close;
 IBQuery_ALUNOS.SQL.Clear;
 IBQuery_ALUNOS.SQL.Add('select ANO_LETIVO, CURSO, FOTO, MATRICULA, NOME_ALUNO, SERIE, TURMA, TURNO from MATRICUL ');
 IBQuery_ALUNOS.SQL.Add('where ANO_LETIVO = :AnoLet ');
 IBQuery_ALUNOS.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_ALUNOS.SQL.Add('order by NOME_ALUNO, SERIE');
 IBQuery_ALUNOS.Prepare;
 IBQuery_ALUNOS.Open;
Screen.Cursor := crDefault;
VerificaDados;
if Btn_Imprimir.Enabled = True then
begin
Btn_Imprimir.SetFocus;
end;
end;

procedure TFrmListaAlunos.CBox_SerieEnter(Sender: TObject);
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

procedure TFrmListaAlunos.CBox_TurmaEnter(Sender: TObject);
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

procedure TFrmListaAlunos.CBox_TurnoEnter(Sender: TObject);
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

procedure TFrmListaAlunos.DBGrid_ListagemKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
Dm.IBDS_ALUNOS.Locate('MATRICULA', DBGrid_Listagem.Fields[7].Text, []);
end;

procedure TFrmListaAlunos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=Cafree;
end;

procedure TFrmListaAlunos.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
DeleteFile('C:\Windows\Temp\inat.jpg');
DeleteFile('C:\Windows\Temp\inat.bmp');
end;

procedure TFrmListaAlunos.DBGrid_ListagemDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
Img: TImage;
begin
if not odd(IBQuery_ALUNOS.RecNo) then // se for impar
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
if Column.Field = IBQuery_ALUNOSFOTO then
begin
if IBQuery_ALUNOSFOTO.Value <> '' then
begin
IBQuery_ALUNOSFOTO.SaveToFile('C:\Windows\Temp\inat.jpg');
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
if IBQuery_ALUNOSFOTO.Value = '' then
begin
 Assign(SemImagem.Picture.Bitmap);
end else
    Assign(Img.Picture.Bitmap);
    DBGrid_Listagem.Canvas.StretchDraw(Rect,Bitmap);  // desenha imagem
    Free;
    end;
end;
end;

procedure TFrmListaAlunos.Btn_InformarClick(Sender: TObject);
begin
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
if CBox_Turno.Text = ''then
begin
CBox_Turno.SetFocus;
Exit;
end else
Tipo:= 1;
Screen.Cursor := crHourGlass;
 IBQuery_ALUNOS.Close;
 IBQuery_ALUNOS.SQL.Clear;
 IBQuery_ALUNOS.SQL.Add('select ANO_LETIVO, CURSO, FOTO, MATRICULA, NOME_ALUNO, SERIE, TURMA, TURNO from MATRICUL ');
 IBQuery_ALUNOS.SQL.Add('where SERIE = :SerieAluno and TURMA = :TurmaAluno and TURNO = :TurnoAluno and ANO_LETIVO = :AnoLet ');
 IBQuery_ALUNOS.ParamByName('SerieAluno').AsString:= CBox_Serie.Text;
 IBQuery_ALUNOS.ParamByName('TurmaAluno').AsString:= CBox_Turma.Text;
 IBQuery_ALUNOS.ParamByName('TurnoAluno').AsString:= CBox_Turno.Text;
 IBQuery_ALUNOS.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_ALUNOS.SQL.Add('order by NOME_ALUNO');
 IBQuery_ALUNOS.Prepare;
 IBQuery_ALUNOS.Open;
Screen.Cursor := crDefault;
VerificaDados;
if Btn_Imprimir.Enabled = True then
begin
Btn_Imprimir.SetFocus;
end;
end;

procedure TFrmListaAlunos.Btn_ImprimirClick(Sender: TObject);
begin
try
 FrmRelAlunos:=TFrmRelAlunos.Create(nil);
 FrmRelAlunos.QuickRep1.PreviewModal;
finally
 FrmRelAlunos.Release;
end;
end;

procedure TFrmListaAlunos.VerificaDados;
begin
if DBGrid_Listagem.Fields[1].Text = '' then
begin
Btn_Imprimir.Enabled:= False;
DBGrid_Listagem.Enabled:= False;
Btn_Fechar.SetFocus;
Exit;
end else
Btn_Imprimir.Enabled:= True;
DBGrid_Listagem.Enabled:= True;
end;

procedure TFrmListaAlunos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and not (ActiveControl is TMemo) then begin
// desabilita processamento posterior da tecla
  Key := #0;
  Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFrmListaAlunos.DBGrid_ListagemDblClick(Sender: TObject);
begin
  Close;
FrmAlunos:= TFrmAlunos.Create(Application);
try
  FrmAlunos.ShowModal;
finally
  FrmAlunos.Free;
end;
end;

procedure TFrmListaAlunos.DBGrid_ListagemCellClick(Column: TColumn);
begin
Dm.IBDS_ALUNOS.Locate('MATRICULA', DBGrid_Listagem.Fields[7].Text, []);
end;

end.
