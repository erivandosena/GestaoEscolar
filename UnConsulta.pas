unit UnConsulta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, ExtCtrls, Grids, DBGrids, DB,
  IBCustomDataSet, IBQuery, ComCtrls;

type
  TFrmConsulta = class(TForm)
    Label10: TLabel;
    Label11: TLabel;
    DBGrid_CS_Parcelas: TDBGrid;
    Bevel1: TBevel;
    Label9: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    CBox_CSSerie: TComboBox;
    CBox_CSTurma: TComboBox;
    CBox_CSTurno: TComboBox;
    Btn_Informar: TBitBtn;
    BtnFechar: TBitBtn;
    MEdit_CSMatricula: TMaskEdit;
    IBQuery_CSALUNOS: TIBQuery;
    IBQuery_CSALUNOSMATRICULA: TIBStringField;
    IBQuery_CSALUNOSNOME_ALUNO: TIBStringField;
    IBQuery_CSALUNOSNOME_RESP: TIBStringField;
    IBQuery_CSALUNOSSERIE: TIBStringField;
    IBQuery_CSALUNOSCURSO: TIBStringField;
    IBQuery_CSALUNOSTURMA: TIBStringField;
    IBQuery_CSALUNOSTURNO: TIBStringField;
    IBQuery_CSALUNOSANO_LETIVO: TIBStringField;
    IBQuery_CSParcelas: TIBQuery;
    IBQuery_CSParcelasCOD_CARN: TIntegerField;
    IBQuery_CSParcelasNUMERO_DOC: TIBStringField;
    IBQuery_CSParcelasMATRICULA: TIBStringField;
    IBQuery_CSParcelasANO_LETIVO: TIBStringField;
    IBQuery_CSParcelasNOME_RESP: TIBStringField;
    IBQuery_CSParcelasNOME_ALUNO: TIBStringField;
    IBQuery_CSParcelasTURMA: TIBStringField;
    IBQuery_CSParcelasTURNO: TIBStringField;
    IBQuery_CSParcelasCURSO: TIBStringField;
    IBQuery_CSParcelasSERIE: TIBStringField;
    IBQuery_CSParcelasMES: TIBStringField;
    IBQuery_CSParcelasDATA_VENCIMENTO: TDateTimeField;
    IBQuery_CSParcelasDATA_PAGAMENTO: TDateTimeField;
    IBQuery_CSParcelasVALOR_MENSAL: TIBBCDField;
    IBQuery_CSParcelasVALOR_ACRESC: TIBBCDField;
    IBQuery_CSParcelasVALOR_DESCON: TIBBCDField;
    IBQuery_CSParcelasNUMERO_PARCELA: TIBStringField;
    IBQuery_CSParcelasSITUACAO_PARCELA: TIBStringField;
    IBQuery_CSParcelasVALOR_APAGAR: TIBBCDField;
    IBQuery_CSParcelasVALOR_PAGO: TIBBCDField;
    IBQuery_CSParcelasVALOR_PENDENTE: TIBBCDField;
    IBQuery_CSParcelasTOTAL_PAGO: TIBBCDField;
    DS_CSParcelas: TDataSource;
    DS_CSALUNOS: TDataSource;
    DBGrid_CS_Alunos: TDBGrid;
    Btn_Imprimir: TBitBtn;
    Data1: TDateTimePicker;
    Label2: TLabel;
    Data2: TDateTimePicker;
    CBox_Relacao: TComboBox;
    Label1: TLabel;
    CBox_Mes: TComboBox;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
    procedure MEdit_CSMatriculaExit(Sender: TObject);
    procedure MEdit_CSMatriculaKeyPress(Sender: TObject; var Key: Char);
    procedure CBox_CSSerieExit(Sender: TObject);
    procedure DBGrid_CS_AlunosDblClick(Sender: TObject);
    procedure DBGrid_CS_AlunosCellClick(Column: TColumn);
    procedure DBGrid_CS_AlunosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid_CS_AlunosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Btn_InformarClick(Sender: TObject);
    procedure DBGrid_CS_ParcelasDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure Btn_ImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CBox_RelacaoChange(Sender: TObject);
    procedure Data1Exit(Sender: TObject);
    procedure Data2Exit(Sender: TObject);

  private
    { Private declarations }
    procedure VerificaCSGarne;
  public
    { Public declarations }
  end;

var
  FrmConsulta: TFrmConsulta;

implementation

uses UnPrincipal, UnLocalizar, UnAlunos, UnDm, UnRelPlanilha, UnRelExtrato;

{$R *.dfm}

procedure TFrmConsulta.FormShow(Sender: TObject);
begin
FrmConsulta.Top:=0;
FrmConsulta.Left:=0;
IBQuery_CSALUNOS.Close;
IBQuery_CSALUNOS.Open;
IBQuery_CSPARCELAS.Close;
IBQuery_CSPARCELAS.Open;
VerificaCSGarne;
CBox_Relacao.SetFocus;
end;

procedure TFrmConsulta.BtnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmConsulta.MEdit_CSMatriculaExit(Sender: TObject);
begin
if MEdit_CSMatricula.Text = '' then
begin
CBox_CSSerie.SetFocus;
Exit;
end else
MEdit_CSMatricula.Text:= FrmPrincipal.RetZero(MEdit_CSMatricula.Text, 15);
MEdit_CSMatricula.Text:= FrmLocalizar.FormataMat(MEdit_CSMatricula.Text);
Dm.IBDS_CARNE.Close;
Dm.IBDS_CARNE.Open;
if not Dm.IBDS_CARNE.Locate('MATRICULA', MEdit_CSMatricula.Text, []) then
begin
ShowMessage('O matrícula Nº "'+MEdit_CSMatricula.Text+'" não é válida.');
MEdit_CSMatricula.Text:= '';
end else
if Btn_Informar.Enabled = True then
begin
CBox_CSSerie.ItemIndex:= -1;
CBox_CSTurma.ItemIndex:= -1;
CBox_CSTurno.ItemIndex:= -1;
Btn_Informar.SetFocus;
Btn_InformarClick(Nil);
end;
end;

procedure TFrmConsulta.MEdit_CSMatriculaKeyPress(Sender: TObject;
  var Key: Char);
begin
If not( key in['0'..'9','-',#8,#13] ) then
begin
key:=#0;
end;
end;

procedure TFrmConsulta.CBox_CSSerieExit(Sender: TObject);
begin
MEdit_CSMatricula.Text:= '';
end;

procedure TFrmConsulta.DBGrid_CS_AlunosDblClick(Sender: TObject);
begin
  Close;
FrmAlunos:= TFrmAlunos.Create(Application);
try
  FrmAlunos.ShowModal;
finally
  FrmAlunos.Free;
end;
end;

procedure TFrmConsulta.DBGrid_CS_AlunosCellClick(Column: TColumn);
begin
Dm.IBDS_ALUNOS.Locate('MATRICULA',IBQuery_CSALUNOSMATRICULA.AsString, []);
if CBox_Relacao.Text = 'MÊS' then
begin
Screen.Cursor := crHourGlass;
 IBQuery_CSParcelas.Close;
 IBQuery_CSParcelas.SQL.Clear;
 IBQuery_CSParcelas.SQL.Add('select * from CARNE ');
 IBQuery_CSParcelas.SQL.Add('where MES = :Mes and MATRICULA = :Mat and ANO_LETIVO = :AnoLet');
 IBQuery_CSParcelas.ParamByName('Mes').AsString:= CBox_Mes.Text;
 IBQuery_CSParcelas.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_CSParcelas.ParamByName('Mat').AsString:= IBQuery_CSALUNOSMATRICULA.AsString;
 IBQuery_CSParcelas.SQL.Add('order by DATA_VENCIMENTO');
 IBQuery_CSParcelas.Prepare;
 IBQuery_CSParcelas.Open;
Screen.Cursor := crDefault;
VerificaCSGarne;
Exit;
end else
Screen.Cursor := crHourGlass;
 IBQuery_CSParcelas.Close;
 IBQuery_CSParcelas.SQL.Clear;
 IBQuery_CSParcelas.SQL.Add('select * from CARNE ');
 IBQuery_CSParcelas.SQL.Add('where DATA_VENCIMENTO between :Inicio and :Final and MATRICULA = :Mat and ANO_LETIVO = :AnoLet');
 IBQuery_CSParcelas.ParamByName('Inicio').AsDate:= Data1.Date-30;
 IBQuery_CSParcelas.ParamByName('Final').AsDate:= Data2.Date;
 IBQuery_CSParcelas.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_CSParcelas.ParamByName('Mat').AsString:= IBQuery_CSALUNOSMATRICULA.AsString;
 IBQuery_CSParcelas.SQL.Add('order by DATA_VENCIMENTO');
 IBQuery_CSParcelas.Prepare;
 IBQuery_CSParcelas.Open;
Screen.Cursor := crDefault;
VerificaCSGarne;
end;

procedure TFrmConsulta.VerificaCSGarne;
begin
if DBGrid_CS_Alunos.Fields[0].Text = '' then
begin
DBGrid_CS_Alunos.Enabled:= False;
DBGrid_CS_Parcelas.Enabled:= False;
BtnFechar.SetFocus;
Btn_Imprimir.Enabled:= False;
Exit;
end else
DBGrid_CS_Alunos.Enabled:= True;
DBGrid_CS_Parcelas.Enabled:= True;
DBGrid_CS_Alunos.SetFocus;
Btn_Imprimir.Enabled:= True;
end;

procedure TFrmConsulta.DBGrid_CS_AlunosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
Dm.IBDS_ALUNOS.Locate('MATRICULA',IBQuery_CSALUNOSMATRICULA.AsString, []);
if CBox_Relacao.Text = 'MÊS' then
begin
Screen.Cursor := crHourGlass;
 IBQuery_CSParcelas.Close;
 IBQuery_CSParcelas.SQL.Clear;
 IBQuery_CSParcelas.SQL.Add('select * from CARNE ');
 IBQuery_CSParcelas.SQL.Add('where MES = :Mes and MATRICULA = :Mat and ANO_LETIVO = :AnoLet');
 IBQuery_CSParcelas.ParamByName('Mes').AsString:= CBox_Mes.Text;
 IBQuery_CSParcelas.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_CSParcelas.ParamByName('Mat').AsString:= IBQuery_CSALUNOSMATRICULA.AsString;
 IBQuery_CSParcelas.SQL.Add('order by DATA_VENCIMENTO');
 IBQuery_CSParcelas.Prepare;
 IBQuery_CSParcelas.Open;
Screen.Cursor := crDefault;
VerificaCSGarne;
Exit;
end else
Screen.Cursor := crHourGlass;
 IBQuery_CSParcelas.Close;
 IBQuery_CSParcelas.SQL.Clear;
 IBQuery_CSParcelas.SQL.Add('select * from CARNE ');
 IBQuery_CSParcelas.SQL.Add('where DATA_VENCIMENTO between :Inicio and :Final and MATRICULA = :Mat and ANO_LETIVO = :AnoLet');
 IBQuery_CSParcelas.ParamByName('Inicio').AsDate:= Data1.Date-30;
 IBQuery_CSParcelas.ParamByName('Final').AsDate:= Data2.Date;
 IBQuery_CSParcelas.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_CSParcelas.ParamByName('Mat').AsString:= IBQuery_CSALUNOSMATRICULA.AsString;
 IBQuery_CSParcelas.SQL.Add('order by DATA_VENCIMENTO');
 IBQuery_CSParcelas.Prepare;
 IBQuery_CSParcelas.Open;
Screen.Cursor := crDefault;
VerificaCSGarne;
end;

procedure TFrmConsulta.DBGrid_CS_AlunosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if not odd(IBQuery_CSALUNOS.RecNo) then // se for impar
// se a célula não está selecionada
if not (gdSelected in State) then
begin
// define uma cor de fundo
DBGrid_CS_Alunos.Canvas.Brush.Color:= clMoneyGreen;
DBGrid_CS_Alunos.Canvas.FillRect(Rect); // pinta a célula
// pinta o texto padrão
DBGrid_CS_Alunos.DefaultDrawDataCell(rect,column.Field,State);
end;
end;

procedure TFrmConsulta.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and not (ActiveControl is TMemo) then begin
// desabilita processamento posterior da tecla
  Key := #0;
  Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFrmConsulta.Btn_InformarClick(Sender: TObject);
begin
if CBox_Relacao.Text = '' then
begin
CBox_Relacao.SetFocus;
Exit;
end else
if CBox_Relacao.Text = 'MÊS' then
begin
if CBox_Mes.Text = '' then
begin
CBox_Mes.SetFocus;
Exit;
end;
end else

if (MEdit_CSMatricula.Text = '') and (CBox_CSSerie.Text = '') and (CBox_CSTurma.Text = '') and (CBox_CSTurno.Text = '') then
begin

if CBox_Relacao.Text = 'MÊS' then
begin
Screen.Cursor := crHourGlass;
 IBQuery_CSALUNOS.Close;
 IBQuery_CSALUNOS.SQL.Clear;
 IBQuery_CSALUNOS.SQL.Add('select ANO_LETIVO, CURSO, MATRICULA, NOME_ALUNO, NOME_RESP, SERIE, TURMA, TURNO from MATRICUL ');
 IBQuery_CSALUNOS.SQL.Add('where ANO_LETIVO = :AnoLet ');
 IBQuery_CSALUNOS.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_CSALUNOS.SQL.Add('order by NOME_ALUNO');
 IBQuery_CSALUNOS.Prepare;
 IBQuery_CSALUNOS.Open;
// SELECIONA AS PARCELAS DO CARNÊ
 IBQuery_CSParcelas.Close;
 IBQuery_CSParcelas.SQL.Clear;
 IBQuery_CSParcelas.SQL.Add('select * from CARNE ');
 IBQuery_CSParcelas.SQL.Add('where MES = :Mes and MATRICULA = :Mat and ANO_LETIVO = :AnoLet');
 IBQuery_CSParcelas.ParamByName('Mes').AsString:= CBox_Mes.Text;
 IBQuery_CSParcelas.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_CSParcelas.ParamByName('Mat').AsString:= IBQuery_CSALUNOSMATRICULA.AsString;
 IBQuery_CSParcelas.SQL.Add('order by DATA_VENCIMENTO');
 IBQuery_CSParcelas.Prepare;
 IBQuery_CSParcelas.Open;
Screen.Cursor := crDefault;
VerificaCSGarne;
Exit;
end else

Screen.Cursor := crHourGlass;
 IBQuery_CSALUNOS.Close;
 IBQuery_CSALUNOS.SQL.Clear;
 IBQuery_CSALUNOS.SQL.Add('select ANO_LETIVO, CURSO, MATRICULA, NOME_ALUNO, NOME_RESP, SERIE, TURMA, TURNO from MATRICUL ');
 IBQuery_CSALUNOS.SQL.Add('where ANO_LETIVO = :AnoLet ');
 IBQuery_CSALUNOS.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_CSALUNOS.SQL.Add('order by NOME_ALUNO');
 IBQuery_CSALUNOS.Prepare;
 IBQuery_CSALUNOS.Open;
// SELECIONA AS PARCELAS DO CARNÊ
 IBQuery_CSParcelas.Close;
 IBQuery_CSParcelas.SQL.Clear;
 IBQuery_CSParcelas.SQL.Add('select * from CARNE ');
 IBQuery_CSParcelas.SQL.Add('where DATA_VENCIMENTO between :Inicio and :Final and MATRICULA = :Mat and ANO_LETIVO = :AnoLet');
 IBQuery_CSParcelas.ParamByName('Inicio').AsDate:= Data1.Date-30;
 IBQuery_CSParcelas.ParamByName('Final').AsDate:= Data2.Date;
 IBQuery_CSParcelas.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_CSParcelas.ParamByName('Mat').AsString:= IBQuery_CSALUNOSMATRICULA.AsString;
 IBQuery_CSParcelas.SQL.Add('order by DATA_VENCIMENTO');
 IBQuery_CSParcelas.Prepare;
 IBQuery_CSParcelas.Open;
Screen.Cursor := crDefault;
VerificaCSGarne;
Exit;
end else
if (MEdit_CSMatricula.Text = '') and (CBox_CSSerie.Text <> '') then
begin
if CBox_CSTurma.Text = '' then
begin
CBox_CSTurma.SetFocus;
Exit;
end else
if CBox_CSTurno.Text = '' then
begin
CBox_CSTurno.SetFocus;
Exit;
end else

if CBox_Relacao.Text = 'MÊS' then
begin

Screen.Cursor := crHourGlass;
 IBQuery_CSALUNOS.Close;
 IBQuery_CSALUNOS.SQL.Clear;
 IBQuery_CSALUNOS.SQL.Add('select ANO_LETIVO, CURSO, MATRICULA, NOME_ALUNO, NOME_RESP, SERIE, TURMA, TURNO from MATRICUL ');
 IBQuery_CSALUNOS.SQL.Add('where SERIE = :SerieAluno and TURMA = :TurmaAluno and TURNO = :TurnoAluno and ANO_LETIVO = :AnoLet ');
 IBQuery_CSALUNOS.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_CSALUNOS.ParamByName('SerieAluno').AsString:= CBox_CSSerie.Text;
 IBQuery_CSALUNOS.ParamByName('TurmaAluno').AsString:= CBox_CSTurma.Text;
 IBQuery_CSALUNOS.ParamByName('TurnoAluno').AsString:= CBox_CSTurno.Text;
 IBQuery_CSALUNOS.SQL.Add('order by NOME_ALUNO');
 IBQuery_CSALUNOS.Prepare;
 IBQuery_CSALUNOS.Open;
// SELECIONA AS PARCELAS GERADAS DO CARNÊ
 IBQuery_CSParcelas.Close;
 IBQuery_CSParcelas.SQL.Clear;
 IBQuery_CSParcelas.SQL.Add('select * from CARNE ');
 IBQuery_CSParcelas.SQL.Add('where MES = :Mes and MATRICULA = :Mat and ANO_LETIVO = :AnoLet');
 IBQuery_CSParcelas.ParamByName('Mes').AsString:= CBox_Mes.Text;
 IBQuery_CSParcelas.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_CSParcelas.ParamByName('Mat').AsString:= IBQuery_CSALUNOSMATRICULA.AsString;
 IBQuery_CSParcelas.SQL.Add('order by DATA_VENCIMENTO');
 IBQuery_CSParcelas.Prepare;
 IBQuery_CSParcelas.Open;
Screen.Cursor := crDefault;
VerificaCSGarne;
Exit;
end else

Screen.Cursor := crHourGlass;
 IBQuery_CSALUNOS.Close;
 IBQuery_CSALUNOS.SQL.Clear;
 IBQuery_CSALUNOS.SQL.Add('select ANO_LETIVO, CURSO, MATRICULA, NOME_ALUNO, NOME_RESP, SERIE, TURMA, TURNO from MATRICUL ');
 IBQuery_CSALUNOS.SQL.Add('where SERIE = :SerieAluno and TURMA = :TurmaAluno and TURNO = :TurnoAluno and ANO_LETIVO = :AnoLet ');
 IBQuery_CSALUNOS.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_CSALUNOS.ParamByName('SerieAluno').AsString:= CBox_CSSerie.Text;
 IBQuery_CSALUNOS.ParamByName('TurmaAluno').AsString:= CBox_CSTurma.Text;
 IBQuery_CSALUNOS.ParamByName('TurnoAluno').AsString:= CBox_CSTurno.Text;
 IBQuery_CSALUNOS.SQL.Add('order by NOME_ALUNO');
 IBQuery_CSALUNOS.Prepare;
 IBQuery_CSALUNOS.Open;
// SELECIONA AS PARCELAS DO CARNÊ
 IBQuery_CSParcelas.Close;
 IBQuery_CSParcelas.SQL.Clear;
 IBQuery_CSParcelas.SQL.Add('select * from CARNE ');
 IBQuery_CSParcelas.SQL.Add('where DATA_VENCIMENTO between :Inicio and :Final and MATRICULA = :Mat and ANO_LETIVO = :AnoLet');
 IBQuery_CSParcelas.ParamByName('Inicio').AsDate:= Data1.Date-30;
 IBQuery_CSParcelas.ParamByName('Final').AsDate:= Data2.Date;
 IBQuery_CSParcelas.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_CSParcelas.ParamByName('Mat').AsString:= IBQuery_CSALUNOSMATRICULA.AsString;
 IBQuery_CSParcelas.SQL.Add('order by DATA_VENCIMENTO');
 IBQuery_CSParcelas.Prepare;
 IBQuery_CSParcelas.Open;
Screen.Cursor := crDefault;
VerificaCSGarne;
Exit;
end else
if (MEdit_CSMatricula.Text <> '') and (CBox_CSSerie.Text = '') then
begin

if CBox_Relacao.Text = 'MÊS' then
begin
Screen.Cursor := crHourGlass;
 IBQuery_CSALUNOS.Close;
 IBQuery_CSALUNOS.SQL.Clear;
 IBQuery_CSALUNOS.SQL.Add('select ANO_LETIVO, CURSO, MATRICULA, NOME_ALUNO, NOME_RESP, SERIE, TURMA, TURNO from MATRICUL ');
 IBQuery_CSALUNOS.SQL.Add('where MATRICULA = :Mat and ANO_LETIVO = :AnoLet ');
 IBQuery_CSALUNOS.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_CSALUNOS.ParamByName('Mat').AsString:= MEdit_CSMatricula.Text;
 IBQuery_CSALUNOS.SQL.Add('order by NOME_ALUNO');
 IBQuery_CSALUNOS.Prepare;
 IBQuery_CSALUNOS.Open;
// SELECIONA AS PARCELAS GERADAS DO CARNÊ
 IBQuery_CSParcelas.Close;
 IBQuery_CSParcelas.SQL.Clear;
 IBQuery_CSParcelas.SQL.Add('select * from CARNE ');
 IBQuery_CSParcelas.SQL.Add('where MES = :Mes and MATRICULA = :Mat and ANO_LETIVO = :AnoLet');
 IBQuery_CSParcelas.ParamByName('Mes').AsString:= CBox_Mes.Text;
 IBQuery_CSParcelas.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_CSParcelas.ParamByName('Mat').AsString:= IBQuery_CSALUNOSMATRICULA.AsString;
 IBQuery_CSParcelas.SQL.Add('order by DATA_VENCIMENTO');
 IBQuery_CSParcelas.Prepare;
 IBQuery_CSParcelas.Open;
Screen.Cursor := crDefault;
MEdit_CSMatricula.Text:= '';
VerificaCSGarne;
Exit;
end else

Screen.Cursor := crHourGlass;
 IBQuery_CSALUNOS.Close;
 IBQuery_CSALUNOS.SQL.Clear;
 IBQuery_CSALUNOS.SQL.Add('select ANO_LETIVO, CURSO, MATRICULA, NOME_ALUNO, NOME_RESP, SERIE, TURMA, TURNO from MATRICUL ');
 IBQuery_CSALUNOS.SQL.Add('where MATRICULA = :Mat and ANO_LETIVO = :AnoLet ');
 IBQuery_CSALUNOS.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_CSALUNOS.ParamByName('Mat').AsString:= MEdit_CSMatricula.Text;
 IBQuery_CSALUNOS.SQL.Add('order by NOME_ALUNO');
 IBQuery_CSALUNOS.Prepare;
 IBQuery_CSALUNOS.Open;
// SELECIONA AS PARCELAS GERADAS DO CARNÊ
 IBQuery_CSParcelas.Close;
 IBQuery_CSParcelas.SQL.Clear;
 IBQuery_CSParcelas.SQL.Add('select * from CARNE ');
 IBQuery_CSParcelas.SQL.Add('where DATA_VENCIMENTO between :Inicio and :Final and MATRICULA = :Mat and ANO_LETIVO = :AnoLet');
 IBQuery_CSParcelas.ParamByName('Inicio').AsDate:= Data1.Date-30;
 IBQuery_CSParcelas.ParamByName('Final').AsDate:= Data2.Date;
 IBQuery_CSParcelas.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_CSParcelas.ParamByName('Mat').AsString:= IBQuery_CSALUNOSMATRICULA.AsString;
 IBQuery_CSParcelas.SQL.Add('order by DATA_VENCIMENTO');
 IBQuery_CSParcelas.Prepare;
 IBQuery_CSParcelas.Open;
Screen.Cursor := crDefault;
MEdit_CSMatricula.Text:= '';
VerificaCSGarne;
end;
end;

procedure TFrmConsulta.DBGrid_CS_ParcelasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if not odd(IBQuery_CSParcelas.RecNo) then // se for impar
// se a célula não está selecionada
if not (gdSelected in State) then
begin
// define uma cor de fundo
DBGrid_CS_Parcelas.Canvas.Brush.Color:= clSkyBlue;
DBGrid_CS_Parcelas.Canvas.FillRect(Rect); // pinta a célula
// pinta o texto padrão
DBGrid_CS_Parcelas.DefaultDrawDataCell(rect,column.Field,State);
end;
 (*destaca campo SITUAÇÃO*)
   if Column.Field = IBQuery_CSParcelasSITUACAO_PARCELA then
     if IBQuery_CSParcelasSITUACAO_PARCELA.AsString = 'EM ABERTO' then
     begin
       DBGrid_CS_Parcelas.Canvas.Font.Style:= DBGrid_CS_Parcelas.Canvas.Font.Style + [fsBold];
       DBGrid_CS_Parcelas.Canvas.Font.Color:= $000080FF;
       DBGrid_CS_Parcelas.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
            end else
            if IBQuery_CSParcelasSITUACAO_PARCELA.AsString = 'PAGO' then
     begin
       DBGrid_CS_Parcelas.Canvas.Font.Style:= DBGrid_CS_Parcelas.Canvas.Font.Style + [fsBold];
       DBGrid_CS_Parcelas.Canvas.Font.Color:= clGreen;
       DBGrid_CS_Parcelas.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
            end else
            if IBQuery_CSParcelasSITUACAO_PARCELA.AsString = 'VENCIDO' then
     begin
       DBGrid_CS_Parcelas.Canvas.Font.Style:= DBGrid_CS_Parcelas.Canvas.Font.Style + [fsBold];
       DBGrid_CS_Parcelas.Canvas.Font.Color:= clRed;
       DBGrid_CS_Parcelas.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
   end;
end;

procedure TFrmConsulta.Btn_ImprimirClick(Sender: TObject);
begin
if Btn_Imprimir.Caption = 'Planilha' then
begin
try
 FrmRelPlanilha:=TFrmRelPlanilha.Create(nil);
 FrmRelPlanilha.QuickRep1.PreviewModal;
finally
 FrmRelPlanilha.Release;
end;
Exit;
end else
try
 FrmRelExtrato:=TFrmRelExtrato.Create(nil);
 FrmRelExtrato.QuickRep1.PreviewModal;
finally
 FrmRelExtrato.Release;
end;
end;

procedure TFrmConsulta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=Cafree;
end;

procedure TFrmConsulta.FormCreate(Sender: TObject);
begin
Shortdateformat:='dd/mm/yyyy';
Data1.Date:= Data;
Data2.Date:= Data + 60;
CBox_Mes.ItemIndex:= StrToInt(FormatDateTime('m', Data))-1;
end;

procedure TFrmConsulta.CBox_RelacaoChange(Sender: TObject);
begin
if CBox_Relacao.Text = 'MÊS' then
begin
Btn_Imprimir.Caption:= 'Planilha';
CBox_Mes.Visible:= True;

Exit;
end else
if CBox_Relacao.Text = 'PERÍODO' then
begin
Btn_Imprimir.Caption:= 'Extrato';
CBox_Mes.Visible:= False;


end;
end;

procedure TFrmConsulta.Data1Exit(Sender: TObject);
//var
//y,m,d: word;
//DataComDia: TDateTime;
begin
//DecodeDate(Data1.Date,y,m,d);
//DataComDia:= EncodeDate(y,m,1);
//Data1.Date:= DataComDia;
end;

procedure TFrmConsulta.Data2Exit(Sender: TObject);
//var
//y,m,d: word;
//DataComDia: TDateTime;
begin
//DecodeDate(Data2.Date,y,m,d);
//DataComDia:= EncodeDate(y,m,1);
//Data2.Date:= DataComDia;
end;

end.
