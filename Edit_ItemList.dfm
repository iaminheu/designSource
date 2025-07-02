inherited Frm_Edit_ItemList: TFrm_Edit_ItemList
  Left = 277
  Top = 130
  Caption = 'Frm_Edit_ItemList'
  ClientHeight = 516
  ClientWidth = 598
  PixelsPerInch = 96
  TextHeight = 12
  inherited PanelBkGnd: TPanel
    Width = 598
    Height = 516
    object Label2: TLabel [0]
      Left = 783
      Top = 82
      Width = 58
      Height = 13
      AutoSize = False
      Caption = #38468'    '#20214
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    inherited Panel_button: TPanel
      Top = 467
      Width = 598
      inherited Bevel_button: TBevel
        Left = 31
        Top = 9
        Width = 536
      end
      inherited OKBtn: TcxButton
        Left = 217
        Caption = #20445#23384'[&S]'
        OnClick = OKBtnClick
      end
      inherited CancelBtn: TcxButton
        Left = 305
      end
    end
    object cxGrid: TcxGrid
      Left = 0
      Top = 113
      Width = 598
      Height = 354
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      LookAndFeel.NativeStyle = False
      object cxGV: TcxGridDBTableView
        DataController.DataSource = DS_mData
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.PriorPage.Visible = True
        NavigatorButtons.NextPage.Visible = True
        NavigatorButtons.Insert.Visible = True
        NavigatorButtons.Delete.Visible = True
        NavigatorButtons.Edit.Visible = False
        NavigatorButtons.Post.Visible = True
        NavigatorButtons.Cancel.Visible = False
        NavigatorButtons.Refresh.Visible = False
        NavigatorButtons.SaveBookmark.Visible = False
        NavigatorButtons.GotoBookmark.Visible = False
        NavigatorButtons.Filter.Visible = False
        OptionsView.Navigator = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object IsApp: TcxGridDBColumn
          Caption = #8730
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.DisplayUnchecked = 'False'
          OnGetDisplayText = IsAppGetDisplayText
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Filtering = False
          Options.Sorting = False
          Width = 21
          DataBinding.FieldName = 'IsApp'
        end
        object FFullNumber: TcxGridDBColumn
          Caption = #38271' '#20195' '#30721
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Sorting = False
          Width = 104
          DataBinding.FieldName = 'FFullNumber'
        end
        object FPartsId: TcxGridDBColumn
          Caption = #37096#20214'ID'
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Sorting = False
          Width = 43
          DataBinding.FieldName = 'FPartsId'
        end
        object FPartsCode: TcxGridDBColumn
          Caption = #37096#20214#32423#21035
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Sorting = False
          Width = 61
          DataBinding.FieldName = 'FPartsCode'
        end
        object FPartsName: TcxGridDBColumn
          Caption = #37096#20214#21517#31216
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Sorting = False
          Width = 119
          DataBinding.FieldName = 'FPartsName'
        end
        object FPartsNumber: TcxGridDBColumn
          Caption = #37096#20214#22270#21495
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Filtering = False
          Options.Sorting = False
          Width = 93
          DataBinding.FieldName = 'FPartsNumber'
        end
        object FInputDate: TcxGridDBColumn
          Caption = #23436#25104#26085#26399
          PropertiesClassName = 'TcxDateEditProperties'
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Filtering = False
          Options.Sorting = False
          Width = 84
          DataBinding.FieldName = 'FInputDate'
        end
      end
      object cxGL: TcxGridLevel
        GridView = cxGV
      end
    end
    object Panel_upper: TPanel
      Left = 0
      Top = 0
      Width = 598
      Height = 113
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 1
      object L_Title: TLabel
        Left = 0
        Top = 0
        Width = 598
        Height = 24
        Align = alTop
        Alignment = taCenter
        Caption = #39033#30446#26126#32454#30331#35760
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = #38582#20070
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 6
        Top = 82
        Width = 48
        Height = 12
        Caption = #39033#30446#22270#21495
      end
      object Label3: TLabel
        Left = 182
        Top = 82
        Width = 48
        Height = 12
        Caption = #39033#30446#20195#21495
      end
      object E_FItemNumber: TcxButtonEdit
        Left = 64
        Top = 77
        Width = 80
        Height = 22
        AutoSize = False
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = E_dahPropertiesButtonClick
        Style.BorderColor = 8623776
        Style.BorderStyle = ebsSingle
        Style.Color = 15658734
        Style.ButtonTransparency = ebtHideUnselected
        TabOrder = 0
        ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WIN2000'
        OnKeyDown = E_FItemNumberKeyDown
      end
      object E_FItemNO: TcxTextEdit
        Left = 240
        Top = 77
        Width = 57
        Height = 22
        AutoSize = False
        Enabled = False
        Style.BorderColor = 8623776
        Style.BorderStyle = ebsSingle
        Style.Color = 15658734
        TabOrder = 1
      end
      object E_FItemId: TcxButtonEdit
        Left = 146
        Top = 77
        Width = 33
        Height = 22
        AutoSize = False
        Enabled = False
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = E_dahPropertiesButtonClick
        Style.BorderColor = 8623776
        Style.BorderStyle = ebsSingle
        Style.Color = 15658734
        Style.ButtonTransparency = ebtHideUnselected
        TabOrder = 2
        ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WIN2000'
        OnKeyDown = E_FItemNumberKeyDown
      end
      object E_FProductId: TcxTextEdit
        Left = 304
        Top = 77
        Width = 57
        Height = 22
        AutoSize = False
        Enabled = False
        Style.BorderColor = 8623776
        Style.BorderStyle = ebsSingle
        Style.Color = 15658734
        TabOrder = 3
      end
    end
  end
  object MData: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 80
    Top = 8
    object MDatajsl: TFloatField
      FieldName = 'jsl'
    end
    object MDatajdj: TFloatField
      FieldName = 'jdj'
    end
    object MDataxh: TIntegerField
      FieldName = 'xh'
    end
    object MDatajje: TFloatField
      FieldName = 'jje'
    end
  end
  object DS_mData: TDataSource
    DataSet = MData
    Left = 32
    Top = 8
  end
end
