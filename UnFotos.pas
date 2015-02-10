unit UnFotos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, OleCtrls, ExtCtrls, jpeg, StdCtrls,
  Buttons, DelphiTwain, ComCtrls;

type
  TFrmFotos = class(TForm)
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    SbInserirFoto: TBitBtn;
    Panel1: TPanel;
    Image1: TImage;
    Bevel1: TBevel;
    Btn_Fechar: TBitBtn;
    Image2: TImage;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Fechar1: TMenuItem;
    BitBtn2: TBitBtn;
    ImgScan: TDelphiTwain;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ImgScanTwainAcquire(Sender: TObject; const Index: Integer;
      Image: TBitmap; var Cancel: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure Btn_FecharClick(Sender: TObject);
    procedure SbInserirFotoClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
     procedure ConverterBmpParaJPeg(Arquivo: string);
  public
    { Public declarations }
  end;

var
  FrmFotos: TFrmFotos;

implementation

uses UnDm, UnAlunos, UnPrincipal;

{$R *.dfm}

procedure TFrmFotos.BitBtn1Click(Sender: TObject);
begin
  // Biblioteca de cargas e gerente de fonte. No caso de o
  // Valor de LibraryLoaded continua sendo FALSO, isto,
  // meios que não são instalados pares, assim saída
  ImgScan.LibraryLoaded := TRUE;
  ImgScan.SourceManagerLoaded := TRUE;
  if ImgScan.LibraryLoaded = FALSE then Exit;
  // Se há nenhuma fonte, também saída,
  if ImgScan.SourceCount = 0 then exit;
  // Adquira da primeira fonte
  ImgScan.Source[0].TransferMode := ttmMemory;
  ImgScan.Source[0].Loaded := TRUE;
  ImgScan.Source[0].Enabled := TRUE;
end;

procedure TFrmFotos.Btn_FecharClick(Sender: TObject);
begin
BitBtn2.Enabled:=False;
Close;
if FrmAlunos.SbSalvar.Enabled = True then
begin
FrmAlunos.SbSalvar.SetFocus;
end;
end;

procedure TFrmFotos.SbInserirFotoClick(Sender: TObject);
 var i: integer;
begin
Dm.IBDS_ALUNOS.Edit;
  With FrmAlunos.OpenPictureDialog1 do if Execute
   then
   for i := 0 to Files.Count-1
        do FrmAlunos.LoadFileToDB(Files[i]);
Close;
if FrmAlunos.SbSalvar.Enabled = True then
begin
FrmAlunos.SbSalvar.SetFocus;
end;
end;

procedure TFrmFotos.ConverterBmpParaJPeg(Arquivo: string);
var
  Bmp: TBitmap;
  JPeg: TJPegImage;
begin
  Bmp := TBitmap.Create;
  try
    Bmp.LoadFromFile(Arquivo);
    JPeg := TJPegImage.Create;
    try
      JPeg.CompressionQuality := 75; { Qualidade: 100% }
      JPeg.Assign(Bmp);
      JPeg.SaveToFile(ChangeFileExt(Arquivo,'.jpg'));
    finally
      JPeg.Free;
    end;
  finally
    Bmp.Free;
  end;
end;

procedure TFrmFotos.BitBtn2Click(Sender: TObject);
begin
 Dm.IBDS_ALUNOS.Edit;
  FrmAlunos.LoadFileToDB('C:\WINDOWS\TEMP\TmpImg.jpg');
  Image1.Picture.Bitmap.FreeImage;
  BitBtn2.Enabled:=False;
  DeleteFile('C:\WINDOWS\TEMP\TmpImg.bmp');
  DeleteFile('C:\WINDOWS\TEMP\TmpImg.jpg');
Close;
if FrmAlunos.SbSalvar.Enabled = True then
begin
FrmAlunos.SbSalvar.SetFocus;
end;
end;

procedure TFrmFotos.Fechar1Click(Sender: TObject);
begin
Close;
end;

procedure TFrmFotos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=Cafree;
end;

procedure TFrmFotos.FormShow(Sender: TObject);
begin
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmFotos.Caption:= FrmFotos.Caption;
Exit;
end else
FrmFotos.Caption:= FrmFotos.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end;

procedure TFrmFotos.ImgScanTwainAcquire(Sender: TObject; const Index: Integer;
  Image: TBitmap; var Cancel: Boolean);
begin
if ImgScan.LoadLibrary then
try
  // Cópias o parâmetro de Imagem para o TImage
  Image1.Picture.Assign(Image);
  // Nós só queremos a primeira imagem
  Cancel := TRUE;
Image1.Picture.SaveToFile('C:\WINDOWS\TEMP\TmpImg.bmp');
Application.ProcessMessages;
finally
//ImgScan.Destroy;
ConverterBmpParaJPeg('C:\WINDOWS\TEMP\TmpImg.bmp');
Image1.Picture.LoadFromFile('C:\WINDOWS\TEMP\TmpImg.jpg');
BitBtn2.Enabled:=True;
BitBtn2.SetFocus;
end;
end;

end.
