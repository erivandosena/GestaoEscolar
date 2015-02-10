unit UnRelCapasCarne;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, qrRRect, Barcode;

type
  TFrmRelCapasCarne = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRShape3: TQRShape;
    Barcode1: TBarcode;
    QRLabel_Dados: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelCapasCarne: TFrmRelCapasCarne;

implementation

uses UnCarne, UnEmpresa, UnDm;


{$R *.dfm}

procedure TFrmRelCapasCarne.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
Shortdateformat:='dd/mm/yyyy';
QRLabel_Dados.Caption:= FrmCarne.IBQuery_CarneALUNOSNOME_ALUNO.asString+'   -   '+FrmCarne.IBQuery_CarneALUNOSSERIE.asString;
end;

procedure TFrmRelCapasCarne.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=Cafree;
end;

end.
