inherited Frm_Edit_ItemList_1: TFrm_Edit_ItemList_1
  Left = 119
  Top = 185
  Caption = 'Frm_Edit_ItemList_1'
  ClientHeight = 338
  ClientWidth = 338
  PixelsPerInch = 96
  TextHeight = 12
  inherited PanelBkGnd: TPanel
    Width = 338
    Height = 338
    inherited Panel_button: TPanel
      Top = 289
      Width = 338
      inherited Bevel_button: TBevel
        Left = 15
        Width = 309
      end
      inherited OKBtn: TcxButton
        Left = 88
        Caption = #20445#23384'[&S]'
        OnClick = OKBtnClick
      end
      inherited CancelBtn: TcxButton
        Left = 176
      end
    end
    object FlatPanel_edit: TFlatPanel
      Left = 21
      Top = 14
      Width = 298
      Height = 259
      ParentColor = True
      TabOrder = 1
      UseDockManager = True
      object Label1: TLabel
        Left = 14
        Top = 43
        Width = 48
        Height = 12
        Caption = #39033#30446#22270#21495
      end
      object Label2: TLabel
        Left = 14
        Top = 97
        Width = 48
        Height = 12
        Caption = #37096#20214#32423#21035
      end
      object Label5: TLabel
        Left = 14
        Top = 16
        Width = 48
        Height = 12
        Caption = #38271' '#20195' '#30721
      end
      object Label10: TLabel
        Left = 14
        Top = 148
        Width = 48
        Height = 12
        Caption = #37096#20214#21517#31216
      end
      object Label9: TLabel
        Left = 14
        Top = 202
        Width = 48
        Height = 12
        Caption = #23436#25104#26631#24535
      end
      object Label7: TLabel
        Left = 14
        Top = 175
        Width = 48
        Height = 12
        Caption = #23436#25104#26085#26399
      end
      object Label3: TLabel
        Left = 14
        Top = 230
        Width = 48
        Height = 12
        Caption = #23548#20837#20154#21592
      end
      object Label6: TLabel
        Left = 14
        Top = 70
        Width = 48
        Height = 12
        Caption = #20135#21697#31867#21035
      end
      object Label4: TLabel
        Left = 14
        Top = 121
        Width = 48
        Height = 12
        Caption = #37096#20214#22270#21495
      end
      object E_FPartsName: TcxTextEdit
        Left = 80
        Top = 143
        Width = 185
        Height = 22
        AutoSize = False
        Enabled = False
        Style.BorderColor = 8623776
        Style.BorderStyle = ebsSingle
        Style.Color = 15658734
        TabOrder = 1
        OnKeyDown = E_FFullNumberKeyDown
      end
      object E_FFullNumber: TcxButtonEdit
        Left = 80
        Top = 11
        Width = 185
        Height = 22
        AutoSize = False
        Enabled = False
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Style.BorderColor = 8623776
        Style.BorderStyle = ebsSingle
        Style.Color = 15658734
        Style.ButtonTransparency = ebtHideUnselected
        TabOrder = 0
        ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WIN2000'
        OnKeyDown = E_FFullNumberKeyDown
      end
      object E_FInputDate: TcxDateEdit
        Left = 80
        Top = 170
        Width = 185
        Height = 22
        AutoSize = False
        Enabled = False
        ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WINXP'
        ParentFont = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ReadOnly = False
        Style.BorderColor = 8623776
        Style.BorderStyle = ebsSingle
        Style.Color = 15658734
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Times New Roman'
        Style.Font.Style = []
        Style.Shadow = False
        Style.ButtonStyle = btsHotFlat
        Style.ButtonTransparency = ebtHideUnselected
        Style.PopupBorderStyle = epbsFlat
        TabOrder = 2
        OnKeyDown = E_FFullNumberKeyDown
      end
      object E_FIsFinsh: TcxCheckBox
        Left = 80
        Top = 198
        Width = 25
        Height = 21
        Enabled = False
        Properties.DisplayUnchecked = 'False'
        Properties.Caption = ''
        TabOrder = 3
      end
      object E_FItemNumber: TcxButtonEdit
        Left = 80
        Top = 38
        Width = 185
        Height = 22
        AutoSize = False
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = E_FItemNumberPropertiesButtonClick
        Style.BorderColor = 8623776
        Style.BorderStyle = ebsSingle
        Style.Color = 15658734
        Style.ButtonTransparency = ebtHideUnselected
        TabOrder = 4
        ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WIN2000'
      end
      object E_FPartsCode: TcxButtonEdit
        Left = 80
        Top = 92
        Width = 185
        Height = 22
        AutoSize = False
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = E_FPartsCodePropertiesButtonClick
        Style.BorderColor = 8623776
        Style.BorderStyle = ebsSingle
        Style.Color = 15658734
        Style.ButtonTransparency = ebtHideUnselected
        TabOrder = 5
        ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WIN2000'
      end
      object E_FInputName: TcxButtonEdit
        Left = 80
        Top = 225
        Width = 185
        Height = 22
        AutoSize = False
        Enabled = False
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = E_FInputNamePropertiesButtonClick
        Style.BorderColor = 8623776
        Style.BorderStyle = ebsSingle
        Style.Color = 15658734
        Style.ButtonTransparency = ebtHideUnselected
        TabOrder = 6
        ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WIN2000'
      end
      object E_FProductName: TcxButtonEdit
        Left = 80
        Top = 65
        Width = 185
        Height = 22
        AutoSize = False
        Enabled = False
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Style.BorderColor = 8623776
        Style.BorderStyle = ebsSingle
        Style.Color = 15658734
        Style.ButtonTransparency = ebtHideUnselected
        TabOrder = 7
        ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WIN2000'
        OnKeyDown = E_FFullNumberKeyDown
      end
      object E_FPartsNumber: TcxButtonEdit
        Left = 80
        Top = 116
        Width = 185
        Height = 22
        AutoSize = False
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Style.BorderColor = 8623776
        Style.BorderStyle = ebsSingle
        Style.Color = 15658734
        Style.ButtonTransparency = ebtHideUnselected
        TabOrder = 8
        ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WIN2000'
      end
    end
  end
end
