unit UnListaMedias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, Menus, StdCtrls, Buttons, Grids,
  DBGrids, ExtCtrls, ComCtrls;

type
  TFrmListaMedias = class(TForm)
    DBGrid_Listagem: TDBGrid;
    Btn_Fechar: TBitBtn;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Fechar1: TMenuItem;
    Btn_Informar: TBitBtn;
    CBox_Serie: TComboBox;
    CBox_Turma: TComboBox;
    CBox_Turno: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Btn_Imprimir: TBitBtn;
    Ds_BolMedias: TDataSource;
    IBQuery_BolMedias: TIBQuery;
    IBQuery_BolMediasCOD_BOLE: TIntegerField;
    IBQuery_BolMediasMATRICULA: TIBStringField;
    IBQuery_BolMediasNOME_ALUNO: TIBStringField;
    IBQuery_BolMediasANO_LETIVO: TIBStringField;
    IBQuery_BolMediasCURSO: TIBStringField;
    IBQuery_BolMediasSERIE: TIBStringField;
    IBQuery_BolMediasTURNO: TIBStringField;
    IBQuery_BolMediasTURMA: TIBStringField;
    IBQuery_BolMediasSEXO: TIBStringField;
    IBQuery_BolMediasDATA_NASCIMENTO: TDateTimeField;
    IBQuery_BolMediasNOME_PAI: TIBStringField;
    IBQuery_BolMediasNOME_MAE: TIBStringField;
    IBQuery_BolMediasNOME_RESP: TIBStringField;
    IBQuery_BolMediasTEL_RESP: TIBStringField;
    IBQuery_BolMediasCPF_RESP: TIBStringField;
    CBox_Disciplina: TComboBox;
    Label4: TLabel;
    CBox_AnoLetivo: TComboBox;
    Label5: TLabel;
    CBox_Curso: TComboBox;
    Label6: TLabel;
    StatusBar: TStatusBar;
    procedure CBox_DisciplinaEnter(Sender: TObject);
    procedure CBox_TurnoEnter(Sender: TObject);
    procedure CBox_TurmaEnter(Sender: TObject);
    procedure CBox_SerieEnter(Sender: TObject);
    procedure CBox_CursoEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Btn_FecharClick(Sender: TObject);
    procedure DBGrid_ListagemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
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
  FrmListaMedias: TFrmListaMedias;
  Tipo: Integer;

implementation

uses UnDm, UnDmSeleciona,UnPrincipal, UnRelMedias, UnAlunos;

{$R *.dfm}

procedure TFrmListaMedias.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=Cafree;
end;

procedure TFrmListaMedias.FormCreate(Sender: TObject);
begin
with DmSeleciona.IBQ_AnoLetivo do
begin
Close;
UnPrepare;
SQL.Clear;
SQL.Add('select distinct ANO_LETIVO from MATRICUL ');
SQL.Add('order by ANO_LETIVO desc');
Prepare;
Open;
// Adiciona dados ao combobox
First;
CBox_AnoLetivo.Clear;
  While Not Eof do
  begin
  CBox_AnoLetivo.Items.Add(FieldByName('ANO_LETIVO').AsString);
  Next;
end;
CBox_AnoLetivo.ItemIndex:= 0;
end;


Shortdateformat:='dd/mm/yyyy';
 IBQuery_BolMedias.Close;
 IBQuery_BolMedias.SQL.Clear;
 IBQuery_BolMedias.SQL.Add('select * from BOLETIM ');
 IBQuery_BolMedias.SQL.Add('where SERIE =:Seri and TURNO =:Turn and TURMA =:Turm and ANO_LETIVO = '+#39+AnoLetivo+#39);
 IBQuery_BolMedias.ParamByName('Seri').AsString:= CBox_Serie.Text;
 IBQuery_BolMedias.ParamByName('Turn').AsString:= CBox_Turno.Text;
 IBQuery_BolMedias.ParamByName('Turm').AsString:= CBox_Turma.Text;
 IBQuery_BolMedias.SQL.Add('order by NOME_ALUNO, SERIE, CURSO, TURNO, TURMA');
 IBQuery_BolMedias.Prepare;
 IBQuery_BolMedias.Open;
end;

procedure TFrmListaMedias.FormShow(Sender: TObject);
begin
FrmListaMedias.Top:=100;
FrmListaMedias.Left:=0;
(*CBox_Disciplina.Items.Clear;
 Dm.IBDS_MATERIAS.First;
 if not Dm.IBDS_MATERIAS.Eof then
 repeat
 { seus comandos para a tabela }
CBox_Disciplina.Items.Add(Dm.IBDS_MATERIASDISCIPLINA.AsString);
 Dm.IBDS_MATERIAS.Next;
 until Dm.IBDS_MATERIAS.Eof;  *)
VerificaDados;
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmListaMedias.Caption:= FrmListaMedias.Caption;
Exit;
end else
FrmListaMedias.Caption:= FrmListaMedias.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end;

procedure TFrmListaMedias.Btn_FecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmListaMedias.DBGrid_ListagemKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
Dm.IBDS_ALUNOS.Locate('MATRICULA', DBGrid_Listagem.Fields[0].Text, []);
end;

procedure TFrmListaMedias.DBGrid_ListagemDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if not odd(IBQuery_BolMedias.RecNo) then // se for impar
// se a célula não está selecionada
if not (gdSelected in State) then
begin
// define uma cor de fundo
DBGrid_Listagem.Canvas.Brush.Color:= cl3DLight;
DBGrid_Listagem.Canvas.FillRect(Rect); // pinta a célula
// pinta o texto padrão
DBGrid_Listagem.DefaultDrawDataCell(rect,column.Field,State);
end;
end;

procedure TFrmListaMedias.Btn_InformarClick(Sender: TObject);
//var
//Idx, TR: Integer;
begin
if CBox_Disciplina.Text = '' then
begin
CBox_Disciplina.SetFocus;
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
 IBQuery_BolMedias.Close;
 IBQuery_BolMedias.SQL.Clear;
 IBQuery_BolMedias.SQL.Add('select * from BOLETIM ');
 IBQuery_BolMedias.SQL.Add('where SERIE =:Seri and TURNO =:Turn and TURMA =:Turm and ANO_LETIVO = '+#39+AnoLetivo+#39);
 IBQuery_BolMedias.ParamByName('Seri').AsString:= CBox_Serie.Text;
 IBQuery_BolMedias.ParamByName('Turn').AsString:= CBox_Turno.Text;
 IBQuery_BolMedias.ParamByName('Turm').AsString:= CBox_Turma.Text;
 IBQuery_BolMedias.SQL.Add('order by NOME_ALUNO, SERIE, CURSO, TURNO, TURMA');
 IBQuery_BolMedias.Prepare;
 IBQuery_BolMedias.Open;
 VerificaDados;
if Btn_Imprimir.Enabled = True then
begin
Btn_Imprimir.SetFocus;
end;

// colunas do DBGrid ajustadas ao seu conteúdo
 (* for Idx := 0 to DBGrid_Listagem.Columns.Count - 1  do
    DBGrid_Listagem.Columns[Idx].Width := DBGrid_Listagem.Canvas.TextWidth(DBGrid_Listagem.Columns[Idx].Title.Caption);
  DBGrid_Listagem.DataSource.DataSet.DisableControls;
  try 
    DBGrid_Listagem.DataSource.DataSet.First;
    while (not DBGrid_Listagem.DataSource.DataSet.Eof) do
    begin
      for Idx := 0 to DBGrid_Listagem.Columns.Count - 1  do
      begin 
        if (DBGrid_Listagem.Canvas.TextWidth(DBGrid_Listagem.Columns[Idx].Field.Text) > DBGrid_Listagem.Columns[Idx].Width) then
          DBGrid_Listagem.Columns[Idx].Width := DBGrid_Listagem.Canvas.TextWidth(DBGrid_Listagem.Columns[Idx].Field.Text);
      end; 
      DBGrid_Listagem.DataSource.DataSet.Next;
    end; 
  finally 
    DBGrid_Listagem.DataSource.DataSet.First;
    DBGrid_Listagem.DataSource.DataSet.EnableControls;
end;       *)
end;

procedure TFrmListaMedias.CBox_CursoEnter(Sender: TObject);
begin
with DmSeleciona.IBQ_AnoLetivo do
begin
Close;
UnPrepare;
SQL.Clear;
SQL.Add('select distinct CURSO from MATRICUL ');
SQL.Add('where ANO_LETIVO = '+#39+CBox_AnoLetivo.Text+#39);
SQL.Add('order by CURSO');
Prepare;
Open;
// Adiciona dados ao combobox
First;
CBox_Curso.Clear;
  While Not Eof do
  begin
  CBox_Curso.Items.Add(FieldByName('CURSO').AsString);
  Next;
end;
end;
end;

procedure TFrmListaMedias.CBox_DisciplinaEnter(Sender: TObject);
begin
with DmSeleciona.IBQ_Disciplinas do
begin
Close;
UnPrepare;
SQL.Clear;
SQL.Add('select distinct DISCIPLINA from NOTAS ');
SQL.Add('where ANO_LETIVO = '+#39+CBox_AnoLetivo.Text+#39+' and SERIE = '+#39+CBox_Serie.Text+#39+' and TURMA = '+#39+CBox_Turma.Text+#39+' and TURNO = '+#39+CBox_Turno.Text+#39);
SQL.Add('order by DISCIPLINA');                            // CURSO = '+#39+CBox_Curso.Text+#39+' and
Prepare;
Open;
// Adiciona dados ao combobox
First;
CBox_Disciplina.Clear;
  While Not Eof do
  begin
  CBox_Disciplina.Items.Add(FieldByName('DISCIPLINA').AsString);
  Next;
end;
end;



   (*
CBox_Disciplina.Items.Clear;
 Dm.IBDS_MATERIAS.First;
 if not Dm.IBDS_MATERIAS.Eof then
 repeat
 { seus comandos para a tabela }
CBox_Disciplina.Items.Add(Dm.IBDS_MATERIASDISCIPLINA.AsString);
 Dm.IBDS_MATERIAS.Next;
 until Dm.IBDS_MATERIAS.Eof;    *)
end;

procedure TFrmListaMedias.CBox_SerieEnter(Sender: TObject);
begin
with DmSeleciona.IBQ_AnoLetivo do
begin
Close;
UnPrepare;
SQL.Clear;
SQL.Add('select distinct SERIE from MATRICUL ');
SQL.Add('where ANO_LETIVO = '+#39+CBox_AnoLetivo.Text+#39+' and CURSO = '+#39+CBox_Curso.Text+#39);
SQL.Add('order by SERIE');
Prepare;
Open;
// Adiciona dados ao combobox
First;
CBox_Serie.Clear;
  While Not Eof do
  begin
  CBox_Serie.Items.Add(FieldByName('SERIE').AsString);
  Next;
end;
end;
end;

procedure TFrmListaMedias.CBox_TurmaEnter(Sender: TObject);
begin
with DmSeleciona.IBQ_AnoLetivo do
begin
Close;
UnPrepare;
SQL.Clear;
SQL.Add('select distinct TURMA from MATRICUL ');
SQL.Add('where ANO_LETIVO = '+#39+CBox_AnoLetivo.Text+#39+' and CURSO = '+#39+CBox_Curso.Text+#39+' and SERIE = '+#39+CBox_Serie.Text+#39);
SQL.Add('order by TURMA');
Prepare;
Open;
// Adiciona dados ao combobox
First;
CBox_Turma.Clear;
  While Not Eof do
  begin
  CBox_Turma.Items.Add(FieldByName('TURMA').AsString);
  Next;
end;
end;
end;

procedure TFrmListaMedias.CBox_TurnoEnter(Sender: TObject);
begin
with DmSeleciona.IBQ_AnoLetivo do
begin
Close;
UnPrepare;
SQL.Clear;
SQL.Add('select distinct TURNO from MATRICUL ');
SQL.Add('where ANO_LETIVO = '+#39+CBox_AnoLetivo.Text+#39+' and CURSO = '+#39+CBox_Curso.Text+#39+' and SERIE = '+#39+CBox_Serie.Text+#39+' and TURMA = '+#39+CBox_Turma.Text+#39);
SQL.Add('order by TURNO');
Prepare;
Open;
// Adiciona dados ao combobox
First;
CBox_Turno.Clear;
  While Not Eof do
  begin
  CBox_Turno.Items.Add(FieldByName('TURNO').AsString);
  Next;
end;
end;
end;

procedure TFrmListaMedias.Btn_ImprimirClick(Sender: TObject);
begin
try
 FrmRelMedias:=TFrmRelMedias.Create(nil);
 FrmRelMedias.QuickRep1.PreviewModal;
finally
 FrmRelMedias.Release;
end;
end;

procedure TFrmListaMedias.VerificaDados;
begin
if DBGrid_Listagem.Fields[0].Text = '' then
begin
Btn_Imprimir.Enabled:= False;
DBGrid_Listagem.Enabled:= False;
Btn_Fechar.SetFocus;
Exit;
end else
Btn_Imprimir.Enabled:= True;
DBGrid_Listagem.Enabled:= True;
end;

procedure TFrmListaMedias.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and not (ActiveControl is TMemo) then begin
// desabilita processamento posterior da tecla
  Key := #0;
  Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFrmListaMedias.DBGrid_ListagemDblClick(Sender: TObject);
begin
  Close;
FrmAlunos:= TFrmAlunos.Create(Application);
try
  FrmAlunos.ShowModal;
finally
  FrmAlunos.Free;
end;
end;

procedure TFrmListaMedias.DBGrid_ListagemCellClick(Column: TColumn);
begin
Dm.IBDS_ALUNOS.Locate('MATRICULA', DBGrid_Listagem.Fields[0].Text, []);
end;

end.
