unit UnDm;

interface

uses
  Windows, SysUtils, Forms, Dialogs, IBServices, IBQuery, IBCustomDataSet,
  Classes, DBClient, Registry, IniFiles, IBDatabase, DB;

type
  TDm = class(TDataModule)
    IBDatabase: TIBDatabase;
    IBTransaction: TIBTransaction;
    Ds_ALUNOS: TDataSource;
    Ds_USUARIOS: TDataSource;
    IBDS_USUARIOS: TIBDataSet;
    IBDS_EMPRESA: TIBDataSet;
    Ds_EMPRESA: TDataSource;
    IBDS_ALUNOS: TIBDataSet;
    IBDS_INATIVOS: TIBDataSet;
    Ds_INATIVOS: TDataSource;
    IBConfigService: TIBConfigService;
    IBDS_CEPS: TIBDataSet;
    Ds_CEPS: TDataSource;
    IBDS_EMPRESANOME_EMPRESARIAL: TIBStringField;
    IBDS_EMPRESANOME_FANTASIA: TIBStringField;
    IBDS_EMPRESACNPJ: TIBStringField;
    IBDS_EMPRESAIE: TIBStringField;
    IBDS_EMPRESASLOGAN: TIBStringField;
    IBDS_EMPRESAENDERECO: TIBStringField;
    IBDS_EMPRESABAIRRO: TIBStringField;
    IBDS_EMPRESACEP: TIBStringField;
    IBDS_EMPRESACIDADE: TIBStringField;
    IBDS_EMPRESAESTADO: TIBStringField;
    IBDS_EMPRESAUF: TIBStringField;
    IBDS_EMPRESATELEFONE: TIBStringField;
    IBDS_EMPRESAFAX: TIBStringField;
    IBDS_EMPRESAEMAIL: TIBStringField;
    IBDS_EMPRESAWEBSITE: TIBStringField;
    IBDS_EMPRESASOCIO_1: TIBStringField;
    IBDS_EMPRESASOCIO_2: TIBStringField;
    IBDS_EMPRESALOGO_EMPRESA: TBlobField;
    IBDS_ALUNOSCOD_ALUN: TIntegerField;
    IBDS_ALUNOSDATA_MATRICULA: TDateTimeField;
    IBDS_ALUNOSANO_LETIVO: TIBStringField;
    IBDS_ALUNOSNOME_ALUNO: TIBStringField;
    IBDS_ALUNOSFOTO: TBlobField;
    IBDS_ALUNOSTURMA: TIBStringField;
    IBDS_ALUNOSTURNO: TIBStringField;
    IBDS_ALUNOSCURSO: TIBStringField;
    IBDS_ALUNOSSERIE: TIBStringField;
    IBDS_ALUNOSSEXO: TIBStringField;
    IBDS_ALUNOSDATA_NASCIMENTO: TDateTimeField;
    IBDS_ALUNOSNACIONALIDADE: TIBStringField;
    IBDS_ALUNOSNATURALIDADE: TIBStringField;
    IBDS_ALUNOSRELIGIAO: TIBStringField;
    IBDS_ALUNOSTEL_ALUNO: TIBStringField;
    IBDS_ALUNOSENDERECO: TIBStringField;
    IBDS_ALUNOSBAIRRO: TIBStringField;
    IBDS_ALUNOSCIDADE: TIBStringField;
    IBDS_ALUNOSCEP: TIBStringField;
    IBDS_ALUNOSESTADO: TIBStringField;
    IBDS_ALUNOSUF: TIBStringField;
    IBDS_ALUNOSESCOLA_ANTERIOR: TIBStringField;
    IBDS_ALUNOSCIDADE_ESCO_ANT: TIBStringField;
    IBDS_ALUNOSTEL_ESCO_ANT: TIBStringField;
    IBDS_ALUNOSESTADO_ESCO_ANT: TIBStringField;
    IBDS_ALUNOSUF_ESCO_ANT: TIBStringField;
    IBDS_ALUNOSPROBLEMAS_SAUDE: TMemoField;
    IBDS_ALUNOSREMEDIOS_PROIBIDOS: TMemoField;
    IBDS_ALUNOSREMEDIOS_UTILIZADOS: TMemoField;
    IBDS_ALUNOSNOME_PAI: TIBStringField;
    IBDS_ALUNOSDATA_NASC_PAI: TDateTimeField;
    IBDS_ALUNOSNACIONALIDADE_PAI: TIBStringField;
    IBDS_ALUNOSNATURALIDADE_PAI: TIBStringField;
    IBDS_ALUNOSCPF_PAI: TIBStringField;
    IBDS_ALUNOSTEL_PAI: TIBStringField;
    IBDS_ALUNOSTEL_TRAB_PAI: TIBStringField;
    IBDS_ALUNOSTEL_CEL_PAI: TIBStringField;
    IBDS_ALUNOSLOCAL_TRAB_PAI: TIBStringField;
    IBDS_ALUNOSPROFISSAO_PAI: TIBStringField;
    IBDS_ALUNOSENDERECO_PAI: TIBStringField;
    IBDS_ALUNOSBAIRRO_PAI: TIBStringField;
    IBDS_ALUNOSCIDADE_PAI: TIBStringField;
    IBDS_ALUNOSCEP_PAI: TIBStringField;
    IBDS_ALUNOSESTADO_PAI: TIBStringField;
    IBDS_ALUNOSUF_PAI: TIBStringField;
    IBDS_ALUNOSNOME_MAE: TIBStringField;
    IBDS_ALUNOSDATA_NASC_MAE: TDateTimeField;
    IBDS_ALUNOSNACIONALIDADE_MAE: TIBStringField;
    IBDS_ALUNOSNATURALIDADE_MAE: TIBStringField;
    IBDS_ALUNOSCPF_MAE: TIBStringField;
    IBDS_ALUNOSTEL_MAE: TIBStringField;
    IBDS_ALUNOSTEL_TRAB_MAE: TIBStringField;
    IBDS_ALUNOSTEL_CEL_MAE: TIBStringField;
    IBDS_ALUNOSLOCAL_TRAB_MAE: TIBStringField;
    IBDS_ALUNOSPROFISSAO_MAE: TIBStringField;
    IBDS_ALUNOSENDERECO_MAE: TIBStringField;
    IBDS_ALUNOSBAIRRO_MAE: TIBStringField;
    IBDS_ALUNOSCIDADE_MAE: TIBStringField;
    IBDS_ALUNOSCEP_MAE: TIBStringField;
    IBDS_ALUNOSESTADO_MAE: TIBStringField;
    IBDS_ALUNOSUF_MAE: TIBStringField;
    IBDS_ALUNOSNOME_RESP: TIBStringField;
    IBDS_ALUNOSDATA_NASC_RESP: TDateTimeField;
    IBDS_ALUNOSNACIONALIDADE_RESP: TIBStringField;
    IBDS_ALUNOSNATURALIDADE_RESP: TIBStringField;
    IBDS_ALUNOSCPF_RESP: TIBStringField;
    IBDS_ALUNOSTEL_RESP: TIBStringField;
    IBDS_ALUNOSTEL_TRAB_RESP: TIBStringField;
    IBDS_ALUNOSTEL_CEL_RESP: TIBStringField;
    IBDS_ALUNOSLOCAL_TRAB_RESP: TIBStringField;
    IBDS_ALUNOSPROFISSAO_RESP: TIBStringField;
    IBDS_ALUNOSENDERECO_RESP: TIBStringField;
    IBDS_ALUNOSBAIRRO_RESP: TIBStringField;
    IBDS_ALUNOSCIDADE_RESP: TIBStringField;
    IBDS_ALUNOSCEP_RESP: TIBStringField;
    IBDS_ALUNOSESTADO_RESP: TIBStringField;
    IBDS_ALUNOSUF_RESP: TIBStringField;
    IBDS_INATIVOSCOD_ALUN: TIntegerField;
    IBDS_INATIVOSDATA_MATRICULA: TDateTimeField;
    IBDS_INATIVOSANO_LETIVO: TIBStringField;
    IBDS_INATIVOSNOME_ALUNO: TIBStringField;
    IBDS_INATIVOSFOTO: TBlobField;
    IBDS_INATIVOSTURMA: TIBStringField;
    IBDS_INATIVOSTURNO: TIBStringField;
    IBDS_INATIVOSCURSO: TIBStringField;
    IBDS_INATIVOSSERIE: TIBStringField;
    IBDS_INATIVOSSEXO: TIBStringField;
    IBDS_INATIVOSDATA_NASCIMENTO: TDateTimeField;
    IBDS_INATIVOSNACIONALIDADE: TIBStringField;
    IBDS_INATIVOSNATURALIDADE: TIBStringField;
    IBDS_INATIVOSRELIGIAO: TIBStringField;
    IBDS_INATIVOSTEL_ALUNO: TIBStringField;
    IBDS_INATIVOSTEL_CEL_ALUNO: TIBStringField;
    IBDS_INATIVOSENDERECO: TIBStringField;
    IBDS_INATIVOSBAIRRO: TIBStringField;
    IBDS_INATIVOSCIDADE: TIBStringField;
    IBDS_INATIVOSCEP: TIBStringField;
    IBDS_INATIVOSESTADO: TIBStringField;
    IBDS_INATIVOSUF: TIBStringField;
    IBDS_INATIVOSESCOLA_ANTERIOR: TIBStringField;
    IBDS_INATIVOSCIDADE_ESCO_ANT: TIBStringField;
    IBDS_INATIVOSTEL_ESCO_ANT: TIBStringField;
    IBDS_INATIVOSESTADO_ESCO_ANT: TIBStringField;
    IBDS_INATIVOSUF_ESCO_ANT: TIBStringField;
    IBDS_INATIVOSPROBLEMAS_SAUDE: TMemoField;
    IBDS_INATIVOSREMEDIOS_PROIBIDOS: TMemoField;
    IBDS_INATIVOSREMEDIOS_UTILIZADOS: TMemoField;
    IBDS_INATIVOSNOME_PAI: TIBStringField;
    IBDS_INATIVOSDATA_NASC_PAI: TDateTimeField;
    IBDS_INATIVOSNACIONALIDADE_PAI: TIBStringField;
    IBDS_INATIVOSNATURALIDADE_PAI: TIBStringField;
    IBDS_INATIVOSCPF_PAI: TIBStringField;
    IBDS_INATIVOSTEL_PAI: TIBStringField;
    IBDS_INATIVOSTEL_TRAB_PAI: TIBStringField;
    IBDS_INATIVOSTEL_CEL_PAI: TIBStringField;
    IBDS_INATIVOSLOCAL_TRAB_PAI: TIBStringField;
    IBDS_INATIVOSPROFISSAO_PAI: TIBStringField;
    IBDS_INATIVOSRENDA_PAI: TIBBCDField;
    IBDS_INATIVOSENDERECO_PAI: TIBStringField;
    IBDS_INATIVOSBAIRRO_PAI: TIBStringField;
    IBDS_INATIVOSCIDADE_PAI: TIBStringField;
    IBDS_INATIVOSCEP_PAI: TIBStringField;
    IBDS_INATIVOSESTADO_PAI: TIBStringField;
    IBDS_INATIVOSUF_PAI: TIBStringField;
    IBDS_INATIVOSNOME_MAE: TIBStringField;
    IBDS_INATIVOSDATA_NASC_MAE: TDateTimeField;
    IBDS_INATIVOSNACIONALIDADE_MAE: TIBStringField;
    IBDS_INATIVOSNATURALIDADE_MAE: TIBStringField;
    IBDS_INATIVOSCPF_MAE: TIBStringField;
    IBDS_INATIVOSTEL_MAE: TIBStringField;
    IBDS_INATIVOSTEL_TRAB_MAE: TIBStringField;
    IBDS_INATIVOSTEL_CEL_MAE: TIBStringField;
    IBDS_INATIVOSLOCAL_TRAB_MAE: TIBStringField;
    IBDS_INATIVOSPROFISSAO_MAE: TIBStringField;
    IBDS_INATIVOSRENDA_MAE: TIBBCDField;
    IBDS_INATIVOSENDERECO_MAE: TIBStringField;
    IBDS_INATIVOSBAIRRO_MAE: TIBStringField;
    IBDS_INATIVOSCIDADE_MAE: TIBStringField;
    IBDS_INATIVOSCEP_MAE: TIBStringField;
    IBDS_INATIVOSESTADO_MAE: TIBStringField;
    IBDS_INATIVOSUF_MAE: TIBStringField;
    IBDS_INATIVOSNOME_RESP: TIBStringField;
    IBDS_INATIVOSDATA_NASC_RESP: TDateTimeField;
    IBDS_INATIVOSNACIONALIDADE_RESP: TIBStringField;
    IBDS_INATIVOSNATURALIDADE_RESP: TIBStringField;
    IBDS_INATIVOSCPF_RESP: TIBStringField;
    IBDS_INATIVOSTEL_RESP: TIBStringField;
    IBDS_INATIVOSTEL_TRAB_RESP: TIBStringField;
    IBDS_INATIVOSTEL_CEL_RESP: TIBStringField;
    IBDS_INATIVOSLOCAL_TRAB_RESP: TIBStringField;
    IBDS_INATIVOSPROFISSAO_RESP: TIBStringField;
    IBDS_INATIVOSRENDA_RESP: TIBBCDField;
    IBDS_INATIVOSENDERECO_RESP: TIBStringField;
    IBDS_INATIVOSBAIRRO_RESP: TIBStringField;
    IBDS_INATIVOSCIDADE_RESP: TIBStringField;
    IBDS_INATIVOSCEP_RESP: TIBStringField;
    IBDS_INATIVOSESTADO_RESP: TIBStringField;
    IBDS_INATIVOSUF_RESP: TIBStringField;
    IBDS_INATIVOSDATA_MOVIDO: TDateTimeField;
    IBDS_INATIVOSMOVIDO_USUARIO: TIBStringField;
    IBDS_INATIVOSRAZAO_MOVIDO: TIBStringField;
    IBDS_CEPSCODIGO: TIntegerField;
    IBDS_CEPSNOME_CID: TIBStringField;
    IBDS_CEPSCEP_CID: TIBStringField;
    IBDS_CEPSESTADO: TIBStringField;
    IBDS_CEPSUF: TIBStringField;
    IBDS_ALUNOSTEL_CEL_ALUNO: TIBStringField;
    IBDS_ALUNOSMATRICULA: TIBStringField;
    IBDS_INATIVOSMATRICULA: TIBStringField;
    IBDS_ALUNOSRENDA_RESP: TIBBCDField;
    IBDS_ALUNOSRENDA_MAE: TIBBCDField;
    IBDS_ALUNOSRENDA_PAI: TIBBCDField;
    IBQuery_DmINATIVOS: TIBQuery;
    IBQuery_DmALUNOS: TIBQuery;
    IBQuery_DmALUNOSCOD_ALUN: TIntegerField;
    IBQuery_DmINATIVOSCOD_ALUN: TIntegerField;
    IBDS_EMPRESAJUROS: TFloatField;
    IBDS_EMPRESAMULTA: TFloatField;
    IBDS_EMPRESADIRETOR: TIBStringField;
    IBDS_EMPRESASECRETARIO: TIBStringField;
    IBDS_ALUNOSRG_PAI: TIBStringField;
    IBDS_ALUNOSRG_MAE: TIBStringField;
    IBDS_ALUNOSRG_RESP: TIBStringField;
    IBDS_INATIVOSRG_PAI: TIBStringField;
    IBDS_INATIVOSRG_MAE: TIBStringField;
    IBDS_INATIVOSRG_RESP: TIBStringField;
    IBDS_EMPRESADIRETOR_REG: TIBStringField;
    IBDS_EMPRESASECRETARIO_REG: TIBStringField;
    IBDS_EMPRESADEPENDENCIA_ADMIN: TIBStringField;
    IBDS_EMPRESACREDENC_PARECER_VAL: TIBStringField;
    IBDS_EMPRESARECREDENC_PARECER_VAL: TIBStringField;
    IBDS_EMPRESAENTID_MANTENEDORA: TIBStringField;
    IBDS_MATERIAS: TIBDataSet;
    Ds_MATERIAS: TDataSource;
    IBDS_MATERIASCOD_MATE: TIntegerField;
    IBDS_MATERIASDISCIPLINA: TIBStringField;
    IBDS_CARNE: TIBDataSet;
    Ds_IBDS_CARNE: TDataSource;
    IBDS_CARNECOD_CARN: TIntegerField;
    IBDS_CARNENUMERO_DOC: TIBStringField;
    IBDS_CARNEMATRICULA: TIBStringField;
    IBDS_CARNEANO_LETIVO: TIBStringField;
    IBDS_CARNENOME_RESP: TIBStringField;
    IBDS_CARNENOME_ALUNO: TIBStringField;
    IBDS_CARNETURMA: TIBStringField;
    IBDS_CARNETURNO: TIBStringField;
    IBDS_CARNECURSO: TIBStringField;
    IBDS_CARNESERIE: TIBStringField;
    IBDS_CARNEDATA_VENCIMENTO: TDateTimeField;
    IBDS_CARNEDATA_PAGAMENTO: TDateTimeField;
    IBDS_CARNEVALOR_MENSAL: TIBBCDField;
    IBDS_CARNEVALOR_ACRESC: TIBBCDField;
    IBDS_CARNEVALOR_DESCON: TIBBCDField;
    IBDS_CARNENUMERO_PARCELA: TIBStringField;
    IBDS_CARNESITUACAO_PARCELA: TIBStringField;
    IBDS_CARNEVALOR_APAGAR: TIBBCDField;
    IBDS_CARNEVALOR_PAGO: TIBBCDField;
    IBDS_CARNEVALOR_PENDENTE: TIBBCDField;
    IBDS_CARNETOTAL_PAGO: TIBBCDField;
    IBDS_CARNEMES: TIBStringField;
    IBDS_EMPRESAMENSALIDADE_EI: TIBBCDField;
    IBDS_EMPRESAMENSALIDADE_EFI: TIBBCDField;
    IBDS_EMPRESAMENSALIDADE_EFII: TIBBCDField;
    IBDS_EMPRESAMENSALIDADE_EM: TIBBCDField;
    IBDS_EMPRESAVENCIMENTO_DIA: TIBStringField;
    IBDS_MATRICULAS: TIBDataSet;
    IBDS_MATRICULASCOD_MATI: TIntegerField;
    IBDS_MATRICULASMATRICULA: TIBStringField;
    IBDS_MATRICULASDATA_MATRICULA: TDateTimeField;
    IBDS_MATRICULASANO_LETIVO: TIBStringField;
    IBDS_MATRICULASCURSO: TIBStringField;
    IBDS_MATRICULASSERIE: TIBStringField;
    IBDS_MATRICULASTURNO: TIBStringField;
    IBDS_MATRICULASTURMA: TIBStringField;
    IBDS_MATRICULASNOME_ALUNO: TIBStringField;
    IBDS_MATRICULASSEXO: TIBStringField;
    IBDS_MATRICULASDATA_NASCIMENTO: TDateTimeField;
    IBDS_MATRICULASESCOLA_ANTERIOR: TIBStringField;
    IBDS_MATRICULASCIDADE_ESCO_ANT: TIBStringField;
    IBDS_MATRICULASESTADO_ESCO_ANT: TIBStringField;
    IBDS_MATRICULASUF_ESCO_ANT: TIBStringField;
    IBDS_MATRICULASNOME_PAI: TIBStringField;
    IBDS_MATRICULASENDERECO_PAI: TIBStringField;
    IBDS_MATRICULASBAIRRO_PAI: TIBStringField;
    IBDS_MATRICULASCIDADE_PAI: TIBStringField;
    IBDS_MATRICULASCEP_PAI: TIBStringField;
    IBDS_MATRICULASESTADO_PAI: TIBStringField;
    IBDS_MATRICULASUF_PAI: TIBStringField;
    IBDS_MATRICULASTEL_PAI: TIBStringField;
    IBDS_MATRICULASNOME_MAE: TIBStringField;
    IBDS_MATRICULASENDERECO_MAE: TIBStringField;
    IBDS_MATRICULASBAIRRO_MAE: TIBStringField;
    IBDS_MATRICULASCIDADE_MAE: TIBStringField;
    IBDS_MATRICULASCEP_MAE: TIBStringField;
    IBDS_MATRICULASESTADO_MAE: TIBStringField;
    IBDS_MATRICULASUF_MAE: TIBStringField;
    IBDS_MATRICULASTEL_MAE: TIBStringField;
    IBDS_MATRICULASNOME_RESP: TIBStringField;
    IBDS_MATRICULASENDERECO_RESP: TIBStringField;
    IBDS_MATRICULASBAIRRO_RESP: TIBStringField;
    IBDS_MATRICULASCIDADE_RESP: TIBStringField;
    IBDS_MATRICULASCEP_RESP: TIBStringField;
    IBDS_MATRICULASESTADO_RESP: TIBStringField;
    IBDS_MATRICULASUF_RESP: TIBStringField;
    IBDS_MATRICULASTEL_RESP: TIBStringField;
    IBDS_MATRICULASTEL_CEL_RESP: TIBStringField;
    IBDS_MATRICULASRG_RESP: TIBStringField;
    IBDS_MATRICULASCPF_RESP: TIBStringField;
    IBDS_MATRICULASESTAGIO: TIBStringField;
    IBDS_MATRICULASUSUARIO: TIBStringField;
    IBDS_MATRICULASFOTO: TBlobField;
    Ds_MATRICULAS: TDataSource;
    IBDS_BOLETIM: TIBDataSet;
    IBDS_BOLETIMCOD_BOLE: TIntegerField;
    IBDS_BOLETIMMATRICULA: TIBStringField;
    IBDS_BOLETIMNOME_ALUNO: TIBStringField;
    IBDS_BOLETIMANO_LETIVO: TIBStringField;
    IBDS_BOLETIMCURSO: TIBStringField;
    IBDS_BOLETIMSERIE: TIBStringField;
    IBDS_BOLETIMTURNO: TIBStringField;
    IBDS_BOLETIMTURMA: TIBStringField;
    IBDS_BOLETIMSEXO: TIBStringField;
    IBDS_BOLETIMDATA_NASCIMENTO: TDateTimeField;
    IBDS_BOLETIMNOME_PAI: TIBStringField;
    IBDS_BOLETIMNOME_MAE: TIBStringField;
    IBDS_BOLETIMNOME_RESP: TIBStringField;
    IBDS_BOLETIMTEL_RESP: TIBStringField;
    IBDS_BOLETIMCPF_RESP: TIBStringField;
    Ds_BOLETIM: TDataSource;
    IBDS_EMPRESAINSTRUCAO_CARNE_ALUN1: TIBStringField;
    IBDS_EMPRESAINSTRUCAO_CARNE_ALUN2: TIBStringField;
    IBDS_EMPRESAINSTRUCAO_CARNE_COM1: TIBStringField;
    IBDS_EMPRESAINSTRUCAO_CARNE_COM2: TIBStringField;
    IBDS_EMPRESAINSTRUCAO_BOLETIM_APRO: TMemoField;
    IBDS_EMPRESAINSTRUCAO_BOLETIM_REPRO: TMemoField;
    IBDS_USUARIOSNOME_USUARIO: TIBStringField;
    IBDS_USUARIOSSENHA: TIBStringField;
    IBDS_USUARIOSANTERIOR: TIBStringField;
    IBDS_MATRICULASCG: TIntegerField;
    IBDS_CARNENUMERO_CARNE: TIBStringField;
    IBDS_MATRICULASNUMERO_CARNE: TIBStringField;
    IBDS_DiscAta: TIBDataSet;
    IBDS_NotAta: TIBDataSet;
    ClientDS_Ata: TClientDataSet;
    DS_Ata: TDataSource;
    IBDS_MatAta: TIBDataSet;
    IBDS_EMPRESAORGAO_EXPEDIDOR: TIBStringField;
    IBDS_MATRICULASNATURALIDADE: TIBStringField;
    IBDS_EMPRESALIVRO_NUMERO: TIntegerField;
    IBDS_EMPRESAFOLHA_NUMERO: TIntegerField;
    IBDS_EMPRESAREGISTRO_NUMERO: TIntegerField;
    IBDS_EMPRESATOTAL_FOLHAS_LIVRO: TIntegerField;
    IBDS_EMPRESATOTAL_REG_FOLHA: TIntegerField;
    IBDS_EMPRESACREDENC_PARECER: TIBStringField;
    IBDS_EMPRESARECREDENC_PARECER: TIBStringField;
    IBDS_EMPRESAORGAO_EXPEDIDOR_VAL: TIBStringField;
    IBDS_EMPRESADIARIO_OFICIAL: TIBStringField;
    IBDS_MATRICULASCERT_IMPRESSO: TIntegerField;
    IBDS_ALUNOSESTADO_NATURALIDADE: TIBStringField;
    IBDS_INATIVOSESTADO_NATURALIDADE: TIBStringField;
    IBDS_MATRICULASESTADO_NATURALIDADE: TIBStringField;
    IBDS_ALUNOSRG: TIBStringField;
    IBConsulta1: TIBQuery;
    DSConsulta1: TDataSource;
    IBDS_MATERIASLDB: TIBStringField;
    IBConsulta2: TIBQuery;
    DSConsulta2: TDataSource;
    IBDS_MATERIASDISTRIBUIDA: TIBStringField;
    IBDS_MATERIASUNIFICACAO: TIBStringField;
    IBDS_ALUNOSSITUACAO_ALUNO: TIBStringField;
    IBDS_MATRICULASSITUACAO_ALUNO: TIBStringField;
    IBDS_INATIVOSSITUACAO_ALUNO: TIBStringField;
    IBDS_NOTAS: TIBDataSet;
    Ds_NOTAS: TDataSource;
    IBDS_NOTASCOD_NOTA: TIntegerField;
    IBDS_NOTASCOD_BOLE: TIntegerField;
    IBDS_NOTASMATRICULA: TIBStringField;
    IBDS_NOTASANO_LETIVO: TIBStringField;
    IBDS_NOTASDISCIPLINA: TIBStringField;
    IBDS_NOTASETAPA_1_MAR: TIBStringField;
    IBDS_NOTASETAPA_1_ABR: TIBStringField;
    IBDS_NOTASETAPA_1_M: TIBStringField;
    IBDS_NOTASETAPA_1_R: TIBStringField;
    IBDS_NOTASETAPA_2_MAI: TIBStringField;
    IBDS_NOTASETAPA_2_JUN: TIBStringField;
    IBDS_NOTASETAPA_2_M: TIBStringField;
    IBDS_NOTASETAPA_2_R: TIBStringField;
    IBDS_NOTASETAPA_3_AGO: TIBStringField;
    IBDS_NOTASETAPA_3_SET: TIBStringField;
    IBDS_NOTASETAPA_3_M: TIBStringField;
    IBDS_NOTASETAPA_3_R: TIBStringField;
    IBDS_NOTASETAPA_4_OUT: TIBStringField;
    IBDS_NOTASETAPA_4_NOV: TIBStringField;
    IBDS_NOTASETAPA_4_M: TIBStringField;
    IBDS_NOTASETAPA_4_R: TIBStringField;
    IBDS_NOTASPROVAO: TIBStringField;
    IBDS_NOTASPROVAO_R: TIBStringField;
    IBDS_NOTASMEDIA_FINAL: TIBStringField;
    IBDS_NOTASFALTAS: TIntegerField;
    IBDS_NOTASPONTOS: TIBStringField;
    IBDS_NOTASRESULTADO_FINAL: TIBStringField;
    IBDS_NOTASSERIE: TIBStringField;
    IBDS_NOTASTURMA: TIBStringField;
    IBDS_NOTASTURNO: TIBStringField;
    IBDS_NOTASDISTRIBUIDA: TIBStringField;
    IBDS_DiscAta2: TIBDataSet;
    IBDS_DiscAta2DISCIPLINA: TIBStringField;
    IBDS_CURSOS: TIBDataSet;
    Ds_CURSOS: TDataSource;
    IBDS_CURSOSCOD_CURS: TIntegerField;
    IBDS_CURSOSCURSO: TIBStringField;
    IBDS_CURSOSSERIE: TIBStringField;
    IBDS_CURSOSTURMA: TIBStringField;
    IBDS_CURSOSTURNO: TIBStringField;
    IBQ_GeraCOD: TIBQuery;
    IBDS_NOTASETAPA_1_AV3: TIBStringField;
    IBDS_NOTASETAPA_2_AV3: TIBStringField;
    IBDS_NOTASETAPA_3_AV3: TIBStringField;
    IBDS_NOTASETAPA_4_AV3: TIBStringField;
    procedure IBDS_NOTASAfterInsert(DataSet: TDataSet);
    procedure IBDS_CURSOSAfterInsert(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure IBDS_ALUNOSAfterInsert(DataSet: TDataSet);
    procedure IBDS_MATERIASAfterInsert(DataSet: TDataSet);
    procedure IBDS_CARNEAfterInsert(DataSet: TDataSet);
    procedure IBDS_MATRICULASAfterInsert(DataSet: TDataSet);
    procedure IBDS_BOLETIMAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure FechaTabelas;
    Procedure AbreTabelas;
  end;

var
  Dm: TDm;
  LocalBanco, ArqIni, Servidor, Path, PathB, User,
  Senha, Banco, str1 : String;
  Reg : TRegistry;
  Ini: TIniFile;

implementation

uses UnAbertura, UnBD, unPrincipal;

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

procedure TDm.AbreTabelas;
begin
IBDS_USUARIOS.Open;
IBDS_EMPRESA.Open;
IBDS_ALUNOS.Open;
IBDS_INATIVOS.Open;
IBDS_CEPS.Open;
IBDS_MATERIAS.Open;
IBDS_MATRICULAS.Open;
IBDS_BOLETIM.Open;
IBDS_NOTAS.Open;
IBDS_CARNE.Open;
//IBDS_DiscAta.Open;
IBDS_NotAta.Open;
IBDS_MatAta.Open;
//IBDS_CURSOS.Open;
end;

procedure TDm.DataModuleCreate(Sender: TObject);
begin
Reg:=TRegistry.Create;
Reg.OpenKey('GEES\Bd', True);
ArqIni:= Reg.ReadString('Arquivo');
Banco:= Reg.ReadString('Banco');
Reg.CloseKey;

  Ini := TIniFile.create(ArqIni);
  with Ini do
  try
    Servidor:= StDecrypt(ReadString(Banco, stEncrypt('SERVER'), ''));
    User:= StDecrypt(ReadString(Banco, stEncrypt('USER'), ''));
    Path:= StDecrypt(ReadString(Banco, stEncrypt('PATH'), ''));
    PathB:= StDecrypt(ReadString(Banco, stEncrypt('PATH'), ''));
    Senha:= StDecrypt(ReadString(Banco, stEncrypt('PASSWORD'), ''));
  finally
    Ini.free;
  end;
  str1:= StringReplace(PathB,':','', [rfReplaceAll]);
  str1:= StringReplace(str1,':','\', [rfReplaceAll]);
with IBDatabase do
  begin
    if Servidor <> '' then
      DatabaseName:= Servidor + ':' + Path
    else
      DatabaseName:= Path;

    params.Clear;
    params.Add('user_name='+User);
    params.Add('password='+Senha);
    try
      Connected := True;
      Connected := False;
      //ShowMessage('Conexão OK!');

if Servidor <> '' then
    PathBackup:='\\'+Servidor+'\'+str1
else
    PathBackup:= Path;

    if Servidor <> '' then
      IBConfigService.DatabaseName:= Servidor + ':' + Path
    else
      IBConfigService.DatabaseName:= Path;

IBConfigService.Params.Clear;
IBConfigService.Params.Add('user_name='+User);
IBConfigService.Params.Add('password='+Senha);
Try
   begin
      //ATIVADA OPERAÇÃO EM MODO SINCRONO - "Forced Write - Gravação Forçada"
     {with IBConfigService do
      begin
      SetAsyncMode(True);
      end;}
     if IBConfigService.Active then
        begin
          IBConfigService.SetAsyncMode(True);
        while IBConfigService.IsServiceRunning do Sleep(30);
     end;
   end;
 except
    Begin
     ShowMessage('Não foi possível ativar modo de operação síncrono.');
    end;
 end;
    except
      on e: exception do
      ShowMessage('Falha na conexão! Erro: ' + e.message+ ' ou banco de dados ausente.');
    end;

if Trim(ArqIni) = '' then
begin
try
 FrmBD:=TFrmBD.Create(nil);
 FrmBD.ShowModal;
finally
FrmBD.Release;
 if IBConfigService.Active then IBConfigService.Active := False;
end;
ShowMessage('O sistema será fechado agora.');
Application.Terminate;
end else

end;

AbreTabelas;
end;

procedure TDm.DataModuleDestroy(Sender: TObject);
begin
FechaTabelas;
end;

procedure TDm.FechaTabelas;
begin
IBDS_USUARIOS.Close;
IBDS_EMPRESA.Close;
IBDS_ALUNOS.Close;
IBDS_INATIVOS.Close;
IBDS_CEPS.Close;
IBDS_MATRICULAS.Close;
IBDS_BOLETIM.Close;
IBDS_NOTAS.Close;
IBDS_CARNE.Close;
IBDS_DiscAta.Close;
IBDS_NotAta.Close;
IBDS_MatAta.Close;
//IBDS_CURSOS.Close;
end;

procedure TDm.IBDS_ALUNOSAfterInsert(DataSet: TDataSet);
var
nNum: Integer;
begin
// Gera a consulta para o COD
with IBQ_GeraCOD do
begin
Close;
UnPrepare;
SQL.Clear;
SQL.Add('select max (COD_ALUN) from ALUNOS ');
SQL.Add('order by COD_ALUN');
Prepare;
Open;
end;

 IBQ_GeraCOD.First;
IBQuery_DmINATIVOS.Open;
 IBQuery_DmINATIVOS.Last;
if IBQuery_DmINATIVOS.Fields[0].AsString = '' then
begin
IBQuery_DmINATIVOS.Close;
// normal
If IBQ_GeraCOD.EOF Then
nNum := 0
Else
nNum := IBQ_GeraCOD.Fields[0].AsInteger;
IBQ_GeraCOD.Close;
Inc( nNum );
IBDS_ALUNOSCOD_ALUN.AsInteger:= nNum;
Exit;
end else
// verificação
   IBQuery_DmINATIVOS.Open;
   IBQuery_DmINATIVOS.Last;
     IBQuery_DmALUNOS.Open;
     IBQuery_DmALUNOS.First;
if IBQ_GeraCOD.EOF then
begin
nNum:= IBQ_GeraCOD.Fields[0].AsInteger;
end else
nNum:= IBQuery_DmINATIVOS.Fields[0].AsInteger;
  IBQ_GeraCOD.Close;
  IBQuery_DmINATIVOS.Close;
    Inc(nNum);
if IBQuery_DmALUNOS.Locate('COD_ALUN', nNum, []) and (nNum = IBQuery_DmALUNOSCOD_ALUN.AsInteger) then
begin
IBQuery_DmALUNOS.Last;
 nNum:=IBQuery_DmALUNOSCOD_ALUN.AsInteger;
 IBQuery_DmALUNOS.Close;
  Inc(nNum);
    IBDS_ALUNOSCOD_ALUN.AsInteger:= nNum;
    Exit;
end else
IBDS_ALUNOSCOD_ALUN.AsInteger:= nNum;
end;

procedure TDm.IBDS_MATERIASAfterInsert(DataSet: TDataSet);
Var
  nNum: Integer;
begin
// Gera a consulta para o COD
with IBQ_GeraCOD do
begin
Close;
UnPrepare;
SQL.Clear;
SQL.Add('select max (COD_MATE) from MATERIAS ');
SQL.Add('order by COD_MATE');
Prepare;
Open;
end;

  IBQ_GeraCOD.First;
  If IBQ_GeraCOD.EOF Then
    nNum := 0
  Else
    nNum := IBQ_GeraCOD.Fields[0].AsInteger;
  IBQ_GeraCOD.Close;
  Inc( nNum );
  IBDS_MATERIASCOD_MATE.AsInteger := nNum;
end;

procedure TDm.IBDS_CARNEAfterInsert(DataSet: TDataSet);
var
  nNum: Integer;
begin
// Gera a consulta para o COD
with IBQ_GeraCOD do
begin
Close;
UnPrepare;
SQL.Clear;
SQL.Add('select max (COD_CARN) from CARNE ');
SQL.Add('order by COD_CARN');
Prepare;
Open;
end;
  IBQ_GeraCOD.Open;
  IBQ_GeraCOD.First;
  If IBQ_GeraCOD.EOF Then
    nNum := 0
  Else
    nNum := IBQ_GeraCOD.Fields[0].AsInteger;
  IBQ_GeraCOD.Close;
  Inc( nNum );
  IBDS_CARNECOD_CARN.AsInteger := nNum;
end;

procedure TDm.IBDS_CURSOSAfterInsert(DataSet: TDataSet);
Var
  nNum: Integer;
begin
// Gera a consulta para o COD
with IBQ_GeraCOD do
begin
Close;
UnPrepare;
SQL.Clear;
SQL.Add('select max (COD_CURS) from CURSOS ');
SQL.Add('order by COD_CURS');
Prepare;
Open;
end;

  IBQ_GeraCOD.First;
  If IBQ_GeraCOD.EOF Then
    nNum := 0
  Else
    nNum := IBQ_GeraCOD.Fields[0].AsInteger;
  IBQ_GeraCOD.Close;
  Inc( nNum );
  IBDS_CURSOSCOD_CURS.AsInteger := nNum;
end;

procedure TDm.IBDS_MATRICULASAfterInsert(DataSet: TDataSet);
Var
  nNum: Integer;
begin
with IBQ_GeraCOD do
begin
Close;
UnPrepare;
SQL.Clear;
SQL.Add('select max (COD_MATI) from MATRICUL ');
SQL.Add('order by COD_MATI');
Prepare;
Open;
end;

  IBQ_GeraCOD.First;
  If IBQ_GeraCOD.EOF Then
    nNum := 0
  Else
    nNum := IBQ_GeraCOD.Fields[0].AsInteger;
  IBQ_GeraCOD.Close;
  Inc( nNum );
  IBDS_MATRICULASCOD_MATI.AsInteger := nNum;
end;

procedure TDm.IBDS_NOTASAfterInsert(DataSet: TDataSet);
Var
  nNum: Integer;
begin
// Gera a consulta para o COD
with IBQ_GeraCOD do
begin
Close;
UnPrepare;
SQL.Clear;
SQL.Add('select max (COD_NOTA) from NOTAS ');
SQL.Add('order by COD_NOTA');
Prepare;
Open;
end;

  IBQ_GeraCOD.First;
  If IBQ_GeraCOD.EOF Then
    nNum := 0
  Else
    nNum := IBQ_GeraCOD.Fields[0].AsInteger;
  IBQ_GeraCOD.Close;
  Inc( nNum );
  IBDS_NOTASCOD_NOTA.AsInteger := nNum;
end;

procedure TDm.IBDS_BOLETIMAfterInsert(DataSet: TDataSet);
var
  nNum: Integer;
begin
// Gera a consulta para o COD
with IBQ_GeraCOD do
begin
Close;
UnPrepare;
SQL.Clear;
SQL.Add('select max (COD_BOLE) from BOLETIM ');
SQL.Add('order by COD_BOLE');
Prepare;
Open;
end;

  IBQ_GeraCOD.First;
  If IBQ_GeraCOD.EOF Then
    nNum := 0
  Else
    nNum := IBQ_GeraCOD.Fields[0].AsInteger;
  IBQ_GeraCOD.Close;
  Inc( nNum );
  IBDS_BOLETIMCOD_BOLE.AsInteger := nNum;
end;

end.
