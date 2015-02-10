unit UnDisciplinas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, Menus, Grids, DBGrids, StdCtrls,
  Mask, DBCtrls, Buttons, ExtCtrls;

type
  TFrmDisciplina = class(TForm)
    Panel1: TPanel;
    SbExcluir: TBitBtn;
    SbCancelar: TBitBtn;
    SbNova: TBitBtn;
    SbSalvar: TBitBtn;
    DataSource1: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    SbAtualizar: TBitBtn;
    Bevel2: TBevel;
    SpeedButton1: TBitBtn;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    N2: TMenuItem;
    Fechar1: TMenuItem;
    DBGrid1: TDBGrid;
    Label3: TLabel;
    IBQueryDisciplina: TIBQuery;
    Panel4: TPanel;
    Label2: TLabel;
    DBEdit2: TDBComboBox;
    Label4: TLabel;
    DBComboBox1: TDBComboBox;
    Label5: TLabel;
    DBComboBox3: TDBComboBox;
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBComboBox1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SbNovaClick(Sender: TObject);
    procedure SbSalvarClick(Sender: TObject);
    procedure SbExcluirClick(Sender: TObject);
    procedure SbCancelarClick(Sender: TObject);
    procedure SbAtualizarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AtualizaNomeDisciplina;
  end;

var
  FrmDisciplina: TFrmDisciplina;

implementation

uses UnDm;

{$R *.dfm}

procedure TFrmDisciplina.SbNovaClick(Sender: TObject);
begin
IBQueryDisciplina.Close;
IBQueryDisciplina.Open;
Dm.IBDS_MATERIAS.Last;
Dm.IBDS_MATERIAS.Append;
DBEdit1.SetFocus;
end;

procedure TFrmDisciplina.SbSalvarClick(Sender: TObject);
begin
IBQueryDisciplina.Close;
IBQueryDisciplina.Open;
if Trim(DBEdit1.Text) = '' then
begin
DBEdit1.Color:=$00F4FFF4;
DBEdit1.SetFocus;
Exit;
end else
if Trim(DBEdit2.Text) = '' then
begin
DBEdit2.Color:=$00F4FFF4;
DBEdit2.SetFocus;
Exit;
end else
if Trim(DBComboBox1.Text) = '' then
begin
DBComboBox1.Color:=$00F4FFF4;
DBComboBox1.SetFocus;
Exit;
end else
if Dm.IBDS_MATERIAS.State = dsedit then
begin
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_MATERIAS.Post;
Dm.IBDS_MATERIAS.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
DBEdit1.SetFocus;
AtualizaNomeDisciplina;
Exit;
end else
if not IBQueryDisciplina.Locate('DISCIPLINA', DBEdit1.text, []) then
begin
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_MATERIAS.Post;
Dm.IBDS_MATERIAS.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
DBEdit1.SetFocus;
AtualizaNomeDisciplina;
Exit;
end else
ShowMessage('Não é possível salvar os dados, a disciplina: "'+DBEdit1.Text+'" já está cadastrada, informe outra.');
Dm.IBDS_MATERIAS.Edit;
DBEdit1.SetFocus;
end;

procedure TFrmDisciplina.SbExcluirClick(Sender: TObject);
begin
if MessageBox(0,'Deseja realmente excluir esta disciplina?','Pergunta',mb_yesno+mb_iconquestion)=6  then
begin
Dm.IBDS_MATERIAS.Delete;
Dm.IBDS_MATERIAS.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
DataSource1StateChange(FrmDisciplina);
Exit;
end
else
DBEdit1.SetFocus;
end;

procedure TFrmDisciplina.SbCancelarClick(Sender: TObject);
begin
Dm.IBDS_MATERIAS.Cancel;
Dm.IBDS_MATERIAS.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
AtualizaNomeDisciplina;
end;

procedure TFrmDisciplina.SbAtualizarClick(Sender: TObject);
begin
Dm.IBDS_MATERIAS.close;
Dm.IBDS_MATERIAS.Open;
Dm.IBDS_MATERIAS.Refresh;
AtualizaNomeDisciplina;
end;

procedure TFrmDisciplina.SpeedButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmDisciplina.AtualizaNomeDisciplina;
begin
if Dm.IBDS_MATERIASDISTRIBUIDA.Value = 'SIM' then
Begin
DBComboBox3.Visible:= False;
Label5.Visible:= False;
Exit;
end else
if (Dm.IBDS_MATERIASDISTRIBUIDA.Value = 'NÃO') and (Trim(Dm.IBDS_MATERIASUNIFICACAO.Value) <> '') then
Begin
DBComboBox3.Visible:= true;
Label5.Visible:= true;
Exit;
end else
if (Dm.IBDS_MATERIASDISTRIBUIDA.Value = 'NÃO') and (Trim(Dm.IBDS_MATERIASUNIFICACAO.Value) = '') then
Begin
DBComboBox3.Visible:= False;
Label5.Visible:= False;
end;
end;

procedure TFrmDisciplina.DataSource1StateChange(Sender: TObject);
begin
 SbNova.Enabled           := DataSource1.State in [dsBrowse];
 SbExcluir.Enabled          := (DataSource1.State in [dsBrowse]) and (Dm.IBDS_MATERIAS.RecordCount > 0);
 DBGrid1.Enabled          := (DataSource1.State in [dsBrowse]) and (Dm.IBDS_MATERIAS.RecordCount > 0);
 SbAtualizar.Enabled       := (DataSource1.State in [dsBrowse]) and (Dm.IBDS_MATERIAS.RecordCount > 0);
 SbSalvar.Enabled          := DataSource1.State in [dsInsert,dsEdit];
 SbCancelar.Enabled        := DataSource1.State in [dsInsert,dsEdit];
end;

procedure TFrmDisciplina.DBGrid1CellClick(Column: TColumn);
begin
AtualizaNomeDisciplina;
end;

procedure TFrmDisciplina.DBGrid1Enter(Sender: TObject);
begin
AtualizaNomeDisciplina;
end;

procedure TFrmDisciplina.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Shift = [ssCtrl]) and (Key = 46) Then
KEY := 0;
AtualizaNomeDisciplina;
end;

procedure TFrmDisciplina.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
AtualizaNomeDisciplina;
end;

procedure TFrmDisciplina.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=Cafree;
end;

procedure TFrmDisciplina.FormCreate(Sender: TObject);
begin
Dm.IBDS_MATERIAS.Close;
Dm.IBDS_MATERIAS.Open;
Dm.IBConsulta1.Close;
Dm.IBConsulta1.SQL.Clear;
Dm.IBConsulta1.SQL.Add('select distinct DISCIPLINA from MATERIAS A ');
Dm.IBConsulta1.SQL.Add('where DISTRIBUIDA = '+#39+'SIM'+#39);
Dm.IBConsulta1.SQL.Add('order by DISCIPLINA');
Dm.IBConsulta1.Prepare;
Dm.IBConsulta1.Open;
DBComboBox3.Items.Clear;
Dm.IBConsulta1.First;
if not Dm.IBConsulta1.Eof then
repeat
{ meus comandos}
while not(Dm.IBConsulta1.Eof) do
begin
If DBComboBox3.Items.IndexOf(Dm.IBConsulta1.fieldbyname('DISCIPLINA').AsString) = -1 then
DBComboBox3.Items.Add(Dm.IBConsulta1.fieldbyname('DISCIPLINA').AsString);
Dm.IBConsulta1.Next;
end;
until Dm.IBConsulta1.Eof;
end;

procedure TFrmDisciplina.FormShow(Sender: TObject);
begin
FrmDisciplina.Top:=0;
FrmDisciplina.Left:=181;
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmDisciplina.Caption:= FrmDisciplina.Caption;
Exit;
end else
FrmDisciplina.Caption:= FrmDisciplina.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end;

procedure TFrmDisciplina.DBComboBox1Change(Sender: TObject);
begin
if DBComboBox1.Text = 'SIM' then
Begin
DBComboBox3.Visible:= False;
Label5.Visible:= False;
Exit;
end else
if DBComboBox1.Text = 'NÃO' then
Begin
DBComboBox3.Visible:= True;
Label5.Visible:= True;
Screen.Cursor := crSQLWait;
Dm.IBConsulta1.Close;
Dm.IBConsulta1.SQL.Clear;
Dm.IBConsulta1.SQL.Add('select distinct DISCIPLINA from MATERIAS A ');
Dm.IBConsulta1.SQL.Add('where DISTRIBUIDA = '+#39+'SIM'+#39);
Dm.IBConsulta1.SQL.Add('order by DISCIPLINA');
Dm.IBConsulta1.Prepare;
Dm.IBConsulta1.Open;
DBComboBox3.Items.Clear;
Dm.IBConsulta1.First;
if not Dm.IBConsulta1.Eof then
repeat
{ meus comandos}
while not(Dm.IBConsulta1.Eof) do
begin
If DBComboBox3.Items.IndexOf(Dm.IBConsulta1.fieldbyname('DISCIPLINA').AsString) = -1 then
DBComboBox3.Items.Add(Dm.IBConsulta1.fieldbyname('DISCIPLINA').AsString);
Dm.IBConsulta1.Next;
end;
until Dm.IBConsulta1.Eof;
Screen.Cursor := crDefault;
end;
end;

procedure TFrmDisciplina.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
key:=#0;
end;

end.
