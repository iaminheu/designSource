inherited Frm_Edit_pwd: TFrm_Edit_pwd
  Left = 420
  Caption = 'Frm_Edit_pwd'
  ClientHeight = 358
  ClientWidth = 477
  PixelsPerInch = 120
  TextHeight = 15
  object Label10: TLabel [0]
    Left = 38
    Top = 395
    Width = 77
    Height = 15
    Caption = #38754'    '#31215#65306
  end
  inherited PanelBkGnd: TPanel
    Width = 477
    Height = 358
    inherited Panel_button: TPanel
      Top = 296
      Width = 477
      inherited Bevel_button: TBevel
        Left = 32
        Width = 431
      end
      inherited OKBtn: TcxButton
        Left = 132
        Caption = #30830#35748'[&D]'
        TabOrder = 1
        OnClick = OKBtnClick
      end
      inherited CancelBtn: TcxButton
        Left = 250
        TabOrder = 0
      end
    end
    object FlatPanel1: TFlatPanel
      Left = 27
      Top = 36
      Width = 426
      Height = 224
      ParentColor = True
      TabOrder = 1
      UseDockManager = True
      object Label3: TLabel
        Left = 18
        Top = 20
        Width = 107
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = #24403#21069#29992#25143'ID'#21495#65306
      end
      object Label2: TLabel
        Left = 18
        Top = 54
        Width = 115
        Height = 15
        AutoSize = False
        Caption = #24403#21069#25805#20316#21592#65306
      end
      object L_name: TLabel
        Left = 232
        Top = 54
        Width = 60
        Height = 15
        Alignment = taCenter
        Caption = #26410#30693#29992#25143
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 18
        Top = 89
        Width = 117
        Height = 21
        AutoSize = False
        Caption = #35831#36755#20837#26087#23494#30721#65306
      end
      object Label4: TLabel
        Left = 18
        Top = 123
        Width = 117
        Height = 21
        AutoSize = False
        Caption = #35831#36755#20837#26032#23494#30721#65306
      end
      object Label5: TLabel
        Left = 18
        Top = 159
        Width = 145
        Height = 21
        AutoSize = False
        Caption = #35831#36755#20837#26032#23494#30721#30830#35748#65306
      end
      object E_ID: TcxTextEdit
        Left = 171
        Top = 15
        Width = 211
        Height = 23
        Enabled = False
        TabOrder = 0
      end
      object E_Password: TcxTextEdit
        Left = 171
        Top = 88
        Width = 211
        Height = 23
        Hint = #35831#36755#20837'6'#20301#25968#20197#20869#30340#23494#30721#65281
        ParentShowHint = False
        Properties.EchoMode = eemPassword
        ShowHint = True
        TabOrder = 1
        OnExit = E_PasswordExit
        OnKeyDown = E_PasswordKeyDown
      end
      object N_Password: TcxTextEdit
        Left = 171
        Top = 122
        Width = 211
        Height = 23
        Hint = #35831#36755#20837'6'#20301#25968#20197#20869#30340#23494#30721#65281
        Enabled = False
        ParentShowHint = False
        Properties.EchoMode = eemPassword
        ShowHint = True
        TabOrder = 2
        OnExit = N_PasswordExit
        OnKeyDown = N_PasswordKeyDown
      end
      object W_Password: TcxTextEdit
        Left = 171
        Top = 158
        Width = 211
        Height = 23
        Hint = #35831#36755#20837'6'#20301#25968#20197#20869#30340#23494#30721#65281
        Enabled = False
        ParentShowHint = False
        Properties.EchoMode = eemPassword
        ShowHint = True
        TabOrder = 3
        OnExit = W_PasswordExit
      end
    end
  end
  object ADOQuery: TADOQuery
    Connection = mdlData.conn
    Parameters = <>
    Left = 4
    Top = 6
  end
end
