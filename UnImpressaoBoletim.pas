unit UnImpressaoBoletim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,UnDm, DBCtrls, StdCtrls, Buttons, DB, IBCustomDataSet, IBQuery,
  ExtCtrls, Grids, DBGrids;

type
  TFrmImpressaoBoletim = class(TForm)
    Panel1: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    CBox_Selecao: TComboBox;
    Ds_BolImpressao: TDataSource;
    IBQuery_BolImpressao: TIBQuery;
    Btn_Imprimir: TBitBtn;
    Btn_Fechar: TBitBtn;
    DBGrid_ListaBoletim: TDBGrid;
    IBQuery_BolImpressaoCOD_BOLE: TIntegerField;
    IBQuery_BolImpressaoMATRICULA: TIBStringField;
    IBQuery_BolImpressaoNOME_ALUNO: TIBStringField;
    IBQuery_BolImpressaoANO_LETIVO: TIBStringField;
    IBQuery_BolImpressaoCURSO: TIBStringField;
    IBQuery_BolImpressaoSERIE: TIBStringField;
    IBQuery_BolImpressaoTURNO: TIBStringField;
    IBQuery_BolImpressaoTURMA: TIBStringField;
    IBQuery_BolImpressaoSEXO: TIBStringField;
    IBQuery_BolImpressaoDATA_NASCIMENTO: TDateTimeField;
    IBQuery_BolImpressaoNOME_PAI: TIBStringField;
    IBQuery_BolImpressaoNOME_MAE: TIBStringField;
    IBQuery_BolImpressaoNOME_RESP: TIBStringField;
    IBQuery_BolImpressaoTEL_RESP: TIBStringField;
    IBQuery_BolImpressaoCPF_RESP: TIBStringField;
    CBox_Turno: TComboBox;
    CBox_Turma: TComboBox;
    Label1: TLabel;
    label2: TLabel;
    CBox: TComboBox;
    procedure CBox_TurmaEnter(Sender: TObject);
    procedure CBox_TurnoEnter(Sender: TObject);
    procedure CBoxEnter(Sender: TObject);
    procedure Btn_FecharClick(Sender: TObject);
    procedure DBGrid_ListaBoletimKeyPress(Sender: TObject; var Key: Char);
    procedure CBoxKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure CBox_SelecaoKeyPress(Sender: TObject; var Key: Char);
    procedure CBox_TurnoKeyPress(Sender: TObject; var Key: Char);
    procedure CBox_TurmaKeyPress(Sender: TObject; var Key: Char);
    procedure Btn_ImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
  private
    { Private declarations }
    procedure Lista;
  public
    { Public declarations }
    function ObterEtapa(var EtapaAtual: string): boolean;

  end;

var
  FrmImpressaoBoletim: TFrmImpressaoBoletim;
  EtapaAtual, Etapa: String;

implementation

uses UnPrincipal, UnBoletim, UnRelBoletim, UnLocalizar, UnDmSeleciona;

{$R *.dfm}

procedure TFrmImpressaoBoletim.Btn_FecharClick(Sender: TObject);
begin
Dm.IBDS_BOLETIM.Cancel;
Dm.IBDS_BOLETIM.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
Close;
end;

procedure TFrmImpressaoBoletim.DBGrid_ListaBoletimKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
if DBGrid_ListaBoletim.Fields[0].Text <> '' then
begin
Btn_Imprimir.SetFocus;
end;
end;
end;

procedure TFrmImpressaoBoletim.CBoxEnter(Sender: TObject);
begin
if CBox_Selecao.Text = 'ALUNO(A)' then
begin
with DmSeleciona.IBQ_AnoLetivo do
 begin
 Close;
 UnPrepare;
 SQL.Clear;
 SQL.Add('select distinct NOME_ALUNO from BOLETIM ');
 SQL.Add( 'where ANO_LETIVO = '+ QuotedStr(AnoLetivo));
 SQL.Add(' order by NOME_ALUNO');
 Prepare;
 Open;
// Adiciona dados ao combobox
CBox.Clear;
While Not Eof do
  begin
  CBox.Items.Add(FieldByName('NOME_ALUNO').AsString);
  Next;
  end;
end;
Exit;
end else
if CBox_Selecao.Text = 'CURSO' then
begin
with DmSeleciona.IBQ_AnoLetivo do
 begin
 Close;
 UnPrepare;
 SQL.Clear;
 SQL.Add('select distinct CURSO from BOLETIM order by CURSO');
 Prepare;
 Open;
// Adiciona dados ao combobox
CBox.Clear;
While Not Eof do
  begin
  CBox.Items.Add(FieldByName('CURSO').AsString);
  Next;
  end;
end;
Exit;
end else
if CBox_Selecao.Text = 'SÉRIE' then
begin
with DmSeleciona.IBQ_AnoLetivo do
 begin
 Close;
 UnPrepare;
 SQL.Clear;
 SQL.Add('select distinct SERIE from BOLETIM order by SERIE');
 Prepare;
 Open;
// Adiciona dados ao combobox
CBox.Clear;
While Not Eof do
  begin
  CBox.Items.Add(FieldByName('SERIE').AsString);
  Next;
  end;
end;
Exit;
end else
if CBox_Selecao.Text = 'MATRÍCULA' then
begin
CBox.Clear;
CBox.SetFocus;
end;
end;

procedure TFrmImpressaoBoletim.CBoxKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
if CBox_Selecao.Text = 'SÉRIE' then
begin
CBox_Turno.SetFocus;
end else
Screen.Cursor := crHourglass;
if CBox_Selecao.Text = 'ALUNO(A)' then
begin
 IBQuery_BolImpressao.Close;
 IBQuery_BolImpressao.SQL.Clear;
 IBQuery_BolImpressao.SQL.Add('select * from BOLETIM ');
 IBQuery_BolImpressao.SQL.Add('where NOME_ALUNO =:Alun and ANO_LETIVO = '+#39+AnoLetivo+#39);
 IBQuery_BolImpressao.ParamByName('Alun').AsString:= CBox.Text;
 IBQuery_BolImpressao.SQL.Add('order by NOME_ALUNO ,SERIE');
 IBQuery_BolImpressao.Prepare;
 IBQuery_BolImpressao.Open;
 Lista;
end else
if CBox_Selecao.Text = 'CURSO' then
begin
 IBQuery_BolImpressao.Close;
 IBQuery_BolImpressao.SQL.Clear;
 IBQuery_BolImpressao.SQL.Add('select * from BOLETIM ');
 IBQuery_BolImpressao.SQL.Add('where CURSO =:Curs and ANO_LETIVO = '+#39+AnoLetivo+#39);
 IBQuery_BolImpressao.ParamByName('Curs').AsString:= CBox.Text;
 IBQuery_BolImpressao.SQL.Add('order by SERIE, NOME_ALUNO');
 IBQuery_BolImpressao.Prepare;
 IBQuery_BolImpressao.Open;
 Lista;
end else
if CBox_Selecao.Text = 'MATRÍCULA' then
begin
CBox.Text:= FrmPrincipal.RetZero(CBox.Text, 15);
CBox.Text:= FrmLocalizar.FormataMat(CBox.Text);
 IBQuery_BolImpressao.Close;
 IBQuery_BolImpressao.SQL.Clear;
 IBQuery_BolImpressao.SQL.Add('select * from BOLETIM ');
 IBQuery_BolImpressao.SQL.Add('where MATRICULA =:Matr and ANO_LETIVO = '+#39+AnoLetivo+#39);
 IBQuery_BolImpressao.ParamByName('Matr').AsString:= CBox.Text;
 IBQuery_BolImpressao.SQL.Add('order by SERIE, NOME_ALUNO');
 IBQuery_BolImpressao.Prepare;
 IBQuery_BolImpressao.Open;
 Lista;
end;
end;
 Screen.Cursor := crDefault;
end;

procedure TFrmImpressaoBoletim.FormShow(Sender: TObject);
begin
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmImpressaoBoletim.Caption:= FrmImpressaoBoletim.Caption;
Exit;
end else
FrmImpressaoBoletim.Caption:= FrmImpressaoBoletim.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end;

procedure TFrmImpressaoBoletim.CBox_SelecaoKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
  CBox.SetFocus;
  end;
end;

procedure TFrmImpressaoBoletim.CBox_TurnoEnter(Sender: TObject);
begin
with DmSeleciona.IBQ_AnoLetivo do
 begin
 Close;
 UnPrepare;
 SQL.Clear;
 SQL.Add('select distinct TURNO from BOLETIM ');
 SQL.Add('where ANO_LETIVO = '+ QuotedStr(AnoLetivo));
 SQL.Add(' order by TURNO');
 Prepare;
 Open;
// Adiciona dados ao combobox
CBox_Turno.Clear;
While Not Eof do
  begin
  CBox_Turno.Items.Add(FieldByName('TURNO').AsString);
  Next;
  end;
end;
end;

procedure TFrmImpressaoBoletim.CBox_TurnoKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
  CBox_Turma.SetFocus;
  end;
end;

procedure TFrmImpressaoBoletim.CBox_TurmaEnter(Sender: TObject);
begin
with DmSeleciona.IBQ_AnoLetivo do
 begin
 Close;
 UnPrepare;
 SQL.Clear;
 SQL.Add('select distinct TURMA from BOLETIM ');
 SQL.Add('where ANO_LETIVO = '+ QuotedStr(AnoLetivo));
 SQL.Add(' order by TURNO');
 Prepare;
 Open;
// Adiciona dados ao combobox
CBox_Turma.Clear;
While Not Eof do
  begin
  CBox_Turma.Items.Add(FieldByName('TURMA').AsString);
  Next;
  end;
end;
end;

procedure TFrmImpressaoBoletim.CBox_TurmaKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #13 then
  begin
  Key := #0;{ Suprime o som }
  { escreva aqui os seus comandos }
Screen.Cursor := crHourglass;
if CBox_Selecao.Text = 'SÉRIE' then
begin
 IBQuery_BolImpressao.Close;
 IBQuery_BolImpressao.SQL.Clear;
 IBQuery_BolImpressao.SQL.Add('select * from BOLETIM ');
 IBQuery_BolImpressao.SQL.Add('where SERIE =:Seri and TURNO =:Turn and TURMA =:Turm and ANO_LETIVO = '+#39+AnoLetivo+#39);
 IBQuery_BolImpressao.ParamByName('Seri').AsString:= CBox.Text;
 IBQuery_BolImpressao.ParamByName('Turn').AsString:= CBox_Turno.Text;
 IBQuery_BolImpressao.ParamByName('Turm').AsString:= CBox_Turma.Text;
 IBQuery_BolImpressao.SQL.Add('order by NOME_ALUNO, SERIE, CURSO, TURNO, TURMA');
 IBQuery_BolImpressao.Prepare;
 IBQuery_BolImpressao.Open;
 Lista;
 Screen.Cursor := crDefault;
   DBGrid_ListaBoletim.SetFocus;
end;
end;
end;

procedure TFrmImpressaoBoletim.Lista;
begin
if DBGrid_ListaBoletim.Fields[0].Text <> '' then
begin
Btn_Imprimir.Enabled:= True;
DBGrid_ListaBoletim.SetFocus;
Exit;
end else
Btn_Imprimir.Enabled:= False;
end;

procedure TFrmImpressaoBoletim.Btn_ImprimirClick(Sender: TObject);
begin
try
 FrmRelBoletim:=TFrmRelBoletim.Create(nil);
 FrmRelBoletim.QuickRep1.PreviewModal;
finally
 FrmRelBoletim.Release;
end;
end;

procedure TFrmImpressaoBoletim.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=Cafree;
Etapa:= '';
end;

function TFrmImpressaoBoletim.ObterEtapa(var EtapaAtual: string): boolean;
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
  Form.Caption := 'Etapa do ano letivo '+AnoLetivo;
  Form.Position := poMainFormCenter;
  Form.Width := 274;
  Form.Height := 124;
  { Coloca um Label }
 with TLabel.Create(Form) do begin
  Parent := Form;
  Caption := 'Informe a etapa para impressão:';
  Left := 16;
  Top := 16;
  end;
  { Coloca o Edit }
  Medt1 := TComboBox.Create(Form);
  with Medt1 do begin
  Parent := Form;
  Left := 16;
  Top := 30;
  Width := 154;
  TabOrder:= 0;
  BevelInner:= bvLowered;
  BevelKind:= bkTile;
  BevelOuter:= bvRaised;
  BorderStyle:= bsNone;
  Font.Size:= 24;
  Font.Style:= [fsBold];
  CharCase:= ecNormal;
  Style:= csDropDownList;
  // CARREGA ETAPAS
  Medt1.Items.Clear;
  Medt1.Items.Add('1ª Etapa');
  Medt1.Items.Add('2ª Etapa');
  Medt1.Items.Add('3ª Etapa');
  Medt1.Items.Add('4ª Etapa');
  end;
  { Coloca o botão OK }
  with TBitBtn.Create(Form) do begin
  Parent := Form;
  { Posiciona de acordo com a largura do form }
  Left := 178;
  Top := 41;
  Kind := bkOK; { Botão Ok }
  Font.Style:= [fsBold];
  end;
  { Exibe o form e aguarda a ação do usuário. Se for OK... }
  if Form.ShowModal = mrOK then begin
  EtapaAtual:= Medt1.Text;
  Result := True;
  end;
  finally
  Form.Free;
  end;
end;

procedure TFrmImpressaoBoletim.FormCreate(Sender: TObject);
begin
if ObterEtapa(EtapaAtual) then
begin
Etapa:= EtapaAtual;
end;
end;

procedure TFrmImpressaoBoletim.FormPaint(Sender: TObject);
begin
if Etapa = '' then
begin
Close;
end;
end;

end.
