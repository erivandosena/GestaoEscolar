unit UnAta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Buttons, DB, DateUtils, ComCtrls,
  ExtCtrls, DbPrgrss, Mask, DBCtrls, ImgList, RXDBCtrl, IBCustomDataSet, IBQuery,
  Animate, GIFCtrl, ComObj, Gauges;

type
 // TClient = class(TAutoIntfObject, IDataSetCallback)
  TFrmAta = class(TForm)
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBGrid_Relacao: TDBGrid;
    CBox_Serie: TComboBox;
    CBox_Turma: TComboBox;
    CBox_Turno: TComboBox;
    Btn_Relacionar: TBitBtn;
    Btn_Imprimir: TBitBtn;
    BtnFechar: TBitBtn;
    CBox_AnoLetivo: TComboBox;
    Label1: TLabel;
    CBox_Unifica: TCheckBox;
    DBDisciplinas: TDBGrid;
    DBGrid1: TDBGrid;
    DSConsulta: TDataSource;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DataSource1: TDataSource;
    DBGrid4: TDBGrid;
    DataSource2: TDataSource;
    IBConsulta: TIBQuery;
    PanelTempo: TPanel;
    LabelTempo: TLabel;
    IBDivisor: TIBQuery;
    pbAplicando: TGauge;
    procedure CBox_TurnoChange(Sender: TObject);
    procedure CBox_TurnoEnter(Sender: TObject);
    procedure CBox_TurmaEnter(Sender: TObject);
    procedure CBox_SerieEnter(Sender: TObject);
    procedure CBox_UnificaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Btn_RelacionarClick(Sender: TObject);
    procedure Btn_ImprimirClick(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CriarTabelaTemporaria;

  end;

var
  FrmAta: TFrmAta;
  Campos : TField;
  Gera: Integer;
  str, N1,N2,N3,ResulatadoF: String;

implementation

uses UnDm, UnPrincipal, UnRelAta, UnBoletim, UnDmSeleciona;

{$R *.dfm}

{ TFrmAta }

procedure TFrmAta.CBox_UnificaClick(Sender: TObject);
begin
if CBox_Unifica.Checked = True then
begin
with IBConsulta do
begin
Screen.Cursor := crSQLWait;
Close;
UnPrepare;
SQL.Clear;
SQL.Add('select distinct DISCIPLINA from MATERIAS A');
SQL.Add('where DISTRIBUIDA = '+#39+'NÃO'+#39+' and UNIFICACAO is not null and exists ( select distinct * from NOTAS where ANO_LETIVO = '+#39+CBox_AnoLetivo.Text+#39+' and SERIE = '+#39+CBox_Serie.Text+#39+' and TURMA = '+#39+CBox_Turma.Text+#39+' and TURNO = '+#39+CBox_Turno.Text+#39+' and DISCIPLINA = A.DISCIPLINA)');
SQL.Add('order by DISCIPLINA desc');
Prepare;
Open;
end;
Screen.Cursor := crDefault;
Exit;
end else
IBConsulta.Close;
Screen.Cursor := crDefault;
end;

procedure TFrmAta.CBox_TurnoChange(Sender: TObject);
begin
Btn_Imprimir.Enabled:= False;
with Dm.IBConsulta1 do
begin
Screen.Cursor := crSQLWait;
Close;
UnPrepare;
SQL.Clear;
SQL.Add('select distinct DISCIPLINA from MATERIAS A');
SQL.Add('where DISTRIBUIDA = '+#39+'SIM'+#39+' and not exists ( select * from NOTAS where ANO_LETIVO = '+#39+CBox_AnoLetivo.Text+#39+' and SERIE = '+#39+CBox_Serie.Text+#39+' and TURMA = '+#39+CBox_Turma.Text+#39+' and TURNO = '+#39+CBox_Turno.Text+#39+' and DISCIPLINA = A.DISCIPLINA)');
SQL.Add('order by DISCIPLINA desc');
Prepare;
Open;
end;
if  Dm.DSConsulta1.DataSet.Fields[0].Text = '' then
begin
CBox_Unifica.Checked:= False;
CBox_Unifica.Enabled:= False;
Screen.Cursor := crDefault;
Btn_Relacionar.SetFocus;
Exit;
end else
CBox_Unifica.Enabled:= True;
CBox_UnificaClick(Nil);
CBox_Unifica.Checked:= True;
Btn_Relacionar.SetFocus;
Screen.Cursor := crDefault;
end;

procedure TFrmAta.CBox_TurnoEnter(Sender: TObject);
begin
with DmSeleciona.IBQ_AnoLetivo do
 begin
 Close;
 UnPrepare;
 SQL.Clear;
 SQL.Add('select distinct TURNO from MATRICUL ');
 SQL.Add('where ANO_LETIVO = '+#39+CBox_AnoLetivo.Text+#39+' and SERIE = '+#39+CBox_Serie.Text+#39+' and TURMA = '+#39+CBox_Turma.Text+#39);
 SQL.Add('order by TURNO');
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

procedure TFrmAta.CBox_TurmaEnter(Sender: TObject);
begin
with DmSeleciona.IBQ_AnoLetivo do
 begin
 Close;
 UnPrepare;
 SQL.Clear;
 SQL.Add('select distinct TURMA from MATRICUL ');
 SQL.Add('where ANO_LETIVO = '+#39+CBox_AnoLetivo.Text+#39+' and SERIE = '+#39+CBox_Serie.Text+#39);
 SQL.Add('order by TURMA');
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

procedure TFrmAta.CBox_SerieEnter(Sender: TObject);
begin
with DmSeleciona.IBQ_AnoLetivo do
 begin
 Close;
 UnPrepare;
 SQL.Clear;
 SQL.Add('select distinct SERIE from MATRICUL ');
 SQL.Add('where ANO_LETIVO = '+#39+CBox_AnoLetivo.Text+#39);
 SQL.Add('order by SERIE');
 Prepare;
 Open;
// Adiciona dados ao combobox
CBox_Serie.Clear;
While Not Eof do
  begin
  CBox_Serie.Items.Add(FieldByName('SERIE').AsString);
  Next;
  end;
end;
end;

procedure TFrmAta.CriarTabelaTemporaria;
begin
(* cria estrutura do ClientDataSet *)
  with Dm do
  begin
    ClientDS_Ata.Close;
    ClientDS_Ata.Fields.Clear;
    ClientDS_Ata.FieldDefs.Clear;

    (* coluna COD_NOTA *)
(*    Campos  := TIntegerField.Create(self);
    Campos.FieldName := 'COD_NOTA';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'ID Média';
    Campos.Visible:= False;
*)
    (* coluna COD_BOLE *)
    Campos  := TIntegerField.Create(self);
    Campos.FieldName := 'COD_BOLE';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'ID Boletim';
    Campos.Visible:= False;

    (* coluna MATRICULA *)
    Campos  := TStringField.Create(self);
    Campos.FieldName := 'MATRICULA';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'Matrícula';
    Campos.Visible:= False;

    (* coluna NOME_ALUNO *)
    Campos  := TStringField.Create(self);
    Campos.FieldName := 'NOME_ALUNO';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'ALUNO(A)';
    Campos.Size:= 51;

    //* coluna união de discuplinas

if CBox_Unifica.Checked = True then
begin
Dm.IBConsulta1.First;
if not Dm.IBConsulta1.Eof then
repeat
// meus comandos
while not(Dm.IBConsulta1.Eof) do
begin
      Campos := TStringField.Create(Self);
      str:= StringReplace(Dm.IBConsulta1.fieldbyname('DISCIPLINA').Value,'-',' ', [rfReplaceAll]);
      str:= StringReplace(str,'/',' ', [rfReplaceAll]);
      Campos.FieldName := FrmPrincipal.EliminaBrancos(FrmPrincipal.CheckDateFormat(FrmPrincipal.AnsiToAscii(str)));
      Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
      Campos.Index := ClientDS_Ata.FieldCount;
      Campos.DataSet := ClientDS_Ata;
      Campos.Required := False;
     // Campos.FieldKind := fkInternalCalc;
      Campos.DisplayLabel := FrmPrincipal.AbreviarNome(str);
      Campos.Alignment:= taCenter;
      Campos.Size:= 5;
      Campos.DisplayWidth:= 5;

 Dm.IBConsulta1.Next;
end;
until Dm.IBConsulta1.Eof;
Dm.IBConsulta1.First;
end;

    // colunas DISCIPLINAS
    IBDS_DiscAta.First;
    while not IBDS_DiscAta.Eof do
    begin
      Campos := TStringField.Create(Self);
      str:= StringReplace(IBDS_DiscAta.Fields[0].Value,'-',' ', [rfReplaceAll]);
      str:= StringReplace(str,'/',' ', [rfReplaceAll]);
      Campos.FieldName := FrmPrincipal.EliminaBrancos(FrmPrincipal.CheckDateFormat(FrmPrincipal.AnsiToAscii(str)));
      Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
      Campos.Index := ClientDS_Ata.FieldCount;
      Campos.DataSet := ClientDS_Ata;
      Campos.Required := False;
     // Campos.FieldKind := fkInternalCalc;
      Campos.DisplayLabel := FrmPrincipal.AbreviarNome(str);
      Campos.Alignment:= taCenter;
      Campos.Size:= 5;
      Campos.DisplayWidth:= 5;

if CBox_Unifica.Checked = True then
begin
IBConsulta.Locate('DISCIPLINA', IBDS_DiscAta.FieldByName('DISCIPLINA').Value, []);
str:= StringReplace(IBConsulta.FieldByName('DISCIPLINA').Value,'-',' ', [rfReplaceAll]);
str:= StringReplace(str,'/',' ', [rfReplaceAll]);
if  IBDS_DiscAta.FieldByName('DISCIPLINA').Value = IBConsulta.FieldByName('DISCIPLINA').Value then
begin
Campos.Visible:= False;
end;
end;

IBDS_DiscAta.Next;
end;

with Dm do
  begin
    (* coluna SITUACAO_FINAL *)
    Campos := TStringField.Create(Self);
    Campos.FieldName := 'SITUACAO_FINAL';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'SITUAÇÃO FINAL';
    Campos.Size:= 12;

    (* coluna CURSO *)
    Campos := TStringField.Create(Self);
    Campos.FieldName := 'CURSO';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'CURSO';
    Campos.Size:= 22;
    Campos.Visible:= False;

    (* coluna SERIE *)
    Campos := TStringField.Create(Self);
    Campos.FieldName := 'SERIE';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'SÉRIE';
    Campos.Size:= 30;
    Campos.Visible:= False;

    (* coluna TURMA *)
    Campos := TStringField.Create(Self);
    Campos.FieldName := 'TURMA';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'TURMA';
    Campos.Size:= 10;
    Campos.Visible:= False;

    (* coluna TURNO *)
    Campos := TStringField.Create(Self);
    Campos.FieldName := 'TURNO';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'TURNO';
    Campos.Size:= 5;
    Campos.Visible:= False;

    (* coluna ANO_LETIVO *)
    Campos := TStringField.Create(Self);
    Campos.FieldName := 'ANO_LETIVO';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'ANO LETIVO';
    Campos.Size:= 4;
    Campos.Visible:= False;

  end;
    (* cria o ClientDataSet em memória e indexa *)
    ClientDS_Ata.CreateDataSet;
    ClientDS_Ata.AddIndex('cliente','COD_BOLE',[],'','',0);
    ClientDS_Ata.IndexName := 'cliente';
    ClientDS_Ata.IndexFieldNames:= 'NOME_ALUNO';

    (* adiciona os dados cruzados baseado na consulta *)
    IBDS_NotAta.First;
    while not IBDS_NotAta.Eof do
    begin
      if not ClientDS_Ata.Locate('COD_BOLE', IBDS_NotAta.FieldByName('COD_BOLE').Value,[])
   and
  Dm.IBDS_MatAta.Locate('MATRICULA', IBDS_NotAta.FieldByName('MATRICULA').Value,[])
 // Dm.IBDS_MatAta.Locate('MATRICULA;ANO_LETIVO',VarArrayOf([IBDS_NotAta.FieldByName('MATRICULA').Value,IBDS_NotAta.FieldByName('ANO_LETIVO').Value]), [])
      then
      begin
        ClientDS_Ata.Append;
        //ClientDS_Ata.FieldByName('COD_NOTA').AsInteger := IBDS_NotAta.FieldByName('COD_NOTA').AsInteger;
        ClientDS_Ata.FieldByName('COD_BOLE').AsInteger := IBDS_NotAta.FieldByName('COD_BOLE').AsInteger;
        ClientDS_Ata.FieldByName('MATRICULA').AsString := IBDS_NotAta.FieldByName('MATRICULA').AsString;
        ClientDS_Ata.FieldByName('NOME_ALUNO').AsString := IBDS_MatAta.FieldByName('NOME_ALUNO').AsString;
      end else
ClientDS_Ata.Edit;
ClientDS_Ata.FieldByName('CURSO').AsString:= IBDS_MatAta.FieldByName('CURSO').AsString;
ClientDS_Ata.FieldByName('SERIE').AsString:= IBDS_MatAta.FieldByName('SERIE').AsString;
ClientDS_Ata.FieldByName('TURMA').AsString:= IBDS_MatAta.FieldByName('TURMA').AsString;
ClientDS_Ata.FieldByName('TURNO').AsString:= IBDS_MatAta.FieldByName('TURNO').AsString;
ClientDS_Ata.FieldByName('ANO_LETIVO').AsString:= IBDS_MatAta.FieldByName('ANO_LETIVO').AsString;

str:= StringReplace(IBDS_NotAta.FieldByName('DISCIPLINA').AsString,'-',' ', [rfReplaceAll]);
str:= StringReplace(str,'/',' ', [rfReplaceAll]);

N1:= IBDS_NotAta.FieldByName('MEDIA_FINAL').AsString;
N2:= IBDS_NotAta.FieldByName('PROVAO').AsString;
N3:= IBDS_NotAta.FieldByName('PROVAO_R').AsString;
if N1 = '' then
begin
N1:= '0';
end;
if N2 = '' then
begin
N2:= '0';
end;
if N3 = '' then
begin
N3:= '0';
end;

if ( StrToFloat(N1) >= StrToFloat(N2) ) and ( StrToFloat(N1) >= StrToFloat(N3) )  then
ClientDS_Ata.FieldByName(FrmPrincipal.EliminaBrancos(FrmPrincipal.CheckDateFormat(FrmPrincipal.AnsiToAscii(str)))).AsString:= N1
else if ( StrToFloat(N2) >= StrToFloat(N1) ) and  ( StrToFloat(N2) >= StrToFloat(N3) ) then
ClientDS_Ata.FieldByName(FrmPrincipal.EliminaBrancos(FrmPrincipal.CheckDateFormat(FrmPrincipal.AnsiToAscii(str)))).AsString:= N2
else
ClientDS_Ata.FieldByName(FrmPrincipal.EliminaBrancos(FrmPrincipal.CheckDateFormat(FrmPrincipal.AnsiToAscii(str)))).AsString:= N3;

if ClientDS_Ata.FieldByName(FrmPrincipal.EliminaBrancos(FrmPrincipal.CheckDateFormat(FrmPrincipal.AnsiToAscii(str)))).AsString = '0' then
begin
ClientDS_Ata.FieldByName(FrmPrincipal.EliminaBrancos(FrmPrincipal.CheckDateFormat(FrmPrincipal.AnsiToAscii(str)))).AsString:= '';
end;


if ( StrToFloat(N1) >= StrToFloat(N2) ) and ( StrToFloat(N1) >= StrToFloat(N3) )  then
 ResulatadoF:= N1
else if ( StrToFloat(N2) >= StrToFloat(N1) ) and  ( StrToFloat(N2) >= StrToFloat(N3) ) then
 ResulatadoF:= N2
else
 ResulatadoF:= N3;

//if ClientDS_Ata.FieldByName(FrmPrincipal.EliminaBrancos(FrmPrincipal.CheckDateFormat(FrmPrincipal.AnsiToAscii(str)))).AsString = '0' then
//begin
//ClientDS_Ata.FieldByName(FrmPrincipal.EliminaBrancos(FrmPrincipal.CheckDateFormat(FrmPrincipal.AnsiToAscii(str)))).AsString:= '';
//end;

(*
if  StrToFloat(ResulatadoF) < 6 then
begin
ClientDS_Ata.FieldByName('SITUACAO_FINAL').AsString:= 'REPROVADO';
end else
ClientDS_Ata.FieldByName('SITUACAO_FINAL').AsString:= 'APROVADO';
 *)

ClientDS_Ata.FieldByName('SITUACAO_FINAL').AsString:= IBDS_NotAta.FieldByName('RESULTADO_FINAL').AsString;

// verifica se foi transferido
Dm.IBDS_MATRICULAS.Locate('MATRICULA;ANO_LETIVO',VarArrayOf([IBDS_NotAta.FieldByName('MATRICULA').Value,IBDS_NotAta.FieldByName('ANO_LETIVO').Value]), []);
if Dm.IBDS_MATRICULAS.FieldByName('SITUACAO_ALUNO').AsString <> 'MATRICULADO' then
begin
ClientDS_Ata.FieldByName('SITUACAO_FINAL').AsString:= Dm.IBDS_MATRICULAS.FieldByName('SITUACAO_ALUNO').AsString
end;

ClientDS_Ata.Post;
IBDS_NotAta.Next;
IBDS_MatAta.Next;
   end;
  end;
end;

procedure TFrmAta.Btn_RelacionarClick(Sender: TObject);
var
  valor : string;
  valorfinal: real;
begin
if Trim(CBox_Serie.Text) = '' then
begin
CBox_Serie.SetFocus;
Exit;
end else
if Trim(CBox_Turma.Text) = '' then
begin
CBox_Turma.SetFocus;
Exit;
end else
if Trim(CBox_Turno.Text) = '' then
begin
CBox_Turno.SetFocus;
Exit;
end else
if Trim(CBox_AnoLetivo.Text) = '' then
begin
CBox_AnoLetivo.SetFocus;
Exit;
end else
PanelTempo.Visible:= True;
Application.ProcessMessages;
Screen.Cursor := crSQLWait;

/////////

Dm.IBDS_MatAta.Close;
Dm.IBDS_MatAta.SelectSQL.Clear;
Dm.IBDS_MatAta.SelectSQL.Add('select * from MATRICUL A ');
Dm.IBDS_MatAta.SelectSQL.Add('where ANO_LETIVO = '+#39+CBox_AnoLetivo.Text+#39+' and SERIE = '+#39+CBox_Serie.Text+#39+' and TURMA = '+#39+CBox_Turma.Text+#39+' and TURNO = '+#39+CBox_Turno.Text+#39+' and exists ( select * from BOLETIM where MATRICULA = A.MATRICULA and ANO_LETIVO = A.ANO_LETIVO and SERIE = '+#39+CBox_Serie.Text+#39+' and TURMA = '+#39+CBox_Turma.Text+#39+' and TURNO = '+#39+CBox_Turno.Text+#39+')');
Dm.IBDS_MatAta.SelectSQL.Add('order by NOME_ALUNO');
Dm.IBDS_MatAta.Prepare;
Dm.IBDS_MatAta.Open;

if not Dm.IBDS_MatAta.Eof then
repeat
pbAplicando.MaxValue := Dm.IBDS_MatAta.RecordCount;
Dm.IBDS_MatAta.Next;
until Dm.IBDS_MatAta.Eof;
/////////


     // verifica se já houve filtros
     if Gera = 0 then
     begin
     Dm.ClientDS_Ata.IndexName := '';
     end else

Dm.IBDS_DiscAta.Close;
Dm.IBDS_DiscAta.SelectSQL.Clear;
Dm.IBDS_DiscAta.SelectSQL.Add('select distinct DISCIPLINA from NOTAS A ');
Dm.IBDS_DiscAta.SelectSQL.Add('where ANO_LETIVO = '+#39+CBox_AnoLetivo.Text+#39+' and SERIE = '+#39+CBox_Serie.Text+#39+' and TURMA = '+#39+CBox_Turma.Text+#39+' and TURNO = '+#39+CBox_Turno.Text+#39+' and exists ( select * from BOLETIM where COD_BOLE = A.COD_BOLE and MATRICULA = A.MATRICULA and ANO_LETIVO = A.ANO_LETIVO and SERIE = '+#39+CBox_Serie.Text+#39+' and TURMA = '+#39+CBox_Turma.Text+#39+' and TURNO = '+#39+CBox_Turno.Text+#39+')');
Dm.IBDS_DiscAta.SelectSQL.Add('order by COD_NOTA');
Dm.IBDS_DiscAta.Prepare;
Dm.IBDS_DiscAta.Open;

Dm.IBDS_NotAta.Close;
Dm.IBDS_NotAta.SelectSQL.Clear;
Dm.IBDS_NotAta.SelectSQL.Add('select * from NOTAS A ');
Dm.IBDS_NotAta.SelectSQL.Add('where ANO_LETIVO = '+#39+CBox_AnoLetivo.Text+#39+' and SERIE = '+#39+CBox_Serie.Text+#39+' and TURMA = '+#39+CBox_Turma.Text+#39+' and TURNO = '+#39+CBox_Turno.Text+#39+' and exists ( select * from BOLETIM where COD_BOLE = A.COD_BOLE and MATRICULA = A.MATRICULA and ANO_LETIVO = A.ANO_LETIVO and SERIE = '+#39+CBox_Serie.Text+#39+' and TURMA = '+#39+CBox_Turma.Text+#39+' and TURNO = '+#39+CBox_Turno.Text+#39+')');
Dm.IBDS_NotAta.SelectSQL.Add('order by COD_NOTA');
Dm.IBDS_NotAta.Open;

Dm.IBDS_MatAta.Close;
Dm.IBDS_MatAta.SelectSQL.Clear;
Dm.IBDS_MatAta.SelectSQL.Add('select * from MATRICUL A ');
Dm.IBDS_MatAta.SelectSQL.Add('where ANO_LETIVO = '+#39+CBox_AnoLetivo.Text+#39+' and SERIE = '+#39+CBox_Serie.Text+#39+' and TURMA = '+#39+CBox_Turma.Text+#39+' and TURNO = '+#39+CBox_Turno.Text+#39+' and exists ( select * from BOLETIM where MATRICULA = A.MATRICULA and ANO_LETIVO = A.ANO_LETIVO and SERIE = '+#39+CBox_Serie.Text+#39+' and TURMA = '+#39+CBox_Turma.Text+#39+' and TURNO = '+#39+CBox_Turno.Text+#39+')');
Dm.IBDS_MatAta.SelectSQL.Add('order by NOME_ALUNO');
Dm.IBDS_MatAta.Prepare;
Dm.IBDS_MatAta.Open;

// referente união de disciplinas
with Dm.IBConsulta1 do
begin
Close;
UnPrepare;
SQL.Clear;
SQL.Add('select distinct DISCIPLINA from MATERIAS A');
SQL.Add('where DISTRIBUIDA = '+#39+'SIM'+#39+' and not exists ( select * from NOTAS where ANO_LETIVO = '+#39+CBox_AnoLetivo.Text+#39+' and SERIE = '+#39+CBox_Serie.Text+#39+' and TURMA = '+#39+CBox_Turma.Text+#39+' and TURNO = '+#39+CBox_Turno.Text+#39+' and DISCIPLINA = A.DISCIPLINA)');
SQL.Add('order by COD_MATE');
Prepare;
Open;
end;
// referente união de medias
with Dm.IBConsulta2 do
begin
Close;
UnPrepare;
SQL.Clear;
SQL.Add('select * from NOTAS A');
SQL.Add('where ANO_LETIVO = '+#39+CBox_AnoLetivo.Text+#39+' and SERIE = '+#39+CBox_Serie.Text+#39+' and TURMA = '+#39+CBox_Turma.Text+#39+' and TURNO = '+#39+CBox_Turno.Text+#39+' and exists ( select distinct DISCIPLINA, DISTRIBUIDA, UNIFICACAO from MATERIAS where DISTRIBUIDA = '+#39+'NÃO'+#39+' and UNIFICACAO is not null and DISCIPLINA = A.DISCIPLINA)');
SQL.Add('order by COD_NOTA');
Prepare;
Open;
end;
LabelTempo.Caption:= 'Por favor aguarde! Criando disciplinas...';
Application.ProcessMessages;
CriarTabelaTemporaria;
Application.ProcessMessages;
LabelTempo.Caption:= 'Por favor aguarde! Unificando as disciplinas...';
if CBox_Unifica.Checked = True then
begin
with Dm.IBDS_DiscAta2 do
begin
Close;
UnPrepare;
SelectSQL.Clear;
SelectSQL.Add('select distinct DISCIPLINA from NOTAS A');
SelectSQL.Add('where ANO_LETIVO = '+#39+CBox_AnoLetivo.Text+#39+' and SERIE = '+#39+CBox_Serie.Text+#39+' and TURMA = '+#39+CBox_Turma.Text+#39+' and TURNO = '+#39+CBox_Turno.Text+#39+' and');
SelectSQL.Add('not exists (select distinct DISCIPLINA from MATERIAS');
SelectSQL.Add('where DISTRIBUIDA = '+#39+'NÃO'+#39+' and UNIFICACAO is not null and DISCIPLINA = A.DISCIPLINA)');
SelectSQL.Add('order by COD_NOTA');
Prepare;
Open;
end;
 Dm.ClientDS_Ata.first;
  while not Dm.ClientDS_Ata.eof do
  begin
Dm.IBConsulta1.first;
while not Dm.IBConsulta1.eof do
begin
LabelTempo.Caption:= 'Por favor aguarde! Calculando médias unificadas...';
Application.ProcessMessages;
// referente união de medias
with Dm.IBConsulta2 do
begin
Close;
UnPrepare;
SQL.Clear;
SQL.Add('select sum(cast(MEDIA_FINAL as numeric(18,2))/10) from NOTAS A');
SQL.Add('where MATRICULA = '+#39+Dm.ClientDS_Ata.FieldByName('MATRICULA').AsString+#39+' and ANO_LETIVO = '+#39+CBox_AnoLetivo.Text+#39+' and SERIE = '+#39+CBox_Serie.Text+#39+' and TURMA = '+#39+CBox_Turma.Text+#39+' and TURNO = '+#39+CBox_Turno.Text+#39+' and exists ( select distinct DISCIPLINA, DISTRIBUIDA, UNIFICACAO from MATERIAS where DISTRIBUIDA = '+#39+'NÃO'+#39+' and UNIFICACAO = '+#39+Dm.IBConsulta1.FieldByName('DISCIPLINA').Value+#39+' and DISCIPLINA = A.DISCIPLINA)');
SQL.Add('order by COD_NOTA');
Prepare;
Open;
end;



Dm.IBConsulta2.First;

Dm.ClientDS_Ata.edit;
if Dm.IBConsulta2.FieldByName('F_1').AsString = '' then
begin
valor:= '0';
end else
valor:= Dm.IBConsulta2.FieldByName('F_1').AsString;


with IBDivisor do
    begin
    Close;
    SQL.Clear;
    SQL.Add( 'select distinct count(DISCIPLINA) as Divisor from NOTAS N ');
    SQL.Add( ' where MATRICULA = '+#39+Dm.ClientDS_Ata.FieldByName('MATRICULA').AsString+#39);
    SQL.Add( ' and ANO_LETIVO =  '+#39+CBox_AnoLetivo.Text+#39);
    SQL.Add( ' and SERIE =  '+#39+CBox_Serie.Text+#39);
    SQL.Add( ' and TURMA =  '+#39+CBox_Turma.Text+#39);
    SQL.Add( ' and TURNO =  '+#39+CBox_Turno.Text+#39);
    SQL.Add( ' and exists ( select distinct DISCIPLINA, ');
    SQL.Add( ' DISTRIBUIDA, UNIFICACAO from MATERIAS ');
    SQL.Add( ' where DISTRIBUIDA = '+#39+'NÃO'+#39);
    SQL.Add( ' and UNIFICACAO = '+#39+Dm.IBConsulta1.FieldByName('DISCIPLINA').AsString+#39);
    SQL.Add( ' and DISCIPLINA = N.DISCIPLINA)');
    Open;
    end;

valorfinal:= StrToFloat(CurrToStr(FrmBoletim.Arredonda5e0((StrToCurr('0')+StrToCurr('0')+StrToCurr('0')+StrToCurr(valor))/IBDivisor.FieldByName('Divisor').AsInteger)));

if  Dm.DSConsulta1.DataSet.Fields[0].Text  =  Dm.ClientDS_Ata.FieldByName(FrmPrincipal.AnsiToAscii(Dm.IBConsulta1.FieldByName('DISCIPLINA').AsString)).DisplayName  then
begin
Dm.ClientDS_Ata.FieldByName(FrmPrincipal.AnsiToAscii(Dm.IBConsulta1.FieldByName('DISCIPLINA').AsString)).AsString:= FormatFloat('#,#0.0', valorfinal);
end;
if Dm.ClientDS_Ata.FieldByName(FrmPrincipal.AnsiToAscii(Dm.IBConsulta1.FieldByName('DISCIPLINA').AsString)).AsString = '0,0' then
begin
Dm.ClientDS_Ata.FieldByName(FrmPrincipal.AnsiToAscii(Dm.IBConsulta1.FieldByName('DISCIPLINA').AsString)).AsString:= '';
end;
Dm.IBConsulta1.next;
end;
  Dm.ClientDS_Ata.Post;

/////////////
pbAplicando.Progress := Dm.ClientDS_Ata.RecNo;
////////////

  Dm.ClientDS_Ata.next;
  end;

end else
  LabelTempo.Caption:= 'Por favor aguarde! Finalizando processo...';
  Application.ProcessMessages;
Gera:= 0;
PanelTempo.Visible:= False;
Btn_Imprimir.Enabled:= True;
Screen.Cursor := crDefault;
end;

procedure TFrmAta.Btn_ImprimirClick(Sender: TObject);
begin
try
 FrmRelAta:=TFrmRelAta.Create(nil);
 FrmRelAta.QuickRep1.PreviewModal;
finally
 FrmRelAta.Release;
end;
end;

procedure TFrmAta.BtnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmAta.FormShow(Sender: TObject);
begin
FrmAta.Top:=100;
FrmAta.Left:=0;
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmAta.Caption:= FrmAta.Caption;
Exit;
end else
FrmAta.Caption:= FrmAta.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end;

procedure TFrmAta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=Cafree;
end;

procedure TFrmAta.FormCreate(Sender: TObject);
begin
with DmSeleciona.IBQ_AnoLetivo do
 begin
 Close;
 UnPrepare;
 SQL.Clear;
 SQL.Add('select distinct ANO_LETIVO from MATRICUL ');
 SQL.Add('order by ANO_LETIVO desc');
 Prepare;
 Open;
// Adiciona dados ao combobox
CBox_AnoLetivo.Clear;
While Not Eof do
  begin
  CBox_AnoLetivo.Items.Add(FieldByName('ANO_LETIVO').AsString);
  Next;
  end;
end;
end;

end.
