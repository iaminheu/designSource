inherited Frm_WorkTaskItem: TFrm_WorkTaskItem
  Left = 145
  Top = 93
  Caption = #29983#20135#20219#21153#21333
  ClientHeight = 660
  ClientWidth = 1026
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image: TImage
    Width = 1026
  end
  inherited L_title: TLabel
    Left = -114
    Top = 20
    Width = 1281
    Caption = #36890#29992#25968#25454#30331#35760
  end
  inherited P_back: TPanel
    Width = 1026
    Height = 639
    inherited P_main: TPanel
      Width = 1020
      Height = 633
      object PC_WorkTask: TRzPageControl [0]
        Left = 0
        Top = 0
        Width = 1018
        Height = 617
        ActivePage = TS_WorkTask
        Align = alClient
        Color = 14935011
        ParentColor = False
        TabIndex = 0
        TabOrder = 1
        TabOrientation = toBottom
        TabStyle = tsDoubleSlant
        FixedDimension = 19
        object TS_WorkTask: TRzTabSheet
          Color = 14935011
          Caption = #32534#36753
          object PanelBkGnd: TPanel
            Left = 0
            Top = 0
            Width = 1016
            Height = 596
            Align = alClient
            BevelOuter = bvNone
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 0
            object RzSizePanel1: TRzSizePanel
              Left = 0
              Top = 0
              Width = 216
              Height = 596
              Color = 14935011
              HotSpotVisible = True
              SizeBarWidth = 7
              TabOrder = 0
              VisualStyle = vsGradient
              object MyTreeView: TTreeView
                Left = 0
                Top = 0
                Width = 208
                Height = 596
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
              Left = 216
              Top = 0
              Width = 800
              Height = 596
              Align = alClient
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 1
              object RzSizePanel4: TRzSizePanel
                Left = 0
                Top = 138
                Width = 800
                Height = 458
                Align = alBottom
                HotSpotVisible = True
                Side = sdBottom
                ParentShowHint = False
                ShowHint = False
                SizeBarWidth = 7
                TabOrder = 0
                UseDockManager = False
                object ToolBar_Save: TPanel
                  Left = 0
                  Top = 406
                  Width = 800
                  Height = 52
                  Align = alBottom
                  BevelOuter = bvNone
                  ParentColor = True
                  TabOrder = 0
                  Visible = False
                  object OKBtn: TcxButton
                    Left = 63
                    Top = 16
                    Width = 80
                    Height = 25
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
                    Left = 159
                    Top = 16
                    Width = 80
                    Height = 25
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
                object ToolBar_List: TToolBar
                  Left = 0
                  Top = 8
                  Width = 800
                  Height = 35
                  AutoSize = True
                  ButtonHeight = 35
                  ButtonWidth = 55
                  Caption = #20462#25913
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
                  Visible = False
                  object TB_Sel: TToolButton
                    Left = 0
                    Top = 0
                    AutoSize = True
                    Caption = #26032#22686'[&S]'
                    ImageIndex = 0
                    OnClick = TB_SelClick
                  end
                end
                object PC_WorktaskList: TPageControl
                  Left = 0
                  Top = 43
                  Width = 800
                  Height = 363
                  ActivePage = TS_PriceList
                  Align = alClient
                  TabOrder = 2
                  object TS_WorktaskList: TTabSheet
                    Caption = #20219#21153#21333#26126#32454
                    object cxGrid_WTList: TcxGrid
                      Left = 0
                      Top = 0
                      Width = 792
                      Height = 335
                      Align = alClient
                      PopupMenu = PM
                      TabOrder = 0
                      OnContextPopup = cxGrid_WTListContextPopup
                      object cxGV_WTList: TcxGridDBTableView
                        DataController.DataSource = DS_Mdata_WTList
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
                            FieldName = 'FAdvanceAmount'
                          end
                          item
                            Format = ',0.00;-,0.00'
                            Kind = skSum
                            FieldName = 'FBalanceAmount'
                          end
                          item
                            Format = ',0.00;-,0.00'
                            Kind = skSum
                            FieldName = 'FQualityAmount'
                          end
                          item
                            Kind = skSum
                            FieldName = 'FEstimateQry'
                            Column = FEstimateQry_WTList
                          end
                          item
                            Format = ',0.00;-,0.00'
                            Kind = skSum
                            FieldName = 'FEstimateAmount'
                            Column = FEstimateAmount_WTList
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
                        OnCustomDrawCell = cxGV_WTListCustomDrawCell
                        OptionsData.CancelOnExit = False
                        OptionsData.DeletingConfirmation = False
                        OptionsData.Editing = False
                        OptionsData.Inserting = False
                        OptionsView.Navigator = True
                        OptionsView.Footer = True
                        OptionsView.GroupByBox = False
                        object FWorkTaskListNum_WTList: TcxGridDBColumn
                          Caption = #24207#21495
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Options.Sorting = False
                          Width = 30
                          DataBinding.FieldName = 'FWorkTaskListNum'
                        end
                        object FNumber_WTLis: TcxGridDBColumn
                          Caption = #32534#30721
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Options.Sorting = False
                          Width = 52
                          DataBinding.FieldName = 'FNumber'
                        end
                        object FBudgetPartsName_WTList: TcxGridDBColumn
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
                          Width = 110
                          DataBinding.FieldName = 'FBudgetPartsName'
                        end
                        object FBudgetPartsModel_WTList: TcxGridDBColumn
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
                          Width = 111
                          DataBinding.FieldName = 'FBudgetPartsModel'
                        end
                        object FBudgetPartsUnit_WTList: TcxGridDBColumn
                          Caption = #21333#20301
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Options.Sorting = False
                          Width = 29
                          DataBinding.FieldName = 'FBudgetPartsUnit'
                        end
                        object FEstimateQry_WTList: TcxGridDBColumn
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
                          Options.Sorting = False
                          Width = 77
                          DataBinding.FieldName = 'FEstimateQry'
                        end
                        object FEstimateAmount_WTList: TcxGridDBColumn
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
                        object FWorkItemPrice_WTList: TcxGridDBColumn
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
                          DataBinding.FieldName = 'FWorkItemPrice'
                        end
                        object FMaterialPrice_WTList: TcxGridDBColumn
                          Caption = #26448#26009#21333#20215
                          PropertiesClassName = 'TcxCurrencyEditProperties'
                          Properties.Alignment.Horz = taRightJustify
                          Properties.Alignment.Vert = taVCenter
                          Properties.DecimalPlaces = 6
                          Properties.DisplayFormat = ',0.000000;-,0.000000'
                          Properties.ValidateOnEnter = True
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Options.Sorting = False
                          Width = 56
                          DataBinding.FieldName = 'FMaterialPrice'
                        end
                        object FWorkPrice_WTList: TcxGridDBColumn
                          Caption = #24037#31649#21333#20215
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
                          Width = 65
                          DataBinding.FieldName = 'FWorkPrice'
                        end
                        object FAdjustPrice_WTList: TcxGridDBColumn
                          Caption = #35843#25972#21333#20215
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Options.Sorting = False
                          Width = 59
                          DataBinding.FieldName = 'FAdjustPrice'
                        end
                        object FBalanceBasePrice_WTList: TcxGridDBColumn
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
                        object FTaskPrice_WTList: TcxGridDBColumn
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
                          DataBinding.FieldName = 'FTaskPrice'
                        end
                        object FDeliveryDateTxt_WTList: TcxGridDBColumn
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
                          Options.Sorting = False
                          Width = 96
                          DataBinding.FieldName = 'FDeliveryDateTxt'
                        end
                        object FWorkTaskPriceID_WTList: TcxGridDBColumn
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Options.Sorting = False
                          Width = 20
                          DataBinding.FieldName = 'FWorkTaskPriceID'
                        end
                        object FIsDelList_WTItem: TcxGridDBColumn
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
                        object FBalanceWorkAdjust_WTList: TcxGridDBColumn
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
                        object FBalanceAdjust_WTList: TcxGridDBColumn
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
                        object FWorkListRemark_WTList: TcxGridDBColumn
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
                        object FManageParts_WTList: TcxGridDBColumn
                          Caption = #32467#31639#31867#21035
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Width = 95
                          DataBinding.FieldName = 'FManageParts'
                        end
                        object FRemark_WTList: TcxGridDBColumn
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
                        object FWorkTaskItemNum_WTList: TcxGridDBColumn
                          Caption = #20219#21153#21333#21495
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Options.Sorting = False
                          Width = 84
                          DataBinding.FieldName = 'FWorkTaskItemNum'
                        end
                        object FMaterialDate_WTList: TcxGridDBColumn
                          Caption = #26448#26009#25191#34892#26085#26399
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Options.Sorting = False
                          Width = 99
                          DataBinding.FieldName = 'FMaterialDate'
                        end
                        object FWorkDate_WTList: TcxGridDBColumn
                          Caption = #24037#31649#25191#34892#26085#26399
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Options.Sorting = False
                          Width = 77
                          DataBinding.FieldName = 'FWorkDate'
                        end
                        object FBalanceID_WTList: TcxGridDBColumn
                          Caption = #32467#31639#37096#20214'ID'
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Options.Sorting = False
                          Width = 64
                          DataBinding.FieldName = 'FBalanceID'
                        end
                        object FFileItemID_WTList: TcxGridDBColumn
                          Caption = #39033#30446'ID'
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Options.Sorting = False
                          Width = 40
                          DataBinding.FieldName = 'FFileItemID'
                        end
                        object FWorkListID_WTList: TcxGridDBColumn
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
                        object FBalanceProductName_WTList: TcxGridDBColumn
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
                        object FProductClass_WTList: TcxGridDBColumn
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
                      object cxGL_WTList: TcxGridLevel
                        GridView = cxGV_WTList
                      end
                    end
                  end
                  object TS_PriceList: TTabSheet
                    Caption = #21333#20215#26126#32454
                    ImageIndex = 1
                    object cxGrid_PriceList: TcxGrid
                      Left = 0
                      Top = 0
                      Width = 792
                      Height = 335
                      Align = alClient
                      PopupMenu = PM
                      TabOrder = 0
                      OnContextPopup = cxGrid_PriceListContextPopup
                      object cxGV_PriceList: TcxGridDBTableView
                        DataController.DataSource = DS_Mdata_WTList
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
                            FieldName = 'FAdvanceAmount'
                          end
                          item
                            Format = ',0.00;-,0.00'
                            Kind = skSum
                            FieldName = 'FBalanceAmount'
                          end
                          item
                            Format = ',0.00;-,0.00'
                            Kind = skSum
                            FieldName = 'FQualityAmount'
                          end
                          item
                            Kind = skSum
                            FieldName = 'FEstimateQry'
                          end
                          item
                            Format = ',0.00;-,0.00'
                            Kind = skSum
                            FieldName = 'FEstimateAmount'
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
                        OnCustomDrawCell = cxGV_WTListCustomDrawCell
                        OptionsData.CancelOnExit = False
                        OptionsData.Editing = False
                        OptionsView.Navigator = True
                        OptionsView.Footer = True
                        OptionsView.GroupByBox = False
                        object FWorkTaskListNum_PriceList: TcxGridDBColumn
                          Caption = #24207#21495
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Width = 30
                          DataBinding.FieldName = 'FWorkTaskListNum'
                        end
                        object FNumber_PriceList: TcxGridDBColumn
                          Caption = #32534#30721
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          SortOrder = soAscending
                          Width = 53
                          DataBinding.FieldName = 'FNumber'
                        end
                        object FBudgetPartsName_PriceList: TcxGridDBColumn
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
                          Width = 102
                          DataBinding.FieldName = 'FBudgetPartsName'
                        end
                        object FBudgetPartsModel_PriceList: TcxGridDBColumn
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
                          DataBinding.FieldName = 'FBudgetPartsModel'
                        end
                        object FBudgetPartsUnit_PriceList: TcxGridDBColumn
                          Caption = #21333#20301
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Width = 29
                          DataBinding.FieldName = 'FBudgetPartsUnit'
                        end
                        object FEstimateQry_PriceList: TcxGridDBColumn
                          Caption = #39044#20272#25968#37327
                          PropertiesClassName = 'TcxCurrencyEditProperties'
                          Properties.DecimalPlaces = 4
                          Properties.DisplayFormat = '0.0000;-0.0000'
                          Properties.ValidateOnEnter = True
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Width = 86
                          DataBinding.FieldName = 'FEstimateQry'
                        end
                        object FTaskPrice_PriceList: TcxGridDBColumn
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
                          Width = 64
                          DataBinding.FieldName = 'FTaskPrice'
                        end
                        object FBalanceBasePrice_PriceList: TcxGridDBColumn
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
                          Width = 60
                          DataBinding.FieldName = 'FBalanceBasePrice'
                        end
                        object FMaterialPrice_PriceList: TcxGridDBColumn
                          Caption = #26448#26009#22522#20215
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Width = 65
                          DataBinding.FieldName = 'FMaterialPrice'
                        end
                        object FWorkPrice_PriceList: TcxGridDBColumn
                          Caption = #24037#31649#22522#20215
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Width = 67
                          DataBinding.FieldName = 'FWorkPrice'
                        end
                        object FAdjustPrice_PriceList: TcxGridDBColumn
                          Caption = #35843#25972#21333#20215
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
                          DataBinding.FieldName = 'FAdjustPrice'
                        end
                        object FWorkRatio_PriceList: TcxGridDBColumn
                          Caption = #24037#31649#31995#25968
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Width = 53
                          DataBinding.FieldName = 'FWorkRatio'
                        end
                        object FWorkAdjust_PriceList: TcxGridDBColumn
                          Caption = #24037#31649#35843#25972
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Width = 53
                          DataBinding.FieldName = 'FWorkAdjust'
                        end
                        object FProcessPrice_PriceList: TcxGridDBColumn
                          Caption = #24037#24207#21333#20215
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Width = 53
                          DataBinding.FieldName = 'FProcessPrice'
                        end
                        object FPaintModel_PriceList: TcxGridDBColumn
                          Caption = #36947#28422
                          PropertiesClassName = 'TcxButtonEditProperties'
                          Properties.Buttons = <
                            item
                              Default = True
                              Kind = bkEllipsis
                            end>
                          Properties.OnButtonClick = FPaintModel_PriceListPropertiesButtonClick
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Width = 48
                          DataBinding.FieldName = 'FPaintModel'
                        end
                        object FPaint_PriceList: TcxGridDBColumn
                          Caption = #21047#28422#20215
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Width = 48
                          DataBinding.FieldName = 'FPaint'
                        end
                        object FFlaw_PriceList: TcxGridDBColumn
                          Caption = #25506#20260
                          PropertiesClassName = 'TcxButtonEditProperties'
                          Properties.Buttons = <
                            item
                              Default = True
                              Kind = bkEllipsis
                            end>
                          Properties.OnButtonClick = FFlaw_PriceListPropertiesButtonClick
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Width = 40
                          DataBinding.FieldName = 'FFlaw'
                        end
                        object FShotModel_PriceList: TcxGridDBColumn
                          Caption = #25243#20024
                          PropertiesClassName = 'TcxButtonEditProperties'
                          Properties.Buttons = <
                            item
                              Default = True
                              Kind = bkEllipsis
                            end>
                          Properties.OnButtonClick = FShotModel_PriceListPropertiesButtonClick
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Width = 61
                          DataBinding.FieldName = 'FShotModel'
                        end
                        object FShot_PriceList: TcxGridDBColumn
                          Caption = #25243#20024#20215
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Width = 43
                          DataBinding.FieldName = 'FShot'
                        end
                        object FGalvanizeModel_PriceList: TcxGridDBColumn
                          Caption = #38208#38156
                          PropertiesClassName = 'TcxButtonEditProperties'
                          Properties.Buttons = <
                            item
                              Default = True
                              Kind = bkEllipsis
                            end>
                          Properties.OnButtonClick = FGalvanizeModel_PriceListPropertiesButtonClick
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Width = 59
                          DataBinding.FieldName = 'FGalvanizeModel'
                        end
                        object FGalvanize_PriceList: TcxGridDBColumn
                          Caption = #38208#38156#20215
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Width = 42
                          DataBinding.FieldName = 'FGalvanize'
                        end
                        object FDrill_PriceList: TcxGridDBColumn
                          Caption = #38075#23380
                          PropertiesClassName = 'TcxButtonEditProperties'
                          Properties.Buttons = <
                            item
                              Default = True
                              Kind = bkEllipsis
                            end>
                          Properties.OnButtonClick = FDrill_PriceListPropertiesButtonClick
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Width = 29
                          DataBinding.FieldName = 'FDrill'
                        end
                        object FWorkSubsidy_PriceList: TcxGridDBColumn
                          Caption = #24037#31649#36148#34917#20215
                          PropertiesClassName = 'TcxCurrencyEditProperties'
                          Properties.DecimalPlaces = 6
                          Properties.DisplayFormat = ',0.000000;-,0.000000'
                          Properties.ValidateOnEnter = True
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Width = 65
                          DataBinding.FieldName = 'FWorkSubsidy'
                        end
                        object FOtherSubsidy_PriceList: TcxGridDBColumn
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
                          Options.Editing = False
                          Options.Filtering = False
                          Width = 53
                          DataBinding.FieldName = 'FOtherSubsidy'
                        end
                        object FBalancePrice_PriceList: TcxGridDBColumn
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
                        object FWorkTaskItemNum_PriceList: TcxGridDBColumn
                          Caption = #20219#21153#21333#21495
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Width = 84
                          DataBinding.FieldName = 'FWorkTaskItemNum'
                        end
                        object FBudgetPriceID_PriceList: TcxGridDBColumn
                          Caption = #32467#31639#21333#20215'ID'
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Width = 64
                          DataBinding.FieldName = 'FBudgetPriceID'
                        end
                        object FWorkTaskListID_PriceList: TcxGridDBColumn
                          Caption = #20219#21153#21333#26126#32454'ID'
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Width = 76
                          DataBinding.FieldName = 'FWorkTaskListID'
                        end
                        object FPaintID_PriceList: TcxGridDBColumn
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Width = 46
                          DataBinding.FieldName = 'FPaintID'
                        end
                        object FShotID_PriceList: TcxGridDBColumn
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Width = 44
                          DataBinding.FieldName = 'FShotID'
                        end
                        object FGalvanizeID_PriceList: TcxGridDBColumn
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          DataBinding.FieldName = 'FGalvanizeID'
                        end
                        object FDrillID_PriceList: TcxGridDBColumn
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Width = 39
                          DataBinding.FieldName = 'FDrillID'
                        end
                        object FFlawID_PriceList: TcxGridDBColumn
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Width = 44
                          DataBinding.FieldName = 'FFlawID'
                        end
                      end
                      object cxGL_PriceList: TcxGridLevel
                        GridView = cxGV_PriceList
                      end
                    end
                  end
                end
              end
              object cxGrid_WTItem: TcxGrid
                Left = 0
                Top = 40
                Width = 800
                Height = 98
                Align = alClient
                PopupMenu = PM
                TabOrder = 1
                OnContextPopup = cxGrid_WTItemContextPopup
                OnFocusedViewChanged = cxGrid_WTItemFocusedViewChanged
                object cxGV_WTItem: TcxGridDBTableView
                  DataController.DataSource = DS_Mdata_WTItem
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
                  OptionsData.Appending = True
                  OptionsData.CancelOnExit = False
                  OptionsData.DeletingConfirmation = False
                  OptionsView.Navigator = True
                  OptionsView.Footer = True
                  OptionsView.GroupByBox = False
                  object FStatusNotes_WTItem: TcxGridDBColumn
                    Caption = #29366#24577
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 43
                    DataBinding.FieldName = 'FStatusNotes'
                  end
                  object FBranchFileNo_WTItem: TcxGridDBColumn
                    Caption = #26723#26696#21495
                    PropertiesClassName = 'TcxButtonEditProperties'
                    Properties.Buttons = <
                      item
                        Default = True
                        Kind = bkEllipsis
                      end>
                    Properties.OnButtonClick = FBranchFileNo_WTItemPropertiesButtonClick
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 105
                    DataBinding.FieldName = 'FBranchFileNo'
                  end
                  object FBranchItemNumber_WTItem: TcxGridDBColumn
                    Caption = #22270#21495
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
                    Width = 49
                    DataBinding.FieldName = 'FBranchItemNumber'
                  end
                  object FWorkTaskItemNum_WTItem: TcxGridDBColumn
                    Caption = #20219#21153#21333#21495
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 71
                    DataBinding.FieldName = 'FWorkTaskItemNum'
                  end
                  object FWorkTaskItemNo_WTItem: TcxGridDBColumn
                    Caption = #21333#21495
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 33
                    DataBinding.FieldName = 'FWorkTaskItemNo'
                  end
                  object FWorkTaskItemDate_WTItem: TcxGridDBColumn
                    Caption = #20219#21153#21333#26085#26399
                    PropertiesClassName = 'TcxDateEditProperties'
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 83
                    DataBinding.FieldName = 'FWorkTaskItemDate'
                  end
                  object FDeliveryPlace_WTItem: TcxGridDBColumn
                    Caption = #20132#36135#22320#28857
                    PropertiesClassName = 'TcxButtonEditProperties'
                    Properties.Buttons = <
                      item
                        Default = True
                        Kind = bkEllipsis
                      end>
                    Properties.OnButtonClick = FDeliveryPlace_WTItemPropertiesButtonClick
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 60
                    DataBinding.FieldName = 'FDeliveryPlace'
                  end
                  object FJobSort_WTItem: TcxGridDBColumn
                    Caption = #21152#24037#31867#22411
                    PropertiesClassName = 'TcxButtonEditProperties'
                    Properties.Buttons = <
                      item
                        Default = True
                        Kind = bkEllipsis
                      end>
                    Properties.OnButtonClick = FJobSort_WTItemPropertiesButtonClick
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 53
                    DataBinding.FieldName = 'FJobSort'
                  end
                  object FJobPlace_WTItem: TcxGridDBColumn
                    Caption = #21152#24037#22320#28857
                    PropertiesClassName = 'TcxButtonEditProperties'
                    Properties.Buttons = <
                      item
                        Default = True
                        Kind = bkEllipsis
                      end>
                    Properties.OnButtonClick = FJobPlace_WTItemPropertiesButtonClick
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 61
                    DataBinding.FieldName = 'FJobPlace'
                  end
                  object FPayMentPercent_WTItem: TcxGridDBColumn
                    Caption = #39044#20184#27604#20363
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
                    Width = 53
                    DataBinding.FieldName = 'FPayMentPercent'
                  end
                  object FWorkCarry_WTItem: TcxGridDBColumn
                    Caption = #25191#34892#26085#26399
                    PropertiesClassName = 'TcxButtonEditProperties'
                    Properties.Buttons = <
                      item
                        Default = True
                        Kind = bkEllipsis
                      end>
                    Properties.OnButtonClick = FWorkCarry_WTItemPropertiesButtonClick
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 109
                    DataBinding.FieldName = 'FWorkCarry'
                  end
                  object FBidDate_WTItem: TcxGridDBColumn
                    Caption = #25307#26631#26085#26399
                    PropertiesClassName = 'TcxDateEditProperties'
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 86
                    DataBinding.FieldName = 'FBidDate'
                  end
                  object FDepartmentNum_WTItem: TcxGridDBColumn
                    Caption = #37096#38376#20195#30721
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 54
                    DataBinding.FieldName = 'FDepartmentNum'
                  end
                  object FWorkTaskItemRemark_WTItem: TcxGridDBColumn
                    Caption = #20219#21153#20449#24687
                    PropertiesClassName = 'TcxButtonEditProperties'
                    Properties.Buttons = <
                      item
                        Default = True
                        Kind = bkEllipsis
                      end>
                    Properties.OnButtonClick = FWorkTaskItemRemark_WTItemPropertiesButtonClick
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 96
                    DataBinding.FieldName = 'FWorkTaskItemRemark'
                  end
                  object FClientFullName_WTItem: TcxGridDBColumn
                    Caption = #39033#30446#21517#31216
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 256
                    DataBinding.FieldName = 'FClientFullName'
                  end
                  object FItemModel_WTItem: TcxGridDBColumn
                    Caption = #39033#30446#22411#21495
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 94
                    DataBinding.FieldName = 'FItemModel'
                  end
                  object FItemQry_WTItem: TcxGridDBColumn
                    Caption = #21488#22871#25968
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    DataBinding.FieldName = 'FItemQry'
                  end
                  object FE05_WTItem: TcxGridDBColumn
                    Caption = #34917#20805#35828#26126
                    PropertiesClassName = 'TcxButtonEditProperties'
                    Properties.Buttons = <
                      item
                        Default = True
                        Kind = bkEllipsis
                      end>
                    Properties.OnButtonClick = FE05_WTItemPropertiesButtonClick
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 255
                    DataBinding.FieldName = 'FE05'
                  end
                  object FAgentName_WTItem: TcxGridDBColumn
                    Caption = #29983#20135#21333#20301
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 227
                    DataBinding.FieldName = 'FAgentName'
                  end
                  object FWorkTaskItemID_WTItem: TcxGridDBColumn
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 92
                    DataBinding.FieldName = 'FWorkTaskItemID'
                  end
                  object FWorkStatus_WTItem: TcxGridDBColumn
                    Caption = #29366#24577#20540
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 41
                    DataBinding.FieldName = 'FWorkStatus'
                  end
                  object FWorkCarryID_WTItem: TcxGridDBColumn
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 72
                    DataBinding.FieldName = 'FWorkCarryID'
                  end
                  object FWorkCarryJobID_WTItem: TcxGridDBColumn
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 89
                    DataBinding.FieldName = 'FWorkCarryJobID'
                  end
                  object FDepartmentID_WTItem: TcxGridDBColumn
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taRightJustify
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 77
                    DataBinding.FieldName = 'FDepartmentID'
                  end
                  object FFileItemId_WTItem: TcxGridDBColumn
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 56
                    DataBinding.FieldName = 'FFileItemId'
                  end
                end
                object cxGL_WTItem: TcxGridLevel
                  GridView = cxGV_WTItem
                end
              end
              object ToolBar_Edit: TToolBar
                Left = 0
                Top = 0
                Width = 800
                Height = 40
                ButtonHeight = 35
                ButtonWidth = 31
                Caption = 'ToolBar_Edit'
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
                object TB_Ref: TToolButton
                  Left = 0
                  Top = 0
                  AutoSize = True
                  Caption = #21047#26032
                  ImageIndex = 8
                  OnClick = TB_RefClick
                end
                object TB_App: TToolButton
                  Left = 35
                  Top = 0
                  Action = Act_App
                  AutoSize = True
                  Visible = False
                end
                object TB_Edit: TToolButton
                  Left = 70
                  Top = 0
                  AutoSize = True
                  Caption = #20462#25913
                  ImageIndex = 1
                  Visible = False
                  OnClick = TB_EditClick
                end
                object TB_Del: TToolButton
                  Left = 105
                  Top = 0
                  AutoSize = True
                  Caption = #21024#38500
                  ImageIndex = 2
                  Visible = False
                  OnClick = TB_DelClick
                end
                object TB_Submit: TToolButton
                  Left = 140
                  Top = 0
                  AutoSize = True
                  Caption = #25552#20132
                  ImageIndex = 10
                  Visible = False
                end
                object TB_Check: TToolButton
                  Left = 175
                  Top = 0
                  Action = Act_Check
                  AutoSize = True
                  Visible = False
                end
                object TB_Audit: TToolButton
                  Left = 210
                  Top = 0
                  Action = Act_Audit
                  AutoSize = True
                  Visible = False
                end
                object TB_PushDown: TToolButton
                  Left = 245
                  Top = 0
                  Action = Act_PushDown
                  AutoSize = True
                  Visible = False
                end
                object ToolButton5: TToolButton
                  Left = 280
                  Top = 0
                  Width = 8
                  Caption = 'ToolButton5'
                  Enabled = False
                  ImageIndex = 4
                  Style = tbsSeparator
                end
                object TB_Prin: TToolButton
                  Left = 288
                  Top = 0
                  Cursor = crHandPoint
                  AutoSize = True
                  Caption = #25171#21360
                  ImageIndex = 4
                  Visible = False
                end
                object TB_EXIT: TToolButton
                  Left = 323
                  Top = 0
                  Cursor = crHandPoint
                  AutoSize = True
                  Caption = #36864#20986
                  ImageIndex = 5
                  OnClick = TB_EXITClick
                end
              end
            end
          end
        end
        object TS_Price: TRzTabSheet
          Color = 14935011
          Caption = #32467#31639#21333#20215
          object ToolBar3: TToolBar
            Left = 0
            Top = 0
            Width = 1016
            Height = 35
            AutoSize = True
            ButtonHeight = 35
            ButtonWidth = 55
            Caption = #20462#25913
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
            object ToolButton7: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = #36873#25321'[&S]'
              ImageIndex = 22
              OnClick = ToolButton7Click
            end
            object ToolButton1: TToolButton
              Left = 53
              Top = 0
              Action = Act_Sel_Price_ALL
              AutoSize = True
            end
            object TB_Ref3: TToolButton
              Left = 88
              Top = 0
              AutoSize = True
              Caption = #21047#26032
              ImageIndex = 8
            end
          end
          object cxGrid_WTP: TcxGrid
            Left = 0
            Top = 35
            Width = 1016
            Height = 561
            Align = alClient
            PopupMenu = PM
            TabOrder = 1
            OnContextPopup = cxGrid_WTPContextPopup
            object cxGV_WTP: TcxGridDBTableView
              DataController.DataSource = DS_Mdata_WTP
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
              NavigatorButtons.Post.Visible = False
              NavigatorButtons.Cancel.Visible = False
              NavigatorButtons.Refresh.Visible = False
              NavigatorButtons.SaveBookmark.Visible = False
              NavigatorButtons.GotoBookmark.Visible = False
              NavigatorButtons.Filter.Visible = False
              OptionsData.Appending = True
              OptionsData.CancelOnExit = False
              OptionsData.DeletingConfirmation = False
              OptionsSelection.MultiSelect = True
              OptionsView.Navigator = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              object IsEdit: TcxGridDBColumn
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.DisplayUnchecked = 'False'
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Filtering = False
                Width = 32
                DataBinding.FieldName = 'IsEdit'
              end
              object FParentNumbe_WTP: TcxGridDBColumn
                Caption = #19978#32423#32534#30721
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
                Width = 53
                DataBinding.FieldName = 'FParentNumber'
              end
              object FNumber_WTP: TcxGridDBColumn
                Caption = #26412#32423#32534#30721
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
                Width = 71
                DataBinding.FieldName = 'FNumber'
              end
              object FWorkTaskPartsName_WTP: TcxGridDBColumn
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
                Width = 166
                DataBinding.FieldName = 'FWorkTaskPartsName'
              end
              object FWorkTaskPartsModel_WTP: TcxGridDBColumn
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
                Width = 187
                DataBinding.FieldName = 'FWorkTaskPartsModel'
              end
              object FWorkTaskPartsUnit_WTP: TcxGridDBColumn
                Caption = #21333#20301
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Width = 29
                DataBinding.FieldName = 'FWorkTaskPartsUnit'
              end
              object FBalanceBasePrice_WTP: TcxGridDBColumn
                Caption = #32467#31639#22522#20215
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DecimalPlaces = 5
                Properties.DisplayFormat = ',0.00000;-,0.00000'
                Properties.ValidateOnEnter = True
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Width = 65
                DataBinding.FieldName = 'FBalanceBasePrice'
              end
              object FMaterialBasePrice_WTP: TcxGridDBColumn
                Caption = #26448#26009#22522#20215
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DecimalPlaces = 5
                Properties.DisplayFormat = ',0.00000;-,0.00000'
                Properties.ValidateOnEnter = True
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Width = 53
                DataBinding.FieldName = 'FMaterialBasePrice'
              end
              object FMaterialResizePrice_WTP: TcxGridDBColumn
                Caption = #26448#26009#35843#25972
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DecimalPlaces = 5
                Properties.DisplayFormat = ',0.00000;-,0.00000'
                Properties.ValidateOnEnter = True
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Width = 53
                DataBinding.FieldName = 'FMaterialResizePrice'
              end
              object FMaterialPrice_WTP: TcxGridDBColumn
                Caption = #26448#26009#32467#31639#20215
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DecimalPlaces = 5
                Properties.DisplayFormat = ',0.00000;-,0.00000'
                Properties.ValidateOnEnter = True
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Width = 65
                DataBinding.FieldName = 'FMaterialPrice'
              end
              object FWorkBasePrice_WTP: TcxGridDBColumn
                Caption = #24037#31649#22522#20215
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DecimalPlaces = 5
                Properties.DisplayFormat = ',0.00000;-,0.00000'
                Properties.ValidateOnEnter = True
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Width = 53
                DataBinding.FieldName = 'FWorkBasePrice'
              end
              object FWorkResizePrice_WTP: TcxGridDBColumn
                Caption = #24037#31649#35843#25972
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DecimalPlaces = 5
                Properties.DisplayFormat = ',0.00000;-,0.00000'
                Properties.ValidateOnEnter = True
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Width = 53
                DataBinding.FieldName = 'FWorkResizePrice'
              end
              object FWorkPrice_WTP: TcxGridDBColumn
                Caption = #24037#31649#32467#31639#20215
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DecimalPlaces = 5
                Properties.DisplayFormat = ',0.00000;-,0.00000'
                Properties.ValidateOnEnter = True
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Width = 65
                DataBinding.FieldName = 'FWorkPrice'
              end
              object FProductName_WTP: TcxGridDBColumn
                Caption = #20135#21697#31867#22411
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Width = 78
                DataBinding.FieldName = 'FProductName'
              end
              object FWorkTaskPartsRemark_WTP: TcxGridDBColumn
                Caption = #32467#31639#37096#20214#22791#27880
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Width = 163
                DataBinding.FieldName = 'FWorkTaskPartsRemark'
              end
              object FWorkTaskPriceID_WTP: TcxGridDBColumn
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Width = 96
                DataBinding.FieldName = 'FWorkTaskPriceID'
              end
              object FWorkTaskPartsID_WTP: TcxGridDBColumn
                Caption = #32467#31639#37096#20214'ID'
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Width = 64
                DataBinding.FieldName = 'FWorkTaskPartsID'
              end
              object FWorkCarryID_WTP: TcxGridDBColumn
                Caption = #26448#26009#25191#34892'ID'
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                DataBinding.FieldName = 'FWorkCarryID'
              end
              object FWorkCarry_WTP: TcxGridDBColumn
                Caption = #26448#26009#25191#34892#26085#26399
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Width = 76
                DataBinding.FieldName = 'FWorkCarry'
              end
              object FWorkCarryJob_WTP: TcxGridDBColumn
                Caption = #24037#31649#25191#34892#26085#26399
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Width = 77
                DataBinding.FieldName = 'FWorkCarryJob'
              end
              object FWorkCarryJobID_WTP: TcxGridDBColumn
                Caption = #24037#31649#25191#34892'ID'
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                DataBinding.FieldName = 'FWorkCarryJobID'
              end
            end
            object cxGL_WTP: TcxGridLevel
              GridView = cxGV_WTP
            end
          end
        end
      end
      inherited Panel_down: TPanel
        Top = 617
        Width = 1018
        Height = 14
        inherited Bevel_bass: TBevel
          Width = 1018
          Height = 1
        end
      end
    end
  end
  object MData_WTList: TdxMemData
    Indexes = <>
    SortOptions = []
    SortedField = 'FWorkItemListNum'
    BeforePost = MData_WTListBeforePost
    Left = 83
    Top = 208
  end
  object DS_Mdata_WTList: TDataSource
    DataSet = MData_WTList
    Left = 35
    Top = 208
  end
  object ImageList: TImageList
    Left = 35
    Top = 406
    Bitmap = {
      494C01011A001D00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000008000000001002000000000000080
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000810
      1000000000000008080000000000FFF7F7000000000000101000000008000008
      1000637B8400F7FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000008484840000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF000000
      0800A5F7FF009CEFF7000008100008000800100008000000080063E7EF005AE7
      F700000818006B84840000000000000000000000000000000000000000000000
      0000848484000000000000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF000000
      08009CFFFF0063D6E700000008006B7B8C007B8494000008180039EFF70029EF
      F700218C9400000810007B848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF000010
      10008CFFFF005AE7EF000008180000081800000018000008210021E7F70021F7
      F70008A59C003994940000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF000000
      00009CFFFF0063E7E7006BDEEF0073DEEF007BDEEF0073EFFF0031DEE70031E7
      EF0010ADA500319C940000000000000000000000000084848400000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      000000000000000000000000000063639C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFF700FFFFFF00FFFFFF000008
      080084CED60084DEE7008CDEDE001873730018737300298C940031A5AD00299C
      AD00188C84004A9C9C0000080800000000008484840000000000000000000000
      0000000000000000000000000000C6C6C6000000000000000000000000000000
      0000000000000000000063639C00319CCE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFF700737B73007B948C000008
      00000008080000080800001008000008000063ADA500C6FFFF00B5F7FF00B5F7
      FF005AA5A5004A84840000000000000000008484840000000000000000000000
      00000000000084848400C6C6C600000000008484840000000000000000008484
      84000000000063639C00319CCE0063CEFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000848C7B0000080000000800000018
      080029AD9C0021B5A500087B630018735A00000800007B948C005A7B7B006384
      8400638C8C006B8C8C0000000000000000008484840000000000000000000000
      0000848484000000000000000000000000000000000000000000000000000000
      000063639C00319CCE0063CEFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDDECE006BAD9C004AB5
      9C0018AD940029BDA500087B5A00317B6300001000009C9C9400F7FFFF00737B
      8400EFFFFF006B7B7B0000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000006363
      9C00319CCE0063CEFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5DED6005AAD9C0042AD
      94004AB5A50042AD9C0021735A004A7363000000000000000000000808000000
      0000000000000000000000080800000000000000000000000000C6C6C600C6C6
      C60000000000000000000000000000000000000000000000000063639C00319C
      CE0063CEFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7FFFF00000800009CDED6000010
      0800000808000010100039635A000008000084948400F7FFF700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7FFFF00000000000000000084848400C6C6C6000000
      0000000000000000000000000000000000000000000063639C00319CCE0063CE
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF000000000084AD
      B5005A8C9400527B8400000808007B8C8400FFFFF700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000848484008484
      84000000000000000000000000000000000063639C00319CCE0063CEFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000810008CA5
      B5008CA5B50073849C00000000007B847B00FFFFFF00FFFFF700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700000000000000000000000000000000000000
      000000000000000000000000000063639C00319CCE0063CEFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00EFF7F7000008100094AD
      B5008494AD007384940000000800FFFFFF00FFFFFF0000000000FFF7FF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000063639C00319CCE0063CEFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7FFFF00F7FFFF00E7FFFF000000
      08000000100000001000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000063639C00319CCE0063CEFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF310000FF310000FF310000FF310000FF310000FF31
      0000FF310000FF310000FF310000FF3100000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006B73
      7300212121006B7373000000000000000000000000006B7373006B7373000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF310000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF3100000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002121
      2100101010002121210000000000000000000000000021212100212121000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF310000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF3100000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006B73
      7300212121006B7373000000000000000000000000006B7373006B7373000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF310000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF3100000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      0000000000000000FF000000000000000000000000000000000000000000FF31
      0000FF310000FF310000FF310000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF3100000000000000000000000000000000
      0000000000008400000084000000840000008400000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000006B73
      73006B7373006B7373006B7373006B7373006B7373006B737300C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00000000000000
      00000000FF000000FF000000000000000000000000000000000000000000FF31
      0000FFFFFF00FFFFFF00FF310000FF310000FF310000FF310000FF310000FF31
      0000FF310000FF310000FF310000FF3100000000000000000000000000000000
      0000000000008400000084000000840000008400000084000000840000008400
      00000000000000000000000000000000000000000000000000006B7373001010
      10001010100010101000101010001010100010101000101010006B7373000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF00000000000000000000000000000000000000000000000000FF31
      0000FFFFFF00FFFFFF00FF310000FF310000FF310000FF310000FF310000FF31
      0000FFCE9C00FF3100006363FF00FF3100000000000000000000000000000000
      0000000000008400000084000000840000008400000084000000840000008400
      0000000000000000000000000000000000000000000000000000101010002121
      21000000000000000000000000000000000000000000C6C6C60010101000C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C6000000FF000000
      FF000000FF00000000000000000000000000000000000000000000000000FF31
      0000FFFFFF00FFFFFF00FFCE9C00FF310000FF310000FF310000FF310000FF31
      0000FF310000FF310000FF310000FFCE9C000000000000000000000000000000
      000000000000840000008400000084000000FFFFFF0084000000840000008400
      0000000000000000000000000000000000000000000000000000101010001010
      1000000000001010100010101000000000001010100000000000101010006B73
      7300000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00C6C6C600C6C6
      C6000000FF000000FF000000000000000000FF310000FF310000FF310000FF31
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FF3100000000000000000000000000000000000000000000000000000000
      000000000000840000008400000084000000FFFFFF0084000000840000008400
      0000000000000000000000000000000000000000000000000000101010000000
      0000000000000000000000000000000000000000000000000000212121001010
      1000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000848484000000FF00FF000000FF000000FF00
      000000000000000000000000000000000000FF310000FFFFFF00FFFFFF00FF31
      0000FF310000FF310000FF310000FF310000FF310000FF310000FF310000FF31
      0000FF3100000000000000000000000000000000000000000000000000000000
      0000000000008400000084000000840000008400000084000000840000008400
      00000000000000000000000000000000000000000000000000006B7373001010
      10000000000010101000101010000000000010101000000000006B7373001010
      10006B7373000000000000000000000000000000000000000000FF0000000000
      00000000000000000000000000000000FF00848484000000000000000000FF00
      000000000000000000000000000000000000FF310000FFFFFF00FFFFFF00FF31
      0000FF310000FF310000FF310000FF310000FF310000FFCE9C00FF3100006363
      FF00FF3100000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000000000000000000000000000840000000000
      0000000000000000000000000000000000000000000021212100C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000001010
      1000101010000000000000000000000000000000000000000000FF0000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      000000000000000000000000000000000000FF310000FFFFFF00FFFFFF00FFCE
      9C00FF310000FF310000FF310000FF310000FF310000FF310000FF310000FF31
      0000FFCE9C000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000000000000000000000000000840000000000
      0000000000000000000000000000000000000000000010101000C6C6C6002121
      2100000000001010100010101000000000001010100000000000000000001010
      1000101010006B73730000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      000000000000000000000000000000000000FF310000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF310000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000101010001010100000000000000000000000000000000000FF000000C6C6
      C600FF000000FF000000FF000000FF000000C6C6C600FF000000C6C6C600FF00
      000000000000000000000000000000000000FF310000FF310000FF310000FF31
      0000FF310000FF310000FF310000FF310000FF310000FF310000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006B737300101010006B7373006B7373000000000000000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      000000000000000000000000000000000000FF310000FF310000FF310000FF31
      0000FF310000FF310000FFCE9C00FF3100006363FF00FF310000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C6001010100010101000101010000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFCE9C00FF310000FF310000FF31
      0000FF310000FF310000FF310000FF310000FF310000FFCE9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840084848400848484000000000000000000000000000000
      00000000000000000000000000000000000000000000FF9C0000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE6300000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400B5B5B5009C9C9C00B5B5B5008484840084848400000000000000
      000000000000000000000000000000000000FF9C0000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE63
      000000000000000000000000000000000000FFCE9C00CE9C6300CE9C6300CE9C
      6300CE9C6300CECECE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE636300CE636300CE636300CE63
      6300CE636300CE636300CE636300CE636300CE636300CE636300CE636300CE63
      6300CE636300CE636300CE636300CE6363000000000000000000000000008484
      8400B5B5B5009C9C9C000000000000000000B5B5B500B5B5B500848484008484
      840000000000000000000000000000000000FF9C0000CE630000E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700CE63
      000000000000000000000000000000000000FFCE9C00F7EFBD00F7EFBD00CECE
      FF00E7E7E700CE9C6300CE9C6300CECECE000000000000000000000000000000
      000000000000000000000000000000000000CE636300FFFFFF00FFFFFF00FFCE
      CE00FFFFFF00FFFFFF00FFCECE00FFFFFF00FFFFFF00FFCECE00FFFFFF00FFFF
      FF00FFCECE00FFFFFF00FFFFFF00CE6363000000000000000000000000008484
      84009C9C9C00000000009C9C9C009C9C9C000000000000000000B5B5B500B5B5
      B50084848400848484000000000000000000FF9C0000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE63
      000000000000000000000000000000000000FFCE9C00FFFFFF00FFFFFF00CECE
      FF00FFFFFF00FFFFFF00E7E7E700CE9C63000000000000000000000000000000
      000000000000000000000000000000000000CE636300FFFFFF00FFFFFF00FFCE
      CE00FFFFFF00FFFFFF00FFCECE00FFFFFF00FFFFFF00FFCECE00FFFFFF00FFFF
      FF00FFCECE00FFFFFF00FFFFFF00CE636300000000000000000084848400B5B5
      B5009C9C9C000000000084848400B5B5B5009C9C9C0000000000000000000000
      0000B5B5B500B5B5B5008484840000000000FF9C0000CE630000E7E7E700E7E7
      E700E7E7E700E7E7E700CECECE00CECECE00CECECE00CECECE00CECECE00CE63
      000000000000000000000000000000000000FFCE9C00F7EFBD00F7EFBD00CECE
      FF00F7EFBD00F7EFBD00F7EFBD00CE9C6300CECECE0000000000000000000000
      000000000000000000000000000000000000CE636300FFCECE00FFCECE00FFCE
      CE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCE
      CE00FFCECE00FFCECE00FFCECE00CE6363000000000000000000848484009C9C
      9C0000000000B5B5B50084848400B5B5B5009C9C9C0000000000848484008484
      840000000000000000008484840000000000FF9C0000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700CE63
      000000000000000000000000000000000000FFCE9C00FFFFFF00CECECE00CECE
      FF00FFFFFF00FFFFFF00FFFFFF00E7E7E700CE9C6300CECECE00000000000000
      000000000000000000000000000000000000CE636300FFFFFF00FFFFFF00FFCE
      CE00FFFFFF00FFFFFF00FFCECE00FFFFFF00FFFFFF00FFCECE00FFFFFF00FFFF
      FF00FFCECE00FFFFFF00FFFFFF00CE6363000000000084848400B5B5B5009C9C
      9C0000000000B5B5B500E7E7E700B5B5B500000000000000000000000000B5B5
      B50084848400000000008484840000000000FF9C0000CE630000E7E7E700E7E7
      E700E7E7E700CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CE63
      000000000000000000000000000000000000FFCE9C00F7EFBD00F7EFBD00CECE
      FF00F7EFBD00F7EFBD00F7EFBD00F7EFBD00E7E7E700CE9C6300CE9C6300CE9C
      6300CECECE00000000000000000000000000CE636300FFFFFF00FFFFFF00FFCE
      CE00FFFFFF00FFFFFF00FFCECE00FFFFFF00FFFFFF00FFCECE00FFFFFF00FFFF
      FF00FFCECE00FFFFFF00FFFFFF00CE63630000000000848484009C9C9C000000
      0000B5B5B500E7E7E700E7E7E700B5B5B5000000000084848400848484000000
      000000000000000000008484840000000000FF9C0000CE630000FFFFFF00FFFF
      FF00FFFFFF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700CE63
      000000000000000000000000000000000000FFCE9C00FFFFFF00FFFFFF00CECE
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E7
      E700CE9C6300CE9C6300CE9C6300CECECE00CE636300FFCECE00FFCECE000000
      9C0000009C0000009C0000009C00FFCECE00FFCECE00FFCECE00FFCECE00FFCE
      CE00FFCECE00FFCECE00FFCECE00CE63630084848400B5B5B5009C9C9C000000
      00000000000000000000B5B5B500000000000000000000000000B5B5B5008484
      840000000000848484000000000000000000FF9C0000CE630000E7E7E700E7E7
      E700CECECE00CECECE00CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000FFCE9C00F7EFBD00F7EFBD00CECE
      FF00F7EFBD00F7EFBD00F7EFBD00F7EFBD00F7EFBD00F7EFBD00F7EFBD00F7EF
      BD00F7EFBD00F7EFBD00E7E7E700CE9C6300CE636300FFFFFF00FFFFFF000000
      9C00FFFFFF00FFFFFF0000009C00FFFFFF00FFFFFF00FFCECE00FFFFFF00FFFF
      FF00FFCECE00FFFFFF00FFFFFF00CE636300848484009C9C9C00000000000000
      0000848484008484840000000000000000008484840084848400000000000000
      000000000000848484000000000000000000FF9C0000CE630000FFFFFF00FFFF
      FF00E7E7E700CE630000FF9C0000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000FFCE9C00FFFFFF00FFFFFF00CECE
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C6300CE636300FFFFFF00FFFFFF000000
      9C00FFFFFF00FFFFFF0000009C00FFFFFF00FFFFFF00FFCECE00FFFFFF00FFFF
      FF00FFCECE00FFFFFF00FFFFFF00CE636300000000009C9C9C009C9C9C000000
      000000000000B5B5B50084848400848484000000000000000000848484000000
      000084848400000000000000000000000000FF9C0000CE630000E7E7E700CECE
      CE00FF9C0000FF9C0000FF9C0000FF9C0000FF9C0000CE630000CE630000CE63
      0000CE630000CE630000CE63000000000000FFCE9C00F7EFBD00F7EFBD00CECE
      FF00F7EFBD00F7EFBD00F7EFBD00F7EFBD00F7EFBD00F7EFBD00F7EFBD00F7EF
      BD00F7EFBD00F7EFBD00F7EFBD00CE9C6300CE636300FFCECE00FFCECE000000
      9C0000009C0000009C0000009C00FFCECE00FFCECE00FFCECE00FFCECE00FFCE
      CE00FFCECE00FFCECE00FFCECE00CE6363000000000000000000000000009C9C
      9C009C9C9C000000000000000000B5B5B5008484840084848400000000000000
      000084848400000000000000000000000000FF9C0000CE630000FFFFFF00FF9C
      0000FF9C6300FF9C6300FF9C0000FF9C0000FF9C0000FF9C0000FF9C0000CE63
      0000CE630000CE6300000000000000000000FFCE9C00FFFFFF00CECECE00CECE
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C6300CE636300FFFFFF00FFFFFF00FFCE
      CE00FFFFFF00FFFFFF00FFCECE00FFFFFF00FFFFFF00FFCECE00FFFFFF00FFFF
      FF00FFCECE00FFFFFF00FFFFFF00CE6363000000000000000000000000000000
      0000000000009C9C9C009C9C9C000000000000000000B5B5B500000000008484
      840000000000000000000000000000000000FF9C0000CE630000FF9C0000FF9C
      6300FF9C6300FF9C6300FF9C6300FF9C6300FF9C0000FF9C0000FF9C0000FF9C
      0000CE630000000000000000000000000000FFCE9C00FFFFFF00FFFFFF00CECE
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C6300CE636300FFFFFF00FFFFFF00FFCE
      CE00FFFFFF00FFFFFF00FFCECE00FFFFFF00FFFFFF00FFCECE00FFFFFF00FFFF
      FF00FFCECE00FFFFFF00FFFFFF00CE6363000000000000000000000000000000
      00000000000000000000000000009C9C9C009C9C9C0000000000000000008484
      840000000000000000000000000000000000FF9C0000FF9C0000FF9C6300FF9C
      6300FF9C6300FF9C6300FF9C6300FF9C6300FF9C6300FF9C6300FF9C0000CE63
      000000000000000000000000000000000000FFCE9C00FFFFFF00FFFFFF00CECE
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C6300CE636300FFCECE00CE636300CE63
      6300FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCE
      CE00CE636300CE636300FFCECE00CE6363000000000000000000000000000000
      000000000000000000000000000000000000000000009C9C9C009C9C9C000000
      00000000000000000000000000000000000000000000FF9C00009C9C9C00FFFF
      FF009C9C9C00FFFFFF009C9C9C00FFFFFF009C9C9C00FFFFFF009C9C9C00FFFF
      FF0000000000000000000000000000000000FFCE9C00FFCE9C00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00CE636300FFCECE00FFCECE00FFCE
      CE00FFCECE00FFCECE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFCECE00FFCE
      CE00FFCECE00FFCECE00FFCECE00CE6363000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C9C9C00CECE
      CE009C9C9C00CECECE009C9C9C00CECECE009C9C9C00CECECE009C9C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE636300CE636300CE636300CE63
      6300CE636300CE636300CE636300CE636300CE636300CE636300CE636300CE63
      6300CE636300CE636300CE636300CE636300000000000000000000000000CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C63000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840084848400848484000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CE9C
      6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C63000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C63000000000000000000000000000000
      000084848400B5B5B5009C9C9C00B5B5B5008484840084848400000000000000
      000000000000000000000000000000000000000000000000000000000000CE9C
      6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C63000000000000000000000000000000
      00000000000000000000000000000000FF000000840000000000000000000000
      00000000000000000000000000000000000000000000CE9C6300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C63000000000000000000000000008484
      8400B5B5B5009C9C9C00FFFFFF00FFFFFF00B5B5B500B5B5B500848484008484
      840000000000000000000000000000000000000000000000000000000000CE9C
      6300FFFFFF00FFFFFF00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00FFFFFF00FFFFFF00CE9C63000000000000000000000000000000
      000000000000000000000000FF0000009C0000009C0000008400000000000000
      00000000000000000000000000000000000000000000CE9C6300FFFFFF009C31
      00009C3100009C3100009C3100009C3100009C3100009C3100009C3100009C31
      00009C3100009C310000FFFFFF00CE9C63000000000000000000000000008484
      84009C9C9C00FFFFFF009C9C9C009C9C9C00FFFFFF00FFFFFF00B5B5B500B5B5
      B5008484840084848400000000000000000000009C000000000000000000CE9C
      6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C63000000000000000000000000000000
      000000000000000000000000FF0000009C000000840000009C00000084000000
      00000000000000000000000000000000000000000000CE9C6300FFFFFF009C31
      0000CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C63009C310000FFFFFF00CE9C6300000000000000000084848400B5B5
      B5009C9C9C00FFFFFF0084848400B5B5B5009C9C9C00FFFFFF00FFFFFF00FFFF
      FF00B5B5B500B5B5B50084848400000000000000CE0000009C0000000000CE9C
      6300FFFFFF009C3100009C3100009C3100009C3100009C3100009C3100009C31
      00009C3100009C310000FFFFFF00CE9C63000000000000000000000000000000
      000000000000000000000000FF0000009C0000009C000000840000009C000000
      84000000000000000000000000000000000000000000CE9C6300FFFFFF009C31
      00009C3100009C3100009C3100009C3100009C3100009C3100009C3100009C31
      00009C3100009C310000FFFFFF00CE9C63000000000000000000848484009C9C
      9C00FFFFFF00B5B5B50084848400B5B5B5009C9C9C00FFFFFF00848484008484
      8400FFFFFF00FFFFFF0084848400000000000000FF000000CE0000009C00CE9C
      6300FFFFFF009C310000CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C63009C310000FFFFFF00CE9C63000000000000000000000000000000
      000000000000FFFFFF00CE9C630000009C0000009C0000009C000000FF000000
      9C000000840000000000000000000000000000000000CE9C6300FFFFFF009C31
      0000CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C63009C310000FFFFFF00CE9C63000000000084848400B5B5B5009C9C
      9C00FFFFFF00B5B5B500E7E7E700B5B5B500FFFFFF00FFFFFF00FFFFFF00B5B5
      B50084848400FFFFFF0084848400000000000000FF000000CE0000000000CE9C
      6300FFFFFF009C3100009C3100009C3100009C3100009C3100009C3100009C31
      00009C3100009C310000FFFFFF00CE9C63000000000000000000000000000000
      000000000000FFFFFF00FFCE9C00FFCE9C0000009C000000FF000000FF000000
      FF0000009C0000008400000000000000000000000000CE9C6300FFFFFF009C31
      00009C3100009C3100009C3100009C3100009C3100009C3100009C3100009C31
      00009C3100009C310000FFFFFF00CE9C630000000000848484009C9C9C00FFFF
      FF00B5B5B500E7E7E700E7E7E700B5B5B500FFFFFF008484840084848400FFFF
      FF00FFFFFF00FFFFFF0084848400000000000000FF000000000000000000CE9C
      6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C63000000000000000000000000000000
      0000FFFFFF00FFCE9C00FFCE9C00FFFFFF00FFFFFF000000FF00319CFF00319C
      FF00319CFF0000009C00000000000000000000000000CE9C6300FFFFFF009C31
      0000CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C63009C310000FFFFFF00CE9C630084848400B5B5B5009C9C9C00FFFF
      FF00FFFFFF00FFFFFF00B5B5B500FFFFFF00FFFFFF00FFFFFF00B5B5B5008484
      8400FFFFFF00848484000000000000000000000000000000000000000000CE9C
      6300FFFFFF00FFFFFF00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00FFFFFF00FFFFFF00CE9C6300000000000000000000000000FFFF
      FF00FFCE9C00FFCE9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000009C000000
      9C0000009C0000000000000000000000000000000000CE9C6300FFFFFF009C31
      00009C3100009C3100009C3100009C3100009C3100009C3100009C3100009C31
      00009C3100009C310000FFFFFF00CE9C6300848484009C9C9C00FFFFFF00FFFF
      FF009C3100009C310000FFFFFF00FFFFFF008484840084848400FFFFFF00FFFF
      FF00FFFFFF00848484000000000000000000000000000000000000000000CE9C
      6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C63000000000000000000FFFFFF00FFCE
      9C00FFCE9C00FFFFFF00FFFFFF00FFFFFF00CE9C6300CE9C6300000000000000
      00000000000000000000000000000000000000000000CE9C6300FFFFFF009C31
      0000CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C63009C310000FFFFFF00CE9C6300000000009C9C9C009C9C9C00FFFF
      FF00FFFFFF00B5B5B5009C3100009C310000FFFFFF00FFFFFF0084848400FFFF
      FF0084848400000000000000000000000000000000000000000000000000CE9C
      6300FFFFFF00FFFFFF00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00FFFFFF00FFFFFF00CE9C630000000000FFFFFF00FFCE9C00FFCE
      9C00FFFFFF00FFFFFF00FFFFFF00CE9C63000000000000000000000000000000
      00000000000000000000000000000000000000000000CE9C6300FFFFFF009C31
      00009C3100009C3100009C3100009C3100009C3100009C3100009C3100009C31
      00009C3100009C310000FFFFFF00CE9C63000000000000000000000000009C9C
      9C009C9C9C00FFFFFF00FFFFFF00B5B5B5009C3100009C310000FFFFFF00FFFF
      FF0084848400000000000000000000000000000000000000000000000000CE9C
      6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C6300FFFFFF00FFCE9C00FFCE9C00FFFF
      FF00FFFFFF00FFFFFF00CE9C63000000FF000000000000000000000000000000
      00000000000000000000000000000000000000000000CE9C6300FFFFFF009C31
      0000CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C63009C310000FFFFFF00CE9C63000000000000000000000000000000
      0000000000009C9C9C009C9C9C00FFFFFF00FFFFFF00B5B5B500FFFFFF008484
      840000000000000000000000000000000000000000000000000000000000CE9C
      6300FFFFFF00FFFFFF00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00FFFFFF00FFFFFF00CE9C6300CE9C6300FFCE9C00FFFFFF00FFFF
      FF00FFFFFF00CE9C63000000FF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE9C6300FFFFFF009C31
      00009C3100009C3100009C3100009C3100009C3100009C3100009C3100009C31
      00009C3100009C310000FFFFFF00CE9C63000000000000000000000000000000
      00000000000000000000000000009C9C9C009C9C9C00FFFFFF00FFFFFF008484
      840000000000000000000000000000000000000000000000000000000000CE9C
      6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C630000000000CE9C6300FFFFFF00FFFF
      FF00CE9C63000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE9C6300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C63000000000000000000000000000000
      000000000000000000000000000000000000000000009C9C9C009C9C9C000000
      000000000000000000000000000000000000000000000000000000000000CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C63000000000000000000CE9C6300CE9C
      6300000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C63000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000008080000080000000800
      0000100808000000000000000000000800000008000008080000100000001000
      080000000800BDC6C60000000000000000000000000000000000000000000000
      00000000000063CECE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C8C8C00C6C6C600CED6D600CED6
      CE00BDCEC600BDCEC600BDDEC600B5D6C600BDD6C600C6CECE00CECECE00CEC6
      CE0000000000C6D6D60000000000000000000000000000000000000000000000
      00000000000063CECE00009CCE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848C00F7FFFF00E7FFFF00D6FF
      F700D6FFFF00BDFFF70021845200B5FFDE00DEFFFF00DEEFFF00EFFFFF00BDCE
      D60000000800C6C6CE0000000000000000000000000000000000000000000000
      0000000000000000000063CECE00009CCE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF0000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000848C8C00EFFFFF00D6FFFF00CEFF
      FF00B5FFEF00107B5200108C5200B5FFE700BDFFE700DEFFFF00D6F7F700B5CE
      CE0000080800BDC6C60000000000000000000000000000000000000000000000
      0000000000000000000063CECE009CFFFF00009CCE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000073848C00EFFFFF00DEFFFF00BDFF
      EF0010845200088C520008844A0018844A00317B4200D6FFDE00DEFFF700B5CE
      CE0000080800CECECE0000000000000000000000000000000000000000000000
      000063CECE00009CCE00009CCE00009CCE0063FFFF00009CCE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000FFFFFF008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000073848400EFFFFF00CEFFEF00CEFF
      F700A5FFDE00108C4A0010845200BDFFE7003984390029632100D6FFDE00BDD6
      CE0000000000C6BDC60000000000000000000000000000000000000000000000
      000063CECE009CFFFF0063FFFF0063FFFF0063FFFF0063FFFF00009CCE000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      000000000000000000000000000063639C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000000000000000000000000000007B8C8400F7FFFF00E7FFF700CEFF
      DE00CEFFEF00B5FFE70021846300ADFFDE00DEFFDE0029521800E7FFF700BDD6
      CE0000000800D6CEDE0000000000000000000000000000000000000000000000
      00000000000063CECE009CFFFF0063FFFF00009CCE0063CECE0063CECE0063CE
      CE000000000000000000000000000000000084848400FFFFFF00FFFFFF000000
      0000FFFFFF000000000000000000C6C6C6000000000000000000000000000000
      0000000000000000000063639C00319CCE000000000000000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000840000000000000000000000000000008C8C8400F7FFF700E7FFEF00295A
      3900D6FFE700C6FFEF00ADFFEF00BDFFEF00D6FFDE00395A3900DEFFEF00B5CE
      CE0000000800D6C6DE0000000000000000000000000000000000000000000000
      00000000000063CECE009CFFFF0063FFFF0063FFFF00009CCE00000000000000
      00000000000000000000000000000000000084848400FFFFFF00000000000000
      0000FFFFFF0084848400C6C6C600FFFFFF008484840000000000FFFFFF008484
      84000000000063639C00319CCE0063CEFF000000000000000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000008C848400FFFFFF00F7FFF7003152
      3900E7FFF700C6FFE700188C5200A5FFDE00CEFFF700D6FFEF00DEFFF700BDD6
      CE0000000800CEC6D6000000000000000000000000000000000063CECE00009C
      CE00009CCE00009CCE00009CCE009CFFFF0063FFFF0063FFFF00009CCE000000
      0000000000000000000000000000000000008484840000000000000000000000
      0000848484000000000000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF0063639C00319CCE0063CEFF00000000000000000000000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      000000000000840000000000000000000000948C8C00FFFFFF00EFFFEF003152
      39004A735A00CEFFE700108C4200088C4200B5FFE700D6FFFF00DEFFF700BDD6
      CE0000000000CECECE000000000000000000000000000000000063CECE009CFF
      FF009CFFFF0063FFFF0063FFFF0063FFFF0063FFFF0063FFFF0063FFFF00009C
      CE00000000000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000FFFFFF006363
      9C00319CCE0063CEFF0000000000000000000000000000000000840000008400
      0000000000008400000000000000000000000000000000000000000000000000
      0000000000008400000000000000000000007B847B00FFFFFF00F7FFFF00D6F7
      E7004A7B5A00297B4A0010944200088C3900187B4A00CEFFEF00EFFFF700C6CE
      C60008100800C6CEC600000000000000000000000000000000000000000063CE
      CE009CFFFF009CFFFF0063FFFF0063FFFF00009CCE0063CECE0063CECE0063CE
      CE00000000000000000000000000000000000000000000000000C6C6C600C6C6
      C6000000000000000000FFFFFF0000000000000000000000000063639C00319C
      CE0063CEFF000000000000000000000000000000000000000000840000000000
      0000000000000000000084000000840000000000000000000000000000000000
      000084000000000000000000000000000000848C8C00FFFFFF00EFF7FF00EFFF
      FF00E7FFF700CEFFE70021944A0010844200BDFFE700DEFFF700BDD6C600CED6
      C60000000000CECECE00000000000000000000000000000000000000000063CE
      CE009CFFFF009CFFFF009CFFFF0063FFFF0063FFFF00009CCE00000000000000
      0000000000000000000000000000000000000000000084848400C6C6C600FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF000000000063639C00319CCE0063CE
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      000000000000000000000000000000000000848C8400F7FFFF00FFFFFF00F7FF
      FF00EFFFFF00DEFFF700317B5A00BDFFEF00D6FFF70000080000000800000000
      000000000000CEC6CE0000000000000000000000000000000000000000000000
      000063CECE009CFFFF009CFFFF009CFFFF0063FFFF0063FFFF00009CCE000000
      0000000000000000000000000000000000000000000000000000848484008484
      84000000000000000000FFFFFF00FFFFFF0063639C00319CCE0063CEFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFFFFF00CEF7EF00D6FFFF00DEFFEF007B8C8400F7F7FF000808
      1000D6CEDE00FFF7FF0000000000000000000000000000000000000000000000
      000063CECE009CFFFF009CFFFF009CFFFF0063FFFF0063FFFF0063FFFF00009C
      CE00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000063639C00319CCE0063CEFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000848C8C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7FFFF00EFFFFF00EFFFFF007384840000000800BDBD
      CE00FFFFFF00FFF7FF0000000000000000000000000000000000000000000000
      00000000000063CECE009CFFFF009CFFFF009CFFFF0063FFFF0063FFFF0063FF
      FF00009CCE000000000000000000000000000000000000000000000000000000
      0000000000000000000063639C00319CCE0063CEFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B8484008C8C8C009C848400947B
      7B00948C8400848C8400848484007B8484007B8C7B00738C8400C6CED600FFFF
      FF00FFF7FF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CE
      CE0063CECE0063CECE0000000000000000000000000000000000000000000000
      00000000000063639C00319CCE0063CEFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7EFF700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C3100009C310000CE6300009C310000CE6300009C3100000000
      00000000000000000000000000000000000000000000000000009C3100009C31
      00009C3100009C3100009C3100009C3100009C3100009C3100009C3100009C31
      00009C310000000000000000000000000000000000000000000000000000E7EF
      F700E7E7E700CECECE00E7E7E700E7EFF7000000000000000000000000000000
      000000000000000000000000000000000000948C390029A56B00318C4A00088C
      2900108C3100188C3900298C4200218C4200108C3100088C2900188C3900218C
      4200298C4200108C3100218C3900000000000000000000000000000000000000
      0000000000009C310000CE6300009C310000CE6300009C3100009C3100000000
      00000000000000000000000000000000000000000000CE9C6300FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00CE9C
      6300CE9C63009C310000000000000000000000000000E7EFF700E7E7E700B5B5
      B500CE9C9C009C6363009C636300B5B5B500CECECE00E7E7E700E7EFF7000000
      0000000000000000000000000000000000009C8C4A00318C4A00A5DE9C00FFF7
      FF00F7EFF700EFEFE700DEEFDE00E7EFE700F7EFEF00F7EFF700EFEFEF00E7EF
      E700DEEFDE00F7F7EF00218C3900000000000000000000000000000000000000
      0000000000009C3100009C310000CE6300009C310000CE6300009C3100000000
      000000000000000000000000000000000000CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      63009C310000CE9C63009C31000000000000E7E7E700CE9C9C009C636300CE9C
      9C00CE9C9C00FFFFFF009C6363009C9C9C009C9C9C00B5B5B500E7E7E7000000
      000000000000000000000000000000000000AD8C5200188C3100EFEFEF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00218C3900000000000000000000000000000000000000
      0000000000009C9C9C009C3100009C3100009C3100009C3100009C9C9C000000
      000000000000000000000000000000000000CE9C6300FFFFFF00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE
      9C00CE9C63009C3100009C310000000000009C636300CE9C9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C63630031639C0031639C0031639C00E7EFF7000000
      000000000000000000000000000000000000AD8C5A00108C2900DEE7DE00CEE7
      CE00E7EFE700E7EFE700E7EFE700E7EFE700DEEFDE00DEEFDE00B5D6B500A5CE
      A500B5D6B50094BD9400218C3900000000000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00FFCECE0063636300000000000000
      000000000000000000000000000000000000CE9C6300FFFFFF00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C0000CE0000009C0000FFCE9C000000FF000000CE00FFCE
      9C00CE9C6300CE9C63009C310000000000009C636300FFCE9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C63630063CECE0063CECE00009CCE00FFFFFF00FFCE
      CE0000000000000000000000000000000000AD8C520018943100E7F7E700187B
      1800187B1800187B1800187B1800187B18004A944A0073B5730042944200187B
      1800187B180031843100218C3900000000000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00FFCECE0063636300000000000000
      000000000000000000000000000000000000CE9C6300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CE9C6300CE9C6300CE9C63009C3100009C636300FFCE9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C63630063CECE0063CEFF00319CCE00FFCECE00CE63
      000000000000000000000000000000000000A58C4A00218C3900E7EFE700CECE
      CE00187B1800187B1800187B1800187B180063A563008CCE8C00187B1800187B
      180018731800E7F7E700218C3900000000000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00FFCECE0063636300000000000000
      000000000000000000000000000000000000CE9C6300FFFFFF00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE
      9C00CE9C6300CE9C6300CE9C63009C3100009C636300FFCE9C00CE9C9C00CE9C
      6300FFCECE00FFFFFF009C6363009CCECE009CCEFF00B5B5B500FF630000CE63
      00000000000000000000000000000000000000000000298C4200CEE7CE00FFFF
      FF00CED6CE00187B1800187B1800187B180094CE9400187B1800187B18005294
      5200107B1000A5CEA500218C3900000000000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00FFCECE0063636300000000000000
      00000000000000000000000000000000000000000000CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300FFCE
      9C00FFCE9C00CE9C6300CE9C63009C3100009C636300FFCE9C009C636300FFFF
      FF00FFCECE00FFFFFF009C6363009CCECE00C6C6C600CE630000CE630000CE63
      0000CE630000CE630000CE6300000000000000000000298C4200CEE7CE00FFFF
      FF00FFFFFF00B5CEB500187B18008CCE8C00187B1800187B180084B58400BDD6
      BD00ADD6AD00DEDEDE00218C3900000000000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00FFCECE0063636300000000000000
      0000000000000000000000000000000000000000000000000000CE9C6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9C
      6300FFCE9C00FFCE9C00CE9C63009C3100009C636300FFCE9C00CE9C9C009C63
      6300FFCECE00FFFFFF009C63630000000000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE6300000000000000000000188C3900D6E7D600FFFF
      FF00F7FFF7008CD68C0084BD8400187B1800187B1800187B18004A944A00BDE7
      BD00FFFFFF00FFFFFF00218C3900000000000000000000000000000000000000
      0000000000000000000063636300636363006363630063636300000000000000
      000000000000000000000000000063636300000000000000000000000000CE9C
      6300FFFFFF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700FFFFFF00CE9C
      6300CE9C6300CE9C63009C310000000000009C636300FFCE9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C63630000000000CE9C9C00CE630000CE630000CE63
      0000CE630000CE630000CE63000000000000AD8C5A00108C2900E7E7E700FFFF
      FF008CCE8C007BBD7B00187B1800187B1800187B1800187B1800187B1800428C
      4200A5D6A500FFFFFF00218C3900000000000000000063636300636363000000
      000000000000636363009C9C9C009C9C9C009C9C9C009C9C9C00636363000000
      000000000000000000006363630063636300000000000000000000000000CE9C
      6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CE9C63000000000000000000000000009C636300FFCE9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C636300CECECE00E7EFF700CE9C9C00FF630000CE63
      000000000000000000000000000000000000AD8C5A00188C3100EFEFEF006BC6
      6B0052AD5200187B1800187B180084B58400DEDEDE004A944A00187B1800187B
      1800106B100084CE8400218C3900000000009C9C9C009C9C9C009C9C9C006363
      6300636363009C9C9C00CECECE00CECECE00CECECE009C9C9C00636363006363
      63006363630063636300CECECE00636363000000000000000000000000000000
      0000CE9C6300FFFFFF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700FFFF
      FF00CE9C63000000000000000000000000009C636300FFCE9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C6363009CCECE00000000009CCECE00FFCE9C00CE63
      000000000000000000000000000000000000AD8C5200218C3900E7EFE70094B5
      9400187B1800187B180094C69400F7FFF700FFFFFF00E7E7E7009CBD9C00187B
      1800187B1800D6D6D600218C3900000000009C9C9C00FFFFFF00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE009C9C9C009C9C
      9C009C9C9C00CECECE0063636300000000000000000000000000000000000000
      0000CE9C6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CE9C630000000000000000009C636300CE9C9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C636300CECECE0000000000319CCE0000000000FFCE
      9C000000000000000000000000000000000000000000218C3900E7F7E700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00218C3900000000009C9C9C00FFFFFF00CECECE00CECE
      CE00FFFFFF00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE009C9C9C0000000000000000000000000000000000000000000000
      000000000000CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300000000000000000000000000C6C6C600CE9C6300CE9C
      9C00CECE9C00FFFFFF009C636300009CCE00009CCE00009CCE00000000000000
      0000000000000000000000000000000000009C8C4A00399C52008CA5840063AD
      63006BAD6B0073AD730084AD84007BAD7B006BAD6B0063AD630073AD730084AD
      840084AD84006BAD6B00218C3900000000009C9C9C00FFFFFF00FFFFFF009C9C
      9C009C9C9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C9C
      9C009C9C9C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CECE
      CE00CE9C9C009C6363009C636300000000000000000000000000000000000000
      0000000000000000000000000000000000009C8C4A00429C63004A944A00428C
      4200428C42004A8C4A004A8C4A004A8C4A004A8C4A00428C42004A8C4A004A8C
      4A004A8C4A004A8C4A00218C390000000000000000009C9C9C009C9C9C000000
      0000000000009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C630000000000000000000000000031313100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      9C00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE9C6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CE9C630000000000000000003131310063636300636363006363
      6300000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003131CE000000
      FF0000009C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE9C63009C3100009C310000CE9C63000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE9C6300FFFF
      FF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700FFFFFF00CE9C63000000000000000000000000009C9C9C00CECECE009C9C
      9C00636363006363630000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003131CE00319C
      FF000000FF0000009C0000000000000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000000000009C31
      00009C310000CE630000CE6300009C3100000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE9C6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CE9C63000000000000000000000000009C9C9C00CECECE00CECE
      CE009C9C9C009C9C9C0063636300636363000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003131
      CE000063FF000000CE0000000000000000000000000000000000000000000000
      00000000FF0000000000000000000000000000000000000000009C310000CE63
      0000CE6300009C3100009C310000CE9C63000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE9C6300FFFF
      FF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700FFFFFF00CE9C6300000000000000000000000000000000009C9C9C00CECE
      CE00CECECE009C9C9C009C9C9C009C9C9C006363630063636300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000CE000000FF0000009C00000000000000000000000000000000000000
      FF0000009C0000000000000000000000000000000000CE9C63009C310000CE63
      00009C310000CE9C630000000000000000009C3100009C3100009C3100009C31
      00009C3100009C3100009C310000000000000000000000000000CE9C6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CE9C6300000000000000000000000000000000009C9C9C00E7E7
      E700CECECE00CECECE009C9C9C009C9C9C009C9C9C009C310000633100006331
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000CE000000FF0000009C0000000000000000000000FF000000
      9C0000000000000000000000000000000000000000009C310000CE6300009C31
      0000CE9C63000000000000000000000000009C310000CE630000CE630000CE63
      0000CE630000CE6300009C310000000000000000000000000000CE9C6300FFFF
      FF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700FFFFFF00CE9C630000000000000000000000000000000000000000009C9C
      9C00E7E7E700CECECE00CECECE009C9C9C009C3100009C3100009C3100009C31
      0000633100000000000000000000000000000000000000000000000000000000
      000000000000000000000000CE000000FF0000009C000000FF0000009C000000
      000000000000000000000000000000000000000000009C310000CE6300009C31
      000000000000000000000000000000000000000000009C310000CE630000CE63
      0000CE630000CE6300009C310000000000000000000000000000CE9C6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CE9C630000000000000000000000000000000000000000009C9C
      9C00FFFFFF00E7E7E700CECECE009C3100009C3100009C3100009C3100009C31
      00009C3100006331000000000000000000000000000000000000000000000000
      00000000000000000000000000000000CE000000FF0000009C00000000000000
      000000000000000000000000000000000000000000009C310000CE6300009C31
      0000CE9C630000000000000000000000000000000000CE9C63009C310000CE63
      0000CE630000CE6300009C310000000000000000000000000000CE9C6300FFFF
      FF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700FFFFFF00CE9C630000000000000000000000000000000000000000000000
      00009C9C9C00FFFFFF009C310000CE6331009C3100009C3100009C3100009C31
      00009C3100009C31000063310000000000000000000000000000000000000000
      000000000000000000000000CE000000FF0000009C000000CE0000009C000000
      00000000000000000000000000000000000000000000CE9C63009C310000CE63
      00009C310000CE9C630000000000CE9C63009C3100009C310000CE6300009C31
      0000CE630000CE6300009C310000000000000000000000000000CE9C6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CE9C630000000000000000000000000000000000000000000000
      00009C9C9C009C310000CE6331009C310000CE6331009C3100009C3100009C31
      00009C3100009C3100009C310000633100000000000000000000000000000000
      0000000000000000CE000000FF0000009C0000000000000000000000CE000000
      9C000000000000000000000000000000000000000000000000009C310000CE63
      0000CE6300009C3100009C3100009C310000CE630000CE6300009C310000CE9C
      63009C310000CE6300009C310000000000000000000000000000CE9C6300FFFF
      FF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700FFFFFF00CE9C6300CE9C
      6300CE9C6300CE9C630000000000000000000000000000000000000000000000
      0000000000009C3100009C310000CE6331009C310000CE6331009C3100009C31
      00009C3100009C3100009C3100009C3100000000000000000000000000000000
      CE000000FF000000FF0000009C00000000000000000000000000000000000000
      CE0000009C000000000000000000000000000000000000000000000000009C31
      00009C310000CE630000CE630000CE6300009C3100009C310000000000000000
      0000000000009C3100009C310000000000000000000000000000CE9C6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9C6300E7E7
      E700CE9C63000000000000000000000000000000000000000000000000000000
      0000000000009C3100009C3100009C310000CE6331009C310000CE6331009C31
      00009C3100009C3100009C3100009C9C9C0000000000000000000000CE00319C
      FF000000FF0000009C0000000000000000000000000000000000000000000000
      00000000CE0000009C0000000000000000000000000000000000000000000000
      0000CE9C63009C3100009C3100009C310000CE9C630000000000000000000000
      0000000000000000000000000000000000000000000000000000CE9C6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9C6300CE9C
      6300000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C3100009C3100009C310000CE6331009C310000CE63
      31009C3100009C3100009C9C9C009C9C9C00000000000000000063639C000000
      CE0063639C000000000000000000000000000000000000000000000000000000
      000000000000000000000000CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C63000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009C3100009C3100009C310000CE6331009C31
      00009C310000CECECE00CECECE009C9C9C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C3100009C3100009C3100009C31
      0000E7E7E700E7E7E700CECECE00CECECE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000800000000100010000000000000400000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFCFF000000008081F87F00000000
      0003F47F000000000001EDFF000000000001C93F000000000001803E00000000
      0001681C00000000000149280000000000010171000000000001802300000000
      00018207000000000001970F000000000001C31F000000000001E03F00000000
      0041F07F000000000001F8FF00000000FC00FFFFE39FFFFFFC00FFFFE39FFFFF
      FC00FFFFE39FFF3FFC00FFFFFFFFFF3BE000F80FE01FFFB3E000F80FC01FC007
      E000F80FCF8FE507E000F80FC94FFF830007F80FDFCFC00F0007F80FC947DE6F
      0007FDDF9FE7DFEF0007FDDF8963C00F003FFDDFFFF3C00F003FFE3FFFF0C00F
      003FFFFFFFF0FFFF003FFFFFFFF8FFFFF8FF801FFFFFFFFFF03F000F03FF0000
      E30F000F00FF0000E4C3000F00FF0000C471000F007F0000C84D000F003F0000
      88E5000F00070000909D000F000000001DCB000000000000333B000000000000
      98D7000100000000E637000300000000F9AF000700000000FE6F000F00000000
      FF9F800F00000000FFFFC01FFFFF0000E000FFFFFFFFF8FFE000FFFF8000F03F
      E000FE7F8000E00FE000FC3F8000E0036000FC1F8000C0012000FC0F8000C001
      0000F807800080012000F803800080016000F00380000003E000E00780000003
      E000C03F80008007E00080FF8000E007E00000FF8000F80FE00001FF8000FE0F
      E00087FF8000FF9FE000CFFF8000FFFF8003FBFFFCFFFFFF0003F9FFF87FFFFF
      0003FCFFF07FFFFF0003FC7FE07FFFFF0003F03FC03FFFFF0003F01F803EFFE7
      0003F80F001CC1F30003F83F0008C3FB0003C01F0001C7FB0003C00F8003CBFB
      0003E00F8007DCF30003E03F800FFF070003F01FC01FFFFF0003F00FE03FFFFF
      0003F807F07FFFFF0003F803F8FFFFFFFFFFFDFFFFFFF81FC007E0FF0001F81F
      8003801F0001F81F0001001F0001F81F0001001F0001FC3F0001000F0001FC3F
      0000000F0001FC3F0000000F8001FC3F800000018001FC3FC00001018001FC3E
      E00101010001981CE007000F00010000F007008F00010001F00300AF80010003
      F803803F00010007FFFFE1FF0001981FFFFFFFFFFFFFFFFFC0033FFFEFFDFFFF
      C0030FFFC7FFF0FFC00383FFC3FBE0FFC00380FFE3F7C0FFC003C03FF1E78301
      C003C00FF8CF8701C003E007FC1F8F81C003E003FE3F8781C003F001FC1F8201
      C003F000F8CFC001C003F800E1E7E039C007F800C3F3F07FC00FFC00C7FDFFFF
      C01FFE00FFFFFFFFFFFFFF00FFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object frReport: TfrReport
    Dataset = frDBDataSet
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit, pbPageSetup]
    StoreInDFM = True
    RebuildPrinter = True
    Left = 83
    Top = 320
    ReportForm = {
      190000009D000000190000000001000100FFFFFFFFFF09000000340800009A0B
      00000000000000000000000000000000000000FFFF00000000FFFF0000000000
      000000000500506167653100030400466F726D000F0000FFDC00000078000000
      7C0100002C01000004000000FEFEFF000000000000000000000000FDFF010000
      0000FC000000000000000000000000000000005800E501C972997BE440CAD8E3
      A81690E440}
  end
  object frDBDataSet: TfrDBDataSet
    DataSet = MData_WTList
    Left = 35
    Top = 320
  end
  object mData_WTItem: TdxMemData
    Indexes = <>
    SortOptions = []
    SortedField = 'FWorkItemListNum'
    Left = 83
    Top = 237
  end
  object DS_Mdata_WTItem: TDataSource
    DataSet = mData_WTItem
    Left = 35
    Top = 245
  end
  object DS_Mdata_WTP: TDataSource
    DataSet = mData_WTP
    Left = 35
    Top = 275
  end
  object mData_WTP: TdxMemData
    Indexes = <>
    SortOptions = []
    SortedField = 'FWorkItemListNum'
    Left = 83
    Top = 275
  end
  object actionList: TActionList
    Images = ImageList
    Left = 80
    Top = 120
    object Act_Menu: TAction
      Category = #33756#21333
      Caption = 'Act_Menu'
      OnExecute = Act_MenuExecute
    end
    object Act_App: TAction
      Category = #25968#25454#32500#25252
      Caption = #26032#22686
      ImageIndex = 0
      OnExecute = Act_AppExecute
    end
    object Act_Parts: TAction
      Category = #25968#25454#27719#24635
      Caption = #37096#20214#27719#24635
      ImageIndex = 8
    end
    object Act_Edit: TAction
      Category = #25968#25454#32500#25252
      Caption = #20462#25913
      ImageIndex = 1
    end
    object Act_Del: TAction
      Category = #25968#25454#32500#25252
      Caption = #21024#38500
      ImageIndex = 2
    end
    object Act_Out: TAction
      Category = #25968#25454#32500#25252
      Caption = #23548#20986
      ImageIndex = 23
    end
    object Act_cldy: TAction
      Category = #25968#25454#27719#24635
      Caption = #20195#29992#28165#21333
      ImageIndex = 20
    end
    object Act_Save: TAction
      Category = #25968#25454#32500#25252
      Caption = #20445#23384
      ImageIndex = 25
    end
    object Act_Submit: TAction
      Category = #25968#25454#25805#20316
      Caption = #25552#20132
      ImageIndex = 10
      Visible = False
      OnExecute = Act_SubmitExecute
    end
    object Act_Check: TAction
      Category = #25968#25454#25805#20316
      Caption = #26657#23545
      ImageIndex = 9
      OnExecute = Act_CheckExecute
    end
    object Act_Audit: TAction
      Category = #25968#25454#25805#20316
      Caption = #23457#26680
      ImageIndex = 21
      OnExecute = Act_AuditExecute
    end
    object Act_PushDown: TAction
      Category = #25968#25454#25805#20316
      Caption = #19979#25512
      ImageIndex = 22
    end
    object Act_Accept: TAction
      Category = #25968#25454#25805#20316
      Caption = #25509#25910
      ImageIndex = 24
    end
    object Act_FeedBack: TAction
      Category = #25968#25454#25805#20316
      Caption = #21453#39304
      ImageIndex = 20
    end
    object Act_FIsDelList: TAction
      Category = #25968#25454#32500#25252
      Caption = #34892#20316#24223
      ImageIndex = 18
    end
    object Act_Set_Open: TAction
      Category = #25968#25454#25805#20316
      Caption = 'Act_Set_Open'
      OnExecute = Act_Set_OpenExecute
    end
    object Act_Set_Close: TAction
      Category = #25968#25454#25805#20316
      Caption = 'Act_Set_Close'
      OnExecute = Act_Set_CloseExecute
    end
    object Act_Menu_Set: TAction
      Category = #33756#21333
      Caption = 'Act_Menu_Set'
      OnExecute = Act_Menu_SetExecute
    end
    object Act_Set_MaxID: TAction
      Category = #21333#21495'ID'
      Caption = 'Act_Set_MaxID'
      OnExecute = Act_Set_MaxIDExecute
    end
    object Act_Sel: TAction
      Category = #36873#25321
      Caption = 'Act_Sel'
      OnExecute = Act_SelExecute
    end
    object Act_Sel_Price: TAction
      Category = #36873#25321
      Caption = 'Act_Sel_Price'
      OnExecute = Act_Sel_PriceExecute
    end
    object Act_Set_MaxNum: TAction
      Category = #21333#21495'ID'
      Caption = 'Act_Set_MaxNum'
      OnExecute = Act_Set_MaxNumExecute
    end
    object Act_TS_WorkTaskItem: TAction
      Category = #39029#36873#25321
      Caption = 'Act_TS_WorkTaskItem'
      OnExecute = Act_TS_WorkTaskItemExecute
    end
    object Act_FPaint: TAction
      Category = #21333#20215
      Caption = #21047#28422
      OnExecute = Act_FPaintExecute
    end
    object Act_FFlaw: TAction
      Category = #21333#20215
      Caption = #25506#20260
      OnExecute = Act_FFlawExecute
    end
    object Act_FShot: TAction
      Category = #21333#20215
      Caption = #25243#20024
      OnExecute = Act_FShotExecute
    end
    object Act_FGalvanize: TAction
      Category = #21333#20215
      Caption = #38208#38156
      OnExecute = Act_FGalvanizeExecute
    end
    object Act_Drill: TAction
      Category = #21333#20215
      Caption = #38075#23380
      OnExecute = Act_DrillExecute
    end
    object Act_Sel_Price_ALL: TAction
      Category = #36873#25321
      Caption = #20840#36873
      ImageIndex = 22
      OnExecute = Act_Sel_Price_ALLExecute
    end
    object Act_Status: TAction
      Category = #26435#38480
      Caption = 'Act_Status'
      OnExecute = Act_StatusExecute
    end
    object Act_Ref: TAction
      Category = #21047#26032
      Caption = 'Act_Ref'
    end
  end
  object PM: TPopupMenu
    Left = 180
    Top = 120
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
end
