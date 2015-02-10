unit UnCarteiras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, Menus, StdCtrls, Buttons, Grids,
  DBGrids, ExtCtrls;

type
  TFrmCarteiras = class(TForm)
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
  FrmCarteiras: TFrmCarteiras;
  Tipo: Integer;

implementation

uses UnDm, UnPrincipal, UnRelCarteiras, UnAlunos;

{$R *.dfm}

procedure TFrmCarteiras.FormCreate(Sender: TObject);
begin
Shortdateformat:='dd/mm/yyyy';
end;

procedure TFrmCarteiras.FormShow(Sender: TObject);
begin
FrmCarteiras.Top:=100;
FrmCarteiras.Left:=0;
Screen.Cursor := crHourGlass;
 IBQuery_ALUNOS.Close;
 IBQuery_ALUNOS.SQL.Clear;
 IBQuery_ALUNOS.SQL.Add('select ANO_LETIVO, CURSO, FOTO, MATRICULA, NOME_ALUNO, SERIE, TURMA, TURNO from MATRICUL ');
 IBQuery_ALUNOS.SQL.Add('where ANO_LETIVO = :AnoLet ');
 IBQuery_ALUNOS.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_ALUNOS.SQL.Add('order by NOME_ALUNO,SERIE');
 IBQuery_ALUNOS.Prepare;
 IBQuery_ALUNOS.Open;
Screen.Cursor := crDefault;
VerificaDados;
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmCarteiras.Caption:= FrmCarteiras.Caption;
Exit;
end else
FrmCarteiras.Caption:= FrmCarteiras.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end;

procedure TFrmCarteiras.Btn_FecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmCarteiras.Btn_TodosClick(Sender: TObject);
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

procedure TFrmCarteiras.DBGrid_ListagemKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
Dm.IBDS_ALUNOS.Locate('MATRICULA', DBGrid_Listagem.Fields[7].Text, []);
end;

procedure TFrmCarteiras.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=Cafree;
end;

procedure TFrmCarteiras.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
DeleteFile('C:\Windows\Temp\inat.jpg');
DeleteFile('C:\Windows\Temp\inat.bmp');
end;

procedure TFrmCarteiras.DBGrid_ListagemDrawColumnCell(Sender: TObject;
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

procedure TFrmCarteiras.Btn_InformarClick(Sender: TObject);
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

procedure TFrmCarteiras.Btn_ImprimirClick(Sender: TObject);
begin
try
 FrmRelCarteiras:=TFrmRelCarteiras.Create(nil);
 FrmRelCarteiras.QuickRep1.PreviewModal;
finally
 FrmRelCarteiras.Release;
end;
end;

procedure TFrmCarteiras.VerificaDados;
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

procedure TFrmCarteiras.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and not (ActiveControl is TMemo) then begin
// desabilita processamento posterior da tecla
  Key := #0;
  Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFrmCarteiras.DBGrid_ListagemDblClick(Sender: TObject);
begin
  Close;
FrmAlunos:= TFrmAlunos.Create(Application);
try
  FrmAlunos.ShowModal;
finally
  FrmAlunos.Free;
end;
end;

procedure TFrmCarteiras.DBGrid_ListagemCellClick(Column: TColumn);
begin
Dm.IBDS_ALUNOS.Locate('MATRICULA', DBGrid_Listagem.Fields[7].Text, []);
end;

end.
