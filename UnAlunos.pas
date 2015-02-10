unit UnAlunos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, Menus, IBQuery, StdCtrls, Buttons, DBCtrls,
  ExtCtrls, Mask, ComCtrls, jpeg, ExtDlgs, ToolEdit, RXDBCtrl;

type
  TFrmAlunos = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    SbExcluir: TBitBtn;
    SbCancelar: TBitBtn;
    SbNovo: TBitBtn;
    SbAnterior: TBitBtn;
    SbProximo: TBitBtn;
    SbAtualiza: TBitBtn;
    SbSalvar: TBitBtn;
    SbFecha: TBitBtn;
    Label7: TLabel;
    Label15: TLabel;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    DataSource1: TDataSource;
    SbLocalizar: TBitBtn;
    Fechar1: TMenuItem;
    IBQuery_Matricula: TIBQuery;
    Panel4: TPanel;
    N1: TMenuItem;
    DadosdoCliente1: TMenuItem;
    DadosdoConjuge1: TMenuItem;
    TabSheet3: TTabSheet;
    DadosFinanceiros1: TMenuItem;
    Panel5: TPanel;
    NovoCadastro1: TMenuItem;
    DBText3: TDBText;
    Label57: TLabel;
    Bevel3: TBevel;
    DBText4: TDBText;
    Label59: TLabel;
    DBText6: TDBText;
    Label61: TLabel;
    Localizar1: TMenuItem;
    DBComboBox8: TDBComboBox;
    TabSheet4: TTabSheet;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Panel10: TPanel;
    Label109: TLabel;
    Image2: TImage;
    Image1: TImage;
    DBText9: TDBText;
    SbInserirFoto: TBitBtn;
    DBComboBox1: TDBComboBox;
    Label3: TLabel;
    DBComboBox2: TDBComboBox;
    Label4: TLabel;
    DBComboBox3: TDBComboBox;
    Label5: TLabel;
    Label6: TLabel;
    DBText7: TDBText;
    DBComboBox4: TDBComboBox;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit3: TDBEdit;
    DBComboBox7: TDBComboBox;
    Label18: TLabel;
    DBEdit4: TDBEdit;
    Label17: TLabel;
    Label10: TLabel;
    DBEdit5: TDBEdit;
    Label11: TLabel;
    DBEdit7: TDBEdit;
    Label13: TLabel;
    DBEdit8: TDBEdit;
    Label14: TLabel;
    DBEdit9: TDBEdit;
    Label16: TLabel;
    DBEdit10: TDBEdit;
    Label19: TLabel;
    DBEdit11: TDBEdit;
    Label20: TLabel;
    DBEdit12: TDBEdit;
    Label21: TLabel;
    DBComboBox6: TDBComboBox;
    Label22: TLabel;
    DBEdit13: TDBEdit;
    Label23: TLabel;
    DBEdit14: TDBEdit;
    Label24: TLabel;
    DBEdit15: TDBEdit;
    Label25: TLabel;
    DBEdit16: TDBEdit;
    DBComboBox9: TDBComboBox;
    Label26: TLabel;
    RButton_PSSim: TRadioButton;
    RButton_PSNao: TRadioButton;
    Label27: TLabel;
    DBMemo_DPSaude: TDBMemo;
    Label28: TLabel;
    DBMemo_RProibido: TDBMemo;
    Label29: TLabel;
    DBMemo_RUtilizado: TDBMemo;
    Label30: TLabel;
    CBox_RProibido: TComboBox;
    CBox_RUtilizado: TComboBox;
    Label31: TLabel;
    DBEdit18: TDBEdit;
    Label32: TLabel;
    DBEdit20: TDBEdit;
    DBComboBox5: TDBComboBox;
    Label38: TLabel;
    DBEdit21: TDBEdit;
    Label33: TLabel;
    DBEdit22: TDBEdit;
    DBEdit26: TDBEdit;
    Label34: TLabel;
    Label39: TLabel;
    DBEdit23: TDBEdit;
    Label35: TLabel;
    Label36: TLabel;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    Label37: TLabel;
    Label40: TLabel;
    DBEdit27: TDBEdit;
    Label41: TLabel;
    DBEdit28: TDBEdit;
    Label42: TLabel;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    Label43: TLabel;
    DBEdit31: TDBEdit;
    Label44: TLabel;
    DBEdit32: TDBEdit;
    Label45: TLabel;
    DBEdit33: TDBEdit;
    Label46: TLabel;
    DBEdit34: TDBEdit;
    Label47: TLabel;
    DBComboBox10: TDBComboBox;
    Label48: TLabel;
    Panel6: TPanel;
    DBText1: TDBText;
    Label49: TLabel;
    Bevel1: TBevel;
    Label50: TLabel;
    DBText2: TDBText;
    Label51: TLabel;
    DBEdit19: TDBEdit;
    DBEdit35: TDBEdit;
    Label52: TLabel;
    DBComboBox11: TDBComboBox;
    Label53: TLabel;
    DBEdit36: TDBEdit;
    Label54: TLabel;
    DBEdit37: TDBEdit;
    Label55: TLabel;
    DBEdit38: TDBEdit;
    Label56: TLabel;
    DBEdit39: TDBEdit;
    Label58: TLabel;
    DBEdit40: TDBEdit;
    Label60: TLabel;
    DBEdit41: TDBEdit;
    Label62: TLabel;
    DBEdit42: TDBEdit;
    Label63: TLabel;
    DBEdit43: TDBEdit;
    Label64: TLabel;
    DBEdit44: TDBEdit;
    Label65: TLabel;
    DBEdit45: TDBEdit;
    Label66: TLabel;
    DBEdit46: TDBEdit;
    Label67: TLabel;
    DBEdit47: TDBEdit;
    Label68: TLabel;
    DBEdit48: TDBEdit;
    Label69: TLabel;
    DBEdit49: TDBEdit;
    Label70: TLabel;
    DBComboBox12: TDBComboBox;
    Label71: TLabel;
    Bevel2: TBevel;
    Label72: TLabel;
    DBText5: TDBText;
    Label73: TLabel;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    Label74: TLabel;
    DBComboBox13: TDBComboBox;
    Label75: TLabel;
    DBEdit52: TDBEdit;
    Label76: TLabel;
    DBEdit53: TDBEdit;
    Label77: TLabel;
    DBEdit54: TDBEdit;
    Label78: TLabel;
    DBEdit55: TDBEdit;
    Label79: TLabel;
    DBEdit56: TDBEdit;
    Label80: TLabel;
    DBEdit57: TDBEdit;
    Label81: TLabel;
    DBEdit58: TDBEdit;
    Label82: TLabel;
    DBEdit59: TDBEdit;
    Label83: TLabel;
    DBEdit60: TDBEdit;
    Label84: TLabel;
    DBEdit61: TDBEdit;
    Label85: TLabel;
    DBEdit62: TDBEdit;
    Label86: TLabel;
    DBEdit63: TDBEdit;
    Label87: TLabel;
    DBEdit64: TDBEdit;
    Label88: TLabel;
    DBEdit65: TDBEdit;
    Label89: TLabel;
    DBComboBox14: TDBComboBox;
    Label90: TLabel;
    Label1: TLabel;
    DBText8: TDBText;
    OpenPictureDialog1: TOpenPictureDialog;
    DadosdoResponsvelFinanceiro1: TMenuItem;
    N2: TMenuItem;
    IBQuery_CEP: TIBQuery;
    IBQuery_CEPCODIGO: TIntegerField;
    IBQuery_CEPNOME_CID: TIBStringField;
    IBQuery_CEPCEP_CID: TIBStringField;
    IBQuery_CEPESTADO: TIBStringField;
    IBQuery_CEPUF: TIBStringField;
    Btn_ApagarImagem: TBitBtn;
    PopupMenu1: TPopupMenu;
    ExcluirImagemdaLogomarca1: TMenuItem;
    SalvarImagemdaLogomarca1: TMenuItem;
    Label_Matricula: TDBText;
    Btn_PaiResp: TBitBtn;
    Btn_MaeResp: TBitBtn;
    Btn_OutroResp: TBitBtn;
    Btn_PAlunResp: TBitBtn;
    DBDateEdit_Alun: TDBDateEdit;
    DBDateEdit_Pai: TDBDateEdit;
    DBDateEdit_Mae: TDBDateEdit;
    DBDateEdit_Resp: TDBDateEdit;
    DBText10: TDBText;
    Label91: TLabel;
    IBQuery_Contador: TIBQuery;
    IBQuery_ContadorCOUNT: TIntegerField;
    Ds_Contador: TDataSource;
    TabSheet5: TTabSheet;
    DBText11: TDBText;
    Label92: TLabel;
    Bevel4: TBevel;
    Panel7: TPanel;
    Bevel5: TBevel;
    DBText12: TDBText;
    Label93: TLabel;
    DBText13: TDBText;
    Label94: TLabel;
    DBComboBox15: TDBComboBox;
    Label12: TLabel;
    DBEdit1: TDBEdit;
    Label95: TLabel;
    DBEdit6: TDBEdit;
    Label96: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure SbNovoClick(Sender: TObject);
    procedure SbSalvarClick(Sender: TObject);
    procedure SbExcluirClick(Sender: TObject);
    procedure SbAtualizaClick(Sender: TObject);
    procedure SbCancelarClick(Sender: TObject);
    procedure SbAnteriorClick(Sender: TObject);
    procedure SbProximoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBComboBox2Exit(Sender: TObject);
    procedure DadosdoCliente1Click(Sender: TObject);
    procedure DadosdoConjuge1Click(Sender: TObject);
    procedure DadosFinanceiros1Click(Sender: TObject);
    procedure SbLocalizarClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure DBMemo_DPSaudeKeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo_RProibidoKeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo_RUtilizadoKeyPress(Sender: TObject; var Key: Char);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure DadosdoResponsvelFinanceiro1Click(Sender: TObject);
    procedure SbInserirFotoClick(Sender: TObject);
    procedure RButton_PSSimClick(Sender: TObject);
    procedure RButton_PSNaoClick(Sender: TObject);
    procedure RButton_PSSimKeyPress(Sender: TObject; var Key: Char);
    procedure RButton_PSNaoKeyPress(Sender: TObject; var Key: Char);
    procedure CBox_RProibidoKeyPress(Sender: TObject; var Key: Char);
    procedure CBox_RUtilizadoKeyPress(Sender: TObject; var Key: Char);
    procedure Btn_ApagarImagemClick(Sender: TObject);
    procedure SalvarImagemdaLogomarca1Click(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit14Exit(Sender: TObject);
    procedure DBEdit32Exit(Sender: TObject);
    procedure DBEdit47Exit(Sender: TObject);
    procedure DBEdit63Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Btn_PaiRespClick(Sender: TObject);
    procedure Btn_MaeRespClick(Sender: TObject);
    procedure Btn_PAlunRespClick(Sender: TObject);
    procedure DBComboBox4Exit(Sender: TObject);
    procedure DBComboBox10Exit(Sender: TObject);
    procedure DBComboBox14Exit(Sender: TObject);
    procedure DBComboBox12Exit(Sender: TObject);
    procedure DBComboBox9Exit(Sender: TObject);
    procedure DBMemo_DPSaudeEnter(Sender: TObject);
    procedure CBox_RProibidoEnter(Sender: TObject);
    procedure DBMemo_RProibidoEnter(Sender: TObject);
    procedure CBox_RUtilizadoEnter(Sender: TObject);
    procedure DBMemo_RUtilizadoEnter(Sender: TObject);
    procedure DBMemo_DPSaudeExit(Sender: TObject);
    procedure CBox_RProibidoExit(Sender: TObject);
    procedure DBMemo_RProibidoExit(Sender: TObject);
    procedure CBox_RUtilizadoExit(Sender: TObject);
    procedure MEdit_DNRespChange(Sender: TObject);
    procedure Btn_OutroRespClick(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure DBEdit29Exit(Sender: TObject);
    procedure DBEdit44Exit(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);
    procedure DBDateEdit_AlunExit(Sender: TObject);
    procedure DBDateEdit_PaiExit(Sender: TObject);
    procedure DBEdit20Enter(Sender: TObject);
    procedure DBDateEdit_MaeExit(Sender: TObject);
    procedure DBEdit35Enter(Sender: TObject);
    procedure DBDateEdit_RespExit(Sender: TObject);
    procedure DBEdit51Enter(Sender: TObject);
    procedure DBComboBox8Click(Sender: TObject);
    procedure DBComboBox8Enter(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBComboBox1Click(Sender: TObject);
    procedure DBComboBox2Click(Sender: TObject);
    procedure DBComboBox3Click(Sender: TObject);
    procedure DBComboBox4Click(Sender: TObject);
    procedure DBComboBox7Click(Sender: TObject);
    procedure DBComboBox15Click(Sender: TObject);
    procedure DBComboBox1Enter(Sender: TObject);
    procedure DBComboBox2Enter(Sender: TObject);
    procedure DBComboBox3Enter(Sender: TObject);
    procedure DBComboBox4Enter(Sender: TObject);
    procedure DBComboBox7Enter(Sender: TObject);
    procedure DBComboBox15Enter(Sender: TObject);
  private
    { Private declarations }
    procedure ProblemaSaude;
    procedure Fotografia;
    function TipoDeBaixa(var Motivo: string): boolean;
  public
    { Public declarations }
    procedure LoadFileToDB(const FilePath: string);
    Function MatriculaDV(const mat: String): String;
  end;

var
  FrmAlunos: TFrmAlunos;
  Matricula, Novo_Cad, Motivo: String;

implementation

uses UnDm, UnLocalizar, UnPrincipal, UnFotos;

{$R *.dfm}

procedure TFrmAlunos.FormShow(Sender: TObject);
begin
FrmAlunos.Top:=39;
FrmAlunos.Left:=0;
IBQuery_Contador.Close;
IBQuery_Contador.Open;
Fotografia;
ProblemaSaude;
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmAlunos.Caption:= FrmAlunos.Caption;
Exit;
end else
FrmAlunos.Caption:= FrmAlunos.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end;

procedure TFrmAlunos.Fechar1Click(Sender: TObject);
begin
Close;
end;

procedure TFrmAlunos.DataSource1StateChange(Sender: TObject);
begin
 SbNovo.Enabled:= DataSource1.State in [dsBrowse];
 NovoCadastro1.Enabled:= DataSource1.State in [dsBrowse];
 SbExcluir.Enabled:= (DataSource1.State in [dsBrowse]) and (Dm.IBDS_ALUNOS.RecordCount > 0);
 ExcluirImagemdaLogomarca1.Enabled:= (DataSource1.State in [dsBrowse]) and (Dm.IBDS_ALUNOS.RecordCount > 0);
 SalvarImagemdaLogomarca1.Enabled:= (DataSource1.State in [dsBrowse]) and (Dm.IBDS_ALUNOS.RecordCount > 0);
 SbAtualiza.Enabled:= (DataSource1.State in [dsBrowse]) and (Dm.IBDS_ALUNOS.RecordCount > 0);
 SbSalvar.Enabled:= DataSource1.State in [dsInsert,dsEdit];
 SbLocalizar.Enabled:= (DataSource1.State in [dsBrowse]) and (Dm.IBDS_ALUNOS.RecordCount > 0);
 Localizar1.Enabled:= (DataSource1.State in [dsBrowse]) and (Dm.IBDS_ALUNOS.RecordCount > 0);
 SbCancelar.Enabled:= DataSource1.State in [dsInsert,dsEdit];
 // SbPrimeiro.Enabled:= (DataSource1.State in [dsBrowse]) and ( NOT Dm.IBDS_ALUNOS.BOF);
 SbAnterior.Enabled:= (DataSource1.State in [dsBrowse]) and ( NOT Dm.IBDS_ALUNOS.BOF);
 SbProximo.Enabled:= (DataSource1.State in [dsBrowse]) and ( NOT Dm.IBDS_ALUNOS.EOF);
 // SbUltimo.Enabled:= (DataSource1.State in [dsBrowse]) and ( NOT Dm.IBDS_ALUNOS.EOF);
end;

procedure TFrmAlunos.SbNovoClick(Sender: TObject);
begin
IBQuery_Matricula.Close;
IBQuery_Matricula.Open;
Novo_Cad:= '1';
PageControl1.ActivePageIndex:= 0;
Dm.IBDS_ALUNOS.Last;
Dm.IBDS_ALUNOS.Append;
Matricula:=Dm.IBDS_ALUNOSCOD_ALUN.asString+AnoLetivo;
Matricula:=FrmPrincipal.RetZero(Matricula, 14);
Matricula:=MatriculaDV(Matricula);
Dm.IBDS_ALUNOS.FieldByName('MATRICULA').asString:= Matricula;
Dm.IBDS_ALUNOS.FieldByName('ANO_LETIVO').AsString:= AnoLetivo;
Dm.IBDS_ALUNOS.FieldByName('DATA_MATRICULA').AsDateTime:=Data;
Dm.IBDS_ALUNOS.FieldByName('DATA_MATRICULA').asString:=FormatDateTime('dd/mm/yyyy',StrtoDate(Dm.IBDS_ALUNOSDATA_MATRICULA.asString));
Dm.IBDS_ALUNOS.FieldByName('SITUACAO_ALUNO').AsString:= 'PRÉ-MATRICULADO';
Fotografia;
ProblemaSaude;
DBEdit2.SetFocus;
end;

procedure TFrmAlunos.SbSalvarClick(Sender: TObject);
begin
IBQuery_Matricula.Close;
IBQuery_Matricula.Open;
if DBEdit2.Text = '' then
begin
ShowMessage('Preencha o campo "'+Label2.Caption+'"');
PageControl1.ActivePageIndex:=0;
DBEdit2.SetFocus;
Exit;
end else
if DBComboBox8.Text = '' then
begin
ShowMessage('Preencha o campo "'+Label15.Caption+'"');
PageControl1.ActivePageIndex:=0;
DBComboBox8.SetFocus;
Exit;
end else
if DBComboBox1.Text = '' then
begin
ShowMessage('Preencha o campo "'+Label3.Caption+'"');
PageControl1.ActivePageIndex:=0;
DBComboBox1.SetFocus;
Exit;
end else
if DBComboBox2.Text = '' then
begin
ShowMessage('Preencha o campo "'+Label4.Caption+'"');
PageControl1.ActivePageIndex:=0;
DBComboBox2.SetFocus;
Exit;
end else
if DBComboBox3.Text = '' then
begin
ShowMessage('Preencha o campo "'+Label5.Caption+'"');
PageControl1.ActivePageIndex:=0;
DBComboBox3.SetFocus;
Exit;
end else
Screen.Cursor := crHourGlass;
if DataSource1.State = dsInsert then
begin
if not IBQuery_Matricula.Locate('MATRICULA', Matricula, []) then
begin
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_ALUNOS.Post;
Dm.IBDS_ALUNOS.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
Screen.Cursor := crDefault;
Fotografia;
ProblemaSaude;
SbNovo.SetFocus;
Exit;
end else
ShowMessage('Não é possível salvar os dados, o número de matrícula: "'+Matricula+'" já está lançado, informe outro.');
PageControl1.ActivePageIndex:=0;
Dm.IBDS_ALUNOS.Edit;
Screen.Cursor := crDefault;
SbCancelar.SetFocus;
Exit;
end else
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_ALUNOS.Post;
Dm.IBDS_ALUNOS.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
Screen.Cursor := crDefault;
Fotografia;
ProblemaSaude;
SbNovo.SetFocus;
end;

procedure TFrmAlunos.SbExcluirClick(Sender: TObject);
begin
if MessageBox(0,'Você tem certeza que deseja excluir este cadastro?'
+#10+#10+'ATENÇÃO: A remoção deste cadastro implicará na exclusão de todas as informações atuais.'
+#10+#10+'"SIM" para excluir.'
+#10+'"Não" para cancelar.','Pergunta',mb_yesno+mb_iconquestion)=6  then
begin
//=====MOVE
Screen.Cursor := crHourGlass;
if Dm.IBDS_INATIVOS.Locate('MATRICULA', Dm.IBDS_ALUNOSMATRICULA.Value, []) and (Dm.IBDS_INATIVOSMATRICULA.Value = Dm.IBDS_ALUNOSMATRICULA.Value) then
begin
Dm.IBDS_INATIVOS.Delete;
Dm.IBDS_INATIVOS.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
DataSource1StateChange(FrmAlunos);
Fotografia;
ProblemaSaude;
end else
Dm.IBDS_INATIVOS.Last;
Dm.IBDS_INATIVOS.Append;
Dm.IBDS_INATIVOS.FieldByName('DATA_MOVIDO').asDateTime:=Data;
Dm.IBDS_INATIVOS.FieldByName('COD_ALUN').AsString:= Dm.IBDS_ALUNOS.FieldByName('COD_ALUN').AsString;
Dm.IBDS_INATIVOS.FieldByName('MATRICULA').AsString:= Dm.IBDS_ALUNOS.FieldByName('MATRICULA').AsString;
Dm.IBDS_INATIVOS.FieldByName('DATA_MATRICULA').AsString:= Dm.IBDS_ALUNOS.FieldByName('DATA_MATRICULA').AsString;
Dm.IBDS_INATIVOS.FieldByName('ANO_LETIVO').AsString:= Dm.IBDS_ALUNOS.FieldByName('ANO_LETIVO').AsString;
Dm.IBDS_INATIVOS.FieldByName('NOME_ALUNO').AsString:= Dm.IBDS_ALUNOS.FieldByName('NOME_ALUNO').AsString;
Dm.IBDS_INATIVOS.FieldByName('FOTO').Value:= Dm.IBDS_ALUNOS.FieldByName('FOTO').Value;
Dm.IBDS_INATIVOS.FieldByName('TURMA').AsString:= Dm.IBDS_ALUNOS.FieldByName('TURMA').AsString;
Dm.IBDS_INATIVOS.FieldByName('TURNO').AsString:= Dm.IBDS_ALUNOS.FieldByName('TURNO').AsString;
Dm.IBDS_INATIVOS.FieldByName('CURSO').AsString:= Dm.IBDS_ALUNOS.FieldByName('CURSO').AsString;
Dm.IBDS_INATIVOS.FieldByName('SERIE').AsString:= Dm.IBDS_ALUNOS.FieldByName('SERIE').AsString;
Dm.IBDS_INATIVOS.FieldByName('SEXO').AsString:= Dm.IBDS_ALUNOS.FieldByName('SEXO').AsString;
Dm.IBDS_INATIVOS.FieldByName('DATA_NASCIMENTO').AsString:= Dm.IBDS_ALUNOS.FieldByName('DATA_NASCIMENTO').AsString;
Dm.IBDS_INATIVOS.FieldByName('NACIONALIDADE').AsString:= Dm.IBDS_ALUNOS.FieldByName('NACIONALIDADE').AsString;
Dm.IBDS_INATIVOS.FieldByName('NATURALIDADE').AsString:= Dm.IBDS_ALUNOS.FieldByName('NATURALIDADE').AsString;
Dm.IBDS_INATIVOS.FieldByName('ESTADO_NATURALIDADE').AsString:= Dm.IBDS_ALUNOS.FieldByName('ESTADO_NATURALIDADE').AsString;
Dm.IBDS_INATIVOS.FieldByName('RELIGIAO').AsString:= Dm.IBDS_ALUNOS.FieldByName('RELIGIAO').AsString;
Dm.IBDS_INATIVOS.FieldByName('TEL_ALUNO').AsString:= Dm.IBDS_ALUNOS.FieldByName('TEL_ALUNO').AsString;
Dm.IBDS_INATIVOS.FieldByName('TEL_CEL_ALUNO').AsString:= Dm.IBDS_ALUNOS.FieldByName('TEL_CEL_ALUNO').AsString;
Dm.IBDS_INATIVOS.FieldByName('ENDERECO').AsString:= Dm.IBDS_ALUNOS.FieldByName('ENDERECO').AsString;
Dm.IBDS_INATIVOS.FieldByName('BAIRRO').AsString:= Dm.IBDS_ALUNOS.FieldByName('BAIRRO').AsString;
Dm.IBDS_INATIVOS.FieldByName('CIDADE').AsString:= Dm.IBDS_ALUNOS.FieldByName('CIDADE').AsString;
Dm.IBDS_INATIVOS.FieldByName('CEP').AsString:= Dm.IBDS_ALUNOS.FieldByName('CEP').AsString;
Dm.IBDS_INATIVOS.FieldByName('ESTADO').AsString:= Dm.IBDS_ALUNOS.FieldByName('ESTADO').AsString;
Dm.IBDS_INATIVOS.FieldByName('UF').AsString:= Dm.IBDS_ALUNOS.FieldByName('UF').AsString;
Dm.IBDS_INATIVOS.FieldByName('ESCOLA_ANTERIOR').AsString:= Dm.IBDS_ALUNOS.FieldByName('ESCOLA_ANTERIOR').AsString;
Dm.IBDS_INATIVOS.FieldByName('CIDADE_ESCO_ANT').AsString:= Dm.IBDS_ALUNOS.FieldByName('CIDADE_ESCO_ANT').AsString;
Dm.IBDS_INATIVOS.FieldByName('TEL_ESCO_ANT').AsString:= Dm.IBDS_ALUNOS.FieldByName('TEL_ESCO_ANT').AsString;
Dm.IBDS_INATIVOS.FieldByName('ESTADO_ESCO_ANT').AsString:= Dm.IBDS_ALUNOS.FieldByName('ESTADO_ESCO_ANT').AsString;
Dm.IBDS_INATIVOS.FieldByName('UF_ESCO_ANT').AsString:= Dm.IBDS_ALUNOS.FieldByName('UF_ESCO_ANT').AsString;
Dm.IBDS_INATIVOS.FieldByName('PROBLEMAS_SAUDE').AsString:= Dm.IBDS_ALUNOS.FieldByName('PROBLEMAS_SAUDE').AsString;
Dm.IBDS_INATIVOS.FieldByName('REMEDIOS_PROIBIDOS').Value:= Dm.IBDS_ALUNOS.FieldByName('REMEDIOS_PROIBIDOS').Value;
Dm.IBDS_INATIVOS.FieldByName('REMEDIOS_UTILIZADOS').Value:= Dm.IBDS_ALUNOS.FieldByName('REMEDIOS_UTILIZADOS').Value;
Dm.IBDS_INATIVOS.FieldByName('NOME_PAI').AsString:= Dm.IBDS_ALUNOS.FieldByName('NOME_PAI').AsString;
Dm.IBDS_INATIVOS.FieldByName('DATA_NASC_PAI').AsString:= Dm.IBDS_ALUNOS.FieldByName('DATA_NASC_PAI').AsString;
Dm.IBDS_INATIVOS.FieldByName('NACIONALIDADE_PAI').AsString:= Dm.IBDS_ALUNOS.FieldByName('NACIONALIDADE_PAI').AsString;
Dm.IBDS_INATIVOS.FieldByName('NATURALIDADE_PAI').AsString:= Dm.IBDS_ALUNOS.FieldByName('NATURALIDADE_PAI').AsString;
Dm.IBDS_INATIVOS.FieldByName('RG_PAI').AsString:= Dm.IBDS_ALUNOS.FieldByName('RG_PAI').AsString;
Dm.IBDS_INATIVOS.FieldByName('CPF_PAI').AsString:= Dm.IBDS_ALUNOS.FieldByName('CPF_PAI').AsString;
Dm.IBDS_INATIVOS.FieldByName('TEL_PAI').AsString:= Dm.IBDS_ALUNOS.FieldByName('TEL_PAI').AsString;
Dm.IBDS_INATIVOS.FieldByName('TEL_TRAB_PAI').AsString:= Dm.IBDS_ALUNOS.FieldByName('TEL_TRAB_PAI').AsString;
Dm.IBDS_INATIVOS.FieldByName('TEL_CEL_PAI').AsString:= Dm.IBDS_ALUNOS.FieldByName('TEL_CEL_PAI').AsString;
Dm.IBDS_INATIVOS.FieldByName('LOCAL_TRAB_PAI').AsString:= Dm.IBDS_ALUNOS.FieldByName('LOCAL_TRAB_PAI').AsString;
Dm.IBDS_INATIVOS.FieldByName('PROFISSAO_PAI').AsString:= Dm.IBDS_ALUNOS.FieldByName('PROFISSAO_PAI').AsString;
Dm.IBDS_INATIVOS.FieldByName('RENDA_PAI').AsString:= Dm.IBDS_ALUNOS.FieldByName('RENDA_PAI').AsString;
Dm.IBDS_INATIVOS.FieldByName('ENDERECO_PAI').AsString:= Dm.IBDS_ALUNOS.FieldByName('ENDERECO_PAI').AsString;
Dm.IBDS_INATIVOS.FieldByName('BAIRRO_PAI').AsString:= Dm.IBDS_ALUNOS.FieldByName('BAIRRO_PAI').AsString;
Dm.IBDS_INATIVOS.FieldByName('CIDADE_PAI').AsString:= Dm.IBDS_ALUNOS.FieldByName('CIDADE_PAI').AsString;
Dm.IBDS_INATIVOS.FieldByName('CEP_PAI').AsString:= Dm.IBDS_ALUNOS.FieldByName('CEP_PAI').AsString;
Dm.IBDS_INATIVOS.FieldByName('ESTADO_PAI').AsString:= Dm.IBDS_ALUNOS.FieldByName('ESTADO_PAI').AsString;
Dm.IBDS_INATIVOS.FieldByName('UF_PAI').AsString:= Dm.IBDS_ALUNOS.FieldByName('UF_PAI').AsString;
Dm.IBDS_INATIVOS.FieldByName('NOME_MAE').AsString:= Dm.IBDS_ALUNOS.FieldByName('NOME_MAE').AsString;
Dm.IBDS_INATIVOS.FieldByName('DATA_NASC_MAE').AsString:= Dm.IBDS_ALUNOS.FieldByName('DATA_NASC_MAE').AsString;
Dm.IBDS_INATIVOS.FieldByName('NACIONALIDADE_MAE').AsString:= Dm.IBDS_ALUNOS.FieldByName('NACIONALIDADE_MAE').AsString;
Dm.IBDS_INATIVOS.FieldByName('NATURALIDADE_MAE').AsString:= Dm.IBDS_ALUNOS.FieldByName('NATURALIDADE_MAE').AsString;
Dm.IBDS_INATIVOS.FieldByName('RG_MAE').AsString:= Dm.IBDS_ALUNOS.FieldByName('RG_MAE').AsString;
Dm.IBDS_INATIVOS.FieldByName('CPF_MAE').AsString:= Dm.IBDS_ALUNOS.FieldByName('CPF_MAE').AsString;
Dm.IBDS_INATIVOS.FieldByName('TEL_MAE').AsString:= Dm.IBDS_ALUNOS.FieldByName('TEL_MAE').AsString;
Dm.IBDS_INATIVOS.FieldByName('TEL_TRAB_MAE').AsString:= Dm.IBDS_ALUNOS.FieldByName('TEL_TRAB_MAE').AsString;
Dm.IBDS_INATIVOS.FieldByName('TEL_CEL_MAE').AsString:= Dm.IBDS_ALUNOS.FieldByName('TEL_CEL_MAE').AsString;
Dm.IBDS_INATIVOS.FieldByName('LOCAL_TRAB_MAE').AsString:= Dm.IBDS_ALUNOS.FieldByName('LOCAL_TRAB_MAE').AsString;
Dm.IBDS_INATIVOS.FieldByName('PROFISSAO_MAE').AsString:= Dm.IBDS_ALUNOS.FieldByName('PROFISSAO_MAE').AsString;
Dm.IBDS_INATIVOS.FieldByName('RENDA_MAE').AsString:= Dm.IBDS_ALUNOS.FieldByName('RENDA_MAE').AsString;
Dm.IBDS_INATIVOS.FieldByName('ENDERECO_MAE').AsString:= Dm.IBDS_ALUNOS.FieldByName('ENDERECO_MAE').AsString;
Dm.IBDS_INATIVOS.FieldByName('BAIRRO_MAE').AsString:= Dm.IBDS_ALUNOS.FieldByName('BAIRRO_MAE').AsString;
Dm.IBDS_INATIVOS.FieldByName('CIDADE_MAE').AsString:= Dm.IBDS_ALUNOS.FieldByName('CIDADE_MAE').AsString;
Dm.IBDS_INATIVOS.FieldByName('CEP_MAE').AsString:= Dm.IBDS_ALUNOS.FieldByName('CEP_MAE').AsString;
Dm.IBDS_INATIVOS.FieldByName('ESTADO_MAE').AsString:= Dm.IBDS_ALUNOS.FieldByName('ESTADO_MAE').AsString;
Dm.IBDS_INATIVOS.FieldByName('UF_MAE').AsString:= Dm.IBDS_ALUNOS.FieldByName('UF_MAE').AsString;
Dm.IBDS_INATIVOS.FieldByName('NOME_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('NOME_RESP').AsString;
Dm.IBDS_INATIVOS.FieldByName('DATA_NASC_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('DATA_NASC_RESP').AsString;
Dm.IBDS_INATIVOS.FieldByName('NACIONALIDADE_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('NACIONALIDADE_RESP').AsString;
Dm.IBDS_INATIVOS.FieldByName('NATURALIDADE_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('NATURALIDADE_RESP').AsString;
Dm.IBDS_INATIVOS.FieldByName('RG_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('RG_RESP').AsString;
Dm.IBDS_INATIVOS.FieldByName('CPF_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('CPF_RESP').AsString;
Dm.IBDS_INATIVOS.FieldByName('TEL_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('TEL_RESP').AsString;
Dm.IBDS_INATIVOS.FieldByName('TEL_TRAB_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('TEL_TRAB_RESP').AsString;
Dm.IBDS_INATIVOS.FieldByName('TEL_CEL_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('TEL_CEL_RESP').AsString;
Dm.IBDS_INATIVOS.FieldByName('LOCAL_TRAB_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('LOCAL_TRAB_RESP').AsString;
Dm.IBDS_INATIVOS.FieldByName('PROFISSAO_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('PROFISSAO_RESP').AsString;
Dm.IBDS_INATIVOS.FieldByName('RENDA_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('RENDA_RESP').AsString;
Dm.IBDS_INATIVOS.FieldByName('ENDERECO_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('ENDERECO_RESP').AsString;
Dm.IBDS_INATIVOS.FieldByName('BAIRRO_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('BAIRRO_RESP').AsString;
Dm.IBDS_INATIVOS.FieldByName('CIDADE_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('CIDADE_RESP').AsString;
Dm.IBDS_INATIVOS.FieldByName('CEP_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('CEP_RESP').AsString;
Dm.IBDS_INATIVOS.FieldByName('ESTADO_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('ESTADO_RESP').AsString;
Dm.IBDS_INATIVOS.FieldByName('UF_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('UF_RESP').AsString;
Dm.IBDS_INATIVOS.FieldByName('DATA_MOVIDO').AsDateTime:= Data;
Dm.IBDS_INATIVOS.FieldByName('MOVIDO_USUARIO').AsString:= Usuario;
Dm.IBDS_INATIVOS.FieldByName('SITUACAO_ALUNO').AsString:= Dm.IBDS_ALUNOS.FieldByName('SITUACAO_ALUNO').AsString;
Screen.Cursor := crDefault;
if TipoDeBaixa(Motivo) then
Dm.IBDS_INATIVOS.FieldByName('RAZAO_MOVIDO').AsString:= Motivo;
if Dm.IBDS_INATIVOS.FieldByName('RAZAO_MOVIDO').AsString = '' then
begin
MessageBox(FrmAlunos.Handle,'Cadastro atual não excluído, porque não foi informado um motivo, tente novamente','Aviso',0+48);
PageControl1.ActivePageIndex:= 0;
Dm.IBDS_ALUNOS.Cancel;
Dm.IBDS_ALUNOS.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
Dm.IBDS_INATIVOS.Cancel;
Dm.IBDS_INATIVOS.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
Fotografia;
ProblemaSaude;
Exit;
end else
//=====salva nos inativos
Screen.Cursor := crHourGlass;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_INATIVOS.Post;
Dm.IBDS_INATIVOS.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
// atualiza inativos
Dm.IBDS_INATIVOS.Append;
Dm.IBDS_INATIVOS.Cancel;
Dm.IBDS_INATIVOS.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
Dm.IBDS_INATIVOS.Refresh;
//=====DELETA
Dm.IBDS_ALUNOS.Delete;
Dm.IBDS_ALUNOS.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
DataSource1StateChange(FrmAlunos);
Screen.Cursor := crDefault;
MessageBox(FrmAlunos.Handle,'O cadastro atual foi movido para: "Inativos".','Aviso',0+48);
Fotografia;
ProblemaSaude;
end;
end;

procedure TFrmAlunos.SbAtualizaClick(Sender: TObject);
begin
Dm.IBDS_ALUNOS.close;
Dm.IBDS_ALUNOS.Open;
Dm.IBDS_ALUNOS.Refresh;
Fotografia;
ProblemaSaude;
end;

procedure TFrmAlunos.SbCancelarClick(Sender: TObject);
begin
if Novo_Cad <> '1' then
begin
if MessageBox(0,'Você tem certeza que deseja cancelar a edição deste cadastro?','Pergunta',mb_yesno+mb_iconquestion)=6  then
begin
Dm.IBDS_ALUNOS.Cancel;
Dm.IBDS_ALUNOS.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
SbNovo.SetFocus;
PageControl1.ActivePageIndex:= 0;
Fotografia;
ProblemaSaude;
Exit;
end;
end else
if MessageBox(0,'Você tem certeza que deseja cancelar a edição deste novo cadastro?','Pergunta',mb_yesno+mb_iconquestion)=6  then
begin
Dm.IBDS_ALUNOS.Cancel;
Dm.IBDS_ALUNOS.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
Novo_Cad:= '';
SbNovo.SetFocus;
PageControl1.ActivePageIndex:= 0;
Fotografia;
ProblemaSaude;
end;
end;

procedure TFrmAlunos.SbAnteriorClick(Sender: TObject);
begin
Dm.IBDS_ALUNOS.Prior;
DataSource1StateChange(FrmAlunos);
Fotografia;
ProblemaSaude;
end;

procedure TFrmAlunos.SbProximoClick(Sender: TObject);
begin
Dm.IBDS_ALUNOS.Next;
DataSource1StateChange(FrmAlunos);
Fotografia;
ProblemaSaude;
end;

procedure TFrmAlunos.FormCreate(Sender: TObject);
begin
Shortdateformat:='dd/mm/yyyy';
end;

procedure TFrmAlunos.DBComboBox2Exit(Sender: TObject);
begin
PageControl1.ActivePageIndex:= 1;
DBEdit36.SetFocus;
end;

procedure TFrmAlunos.DadosdoCliente1Click(Sender: TObject);
begin
PageControl1.ActivePageIndex:= 0;
end;

procedure TFrmAlunos.DadosdoConjuge1Click(Sender: TObject);
begin
PageControl1.ActivePageIndex:= 1;
end;

procedure TFrmAlunos.DadosFinanceiros1Click(Sender: TObject);
begin
PageControl1.ActivePageIndex:= 2;
end;

procedure TFrmAlunos.SbLocalizarClick(Sender: TObject);
begin
try
 FrmLocalizar:=TFrmLocalizar.Create(nil);
 FrmLocalizar.ShowModal;
finally
 FrmLocalizar.Release;
end;
Fotografia;
end;

procedure TFrmAlunos.PageControl1Change(Sender: TObject);
begin
FrmAlunos.KeyPreview:= True;
case PageControl1.TabIndex of
    0: begin

    end;
    1: begin

    end;
    2: begin

    end;
    3: begin
    if (DataSource1.State = dsInsert) or (DataSource1.State = dsEdit) then
    begin
    Btn_PaiResp.Visible:= True;
    Btn_MaeResp.Visible:= True;
    Btn_PAlunResp.Visible:= True;
    Btn_OutroResp.Visible:= True;
    if Dm.IBDS_ALUNOS.FieldByName('CURSO').Value = 'ENSINO FUNDAMENTAL II' then
    begin
    Btn_PAlunResp.Enabled:= True;
    end else
    Btn_PAlunResp.Enabled:= False;
    exit;
    end else
    Btn_PaiResp.Visible:= False;
    Btn_MaeResp.Visible:= False;
    Btn_PAlunResp.Visible:= False;
    Btn_OutroResp.Visible:= False;
    end;
end;
end;

procedure TFrmAlunos.DBMemo_DPSaudeKeyPress(Sender: TObject;
  var Key: Char);
begin
Key:= Upcase(Key);
if ((key = chr(13)) and (DBMemo_DPSaude.Lines.Count = 10)) then key:= chr(27);
if DBMemo_DPSaude.Lines.Count > 10 then
begin
DBMemo_DPSaude.Lines.Delete(10);
key:= chr(0);
end;
end;

procedure TFrmAlunos.DBMemo_RProibidoKeyPress(Sender: TObject;
  var Key: Char);
begin
Key:= Upcase(Key);
if ((key = chr(13)) and (DBMemo_RProibido.Lines.Count = 10)) then key:= chr(27);
if DBMemo_RProibido.Lines.Count > 10 then
begin
DBMemo_RProibido.Lines.Delete(10);
key:= chr(0);
end;
end;

procedure TFrmAlunos.DBMemo_RUtilizadoKeyPress(Sender: TObject;
  var Key: Char);
begin
Key:= Upcase(Key);
if ((key = chr(13)) and (DBMemo_RUtilizado.Lines.Count = 10)) then key:= chr(27);
if DBMemo_RUtilizado.Lines.Count > 10 then
begin
DBMemo_RUtilizado.Lines.Delete(10);
key:= chr(0);
end;
end;

procedure TFrmAlunos.DataSource1DataChange(Sender: TObject; Field: TField);
var
  MS: TMemoryStream;
  J1: TJPEGImage;
begin
  Try{Finall}
    If Dm.IBDS_ALUNOSFOTO.IsNull
      then Image1.Picture.Assign(nil)
      else begin
        J1 := TJPEGImage.Create;
        MS := TMemoryStream.Create;
        try
          Dm.IBDS_ALUNOSFOTO.SaveToStream(MS);
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
if  Dm.IBDS_ALUNOS.FieldByName('FOTO').asString = '' then
begin
Image2.Visible:=True;
end
else
Image2.Visible:=False;
end;

procedure TFrmAlunos.LoadFileToDB(const FilePath: string);
var
 MS: TMemoryStream; J1: TJPEGImage;
begin
  MS := TMemoryStream.Create;
  J1 := TJPEGImage.Create;
    Try{Except}
     {Adquira quadro indiretamente por TImage, stream(flua), e então para DB}
      Image1.Picture.LoadFromFile(FilePath);
     J1.Assign(Image1.Picture);
      J1.SaveToStream(MS);
      Dm.IBDS_ALUNOSFOTO.LoadFromStream(MS);
    Except
      On e:Exception do begin
       ShowMessage
            (e.Message + ^M + 'enquanto tentava carregar '+FilePath);
        With Dm.IBDS_ALUNOS do if not (State in [dsInactive, dsBrowse])
         then
         MessageBox(FrmAlunos.handle,'Houve um erro ao carregar a imagem selecionada. A imagem não será salva no cadastro atual. Tente novamente.','Informação',0+64);
       Abort;
       end;
       end;
    MS.Free;
    J1.Free;
end;

procedure TFrmAlunos.DadosdoResponsvelFinanceiro1Click(Sender: TObject);
begin
PageControl1.ActivePageIndex:= 3;
end;

function TFrmAlunos.MatriculaDV(const mat: String): String;
//Código atualizado e adaptado by: Erivando Ramos - sosinforamos@bol.com.br
var
vvalor, vinicial: String;
v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, vcalc, varl, vres, vpar, vimp: Integer;
begin
Result := mat;
if Result = '' then
begin
showmessage('O valor não pode ser nulo');
Exit;
end
else
vvalor:= Result;
vinicial:= vvalor;
varl:= (length(vvalor));
if varl < 14 then
begin
showmessage('O valor deve conter 14 dígitos');
Result:= '';
Exit;
end
else
begin
v1:= StrToInt(Copy(vvalor,1,1));
v2:= StrToInt(Copy(vvalor,2,1));
v3:= StrToInt(Copy(vvalor,3,1));
v4:= StrToInt(Copy(vvalor,4,1));
v5:= StrToInt(Copy(vvalor,5,1));
v6:= StrToInt(Copy(vvalor,6,1));
v7:= StrToInt(Copy(vvalor,7,1));
v8:= StrToInt(Copy(vvalor,8,1));
v9:= StrToInt(Copy(vvalor,9,1));
v10:= StrToInt(Copy(vvalor,10,1));
v11:= StrToInt(Copy(vvalor,11,1));
v12:= StrToInt(Copy(vvalor,12,1));
v13:= StrToInt(Copy(vvalor,13,1));
v14:= StrToInt(Copy(vvalor,14,1));
vimp:= v1+v3+v5+v7+v9+v11+v13;
vpar:= (v2+v4+v6+v8+v10+v12+v14)*3;
vcalc:= (vimp)+(vpar);
vres:= 100000000-vcalc;
vvalor:= IntToStr(vres);
vres:= StrToInt(Copy(vvalor,8,1));
Result:= vinicial+'-'+IntToStr(vres);
end;
end;

procedure TFrmAlunos.SbInserirFotoClick(Sender: TObject);
begin
try
 FrmFotos:=TFrmFotos.Create(nil);
 FrmFotos.ShowModal;
finally
 FrmFotos.Release;
end;
Fotografia;
end;

procedure TFrmAlunos.ProblemaSaude;
begin
if Label_Matricula.Caption <> '' then
begin
if (Dm.IBDS_ALUNOSPROBLEMAS_SAUDE.Value <> '') or (Dm.IBDS_ALUNOSREMEDIOS_PROIBIDOS.Value <> '') or (Dm.IBDS_ALUNOSREMEDIOS_UTILIZADOS.Value <> '') then
begin
RButton_PSSim.Checked:= True;
end else
RButton_PSNao.Checked:= True;
CBox_RUtilizado.Enabled:= True;
if RButton_PSSim.Checked = True then
begin
DBMemo_DPSaude.Enabled:= True;
end else
DBMemo_DPSaude.Enabled:= False;
if CBox_RProibido.Text = '' then
begin
DBMemo_RProibido.Enabled:= False;
CBox_RProibido.Text:= '';
end else
DBMemo_RProibido.Enabled:= True;
if CBox_RUtilizado.Text = '' then
begin
DBMemo_RUtilizado.Enabled:= False;
CBox_RUtilizado.Text:= '';
end else
DBMemo_RUtilizado.Enabled:= True;
Exit;
end else
RButton_PSSim.Checked:= False;
RButton_PSNao.Checked:= False;
end;

procedure TFrmAlunos.RButton_PSSimClick(Sender: TObject);
begin
DBMemo_DPSaude.Enabled:= True;
CBox_RProibido.Enabled:= True;
CBox_RUtilizado.Enabled:= True;
CBox_RUtilizado.Text:= 'UTILIZADO(S)';
CBox_RProibido.Text:= 'PROIBIDO(S)';
end;

procedure TFrmAlunos.RButton_PSNaoClick(Sender: TObject);
begin
CBox_RProibido.Text:= '';
DBMemo_DPSaude.Text:= '';
DBMemo_RProibido.Text:= '';
DBMemo_RUtilizado.Text:= '';
DBMemo_DPSaude.Enabled:= False;
CBox_RProibido.Enabled:= False;
CBox_RUtilizado.Enabled:= True;
end;

procedure TFrmAlunos.RButton_PSSimKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
 begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
Dm.IBDS_ALUNOS.Edit;
DBMemo_DPSaude.SetFocus;
end;
end;

procedure TFrmAlunos.RButton_PSNaoKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
 begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
Dm.IBDS_ALUNOS.Edit;
CBox_RUtilizado.Enabled:= True;
CBox_RUtilizado.Text:= 'UTILIZADO(S)';
CBox_RUtilizado.SetFocus;
end;
end;

procedure TFrmAlunos.CBox_RProibidoKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then
 begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
  Dm.IBDS_ALUNOS.Edit;
if (CBox_RProibido.Text = 'AAS') or (CBox_RProibido.Text = 'PARACETAMOL') or
   (CBox_RProibido.Text = 'TYLENOL') or (CBox_RProibido.Text = 'DIPIRONA') or
   (CBox_RProibido.Text = 'LUFTAL') then
begin
DBMemo_RProibido.Enabled:= True;
CBox_RProibido.SetFocus;
DBMemo_RProibido.Lines.Add(CBox_RProibido.Text);
end else
if CBox_RProibido.Text = 'OUTROS' then
begin
DBMemo_RProibido.SetFocus;
end;
end;
end;

procedure TFrmAlunos.CBox_RUtilizadoKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then
 begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
Dm.IBDS_ALUNOS.Edit;
if (CBox_RUtilizado.Text = 'AAS') or (CBox_RUtilizado.Text = 'PARACETAMOL') or
   (CBox_RUtilizado.Text = 'TYLENOL') or (CBox_RUtilizado.Text = 'DIPIRONA') or
   (CBox_RUtilizado.Text = 'LUFTAL') then
begin
DBMemo_RUtilizado.Enabled:= True;
CBox_RUtilizado.SetFocus;
DBMemo_RUtilizado.Lines.Add(CBox_RUtilizado.Text);
end else
if CBox_RUtilizado.Text = 'OUTROS' then
begin
DBMemo_RUtilizado.SetFocus;
end;
end;
end;

procedure TFrmAlunos.Btn_ApagarImagemClick(Sender: TObject);
begin
Dm.IBDS_ALUNOS.Edit;
Dm.IBDS_ALUNOS.FieldByName('FOTO').Clear;
Image1.Picture.Graphic:= nil;
Image2.Visible:=True;
If Not(DM.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_ALUNOS.Post;
Dm.IBDS_ALUNOS.ApplyUpdates;
DM.IBTransaction.CommitRetaining;
Fotografia;
end;

procedure TFrmAlunos.SalvarImagemdaLogomarca1Click(Sender: TObject);
begin
OpenPictureDialog1.FileName:= Label_Matricula.Caption+'.jpg';
 if OpenPictureDialog1.Execute then
Image1.Picture.SaveToFile(OpenPictureDialog1.FileName);
end;

procedure TFrmAlunos.DBEdit10Exit(Sender: TObject);
var
a, b, c: String;
begin
Dm.IBDS_ALUNOS.Edit;
if DBEdit10.Text = '' then
begin
DBEdit11.Text:= '';
DBEdit12.Text:= '';
Dm.IBDS_ALUNOS.FieldByName('UF').asString:= '';
Exit;
end else
IBQuery_CEP.SQL.Clear;
a:='Select * from CEPS ';
b:='Where NOME_CID Like:Consulta ';
c:='Order By NOME_CID';
IBQuery_CEP.SQL.Add(a+b+c);
IBQuery_CEP.Params[0].AsString;
IBQuery_CEP.ParamByName('Consulta').AsString:=DBEdit10.Text+'%';
IBQuery_CEP.Close;
IBQuery_CEP.Open;
Dm.IBDS_ALUNOS.FieldByName('CEP').asString:= IBQuery_CEPCEP_CID.AsString;
Dm.IBDS_ALUNOS.FieldByName('ESTADO').asString:= IBQuery_CEPESTADO.AsString;
Dm.IBDS_ALUNOS.FieldByName('UF').asString:= IBQuery_CEPUF.AsString;
end;

procedure TFrmAlunos.DBEdit14Exit(Sender: TObject);
var
a, b, c: String;
begin
Dm.IBDS_ALUNOS.Edit;
if DBEdit14.Text = '' then
begin
DBEdit16.Text:= '';
Dm.IBDS_ALUNOS.FieldByName('UF_ESCO_ANT').asString:='';
Exit;
end else
IBQuery_CEP.SQL.Clear;
a:='Select * from CEPS ';
b:='Where NOME_CID Like:Consulta ';
c:='Order By NOME_CID';
IBQuery_CEP.SQL.Add(a+b+c);
IBQuery_CEP.Params[0].AsString;
IBQuery_CEP.ParamByName('Consulta').AsString:=DBEdit14.Text+'%';
IBQuery_CEP.Close;
IBQuery_CEP.Open;
Dm.IBDS_ALUNOS.FieldByName('ESTADO_ESCO_ANT').asString:= IBQuery_CEPESTADO.AsString;
Dm.IBDS_ALUNOS.FieldByName('UF_ESCO_ANT').asString:= IBQuery_CEPUF.AsString;
end;

procedure TFrmAlunos.DBEdit32Exit(Sender: TObject);
var
a, b, c: String;
begin
Dm.IBDS_ALUNOS.Edit;
if DBEdit32.Text = '' then
begin
DBEdit33.Text:= '';
DBEdit34.Text:= '';
Dm.IBDS_ALUNOS.FieldByName('UF_PAI').asString:= '';
Exit;
end else
IBQuery_CEP.SQL.Clear;
a:='Select * from CEPS ';
b:='Where NOME_CID Like:Consulta ';
c:='Order By NOME_CID';
IBQuery_CEP.SQL.Add(a+b+c);
IBQuery_CEP.Params[0].AsString;
IBQuery_CEP.ParamByName('Consulta').AsString:=DBEdit32.Text+'%';
IBQuery_CEP.Close;
IBQuery_CEP.Open;
Dm.IBDS_ALUNOS.FieldByName('CEP_PAI').asString:= IBQuery_CEPCEP_CID.AsString;
Dm.IBDS_ALUNOS.FieldByName('ESTADO_PAI').asString:= IBQuery_CEPESTADO.AsString;
Dm.IBDS_ALUNOS.FieldByName('UF_PAI').asString:= IBQuery_CEPUF.AsString;
end;

procedure TFrmAlunos.DBEdit47Exit(Sender: TObject);
var
a, b, c: String;
begin
Dm.IBDS_ALUNOS.Edit;
if DBEdit47.Text = '' then
begin
DBEdit48.Text:= '';
DBEdit49.Text:= '';
Dm.IBDS_ALUNOS.FieldByName('UF_MAE').asString:= '';
Exit;
end else
IBQuery_CEP.SQL.Clear;
a:='Select * from CEPS ';
b:='Where NOME_CID Like:Consulta ';
c:='Order By NOME_CID';
IBQuery_CEP.SQL.Add(a+b+c);
IBQuery_CEP.Params[0].AsString;
IBQuery_CEP.ParamByName('Consulta').AsString:=DBEdit47.Text+'%';
IBQuery_CEP.Close;
IBQuery_CEP.Open;
Dm.IBDS_ALUNOS.FieldByName('CEP_MAE').asString:= IBQuery_CEPCEP_CID.AsString;
Dm.IBDS_ALUNOS.FieldByName('ESTADO_MAE').asString:= IBQuery_CEPESTADO.AsString;
Dm.IBDS_ALUNOS.FieldByName('UF_MAE').asString:= IBQuery_CEPUF.AsString;
end;

procedure TFrmAlunos.DBEdit63Exit(Sender: TObject);
var
a, b, c: String;
begin
Dm.IBDS_ALUNOS.Edit;
if DBEdit63.Text = '' then
begin
DBEdit64.Text:= '';
DBEdit65.Text:= '';
Dm.IBDS_ALUNOS.FieldByName('UF_RESP').asString:= '';
Exit;
end else
IBQuery_CEP.SQL.Clear;
a:='Select * from CEPS ';
b:='Where NOME_CID Like:Consulta ';
c:='Order By NOME_CID';
IBQuery_CEP.SQL.Add(a+b+c);
IBQuery_CEP.Params[0].AsString;
IBQuery_CEP.ParamByName('Consulta').AsString:=DBEdit63.Text+'%';
IBQuery_CEP.Close;
IBQuery_CEP.Open;
Dm.IBDS_ALUNOS.FieldByName('CEP_RESP').asString:= IBQuery_CEPCEP_CID.AsString;
Dm.IBDS_ALUNOS.FieldByName('ESTADO_RESP').asString:= IBQuery_CEPESTADO.AsString;
Dm.IBDS_ALUNOS.FieldByName('UF_RESP').asString:= IBQuery_CEPUF.AsString;
end;

procedure TFrmAlunos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and not (ActiveControl is TMemo) then begin
// desabilita processamento posterior da tecla
  Key := #0;
  Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFrmAlunos.Btn_PaiRespClick(Sender: TObject);
begin
Dm.IBDS_ALUNOS.FieldByName('NOME_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('NOME_PAI').AsString;
Dm.IBDS_ALUNOS.FieldByName('DATA_NASC_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('DATA_NASC_PAI').AsString;
Dm.IBDS_ALUNOS.FieldByName('NACIONALIDADE_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('NACIONALIDADE_PAI').AsString;
Dm.IBDS_ALUNOS.FieldByName('NATURALIDADE_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('NATURALIDADE_PAI').AsString;
Dm.IBDS_ALUNOS.FieldByName('RG_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('RG_PAI').AsString;
Dm.IBDS_ALUNOS.FieldByName('CPF_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('CPF_PAI').AsString;
Dm.IBDS_ALUNOS.FieldByName('TEL_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('TEL_PAI').AsString;
Dm.IBDS_ALUNOS.FieldByName('TEL_TRAB_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('TEL_TRAB_PAI').AsString;
Dm.IBDS_ALUNOS.FieldByName('TEL_CEL_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('TEL_CEL_PAI').AsString;
Dm.IBDS_ALUNOS.FieldByName('LOCAL_TRAB_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('LOCAL_TRAB_PAI').AsString;
Dm.IBDS_ALUNOS.FieldByName('PROFISSAO_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('PROFISSAO_PAI').AsString;
Dm.IBDS_ALUNOS.FieldByName('RENDA_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('RENDA_PAI').AsString;
Dm.IBDS_ALUNOS.FieldByName('ENDERECO_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('ENDERECO_PAI').AsString;
Dm.IBDS_ALUNOS.FieldByName('BAIRRO_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('BAIRRO_PAI').AsString;
Dm.IBDS_ALUNOS.FieldByName('CIDADE_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('CIDADE_PAI').AsString;
Dm.IBDS_ALUNOS.FieldByName('CEP_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('CEP_PAI').AsString;
Dm.IBDS_ALUNOS.FieldByName('ESTADO_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('ESTADO_PAI').AsString;
Dm.IBDS_ALUNOS.FieldByName('UF_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('UF_PAI').AsString;
SbSalvar.SetFocus;
end;

procedure TFrmAlunos.Btn_MaeRespClick(Sender: TObject);
begin
Dm.IBDS_ALUNOS.FieldByName('NOME_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('NOME_MAE').AsString;
Dm.IBDS_ALUNOS.FieldByName('DATA_NASC_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('DATA_NASC_MAE').AsString;
Dm.IBDS_ALUNOS.FieldByName('NACIONALIDADE_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('NACIONALIDADE_MAE').AsString;
Dm.IBDS_ALUNOS.FieldByName('NATURALIDADE_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('NATURALIDADE_MAE').AsString;
Dm.IBDS_ALUNOS.FieldByName('RG_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('RG_MAE').AsString;
Dm.IBDS_ALUNOS.FieldByName('CPF_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('CPF_MAE').AsString;
Dm.IBDS_ALUNOS.FieldByName('TEL_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('TEL_MAE').AsString;
Dm.IBDS_ALUNOS.FieldByName('TEL_TRAB_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('TEL_TRAB_MAE').AsString;
Dm.IBDS_ALUNOS.FieldByName('TEL_CEL_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('TEL_CEL_MAE').AsString;
Dm.IBDS_ALUNOS.FieldByName('LOCAL_TRAB_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('LOCAL_TRAB_MAE').AsString;
Dm.IBDS_ALUNOS.FieldByName('PROFISSAO_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('PROFISSAO_MAE').AsString;
Dm.IBDS_ALUNOS.FieldByName('RENDA_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('RENDA_MAE').AsString;
Dm.IBDS_ALUNOS.FieldByName('ENDERECO_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('ENDERECO_MAE').AsString;
Dm.IBDS_ALUNOS.FieldByName('BAIRRO_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('BAIRRO_MAE').AsString;
Dm.IBDS_ALUNOS.FieldByName('CIDADE_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('CIDADE_MAE').AsString;
Dm.IBDS_ALUNOS.FieldByName('CEP_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('CEP_MAE').AsString;
Dm.IBDS_ALUNOS.FieldByName('ESTADO_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('ESTADO_MAE').AsString;
Dm.IBDS_ALUNOS.FieldByName('UF_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('UF_MAE').AsString;
SbSalvar.SetFocus;
end;

procedure TFrmAlunos.Btn_PAlunRespClick(Sender: TObject);
begin
Dm.IBDS_ALUNOS.FieldByName('NOME_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('NOME_ALUNO').AsString;
Dm.IBDS_ALUNOS.FieldByName('DATA_NASC_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('DATA_NASCIMENTO').AsString;
Dm.IBDS_ALUNOS.FieldByName('NACIONALIDADE_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('NACIONALIDADE').AsString;
Dm.IBDS_ALUNOS.FieldByName('NATURALIDADE_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('NATURALIDADE').AsString;
//Dm.IBDS_ALUNOS.FieldByName('RG_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('RG_PAI').AsString;
//Dm.IBDS_ALUNOS.FieldByName('CPF_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('CPF_PAI').AsString;
Dm.IBDS_ALUNOS.FieldByName('TEL_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('TEL_ALUNO').AsString;
//Dm.IBDS_ALUNOS.FieldByName('TEL_TRAB_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('TEL_TRAB_PAI').AsString;
Dm.IBDS_ALUNOS.FieldByName('TEL_CEL_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('TEL_CEL_ALUNO').AsString;
//Dm.IBDS_ALUNOS.FieldByName('LOCAL_TRAB_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('LOCAL_TRAB_PAI').AsString;
//Dm.IBDS_ALUNOS.FieldByName('PROFISSAO_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('PROFISSAO_PAI').AsString;
//Dm.IBDS_ALUNOS.FieldByName('RENDA_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('RENDA_PAI').AsString;
Dm.IBDS_ALUNOS.FieldByName('ENDERECO_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('ENDERECO').AsString;
Dm.IBDS_ALUNOS.FieldByName('BAIRRO_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('BAIRRO').AsString;
Dm.IBDS_ALUNOS.FieldByName('CIDADE_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('CIDADE').AsString;
Dm.IBDS_ALUNOS.FieldByName('CEP_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('CEP').AsString;
Dm.IBDS_ALUNOS.FieldByName('ESTADO_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('ESTADO').AsString;
Dm.IBDS_ALUNOS.FieldByName('UF_RESP').AsString:= Dm.IBDS_ALUNOS.FieldByName('UF').AsString;
DBEdit53.SetFocus;
end;

procedure TFrmAlunos.DBComboBox4Exit(Sender: TObject);
begin
if DataSource1.State =  dsInsert then
begin
DBEdit3.SetFocus;
end;
end;

procedure TFrmAlunos.DBComboBox10Exit(Sender: TObject);
begin
PageControl1.ActivePageIndex:= 2;
DBEdit19.SetFocus;
end;

procedure TFrmAlunos.DBComboBox14Exit(Sender: TObject);
begin
PageControl1.ActivePageIndex:= 0;
DBEdit2.SetFocus;
end;

procedure TFrmAlunos.DBComboBox12Exit(Sender: TObject);
begin
PageControl1.ActivePageIndex:= 3;
if DataSource1.State = dsInsert then
begin
Btn_PaiResp.SetFocus;
Exit;
end else
DBEdit50.SetFocus;
end;

procedure TFrmAlunos.DBComboBox9Exit(Sender: TObject);
begin
FrmAlunos.KeyPreview:= False;
RButton_PSSim.SetFocus;
end;

procedure TFrmAlunos.DBMemo_DPSaudeEnter(Sender: TObject);
begin
FrmAlunos.KeyPreview:= False;
end;

procedure TFrmAlunos.CBox_RProibidoEnter(Sender: TObject);
begin
FrmAlunos.KeyPreview:= False;
end;

procedure TFrmAlunos.DBMemo_RProibidoEnter(Sender: TObject);
begin
FrmAlunos.KeyPreview:= False;
end;

procedure TFrmAlunos.CBox_RUtilizadoEnter(Sender: TObject);
begin
FrmAlunos.KeyPreview:= False;
end;

procedure TFrmAlunos.DBMemo_RUtilizadoEnter(Sender: TObject);
begin
FrmAlunos.KeyPreview:= False;
end;

procedure TFrmAlunos.DBMemo_DPSaudeExit(Sender: TObject);
begin
FrmAlunos.KeyPreview:= True;
end;

procedure TFrmAlunos.CBox_RProibidoExit(Sender: TObject);
begin
FrmAlunos.KeyPreview:= True;
end;

procedure TFrmAlunos.DBMemo_RProibidoExit(Sender: TObject);
begin
FrmAlunos.KeyPreview:= True;
end;

procedure TFrmAlunos.CBox_RUtilizadoExit(Sender: TObject);
begin
FrmAlunos.KeyPreview:= True;
end;

procedure TFrmAlunos.MEdit_DNRespChange(Sender: TObject);
begin
Dm.IBDS_ALUNOS.Edit;
end;

procedure TFrmAlunos.Fotografia;
begin
if Dm.IBDS_ALUNOS.FieldByName('FOTO').Value = '' then
begin
SbInserirFoto.Caption:= '&Imagem';
end else
SbInserirFoto.Caption:= 'Alte&rar';
if SbInserirFoto.Caption = 'Alte&rar' then
begin
Btn_ApagarImagem.Enabled:= True;
end else
Btn_ApagarImagem.Enabled:= False;
end;

procedure TFrmAlunos.Btn_OutroRespClick(Sender: TObject);
begin
Dm.IBDS_ALUNOS.FieldByName('NOME_RESP').AsString:= '';
Dm.IBDS_ALUNOS.FieldByName('DATA_NASC_RESP').AsString:= '';
Dm.IBDS_ALUNOS.FieldByName('NACIONALIDADE_RESP').AsString:= '';
Dm.IBDS_ALUNOS.FieldByName('NATURALIDADE_RESP').AsString:= '';
Dm.IBDS_ALUNOS.FieldByName('RG_RESP').AsString:= '';
Dm.IBDS_ALUNOS.FieldByName('CPF_RESP').AsString:= '';
Dm.IBDS_ALUNOS.FieldByName('TEL_RESP').AsString:= '';
Dm.IBDS_ALUNOS.FieldByName('TEL_TRAB_RESP').AsString:= '';
Dm.IBDS_ALUNOS.FieldByName('TEL_CEL_RESP').AsString:= '';
Dm.IBDS_ALUNOS.FieldByName('LOCAL_TRAB_RESP').AsString:= '';
Dm.IBDS_ALUNOS.FieldByName('PROFISSAO_RESP').AsString:= '';
Dm.IBDS_ALUNOS.FieldByName('RENDA_RESP').AsString:= '';
Dm.IBDS_ALUNOS.FieldByName('ENDERECO_RESP').AsString:= '';
Dm.IBDS_ALUNOS.FieldByName('BAIRRO_RESP').AsString:= '';
Dm.IBDS_ALUNOS.FieldByName('CIDADE_RESP').AsString:= '';
Dm.IBDS_ALUNOS.FieldByName('CEP_RESP').AsString:= '';
Dm.IBDS_ALUNOS.FieldByName('ESTADO_RESP').AsString:= '';
Dm.IBDS_ALUNOS.FieldByName('UF_RESP').AsString:= '';
DBEdit50.SetFocus;
end;

procedure TFrmAlunos.DBEdit9Exit(Sender: TObject);
begin
if DataSource1.State = dsInsert then
begin
Dm.IBDS_ALUNOS.FieldByName('CIDADE').asString:= Dm.IBDS_EMPRESA.FieldByName('CIDADE').asString;
end;
end;

procedure TFrmAlunos.DBEdit29Exit(Sender: TObject);
begin
if DataSource1.State = dsInsert then
begin
Dm.IBDS_ALUNOS.FieldByName('ENDERECO_PAI').asString:= Dm.IBDS_ALUNOS.FieldByName('ENDERECO').asString;
Dm.IBDS_ALUNOS.FieldByName('BAIRRO_PAI').asString:= Dm.IBDS_ALUNOS.FieldByName('BAIRRO').asString;
Dm.IBDS_ALUNOS.FieldByName('CIDADE_PAI').asString:= Dm.IBDS_ALUNOS.FieldByName('CIDADE').asString;
end;
end;

procedure TFrmAlunos.DBEdit44Exit(Sender: TObject);
begin
if DataSource1.State = dsInsert then
begin
Dm.IBDS_ALUNOS.FieldByName('ENDERECO_MAE').asString:= Dm.IBDS_ALUNOS.FieldByName('ENDERECO_PAI').asString;
Dm.IBDS_ALUNOS.FieldByName('BAIRRO_MAE').asString:= Dm.IBDS_ALUNOS.FieldByName('BAIRRO_PAI').asString;
Dm.IBDS_ALUNOS.FieldByName('CIDADE_MAE').asString:= Dm.IBDS_ALUNOS.FieldByName('CIDADE_PAI').asString;
end;
end;

procedure TFrmAlunos.DBEdit3Enter(Sender: TObject);
begin
DBDateEdit_Alun.Visible:= True;
DBDateEdit_Alun.TabOrder:= 6;
DBEdit3.TabOrder:= 30;
DBDateEdit_Alun.SetFocus;
end;

procedure TFrmAlunos.DBDateEdit_AlunExit(Sender: TObject);
begin
DBDateEdit_Alun.Visible:= False;
DBDateEdit_Alun.TabOrder:= 30;
DBEdit3.TabOrder:= 6;
end;

procedure TFrmAlunos.DBDateEdit_PaiExit(Sender: TObject);
begin
DBDateEdit_Pai.Visible:= False;
DBDateEdit_Pai.TabOrder:= 18;
DBEdit20.TabOrder:= 1;
end;

procedure TFrmAlunos.DBEdit20Enter(Sender: TObject);
begin
DBDateEdit_Pai.Visible:= True;
DBDateEdit_Pai.TabOrder:= 1;
DBEdit20.TabOrder:= 18;
DBDateEdit_Pai.SetFocus;
end;

procedure TFrmAlunos.DBDateEdit_MaeExit(Sender: TObject);
begin
DBDateEdit_Mae.Visible:= False;
DBDateEdit_Mae.TabOrder:= 18;
DBEdit35.TabOrder:= 1;
end;

procedure TFrmAlunos.DBEdit35Enter(Sender: TObject);
begin
DBDateEdit_Mae.Visible:= True;
DBDateEdit_Mae.TabOrder:= 1;
DBEdit35.TabOrder:= 18;
DBDateEdit_Mae.SetFocus;
end;

procedure TFrmAlunos.DBDateEdit_RespExit(Sender: TObject);
begin
DBDateEdit_Resp.Visible:= False;
DBDateEdit_Resp.TabOrder:= 22;
DBEdit51.TabOrder:= 5;
end;

procedure TFrmAlunos.DBEdit51Enter(Sender: TObject);
begin
DBDateEdit_Resp.Visible:= True;
DBDateEdit_Resp.TabOrder:= 5;
DBEdit51.TabOrder:= 22;
DBDateEdit_Resp.SetFocus;
end;

procedure TFrmAlunos.DBComboBox8Click(Sender: TObject);
begin
Dm.IBDS_ALUNOS.Edit;
Dm.IBDS_ALUNOS.FieldByName('TURNO').AsString:= DBComboBox8.Text;
end;

procedure TFrmAlunos.DBComboBox8Enter(Sender: TObject);
begin
Dm.IBDS_ALUNOS.Edit;
end;

procedure TFrmAlunos.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if (DataSource1.State = dsInsert) or (DataSource1.State = dsEdit) then
begin
Dm.IBDS_ALUNOS.Cancel;
Dm.IBDS_ALUNOS.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
end;
end;

procedure TFrmAlunos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
IBQuery_Contador.Close;
Action:=Cafree;
end;

procedure TFrmAlunos.DBComboBox1Click(Sender: TObject);
begin
Dm.IBDS_ALUNOS.Edit;
Dm.IBDS_ALUNOS.FieldByName('CURSO').AsString:= DBComboBox1.Text;
end;

procedure TFrmAlunos.DBComboBox2Click(Sender: TObject);
begin
Dm.IBDS_ALUNOS.Edit;
Dm.IBDS_ALUNOS.FieldByName('SERIE').AsString:= DBComboBox2.Text;
end;

procedure TFrmAlunos.DBComboBox3Click(Sender: TObject);
begin
Dm.IBDS_ALUNOS.Edit;
Dm.IBDS_ALUNOS.FieldByName('TURMA').AsString:= DBComboBox3.Text;
end;

procedure TFrmAlunos.DBComboBox4Click(Sender: TObject);
begin
Dm.IBDS_ALUNOS.Edit;
Dm.IBDS_ALUNOS.FieldByName('SEXO').AsString:= DBComboBox4.Text;
end;

procedure TFrmAlunos.DBComboBox7Click(Sender: TObject);
begin
Dm.IBDS_ALUNOS.Edit;
Dm.IBDS_ALUNOS.FieldByName('NACIONALIDADE').AsString:= DBComboBox7.Text;
end;

procedure TFrmAlunos.DBComboBox15Click(Sender: TObject);
begin
Dm.IBDS_ALUNOS.Edit;
Dm.IBDS_ALUNOS.FieldByName('RELIGIAO').AsString:= DBComboBox15.Text;
end;

procedure TFrmAlunos.DBComboBox1Enter(Sender: TObject);
begin
Dm.IBDS_ALUNOS.Edit;
end;

procedure TFrmAlunos.DBComboBox2Enter(Sender: TObject);
begin
Dm.IBDS_ALUNOS.Edit;
end;

procedure TFrmAlunos.DBComboBox3Enter(Sender: TObject);
begin
Dm.IBDS_ALUNOS.Edit;
end;

procedure TFrmAlunos.DBComboBox4Enter(Sender: TObject);
begin
Dm.IBDS_ALUNOS.Edit;
end;

procedure TFrmAlunos.DBComboBox7Enter(Sender: TObject);
begin
Dm.IBDS_ALUNOS.Edit;
end;

procedure TFrmAlunos.DBComboBox15Enter(Sender: TObject);
begin
Dm.IBDS_ALUNOS.Edit;
end;

function TFrmAlunos.TipoDeBaixa(var Motivo: string): boolean;
var
  Form: TForm; { Variável para o Form }
  Medt1: TComboBox; { Variável para o MaskEdit }
begin
  Result := false; { Por padrão retorna false }
  { Cria o form }
  Form := TForm.Create(Application);
  try
  { Altera algumas propriedades do Form }
  Form.BorderStyle := bsDialog;
  Form.Caption := 'Baixa de Matrícula';
  Form.Position := poMainFormCenter;
  Form.Width := 305;
  Form.Height := 114;
  { Coloca um Label }
 with TLabel.Create(Form) do begin
  Parent := Form;
  Caption := 'Informe o motivo da baixa:';
  Left := 16;
  Top := 16;
  end;
  { Coloca o Edit }
  Medt1 := TComboBox.Create(Form);
  with Medt1 do begin
  Parent := Form;
  Left := 16;
  Top := 30;
  Width := 160;
  TabOrder:= 0;
  BevelInner:= bvLowered;
  BevelKind:= bkTile;
  BevelOuter:= bvRaised;
  BorderStyle:= bsNone;
  Font.Size:= 14;
  Font.Style:= [fsBold];
  CharCase:= ecNormal;
  Style:= csDropDownList;
  // CARREGA ETAPAS
  Medt1.Items.Clear;
  Medt1.Items.Add('Arquivo Morto');
 // Medt1.Items.Add('Desistente');
//  Medt1.Items.Add('Transferido');
  end;
  { Coloca o botão OK }
  with TBitBtn.Create(Form) do begin
  Parent := Form;
  { Posiciona de acordo com a largura do form }
  Left := 198;
  Top := 34;
  Kind := bkOK; { Botão Ok }
  Font.Style:= [fsBold];
  end;
  { Exibe o form e aguarda a ação do usuário. Se for OK... }
  if Form.ShowModal = mrOK then begin
  Motivo:= Medt1.Text;
  Result := True;
  end;
  finally
  Form.Free;
  end;
end;

end.
