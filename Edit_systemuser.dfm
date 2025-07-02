inherited Frm_Edit_systemuser: TFrm_Edit_systemuser
  Left = 263
  Caption = 'Frm_Edit_systemuser'
  ClientHeight = 295
  ClientWidth = 326
  PixelsPerInch = 96
  TextHeight = 12
  inherited PanelBkGnd: TPanel
    Width = 326
    Height = 295
    inherited Panel_button: TPanel
      Top = 246
      Width = 326
      inherited Bevel_button: TBevel
        Left = 22
        Width = 282
      end
      inherited CancelBtn: TcxButton
        Left = 167
      end
      inherited OKBtn: TcxButton
        Left = 84
        Caption = #20445#23384'[&S]'
      end
    end
    object FlatPanel_edit: TFlatPanel
      Left = 30
      Top = 14
      Width = 266
      Height = 211
      ParentColor = True
      TabOrder = 1
      UseDockManager = True
      object Label1: TLabel
        Left = 14
        Top = 23
        Width = 48
        Height = 12
        Caption = #30331' '#24405' '#21517
      end
      object Label2: TLabel
        Left = 14
        Top = 58
        Width = 48
        Height = 12
        Caption = #20013' '#25991' '#21517
      end
      object Label10: TLabel
        Left = 14
        Top = 94
        Width = 48
        Height = 12
        Caption = #24615'    '#21035
      end
      object Label3: TLabel
        Left = 14
        Top = 130
        Width = 48
        Height = 12
        Caption = #21021#22987#23494#30721
      end
      object Label4: TLabel
        Left = 14
        Top = 166
        Width = 48
        Height = 12
        Caption = #23703'    '#20301
      end
      object E_num: TcxTextEdit
        Left = 80
        Top = 18
        Width = 145
        Height = 22
        AutoSize = False
        Properties.Alignment.Vert = taVCenter
        Style.BorderColor = 8623776
        Style.BorderStyle = ebsSingle
        Style.Color = 15658734
        TabOrder = 0
        ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WIN2000'
        OnKeyDown = E_numKeyDown
      end
      object E_mc: TcxTextEdit
        Left = 80
        Top = 49
        Width = 145
        Height = 22
        AutoSize = False
        Properties.Alignment.Vert = taVCenter
        Style.BorderColor = 8623776
        Style.BorderStyle = ebsSingle
        Style.Color = 15658734
        TabOrder = 1
        ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WIN2000'
        OnKeyDown = E_mcKeyDown
      end
      object E_gw: TcxTextEdit
        Left = 80
        Top = 161
        Width = 145
        Height = 22
        AutoSize = False
        Properties.Alignment.Vert = taVCenter
        Style.BorderColor = 8623776
        Style.BorderStyle = ebsSingle
        Style.Color = 15658734
        TabOrder = 2
        ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WIN2000'
        OnKeyDown = E_mcKeyDown
      end
      object E_pwd: TcxTextEdit
        Left = 80
        Top = 129
        Width = 145
        Height = 22
        AutoSize = False
        Properties.Alignment.Vert = taVCenter
        Properties.EchoMode = eemPassword
        Style.BorderColor = 8623776
        Style.BorderStyle = ebsSingle
        Style.Color = 15658734
        TabOrder = 3
        ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WIN2000'
        OnKeyDown = E_mcKeyDown
      end
      object E_sex: TcxComboBox
        Left = 80
        Top = 89
        Width = 50
        Height = 23
        AutoSize = False
        ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WINXP'
        ParentFont = False
        Properties.Alignment.Vert = taVCenter
        Properties.Items.Strings = (
          ''
          #30007
          #22899)
        Properties.Sorted = True
        Style.BorderColor = 8623776
        Style.BorderStyle = ebsSingle
        Style.Color = 15658734
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = #23435#20307
        Style.Font.Style = []
        Style.ButtonTransparency = ebtHideUnselected
        TabOrder = 4
      end
    end
  end
end
