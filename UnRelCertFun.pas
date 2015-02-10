unit UnRelCertFun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, Jpeg, QrAngLbl, qrRRect, RxGIF,
  ECC_Justifica, StdCtrls, ComCtrls, JustifyRichEdit;

type
  TFrmRelCertFun = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel_REG_Sec: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel_REG_Dir: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel_Data: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel_Titulo: TQRLabel;
    QRLabel_DadosEscola: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText1: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRShape9: TQRShape;
    QRShape8: TQRShape;
    QRShape7: TQRShape;
    QRShape6: TQRShape;
    QRShape5: TQRShape;
    QRShape4: TQRShape;
    QRShape3: TQRShape;
    QRShape20: TQRShape;
    QRShape19: TQRShape;
    QRShape18: TQRShape;
    QRShape17: TQRShape;
    QRShape16: TQRShape;
    QRShape15: TQRShape;
    QRShape14: TQRShape;
    QRShape13: TQRShape;
    QRShape12: TQRShape;
    QRShape11: TQRShape;
    QRShape10: TQRShape;
    QRShape1: TQRShape;
    QRMemo4: TQRMemo;
    QRMemo3: TQRMemo;
    QRMemo2: TQRMemo;
    QRMemo_Reg: TQRMemo;
    QRLabelDateReg: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel19: TQRLabel;
    QRECC_Check2: TQRECC_Check;
    QRECC_Check1: TQRECC_Check;
    QRShape2: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    JustifyRichEdit: TJustifyRichEdit;
    QRECC_Memo: TQRRichText;
    QRImage: TQRImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    function Maiuscula(Texto:String): String;

  end;

var
  FrmRelCertFun: TFrmRelCertFun;
  CertificadosImpressos, nLivro, nFolhas, CapturaReg, CapturaLiv, CapturaFol, Impressos: Integer;

  meses: array[1..12] of String;
  meses2: array[1..12] of String;
  dia, mes, ano: Word;
  dia2, mes2, ano2: Word;

implementation

uses UnDm, UnPrincipal, UnCertificado;

{$R *.dfm}

procedure TFrmRelCertFun.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  arquivo: TextFile;
begin
meses[1]:= 'Janeiro';
meses[2]:= 'Fevereiro';
meses[3]:= 'Março';
meses[4]:= 'Abril';
meses[5]:= 'Maio';
meses[6]:= 'Junho';
meses[7]:= 'Julho';
meses[8]:= 'Agosto';
meses[9]:= 'Setembro';
meses[10]:= 'Outubro';
meses[11]:= 'Novembro';
meses[12]:= 'Dezembro';
meses2[1]:= 'Janeiro';
meses2[2]:= 'Fevereiro';
meses2[3]:= 'Março';
meses2[4]:= 'Abril';
meses2[5]:= 'Maio';
meses2[6]:= 'Junho';
meses2[7]:= 'Julho';
meses2[8]:= 'Agosto';
meses2[9]:= 'Setembro';
meses2[10]:= 'Outubro';
meses2[11]:= 'Novembro';
meses2[12]:= 'Dezembro';
DecodeDate(Data,ano,mes,dia);
DecodeDate(FrmCertificado.IBQuery_AlunCertDATA_NASCIMENTO.AsDateTime,ano2,mes2,dia2);
QRLabel_DadosEscola.Caption:= Dm.IBDS_EMPRESACREDENC_PARECER.AsString +' '+
Dm.IBDS_EMPRESACREDENC_PARECER_VAL.AsString +' '+
Dm.IBDS_EMPRESAORGAO_EXPEDIDOR.AsString +' '+
Dm.IBDS_EMPRESAORGAO_EXPEDIDOR_VAL.AsString +' '+
Dm.IBDS_EMPRESADIARIO_OFICIAL.AsString;

AssignFile(arquivo,'c:\windows\temp\cert.txt');
Rewrite(arquivo);
Write(arquivo, '          O(A) DIRETOR(A) do(a) '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString+', no uso de suas atribuições legais, confere o presente'+
' CERTIFICADO a '+FrmCertificado.IBQuery_AlunCertNOME_ALUNO.AsString+', natural de '+FrmCertificado.IBQuery_AlunCertNATURALIDADE.AsString+','+
' Estado '+FrmCertificado.IBQuery_AlunCertESTADO_NATURALIDADE.AsString+', nascido a '+INTTOSTR(dia2)+' de '+meses[mes2]+' de '+INTTOSTR(ano2)+','+
' tendo em vista haver concluído o '+FrmCertificado.CBox_Curso.Text+' no ano de '+FrmCertificado.IBQuery_AlunCertANO_LETIVO.AsString+','+
' para que possa gozar de todos os direitos, regalias e prerrogativas concedidos a este título pelas leis do País.');
WriteLn(arquivo);
CloseFile(arquivo);

JustifyRichEdit.Lines.Clear;
JustifyRichEdit.Lines.LoadFromFile('c:\windows\temp\cert.txt');
JustifyRichEdit.Justify;

QRLabel_Data.Caption:= Maiuscula(Dm.IBDS_EMPRESACIDADE.AsString)+'-'+Maiuscula(Dm.IBDS_EMPRESAUF.AsString)+', '+INTTOSTR(dia)+' de '+meses[mes]+' de '+INTTOSTR(ano)+'.';
QRLabel_REG_Sec.Caption:= 'SECRETÁRIO(A) REG. Nº '+Dm.IBDS_EMPRESASECRETARIO_REG.AsString;
QRLabel_REG_Dir.Caption:= 'DIRETOR(A) REG. Nº '+Dm.IBDS_EMPRESADIRETOR_REG.AsString;
QRLabel_Titulo.Caption:= 'CERTIFICADO DE CONCLUSÃO DO '+FrmCertificado.CBox_Curso.Text;

Dm.IBDS_MATRICULAS.Locate('MATRICULA;SERIE',VarArrayOf([FrmCertificado.IBQuery_AlunCertMATRICULA.AsString,FrmCertificado.IBQuery_AlunCertSERIE.AsString]), []);
// Inicia alteração
Dm.IBDS_MATRICULAS.Edit;
Dm.IBDS_MATRICULASCERT_IMPRESSO.AsInteger:= 1;
// Salva alterações
If Not(DM.IBTransaction.InTransaction) Then
Dm.IBTransaction.StartTransaction;
Dm.IBDS_MATRICULAS.Post;
Dm.IBDS_MATRICULAS.ApplyUpdates;
Dm.IBTransaction.CommitRetaining;

Impressos:= 0;
Inc( Impressos ); //conta os certificados impressos
nFolhas:= Dm.IBDS_EMPRESATOTAL_REG_FOLHA.AsInteger;
nLivro:= Dm.IBDS_EMPRESATOTAL_FOLHAS_LIVRO.AsInteger;
CapturaReg:= 0;
CapturaFol:= 0;
CapturaLiv:= 0;
CapturaReg:= Dm.IBDS_EMPRESAREGISTRO_NUMERO.AsInteger;
CapturaFol:= Dm.IBDS_EMPRESAFOLHA_NUMERO.AsInteger;
CapturaLiv:= Dm.IBDS_EMPRESALIVRO_NUMERO.AsInteger;

Inc( CertificadosImpressos); //gera o prox. numero registro
if CertificadosImpressos+CapturaReg > nFolhas * CapturaFol then
begin
CapturaFol:= CapturaFol + 1;
end;
if CapturaFol > nLivro then
begin
CapturaLiv:= CapturaLiv + 1;
CapturaFol:= 1;
end;
QRLabelDateReg.Caption:= 'DATA: '+FormatDateTime('dd/mm/yyyy',Data);
QRMemo_Reg.Lines.Clear;
QRMemo_Reg.Lines.Add('O PRESENTE CERTIFICADO FOI');
QRMemo_Reg.Lines.Add('REGISTRADO SOB O Nº '+IntToStr(CapturaReg+CertificadosImpressos)+'');
QRMemo_Reg.Lines.Add('ÀS FLS. '+IntToStr(CapturaFol)+' DO LIVRO Nº '+IntToStr(CapturaLiv)+'');

end;

procedure TFrmRelCertFun.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=Cafree;
end;

function TFrmRelCertFun.Maiuscula(Texto: String): String;
{Converte a primeira letra do texto especificado para maiuscula e as restantes para minuscula}
begin
if Texto <> '' then
  begin
  Texto := AnsiUpperCase(Copy(Texto,1,1))+AnsiLowerCase(Copy(Texto,2,Length(Texto)));
  Result := Texto;
  end;
end;

procedure TFrmRelCertFun.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
QuickRep1.ReportTitle:= 'CERTIFICADO DE CONCLUSÃO DO '+FrmCertificado.CBox_Curso.Text;
CertificadosImpressos:= 0;
end;

end.
