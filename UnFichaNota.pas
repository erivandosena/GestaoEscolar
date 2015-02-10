unit UnFichaNota;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Buttons, DB, DateUtils, DBClient,
  IBCustomDataSet, RXDBCtrl, ComCtrls, IBQuery, ExtCtrls;

type
  TFrmFichaNota = class(TForm)
    DBGrid_RelacaoNota: TDBGrid;
    Btn_Relacionar: TBitBtn;
    BtnFechar: TBitBtn;
    PBar: TProgressBar;
    GroupBox1: TGroupBox;
    Btn_Imprimir: TBitBtn;
    CheckBox_Planilha: TCheckBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    CBox_Serie: TComboBox;
    CBox_Turma: TComboBox;
    CBox_Turno: TComboBox;
    CBox_Disciplina: TComboBox;
    CBox_AnoLetivo: TComboBox;
    CBox_Curso: TComboBox;
    procedure CBox_DisciplinaEnter(Sender: TObject);
    procedure CBox_TurnoEnter(Sender: TObject);
    procedure CBox_TurmaEnter(Sender: TObject);
    procedure CBox_SerieEnter(Sender: TObject);
    procedure CBox_CursoEnter(Sender: TObject);
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
  FrmFichaNota: TFrmFichaNota;
  Campos : TField;
  Gera: Integer;
  str: String;

implementation

uses UnDm, UnPrincipal, UnRelFichaNota, UnDmSeleciona;

{$R *.dfm}

{ TFrmAta }

procedure TFrmFichaNota.CBox_CursoEnter(Sender: TObject);
begin
with DmSeleciona.IBQ_AnoLetivo do
 begin
 Close;
 UnPrepare;
 SQL.Clear;
 SQL.Add('select distinct CURSO from MATRICUL ');
 SQL.Add('where ANO_LETIVO = '+#39+CBox_AnoLetivo.Text+#39);
 SQL.Add('order by CURSO');
 Prepare;Open;
// Adiciona dados ao combobox
CBox_Curso.Clear;
While Not Eof do
  begin
  CBox_Curso.Items.Add(FieldByName('CURSO').AsString);
  Next;
  end;
end;
end;

procedure TFrmFichaNota.CBox_DisciplinaEnter(Sender: TObject);
begin
with DmSeleciona.IBQ_Disciplinas do
 begin
 Close;
 UnPrepare;
 SQL.Clear;
 SQL.Add('select distinct DISCIPLINA from NOTAS ');
 SQL.Add('where ANO_LETIVO = '+#39+CBox_AnoLetivo.Text+#39+' and SERIE = '+#39+CBox_Serie.Text+#39+' and TURMA = '+#39+CBox_Turma.Text+#39+' and TURNO = '+#39+CBox_Turno.Text+#39);
 SQL.Add('order by DISCIPLINA');                
 Prepare;
 Open;
// Adiciona dados ao combobox
CBox_Disciplina.Clear;
While Not Eof do
  begin
  CBox_Disciplina.Items.Add(FieldByName('DISCIPLINA').AsString);
  Next;
  end;
end;
end;

procedure TFrmFichaNota.CBox_SerieEnter(Sender: TObject);
begin
with DmSeleciona.IBQ_AnoLetivo do
 begin
 Close;
 UnPrepare;
 SQL.Clear;
 SQL.Add('select distinct SERIE from MATRICUL ');
 SQL.Add('where ANO_LETIVO = '+#39+CBox_AnoLetivo.Text+#39+' and CURSO = '+#39+CBox_Curso.Text+#39);
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

procedure TFrmFichaNota.CBox_TurmaEnter(Sender: TObject);
begin
with DmSeleciona.IBQ_AnoLetivo do
 begin
 Close;
 UnPrepare;
 SQL.Clear;
 SQL.Add('select distinct TURMA from MATRICUL ');
 SQL.Add('where ANO_LETIVO = '+#39+CBox_AnoLetivo.Text+#39+' and CURSO = '+#39+CBox_Curso.Text+#39+' and SERIE = '+#39+CBox_Serie.Text+#39);
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

procedure TFrmFichaNota.CBox_TurnoEnter(Sender: TObject);
begin
with DmSeleciona.IBQ_AnoLetivo do
 begin
 Close;
 UnPrepare;
 SQL.Clear;
 SQL.Add('select distinct TURNO from MATRICUL ');
 SQL.Add('where ANO_LETIVO = '+#39+CBox_AnoLetivo.Text+#39+' and CURSO = '+#39+CBox_Curso.Text+#39+' and SERIE = '+#39+CBox_Serie.Text+#39+' and TURMA = '+#39+CBox_Turma.Text+#39);
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

procedure TFrmFichaNota.CriarTabelaTemporaria;
begin
  (* cria estrutura do ClientDataSet *)
  with Dm do
  begin
    ClientDS_Ata.Close;
    ClientDS_Ata.Fields.Clear;
    ClientDS_Ata.FieldDefs.Clear;

    (* coluna COD_BOLE *)
    Campos  := TIntegerField.Create(self);
    Campos.FieldName := 'COD_BOLE';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'Código';
    Campos.Visible:= False;

    (* coluna NOME_ALUNO *)
    Campos  := TStringField.Create(self);
    Campos.FieldName := 'NOME_ALUNO';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'Aluno(a)';
    Campos.Size:= 40;

with Dm do
  begin
      // 1ª Etapa ===================================
                (* coluna ETAPA_1_MAR *)
    Campos := TStringField.Create(Self);
    Campos.FieldName := 'ETAPA_1_MAR';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'AV1';
    Campos.Size:= 4;

          (* coluna ETAPA_1_ABR *)
    Campos := TStringField.Create(Self);
    Campos.FieldName := 'ETAPA_1_ABR';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'AV2';
    Campos.Size:= 4;

          (* coluna ETAPA_1_AV3 *)
    Campos := TStringField.Create(Self);
    Campos.FieldName := 'ETAPA_1_AV3';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'AV3';
    Campos.Size:= 4;

        (* coluna ETAPA_1_R *)
    Campos := TStringField.Create(Self);
    Campos.FieldName := 'ETAPA_1_R';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'R1ª';
    Campos.Size:= 4;

      (* coluna ETAPA_1_M *)
    Campos := TStringField.Create(Self);
    Campos.FieldName := 'ETAPA_1_M';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'M1ª';
    Campos.Size:= 4;

    // 2ª Etapa ===================================
              (* coluna ETAPA_2_MAI *)
    Campos := TStringField.Create(Self);
    Campos.FieldName := 'ETAPA_2_MAI';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'AV3';
    Campos.Size:= 4;

          (* coluna ETAPA_2_JUN *)
    Campos := TStringField.Create(Self);
    Campos.FieldName := 'ETAPA_2_JUN';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'AV2';
    Campos.Size:= 4;

          (* coluna ETAPA_2_AV3 *)
    Campos := TStringField.Create(Self);
    Campos.FieldName := 'ETAPA_2_AV3';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'AV3';
    Campos.Size:= 4;

        (* coluna ETAPA_2_R *)
    Campos := TStringField.Create(Self);
    Campos.FieldName := 'ETAPA_2_R';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'R2ª';
    Campos.Size:= 4;

      (* coluna ETAPA_2_M *)
    Campos := TStringField.Create(Self);
    Campos.FieldName := 'ETAPA_2_M';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'M2ª';
    Campos.Size:= 4;

    // 3ª Etapa ===================================
            (* coluna ETAPA_3_AGO *)
    Campos := TStringField.Create(Self);
    Campos.FieldName := 'ETAPA_3_AGO';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'AV1';
    Campos.Size:= 4;

          (* coluna ETAPA_3_SET *)
    Campos := TStringField.Create(Self);
    Campos.FieldName := 'ETAPA_3_SET';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'AV2';
    Campos.Size:= 4;

          (* coluna ETAPA_3_AV3 *)
    Campos := TStringField.Create(Self);
    Campos.FieldName := 'ETAPA_3_AV3';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'AV3';
    Campos.Size:= 4;

        (* coluna ETAPA_3_R *)
    Campos := TStringField.Create(Self);
    Campos.FieldName := 'ETAPA_3_R';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'R3ª';
    Campos.Size:= 4;

      (* coluna ETAPA_3_M *)
    Campos := TStringField.Create(Self);
    Campos.FieldName := 'ETAPA_3_M';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'M3ª';
    Campos.Size:= 4;

  // 4ª Etapa ===================================
            (* coluna ETAPA_4_OUT *)
    Campos := TStringField.Create(Self);
    Campos.FieldName := 'ETAPA_4_OUT';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'AV1';
    Campos.Size:= 4;

          (* coluna ETAPA_4_NOV *)
    Campos := TStringField.Create(Self);
    Campos.FieldName := 'ETAPA_4_NOV';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'AV2';
    Campos.Size:= 4;

          (* coluna ETAPA_4_AV3 *)
    Campos := TStringField.Create(Self);
    Campos.FieldName := 'ETAPA_4_AV3';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'AV3';
    Campos.Size:= 4;

        (* coluna ETAPA_4_R *)
    Campos := TStringField.Create(Self);
    Campos.FieldName := 'ETAPA_4_R';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'R4ª';
    Campos.Size:= 4;

      (* coluna ETAPA_4_M *)
    Campos := TStringField.Create(Self);
    Campos.FieldName := 'ETAPA_4_M';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'M4ª';
    Campos.Size:= 4;
  
    (* coluna PROVAO *)
    Campos := TStringField.Create(Self);
    Campos.FieldName := 'PROVAO';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'Pro';
    Campos.Size:= 4;

    (* coluna PROVAO_R *)
    Campos := TStringField.Create(Self);
    Campos.FieldName := 'PROVAO_R';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'R.F';
    Campos.Size:= 4;

    (* coluna MEDIA_FINAL *)
    Campos := TStringField.Create(Self);
    Campos.FieldName := 'MEDIA_FINAL';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'M.F';
    Campos.Size:= 4;

    (* coluna SITUACAO_FINAL *)
    Campos := TStringField.Create(Self);
    Campos.FieldName := 'SITUACAO_FINAL';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'Situação Final';
    Campos.Size:= 12;

    (* coluna CURSO *)
    Campos := TStringField.Create(Self);
    Campos.FieldName := 'CURSO';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'Curso';
    Campos.Size:= 22;
    Campos.Visible:= False;

    (* coluna SERIE *)
    Campos := TStringField.Create(Self);
    Campos.FieldName := 'SERIE';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'Série';
    Campos.Size:= 30;
    Campos.Visible:= False;

    (* coluna TURMA *)
    Campos := TStringField.Create(Self);
    Campos.FieldName := 'TURMA';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'Turma';
    Campos.Size:= 10;
    Campos.Visible:= False;

    (* coluna TURNO *)
    Campos := TStringField.Create(Self);
    Campos.FieldName := 'TURNO';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'Turno';
    Campos.Size:= 5;
    Campos.Visible:= False;

    (* coluna ANO_LETIVO *)
    Campos := TStringField.Create(Self);
    Campos.FieldName := 'ANO_LETIVO';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'Ano Letivo';
    Campos.Size:= 4;
    Campos.Visible:= False;

end;
    (* cria o ClientDataSet em memória e indexa *)
    ClientDS_Ata.CreateDataSet;
    ClientDS_Ata.AddIndex('fichanota','COD_BOLE',[],'','',0);
    ClientDS_Ata.IndexName := 'fichanota';
    ClientDS_Ata.IndexFieldNames:= 'NOME_ALUNO';

    (* adiciona os dados cruzados baseado na consulta *)
    IBDS_BOLETIM.First;
    while not IBDS_BOLETIM.Eof do
    begin
      if not ClientDS_Ata.Locate('COD_BOLE', IBDS_BOLETIM.FieldByName('COD_BOLE').Value,[])
   and
  IBDS_NotAta.Locate('MATRICULA', IBDS_BOLETIM.FieldByName('MATRICULA').Value,[])
      then
      begin
        ClientDS_Ata.Append;
        ClientDS_Ata.FieldByName('COD_BOLE').AsInteger := IBDS_BOLETIM.FieldByName('COD_BOLE').AsInteger;
        ClientDS_Ata.FieldByName('NOME_ALUNO').AsString := IBDS_BOLETIM.FieldByName('NOME_ALUNO').AsString;
      end else
ClientDS_Ata.Edit;
ClientDS_Ata.FieldByName('ETAPA_1_MAR').AsString:= IBDS_NotAta.FieldByName('ETAPA_1_MAR').AsString;
ClientDS_Ata.FieldByName('ETAPA_1_ABR').AsString:= IBDS_NotAta.FieldByName('ETAPA_1_ABR').AsString;
ClientDS_Ata.FieldByName('ETAPA_1_AV3').AsString:= IBDS_NotAta.FieldByName('ETAPA_1_AV3').AsString;
ClientDS_Ata.FieldByName('ETAPA_1_R').AsString:= IBDS_NotAta.FieldByName('ETAPA_1_R').AsString;
ClientDS_Ata.FieldByName('ETAPA_1_M').AsString:= IBDS_NotAta.FieldByName('ETAPA_1_M').AsString;

ClientDS_Ata.FieldByName('ETAPA_2_MAI').AsString:= IBDS_NotAta.FieldByName('ETAPA_2_MAI').AsString;
ClientDS_Ata.FieldByName('ETAPA_2_JUN').AsString:= IBDS_NotAta.FieldByName('ETAPA_2_JUN').AsString;
ClientDS_Ata.FieldByName('ETAPA_2_AV3').AsString:= IBDS_NotAta.FieldByName('ETAPA_2_AV3').AsString;
ClientDS_Ata.FieldByName('ETAPA_2_R').AsString:= IBDS_NotAta.FieldByName('ETAPA_2_R').AsString;
ClientDS_Ata.FieldByName('ETAPA_2_M').AsString:= IBDS_NotAta.FieldByName('ETAPA_2_M').AsString;

ClientDS_Ata.FieldByName('ETAPA_3_AGO').AsString:= IBDS_NotAta.FieldByName('ETAPA_3_AGO').AsString;
ClientDS_Ata.FieldByName('ETAPA_3_SET').AsString:= IBDS_NotAta.FieldByName('ETAPA_3_SET').AsString;
ClientDS_Ata.FieldByName('ETAPA_3_AV3').AsString:= IBDS_NotAta.FieldByName('ETAPA_3_AV3').AsString;
ClientDS_Ata.FieldByName('ETAPA_3_R').AsString:= IBDS_NotAta.FieldByName('ETAPA_3_R').AsString;
ClientDS_Ata.FieldByName('ETAPA_3_M').AsString:= IBDS_NotAta.FieldByName('ETAPA_3_M').AsString;

ClientDS_Ata.FieldByName('ETAPA_4_OUT').AsString:= IBDS_NotAta.FieldByName('ETAPA_4_OUT').AsString;
ClientDS_Ata.FieldByName('ETAPA_4_NOV').AsString:= IBDS_NotAta.FieldByName('ETAPA_4_NOV').AsString;
ClientDS_Ata.FieldByName('ETAPA_4_AV3').AsString:= IBDS_NotAta.FieldByName('ETAPA_4_AV3').AsString;
ClientDS_Ata.FieldByName('ETAPA_4_R').AsString:= IBDS_NotAta.FieldByName('ETAPA_4_R').AsString;
ClientDS_Ata.FieldByName('ETAPA_4_M').AsString:= IBDS_NotAta.FieldByName('ETAPA_4_M').AsString;

ClientDS_Ata.FieldByName('PROVAO').AsString:= IBDS_NotAta.FieldByName('PROVAO').AsString;
ClientDS_Ata.FieldByName('PROVAO_R').AsString:= IBDS_NotAta.FieldByName('PROVAO_R').AsString;
ClientDS_Ata.FieldByName('MEDIA_FINAL').AsString:= IBDS_NotAta.FieldByName('MEDIA_FINAL').AsString;
ClientDS_Ata.FieldByName('SITUACAO_FINAL').AsString:= IBDS_NotAta.FieldByName('RESULTADO_FINAL').AsString;

ClientDS_Ata.FieldByName('CURSO').AsString:= IBDS_BOLETIM.FieldByName('CURSO').AsString;
ClientDS_Ata.FieldByName('SERIE').AsString:= IBDS_BOLETIM.FieldByName('SERIE').AsString;
ClientDS_Ata.FieldByName('TURMA').AsString:= IBDS_BOLETIM.FieldByName('TURMA').AsString;
ClientDS_Ata.FieldByName('TURNO').AsString:= IBDS_BOLETIM.FieldByName('TURNO').AsString;
ClientDS_Ata.FieldByName('ANO_LETIVO').AsString:= IBDS_BOLETIM.FieldByName('ANO_LETIVO').AsString;
ClientDS_Ata.Post;
IBDS_BOLETIM.Next;
   end;
  end;
end;

procedure TFrmFichaNota.Btn_RelacionarClick(Sender: TObject);
begin
if Trim(CBox_Disciplina.Text) = '' then
begin
CBox_Disciplina.SetFocus;
Exit;
end else
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
Screen.Cursor := crSQLWait;
     // verifica se já houve filtros
     if Gera = 0 then
     begin
     Dm.ClientDS_Ata.IndexName := '';
     end else
Dm.IBDS_NotAta.Close;
Dm.IBDS_NotAta.SelectSQL.Clear;
Dm.IBDS_NotAta.SelectSQL.Add('select * from NOTAS');
Dm.IBDS_NotAta.SelectSQL.Add('where DISCIPLINA = '+#39+CBox_Disciplina.Text+#39+' and ANO_LETIVO = '+#39+CBox_AnoLetivo.Text+#39+' and SERIE = '+#39+CBox_Serie.Text+#39+' and TURMA = '+#39+CBox_Turma.Text+#39+' and TURNO = '+#39+CBox_Turno.Text+#39);
Dm.IBDS_NotAta.Prepare;
Dm.IBDS_NotAta.Open;

Dm.IBDS_BOLETIM.Close;
Dm.IBDS_BOLETIM.SelectSQL.Clear;
Dm.IBDS_BOLETIM.SelectSQL.Add('select * from BOLETIM');
Dm.IBDS_BOLETIM.SelectSQL.Add('where ANO_LETIVO = '+#39+CBox_AnoLetivo.Text+#39+' and SERIE = '+#39+CBox_Serie.Text+#39+' and TURMA = '+#39+CBox_Turma.Text+#39+' and TURNO = '+#39+CBox_Turno.Text+#39);
Dm.IBDS_BOLETIM.SelectSQL.Add('order by NOME_ALUNO');
Dm.IBDS_BOLETIM.Prepare;
Dm.IBDS_BOLETIM.Open;

CriarTabelaTemporaria;
FrmPrincipal.BarraDeProgresso2(Dm.ClientDS_Ata, PBar);

Gera:= 0;

Screen.Cursor := crDefault;
end;

procedure TFrmFichaNota.Btn_ImprimirClick(Sender: TObject);
begin
try
 FrmRelFichaNota:=TFrmRelFichaNota.Create(nil);
 FrmRelFichaNota.QuickRep1.PreviewModal;
finally
 FrmRelFichaNota.Release;
end;
end;

procedure TFrmFichaNota.BtnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmFichaNota.FormShow(Sender: TObject);
begin
FrmFichaNota.Top:=100;
FrmFichaNota.Left:=0;
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmFichaNota.Caption:= FrmFichaNota.Caption;
Exit;
end else
FrmFichaNota.Caption:= FrmFichaNota.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end;

procedure TFrmFichaNota.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=Cafree;
end;

procedure TFrmFichaNota.FormCreate(Sender: TObject);
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
(*ComboBox_Ano.Items.Clear;
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
CBox_Disciplina.Items.Clear;
 Dm.IBDS_MATERIAS.First;
 if not Dm.IBDS_MATERIAS.Eof then
 repeat
 { seus comandos para a tabela }
CBox_Disciplina.Items.Add(Dm.IBDS_MATERIASDISCIPLINA.AsString);
 Dm.IBDS_MATERIAS.Next;
 until Dm.IBDS_MATERIAS.Eof; *)
end;

end.
