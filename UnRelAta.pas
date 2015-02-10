unit UnRelAta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, Jpeg, RxGIF, IBCustomDataSet,
  IBQuery, qrRRect, Grids, DBGrids, QrAngLbl;

type
  TFrmRelAta = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    TitleBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    QRDBText150: TQRDBText;
    QRShape32: TQRShape;
    QRShape31: TQRShape;
    PageHeaderBand1: TQRBand;
    QRLabel_NomeEmpresa: TQRLabel;
    QRLabel_Endereco1: TQRLabel;
    QRLabel_Endereco2: TQRLabel;
    QRLabel_Endereco3: TQRLabel;
    QRLabel_Endereco4: TQRLabel;
    QRLabel_Titulo: TQRLabel;
    QRImage_Logo: TQRImage;
    QRShape6: TQRShape;
    SummaryBand1: TQRBand;
    QRSysData4: TQRSysData;
    QRShape19: TQRShape;
    QRExprMemo1: TQRExprMemo;
    QRLabelAluno: TQRLabel;
    QRLabel03: TQRAngledLabel;
    QRLabel04: TQRAngledLabel;
    QRLabel05: TQRAngledLabel;
    QRLabel06: TQRAngledLabel;
    QRLabel07: TQRAngledLabel;
    QRLabel08: TQRAngledLabel;
    QRLabel09: TQRAngledLabel;
    QRLabel10: TQRAngledLabel;
    QRLabel11: TQRAngledLabel;
    QRLabel12: TQRAngledLabel;
    QRLabel13: TQRAngledLabel;
    QRLabel14: TQRAngledLabel;
    QRLabel15: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape7: TQRShape;
    QRDBText03: TQRDBText;
    QRDBText04: TQRDBText;
    QRDBText05: TQRDBText;
    QRDBText06: TQRDBText;
    QRDBText07: TQRDBText;
    QRDBText08: TQRDBText;
    QRDBText09: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape12: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape20: TQRShape;
    QRDBText15: TQRDBText;
    QRExprMemo2: TQRExprMemo;
    QRAngledLabel1: TQRAngledLabel;
    QRAngledLabel2: TQRAngledLabel;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRLabel130: TQRLabel;
    QRLabel140: TQRLabel;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRDBText02: TQRDBText;
    QRDBText01: TQRDBText;
    QRShapeGray: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRLabel01: TQRAngledLabel;
    QRLabel02: TQRAngledLabel;
    QRShape39: TQRShape;
    QRLabel1: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRAngledLabel3: TQRAngledLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FrmRelAta: TFrmRelAta;
  Valor, str1, str2, str3, str4, str5, str6,
  str7, str8, str9, str10, str11, str12, str13, str14 : String;
  Campos : TQRLabel;
  Local: TQRBand;

implementation

uses UnDm, UnAta, UnPrincipal;


{$R *.dfm}

procedure TFrmRelAta.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var
D: Array [0..15] of String;
I:Integer;
begin
if FrmAta.CBox_Unifica.Checked = True then
begin
Dm.IBConsulta1.First;
I:=1;
while not Dm.IBConsulta1.Eof do
begin
D[I]:=Dm.IBConsulta1.FieldByName('DISCIPLINA').AsString;
I:=I+1;
Dm.IBConsulta1.Next;
end;
Dm.IBDS_DiscAta2.First;
I:=I;
while not Dm.IBDS_DiscAta2.Eof do
begin
D[I]:= Dm.IBDS_DiscAta2.FieldByName('DISCIPLINA').AsString;
I:=I+1;
Dm.IBDS_DiscAta2.Next;
end;
end else
if FrmAta.CBox_Unifica.Checked = False then
begin
Dm.IBDS_DiscAta.First;
I:=1;
while not Dm.IBDS_DiscAta.Eof do
begin
D[I]:= Dm.IBDS_DiscAta.FieldByName('DISCIPLINA').AsString;
I:=I+1;
Dm.IBDS_DiscAta.Next;
end;
end;
  QRLabel01.Caption:= D[1];
  QRLabel02.Caption:= D[2];
  QRLabel03.Caption:= D[3];
  QRLabel04.Caption:= D[4];
  QRLabel05.Caption:= D[5];
  QRLabel06.Caption:= D[6];
  QRLabel07.Caption:= D[7];
  QRLabel08.Caption:= D[8];
  QRLabel09.Caption:= D[9];
  QRLabel10.Caption:= D[10];
  QRLabel11.Caption:= D[11];
  QRLabel12.Caption:= D[12];
  QRLabel13.Caption:= D[13];
  QRLabel14.Caption:= D[14];

  str1:= StringReplace(QRLabel01.Caption,'-',' ', [rfReplaceAll]);
  str1:= StringReplace(str1,'/',' ', [rfReplaceAll]);

  str2:= StringReplace(QRLabel02.Caption,'-',' ', [rfReplaceAll]);
  str2:= StringReplace(str2,'/',' ', [rfReplaceAll]);

  str3:= StringReplace(QRLabel03.Caption,'-',' ', [rfReplaceAll]);
  str3:= StringReplace(str3,'/',' ', [rfReplaceAll]);

  str4:= StringReplace(QRLabel04.Caption,'-',' ', [rfReplaceAll]);
  str4:= StringReplace(str4,'/',' ', [rfReplaceAll]);

  str5:= StringReplace(QRLabel05.Caption,'-',' ', [rfReplaceAll]);
  str5:= StringReplace(str5,'/',' ', [rfReplaceAll]);

  str6:= StringReplace(QRLabel06.Caption,'-',' ', [rfReplaceAll]);
  str6:= StringReplace(str6,'/',' ', [rfReplaceAll]);

  str7:= StringReplace(QRLabel07.Caption,'-',' ', [rfReplaceAll]);
  str7:= StringReplace(str7,'/',' ', [rfReplaceAll]);

  str8:= StringReplace(QRLabel08.Caption,'-',' ', [rfReplaceAll]);
  str8:= StringReplace(str8,'/',' ', [rfReplaceAll]);

  str9:= StringReplace(QRLabel09.Caption,'-',' ', [rfReplaceAll]);
  str9:= StringReplace(str9,'/',' ', [rfReplaceAll]);

  str10:= StringReplace(QRLabel10.Caption,'-',' ', [rfReplaceAll]);
  str10:= StringReplace(str10,'/',' ', [rfReplaceAll]);

  str11:= StringReplace(QRLabel11.Caption,'-',' ', [rfReplaceAll]);
  str11:= StringReplace(str11,'/',' ', [rfReplaceAll]);

  str12:= StringReplace(QRLabel12.Caption,'-',' ', [rfReplaceAll]);
  str12:= StringReplace(str12,'/',' ', [rfReplaceAll]);

  str13:= StringReplace(QRLabel13.Caption,'-',' ', [rfReplaceAll]);
  str13:= StringReplace(str13,'/',' ', [rfReplaceAll]);

  str14:= StringReplace(QRLabel14.Caption,'-',' ', [rfReplaceAll]);
  str14:= StringReplace(str14,'/',' ', [rfReplaceAll]);

 QRDBText01.DataField:= FrmPrincipal.EliminaBrancos(FrmPrincipal.CheckDateFormat(FrmPrincipal.AnsiToAscii(str1)));
 QRDBText02.DataField:= FrmPrincipal.EliminaBrancos(FrmPrincipal.CheckDateFormat(FrmPrincipal.AnsiToAscii(str2)));
 QRDBText03.DataField:= FrmPrincipal.EliminaBrancos(FrmPrincipal.CheckDateFormat(FrmPrincipal.AnsiToAscii(str3)));
 QRDBText04.DataField:= FrmPrincipal.EliminaBrancos(FrmPrincipal.CheckDateFormat(FrmPrincipal.AnsiToAscii(str4)));
 QRDBText05.DataField:= FrmPrincipal.EliminaBrancos(FrmPrincipal.CheckDateFormat(FrmPrincipal.AnsiToAscii(str5)));
 QRDBText06.DataField:= FrmPrincipal.EliminaBrancos(FrmPrincipal.CheckDateFormat(FrmPrincipal.AnsiToAscii(str6)));
 QRDBText07.DataField:= FrmPrincipal.EliminaBrancos(FrmPrincipal.CheckDateFormat(FrmPrincipal.AnsiToAscii(str7)));
 QRDBText08.DataField:= FrmPrincipal.EliminaBrancos(FrmPrincipal.CheckDateFormat(FrmPrincipal.AnsiToAscii(str8)));
 QRDBText09.DataField:= FrmPrincipal.EliminaBrancos(FrmPrincipal.CheckDateFormat(FrmPrincipal.AnsiToAscii(str9)));
 QRDBText10.DataField:= FrmPrincipal.EliminaBrancos(FrmPrincipal.CheckDateFormat(FrmPrincipal.AnsiToAscii(str10)));
 QRDBText11.DataField:= FrmPrincipal.EliminaBrancos(FrmPrincipal.CheckDateFormat(FrmPrincipal.AnsiToAscii(str11)));
 QRDBText12.DataField:= FrmPrincipal.EliminaBrancos(FrmPrincipal.CheckDateFormat(FrmPrincipal.AnsiToAscii(str12)));
 QRDBText13.DataField:= FrmPrincipal.EliminaBrancos(FrmPrincipal.CheckDateFormat(FrmPrincipal.AnsiToAscii(str13)));
 QRDBText14.DataField:= FrmPrincipal.EliminaBrancos(FrmPrincipal.CheckDateFormat(FrmPrincipal.AnsiToAscii(str14)));
end;

procedure TFrmRelAta.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
// toggle the item background so that we can have alternating colors like the greenbar paper we all know and love.
  with QRShapeGray.Brush do
    if Color = clWhite then
      Color := $00E0E0E0
    else
      Color := clWhite;
end;

procedure TFrmRelAta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=Cafree;
end;

procedure TFrmRelAta.PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
var PrintBand: Boolean);
begin
QRLabel_NomeEmpresa.Caption:= Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
QRLabel_Endereco1.Caption:= Dm.IBDS_EMPRESAENDERECO.AsString;
QRLabel_Endereco2.Caption:= 'CNPJ: '+Dm.IBDS_EMPRESACNPJ.AsString;
QRLabel_Endereco3.Caption:= 'FONE: '+Dm.IBDS_EMPRESATELEFONE.AsString;
QRLabel_Endereco4.Caption:= Dm.IBDS_EMPRESACIDADE.AsString+' - '+Dm.IBDS_EMPRESAESTADO.AsString;
end;

end.





