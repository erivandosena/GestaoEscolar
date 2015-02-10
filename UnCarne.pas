unit UnCarne;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons, Grids, DBGrids, DB, IBCustomDataSet,
  IBQuery, ExtCtrls, ExtDlgs, DBCtrls, Jpeg, Mask, ComCtrls;

type
  TFrmCarne = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Fechar1: TMenuItem;
    DS_CarneALUNOS: TDataSource;
    IBQuery_CarneALUNOS: TIBQuery;
    IBQuery_CarneALUNOSMATRICULA: TIBStringField;
    IBQuery_CarneALUNOSNOME_ALUNO: TIBStringField;
    IBQuery_CarneALUNOSNOME_RESP: TIBStringField;
    IBQuery_CarneALUNOSSERIE: TIBStringField;
    IBQuery_CarneALUNOSCURSO: TIBStringField;
    IBQuery_CarneALUNOSTURMA: TIBStringField;
    IBQuery_CarneALUNOSTURNO: TIBStringField;
    IBQuery_CarneALUNOSANO_LETIVO: TIBStringField;
    DS_CarneParcelas: TDataSource;
    IBQuery_CarneParcelas: TIBQuery;
    IBQuery_CarneParcelasCOD_CARN: TIntegerField;
    IBQuery_CarneParcelasNUMERO_DOC: TIBStringField;
    IBQuery_CarneParcelasMATRICULA: TIBStringField;
    IBQuery_CarneParcelasANO_LETIVO: TIBStringField;
    IBQuery_CarneParcelasNOME_RESP: TIBStringField;
    IBQuery_CarneParcelasNOME_ALUNO: TIBStringField;
    IBQuery_CarneParcelasTURMA: TIBStringField;
    IBQuery_CarneParcelasTURNO: TIBStringField;
    IBQuery_CarneParcelasCURSO: TIBStringField;
    IBQuery_CarneParcelasSERIE: TIBStringField;
    IBQuery_CarneParcelasMES: TIBStringField;
    IBQuery_CarneParcelasDATA_VENCIMENTO: TDateTimeField;
    IBQuery_CarneParcelasDATA_PAGAMENTO: TDateTimeField;
    IBQuery_CarneParcelasVALOR_MENSAL: TIBBCDField;
    IBQuery_CarneParcelasVALOR_ACRESC: TIBBCDField;
    IBQuery_CarneParcelasVALOR_DESCON: TIBBCDField;
    IBQuery_CarneParcelasNUMERO_PARCELA: TIBStringField;
    IBQuery_CarneParcelasSITUACAO_PARCELA: TIBStringField;
    IBQuery_CarneParcelasVALOR_APAGAR: TIBBCDField;
    IBQuery_CarneParcelasVALOR_PAGO: TIBBCDField;
    IBQuery_CarneParcelasVALOR_PENDENTE: TIBBCDField;
    IBQuery_CarneParcelasTOTAL_PAGO: TIBBCDField;
    Label11: TLabel;
    Label10: TLabel;
    DBGrid_GC_Parcelas: TDBGrid;
    DBGrid_GC_Alunos: TDBGrid;
    Label9: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label1: TLabel;
    CBox_GCSerie: TComboBox;
    CBox_GCTurma: TComboBox;
    CBox_GCTurno: TComboBox;
    Btn_Gerar: TBitBtn;
    CheckBox_Data: TCheckBox;
    CheckBox_Valor: TCheckBox;
    Btn_Selecionar: TBitBtn;
    BtnFechar: TBitBtn;
    UpDown1: TUpDown;
    CheckBox_Selecionado: TCheckBox;
    MEdit_GCMatricula: TMaskEdit;
    MEdit_Data: TMaskEdit;
    MEdit_Valor: TMaskEdit;
    MEdit_Fracao: TMaskEdit;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Btn_ImprimirCarne: TBitBtn;
    IBQuery_CarneALUNOSCG: TIntegerField;
    IBQuery_CarneParcelasNUMERO_CARNE: TIBStringField;
    IBQuery_CarneALUNOSCOD_MATI: TIntegerField;
    IBQuery_CarneALUNOSNUMERO_CARNE: TIBStringField;
    IBQuery_DeletaCarne: TIBQuery;
    Btn_ImpCapas: TBitBtn;
    procedure DBGrid_GC_ParcelasDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Btn_FecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_AlunosDblClick(Sender: TObject);
    procedure DBGrid_AlunosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGrid_ParcelasDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure Btn_MenuFecharClick(Sender: TObject);
    procedure DBGrid_GC_AlunosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Btn_SelecionarClick(Sender: TObject);
    procedure MEdit_GCMatriculaExit(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
    procedure MEdit_GCMatriculaKeyPress(Sender: TObject; var Key: Char);
    procedure CBox_GCSerieExit(Sender: TObject);
    procedure Btn_GerarClick(Sender: TObject);
    procedure MEdit_DataExit(Sender: TObject);
    procedure MEdit_ValorExit(Sender: TObject);
    procedure MEdit_FracaoKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_GC_AlunosCellClick(Column: TColumn);
    procedure Btn_ImprimirCarneClick(Sender: TObject);
    procedure MEdit_ValorKeyPress(Sender: TObject; var Key: Char);
    procedure Btn_ImpCapasClick(Sender: TObject);
  private
    { Private declarations }
    procedure VerificaGeraGarne;
  public
    { Public declarations }
  end;

var
  FrmCarne: TFrmCarne;
  Tipo, NumeroDeParcelas, Mensalidades: Integer;
  DataVencCarne: TDateTime;
  Mat, Doc: String;

implementation

uses UnDm, UnPrincipal, UnAlunos, UnFrmDataGeral, UnLocalizar, UnRelCarne,
  UnRelCapasCarne;

{$R *.dfm}

procedure TFrmCarne.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=Cafree;
end;

procedure TFrmCarne.FormCreate(Sender: TObject);
begin
Shortdateformat:='dd/mm/yyyy';
end;

procedure TFrmCarne.FormShow(Sender: TObject);
begin
FrmCarne.Top:=0;
FrmCarne.Left:=0;
IBQuery_CarneALUNOS.Close;
IBQuery_CarneALUNOS.Open;
IBQuery_CarnePARCELAS.Close;
IBQuery_CarnePARCELAS.Open;
VerificaGeraGarne;
MEdit_GCMatricula.SetFocus;
//DecimalSeparator:='.';
//ThousandSeparator:=',';
end;

procedure TFrmCarne.Btn_FecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmCarne.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and not (ActiveControl is TMemo) then begin
// desabilita processamento posterior da tecla
  Key := #0;
  Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFrmCarne.DBGrid_AlunosDblClick(Sender: TObject);
begin
  Close;
FrmAlunos:= TFrmAlunos.Create(Application);
try
  FrmAlunos.ShowModal;
finally
  FrmAlunos.Free;
end;
end;

procedure TFrmCarne.DBGrid_AlunosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if not odd(IBQuery_CarneALUNOS.RecNo) then // se for impar
// se a célula não está selecionada
if not (gdSelected in State) then
begin
// define uma cor de fundo
DBGrid_GC_Alunos.Canvas.Brush.Color:= clMoneyGreen;
DBGrid_GC_Alunos.Canvas.FillRect(Rect); // pinta a célula
// pinta o texto padrão
DBGrid_GC_Alunos.DefaultDrawDataCell(rect,column.Field,State);
end;
end;

procedure TFrmCarne.DBGrid_ParcelasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if not odd(IBQuery_CarneParcelas.RecNo) then // se for impar
// se a célula não está selecionada
if not (gdSelected in State) then
begin
// define uma cor de fundo
DBGrid_GC_Parcelas.Canvas.Brush.Color:= clSkyBlue;
DBGrid_GC_Parcelas.Canvas.FillRect(Rect); // pinta a célula
// pinta o texto padrão
DBGrid_GC_Parcelas.DefaultDrawDataCell(rect,column.Field,State);
end;
end;

procedure TFrmCarne.Btn_MenuFecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmCarne.DBGrid_GC_AlunosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
Dm.IBDS_MATRICULAS.Close;
Dm.IBDS_MATRICULAS.Open;
Dm.IBDS_MATRICULAS.Locate('MATRICULA',IBQuery_CarneALUNOSMATRICULA.AsString, []);

 IBQuery_CarneParcelas.Close;
 IBQuery_CarneParcelas.SQL.Clear;
 IBQuery_CarneParcelas.SQL.Add('select * from CARNE ');
 IBQuery_CarneParcelas.SQL.Add('where MATRICULA = :Mat and ANO_LETIVO = :AnoLet');
 IBQuery_CarneParcelas.ParamByName('Mat').AsString:= Dm.IBDS_MATRICULASMATRICULA.AsString;
 IBQuery_CarneParcelas.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_CarneParcelas.SQL.Add('order by DATA_VENCIMENTO');
 IBQuery_CarneParcelas.Prepare;
 IBQuery_CarneParcelas.Open;
VerificaGeraGarne;
end;

procedure TFrmCarne.DBGrid_GC_ParcelasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if not odd(IBQuery_CarneParcelas.RecNo) then // se for impar
// se a célula não está selecionada
if not (gdSelected in State) then
begin
// define uma cor de fundo
DBGrid_GC_Parcelas.Canvas.Brush.Color:= $00F0F0F0;
DBGrid_GC_Parcelas.Canvas.FillRect(Rect); // pinta a célula
// pinta o texto padrão
DBGrid_GC_Parcelas.DefaultDrawDataCell(rect,column.Field,State);
end;
end;

procedure TFrmCarne.Btn_SelecionarClick(Sender: TObject);
begin
if (MEdit_GCMatricula.Text = '') and (CBox_GCSerie.Text = '') and (CBox_GCTurma.Text = '') and (CBox_GCTurno.Text = '') then
begin
Screen.Cursor := crHourGlass;
 IBQuery_CarneALUNOS.Close;
 IBQuery_CarneALUNOS.SQL.Clear;
 IBQuery_CarneALUNOS.SQL.Add('select COD_MATI, ANO_LETIVO, CURSO, MATRICULA, NOME_ALUNO, NOME_RESP, SERIE, TURMA, TURNO, CG, NUMERO_CARNE from MATRICUL ');
 IBQuery_CarneALUNOS.SQL.Add('where ANO_LETIVO = :AnoLet ');
 IBQuery_CarneALUNOS.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_CarneALUNOS.SQL.Add('order by NOME_ALUNO');
 IBQuery_CarneALUNOS.Prepare;
 IBQuery_CarneALUNOS.Open;
// SELECIONA AS PARCELAS GERADAS DO CARNÊ
 IBQuery_CarneParcelas.Close;
 IBQuery_CarneParcelas.SQL.Clear;
 IBQuery_CarneParcelas.SQL.Add('select * from CARNE ');
 IBQuery_CarneParcelas.SQL.Add('where MATRICULA = :Mat and ANO_LETIVO = :AnoLet ');
 IBQuery_CarneParcelas.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_CarneParcelas.ParamByName('Mat').AsString:= IBQuery_CarneALUNOSMATRICULA.AsString;
 IBQuery_CarneParcelas.SQL.Add('order by DATA_VENCIMENTO');
 IBQuery_CarneParcelas.Prepare;
 IBQuery_CarneParcelas.Open;
Screen.Cursor := crDefault;
VerificaGeraGarne;
Exit;
end else
(*if (MEdit_GCMatricula.Text = '') and (CBox_GCSerie.Text <> '') then
begin
Screen.Cursor := crHourGlass;
 IBQuery_CarneALUNOS.Close;
 IBQuery_CarneALUNOS.SQL.Clear;
 IBQuery_CarneALUNOS.SQL.Add('select COD_MATI, ANO_LETIVO, CURSO, MATRICULA, NOME_ALUNO, NOME_RESP, SERIE, TURMA, TURNO, CG, NUMERO_CARNE from MATRICUL ');
 IBQuery_CarneALUNOS.SQL.Add('where SERIE = :SerieAluno and ANO_LETIVO = :AnoLet ');
 IBQuery_CarneALUNOS.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_CarneALUNOS.ParamByName('SerieAluno').AsString:= CBox_GCSerie.Text;
 IBQuery_CarneALUNOS.SQL.Add('order by NOME_ALUNO');
 IBQuery_CarneALUNOS.Prepare;
 IBQuery_CarneALUNOS.Open;
Screen.Cursor := crDefault;
VerificaGeraGarne;
Exit;
end else   *)
if (CBox_GCSerie.Text <> '') and (CBox_GCTurma.Text <> '') and (CBox_GCTurno.Text <> '') then
begin
Screen.Cursor := crHourGlass;
 IBQuery_CarneALUNOS.Close;
 IBQuery_CarneALUNOS.SQL.Clear;
 IBQuery_CarneALUNOS.SQL.Add('select COD_MATI, ANO_LETIVO, CURSO, MATRICULA, NOME_ALUNO, NOME_RESP, SERIE, TURMA, TURNO, CG, NUMERO_CARNE from MATRICUL ');
 IBQuery_CarneALUNOS.SQL.Add('where SERIE = :SerieAluno and TURMA = :TurmaAluno and TURNO = :TurnoAluno and ANO_LETIVO = :AnoLet ');
 IBQuery_CarneALUNOS.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_CarneALUNOS.ParamByName('SerieAluno').AsString:= CBox_GCSerie.Text;
 IBQuery_CarneALUNOS.ParamByName('TurmaAluno').AsString:= CBox_GCTurma.Text;
 IBQuery_CarneALUNOS.ParamByName('TurnoAluno').AsString:= CBox_GCTurno.Text;
 IBQuery_CarneALUNOS.SQL.Add('order by NOME_ALUNO');
 IBQuery_CarneALUNOS.Prepare;
 IBQuery_CarneALUNOS.Open;
Screen.Cursor := crDefault;
VerificaGeraGarne;
Exit;
end else
if Trim(MEdit_GCMatricula.Text) <> '' then
begin
Screen.Cursor := crHourGlass;
 IBQuery_CarneALUNOS.Close;
 IBQuery_CarneALUNOS.SQL.Clear;
 IBQuery_CarneALUNOS.SQL.Add('select COD_MATI, ANO_LETIVO, CURSO, MATRICULA, NOME_ALUNO, NOME_RESP, SERIE, TURMA, TURNO, CG, NUMERO_CARNE from MATRICUL ');
 IBQuery_CarneALUNOS.SQL.Add('where MATRICULA = :Mat and ANO_LETIVO = :AnoLet ');
 IBQuery_CarneALUNOS.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_CarneALUNOS.ParamByName('Mat').AsString:= MEdit_GCMatricula.Text;
 IBQuery_CarneALUNOS.SQL.Add('order by NOME_ALUNO');
 IBQuery_CarneALUNOS.Prepare;
 IBQuery_CarneALUNOS.Open;
Screen.Cursor := crDefault;
MEdit_GCMatricula.Text:= '';
VerificaGeraGarne;
end;
end;

procedure TFrmCarne.MEdit_GCMatriculaExit(Sender: TObject);
begin
if MEdit_GCMatricula.Text = '' then
begin
CBox_GCSerie.SetFocus;
Exit;
end else
MEdit_GCMatricula.Text:= FrmPrincipal.RetZero(MEdit_GCMatricula.Text, 15);
MEdit_GCMatricula.Text:= FrmLocalizar.FormataMat(MEdit_GCMatricula.Text);
CBox_GCSerie.Text:= '';
CBox_GCTurma.Text:= '';
CBox_GCTurno.Text:= '';
Btn_Selecionar.SetFocus;
end;


procedure TFrmCarne.BtnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmCarne.MEdit_GCMatriculaKeyPress(Sender: TObject;
  var Key: Char);
begin
If not( key in['0'..'9','-',#8,#13] ) then
begin
key:=#0;
end;
end;

procedure TFrmCarne.CBox_GCSerieExit(Sender: TObject);
begin
MEdit_GCMatricula.Text:= '';
end;

procedure TFrmCarne.VerificaGeraGarne;
begin
if DBGrid_GC_Alunos.Fields[0].Text = '' then
begin
DBGrid_GC_Alunos.Enabled:= False;
DBGrid_GC_Parcelas.Enabled:= False;
BtnFechar.SetFocus;
Exit;
end else
DBGrid_GC_Alunos.Enabled:= True;
DBGrid_GC_Parcelas.Enabled:= True;
DBGrid_GC_Alunos.SetFocus;
if DBGrid_GC_Parcelas.Fields[0].Text = '' then
begin
Btn_Gerar.Caption:= 'Gerar Carnê';
Btn_ImprimirCarne.Enabled:= False;
Btn_ImpCapas.Enabled:= False;
Exit;
end else
Btn_Gerar.Caption:= 'Apagar Carnê';
Btn_ImprimirCarne.Enabled:= True;
Btn_ImpCapas.Enabled:= True;
end;

procedure TFrmCarne.Btn_GerarClick(Sender: TObject);
var
i: Integer;
begin
Dm.IBDS_CARNE.Close;
Dm.IBDS_CARNE.Open;
//*********************************************************************
// GERA O CARNE POR ALUNO                                             *
//*********************************************************************
//if CheckBox_Selecionado.Checked = True then
//begin
// VERIFICA SE O CARNE FOI GERADO
if Dm.IBDS_MATRICULASCG.AsString = '1' then
begin
// APAGA AS PARCELAS DO CARNÊ
Screen.Cursor := crSQLWait;
IBQuery_DeletaCarne.Close;
IBQuery_DeletaCarne.SQL.Clear;
IBQuery_DeletaCarne.SQL.Add('Delete from CARNE ');
IBQuery_DeletaCarne.SQL.Add('where NUMERO_CARNE = :NCarne ');
IBQuery_DeletaCarne.ParamByName('NCarne').AsString:= Dm.IBDS_MATRICULASNUMERO_CARNE.AsString;
IBQuery_DeletaCarne.ExecSQL;
// ALTERA MATRICULAS
Dm.IBDS_MATRICULAS.Locate('MATRICULA', IBQuery_CarneALUNOSMATRICULA.AsString, []);
Dm.IBDS_MATRICULAS.Edit;
Dm.IBDS_MATRICULAS.FieldByName('CG').AsInteger:= 0;
Dm.IBDS_MATRICULAS.FieldByName('NUMERO_CARNE').AsString:= '';
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_MATRICULAS.Post;
Dm.IBDS_MATRICULAS.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;

Dm.IBDS_MATRICULAS.Locate('MATRICULA',IBQuery_CarneALUNOSMATRICULA.AsString, []);

 IBQuery_CarneParcelas.Close;
 IBQuery_CarneParcelas.SQL.Clear;
 IBQuery_CarneParcelas.SQL.Add('select * from CARNE ');
 IBQuery_CarneParcelas.SQL.Add('where MATRICULA = :Mat and ANO_LETIVO = :AnoLet');
 IBQuery_CarneParcelas.ParamByName('Mat').AsString:= Dm.IBDS_MATRICULASMATRICULA.AsString;
 IBQuery_CarneParcelas.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_CarneParcelas.SQL.Add('order by DATA_VENCIMENTO');
 IBQuery_CarneParcelas.Prepare;
 IBQuery_CarneParcelas.Open;
VerificaGeraGarne;
Screen.Cursor := crDefault;
Exit;
end else
// FINALIZA A EXCLUSÃO E INICIA A GERAÇÃO DE CARNÊ POR ALUNO //
// VERIFICA SE O CARNE NÃO FOI GERADO
if Dm.IBDS_MATRICULASCG.AsString = '0' then
begin
// GERA AS PARCELAS DO CARNÊ
Screen.Cursor := crSQLWait;
NumeroDeParcelas:= StrToInt(MEdit_Fracao.Text);
Mensalidades:= NumeroDeParcelas;
for i:=1 to NumeroDeParcelas * 1  do begin
NumeroDeParcelas:=(i);
repeat
Dm.IBDS_CARNE.Append;
Dm.IBDS_CARNENOME_ALUNO.AsString:= IBQuery_CarneALUNOSNOME_ALUNO.AsString;
Dm.IBDS_CARNENOME_RESP.AsString:= IBQuery_CarneALUNOSNOME_RESP.AsString;
Dm.IBDS_CARNEANO_LETIVO.AsString:= IBQuery_CarneALUNOSANO_LETIVO.AsString;
Dm.IBDS_CARNECURSO.AsString:= IBQuery_CarneALUNOSCURSO.AsString;
Dm.IBDS_CARNETURMA.AsString:= IBQuery_CarneALUNOSTURMA.AsString;
Dm.IBDS_CARNETURNO.AsString:= IBQuery_CarneALUNOSTURNO.AsString;
Dm.IBDS_CARNESERIE.AsString:= IBQuery_CarneALUNOSSERIE.AsString;
Dm.IBDS_CARNENUMERO_PARCELA.AsString:= IntToStr((i))+'/'+IntToStr(Mensalidades);
if IBQuery_CarneALUNOSCURSO.Value = 'EDUCAÇÃO INFANTIL' then
begin
if CheckBox_Valor.Checked = True then
begin
Dm.IBDS_CARNEVALOR_MENSAL.AsFloat:= StrToFloat(MEdit_Valor.Text);
end else
Dm.IBDS_CARNEVALOR_MENSAL.AsFloat:= Dm.IBDS_EMPRESAMENSALIDADE_EI.AsFloat;
end;
if IBQuery_CarneALUNOSCURSO.Value = 'ENSINO FUNDAMENTAL I' then
begin
if CheckBox_Valor.Checked = True then
begin
Dm.IBDS_CARNEVALOR_MENSAL.AsFloat:= StrToFloat(MEdit_Valor.Text);
end else
Dm.IBDS_CARNEVALOR_MENSAL.AsFloat:= Dm.IBDS_EMPRESAMENSALIDADE_EFI.AsFloat;
end;
if IBQuery_CarneALUNOSCURSO.Value = 'ENSINO FUNDAMENTAL II' then
begin
if CheckBox_Valor.Checked = True then
begin
Dm.IBDS_CARNEVALOR_MENSAL.AsFloat:= StrToFloat(MEdit_Valor.Text);
end else
Dm.IBDS_CARNEVALOR_MENSAL.AsFloat:= Dm.IBDS_EMPRESAMENSALIDADE_EFII.AsFloat;
end;
Dm.IBDS_CARNEMATRICULA.AsString:= IBQuery_CarneALUNOSMATRICULA.AsString;
DecodeDate (Data, Ano, Mes, Dia);
Dia:= StrToInt(Dm.IBDS_EMPRESAVENCIMENTO_DIA.AsString);
Mes:= Mes;
Ano:= Ano;
if CheckBox_Data.Checked = True then
begin
DataVencCarne:= StrToDate(MEdit_Data.Text);
end else
DataVencCarne:= EncodeDate(Ano, Mes, Dia);
Dm.IBDS_CARNEDATA_VENCIMENTO.AsDateTime:= IncMonth(DataVencCarne,(i)-1);
Dm.IBDS_CARNEMES.AsString:= LowerCase(FormatDateTime('MMMM',Dm.IBDS_CARNEDATA_VENCIMENTO.AsDateTime));
Dm.IBDS_CARNESITUACAO_PARCELA.AsString:= 'EM ABERTO';
Doc:= Dm.IBDS_CARNECOD_CARN.AsString+FrmPrincipal.RetZero(IntToStr((i)), 2);
Doc:= FrmPrincipal.RetZero(Doc, 16);
Dm.IBDS_CARNENUMERO_DOC.AsString:= Doc;
Dm.IBDS_CARNE.FieldByName('VALOR_ACRESC').AsFloat:= 0;
Dm.IBDS_CARNE.FieldByName('VALOR_DESCON').AsFloat:= 0;
Dm.IBDS_CARNE.FieldByName('VALOR_APAGAR').AsFloat:= 0;
Dm.IBDS_CARNE.FieldByName('VALOR_PAGO').AsFloat:= 0;
Dm.IBDS_CARNE.FieldByName('VALOR_PENDENTE').AsFloat:= 0;
Dm.IBDS_CARNE.FieldByName('TOTAL_PAGO').AsFloat:= 0;
Dm.IBDS_CARNE.FieldByName('NUMERO_CARNE').AsString:= AnoLetivo+IBQuery_CarneALUNOSCOD_MATI.AsString;
Dm.IBDS_MATRICULAS.Locate('MATRICULA', IBQuery_CarneALUNOSMATRICULA.AsString, []);
Dm.IBDS_MATRICULAS.Edit;
Dm.IBDS_MATRICULAS.FieldByName('CG').AsInteger:= 1;
Dm.IBDS_MATRICULAS.FieldByName('NUMERO_CARNE').AsString:= AnoLetivo+IBQuery_CarneALUNOSCOD_MATI.AsString;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_MATRICULAS.Post;
Dm.IBDS_MATRICULAS.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_CARNE.Post;
Dm.IBDS_CARNE.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
until
i= NumeroDeParcelas;
end;
end;
Dm.IBDS_MATRICULAS.Locate('MATRICULA',IBQuery_CarneALUNOSMATRICULA.AsString, []);

 IBQuery_CarneParcelas.Close;
 IBQuery_CarneParcelas.SQL.Clear;
 IBQuery_CarneParcelas.SQL.Add('select * from CARNE ');
 IBQuery_CarneParcelas.SQL.Add('where MATRICULA = :Mat and ANO_LETIVO = :AnoLet');
 IBQuery_CarneParcelas.ParamByName('Mat').AsString:= Dm.IBDS_MATRICULASMATRICULA.AsString;
 IBQuery_CarneParcelas.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_CarneParcelas.SQL.Add('order by DATA_VENCIMENTO');
 IBQuery_CarneParcelas.Prepare;
 IBQuery_CarneParcelas.Open;
VerificaGeraGarne;
Screen.Cursor := crDefault;
end;

procedure TFrmCarne.MEdit_DataExit(Sender: TObject);
begin
if MEdit_Data.Text = '  /  /    ' then
begin
MEdit_Valor.SetFocus;
Exit;
end else
try
StrToDate(MEdit_Data.Text);
except
on EConvertError do begin
ShowMessage ('Data Inválida!');
MEdit_Data.Text:= '';
MEdit_Data.SetFocus;
end;
end;
end;

procedure TFrmCarne.MEdit_ValorExit(Sender: TObject);
begin
if MEdit_Valor.Text = '' then
begin
MEdit_Valor.Text:= '0';
end else
MEdit_Valor.Text:= FormatFloat('###,###,##0.00', StrToFloat(MEdit_Valor.Text));
end;

procedure TFrmCarne.MEdit_FracaoKeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['0'..'9',#8,#13] ) then
begin
key:=#0;
end;
end;

procedure TFrmCarne.DBGrid_GC_AlunosCellClick(Column: TColumn);
begin
Dm.IBDS_MATRICULAS.Close;
Dm.IBDS_MATRICULAS.Open;
Dm.IBDS_MATRICULAS.Locate('MATRICULA',IBQuery_CarneALUNOSMATRICULA.AsString, []);

 IBQuery_CarneParcelas.Close;
 IBQuery_CarneParcelas.SQL.Clear;
 IBQuery_CarneParcelas.SQL.Add('select * from CARNE ');
 IBQuery_CarneParcelas.SQL.Add('where MATRICULA = :Mat and ANO_LETIVO = :AnoLet');
 IBQuery_CarneParcelas.ParamByName('Mat').AsString:= Dm.IBDS_MATRICULASMATRICULA.AsString;
 IBQuery_CarneParcelas.ParamByName('AnoLet').AsString:= AnoLetivo;
 IBQuery_CarneParcelas.SQL.Add('order by DATA_VENCIMENTO');
 IBQuery_CarneParcelas.Prepare;
 IBQuery_CarneParcelas.Open;
VerificaGeraGarne;
end;

procedure TFrmCarne.Btn_ImprimirCarneClick(Sender: TObject);
begin
try
 FrmRelCarne:=TFrmRelCarne.Create(nil);
 FrmRelCarne.QuickRep1.PreviewModal;
finally
 FrmRelCarne.Release;
end;
end;

procedure TFrmCarne.MEdit_ValorKeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['0'..'9',',',#8,#13] ) then
begin
key:=#0;
end;
end;

procedure TFrmCarne.Btn_ImpCapasClick(Sender: TObject);
begin
try
 FrmRelCapasCarne:=TFrmRelCapasCarne.Create(nil);
 FrmRelCapasCarne.QuickRep1.PreviewModal;
finally
 FrmRelCapasCarne.Release;
end;
end;

end.

