unit UnPrincipal;

interface

uses
  Windows, Messages, SysUtils,  Classes, Graphics, Forms, Dialogs, Registry,
  EAppProt, DBClient, IBCustomDataSet, DelphiTwain, backup, DB, jpeg, Buttons,
  ExtCtrls, Menus, StdCtrls, ComCtrls, Controls;

type
  TFrmPrincipal = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    BitBtn9: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn5: TBitBtn;
    Image1: TImage;
    DataSource1: TDataSource;
    Image2: TImage;
    BackupFile1: TBackupFile;
    MainMenu1: TMainMenu;
    Fechar1: TMenuItem;
    Financeiro1: TMenuItem;
    Calculadora1: TMenuItem;
    AtadeResultadosFinais1: TMenuItem;
    EvAppProtect1: TEvAppProtect;
    N4: TMenuItem;
    DiriodeClasse2: TMenuItem;
    Histrico1: TMenuItem;
    Certificado1: TMenuItem;
    FileListBox: TListBox;
    BitBtn6: TBitBtn;
    SecretariaEscolar1: TMenuItem;
    Administrativo1: TMenuItem;
    Pedaggico1: TMenuItem;
    N1: TMenuItem;
    Utilitrios1: TMenuItem;
    Cadastros1: TMenuItem;
    Formulrios1: TMenuItem;
    Impreses1: TMenuItem;
    Relatrios1: TMenuItem;
    Alunos1: TMenuItem;
    Mdias1: TMenuItem;
    Notas1: TMenuItem;
    AlunosemRecuperao1: TMenuItem;
    Aniversariantes1: TMenuItem;
    Carteira1: TMenuItem;
    Capas1: TMenuItem;
    SobreoGEES1: TMenuItem;
    SelecionarOrigem1: TMenuItem;
    Scanner1: TMenuItem;
    CpiadeSegurana1: TMenuItem;
    Inativos1: TMenuItem;
    Disciplina1: TMenuItem;
    GrficodeMatrculas1: TMenuItem;
    Boletim1: TMenuItem;
    Aluno1: TMenuItem;
    Cadastros2: TMenuItem;
    Instituio1: TMenuItem;
    Usurio1: TMenuItem;
    EfetuarLogoff1: TMenuItem;
    Cadastros3: TMenuItem;
    Formulrios2: TMenuItem;
    Relatrios2: TMenuItem;
    Inadimplncias1: TMenuItem;
    Pagamento1: TMenuItem;
    Carn1: TMenuItem;
    Recebimento1: TMenuItem;
    Pesquisar1: TMenuItem;
    Imprimir1: TMenuItem;
    ReimpressodeCarteira1: TMenuItem;
    DiriodeClasse1: TMenuItem;
    FrmTransferncias1: TMenuItem;
    Matrculas1: TMenuItem;
    Curso1: TMenuItem;
    PaiseResponsvelFinanceiro1: TMenuItem;
    Panel2: TPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    ProgressBar1: TProgressBar;
    procedure DiriodeClasse1Click(Sender: TObject);
    procedure Paise1Click(Sender: TObject);
    procedure Curso1Click(Sender: TObject);
    procedure FrmTransferncias1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SelecionarOrigem1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Cadastro1Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Calculadora1Click(Sender: TObject);
    procedure CpiadeSegurana1Click(Sender: TObject);
    procedure SobreoSGO1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Usurios1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Empresa1Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure BitBtn3Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BackupFile1Progress(Sender: TObject; Filename: String;
      Percent: TPercentage; var Continue: Boolean);
    procedure Aniversariantes1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure Inativos1Click(Sender: TObject);
    procedure Listagem1Click(Sender: TObject);
    procedure Pagamentos1Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure Disciplinas1Click(Sender: TObject);
    procedure Matrculas1Click(Sender: TObject);
    procedure Boletim1Click(Sender: TObject);
    procedure GrficodeMatrculas1Click(Sender: TObject);
    procedure EfetuarLogOff1Click(Sender: TObject);
    procedure ListagemdeMdias1Click(Sender: TObject);
    procedure EmissodeCarteiras1Click(Sender: TObject);
    procedure ReimpressodeCarteira1Click(Sender: TObject);
    procedure AtadeResultadosFinais1Click(Sender: TObject);
    procedure Recebimento1Click(Sender: TObject);
    procedure Consultapagamento1Click(Sender: TObject);
    procedure RelaodeInadimplncias1Click(Sender: TObject);
    procedure Dirio1Click(Sender: TObject);
    procedure ListagemdeAlunosemRecuperao1Click(Sender: TObject);
    procedure Histrico1Click(Sender: TObject);
    procedure Certificado1Click(Sender: TObject);
    procedure ListagemdeNotas1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ManipulaExcecoes(Sender: TObject; E: Exception);
  public
    { Public declarations }
    function TiraMascara(text:string): String;
    procedure ConverterJPegParaBmp(Arquivo: string);
    function RemoveZeros(S: string): string;
    function RetZero(ZEROS:string;QUANT:integer):String;
    function EliminaBrancos(sTexto:String):String;
    function AnsiToAscii ( str: String ): String;
    function CheckDateFormat(SDate:string):string;
    Function AbreviarNome(Nome: String): String;
    procedure LimpaTemporarios(const ArquivosTemporarios: String);
    procedure BarraDeProgresso(IBDSet: TIBDataSet; BProgresso: TProgressBar);
    procedure BarraDeProgresso2(CDSet: TClientDataSet; BProgresso: TProgressBar);
  end;

var
  FrmPrincipal: TFrmPrincipal;
  Reg: TRegistry;
  Data: TDateTime;
  AnoLetivo, Usuario, Empresa, PathBackup:  String;
  OldValue : LongBool;
  VarTipoTBitmap: tbITMAP;
  ValorConvX, ValorConvY : Integer;

 implementation

uses UnAlunos, UnBackup, UnDm, UnUsuarios, UnSenha, UnFrmDataGeral,
  UnEmpresa, UnLocalizar, UnPreview, UnAniversariantes, UnInativos,
  UnListaAlunos, UnCarne, UnBoletim, UnDisciplinas, UnMatriculas,
  UnGraficoAlunos, UnListaMedias, UnCarteiras, UnReempresaoCart, UnAta,
  UnRecebimentos, UnConsulta, UnDevedores, UnDiario, UnRelCapDiaInf,
  UnRelCapDiaFun, UnListaAlunosRec, UnHistorico, UnRelCertFun,
  UnCertificado, UnFichaNota, UnFotos, UnTransferencias, UnCursos, UnDadosPais,
  UnCapaDiarios;

{$R *.dfm}

procedure TFrmPrincipal.Fechar1Click(Sender: TObject);
begin
Close
end;

procedure TFrmPrincipal.Cadastro1Click(Sender: TObject);
begin
try
 FrmAlunos:=TFrmAlunos.Create(nil);
 FrmAlunos.ShowModal;
finally
 FrmAlunos.Release;
end;
end;

procedure TFrmPrincipal.BitBtn9Click(Sender: TObject);
begin
Close;
end;

procedure TFrmPrincipal.BitBtn1Click(Sender: TObject);
begin
try
 FrmAlunos:=TFrmAlunos.Create(nil);
 FrmAlunos.ShowModal;
finally
 FrmAlunos.Release;
end;
end;

procedure TFrmPrincipal.Calculadora1Click(Sender: TObject);
begin
WinExec('Calc', SW_Show);
end;

procedure TFrmPrincipal.CpiadeSegurana1Click(Sender: TObject);
begin
try
 FrmBackup:=TFrmBackup.Create(nil);
 FrmBackup.ShowModal;
finally
 FrmBackup.Release;
end;
end;

procedure TFrmPrincipal.Curso1Click(Sender: TObject);
begin
try
 FrmCursos:=TFrmCursos.Create(nil);
 FrmCursos.ShowModal;
finally
 FrmCursos.Release;
end;
end;

procedure TFrmPrincipal.SelecionarOrigem1Click(Sender: TObject);
var
  SelItem: Integer; 
begin
Application.CreateForm(TFrmFotos, FrmFotos);
  // Cargas a biblioteca e o gerente de fonte
  if FrmFotos.ImgScan.LoadLibrary() then
    with FrmFotos.ImgScan do
    begin
      LoadSourceManager();
      SelItem := SelectSource();
      // Se nenhum artigo fosse selecionado, mensagem de espetáculo
      if SelItem = -1 then
        ShowMessage('Não existe ítem slecionado.')
      else
        ShowMessage(Source[SelItem].ProductName);
    end
  else ShowMessage('Driver Twain não está instalado.');
end;

procedure TFrmPrincipal.SobreoSGO1Click(Sender: TObject);
begin
ShowMessage('Suporte Técnico: GEES - Gerenciamento Escolar'
+#13+#13+'Atendimento e suporte técnico ao cliente:'
+#13+'Horário: De Segunda à Sexta, das 8:00h às 17:00h'
+#13+'Suporte: Tel.(85)8866.0003 E-mail: erivandoramos@bol.com.br'
+#13+'___________________________________________________________________________________'
+#13+#13+'© Propriedade Intelectual de Programa de Computador protegida sob Lei do Direito Autoral, LEI 9609/98.');
end;

procedure TFrmPrincipal.BitBtn4Click(Sender: TObject);
begin
try
 FrmBackup:=TFrmBackup.Create(nil);
 FrmBackup.ShowModal;
finally
 FrmBackup.Release;
end;
end;

procedure TFrmPrincipal.BitBtn8Click(Sender: TObject);
begin
ShowMessage('GEES 1.0 www.sisescola.com.br'
+#13+#13+'Atendimento e suporte técnico ao cliente:'
+#13+'Horário: De Segunda à Sexta, das 8:00h às 17:00h'
+#13+'Suporte: Tel.(85)8866.0003 E-mail/Skype: erivandoramos@bol.com.br'
+#13+'___________________________________________________________________________________'
+#13+#13+'Cópia em locação autorizada para:'
+#13+''+Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString+''
+#13+'CNPJ:'+Dm.IBDS_EMPRESACNPJ.AsString+''
+#13+'___________________________________________________________________________________'
+#13+#13+'© Propriedade Intelectual de Programa de Computador protegida sob a Lei dos Direitos Autorais (LEI 9.610/98)/(LEI 9.610/98).');
end;

procedure TFrmPrincipal.BitBtn2Click(Sender: TObject);
begin
try
 FrmUsuarios:=TFrmUsuarios.Create(nil);
 FrmUsuarios.ShowModal;
finally
 FrmUsuarios.Release;
end;
end;

procedure TFrmPrincipal.Usurios1Click(Sender: TObject);
begin
try
 FrmUsuarios:=TFrmUsuarios.Create(nil);
 FrmUsuarios.ShowModal;
finally
 FrmUsuarios.Release;
end;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
FrmSenha := TfrmSenha.Create(self);
FrmSenha.ShowModal;
FrmDataGeral:= TFrmDataGeral.Create(self);
FrmDataGeral.ShowModal;
Empresa:= Dm.IBDS_EMPRESACNPJ.AsString;
EfetuarLogOff1.Caption:= EfetuarLogOff1.Caption +' de '+ Usuario;
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmPrincipal.Caption:= FrmPrincipal.Caption;
Exit;
end else
FrmPrincipal.Caption:= FrmPrincipal.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end;

procedure TFrmPrincipal.FrmTransferncias1Click(Sender: TObject);
begin
try
 FrmTransferencias:=TFrmTransferencias.Create(nil);
 FrmTransferencias.ShowModal;
finally
 FrmTransferencias.Release;   
end;
end;

procedure TFrmPrincipal.ManipulaExcecoes(Sender: TObject; E: Exception);
var
 SGOErros: TextFile;
 Hora: String;
 Dir: String;
begin
Hora:=TimeToStr(Time);
ShowMessage('Ocorreu um comando inválido nesta aplicação.'+#13+#13+'Verifique se algo de incorreto foi efetuado.'+#13+#13+'Se o problema continuar consulte o suporte técnico.');
Dir := 'C:\Meus documentos\Gees\Log\';
try
  if not DirectoryExists(Dir) then
  ForceDirectories(Dir);
  AssignFile(SGOErros, 'C:\Meus documentos\Gees\Log\Log.log');
  if not FileExists('C:\Meus documentos\Gees\Log\Log.log') then Rewrite(SGOErros,'C:\Meus documentos\Gees\Log\Log.log');
  Append(SGOErros);
  WriteLn(SGOErros, 'Tipo: '+E.ClassName+ ' Local: ' +Sender.ClassName+ ' Erro: '+(E.Message)+ ' Data/Hora: '+DateToStr(Data)+ ' ' +Hora);
  finally
  CloseFile(SGOErros);
  end;
  Screen.Cursor := crDefault;
  Abort;
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
Application.OnException := ManipulaExcecoes;
end;

procedure TFrmPrincipal.Empresa1Click(Sender: TObject);
begin
try
 FrmEmpresa:=TFrmEmpresa.Create(nil);
 FrmEmpresa.ShowModal;
finally
 FrmEmpresa.Release;
end;
end;

procedure TFrmPrincipal.DataSource1DataChange(Sender: TObject;
  Field: TField);
var
  MS: TMemoryStream;
  J1: TJPEGImage;
begin
  Try{Finall}
    If Dm.IBDS_EMPRESALOGO_EMPRESA.IsNull
      then Image1.Picture.Assign(nil)
      else begin
        J1 := TJPEGImage.Create;
        MS := TMemoryStream.Create;
        try
          Dm.IBDS_EMPRESALOGO_EMPRESA.SaveToStream(MS);
          MS.Seek(0,soFromBeginning);
          with J1 do begin
            PixelFormat := jf24Bit;
            Scale := jsFullSize;
            Grayscale := False;
            Performance := jpBestQuality;
            ProgressiveDisplay := True;
            ProgressiveEncoding := True;
            LoadFromStream(MS);
          end;
         Image1.Picture.Assign(J1);
        finally
          J1.Free;
          MS.Free;
      end;
      end;
  Finally
    End;
if  Dm.IBDS_EMPRESA.FieldByName('LOGO_EMPRESA').asString = '' then
begin
Image2.Visible:=True;
end
else
Image2.Visible:=False;
end;

procedure TFrmPrincipal.BitBtn3Click(Sender: TObject);
begin
try
 FrmLocalizar:=TFrmLocalizar.Create(nil);
 FrmLocalizar.ShowModal;
finally
 FrmLocalizar.Release;
end;
end;

procedure TFrmPrincipal.Localizar1Click(Sender: TObject);
begin
try
 FrmLocalizar:=TFrmLocalizar.Create(nil);
 FrmLocalizar.ShowModal;
finally
 FrmLocalizar.Release;
end;
end;

procedure TFrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=Cafree;
end;

procedure TFrmPrincipal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
 Dir, Filename: string;
begin
CanClose:= False;
if MessageBox(0,'Tem certeza que deseja sair deste aplicativo?','Pergunta',mb_yesno+mb_iconquestion)=6 then
CanClose := True;
if CanClose = True then
begin
Reg:= TRegistry.Create;
Reg.OpenKey('GEES\Backup', True);
Diario:=Reg.ReadString('Backup Diário');
Reg.CloseKey;

Dir := 'C:\Meus documentos\Gees\Backups\';
if not DirectoryExists(Dir) then
ForceDirectories(Dir);
Panel2.Visible:=True;
Screen.Cursor := crMultiDrag;

if Diario = 'Não' then
begin
DeleteFile('C:\Meus documentos\Gees\Backups\'+FrmPrincipal.TiraMascara(Empresa)+'-'+FrmPrincipal.TiraMascara(DateToStr(Data - 1))+'.bck');
Filename:= 'C:\Meus documentos\Gees\Backups\'+FrmPrincipal.TiraMascara(Empresa)+'-'+FrmPrincipal.TiraMascara(DateToStr(Data))+'.bck';
end else
Filename:= 'C:\Meus documentos\Gees\Backups\'+FrmPrincipal.TiraMascara(Empresa)+'-'+FrmPrincipal.TiraMascara(DateToStr(Data))+'.bck';
Filelistbox.items.Clear;
Filelistbox.items.Add(PathBackup);
if Filelistbox.items.count = 0 then MessageBox(FrmBackup.handle,'Nenhum arquivo adicionado.','Aviso',0+48)
     else //
  BackupFile1.maxSize := 0;
  backupfile1.backuptitle      := 'Gees - Cópia de segurança';
  backupfile1.backupmode       := bmAll;
  backupfile1.compressionLevel := clMax;
  backupfile1.SaveFileID       := False;
  if backupfile1.backup(filelistbox.items, Filename) then
Panel2.Visible:=False;
Screen.Cursor := crDefault;
end;
end;

procedure TFrmPrincipal.BackupFile1Progress(Sender: TObject;
  Filename: String; Percent: TPercentage; var Continue: Boolean);
begin
with Progressbar1 do
     begin
          visible := Percent < 100;
          if visible then position := Percent;
     end;
end;

procedure TFrmPrincipal.Aniversariantes1Click(Sender: TObject);
begin
try
 FrmAniversariantes:=TFrmAniversariantes.Create(nil);
 FrmAniversariantes.ShowModal;
finally
 FrmAniversariantes.Release;
end;
end;

procedure TFrmPrincipal.BitBtn5Click(Sender: TObject);
begin
try
 FrmAniversariantes:=TFrmAniversariantes.Create(nil);
 FrmAniversariantes.ShowModal;
finally
 FrmAniversariantes.Release;
end;
end;

procedure TFrmPrincipal.Inativos1Click(Sender: TObject);
begin
try
 FrmInativos:=TFrmInativos.Create(nil);
 FrmInativos.ShowModal;
finally
 FrmInativos.Release;
end;
end;

function TFrmPrincipal.TiraMascara(text: string): String;
// Remove mascaras de valores Numericos
var aux:string;
    i:integer;
begin
Aux := '';
for i :=1 to Length(text) do
    begin
    if(copy(text,i,1)<>'.') and (copy(text,i,1)<>'-') and (copy(text,i,1)<>'/')and(copy(text,i,1)<>'\') then
      begin
      Aux := Aux + copy(text,i,1);
      end;
    end;
Result := Aux;
end;

procedure TFrmPrincipal.ConverterJPegParaBmp(Arquivo: string);
var
  JPeg: TJPegImage;
  Bmp: TBitmap;
begin
  JPeg := TJPegImage.Create;
  try
    JPeg.LoadFromFile(Arquivo);
    Bmp := TBitmap.Create;
    try
      Bmp.Assign(JPeg);
      Bmp.SaveToFile(ChangeFileExt(Arquivo, '.bmp'));
    finally
      Bmp.Free;
    end;
  finally
    JPeg.Free;
  end;
end;

procedure TFrmPrincipal.Listagem1Click(Sender: TObject);
begin
try
 FrmListaAlunos:=TFrmListaAlunos.Create(nil);
 FrmListaAlunos.ShowModal;
finally
 FrmListaAlunos.Release;
end;
end;

procedure TFrmPrincipal.Pagamentos1Click(Sender: TObject);
begin
try
 FrmCarne:=TFrmCarne.Create(nil);
 FrmCarne.ShowModal;
finally
 FrmCarne.Release;
end;
end;

procedure TFrmPrincipal.Paise1Click(Sender: TObject);
begin
try
 FrmDadosPais:=TFrmDadosPais.Create(nil);
 FrmDadosPais.ShowModal;
finally
 FrmDadosPais.Release;
end;
end;

function TFrmPrincipal.RemoveZeros(S: string): string;
// Remove os zeros na frente de um valor.
var  I, J : Integer;
begin
I := Length(S);
while (I > 0) and (S[I] <= ' ') do begin
Dec(I); end;
J := 1;
while (J < I) and ((S[J] <= ' ') or (S[J] = '0')) do begin
Inc(J); end;
Result := Copy(S, J, (I-J) + 1);
end;

function TFrmPrincipal.RetZero(ZEROS: string; QUANT: integer): String;
var
I,Tamanho:integer;
aux: string;
begin
  aux:=zeros;
  Tamanho:=length(ZEROS);
  ZEROS:='';
  for I:=1 to quant-tamanho do
  ZEROS:=ZEROS+'0';
  aux:=zeros+aux;
  RetZero:=aux;
end;

procedure TFrmPrincipal.BitBtn6Click(Sender: TObject);
begin
try
 FrmBoletim:=TFrmBoletim.Create(nil);
 FrmBoletim.ShowModal;
finally
 FrmBoletim.Release;
end;
end;

procedure TFrmPrincipal.Disciplinas1Click(Sender: TObject);
begin
try
 FrmDisciplina:=TFrmDisciplina.Create(nil);
 FrmDisciplina.ShowModal;
finally
 FrmDisciplina.Release;
end;
end;

procedure TFrmPrincipal.Matrculas1Click(Sender: TObject);
begin
try
 FrmMatriculas:=TFrmMatriculas.Create(nil);
 FrmMatriculas.ShowModal;
finally
 FrmMatriculas.Release;
end;
end;

procedure TFrmPrincipal.Boletim1Click(Sender: TObject);
begin
try
 FrmBoletim:=TFrmBoletim.Create(nil);
 FrmBoletim.ShowModal;
finally
 FrmBoletim.Release;
end;
end;

procedure TFrmPrincipal.GrficodeMatrculas1Click(Sender: TObject);
begin
try
 FrmGraficoAlunos:=TFrmGraficoAlunos.Create(nil);
 FrmGraficoAlunos.ShowModal;
finally
 FrmGraficoAlunos.Release;
end;
end;

procedure TFrmPrincipal.EfetuarLogOff1Click(Sender: TObject);
begin
FrmPrincipal.WindowState:= wsMinimized;
FrmSenha := TfrmSenha.Create(self);
FrmSenha.ShowModal;
FrmDataGeral:= TFrmDataGeral.Create(self);
FrmDataGeral.ShowModal;
FrmPrincipal.WindowState:= wsMaximized;
end;

procedure TFrmPrincipal.ListagemdeMdias1Click(Sender: TObject);
begin
try
 FrmListaMedias:=TFrmListaMedias.Create(nil);
 FrmListaMedias.ShowModal;
finally
 FrmListaMedias.Release;
end;
end;

procedure TFrmPrincipal.EmissodeCarteiras1Click(Sender: TObject);
begin
try
 FrmCarteiras:=TFrmCarteiras.Create(nil);
 FrmCarteiras.ShowModal;
finally
 FrmCarteiras.Release;
end;
end;

procedure TFrmPrincipal.ReimpressodeCarteira1Click(Sender: TObject);
begin
try
 FrmReempresaoCart:=TFrmReempresaoCart.Create(nil);
 FrmReempresaoCart.ShowModal;
finally
 FrmReempresaoCart.Release;
end;
end;

function TFrmPrincipal.AbreviarNome(Nome: String): String;
var
Nomes: array[1..20] of string;
i, TotalNomes: Integer;
begin
Nome := Trim(Nome);
Result := Nome;
Nome := Nome + #32;
i := Pos(#32, Nome);
if i > 0 then
begin
TotalNomes := 0;
while i > 0 do
begin
Inc(TotalNomes);
Nomes[TotalNomes] := Copy(Nome, 0, i - 0);
Delete(Nome, 1, i);
i := Pos(#32, Nome);
end;
if TotalNomes > 0 then begin for i := 1 to TotalNomes - 1 do begin if Length(Nomes[i]) > 2 then
Nomes[i] := Nomes[i][1] + '.';
End;
Result := '';
for i := 1 to TotalNomes do
Result := Result + Trim(Nomes[i]) + #32;
Result := Trim(Result);
end;
end;
end;

function TFrmPrincipal.AnsiToAscii(str: String): String;
// Remove acentos
var
i: Integer;
begin
  for i := 1 to Length ( str ) do
  case str[i] of
  'á': str[i] := 'a';
  'é': str[i] := 'e';
  'í': str[i] := 'i';
  'ó': str[i] := 'o';
  'ú': str[i] := 'u';
  'à': str[i] := 'a';
  'è': str[i] := 'e';
  'ì': str[i] := 'i';
  'ò': str[i] := 'o';
  'ù': str[i] := 'u';
  'â': str[i] := 'a';
  'ê': str[i] := 'e';
  'î': str[i] := 'i';
  'ô': str[i] := 'o';
  'û': str[i] := 'u';
  'ä': str[i] := 'a';
  'ë': str[i] := 'e';
  'ï': str[i] := 'i';
  'ö': str[i] := 'o';
  'ü': str[i] := 'u';
  'ã': str[i] := 'a';
  'õ': str[i] := 'o';
  'ñ': str[i] := 'n';
  'ç': str[i] := 'c';
  'Á': str[i] := 'A';
  'É': str[i] := 'E';
  'Í': str[i] := 'I';
  'Ó': str[i] := 'O';
  'Ú': str[i] := 'U';
  'À': str[i] := 'A';
  'È': str[i] := 'E';
  'Ì': str[i] := 'I';
  'Ò': str[i] := 'O';
  'Ù': str[i] := 'U';
  'Â': str[i] := 'A';
  'Ê': str[i] := 'E';
  'Î': str[i] := 'I';
  'Ô': str[i] := 'O';
  'Û': str[i] := 'U';
  'Ä': str[i] := 'A';
  'Ë': str[i] := 'E';
  'Ï': str[i] := 'I';
  'Ö': str[i] := 'O';
  'Ü': str[i] := 'U';
  'Ã': str[i] := 'A';
  'Õ': str[i] := 'O';
  'Ñ': str[i] := 'N';
  'Ç': str[i] := 'C';
end;
Result := str;
end;

function TFrmPrincipal.CheckDateFormat(SDate: string): string;
// Converte qualquer caractere separador de datas para o caractere "_"
var
IDateChar:string;
x,y:integer;
begin
IDateChar:='.,\/';
for y:=1 to length(IDateChar) do
    begin
    x:=pos(IDateChar[y],SDate);
    while x > 0 do
          begin
          Delete(SDate,x,1);
          Insert('_',SDate,x);
          x := pos(IDateChar[y],SDate);
          end;
     end;
Result := SDate;
end;

function TFrmPrincipal.EliminaBrancos(sTexto: String): String;
// Elimina todos os espaços em branco da string (inclusive os espaços entre as palavras)
var
nPos : Integer;
begin
//nPos := 1;
while Pos(' ',sTexto) > 0 do
      begin
      nPos := Pos(' ',sTexto);
      //Text[nPos]:= ''; 
      Delete(sTexto,nPos,1);
      end;
Result := sTexto;
end;

procedure TFrmPrincipal.AtadeResultadosFinais1Click(Sender: TObject);
begin
try
 FrmAta:=TFrmAta.Create(nil);
 FrmAta.ShowModal;
finally
 FrmAta.Release;
end;
end;

procedure TFrmPrincipal.Recebimento1Click(Sender: TObject);
begin
try
 FrmRecebimentos:=TFrmRecebimentos.Create(nil);
 FrmRecebimentos.ShowModal;
finally
 FrmRecebimentos.Release;
end;
end;

procedure TFrmPrincipal.Consultapagamento1Click(Sender: TObject);
begin
try
 FrmConsulta:=TFrmConsulta.Create(nil);
 FrmConsulta.ShowModal;
finally
 FrmConsulta.Release;
end;
end;

procedure TFrmPrincipal.RelaodeInadimplncias1Click(Sender: TObject);
begin
try
 FrmDevedores:=TFrmDevedores.Create(nil);
 FrmDevedores.ShowModal;
finally
 FrmDevedores.Release;
end;
end;

procedure TFrmPrincipal.Dirio1Click(Sender: TObject);
begin
try
 FrmDiario:=TFrmDiario.Create(nil);
 FrmDiario.ShowModal;
finally
 FrmDiario.Release;
end;
end;

procedure TFrmPrincipal.DiriodeClasse1Click(Sender: TObject);
begin
try
 FrmCapaDiarios:=TFrmCapaDiarios.Create(nil);
 FrmCapaDiarios.ShowModal;
finally
 FrmCapaDiarios.Release;
end;
end;

procedure TFrmPrincipal.ListagemdeAlunosemRecuperao1Click(Sender: TObject);
begin
try
 FrmListaAlunosRec:=TFrmListaAlunosRec.Create(nil);
 FrmListaAlunosRec.ShowModal;
finally
 FrmListaAlunosRec.Release;
end;
end;

procedure TFrmPrincipal.Histrico1Click(Sender: TObject);
begin
try
 FrmHistorico:=TFrmHistorico.Create(nil);
 FrmHistorico.ShowModal;
finally
 FrmHistorico.Release;
end;
end;

procedure TFrmPrincipal.Certificado1Click(Sender: TObject);
begin
try
 FrmCertificado:=TFrmCertificado.Create(nil);
 FrmCertificado.ShowModal;
finally
 FrmCertificado.Release;
end;
end;

procedure TFrmPrincipal.ListagemdeNotas1Click(Sender: TObject);
begin
try
 FrmFichaNota:=TFrmFichaNota.Create(nil);
 FrmFichaNota.ShowModal;
finally
 FrmFichaNota.Release;
end;
end;

procedure TFrmPrincipal.LimpaTemporarios(
  const ArquivosTemporarios: String);
var I: Integer; 
    SR: TSearchRec;
begin
  I := FindFirst( ArquivosTemporarios+'\QRPD???.TMP', faAnyFile, SR);

  while I <> 0 do
  begin
    if (SR.Attr and faDirectory) <> faDirectory then
    begin
      DeleteFile(ArquivosTemporarios+'\QRPD???.TMP' +  SR.Name);
    end;
    I := FindNext(SR);
  end;
end;

procedure TFrmPrincipal.BarraDeProgresso(IBDSet: TIBDataSet;
  BProgresso: TProgressBar);
  Var
  Cont, Total:Integer;
begin
   IBDSet.Last;
   BProgresso.Position:=0;
   BProgresso.Max:=IBDSet.RecordCount;
   Total:=BProgresso.Max div 15;
   Cont:=0;
   IBDSet.First;
   while not IBDSet.Eof do
      begin
      Inc(Cont);
      if Cont = Total then
         begin
         Cont:=0;
         BProgresso.Position:=BProgresso.Position+Total;
         end;
//... aqui entra seu código ...
      IBDSet.Next;
      end;
end;

procedure TFrmPrincipal.BarraDeProgresso2(CDSet: TClientDataSet;
  BProgresso: TProgressBar);
  Var
  Cont, Total:Integer;
begin
   CDSet.Last;
   BProgresso.Position:=0;
   BProgresso.Max:=CDSet.RecordCount;
   Total:=BProgresso.Max div 15;
   Cont:=0;
   CDSet.First;
   while not CDSet.Eof do
      begin
      Inc(Cont);
      if Cont = Total then
         begin
         Cont:=0;
         BProgresso.Position:=BProgresso.Position+Total;
         end;
//... aqui entra seu código ...
      CDSet.Next;
      end;
end;

end.
