object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 165
  Width = 204
  object Con: TFDConnection
    Params.Strings = (
      'DriverID=MSSQL'
      'Server=(local)'
      'User_Name=sa'
      'Password=aram98'
      'OSAuthent=No'
      'Database=Estoque')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 32
  end
  object QryAux: TFDQuery
    Connection = Con
    Left = 112
    Top = 32
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 80
    Top = 96
  end
end
