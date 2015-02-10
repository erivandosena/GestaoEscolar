object DmSeleciona: TDmSeleciona
  OldCreateOrder = False
  Height = 318
  Width = 241
  object IBQ_AnoLetivo: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    CachedUpdates = True
    SQL.Strings = (
      'select ANO_LETIVO, CURSO, SERIE, TURMA, TURNO from MATRICUL')
    Left = 40
    Top = 24
  end
  object Ds_AnoLetivo: TDataSource
    DataSet = IBQ_AnoLetivo
    Left = 40
    Top = 80
  end
  object IBQ_Disciplinas: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    CachedUpdates = True
    SQL.Strings = (
      'select DISCIPLINA, LDB from MATERIAS')
    Left = 136
    Top = 24
  end
  object Ds_Disciplinas: TDataSource
    DataSet = IBQ_Disciplinas
    Left = 136
    Top = 80
  end
end
