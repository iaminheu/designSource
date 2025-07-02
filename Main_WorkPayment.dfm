inherited Frm_WorkPayment: TFrm_WorkPayment
  Left = 254
  Top = 186
  Caption = #20184#27454#30003#35831
  ClientHeight = 595
  ClientWidth = 1098
  OldCreateOrder = True
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image: TImage
    Width = 1098
  end
  inherited L_title: TLabel
    Left = 18
    Top = 2
    Width = 1255
    Caption = #36890#29992#25968#25454#30331#35760
  end
  inherited P_back: TPanel
    Width = 1098
    Height = 574
    inherited P_main: TPanel
      Width = 1092
      Height = 568
      inherited Panel_down: TPanel
        Top = 565
        Width = 1090
        Height = 1
        inherited Bevel_bass: TBevel
          Width = 1090
        end
      end
      object Panel_EditButton: TPanel
        Left = 0
        Top = 0
        Width = 1090
        Height = 38
        Align = alTop
        ParentColor = True
        TabOrder = 1
        object ToolBar1: TToolBar
          Left = 1
          Top = 1
          Width = 1088
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
          object ToolButton1: TToolButton
            Left = 220
            Top = 0
            Width = 8
            Caption = 'ToolButton1'
            ImageIndex = 9
            Style = tbsSeparator
          end
          object TB_Prin: TToolButton
            Left = 228
            Top = 0
            Cursor = crHandPoint
            AutoSize = True
            Caption = #25171#21360'[&P]'
            ImageIndex = 7
            Visible = False
          end
          object TB_EXIT: TToolButton
            Left = 281
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
        Width = 284
        Height = 527
        Color = 14935011
        HotSpotVisible = True
        SizeBarWidth = 7
        TabOrder = 2
        VisualStyle = vsGradient
        OnConstrainedResize = RSP_TreeConstrainedResize
        object Panel4: TPanel
          Left = 0
          Top = 462
          Width = 276
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
            Height = 24
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
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -15
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = []
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
          Width = 276
          Height = 26
          ActivePage = TS_InvoiceNum
          Align = alTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MultiLine = True
          ParentFont = False
          TabOrder = 1
          OnChange = TS_TreeChange
          object TS_InvoiceNum: TTabSheet
            Caption = #20184#27454#21333#21495
            ImageIndex = 3
          end
        end
        object MyTreeView: TTreeView
          Left = 0
          Top = 26
          Width = 276
          Height = 436
          Align = alClient
          AutoExpand = True
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
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
        Left = 284
        Top = 38
        Width = 806
        Height = 527
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 3
        object TS_Item: TRzPageControl
          Left = 0
          Top = 0
          Width = 806
          Height = 527
          ActivePage = TS_Brow
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
          OnChange = TS_ItemChange
          FixedDimension = 22
          object TS_Brow: TRzTabSheet
            Color = 14935011
            Caption = #20027#20449#24687
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            object PanelBkGnd: TPanel
              Left = 0
              Top = 0
              Width = 802
              Height = 501
              Align = alClient
              BevelOuter = bvNone
              Ctl3D = True
              ParentCtl3D = False
              TabOrder = 0
              object RzSizePanel1: TRzSizePanel
                Left = 0
                Top = 147
                Width = 802
                Height = 354
                Align = alBottom
                Color = 14935011
                HotSpotVisible = True
                SizeBarWidth = 7
                TabOrder = 0
                VisualStyle = vsGradient
                object PageControl2: TPageControl
                  Left = 0
                  Top = 8
                  Width = 802
                  Height = 346
                  ActivePage = TabSheet1
                  Align = alClient
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Times New Roman'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  object TabSheet1: TTabSheet
                    Caption = #20184#27454#26126#32454
                    ImageIndex = 4
                    object cxGrid_List: TcxGrid
                      Left = 0
                      Top = 0
                      Width = 794
                      Height = 316
                      Align = alClient
                      PopupMenu = PM
                      TabOrder = 0
                      OnContextPopup = cxGrid_ListContextPopup
                      object cxGV_List: TcxGridDBTableView
                        DataController.DataSource = DS_Mdata_List
                        DataController.Summary.DefaultGroupSummaryItems = <>
                        DataController.Summary.FooterSummaryItems = <
                          item
                            Format = ',0.00;-,0.00'
                            Kind = skSum
                            FieldName = 'FWorkItemAmount'
                            Column = FWorkItemAmount_List
                          end
                          item
                            Format = ',0.00;-,0.00'
                            Kind = skSum
                            FieldName = 'FWorkInvoiceAmount'
                            Column = FWorkAcceptAmount_List
                          end
                          item
                            Format = ',0.00;-,0.00'
                            Kind = skSum
                            FieldName = 'FWorkTMOAmount'
                            Column = FWorkTMOAmount_List
                          end
                          item
                            Format = ',0.00;-,0.00'
                            Kind = skSum
                            FieldName = 'FWorkPaymentAmount'
                            Column = FWorkPaymentAmount_List
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
                        NavigatorButtons.Refresh.Visible = False
                        NavigatorButtons.SaveBookmark.Visible = False
                        NavigatorButtons.GotoBookmark.Visible = False
                        NavigatorButtons.Filter.Visible = False
                        OnCustomDrawCell = cxGV_ListCustomDrawCell
                        OptionsData.CancelOnExit = False
                        OptionsData.DeletingConfirmation = False
                        OptionsData.Editing = False
                        OptionsSelection.MultiSelect = True
                        OptionsView.Navigator = True
                        OptionsView.CellAutoHeight = True
                        OptionsView.Footer = True
                        OptionsView.GroupByBox = False
                        object FWorkItemNum_List: TcxGridDBColumn
                          Caption = #20219#21153#21333#21495
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Width = 82
                          DataBinding.FieldName = 'FWorkItemNum'
                        end
                        object FWorkItemAmount_List: TcxGridDBColumn
                          Caption = #20219#21153#21333#37329#39069
                          PropertiesClassName = 'TcxCurrencyEditProperties'
                          Properties.Alignment.Horz = taLeftJustify
                          Properties.Alignment.Vert = taVCenter
                          Properties.DisplayFormat = ',0.00;-,0.00'
                          Properties.ValidateOnEnter = True
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Width = 104
                          DataBinding.FieldName = 'FWorkItemAmount'
                        end
                        object FWorkAcceptAmount_List: TcxGridDBColumn
                          Caption = #30003#35831#25215#20817#37329#39069
                          PropertiesClassName = 'TcxCurrencyEditProperties'
                          Properties.Alignment.Horz = taRightJustify
                          Properties.Alignment.Vert = taVCenter
                          Properties.DisplayFormat = ',0.00;-,0.00'
                          Properties.ValidateOnEnter = True
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Width = 123
                          DataBinding.FieldName = 'FWorkAcceptAmount'
                        end
                        object FWorkTMOAmount_List: TcxGridDBColumn
                          Caption = #30003#35831#30005#27719#37329#39069
                          PropertiesClassName = 'TcxCurrencyEditProperties'
                          Properties.Alignment.Horz = taRightJustify
                          Properties.Alignment.Vert = taVCenter
                          Properties.DisplayFormat = ',0.00;-,0.00'
                          Properties.ValidateOnEnter = True
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Width = 118
                          DataBinding.FieldName = 'FWorkTMOAmount'
                        end
                        object FWorkPaymentAmount_List: TcxGridDBColumn
                          Caption = #30003#35831#20184#27454#21512#35745
                          PropertiesClassName = 'TcxCurrencyEditProperties'
                          Properties.Alignment.Horz = taRightJustify
                          Properties.Alignment.Vert = taVCenter
                          Properties.DisplayFormat = ',0.00;-,0.00'
                          Properties.ValidateOnEnter = True
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Width = 107
                          DataBinding.FieldName = 'FWorkPaymentAmount'
                        end
                        object FWorkInvoiceDate_List: TcxGridDBColumn
                          Caption = #21512#21516#20184#27454#26041#24335
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Width = 87
                        end
                        object FWorkItemDate_List: TcxGridDBColumn
                          Caption = #20219#21153#21333#26085#26399
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Width = 81
                        end
                        object FClientShortName_List: TcxGridDBColumn
                          Caption = #39033#30446#21517#31216
                          FooterAlignmentHorz = taCenter
                          HeaderAlignmentHorz = taCenter
                          HeaderGlyphAlignmentHorz = taCenter
                          Options.Editing = False
                          Options.Filtering = False
                          Width = 355
                          DataBinding.FieldName = 'FClientShortName'
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
                Width = 802
                Height = 147
                Align = alClient
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
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
                      FieldName = 'FWorkInvoiceItemAmount'
                      Column = FWorkPaymentItemAmount
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
                      Caption = #20184#27454#20449#24687
                      FixedKind = fkLeft
                      Width = 640
                    end
                    item
                      Caption = #24405#20837#20449#24687
                      Width = 306
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
                    Width = 54
                    Position.BandIndex = 0
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object FWorkPaymentNum: TcxGridDBBandedColumn
                    Caption = #30003#35831#20184#27454#21333#21495
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 100
                    Position.BandIndex = 0
                    Position.ColIndex = 3
                    Position.RowIndex = 0
                    DataBinding.FieldName = 'FWorkPaymentNum'
                  end
                  object FWorkPaymentDate: TcxGridDBBandedColumn
                    Tag = 1
                    Caption = #30003#35831#20184#27454#21333#26085#26399
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 97
                    Position.BandIndex = 0
                    Position.ColIndex = 2
                    Position.RowIndex = 0
                    DataBinding.FieldName = 'FWorkPaymentDate'
                  end
                  object FWorkPaymentItemAmount: TcxGridDBBandedColumn
                    Caption = #30003#35831#20184#27454#21333#24635#37329#39069
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.DisplayFormat = ',0.00;-,0.00'
                    Properties.ValidateOnEnter = True
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 107
                    Position.BandIndex = 0
                    Position.ColIndex = 4
                    Position.RowIndex = 0
                    DataBinding.FieldName = 'FWorkPaymentItemAmount'
                  end
                  object FFirstLogging: TcxGridDBBandedColumn
                    Caption = #24405#20837
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 64
                    Position.BandIndex = 1
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                    DataBinding.FieldName = 'FFirstLogging'
                  end
                  object FFirstLoggingDate: TcxGridDBBandedColumn
                    Caption = #24405#20837#26085#26399
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 95
                    Position.BandIndex = 1
                    Position.ColIndex = 1
                    Position.RowIndex = 0
                    DataBinding.FieldName = 'FFirstLoggingDate'
                  end
                  object FNewestAlter: TcxGridDBBandedColumn
                    Caption = #20462#25913
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 34
                    Position.BandIndex = 1
                    Position.ColIndex = 2
                    Position.RowIndex = 0
                    DataBinding.FieldName = 'FNewestAlter'
                  end
                  object FNewestAlterDate: TcxGridDBBandedColumn
                    Caption = #20462#25913#26085#26399
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 91
                    Position.BandIndex = 1
                    Position.ColIndex = 3
                    Position.RowIndex = 0
                    DataBinding.FieldName = 'FNewestAlterDate'
                  end
                  object FAgentName_Item: TcxGridDBBandedColumn
                    Caption = #20379#24212#21830#21517#31216
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 282
                    Position.BandIndex = 0
                    Position.ColIndex = 1
                    Position.RowIndex = 0
                    DataBinding.FieldName = 'FAgentName'
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
            object Panel_Edit: TPanel
              Left = 0
              Top = 0
              Width = 802
              Height = 501
              Align = alClient
              BevelOuter = bvNone
              Color = 16775664
              TabOrder = 0
              OnConstrainedResize = Panel_EditConstrainedResize
              OnDblClick = FlatPanel5DblClick
              object Panel_List: TFlatPanel
                Left = 0
                Top = 0
                Width = 802
                Height = 124
                Caption = #30005#25511#20107#19994#37096#21512#21516#35780#23457#34920
                ParentColor = True
                Align = alTop
                TabOrder = 0
                UseDockManager = True
                object Panel_List2: TFlatPanel
                  Left = 1
                  Top = 1
                  Width = 800
                  Height = 123
                  Caption = #34920#22836
                  ParentColor = True
                  Align = alTop
                  TabOrder = 0
                  UseDockManager = True
                  OnDblClick = FlatPanel5DblClick
                  object FlatPanel1: TFlatPanel
                    Left = 221
                    Top = 32
                    Width = 76
                    Height = 30
                    Caption = #30003#35831#26085#26399
                    ParentColor = True
                    TabOrder = 0
                    UseDockManager = True
                    OnDblClick = FlatPanel5DblClick
                  end
                  object E_FWorkPaymentDate: TcxDBDateEdit
                    Left = 295
                    Top = 31
                    Width = 111
                    Height = 32
                    AutoSize = False
                    DataBinding.DataField = 'FWorkPaymentDate'
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
                    TabOrder = 1
                  end
                  object FlatPanel3: TFlatPanel
                    Left = 404
                    Top = 32
                    Width = 76
                    Height = 30
                    Caption = #20184#27454#37329#39069
                    ParentColor = True
                    TabOrder = 2
                    UseDockManager = True
                    OnDblClick = FlatPanel5DblClick
                  end
                  object E_FWorkPaymentItemAmount: TcxDBCurrencyEdit
                    Left = 478
                    Top = 31
                    Width = 138
                    Height = 32
                    AutoSize = False
                    DataBinding.DataField = 'FWorkPaymentItemAmount'
                    DataBinding.DataSource = DS_Mdata
                    Enabled = False
                    ParentFont = False
                    Properties.Alignment.Horz = taCenter
                    Properties.Alignment.Vert = taVCenter
                    Properties.DecimalPlaces = 6
                    Properties.ValidateOnEnter = True
                    Properties.IsDisplayFormatAssigned = True
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -15
                    Style.Font.Name = 'Times New Roman'
                    Style.Font.Style = []
                    TabOrder = 3
                  end
                  object FlatPanel5: TFlatPanel
                    Left = 1
                    Top = 90
                    Width = 798
                    Height = 32
                    Caption = #26126#32454#34920#20449#24687#65306
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -16
                    Font.Name = 'Times New Roman'
                    Font.Style = []
                    ParentColor = True
                    Align = alBottom
                    Alignment = taLeftJustify
                    TabOrder = 4
                    UseDockManager = True
                    OnDblClick = FlatPanel5DblClick
                  end
                  object FlatPanel2: TFlatPanel
                    Left = 1
                    Top = 32
                    Width = 76
                    Height = 30
                    Caption = #20184#27454#21333#21495
                    ParentColor = True
                    TabOrder = 5
                    UseDockManager = True
                    OnDblClick = FlatPanel5DblClick
                  end
                  object E_FWorkPaymentNum: TcxDBButtonEdit
                    Left = 75
                    Top = 31
                    Width = 102
                    Height = 32
                    AutoSize = False
                    DataBinding.DataField = 'FWorkPaymentNum'
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
                    TabOrder = 6
                  end
                  object FlatPanel4: TFlatPanel
                    Left = 1
                    Top = 1
                    Width = 798
                    Height = 32
                    Caption = #22522#26412#20449#24687#65306
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -16
                    Font.Name = 'Times New Roman'
                    Font.Style = []
                    ParentColor = True
                    Align = alTop
                    Alignment = taLeftJustify
                    TabOrder = 7
                    UseDockManager = True
                    OnDblClick = FlatPanel5DblClick
                  end
                  object E_FWorkPaymentNo: TcxDBCurrencyEdit
                    Left = 174
                    Top = 31
                    Width = 49
                    Height = 32
                    AutoSize = False
                    DataBinding.DataField = 'FWorkPaymentNo'
                    DataBinding.DataSource = DS_Mdata
                    Enabled = False
                    ParentFont = False
                    Properties.Alignment.Horz = taCenter
                    Properties.Alignment.Vert = taVCenter
                    Properties.DecimalPlaces = 6
                    Properties.ValidateOnEnter = True
                    Properties.IsDisplayFormatAssigned = True
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -15
                    Style.Font.Name = 'Times New Roman'
                    Style.Font.Style = []
                    TabOrder = 8
                  end
                  object FlatPanel7: TFlatPanel
                    Left = 1
                    Top = 61
                    Width = 76
                    Height = 30
                    Caption = #29983#20135#21333#20301' '
                    ParentColor = True
                    TabOrder = 9
                    UseDockManager = True
                    OnDblClick = FlatPanel5DblClick
                  end
                  object E_FAgentName: TcxDBButtonEdit
                    Left = 75
                    Top = 60
                    Width = 541
                    Height = 32
                    AutoSize = False
                    DataBinding.DataField = 'FAgentName'
                    DataBinding.DataSource = DS_Mdata
                    Enabled = False
                    Properties.Alignment.Horz = taLeftJustify
                    Properties.Alignment.Vert = taVCenter
                    Properties.Buttons = <
                      item
                        Default = True
                        Kind = bkEllipsis
                      end>
                    Properties.OnButtonClick = E_FAgentNamePropertiesButtonClick
                    Style.Shadow = False
                    Style.ButtonTransparency = ebtHideUnselected
                    TabOrder = 10
                  end
                end
              end
              object Panel_OK: TPanel
                Left = 0
                Top = 444
                Width = 802
                Height = 57
                Align = alBottom
                BevelOuter = bvNone
                ParentColor = True
                TabOrder = 1
                Visible = False
                object Panel_Button: TPanel
                  Left = 212
                  Top = 8
                  Width = 208
                  Height = 41
                  BevelOuter = bvNone
                  ParentColor = True
                  TabOrder = 0
                  object OKBtn: TcxButton
                    Left = 17
                    Top = 2
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
                    Left = 105
                    Top = 2
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
              end
              object cxGrid: TcxGrid
                Left = 0
                Top = 124
                Width = 802
                Height = 320
                Align = alClient
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Times New Roman'
                Font.Style = []
                ParentFont = False
                PopupMenu = PM_Band
                TabOrder = 2
                OnContextPopup = cxGrid_ItemContextPopup
                LookAndFeel.Kind = lfUltraFlat
                LookAndFeel.NativeStyle = True
                object cxGV: TcxGridDBBandedTableView
                  DataController.DataSource = DS_Mdata_List
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <
                    item
                      Format = ',0.00;-,0.00'
                      Kind = skSum
                      FieldName = 'FWorkbudgetAmount'
                      Column = FWorkbudgetAmount
                    end
                    item
                      Format = ',0.00;-,0.00'
                      Kind = skSum
                      FieldName = 'FWorkAcceptAmount'
                      Column = FWorkAcceptAmount
                    end
                    item
                      Format = ',0.00;-,0.00'
                      Kind = skSum
                      FieldName = 'FWorkTMOAmount'
                      Column = FWorkTMOAmount
                    end
                    item
                      Format = ',0.00;-,0.00'
                      Kind = skSum
                      FieldName = 'FWorkPaymentAmount'
                      Column = FWorkPaymentAmount
                    end
                    item
                      Format = ',0.00;-,0.00'
                      Kind = skSum
                      FieldName = 'FWorkItemAmount'
                      Column = FWorkItemAmount
                    end
                    item
                      Format = ',0.00;-,0.00'
                      Kind = skSum
                      FieldName = 'FWorkInvoiceAmount'
                      Column = FWorkInvoiceAmount
                    end>
                  DataController.Summary.SummaryGroups = <>
                  NavigatorButtons.ConfirmDelete = False
                  OnCustomDrawCell = cxGV_ItemCustomDrawCell
                  OptionsView.CellAutoHeight = True
                  OptionsView.Footer = True
                  OptionsView.GroupByBox = False
                  Bands = <
                    item
                      Caption = #39033#30446#20449#24687
                      FixedKind = fkLeft
                      Width = 374
                    end
                    item
                      Caption = #20184#27454#20449#24687
                      Width = 417
                    end
                    item
                      Caption = #21333#25454#20449#24687
                      Width = 320
                    end
                    item
                      Caption = #20854#20182#20449#24687
                      Width = 334
                    end>
                  object FBranchFileNo: TcxGridDBBandedColumn
                    Caption = #26723#26696#21495
                    PropertiesClassName = 'TcxButtonEditProperties'
                    Properties.Alignment.Horz = taLeftJustify
                    Properties.Alignment.Vert = taVCenter
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
                    Width = 144
                    Position.BandIndex = 0
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                    DataBinding.FieldName = 'FBranchFileNo'
                  end
                  object FClientShortName: TcxGridDBBandedColumn
                    Caption = #39033#30446#21517#31216
                    PropertiesClassName = 'TcxButtonEditProperties'
                    Properties.Alignment.Horz = taLeftJustify
                    Properties.Alignment.Vert = taVCenter
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
                    Width = 316
                    Position.BandIndex = 0
                    Position.ColIndex = 0
                    Position.RowIndex = 1
                    DataBinding.FieldName = 'FClientShortName'
                  end
                  object FWorkBudgetNum: TcxGridDBBandedColumn
                    Caption = #39044#32467#21333#21495
                    PropertiesClassName = 'TcxButtonEditProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.Alignment.Vert = taVCenter
                    Properties.Buttons = <
                      item
                        Default = True
                        Kind = bkEllipsis
                      end>
                    Properties.OnButtonClick = FWorkBudgetNumPropertiesButtonClick
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Filtering = False
                    Width = 106
                    Position.BandIndex = 1
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                    DataBinding.FieldName = 'FWorkBudgetNum'
                  end
                  object FWorkBudgetDate: TcxGridDBBandedColumn
                    Caption = #39044#32467#26085#26399
                    PropertiesClassName = 'TcxButtonEditProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.Alignment.Vert = taVCenter
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
                    Width = 107
                    Position.BandIndex = 1
                    Position.ColIndex = 1
                    Position.RowIndex = 0
                    DataBinding.FieldName = 'FWorkBudgetDate'
                  end
                  object FWorkbudgetAmount: TcxGridDBBandedColumn
                    Caption = #39044#32467#37329#39069
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.Alignment.Horz = taRightJustify
                    Properties.Alignment.Vert = taVCenter
                    Properties.DisplayFormat = ',0.00;-,0.00'
                    Properties.ValidateOnEnter = True
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 113
                    Position.BandIndex = 1
                    Position.ColIndex = 2
                    Position.RowIndex = 0
                    DataBinding.FieldName = 'FWorkbudgetAmount'
                  end
                  object FWorkAcceptAmount: TcxGridDBBandedColumn
                    Caption = #30003#35831#25215#20817#37329#39069
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.Alignment.Horz = taRightJustify
                    Properties.Alignment.Vert = taVCenter
                    Properties.DisplayFormat = ',0.00;-,0.00'
                    Properties.ValidateOnEnter = True
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Filtering = False
                    Width = 106
                    Position.BandIndex = 1
                    Position.ColIndex = 0
                    Position.RowIndex = 1
                    DataBinding.FieldName = 'FWorkAcceptAmount'
                  end
                  object FWorkTMOAmount: TcxGridDBBandedColumn
                    Caption = #30003#35831#30005#27719#37329#39069
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.Alignment.Horz = taRightJustify
                    Properties.Alignment.Vert = taVCenter
                    Properties.DisplayFormat = ',0.00;-,0.00'
                    Properties.ValidateOnEnter = True
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Filtering = False
                    Width = 107
                    Position.BandIndex = 1
                    Position.ColIndex = 1
                    Position.RowIndex = 1
                    DataBinding.FieldName = 'FWorkTMOAmount'
                  end
                  object FWorkPaymentAmount: TcxGridDBBandedColumn
                    Caption = #30003#35831#37329#39069#23567#35745
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.Alignment.Horz = taRightJustify
                    Properties.Alignment.Vert = taVCenter
                    Properties.DisplayFormat = ',0.00;-,0.00'
                    Properties.ValidateOnEnter = True
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 113
                    Position.BandIndex = 1
                    Position.ColIndex = 2
                    Position.RowIndex = 1
                    DataBinding.FieldName = 'FWorkPaymentAmount'
                  end
                  object FWorkItemBalanceAmount: TcxGridDBBandedColumn
                    Caption = #32467#31639#21333#37329#39069
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.DisplayFormat = ',0.00;-,0.00'
                    Properties.ValidateOnEnter = True
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 91
                    Position.BandIndex = 1
                    Position.ColIndex = 3
                    Position.RowIndex = 0
                    DataBinding.FieldName = 'FWorkItemBalanceAmount'
                  end
                  object FWorkItemPayMentAmount: TcxGridDBBandedColumn
                    Caption = #32047#35745#20184#27454#37329#39069
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.DisplayFormat = ',0.00;-,0.00'
                    Properties.ValidateOnEnter = True
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 91
                    Position.BandIndex = 1
                    Position.ColIndex = 3
                    Position.RowIndex = 1
                    DataBinding.FieldName = 'FWorkItemPayMentAmount'
                  end
                  object FWorkItemNum: TcxGridDBBandedColumn
                    Caption = #20219#21153#21333#21495
                    PropertiesClassName = 'TcxButtonEditProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.Alignment.Vert = taVCenter
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
                    Width = 107
                    Position.BandIndex = 2
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                    DataBinding.FieldName = 'FWorkItemNum'
                  end
                  object FWorkItemDate: TcxGridDBBandedColumn
                    Caption = #20219#21153#21333#26085#26399
                    PropertiesClassName = 'TcxButtonEditProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.Alignment.Vert = taVCenter
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
                    Width = 113
                    Position.BandIndex = 2
                    Position.ColIndex = 1
                    Position.RowIndex = 0
                    DataBinding.FieldName = 'FWorkItemDate'
                  end
                  object FWorkItemAmount: TcxGridDBBandedColumn
                    Caption = #20219#21153#21333#37329#39069
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.Alignment.Horz = taRightJustify
                    Properties.Alignment.Vert = taVCenter
                    Properties.DisplayFormat = ',0.00;-,0.00'
                    Properties.ValidateOnEnter = True
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 144
                    Position.BandIndex = 2
                    Position.ColIndex = 2
                    Position.RowIndex = 0
                    DataBinding.FieldName = 'FWorkItemAmount'
                  end
                  object FWorkInvoiceDate: TcxGridDBBandedColumn
                    Caption = #26680#38144#26085#26399
                    PropertiesClassName = 'TcxButtonEditProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.Alignment.Vert = taVCenter
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
                    Width = 111
                    Position.BandIndex = 2
                    Position.ColIndex = 1
                    Position.RowIndex = 1
                    DataBinding.FieldName = 'FWorkInvoiceDate'
                  end
                  object FWorkInvoiceNum: TcxGridDBBandedColumn
                    Caption = #26680#38144#21333#21495
                    PropertiesClassName = 'TcxButtonEditProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.Alignment.Vert = taVCenter
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
                    Width = 108
                    Position.BandIndex = 2
                    Position.ColIndex = 0
                    Position.RowIndex = 1
                    DataBinding.FieldName = 'FWorkInvoiceNum'
                  end
                  object FWorkInvoiceAmount: TcxGridDBBandedColumn
                    Caption = #26680#38144#37329#39069
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.Alignment.Horz = taRightJustify
                    Properties.Alignment.Vert = taVCenter
                    Properties.DisplayFormat = ',0.00;-,0.00'
                    Properties.ValidateOnEnter = True
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 145
                    Position.BandIndex = 2
                    Position.ColIndex = 2
                    Position.RowIndex = 1
                    DataBinding.FieldName = 'FWorkInvoiceAmount'
                  end
                  object FWorkPaymentListRemark: TcxGridDBBandedColumn
                    Caption = #22791#27880
                    PropertiesClassName = 'TcxButtonEditProperties'
                    Properties.Alignment.Horz = taCenter
                    Properties.Alignment.Vert = taVCenter
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
                    Position.BandIndex = 3
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                    DataBinding.FieldName = 'FWorkPaymentListRemark'
                  end
                  object cxGVDBBandedColumn1: TcxGridDBBandedColumn
                    Caption = #21512#21516#20184#27454#26041#24335
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Position.BandIndex = 3
                    Position.ColIndex = 0
                    Position.RowIndex = 1
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
  end
  object ImageList: TImageList
    Left = 139
    Top = 158
    Bitmap = {
      494C010113001800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000006000000001002000000000000060
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000080063ADB50018949C0018A5
      A50021A5A500319C9C00D6F7FF009C9CA50084848C0094949400FFFFFF009C8C
      8C008C8C84008C8484000000000000000000FFFFF700FFFFFF00FFFFFF00F7FF
      F700F7FFFF00F7FFF700FFFFFF0000000000FFFFFF0000000000EFF7FF004252
      5A00EFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000006B73
      7300212121006B7373000000000000000000000000006B7373006B7373000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000100094F7FF0039DEE70029EF
      F70031EFEF0018A5A500DEFFFF00DEDEDE00E7EFEF00848C8C00FFFFFF00EFE7
      DE00F7EFE700A5A59C000000000000000000FFFFF700FFFFFF00000000000008
      0000000800000008000000000000FFFFFF00FFFFFF0000000000D6F7FF005A7B
      8400CEEFEF0000080800F7FFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000010009CEFFF0042EFFF0010E7
      F70021E7EF0018A5A500CEF7F700EFE7E700EFEFE700848C8400F7FFF700E7EF
      E700DEE7DE007B847B000008080000000000FFFFFF00FFF7F70008000000FFFF
      F70063635200FFFFF70010000000FFFFFF00FFFFFF0000080800BDEFEF00427B
      7B00B5EFE70000101000F7FFFF00F7FFFF000000000000000000000000006B73
      73006B7373006B7373006B7373006B7373006B7373006B737300C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000100094E7FF0029DEF70010EF
      FF0018EFF700089CA500D6FFFF00EFEFE700EFEFE7008C8C8C00F7FFFF00DEE7
      E700E7EFEF008C948C000000000000000000FFFFFF00FFFFFF00000000009C94
      8C0039292100B5A59C0021080800FFFFFF00080808004A636300DEFFFF004A84
      8400CEFFFF004263630000000000FFFFFF0000000000000000006B7373001010
      10001010100010101000101010001010100010101000101010006B7373000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000100094EFFF0031EFFF0008EF
      FF0010E7FF00089CAD00CEFFFF00E7E7E700F7F7F7007B848400E7F7FF00D6EF
      EF00DEE7EF00848484000808000000000000FFFFFF00FFFFFF0000000000ADA5
      9C0052393100AD8C8C00100000004A394200F7F7FF0073848400DEEFEF00D6EF
      EF00DEF7F7006B7B7B00FFFFFF00080000000000000000000000101010002121
      21000000000000000000000000000000000000000000C6C6C60010101000C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000008009CF7FF0029E7F70000E7
      F70018EFFF00009CAD00CEFFFF00E7EFEF00D6DEDE0084949400EFFFFF00CEDE
      E700E7EFEF008C8C8C000800000000000000FFFFF7000000000010080000A594
      73005A421800B59C73002108000042312900A59C9C0039313100A59C9C009C94
      94009C9C940039312900A59C9C00080000000000000000000000101010001010
      1000000000001010100010101000000000001010100000000000101010006B73
      7300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000008009CFFFF0031EFF70018F7
      FF0021EFF700009C9C00CEFFFF00DEE7E700EFEFEF00848C8C00F7FFFF00DEE7
      EF00E7E7E700948C8C00080000000000000008080000FFFFDE0052420000BDAD
      5200CEBD5200C6B552005242000094845200B59C8C0042312100AD948C00BD9C
      9400B5948C005A392900AD948C00100000000000000000000000101010000000
      0000000000000000000000000000000000000000000000000000212121001010
      1000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000080800ADF7F70052E7DE0042EF
      E7005AF7E700299C9400D6FFF700F7F7EF00E7E7DE0094948400FFFFEF00F7EF
      E700FFF7E70094847B00080000000000000018100000DED67B00947B0000F7E7
      5200E7DE3900E7E742008C7B00008C7B2100B5A57300AD9C8C009C949400948C
      9400A58C9400AD949400AD948C001000000000000000000000006B7373001010
      10000000000010101000101010000000000010101000000000006B7373001010
      10006B7373000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000080000D6F7E700BDFFEF00ADFF
      DE00B5F7D60084AD8C00FFFFE700FFFFE700FFFFEF00AD947B00FFFFDE00FFFF
      DE00FFFFDE00AD9C7B00080000000000000021210000D6CE4A00A5940000FFEF
      2900EFF71800F7F71800A5940000E7CE4A004A4200000008000094C6DE007BB5
      DE00A5BDE7000000210000000000FFFFFF000000000021212100C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000001010
      1000101010000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001008000063634A00424A29005A63
      3100636329006B5A2100E7CE9C006B4A2100735229007B522100FFD69C008C63
      21007B5A21006B4A2900181000000000000018180000E7E77300D6CE4A00D6DE
      4200CEEF3900CEE73900EFE74A00E7D663005A522100000000006BB5D60073BD
      F7007BA5DE0000002100F7FFFF00F7FFFF000000000010101000C6C6C6002121
      2100000000001010100010101000000000001010100000000000000000001010
      1000101010006B73730000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000018080000D6BD9C00B58C6300BD84
      5200C68C5200945A1800F7C69400BD945A00BD8C5A0084521800F7BD7B00C68C
      4A00BD8C52007B5A29002108000000000000FFFFEF000808000000080000426B
      5A00397B6300316B52000010000010080000FFFFF7000810180084B5CE0073BD
      D6009CC6EF0000002100EFFFFF00F7FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000101010001010100000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000018080000DEC6A500B5845A00C684
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
      00000000000000000000000000000000000000000000000000000000000008FF
      2100299CBD00217BBD00217BBD00187BBD001873B500106BAD000863AD00217B
      B5005AC6EF004ABDDE0052CEBD0000FF00000000000042C673005A636B00BDBD
      BD00B5B5B500D6D6D600A5A5A500C6D6CE0008FF080021E70000087B180000B5
      390008EF730010E77B0000F73100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000029BD9C00217BBD00217BBD00187BBD001873B500106BAD000863AD002984
      BD00429CCE002173AD0029BD7B000000000008FF1800316B63009C9C9400BDC6
      BD009C9C9C00A5A5A50094949400ADEFAD000000000021D60000007B180000C6
      420008EF7B0010E77B0000FF29000000000000000000FFFFFF00FFFFFF00FFFF
      FF00000000000808080000000000000000000000000000000000000000000008
      080000000800000008000000100000000000FFFFFF000000000000000000FFFF
      FF00FFFFFF00FFFFFF00F7FFFF00F7FFFF00F7FFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000029DE7300217BBD002184BD00187BBD001873B5001073B500106BAD00217B
      B500216B9C0010427B0010CE6B0010EF39001894630042424200948C8C00B5B5
      B500C6C6C600B5B5B500D6D6D60073FF73000000000021D60000008C210000CE
      420008F7840008EF7B0000FF100000000000FFF7FF00FFFFFF00F7F7FF00FFFF
      FF0000000800D6D6DE00DEE7E700DEE7EF00DEDEEF00D6D6E700D6DEE700CED6
      E700D6D6E700EFE7F7000000080000000000FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000080000000800000010000000080000000000000000000000
      000000001000FFF7FF00FFFFFF00000000000000000000000000000000000000
      000018F739002184BD002184BD00217BBD00187BB5001073B500106BAD001863
      9C00104A840018528C0039737B006B737B009C948C00A5A5A500949494008C8C
      8C00A5A5A500DEDEDE00EFF7EF0039FF39000000000018F7180039844A0029D6
      6B0042F79C0010F7630000FF0000000000000000000008080000000000000000
      000000000000F7FFFF00F7FFFF00EFEFFF00F7EFFF00F7EFFF00F7F7FF00F7EF
      FF00F7EFFF00DEDEE7000000000000000000FFFFFF00FFFFFF00FFFFFF007384
      7B00BDD6D600ADCEDE00316384004A94B50021637B0000000000CEDECE00C6D6
      C60000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000FF180018A5B500217BBD00217BBD00187BB5001073B5001873B5002173
      A5002152730042525A00A59C9C00D6CECE00D6D6D600D6D6D600D6D6D600CECE
      CE00B5B5B500ADADAD00BDE7BD0008FF08000000000029EF2900524A5200D6D6
      D600D6CECE0021FF29000000000000000000000000009C9C9C008C949400949C
      9C0000080000FFFFFF001818390018184A0021184A002921520018104A001810
      4A0018183100DEDEE7000808080000000000FFFFFF00FFFFFF00F7FFFF006B84
      8400CEF7FF00BDF7FF00106B940039BDFF00299CDE0000001000DEFFFF00DEFF
      F70000000000FFFFF700FFFFFF00000000000000000000000000000000000000
      000000FF000031C69400217BBD002184BD00187BBD001873B500218CC6004A9C
      BD0039393900A59C9C00DEDEDE00D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600C6C6C600A5CE9C0000FF08000000000031DE310052525200E7E7
      E700C6C6B50008FF1000000000000000000000000800E7DEF700EFE7FF00DED6
      F70000000800F7F7FF00F7F7FF0008084200EFEFFF00F7F7FF0021215200EFE7
      FF00FFFFFF00DEDEE7000000000000000000FFFFFF00FFFFFF00F7F7F700848C
      8C00DEF7FF00B5F7FF0008638C008CFFFF0052B5EF0000082100DEF7FF00DEF7
      F70000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000031E76300187BBD002184BD00187BBD001073B50039A5DE005273
      7B00736B6B00DEE7E700D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600CED6CE00219C8C0000946B0021734A006B636300EFEF
      EF00A5B5AD0010E7520008EF390000E7310000001000EFE7FF00080029001010
      390000000800F7F7FF00EFEFFF0010105200F7F7FF00EFF7FF00EFE7FF001810
      4A00F7F7FF00DEDEE7000000080000000000FFFFFF00FFFFFF00F7FFFF007384
      7B00E7F7FF00C6F7FF0018637B0000638400106B8C0000001000E7FFFF00EFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000010F73100218CBD002184BD00187BBD00107BBD0052B5D6005A5A
      5A00BDB5B500E7E7E700E7E7E700EFEFE700E7E7DE00DEDEDE00D6D6D600D6D6
      D600D6D6D600D6D6D600E7E7DE007B94A50000215A00293952007B7B7B00F7F7
      EF008494A5000042940000529C00005AA50008080000DEDEE700E7E7FF001010
      310000001000EFF7FF001818630018106300EFEFFF0021214A00DEDEFF00EFEF
      FF0021183900D6D6E7000000100000000000FFFFFF00F7FFFF00000000000000
      0000F7FFFF00DEF7F700CEFFFF00BDFFFF00BDFFFF00C6FFF700D6F7EF00EFF7
      FF000008080000000000F7FFFF00000000000000000000000000000000000000
      00000000000000FF080029A5AD00217BBD00217BBD00187BC600529CC600736B
      6B00DEDEDE00E7E7E700EFEFEF009CD6E70084BDD600B5BDBD00D6D6CE00D6D6
      D600DEDEDE00DEDEDE00E7E7E700ADB5BD0000396B0039425200948C8C00F7EF
      EF006B8C9C0000529C0000529C00004A940000000000E7E7E700DEDEFF001010
      310000000800F7F7FF00E7E7FF0010106300EFE7FF00EFEFFF00181052001810
      4A00F7EFFF00D6D6EF000000080000000000FFFFFF00EFFFFF00426B7300CEFF
      FF00BDD6CE00EFFFFF00DEFFF700C6FFF700C6FFF700D6FFF700DEFFF700B5D6
      DE009CC6CE0000000000F7FFFF00000000000000000000000000000000000000
      0000000000000000000029CE8400187BBD00217BBD001884C6005A94B5008C84
      8400EFEFEF00F7EFE700ADDEEF0052CEFF005ACEF7005AB5DE0084949C00C6C6
      BD00DEDED600DEDEDE00E7E7E700C6CECE00295A7300424A52009C9C9C00F7EF
      EF006B94AD002994CE00298CC600298CC60000000800E7E7F700101031001010
      310000001000F7F7FF00E7EFFF00E7E7FF00F7EFFF00E7E7FF00EFEFFF00E7E7
      FF00F7F7FF00DED6F7000808180000000000EFFFFF00EFFFFF00E7FFFF003963
      730000000000C6D6CE00EFFFF700CEFFF700CEFFFF00DEFFF700ADCED6000000
      100000000800EFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000018EF5200217BBD00187BB500319CD6006B9CAD00A59C
      9C00FFF7F700D6DEE7004AADDE0039B5EF004AB5F7004AC6FF00399CD600737B
      8400D6D6D600E7E7E700EFEFEF00CECECE003952630042424A00ADADAD00EFE7
      E7008CB5C6008CE7FF008CDEFF0084DEF70000000800DEDEF700DEDEFF001010
      3100000018001010310018215200101852001010520021185A0010104A002121
      520021184200100829000000100000000000EFFFFF00E7FFF700EFFFFF00E7FF
      FF00C6F7F70000000000BDCECE00D6FFFF00D6FFFF00ADCED600000010008CC6
      F70000001000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000008FF21002194B5001873B50021A5E700639CB500B5AD
      A500FFFFFF007BE7940008EF210008F7310008EF420008E7520021E75A0052CE
      7B00ADA5A500EFEFE700F7F7F700BDC6C60021736300394A4A00BDBDBD00E7DE
      DE006BADBD006BD6F7007BCEF70084D6F70000001000EFEFFF00D6D6FF00D6D6
      FF0000001000C6C6DE0010184200182152001810520018105A00181852001818
      420029185200100831000000080000000000FFFFFF00FFFFFF00FFFFFF00F7FF
      FF0039636B00CEFFFF0000000800B5D6DE00A5CED6000000100094C6F7000000
      420000001800FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000018EF4A0018DE840000DE940042A59C00BDAD
      AD00EFF7EF0029FF2100000000000000000000000000000000000000000052C6
      52008C848400F7F7F700FFFFFF008CB58C0010DE1800425A4200CEC6C600DED6
      CE0029E75A0000F7310010E7420010EF5200080021001008310021184A001818
      4200000018000000290000002100000029000000310000002900000018000000
      180000002100000018000000080000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFFFFF00E7FFFF0031637B00B5F7FF008CCED60000000000E7F7FF002100
      840008002900FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000029EF4200ADAD
      9C0094F79400000000000000000000000000000000000000000021FF21005A63
      5A00C6C6BD00FFFFFF00F7F7F70052CE520029EF2900424A4200D6D6D600C6CE
      BD0021F729000000000000000000000000000000180029214A00211852002110
      5A001810520010104A00101852001818520010104A000008290000081000EFFF
      FF00F7F7FF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFF
      F700F7FFFF00EFFFFF00DEFFFF002963730000000800EFFFFF00F7F7FF002108
      6B0000001800FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000021EF
      210010FF1000000000000000000000000000000000000000000063D663006B6B
      6B00F7F7F700FFFFFF00CEDECE0010FF100031E731004A4A4A00E7E7E700ADC6
      AD0018FF18000000000000000000000000000000180000002100000031000000
      310000003900000031000000310000003100000021000000180000080800F7FF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00F7FFF700FFFFFF00FFFF
      FF00FFFFFF00F7F7FF00F7FFFF00F7FFFF00EFFFFF00F7FFFF00FFFFFF00FFF7
      FF00F7FFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000021FF21006B846B00ADAD
      AD00FFFFFF00EFEFEF005AEF5A000000000031BD31005A5A5A00F7F7F700A5C6
      A50008FF08000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00F7FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7FFFF00F7FFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000E7EFF700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063DE63006B6B6B00F7F7
      F700E7E7E7006BEF6B00000000000000000042B5420063636300F7F7F70094CE
      940000FF0000000000000000000000000000000000000000000000000000E7EF
      F700E7E7E700CECECE00E7E7E700E7EFF7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000029F7290010FF100008FF08007BA57B00ADADAD00CEEF
      CE0042E742000000000000000000000000003994390084848400FFFFFF007BC6
      73000000000000000000000000000000000000000000E7EFF700E7E7E700B5B5
      B500CE9C9C009C6363009C636300B5B5B500CECECE00E7E7E700E7EFF7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000039AD310029944A0000FF000031EF31005AF75A0021FF
      210000000000000000000000000010FF0800185A18007B7B8400CEC6CE003194
      420000FF0000000000000000000000000000E7E7E700CE9C9C009C636300CE9C
      9C00CE9C9C00FFFFFF009C6363009C9C9C009C9C9C00B5B5B500E7E7E7000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000FFFF000000000000000000000000000000000000000000C6C6C6000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000039CE39003142420021BD420000000000000000000000
      000000000000000000000000000031DE2900007B080008C6520010D6840018CE
      5A0008FF10000000000000000000000000009C636300CE9C9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C63630031639C0031639C0031639C00E7EFF7000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00C6C6C6000000000000000000000000000000000000000000C6C6C6000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000042F74200848C94002139390029DE3900000000000000
      000000000000000000000000000052A54A002963310010AD520021C67B00319C
      520000FF00000000000000000000000000009C636300FFCE9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C63630063CECE0063CECE00009CCE00FFFFFF00FFCE
      CE0000000000000000000000000000000000000000000000000000000000C6C6
      C60000FFFF000000000000000000000000000000000000000000C6C6C6000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000B5F7B50063737B003152520039E74A000000
      0000000000000000000018F718005A634A00524A5200312931004A424200639C
      6300000000000000000000000000000000009C636300FFCE9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C63630063CECE0063CEFF00319CCE00FFCECE00CE63
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000FFFF00C6C6C600C6C6C60000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000042FF4200D6DED6004A5A6300395A630052DE
      6B0018FF180018F721005AA56300423939004A4A4A004A4A4A005A5A5A008CA5
      8C0018FF18000000000000000000000000009C636300FFCE9C00CE9C9C00CE9C
      6300FFCECE00FFFFFF009C6363009CCECE009CCEFF00B5B5B500FF630000CE63
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00C6C6C60000000000000000000000000000000000000000000000000000FF
      FF00C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008CFF8C00D6D6D6004A637300315A
      6B0063A5A500639C9C00394A4A00636363009C9C9C00A5A5A500A5A5A5009C9C
      9C0073C67B0021FF310010F7180029C639009C636300FFCE9C009C636300FFFF
      FF00FFCECE00FFFFFF009C6363009CCECE00C6C6C600CE630000CE630000CE63
      0000CE630000CE630000CE63000000000000000000000000000000000000C6C6
      C60000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000008FF0800BDFFB500E7DEDE007B94
      9C004A7B940039637B0052636300C6C6C600E7E7E700DEDEDE00EFE7E700C6C6
      C60052525A0063848C005A948C00425A6B009C636300FFCE9C00CE9C9C009C63
      6300FFCECE00FFFFFF009C63630000000000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE6300000000000000000000000000000000000000FF
      FF0000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000018FF1800BDEFBD00FFFF
      FF00DEDEDE00BDBDBD00D6D6D600E7E7EF00E7E7E700EFEFEF00FFFFFF00FFFF
      FF008484840084848400DEE7E700CECECE009C636300FFCE9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C63630000000000CE9C9C00CE630000CE630000CE63
      0000CE630000CE630000CE6300000000000000000000000000000000000000FF
      FF0000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000018FF18009CE7
      9C00FFFFFF00FFFFFF00FFFFFF00F7F7F700F7F7F700F7F7F700FFFFFF00FFFF
      FF009C9C9C007B7B7B00BDBDBD00B5B5B5009C636300FFCE9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C636300CECECE00E7EFF700CE9C9C00FF630000CE63
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      00004AE74A009CD69C00D6E7DE00F7F7F700FFFFFF00FFFFFF00FFFFFF00EFEF
      EF007BAD7B004AC64A0063D66300A5B5A5009C636300FFCE9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C6363009CCECE00000000009CCECE00FFCE9C00CE63
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000021EF210039DE39005AD65A0063C6630063C6630052D6
      520008FF0800000000000000000039F739009C636300CE9C9C00FFCE9C00FFCE
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
      2800000040000000600000000100010000000000000300000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFE39F000080018000E39F0000
      00010100E39F000000010000FFFF000000010000E01F000000010000C01F0000
      00010000CF8F000000010000C94F000000010000DFCF000000010000C9470000
      000100009FE70000000100008963000000010000FFF3000000010000FFF00000
      00010000FFF0000000010000FFF80000E0008001FFFFFFFFF001008180016001
      F000008100010001F000008100010001F000008300010001F000008300010001
      F800000000010001F800000000010001F800000000010001FC00000000010001
      FC00000000010001FC00000000010001FE03E00000010001FFC7C00700014003
      FFE7C00700010001FFFF8107FFFF1001FDFFFFFFFFFF8307E0FFFFFFFFFC070F
      801FE003FFFC0E07001FC003FFFC7E07001FC003FFFC3E07000FC003FFFC1C0F
      000FC003FFFE0007000FC003FFFF00000001C003FFFF00000101C003FFFF8000
      0101C003FFFFC000000FC003FFFFE000008FC003FFFFF80600AFC003FFFFFFFF
      803FFFFFFFFFFFFFE1FFFFFFFFFFFFFF8003FFFFF81FFFFF00030001F81FC007
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
    object Act_ItemChange: TAction
      Category = #21462#20540
      Caption = 'Act_ItemChange'
      OnExecute = Act_ItemChangeExecute
    end
    object Act_Update: TAction
      Category = #21462#20540
      Caption = 'Act_Update'
      OnExecute = Act_UpdateExecute
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
    object Act_AgentName: TAction
      Category = #21462#20540
      Caption = 'Act_AgentName'
      OnExecute = Act_AgentNameExecute
    end
    object Act_FWorkBudgetNum: TAction
      Category = #21462#20540
      Caption = 'Act_FWorkBudgetNum'
      OnExecute = Act_FWorkBudgetNumExecute
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
    Left = 67
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
end
