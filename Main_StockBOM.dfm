inherited Frm_StockBOM: TFrm_StockBOM
  Left = 247
  Top = 117
  Caption = #20837#24211#28165#21333#20316#19994#34920
  ClientHeight = 682
  ClientWidth = 1061
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image: TImage
    Width = 1061
  end
  inherited L_title: TLabel
    Left = -16
    Top = 28
    Width = 1281
    Caption = #36890#29992#25968#25454#30331#35760
  end
  inherited P_back: TPanel
    Width = 1061
    Height = 661
    inherited P_main: TPanel
      Width = 1055
      Height = 655
      inherited Panel_down: TPanel
        Top = 631
        Width = 1053
        Height = 22
        inherited Bevel_bass: TBevel
          Width = 1053
        end
        object stbBar: TRzStatusBar
          Left = 0
          Top = 3
          Width = 1053
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
            Width = 790
            Height = 19
            Align = alClient
            FieldLabel = #24403#21069#20449#24687
            Caption = #29366#24577#20449#24687
          end
        end
      end
      object PC_2: TRzPageControl
        Left = 0
        Top = 0
        Width = 1053
        Height = 631
        ActivePage = TS_DesignBOM
        Align = alClient
        TabIndex = 0
        TabOrder = 1
        TabOrientation = toBottom
        TabStyle = tsDoubleSlant
        FixedDimension = 19
        object TS_DesignBOM: TRzTabSheet
          Color = 14935011
          Caption = #35774#35745'BOM'
          object RzSizePanel2: TRzSizePanel
            Left = 0
            Top = 0
            Width = 226
            Height = 610
            Color = 14935011
            HotSpotVisible = True
            SizeBarWidth = 7
            TabOrder = 0
            VisualStyle = vsGradient
            object MyTreeView_DBOM: TTreeView
              Left = 0
              Top = 0
              Width = 218
              Height = 545
              Align = alClient
              AutoExpand = True
              Ctl3D = False
              Indent = 19
              ParentCtl3D = False
              TabOrder = 0
              OnChange = MyTreeView_DBOMChange
              OnExpanding = MyTreeView_DBOMExpanding
            end
            object Panel12: TPanel
              Left = 0
              Top = 545
              Width = 218
              Height = 65
              Align = alBottom
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 1
              object Label11: TLabel
                Left = 2
                Top = 7
                Width = 132
                Height = 13
                Caption = #36755#20837#19968#32423#22270#21495#27169#31946#26597#25214#65306
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
          end
          object Panel6: TPanel
            Left = 226
            Top = 0
            Width = 825
            Height = 610
            Align = alClient
            BevelOuter = bvNone
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 1
            object Panel8: TPanel
              Left = 0
              Top = 0
              Width = 1358
              Height = 49
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 0
            end
            object Panel9: TPanel
              Left = 0
              Top = 0
              Width = 825
              Height = 41
              Align = alTop
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 1
              object ToolBar2: TToolBar
                Left = 0
                Top = 0
                Width = 825
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
                object ToolBar3: TToolBar
                  Left = 0
                  Top = 0
                  Width = 665
                  Height = 35
                  AutoSize = True
                  ButtonHeight = 35
                  ButtonWidth = 73
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
                  object TB_Ref_DBOM: TToolButton
                    Left = 0
                    Top = 0
                    AutoSize = True
                    Caption = #21047#26032'[&R]'
                    ImageIndex = 4
                    OnClick = TB_Ref_DBOMClick
                  end
                  object TB_RecordRef: TToolButton
                    Left = 53
                    Top = 0
                    AutoSize = True
                    Caption = #35760#24405#21047#26032
                    ImageIndex = 10
                    OnClick = TB_RecordRefClick
                  end
                  object TB_Weigh: TToolButton
                    Left = 112
                    Top = 0
                    AutoSize = True
                    Caption = #37325#37327#35745#31639
                    ImageIndex = 30
                    OnClick = TB_WeighClick
                  end
                  object TB_PartsSort: TToolButton
                    Left = 171
                    Top = 0
                    AutoSize = True
                    Caption = #37096#20214#21010#20998
                    ImageIndex = 25
                    Visible = False
                    OnClick = TB_PartsSortClick
                  end
                  object TB_Submit_BOM: TToolButton
                    Left = 230
                    Top = 0
                    AutoSize = True
                    Caption = #25552#20132
                    ImageIndex = 13
                    Visible = False
                    OnClick = TB_Submit_BOMClick
                  end
                  object TB_Check_BOM: TToolButton
                    Left = 265
                    Top = 0
                    AutoSize = True
                    Caption = #26657#23545
                    ImageIndex = 21
                    Visible = False
                    OnClick = TB_Check_BOMClick
                  end
                  object TB_Audit_BOM: TToolButton
                    Left = 300
                    Top = 0
                    AutoSize = True
                    Caption = #23457#26680
                    ImageIndex = 14
                    Visible = False
                    OnClick = TB_Audit_BOMClick
                  end
                  object TB_Edit1: TToolButton
                    Left = 335
                    Top = 0
                    AutoSize = True
                    Caption = #20462#25913'[&B]'
                    ImageIndex = 27
                    OnClick = TB_Edit1Click
                  end
                  object TB_Save: TToolButton
                    Left = 388
                    Top = 0
                    AutoSize = True
                    Caption = #26356#26032'[&C]'
                    ImageIndex = 9
                    Visible = False
                    OnClick = TB_SaveClick
                  end
                  object ToolButton10: TToolButton
                    Left = 441
                    Top = 0
                    AutoSize = True
                    Caption = #37096#20214#27719#24635
                    ImageIndex = 28
                    OnClick = ToolButton10Click
                  end
                  object ToolButton15: TToolButton
                    Left = 500
                    Top = 0
                    Width = 8
                    Caption = 'ToolButton5'
                    ImageIndex = 4
                    Style = tbsSeparator
                  end
                  object TB_StockBOM: TToolButton
                    Left = 508
                    Top = 0
                    AutoSize = True
                    Caption = #19979#25512#29983#20135'BOM'
                    ImageIndex = 13
                    OnClick = TB_StockBOMClick
                  end
                  object ToolButton18: TToolButton
                    Left = 585
                    Top = 0
                    Width = 8
                    Caption = 'ToolButton1'
                    ImageIndex = 9
                    Style = tbsSeparator
                  end
                  object TB_Exit: TToolButton
                    Left = 593
                    Top = 0
                    AutoSize = True
                    Caption = #36864#20986'[&E]'
                    ImageIndex = 7
                    OnClick = TB_ExitClick
                  end
                end
                object ToolButton9: TToolButton
                  Left = 665
                  Top = 0
                  Cursor = crHandPoint
                  AutoSize = True
                  Caption = #35774#32622'[&D]'
                  ImageIndex = 17
                  Wrap = True
                end
                object ToolButton8: TToolButton
                  Left = 0
                  Top = 35
                  Width = 8
                  Caption = 'ToolButton5'
                  ImageIndex = 4
                  Style = tbsSeparator
                end
              end
            end
            object PC_1: TRzPageControl
              Left = 0
              Top = 41
              Width = 825
              Height = 569
              ActivePage = TS_BOM
              Align = alClient
              TabIndex = 0
              TabOrder = 2
              FixedDimension = 19
              object TS_BOM: TRzTabSheet
                Caption = #35774#35745#23450#39069
                object Panel11: TPanel
                  Left = 0
                  Top = 0
                  Width = 821
                  Height = 41
                  Align = alTop
                  TabOrder = 0
                  object Label26: TLabel
                    Left = 12
                    Top = 13
                    Width = 54
                    Height = 13
                    Caption = #20998#26723' '#26696' '#21495
                    Transparent = True
                  end
                  object Label1: TLabel
                    Left = 244
                    Top = 13
                    Width = 108
                    Height = 13
                    Caption = #23450#39069#23548#20837#26368#26089#26085#26399#65306
                    Transparent = True
                  end
                  object E_FBranchFileNo: TcxButtonEdit
                    Left = 85
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
                    Properties.OnButtonClick = E_FBranchFileNo1PropertiesButtonClick
                    Style.BorderColor = 8623776
                    Style.BorderStyle = ebsSingle
                    Style.Color = 15658734
                    Style.ButtonTransparency = ebtHideUnselected
                    TabOrder = 0
                    ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WIN2000'
                  end
                  object E_FInputStartDate: TcxButtonEdit
                    Left = 373
                    Top = 8
                    Width = 148
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
                end
                object RzSP_PTitem: TRzSizePanel
                  Left = 0
                  Top = 384
                  Width = 821
                  Height = 162
                  Align = alBottom
                  HotSpotVisible = True
                  Side = sdBottom
                  ParentShowHint = False
                  ShowHint = False
                  SizeBarWidth = 7
                  TabOrder = 1
                  UseDockManager = False
                  Visible = False
                  object cxGrid_PTList: TcxGrid
                    Left = 0
                    Top = 8
                    Width = 821
                    Height = 154
                    Align = alClient
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -15
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    PopupMenu = PM
                    TabOrder = 0
                    OnContextPopup = cxGrid_PTListContextPopup
                    object cxGV_PTList: TcxGridDBTableView
                      DataController.DataSource = DS_Mdata_PTList
                      DataController.Summary.DefaultGroupSummaryItems = <>
                      DataController.Summary.FooterSummaryItems = <
                        item
                          Format = '0.0000'
                          Kind = skSum
                          FieldName = 'FMakeBOMWet'
                        end
                        item
                          Format = '0'
                          Kind = skSum
                          FieldName = 'FMakeBOMPackQry'
                          Column = FItemListID_PTList
                        end
                        item
                          Format = '0'
                          Kind = skSum
                          FieldName = 'FLastSPackQry'
                        end
                        item
                          Format = '0'
                          Kind = skSum
                          FieldName = 'FPackQry'
                        end
                        item
                          Format = '0'
                          Kind = skSum
                          FieldName = 'FTotalPackQry'
                        end
                        item
                          Format = '0'
                          Kind = skSum
                          FieldName = 'FLastShipQry'
                        end
                        item
                          Format = '0'
                          Kind = skSum
                          FieldName = 'FShipQry'
                        end
                        item
                          Format = '0'
                          Kind = skSum
                          FieldName = 'FTotalShipQry'
                        end
                        item
                          Format = '0.0000'
                          Kind = skSum
                          FieldName = 'FLastMakePercentWet'
                        end
                        item
                          Format = '0.0000'
                          Kind = skSum
                          FieldName = 'FMakePercentWet'
                        end
                        item
                          Format = '0.0000'
                          Kind = skSum
                          FieldName = 'FTotalMakePercentWet'
                        end
                        item
                          Format = '0.0000'
                          Kind = skSum
                          FieldName = 'FLastShipPercentWet'
                        end
                        item
                          Format = '0.0000'
                          Kind = skSum
                          FieldName = 'FShipPercentWet'
                        end
                        item
                          Format = '0.0000'
                          Kind = skSum
                          FieldName = 'FTotalShipPercentWet'
                        end
                        item
                          Format = '0.0000'
                          Kind = skSum
                          FieldName = 'FMax_TotalMakePercentWet'
                        end
                        item
                          Format = '0.0000'
                          Kind = skSum
                          FieldName = 'FMax_not_TotalMakePercentWet'
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
                      OptionsBehavior.FocusCellOnTab = True
                      OptionsBehavior.GoToNextCellOnEnter = True
                      OptionsBehavior.FocusCellOnCycle = True
                      OptionsData.Appending = True
                      OptionsData.CancelOnExit = False
                      OptionsData.DeletingConfirmation = False
                      OptionsData.Editing = False
                      OptionsSelection.MultiSelect = True
                      OptionsView.Navigator = True
                      OptionsView.Footer = True
                      OptionsView.GroupByBox = False
                      object FDesignChangeNum_PTList: TcxGridDBColumn
                        Caption = #21464#26356#21333#21495
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 76
                        DataBinding.FieldName = 'FDesignChangeNum'
                      end
                      object FDesignChangeDate_PTList: TcxGridDBColumn
                        Caption = #21464#26356#21333#26085#26399
                        PropertiesClassName = 'TcxDateEditProperties'
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 102
                        DataBinding.FieldName = 'FDesignChangeDate'
                      end
                      object FPartsNumber_PTList: TcxGridDBColumn
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
                        Options.Editing = False
                        Options.Filtering = False
                        Options.Sorting = False
                        Width = 86
                        DataBinding.FieldName = 'FPartsNumber'
                      end
                      object FPartsName_PTList: TcxGridDBColumn
                        Caption = #37096#20214#21517#31216
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 152
                        DataBinding.FieldName = 'FPartsName'
                      end
                      object FDesignChangeContent_PTList: TcxGridDBColumn
                        Caption = #21464#26356#21333#20869#23481
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 289
                        DataBinding.FieldName = 'FDesignChangeContent'
                      end
                      object FDesignChangeCause_PTList: TcxGridDBColumn
                        Caption = #26356#25913#21407#22240
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
                        Width = 189
                        DataBinding.FieldName = 'FDesignChangeCause'
                      end
                      object FItemListID_PTList: TcxGridDBColumn
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 85
                        DataBinding.FieldName = 'FItemListID'
                      end
                      object FDesignChangeListID_PTList: TcxGridDBColumn
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 154
                        DataBinding.FieldName = 'FDesignChangeListID'
                      end
                      object cxGV_PTListDBColumn4: TcxGridDBColumn
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                      end
                      object cxGV_PTListDBColumn5: TcxGridDBColumn
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                      end
                    end
                    object cxGL_PTList: TcxGridLevel
                      GridView = cxGV_PTList
                    end
                  end
                end
                object cxGrid_DBOM: TcxGrid
                  Left = 0
                  Top = 41
                  Width = 1920
                  Height = 1039
                  Align = alClient
                  PopupMenu = PM
                  TabOrder = 2
                  OnContextPopup = cxGrid_DBOMContextPopup
                  object cxGV_DBOM: TcxGridDBTableView
                    DataController.DataModeController.GridMode = True
                    DataController.DataModeController.SmartRefresh = True
                    DataController.DataSource = DS_Mdata_DBOM
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <
                      item
                        Format = #23567#35745#65306'0.0000'
                        Kind = skSum
                        FieldName = 'FSumSuttle'
                        Column = FSumSuttle_1
                      end
                      item
                        Format = #23567#35745#65306'0.0000'
                        Kind = skSum
                        FieldName = 'FQry'
                        Column = FQry_1
                      end
                      item
                        Format = #23567#35745#65306'0.0000'
                        Kind = skSum
                        FieldName = 'FSuttle'
                        Column = FSuttle_1
                      end
                      item
                        Format = #23567#35745#65306'0.0000'
                        Kind = skSum
                        FieldName = 'FSumQry'
                        Column = FSumQry_1
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
                    OptionsData.CancelOnExit = False
                    OptionsData.Deleting = False
                    OptionsData.DeletingConfirmation = False
                    OptionsData.Editing = False
                    OptionsData.Inserting = False
                    OptionsView.Navigator = True
                    OptionsView.Footer = True
                    OptionsView.GroupByBox = False
                    object FCode_1: TcxGridDBColumn
                      Caption = #32423#21035
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Options.Sorting = False
                      Width = 30
                      DataBinding.FieldName = 'FCode'
                    end
                    object th_1: TcxGridDBColumn
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
                    object mc_1: TcxGridDBColumn
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
                    object gg_1: TcxGridDBColumn
                      Caption = #35268#26684
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Options.Sorting = False
                      Width = 125
                      DataBinding.FieldName = 'gg'
                    end
                    object FPartsSort: TcxGridDBColumn
                      Caption = #37096#20214#31867#21035
                      PropertiesClassName = 'TcxButtonEditProperties'
                      Properties.Buttons = <
                        item
                          Default = True
                          Kind = bkEllipsis
                        end>
                      Properties.OnButtonClick = FPartsSortPropertiesButtonClick
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Options.Sorting = False
                      Width = 115
                      DataBinding.FieldName = 'FPartsSort'
                    end
                    object FWorkPartsNum: TcxGridDBColumn
                      Caption = #20837#24211#32534#30721
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 53
                      DataBinding.FieldName = 'FWorkPartsNum'
                    end
                    object FWorkParts: TcxGridDBColumn
                      Caption = #20837#24211#31867#21035
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Options.Sorting = False
                      Width = 108
                      DataBinding.FieldName = 'FWorkParts'
                    end
                    object FManagePartsNum: TcxGridDBColumn
                      Caption = #29983#20135#32534#30721
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 53
                      DataBinding.FieldName = 'FManagePartsNum'
                    end
                    object FMakeParts: TcxGridDBColumn
                      Caption = #29983#20135#31867#21035
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 105
                      DataBinding.FieldName = 'FMakeParts'
                    end
                    object FPlanParts: TcxGridDBColumn
                      Caption = #25490#20135#37096#20214#31867#21035
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 105
                      DataBinding.FieldName = 'FPlanParts'
                    end
                    object FManageParts: TcxGridDBColumn
                      Caption = #20225#31649#31867#21035
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taRightJustify
                      Options.Editing = False
                      Options.Filtering = False
                      Options.Sorting = False
                      Width = 103
                      DataBinding.FieldName = 'FManageParts'
                    end
                    object FName_1: TcxGridDBColumn
                      Caption = #26448#26009#21517#31216
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Options.Sorting = False
                      Width = 88
                      DataBinding.FieldName = 'FName'
                    end
                    object FModel_1: TcxGridDBColumn
                      Caption = #26448#26009#35268#26684
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Options.Sorting = False
                      Width = 110
                      DataBinding.FieldName = 'FModel'
                    end
                    object FQry_1: TcxGridDBColumn
                      Caption = #25968#37327
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Options.Sorting = False
                      Width = 39
                      DataBinding.FieldName = 'FQry'
                    end
                    object FSuttle_1: TcxGridDBColumn
                      Caption = #35774#35745#20928#37325
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DecimalPlaces = 4
                      Properties.DisplayFormat = '0.0000;-0.0000'
                      Properties.ValidateOnEnter = True
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Options.Sorting = False
                      Width = 86
                      DataBinding.FieldName = 'FSuttle'
                    end
                    object FSumQry_1: TcxGridDBColumn
                      Caption = #24635#25968#37327
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DecimalPlaces = 0
                      Properties.DisplayFormat = '0'
                      Properties.ValidateOnEnter = True
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 41
                      DataBinding.FieldName = 'FSumQry'
                    end
                    object FSumSuttle_1: TcxGridDBColumn
                      Caption = #20928#37325#21512#35745
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DecimalPlaces = 4
                      Properties.DisplayFormat = '0.0000;-0.0000'
                      Properties.ValidateOnEnter = True
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 82
                      DataBinding.FieldName = 'FSumSuttle'
                    end
                    object ssth_1: TcxGridDBColumn
                      Caption = #25152#23646#22270#21495
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Options.Sorting = False
                      Width = 91
                      DataBinding.FieldName = 'ssth'
                    end
                    object y_FSuttle: TcxGridDBColumn
                      Caption = #25442#31639#20928#37325
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DecimalPlaces = 4
                      Properties.DisplayFormat = '0.0000;-0.0000'
                      Properties.ValidateOnEnter = True
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Options.Sorting = False
                      Width = 81
                      DataBinding.FieldName = 'y_FSuttle'
                    end
                    object c_FSuttle: TcxGridDBColumn
                      Caption = #25442#31639#20928#37325#24046
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DecimalPlaces = 4
                      Properties.DisplayFormat = '0.0000;-0.0000'
                      Properties.ValidateOnEnter = True
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 76
                      DataBinding.FieldName = 'c_FSuttle'
                    end
                    object FMaterialRate: TcxGridDBColumn
                      Caption = #25442#31639#29575
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DecimalPlaces = 4
                      Properties.ValidateOnEnter = True
                      Properties.IsDisplayFormatAssigned = True
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 41
                      DataBinding.FieldName = 'FMaterialRate'
                    end
                    object FNumber: TcxGridDBColumn
                      Caption = #26448#26009#32534#21495
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Options.Sorting = False
                      Width = 124
                      DataBinding.FieldName = 'FNumber'
                    end
                    object UnitName_1: TcxGridDBColumn
                      Caption = #21333#20301
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Options.Sorting = False
                      Width = 29
                      DataBinding.FieldName = 'UnitName'
                    end
                    object y_FNumber: TcxGridDBColumn
                      Caption = #25442#31639#32534#30721
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 96
                      DataBinding.FieldName = 'y_FNumber'
                    end
                    object y_FModel: TcxGridDBColumn
                      Caption = #25442#31639#35268#26684
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 130
                      DataBinding.FieldName = 'y_FModel'
                    end
                    object FPriceQry: TcxGridDBColumn
                      Caption = #35745#20215#25968#37327
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Options.Sorting = False
                      Width = 53
                      DataBinding.FieldName = 'FPriceQry'
                    end
                    object FUse: TcxGridDBColumn
                      Caption = #21033#29992#29575
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DisplayFormat = '0.00'
                      Properties.ValidateOnEnter = True
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Options.Sorting = False
                      Width = 41
                      DataBinding.FieldName = 'FUse'
                    end
                    object FRation: TcxGridDBColumn
                      Caption = #21333#20214#23450#39069
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
                      DataBinding.FieldName = 'FRation'
                    end
                    object y_FRation: TcxGridDBColumn
                      Caption = #25442#31639#23450#39069
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 86
                      DataBinding.FieldName = 'y_FRation'
                    end
                    object FFullNumber_1: TcxGridDBColumn
                      Caption = #38271#20195#30721
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 146
                      DataBinding.FieldName = 'FFullNumber'
                    end
                    object ssFullNumber_1: TcxGridDBColumn
                      Caption = #25152#23646#38271#20195#30721
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Options.Sorting = False
                      Width = 165
                      DataBinding.FieldName = 'ssFullNumber'
                    end
                    object FDesignRemark_1: TcxGridDBColumn
                      Caption = #35774#35745#22791#27880
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 77
                      DataBinding.FieldName = 'FDesignRemark'
                    end
                    object Remark_1: TcxGridDBColumn
                      Caption = #22791#27880
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 88
                      DataBinding.FieldName = 'Remark'
                    end
                    object FFullName_1: TcxGridDBColumn
                      Caption = #20840#21517#31216
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 333
                      DataBinding.FieldName = 'FFullName'
                    end
                    object FItemNumber: TcxGridDBColumn
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 68
                      DataBinding.FieldName = 'FItemNumber'
                    end
                    object FPartsCode: TcxGridDBColumn
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 60
                      DataBinding.FieldName = 'FPartsCode'
                    end
                    object FItemNoID: TcxGridDBColumn
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      DataBinding.FieldName = 'FItemNoID'
                    end
                  end
                  object cxGL_DBOM: TcxGridLevel
                    GridView = cxGV_DBOM
                  end
                end
              end
              object TS_Sort: TRzTabSheet
                Caption = #25253#34920#27719#24635
                object cxGrid_DBOM_Sum: TcxGrid
                  Left = 0
                  Top = 0
                  Width = 821
                  Height = 546
                  Align = alClient
                  PopupMenu = PM
                  TabOrder = 0
                  OnContextPopup = cxGrid_DBOM_SumContextPopup
                  object cxGV_DBOM_Sum: TcxGridDBTableView
                    DataController.DataSource = DS_Mdata_DBOM_Sum
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <
                      item
                        Format = #23567#35745#65306'0.0000'
                        Kind = skSum
                        FieldName = 'FSumSuttle'
                        Column = cxGridDBColumn11
                      end
                      item
                        Format = #23567#35745#65306'0.0000'
                        Kind = skSum
                        FieldName = 'FQry'
                        Column = cxGridDBColumn10
                      end
                      item
                        Format = #23567#35745#65306'0.0000'
                        Kind = skSum
                        FieldName = 'FSuttle'
                        Column = cxGridDBColumn8
                      end
                      item
                        Format = #23567#35745#65306'0.0000'
                        Kind = skSum
                        FieldName = 'FSumQry'
                        Column = cxGridDBColumn7
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
                    OptionsData.CancelOnExit = False
                    OptionsData.Deleting = False
                    OptionsData.DeletingConfirmation = False
                    OptionsData.Editing = False
                    OptionsData.Inserting = False
                    OptionsView.Navigator = True
                    OptionsView.Footer = True
                    OptionsView.GroupByBox = False
                    object cxGridDBColumn1: TcxGridDBColumn
                      Caption = #32423#21035
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Options.Sorting = False
                      Width = 30
                      DataBinding.FieldName = 'FCode'
                    end
                    object cxGridDBColumn2: TcxGridDBColumn
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
                    object cxGridDBColumn3: TcxGridDBColumn
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
                    object cxGridDBColumn4: TcxGridDBColumn
                      Caption = #35268#26684
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Options.Sorting = False
                      Width = 125
                      DataBinding.FieldName = 'gg'
                    end
                    object FParts_1: TcxGridDBColumn
                      Caption = #27719#24635#37096#20214#31867#21035
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 131
                      DataBinding.FieldName = 'FParts'
                    end
                    object FNumber_1: TcxGridDBColumn
                      Caption = #26448#26009#32534#21495
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Options.Sorting = False
                      Width = 124
                      DataBinding.FieldName = 'FNumber'
                    end
                    object cxGridDBColumn5: TcxGridDBColumn
                      Caption = #26448#26009#21517#31216
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Options.Sorting = False
                      Width = 88
                      DataBinding.FieldName = 'FName'
                    end
                    object cxGridDBColumn6: TcxGridDBColumn
                      Caption = #26448#26009#35268#26684
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Options.Sorting = False
                      Width = 110
                      DataBinding.FieldName = 'FModel'
                    end
                    object cxGridDBColumn7: TcxGridDBColumn
                      Caption = #24635#25968#37327
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DecimalPlaces = 0
                      Properties.DisplayFormat = '0'
                      Properties.ValidateOnEnter = True
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 41
                      DataBinding.FieldName = 'FSumQry'
                    end
                    object cxGridDBColumn8: TcxGridDBColumn
                      Caption = #35774#35745#20928#37325
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DecimalPlaces = 4
                      Properties.DisplayFormat = '0.0000;-0.0000'
                      Properties.ValidateOnEnter = True
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Options.Sorting = False
                      Width = 86
                      DataBinding.FieldName = 'FSuttle'
                    end
                    object cxGridDBColumn9: TcxGridDBColumn
                      Caption = #25152#23646#22270#21495
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Options.Sorting = False
                      Width = 91
                      DataBinding.FieldName = 'ssth'
                    end
                    object cxGridDBColumn10: TcxGridDBColumn
                      Caption = #25968#37327
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Options.Sorting = False
                      Width = 39
                      DataBinding.FieldName = 'FQry'
                    end
                    object FManageParts_1: TcxGridDBColumn
                      Caption = #20225#31649#31867#21035
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taRightJustify
                      Options.Editing = False
                      Options.Filtering = False
                      Options.Sorting = False
                      Width = 103
                      DataBinding.FieldName = 'FManageParts'
                    end
                    object FWorkParts_1: TcxGridDBColumn
                      Caption = #20837#24211#31867#21035
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Options.Sorting = False
                      Width = 98
                      DataBinding.FieldName = 'FWorkParts'
                    end
                    object FPartsSort_1: TcxGridDBColumn
                      Caption = #37096#20214#31867#21035
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Options.Sorting = False
                      Width = 125
                      DataBinding.FieldName = 'FPartsSort'
                    end
                    object cxGridDBColumn11: TcxGridDBColumn
                      Caption = #20928#37325#21512#35745
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DecimalPlaces = 4
                      Properties.DisplayFormat = '0.0000;-0.0000'
                      Properties.ValidateOnEnter = True
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 82
                      DataBinding.FieldName = 'FSumSuttle'
                    end
                    object y_FSuttle_1: TcxGridDBColumn
                      Caption = #25442#31639#20928#37325
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DecimalPlaces = 4
                      Properties.DisplayFormat = '0.0000;-0.0000'
                      Properties.ValidateOnEnter = True
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Options.Sorting = False
                      Width = 81
                      DataBinding.FieldName = 'y_FSuttle'
                    end
                    object c_FSuttle_1: TcxGridDBColumn
                      Caption = #25442#31639#20928#37325#24046
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DecimalPlaces = 4
                      Properties.DisplayFormat = '0.0000;-0.0000'
                      Properties.ValidateOnEnter = True
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 76
                      DataBinding.FieldName = 'c_FSuttle'
                    end
                    object FMaterialRate_1: TcxGridDBColumn
                      Caption = #25442#31639#29575
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DecimalPlaces = 4
                      Properties.ValidateOnEnter = True
                      Properties.IsDisplayFormatAssigned = True
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 41
                      DataBinding.FieldName = 'FMaterialRate'
                    end
                    object cxGridDBColumn12: TcxGridDBColumn
                      Caption = #21333#20301
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Options.Sorting = False
                      Width = 29
                      DataBinding.FieldName = 'UnitName'
                    end
                    object y_FNumber_1: TcxGridDBColumn
                      Caption = #25442#31639#32534#30721
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 96
                      DataBinding.FieldName = 'y_FNumber'
                    end
                    object y_FModel_1: TcxGridDBColumn
                      Caption = #25442#31639#35268#26684
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 130
                      DataBinding.FieldName = 'y_FModel'
                    end
                    object FPriceQry_1: TcxGridDBColumn
                      Caption = #35745#20215#25968#37327
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Options.Sorting = False
                      Width = 53
                      DataBinding.FieldName = 'FPriceQry'
                    end
                    object FUse_1: TcxGridDBColumn
                      Caption = #21033#29992#29575
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DisplayFormat = '0.00'
                      Properties.ValidateOnEnter = True
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Options.Sorting = False
                      Width = 41
                      DataBinding.FieldName = 'FUse'
                    end
                    object FRation_1: TcxGridDBColumn
                      Caption = #21333#20214#23450#39069
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
                      DataBinding.FieldName = 'FRation'
                    end
                    object y_FRation_1: TcxGridDBColumn
                      Caption = #25442#31639#23450#39069
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 86
                      DataBinding.FieldName = 'y_FRation'
                    end
                    object cxGridDBColumn13: TcxGridDBColumn
                      Caption = #38271#20195#30721
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      SortOrder = soAscending
                      Width = 146
                      DataBinding.FieldName = 'FFullNumber'
                    end
                    object cxGridDBColumn14: TcxGridDBColumn
                      Caption = #25152#23646#38271#20195#30721
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Options.Sorting = False
                      Width = 165
                      DataBinding.FieldName = 'ssFullNumber'
                    end
                    object cxGridDBColumn15: TcxGridDBColumn
                      Caption = #22791#27880
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 88
                      DataBinding.FieldName = 'Remark'
                    end
                    object cxGridDBColumn16: TcxGridDBColumn
                      Caption = #20840#21517#31216
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 333
                      DataBinding.FieldName = 'FFullName'
                    end
                  end
                  object cxGL_DBOM_Sum: TcxGridLevel
                    GridView = cxGV_DBOM_Sum
                  end
                end
              end
            end
          end
        end
        object TS_WorkBOM: TRzTabSheet
          Color = 14935011
          Caption = #20837#24211#21333'BOM'
          object PanelBkGnd: TPanel
            Left = 225
            Top = 0
            Width = 826
            Height = 610
            Align = alClient
            BevelOuter = bvNone
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 0
            object Panel2: TPanel
              Left = 0
              Top = 0
              Width = 1358
              Height = 49
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 0
            end
            object Panel7: TPanel
              Left = 0
              Top = 0
              Width = 826
              Height = 41
              Align = alTop
              AutoSize = True
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 1
              object ToolBar1: TToolBar
                Left = 0
                Top = 0
                Width = 1142
                Height = 41
                Align = alNone
                ButtonHeight = 35
                ButtonWidth = 55
                Caption = 'ToolBar1'
                EdgeBorders = []
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = #23435#20307
                Font.Style = []
                Images = ImageList
                ParentFont = False
                ShowCaptions = True
                TabOrder = 0
                object TB_Ref_SBOM: TToolButton
                  Left = 0
                  Top = 2
                  AutoSize = True
                  Caption = #21047#26032
                  ImageIndex = 4
                  OnClick = TB_Ref_SBOMClick
                end
                object TB_Del1: TToolButton
                  Left = 35
                  Top = 2
                  AutoSize = True
                  Caption = #21024#38500
                  ImageIndex = 3
                  OnClick = TB_Del1Click
                end
                object ToolButton2: TToolButton
                  Left = 70
                  Top = 2
                  AutoSize = True
                  Caption = #36864#20986'[&E]'
                  ImageIndex = 7
                  OnClick = TB_ExitClick
                end
              end
            end
            object Panel10: TPanel
              Left = 0
              Top = 41
              Width = 826
              Height = 569
              Align = alClient
              TabOrder = 2
              object Panel1: TPanel
                Left = 1
                Top = 521
                Width = 824
                Height = 47
                Align = alBottom
                BevelOuter = bvNone
                ParentColor = True
                TabOrder = 0
                object Bevel1: TBevel
                  Left = 0
                  Top = 5
                  Width = 1105
                  Height = 4
                end
                object SelCancelBtn: TcxButton
                  Left = 127
                  Top = 16
                  Width = 80
                  Height = 25
                  BiDiMode = bdRightToLeftReadingOnly
                  Caption = #21462#28040'[&C]'
                  ParentBiDiMode = False
                  TabOrder = 0
                  Visible = False
                  OnClick = SelCancelBtnClick
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
                object SelBtn: TcxButton
                  Left = 38
                  Top = 16
                  Width = 80
                  Height = 25
                  BiDiMode = bdRightToLeftReadingOnly
                  Caption = #36873#25321'[&S]'
                  ParentBiDiMode = False
                  TabOrder = 1
                  Visible = False
                  OnClick = SelBtnClick
                  Glyph.Data = {
                    96010000424D9601000000000000560000002800000014000000100000000100
                    08000000000040010000000000000000000008000000080000006E747400FFFF
                    FF00C7C7C7002626260011111100000000000000000000000000010101010003
                    0001010101000300010101010101010101010304030101010103040301010101
                    0101010101010003000101010100030001010101010101010101010101010101
                    0101010101010101010101010101000000000000000000020101010101010101
                    0100040404040404040404000101010101010101010403010101010101020304
                    0201010101010101000404010401040104010304000101010101010104040101
                    0101010101010103040101010101010104000401040104010401040004000101
                    0101010304020101010101010101010104040101010101040402030104010401
                    0401040104040001010101010101010101010101010101010104040101010101
                    0101010101010101010101010100040000000101010101010101010101010101
                    0102040404040101010101010101010101010101010102020202}
                  LookAndFeel.Kind = lfUltraFlat
                  LookAndFeel.NativeStyle = False
                  UseSystemPaint = False
                end
              end
              object cxGrid_WBOM: TcxGrid
                Left = 1
                Top = 1
                Width = 824
                Height = 520
                Align = alClient
                PopupMenu = PM
                TabOrder = 1
                OnContextPopup = cxGrid_WBOMContextPopup
                object cxGV_WBOM: TcxGridDBTableView
                  DataController.DataSource = DS_Mdata_WBOM
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <
                    item
                      Format = #23567#35745#65306'0.0000'
                      Kind = skSum
                      FieldName = 'FSumSuttle'
                      Column = FSumSuttle
                    end
                    item
                      Format = #23567#35745#65306'0.0000'
                      FieldName = 'FQry'
                      Column = FQry
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
                  OptionsData.CancelOnExit = False
                  OptionsData.Deleting = False
                  OptionsData.DeletingConfirmation = False
                  OptionsData.Inserting = False
                  OptionsSelection.MultiSelect = True
                  OptionsView.Navigator = True
                  OptionsView.Footer = True
                  OptionsView.GroupByBox = False
                  object Sel: TcxGridDBColumn
                    Caption = #21462#28040
                    PropertiesClassName = 'TcxCheckBoxProperties'
                    Properties.DisplayUnchecked = 'False'
                    Properties.ReadOnly = False
                    Properties.OnChange = SelPropertiesChange
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 33
                    OnHeaderClick = SelHeaderClick
                    DataBinding.FieldName = 'sel'
                  end
                  object FCode: TcxGridDBColumn
                    Caption = #21333#36873
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
                    Width = 29
                    OnHeaderClick = FCodeHeaderClick
                    DataBinding.FieldName = 'FCode'
                  end
                  object th: TcxGridDBColumn
                    Caption = #22270#21495'('#22810#32423#36873')'
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 106
                    OnHeaderClick = thHeaderClick
                    DataBinding.FieldName = 'th'
                  end
                  object mc: TcxGridDBColumn
                    Caption = #21517#31216'('#21462#28040#22810#32423#36873')'
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 107
                    OnHeaderClick = mcHeaderClick
                    DataBinding.FieldName = 'mc'
                  end
                  object gg: TcxGridDBColumn
                    Caption = #35268#26684
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 108
                    DataBinding.FieldName = 'gg'
                  end
                  object FModel: TcxGridDBColumn
                    Caption = #26448#26009#35268#26684
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 96
                    DataBinding.FieldName = 'FModel'
                  end
                  object FSumQry: TcxGridDBColumn
                    Caption = #24635#25968#37327
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.DecimalPlaces = 0
                    Properties.DisplayFormat = '0'
                    Properties.ValidateOnEnter = True
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 41
                    DataBinding.FieldName = 'FSumQry'
                  end
                  object FSuttle: TcxGridDBColumn
                    Caption = #35774#35745#20928#37325
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.DecimalPlaces = 4
                    Properties.DisplayFormat = '0.0000;-0.0000'
                    Properties.ValidateOnEnter = True
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 80
                    DataBinding.FieldName = 'FSuttle'
                  end
                  object ssth: TcxGridDBColumn
                    Caption = #25152#23646#22270#21495
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 80
                    DataBinding.FieldName = 'ssth'
                  end
                  object FQry: TcxGridDBColumn
                    Caption = #25968#37327
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 39
                    DataBinding.FieldName = 'FQry'
                  end
                  object FSumSuttle: TcxGridDBColumn
                    Caption = #20928#37325#21512#35745
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.DecimalPlaces = 4
                    Properties.DisplayFormat = '0.0000;-0.0000'
                    Properties.ValidateOnEnter = True
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 82
                    DataBinding.FieldName = 'FSumSuttle'
                  end
                  object IsSel: TcxGridDBColumn
                    Caption = #20351#29992
                    PropertiesClassName = 'TcxCheckBoxProperties'
                    Properties.DisplayUnchecked = 'False'
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 33
                    DataBinding.FieldName = 'IsSel'
                  end
                  object FK3Number: TcxGridDBColumn
                    Caption = #26448#26009#32534#21495
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 124
                    DataBinding.FieldName = 'FK3Number'
                  end
                  object FName: TcxGridDBColumn
                    Caption = #26448#26009#21517#31216
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 88
                    DataBinding.FieldName = 'FName'
                  end
                  object UnitName: TcxGridDBColumn
                    Caption = #21333#20301
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 29
                    DataBinding.FieldName = 'UnitName'
                  end
                  object FFullNumber: TcxGridDBColumn
                    Caption = #38271#20195#30721
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    SortOrder = soAscending
                    Width = 146
                    DataBinding.FieldName = 'FFullNumber'
                  end
                  object ssFullNumber: TcxGridDBColumn
                    Caption = #25152#23646#38271#20195#30721
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 165
                    DataBinding.FieldName = 'ssFullNumber'
                  end
                  object Remark: TcxGridDBColumn
                    Caption = #22791#27880
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 88
                    DataBinding.FieldName = 'Remark'
                  end
                  object FDesignRemark_2: TcxGridDBColumn
                    Caption = #35774#35745#22791#27880
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 98
                    DataBinding.FieldName = 'FDesignRemark'
                  end
                  object js: TcxGridDBColumn
                    Caption = 'is'
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 20
                    DataBinding.FieldName = 'js'
                  end
                  object FWorkBOMID: TcxGridDBColumn
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    DataBinding.FieldName = 'FWorkBOMID'
                  end
                  object FPartsNumber_2: TcxGridDBColumn
                    Caption = #37096#20214#21495
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 41
                    DataBinding.FieldName = 'FPartsNumber'
                  end
                  object FWorkParts_2: TcxGridDBColumn
                    Caption = #20837#24211#31867#21035
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 83
                    DataBinding.FieldName = 'FWorkParts'
                  end
                  object FWorkPartsCode: TcxGridDBColumn
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 86
                    DataBinding.FieldName = 'FWorkPartsCode'
                  end
                end
                object cxGL_WBOM: TcxGridLevel
                  GridView = cxGV_WBOM
                end
              end
            end
          end
          object RzSizePanel4: TRzSizePanel
            Left = 0
            Top = 0
            Width = 225
            Height = 610
            Color = 14935011
            HotSpotVisible = True
            SizeBarWidth = 7
            TabOrder = 1
            VisualStyle = vsGradient
            object MyTreeView_WBOM: TTreeView
              Left = 0
              Top = 0
              Width = 217
              Height = 610
              Align = alClient
              AutoExpand = True
              Ctl3D = False
              Indent = 19
              ParentCtl3D = False
              TabOrder = 0
              OnChange = MyTreeView_WBOMChange
              OnExpanding = MyTreeView_WBOMExpanding
            end
          end
        end
        object TS_StockIn: TRzTabSheet
          Color = 14935011
          Caption = #20837#24211#28165#21333
          object Panel3: TPanel
            Left = 258
            Top = 0
            Width = 793
            Height = 610
            Align = alClient
            BevelOuter = bvNone
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 0
            object Panel4: TPanel
              Left = 0
              Top = 0
              Width = 1358
              Height = 49
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 0
            end
            object Panel5: TPanel
              Left = 0
              Top = 0
              Width = 793
              Height = 41
              Align = alTop
              AutoSize = True
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 1
              object ToolBar4: TToolBar
                Left = 0
                Top = 0
                Width = 793
                Height = 41
                Align = alClient
                ButtonHeight = 35
                ButtonWidth = 79
                Caption = 'ToolBar4'
                EdgeBorders = []
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = #23435#20307
                Font.Style = []
                Images = ImageList
                ParentFont = False
                ShowCaptions = True
                TabOrder = 0
                object TB_Ref_Stock: TToolButton
                  Left = 0
                  Top = 2
                  AutoSize = True
                  Caption = #21047#26032
                  ImageIndex = 4
                  OnClick = TB_Ref_StockClick
                end
                object ToolButton7: TToolButton
                  Left = 35
                  Top = 2
                  AutoSize = True
                  Caption = #35760#24405#21047#26032
                  ImageIndex = 4
                  OnClick = ToolButton7Click
                end
                object TB_App: TToolButton
                  Left = 94
                  Top = 2
                  AutoSize = True
                  Caption = #26032#22686
                  ImageIndex = 0
                  OnClick = TB_AppClick
                end
                object TB_Edit: TToolButton
                  Left = 129
                  Top = 2
                  AutoSize = True
                  Caption = #20462#25913
                  ImageIndex = 1
                  Visible = False
                  OnClick = TB_EditClick
                end
                object TB_Del: TToolButton
                  Left = 164
                  Top = 2
                  AutoSize = True
                  Caption = #21024#38500
                  ImageIndex = 3
                  Visible = False
                  OnClick = TB_DelClick
                end
                object TB_Submit: TToolButton
                  Left = 199
                  Top = 2
                  AutoSize = True
                  Caption = #25552#20132
                  ImageIndex = 12
                  Visible = False
                  OnClick = TB_SubmitClick
                end
                object TB_Audit: TToolButton
                  Left = 234
                  Top = 2
                  AutoSize = True
                  Caption = #23457#26680
                  ImageIndex = 14
                  Visible = False
                  OnClick = TB_AuditClick
                end
                object TB_Stock: TToolButton
                  Left = 269
                  Top = 2
                  AutoSize = True
                  Caption = #20837#24211#28165#21333
                  ImageIndex = 6
                  OnClick = TB_StockClick
                end
                object TB_Print_ML: TToolButton
                  Left = 328
                  Top = 2
                  AutoSize = True
                  Caption = #30446#24405
                  ImageIndex = 6
                  OnClick = TB_Print_MLClick
                end
                object TB_Execl: TToolButton
                  Left = 363
                  Top = 2
                  AllowAllUp = True
                  AutoSize = True
                  Caption = #23548#20986
                  ImageIndex = 6
                  OnClick = TB_ExeclClick
                end
                object TB_Prin: TToolButton
                  Left = 398
                  Top = 2
                  AutoSize = True
                  Caption = #25171#21360
                  ImageIndex = 5
                  OnClick = TB_PrinClick
                end
                object TB_SUM: TToolButton
                  Left = 433
                  Top = 2
                  AutoSize = True
                  Caption = #37325#37327#35745#31639
                  ImageIndex = 32
                  OnClick = TB_SUMClick
                end
                object TB_DELError: TToolButton
                  Left = 492
                  Top = 2
                  Caption = #21024#38500#38169#35823#21333#25454
                  ImageIndex = 3
                  OnClick = TB_DELErrorClick
                end
                object ToolButton19: TToolButton
                  Left = 571
                  Top = 2
                  AutoSize = True
                  Caption = #36864#20986'[&E]'
                  ImageIndex = 7
                  OnClick = TB_ExitClick
                end
                object TB_Print_First: TToolButton
                  Left = 624
                  Top = 2
                  AutoSize = True
                  Caption = #23553#38754
                  ImageIndex = 5
                  Visible = False
                  OnClick = TB_Print_FirstClick
                end
              end
            end
            object RzPanel1: TRzPanel
              Left = 0
              Top = 41
              Width = 793
              Height = 569
              Align = alClient
              TabOrder = 2
              object Panel_button: TPanel
                Left = 2
                Top = 522
                Width = 789
                Height = 45
                Align = alBottom
                BevelOuter = bvNone
                ParentColor = True
                TabOrder = 0
                object Bevel_button: TBevel
                  Left = 0
                  Top = 5
                  Width = 1105
                  Height = 4
                end
                object Label2: TLabel
                  Left = 356
                  Top = 18
                  Width = 60
                  Height = 18
                  AutoSize = False
                  Caption = #22797#21046#22270#21495#65306
                  Transparent = True
                end
                object OKBtn: TcxButton
                  Left = 72
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
                  Left = 168
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
                object E_FItemIDCopy: TcxTextEdit
                  Left = 492
                  Top = 15
                  Width = 35
                  Height = 22
                  AutoSize = False
                  Enabled = False
                  Style.BorderColor = 8623776
                  Style.BorderStyle = ebsSingle
                  Style.Color = 15658734
                  TabOrder = 2
                  ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899#36755#20837#27861' 3.0 '#29256
                  OnClick = CancelBtnClick
                end
                object E_FItemNoCopy: TcxTextEdit
                  Left = 532
                  Top = 15
                  Width = 35
                  Height = 22
                  AutoSize = False
                  Enabled = False
                  Style.BorderColor = 8623776
                  Style.BorderStyle = ebsSingle
                  Style.Color = 15658734
                  TabOrder = 3
                  ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899#36755#20837#27861' 3.0 '#29256
                  OnClick = CancelBtnClick
                end
                object E_FItemNumber_Copy: TcxButtonEdit
                  Left = 412
                  Top = 15
                  Width = 75
                  Height = 21
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  Properties.OnButtonClick = E_FItemNumber_CopyPropertiesButtonClick
                  Style.BorderColor = 8623776
                  Style.BorderStyle = ebsSingle
                  Style.Color = 15658734
                  Style.ButtonTransparency = ebtHideUnselected
                  TabOrder = 4
                  Visible = False
                  ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WIN2000'
                end
              end
              object RzSizePanel1: TRzSizePanel
                Left = 2
                Top = 2
                Width = 789
                Height = 216
                Align = alTop
                HotSpotVisible = True
                Side = sdBottom
                ParentShowHint = False
                ShowHint = False
                SizeBarWidth = 7
                TabOrder = 1
                UseDockManager = False
                object cxGrid_SItem: TcxGrid
                  Left = 0
                  Top = 0
                  Width = 789
                  Height = 208
                  Align = alClient
                  PopupMenu = PM
                  TabOrder = 0
                  OnContextPopup = cxGrid_SItemContextPopup
                  object cxGV_SItem: TcxGridDBTableView
                    DataController.DataSource = DS_Mdata_M3
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <
                      item
                        Format = ',0.0000'
                        Kind = skSum
                        FieldName = ' FStockPartsWet'
                        Column = FStockPartsWet_M3
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
                    OnFocusedRecordChanged = cxGV_SItemFocusedRecordChanged
                    OptionsData.CancelOnExit = False
                    OptionsData.DeletingConfirmation = False
                    OptionsData.Editing = False
                    OptionsSelection.MultiSelect = True
                    OptionsView.Navigator = True
                    OptionsView.Footer = True
                    OptionsView.GroupByBox = False
                    object FBranchItemNumber_M3: TcxGridDBColumn
                      Caption = #20998#22270#21495
                      PropertiesClassName = 'TcxButtonEditProperties'
                      Properties.Buttons = <
                        item
                          Default = True
                          Kind = bkEllipsis
                        end>
                      Properties.OnButtonClick = FBranchItemNumber_M3PropertiesButtonClick
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Filtering = False
                      Width = 64
                      DataBinding.FieldName = 'FBranchItemNumber'
                    end
                    object FPartsCode_M3: TcxGridDBColumn
                      Caption = #37096#20214#21495
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      SortOrder = soAscending
                      Width = 59
                      DataBinding.FieldName = 'FPartsCode'
                    end
                    object FPlanParts_M3: TcxGridDBColumn
                      Caption = #25490#20135#37096#20214
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 92
                      DataBinding.FieldName = 'FPlanParts'
                    end
                    object FPartsName_M3: TcxGridDBColumn
                      Caption = #37096#20214#21517#31216
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 107
                      DataBinding.FieldName = 'FPartsName'
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
                      Width = 96
                      DataBinding.FieldName = 'FWorkParts'
                    end
                    object FStockPartsWet_M3: TcxGridDBColumn
                      Caption = #37325#37327
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DecimalPlaces = 4
                      Properties.DisplayFormat = ',0.0000;-,0.0000'
                      Properties.ValidateOnEnter = True
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 82
                      DataBinding.FieldName = 'FStockPartsWet'
                    end
                    object FStockStatusNotes_M: TcxGridDBColumn
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
                    object FStockWriteDate_M3: TcxGridDBColumn
                      Caption = #22635#21333#26085#26399
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      DataBinding.FieldName = 'FStockWriteDate'
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
                    object FStockAudit_M3: TcxGridDBColumn
                      Caption = #23457'    '#26680
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 41
                      DataBinding.FieldName = 'FStockAudit'
                    end
                    object FStockAuditDate_M3: TcxGridDBColumn
                      Caption = #23457#26680#26085#26399
                      PropertiesClassName = 'TcxDateEditProperties'
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      DataBinding.FieldName = 'FStockAuditDate'
                    end
                    object FFullNumber_M3: TcxGridDBColumn
                      Caption = #20837#24211#31867#21035#20195#30721
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 104
                      DataBinding.FieldName = 'FFullNumber'
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
                      Caption = #20998#26723#26696#21495
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 63
                      DataBinding.FieldName = 'FBranchFileNo'
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
                    object FItemModel_M3: TcxGridDBColumn
                      Caption = #20135#21697#22411#21495
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderAlignmentVert = vaCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 80
                      DataBinding.FieldName = 'FItemModel'
                    end
                    object FFactureName_M3: TcxGridDBColumn
                      Caption = #22806#21327#21046#20316#21333#20301
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 77
                      DataBinding.FieldName = 'FFactureName'
                    end
                    object FStockNum_M3: TcxGridDBColumn
                      Caption = #28165#21333#32534#30446#21495
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 79
                      DataBinding.FieldName = 'FStockNum'
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
                    object FItemId_M3: TcxGridDBColumn
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentVert = vaCenter
                      Options.Editing = False
                      Options.Filtering = False
                      DataBinding.FieldName = 'FItemId'
                    end
                    object WorkFFullNumber: TcxGridDBColumn
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 90
                      DataBinding.FieldName = 'WorkFFullNumber'
                    end
                    object FFactureID_M3: TcxGridDBColumn
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      DataBinding.FieldName = 'FFactureID'
                    end
                  end
                  object cxGL_SItem: TcxGridLevel
                    GridView = cxGV_SItem
                  end
                end
              end
              object cxGrid_SList: TcxGrid
                Left = 2
                Top = 218
                Width = 789
                Height = 304
                Align = alClient
                PopupMenu = PM
                TabOrder = 2
                OnContextPopup = cxGrid_SListContextPopup
                object cxGV_SList: TcxGridDBTableView
                  DataController.DataSource = DS_Mdata3
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <
                    item
                      Format = '0.0000'
                      Kind = skSum
                      FieldName = 'FSumSuttle'
                      Column = FSumSuttle_3
                    end
                    item
                      Format = '0'
                      Kind = skSum
                      FieldName = 'FPackQry'
                      Column = FPackQry_3
                    end
                    item
                      Format = '0'
                      Kind = skSum
                      FieldName = 'FSumQry'
                      Column = FSumQry_3
                    end>
                  DataController.Summary.SummaryGroups = <>
                  NavigatorButtons.ConfirmDelete = False
                  NavigatorButtons.PriorPage.Visible = False
                  NavigatorButtons.NextPage.Visible = False
                  NavigatorButtons.Insert.Visible = False
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
                  OptionsData.Inserting = False
                  OptionsSelection.MultiSelect = True
                  OptionsView.Navigator = True
                  OptionsView.Footer = True
                  OptionsView.GroupByBox = False
                  object IsEdit: TcxGridDBColumn
                    Caption = #21462#28040
                    PropertiesClassName = 'TcxCheckBoxProperties'
                    Properties.DisplayUnchecked = 'False'
                    Properties.ReadOnly = False
                    Visible = False
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 33
                    OnHeaderClick = IsEditHeaderClick
                    DataBinding.FieldName = 'IsEdit'
                  end
                  object FCode_3: TcxGridDBColumn
                    Caption = #21333#36873
                    Visible = False
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 32
                    OnHeaderClick = FCode_3HeaderClick
                    DataBinding.FieldName = 'FCode'
                  end
                  object xh1: TcxGridDBColumn
                    Caption = '1'
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.DecimalPlaces = 1
                    Properties.DisplayFormat = '0.;'
                    Properties.ValidateOnEnter = True
                    Visible = False
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 20
                    OnHeaderClick = xh1HeaderClick
                    DataBinding.FieldName = 'xh1'
                  end
                  object xh2: TcxGridDBColumn
                    Caption = #9332
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.DecimalPlaces = 1
                    Properties.DisplayFormat = '0.;'
                    Properties.ValidateOnEnter = True
                    Visible = False
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 20
                    OnHeaderClick = xh2HeaderClick
                    DataBinding.FieldName = 'xh2'
                  end
                  object xh3: TcxGridDBColumn
                    Caption = #9312
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.DecimalPlaces = 1
                    Properties.DisplayFormat = '0.;'
                    Properties.ValidateOnEnter = True
                    Visible = False
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 20
                    OnHeaderClick = xh3HeaderClick
                    DataBinding.FieldName = 'xh3'
                  end
                  object Num_3: TcxGridDBColumn
                    Caption = #24207#21495
                    PropertiesClassName = 'TcxTextEditProperties'
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Filtering = False
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 38
                    OnHeaderClick = Num_3HeaderClick
                    DataBinding.FieldName = 'Num'
                  end
                  object th_3: TcxGridDBColumn
                    Caption = #22270#21495
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
                    Options.Filtering = False
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 116
                    DataBinding.FieldName = 'th'
                  end
                  object abc_3: TcxGridDBColumn
                    PropertiesClassName = 'TcxComboBoxProperties'
                    Properties.Items.Strings = (
                      '(A)'
                      '(B)'
                      '(C)'
                      '(D)'
                      '(E)'
                      '(F)'
                      '(G)'
                      '(H)'
                      ''
                      '')
                    Properties.OnChange = abc_3PropertiesChange
                    Visible = False
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Filtering = False
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 23
                    DataBinding.FieldName = 'abc'
                  end
                  object mc_3: TcxGridDBColumn
                    Caption = #21517#31216
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
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 113
                    DataBinding.FieldName = 'mc'
                  end
                  object SelRemark_3: TcxGridDBColumn
                    Caption = #20837#24211#22791#27880
                    PropertiesClassName = 'TcxComboBoxProperties'
                    Properties.Items.Strings = (
                      '('#25353#20197#19979#20837#24211')')
                    Properties.OnCloseUp = SelRemark_3PropertiesCloseUp
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    MinWidth = 50
                    Options.Filtering = False
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 85
                    DataBinding.FieldName = 'SelRemark'
                  end
                  object gg_3: TcxGridDBColumn
                    Caption = #35268#26684
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
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 125
                    DataBinding.FieldName = 'gg'
                  end
                  object mcgg_3: TcxGridDBColumn
                    Caption = #21517#31216#21450#35268#26684
                    Visible = False
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 176
                    DataBinding.FieldName = 'mcgg'
                  end
                  object Sel_3: TcxGridDBColumn
                    Caption = #8730
                    PropertiesClassName = 'TcxButtonEditProperties'
                    Properties.Buttons = <
                      item
                        Default = True
                        Kind = bkEllipsis
                      end>
                    Properties.OnButtonClick = Sel_3PropertiesButtonClick
                    Visible = False
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 20
                  end
                  object dw_3: TcxGridDBColumn
                    Caption = #21333#20301
                    Visible = False
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 29
                    DataBinding.FieldName = 'dw'
                  end
                  object FSumQry_3: TcxGridDBColumn
                    Caption = #35745#21010#25968#37327
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Filtering = False
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 53
                    DataBinding.FieldName = 'FSumQry'
                  end
                  object FStockListRemark_3: TcxGridDBColumn
                    Caption = #22791#27880
                    PropertiesClassName = 'TcxButtonEditProperties'
                    Properties.Buttons = <
                      item
                        Default = True
                        Kind = bkEllipsis
                      end>
                    Properties.OnButtonClick = FStockListRemark_3PropertiesButtonClick
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    MinWidth = 50
                    Options.Filtering = False
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 119
                    DataBinding.FieldName = 'FStockListRemark'
                  end
                  object FSuttle_3: TcxGridDBColumn
                    Caption = #21333#37325'(kg)'
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Filtering = False
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 86
                    DataBinding.FieldName = 'FSuttle'
                  end
                  object FSumSuttle_3: TcxGridDBColumn
                    Caption = #24635#37325'(kg)'
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Filtering = False
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 82
                    DataBinding.FieldName = 'FSumSuttle'
                  end
                  object FCheckYesQry_3: TcxGridDBColumn
                    Caption = #26816#39564#21512#26684#25968
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 65
                    DataBinding.FieldName = 'FCheckYesQry'
                  end
                  object FPackQry_3: TcxGridDBColumn
                    Caption = #21487#21253#35013#25968
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 53
                    DataBinding.FieldName = 'FPackQry'
                  end
                  object FFullNumber_3: TcxGridDBColumn
                    Caption = #38271#20195#30721
                    PropertiesClassName = 'TcxButtonEditProperties'
                    Properties.Buttons = <
                      item
                        Default = True
                        Kind = bkEllipsis
                      end>
                    Properties.MaxLength = 50
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    MinWidth = 50
                    Options.Filtering = False
                    Options.Moving = False
                    Width = 146
                    DataBinding.FieldName = 'FFullNumber'
                  end
                  object ssFullNumber_3: TcxGridDBColumn
                    Caption = #25152#23646#32534#30721
                    PropertiesClassName = 'TcxButtonEditProperties'
                    Properties.Buttons = <
                      item
                        Default = True
                        Kind = bkEllipsis
                      end>
                    Properties.MaxLength = 50
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Filtering = False
                    Options.Moving = False
                    Options.Sorting = False
                    Width = 117
                    DataBinding.FieldName = 'ssFullNumber'
                  end
                  object FBOMFullNumber_3: TcxGridDBColumn
                    Caption = #29983#20135#31867#21035#20195#30721
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Filtering = False
                    SortOrder = soAscending
                    Width = 102
                    DataBinding.FieldName = 'FBOMFullNumber'
                  end
                  object FK3Number_3: TcxGridDBColumn
                    Caption = #26448#26009#32534#21495
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    MinWidth = 50
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 124
                    DataBinding.FieldName = 'FK3Number'
                  end
                  object FName_3: TcxGridDBColumn
                    Caption = #26448#26009#21517#31216
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 88
                    DataBinding.FieldName = 'FName'
                  end
                  object FModel_3: TcxGridDBColumn
                    Caption = #26448#26009#35268#26684
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 110
                    DataBinding.FieldName = 'FModel'
                  end
                  object UnitName_3: TcxGridDBColumn
                    Caption = #21333#20301
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 29
                    DataBinding.FieldName = 'UnitName'
                  end
                  object FStockItemID_3: TcxGridDBColumn
                    Caption = #20027#34920'ID'
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 79
                    DataBinding.FieldName = 'FStockItemID'
                  end
                  object FStockListID_3: TcxGridDBColumn
                    Caption = #38468#34920'ID'
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 75
                    DataBinding.FieldName = 'FStockListID'
                  end
                  object FPartsNumber_3: TcxGridDBColumn
                    Caption = #31867#21035#21495
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 62
                    DataBinding.FieldName = 'FPartsNumber'
                  end
                  object FPartsCode_3: TcxGridDBColumn
                    Caption = #37096#20214#21495
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    DataBinding.FieldName = 'FPartsCode'
                  end
                  object FWorkParts_3: TcxGridDBColumn
                    Caption = #20837#24211#31867#21035
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 116
                    DataBinding.FieldName = 'FWorkParts'
                  end
                  object FItemNumber_3: TcxGridDBColumn
                    Caption = #22270#21495
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 43
                    DataBinding.FieldName = 'FItemNumber'
                  end
                  object FBranchFileNo_3: TcxGridDBColumn
                    Caption = #26723#26696#21495
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 71
                    DataBinding.FieldName = 'FBranchFileNo'
                  end
                  object FClientFullName_3: TcxGridDBColumn
                    Caption = #39033#30446#21517#31216
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 134
                    DataBinding.FieldName = 'FClientFullName'
                  end
                  object FBranchItemNumber_3: TcxGridDBColumn
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 102
                    DataBinding.FieldName = 'FBranchItemNumber'
                  end
                end
                object cxGL_SList: TcxGridLevel
                  GridView = cxGV_SList
                end
              end
            end
          end
          object RzSizePanel3: TRzSizePanel
            Left = 0
            Top = 0
            Width = 258
            Height = 610
            Color = 14935011
            HotSpotVisible = True
            SizeBarWidth = 7
            TabOrder = 1
            VisualStyle = vsGradient
            object MyTreeView_SList: TTreeView
              Left = 0
              Top = 0
              Width = 250
              Height = 545
              Align = alClient
              AutoExpand = True
              Ctl3D = False
              Indent = 19
              ParentCtl3D = False
              TabOrder = 0
              OnChange = MyTreeView_SListChange
              OnExpanding = MyTreeView_SListExpanding
            end
            object Panel13: TPanel
              Left = 0
              Top = 545
              Width = 250
              Height = 65
              Align = alBottom
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 1
              object Label3: TLabel
                Left = 2
                Top = 7
                Width = 144
                Height = 13
                Caption = #36755#20837#19968#32423#20998#22270#21495#27169#31946#26597#25214#65306
              end
              object E_Locate_Stock: TcxButtonEdit
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
                Properties.OnButtonClick = E_Locate_StockPropertiesButtonClick
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
    end
  end
  object ImageList: TImageList
    Left = 27
    Top = 262
    Bitmap = {
      494C010121002200040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000009000000001002000000000000090
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000008000008
      1000000810000000080000001000000000000808100000000000080000000800
      0000000800000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000080063ADB50018949C0018A5
      A50021A5A500319C9C00D6F7FF009C9CA50084848C0094949400FFFFFF009C8C
      8C008C8C84008C84840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000100094F7FF0039DEE70029EF
      F70031EFEF0018A5A500DEFFFF00DEDEDE00E7EFEF00848C8C00FFFFFF00EFE7
      DE00F7EFE700A5A59C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000010009CEFFF0042EFFF0010E7
      F70021E7EF0018A5A500CEF7F700EFE7E700EFEFE700848C8400F7FFF700E7EF
      E700DEE7DE007B847B0000080800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000100094E7FF0029DEF70010EF
      FF0018EFF700089CA500D6FFFF00EFEFE700EFEFE7008C8C8C00F7FFFF00DEE7
      E700E7EFEF008C948C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000100094EFFF0031EFFF0008EF
      FF0010E7FF00089CAD00CEFFFF00E7E7E700F7F7F7007B848400E7F7FF00D6EF
      EF00DEE7EF008484840008080000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000008009CF7FF0029E7F70000E7
      F70018EFFF00009CAD00CEFFFF00E7EFEF00D6DEDE0084949400EFFFFF00CEDE
      E700E7EFEF008C8C8C0008000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000008009CFFFF0031EFF70018F7
      FF0021EFF700009C9C00CEFFFF00DEE7E700EFEFEF00848C8C00F7FFFF00DEE7
      EF00E7E7E700948C8C0008000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000080800ADF7F70052E7DE0042EF
      E7005AF7E700299C9400D6FFF700F7F7EF00E7E7DE0094948400FFFFEF00F7EF
      E700FFF7E70094847B0008000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000080000D6F7E700BDFFEF00ADFF
      DE00B5F7D60084AD8C00FFFFE700FFFFE700FFFFEF00AD947B00FFFFDE00FFFF
      DE00FFFFDE00AD9C7B0008000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001008000063634A00424A29005A63
      3100636329006B5A2100E7CE9C006B4A2100735229007B522100FFD69C008C63
      21007B5A21006B4A290018100000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000018080000D6BD9C00B58C6300BD84
      5200C68C5200945A1800F7C69400BD945A00BD8C5A0084521800F7BD7B00C68C
      4A00BD8C52007B5A290021080000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000018080000DEC6A500B5845A00C684
      5A00CE84520094521800FFCE9400AD845200AD8452008C5A2900FFD69400BD8C
      4A00B58452007B52290010000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000021180000BDAD9400E7CEB500D6BD
      9C00EFCEAD00E7C69C00DEC69C00DECE9C00DEC6A500DEC69C00E7C69C00E7C6
      9C00EFCEA500DEC6AD0008000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000800000018180000080000000800
      0000180800001008000018080000180800001808000021100000210800002910
      0000210800001000000008080000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5948400A59484009C8C
      7B00A59C8C009C8C8400A59484009C8C7B00A58C7B009C8C7B00948C7B009494
      7B00949484009494840094847B00FFFFF7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000800000010080000080000000800
      0000080000000800000008000000100800001000000010080000100800000000
      00000808000000000000A59C9400FFFFFF000000000000000000000000000810
      1000000000000008080000000000FFF7F7000000000000101000000008000008
      1000637B8400F7FFFF00000000000000000000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000808000000000000000808000000
      10000000420000004200000018000000000000000000FFF7FF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFFFFF0000000000FFFFFF0000080000000808000000
      0000000800000000000000000000FFFFFF0000000000A5A5AD009C9C9C00ADAD
      AD00A5A59C00B5ADAD00B5ADAD00A5A59C00ADADAD00A5A5A500ADADAD00A59C
      9C00B5ADA500080000008C8C8400FFFFF700FFFFFF0000000000000000000000
      0800A5F7FF009CEFF7000008100008000800100008000000080063E7EF005AE7
      F700000818006B848400000000000000000000000000FFFFFF00FFFFFF000000
      0800FFFFF70000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      180031318C0039318C000000100000000000FFFFF700FFFFFF00FFFFFF00F7FF
      F700F7FFFF00F7FFF700FFFFFF00000000000000000000000000EFF7FF004252
      5A00EFFFFF0000000000FFFFFF00FFFFFF0000001000F7F7FF00EFEFF700DEDE
      E700EFEFEF00EFE7E700DEDEDE00E7E7E700D6E7E700E7E7EF00E7E7EF00E7E7
      E700B5ADAD00080000008C8C8400FFFFFF0000000000FFFFFF00000000000000
      08009CFFFF0063D6E700000008006B7B8C007B8494000008180039EFF70029EF
      F700218C9400000810007B84840000000000FFFFEF0000000000FFFFFF000000
      00000000000000000000FFFFFF00FFFFFF00FFF7FF00FFF7FF00F7FFFF000000
      210031319400313194000000180000000000FFFFF700FFFFFF00000000000008
      000000080000000800000000000000000000FFFFFF0000000000D6F7FF005A7B
      8400CEEFEF0000080800F7FFFF00FFFFFF0000000800EFEFF7006B737300E7E7
      EF00635A5A006B6363006B6B6B00636B6B005A6363005A636300EFEFEF00635A
      6300ADA5A50008000000848C8400F7FFF700FFFFFF00FFFFFF00000000000010
      10008CFFFF005AE7EF000008180000081800000018000008210021E7F70021F7
      F70008A59C0039949400000000000000000000000000FFFFFF00FFFFFF000000
      0000848C7B0084847B00847B84008473840094848C0084737B008C8C8C000000
      210000005A00000052000000210000000000FFFFFF00FFF7F70008000000FFFF
      F70063635200FFFFF7001000000000000000FFFFFF0000080800BDEFEF00427B
      7B00B5EFE70000101000F7FFFF00F7FFFF0000000000FFFFFF00E7E7E700DEDE
      DE00FFF7FF00EFE7E700E7E7DE00E7E7E700EFF7F700737B7B00000000000000
      0000080008008C848400848C8C00FFFFFF000000000000000000000000000000
      00009CFFFF0063E7E7006BDEEF0073DEEF007BDEEF0073EFFF0031DEE70031E7
      EF0010ADA500319C94000000000000000000FFFFFF00FFFFFF00F7F7FF000008
      1000EFF7F700FFFFFF00FFFFFF00FFF7FF00FFF7FF00FFFFFF00FFFFFF000000
      21002129BD002121BD000000290000000000FFFFFF00FFFFFF00000000009C94
      8C0039292100B5A59C002108080000000000080808004A636300DEFFFF004A84
      8400CEFFFF004263630000000000FFFFFF0000000000FFFFFF006B6363006B63
      6300F7EFEF005A5A5A0073736B00E7E7DE00000000008C848400F7EFF700FFFF
      FF00EFF7F7007373730008100800FFFFFF00FFFFF70000000000000000000008
      080084CED60084DEE7008CDEDE001873730018737300298C940031A5AD00299C
      AD00188C84004A9C9C000008080000000000FFFFFF00FFFFFF00FFFFFF000000
      0800FFFFFF00F7F7F700FFFFFF00FFF7FF00FFF7FF00FFFFFF00FFFFFF000000
      21000829AD000821A5000000210000000000FFFFFF00FFFFFF0000000000ADA5
      9C0052393100AD8C8C00100000004A394200F7F7FF0073848400DEEFEF00D6EF
      EF00DEF7F7006B7B7B00000000000800000008000000FFFFFF00F7EFEF00F7EF
      E700E7E7DE00EFEFE700E7EFDE007B847B00847B7B00FFF7F700FFFFFF00F7F7
      F700F7F7FF00FFFFFF007373730084847B00FFFFF700737B73007B948C000008
      00000008080000080800001008000008000063ADA500C6FFFF00B5F7FF00B5F7
      FF005AA5A5004A8484000000000000000000FFFFFF00FFFFFF00FFFFFF000808
      10005A636B00737B7B0084847B0084847B0084847B0084848400848484000000
      100000003100000029000000100000000000FFFFF7000000000010080000A594
      73005A421800B59C73002108000042312900A59C9C0039313100A59C9C009C94
      94009C9C940039312900A59C9C000800000000000800FFF7FF006B6363006B63
      6300E7E7E700636B6300525A5A0000000000FFFFFF00FFFFFF00FFF7F700FFFF
      FF00FFFFFF00EFF7F700FFFFFF0000000000848C7B0000080000000800000018
      080029AD9C0021B5A500087B630018735A00000800007B948C005A7B7B006384
      8400638C8C006B8C8C000000000000000000FFFFFF0084848C00000000000000
      000000000000848C8C009494940000000000F7FFF700FFFFFF00FFFFFF000000
      100084D6E70084DEE700000800000000000008080000FFFFDE0052420000BDAD
      5200CEBD5200C6B552005242000094845200B59C8C0042312100AD948C00BD9C
      9400B5948C005A392900AD948C001000000000000800FFFFFF00FFFFFF00FFFF
      F700FFFFFF00FFFFFF00F7FFFF0000000000FFFFFF00F7F7F700FFF7EF001008
      0000F7F7E700FFFFF700FFF7F7000800080000000000BDDECE006BAD9C004AB5
      9C0018AD940029BDA500087B5A00317B6300001000009C9C9400F7FFFF00737B
      8400EFFFFF006B7B7B0000000000000000008484840000000000FFFFFF00F7FF
      F700F7FFF700000808007B7B7B00949C9400F7FFF700F7F7F700FFFFFF000000
      100084D6E70084DEE700000000000000000018100000DED67B00947B0000F7E7
      5200E7DE3900E7E742008C7B00008C7B2100B5A57300AD9C8C009C949400948C
      9400A58C9400AD949400AD948C00100000000000080000000800000000000808
      000000000000000000000000080000000800FFFFFF00FFFFF700FFFFE7009C8C
      5A00A58C6300FFFFE700FFF7EF000800080000000000B5DED6005AAD9C0042AD
      94004AB5A50042AD9C0021735A004A7363000000000000000000000808000000
      00000000000000000000000808000000000000000000FFFFFF0000000000A5AD
      A50000000000F7F7F70000000000636363007B848400737B7B008C848C000000
      10000000290000002900000010000000000021210000D6CE4A00A5940000FFEF
      2900EFF71800F7F71800A5940000E7CE4A004A4200000008000094C6DE007BB5
      DE00A5BDE7000000210000000000FFFFFF00F7FFFF00FFFFFF006B736B00FFFF
      FF00FFFFFF00FFFFFF00F7F7FF007B7B94007B84840000000000FFFFDE00AD94
      5A00B5946300947B5200FFFFF700847B8400F7FFFF00000800009CDED6000010
      0800000808000010100039635A000008000084948400F7FFF700000000000000
      000000000000FFFFFF00F7FFFF000000000000000000FFFFFF00FFFFF7000000
      0000ADADAD00FFFFFF0000000000949C9C00EFF7F700FFFFFF00EFF7F7000000
      21002129AD001821AD00000039000000000018180000E7E77300D6CE4A00D6DE
      4200CEEF3900CEE73900EFE74A00E7D663005A522100000000006BB5D60073BD
      F7007BA5DE0000002100F7FFFF00F7FFFF00FFFFFF00FFFFFF0063635A006B6B
      63005A525A006B636B00FFFFFF00F7F7FF000000000084846300FFFFCE00D6BD
      8400B5946300AD8C6B0010000000FFFFFF0000000000000000000000000084AD
      B5005A8C9400527B8400000808007B8C8400FFFFF7000000000000000000FFFF
      FF000000000000000000000000000000000008000800FFFFFF00F7F7F7000000
      0000FFFFFF00FFFFFF000000000094949400FFFFFF00FFFFFF00FFFFFF000000
      18003929AD003121AD000000210000000000FFFFEF000808000000080000426B
      5A00397B6300316B52000010000010080000FFFFF7000810180084B5CE0073BD
      D6009CC6EF0000002100EFFFFF00F7FFFF00FFFFFF00F7F7F700FFFFFF00FFFF
      FF00FFFFFF00FFF7FF00F7FFFF00F7FFFF00FFFFFF0084846B00211000002910
      000021080000A58C7300FFFFFF00FFFFFF0000000000FFFFFF00000810008CA5
      B5008CA5B50073849C00000000007B847B0000000000FFFFF70000000000FFFF
      FF000000000000000000FFFFF70000000000847B840000000000FFFFFF007373
      7300FFFFFF00000000007B7B7B00000000000800080000000000000000000000
      080000002100000029000000080000000000FFFFFF00EFF7FF0000001800316B
      8C0018638C002973940000000800FFFFFF000000000000000000000008000000
      100000001800EFFFFF00EFFFFF00F7FFFF006B6B73006B636B00635A5A00736B
      630063635A00636B5A00F7FFFF00F7FFFF00FFFFFF00FFFFFF00FFFFF700FFFF
      FF00FFFFF700FFFFF700FFFFFF00F7FFFF0000000000EFF7F7000008100094AD
      B5008494AD007384940000000800000000000000000000000000FFF7FF00FFFF
      FF0000000000000000000000000000000000FFFFFF0084848400000000000000
      000000000000847B7300FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FFFF00F7FF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00000008003963
      7300316B8400295A730000000800F7FFFF0000000000FFFFFF00FFFFFF00F7FF
      FF00F7FFFF00FFFFFF00FFFFFF00FFFFFF0063636B00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700F7FFF700EFFFF700EFFFFF00F7FFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7FFF700F7FFFF00F7FFFF00F7FFFF00E7FFFF000000
      08000000100000001000FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00F7FFFF00EFFFFF000008
      10000000100000001800E7FFFF00F7FFFF00FFFFFF0000000000FFFFF700FFFF
      F700FFFFFF00FFFFFF00FFFFFF00FFFFF700000000004A424200424242004242
      420031313100080808000000000010101000636363009CA5A500A5ADAD00B5B5
      BD00B5BDBD00BDC6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000073737300E7DEDE00E7E7E700D6D6
      D600D6D6D600C6C6C600C6C6C60084848C00424A4A005A5A5A00A5ADAD00A5AD
      AD00ADB5B500BDC6C60000000000000000000000000000000000000000000000
      00000000000000000000F7FFFF00F7FFFF00F7FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00000000000808080000000000000000000000000000000000000000000008
      0800000008000000080000001000000000000000000000000000000808000000
      00007B848C008C949C008C8C9400000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF0073737300E7E7E700EFEFEF00EFEF
      EF00E7E7E700D6D6D600C6C6C600B5B5BD005A5A6300737B7B0063636B00949C
      9C00B5B5BD00ADB5B500000000000000000000000000FFFFFF00000000000000
      0000000000000000080000000800000010000000080000000000000000000000
      000000001000FFF7FF000000000000000000FFF7FF00FFFFFF00F7F7FF00FFFF
      FF0000000800D6D6DE00DEE7E700DEE7EF00DEDEEF00D6D6E700D6DEE700CED6
      E700D6D6E700EFE7F700000008000000000000080000FFFFF700000000000008
      08006B84940000001800000010009CA5AD00ADADAD00ADADAD00ADA59C00ADA5
      AD0008001000FFF7FF00F7FFFF00EFFFFF0073737300FFFFFF00F7F7F700EFEF
      EF00E7E7E700DEDEDE00CECECE00B5B5B50073737300ADB5B50084848C007373
      7B00949C9C00A5ADAD000000000000000000FFFFFF0000000000000000007384
      7B00BDD6D600ADCEDE00316384004A94B50021637B0000000000CEDECE00C6D6
      C60000000000FFFFFF0000000000000000000000000008080000000000000000
      000000000000F7FFFF00F7FFFF00EFEFFF00F7EFFF00F7EFFF00F7F7FF00F7EF
      FF00F7EFFF00DEDEE700000000000000000000000000FFFFFF0039424200D6EF
      F700B5E7FF005A8CAD00527B9C00000010007B8C9400848C8C00EFE7E700AD9C
      A50000000800FFFFFF00F7FFFF00EFFFFF0073737300F7F7F700F7F7F700F7F7
      F700EFEFEF00DEDEDE00CECED600B5BDBD007B848400BDBDBD00CECECE009494
      940073737B00A5A5AD000000000000000000FFFFFF00FFFFFF00F7FFFF006B84
      8400CEF7FF00BDF7FF00106B940039BDFF00299CDE0000001000DEFFFF00DEFF
      F70000000000FFFFF7000000000000000000000000009C9C9C008C949400949C
      9C0000080000FFFFFF001818390018184A0021184A002921520018104A001810
      4A0018183100DEDEE700080808000000000000000000FFFFFF00D6DEE7001839
      4200ADEFFF0084DEFF0039A5CE003184AD00000010008C949C00948C9400B5AD
      AD0008080800FFFFFF00FFFFFF00FFFFFF0084848400F7F7F700F7F7F700F7F7
      F700E7E7E700EFEFEF00D6D6D600C6C6CE008C8C8C0084848400000000006363
      63004242420073737B000000000000000000FFFFFF0000000000F7F7F700848C
      8C00DEF7FF00B5F7FF0008638C008CFFFF0052B5EF0000082100DEF7FF00DEF7
      F7000000000000000000000000000000000000000800E7DEF700EFE7FF00DED6
      F70000000800F7F7FF00F7F7FF0008084200EFEFFF00F7F7FF0021215200EFE7
      FF0000000000DEDEE700000000000000000000000000F7FFFF00E7EFEF002139
      4A00ADEFFF0052ADC600299CC60031A5CE005AA5C60000001800737B8C008C8C
      8C0008000000FFFFFF00FFFFFF00FFFFFF007B7B7B00FFFFFF00F7F7F700EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00DEDEDE00CECECE00C6C6C600C6C6C600B5B5
      B5008C8C8C004A4A52000000000000000000FFFFFF0000000000F7FFFF007384
      7B00E7F7FF00C6F7FF0018637B0000638400106B8C0000001000E7FFFF00EFFF
      FF000000000000000000000000000000000000001000EFE7FF00080029001010
      390000000800F7F7FF00EFEFFF0010105200F7F7FF00EFF7FF00EFE7FF001810
      4A00F7F7FF00DEDEE700000008000000000010000000FFFFFF00E7DEE700E7E7
      F70000000800C6EFFF00A5F7FF0039A5C6002194CE004A9CD600000021008C8C
      9C0063635A00FFFFF700FFFFFF00FFFFFF0084848400FFFFFF00FFFFFF007373
      730073737300737373007373730073737300737373007373730073737300CECE
      CE00C6BDC60042424200000000000000000000000000F7FFFF00000000000000
      0000F7FFFF00DEF7F700CEFFFF00BDFFFF00BDFFFF00C6FFF700D6F7EF00EFF7
      FF000008080000000000F7FFFF000000000008080000DEDEE700E7E7FF001010
      310000001000EFF7FF001818630018106300EFEFFF0021214A00DEDEFF00EFEF
      FF0021183900D6D6E700000010000000000010080000FFFFF700EFE7EF00E7DE
      EF00E7DEE70000001000BDEFFF00A5FFFF00299CD60039A5DE00528CBD000000
      180063636300A59C8C00FFFFF700FFFFFF0084848400FFFFFF00FFFFFF00F7F7
      F700F7F7F700EFEFEF00EFEFEF00EFEFEF00EFEFEF00DEDEDE00E7E7E700D6D6
      D600CECECE0039393900000000000000000000000000EFFFFF00426B7300CEFF
      FF00BDD6CE00EFFFFF00DEFFF700C6FFF700C6FFF700D6FFF700DEFFF700B5D6
      DE009CC6CE0000000000F7FFFF000000000000000000E7E7E700DEDEFF001010
      310000000800F7F7FF00E7E7FF0010106300EFE7FF00EFEFFF00181052001810
      4A00F7EFFF00D6D6EF00000008000000000000000000FFFFFF00DEDEE7009C9C
      A50094949C00949CA50000000800BDEFFF00B5FFFF00429CC600429CC60063A5
      C6000000100084847B007B7B6B00FFFFEF008C8C8C00FFFFFF00FFFFFF007373
      7300737373007B7B7B007373730000000000737373007B7B7B0073737300DEDE
      DE00D6D6D600292129000000000000000000EFFFFF00EFFFFF00E7FFFF003963
      730000000000C6D6CE00EFFFF700CEFFF700CEFFFF00DEFFF700ADCED6000000
      100000000800EFFFFF00000000000000000000000800E7E7F700101031001010
      310000001000F7F7FF00E7EFFF00E7E7FF00F7EFFF00E7E7FF00EFEFFF00E7E7
      FF00F7F7FF00DED6F700080818000000000000000000F7FFFF00EFEFF700DEDE
      EF00EFEFEF00E7E7E700DEE7E70000000800C6EFFF00BDFFFF005AA5C600427B
      9C00738C9C0000000000949484008C8C730094949400F7F7F700FFFFFF00FFFF
      FF00F7F7F700EFEFEF00FFFFFF00EFEFEF00E7E7E700EFEFEF00E7DEDE00DEDE
      DE00D6D6D600313131000000000000000000EFFFFF00E7FFF700EFFFFF00E7FF
      FF00C6F7F70000000000BDCECE00D6FFFF00D6FFFF00ADCED600000010008CC6
      F7000000100000000000000000000000000000000800DEDEF700DEDEFF001010
      3100000018001010310018215200101852001010520021185A0010104A002121
      52002118420010082900000010000000000000000000F7FFFF00E7EFF7009C9C
      AD008C849400A59C9C00A59C9400949C940000080800C6DEEF00738494009CA5
      B5009C9CAD008C8C8C0008080000848C73008C8C8C00FFFFFF00FFFFFF007373
      7300737373007373730000000000737373007B7B7B007373730073737300DEDE
      DE00E7E7E7003931310000000000000000000000000000000000FFFFFF00F7FF
      FF0039636B00CEFFFF0000000800B5D6DE00A5CED6000000100094C6F7000000
      420000001800FFFFFF00000000000000000000001000EFEFFF00D6D6FF00D6D6
      FF0000001000C6C6DE0010184200182152001810520018105A00181852001818
      42002918520010083100000008000000000000000800F7FFFF00D6DEDE00EFEF
      EF00F7EFEF00EFE7E700F7EFE700E7EFE700D6E7DE0000000000FFFFFF00E7DE
      EF00B5ADBD00A5A5AD0094949400000000008C8C8C00FFFFFF00FFFFFF00F7F7
      F700FFFFFF00FFFFFF00F7F7F700EFEFEF00E7E7E700EFEFEF00E7E7E700DEDE
      DE00D6D6D600393939000000000000000000000000000000000000000000FFFF
      FF00EFFFFF00E7FFFF0031637B00B5F7FF008CCED60000000000E7F7FF002100
      840008002900000000000000000000000000080021001008310021184A001818
      4200000018000000290000002100000029000000310000002900000018000000
      18000000210000001800000008000000000000000000F7FFFF00E7EFDE009C9C
      8C00A59C9400ADA5A500949C9C008C9C94008C9C94000010000000000000FFFF
      FF00DEDEEF00A5A5B5008C849C000000100094949400FFFFFF00FFFFFF00F7F7
      F700FFFFFF00F7F7F700F7F7F700F7F7F700E7E7E700E7E7E700E7E7E700E7E7
      E700D6D6D6004A4A4A000000000000000000000000000000000000000000FFFF
      F700F7FFFF00EFFFFF00DEFFFF002963730000000800EFFFFF00F7F7FF002108
      6B0000001800FFFFFF0000000000000000000000180029214A00211852002110
      5A001810520010104A00101852001818520010104A000008290000081000EFFF
      FF00F7F7FF0000000000FFFFFF000000000000000000FFFFFF00EFEFDE00EFEF
      DE00EFE7DE00E7E7E700DEE7EF00E7EFF700E7EFE700000000007B847B000000
      0000E7E7F700A5A5BD00BDB5CE0000001800A5A5A500F7F7F700FFFFFF00F7F7
      F700F7F7F700F7F7F700EFEFEF00EFEFEF00EFEFEF00E7E7E700E7E7E700DEDE
      DE00DEE7DE0042424200000000000000000000000000F7FFF700000000000000
      000000000000F7F7FF00F7FFFF00F7FFFF00EFFFFF00F7FFFF0000000000FFF7
      FF00F7FFFF000000000000000000000000000000180000002100000031000000
      310000003900000031000000310000003100000021000000180000080800F7FF
      FF00FFFFFF0000000000FFFFFF000000000008080800F7F7F700FFFFFF00FFF7
      EF00FFFFFF00FFFFFF00EFF7FF00F7FFFF00FFFFFF0000000000848484000000
      0000000008000000080000000800FFFFFF00949494009C9C9C00949494009C9C
      9C008C8C8C008C8C8C008C8C8C00848484007B7B7B007B7B7B00737373007373
      7300000000007373730000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00F7FFFF00000000000000000000000000000000000000
      0000F7FFFF00F7FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009CA59C0010080800080000001000
      000000000000000000000000080000000800000008000000080008000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF310000FF310000FF310000FF310000FF310000FF31
      0000FF310000FF310000FF310000FF310000FFCE9C00CE9C6300CE9C6300CE9C
      6300CE9C6300CECECE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084000000FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000CE636300CE636300CE636300CE63
      6300CE636300CE636300CE636300CE636300CE636300CE636300CE636300CE63
      6300CE636300CE636300CE636300CE6363000000000000000000000000000000
      00000000000000000000FF310000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF310000FFCE9C00F7EFBD00F7EFBD00CECE
      FF00E7E7E700CE9C6300CE9C6300CECECE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000084000000FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000CE636300FFFFFF00FFFFFF00FFCE
      CE00FFFFFF00FFFFFF00FFCECE00FFFFFF00FFFFFF00FFCECE00FFFFFF00FFFF
      FF00FFCECE00FFFFFF00FFFFFF00CE6363000000000000000000000000000000
      00000000000000000000FF310000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF310000FFCE9C00FFFFFF00FFFFFF00CECE
      FF00FFFFFF00FFFFFF00E7E7E700CE9C63000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000008400000084000000FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000CE636300FFFFFF00FFFFFF00FFCE
      CE00FFFFFF00FFFFFF00FFCECE00FFFFFF00FFFFFF00FFCECE00FFFFFF00FFFF
      FF00FFCECE00FFFFFF00FFFFFF00CE6363000000000000000000000000000000
      00000000000000000000FF310000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF310000FFCE9C00F7EFBD00F7EFBD00CECE
      FF00F7EFBD00F7EFBD00F7EFBD00CE9C6300CECECE0000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      000084000000FFFFFF008400000084000000FFFFFF0000000000000000000000
      000000000000000000000000000000000000CE636300FFCECE00FFCECE00FFCE
      CE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCE
      CE00FFCECE00FFCECE00FFCECE00CE636300000000000000000000000000FF31
      0000FF310000FF310000FF310000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF310000FFCE9C00FFFFFF00CECECE00CECE
      FF00FFFFFF00FFFFFF00FFFFFF00E7E7E700CE9C6300CECECE00000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000FFFFFF0000000000000000008400000084000000FFFFFF00000000000000
      000000000000000000000000000000000000CE636300FFFFFF00FFFFFF00FFCE
      CE00FFFFFF00FFFFFF00FFCECE00FFFFFF00FFFFFF00FFCECE00FFFFFF00FFFF
      FF00FFCECE00FFFFFF00FFFFFF00CE636300000000000000000000000000FF31
      0000FFFFFF00FFFFFF00FF310000FF310000FF310000FF310000FF310000FF31
      0000FF310000FF310000FF310000FF310000FFCE9C00F7EFBD00F7EFBD00CECE
      FF00F7EFBD00F7EFBD00F7EFBD00F7EFBD00E7E7E700CE9C6300CE9C6300CE9C
      6300CECECE00000000000000000000000000000000000000000084000000FFFF
      FF000000000000000000000000000000000084000000FFFFFF00000000000000
      000000000000000000000000000000000000CE636300FFFFFF00FFFFFF00FFCE
      CE00FFFFFF00FFFFFF00FFCECE00FFFFFF00FFFFFF00FFCECE00FFFFFF00FFFF
      FF00FFCECE00FFFFFF00FFFFFF00CE636300000000000000000000000000FF31
      0000FFFFFF00FFFFFF00FF310000FF310000FF310000FF310000FF310000FF31
      0000FFCE9C00FF3100006363FF00FF310000FFCE9C00FFFFFF00FFFFFF00CECE
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E7
      E700CE9C6300CE9C6300CE9C6300CECECE000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000FFFFFF000000
      000000000000000000000000000000000000CE636300FFCECE00FFCECE000000
      9C0000009C0000009C0000009C00FFCECE00FFCECE00FFCECE00FFCECE00FFCE
      CE00FFCECE00FFCECE00FFCECE00CE636300000000000000000000000000FF31
      0000FFFFFF00FFFFFF00FFCE9C00FF310000FF310000FF310000FF310000FF31
      0000FF310000FF310000FF310000FFCE9C00FFCE9C00F7EFBD00F7EFBD00CECE
      FF00F7EFBD00F7EFBD00F7EFBD00F7EFBD00F7EFBD00F7EFBD00F7EFBD00F7EF
      BD00F7EFBD00F7EFBD00E7E7E700CE9C63000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084000000FFFF
      FF0000000000000000000000000000000000CE636300FFFFFF00FFFFFF000000
      9C00FFFFFF00FFFFFF0000009C00FFFFFF00FFFFFF00FFCECE00FFFFFF00FFFF
      FF00FFCECE00FFFFFF00FFFFFF00CE636300FF310000FF310000FF310000FF31
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FF310000000000000000000000000000FFCE9C00FFFFFF00FFFFFF00CECE
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C63000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000FFFFFF00000000000000000000000000CE636300FFFFFF00FFFFFF000000
      9C00FFFFFF00FFFFFF0000009C00FFFFFF00FFFFFF00FFCECE00FFFFFF00FFFF
      FF00FFCECE00FFFFFF00FFFFFF00CE636300FF310000FFFFFF00FFFFFF00FF31
      0000FF310000FF310000FF310000FF310000FF310000FF310000FF310000FF31
      0000FF310000000000000000000000000000FFCE9C00F7EFBD00F7EFBD00CECE
      FF00F7EFBD00F7EFBD00F7EFBD00F7EFBD00F7EFBD00F7EFBD00F7EFBD00F7EF
      BD00F7EFBD00F7EFBD00F7EFBD00CE9C63000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084000000FFFFFF000000000000000000CE636300FFCECE00FFCECE000000
      9C0000009C0000009C0000009C00FFCECE00FFCECE00FFCECE00FFCECE00FFCE
      CE00FFCECE00FFCECE00FFCECE00CE636300FF310000FFFFFF00FFFFFF00FF31
      0000FF310000FF310000FF310000FF310000FF310000FFCE9C00FF3100006363
      FF00FF310000000000000000000000000000FFCE9C00FFFFFF00CECECE00CECE
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C63000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084000000FFFFFF0000000000CE636300FFFFFF00FFFFFF00FFCE
      CE00FFFFFF00FFFFFF00FFCECE00FFFFFF00FFFFFF00FFCECE00FFFFFF00FFFF
      FF00FFCECE00FFFFFF00FFFFFF00CE636300FF310000FFFFFF00FFFFFF00FFCE
      9C00FF310000FF310000FF310000FF310000FF310000FF310000FF310000FF31
      0000FFCE9C00000000000000000000000000FFCE9C00FFFFFF00FFFFFF00CECE
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C63000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008400000000000000CE636300FFFFFF00FFFFFF00FFCE
      CE00FFFFFF00FFFFFF00FFCECE00FFFFFF00FFFFFF00FFCECE00FFFFFF00FFFF
      FF00FFCECE00FFFFFF00FFFFFF00CE636300FF310000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF310000000000000000
      000000000000000000000000000000000000FFCE9C00FFFFFF00FFFFFF00CECE
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C63000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE636300FFCECE00CE636300CE63
      6300FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCE
      CE00CE636300CE636300FFCECE00CE636300FF310000FF310000FF310000FF31
      0000FF310000FF310000FF310000FF310000FF310000FF310000000000000000
      000000000000000000000000000000000000FFCE9C00FFCE9C00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE636300FFCECE00FFCECE00FFCE
      CE00FFCECE00FFCECE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFCECE00FFCE
      CE00FFCECE00FFCECE00FFCECE00CE636300FF310000FF310000FF310000FF31
      0000FF310000FF310000FFCE9C00FF3100006363FF00FF310000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE636300CE636300CE636300CE63
      6300CE636300CE636300CE636300CE636300CE636300CE636300CE636300CE63
      6300CE636300CE636300CE636300CE636300FFCE9C00FF310000FF310000FF31
      0000FF310000FF310000FF310000FF310000FF310000FFCE9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840084848400848484000000000000000000000000000000
      00000000000000000000000000000000000000000000FF9C0000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE6300000000
      00000000000000000000000000000000000000000000CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C63000000000000000000000000000000
      000084848400B5B5B5009C9C9C00B5B5B5008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400B5B5B5009C9C9C00B5B5B5008484840084848400000000000000
      000000000000000000000000000000000000FF9C0000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE63
      00000000000000000000000000000000000000000000CE9C6300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C63000000000000000000000000008484
      8400B5B5B5009C9C9C00FFFFFF00FFFFFF00B5B5B500B5B5B500848484008484
      8400000000000000000000000000000000000000000000000000000000008484
      8400B5B5B5009C9C9C000000000000000000B5B5B500B5B5B500848484008484
      840000000000000000000000000000000000FF9C0000CE630000E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700CE63
      00000000000000000000000000000000000000000000CE9C6300FFFFFF009C31
      00009C3100009C3100009C3100009C3100009C3100009C3100009C3100009C31
      00009C3100009C310000FFFFFF00CE9C63000000000000000000000000008484
      84009C9C9C00FFFFFF009C9C9C009C9C9C00FFFFFF00FFFFFF00B5B5B500B5B5
      B500848484008484840000000000000000000000000000000000000000008484
      84009C9C9C00000000009C9C9C009C9C9C000000000000000000B5B5B500B5B5
      B50084848400848484000000000000000000FF9C0000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE63
      00000000000000000000000000000000000000000000CE9C6300FFFFFF009C31
      0000CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C63009C310000FFFFFF00CE9C6300000000000000000084848400B5B5
      B5009C9C9C00FFFFFF0084848400B5B5B5009C9C9C00FFFFFF00FFFFFF00FFFF
      FF00B5B5B500B5B5B5008484840000000000000000000000000084848400B5B5
      B5009C9C9C000000000084848400B5B5B5009C9C9C0000000000000000000000
      0000B5B5B500B5B5B5008484840000000000FF9C0000CE630000E7E7E700E7E7
      E700E7E7E700E7E7E700CECECE00CECECE00CECECE00CECECE00CECECE00CE63
      00000000000000000000000000000000000000000000CE9C6300FFFFFF009C31
      00009C3100009C3100009C3100009C3100009C3100009C3100009C3100009C31
      00009C3100009C310000FFFFFF00CE9C63000000000000000000848484009C9C
      9C00FFFFFF00B5B5B50084848400B5B5B5009C9C9C00FFFFFF00848484008484
      8400FFFFFF00FFFFFF0084848400000000000000000000000000848484009C9C
      9C0000000000B5B5B50084848400B5B5B5009C9C9C0000000000848484008484
      840000000000000000008484840000000000FF9C0000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700CE63
      00000000000000000000000000000000000000000000CE9C6300FFFFFF009C31
      0000CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C63009C310000FFFFFF00CE9C63000000000084848400B5B5B5009C9C
      9C00FFFFFF00B5B5B500E7E7E700B5B5B500FFFFFF00FFFFFF00FFFFFF00B5B5
      B50084848400FFFFFF0084848400000000000000000084848400B5B5B5009C9C
      9C0000000000B5B5B500E7E7E700B5B5B500000000000000000000000000B5B5
      B50084848400000000008484840000000000FF9C0000CE630000E7E7E700E7E7
      E700E7E7E700CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CE63
      00000000000000000000000000000000000000000000CE9C6300FFFFFF009C31
      00009C3100009C3100009C3100009C3100009C3100009C3100009C3100009C31
      00009C3100009C310000FFFFFF00CE9C630000000000848484009C9C9C00FFFF
      FF00B5B5B500E7E7E700E7E7E700B5B5B500FFFFFF008484840084848400FFFF
      FF00FFFFFF00FFFFFF00848484000000000000000000848484009C9C9C000000
      0000B5B5B500E7E7E700E7E7E700B5B5B5000000000084848400848484000000
      000000000000000000008484840000000000FF9C0000CE630000FFFFFF00FFFF
      FF00FFFFFF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700CE63
      00000000000000000000000000000000000000000000CE9C6300FFFFFF009C31
      0000CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C63009C310000FFFFFF00CE9C630084848400B5B5B5009C9C9C00FFFF
      FF00FFFFFF00FFFFFF00B5B5B500FFFFFF00FFFFFF00FFFFFF00B5B5B5008484
      8400FFFFFF0084848400000000000000000084848400B5B5B5009C9C9C000000
      00000000000000000000B5B5B500000000000000000000000000B5B5B5008484
      840000000000848484000000000000000000FF9C0000CE630000E7E7E700E7E7
      E700CECECE00CECECE00CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE63000000000000CE9C6300FFFFFF009C31
      00009C3100009C3100009C3100009C3100009C3100009C3100009C3100009C31
      00009C3100009C310000FFFFFF00CE9C6300848484009C9C9C00FFFFFF00FFFF
      FF009C3100009C310000FFFFFF00FFFFFF008484840084848400FFFFFF00FFFF
      FF00FFFFFF00848484000000000000000000848484009C9C9C00000000000000
      0000848484008484840000000000000000008484840084848400000000000000
      000000000000848484000000000000000000FF9C0000CE630000FFFFFF00FFFF
      FF00E7E7E700CE630000FF9C0000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE63000000000000CE9C6300FFFFFF009C31
      0000CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C63009C310000FFFFFF00CE9C6300000000009C9C9C009C9C9C00FFFF
      FF00FFFFFF00B5B5B5009C3100009C310000FFFFFF00FFFFFF0084848400FFFF
      FF0084848400000000000000000000000000000000009C9C9C009C9C9C000000
      000000000000B5B5B50084848400848484000000000000000000848484000000
      000084848400000000000000000000000000FF9C0000CE630000E7E7E700CECE
      CE00FF9C0000FF9C0000FF9C0000FF9C0000FF9C0000CE630000CE630000CE63
      0000CE630000CE630000CE6300000000000000000000CE9C6300FFFFFF009C31
      00009C3100009C3100009C3100009C3100009C3100009C3100009C3100009C31
      00009C3100009C310000FFFFFF00CE9C63000000000000000000000000009C9C
      9C009C9C9C00FFFFFF00FFFFFF00B5B5B5009C3100009C310000FFFFFF00FFFF
      FF00848484000000000000000000000000000000000000000000000000009C9C
      9C009C9C9C000000000000000000B5B5B5008484840084848400000000000000
      000084848400000000000000000000000000FF9C0000CE630000FFFFFF00FF9C
      0000FF9C6300FF9C6300FF9C0000FF9C0000FF9C0000FF9C0000FF9C0000CE63
      0000CE630000CE630000000000000000000000000000CE9C6300FFFFFF009C31
      0000CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C63009C310000FFFFFF00CE9C63000000000000000000000000000000
      0000000000009C9C9C009C9C9C00FFFFFF00FFFFFF00B5B5B500FFFFFF008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C9C009C9C9C000000000000000000B5B5B500000000008484
      840000000000000000000000000000000000FF9C0000CE630000FF9C0000FF9C
      6300FF9C6300FF9C6300FF9C6300FF9C6300FF9C0000FF9C0000FF9C0000FF9C
      0000CE63000000000000000000000000000000000000CE9C6300FFFFFF009C31
      00009C3100009C3100009C3100009C3100009C3100009C3100009C3100009C31
      00009C3100009C310000FFFFFF00CE9C63000000000000000000000000000000
      00000000000000000000000000009C9C9C009C9C9C00FFFFFF00FFFFFF008484
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009C9C9C009C9C9C0000000000000000008484
      840000000000000000000000000000000000FF9C0000FF9C0000FF9C6300FF9C
      6300FF9C6300FF9C6300FF9C6300FF9C6300FF9C6300FF9C6300FF9C0000CE63
      00000000000000000000000000000000000000000000CE9C6300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C63000000000000000000000000000000
      000000000000000000000000000000000000000000009C9C9C009C9C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C9C9C009C9C9C000000
      00000000000000000000000000000000000000000000FF9C00009C9C9C00FFFF
      FF009C9C9C00FFFFFF009C9C9C00FFFFFF009C9C9C00FFFFFF009C9C9C00FFFF
      FF000000000000000000000000000000000000000000CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C63000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C9C9C00CECE
      CE009C9C9C00CECECE009C9C9C00CECECE009C9C9C00CECECE009C9C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006B73
      7300212121006B7373000000000000000000000000006B7373006B7373000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002121
      2100101010002121210000000000000000000000000021212100212121000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF0000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006B73
      7300212121006B7373000000000000000000000000006B7373006B7373000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF0000009C0000009C0000008400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000FFFFFF008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000006B73
      73006B7373006B7373006B7373006B7373006B7373006B737300C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008400000084000000840000008400000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF0000009C000000840000009C00000084000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      000000000000000000000000000063639C0000000000000000006B7373001010
      10001010100010101000101010001010100010101000101010006B7373000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008400000084000000840000008400000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF0000009C0000009C000000840000009C000000
      84000000000000000000000000000000000084848400FFFFFF00FFFFFF000000
      0000FFFFFF000000000000000000C6C6C6000000000000000000000000000000
      0000000000000000000063639C00319CCE000000000000000000101010002121
      21000000000000000000000000000000000000000000C6C6C60010101000C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000008400000084000000840000008400000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00CE9C630000009C0000009C0000009C000000FF000000
      9C000000840000000000000000000000000084848400FFFFFF00000000000000
      0000FFFFFF0084848400C6C6C600FFFFFF008484840000000000FFFFFF008484
      84000000000063639C00319CCE0063CEFF000000000000000000101010001010
      1000000000001010100010101000000000001010100000000000101010006B73
      7300000000000000000000000000000000000000000000000000000000000000
      000000000000840000008400000084000000FFFFFF0084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFCE9C00FFCE9C0000009C000000FF000000FF000000
      FF0000009C000000840000000000000000008484840000000000000000000000
      0000848484000000000000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF0063639C00319CCE0063CEFF00000000000000000000000000101010000000
      0000000000000000000000000000000000000000000000000000212121001010
      1000000000000000000000000000000000000000000000000000000000000000
      000000000000840000008400000084000000FFFFFF0084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFCE9C00FFCE9C00FFFFFF00FFFFFF000000FF00319CFF00319C
      FF00319CFF0000009C0000000000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000FFFFFF006363
      9C00319CCE0063CEFF00000000000000000000000000000000006B7373001010
      10000000000010101000101010000000000010101000000000006B7373001010
      10006B7373000000000000000000000000000000000000000000000000000000
      0000000000008400000084000000840000008400000084000000840000008400
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFCE9C00FFCE9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000009C000000
      9C0000009C000000000000000000000000000000000000000000C6C6C600C6C6
      C6000000000000000000FFFFFF0000000000000000000000000063639C00319C
      CE0063CEFF000000000000000000000000000000000021212100C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000001010
      1000101010000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFCE
      9C00FFCE9C00FFFFFF00FFFFFF00FFFFFF00CE9C6300CE9C6300000000000000
      0000000000000000000000000000000000000000000084848400C6C6C600FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF000000000063639C00319CCE0063CE
      FF00000000000000000000000000000000000000000010101000C6C6C6002121
      2100000000001010100010101000000000001010100000000000000000001010
      1000101010006B73730000000000000000000000000000000000000000000000
      0000000000000000000084000000000000000000000000000000840000000000
      00000000000000000000000000000000000000000000FFFFFF00FFCE9C00FFCE
      9C00FFFFFF00FFFFFF00FFFFFF00CE9C63000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      84000000000000000000FFFFFF00FFFFFF0063639C00319CCE0063CEFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000101010001010100000000000000000000000000000000000000000000000
      0000000000000000000084000000000000000000000000000000840000000000
      000000000000000000000000000000000000FFFFFF00FFCE9C00FFCE9C00FFFF
      FF00FFFFFF00FFFFFF00CE9C63000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000063639C00319CCE0063CEFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006B737300101010006B7373006B7373000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000000000000000
      000000000000000000000000000000000000CE9C6300FFCE9C00FFFFFF00FFFF
      FF00FFFFFF00CE9C63000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063639C00319CCE0063CEFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C6001010100010101000101010000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE9C6300FFFFFF00FFFF
      FF00CE9C63000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000063639C00319CCE0063CEFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE9C6300CE9C
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C3100009C310000CE6300009C310000CE6300009C3100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000063CECE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C310000CE6300009C310000CE6300009C3100009C3100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000063CECE00009CCE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C3100009C310000CE6300009C310000CE6300009C3100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE9C63009C3100009C310000CE9C63000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063CECE00009CCE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C9C009C3100009C3100009C3100009C3100009C9C9C000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000FFFF000000000000000000000000000000000000000000C6C6C6000000
      000000FFFF000000000000000000000000000000000000000000000000009C31
      00009C310000CE630000CE6300009C3100000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063CECE009CFFFF00009CCE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00FFCECE0063636300000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00C6C6C6000000000000000000000000000000000000000000C6C6C6000000
      0000C6C6C60000000000000000000000000000000000000000009C310000CE63
      0000CE6300009C3100009C310000CE9C63000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000063CECE00009CCE00009CCE00009CCE0063FFFF00009CCE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00FFCECE0063636300000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000FFFF000000000000000000000000000000000000000000C6C6C6000000
      000000FFFF0000000000000000000000000000000000CE9C63009C310000CE63
      00009C310000CE9C630000000000000000009C3100009C3100009C3100009C31
      00009C3100009C3100009C310000000000000000000000000000000000000000
      000063CECE009CFFFF0063FFFF0063FFFF0063FFFF0063FFFF00009CCE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00FFCECE0063636300000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000FFFF00C6C6C600C6C6C60000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF00000000000000000000000000000000009C310000CE6300009C31
      0000CE9C63000000000000000000000000009C310000CE630000CE630000CE63
      0000CE630000CE6300009C310000000000000000000000000000000000000000
      00000000000063CECE009CFFFF0063FFFF00009CCE0063CECE0063CECE0063CE
      CE00000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00FFCECE0063636300000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00C6C6C60000000000000000000000000000000000000000000000000000FF
      FF00C6C6C600000000000000000000000000000000009C310000CE6300009C31
      000000000000000000000000000000000000000000009C310000CE630000CE63
      0000CE630000CE6300009C310000000000000000000000000000000000000000
      00000000000063CECE009CFFFF0063FFFF0063FFFF00009CCE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00FFCECE0063636300000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      000000FFFF00000000000000000000000000000000009C310000CE6300009C31
      0000CE9C630000000000000000000000000000000000CE9C63009C310000CE63
      0000CE630000CE6300009C31000000000000000000000000000063CECE00009C
      CE00009CCE00009CCE00009CCE009CFFFF0063FFFF0063FFFF00009CCE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063636300636363006363630063636300000000000000
      00000000000000000000000000006363630000000000000000000000000000FF
      FF0000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C60000000000000000000000000000000000CE9C63009C310000CE63
      00009C310000CE9C630000000000CE9C63009C3100009C310000CE6300009C31
      0000CE630000CE6300009C31000000000000000000000000000063CECE009CFF
      FF009CFFFF0063FFFF0063FFFF0063FFFF0063FFFF0063FFFF0063FFFF00009C
      CE00000000000000000000000000000000000000000063636300636363000000
      000000000000636363009C9C9C009C9C9C009C9C9C009C9C9C00636363000000
      00000000000000000000636363006363630000000000000000000000000000FF
      FF0000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C60000000000000000000000000000000000000000009C310000CE63
      0000CE6300009C3100009C3100009C310000CE630000CE6300009C310000CE9C
      63009C310000CE6300009C3100000000000000000000000000000000000063CE
      CE009CFFFF009CFFFF0063FFFF0063FFFF00009CCE0063CECE0063CECE0063CE
      CE00000000000000000000000000000000009C9C9C009C9C9C009C9C9C006363
      6300636363009C9C9C00CECECE00CECECE00CECECE009C9C9C00636363006363
      63006363630063636300CECECE0063636300000000000000000000000000C6C6
      C60000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000009C31
      00009C310000CE630000CE630000CE6300009C3100009C310000000000000000
      0000000000009C3100009C3100000000000000000000000000000000000063CE
      CE009CFFFF009CFFFF009CFFFF0063FFFF0063FFFF00009CCE00000000000000
      0000000000000000000000000000000000009C9C9C00FFFFFF00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE009C9C9C009C9C
      9C009C9C9C00CECECE00636363000000000000000000000000000000000000FF
      FF0000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      0000CE9C63009C3100009C3100009C310000CE9C630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000063CECE009CFFFF009CFFFF009CFFFF0063FFFF0063FFFF00009CCE000000
      0000000000000000000000000000000000009C9C9C00FFFFFF00CECECE00CECE
      CE00FFFFFF00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE009C9C9C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000063CECE009CFFFF009CFFFF009CFFFF0063FFFF0063FFFF0063FFFF00009C
      CE00000000000000000000000000000000009C9C9C00FFFFFF00FFFFFF009C9C
      9C009C9C9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C9C
      9C009C9C9C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000063CECE009CFFFF009CFFFF009CFFFF0063FFFF0063FFFF0063FF
      FF00009CCE00000000000000000000000000000000009C9C9C009C9C9C000000
      0000000000009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CE
      CE0063CECE0063CECE0000000000000000000000000008080000080000000800
      0000100808000000000000000000000800000008000008080000100000001000
      080000000800BDC6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7EFF700000000000000000000000000000000000000
      0000000000000000000000000000000000008C8C8C00C6C6C600CED6D600CED6
      CE00BDCEC600BDCEC600BDDEC600B5D6C600BDD6C600C6CECE00CECECE00CEC6
      CE0000000000C6D6D600000000000000000000000000000000009C3100009C31
      00009C3100009C3100009C3100009C3100009C3100009C3100009C3100009C31
      00009C310000000000000000000000000000948C390029A56B00318C4A00088C
      2900108C3100188C3900298C4200218C4200108C3100088C2900188C3900218C
      4200298C4200108C3100218C390000000000000000000000000000000000E7EF
      F700E7E7E700CECECE00E7E7E700E7EFF7000000000000000000000000000000
      00000000000000000000000000000000000084848C00F7FFFF00E7FFFF00D6FF
      F700D6FFFF00BDFFF70021845200B5FFDE00DEFFFF00DEEFFF00EFFFFF00BDCE
      D60000000800C6C6CE00000000000000000000000000CE9C6300FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00CE9C
      6300CE9C63009C31000000000000000000009C8C4A00318C4A00A5DE9C00FFF7
      FF00F7EFF700EFEFE700DEEFDE00E7EFE700F7EFEF00F7EFF700EFEFEF00E7EF
      E700DEEFDE00F7F7EF00218C39000000000000000000E7EFF700E7E7E700B5B5
      B500CE9C9C009C6363009C636300B5B5B500CECECE00E7E7E700E7EFF7000000
      000000000000000000000000000000000000848C8C00EFFFFF00D6FFFF00CEFF
      FF00B5FFEF00107B5200108C5200B5FFE700BDFFE700DEFFFF00D6F7F700B5CE
      CE0000080800BDC6C6000000000000000000CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      63009C310000CE9C63009C31000000000000AD8C5200188C3100EFEFEF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00218C390000000000E7E7E700CE9C9C009C636300CE9C
      9C00CE9C9C00FFFFFF009C6363009C9C9C009C9C9C00B5B5B500E7E7E7000000
      00000000000000000000000000000000000073848C00EFFFFF00DEFFFF00BDFF
      EF0010845200088C520008844A0018844A00317B4200D6FFDE00DEFFF700B5CE
      CE0000080800CECECE000000000000000000CE9C6300FFFFFF00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE
      9C00CE9C63009C3100009C31000000000000AD8C5A00108C2900DEE7DE00CEE7
      CE00E7EFE700E7EFE700E7EFE700E7EFE700DEEFDE00DEEFDE00B5D6B500A5CE
      A500B5D6B50094BD9400218C3900000000009C636300CE9C9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C63630031639C0031639C0031639C00E7EFF7000000
      00000000000000000000000000000000000073848400EFFFFF00CEFFEF00CEFF
      F700A5FFDE00108C4A0010845200BDFFE7003984390029632100D6FFDE00BDD6
      CE0000000000C6BDC6000000000000000000CE9C6300FFFFFF00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C0000CE0000009C0000FFCE9C000000FF000000CE00FFCE
      9C00CE9C6300CE9C63009C31000000000000AD8C520018943100E7F7E700187B
      1800187B1800187B1800187B1800187B18004A944A0073B5730042944200187B
      1800187B180031843100218C3900000000009C636300FFCE9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C63630063CECE0063CECE00009CCE00FFFFFF00FFCE
      CE00000000000000000000000000000000007B8C8400F7FFFF00E7FFF700CEFF
      DE00CEFFEF00B5FFE70021846300ADFFDE00DEFFDE0029521800E7FFF700BDD6
      CE0000000800D6CEDE000000000000000000CE9C6300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CE9C6300CE9C6300CE9C63009C310000A58C4A00218C3900E7EFE700CECE
      CE00187B1800187B1800187B1800187B180063A563008CCE8C00187B1800187B
      180018731800E7F7E700218C3900000000009C636300FFCE9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C63630063CECE0063CEFF00319CCE00FFCECE00CE63
      0000000000000000000000000000000000008C8C8400F7FFF700E7FFEF00295A
      3900D6FFE700C6FFEF00ADFFEF00BDFFEF00D6FFDE00395A3900DEFFEF00B5CE
      CE0000000800D6C6DE000000000000000000CE9C6300FFFFFF00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE
      9C00CE9C6300CE9C6300CE9C63009C31000000000000298C4200CEE7CE00FFFF
      FF00CED6CE00187B1800187B1800187B180094CE9400187B1800187B18005294
      5200107B1000A5CEA500218C3900000000009C636300FFCE9C00CE9C9C00CE9C
      6300FFCECE00FFFFFF009C6363009CCECE009CCEFF00B5B5B500FF630000CE63
      0000000000000000000000000000000000008C848400FFFFFF00F7FFF7003152
      3900E7FFF700C6FFE700188C5200A5FFDE00CEFFF700D6FFEF00DEFFF700BDD6
      CE0000000800CEC6D600000000000000000000000000CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300FFCE
      9C00FFCE9C00CE9C6300CE9C63009C31000000000000298C4200CEE7CE00FFFF
      FF00FFFFFF00B5CEB500187B18008CCE8C00187B1800187B180084B58400BDD6
      BD00ADD6AD00DEDEDE00218C3900000000009C636300FFCE9C009C636300FFFF
      FF00FFCECE00FFFFFF009C6363009CCECE00C6C6C600CE630000CE630000CE63
      0000CE630000CE630000CE63000000000000948C8C00FFFFFF00EFFFEF003152
      39004A735A00CEFFE700108C4200088C4200B5FFE700D6FFFF00DEFFF700BDD6
      CE0000000000CECECE0000000000000000000000000000000000CE9C6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9C
      6300FFCE9C00FFCE9C00CE9C63009C31000000000000188C3900D6E7D600FFFF
      FF00F7FFF7008CD68C0084BD8400187B1800187B1800187B18004A944A00BDE7
      BD00FFFFFF00FFFFFF00218C3900000000009C636300FFCE9C00CE9C9C009C63
      6300FFCECE00FFFFFF009C63630000000000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000000000007B847B00FFFFFF00F7FFFF00D6F7
      E7004A7B5A00297B4A0010944200088C3900187B4A00CEFFEF00EFFFF700C6CE
      C60008100800C6CEC6000000000000000000000000000000000000000000CE9C
      6300FFFFFF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700FFFFFF00CE9C
      6300CE9C6300CE9C63009C31000000000000AD8C5A00108C2900E7E7E700FFFF
      FF008CCE8C007BBD7B00187B1800187B1800187B1800187B1800187B1800428C
      4200A5D6A500FFFFFF00218C3900000000009C636300FFCE9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C63630000000000CE9C9C00CE630000CE630000CE63
      0000CE630000CE630000CE63000000000000848C8C00FFFFFF00EFF7FF00EFFF
      FF00E7FFF700CEFFE70021944A0010844200BDFFE700DEFFF700BDD6C600CED6
      C60000000000CECECE000000000000000000000000000000000000000000CE9C
      6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CE9C6300000000000000000000000000AD8C5A00188C3100EFEFEF006BC6
      6B0052AD5200187B1800187B180084B58400DEDEDE004A944A00187B1800187B
      1800106B100084CE8400218C3900000000009C636300FFCE9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C636300CECECE00E7EFF700CE9C9C00FF630000CE63
      000000000000000000000000000000000000848C8400F7FFFF00FFFFFF00F7FF
      FF00EFFFFF00DEFFF700317B5A00BDFFEF00D6FFF70000080000000800000000
      000000000000CEC6CE0000000000000000000000000000000000000000000000
      0000CE9C6300FFFFFF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700FFFF
      FF00CE9C6300000000000000000000000000AD8C5200218C3900E7EFE70094B5
      9400187B1800187B180094C69400F7FFF700FFFFFF00E7E7E7009CBD9C00187B
      1800187B1800D6D6D600218C3900000000009C636300FFCE9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C6363009CCECE00000000009CCECE00FFCE9C00CE63
      0000000000000000000000000000000000007B848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFFFFF00CEF7EF00D6FFFF00DEFFEF007B8C8400F7F7FF000808
      1000D6CEDE00FFF7FF0000000000000000000000000000000000000000000000
      0000CE9C6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CE9C6300000000000000000000000000218C3900E7F7E700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00218C3900000000009C636300CE9C9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C636300CECECE0000000000319CCE0000000000FFCE
      9C0000000000000000000000000000000000848C8C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7FFFF00EFFFFF00EFFFFF007384840000000800BDBD
      CE00FFFFFF00FFF7FF0000000000000000000000000000000000000000000000
      000000000000CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C630000000000000000009C8C4A00399C52008CA5840063AD
      63006BAD6B0073AD730084AD84007BAD7B006BAD6B0063AD630073AD730084AD
      840084AD84006BAD6B00218C39000000000000000000C6C6C600CE9C6300CE9C
      9C00CECE9C00FFFFFF009C636300009CCE00009CCE00009CCE00000000000000
      0000000000000000000000000000000000007B8484008C8C8C009C848400947B
      7B00948C8400848C8400848484007B8484007B8C7B00738C8400C6CED600FFFF
      FF00FFF7FF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C8C4A00429C63004A944A00428C
      4200428C42004A8C4A004A8C4A004A8C4A004A8C4A00428C42004A8C4A004A8C
      4A004A8C4A004A8C4A00218C390000000000000000000000000000000000CECE
      CE00CE9C9C009C6363009C636300000000000000000000000000000000000000
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
      2800000040000000900000000100010000000000800400000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000C145000000000000
      0003000000000000000300000000000000010000000000000003000000000000
      0001000000000000000100000000000000010000000000000001000000000000
      0001000000000000000100000000000000010000000000000001000000000000
      000100000000000000010000000000008000FFFFFFFFFFFF0000E08380018102
      00006003848101800000A0014C01010000002001800101000000E00100010100
      0000600100010002000000010001000000000001010100000000000100010000
      000000012001000000400039000100000000C06F00010000000080AD000100C0
      000081CF00010080000001CFFFFF00408003FFFFFFFFFFFF0003FC7FC0018008
      0003A00300010000000360030001000000030003000100000023400700090000
      0003400700010000000380010001000000038001000100000103000300010000
      00030007000100000203C003000100000003E007000100000003E00300050000
      0003B82700050000000BF1F3FFFF0000FFFFFFFFFFFFFC0003FFF9FF0000FC00
      00FFF0FF0000FC0000FFE0FF0000FC00007FC07F0000E000003F863F0000E000
      0007CF3F0000E0000000FF9F0000E0000000FFCF000000070000FFE700000007
      0000A9C3000000070000AAB900000007000089BD0000003F0000AABF0000003F
      0000D9CF0000003FFFFFFFFF0000003FFFFFF8FFF8FF801F8000F03FF03F000F
      8000E00FE30F000F8000E003E4C3000F8000C001C471000F8000C001C84D000F
      8000800188E5000F80008001909D000F800000031DCB000080000003333B0000
      8000800798D700018000E007E63700038000F80FF9AF00078000FE0FFE6F000F
      8000FF9FFF9F800F8000FFFFFFFFC01FFCFFE39FFFFFFFFFF87FE39FFFFFFFFF
      F07FE39FFFFFFE7FE07FFFFFFFFFFC3FC03FE01FF80FFC1F803EC01FF80FFC0F
      001CCF8FF80FF8070008C94FF80FF8030001DFCFF80FF0038003C947F80FE007
      80079FE7FDDFC03F800F8963FDDF80FFC01FFFF3FDDF00FFE03FFFF0FE3F01FF
      F07FFFF0FFFF87FFF8FFFFF8FFFFCFFFF81FFFFFFFFFFBFFF81FFFFFFFFFF9FF
      F81FE003F0FFFCFFF81FC003E0FFFC7FFC3FC003C0FFF03FFC3FC0038301F01F
      FC3FC0038701F80FFC3FC0038F81F83FFC3FC0038781C01FFC3EC0038201C00F
      981CC003C001E00F0000C003E039E03F0001C003F07FF01F0003C003FFFFF00F
      0007FFFFFFFFF807981FFFFFFFFFF8038003FFFFFFFFFDFF0003C0070001E0FF
      000380030001801F000300010001001F000300010001001F000300010001000F
      000300000001000F000300008001000F00038000800100010003C00080010101
      0003E001000101010003E0070001000F0003F0070001008F0003F003800100AF
      0003F8030001803F0003FFFF0001E1FFFFFFE000FFFFFFFFC003E0003FFFEFFD
      C003E0000FFFC7FFC003E00083FFC3FBC003600080FFE3F7C0032000C03FF1E7
      C0030000C00FF8CFC0032000E007FC1FC0036000E003FE3FC003E000F001FC1F
      C003E000F000F8CFC003E000F800E1E7C007E000F800C3F3C00FE000FC00C7FD
      C01FE000FE00FFFFFFFFE000FF00FFFF00000000000000000000000000000000
      000000000000}
  end
  object frReport: TfrReport
    Dataset = frDBDataSet
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    RebuildPrinter = False
    OnBeginBand = frReportBeginBand
    Left = 67
    Top = 168
    ReportForm = {19000000}
  end
  object frDBDataSet: TfrDBDataSet
    DataSource = DS_Mdata3
    Left = 27
    Top = 168
  end
  object MData_WBOM: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 67
    Top = 77
  end
  object DS_Mdata_WBOM: TDataSource
    DataSet = MData_WBOM
    Left = 27
    Top = 77
  end
  object DS_Mdata3: TDataSource
    DataSet = MData3
    Left = 27
    Top = 123
  end
  object MData3: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 67
    Top = 123
  end
  object MData_DBOM: TdxMemData
    Indexes = <>
    SortOptions = []
    AfterEdit = MData_DBOMAfterEdit
    Left = 67
    Top = 32
  end
  object DS_Mdata_DBOM: TDataSource
    DataSet = MData_DBOM
    Left = 27
    Top = 32
  end
  object SaveDialog1: TSaveDialog
    Left = 67
    Top = 259
  end
  object actionList: TActionList
    Images = ImageList
    Left = 64
    Top = 296
    object ActApp: TAction
      Category = #25968#25454#32500#25252
      Caption = #26032#22686
      ImageIndex = 0
    end
    object ActSave: TAction
      Category = #25968#25454#32500#25252
      Caption = #20445#23384
      ImageIndex = 25
    end
    object ActOut: TAction
      Category = #25968#25454#32500#25252
      Caption = #23548#20986'[&O]'
      ImageIndex = 23
    end
    object ActEdit: TAction
      Category = #25968#25454#32500#25252
      Caption = #20462#25913
      ImageIndex = 1
    end
    object ActDel: TAction
      Category = #25968#25454#32500#25252
      Caption = #21024#38500
      ImageIndex = 2
    end
    object Act_Submit: TAction
      Category = #25968#25454#32500#25252
      Caption = #25552#20132
      ImageIndex = 10
    end
    object Act_Audit: TAction
      Category = #25968#25454#32500#25252
      Caption = #23457#26680
      ImageIndex = 22
    end
    object ActPartsSort: TAction
      Category = #25968#25454#25805#20316
      Caption = #37096#20214#21010#20998
      ImageIndex = 12
    end
    object Act_Weigth: TAction
      Category = #25968#25454#25805#20316
      Caption = #35745#31639#37325#37327
      ImageIndex = 21
      OnExecute = Act_WeigthExecute
    end
    object ActWorkBOM: TAction
      Category = #25968#25454#25805#20316
      Caption = #19979#25512#29983#20135'BOM'
      ImageIndex = 19
    end
    object ActTake: TAction
      Category = #25968#25454#25805#20316
      Caption = #19979#25512#22806#36141#20214#28165#21333
      ImageIndex = 24
    end
    object Act_Status: TAction
      Category = #26435#38480#35774#32622
      Caption = #26435#38480#35774#32622
      ImageIndex = 7
      OnExecute = Act_StatusExecute
    end
    object ActAudit: TAction
      Category = #25968#25454#25805#20316
      Caption = #23457#26680'[&A]'
      ImageIndex = 22
    end
    object ActProcessSort: TAction
      Category = #25968#25454#25805#20316
      Caption = #24037#33402#21010#20998
      ImageIndex = 19
      OnExecute = ActProcessSortExecute
    end
    object Act_Set_MaxID: TAction
      Category = #25968#25454#32500#25252
      Caption = 'Act_Set_MaxID'
      OnExecute = Act_Set_MaxIDExecute
    end
    object Act_Number: TAction
      Category = #25968#25454#25805#20316
      Caption = 'Act_Number'
      ImageIndex = 0
      OnExecute = Action_NumberExecute
    end
    object Act_Status_M: TAction
      Category = #25968#25454#32500#25252
      Caption = 'Act_Status_M'
      OnExecute = Act_Status_MExecute
    end
    object Act_Stock_Copy: TAction
      Category = #25968#25454#32500#25252
      Caption = #22270#21495#22797#21046
      ImageIndex = 19
      OnExecute = Act_Stock_CopyExecute
    end
    object Act_Parts: TAction
      Category = #25968#25454#25805#20316
      Caption = 'Act_Parts'
      OnExecute = Act_PartsExecute
    end
    object Act_Menu: TAction
      Category = #33756#21333
      Caption = 'Act_Menu'
      OnExecute = Act_MenuExecute
    end
    object Act_Menu_Set: TAction
      Category = #33756#21333
      Caption = 'Act_Menu_Set'
      OnExecute = Act_Menu_SetExecute
    end
    object Act_Status_BOM: TAction
      Category = #26435#38480#35774#32622
      Caption = 'Act_Status_BOM'
      ImageIndex = 17
      OnExecute = Act_Status_BOMExecute
    end
  end
  object MData_M3: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 67
    Top = 215
  end
  object DS_Mdata_M3: TDataSource
    DataSet = MData_M3
    Left = 27
    Top = 215
  end
  object DS_Mdata_DBOM_Sum: TDataSource
    DataSet = MData_DBOM_Sum
    Left = 19
    Top = 392
  end
  object MData_DBOM_Sum: TdxMemData
    Active = True
    Indexes = <>
    SortOptions = []
    AfterEdit = MData_DBOMAfterEdit
    Left = 66
    Top = 392
    object StringField35: TStringField
      FieldName = 'cpth'
    end
    object StringField36: TStringField
      FieldName = 'cpmc'
    end
    object StringField37: TStringField
      FieldName = 'cpxh'
    end
    object StringField38: TStringField
      FieldName = 'dah'
    end
    object StringField39: TStringField
      FieldName = 'jsdj'
    end
    object StringField40: TStringField
      FieldName = 'djrq'
    end
    object StringField41: TStringField
      FieldName = 'lkdh'
    end
    object StringField42: TStringField
      FieldName = 'pqgy'
    end
    object StringField43: TStringField
      FieldName = 'clf'
    end
    object StringField44: TStringField
      FieldName = 'gz'
    end
    object StringField45: TStringField
      FieldName = 'glf'
    end
    object StringField46: TStringField
      FieldName = 'clfje'
    end
    object StringField47: TStringField
      FieldName = 'gzje'
    end
    object StringField48: TStringField
      FieldName = 'glfje'
    end
    object StringField49: TStringField
      FieldName = 'bz'
    end
    object StringField50: TStringField
      FieldName = 'jssl'
    end
    object StringField51: TStringField
      FieldName = 'jsje'
    end
    object StringField69: TStringField
      FieldName = 'yfmc'
    end
  end
  object PM: TPopupMenu
    Left = 212
    Top = 208
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
  object MData_PTList: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 91
    Top = 472
    object StringField140: TStringField
      FieldName = 'FCode'
    end
    object StringField141: TStringField
      FieldName = 'th'
    end
    object StringField142: TStringField
      FieldName = 'mc'
    end
    object StringField143: TStringField
      FieldName = 'gg'
    end
    object StringField144: TStringField
      FieldName = 'SelRemark'
    end
    object StringField145: TStringField
      FieldName = 'ssth'
    end
    object StringField146: TStringField
      FieldName = 'FK3Number'
    end
    object StringField147: TStringField
      FieldName = 'FName'
    end
    object StringField148: TStringField
      FieldName = 'FModel'
    end
    object StringField149: TStringField
      FieldName = 'unitName'
    end
    object StringField150: TStringField
      FieldName = 'js'
    end
    object FloatField37: TFloatField
      FieldName = 'FSumQry'
    end
    object FloatField38: TFloatField
      FieldName = 'FQry'
    end
    object FloatField39: TFloatField
      FieldName = 'FSuttle'
    end
    object StringField151: TStringField
      FieldName = 'FNumber'
    end
    object StringField152: TStringField
      FieldName = 'FParentNumber'
    end
    object StringField153: TStringField
      FieldName = 'FFullNumber'
    end
    object StringField154: TStringField
      FieldName = 'Num'
    end
    object StringField155: TStringField
      FieldName = 'abc'
    end
    object StringField156: TStringField
      FieldName = 'FFStockInListRemark'
    end
    object IntegerField13: TIntegerField
      FieldName = 'FStockInListID'
    end
    object FloatField40: TFloatField
      FieldName = 'FInSumSuttle'
    end
    object FloatField41: TFloatField
      FieldName = 'FInQry'
    end
    object FloatField42: TFloatField
      FieldName = 'FInSumQry'
    end
  end
  object DS_Mdata_PTList: TDataSource
    DataSet = MData_PTList
    Left = 51
    Top = 472
  end
end
