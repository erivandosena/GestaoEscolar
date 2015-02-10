unit UnRelAlunos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, Jpeg;

type
  TFrmRelAlunos = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    TitleBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    SummaryBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRLabel8: TQRLabel;
    QRSysData_N: TQRSysData;
    QRLabel2: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRImage_Logo: TQRImage;
    QRLabel_NomeEmpresa: TQRLabel;
    QRLabel_Endereco1: TQRLabel;
    QRLabel_Endereco2: TQRLabel;
    QRLabel_Endereco3: TQRLabel;
    QRLabel_Endereco4: TQRLabel;
    QRLabel_Titulo: TQRLabel;
    QRShape1: TQRShape;
    QRLabel_Data: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText3: TQRDBText;
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
  FrmRelAlunos: TFrmRelAlunos;
  Valor: String;

implementation

uses UnDm, UnListaAlunos, UnPrincipal;

{$R *.dfm}

procedure TFrmRelAlunos.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
if Tipo = 1 then
begin
QRLabel_Data.Caption:= FrmListaAlunos.DBGrid_Listagem.Fields[3].Text+'   -   '+FrmListaAlunos.CBox_Serie.Text+'   Turma: '+FrmListaAlunos.CBox_Turma.Text+'   Turno: '+FrmListaAlunos.CBox_Turno.Text;
QRLabel4.Enabled:= False;
QRDBText3.Enabled:= False;
Exit;
end else
QRLabel_Data.Caption:= 'Todos';
QRLabel4.Enabled:= True;
QRDBText3.Enabled:= True;
end;

procedure TFrmRelAlunos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=Cafree;
end;

procedure TFrmRelAlunos.PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
QRLabel_NomeEmpresa.Caption:= Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
QRLabel_Endereco1.Caption:= Dm.IBDS_EMPRESAENDERECO.AsString;
QRLabel_Endereco2.Caption:= 'CNPJ: '+Dm.IBDS_EMPRESACNPJ.AsString;
QRLabel_Endereco3.Caption:= 'FONE: '+Dm.IBDS_EMPRESATELEFONE.AsString;
QRLabel_Endereco4.Caption:= Dm.IBDS_EMPRESACIDADE.AsString+' - '+Dm.IBDS_EMPRESAESTADO.AsString;
QRLabel_Titulo.Caption:= 'RELAÇÃO DE ALUNOS - '+AnoLetivo;
end;

end.
