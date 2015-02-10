unit UnReempresaoCart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, Menus, StdCtrls, Buttons, Grids,
  DBGrids, ExtCtrls, Mask;

type
  TFrmReempresaoCart = class(TForm)
    DBGrid_Listagem: TDBGrid;
    Btn_Fechar: TBitBtn;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Fechar1: TMenuItem;
    DS_ALUNOS: TDataSource;
    Btn_Informar: TBitBtn;
    SemImagem: TImage;
    Label1: TLabel;
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
    MEdit_Mat: TMaskEdit;
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
    procedure MEdit_MatKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure VerificaDados;
  public
    { Public declarations }
  end;

var
  FrmReempresaoCart: TFrmReempresaoCart;
  Tipo: Integer;

implementation

uses UnDm, UnPrincipal, UnRelCarteiras, UnAlunos, UnLocalizar,
  UnRelReImpCarteira;

{$R *.dfm}

procedure TFrmReempresaoCart.FormCreate(Sender: TObject);
begin
Shortdateformat:='dd/mm/yyyy';
end;

procedure TFrmReempresaoCart.FormShow(Sender: TObject);
begin
FrmReempresaoCart.Top:=100;
FrmReempresaoCart.Left:=0;
Screen.Cursor := crHourGlass;
 IBQuery_ALUNOS.Close;
 IBQuery_ALUNOS.SQL.Clear;
 IBQuery_ALUNOS.SQL.Add('select ANO_LETIVO, CURSO, FOTO, MATRICULA, NOME_ALUNO, SERIE, TURMA, TURNO from MATRICUL ');
 IBQuery_ALUNOS.SQL.Add('where MATRICULA = :Mat and ANO_LETIVO = :AnoLet ');
 IBQuery_ALUNOS.ParamByName('Mat').AsString:= MEdit_Mat.Text;
 IBQuery_ALUNOS.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_ALUNOS.SQL.Add('order by NOME_ALUNO');
 IBQuery_ALUNOS.Prepare;
 IBQuery_ALUNOS.Open;
Screen.Cursor := crDefault;
VerificaDados;
MEdit_Mat.SetFocus;
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmReempresaoCart.Caption:= FrmReempresaoCart.Caption;
Exit;
end else
FrmReempresaoCart.Caption:= FrmReempresaoCart.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end;

procedure TFrmReempresaoCart.Btn_FecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmReempresaoCart.DBGrid_ListagemKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
Dm.IBDS_ALUNOS.Locate('MATRICULA', DBGrid_Listagem.Fields[7].Text, []);
end;

procedure TFrmReempresaoCart.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=Cafree;
end;

procedure TFrmReempresaoCart.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
DeleteFile('C:\Windows\Temp\inat.jpg');
DeleteFile('C:\Windows\Temp\inat.bmp');
end;

procedure TFrmReempresaoCart.DBGrid_ListagemDrawColumnCell(Sender: TObject;
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

procedure TFrmReempresaoCart.Btn_InformarClick(Sender: TObject);
begin
Tipo:= 1;
Screen.Cursor := crHourGlass;
 IBQuery_ALUNOS.Close;
 IBQuery_ALUNOS.SQL.Clear;
 IBQuery_ALUNOS.SQL.Add('select ANO_LETIVO, CURSO, FOTO, MATRICULA, NOME_ALUNO, SERIE, TURMA, TURNO from MATRICUL ');
 IBQuery_ALUNOS.SQL.Add('where MATRICULA = :Mat and ANO_LETIVO = :AnoLet ');
 IBQuery_ALUNOS.ParamByName('Mat').AsString:= MEdit_Mat.Text;
 IBQuery_ALUNOS.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_ALUNOS.SQL.Add('order by NOME_ALUNO');
 IBQuery_ALUNOS.Prepare;
 IBQuery_ALUNOS.Open;
Screen.Cursor := crDefault;
VerificaDados;
if not IBQuery_ALUNOS.Locate('MATRICULA',MEdit_Mat.Text,[]) then
begin
ShowMessage('A matrícula Nº: "'+MEdit_Mat.Text+'" está incompleta ou é inválida. Tente novamente.');
Screen.Cursor := crDefault;
MEdit_Mat.SetFocus;
Exit;
end else
Btn_Imprimir.Enabled:= True;
Screen.Cursor := crDefault;
if Btn_Imprimir.Enabled = True then
begin
Btn_Imprimir.SetFocus;
end;
end;

procedure TFrmReempresaoCart.Btn_ImprimirClick(Sender: TObject);
begin
try
 FrmRelReImpCarteira:=TFrmRelReImpCarteira.Create(nil);
 FrmRelReImpCarteira.QuickRep1.PreviewModal;
finally
 FrmRelReImpCarteira.Release;
end;
end;

procedure TFrmReempresaoCart.VerificaDados;
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

procedure TFrmReempresaoCart.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and not (ActiveControl is TMemo) then begin
// desabilita processamento posterior da tecla
  Key := #0;
  Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFrmReempresaoCart.DBGrid_ListagemDblClick(Sender: TObject);
begin
  Close;
FrmAlunos:= TFrmAlunos.Create(Application);
try
  FrmAlunos.ShowModal;
finally
  FrmAlunos.Free;
end;
end;

procedure TFrmReempresaoCart.DBGrid_ListagemCellClick(Column: TColumn);
begin
Dm.IBDS_ALUNOS.Locate('MATRICULA', DBGrid_Listagem.Fields[7].Text, []);
end;

procedure TFrmReempresaoCart.MEdit_MatKeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['0'..'9','-',#8,#13] ) then
begin
key:=#0;
end;
 if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
if MEdit_Mat.Text = '' then
begin
MEdit_Mat.SetFocus;
Exit;
end else
MEdit_Mat.Text:= FrmPrincipal.RetZero(MEdit_Mat.Text, 15);
MEdit_Mat.Text:= FrmLocalizar.FormataMat(MEdit_Mat.Text);
if MEdit_Mat.Text = '' then
begin
Btn_Informar.Enabled:=False;
end else
Btn_Informar.Enabled:=True;
if Btn_Informar.Enabled = True then
begin
Btn_Informar.SetFocus;
Btn_InformarClick(Nil);
end;
end;
end;

end.
