unit UnCapaDiarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, IBCustomDataSet, IBQuery;

type
  TFrmCapaDiarios = class(TForm)
    Label2: TLabel;
    CB_Curso: TComboBox;
    Label3: TLabel;
    CB_Serie: TComboBox;
    Label5: TLabel;
    CB_Turma: TComboBox;
    Label4: TLabel;
    CB_Turno: TComboBox;
    CB_Disciplina: TComboBox;
    Label1: TLabel;
    CB_Professor: TComboBox;
    Label6: TLabel;
    Btn_Imprimir: TBitBtn;
    Btn_Fechar: TBitBtn;
    IBQuery_Consulta: TIBQuery;
    RB_Inf: TRadioButton;
    RB_Fun: TRadioButton;
    procedure CB_CursoChange(Sender: TObject);
    procedure Btn_ImprimirClick(Sender: TObject);
    procedure Btn_FecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCapaDiarios: TFrmCapaDiarios;

implementation

uses UnRelCapDiaFun;

{$R *.dfm}

procedure TFrmCapaDiarios.Btn_FecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmCapaDiarios.Btn_ImprimirClick(Sender: TObject);
begin
try
 FrmRelCapDiaFun:=TFrmRelCapDiaFun.Create(nil);
 FrmRelCapDiaFun.QuickRep1.PreviewModal;
finally
 FrmRelCapDiaFun.Release;
end;
end;

procedure TFrmCapaDiarios.CB_CursoChange(Sender: TObject);
begin
if CB_Curso.ItemIndex = 0 then
RB_Inf.Checked:= True
else
RB_Fun.Checked:= True
end;

procedure TFrmCapaDiarios.FormCreate(Sender: TObject);
begin
with IBQuery_Consulta do
begin
// Relaciona series
IBQuery_Consulta.SQL.Clear;
Close;
SQL.Text:= 'Select distinct SERIE from MATRICUL';
Open;
CB_Serie.Clear;
while not Eof do
begin
CB_Serie.Items.Add(FieldByName('SERIE').AsString);
Next;
end;
// Relaciona turmas
Close;
SQL.Text:='Select distinct TURMA from MATRICUL';
Open;
CB_Turma.Clear;
while not Eof do
begin
CB_Turma.Items.Add(FieldByName('TURMA').AsString);
Next;
end;
// Relaciona turnos
Close;
SQL.Text:='Select distinct TURNO from MATRICUL';
Open;
CB_Turno.Clear;
while not Eof do
begin
CB_Turno.Items.Add(FieldByName('TURNO').AsString);
Next;
end;
// Relaciona cursos
Close;
SQL.Text:='Select distinct CURSO from MATRICUL';
Open;
CB_Curso.Clear;
while not Eof do
begin
CB_Curso.Items.Add(FieldByName('CURSO').AsString);
Next;
end;
// Relaciona Disciplina
Close;
SQL.Text:='Select DISCIPLINA from MATERIAS';
Open;
CB_Disciplina.Clear;
while not Eof do
begin
CB_Disciplina.Items.Add(FieldByName('DISCIPLINA').AsString);
Next;
end;
end;
end;

end.
