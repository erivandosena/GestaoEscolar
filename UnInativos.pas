unit UnInativos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons, Grids, DBGrids, DB, IBCustomDataSet,
  IBQuery, ExtCtrls, ExtDlgs, DBCtrls, Jpeg;

type
  TFrmInativos = class(TForm)
    DBGrid_Inativos: TDBGrid;
    Btn_Fechar: TBitBtn;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Fechar1: TMenuItem;
    IBQuery_INATIVOS: TIBQuery;
    DS_INATIVOS: TDataSource;
    Btn_Todos: TBitBtn;
    IBQuery_INATIVOSANO_LETIVO: TIBStringField;
    IBQuery_INATIVOSCIDADE: TIBStringField;
    IBQuery_INATIVOSCPF_RESP: TIBStringField;
    IBQuery_INATIVOSCURSO: TIBStringField;
    IBQuery_INATIVOSDATA_MATRICULA: TDateTimeField;
    IBQuery_INATIVOSDATA_MOVIDO: TDateTimeField;
    IBQuery_INATIVOSDATA_NASCIMENTO: TDateTimeField;
    IBQuery_INATIVOSFOTO: TBlobField;
    IBQuery_INATIVOSMATRICULA: TIBStringField;
    IBQuery_INATIVOSMOVIDO_USUARIO: TIBStringField;
    IBQuery_INATIVOSNOME_ALUNO: TIBStringField;
    IBQuery_INATIVOSNOME_MAE: TIBStringField;
    IBQuery_INATIVOSNOME_PAI: TIBStringField;
    IBQuery_INATIVOSNOME_RESP: TIBStringField;
    IBQuery_INATIVOSRAZAO_MOVIDO: TIBStringField;
    IBQuery_INATIVOSSERIE: TIBStringField;
    IBQuery_INATIVOSSEXO: TIBStringField;
    IBQuery_INATIVOSTEL_RESP: TIBStringField;
    IBQuery_INATIVOSTEL_CEL_RESP: TIBStringField;
    Btn_Restaurar: TBitBtn;
    IBQuery_ALUNOS: TIBQuery;
    IBQuery_ALUNOSMATRICULA: TIBStringField;
    SemImagem: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Btn_FecharClick(Sender: TObject);
    procedure Btn_TodosClick(Sender: TObject);
    procedure Btn_RestaurarClick(Sender: TObject);
    procedure DBGrid_InativosKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_InativosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBGrid_InativosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmInativos: TFrmInativos;
  Restaurado: Integer;

implementation

uses UnDm, UnPrincipal, UnAlunos;

{$R *.dfm}

procedure TFrmInativos.FormCreate(Sender: TObject);
begin
Shortdateformat:='dd/mm/yyyy';
end;

procedure TFrmInativos.FormShow(Sender: TObject);
begin
FrmInativos.Top:=100;
FrmInativos.Left:=0;
Restaurado:= 0;
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmInativos.Caption:= FrmInativos.Caption;
end else
FrmInativos.Caption:= FrmInativos.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end;

procedure TFrmInativos.Btn_FecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmInativos.Btn_TodosClick(Sender: TObject);
begin
Screen.Cursor := crHourGlass;
 IBQuery_INATIVOS.Close;
 IBQuery_INATIVOS.SQL.Clear;
 IBQuery_INATIVOS.SQL.Add('select ANO_LETIVO, CIDADE, CPF_RESP, CURSO, DATA_MATRICULA, DATA_MOVIDO, DATA_NASCIMENTO, FOTO, MATRICULA, MOVIDO_USUARIO, NOME_ALUNO, NOME_MAE, NOME_PAI, NOME_RESP, RAZAO_MOVIDO, SERIE, SEXO, TEL_RESP, TEL_CEL_RESP from INATIVOS ');
 IBQuery_INATIVOS.SQL.Add('where ANO_LETIVO = :Ano');
 IBQuery_INATIVOS.SQL.Add('order by NOME_ALUNO');
 IBQuery_INATIVOS.ParamByName('Ano').AsString:= AnoLetivo;
 IBQuery_INATIVOS.Prepare;
 IBQuery_INATIVOS.Open;
Screen.Cursor := crDefault;
if DBGrid_Inativos.Fields[1].Text = '' then
begin
Btn_Restaurar.Enabled:= False;
DBGrid_Inativos.Enabled:= False;
Exit;
end else
Btn_Restaurar.Enabled:= True;
DBGrid_Inativos.Enabled:= True;
end;

procedure TFrmInativos.Btn_RestaurarClick(Sender: TObject);
begin
Screen.Cursor := crHourGlass;
IBQuery_ALUNOS.Open;
IBQuery_ALUNOS.First;
if not IBQuery_ALUNOS.Locate('MATRICULA', DBGrid_Inativos.Fields[1].Text, []) and (IBQuery_INATIVOSMATRICULA.Value <> IBQuery_ALUNOSMATRICULA.Value) then
begin
Restaurado:= 1;
Dm.IBDS_ALUNOS.Last;
Dm.IBDS_ALUNOS.Append;
Dm.IBDS_ALUNOS.FieldByName('COD_ALUN').AsString:= Dm.IBDS_INATIVOS.FieldByName('COD_ALUN').AsString;
Dm.IBDS_ALUNOS.FieldByName('MATRICULA').AsString:= Dm.IBDS_INATIVOS.FieldByName('MATRICULA').AsString;
Dm.IBDS_ALUNOS.FieldByName('DATA_MATRICULA').AsString:= Dm.IBDS_INATIVOS.FieldByName('DATA_MATRICULA').AsString;
Dm.IBDS_ALUNOS.FieldByName('ANO_LETIVO').AsString:= Dm.IBDS_INATIVOS.FieldByName('ANO_LETIVO').AsString;
Dm.IBDS_ALUNOS.FieldByName('NOME_ALUNO').AsString:= Dm.IBDS_INATIVOS.FieldByName('NOME_ALUNO').AsString;
Dm.IBDS_ALUNOS.FieldByName('FOTO').Value:= Dm.IBDS_INATIVOS.FieldByName('FOTO').Value;
Dm.IBDS_ALUNOS.FieldByName('TURMA').AsString:= Dm.IBDS_INATIVOS.FieldByName('TURMA').AsString;
Dm.IBDS_ALUNOS.FieldByName('TURNO').AsString:= Dm.IBDS_INATIVOS.FieldByName('TURNO').AsString;
Dm.IBDS_ALUNOS.FieldByName('CURSO').AsString:= Dm.IBDS_INATIVOS.FieldByName('CURSO').AsString;
Dm.IBDS_ALUNOS.FieldByName('SERIE').AsString:= Dm.IBDS_INATIVOS.FieldByName('SERIE').AsString;
Dm.IBDS_ALUNOS.FieldByName('SEXO').AsString:= Dm.IBDS_INATIVOS.FieldByName('SEXO').AsString;
Dm.IBDS_ALUNOS.FieldByName('DATA_NASCIMENTO').AsString:= Dm.IBDS_INATIVOS.FieldByName('DATA_NASCIMENTO').AsString;
Dm.IBDS_ALUNOS.FieldByName('NACIONALIDADE').AsString:= Dm.IBDS_INATIVOS.FieldByName('NACIONALIDADE').AsString;
Dm.IBDS_ALUNOS.FieldByName('NATURALIDADE').AsString:= Dm.IBDS_INATIVOS.FieldByName('NATURALIDADE').AsString;
Dm.IBDS_ALUNOS.FieldByName('ESTADO_NATURALIDADE').AsString:= Dm.IBDS_INATIVOS.FieldByName('ESTADO_NATURALIDADE').AsString;
Dm.IBDS_ALUNOS.FieldByName('RELIGIAO').AsString:= Dm.IBDS_INATIVOS.FieldByName('RELIGIAO').AsString;
Dm.IBDS_ALUNOS.FieldByName('TEL_ALUNO').AsString:= Dm.IBDS_INATIVOS.FieldByName('TEL_ALUNO').AsString;
Dm.IBDS_ALUNOS.FieldByName('TEL_CEL_ALUNO').AsString:= Dm.IBDS_INATIVOS.FieldByName('TEL_CEL_ALUNO').AsString;
Dm.IBDS_ALUNOS.FieldByName('ENDERECO').AsString:= Dm.IBDS_INATIVOS.FieldByName('ENDERECO').AsString;
Dm.IBDS_ALUNOS.FieldByName('BAIRRO').AsString:= Dm.IBDS_INATIVOS.FieldByName('BAIRRO').AsString;
Dm.IBDS_ALUNOS.FieldByName('CIDADE').AsString:= Dm.IBDS_INATIVOS.FieldByName('CIDADE').AsString;
Dm.IBDS_ALUNOS.FieldByName('CEP').AsString:= Dm.IBDS_INATIVOS.FieldByName('CEP').AsString;
Dm.IBDS_ALUNOS.FieldByName('ESTADO').AsString:= Dm.IBDS_INATIVOS.FieldByName('ESTADO').AsString;
Dm.IBDS_ALUNOS.FieldByName('UF').AsString:= Dm.IBDS_INATIVOS.FieldByName('UF').AsString;
Dm.IBDS_ALUNOS.FieldByName('ESCOLA_ANTERIOR').AsString:= Dm.IBDS_INATIVOS.FieldByName('ESCOLA_ANTERIOR').AsString;
Dm.IBDS_ALUNOS.FieldByName('CIDADE_ESCO_ANT').AsString:= Dm.IBDS_INATIVOS.FieldByName('CIDADE_ESCO_ANT').AsString;
Dm.IBDS_ALUNOS.FieldByName('TEL_ESCO_ANT').AsString:= Dm.IBDS_INATIVOS.FieldByName('TEL_ESCO_ANT').AsString;
Dm.IBDS_ALUNOS.FieldByName('ESTADO_ESCO_ANT').AsString:= Dm.IBDS_INATIVOS.FieldByName('ESTADO_ESCO_ANT').AsString;
Dm.IBDS_ALUNOS.FieldByName('UF_ESCO_ANT').AsString:= Dm.IBDS_INATIVOS.FieldByName('UF_ESCO_ANT').AsString;
Dm.IBDS_ALUNOS.FieldByName('PROBLEMAS_SAUDE').AsString:= Dm.IBDS_INATIVOS.FieldByName('PROBLEMAS_SAUDE').AsString;
Dm.IBDS_ALUNOS.FieldByName('REMEDIOS_PROIBIDOS').Value:= Dm.IBDS_INATIVOS.FieldByName('REMEDIOS_PROIBIDOS').Value;
Dm.IBDS_ALUNOS.FieldByName('REMEDIOS_UTILIZADOS').Value:= Dm.IBDS_INATIVOS.FieldByName('REMEDIOS_UTILIZADOS').Value;
Dm.IBDS_ALUNOS.FieldByName('NOME_PAI').AsString:= Dm.IBDS_INATIVOS.FieldByName('NOME_PAI').AsString;
Dm.IBDS_ALUNOS.FieldByName('DATA_NASC_PAI').AsString:= Dm.IBDS_INATIVOS.FieldByName('DATA_NASC_PAI').AsString;
Dm.IBDS_ALUNOS.FieldByName('NACIONALIDADE_PAI').AsString:= Dm.IBDS_INATIVOS.FieldByName('NACIONALIDADE_PAI').AsString;
Dm.IBDS_ALUNOS.FieldByName('NATURALIDADE_PAI').AsString:= Dm.IBDS_INATIVOS.FieldByName('NATURALIDADE_PAI').AsString;
Dm.IBDS_ALUNOS.FieldByName('RG_PAI').AsString:= Dm.IBDS_INATIVOS.FieldByName('RG_PAI').AsString;
Dm.IBDS_ALUNOS.FieldByName('CPF_PAI').AsString:= Dm.IBDS_INATIVOS.FieldByName('CPF_PAI').AsString;
Dm.IBDS_ALUNOS.FieldByName('TEL_PAI').AsString:= Dm.IBDS_INATIVOS.FieldByName('TEL_PAI').AsString;
Dm.IBDS_ALUNOS.FieldByName('TEL_TRAB_PAI').AsString:= Dm.IBDS_INATIVOS.FieldByName('TEL_TRAB_PAI').AsString;
Dm.IBDS_ALUNOS.FieldByName('TEL_CEL_PAI').AsString:= Dm.IBDS_INATIVOS.FieldByName('TEL_CEL_PAI').AsString;
Dm.IBDS_ALUNOS.FieldByName('LOCAL_TRAB_PAI').AsString:= Dm.IBDS_INATIVOS.FieldByName('LOCAL_TRAB_PAI').AsString;
Dm.IBDS_ALUNOS.FieldByName('PROFISSAO_PAI').AsString:= Dm.IBDS_INATIVOS.FieldByName('PROFISSAO_PAI').AsString;
Dm.IBDS_ALUNOS.FieldByName('RENDA_PAI').AsString:= Dm.IBDS_INATIVOS.FieldByName('RENDA_PAI').AsString;
Dm.IBDS_ALUNOS.FieldByName('ENDERECO_PAI').AsString:= Dm.IBDS_INATIVOS.FieldByName('ENDERECO_PAI').AsString;
Dm.IBDS_ALUNOS.FieldByName('BAIRRO_PAI').AsString:= Dm.IBDS_INATIVOS.FieldByName('BAIRRO_PAI').AsString;
Dm.IBDS_ALUNOS.FieldByName('CIDADE_PAI').AsString:= Dm.IBDS_INATIVOS.FieldByName('CIDADE_PAI').AsString;
Dm.IBDS_ALUNOS.FieldByName('CEP_PAI').AsString:= Dm.IBDS_INATIVOS.FieldByName('CEP_PAI').AsString;
Dm.IBDS_ALUNOS.FieldByName('ESTADO_PAI').AsString:= Dm.IBDS_INATIVOS.FieldByName('ESTADO_PAI').AsString;
Dm.IBDS_ALUNOS.FieldByName('UF_PAI').AsString:= Dm.IBDS_INATIVOS.FieldByName('UF_PAI').AsString;
Dm.IBDS_ALUNOS.FieldByName('NOME_MAE').AsString:= Dm.IBDS_INATIVOS.FieldByName('NOME_MAE').AsString;
Dm.IBDS_ALUNOS.FieldByName('DATA_NASC_MAE').AsString:= Dm.IBDS_INATIVOS.FieldByName('DATA_NASC_MAE').AsString;
Dm.IBDS_ALUNOS.FieldByName('NACIONALIDADE_MAE').AsString:= Dm.IBDS_INATIVOS.FieldByName('NACIONALIDADE_MAE').AsString;
Dm.IBDS_ALUNOS.FieldByName('NATURALIDADE_MAE').AsString:= Dm.IBDS_INATIVOS.FieldByName('NATURALIDADE_MAE').AsString;
Dm.IBDS_ALUNOS.FieldByName('RG_MAE').AsString:= Dm.IBDS_INATIVOS.FieldByName('RG_MAE').AsString;
Dm.IBDS_ALUNOS.FieldByName('CPF_MAE').AsString:= Dm.IBDS_INATIVOS.FieldByName('CPF_MAE').AsString;
Dm.IBDS_ALUNOS.FieldByName('TEL_MAE').AsString:= Dm.IBDS_INATIVOS.FieldByName('TEL_MAE').AsString;
Dm.IBDS_ALUNOS.FieldByName('TEL_TRAB_MAE').AsString:= Dm.IBDS_INATIVOS.FieldByName('TEL_TRAB_MAE').AsString;
Dm.IBDS_ALUNOS.FieldByName('TEL_CEL_MAE').AsString:= Dm.IBDS_INATIVOS.FieldByName('TEL_CEL_MAE').AsString;
Dm.IBDS_ALUNOS.FieldByName('LOCAL_TRAB_MAE').AsString:= Dm.IBDS_INATIVOS.FieldByName('LOCAL_TRAB_MAE').AsString;
Dm.IBDS_ALUNOS.FieldByName('PROFISSAO_MAE').AsString:= Dm.IBDS_INATIVOS.FieldByName('PROFISSAO_MAE').AsString;
Dm.IBDS_ALUNOS.FieldByName('RENDA_MAE').AsString:= Dm.IBDS_INATIVOS.FieldByName('RENDA_MAE').AsString;
Dm.IBDS_ALUNOS.FieldByName('ENDERECO_MAE').AsString:= Dm.IBDS_INATIVOS.FieldByName('ENDERECO_MAE').AsString;
Dm.IBDS_ALUNOS.FieldByName('BAIRRO_MAE').AsString:= Dm.IBDS_INATIVOS.FieldByName('BAIRRO_MAE').AsString;
Dm.IBDS_ALUNOS.FieldByName('CIDADE_MAE').AsString:= Dm.IBDS_INATIVOS.FieldByName('CIDADE_MAE').AsString;
Dm.IBDS_ALUNOS.FieldByName('CEP_MAE').AsString:= Dm.IBDS_INATIVOS.FieldByName('CEP_MAE').AsString;
Dm.IBDS_ALUNOS.FieldByName('ESTADO_MAE').AsString:= Dm.IBDS_INATIVOS.FieldByName('ESTADO_MAE').AsString;
Dm.IBDS_ALUNOS.FieldByName('UF_MAE').AsString:= Dm.IBDS_INATIVOS.FieldByName('UF_MAE').AsString;
Dm.IBDS_ALUNOS.FieldByName('NOME_RESP').AsString:= Dm.IBDS_INATIVOS.FieldByName('NOME_RESP').AsString;
Dm.IBDS_ALUNOS.FieldByName('DATA_NASC_RESP').AsString:= Dm.IBDS_INATIVOS.FieldByName('DATA_NASC_RESP').AsString;
Dm.IBDS_ALUNOS.FieldByName('NACIONALIDADE_RESP').AsString:= Dm.IBDS_INATIVOS.FieldByName('NACIONALIDADE_RESP').AsString;
Dm.IBDS_ALUNOS.FieldByName('NATURALIDADE_RESP').AsString:= Dm.IBDS_INATIVOS.FieldByName('NATURALIDADE_RESP').AsString;
Dm.IBDS_ALUNOS.FieldByName('RG_RESP').AsString:= Dm.IBDS_INATIVOS.FieldByName('RG_RESP').AsString;
Dm.IBDS_ALUNOS.FieldByName('CPF_RESP').AsString:= Dm.IBDS_INATIVOS.FieldByName('CPF_RESP').AsString;
Dm.IBDS_ALUNOS.FieldByName('TEL_RESP').AsString:= Dm.IBDS_INATIVOS.FieldByName('TEL_RESP').AsString;
Dm.IBDS_ALUNOS.FieldByName('TEL_TRAB_RESP').AsString:= Dm.IBDS_INATIVOS.FieldByName('TEL_TRAB_RESP').AsString;
Dm.IBDS_ALUNOS.FieldByName('TEL_CEL_RESP').AsString:= Dm.IBDS_INATIVOS.FieldByName('TEL_CEL_RESP').AsString;
Dm.IBDS_ALUNOS.FieldByName('LOCAL_TRAB_RESP').AsString:= Dm.IBDS_INATIVOS.FieldByName('LOCAL_TRAB_RESP').AsString;
Dm.IBDS_ALUNOS.FieldByName('PROFISSAO_RESP').AsString:= Dm.IBDS_INATIVOS.FieldByName('PROFISSAO_RESP').AsString;
Dm.IBDS_ALUNOS.FieldByName('RENDA_RESP').AsString:= Dm.IBDS_INATIVOS.FieldByName('RENDA_RESP').AsString;
Dm.IBDS_ALUNOS.FieldByName('ENDERECO_RESP').AsString:= Dm.IBDS_INATIVOS.FieldByName('ENDERECO_RESP').AsString;
Dm.IBDS_ALUNOS.FieldByName('BAIRRO_RESP').AsString:= Dm.IBDS_INATIVOS.FieldByName('BAIRRO_RESP').AsString;
Dm.IBDS_ALUNOS.FieldByName('CIDADE_RESP').AsString:= Dm.IBDS_INATIVOS.FieldByName('CIDADE_RESP').AsString;
Dm.IBDS_ALUNOS.FieldByName('CEP_RESP').AsString:= Dm.IBDS_INATIVOS.FieldByName('CEP_RESP').AsString;
Dm.IBDS_ALUNOS.FieldByName('ESTADO_RESP').AsString:= Dm.IBDS_INATIVOS.FieldByName('ESTADO_RESP').AsString;
Dm.IBDS_ALUNOS.FieldByName('UF_RESP').AsString:= Dm.IBDS_INATIVOS.FieldByName('UF_RESP').AsString;
Dm.IBDS_ALUNOS.FieldByName('SITUACAO_ALUNO').AsString:= Dm.IBDS_INATIVOS.FieldByName('SITUACAO_ALUNO').AsString;
// salva alunos
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_ALUNOS.Post;
Dm.IBDS_ALUNOS.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
// apaga inativos
Dm.IBDS_INATIVOS.Delete;
Dm.IBDS_INATIVOS.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
IBQuery_ALUNOS.Close;
// atualiza inativos
Screen.Cursor := crHourGlass;
 IBQuery_INATIVOS.Close;
 IBQuery_INATIVOS.SQL.Clear;
 IBQuery_INATIVOS.SQL.Add('select ANO_LETIVO, CIDADE, CPF_RESP, CURSO, DATA_MATRICULA, DATA_MOVIDO, DATA_NASCIMENTO, FOTO, MATRICULA, MOVIDO_USUARIO, NOME_ALUNO, NOME_MAE, NOME_PAI, NOME_RESP, RAZAO_MOVIDO, SERIE, SEXO, TEL_RESP, TEL_CEL_RESP from INATIVOS ');
 IBQuery_INATIVOS.SQL.Add('where NOME_ALUNO = :Ano');
 IBQuery_INATIVOS.ParamByName('Ano').AsString:= AnoLetivo;
 IBQuery_INATIVOS.SQL.Add('order by MATRICULA');
 IBQuery_INATIVOS.Prepare;
 IBQuery_INATIVOS.Open;
Screen.Cursor := crDefault;
MessageBox(FrmInativos.Handle,'Os dados foram restaurados para: "Cadastro de Alunos".','Aviso',0+48);
if DBGrid_Inativos.Fields[1].Text = '' then
begin
Btn_Restaurar.Enabled:= False;
DBGrid_Inativos.Enabled:= False;
Exit;
end else
Btn_Restaurar.Enabled:= True;
DBGrid_Inativos.Enabled:= True;
Exit;
end else
IBQuery_ALUNOS.Close;
Screen.Cursor := crDefault;
MessageBox(FrmInativos.Handle,'Dados não restaurados, porque a matrícula está ativa , tente excluí-la em "Cadastro de Alunos".','Aviso',0+48);
Restaurado:= 0;
end;

procedure TFrmInativos.DBGrid_InativosKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
 begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
Btn_RestaurarClick(Nil);
end;
end;

procedure TFrmInativos.DBGrid_InativosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
Dm.IBDS_INATIVOS.Locate('MATRICULA', DBGrid_Inativos.Fields[1].Text, []);
IBQuery_INATIVOS.Locate('MATRICULA', DBGrid_Inativos.Fields[1].Text, []);
end;

procedure TFrmInativos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=Cafree;
end;

procedure TFrmInativos.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
DeleteFile('C:\Windows\Temp\inat.jpg');
DeleteFile('C:\Windows\Temp\inat.bmp');
// atualiza alunos
if Restaurado = 1 then
begin
Screen.Cursor := crHourGlass;
// fecha conexões
Dm.IBDS_USUARIOS.Close;
Dm.IBDS_EMPRESA.Close;
Dm.IBDS_ALUNOS.Close;
Dm.IBDS_INATIVOS.Close;
Dm.IBDS_CEPS.Close;
Dm.IBDS_MATERIAS.Close;
Dm.IBDatabase.Connected:=False;
Dm.IBTransaction.Active:=False;
// abre conexões
Dm.IBDatabase.Connected:=True;
Dm.IBTransaction.Active:=True;
Dm.IBDS_USUARIOS.Open;
Dm.IBDS_EMPRESA.Open;
Dm.IBDS_ALUNOS.Open;
Dm.IBDS_INATIVOS.Open;
Dm.IBDS_CEPS.Open;
Dm.IBDS_MATERIAS.Open;
Screen.Cursor := crDefault;
end;
end;

procedure TFrmInativos.DBGrid_InativosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
Img: TImage;
begin
if not odd(IBQuery_INATIVOS.RecNo) then // se for impar
// se a célula não está selecionada
if not (gdSelected in State) then
begin
// define uma cor de fundo
DBGrid_Inativos.Canvas.Brush.Color:= cl3DLight;
DBGrid_Inativos.Canvas.FillRect(Rect); // pinta a célula
// pinta o texto padrão
DBGrid_Inativos.DefaultDrawDataCell(rect,column.Field,State);
end;
  (*pinta o campo foto*)
if Column.Field = IBQuery_INATIVOSFOTO then
begin
if IBQuery_INATIVOSFOTO.Value <> '' then
begin
IBQuery_INATIVOSFOTO.SaveToFile('C:\Windows\Temp\inat.jpg');
FrmPrincipal.ConverterJPegParaBmp('C:\Windows\Temp\inat.jpg');
end else
SemImagem.Picture.SaveToFile('C:\Windows\Temp\inat.bmp');
    if not (gdSelected in State) then // se não for a célula selecionada
    DBGrid_Inativos.Canvas.FillRect(Rect); // limpa a célula
    Img:= TImage.Create(Self);
    with TPicture.Create do
    begin
if DBGrid_Inativos.Fields[1].Text = '' then
begin
Assign(SemImagem.Picture.Bitmap);
end else
Img.Picture.LoadFromFile('C:\Windows\Temp\inat.bmp');
if IBQuery_INATIVOSFOTO.Value = '' then
begin
 Assign(SemImagem.Picture.Bitmap);
end else
    Assign(Img.Picture.Bitmap);
    DBGrid_Inativos.Canvas.StretchDraw(Rect,Bitmap);  // desenha imagem
    Free;
    end;
end;
end;

end.
