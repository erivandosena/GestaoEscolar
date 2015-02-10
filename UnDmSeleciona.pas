unit UnDmSeleciona;

interface

uses
  SysUtils, Classes, UnDm, DB, IBCustomDataSet, IBQuery, DBClient, Provider;

type
  TDmSeleciona = class(TDataModule)
    IBQ_AnoLetivo: TIBQuery;
    Ds_AnoLetivo: TDataSource;
    IBQ_Disciplinas: TIBQuery;
    Ds_Disciplinas: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmSeleciona: TDmSeleciona;

implementation

{$R *.dfm}

end.
