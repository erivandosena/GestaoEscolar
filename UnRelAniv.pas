unit UnRelAniv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, Jpeg;

type
  TFrmRelAniv = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    TitleBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRDBText_Dat: TQRDBText;
    QRDBText_Nom: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel_Nome: TQRLabel;
    SummaryBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel8: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRLabel_Data: TQRLabel;
    QRLabel_NomeEmpresa: TQRLabel;
    QRLabel_Endereco1: TQRLabel;
    QRLabel_Endereco2: TQRLabel;
    QRLabel_Endereco3: TQRLabel;
    QRLabel_Endereco4: TQRLabel;
    QRImage_Logo: TQRImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelAniv: TFrmRelAniv;

implementation

uses UnDm, UnAniversariantes, UnPrincipal;

{$R *.dfm}

procedure TFrmRelAniv.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
(*if FrmAniversariantes.CB_ClasseAnin.Text = 'ALUNO ANIVERSARIANDO HOJE' then
begin
QRLabel_Data.Caption:= 'Aniversariantes de Hoje: '+DateToStr(Data);
end else
QRLabel_Data.Caption:= 'Aniversariantes do Mês de: '+AnsiUpperCase(FormatDateTime('MMMM',FrmAniversariantes.DatasAnin.Date));
*)
if FrmAniversariantes.CB_ClasseAnin.Text = 'ALUNO ANIVERSARIANDO HOJE' then
begin
QRLabel_Data.Caption:= 'Aniversariante(s) de Hoje';
QRLabel_Nome.Caption:= 'Aluno(a)';
QuickRep1.DataSet:= FrmAniversariantes.IBQuery_Aniv;
QRDBText_Dat.DataSet:= FrmAniversariantes.IBQuery_Aniv;
QRDBText_Dat.DataField:= 'DATA_NASCIMENTO';
QRDBText_Nom.DataSet:= FrmAniversariantes.IBQuery_Aniv;
QRDBText_Nom.DataField:= 'NOME_ALUNO';
Exit;
end else
if  FrmAniversariantes.CB_ClasseAnin.Text = 'ALUNO' then
begin
QRLabel_Data.Caption:= 'Aniversariantes do Mês de: '+AnsiUpperCase(FormatDateTime('MMMM',FrmAniversariantes.DatasAnin.Date));
QRLabel_Nome.Caption:= 'Aluno(a)';
QuickRep1.DataSet:= FrmAniversariantes.IBQuery_Aniv;
QRDBText_Dat.DataSet:= FrmAniversariantes.IBQuery_Aniv;
QRDBText_Dat.DataField:= 'DATA_NASCIMENTO';
QRDBText_Nom.DataSet:= FrmAniversariantes.IBQuery_Aniv;
QRDBText_Nom.DataField:= 'NOME_ALUNO';
Exit;
end else
if  FrmAniversariantes.CB_ClasseAnin.Text = 'PAI' then
begin
QRLabel_Data.Caption:= 'Aniversariantes do Mês de: '+AnsiUpperCase(FormatDateTime('MMMM',FrmAniversariantes.DatasAnin.Date));
QRLabel_Nome.Caption:= 'Nome do Pai';
QuickRep1.DataSet:= FrmAniversariantes.IBQuery_Aniv_Pai;
QRDBText_Dat.DataSet:= FrmAniversariantes.IBQuery_Aniv_Pai;
QRDBText_Dat.DataField:= 'DATA_NASC_PAI';
QRDBText_Nom.DataSet:= FrmAniversariantes.IBQuery_Aniv_Pai;
QRDBText_Nom.DataField:= 'NOME_PAI';
Exit;
end else
if  FrmAniversariantes.CB_ClasseAnin.Text = 'MÃE' then
begin
QRLabel_Data.Caption:= 'Aniversariantes do Mês de: '+AnsiUpperCase(FormatDateTime('MMMM',FrmAniversariantes.DatasAnin.Date));
QRLabel_Nome.Caption:= 'Nome da Mãe';
QuickRep1.DataSet:= FrmAniversariantes.IBQuery_Aniv_Mae;
QRDBText_Dat.DataSet:= FrmAniversariantes.IBQuery_Aniv_Mae;
QRDBText_Dat.DataField:= 'DATA_NASC_MAE';
QRDBText_Nom.DataSet:= FrmAniversariantes.IBQuery_Aniv_Mae;
QRDBText_Nom.DataField:= 'NOME_MAE';
Exit;
end else
if  FrmAniversariantes.CB_ClasseAnin.Text = 'RESPONSÁVEL' then
begin
QRLabel_Data.Caption:= 'Aniversariantes do Mês de: '+AnsiUpperCase(FormatDateTime('MMMM',FrmAniversariantes.DatasAnin.Date));
QRLabel_Nome.Caption:= 'Nome do Responsável';
QuickRep1.DataSet:= FrmAniversariantes.IBQuery_Aniv_Resp;
QRDBText_Dat.DataSet:= FrmAniversariantes.IBQuery_Aniv_Resp;
QRDBText_Dat.DataField:= 'DATA_NASC_RESP';
QRDBText_Nom.DataSet:= FrmAniversariantes.IBQuery_Aniv_Resp;
QRDBText_Nom.DataField:= 'NOME_RESP';
end;
end;

procedure TFrmRelAniv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=Cafree;
end;

procedure TFrmRelAniv.PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
QuickRep1.ReportTitle:= 'Relação de '+FrmAniversariantes.CB_ClasseAnin.Text+' aniversariante';
QRLabel_NomeEmpresa.Caption:= Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
QRLabel_Endereco1.Caption:= Dm.IBDS_EMPRESAENDERECO.AsString;
QRLabel_Endereco2.Caption:= 'CNPJ: '+Dm.IBDS_EMPRESACNPJ.AsString;
QRLabel_Endereco3.Caption:= 'FONE: '+Dm.IBDS_EMPRESATELEFONE.AsString;
QRLabel_Endereco4.Caption:= Dm.IBDS_EMPRESACIDADE.AsString+' - '+Dm.IBDS_EMPRESAESTADO.AsString;
end;

end.
