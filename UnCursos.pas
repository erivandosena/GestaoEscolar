unit UnCursos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, Menus, Grids, DBGrids, StdCtrls,
  Mask, DBCtrls, Buttons, ExtCtrls;

type
  TFrmCursos = class(TForm)
    Panel1: TPanel;
    SbExcluir: TBitBtn;
    SbCancelar: TBitBtn;
    SbNova: TBitBtn;
    SbSalvar: TBitBtn;
    DataSource1: TDataSource;
    Label1: TLabel;
    SbAtualizar: TBitBtn;
    SpeedButton1: TBitBtn;
    DBGrid1: TDBGrid;
    Label3: TLabel;
    IBQueryCursos: TIBQuery;
    Panel4: TPanel;
    Label2: TLabel;
    DBComboBox2: TDBComboBox;
    Label4: TLabel;
    DBComboBox1: TDBComboBox;
    Label5: TLabel;
    DBComboBox3: TDBComboBox;
    DBComboBox: TDBComboBox;
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
  private
    { Private declarations }
  public
    { Public declarations }
   // procedure AtualizaNomeDisciplina;
  end;

var
  FrmCursos: TFrmCursos;

implementation

uses UnDm;

{$R *.dfm}

procedure TFrmCursos.SbNovaClick(Sender: TObject);
begin
IBQueryCursos.Close;
IBQueryCursos.Open;
Dm.IBDS_CURSOS.Last;
Dm.IBDS_CURSOS.Append;
DBComboBox.SetFocus;
end;

procedure TFrmCursos.SbSalvarClick(Sender: TObject);
begin
IBQueryCursos.Close;
IBQueryCursos.Open;
if Trim(DBComboBox.Text) = '' then
begin
DBComboBox.SetFocus;
Exit;
end else
if Trim(DBComboBox3.Text) = '' then
begin
DBComboBox3.SetFocus;
Exit;
end else
if Trim(DBComboBox2.Text) = '' then
begin
DBComboBox2.SetFocus;
Exit;
end else
if Trim(DBComboBox1.Text) = '' then
begin
DBComboBox1.SetFocus;
Exit;
end else
if Dm.IBDS_CURSOS.State = dsedit then
begin
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_CURSOS.Post;
Dm.IBDS_CURSOS.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
DBComboBox.SetFocus;
Exit;
end else
if not IBQueryCursos.Locate('CURSO', DBComboBox.text, []) then
begin
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_CURSOS.Post;
Dm.IBDS_CURSOS.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
DBComboBox.SetFocus;
Exit;
end else
ShowMessage('Não é possível salvar os dados, o curso: "'+DBComboBox.Text+'" já está cadastrado, informe outro.');
Dm.IBDS_CURSOS.Edit;
DBComboBox.SetFocus;
end;

procedure TFrmCursos.SbExcluirClick(Sender: TObject);
begin
if MessageBox(0,'Deseja realmente excluir este curso?','Pergunta',mb_yesno+mb_iconquestion)=6  then
begin
Dm.IBDS_CURSOS.Delete;
Dm.IBDS_CURSOS.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
DataSource1StateChange(FrmCursos);
Exit;
end
else
DBComboBox.SetFocus;
end;

procedure TFrmCursos.SbCancelarClick(Sender: TObject);
begin
Dm.IBDS_CURSOS.Cancel;
Dm.IBDS_CURSOS.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
end;

procedure TFrmCursos.SbAtualizarClick(Sender: TObject);
begin
Dm.IBDS_CURSOS.close;
Dm.IBDS_CURSOS.Open;
Dm.IBDS_CURSOS.Refresh;

end;

procedure TFrmCursos.SpeedButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmCursos.DataSource1StateChange(Sender: TObject);
begin
 SbNova.Enabled           := DataSource1.State in [dsBrowse];
 SbExcluir.Enabled          := (DataSource1.State in [dsBrowse]) and (Dm.IBDS_CURSOS.RecordCount > 0);
 DBGrid1.Enabled          := (DataSource1.State in [dsBrowse]) and (Dm.IBDS_CURSOS.RecordCount > 0);
 SbAtualizar.Enabled       := (DataSource1.State in [dsBrowse]) and (Dm.IBDS_CURSOS.RecordCount > 0);
 SbSalvar.Enabled          := DataSource1.State in [dsInsert,dsEdit];
 SbCancelar.Enabled        := DataSource1.State in [dsInsert,dsEdit];
end;

procedure TFrmCursos.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Shift = [ssCtrl]) and (Key = 46) Then
KEY := 0;
end;

procedure TFrmCursos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=Cafree;
end;

procedure TFrmCursos.FormCreate(Sender: TObject);
begin
Dm.IBDS_CURSOS.Close;
Dm.IBDS_CURSOS.Open;
end;

procedure TFrmCursos.FormShow(Sender: TObject);
begin
FrmCursos.Top:=0;
FrmCursos.Left:=181;
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmCursos.Caption:= FrmCursos.Caption;
Exit;
end else
FrmCursos.Caption:= FrmCursos.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end;

end.
