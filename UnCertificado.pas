unit UnCertificado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, Menus, StdCtrls, Buttons, Grids,
  DBGrids, ExtCtrls, Mask, DBCtrls, jpeg, DateUtils;

type
  TFrmCertificado = class(TForm)
    DBGrid_Alun_Cert: TDBGrid;
    Btn_Fechar: TBitBtn;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Fechar1: TMenuItem;
    DS_AlunCert: TDataSource;
    SemImagem: TImage;
    Btn_Imprimir: TBitBtn;
    IBQuery_AlunCert: TIBQuery;
    IBQuery_AlunCertFOTO: TBlobField;
    IBQuery_AlunCertNOME_ALUNO: TIBStringField;
    IBQuery_AlunCertSERIE: TIBStringField;
    IBQuery_AlunCertCURSO: TIBStringField;
    IBQuery_AlunCertTURMA: TIBStringField;
    IBQuery_AlunCertTURNO: TIBStringField;
    IBQuery_AlunCertANO_LETIVO: TIBStringField;
    IBQuery_AlunCertMATRICULA: TIBStringField;
    Label4: TLabel;
    Edit_NomeAlun: TComboBox;
    Label2: TLabel;
    CBox_Curso: TComboBox;
    Label3: TLabel;
    Ds_Contador: TDataSource;
    GroupBox1: TGroupBox;
    DBEdit40: TDBEdit;
    Label44: TLabel;
    Label46: TLabel;
    DBEdit42: TDBEdit;
    DBEdit41: TDBEdit;
    Label45: TLabel;
    Label1: TLabel;
    IBQuery_AlunCertDATA_NASCIMENTO: TDateTimeField;
    IBQuery_AlunCertNATURALIDADE: TIBStringField;
    IBQuery_Contador: TIBQuery;
    IBQuery_ContadorCERTIFICADOS: TIntegerField;
    BtnSalva: TBitBtn;
    BtnCancela: TBitBtn;
    DataSource1: TDataSource;
    IBQuery_AlunCertCERT_IMPRESSO: TIntegerField;
    GroupBox2: TGroupBox;
    Label9: TLabel;
    DBText1: TDBText;
    CheckBox_Ano: TCheckBox;
    CheckBox_ReImp: TCheckBox;
    IBQuery_AlunCertESTADO_NATURALIDADE: TIBStringField;
    ComboBox_Ano: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Btn_FecharClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBGrid_Alun_CertDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure Btn_ImprimirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_NomeAlunKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_NomeAlunKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CBox_CursoChange(Sender: TObject);
    procedure CBox_CursoKeyPress(Sender: TObject; var Key: Char);
    procedure BtnSalvaClick(Sender: TObject);
    procedure BtnCancelaClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox_AnoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCertificado: TFrmCertificado;
  Imprimido, lAtual, fAtual, rAtual: Integer;
  Msg: string;
  Ano_Letivo: Boolean; 

implementation

uses UnDm, UnPrincipal, UnAlunos, UnLocalizar, UnRelCertFun;

{$R *.dfm}

procedure TFrmCertificado.FormCreate(Sender: TObject);
begin
Shortdateformat:='dd/mm/yyyy';
ComboBox_Ano.Items.Clear;
if not Dm.IBDS_MATRICULAS.Eof then
repeat
{ meus comandos}
while not(Dm.IBDS_MATRICULAS.Eof) do
begin
If ComboBox_Ano.Items.IndexOf(Dm.IBDS_MATRICULAS.fieldbyname('ANO_LETIVO').AsString) = -1 then
ComboBox_Ano.Items.Add(Dm.IBDS_MATRICULAS.fieldbyname('ANO_LETIVO').AsString);
Dm.IBDS_MATRICULAS.Next;
end;
until Dm.IBDS_MATRICULAS.Eof;
ComboBox_Ano.ItemIndex:= 0;
end;

procedure TFrmCertificado.FormShow(Sender: TObject);
begin
FrmCertificado.Top:=100;
FrmCertificado.Left:=0;

if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmCertificado.Caption:= FrmCertificado.Caption;
Exit;
end else
FrmCertificado.Caption:= FrmCertificado.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end;

procedure TFrmCertificado.Btn_FecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmCertificado.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
DeleteFile('C:\Windows\Temp\inat.jpg');
DeleteFile('C:\Windows\Temp\inat.bmp');
if imprimido = 1 then
begin
Msg := 'Foi impresso(s) %d certificado(s). Você confirma esta informação?'
+#10+#10+'ATENÇÃO: Se você concordar, atualize estas informações em seu livro de registros.'
+#10+#10+'"Sim" para confirmar.'
+#10+'"Não" para cancelar.';
Msg := Format(Msg, [Impressos]);
if MessageBox(0, PAnsiChar(Msg),'Pergunta',mb_yesno+mb_iconquestion)= 6 then
begin
// Inicia alteração
Dm.IBDS_EMPRESA.Edit;
Dm.IBDS_EMPRESAREGISTRO_NUMERO.AsInteger:= CertificadosImpressos+CapturaReg;
Dm.IBDS_EMPRESAFOLHA_NUMERO.AsInteger:= CapturaFol;
Dm.IBDS_EMPRESALIVRO_NUMERO.AsInteger:= CapturaLiv;
// Salva alterações
If Not(DM.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_EMPRESA.Post;
Dm.IBDS_EMPRESA.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;

imprimido:= 2;
Exit;
end else
// Inicia alteração
Dm.IBDS_EMPRESA.Edit;
Dm.IBDS_EMPRESAREGISTRO_NUMERO.AsInteger:= rAtual;
Dm.IBDS_EMPRESAFOLHA_NUMERO.AsInteger:=fAtual;
Dm.IBDS_EMPRESALIVRO_NUMERO.AsInteger:=lAtual;
// Salva alterações
If Not(DM.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_EMPRESA.Post;
Dm.IBDS_EMPRESA.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;

//Atualiza cadastros
IBQuery_AlunCert.First;
Dm.IBDS_MATRICULAS.First;
if not IBQuery_AlunCert.Eof then
repeat
{ meus comandos}
Dm.IBDS_MATRICULAS.Locate('MATRICULA;SERIE',VarArrayOf([IBQuery_AlunCertMATRICULA.AsString,IBQuery_AlunCertSERIE.AsString]), []);
// Inicia alteração
Dm.IBDS_MATRICULAS.Edit;
Dm.IBDS_MATRICULASCERT_IMPRESSO.AsInteger:= 0;
// Salva alterações
If Not(DM.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_MATRICULAS.Post;
Dm.IBDS_MATRICULAS.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
IBQuery_AlunCert.Next;
until IBQuery_AlunCert.Eof;

imprimido:= 2;
end;
end;

procedure TFrmCertificado.DBGrid_Alun_CertDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
Img: TImage;
begin
if not odd(IBQuery_AlunCert.RecNo) then // se for impar
// se a célula não está selecionada
if not (gdSelected in State) then
begin
// define uma cor de fundo
DBGrid_Alun_Cert.Canvas.Brush.Color:= cl3DLight;
DBGrid_Alun_Cert.Canvas.FillRect(Rect); // pinta a célula
// pinta o texto padrão
DBGrid_Alun_Cert.DefaultDrawDataCell(rect,column.Field,State);
end;
  (*pinta o campo foto*)
if Column.Field = IBQuery_AlunCertFOTO then
begin
if IBQuery_AlunCertFOTO.Value <> '' then
begin
IBQuery_AlunCertFOTO.SaveToFile('C:\Windows\Temp\inat.jpg');
FrmPrincipal.ConverterJPegParaBmp('C:\Windows\Temp\inat.jpg');
end else
SemImagem.Picture.Bitmap.SaveToFile('C:\Windows\Temp\inat.bmp');
    if not (gdSelected in State) then // se não for a célula selecionada
    DBGrid_Alun_Cert.Canvas.FillRect(Rect); // limpa a célula
    Img:= TImage.Create(Self);
    with TPicture.Create do
    begin
if DBGrid_Alun_Cert.Fields[1].Text = '' then
begin
Assign(SemImagem.Picture.Bitmap);
end else
Img.Picture.LoadFromFile('C:\Windows\Temp\inat.bmp');
if IBQuery_AlunCertFOTO.Value = '' then
begin
 Assign(SemImagem.Picture.Bitmap);
end else
    Assign(Img.Picture.Bitmap);
    DBGrid_Alun_Cert.Canvas.StretchDraw(Rect,Bitmap);  // desenha imagem
    Free;
    end;
end;
end;

procedure TFrmCertificado.Btn_ImprimirClick(Sender: TObject);
begin
if imprimido = 1 then
begin
Msg := 'Foi impresso(s) %d certificado(s). Você confirma esta informação?'
+#10+#10+'ATENÇÃO: Se você concordar, atualize estas informações em seu livro de registros.'
+#10+#10+'"Sim" para confirmar.'
+#10+'"Não" para cancelar.';
Msg := Format(Msg, [Impressos]);
if MessageBox(0, PAnsiChar(Msg),'Pergunta',mb_yesno+mb_iconquestion)= 6 then
begin

// Inicia alteração
Dm.IBDS_EMPRESA.Edit;
Dm.IBDS_EMPRESAREGISTRO_NUMERO.AsInteger:= CertificadosImpressos+CapturaReg;
Dm.IBDS_EMPRESAFOLHA_NUMERO.AsInteger:= CapturaFol;
Dm.IBDS_EMPRESALIVRO_NUMERO.AsInteger:= CapturaLiv;
// Salva alterações
If Not(DM.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_EMPRESA.Post;
Dm.IBDS_EMPRESA.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;

rAtual:= Dm.IBDS_EMPRESAREGISTRO_NUMERO.AsInteger;
fAtual:= Dm.IBDS_EMPRESAFOLHA_NUMERO.AsInteger;
lAtual:= Dm.IBDS_EMPRESALIVRO_NUMERO.AsInteger;
Imprimido:= 1;
try
 FrmRelCertFun:=TFrmRelCertFun.Create(nil);
 FrmRelCertFun.QuickRep1.PreviewModal;
finally
 FrmRelCertFun.Release;
end;
Exit;
end else
// Inicia alteração
Dm.IBDS_EMPRESA.Edit;
Dm.IBDS_EMPRESAREGISTRO_NUMERO.AsInteger:= rAtual;
Dm.IBDS_EMPRESAFOLHA_NUMERO.AsInteger:=fAtual;
Dm.IBDS_EMPRESALIVRO_NUMERO.AsInteger:=lAtual;
// Salva alterações
If Not(DM.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_EMPRESA.Post;
Dm.IBDS_EMPRESA.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;

//Atualiza cadastros
IBQuery_AlunCert.First;
Dm.IBDS_MATRICULAS.First;
if not IBQuery_AlunCert.Eof then
repeat
{ meus comandos}
Dm.IBDS_MATRICULAS.Locate('MATRICULA;SERIE',VarArrayOf([IBQuery_AlunCertMATRICULA.AsString,IBQuery_AlunCertSERIE.AsString]), []);
// Inicia alteração
Dm.IBDS_MATRICULAS.Edit;
Dm.IBDS_MATRICULASCERT_IMPRESSO.AsInteger:= 0;
// Salva alterações
If Not(DM.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_MATRICULAS.Post;
Dm.IBDS_MATRICULAS.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
IBQuery_AlunCert.Next;
until IBQuery_AlunCert.Eof;
Imprimido:= 2;
end else
rAtual:= Dm.IBDS_EMPRESAREGISTRO_NUMERO.AsInteger;
fAtual:= Dm.IBDS_EMPRESAFOLHA_NUMERO.AsInteger;
lAtual:= Dm.IBDS_EMPRESALIVRO_NUMERO.AsInteger;
Imprimido:= 1;
try
 FrmRelCertFun:=TFrmRelCertFun.Create(nil);
 FrmRelCertFun.QuickRep1.PreviewModal;
finally
 FrmRelCertFun.Release;
end;
end;

procedure TFrmCertificado.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and not (ActiveControl is TMemo) then begin
// desabilita processamento posterior da tecla
  Key := #0;
  Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFrmCertificado.Edit_NomeAlunKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
if trim(Edit_NomeAlun.Text) = '' then
begin
ShowMessage('Informe o '+Label2.Caption);
Exit;
end else
Screen.Cursor := crSQLWait;
if trim(CBox_Curso.Text) = 'EDUCAÇÃO INFANTIL' then
begin
ShowMessage('Certificado ainda não administrado para o curso informado.');
Screen.Cursor := crDefault;
Exit;
end else
if trim(CBox_Curso.Text) = 'ENSINO FUNDAMENTAL' then
begin
 // SELECIONA ALUNOS DO CURSO INFORMADO
 IBQuery_AlunCert.Close;
 IBQuery_AlunCert.SQL.Clear;
 IBQuery_AlunCert.SQL.Add('select ANO_LETIVO, CURSO, FOTO, MATRICULA, NOME_ALUNO, SERIE, TURMA, TURNO, DATA_NASCIMENTO, NATURALIDADE, ESTADO_NATURALIDADE, CERT_IMPRESSO from MATRICUL');
if CheckBox_Ano.Checked = True then
begin
 IBQuery_AlunCert.SQL.Add('where SERIE = :Ser and NOME_ALUNO = :Nome and CERT_IMPRESSO = :Impresso and ANO_LETIVO = :Ano and exists ');
 IBQuery_AlunCert.ParamByName('Ano').AsString:= ComboBox_Ano.Text;
 end else
 IBQuery_AlunCert.SQL.Add('where SERIE = :Ser and NOME_ALUNO = :Nome and CERT_IMPRESSO = :Impresso and exists ');
 IBQuery_AlunCert.SQL.Add('(select MATRICULA, RESULTADO_FINAL from NOTAS');
 IBQuery_AlunCert.SQL.Add('where RESULTADO_FINAL between :Re1 and :Re2)');
 IBQuery_AlunCert.ParamByName('Ser').AsString:= '8ª SÉRIE';
if CheckBox_ReImp.Checked = True then
begin
 IBQuery_AlunCert.ParamByName('Impresso').AsInteger:= 1;
 end else
 IBQuery_AlunCert.ParamByName('Impresso').AsInteger:= 0;
 IBQuery_AlunCert.ParamByName('Nome').AsString:= Edit_NomeAlun.Text;
 IBQuery_AlunCert.ParamByName('Re1').AsString:= 'APROVADA';
 IBQuery_AlunCert.ParamByName('Re2').AsString:= 'APROVADO';
 IBQuery_AlunCert.SQL.Add('order by NOME_ALUNO');
 IBQuery_AlunCert.Prepare;
 IBQuery_AlunCert.Open;
//Contagem
 IBQuery_Contador.Close;
 IBQuery_Contador.SQL.Clear;
 IBQuery_Contador.SQL.Add('select count(NOME_ALUNO) as Certificados from MATRICUL');
 if CheckBox_Ano.Checked = True then
begin
 IBQuery_Contador.SQL.Add('where SERIE = :Ser and NOME_ALUNO = :Nome and CERT_IMPRESSO = :Impresso and ANO_LETIVO = :Ano and exists ');
 IBQuery_Contador.ParamByName('Ano').AsString:= ComboBox_Ano.Text;
 end else
 IBQuery_Contador.SQL.Add('where SERIE = :Ser and NOME_ALUNO = :Nome and CERT_IMPRESSO = :Impresso and  exists ');
 IBQuery_Contador.SQL.Add('(select MATRICULA, RESULTADO_FINAL from NOTAS');
 IBQuery_Contador.SQL.Add('where RESULTADO_FINAL between :Re1 and :Re2)');
 IBQuery_Contador.ParamByName('Ser').AsString:= '8ª SÉRIE';
if CheckBox_ReImp.Checked = True then
begin
 IBQuery_Contador.ParamByName('Impresso').AsInteger:= 1;
 end else
 IBQuery_Contador.ParamByName('Impresso').AsInteger:= 0;
 IBQuery_Contador.ParamByName('Nome').AsString:= Edit_NomeAlun.Text;
 IBQuery_Contador.ParamByName('Re1').AsString:= 'APROVADA';
 IBQuery_Contador.ParamByName('Re2').AsString:= 'APROVADO';
 IBQuery_Contador.Prepare;
 IBQuery_Contador.Open;
Screen.Cursor := crDefault;

if DBGrid_Alun_Cert.Fields[1].Text = '' then
begin
Btn_Imprimir.Enabled:= False;
Exit;
end else
Btn_Imprimir.Enabled:= True;
Exit;
end else
if trim(CBox_Curso.Text) = 'ENSINO MÉDIO' then
begin
ShowMessage('Curso ainda não administrado.');
Screen.Cursor := crDefault;
end;
end;
end;

procedure TFrmCertificado.Edit_NomeAlunKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  theText: string;
  p: integer;
begin
if IBQuery_AlunCert.Active <> True then
begin
Abort;
end else
  with Edit_NomeAlun do
    case key of
      8, 13, 46, 37..40: ; // Se for backspace, enter, delete, ou setas, ignora...
      else
      begin
        p := SelStart;
        theText := copy(text, 0, p);
        if IBQuery_AlunCert.Locate('NOME_ALUNO', theText, [loCaseInsensitive, loPartialKey]) then
        begin
          text := IBQuery_AlunCert.FieldByName('NOME_ALUNO').AsString;
          SelStart := p;
          SelLength := length(text) - selStart;
       end;
   end;
  end;
end;

procedure TFrmCertificado.CBox_CursoChange(Sender: TObject);
begin
if trim(CBox_Curso.Text) = '' then
begin
ShowMessage('Informe o '+Label3.Caption);
Exit;
end else
Screen.Cursor := crSQLWait;
DBGrid_Alun_Cert.DataSource:= Ds_Contador;
if trim(CBox_Curso.Text) = 'EDUCAÇÃO INFANTIL' then
begin
ShowMessage('Certificado ainda não administrado para o curso informado.');
Screen.Cursor := crDefault;
Exit;
end else
if trim(CBox_Curso.Text) = 'ENSINO FUNDAMENTAL' then
begin
 // SELECIONA ALUNOS DO CURSO INFORMADO
 IBQuery_AlunCert.Close;
 IBQuery_AlunCert.SQL.Clear;
 IBQuery_AlunCert.SQL.Add('select ANO_LETIVO, CURSO, FOTO, MATRICULA, NOME_ALUNO, SERIE, TURMA, TURNO, DATA_NASCIMENTO, NATURALIDADE, ESTADO_NATURALIDADE, CERT_IMPRESSO from MATRICUL A');
if CheckBox_Ano.Checked = True then
begin
 IBQuery_AlunCert.SQL.Add('where SERIE = :Ser and CERT_IMPRESSO = :Impresso and ANO_LETIVO = :Ano and exists ');
 IBQuery_AlunCert.ParamByName('Ano').AsString:= ComboBox_Ano.Text;
 end else
 IBQuery_AlunCert.SQL.Add('where SERIE = :Ser and CERT_IMPRESSO = :Impresso and exists ');
 IBQuery_AlunCert.SQL.Add('(select MATRICULA, RESULTADO_FINAL from NOTAS');
 IBQuery_AlunCert.SQL.Add('where RESULTADO_FINAL between :Re1 and :Re2 and MATRICULA = A.MATRICULA)');
 IBQuery_AlunCert.ParamByName('Ser').AsString:= '8ª SÉRIE';
if CheckBox_ReImp.Checked = True then
begin
 IBQuery_AlunCert.ParamByName('Impresso').AsInteger:= 1;
 end else
 IBQuery_AlunCert.ParamByName('Impresso').AsInteger:= 0;
 IBQuery_AlunCert.ParamByName('Re1').AsString:= 'APROVADA';
 IBQuery_AlunCert.ParamByName('Re2').AsString:= 'APROVADO';
 IBQuery_AlunCert.SQL.Add('order by NOME_ALUNO');
 IBQuery_AlunCert.Prepare;
 IBQuery_AlunCert.Open;
//Contagem
 IBQuery_Contador.Close;
 IBQuery_Contador.SQL.Clear;
 IBQuery_Contador.SQL.Add('select count(NOME_ALUNO) as Certificados  from MATRICUL A');
 if CheckBox_Ano.Checked = True then
begin
 IBQuery_Contador.SQL.Add('where SERIE = :Ser and CERT_IMPRESSO = :Impresso and ANO_LETIVO = :Ano and exists ');
 IBQuery_Contador.ParamByName('Ano').AsString:= ComboBox_Ano.Text;
 end else
 IBQuery_Contador.SQL.Add('where SERIE = :Ser and CERT_IMPRESSO = :Impresso and exists ');
 IBQuery_Contador.SQL.Add('(select MATRICULA, RESULTADO_FINAL from NOTAS');
 IBQuery_Contador.SQL.Add('where RESULTADO_FINAL between :Re1 and :Re2 and MATRICULA = A.MATRICULA)');
 IBQuery_Contador.ParamByName('Ser').AsString:= '8ª SÉRIE';
if CheckBox_ReImp.Checked = True then
begin
 IBQuery_Contador.ParamByName('Impresso').AsInteger:= 1;
 end else
 IBQuery_Contador.ParamByName('Impresso').AsInteger:= 0;
 IBQuery_Contador.ParamByName('Re1').AsString:= 'APROVADA';
 IBQuery_Contador.ParamByName('Re2').AsString:= 'APROVADO';
 IBQuery_Contador.Prepare;
 IBQuery_Contador.Open;
Edit_NomeAlun.Items.Clear;
IBQuery_AlunCert.First;
if not IBQuery_AlunCert.Eof then
repeat
{ meus comandos}
while not(IBQuery_AlunCert.Eof) do
begin
If Edit_NomeAlun.Items.IndexOf(IBQuery_AlunCert.fieldbyname('NOME_ALUNO').AsString) = -1 then
Edit_NomeAlun.Items.Add(IBQuery_AlunCert.fieldbyname('NOME_ALUNO').AsString);
IBQuery_AlunCert.Next;
end;
until IBQuery_AlunCert.Eof;
IBQuery_AlunCert.First;
DBGrid_Alun_Cert.DataSource:= DS_AlunCert;
Screen.Cursor := crDefault;

if DBGrid_Alun_Cert.Fields[1].Text = '' then
begin
Btn_Imprimir.Enabled:= False;
Exit;
end else
Btn_Imprimir.Enabled:= True;
Exit;
end else
if trim(CBox_Curso.Text) = 'ENSINO MÉDIO' then
begin
ShowMessage('Curso ainda não administrado.');
Screen.Cursor := crDefault;
end;
end;

procedure TFrmCertificado.CBox_CursoKeyPress(Sender: TObject;
  var Key: Char);
begin
key:=#0;
end;

procedure TFrmCertificado.BtnSalvaClick(Sender: TObject);
begin
If Not(DM.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_EMPRESA.Post;
Dm.IBDS_EMPRESA.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
end;

procedure TFrmCertificado.BtnCancelaClick(Sender: TObject);
begin
Dm.IBDS_EMPRESA.Cancel;
Dm.IBDS_EMPRESA.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
end;

procedure TFrmCertificado.DataSource1StateChange(Sender: TObject);
begin
BtnSalva.Enabled:= DataSource1.State in [dsInsert,dsEdit];
BtnCancela.Enabled:= DataSource1.State in [dsInsert,dsEdit];
end;

procedure TFrmCertificado.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
SR: TSearchRec;
I: integer;
begin
//FrmPrincipal.LimpaTemporarios('C:\WINDOWS\TEMP');
I := FindFirst('C:\WINDOWS\TEMP\*.*', faAnyFile, SR);
while I = 0 do
begin
if (SR.Attr and faDirectory) <> faDirectory then
(*if not*) DeleteFile('C:\WINDOWS\TEMP\' + SR.Name);//then ShowMessage('Não foi possível excluir C:\WINDOWS\TEMP\' + SR.Name);
I := FindNext(SR);
end;
Action:=Cafree;
end;

procedure TFrmCertificado.ComboBox_AnoKeyPress(Sender: TObject;
  var Key: Char);
begin
key:=#0;
end;

end.
