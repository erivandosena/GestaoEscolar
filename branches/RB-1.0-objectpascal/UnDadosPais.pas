unit UnDadosPais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Buttons, DB, DateUtils, DBClient,
  IBCustomDataSet, RXDBCtrl, ComCtrls, IBQuery, ExtCtrls;

type
  TFrmDadosPais = class(TForm)
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    CBox_Serie: TComboBox;
    CBox_Turma: TComboBox;
    CBox_Turno: TComboBox;
    Btn_Relacionar: TBitBtn;
    BtnFechar: TBitBtn;
    IBQuerySelecao: TIBQuery;
    procedure CBox_SerieChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Btn_RelacionarClick(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CriarTabelaTemporaria;
  end;

var
  FrmDadosPais: TFrmDadosPais;
  Campos : TField;
  Gera: Integer;
  str: String;

implementation

uses UnDm, UnPrincipal, UnRelFichaNota, UnRelPais;

{$R *.dfm}

{ TFrmAta }

procedure TFrmDadosPais.CBox_SerieChange(Sender: TObject);
begin
// COLETA TURMA
With IBQuerySelecao do
begin
 Close;
 SQL.Clear;
 SQL.Add('Select distinct TURMA from MATRICUL where SERIE = :Serie order by TURMA');
 ParamByName('Serie').AsString:= CBox_Serie.Text;
 Prepare;
 Open;
 First;
CBox_Turma.Items.Clear;
While not Eof do
Begin
CBox_Turma.Items.Add(IBQuerySelecao.FieldByName('TURMA').AsString);
Next;
end;
end;
// COLETA TURNO
With IBQuerySelecao do
begin
 Close;
 SQL.Clear;
 SQL.Add('Select distinct TURNO from MATRICUL where SERIE = :Serie order by TURNO');
 ParamByName('Serie').AsString:= CBox_Serie.Text;
 Prepare;
 Open;
 First;
CBox_Turno.Items.Clear;
While not Eof do
Begin
CBox_Turno.Items.Add(IBQuerySelecao.FieldByName('TURNO').AsString);
Next;
end;
end;
end;

procedure TFrmDadosPais.CriarTabelaTemporaria;
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
    Campos.DisplayLabel := 'MAR';
    Campos.Size:= 4;

          (* coluna ETAPA_1_ABR *)
    Campos := TStringField.Create(Self);
    Campos.FieldName := 'ETAPA_1_ABR';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'ABR';
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
    Campos.DisplayLabel := 'MAI';
    Campos.Size:= 4;

          (* coluna ETAPA_2_JUN *)
    Campos := TStringField.Create(Self);
    Campos.FieldName := 'ETAPA_2_JUN';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'JUN';
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
    Campos.DisplayLabel := 'AGO';
    Campos.Size:= 4;

          (* coluna ETAPA_3_SET *)
    Campos := TStringField.Create(Self);
    Campos.FieldName := 'ETAPA_3_SET';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'SET';
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
    Campos.DisplayLabel := 'OUT';
    Campos.Size:= 4;

          (* coluna ETAPA_4_NOV *)
    Campos := TStringField.Create(Self);
    Campos.FieldName := 'ETAPA_4_NOV';
    Campos.Name := ClientDS_Ata.Name + Campos.FieldName;
    Campos.Index := ClientDS_Ata.FieldCount;
    Campos.DataSet := ClientDS_Ata;
    Campos.DisplayLabel := 'NOV';
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
ClientDS_Ata.FieldByName('ETAPA_1_R').AsString:= IBDS_NotAta.FieldByName('ETAPA_1_R').AsString;
ClientDS_Ata.FieldByName('ETAPA_1_M').AsString:= IBDS_NotAta.FieldByName('ETAPA_1_M').AsString;

ClientDS_Ata.FieldByName('ETAPA_2_MAI').AsString:= IBDS_NotAta.FieldByName('ETAPA_2_MAI').AsString;
ClientDS_Ata.FieldByName('ETAPA_2_JUN').AsString:= IBDS_NotAta.FieldByName('ETAPA_2_JUN').AsString;
ClientDS_Ata.FieldByName('ETAPA_2_R').AsString:= IBDS_NotAta.FieldByName('ETAPA_2_R').AsString;
ClientDS_Ata.FieldByName('ETAPA_2_M').AsString:= IBDS_NotAta.FieldByName('ETAPA_2_M').AsString;

ClientDS_Ata.FieldByName('ETAPA_3_AGO').AsString:= IBDS_NotAta.FieldByName('ETAPA_3_AGO').AsString;
ClientDS_Ata.FieldByName('ETAPA_3_SET').AsString:= IBDS_NotAta.FieldByName('ETAPA_3_SET').AsString;
ClientDS_Ata.FieldByName('ETAPA_3_R').AsString:= IBDS_NotAta.FieldByName('ETAPA_3_R').AsString;
ClientDS_Ata.FieldByName('ETAPA_3_M').AsString:= IBDS_NotAta.FieldByName('ETAPA_3_M').AsString;

ClientDS_Ata.FieldByName('ETAPA_4_OUT').AsString:= IBDS_NotAta.FieldByName('ETAPA_4_OUT').AsString;
ClientDS_Ata.FieldByName('ETAPA_4_NOV').AsString:= IBDS_NotAta.FieldByName('ETAPA_4_NOV').AsString;
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

procedure TFrmDadosPais.Btn_RelacionarClick(Sender: TObject);
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
try
 FrmRelPais:=TFrmRelPais.Create(nil);
 FrmRelPais.QuickRep1.PreviewModal;
finally
 FrmRelPais.Release;
end;
end;

procedure TFrmDadosPais.BtnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmDadosPais.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=Cafree;
end;

procedure TFrmDadosPais.FormCreate(Sender: TObject);
begin
// COLETA SERIES
With IBQuerySelecao do
begin
 Close;
 SQL.Clear;
 SQL.Add('Select distinct SERIE from MATRICUL order by SERIE');
 Prepare;
 Open;
 First;
CBox_Serie.Items.Clear;
While not Eof do
Begin
CBox_Serie.Items.Add(IBQuerySelecao.FieldByName('SERIE').AsString);
Next;
end;
end;
// COLETA TURMA
With IBQuerySelecao do
begin
 Close;
 SQL.Clear;
 SQL.Add('Select distinct TURMA from MATRICUL order by TURMA');
 Prepare;
 Open;
 First;
CBox_Turma.Items.Clear;
While not Eof do
Begin
CBox_Turma.Items.Add(IBQuerySelecao.FieldByName('TURMA').AsString);
Next;
end;
end;
// COLETA TURNO
With IBQuerySelecao do
begin
 Close;
 SQL.Clear;
 SQL.Add('Select distinct TURNO from MATRICUL order by TURNO');
 Prepare;
 Open;
 First;
CBox_Turno.Items.Clear;
While not Eof do
Begin
CBox_Turno.Items.Add(IBQuerySelecao.FieldByName('TURNO').AsString);
Next;
end;
end;

end;


end.
