object Dm: TDm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 527
  Width = 770
  object IBDatabase: TIBDatabase
    DatabaseName = 
      'localhost:E:\Google Drive\PROJETOS\versionados\Gees\dados\GEES.F' +
      'DB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction
    AllowStreamedConnected = False
    Left = 40
    Top = 8
  end
  object IBTransaction: TIBTransaction
    DefaultDatabase = IBDatabase
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read'
      'write'
      'read_committed'
      'rec_version'
      'nowait')
    Left = 120
    Top = 8
  end
  object Ds_ALUNOS: TDataSource
    DataSet = IBDS_ALUNOS
    Left = 216
    Top = 136
  end
  object Ds_USUARIOS: TDataSource
    DataSet = IBDS_USUARIOS
    Left = 32
    Top = 136
  end
  object IBDS_USUARIOS: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from USUARIOS'
      'where'
      '  NOME_USUARIO = :OLD_NOME_USUARIO')
    InsertSQL.Strings = (
      'insert into USUARIOS'
      '  (NOME_USUARIO, SENHA, ANTERIOR)'
      'values'
      '  (:NOME_USUARIO, :SENHA, :ANTERIOR)')
    RefreshSQL.Strings = (
      'Select '
      '  NOME_USUARIO,'
      '  SENHA,'
      '  ANTERIOR'
      'from USUARIOS '
      'where'
      '  NOME_USUARIO = :NOME_USUARIO')
    SelectSQL.Strings = (
      'select * from USUARIOS'
      'order by NOME_USUARIO')
    ModifySQL.Strings = (
      'update USUARIOS'
      'set'
      '  NOME_USUARIO = :NOME_USUARIO,'
      '  SENHA = :SENHA,'
      '  ANTERIOR = :ANTERIOR'
      'where'
      '  NOME_USUARIO = :OLD_NOME_USUARIO')
    GeneratorField.ApplyEvent = gamOnPost
    Left = 32
    Top = 80
    object IBDS_USUARIOSNOME_USUARIO: TIBStringField
      FieldName = 'NOME_USUARIO'
      Origin = '"USUARIOS"."NOME_USUARIO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object IBDS_USUARIOSSENHA: TIBStringField
      FieldName = 'SENHA'
      Origin = '"USUARIOS"."SENHA"'
    end
    object IBDS_USUARIOSANTERIOR: TIBStringField
      FieldName = 'ANTERIOR'
      Origin = '"USUARIOS"."ANTERIOR"'
    end
  end
  object IBDS_EMPRESA: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from EMPRESA'
      'where'
      '  CNPJ = :OLD_CNPJ')
    InsertSQL.Strings = (
      'insert into EMPRESA'
      
        '  (BAIRRO, CEP, CIDADE, CNPJ, CREDENC_PARECER, CREDENC_PARECER_V' +
        'AL, DEPENDENCIA_ADMIN, '
      
        '   DIARIO_OFICIAL, DIRETOR, DIRETOR_REG, EMAIL, ENDERECO, ENTID_' +
        'MANTENEDORA, '
      
        '   ESTADO, FAX, FOLHA_NUMERO, IE, INSTRUCAO_BOLETIM_APRO, INSTRU' +
        'CAO_BOLETIM_REPRO, '
      
        '   INSTRUCAO_CARNE_ALUN1, INSTRUCAO_CARNE_ALUN2, INSTRUCAO_CARNE' +
        '_COM1, '
      
        '   INSTRUCAO_CARNE_COM2, JUROS, LIVRO_NUMERO, LOGO_EMPRESA, MENS' +
        'ALIDADE_EFI, '
      
        '   MENSALIDADE_EFII, MENSALIDADE_EI, MENSALIDADE_EM, MULTA, NOME' +
        '_EMPRESARIAL, '
      
        '   NOME_FANTASIA, ORGAO_EXPEDIDOR, ORGAO_EXPEDIDOR_VAL, RECREDEN' +
        'C_PARECER, '
      
        '   RECREDENC_PARECER_VAL, REGISTRO_NUMERO, SECRETARIO, SECRETARI' +
        'O_REG, '
      
        '   SLOGAN, SOCIO_1, SOCIO_2, TELEFONE, TOTAL_FOLHAS_LIVRO, TOTAL' +
        '_REG_FOLHA, '
      '   UF, VENCIMENTO_DIA, WEBSITE)'
      'values'
      
        '  (:BAIRRO, :CEP, :CIDADE, :CNPJ, :CREDENC_PARECER, :CREDENC_PAR' +
        'ECER_VAL, '
      
        '   :DEPENDENCIA_ADMIN, :DIARIO_OFICIAL, :DIRETOR, :DIRETOR_REG, ' +
        ':EMAIL, '
      
        '   :ENDERECO, :ENTID_MANTENEDORA, :ESTADO, :FAX, :FOLHA_NUMERO, ' +
        ':IE, :INSTRUCAO_BOLETIM_APRO, '
      
        '   :INSTRUCAO_BOLETIM_REPRO, :INSTRUCAO_CARNE_ALUN1, :INSTRUCAO_' +
        'CARNE_ALUN2, '
      
        '   :INSTRUCAO_CARNE_COM1, :INSTRUCAO_CARNE_COM2, :JUROS, :LIVRO_' +
        'NUMERO, '
      
        '   :LOGO_EMPRESA, :MENSALIDADE_EFI, :MENSALIDADE_EFII, :MENSALID' +
        'ADE_EI, '
      
        '   :MENSALIDADE_EM, :MULTA, :NOME_EMPRESARIAL, :NOME_FANTASIA, :' +
        'ORGAO_EXPEDIDOR, '
      
        '   :ORGAO_EXPEDIDOR_VAL, :RECREDENC_PARECER, :RECREDENC_PARECER_' +
        'VAL, :REGISTRO_NUMERO, '
      
        '   :SECRETARIO, :SECRETARIO_REG, :SLOGAN, :SOCIO_1, :SOCIO_2, :T' +
        'ELEFONE, '
      
        '   :TOTAL_FOLHAS_LIVRO, :TOTAL_REG_FOLHA, :UF, :VENCIMENTO_DIA, ' +
        ':WEBSITE)')
    RefreshSQL.Strings = (
      'Select '
      '  NOME_EMPRESARIAL,'
      '  NOME_FANTASIA,'
      '  CNPJ,'
      '  IE,'
      '  SLOGAN,'
      '  ENDERECO,'
      '  BAIRRO,'
      '  CEP,'
      '  CIDADE,'
      '  ESTADO,'
      '  UF,'
      '  TELEFONE,'
      '  FAX,'
      '  EMAIL,'
      '  WEBSITE,'
      '  SOCIO_1,'
      '  SOCIO_2,'
      '  LOGO_EMPRESA,'
      '  JUROS,'
      '  MULTA,'
      '  MENSALIDADE_EI,'
      '  MENSALIDADE_EFI,'
      '  MENSALIDADE_EFII,'
      '  MENSALIDADE_EM,'
      '  VENCIMENTO_DIA,'
      '  DIRETOR,'
      '  DIRETOR_REG,'
      '  SECRETARIO,'
      '  SECRETARIO_REG,'
      '  ENTID_MANTENEDORA,'
      '  DEPENDENCIA_ADMIN,'
      '  CREDENC_PARECER,'
      '  CREDENC_PARECER_VAL,'
      '  RECREDENC_PARECER,'
      '  RECREDENC_PARECER_VAL,'
      '  INSTRUCAO_CARNE_ALUN1,'
      '  INSTRUCAO_CARNE_ALUN2,'
      '  INSTRUCAO_CARNE_COM1,'
      '  INSTRUCAO_CARNE_COM2,'
      '  INSTRUCAO_BOLETIM_APRO,'
      '  INSTRUCAO_BOLETIM_REPRO,'
      '  ORGAO_EXPEDIDOR,'
      '  ORGAO_EXPEDIDOR_VAL,'
      '  DIARIO_OFICIAL,'
      '  LIVRO_NUMERO,'
      '  FOLHA_NUMERO,'
      '  REGISTRO_NUMERO,'
      '  TOTAL_FOLHAS_LIVRO,'
      '  TOTAL_REG_FOLHA'
      'from EMPRESA '
      'where'
      '  CNPJ = :CNPJ')
    SelectSQL.Strings = (
      'select * from EMPRESA')
    ModifySQL.Strings = (
      'update EMPRESA'
      'set'
      '  BAIRRO = :BAIRRO,'
      '  CEP = :CEP,'
      '  CIDADE = :CIDADE,'
      '  CNPJ = :CNPJ,'
      '  CREDENC_PARECER = :CREDENC_PARECER,'
      '  CREDENC_PARECER_VAL = :CREDENC_PARECER_VAL,'
      '  DEPENDENCIA_ADMIN = :DEPENDENCIA_ADMIN,'
      '  DIARIO_OFICIAL = :DIARIO_OFICIAL,'
      '  DIRETOR = :DIRETOR,'
      '  DIRETOR_REG = :DIRETOR_REG,'
      '  EMAIL = :EMAIL,'
      '  ENDERECO = :ENDERECO,'
      '  ENTID_MANTENEDORA = :ENTID_MANTENEDORA,'
      '  ESTADO = :ESTADO,'
      '  FAX = :FAX,'
      '  FOLHA_NUMERO = :FOLHA_NUMERO,'
      '  IE = :IE,'
      '  INSTRUCAO_BOLETIM_APRO = :INSTRUCAO_BOLETIM_APRO,'
      '  INSTRUCAO_BOLETIM_REPRO = :INSTRUCAO_BOLETIM_REPRO,'
      '  INSTRUCAO_CARNE_ALUN1 = :INSTRUCAO_CARNE_ALUN1,'
      '  INSTRUCAO_CARNE_ALUN2 = :INSTRUCAO_CARNE_ALUN2,'
      '  INSTRUCAO_CARNE_COM1 = :INSTRUCAO_CARNE_COM1,'
      '  INSTRUCAO_CARNE_COM2 = :INSTRUCAO_CARNE_COM2,'
      '  JUROS = :JUROS,'
      '  LIVRO_NUMERO = :LIVRO_NUMERO,'
      '  LOGO_EMPRESA = :LOGO_EMPRESA,'
      '  MENSALIDADE_EFI = :MENSALIDADE_EFI,'
      '  MENSALIDADE_EFII = :MENSALIDADE_EFII,'
      '  MENSALIDADE_EI = :MENSALIDADE_EI,'
      '  MENSALIDADE_EM = :MENSALIDADE_EM,'
      '  MULTA = :MULTA,'
      '  NOME_EMPRESARIAL = :NOME_EMPRESARIAL,'
      '  NOME_FANTASIA = :NOME_FANTASIA,'
      '  ORGAO_EXPEDIDOR = :ORGAO_EXPEDIDOR,'
      '  ORGAO_EXPEDIDOR_VAL = :ORGAO_EXPEDIDOR_VAL,'
      '  RECREDENC_PARECER = :RECREDENC_PARECER,'
      '  RECREDENC_PARECER_VAL = :RECREDENC_PARECER_VAL,'
      '  REGISTRO_NUMERO = :REGISTRO_NUMERO,'
      '  SECRETARIO = :SECRETARIO,'
      '  SECRETARIO_REG = :SECRETARIO_REG,'
      '  SLOGAN = :SLOGAN,'
      '  SOCIO_1 = :SOCIO_1,'
      '  SOCIO_2 = :SOCIO_2,'
      '  TELEFONE = :TELEFONE,'
      '  TOTAL_FOLHAS_LIVRO = :TOTAL_FOLHAS_LIVRO,'
      '  TOTAL_REG_FOLHA = :TOTAL_REG_FOLHA,'
      '  UF = :UF,'
      '  VENCIMENTO_DIA = :VENCIMENTO_DIA,'
      '  WEBSITE = :WEBSITE'
      'where'
      '  CNPJ = :OLD_CNPJ')
    GeneratorField.ApplyEvent = gamOnPost
    Left = 124
    Top = 84
    object IBDS_EMPRESANOME_EMPRESARIAL: TIBStringField
      FieldName = 'NOME_EMPRESARIAL'
      Origin = '"EMPRESA"."NOME_EMPRESARIAL"'
      Size = 116
    end
    object IBDS_EMPRESANOME_FANTASIA: TIBStringField
      FieldName = 'NOME_FANTASIA'
      Origin = '"EMPRESA"."NOME_FANTASIA"'
      Size = 56
    end
    object IBDS_EMPRESACNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EMPRESA"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      EditMask = '99.999.999/9999-00;1;_'
      Size = 18
    end
    object IBDS_EMPRESAIE: TIBStringField
      FieldName = 'IE'
      Origin = '"EMPRESA"."IE"'
      Size = 11
    end
    object IBDS_EMPRESASLOGAN: TIBStringField
      FieldName = 'SLOGAN'
      Origin = '"EMPRESA"."SLOGAN"'
      Size = 50
    end
    object IBDS_EMPRESAENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"EMPRESA"."ENDERECO"'
      Size = 50
    end
    object IBDS_EMPRESABAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"EMPRESA"."BAIRRO"'
      Size = 30
    end
    object IBDS_EMPRESACEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"EMPRESA"."CEP"'
      EditMask = '99.999-999;1;_'
      Size = 10
    end
    object IBDS_EMPRESACIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"EMPRESA"."CIDADE"'
      Size = 25
    end
    object IBDS_EMPRESAESTADO: TIBStringField
      FieldName = 'ESTADO'
      Origin = '"EMPRESA"."ESTADO"'
      Size = 25
    end
    object IBDS_EMPRESAUF: TIBStringField
      FieldName = 'UF'
      Origin = '"EMPRESA"."UF"'
      Size = 2
    end
    object IBDS_EMPRESATELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Origin = '"EMPRESA"."TELEFONE"'
      EditMask = '(99)999-9999;1;_'
    end
    object IBDS_EMPRESAFAX: TIBStringField
      FieldName = 'FAX'
      Origin = '"EMPRESA"."FAX"'
      EditMask = '(99)999-9999;1;_'
    end
    object IBDS_EMPRESAEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"EMPRESA"."EMAIL"'
      Size = 50
    end
    object IBDS_EMPRESAWEBSITE: TIBStringField
      FieldName = 'WEBSITE'
      Origin = '"EMPRESA"."WEBSITE"'
      Size = 25
    end
    object IBDS_EMPRESASOCIO_1: TIBStringField
      FieldName = 'SOCIO_1'
      Origin = '"EMPRESA"."SOCIO_1"'
      Size = 51
    end
    object IBDS_EMPRESASOCIO_2: TIBStringField
      FieldName = 'SOCIO_2'
      Origin = '"EMPRESA"."SOCIO_2"'
      Size = 51
    end
    object IBDS_EMPRESALOGO_EMPRESA: TBlobField
      FieldName = 'LOGO_EMPRESA'
      Origin = '"EMPRESA"."LOGO_EMPRESA"'
      Size = 8
    end
    object IBDS_EMPRESAMULTA: TFloatField
      FieldName = 'MULTA'
      Origin = '"EMPRESA"."MULTA"'
    end
    object IBDS_EMPRESAJUROS: TFloatField
      FieldName = 'JUROS'
      Origin = '"EMPRESA"."JUROS"'
    end
    object IBDS_EMPRESAENTID_MANTENEDORA: TIBStringField
      FieldName = 'ENTID_MANTENEDORA'
      Origin = '"EMPRESA"."ENTID_MANTENEDORA"'
      Size = 56
    end
    object IBDS_EMPRESADIRETOR: TIBStringField
      FieldName = 'DIRETOR'
      Origin = '"EMPRESA"."DIRETOR"'
      Size = 50
    end
    object IBDS_EMPRESADIRETOR_REG: TIBStringField
      FieldName = 'DIRETOR_REG'
      Origin = '"EMPRESA"."DIRETOR_REG"'
      Size = 15
    end
    object IBDS_EMPRESASECRETARIO: TIBStringField
      FieldName = 'SECRETARIO'
      Origin = '"EMPRESA"."SECRETARIO"'
      Size = 50
    end
    object IBDS_EMPRESASECRETARIO_REG: TIBStringField
      FieldName = 'SECRETARIO_REG'
      Origin = '"EMPRESA"."SECRETARIO_REG"'
      Size = 15
    end
    object IBDS_EMPRESADEPENDENCIA_ADMIN: TIBStringField
      FieldName = 'DEPENDENCIA_ADMIN'
      Origin = '"EMPRESA"."DEPENDENCIA_ADMIN"'
      Size = 10
    end
    object IBDS_EMPRESACREDENC_PARECER_VAL: TIBStringField
      FieldName = 'CREDENC_PARECER_VAL'
      Origin = '"EMPRESA"."CREDENC_PARECER_VAL"'
      Size = 10
    end
    object IBDS_EMPRESARECREDENC_PARECER_VAL: TIBStringField
      FieldName = 'RECREDENC_PARECER_VAL'
      Origin = '"EMPRESA"."RECREDENC_PARECER_VAL"'
      Size = 10
    end
    object IBDS_EMPRESAMENSALIDADE_EI: TIBBCDField
      FieldName = 'MENSALIDADE_EI'
      Origin = '"EMPRESA"."MENSALIDADE_EI"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_EMPRESAMENSALIDADE_EFI: TIBBCDField
      FieldName = 'MENSALIDADE_EFI'
      Origin = '"EMPRESA"."MENSALIDADE_EFI"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_EMPRESAMENSALIDADE_EFII: TIBBCDField
      FieldName = 'MENSALIDADE_EFII'
      Origin = '"EMPRESA"."MENSALIDADE_EFII"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_EMPRESAMENSALIDADE_EM: TIBBCDField
      FieldName = 'MENSALIDADE_EM'
      Origin = '"EMPRESA"."MENSALIDADE_EM"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_EMPRESAVENCIMENTO_DIA: TIBStringField
      FieldName = 'VENCIMENTO_DIA'
      Origin = '"EMPRESA"."VENCIMENTO_DIA"'
      EditMask = '99;1;_'
      Size = 10
    end
    object IBDS_EMPRESAINSTRUCAO_CARNE_ALUN1: TIBStringField
      FieldName = 'INSTRUCAO_CARNE_ALUN1'
      Origin = '"EMPRESA"."INSTRUCAO_CARNE_ALUN1"'
      Size = 50
    end
    object IBDS_EMPRESAINSTRUCAO_CARNE_ALUN2: TIBStringField
      FieldName = 'INSTRUCAO_CARNE_ALUN2'
      Origin = '"EMPRESA"."INSTRUCAO_CARNE_ALUN2"'
      Size = 50
    end
    object IBDS_EMPRESAINSTRUCAO_CARNE_COM1: TIBStringField
      FieldName = 'INSTRUCAO_CARNE_COM1'
      Origin = '"EMPRESA"."INSTRUCAO_CARNE_COM1"'
      Size = 50
    end
    object IBDS_EMPRESAINSTRUCAO_CARNE_COM2: TIBStringField
      FieldName = 'INSTRUCAO_CARNE_COM2'
      Origin = '"EMPRESA"."INSTRUCAO_CARNE_COM2"'
      Size = 50
    end
    object IBDS_EMPRESAINSTRUCAO_BOLETIM_APRO: TMemoField
      FieldName = 'INSTRUCAO_BOLETIM_APRO'
      Origin = '"EMPRESA"."INSTRUCAO_BOLETIM_APRO"'
      BlobType = ftMemo
      Size = 8
    end
    object IBDS_EMPRESAINSTRUCAO_BOLETIM_REPRO: TMemoField
      FieldName = 'INSTRUCAO_BOLETIM_REPRO'
      Origin = '"EMPRESA"."INSTRUCAO_BOLETIM_REPRO"'
      BlobType = ftMemo
      Size = 8
    end
    object IBDS_EMPRESAORGAO_EXPEDIDOR: TIBStringField
      FieldName = 'ORGAO_EXPEDIDOR'
      Origin = '"EMPRESA"."ORGAO_EXPEDIDOR"'
      Size = 15
    end
    object IBDS_EMPRESALIVRO_NUMERO: TIntegerField
      Alignment = taCenter
      DefaultExpression = '##'
      FieldName = 'LIVRO_NUMERO'
      Origin = '"EMPRESA"."LIVRO_NUMERO"'
      DisplayFormat = '##'
    end
    object IBDS_EMPRESAFOLHA_NUMERO: TIntegerField
      Alignment = taCenter
      DefaultExpression = '##'
      FieldName = 'FOLHA_NUMERO'
      Origin = '"EMPRESA"."FOLHA_NUMERO"'
      DisplayFormat = '##'
    end
    object IBDS_EMPRESAREGISTRO_NUMERO: TIntegerField
      Alignment = taCenter
      DefaultExpression = '##'
      FieldName = 'REGISTRO_NUMERO'
      Origin = '"EMPRESA"."REGISTRO_NUMERO"'
      DisplayFormat = '##'
    end
    object IBDS_EMPRESATOTAL_FOLHAS_LIVRO: TIntegerField
      Alignment = taCenter
      DefaultExpression = '##'
      FieldName = 'TOTAL_FOLHAS_LIVRO'
      Origin = '"EMPRESA"."TOTAL_FOLHAS_LIVRO"'
      DisplayFormat = '##'
    end
    object IBDS_EMPRESATOTAL_REG_FOLHA: TIntegerField
      Alignment = taCenter
      DefaultExpression = '##'
      FieldName = 'TOTAL_REG_FOLHA'
      Origin = '"EMPRESA"."TOTAL_REG_FOLHA"'
      DisplayFormat = '##'
    end
    object IBDS_EMPRESACREDENC_PARECER: TIBStringField
      FieldName = 'CREDENC_PARECER'
      Origin = '"EMPRESA"."CREDENC_PARECER"'
      Size = 25
    end
    object IBDS_EMPRESARECREDENC_PARECER: TIBStringField
      FieldName = 'RECREDENC_PARECER'
      Origin = '"EMPRESA"."RECREDENC_PARECER"'
      Size = 25
    end
    object IBDS_EMPRESAORGAO_EXPEDIDOR_VAL: TIBStringField
      FieldName = 'ORGAO_EXPEDIDOR_VAL'
      Origin = '"EMPRESA"."ORGAO_EXPEDIDOR_VAL"'
    end
    object IBDS_EMPRESADIARIO_OFICIAL: TIBStringField
      FieldName = 'DIARIO_OFICIAL'
      Origin = '"EMPRESA"."DIARIO_OFICIAL"'
    end
  end
  object Ds_EMPRESA: TDataSource
    DataSet = IBDS_EMPRESA
    Left = 120
    Top = 136
  end
  object IBDS_ALUNOS: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    AfterInsert = IBDS_ALUNOSAfterInsert
    BufferChunks = 10
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from ALUNOS'
      'where'
      '  COD_ALUN = :OLD_COD_ALUN')
    InsertSQL.Strings = (
      'insert into ALUNOS'
      
        '  (ANO_LETIVO, BAIRRO, BAIRRO_MAE, BAIRRO_PAI, BAIRRO_RESP, CEP,' +
        ' CEP_MAE, '
      
        '   CEP_PAI, CEP_RESP, CIDADE, CIDADE_ESCO_ANT, CIDADE_MAE, CIDAD' +
        'E_PAI, '
      
        '   CIDADE_RESP, COD_ALUN, CPF_MAE, CPF_PAI, CPF_RESP, CURSO, DAT' +
        'A_MATRICULA, '
      
        '   DATA_NASC_MAE, DATA_NASC_PAI, DATA_NASC_RESP, DATA_NASCIMENTO' +
        ', ENDERECO, '
      
        '   ENDERECO_MAE, ENDERECO_PAI, ENDERECO_RESP, ESCOLA_ANTERIOR, E' +
        'STADO, '
      
        '   ESTADO_ESCO_ANT, ESTADO_MAE, ESTADO_NATURALIDADE, ESTADO_PAI,' +
        ' ESTADO_RESP, '
      
        '   FOTO, LOCAL_TRAB_MAE, LOCAL_TRAB_PAI, LOCAL_TRAB_RESP, MATRIC' +
        'ULA, NACIONALIDADE, '
      
        '   NACIONALIDADE_MAE, NACIONALIDADE_PAI, NACIONALIDADE_RESP, NAT' +
        'URALIDADE, '
      
        '   NATURALIDADE_MAE, NATURALIDADE_PAI, NATURALIDADE_RESP, NOME_A' +
        'LUNO, NOME_MAE, '
      
        '   NOME_PAI, NOME_RESP, PROBLEMAS_SAUDE, PROFISSAO_MAE, PROFISSA' +
        'O_PAI, '
      
        '   PROFISSAO_RESP, RELIGIAO, REMEDIOS_PROIBIDOS, REMEDIOS_UTILIZ' +
        'ADOS, RENDA_MAE, '
      
        '   RENDA_PAI, RENDA_RESP, RG, RG_MAE, RG_PAI, RG_RESP, SERIE, SE' +
        'XO, SITUACAO_ALUNO, '
      
        '   TEL_ALUNO, TEL_CEL_ALUNO, TEL_CEL_MAE, TEL_CEL_PAI, TEL_CEL_R' +
        'ESP, TEL_ESCO_ANT, '
      
        '   TEL_MAE, TEL_PAI, TEL_RESP, TEL_TRAB_MAE, TEL_TRAB_PAI, TEL_T' +
        'RAB_RESP, '
      '   TURMA, TURNO, UF, UF_ESCO_ANT, UF_MAE, UF_PAI, UF_RESP)'
      'values'
      
        '  (:ANO_LETIVO, :BAIRRO, :BAIRRO_MAE, :BAIRRO_PAI, :BAIRRO_RESP,' +
        ' :CEP, '
      
        '   :CEP_MAE, :CEP_PAI, :CEP_RESP, :CIDADE, :CIDADE_ESCO_ANT, :CI' +
        'DADE_MAE, '
      
        '   :CIDADE_PAI, :CIDADE_RESP, :COD_ALUN, :CPF_MAE, :CPF_PAI, :CP' +
        'F_RESP, '
      
        '   :CURSO, :DATA_MATRICULA, :DATA_NASC_MAE, :DATA_NASC_PAI, :DAT' +
        'A_NASC_RESP, '
      
        '   :DATA_NASCIMENTO, :ENDERECO, :ENDERECO_MAE, :ENDERECO_PAI, :E' +
        'NDERECO_RESP, '
      
        '   :ESCOLA_ANTERIOR, :ESTADO, :ESTADO_ESCO_ANT, :ESTADO_MAE, :ES' +
        'TADO_NATURALIDADE, '
      
        '   :ESTADO_PAI, :ESTADO_RESP, :FOTO, :LOCAL_TRAB_MAE, :LOCAL_TRA' +
        'B_PAI, '
      
        '   :LOCAL_TRAB_RESP, :MATRICULA, :NACIONALIDADE, :NACIONALIDADE_' +
        'MAE, :NACIONALIDADE_PAI, '
      
        '   :NACIONALIDADE_RESP, :NATURALIDADE, :NATURALIDADE_MAE, :NATUR' +
        'ALIDADE_PAI, '
      
        '   :NATURALIDADE_RESP, :NOME_ALUNO, :NOME_MAE, :NOME_PAI, :NOME_' +
        'RESP, :PROBLEMAS_SAUDE, '
      
        '   :PROFISSAO_MAE, :PROFISSAO_PAI, :PROFISSAO_RESP, :RELIGIAO, :' +
        'REMEDIOS_PROIBIDOS, '
      
        '   :REMEDIOS_UTILIZADOS, :RENDA_MAE, :RENDA_PAI, :RENDA_RESP, :R' +
        'G, :RG_MAE, '
      
        '   :RG_PAI, :RG_RESP, :SERIE, :SEXO, :SITUACAO_ALUNO, :TEL_ALUNO' +
        ', :TEL_CEL_ALUNO, '
      
        '   :TEL_CEL_MAE, :TEL_CEL_PAI, :TEL_CEL_RESP, :TEL_ESCO_ANT, :TE' +
        'L_MAE, '
      
        '   :TEL_PAI, :TEL_RESP, :TEL_TRAB_MAE, :TEL_TRAB_PAI, :TEL_TRAB_' +
        'RESP, :TURMA, '
      '   :TURNO, :UF, :UF_ESCO_ANT, :UF_MAE, :UF_PAI, :UF_RESP)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_ALUN,'
      '  MATRICULA,'
      '  DATA_MATRICULA,'
      '  ANO_LETIVO,'
      '  NOME_ALUNO,'
      '  FOTO,'
      '  TURMA,'
      '  TURNO,'
      '  CURSO,'
      '  SERIE,'
      '  SEXO,'
      '  DATA_NASCIMENTO,'
      '  NACIONALIDADE,'
      '  NATURALIDADE,'
      '  RELIGIAO,'
      '  TEL_ALUNO,'
      '  TEL_CEL_ALUNO,'
      '  ENDERECO,'
      '  BAIRRO,'
      '  CIDADE,'
      '  CEP,'
      '  ESTADO,'
      '  UF,'
      '  ESCOLA_ANTERIOR,'
      '  CIDADE_ESCO_ANT,'
      '  TEL_ESCO_ANT,'
      '  ESTADO_ESCO_ANT,'
      '  UF_ESCO_ANT,'
      '  PROBLEMAS_SAUDE,'
      '  REMEDIOS_PROIBIDOS,'
      '  REMEDIOS_UTILIZADOS,'
      '  NOME_PAI,'
      '  DATA_NASC_PAI,'
      '  NACIONALIDADE_PAI,'
      '  NATURALIDADE_PAI,'
      '  RG_PAI,'
      '  CPF_PAI,'
      '  TEL_PAI,'
      '  TEL_TRAB_PAI,'
      '  TEL_CEL_PAI,'
      '  LOCAL_TRAB_PAI,'
      '  PROFISSAO_PAI,'
      '  RENDA_PAI,'
      '  ENDERECO_PAI,'
      '  BAIRRO_PAI,'
      '  CIDADE_PAI,'
      '  CEP_PAI,'
      '  ESTADO_PAI,'
      '  UF_PAI,'
      '  NOME_MAE,'
      '  DATA_NASC_MAE,'
      '  NACIONALIDADE_MAE,'
      '  NATURALIDADE_MAE,'
      '  RG_MAE,'
      '  CPF_MAE,'
      '  TEL_MAE,'
      '  TEL_TRAB_MAE,'
      '  TEL_CEL_MAE,'
      '  LOCAL_TRAB_MAE,'
      '  PROFISSAO_MAE,'
      '  RENDA_MAE,'
      '  ENDERECO_MAE,'
      '  BAIRRO_MAE,'
      '  CIDADE_MAE,'
      '  CEP_MAE,'
      '  ESTADO_MAE,'
      '  UF_MAE,'
      '  NOME_RESP,'
      '  DATA_NASC_RESP,'
      '  NACIONALIDADE_RESP,'
      '  NATURALIDADE_RESP,'
      '  RG_RESP,'
      '  CPF_RESP,'
      '  TEL_RESP,'
      '  TEL_TRAB_RESP,'
      '  TEL_CEL_RESP,'
      '  LOCAL_TRAB_RESP,'
      '  PROFISSAO_RESP,'
      '  RENDA_RESP,'
      '  ENDERECO_RESP,'
      '  BAIRRO_RESP,'
      '  CIDADE_RESP,'
      '  CEP_RESP,'
      '  ESTADO_RESP,'
      '  UF_RESP,'
      '  ESTADO_NATURALIDADE,'
      '  RG,'
      '  SITUACAO_ALUNO'
      'from ALUNOS '
      'where'
      '  COD_ALUN = :COD_ALUN')
    SelectSQL.Strings = (
      
        'select ANO_LETIVO, BAIRRO, BAIRRO_MAE, BAIRRO_PAI, BAIRRO_RESP, ' +
        'CEP, CEP_MAE, CEP_PAI, CEP_RESP, CIDADE, CIDADE_ESCO_ANT, CIDADE' +
        '_MAE, CIDADE_PAI, CIDADE_RESP, COD_ALUN, CPF_MAE, CPF_PAI, CPF_R' +
        'ESP, CURSO, DATA_MATRICULA, DATA_NASC_MAE, DATA_NASC_PAI, DATA_N' +
        'ASC_RESP, DATA_NASCIMENTO, ENDERECO, ENDERECO_MAE, ENDERECO_PAI,' +
        ' ENDERECO_RESP, ESCOLA_ANTERIOR, ESTADO, ESTADO_ESCO_ANT, ESTADO' +
        '_MAE, ESTADO_NATURALIDADE, ESTADO_PAI, ESTADO_RESP, FOTO, LOCAL_' +
        'TRAB_MAE, LOCAL_TRAB_PAI, LOCAL_TRAB_RESP, MATRICULA, NACIONALID' +
        'ADE, NACIONALIDADE_MAE, NACIONALIDADE_PAI, NACIONALIDADE_RESP, N' +
        'ATURALIDADE, NATURALIDADE_MAE, NATURALIDADE_PAI, NATURALIDADE_RE' +
        'SP, NOME_ALUNO, NOME_MAE, NOME_PAI, NOME_RESP, PROBLEMAS_SAUDE, ' +
        'PROFISSAO_MAE, PROFISSAO_PAI, PROFISSAO_RESP, RELIGIAO, REMEDIOS' +
        '_PROIBIDOS, REMEDIOS_UTILIZADOS, RENDA_MAE, RENDA_PAI, RENDA_RES' +
        'P, RG, RG_MAE, RG_PAI, RG_RESP, SERIE, SEXO, SITUACAO_ALUNO, TEL' +
        '_ALUNO, TEL_CEL_ALUNO, TEL_CEL_MAE, TEL_CEL_PAI, TEL_CEL_RESP, T' +
        'EL_ESCO_ANT, TEL_MAE, TEL_PAI, TEL_RESP, TEL_TRAB_MAE, TEL_TRAB_' +
        'PAI, TEL_TRAB_RESP, TURMA, TURNO, UF, UF_ESCO_ANT, UF_MAE, UF_PA' +
        'I, UF_RESP from ALUNOS'
      'order by MATRICULA')
    ModifySQL.Strings = (
      'update ALUNOS'
      'set'
      '  ANO_LETIVO = :ANO_LETIVO,'
      '  BAIRRO = :BAIRRO,'
      '  BAIRRO_MAE = :BAIRRO_MAE,'
      '  BAIRRO_PAI = :BAIRRO_PAI,'
      '  BAIRRO_RESP = :BAIRRO_RESP,'
      '  CEP = :CEP,'
      '  CEP_MAE = :CEP_MAE,'
      '  CEP_PAI = :CEP_PAI,'
      '  CEP_RESP = :CEP_RESP,'
      '  CIDADE = :CIDADE,'
      '  CIDADE_ESCO_ANT = :CIDADE_ESCO_ANT,'
      '  CIDADE_MAE = :CIDADE_MAE,'
      '  CIDADE_PAI = :CIDADE_PAI,'
      '  CIDADE_RESP = :CIDADE_RESP,'
      '  COD_ALUN = :COD_ALUN,'
      '  CPF_MAE = :CPF_MAE,'
      '  CPF_PAI = :CPF_PAI,'
      '  CPF_RESP = :CPF_RESP,'
      '  CURSO = :CURSO,'
      '  DATA_MATRICULA = :DATA_MATRICULA,'
      '  DATA_NASC_MAE = :DATA_NASC_MAE,'
      '  DATA_NASC_PAI = :DATA_NASC_PAI,'
      '  DATA_NASC_RESP = :DATA_NASC_RESP,'
      '  DATA_NASCIMENTO = :DATA_NASCIMENTO,'
      '  ENDERECO = :ENDERECO,'
      '  ENDERECO_MAE = :ENDERECO_MAE,'
      '  ENDERECO_PAI = :ENDERECO_PAI,'
      '  ENDERECO_RESP = :ENDERECO_RESP,'
      '  ESCOLA_ANTERIOR = :ESCOLA_ANTERIOR,'
      '  ESTADO = :ESTADO,'
      '  ESTADO_ESCO_ANT = :ESTADO_ESCO_ANT,'
      '  ESTADO_MAE = :ESTADO_MAE,'
      '  ESTADO_NATURALIDADE = :ESTADO_NATURALIDADE,'
      '  ESTADO_PAI = :ESTADO_PAI,'
      '  ESTADO_RESP = :ESTADO_RESP,'
      '  FOTO = :FOTO,'
      '  LOCAL_TRAB_MAE = :LOCAL_TRAB_MAE,'
      '  LOCAL_TRAB_PAI = :LOCAL_TRAB_PAI,'
      '  LOCAL_TRAB_RESP = :LOCAL_TRAB_RESP,'
      '  MATRICULA = :MATRICULA,'
      '  NACIONALIDADE = :NACIONALIDADE,'
      '  NACIONALIDADE_MAE = :NACIONALIDADE_MAE,'
      '  NACIONALIDADE_PAI = :NACIONALIDADE_PAI,'
      '  NACIONALIDADE_RESP = :NACIONALIDADE_RESP,'
      '  NATURALIDADE = :NATURALIDADE,'
      '  NATURALIDADE_MAE = :NATURALIDADE_MAE,'
      '  NATURALIDADE_PAI = :NATURALIDADE_PAI,'
      '  NATURALIDADE_RESP = :NATURALIDADE_RESP,'
      '  NOME_ALUNO = :NOME_ALUNO,'
      '  NOME_MAE = :NOME_MAE,'
      '  NOME_PAI = :NOME_PAI,'
      '  NOME_RESP = :NOME_RESP,'
      '  PROBLEMAS_SAUDE = :PROBLEMAS_SAUDE,'
      '  PROFISSAO_MAE = :PROFISSAO_MAE,'
      '  PROFISSAO_PAI = :PROFISSAO_PAI,'
      '  PROFISSAO_RESP = :PROFISSAO_RESP,'
      '  RELIGIAO = :RELIGIAO,'
      '  REMEDIOS_PROIBIDOS = :REMEDIOS_PROIBIDOS,'
      '  REMEDIOS_UTILIZADOS = :REMEDIOS_UTILIZADOS,'
      '  RENDA_MAE = :RENDA_MAE,'
      '  RENDA_PAI = :RENDA_PAI,'
      '  RENDA_RESP = :RENDA_RESP,'
      '  RG = :RG,'
      '  RG_MAE = :RG_MAE,'
      '  RG_PAI = :RG_PAI,'
      '  RG_RESP = :RG_RESP,'
      '  SERIE = :SERIE,'
      '  SEXO = :SEXO,'
      '  SITUACAO_ALUNO = :SITUACAO_ALUNO,'
      '  TEL_ALUNO = :TEL_ALUNO,'
      '  TEL_CEL_ALUNO = :TEL_CEL_ALUNO,'
      '  TEL_CEL_MAE = :TEL_CEL_MAE,'
      '  TEL_CEL_PAI = :TEL_CEL_PAI,'
      '  TEL_CEL_RESP = :TEL_CEL_RESP,'
      '  TEL_ESCO_ANT = :TEL_ESCO_ANT,'
      '  TEL_MAE = :TEL_MAE,'
      '  TEL_PAI = :TEL_PAI,'
      '  TEL_RESP = :TEL_RESP,'
      '  TEL_TRAB_MAE = :TEL_TRAB_MAE,'
      '  TEL_TRAB_PAI = :TEL_TRAB_PAI,'
      '  TEL_TRAB_RESP = :TEL_TRAB_RESP,'
      '  TURMA = :TURMA,'
      '  TURNO = :TURNO,'
      '  UF = :UF,'
      '  UF_ESCO_ANT = :UF_ESCO_ANT,'
      '  UF_MAE = :UF_MAE,'
      '  UF_PAI = :UF_PAI,'
      '  UF_RESP = :UF_RESP'
      'where'
      '  COD_ALUN = :OLD_COD_ALUN')
    GeneratorField.ApplyEvent = gamOnPost
    Left = 220
    Top = 84
    object IBDS_ALUNOSCOD_ALUN: TIntegerField
      FieldName = 'COD_ALUN'
      Origin = '"ALUNOS"."COD_ALUN"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDS_ALUNOSMATRICULA: TIBStringField
      FieldName = 'MATRICULA'
      Origin = '"ALUNOS"."MATRICULA"'
      Size = 16
    end
    object IBDS_ALUNOSDATA_MATRICULA: TDateTimeField
      FieldName = 'DATA_MATRICULA'
      Origin = '"ALUNOS"."DATA_MATRICULA"'
      EditMask = '99/99/9999;1;_'
    end
    object IBDS_ALUNOSANO_LETIVO: TIBStringField
      FieldName = 'ANO_LETIVO'
      Origin = '"ALUNOS"."ANO_LETIVO"'
      Size = 4
    end
    object IBDS_ALUNOSNOME_ALUNO: TIBStringField
      FieldName = 'NOME_ALUNO'
      Origin = '"ALUNOS"."NOME_ALUNO"'
      Size = 50
    end
    object IBDS_ALUNOSFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = '"ALUNOS"."FOTO"'
      Size = 8
    end
    object IBDS_ALUNOSTURMA: TIBStringField
      FieldName = 'TURMA'
      Origin = '"ALUNOS"."TURMA"'
      Size = 10
    end
    object IBDS_ALUNOSTURNO: TIBStringField
      FieldName = 'TURNO'
      Origin = '"ALUNOS"."TURNO"'
      Size = 5
    end
    object IBDS_ALUNOSCURSO: TIBStringField
      FieldName = 'CURSO'
      Origin = '"ALUNOS"."CURSO"'
      Size = 21
    end
    object IBDS_ALUNOSSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"ALUNOS"."SERIE"'
      Size = 30
    end
    object IBDS_ALUNOSSEXO: TIBStringField
      FieldName = 'SEXO'
      Origin = '"ALUNOS"."SEXO"'
      Size = 9
    end
    object IBDS_ALUNOSDATA_NASCIMENTO: TDateTimeField
      FieldName = 'DATA_NASCIMENTO'
      Origin = '"ALUNOS"."DATA_NASCIMENTO"'
      EditMask = '99/99/9999;1;_'
    end
    object IBDS_ALUNOSNACIONALIDADE: TIBStringField
      FieldName = 'NACIONALIDADE'
      Origin = '"ALUNOS"."NACIONALIDADE"'
      Size = 25
    end
    object IBDS_ALUNOSNATURALIDADE: TIBStringField
      FieldName = 'NATURALIDADE'
      Origin = '"ALUNOS"."NATURALIDADE"'
      Size = 25
    end
    object IBDS_ALUNOSESTADO_NATURALIDADE: TIBStringField
      FieldName = 'ESTADO_NATURALIDADE'
      Origin = '"ALUNOS"."ESTADO_NATURALIDADE"'
      Size = 25
    end
    object IBDS_ALUNOSRELIGIAO: TIBStringField
      FieldName = 'RELIGIAO'
      Origin = '"ALUNOS"."RELIGIAO"'
      Size = 30
    end
    object IBDS_ALUNOSTEL_ALUNO: TIBStringField
      FieldName = 'TEL_ALUNO'
      Origin = '"ALUNOS"."TEL_ALUNO"'
      EditMask = '(99)999-9999;1;_'
    end
    object IBDS_ALUNOSTEL_CEL_ALUNO: TIBStringField
      FieldName = 'TEL_CEL_ALUNO'
      Origin = '"ALUNOS"."TEL_CEL_ALUNO"'
      EditMask = '(99)9999-9999;1;_'
    end
    object IBDS_ALUNOSENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"ALUNOS"."ENDERECO"'
      Size = 50
    end
    object IBDS_ALUNOSBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"ALUNOS"."BAIRRO"'
      Size = 30
    end
    object IBDS_ALUNOSCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"ALUNOS"."CIDADE"'
      Size = 25
    end
    object IBDS_ALUNOSCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"ALUNOS"."CEP"'
      EditMask = '99.999-999;1;_'
      Size = 10
    end
    object IBDS_ALUNOSESTADO: TIBStringField
      FieldName = 'ESTADO'
      Origin = '"ALUNOS"."ESTADO"'
      Size = 25
    end
    object IBDS_ALUNOSUF: TIBStringField
      FieldName = 'UF'
      Origin = '"ALUNOS"."UF"'
      Size = 2
    end
    object IBDS_ALUNOSESCOLA_ANTERIOR: TIBStringField
      FieldName = 'ESCOLA_ANTERIOR'
      Origin = '"ALUNOS"."ESCOLA_ANTERIOR"'
      Size = 50
    end
    object IBDS_ALUNOSCIDADE_ESCO_ANT: TIBStringField
      FieldName = 'CIDADE_ESCO_ANT'
      Origin = '"ALUNOS"."CIDADE_ESCO_ANT"'
      Size = 25
    end
    object IBDS_ALUNOSTEL_ESCO_ANT: TIBStringField
      FieldName = 'TEL_ESCO_ANT'
      Origin = '"ALUNOS"."TEL_ESCO_ANT"'
      EditMask = '(99)999-9999;1;_'
    end
    object IBDS_ALUNOSESTADO_ESCO_ANT: TIBStringField
      FieldName = 'ESTADO_ESCO_ANT'
      Origin = '"ALUNOS"."ESTADO_ESCO_ANT"'
      Size = 25
    end
    object IBDS_ALUNOSUF_ESCO_ANT: TIBStringField
      FieldName = 'UF_ESCO_ANT'
      Origin = '"ALUNOS"."UF_ESCO_ANT"'
      Size = 2
    end
    object IBDS_ALUNOSPROBLEMAS_SAUDE: TMemoField
      FieldName = 'PROBLEMAS_SAUDE'
      Origin = '"ALUNOS"."PROBLEMAS_SAUDE"'
      BlobType = ftMemo
      Size = 8
    end
    object IBDS_ALUNOSREMEDIOS_PROIBIDOS: TMemoField
      FieldName = 'REMEDIOS_PROIBIDOS'
      Origin = '"ALUNOS"."REMEDIOS_PROIBIDOS"'
      BlobType = ftMemo
      Size = 8
    end
    object IBDS_ALUNOSREMEDIOS_UTILIZADOS: TMemoField
      FieldName = 'REMEDIOS_UTILIZADOS'
      Origin = '"ALUNOS"."REMEDIOS_UTILIZADOS"'
      BlobType = ftMemo
      Size = 8
    end
    object IBDS_ALUNOSNOME_PAI: TIBStringField
      FieldName = 'NOME_PAI'
      Origin = '"ALUNOS"."NOME_PAI"'
      Size = 50
    end
    object IBDS_ALUNOSDATA_NASC_PAI: TDateTimeField
      FieldName = 'DATA_NASC_PAI'
      Origin = '"ALUNOS"."DATA_NASC_PAI"'
      EditMask = '99/99/9999;1;_'
    end
    object IBDS_ALUNOSNACIONALIDADE_PAI: TIBStringField
      FieldName = 'NACIONALIDADE_PAI'
      Origin = '"ALUNOS"."NACIONALIDADE_PAI"'
      Size = 25
    end
    object IBDS_ALUNOSNATURALIDADE_PAI: TIBStringField
      FieldName = 'NATURALIDADE_PAI'
      Origin = '"ALUNOS"."NATURALIDADE_PAI"'
      Size = 25
    end
    object IBDS_ALUNOSRG_PAI: TIBStringField
      FieldName = 'RG_PAI'
      Origin = '"ALUNOS"."RG_PAI"'
      Size = 27
    end
    object IBDS_ALUNOSCPF_PAI: TIBStringField
      FieldName = 'CPF_PAI'
      Origin = '"ALUNOS"."CPF_PAI"'
      EditMask = '999.999.999-99;1;_'
      Size = 14
    end
    object IBDS_ALUNOSTEL_PAI: TIBStringField
      FieldName = 'TEL_PAI'
      Origin = '"ALUNOS"."TEL_PAI"'
      EditMask = '(99)999-9999;1;_'
    end
    object IBDS_ALUNOSTEL_TRAB_PAI: TIBStringField
      FieldName = 'TEL_TRAB_PAI'
      Origin = '"ALUNOS"."TEL_TRAB_PAI"'
      EditMask = '(99)999-9999;1;_'
    end
    object IBDS_ALUNOSTEL_CEL_PAI: TIBStringField
      FieldName = 'TEL_CEL_PAI'
      Origin = '"ALUNOS"."TEL_CEL_PAI"'
      EditMask = '(99)9999-9999;1;_'
    end
    object IBDS_ALUNOSLOCAL_TRAB_PAI: TIBStringField
      FieldName = 'LOCAL_TRAB_PAI'
      Origin = '"ALUNOS"."LOCAL_TRAB_PAI"'
      Size = 30
    end
    object IBDS_ALUNOSPROFISSAO_PAI: TIBStringField
      FieldName = 'PROFISSAO_PAI'
      Origin = '"ALUNOS"."PROFISSAO_PAI"'
      Size = 30
    end
    object IBDS_ALUNOSENDERECO_PAI: TIBStringField
      FieldName = 'ENDERECO_PAI'
      Origin = '"ALUNOS"."ENDERECO_PAI"'
      Size = 50
    end
    object IBDS_ALUNOSRENDA_PAI: TIBBCDField
      FieldName = 'RENDA_PAI'
      Origin = '"ALUNOS"."RENDA_PAI"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_ALUNOSBAIRRO_PAI: TIBStringField
      FieldName = 'BAIRRO_PAI'
      Origin = '"ALUNOS"."BAIRRO_PAI"'
      Size = 30
    end
    object IBDS_ALUNOSCIDADE_PAI: TIBStringField
      FieldName = 'CIDADE_PAI'
      Origin = '"ALUNOS"."CIDADE_PAI"'
      Size = 25
    end
    object IBDS_ALUNOSCEP_PAI: TIBStringField
      FieldName = 'CEP_PAI'
      Origin = '"ALUNOS"."CEP_PAI"'
      EditMask = '99.999-999;1;_'
      Size = 10
    end
    object IBDS_ALUNOSESTADO_PAI: TIBStringField
      FieldName = 'ESTADO_PAI'
      Origin = '"ALUNOS"."ESTADO_PAI"'
      Size = 25
    end
    object IBDS_ALUNOSUF_PAI: TIBStringField
      FieldName = 'UF_PAI'
      Origin = '"ALUNOS"."UF_PAI"'
      Size = 2
    end
    object IBDS_ALUNOSNOME_MAE: TIBStringField
      FieldName = 'NOME_MAE'
      Origin = '"ALUNOS"."NOME_MAE"'
      Size = 50
    end
    object IBDS_ALUNOSDATA_NASC_MAE: TDateTimeField
      FieldName = 'DATA_NASC_MAE'
      Origin = '"ALUNOS"."DATA_NASC_MAE"'
      EditMask = '99/99/9999;1;_'
    end
    object IBDS_ALUNOSNACIONALIDADE_MAE: TIBStringField
      FieldName = 'NACIONALIDADE_MAE'
      Origin = '"ALUNOS"."NACIONALIDADE_MAE"'
      Size = 25
    end
    object IBDS_ALUNOSNATURALIDADE_MAE: TIBStringField
      FieldName = 'NATURALIDADE_MAE'
      Origin = '"ALUNOS"."NATURALIDADE_MAE"'
      Size = 25
    end
    object IBDS_ALUNOSRG_MAE: TIBStringField
      FieldName = 'RG_MAE'
      Origin = '"ALUNOS"."RG_MAE"'
      Size = 27
    end
    object IBDS_ALUNOSCPF_MAE: TIBStringField
      FieldName = 'CPF_MAE'
      Origin = '"ALUNOS"."CPF_MAE"'
      EditMask = '999.999.999-99;1;_'
      Size = 14
    end
    object IBDS_ALUNOSTEL_MAE: TIBStringField
      FieldName = 'TEL_MAE'
      Origin = '"ALUNOS"."TEL_MAE"'
      EditMask = '(99)999-9999;1;_'
    end
    object IBDS_ALUNOSTEL_TRAB_MAE: TIBStringField
      FieldName = 'TEL_TRAB_MAE'
      Origin = '"ALUNOS"."TEL_TRAB_MAE"'
      EditMask = '(99)999-9999;1;_'
    end
    object IBDS_ALUNOSTEL_CEL_MAE: TIBStringField
      FieldName = 'TEL_CEL_MAE'
      Origin = '"ALUNOS"."TEL_CEL_MAE"'
      EditMask = '(99)9999-9999;1;_'
    end
    object IBDS_ALUNOSLOCAL_TRAB_MAE: TIBStringField
      FieldName = 'LOCAL_TRAB_MAE'
      Origin = '"ALUNOS"."LOCAL_TRAB_MAE"'
      Size = 30
    end
    object IBDS_ALUNOSPROFISSAO_MAE: TIBStringField
      FieldName = 'PROFISSAO_MAE'
      Origin = '"ALUNOS"."PROFISSAO_MAE"'
      Size = 30
    end
    object IBDS_ALUNOSENDERECO_MAE: TIBStringField
      FieldName = 'ENDERECO_MAE'
      Origin = '"ALUNOS"."ENDERECO_MAE"'
      Size = 50
    end
    object IBDS_ALUNOSRENDA_MAE: TIBBCDField
      FieldName = 'RENDA_MAE'
      Origin = '"ALUNOS"."RENDA_MAE"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_ALUNOSBAIRRO_MAE: TIBStringField
      FieldName = 'BAIRRO_MAE'
      Origin = '"ALUNOS"."BAIRRO_MAE"'
      Size = 30
    end
    object IBDS_ALUNOSCIDADE_MAE: TIBStringField
      FieldName = 'CIDADE_MAE'
      Origin = '"ALUNOS"."CIDADE_MAE"'
      Size = 25
    end
    object IBDS_ALUNOSCEP_MAE: TIBStringField
      FieldName = 'CEP_MAE'
      Origin = '"ALUNOS"."CEP_MAE"'
      EditMask = '99.999-999;1;_'
      Size = 10
    end
    object IBDS_ALUNOSESTADO_MAE: TIBStringField
      FieldName = 'ESTADO_MAE'
      Origin = '"ALUNOS"."ESTADO_MAE"'
      Size = 25
    end
    object IBDS_ALUNOSUF_MAE: TIBStringField
      FieldName = 'UF_MAE'
      Origin = '"ALUNOS"."UF_MAE"'
      Size = 2
    end
    object IBDS_ALUNOSNOME_RESP: TIBStringField
      FieldName = 'NOME_RESP'
      Origin = '"ALUNOS"."NOME_RESP"'
      Size = 50
    end
    object IBDS_ALUNOSDATA_NASC_RESP: TDateTimeField
      FieldName = 'DATA_NASC_RESP'
      Origin = '"ALUNOS"."DATA_NASC_RESP"'
      EditMask = '99/99/9999;1;_'
    end
    object IBDS_ALUNOSNACIONALIDADE_RESP: TIBStringField
      FieldName = 'NACIONALIDADE_RESP'
      Origin = '"ALUNOS"."NACIONALIDADE_RESP"'
      Size = 25
    end
    object IBDS_ALUNOSNATURALIDADE_RESP: TIBStringField
      FieldName = 'NATURALIDADE_RESP'
      Origin = '"ALUNOS"."NATURALIDADE_RESP"'
      Size = 25
    end
    object IBDS_ALUNOSRG_RESP: TIBStringField
      FieldName = 'RG_RESP'
      Origin = '"ALUNOS"."RG_RESP"'
      Size = 27
    end
    object IBDS_ALUNOSCPF_RESP: TIBStringField
      FieldName = 'CPF_RESP'
      Origin = '"ALUNOS"."CPF_RESP"'
      EditMask = '999.999.999-99;1;_'
      Size = 14
    end
    object IBDS_ALUNOSTEL_RESP: TIBStringField
      FieldName = 'TEL_RESP'
      Origin = '"ALUNOS"."TEL_RESP"'
      EditMask = '(99)999-9999;1;_'
    end
    object IBDS_ALUNOSTEL_TRAB_RESP: TIBStringField
      FieldName = 'TEL_TRAB_RESP'
      Origin = '"ALUNOS"."TEL_TRAB_RESP"'
      EditMask = '(99)999-9999;1;_'
    end
    object IBDS_ALUNOSTEL_CEL_RESP: TIBStringField
      FieldName = 'TEL_CEL_RESP'
      Origin = '"ALUNOS"."TEL_CEL_RESP"'
      EditMask = '(99)9999-9999;1;_'
    end
    object IBDS_ALUNOSLOCAL_TRAB_RESP: TIBStringField
      FieldName = 'LOCAL_TRAB_RESP'
      Origin = '"ALUNOS"."LOCAL_TRAB_RESP"'
      Size = 30
    end
    object IBDS_ALUNOSPROFISSAO_RESP: TIBStringField
      FieldName = 'PROFISSAO_RESP'
      Origin = '"ALUNOS"."PROFISSAO_RESP"'
      Size = 30
    end
    object IBDS_ALUNOSRENDA_RESP: TIBBCDField
      FieldName = 'RENDA_RESP'
      Origin = '"ALUNOS"."RENDA_RESP"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_ALUNOSENDERECO_RESP: TIBStringField
      FieldName = 'ENDERECO_RESP'
      Origin = '"ALUNOS"."ENDERECO_RESP"'
      Size = 50
    end
    object IBDS_ALUNOSBAIRRO_RESP: TIBStringField
      FieldName = 'BAIRRO_RESP'
      Origin = '"ALUNOS"."BAIRRO_RESP"'
      Size = 30
    end
    object IBDS_ALUNOSCIDADE_RESP: TIBStringField
      FieldName = 'CIDADE_RESP'
      Origin = '"ALUNOS"."CIDADE_RESP"'
      Size = 25
    end
    object IBDS_ALUNOSCEP_RESP: TIBStringField
      FieldName = 'CEP_RESP'
      Origin = '"ALUNOS"."CEP_RESP"'
      EditMask = '99.999-999;1;_'
      Size = 10
    end
    object IBDS_ALUNOSESTADO_RESP: TIBStringField
      FieldName = 'ESTADO_RESP'
      Origin = '"ALUNOS"."ESTADO_RESP"'
      Size = 25
    end
    object IBDS_ALUNOSUF_RESP: TIBStringField
      FieldName = 'UF_RESP'
      Origin = '"ALUNOS"."UF_RESP"'
      Size = 2
    end
    object IBDS_ALUNOSRG: TIBStringField
      FieldName = 'RG'
      Origin = '"ALUNOS"."RG"'
      Size = 27
    end
    object IBDS_ALUNOSSITUACAO_ALUNO: TIBStringField
      FieldName = 'SITUACAO_ALUNO'
      Origin = '"ALUNOS"."SITUACAO_ALUNO"'
      Size = 15
    end
  end
  object IBDS_INATIVOS: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from INATIVOS'
      'where'
      '  MATRICULA = :OLD_MATRICULA')
    InsertSQL.Strings = (
      'insert into INATIVOS'
      
        '  (ANO_LETIVO, BAIRRO, BAIRRO_MAE, BAIRRO_PAI, BAIRRO_RESP, CEP,' +
        ' CEP_MAE, '
      
        '   CEP_PAI, CEP_RESP, CIDADE, CIDADE_ESCO_ANT, CIDADE_MAE, CIDAD' +
        'E_PAI, '
      
        '   CIDADE_RESP, COD_ALUN, CPF_MAE, CPF_PAI, CPF_RESP, CURSO, DAT' +
        'A_MATRICULA, '
      
        '   DATA_MOVIDO, DATA_NASC_MAE, DATA_NASC_PAI, DATA_NASC_RESP, DA' +
        'TA_NASCIMENTO, '
      
        '   ENDERECO, ENDERECO_MAE, ENDERECO_PAI, ENDERECO_RESP, ESCOLA_A' +
        'NTERIOR, '
      
        '   ESTADO, ESTADO_ESCO_ANT, ESTADO_MAE, ESTADO_NATURALIDADE, EST' +
        'ADO_PAI, '
      
        '   ESTADO_RESP, FOTO, LOCAL_TRAB_MAE, LOCAL_TRAB_PAI, LOCAL_TRAB' +
        '_RESP, '
      
        '   MATRICULA, MOVIDO_USUARIO, NACIONALIDADE, NACIONALIDADE_MAE, ' +
        'NACIONALIDADE_PAI, '
      
        '   NACIONALIDADE_RESP, NATURALIDADE, NATURALIDADE_MAE, NATURALID' +
        'ADE_PAI, '
      
        '   NATURALIDADE_RESP, NOME_ALUNO, NOME_MAE, NOME_PAI, NOME_RESP,' +
        ' PROBLEMAS_SAUDE, '
      
        '   PROFISSAO_MAE, PROFISSAO_PAI, PROFISSAO_RESP, RAZAO_MOVIDO, R' +
        'ELIGIAO, '
      
        '   REMEDIOS_PROIBIDOS, REMEDIOS_UTILIZADOS, RENDA_MAE, RENDA_PAI' +
        ', RENDA_RESP, '
      
        '   RG_MAE, RG_PAI, RG_RESP, SERIE, SEXO, SITUACAO_ALUNO, TEL_ALU' +
        'NO, TEL_CEL_ALUNO, '
      
        '   TEL_CEL_MAE, TEL_CEL_PAI, TEL_CEL_RESP, TEL_ESCO_ANT, TEL_MAE' +
        ', TEL_PAI, '
      
        '   TEL_RESP, TEL_TRAB_MAE, TEL_TRAB_PAI, TEL_TRAB_RESP, TURMA, T' +
        'URNO, UF, '
      '   UF_ESCO_ANT, UF_MAE, UF_PAI, UF_RESP)'
      'values'
      
        '  (:ANO_LETIVO, :BAIRRO, :BAIRRO_MAE, :BAIRRO_PAI, :BAIRRO_RESP,' +
        ' :CEP, '
      
        '   :CEP_MAE, :CEP_PAI, :CEP_RESP, :CIDADE, :CIDADE_ESCO_ANT, :CI' +
        'DADE_MAE, '
      
        '   :CIDADE_PAI, :CIDADE_RESP, :COD_ALUN, :CPF_MAE, :CPF_PAI, :CP' +
        'F_RESP, '
      
        '   :CURSO, :DATA_MATRICULA, :DATA_MOVIDO, :DATA_NASC_MAE, :DATA_' +
        'NASC_PAI, '
      
        '   :DATA_NASC_RESP, :DATA_NASCIMENTO, :ENDERECO, :ENDERECO_MAE, ' +
        ':ENDERECO_PAI, '
      
        '   :ENDERECO_RESP, :ESCOLA_ANTERIOR, :ESTADO, :ESTADO_ESCO_ANT, ' +
        ':ESTADO_MAE, '
      
        '   :ESTADO_NATURALIDADE, :ESTADO_PAI, :ESTADO_RESP, :FOTO, :LOCA' +
        'L_TRAB_MAE, '
      
        '   :LOCAL_TRAB_PAI, :LOCAL_TRAB_RESP, :MATRICULA, :MOVIDO_USUARI' +
        'O, :NACIONALIDADE, '
      
        '   :NACIONALIDADE_MAE, :NACIONALIDADE_PAI, :NACIONALIDADE_RESP, ' +
        ':NATURALIDADE, '
      
        '   :NATURALIDADE_MAE, :NATURALIDADE_PAI, :NATURALIDADE_RESP, :NO' +
        'ME_ALUNO, '
      
        '   :NOME_MAE, :NOME_PAI, :NOME_RESP, :PROBLEMAS_SAUDE, :PROFISSA' +
        'O_MAE, '
      
        '   :PROFISSAO_PAI, :PROFISSAO_RESP, :RAZAO_MOVIDO, :RELIGIAO, :R' +
        'EMEDIOS_PROIBIDOS, '
      
        '   :REMEDIOS_UTILIZADOS, :RENDA_MAE, :RENDA_PAI, :RENDA_RESP, :R' +
        'G_MAE, '
      
        '   :RG_PAI, :RG_RESP, :SERIE, :SEXO, :SITUACAO_ALUNO, :TEL_ALUNO' +
        ', :TEL_CEL_ALUNO, '
      
        '   :TEL_CEL_MAE, :TEL_CEL_PAI, :TEL_CEL_RESP, :TEL_ESCO_ANT, :TE' +
        'L_MAE, '
      
        '   :TEL_PAI, :TEL_RESP, :TEL_TRAB_MAE, :TEL_TRAB_PAI, :TEL_TRAB_' +
        'RESP, :TURMA, '
      '   :TURNO, :UF, :UF_ESCO_ANT, :UF_MAE, :UF_PAI, :UF_RESP)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_ALUN,'
      '  MATRICULA,'
      '  DATA_MATRICULA,'
      '  ANO_LETIVO,'
      '  NOME_ALUNO,'
      '  FOTO,'
      '  TURMA,'
      '  TURNO,'
      '  CURSO,'
      '  SERIE,'
      '  SEXO,'
      '  DATA_NASCIMENTO,'
      '  NACIONALIDADE,'
      '  NATURALIDADE,'
      '  RELIGIAO,'
      '  TEL_ALUNO,'
      '  TEL_CEL_ALUNO,'
      '  ENDERECO,'
      '  BAIRRO,'
      '  CIDADE,'
      '  CEP,'
      '  ESTADO,'
      '  UF,'
      '  ESCOLA_ANTERIOR,'
      '  CIDADE_ESCO_ANT,'
      '  TEL_ESCO_ANT,'
      '  ESTADO_ESCO_ANT,'
      '  UF_ESCO_ANT,'
      '  PROBLEMAS_SAUDE,'
      '  REMEDIOS_PROIBIDOS,'
      '  REMEDIOS_UTILIZADOS,'
      '  NOME_PAI,'
      '  DATA_NASC_PAI,'
      '  NACIONALIDADE_PAI,'
      '  NATURALIDADE_PAI,'
      '  RG_PAI,'
      '  CPF_PAI,'
      '  TEL_PAI,'
      '  TEL_TRAB_PAI,'
      '  TEL_CEL_PAI,'
      '  LOCAL_TRAB_PAI,'
      '  PROFISSAO_PAI,'
      '  RENDA_PAI,'
      '  ENDERECO_PAI,'
      '  BAIRRO_PAI,'
      '  CIDADE_PAI,'
      '  CEP_PAI,'
      '  ESTADO_PAI,'
      '  UF_PAI,'
      '  NOME_MAE,'
      '  DATA_NASC_MAE,'
      '  NACIONALIDADE_MAE,'
      '  NATURALIDADE_MAE,'
      '  RG_MAE,'
      '  CPF_MAE,'
      '  TEL_MAE,'
      '  TEL_TRAB_MAE,'
      '  TEL_CEL_MAE,'
      '  LOCAL_TRAB_MAE,'
      '  PROFISSAO_MAE,'
      '  RENDA_MAE,'
      '  ENDERECO_MAE,'
      '  BAIRRO_MAE,'
      '  CIDADE_MAE,'
      '  CEP_MAE,'
      '  ESTADO_MAE,'
      '  UF_MAE,'
      '  NOME_RESP,'
      '  DATA_NASC_RESP,'
      '  NACIONALIDADE_RESP,'
      '  NATURALIDADE_RESP,'
      '  RG_RESP,'
      '  CPF_RESP,'
      '  TEL_RESP,'
      '  TEL_TRAB_RESP,'
      '  TEL_CEL_RESP,'
      '  LOCAL_TRAB_RESP,'
      '  PROFISSAO_RESP,'
      '  RENDA_RESP,'
      '  ENDERECO_RESP,'
      '  BAIRRO_RESP,'
      '  CIDADE_RESP,'
      '  CEP_RESP,'
      '  ESTADO_RESP,'
      '  UF_RESP,'
      '  DATA_MOVIDO,'
      '  MOVIDO_USUARIO,'
      '  RAZAO_MOVIDO,'
      '  ESTADO_NATURALIDADE,'
      '  SITUACAO_ALUNO'
      'from INATIVOS '
      'where'
      '  MATRICULA = :MATRICULA')
    SelectSQL.Strings = (
      'select * from INATIVOS'
      'order by COD_ALUN')
    ModifySQL.Strings = (
      'update INATIVOS'
      'set'
      '  ANO_LETIVO = :ANO_LETIVO,'
      '  BAIRRO = :BAIRRO,'
      '  BAIRRO_MAE = :BAIRRO_MAE,'
      '  BAIRRO_PAI = :BAIRRO_PAI,'
      '  BAIRRO_RESP = :BAIRRO_RESP,'
      '  CEP = :CEP,'
      '  CEP_MAE = :CEP_MAE,'
      '  CEP_PAI = :CEP_PAI,'
      '  CEP_RESP = :CEP_RESP,'
      '  CIDADE = :CIDADE,'
      '  CIDADE_ESCO_ANT = :CIDADE_ESCO_ANT,'
      '  CIDADE_MAE = :CIDADE_MAE,'
      '  CIDADE_PAI = :CIDADE_PAI,'
      '  CIDADE_RESP = :CIDADE_RESP,'
      '  COD_ALUN = :COD_ALUN,'
      '  CPF_MAE = :CPF_MAE,'
      '  CPF_PAI = :CPF_PAI,'
      '  CPF_RESP = :CPF_RESP,'
      '  CURSO = :CURSO,'
      '  DATA_MATRICULA = :DATA_MATRICULA,'
      '  DATA_MOVIDO = :DATA_MOVIDO,'
      '  DATA_NASC_MAE = :DATA_NASC_MAE,'
      '  DATA_NASC_PAI = :DATA_NASC_PAI,'
      '  DATA_NASC_RESP = :DATA_NASC_RESP,'
      '  DATA_NASCIMENTO = :DATA_NASCIMENTO,'
      '  ENDERECO = :ENDERECO,'
      '  ENDERECO_MAE = :ENDERECO_MAE,'
      '  ENDERECO_PAI = :ENDERECO_PAI,'
      '  ENDERECO_RESP = :ENDERECO_RESP,'
      '  ESCOLA_ANTERIOR = :ESCOLA_ANTERIOR,'
      '  ESTADO = :ESTADO,'
      '  ESTADO_ESCO_ANT = :ESTADO_ESCO_ANT,'
      '  ESTADO_MAE = :ESTADO_MAE,'
      '  ESTADO_NATURALIDADE = :ESTADO_NATURALIDADE,'
      '  ESTADO_PAI = :ESTADO_PAI,'
      '  ESTADO_RESP = :ESTADO_RESP,'
      '  FOTO = :FOTO,'
      '  LOCAL_TRAB_MAE = :LOCAL_TRAB_MAE,'
      '  LOCAL_TRAB_PAI = :LOCAL_TRAB_PAI,'
      '  LOCAL_TRAB_RESP = :LOCAL_TRAB_RESP,'
      '  MATRICULA = :MATRICULA,'
      '  MOVIDO_USUARIO = :MOVIDO_USUARIO,'
      '  NACIONALIDADE = :NACIONALIDADE,'
      '  NACIONALIDADE_MAE = :NACIONALIDADE_MAE,'
      '  NACIONALIDADE_PAI = :NACIONALIDADE_PAI,'
      '  NACIONALIDADE_RESP = :NACIONALIDADE_RESP,'
      '  NATURALIDADE = :NATURALIDADE,'
      '  NATURALIDADE_MAE = :NATURALIDADE_MAE,'
      '  NATURALIDADE_PAI = :NATURALIDADE_PAI,'
      '  NATURALIDADE_RESP = :NATURALIDADE_RESP,'
      '  NOME_ALUNO = :NOME_ALUNO,'
      '  NOME_MAE = :NOME_MAE,'
      '  NOME_PAI = :NOME_PAI,'
      '  NOME_RESP = :NOME_RESP,'
      '  PROBLEMAS_SAUDE = :PROBLEMAS_SAUDE,'
      '  PROFISSAO_MAE = :PROFISSAO_MAE,'
      '  PROFISSAO_PAI = :PROFISSAO_PAI,'
      '  PROFISSAO_RESP = :PROFISSAO_RESP,'
      '  RAZAO_MOVIDO = :RAZAO_MOVIDO,'
      '  RELIGIAO = :RELIGIAO,'
      '  REMEDIOS_PROIBIDOS = :REMEDIOS_PROIBIDOS,'
      '  REMEDIOS_UTILIZADOS = :REMEDIOS_UTILIZADOS,'
      '  RENDA_MAE = :RENDA_MAE,'
      '  RENDA_PAI = :RENDA_PAI,'
      '  RENDA_RESP = :RENDA_RESP,'
      '  RG_MAE = :RG_MAE,'
      '  RG_PAI = :RG_PAI,'
      '  RG_RESP = :RG_RESP,'
      '  SERIE = :SERIE,'
      '  SEXO = :SEXO,'
      '  SITUACAO_ALUNO = :SITUACAO_ALUNO,'
      '  TEL_ALUNO = :TEL_ALUNO,'
      '  TEL_CEL_ALUNO = :TEL_CEL_ALUNO,'
      '  TEL_CEL_MAE = :TEL_CEL_MAE,'
      '  TEL_CEL_PAI = :TEL_CEL_PAI,'
      '  TEL_CEL_RESP = :TEL_CEL_RESP,'
      '  TEL_ESCO_ANT = :TEL_ESCO_ANT,'
      '  TEL_MAE = :TEL_MAE,'
      '  TEL_PAI = :TEL_PAI,'
      '  TEL_RESP = :TEL_RESP,'
      '  TEL_TRAB_MAE = :TEL_TRAB_MAE,'
      '  TEL_TRAB_PAI = :TEL_TRAB_PAI,'
      '  TEL_TRAB_RESP = :TEL_TRAB_RESP,'
      '  TURMA = :TURMA,'
      '  TURNO = :TURNO,'
      '  UF = :UF,'
      '  UF_ESCO_ANT = :UF_ESCO_ANT,'
      '  UF_MAE = :UF_MAE,'
      '  UF_PAI = :UF_PAI,'
      '  UF_RESP = :UF_RESP'
      'where'
      '  MATRICULA = :OLD_MATRICULA')
    GeneratorField.ApplyEvent = gamOnPost
    Left = 28
    Top = 404
    object IBDS_INATIVOSCOD_ALUN: TIntegerField
      FieldName = 'COD_ALUN'
      Origin = '"INATIVOS"."COD_ALUN"'
      Required = True
    end
    object IBDS_INATIVOSMATRICULA: TIBStringField
      FieldName = 'MATRICULA'
      Origin = '"INATIVOS"."MATRICULA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 16
    end
    object IBDS_INATIVOSDATA_MATRICULA: TDateTimeField
      FieldName = 'DATA_MATRICULA'
      Origin = '"INATIVOS"."DATA_MATRICULA"'
    end
    object IBDS_INATIVOSANO_LETIVO: TIBStringField
      FieldName = 'ANO_LETIVO'
      Origin = '"INATIVOS"."ANO_LETIVO"'
      Size = 4
    end
    object IBDS_INATIVOSNOME_ALUNO: TIBStringField
      FieldName = 'NOME_ALUNO'
      Origin = '"INATIVOS"."NOME_ALUNO"'
      Size = 50
    end
    object IBDS_INATIVOSFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = '"INATIVOS"."FOTO"'
      Size = 8
    end
    object IBDS_INATIVOSTURMA: TIBStringField
      FieldName = 'TURMA'
      Origin = '"INATIVOS"."TURMA"'
      Size = 10
    end
    object IBDS_INATIVOSTURNO: TIBStringField
      FieldName = 'TURNO'
      Origin = '"INATIVOS"."TURNO"'
      Size = 5
    end
    object IBDS_INATIVOSCURSO: TIBStringField
      FieldName = 'CURSO'
      Origin = '"INATIVOS"."CURSO"'
      Size = 21
    end
    object IBDS_INATIVOSSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"INATIVOS"."SERIE"'
      Size = 30
    end
    object IBDS_INATIVOSSEXO: TIBStringField
      FieldName = 'SEXO'
      Origin = '"INATIVOS"."SEXO"'
      Size = 9
    end
    object IBDS_INATIVOSDATA_NASCIMENTO: TDateTimeField
      FieldName = 'DATA_NASCIMENTO'
      Origin = '"INATIVOS"."DATA_NASCIMENTO"'
    end
    object IBDS_INATIVOSNACIONALIDADE: TIBStringField
      FieldName = 'NACIONALIDADE'
      Origin = '"INATIVOS"."NACIONALIDADE"'
      Size = 25
    end
    object IBDS_INATIVOSNATURALIDADE: TIBStringField
      FieldName = 'NATURALIDADE'
      Origin = '"INATIVOS"."NATURALIDADE"'
      Size = 25
    end
    object IBDS_INATIVOSRELIGIAO: TIBStringField
      FieldName = 'RELIGIAO'
      Origin = '"INATIVOS"."RELIGIAO"'
      Size = 30
    end
    object IBDS_INATIVOSTEL_ALUNO: TIBStringField
      FieldName = 'TEL_ALUNO'
      Origin = '"INATIVOS"."TEL_ALUNO"'
    end
    object IBDS_INATIVOSTEL_CEL_ALUNO: TIBStringField
      FieldName = 'TEL_CEL_ALUNO'
      Origin = '"INATIVOS"."TEL_CEL_ALUNO"'
    end
    object IBDS_INATIVOSENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"INATIVOS"."ENDERECO"'
      Size = 50
    end
    object IBDS_INATIVOSBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"INATIVOS"."BAIRRO"'
      Size = 30
    end
    object IBDS_INATIVOSCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"INATIVOS"."CIDADE"'
      Size = 25
    end
    object IBDS_INATIVOSCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"INATIVOS"."CEP"'
      Size = 10
    end
    object IBDS_INATIVOSESTADO: TIBStringField
      FieldName = 'ESTADO'
      Origin = '"INATIVOS"."ESTADO"'
      Size = 25
    end
    object IBDS_INATIVOSUF: TIBStringField
      FieldName = 'UF'
      Origin = '"INATIVOS"."UF"'
      Size = 2
    end
    object IBDS_INATIVOSESCOLA_ANTERIOR: TIBStringField
      FieldName = 'ESCOLA_ANTERIOR'
      Origin = '"INATIVOS"."ESCOLA_ANTERIOR"'
      Size = 50
    end
    object IBDS_INATIVOSCIDADE_ESCO_ANT: TIBStringField
      FieldName = 'CIDADE_ESCO_ANT'
      Origin = '"INATIVOS"."CIDADE_ESCO_ANT"'
      Size = 25
    end
    object IBDS_INATIVOSTEL_ESCO_ANT: TIBStringField
      FieldName = 'TEL_ESCO_ANT'
      Origin = '"INATIVOS"."TEL_ESCO_ANT"'
    end
    object IBDS_INATIVOSESTADO_ESCO_ANT: TIBStringField
      FieldName = 'ESTADO_ESCO_ANT'
      Origin = '"INATIVOS"."ESTADO_ESCO_ANT"'
      Size = 25
    end
    object IBDS_INATIVOSUF_ESCO_ANT: TIBStringField
      FieldName = 'UF_ESCO_ANT'
      Origin = '"INATIVOS"."UF_ESCO_ANT"'
      Size = 2
    end
    object IBDS_INATIVOSPROBLEMAS_SAUDE: TMemoField
      FieldName = 'PROBLEMAS_SAUDE'
      Origin = '"INATIVOS"."PROBLEMAS_SAUDE"'
      BlobType = ftMemo
      Size = 8
    end
    object IBDS_INATIVOSREMEDIOS_PROIBIDOS: TMemoField
      FieldName = 'REMEDIOS_PROIBIDOS'
      Origin = '"INATIVOS"."REMEDIOS_PROIBIDOS"'
      BlobType = ftMemo
      Size = 8
    end
    object IBDS_INATIVOSREMEDIOS_UTILIZADOS: TMemoField
      FieldName = 'REMEDIOS_UTILIZADOS'
      Origin = '"INATIVOS"."REMEDIOS_UTILIZADOS"'
      BlobType = ftMemo
      Size = 8
    end
    object IBDS_INATIVOSNOME_PAI: TIBStringField
      FieldName = 'NOME_PAI'
      Origin = '"INATIVOS"."NOME_PAI"'
      Size = 50
    end
    object IBDS_INATIVOSDATA_NASC_PAI: TDateTimeField
      FieldName = 'DATA_NASC_PAI'
      Origin = '"INATIVOS"."DATA_NASC_PAI"'
    end
    object IBDS_INATIVOSNACIONALIDADE_PAI: TIBStringField
      FieldName = 'NACIONALIDADE_PAI'
      Origin = '"INATIVOS"."NACIONALIDADE_PAI"'
      Size = 25
    end
    object IBDS_INATIVOSNATURALIDADE_PAI: TIBStringField
      FieldName = 'NATURALIDADE_PAI'
      Origin = '"INATIVOS"."NATURALIDADE_PAI"'
      Size = 25
    end
    object IBDS_INATIVOSRG_PAI: TIBStringField
      FieldName = 'RG_PAI'
      Origin = '"INATIVOS"."RG_PAI"'
      Size = 27
    end
    object IBDS_INATIVOSCPF_PAI: TIBStringField
      FieldName = 'CPF_PAI'
      Origin = '"INATIVOS"."CPF_PAI"'
      Size = 14
    end
    object IBDS_INATIVOSTEL_PAI: TIBStringField
      FieldName = 'TEL_PAI'
      Origin = '"INATIVOS"."TEL_PAI"'
    end
    object IBDS_INATIVOSTEL_TRAB_PAI: TIBStringField
      FieldName = 'TEL_TRAB_PAI'
      Origin = '"INATIVOS"."TEL_TRAB_PAI"'
    end
    object IBDS_INATIVOSTEL_CEL_PAI: TIBStringField
      FieldName = 'TEL_CEL_PAI'
      Origin = '"INATIVOS"."TEL_CEL_PAI"'
    end
    object IBDS_INATIVOSLOCAL_TRAB_PAI: TIBStringField
      FieldName = 'LOCAL_TRAB_PAI'
      Origin = '"INATIVOS"."LOCAL_TRAB_PAI"'
      Size = 30
    end
    object IBDS_INATIVOSPROFISSAO_PAI: TIBStringField
      FieldName = 'PROFISSAO_PAI'
      Origin = '"INATIVOS"."PROFISSAO_PAI"'
      Size = 30
    end
    object IBDS_INATIVOSRENDA_PAI: TIBBCDField
      FieldName = 'RENDA_PAI'
      Origin = '"INATIVOS"."RENDA_PAI"'
      Precision = 18
      Size = 2
    end
    object IBDS_INATIVOSENDERECO_PAI: TIBStringField
      FieldName = 'ENDERECO_PAI'
      Origin = '"INATIVOS"."ENDERECO_PAI"'
      Size = 50
    end
    object IBDS_INATIVOSBAIRRO_PAI: TIBStringField
      FieldName = 'BAIRRO_PAI'
      Origin = '"INATIVOS"."BAIRRO_PAI"'
      Size = 30
    end
    object IBDS_INATIVOSCIDADE_PAI: TIBStringField
      FieldName = 'CIDADE_PAI'
      Origin = '"INATIVOS"."CIDADE_PAI"'
      Size = 25
    end
    object IBDS_INATIVOSCEP_PAI: TIBStringField
      FieldName = 'CEP_PAI'
      Origin = '"INATIVOS"."CEP_PAI"'
      Size = 10
    end
    object IBDS_INATIVOSESTADO_PAI: TIBStringField
      FieldName = 'ESTADO_PAI'
      Origin = '"INATIVOS"."ESTADO_PAI"'
      Size = 25
    end
    object IBDS_INATIVOSUF_PAI: TIBStringField
      FieldName = 'UF_PAI'
      Origin = '"INATIVOS"."UF_PAI"'
      Size = 2
    end
    object IBDS_INATIVOSNOME_MAE: TIBStringField
      FieldName = 'NOME_MAE'
      Origin = '"INATIVOS"."NOME_MAE"'
      Size = 50
    end
    object IBDS_INATIVOSDATA_NASC_MAE: TDateTimeField
      FieldName = 'DATA_NASC_MAE'
      Origin = '"INATIVOS"."DATA_NASC_MAE"'
    end
    object IBDS_INATIVOSNACIONALIDADE_MAE: TIBStringField
      FieldName = 'NACIONALIDADE_MAE'
      Origin = '"INATIVOS"."NACIONALIDADE_MAE"'
      Size = 25
    end
    object IBDS_INATIVOSNATURALIDADE_MAE: TIBStringField
      FieldName = 'NATURALIDADE_MAE'
      Origin = '"INATIVOS"."NATURALIDADE_MAE"'
      Size = 25
    end
    object IBDS_INATIVOSRG_MAE: TIBStringField
      FieldName = 'RG_MAE'
      Origin = '"INATIVOS"."RG_MAE"'
      Size = 27
    end
    object IBDS_INATIVOSCPF_MAE: TIBStringField
      FieldName = 'CPF_MAE'
      Origin = '"INATIVOS"."CPF_MAE"'
      Size = 14
    end
    object IBDS_INATIVOSTEL_MAE: TIBStringField
      FieldName = 'TEL_MAE'
      Origin = '"INATIVOS"."TEL_MAE"'
    end
    object IBDS_INATIVOSTEL_TRAB_MAE: TIBStringField
      FieldName = 'TEL_TRAB_MAE'
      Origin = '"INATIVOS"."TEL_TRAB_MAE"'
    end
    object IBDS_INATIVOSTEL_CEL_MAE: TIBStringField
      FieldName = 'TEL_CEL_MAE'
      Origin = '"INATIVOS"."TEL_CEL_MAE"'
    end
    object IBDS_INATIVOSLOCAL_TRAB_MAE: TIBStringField
      FieldName = 'LOCAL_TRAB_MAE'
      Origin = '"INATIVOS"."LOCAL_TRAB_MAE"'
      Size = 30
    end
    object IBDS_INATIVOSPROFISSAO_MAE: TIBStringField
      FieldName = 'PROFISSAO_MAE'
      Origin = '"INATIVOS"."PROFISSAO_MAE"'
      Size = 30
    end
    object IBDS_INATIVOSRENDA_MAE: TIBBCDField
      FieldName = 'RENDA_MAE'
      Origin = '"INATIVOS"."RENDA_MAE"'
      Precision = 18
      Size = 2
    end
    object IBDS_INATIVOSENDERECO_MAE: TIBStringField
      FieldName = 'ENDERECO_MAE'
      Origin = '"INATIVOS"."ENDERECO_MAE"'
      Size = 50
    end
    object IBDS_INATIVOSBAIRRO_MAE: TIBStringField
      FieldName = 'BAIRRO_MAE'
      Origin = '"INATIVOS"."BAIRRO_MAE"'
      Size = 30
    end
    object IBDS_INATIVOSCIDADE_MAE: TIBStringField
      FieldName = 'CIDADE_MAE'
      Origin = '"INATIVOS"."CIDADE_MAE"'
      Size = 25
    end
    object IBDS_INATIVOSCEP_MAE: TIBStringField
      FieldName = 'CEP_MAE'
      Origin = '"INATIVOS"."CEP_MAE"'
      Size = 10
    end
    object IBDS_INATIVOSESTADO_MAE: TIBStringField
      FieldName = 'ESTADO_MAE'
      Origin = '"INATIVOS"."ESTADO_MAE"'
      Size = 25
    end
    object IBDS_INATIVOSUF_MAE: TIBStringField
      FieldName = 'UF_MAE'
      Origin = '"INATIVOS"."UF_MAE"'
      Size = 2
    end
    object IBDS_INATIVOSNOME_RESP: TIBStringField
      FieldName = 'NOME_RESP'
      Origin = '"INATIVOS"."NOME_RESP"'
      Size = 50
    end
    object IBDS_INATIVOSDATA_NASC_RESP: TDateTimeField
      FieldName = 'DATA_NASC_RESP'
      Origin = '"INATIVOS"."DATA_NASC_RESP"'
    end
    object IBDS_INATIVOSNACIONALIDADE_RESP: TIBStringField
      FieldName = 'NACIONALIDADE_RESP'
      Origin = '"INATIVOS"."NACIONALIDADE_RESP"'
      Size = 25
    end
    object IBDS_INATIVOSNATURALIDADE_RESP: TIBStringField
      FieldName = 'NATURALIDADE_RESP'
      Origin = '"INATIVOS"."NATURALIDADE_RESP"'
      Size = 25
    end
    object IBDS_INATIVOSRG_RESP: TIBStringField
      FieldName = 'RG_RESP'
      Origin = '"INATIVOS"."RG_RESP"'
      Size = 27
    end
    object IBDS_INATIVOSCPF_RESP: TIBStringField
      FieldName = 'CPF_RESP'
      Origin = '"INATIVOS"."CPF_RESP"'
      Size = 14
    end
    object IBDS_INATIVOSTEL_RESP: TIBStringField
      FieldName = 'TEL_RESP'
      Origin = '"INATIVOS"."TEL_RESP"'
    end
    object IBDS_INATIVOSTEL_TRAB_RESP: TIBStringField
      FieldName = 'TEL_TRAB_RESP'
      Origin = '"INATIVOS"."TEL_TRAB_RESP"'
    end
    object IBDS_INATIVOSTEL_CEL_RESP: TIBStringField
      FieldName = 'TEL_CEL_RESP'
      Origin = '"INATIVOS"."TEL_CEL_RESP"'
    end
    object IBDS_INATIVOSLOCAL_TRAB_RESP: TIBStringField
      FieldName = 'LOCAL_TRAB_RESP'
      Origin = '"INATIVOS"."LOCAL_TRAB_RESP"'
      Size = 30
    end
    object IBDS_INATIVOSPROFISSAO_RESP: TIBStringField
      FieldName = 'PROFISSAO_RESP'
      Origin = '"INATIVOS"."PROFISSAO_RESP"'
      Size = 30
    end
    object IBDS_INATIVOSRENDA_RESP: TIBBCDField
      FieldName = 'RENDA_RESP'
      Origin = '"INATIVOS"."RENDA_RESP"'
      Precision = 18
      Size = 2
    end
    object IBDS_INATIVOSENDERECO_RESP: TIBStringField
      FieldName = 'ENDERECO_RESP'
      Origin = '"INATIVOS"."ENDERECO_RESP"'
      Size = 50
    end
    object IBDS_INATIVOSBAIRRO_RESP: TIBStringField
      FieldName = 'BAIRRO_RESP'
      Origin = '"INATIVOS"."BAIRRO_RESP"'
      Size = 30
    end
    object IBDS_INATIVOSCIDADE_RESP: TIBStringField
      FieldName = 'CIDADE_RESP'
      Origin = '"INATIVOS"."CIDADE_RESP"'
      Size = 25
    end
    object IBDS_INATIVOSCEP_RESP: TIBStringField
      FieldName = 'CEP_RESP'
      Origin = '"INATIVOS"."CEP_RESP"'
      Size = 10
    end
    object IBDS_INATIVOSESTADO_RESP: TIBStringField
      FieldName = 'ESTADO_RESP'
      Origin = '"INATIVOS"."ESTADO_RESP"'
      Size = 25
    end
    object IBDS_INATIVOSUF_RESP: TIBStringField
      FieldName = 'UF_RESP'
      Origin = '"INATIVOS"."UF_RESP"'
      Size = 2
    end
    object IBDS_INATIVOSDATA_MOVIDO: TDateTimeField
      FieldName = 'DATA_MOVIDO'
      Origin = '"INATIVOS"."DATA_MOVIDO"'
    end
    object IBDS_INATIVOSMOVIDO_USUARIO: TIBStringField
      FieldName = 'MOVIDO_USUARIO'
      Origin = '"INATIVOS"."MOVIDO_USUARIO"'
    end
    object IBDS_INATIVOSRAZAO_MOVIDO: TIBStringField
      FieldName = 'RAZAO_MOVIDO'
      Origin = '"INATIVOS"."RAZAO_MOVIDO"'
      Size = 25
    end
    object IBDS_INATIVOSESTADO_NATURALIDADE: TIBStringField
      FieldName = 'ESTADO_NATURALIDADE'
      Origin = '"INATIVOS"."ESTADO_NATURALIDADE"'
      Size = 25
    end
    object IBDS_INATIVOSSITUACAO_ALUNO: TIBStringField
      FieldName = 'SITUACAO_ALUNO'
      Origin = '"INATIVOS"."SITUACAO_ALUNO"'
      Size = 15
    end
  end
  object Ds_INATIVOS: TDataSource
    DataSet = IBDS_INATIVOS
    Left = 24
    Top = 456
  end
  object IBConfigService: TIBConfigService
    LoginPrompt = False
    TraceFlags = []
    Left = 216
    Top = 8
  end
  object IBDS_CEPS: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from CEPS'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  NOME_CID = :OLD_NOME_CID and'
      '  CEP_CID = :OLD_CEP_CID and'
      '  ESTADO = :OLD_ESTADO and'
      '  UF = :OLD_UF')
    InsertSQL.Strings = (
      'insert into CEPS'
      '  (CODIGO, NOME_CID, CEP_CID, ESTADO, UF)'
      'values'
      '  (:CODIGO, :NOME_CID, :CEP_CID, :ESTADO, :UF)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  NOME_CID,'
      '  CEP_CID,'
      '  ESTADO,'
      '  UF'
      'from CEPS '
      'where'
      '  CODIGO = :CODIGO and'
      '  NOME_CID = :NOME_CID and'
      '  CEP_CID = :CEP_CID and'
      '  ESTADO = :ESTADO and'
      '  UF = :UF')
    SelectSQL.Strings = (
      'select * from CEPS')
    ModifySQL.Strings = (
      'update CEPS'
      'set'
      '  CODIGO = :CODIGO,'
      '  NOME_CID = :NOME_CID,'
      '  CEP_CID = :CEP_CID,'
      '  ESTADO = :ESTADO,'
      '  UF = :UF'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  NOME_CID = :OLD_NOME_CID and'
      '  CEP_CID = :OLD_CEP_CID and'
      '  ESTADO = :OLD_ESTADO and'
      '  UF = :OLD_UF')
    GeneratorField.ApplyEvent = gamOnPost
    Left = 380
    Top = 12
    object IBDS_CEPSCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"CEPS"."CODIGO"'
      Required = True
    end
    object IBDS_CEPSNOME_CID: TIBStringField
      FieldName = 'NOME_CID'
      Origin = '"CEPS"."NOME_CID"'
      Size = 25
    end
    object IBDS_CEPSCEP_CID: TIBStringField
      FieldName = 'CEP_CID'
      Origin = '"CEPS"."CEP_CID"'
      EditMask = '99.999-999;1;_'
      Size = 10
    end
    object IBDS_CEPSESTADO: TIBStringField
      FieldName = 'ESTADO'
      Origin = '"CEPS"."ESTADO"'
      Size = 25
    end
    object IBDS_CEPSUF: TIBStringField
      FieldName = 'UF'
      Origin = '"CEPS"."UF"'
      Size = 2
    end
  end
  object Ds_CEPS: TDataSource
    DataSet = IBDS_CEPS
    Left = 440
    Top = 16
  end
  object IBQuery_DmINATIVOS: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      'select COD_ALUN from INATIVOS'
      'order by COD_ALUN')
    Left = 392
    Top = 304
    object IBQuery_DmINATIVOSCOD_ALUN: TIntegerField
      FieldName = 'COD_ALUN'
      Origin = '"INATIVOS"."COD_ALUN"'
      Required = True
    end
  end
  object IBQuery_DmALUNOS: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      'select COD_ALUN from ALUNOS'
      'order by COD_ALUN')
    Left = 392
    Top = 360
    object IBQuery_DmALUNOSCOD_ALUN: TIntegerField
      FieldName = 'COD_ALUN'
      Origin = '"ALUNOS"."COD_ALUN"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object IBDS_MATERIAS: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    AfterInsert = IBDS_MATERIASAfterInsert
    BufferChunks = 10
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from MATERIAS'
      'where'
      '  COD_MATE = :OLD_COD_MATE')
    InsertSQL.Strings = (
      'insert into MATERIAS'
      '  (COD_MATE, DISCIPLINA, DISTRIBUIDA, LDB, UNIFICACAO)'
      'values'
      '  (:COD_MATE, :DISCIPLINA, :DISTRIBUIDA, :LDB, :UNIFICACAO)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_MATE,'
      '  DISCIPLINA,'
      '  LDB,'
      '  DISTRIBUIDA,'
      '  UNIFICACAO'
      'from MATERIAS '
      'where'
      '  COD_MATE = :COD_MATE')
    SelectSQL.Strings = (
      'select * from MATERIAS'
      'order by COD_MATE')
    ModifySQL.Strings = (
      'update MATERIAS'
      'set'
      '  COD_MATE = :COD_MATE,'
      '  DISCIPLINA = :DISCIPLINA,'
      '  DISTRIBUIDA = :DISTRIBUIDA,'
      '  LDB = :LDB,'
      '  UNIFICACAO = :UNIFICACAO'
      'where'
      '  COD_MATE = :OLD_COD_MATE')
    GeneratorField.ApplyEvent = gamOnPost
    Left = 124
    Top = 196
    object IBDS_MATERIASCOD_MATE: TIntegerField
      FieldName = 'COD_MATE'
      Origin = '"MATERIAS"."COD_MATE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDS_MATERIASDISCIPLINA: TIBStringField
      FieldName = 'DISCIPLINA'
      Origin = '"MATERIAS"."DISCIPLINA"'
      Size = 30
    end
    object IBDS_MATERIASLDB: TIBStringField
      FieldName = 'LDB'
      Origin = '"MATERIAS"."LDB"'
      Size = 4
    end
    object IBDS_MATERIASDISTRIBUIDA: TIBStringField
      FieldName = 'DISTRIBUIDA'
      Origin = '"MATERIAS"."DISTRIBUIDA"'
      Size = 3
    end
    object IBDS_MATERIASUNIFICACAO: TIBStringField
      FieldName = 'UNIFICACAO'
      Origin = '"MATERIAS"."UNIFICACAO"'
      Size = 47
    end
  end
  object Ds_MATERIAS: TDataSource
    DataSet = IBDS_MATERIAS
    Left = 120
    Top = 248
  end
  object IBDS_CARNE: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    AfterInsert = IBDS_CARNEAfterInsert
    BufferChunks = 10
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from CARNE'
      'where'
      '  COD_CARN = :OLD_COD_CARN')
    InsertSQL.Strings = (
      'insert into CARNE'
      
        '  (COD_CARN, NUMERO_DOC, MATRICULA, ANO_LETIVO, NOME_RESP, NOME_' +
        'ALUNO, '
      
        '   TURMA, TURNO, CURSO, SERIE, MES, DATA_VENCIMENTO, DATA_PAGAME' +
        'NTO, VALOR_MENSAL, '
      
        '   VALOR_ACRESC, VALOR_DESCON, NUMERO_PARCELA, SITUACAO_PARCELA,' +
        ' VALOR_APAGAR, '
      '   VALOR_PAGO, VALOR_PENDENTE, TOTAL_PAGO, NUMERO_CARNE)'
      'values'
      
        '  (:COD_CARN, :NUMERO_DOC, :MATRICULA, :ANO_LETIVO, :NOME_RESP, ' +
        ':NOME_ALUNO, '
      
        '   :TURMA, :TURNO, :CURSO, :SERIE, :MES, :DATA_VENCIMENTO, :DATA' +
        '_PAGAMENTO, '
      
        '   :VALOR_MENSAL, :VALOR_ACRESC, :VALOR_DESCON, :NUMERO_PARCELA,' +
        ' :SITUACAO_PARCELA, '
      
        '   :VALOR_APAGAR, :VALOR_PAGO, :VALOR_PENDENTE, :TOTAL_PAGO, :NU' +
        'MERO_CARNE)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_CARN,'
      '  NUMERO_DOC,'
      '  MATRICULA,'
      '  ANO_LETIVO,'
      '  NOME_RESP,'
      '  NOME_ALUNO,'
      '  TURMA,'
      '  TURNO,'
      '  CURSO,'
      '  SERIE,'
      '  MES,'
      '  DATA_VENCIMENTO,'
      '  DATA_PAGAMENTO,'
      '  VALOR_MENSAL,'
      '  VALOR_ACRESC,'
      '  VALOR_DESCON,'
      '  NUMERO_PARCELA,'
      '  SITUACAO_PARCELA,'
      '  VALOR_APAGAR,'
      '  VALOR_PAGO,'
      '  VALOR_PENDENTE,'
      '  TOTAL_PAGO,'
      '  NUMERO_CARNE'
      'from CARNE '
      'where'
      '  COD_CARN = :COD_CARN')
    SelectSQL.Strings = (
      'select * from CARNE'
      'order by DATA_VENCIMENTO')
    ModifySQL.Strings = (
      'update CARNE'
      'set'
      '  COD_CARN = :COD_CARN,'
      '  NUMERO_DOC = :NUMERO_DOC,'
      '  MATRICULA = :MATRICULA,'
      '  ANO_LETIVO = :ANO_LETIVO,'
      '  NOME_RESP = :NOME_RESP,'
      '  NOME_ALUNO = :NOME_ALUNO,'
      '  TURMA = :TURMA,'
      '  TURNO = :TURNO,'
      '  CURSO = :CURSO,'
      '  SERIE = :SERIE,'
      '  MES = :MES,'
      '  DATA_VENCIMENTO = :DATA_VENCIMENTO,'
      '  DATA_PAGAMENTO = :DATA_PAGAMENTO,'
      '  VALOR_MENSAL = :VALOR_MENSAL,'
      '  VALOR_ACRESC = :VALOR_ACRESC,'
      '  VALOR_DESCON = :VALOR_DESCON,'
      '  NUMERO_PARCELA = :NUMERO_PARCELA,'
      '  SITUACAO_PARCELA = :SITUACAO_PARCELA,'
      '  VALOR_APAGAR = :VALOR_APAGAR,'
      '  VALOR_PAGO = :VALOR_PAGO,'
      '  VALOR_PENDENTE = :VALOR_PENDENTE,'
      '  TOTAL_PAGO = :TOTAL_PAGO,'
      '  NUMERO_CARNE = :NUMERO_CARNE'
      'where'
      '  COD_CARN = :OLD_COD_CARN')
    GeneratorField.ApplyEvent = gamOnPost
    Left = 212
    Top = 300
    object IBDS_CARNECOD_CARN: TIntegerField
      FieldName = 'COD_CARN'
      Origin = '"CARNE"."COD_CARN"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDS_CARNENUMERO_DOC: TIBStringField
      FieldName = 'NUMERO_DOC'
      Origin = '"CARNE"."NUMERO_DOC"'
      Required = True
      Size = 17
    end
    object IBDS_CARNEMATRICULA: TIBStringField
      FieldName = 'MATRICULA'
      Origin = '"CARNE"."MATRICULA"'
      Size = 16
    end
    object IBDS_CARNEANO_LETIVO: TIBStringField
      FieldName = 'ANO_LETIVO'
      Origin = '"CARNE"."ANO_LETIVO"'
      Size = 4
    end
    object IBDS_CARNENOME_RESP: TIBStringField
      FieldName = 'NOME_RESP'
      Origin = '"CARNE"."NOME_RESP"'
      Size = 50
    end
    object IBDS_CARNENOME_ALUNO: TIBStringField
      FieldName = 'NOME_ALUNO'
      Origin = '"CARNE"."NOME_ALUNO"'
      Size = 50
    end
    object IBDS_CARNETURMA: TIBStringField
      FieldName = 'TURMA'
      Origin = '"CARNE"."TURMA"'
      Size = 10
    end
    object IBDS_CARNETURNO: TIBStringField
      FieldName = 'TURNO'
      Origin = '"CARNE"."TURNO"'
      Size = 5
    end
    object IBDS_CARNECURSO: TIBStringField
      FieldName = 'CURSO'
      Origin = '"CARNE"."CURSO"'
      Size = 21
    end
    object IBDS_CARNESERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"CARNE"."SERIE"'
      Size = 30
    end
    object IBDS_CARNEDATA_VENCIMENTO: TDateTimeField
      FieldName = 'DATA_VENCIMENTO'
      Origin = '"CARNE"."DATA_VENCIMENTO"'
      EditMask = '99/99/9999;1;_'
    end
    object IBDS_CARNEMES: TIBStringField
      FieldName = 'MES'
      Origin = '"CARNE"."MES"'
      Size = 10
    end
    object IBDS_CARNEDATA_PAGAMENTO: TDateTimeField
      FieldName = 'DATA_PAGAMENTO'
      Origin = '"CARNE"."DATA_PAGAMENTO"'
      EditMask = '99/99/9999;1;_'
    end
    object IBDS_CARNEVALOR_MENSAL: TIBBCDField
      FieldName = 'VALOR_MENSAL'
      Origin = '"CARNE"."VALOR_MENSAL"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_CARNEVALOR_ACRESC: TIBBCDField
      FieldName = 'VALOR_ACRESC'
      Origin = '"CARNE"."VALOR_ACRESC"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_CARNEVALOR_DESCON: TIBBCDField
      FieldName = 'VALOR_DESCON'
      Origin = '"CARNE"."VALOR_DESCON"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_CARNENUMERO_PARCELA: TIBStringField
      FieldName = 'NUMERO_PARCELA'
      Origin = '"CARNE"."NUMERO_PARCELA"'
      Size = 5
    end
    object IBDS_CARNESITUACAO_PARCELA: TIBStringField
      FieldName = 'SITUACAO_PARCELA'
      Origin = '"CARNE"."SITUACAO_PARCELA"'
      Size = 9
    end
    object IBDS_CARNEVALOR_APAGAR: TIBBCDField
      FieldName = 'VALOR_APAGAR'
      Origin = '"CARNE"."VALOR_APAGAR"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_CARNEVALOR_PAGO: TIBBCDField
      FieldName = 'VALOR_PAGO'
      Origin = '"CARNE"."VALOR_PAGO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_CARNEVALOR_PENDENTE: TIBBCDField
      FieldName = 'VALOR_PENDENTE'
      Origin = '"CARNE"."VALOR_PENDENTE"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_CARNETOTAL_PAGO: TIBBCDField
      FieldName = 'TOTAL_PAGO'
      Origin = '"CARNE"."TOTAL_PAGO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBDS_CARNENUMERO_CARNE: TIBStringField
      FieldName = 'NUMERO_CARNE'
      Origin = '"CARNE"."NUMERO_CARNE"'
      Size = 10
    end
  end
  object Ds_IBDS_CARNE: TDataSource
    DataSet = IBDS_CARNE
    Left = 208
    Top = 352
  end
  object IBDS_MATRICULAS: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    AfterInsert = IBDS_MATRICULASAfterInsert
    BufferChunks = 10
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from MATRICUL'
      'where'
      '  COD_MATI = :OLD_COD_MATI')
    InsertSQL.Strings = (
      'insert into MATRICUL'
      
        '  (ANO_LETIVO, BAIRRO_MAE, BAIRRO_PAI, BAIRRO_RESP, CEP_MAE, CEP' +
        '_PAI, CEP_RESP, '
      
        '   CERT_IMPRESSO, CG, CIDADE_ESCO_ANT, CIDADE_MAE, CIDADE_PAI, C' +
        'IDADE_RESP, '
      
        '   COD_MATI, CPF_RESP, CURSO, DATA_MATRICULA, DATA_NASCIMENTO, E' +
        'NDERECO_MAE, '
      
        '   ENDERECO_PAI, ENDERECO_RESP, ESCOLA_ANTERIOR, ESTADO_ESCO_ANT' +
        ', ESTADO_MAE, '
      
        '   ESTADO_NATURALIDADE, ESTADO_PAI, ESTADO_RESP, ESTAGIO, FOTO, ' +
        'MATRICULA, '
      
        '   NATURALIDADE, NOME_ALUNO, NOME_MAE, NOME_PAI, NOME_RESP, NUME' +
        'RO_CARNE, '
      
        '   RG_RESP, SERIE, SEXO, SITUACAO_ALUNO, TEL_CEL_RESP, TEL_MAE, ' +
        'TEL_PAI, '
      
        '   TEL_RESP, TURMA, TURNO, UF_ESCO_ANT, UF_MAE, UF_PAI, UF_RESP,' +
        ' USUARIO)'
      'values'
      
        '  (:ANO_LETIVO, :BAIRRO_MAE, :BAIRRO_PAI, :BAIRRO_RESP, :CEP_MAE' +
        ', :CEP_PAI, '
      
        '   :CEP_RESP, :CERT_IMPRESSO, :CG, :CIDADE_ESCO_ANT, :CIDADE_MAE' +
        ', :CIDADE_PAI, '
      
        '   :CIDADE_RESP, :COD_MATI, :CPF_RESP, :CURSO, :DATA_MATRICULA, ' +
        ':DATA_NASCIMENTO, '
      
        '   :ENDERECO_MAE, :ENDERECO_PAI, :ENDERECO_RESP, :ESCOLA_ANTERIO' +
        'R, :ESTADO_ESCO_ANT, '
      
        '   :ESTADO_MAE, :ESTADO_NATURALIDADE, :ESTADO_PAI, :ESTADO_RESP,' +
        ' :ESTAGIO, '
      
        '   :FOTO, :MATRICULA, :NATURALIDADE, :NOME_ALUNO, :NOME_MAE, :NO' +
        'ME_PAI, '
      
        '   :NOME_RESP, :NUMERO_CARNE, :RG_RESP, :SERIE, :SEXO, :SITUACAO' +
        '_ALUNO, '
      
        '   :TEL_CEL_RESP, :TEL_MAE, :TEL_PAI, :TEL_RESP, :TURMA, :TURNO,' +
        ' :UF_ESCO_ANT, '
      '   :UF_MAE, :UF_PAI, :UF_RESP, :USUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_MATI,'
      '  MATRICULA,'
      '  DATA_MATRICULA,'
      '  ANO_LETIVO,'
      '  CURSO,'
      '  SERIE,'
      '  TURNO,'
      '  TURMA,'
      '  NOME_ALUNO,'
      '  SEXO,'
      '  DATA_NASCIMENTO,'
      '  ESCOLA_ANTERIOR,'
      '  CIDADE_ESCO_ANT,'
      '  ESTADO_ESCO_ANT,'
      '  UF_ESCO_ANT,'
      '  NOME_PAI,'
      '  ENDERECO_PAI,'
      '  BAIRRO_PAI,'
      '  CIDADE_PAI,'
      '  CEP_PAI,'
      '  ESTADO_PAI,'
      '  UF_PAI,'
      '  TEL_PAI,'
      '  NOME_MAE,'
      '  ENDERECO_MAE,'
      '  BAIRRO_MAE,'
      '  CIDADE_MAE,'
      '  CEP_MAE,'
      '  ESTADO_MAE,'
      '  UF_MAE,'
      '  TEL_MAE,'
      '  NOME_RESP,'
      '  ENDERECO_RESP,'
      '  BAIRRO_RESP,'
      '  CIDADE_RESP,'
      '  CEP_RESP,'
      '  ESTADO_RESP,'
      '  UF_RESP,'
      '  TEL_RESP,'
      '  TEL_CEL_RESP,'
      '  RG_RESP,'
      '  CPF_RESP,'
      '  ESTAGIO,'
      '  USUARIO,'
      '  FOTO,'
      '  CG,'
      '  NUMERO_CARNE,'
      '  ESTADO_NATURALIDADE,'
      '  NATURALIDADE,'
      '  CERT_IMPRESSO,'
      '  SITUACAO_ALUNO'
      'from MATRICUL '
      'where'
      '  COD_MATI = :COD_MATI')
    SelectSQL.Strings = (
      'select * from MATRICUL'
      'order by COD_MATI')
    ModifySQL.Strings = (
      'update MATRICUL'
      'set'
      '  ANO_LETIVO = :ANO_LETIVO,'
      '  BAIRRO_MAE = :BAIRRO_MAE,'
      '  BAIRRO_PAI = :BAIRRO_PAI,'
      '  BAIRRO_RESP = :BAIRRO_RESP,'
      '  CEP_MAE = :CEP_MAE,'
      '  CEP_PAI = :CEP_PAI,'
      '  CEP_RESP = :CEP_RESP,'
      '  CERT_IMPRESSO = :CERT_IMPRESSO,'
      '  CG = :CG,'
      '  CIDADE_ESCO_ANT = :CIDADE_ESCO_ANT,'
      '  CIDADE_MAE = :CIDADE_MAE,'
      '  CIDADE_PAI = :CIDADE_PAI,'
      '  CIDADE_RESP = :CIDADE_RESP,'
      '  COD_MATI = :COD_MATI,'
      '  CPF_RESP = :CPF_RESP,'
      '  CURSO = :CURSO,'
      '  DATA_MATRICULA = :DATA_MATRICULA,'
      '  DATA_NASCIMENTO = :DATA_NASCIMENTO,'
      '  ENDERECO_MAE = :ENDERECO_MAE,'
      '  ENDERECO_PAI = :ENDERECO_PAI,'
      '  ENDERECO_RESP = :ENDERECO_RESP,'
      '  ESCOLA_ANTERIOR = :ESCOLA_ANTERIOR,'
      '  ESTADO_ESCO_ANT = :ESTADO_ESCO_ANT,'
      '  ESTADO_MAE = :ESTADO_MAE,'
      '  ESTADO_NATURALIDADE = :ESTADO_NATURALIDADE,'
      '  ESTADO_PAI = :ESTADO_PAI,'
      '  ESTADO_RESP = :ESTADO_RESP,'
      '  ESTAGIO = :ESTAGIO,'
      '  FOTO = :FOTO,'
      '  MATRICULA = :MATRICULA,'
      '  NATURALIDADE = :NATURALIDADE,'
      '  NOME_ALUNO = :NOME_ALUNO,'
      '  NOME_MAE = :NOME_MAE,'
      '  NOME_PAI = :NOME_PAI,'
      '  NOME_RESP = :NOME_RESP,'
      '  NUMERO_CARNE = :NUMERO_CARNE,'
      '  RG_RESP = :RG_RESP,'
      '  SERIE = :SERIE,'
      '  SEXO = :SEXO,'
      '  SITUACAO_ALUNO = :SITUACAO_ALUNO,'
      '  TEL_CEL_RESP = :TEL_CEL_RESP,'
      '  TEL_MAE = :TEL_MAE,'
      '  TEL_PAI = :TEL_PAI,'
      '  TEL_RESP = :TEL_RESP,'
      '  TURMA = :TURMA,'
      '  TURNO = :TURNO,'
      '  UF_ESCO_ANT = :UF_ESCO_ANT,'
      '  UF_MAE = :UF_MAE,'
      '  UF_PAI = :UF_PAI,'
      '  UF_RESP = :UF_RESP,'
      '  USUARIO = :USUARIO'
      'where'
      '  COD_MATI = :OLD_COD_MATI')
    GeneratorField.ApplyEvent = gamOnPost
    Left = 36
    Top = 196
    object IBDS_MATRICULASCOD_MATI: TIntegerField
      FieldName = 'COD_MATI'
      Origin = '"MATRICUL"."COD_MATI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDS_MATRICULASMATRICULA: TIBStringField
      FieldName = 'MATRICULA'
      Origin = '"MATRICUL"."MATRICULA"'
      Size = 17
    end
    object IBDS_MATRICULASDATA_MATRICULA: TDateTimeField
      FieldName = 'DATA_MATRICULA'
      Origin = '"MATRICUL"."DATA_MATRICULA"'
    end
    object IBDS_MATRICULASANO_LETIVO: TIBStringField
      FieldName = 'ANO_LETIVO'
      Origin = '"MATRICUL"."ANO_LETIVO"'
      Size = 4
    end
    object IBDS_MATRICULASCURSO: TIBStringField
      FieldName = 'CURSO'
      Origin = '"MATRICUL"."CURSO"'
      Size = 21
    end
    object IBDS_MATRICULASSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"MATRICUL"."SERIE"'
      Size = 30
    end
    object IBDS_MATRICULASTURNO: TIBStringField
      FieldName = 'TURNO'
      Origin = '"MATRICUL"."TURNO"'
      Size = 5
    end
    object IBDS_MATRICULASTURMA: TIBStringField
      FieldName = 'TURMA'
      Origin = '"MATRICUL"."TURMA"'
      Size = 10
    end
    object IBDS_MATRICULASNOME_ALUNO: TIBStringField
      FieldName = 'NOME_ALUNO'
      Origin = '"MATRICUL"."NOME_ALUNO"'
      Size = 50
    end
    object IBDS_MATRICULASSEXO: TIBStringField
      FieldName = 'SEXO'
      Origin = '"MATRICUL"."SEXO"'
      Size = 9
    end
    object IBDS_MATRICULASDATA_NASCIMENTO: TDateTimeField
      FieldName = 'DATA_NASCIMENTO'
      Origin = '"MATRICUL"."DATA_NASCIMENTO"'
    end
    object IBDS_MATRICULASESCOLA_ANTERIOR: TIBStringField
      FieldName = 'ESCOLA_ANTERIOR'
      Origin = '"MATRICUL"."ESCOLA_ANTERIOR"'
      Size = 50
    end
    object IBDS_MATRICULASCIDADE_ESCO_ANT: TIBStringField
      FieldName = 'CIDADE_ESCO_ANT'
      Origin = '"MATRICUL"."CIDADE_ESCO_ANT"'
      Size = 25
    end
    object IBDS_MATRICULASESTADO_ESCO_ANT: TIBStringField
      FieldName = 'ESTADO_ESCO_ANT'
      Origin = '"MATRICUL"."ESTADO_ESCO_ANT"'
      Size = 25
    end
    object IBDS_MATRICULASUF_ESCO_ANT: TIBStringField
      FieldName = 'UF_ESCO_ANT'
      Origin = '"MATRICUL"."UF_ESCO_ANT"'
      Size = 2
    end
    object IBDS_MATRICULASNOME_PAI: TIBStringField
      FieldName = 'NOME_PAI'
      Origin = '"MATRICUL"."NOME_PAI"'
      Size = 50
    end
    object IBDS_MATRICULASENDERECO_PAI: TIBStringField
      FieldName = 'ENDERECO_PAI'
      Origin = '"MATRICUL"."ENDERECO_PAI"'
      Size = 50
    end
    object IBDS_MATRICULASBAIRRO_PAI: TIBStringField
      FieldName = 'BAIRRO_PAI'
      Origin = '"MATRICUL"."BAIRRO_PAI"'
      Size = 30
    end
    object IBDS_MATRICULASCIDADE_PAI: TIBStringField
      FieldName = 'CIDADE_PAI'
      Origin = '"MATRICUL"."CIDADE_PAI"'
      Size = 25
    end
    object IBDS_MATRICULASCEP_PAI: TIBStringField
      FieldName = 'CEP_PAI'
      Origin = '"MATRICUL"."CEP_PAI"'
      Size = 10
    end
    object IBDS_MATRICULASESTADO_PAI: TIBStringField
      FieldName = 'ESTADO_PAI'
      Origin = '"MATRICUL"."ESTADO_PAI"'
      Size = 25
    end
    object IBDS_MATRICULASUF_PAI: TIBStringField
      FieldName = 'UF_PAI'
      Origin = '"MATRICUL"."UF_PAI"'
      Size = 2
    end
    object IBDS_MATRICULASTEL_PAI: TIBStringField
      FieldName = 'TEL_PAI'
      Origin = '"MATRICUL"."TEL_PAI"'
    end
    object IBDS_MATRICULASNOME_MAE: TIBStringField
      FieldName = 'NOME_MAE'
      Origin = '"MATRICUL"."NOME_MAE"'
      Size = 50
    end
    object IBDS_MATRICULASENDERECO_MAE: TIBStringField
      FieldName = 'ENDERECO_MAE'
      Origin = '"MATRICUL"."ENDERECO_MAE"'
      Size = 50
    end
    object IBDS_MATRICULASBAIRRO_MAE: TIBStringField
      FieldName = 'BAIRRO_MAE'
      Origin = '"MATRICUL"."BAIRRO_MAE"'
      Size = 30
    end
    object IBDS_MATRICULASCIDADE_MAE: TIBStringField
      FieldName = 'CIDADE_MAE'
      Origin = '"MATRICUL"."CIDADE_MAE"'
      Size = 25
    end
    object IBDS_MATRICULASCEP_MAE: TIBStringField
      FieldName = 'CEP_MAE'
      Origin = '"MATRICUL"."CEP_MAE"'
      Size = 10
    end
    object IBDS_MATRICULASESTADO_MAE: TIBStringField
      FieldName = 'ESTADO_MAE'
      Origin = '"MATRICUL"."ESTADO_MAE"'
      Size = 25
    end
    object IBDS_MATRICULASUF_MAE: TIBStringField
      FieldName = 'UF_MAE'
      Origin = '"MATRICUL"."UF_MAE"'
      Size = 2
    end
    object IBDS_MATRICULASTEL_MAE: TIBStringField
      FieldName = 'TEL_MAE'
      Origin = '"MATRICUL"."TEL_MAE"'
    end
    object IBDS_MATRICULASNOME_RESP: TIBStringField
      FieldName = 'NOME_RESP'
      Origin = '"MATRICUL"."NOME_RESP"'
      Size = 50
    end
    object IBDS_MATRICULASENDERECO_RESP: TIBStringField
      FieldName = 'ENDERECO_RESP'
      Origin = '"MATRICUL"."ENDERECO_RESP"'
      Size = 50
    end
    object IBDS_MATRICULASBAIRRO_RESP: TIBStringField
      FieldName = 'BAIRRO_RESP'
      Origin = '"MATRICUL"."BAIRRO_RESP"'
      Size = 30
    end
    object IBDS_MATRICULASCIDADE_RESP: TIBStringField
      FieldName = 'CIDADE_RESP'
      Origin = '"MATRICUL"."CIDADE_RESP"'
      Size = 25
    end
    object IBDS_MATRICULASCEP_RESP: TIBStringField
      FieldName = 'CEP_RESP'
      Origin = '"MATRICUL"."CEP_RESP"'
      Size = 10
    end
    object IBDS_MATRICULASESTADO_RESP: TIBStringField
      FieldName = 'ESTADO_RESP'
      Origin = '"MATRICUL"."ESTADO_RESP"'
      Size = 25
    end
    object IBDS_MATRICULASUF_RESP: TIBStringField
      FieldName = 'UF_RESP'
      Origin = '"MATRICUL"."UF_RESP"'
      Size = 2
    end
    object IBDS_MATRICULASTEL_RESP: TIBStringField
      FieldName = 'TEL_RESP'
      Origin = '"MATRICUL"."TEL_RESP"'
    end
    object IBDS_MATRICULASTEL_CEL_RESP: TIBStringField
      FieldName = 'TEL_CEL_RESP'
      Origin = '"MATRICUL"."TEL_CEL_RESP"'
    end
    object IBDS_MATRICULASRG_RESP: TIBStringField
      FieldName = 'RG_RESP'
      Origin = '"MATRICUL"."RG_RESP"'
      Size = 25
    end
    object IBDS_MATRICULASCPF_RESP: TIBStringField
      FieldName = 'CPF_RESP'
      Origin = '"MATRICUL"."CPF_RESP"'
      Size = 14
    end
    object IBDS_MATRICULASESTAGIO: TIBStringField
      FieldName = 'ESTAGIO'
      Origin = '"MATRICUL"."ESTAGIO"'
      Size = 8
    end
    object IBDS_MATRICULASUSUARIO: TIBStringField
      FieldName = 'USUARIO'
      Origin = '"MATRICUL"."USUARIO"'
    end
    object IBDS_MATRICULASFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = '"MATRICUL"."FOTO"'
      Size = 8
    end
    object IBDS_MATRICULASCG: TIntegerField
      FieldName = 'CG'
      Origin = '"MATRICUL"."CG"'
    end
    object IBDS_MATRICULASNUMERO_CARNE: TIBStringField
      FieldName = 'NUMERO_CARNE'
      Origin = '"MATRICUL"."NUMERO_CARNE"'
      Size = 10
    end
    object IBDS_MATRICULASNATURALIDADE: TIBStringField
      FieldName = 'NATURALIDADE'
      Origin = '"MATRICUL"."NATURALIDADE"'
      Size = 25
    end
    object IBDS_MATRICULASCERT_IMPRESSO: TIntegerField
      FieldName = 'CERT_IMPRESSO'
      Origin = '"MATRICUL"."CERT_IMPRESSO"'
    end
    object IBDS_MATRICULASESTADO_NATURALIDADE: TIBStringField
      FieldName = 'ESTADO_NATURALIDADE'
      Origin = '"MATRICUL"."ESTADO_NATURALIDADE"'
      Size = 25
    end
    object IBDS_MATRICULASSITUACAO_ALUNO: TIBStringField
      FieldName = 'SITUACAO_ALUNO'
      Origin = '"MATRICUL"."SITUACAO_ALUNO"'
      Size = 17
    end
  end
  object Ds_MATRICULAS: TDataSource
    DataSet = IBDS_MATRICULAS
    Left = 32
    Top = 248
  end
  object IBDS_BOLETIM: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    AfterInsert = IBDS_BOLETIMAfterInsert
    BufferChunks = 10
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from BOLETIM'
      'where'
      '  COD_BOLE = :OLD_COD_BOLE')
    InsertSQL.Strings = (
      'insert into BOLETIM'
      
        '  (COD_BOLE, MATRICULA, NOME_ALUNO, ANO_LETIVO, CURSO, SERIE, TU' +
        'RNO, TURMA, '
      
        '   SEXO, DATA_NASCIMENTO, NOME_PAI, NOME_MAE, NOME_RESP, TEL_RES' +
        'P, CPF_RESP)'
      'values'
      
        '  (:COD_BOLE, :MATRICULA, :NOME_ALUNO, :ANO_LETIVO, :CURSO, :SER' +
        'IE, :TURNO, '
      
        '   :TURMA, :SEXO, :DATA_NASCIMENTO, :NOME_PAI, :NOME_MAE, :NOME_' +
        'RESP, :TEL_RESP, '
      '   :CPF_RESP)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_BOLE,'
      '  MATRICULA,'
      '  NOME_ALUNO,'
      '  ANO_LETIVO,'
      '  CURSO,'
      '  SERIE,'
      '  TURNO,'
      '  TURMA,'
      '  SEXO,'
      '  DATA_NASCIMENTO,'
      '  NOME_PAI,'
      '  NOME_MAE,'
      '  NOME_RESP,'
      '  TEL_RESP,'
      '  CPF_RESP'
      'from BOLETIM '
      'where'
      '  COD_BOLE = :COD_BOLE')
    SelectSQL.Strings = (
      'select * from BOLETIM'
      'order by SERIE, NOME_ALUNO')
    ModifySQL.Strings = (
      'update BOLETIM'
      'set'
      '  COD_BOLE = :COD_BOLE,'
      '  MATRICULA = :MATRICULA,'
      '  NOME_ALUNO = :NOME_ALUNO,'
      '  ANO_LETIVO = :ANO_LETIVO,'
      '  CURSO = :CURSO,'
      '  SERIE = :SERIE,'
      '  TURNO = :TURNO,'
      '  TURMA = :TURMA,'
      '  SEXO = :SEXO,'
      '  DATA_NASCIMENTO = :DATA_NASCIMENTO,'
      '  NOME_PAI = :NOME_PAI,'
      '  NOME_MAE = :NOME_MAE,'
      '  NOME_RESP = :NOME_RESP,'
      '  TEL_RESP = :TEL_RESP,'
      '  CPF_RESP = :CPF_RESP'
      'where'
      '  COD_BOLE = :OLD_COD_BOLE')
    GeneratorField.ApplyEvent = gamOnPost
    Left = 212
    Top = 196
    object IBDS_BOLETIMCOD_BOLE: TIntegerField
      FieldName = 'COD_BOLE'
      Origin = '"BOLETIM"."COD_BOLE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDS_BOLETIMMATRICULA: TIBStringField
      FieldName = 'MATRICULA'
      Origin = '"BOLETIM"."MATRICULA"'
      Size = 17
    end
    object IBDS_BOLETIMNOME_ALUNO: TIBStringField
      FieldName = 'NOME_ALUNO'
      Origin = '"BOLETIM"."NOME_ALUNO"'
      Size = 50
    end
    object IBDS_BOLETIMANO_LETIVO: TIBStringField
      FieldName = 'ANO_LETIVO'
      Origin = '"BOLETIM"."ANO_LETIVO"'
      Size = 4
    end
    object IBDS_BOLETIMCURSO: TIBStringField
      FieldName = 'CURSO'
      Origin = '"BOLETIM"."CURSO"'
      Size = 21
    end
    object IBDS_BOLETIMSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"BOLETIM"."SERIE"'
      Size = 30
    end
    object IBDS_BOLETIMTURNO: TIBStringField
      FieldName = 'TURNO'
      Origin = '"BOLETIM"."TURNO"'
      Size = 5
    end
    object IBDS_BOLETIMTURMA: TIBStringField
      FieldName = 'TURMA'
      Origin = '"BOLETIM"."TURMA"'
      Size = 10
    end
    object IBDS_BOLETIMSEXO: TIBStringField
      FieldName = 'SEXO'
      Origin = '"BOLETIM"."SEXO"'
      Size = 9
    end
    object IBDS_BOLETIMDATA_NASCIMENTO: TDateTimeField
      FieldName = 'DATA_NASCIMENTO'
      Origin = '"BOLETIM"."DATA_NASCIMENTO"'
    end
    object IBDS_BOLETIMNOME_PAI: TIBStringField
      FieldName = 'NOME_PAI'
      Origin = '"BOLETIM"."NOME_PAI"'
      Size = 50
    end
    object IBDS_BOLETIMNOME_MAE: TIBStringField
      FieldName = 'NOME_MAE'
      Origin = '"BOLETIM"."NOME_MAE"'
      Size = 50
    end
    object IBDS_BOLETIMNOME_RESP: TIBStringField
      FieldName = 'NOME_RESP'
      Origin = '"BOLETIM"."NOME_RESP"'
      Size = 50
    end
    object IBDS_BOLETIMTEL_RESP: TIBStringField
      FieldName = 'TEL_RESP'
      Origin = '"BOLETIM"."TEL_RESP"'
    end
    object IBDS_BOLETIMCPF_RESP: TIBStringField
      FieldName = 'CPF_RESP'
      Origin = '"BOLETIM"."CPF_RESP"'
      Size = 14
    end
  end
  object Ds_BOLETIM: TDataSource
    DataSet = IBDS_BOLETIM
    Left = 216
    Top = 248
  end
  object IBDS_DiscAta: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    BufferChunks = 10
    SelectSQL.Strings = (
      'select distinct(DISCIPLINA) Disciplina'
      'from NOTAS'
      'where DISCIPLINA is not null'
      'order by 1')
    Left = 488
    Top = 304
  end
  object IBDS_NotAta: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    BufferChunks = 10
    DeleteSQL.Strings = (
      'delete from NOTAS'
      'where'
      '  COD_NOTA = :OLD_COD_NOTA')
    InsertSQL.Strings = (
      'insert into NOTAS'
      
        '  (ANO_LETIVO, COD_BOLE, COD_NOTA, DISCIPLINA, DISTRIBUIDA, ETAP' +
        'A_1_ABR, '
      
        '   ETAPA_1_M, ETAPA_1_MAR, ETAPA_1_AV3, ETAPA_1_R, ETAPA_2_JUN, ' +
        'ETAPA_2_M, ETAPA_2_MAI, ETAPA_2_AV3, '
      
        '   ETAPA_2_R, ETAPA_3_AGO, ETAPA_3_M, ETAPA_3_R, ETAPA_3_SET, ET' +
        'APA_3_AV3, ETAPA_4_M, '
      
        '   ETAPA_4_NOV, ETAPA_4_OUT, ETAPA_4_AV3, ETAPA_4_R, FALTAS, MAT' +
        'RICULA, MEDIA_FINAL, '
      
        '   PONTOS, PROVAO, PROVAO_R, RESULTADO_FINAL, SERIE, TURMA, TURN' +
        'O)'
      'values'
      
        '  (:ANO_LETIVO, :COD_BOLE, :COD_NOTA, :DISCIPLINA, :DISTRIBUIDA,' +
        ' :ETAPA_1_ABR, '
      
        '   :ETAPA_1_M, :ETAPA_1_MAR, :ETAPA_1_AV3, :ETAPA_1_R, :ETAPA_2_' +
        'JUN, :ETAPA_2_M, :ETAPA_2_MAI, :ETAPA_2_AV3, '
      
        '   :ETAPA_2_R, :ETAPA_3_AGO, :ETAPA_3_M, :ETAPA_3_R, :ETAPA_3_SE' +
        'T, :ETAPA_3_AV3, :ETAPA_4_M, '
      
        '   :ETAPA_4_NOV, :ETAPA_4_OUT, :ETAPA_4_AV3, :ETAPA_4_R, :FALTAS' +
        ', :MATRICULA, :MEDIA_FINAL, '
      
        '   :PONTOS, :PROVAO, :PROVAO_R, :RESULTADO_FINAL, :SERIE, :TURMA' +
        ', :TURNO)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_NOTA,'
      '  COD_BOLE,'
      '  MATRICULA,'
      '  ANO_LETIVO,'
      '  DISCIPLINA,'
      '  ETAPA_1_MAR,'
      '  ETAPA_1_ABR,'
      '  ETAPA_1_AV3,'
      '  ETAPA_1_M,'
      '  ETAPA_1_R,'
      '  ETAPA_2_MAI,'
      '  ETAPA_2_JUN,'
      '  ETAPA_2_AV3,'
      '  ETAPA_2_M,'
      '  ETAPA_2_R,'
      '  ETAPA_3_AGO,'
      '  ETAPA_3_SET,'
      '  ETAPA_3_AV3,'
      '  ETAPA_3_M,'
      '  ETAPA_3_R,'
      '  ETAPA_4_OUT,'
      '  ETAPA_4_NOV,'
      '  ETAPA_4_AV3,'
      '  ETAPA_4_M,'
      '  ETAPA_4_R,'
      '  PROVAO,'
      '  PROVAO_R,'
      '  MEDIA_FINAL,'
      '  FALTAS,'
      '  PONTOS,'
      '  RESULTADO_FINAL,'
      '  SERIE,'
      '  TURMA,'
      '  TURNO,'
      '  DISTRIBUIDA'
      'from NOTAS '
      'where'
      '  COD_NOTA = :COD_NOTA')
    SelectSQL.Strings = (
      'select * from NOTAS'
      'where DISCIPLINA is not null')
    ModifySQL.Strings = (
      'update NOTAS'
      'set'
      '  ANO_LETIVO = :ANO_LETIVO,'
      '  COD_BOLE = :COD_BOLE,'
      '  COD_NOTA = :COD_NOTA,'
      '  DISCIPLINA = :DISCIPLINA,'
      '  DISTRIBUIDA = :DISTRIBUIDA,'
      '  ETAPA_1_ABR = :ETAPA_1_ABR,'
      '  ETAPA_1_M = :ETAPA_1_M,'
      '  ETAPA_1_MAR = :ETAPA_1_MAR,'
      '  ETAPA_1_AV3 =:ETAPA_1_AV3,'
      '  ETAPA_1_R = :ETAPA_1_R,'
      '  ETAPA_2_JUN = :ETAPA_2_JUN,'
      '  ETAPA_2_M = :ETAPA_2_M,'
      '  ETAPA_2_MAI = :ETAPA_2_MAI,'
      '  ETAPA_2_AV3 =:ETAPA_2_AV3,'
      '  ETAPA_2_R = :ETAPA_2_R,'
      '  ETAPA_3_AGO = :ETAPA_3_AGO,'
      '  ETAPA_3_M = :ETAPA_3_M,'
      '  ETAPA_3_R = :ETAPA_3_R,'
      '  ETAPA_3_SET = :ETAPA_3_SET,'
      '  ETAPA_3_AV3 = :ETAPA_3_AV3,'
      '  ETAPA_4_M = :ETAPA_4_M,'
      '  ETAPA_4_NOV = :ETAPA_4_NOV,'
      '  ETAPA_4_OUT = :ETAPA_4_OUT,'
      '  ETAPA_4_AV3 = :ETAPA_4_AV3,'
      '  ETAPA_4_R = :ETAPA_4_R,'
      '  FALTAS = :FALTAS,'
      '  MATRICULA = :MATRICULA,'
      '  MEDIA_FINAL = :MEDIA_FINAL,'
      '  PONTOS = :PONTOS,'
      '  PROVAO = :PROVAO,'
      '  PROVAO_R = :PROVAO_R,'
      '  RESULTADO_FINAL = :RESULTADO_FINAL,'
      '  SERIE = :SERIE,'
      '  TURMA = :TURMA,'
      '  TURNO = :TURNO'
      'where'
      '  COD_NOTA = :OLD_COD_NOTA')
    Left = 568
    Top = 304
  end
  object ClientDS_Ata: TClientDataSet
    Aggregates = <>
    PacketRecords = 10
    Params = <>
    Left = 296
    Top = 304
  end
  object DS_Ata: TDataSource
    DataSet = ClientDS_Ata
    Left = 296
    Top = 360
  end
  object IBDS_MatAta: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from MATRICUL'
      'where'
      '  COD_MATI = :OLD_COD_MATI')
    InsertSQL.Strings = (
      'insert into MATRICUL'
      
        '  (COD_MATI, MATRICULA, DATA_MATRICULA, ANO_LETIVO, CURSO, SERIE' +
        ', TURNO, '
      
        '   TURMA, NOME_ALUNO, SEXO, DATA_NASCIMENTO, ESCOLA_ANTERIOR, CI' +
        'DADE_ESCO_ANT, '
      
        '   ESTADO_ESCO_ANT, UF_ESCO_ANT, NOME_PAI, ENDERECO_PAI, BAIRRO_' +
        'PAI, CIDADE_PAI, '
      
        '   CEP_PAI, ESTADO_PAI, UF_PAI, TEL_PAI, NOME_MAE, ENDERECO_MAE,' +
        ' BAIRRO_MAE, '
      
        '   CIDADE_MAE, CEP_MAE, ESTADO_MAE, UF_MAE, TEL_MAE, NOME_RESP, ' +
        'ENDERECO_RESP, '
      
        '   BAIRRO_RESP, CIDADE_RESP, CEP_RESP, ESTADO_RESP, UF_RESP, TEL' +
        '_RESP, '
      
        '   TEL_CEL_RESP, RG_RESP, CPF_RESP, ESTAGIO, USUARIO, FOTO, CG, ' +
        'NUMERO_CARNE)'
      'values'
      
        '  (:COD_MATI, :MATRICULA, :DATA_MATRICULA, :ANO_LETIVO, :CURSO, ' +
        ':SERIE, '
      
        '   :TURNO, :TURMA, :NOME_ALUNO, :SEXO, :DATA_NASCIMENTO, :ESCOLA' +
        '_ANTERIOR, '
      
        '   :CIDADE_ESCO_ANT, :ESTADO_ESCO_ANT, :UF_ESCO_ANT, :NOME_PAI, ' +
        ':ENDERECO_PAI, '
      
        '   :BAIRRO_PAI, :CIDADE_PAI, :CEP_PAI, :ESTADO_PAI, :UF_PAI, :TE' +
        'L_PAI, '
      
        '   :NOME_MAE, :ENDERECO_MAE, :BAIRRO_MAE, :CIDADE_MAE, :CEP_MAE,' +
        ' :ESTADO_MAE, '
      
        '   :UF_MAE, :TEL_MAE, :NOME_RESP, :ENDERECO_RESP, :BAIRRO_RESP, ' +
        ':CIDADE_RESP, '
      
        '   :CEP_RESP, :ESTADO_RESP, :UF_RESP, :TEL_RESP, :TEL_CEL_RESP, ' +
        ':RG_RESP, '
      '   :CPF_RESP, :ESTAGIO, :USUARIO, :FOTO, :CG, :NUMERO_CARNE)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_MATI,'
      '  MATRICULA,'
      '  DATA_MATRICULA,'
      '  ANO_LETIVO,'
      '  CURSO,'
      '  SERIE,'
      '  TURNO,'
      '  TURMA,'
      '  NOME_ALUNO,'
      '  SEXO,'
      '  DATA_NASCIMENTO,'
      '  ESCOLA_ANTERIOR,'
      '  CIDADE_ESCO_ANT,'
      '  ESTADO_ESCO_ANT,'
      '  UF_ESCO_ANT,'
      '  NOME_PAI,'
      '  ENDERECO_PAI,'
      '  BAIRRO_PAI,'
      '  CIDADE_PAI,'
      '  CEP_PAI,'
      '  ESTADO_PAI,'
      '  UF_PAI,'
      '  TEL_PAI,'
      '  NOME_MAE,'
      '  ENDERECO_MAE,'
      '  BAIRRO_MAE,'
      '  CIDADE_MAE,'
      '  CEP_MAE,'
      '  ESTADO_MAE,'
      '  UF_MAE,'
      '  TEL_MAE,'
      '  NOME_RESP,'
      '  ENDERECO_RESP,'
      '  BAIRRO_RESP,'
      '  CIDADE_RESP,'
      '  CEP_RESP,'
      '  ESTADO_RESP,'
      '  UF_RESP,'
      '  TEL_RESP,'
      '  TEL_CEL_RESP,'
      '  RG_RESP,'
      '  CPF_RESP,'
      '  ESTAGIO,'
      '  USUARIO,'
      '  FOTO,'
      '  CG,'
      '  NUMERO_CARNE'
      'from MATRICUL '
      'where'
      '  COD_MATI = :COD_MATI')
    SelectSQL.Strings = (
      'select * from MATRICUL')
    ModifySQL.Strings = (
      'update MATRICUL'
      'set'
      '  COD_MATI = :COD_MATI,'
      '  MATRICULA = :MATRICULA,'
      '  DATA_MATRICULA = :DATA_MATRICULA,'
      '  ANO_LETIVO = :ANO_LETIVO,'
      '  CURSO = :CURSO,'
      '  SERIE = :SERIE,'
      '  TURNO = :TURNO,'
      '  TURMA = :TURMA,'
      '  NOME_ALUNO = :NOME_ALUNO,'
      '  SEXO = :SEXO,'
      '  DATA_NASCIMENTO = :DATA_NASCIMENTO,'
      '  ESCOLA_ANTERIOR = :ESCOLA_ANTERIOR,'
      '  CIDADE_ESCO_ANT = :CIDADE_ESCO_ANT,'
      '  ESTADO_ESCO_ANT = :ESTADO_ESCO_ANT,'
      '  UF_ESCO_ANT = :UF_ESCO_ANT,'
      '  NOME_PAI = :NOME_PAI,'
      '  ENDERECO_PAI = :ENDERECO_PAI,'
      '  BAIRRO_PAI = :BAIRRO_PAI,'
      '  CIDADE_PAI = :CIDADE_PAI,'
      '  CEP_PAI = :CEP_PAI,'
      '  ESTADO_PAI = :ESTADO_PAI,'
      '  UF_PAI = :UF_PAI,'
      '  TEL_PAI = :TEL_PAI,'
      '  NOME_MAE = :NOME_MAE,'
      '  ENDERECO_MAE = :ENDERECO_MAE,'
      '  BAIRRO_MAE = :BAIRRO_MAE,'
      '  CIDADE_MAE = :CIDADE_MAE,'
      '  CEP_MAE = :CEP_MAE,'
      '  ESTADO_MAE = :ESTADO_MAE,'
      '  UF_MAE = :UF_MAE,'
      '  TEL_MAE = :TEL_MAE,'
      '  NOME_RESP = :NOME_RESP,'
      '  ENDERECO_RESP = :ENDERECO_RESP,'
      '  BAIRRO_RESP = :BAIRRO_RESP,'
      '  CIDADE_RESP = :CIDADE_RESP,'
      '  CEP_RESP = :CEP_RESP,'
      '  ESTADO_RESP = :ESTADO_RESP,'
      '  UF_RESP = :UF_RESP,'
      '  TEL_RESP = :TEL_RESP,'
      '  TEL_CEL_RESP = :TEL_CEL_RESP,'
      '  RG_RESP = :RG_RESP,'
      '  CPF_RESP = :CPF_RESP,'
      '  ESTAGIO = :ESTAGIO,'
      '  USUARIO = :USUARIO,'
      '  FOTO = :FOTO,'
      '  CG = :CG,'
      '  NUMERO_CARNE = :NUMERO_CARNE'
      'where'
      '  COD_MATI = :OLD_COD_MATI')
    Left = 568
    Top = 360
  end
  object IBConsulta1: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      'select * from MATERIAS')
    Left = 640
    Top = 312
  end
  object DSConsulta1: TDataSource
    DataSet = IBConsulta1
    Left = 640
    Top = 368
  end
  object IBConsulta2: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      'select * from MATERIAS')
    Left = 712
    Top = 312
  end
  object DSConsulta2: TDataSource
    DataSet = IBConsulta2
    Left = 712
    Top = 368
  end
  object IBDS_NOTAS: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    AfterInsert = IBDS_NOTASAfterInsert
    BufferChunks = 10
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from NOTAS'
      'where'
      '  COD_NOTA = :OLD_COD_NOTA')
    InsertSQL.Strings = (
      'insert into NOTAS'
      
        '  (ANO_LETIVO, COD_BOLE, COD_NOTA, DISCIPLINA, DISTRIBUIDA, ETAP' +
        'A_1_ABR, '
      
        '   ETAPA_1_M, ETAPA_1_MAR, ETAPA_1_AV3, ETAPA_1_R, ETAPA_2_JUN, ' +
        'ETAPA_2_M, ETAPA_2_MAI, '
      
        '   ETAPA_2_R, ETAPA_2_AV3, ETAPA_3_AGO, ETAPA_3_M, ETAPA_3_R, ET' +
        'APA_3_SET, ETAPA_3_AV3, ETAPA_4_M, '
      
        '   ETAPA_4_NOV, ETAPA_4_OUT, ETAPA_4_R, ETAPA_4_AV3, FALTAS, MAT' +
        'RICULA, MEDIA_FINAL, '
      
        '   PONTOS, PROVAO, PROVAO_R, RESULTADO_FINAL, SERIE, TURMA, TURN' +
        'O)'
      'values'
      
        '  (:ANO_LETIVO, :COD_BOLE, :COD_NOTA, :DISCIPLINA, :DISTRIBUIDA,' +
        ' :ETAPA_1_ABR, '
      
        '   :ETAPA_1_M, :ETAPA_1_MAR, :ETAPA_1_AV3, :ETAPA_1_R, :ETAPA_2_' +
        'JUN, :ETAPA_2_M, :ETAPA_2_MAI, '
      
        '   :ETAPA_2_R, :ETAPA_2_AV3, :ETAPA_3_AGO, :ETAPA_3_M, :ETAPA_3_' +
        'R, :ETAPA_3_SET, :ETAPA_3_AV3, :ETAPA_4_M, '
      
        '   :ETAPA_4_NOV, :ETAPA_4_OUT, :ETAPA_4_R, :ETAPA_4_AV3, :FALTAS' +
        ', :MATRICULA, :MEDIA_FINAL, '
      
        '   :PONTOS, :PROVAO, :PROVAO_R, :RESULTADO_FINAL, :SERIE, :TURMA' +
        ', :TURNO)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_NOTA,'
      '  COD_BOLE,'
      '  MATRICULA,'
      '  ANO_LETIVO,'
      '  DISCIPLINA,'
      '  ETAPA_1_MAR,'
      '  ETAPA_1_ABR,'
      '  ETAPA_1_AV3'
      '  ETAPA_1_M,'
      '  ETAPA_1_R,'
      '  ETAPA_2_MAI,'
      '  ETAPA_2_JUN,'
      '  ETAPA_2_AV3,'
      '  ETAPA_2_M,'
      '  ETAPA_2_R,'
      '  ETAPA_3_AGO,'
      '  ETAPA_3_SET,'
      '  ETAPA_3_AV3,'
      '  ETAPA_3_M,'
      '  ETAPA_3_R,'
      '  ETAPA_4_OUT,'
      '  ETAPA_4_NOV,'
      '  ETAPA_4_AV3,'
      '  ETAPA_4_M,'
      '  ETAPA_4_R,'
      '  PROVAO,'
      '  PROVAO_R,'
      '  MEDIA_FINAL,'
      '  FALTAS,'
      '  PONTOS,'
      '  RESULTADO_FINAL,'
      '  SERIE,'
      '  TURMA,'
      '  TURNO,'
      '  DISTRIBUIDA'
      'from NOTAS '
      'where'
      '  COD_NOTA = :COD_NOTA')
    SelectSQL.Strings = (
      
        'select ANO_LETIVO, COD_BOLE, COD_NOTA, DISCIPLINA, DISTRIBUIDA, ' +
        'ETAPA_1_ABR, ETAPA_1_AV3, ETAPA_1_M, ETAPA_1_MAR, ETAPA_1_R, ETA' +
        'PA_2_AV3, ETAPA_2_JUN, ETAPA_2_M, ETAPA_2_MAI, ETAPA_2_R, ETAPA_' +
        '3_AGO, ETAPA_3_AV3, ETAPA_3_M, ETAPA_3_R, ETAPA_3_SET, ETAPA_4_A' +
        'V3, ETAPA_4_M, ETAPA_4_NOV, ETAPA_4_OUT, ETAPA_4_R, FALTAS, MATR' +
        'ICULA, MEDIA_FINAL, PONTOS, PROVAO, PROVAO_R, RESULTADO_FINAL, S' +
        'ERIE, TURMA, TURNO from NOTAS'
      'order by COD_NOTA')
    ModifySQL.Strings = (
      'update NOTAS'
      'set'
      '  ANO_LETIVO = :ANO_LETIVO,'
      '  COD_BOLE = :COD_BOLE,'
      '  COD_NOTA = :COD_NOTA,'
      '  DISCIPLINA = :DISCIPLINA,'
      '  DISTRIBUIDA = :DISTRIBUIDA,'
      '  ETAPA_1_ABR = :ETAPA_1_ABR,'
      '  ETAPA_1_MAR = :ETAPA_1_MAR,'
      '  ETAPA_1_AV3 =:ETAPA_1_AV3,'
      '  ETAPA_1_M = :ETAPA_1_M,'
      '  ETAPA_1_R = :ETAPA_1_R,'
      '  ETAPA_2_JUN = :ETAPA_2_JUN,'
      '  ETAPA_2_MAI = :ETAPA_2_MAI,'
      '  ETAPA_2_AV3 =:ETAPA_2_AV3,'
      '  ETAPA_2_M = :ETAPA_2_M,'
      '  ETAPA_2_R = :ETAPA_2_R,'
      '  ETAPA_3_AGO = :ETAPA_3_AGO,'
      '  ETAPA_3_SET = :ETAPA_3_SET,'
      '  ETAPA_3_AV3 =:ETAPA_3_AV3,'
      '  ETAPA_3_M = :ETAPA_3_M,'
      '  ETAPA_3_R = :ETAPA_3_R,'
      '  ETAPA_4_NOV = :ETAPA_4_NOV,'
      '  ETAPA_4_OUT = :ETAPA_4_OUT,'
      '  ETAPA_4_AV3 =:ETAPA_4_AV3,'
      '  ETAPA_4_M = :ETAPA_4_M,'
      '  ETAPA_4_R = :ETAPA_4_R,'
      '  FALTAS = :FALTAS,'
      '  MATRICULA = :MATRICULA,'
      '  MEDIA_FINAL = :MEDIA_FINAL,'
      '  PONTOS = :PONTOS,'
      '  PROVAO = :PROVAO,'
      '  PROVAO_R = :PROVAO_R,'
      '  RESULTADO_FINAL = :RESULTADO_FINAL,'
      '  SERIE = :SERIE,'
      '  TURMA = :TURMA,'
      '  TURNO = :TURNO'
      'where'
      '  COD_NOTA = :OLD_COD_NOTA')
    GeneratorField.ApplyEvent = gamOnPost
    Left = 28
    Top = 300
    object IBDS_NOTASCOD_NOTA: TIntegerField
      FieldName = 'COD_NOTA'
      Origin = '"NOTAS"."COD_NOTA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDS_NOTASCOD_BOLE: TIntegerField
      FieldName = 'COD_BOLE'
      Origin = '"NOTAS"."COD_BOLE"'
      Required = True
    end
    object IBDS_NOTASMATRICULA: TIBStringField
      FieldName = 'MATRICULA'
      Origin = '"NOTAS"."MATRICULA"'
      Size = 17
    end
    object IBDS_NOTASANO_LETIVO: TIBStringField
      FieldName = 'ANO_LETIVO'
      Origin = '"NOTAS"."ANO_LETIVO"'
      Size = 4
    end
    object IBDS_NOTASDISCIPLINA: TIBStringField
      FieldName = 'DISCIPLINA'
      Origin = '"NOTAS"."DISCIPLINA"'
      Size = 30
    end
    object IBDS_NOTASETAPA_1_MAR: TIBStringField
      FieldName = 'ETAPA_1_MAR'
      Origin = '"NOTAS"."ETAPA_1_MAR"'
      Size = 5
    end
    object IBDS_NOTASETAPA_1_ABR: TIBStringField
      FieldName = 'ETAPA_1_ABR'
      Origin = '"NOTAS"."ETAPA_1_ABR"'
      Size = 5
    end
    object IBDS_NOTASETAPA_1_AV3: TIBStringField
      FieldName = 'ETAPA_1_AV3'
      Origin = '"NOTAS"."ETAPA_1_AV3"'
      Size = 5
    end
    object IBDS_NOTASETAPA_1_M: TIBStringField
      FieldName = 'ETAPA_1_M'
      Origin = '"NOTAS"."ETAPA_1_M"'
      Size = 5
    end
    object IBDS_NOTASETAPA_1_R: TIBStringField
      FieldName = 'ETAPA_1_R'
      Origin = '"NOTAS"."ETAPA_1_R"'
      Size = 5
    end
    object IBDS_NOTASETAPA_2_MAI: TIBStringField
      FieldName = 'ETAPA_2_MAI'
      Origin = '"NOTAS"."ETAPA_2_MAI"'
      Size = 5
    end
    object IBDS_NOTASETAPA_2_JUN: TIBStringField
      FieldName = 'ETAPA_2_JUN'
      Origin = '"NOTAS"."ETAPA_2_JUN"'
      Size = 5
    end
    object IBDS_NOTASETAPA_2_AV3: TIBStringField
      FieldName = 'ETAPA_2_AV3'
      Origin = '"NOTAS"."ETAPA_2_AV3"'
      Size = 5
    end
    object IBDS_NOTASETAPA_2_M: TIBStringField
      FieldName = 'ETAPA_2_M'
      Origin = '"NOTAS"."ETAPA_2_M"'
      Size = 5
    end
    object IBDS_NOTASETAPA_2_R: TIBStringField
      FieldName = 'ETAPA_2_R'
      Origin = '"NOTAS"."ETAPA_2_R"'
      Size = 5
    end
    object IBDS_NOTASETAPA_3_AGO: TIBStringField
      FieldName = 'ETAPA_3_AGO'
      Origin = '"NOTAS"."ETAPA_3_AGO"'
      Size = 5
    end
    object IBDS_NOTASETAPA_3_SET: TIBStringField
      FieldName = 'ETAPA_3_SET'
      Origin = '"NOTAS"."ETAPA_3_SET"'
      Size = 5
    end
    object IBDS_NOTASETAPA_3_AV3: TIBStringField
      FieldName = 'ETAPA_3_AV3'
      Origin = '"NOTAS"."ETAPA_3_AV3"'
      Size = 5
    end
    object IBDS_NOTASETAPA_3_M: TIBStringField
      FieldName = 'ETAPA_3_M'
      Origin = '"NOTAS"."ETAPA_3_M"'
      Size = 5
    end
    object IBDS_NOTASETAPA_3_R: TIBStringField
      FieldName = 'ETAPA_3_R'
      Origin = '"NOTAS"."ETAPA_3_R"'
      Size = 5
    end
    object IBDS_NOTASETAPA_4_OUT: TIBStringField
      FieldName = 'ETAPA_4_OUT'
      Origin = '"NOTAS"."ETAPA_4_OUT"'
      Size = 5
    end
    object IBDS_NOTASETAPA_4_NOV: TIBStringField
      FieldName = 'ETAPA_4_NOV'
      Origin = '"NOTAS"."ETAPA_4_NOV"'
      Size = 5
    end
    object IBDS_NOTASETAPA_4_AV3: TIBStringField
      FieldName = 'ETAPA_4_AV3'
      Origin = '"NOTAS"."ETAPA_4_AV3"'
      Size = 5
    end
    object IBDS_NOTASETAPA_4_M: TIBStringField
      FieldName = 'ETAPA_4_M'
      Origin = '"NOTAS"."ETAPA_4_M"'
      Size = 5
    end
    object IBDS_NOTASETAPA_4_R: TIBStringField
      FieldName = 'ETAPA_4_R'
      Origin = '"NOTAS"."ETAPA_4_R"'
      Size = 5
    end
    object IBDS_NOTASPROVAO: TIBStringField
      FieldName = 'PROVAO'
      Origin = '"NOTAS"."PROVAO"'
      Size = 5
    end
    object IBDS_NOTASPROVAO_R: TIBStringField
      FieldName = 'PROVAO_R'
      Origin = '"NOTAS"."PROVAO_R"'
      Size = 5
    end
    object IBDS_NOTASMEDIA_FINAL: TIBStringField
      FieldName = 'MEDIA_FINAL'
      Origin = '"NOTAS"."MEDIA_FINAL"'
      Size = 5
    end
    object IBDS_NOTASFALTAS: TIntegerField
      FieldName = 'FALTAS'
      Origin = '"NOTAS"."FALTAS"'
    end
    object IBDS_NOTASPONTOS: TIBStringField
      FieldName = 'PONTOS'
      Origin = '"NOTAS"."PONTOS"'
      Size = 4
    end
    object IBDS_NOTASRESULTADO_FINAL: TIBStringField
      FieldName = 'RESULTADO_FINAL'
      Origin = '"NOTAS"."RESULTADO_FINAL"'
      Size = 13
    end
    object IBDS_NOTASSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"NOTAS"."SERIE"'
      Size = 30
    end
    object IBDS_NOTASTURMA: TIBStringField
      FieldName = 'TURMA'
      Origin = '"NOTAS"."TURMA"'
      Size = 10
    end
    object IBDS_NOTASTURNO: TIBStringField
      FieldName = 'TURNO'
      Origin = '"NOTAS"."TURNO"'
      Size = 5
    end
    object IBDS_NOTASDISTRIBUIDA: TIBStringField
      FieldName = 'DISTRIBUIDA'
      Origin = '"NOTAS"."DISTRIBUIDA"'
      Size = 3
    end
  end
  object Ds_NOTAS: TDataSource
    DataSet = IBDS_NOTAS
    Left = 24
    Top = 352
  end
  object IBDS_DiscAta2: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    BufferChunks = 10
    SelectSQL.Strings = (
      'select distinct(DISCIPLINA) Disciplina'
      'from NOTAS'
      'where DISCIPLINA is not null'
      'order by COD_NOTA')
    Left = 488
    Top = 360
    object IBDS_DiscAta2DISCIPLINA: TIBStringField
      FieldName = 'DISCIPLINA'
      Origin = '"NOTAS"."DISCIPLINA"'
      Size = 30
    end
  end
  object IBDS_CURSOS: TIBDataSet
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    AfterInsert = IBDS_CURSOSAfterInsert
    BufferChunks = 10
    CachedUpdates = True
    DeleteSQL.Strings = (
      'delete from CURSOS'
      'where'
      '  COD_CURS = :OLD_COD_CURS')
    InsertSQL.Strings = (
      'insert into CURSOS'
      '  (COD_CURS, CURSO, SERIE, TURMA, TURNO)'
      'values'
      '  (:COD_CURS, :CURSO, :SERIE, :TURMA, :TURNO)')
    RefreshSQL.Strings = (
      'Select '
      '  COD_CURS,'
      '  CURSO,'
      '  SERIE,'
      '  TURMA,'
      '  TURNO'
      'from CURSOS '
      'where'
      '  COD_CURS = :COD_CURS')
    SelectSQL.Strings = (
      'select *  from CURSOS'
      'order by COD_CURS')
    ModifySQL.Strings = (
      'update CURSOS'
      'set'
      '  COD_CURS = :COD_CURS,'
      '  CURSO = :CURSO,'
      '  SERIE = :SERIE,'
      '  TURMA = :TURMA,'
      '  TURNO = :TURNO'
      'where'
      '  COD_CURS = :OLD_COD_CURS')
    GeneratorField.ApplyEvent = gamOnPost
    Left = 116
    Top = 300
    object IBDS_CURSOSCOD_CURS: TIntegerField
      FieldName = 'COD_CURS'
      Origin = '"CURSOS"."COD_CURS"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDS_CURSOSCURSO: TIBStringField
      FieldName = 'CURSO'
      Origin = '"CURSOS"."CURSO"'
      Size = 21
    end
    object IBDS_CURSOSSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"CURSOS"."SERIE"'
      Size = 30
    end
    object IBDS_CURSOSTURMA: TIBStringField
      FieldName = 'TURMA'
      Origin = '"CURSOS"."TURMA"'
      Size = 10
    end
    object IBDS_CURSOSTURNO: TIBStringField
      FieldName = 'TURNO'
      Origin = '"CURSOS"."TURNO"'
      Size = 5
    end
  end
  object Ds_CURSOS: TDataSource
    DataSet = IBDS_CURSOS
    Left = 112
    Top = 352
  end
  object IBQ_GeraCOD: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction
    ForcedRefresh = True
    BufferChunks = 10
    CachedUpdates = True
    SQL.Strings = (
      'select max (COD_ALUN) from ALUNOS')
    Left = 304
    Top = 8
  end
end
