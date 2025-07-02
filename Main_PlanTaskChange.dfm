inherited Frm_PlanTaskChange: TFrm_PlanTaskChange
  Left = 345
  Top = 179
  AutoSize = True
  Caption = #29983#20135#35745#21010#21464#21160#24773#20917#34920
  ClientHeight = 697
  ClientWidth = 1426
  OldCreateOrder = True
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image: TImage
    Width = 1426
  end
  inherited L_title: TLabel
    Left = 10
    Top = 2
    Width = 1255
    Caption = #36890#29992#25968#25454#30331#35760
  end
  inherited P_back: TPanel
    Width = 1426
    Height = 676
    inherited P_main: TPanel
      Width = 1420
      Height = 646
      inherited Panel_down: TPanel
        Top = 641
        Width = 1418
        Height = 3
        inherited Bevel_bass: TBevel
          Width = 1418
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1418
        Height = 38
        Align = alTop
        ParentColor = True
        TabOrder = 1
        object ToolBar1: TToolBar
          Left = 1
          Top = 1
          Width = 1416
          Height = 35
          AutoSize = True
          ButtonHeight = 35
          ButtonWidth = 55
          Caption = 'ToolBar1'
          EdgeBorders = []
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          Images = ImageList
          ParentFont = False
          ShowCaptions = True
          TabOrder = 0
          object TB_Ref: TToolButton
            Left = 0
            Top = 0
            AutoSize = True
            Caption = #21047#26032'[&R]'
            ImageIndex = 4
            OnClick = TB_RefClick
          end
          object ToolButton5: TToolButton
            Left = 53
            Top = 0
            Width = 8
            Caption = 'ToolButton5'
            ImageIndex = 4
            Style = tbsSeparator
          end
          object TB_App: TToolButton
            Left = 61
            Top = 0
            AutoSize = True
            Caption = #26032#22686'[&A]'
            ImageIndex = 0
            OnClick = TB_AppClick
          end
          object TB_Edit: TToolButton
            Left = 114
            Top = 0
            AutoSize = True
            Caption = #20462#25913'[&E]'
            ImageIndex = 1
            OnClick = TB_EditClick
          end
          object ToolButton1: TToolButton
            Left = 167
            Top = 0
            Width = 8
            Caption = 'ToolButton1'
            ImageIndex = 9
            Style = tbsSeparator
          end
          object TB_EXIT: TToolButton
            Left = 175
            Top = 0
            Cursor = crHandPoint
            AutoSize = True
            Caption = #36864#20986'[&X]'
            ImageIndex = 8
            OnClick = TB_EXITClick
          end
        end
      end
      object RSP_Tree: TRzSizePanel
        Left = 0
        Top = 38
        Width = 302
        Height = 603
        Color = 14935011
        HotSpotVisible = True
        SizeBarWidth = 7
        TabOrder = 2
        VisualStyle = vsGradient
        object TS_Tree: TPageControl
          Left = 0
          Top = 0
          Width = 294
          Height = 603
          ActivePage = Tree_Item
          Align = alClient
          MultiLine = True
          TabOrder = 0
          OnChange = TS_TreeChange
          object Tree_Item: TTabSheet
            Caption = #39033#30446
            object Panel4: TPanel
              Left = 0
              Top = 510
              Width = 286
              Height = 65
              Align = alBottom
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 0
              object Label11: TLabel
                Left = 2
                Top = 7
                Width = 180
                Height = 13
                Caption = #36755#20837#39033#30446#26723#26696#21495#12289#21517#31216#27169#31946#26597#25214#65306
              end
              object E_Locate: TcxButtonEdit
                Left = 7
                Top = 36
                Width = 204
                Height = 21
                Hint = #36755#20837#39033#30446#26723#26696#21495#12289#21517#31216#27169#31946#26597#25214#65306
                ParentShowHint = False
                Properties.Buttons = <
                  item
                    Default = True
                    Glyph.Data = {
                      26050000424D26050000000000003604000028000000100000000F0000000100
                      080000000000F000000000000000000000000001000000000000000000000000
                      80000080000000808000800000008000800080800000C0C0C000C0DCC000F0C8
                      A400000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000000000000000
                      000000000000000000000000000000000000F0FBFF00A4A0A000808080000000
                      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
                      0000000000000707000000FFFFFFFFFFFFFFFFFFFF000700000000FFFFFFFFFF
                      FFFF000000001000000700FFFFFFFFFFFF00100707100010070700FFFFFFFFFF
                      00100707FE101000070700FFFFFFFFFF0007070707100700070700FFFFFFFFFF
                      0007FE0707100700070700FFFFFFFFFF0010FEFE07101000070700FFFFFFFFFF
                      FF00100707100007070700FFFFFFFFFFFFFF000000000707070700FFFFFFFFFF
                      FFFFFFFFFF000707070700FFFFFFFFFFFFFF000000000707070700FFFFFFFFFF
                      FFFF000700070707070700FFFFFFFFFFFFFF0000070707070707000000000000
                      00000007070707070707}
                    Kind = bkEllipsis
                  end>
                Properties.LookupItems.Strings = (
                  '')
                Properties.OnButtonClick = E_LocatePropertiesButtonClick
                ShowHint = False
                Style.BorderColor = 8623776
                Style.BorderStyle = ebsSingle
                Style.Color = 15658734
                Style.Shadow = False
                Style.ButtonTransparency = ebtHideUnselected
                TabOrder = 0
                ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WIN2000'
              end
            end
            object MyTreeView: TTreeView
              Left = 0
              Top = 0
              Width = 286
              Height = 510
              Align = alClient
              AutoExpand = True
              Ctl3D = False
              Indent = 19
              ParentCtl3D = False
              TabOrder = 1
              OnChange = MyTreeViewChange
              OnExpanding = MyTreeViewExpanding
            end
          end
          object Tree_Handler: TTabSheet
            Caption = #39033#30446#32463#29702
            ImageIndex = 1
          end
          object Tree_Edit: TTabSheet
            Caption = #32534#36753
            ImageIndex = 2
            object cxGrid: TcxGrid
              Left = 0
              Top = 0
              Width = 286
              Height = 423
              Align = alClient
              PopupMenu = PM
              TabOrder = 0
              OnContextPopup = cxGridContextPopup
              object cxGV: TcxGridDBTableView
                DataController.DataSource = DS_Mdata_Item
                DataController.DetailKeyFieldNames = 'FElecJudgeID'
                DataController.KeyFieldNames = 'FElecJudgeID'
                DataController.MasterKeyFieldNames = 'FElecJudgeID'
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Format = #23567#35745#65306'0.0000'
                    Kind = skSum
                    FieldName = 'jz'
                  end>
                DataController.Summary.SummaryGroups = <>
                NavigatorButtons.ConfirmDelete = False
                NavigatorButtons.PriorPage.Visible = False
                NavigatorButtons.NextPage.Visible = False
                NavigatorButtons.Insert.Visible = False
                NavigatorButtons.Delete.Visible = False
                NavigatorButtons.Edit.Visible = False
                NavigatorButtons.Post.Visible = False
                NavigatorButtons.Cancel.Visible = False
                NavigatorButtons.Refresh.Visible = False
                NavigatorButtons.SaveBookmark.Visible = False
                NavigatorButtons.GotoBookmark.Visible = False
                NavigatorButtons.Filter.Visible = False
                OptionsData.Appending = True
                OptionsData.CancelOnExit = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsSelection.MultiSelect = True
                OptionsView.Navigator = True
                OptionsView.Footer = True
                OptionsView.GroupByBox = False
                object FItemNum: TcxGridDBColumn
                  Caption = #26723#26696#21495
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
                  Width = 77
                  DataBinding.FieldName = 'FItemNum'
                end
                object FItemName: TcxGridDBColumn
                  Caption = #39033#30446#21517#31216
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 101
                  DataBinding.FieldName = 'FItemName'
                end
                object FSCM: TcxGridDBColumn
                  Caption = #21333#29255#26426
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.DisplayUnchecked = 'False'
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 41
                  DataBinding.FieldName = 'FSCM'
                end
                object FPLC: TcxGridDBColumn
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.DisplayUnchecked = 'False'
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 31
                  DataBinding.FieldName = 'FPLC'
                end
                object FDCS: TcxGridDBColumn
                  Caption = 'DCS'
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.DisplayUnchecked = 'False'
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Options.Sorting = False
                  Width = 27
                  DataBinding.FieldName = 'FDCS'
                end
                object FContPlan: TcxGridDBColumn
                  Caption = #25511#21046#26041#26696#35828#26126
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
                  Width = 132
                  DataBinding.FieldName = 'FContPlan'
                end
                object FGround: TcxGridDBColumn
                  Caption = #25509#22320#26448#26009
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 91
                  DataBinding.FieldName = 'FGround'
                end
                object FLighting: TcxGridDBColumn
                  Caption = #29031#26126#28783#20855
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 78
                  DataBinding.FieldName = 'FLighting'
                end
                object FCable: TcxGridDBColumn
                  Caption = #30005#32518
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 73
                  DataBinding.FieldName = 'FCable'
                end
                object FBridge: TcxGridDBColumn
                  Caption = #26725#26550
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 61
                  DataBinding.FieldName = 'FBridge'
                end
                object FItemID: TcxGridDBColumn
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  DataBinding.FieldName = 'FItemID'
                end
              end
              object cxGVC: TcxGridDBCardView
                OnDblClick = cxGVCDblClick
                DataController.DataSource = DS_Mdata_Item
                DataController.DetailKeyFieldNames = 'FElecJudgeID'
                DataController.KeyFieldNames = 'FElecJudgeID'
                DataController.MasterKeyFieldNames = 'FElecJudgeID'
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                NavigatorButtons.ConfirmDelete = False
                OptionsBehavior.FocusCellOnTab = True
                OptionsBehavior.FocusFirstCellOnNewRecord = True
                OptionsBehavior.GoToNextCellOnEnter = True
                OptionsData.Appending = True
                OptionsView.CardWidth = 500
                object FItemNum_Card: TcxGridDBCardViewRow
                  Caption = #26723#26696#21495
                  PropertiesClassName = 'TcxButtonEditProperties'
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  CaptionAlignmentHorz = taRightJustify
                  CaptionAlignmentVert = vaCenter
                  Options.Editing = False
                  Options.Filtering = False
                  DataBinding.FieldName = 'FItemNum'
                end
                object FItemName_Card: TcxGridDBCardViewRow
                  Caption = #39033#30446#21517#31216
                  PropertiesClassName = 'TcxButtonEditProperties'
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  CaptionAlignmentHorz = taRightJustify
                  CaptionAlignmentVert = vaCenter
                  Options.Editing = False
                  Options.Filtering = False
                  DataBinding.FieldName = 'FItemName'
                end
                object FSCM_Card: TcxGridDBCardViewRow
                  Caption = #21333#29255#26426
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.Alignment = taLeftJustify
                  Properties.DisplayUnchecked = 'False'
                  Properties.NullStyle = nssUnchecked
                  CaptionAlignmentHorz = taRightJustify
                  CaptionAlignmentVert = vaCenter
                  Options.Editing = False
                  Options.Filtering = False
                  DataBinding.FieldName = 'FSCM'
                end
                object FPLC_Card: TcxGridDBCardViewRow
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.Alignment = taLeftJustify
                  Properties.DisplayUnchecked = 'False'
                  Properties.NullStyle = nssUnchecked
                  CaptionAlignmentHorz = taRightJustify
                  CaptionAlignmentVert = vaCenter
                  Options.Editing = False
                  Options.Filtering = False
                  DataBinding.FieldName = 'FPLC'
                end
                object FDCS_Card: TcxGridDBCardViewRow
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.Alignment = taLeftJustify
                  Properties.DisplayUnchecked = 'False'
                  Properties.NullStyle = nssUnchecked
                  CaptionAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Filtering = False
                  DataBinding.FieldName = 'FDCS'
                end
                object FContPlan_Card: TcxGridDBCardViewRow
                  Caption = #25511#21046#26041#26696#35828#26126
                  PropertiesClassName = 'TcxButtonEditProperties'
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  CaptionAlignmentHorz = taRightJustify
                  CaptionAlignmentVert = vaCenter
                  Options.Editing = False
                  Options.Filtering = False
                  DataBinding.FieldName = 'FClass'
                end
                object FGround_Card: TcxGridDBCardViewRow
                  Caption = #25509#22320#26448#26009
                  CaptionAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Filtering = False
                  DataBinding.FieldName = 'FGround'
                end
                object FLighting_Card: TcxGridDBCardViewRow
                  Caption = #29031#26126#28783#20855
                  CaptionAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Filtering = False
                  DataBinding.FieldName = 'FLighting'
                end
                object FCable_Card: TcxGridDBCardViewRow
                  Caption = #30005#32518
                  CaptionAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Filtering = False
                  DataBinding.FieldName = 'FCable'
                end
                object FBridge_Card: TcxGridDBCardViewRow
                  Caption = #26725#26550
                  CaptionAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Filtering = False
                  DataBinding.FieldName = 'FBridge'
                end
                object FItemID_Card: TcxGridDBCardViewRow
                  Caption = 'FItemID'
                  PropertiesClassName = 'TcxButtonEditProperties'
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  CaptionAlignmentHorz = taRightJustify
                  Options.Editing = False
                  Options.Filtering = False
                  DataBinding.FieldName = 'FClassID'
                end
              end
              object cxGL: TcxGridLevel
                GridView = cxGV
                object cxGLC: TcxGridLevel
                  GridView = cxGVC
                end
              end
            end
          end
        end
      end
      object Panel2: TPanel
        Left = 302
        Top = 38
        Width = 1116
        Height = 603
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 3
        object PC_2: TRzPageControl
          Left = 0
          Top = 0
          Width = 1116
          Height = 603
          ActivePage = PC_Design
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabIndex = 0
          TabOrder = 0
          TabStyle = tsDoubleSlant
          FixedDimension = 22
          object PC_Design: TRzTabSheet
            Color = 14935011
            Caption = #29983#20135#25490#20135#34920
            object SP_Item: TRzSizePanel
              Left = 0
              Top = 0
              Width = 1112
              Height = 149
              Align = alTop
              Color = 14935011
              HotSpotVisible = True
              ParentShowHint = False
              ShowHint = False
              SizeBarWidth = 5
              TabOrder = 0
              VisualStyle = vsGradient
              object cxGrid_Item: TcxGrid
                Left = 0
                Top = 0
                Width = 1112
                Height = 143
                Align = alClient
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                PopupMenu = PM
                TabOrder = 0
                OnContextPopup = cxGrid_ItemContextPopup
                object cxGV_Item: TcxGridDBTableView
                  OnDblClick = cxGV_ItemDblClick
                  DataController.DataSource = DS_Mdata_Item
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <
                    item
                      Format = #23567#35745#65306'0.0000'
                      Kind = skSum
                      FieldName = 'jz'
                    end>
                  DataController.Summary.SummaryGroups = <>
                  NavigatorButtons.ConfirmDelete = False
                  NavigatorButtons.PriorPage.Visible = False
                  NavigatorButtons.NextPage.Visible = False
                  NavigatorButtons.Insert.Visible = True
                  NavigatorButtons.Delete.Visible = True
                  NavigatorButtons.Edit.Visible = False
                  NavigatorButtons.Post.Visible = True
                  NavigatorButtons.Cancel.Visible = False
                  NavigatorButtons.Refresh.Visible = True
                  NavigatorButtons.SaveBookmark.Visible = False
                  NavigatorButtons.GotoBookmark.Visible = False
                  NavigatorButtons.Filter.Visible = False
                  OnFocusedRecordChanged = cxGV_ItemFocusedRecordChanged
                  OptionsData.Appending = True
                  OptionsData.CancelOnExit = False
                  OptionsData.DeletingConfirmation = False
                  OptionsView.Navigator = True
                  OptionsView.CellAutoHeight = True
                  OptionsView.Footer = True
                  OptionsView.GroupByBox = False
                  object FItemNum_Item: TcxGridDBColumn
                    Caption = #26723#26696#21495
                    PropertiesClassName = 'TcxButtonEditProperties'
                    Properties.Buttons = <
                      item
                        Default = True
                        Kind = bkEllipsis
                      end>
                    Properties.OnButtonClick = FItemNum_ItemPropertiesButtonClick
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 102
                    DataBinding.FieldName = 'FItemNum'
                  end
                  object FItemName_Item: TcxGridDBColumn
                    Caption = #39033#30446#21517#31216
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 194
                    DataBinding.FieldName = 'FItemName'
                  end
                  object FSCM_Item: TcxGridDBColumn
                    Caption = #21333#29255#26426
                    PropertiesClassName = 'TcxCheckBoxProperties'
                    Properties.DisplayUnchecked = 'False'
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 41
                    DataBinding.FieldName = 'FSCM'
                  end
                  object FPLC_Item: TcxGridDBColumn
                    Caption = 'PLC '
                    PropertiesClassName = 'TcxCheckBoxProperties'
                    Properties.DisplayUnchecked = 'False'
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 33
                    DataBinding.FieldName = 'FPLC'
                  end
                  object FDCS_Item: TcxGridDBColumn
                    Caption = 'DCS'
                    PropertiesClassName = 'TcxCheckBoxProperties'
                    Properties.DisplayUnchecked = 'False'
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 33
                    DataBinding.FieldName = 'FDCS'
                  end
                  object FContPlan_Item: TcxGridDBColumn
                    Caption = #25511#21046#26041#26696#35828#26126
                    PropertiesClassName = 'TcxMemoProperties'
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 228
                    DataBinding.FieldName = 'FContPlan'
                  end
                  object FGround_Item: TcxGridDBColumn
                    Caption = #25509#22320#26448#26009
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
                    Width = 120
                    DataBinding.FieldName = 'FGround'
                  end
                  object FLighting_Item: TcxGridDBColumn
                    Caption = #29031#26126#28783#20855
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
                    Width = 100
                    DataBinding.FieldName = 'FLighting'
                  end
                  object FCable_Item: TcxGridDBColumn
                    Caption = #26725#26550
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
                    Width = 100
                    DataBinding.FieldName = 'FCable'
                  end
                  object FBridge_Item: TcxGridDBColumn
                    Caption = #30005#32518
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
                    Width = 80
                    DataBinding.FieldName = 'FBridge'
                  end
                  object FItemID_Item: TcxGridDBColumn
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 51
                    DataBinding.FieldName = 'FItemID'
                  end
                end
                object cxGL_Item: TcxGridLevel
                  GridView = cxGV_Item
                end
              end
            end
            object RP_ECL: TRzSizePanel
              Left = 758
              Top = 149
              Width = 354
              Height = 428
              Align = alRight
              Color = 14935011
              HotSpotVisible = True
              SizeBarWidth = 7
              TabOrder = 1
              VisualStyle = vsGradient
              object PC_ECL: TPageControl
                Left = 8
                Top = 0
                Width = 346
                Height = 428
                ActivePage = TS_DD
                Align = alClient
                TabOrder = 0
                object TS_DD: TTabSheet
                  Caption = #21464#21160#21453#39304#34920
                  object cxGrid_List_ECL: TcxGrid
                    Left = 0
                    Top = 35
                    Width = 338
                    Height = 313
                    Align = alClient
                    PopupMenu = PM
                    TabOrder = 0
                    OnContextPopup = cxGrid_List_ECLContextPopup
                    object cxGV_List_ECL: TcxGridDBTableView
                      DataController.DataSource = DS_List_ECL
                      DataController.Summary.DefaultGroupSummaryItems = <>
                      DataController.Summary.FooterSummaryItems = <>
                      DataController.Summary.SummaryGroups = <>
                      NavigatorButtons.ConfirmDelete = False
                      NavigatorButtons.PriorPage.Visible = False
                      NavigatorButtons.NextPage.Visible = False
                      NavigatorButtons.Insert.Visible = True
                      NavigatorButtons.Delete.Visible = True
                      NavigatorButtons.Edit.Visible = False
                      NavigatorButtons.Post.Visible = True
                      NavigatorButtons.Cancel.Visible = False
                      NavigatorButtons.Refresh.Visible = False
                      NavigatorButtons.SaveBookmark.Visible = False
                      NavigatorButtons.GotoBookmark.Visible = False
                      NavigatorButtons.Filter.Visible = False
                      OptionsData.CancelOnExit = False
                      OptionsData.DeletingConfirmation = False
                      OptionsData.Editing = False
                      OptionsSelection.MultiSelect = True
                      OptionsView.Navigator = True
                      OptionsView.Footer = True
                      OptionsView.GroupByBox = False
                      object FElecCont: TcxGridDBColumn
                        Caption = #25511#21046#23545#35937
                        PropertiesClassName = 'TcxButtonEditProperties'
                        Properties.Buttons = <
                          item
                            Default = True
                            Kind = bkEllipsis
                          end>
                        Properties.OnButtonClick = FElecContPropertiesButtonClick
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 188
                        DataBinding.FieldName = 'FElecCont'
                      end
                      object FLoadCapacity: TcxGridDBColumn
                        Caption = #25511#21046#23545#35937#23481#37327
                        PropertiesClassName = 'TcxButtonEditProperties'
                        Properties.Buttons = <
                          item
                            Default = True
                            Kind = bkEllipsis
                          end>
                        Properties.OnButtonClick = FLoadCapacityPropertiesButtonClick
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 92
                        DataBinding.FieldName = 'FLoadCapacity'
                      end
                      object FContdQry: TcxGridDBColumn
                        Caption = #25968#37327
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 53
                        DataBinding.FieldName = 'FContdQry'
                      end
                      object FElecContListID: TcxGridDBColumn
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        DataBinding.FieldName = 'FElecContListID'
                      end
                      object cxGV_List_ECLDBColumn1: TcxGridDBColumn
                        PropertiesClassName = 'TcxCheckBoxProperties'
                        Properties.DisplayUnchecked = 'False'
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 41
                        DataBinding.FieldName = 'IsApp'
                      end
                      object cxGV_List_ECLDBColumn2: TcxGridDBColumn
                        PropertiesClassName = 'TcxCheckBoxProperties'
                        Properties.DisplayUnchecked = 'False'
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 38
                        DataBinding.FieldName = 'IsEdit'
                      end
                    end
                    object cxGL_List_ECL: TcxGridLevel
                      GridView = cxGV_List_ECL
                    end
                  end
                  object Panel_button_ECL: TPanel
                    Left = 0
                    Top = 348
                    Width = 338
                    Height = 49
                    Align = alBottom
                    BevelOuter = bvNone
                    ParentColor = True
                    TabOrder = 1
                    Visible = False
                    object OKBtn_ECL: TcxButton
                      Left = 14
                      Top = 16
                      Width = 80
                      Height = 25
                      BiDiMode = bdRightToLeftReadingOnly
                      Caption = #20445#23384'[&S]'
                      ParentBiDiMode = False
                      TabOrder = 0
                      Visible = False
                      OnClick = OKBtn_ECLClick
                      Glyph.Data = {
                        66010000424D6601000000000000760000002800000014000000140000000100
                        040000000000F000000000000000000000001000000000000000000000000000
                        8000008000000080800080000000800080008080000080808000C0C0C0000000
                        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
                        FFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFF5AFFFFF
                        0000000000000FFFF5AFFFF08B000000880B0FFF55FAFFF0B800000088080FFF
                        55FAFFF08B000000880B0FFFFFFFFFF0B800000000080FFFFFFFFFF08B8B8B8B
                        8B8B0FFFFFFFFFF0B800000000B80FFFFFFFFFF080888888880B0FFFFFFFFFF0
                        B088888888080FFFFFFFFFF080888888880B0FFFFFFFFFF0B088888888080FFF
                        FFFFFFF08088888888000FFFFFFFFFF0B088888888080FFFFFFFFFF000000000
                        00000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                        FFFFFFFFFFFFFFFF0000}
                      LookAndFeel.Kind = lfUltraFlat
                      LookAndFeel.NativeStyle = False
                      UseSystemPaint = False
                    end
                    object CancelBtn_ECL: TcxButton
                      Left = 118
                      Top = 16
                      Width = 80
                      Height = 25
                      BiDiMode = bdRightToLeftReadingOnly
                      Caption = #21462#28040'[&C]'
                      ParentBiDiMode = False
                      TabOrder = 1
                      Visible = False
                      OnClick = CancelBtn_ECLClick
                      Glyph.Data = {
                        36040000424D3604000000000000360000002800000010000000100000000100
                        2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
                        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                        FF00FFFFFF00FFFFFF00CC9966009933000099330000CC996600FFFFFF00FFFF
                        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                        FF00FFFFFF009933000099330000CC660000CC66000099330000FFFFFF00FFFF
                        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                        FF0099330000CC660000CC6600009933000099330000CC996600FFFFFF00FFFF
                        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC99
                        660099330000CC66000099330000CC996600FFFFFF00FFFFFF00993300009933
                        00009933000099330000993300009933000099330000FFFFFF00FFFFFF009933
                        0000CC66000099330000CC996600FFFFFF00FFFFFF00FFFFFF0099330000CC66
                        0000CC660000CC660000CC660000CC66000099330000FFFFFF00FFFFFF009933
                        0000CC66000099330000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009933
                        0000CC660000CC660000CC660000CC66000099330000FFFFFF00FFFFFF009933
                        0000CC66000099330000CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC99
                        660099330000CC660000CC660000CC66000099330000FFFFFF00FFFFFF00CC99
                        660099330000CC66000099330000CC996600FFFFFF00CC996600993300009933
                        0000CC66000099330000CC660000CC66000099330000FFFFFF00FFFFFF00FFFF
                        FF0099330000CC660000CC660000993300009933000099330000CC660000CC66
                        000099330000CC99660099330000CC66000099330000FFFFFF00FFFFFF00FFFF
                        FF00FFFFFF009933000099330000CC660000CC660000CC660000993300009933
                        0000FFFFFF00FFFFFF00FFFFFF009933000099330000FFFFFF00FFFFFF00FFFF
                        FF00FFFFFF00FFFFFF00CC996600993300009933000099330000CC996600FFFF
                        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
                      LookAndFeel.Kind = lfUltraFlat
                      LookAndFeel.NativeStyle = False
                      UseSystemPaint = False
                    end
                  end
                  object ToolBar3: TToolBar
                    Left = 0
                    Top = 0
                    Width = 338
                    Height = 35
                    AutoSize = True
                    ButtonHeight = 35
                    ButtonWidth = 55
                    Caption = 'ToolBar1'
                    EdgeBorders = []
                    Flat = True
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = #23435#20307
                    Font.Style = []
                    Images = ImageList
                    ParentFont = False
                    ShowCaptions = True
                    TabOrder = 2
                    object TB_Edit_ECL: TToolButton
                      Left = 0
                      Top = 0
                      AutoSize = True
                      Caption = #20462#25913'[&E]'
                      ImageIndex = 2
                      OnClick = TB_Edit_ECLClick
                    end
                    object TB_Del_ECL: TToolButton
                      Left = 53
                      Top = 0
                      AutoSize = True
                      Caption = #21024#38500'[&D]'
                      ImageIndex = 3
                    end
                  end
                end
              end
            end
            object PC_List: TPageControl
              Left = 0
              Top = 149
              Width = 758
              Height = 428
              ActivePage = TS_List
              Align = alClient
              TabOrder = 2
              OnChange = PC_ListChange
              object TS_List: TTabSheet
                Caption = #29983#20135#35745#21010#21464#21160#24773#20917#34920
                object cxGrid_List: TcxGrid
                  Left = 0
                  Top = 0
                  Width = 750
                  Height = 348
                  Align = alClient
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  PopupMenu = PM
                  TabOrder = 0
                  OnContextPopup = cxGrid_ListContextPopup
                  object cxGV_List: TcxGridDBTableView
                    DataController.DataSource = DS_List
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <
                      item
                        Format = #23567#35745#65306'0.0000'
                        Kind = skSum
                        FieldName = 'jz'
                      end>
                    DataController.Summary.SummaryGroups = <>
                    NavigatorButtons.ConfirmDelete = False
                    NavigatorButtons.PriorPage.Visible = False
                    NavigatorButtons.NextPage.Visible = False
                    NavigatorButtons.Insert.Visible = True
                    NavigatorButtons.Delete.Visible = True
                    NavigatorButtons.Edit.Visible = False
                    NavigatorButtons.Post.Visible = True
                    NavigatorButtons.Cancel.Visible = False
                    NavigatorButtons.Refresh.Visible = True
                    NavigatorButtons.SaveBookmark.Visible = False
                    NavigatorButtons.GotoBookmark.Visible = False
                    NavigatorButtons.Filter.Visible = False
                    OnFocusedRecordChanged = cxGV_ListFocusedRecordChanged
                    OptionsData.Appending = True
                    OptionsData.CancelOnExit = False
                    OptionsData.DeletingConfirmation = False
                    OptionsView.Navigator = True
                    OptionsView.CellAutoHeight = True
                    OptionsView.Footer = True
                    OptionsView.GroupByBox = False
                    object FElecProductName: TcxGridDBColumn
                      Caption = #20135#21697#21517#31216
                      PropertiesClassName = 'TcxButtonEditProperties'
                      Properties.Buttons = <
                        item
                          Default = True
                          Kind = bkEllipsis
                        end>
                      Properties.OnButtonClick = FElecProductNamePropertiesButtonClick
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Options.Sorting = False
                      Width = 102
                      DataBinding.FieldName = 'FElecProductName'
                    end
                    object FElecLoadCapacity: TcxGridDBColumn
                      Caption = #36127#33655#23481#37327
                      PropertiesClassName = 'TcxButtonEditProperties'
                      Properties.Buttons = <
                        item
                          Default = True
                          Kind = bkEllipsis
                        end>
                      Properties.OnButtonClick = FElecLoadCapacityPropertiesButtonClick
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Options.Sorting = False
                      Width = 123
                      DataBinding.FieldName = 'FElecLoadCapacity'
                    end
                    object FElecProductQry: TcxGridDBColumn
                      Caption = #25968#37327
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 53
                      DataBinding.FieldName = 'FElecProductQry'
                    end
                    object FDeviceModel: TcxGridDBColumn
                      Caption = #20027#35201#22120#20214#22411#21495
                      PropertiesClassName = 'TcxButtonEditProperties'
                      Properties.Buttons = <
                        item
                          Default = True
                          Kind = bkEllipsis
                        end>
                      Properties.OnButtonClick = FDeviceModelPropertiesButtonClick
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 166
                      DataBinding.FieldName = 'FDeviceModel'
                    end
                    object FCableModel: TcxGridDBColumn
                      Caption = #30005#32518#22411#21495
                      PropertiesClassName = 'TcxButtonEditProperties'
                      Properties.Buttons = <
                        item
                          Default = True
                          Kind = bkEllipsis
                        end>
                      Properties.OnButtonClick = FCableModelPropertiesButtonClick
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Options.Sorting = False
                      Width = 124
                      DataBinding.FieldName = 'FCableModel'
                    end
                    object FElecJudgeListRemark: TcxGridDBColumn
                      Caption = #22791#27880
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
                      Width = 132
                      DataBinding.FieldName = 'FElecJudgeListRemark'
                    end
                    object IsApp: TcxGridDBColumn
                      PropertiesClassName = 'TcxCheckBoxProperties'
                      Properties.DisplayUnchecked = 'False'
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 41
                      DataBinding.FieldName = 'IsApp'
                    end
                    object IsEdit: TcxGridDBColumn
                      PropertiesClassName = 'TcxCheckBoxProperties'
                      Properties.DisplayUnchecked = 'False'
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 38
                      DataBinding.FieldName = 'IsEdit'
                    end
                  end
                  object cxGL_List: TcxGridLevel
                    GridView = cxGV_List
                  end
                end
                object Panel_button: TPanel
                  Left = 0
                  Top = 348
                  Width = 750
                  Height = 49
                  Align = alBottom
                  BevelOuter = bvNone
                  ParentColor = True
                  TabOrder = 1
                  Visible = False
                  object OKBtn: TcxButton
                    Left = 22
                    Top = 16
                    Width = 80
                    Height = 25
                    BiDiMode = bdRightToLeftReadingOnly
                    Caption = #20445#23384'[&S]'
                    ParentBiDiMode = False
                    TabOrder = 0
                    Visible = False
                    OnClick = OKBtnClick
                    Glyph.Data = {
                      66010000424D6601000000000000760000002800000014000000140000000100
                      040000000000F000000000000000000000001000000000000000000000000000
                      8000008000000080800080000000800080008080000080808000C0C0C0000000
                      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
                      FFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFF5AFFFFF
                      0000000000000FFFF5AFFFF08B000000880B0FFF55FAFFF0B800000088080FFF
                      55FAFFF08B000000880B0FFFFFFFFFF0B800000000080FFFFFFFFFF08B8B8B8B
                      8B8B0FFFFFFFFFF0B800000000B80FFFFFFFFFF080888888880B0FFFFFFFFFF0
                      B088888888080FFFFFFFFFF080888888880B0FFFFFFFFFF0B088888888080FFF
                      FFFFFFF08088888888000FFFFFFFFFF0B088888888080FFFFFFFFFF000000000
                      00000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                      FFFFFFFFFFFFFFFF0000}
                    LookAndFeel.Kind = lfUltraFlat
                    LookAndFeel.NativeStyle = False
                    UseSystemPaint = False
                  end
                  object CancelBtn: TcxButton
                    Left = 118
                    Top = 16
                    Width = 80
                    Height = 25
                    BiDiMode = bdRightToLeftReadingOnly
                    Caption = #21462#28040'[&C]'
                    ParentBiDiMode = False
                    TabOrder = 1
                    Visible = False
                    OnClick = CancelBtnClick
                    Glyph.Data = {
                      36040000424D3604000000000000360000002800000010000000100000000100
                      2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00CC9966009933000099330000CC996600FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF009933000099330000CC660000CC66000099330000FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF0099330000CC660000CC6600009933000099330000CC996600FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC99
                      660099330000CC66000099330000CC996600FFFFFF00FFFFFF00993300009933
                      00009933000099330000993300009933000099330000FFFFFF00FFFFFF009933
                      0000CC66000099330000CC996600FFFFFF00FFFFFF00FFFFFF0099330000CC66
                      0000CC660000CC660000CC660000CC66000099330000FFFFFF00FFFFFF009933
                      0000CC66000099330000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009933
                      0000CC660000CC660000CC660000CC66000099330000FFFFFF00FFFFFF009933
                      0000CC66000099330000CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC99
                      660099330000CC660000CC660000CC66000099330000FFFFFF00FFFFFF00CC99
                      660099330000CC66000099330000CC996600FFFFFF00CC996600993300009933
                      0000CC66000099330000CC660000CC66000099330000FFFFFF00FFFFFF00FFFF
                      FF0099330000CC660000CC660000993300009933000099330000CC660000CC66
                      000099330000CC99660099330000CC66000099330000FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF009933000099330000CC660000CC660000CC660000993300009933
                      0000FFFFFF00FFFFFF00FFFFFF009933000099330000FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00CC996600993300009933000099330000CC996600FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
                    LookAndFeel.Kind = lfUltraFlat
                    LookAndFeel.NativeStyle = False
                    UseSystemPaint = False
                  end
                end
              end
              object TS_Content: TTabSheet
                Caption = #25216#26415#24046#24322#35780#23457
                ImageIndex = 1
                object cxGrid_List2: TcxGrid
                  Left = 0
                  Top = 0
                  Width = 377
                  Height = 194
                  Align = alClient
                  PopupMenu = PM
                  TabOrder = 0
                  OnContextPopup = cxGrid_List_ECLContextPopup
                  object cxGV_List2: TcxGridDBTableView
                    DataController.DataSource = DS_List2
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <>
                    DataController.Summary.SummaryGroups = <>
                    NavigatorButtons.ConfirmDelete = False
                    NavigatorButtons.PriorPage.Visible = False
                    NavigatorButtons.NextPage.Visible = False
                    NavigatorButtons.Insert.Visible = True
                    NavigatorButtons.Delete.Visible = True
                    NavigatorButtons.Edit.Visible = False
                    NavigatorButtons.Post.Visible = True
                    NavigatorButtons.Cancel.Visible = False
                    NavigatorButtons.Refresh.Visible = False
                    NavigatorButtons.SaveBookmark.Visible = False
                    NavigatorButtons.GotoBookmark.Visible = False
                    NavigatorButtons.Filter.Visible = False
                    OptionsData.CancelOnExit = False
                    OptionsData.DeletingConfirmation = False
                    OptionsData.Editing = False
                    OptionsSelection.MultiSelect = True
                    OptionsView.Navigator = True
                    OptionsView.Footer = True
                    OptionsView.GroupByBox = False
                    object FElecJudgeContentNum: TcxGridDBColumn
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 37
                      DataBinding.FieldName = #24207#21495
                    end
                    object FElecJudgeContent: TcxGridDBColumn
                      Caption = #35780#23457#20869#23481
                      PropertiesClassName = 'TcxButtonEditProperties'
                      Properties.Buttons = <
                        item
                          Default = True
                          Kind = bkEllipsis
                        end>
                      Properties.OnButtonClick = FElecJudgeContentPropertiesButtonClick
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 248
                      DataBinding.FieldName = 'FElecJudgeContent'
                    end
                    object FElecJudgeResult: TcxGridDBColumn
                      Caption = #35780#23457#32467#26524
                      PropertiesClassName = 'TcxButtonEditProperties'
                      Properties.Buttons = <
                        item
                          Default = True
                          Kind = bkEllipsis
                        end>
                      Properties.OnButtonClick = FElecJudgeResultPropertiesButtonClick
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 233
                      DataBinding.FieldName = 'FElecJudgeResult'
                    end
                    object cxGV_List2DBColumn1: TcxGridDBColumn
                      Caption = 'IsApp'
                      PropertiesClassName = 'TcxCheckBoxProperties'
                      Properties.DisplayUnchecked = 'False'
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 41
                    end
                  end
                  object cxGL_List2: TcxGridLevel
                    GridView = cxGV_List2
                  end
                end
              end
              object TS_Cont: TTabSheet
                Caption = #25511#21046#23545#35937#27719#24635
                ImageIndex = 2
                object cxGrid_Sum: TcxGrid
                  Left = 0
                  Top = 0
                  Width = 377
                  Height = 194
                  Align = alClient
                  PopupMenu = PM
                  TabOrder = 0
                  OnContextPopup = cxGrid_List_ECLContextPopup
                  object cxGV_Sum: TcxGridDBTableView
                    DataController.DataSource = DS_Sum
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <>
                    DataController.Summary.SummaryGroups = <>
                    NavigatorButtons.ConfirmDelete = False
                    NavigatorButtons.PriorPage.Visible = False
                    NavigatorButtons.NextPage.Visible = False
                    NavigatorButtons.Insert.Visible = True
                    NavigatorButtons.Delete.Visible = True
                    NavigatorButtons.Edit.Visible = False
                    NavigatorButtons.Post.Visible = True
                    NavigatorButtons.Cancel.Visible = False
                    NavigatorButtons.Refresh.Visible = False
                    NavigatorButtons.SaveBookmark.Visible = False
                    NavigatorButtons.GotoBookmark.Visible = False
                    NavigatorButtons.Filter.Visible = False
                    OptionsData.CancelOnExit = False
                    OptionsData.DeletingConfirmation = False
                    OptionsData.Editing = False
                    OptionsSelection.MultiSelect = True
                    OptionsView.Navigator = True
                    OptionsView.Footer = True
                    OptionsView.GroupByBox = False
                    object FElecCont_Sum: TcxGridDBColumn
                      Caption = #25511#21046#23545#35937
                      PropertiesClassName = 'TcxButtonEditProperties'
                      Properties.Buttons = <
                        item
                          Default = True
                          Kind = bkEllipsis
                        end>
                      Properties.OnButtonClick = FElecContPropertiesButtonClick
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 171
                      DataBinding.FieldName = 'FElecCont'
                    end
                    object FLoadCapacity_Sum: TcxGridDBColumn
                      Caption = #36127#33655#23481#37327
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
                      Width = 77
                      DataBinding.FieldName = 'FLoadCapacity'
                    end
                    object FContdSumQry: TcxGridDBColumn
                      Caption = #25968#37327
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 68
                      DataBinding.FieldName = 'FContdSumQry'
                    end
                    object FItemID_Sum: TcxGridDBColumn
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 59
                      DataBinding.FieldName = 'FItemID'
                    end
                  end
                  object cxGL_Sum: TcxGridLevel
                    GridView = cxGV_Sum
                  end
                end
              end
            end
          end
        end
      end
    end
    object Panel3: TPanel
      Left = 3
      Top = 649
      Width = 1420
      Height = 24
      Align = alBottom
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 1
      object Bevel1: TBevel
        Left = 0
        Top = 0
        Width = 1420
        Height = 2
        Align = alTop
      end
      object stbBar: TRzStatusBar
        Left = 0
        Top = 5
        Width = 1420
        Height = 19
        BorderInner = fsNone
        BorderOuter = fsNone
        BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
        BorderWidth = 0
        TabOrder = 0
        object RzClockStatus1: TRzClockStatus
          Left = 0
          Top = 0
          Width = 128
          Height = 19
          Align = alLeft
          Format = 'yyyy'#24180'mm'#26376'dd'#26085'hh:nn'
        end
        object RzKeyStatus1: TRzKeyStatus
          Left = 128
          Top = 0
          Height = 19
          Align = alLeft
          KeyStrings.CapsLock = #22823#20889
          KeyStrings.NumLock = #25968#23383
          KeyStrings.ScrollLock = #28378#21160
          KeyStrings.Insert = #25554#20837
          KeyStrings.Overwrite = #25913#20889
          Alignment = taCenter
        end
        object RzKeyStatus2: TRzKeyStatus
          Left = 173
          Top = 0
          Height = 19
          Align = alLeft
          Key = tkNumLock
          KeyStrings.CapsLock = 'CAPS'
          KeyStrings.NumLock = #25968#23383
          KeyStrings.ScrollLock = 'SCR'
          KeyStrings.Insert = #25554#20837
          KeyStrings.Overwrite = 'Overwrite'
          Alignment = taCenter
        end
        object RzKeyStatus3: TRzKeyStatus
          Left = 218
          Top = 0
          Height = 19
          Align = alLeft
          Key = tkInsert
          KeyStrings.CapsLock = 'CAPS'
          KeyStrings.NumLock = 'NUM'
          KeyStrings.ScrollLock = 'SCR'
          KeyStrings.Insert = #25554#20837
          KeyStrings.Overwrite = #25913#20889
          Alignment = taCenter
        end
        object stbMsg: TRzFieldStatus
          Left = 263
          Top = 0
          Width = 1157
          Height = 19
          Align = alClient
          FieldLabel = #24403#21069#20449#24687
          Caption = #29366#24577#20449#24687
        end
      end
    end
  end
  object MData: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 75
    Top = 104
  end
  object DS_Mdata: TDataSource
    DataSet = MData
    Left = 35
    Top = 104
  end
  object ImageList: TImageList
    Left = 171
    Top = 310
    Bitmap = {
      494C01010A000E00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7EFF700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E7EF
      F700E7E7E700CECECE00E7E7E700E7EFF7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7EFF700E7E7E700B5B5
      B500CE9C9C009C6363009C636300B5B5B500CECECE00E7E7E700E7EFF7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E7E7E700CE9C9C009C636300CE9C
      9C00CE9C9C00FFFFFF009C6363009C9C9C009C9C9C00B5B5B500E7E7E7000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C00000FFFF000000000000000000000000000000000000000000C0C0C0000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C636300CE9C9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C63630031639C0031639C0031639C00E7EFF7000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00C0C0C0000000000000000000000000000000000000000000C0C0C0000000
      0000C0C0C0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C636300FFCE9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C63630063CECE0063CECE00009CCE00FFFFFF00FFCE
      CE0000000000000000000000000000000000000000000000000000000000C0C0
      C00000FFFF000000000000000000000000000000000000000000C0C0C0000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C636300FFCE9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C63630063CECE0063CEFF00319CCE00FFCECE00CE63
      000000000000000000000000000000000000000000000000000000000000C0C0
      C00000FFFF00C0C0C000C0C0C00000FFFF00C0C0C00000FFFF0000FFFF00C0C0
      C00000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C636300FFCE9C00CE9C9C00CE9C
      6300FFCECE00FFFFFF009C6363009CCECE009CCEFF00B5B5B500FF630000CE63
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00C0C0C00000000000000000000000000000000000000000000000000000FF
      FF00C0C0C0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C636300FFCE9C009C636300FFFF
      FF00FFCECE00FFFFFF009C6363009CCECE00C6C6C600CE630000CE630000CE63
      0000CE630000CE630000CE63000000000000000000000000000000000000C0C0
      C00000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C636300FFCE9C00CE9C9C009C63
      6300FFCECE00FFFFFF009C63630000000000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE6300000000000000000000000000000000000000FF
      FF0000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000C0C0C0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C636300FFCE9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C63630000000000CE9C9C00CE630000CE630000CE63
      0000CE630000CE630000CE6300000000000000000000000000000000000000FF
      FF0000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000C0C0C0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C636300FFCE9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C636300CECECE00E7EFF700CE9C9C00FF630000CE63
      000000000000000000000000000000000000000000000000000000000000C0C0
      C00000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C636300FFCE9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C6363009CCECE00000000009CCECE00FFCE9C00CE63
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000C0C0C0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C636300CE9C9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C636300CECECE0000000000319CCE0000000000FFCE
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600CE9C6300CE9C
      9C00CECE9C00FFFFFF009C636300009CCE00009CCE00009CCE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CECE
      CE00CE9C9C009C6363009C636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000008080000080000000800
      0000100808000000000000000000000800000008000008080000100000001000
      080000000800BDC6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C3100009C310000CE6300009C310000CE6300009C3100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C8C8C00C6C6C600CED6D600CED6
      CE00BDCEC600BDCEC600BDDEC600B5D6C600BDD6C600C6CECE00CECECE00CEC6
      CE0000000000C6D6D6000000000000000000948C390029A56B00318C4A00088C
      2900108C3100188C3900298C4200218C4200108C3100088C2900188C3900218C
      4200298C4200108C3100218C3900000000000000000000000000000000000000
      0000000000009C310000CE6300009C310000CE6300009C3100009C3100000000
      00000000000000000000000000000000000000000000000000009C3100009C31
      00009C3100009C3100009C3100009C3100009C3100009C3100009C3100009C31
      00009C31000000000000000000000000000084848C00F7FFFF00E7FFFF00D6FF
      F700D6FFFF00BDFFF70021845200B5FFDE00DEFFFF00DEEFFF00EFFFFF00BDCE
      D60000000800C6C6CE0000000000000000009C8C4A00318C4A00A5DE9C00FFF7
      FF00F7EFF700EFEFE700DEEFDE00E7EFE700F7EFEF00F7EFF700EFEFEF00E7EF
      E700DEEFDE00F7F7EF00218C3900000000000000000000000000000000000000
      0000000000009C3100009C310000CE6300009C310000CE6300009C3100000000
      00000000000000000000000000000000000000000000CE9C6300FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00CE9C
      6300CE9C63009C3100000000000000000000848C8C00EFFFFF00D6FFFF00CEFF
      FF00B5FFEF00107B5200108C5200B5FFE700BDFFE700DEFFFF00D6F7F700B5CE
      CE0000080800BDC6C6000000000000000000AD8C5200188C3100EFEFEF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00218C3900000000000000000000000000000000000000
      0000000000009C9C9C009C3100009C3100009C3100009C3100009C9C9C000000
      000000000000000000000000000000000000CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      63009C310000CE9C63009C3100000000000073848C00EFFFFF00DEFFFF00BDFF
      EF0010845200088C520008844A0018844A00317B4200D6FFDE00DEFFF700B5CE
      CE0000080800CECECE000000000000000000AD8C5A00108C2900DEE7DE00CEE7
      CE00E7EFE700E7EFE700E7EFE700E7EFE700DEEFDE00DEEFDE00B5D6B500A5CE
      A500B5D6B50094BD9400218C3900000000000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00FFCECE0063636300000000000000
      000000000000000000000000000000000000CE9C6300FFFFFF00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE
      9C00CE9C63009C3100009C3100000000000073848400EFFFFF00CEFFEF00CEFF
      F700A5FFDE00108C4A0010845200BDFFE7003984390029632100D6FFDE00BDD6
      CE0000000000C6BDC6000000000000000000AD8C520018943100E7F7E700187B
      1800187B1800187B1800187B1800187B18004A944A0073B5730042944200187B
      1800187B180031843100218C3900000000000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00FFCECE0063636300000000000000
      000000000000000000000000000000000000CE9C6300FFFFFF00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C0000CE0000009C0000FFCE9C000000FF000000CE00FFCE
      9C00CE9C6300CE9C63009C310000000000007B8C8400F7FFFF00E7FFF700CEFF
      DE00CEFFEF00B5FFE70021846300ADFFDE00DEFFDE0029521800E7FFF700BDD6
      CE0000000800D6CEDE000000000000000000A58C4A00218C3900E7EFE700CECE
      CE00187B1800187B1800187B1800187B180063A563008CCE8C00187B1800187B
      180018731800E7F7E700218C3900000000000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00FFCECE0063636300000000000000
      000000000000000000000000000000000000CE9C6300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CE9C6300CE9C6300CE9C63009C3100008C8C8400F7FFF700E7FFEF00295A
      3900D6FFE700C6FFEF00ADFFEF00BDFFEF00D6FFDE00395A3900DEFFEF00B5CE
      CE0000000800D6C6DE00000000000000000000000000298C4200CEE7CE00FFFF
      FF00CED6CE00187B1800187B1800187B180094CE9400187B1800187B18005294
      5200107B1000A5CEA500218C3900000000000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00FFCECE0063636300000000000000
      000000000000000000000000000000000000CE9C6300FFFFFF00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE
      9C00CE9C6300CE9C6300CE9C63009C3100008C848400FFFFFF00F7FFF7003152
      3900E7FFF700C6FFE700188C5200A5FFDE00CEFFF700D6FFEF00DEFFF700BDD6
      CE0000000800CEC6D600000000000000000000000000298C4200CEE7CE00FFFF
      FF00FFFFFF00B5CEB500187B18008CCE8C00187B1800187B180084B58400BDD6
      BD00ADD6AD00DEDEDE00218C3900000000000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00FFCECE0063636300000000000000
      00000000000000000000000000000000000000000000CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300FFCE
      9C00FFCE9C00CE9C6300CE9C63009C310000948C8C00FFFFFF00EFFFEF003152
      39004A735A00CEFFE700108C4200088C4200B5FFE700D6FFFF00DEFFF700BDD6
      CE0000000000CECECE00000000000000000000000000188C3900D6E7D600FFFF
      FF00F7FFF7008CD68C0084BD8400187B1800187B1800187B18004A944A00BDE7
      BD00FFFFFF00FFFFFF00218C3900000000000000000000000000000000000000
      0000000000000000000063636300636363006363630063636300000000000000
      0000000000000000000000000000636363000000000000000000CE9C6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9C
      6300FFCE9C00FFCE9C00CE9C63009C3100007B847B00FFFFFF00F7FFFF00D6F7
      E7004A7B5A00297B4A0010944200088C3900187B4A00CEFFEF00EFFFF700C6CE
      C60008100800C6CEC6000000000000000000AD8C5A00108C2900E7E7E700FFFF
      FF008CCE8C007BBD7B00187B1800187B1800187B1800187B1800187B1800428C
      4200A5D6A500FFFFFF00218C3900000000000000000063636300636363000000
      000000000000636363009C9C9C009C9C9C009C9C9C009C9C9C00636363000000
      000000000000000000006363630063636300000000000000000000000000CE9C
      6300FFFFFF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700FFFFFF00CE9C
      6300CE9C6300CE9C63009C31000000000000848C8C00FFFFFF00EFF7FF00EFFF
      FF00E7FFF700CEFFE70021944A0010844200BDFFE700DEFFF700BDD6C600CED6
      C60000000000CECECE000000000000000000AD8C5A00188C3100EFEFEF006BC6
      6B0052AD5200187B1800187B180084B58400DEDEDE004A944A00187B1800187B
      1800106B100084CE8400218C3900000000009C9C9C009C9C9C009C9C9C006363
      6300636363009C9C9C00CECECE00CECECE00CECECE009C9C9C00636363006363
      63006363630063636300CECECE0063636300000000000000000000000000CE9C
      6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CE9C6300000000000000000000000000848C8400F7FFFF00FFFFFF00F7FF
      FF00EFFFFF00DEFFF700317B5A00BDFFEF00D6FFF70000080000000800000000
      000000000000CEC6CE000000000000000000AD8C5200218C3900E7EFE70094B5
      9400187B1800187B180094C69400F7FFF700FFFFFF00E7E7E7009CBD9C00187B
      1800187B1800D6D6D600218C3900000000009C9C9C00FFFFFF00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE009C9C9C009C9C
      9C009C9C9C00CECECE0063636300000000000000000000000000000000000000
      0000CE9C6300FFFFFF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700FFFF
      FF00CE9C63000000000000000000000000007B848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFFFFF00CEF7EF00D6FFFF00DEFFEF007B8C8400F7F7FF000808
      1000D6CEDE00FFF7FF00000000000000000000000000218C3900E7F7E700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00218C3900000000009C9C9C00FFFFFF00CECECE00CECE
      CE00FFFFFF00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE009C9C9C0000000000000000000000000000000000000000000000
      0000CE9C6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CE9C63000000000000000000848C8C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7FFFF00EFFFFF00EFFFFF007384840000000800BDBD
      CE00FFFFFF00FFF7FF0000000000000000009C8C4A00399C52008CA5840063AD
      63006BAD6B0073AD730084AD84007BAD7B006BAD6B0063AD630073AD730084AD
      840084AD84006BAD6B00218C3900000000009C9C9C00FFFFFF00FFFFFF009C9C
      9C009C9C9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C9C
      9C009C9C9C000000000000000000000000000000000000000000000000000000
      000000000000CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C630000000000000000007B8484008C8C8C009C848400947B
      7B00948C8400848C8400848484007B8484007B8C7B00738C8400C6CED600FFFF
      FF00FFF7FF00FFFFFF0000000000000000009C8C4A00429C63004A944A00428C
      4200428C42004A8C4A004A8C4A004A8C4A004A8C4A00428C42004A8C4A004A8C
      4A004A8C4A004A8C4A00218C390000000000000000009C9C9C009C9C9C000000
      0000000000009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C63000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C63000000000000000000000000000000000000000000CE9C
      6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C63000000000031313100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      9C00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000000000000000000000000CE9C6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CE9C63000000000000000000000000000000000000000000CE9C
      6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C63003131310063636300636363006363
      6300000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003131CE000000
      FF0000009C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE9C6300FFFF
      FF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700FFFFFF00CE9C63000000000000000000000000000000000000000000CE9C
      6300FFFFFF00FFFFFF00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00FFFFFF00FFFFFF00CE9C6300000000009C9C9C00CECECE009C9C
      9C00636363006363630000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003131CE00319C
      FF000000FF0000009C0000000000000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000CE9C6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CE9C6300000000000000000000009C000000000000000000CE9C
      6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C6300000000009C9C9C00CECECE00CECE
      CE009C9C9C009C9C9C0063636300636363000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003131
      CE000063FF000000CE0000000000000000000000000000000000000000000000
      00000000FF000000000000000000000000000000000000000000CE9C6300FFFF
      FF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700FFFFFF00CE9C630000000000000000000000CE0000009C0000000000CE9C
      6300FFFFFF009C3100009C3100009C3100009C3100009C3100009C3100009C31
      00009C3100009C310000FFFFFF00CE9C630000000000000000009C9C9C00CECE
      CE00CECECE009C9C9C009C9C9C009C9C9C006363630063636300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000CE000000FF0000009C00000000000000000000000000000000000000
      FF0000009C000000000000000000000000000000000000000000CE9C6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CE9C630000000000000000000000FF000000CE0000009C00CE9C
      6300FFFFFF009C310000CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C63009C310000FFFFFF00CE9C630000000000000000009C9C9C00E7E7
      E700CECECE00CECECE009C9C9C009C9C9C009C9C9C009C310000633100006331
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000CE000000FF0000009C0000000000000000000000FF000000
      9C00000000000000000000000000000000000000000000000000CE9C6300FFFF
      FF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700FFFFFF00CE9C630000000000000000000000FF000000CE0000000000CE9C
      6300FFFFFF009C3100009C3100009C3100009C3100009C3100009C3100009C31
      00009C3100009C310000FFFFFF00CE9C63000000000000000000000000009C9C
      9C00E7E7E700CECECE00CECECE009C9C9C009C3100009C3100009C3100009C31
      0000633100000000000000000000000000000000000000000000000000000000
      000000000000000000000000CE000000FF0000009C000000FF0000009C000000
      0000000000000000000000000000000000000000000000000000CE9C6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CE9C630000000000000000000000FF000000000000000000CE9C
      6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C63000000000000000000000000009C9C
      9C00FFFFFF00E7E7E700CECECE009C3100009C3100009C3100009C3100009C31
      00009C3100006331000000000000000000000000000000000000000000000000
      00000000000000000000000000000000CE000000FF0000009C00000000000000
      0000000000000000000000000000000000000000000000000000CE9C6300FFFF
      FF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700FFFFFF00CE9C63000000000000000000000000000000000000000000CE9C
      6300FFFFFF00FFFFFF00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00FFFFFF00FFFFFF00CE9C63000000000000000000000000000000
      00009C9C9C00FFFFFF009C310000CE6331009C3100009C3100009C3100009C31
      00009C3100009C31000063310000000000000000000000000000000000000000
      000000000000000000000000CE000000FF0000009C000000CE0000009C000000
      0000000000000000000000000000000000000000000000000000CE9C6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CE9C63000000000000000000000000000000000000000000CE9C
      6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C63000000000000000000000000000000
      00009C9C9C009C310000CE6331009C310000CE6331009C3100009C3100009C31
      00009C3100009C3100009C310000633100000000000000000000000000000000
      0000000000000000CE000000FF0000009C0000000000000000000000CE000000
      9C00000000000000000000000000000000000000000000000000CE9C6300FFFF
      FF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700FFFFFF00CE9C6300CE9C
      6300CE9C6300CE9C63000000000000000000000000000000000000000000CE9C
      6300FFFFFF00FFFFFF00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00FFFFFF00FFFFFF00CE9C63000000000000000000000000000000
      0000000000009C3100009C310000CE6331009C310000CE6331009C3100009C31
      00009C3100009C3100009C3100009C3100000000000000000000000000000000
      CE000000FF000000FF0000009C00000000000000000000000000000000000000
      CE0000009C000000000000000000000000000000000000000000CE9C6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9C6300E7E7
      E700CE9C6300000000000000000000000000000000000000000000000000CE9C
      6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C63000000000000000000000000000000
      0000000000009C3100009C3100009C310000CE6331009C310000CE6331009C31
      00009C3100009C3100009C3100009C9C9C0000000000000000000000CE00319C
      FF000000FF0000009C0000000000000000000000000000000000000000000000
      00000000CE0000009C0000000000000000000000000000000000CE9C6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9C6300CE9C
      630000000000000000000000000000000000000000000000000000000000CE9C
      6300FFFFFF00FFFFFF00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00FFFFFF00FFFFFF00CE9C63000000000000000000000000000000
      000000000000000000009C3100009C3100009C310000CE6331009C310000CE63
      31009C3100009C3100009C9C9C009C9C9C00000000000000000063639C000000
      CE0063639C000000000000000000000000000000000000000000000000000000
      000000000000000000000000CE00000000000000000000000000CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C63000000
      000000000000000000000000000000000000000000000000000000000000CE9C
      6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C63000000000000000000000000000000
      00000000000000000000000000009C3100009C3100009C310000CE6331009C31
      00009C310000CECECE00CECECE009C9C9C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C63000000000000000000000000000000
      0000000000000000000000000000000000009C3100009C3100009C3100009C31
      0000E7E7E700E7E7E700CECECE00CECECE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FDFFFFFF00000000E0FFFFFF00000000
      801FE00300000000001FC00300000000001FC00300000000000FC00300000000
      000FC00300000000000FC003000000000001C003000000000101C00300000000
      0101C00300000000000FC00300000000008FC0030000000000AFC00300000000
      803FFFFF00000000E1FFFFFF000000008003FFFFF81FFFFF00030001F81FC007
      00030001F81F800300030001F81F000100030001FC3F000100030001FC3F0001
      00030001FC3F000000038001FC3F000000038001FC3F800000038001FC3EC000
      00030001981CE001000300010000E007000300010001F007000380010003F003
      000300010007F80300030001981FFFFFFFFFE000FFFFFFFFC003E0003FFFEFFD
      C003E0000FFFC7FFC003E00083FFC3FBC003600080FFE3F7C0032000C03FF1E7
      C0030000C00FF8CFC0032000E007FC1FC0036000E003FE3FC003E000F001FC1F
      C003E000F000F8CFC003E000F800E1E7C007E000F800C3F3C00FE000FC00C7FD
      C01FE000FE00FFFFFFFFE000FF00FFFF00000000000000000000000000000000
      000000000000}
  end
  object DS_Mdata_Item: TDataSource
    DataSet = MData_Item
    Left = 36
    Top = 146
  end
  object PM: TPopupMenu
    Left = 172
    Top = 200
    object N_Edit: TMenuItem
      Caption = #32534#36753
      OnClick = N_EditClick
    end
    object N_Filter: TMenuItem
      Caption = #36807#28388
      OnClick = N_FilterClick
    end
    object N_Sort: TMenuItem
      Caption = #25490#24207
      OnClick = N_SortClick
    end
    object N_Group: TMenuItem
      Caption = #20998#32452
      OnClick = N_GroupClick
    end
    object N_Set: TMenuItem
      Caption = #21462#28040#35774#32622
      OnClick = N_SetClick
    end
    object N_Out: TMenuItem
      Caption = #23548#20986
      OnClick = N_OutClick
    end
  end
  object actionList: TActionList
    Images = ImageList
    Left = 168
    Top = 128
    object Act_MaxID_Item: TAction
      Category = #21462#20540
      Caption = #21462#26368#22823'ID'
      OnExecute = Act_MaxID_ItemExecute
    end
    object Act_MaxID_List: TAction
      Category = #21462#20540
      Caption = 'Act_MaxID_List'
      OnExecute = Act_MaxID_ListExecute
    end
    object Act_Menu: TAction
      Category = #33756#21333
      Caption = 'Act_Menu'
      OnExecute = Act_MenuExecute
    end
    object Act_MaxID_List2: TAction
      Category = #21462#20540
      Caption = 'Act_MaxID_List2'
      OnExecute = Act_MaxID_List2Execute
    end
    object Act_MaxID_List_ECL: TAction
      Category = #21462#20540
      Caption = 'Act_MaxID_List_ECL'
      OnExecute = Act_MaxID_List_ECLExecute
    end
    object Act_Menu_Set: TAction
      Category = #33756#21333
      Caption = 'Act_Menu_Set'
      OnExecute = Act_Menu_SetExecute
    end
    object Act_Set_Open: TAction
      Category = #33756#21333
      Caption = 'Act_Set_Open'
      OnExecute = Act_Set_OpenExecute
    end
    object Act_Set_Close: TAction
      Category = #33756#21333
      Caption = 'Act_Set_Close'
      OnExecute = Act_Set_CloseExecute
    end
    object Act_SkillDesignDetails: TAction
      Category = #21462#20540
      Caption = #20135#21697#35774#35745#36827#24230
      OnExecute = Act_SkillDesignDetailsExecute
    end
    object Act_SkillProductDetails: TAction
      Category = #21462#20540
      Caption = 'Act_SkillProductDetails'
      OnExecute = Act_SkillProductDetailsExecute
    end
    object Act_Set_Open_ECL: TAction
      Category = #33756#21333
      Caption = 'Act_Set_Open_ECL'
      OnExecute = Act_Set_Open_ECLExecute
    end
    object Act_Set_Close_ECL: TAction
      Category = #33756#21333
      Caption = 'Act_Set_Close_ECL'
      OnExecute = Act_Set_Close_ECLExecute
    end
    object Act_ElecContList_Sum: TAction
      Category = #21462#20540
      Caption = 'Act_ElecContList_Sum'
      OnExecute = Act_ElecContList_SumExecute
    end
  end
  object MData_Item: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 83
    Top = 152
  end
  object SaveDialog1: TSaveDialog
    Left = 171
    Top = 163
  end
  object ADOProc: TADOStoredProc
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=2233815;Persist Security Info=True;' +
      'User ID=sa;Initial Catalog=DesignBom;Data Source=192.168.111.99'
    ProcedureName = 'P_PlanTask_Qry'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@FDepartmentID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Wet'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end>
    Left = 191
    Top = 333
  end
  object DS_ADOProc: TDataSource
    DataSet = ADOProc
    Left = 119
    Top = 317
  end
  object DS_List: TDataSource
    DataSet = MData_List
    Left = 35
    Top = 192
  end
  object MData_List: TdxMemData
    Indexes = <>
    SortOptions = []
    AfterInsert = MData_ListAfterInsert
    AfterEdit = MData_ListAfterEdit
    BeforeDelete = MData_ListBeforeDelete
    Left = 75
    Top = 200
  end
  object DS_List2: TDataSource
    DataSet = MData_List2
    Left = 27
    Top = 288
  end
  object MData_List2: TdxMemData
    Indexes = <>
    SortOptions = []
    AfterInsert = MData_List2AfterInsert
    AfterEdit = MData_List2AfterEdit
    BeforeDelete = MData_List2BeforeDelete
    Left = 67
    Top = 288
  end
  object DS_List_ECL: TDataSource
    DataSet = MData_List_ECL
    Left = 27
    Top = 368
  end
  object MData_List_ECL: TdxMemData
    Indexes = <>
    SortOptions = []
    AfterInsert = MData_List_ECLAfterInsert
    AfterEdit = MData_List_ECLAfterEdit
    BeforeDelete = MData_List_ECLBeforeDelete
    Left = 67
    Top = 360
  end
  object MData_Sum: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 67
    Top = 424
  end
  object DS_Sum: TDataSource
    DataSet = MData_Sum
    Left = 27
    Top = 432
  end
end
