unit UnRelCapDiaInf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, Jpeg, QrAngLbl, qrRRect;

type
  TFrmRelCapDiaInf = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    QRImage_Logo: TQRImage;
    QRRoundRect1: TQRRoundRect;
    QRLabel_Geral: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel_NomeEmpresa: TQRLabel;
    QRRoundRect2: TQRRoundRect;
    QRRoundRect4: TQRRoundRect;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRRoundRect5: TQRRoundRect;
    QRRoundRect6: TQRRoundRect;
    QRRoundRect7: TQRRoundRect;
    QRRoundRect8: TQRRoundRect;
    QRRoundRect9: TQRRoundRect;
    QRRoundRect10: TQRRoundRect;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRRoundRect3: TQRRoundRect;
    QRRoundRect11: TQRRoundRect;
    QRLabel12: TQRLabel;
    QRLabelAnoLetivo: TQRLabel;
    QRLabel_Endereco4: TQRLabel;
    QRRoundRect12: TQRRoundRect;
    QRLabel15: TQRLabel;
    QRRoundRect19: TQRRoundRect;
    QRRoundRect20: TQRRoundRect;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRRoundRect13: TQRShape;
    QRRoundRect14: TQRShape;
    QRRoundRect15: TQRShape;
    QRRoundRect16: TQRShape;
    QRRoundRect17: TQRShape;
    QRRoundRect21: TQRShape;
    QRRoundRect22: TQRShape;
    QRRoundRect23: TQRShape;
    QRRoundRect24: TQRShape;
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelCapDiaInf: TFrmRelCapDiaInf;
  Valor: String;

implementation

uses UnDm, UnPrincipal;

{$R *.dfm}

procedure TFrmRelCapDiaInf.TitleBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
QRLabel_NomeEmpresa.Caption:= Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
QRLabel_Endereco4.Caption:= Dm.IBDS_EMPRESACIDADE.AsString+' - '+Dm.IBDS_EMPRESAESTADO.AsString;
QRLabelAnoLetivo.Caption:= AnoLetivo;
end;

end.
