unit UnAniversariantes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, DB, IBCustomDataSet, IBQuery, StdCtrls, Buttons, ExtCtrls,
  ComCtrls, Grids, DBGrids, DateUtils;

type
  TFrmAniversariantes = class(TForm)
    Ds_Aniv: TDataSource;
    IBQuery_Aniv: TIBQuery;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Fechar1: TMenuItem;
    BtnImprimir: TBitBtn;
    Btn_Fechar: TBitBtn;
    DBGrid1: TDBGrid;
    IBQuery_Aniv_Resp: TIBQuery;
    Ds_Aniv_Resp: TDataSource;
    Ds_Aniv_Pai: TDataSource;
    IBQuery_Aniv_Pai: TIBQuery;
    IBQuery_Aniv_Mae: TIBQuery;
    Ds_Aniv_Mae: TDataSource;
    GroupBox2: TGroupBox;
    CB_ClasseAnin: TComboBox;
    IBQuery_AnivDATA_NASCIMENTO: TDateTimeField;
    IBQuery_AnivNOME_ALUNO: TIBStringField;
    IBQuery_AnivNOME_PAI: TIBStringField;
    IBQuery_AnivNOME_MAE: TIBStringField;
    IBQuery_AnivNOME_RESP: TIBStringField;
    IBQuery_AnivTEL_ALUNO: TIBStringField;
    IBQuery_Aniv_PaiDATA_NASC_PAI: TDateTimeField;
    IBQuery_Aniv_PaiNOME_PAI: TIBStringField;
    IBQuery_Aniv_PaiTEL_PAI: TIBStringField;
    IBQuery_Aniv_MaeDATA_NASC_MAE: TDateTimeField;
    IBQuery_Aniv_MaeNOME_MAE: TIBStringField;
    IBQuery_Aniv_MaeTEL_MAE: TIBStringField;
    IBQuery_Aniv_RespDATA_NASC_RESP: TDateTimeField;
    IBQuery_Aniv_RespNOME_RESP: TIBStringField;
    IBQuery_Aniv_RespTEL_RESP: TIBStringField;
    Btn_Consulta: TBitBtn;
    IBQuery_Aniv_PaiNOME_ALUNO: TIBStringField;
    IBQuery_Aniv_MaeNOME_ALUNO: TIBStringField;
    IBQuery_Aniv_RespNOME_ALUNO: TIBStringField;
    DatasAnin: TDateTimePicker;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Btn_FecharClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure Btn_ConsultaClick(Sender: TObject);
    procedure CB_ClasseAninChange(Sender: TObject);
    procedure CB_ClasseAninKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAniversariantes: TFrmAniversariantes;
  Idade:Integer;

implementation

uses UnDm, UnPrincipal, UnRelAniv;

{$R *.DFM}

procedure TFrmAniversariantes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=Cafree;
end;

procedure TFrmAniversariantes.FormCreate(Sender: TObject);
begin
DatasAnin.Date:= Data;
Shortdateformat:='dd/mm';
CB_ClasseAnin.OnChange(Nil);
end;

procedure TFrmAniversariantes.Btn_FecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmAniversariantes.DBGrid1DblClick(Sender: TObject);
begin
if DBGrid1.Fields[0].text = '' then
begin
Abort;
Exit;
end
else
Dm.Ds_aLUNOS.DataSet.Locate('CODIGO', DBGrid1.Fields[0].text, []);
Close;
FrmPrincipal.BitBtn1.SetFocus;
end;

procedure TFrmAniversariantes.FormShow(Sender: TObject);
begin
FrmAniversariantes.Top:=100;
FrmAniversariantes.Left:=0;
(*if DBGrid1.Fields[1].Text = '' then
begin
BtnImprimir.Enabled:= False;
Btn_Fechar.SetFocus;
end else
BtnImprimir.Enabled:= True;
DBGrid1.SetFocus;  *)
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmAniversariantes.Caption:= FrmAniversariantes.Caption;
Exit;
end else
FrmAniversariantes.Caption:= FrmAniversariantes.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end;

procedure TFrmAniversariantes.Fechar1Click(Sender: TObject);
begin
Close;
end;

procedure TFrmAniversariantes.BtnImprimirClick(Sender: TObject);
begin
Try
FrmRelAniv:=TFrmRelAniv.Create(nil);
FrmRelAniv.QuickRep1.PreviewModal;
finally
FrmRelAniv.Release;
end;
end;

procedure TFrmAniversariantes.Btn_ConsultaClick(Sender: TObject);
begin
Screen.Cursor := crSQLWait;
if CB_ClasseAnin.Text = 'ALUNO ANIVERSARIANDO HOJE' then
begin
IBQuery_Aniv.Close;
IBQuery_Aniv.SQL.Clear;
IBQuery_Aniv.SQL.Add('select DISTINCT extract(day from DATA_NASCIMENTO) as dia, extract(month from DATA_NASCIMENTO) as mes, DATA_NASCIMENTO, NOME_ALUNO, NOME_PAI, NOME_MAE, NOME_RESP, TEL_ALUNO, ANO_LETIVO from ALUNOS ');
IBQuery_Aniv.SQL.Add('where ANO_LETIVO = :ANO AND DATA_NASCIMENTO is not null and EXTRACT(DAY FROM DATA_NASCIMENTO) = :AD and EXTRACT(MONTH FROM DATA_NASCIMENTO) = :AM AND ');
IBQuery_Aniv.SQL.Add('exists ( select MATRICULA, ANO_LETIVO from MATRICUL where ANO_LETIVO = :ANO) ');
IBQuery_Aniv.ParamByName('ANO').AsString:= AnoLetivo;
IBQuery_Aniv.ParamByName('AD').AsInteger := StrToInt( FormatDateTime( 'DD',DatasAnin.Date ) );
IBQuery_Aniv.ParamByName('AM').AsInteger := StrToInt( FormatDateTime( 'MM',DatasAnin.Date ) );
IBQuery_Aniv.SQL.Add('order by 2,1 ');
IBQuery_Aniv.Prepare;
IBQuery_Aniv.Open;
DBGrid1.DataSource:= Ds_Aniv;
Screen.Cursor := crDefault;
if DBGrid1.Fields[1].text = '' then
begin
BtnImprimir.Enabled:= False;
Exit;
end else
BtnImprimir.Enabled:= True;
Exit;
end else
if CB_ClasseAnin.Text = 'ALUNO' then
begin
IBQuery_Aniv.Close;
IBQuery_Aniv.SQL.Clear;
IBQuery_Aniv.SQL.Add('select DISTINCT extract(day from DATA_NASCIMENTO) as dia, extract(month from DATA_NASCIMENTO) as mes, DATA_NASCIMENTO, NOME_ALUNO, NOME_PAI, NOME_MAE, NOME_RESP, TEL_ALUNO, ANO_LETIVO from ALUNOS ');
IBQuery_Aniv.SQL.Add('where ANO_LETIVO = :ANO AND DATA_NASCIMENTO is not null and EXTRACT(MONTH FROM DATA_NASCIMENTO) = :AM AND ');
IBQuery_Aniv.SQL.Add('exists ( select MATRICULA, ANO_LETIVO from MATRICUL where ANO_LETIVO = :ANO) ');
IBQuery_Aniv.ParamByName('ANO').AsString:= AnoLetivo;
IBQuery_Aniv.ParamByName('AM').AsInteger:= StrToInt( FormatDateTime( 'MM',DatasAnin.Date ) );
IBQuery_Aniv.SQL.Add('order by 2,1 ');
IBQuery_Aniv.Prepare;
IBQuery_Aniv.Open;
DBGrid1.DataSource:= Ds_Aniv;
Screen.Cursor := crDefault;
if DBGrid1.Fields[1].text = '' then
begin
BtnImprimir.Enabled:= False;
Exit;
end else
BtnImprimir.Enabled:= True;
Exit;
end else
if CB_ClasseAnin.Text = 'PAI' then
begin
IBQuery_Aniv_Pai.Close;
IBQuery_Aniv_Pai.SQL.Clear;
IBQuery_Aniv_Pai.SQL.Add('select DISTINCT extract(day from DATA_NASC_PAI) as dia, extract(month from DATA_NASC_PAI) as mes, DATA_NASC_PAI, NOME_PAI, TEL_PAI, ANO_LETIVO, NOME_ALUNO from ALUNOS ');
IBQuery_Aniv_Pai.SQL.Add('where ANO_LETIVO = :ANO and NOME_PAI <> NOME_RESP and DATA_NASC_PAI is not null and EXTRACT(MONTH FROM DATA_NASC_PAI) = :Mes AND ');
IBQuery_Aniv_Pai.SQL.Add('exists ( select MATRICULA, ANO_LETIVO from MATRICUL where ANO_LETIVO = :ANO) ');
IBQuery_Aniv_Pai.ParamByName('ANO').AsString:= AnoLetivo;
IBQuery_Aniv_Pai.ParamByName('Mes').AsInteger := StrToInt( FormatDateTime( 'MM',DatasAnin.Date ) );
IBQuery_Aniv_Pai.SQL.Add('order by 2,1 ');
IBQuery_Aniv_Pai.Prepare;
IBQuery_Aniv_Pai.Open;
DBGrid1.DataSource:= Ds_Aniv_pai;
Screen.Cursor := crDefault;
if DBGrid1.Fields[1].text = '' then
begin
BtnImprimir.Enabled:= False;
Exit;
end else
BtnImprimir.Enabled:= True;
Exit;
end else
if CB_ClasseAnin.Text = 'MÃE' then
begin
IBQuery_Aniv_Mae.Close;
IBQuery_Aniv_Mae.SQL.Clear;
IBQuery_Aniv_Mae.SQL.Add('select DISTINCT extract(day from DATA_NASC_MAE) as dia, extract(month from DATA_NASC_MAE) as mes, DATA_NASC_MAE, NOME_MAE, TEL_MAE, ANO_LETIVO, NOME_ALUNO from ALUNOS ');
IBQuery_Aniv_Mae.SQL.Add('where ANO_LETIVO = :ANO and NOME_MAE <> NOME_RESP and DATA_NASC_MAE is not null and EXTRACT(MONTH FROM DATA_NASC_MAE) = :Mes AND ');
IBQuery_Aniv_Mae.SQL.Add('exists ( select MATRICULA, ANO_LETIVO from MATRICUL where ANO_LETIVO = :ANO) ');
IBQuery_Aniv_Mae.ParamByName('ANO').AsString:= AnoLetivo;
IBQuery_Aniv_Mae.ParamByName('Mes').AsInteger := StrToInt( FormatDateTime( 'MM',DatasAnin.Date ) );
IBQuery_Aniv_Mae.SQL.Add('order by 2,1 ');
IBQuery_Aniv_Mae.Prepare;
IBQuery_Aniv_Mae.Open;
DBGrid1.DataSource:= Ds_Aniv_mae;
Screen.Cursor := crDefault;
if DBGrid1.Fields[1].text = '' then
begin
BtnImprimir.Enabled:= False;
Exit;
end else
BtnImprimir.Enabled:= True;
Exit;
end else
if CB_ClasseAnin.Text = 'RESPONSÁVEL' then
begin
IBQuery_Aniv_Resp.Close;
IBQuery_Aniv_Resp.SQL.Clear;
IBQuery_Aniv_Resp.SQL.Add('select DISTINCT extract(day from DATA_NASC_RESP) as dia, extract(month from DATA_NASC_RESP) as mes, DATA_NASC_RESP, NOME_RESP, TEL_RESP, ANO_LETIVO, NOME_ALUNO from ALUNOS ');
IBQuery_Aniv_Resp.SQL.Add('where ANO_LETIVO = :ANO and DATA_NASC_RESP is not null and EXTRACT(MONTH FROM DATA_NASC_RESP) = :Mes AND ');
IBQuery_Aniv_Resp.SQL.Add('exists ( select MATRICULA, ANO_LETIVO from MATRICUL where ANO_LETIVO = :ANO) ');
IBQuery_Aniv_Resp.ParamByName('ANO').AsString:= AnoLetivo;
IBQuery_Aniv_Resp.ParamByName('Mes').AsInteger := StrToInt( FormatDateTime( 'MM',DatasAnin.Date ) );
IBQuery_Aniv_Resp.SQL.Add('order by 2,1 ');
IBQuery_Aniv_Resp.Prepare;
IBQuery_Aniv_Resp.Open;
DBGrid1.DataSource:= Ds_Aniv_Resp;
Screen.Cursor := crDefault;
if DBGrid1.Fields[1].text = '' then
begin
BtnImprimir.Enabled:= False;
Exit;
end else
BtnImprimir.Enabled:= True;
end; 
end;

procedure TFrmAniversariantes.CB_ClasseAninChange(Sender: TObject);
begin
Btn_Consulta.OnClick(Nil);
if CB_ClasseAnin.Text = 'ALUNO ANIVERSARIANDO HOJE' then
begin
Screen.Cursor := crSQLWait;
DatasAnin.Date:= Data;
IBQuery_Aniv.Close;
IBQuery_Aniv.SQL.Clear;
IBQuery_Aniv.SQL.Add('select DISTINCT extract(day from DATA_NASCIMENTO) as dia, extract(month from DATA_NASCIMENTO) as mes, DATA_NASCIMENTO, NOME_ALUNO, NOME_PAI, NOME_MAE, NOME_RESP, TEL_ALUNO, ANO_LETIVO from ALUNOS ');
IBQuery_Aniv.SQL.Add('where ANO_LETIVO = :ANO AND DATA_NASCIMENTO is not null and EXTRACT(DAY FROM DATA_NASCIMENTO) = :AD and EXTRACT(MONTH FROM DATA_NASCIMENTO) = :AM AND ');
IBQuery_Aniv.SQL.Add('exists ( select MATRICULA, ANO_LETIVO from MATRICUL where ANO_LETIVO = :ANO) ');
IBQuery_Aniv.ParamByName('ANO').AsString:= AnoLetivo;
IBQuery_Aniv.ParamByName('AD').AsInteger := StrToInt( FormatDateTime( 'DD',DatasAnin.Date ) );
IBQuery_Aniv.ParamByName('AM').AsInteger := StrToInt( FormatDateTime( 'MM',DatasAnin.Date ) );
IBQuery_Aniv.SQL.Add('order by 2,1 ');
IBQuery_Aniv.Prepare;
IBQuery_Aniv.Open;
DBGrid1.DataSource:= Ds_Aniv;
Screen.Cursor := crDefault;
if DBGrid1.Fields[1].text = '' then
begin
BtnImprimir.Enabled:= False;
Exit;
end else
BtnImprimir.Enabled:= True;
end;
end;

procedure TFrmAniversariantes.CB_ClasseAninKeyPress(Sender: TObject;
  var Key: Char);
begin
key:=#0;
end;

end.
