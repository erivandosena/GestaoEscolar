unit UnRelReImpCarteira;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, UnDm, QRCtrls, DB, Jpeg, IBCustomDataSet,
  IBQuery, qrRRect, RxGIF, Barcode;

type
  TFrmRelReImpCarteira = class(TForm)
    DataSource2: TDataSource;
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRShape1: TQRShape;
    QRRoundRect1: TQRRoundRect;
    QRDBText6: TQRDBText;
    QRGroup1: TQRGroup;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText2: TQRDBText;
    Grafico: TQRImage;
    Barcode1: TBarcode;
    QRDBText3: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    Image1: TQRImage;
    QRDBText1: TQRDBText;
    QRImage1: TQRImage;
    QRShape2: TQRShape;
    QRRoundRect2: TQRRoundRect;
    QRImage2: TQRImage;
    QRDBText9: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText12: TQRLabel;
    QRDBText11: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel6: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DataSource2DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelReImpCarteira: TFrmRelReImpCarteira;

implementation

uses UnReempresaoCart;

{$R *.dfm}

procedure TFrmRelReImpCarteira.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
QRDBText11.Caption:= Dm.IBDS_EMPRESAENDERECO.AsString+' '+Dm.IBDS_EMPRESABAIRRO.AsString+' CEP:'+Dm.IBDS_EMPRESACEP.AsString+' '+Dm.IBDS_EMPRESACIDADE.AsString+' - '+Dm.IBDS_EMPRESAUF.AsString;
QRDBText12.Caption:= 'Tel.: '+Dm.IBDS_EMPRESATELEFONE.AsString+'   E-mail: '+Dm.IBDS_EMPRESAEMAIL.AsString;
Grafico.Picture := Nil;
Barcode1.Left:=1;
BarCode1.Top:=1;
Barcode1.Height:=40;
Grafico.Height:=40;
BarCode1.Text := FrmReempresaoCart.IBQuery_ALUNOS.FieldByName('MATRICULA').AsString;
Barcode1.DrawBarcode(Grafico.Canvas);
end;

procedure TFrmRelReImpCarteira.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=Cafree;
end;

procedure TFrmRelReImpCarteira.DataSource2DataChange(Sender: TObject;
  Field: TField);
var
  MS: TMemoryStream;
  J1: TJPEGImage;
begin
  Try{Finall}
    If FrmReempresaoCart.IBQuery_ALUNOSFOTO.IsNull
      then Image1.Picture.Assign(nil)
      else begin
        J1 := TJPEGImage.Create;
        MS := TMemoryStream.Create;
        try
          FrmReempresaoCart.IBQuery_ALUNOSFOTO.SaveToStream(MS);
          MS.Seek(0,soFromBeginning);
          with J1 do begin
            PixelFormat := jf24Bit;
            Scale := jsFullSize;
            Grayscale := False;
            Performance := jpBestQuality;
            ProgressiveDisplay := True;
            ProgressiveEncoding := True;
            LoadFromStream(MS);
          end;
         Image1.Picture.Assign(J1);
        finally
          J1.Free;
          MS.Free;
      end;
      end;
  Finally
    end;
end;

end.
