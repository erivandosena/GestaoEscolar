unit UnBD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Registry, WinSock, IdTCPClient, IniFiles;

type
  TFrmBD = class(TForm)
    BitBtn2: TBitBtn;
    OpenDialog1: TOpenDialog;
    GroupBox1: TGroupBox;
    Label_IP: TLabel;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edBanco: TEdit;
    edServidor: TEdit;
    edPath: TEdit;
    edUser: TEdit;
    edSenha: TEdit;
    edArquivo: TEdit;
    btGravar: TBitBtn;
    btLer: TBitBtn;
    btLimpar: TBitBtn;
    btConectar: TBitBtn;
    BitLocal: TBitBtn;
    BitServer: TBitBtn;
    Btn_Local: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitLocalClick(Sender: TObject);
    procedure BitServerClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btConectarClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure btLerClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Btn_LocalClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Function RecurseDirectory(fname:string):tstringlist;
  end;

type
PRecInfo=^TRecInfo;
Trecinfo=record
prev:PRecInfo;
fpathname:string;
srchrec: Tsearchrec;
end;

    const
  my_key = 21327;//33189;

var
  FrmBD: TFrmBD;
  iOK: Integer;
  Arquivo, NomePC, IPservidor, NomeServidor,
  Caminho, LocalINI: String;
  ArquivoINI: TIniFile;
  l1:Tstringlist;

implementation

uses UnDm;

{$R *.dfm}

{ As rotinas originais Encrypt e Decrypt foram encontradas no seguinte endereço:
  http://community.borland.com/article/0,1410,15761,00.html
  e sofreram uma adaptação para ter o resultado final em hexadecimal}

const
  C1 = 52845;
  C2 = 22719;

function Encrypt(const S: string; Key: Word): string;
var
  I: byte;
begin
  Result := '';
  for I := 1 to Length(S) do
  begin
    Result := Result + IntToHex(byte(char(byte(S[I]) xor (Key shr 8))), 2);
    Key := (byte(char(byte(S[I]) xor (Key shr 8))) + Key) * C1 + C2;
  end;
end;

function Decrypt(const S: ShortString; Key: Word): string;
var
  I: byte;
  x: char;
begin
  result := '';
  i := 1;
  while (i < Length(S)) do
  begin
    x := char(strToInt('$' + Copy(s, i, 2)));
    Result := result + char(byte(x) xor (Key shr 8));
    Key := (byte(x) + Key) * C1 + C2;
    Inc(i, 2);
  end;
end;

function StEncrypt(s: string): string;
begin
  Result := Encrypt(s, 7834);
end;

function StDecrypt(s: string): string;
begin
  Result := Decrypt(s, 7834);
end;

function ServerIsRunning(
  AHost: string; APort: integer): boolean;
begin
 { declare IdTCPClient no uses }
 with TIdTCPClient.Create(nil) do
 begin
   Host := AHost;
   Port := APort;
   Result := True;
   try
     Connect;
     Disconnect;
   except
     Result := False;
   end;
   Free;
 end;
end;

procedure TFrmBD.BitLocalClick(Sender: TObject);
var
Host : PHostEnt;
S : array[0..128] of char;
begin
Screen.Cursor := crHourglass;
// Pega o nome da maquina
GetHostName(@s, 128);
Host:= GetHostByName(@s);
// Pega o número do IP da maquina
// Junta o nome da maquina + o número Ip
//Msg:= 'Nome do Host: ' + Host^.h_Name + #13 + 'Número IP: ' + Num_Ip;
edArquivo.Text:= ExtractFilePath(ParamStr(0))+Host^.h_Name+'.ini';
edBanco.Text:= AnsiUpperCase(Host^.h_Name);
edservidor.Text:= '';
Screen.Cursor := crDefault;
end;

procedure TFrmBD.BitServerClick(Sender: TObject);
var
Host : PHostEnt;
S : array[0..128] of char;
Num_Ip : pchar;
begin
Screen.Cursor := crHourglass;
// Pega o nome da maquina
GetHostName(@s, 128);
Host:= GetHostByName(@s);
// Pega o número do IP da maquina
Num_Ip:= iNet_ntoa(PInAddr(Host^.h_addr_list^)^);
// Junta o nome da maquina + o número Ip
//Msg:= 'Nome do Host: ' + Host^.h_Name + #13 + 'Número IP: ' + Num_Ip;
 edArquivo.Text:= ExtractFilePath(ParamStr(0))+Host^.h_Name+'.ini';
 edBanco.Text:= AnsiUpperCase(Host^.h_Name);
 edServidor.Text:= Num_Ip;
Screen.Cursor := crDefault;
end;

procedure TFrmBD.btConectarClick(Sender: TObject);
begin
 with Dm.IBDatabase do
  begin
    if edServidor.Text <> '' then
      DatabaseName:= edServidor.Text + ':' + edPath.Text
    else
      DatabaseName:= edPath.text;

    params.Clear;
    params.Add('user_name='+edUser.text);
    params.Add('password='+edSenha.text);
    try
      Connected := True;
      Connected := False;
      ShowMessage('Conexão OK!');
    except
      on e: exception do
        ShowMessage('Falha na conexão! Erro:' + e.message);
    end;
  end;
end;

procedure TFrmBD.btGravarClick(Sender: TObject);
var Ini: TIniFile;
begin
  Ini := TIniFile.create(edArquivo.text);
  with Ini do
  try
    WriteString(edBanco.Text, StEncrypt('SERVER'), StEncrypt(edServidor.Text));
    WriteString(edBanco.Text, StEncrypt('USER'), StEncrypt(edUser.text));
    WriteString(edBanco.Text, StEncrypt('PASSWORD'), StEncrypt(edSenha.text));
    WriteString(edBanco.Text, StEncrypt('PATH'), StEncrypt(edPath.text));

Reg:=TRegistry.Create;
Reg.CreateKey('GEES\Bd');
If Reg.OpenKey('GEES\Bd', True) then
begin
Reg.WriteString('Servidor', StEncrypt(edServidor.Text));
Reg.WriteString('Banco', edBanco.text);
Reg.WriteString('Arquivo', edArquivo.Text);
Reg.WriteString('Local', StEncrypt(edPath.text));
Reg.CloseKey;
end;


  finally
    Ini.free;
  end;
end;

procedure TFrmBD.btLerClick(Sender: TObject);
var Ini: TIniFile;
begin
  Ini := TIniFile.create(edArquivo.text);
  with Ini do
  try
    edServidor.Text := StDecrypt(ReadString(edBanco.Text, stEncrypt('SERVER'), ''));
    edUser.Text := StDecrypt(ReadString(edBanco.Text, stEncrypt('USER'), ''));
    edPath.Text := StDecrypt(ReadString(edBanco.Text, stEncrypt('PATH'), ''));
    edSenha.Text := StDecrypt(ReadString(edBanco.Text, stEncrypt('PASSWORD'), ''));
  finally
    Ini.free;
  end;
end;

procedure TFrmBD.btLimparClick(Sender: TObject);
begin
  edServidor.Text := '';
  edUser.Text := '';
  edPath.Text := '';
  edSenha.Text := '';
  edBanco.text := '';

Reg:=TRegistry.Create;
Reg.CreateKey('GEES\Bd');
If Reg.OpenKey('GEES\Bd', True) then
begin
Reg.WriteString('Servidor', '');
Reg.WriteString('Banco', '');
Reg.WriteString('Local', '');
Reg.CloseKey;
end;

end;

procedure TFrmBD.Btn_LocalClick(Sender: TObject);
var
i : Integer;
begin
OpenDialog1.InitialDir:= ExtractFilePath(Application.ExeName);
  With OpenDialog1 do if Execute
   then
   for i:= 0 to Files.Count-1
        do edPath.Text:=(Files[i]);
Close;
end;

procedure TFrmBD.BitBtn2Click(Sender: TObject);
begin
(*
Screen.Cursor := crHourglass;
l1:=tstringlist.create;
l1:= RecurseDirectory('\\'+Edit_Cliente.Text+'\C\'+Edit_Cliente.Text+'.ini');
LocalINI:= l1.Text;
Label2.Caption:= LocalINI;
Screen.Cursor := crDefault;
*)
iOK := 625;
Close;
end;

procedure TFrmBD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=Cafree;
end;

procedure TFrmBD.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
if iOK <> 625 then
Canclose := False;
end;

procedure TFrmBD.FormCreate(Sender: TObject);
var
wVersionRequested: WORD;
wsaData: TWSAData;
begin
wVersionRequested:= MAKEWORD(1, 1);
WSAStartup(wVersionRequested, wsaData);
end;

procedure TFrmBD.FormDestroy(Sender: TObject);
begin
WSACleanup;
end;

procedure TFrmBD.FormShow(Sender: TObject);
begin
Reg:=TRegistry.Create;
Reg.OpenKey('GEES\Bd', True);
edBanco.Text:= Reg.ReadString('Banco');
Reg.CloseKey;
end;

function TFrmBD.RecurseDirectory(fname: string): tstringlist;
var
f1,f2:Tsearchrec;
p1,tmp:PRecInfo;
fwc:string;
fpath:string;
fbroke1,fbroke2:boolean; 
begin 
result:=tstringlist.create; 
fpath:=extractfilepath(fname); 
fwc:=extractfilename(fname); 
new(p1); 
p1.fpathname:=fpath; 
p1.prev:=nil; 
fbroke1:=false;
fbroke2:=false; 
while(p1<>nil) do 
begin 
if (fbroke1=false) then 
if (fbroke2=false) then 
begin 
if (findfirst(fpath+'*',faAnyfile,f1)<>0) then 
break; 
end 
else if (findnext(f1)<>0) then 
begin 
repeat 
findclose(f1); 
if (p1=nil) then 
break; 
fpath:=p1.fpathname; 
f1:=p1.srchrec; 
tmp:=p1.prev; 
dispose(p1); 
p1:=tmp; 
until (findnext(f1)=0); 
if (p1=nil) then 
break; 
end; 
if((f1.Name<>'.') and (f1.name<>'..') and ((f1.Attr and fadirectory)=fadirectory)) then 
begin 
fbroke1:=false; 
new(tmp); 
with tmp^ do 
begin 
fpathname:=fpath; 
srchrec.Time:=f1.time; 
srchrec.Size:=f1.size; 
srchrec.Attr:=f1.attr; 
srchrec.Name:=f1.name; 
srchrec.ExcludeAttr:=f1.excludeattr; 
srchrec.FindHandle:=f1.findhandle; 
srchrec.FindData:=f1.FindData; 
end; 
tmp.prev:=p1; 
p1:=tmp; 
fpath:=p1.fpathname+f1.name+'\'; 
if findfirst(fpath+fwc,faAnyfile,f2)=0 then 
begin 
result.add(fpath+f2.Name); 
while(findnext(f2)=0) do 
result.add(fpath+f2.Name); 
findclose(f2); 
end; 
fbroke2:=false; 
end 
else 
begin 
if (findnext(f1)<>0) then 
begin 
findclose(f1); 
fpath:=p1.fpathname; 
f1:=p1.srchrec; 
fbroke1:=false; 
fbroke2:=true; 
tmp:=p1.prev; 
dispose(p1); 
p1:=tmp; 
end 
else 
begin 
fbroke1:=true; 
fbroke2:=false; 
end; 
end; 
end; 
fpath:=extractfilepath(fname); 
if findfirst(fname,faAnyfile,f1)=0 then 
begin 
result.add(fpath+f2.Name); 
while(findnext(f1)=0) do 
result.add(fpath+f2.Name); 
findclose(f1); 
end;
end;

end.
