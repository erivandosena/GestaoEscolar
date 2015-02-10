unit UnAbertura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, DB, IBCustomDataSet, ComCtrls, Animate,
  GIFCtrl;

type
  TFrmAbertura = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Image1: TImage;
    Label5: TLabel;
    Label_Pro: TLabel;
    RxGIFAnimator: TRxGIFAnimator;
    Shape1: TShape;
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAbertura: TFrmAbertura;

implementation

uses UnDm;

{$R *.dfm}

procedure TFrmAbertura.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=Cafree;
end;

procedure TFrmAbertura.FormDestroy(Sender: TObject);
begin
RxGIFAnimator.Animate:= False;
end;

procedure TFrmAbertura.FormShow(Sender: TObject);
begin
RxGIFAnimator.Animate:= True;
Application.ProcessMessages;
end;

end.
