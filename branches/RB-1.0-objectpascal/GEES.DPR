program GEES;

uses
  Forms,
  Windows,
  Dialogs,
  UnPrincipal in 'UnPrincipal.pas' {FrmPrincipal},
  UnAbertura in 'UnAbertura.pas' {FrmAbertura},
  UnAlunos in 'UnAlunos.pas' {FrmAlunos},
  UnAniversariantes in 'UnAniversariantes.pas' {FrmAniversariantes},
  UnBackup in 'UnBackup.pas' {FrmBackup},
  UnDm in 'UnDm.pas' {Dm: TDataModule},
  UnEmpresa in 'UnEmpresa.pas' {FrmEmpresa},
  UnEncrypt in 'UnEncrypt.pas',
  UnLocalizar in 'UnLocalizar.pas' {FrmLocalizar},
  UnSenha in 'UnSenha.pas' {FrmSenha},
  UnUsuarios in 'UnUsuarios.pas' {FrmUsuarios},
  UnFotos in 'UnFotos.pas' {FrmFotos},
  UnFrmDataGeral in 'UnFrmDataGeral.pas' {FrmDataGeral},
  UnInativos in 'UnInativos.pas' {FrmInativos},
  UnRelAniv in 'UnRelAniv.pas' {FrmRelAniv},
  UnRelAlunos in 'UnRelAlunos.pas' {FrmRelAlunos},
  UnListaAlunos in 'UnListaAlunos.pas' {FrmListaAlunos},
  UnCarne in 'UnCarne.pas' {FrmCarne},
  UnRecebimentos in 'UnRecebimentos.pas' {FrmRecebimentos},
  UnRelPlanilha in 'UnRelPlanilha.pas' {FrmRelPlanilha},
  UnConsulta in 'UnConsulta.pas' {FrmConsulta},
  UnRelCarne in 'UnRelCarne.pas' {FrmRelCarne},
  UnDisciplinas in 'UnDisciplinas.pas' {FrmDisciplina},
  UnMatriculas in 'UnMatriculas.pas' {FrmMatriculas},
  UnInsereAluno in 'UnInsereAluno.pas' {FrmInsereAluno},
  UnBoletim in 'UnBoletim.pas' {FrmBoletim},
  UnRelBoletim in 'UnRelBoletim.pas' {FrmRelBoletim},
  UnImpressaoBoletim in 'UnImpressaoBoletim.pas' {FrmImpressaoBoletim},
  UnGraficoAlunos in 'UnGraficoAlunos.pas' {FrmGraficoAlunos},
  UnRelMedias in 'UnRelMedias.pas' {FrmRelMedias},
  UnListaMedias in 'UnListaMedias.pas' {FrmListaMedias},
  UnRelCarteiras in 'UnRelCarteiras.pas' {FrmRelCarteiras},
  UnCarteiras in 'UnCarteiras.pas' {FrmCarteiras},
  UnReempresaoCart in 'UnReempresaoCart.pas' {FrmReempresaoCart},
  UnRelReImpCarteira in 'UnRelReImpCarteira.pas' {FrmRelReImpCarteira},
  UnRelExtrato in 'UnRelExtrato.pas' {FrmRelExtrato},
  UnRelCapasCarne in 'UnRelCapasCarne.pas' {FrmRelCapasCarne},
  UnRelAta in 'UnRelAta.pas' {FrmRelAta},
  UnAta in 'UnAta.pas' {FrmAta},
  UnDevedores in 'UnDevedores.pas' {FrmDevedores},
  UnRelDevedores in 'UnRelDevedores.pas' {FrmRelDevedores},
  UnDiario in 'UnDiario.pas' {FrmDiario},
  UnRelDiario in 'UnRelDiario.pas' {FrmRelDiario},
  UnRelDiarioInf in 'UnRelDiarioInf.pas' {FrmRelDiarioInf},
  UnRelCapDiaFun in 'UnRelCapDiaFun.pas' {FrmRelCapDiaFun},
  UnListaAlunosRec in 'UnListaAlunosRec.pas' {FrmListaAlunosRec},
  UnRelAlunosRec in 'UnRelAlunosRec.pas' {FrmRelAlunosRec},
  UnHistorico in 'UnHistorico.pas' {FrmHistorico},
  UnRelCertFun in 'UnRelCertFun.pas' {FrmRelCertFun},
  UnCertificado in 'UnCertificado.pas' {FrmCertificado},
  UnFichaNota in 'UnFichaNota.pas' {FrmFichaNota},
  UnRelFichaNota in 'UnRelFichaNota.pas' {FrmRelFichaNota},
  UnBD in 'UnBD.pas' {FrmBD},
  UnTransferencias in 'UnTransferencias.pas' {FrmTransferencias},
  UnDmSeleciona in 'UnDmSeleciona.pas' {DmSeleciona: TDataModule},
  UnCursos in 'UnCursos.pas' {FrmCursos},
  UnDadosPais in 'UnDadosPais.pas' {FrmDadosPais},
  UnRelPais in 'UnRelPais.pas' {FrmRelPais},
  UnCapaDiarios in 'UnCapaDiarios.pas' {FrmCapaDiarios};

{$WARN UNIT_PLATFORM OFF}
{$WARN SYMBOL_PLATFORM OFF}

{$R *.res}

Var HprevHist : HWND;

begin
Application.Initialize;
HprevHist := FindWindow(Nil, PChar('GEES 1.0'));
if HprevHist = 0 then begin
 try
 FrmAbertura:=TFrmAbertura.Create(nil);
 FrmAbertura.Show;
 FrmAbertura.Refresh;

 Application.Title := 'GEES';
 Application.CreateForm(TDm, Dm);
  Application.CreateForm(TDmSeleciona, DmSeleciona);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmRelPais, FrmRelPais);
  finally
 FrmAbertura.Release;
 end;
 Application.Run;
end else
ShowMessage('Já existe uma cópia do "'+Application.Title+'" em execução.'+#13#13+
'Não será possível executar uma outra cópia deste aplicativo.');
end.
