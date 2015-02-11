unit UnBoletim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, Grids, DBGrids, Buttons,
  ComCtrls, DB, jpeg, IBCustomDataSet, IBQuery, DBClient, Registry, Menus;

Type
  TFrmBoletim = class(TForm)
    Panel2: TPanel;
    SbExcluir: TBitBtn;
    SbCancelar: TBitBtn;
    SbNova: TBitBtn;
    SbAnterior: TBitBtn;
    SbProxima: TBitBtn;
    SpeedButton1: TBitBtn;
    SbAtualiza: TBitBtn;
    SbSalvar: TBitBtn;
    DS_Boletim: TDataSource;
    SbAlterar: TBitBtn;
    Label13: TLabel;
    Label14: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    DBGrid_Boletim: TDBGrid;
    IBDS_ExibeNotas: TIBDataSet;
    Ds_ExibeNotas: TDataSource;
    IBQueryNumMatricula: TIBQuery;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    IBQueryExibe_CODNOTA: TIBQuery;
    IBQuery_ApagaDisc: TIBQuery;
    DBText8: TDBText;
    Bevel1: TBevel;
    Btn_1Etapa: TBitBtn;
    Btn_2Etapa: TBitBtn;
    Btn_4Etapa: TBitBtn;
    Btn_3Etapa: TBitBtn;
    Btn_RemoveDisc: TBitBtn;
    Btn_Imprimir: TBitBtn;
    BtnOk: TBitBtn;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Btn_Provao: TBitBtn;
    Label3: TLabel;
    DBText1: TDBText;
    IBDS_ExibeNotasCOD_NOTA: TIntegerField;
    IBDS_ExibeNotasCOD_BOLE: TIntegerField;
    IBDS_ExibeNotasMATRICULA: TIBStringField;
    IBDS_ExibeNotasANO_LETIVO: TIBStringField;
    IBDS_ExibeNotasDISCIPLINA: TIBStringField;
    IBDS_ExibeNotasETAPA_1_R: TIBStringField;
    IBDS_ExibeNotasETAPA_2_R: TIBStringField;
    IBDS_ExibeNotasETAPA_3_R: TIBStringField;
    IBDS_ExibeNotasETAPA_4_R: TIBStringField;
    IBDS_ExibeNotasMEDIA_FINAL: TIBStringField;
    IBDS_ExibeNotasFALTAS: TIntegerField;
    IBDS_ExibeNotasPONTOS: TIBStringField;
    IBDS_ExibeNotasETAPA_1_MAR: TIBStringField;
    IBDS_ExibeNotasETAPA_1_ABR: TIBStringField;
    IBDS_ExibeNotasETAPA_2_MAI: TIBStringField;
    IBDS_ExibeNotasETAPA_2_JUN: TIBStringField;
    IBDS_ExibeNotasETAPA_2_M: TIBStringField;
    IBDS_ExibeNotasETAPA_3_AGO: TIBStringField;
    IBDS_ExibeNotasETAPA_3_SET: TIBStringField;
    IBDS_ExibeNotasETAPA_3_M: TIBStringField;
    IBDS_ExibeNotasETAPA_4_OUT: TIBStringField;
    IBDS_ExibeNotasETAPA_4_NOV: TIBStringField;
    IBDS_ExibeNotasETAPA_4_M: TIBStringField;
    IBDS_ExibeNotasPROVAO: TIBStringField;
    IBDS_ExibeNotasPROVAO_R: TIBStringField;
    RButton_1: TRadioButton;
    RButton_2: TRadioButton;
    CheckB_Faltas: TCheckBox;
    CheckB_Pontos: TCheckBox;
    RButton_3: TRadioButton;
    RButton_4: TRadioButton;
    IBQuery_Disciplinas: TIBQuery;
    IBQuery_DisciplinasDISCIPLINA: TIBStringField;
    Edit1: TComboBox;
    IBDS_ExibeNotasETAPA_1_M: TIBStringField;
    MainMenu1: TMainMenu;
    N1Etapa1: TMenuItem;
    N2Etapa1: TMenuItem;
    N3Etapa1: TMenuItem;
    N4Etapa1: TMenuItem;
    MF1: TMenuItem;
    CheckB_B: TCheckBox;
    CheckB_P: TCheckBox;
    Provo1: TMenuItem;
    Btn_MediaMatJard: TBitBtn;
    Btn_MediaFin: TBitBtn;
    IBDS_ExibeNotasSERIE: TIBStringField;
    IBDS_ExibeNotasTURMA: TIBStringField;
    IBDS_ExibeNotasTURNO: TIBStringField;
    IBDS_ExibeNotasRESULTADO_FINAL: TIBStringField;
    IBDS_ExibeNotasETAPA_1_AV3: TIBStringField;
    IBDS_ExibeNotasETAPA_2_AV3: TIBStringField;
    IBDS_ExibeNotasETAPA_3_AV3: TIBStringField;
    IBDS_ExibeNotasETAPA_4_AV3: TIBStringField;
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1Select(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SbNovaClick(Sender: TObject);
    procedure SbSalvarClick(Sender: TObject);
    procedure SbExcluirClick(Sender: TObject);
    procedure SbCancelarClick(Sender: TObject);
    procedure SbAtualizaClick(Sender: TObject);
    procedure SbAnteriorClick(Sender: TObject);
    procedure SbProximaClick(Sender: TObject);
    procedure DS_BoletimStateChange(Sender: TObject);
    procedure SbAlterarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid_BoletimKeyPress(Sender: TObject; var Key: Char);
    procedure IBDS_ExibeNotasAfterInsert(DataSet: TDataSet);
    procedure Ds_ExibeNotasStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Btn_1EtapaClick(Sender: TObject);
    procedure Btn_2EtapaClick(Sender: TObject);
    procedure Btn_3EtapaClick(Sender: TObject);
    procedure Btn_4EtapaClick(Sender: TObject);
    procedure Btn_RemoveDiscClick(Sender: TObject);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure BtnOkClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_BoletimDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Btn_ImprimirClick(Sender: TObject);
    procedure CheckB_FaltasClick(Sender: TObject);
    procedure CheckB_PontosClick(Sender: TObject);
    procedure Btn_ProvaoClick(Sender: TObject);
    procedure CheckB_BClick(Sender: TObject);
    procedure Btn_MediaMatJardClick(Sender: TObject);
    procedure Btn_MediaFinClick(Sender: TObject);
    procedure Desistente1Click(Sender: TObject);
    procedure CheckB_PClick(Sender: TObject);

  private
    { Private declarations }
    function ObterNotas(var Nota1, Nota2, Nota3: string): boolean;
    function ObterNotasEI(var Nota: string): boolean;
    procedure CarregaBoletimPorNome;
    procedure ObterMatriculas;
  public
    { Public declarations }
    Procedure Seleciona_Notas;
    procedure tbSetCapsLock(State: boolean);
    Function Arredonda5e0(Valores:Currency):Currency;
  end;

var
  FrmBoletim: TFrmBoletim;
  Nota, Nota1, Nota2, Nota3, Faltas, Pontos, Etapa_1EI, Etapa_2EI, Etapa_3EI, Etapa_4EI,
  Mes_1, Mes_2, Mes_3, Etapa_1, Etapa_2, Etapa_3, Etapa_4, Provao, Busca_Disciplina, Media_FinalEI, SERIE_DISCIPLINA, COD_BOLE, COD_BOLE_DISCIPLINA, EDICAO, CURSO_DISCIPLINA, MATRICULA_DISCIPLINA: String;
  Media10, Media, Media_Final, MediaDe4, ResultFinal: Real;
implementation

uses UnDm, UnLocalizar, UnInsereAluno, UnPrincipal, UnImpressaoBoletim;

{$R *.dfm}

procedure TFrmBoletim.SpeedButton1Click(Sender: TObject);
begin
Close;
end;

procedure TFrmBoletim.SbNovaClick(Sender: TObject);
begin
ObterMatriculas;
try
 FrmInsereAluno:=TFrmInsereAluno.Create(nil);
 FrmInsereAluno.ShowModal;
finally
 FrmInsereAluno.Release;
end;
end;

procedure TFrmBoletim.SbSalvarClick(Sender: TObject);
begin
if IBDS_ExibeNotas.State = dsEdit then
begin
IBDS_ExibeNotas.Edit;
// SALVA ALTERAÇÕES
Screen.Cursor := crHourGlass;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
IBDS_ExibeNotas.Post;
IBDS_ExibeNotas.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
Screen.Cursor := crDefault;
Seleciona_Notas;
Exit;
end else
IBQueryNumMatricula.Close;
IBQueryNumMatricula.Open;
if DBText8.Caption = '' then
begin
MessageBox(FrmBoletim.Handle,'Informe o nome do(a) aluno(a).','Informação',0+64);
Exit;
end else
if DS_Boletim.State = dsInsert then
begin
if not (IBQueryNumMatricula.Locate('MATRICULA', DBText2.Caption, [])) then
begin
Screen.Cursor := crHourGlass;
If Not(DM.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_BOLETIM.Post;
Dm.IBDS_BOLETIM.ApplyUpdates;
DM.IBTransaction.CommitRetaining;
// EXIBI BOLETIM SELECIONADO
Seleciona_Notas;
Screen.Cursor := crDefault;
end else
ShowMessage('Não é possível salvar os dados, a matrícula nº: "'+DBText2.Caption+'" já foi adicionada ao ano letivo, informe outra.');

// CANCELA ALTERAÇÕES
IBDS_ExibeNotas.Cancel;
IBDS_ExibeNotas.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
Dm.IBDS_BOLETIM.Cancel;
Dm.IBDS_BOLETIM.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
end;

Screen.Cursor := crDefault;
end;

procedure TFrmBoletim.SbExcluirClick(Sender: TObject);
begin
if MessageBox(0,'Você tem certeza que deseja excluir este boletim? Todas as disciplinas também serão excluídas.','Pergunta',mb_yesno+mb_iconquestion)=6  then
begin
IBQuery_ApagaDisc.Close;
IBQuery_ApagaDisc.Sql.Clear;
IBQuery_ApagaDisc.SQL.Add('Delete from NOTAS ');
IBQuery_ApagaDisc.SQL.Add('where COD_BOLE =:CodBol ');
IBQuery_ApagaDisc.ParamByName('CodBol').AsString:= IBDS_ExibeNotasCOD_BOLE.AsString;
IBQuery_ApagaDisc.ExecSQL;
Dm.IBDS_BOLETIM.Delete;
Dm.IBDS_BOLETIM.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
DS_BoletimStateChange(FrmBoletim);
// EXIBI BOLETIM SELECIONADO
Seleciona_Notas;
Exit;
end else
DBGrid_Boletim.SetFocus;
end;

procedure TFrmBoletim.SbCancelarClick(Sender: TObject);
begin
if IBDS_ExibeNotas.State = dsEdit then
begin
IBDS_ExibeNotas.Edit;
// CANCELA ALTERAÇÕES
IBDS_ExibeNotas.Cancel;
IBDS_ExibeNotas.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
Exit;
end else
Dm.IBDS_BOLETIM.Cancel;
Dm.IBDS_BOLETIM.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
end;

procedure TFrmBoletim.SbAtualizaClick(Sender: TObject);
begin
Dm.IBDS_BOLETIM.Close;
Dm.IBDS_BOLETIM.Open;
Dm.IBDS_BOLETIM.Refresh;
IBDS_ExibeNotas.Close;
IBDS_ExibeNotas.Open;
IBDS_ExibeNotas.Refresh;
// EXIBI BOLETIM SELECIONADO
Seleciona_Notas;
end;

procedure TFrmBoletim.SbAnteriorClick(Sender: TObject);
begin
Dm.IBDS_BOLETIM.Prior;
// EXIBI BOLETIM SELECIONADO
Seleciona_Notas;
DS_BoletimStateChange(FrmBoletim);
end;

procedure TFrmBoletim.SbProximaClick(Sender: TObject);
begin
Dm.IBDS_BOLETIM.Next;
// EXIBI BOLETIM SELECIONADO
Seleciona_Notas;
DS_BoletimStateChange(FrmBoletim);
end;

procedure TFrmBoletim.DS_BoletimStateChange(Sender: TObject);
begin
 SbNova.Enabled       := DS_Boletim.State in [dsBrowse];
 SbExcluir.Enabled    := (DS_Boletim.State in [dsBrowse]) and (Dm.IBDS_BOLETIM.RecordCount > 0);
 Btn_Imprimir.Enabled := (DS_Boletim.State in [dsBrowse]) and (Dm.IBDS_BOLETIM.RecordCount > 0);
 SbAtualiza.Enabled   := (DS_Boletim.State in [dsBrowse]) and (Dm.IBDS_BOLETIM.RecordCount > 0);
 SbAlterar.Enabled    := DS_Boletim.State in [dsBrowse];
 SbSalvar.Enabled     := DS_Boletim.State in [dsInsert,dsEdit];
 SbCancelar.Enabled   := DS_Boletim.State in [dsInsert,dsEdit];
 SbAnterior.Enabled   := (DS_Boletim.State in [dsBrowse]) and ( NOT Dm.IBDS_BOLETIM.BOF);
 SbProxima.Enabled    := (DS_Boletim.State in [dsBrowse]) and ( NOT Dm.IBDS_BOLETIM.EOF);
end;

procedure TFrmBoletim.SbAlterarClick(Sender: TObject);
begin
ObterMatriculas;
Dm.IBDS_BOLETIM.Edit;

try
 FrmInsereAluno:=TFrmInsereAluno.Create(nil);
 FrmInsereAluno.ShowModal;
finally
 FrmInsereAluno.Release;
end;
end;

procedure TFrmBoletim.FormShow(Sender: TObject);
begin
FrmBoletim.Top:=0;
FrmBoletim.Left:=0;
IBDS_ExibeNotas.Close;
IBDS_ExibeNotas.Open;
// EXIBI BOLETIM SELECIONADO
DBGrid_Boletim.Columns[2].PickList.Clear;
 Dm.IBDS_MATERIAS.First;
 if not Dm.IBDS_MATERIAS.Eof then
 repeat
 { seus comandos para a tabela }
DBGrid_Boletim.Columns[2].PickList.Add(Dm.IBDS_MATERIASDISCIPLINA.AsString);
 Dm.IBDS_MATERIAS.Next;
 until Dm.IBDS_MATERIAS.Eof;
Seleciona_Notas;

Dm.IBDS_BOLETIM.First;
Edit1.Items.Clear;
 if not Dm.IBDS_BOLETIM.Eof then
 repeat
 { seus comandos para a tabela }
Edit1.Items.Add(Dm.IBDS_BOLETIMNOME_ALUNO.AsString);
 Dm.IBDS_BOLETIM.Next;
 until Dm.IBDS_BOLETIM.Eof;
Dm.IBDS_BOLETIM.First;

if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmBoletim.Caption:= FrmBoletim.Caption;
Exit;
end else
FrmBoletim.Caption:= FrmBoletim.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end;

procedure TFrmBoletim.DBGrid_BoletimKeyPress(Sender: TObject;
  var Key: Char);
begin
if key <> #13 then
begin
//=== PERMITE DIGITAR SOMENTE LETRAS PARA MATERNAL E JARDINS ===================
if (DBText3.Caption = 'EDUCAÇÃO INFANTIL') then
begin
If not( key in['A','B','R','S',#8,#13])  then
begin
key:=#0;
end;
end else
//=== PERMITE DIGITAR SOMENTE NÚMEROS PARA ALFABETIZAÇÃO E SÉRIES MAIORES ======
if (DBText3.Caption = 'ENSINO FUNDAMENTAL I') or (DBText3.Caption = 'ENSINO FUNDAMENTAL II') then
begin
If not( key in['0'..'9',',',#8,#13]) then
begin
key:=#0;
end;
end;
Exit;
end else
if Key = #13 then
begin
  Key := #0;{ Suprime o som }
//=== OBEDECE A TECLA ENTER NO DBGRID ==========================================
  { escreva aqui os seus comandos }
Busca_Disciplina:= IBDS_ExibeNotasCOD_NOTA.AsString;
if (IBDS_ExibeNotas.State <> dsEdit) and (IBDS_ExibeNotas.State <> dsInsert) then
begin
ShowMessage('Não foi localizado alterações neste boletim.');
Abort;
end;
//=== VERIFICA SE EXISTE DISCIPLINA ============================================
if DBGrid_Boletim.Fields[2].Text = '' then
begin
ShowMessage('Seleciona uma disciplina.');
DBGrid_Boletim.SetFocus;
Exit;
end;
Screen.Cursor := crHourGlass;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
IBDS_ExibeNotas.Post;
IBDS_ExibeNotas.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
Screen.Cursor := crDefault;
Seleciona_Notas;
end;
end;

procedure TFrmBoletim.IBDS_ExibeNotasAfterInsert(DataSet: TDataSet);
Var
  nNum: Integer;
begin
  IBQueryExibe_CODNOTA.Open;
 IBQueryExibe_CODNOTA.First;
  If IBQueryExibe_CODNOTA.EOF Then
    nNum := 0
  Else
    nNum := IBQueryExibe_CODNOTA.Fields[0].AsInteger;
  IBQueryExibe_CODNOTA.Close;
  Inc( nNum );
  IBDS_ExibeNotasCOD_NOTA.AsInteger := nNum;
    // ADICIONA DADOS
IBDS_ExibeNotas.FieldByName('COD_BOLE').asString:= Dm.IBDS_BOLETIMCOD_BOLE.asString;
IBDS_ExibeNotas.FieldByName('MATRICULA').asString:= Dm.IBDS_BOLETIMMATRICULA.asString;

IBDS_ExibeNotas.FieldByName('SERIE').asString:= Dm.IBDS_BOLETIMSERIE.asString;
IBDS_ExibeNotas.FieldByName('TURMA').asString:= Dm.IBDS_BOLETIMTURMA.asString;
IBDS_ExibeNotas.FieldByName('TURNO').asString:= Dm.IBDS_BOLETIMTURNO.asString;

IBDS_ExibeNotas.FieldByName('ANO_LETIVO').asString:= Dm.IBDS_BOLETIMANO_LETIVO.asString;
end;

procedure TFrmBoletim.Ds_ExibeNotasStateChange(Sender: TObject);
begin
 SbNova.Enabled           := Ds_ExibeNotas.State in [dsBrowse];
 //SbExcluir.Enabled        := (Ds_ExibeNotas.State in [dsBrowse]) and (IBDS_ExibeNotas.RecordCount > 0);
 SbAtualiza.Enabled       := (Ds_ExibeNotas.State in [dsBrowse]) and (IBDS_ExibeNotas.RecordCount > 0);
 SbAlterar.Enabled        := Ds_ExibeNotas.State in [dsBrowse];
 SbSalvar.Enabled         := Ds_ExibeNotas.State in [dsInsert,dsEdit];
 SbCancelar.Enabled       := Ds_ExibeNotas.State in [dsInsert,dsEdit];
 SbAnterior.Enabled       := (Ds_ExibeNotas.State in [dsBrowse]) and ( NOT IBDS_ExibeNotas.BOF);
 SbProxima.Enabled        := (Ds_ExibeNotas.State in [dsBrowse]) and ( NOT IBDS_ExibeNotas.EOF);
 SbAnterior.Enabled       := (Ds_ExibeNotas.State in [dsBrowse]) and ( NOT IBDS_ExibeNotas.BOF);
 SbProxima.Enabled        := (Ds_ExibeNotas.State in [dsBrowse]) and ( NOT IBDS_ExibeNotas.EOF);
end;

procedure TFrmBoletim.Seleciona_Notas;
begin
// EXIBI BOLETIM SELECIONADO
IBDS_ExibeNotas.Close;
IBDS_ExibeNotas.SelectSQL.Clear;
IBDS_ExibeNotas.SelectSQL.Add('select * from NOTAS ');
IBDS_ExibeNotas.SelectSQL.Add('where COD_BOLE =:CBoletim ');
IBDS_ExibeNotas.ParamByName('CBoletim').AsInteger:= Dm.IBDS_BOLETIM.FieldByName('COD_BOLE').AsInteger;
//IBDS_ExibeNotas.SelectSQL.Add('order by COD_NOTA');
IBDS_ExibeNotas.Open;

// HABILITA BOTÃO DA MEDIA FINAL
if (DBText3.Caption = 'EDUCAÇÃO INFANTIL') then
begin
Btn_MediaMatJard.Visible:= True;
Btn_MediaFin.Visible:= False;
end;

if (DBText3.Caption = 'ENSINO FUNDAMENTAL I') or (DBText3.Caption = 'ENSINO FUNDAMENTAL II') then
begin
Btn_MediaFin.Visible:= True;
Btn_MediaMatJard.Visible:= False;
end;

if (DBText3.Caption = 'EDUCAÇÃO INFANTIL') then
begin
DBGrid_Boletim.Columns[3].Visible:= False;
DBGrid_Boletim.Columns[4].Visible:= False;
DBGrid_Boletim.Columns[5].Visible:= False;
DBGrid_Boletim.Columns[6].Width:= 80;
DBGrid_Boletim.Columns[6].Title.Caption:= 'Média 1ª ETP';
DBGrid_Boletim.Columns[7].Width:= 53;
DBGrid_Boletim.Columns[7].Title.Caption:= '';
DBGrid_Boletim.Columns[7].ReadOnly:= True;

DBGrid_Boletim.Columns[8].Visible:= False;
DBGrid_Boletim.Columns[9].Visible:= False;
DBGrid_Boletim.Columns[10].Visible:= False;
DBGrid_Boletim.Columns[11].Width:= 80;
DBGrid_Boletim.Columns[11].Title.Caption:= 'Média 2ª ETP';
DBGrid_Boletim.Columns[12].Width:= 53;
DBGrid_Boletim.Columns[12].Title.Caption:= '';
DBGrid_Boletim.Columns[12].ReadOnly:= True;

DBGrid_Boletim.Columns[13].Visible:= False;
DBGrid_Boletim.Columns[14].Visible:= False;
DBGrid_Boletim.Columns[15].Visible:= False;
DBGrid_Boletim.Columns[16].Width:= 80;
DBGrid_Boletim.Columns[16].Title.Caption:= 'Média 3ª ETP';
DBGrid_Boletim.Columns[17].Width:= 53;
DBGrid_Boletim.Columns[17].Title.Caption:= '';
DBGrid_Boletim.Columns[17].ReadOnly:= True;

DBGrid_Boletim.Columns[18].Visible:= False;
DBGrid_Boletim.Columns[19].Visible:= False;
DBGrid_Boletim.Columns[20].Visible:= False;
DBGrid_Boletim.Columns[21].Width:= 80;
DBGrid_Boletim.Columns[21].Title.Caption:= 'Média 4ª ETP';
DBGrid_Boletim.Columns[22].Width:= 53;
DBGrid_Boletim.Columns[22].Title.Caption:= '';
DBGrid_Boletim.Columns[22].ReadOnly:= True;

DBGrid_Boletim.Columns[24].Visible:= False;
DBGrid_Boletim.Columns[25].Visible:= False;
DBGrid_Boletim.Columns[23].Width:= 80;
DBGrid_Boletim.Columns[23].Title.Caption:= 'Média Final';
Btn_Provao.Visible:= False;
CheckB_B.Enabled:= False;
CheckB_P.Enabled:= False;
CheckB_Faltas.Enabled:= False;
CheckB_Pontos.Enabled:= False;
if DBGrid_Boletim.Columns[27].Visible = True then
begin
DBGrid_Boletim.Columns[27].Visible:= False;
end else
if DBGrid_Boletim.Columns[28].Visible = True then
begin
DBGrid_Boletim.Columns[28].Visible:= False;
end;
if DBGrid_Boletim.Fields[2].Text = '' then
Btn_RemoveDisc.Enabled:= False
else
Btn_RemoveDisc.Enabled:= True;
Exit;
end else
DBGrid_Boletim.Columns[3].Visible:= True;
DBGrid_Boletim.Columns[4].Visible:= True;
DBGrid_Boletim.Columns[5].Visible:= True;
DBGrid_Boletim.Columns[6].Width:= 26;
DBGrid_Boletim.Columns[6].Title.Caption:= 'M';
DBGrid_Boletim.Columns[7].Width:= 26;
DBGrid_Boletim.Columns[7].ReadOnly:= False;
DBGrid_Boletim.Columns[7].Title.Caption:= 'R';

DBGrid_Boletim.Columns[8].Visible:= True;
DBGrid_Boletim.Columns[9].Visible:= True;
DBGrid_Boletim.Columns[10].Visible:= True;
DBGrid_Boletim.Columns[11].Width:= 26;
DBGrid_Boletim.Columns[11].Title.Caption:= 'M';
DBGrid_Boletim.Columns[12].Width:= 26;
DBGrid_Boletim.Columns[12].ReadOnly:= False;
DBGrid_Boletim.Columns[12].Title.Caption:= 'R';

DBGrid_Boletim.Columns[13].Visible:= True;
DBGrid_Boletim.Columns[14].Visible:= True;
DBGrid_Boletim.Columns[15].Visible:= True;
DBGrid_Boletim.Columns[16].Width:= 26;
DBGrid_Boletim.Columns[16].Title.Caption:= 'M';
DBGrid_Boletim.Columns[17].Width:= 26;
DBGrid_Boletim.Columns[17].ReadOnly:= False;
DBGrid_Boletim.Columns[17].Title.Caption:= 'R';

DBGrid_Boletim.Columns[18].Visible:= True;
DBGrid_Boletim.Columns[19].Visible:= True;
DBGrid_Boletim.Columns[20].Visible:= True;
DBGrid_Boletim.Columns[21].Width:= 26;
DBGrid_Boletim.Columns[21].Title.Caption:= 'M';
DBGrid_Boletim.Columns[22].Width:= 26;
DBGrid_Boletim.Columns[22].ReadOnly:= False;
DBGrid_Boletim.Columns[22].Title.Caption:= 'R';

DBGrid_Boletim.Columns[24].Visible:= True;
DBGrid_Boletim.Columns[25].Visible:= True;
DBGrid_Boletim.Columns[23].Width:= 26;
DBGrid_Boletim.Columns[23].Title.Caption:= 'MF';
Btn_Provao.Visible:= True;
CheckB_B.Enabled:= True;
CheckB_P.Enabled:= True;
CheckB_Faltas.Enabled:= True;
CheckB_Pontos.Enabled:= True;
Reg:= TRegistry.Create;
Reg.OpenKey('GEES\Boletim', True);
if Reg.ReadString('Exibe Faltas') = 'True' then
begin
CheckB_Faltas.Checked:= True;
DBGrid_Boletim.Columns[27].Visible:= True;
Reg.CloseKey;
end else
Reg:= TRegistry.Create;
Reg.OpenKey('GEES\Boletim', True);
if Reg.ReadString('Exibe Pontos') = 'True' then
begin
CheckB_Pontos.Checked:= True;
DBGrid_Boletim.Columns[28].Visible:= True;
Reg.CloseKey;
end;
if DBGrid_Boletim.Fields[2].Text = '' then
Btn_RemoveDisc.Enabled:= False
else
Btn_RemoveDisc.Enabled:= True;

if CheckB_B.Checked = True then
begin
DBGrid_Boletim.Columns[3].Visible:= False;
DBGrid_Boletim.Columns[4].Visible:= False;
DBGrid_Boletim.Columns[5].Visible:= False;
DBGrid_Boletim.Columns[6].Width:= 80;
DBGrid_Boletim.Columns[6].Title.Caption:= 'Média 1ª ETP';
DBGrid_Boletim.Columns[7].Width:= 53;

DBGrid_Boletim.Columns[8].Visible:= False;
DBGrid_Boletim.Columns[9].Visible:= False;
DBGrid_Boletim.Columns[10].Visible:= False;
DBGrid_Boletim.Columns[11].Width:= 80;
DBGrid_Boletim.Columns[11].Title.Caption:= 'Média 2ª ETP';
DBGrid_Boletim.Columns[12].Width:= 53;

DBGrid_Boletim.Columns[13].Visible:= False;
DBGrid_Boletim.Columns[14].Visible:= False;
DBGrid_Boletim.Columns[15].Visible:= False;
DBGrid_Boletim.Columns[16].Width:= 80;
DBGrid_Boletim.Columns[16].Title.Caption:= 'Média 3ª ETP';
DBGrid_Boletim.Columns[17].Width:= 53;

DBGrid_Boletim.Columns[18].Visible:= False;
DBGrid_Boletim.Columns[19].Visible:= False;
DBGrid_Boletim.Columns[20].Visible:= False;
DBGrid_Boletim.Columns[21].Width:= 80;
DBGrid_Boletim.Columns[21].Title.Caption:= 'Média 4ª ETP';
DBGrid_Boletim.Columns[22].Width:= 53;
Exit;
end else
DBGrid_Boletim.Columns[3].Visible:= True;
DBGrid_Boletim.Columns[4].Visible:= True;
DBGrid_Boletim.Columns[5].Visible:= True;
DBGrid_Boletim.Columns[6].Width:= 26;
DBGrid_Boletim.Columns[6].Title.Caption:= 'M';

DBGrid_Boletim.Columns[8].Visible:= True;
DBGrid_Boletim.Columns[9].Visible:= True;
DBGrid_Boletim.Columns[10].Visible:= True;
DBGrid_Boletim.Columns[11].Width:= 26;
DBGrid_Boletim.Columns[11].Title.Caption:= 'M';

DBGrid_Boletim.Columns[13].Visible:= True;
DBGrid_Boletim.Columns[14].Visible:= True;
DBGrid_Boletim.Columns[15].Visible:= True;
DBGrid_Boletim.Columns[16].Width:= 26;
DBGrid_Boletim.Columns[16].Title.Caption:= 'M';

DBGrid_Boletim.Columns[18].Visible:= True;
DBGrid_Boletim.Columns[19].Visible:= True;
DBGrid_Boletim.Columns[20].Visible:= True;
DBGrid_Boletim.Columns[21].Width:= 26;
DBGrid_Boletim.Columns[21].Title.Caption:= 'M';

// HABILITA OPCÃO DE RECUPERAÇÃO
if CheckB_P.Checked = False then
begin
DBGrid_Boletim.Columns[24].Visible:= False;
DBGrid_Boletim.Columns[25].Visible:= False;
DBGrid_Boletim.Columns[23].Width:= 80;
DBGrid_Boletim.Columns[23].Title.Caption:= 'Média Final';
Btn_Provao.Enabled:= False;
Provo1.Enabled:= False;
Exit;
end else
DBGrid_Boletim.Columns[24].Visible:= True;
DBGrid_Boletim.Columns[25].Visible:= True;
DBGrid_Boletim.Columns[23].Width:= 26;
DBGrid_Boletim.Columns[23].Title.Caption:= 'MF';
Btn_Provao.Enabled:= True;
Provo1.Enabled:= True;
end;

procedure TFrmBoletim.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=Cafree;
end;

procedure TFrmBoletim.FormCreate(Sender: TObject);
var
MesAtual: String;
begin
Dm.IBDS_BOLETIM.Close;
Dm.IBDS_BOLETIM.SelectSQL.Clear;
Dm.IBDS_BOLETIM.SelectSQL.Add('select * from BOLETIM where ANO_LETIVO = '+#39+AnoLetivo+#39+' order by COD_BOLE');
Dm.IBDS_BOLETIM.Open;

Seleciona_Notas;

Dm.IBDS_BOLETIM.First;
Edit1.Items.Clear;
 if not Dm.IBDS_BOLETIM.Eof then
 repeat
 { seus comandos para a tabela }
Edit1.Items.Add(Dm.IBDS_BOLETIMNOME_ALUNO.AsString);
Dm.IBDS_BOLETIM.Next;
until Dm.IBDS_BOLETIM.Eof;
Dm.IBDS_BOLETIM.First;

{ EXIBI BOLETIM SELECIONADO
IBDS_ExibeNotas.Close;
IBDS_ExibeNotas.SelectSQL.Clear;
IBDS_ExibeNotas.SelectSQL.Add('select * from NOTAS');
IBDS_ExibeNotas.SelectSQL.Add(' where MATRICULA = :NMatricula');
IBDS_ExibeNotas.SelectSQL.Add(' and ANO_LETIVO = :ALetivo');
IBDS_ExibeNotas.ParamByName('NMatricula').AsString:= Dm.IBDS_BOLETIMMATRICULA.AsString;
IBDS_ExibeNotas.ParamByName('ALetivo').AsString:= DBText7.Caption;
IBDS_ExibeNotas.SelectSQL.Add(' order by COD_NOTA, COD_BOLE');
IBDS_ExibeNotas.Open;
}

MesAtual:= LowerCase(FormatDateTime('mmmm',Data));
if (MesAtual = 'janeiro') or (MesAtual = 'fevereiro') or (MesAtual = 'março') then
begin
RButton_1.Checked:= True;
end else
if (MesAtual = 'abril') or (MesAtual = 'maio') or (MesAtual = 'junho') then
begin
RButton_2.Checked:= True;
end else
if (MesAtual = 'julho') or (MesAtual = 'agosto') or (MesAtual = 'setembro') then
begin
RButton_3.Checked:= True;
end else
if (MesAtual = 'outubro') or (MesAtual = 'novembro') or (MesAtual = 'dezembro') then
begin
RButton_4.Checked:= True;
end;

Reg:= TRegistry.Create;
Reg.OpenKey('GEES\Boletim', True);
if Reg.ReadString('Bimestres') = 'True' then
begin
CheckB_B.Checked:= True;
Reg.CloseKey;
end else
Reg:= TRegistry.Create;
Reg.OpenKey('GEES\Boletim', True);
if Reg.ReadString('Provão') = 'True' then
begin
CheckB_P.Checked:= True;
Reg.CloseKey;
end else
Reg:= TRegistry.Create;
Reg.OpenKey('GEES\Boletim', True);
if Reg.ReadString('Exibe Faltas') = 'True' then
begin
CheckB_Faltas.Checked:= True;
Reg.CloseKey;
end else
Reg:= TRegistry.Create;
Reg.OpenKey('GEES\Boletim', True);
if Reg.ReadString('Exibe Pontos') = 'True' then
begin
CheckB_Pontos.Checked:= True;
Reg.CloseKey;
end;
end;

procedure TFrmBoletim.Btn_1EtapaClick(Sender: TObject);
begin
Busca_Disciplina:= IBDS_ExibeNotasCOD_NOTA.AsString;
RButton_1.Checked:= True;
//=== EXIBE TELA DE NOTAS PARA MATERNAL E JARDINS ==============================
if (DBText3.Caption = 'EDUCAÇÃO INFANTIL') then
begin
if ObterNotasEI(Nota) then
begin
tbSetCapsLock(true); { Liga Caps Lock }
DBGrid_Boletim.Fields[6].FocusControl;
IBDS_ExibeNotas.Locate('COD_NOTA',Busca_Disciplina,[]);
IBDS_ExibeNotas.Edit;
DBGrid_Boletim.Fields[6].Text:= Nota;
if DBGrid_Boletim.Fields[6].Text <> '' then
begin
if DBText1.Caption = 'MASCULINO' then
begin
DBGrid_Boletim.Fields[26].Text:= 'APROVADO';
end else
DBGrid_Boletim.Fields[26].Text:= 'APROVADA';
end else
if DBText1.Caption = 'MASCULINO' then
begin
DBGrid_Boletim.Fields[26].Text:= 'MELHORAR';
end else
DBGrid_Boletim.Fields[26].Text:= 'MELHORAR';
// SALVA ALTERAÇÕES
Screen.Cursor := crHourGlass;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
IBDS_ExibeNotas.Post;
IBDS_ExibeNotas.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
Screen.Cursor := crDefault;
Seleciona_Notas;
IBDS_ExibeNotas.Locate('COD_NOTA',Busca_Disciplina,[]);
Exit;
end else
Abort;
Exit;
end else
//=== EXIBE TELA DE NOTAS PARA AS SERIES 1ª, 2ª, 3ª, 4ª, 5ª, 6ª, 7ª, 8ª, 9ª ========
if ObterNotas(Nota1, Nota2, Nota3) then
begin
IBDS_ExibeNotas.Edit;
if Nota1 = '' then
begin
Nota1:= '0';
end;
if Nota2 = '' then
begin
Nota2:= '0';
end;
if Nota3 = '' then
begin
Nota3:= '0';
end;
DBGrid_Boletim.Fields[3].Text:= FormatFloat('#,#0.0', StrToFloat(Nota1));
DBGrid_Boletim.Fields[4].Text:= FormatFloat('#,#0.0', StrToFloat(Nota2));
DBGrid_Boletim.Fields[5].Text:= FormatFloat('#,#0.0', StrToFloat(Nota3));

Mes_1:= Nota1;
Mes_2:= Nota2;
Mes_3:= Nota3;

// SOMA AS NOTAS DE AV1,AV2,AV3 DIVIDE POR 3 E ARREDONDA MÉDIA
Media:= StrToFloat(CurrToStr(Arredonda5e0((StrToCurr(Mes_1)+StrToCurr(Mes_2)+StrToCurr(Mes_3))/3)));

Media:= StrToFloat(FormatFloat('#,#0.0',Media));
DBGrid_Boletim.Fields[6].Text:= FormatFloat('#,#0.0', Media);
if Media >= 6 then
begin
if DBText1.Caption = 'MASCULINO' then
begin
DBGrid_Boletim.Fields[26].Text:= 'APROVADO';
end else
DBGrid_Boletim.Fields[26].Text:= 'APROVADA';
end else
if DBText1.Caption = 'MASCULINO' then
begin
DBGrid_Boletim.Fields[7].FocusControl;
DBGrid_Boletim.Fields[26].Text:= 'REC.';
end else
DBGrid_Boletim.Fields[26].Text:= 'REC.';
end else
IBDS_ExibeNotas.Edit;
//=== SALVA AS ALTERAÇÕES ======================================================
Screen.Cursor := crHourGlass;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
IBDS_ExibeNotas.Post;
IBDS_ExibeNotas.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
Screen.Cursor := crDefault;
Seleciona_Notas;
IBDS_ExibeNotas.Locate('COD_NOTA',Busca_Disciplina,[]);
if MessageBox(0,'Deseja incluir notas para a próxima disciplina?','Pergunta',mb_yesno+mb_iconquestion)=6 then
begin
IBDS_ExibeNotas.Next;
Btn_1EtapaClick(Nil);
Exit;
end else
Abort;
end;

function TFrmBoletim.ObterNotas(var Nota1, Nota2, Nota3: string): boolean;
var
  Form: TForm; { Variável para o Form }
  Medt1: TMaskEdit; { Variável para o MaskEdit }
  Medt2: TMaskEdit;
  Medt3: TMaskEdit;
begin
  Result := false; { Por padrão retorna false }
  { Cria o form }
  Form := TForm.Create(Application);
  try
  { Altera algumas propriedades do Form }
  Form.BorderStyle := bsDialog;
  Form.Caption := IBDS_ExibeNotasDISCIPLINA.AsString;
  Form.Position := poMainFormCenter;
  Form.Width := 295;
  Form.Height := 99;
  KeyPreview:= False;
  { Coloca um Label }
 with TLabel.Create(Form) do begin
  Parent := Form;
  Caption := 'AV1';
  Left := 16;
  Top := 16;
  end;
  { Coloca o Edit }
 Medt1 := TMaskEdit.Create(Form);
  with Medt1 do begin
  Parent := Form;
  Left := 16;
  Top := 30;
  Width := 43;
  MaxLength:= 4;
  TabOrder:= 0;
  BevelInner:= bvLowered;
  BevelKind:= bkTile;
  BevelOuter:= bvRaised;
  BorderStyle:= bsNone;
  Font.Size:= 10;
  //EditMask:= '999;1;_';
  Font.Style:= [fsBold];
  CharCase:= ecUpperCase;
  TabOrder:= 0;
  end;
  { Coloca um Label }
  with TLabel.Create(Form) do begin
  Parent := Form;
  Caption := 'AV2';
  Left := 72;
  Top := 16;
  end;
  { Coloca o Edit }
  Medt2 := TMaskEdit.Create(Form);
  with Medt2 do begin
  Parent := Form;
  Left := 72;
  Top := 30;
  Width := 43;
  MaxLength:= 4;
  TabOrder:= 1;
  BevelInner:= bvLowered;
  BevelKind:= bkTile;
  BevelOuter:= bvRaised;
  BorderStyle:= bsNone;
  Font.Size:= 10;
  //EditMask:= '999;1;_';
  Font.Style:= [fsBold];
  CharCase:= ecUpperCase;
  TabOrder:= 1;
  end;
   { Coloca um Label }
 with TLabel.Create(Form) do begin
  Parent := Form;
  Caption := 'AV3';
  Left := 128;
  Top := 16;
  end;
  { Coloca o Edit }
 Medt3 := TMaskEdit.Create(Form);
  with Medt3 do begin
  Parent := Form;
  Left := 128;
  Top := 30;
  Width := 43;
  MaxLength:= 4;
  TabOrder:= 0;
  BevelInner:= bvLowered;
  BevelKind:= bkTile;
  BevelOuter:= bvRaised;
  BorderStyle:= bsNone;
  Font.Size:= 10;
  //EditMask:= '999;1;_';
  Font.Style:= [fsBold];
  CharCase:= ecUpperCase;
  TabOrder:= 2;
  if RButton_1.Checked = True then
  begin
  Medt1.Text:= DBGrid_Boletim.Fields[3].Text;
  Medt2.Text:= DBGrid_Boletim.Fields[4].Text;
  Medt3.Text:= DBGrid_Boletim.Fields[5].Text;
  end else
  if RButton_2.Checked = True then
  begin
  Medt1.Text:= DBGrid_Boletim.Fields[8].Text;
  Medt2.Text:= DBGrid_Boletim.Fields[9].Text;
  Medt3.Text:= DBGrid_Boletim.Fields[10].Text;
  end else
  if RButton_3.Checked = True then
  begin
  Medt1.Text:= DBGrid_Boletim.Fields[13].Text;
  Medt2.Text:= DBGrid_Boletim.Fields[14].Text;
  Medt3.Text:= DBGrid_Boletim.Fields[15].Text;
  end else
  if RButton_4.Checked = True then
  begin
  Medt1.Text:= DBGrid_Boletim.Fields[18].Text;
  Medt2.Text:= DBGrid_Boletim.Fields[19].Text;
  Medt3.Text:= DBGrid_Boletim.Fields[20].Text;
  end;

  end;
  { Coloca o botão OK }
  with TBitBtn.Create(Form) do begin
  Parent := Form;
  { Posiciona de acordo com a largura do form }
  Left := 196;
  Top := 28;
  Kind := bkOK; { Botão Ok }
  TabOrder:= 3;
  end;
  { Exibe o form e aguarda a ação do usuário. Se for OK... }
  if Form.ShowModal = mrOK then begin
  Nota1:= Medt1.Text;
  Nota2:= Medt2.Text;
  Nota3:= Medt3.Text;
  Result := True;
  //Medt1.SetFocus;
  end;
  finally
  Form.Free;
  end;
end;

procedure TFrmBoletim.Btn_2EtapaClick(Sender: TObject);
begin
Busca_Disciplina:= IBDS_ExibeNotasCOD_NOTA.AsString;
RButton_2.Checked:= True;
//=== EXIBE TELA DE NOTAS PARA MATERNAL E JARDINS ==============================
if (DBText3.Caption = 'EDUCAÇÃO INFANTIL') then
begin
if ObterNotasEI(Nota) then
begin
tbSetCapsLock(true); { Liga Caps Lock }
DBGrid_Boletim.Fields[11].FocusControl;
IBDS_ExibeNotas.Locate('COD_NOTA',Busca_Disciplina,[]);
IBDS_ExibeNotas.Edit;
DBGrid_Boletim.Fields[11].Text:= Nota;
if DBGrid_Boletim.Fields[11].Text <> '' then
begin
if DBText1.Caption = 'MASCULINO' then
begin
DBGrid_Boletim.Fields[26].Text:= 'APROVADO';
end else
DBGrid_Boletim.Fields[26].Text:= 'APROVADA';
end else
if DBText1.Caption = 'MASCULINO' then
begin
DBGrid_Boletim.Fields[26].Text:= 'MELHORAR';
end else
DBGrid_Boletim.Fields[26].Text:= 'MELHORAR';
// SALVA ALTERAÇÕES
Screen.Cursor := crHourGlass;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
IBDS_ExibeNotas.Post;
IBDS_ExibeNotas.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
Screen.Cursor := crDefault;
Seleciona_Notas;
IBDS_ExibeNotas.Locate('COD_NOTA',Busca_Disciplina,[]);
Exit;
end else
Abort;
Exit;
end else
//=== EXIBE TELA DE NOTAS PARA AS SERIES 1ª, 2ª, 3ª, 4ª, 5ª, 6ª, 7ª, 8ª, 9ª ========
if ObterNotas(Nota1, Nota2, Nota3) then
begin
IBDS_ExibeNotas.Edit;
if Nota1 = '' then
begin
Nota1:= '0';
end;
if Nota2 = '' then
begin
Nota2:= '0';
end;
if Nota3 = '' then
begin
Nota3:= '0';
end;
DBGrid_Boletim.Fields[8].Text:= FormatFloat('#,#0.0', StrToFloat(Nota1));
DBGrid_Boletim.Fields[9].Text:= FormatFloat('#,#0.0', StrToFloat(Nota2));
DBGrid_Boletim.Fields[10].Text:= FormatFloat('#,#0.0', StrToFloat(Nota3));
Mes_1:= Nota1;
Mes_2:= Nota2;
Mes_3:= Nota3;

Media:= StrToFloat(CurrToStr(Arredonda5e0((StrToCurr(Mes_1)+StrToCurr(Mes_2)+StrToCurr(Mes_3))/3)));

Media:= StrToFloat(FormatFloat('#,#0.0',Media));
DBGrid_Boletim.Fields[11].Text:= FormatFloat('#,#0.0', Media);
if Media >= 6 then
begin
if DBText1.Caption = 'MASCULINO' then
begin
DBGrid_Boletim.Fields[26].Text:= 'APROVADO';
end else
DBGrid_Boletim.Fields[26].Text:= 'APROVADA';
end else
if DBText1.Caption = 'MASCULINO' then
begin
DBGrid_Boletim.Fields[12].FocusControl;
DBGrid_Boletim.Fields[26].Text:= 'REC.';
end else
DBGrid_Boletim.Fields[26].Text:= 'REC.';
end else
IBDS_ExibeNotas.Edit;
//=== SALVA AS ALTERAÇÕES ======================================================
Screen.Cursor := crHourGlass;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
IBDS_ExibeNotas.Post;
IBDS_ExibeNotas.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
Screen.Cursor := crDefault;
Seleciona_Notas;
IBDS_ExibeNotas.Locate('COD_NOTA',Busca_Disciplina,[]);
if MessageBox(0,'Deseja incluir notas para a próxima disciplina?','Pergunta',mb_yesno+mb_iconquestion)=6 then
begin
IBDS_ExibeNotas.Next;
Btn_2EtapaClick(Nil);
Exit;
end else
Abort;
end;

procedure TFrmBoletim.Btn_3EtapaClick(Sender: TObject);
begin
Busca_Disciplina:= IBDS_ExibeNotasCOD_NOTA.AsString;
RButton_3.Checked:= True;
//=== EXIBE TELA DE NOTAS PARA MATERNAL E JARDINS ==============================
if (DBText3.Caption = 'EDUCAÇÃO INFANTIL') then
begin
if ObterNotasEI(Nota) then
begin
tbSetCapsLock(true); { Liga Caps Lock }
DBGrid_Boletim.Fields[16].FocusControl;
IBDS_ExibeNotas.Locate('COD_NOTA',Busca_Disciplina,[]);
IBDS_ExibeNotas.Edit;
DBGrid_Boletim.Fields[16].Text:= Nota;
if DBGrid_Boletim.Fields[16].Text <> '' then
begin
if DBText1.Caption = 'MASCULINO' then
begin
DBGrid_Boletim.Fields[26].Text:= 'APROVADO';
end else
DBGrid_Boletim.Fields[26].Text:= 'APROVADA';
end else
if DBText1.Caption = 'MASCULINO' then
begin
DBGrid_Boletim.Fields[26].Text:= 'MELHORAR';
end else
DBGrid_Boletim.Fields[26].Text:= 'MELHORAR';
// SALVA ALTERAÇÕES
Screen.Cursor := crHourGlass;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
IBDS_ExibeNotas.Post;
IBDS_ExibeNotas.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
Screen.Cursor := crDefault;
Seleciona_Notas;
IBDS_ExibeNotas.Locate('COD_NOTA',Busca_Disciplina,[]);
Exit;
end else
Abort;
Exit;
end else
//=== EXIBE TELA DE NOTAS PARA AS SERIES 1ª, 2ª, 3ª, 4ª, 5ª, 6ª, 7ª, 8ª ========
if ObterNotas(Nota1, Nota2, Nota3) then
begin
IBDS_ExibeNotas.Edit;
if Nota1 = '' then
begin
Nota1:= '0';
end;
if Nota2 = '' then
begin
Nota2:= '0';
end;
if Nota3 = '' then
begin
Nota3:= '0';
end;
DBGrid_Boletim.Fields[13].Text:= FormatFloat('#,#0.0', StrToFloat(Nota1));
DBGrid_Boletim.Fields[14].Text:= FormatFloat('#,#0.0', StrToFloat(Nota2));
DBGrid_Boletim.Fields[15].Text:= FormatFloat('#,#0.0', StrToFloat(Nota3));
Mes_1:= Nota1;
Mes_2:= Nota2;
Mes_3:= Nota3;

Media:= StrToFloat(CurrToStr(Arredonda5e0((StrToCurr(Mes_1)+StrToCurr(Mes_2)+StrToCurr(Mes_3))/3)));

Media:= StrToFloat(FormatFloat('#,#0.0',Media));
DBGrid_Boletim.Fields[16].Text:= FormatFloat('#,#0.0', Media);
if Media >= 6 then
begin
if DBText1.Caption = 'MASCULINO' then
begin
DBGrid_Boletim.Fields[26].Text:= 'APROVADO';
end else
DBGrid_Boletim.Fields[26].Text:= 'APROVADA';
end else
if DBText1.Caption = 'MASCULINO' then
begin
DBGrid_Boletim.Fields[17].FocusControl;
DBGrid_Boletim.Fields[26].Text:= 'REC.';
end else
DBGrid_Boletim.Fields[26].Text:= 'REC.';
end else
IBDS_ExibeNotas.Edit;
//=== SALVA AS ALTERAÇÕES ======================================================
Screen.Cursor := crHourGlass;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
IBDS_ExibeNotas.Post;
IBDS_ExibeNotas.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
Screen.Cursor := crDefault;
Seleciona_Notas;
IBDS_ExibeNotas.Locate('COD_NOTA',Busca_Disciplina,[]);
if MessageBox(0,'Deseja incluir notas para a próxima disciplina?','Pergunta',mb_yesno+mb_iconquestion)=6 then
begin
IBDS_ExibeNotas.Next;
Btn_3EtapaClick(Nil);
Exit;
end else
Abort;
end;

procedure TFrmBoletim.Btn_4EtapaClick(Sender: TObject);
begin
Busca_Disciplina:= IBDS_ExibeNotasCOD_NOTA.AsString;
RButton_4.Checked:= True;
//=== EXIBE TELA DE NOTAS PARA MATERNAL E JARDINS ==============================
if (DBText3.Caption = 'EDUCAÇÃO INFANTIL') then
begin
if ObterNotasEI(Nota) then
begin
tbSetCapsLock(true); { Liga Caps Lock }
DBGrid_Boletim.Fields[21].FocusControl;
IBDS_ExibeNotas.Locate('COD_NOTA',Busca_Disciplina,[]);
IBDS_ExibeNotas.Edit;
DBGrid_Boletim.Fields[21].Text:= Nota;
if DBGrid_Boletim.Fields[21].Text <> '' then
begin
if DBText1.Caption = 'MASCULINO' then
begin
DBGrid_Boletim.Fields[26].Text:= 'APROVADO';
end else
DBGrid_Boletim.Fields[26].Text:= 'APROVADA';
end else
if DBText1.Caption = 'MASCULINO' then
begin
DBGrid_Boletim.Fields[26].Text:= 'MELHORAR';
end else
DBGrid_Boletim.Fields[26].Text:= 'MELHORAR';
// SALVA ALTERAÇÕES
Screen.Cursor := crHourGlass;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
IBDS_ExibeNotas.Post;
IBDS_ExibeNotas.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
Screen.Cursor := crDefault;
Seleciona_Notas;
IBDS_ExibeNotas.Locate('COD_NOTA',Busca_Disciplina,[]);
Exit;
end else
Abort;
Exit;
end else
//=== EXIBE TELA DE NOTAS PARA AS SERIES 1ª, 2ª, 3ª, 4ª, 5ª, 6ª, 7ª, 8ª ========
if ObterNotas(Nota1, Nota2, Nota3) then
begin
IBDS_ExibeNotas.Edit;
if Nota1 = '' then
begin
Nota1:= '0';
end;
if Nota2 = '' then
begin
Nota2:= '0';
end;
if Nota3 = '' then
begin
Nota3:= '0';
end;
DBGrid_Boletim.Fields[18].Text:= FormatFloat('#,#0.0', StrToFloat(Nota1));
DBGrid_Boletim.Fields[19].Text:= FormatFloat('#,#0.0', StrToFloat(Nota2));
DBGrid_Boletim.Fields[20].Text:= FormatFloat('#,#0.0', StrToFloat(Nota3));
Mes_1:= Nota1;
Mes_2:= Nota2;
Mes_3:= Nota3;

// SOMA AS NOTAS DE AV1,AV2,AV3 E DIVIDE POR 3 E ARREDONDA MÉDIA
Media:= StrToFloat(CurrToStr(Arredonda5e0((StrToCurr(Mes_1)+StrToCurr(Mes_2)+StrToCurr(Mes_3))/3)));

Media:= StrToFloat(FormatFloat('#,#0.0',Media));
DBGrid_Boletim.Fields[21].Text:= FormatFloat('#,#0.0', Media);
if Media >= 6 then
begin
if DBText1.Caption = 'MASCULINO' then
begin
DBGrid_Boletim.Fields[26].Text:= 'APROVADO';
end else
DBGrid_Boletim.Fields[26].Text:= 'APROVADA';
end else
if DBText1.Caption = 'MASCULINO' then
begin
DBGrid_Boletim.Fields[22].FocusControl;
DBGrid_Boletim.Fields[26].Text:= 'REC.';
end else
DBGrid_Boletim.Fields[26].Text:= 'REC.';
end else
IBDS_ExibeNotas.Edit;
//=== SALVA AS ALTERAÇÕES ======================================================
Screen.Cursor := crHourGlass;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
IBDS_ExibeNotas.Post;
IBDS_ExibeNotas.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
Screen.Cursor := crDefault;
Seleciona_Notas;
IBDS_ExibeNotas.Locate('COD_NOTA',Busca_Disciplina,[]);
if MessageBox(0,'Deseja incluir notas para a próxima disciplina?','Pergunta',mb_yesno+mb_iconquestion)=6 then
begin
IBDS_ExibeNotas.Next;
Btn_4EtapaClick(Nil);
Exit;
end else
Abort;
end;

procedure TFrmBoletim.Btn_RemoveDiscClick(Sender: TObject);
begin
if IBDS_ExibeNotas.State = dsEdit then
begin
IBDS_ExibeNotas.Edit;
// SALVA ALTERAÇÕES
Screen.Cursor := crHourGlass;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
IBDS_ExibeNotas.Post;
IBDS_ExibeNotas.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
Screen.Cursor := crDefault;
Seleciona_Notas;
Exit;
end else
if MessageBox(0,'Deseja realmente excluir esta disciplina?','Pergunta',mb_yesno+mb_iconquestion)=6  then
begin
// APAGA DISCIPLINA SELECIONADA
Screen.Cursor := crHourGlass;
IBQuery_ApagaDisc.Close;
IBQuery_ApagaDisc.Sql.Clear;
IBQuery_ApagaDisc.SQL.Add('Delete from NOTAS ');
IBQuery_ApagaDisc.SQL.Add('where DISCIPLINA =:Disc and COD_BOLE =:Boletim and ANO_LETIVO =:AnoLet ');
IBQuery_ApagaDisc.ParamByName('Disc').AsString:= DBGrid_Boletim.Fields[2].Text;
IBQuery_ApagaDisc.ParamByName('Boletim').AsString:= Dm.IBDS_BOLETIMCOD_BOLE.AsString;
IBQuery_ApagaDisc.ParamByName('AnoLet').AsString:= AnoLetivo;
IBQuery_ApagaDisc.ExecSQL;
// EXIBI BOLETIM SELECIONADO
Seleciona_Notas;
Screen.Cursor := crDefault;
end;
end;

procedure TFrmBoletim.Edit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  theText: string;
  p: integer;
begin
  with Edit1 do
    case key of
      8, 13, 46, 37..40: ; // Se for backspace, enter, delete, ou setas, ignora...
      else
      begin
        p := SelStart;
        theText := copy(text, 0, p);
        if Dm.IBDS_BOLETIM.Locate('NOME_ALUNO', theText, [loCaseInsensitive, loPartialKey]) then
        begin
          text := Dm.IBDS_BOLETIM.FieldByName('NOME_ALUNO').AsString;
          SelStart := p;
          SelLength := length(text) - selStart;
       end;
   end;
  end;
end;

procedure TFrmBoletim.Edit1Select(Sender: TObject);
begin
CarregaBoletimPorNome;
end;

procedure TFrmBoletim.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['0'..'9','-',#8,#13] ) then
begin
key:=#0;
end;
 if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
if Edit2.Text = '' then
begin
Edit2.SetFocus;
Exit;
end else
Edit2.Text:= FrmPrincipal.RetZero(Edit2.Text, 15);
Edit2.Text:= FrmLocalizar.FormataMat(Edit2.Text);
if Edit2.Text = '' then
begin
BtnOk.Enabled:=False;
end else
BtnOk.Enabled:=True;
if BtnOk.Enabled = True then
begin
BtnOk.SetFocus;
BtnOkClick(Nil);
end;
end;
end;

procedure TFrmBoletim.BtnOkClick(Sender: TObject);
begin
Screen.Cursor := crHourglass;
Edit1.Text:= '';
if not Dm.IBDS_BOLETIM.Locate('MATRICULA',Edit2.Text,[]) then
begin
ShowMessage('A matrícula Nº: "'+Edit2.Text+'" está incompleta ou é inválida. Tente novamente.');
Screen.Cursor := crDefault;
Edit2.SetFocus;
Exit;
end else
Seleciona_Notas;
Screen.Cursor := crDefault;
end;

procedure TFrmBoletim.Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  theText: string;
  p: integer;
begin
  with Edit1 do
    case key of
      8, 13, 46, 37..40: ; // Se for backspace, enter, delete, ou setas, ignora...
      else
      begin
        p := SelStart;
        theText := copy(text, 0, p);
        if Dm.IBDS_BOLETIM.Locate('NOME_ALUNO', theText, [loCaseInsensitive, loPartialKey]) then
        begin
          text := Dm.IBDS_BOLETIM.FieldByName('NOME_ALUNO').AsString;
          SelStart := p;
          SelLength := length(text) - selStart;
       end;
   end;
  end;
end;

procedure TFrmBoletim.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  CarregaBoletimPorNome;
end;

procedure TFrmBoletim.DBGrid_BoletimDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if not odd(IBDS_ExibeNotas.RecNo) then // se for impar
// se a célula não está selecionada
if not (gdSelected in State) then
begin
// define uma cor de fundo
DBGrid_Boletim.Canvas.Brush.Color:= cl3DLight;
DBGrid_Boletim.Canvas.FillRect(Rect); // pinta a célula
// pinta o texto padrão
DBGrid_Boletim.DefaultDrawDataCell(rect,column.Field,State);
end;
(*destaca campo SITUAÇÃO*)
//********************************* 1ª ETAPA ***********************************
if DBText3.Caption <> 'EDUCAÇÃO INFANTIL' then
begin
if Column.Field = IBDS_ExibeNotasETAPA_1_MAR then
  if (IBDS_ExibeNotasETAPA_1_MAR.AsString <> '') then
   begin
   if IBDS_ExibeNotasETAPA_1_MAR.AsCurrency < 6 then
   begin
   DBGrid_Boletim.Canvas.Font.Color:= clRed;
   DBGrid_Boletim.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
   end else
   DBGrid_Boletim.Canvas.Font.Color:= clBlue;
   DBGrid_Boletim.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
end;

if Column.Field = IBDS_ExibeNotasETAPA_1_ABR then
  if (IBDS_ExibeNotasETAPA_1_ABR.AsString <> '') then
   begin
   if IBDS_ExibeNotasETAPA_1_ABR.AsCurrency < 6 then
   begin
   DBGrid_Boletim.Canvas.Font.Color:= clRed;
   DBGrid_Boletim.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
   end else
   DBGrid_Boletim.Canvas.Font.Color:= clBlue;
   DBGrid_Boletim.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
end;

if Column.Field = IBDS_ExibeNotasETAPA_1_AV3 then
  if (IBDS_ExibeNotasETAPA_1_AV3.AsString <> '') then
   begin
   if IBDS_ExibeNotasETAPA_1_AV3.AsCurrency < 6 then
   begin
   DBGrid_Boletim.Canvas.Font.Color:= clRed;
   DBGrid_Boletim.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
   end else
   DBGrid_Boletim.Canvas.Font.Color:= clBlue;
   DBGrid_Boletim.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
end;

if Column.Field = IBDS_ExibeNotasETAPA_1_M then
 if (IBDS_ExibeNotasETAPA_1_M.AsString <> '') and (IBDS_ExibeNotasETAPA_1_M.AsString <> 'AS') and (IBDS_ExibeNotasETAPA_1_M.AsString <> 'AB') and (IBDS_ExibeNotasETAPA_1_M.AsString <> 'AR') then
  begin
   if IBDS_ExibeNotasETAPA_1_M.AsCurrency < 6 then
   begin
   DBGrid_Boletim.Canvas.Font.Color:= clRed;
   DBGrid_Boletim.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
   end else
   DBGrid_Boletim.Canvas.Font.Color:= clBlue;
   DBGrid_Boletim.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
end;

if Column.Field = IBDS_ExibeNotasETAPA_1_R then
  if (IBDS_ExibeNotasETAPA_1_R.AsString <> '') then
   begin
   if IBDS_ExibeNotasETAPA_1_R.AsCurrency < 6 then
   begin
   DBGrid_Boletim.Canvas.Font.Color:= clRed;
   DBGrid_Boletim.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
   end else
   DBGrid_Boletim.Canvas.Font.Color:= clBlue;
   DBGrid_Boletim.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
end;

//********************************* 2ª ETAPA ***********************************
if Column.Field = IBDS_ExibeNotasETAPA_2_MAI then
  if (IBDS_ExibeNotasETAPA_2_MAI.AsString <> '') then
   begin
   if IBDS_ExibeNotasETAPA_2_MAI.AsCurrency < 6 then
   begin
   DBGrid_Boletim.Canvas.Font.Color:= clRed;
   DBGrid_Boletim.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
   end else
   DBGrid_Boletim.Canvas.Font.Color:= clBlue;
   DBGrid_Boletim.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
end;

if Column.Field = IBDS_ExibeNotasETAPA_2_JUN then
  if (IBDS_ExibeNotasETAPA_2_JUN.AsString <> '') then
   begin
   if IBDS_ExibeNotasETAPA_2_JUN.AsCurrency < 6 then
   begin
   DBGrid_Boletim.Canvas.Font.Color:= clRed;
   DBGrid_Boletim.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
   end else
   DBGrid_Boletim.Canvas.Font.Color:= clBlue;
   DBGrid_Boletim.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
end;

if Column.Field = IBDS_ExibeNotasETAPA_2_AV3 then
  if (IBDS_ExibeNotasETAPA_2_AV3.AsString <> '') then
   begin
   if IBDS_ExibeNotasETAPA_2_AV3.AsCurrency < 6 then
   begin
   DBGrid_Boletim.Canvas.Font.Color:= clRed;
   DBGrid_Boletim.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
   end else
   DBGrid_Boletim.Canvas.Font.Color:= clBlue;
   DBGrid_Boletim.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
end;

if Column.Field = IBDS_ExibeNotasETAPA_2_M then
 if (IBDS_ExibeNotasETAPA_2_M.AsString <> '') and (IBDS_ExibeNotasETAPA_2_M.AsString <> 'AS') and (IBDS_ExibeNotasETAPA_2_M.AsString <> 'AB') and (IBDS_ExibeNotasETAPA_2_M.AsString <> 'AR') then
  begin
   if IBDS_ExibeNotasETAPA_2_M.AsCurrency < 6 then
   begin
   DBGrid_Boletim.Canvas.Font.Color:= clRed;
   DBGrid_Boletim.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
   end else
   DBGrid_Boletim.Canvas.Font.Color:= clBlue;
   DBGrid_Boletim.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
end;

if Column.Field = IBDS_ExibeNotasETAPA_2_R then
  if (IBDS_ExibeNotasETAPA_2_R.AsString <> '') then
   begin
   if IBDS_ExibeNotasETAPA_2_R.AsCurrency < 6 then
   begin
   DBGrid_Boletim.Canvas.Font.Color:= clRed;
   DBGrid_Boletim.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
   end else
   DBGrid_Boletim.Canvas.Font.Color:= clBlue;
   DBGrid_Boletim.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
end;

//********************************* 3ª ETAPA ***********************************
if Column.Field = IBDS_ExibeNotasETAPA_3_AGO then
  if (IBDS_ExibeNotasETAPA_3_AGO.AsString <> '') then
   begin
   if IBDS_ExibeNotasETAPA_3_AGO.AsCurrency < 6 then
   begin
   DBGrid_Boletim.Canvas.Font.Color:= clRed;
   DBGrid_Boletim.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
   end else
   DBGrid_Boletim.Canvas.Font.Color:= clBlue;
   DBGrid_Boletim.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
end;

if Column.Field = IBDS_ExibeNotasETAPA_3_SET then
  if (IBDS_ExibeNotasETAPA_3_SET.AsString <> '') then
   begin
   if IBDS_ExibeNotasETAPA_3_SET.AsCurrency < 6 then
   begin
   DBGrid_Boletim.Canvas.Font.Color:= clRed;
   DBGrid_Boletim.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
   end else
   DBGrid_Boletim.Canvas.Font.Color:= clBlue;
   DBGrid_Boletim.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
end;

if Column.Field = IBDS_ExibeNotasETAPA_3_AV3 then
  if (IBDS_ExibeNotasETAPA_3_AV3.AsString <> '') then
   begin
   if IBDS_ExibeNotasETAPA_3_AV3.AsCurrency < 6 then
   begin
   DBGrid_Boletim.Canvas.Font.Color:= clRed;
   DBGrid_Boletim.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
   end else
   DBGrid_Boletim.Canvas.Font.Color:= clBlue;
   DBGrid_Boletim.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
end;

if Column.Field = IBDS_ExibeNotasETAPA_3_M then
 if (IBDS_ExibeNotasETAPA_3_M.AsString <> '') and (IBDS_ExibeNotasETAPA_3_M.AsString <> 'AS') and (IBDS_ExibeNotasETAPA_3_M.AsString <> 'AB') and (IBDS_ExibeNotasETAPA_3_M.AsString <> 'AR') then
  begin
   if IBDS_ExibeNotasETAPA_3_M.AsCurrency < 6 then
   begin
   DBGrid_Boletim.Canvas.Font.Color:= clRed;
   DBGrid_Boletim.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
   end else
   DBGrid_Boletim.Canvas.Font.Color:= clBlue;
   DBGrid_Boletim.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
end;

if Column.Field = IBDS_ExibeNotasETAPA_3_R then
  if (IBDS_ExibeNotasETAPA_3_R.AsString <> '') then
   begin
   if IBDS_ExibeNotasETAPA_3_R.AsCurrency < 6 then
   begin
   DBGrid_Boletim.Canvas.Font.Color:= clRed;
   DBGrid_Boletim.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
   end else
   DBGrid_Boletim.Canvas.Font.Color:= clBlue;
   DBGrid_Boletim.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
end;

//********************************* 4ª ETAPA ***********************************
if Column.Field = IBDS_ExibeNotasETAPA_4_OUT then
  if (IBDS_ExibeNotasETAPA_4_OUT.AsString <> '') then
   begin
   if IBDS_ExibeNotasETAPA_4_OUT.AsCurrency < 6 then
   begin
   DBGrid_Boletim.Canvas.Font.Color:= clRed;
   DBGrid_Boletim.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
   end else
   DBGrid_Boletim.Canvas.Font.Color:= clBlue;
   DBGrid_Boletim.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
end;

if Column.Field = IBDS_ExibeNotasETAPA_4_NOV then
  if (IBDS_ExibeNotasETAPA_4_NOV.AsString <> '') then
   begin
   if IBDS_ExibeNotasETAPA_4_NOV.AsCurrency < 6 then
   begin
   DBGrid_Boletim.Canvas.Font.Color:= clRed;
   DBGrid_Boletim.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
   end else
   DBGrid_Boletim.Canvas.Font.Color:= clBlue;
   DBGrid_Boletim.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
end;

if Column.Field = IBDS_ExibeNotasETAPA_4_AV3 then
  if (IBDS_ExibeNotasETAPA_4_AV3.AsString <> '') then
   begin
   if IBDS_ExibeNotasETAPA_4_AV3.AsCurrency < 6 then
   begin
   DBGrid_Boletim.Canvas.Font.Color:= clRed;
   DBGrid_Boletim.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
   end else
   DBGrid_Boletim.Canvas.Font.Color:= clBlue;
   DBGrid_Boletim.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
end;

if Column.Field = IBDS_ExibeNotasETAPA_4_M then
 if (IBDS_ExibeNotasETAPA_4_M.AsString <> '') and (IBDS_ExibeNotasETAPA_4_M.AsString <> 'AS') and (IBDS_ExibeNotasETAPA_4_M.AsString <> 'AB') and (IBDS_ExibeNotasETAPA_4_M.AsString <> 'AR') then
  begin
   if IBDS_ExibeNotasETAPA_4_M.AsCurrency < 6 then
   begin
   DBGrid_Boletim.Canvas.Font.Color:= clRed;
   DBGrid_Boletim.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
   end else
   DBGrid_Boletim.Canvas.Font.Color:= clBlue;
   DBGrid_Boletim.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
end;

if Column.Field = IBDS_ExibeNotasETAPA_4_R then
  if (IBDS_ExibeNotasETAPA_4_R.AsString <> '') then
   begin
   if IBDS_ExibeNotasETAPA_4_R.AsCurrency < 6 then
   begin
   DBGrid_Boletim.Canvas.Font.Color:= clRed;
   DBGrid_Boletim.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
   end else
   DBGrid_Boletim.Canvas.Font.Color:= clBlue;
   DBGrid_Boletim.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
end;

//********************************* PROVÃO E MÉDIA FINAL ***********************
if Column.Field = IBDS_ExibeNotasPROVAO then
  if (IBDS_ExibeNotasPROVAO.AsString <> '') then
   begin
   if IBDS_ExibeNotasPROVAO.AsCurrency < 6 then
   begin
   DBGrid_Boletim.Canvas.Font.Color:= clRed;
   DBGrid_Boletim.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
   end else
   DBGrid_Boletim.Canvas.Font.Color:= clBlue;
   DBGrid_Boletim.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
end;

if Column.Field = IBDS_ExibeNotasPROVAO_R then
  if (IBDS_ExibeNotasPROVAO_R.AsString <> '') then
   begin
   if IBDS_ExibeNotasPROVAO_R.AsCurrency < 6 then
   begin
   DBGrid_Boletim.Canvas.Font.Color:= clRed;
   DBGrid_Boletim.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
   end else
   DBGrid_Boletim.Canvas.Font.Color:= clBlue;
   DBGrid_Boletim.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
end;

if Column.Field = IBDS_ExibeNotasMEDIA_FINAL then
 if (IBDS_ExibeNotasMEDIA_FINAL.AsString <> '') and (IBDS_ExibeNotasMEDIA_FINAL.AsString <> 'AS') and (IBDS_ExibeNotasMEDIA_FINAL.AsString <> 'AB') and (IBDS_ExibeNotasMEDIA_FINAL.AsString <> 'AR') then
  begin
   if IBDS_ExibeNotasMEDIA_FINAL.AsCurrency < 6 then
   begin
   DBGrid_Boletim.Canvas.Font.Color:= clRed;
   DBGrid_Boletim.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
   end else
   DBGrid_Boletim.Canvas.Font.Color:= clBlue;
   DBGrid_Boletim.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
end;
end;

   end;

procedure TFrmBoletim.Btn_ImprimirClick(Sender: TObject);
begin
  FrmImpressaoBoletim:= TFrmImpressaoBoletim.Create(Application);
try
  FrmImpressaoBoletim.ShowModal;
finally
  FrmImpressaoBoletim.Free;
end;
end;

function TFrmBoletim.ObterNotasEI(var Nota: string): boolean;
var
  Form: TForm; { Variável para o Form }
  LstBox: TListBox; { Variável para o ListBox }
begin
  Result := false; { Por padrão retorna false }
  { Cria o form }
  Form := TForm.Create(Application);
  try
  { Altera algumas propriedades do Form }
  Form.BorderStyle := bsDialog;
  Form.Caption := 'Etapa do ano letivo '+AnoLetivo;
  Form.Position := poMainFormCenter;
  Form.Width := 345;
  Form.Height := 189;
  { Coloca um Label }
 with TLabel.Create(Form) do begin
  Parent := Form;
  Caption := 'Aproveitamento Superior';
  Left := 75;
  Top := 19;
  Font.Name:= 'Arial';
  Font.Size:= 16;
  Font.Style:= [fsBold];
  Font.Color:= clNavy;
  end;
 with TLabel.Create(Form) do begin
  Parent := Form;
  Caption := 'Aproveitamento Bom';
  Left := 75;
  Top := 53;
  Font.Name:= 'Arial';
  Font.Size:= 16;
  Font.Style:= [fsBold];
  Font.Color:= clNavy;
  end;
 with TLabel.Create(Form) do begin
  Parent := Form;
  Caption := 'Aproveitamento Regular';
  Left := 75;
  Top := 86;
  Font.Name:= 'Arial';
  Font.Size:= 16;
  Font.Style:= [fsBold];
  Font.Color:= clNavy;
  end;
  { Coloca o ListBox }
  LstBox := TListBox.Create(Form);
  with LstBox do begin
  Parent := Form;
  Left := 8;
  Top := 16;
  Width := 64;
  Height:= 100;
  TabOrder:= 0;
  BevelInner:= bvLowered;
  BevelKind:= bkTile;
  BevelOuter:= bvRaised;
  BorderStyle:= bsNone;
  Font.Name:= 'Arial';
  Font.Size:= 20;
  Font.Style:= [fsBold];
  Style:= lbStandard;
  MultiSelect:= False;
  // CARREGA ETAPAS
  LstBox.Items.Clear;
  LstBox.Items.Add('AS');
  LstBox.Items.Add('AB');
  LstBox.Items.Add('AR');
  LstBox.ItemIndex:= 0;
  end;
  { Coloca o botão OK }
  with TBitBtn.Create(Form) do begin
  Parent := Form;
  { Posiciona de acordo com a largura do form }
  Left := 122;
  Top := 128;
  Kind := bkOK; { Botão Ok }
  Font.Style:= [fsBold];
  end;
  { Exibe o form e aguarda a ação do usuário. Se for OK... }
  if Form.ShowModal = mrOK then begin
  Nota:= LstBox.Items[LstBox.ItemIndex];
  Result := True;
  end;
  finally
  Form.Free;
  end;
end;

procedure TFrmBoletim.tbSetCapsLock(State: boolean);
begin
if (State and ((GetKeyState(VK_CAPITAL) and 1) = 0)) or
  ((not State) and ((GetKeyState(VK_CAPITAL) and 1) = 1)) then
  begin
  keybd_event(VK_CAPITAL, $45, KEYEVENTF_EXTENDEDKEY or 0, 0);
  keybd_event(VK_CAPITAL, $45, KEYEVENTF_EXTENDEDKEY or KEYEVENTF_KEYUP, 0);
  end;
end;

procedure TFrmBoletim.CheckB_FaltasClick(Sender: TObject);
begin
Reg:=TRegistry.Create;
Reg.CreateKey('GEES\Boletim');
If Reg.OpenKey('GEES\Boletim', True) then
begin
if CheckB_Faltas.Checked = True then
begin
DBGrid_Boletim.Columns[27].Visible:= True;
DBGrid_Boletim.Columns[27].Width:= 42;
Reg.WriteString('Exibe Faltas', 'True');
Reg.CloseKey;
Exit;
end else
DBGrid_Boletim.Columns[27].Visible:= False;
Reg.WriteString('Exibe Faltas', 'False');
Reg.CloseKey;
end;
end;

procedure TFrmBoletim.CheckB_PontosClick(Sender: TObject);
begin
Reg:=TRegistry.Create;
Reg.CreateKey('GEES\Boletim');
If Reg.OpenKey('GEES\Boletim', True) then
begin
if CheckB_Pontos.Checked = True then
begin
DBGrid_Boletim.Columns[28].Visible:= True;
DBGrid_Boletim.Columns[28].Width:= 42;
Reg.WriteString('Exibe Pontos', 'True');
Reg.CloseKey;
Exit;
end else
DBGrid_Boletim.Columns[28].Visible:= False;
Reg.WriteString('Exibe Pontos', 'False');
Reg.CloseKey;
end;
end;

procedure TFrmBoletim.Btn_ProvaoClick(Sender: TObject);
begin
if not IBDS_ExibeNotas.Eof then
repeat
{ seus comandos para a tabela }
Busca_Disciplina:= IBDS_ExibeNotasCOD_NOTA.AsString;
//=== CALCULA MÉDIA FINAL PARA 1,2,3,4,5,6,7,8ª,9ª SERIES =========================
if (DBText3.Caption = 'ENSINO FUNDAMENTAL I') or (DBText3.Caption = 'ENSINO FUNDAMENTAL II') then
begin
IBDS_ExibeNotas.Edit;
// VERIFICA SE TEM NOTA DA MEDIA OU RECUPERAÇÃO
// 1ª ETAPA -----------------------------------------
if DBGrid_Boletim.Fields[6].Text = '' then
begin
  ShowMessage('É necessário média da etapa.');
  Exit;
end else
Etapa_1:= DBGrid_Boletim.Fields[6].Text;
if StrToFloat(Etapa_1) < 6 then
begin
if DBGrid_Boletim.Fields[7].Text = '' then
begin
  ShowMessage('É necessário nota de recuperação.');
  Exit;
end else
Etapa_1:= DBGrid_Boletim.Fields[7].Text;
end;
// 2 ETAPA -----------------------------------------
if DBGrid_Boletim.Fields[11].Text = '' then
begin
  ShowMessage('É necessário média da etapa.');
  Exit;
end else
Etapa_2:= DBGrid_Boletim.Fields[11].Text;
if StrToFloat(Etapa_2) < 6 then
begin
if DBGrid_Boletim.Fields[12].Text = '' then
begin
  ShowMessage('É necessário nota de recuperação.');
  Exit;
end else
Etapa_2:= DBGrid_Boletim.Fields[12].Text;
end;
// 3 ETAPA -----------------------------------------
if DBGrid_Boletim.Fields[16].Text = '' then
begin
  ShowMessage('É necessário média da etapa.');
  Exit;
end else
Etapa_3:= DBGrid_Boletim.Fields[16].Text;
if StrToFloat(Etapa_3) < 6 then
begin
if DBGrid_Boletim.Fields[17].Text = '' then
begin
  ShowMessage('É necessário nota de recuperação.');
  Exit;
end else
Etapa_3:= DBGrid_Boletim.Fields[17].Text;
end;
// 4 ETAPA -----------------------------------------
if DBGrid_Boletim.Fields[21].Text = '' then
begin
  ShowMessage('É necessário média da etapa.');
  Exit;
end else
Etapa_4:= DBGrid_Boletim.Fields[21].Text;
if StrToFloat(Etapa_4) < 6 then
begin
if DBGrid_Boletim.Fields[24].Text = '' then
begin
  ShowMessage('É necessário nota de recuperação.');
  Exit;
end else
Etapa_4:= DBGrid_Boletim.Fields[24].Text;
end;
// PROVÃO -----------------------------------------
if DBGrid_Boletim.Fields[24].Text = '' then
begin
  ShowMessage('É necessário média do provão.');
  Exit;
end;
Provao:= DBGrid_Boletim.Fields[24].Text;
// SOMA AS MEDIAS OU RECUPERAÇÃO MAIS O PROVÃO E DIVIDE POR 4 E ARREDONDA MÉDIA FINAL                                                                   //PROVÃO
ResultFinal:= StrToFloat(CurrToStr(Arredonda5e0((StrToCurr(Etapa_1)+StrToCurr(Etapa_2)+StrToCurr(Etapa_3)+StrToCurr(Etapa_4)+StrToCurr(Provao))/4)));
ResultFinal:= StrToFloat(FormatFloat('#,#0.0',ResultFinal));
DBGrid_Boletim.Fields[25].Text:= FormatFloat('#,#0.0', ResultFinal);
if ResultFinal >= 6 then
begin
if DBText1.Caption = 'MASCULINO' then
begin
DBGrid_Boletim.Fields[26].Text:= 'APROVADO';
end else
DBGrid_Boletim.Fields[26].Text:= 'APROVADA';
end else
if DBText1.Caption = 'MASCULINO' then
begin
DBGrid_Boletim.Fields[24].FocusControl;
DBGrid_Boletim.Fields[26].Text:= 'REPROVADO';
end else
DBGrid_Boletim.Fields[26].Text:= 'REPROVADA';
end else
IBDS_ExibeNotas.Edit;
//=== SALVA AS ALTERAÇÕES ======================================================
Screen.Cursor := crHourGlass;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
IBDS_ExibeNotas.Post;
IBDS_ExibeNotas.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
Screen.Cursor := crDefault;
Seleciona_Notas;
IBDS_ExibeNotas.Locate('COD_NOTA',Busca_Disciplina,[]);
IBDS_ExibeNotas.Next;
until IBDS_ExibeNotas.Eof;
end;

procedure TFrmBoletim.CheckB_BClick(Sender: TObject);
begin
Reg:=TRegistry.Create;
Reg.CreateKey('GEES\Boletim');
If Reg.OpenKey('GEES\Boletim', True) then
begin
if CheckB_B.Checked = True then
begin
Reg.WriteString('Bimestres', 'True');
Reg.CloseKey;
Seleciona_Notas;
Exit;
end else
Reg.WriteString('Bimestres', 'False');
Reg.CloseKey;
Seleciona_Notas;
end;
end;

procedure TFrmBoletim.Btn_MediaMatJardClick(Sender: TObject);
begin
    if not IBDS_ExibeNotas.Eof then
    repeat
 { seus comandos para a tabela }
Busca_Disciplina:= IBDS_ExibeNotasCOD_NOTA.AsString;
//=== CALCULA MÉDIA FINAL PARA MATERNAL E JARDINS ==============================
if (DBText3.Caption = 'EDUCAÇÃO INFANTIL') then
begin
Etapa_1EI:= DBGrid_Boletim.Fields[6].Text;
Etapa_2EI:= DBGrid_Boletim.Fields[11].Text;
Etapa_3EI:= DBGrid_Boletim.Fields[16].Text;
Etapa_4EI:= DBGrid_Boletim.Fields[21].Text;
IBDS_ExibeNotas.Edit;
// VERIFICA SE TEM NOTA DA MEDIA
if (Etapa_1EI = 'AS') and (Etapa_2EI = 'AS') and (Etapa_3EI = 'AS') and (Etapa_4EI = 'AS') then
begin
Media_FinalEI:= 'AS';
end;
if (Etapa_1EI <> 'AS') and (Etapa_2EI <> 'AS') and (Etapa_3EI <> 'AS') and (Etapa_4EI <> 'AS') then
begin
Media_FinalEI:= 'AB';
end;
if (Etapa_1EI = 'AB') and (Etapa_2EI = 'AB') and (Etapa_3EI = 'AB') and (Etapa_4EI = 'AB') then
begin
Media_FinalEI:= 'AB';
end;
if (Etapa_1EI = 'AR') and (Etapa_2EI = 'AR') and (Etapa_3EI = 'AR') and (Etapa_4EI = 'AR') then
begin
Media_FinalEI:= 'AR';
end;
DBGrid_Boletim.Fields[23].Text:= Media_FinalEI;
// OBTEM A MEDIA FINAL
// VERIFICA O SEXO DO ALUNO
if Media_FinalEI = 'AS' then
begin
if DBText1.Caption = 'MASCULINO' then
begin
DBGrid_Boletim.Fields[26].Text:= 'APROVADO';
end else
DBGrid_Boletim.Fields[26].Text:= 'APROVADA';
end else
if DBText1.Caption = 'MASCULINO' then
begin
DBGrid_Boletim.Fields[26].Text:= 'REPROVADO';
end else
DBGrid_Boletim.Fields[26].Text:= 'REPROVADA';
// SALVA ALTERAÇÕES
Screen.Cursor := crHourGlass;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
IBDS_ExibeNotas.Post;
IBDS_ExibeNotas.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
Screen.Cursor := crDefault;
Seleciona_Notas;
IBDS_ExibeNotas.Locate('COD_NOTA',Busca_Disciplina,[]);
IBDS_ExibeNotas.Next;
end;
until IBDS_ExibeNotas.Eof;
end;

procedure TFrmBoletim.Btn_MediaFinClick(Sender: TObject);
begin
if not IBDS_ExibeNotas.Eof then
repeat
{ seus comandos para a tabela }
Busca_Disciplina:= IBDS_ExibeNotasCOD_NOTA.AsString;
//=== CALCULA MÉDIA FINAL PARA 1,2,3,4,5,6,7,8ª,9ª SERIES =========================
if (DBText3.Caption = 'ENSINO FUNDAMENTAL I') or (DBText3.Caption = 'ENSINO FUNDAMENTAL II') then
begin
IBDS_ExibeNotas.Edit;
// VERIFICA SE TEM NOTA DA MEDIA OU RECUPERAÇÃO
// 1ª ETAPA -----------------------------------------
if DBGrid_Boletim.Fields[6].Text = '' then
begin
  ShowMessage('É necessário média da etapa.');
  Exit;
end else
Etapa_1:= DBGrid_Boletim.Fields[6].Text;
if StrToFloat(Etapa_1) < 6 then
begin
if DBGrid_Boletim.Fields[7].Text = '' then
begin
  ShowMessage('É necessário nota de recuperação.');
  Exit;
end else
Etapa_1:= DBGrid_Boletim.Fields[7].Text;
end;
// 2 ETAPA -----------------------------------------
if DBGrid_Boletim.Fields[11].Text = '' then
begin
  ShowMessage('É necessário média da etapa.');
  Exit;
end else
Etapa_2:= DBGrid_Boletim.Fields[11].Text;
if StrToFloat(Etapa_2) < 6 then
begin
if DBGrid_Boletim.Fields[12].Text = '' then
begin
  ShowMessage('É necessário nota de recuperação.');
  Exit;
end else
Etapa_2:= DBGrid_Boletim.Fields[12].Text;
end;
// 3 ETAPA -----------------------------------------
if DBGrid_Boletim.Fields[16].Text = '' then
begin
  ShowMessage('É necessário média da etapa.');
  Exit;
end else
Etapa_3:= DBGrid_Boletim.Fields[16].Text;
if StrToFloat(Etapa_3) < 6 then
begin
if DBGrid_Boletim.Fields[17].Text = '' then
begin
  ShowMessage('É necessário nota de recuperação.');
  Exit;
end else
Etapa_3:= DBGrid_Boletim.Fields[17].Text;
end;
// 4 ETAPA -----------------------------------------
if DBGrid_Boletim.Fields[21].Text = '' then
begin
  ShowMessage('É necessário média da etapa.');
  Exit;
end else
Etapa_4:= DBGrid_Boletim.Fields[21].Text;
if StrToFloat(Etapa_4) < 6 then
begin
if DBGrid_Boletim.Fields[22].Text = '' then
begin
  ShowMessage('É necessário nota de recuperação.');
  Exit;
end else
Etapa_4:= DBGrid_Boletim.Fields[22].Text;
end;
// SOMA AS MEDIAS OU RECUPERAÇÃO E DIVIDE POR 4 E ARREDONDA MÉDIA
Media_Final:= StrToFloat(CurrToStr(Arredonda5e0((StrToCurr(Etapa_1)+StrToCurr(Etapa_2)+StrToCurr(Etapa_3)+StrToCurr(Etapa_4))/4)));
DBGrid_Boletim.Fields[23].Text:= FormatFloat('#,#0.0', Media_Final);
// VERIFICA O SEXO DO ALUNO
if Media_Final >= 6 then
begin
if DBText1.Caption = 'MASCULINO' then
begin
DBGrid_Boletim.Fields[26].Text:= 'APROVADO';
end else
DBGrid_Boletim.Fields[26].Text:= 'APROVADA';
end else
if DBText1.Caption = 'MASCULINO' then
begin
DBGrid_Boletim.Fields[24].FocusControl;
DBGrid_Boletim.Fields[26].Text:= 'REPROVADO';
end else
DBGrid_Boletim.Fields[26].Text:= 'REPROVADA';
end else
IBDS_ExibeNotas.Edit;
//=== SALVA AS ALTERAÇÕES ======================================================
Screen.Cursor := crHourGlass;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
IBDS_ExibeNotas.Post;
IBDS_ExibeNotas.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
Screen.Cursor := crDefault;
Seleciona_Notas;
IBDS_ExibeNotas.Locate('COD_NOTA',Busca_Disciplina,[]);
IBDS_ExibeNotas.Next;
until IBDS_ExibeNotas.Eof;
end;

procedure TFrmBoletim.Desistente1Click(Sender: TObject);
begin
 if not IBQuery_Disciplinas.Eof then
    repeat
 { seus comandos para a tabela }
IBDS_ExibeNotas.Append;
   IBDS_ExibeNotasDISCIPLINA.AsString:= IBQuery_DisciplinasDISCIPLINA.AsString;
   Screen.Cursor := crHourGlass;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
IBDS_ExibeNotas.Post;
IBDS_ExibeNotas.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
Screen.Cursor := crDefault;
   Seleciona_Notas;
   IBQuery_Disciplinas.Next;
   IBDS_ExibeNotas.Next;
   until IBQuery_Disciplinas.Eof;
end;

function TFrmBoletim.Arredonda5e0(Valores: Currency): Currency;
var
  Valor1, Valor2, Valor3 : String;
  Valor4 : Integer;
begin
Valor1 := CurrToStr(Valores);
Valor2 := CurrToStr(Trunc(StrToCurr(Valor1)));
Valor3 := CurrToStr(Trunc(Frac(StrToCurr(Valor1))*1000));
Valor4 := Length(Valor3);
If Valor4 = 0 then
begin
Result := StrToCurr(Valor2);
end
else
begin
If Valor4 = 1 then
Valor3 := '00' + Valor3;
If Valor4 = 2 then
Valor3 := '0' + Valor3;
Valor4 := StrToInt(Copy(Valor3, 1, 3));
If (Valor4 <= 250) then
begin
Result := StrToCurr(Valor2 + ',0');
end
else
begin
If (Valor4 < 750) then
begin
Result := StrToCurr(Valor2 + ',5');
end
else
begin
Result := StrToCurr(Valor2) + 1;
end;
end;
end;
end;

procedure TFrmBoletim.ObterMatriculas;
begin
  IBQueryNumMatricula.Close;
  IBQueryNumMatricula.SQL.Clear;
  IBQueryNumMatricula.SQL.Add('select MATRICULA, ANO_LETIVO from BOLETIM');
  IBQueryNumMatricula.SQL.Add(' where ANO_LETIVO =:ALetivo ');
  IBQueryNumMatricula.ParamByName('ALetivo').AsString := AnoLetivo;
  IBQueryNumMatricula.SQL.Add(' order by MATRICULA');
  IBQueryNumMatricula.Prepare;
  IBQueryNumMatricula.Open;
end;

procedure TFrmBoletim.CarregaBoletimPorNome;
begin
  if Edit1.Text <> '' then
  begin
    Screen.Cursor := crHourglass;
    Edit2.Text := '';
  if not Dm.IBDS_BOLETIM.Locate('NOME_ALUNO', Edit1.Text, []) then
  begin
    //ShowMessage('O(A) aluno(a) "' + Edit1.Text + '" está incompleto ou não matriculado(a). Tente novamente.');
    Screen.Cursor := crDefault;
    Edit1.SetFocus;
  end
  else
    Seleciona_Notas;
  Screen.Cursor := crDefault;
  end;
end;

procedure TFrmBoletim.CheckB_PClick(Sender: TObject);
begin
Reg:=TRegistry.Create;
Reg.CreateKey('GEES\Boletim');
If Reg.OpenKey('GEES\Boletim', True) then
begin
if CheckB_P.Checked = True then
begin
Reg.WriteString('Provão', 'True');
Reg.CloseKey;
Seleciona_Notas;
Exit;
end else
Reg.WriteString('Provão', 'False');
Reg.CloseKey;
Seleciona_Notas;
end;
end;

end.
