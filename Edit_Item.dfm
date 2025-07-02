inherited Frm_Edit_Item: TFrm_Edit_Item
  Left = 339
  Top = 183
  Caption = 'Frm_Edit_Item'
  ClientHeight = 413
  ClientWidth = 353
  PixelsPerInch = 96
  TextHeight = 12
  inherited PanelBkGnd: TPanel
    Width = 353
    Height = 413
    inherited Panel_button: TPanel
      Top = 364
      Width = 353
      inherited Bevel_button: TBevel
        Left = 24
        Width = 309
      end
      inherited OKBtn: TcxButton
        Left = 97
        Caption = #20445#23384'[&S]'
        OnClick = OKBtnClick
      end
      inherited CancelBtn: TcxButton
        Left = 185
      end
    end
    object FlatPanel_edit: TFlatPanel
      Left = 23
      Top = 14
      Width = 298
      Height = 331
      ParentColor = True
      TabOrder = 1
      UseDockManager = True
      object Label1: TLabel
        Left = 14
        Top = 44
        Width = 48
        Height = 12
        Caption = #26723' '#26696' '#21495
      end
      object Label2: TLabel
        Left = 14
        Top = 73
        Width = 48
        Height = 12
        Caption = #23458#25143#20840#31216
      end
      object Label5: TLabel
        Left = 14
        Top = 16
        Width = 48
        Height = 12
        Caption = #21512' '#21516' '#21495
      end
      object Label10: TLabel
        Left = 14
        Top = 102
        Width = 48
        Height = 12
        Caption = #23458#25143#31616#31216
      end
      object Label3: TLabel
        Left = 14
        Top = 189
        Width = 48
        Height = 12
        Caption = #39033#30446#35268#26684
      end
      object Label4: TLabel
        Left = 14
        Top = 218
        Width = 48
        Height = 12
        Caption = #24314#31435#26102#38388
      end
      object Label9: TLabel
        Left = 14
        Top = 160
        Width = 48
        Height = 12
        Caption = #39033#30446#22270#21495
      end
      object Label6: TLabel
        Left = 14
        Top = 276
        Width = 48
        Height = 12
        Caption = #39033' '#30446' ID'
      end
      object Label8: TLabel
        Left = 14
        Top = 248
        Width = 48
        Height = 12
        Caption = #20135#21697#31867#22411
      end
      object Label7: TLabel
        Left = 14
        Top = 128
        Width = 48
        Height = 12
        Caption = #39033#30446#32534#21495
      end
      object E_FFileNo: TcxTextEdit
        Left = 80
        Top = 39
        Width = 185
        Height = 22
        AutoSize = False
        Style.BorderColor = 8623776
        Style.BorderStyle = ebsSingle
        Style.Color = 15658734
        TabOrder = 1
        OnKeyDown = E_FPactNoKeyDown
      end
      object E_FClientFullName: TcxTextEdit
        Left = 80
        Top = 68
        Width = 185
        Height = 23
        AutoSize = False
        Style.BorderColor = 8623776
        Style.BorderStyle = ebsSingle
        Style.Color = 15658734
        TabOrder = 2
        OnKeyDown = E_FPactNoKeyDown
      end
      object E_FClientShortName: TcxTextEdit
        Left = 80
        Top = 97
        Width = 185
        Height = 22
        AutoSize = False
        Style.BorderColor = 8623776
        Style.BorderStyle = ebsSingle
        Style.Color = 15658734
        TabOrder = 3
        OnKeyDown = E_FPactNoKeyDown
      end
      object E_FPactNo: TcxButtonEdit
        Left = 80
        Top = 11
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
        TabOrder = 0
        ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WIN2000'
        OnKeyDown = E_FPactNoKeyDown
      end
      object E_FItemNumber: TcxTextEdit
        Left = 80
        Top = 155
        Width = 185
        Height = 22
        AutoSize = False
        Style.BorderColor = 8623776
        Style.BorderStyle = ebsSingle
        Style.Color = 15658734
        TabOrder = 4
        OnKeyDown = E_FPactNoKeyDown
      end
      object E_FItemModel: TcxTextEdit
        Left = 80
        Top = 184
        Width = 185
        Height = 22
        AutoSize = False
        Style.BorderColor = 8623776
        Style.BorderStyle = ebsSingle
        Style.Color = 15658734
        TabOrder = 5
        OnKeyDown = E_FPactNoKeyDown
      end
      object E_FDesignDate: TcxDateEdit
        Left = 80
        Top = 213
        Width = 185
        Height = 22
        AutoSize = False
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
        TabOrder = 6
        OnKeyDown = E_FPactNoKeyDown
      end
      object E_FProductId: TcxCurrencyEdit
        Left = 80
        Top = 271
        Width = 183
        Height = 22
        TabStop = False
        AutoSize = False
        EditValue = 0
        Enabled = False
        ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WIN2000'
        Properties.Alignment.Horz = taRightJustify
        Properties.DecimalPlaces = 0
        Properties.ValidateOnEnter = True
        Properties.IsDisplayFormatAssigned = True
        Style.BorderColor = 8623776
        Style.BorderStyle = ebsSingle
        Style.Color = 15658734
        TabOrder = 8
      end
      object E_FProductName: TcxButtonEdit
        Left = 80
        Top = 243
        Width = 185
        Height = 22
        AutoSize = False
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
        Style.BorderColor = 8623776
        Style.BorderStyle = ebsSingle
        Style.Color = 15658734
        Style.ButtonTransparency = ebtHideUnselected
        TabOrder = 7
        ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WIN2000'
        OnKeyDown = E_FProductNameKeyDown
      end
      object E_FItemNo: TcxTextEdit
        Left = 80
        Top = 123
        Width = 185
        Height = 22
        AutoSize = False
        Style.BorderColor = 8623776
        Style.BorderStyle = ebsSingle
        Style.Color = 15658734
        TabOrder = 9
        OnKeyDown = E_FPactNoKeyDown
      end
    end
  end
end
