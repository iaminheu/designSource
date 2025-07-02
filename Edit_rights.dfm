inherited Frm_Edit_rights: TFrm_Edit_rights
  Left = 386
  Top = 144
  Caption = 'Frm_Edit_rights'
  ClientHeight = 463
  ClientWidth = 414
  PixelsPerInch = 96
  TextHeight = 12
  object Label10: TLabel [0]
    Left = 30
    Top = 316
    Width = 60
    Height = 12
    Caption = #38754'    '#31215#65306
  end
  inherited PanelBkGnd: TPanel
    Width = 414
    Height = 463
    inherited Panel_button: TPanel
      Top = 414
      Width = 414
      inherited Bevel_button: TBevel
        Left = 28
      end
      inherited OKBtn: TcxButton
        Left = 122
        OnClick = OKBtnClick
      end
      inherited CancelBtn: TcxButton
        Left = 198
      end
    end
    object FlatPanel_edit: TFlatPanel
      Left = 24
      Top = 8
      Width = 361
      Height = 393
      ParentColor = True
      TabOrder = 1
      UseDockManager = True
      object Label1: TLabel
        Left = 14
        Top = 56
        Width = 48
        Height = 12
        Caption = #34920#21333#25991#20214
      end
      object Label2: TLabel
        Left = 14
        Top = 83
        Width = 48
        Height = 12
        Caption = #34920#21333#21517#31216
      end
      object Label3: TLabel
        Left = 14
        Top = 110
        Width = 48
        Height = 12
        Caption = #26032'    '#22686
      end
      object Label5: TLabel
        Left = 14
        Top = 220
        Width = 48
        Height = 12
        Caption = #25171'    '#21360
      end
      object Label9: TLabel
        Left = 14
        Top = 30
        Width = 48
        Height = 12
        Caption = #26435#38480#32452#21035
      end
      object Label4: TLabel
        Left = 14
        Top = 137
        Width = 48
        Height = 12
        Caption = #32534'    '#36753
      end
      object Label6: TLabel
        Left = 14
        Top = 193
        Width = 48
        Height = 12
        Caption = #26597'    '#35810
      end
      object Label7: TLabel
        Left = 14
        Top = 163
        Width = 48
        Height = 12
        Caption = #21024'    '#38500
      end
      object Label8: TLabel
        Left = 14
        Top = 273
        Width = 48
        Height = 12
        Caption = #23457'    '#26680
      end
      object Label11: TLabel
        Left = 14
        Top = 321
        Width = 48
        Height = 12
        Caption = #23548'    '#20986
      end
      object Label12: TLabel
        Left = 14
        Top = 245
        Width = 48
        Height = 12
        Caption = #26657'    '#23545
      end
      object Label13: TLabel
        Left = 14
        Top = 297
        Width = 54
        Height = 12
        Caption = #25509'    '#25910' '
      end
      object Label14: TLabel
        Left = 230
        Top = 321
        Width = 48
        Height = 12
        Caption = #25509'    '#25910
      end
      object Label15: TLabel
        Left = 230
        Top = 297
        Width = 54
        Height = 12
        Caption = #19979'    '#25512' '
      end
      object Label16: TLabel
        Left = 230
        Top = 273
        Width = 48
        Height = 12
        Caption = #23457'    '#26680
      end
      object Label17: TLabel
        Left = 230
        Top = 245
        Width = 48
        Height = 12
        Caption = #26657'    '#23545
      end
      object Label18: TLabel
        Left = 230
        Top = 220
        Width = 48
        Height = 12
        Caption = #25552'    '#20132
      end
      object Label19: TLabel
        Left = 230
        Top = 345
        Width = 48
        Height = 12
        Caption = #21453'    '#39304
      end
      object E_app: TcxCheckBox
        Left = 72
        Top = 106
        Width = 33
        Height = 21
        Properties.DisplayUnchecked = 'False'
        Properties.Caption = ''
        TabOrder = 0
      end
      object E_edit: TcxCheckBox
        Left = 72
        Top = 133
        Width = 25
        Height = 21
        Properties.DisplayUnchecked = 'False'
        Properties.Caption = ''
        TabOrder = 1
      end
      object E_qry: TcxCheckBox
        Left = 72
        Top = 189
        Width = 25
        Height = 21
        Properties.DisplayUnchecked = 'False'
        Properties.Caption = ''
        TabOrder = 2
      end
      object E_prin: TcxCheckBox
        Left = 72
        Top = 216
        Width = 25
        Height = 21
        Properties.DisplayUnchecked = 'False'
        Properties.Caption = ''
        TabOrder = 3
      end
      object E_del: TcxCheckBox
        Left = 72
        Top = 160
        Width = 25
        Height = 21
        Properties.DisplayUnchecked = 'False'
        Properties.Caption = ''
        TabOrder = 4
      end
      object E_sh: TcxCheckBox
        Left = 72
        Top = 270
        Width = 25
        Height = 21
        Properties.DisplayUnchecked = 'False'
        Properties.Caption = ''
        TabOrder = 5
      end
      object E_mdlName: TcxButtonEdit
        Left = 72
        Top = 56
        Width = 257
        Height = 20
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Style.BorderColor = 8623776
        Style.BorderStyle = ebsSingle
        Style.Color = 15658734
        Style.HotTrack = True
        Style.Shadow = False
        Style.ButtonStyle = btsDefault
        Style.ButtonTransparency = ebtHideUnselected
        TabOrder = 6
      end
      object E_frmname: TcxButtonEdit
        Left = 72
        Top = 80
        Width = 257
        Height = 20
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = E_frmnamePropertiesButtonClick
        Style.BorderColor = 8623776
        Style.BorderStyle = ebsSingle
        Style.Color = 15658734
        Style.ButtonTransparency = ebtHideUnselected
        TabOrder = 7
      end
      object E_FPermission: TcxButtonEdit
        Left = 72
        Top = 24
        Width = 257
        Height = 20
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = E_FPermissionPropertiesButtonClick
        Style.BorderColor = 8623776
        Style.BorderStyle = ebsSingle
        Style.Color = 15658734
        Style.ButtonTransparency = ebtHideUnselected
        TabOrder = 8
      end
      object E_Out: TcxCheckBox
        Left = 72
        Top = 318
        Width = 25
        Height = 21
        Properties.DisplayUnchecked = 'False'
        Properties.Caption = ''
        TabOrder = 9
      end
      object E_Txd: TcxCheckBox
        Left = 72
        Top = 242
        Width = 33
        Height = 21
        Properties.DisplayUnchecked = 'False'
        Properties.Caption = ''
        TabOrder = 10
      end
      object E_Rxd: TcxCheckBox
        Left = 72
        Top = 294
        Width = 25
        Height = 21
        Properties.DisplayUnchecked = 'False'
        Properties.Caption = ''
        TabOrder = 11
      end
      object E_Accept: TcxCheckBox
        Left = 288
        Top = 318
        Width = 25
        Height = 21
        Properties.DisplayUnchecked = 'False'
        Properties.Caption = ''
        TabOrder = 12
      end
      object E_PushDown: TcxCheckBox
        Left = 288
        Top = 294
        Width = 25
        Height = 21
        Properties.DisplayUnchecked = 'False'
        Properties.Caption = ''
        TabOrder = 13
      end
      object E_Audit: TcxCheckBox
        Left = 288
        Top = 270
        Width = 25
        Height = 21
        Properties.DisplayUnchecked = 'False'
        Properties.Caption = ''
        TabOrder = 14
      end
      object E_FCheck: TcxCheckBox
        Left = 288
        Top = 242
        Width = 33
        Height = 21
        Properties.DisplayUnchecked = 'False'
        Properties.Caption = ''
        TabOrder = 15
      end
      object E_Submit: TcxCheckBox
        Left = 288
        Top = 216
        Width = 25
        Height = 21
        Properties.DisplayUnchecked = 'False'
        Properties.Caption = ''
        TabOrder = 16
      end
      object E_Feedback: TcxCheckBox
        Left = 288
        Top = 342
        Width = 25
        Height = 21
        Properties.DisplayUnchecked = 'False'
        Properties.Caption = ''
        TabOrder = 17
      end
    end
  end
  object ADOQuery: TADOQuery
    Connection = mdlData.conn
    Parameters = <>
    Left = 11
    Top = 3
  end
end
