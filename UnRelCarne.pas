unit UnRelCarne;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, qrRRect, Barcode;

type
  TFrmRelCarne = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRRoundRect3: TQRRoundRect;
    QRShape2: TQRRoundRect;
    QRDBText4: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRShape15: TQRShape;
    QRLabel10: TQRLabel;
    QRSysData5: TQRSysData;
    QRLabel26: TQRLabel;
    QRSysData6: TQRSysData;
    Grafico: TQRImage;
    QRLabel9: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel31: TQRLabel;
    QRRoundRect1: TQRRoundRect;
    QRRoundRect2: TQRRoundRect;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText15: TQRDBText;
    QRRoundRect8: TQRRoundRect;
    QRRoundRect7: TQRRoundRect;
    QRRoundRect6: TQRRoundRect;
    QRRoundRect5: TQRRoundRect;
    QRLabel5: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel4: TQRLabel;
    QRRoundRect9: TQRRoundRect;
    QRLabel32: TQRLabel;
    QRSysData1: TQRSysData;
    QRRoundRect10: TQRRoundRect;
    QRShape3: TQRShape;
    QRRoundRect11: TQRRoundRect;
    QRRoundRect12: TQRRoundRect;
    QRRoundRect17: TQRRoundRect;
    QRRoundRect18: TQRRoundRect;
    QRRoundRect19: TQRRoundRect;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel_MultaJuros2: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText16: TQRDBText;
    QRRoundRect20: TQRRoundRect;
    QRRoundRect21: TQRRoundRect;
    QRRoundRect22: TQRRoundRect;
    QRRoundRect23: TQRRoundRect;
    QRRoundRect24: TQRRoundRect;
    QRRoundRect13: TQRRoundRect;
    QRRoundRect14: TQRRoundRect;
    Barcode1: TBarcode;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel27: TQRLabel;
    QRDBText22: TQRDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelCarne: TFrmRelCarne;

implementation

uses UnCarne, UnEmpresa, UnDm;


{$R *.dfm}

procedure TFrmRelCarne.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
Shortdateformat:='dd/mm/yyyy';
//QRLabel_MultaJuros1.Caption:= FormatFloat('Multa por atraso: ###,###,##0%', StrToFloat(Dm.IBDS_EMPRESAMULTA.AsString))+'  '+FormatFloat('Juros/Mora: R$ ###,###,##0.00 ao dia', StrToFloat(Dm.IBDS_EMPRESAJUROS.AsString));
QRLabel_MultaJuros2.Caption:= FormatFloat('Multa por atraso: ###,###,##0%', StrToFloat(Dm.IBDS_EMPRESAMULTA.AsString))+'  '+FormatFloat('Juros/Mora: R$ ###,###,##0.00 ao dia', StrToFloat(Dm.IBDS_EMPRESAJUROS.AsString));

Grafico.Picture := Nil;
Barcode1.Left:=1;
BarCode1.Top:=1;
Barcode1.Height:=34;
Grafico.Height:=34;
BarCode1.Text := FrmCarne.IBQuery_CarneParcelasNUMERO_DOC.asString;
Barcode1.DrawBarcode(Grafico.Canvas);
end;

procedure TFrmRelCarne.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=Cafree;
end;

end.
