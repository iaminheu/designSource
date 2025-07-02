inherited Frm_WorkBalance: TFrm_WorkBalance
  Left = 227
  Top = 152
  Caption = #29983#20135#32467#31639
  ClientHeight = 800
  ClientWidth = 1435
  OldCreateOrder = True
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  inherited Image: TImage
    Width = 1435
  end
  inherited L_title: TLabel
    Left = 12
    Top = 2
    Width = 1545
    Caption = #36890#29992#25968#25454#30331#35760
  end
  inherited P_back: TPanel
    Width = 1435
    Height = 779
    inherited P_main: TPanel
      Width = 1429
      Height = 773
      inherited Panel_down: TPanel
        Top = 770
        Width = 1427
        Height = 1
        inherited Bevel_bass: TBevel
          Width = 1427
        end
      end
      object Panel_EditButton: TPanel
        Left = 0
        Top = 0
        Width = 1427
        Height = 47
        Align = alTop
        ParentColor = True
        TabOrder = 1
        object ToolBar1: TToolBar
          Left = 1
          Top = 1
          Width = 1425
          Height = 35
          AutoSize = True
          ButtonHeight = 35
          ButtonWidth = 91
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
          object TB_App: TToolButton
            Left = 53
            Top = 0
            AutoSize = True
            Caption = #26032#22686'[&A]'
            ImageIndex = 0
            OnClick = TB_AppClick
          end
          object TB_Edit: TToolButton
            Left = 106
            Top = 0
            AutoSize = True
            Caption = #20462#25913'[&E]'
            ImageIndex = 2
            Visible = False
            OnClick = TB_EditClick
          end
          object TB_Del: TToolButton
            Left = 159
            Top = 0
            AutoSize = True
            Caption = #21024#38500'[&D]'
            ImageIndex = 3
            Visible = False
            OnClick = TB_DelClick
          end
          object ToolButton5: TToolButton
            Left = 212
            Top = 0
            Width = 8
            Caption = 'ToolButton5'
            ImageIndex = 4
            Style = tbsSeparator
          end
          object TB_Submit: TToolButton
            Left = 220
            Top = 0
            AutoSize = True
            Caption = #25552#20132
            ImageIndex = 15
            Visible = False
            OnClick = TB_SubmitClick
          end
          object TB_Check: TToolButton
            Left = 255
            Top = 0
            AutoSize = True
            Caption = #26657#23545
            ImageIndex = 16
            Visible = False
            OnClick = TB_CheckClick
          end
          object TB_Audit: TToolButton
            Left = 290
            Top = 0
            AutoSize = True
            Caption = #23457#26680
            ImageIndex = 17
            Visible = False
            OnClick = TB_AuditClick
          end
          object TB_FInvoice: TToolButton
            Left = 325
            Top = 0
            AutoSize = True
            Caption = #21457#31080#26680#38144
            ImageIndex = 13
            OnClick = TB_FInvoiceClick
          end
          object TB_FInvoice_Save: TToolButton
            Left = 384
            Top = 0
            AutoSize = True
            Caption = #21457#31080#26680#38144#20445#23384
            ImageIndex = 9
            OnClick = TB_FInvoice_SaveClick
          end
          object ToolButton1: TToolButton
            Left = 467
            Top = 0
            Width = 8
            Caption = 'ToolButton1'
            ImageIndex = 9
            Style = tbsSeparator
          end
          object TB_WorkBudget: TToolButton
            Left = 475
            Top = 0
            AutoSize = True
            Caption = #32467#31639#26126#32454#34920'2018'
            ImageIndex = 5
            OnClick = TB_WorkBudgetClick
          end
          object TB_Prin: TToolButton
            Left = 570
            Top = 0
            Cursor = crHandPoint
            AutoSize = True
            Caption = #25171#21360'[&P]'
            ImageIndex = 7
            Visible = False
          end
          object TB_EXIT: TToolButton
            Left = 623
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
        Top = 47
        Width = 286
        Height = 723
        Color = 14935011
        HotSpotVisible = True
        SizeBarWidth = 7
        TabOrder = 2
        VisualStyle = vsGradient
        OnConstrainedResize = RSP_TreeConstrainedResize
        object Panel4: TPanel
          Left = 0
          Top = 643
          Width = 278
          Height = 80
          Align = alBottom
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 0
          object Label11: TLabel
            Left = 2
            Top = 9
            Width = 186
            Height = 16
            AutoSize = False
            Caption = #36755#20837#29983#20135#21333#20301#27169#31946#26597#25214#65306
          end
          object E_Locate: TcxButtonEdit
            Left = 9
            Top = 44
            Width = 251
            Height = 30
            Hint = #36755#20837#39033#30446#26723#26696#21495#12289#21517#31216#27169#31946#26597#25214#65306
            AutoSize = False
            ParentFont = False
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
                Kind = bkGlyph
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
            OnKeyDown = E_LocateKeyDown
          end
        end
        object TS_Tree: TPageControl
          Left = 0
          Top = 0
          Width = 278
          Height = 32
          ActivePage = TS_Num
          Align = alTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          MultiLine = True
          ParentFont = False
          TabOrder = 1
          OnChange = TS_TreeChange
          object TS_Num: TTabSheet
            Caption = #32467#31639#21333#21495
            ImageIndex = 3
          end
        end
        object MyTreeView: TTreeView
          Left = 0
          Top = 32
          Width = 278
          Height = 611
          Align = alClient
          AutoExpand = True
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          Indent = 19
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          OnChange = MyTreeViewChange
          OnExpanding = MyTreeViewExpanding
        end
      end
      object Panel2: TPanel
        Left = 286
        Top = 47
        Width = 1141
        Height = 723
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 3
        object TS_Item: TRzPageControl
          Left = 0
          Top = 0
          Width = 1141
          Height = 723
          ActivePage = TS_Brow
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -18
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabIndex = 0
          TabOrder = 0
          TabStyle = tsDoubleSlant
          OnChange = TS_ItemChange
          FixedDimension = 30
          object TS_Brow: TRzTabSheet
            Color = 14935011
            Caption = #20027#20449#24687
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            object PanelBkGnd: TPanel
              Left = 0
              Top = 0
              Width = 1137
              Height = 689
              Align = alClient
              BevelOuter = bvNone
              Ctl3D = True
              ParentCtl3D = False
              TabOrder = 0
              object RzSizePanel1: TRzSizePanel
                Left = 0
                Top = 254
                Width = 1137
                Height = 435
                Align = alBottom
                Color = 14935011
                HotSpotVisible = True
                SizeBarWidth = 7
                TabOrder = 0
                VisualStyle = vsGradient
                object PageControl2: TPageControl
                  Left = 0
                  Top = 8
                  Width = 1137
                  Height = 427
                  ActivePage = TabSheet1
                  Align = alClient
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'Times New Roman'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  object TabSheet1: TTabSheet
                    Caption = #32467#31639#26126#32454#34920
                    ImageIndex = 4
                    object cxGrid_List: TcxGrid
                      Left = 0
                      Top = 0
                      Width = 1129
                      Height = 395
                      Align = alClient
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -15
                      Font.Name = 'Times New Roman'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 0
                      OnContextPopup = cxGrid_ListContextPopup
                      object cxGV_List: TcxGridDBTableView
                        DataController.DataSource = DS_Mdata_List
                        DataController.Summary.DefaultGroupSummaryItems = <
                          item
                            Format = #23567#35745':,0.00;-,0.00'
                            Kind = skSum
                            FieldName = 'FRealAmount'
                            Column = FRealAmount_List
                          end>
                        DataController.Summary.FooterSummaryItems = <
                          item
                            Kind = skSum
                            FieldName = 'FBalanceQry'
                            Column = FBalanceQry_List
                          end
                          item
                            Format = ',0.00;-,0.00'
                            Kind = skSum
                            FieldName = 'FAdvanceAmount'
                          end
                          item
                            Format = ',0.00;-,0.00'
                            Kind = skSum
                            FieldName = 'FBalanceAmount'
                            Column = FBalanceAmount_List
                          end
                          item
                            Format = ',0.00;-,0.00'
                            Kind = skSum
                            FieldName = 'FQualityAmount'
                            Column = FQualityAmount_List
                          end
                          item
                            Kind = skSum
                            FieldName = 'FEstimateQry'
                            Column = FEstimateQry_List
                          end
                          item
                            Format = ',0.00;-,0.00'
                            Kind = skSum
                            FieldName = 'FEstimateAmount'
                            Column = FEstimateAmount_List
                          end
                          item
                            Format = ',0.00;-,0.00'
                            Kind = skSum
                            FieldName = 'FRealAmount'
                            Column = FRealAmount_List
                          end
                          item
                            Format = ',0.00;-,0.00'
                            Kind = skSum
                            FieldName = 'FBalanceTaxAmount'
                            Column = FBalanceTaxAmount_List
                          end>
                        DataController.Summary.SummaryGroups = <>
                        NavigatorButtons.ConfirmDelete = False
                        NavigatorButtons.PriorPage.Visible = False
                        NavigatorButtons.NextPage.Visible = False
                        NavigatorButtons.Insert.Visible = True
                        NavigatorButtons.Delete.Visible = True
                        NavigatorButtons.Edit.Visible = True
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
                        OptionsView.Footer = True
                        OptionsView.GroupByBox = False
                        object FBalanceListNum_List: TcxGridDBColumn
                          Caption = #24207#21495
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Options.Sorting = False
                          Width = 46
                          DataBinding.FieldName = 'FBalanceListNum'
                        end
                        object FBalanceName_List: TcxGridDBColumn
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
                          Width = 121
                          DataBinding.FieldName = 'FBalanceName'
                        end
                        object FBalanceModel_List: TcxGridDBColumn
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
                          Options.Sorting = False
                          Width = 120
                          DataBinding.FieldName = 'FBalanceModel'
                        end
                        object FUnitName_List: TcxGridDBColumn
                          Caption = #21333#20301
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Options.Sorting = False
                          Width = 29
                          DataBinding.FieldName = 'FUnitName'
                        end
                        object FMaterialDate_List: TcxGridDBColumn
                          Caption = #25191#34892#26085#26399
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Options.Sorting = False
                          Width = 89
                          DataBinding.FieldName = 'FMaterialDate'
                        end
                        object FEstimateQry_List: TcxGridDBColumn
                          Caption = #39044#20272#25968#37327
                          PropertiesClassName = 'TcxCurrencyEditProperties'
                          Properties.Alignment.Horz = taRightJustify
                          Properties.DecimalPlaces = 4
                          Properties.NullString = '0.0000'
                          Properties.ValidateOnEnter = True
                          Properties.IsDisplayFormatAssigned = True
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Options.Sorting = False
                          Width = 65
                          DataBinding.FieldName = 'FEstimateQry'
                        end
                        object FEstimateAmount_List: TcxGridDBColumn
                          Caption = #39044#20272#37329#39069
                          PropertiesClassName = 'TcxCurrencyEditProperties'
                          Properties.Alignment.Horz = taRightJustify
                          Properties.DisplayFormat = ',0.00;-,0.00'
                          Properties.NullString = '0.00'
                          Properties.ValidateOnEnter = True
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Options.Sorting = False
                          Width = 81
                          DataBinding.FieldName = 'FEstimateAmount'
                        end
                        object FWorkItemPrice_List: TcxGridDBColumn
                          Caption = #20219#21153#21333#20215
                          PropertiesClassName = 'TcxCurrencyEditProperties'
                          Properties.DecimalPlaces = 6
                          Properties.ValidateOnEnter = True
                          Properties.IsDisplayFormatAssigned = True
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Options.Sorting = False
                          Width = 64
                          DataBinding.FieldName = 'FWorkItemPrice'
                        end
                        object FBalanceWorkAdjust_List: TcxGridDBColumn
                          Caption = #24037#31649#35843#25972#20215
                          PropertiesClassName = 'TcxCurrencyEditProperties'
                          Properties.DecimalPlaces = 6
                          Properties.ValidateOnEnter = True
                          Properties.IsDisplayFormatAssigned = True
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Options.Sorting = False
                          Width = 65
                          DataBinding.FieldName = 'FBalanceWorkAdjust'
                        end
                        object FBalanceAdjust_List: TcxGridDBColumn
                          Caption = #20854#20182#35843#25972#20215
                          PropertiesClassName = 'TcxCurrencyEditProperties'
                          Properties.Alignment.Horz = taRightJustify
                          Properties.DecimalPlaces = 6
                          Properties.ValidateOnEnter = True
                          Properties.IsDisplayFormatAssigned = True
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Options.Sorting = False
                          Width = 65
                          DataBinding.FieldName = 'FBalanceAdjust'
                        end
                        object FBalancePrice_List: TcxGridDBColumn
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
                          Options.Sorting = False
                          Width = 57
                          DataBinding.FieldName = 'FBalancePrice'
                        end
                        object FBalanceQry_List: TcxGridDBColumn
                          Caption = #32467#31639#25968#37327
                          PropertiesClassName = 'TcxCurrencyEditProperties'
                          Properties.Alignment.Horz = taRightJustify
                          Properties.DecimalPlaces = 4
                          Properties.NullString = '0.00'
                          Properties.ValidateOnEnter = True
                          Properties.IsDisplayFormatAssigned = True
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Options.Sorting = False
                          Width = 74
                          DataBinding.FieldName = 'FBalanceQry'
                        end
                        object FBalanceAmount_List: TcxGridDBColumn
                          Caption = #32467#31639#37329#39069
                          PropertiesClassName = 'TcxCurrencyEditProperties'
                          Properties.Alignment.Horz = taRightJustify
                          Properties.DisplayFormat = ',0.00;-,0.00'
                          Properties.NullString = '0.00'
                          Properties.ValidateOnEnter = True
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Options.Sorting = False
                          Width = 90
                          DataBinding.FieldName = 'FBalanceAmount'
                        end
                        object FQualityAmount_List: TcxGridDBColumn
                          Caption = #36136#37327#32771#26680
                          PropertiesClassName = 'TcxCurrencyEditProperties'
                          Properties.Alignment.Horz = taRightJustify
                          Properties.DisplayFormat = ',0.00;-,0.00'
                          Properties.NullString = '0.00'
                          Properties.ValidateOnEnter = True
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Options.Sorting = False
                          Width = 62
                          DataBinding.FieldName = 'FQualityAmount'
                        end
                        object FRealAmount_List: TcxGridDBColumn
                          Caption = #23454#32467#37329#39069'('#21547#31246')'
                          PropertiesClassName = 'TcxCurrencyEditProperties'
                          Properties.DisplayFormat = ',0.00;-,0.00'
                          Properties.ValidateOnEnter = True
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Options.Sorting = False
                          Width = 97
                          DataBinding.FieldName = 'FRealAmount'
                        end
                        object FBalanceTaxAmount_List: TcxGridDBColumn
                          Caption = #23454#32467#37329#39069'('#19981#21547#31246')'
                          PropertiesClassName = 'TcxCurrencyEditProperties'
                          Properties.DisplayFormat = ',0.00;-,0.00'
                          Properties.ValidateOnEnter = True
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Options.Sorting = False
                          Width = 95
                          DataBinding.FieldName = 'FBalanceTaxAmount'
                        end
                        object FBalanceRemark_List: TcxGridDBColumn
                          Caption = #32467#31639#22791#27880
                          PropertiesClassName = 'TcxButtonEditProperties'
                          Properties.Buttons = <
                            item
                              Default = True
                              Kind = bkEllipsis
                            end>
                          Properties.MaxLength = 0
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          MinWidth = 50
                          Options.Editing = False
                          Options.Filtering = False
                          Options.Sorting = False
                          Width = 142
                          DataBinding.FieldName = 'FBalanceRemark'
                        end
                        object FBranchItemNumber_List: TcxGridDBColumn
                          Caption = #22270#21495
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Options.Sorting = False
                          Width = 69
                          DataBinding.FieldName = 'FBranchItemNumber'
                        end
                        object FBalanceYear_List: TcxGridDBColumn
                          Caption = #24180
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Options.Sorting = False
                          Width = 60
                          DataBinding.FieldName = 'FBalanceYear'
                        end
                        object FBalanceMonth_List: TcxGridDBColumn
                          Caption = #26376
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Options.Sorting = False
                          Width = 20
                          DataBinding.FieldName = 'FBalanceMonth'
                        end
                        object FBalanceDay_List: TcxGridDBColumn
                          Caption = #26085
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Options.Sorting = False
                          Width = 20
                          DataBinding.FieldName = 'FBalanceDay'
                        end
                        object FBalanceNum_List: TcxGridDBColumn
                          Caption = #32467#31639#21333#21495
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          SortOrder = soAscending
                          Width = 73
                          DataBinding.FieldName = 'FBalanceNum'
                        end
                        object FWorkItemNum_List: TcxGridDBColumn
                          Caption = #20219#21153#21333#21495
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Options.Sorting = False
                          Width = 74
                          DataBinding.FieldName = 'FWorkItemNum'
                        end
                        object FWorkListID_List: TcxGridDBColumn
                          Caption = #20219#21153#21333'ID'
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Options.Sorting = False
                          Width = 63
                          DataBinding.FieldName = 'FWorkListID'
                        end
                        object FWorkData_List: TcxGridDBColumn
                          Caption = #39033#30446#20449#24687
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Options.Sorting = False
                          Width = 101
                          DataBinding.FieldName = 'FWorkData'
                        end
                        object FAgentName_List: TcxGridDBColumn
                          Caption = #22806#21327#29992#25143
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taRightJustify
                          Options.Editing = False
                          Options.Filtering = False
                          Options.Sorting = False
                          Width = 163
                          DataBinding.FieldName = 'FAgentName'
                        end
                        object FClientshortName_List: TcxGridDBColumn
                          Caption = #29992#25143#31616#31216
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Options.Sorting = False
                          Width = 182
                          DataBinding.FieldName = 'FClientshortName'
                        end
                        object FBranchFileNo_List: TcxGridDBColumn
                          Caption = #26723#26696#21495
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Options.Sorting = False
                          Width = 84
                          DataBinding.FieldName = 'FBranchFileNo'
                        end
                        object FBalancePriceID_List: TcxGridDBColumn
                          Caption = #32467#31639#21333#20215'ID'
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Options.Sorting = False
                          DataBinding.FieldName = 'FBalancePriceID'
                        end
                        object FProductClass_List: TcxGridDBColumn
                          Caption = #20135#21697#31867#21035
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Options.Sorting = False
                          DataBinding.FieldName = 'FProductClass'
                        end
                        object FNumber_List: TcxGridDBColumn
                          Caption = #32467#31639#37096#20214#20195#30721
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Options.Sorting = False
                          Width = 111
                          DataBinding.FieldName = 'FNumber'
                        end
                        object FPartsCode_List: TcxGridDBColumn
                          Caption = #37096#20214#21495
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Options.Sorting = False
                          Width = 41
                          DataBinding.FieldName = 'FPartsCode'
                        end
                        object FBalanceBasePrice_List: TcxGridDBColumn
                          Caption = #32467#31639#22522#20215
                          PropertiesClassName = 'TcxCurrencyEditProperties'
                          Properties.DecimalPlaces = 6
                          Properties.ValidateOnEnter = True
                          Properties.IsDisplayFormatAssigned = True
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Options.Sorting = False
                          Width = 65
                          DataBinding.FieldName = 'FBalanceBasePrice'
                        end
                        object FWorkOutPrice_List: TcxGridDBColumn
                          Caption = #24037#31649#36148#34917#20215
                          PropertiesClassName = 'TcxCurrencyEditProperties'
                          Properties.DecimalPlaces = 6
                          Properties.ValidateOnEnter = True
                          Properties.IsDisplayFormatAssigned = True
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Options.Sorting = False
                          Width = 65
                          DataBinding.FieldName = 'FWorkOutPrice'
                        end
                        object FOutPrice_List: TcxGridDBColumn
                          Caption = #36148#34917#20215
                          PropertiesClassName = 'TcxCurrencyEditProperties'
                          Properties.DecimalPlaces = 6
                          Properties.ValidateOnEnter = True
                          Properties.IsDisplayFormatAssigned = True
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Options.Sorting = False
                          Width = 50
                          DataBinding.FieldName = 'FOutPrice'
                        end
                      end
                      object cxGL_List: TcxGridLevel
                        GridView = cxGV_List
                      end
                    end
                  end
                end
              end
              object cxGrid_Item: TcxGrid
                Left = 0
                Top = 0
                Width = 1137
                Height = 254
                Align = alClient
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Times New Roman'
                Font.Style = []
                ParentFont = False
                PopupMenu = PM_Band
                TabOrder = 1
                OnContextPopup = cxGrid_ItemContextPopup
                LookAndFeel.Kind = lfUltraFlat
                LookAndFeel.NativeStyle = True
                object cxGV_Item: TcxGridDBBandedTableView
                  DataController.DataSource = DS_Mdata
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <
                    item
                      Format = ',0.00;-,0.00'
                      Kind = skSum
                      FieldName = 'FWorkBudgetItemAmount'
                      Column = FWorkBudgetItemAmount_Item
                    end
                    item
                      Format = ',0.00;-,0.00'
                      Kind = skSum
                      FieldName = 'FWorkBudgetItemTaxAmount'
                      Column = FWorkBudgetItemTaxAmount_Item
                    end
                    item
                      Format = ',0.00;-,0.00'
                      Kind = skSum
                      FieldName = 'FWorkInvoiceAmount'
                      Column = FWorkInvoiceAmount_Item
                    end>
                  DataController.Summary.SummaryGroups = <>
                  NavigatorButtons.ConfirmDelete = False
                  OnCustomDrawCell = cxGV_ItemCustomDrawCell
                  OnFocusedRecordChanged = cxGV_ItemFocusedRecordChanged
                  OptionsView.CellAutoHeight = True
                  OptionsView.Footer = True
                  OptionsView.GroupByBox = False
                  Bands = <
                    item
                      Caption = #39033#30446#20449#24687
                      FixedKind = fkLeft
                      Width = 255
                    end
                    item
                      Caption = #32467#31639#20449#24687
                      Width = 865
                    end
                    item
                      Caption = #26680#38144#20449#24687
                      Width = 273
                    end
                    item
                      Caption = #24405#20837#20449#24687
                      Width = 528
                    end>
                  object XH: TcxGridDBBandedColumn
                    Caption = #24207#21495
                    PropertiesClassName = 'TcxButtonEditProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.Alignment.Vert = taVCenter
                    Properties.Buttons = <
                      item
                        Default = True
                        Kind = bkEllipsis
                      end>
                    OnGetDisplayText = XHGetDisplayText
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 38
                    Position.BandIndex = 0
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object FBranchFileNo_Item: TcxGridDBBandedColumn
                    Caption = #26723#26696#21495
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 136
                    Position.BandIndex = 0
                    Position.ColIndex = 1
                    Position.RowIndex = 0
                    DataBinding.FieldName = 'FBranchFileNo'
                  end
                  object FBranchItemNumber_Item: TcxGridDBBandedColumn
                    Caption = #22270#21495
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 78
                    Position.BandIndex = 0
                    Position.ColIndex = 2
                    Position.RowIndex = 0
                    DataBinding.FieldName = 'FBranchItemNumber'
                  end
                  object FClientShortName_Item: TcxGridDBBandedColumn
                    Caption = #39033#30446#21517#31216
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 243
                    Position.BandIndex = 1
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                    DataBinding.FieldName = 'FClientShortName'
                  end
                  object FAgentName_Item: TcxGridDBBandedColumn
                    Caption = #22806#21327#21333#20301
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 239
                    Position.BandIndex = 1
                    Position.ColIndex = 1
                    Position.RowIndex = 0
                    DataBinding.FieldName = 'FAgentName'
                  end
                  object FBalanceNum_Item: TcxGridDBBandedColumn
                    Caption = #32467#31639#21333#21495
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 83
                    Position.BandIndex = 1
                    Position.ColIndex = 2
                    Position.RowIndex = 0
                    DataBinding.FieldName = 'FBalanceNum'
                  end
                  object FBalanceDate_Item: TcxGridDBBandedColumn
                    Tag = 1
                    Caption = #32467#31639#21333#26085#26399
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 86
                    Position.BandIndex = 1
                    Position.ColIndex = 3
                    Position.RowIndex = 0
                    DataBinding.FieldName = 'FBalanceDate'
                  end
                  object FWorkBudgetItemAmount_Item: TcxGridDBBandedColumn
                    Caption = #32467#31639#37329#39069'('#21547#31246')'
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.DisplayFormat = ',0.00;-,0.00'
                    Properties.ValidateOnEnter = True
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 104
                    Position.BandIndex = 1
                    Position.ColIndex = 5
                    Position.RowIndex = 0
                  end
                  object FWorkBudgetItemTaxAmount_Item: TcxGridDBBandedColumn
                    Caption = #32467#31639#37329#39069'('#19981#21547#31246')'
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.DisplayFormat = ',0.00;-,0.00'
                    Properties.ValidateOnEnter = True
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 110
                    Position.BandIndex = 1
                    Position.ColIndex = 6
                    Position.RowIndex = 0
                  end
                  object FTaxRate_Item: TcxGridDBBandedColumn
                    Caption = #31246#29575
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Position.BandIndex = 1
                    Position.ColIndex = 4
                    Position.RowIndex = 0
                    DataBinding.FieldName = 'FTaxRate'
                  end
                  object FStatusNotes: TcxGridDBBandedColumn
                    Caption = #21333#25454#29366#24577
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 64
                    Position.BandIndex = 3
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                    DataBinding.FieldName = 'FStatusNotes'
                  end
                  object FBalanceWrite: TcxGridDBBandedColumn
                    Caption = #21046#21333
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 46
                    Position.BandIndex = 3
                    Position.ColIndex = 1
                    Position.RowIndex = 0
                    DataBinding.FieldName = 'FBalanceWrite'
                  end
                  object FBalanceWriteDate: TcxGridDBBandedColumn
                    Caption = #21046#21333#26085#26399
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 58
                    Position.BandIndex = 3
                    Position.ColIndex = 2
                    Position.RowIndex = 0
                    DataBinding.FieldName = 'FBalanceWriteDate'
                  end
                  object FNewestAlter: TcxGridDBBandedColumn
                    Caption = #20462#25913
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 39
                    Position.BandIndex = 3
                    Position.ColIndex = 3
                    Position.RowIndex = 0
                  end
                  object FNewestAlterDate: TcxGridDBBandedColumn
                    Caption = #20462#25913#26085#26399
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 61
                    Position.BandIndex = 3
                    Position.ColIndex = 4
                    Position.RowIndex = 0
                  end
                  object FBalanceSubmitDate_Item: TcxGridDBBandedColumn
                    Caption = #25552#20132#26085#26399
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 71
                    Position.BandIndex = 3
                    Position.ColIndex = 5
                    Position.RowIndex = 0
                    DataBinding.FieldName = 'FBalanceSubmitDate'
                  end
                  object FBalanceCheck: TcxGridDBBandedColumn
                    Caption = #26657#23545
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 39
                    Position.BandIndex = 3
                    Position.ColIndex = 6
                    Position.RowIndex = 0
                    DataBinding.FieldName = 'FBalanceCheck'
                  end
                  object FBalanceCheckDate: TcxGridDBBandedColumn
                    Caption = #26657#23545#26085#26399
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 58
                    Position.BandIndex = 3
                    Position.ColIndex = 7
                    Position.RowIndex = 0
                    DataBinding.FieldName = 'FBalanceCheckDate'
                  end
                  object FBalanceAudit: TcxGridDBBandedColumn
                    Caption = #23457#26680
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 41
                    Position.BandIndex = 3
                    Position.ColIndex = 8
                    Position.RowIndex = 0
                    DataBinding.FieldName = 'FBalanceAudit'
                  end
                  object FBalanceAuditDate: TcxGridDBBandedColumn
                    Caption = #23457#26680#26085#26399
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 51
                    Position.BandIndex = 3
                    Position.ColIndex = 9
                    Position.RowIndex = 0
                    DataBinding.FieldName = 'FBalanceAuditDate'
                  end
                  object FInvoiceDate_Item: TcxGridDBBandedColumn
                    Caption = #26680#38144#26085#26399
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 86
                    Position.BandIndex = 2
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                    DataBinding.FieldName = 'FInvoiceDate'
                  end
                  object FInvoice_Item: TcxGridDBBandedColumn
                    Caption = #26680#38144
                    PropertiesClassName = 'TcxButtonEditProperties'
                    Properties.Buttons = <
                      item
                        Default = True
                        Kind = bkEllipsis
                      end>
                    Properties.OnButtonClick = FInvoice_ItemPropertiesButtonClick
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 80
                    Position.BandIndex = 2
                    Position.ColIndex = 1
                    Position.RowIndex = 0
                    DataBinding.FieldName = 'FInvoice'
                  end
                  object FWorkInvoiceAmount_Item: TcxGridDBBandedColumn
                    Caption = #26680#38144#37329#39069
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.DisplayFormat = ',0.00;-,0.00'
                    Properties.ValidateOnEnter = True
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 100
                    Position.BandIndex = 2
                    Position.ColIndex = 2
                    Position.RowIndex = 0
                  end
                end
                object cxGL_Item: TcxGridLevel
                  GridView = cxGV_Item
                end
              end
            end
          end
          object TS_Edit: TRzTabSheet
            Color = 14935011
            Caption = #21345#29255
            object Panel_Edit1: TPanel
              Left = 0
              Top = 0
              Width = 1127
              Height = 689
              Align = alClient
              BevelOuter = bvNone
              Color = 16775664
              TabOrder = 0
              OnConstrainedResize = Panel_Edit1ConstrainedResize
              OnDblClick = FlatPanel5DblClick
              object Panel_Edit: TFlatPanel
                Left = 0
                Top = 0
                Width = 1127
                Height = 148
                Caption = #30005#25511#20107#19994#37096#21512#21516#35780#23457#34920
                ParentColor = True
                Align = alTop
                TabOrder = 0
                UseDockManager = True
                object Panel_List: TFlatPanel
                  Left = 1
                  Top = 1
                  Width = 1162
                  Height = 149
                  Caption = #34920#22836
                  ParentColor = True
                  TabOrder = 0
                  UseDockManager = True
                  OnDblClick = FlatPanel5DblClick
                  object FlatPanel1: TFlatPanel
                    Left = 272
                    Top = 39
                    Width = 94
                    Height = 37
                    Caption = #32467#31639#26085#26399
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -15
                    Font.Name = #23435#20307
                    Font.Style = []
                    ParentColor = True
                    TabOrder = 0
                    UseDockManager = True
                    OnDblClick = FlatPanel5DblClick
                  end
                  object E_FBalanceDate: TcxDBDateEdit
                    Left = 363
                    Top = 38
                    Width = 137
                    Height = 40
                    AutoSize = False
                    DataBinding.DataField = 'FBalanceDate'
                    DataBinding.DataSource = DS_Mdata
                    Enabled = False
                    ParentFont = False
                    Properties.Alignment.Horz = taCenter
                    Properties.Alignment.Vert = taVCenter
                    Properties.ButtonGlyph.Data = {
                      86010000424D86010000000000003600000028000000070000000E0000000100
                      18000000000050010000C40E0000C40E00000000000000000000BE9320BE9320
                      BE9320BE9320BE9320BE9320BE9320000000BE9320BE93200000FF0000FF0000
                      FFBE9320BE9320000000BE9320BE93200000FF0000FF0000FFBE9320BE932000
                      0000BE9320BE93200000FF0000FF0000FFBE9320BE9320000000BE9320BE9320
                      BE9320BE9320BE9320BE9320BE9320000000BE9320BE93200000FF0000FF0000
                      FFBE9320BE9320000000BE9320BE93200000FF0000FF0000FFBE9320BE932000
                      0000BE9320BE93200000FF0000FF0000FFBE9320BE9320000000BE9320BE9320
                      0000FF0000FF0000FFBE9320BE9320000000BE9320BE93200000FF0000FF0000
                      FFBE9320BE9320000000BE9320BE93200000FF0000FF0000FFBE9320BE932000
                      0000BE9320BE93200000FF0000FF0000FFBE9320BE9320000000BE9320BE9320
                      0000FF0000FF0000FFBE9320BE9320000000BE9320BE9320BE9320BE9320BE93
                      20BE9320BE9320000000}
                    Style.ButtonTransparency = ebtInactive
                    TabOrder = 1
                    OnExit = E_FBalanceDateExit
                  end
                  object FlatPanel3: TFlatPanel
                    Left = 497
                    Top = 39
                    Width = 94
                    Height = 37
                    Caption = #32467#31639#37329#39069
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -15
                    Font.Name = #23435#20307
                    Font.Style = []
                    ParentColor = True
                    TabOrder = 2
                    UseDockManager = True
                    OnDblClick = FlatPanel5DblClick
                  end
                  object E_FWorkBudgetItemAmount: TcxDBCurrencyEdit
                    Left = 588
                    Top = 38
                    Width = 126
                    Height = 40
                    AutoSize = False
                    DataBinding.DataSource = DS_Mdata
                    Enabled = False
                    ParentFont = False
                    Properties.Alignment.Horz = taRightJustify
                    Properties.Alignment.Vert = taVCenter
                    Properties.DecimalPlaces = 6
                    Properties.DisplayFormat = ',0.00;-,0.00'
                    Properties.ValidateOnEnter = True
                    TabOrder = 3
                  end
                  object FlatPanel2: TFlatPanel
                    Left = 1
                    Top = 39
                    Width = 94
                    Height = 37
                    Caption = #32467#31639#21333#21495
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -15
                    Font.Name = #23435#20307
                    Font.Style = []
                    ParentColor = True
                    TabOrder = 4
                    UseDockManager = True
                    OnDblClick = FlatPanel5DblClick
                  end
                  object E_FBalanceNum: TcxDBButtonEdit
                    Left = 92
                    Top = 38
                    Width = 126
                    Height = 40
                    AutoSize = False
                    DataBinding.DataField = 'FBalanceNum'
                    DataBinding.DataSource = DS_Mdata
                    Enabled = False
                    Properties.Alignment.Horz = taCenter
                    Properties.Alignment.Vert = taVCenter
                    Properties.Buttons = <
                      item
                        Default = True
                        Glyph.Data = {
                          86010000424D86010000000000003600000028000000070000000E0000000100
                          18000000000050010000C40E0000C40E00000000000000000000BE9320BE9320
                          BE9320BE9320BE9320BE9320BE9320000000BE9320BE93200000FF0000FF0000
                          FFBE9320BE9320000000BE9320BE93200000FF0000FF0000FFBE9320BE932000
                          0000BE9320BE93200000FF0000FF0000FFBE9320BE9320000000BE9320BE9320
                          BE9320BE9320BE9320BE9320BE9320000000BE9320BE93200000FF0000FF0000
                          FFBE9320BE9320000000BE9320BE93200000FF0000FF0000FFBE9320BE932000
                          0000BE9320BE93200000FF0000FF0000FFBE9320BE9320000000BE9320BE9320
                          0000FF0000FF0000FFBE9320BE9320000000BE9320BE93200000FF0000FF0000
                          FFBE9320BE9320000000BE9320BE93200000FF0000FF0000FFBE9320BE932000
                          0000BE9320BE93200000FF0000FF0000FFBE9320BE9320000000BE9320BE9320
                          0000FF0000FF0000FFBE9320BE9320000000BE9320BE9320BE9320BE9320BE93
                          20BE9320BE9320000000}
                        Kind = bkGlyph
                      end>
                    Style.Shadow = False
                    Style.ButtonTransparency = ebtInactive
                    TabOrder = 5
                  end
                  object FlatPanel4: TFlatPanel
                    Left = 1
                    Top = 1
                    Width = 1160
                    Height = 40
                    Caption = #22806#21327#29983#20135#32467#31639#26126#32454#34920
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -18
                    Font.Name = #23435#20307
                    Font.Style = []
                    ParentColor = True
                    Align = alTop
                    TabOrder = 6
                    UseDockManager = True
                    OnDblClick = FlatPanel5DblClick
                  end
                  object E_FBalanceNo: TcxDBCurrencyEdit
                    Left = 214
                    Top = 38
                    Width = 60
                    Height = 40
                    AutoSize = False
                    DataBinding.DataField = 'FBalanceNo'
                    DataBinding.DataSource = DS_Mdata
                    Enabled = False
                    ParentFont = False
                    Properties.Alignment.Horz = taCenter
                    Properties.Alignment.Vert = taVCenter
                    Properties.DecimalPlaces = 6
                    Properties.ValidateOnEnter = True
                    Properties.IsDisplayFormatAssigned = True
                    TabOrder = 7
                  end
                  object FlatPanel6: TFlatPanel
                    Left = 1
                    Top = 111
                    Width = 94
                    Height = 37
                    Caption = #29983#20135#21333#20301
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -15
                    Font.Name = #23435#20307
                    Font.Style = []
                    ParentColor = True
                    TabOrder = 8
                    UseDockManager = True
                    OnDblClick = FlatPanel5DblClick
                  end
                  object E_FAgentName: TcxDBButtonEdit
                    Left = 92
                    Top = 110
                    Width = 622
                    Height = 39
                    AutoSize = False
                    DataBinding.DataField = 'FAgentName'
                    DataBinding.DataSource = DS_Mdata
                    Enabled = False
                    Properties.Alignment.Horz = taLeftJustify
                    Properties.Alignment.Vert = taVCenter
                    Properties.Buttons = <
                      item
                        Default = True
                        Glyph.Data = {
                          86010000424D86010000000000003600000028000000070000000E0000000100
                          18000000000050010000C40E0000C40E00000000000000000000BE9320BE9320
                          BE9320BE9320BE9320BE9320BE9320000000BE9320BE93200000FF0000FF0000
                          FFBE9320BE9320000000BE9320BE93200000FF0000FF0000FFBE9320BE932000
                          0000BE9320BE93200000FF0000FF0000FFBE9320BE9320000000BE9320BE9320
                          BE9320BE9320BE9320BE9320BE9320000000BE9320BE93200000FF0000FF0000
                          FFBE9320BE9320000000BE9320BE93200000FF0000FF0000FFBE9320BE932000
                          0000BE9320BE93200000FF0000FF0000FFBE9320BE9320000000BE9320BE9320
                          0000FF0000FF0000FFBE9320BE9320000000BE9320BE93200000FF0000FF0000
                          FFBE9320BE9320000000BE9320BE93200000FF0000FF0000FFBE9320BE932000
                          0000BE9320BE93200000FF0000FF0000FFBE9320BE9320000000BE9320BE9320
                          0000FF0000FF0000FFBE9320BE9320000000BE9320BE9320BE9320BE9320BE93
                          20BE9320BE9320000000}
                        Kind = bkGlyph
                      end>
                    Properties.OnButtonClick = E_FAgentNamePropertiesButtonClick
                    Style.Shadow = False
                    Style.ButtonTransparency = ebtInactive
                    TabOrder = 9
                  end
                  object FlatPanel8: TFlatPanel
                    Left = 1
                    Top = 75
                    Width = 94
                    Height = 37
                    Caption = #39033#30446#21517#31216
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -15
                    Font.Name = #23435#20307
                    Font.Style = []
                    ParentColor = True
                    TabOrder = 10
                    UseDockManager = True
                    OnDblClick = FlatPanel5DblClick
                  end
                  object E_FClientShortName: TcxDBButtonEdit
                    Left = 92
                    Top = 74
                    Width = 622
                    Height = 39
                    AutoSize = False
                    DataBinding.DataField = 'FClientShortName'
                    DataBinding.DataSource = DS_Mdata
                    Enabled = False
                    Properties.Alignment.Horz = taLeftJustify
                    Properties.Alignment.Vert = taVCenter
                    Properties.Buttons = <
                      item
                        Default = True
                        Glyph.Data = {
                          86010000424D86010000000000003600000028000000070000000E0000000100
                          18000000000050010000C40E0000C40E00000000000000000000BE9320BE9320
                          BE9320BE9320BE9320BE9320BE9320000000BE9320BE93200000FF0000FF0000
                          FFBE9320BE9320000000BE9320BE93200000FF0000FF0000FFBE9320BE932000
                          0000BE9320BE93200000FF0000FF0000FFBE9320BE9320000000BE9320BE9320
                          BE9320BE9320BE9320BE9320BE9320000000BE9320BE93200000FF0000FF0000
                          FFBE9320BE9320000000BE9320BE93200000FF0000FF0000FFBE9320BE932000
                          0000BE9320BE93200000FF0000FF0000FFBE9320BE9320000000BE9320BE9320
                          0000FF0000FF0000FFBE9320BE9320000000BE9320BE93200000FF0000FF0000
                          FFBE9320BE9320000000BE9320BE93200000FF0000FF0000FFBE9320BE932000
                          0000BE9320BE93200000FF0000FF0000FFBE9320BE9320000000BE9320BE9320
                          0000FF0000FF0000FFBE9320BE9320000000BE9320BE9320BE9320BE9320BE93
                          20BE9320BE9320000000}
                        Kind = bkGlyph
                      end>
                    Properties.OnButtonClick = E_FClientShortNamePropertiesButtonClick
                    Style.Shadow = False
                    Style.ButtonTransparency = ebtInactive
                    TabOrder = 11
                    OnExit = E_FClientShortNameExit
                    OnKeyDown = E_FClientShortNameKeyDown
                  end
                  object E_FBranchFileNo: TcxDBButtonEdit
                    Left = 802
                    Top = 38
                    Width = 126
                    Height = 40
                    AutoSize = False
                    DataBinding.DataField = 'FBranchFileNo'
                    DataBinding.DataSource = DS_Mdata
                    Enabled = False
                    Properties.Alignment.Horz = taCenter
                    Properties.Alignment.Vert = taVCenter
                    Properties.Buttons = <
                      item
                        Default = True
                        Kind = bkEllipsis
                      end>
                    Style.Shadow = False
                    Style.ButtonTransparency = ebtHideUnselected
                    TabOrder = 12
                  end
                  object E_FBranchItemNumber: TcxDBButtonEdit
                    Left = 802
                    Top = 74
                    Width = 126
                    Height = 39
                    AutoSize = False
                    DataBinding.DataField = 'FBranchItemNumber'
                    DataBinding.DataSource = DS_Mdata
                    Enabled = False
                    Properties.Alignment.Horz = taCenter
                    Properties.Alignment.Vert = taVCenter
                    Properties.Buttons = <
                      item
                        Default = True
                        Kind = bkEllipsis
                      end>
                    Style.Shadow = False
                    Style.ButtonTransparency = ebtHideUnselected
                    TabOrder = 13
                  end
                  object FlatPanel9: TFlatPanel
                    Left = 711
                    Top = 75
                    Width = 94
                    Height = 37
                    Caption = #22270'    '#21495
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -15
                    Font.Name = #23435#20307
                    Font.Style = []
                    ParentColor = True
                    TabOrder = 14
                    UseDockManager = True
                    OnDblClick = FlatPanel5DblClick
                  end
                  object FlatPanel5: TFlatPanel
                    Left = 711
                    Top = 39
                    Width = 94
                    Height = 37
                    Caption = #26723' '#26696' '#21495
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -15
                    Font.Name = #23435#20307
                    Font.Style = []
                    ParentColor = True
                    TabOrder = 15
                    UseDockManager = True
                    OnDblClick = FlatPanel5DblClick
                  end
                  object FlatPanel10: TFlatPanel
                    Left = 711
                    Top = 111
                    Width = 94
                    Height = 37
                    Caption = #31246'    '#29575
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -15
                    Font.Name = #23435#20307
                    Font.Style = []
                    ParentColor = True
                    TabOrder = 16
                    UseDockManager = True
                    OnDblClick = FlatPanel5DblClick
                  end
                  object FlatPanel11: TFlatPanel
                    Left = 926
                    Top = 39
                    Width = 93
                    Height = 37
                    Caption = #26680#38144#26631#35782
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -15
                    Font.Name = #23435#20307
                    Font.Style = []
                    ParentColor = True
                    TabOrder = 17
                    UseDockManager = True
                    OnDblClick = FlatPanel5DblClick
                  end
                  object FlatPanel12: TFlatPanel
                    Left = 926
                    Top = 75
                    Width = 93
                    Height = 37
                    Caption = #26680#38144#26085#26399
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -15
                    Font.Name = #23435#20307
                    Font.Style = []
                    ParentColor = True
                    TabOrder = 18
                    UseDockManager = True
                    OnDblClick = FlatPanel5DblClick
                  end
                  object E_FInvoiceDate: TcxDBDateEdit
                    Left = 1017
                    Top = 74
                    Width = 125
                    Height = 39
                    AutoSize = False
                    DataBinding.DataField = 'FInvoiceDate'
                    DataBinding.DataSource = DS_Mdata
                    Enabled = False
                    ParentFont = False
                    Properties.Alignment.Horz = taCenter
                    Properties.Alignment.Vert = taVCenter
                    Properties.ButtonGlyph.Data = {
                      36030000424D3603000000000000360000002800000010000000100000000100
                      18000000000000030000C40E0000C40E00000000000000000000FFFFFFEFEFEF
                      A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5
                      A5A5A5A5BBBCBBFDFDF8FFFFFF9999994445444B4B4B4B4B4B4B4B4B4B4B4B4B
                      4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B525352444544B5B6B5FFFFFFC4C5C4
                      FDFDF8F7F7F7FFFFFFFFFFFFF7F7F7FFFFFFF7F7F7FFFFFFF7F7F7FFFFFFEFEF
                      EFFFFFFF8D8D8D8D8D8DFFFFFFB5B6B5E1E3E1E1E3E1E6E6E6E6E6E6E1E3E1E6
                      E6E6E6E6E6E6E6E6E6E6E6EFEFEFDDDEDDF7F7F78585858F928FFFFFFFB5B6B5
                      D6D6D6D9DAD8DDDEDDDDDEDDD9DAD8DDDEDDD9DAD8DDDEDDD6D6D6E1E3E1D6D6
                      D6F7F7F78585858F928FFFFFFFB5B6B5EFEFEFEFEFEFF7F7F7F7F7F7EFEFEFF7
                      F7F7EFEFEFF7F7F7E6E6E6FFFFFFE1E3E1FFFFFF8585858F928FFFFFFFB5B6B5
                      CCCCCCD6D6D6D9DAD8D9DAD8D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6DDDEDDD6D7
                      D1EFEFEF8585858F928FFFFFFFBBBCBBE6E6E6E6E6E6EFEFEFEFEFEFE6E6E6EF
                      EFEFE6E6E6EFEFEFE6E6E6F7F7F7E1E3E1FDFDF88585858F928FFFFFFFB5B6B5
                      DDDEDDDDDEDDE6E6E6E6E6E6E1E3E1E1E3E1E1E3E1EFF0E8C1C1D3AAAAD5D9DA
                      D8FFFFFF8585858F928FFFFFFFB5B6B5D6D6D6DDDEDDDDDEDDDDDEDDDDDEDDDD
                      DEDDE3E4DEC5C5D66A6BAE7676B68181B6FDFDF88585858F928FFFFFFFBBBCBB
                      EFEFEFEFEFEFF7F7F7F7F7F7EFEFEFF7F7F7F7F7EFB3B3DA7C7CBCD7D7E66465
                      B5FFFFFF8585858F928FFFFFFFB5B6B5C4C5C4CCCCCCCCCCCCCCCCCCCCCCCCCC
                      CCCCD6D6D6DDDEDD8181B65B5BA9ADAFC3FFFFFF8585858F928FFFFFFFB5B6B5
                      B5B6B5CCCCCCCCCCCCCCCCCCCCCCCCC4C5C4F7F7F7FDFDF8EFEFEFE6E6FAF7F7
                      EFFFFFFF8D8D8D8D8D8DFFFFFFB5B6B5A2AEACAEBCBAAEBCBAAEBCBAAEBCBAAB
                      B8B6CCCCCCC4C5C4C4C5C4D6D7D1BDC5BDD9DAD8747574999999FFFFFFB5B6B5
                      7819188117178117178117178117178117177E59587E8A887D7F7D7D7F7D7D7F
                      7D8F928F525352999999FFFFFFB5B6B57A3C3B823A39823A39823A39823A3982
                      3A39816A688189867D7F7D7D7F7D7D7F7D8F928F525352999999}
                    Style.ButtonTransparency = ebtHideUnselected
                    TabOrder = 19
                  end
                  object E_FInvoice: TcxDBButtonEdit
                    Left = 1017
                    Top = 38
                    Width = 125
                    Height = 40
                    AutoSize = False
                    DataBinding.DataField = 'FInvoice'
                    DataBinding.DataSource = DS_Mdata
                    Enabled = False
                    Properties.Alignment.Horz = taCenter
                    Properties.Alignment.Vert = taVCenter
                    Properties.Buttons = <
                      item
                        Default = True
                        Kind = bkEllipsis
                      end>
                    Properties.OnButtonClick = E_FInvoicePropertiesButtonClick
                    Style.Shadow = False
                    Style.ButtonTransparency = ebtHideUnselected
                    TabOrder = 20
                  end
                  object E_FTaxRate: TcxDBCurrencyEdit
                    Left = 802
                    Top = 110
                    Width = 126
                    Height = 39
                    AutoSize = False
                    DataBinding.DataField = 'FTaxRate'
                    DataBinding.DataSource = DS_Mdata
                    Enabled = False
                    ParentFont = False
                    Properties.Alignment.Horz = taCenter
                    Properties.Alignment.Vert = taVCenter
                    Properties.DecimalPlaces = 6
                    Properties.ValidateOnEnter = True
                    Properties.IsDisplayFormatAssigned = True
                    TabOrder = 21
                  end
                  object FlatPanel13: TFlatPanel
                    Left = 926
                    Top = 111
                    Width = 93
                    Height = 37
                    Caption = #26680#38144#37329#39069
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -15
                    Font.Name = #23435#20307
                    Font.Style = []
                    ParentColor = True
                    TabOrder = 22
                    UseDockManager = True
                    OnDblClick = FlatPanel5DblClick
                  end
                  object E_FInvoiceAmount: TcxDBCurrencyEdit
                    Left = 1017
                    Top = 110
                    Width = 125
                    Height = 39
                    AutoSize = False
                    DataBinding.DataSource = DS_Mdata
                    Enabled = False
                    ParentFont = False
                    Properties.Alignment.Horz = taRightJustify
                    Properties.Alignment.Vert = taVCenter
                    Properties.DecimalPlaces = 6
                    Properties.DisplayFormat = ',0.00;-,0.00'
                    Properties.ValidateOnEnter = True
                    TabOrder = 23
                  end
                end
              end
              object Panel_OK: TPanel
                Left = 0
                Top = 619
                Width = 1127
                Height = 70
                Align = alBottom
                BevelOuter = bvNone
                ParentColor = True
                TabOrder = 1
                Visible = False
                object Panel_Button: TPanel
                  Left = 261
                  Top = 10
                  Width = 256
                  Height = 50
                  BevelOuter = bvNone
                  ParentColor = True
                  TabOrder = 0
                  object OKBtn: TcxButton
                    Left = 21
                    Top = 2
                    Width = 98
                    Height = 31
                    BiDiMode = bdRightToLeftReadingOnly
                    Caption = #20445#23384'[&S]'
                    ParentBiDiMode = False
                    TabOrder = 0
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
                    Left = 129
                    Top = 2
                    Width = 99
                    Height = 31
                    BiDiMode = bdRightToLeftReadingOnly
                    Caption = #21462#28040'[&C]'
                    ParentBiDiMode = False
                    TabOrder = 1
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
              object FlatPanel7: TFlatPanel
                Left = 0
                Top = 148
                Width = 1127
                Height = 471
                ParentColor = True
                Align = alClient
                TabOrder = 2
                UseDockManager = True
                object RzSP_PTitem: TRzSizePanel
                  Left = 1
                  Top = 1
                  Width = 1125
                  Height = 469
                  Align = alClient
                  HotSpotVisible = True
                  Side = sdBottom
                  ParentShowHint = False
                  ShowHint = False
                  SizeBarWidth = 7
                  TabOrder = 0
                  UseDockManager = False
                  object Page_List: TPageControl
                    Left = 0
                    Top = 0
                    Width = 1125
                    Height = 469
                    ActivePage = TS_WorkBalance
                    Align = alClient
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -15
                    Font.Name = 'Times New Roman'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                    object TS_WorkBalance: TTabSheet
                      Caption = #32467#31639#26126#32454
                      ImageIndex = 1
                      object cxGrid: TcxGrid
                        Left = 0
                        Top = 0
                        Width = 1113
                        Height = 427
                        Align = alClient
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -15
                        Font.Name = 'Times New Roman'
                        Font.Style = []
                        ParentFont = False
                        PopupMenu = PM_Band
                        TabOrder = 0
                        OnContextPopup = cxGridContextPopup
                        LookAndFeel.Kind = lfUltraFlat
                        LookAndFeel.NativeStyle = True
                        object cxGV: TcxGridDBBandedTableView
                          DataController.DataSource = DS_Mdata_List
                          DataController.Summary.DefaultGroupSummaryItems = <>
                          DataController.Summary.FooterSummaryItems = <
                            item
                              Format = ',0.00;-,0.00'
                              Kind = skSum
                              FieldName = 'FEstimateAmount'
                              Column = FEstimateAmount
                            end
                            item
                              Format = ',0.00;-,0.00'
                              Kind = skSum
                              FieldName = 'FBalanceAmount'
                              Column = FBalanceAmount
                            end
                            item
                              Format = ',0.00;-,0.00'
                              Kind = skSum
                              FieldName = 'FQualityAmount'
                              Column = FQualityAmount
                            end
                            item
                              Format = ',0.00;-,0.00'
                              Kind = skSum
                              FieldName = 'FRealAmount'
                              Column = FRealAmount
                            end
                            item
                              Format = ',0.00;-,0.00'
                              Kind = skSum
                              FieldName = 'FBalanceTaxAmount'
                              Column = FBalanceTaxAmount
                            end
                            item
                              Kind = skSum
                              FieldName = 'FEstimateQry'
                              Column = FEstimateQry
                            end
                            item
                              Kind = skSum
                              FieldName = 'FBalanceQry'
                              Column = FBalanceQry
                            end>
                          DataController.Summary.SummaryGroups = <>
                          NavigatorButtons.ConfirmDelete = False
                          NavigatorButtons.PriorPage.Visible = False
                          NavigatorButtons.Prior.Visible = True
                          NavigatorButtons.NextPage.Visible = False
                          NavigatorButtons.Edit.Visible = False
                          NavigatorButtons.Post.Visible = True
                          NavigatorButtons.Cancel.Visible = False
                          NavigatorButtons.Refresh.Visible = True
                          NavigatorButtons.SaveBookmark.Visible = False
                          NavigatorButtons.GotoBookmark.Visible = False
                          NavigatorButtons.Filter.Visible = False
                          OptionsView.Navigator = True
                          OptionsView.CellAutoHeight = True
                          OptionsView.Footer = True
                          OptionsView.GroupByBox = False
                          Bands = <
                            item
                              Caption = #37096#20214#20449#24687
                              FixedKind = fkLeft
                              Width = 351
                            end
                            item
                              Caption = #32467#31639#21333#20449#24687
                              Width = 1399
                            end
                            item
                              Caption = #20854#20182#20449#24687
                            end>
                          object FBalanceListNum: TcxGridDBBandedColumn
                            Tag = 385154936
                            Caption = #24207#21495
                            PropertiesClassName = 'TcxButtonEditProperties'
                            Properties.Alignment.Horz = taCenter
                            Properties.Alignment.Vert = taVCenter
                            Properties.Buttons = <
                              item
                                Default = True
                                Kind = bkEllipsis
                              end>
                            Properties.MaxLength = 0
                            OnGetDisplayText = XHGetDisplayText
                            FooterAlignmentHorz = taCenter
                            HeaderAlignmentHorz = taCenter
                            HeaderGlyphAlignmentHorz = taCenter
                            Options.Editing = False
                            Options.Filtering = False
                            Options.Sorting = False
                            Width = 32
                            Position.BandIndex = 0
                            Position.ColIndex = 0
                            Position.RowIndex = 0
                            DataBinding.FieldName = 'FBalanceListNum'
                          end
                          object FWorkItemNum_Item: TcxGridDBBandedColumn
                            Tag = 303591680
                            Caption = #20219#21153#21333#21495
                            FooterAlignmentHorz = taCenter
                            HeaderAlignmentHorz = taCenter
                            HeaderGlyphAlignmentHorz = taCenter
                            Options.Editing = False
                            Options.Filtering = False
                            Options.Sorting = False
                            Width = 76
                            Position.BandIndex = 0
                            Position.ColIndex = 1
                            Position.RowIndex = 0
                            DataBinding.FieldName = 'FWorkItemNum'
                          end
                          object FBalanceFullName: TcxGridDBBandedColumn
                            Tag = 303269376
                            Caption = #32467#31639#37096#20214#20840#31216
                            FooterAlignmentHorz = taCenter
                            HeaderAlignmentHorz = taCenter
                            HeaderGlyphAlignmentHorz = taCenter
                            Options.Editing = False
                            Options.Filtering = False
                            Options.Sorting = False
                            Width = 208
                            Position.BandIndex = 0
                            Position.ColIndex = 2
                            Position.RowIndex = 0
                            DataBinding.FieldName = 'FBalanceFullName'
                          end
                          object FUnitName: TcxGridDBBandedColumn
                            Tag = 303933020
                            Caption = #21333#20301
                            FooterAlignmentHorz = taCenter
                            HeaderAlignmentHorz = taCenter
                            HeaderGlyphAlignmentHorz = taCenter
                            Options.Editing = False
                            Options.Filtering = False
                            Options.Sorting = False
                            Width = 35
                            Position.BandIndex = 0
                            Position.ColIndex = 3
                            Position.RowIndex = 0
                            DataBinding.FieldName = 'FUnitName'
                          end
                          object FMaterialDate: TcxGridDBBandedColumn
                            Tag = 385233660
                            Caption = #25191#34892#21333#20215
                            FooterAlignmentHorz = taCenter
                            HeaderAlignmentHorz = taCenter
                            HeaderGlyphAlignmentHorz = taCenter
                            Options.Editing = False
                            Options.Filtering = False
                            Options.Sorting = False
                            Width = 95
                            Position.BandIndex = 1
                            Position.ColIndex = 0
                            Position.RowIndex = 0
                            DataBinding.FieldName = 'FMaterialDate'
                          end
                          object FEstimateQry: TcxGridDBBandedColumn
                            Tag = 385198252
                            Caption = #39044#20272#25968#37327
                            PropertiesClassName = 'TcxCurrencyEditProperties'
                            Properties.DecimalPlaces = 4
                            Properties.ValidateOnEnter = True
                            Properties.IsDisplayFormatAssigned = True
                            FooterAlignmentHorz = taCenter
                            HeaderAlignmentHorz = taCenter
                            HeaderGlyphAlignmentHorz = taCenter
                            Options.Editing = False
                            Options.Filtering = False
                            Options.Sorting = False
                            Width = 88
                            Position.BandIndex = 1
                            Position.ColIndex = 1
                            Position.RowIndex = 0
                            DataBinding.FieldName = 'FEstimateQry'
                          end
                          object FEstimateAmount: TcxGridDBBandedColumn
                            Tag = 385196536
                            Caption = #39044#20272#37329#39069
                            PropertiesClassName = 'TcxCurrencyEditProperties'
                            Properties.DisplayFormat = ',0.00;-,0.00'
                            Properties.ValidateOnEnter = True
                            FooterAlignmentHorz = taCenter
                            HeaderAlignmentHorz = taCenter
                            HeaderGlyphAlignmentHorz = taCenter
                            Options.Editing = False
                            Options.Filtering = False
                            Options.Sorting = False
                            Width = 98
                            Position.BandIndex = 1
                            Position.ColIndex = 2
                            Position.RowIndex = 0
                            DataBinding.FieldName = 'FEstimateAmount'
                          end
                          object FWorkItemPrice: TcxGridDBBandedColumn
                            Tag = 384775288
                            Caption = #20219#21153#21333#20215
                            PropertiesClassName = 'TcxCurrencyEditProperties'
                            Properties.DecimalPlaces = 6
                            Properties.ValidateOnEnter = True
                            Properties.IsDisplayFormatAssigned = True
                            FooterAlignmentHorz = taCenter
                            HeaderAlignmentHorz = taCenter
                            HeaderGlyphAlignmentHorz = taCenter
                            Options.Editing = False
                            Options.Filtering = False
                            Options.Sorting = False
                            Width = 88
                            Position.BandIndex = 1
                            Position.ColIndex = 3
                            Position.RowIndex = 0
                            DataBinding.FieldName = 'FWorkItemPrice'
                          end
                          object FBalanceWorkAdjust: TcxGridDBBandedColumn
                            Tag = 399917804
                            Caption = #24037#31649#35843#25972#20215
                            PropertiesClassName = 'TcxCurrencyEditProperties'
                            Properties.DecimalPlaces = 6
                            Properties.ValidateOnEnter = True
                            Properties.IsDisplayFormatAssigned = True
                            FooterAlignmentHorz = taCenter
                            HeaderAlignmentHorz = taCenter
                            HeaderGlyphAlignmentHorz = taCenter
                            Options.Filtering = False
                            Options.Sorting = False
                            Width = 89
                            Position.BandIndex = 1
                            Position.ColIndex = 4
                            Position.RowIndex = 0
                            DataBinding.FieldName = 'FBalanceWorkAdjust'
                          end
                          object FBalanceAdjust: TcxGridDBBandedColumn
                            Tag = 385572504
                            Caption = #20854#20182#35843#25972#20215
                            PropertiesClassName = 'TcxCurrencyEditProperties'
                            Properties.DecimalPlaces = 6
                            Properties.ValidateOnEnter = True
                            Properties.IsDisplayFormatAssigned = True
                            FooterAlignmentHorz = taCenter
                            HeaderAlignmentHorz = taCenter
                            HeaderGlyphAlignmentHorz = taCenter
                            Options.Filtering = False
                            Options.Sorting = False
                            Width = 90
                            Position.BandIndex = 1
                            Position.ColIndex = 5
                            Position.RowIndex = 0
                            DataBinding.FieldName = 'FBalanceAdjust'
                          end
                          object FBalancePrice: TcxGridDBBandedColumn
                            Tag = 303271032
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
                            Options.Sorting = False
                            Width = 86
                            Position.BandIndex = 1
                            Position.ColIndex = 6
                            Position.RowIndex = 0
                            DataBinding.FieldName = 'FBalancePrice'
                          end
                          object FBalanceQry: TcxGridDBBandedColumn
                            Tag = 385374920
                            Caption = #32467#31639#25968#37327
                            PropertiesClassName = 'TcxCurrencyEditProperties'
                            Properties.DecimalPlaces = 4
                            Properties.ValidateOnEnter = True
                            Properties.IsDisplayFormatAssigned = True
                            FooterAlignmentHorz = taCenter
                            HeaderAlignmentHorz = taCenter
                            HeaderGlyphAlignmentHorz = taCenter
                            Options.Filtering = False
                            Options.Sorting = False
                            Width = 87
                            Position.BandIndex = 1
                            Position.ColIndex = 7
                            Position.RowIndex = 0
                            DataBinding.FieldName = 'FBalanceQry'
                          end
                          object FBalanceAmount: TcxGridDBBandedColumn
                            Tag = 384830916
                            Caption = #32467#31639#37329#39069
                            PropertiesClassName = 'TcxCurrencyEditProperties'
                            Properties.DisplayFormat = ',0.00;-,0.00'
                            Properties.ValidateOnEnter = True
                            FooterAlignmentHorz = taCenter
                            HeaderAlignmentHorz = taCenter
                            HeaderGlyphAlignmentHorz = taCenter
                            Options.Editing = False
                            Options.Filtering = False
                            Options.Sorting = False
                            Width = 89
                            Position.BandIndex = 1
                            Position.ColIndex = 8
                            Position.RowIndex = 0
                            DataBinding.FieldName = 'FBalanceAmount'
                          end
                          object FBalanceRemark: TcxGridDBBandedColumn
                            Tag = 129574132
                            Caption = #32467#31639#22791#27880
                            FooterAlignmentHorz = taCenter
                            HeaderAlignmentHorz = taCenter
                            HeaderGlyphAlignmentHorz = taCenter
                            Options.Filtering = False
                            Options.Sorting = False
                            Width = 290
                            Position.BandIndex = 1
                            Position.ColIndex = 9
                            Position.RowIndex = 0
                            DataBinding.FieldName = 'FBalanceRemark'
                          end
                          object FQualityAmount: TcxGridDBBandedColumn
                            Tag = 385389640
                            Caption = #36136#37327#32771#26680
                            PropertiesClassName = 'TcxCurrencyEditProperties'
                            Properties.DisplayFormat = ',0.00;-,0.00'
                            Properties.ValidateOnEnter = True
                            FooterAlignmentHorz = taCenter
                            HeaderAlignmentHorz = taCenter
                            HeaderGlyphAlignmentHorz = taCenter
                            Options.Filtering = False
                            Options.Sorting = False
                            Width = 75
                            Position.BandIndex = 1
                            Position.ColIndex = 10
                            Position.RowIndex = 0
                            DataBinding.FieldName = 'FQualityAmount'
                          end
                          object FRealAmount: TcxGridDBBandedColumn
                            Tag = 399972684
                            Caption = #23454#32467#37329#39069'('#21547#31246')'
                            PropertiesClassName = 'TcxCurrencyEditProperties'
                            Properties.DisplayFormat = ',0.00;-,0.00'
                            Properties.ValidateOnEnter = True
                            FooterAlignmentHorz = taCenter
                            HeaderAlignmentHorz = taCenter
                            HeaderGlyphAlignmentHorz = taCenter
                            Options.Editing = False
                            Options.Filtering = False
                            Options.Sorting = False
                            Width = 116
                            Position.BandIndex = 1
                            Position.ColIndex = 11
                            Position.RowIndex = 0
                            DataBinding.FieldName = 'FRealAmount'
                          end
                          object FBalanceTaxAmount: TcxGridDBBandedColumn
                            Tag = 385543136
                            Caption = #23454#32467#37329#39069'('#19981#21547#31246')'
                            PropertiesClassName = 'TcxCurrencyEditProperties'
                            Properties.DisplayFormat = ',0.00;-,0.00'
                            Properties.ValidateOnEnter = True
                            FooterAlignmentHorz = taCenter
                            HeaderAlignmentHorz = taCenter
                            HeaderGlyphAlignmentHorz = taCenter
                            Options.Editing = False
                            Options.Filtering = False
                            Options.Sorting = False
                            Width = 108
                            Position.BandIndex = 1
                            Position.ColIndex = 12
                            Position.RowIndex = 0
                            DataBinding.FieldName = 'FBalanceTaxAmount'
                          end
                          object FWorkListID_11: TcxGridDBBandedColumn
                            Tag = 385544104
                            FooterAlignmentHorz = taCenter
                            HeaderAlignmentHorz = taCenter
                            HeaderGlyphAlignmentHorz = taCenter
                            Options.Editing = False
                            Options.Filtering = False
                            Options.Sorting = False
                            Width = 105
                            Position.BandIndex = 2
                            Position.ColIndex = 3
                            Position.RowIndex = 0
                            DataBinding.FieldName = 'FWorkListID'
                          end
                          object FBalancePriceID_11: TcxGridDBBandedColumn
                            Tag = 385191620
                            FooterAlignmentHorz = taCenter
                            HeaderAlignmentHorz = taCenter
                            HeaderGlyphAlignmentHorz = taCenter
                            Options.Editing = False
                            Options.Filtering = False
                            Options.Sorting = False
                            Width = 128
                            Position.BandIndex = 2
                            Position.ColIndex = 4
                            Position.RowIndex = 0
                            DataBinding.FieldName = 'FBalancePriceID'
                          end
                          object FNumber: TcxGridDBBandedColumn
                            Tag = 385391496
                            Caption = #32467#31639#37096#20214#32534#30721
                            FooterAlignmentHorz = taCenter
                            HeaderAlignmentHorz = taCenter
                            HeaderGlyphAlignmentHorz = taCenter
                            Options.Editing = False
                            Options.Filtering = False
                            Options.Sorting = False
                            SortOrder = soAscending
                            Width = 94
                            Position.BandIndex = 2
                            Position.ColIndex = 2
                            Position.RowIndex = 0
                            DataBinding.FieldName = 'FNumber'
                          end
                          object FProductClass: TcxGridDBBandedColumn
                            Caption = #20135#21697#31867#21035
                            FooterAlignmentHorz = taCenter
                            HeaderAlignmentHorz = taCenter
                            HeaderGlyphAlignmentHorz = taCenter
                            Options.Editing = False
                            Options.Filtering = False
                            Options.Sorting = False
                            Width = 84
                            Position.BandIndex = 2
                            Position.ColIndex = 1
                            Position.RowIndex = 0
                            DataBinding.FieldName = 'FProductClass'
                          end
                          object FWorkItemNum: TcxGridDBBandedColumn
                            Caption = #20219#21153#21333#21495
                            FooterAlignmentHorz = taCenter
                            HeaderAlignmentHorz = taCenter
                            HeaderGlyphAlignmentHorz = taCenter
                            Options.Editing = False
                            Options.Filtering = False
                            Options.Sorting = False
                            Position.BandIndex = 2
                            Position.ColIndex = 0
                            Position.RowIndex = 0
                            DataBinding.FieldName = 'FWorkItemNum'
                          end
                        end
                        object cxGL: TcxGridLevel
                          GridView = cxGV
                        end
                      end
                    end
                    object TS_WorkList: TTabSheet
                      Caption = #29983#20135#20219#21153#21333
                      ImageIndex = 1
                      object Panel1: TPanel
                        Left = 0
                        Top = 0
                        Width = 1113
                        Height = 47
                        Align = alTop
                        ParentColor = True
                        TabOrder = 0
                        object ToolBar3: TToolBar
                          Left = 1
                          Top = 1
                          Width = 902
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
                          object ToolButton3: TToolButton
                            Left = 0
                            Top = 0
                            AutoSize = True
                            Caption = #36873#25321'[&S]'
                            ImageIndex = 15
                            OnClick = ToolButton2Click
                          end
                          object ToolButton4: TToolButton
                            Left = 53
                            Top = 0
                            Width = 8
                            Caption = 'ToolButton5'
                            ImageIndex = 4
                            Style = tbsSeparator
                          end
                        end
                      end
                      object cxGrid_WorkList: TcxGrid
                        Left = 0
                        Top = 47
                        Width = 1113
                        Height = 380
                        Align = alClient
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -15
                        Font.Name = 'Times New Roman'
                        Font.Style = []
                        ParentFont = False
                        TabOrder = 1
                        object cxGV_WorkList: TcxGridDBTableView
                          OnDblClick = cxGV_WorkListDblClick
                          DataController.DataSource = DS_Mdata_WorkList
                          DataController.Summary.DefaultGroupSummaryItems = <>
                          DataController.Summary.FooterSummaryItems = <
                            item
                              Format = '0.0000;-0.0000'
                              Kind = skSum
                              FieldName = 'FBalanceQry'
                              Column = SumFBalanceQry_WorkList
                            end
                            item
                              Format = ',0.00;-,0.00'
                              Kind = skSum
                              FieldName = 'FAdvanceAmount'
                            end
                            item
                              Format = ',0.00;-,0.00'
                              Kind = skSum
                              FieldName = 'FBalanceAmount'
                              Column = SumFBalanceAmount_WorkList
                            end
                            item
                              Format = ',0.00;-,0.00'
                              Kind = skSum
                              FieldName = 'FQualityAmount'
                            end
                            item
                              Kind = skSum
                              FieldName = 'FEstimateQry'
                              Column = FEstimateQry_WorkList
                            end
                            item
                              Format = ',0.00;-,0.00'
                              Kind = skSum
                              FieldName = 'FEstimateAmount'
                              Column = FEstimateAmount_WorkList
                            end>
                          DataController.Summary.SummaryGroups = <>
                          NavigatorButtons.ConfirmDelete = False
                          NavigatorButtons.PriorPage.Visible = False
                          NavigatorButtons.NextPage.Visible = False
                          NavigatorButtons.Insert.Enabled = False
                          NavigatorButtons.Insert.Visible = True
                          NavigatorButtons.Delete.Enabled = False
                          NavigatorButtons.Delete.Visible = True
                          NavigatorButtons.Edit.Visible = True
                          NavigatorButtons.Post.Visible = True
                          NavigatorButtons.Cancel.Visible = False
                          NavigatorButtons.Refresh.Visible = False
                          NavigatorButtons.SaveBookmark.Visible = False
                          NavigatorButtons.GotoBookmark.Visible = False
                          NavigatorButtons.Filter.Visible = False
                          OnCustomDrawCell = cxGV_WorkListCustomDrawCell
                          OptionsData.CancelOnExit = False
                          OptionsData.DeletingConfirmation = False
                          OptionsData.Editing = False
                          OptionsData.Inserting = False
                          OptionsSelection.MultiSelect = True
                          OptionsView.Navigator = True
                          OptionsView.Footer = True
                          OptionsView.GroupByBox = False
                          object FIsDelList_WorkList: TcxGridDBColumn
                            Caption = #34892#20316#24223
                            PropertiesClassName = 'TcxCheckBoxProperties'
                            Properties.DisplayUnchecked = 'False'
                            FooterAlignmentHorz = taCenter
                            HeaderAlignmentHorz = taCenter
                            HeaderGlyphAlignmentHorz = taCenter
                            Options.Editing = False
                            Options.Filtering = False
                            Options.Sorting = False
                            Width = 42
                            DataBinding.FieldName = 'FIsDelList'
                          end
                          object FWorkListNum_WorkList: TcxGridDBColumn
                            Caption = #24207#21495
                            FooterAlignmentHorz = taCenter
                            HeaderAlignmentHorz = taCenter
                            HeaderGlyphAlignmentHorz = taCenter
                            Options.Editing = False
                            Options.Filtering = False
                            Options.Sorting = False
                            Width = 29
                            DataBinding.FieldName = 'FWorkListNum'
                          end
                          object FBalanceFullName_WorkList: TcxGridDBColumn
                            Caption = #32467#31639#37096#20214#20840#31216
                            FooterAlignmentHorz = taCenter
                            HeaderAlignmentHorz = taCenter
                            HeaderGlyphAlignmentHorz = taCenter
                            Options.Editing = False
                            Options.Filtering = False
                            Width = 162
                            DataBinding.FieldName = 'FBalanceFullName'
                          end
                          object FUnitName_WorkList: TcxGridDBColumn
                            Caption = #21333#20301
                            FooterAlignmentHorz = taCenter
                            HeaderAlignmentHorz = taCenter
                            HeaderGlyphAlignmentHorz = taCenter
                            Options.Editing = False
                            Options.Filtering = False
                            Options.Sorting = False
                            Width = 29
                            DataBinding.FieldName = 'FUnitName'
                          end
                          object FMaterialDate_WorkList: TcxGridDBColumn
                            Caption = #25191#34892#26085#26399
                            FooterAlignmentHorz = taCenter
                            HeaderAlignmentHorz = taCenter
                            HeaderGlyphAlignmentHorz = taCenter
                            Options.Editing = False
                            Options.Filtering = False
                            Options.Sorting = False
                            Width = 91
                            DataBinding.FieldName = 'FMaterialDate'
                          end
                          object FWorkResizePrice_WorkList: TcxGridDBColumn
                            Caption = #24037#31649#35843#25972#22522#20215
                            PropertiesClassName = 'TcxCurrencyEditProperties'
                            Properties.DecimalPlaces = 6
                            Properties.DisplayFormat = ',0.000000;-,0.000000'
                            Properties.ValidateOnEnter = True
                            FooterAlignmentHorz = taCenter
                            HeaderAlignmentHorz = taCenter
                            HeaderGlyphAlignmentHorz = taCenter
                            Options.Editing = False
                            Options.Filtering = False
                            Options.Sorting = False
                            Width = 77
                            DataBinding.FieldName = 'FWorkResizePrice'
                          end
                          object FEstimateQry_WorkList: TcxGridDBColumn
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
                            Options.Filtering = False
                            Options.Sorting = False
                            Width = 65
                            DataBinding.FieldName = 'FEstimateQry'
                          end
                          object FBalanceBasePrice_WorkList: TcxGridDBColumn
                            Caption = #32467#31639#22522#20215
                            PropertiesClassName = 'TcxCurrencyEditProperties'
                            Properties.DecimalPlaces = 5
                            Properties.DisplayFormat = ',0.00000;-,0.00000'
                            Properties.NullString = '0.0000'
                            Properties.ValidateOnEnter = True
                            FooterAlignmentHorz = taCenter
                            HeaderAlignmentHorz = taCenter
                            HeaderGlyphAlignmentHorz = taCenter
                            Options.Editing = False
                            Options.Filtering = False
                            Options.Sorting = False
                            Width = 53
                            DataBinding.FieldName = 'FBalanceBasePrice'
                          end
                          object FWorkOutPrice_WorkList: TcxGridDBColumn
                            Caption = #24037#31649#36148#34917#20215
                            PropertiesClassName = 'TcxCurrencyEditProperties'
                            Properties.DecimalPlaces = 6
                            Properties.DisplayFormat = ',0.000000;-,0.000000'
                            Properties.ValidateOnEnter = True
                            FooterAlignmentHorz = taCenter
                            HeaderAlignmentHorz = taCenter
                            HeaderGlyphAlignmentHorz = taCenter
                            Options.Filtering = False
                            Options.Sorting = False
                            Width = 65
                            DataBinding.FieldName = 'FWorkOutPrice'
                          end
                          object FOutPrice_WorkList: TcxGridDBColumn
                            Caption = #20854#20182#36148#34917
                            PropertiesClassName = 'TcxCurrencyEditProperties'
                            Properties.Alignment.Horz = taRightJustify
                            Properties.Alignment.Vert = taVCenter
                            Properties.DecimalPlaces = 6
                            Properties.DisplayFormat = ',0.000000;-,0.000000'
                            Properties.ValidateOnEnter = True
                            FooterAlignmentHorz = taCenter
                            HeaderAlignmentHorz = taCenter
                            HeaderGlyphAlignmentHorz = taCenter
                            Options.Filtering = False
                            Options.Sorting = False
                            Width = 53
                            DataBinding.FieldName = 'FOutPrice'
                          end
                          object FWorkItemPrice_WorkList: TcxGridDBColumn
                            Caption = #20219#21153#21333#20215
                            PropertiesClassName = 'TcxCurrencyEditProperties'
                            Properties.DecimalPlaces = 6
                            Properties.DisplayFormat = ',0.000000;-,0.000000'
                            Properties.ValidateOnEnter = True
                            FooterAlignmentHorz = taCenter
                            HeaderAlignmentHorz = taCenter
                            HeaderGlyphAlignmentHorz = taCenter
                            Options.Editing = False
                            Options.Filtering = False
                            Options.Sorting = False
                            Width = 64
                            DataBinding.FieldName = 'FWorkItemPrice'
                          end
                          object FEstimateAmount_WorkList: TcxGridDBColumn
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
                            Options.Sorting = False
                            Width = 81
                            DataBinding.FieldName = 'FEstimateAmount'
                          end
                          object FWorkListRemark_WorkList: TcxGridDBColumn
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
                            Options.Sorting = False
                            Width = 114
                            DataBinding.FieldName = 'FWorkListRemark'
                          end
                          object FDeliveryDate_WorkList: TcxGridDBColumn
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
                            Options.Filtering = False
                            Options.Sorting = False
                            Width = 85
                            DataBinding.FieldName = 'FDeliveryDate'
                          end
                          object FBalanceWorkAdjust_WorkList: TcxGridDBColumn
                            Caption = #24037#31649#35843#25972
                            PropertiesClassName = 'TcxCurrencyEditProperties'
                            Properties.DecimalPlaces = 6
                            Properties.DisplayFormat = ',0.000000;-,0.000000'
                            Properties.ValidateOnEnter = True
                            FooterAlignmentHorz = taCenter
                            HeaderAlignmentHorz = taCenter
                            HeaderGlyphAlignmentHorz = taCenter
                            Options.Editing = False
                            Options.Filtering = False
                            Options.Sorting = False
                            Width = 61
                            DataBinding.FieldName = 'FBalanceWorkAdjust'
                          end
                          object FBalanceAdjust_WorkList: TcxGridDBColumn
                            Caption = #35843#25972#21333#20215
                            PropertiesClassName = 'TcxCurrencyEditProperties'
                            Properties.DecimalPlaces = 6
                            Properties.DisplayFormat = ',0.000000;-,0.000000'
                            Properties.NullString = '0.000000'
                            Properties.ValidateOnEnter = True
                            FooterAlignmentHorz = taCenter
                            HeaderAlignmentHorz = taCenter
                            HeaderGlyphAlignmentHorz = taCenter
                            Options.Editing = False
                            Options.Filtering = False
                            Options.Sorting = False
                            Width = 53
                            DataBinding.FieldName = 'FBalanceAdjust'
                          end
                          object FBalancePrice_WorkList: TcxGridDBColumn
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
                            Options.Sorting = False
                            Width = 73
                            DataBinding.FieldName = 'FBalancePrice'
                          end
                          object SumFBalanceQry_WorkList: TcxGridDBColumn
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
                            Options.Sorting = False
                            Width = 58
                            DataBinding.FieldName = 'SumFBalanceQry'
                          end
                          object SumFBalanceAmount_WorkList: TcxGridDBColumn
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
                            Options.Sorting = False
                            Width = 90
                            DataBinding.FieldName = 'SumFBalanceAmount'
                          end
                          object FNumber1_WorkList: TcxGridDBColumn
                            Caption = #37096#20214#32534#30721
                            FooterAlignmentHorz = taCenter
                            HeaderAlignmentHorz = taCenter
                            HeaderGlyphAlignmentHorz = taCenter
                            Options.Editing = False
                            Options.Filtering = False
                            Options.Sorting = False
                            Width = 87
                            DataBinding.FieldName = 'FNumber'
                          end
                          object FBalanceName_WorkList: TcxGridDBColumn
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
                          object FBalanceModel_WorkList: TcxGridDBColumn
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
                            Options.Sorting = False
                            Width = 97
                            DataBinding.FieldName = 'FBalanceModel'
                          end
                          object FRemark_WorkList: TcxGridDBColumn
                            Caption = #22791#27880
                            FooterAlignmentHorz = taCenter
                            HeaderAlignmentHorz = taCenter
                            HeaderGlyphAlignmentHorz = taCenter
                            Options.Editing = False
                            Options.Filtering = False
                            Options.Sorting = False
                            Width = 169
                            DataBinding.FieldName = 'FRemark'
                          end
                          object FWorkItemNum_WorkList: TcxGridDBColumn
                            Caption = #20219#21153#21333#21495
                            FooterAlignmentHorz = taCenter
                            HeaderAlignmentHorz = taCenter
                            HeaderGlyphAlignmentHorz = taCenter
                            Options.Editing = False
                            Options.Filtering = False
                            Options.Sorting = False
                            Width = 96
                            DataBinding.FieldName = 'FWorkItemNum'
                          end
                          object FWorkListID_WorkList: TcxGridDBColumn
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
                          object FWorkDate_WorkList: TcxGridDBColumn
                            Caption = #24037#31649#25191#34892#26085#26399
                            FooterAlignmentHorz = taCenter
                            HeaderAlignmentHorz = taCenter
                            HeaderGlyphAlignmentHorz = taCenter
                            Options.Editing = False
                            Options.Filtering = False
                            Options.Sorting = False
                            Width = 83
                            DataBinding.FieldName = 'FWorkDate'
                          end
                          object FBalanceID_WorkList: TcxGridDBColumn
                            Caption = #32467#31639#37096#20214'ID'
                            FooterAlignmentHorz = taCenter
                            HeaderAlignmentHorz = taCenter
                            HeaderGlyphAlignmentHorz = taCenter
                            Options.Editing = False
                            Options.Filtering = False
                            Options.Sorting = False
                            Width = 69
                            DataBinding.FieldName = 'FBalanceID'
                          end
                          object FBalancePriceID_WorkList: TcxGridDBColumn
                            Caption = #32467#31639#21333#20215'ID'
                            FooterAlignmentHorz = taCenter
                            HeaderAlignmentHorz = taCenter
                            HeaderGlyphAlignmentHorz = taCenter
                            Options.Editing = False
                            Options.Filtering = False
                            Options.Sorting = False
                            Width = 64
                            DataBinding.FieldName = 'FBalancePriceID'
                          end
                          object FItemID_WorkList: TcxGridDBColumn
                            Caption = #39033#30446'ID'
                            FooterAlignmentHorz = taCenter
                            HeaderAlignmentHorz = taCenter
                            HeaderGlyphAlignmentHorz = taCenter
                            Options.Editing = False
                            Options.Filtering = False
                            Options.Sorting = False
                            Width = 40
                            DataBinding.FieldName = 'FItemID'
                          end
                          object FBalanceProductName_WorkList: TcxGridDBColumn
                            Caption = #32467#31639#20135#21697#21517#31216
                            FooterAlignmentHorz = taCenter
                            HeaderAlignmentHorz = taCenter
                            HeaderGlyphAlignmentHorz = taCenter
                            Options.Editing = False
                            Options.Filtering = False
                            Options.Sorting = False
                            Width = 77
                            DataBinding.FieldName = 'FBalanceProductName'
                          end
                          object FProductClass_WorkList: TcxGridDBColumn
                            Caption = #20135#21697#31867#21035
                            FooterAlignmentHorz = taCenter
                            HeaderAlignmentHorz = taCenter
                            HeaderGlyphAlignmentHorz = taCenter
                            Options.Editing = False
                            Options.Filtering = False
                            Options.Sorting = False
                            Width = 53
                            DataBinding.FieldName = 'FProductClass'
                          end
                        end
                        object cxGL_WorkList: TcxGridLevel
                          GridView = cxGV_WorkList
                        end
                      end
                    end
                  end
                end
              end
            end
            object RzSize_Price: TRzSizePanel
              Left = 1127
              Top = 0
              Width = 10
              Height = 689
              Align = alRight
              Color = 14935011
              HotSpotVisible = True
              SizeBarWidth = 7
              TabOrder = 1
              VisualStyle = vsGradient
              OnConstrainedResize = RSP_TreeConstrainedResize
              HotSpotClosed = True
              HotSpotPosition = 333
            end
          end
        end
      end
    end
  end
  object ImageList: TImageList
    Left = 139
    Top = 158
    Bitmap = {
      494C010112001300040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000005000000001002000000000000050
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000008080800000000000000000000000
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
      0000000000000000000000000000000000008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008000000080000000800000008000000080000000800000008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000808080000000000000000000000000000000
      0000000000000000000000000000666699000000000000000000000000000000
      0000000000008000000080000000800000008000000080000000800000008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000C0C0C0000000000000000000000000000000
      00000000000000000000666699003399CC000000000000000000000000000000
      0000000000008000000080000000800000008000000080000000800000008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      00000000000080808000C0C0C000000000008080800000000000000000008080
      800000000000666699003399CC0066CCFF000000000000000000000000000000
      000000000000800000008000000080000000FFFFFF0080000000800000008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000666699003399CC0066CCFF00000000000000000000000000000000000000
      000000000000800000008000000080000000FFFFFF0080000000800000008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000006666
      99003399CC0066CCFF0000000000000000000000000000000000000000000000
      0000000000008000000080000000800000008000000080000000800000008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C000C0C0
      C000000000000000000000000000000000000000000000000000666699003399
      CC0066CCFF000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000000000000000000000000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000C0C0C0000000
      00000000000000000000000000000000000000000000666699003399CC0066CC
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000000000000000000000000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      800000000000000000000000000000000000666699003399CC0066CCFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000000000000000000000000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000666699003399CC0066CCFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000800000008000000080000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000666699003399CC0066CCFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000666699003399CC0066CCFF000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000006B73
      7300212121006B7373000000000000000000000000006B7373006B7373000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000008000008
      1000000810000000080000001000000000000808100000000000080000000800
      00000008000000000000000000000000000000000000FFF7FF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFFFFF00FFFFFF00FFFFFF0000080000000808000000
      00000008000000000000FFFFFF00FFFFFF000000000000000000000000002121
      2100101010002121210000000000000000000000000021212100212121000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000080063ADB50018949C0018A5
      A50021A5A500319C9C00D6F7FF009C9CA50084848C0094949400FFFFFF009C8C
      8C008C8C84008C8484000000000000000000FFFFF700FFFFFF00FFFFFF00F7FF
      F700F7FFFF00F7FFF700FFFFFF0000000000FFFFFF0000000000EFF7FF004252
      5A00EFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000006B73
      7300212121006B7373000000000000000000000000006B7373006B7373000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000800000008000000080000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000100094F7FF0039DEE70029EF
      F70031EFEF0018A5A500DEFFFF00DEDEDE00E7EFEF00848C8C00FFFFFF00EFE7
      DE00F7EFE700A5A59C000000000000000000FFFFF700FFFFFF00000000000008
      0000000800000008000000000000FFFFFF00FFFFFF0000000000D6F7FF005A7B
      8400CEEFEF0000080800F7FFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008000
      0000800000008000000080000000FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000010009CEFFF0042EFFF0010E7
      F70021E7EF0018A5A500CEF7F700EFE7E700EFEFE700848C8400F7FFF700E7EF
      E700DEE7DE007B847B000008080000000000FFFFFF00FFF7F70008000000FFFF
      F70063635200FFFFF70010000000FFFFFF00FFFFFF0000080800BDEFEF00427B
      7B00B5EFE70000101000F7FFFF00F7FFFF000000000000000000000000006B73
      73006B7373006B7373006B7373006B7373006B7373006B737300C6C6C6000000
      0000000000000000000000000000000000000000000000000000800000008000
      000080000000FFFFFF008000000080000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000100094E7FF0029DEF70010EF
      FF0018EFF700089CA500D6FFFF00EFEFE700EFEFE7008C8C8C00F7FFFF00DEE7
      E700E7EFEF008C948C000000000000000000FFFFFF00FFFFFF00000000009C94
      8C0039292100B5A59C0021080800FFFFFF00080808004A636300DEFFFF004A84
      8400CEFFFF004263630000000000FFFFFF0000000000000000006B7373001010
      10001010100010101000101010001010100010101000101010006B7373000000
      0000000000000000000000000000000000000000000080000000800000008000
      0000FFFFFF0000000000000000008000000080000000FFFFFF00000000000000
      0000000000000000000000000000000000000000100094EFFF0031EFFF0008EF
      FF0010E7FF00089CAD00CEFFFF00E7E7E700F7F7F7007B848400E7F7FF00D6EF
      EF00DEE7EF00848484000808000000000000FFFFFF00FFFFFF0000000000ADA5
      9C0052393100AD8C8C00100000004A394200F7F7FF0073848400DEEFEF00D6EF
      EF00DEF7F7006B7B7B00FFFFFF00080000000000000000000000101010002121
      21000000000000000000000000000000000000000000C6C6C60010101000C6C6
      C60000000000000000000000000000000000000000000000000080000000FFFF
      FF000000000000000000000000000000000080000000FFFFFF00000000000000
      000000000000000000000000000000000000000008009CF7FF0029E7F70000E7
      F70018EFFF00009CAD00CEFFFF00E7EFEF00D6DEDE0084949400EFFFFF00CEDE
      E700E7EFEF008C8C8C000800000000000000FFFFF7000000000010080000A594
      73005A421800B59C73002108000042312900A59C9C0039313100A59C9C009C94
      94009C9C940039312900A59C9C00080000000000000000000000101010001010
      1000000000001010100010101000000000001010100000000000101010006B73
      7300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000FFFFFF000000
      000000000000000000000000000000000000000008009CFFFF0031EFF70018F7
      FF0021EFF700009C9C00CEFFFF00DEE7E700EFEFEF00848C8C00F7FFFF00DEE7
      EF00E7E7E700948C8C00080000000000000008080000FFFFDE0052420000BDAD
      5200CEBD5200C6B552005242000094845200B59C8C0042312100AD948C00BD9C
      9400B5948C005A392900AD948C00100000000000000000000000101010000000
      0000000000000000000000000000000000000000000000000000212121001010
      1000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080000000FFFF
      FF000000000000000000000000000000000000080800ADF7F70052E7DE0042EF
      E7005AF7E700299C9400D6FFF700F7F7EF00E7E7DE0094948400FFFFEF00F7EF
      E700FFF7E70094847B00080000000000000018100000DED67B00947B0000F7E7
      5200E7DE3900E7E742008C7B00008C7B2100B5A57300AD9C8C009C949400948C
      9400A58C9400AD949400AD948C001000000000000000000000006B7373001010
      10000000000010101000101010000000000010101000000000006B7373001010
      10006B7373000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008000
      0000FFFFFF0000000000000000000000000000080000D6F7E700BDFFEF00ADFF
      DE00B5F7D60084AD8C00FFFFE700FFFFE700FFFFEF00AD947B00FFFFDE00FFFF
      DE00FFFFDE00AD9C7B00080000000000000021210000D6CE4A00A5940000FFEF
      2900EFF71800F7F71800A5940000E7CE4A004A4200000008000094C6DE007BB5
      DE00A5BDE7000000210000000000FFFFFF000000000021212100C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000001010
      1000101010000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080000000FFFFFF0000000000000000001008000063634A00424A29005A63
      3100636329006B5A2100E7CE9C006B4A2100735229007B522100FFD69C008C63
      21007B5A21006B4A2900181000000000000018180000E7E77300D6CE4A00D6DE
      4200CEEF3900CEE73900EFE74A00E7D663005A522100000000006BB5D60073BD
      F7007BA5DE0000002100F7FFFF00F7FFFF000000000010101000C6C6C6002121
      2100000000001010100010101000000000001010100000000000000000001010
      1000101010006B73730000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080000000FFFFFF000000000018080000D6BD9C00B58C6300BD84
      5200C68C5200945A1800F7C69400BD945A00BD8C5A0084521800F7BD7B00C68C
      4A00BD8C52007B5A29002108000000000000FFFFEF000808000000080000426B
      5A00397B6300316B52000010000010080000FFFFF7000810180084B5CE0073BD
      D6009CC6EF0000002100EFFFFF00F7FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000101010001010100000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000800000000000000018080000DEC6A500B5845A00C684
      5A00CE84520094521800FFCE9400AD845200AD8452008C5A2900FFD69400BD8C
      4A00B58452007B5229001000000000000000FFFFFF00EFF7FF0000001800316B
      8C0018638C002973940000000800FFFFFF00FFFFFF00FFFFFF00000008000000
      100000001800EFFFFF00EFFFFF00F7FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006B737300101010006B7373006B7373000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000021180000BDAD9400E7CEB500D6BD
      9C00EFCEAD00E7C69C00DEC69C00DECE9C00DEC6A500DEC69C00E7C69C00E7C6
      9C00EFCEA500DEC6AD000800000000000000FFFFFF00FFFFFF00000008003963
      7300316B8400295A730000000800F7FFFF00FFFFFF00FFFFFF00FFFFFF00F7FF
      FF00F7FFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C6001010100010101000101010000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000800000018180000080000000800
      0000180800001008000018080000180800001808000021100000210800002910
      000021080000100000000808000000000000FFFFFF00F7FFFF00EFFFFF000008
      10000000100000001800E7FFFF00F7FFFF00FFFFFF00FFFFFF00FFFFF700FFFF
      F700FFFFFF00FFFFFF00FFFFFF00FFFFF7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600C6C6C6000000000000000000000000000000
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
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00000000000808080000000000000000000000000000000000000000000008
      080000000800000008000000100000000000FFFFFF000000000000000000FFFF
      FF00FFFFFF00FFFFFF00F7FFFF00F7FFFF00F7FFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000E7EFF700E7E7E700B5B5
      B500CE9C9C009C6363009C636300B5B5B500CECECE00E7E7E700E7EFF7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFF7FF00FFFFFF00F7F7FF00FFFF
      FF0000000800D6D6DE00DEE7E700DEE7EF00DEDEEF00D6D6E700D6DEE700CED6
      E700D6D6E700EFE7F7000000080000000000FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000080000000800000010000000080000000000000000000000
      000000001000FFF7FF00FFFFFF0000000000E7E7E700CE9C9C009C636300CE9C
      9C00CE9C9C00FFFFFF009C6363009C9C9C009C9C9C00B5B5B500E7E7E7000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000FFFF000000000000000000000000000000000000000000C6C6C6000000
      000000FFFF000000000000000000000000000000000008080000000000000000
      000000000000F7FFFF00F7FFFF00EFEFFF00F7EFFF00F7EFFF00F7F7FF00F7EF
      FF00F7EFFF00DEDEE7000000000000000000FFFFFF00FFFFFF00FFFFFF007384
      7B00BDD6D600ADCEDE00316384004A94B50021637B0000000000CEDECE00C6D6
      C60000000000FFFFFF00FFFFFF00000000009C636300CE9C9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C63630031639C0031639C0031639C00E7EFF7000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00C6C6C6000000000000000000000000000000000000000000C6C6C6000000
      0000C6C6C600000000000000000000000000000000009C9C9C008C949400949C
      9C0000080000FFFFFF001818390018184A0021184A002921520018104A001810
      4A0018183100DEDEE7000808080000000000FFFFFF00FFFFFF00F7FFFF006B84
      8400CEF7FF00BDF7FF00106B940039BDFF00299CDE0000001000DEFFFF00DEFF
      F70000000000FFFFF700FFFFFF00000000009C636300FFCE9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C63630063CECE0063CECE00009CCE00FFFFFF00FFCE
      CE0000000000000000000000000000000000000000000000000000000000C6C6
      C60000FFFF000000000000000000000000000000000000000000C6C6C6000000
      000000FFFF0000000000000000000000000000000800E7DEF700EFE7FF00DED6
      F70000000800F7F7FF00F7F7FF0008084200EFEFFF00F7F7FF0021215200EFE7
      FF00FFFFFF00DEDEE7000000000000000000FFFFFF00FFFFFF00F7F7F700848C
      8C00DEF7FF00B5F7FF0008638C008CFFFF0052B5EF0000082100DEF7FF00DEF7
      F70000000000FFFFFF00FFFFFF00000000009C636300FFCE9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C63630063CECE0063CEFF00319CCE00FFCECE00CE63
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000FFFF00C6C6C600C6C6C60000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF0000000000000000000000000000001000EFE7FF00080029001010
      390000000800F7F7FF00EFEFFF0010105200F7F7FF00EFF7FF00EFE7FF001810
      4A00F7F7FF00DEDEE7000000080000000000FFFFFF00FFFFFF00F7FFFF007384
      7B00E7F7FF00C6F7FF0018637B0000638400106B8C0000001000E7FFFF00EFFF
      FF0000000000FFFFFF00FFFFFF00000000009C636300FFCE9C00CE9C9C00CE9C
      6300FFCECE00FFFFFF009C6363009CCECE009CCEFF00B5B5B500FF630000CE63
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00C6C6C60000000000000000000000000000000000000000000000000000FF
      FF00C6C6C60000000000000000000000000008080000DEDEE700E7E7FF001010
      310000001000EFF7FF001818630018106300EFEFFF0021214A00DEDEFF00EFEF
      FF0021183900D6D6E7000000100000000000FFFFFF00F7FFFF00000000000000
      0000F7FFFF00DEF7F700CEFFFF00BDFFFF00BDFFFF00C6FFF700D6F7EF00EFF7
      FF000008080000000000F7FFFF00000000009C636300FFCE9C009C636300FFFF
      FF00FFCECE00FFFFFF009C6363009CCECE00C6C6C600CE630000CE630000CE63
      0000CE630000CE630000CE63000000000000000000000000000000000000C6C6
      C60000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      000000FFFF0000000000000000000000000000000000E7E7E700DEDEFF001010
      310000000800F7F7FF00E7E7FF0010106300EFE7FF00EFEFFF00181052001810
      4A00F7EFFF00D6D6EF000000080000000000FFFFFF00EFFFFF00426B7300CEFF
      FF00BDD6CE00EFFFFF00DEFFF700C6FFF700C6FFF700D6FFF700DEFFF700B5D6
      DE009CC6CE0000000000F7FFFF00000000009C636300FFCE9C00CE9C9C009C63
      6300FFCECE00FFFFFF009C63630000000000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE6300000000000000000000000000000000000000FF
      FF0000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C60000000000000000000000000000000800E7E7F700101031001010
      310000001000F7F7FF00E7EFFF00E7E7FF00F7EFFF00E7E7FF00EFEFFF00E7E7
      FF00F7F7FF00DED6F7000808180000000000EFFFFF00EFFFFF00E7FFFF003963
      730000000000C6D6CE00EFFFF700CEFFF700CEFFFF00DEFFF700ADCED6000000
      100000000800EFFFFF00FFFFFF00000000009C636300FFCE9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C63630000000000CE9C9C00CE630000CE630000CE63
      0000CE630000CE630000CE6300000000000000000000000000000000000000FF
      FF0000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C60000000000000000000000000000000800DEDEF700DEDEFF001010
      3100000018001010310018215200101852001010520021185A0010104A002121
      520021184200100829000000100000000000EFFFFF00E7FFF700EFFFFF00E7FF
      FF00C6F7F70000000000BDCECE00D6FFFF00D6FFFF00ADCED600000010008CC6
      F70000001000FFFFFF00FFFFFF00000000009C636300FFCE9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C636300CECECE00E7EFF700CE9C9C00FF630000CE63
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      00000000000000000000000000000000000000001000EFEFFF00D6D6FF00D6D6
      FF0000001000C6C6DE0010184200182152001810520018105A00181852001818
      420029185200100831000000080000000000FFFFFF00FFFFFF00FFFFFF00F7FF
      FF0039636B00CEFFFF0000000800B5D6DE00A5CED6000000100094C6F7000000
      420000001800FFFFFF00FFFFFF00000000009C636300FFCE9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C6363009CCECE00000000009CCECE00FFCE9C00CE63
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C600000000000000000000000000080021001008310021184A001818
      4200000018000000290000002100000029000000310000002900000018000000
      180000002100000018000000080000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFFFFF00E7FFFF0031637B00B5F7FF008CCED60000000000E7F7FF002100
      840008002900FFFFFF00FFFFFF00000000009C636300CE9C9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C636300CECECE0000000000319CCE0000000000FFCE
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000180029214A00211852002110
      5A001810520010104A00101852001818520010104A000008290000081000EFFF
      FF00F7F7FF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFF
      F700F7FFFF00EFFFFF00DEFFFF002963730000000800EFFFFF00F7F7FF002108
      6B0000001800FFFFFF00000000000000000000000000C6C6C600CE9C6300CE9C
      9C00CECE9C00FFFFFF009C636300009CCE00009CCE00009CCE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000180000002100000031000000
      310000003900000031000000310000003100000021000000180000080800F7FF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00F7FFF700FFFFFF00FFFF
      FF00FFFFFF00F7F7FF00F7FFFF00F7FFFF00EFFFFF00F7FFFF00FFFFFF00FFF7
      FF00F7FFFF00FFFFFF00FFFFFF0000000000000000000000000000000000CECE
      CE00CE9C9C009C6363009C636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00F7FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7FFFF00F7FFFF00FFFFFF00000000000000000008080000080000000800
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
      2800000040000000500000000100010000000000800200000000000000000000
      000000000000000000000000FFFFFF00FCFFFFFF00000000F87FFFFF00000000
      F47FFFFF00000000EDFFFFFF00000000C93FF80F00000000803EF80F00000000
      681CF80F000000004928F80F000000000171F80F000000008023F80F00000000
      8207FDDF00000000970FFDDF00000000C31FFDDF00000000E03FFE3F00000000
      F07FFFFF00000000F8FFFFFF00000000FFFFFFFFE39FFFFF80018000E39FF9FF
      00010100E39FF0FF00010000FFFFE0FF00010000E01FC07F00010000C01F863F
      00010000CF8FCF3F00010000C94FFF9F00010000DFCFFFCF00010000C947FFE7
      000100009FE7A9C3000100008963AAB900010000FFF389BD00010000FFF0AABF
      00010000FFF0D9CF00010000FFF8FFFFFDFFFFFFFFFFFFFFE0FFFFFF80016001
      801FE00300010001001FC00300010001001FC00300010001000FC00300010001
      000FC00300010001000FC003000100010001C003000100010101C00300010001
      0101C00300010001000FC00300010001008FC0030001000100AFC00300014003
      803FFFFF00010001E1FFFFFFFFFF10018003FFFFF81FFFFF00030001F81FC007
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
  object PM: TPopupMenu
    Left = 188
    Top = 160
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
    Left = 136
    Top = 112
    object Act_Menu: TAction
      Category = #33756#21333
      Caption = 'Act_Menu'
      OnExecute = Act_MenuExecute
    end
    object Act_MaxID_List: TAction
      Category = #21462#20540
      Caption = 'Act_MaxID_List'
      OnExecute = Act_MaxID_ListExecute
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
    object Act_MaxID: TAction
      Category = #21462#20540
      Caption = 'Act_MaxID'
      OnExecute = Act_MaxIDExecute
    end
    object Act_Locate: TAction
      Category = #33756#21333
      Caption = 'Act_Locate'
      OnExecute = Act_LocateExecute
    end
    object Act_AgentName: TAction
      Category = #21462#20540
      Caption = 'Act_AgentName'
      OnExecute = Act_AgentNameExecute
    end
    object Act_ItemChange: TAction
      Category = #21462#20540
      Caption = 'Act_ItemChange'
      OnExecute = Act_ItemChangeExecute
    end
    object Act_Update: TAction
      Category = #21462#20540
      Caption = 'Act_Update'
    end
    object Act_WorkItemNum: TAction
      Category = #21462#20540
      Caption = 'Act_WorkItemNum'
      OnExecute = Act_WorkItemNumExecute
    end
    object Act_MaxNum: TAction
      Category = #21462#20540
      Caption = 'Act_MaxNum'
      OnExecute = Act_MaxNumExecute
    end
    object Act_Menu_Band: TAction
      Category = #33756#21333
      Caption = 'Act_Menu_Band'
      OnExecute = Act_Menu_BandExecute
    end
    object Act_Menu_Set_Band: TAction
      Category = #33756#21333
      Caption = 'Act_Menu_Set_Band'
      OnExecute = Act_Menu_Set_BandExecute
    end
    object Act_Change: TAction
      Category = #21462#20540
      Caption = 'Act_Change'
      OnExecute = Act_ChangeExecute
    end
    object Act_ItemNum: TAction
      Category = #21462#20540
      Caption = 'Act_ItemNum'
      OnExecute = Act_ItemNumExecute
    end
    object Act_Status: TAction
      Category = #33756#21333
      Caption = #26435#38480
      OnExecute = Act_StatusExecute
    end
    object Act_WorkItemList: TAction
      Category = #21462#20540
      Caption = 'Act_WorkItemList'
      OnExecute = Act_WorkItemListExecute
    end
    object Act_SelMaxNum: TAction
      Category = #21462#20540
      Caption = 'Act_SelMaxNum'
      OnExecute = Act_SelMaxNumExecute
    end
    object Act_Sel: TAction
      Category = #21462#20540
      Caption = 'Act_Sel'
      OnExecute = Act_SelExecute
    end
    object Act_Invoice: TAction
      Category = #21462#20540
      Caption = 'Act_Invoice'
      OnExecute = Act_InvoiceExecute
    end
    object Act_TreeSel: TAction
      Category = #33756#21333
      Caption = 'Act_TreeSel'
      OnExecute = Act_TreeSelExecute
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 187
    Top = 115
  end
  object DS_Mdata: TDataSource
    DataSet = MData
    Left = 27
    Top = 112
  end
  object MData: TdxMemData
    Indexes = <>
    SortOptions = []
    BeforePost = MDataBeforePost
    Left = 75
    Top = 112
  end
  object MData_List: TdxMemData
    Indexes = <>
    SortOptions = []
    AfterInsert = MData_ListAfterInsert
    AfterEdit = MData_ListAfterEdit
    BeforePost = MData_ListBeforePost
    BeforeDelete = MData_ListBeforeDelete
    Left = 75
    Top = 152
  end
  object DS_Mdata_List: TDataSource
    DataSet = MData_List
    Left = 27
    Top = 152
  end
  object PM_Band: TPopupMenu
    Left = 180
    Top = 224
    object N_Edit_Band: TMenuItem
      Caption = #32534#36753
      OnClick = N_Edit_BandClick
    end
    object N_Filter_Band: TMenuItem
      Caption = #36807#28388
      OnClick = N_Edit_BandClick
    end
    object N_Sort_band: TMenuItem
      Caption = #25490#24207
      OnClick = N_Edit_BandClick
    end
    object N_Group_band: TMenuItem
      Caption = #20998#32452
      OnClick = N_Edit_BandClick
    end
    object N_Set_band: TMenuItem
      Caption = #21462#28040#35774#32622
      OnClick = N_Edit_BandClick
    end
    object N_Out_band: TMenuItem
      Caption = #23548#20986
      OnClick = N_Edit_BandClick
    end
  end
  object DS_Mdata_WorkList: TDataSource
    DataSet = MData_WorkList
    Left = 27
    Top = 288
  end
  object MData_WorkList: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 75
    Top = 288
  end
end
