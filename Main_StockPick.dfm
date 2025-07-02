inherited Frm_StockPick: TFrm_StockPick
  Left = 282
  Top = 183
  Caption = 'Frm_StockPick'
  ClientHeight = 521
  ClientWidth = 1074
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image: TImage
    Width = 1074
  end
  inherited L_title: TLabel
    Left = -46
    Top = 2
    Width = 1183
    Caption = #36890#29992#25968#25454#30331#35760
  end
  inherited P_back: TPanel
    Width = 1074
    Height = 500
    inherited P_main: TPanel
      Width = 1068
      Height = 494
      inherited Panel_down: TPanel
        Top = 491
        Width = 1066
        Height = 1
        inherited Bevel_bass: TBevel
          Width = 1066
        end
      end
      object PC_1: TRzPageControl
        Left = 0
        Top = 0
        Width = 1066
        Height = 491
        ActivePage = TS_List
        Align = alClient
        TabIndex = 0
        TabOrder = 1
        TabOrientation = toBottom
        TabStyle = tsDoubleSlant
        FixedDimension = 19
        object TS_List: TRzTabSheet
          Color = 14935011
          Caption = #28165#21333#25552#21462
          object Panel1: TPanel
            Left = 0
            Top = 0
            Width = 1064
            Height = 38
            Align = alTop
            ParentColor = True
            TabOrder = 0
            object ToolBar1: TToolBar
              Left = 1
              Top = 1
              Width = 1062
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
                ImageIndex = 11
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
              object TB_Out: TToolButton
                Left = 61
                Top = 0
                AutoSize = True
                Caption = #23548#20986
                ImageIndex = 10
                OnClick = TB_OutClick
              end
              object TB_Down: TToolButton
                Left = 96
                Top = 0
                Cursor = crHandPoint
                AutoSize = True
                Caption = #35774#32622'[&D]'
                ImageIndex = 7
                OnClick = TB_DownClick
              end
              object TB_PRIN: TToolButton
                Left = 149
                Top = 0
                Cursor = crHandPoint
                AutoSize = True
                Caption = #25171#21360'[&P]'
                ImageIndex = 4
                OnClick = TB_PRINClick
              end
              object ToolButton1: TToolButton
                Left = 202
                Top = 0
                Width = 8
                Caption = 'ToolButton1'
                ImageIndex = 9
                Style = tbsSeparator
              end
              object TB_EXIT: TToolButton
                Left = 210
                Top = 0
                Cursor = crHandPoint
                AutoSize = True
                Caption = #36864#20986'[&X]'
                ImageIndex = 5
                OnClick = TB_EXITClick
              end
            end
          end
          object Panel2: TPanel
            Left = 0
            Top = 432
            Width = 1064
            Height = 38
            Align = alBottom
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 1
            object Bevel1: TBevel
              Left = 0
              Top = 0
              Width = 1064
              Height = 2
              Align = alTop
            end
            object ProgressBar: TProgressBar
              Left = 783
              Top = 13
              Width = 273
              Height = 17
              Step = 1
              TabOrder = 0
            end
            object E_FBranchItemNumber: TcxButtonEdit
              Left = 32
              Top = 8
              Width = 83
              Height = 21
              Hint = #36755#20837#22270#21495#21487#20197#30452#25509#36827#34892#26597#25214#65307
              ParentShowHint = False
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = E_FFileNoPropertiesButtonClick
              ShowHint = True
              Style.BorderColor = 8623776
              Style.BorderStyle = ebsSingle
              Style.Color = 15658734
              Style.ButtonTransparency = ebtHideUnselected
              TabOrder = 1
              ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WIN2000'
            end
            object E_FItemNo: TcxButtonEdit
              Left = 133
              Top = 8
              Width = 139
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
              TabOrder = 2
              ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WIN2000'
            end
          end
          object stbBar: TRzStatusBar
            Left = 0
            Top = 413
            Width = 1064
            Height = 19
            BorderInner = fsNone
            BorderOuter = fsNone
            BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
            BorderWidth = 0
            TabOrder = 2
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
              Width = 801
              Height = 19
              Align = alClient
              FieldLabel = #24403#21069#20449#24687
              Caption = #29366#24577#20449#24687
            end
          end
          object RzSizePanel1: TRzSizePanel
            Left = 0
            Top = 38
            Width = 187
            Height = 375
            Color = 14935011
            HotSpotVisible = True
            SizeBarWidth = 7
            TabOrder = 3
            VisualStyle = vsGradient
            object MyTreeView3: TTreeView
              Left = 0
              Top = 0
              Width = 179
              Height = 375
              Align = alClient
              Ctl3D = False
              Indent = 19
              ParentCtl3D = False
              TabOrder = 0
              OnChange = MyTreeView3Change
              OnExpanding = MyTreeView3Expanding
            end
          end
          object RSP_StockIn: TRzPanel
            Left = 187
            Top = 38
            Width = 877
            Height = 375
            Align = alClient
            TabOrder = 4
            object RSP_List: TPageControl
              Left = 2
              Top = 153
              Width = 873
              Height = 220
              ActivePage = TabSheet3
              Align = alClient
              MultiLine = True
              TabOrder = 0
              object TabSheet3: TTabSheet
                Caption = #38468#34920
                object cxGrid3: TcxGrid
                  Left = 0
                  Top = 0
                  Width = 865
                  Height = 192
                  Align = alClient
                  TabOrder = 0
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
                    NavigatorButtons.Delete.Visible = True
                    NavigatorButtons.Edit.Visible = False
                    NavigatorButtons.Post.Visible = False
                    NavigatorButtons.Cancel.Visible = False
                    NavigatorButtons.Refresh.Visible = False
                    NavigatorButtons.SaveBookmark.Visible = False
                    NavigatorButtons.GotoBookmark.Visible = False
                    NavigatorButtons.Filter.Visible = False
                    OptionsData.CancelOnExit = False
                    OptionsData.DeletingConfirmation = False
                    OptionsData.Editing = False
                    OptionsData.Inserting = False
                    OptionsView.Navigator = True
                    OptionsView.Footer = True
                    OptionsView.GroupByBox = False
                    object Num: TcxGridDBColumn
                      Caption = #24207#21495
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Options.Sorting = False
                      Width = 40
                      DataBinding.FieldName = 'Num'
                    end
                    object xh1: TcxGridDBColumn
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 22
                      DataBinding.FieldName = 'xh1'
                    end
                    object xh2: TcxGridDBColumn
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 22
                      DataBinding.FieldName = 'xh2'
                    end
                    object xh3: TcxGridDBColumn
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 22
                      DataBinding.FieldName = 'xh3'
                    end
                    object th: TcxGridDBColumn
                      Caption = #22270#21495
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Options.Sorting = False
                      Width = 119
                      DataBinding.FieldName = 'th'
                    end
                    object mc: TcxGridDBColumn
                      Caption = #21517#31216
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Options.Sorting = False
                      Width = 113
                      DataBinding.FieldName = 'mc'
                    end
                    object gg: TcxGridDBColumn
                      Caption = #35268#26684
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 116
                      DataBinding.FieldName = 'gg'
                    end
                    object FSelRemark: TcxGridDBColumn
                      Caption = #25353#20197#19979#20837#24211
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 71
                      DataBinding.FieldName = 'FSelRemark'
                    end
                    object FSumQry: TcxGridDBColumn
                      Caption = #25968#37327
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 57
                      DataBinding.FieldName = 'FSumQry'
                    end
                    object FSuttle: TcxGridDBColumn
                      Caption = #21333#37325
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 74
                      DataBinding.FieldName = 'FSuttle'
                    end
                    object FSumSuttle: TcxGridDBColumn
                      Caption = #24635#37325
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Options.Sorting = False
                      Width = 66
                      DataBinding.FieldName = 'FSumSuttle'
                    end
                    object FStockListRemark: TcxGridDBColumn
                      Caption = #22791#27880
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 73
                      DataBinding.FieldName = 'FStockListRemark'
                    end
                    object FFullNumber: TcxGridDBColumn
                      Caption = #38271#20195#30721
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 99
                      DataBinding.FieldName = 'FFullNumber'
                    end
                    object ssFullNumber: TcxGridDBColumn
                      Caption = #25152#23646#38271#20195#30721
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 86
                      DataBinding.FieldName = 'ssFullNumber'
                    end
                    object bjth: TcxGridDBColumn
                      Caption = #37096#20214#22270#21495
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Options.Sorting = False
                      Width = 75
                      DataBinding.FieldName = 'bjth'
                    end
                    object cplb: TcxGridDBColumn
                      Caption = #20135#21697#31867#21035
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 96
                      DataBinding.FieldName = 'cplb'
                    end
                    object FPartsCode: TcxGridDBColumn
                      Caption = #37096#20214#21495
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 45
                      DataBinding.FieldName = 'FPartsCode'
                    end
                    object FWorkPartsNum: TcxGridDBColumn
                      Caption = #20837#24211#31867#21035#21495
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 67
                      DataBinding.FieldName = 'FWorkPartsNum'
                    end
                    object FWorkParts: TcxGridDBColumn
                      Caption = #37096#20214#31867#21035
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 107
                      DataBinding.FieldName = 'FWorkParts'
                    end
                  end
                  object cxGL3: TcxGridLevel
                    GridView = cxGV3
                  end
                end
              end
            end
            object RSP_Item: TRzSizePanel
              Left = 2
              Top = 2
              Width = 873
              Height = 151
              Align = alTop
              Color = 14935011
              HotSpotVisible = True
              Side = sdTop
              SizeBarWidth = 7
              TabOrder = 1
              VisualStyle = vsGradient
              object PageControl1: TPageControl
                Left = 0
                Top = 0
                Width = 873
                Height = 143
                ActivePage = TabSheet2
                Align = alTop
                TabOrder = 0
                object TabSheet2: TTabSheet
                  Caption = #20027#34920
                  object cxGrid_M3: TcxGrid
                    Left = 0
                    Top = 0
                    Width = 865
                    Height = 115
                    Align = alClient
                    TabOrder = 0
                    object cxGV_M3: TcxGridDBTableView
                      DataController.DataSource = DS_Mdata_M3
                      DataController.Summary.DefaultGroupSummaryItems = <>
                      DataController.Summary.FooterSummaryItems = <
                        item
                          Format = #23567#35745#65306',0.00'
                          Kind = skSum
                          FieldName = 'FOrderAmount'
                        end
                        item
                          Format = #23567#35745#65306',0.00'
                          Kind = skSum
                          FieldName = 'sumFOrderAmount'
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
                      OnFocusedRecordChanged = cxGV_M3FocusedRecordChanged
                      OptionsData.CancelOnExit = False
                      OptionsData.DeletingConfirmation = False
                      OptionsData.Editing = False
                      OptionsSelection.MultiSelect = True
                      OptionsView.Navigator = True
                      OptionsView.GroupByBox = False
                      object FBranchItemNumber_M3: TcxGridDBColumn
                        Caption = #20998#22270#21495
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
                        SortOrder = soAscending
                        Width = 69
                        DataBinding.FieldName = 'FBranchItemNumber'
                      end
                      object FPartsCode_M3: TcxGridDBColumn
                        Caption = #37096#20214#21495
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 41
                        DataBinding.FieldName = 'FPartsCode'
                      end
                      object FWorkPartsNum_M3: TcxGridDBColumn
                        Caption = #20837#24211#31867#21035#21495
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 65
                        DataBinding.FieldName = 'FWorkPartsNum'
                      end
                      object FWorkParts_M3: TcxGridDBColumn
                        Caption = #20837#24211#31867#21035
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 105
                        DataBinding.FieldName = 'FWorkParts'
                      end
                      object FPartsName_M3: TcxGridDBColumn
                        Caption = #37096#20214#21517#31216
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 122
                        DataBinding.FieldName = 'FPartsName'
                      end
                      object FStockStatusNotes_M3: TcxGridDBColumn
                        Caption = #21333#25454#29366#24577
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 53
                        DataBinding.FieldName = 'FStockStatusNotes'
                      end
                      object FStockStatus_M3: TcxGridDBColumn
                        Caption = #29366#24577
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 29
                        DataBinding.FieldName = 'FStockStatus'
                      end
                      object FFactureName_M3: TcxGridDBColumn
                        Caption = #22806#21327#21046#20316#21333#20301
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
                        Width = 277
                        DataBinding.FieldName = 'FFactureName'
                      end
                      object FStockWrite_M3: TcxGridDBColumn
                        Caption = #22635'    '#21333
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 41
                        DataBinding.FieldName = 'FStockWrite'
                      end
                      object FItemNumber_M3: TcxGridDBColumn
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
                        Width = 61
                        DataBinding.FieldName = 'FItemNumber'
                      end
                      object FBranchFileNo_M3: TcxGridDBColumn
                        Caption = #26723#26696#32534#21495
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 63
                        DataBinding.FieldName = 'FBranchFileNo'
                      end
                      object FStockWriteDate_M3: TcxGridDBColumn
                        Caption = #22635#21333#26085#26399
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        DataBinding.FieldName = 'FStockWriteDate'
                      end
                      object FFileNo_M3: TcxGridDBColumn
                        Caption = #26723#26696#21495
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 84
                        DataBinding.FieldName = 'FFileNo'
                      end
                      object FClientFullName_M3: TcxGridDBColumn
                        Caption = #39033#30446#21517#31216
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderAlignmentVert = vaCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 101
                        DataBinding.FieldName = 'FClientFullName'
                      end
                      object FStockItemID_M3: TcxGridDBColumn
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderAlignmentVert = vaCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 79
                        DataBinding.FieldName = 'FStockItemID'
                      end
                      object FStockSubmitDate_M3: TcxGridDBColumn
                        Caption = #25552#20132#26085#26399
                        PropertiesClassName = 'TcxDateEditProperties'
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        DataBinding.FieldName = 'FStockSubmitDate'
                      end
                      object FItemId_M3: TcxGridDBColumn
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentVert = vaCenter
                        Options.Editing = False
                        Options.Filtering = False
                        DataBinding.FieldName = 'FItemId'
                      end
                      object FItemModel_M3: TcxGridDBColumn
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentVert = vaCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 60
                        DataBinding.FieldName = 'FItemModel'
                      end
                      object FProductID_M3: TcxGridDBColumn
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentVert = vaCenter
                        Options.Editing = False
                        Options.Filtering = False
                        DataBinding.FieldName = 'FProductID'
                      end
                      object FStockCheck_M3: TcxGridDBColumn
                        Caption = #26657'    '#23545
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 41
                        DataBinding.FieldName = 'FStockInCheck'
                      end
                      object FStockCheckDate_M3: TcxGridDBColumn
                        Caption = #26657#23545#26085#26399
                        PropertiesClassName = 'TcxDateEditProperties'
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        DataBinding.FieldName = 'FStockInCheckDate'
                      end
                      object FFactureID_M3: TcxGridDBColumn
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 77
                        DataBinding.FieldName = 'FFactureID'
                      end
                    end
                    object cxGL_M3: TcxGridLevel
                      GridView = cxGV_M3
                    end
                  end
                end
              end
            end
          end
        end
        object TS_ToTal: TRzTabSheet
          Color = 14935011
          Caption = #27719#24635#34920
          object ToolBar7: TToolBar
            Left = 0
            Top = 0
            Width = 1064
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
            object RB_Ref6: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = #21047#26032'[&R]'
              ImageIndex = 11
            end
            object TB_Total: TToolButton
              Left = 53
              Top = 0
              AutoSize = True
              Caption = #27719#24635#34920
              ImageIndex = 6
              OnClick = TB_TotalClick
            end
            object ToolButton4: TToolButton
              Left = 100
              Top = 0
              AutoSize = True
              Caption = #25171#21360
              ImageIndex = 4
              OnClick = ToolButton4Click
            end
            object ToolButton2: TToolButton
              Left = 135
              Top = 0
              AutoSize = True
              Caption = #23553#38754
              ImageIndex = 6
            end
            object ToolButton13: TToolButton
              Left = 170
              Top = 0
              Cursor = crHandPoint
              AutoSize = True
              Caption = #36864#20986'[&X]'
              ImageIndex = 5
              OnClick = TB_EXITClick
            end
          end
          object TabSheet1: TRzTabSheet
            Color = 14935011
            Caption = 'TabSheet1'
          end
          object Panel3: TPanel
            Left = 0
            Top = 432
            Width = 1064
            Height = 38
            Align = alBottom
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 2
            object Bevel2: TBevel
              Left = 0
              Top = 0
              Width = 1064
              Height = 2
              Align = alTop
            end
            object E_FPersonalNo1: TcxButtonEdit
              Left = 24
              Top = 6
              Width = 83
              Height = 21
              Hint = #36755#20837#22270#21495#21487#20197#30452#25509#36827#34892#26597#25214#65307
              ParentShowHint = False
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = E_FPersonalNo1PropertiesButtonClick
              ShowHint = True
              Style.BorderColor = 8623776
              Style.BorderStyle = ebsSingle
              Style.Color = 15658734
              Style.ButtonTransparency = ebtHideUnselected
              TabOrder = 0
              Text = '0'
              ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WIN2000'
            end
            object E_FPersonalNo2: TcxButtonEdit
              Left = 136
              Top = 6
              Width = 83
              Height = 21
              Hint = #36755#20837#22270#21495#21487#20197#30452#25509#36827#34892#26597#25214#65307
              ParentShowHint = False
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = E_FPersonalNo2PropertiesButtonClick
              ShowHint = True
              Style.BorderColor = 8623776
              Style.BorderStyle = ebsSingle
              Style.Color = 15658734
              Style.ButtonTransparency = ebtHideUnselected
              TabOrder = 1
              Text = '0'
              ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WIN2000'
            end
            object E_FStartYear: TcxButtonEdit
              Left = 248
              Top = 6
              Width = 83
              Height = 21
              Hint = #36755#20837#22270#21495#21487#20197#30452#25509#36827#34892#26597#25214#65307
              ParentShowHint = False
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = E_FStartYearPropertiesButtonClick
              ShowHint = True
              Style.BorderColor = 8623776
              Style.BorderStyle = ebsSingle
              Style.Color = 15658734
              Style.ButtonTransparency = ebtHideUnselected
              TabOrder = 2
              Text = '2013'
              ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WIN2000'
            end
          end
        end
      end
    end
  end
  object MData: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 67
    Top = 80
  end
  object DS_Mdata: TDataSource
    DataSet = MData
    Left = 19
    Top = 80
  end
  object ImageList: TImageList
    Left = 123
    Top = 78
    Bitmap = {
      494C01010D000E00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001001000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF7FFF7FFF7F000021040000
      0000000000000000200400040004000800000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DF7FFF7FDE7FFF7F00045A6F9B73
      9B777B775A737A7359735A739D7B000400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000002100000000000000FE7FFE7F
      BD7FBE7FBE7FDE7FBE7FBE7F7B73000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000734E514A724E2000FF7F631C
      6324642485284324432463187B73210400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000047C7B9D7F5B7B0004DE7FDE7F
      2120BD7FDE7F84289D7FFF7F7B73000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000089D7F0114421C0004DE7FBD7F
      4228DE7FDD7F9D7F4324DE7F7B73000400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000021007B739C7F42180008DD7F6330
      4330BD7F84247B7FBD7F641C5A73000800000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000009C737B7F42180004DE7F9C7F
      42309D7FBD7F43284324BE7F5A77000400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000049C7B421842180008DE7FBC7F
      9C7FBE7F9C7FBD7F9C7FDE7F5B7B210C00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000047B7B7B7F4218000C42188328
      62284228642C4224842864202214000800000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000008BD7F5A7F5A7F0008186F6220
      83284328432C6328632065282218000400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000110221864246320000C00140010
      001400180014000C000C0010000C000400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000C85246428442C432842246228
      6328422420142008FD7FDE7FFF7FFF7F00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000C001000180018001C00180018
      00180010000C2004FE7FFF7FFF7FFF7F00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000210001000100220400000000
      2000200021000200020400041763000000000000793279327932793279327932
      7932793279327932793279327932793279320000000000000000000010420000
      000010420000000000000000000000000000321E853626262116221A231E2522
      2422221A2116231E24222522221A241E000031461863596B5967376337637763
      566357633867396719670000586B0000000000007932FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F793200000000000000001042FF7F0000
      00001042000000000000000000000000000033262626744FDF7FBE7BBD73BB6F
      BC73BE77BE7BBD77BC73BB6FDE77241E00001046FE7FFC7FFA7BFA7FF77B042A
      F66FFB7FBB7FFD7F376B000418670000000000007932FF7FD300D300D300D300
      D300D300D300D300D300D300D300FF7F79320000000000000000FF7FFF7F0000
      FF7FFF7F0000000000000000000000000000352A231ABD77FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F241E00003046FD7FFA7FF97FF677E229222A
      F673F773FB7FDA7B3667200417630000000000007932FF7FD300793279327932
      793279327932793279327932D300FF7F79320000000000000000FF7F00000000
      FF7F10421042000000000000000000000000352E22169B6F9967BC73BC73BC73
      BC73BB6FBB6F565B3453565BF24A241E00000E46FD7FFB7FF777022A212A0126
      0326E621FA6FFB7B3667200439670000000000007932FF7FD300D300D300D300
      D300D300D300D300D300D300D300FF7F79320000104200000000000000000000
      104200000000000000000000000000008C4D352A431ADC73E30DE30DE30DE30D
      E30D4926CE3A4822E30DE30D061A241E00000E42FD7FF977F97BF46F2226022A
      F773071E8511FA6F57670000F8620000000000007932FF7FD300793279327932
      793279327932793279327932D300FF7F79321042FF7FFF7F0000FF7F00000000
      18630000000000000000000000008C4D66663426241EBC733967E30DE30DE30D
      E30D8C323147E30DE30DC30DDC73241E00002F42FE7FFC7BF96FF977F6730432
      F56FFB6F450DFC7B576700043A6F0000000000007932FF7FD300D300D300D300
      D300D300D300D300D300D300D300FF7F79321042FF7F00000000FF7F10421863
      FF7F10420000FF7F104200008C4D66662C7F000025229967FF7F5967E30DE30D
      E30D324BE30DE30D4A2AE2093453241E00003142FE7BFC77651DFA73F877F577
      F777FA6F671DFB77366700041A6F0000000000007932FF7FD300793279327932
      793279327932793279327932D300FF7F79321042000000000000104200000000
      FF7F0000FF7FFF7FFF7F8C4D66662C7F0000000025229967FF7FFF7F365BE30D
      3147E30DE30DD042575F55577B6F241E00001142FF7FFE7B461DFC7BF873232A
      F46FF97BFA77FB7B57670004196B0000000000007932FF7FD300D300D300D300
      D300D300D300D300D300D300D300FF7F79320000000000001042000000000000
      000000000000FF7F8C4D66662C7F000000000000231E9A6BFF7FFE7B5147F042
      E30DE30DE30D4926975FFF7FFF7F241E00003246FF7FFD77461DC92DF9732222
      2122F673FA7FFB7B5767000039670000000000007932FF7FD300793279327932
      793279327932793279327932D300FF7F7932000000001863186300000000FF7F
      0000000000008C4D66662C7F000000000000352E22169C73FF7F3147EF3EE30D
      E30DE30DE30DE30D28225453FF7F241E00000F3EFF7FFE7FDA73E92DE5254222
      211EE325F977FD7B3863410438630000000000007932FF7FD300D300D300D300
      D300D300D300D300D300D300D300FF7F7932000010421863FF7F0000FF7FFF7F
      FF7F00008C4D66662C7F0000000000000000352E231ABD770D37AA2AE30DE30D
      D0427B6F4926E30DE30DA2093043241E00003046FF7FDD7FFD7FFC7BF9734426
      0222F773FB7B57635963000039670000000000007932FF7FD300793279327932
      793279327932793279327932D300FF7F7932000000001042104200000000FF7F
      FF7F8C4D66662C7F00000000000000000000352A241EBC73D24AE30DE30D124B
      FE7BFF7F9C73F34EE30DE30D5A6B241E00003042FE7FFF7FFE7FFD7FFB7BE62D
      F777FA7B200020000000000019670000000000007932FF7FD300D300D300D300
      D300D300D300D300D300D300D300FF7F79320000000000000000000000000000
      8C4D66662C7F0000000000000000000000000000241EDC73FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F241E00000F42FF7FFF7FFF7FFF7FFD7FD977
      FA7FFB772F42DE7F21083A6FDF7F0000000000007932FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F79320000000000000000000000008C4D
      66662C7F00000000000000000000000000003326672A9142AC32AD36AE3AB042
      AF3EAD36AC32AE3AB042B042AD36241E00003046FF7FFF7FFF7FFF7FFF7FFE7F
      FD7FFD7F0E420004F766FF7FDF7F000000000000793279327932793279327932
      793279327932793279327932793279327932000000000000000000008C4D6666
      2C7F000000000000000000000000000000003326683249262822282229262926
      2926292628222926292629262926241E00000F4231461342F23D324230421042
      0F422F3E2E42386BFF7FDF7FFF7F000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BC7B
      0000000000000000000000000000000000000000000000007932793279327932
      79327932793279327932793279327932793200000000000000000000D300D300
      9901D3009901D3000000000000000000000000000000D300D300D300D300D300
      D300D300D300D300D300D300000000000000000000000000BC7B9C7339679C73
      BC7B000000000000000000000000000000000000000000007932FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F793200000000000000000000D3009901
      D3009901D300D30000000000000000000000000079323F4F3F4F3F4F3F4F3F4F
      3F4F3F4F3F4F3F4F79327932D300000000000000BC7B9C73D65A794E93319331
      D65A39679C73BC7B000000000000000000000000000000007932FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F793200000000000000000000D300D300
      9901D3009901D300000000000000000000007932793279327932793279327932
      79327932793279327932D3007932D30000009C73794E9331794E794EFF7F9331
      734E734ED65A9C73000000000000000000000000000000007932FF7FFF7F3967
      396739673967396739673967FF7FFF7F793200000000000000000000734ED300
      D300D300D300734E000000000000000000007932FF7F3F4F3F4F3F4F3F4F3F4F
      3F4F3F4F3F4F3F4F3F4F7932D300D30000009331794E3F4F3F4F3F67FF7F9331
      864D864D864DBC7B00000000000000000000004C000000007932FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F7932000000000000000000000000734E
      FF7F3F678C310000000000000000000000007932FF7F3F4F3F4F3F4F3F4F2003
      60023F4F007C00643F4F79327932D300000093313F4F3F4F3F4F3F67FF7F9331
      2C672C676066FF7F3F6700000000000000000064004C00007932FF7FD300D300
      D300D300D300D300D300D300D300FF7F7932000000000000000000000000734E
      FF7F3F678C310000000000000000000000007932FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F793279327932D30093313F4F3F4F3F4F3F67FF7F9331
      2C672C7F66663F6799010000000000000000007C0064004C7932FF7FD3007932
      793279327932793279327932D300FF7F7932000000000000000000000000734E
      FF7F3F678C310000000000000000000000007932FF7F3F4F3F4F3F4F3F4F3F4F
      3F4F3F4F3F4F3F4F3F4F793279327932D30093313F4F794E79323F67FF7F9331
      3367337FD65A9F0199010000000000000000007C006400007932FF7FD300D300
      D300D300D300D300D300D300D300FF7F7932000000000000000000000000734E
      FF7F3F678C310000000000000000000000000000793279327932793279327932
      79327932793279323F4F3F4F79327932D30093313F4F9331FF7F3F67FF7F9331
      336718639901990199019901990199010000007C000000007932FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F7932000000000000000000000000734E
      FF7F3F678C31000000000000000000000000000000007932FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F79323F4F3F4F7932D30093313F4F794E93313F67FF7F9331
      0000990199019901990199019901990100000000000000007932FF7FFF7F3967
      396739673967396739673967FF7FFF7F79320000000000000000000000008C31
      8C318C318C31000000000000000000008C310000000000007932FF7F9C739C73
      9C739C739C73FF7F793279327932D300000093313F4F3F4F3F4F3F67FF7F9331
      0000794E99019901990199019901990100000000000000007932FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F793200008C318C31000000008C31734E
      734E734E734E8C310000000000008C318C310000000000007932FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F793200000000000093313F4F3F4F3F4F3F67FF7F9331
      3967BC7B794E9F01990100000000000000000000000000007932FF7FFF7F3967
      396739673967396739673967FF7FFF7F7932734E734E734E8C318C31734E3967
      39673967734E8C318C318C318C3139678C3100000000000000007932FF7F9C73
      9C739C739C739C73FF7F793200000000000093313F4F3F4F3F4F3F67FF7F9331
      3367000033673F4F990100000000000000000000000000007932FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F7932734EFF7F39673967396739673967
      396739673967734E734E734E39678C31000000000000000000007932FF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F7932000000009331794E3F4F3F4F3F67FF7F9331
      39670000666600003F4F00000000000000000000000000007932FF7FFF7F3967
      396739673967396739673967FF7FFF7F7932734EFF7F39673967FF7F39673967
      396739673967396739673967734E000000000000000000000000000079327932
      793279327932793279327932793200000000000018637932794E394FFF7F9331
      6066606660660000000000000000000000000000000000007932FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F7932734EFF7FFF7F734E734EFF7FFF7F
      FF7FFF7FFF7FFF7F734E734E0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000003967794E93319331
      0000000000000000000000000000000000000000000000007932793279327932
      7932793279327932793279327932793279320000734E734E00000000734E734E
      734E734E734E734E000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000079327932793279327932
      7932793279327932793279327932000000000000C61800000000000000000000
      000000000000000000000000000000000000000000000000004C000000000000
      0000000000000000000000000000007C00000000000000000000000000000000
      000000000000000000000000000000000000000000007932FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F793200000000C6188C318C318C31000000000000
      00000000000000000000000000000000000000000000C664007C004C00000000
      00000000000000000000000000000000000000000000000000007932D300D300
      793200000000000000000000000000000000000000007932FF7F9C739C739C73
      9C739C739C739C739C73FF7F7932000000000000734E3967734E8C318C310000
      00000000000000000000000000000000000000000000C664667E007C004C0000
      000000000000000000000000007C00000000000000000000D300D30099019901
      D30000000000000000000000000000000000000000007932FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F7932000000000000734E39673967734E734E8C31
      8C3100000000000000000000000000000000000000000000C664807D00640000
      00000000000000000000007C00000000000000000000D30099019901D300D300
      793200000000000000000000000000000000000000007932FF7F9C739C739C73
      9C739C739C739C739C73FF7F79320000000000000000734E39673967734E734E
      734E8C318C3100000000000000000000000000000000000000000064007C004C
      0000000000000000007C004C00000000000000007932D3009901D30079320000
      0000D300D300D300D300D300D300D3000000000000007932FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F79320000000000000000734E9C7339673967734E
      734E734ED300CC00CC000000000000000000000000000000000000000064007C
      004C00000000007C004C00000000000000000000D3009901D300793200000000
      0000D30099019901990199019901D3000000000000007932FF7F9C739C739C73
      9C739C739C739C739C73FF7F793200000000000000000000734E9C7339673967
      734ED300D300D300D300CC000000000000000000000000000000000000000064
      007C004C007C004C000000000000000000000000D3009901D300000000000000
      00000000D3009901990199019901D3000000000000007932FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F793200000000000000000000734EFF7F9C733967
      D300D300D300D300D300D300CC00000000000000000000000000000000000000
      0064007C004C0000000000000000000000000000D3009901D300793200000000
      000000007932D300990199019901D3000000000000007932FF7F9C739C739C73
      9C739C739C739C739C73FF7F7932000000000000000000000000734EFF7FD300
      9919D300D300D300D300D300D300CC0000000000000000000000000000000064
      007C004C0064004C0000000000000000000000007932D3009901D30079320000
      7932D300D3009901D30099019901D3000000000000007932FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F7932000000000000000000000000734ED3009919
      D3009919D300D300D300D300D300D300CC00000000000000000000000064007C
      004C000000000064004C000000000000000000000000D30099019901D300D300
      D30099019901D3007932D3009901D3000000000000007932FF7F9C739C739C73
      9C739C73FF7F79327932793279320000000000000000000000000000D300D300
      9919D3009919D300D300D300D300D300D3000000000000000064007C007C004C
      00000000000000000064004C000000000000000000000000D300D30099019901
      9901D300D300000000000000D300D3000000000000007932FF7FFF7FFF7FFF7F
      FF7FFF7FFF7F79329C73793200000000000000000000000000000000D300D300
      D3009919D3009919D300D300D300D300734E000000000064667E007C004C0000
      000000000000000000000064004C0000000000000000000000007932D300D300
      D30079320000000000000000000000000000000000007932FF7FFF7FFF7FFF7F
      FF7FFF7FFF7F793279320000000000000000000000000000000000000000D300
      D300D3009919D3009919D300D300734E734E000000008C4D00648C4D00000000
      0000000000000000000000000000006400000000000000000000000000000000
      0000000000000000000000000000000000000000000079327932793279327932
      7932793279327932000000000000000000000000000000000000000000000000
      D300D300D3009919D300D30039673967734E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D300D300D300D3009C739C73396739670000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF00FFFF0000000000008001000000000000
      0001000000000000000100000000000000010000000000000001000000000000
      0001000000000000000100000000000000010000000000000001000000000000
      0001000000000000000100000000000000010000000000000001000000000000
      0001000000000000FFFF000000000000FFFFFCFFFFFF80038000F87F00010003
      8000F07F000100038000E07F000100038000C03F000100038000803E00010003
      8000001C00010003800000088001000380000001800100038000800380010003
      80008007000100038000800F000100038000C01F000100038000E03F80010003
      8000F07F000100038000F8FF00010003FFFFFDFFE000F81FC007E0FFE000F81F
      8003801FE000F81F0001001FE000F81F0001001F6000FC3F0001000F2000FC3F
      0000000F0000FC3F0000000F2000FC3F800000016000FC3FC0000101E000FC3E
      E0010101E000981CE007000FE0000000F007008FE0000001F00300AFE0000003
      F803803FE0000007FFFFE1FFE000981FFFFFFFFFFFFFFFFFC0033FFFEFFDFFFF
      C0030FFFC7FFF0FFC00383FFC3FBE0FFC00380FFE3F7C0FFC003C03FF1E78301
      C003C00FF8CF8701C003E007FC1F8F81C003E003FE3F8781C003F001FC1F8201
      C003F000F8CFC001C003F800E1E7E039C007F800C3F3F07FC00FFC00C7FDFFFF
      C01FFE00FFFFFFFFFFFFFF00FFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object frReport: TfrReport
    Dataset = frDBDataSet
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    StoreInDFM = True
    RebuildPrinter = False
    Left = 67
    Top = 278
    ReportForm = {
      19000000610B000019000000000D00444153434F4D2041522D35353000FFFFFF
      FFFF0B000000C8050000340800000000000036000000000000000000000000FF
      FF00000000FFFF0000000000000000000500506167653100030400466F726D00
      0F0000FFDC000000780000007C0100002C010000040000000200E40000000900
      D6F7CFEECAFDBEDD3100020100000000CC00000016020000C900000030000500
      01000000000000000000FFFFFF1F000000000B00667244424461746153657400
      000000000000FFFF000000000002000000010000000000000001000000C80000
      00140000000100000000000002008C01000008006474466F6F74657200020100
      0000002702000016020000060000003000110001000000000000000000FFFFFF
      1F0000000000000000000005000500626567696E0D11007B20666F7220693A3D
      3120746F205B6E5D0D15002020646F2053686F7742616E64286368696C64293B
      0D04002020207D0D0300656E6400FFFF00000000000200000001000000000000
      0001000000C800000014000000010000000000000200F101000005006368696C
      6400020100000000F0010000160200000F00000030000A000100000000000000
      0000FFFFFF1F00000000000000000000000000FFFF0000000000020000000100
      00000000000001000000C8000000140000000100000000000002006F02000007
      00B7D6D7E9CDB731000201000000003C00000016020000650000003200100001
      000000000000000000FFFFFF1F0000000017005B4D44617461322E2246506572
      736F6E616C4E6F225D2000000000000000FFFF00000000000200000001000000
      0000000001000000C8000000140000000100000000000000000603000006004D
      656D6F313500020036000000CC000000640000002800000003000F00F4010000
      000000000000FFFFFF1F2C00000000000001000E00C9E7BBE1B1A3D5CFBAC5C2
      EBA3BA00000000FFFF00000000000200000001000000000F0054696D6573204E
      657720526F6D616E00090000000000000000000A0000000100020000000000FF
      FFFF0000000002000000000000000000A703000006004D656D6F31360002009A
      000000CC000000DF0000002800000001000F00F4010000000000000000FFFFFF
      1F2C00000000000001001800205B4D44617461322E2246506572736F6E616C4E
      6F225D2000000000FFFF00000000000200000001000000000F0054696D657320
      4E657720526F6D616E0009000000000000000000080000000100020000000000
      FFFFFF00000000020000000000000000004104000005004D656D6F3100020014
      0000003C0000006C0000006300000003000F00F4010000000000000000FFFFFF
      1F2C00000000000001001200205B4D44617461322E22464E616D65225D200000
      0000FFFF00000000000200000001000000000F0054696D6573204E657720526F
      6D616E000A0000000000000000000A0000000100020000000000FFFFFF000000
      0002000000000000000000D704000005004D656D6F3200020036000000F40000
      00640000002800000003000F00F4010000000000000000FFFFFF1F2C00000000
      000001000E00B9ABC3F1C9EDB7DDD6A4BAC5A3BA00000000FFFF000000000002
      00000001000000000F0054696D6573204E657720526F6D616E00090000000000
      000000000A0000000100020000000000FFFFFF00000000020000000000000000
      007505000005004D656D6F330002009A000000F4000000DF0000002800000001
      000F00F4010000000000000000FFFFFF1F2C00000000000001001600205B4D44
      617461322E22464944436172644E6F225D2000000000FFFF0000000000020000
      0001000000000F0054696D6573204E657720526F6D616E000900000000000000
      0000080000000100020000000000FFFFFF000000000200000000000000000007
      06000005004D656D6F37000200360000001C010000640000002800000003000F
      00F4010000000000000000FFFFFF1F2C00000000000001000A00D0D520202020
      C3FBA3BA00000000FFFF00000000000200000001000000000F0054696D657320
      4E657720526F6D616E00090000000000000000000A0000000100020000000000
      FFFFFF0000000002000000000000000000A106000005004D656D6F380002009A
      0000001C010000DF0000002800000001000F00F4010000000000000000FFFFFF
      1F2C00000000000001001200205B4D44617461322E22464E616D65225D200000
      0000FFFF00000000000200000001000000000F0054696D6573204E657720526F
      6D616E0009000000000000000000080000000100020000000000FFFFFF000000
      00020000000000000000003407000006004D656D6F3132000200360000004401
      0000640000002800000003000F00F4010000000000000000FFFFFF1F2C000000
      00000001000A00B3F6C9FAC8D5C6DAA3BA00000000FFFF000000000002000000
      01000000000F0054696D6573204E657720526F6D616E00090000000000000000
      000A0000000100020000000000FFFFFF0000000002000000000000000000D407
      000006004D656D6F31330002009A00000044010000DF0000002800000001000F
      00F4010000000000000000FFFFFF1F2C00000000000001001700205B4D446174
      61322E2246426972746844617465225D2000000000FFFF000000000002000000
      01000000000F0054696D6573204E657720526F6D616E00090000000000000000
      00080000000100020000000000FFFFFF00000000020000000000000000006708
      000006004D656D6F3232000200360000006C010000640000002800000003000F
      00F4010000000000000000FFFFFF1F2C00000000000001000A00BBA7BFDAD0D4
      D6CAA3BA00000000FFFF00000000000200000001000000000F0054696D657320
      4E657720526F6D616E00090000000000000000000A0000000100020000000000
      FFFFFF0000000002000000000000000000F008000006004D656D6F3233000200
      9A0000006C010000DF0000002800000001000F00F4010000000000000000FFFF
      FF1F2C0000000000000100000000000000FFFF00000000000200000001000000
      000F0054696D6573204E657720526F6D616E0009000000000000000000080000
      000100020000000000FFFFFF000000000200000000000000FEFEFF0400000005
      0020B1E4C1BF0000000006007469746C65310000000001006E00000000060074
      69746C65320000000000000000010000000B0066724442446174615365740000
      0000FDFF0100000000FC0100000000FC0100000000FC0100000000FC01000000
      00FC0100000000FC0100000000FC0100000000FC000000000000000000000000
      000000005800C0780655AC09E340EE3A2E5596E2E34000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FC0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000580000000000580000
      002BCAE1BADB7FE440}
  end
  object frDBDataSet: TfrDBDataSet
    DataSet = MData
    Left = 19
    Top = 278
  end
  object OpenDialog1: TOpenDialog
    Left = 19
    Top = 227
  end
  object SaveDialog1: TSaveDialog
    Left = 67
    Top = 227
  end
  object DS_Mdata7: TDataSource
    DataSet = Mdata7
    Left = 19
    Top = 520
  end
  object Mdata7: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 67
    Top = 528
  end
  object DS_Mdata2: TDataSource
    DataSet = Mdata2
    Left = 19
    Top = 120
  end
  object Mdata2: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 67
    Top = 120
  end
  object DS_Mdata3: TDataSource
    DataSet = Mdata3
    Left = 19
    Top = 160
  end
  object Mdata3: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 67
    Top = 160
  end
  object actionList: TActionList
    Left = 120
    Top = 128
    object Actrights: TAction
      Category = #31995#32479#20449#24687
      Caption = #34920#21333#26435#38480
      ImageIndex = 1
    end
    object Actpwd: TAction
      Category = #31995#32479#20449#24687
      Caption = #23494#30721#20462#25913
      ImageIndex = 1
    end
    object ActLog: TAction
      Category = #31995#32479#20449#24687
      Caption = #27880#38144
      ImageIndex = 5
    end
    object Act_IMP_StockList: TAction
      Caption = #25968#25454#23548#20837
      OnExecute = Act_IPM_PensionListExecute
    end
    object Act_Weigth: TAction
      Caption = 'Act_Weigth'
    end
  end
  object DataSource: TDataSource
    DataSet = ADOQuery
    Left = 19
    Top = 348
  end
  object ADOQuery: TADOQuery
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Extended Properti' +
      'es="DefaultDir=D:\'#26412#20307#23450#39069'\'#25991#26412#25991#20214'\LG181;Driver={Microsoft Text-Treiber' +
      ' (*.txt; *.csv)};DriverId=27;Extensions=txt,csv,tab,asc;FIL=text' +
      ';FILEDSN=D:\'#40857#20928#30340#36719#20214'\DesignBOM\DesignOut\schema.ini;MaxScanRows=25;' +
      'UserCommitSync=Yes;"'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '#24207#21495','#20195#21495','#21517#31216' from LG1811.txt')
    Left = 75
    Top = 356
  end
  object MData_M3: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 67
    Top = 192
    object StringField1: TStringField
      FieldName = 'FCode'
    end
    object StringField2: TStringField
      FieldName = 'th'
    end
    object StringField3: TStringField
      FieldName = 'mc'
    end
    object StringField4: TStringField
      FieldName = 'gg'
    end
    object StringField5: TStringField
      FieldName = 'SelRemark'
    end
    object StringField6: TStringField
      FieldName = 'ssth'
    end
    object StringField7: TStringField
      FieldName = 'FK3Number'
    end
    object StringField8: TStringField
      FieldName = 'FName'
    end
    object StringField9: TStringField
      FieldName = 'FModel'
    end
    object StringField10: TStringField
      FieldName = 'unitName'
    end
    object StringField11: TStringField
      FieldName = 'js'
    end
    object FloatField1: TFloatField
      FieldName = 'FSumQry'
    end
    object FloatField2: TFloatField
      FieldName = 'FQry'
    end
    object FloatField3: TFloatField
      FieldName = 'FSuttle'
    end
    object StringField12: TStringField
      FieldName = 'FNumber'
    end
    object StringField13: TStringField
      FieldName = 'FParentNumber'
    end
    object StringField14: TStringField
      FieldName = 'FFullNumber'
    end
    object StringField15: TStringField
      FieldName = 'Num'
    end
    object StringField16: TStringField
      FieldName = 'abc'
    end
    object StringField17: TStringField
      FieldName = 'FFStockInListRemark'
    end
    object IntegerField1: TIntegerField
      FieldName = 'FStockInListID'
    end
    object FloatField4: TFloatField
      FieldName = 'FInSumSuttle'
    end
    object FloatField5: TFloatField
      FieldName = 'FInQry'
    end
    object FloatField6: TFloatField
      FieldName = 'FInSumQry'
    end
  end
  object DS_Mdata_M3: TDataSource
    DataSet = MData_M3
    Left = 19
    Top = 192
  end
end
