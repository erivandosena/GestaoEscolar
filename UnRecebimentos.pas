unit UnRecebimentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, ExtCtrls, Grids, DBGrids, DB,
  IBCustomDataSet, IBQuery, DBCtrls, DateUtils;

type
  TFrmRecebimentos = class(TForm)
    Bevel1: TBevel;
    Label9: TLabel;
    Btn_Acessar: TBitBtn;
    MEdit_PGMatricula: TMaskEdit;
    IBQuery_PGParcelas: TIBQuery;
    IBQuery_PGParcelasCOD_CARN: TIntegerField;
    IBQuery_PGParcelasNUMERO_DOC: TIBStringField;
    IBQuery_PGParcelasMATRICULA: TIBStringField;
    IBQuery_PGParcelasANO_LETIVO: TIBStringField;
    IBQuery_PGParcelasNOME_RESP: TIBStringField;
    IBQuery_PGParcelasNOME_ALUNO: TIBStringField;
    IBQuery_PGParcelasTURMA: TIBStringField;
    IBQuery_PGParcelasTURNO: TIBStringField;
    IBQuery_PGParcelasCURSO: TIBStringField;
    IBQuery_PGParcelasSERIE: TIBStringField;
    IBQuery_PGParcelasMES: TIBStringField;
    IBQuery_PGParcelasDATA_VENCIMENTO: TDateTimeField;
    IBQuery_PGParcelasDATA_PAGAMENTO: TDateTimeField;
    IBQuery_PGParcelasVALOR_MENSAL: TIBBCDField;
    IBQuery_PGParcelasVALOR_ACRESC: TIBBCDField;
    IBQuery_PGParcelasVALOR_DESCON: TIBBCDField;
    IBQuery_PGParcelasNUMERO_PARCELA: TIBStringField;
    IBQuery_PGParcelasSITUACAO_PARCELA: TIBStringField;
    IBQuery_PGParcelasVALOR_APAGAR: TIBBCDField;
    IBQuery_PGParcelasVALOR_PAGO: TIBBCDField;
    IBQuery_PGParcelasVALOR_PENDENTE: TIBBCDField;
    IBQuery_PGParcelasTOTAL_PAGO: TIBBCDField;
    DS_PGParcelas: TDataSource;
    MEdit_PGDoc: TMaskEdit;
    Label1: TLabel;
    MEdit_PGAluno: TMaskEdit;
    Label2: TLabel;
    DBGrid_PG_Parcelas: TDBGrid;
    MEdit_Acrescimo: TMaskEdit;
    Label3: TLabel;
    MEdit_Desconto: TMaskEdit;
    Label4: TLabel;
    MEdit_Apagar: TMaskEdit;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Btn_ConfirmaPG: TBitBtn;
    Btn_EstornaPG: TBitBtn;
    BtnFechar: TBitBtn;
    Btn_ProximoPG: TBitBtn;
    Label10: TLabel;
    MEdit_DataPG: TMaskEdit;
    Label_Multa: TLabel;
    Label_Juros: TLabel;
    Label6: TLabel;
    DBText1: TDBText;
    DBText3: TDBText;
    Label12: TLabel;
    DataSource_Carne: TDataSource;
    Label13: TLabel;
    Label_Total: TLabel;
    CBox_CSSerie: TComboBox;
    Label16: TLabel;
    CBox_CSTurma: TComboBox;
    Label17: TLabel;
    CBox_CSTurno: TComboBox;
    Label18: TLabel;
    BtnGeral: TBitBtn;
    CBox_Mes: TComboBox;
    CBox_Desconto: TComboBox;
    procedure CBox_CSTurnoEnter(Sender: TObject);
    procedure CBox_CSTurmaEnter(Sender: TObject);
    procedure CBox_CSSerieEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure MEdit_PGMatriculaExit(Sender: TObject);
    procedure MEdit_PGMatriculaKeyPress(Sender: TObject; var Key: Char);
    procedure CBox_PGSerieExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure MEdit_PGDocKeyPress(Sender: TObject; var Key: Char);
    procedure MEdit_PGDocExit(Sender: TObject);
    procedure Btn_AcessarClick(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
    procedure Btn_ProximoPGClick(Sender: TObject);
    procedure MEdit_PGAlunoExit(Sender: TObject);
    procedure Btn_ConfirmaPGClick(Sender: TObject);
    procedure DBGrid_PG_ParcelasExit(Sender: TObject);
    procedure DBGrid_PG_ParcelasCellClick(Column: TColumn);
    procedure MEdit_DataPGExit(Sender: TObject);
    procedure MEdit_AcrescimoExit(Sender: TObject);
    procedure MEdit_DescontoExit(Sender: TObject);
    procedure MEdit_ApagarExit(Sender: TObject);
    procedure DBGrid_PG_ParcelasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid_PG_ParcelasDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure Btn_EstornaPGClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid_PG_ParcelasDblClick(Sender: TObject);
    procedure BtnGeralClick(Sender: TObject);
    procedure CBox_DescontoEnter(Sender: TObject);
  private
    { Private declarations }
     procedure Controles;
  public
    { Public declarations }
    function DifDateUtil(dataini,datafin:string):integer;
    function IsWeekEnd(dData : TDateTime) : boolean;
    function DifDias(DataVenc:TDateTime; DataAtual:TDateTime): String;
    function ProximoDiaUtil (dData : TDateTime) : TDateTime;
    function GeraPorcentagem(Valor:Real;Percent:Real):Real;
  end;

var
  FrmRecebimentos: TFrmRecebimentos;
  Doc, Mat, Alun: String;
  Pesquisa, DiaAtrazo: Integer;
  Percentual, ValorDesc, Multa, TotalMulta, Juros, Acrescimo, Desconto, ValorMensal, SubTotal, TotalAPagar, ValorPago: Real;
  DataVencimento, DataPagamento: TDateTime;

implementation

uses UnPrincipal, UnLocalizar, UnAlunos, UnDm, UnRelPlanilha, UnDmSeleciona;

{$R *.dfm}

procedure TFrmRecebimentos.FormShow(Sender: TObject);
begin
FrmRecebimentos.Top:=0;
FrmRecebimentos.Left:=0;
IBQuery_PGPARCELAS.Close;
IBQuery_PGPARCELAS.Open;
Dm.IBDS_CARNE.Close;
Dm.IBDS_CARNE.Open;
Controles;
MEdit_PGDoc.SetFocus;
end;

procedure TFrmRecebimentos.MEdit_PGMatriculaExit(Sender: TObject);
begin
if MEdit_PGMatricula.Text = '' then
begin
MEdit_PGMatricula.Text:= '';
Exit;
end else
MEdit_PGMatricula.Text:= FrmPrincipal.RetZero(MEdit_PGMatricula.Text, 15);
MEdit_PGMatricula.Text:= FrmLocalizar.FormataMat(MEdit_PGMatricula.Text);
MEdit_PGDoc.Text:= '';
MEdit_PGAluno.Text:= '';
if not Dm.IBDS_CARNE.Locate('MATRICULA', MEdit_PGMatricula.Text, []) then
begin
ShowMessage('O matrícula Nº "'+MEdit_PGMatricula.Text+'" não é válida.');
MEdit_PGMatricula.Text:= '';
end else
if Btn_Acessar.Enabled = True then
begin
Btn_Acessar.SetFocus;
Btn_AcessarClick(Nil);
end;
end;

procedure TFrmRecebimentos.MEdit_PGMatriculaKeyPress(Sender: TObject;
  var Key: Char);
begin
If not( key in['0'..'9','-',#8,#13] ) then
begin
key:=#0;
end;
end;

procedure TFrmRecebimentos.CBox_PGSerieExit(Sender: TObject);
begin
MEdit_PGMatricula.Text:= '';
end;

procedure TFrmRecebimentos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and not (ActiveControl is TMemo) then begin
// desabilita processamento posterior da tecla
  Key := #0;
  Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFrmRecebimentos.MEdit_PGDocKeyPress(Sender: TObject;
  var Key: Char);
begin
If not( key in['0'..'9',#8,#13] ) then
begin
key:=#0;
end;
end;

procedure TFrmRecebimentos.MEdit_PGDocExit(Sender: TObject);
begin
if MEdit_PGDoc.Text = '' then
begin
MEdit_PGDoc.Text:= '';
Exit;
end else
MEdit_PGDoc.Text:= FrmPrincipal.RetZero(MEdit_PGDoc.Text, 16);
MEdit_PGMatricula.Text:= '';
MEdit_PGAluno.Text:= '';
Dm.IBDS_CARNE.Close;
Dm.IBDS_CARNE.Open;
if not Dm.IBDS_CARNE.Locate('NUMERO_DOC', MEdit_PGDoc.Text, []) then
begin
ShowMessage('O documento Nº "'+MEdit_PGDoc.Text+'" não é válido.');
MEdit_PGDoc.Text:= '';
end else
Btn_AcessarClick(Nil);
end;

procedure TFrmRecebimentos.Btn_AcessarClick(Sender: TObject);
begin
if (MEdit_PGDoc.Text = '') and (MEdit_PGMatricula.Text = '') and (MEdit_PGAluno.Text = '') then
begin
MEdit_PGDoc.SetFocus;
Exit;
end else
if (MEdit_PGDoc.Text <> '') and (MEdit_PGMatricula.Text = '') and (MEdit_PGAluno.Text = '') then
begin
Doc:= MEdit_PGDoc.Text;
Pesquisa:= 1;
Screen.Cursor := crHourGlass;
// SELECIONA A PARCELA DO CARNÊ
 IBQuery_PGParcelas.Close;
 IBQuery_PGParcelas.SQL.Clear;
 IBQuery_PGParcelas.SQL.Add('select * from CARNE ');
 IBQuery_PGParcelas.SQL.Add('where NUMERO_DOC = :Docum and ANO_LETIVO = :AL ');
 IBQuery_PGParcelas.ParamByName('Docum').AsString:= Doc;
 IBQuery_PGParcelas.ParamByName('AL').AsString:= AnoLetivo;
 IBQuery_PGParcelas.SQL.Add('order by DATA_VENCIMENTO');
 IBQuery_PGParcelas.Prepare;
 IBQuery_PGParcelas.Open;
Screen.Cursor := crDefault;
if not IBQuery_PGParcelas.Locate('NUMERO_DOC', Doc, []) then
begin
MessageDlg('Documento de mensalidade já paga.', mtCustom, [mbOK], 0);
MEdit_PGDoc.SetFocus;
Exit;
end else
DBGrid_PG_Parcelas.SetFocus;
Exit;
end else
if (MEdit_PGDoc.Text = '') and (MEdit_PGMatricula.Text <> '') and (MEdit_PGAluno.Text = '') then
begin
Mat:= MEdit_PGMatricula.Text;
Pesquisa:= 2;
Screen.Cursor := crHourGlass;
// SELECIONA As PARCELAs DO CARNÊ
 IBQuery_PGParcelas.Close;
 IBQuery_PGParcelas.SQL.Clear;
 IBQuery_PGParcelas.SQL.Add('select * from CARNE ');
 IBQuery_PGParcelas.SQL.Add('where MATRICULA = :Matric and ANO_LETIVO = :AL ');
 IBQuery_PGParcelas.ParamByName('Matric').AsString:= Mat;
 IBQuery_PGParcelas.ParamByName('AL').AsString:= AnoLetivo;
 IBQuery_PGParcelas.SQL.Add('order by DATA_VENCIMENTO');
 IBQuery_PGParcelas.Prepare;
 IBQuery_PGParcelas.Open;
Screen.Cursor := crDefault;
DBGrid_PG_Parcelas.SetFocus;
Exit;
end else
if (MEdit_PGDoc.Text = '') and (MEdit_PGMatricula.Text = '') and (MEdit_PGAluno.Text <> '') then
begin
Alun:= MEdit_PGAluno.Text;
Pesquisa:= 3;
Screen.Cursor := crHourGlass;
// SELECIONA As PARCELAs DO CARNÊ
 IBQuery_PGParcelas.Close;
 IBQuery_PGParcelas.SQL.Clear;
 IBQuery_PGParcelas.SQL.Add('select * from CARNE ');
 IBQuery_PGParcelas.SQL.Add('where NOME_ALUNO = :Aluno and ANO_LETIVO = :AL ');
 IBQuery_PGParcelas.ParamByName('Aluno').AsString:= Alun;
 IBQuery_PGParcelas.ParamByName('AL').AsString:= AnoLetivo;
 IBQuery_PGParcelas.SQL.Add('order by DATA_VENCIMENTO');
 IBQuery_PGParcelas.Prepare;
 IBQuery_PGParcelas.Open;
Screen.Cursor := crDefault;
DBGrid_PG_Parcelas.SetFocus;
end;
end;

procedure TFrmRecebimentos.BtnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmRecebimentos.Btn_ProximoPGClick(Sender: TObject);
begin
if (IBQuery_PGParcelasSITUACAO_PARCELA.Value = 'EM ABERTO') or (IBQuery_PGParcelasSITUACAO_PARCELA.Value = 'PAGO') then
begin
Btn_ConfirmaPG.Caption:= 'Confirmar Pagamento';
DBGrid_PG_Parcelas.SetFocus;
Exit;
end else
MEdit_PGDoc.Text:= '';
MEdit_PGMatricula.Text:= '';
MEdit_PGAluno.Text:= '';
MEdit_DataPG.Text:= '';
Label_Multa.Caption:= FormatFloat('###,###,##0.00', 0.00);
Label_Juros.Caption:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Acrescimo.Text:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Desconto.Text:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Apagar.Text:= FormatFloat('###,###,##0.00', 0.00);
Doc:= '';
Mat:= '';
Alun:= '';
Pesquisa:= 0;
IBQuery_PGPARCELAS.Close;
Controles;
Btn_ConfirmaPG.Enabled:= False;
MEdit_PGDoc.SetFocus;
end;

procedure TFrmRecebimentos.MEdit_PGAlunoExit(Sender: TObject);
begin
MEdit_PGDoc.Text:= '';
MEdit_PGMatricula.Text:= '';
if MEdit_PGAluno.Text = '' then
begin
Abort;
end else
if not Dm.IBDS_CARNE.Locate('NOME_ALUNO', MEdit_PGAluno.Text, []) then
begin
ShowMessage('O(A) aluno(a) "'+MEdit_PGAluno.Text+'" está com o nome incompleto ou não está matriculado(a).');
MEdit_PGMatricula.Text:= '';
end;
end;

procedure TFrmRecebimentos.Btn_ConfirmaPGClick(Sender: TObject);
begin
if MEdit_DataPG.Text = '  /  /    ' then
begin
CBox_Desconto.SetFocus;
//MEdit_DataPG.SetFocus;
Exit;
end else
if MEdit_Apagar.Text = '0,00' then
begin
MEdit_DataPG.SetFocus;
Exit;
end else
// NOVA PESQUISA
if Btn_ConfirmaPG.Caption = 'Nova Pesquisa' then
begin
MEdit_PGDoc.Text:= '';
MEdit_PGMatricula.Text:= '';
MEdit_PGAluno.Text:= '';
MEdit_DataPG.Text:= '';
Label_Multa.Caption:= FormatFloat('###,###,##0.00', 0.00);
Label_Juros.Caption:= FormatFloat('###,###,##0.00', 0.00);
Label_Total.Caption:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Acrescimo.Text:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Desconto.Text:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Apagar.Text:= FormatFloat('###,###,##0.00', 0.00);
Doc:= '';
Mat:= '';
Alun:= '';
Pesquisa:= 0;
IBQuery_PGPARCELAS.Close;
Btn_ProximoPG.Caption:= 'Próximo Pagamento';
Controles;
Btn_ConfirmaPG.Caption:= 'Confirmar Pagamento';
Btn_ConfirmaPG.Enabled:= False;
MEdit_PGDoc.SetFocus;
Exit;
end else
// REALIZA OS ÚLTIMOS CAUCULOS
Acrescimo:= StrToFloat(MEdit_Acrescimo.Text);
Desconto:= StrToFloat(MEdit_Desconto.Text);
SubTotal:= ValorMensal+Acrescimo;
TotalAPagar:= SubTotal-Desconto;
ValorPago:= StrToFloat(MEdit_Apagar.Text);
//if StrToFloat(MEdit_Apagar.Text) > StrToFloat(Label_Total.Caption) then
//begin
//MessageDlg('O valor pago é maior do que o valor a pagar calculado.', mtCustom, [mbOK], 0);
//MEdit_DataPG.SetFocus;
//Exit;
//end else
// CONFIRMA PAGAMENTO
if Btn_ConfirmaPG.Caption = 'Confirmar Pagamento' then
begin
Dm.IBDS_CARNE.Edit;
Dm.IBDS_CARNE.FieldByName('DATA_PAGAMENTO').AsDateTime:= DataPagamento;
Dm.IBDS_CARNE.FieldByName('VALOR_ACRESC').AsFloat:= Acrescimo;
Dm.IBDS_CARNE.FieldByName('VALOR_DESCON').AsFloat:= Desconto;
Dm.IBDS_CARNE.FieldByName('VALOR_APAGAR').AsFloat:= TotalAPagar;
Dm.IBDS_CARNE.FieldByName('VALOR_PAGO').AsFloat:= ValorPago;
//Dm.IBDS_CARNE.FieldByName('VALOR_PENDENTE').AsFloat:= Dm.IBDS_CARNEVALOR_APAGAR.AsFloat-Dm.IBDS_CARNEVALOR_PAGO.AsFloat;
Dm.IBDS_CARNE.FieldByName('VALOR_PENDENTE').AsFloat:= TotalAPagar - ValorPago;
Dm.IBDS_CARNE.FieldByName('TOTAL_PAGO').AsFloat:= ValorPago;
if Dm.IBDS_CARNE.FieldByName('VALOR_PENDENTE').AsFloat <> 0 then
begin
Dm.IBDS_CARNE.FieldByName('SITUACAO_PARCELA').AsString:= 'EM ABERTO';
end else
Dm.IBDS_CARNE.FieldByName('SITUACAO_PARCELA').AsString:= 'PAGO';
If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_CARNE.Post;
Dm.IBDS_CARNE.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
if Pesquisa = 1 then
begin
Screen.Cursor := crHourGlass;
// SELECIONA As PARCELAs DO CARNÊ
 IBQuery_PGParcelas.Close;
 IBQuery_PGParcelas.SQL.Clear;
 IBQuery_PGParcelas.SQL.Add('select * from CARNE ');
 IBQuery_PGParcelas.SQL.Add('where NUMERO_DOC = :Docum and ANO_LETIVO = :AL ');
 IBQuery_PGParcelas.ParamByName('Docum').AsString:= Doc;
 IBQuery_PGParcelas.ParamByName('AL').AsString:= AnoLetivo;
 IBQuery_PGParcelas.SQL.Add('order by DATA_VENCIMENTO');
 IBQuery_PGParcelas.Prepare;
 IBQuery_PGParcelas.Open;
Screen.Cursor := crDefault;
BtnGeralClick(Nil);
Btn_ConfirmaPG.Caption:= 'Nova Pesquisa';
if not IBQuery_PGParcelas.Locate('SITUACAO_PARCELA', 'EM ABERTO', []) then
begin
IBQuery_PGParcelas.Locate('SITUACAO_PARCELA', 'PAGO', []);
Btn_ProximoPG.Caption:= 'Próximo Estorno';
Btn_ProximoPG.Enabled:= False;
Btn_EstornaPG.Enabled:= True;
Btn_EstornaPG.SetFocus;
Exit;
end else
Btn_ProximoPG.Caption:= 'Próximo Pagamento';
Btn_ProximoPG.Enabled:= True;
Btn_ProximoPG.SetFocus;
Exit;
end else
if Pesquisa = 2 then
begin
Screen.Cursor := crHourGlass;
// SELECIONA As PARCELAs DO CARNÊ
 IBQuery_PGParcelas.Close;
 IBQuery_PGParcelas.SQL.Clear;
 IBQuery_PGParcelas.SQL.Add('select * from CARNE ');
 IBQuery_PGParcelas.SQL.Add('where MATRICULA = :Matric and ANO_LETIVO = :AL ');
 IBQuery_PGParcelas.ParamByName('Matric').AsString:= Mat;
 IBQuery_PGParcelas.ParamByName('AL').AsString:= AnoLetivo;
 IBQuery_PGParcelas.SQL.Add('order by DATA_VENCIMENTO');
 IBQuery_PGParcelas.Prepare;
 IBQuery_PGParcelas.Open;
Screen.Cursor := crDefault;
Btn_ConfirmaPG.Caption:= 'Nova Pesquisa';
if not IBQuery_PGParcelas.Locate('SITUACAO_PARCELA', 'EM ABERTO', []) then
begin
IBQuery_PGParcelas.Locate('SITUACAO_PARCELA', 'PAGO', []);
Btn_ProximoPG.Caption:= 'Próximo Estorno';
Btn_ProximoPG.Enabled:= False;
Btn_EstornaPG.Enabled:= True;
Btn_EstornaPG.SetFocus;
Exit;
end else
Btn_ProximoPG.Caption:= 'Próximo Pagamento';
Btn_ProximoPG.Enabled:= True;
Btn_ProximoPG.SetFocus;
Exit;
end else
if Pesquisa = 3 then
begin
Screen.Cursor := crHourGlass;
// SELECIONA As PARCELAs DO CARNÊ
 IBQuery_PGParcelas.Close;
 IBQuery_PGParcelas.SQL.Clear;
 IBQuery_PGParcelas.SQL.Add('select * from CARNE ');
 IBQuery_PGParcelas.SQL.Add('where NOME_ALUNO = :Aluno and ANO_LETIVO = :AL ');
 IBQuery_PGParcelas.ParamByName('Aluno').AsString:= Alun;
 IBQuery_PGParcelas.ParamByName('AL').AsString:= AnoLetivo;
 IBQuery_PGParcelas.SQL.Add('order by DATA_VENCIMENTO');
 IBQuery_PGParcelas.Prepare;
 IBQuery_PGParcelas.Open;
Screen.Cursor := crDefault;
BtnGeralClick(Nil);
Btn_ConfirmaPG.Caption:= 'Nova Pesquisa';
if not IBQuery_PGParcelas.Locate('SITUACAO_PARCELA', 'EM ABERTO', []) then
begin
IBQuery_PGParcelas.Locate('SITUACAO_PARCELA', 'PAGO', []);
Btn_ProximoPG.Caption:= 'Próximo Estorno';
Btn_ProximoPG.Enabled:= False;
Btn_EstornaPG.Enabled:= True;
Btn_EstornaPG.SetFocus;
Exit;
end else
Btn_ProximoPG.Caption:= 'Próximo Pagamento';
Btn_ProximoPG.Enabled:= True;
Btn_ProximoPG.SetFocus;
end;
end;
end;

procedure TFrmRecebimentos.DBGrid_PG_ParcelasExit(Sender: TObject);
begin
if IBQuery_PGParcelasSITUACAO_PARCELA.Value = '' then
begin
Abort;
Exit;
end else
Dm.IBDS_CARNE.Locate('NUMERO_DOC', IBQuery_PGParcelasNUMERO_DOC.Value, []);
if IBQuery_PGParcelasSITUACAO_PARCELA.Value = 'EM ABERTO' then
begin
Controles;
MEdit_DataPG.Text:= DateToStr(Data);
CBox_Desconto.SetFocus;
//MEdit_DataPG.SetFocus;
Exit;
end else
Btn_EstornaPG.SetFocus;
end;

procedure TFrmRecebimentos.DBGrid_PG_ParcelasCellClick(Column: TColumn);
begin
if IBQuery_PGParcelasSITUACAO_PARCELA.Value = '' then
begin
Abort;
Exit;
end else
Dm.IBDS_CARNE.Locate('NUMERO_DOC', IBQuery_PGParcelasNUMERO_DOC.Value, []);
if IBQuery_PGParcelasSITUACAO_PARCELA.Value <> 'EM ABERTO' then
begin
MEdit_DataPG.Text:= '';
Label_Multa.Caption:= FormatFloat('###,###,##0.00', 0.00);
Label_Juros.Caption:= FormatFloat('###,###,##0.00', 0.00);
Label_Total.Caption:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Acrescimo.Text:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Desconto.Text:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Apagar.Text:= FormatFloat('###,###,##0.00', 0.00);
MEdit_DataPG.Enabled:= False;
Label_Multa.Enabled:= False;
Label_Juros.Enabled:= False;
Label_Total.Enabled:= False;
MEdit_Acrescimo.Enabled:= False;
MEdit_Desconto.Enabled:= False;
MEdit_Apagar.Enabled:= False;
Btn_ConfirmaPG.Enabled:= False;
Btn_EstornaPG.Enabled:= True;
Exit;
end else
MEdit_DataPG.Enabled:= True;
Label_Multa.Enabled:= True;
Label_Juros.Enabled:= True;
Label_Total.Enabled:= True;
MEdit_Acrescimo.Enabled:= True;
MEdit_Desconto.Enabled:= True;
MEdit_Apagar.Enabled:= True;
Btn_ConfirmaPG.Enabled:= True;
Btn_EstornaPG.Enabled:= False;
MEdit_DataPG.Text:= '';
Label_Multa.Caption:= FormatFloat('###,###,##0.00', 0.00);
Label_Juros.Caption:= FormatFloat('###,###,##0.00', 0.00);
Label_Total.Caption:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Acrescimo.Text:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Desconto.Text:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Apagar.Text:= FormatFloat('###,###,##0.00', 0.00);
end;

procedure TFrmRecebimentos.MEdit_DataPGExit(Sender: TObject);
begin
if MEdit_DataPG.Text = '  /  /    ' then
begin
MEdit_DataPG.Text:= DateToStr(Data);
end else
try
StrToDate(MEdit_DataPG.Text);
except
on EConvertError do begin
ShowMessage ('Data Inválida.');
CBox_Desconto.SetFocus;
//MEdit_DataPG.SetFocus;
Exit;
end;
end;
DataPagamento:= StrToDate(MEdit_DataPG.Text);
DataVencimento:= IBQuery_PGParcelasDATA_VENCIMENTO.AsDateTime;
if IBQuery_PGParcelasVALOR_PENDENTE.AsFloat <> 0 then
begin
ValorMensal:= IBQuery_PGParcelasVALOR_PENDENTE.AsFloat;
end else
ValorMensal:= IBQuery_PGParcelasVALOR_MENSAL.AsFloat;
// VERIFICA SE JÁ VENCEU
if DataPagamento <= DataVencimento then
begin
// SE NÃO VENCEU NÃO CALCULA A MULTA E O JURO
TotalMulta:= 0.00;
Juros:= 0.00;
Acrescimo:= 0.00;
Desconto:= 0.00;
if CBox_Desconto.Text <> '0' then
begin
Percentual:= StrToFloat(CBox_Desconto.Text) / 100;
ValorDesc:= ValorDesc * Percentual;
ValorMensal:= ValorMensal - ValorDesc;
end else
SubTotal:= ValorMensal+Acrescimo;
TotalAPagar:= SubTotal-Desconto;
Label_Multa.Caption:= FormatFloat('###,###,##0.00', TotalMulta);
Label_Juros.Caption:= FormatFloat('###,###,##0.00', Juros);
Label_Total.Caption:= FormatFloat('###,###,##0.00', SubTotal);
MEdit_Acrescimo.Text:= FormatFloat('###,###,##0.00', Acrescimo);
MEdit_Desconto.Text:= FormatFloat('###,###,##0.00', Desconto);
MEdit_Apagar.Text:= FormatFloat('###,###,##0.00', TotalAPagar);
Exit;
end else
if DataPagamento > DataVencimento then
begin
// SE JÁ VENCEU CALCULA A MULTA E O JURO DOS DIAS ÚTEIS
if IsWeekEnd(DataVencimento) = True then
begin
// SE O VENCIMENTO CAIR NO FIM DE SEMANA
DataVencimento:= ProximoDiaUtil(IBQuery_PGParcelasDATA_VENCIMENTO.AsDateTime);
DiaAtrazo:= DifDateUtil(DateToStr(DataVencimento), DateToStr(DataPagamento));
TotalMulta:= GeraPorcentagem(ValorMensal, Dm.IBDS_EMPRESAMULTA.AsFloat);
if DiaAtrazo = 0 then
begin
TotalMulta:= 0.00;
end else
Multa:= TotalMulta;
Juros:= DiaAtrazo * Dm.IBDS_EMPRESAJUROS.AsFloat;
Acrescimo:= TotalMulta+Juros;
Desconto:= 0.00;
if CBox_Desconto.Text <> '0' then
begin
Percentual:= StrToFloat(CBox_Desconto.Text) / 100;
ValorDesc:= ValorDesc * Percentual;
ValorMensal:= ValorMensal - ValorDesc;
end else
SubTotal:= ValorMensal+Acrescimo;
TotalAPagar:= SubTotal-Desconto;
Label_Multa.Caption:= FormatFloat('###,###,##0.00', TotalMulta);
Label_Juros.Caption:= FormatFloat('###,###,##0.00', Juros);
Label_Total.Caption:= FormatFloat('###,###,##0.00', SubTotal);
MEdit_Acrescimo.Text:= FormatFloat('###,###,##0.00', Acrescimo);
MEdit_Desconto.Text:= FormatFloat('###,###,##0.00', Desconto);
MEdit_Apagar.Text:= FormatFloat('###,###,##0.00', TotalAPagar);
end else
// SE O VENCIMENTO NÃO CAIR NO FIM DE SEMANA
if IsWeekEnd(DataVencimento) = False then
begin
DataVencimento:= IBQuery_PGParcelasDATA_VENCIMENTO.AsDateTime;
DiaAtrazo:= StrToInt(DifDias(DataVencimento, DataPagamento));
TotalMulta:= GeraPorcentagem(ValorMensal, Dm.IBDS_EMPRESAMULTA.AsFloat);
Multa:= TotalMulta;
Juros:= DiaAtrazo * Dm.IBDS_EMPRESAJUROS.AsFloat;
Acrescimo:= TotalMulta+Juros;
Desconto:= 0.00;
if CBox_Desconto.Text <> '0' then
begin
Percentual:= StrToFloat(CBox_Desconto.Text) / 100;
ValorDesc:= ValorDesc * Percentual;
ValorMensal:= ValorMensal - ValorDesc;
end else
SubTotal:= ValorMensal+Acrescimo;
TotalAPagar:= SubTotal-Desconto;
Label_Multa.Caption:= FormatFloat('###,###,##0.00', TotalMulta);
Label_Juros.Caption:= FormatFloat('###,###,##0.00', Juros);
Label_Total.Caption:= FormatFloat('###,###,##0.00', SubTotal);
MEdit_Acrescimo.Text:= FormatFloat('###,###,##0.00', Acrescimo);
MEdit_Desconto.Text:= FormatFloat('###,###,##0.00', Desconto);
MEdit_Apagar.Text:= FormatFloat('###,###,##0.00', TotalAPagar);
end;
end;
end;

procedure TFrmRecebimentos.MEdit_AcrescimoExit(Sender: TObject);
begin
if MEdit_Acrescimo.Text = '' then
begin
MEdit_Acrescimo.Text:= '0';
end;
MEdit_Acrescimo.Text:= FormatFloat('###,###,##0.00', StrToFloat(MEdit_Acrescimo.Text));
end;

procedure TFrmRecebimentos.MEdit_DescontoExit(Sender: TObject);
begin
if MEdit_Desconto.Text = '' then
begin
MEdit_Desconto.Text:= '0';
end else
//if (StrToFloat(MEdit_Acrescimo.Text) <> Acrescimo) or (StrToFloat(MEdit_Desconto.Text) <> Desconto) or (StrToFloat(MEdit_APagar.Text) <> SubTotal) then
//begin
//SubTotal:= SubTotal-Acrescimo;
Acrescimo:= StrToFloat(MEdit_Acrescimo.Text);
Desconto:= StrToFloat(MEdit_Desconto.Text);
if CBox_Desconto.Text <> '0' then
begin
Percentual:= StrToFloat(CBox_Desconto.Text) / 100;
ValorDesc:= ValorDesc * Percentual;
ValorMensal:= ValorMensal - ValorDesc;
end else
SubTotal:= ValorMensal+Acrescimo-Desconto;
MEdit_Desconto.Text:= FormatFloat('###,###,##0.00', Desconto);
MEdit_Apagar.Text:= FormatFloat('###,###,##0.00', SubTotal);
end;


procedure TFrmRecebimentos.MEdit_ApagarExit(Sender: TObject);
begin
if MEdit_Apagar.Text = '' then
begin
MEdit_Apagar.Text:= '0';
end else
//if (StrToFloat(MEdit_Acrescimo.Text) <> Acrescimo) or (StrToFloat(MEdit_Desconto.Text) <> Desconto) or (StrToFloat(MEdit_APagar.Text) <> SubTotal) then
//begin
SubTotal:= StrToFloat(MEdit_Apagar.Text);

//end;
MEdit_Apagar.Text:= FormatFloat('###,###,##0.00', StrToFloat(MEdit_Apagar.Text));
end;

procedure TFrmRecebimentos.DBGrid_PG_ParcelasKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
Controles;
Dm.IBDS_CARNE.Locate('MATRICULA', IBQuery_PGParcelasNUMERO_DOC.Value, []);
if (IBQuery_PGParcelasSITUACAO_PARCELA.Value <> 'EM ABERTO') then
begin
MEdit_DataPG.Text:= '';
Label_Multa.Caption:= FormatFloat('###,###,##0.00', 0.00);
Label_Juros.Caption:= FormatFloat('###,###,##0.00', 0.00);
Label_Total.Caption:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Acrescimo.Text:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Desconto.Text:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Apagar.Text:= FormatFloat('###,###,##0.00', 0.00);
MEdit_DataPG.Enabled:= False;
Label_Multa.Enabled:= False;
Label_Juros.Enabled:= False;
Label_Total.Enabled:= False;
MEdit_Acrescimo.Enabled:= False;
MEdit_Desconto.Enabled:= False;
MEdit_Apagar.Enabled:= False;
Btn_ConfirmaPG.Enabled:= False;
Btn_EstornaPG.Enabled:= True;
Exit;
end else
MEdit_DataPG.Enabled:= True;
Label_Multa.Enabled:= True;
Label_Juros.Enabled:= True;
Label_Total.Enabled:= True;
MEdit_Acrescimo.Enabled:= True;
MEdit_Desconto.Enabled:= True;
MEdit_Apagar.Enabled:= True;
Btn_ConfirmaPG.Enabled:= True;
Btn_EstornaPG.Enabled:= False;
MEdit_DataPG.Text:= '';
Label_Multa.Caption:= FormatFloat('###,###,##0.00', 0.00);
Label_Juros.Caption:= FormatFloat('###,###,##0.00', 0.00);
Label_Total.Caption:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Acrescimo.Text:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Desconto.Text:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Apagar.Text:= FormatFloat('###,###,##0.00', 0.00);
end;

function TFrmRecebimentos.DifDateUtil(dataini, datafin: string): integer;
var a,b,c:tdatetime;
  ct,s:integer;
begin
//Retorna a quantidade de dias uteis entre duas datas
if StrToDate(DataFin) < StrtoDate(DataIni) then
  begin
  Result := 0;
  exit;
  end;
ct := 0;
s := 1;
a := strtodate(dataFin);
b := strtodate(dataIni);
if a > b then
  begin
  c := a;
  a := b;
  b := c;
  s := 1;
  end;
a := a + 1;
while (dayofweek(a)<>2) and (a <= b) do
  begin
  if dayofweek(a) in [2..6] then
  begin
  inc(ct);
  end;
  a := a + 1;
  end;
ct := ct + round((5*int((b-a)/7)));
a := a + (7*int((b-a)/7));
while a <= b do
  begin
  if dayofweek(a) in [2..6] then
  begin
  inc(ct);
  end;
  a := a + 1;
  end;
if ct < 0 then
  begin
  ct := 0;
  end;
result := s*ct;
end;

function TFrmRecebimentos.IsWeekEnd(dData: TDateTime): boolean;
begin
// Verifica se uma data informada cai em um final de semana
if (DayOfWeek(dData) = 1) or (DayOfWeek(dData) = 7) Then
    begin
    result := True;
    end
else
   begin
   result := False;
   end;
end;

function TFrmRecebimentos.DifDias(DataVenc, DataAtual: TDateTime): String;
var Data: TDateTime;
    dia, mes, ano: Word;
begin
//Retorna a diferenca de dias entre duas datas
if DataAtual < DataVenc then
   begin
   Result := 'A data data atual não pode ser menor que a data inicial';
   end
else
   begin
   Data:= DataAtual - DataVenc;
   DecodeDate( Data, ano, mes, dia);
   Result:= FloatToStr(Data);//+' Dias';
   end;
end;

function TFrmRecebimentos.ProximoDiaUtil(dData: TDateTime): TDateTime;
begin
// Obtendo o próximo dia útil caso a data informada caia em um fim de semana
if DayOfWeek(dData) = 7 then 
dData := dData + 2 
else 
if DayOfWeek(dData) = 1 then 
dData := dData + 1; 
ProximoDiaUtil := dData;
end;

function TFrmRecebimentos.GeraPorcentagem(Valor, Percent: Real): Real;
begin
Percent:= Percent / 100;
try
  Valor:= Valor * Percent;
finally
  result:= Valor;
end;
end;

procedure TFrmRecebimentos.DBGrid_PG_ParcelasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
 (*destaca campo SITUAÇÃO*)
   if Column.Field = IBQuery_PGParcelasSITUACAO_PARCELA then
     if IBQuery_PGParcelasSITUACAO_PARCELA.AsString = 'EM ABERTO' then
     begin
       DBGrid_PG_Parcelas.Canvas.Font.Style:= DBGrid_PG_Parcelas.Canvas.Font.Style + [fsBold];
       DBGrid_PG_Parcelas.Canvas.Font.Color:= $000080FF;
       DBGrid_PG_Parcelas.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
       end else
            if IBQuery_PGParcelasSITUACAO_PARCELA.AsString = 'PAGO' then
     begin
       DBGrid_PG_Parcelas.Canvas.Font.Style:= DBGrid_PG_Parcelas.Canvas.Font.Style + [fsBold];
       DBGrid_PG_Parcelas.Canvas.Font.Color:= clGreen;
       DBGrid_PG_Parcelas.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
         end else
            if IBQuery_PGParcelasSITUACAO_PARCELA.AsString = 'VENCIDO' then
     begin
       DBGrid_PG_Parcelas.Canvas.Font.Style:= DBGrid_PG_Parcelas.Canvas.Font.Style + [fsBold];
       DBGrid_PG_Parcelas.Canvas.Font.Color:= clRed;
       DBGrid_PG_Parcelas.DefaultDrawDataCell(rect,Column.Field,State); // pinta o texto padrão
     end;
     end;

procedure TFrmRecebimentos.Controles;
begin
if IBQuery_PGParcelasSITUACAO_PARCELA.Value = '' then
begin
MEdit_DataPG.Text:= '';
Label_Multa.Caption:= FormatFloat('###,###,##0.00', 0.00);
Label_Juros.Caption:= FormatFloat('###,###,##0.00', 0.00);
Label_Total.Caption:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Acrescimo.Text:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Desconto.Text:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Apagar.Text:= FormatFloat('###,###,##0.00', 0.00);
MEdit_DataPG.Enabled:= False;
Label_Multa.Enabled:= False;
Label_Juros.Enabled:= False;
Label_Total.Enabled:= False;
MEdit_Acrescimo.Enabled:= False;
MEdit_Desconto.Enabled:= False;
MEdit_Apagar.Enabled:= False;
Btn_ConfirmaPG.Enabled:= False;
Btn_ProximoPG.Enabled:= False;
Exit;
end else
MEdit_DataPG.Enabled:= True;
Label_Multa.Enabled:= True;
Label_Juros.Enabled:= True;
Label_Total.Enabled:= True;
MEdit_Acrescimo.Enabled:= True;
MEdit_Desconto.Enabled:= True;
MEdit_Apagar.Enabled:= True;
Btn_ConfirmaPG.Enabled:= True;
MEdit_DataPG.Text:= '';
Label_Multa.Caption:= FormatFloat('###,###,##0.00', 0.00);
Label_Juros.Caption:= FormatFloat('###,###,##0.00', 0.00);
Label_Total.Caption:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Acrescimo.Text:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Desconto.Text:= FormatFloat('###,###,##0.00', 0.00);
MEdit_Apagar.Text:= FormatFloat('###,###,##0.00', 0.00);
end;

procedure TFrmRecebimentos.Btn_EstornaPGClick(Sender: TObject);
begin
Dm.IBDS_CARNE.Edit;
Dm.IBDS_CARNE.FieldByName('SITUACAO_PARCELA').AsString:= 'EM ABERTO';
Dm.IBDS_CARNE.FieldByName('DATA_PAGAMENTO').AsString:= '';
Dm.IBDS_CARNE.FieldByName('VALOR_ACRESC').AsString:= '0';
Dm.IBDS_CARNE.FieldByName('VALOR_DESCON').AsString:= '0';
Dm.IBDS_CARNE.FieldByName('VALOR_APAGAR').AsString:= '0';
Dm.IBDS_CARNE.FieldByName('VALOR_PAGO').AsString:= '0';
Dm.IBDS_CARNE.FieldByName('VALOR_PENDENTE').AsString:= '0';
Dm.IBDS_CARNE.FieldByName('TOTAL_PAGO').AsString:= '0';

If Not(Dm.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_CARNE.Post;
Dm.IBDS_CARNE.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;
if Pesquisa = 1 then
begin
Screen.Cursor := crHourGlass;
// SELECIONA As PARCELAs DO CARNÊ
 IBQuery_PGParcelas.Close;
 IBQuery_PGParcelas.SQL.Clear;
 IBQuery_PGParcelas.SQL.Add('select * from CARNE ');
 IBQuery_PGParcelas.SQL.Add('where NUMERO_DOC = :Docum and ANO_LETIVO = :AL ');
 IBQuery_PGParcelas.ParamByName('Docum').AsString:= Doc;
 IBQuery_PGParcelas.ParamByName('AL').AsString:= AnoLetivo;
 IBQuery_PGParcelas.SQL.Add('order by DATA_VENCIMENTO');
 IBQuery_PGParcelas.Prepare;
 IBQuery_PGParcelas.Open;
Screen.Cursor := crDefault;
BtnGeralClick(Nil);
Btn_ConfirmaPG.Caption:= 'Nova Pesquisa';
if not IBQuery_PGParcelas.Locate('SITUACAO_PARCELA', 'PAGO', []) then
begin
IBQuery_PGParcelas.Locate('SITUACAO_PARCELA', 'EM ABERTO', []);
Btn_ProximoPG.Caption:= 'Próximo Pagamento';
Btn_ProximoPG.Enabled:= True;
Btn_EstornaPG.Enabled:= False;
Btn_ProximoPG.SetFocus;
Exit;
end else
Btn_ProximoPG.Caption:= 'Próximo Estorno';
Btn_ProximoPG.Enabled:= True;
Btn_ProximoPG.SetFocus;
Exit;
end else
if Pesquisa = 2 then
begin
Screen.Cursor := crHourGlass;
// SELECIONA As PARCELAs DO CARNÊ
 IBQuery_PGParcelas.Close;
 IBQuery_PGParcelas.SQL.Clear;
 IBQuery_PGParcelas.SQL.Add('select * from CARNE ');
 IBQuery_PGParcelas.SQL.Add('where MATRICULA = :Matric and ANO_LETIVO = :AL ');
 IBQuery_PGParcelas.ParamByName('Matric').AsString:= Mat;
 IBQuery_PGParcelas.ParamByName('AL').AsString:= AnoLetivo;
 IBQuery_PGParcelas.SQL.Add('order by DATA_VENCIMENTO');
 IBQuery_PGParcelas.Prepare;
 IBQuery_PGParcelas.Open;
Screen.Cursor := crDefault;
BtnGeralClick(Nil);
Btn_ConfirmaPG.Caption:= 'Nova Pesquisa';
if not IBQuery_PGParcelas.Locate('SITUACAO_PARCELA', 'PAGO', []) then
begin
IBQuery_PGParcelas.Locate('SITUACAO_PARCELA', 'EM ABERTO', []);
Btn_ProximoPG.Caption:= 'Próximo Pagamento';
Btn_ProximoPG.Enabled:= True;
Btn_EstornaPG.Enabled:= False;
Btn_ProximoPG.SetFocus;
Exit;
end else
Btn_ProximoPG.Caption:= 'Próximo Estorno';
Btn_ProximoPG.Enabled:= True;
Btn_ProximoPG.SetFocus;
Exit;
end else
if Pesquisa = 3 then
begin
Screen.Cursor := crHourGlass;
// SELECIONA As PARCELAs DO CARNÊ
 IBQuery_PGParcelas.Close;
 IBQuery_PGParcelas.SQL.Clear;
 IBQuery_PGParcelas.SQL.Add('select * from CARNE ');
 IBQuery_PGParcelas.SQL.Add('where NOME_ALUNO = :Aluno and ANO_LETIVO = :AL ');
 IBQuery_PGParcelas.ParamByName('Aluno').AsString:= Alun;
 IBQuery_PGParcelas.ParamByName('AL').AsString:= AnoLetivo;
 IBQuery_PGParcelas.SQL.Add('order by DATA_VENCIMENTO');
 IBQuery_PGParcelas.Prepare;
 IBQuery_PGParcelas.Open;
Screen.Cursor := crDefault;
BtnGeralClick(Nil);
Btn_ConfirmaPG.Caption:= 'Nova Pesquisa';
if not IBQuery_PGParcelas.Locate('SITUACAO_PARCELA', 'PAGO', []) then
begin
IBQuery_PGParcelas.Locate('SITUACAO_PARCELA', 'EM ABERTO', []);
Btn_ProximoPG.Caption:= 'Próximo Pagamento';
Btn_ProximoPG.Enabled:= True;
Btn_EstornaPG.Enabled:= False;
Btn_ProximoPG.SetFocus;
Exit;
end else
Btn_ProximoPG.Caption:= 'Próximo Estorno';
Btn_ProximoPG.Enabled:= True;
Btn_ProximoPG.SetFocus;
end;
end;

procedure TFrmRecebimentos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=Cafree;
end;

procedure TFrmRecebimentos.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if DataSource_Carne.State = dsEdit then
begin
Dm.IBDS_CARNE.Cancel;
Dm.IBDS_CARNE.CancelUpdates;
Dm.IBTransaction.RollbackRetaining;
end;
Dm.IBDS_CARNE.Close;
end;

procedure TFrmRecebimentos.FormDestroy(Sender: TObject);
begin
Dm.IBDS_CARNE.Close;
end;

procedure TFrmRecebimentos.DBGrid_PG_ParcelasDblClick(Sender: TObject);
begin
  Close;
FrmAlunos:= TFrmAlunos.Create(Application);
try
  FrmAlunos.ShowModal;
finally
  FrmAlunos.Free;
end;
end;

procedure TFrmRecebimentos.BtnGeralClick(Sender: TObject);
begin
Pesquisa:= 1;
Screen.Cursor := crHourGlass;
// IBQuery_CSALUNOS.Close;
// IBQuery_CSALUNOS.SQL.Clear;
// IBQuery_CSALUNOS.SQL.Add('select ANO_LETIVO, CURSO, MATRICULA, NOME_ALUNO, NOME_RESP, SERIE, TURMA, TURNO from MATRICUL ');
// IBQuery_CSALUNOS.SQL.Add('where SERIE = :SerieAluno and TURMA = :TurmaAluno and TURNO = :TurnoAluno and ANO_LETIVO = :AnoLet ');
// IBQuery_CSALUNOS.ParamByName('AnoLet').AsString:= AnoLetivo;
// IBQuery_CSALUNOS.ParamByName('SerieAluno').AsString:= CBox_CSSerie.Text;
// IBQuery_CSALUNOS.ParamByName('TurmaAluno').AsString:= CBox_CSTurma.Text;
// IBQuery_CSALUNOS.ParamByName('TurnoAluno').AsString:= CBox_CSTurno.Text;
/// IBQuery_CSALUNOS.SQL.Add('order by NOME_ALUNO');
// IBQuery_CSALUNOS.Prepare;
// IBQuery_CSALUNOS.Open;
// SELECIONA AS PARCELAS DO CARNÊ
 IBQuery_PGParcelas.Close;
 IBQuery_PGParcelas.SQL.Clear;
 IBQuery_PGParcelas.SQL.Add('select * from CARNE ');
 IBQuery_PGParcelas.SQL.Add('where MES = :Mes and SERIE = :SerieAluno and TURMA = :TurmaAluno and TURNO = :TurnoAluno and ANO_LETIVO = :AnoLet');
 IBQuery_PGParcelas.ParamByName('Mes').AsString:= CBox_Mes.Text;
IBQuery_PGParcelas.ParamByName('SerieAluno').AsString:= CBox_CSSerie.Text;
IBQuery_PGParcelas.ParamByName('TurmaAluno').AsString:= CBox_CSTurma.Text;
IBQuery_PGParcelas.ParamByName('TurnoAluno').AsString:= CBox_CSTurno.Text;
 IBQuery_PGParcelas.ParamByName('AnoLet').AsString:= AnoLetivo;
// IBQuery_PGParcelas.ParamByName('Mat').AsString:= IBQuery_CSALUNOSMATRICULA.AsString;
 IBQuery_PGParcelas.SQL.Add('order by NOME_ALUNO,DATA_VENCIMENTO');
 IBQuery_PGParcelas.Prepare;
 IBQuery_PGParcelas.Open;
Screen.Cursor := crDefault;
end;

procedure TFrmRecebimentos.CBox_CSSerieEnter(Sender: TObject);
begin
with DmSeleciona.IBQ_AnoLetivo do
 begin
 Close;
 UnPrepare;
 SQL.Clear;
 SQL.Add('select distinct SERIE from MATRICUL order by SERIE');
 Prepare;
 Open;
// Adiciona dados ao combobox
CBox_CSSerie.Clear;
While Not Eof do
  begin
  CBox_CSSerie.Items.Add(FieldByName('SERIE').AsString);
  Next;
  end;
end;
end;

procedure TFrmRecebimentos.CBox_CSTurmaEnter(Sender: TObject);
begin
with DmSeleciona.IBQ_AnoLetivo do
 begin
 Close;
 UnPrepare;
 SQL.Clear;
 SQL.Add('select distinct TURMA from MATRICUL ');
 SQL.Add('where SERIE = '+#39+CBox_CSSerie.Text+#39);
 SQL.Add('order by TURMA');
 Prepare;
 Open;
// Adiciona dados ao combobox
CBox_CSTurma.Clear;
While Not Eof do
  begin
  CBox_CSTurma.Items.Add(FieldByName('TURMA').AsString);
  Next;
  end;
end;
end;

procedure TFrmRecebimentos.CBox_CSTurnoEnter(Sender: TObject);
begin
with DmSeleciona.IBQ_AnoLetivo do
 begin
 Close;
 UnPrepare;
 SQL.Clear;
 SQL.Add('select distinct TURNO from MATRICUL ');
 SQL.Add('where SERIE = '+#39+CBox_CSSerie.Text+#39+' and TURMA = '+#39+CBox_CSTurma.Text+#39);
 SQL.Add('order by TURNO');
 Prepare;
 Open;
// Adiciona dados ao combobox
CBox_CSTurno.Clear;
While Not Eof do
  begin
  CBox_CSTurno.Items.Add(FieldByName('TURNO').AsString);
  Next;
  end;
end;
end;

procedure TFrmRecebimentos.CBox_DescontoEnter(Sender: TObject);
begin
if CBox_Desconto.Text = '' then
begin
CBox_Desconto.ItemIndex:= 0;
 end;
end;

end.
