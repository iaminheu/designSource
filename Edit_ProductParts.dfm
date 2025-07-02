inherited Frm_Edit_ProductParts: TFrm_Edit_ProductParts
  Left = 534
  Top = 209
  Caption = 'Frm_Edit_ProductParts'
  ClientHeight = 294
  ClientWidth = 329
  PixelsPerInch = 96
  TextHeight = 12
  inherited PanelBkGnd: TPanel
    Width = 329
    Height = 294
    inherited Panel_button: TPanel
      Top = 245
      Width = 329
      inherited Bevel_button: TBevel
        Left = 20
        Width = 290
      end
      inherited OKBtn: TcxButton
        Left = 83
        Caption = #20445#23384'[&S]'
        OnClick = OKBtnClick
      end
      inherited CancelBtn: TcxButton
        Left = 171
      end
    end
    object FlatPanel_edit: TFlatPanel
      Left = 19
      Top = 14
      Width = 290
      Height = 203
      ParentColor = True
      TabOrder = 1
      UseDockManager = True
      object Label1: TLabel
        Left = 14
        Top = 44
        Width = 48
        Height = 12
        Caption = #20135' '#21697' Id'
      end
      object Label2: TLabel
        Left = 14
        Top = 73
        Width = 48
        Height = 12
        Caption = #37096#20214#26631#35782
      end
      object Label5: TLabel
        Left = 14
        Top = 16
        Width = 48
        Height = 12
        Caption = #20135#21697#31867#22411
      end
      object Label7: TLabel
        Left = 14
        Top = 128
        Width = 48
        Height = 12
        Caption = #37096#20214#21035#21517
      end
      object Label10: TLabel
        Left = 14
        Top = 99
        Width = 48
        Height = 12
        Caption = #37096#20214#21517#31216
      end
      object E_FpartsAlias: TcxTextEdit
        Left = 80
        Top = 123
        Width = 185
        Height = 22
        AutoSize = False
        Style.BorderColor = 8623776
        Style.BorderStyle = ebsSingle
        Style.Color = 15658734
        TabOrder = 4
        OnKeyDown = E_FpartsAliasKeyDown
      end
      object E_FProductId: TcxTextEdit
        Left = 80
        Top = 39
        Width = 185
        Height = 22
        AutoSize = False
        Enabled = False
        Style.BorderColor = 8623776
        Style.BorderStyle = ebsSingle
        Style.Color = 15658734
        TabOrder = 1
      end
      object E_FPartsCode: TcxTextEdit
        Left = 80
        Top = 68
        Width = 185
        Height = 23
        AutoSize = False
        Style.BorderColor = 8623776
        Style.BorderStyle = ebsSingle
        Style.Color = 15658734
        TabOrder = 2
        OnKeyDown = E_FProductNameKeyDown
      end
      object E_FPartsName: TcxTextEdit
        Left = 80
        Top = 94
        Width = 185
        Height = 22
        AutoSize = False
        Style.BorderColor = 8623776
        Style.BorderStyle = ebsSingle
        Style.Color = 15658734
        TabOrder = 3
        OnKeyDown = E_FProductNameKeyDown
      end
      object E_FProductName: TcxButtonEdit
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
        Properties.OnButtonClick = E_FProductNamePropertiesButtonClick
        Style.BorderColor = 8623776
        Style.BorderStyle = ebsSingle
        Style.Color = 15658734
        Style.ButtonTransparency = ebtHideUnselected
        TabOrder = 0
        ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WIN2000'
        OnKeyDown = E_FProductNameKeyDown
      end
    end
  end
end
