unit UnGraficoAlunos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DB, IBCustomDataSet, IBQuery, ComCtrls, TeEngine, Series, TeeProcs,
  Chart, DbChart, StdCtrls, Buttons, ExtCtrls, QuickRpt;

type
  TFrmGraficoAlunos = class(TForm)
    Panel1: TPanel;
    Btn_Fechar: TBitBtn;
    DBChart_Matriculas: TDBChart;
    Btn_ImpG: TBitBtn;
    Query_GraficoMatriculas: TIBQuery;
    Ds_Query_GraficoMatriculas: TDataSource;
    Series1: TPieSeries;
    StatusBar1: TStatusBar;
    Query_GraficoMatriculasANO: TIBStringField;
    Query_GraficoMatriculasMATRICULAS: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Btn_FecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Btn_ImpGClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGraficoAlunos: TFrmGraficoAlunos;

implementation

uses UnPrincipal, UnDm;

{$R *.DFM}

procedure TFrmGraficoAlunos.Btn_FecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrmGraficoAlunos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=Cafree;
end;

procedure TFrmGraficoAlunos.FormShow(Sender: TObject);
begin
FrmGraficoAlunos.Top:=0;
FrmGraficoAlunos.Left:=0;
With Query_GraficoMatriculas do
Begin
Screen.Cursor := crHourGlass;
Query_GraficoMatriculas.Close;
Query_GraficoMatriculas.Sql.Clear;
Query_GraficoMatriculas.SQL.Add('select ANO_LETIVO as Ano, count(MATRICULA) as Matriculas ');
Query_GraficoMatriculas.SQL.Add('from MATRICUL where ANO_LETIVO = ANO_LETIVO');
Query_GraficoMatriculas.SQL.Add('group by ANO_LETIVO');
//Query_GraficoMatriculas.SQL.Add('order by ANO_LETIVO');
Query_GraficoMatriculas.Prepare;
Query_GraficoMatriculas.Open;
Screen.Cursor := crDefault;
DBChart_Matriculas.Title.Text.Clear;
DBChart_Matriculas.Title.Text.Add('MATRÍCULAS');
DBChart_Matriculas.Title.Text.Add('Anos Letivos  X  Ano Letivo '+AnoLetivo);
end;
if Dm.IBDS_EMPRESANOME_EMPRESARIAL.AsString = '' then
begin
FrmGraficoAlunos.Caption:= FrmGraficoAlunos.Caption;
Exit;
end else
FrmGraficoAlunos.Caption:= FrmGraficoAlunos.Caption+' - '+Dm.IBDS_EMPRESANOME_FANTASIA.AsString;
end;

procedure TFrmGraficoAlunos.Btn_ImpGClick(Sender: TObject);
begin
DBChart_Matriculas.PrintLandscape;
end;

end.
