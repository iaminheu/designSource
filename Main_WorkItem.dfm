inherited Frm_WorkItem: TFrm_WorkItem
  Left = 234
  Top = 160
  Caption = #29983#20135#20219#21153#21333
  ClientHeight = 720
  ClientWidth = 1262
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image: TImage
    Width = 1262
  end
  inherited L_title: TLabel
    Left = -114
    Top = 20
    Width = 1281
    Caption = #36890#29992#25968#25454#30331#35760
  end
  inherited P_back: TPanel
    Width = 1262
    Height = 699
    inherited P_main: TPanel
      Width = 1256
      Height = 693
      object PC_2: TRzPageControl [0]
        Left = 0
        Top = 0
        Width = 1254
        Height = 677
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
          Caption = #32534#36753
          object PanelBkGnd: TPanel
            Left = 0
            Top = 0
            Width = 1252
            Height = 656
            Align = alClient
            BevelOuter = bvNone
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 0
            object RzSizePanel1: TRzSizePanel
              Left = 0
              Top = 0
              Width = 197
              Height = 656
              Color = 14935011
              HotSpotVisible = True
              SizeBarWidth = 7
              TabOrder = 0
              VisualStyle = vsGradient
              object MyTreeView: TTreeView
                Left = 0
                Top = 0
                Width = 189
                Height = 656
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
              Left = 197
              Top = 0
              Width = 1055
              Height = 656
              Align = alClient
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 1
              object cxGrid: TcxGrid
                Left = 0
                Top = 297
                Width = 1055
                Height = 291
                Align = alClient
                TabOrder = 0
                object cxGV: TcxGridDBTableView
                  DataController.DataSource = DS_Mdata
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
                  OnCustomDrawCell = cxGVCustomDrawCell
                  OnFocusedRecordChanged = cxGVFocusedRecordChanged
                  OptionsData.CancelOnExit = False
                  OptionsData.DeletingConfirmation = False
                  OptionsData.Editing = False
                  OptionsData.Inserting = False
                  OptionsView.Navigator = True
                  OptionsView.Footer = True
                  OptionsView.GroupByBox = False
                  object FIsDelList: TcxGridDBColumn
                    Caption = #34892#20316#24223
                    PropertiesClassName = 'TcxCheckBoxProperties'
                    Properties.DisplayUnchecked = 'False'
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 42
                    DataBinding.FieldName = 'FIsDelList'
                  end
                  object FWorkListNum: TcxGridDBColumn
                    Caption = #24207#21495
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 51
                    DataBinding.FieldName = 'FWorkListNum'
                  end
                  object Sel: TcxGridDBColumn
                    Caption = #8730
                    PropertiesClassName = 'TcxButtonEditProperties'
                    Properties.Buttons = <
                      item
                        Default = True
                        Kind = bkEllipsis
                      end>
                    Properties.OnButtonClick = Sel_PricePropertiesButtonClick
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Filtering = False
                    Width = 20
                  end
                  object FNumber1: TcxGridDBColumn
                    Caption = #37096#20214#32534#30721
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    SortOrder = soDescending
                    Width = 72
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
                  object FWorkResizePrice: TcxGridDBColumn
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
                    Width = 77
                    DataBinding.FieldName = 'FWorkResizePrice'
                  end
                  object PSel: TcxGridDBColumn
                    Caption = #9651
                    PropertiesClassName = 'TcxButtonEditProperties'
                    Properties.Buttons = <
                      item
                        Default = True
                        Kind = bkEllipsis
                      end>
                    Properties.OnButtonClick = PSelPropertiesButtonClick
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Filtering = False
                    Width = 20
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
                    Options.Filtering = False
                    Width = 48
                    DataBinding.FieldName = 'FQry'
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
                    Options.Filtering = False
                    Width = 65
                    DataBinding.FieldName = 'FEstimateQry'
                  end
                  object FBalanceBasePrice: TcxGridDBColumn
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
                    Width = 53
                    DataBinding.FieldName = 'FBalanceBasePrice'
                  end
                  object FWorkOutPrice: TcxGridDBColumn
                    Caption = #24037#31649#36148#34917#20215
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.DecimalPlaces = 6
                    Properties.DisplayFormat = ',0.000000;-,0.000000'
                    Properties.ValidateOnEnter = True
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Filtering = False
                    Width = 65
                    DataBinding.FieldName = 'FWorkOutPrice'
                  end
                  object FOutPrice: TcxGridDBColumn
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
                    Width = 53
                    DataBinding.FieldName = 'FOutPrice'
                  end
                  object FWorkItemPrice: TcxGridDBColumn
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
                    DataBinding.FieldName = 'FWorkItemPrice'
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
                  object FLength: TcxGridDBColumn
                    Caption = #38271#24230
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.DecimalPlaces = 0
                    Properties.DisplayFormat = '0'
                    Properties.ValidateOnEnter = True
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 66
                    DataBinding.FieldName = 'FLength'
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
                  object FWorkListRemark: TcxGridDBColumn
                    Caption = #20219#21153#21333#22791#27880
                    PropertiesClassName = 'TcxButtonEditProperties'
                    Properties.Buttons = <
                      item
                        Default = True
                        Kind = bkEllipsis
                      end>
                    Properties.OnButtonClick = FWorkListRemarkPropertiesButtonClick
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Filtering = False
                    Width = 114
                    DataBinding.FieldName = 'FWorkListRemark'
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
                    Options.Filtering = False
                    Width = 96
                    DataBinding.FieldName = 'FDeliveryDateTxt'
                  end
                  object FBalanceWorkAdjust: TcxGridDBColumn
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
                    Width = 61
                    DataBinding.FieldName = 'FBalanceWorkAdjust'
                  end
                  object FBalanceAdjust: TcxGridDBColumn
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
                    Width = 53
                    DataBinding.FieldName = 'FBalanceAdjust'
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
                    Caption = #26448#26009#25191#34892#26085#26399
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 99
                    DataBinding.FieldName = 'FMaterialDate'
                  end
                  object FWorkDate: TcxGridDBColumn
                    Caption = #24037#31649#25191#34892#26085#26399
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 77
                    DataBinding.FieldName = 'FWorkDate'
                  end
                  object FBalanceID: TcxGridDBColumn
                    Caption = #32467#31639#37096#20214'ID'
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 64
                    DataBinding.FieldName = 'FBalanceID'
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
                  object FProductClass: TcxGridDBColumn
                    Caption = #20135#21697#31867#21035
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 53
                    DataBinding.FieldName = 'FProductClass'
                  end
                end
                object cxGL: TcxGridLevel
                  GridView = cxGV
                end
              end
              object Panel2: TPanel
                Left = 0
                Top = 41
                Width = 1055
                Height = 256
                Align = alTop
                BevelOuter = bvNone
                ParentColor = True
                TabOrder = 1
                Visible = False
                object Label5: TLabel
                  Left = 6
                  Top = 45
                  Width = 60
                  Height = 13
                  Caption = #20219#21153#21333#21495#65306
                  Color = clInactiveCaptionText
                  ParentColor = False
                  Transparent = True
                end
                object Label6: TLabel
                  Left = 6
                  Top = 129
                  Width = 60
                  Height = 13
                  Caption = #29983#20135#21333#20301#65306
                  Transparent = True
                end
                object Label1: TLabel
                  Left = 6
                  Top = 87
                  Width = 60
                  Height = 13
                  Caption = #39033#30446#21517#31216#65306
                  Transparent = True
                end
                object Label2: TLabel
                  Left = 414
                  Top = 87
                  Width = 60
                  Height = 13
                  Caption = #35268#26684#22411#21495#65306
                  Transparent = True
                end
                object Label3: TLabel
                  Left = 414
                  Top = 108
                  Width = 60
                  Height = 13
                  Caption = #22270'        '#21495#65306
                  Transparent = True
                end
                object Label4: TLabel
                  Left = 414
                  Top = 129
                  Width = 60
                  Height = 13
                  Caption = #26723'  '#26696'  '#21495#65306
                  Transparent = True
                end
                object Label8: TLabel
                  Left = 6
                  Top = 108
                  Width = 60
                  Height = 13
                  Caption = #20132#36135#22320#28857#65306
                  Transparent = True
                end
                object Label9: TLabel
                  Left = 414
                  Top = 171
                  Width = 60
                  Height = 13
                  Caption = #21152#24037#22320#28857#65306
                  Transparent = True
                end
                object Label10: TLabel
                  Left = 6
                  Top = 150
                  Width = 60
                  Height = 13
                  Caption = #25191#34892#26085#26399#65306
                  Transparent = True
                end
                object Label12: TLabel
                  Left = 6
                  Top = 171
                  Width = 60
                  Height = 13
                  Caption = #21152#24037#24418#24335#65306
                  Transparent = True
                end
                object Label7: TLabel
                  Left = 414
                  Top = 45
                  Width = 60
                  Height = 13
                  Caption = #26085'        '#26399#65306
                  Transparent = True
                end
                object Label15: TLabel
                  Left = 414
                  Top = 192
                  Width = 60
                  Height = 13
                  Caption = #39044#20184#27604#20363#65306
                  Transparent = True
                end
                object Label13: TLabel
                  Left = 6
                  Top = 192
                  Width = 60
                  Height = 13
                  Caption = #20132#36135#26085#26399#65306
                  Transparent = True
                end
                object Label14: TLabel
                  Left = 6
                  Top = 213
                  Width = 60
                  Height = 13
                  Caption = #20116#12289#34917#20805#65306
                  Transparent = True
                end
                object SB_1: TSpeedButton
                  Left = 251
                  Top = 145
                  Width = 23
                  Height = 22
                  Hint = #22797#21046#21152#24037#21333#20301#24120#29992#37096#20214#20449#24687#12290
                  Enabled = False
                  Glyph.Data = {
                    36050000424D3605000000000000360400002800000010000000100000000100
                    0800000000000001000000000000000000000001000000010000000000004A00
                    00005A0800003118000063180000B5180000632100008C2100009C2100006331
                    0000CE310000CE390000CE4A0000101010001818180000002100080821002121
                    2100292929005A3129005A4229000000310031313100CE6B3100393939004242
                    420000004A0008084A0018184A0029294A004A4A4A005252520000005A005A5A
                    5A00635A5A000000630031316300636363006B636300CE846300C69463006B6B
                    6B00D68C6B00000073004A4A7B007B7B7B00E79C7B0029298400B59C84009494
                    9400CEB5940000009C0008089C00A59C9C004A4AA5008C8CA500A5A5A5007B7B
                    AD00B5ADAD006B63B5006B6BBD00A5A5BD00C6BDBD007B7BCE00D6D6D600DEDE
                    DE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00424242420003
                    021142424242424242424242000E1E09050D110D424242424242001218212509
                    051C230D0D4242424242041F21262104051C2304011911424242041F2913080A
                    051C23040119164242420404080B1717051A2304010D00101511040B17324028
                    051A2304010E1E1C2311042A40414130072C23040121251C2300042E413E2D22
                    383923040126211B230004272D2638413E2D240C011D2B33230003031A3F3E2D
                    22313A142B34363623004242202F13353A1F0F34363D40392300424200000C1F
                    00421A3C40414137230042424242004242421A3F413E2D120042424242424242
                    42421A3B2D120042424242424242424242421515004242424242}
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = SB_1Click
                end
                object Label16: TLabel
                  Left = 6
                  Top = 66
                  Width = 60
                  Height = 13
                  Caption = #20219#21153#20449#24687#65306
                  Transparent = True
                end
                object Label17: TLabel
                  Left = 414
                  Top = 66
                  Width = 60
                  Height = 13
                  Caption = #20316#24223#26631#35760#65306
                  Transparent = True
                end
                object Label11: TLabel
                  Left = 414
                  Top = 150
                  Width = 60
                  Height = 13
                  Caption = #21488'  '#22871'  '#25968#65306
                  Transparent = True
                end
                object L_Caption: TLabel
                  Left = 0
                  Top = 0
                  Width = 1055
                  Height = 24
                  Align = alTop
                  Alignment = taCenter
                  AutoSize = False
                  Caption = #31119#24314#40857#20928#29615#20445#32929#20221#26377#38480#20844#21496#29983#20135#20219#21153#21333
                  Font.Charset = GB2312_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = #23435#20307
                  Font.Style = [fsBold]
                  ParentFont = False
                  Transparent = True
                end
                object Label18: TLabel
                  Left = 6
                  Top = 24
                  Width = 60
                  Height = 13
                  Caption = #20219#21153#29366#24577#65306
                  Color = clInactiveCaptionText
                  ParentColor = False
                  Transparent = True
                end
                object Label19: TLabel
                  Left = 6
                  Top = 234
                  Width = 60
                  Height = 13
                  Caption = #20219#21153#32534#21046#65306
                  Color = clInactiveCaptionText
                  ParentColor = False
                  Transparent = True
                end
                object Label20: TLabel
                  Left = 252
                  Top = 234
                  Width = 36
                  Height = 13
                  Caption = #26657#23545#65306
                  Color = clInactiveCaptionText
                  ParentColor = False
                  Transparent = True
                end
                object Label21: TLabel
                  Left = 471
                  Top = 234
                  Width = 36
                  Height = 13
                  Caption = #23457#26680#65306
                  Color = clInactiveCaptionText
                  ParentColor = False
                  Transparent = True
                end
                object Label22: TLabel
                  Left = 684
                  Top = 234
                  Width = 36
                  Height = 13
                  Caption = #25509#25910#65306
                  Color = clInactiveCaptionText
                  ParentColor = False
                  Transparent = True
                end
                object Label23: TLabel
                  Left = 190
                  Top = 171
                  Width = 60
                  Height = 13
                  Caption = #25307#26631#26085#26399#65306
                  Transparent = True
                end
                object E_FAgentNameQry: TcxButtonEdit
                  Left = 78
                  Top = 124
                  Width = 283
                  Height = 22
                  AutoSize = False
                  Enabled = False
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  Properties.OnButtonClick = E_FWorkMaxNumIDPropertiesButtonClick
                  Style.BorderColor = 8623776
                  Style.BorderStyle = ebsSingle
                  Style.Color = 15658734
                  Style.ButtonTransparency = ebtHideUnselected
                  TabOrder = 3
                  ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WIN2000'
                end
                object E_FAgentID: TcxButtonEdit
                  Left = 366
                  Top = 124
                  Width = 39
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
                end
                object E_FClientFullName: TcxButtonEdit
                  Left = 78
                  Top = 82
                  Width = 283
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
                  TabOrder = 1
                  ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WIN2000'
                end
                object E_FWorkItemDate: TcxDateEdit
                  Left = 486
                  Top = 40
                  Width = 137
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
                  TabOrder = 0
                end
                object E_FDeliveryPlace: TcxButtonEdit
                  Left = 78
                  Top = 103
                  Width = 283
                  Height = 22
                  AutoSize = False
                  Enabled = False
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  Properties.OnButtonClick = E_FDeliveryPlacePropertiesButtonClick
                  Style.BorderColor = 8623776
                  Style.BorderStyle = ebsSingle
                  Style.Color = 15658734
                  Style.ButtonTransparency = ebtHideUnselected
                  TabOrder = 2
                  ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WIN2000'
                end
                object E_FJobPlace: TcxButtonEdit
                  Left = 486
                  Top = 166
                  Width = 137
                  Height = 22
                  AutoSize = False
                  Enabled = False
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  Properties.OnButtonClick = E_FJobPlacePropertiesButtonClick
                  Style.BorderColor = 8623776
                  Style.BorderStyle = ebsSingle
                  Style.Color = 15658734
                  Style.ButtonTransparency = ebtHideUnselected
                  TabOrder = 4
                  ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WIN2000'
                end
                object E_FMaterialDate: TcxButtonEdit
                  Left = 78
                  Top = 145
                  Width = 136
                  Height = 22
                  AutoSize = False
                  Enabled = False
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  Properties.OnButtonClick = E_FMaterialDatePropertiesButtonClick
                  Style.BorderColor = 8623776
                  Style.BorderStyle = ebsSingle
                  Style.Color = 15658734
                  Style.ButtonTransparency = ebtHideUnselected
                  TabOrder = 6
                  ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WIN2000'
                end
                object E_FWorkItemID: TcxTextEdit
                  Left = 366
                  Top = 40
                  Width = 35
                  Height = 22
                  AutoSize = False
                  Enabled = False
                  Style.BorderColor = 8623776
                  Style.BorderStyle = ebsSingle
                  Style.Color = 15658734
                  TabOrder = 8
                end
                object E_FItemId: TcxTextEdit
                  Left = 366
                  Top = 82
                  Width = 35
                  Height = 22
                  AutoSize = False
                  Enabled = False
                  Style.BorderColor = 8623776
                  Style.BorderStyle = ebsSingle
                  Style.Color = 15658734
                  TabOrder = 9
                end
                object E_FJobMode: TcxButtonEdit
                  Left = 78
                  Top = 166
                  Width = 107
                  Height = 22
                  AutoSize = False
                  Enabled = False
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  Properties.LookupItems.Strings = (
                    #21253#24037#21253#26009
                    #21253#24037#19981#21253#26009)
                  Style.BorderColor = 8623776
                  Style.BorderStyle = ebsSingle
                  Style.Color = 15658734
                  Style.ButtonTransparency = ebtHideUnselected
                  TabOrder = 5
                  Text = #21253#24037#21253#26009
                  ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WIN2000'
                end
                object E_FAdvancePercent: TcxCurrencyEdit
                  Left = 486
                  Top = 187
                  Width = 137
                  Height = 22
                  Hint = #21152#24037#21333#20215#35843#25972#26102#22635#20889#12290
                  AutoSize = False
                  EditValue = 20.000000000000000000
                  Enabled = False
                  ParentShowHint = False
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DisplayFormat = ',0.00;-,0.00'
                  Properties.ValidateOnEnter = True
                  ShowHint = True
                  Style.BorderColor = 8623776
                  Style.BorderStyle = ebsSingle
                  Style.Color = 15658734
                  TabOrder = 10
                end
                object E_FDeliveryDate: TcxDateEdit
                  Left = 262
                  Top = 187
                  Width = 137
                  Height = 22
                  AutoSize = False
                  Enabled = False
                  ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WINXP'
                  ParentFont = False
                  Properties.Alignment.Horz = taCenter
                  Properties.Alignment.Vert = taVCenter
                  Properties.ReadOnly = False
                  Properties.OnChange = E_FDeliveryDatePropertiesChange
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
                  TabOrder = 11
                  Visible = False
                end
                object E_FDepartmentNum: TcxTextEdit
                  Left = 78
                  Top = 40
                  Width = 35
                  Height = 22
                  AutoSize = False
                  Enabled = False
                  Style.BorderColor = 8623776
                  Style.BorderStyle = ebsSingle
                  Style.Color = 15658734
                  TabOrder = 12
                end
                object E_FE05: TcxButtonEdit
                  Left = 78
                  Top = 208
                  Width = 547
                  Height = 22
                  AutoSize = False
                  Enabled = False
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  Properties.LookupItems.Strings = (
                    #21253#24037#21253#26009
                    #21253#24037#19981#21253#26009)
                  Properties.OnButtonClick = E_FE05PropertiesButtonClick
                  Style.BorderColor = 8623776
                  Style.BorderStyle = ebsSingle
                  Style.Color = 15658734
                  Style.ButtonTransparency = ebtHideUnselected
                  TabOrder = 13
                  ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WIN2000'
                end
                object E_FWorkData: TcxButtonEdit
                  Left = 224
                  Top = 40
                  Width = 137
                  Height = 22
                  AutoSize = False
                  Enabled = False
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  Properties.OnButtonClick = E_FWorkDataPropertiesButtonClick
                  Style.BorderColor = 8623776
                  Style.BorderStyle = ebsSingle
                  Style.Color = 15658734
                  Style.ButtonTransparency = ebtHideUnselected
                  TabOrder = 14
                  ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WIN2000'
                end
                object E_FWorkItemRemark: TcxButtonEdit
                  Left = 78
                  Top = 61
                  Width = 323
                  Height = 22
                  AutoSize = False
                  Enabled = False
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  Properties.OnButtonClick = E_FWorkItemRemarkPropertiesButtonClick
                  Style.BorderColor = 8623776
                  Style.BorderStyle = ebsSingle
                  Style.Color = 15658734
                  Style.ButtonTransparency = ebtHideUnselected
                  TabOrder = 15
                  ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WIN2000'
                end
                object E_FIsdel: TcxCheckBox
                  Left = 484
                  Top = 62
                  Width = 22
                  Height = 21
                  Enabled = False
                  ParentColor = False
                  Properties.DisplayUnchecked = 'False'
                  Style.BorderColor = 8623776
                  Style.BorderStyle = ebsSingle
                  Style.Color = 15658734
                  TabOrder = 16
                end
                object E_FDeliveryDateTxt: TcxButtonEdit
                  Left = 78
                  Top = 187
                  Width = 182
                  Height = 22
                  AutoSize = False
                  Enabled = False
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  Properties.LookupItems.Strings = (
                    #21253#24037#21253#26009
                    #21253#24037#19981#21253#26009)
                  Properties.OnButtonClick = E_FDeliveryDateTxtPropertiesButtonClick
                  Style.BorderColor = 8623776
                  Style.BorderStyle = ebsSingle
                  Style.Color = 15658734
                  Style.ButtonTransparency = ebtHideUnselected
                  TabOrder = 17
                  ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WIN2000'
                  OnDblClick = E_FDeliveryDateTxtDblClick
                end
                object E_FWorkItemNum: TcxMaskEdit
                  Left = 120
                  Top = 41
                  Width = 97
                  Height = 21
                  Enabled = False
                  Properties.EditMask = '999999999'
                  Properties.MaxLength = 0
                  Style.BorderColor = 8623776
                  Style.BorderStyle = ebsSingle
                  Style.Color = 15658734
                  TabOrder = 18
                  Text = '         '
                  OnDblClick = E_FWorkItemNumDblClick
                end
                object E_FItemQry: TcxCurrencyEdit
                  Left = 486
                  Top = 145
                  Width = 137
                  Height = 22
                  Hint = #21152#24037#21333#20215#35843#25972#26102#22635#20889#12290
                  AutoSize = False
                  EditValue = 0.000000000000000000
                  Enabled = False
                  ParentShowHint = False
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DecimalPlaces = 0
                  Properties.DisplayFormat = '0'
                  Properties.ValidateOnEnter = True
                  ShowHint = True
                  Style.BorderColor = 8623776
                  Style.BorderStyle = ebsSingle
                  Style.Color = 15658734
                  TabOrder = 19
                end
                object E_FProductName: TcxTextEdit
                  Left = 510
                  Top = 61
                  Width = 113
                  Height = 22
                  AutoSize = False
                  Enabled = False
                  Style.BorderColor = 8623776
                  Style.BorderStyle = ebsSingle
                  Style.Color = 15658734
                  TabOrder = 20
                end
                object E_FWorkStatus: TcxTextEdit
                  Left = 169
                  Top = 19
                  Width = 35
                  Height = 22
                  AutoSize = False
                  Enabled = False
                  Style.BorderColor = 8623776
                  Style.BorderStyle = ebsSingle
                  Style.Color = 15658734
                  TabOrder = 21
                  ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899#36755#20837#27861' 3.0 '#29256
                end
                object E_FPriceDateID: TcxTextEdit
                  Left = 214
                  Top = 145
                  Width = 35
                  Height = 22
                  AutoSize = False
                  Enabled = False
                  Style.BorderColor = 8623776
                  Style.BorderStyle = ebsSingle
                  Style.Color = 15658734
                  TabOrder = 22
                end
                object E_FSystem: TcxButtonEdit
                  Left = 291
                  Top = 145
                  Width = 69
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
                  TabOrder = 23
                  ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WIN2000'
                end
                object E_FBidDate: TcxDateEdit
                  Left = 262
                  Top = 166
                  Width = 137
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
                  TabOrder = 24
                end
                object E_FStatusNotes: TcxDBTextEdit
                  Left = 78
                  Top = 19
                  Width = 88
                  Height = 21
                  DataBinding.DataField = 'FStatusNotes'
                  DataBinding.DataSource = DS_Mdata
                  Enabled = False
                  Style.BorderColor = 8623776
                  Style.BorderStyle = ebsSingle
                  Style.Color = 15658734
                  TabOrder = 25
                end
                object E_FItemNumber: TcxButtonEdit
                  Left = 486
                  Top = 103
                  Width = 137
                  Height = 22
                  AutoSize = False
                  Enabled = False
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  Properties.OnButtonClick = cxButtonEdit2PropertiesButtonClick
                  Style.BorderColor = 8623776
                  Style.BorderStyle = ebsSingle
                  Style.Color = 15658734
                  Style.ButtonTransparency = ebtHideUnselected
                  TabOrder = 26
                  ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WIN2000'
                end
                object E_FBranchFileNo: TcxButtonEdit
                  Left = 486
                  Top = 124
                  Width = 137
                  Height = 22
                  AutoSize = False
                  Enabled = False
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  Properties.OnButtonClick = cxButtonEdit2PropertiesButtonClick
                  Style.BorderColor = 8623776
                  Style.BorderStyle = ebsSingle
                  Style.Color = 15658734
                  Style.ButtonTransparency = ebtHideUnselected
                  TabOrder = 27
                  ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WIN2000'
                end
                object E_FItemModel: TcxTextEdit
                  Left = 486
                  Top = 82
                  Width = 137
                  Height = 22
                  AutoSize = False
                  Enabled = False
                  Style.BorderColor = 8623776
                  Style.BorderStyle = ebsSingle
                  Style.Color = 15658734
                  TabOrder = 28
                end
                object E_FWorkWrite: TcxTextEdit
                  Left = 78
                  Top = 229
                  Width = 70
                  Height = 22
                  AutoSize = False
                  Enabled = False
                  Style.BorderColor = 8623776
                  Style.BorderStyle = ebsSingle
                  Style.Color = 15658734
                  TabOrder = 29
                end
                object E_FWorkCheck: TcxTextEdit
                  Left = 291
                  Top = 229
                  Width = 70
                  Height = 22
                  AutoSize = False
                  Enabled = False
                  Style.BorderColor = 8623776
                  Style.BorderStyle = ebsSingle
                  Style.Color = 15658734
                  TabOrder = 30
                end
                object E_FWorkAudit: TcxTextEdit
                  Left = 510
                  Top = 229
                  Width = 70
                  Height = 22
                  AutoSize = False
                  Enabled = False
                  Style.BorderColor = 8623776
                  Style.BorderStyle = ebsSingle
                  Style.Color = 15658734
                  TabOrder = 31
                end
                object E_FWorkAccept: TcxTextEdit
                  Left = 723
                  Top = 229
                  Width = 70
                  Height = 22
                  AutoSize = False
                  Enabled = False
                  Style.BorderColor = 8623776
                  Style.BorderStyle = ebsSingle
                  Style.Color = 15658734
                  TabOrder = 32
                end
                object E_FWorkAcceptDate: TcxDateEdit
                  Left = 794
                  Top = 229
                  Width = 100
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
                  TabOrder = 33
                end
                object E_FWorkAuditDate: TcxDateEdit
                  Left = 582
                  Top = 229
                  Width = 100
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
                  TabOrder = 34
                end
                object E_FWorkCheckDate: TcxDateEdit
                  Left = 363
                  Top = 229
                  Width = 100
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
                  TabOrder = 35
                end
                object E_FWorkWriteDate: TcxDateEdit
                  Left = 150
                  Top = 229
                  Width = 100
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
                  TabOrder = 36
                end
              end
              object Panel_button: TPanel
                Left = 0
                Top = 588
                Width = 1055
                Height = 68
                Align = alBottom
                BevelOuter = bvNone
                ParentColor = True
                TabOrder = 2
                object Bevel_button: TBevel
                  Left = 0
                  Top = 5
                  Width = 1105
                  Height = 4
                end
                object OKBtn: TcxButton
                  Left = 63
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
                  Left = 159
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
                object StatusBar1: TStatusBar
                  Left = 0
                  Top = 49
                  Width = 1055
                  Height = 19
                  Panels = <
                    item
                      Width = 50
                    end
                    item
                      Width = 50
                    end
                    item
                      Width = 50
                    end
                    item
                      Width = 50
                    end
                    item
                      Width = 50
                    end
                    item
                      Width = 50
                    end>
                end
              end
              object Panel1: TPanel
                Left = 0
                Top = 0
                Width = 1055
                Height = 41
                Align = alTop
                ParentColor = True
                TabOrder = 3
                object ToolBar1: TToolBar
                  Left = 1
                  Top = 1
                  Width = 1053
                  Height = 38
                  ButtonHeight = 35
                  ButtonWidth = 67
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
                    Caption = #21047#26032
                    ImageIndex = 8
                    OnClick = TB_RefClick
                  end
                  object TB_App: TToolButton
                    Left = 35
                    Top = 0
                    AutoSize = True
                    Caption = #22686#21152
                    ImageIndex = 0
                    OnClick = TB_AppClick
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
                  object TB_DelOne: TToolButton
                    Left = 140
                    Top = 0
                    Caption = #21333#35760#24405#21024#38500
                    Enabled = False
                    ImageIndex = 2
                    Visible = False
                    OnClick = TB_DelOneClick
                  end
                  object TB_FIsDelList: TToolButton
                    Left = 207
                    Top = 0
                    Action = Act_FIsDelList
                    AutoSize = True
                    Visible = False
                  end
                  object TB_zf: TToolButton
                    Left = 254
                    Top = 0
                    AutoSize = True
                    Caption = #20316#24223
                    Enabled = False
                    ImageIndex = 23
                    Visible = False
                    OnClick = TB_zfClick
                  end
                  object TB_EditOne: TToolButton
                    Left = 289
                    Top = 0
                    AutoSize = True
                    Caption = #24050#32467#31639#26032#22686
                    Enabled = False
                    ImageIndex = 18
                    Visible = False
                    OnClick = TB_EditOneClick
                  end
                  object TB_Submit: TToolButton
                    Left = 360
                    Top = 0
                    Action = Act_Submit
                    AutoSize = True
                    Visible = False
                  end
                  object TB_Check: TToolButton
                    Left = 395
                    Top = 0
                    Action = Act_Check
                    AutoSize = True
                    Visible = False
                  end
                  object TB_Audit: TToolButton
                    Left = 430
                    Top = 0
                    Action = Act_Audit
                    AutoSize = True
                    Visible = False
                  end
                  object TB_PushDown: TToolButton
                    Left = 465
                    Top = 0
                    Action = Act_PushDown
                    AutoSize = True
                    Visible = False
                  end
                  object TB_Out: TToolButton
                    Left = 500
                    Top = 0
                    AutoSize = True
                    Caption = #23548#20986
                    Enabled = False
                    ImageIndex = 6
                    OnClick = TB_OutClick
                  end
                  object TB_BOMRight: TToolButton
                    Left = 535
                    Top = 0
                    AutoSize = True
                    Caption = #26435#38480
                    ImageIndex = 14
                    Visible = False
                    OnClick = TB_BOMRightClick
                  end
                  object ToolButton5: TToolButton
                    Left = 570
                    Top = 0
                    Width = 8
                    Caption = 'ToolButton5'
                    Enabled = False
                    ImageIndex = 4
                    Style = tbsSeparator
                  end
                  object TB_Down: TToolButton
                    Left = 578
                    Top = 0
                    Cursor = crHandPoint
                    AutoSize = True
                    Caption = #35774#32622
                    ImageIndex = 7
                    OnClick = TB_DownClick
                  end
                  object TB_Prin: TToolButton
                    Left = 613
                    Top = 0
                    Cursor = crHandPoint
                    AutoSize = True
                    Caption = #25171#21360
                    Enabled = False
                    ImageIndex = 4
                    OnClick = TB_PrinClick
                  end
                  object TB_WorkItem: TToolButton
                    Left = 648
                    Top = 0
                    AutoSize = True
                    Caption = #20219#21153#21333
                    ImageIndex = 4
                    OnClick = TB_WorkItemClick
                  end
                  object TB_Prin_xls: TToolButton
                    Left = 695
                    Top = 0
                    AutoSize = True
                    Caption = #20219#21153#21333
                    ImageIndex = 6
                    OnClick = TB_Prin_xlsClick
                  end
                  object ToolButton1: TToolButton
                    Left = 742
                    Top = 0
                    AutoSize = True
                    Caption = #36816#36755#21512#21516
                    ImageIndex = 6
                    OnClick = ToolButton1Click
                  end
                  object TB_EXIT: TToolButton
                    Left = 801
                    Top = 0
                    Cursor = crHandPoint
                    AutoSize = True
                    Caption = #36864#20986
                    ImageIndex = 5
                    OnClick = TB_EXITClick
                  end
                  object ToolButton2: TToolButton
                    Left = 836
                    Top = 0
                    AutoSize = True
                    Caption = #36830#25171
                    Enabled = False
                    ImageIndex = 4
                    Visible = False
                    OnClick = ToolButton2Click
                  end
                end
              end
            end
          end
        end
        object TS_Brow: TRzTabSheet
          Color = 14935011
          Caption = #26597#35810
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 1252
            Height = 656
            Align = alClient
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 0
            object RzSizePanel2: TRzSizePanel
              Left = 0
              Top = 0
              Width = 227
              Height = 656
              Color = 14935011
              HotSpotVisible = True
              SizeBarWidth = 7
              TabOrder = 0
              VisualStyle = vsGradient
              object PC2_1: TPageControl
                Left = 0
                Top = 0
                Width = 219
                Height = 656
                ActivePage = TS_Agent
                Align = alClient
                MultiLine = True
                TabOrder = 0
                object TS_WorkNum: TTabSheet
                  Caption = #25353#20219#21153#21333#21495
                  object TBar_Sel: TToolBar
                    Left = 0
                    Top = 0
                    Width = 211
                    Height = 29
                    AutoSize = True
                    ButtonHeight = 25
                    ButtonWidth = 161
                    Caption = 'TBar_Sel'
                    Images = ImageList
                    TabOrder = 0
                    object TB_WorkNum: TcxButton
                      Left = 0
                      Top = 2
                      Width = 80
                      Height = 25
                      BiDiMode = bdRightToLeftReadingOnly
                      Caption = #21047#26032'[&R]'
                      ParentBiDiMode = False
                      TabOrder = 0
                      OnClick = TB_WorkNumClick
                      Glyph.Data = {
                        F6020000424DF60200000000000036000000280000000E000000100000000100
                        180000000000C0020000C40E0000C40E000000000000000000000302000E0B07
                        0C0404090000150D0E070302030400020A000108000908001304021407090104
                        08B8C5C70000888888C4C6C6CCD1D0CAD0CFBCC9C7B8CDC4B8D8C7B5D3C0BED2
                        C6C7CECBCDC8C9CBC6C8000205C5D1D3150E808489F4FFFFE1FAFCD1F8F6D1FF
                        FFBFFFF0278054B5FFDDDCFFFFD8EEF9ECFFFFBFCED1000408C3C7CC9B008088
                        8FE8FBFFD3F9F9C8FFFBB0FFEE137D54128A50B3FFE7BFFDE7DFFFFFD5F7F6B1
                        CACC020B0FBEC1C60808778689E9FFFFDCFFFFBCFFEF1582520F8E510B844A1B
                        8248317E41D7FFDEDEFFF4B6CFCB000B09CDCFCF0808778584ECFFFFCFF9EECC
                        FFF4A7FFDB12884D158555B8FFE43D873F2C6324D1FADFBDD4CF000203C0BFC1
                        08087E8882F3FFF9E5FFF3C9FDDFC9FFEAB7FFE6258263AFFFDCDFFFDD2D551E
                        E6FFF2BCD3CF02010AD7CDDA0808888A84F3FFF2E4FFE82F583CD1FFE6C7FFEC
                        AEFFE8BDFFEED0FFD93B5D38DAFDE9B5CCC804030DD5C7D908088B8683FCFFF8
                        F1FFF432553BE1FFF0C2FFE01B8B51A1FFD8CDFFF1D1FBEADDFFF5B9D3CD0103
                        0BCDC4D10808918C89FBFFF9E9FBEE33513E4E775CCCFFE6118A400F8C46B6FF
                        E6D4FFFADAFEF2BBD0C8000102C9C8CC08087F807EFAFFFEF3FFFFD3F1E64D7E
                        5E2E7F481795430A8B3A1E7D4BCBFFECE8FFF3C3CFC30A110AC2C9C20808868D
                        8AF8FFFFECF7FBECFFFFE0FFF1CDFFE721904C118540B8FFE0D8FFF1BDD0C1CD
                        D0C7010500CBCFCA0808808986F1F9F8F8FFFFF4FFFFECFFFEDBFFF7307C5DBD
                        FFEBD6FFF3000A00000A04010101060005CEC6CD0808788381FAFFFFFAF9FBFE
                        FDFFFAFFFFEDFFFFC9F6EDD6FFFADAF8ED7D8D86F0F7FA0B0A13D7CDD9FFF6FF
                        0808818989FBFAFCFFFDFEFFFDFCFFFCF8FAFFFCF1FFFFEDFFFEEFFFF9758780
                        00060FBDBECCFFFAFFFDF5FF08087C83868D8A8C9D8585977E7A918982868882
                        8183837F878678897E778982C3CCD6F8FAFFFAF6FFFFFBFF170E}
                      LookAndFeel.Kind = lfUltraFlat
                      LookAndFeel.NativeStyle = False
                      UseSystemPaint = False
                    end
                  end
                  object MyTreeView_WorkNum: TTreeView
                    Left = 0
                    Top = 29
                    Width = 211
                    Height = 599
                    Align = alClient
                    AutoExpand = True
                    Ctl3D = False
                    Indent = 19
                    ParentCtl3D = False
                    TabOrder = 1
                    OnChange = MyTreeView_WorkNumChange
                    OnExpanding = MyTreeView_WorkNumExpanding
                  end
                end
                object TS_Agent: TTabSheet
                  Caption = #25353#22806#21327#21333#20301
                  ImageIndex = 1
                  object MyTreeView_Agent: TTreeView
                    Left = 0
                    Top = 29
                    Width = 211
                    Height = 599
                    Align = alClient
                    Ctl3D = False
                    Indent = 19
                    ParentCtl3D = False
                    TabOrder = 0
                    OnChange = MyTreeView_AgentChange
                    OnExpanding = MyTreeView_AgentExpanding
                  end
                  object ToolBar5: TToolBar
                    Left = 0
                    Top = 0
                    Width = 211
                    Height = 29
                    AutoSize = True
                    ButtonHeight = 25
                    ButtonWidth = 81
                    Caption = 'TBar_Sel'
                    Images = ImageList
                    TabOrder = 1
                    object TB_Agent: TcxButton
                      Left = 0
                      Top = 2
                      Width = 80
                      Height = 25
                      BiDiMode = bdRightToLeftReadingOnly
                      Caption = #21047#26032'[&R]'
                      ParentBiDiMode = False
                      TabOrder = 0
                      OnClick = TB_AgentClick
                      Glyph.Data = {
                        F6020000424DF60200000000000036000000280000000E000000100000000100
                        180000000000C0020000C40E0000C40E000000000000000000000302000E0B07
                        0C0404090000150D0E070302030400020A000108000908001304021407090104
                        08B8C5C70000888888C4C6C6CCD1D0CAD0CFBCC9C7B8CDC4B8D8C7B5D3C0BED2
                        C6C7CECBCDC8C9CBC6C8000205C5D1D3150E808489F4FFFFE1FAFCD1F8F6D1FF
                        FFBFFFF0278054B5FFDDDCFFFFD8EEF9ECFFFFBFCED1000408C3C7CC9B008088
                        8FE8FBFFD3F9F9C8FFFBB0FFEE137D54128A50B3FFE7BFFDE7DFFFFFD5F7F6B1
                        CACC020B0FBEC1C60808778689E9FFFFDCFFFFBCFFEF1582520F8E510B844A1B
                        8248317E41D7FFDEDEFFF4B6CFCB000B09CDCFCF0808778584ECFFFFCFF9EECC
                        FFF4A7FFDB12884D158555B8FFE43D873F2C6324D1FADFBDD4CF000203C0BFC1
                        08087E8882F3FFF9E5FFF3C9FDDFC9FFEAB7FFE6258263AFFFDCDFFFDD2D551E
                        E6FFF2BCD3CF02010AD7CDDA0808888A84F3FFF2E4FFE82F583CD1FFE6C7FFEC
                        AEFFE8BDFFEED0FFD93B5D38DAFDE9B5CCC804030DD5C7D908088B8683FCFFF8
                        F1FFF432553BE1FFF0C2FFE01B8B51A1FFD8CDFFF1D1FBEADDFFF5B9D3CD0103
                        0BCDC4D10808918C89FBFFF9E9FBEE33513E4E775CCCFFE6118A400F8C46B6FF
                        E6D4FFFADAFEF2BBD0C8000102C9C8CC08087F807EFAFFFEF3FFFFD3F1E64D7E
                        5E2E7F481795430A8B3A1E7D4BCBFFECE8FFF3C3CFC30A110AC2C9C20808868D
                        8AF8FFFFECF7FBECFFFFE0FFF1CDFFE721904C118540B8FFE0D8FFF1BDD0C1CD
                        D0C7010500CBCFCA0808808986F1F9F8F8FFFFF4FFFFECFFFEDBFFF7307C5DBD
                        FFEBD6FFF3000A00000A04010101060005CEC6CD0808788381FAFFFFFAF9FBFE
                        FDFFFAFFFFEDFFFFC9F6EDD6FFFADAF8ED7D8D86F0F7FA0B0A13D7CDD9FFF6FF
                        0808818989FBFAFCFFFDFEFFFDFCFFFCF8FAFFFCF1FFFFEDFFFEEFFFF9758780
                        00060FBDBECCFFFAFFFDF5FF08087C83868D8A8C9D8585977E7A918982868882
                        8183837F878678897E778982C3CCD6F8FAFFFAF6FFFFFBFF170E}
                      LookAndFeel.Kind = lfUltraFlat
                      LookAndFeel.NativeStyle = False
                      UseSystemPaint = False
                    end
                    object Button1: TButton
                      Left = 80
                      Top = 2
                      Width = 75
                      Height = 25
                      BiDiMode = bdRightToLeftReadingOnly
                      Caption = #26435#38480#35774#32622
                      ParentBiDiMode = False
                      TabOrder = 1
                    end
                  end
                end
                object TS_Item: TTabSheet
                  Caption = #25353#39033#30446
                  ImageIndex = 2
                  object MyTreeView_Item: TTreeView
                    Left = 0
                    Top = 29
                    Width = 211
                    Height = 599
                    Align = alClient
                    Ctl3D = False
                    Indent = 19
                    ParentCtl3D = False
                    TabOrder = 0
                    OnChange = MyTreeView_ItemChange
                    OnExpanding = MyTreeView_ItemExpanding
                  end
                  object ToolBar6: TToolBar
                    Left = 0
                    Top = 0
                    Width = 211
                    Height = 29
                    AutoSize = True
                    ButtonHeight = 25
                    ButtonWidth = 161
                    Caption = 'TBar_Sel'
                    Images = ImageList
                    TabOrder = 1
                    object TB_Item: TcxButton
                      Left = 0
                      Top = 2
                      Width = 80
                      Height = 25
                      BiDiMode = bdRightToLeftReadingOnly
                      Caption = #21047#26032'[&R]'
                      ParentBiDiMode = False
                      TabOrder = 0
                      OnClick = TB_ItemClick
                      Glyph.Data = {
                        F6020000424DF60200000000000036000000280000000E000000100000000100
                        180000000000C0020000C40E0000C40E000000000000000000000302000E0B07
                        0C0404090000150D0E070302030400020A000108000908001304021407090104
                        08B8C5C70000888888C4C6C6CCD1D0CAD0CFBCC9C7B8CDC4B8D8C7B5D3C0BED2
                        C6C7CECBCDC8C9CBC6C8000205C5D1D3150E808489F4FFFFE1FAFCD1F8F6D1FF
                        FFBFFFF0278054B5FFDDDCFFFFD8EEF9ECFFFFBFCED1000408C3C7CC9B008088
                        8FE8FBFFD3F9F9C8FFFBB0FFEE137D54128A50B3FFE7BFFDE7DFFFFFD5F7F6B1
                        CACC020B0FBEC1C60808778689E9FFFFDCFFFFBCFFEF1582520F8E510B844A1B
                        8248317E41D7FFDEDEFFF4B6CFCB000B09CDCFCF0808778584ECFFFFCFF9EECC
                        FFF4A7FFDB12884D158555B8FFE43D873F2C6324D1FADFBDD4CF000203C0BFC1
                        08087E8882F3FFF9E5FFF3C9FDDFC9FFEAB7FFE6258263AFFFDCDFFFDD2D551E
                        E6FFF2BCD3CF02010AD7CDDA0808888A84F3FFF2E4FFE82F583CD1FFE6C7FFEC
                        AEFFE8BDFFEED0FFD93B5D38DAFDE9B5CCC804030DD5C7D908088B8683FCFFF8
                        F1FFF432553BE1FFF0C2FFE01B8B51A1FFD8CDFFF1D1FBEADDFFF5B9D3CD0103
                        0BCDC4D10808918C89FBFFF9E9FBEE33513E4E775CCCFFE6118A400F8C46B6FF
                        E6D4FFFADAFEF2BBD0C8000102C9C8CC08087F807EFAFFFEF3FFFFD3F1E64D7E
                        5E2E7F481795430A8B3A1E7D4BCBFFECE8FFF3C3CFC30A110AC2C9C20808868D
                        8AF8FFFFECF7FBECFFFFE0FFF1CDFFE721904C118540B8FFE0D8FFF1BDD0C1CD
                        D0C7010500CBCFCA0808808986F1F9F8F8FFFFF4FFFFECFFFEDBFFF7307C5DBD
                        FFEBD6FFF3000A00000A04010101060005CEC6CD0808788381FAFFFFFAF9FBFE
                        FDFFFAFFFFEDFFFFC9F6EDD6FFFADAF8ED7D8D86F0F7FA0B0A13D7CDD9FFF6FF
                        0808818989FBFAFCFFFDFEFFFDFCFFFCF8FAFFFCF1FFFFEDFFFEEFFFF9758780
                        00060FBDBECCFFFAFFFDF5FF08087C83868D8A8C9D8585977E7A918982868882
                        8183837F878678897E778982C3CCD6F8FAFFFAF6FFFFFBFF170E}
                      LookAndFeel.Kind = lfUltraFlat
                      LookAndFeel.NativeStyle = False
                      UseSystemPaint = False
                    end
                  end
                end
              end
            end
            object Panel5: TPanel
              Left = 227
              Top = 0
              Width = 1025
              Height = 656
              Align = alClient
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 1
              object ToolBar2: TToolBar
                Left = 0
                Top = 0
                Width = 1025
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
                object TB_Ref2: TToolButton
                  Left = 0
                  Top = 0
                  AutoSize = True
                  Caption = #21047#26032'[&R]'
                  ImageIndex = 8
                  OnClick = TB_Ref2Click
                end
                object TB_Out2: TToolButton
                  Left = 53
                  Top = 0
                  AutoSize = True
                  Caption = #23548#20986'[&O]'
                  Enabled = False
                  ImageIndex = 6
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
                  ImageIndex = 7
                  OnClick = TB_DownClick
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
                  ImageIndex = 5
                  OnClick = TB_EXITClick
                end
              end
              object cxGrid5: TcxGrid
                Left = 0
                Top = 35
                Width = 1025
                Height = 551
                Align = alClient
                TabOrder = 1
                object cxGV5: TcxGridDBTableView
                  DataController.DataSource = DS_Mdata5
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <
                    item
                      Format = ',0.0000;-,0.0000'
                      Kind = skSum
                      FieldName = 'FBalanceQry'
                      Column = SumFBalanceQry_5
                    end
                    item
                      Format = ',0.00;-,0.00'
                      Kind = skSum
                      FieldName = 'FAdvanceQry'
                      Column = FAdvanceQry_5
                    end
                    item
                      Format = ',0.00;-,0.00'
                      Kind = skSum
                      FieldName = 'FBalanceAmount'
                      Column = SumFBalanceAmount_5
                    end
                    item
                      Format = ',0.00;-,0.00'
                      Kind = skSum
                      FieldName = 'FQualityQry'
                      Column = FQualityQry_5
                    end
                    item
                      Format = ',0.0000;-,0.0000'
                      Kind = skSum
                      FieldName = 'FEstimateQry'
                      Column = FEstimateQry_5
                    end
                    item
                      Format = ',0.00;-,0.00'
                      Kind = skSum
                      FieldName = 'FEstimateAmount'
                      Column = FEstimateAmount_5
                    end
                    item
                      Format = '0'
                      Kind = skSum
                      FieldName = 'FQry'
                      Column = FQry_5
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
                  object FIsDelList_5: TcxGridDBColumn
                    Caption = #34892#20851#38381
                    PropertiesClassName = 'TcxCheckBoxProperties'
                    Properties.DisplayUnchecked = 'False'
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 41
                    DataBinding.FieldName = 'FIsDelList'
                  end
                  object FClientshortName_5: TcxGridDBColumn
                    Caption = #29992#25143#31616#31216
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 117
                    DataBinding.FieldName = 'FClientshortName'
                  end
                  object FBranchFileNo_5: TcxGridDBColumn
                    Caption = #26723#26696#21495
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 78
                    DataBinding.FieldName = 'FBranchFileNo'
                  end
                  object FBranchItemNumber_5: TcxGridDBColumn
                    Caption = #22270#21495
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 42
                    DataBinding.FieldName = 'FBranchItemNumber'
                  end
                  object FWorkItemNum_5: TcxGridDBColumn
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
                  object FBalanceProductName_5: TcxGridDBColumn
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
                  object FNumber_5: TcxGridDBColumn
                    Caption = #37096#20214#20195#30721
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 72
                    DataBinding.FieldName = 'FNumber'
                  end
                  object FBalanceName_5: TcxGridDBColumn
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
                  object FBalanceModel_5: TcxGridDBColumn
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
                  object FUnitName_5: TcxGridDBColumn
                    Caption = #21333#20301
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 29
                    DataBinding.FieldName = 'FUnitName'
                  end
                  object FInvoice_5: TcxGridDBColumn
                    Caption = #21457#31080#26680#38144
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 53
                    DataBinding.FieldName = 'FInvoice'
                  end
                  object FInvoiceDate_5: TcxGridDBColumn
                    Caption = #21457#31080#26680#38144#26085#26399
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 77
                    DataBinding.FieldName = 'FInvoiceDate'
                  end
                  object FMaterialDate_5: TcxGridDBColumn
                    Caption = #25191#34892#26085#26399
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 64
                    DataBinding.FieldName = 'FMaterialDate'
                  end
                  object FQry_5: TcxGridDBColumn
                    Caption = #20214#25968
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 51
                    DataBinding.FieldName = 'FQry'
                  end
                  object FBalanceBasePrice_5: TcxGridDBColumn
                    Caption = #32467#31639#22522#20215
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.DecimalPlaces = 5
                    Properties.ValidateOnEnter = True
                    Properties.IsDisplayFormatAssigned = True
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 53
                    DataBinding.FieldName = 'FBalancebasePrice'
                  end
                  object FOutPrice_5: TcxGridDBColumn
                    Caption = #20854#20182#36148#34917
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.DecimalPlaces = 5
                    Properties.ValidateOnEnter = True
                    Properties.IsDisplayFormatAssigned = True
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 53
                    DataBinding.FieldName = 'FOutPrice'
                  end
                  object FWorkOutPrice_5: TcxGridDBColumn
                    Caption = #24037#31649#36148#34917
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.DisplayFormat = ',0.00;-,0.00'
                    Properties.ValidateOnEnter = True
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 53
                    DataBinding.FieldName = 'FWorkOutPrice'
                  end
                  object FBalanceAdjust_5: TcxGridDBColumn
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
                    DataBinding.FieldName = 'FBalanceAdjust'
                  end
                  object FBalancePrice_5: TcxGridDBColumn
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
                  object FEstimateQry_5: TcxGridDBColumn
                    Caption = #39044#20272#25968#37327
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.DecimalPlaces = 4
                    Properties.ValidateOnEnter = True
                    Properties.IsDisplayFormatAssigned = True
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Filtering = False
                    Width = 65
                    DataBinding.FieldName = 'FEstimateQry'
                  end
                  object FEstimateAmount_5: TcxGridDBColumn
                    Caption = #39044#20272#37329#39069
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.DisplayFormat = ',0.00;-,0.00'
                    Properties.ValidateOnEnter = True
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 81
                    DataBinding.FieldName = 'FEstimateAmount'
                  end
                  object SumFBalanceQry_5: TcxGridDBColumn
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
                  object SumFBalanceAmount_5: TcxGridDBColumn
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
                  object FWorkListRemark_5: TcxGridDBColumn
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
                  object FDeliveryDateTxt_5: TcxGridDBColumn
                    Caption = #20132#36135#26085#26399
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 85
                    DataBinding.FieldName = 'FDeliveryDateTxt'
                  end
                  object FDeliveryPlace_5: TcxGridDBColumn
                    Caption = #20132#36135#22320#28857
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 60
                    DataBinding.FieldName = 'FDeliveryPlace'
                  end
                  object FJobPlace_5: TcxGridDBColumn
                    Caption = #21152#24037#22320#28857
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 68
                    DataBinding.FieldName = 'FJobPlace'
                  end
                  object FAgentName_5: TcxGridDBColumn
                    Caption = #29983#20135#21333#20301
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 227
                    DataBinding.FieldName = 'FAgentName'
                  end
                  object FAdvanceQry_5: TcxGridDBColumn
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
                  object FQualityQry_5: TcxGridDBColumn
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
                  object FBalanceNum_5: TcxGridDBColumn
                    Caption = #32467#31639#21333#21495
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 73
                    DataBinding.FieldName = 'FBalanceNum'
                  end
                  object FBalanceRemark_5: TcxGridDBColumn
                    Caption = #32467#31639#22791#27880
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Filtering = False
                    Width = 88
                    DataBinding.FieldName = 'FBalanceRemark'
                  end
                  object FRemark_5: TcxGridDBColumn
                    Caption = #22791#27880
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 169
                    DataBinding.FieldName = 'FRemark'
                  end
                  object FProductClass_5: TcxGridDBColumn
                    Caption = #20135#21697#31867#21035
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 60
                    DataBinding.FieldName = 'FProductClass'
                  end
                  object FProductSort_5: TcxGridDBColumn
                    Caption = #32467#31639#27719#31867#21035
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 74
                    DataBinding.FieldName = 'FProductSort'
                  end
                  object FWorkItemRemark_5: TcxGridDBColumn
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
                  object FWorkData_5: TcxGridDBColumn
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
                  object FSysTem_5: TcxGridDBColumn
                    Caption = #20307#31995#20869#22806
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 53
                    DataBinding.FieldName = 'FSysTem'
                  end
                  object FJobSort_5: TcxGridDBColumn
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
                  object FBalancePriceID_5: TcxGridDBColumn
                    Caption = #32467#31639#21333#20215'ID'
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 64
                    DataBinding.FieldName = 'FBalancePriceID'
                  end
                  object FWorkListID_5: TcxGridDBColumn
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
                object cxGL5: TcxGridLevel
                  GridView = cxGV5
                end
              end
              object Panel23: TPanel
                Left = 0
                Top = 586
                Width = 1025
                Height = 70
                Align = alBottom
                BevelOuter = bvNone
                ParentColor = True
                TabOrder = 2
                object Bevel6: TBevel
                  Left = 0
                  Top = 5
                  Width = 1105
                  Height = 4
                end
                object Label24: TLabel
                  Left = 2
                  Top = 23
                  Width = 72
                  Height = 13
                  Caption = #39033#30446#26723#26696#21495#65306
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object E_Locate: TcxButtonEdit
                  Left = 79
                  Top = 20
                  Width = 298
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
            end
          end
        end
        object TS_Price: TRzTabSheet
          Color = 14935011
          Caption = #32467#31639#21333#20215
          object RzSizePanel3: TRzSizePanel
            Left = 0
            Top = 35
            Width = 8
            Height = 621
            Color = 14935011
            HotSpotVisible = True
            SizeBarWidth = 7
            TabOrder = 0
            VisualStyle = vsGradient
            HotSpotClosed = True
            HotSpotPosition = 289
            object MyTreeView3: TTreeView
              Left = 0
              Top = 0
              Width = 0
              Height = 621
              Align = alClient
              AutoExpand = True
              Ctl3D = False
              Indent = 19
              ParentCtl3D = False
              TabOrder = 0
              OnChange = MyTreeView3Change
              OnExpanding = MyTreeView3Expanding
            end
          end
          object cxGrid3: TcxGrid
            Left = 8
            Top = 35
            Width = 1244
            Height = 621
            Align = alClient
            TabOrder = 1
            object cxGV3: TcxGridDBTableView
              DataController.DataSource = DS_Mdata3
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
              OptionsSelection.MultiSelect = True
              OptionsView.Navigator = True
              OptionsView.Footer = True
              OptionsView.GroupFooters = gfVisibleWhenExpanded
              object FProductName_3: TcxGridDBColumn
                Caption = #20135#21697#31867#21035
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Width = 197
                DataBinding.FieldName = 'FProductName'
              end
              object FNumber_3: TcxGridDBColumn
                Caption = #37096#20214#32534#30721
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                SortOrder = soAscending
                Width = 134
                DataBinding.FieldName = 'FNumber'
              end
              object FBalanceName_3: TcxGridDBColumn
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
                Width = 212
                DataBinding.FieldName = 'FBalanceName'
              end
              object FBalanceModel_3: TcxGridDBColumn
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
                Width = 114
                DataBinding.FieldName = 'FBalanceModel'
              end
              object FUnitName_3: TcxGridDBColumn
                Caption = #21333#20301
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Width = 29
                DataBinding.FieldName = 'FUnitName'
              end
              object FSollWeight_3: TcxGridDBColumn
                Caption = #29702#35745#37325#37327
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DecimalPlaces = 4
                Properties.DisplayFormat = ',0.0000;-,0.0000'
                Properties.ValidateOnEnter = True
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Width = 61
                DataBinding.FieldName = 'FSollWeight'
              end
              object FBalanceBasePrice_3: TcxGridDBColumn
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
                Width = 85
                DataBinding.FieldName = 'FBalanceBasePrice'
              end
              object FMaterialPrice: TcxGridDBColumn
                Caption = #26448#26009#32467#31639#21333#20215
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DecimalPlaces = 5
                Properties.DisplayFormat = ',0.00000;-,0.00000'
                Properties.ValidateOnEnter = True
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Width = 77
                DataBinding.FieldName = 'FMaterialPrice'
              end
              object FWorkResizePrice_3: TcxGridDBColumn
                Caption = #24037#31649#35843#25972#20215
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DecimalPlaces = 5
                Properties.DisplayFormat = ',0.00000;-,0.00000'
                Properties.ValidateOnEnter = True
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Width = 65
                DataBinding.FieldName = 'FWorkResizePrice'
              end
              object FWorkPrice: TcxGridDBColumn
                Caption = #24037#31649#32467#31639#21333#20215
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DecimalPlaces = 5
                Properties.DisplayFormat = ',0.00000;-,0.00000'
                Properties.ValidateOnEnter = True
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Width = 77
                DataBinding.FieldName = 'FWorkPrice'
              end
              object FRemark_3: TcxGridDBColumn
                Caption = #22791#27880
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Width = 169
                DataBinding.FieldName = 'FRemark'
              end
              object FMaterialDate_3: TcxGridDBColumn
                Caption = #26448#26009#25191#34892#26085#26399
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Width = 99
                DataBinding.FieldName = 'FMaterialDate'
              end
              object FBalancePriceID_3: TcxGridDBColumn
                Caption = #32467#31639#21333#20215'ID'
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Width = 64
                DataBinding.FieldName = 'FBalancePriceID'
              end
            end
            object cxGL3: TcxGridLevel
              GridView = cxGV3
            end
          end
          object ToolBar3: TToolBar
            Left = 0
            Top = 0
            Width = 1252
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
            TabOrder = 2
            object ToolButton7: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = #36873#25321'[&S]'
              ImageIndex = 22
              OnClick = ToolButton7Click
            end
            object ToolButton6: TToolButton
              Left = 53
              Top = 0
              Cursor = crHandPoint
              AutoSize = True
              Caption = #35774#32622'[&D]'
              ImageIndex = 7
            end
            object TB_Ref3: TToolButton
              Left = 106
              Top = 0
              Caption = #21047#26032
              ImageIndex = 8
              OnClick = TB_Ref3Click
            end
            object ToolButton9: TToolButton
              Left = 161
              Top = 0
              AutoSize = True
              Caption = #21462#28040'[&R]'
              ImageIndex = 11
              OnClick = ToolButton9Click
            end
          end
        end
      end
      inherited Panel_down: TPanel
        Top = 677
        Width = 1254
        Height = 14
        inherited Bevel_bass: TBevel
          Width = 1254
          Height = 1
        end
      end
    end
  end
  object MData: TdxMemData
    Indexes = <>
    SortOptions = []
    SortedField = 'FWorkItemListNum'
    BeforePost = MDataBeforePost
    Left = 83
    Top = 208
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
      FieldName = 'FOutPrice'
      EditFormat = '0'
    end
    object MDataFBalanceBasePrice: TFloatField
      FieldName = 'FBalanceBasePrice'
    end
    object MDataFWorkResizePrice: TFloatField
      FieldName = 'FWorkResizePrice'
    end
    object MDataFWorkOutPrice: TFloatField
      FieldName = 'FWorkOutPrice'
    end
    object MDataFDeliveryDateTxt: TStringField
      FieldName = 'FDeliveryDateTxt'
    end
    object MDataFEstimateQry: TFloatField
      FieldName = 'FEstimateQry'
    end
    object MDataFBranchFileNo: TStringField
      FieldName = 'FBranchFileNo'
    end
    object MDataFStatusNotes: TStringField
      FieldName = 'FStatusNotes'
    end
    object MDataFWorkStatus: TIntegerField
      FieldName = 'FWorkStatus'
    end
  end
  object DS_Mdata: TDataSource
    DataSet = MData
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
      0000FC000000000000000000000000000000005800831BB378B917E54091320A
      F9D338E540}
  end
  object frDBDataSet: TfrDBDataSet
    DataSet = MData
    Left = 35
    Top = 320
  end
  object mData2: TdxMemData
    Indexes = <>
    SortOptions = []
    SortedField = 'FWorkItemListNum'
    Left = 83
    Top = 237
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
    Left = 35
    Top = 245
  end
  object DS_Mdata3: TDataSource
    DataSet = mData3
    Left = 35
    Top = 275
  end
  object mData3: TdxMemData
    Indexes = <>
    SortOptions = []
    SortedField = 'FWorkItemListNum'
    Left = 83
    Top = 275
  end
  object actionList: TActionList
    Images = ImageList
    Left = 40
    Top = 448
    object Act_App: TAction
      Category = #25968#25454#32500#25252
      Caption = #26032#22686'[&A]'
      ImageIndex = 0
    end
    object Act_Parts: TAction
      Category = #25968#25454#27719#24635
      Caption = #37096#20214#27719#24635
      ImageIndex = 8
    end
    object Act_Edit: TAction
      Category = #25968#25454#32500#25252
      Caption = #20462#25913'[&E]'
      ImageIndex = 1
    end
    object Act_Del: TAction
      Category = #25968#25454#32500#25252
      Caption = #21024#38500'[&D]'
      ImageIndex = 2
    end
    object Act_Out: TAction
      Category = #25968#25454#32500#25252
      Caption = #23548#20986'[&O]'
      ImageIndex = 23
    end
    object Act_cldy: TAction
      Category = #25968#25454#27719#24635
      Caption = #20195#29992#28165#21333
      ImageIndex = 20
    end
    object Act_Save: TAction
      Category = #25968#25454#32500#25252
      Caption = #20445#23384'[&S]'
      ImageIndex = 25
    end
    object Act_Submit: TAction
      Category = #25968#25454#25805#20316
      Caption = #25552#20132
      ImageIndex = 10
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
      OnExecute = Act_FIsDelListExecute
    end
    object Act_MaxID_List: TAction
      Category = #25968#25454#25805#20316
      Caption = #21462#20540
      OnExecute = Act_MaxID_ListExecute
    end
    object Act_MaxID: TAction
      Category = #25968#25454#25805#20316
      Caption = #21462#20540
      OnExecute = Act_MaxIDExecute
    end
  end
  object MData5: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 83
    Top = 359
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
    object IntegerField12: TIntegerField
      FieldName = 'FBalancePriceID'
    end
    object StringField31: TStringField
      FieldName = 'FAgentBalanceNum'
    end
    object StringField32: TStringField
      FieldName = 'FAgentBalancePactNum'
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'FAgentBalanceDate'
    end
    object StringField33: TStringField
      FieldName = 'FAgentID'
    end
    object StringField34: TStringField
      FieldName = 'FAgentBalanceItemID'
    end
    object StringField35: TStringField
      FieldName = 'FBalanceQry'
    end
    object StringField36: TStringField
      FieldName = 'FAdvanceQry'
    end
    object StringField37: TStringField
      FieldName = 'FQualityQry'
    end
    object FloatField7: TFloatField
      FieldName = 'FWeight'
    end
    object FloatField8: TFloatField
      FieldName = 'FBalanceAmount'
    end
    object IntegerField13: TIntegerField
      FieldName = 'FWorkListID'
    end
    object BCDField1: TBCDField
      FieldName = 'FOutPrice'
    end
    object BCDField2: TBCDField
      FieldName = 'FPrice'
    end
    object FloatField9: TFloatField
      FieldKind = fkCalculated
      FieldName = 'FBalanceBasePrice'
      Calculated = True
    end
    object FloatField10: TFloatField
      FieldKind = fkCalculated
      FieldName = 'FBalancePrice'
      Calculated = True
    end
  end
  object DS_Mdata5: TDataSource
    DataSet = MData5
    Left = 44
    Top = 359
  end
  object SaveDialog1: TSaveDialog
    Left = 75
    Top = 523
  end
end
