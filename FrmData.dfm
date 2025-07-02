object mdlData: TmdlData
  OldCreateOrder = False
  Left = 206
  Top = 40
  Height = 158
  Width = 223
  object conn: TADOConnection
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    BeforeConnect = connBeforeConnect
    Left = 16
    Top = 16
  end
  object qry: TADOQuery
    Connection = conn
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'num'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'mdlName'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      
        'select app,edit,del,Qry,prin,sh,Out from frmrights where Num=:nu' +
        'm and mdlName=:mdlName')
    Left = 56
    Top = 16
  end
end
