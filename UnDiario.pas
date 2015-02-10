unit UnDiario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, Menus, StdCtrls, Buttons, Grids,
  DBGrids, ExtCtrls, ComCtrls;

type
  TFrmDiario = class(TForm)
    DBGrid_Listagem: TDBGrid;
    Btn_Fechar: TBitBtn;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Fechar1: TMenuItem;
    DS_DIARIO: TDataSource;
    Btn_Informar: TBitBtn;
    SemImagem: TImage;
    Btn_Imprimir: TBitBtn;
    IBQuery_Diario: TIBQuery;
    IBQuery_DiarioFOTO: TBlobField;
    IBQuery_DiarioNOME_ALUNO: TIBStringField;
    IBQuery_DiarioSERIE: TIBStringField;
    IBQuery_DiarioTURMA: TIBStringField;
    IBQuery_DiarioTURNO: TIBStringField;
    IBQuery_DiarioANO_LETIVO: TIBStringField;
    IBQuery_DiarioMATRICULA: TIBStringField;
    SeletorMes: TDateTimePicker;
    Label6: TLabel;
    IBQuery_DiarioCURSO: TIBStringField;
    Label11: TLabel;
    CBox_Curso: TComboBox;
    Label3: TLabel;
    CBox_Serie: TComboBox;
    Label1: TLabel;
    CBox_Turma: TComboBox;
    Label2: TLabel;
    CBox_Turno: TComboBox;
    Label9: TLabel;
    CBox_Disciplina: TComboBox;
    CBox_AnoLetivo: TComboBox;
    Mensal: TRadioButton;
    RadioButton1: TRadioButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Btn_FecharClick(Sender: TObject);
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
  FrmDiario: TFrmDiario;

implementation

uses UnDm, UnPrincipal, UnAlunos, UnRelDiario, UnRelDiarioInf;

{$R *.dfm}

procedure TFrmDiario.FormCreate(Sender: TObject);
begin
Shortdateformat:='dd/mm/yyyy';
SeletorMes.Date:= Data;
end;

procedure TFrmDiario.FormShow(Sender: TObject);
begin
FrmDiario.Top:=100;
FrmDiario.Left:=0;

CBox_Disciplina.Items.Clear;
 Dm.IBDS_MATERIAS.First;
 if not Dm.IBDS_MATERIAS.Eof then
 repeat
 { seus comandos para a tabela }
CBox_Disciplina.Items.Add(Dm.IBDS_MATERIASDISCIPLINA.AsString);
 Dm.IBDS_MATERIAS.Next;
 until Dm.IBDS_MATERIAS.Eof;

 IBQuery_Diario.Close;
 IBQuery_Diario.SQL.Clear;
 IBQuery_Diario.SQL.Add('select ANO_LETIVO, CURSO, FOTO, MATRICULA, NOME_ALUNO, SERIE, TURMA, TURNO from MATRICUL ');
 IBQuery_Diario.SQL.Add('where ANO_LETIVO = :AnoLet ');
 IBQuery_Diario.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_Diario.SQL.Add('order by NOME_ALUNO,SERIE');
 IBQuery_Diario.Prepare;
 IBQuery_Diario.Open;

VerificaDados;
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmDiario.Caption:= FrmDiario.Caption;
Exit;
end else
FrmDiario.Caption:= FrmDiario.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end;

procedure TFrmDiario.Btn_FecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmDiario.DBGrid_ListagemKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
Dm.IBDS_ALUNOS.Locate('MATRICULA', DBGrid_Listagem.Fields[7].Text, []);
end;

procedure TFrmDiario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=Cafree;
end;

procedure TFrmDiario.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
DeleteFile('C:\Windows\Temp\inat.jpg');
DeleteFile('C:\Windows\Temp\inat.bmp');
end;

procedure TFrmDiario.DBGrid_ListagemDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
Img: TImage;
begin
if not odd(IBQuery_Diario.RecNo) then // se for impar
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
if Column.Field = IBQuery_DiarioFOTO then
begin
if IBQuery_DiarioFOTO.Value <> '' then
begin
IBQuery_DiarioFOTO.SaveToFile('C:\Windows\Temp\inat.jpg');
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
if IBQuery_DiarioFOTO.Value = '' then
begin
 Assign(SemImagem.Picture.Bitmap);
end else
    Assign(Img.Picture.Bitmap);
    DBGrid_Listagem.Canvas.StretchDraw(Rect,Bitmap);  // desenha imagem
    Free;
    end;
end;
end;

procedure TFrmDiario.Btn_InformarClick(Sender: TObject);
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
if (CBox_Serie.Text = 'MATERNAL') or
(CBox_Serie.Text = 'JARDIM I') or
(CBox_Serie.Text = 'JARDIM II') then
begin
CBox_Disciplina.Text:=  '';
end else
if CBox_Disciplina.Text = ''then
begin
CBox_Disciplina.SetFocus;
Exit;
end else
Screen.Cursor := crHourGlass;
 IBQuery_Diario.Close;
 IBQuery_Diario.SQL.Clear;
 IBQuery_Diario.SQL.Add('select ANO_LETIVO, CURSO, FOTO, MATRICULA, NOME_ALUNO, SERIE, TURMA, TURNO from MATRICUL ');
 IBQuery_Diario.SQL.Add('where SERIE = :SerieAluno and TURMA = :TurmaAluno and TURNO = :TurnoAluno and ANO_LETIVO = :AnoLet ');
 IBQuery_Diario.ParamByName('SerieAluno').AsString:= CBox_Serie.Text;
 IBQuery_Diario.ParamByName('TurmaAluno').AsString:= CBox_Turma.Text;
 IBQuery_Diario.ParamByName('TurnoAluno').AsString:= CBox_Turno.Text;
 IBQuery_Diario.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_Diario.SQL.Add('order by NOME_ALUNO');
 IBQuery_Diario.Prepare;
 IBQuery_Diario.Open;
Screen.Cursor := crDefault;
VerificaDados;
Btn_Imprimir.Enabled:= True;
if Btn_Imprimir.Enabled = True then
begin
Btn_Imprimir.SetFocus;
end;
end;

procedure TFrmDiario.Btn_ImprimirClick(Sender: TObject);
begin
if (IBQuery_Diario.FieldByName('CURSO').AsString = 'EDUCAÇÃO INFANTIL') then
begin
try
 FrmRelDiarioInf:=TFrmRelDiarioInf.Create(nil);
 FrmRelDiarioInf.QuickRep1.PreviewModal;
finally
 FrmRelDiarioInf.Release;
end;
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
if CBox_Turno.Text = ''then
begin
CBox_Turno.SetFocus;
Exit;
end else
if CBox_Disciplina.Text = ''then
begin
CBox_Disciplina.SetFocus;
Exit;
end else
try
 FrmRelDiario:=TFrmRelDiario.Create(nil);
 FrmRelDiario.QuickRep1.PreviewModal;
finally
 FrmRelDiario.Release;
end;
end;

procedure TFrmDiario.VerificaDados;
begin
if DBGrid_Listagem.Fields[1].Text = '' then
begin
Btn_Imprimir.Enabled:= False;
DBGrid_Listagem.Enabled:= False;
Btn_Fechar.SetFocus;
Exit;
end else
DBGrid_Listagem.Enabled:= True;
end;

procedure TFrmDiario.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and not (ActiveControl is TMemo) then begin
// desabilita processamento posterior da tecla
  Key := #0;
  Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFrmDiario.DBGrid_ListagemDblClick(Sender: TObject);
begin
  Close;
FrmAlunos:= TFrmAlunos.Create(Application);
try
  FrmAlunos.ShowModal;
finally
  FrmAlunos.Free;
end;
end;

procedure TFrmDiario.DBGrid_ListagemCellClick(Column: TColumn);
begin
Dm.IBDS_ALUNOS.Locate('MATRICULA', DBGrid_Listagem.Fields[7].Text, []);
end;

end.
