inherited Frm_BranchWorkItem: TFrm_BranchWorkItem
  Left = 192
  Top = 113
  Caption = #23376#20844#21496#29983#20135#20219#21153#21333
  ClientHeight = 662
  ClientWidth = 1131
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image: TImage
    Width = 1131
  end
  inherited L_title: TLabel
    Left = 0
    Top = 4
    Width = 1342
    Height = 20
    Caption = #36890#29992#25968#25454#30331#35760
  end
  inherited P_back: TPanel
    Width = 1131
    Height = 641
    inherited P_main: TPanel
      Width = 1125
      Height = 635
      object PC_2: TRzPageControl [0]
        Left = 0
        Top = 0
        Width = 1123
        Height = 627
        ActivePage = TS_Edit
        Align = alClient
        Color = 14935011
        ParentColor = False
        TabIndex = 0
        TabOrder = 1
        TabOrientation = toBottom
        TabStyle = tsDoubleSlant
        FixedDimension = 19
        object TS_Edit: TRzTabSheet
          Color = 14935011
          Caption = #29983#20135#20219#21153#21333
          object PanelBkGnd: TPanel
            Left = 0
            Top = 0
            Width = 1121
            Height = 606
            Align = alClient
            BevelOuter = bvNone
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 0
            object RzSizePanel1: TRzSizePanel
              Left = 0
              Top = 0
              Width = 200
              Height = 606
              Color = 14935011
              HotSpotVisible = True
              SizeBarWidth = 7
              TabOrder = 0
              VisualStyle = vsGradient
              object MyTreeView: TTreeView
                Left = 0
                Top = 0
                Width = 192
                Height = 606
                Align = alClient
                AutoExpand = True
                Ctl3D = False
                Indent = 19
                ParentCtl3D = False
                TabOrder = 0
                OnChange = MyTreeViewChange
                OnExpanding = MyTreeViewExpanding
              end
            end
            object Panel3: TPanel
              Left = 200
              Top = 0
              Width = 921
              Height = 606
              Align = alClient
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 1
              object Panel1: TPanel
                Left = 0
                Top = 0
                Width = 921
                Height = 38
                Align = alTop
                ParentColor = True
                TabOrder = 0
                object ToolBar1: TToolBar
                  Left = 1
                  Top = 1
                  Width = 919
                  Height = 35
                  AutoSize = True
                  ButtonHeight = 35
                  ButtonWidth = 31
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
                  object ToolButton2: TToolButton
                    Left = 0
                    Top = 0
                    AutoSize = True
                    Caption = #25509#25910
                    ImageIndex = 7
                    OnClick = ToolButton2Click
                  end
                  object TB_Ref: TToolButton
                    Left = 35
                    Top = 0
                    AutoSize = True
                    Caption = #21047#26032
                    ImageIndex = 3
                    OnClick = TB_RefClick
                  end
                  object TB_Out: TToolButton
                    Left = 70
                    Top = 0
                    AutoSize = True
                    Caption = #23548#20986
                    ImageIndex = 4
                    OnClick = TB_OutClick
                  end
                  object ToolButton5: TToolButton
                    Left = 105
                    Top = 0
                    Width = 8
                    Caption = 'ToolButton5'
                    ImageIndex = 4
                    Style = tbsSeparator
                  end
                  object TB_Down: TToolButton
                    Left = 113
                    Top = 0
                    Cursor = crHandPoint
                    AutoSize = True
                    Caption = #35774#32622
                    ImageIndex = 12
                    OnClick = TB_DownClick
                  end
                  object TB_Prin: TToolButton
                    Left = 148
                    Top = 0
                    Cursor = crHandPoint
                    AutoSize = True
                    Caption = #25171#21360
                    ImageIndex = 5
                    OnClick = TB_PrinClick
                  end
                  object ToolButton1: TToolButton
                    Left = 183
                    Top = 0
                    Width = 8
                    Caption = 'ToolButton1'
                    ImageIndex = 9
                    Style = tbsSeparator
                  end
                  object TB_EXIT: TToolButton
                    Left = 191
                    Top = 0
                    Cursor = crHandPoint
                    AutoSize = True
                    Caption = #36864#20986
                    ImageIndex = 6
                    OnClick = TB_EXITClick
                  end
                end
              end
              object PageControl1: TPageControl
                Left = 0
                Top = 38
                Width = 921
                Height = 314
                ActivePage = TabSheet1
                Align = alClient
                TabOrder = 1
                object TabSheet1: TTabSheet
                  Caption = #20027#34920
                  object cxGrid_M: TcxGrid
                    Left = 0
                    Top = 0
                    Width = 913
                    Height = 286
                    Align = alClient
                    TabOrder = 0
                    object cxGV_M: TcxGridDBTableView
                      DataController.DataSource = DS_Mdata_M
                      DataController.DetailKeyFieldNames = 'FWorkItemID'
                      DataController.KeyFieldNames = 'FWorkItemID'
                      DataController.MasterKeyFieldNames = 'FWorkItemID'
                      DataController.Summary.DefaultGroupSummaryItems = <>
                      DataController.Summary.FooterSummaryItems = <
                        item
                          Format = ',0.0000;-,0.0000'
                          Kind = skSum
                          FieldName = 'FBalanceQry'
                        end
                        item
                          Format = ',0.00;-,0.00'
                          Kind = skSum
                          FieldName = 'FAdvanceQry'
                        end
                        item
                          Format = ',0.00;-,0.00'
                          Kind = skSum
                          FieldName = 'FBalanceAmount'
                        end
                        item
                          Format = ',0.00;-,0.00'
                          Kind = skSum
                          FieldName = 'FQualityQry'
                        end
                        item
                          Format = ',0.0000;-,0.0000'
                          Kind = skSum
                          FieldName = 'FEstimateQry'
                        end
                        item
                          Format = ',0.00;-,0.00'
                          Kind = skSum
                          FieldName = 'FEstimateAmount'
                        end
                        item
                          Format = '0'
                          Kind = skSum
                          FieldName = 'FQry'
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
                      OnCellClick = cxGV_MCellClick
                      OnFocusedRecordChanged = cxGV_MFocusedRecordChanged
                      OptionsData.Appending = True
                      OptionsData.CancelOnExit = False
                      OptionsData.DeletingConfirmation = False
                      OptionsView.Navigator = True
                      OptionsView.Footer = True
                      OptionsView.GroupByBox = False
                      object FWorkStatus_M: TcxGridDBColumn
                        Caption = #29366#24577#20540
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        SortOrder = soAscending
                        Width = 60
                        DataBinding.FieldName = 'FWorkStatus'
                      end
                      object FStatusNotes_M: TcxGridDBColumn
                        Caption = #21333#25454#29366#24577
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 54
                        DataBinding.FieldName = 'FStatusNotes'
                      end
                      object FDepartmentNum_M: TcxGridDBColumn
                        Caption = #37096#38376#20195#30721
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 54
                        DataBinding.FieldName = 'FDepartmentNum'
                      end
                      object FWorkItemNum_M: TcxGridDBColumn
                        Caption = #20219#21153#21333#21495
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 71
                        DataBinding.FieldName = 'FWorkItemNum'
                      end
                      object FWorkItemDate_M: TcxGridDBColumn
                        Caption = #20219#21153#21333#26085#26399
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 94
                        DataBinding.FieldName = 'FWorkItemDate'
                      end
                      object FMaterialDate_M: TcxGridDBColumn
                        Caption = #25191#34892#26085#26399
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 109
                        DataBinding.FieldName = 'FMaterialDate'
                      end
                      object FBidDate_M: TcxGridDBColumn
                        Caption = #25307#26631#26085#26399
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 86
                        DataBinding.FieldName = 'FBidDate'
                      end
                      object FWorkItemRemark_M: TcxGridDBColumn
                        Caption = #20219#21153#20449#24687
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Options.Sorting = False
                        Width = 96
                        DataBinding.FieldName = 'FWorkItemRemark'
                      end
                      object FClientFullName_M: TcxGridDBColumn
                        Caption = #39033#30446#21517#31216
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 256
                        DataBinding.FieldName = 'FClientFullName'
                      end
                      object FItemModel_M: TcxGridDBColumn
                        Caption = #39033#30446#22411#21495
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 94
                        DataBinding.FieldName = 'FItemModel'
                      end
                      object FItemQry_M: TcxGridDBColumn
                        Caption = #21488#22871#25968
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        DataBinding.FieldName = 'FItemQry'
                      end
                      object FBranchItemNumber_M: TcxGridDBColumn
                        Caption = #22270#21495
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 55
                        DataBinding.FieldName = 'FBranchItemNumber'
                      end
                      object FBranchFileNo_M: TcxGridDBColumn
                        Caption = #26723#26696#21495
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 78
                        DataBinding.FieldName = 'FBranchFileNo'
                      end
                      object FDeliveryPlace_M: TcxGridDBColumn
                        Caption = #20132#36135#22320#28857
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 60
                        DataBinding.FieldName = 'FDeliveryPlace'
                      end
                      object FJobSort_M: TcxGridDBColumn
                        Caption = #21152#24037#31867#22411
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Options.Sorting = False
                        Width = 71
                        DataBinding.FieldName = 'FJobSort'
                      end
                      object FJobPlace_M: TcxGridDBColumn
                        Caption = #21152#24037#22320#28857
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 68
                        DataBinding.FieldName = 'FJobPlace'
                      end
                      object FAdvancePercent_M: TcxGridDBColumn
                        Caption = #39044#20184#27604#20363
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Options.Sorting = False
                        Width = 53
                        DataBinding.FieldName = 'FAdvancePercent'
                      end
                      object FE05_M: TcxGridDBColumn
                        Caption = #34917#20805#35828#26126
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 255
                        DataBinding.FieldName = 'FE05'
                      end
                      object FAgentName_M: TcxGridDBColumn
                        Caption = #29983#20135#21333#20301
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 227
                        DataBinding.FieldName = 'FAgentName'
                      end
                      object FWorkData_M: TcxGridDBColumn
                        Caption = #39033#30446#37096#38376
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Options.Sorting = False
                        Width = 65
                        DataBinding.FieldName = 'FWorkData'
                      end
                      object FWorkItemID_M: TcxGridDBColumn
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 68
                        DataBinding.FieldName = 'FWorkItemID'
                      end
                    end
                    object cxGL_M: TcxGridLevel
                      GridView = cxGV_M
                    end
                  end
                end
              end
              object PageControl2: TPageControl
                Left = 0
                Top = 352
                Width = 921
                Height = 254
                ActivePage = TabSheet3
                Align = alBottom
                MultiLine = True
                TabOrder = 2
                object TabSheet3: TTabSheet
                  Caption = #38468#34920
                  object TBar_Sel: TToolBar
                    Left = 0
                    Top = 0
                    Width = 913
                    Height = 29
                    AutoSize = True
                    ButtonHeight = 25
                    ButtonWidth = 161
                    Caption = 'TBar_Sel'
                    Images = ImageList
                    TabOrder = 0
                    Visible = False
                  end
                  object cxGrid: TcxGrid
                    Left = 0
                    Top = 29
                    Width = 913
                    Height = 197
                    Align = alClient
                    TabOrder = 1
                    object cxGV: TcxGridDBTableView
                      DataController.DataSource = DS_Mdata
                      DataController.DetailKeyFieldNames = 'FWorkItemID'
                      DataController.KeyFieldNames = 'FWorkItemID'
                      DataController.MasterKeyFieldNames = 'FWorkItemID'
                      DataController.Summary.DefaultGroupSummaryItems = <>
                      DataController.Summary.FooterSummaryItems = <
                        item
                          Format = ',0.0000;-,0.0000'
                          Kind = skSum
                          FieldName = 'FBalanceQry'
                          Column = SumFBalanceQry
                        end
                        item
                          Format = ',0.00;-,0.00'
                          Kind = skSum
                          FieldName = 'FAdvanceAmount'
                          Column = FAdvanceAmount
                        end
                        item
                          Format = ',0.00;-,0.00'
                          Kind = skSum
                          FieldName = 'FBalanceAmount'
                          Column = SumFBalanceAmount
                        end
                        item
                          Format = ',0.00;-,0.00'
                          Kind = skSum
                          FieldName = 'FQualityAmount'
                          Column = FQualityAmount
                        end
                        item
                          Kind = skSum
                          FieldName = 'FEstimateQry'
                          Column = FEstimateQry
                        end
                        item
                          Format = ',0.00;-,0.00'
                          Kind = skSum
                          FieldName = 'FEstimateAmount'
                          Column = FEstimateAmount
                        end>
                      DataController.Summary.SummaryGroups = <>
                      NavigatorButtons.ConfirmDelete = False
                      NavigatorButtons.PriorPage.Visible = False
                      NavigatorButtons.Prior.Visible = True
                      NavigatorButtons.NextPage.Visible = False
                      NavigatorButtons.Insert.Enabled = False
                      NavigatorButtons.Insert.Visible = False
                      NavigatorButtons.Delete.Visible = False
                      NavigatorButtons.Edit.Visible = False
                      NavigatorButtons.Post.Visible = False
                      NavigatorButtons.Cancel.Visible = False
                      NavigatorButtons.Refresh.Visible = False
                      NavigatorButtons.SaveBookmark.Visible = False
                      NavigatorButtons.GotoBookmark.Visible = False
                      NavigatorButtons.Filter.Visible = False
                      OnCustomDrawCell = cxGVCustomDrawCell
                      OptionsData.CancelOnExit = False
                      OptionsData.DeletingConfirmation = False
                      OptionsData.Inserting = False
                      OptionsView.Navigator = True
                      OptionsView.Footer = True
                      OptionsView.GroupByBox = False
                      object FWorkListNum: TcxGridDBColumn
                        Caption = #24207#21495
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        SortOrder = soAscending
                        Width = 47
                        DataBinding.FieldName = 'FWorkListNum'
                      end
                      object FNumber1: TcxGridDBColumn
                        Caption = #37096#20214#32534#30721
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 81
                        DataBinding.FieldName = 'FNumber'
                      end
                      object FBalanceName: TcxGridDBColumn
                        Caption = #32467#31639#37096#20214#21517#31216
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
                        DataBinding.FieldName = 'FBalanceName'
                      end
                      object FBalanceModel: TcxGridDBColumn
                        Caption = #32467#31639#37096#20214#35268#26684
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
                        Width = 97
                        DataBinding.FieldName = 'FBalanceModel'
                      end
                      object FUnitName: TcxGridDBColumn
                        Caption = #21333#20301
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 29
                        DataBinding.FieldName = 'FUnitName'
                      end
                      object FSollWeight: TcxGridDBColumn
                        Caption = #29702#35745#37325#37327
                        PropertiesClassName = 'TcxCurrencyEditProperties'
                        Properties.DecimalPlaces = 4
                        Properties.DisplayFormat = '0.0000;-0.0000'
                        Properties.ValidateOnEnter = True
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 74
                        DataBinding.FieldName = 'FSollWeight'
                      end
                      object FLength: TcxGridDBColumn
                        Caption = #38271#24230
                        PropertiesClassName = 'TcxCurrencyEditProperties'
                        Properties.DecimalPlaces = 0
                        Properties.DisplayFormat = '0'
                        Properties.ValidateOnEnter = True
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Options.Sorting = False
                        Width = 66
                        DataBinding.FieldName = 'FLength'
                      end
                      object FQry: TcxGridDBColumn
                        Caption = #20214#25968
                        PropertiesClassName = 'TcxCurrencyEditProperties'
                        Properties.Alignment.Horz = taRightJustify
                        Properties.Alignment.Vert = taVCenter
                        Properties.DecimalPlaces = 0
                        Properties.DisplayFormat = '0'
                        Properties.NullString = '0'
                        Properties.ValidateOnEnter = True
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 48
                        DataBinding.FieldName = 'FQry'
                      end
                      object FSingleWeight: TcxGridDBColumn
                        Caption = #21333#20214#37325#37327
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Options.Sorting = False
                        Width = 71
                        DataBinding.FieldName = 'FSingleWeight'
                      end
                      object FEstimateQry: TcxGridDBColumn
                        Caption = #39044#20272#25968#37327
                        PropertiesClassName = 'TcxCurrencyEditProperties'
                        Properties.Alignment.Horz = taRightJustify
                        Properties.Alignment.Vert = taVCenter
                        Properties.DecimalPlaces = 4
                        Properties.DisplayFormat = '0.0000;-0.0000'
                        Properties.NullString = '0.0000'
                        Properties.ValidateOnEnter = True
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 65
                        DataBinding.FieldName = 'FEstimateQry'
                      end
                      object FBalancePrice: TcxGridDBColumn
                        Caption = #32467#31639#21333#20215
                        PropertiesClassName = 'TcxCurrencyEditProperties'
                        Properties.DecimalPlaces = 6
                        Properties.DisplayFormat = ',0.000000;-,0.000000'
                        Properties.NullString = '0.0000'
                        Properties.ValidateOnEnter = True
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 73
                        DataBinding.FieldName = 'FBalancePrice'
                      end
                      object FEstimateAmount: TcxGridDBColumn
                        Caption = #39044#20272#37329#39069
                        PropertiesClassName = 'TcxCurrencyEditProperties'
                        Properties.Alignment.Horz = taRightJustify
                        Properties.Alignment.Vert = taVCenter
                        Properties.DisplayFormat = ',0.00;-,0.00'
                        Properties.NullString = '0.00'
                        Properties.ValidateOnEnter = True
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 81
                        DataBinding.FieldName = 'FEstimateAmount'
                      end
                      object SumFBalanceQry: TcxGridDBColumn
                        Caption = #32467#31639#25968#37327
                        PropertiesClassName = 'TcxCurrencyEditProperties'
                        Properties.Alignment.Horz = taRightJustify
                        Properties.Alignment.Vert = taVCenter
                        Properties.DecimalPlaces = 4
                        Properties.DisplayFormat = '0.0000;-0.0000'
                        Properties.NullString = '0.00'
                        Properties.ValidateOnEnter = True
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 58
                        DataBinding.FieldName = 'SumFBalanceQry'
                      end
                      object SumFBalanceAmount: TcxGridDBColumn
                        Caption = #32467#31639#37329#39069
                        PropertiesClassName = 'TcxCurrencyEditProperties'
                        Properties.Alignment.Horz = taRightJustify
                        Properties.Alignment.Vert = taVCenter
                        Properties.DisplayFormat = ',0.00;-,0.00'
                        Properties.NullString = '0.00'
                        Properties.ValidateOnEnter = True
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 90
                        DataBinding.FieldName = 'SumFBalanceAmount'
                      end
                      object FDeliveryDateTxt: TcxGridDBColumn
                        Caption = #20132#36135#26085#26399
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
                        Width = 96
                        DataBinding.FieldName = 'FDeliveryDateTxt'
                      end
                      object FAdvanceAmount: TcxGridDBColumn
                        Caption = #39044#32467#37329#39069
                        PropertiesClassName = 'TcxCurrencyEditProperties'
                        Properties.DisplayFormat = ',0.00;-,0.00'
                        Properties.NullString = '0.00'
                        Properties.ValidateOnEnter = True
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 88
                        DataBinding.FieldName = 'FAdvanceAmount'
                      end
                      object FWorkListRemark: TcxGridDBColumn
                        Caption = #20219#21153#21333#22791#27880
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
                        Width = 114
                        DataBinding.FieldName = 'FWorkListRemark'
                      end
                      object FQualityAmount: TcxGridDBColumn
                        Caption = #36136#37327#32771#26680
                        PropertiesClassName = 'TcxCurrencyEditProperties'
                        Properties.DisplayFormat = ',0.00;-,0.00'
                        Properties.NullString = '0.00'
                        Properties.ValidateOnEnter = True
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 92
                        DataBinding.FieldName = 'FQualityAmount'
                      end
                      object FRemark: TcxGridDBColumn
                        Caption = #22791#27880
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 169
                        DataBinding.FieldName = 'FRemark'
                      end
                      object FWorkItemNum: TcxGridDBColumn
                        Caption = #20219#21153#21333#21495
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 84
                        DataBinding.FieldName = 'FWorkItemNum'
                      end
                      object FMaterialDate: TcxGridDBColumn
                        Caption = #25191#34892#26085#26399
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 99
                        DataBinding.FieldName = 'FMaterialDate'
                      end
                      object FAgentBalanceID: TcxGridDBColumn
                        Caption = #32467#31639#37096#20214'ID'
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 64
                        DataBinding.FieldName = 'FAgentBalanceID'
                      end
                      object FBalancePriceID: TcxGridDBColumn
                        Caption = #32467#31639#21333#20215'ID'
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 64
                        DataBinding.FieldName = 'FBalancePriceID'
                      end
                      object FItemID: TcxGridDBColumn
                        Caption = #39033#30446'ID'
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 40
                        DataBinding.FieldName = 'FItemID'
                      end
                      object FWorkListID: TcxGridDBColumn
                        Caption = #20219#21153#21333#26126#32454'ID'
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 76
                        DataBinding.FieldName = 'FWorkListID'
                      end
                      object FBalanceProductName: TcxGridDBColumn
                        Caption = #32467#31639#20135#21697#31867#21035
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Options.Sorting = False
                        Width = 77
                        DataBinding.FieldName = 'FBalanceProductName'
                      end
                    end
                    object cxGL: TcxGridLevel
                      GridView = cxGV
                    end
                  end
                end
              end
            end
          end
        end
        object TS_Brow: TRzTabSheet
          Color = 14935011
          Caption = #29983#20135#20219#21153#21333#26597#35810
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 1121
            Height = 606
            Align = alClient
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 0
            object RzSizePanel2: TRzSizePanel
              Left = 0
              Top = 0
              Width = 228
              Height = 606
              Color = 14935011
              HotSpotVisible = True
              SizeBarWidth = 7
              TabOrder = 0
              VisualStyle = vsGradient
              object MyTreeView2: TTreeView
                Left = 0
                Top = 0
                Width = 220
                Height = 606
                Align = alClient
                AutoExpand = True
                Ctl3D = False
                Indent = 19
                ParentCtl3D = False
                TabOrder = 0
                OnChange = MyTreeView2Change
                OnExpanding = MyTreeView2Expanding
              end
            end
            object Panel5: TPanel
              Left = 228
              Top = 0
              Width = 893
              Height = 606
              Align = alClient
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 1
              object cxGridBrow: TcxGrid
                Left = 0
                Top = 35
                Width = 893
                Height = 571
                Align = alClient
                TabOrder = 0
                object cxGVBrow: TcxGridDBTableView
                  DataController.DataSource = DS_Mdata2
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <
                    item
                      Format = ',0.0000;-,0.0000'
                      Kind = skSum
                      FieldName = 'FBalanceQry'
                      Column = SumFBalanceQry_1
                    end
                    item
                      Format = ',0.00;-,0.00'
                      Kind = skSum
                      FieldName = 'FAdvanceQry'
                      Column = FAdvanceQry1
                    end
                    item
                      Format = ',0.00;-,0.00'
                      Kind = skSum
                      FieldName = 'FBalanceAmount'
                      Column = SumFBalanceAmount_1
                    end
                    item
                      Format = ',0.00;-,0.00'
                      Kind = skSum
                      FieldName = 'FQualityQry'
                      Column = FQualityQry1
                    end
                    item
                      Format = ',0.0000;-,0.0000'
                      Kind = skSum
                      FieldName = 'FEstimateQry'
                      Column = FEstimateQry1
                    end
                    item
                      Format = ',0.00;-,0.00'
                      Kind = skSum
                      FieldName = 'FEstimateAmount'
                      Column = FEstimateAmount1
                    end
                    item
                      Format = '0'
                      Kind = skSum
                      FieldName = 'FQry'
                      Column = FQry_1
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
                  OnCustomDrawCell = cxGVBrowCustomDrawCell
                  OptionsData.Appending = True
                  OptionsData.CancelOnExit = False
                  OptionsData.DeletingConfirmation = False
                  OptionsView.Navigator = True
                  OptionsView.Footer = True
                  OptionsView.GroupByBox = False
                  object FIsDel: TcxGridDBColumn
                    Caption = #20316#24223
                    PropertiesClassName = 'TcxCheckBoxProperties'
                    Properties.DisplayUnchecked = 'False'
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 33
                    DataBinding.FieldName = 'FIsDel'
                  end
                  object FWorkItemNum_Brow: TcxGridDBColumn
                    Caption = #20219#21153#21333#21495
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    SortOrder = soAscending
                    Width = 71
                    DataBinding.FieldName = 'FWorkItemNum'
                  end
                  object FClientShortName: TcxGridDBColumn
                    Caption = #29992#25143#31616#31216
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 117
                    DataBinding.FieldName = 'FClientshortName'
                  end
                  object FBranchFileNo: TcxGridDBColumn
                    Caption = #26723#26696#21495
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 78
                    DataBinding.FieldName = 'FBranchFileNo'
                  end
                  object FBranchItemNumber: TcxGridDBColumn
                    Caption = #22270#21495
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 48
                    DataBinding.FieldName = 'FBranchItemNumber'
                  end
                  object FBalanceProductName_1: TcxGridDBColumn
                    Caption = #32467#31639#20135#21697#31867#21035
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 77
                    DataBinding.FieldName = 'FBalanceProductName'
                  end
                  object FNumber: TcxGridDBColumn
                    Caption = #37096#20214#20195#30721
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 72
                    DataBinding.FieldName = 'FNumber'
                  end
                  object FBalanceName1: TcxGridDBColumn
                    Caption = #32467#31639#37096#20214#21517#31216
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
                    Width = 145
                    DataBinding.FieldName = 'FBalanceName'
                  end
                  object FBalanceModel1: TcxGridDBColumn
                    Caption = #32467#31639#37096#20214#35268#26684
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
                    Width = 97
                    DataBinding.FieldName = 'FBalanceModel'
                  end
                  object FUnitName1: TcxGridDBColumn
                    Caption = #21333#20301
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 29
                    DataBinding.FieldName = 'FUnitName'
                  end
                  object FMaterialDate1: TcxGridDBColumn
                    Caption = #25191#34892#26085#26399
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 84
                    DataBinding.FieldName = 'FMaterialDate'
                  end
                  object FQry_1: TcxGridDBColumn
                    Caption = #20214#25968
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 51
                    DataBinding.FieldName = 'FQry'
                  end
                  object FBalancePrice1: TcxGridDBColumn
                    Caption = #32467#31639#21333#20215
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.DecimalPlaces = 6
                    Properties.ValidateOnEnter = True
                    Properties.IsDisplayFormatAssigned = True
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 53
                    DataBinding.FieldName = 'FBalancePrice'
                  end
                  object FEstimateQry1: TcxGridDBColumn
                    Caption = #39044#20272#25968#37327
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.DecimalPlaces = 4
                    Properties.ValidateOnEnter = True
                    Properties.IsDisplayFormatAssigned = True
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Filtering = False
                    Width = 73
                    DataBinding.FieldName = 'FEstimateQry'
                  end
                  object FEstimateAmount1: TcxGridDBColumn
                    Caption = #39044#20272#37329#39069
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.DisplayFormat = ',0.00;-,0.00'
                    Properties.ValidateOnEnter = True
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 88
                    DataBinding.FieldName = 'FEstimateAmount'
                  end
                  object SumFBalanceQry_1: TcxGridDBColumn
                    Caption = #32467#31639#25968#37327
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.DecimalPlaces = 4
                    Properties.ValidateOnEnter = True
                    Properties.IsDisplayFormatAssigned = True
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 58
                    DataBinding.FieldName = 'SumFBalanceQry'
                  end
                  object SumFBalanceAmount_1: TcxGridDBColumn
                    Caption = #32467#31639#37329#39069
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.DisplayFormat = ',0.00;-,0.00'
                    Properties.ValidateOnEnter = True
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 90
                    DataBinding.FieldName = 'SumFBalanceAmount'
                  end
                  object FWorkListRemark1: TcxGridDBColumn
                    Caption = #20219#21153#21333#22791#27880
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
                    Width = 114
                    DataBinding.FieldName = 'FWorkListRemark'
                  end
                  object FDeliveryPlace: TcxGridDBColumn
                    Caption = #20132#36135#22320#28857
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 60
                    DataBinding.FieldName = 'FDeliveryPlace'
                  end
                  object FJobPlace: TcxGridDBColumn
                    Caption = #21152#24037#22320#28857
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 68
                    DataBinding.FieldName = 'FJobPlace'
                  end
                  object FAgentName: TcxGridDBColumn
                    Caption = #29983#20135#21333#20301
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 227
                    DataBinding.FieldName = 'FAgentName'
                  end
                  object FAdvanceQry1: TcxGridDBColumn
                    Caption = #39044#32467#37329#39069
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.DisplayFormat = ',0.00;-,0.00'
                    Properties.ValidateOnEnter = True
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 88
                    DataBinding.FieldName = 'FAdvanceQry'
                  end
                  object FQualityQry1: TcxGridDBColumn
                    Caption = #36136#37327#32771#26680
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.DisplayFormat = ',0.00;-,0.00'
                    Properties.ValidateOnEnter = True
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 70
                    DataBinding.FieldName = 'FQualityQry'
                  end
                  object FRemark1: TcxGridDBColumn
                    Caption = #22791#27880
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 169
                    DataBinding.FieldName = 'FRemark'
                  end
                  object FWorkItemRemark: TcxGridDBColumn
                    Caption = #39033#30446#20449#24687
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 96
                    DataBinding.FieldName = 'FWorkItemRemark'
                  end
                  object FWorkData: TcxGridDBColumn
                    Caption = #39033#30446#37096#38376
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 65
                    DataBinding.FieldName = 'FWorkData'
                  end
                  object FIsSysTem: TcxGridDBColumn
                    Caption = #20307#31995#20869#22806
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 53
                    DataBinding.FieldName = 'FIsSysTem'
                  end
                  object FJobSort: TcxGridDBColumn
                    Caption = #21152#24037#31867#22411
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 71
                    DataBinding.FieldName = 'FJobSort'
                  end
                  object FBalancePriceID1: TcxGridDBColumn
                    Caption = #32467#31639#21333#20215'ID'
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 64
                    DataBinding.FieldName = 'FBalancePriceID'
                  end
                  object FWorkListID_1: TcxGridDBColumn
                    Caption = #20219#21153#21333#26126#32454'ID'
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 76
                    DataBinding.FieldName = 'FWorkListID'
                  end
                end
                object cxGLBrow: TcxGridLevel
                  GridView = cxGVBrow
                end
              end
              object ToolBar2: TToolBar
                Left = 0
                Top = 0
                Width = 893
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
                TabOrder = 1
                object TB_Ref2: TToolButton
                  Left = 0
                  Top = 0
                  AutoSize = True
                  Caption = #21047#26032'[&R]'
                  ImageIndex = 3
                  OnClick = TB_Ref2Click
                end
                object TB_Out2: TToolButton
                  Left = 53
                  Top = 0
                  AutoSize = True
                  Caption = #23548#20986'[&O]'
                  ImageIndex = 4
                  OnClick = TB_OutClick
                end
                object ToolButton11: TToolButton
                  Left = 106
                  Top = 0
                  Width = 8
                  Caption = 'ToolButton5'
                  ImageIndex = 4
                  Style = tbsSeparator
                end
                object TB_Down2: TToolButton
                  Left = 114
                  Top = 0
                  Cursor = crHandPoint
                  AutoSize = True
                  Caption = #35774#32622'[&D]'
                  ImageIndex = 12
                  OnClick = TB_Down2Click
                end
                object ToolButton16: TToolButton
                  Left = 167
                  Top = 0
                  Width = 8
                  Caption = 'ToolButton1'
                  ImageIndex = 9
                  Style = tbsSeparator
                end
                object ToolButton17: TToolButton
                  Left = 175
                  Top = 0
                  Cursor = crHandPoint
                  AutoSize = True
                  Caption = #36864#20986'[&X]'
                  ImageIndex = 6
                  OnClick = TB_EXITClick
                end
              end
            end
          end
        end
      end
      inherited Panel_down: TPanel
        Top = 627
        Width = 1123
        Height = 6
        inherited Bevel_bass: TBevel
          Width = 1123
          Height = 1
        end
      end
    end
  end
  object MData: TdxMemData
    Indexes = <>
    SortOptions = []
    SortedField = 'FWorkItemListNum'
    Left = 99
    Top = 88
    object MDataFParentNumber: TStringField
      FieldName = 'FParentNumber'
    end
    object MDataFNumber: TStringField
      FieldName = 'FNumber'
    end
    object MDataFBalanceName: TStringField
      FieldName = 'FBalanceName'
    end
    object MDataFBalanceModel: TStringField
      FieldName = 'FBalanceModel'
    end
    object MDataFUnitName: TStringField
      FieldName = 'FUnitName'
    end
    object MDataFWorkPrice: TCurrencyField
      FieldName = 'FWorkPrice'
    end
    object MDataFRemark: TStringField
      FieldName = 'FRemark'
    end
    object MDataFWorkID: TIntegerField
      FieldName = 'FWorkID'
    end
    object MDataFBalanceID: TIntegerField
      FieldName = 'FBalanceID'
    end
    object MDataFItemID: TIntegerField
      FieldName = 'FItemID'
    end
    object MDataFPactNo: TStringField
      FieldName = 'FPactNo'
    end
    object MDataFClientshortName: TStringField
      FieldName = 'FClientshortName'
    end
    object MDataFMaterialDate: TStringField
      FieldName = 'FMaterialDate'
    end
    object MDataFBalancePrice: TStringField
      FieldName = 'FBalancePrice'
    end
    object MDataFBalancePriceID: TIntegerField
      FieldName = 'FBalancePriceID'
    end
    object MDataFAgentBalanceNum: TStringField
      FieldName = 'FAgentBalanceNum'
    end
    object MDataFAgentBalancePactNum: TStringField
      FieldName = 'FAgentBalancePactNum'
    end
    object MDataFAgentBalanceDate: TDateTimeField
      FieldName = 'FAgentBalanceDate'
    end
    object MDataFAgentID: TStringField
      FieldName = 'FAgentID'
    end
    object MDataFAgentBalanceItemID: TStringField
      FieldName = 'FAgentBalanceItemID'
    end
    object MDataFBalanceQry: TStringField
      FieldName = 'FBalanceQry'
    end
    object MDataFAdvanceQry: TStringField
      FieldName = 'FAdvanceQry'
    end
    object MDataFQualityQry: TStringField
      FieldName = 'FQualityQry'
    end
    object MDataFEstimateQry: TStringField
      FieldName = 'FEstimateQry'
    end
    object MDataFWorkItemListRemark: TStringField
      FieldName = 'FWorkItemListRemark'
    end
    object MDataFWorkItemListNum: TIntegerField
      FieldName = 'FWorkItemListNum'
    end
    object MDataFWorkListNum: TIntegerField
      FieldName = 'FWorkListNum'
    end
    object MDataFWorkListRemark: TStringField
      FieldName = 'FWorkListRemark'
    end
    object MDataFDeliveryDate: TDateField
      FieldName = 'FDeliveryDate'
    end
    object MDataFEstimateAmount: TCurrencyField
      FieldName = 'FEstimateAmount'
    end
    object MDataFAdvanceAmount: TCurrencyField
      FieldName = 'FAdvanceAmount'
    end
    object MDataFPrice: TFloatField
      FieldName = 'FPrice'
    end
    object MDataFWeight: TFloatField
      FieldName = 'FWeight'
    end
    object MDataFQry: TFloatField
      FieldName = 'FQry'
    end
    object MDataFE05: TStringField
      FieldName = 'FE05'
    end
    object MDataFSollWeight: TFloatField
      FieldName = 'FSollWeight'
    end
    object MDataFSingleWeight: TFloatField
      FieldName = 'FSingleWeight'
    end
    object MDataFLength: TIntegerField
      FieldName = 'FLength'
    end
    object MDataFKm: TIntegerField
      FieldName = 'FKm'
    end
    object MDataFOutPrice: TFloatField
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'FOutPrice'
      Calculated = True
    end
  end
  object DS_Mdata: TDataSource
    DataSet = MData
    Left = 59
    Top = 88
  end
  object ImageList: TImageList
    Left = 1291
    Top = 30
    Bitmap = {
      494C010115001800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000006000000001002000000000000060
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF330000FF330000FF330000FF330000FF330000FF33
      0000FF330000FF330000FF330000FF3300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF330000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF3300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF330000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF3300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF330000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF3300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF33
      0000FF330000FF330000FF330000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF3300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF33
      0000FFFFFF00FFFFFF00FF330000FF330000FF330000FF330000FF330000FF33
      0000FF330000FF330000FF330000FF3300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF33
      0000FFFFFF00FFFFFF00FF330000FF330000FF330000FF330000FF330000FF33
      0000FFCC9900FF3300006666FF00FF3300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF33
      0000FFFFFF00FFFFFF00FFCC9900FF330000FF330000FF330000FF330000FF33
      0000FF330000FF330000FF330000FFCC99000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF330000FF330000FF330000FF33
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FF3300000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF330000FFFFFF00FFFFFF00FF33
      0000FF330000FF330000FF330000FF330000FF330000FF330000FF330000FF33
      0000FF3300000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF330000FFFFFF00FFFFFF00FF33
      0000FF330000FF330000FF330000FF330000FF330000FFCC9900FF3300006666
      FF00FF3300000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF330000FFFFFF00FFFFFF00FFCC
      9900FF330000FF330000FF330000FF330000FF330000FF330000FF330000FF33
      0000FFCC99000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF330000FF330000FF330000FF33
      0000FF330000FF330000FF330000FF330000FF330000FF330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF330000FF330000FF330000FF33
      0000FF330000FF330000FFCC9900FF3300006666FF00FF330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFCC9900FF330000FF330000FF33
      0000FF330000FF330000FF330000FF330000FF330000FFCC9900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080000000000000000000000000000000
      00000000000000000000000000000000000000000000FF990000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC6600000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000B2B2B20099999900B2B2B2008080800080808000000000000000
      000000000000000000000000000000000000FF990000CC660000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC66
      000000000000000000000000000000000000FFCC9900CC996600CC996600CC99
      6600CC996600CCCCCC0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CC666600CC666600CC666600CC66
      6600CC666600CC666600CC666600CC666600CC666600CC666600CC666600CC66
      6600CC666600CC666600CC666600CC6666000000000000000000000000008080
      8000B2B2B200999999000000000000000000B2B2B200B2B2B200808080008080
      800000000000000000000000000000000000FF990000CC660000E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500CC66
      000000000000000000000000000000000000FFCC9900F2EABF00F2EABF00CCCC
      FF00E5E5E500CC996600CC996600CCCCCC000000000000000000000000000000
      000000000000000000000000000000000000CC666600FFFFFF00FFFFFF00FFCC
      CC00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFF
      FF00FFCCCC00FFFFFF00FFFFFF00CC6666000000000000000000000000008080
      8000999999000000000099999900999999000000000000000000B2B2B200B2B2
      B20080808000808080000000000000000000FF990000CC660000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC66
      000000000000000000000000000000000000FFCC9900FFFFFF00FFFFFF00CCCC
      FF00FFFFFF00FFFFFF00E5E5E500CC9966000000000000000000000000000000
      000000000000000000000000000000000000CC666600FFFFFF00FFFFFF00FFCC
      CC00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFF
      FF00FFCCCC00FFFFFF00FFFFFF00CC666600000000000000000080808000B2B2
      B200999999000000000080808000B2B2B2009999990000000000000000000000
      0000B2B2B200B2B2B2008080800000000000FF990000CC660000E5E5E500E5E5
      E500E5E5E500E5E5E500CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CC66
      000000000000000000000000000000000000FFCC9900F2EABF00F2EABF00CCCC
      FF00F2EABF00F2EABF00F2EABF00CC996600CCCCCC0000000000000000000000
      000000000000000000000000000000000000CC666600FFCCCC00FFCCCC00FFCC
      CC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCC
      CC00FFCCCC00FFCCCC00FFCCCC00CC6666000000000000000000808080009999
      990000000000B2B2B20080808000B2B2B2009999990000000000808080008080
      800000000000000000008080800000000000FF990000CC660000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500CC66
      000000000000000000000000000000000000FFCC9900FFFFFF00CCCCCC00CCCC
      FF00FFFFFF00FFFFFF00FFFFFF00E5E5E500CC996600CCCCCC00000000000000
      000000000000000000000000000000000000CC666600FFFFFF00FFFFFF00FFCC
      CC00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFF
      FF00FFCCCC00FFFFFF00FFFFFF00CC6666000000000080808000B2B2B2009999
      990000000000B2B2B200E5E5E500B2B2B200000000000000000000000000B2B2
      B20080808000000000008080800000000000FF990000CC660000E5E5E500E5E5
      E500E5E5E500CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CC66
      000000000000000000000000000000000000FFCC9900F2EABF00F2EABF00CCCC
      FF00F2EABF00F2EABF00F2EABF00F2EABF00E5E5E500CC996600CC996600CC99
      6600CCCCCC00000000000000000000000000CC666600FFFFFF00FFFFFF00FFCC
      CC00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFF
      FF00FFCCCC00FFFFFF00FFFFFF00CC6666000000000080808000999999000000
      0000B2B2B200E5E5E500E5E5E500B2B2B2000000000080808000808080000000
      000000000000000000008080800000000000FF990000CC660000FFFFFF00FFFF
      FF00FFFFFF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500CC66
      000000000000000000000000000000000000FFCC9900FFFFFF00FFFFFF00CCCC
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E5E5
      E500CC996600CC996600CC996600CCCCCC00CC666600FFCCCC00FFCCCC000000
      9900000099000000990000009900FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCC
      CC00FFCCCC00FFCCCC00FFCCCC00CC66660080808000B2B2B200999999000000
      00000000000000000000B2B2B200000000000000000000000000B2B2B2008080
      800000000000808080000000000000000000FF990000CC660000E5E5E500E5E5
      E500CCCCCC00CCCCCC00CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC660000FFCC9900F2EABF00F2EABF00CCCC
      FF00F2EABF00F2EABF00F2EABF00F2EABF00F2EABF00F2EABF00F2EABF00F2EA
      BF00F2EABF00F2EABF00E5E5E500CC996600CC666600FFFFFF00FFFFFF000000
      9900FFFFFF00FFFFFF0000009900FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFF
      FF00FFCCCC00FFFFFF00FFFFFF00CC6666008080800099999900000000000000
      0000808080008080800000000000000000008080800080808000000000000000
      000000000000808080000000000000000000FF990000CC660000FFFFFF00FFFF
      FF00E5E5E500CC660000FF990000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC660000FFCC9900FFFFFF00FFFFFF00CCCC
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC996600CC666600FFFFFF00FFFFFF000000
      9900FFFFFF00FFFFFF0000009900FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFF
      FF00FFCCCC00FFFFFF00FFFFFF00CC6666000000000099999900999999000000
      000000000000B2B2B20080808000808080000000000000000000808080000000
      000080808000000000000000000000000000FF990000CC660000E5E5E500CCCC
      CC00FF990000FF990000FF990000FF990000FF990000CC660000CC660000CC66
      0000CC660000CC660000CC66000000000000FFCC9900F2EABF00F2EABF00CCCC
      FF00F2EABF00F2EABF00F2EABF00F2EABF00F2EABF00F2EABF00F2EABF00F2EA
      BF00F2EABF00F2EABF00F2EABF00CC996600CC666600FFCCCC00FFCCCC000000
      9900000099000000990000009900FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCC
      CC00FFCCCC00FFCCCC00FFCCCC00CC6666000000000000000000000000009999
      9900999999000000000000000000B2B2B2008080800080808000000000000000
      000080808000000000000000000000000000FF990000CC660000FFFFFF00FF99
      0000FF996600FF996600FF990000FF990000FF990000FF990000FF990000CC66
      0000CC660000CC6600000000000000000000FFCC9900FFFFFF00CCCCCC00CCCC
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC996600CC666600FFFFFF00FFFFFF00FFCC
      CC00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFF
      FF00FFCCCC00FFFFFF00FFFFFF00CC6666000000000000000000000000000000
      00000000000099999900999999000000000000000000B2B2B200000000008080
      800000000000000000000000000000000000FF990000CC660000FF990000FF99
      6600FF996600FF996600FF996600FF996600FF990000FF990000FF990000FF99
      0000CC660000000000000000000000000000FFCC9900FFFFFF00FFFFFF00CCCC
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC996600CC666600FFFFFF00FFFFFF00FFCC
      CC00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFF
      FF00FFCCCC00FFFFFF00FFFFFF00CC6666000000000000000000000000000000
      0000000000000000000000000000999999009999990000000000000000008080
      800000000000000000000000000000000000FF990000FF990000FF996600FF99
      6600FF996600FF996600FF996600FF996600FF996600FF996600FF990000CC66
      000000000000000000000000000000000000FFCC9900FFFFFF00FFFFFF00CCCC
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC996600CC666600FFCCCC00CC666600CC66
      6600FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCC
      CC00CC666600CC666600FFCCCC00CC6666000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900999999000000
      00000000000000000000000000000000000000000000FF99000099999900FFFF
      FF0099999900FFFFFF0099999900FFFFFF0099999900FFFFFF0099999900FFFF
      FF0000000000000000000000000000000000FFCC9900FFCC9900FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC9900CC666600FFCCCC00FFCCCC00FFCC
      CC00FFCCCC00FFCCCC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFCCCC00FFCC
      CC00FFCCCC00FFCCCC00FFCCCC00CC6666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099999900CCCC
      CC0099999900CCCCCC0099999900CCCCCC0099999900CCCCCC00999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CC666600CC666600CC666600CC66
      6600CC666600CC666600CC666600CC666600CC666600CC666600CC666600CC66
      6600CC666600CC666600CC666600CC6666000000000000000000000000000000
      0000000000009933000099330000CC66000099330000CC660000993300000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099330000CC66000099330000CC66000099330000993300000000
      00000000000000000000000000000000000000000000CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC996600CC996600CC9966000000000000000000000000000000
      0000000000008080800000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000B2B2B20099999900B2B2B2008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009933000099330000CC66000099330000CC660000993300000000
      00000000000000000000000000000000000000000000CC996600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966000000000000000000000000000000
      000080808000FFFFFF0000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000B2B2B20099999900FFFFFF00FFFFFF00B2B2B200B2B2B200808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000009999990099330000993300009933000099330000999999000000
      00000000000000000000000000000000000000000000CC996600FFFFFF009933
      0000993300009933000099330000993300009933000099330000993300009933
      00009933000099330000FFFFFF00CC9966000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      800099999900FFFFFF009999990099999900FFFFFF00FFFFFF00B2B2B200B2B2
      B200808080008080800000000000000000000000000000000000000000000000
      0000000000000000000099999900FFFFFF00FFCCCC0066666600000000000000
      00000000000000000000000000000000000000000000CC996600FFFFFF009933
      0000CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC99660099330000FFFFFF00CC9966000000000000000000000000000000
      0000FFFFFF000000000000000000FFFFFF008080800080808000000000000000
      000000000000000000000000000000000000000000000000000080808000B2B2
      B20099999900FFFFFF0080808000B2B2B20099999900FFFFFF00FFFFFF00FFFF
      FF00B2B2B200B2B2B20080808000000000000000000000000000000000000000
      0000000000000000000099999900FFFFFF00FFCCCC0066666600000000000000
      00000000000000000000000000000000000000000000CC996600FFFFFF009933
      0000993300009933000099330000993300009933000099330000993300009933
      00009933000099330000FFFFFF00CC9966000000000080808000000000000000
      0000000000000000000000000000808080000000000000000000000000000000
      0000000000000000000000000000666699000000000000000000808080009999
      9900FFFFFF00B2B2B20080808000B2B2B20099999900FFFFFF00808080008080
      8000FFFFFF00FFFFFF0080808000000000000000000000000000000000000000
      0000000000000000000099999900FFFFFF00FFCCCC0066666600000000000000
      00000000000000000000000000000000000000000000CC996600FFFFFF009933
      0000CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC99660099330000FFFFFF00CC99660080808000FFFFFF00FFFFFF000000
      0000FFFFFF000000000000000000C0C0C0000000000000000000000000000000
      00000000000000000000666699003399CC000000000080808000B2B2B2009999
      9900FFFFFF00B2B2B200E5E5E500B2B2B200FFFFFF00FFFFFF00FFFFFF00B2B2
      B20080808000FFFFFF0080808000000000000000000000000000000000000000
      0000000000000000000099999900FFFFFF00FFCCCC0066666600000000000000
      00000000000000000000000000000000000000000000CC996600FFFFFF009933
      0000993300009933000099330000993300009933000099330000993300009933
      00009933000099330000FFFFFF00CC99660080808000FFFFFF00000000000000
      0000FFFFFF0080808000C0C0C000FFFFFF008080800000000000FFFFFF008080
      800000000000666699003399CC0066CCFF00000000008080800099999900FFFF
      FF00B2B2B200E5E5E500E5E5E500B2B2B200FFFFFF008080800080808000FFFF
      FF00FFFFFF00FFFFFF0080808000000000000000000000000000000000000000
      0000000000000000000099999900FFFFFF00FFCCCC0066666600000000000000
      00000000000000000000000000000000000000000000CC996600FFFFFF009933
      0000CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC99660099330000FFFFFF00CC9966008080800000000000000000000000
      0000808080000000000000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00666699003399CC0066CCFF000000000080808000B2B2B20099999900FFFF
      FF00FFFFFF00FFFFFF00B2B2B200FFFFFF00FFFFFF00FFFFFF00B2B2B2008080
      8000FFFFFF008080800000000000000000000000000000000000000000000000
      0000000000000000000066666600666666006666660066666600000000000000
      00000000000000000000000000006666660000000000CC996600FFFFFF009933
      0000993300009933000099330000993300009933000099330000993300009933
      00009933000099330000FFFFFF00CC9966000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000FFFFFF006666
      99003399CC0066CCFF0000000000000000008080800099999900FFFFFF00FFFF
      FF009933000099330000FFFFFF00FFFFFF008080800080808000FFFFFF00FFFF
      FF00FFFFFF008080800000000000000000000000000066666600666666000000
      0000000000006666660099999900999999009999990099999900666666000000
      00000000000000000000666666006666660000000000CC996600FFFFFF009933
      0000CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC99660099330000FFFFFF00CC9966000000000000000000C0C0C000C0C0
      C0000000000000000000FFFFFF00000000000000000000000000666699003399
      CC0066CCFF00000000000000000000000000000000009999990099999900FFFF
      FF00FFFFFF00B2B2B2009933000099330000FFFFFF00FFFFFF0080808000FFFF
      FF00808080000000000000000000000000009999990099999900999999006666
      66006666660099999900CCCCCC00CCCCCC00CCCCCC0099999900666666006666
      66006666660066666600CCCCCC006666660000000000CC996600FFFFFF009933
      0000993300009933000099330000993300009933000099330000993300009933
      00009933000099330000FFFFFF00CC9966000000000080808000C0C0C000FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF0000000000666699003399CC0066CC
      FF00000000000000000000000000000000000000000000000000000000009999
      990099999900FFFFFF00FFFFFF00B2B2B2009933000099330000FFFFFF00FFFF
      FF008080800000000000000000000000000099999900FFFFFF00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00999999009999
      990099999900CCCCCC00666666000000000000000000CC996600FFFFFF009933
      0000CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC99660099330000FFFFFF00CC9966000000000000000000808080008080
      80000000000000000000FFFFFF00FFFFFF00666699003399CC0066CCFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009999990099999900FFFFFF00FFFFFF00B2B2B200FFFFFF008080
      80000000000000000000000000000000000099999900FFFFFF00CCCCCC00CCCC
      CC00FFFFFF00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC0099999900000000000000000000000000CC996600FFFFFF009933
      0000993300009933000099330000993300009933000099330000993300009933
      00009933000099330000FFFFFF00CC9966000000000000000000000000000000
      0000000000000000000000000000666699003399CC0066CCFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009999990099999900FFFFFF00FFFFFF008080
      80000000000000000000000000000000000099999900FFFFFF00FFFFFF009999
      990099999900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009999
      99009999990000000000000000000000000000000000CC996600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966000000000000000000000000000000
      00000000000000000000666699003399CC0066CCFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900999999000000
      0000000000000000000000000000000000000000000099999900999999000000
      0000000000009999990099999900999999009999990099999900999999000000
      00000000000000000000000000000000000000000000CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC996600CC996600CC9966000000000000000000000000000000
      000000000000666699003399CC0066CCFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC996600CC996600CC9966000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CC99
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      000000000000000000000000000000000000000000000000000000000000CC99
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966000000000000000000000000000000
      0000CC9966009933000099330000CC9966000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      0000000000000000FF000000000000000000000000000000000000000000CC99
      6600FFFFFF00FFFFFF00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00FFFFFF00FFFFFF00CC9966000000000000000000000000009933
      000099330000CC660000CC660000993300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000099000000990000008000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00000000000000
      00000000FF000000FF000000000000000000000099000000000000000000CC99
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC996600000000000000000099330000CC66
      0000CC6600009933000099330000CC9966000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000099000000800000009900000080000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000CC000000990000000000CC99
      6600FFFFFF009933000099330000993300009933000099330000993300009933
      00009933000099330000FFFFFF00CC99660000000000CC99660099330000CC66
      000099330000CC99660000000000000000009933000099330000993300009933
      0000993300009933000099330000000000000000000000000000000000000000
      000000000000000000000000FF00000099000000990000008000000099000000
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C0000000FF000000
      FF000000FF000000000000000000000000000000FF000000CC0000009900CC99
      6600FFFFFF0099330000CC996600CC996600CC996600CC996600CC996600CC99
      6600CC99660099330000FFFFFF00CC9966000000000099330000CC6600009933
      0000CC99660000000000000000000000000099330000CC660000CC660000CC66
      0000CC660000CC66000099330000000000000000000000000000000000000000
      000000000000FFFFFF00CC9966000000990000009900000099000000FF000000
      9900000080000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00C0C0C000C0C0
      C0000000FF000000FF0000000000000000000000FF000000CC0000000000CC99
      6600FFFFFF009933000099330000993300009933000099330000993300009933
      00009933000099330000FFFFFF00CC9966000000000099330000CC6600009933
      0000000000000000000000000000000000000000000099330000CC660000CC66
      0000CC660000CC66000099330000000000000000000000000000000000000000
      000000000000FFFFFF00FFCC9900FFCC9900000099000000FF000000FF000000
      FF00000099000000800000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000808080000000FF00FF000000FF000000FF00
      0000000000000000000000000000000000000000FF000000000000000000CC99
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966000000000099330000CC6600009933
      0000CC99660000000000000000000000000000000000CC99660099330000CC66
      0000CC660000CC66000099330000000000000000000000000000000000000000
      0000FFFFFF00FFCC9900FFCC9900FFFFFF00FFFFFF000000FF003399FF003399
      FF003399FF000000990000000000000000000000000000000000FF0000000000
      00000000000000000000000000000000FF00808080000000000000000000FF00
      000000000000000000000000000000000000000000000000000000000000CC99
      6600FFFFFF00FFFFFF00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00FFFFFF00FFFFFF00CC99660000000000CC99660099330000CC66
      000099330000CC99660000000000CC9966009933000099330000CC6600009933
      0000CC660000CC6600009933000000000000000000000000000000000000FFFF
      FF00FFCC9900FFCC9900FFFFFF00FFFFFF00FFFFFF00FFFFFF00000099000000
      9900000099000000000000000000000000000000000000000000FF0000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      000000000000000000000000000000000000000000000000000000000000CC99
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC996600000000000000000099330000CC66
      0000CC660000993300009933000099330000CC660000CC66000099330000CC99
      660099330000CC66000099330000000000000000000000000000FFFFFF00FFCC
      9900FFCC9900FFFFFF00FFFFFF00FFFFFF00CC996600CC996600000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      000000000000000000000000000000000000000000000000000000000000CC99
      6600FFFFFF00FFFFFF00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00FFFFFF00FFFFFF00CC9966000000000000000000000000009933
      000099330000CC660000CC660000CC6600009933000099330000000000000000
      00000000000099330000993300000000000000000000FFFFFF00FFCC9900FFCC
      9900FFFFFF00FFFFFF00FFFFFF00CC9966000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000C0C0
      C000FF000000FF000000FF000000FF000000C0C0C000FF000000C0C0C000FF00
      000000000000000000000000000000000000000000000000000000000000CC99
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966000000000000000000000000000000
      0000CC996600993300009933000099330000CC99660000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFCC9900FFCC9900FFFF
      FF00FFFFFF00FFFFFF00CC9966000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      000000000000000000000000000000000000000000000000000000000000CC99
      6600FFFFFF00FFFFFF00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00FFFFFF00FFFFFF00CC9966000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CC996600FFCC9900FFFFFF00FFFF
      FF00FFFFFF00CC9966000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CC99
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CC996600FFFFFF00FFFF
      FF00CC9966000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC996600CC996600CC9966000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC996600CC99
      6600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E2EFF100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066CCCC0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000948C390029A56B00318C4A00088C
      2900108C3100188C3900298C4200218C4200108C3100088C2900188C3900218C
      4200298C4200108C3100218C3900000000000000000000000000993300009933
      0000993300009933000099330000993300009933000099330000993300009933
      000099330000000000000000000000000000000000000000000000000000E2EF
      F100E5E5E500CCCCCC00E5E5E500E2EFF1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066CCCC000099CC00000000000000000000000000000000000000
      0000000000000000000000000000000000009C8C4A00318C4A00A5DE9C00FFF7
      FF00F7EFF700EFEFE700DEEFDE00E7EFE700F7EFEF00F7EFF700EFEFEF00E7EF
      E700DEEFDE00F7F7EF00218C39000000000000000000CC996600FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900CC99
      6600CC99660099330000000000000000000000000000E2EFF100E5E5E500B2B2
      B200CC9999009966660099666600B2B2B200CCCCCC00E5E5E500E2EFF1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000066CCCC000099CC000000000000000000000000000000
      000000000000000000000000000000000000AD8C5200188C3100EFEFEF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00218C390000000000CC996600CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      660099330000CC9966009933000000000000E5E5E500CC99990099666600CC99
      9900CC999900FFFFFF00996666009999990099999900B2B2B200E5E5E5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000066CCCC0099FFFF000099CC0000000000000000000000
      000000000000000000000000000000000000AD8C5A00108C2900DEE7DE00CEE7
      CE00E7EFE700E7EFE700E7EFE700E7EFE700DEEFDE00DEEFDE00B5D6B500A5CE
      A500B5D6B50094BD9400218C390000000000CC996600FFFFFF00FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC
      9900CC99660099330000993300000000000099666600CC999900FFCC9900FFCC
      9900FFCCCC00FFFFFF0099666600336699003366990033669900E2EFF1000000
      0000000000000000000000000000000000000000000000000000000000000000
      000066CCCC000099CC000099CC000099CC0066FFFF000099CC00000000000000
      000000000000000000000000000000000000AD8C520018943100E7F7E700187B
      1800187B1800187B1800187B1800187B18004A944A0073B5730042944200187B
      1800187B180031843100218C390000000000CC996600FFFFFF00FFCC9900FFCC
      9900FFCC9900FFCC990000CC000000990000FFCC99000000FF000000CC00FFCC
      9900CC996600CC996600993300000000000099666600FFCC9900FFCC9900FFCC
      9900FFCCCC00FFFFFF009966660066CCCC0066CCCC000099CC00FFFFFF00FFCC
      CC00000000000000000000000000000000000000000000000000000000000000
      000066CCCC0099FFFF0066FFFF0066FFFF0066FFFF0066FFFF000099CC000000
      000000000000000000000000000000000000A58C4A00218C3900E7EFE700CECE
      CE00187B1800187B1800187B1800187B180063A563008CCE8C00187B1800187B
      180018731800E7F7E700218C390000000000CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CC996600CC996600CC9966009933000099666600FFCC9900FFCC9900FFCC
      9900FFCCCC00FFFFFF009966660066CCCC0066CCFF003399CC00FFCCCC00CC66
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066CCCC0099FFFF0066FFFF000099CC0066CCCC0066CCCC0066CC
      CC000000000000000000000000000000000000000000298C4200CEE7CE00FFFF
      FF00CED6CE00187B1800187B1800187B180094CE9400187B1800187B18005294
      5200107B1000A5CEA500218C390000000000CC996600FFFFFF00FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC
      9900CC996600CC996600CC9966009933000099666600FFCC9900CC999900CC99
      6600FFCCCC00FFFFFF009966660099CCCC0099CCFF00B2B2B200FF660000CC66
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066CCCC0099FFFF0066FFFF0066FFFF000099CC00000000000000
      00000000000000000000000000000000000000000000298C4200CEE7CE00FFFF
      FF00FFFFFF00B5CEB500187B18008CCE8C00187B1800187B180084B58400BDD6
      BD00ADD6AD00DEDEDE00218C39000000000000000000CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600FFCC
      9900FFCC9900CC996600CC9966009933000099666600FFCC990099666600FFFF
      FF00FFCCCC00FFFFFF009966660099CCCC00C0C0C000CC660000CC660000CC66
      0000CC660000CC660000CC66000000000000000000000000000066CCCC000099
      CC000099CC000099CC000099CC0099FFFF0066FFFF0066FFFF000099CC000000
      00000000000000000000000000000000000000000000188C3900D6E7D600FFFF
      FF00F7FFF7008CD68C0084BD8400187B1800187B1800187B18004A944A00BDE7
      BD00FFFFFF00FFFFFF00218C3900000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC99
      6600FFCC9900FFCC9900CC9966009933000099666600FFCC9900CC9999009966
      6600FFCCCC00FFFFFF009966660000000000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC66000000000000000000000000000066CCCC0099FF
      FF0099FFFF0066FFFF0066FFFF0066FFFF0066FFFF0066FFFF0066FFFF000099
      CC0000000000000000000000000000000000AD8C5A00108C2900E7E7E700FFFF
      FF008CCE8C007BBD7B00187B1800187B1800187B1800187B1800187B1800428C
      4200A5D6A500FFFFFF00218C390000000000000000000000000000000000CC99
      6600FFFFFF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500FFFFFF00CC99
      6600CC996600CC996600993300000000000099666600FFCC9900FFCC9900FFCC
      9900FFCCCC00FFFFFF009966660000000000CC999900CC660000CC660000CC66
      0000CC660000CC660000CC6600000000000000000000000000000000000066CC
      CC0099FFFF0099FFFF0066FFFF0066FFFF000099CC0066CCCC0066CCCC0066CC
      CC0000000000000000000000000000000000AD8C5A00188C3100EFEFEF006BC6
      6B0052AD5200187B1800187B180084B58400DEDEDE004A944A00187B1800187B
      1800106B100084CE8400218C390000000000000000000000000000000000CC99
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CC99660000000000000000000000000099666600FFCC9900FFCC9900FFCC
      9900FFCCCC00FFFFFF0099666600CCCCCC00E2EFF100CC999900FF660000CC66
      00000000000000000000000000000000000000000000000000000000000066CC
      CC0099FFFF0099FFFF0099FFFF0066FFFF0066FFFF000099CC00000000000000
      000000000000000000000000000000000000AD8C5200218C3900E7EFE70094B5
      9400187B1800187B180094C69400F7FFF700FFFFFF00E7E7E7009CBD9C00187B
      1800187B1800D6D6D600218C3900000000000000000000000000000000000000
      0000CC996600FFFFFF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500FFFF
      FF00CC99660000000000000000000000000099666600FFCC9900FFCC9900FFCC
      9900FFCCCC00FFFFFF009966660099CCCC000000000099CCCC00FFCC9900CC66
      0000000000000000000000000000000000000000000000000000000000000000
      000066CCCC0099FFFF0099FFFF0099FFFF0066FFFF0066FFFF000099CC000000
      00000000000000000000000000000000000000000000218C3900E7F7E700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00218C3900000000000000000000000000000000000000
      0000CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC996600000000000000000099666600CC999900FFCC9900FFCC
      9900FFCCCC00FFFFFF0099666600CCCCCC00000000003399CC0000000000FFCC
      9900000000000000000000000000000000000000000000000000000000000000
      000066CCCC0099FFFF0099FFFF0099FFFF0066FFFF0066FFFF0066FFFF000099
      CC00000000000000000000000000000000009C8C4A00399C52008CA5840063AD
      63006BAD6B0073AD730084AD84007BAD7B006BAD6B0063AD630073AD730084AD
      840084AD84006BAD6B00218C3900000000000000000000000000000000000000
      000000000000CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC996600000000000000000000000000C0C0C000CC996600CC99
      9900CCCC9900FFFFFF00996666000099CC000099CC000099CC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066CCCC0099FFFF0099FFFF0099FFFF0066FFFF0066FFFF0066FF
      FF000099CC000000000000000000000000009C8C4A00429C63004A944A00428C
      4200428C42004A8C4A004A8C4A004A8C4A004A8C4A00428C42004A8C4A004A8C
      4A004A8C4A004A8C4A00218C3900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CCCC
      CC00CC9999009966660099666600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066CCCC0066CCCC0066CCCC0066CCCC0066CCCC0066CCCC0066CC
      CC0066CCCC0066CCCC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000E0B07000C0404000900
      0000150D0E000703020003040000020A00000108000009080000130402001407
      090001040800B8C5C70000000000000000000000000000000000CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC99660000000000000000000000000033333300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      9900000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000000088888800C4C6C600CCD1D000CAD0
      CF00BCC9C700B8CDC400B8D8C700B5D3C000BED2C600C7CECB00CDC8C900CBC6
      C80000020500C5D1D30000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000003333330066666600666666006666
      6600000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003333CC000000
      FF00000099000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080848900F4FFFF00E1FAFC00D1F8
      F600D1FFFF00BFFFF00027805400B5FFDD00DCFFFF00D8EEF900ECFFFF00BFCE
      D10000040800C3C7CC0000000000000000000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500FFFFFF00CC99660000000000000000000000000099999900CCCCCC009999
      9900666666006666660000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003333CC003399
      FF000000FF000000990000000000000000000000000000000000000000000000
      0000000000000000FF00000000000000000080888F00E8FBFF00D3F9F900C8FF
      FB00B0FFEE00137D5400128A5000B3FFE700BFFDE700DFFFFF00D5F7F600B1CA
      CC00020B0F00BEC1C60000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000099999900CCCCCC00CCCC
      CC00999999009999990066666600666666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003333
      CC000066FF000000CC0000000000000000000000000000000000000000000000
      00000000FF0000000000000000000000000077868900E9FFFF00DCFFFF00BCFF
      EF00158252000F8E51000B844A001B824800317E4100D7FFDE00DEFFF400B6CF
      CB00000B0900CDCFCF0000000000000000000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500FFFFFF00CC9966000000000000000000000000000000000099999900CCCC
      CC00CCCCCC009999990099999900999999006666660066666600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000CC000000FF0000009900000000000000000000000000000000000000
      FF000000990000000000000000000000000077858400ECFFFF00CFF9EE00CCFF
      F400A7FFDB0012884D0015855500B8FFE4003D873F002C632400D1FADF00BDD4
      CF0000020300C0BFC10000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC9966000000000000000000000000000000000099999900E5E5
      E500CCCCCC00CCCCCC0099999900999999009999990099330000663300006633
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000CC000000FF000000990000000000000000000000FF000000
      9900000000000000000000000000000000007E888200F3FFF900E5FFF300C9FD
      DF00C9FFEA00B7FFE60025826300AFFFDC00DFFFDD002D551E00E6FFF200BCD3
      CF0002010A00D7CDDA0000000000000000000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500FFFFFF00CC99660000000000000000000000000000000000000000009999
      9900E5E5E500CCCCCC00CCCCCC00999999009933000099330000993300009933
      0000663300000000000000000000000000000000000000000000000000000000
      000000000000000000000000CC000000FF00000099000000FF00000099000000
      000000000000000000000000000000000000888A8400F3FFF200E4FFE8002F58
      3C00D1FFE600C7FFEC00AEFFE800BDFFEE00D0FFD9003B5D3800DAFDE900B5CC
      C80004030D00D5C7D90000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000000000009999
      9900FFFFFF00E5E5E500CCCCCC00993300009933000099330000993300009933
      0000993300006633000000000000000000000000000000000000000000000000
      00000000000000000000000000000000CC000000FF0000009900000000000000
      0000000000000000000000000000000000008B868300FCFFF800F1FFF4003255
      3B00E1FFF000C2FFE0001B8B5100A1FFD800CDFFF100D1FBEA00DDFFF500B9D3
      CD0001030B00CDC4D10000000000000000000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500FFFFFF00CC99660000000000000000000000000000000000000000000000
      000099999900FFFFFF0099330000CC6633009933000099330000993300009933
      0000993300009933000066330000000000000000000000000000000000000000
      000000000000000000000000CC000000FF00000099000000CC00000099000000
      000000000000000000000000000000000000918C8900FBFFF900E9FBEE003351
      3E004E775C00CCFFE600118A40000F8C4600B6FFE600D4FFFA00DAFEF200BBD0
      C80000010200C9C8CC0000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000000000000000
      00009999990099330000CC66330099330000CC66330099330000993300009933
      0000993300009933000099330000663300000000000000000000000000000000
      0000000000000000CC000000FF000000990000000000000000000000CC000000
      9900000000000000000000000000000000007F807E00FAFFFE00F3FFFF00D3F1
      E6004D7E5E002E7F4800179543000A8B3A001E7D4B00CBFFEC00E8FFF300C3CF
      C3000A110A00C2C9C20000000000000000000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500FFFFFF00CC996600CC99
      6600CC996600CC99660000000000000000000000000000000000000000000000
      0000000000009933000099330000CC66330099330000CC663300993300009933
      0000993300009933000099330000993300000000000000000000000000000000
      CC000000FF000000FF0000009900000000000000000000000000000000000000
      CC0000009900000000000000000000000000868D8A00F8FFFF00ECF7FB00ECFF
      FF00E0FFF100CDFFE70021904C0011854000B8FFE000D8FFF100BDD0C100CDD0
      C70001050000CBCFCA0000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC996600E5E5
      E500CC9966000000000000000000000000000000000000000000000000000000
      000000000000993300009933000099330000CC66330099330000CC6633009933
      00009933000099330000993300009999990000000000000000000000CC003399
      FF000000FF000000990000000000000000000000000000000000000000000000
      00000000CC0000009900000000000000000080898600F1F9F800F8FFFF00F4FF
      FF00ECFFFE00DBFFF700307C5D00BDFFEB00D6FFF300000A0000000A04000101
      010006000500CEC6CD0000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC996600CC99
      6600000000000000000000000000000000000000000000000000000000000000
      00000000000000000000993300009933000099330000CC66330099330000CC66
      3300993300009933000099999900999999000000000000000000666699000000
      CC00666699000000000000000000000000000000000000000000000000000000
      000000000000000000000000CC000000000078838100FAFFFF00FAF9FB00FEFD
      FF00FAFFFF00EDFFFF00C9F6ED00D6FFFA00DAF8ED007D8D8600F0F7FA000B0A
      1300D7CDD900FFF6FF0000000000000000000000000000000000CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC9966000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000993300009933000099330000CC6633009933
      000099330000CCCCCC00CCCCCC00999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000081898900FBFAFC00FFFDFE00FFFD
      FC00FFFCF800FAFFFC00F1FFFF00EDFFFE00EFFFF9007587800000060F00BDBE
      CC00FFFAFF00FDF5FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009933000099330000993300009933
      0000E5E5E500E5E5E500CCCCCC00CCCCCC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007C8386008D8A8C009D858500977E
      7A009189820086888200818383007F87860078897E0077898200C3CCD600F8FA
      FF00FAF6FF00FFFBFF000000000000000000424D3E000000000000003E000000
      2800000040000000600000000100010000000000000300000000000000000000
      000000000000000000000000FFFFFF00FC00000000000000FC00000000000000
      FC00000000000000FC00000000000000E000000000000000E000000000000000
      E000000000000000E00000000000000000070000000000000007000000000000
      00070000000000000007000000000000003F000000000000003F000000000000
      003F000000000000003F000000000000F8FF801FFFFFFFFFF03F000F03FF0000
      E30F000F00FF0000E4C3000F00FF0000C471000F007F0000C84D000F003F0000
      88E5000F00070000909D000F000000001DCB000000000000333B000000000000
      98D7000100000000E637000300000000F9AF000700000000FE6F000F00000000
      FF9F800F00000000FFFFC01FFFFF0000F81FFFFFFCFFF8FFF81F8000F87FF03F
      F81F8000F07FE00FF81F8000E07FE003FC3F8000C03FC001FC3F8000803EC001
      FC3F8000001C8001FC3F800000088001FC3F800000010003FC3E800080030003
      981C80008007800700008000800FE00700018000C01FF80F00038000E03FFE0F
      00078000F07FFF9F981F8000F8FFFFFFFFFFE000FFFFFFFFFFFFE000FFFFFFFF
      FF3FE000F0FFFE7FFF3BE000E0FFFC3FFFB36000C0FFFC1FC00720008301FC0F
      E50700008701F807FF8320008F81F803C00F60008781F003DE6FE0008201E007
      DFEFE000C001C03FC00FE000E03980FFC00FE000F07F00FFC00FE000FFFF01FF
      FFFFE000FFFF87FFFFFFE000FFFFCFFFFFFFFFFFFDFFFBFF0001C007E0FFF9FF
      00018003801FFCFF00010001001FFC7F00010001001FF03F00010001000FF01F
      00010000000FF80F80010000000FF83F800180000001C01F8001C0000101C00F
      0001E0010101E00F0001E007000FE03F0001F007008FF01F8001F00300AFF00F
      0001F803803FF8070001FFFFE1FFF803FFFFFFFFFFFF8003C0033FFFEFFD0003
      C0030FFFC7FF0003C00383FFC3FB0003C00380FFE3F70003C003C03FF1E70003
      C003C00FF8CF0003C003E007FC1F0003C003E003FE3F0003C003F001FC1F0003
      C003F000F8CF0003C003F800E1E70003C007F800C3F30003C00FFC00C7FD0003
      C01FFE00FFFF0003FFFFFF00FFFF000300000000000000000000000000000000
      000000000000}
  end
  object frReport: TfrReport
    Dataset = frDBDataSet
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    StoreInDFM = True
    RebuildPrinter = False
    Left = 1088
    Top = 27
    ReportForm = {
      190000009D000000190000000001000100FFFFFFFFFF09000000340800009A0B
      00000000000000000000000000000000000000FFFF00000000FFFF0000000000
      000000000500506167653100030400466F726D000F0000FFDC00000078000000
      7C0100002C01000004000000FEFEFF000000000000000000000000FDFF010000
      0000FC000000000000000000000000000000005800169BF3A28F13E440191AB1
      132F44E440}
  end
  object frDBDataSet: TfrDBDataSet
    DataSet = MData
    Left = 1131
    Top = 27
  end
  object ADOStoredProc1: TADOStoredProc
    Parameters = <>
    Left = 1165
    Top = 26
  end
  object mData2: TdxMemData
    Indexes = <>
    SortOptions = []
    SortedField = 'FWorkItemListNum'
    Left = 107
    Top = 152
    object StringField1: TStringField
      FieldName = 'FParentNumber'
    end
    object StringField2: TStringField
      FieldName = 'FNumber'
    end
    object StringField3: TStringField
      FieldName = 'FBalanceName'
    end
    object StringField4: TStringField
      FieldName = 'FBalanceModel'
    end
    object StringField5: TStringField
      FieldName = 'FUnitName'
    end
    object CurrencyField1: TCurrencyField
      FieldName = 'FWorkPrice'
    end
    object StringField6: TStringField
      FieldName = 'FRemark'
    end
    object IntegerField1: TIntegerField
      FieldName = 'FWorkID'
    end
    object IntegerField2: TIntegerField
      FieldName = 'FBalanceID'
    end
    object IntegerField3: TIntegerField
      FieldName = 'FItemID'
    end
    object StringField7: TStringField
      FieldName = 'FPactNo'
    end
    object StringField8: TStringField
      FieldName = 'FClientshortName'
    end
    object StringField9: TStringField
      FieldName = 'FMaterialDate'
    end
    object StringField10: TStringField
      FieldName = 'FBalancePrice'
    end
    object IntegerField4: TIntegerField
      FieldName = 'FBalancePriceID'
    end
    object StringField11: TStringField
      FieldName = 'FAgentBalanceNum'
    end
    object StringField12: TStringField
      FieldName = 'FAgentBalancePactNum'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'FAgentBalanceDate'
    end
    object StringField13: TStringField
      FieldName = 'FAgentID'
    end
    object StringField14: TStringField
      FieldName = 'FAgentBalanceItemID'
    end
    object StringField15: TStringField
      FieldName = 'FBalanceQry'
    end
    object StringField16: TStringField
      FieldName = 'FAdvanceQry'
    end
    object StringField17: TStringField
      FieldName = 'FQualityQry'
    end
    object StringField18: TStringField
      FieldName = 'FEstimateQry'
    end
    object StringField19: TStringField
      FieldName = 'FWorkItemListRemark'
    end
    object IntegerField5: TIntegerField
      FieldName = 'FWorkItemListNum'
    end
    object IntegerField6: TIntegerField
      FieldName = 'FWorkListNum'
    end
    object StringField20: TStringField
      FieldName = 'FWorkListRemark'
    end
    object DateField1: TDateField
      FieldName = 'FDeliveryDate'
    end
    object CurrencyField2: TCurrencyField
      FieldName = 'FEstimateAmount'
    end
    object CurrencyField3: TCurrencyField
      FieldName = 'FAdvanceAmount'
    end
    object FloatField1: TFloatField
      FieldName = 'FPrice'
    end
    object FloatField2: TFloatField
      FieldName = 'FWeight'
    end
    object FloatField3: TFloatField
      FieldName = 'FQry'
    end
    object StringField21: TStringField
      FieldName = 'FE05'
    end
    object FloatField4: TFloatField
      FieldName = 'FSollWeight'
    end
    object FloatField5: TFloatField
      FieldName = 'FSingleWeight'
    end
    object IntegerField7: TIntegerField
      FieldName = 'FLength'
    end
    object IntegerField8: TIntegerField
      FieldName = 'FKm'
    end
    object FloatField6: TFloatField
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'FOutPrice'
      Calculated = True
    end
  end
  object DS_Mdata2: TDataSource
    DataSet = mData2
    Left = 59
    Top = 144
  end
  object MData_M: TdxMemData
    Indexes = <>
    SortOptions = []
    SortedField = 'FWorkItemListNum'
    Left = 99
    Top = 48
    object StringField22: TStringField
      FieldName = 'FParentNumber'
    end
    object StringField23: TStringField
      FieldName = 'FNumber'
    end
    object StringField24: TStringField
      FieldName = 'FBalanceName'
    end
    object StringField25: TStringField
      FieldName = 'FBalanceModel'
    end
    object StringField26: TStringField
      FieldName = 'FUnitName'
    end
    object CurrencyField4: TCurrencyField
      FieldName = 'FWorkPrice'
    end
    object StringField27: TStringField
      FieldName = 'FRemark'
    end
    object IntegerField9: TIntegerField
      FieldName = 'FWorkID'
    end
    object IntegerField10: TIntegerField
      FieldName = 'FBalanceID'
    end
    object IntegerField11: TIntegerField
      FieldName = 'FItemID'
    end
    object StringField28: TStringField
      FieldName = 'FPactNo'
    end
    object StringField29: TStringField
      FieldName = 'FClientshortName'
    end
    object StringField30: TStringField
      FieldName = 'FMaterialDate'
    end
    object StringField31: TStringField
      FieldName = 'FBalancePrice'
    end
    object IntegerField12: TIntegerField
      FieldName = 'FBalancePriceID'
    end
    object StringField32: TStringField
      FieldName = 'FAgentBalanceNum'
    end
    object StringField33: TStringField
      FieldName = 'FAgentBalancePactNum'
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'FAgentBalanceDate'
    end
    object StringField34: TStringField
      FieldName = 'FAgentID'
    end
    object StringField35: TStringField
      FieldName = 'FAgentBalanceItemID'
    end
    object StringField36: TStringField
      FieldName = 'FBalanceQry'
    end
    object StringField37: TStringField
      FieldName = 'FAdvanceQry'
    end
    object StringField38: TStringField
      FieldName = 'FQualityQry'
    end
    object StringField39: TStringField
      FieldName = 'FEstimateQry'
    end
    object StringField40: TStringField
      FieldName = 'FWorkItemListRemark'
    end
    object IntegerField13: TIntegerField
      FieldName = 'FWorkItemListNum'
    end
    object IntegerField14: TIntegerField
      FieldName = 'FWorkListNum'
    end
    object StringField41: TStringField
      FieldName = 'FWorkListRemark'
    end
    object DateField2: TDateField
      FieldName = 'FDeliveryDate'
    end
    object CurrencyField5: TCurrencyField
      FieldName = 'FEstimateAmount'
    end
    object CurrencyField6: TCurrencyField
      FieldName = 'FAdvanceAmount'
    end
    object FloatField7: TFloatField
      FieldName = 'FPrice'
    end
    object FloatField8: TFloatField
      FieldName = 'FWeight'
    end
    object FloatField9: TFloatField
      FieldName = 'FQry'
    end
    object StringField42: TStringField
      FieldName = 'FE05'
    end
    object FloatField10: TFloatField
      FieldName = 'FSollWeight'
    end
    object FloatField11: TFloatField
      FieldName = 'FSingleWeight'
    end
    object IntegerField15: TIntegerField
      FieldName = 'FLength'
    end
    object IntegerField16: TIntegerField
      FieldName = 'FKm'
    end
    object FloatField12: TFloatField
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'FOutPrice'
      Calculated = True
    end
  end
  object DS_Mdata_M: TDataSource
    DataSet = MData_M
    Left = 59
    Top = 48
  end
end
