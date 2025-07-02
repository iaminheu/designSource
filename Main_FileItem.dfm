inherited Frm_FileItem: TFrm_FileItem
  Left = 267
  Top = 117
  Caption = 'Frm_FileItem'
  ClientHeight = 687
  ClientWidth = 1156
  Menu = MainMenu_main
  OldCreateOrder = True
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image: TImage
    Width = 1156
  end
  inherited L_title: TLabel
    Left = 26
    Top = 2
    Width = 1255
    Caption = #36890#29992#25968#25454#30331#35760
  end
  inherited P_back: TPanel
    Width = 1156
    Height = 666
    inherited P_main: TPanel
      Width = 1150
      Height = 636
      inherited Panel_down: TPanel
        Top = 631
        Width = 1148
        Height = 3
        inherited Bevel_bass: TBevel
          Width = 1148
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1148
        Height = 38
        Align = alTop
        ParentColor = True
        TabOrder = 1
        object ToolBar1: TToolBar
          Left = 1
          Top = 1
          Width = 1146
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
            Visible = False
            OnClick = TB_AppClick
          end
          object TB_EditShort: TToolButton
            Left = 106
            Top = 0
            AutoSize = True
            Caption = #20462#25913#20869#23481
            ImageIndex = 1
            Visible = False
            OnClick = TB_EditShortClick
          end
          object TB_Edit: TToolButton
            Left = 165
            Top = 0
            AutoSize = True
            Caption = #20462#25913'[&E]'
            ImageIndex = 2
            Visible = False
            OnClick = TB_EditClick
          end
          object TB_Del: TToolButton
            Left = 218
            Top = 0
            AutoSize = True
            Caption = #21024#38500'[&D]'
            ImageIndex = 3
            Visible = False
            OnClick = TB_DelClick
          end
          object ToolButton5: TToolButton
            Left = 271
            Top = 0
            Width = 8
            Caption = 'ToolButton5'
            ImageIndex = 4
            Style = tbsSeparator
          end
          object TB_FileItem: TToolButton
            Left = 279
            Top = 0
            AutoSize = True
            Caption = #22522#26412#20449#24687
            ImageIndex = 5
            OnClick = TB_FileItemClick
          end
          object TB_Prin: TToolButton
            Left = 338
            Top = 0
            Cursor = crHandPoint
            AutoSize = True
            Caption = #25171#21360'[&P]'
            ImageIndex = 7
            Visible = False
          end
          object ToolButton1: TToolButton
            Left = 391
            Top = 0
            Width = 8
            Caption = 'ToolButton1'
            ImageIndex = 9
            Style = tbsSeparator
          end
          object TB_EXIT: TToolButton
            Left = 399
            Top = 0
            Cursor = crHandPoint
            AutoSize = True
            Caption = #36864#20986'[&X]'
            ImageIndex = 8
            OnClick = TB_EXITClick
          end
          object ToolButton2: TToolButton
            Left = 452
            Top = 0
            Caption = #35745#31639
            ImageIndex = 6
            Visible = False
            OnClick = ToolButton2Click
          end
        end
      end
      object RzSizePanel1: TRzSizePanel
        Left = 0
        Top = 38
        Width = 227
        Height = 593
        Color = 14935011
        HotSpotVisible = True
        SizeBarWidth = 7
        TabOrder = 2
        VisualStyle = vsGradient
        object MyTreeView: TTreeView
          Left = 0
          Top = 0
          Width = 219
          Height = 528
          Align = alClient
          AutoExpand = True
          Ctl3D = False
          Indent = 19
          ParentCtl3D = False
          TabOrder = 0
          OnChange = MyTreeViewChange
          OnExpanding = MyTreeViewExpanding
        end
        object Panel5: TPanel
          Left = 0
          Top = 528
          Width = 219
          Height = 65
          Align = alBottom
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 1
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
      end
      object Panel2: TPanel
        Left = 227
        Top = 38
        Width = 921
        Height = 593
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 3
        object PC_2: TRzPageControl
          Left = 0
          Top = 0
          Width = 921
          Height = 544
          ActivePage = TS_Basic
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PM_Qry
          TabIndex = 0
          TabOrder = 0
          TabStyle = tsDoubleSlant
          OnDblClick = Act_PlanTrackListExecute
          FixedDimension = 22
          object TS_Basic: TRzTabSheet
            Color = 14935011
            Caption = #22522#26412#20449#24687
            object PanelBkGnd: TPanel
              Left = 0
              Top = 0
              Width = 917
              Height = 518
              Align = alClient
              BevelOuter = bvNone
              Ctl3D = True
              ParentCtl3D = False
              TabOrder = 0
              object cxGrid: TcxGrid
                Left = 0
                Top = 0
                Width = 917
                Height = 518
                Align = alClient
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                PopupMenu = PM
                TabOrder = 0
                OnContextPopup = cxGridContextPopup
                object cxGV: TcxGridDBTableView
                  OnDblClick = Act_PlanTrackListExecute
                  DataController.DataSource = DS_Mdata
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
                  OnFocusedRecordChanged = cxGVFocusedRecordChanged
                  OptionsData.Appending = True
                  OptionsData.CancelOnExit = False
                  OptionsData.DeletingConfirmation = False
                  OptionsView.Navigator = True
                  OptionsView.CellAutoHeight = True
                  OptionsView.Footer = True
                  OptionsView.GroupByBox = False
                  object FIsWorkItem: TcxGridDBColumn
                    Caption = #26631#35782
                    PropertiesClassName = 'TcxCheckBoxProperties'
                    Properties.DisplayUnchecked = 'False'
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 37
                    DataBinding.FieldName = 'FIsWorkItem'
                  end
                  object FCarryOut: TcxGridDBColumn
                    Caption = #25191#34892#29366#24577
                    PropertiesClassName = 'TcxComboBoxProperties'
                    Properties.Items.Strings = (
                      #31561#24453
                      #25191#34892
                      #21457#27605
                      #32467#26696
                      #26242#20572
                      '')
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 60
                    DataBinding.FieldName = 'FCarryOut'
                  end
                  object FFileNo: TcxGridDBColumn
                    Caption = #26723#26696#21495
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 131
                    DataBinding.FieldName = 'FFileNo'
                  end
                  object FItemNumber: TcxGridDBColumn
                    Caption = #22270#21495
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 87
                    DataBinding.FieldName = 'FItemNumber'
                  end
                  object FBranch: TcxGridDBColumn
                    Caption = #20998#21495
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 62
                    DataBinding.FieldName = 'FBranch'
                  end
                  object FClientFullName: TcxGridDBColumn
                    Caption = #29992#25143#20840#21517#31216
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 257
                    DataBinding.FieldName = 'FClientFullName'
                  end
                  object FClientShortName: TcxGridDBColumn
                    Caption = #29992#25143#31616#31216
                    PropertiesClassName = 'TcxButtonEditProperties'
                    Properties.Buttons = <
                      item
                        Default = True
                        Kind = bkEllipsis
                      end>
                    Properties.OnButtonClick = FClientShortNamePropertiesButtonClick
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 175
                    DataBinding.FieldName = 'FClientShortName'
                  end
                  object FProductName: TcxGridDBColumn
                    Caption = #20135#21697#31867#21035
                    PropertiesClassName = 'TcxButtonEditProperties'
                    Properties.Buttons = <
                      item
                        Default = True
                        Kind = bkEllipsis
                      end>
                    Properties.OnButtonClick = FProductNamePropertiesButtonClick
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 127
                    DataBinding.FieldName = 'FProductName'
                  end
                  object FItemModel: TcxGridDBColumn
                    Caption = #35268#26684#22411#21495
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 134
                    DataBinding.FieldName = 'FItemModel'
                  end
                  object FItemQry: TcxGridDBColumn
                    Caption = #21488#25968
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Moving = False
                    Width = 34
                    DataBinding.FieldName = 'FItemQry'
                  end
                  object FItemNo: TcxGridDBColumn
                    Caption = #39033#30446#20195#21495
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 53
                    DataBinding.FieldName = 'FItemNo'
                  end
                  object FWorkData: TcxGridDBColumn
                    Caption = #20219#21153#37096#38376#20449#24687
                    PropertiesClassName = 'TcxButtonEditProperties'
                    Properties.Buttons = <
                      item
                        Default = True
                        Kind = bkEllipsis
                      end>
                    Properties.OnButtonClick = FWorkDataPropertiesButtonClick
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 122
                    DataBinding.FieldName = 'FWorkData'
                  end
                  object FFactoryNum: TcxGridDBColumn
                    Caption = #20986#21378#32534#21495
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 68
                    DataBinding.FieldName = 'FFactoryNum'
                  end
                  object FItemLb: TcxGridDBColumn
                    Caption = #22270#21495#31867#21035
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 53
                    DataBinding.FieldName = 'FItemLb'
                  end
                  object FStockNum: TcxGridDBColumn
                    Caption = #20837#24211#28165#21333#32534#30446#21495
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 89
                    DataBinding.FieldName = 'FStockNum'
                  end
                  object FFactoryDate: TcxGridDBColumn
                    Caption = #20986#21378#26085#26399
                    PropertiesClassName = 'TcxDateEditProperties'
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 82
                    DataBinding.FieldName = 'FFactoryDate'
                  end
                  object FFirstLogging: TcxGridDBColumn
                    Caption = #26032#22686#20154
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 41
                    DataBinding.FieldName = 'FFirstLogging'
                  end
                  object FFirstLoggingDate: TcxGridDBColumn
                    Caption = #26032#22686#26085#26399
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 77
                    DataBinding.FieldName = 'FFirstLoggingDate'
                  end
                  object FNewestAlter: TcxGridDBColumn
                    Caption = #20462#25913#20154
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 41
                    DataBinding.FieldName = 'FNewestAlter'
                  end
                  object cxGVDBColumn4: TcxGridDBColumn
                    Caption = #20462#25913#26085#26399
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 74
                    DataBinding.FieldName = 'FNewestAlterDate'
                  end
                  object FItemId: TcxGridDBColumn
                    Caption = 'ID'
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 66
                    DataBinding.FieldName = 'FItemId'
                  end
                  object FProductID: TcxGridDBColumn
                    Caption = #20135#21697'ID'
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
                    Width = 40
                    DataBinding.FieldName = 'FProductID'
                  end
                  object FDepartmentID: TcxGridDBColumn
                    Caption = #37096#38376'ID'
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
                    DataBinding.FieldName = 'FDepartmentID'
                  end
                end
                object cxGL: TcxGridLevel
                  GridView = cxGV
                end
              end
            end
          end
          object TS_Item: TRzTabSheet
            Color = 14935011
            Caption = #39033#30446#20449#24687
            object cxGrid_2: TcxGrid
              Left = 0
              Top = 0
              Width = 917
              Height = 518
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              PopupMenu = PM
              TabOrder = 0
              OnContextPopup = cxGrid_2ContextPopup
              object cxGV_2: TcxGridDBTableView
                OnDblClick = Act_PlanTrackListExecute
                DataController.DataSource = DS_Mdata
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Format = '0.0000'
                    Kind = skSum
                    FieldName = 'FESPWet'
                    Column = FESPWet
                  end
                  item
                    Format = '0.0000'
                    Kind = skSum
                    FieldName = 'FFinshESPWet'
                    Column = FFinshESPWet
                  end
                  item
                    Format = '0.0000'
                    Kind = skSum
                    FieldName = 'FFinshESPShipWet'
                    Column = FFinshESPShipWet
                  end
                  item
                    Format = '0.0000'
                    Kind = skSum
                    FieldName = 'FEspWeigth'
                    Column = FEspWeigth
                  end
                  item
                    Format = '0.000'
                    Kind = skSum
                    FieldName = 'FFrameWet'
                    Column = FFrameWet
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
                OnCustomDrawCell = cxGV_2CustomDrawCell
                OptionsData.Appending = True
                OptionsData.CancelOnExit = False
                OptionsData.DeletingConfirmation = False
                OptionsView.Navigator = True
                OptionsView.CellAutoHeight = True
                OptionsView.Footer = True
                OptionsView.GroupByBox = False
                object FItemNumber_4: TcxGridDBColumn
                  Caption = #22270#21495
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Options.Sorting = False
                  Width = 61
                  DataBinding.FieldName = 'FItemNumber'
                end
                object FBranch_4: TcxGridDBColumn
                  Caption = #20998#21495
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 37
                  DataBinding.FieldName = 'FBranch'
                end
                object FBranchFileNo_4: TcxGridDBColumn
                  Caption = #20998#26723#26696#21495
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 93
                  DataBinding.FieldName = 'FBranchFileNo'
                end
                object FClientFullName_4: TcxGridDBColumn
                  Caption = #29992#25143#20840#21517#31216
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 287
                  DataBinding.FieldName = 'FClientFullName'
                end
                object FEspWeigth: TcxGridDBColumn
                  Caption = #26412#20307#39044#20272#37325#37327
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 78
                  DataBinding.FieldName = 'FEspWeigth'
                end
                object FFrameWet: TcxGridDBColumn
                  Caption = #29616#22330#25340#26694
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 65
                  DataBinding.FieldName = 'FFrameWet'
                end
                object FItemPlanDate: TcxGridDBColumn
                  Caption = #25490#20135#26085#26399
                  PropertiesClassName = 'TcxButtonEditProperties'
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  Properties.OnButtonClick = FItemPlanDatePropertiesButtonClick
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Options.Sorting = False
                  Width = 53
                  DataBinding.FieldName = 'FItemPlanDate'
                end
                object FESPWet: TcxGridDBColumn
                  Caption = #26412#20307#21046#20316#37325#37327
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 77
                  DataBinding.FieldName = 'FESPWet'
                end
                object FFinshESPPercent: TcxGridDBColumn
                  Caption = #26412#20307#23436#24037#29575
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 65
                  DataBinding.FieldName = 'FFinshESPPercent'
                end
                object FFinshESPWet: TcxGridDBColumn
                  Caption = #26412#20307#23436#25104#37325#37327
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 77
                  DataBinding.FieldName = 'FFinshESPWet'
                end
                object FFinshESPShipPercent: TcxGridDBColumn
                  Caption = #26412#20307#21457#36135#29575
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 65
                  DataBinding.FieldName = 'FFinshESPShipPercent'
                end
                object FFinshESPShipWet: TcxGridDBColumn
                  Caption = #26412#20307#21457#36135#37325#37327
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 77
                  DataBinding.FieldName = 'FFinshESPShipWet'
                end
                object FEspFinshDate: TcxGridDBColumn
                  Caption = #26412#20307#23436#25104#26085#26399
                  PropertiesClassName = 'TcxDateEditProperties'
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Options.Sorting = False
                  Width = 77
                  DataBinding.FieldName = 'FEspFinshDate'
                end
                object FPowerFinshDate: TcxGridDBColumn
                  Caption = #30005#28304#23436#25104#26085#26399
                  PropertiesClassName = 'TcxDateEditProperties'
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Options.Moving = False
                  Width = 77
                  DataBinding.FieldName = 'FPowerFinshDate'
                end
                object FItemShipDate: TcxGridDBColumn
                  Caption = #21457#27605#26085#26399
                  PropertiesClassName = 'TcxButtonEditProperties'
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  Properties.OnButtonClick = FItemShipDatePropertiesButtonClick
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 53
                  DataBinding.FieldName = 'FItemShipDate'
                end
                object FArea: TcxGridDBColumn
                  Caption = #29983#20135#39033#30446#21306#22495
                  PropertiesClassName = 'TcxButtonEditProperties'
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  Properties.OnButtonClick = FAreaPropertiesButtonClick
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 77
                  DataBinding.FieldName = 'FArea'
                end
                object FESP3003: TcxGridDBColumn
                  Caption = #26412#20307#29983#20135#25104#26412#23545#35937
                  PropertiesClassName = 'TcxButtonEditProperties'
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  Properties.OnButtonClick = FESP3003PropertiesButtonClick
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 311
                  DataBinding.FieldName = 'FESP3003'
                end
                object FPower3003: TcxGridDBColumn
                  Caption = #30005#28304#29983#20135#25104#26412#23545#35937
                  PropertiesClassName = 'TcxButtonEditProperties'
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  Properties.OnButtonClick = FPower3003PropertiesButtonClick
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 260
                  DataBinding.FieldName = 'FPower3003'
                end
                object FPlanMap: TcxGridDBColumn
                  Caption = #20986#22270#35745#21010
                  PropertiesClassName = 'TcxButtonEditProperties'
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  Properties.OnButtonClick = cxGridDBColumn8PropertiesButtonClick
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Options.Sorting = False
                  Width = 340
                  DataBinding.FieldName = 'FPlanMap'
                end
                object FPower3003ID: TcxGridDBColumn
                  Caption = #30005#28304#29983#20135#25104#26412#23545#35937'ID'
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 114
                  DataBinding.FieldName = 'FPower3003ID'
                end
                object FESP3003ID: TcxGridDBColumn
                  Caption = #26412#20307#29983#20135#25104#26412#23545#35937'ID'
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  DataBinding.FieldName = 'FESP3003ID'
                end
              end
              object cxGL_2: TcxGridLevel
                GridView = cxGV_2
              end
            end
          end
          object TS_Pact: TRzTabSheet
            Color = 14935011
            Caption = #21512#21516#20449#24687
            object cxGrid_3: TcxGrid
              Left = 0
              Top = 0
              Width = 917
              Height = 518
              Align = alClient
              PopupMenu = PM
              TabOrder = 0
              OnContextPopup = cxGrid_3ContextPopup
              object cxGV_3: TcxGridDBTableView
                OnDblClick = Act_PlanTrackListExecute
                DataController.DataSource = DS_Mdata
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
                OptionsData.Appending = True
                OptionsData.CancelOnExit = False
                OptionsData.DeletingConfirmation = False
                OptionsView.Navigator = True
                OptionsView.CellAutoHeight = True
                OptionsView.Footer = True
                OptionsView.GroupByBox = False
                object FItemNumber_3: TcxGridDBColumn
                  Caption = #22270#21495
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Options.Sorting = False
                  Width = 61
                  DataBinding.FieldName = 'FItemNumber'
                end
                object FBranch_3: TcxGridDBColumn
                  Caption = #20998#21495
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 37
                  DataBinding.FieldName = 'FBranch'
                end
                object FPactNo: TcxGridDBColumn
                  Caption = #21512#21516#21495
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 133
                  DataBinding.FieldName = 'FPactNo'
                end
                object FContractAmount: TcxGridDBColumn
                  Caption = #21512#21516#37329#39069
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 108
                  DataBinding.FieldName = 'FContractAmount'
                end
                object FMoney: TcxGridDBColumn
                  Caption = #22238#27454#37096#21512#21516#24635#37329#39069
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 101
                  DataBinding.FieldName = 'FMoney'
                end
                object FreceivableMoney: TcxGridDBColumn
                  Caption = #22238#27454#37096#22238#27454#37329#39069
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 101
                  DataBinding.FieldName = 'FreceivableMoney'
                end
                object FreceivableMoneyPrect: TcxGridDBColumn
                  Caption = #22238#27454#27604#20363
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 53
                  DataBinding.FieldName = 'FreceivableMoneyPrect'
                end
                object FPactFinishDate: TcxGridDBColumn
                  Caption = #35745#21010#23436#24037#26399
                  PropertiesClassName = 'TcxDateEditProperties'
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 93
                  DataBinding.FieldName = 'FPactFinishDate'
                end
                object FDeliveryDate: TcxGridDBColumn
                  Caption = #21512#21516#20132#36135#26399
                  PropertiesClassName = 'TcxDateEditProperties'
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 88
                  DataBinding.FieldName = 'FDeliveryDate'
                end
                object FPactPatment: TcxGridDBColumn
                  Caption = #21512#21516#20184#27454#26041#24335
                  PropertiesClassName = 'TcxButtonEditProperties'
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  Properties.OnButtonClick = FPactPatmentPropertiesButtonClick
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Options.Sorting = False
                  Width = 401
                  DataBinding.FieldName = 'FPactPatment'
                end
                object FInstallRange: TcxGridDBColumn
                  Caption = #23433#35013#33539#30068
                  PropertiesClassName = 'TcxButtonEditProperties'
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  Properties.OnButtonClick = FInstallRangePropertiesButtonClick
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 155
                  DataBinding.FieldName = 'FInstallRange'
                end
              end
              object cxGL_3: TcxGridLevel
                GridView = cxGV_3
              end
            end
          end
          object TS_Contact: TRzTabSheet
            Color = 14935011
            Caption = #32852#31995#20154#20449#24687
            object cxGrid_4: TcxGrid
              Left = 0
              Top = 0
              Width = 917
              Height = 518
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              PopupMenu = PM
              TabOrder = 0
              OnContextPopup = cxGrid_4ContextPopup
              object cxGV_4: TcxGridDBTableView
                DataController.DataSource = DS_Mdata
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
                OptionsData.Appending = True
                OptionsData.CancelOnExit = False
                OptionsData.DeletingConfirmation = False
                OptionsView.Navigator = True
                OptionsView.CellAutoHeight = True
                OptionsView.Footer = True
                OptionsView.GroupByBox = False
                object FItemNumber_2: TcxGridDBColumn
                  Caption = #22270#21495
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Options.Sorting = False
                  Width = 61
                  DataBinding.FieldName = 'FItemNumber'
                end
                object FBranch_2: TcxGridDBColumn
                  Caption = #20998#21495
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 37
                  DataBinding.FieldName = 'FBranch'
                end
                object FPM: TcxGridDBColumn
                  Caption = #39033#30446#32463#29702
                  PropertiesClassName = 'TcxButtonEditProperties'
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  Properties.OnButtonClick = FPMPropertiesButtonClick
                  Properties.OnEditValueChanged = FPMPropertiesEditValueChanged
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Options.Sorting = False
                  Width = 53
                  DataBinding.FieldName = 'FPM'
                end
                object FPMPhone: TcxGridDBColumn
                  Caption = #39033#30446#32463#29702#30005#35805
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
                  Options.Moving = False
                  Width = 77
                  DataBinding.FieldName = 'FPMPhone'
                end
                object FDesignLeader: TcxGridDBColumn
                  Caption = #35774#24635
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 49
                  DataBinding.FieldName = 'FDesignLeader'
                end
                object FEspDesign: TcxGridDBColumn
                  Caption = #26412#20307#35774#24635
                  PropertiesClassName = 'TcxButtonEditProperties'
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  Properties.OnButtonClick = FEspDesignPropertiesButtonClick
                  Properties.OnEditValueChanged = FEspDesignPropertiesEditValueChanged
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 53
                  DataBinding.FieldName = 'FEspDesign'
                end
                object FEspDesignPhone: TcxGridDBColumn
                  Caption = #26412#20307#35774#24635#30005#35805
                  PropertiesClassName = 'TcxButtonEditProperties'
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  Properties.OnButtonClick = FEspDesignPhonePropertiesButtonClick
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Options.Sorting = False
                  Width = 77
                  DataBinding.FieldName = 'FEspDesignPhone'
                end
                object FPowerDesign: TcxGridDBColumn
                  Caption = #30005#28304#35774#24635
                  PropertiesClassName = 'TcxButtonEditProperties'
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  Properties.OnButtonClick = FPowerDesignPropertiesButtonClick
                  Properties.OnEditValueChanged = FPowerDesignPropertiesEditValueChanged
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 64
                  DataBinding.FieldName = 'FPowerDesign'
                end
                object FPowerDesignPhone: TcxGridDBColumn
                  Caption = #30005#28304#35774#24635#30005#35805
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
                  Width = 89
                  DataBinding.FieldName = 'FPowerDesignPhone'
                end
                object FPlanner: TcxGridDBColumn
                  Caption = #29983#20135#32463#29702
                  PropertiesClassName = 'TcxButtonEditProperties'
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  Properties.OnButtonClick = FPlannerPropertiesButtonClick
                  Properties.OnEditValueChanged = FPlannerPropertiesEditValueChanged
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Options.Sorting = False
                  Width = 62
                  DataBinding.FieldName = 'FPlanner'
                end
                object FPlannerPhone: TcxGridDBColumn
                  Caption = #29983#20135#32463#29702#30005#35805
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
                  DataBinding.FieldName = 'FPlannerPhone'
                end
                object FLocaleer: TcxGridDBColumn
                  Caption = #29616#22330#32463#29702
                  PropertiesClassName = 'TcxButtonEditProperties'
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  Properties.OnButtonClick = FLocaleerPropertiesButtonClick
                  Properties.OnEditValueChanged = FLocaleerPropertiesEditValueChanged
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 65
                  DataBinding.FieldName = 'FLocaleer'
                end
                object FLocaleerPhone: TcxGridDBColumn
                  Caption = #29616#22330#32463#29702#30005#35805
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
                  Width = 82
                  DataBinding.FieldName = 'FLocaleerPhone'
                end
                object FShipAddress: TcxGridDBColumn
                  Caption = #25910#36135#22320#22336
                  PropertiesClassName = 'TcxButtonEditProperties'
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  Properties.OnButtonClick = FShipAddressPropertiesButtonClick
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 170
                  DataBinding.FieldName = 'FShipAddress'
                end
                object FConsignee: TcxGridDBColumn
                  Caption = #25910#36135#20154
                  PropertiesClassName = 'TcxButtonEditProperties'
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  Properties.OnButtonClick = FConsigneePropertiesButtonClick
                  Properties.OnEditValueChanged = FConsigneePropertiesEditValueChanged
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 49
                  DataBinding.FieldName = 'FConsignee'
                end
                object FConsigneePhone: TcxGridDBColumn
                  Caption = #25910#36135#20154#30005#35805
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
                  Width = 65
                  DataBinding.FieldName = 'FConsigneePhone'
                end
              end
              object cxGL_4: TcxGridLevel
                GridView = cxGV_4
              end
            end
          end
          object TS_Qry: TRzTabSheet
            Color = 14935011
            Caption = #27719#24635#32479#35745
            PopupMenu = PM_Qry
            object Panel4: TPanel
              Left = 0
              Top = 481
              Width = 917
              Height = 37
              Align = alBottom
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 0
              object ToolBar2: TToolBar
                Left = 0
                Top = 0
                Width = 917
                Height = 25
                Caption = 'ToolBar_HItem'
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
                Transparent = True
              end
              object Edit1: TEdit
                Left = 23
                Top = 3
                Width = 738
                Height = 22
                TabOrder = 1
                Text = 'Edit1'
              end
            end
            object cxGrid_Qry: TcxGrid
              Left = 0
              Top = 0
              Width = 917
              Height = 408
              Align = alClient
              PopupMenu = PM
              TabOrder = 1
              OnContextPopup = cxGrid_QryContextPopup
              object cxGV_Qry: TcxGridDBTableView
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
                OptionsData.Appending = True
                OptionsData.CancelOnExit = False
                OptionsData.DeletingConfirmation = False
                OptionsView.Navigator = True
                OptionsView.CellAutoHeight = True
                OptionsView.Footer = True
                OptionsView.GroupByBox = False
              end
              object cxGL_Qry: TcxGridLevel
                GridView = cxGV_Qry
              end
            end
            object PC_Qry: TPageControl
              Left = 0
              Top = 408
              Width = 917
              Height = 73
              ActivePage = TS_FNot_TJWet_parts
              Align = alBottom
              MultiLine = True
              PopupMenu = PM_Qry
              TabOrder = 2
              OnChange = PC_QryChange
              object TS_FMakePartsWet: TTabSheet
                Caption = #23436#25104#20219#21153#37327#27719#24635#34920
              end
              object TS_FMakePercentWet_Item: TTabSheet
                Caption = #23436#25104#20219#21153#37327#26126#32454#34920
              end
              object TS_FMakePartsWet_Parts: TTabSheet
                Caption = #23436#25104#20219#21153#37327#27719#24635#34920'('#25353#37096#20214')'
                ImageIndex = 8
              end
              object TS_FMakePercentWet_Item_Parts: TTabSheet
                Caption = #23436#25104#20219#21153#37327#26126#32454#34920'('#25353#37096#20214')'
                ImageIndex = 9
              end
              object TS_FMax_TotalMakePercentWet: TTabSheet
                Caption = #26410#23436#25104#20219#21153#37327#27719#24635
                ImageIndex = 4
              end
              object TS_FMax_not_TotalMakePercentWet: TTabSheet
                Caption = #26410#23436#25104#20219#21153#37327#26126#32454#34920
                ImageIndex = 5
              end
              object TS_FMax_TotalMakePercentWet_Parts: TTabSheet
                Caption = #26410#23436#25104#20219#21153#37327#27719#24635'('#25353#37096#20214')'
                ImageIndex = 6
              end
              object TS_FMax_not_TotalMakePercentWet_Parts: TTabSheet
                Caption = #26410#23436#25104#20219#21153#37327#26126#32454#34920'('#25353#37096#20214')'
                ImageIndex = 7
              end
              object TS_FPlanDate: TTabSheet
                Caption = #26032#22686#25490#20135#39033#30446#27719#24635#34920'('#25353#26376')'
                ImageIndex = 5
              end
              object TS_FPlanDate_Item: TTabSheet
                Caption = #26032#22686#25490#20135#39033#30446#26126#32454#34920'('#25353#26376#25353#39033#30446')'
                ImageIndex = 2
              end
              object TS_FNot_TJWet: TTabSheet
                Caption = #26410#23436#25104#37327#25353#39033#30446'('#21547#39044#20272')'
                ImageIndex = 10
              end
              object TS_FNot_TJWet_parts: TTabSheet
                Caption = #26410#23436#25104#37327#25353#39033#30446'('#21547#39044#20272')'#65288#25353#37096#20214#65289
                ImageIndex = 11
              end
            end
          end
          object TS_Tack: TRzTabSheet
            Color = 14935011
            Caption = #29983#20135#25490#20135#34920
            object cxGrid_TaskList: TcxGrid
              Left = 0
              Top = 153
              Width = 917
              Height = 365
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              PopupMenu = PM
              TabOrder = 0
              OnContextPopup = cxGrid_TaskListContextPopup
              object cxGV_TaskList: TcxGridDBTableView
                OnDblClick = Act_PlanWeekExecute
                DataController.DataSource = DS_Mdata_TaskList
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Format = '0.0000'
                    Kind = skSum
                    FieldName = 'FMakeWet'
                    Column = FMakeWet_Track
                  end
                  item
                    Format = '0.0000'
                    Kind = skSum
                    FieldName = 'FMakeFinshWet'
                    Column = FMakeFinshWet_Track
                  end
                  item
                    Format = '0.00'
                    Kind = skSum
                    FieldName = 'FShipFinshWet'
                    Column = FShipFinshWet_Track
                  end
                  item
                    Format = '0'
                    Kind = skSum
                    FieldName = 'FPackFinshQry'
                    Column = FPackFinshQry_Track
                  end
                  item
                    Format = '0'
                    Kind = skSum
                    FieldName = 'FShipFinshQry'
                    Column = FShipFinshQry_Track
                  end
                  item
                    Format = '0'
                    Kind = skSum
                    FieldName = 'FPlanPackQry'
                    Column = FPlanPackQry_Track
                  end
                  item
                    Format = '0'
                    Kind = skSum
                    FieldName = 'FPlanPackQry'
                    Column = FPlanPackQry_Track
                  end
                  item
                    Format = '0.0000'
                    Kind = skSum
                    FieldName = 'FPlanWet'
                    Column = FPlanWet_Track
                  end
                  item
                    Format = '0.0000'
                    Kind = skSum
                    FieldName = 'FStockPartsWet'
                    Column = FStockPartsWet_Track
                  end
                  item
                    Format = '0.0000'
                    Kind = skSum
                    FieldName = 'FNot_MakeFinshWet'
                    Column = FNot_MakeFinshWet_Track
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
                OnCustomDrawCell = cxGV_TaskListCustomDrawCell
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsSelection.MultiSelect = True
                OptionsView.Navigator = True
                OptionsView.Footer = True
                OptionsView.GroupByBox = False
                object FBranchItemNumber_Track: TcxGridDBColumn
                  Caption = #22270#21495
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 58
                  DataBinding.FieldName = 'FBranchItemNumber'
                end
                object FPartsCode_Track: TcxGridDBColumn
                  Caption = #37096#20214#21495
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
                  Options.Moving = False
                  Options.Sorting = False
                  Width = 41
                  DataBinding.FieldName = 'FPartsCode'
                end
                object FPlanPartsName_Track: TcxGridDBColumn
                  Caption = #37096#20214#21517#31216
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
                  Options.Moving = False
                  Options.Sorting = False
                  Width = 119
                  DataBinding.FieldName = 'FPlanPartsName'
                end
                object FAgentShortName_Track: TcxGridDBColumn
                  Caption = #21046#20316#21333#20301
                  PropertiesClassName = 'TcxTextEditProperties'
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Options.Sorting = False
                  Width = 85
                  DataBinding.FieldName = 'FAgentShortName'
                end
                object FStockPartsWet_Track: TcxGridDBColumn
                  Caption = #28165#21333#37325#37327
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 73
                  DataBinding.FieldName = 'FStockPartsWet'
                end
                object FPlanWet_Track: TcxGridDBColumn
                  Caption = #39044#20272#37325#37327
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DecimalPlaces = 4
                  Properties.ValidateOnEnter = True
                  Properties.IsDisplayFormatAssigned = True
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 69
                  DataBinding.FieldName = 'FPlanWet'
                end
                object FMakeWet_Track: TcxGridDBColumn
                  Caption = #37096#20214#37325#37327'(t)'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DecimalPlaces = 4
                  Properties.ValidateOnEnter = True
                  Properties.IsDisplayFormatAssigned = True
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 72
                  DataBinding.FieldName = 'FMakeWet'
                end
                object FMakeFinshWet_Track: TcxGridDBColumn
                  Caption = #23436#24037#37325#37327'(t)'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DecimalPlaces = 4
                  Properties.ValidateOnEnter = True
                  Properties.IsDisplayFormatAssigned = True
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 73
                  DataBinding.FieldName = 'FMakeFinshWet'
                end
                object FMakeFinshPercent_Track: TcxGridDBColumn
                  Caption = #23436#24037#29575'%'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.ValidateOnEnter = True
                  Properties.IsDisplayFormatAssigned = True
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 41
                  DataBinding.FieldName = 'FMakeFinshPercent'
                end
                object FNot_MakeFinshWet_Track: TcxGridDBColumn
                  Caption = #26410#23436#24037#37325#37327'(t)'
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 65
                  DataBinding.FieldName = 'FNot_MakeFinshWet'
                end
                object FNot_MakeFinshPercent_Track: TcxGridDBColumn
                  Caption = #26410#23436#24037#29575
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 53
                  DataBinding.FieldName = 'FNot_MakeFinshPercent'
                end
                object FShipFinshWet_Track: TcxGridDBColumn
                  Caption = #21457#36135#37325#37327
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DecimalPlaces = 4
                  Properties.ValidateOnEnter = True
                  Properties.IsDisplayFormatAssigned = True
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 69
                  DataBinding.FieldName = 'FShipFinshWet'
                end
                object FShipFinshPercent_Track: TcxGridDBColumn
                  Caption = #21457#36135#29575
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.ValidateOnEnter = True
                  Properties.IsDisplayFormatAssigned = True
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 41
                  DataBinding.FieldName = 'FShipFinshPercent'
                end
                object FPlanPackQry_Track: TcxGridDBColumn
                  Caption = #24635#21253#35013#20214#25968
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DecimalPlaces = 0
                  Properties.ValidateOnEnter = True
                  Properties.IsDisplayFormatAssigned = True
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 65
                  DataBinding.FieldName = 'FPlanPackQry'
                end
                object FPackFinshQry_Track: TcxGridDBColumn
                  Caption = #21253#35013#23436#27605#25968
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DecimalPlaces = 0
                  Properties.ValidateOnEnter = True
                  Properties.IsDisplayFormatAssigned = True
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 65
                  DataBinding.FieldName = 'FPackFinshQry'
                end
                object FShipFinshQry_Track: TcxGridDBColumn
                  Caption = #21457#36135#23436#27605#25968
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DecimalPlaces = 0
                  Properties.ValidateOnEnter = True
                  Properties.IsDisplayFormatAssigned = True
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 65
                  DataBinding.FieldName = 'FShipFinshQry'
                end
                object FFinishDateShow_Track: TcxGridDBColumn
                  Caption = #35745#21010#23436#25104#26085#26399
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 100
                  DataBinding.FieldName = 'FFinishDateShow'
                end
                object FPlanDate_Track: TcxGridDBColumn
                  Caption = #25490#20135#26085#26399
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 75
                  DataBinding.FieldName = 'FPlanDate'
                end
                object FPlanDateShow_Track: TcxGridDBColumn
                  Caption = #25490#20135#26085#26399
                  FooterAlignmentHorz = taRightJustify
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 104
                  DataBinding.FieldName = 'FPlanDateShow'
                end
                object FMakeFinshDate_Track: TcxGridDBColumn
                  Caption = #29983#20135#23436#24037#26085#26399
                  PropertiesClassName = 'TcxDateEditProperties'
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Options.Sorting = False
                  Width = 77
                  DataBinding.FieldName = 'FMakeFinshDate'
                end
                object FShipFinshDate_Track: TcxGridDBColumn
                  Caption = #21457#36135#23436#27605#26085#26399
                  PropertiesClassName = 'TcxDateEditProperties'
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Options.Sorting = False
                  Width = 77
                  DataBinding.FieldName = 'FShipFinshDate'
                end
                object FPartsSort_Track: TcxGridDBColumn
                  Caption = #20998#31867
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  DataBinding.FieldName = 'FPartsSort'
                end
                object FPlanPartsSort_Track: TcxGridDBColumn
                  Caption = #37096#20214#31867#21035
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  DataBinding.FieldName = 'FPlanPartsSort'
                end
                object FPlanPartsID_Track: TcxGridDBColumn
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  DataBinding.FieldName = 'FPlanPartsID'
                end
              end
              object cxGL_TaskList: TcxGridLevel
                GridView = cxGV_TaskList
              end
            end
            object RzSP_PTitem: TRzSizePanel
              Left = 0
              Top = 0
              Width = 917
              Height = 153
              Align = alTop
              HotSpotVisible = True
              Side = sdBottom
              ParentShowHint = False
              ShowHint = False
              SizeBarWidth = 7
              TabOrder = 1
              UseDockManager = False
              object cxGrid_TaskItem: TcxGrid
                Left = 0
                Top = 0
                Width = 917
                Height = 145
                Align = alClient
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                PopupMenu = PM
                TabOrder = 0
                OnContextPopup = cxGrid_TaskItemContextPopup
                object cxGV_TaskItem: TcxGridDBTableView
                  DataController.DataSource = DS_Mdata_TaskItem
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  NavigatorButtons.ConfirmDelete = False
                  NavigatorButtons.PriorPage.Visible = False
                  NavigatorButtons.NextPage.Visible = False
                  NavigatorButtons.Insert.Visible = False
                  NavigatorButtons.Delete.Visible = False
                  NavigatorButtons.Edit.Visible = False
                  NavigatorButtons.Post.Visible = True
                  NavigatorButtons.Cancel.Visible = False
                  NavigatorButtons.Refresh.Visible = False
                  NavigatorButtons.SaveBookmark.Visible = False
                  NavigatorButtons.GotoBookmark.Visible = False
                  NavigatorButtons.Filter.Visible = False
                  OptionsData.Appending = True
                  OptionsData.CancelOnExit = False
                  OptionsData.DeletingConfirmation = False
                  OptionsView.Navigator = True
                  OptionsView.GroupByBox = False
                  object FBranchFileNo_PTItem: TcxGridDBColumn
                    Caption = #26723#26696#21495
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 96
                    DataBinding.FieldName = 'FBranchFileNo'
                  end
                  object FBranchItemNumber_PTItem: TcxGridDBColumn
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
                    Width = 61
                    DataBinding.FieldName = 'FBranchItemNumber'
                  end
                  object FClientShortName_PTItem: TcxGridDBColumn
                    Caption = #29992#25143#31616#31216
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 136
                    DataBinding.FieldName = 'FClientShortName'
                  end
                  object FESPWet_PTItem: TcxGridDBColumn
                    Caption = #26412#20307#37325#37327
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 77
                    DataBinding.FieldName = 'FESPWet'
                  end
                  object FFrameWet_PTItem: TcxGridDBColumn
                    Caption = #29616#22330#25340#26694
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 60
                    DataBinding.FieldName = 'FFrameWet'
                  end
                  object FFinshESPWet_PTItem: TcxGridDBColumn
                    Caption = #23436#25104#37325#37327
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 77
                    DataBinding.FieldName = 'FFinshESPWet'
                  end
                  object FFinshESPPercent_PTItem: TcxGridDBColumn
                    Caption = #23436#24037#29575
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.DisplayFormat = '0.00%;0.00%'
                    Properties.ValidateOnEnter = True
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 41
                    DataBinding.FieldName = 'FFinshESPPercent'
                  end
                  object FFinshESPShipWet_PTItem: TcxGridDBColumn
                    Caption = #21457#36135#23436#27605#37325#37327
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 77
                    DataBinding.FieldName = 'FFinshESPShipWet'
                  end
                  object FFinshESPShipPercent_PTItem: TcxGridDBColumn
                    Caption = #21457#36135#29575
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.DisplayFormat = '0.00%;0.00%'
                    Properties.ValidateOnEnter = True
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 65
                    DataBinding.FieldName = 'FFinshESPShipPercent'
                  end
                  object FESPPackQry_PTItem: TcxGridDBColumn
                    Caption = #21253#35013#24635#20214#25968
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 65
                    DataBinding.FieldName = 'FESPPackQry'
                  end
                  object FFinshESPPackQry_PTItem: TcxGridDBColumn
                    Caption = #21253#35013#23436#27605#20214#25968
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 77
                    DataBinding.FieldName = 'FFinshESPPackQry'
                  end
                  object FFinshESPShipQry_PTItem: TcxGridDBColumn
                    Caption = #21457#36135#23436#27605#20214#25968
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 77
                    DataBinding.FieldName = 'FFinshESPShipQry'
                  end
                  object FPlanTaskWrite_PTItem: TcxGridDBColumn
                    Caption = #22635#21333
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 48
                    DataBinding.FieldName = 'FPlanTaskWrite'
                  end
                  object FPlanTaskWriteDate_PTItem: TcxGridDBColumn
                    Caption = #22635#21333#26085#26399
                    PropertiesClassName = 'TcxDateEditProperties'
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 74
                    DataBinding.FieldName = 'FPlanTaskWriteDate'
                  end
                  object FDeliveryDate_PTItem: TcxGridDBColumn
                    Caption = #21512#21516#20132#36135#26399
                    PropertiesClassName = 'TcxDateEditProperties'
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 74
                    DataBinding.FieldName = 'FDeliveryDate'
                  end
                  object FPactFinishDate_PTItem: TcxGridDBColumn
                    Caption = #21512#21516#23436#24037#26399
                    PropertiesClassName = 'TcxDateEditProperties'
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 71
                    DataBinding.FieldName = 'FPactFinishDate'
                  end
                  object FPlanTaskStatusNotes: TcxGridDBColumn
                    Caption = #21333#25454#29366#24577
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Options.Sorting = False
                    Width = 53
                    DataBinding.FieldName = 'FShipStatusNotes'
                  end
                  object FPlanner_PTItem: TcxGridDBColumn
                    Caption = #29983#20135#19987#32844
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 53
                    DataBinding.FieldName = 'FPlanner'
                  end
                  object FFactoryNum_PTItem: TcxGridDBColumn
                    Caption = #20986#21378#32534#21495
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 76
                    DataBinding.FieldName = 'FFactoryNum'
                  end
                  object FPlanTaskRemark_PTItem: TcxGridDBColumn
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
                    Width = 89
                    DataBinding.FieldName = 'FPlanTaskRemark'
                  end
                  object FPlanTaskSubmitDate_PTItem: TcxGridDBColumn
                    Caption = #25552#20132#26085#26399
                    PropertiesClassName = 'TcxDateEditProperties'
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 53
                    DataBinding.FieldName = 'FPlanTaskSubmitDate'
                  end
                  object FPlanTask_PTItem: TcxGridDBColumn
                    Caption = #26657#23545
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 46
                    DataBinding.FieldName = 'FPlanTaskCheck'
                  end
                  object FPlanTaskCheck_PTItem: TcxGridDBColumn
                    Caption = #26657#23545#26085#26399
                    PropertiesClassName = 'TcxDateEditProperties'
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    Width = 67
                    DataBinding.FieldName = 'FPlanTaskCheck'
                  end
                  object FPlanTaskItemID_PTItem: TcxGridDBColumn
                    FooterAlignmentHorz = taCenter
                    HeaderAlignmentHorz = taCenter
                    HeaderGlyphAlignmentHorz = taCenter
                    Options.Editing = False
                    Options.Filtering = False
                    DataBinding.FieldName = 'FPlanTaskItemID'
                  end
                end
                object cxGL_TaskItem: TcxGridLevel
                  GridView = cxGV_TaskItem
                end
              end
            end
          end
          object TS_PlanWeek: TRzTabSheet
            Color = 14935011
            Caption = #29983#20135#21608#25253
            object cxGrid_PlanWeek: TcxGrid
              Left = 0
              Top = 0
              Width = 917
              Height = 518
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              PopupMenu = PM
              TabOrder = 0
              OnContextPopup = cxGrid_PlanWeekContextPopup
              object cxGV_PlanWeek: TcxGridDBTableView
                DataController.DataSource = DS_Mdata_PlanWeek
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Format = '0.0000'
                    Kind = skSum
                    FieldName = 'FMakeBOMWet'
                    Column = FMakeBOMWet_PTList
                  end
                  item
                    Format = '0'
                    Kind = skSum
                    FieldName = 'FMakeBOMPackQry'
                    Column = FMakeBOMPackQry_PTList
                  end
                  item
                    Format = '0'
                    Kind = skSum
                    FieldName = 'FLastSPackQry'
                    Column = FLastPackQry_PTList
                  end
                  item
                    Format = '0'
                    Kind = skSum
                    FieldName = 'FPackQry'
                    Column = FPackQry_PTList
                  end
                  item
                    Format = '0'
                    Kind = skSum
                    FieldName = 'FTotalPackQry'
                    Column = FTotalPackQry_PTList
                  end
                  item
                    Format = '0'
                    Kind = skSum
                    FieldName = 'FLastShipQry'
                    Column = FLastShipQry_PTList
                  end
                  item
                    Format = '0'
                    Kind = skSum
                    FieldName = 'FShipQry'
                    Column = FShipQry_PTList
                  end
                  item
                    Format = '0'
                    Kind = skSum
                    FieldName = 'FTotalShipQry'
                    Column = FTotalShipQry_PTList
                  end
                  item
                    Format = '0.0000'
                    Kind = skSum
                    FieldName = 'FLastMakePercentWet'
                    Column = FLastMakePercentWet_PTList
                  end
                  item
                    Format = '0.0000'
                    Kind = skSum
                    FieldName = 'FMakePercentWet'
                    Column = FMakePercentWet_PTList
                  end
                  item
                    Format = '0.0000'
                    Kind = skSum
                    FieldName = 'FTotalMakePercentWet'
                    Column = FTotalMakePercentWet_PTList
                  end
                  item
                    Format = '0.0000'
                    Kind = skSum
                    FieldName = 'FLastShipPercentWet'
                    Column = FLastShipPercentWet_PTList
                  end
                  item
                    Format = '0.0000'
                    Kind = skSum
                    FieldName = 'FShipPercentWet'
                    Column = FShipPercentWet_PTList
                  end
                  item
                    Format = '0.0000'
                    Kind = skSum
                    FieldName = 'FTotalShipPercentWet'
                    Column = FTotalShipPercentWet_PTList
                  end
                  item
                    Format = '0.0000'
                    Kind = skSum
                    FieldName = 'FMax_TotalMakePercentWet'
                    Column = FMax_TotalMakePercentWet_PTList
                  end
                  item
                    Format = '0.0000'
                    Kind = skSum
                    FieldName = 'FMax_not_TotalMakePercentWet'
                    Column = FMax_not_TotalMakePercentWet_PTList
                  end
                  item
                    Format = '0.00'
                    Kind = skSum
                    FieldName = 'FMakePercent'
                    Column = FMakePercent_PTList
                  end
                  item
                    Format = '0.00'
                    Kind = skSum
                    FieldName = 'FShipPercent'
                    Column = FShipPercent_PTList
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
                OptionsData.Appending = True
                OptionsData.CancelOnExit = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsSelection.MultiSelect = True
                OptionsView.Navigator = True
                OptionsView.Footer = True
                OptionsView.GroupByBox = False
                object FAgentShortName_PlanWeek: TcxGridDBColumn
                  Caption = #22806#21327#29992#25143
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 131
                  DataBinding.FieldName = 'FAgentShortName'
                end
                object FPlanYearWeek_PlanWeek: TcxGridDBColumn
                  Caption = #21608#25253#26085#26399
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  SortOrder = soAscending
                  Width = 56
                  DataBinding.FieldName = 'FPlanYearWeek'
                end
                object FPlanWeekPartsName_PTList: TcxGridDBColumn
                  Caption = #21608#25253#37096#20214#21517#31216
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
                  Width = 144
                  DataBinding.FieldName = 'FPlanWeekPartsName'
                end
                object FPlanWeekPartsAdd_PTList: TcxGridDBColumn
                  Caption = #22686#34917
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 41
                  DataBinding.FieldName = 'FPlanWeekPartsAdd'
                end
                object FMakeBOMWet_PTList: TcxGridDBColumn
                  Caption = #37096#20214#37325#37327
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DecimalPlaces = 4
                  Properties.DisplayFormat = ',0.0000;-,0.0000'
                  Properties.ValidateOnEnter = True
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Options.Sorting = False
                  Width = 91
                  DataBinding.FieldName = 'FMakeBOMWet'
                end
                object FLastMakePercent_PTList: TcxGridDBColumn
                  Caption = #19978#21608#23436#25104'%'
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 65
                  DataBinding.FieldName = 'FLastMakePercent'
                end
                object FLastMakePercentWet_PTList: TcxGridDBColumn
                  Caption = #19978#21608#37325#37327
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 65
                  DataBinding.FieldName = 'FLastMakePercentWet'
                end
                object FMakePercent_PTList: TcxGridDBColumn
                  Caption = #26412#21608#23436#25104'%'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DecimalPlaces = 0
                  Properties.DisplayFormat = '0;'
                  Properties.ValidateOnEnter = True
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 65
                  DataBinding.FieldName = 'FMakePercent'
                end
                object FMakePercentWet_PTList: TcxGridDBColumn
                  Caption = #26412#21608#37325#37327
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 65
                  DataBinding.FieldName = 'FMakePercentWet'
                end
                object FTotalMakePercent_PTList: TcxGridDBColumn
                  Caption = #32047#35745#23436#25104'%'
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 65
                  DataBinding.FieldName = 'FTotalMakePercent'
                end
                object FTotalMakePercentWet_PTList: TcxGridDBColumn
                  Caption = #32047#35745#37325#37327
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 67
                  DataBinding.FieldName = 'FTotalMakePercentWet'
                end
                object FMax_TotalMakePercentWet_PTList: TcxGridDBColumn
                  Caption = #26412#21608#32047#35745#23436#24037
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 77
                  DataBinding.FieldName = 'FMax_TotalMakePercentWet'
                end
                object FMax_not_TotalMakePercentWet_PTList: TcxGridDBColumn
                  Caption = #26412#21608#32047#35745#26410#23436#24037
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 89
                  DataBinding.FieldName = 'FMax_not_TotalMakePercentWet'
                end
                object FLastShipPercent_PTList: TcxGridDBColumn
                  Caption = #19978#21608#21457#36135'%'
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 65
                  DataBinding.FieldName = 'FLastShipPercent'
                end
                object FLastShipPercentWet_PTList: TcxGridDBColumn
                  Caption = #19978#21608#21457#36135
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 64
                  DataBinding.FieldName = 'FLastShipPercentWet'
                end
                object FShipPercent_PTList: TcxGridDBColumn
                  Caption = #26412#21608#21457#36135'%'
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
                  Width = 65
                  DataBinding.FieldName = 'FShipPercent'
                end
                object FShipPercentWet_PTList: TcxGridDBColumn
                  Caption = #26412#21608#21457#36135
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 66
                  DataBinding.FieldName = 'FShipPercentWet'
                end
                object FTotalShipPercent_PTList: TcxGridDBColumn
                  Caption = #32047#35745#21457#36135'%'
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 65
                  DataBinding.FieldName = 'FTotalShipPercent'
                end
                object FTotalShipPercentWet_PTList: TcxGridDBColumn
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 63
                  DataBinding.FieldName = #32047#35745#21457#36135
                end
                object FMakeBOMPackQry_PTList: TcxGridDBColumn
                  Caption = #21253#35013#31665#25968
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 53
                  DataBinding.FieldName = 'FMakeBOMPackQry'
                end
                object FLastPackQry_PTList: TcxGridDBColumn
                  Caption = #19978#21608#21253#35013
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Options.Sorting = False
                  Width = 53
                  DataBinding.FieldName = 'FLastPackQry'
                end
                object FPackQry_PTList: TcxGridDBColumn
                  Caption = #26412#21608#21253#35013
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Options.Sorting = False
                  Width = 53
                  DataBinding.FieldName = 'FPackQry'
                end
                object FTotalPackQry_PTList: TcxGridDBColumn
                  Caption = #32047#35745#21253#35013
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Options.Sorting = False
                  Width = 53
                  DataBinding.FieldName = 'FTotalPackQry'
                end
                object FLastShipQry_PTList: TcxGridDBColumn
                  Caption = #19978#21608#21457#36135
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Options.Sorting = False
                  Width = 53
                  DataBinding.FieldName = 'FLastShipQry'
                end
                object FShipQry_PTList: TcxGridDBColumn
                  Caption = #26412#21608#21457#36135
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Options.Sorting = False
                  Width = 53
                  DataBinding.FieldName = 'FShipQry'
                end
                object FTotalShipQry_PTList: TcxGridDBColumn
                  Caption = #32047#35745#21457#36135
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Options.Sorting = False
                  Width = 53
                  DataBinding.FieldName = 'FTotalShipQry'
                end
                object FPlanWeekPack_PTList: TcxGridDBColumn
                  Caption = #21457#36135#24773#20917
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
                  Width = 142
                  DataBinding.FieldName = 'FPlanWeekPack'
                end
                object FWorkShop_PTList: TcxGridDBColumn
                  Caption = #29983#20135#36710#38388
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 53
                  DataBinding.FieldName = 'FWorkShop'
                end
                object FTeamName_PTList: TcxGridDBColumn
                  Caption = #29983#20135#29677#32452
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Options.Sorting = False
                  Width = 53
                  DataBinding.FieldName = 'FTeamName'
                end
                object FAgentShortName_PTList: TcxGridDBColumn
                  Caption = #21046#20316#21333#20301
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
                  Width = 81
                  DataBinding.FieldName = 'FAgentShortName'
                end
                object FPlanPartsName_PTList: TcxGridDBColumn
                  Caption = #37096#20214#21517#31216
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
                  Options.Moving = False
                  Options.Sorting = False
                  Width = 119
                  DataBinding.FieldName = 'FPlanPartsName'
                end
                object FPartsCode_PTList: TcxGridDBColumn
                  Caption = #37096#20214#21495
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
                  Options.Moving = False
                  Options.Sorting = False
                  Width = 41
                  DataBinding.FieldName = 'FPartsCode'
                end
                object FTeamID_PTList: TcxGridDBColumn
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  DataBinding.FieldName = 'FTeamID'
                end
                object FAgentID_PTList: TcxGridDBColumn
                  Caption = #22806#21327'ID'
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Options.Moving = False
                  Options.Sorting = False
                  Width = 62
                  DataBinding.FieldName = 'FAgentID'
                end
                object FPlanWeekPartsID_PTList: TcxGridDBColumn
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Options.Sorting = False
                  DataBinding.FieldName = 'FPlanWeekPartsID'
                end
                object FPlanWeekListID_PTList: TcxGridDBColumn
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 109
                  DataBinding.FieldName = 'FPlanWeekListID'
                end
              end
              object cxGL_PlanWeek: TcxGridLevel
                GridView = cxGV_PlanWeek
              end
            end
          end
          object TS_WorkList: TRzTabSheet
            Color = 14935011
            Caption = #29983#20135#20219#21153#21333
            object cxGrid5: TcxGrid
              Left = 0
              Top = 0
              Width = 917
              Height = 518
              Align = alClient
              PopupMenu = PM
              TabOrder = 0
              OnContextPopup = cxGrid5ContextPopup
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
                  SortOrder = soAscending
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
                object FIsSysTem_5: TcxGridDBColumn
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
          end
          object AgentBalance: TRzTabSheet
            Color = 14935011
            Caption = #29983#20135#32467#31639#21333
            object cxGrid6: TcxGrid
              Left = 0
              Top = 0
              Width = 917
              Height = 518
              Align = alClient
              PopupMenu = PM
              TabOrder = 0
              OnContextPopup = cxGrid6ContextPopup
              object cxGV6: TcxGridDBTableView
                DataController.DataSource = DS_Mdata6
                DataController.Summary.DefaultGroupSummaryItems = <
                  item
                    Format = #39044#20272#25968#37327':0.00000;-0.00000'
                    Kind = skSum
                    FieldName = 'FEstimateQry'
                    Column = FEstimateQry6
                  end
                  item
                    Format = #39044#20272#37329#39069':,0.00;-,0.00'
                    Kind = skSum
                    FieldName = 'FEstimateAmount'
                    Column = FEstimateAmount6
                  end
                  item
                    Format = #32467#31639#25968#37327':0.00000;-0.00000'
                    Kind = skSum
                    FieldName = 'FBalanceQry'
                    Column = FBalanceQry6
                  end
                  item
                    Format = #32467#31639#37329#39069':,0.00;-,0.00'
                    Kind = skSum
                    FieldName = 'FBalanceAmount'
                    Column = FBalanceAmount6
                  end
                  item
                    Format = #36136#37327#37329#39069':,0.00;-,0.00'
                    Kind = skSum
                    FieldName = 'FQualityAmount'
                    Column = FQualityAmount6
                  end
                  item
                    Format = #39044#32467#37329#39069':,0.00;-,0.00'
                    Kind = skSum
                    FieldName = 'FAdvanceAmount'
                    Column = FAdvanceAmount6
                  end
                  item
                    Format = #23454#32467#37329#39069':,0.00;-,0.00'
                    Kind = skSum
                    FieldName = 'FRealAmount'
                    Column = FRealAmount6
                  end>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Kind = skSum
                    FieldName = 'FBalanceQry'
                    Column = FBalanceQry6
                  end
                  item
                    Format = ',0.00;-,0.00'
                    Kind = skSum
                    FieldName = 'FAdvanceAmount'
                    Column = FAdvanceAmount6
                  end
                  item
                    Format = ',0.00;-,0.00'
                    Kind = skSum
                    FieldName = 'FBalanceAmount'
                    Column = FBalanceAmount6
                  end
                  item
                    Format = ',0.00;-,0.00'
                    Kind = skSum
                    FieldName = 'FQualityAmount'
                    Column = FQualityAmount6
                  end
                  item
                    Kind = skSum
                    FieldName = 'FEstimateQry'
                    Column = FEstimateQry6
                  end
                  item
                    Format = ',0.00;-,0.00'
                    Kind = skSum
                    FieldName = 'FEstimateAmount'
                    Column = FEstimateAmount6
                  end
                  item
                    Format = ',0.00;-,0.00'
                    Kind = skSum
                    FieldName = 'FRealAmount'
                    Column = FRealAmount6
                  end>
                DataController.Summary.SummaryGroups = <
                  item
                    Links = <
                      item
                      end>
                    SummaryItems = <
                      item
                      end>
                  end
                  item
                    Links = <
                      item
                        Column = FEstimateQry6
                      end>
                    SummaryItems = <
                      item
                      end>
                  end>
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
                OptionsData.Appending = True
                OptionsData.CancelOnExit = False
                OptionsData.DeletingConfirmation = False
                OptionsView.Navigator = True
                OptionsView.Footer = True
                OptionsView.GroupByBox = False
                object FBranchFileNo6: TcxGridDBColumn
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
                object FClientshortName6: TcxGridDBColumn
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
                object FBalanceNum6: TcxGridDBColumn
                  Caption = #32467#31639#21333#21495
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 73
                  DataBinding.FieldName = 'FBalanceNum'
                end
                object FBalanceListNum6: TcxGridDBColumn
                  Caption = #24207#21495
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 46
                  DataBinding.FieldName = 'FBalanceListNum'
                end
                object FBalanceName6: TcxGridDBColumn
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
                object FBalanceModel6: TcxGridDBColumn
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
                  Width = 120
                  DataBinding.FieldName = 'FBalanceModel'
                end
                object FUnitName6: TcxGridDBColumn
                  Caption = #21333#20301
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 29
                  DataBinding.FieldName = 'FUnitName'
                end
                object FMaterialDate6: TcxGridDBColumn
                  Caption = #25191#34892#26085#26399
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 89
                  DataBinding.FieldName = 'FMaterialDate'
                end
                object FSollWeight6: TcxGridDBColumn
                  Caption = #29702#35745#37325#37327
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DecimalPlaces = 4
                  Properties.DisplayFormat = '0.0000'
                  Properties.ValidateOnEnter = True
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 66
                  DataBinding.FieldName = 'FSollWeight'
                end
                object FLength6: TcxGridDBColumn
                  Caption = #38271#24230
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DecimalPlaces = 0
                  Properties.DisplayFormat = '0'
                  Properties.ValidateOnEnter = True
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 37
                  DataBinding.FieldName = 'FLength'
                end
                object FQry6: TcxGridDBColumn
                  Caption = #20214#25968
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
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
                object FBalanceBasePrice6: TcxGridDBColumn
                  Caption = #32467#31639#22522#20215
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.Alignment.Horz = taRightJustify
                  Properties.DecimalPlaces = 5
                  Properties.ValidateOnEnter = True
                  Properties.IsDisplayFormatAssigned = True
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Options.Sorting = False
                  Width = 68
                  DataBinding.FieldName = 'FBalanceBasePrice'
                end
                object FWorkOutPrice6: TcxGridDBColumn
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
                  Width = 65
                  DataBinding.FieldName = 'FWorkOutPrice'
                end
                object FOutPrice6: TcxGridDBColumn
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
                object FEstimateQry6: TcxGridDBColumn
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
                  Width = 65
                  DataBinding.FieldName = 'FEstimateQry'
                end
                object FEstimateAmount6: TcxGridDBColumn
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
                  Width = 81
                  DataBinding.FieldName = 'FEstimateAmount'
                end
                object FBalanceWorkAdjust6: TcxGridDBColumn
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
                  Width = 65
                  DataBinding.FieldName = 'FBalanceWorkAdjust'
                end
                object FBalanceAdjust6: TcxGridDBColumn
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
                  Width = 65
                  DataBinding.FieldName = 'FBalanceAdjust'
                end
                object FBalancePrice6: TcxGridDBColumn
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
                object FBalanceQry6: TcxGridDBColumn
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
                  Width = 74
                  DataBinding.FieldName = 'FBalanceQry'
                end
                object FBalanceAmount6: TcxGridDBColumn
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
                  Width = 90
                  DataBinding.FieldName = 'FBalanceAmount'
                end
                object FAdvanceAmount6: TcxGridDBColumn
                  Caption = #39044#32467#37329#39069
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
                  Width = 88
                  DataBinding.FieldName = 'FAdvanceAmount'
                end
                object FQualityAmount6: TcxGridDBColumn
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
                  Width = 62
                  DataBinding.FieldName = 'FQualityAmount'
                end
                object FRealAmount6: TcxGridDBColumn
                  Caption = #23454#32467#37329#39069
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
                object FBalanceRemark6: TcxGridDBColumn
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
                object FBranchItemNumber6: TcxGridDBColumn
                  Caption = #22270#21495
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 69
                  DataBinding.FieldName = 'FBranchItemNumber'
                end
                object FBalanceYear6: TcxGridDBColumn
                  Caption = #24180
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 60
                  DataBinding.FieldName = 'FBalanceYear'
                end
                object FBalanceMonth6: TcxGridDBColumn
                  Caption = #26376
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 20
                  DataBinding.FieldName = 'FBalanceMonth'
                end
                object FBalanceDay6: TcxGridDBColumn
                  Caption = #26085
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 20
                  DataBinding.FieldName = 'FBalanceDay'
                end
                object FWorkItemNum6: TcxGridDBColumn
                  Caption = #20219#21153#21333#21495
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 74
                  DataBinding.FieldName = 'FWorkItemNum'
                end
                object FWorkListID6: TcxGridDBColumn
                  Caption = #20219#21153#21333'ID'
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 63
                  DataBinding.FieldName = 'FWorkListID'
                end
                object FWorkData6: TcxGridDBColumn
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
                object FAgentName6: TcxGridDBColumn
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
                object FWorkWrite6: TcxGridDBColumn
                  Caption = #22635#21333
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 76
                  DataBinding.FieldName = 'FWorkWrite'
                end
                object FBalancePriceID6: TcxGridDBColumn
                  Caption = #32467#31639#21333#20215'ID'
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  DataBinding.FieldName = 'FBalancePriceID'
                end
                object FProductClass6: TcxGridDBColumn
                  Caption = #20135#21697#31867#21035
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  DataBinding.FieldName = 'FProductClass'
                end
                object FProductSort6: TcxGridDBColumn
                  Caption = #32467#31639#27719#24635#31867#21035
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 77
                  DataBinding.FieldName = 'FProductSort'
                end
                object FJobSort: TcxGridDBColumn
                  Caption = #21152#24037#27719#24635#31867#21035
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 77
                  DataBinding.FieldName = 'FJobSort'
                end
                object FNumber6: TcxGridDBColumn
                  Caption = #32467#31639#37096#20214#20195#30721
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 77
                  DataBinding.FieldName = 'FNumber'
                end
                object FPartsCode6: TcxGridDBColumn
                  Caption = #37096#20214#21495
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 41
                  DataBinding.FieldName = 'FPartsCode'
                end
              end
              object cxGL6: TcxGridLevel
                GridView = cxGV6
              end
            end
          end
        end
        object Panel_button: TPanel
          Left = 0
          Top = 544
          Width = 921
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
          object Button1: TButton
            Left = 456
            Top = 16
            Width = 75
            Height = 25
            Caption = #33258#21160#32534#21495
            TabOrder = 2
            Visible = False
            OnClick = Button1Click
          end
        end
      end
    end
    object Panel3: TPanel
      Left = 3
      Top = 639
      Width = 1150
      Height = 24
      Align = alBottom
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 1
      object Bevel1: TBevel
        Left = 0
        Top = 0
        Width = 1150
        Height = 2
        Align = alTop
      end
      object stbBar: TRzStatusBar
        Left = 0
        Top = 5
        Width = 1150
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
          Width = 887
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
    Top = 80
  end
  object DS_Mdata: TDataSource
    DataSet = MData
    Left = 35
    Top = 80
  end
  object ImageList: TImageList
    Left = 147
    Top = 134
    Bitmap = {
      494C010109000E00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C636300CE9C9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C63630031639C0031639C0031639C00E7EFF7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C636300FFCE9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C63630063CECE0063CECE00009CCE00FFFFFF00FFCE
      CE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C636300FFCE9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C63630063CECE0063CEFF00319CCE00FFCECE00CE63
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C636300FFCE9C00CE9C9C00CE9C
      6300FFCECE00FFFFFF009C6363009CCECE009CCEFF00B5B5B500FF630000CE63
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C636300FFCE9C009C636300FFFF
      FF00FFCECE00FFFFFF009C6363009CCECE00C6C6C600CE630000CE630000CE63
      0000CE630000CE630000CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C636300FFCE9C00CE9C9C009C63
      6300FFCECE00FFFFFF009C63630000000000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C636300FFCE9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C63630000000000CE9C9C00CE630000CE630000CE63
      0000CE630000CE630000CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C636300FFCE9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C636300CECECE00E7EFF700CE9C9C00FF630000CE63
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C636300FFCE9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C6363009CCECE00000000009CCECE00FFCE9C00CE63
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000FDFF000000000000E0FF000000000000
      801F000000000000001F000000000000001F000000000000000F000000000000
      000F000000000000000F00000000000000010000000000000101000000000000
      0101000000000000000F000000000000008F00000000000000AF000000000000
      803F000000000000E1FF0000000000008003FFFFF81FFFFF00030001F81FC007
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
  object DS_Mdata_Qry: TDataSource
    DataSet = MData_Qry
    Left = 36
    Top = 130
  end
  object PM: TPopupMenu
    Left = 148
    Top = 224
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
    Left = 72
    Top = 168
    object Act_FMakePartsWet: TAction
      Category = #27719#24635#32479#35745
      Caption = #23436#25104#20219#21153#37327#27719#24635#34920
      ImageIndex = 5
      OnExecute = Act_FMakePartsWetExecute
    end
    object Act_FMakePercentWet_Item: TAction
      Category = #27719#24635#32479#35745
      Caption = #23436#25104#20135#37327#26126#32454#34920
      ImageIndex = 5
      OnExecute = Act_FMakePercentWet_ItemExecute
    end
    object Act_FMax_TotalMakePercentWet: TAction
      Category = #27719#24635#32479#35745
      Caption = #26410#23436#25104#20219#21153#37327#27719#24635#34920
      OnExecute = Act_FMax_TotalMakePercentWetExecute
    end
    object Act_FMax_not_TotalMakePercentWet: TAction
      Category = #27719#24635#32479#35745
      Caption = #26410#23436#25104#20219#21153#37327#26126#32454#34920
      OnExecute = Act_FMax_not_TotalMakePercentWetExecute
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
    object Act_PlanTaskQry: TAction
      Category = #33756#21333
      Caption = 'Act_PlanTaskQry'
      OnExecute = Act_PlanTaskQryExecute
    end
    object Act_FPlanDate: TAction
      Category = #27719#24635#32479#35745
      Caption = #26412#20307#26032#22686#25490#20135#39033#30446
      OnExecute = Act_FPlanDateExecute
    end
    object Act_FPlanDate_Item: TAction
      Category = #27719#24635#32479#35745
      Caption = #26412#20307#26032#22686#25490#20135#39033#30446#26126#32454#34920
      OnExecute = Act_FPlanDate_ItemExecute
    end
    object Act_FMax_TotalMakePercentWet_Parts: TAction
      Category = #27719#24635#32479#35745
      Caption = #26410#23436#25104#20219#21153#37327#27719#24635#34920#25353#37096#20214
      OnExecute = Act_FMax_TotalMakePercentWet_PartsExecute
    end
    object Act_FMax_not_TotalMakePercentWet_Parts: TAction
      Category = #27719#24635#32479#35745
      Caption = #26410#23436#25104#20219#21153#37327#26126#32454#34920#25353#37096#20214
      OnExecute = Act_FMax_not_TotalMakePercentWet_PartsExecute
    end
    object Act_FMakePartsWet_Parts: TAction
      Category = #27719#24635#32479#35745
      Caption = #23436#25104#20219#21153#37327#27719#24635#34920#25353#37096#20214
      OnExecute = Act_FMakePartsWet_PartsExecute
    end
    object Act_FMakePercentWet_Item_Parts: TAction
      Category = #27719#24635#32479#35745
      Caption = #23436#25104#20135#37327#26126#32454#34920#25353#37096#20214
      OnExecute = Act_FMakePercentWet_Item_PartsExecute
    end
    object Act_PlanTrackList: TAction
      Category = #33756#21333
      Caption = 'Act_PlanTrackList'
      OnExecute = Act_PlanTrackListExecute
    end
    object Act_PlanWeek: TAction
      Category = #33756#21333
      Caption = 'Act_PlanWeek'
      OnExecute = Act_PlanWeekExecute
    end
    object Act_FNot_TJWet_Parts: TAction
      Category = #27719#24635#32479#35745
      Caption = #26410#23436#25104#37327#25353#39033#30446'('#21547#39044#20272')('#25353#37096#20214')'
      OnExecute = Act_FNot_TJWet_PartsExecute
    end
    object Act_FNot_TJWet: TAction
      Category = #27719#24635#32479#35745
      Caption = #26410#23436#25104#37327#25353#39033#30446'('#21547#39044#20272')('#25353#37096#20214')'
      OnExecute = Act_FNot_TJWetExecute
    end
  end
  object MData_Qry: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 75
    Top = 128
  end
  object SaveDialog1: TSaveDialog
    Left = 35
    Top = 171
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
    Left = 167
    Top = 181
  end
  object DS_ADOProc: TDataSource
    DataSet = ADOProc
    Left = 135
    Top = 189
  end
  object PM_Qry: TPopupMenu
    Left = 412
    Top = 216
    object MenuItem2: TMenuItem
      Action = Act_FMakePartsWet
    end
    object MenuItem1: TMenuItem
      Action = Act_FMakePercentWet_Item
    end
    object MenuItem3: TMenuItem
      Action = Act_FMax_TotalMakePercentWet
    end
    object MenuItem4: TMenuItem
      Action = Act_FMax_not_TotalMakePercentWet
    end
    object MenuItem6: TMenuItem
      Action = Act_FPlanDate
    end
    object N9: TMenuItem
      Action = Act_FPlanDate_Item
    end
    object N10: TMenuItem
      Action = Act_FMax_TotalMakePercentWet_Parts
    end
    object N11: TMenuItem
      Action = Act_FMax_not_TotalMakePercentWet_Parts
    end
    object N12: TMenuItem
      Action = Act_FMakePartsWet_Parts
    end
    object N13: TMenuItem
      Action = Act_FMakePercentWet_Item_Parts
    end
    object N14: TMenuItem
      Action = Act_FNot_TJWet_Parts
    end
    object N15: TMenuItem
      Action = Act_FNot_TJWet
    end
  end
  object DS_Mdata_TaskList: TDataSource
    DataSet = MData_TaskList
    Left = 35
    Top = 256
  end
  object MData_TaskList: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 75
    Top = 256
  end
  object DS_Mdata_TaskItem: TDataSource
    DataSet = MData_TaskItem
    Left = 35
    Top = 216
  end
  object MData_TaskItem: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 75
    Top = 216
  end
  object DS_Mdata_PlanWeek: TDataSource
    DataSet = MData_PlanWeek
    Left = 35
    Top = 296
  end
  object MData_PlanWeek: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 75
    Top = 296
  end
  object MainMenu_main: TMainMenu
    Left = 360
    Top = 298
    object P1: TMenuItem
      Caption = #29983#20135#21608#25253'[&P]'
      object N48: TMenuItem
        Caption = #23436#25104#20219#21153#37327#27719#24635#34920
      end
      object N50: TMenuItem
        Caption = #23436#25104#20135#37327#26126#32454#34920
      end
      object N49: TMenuItem
        Caption = #26410#23436#25104#20219#21153#37327#27719#24635#34920
      end
      object N52: TMenuItem
        Caption = #26410#23436#25104#20219#21153#37327#26126#32454#34920
      end
      object N1: TMenuItem
        Caption = #26412#20307#26032#22686#25490#20135#39033#30446
      end
      object N2: TMenuItem
        Caption = #26412#20307#26032#22686#25490#20135#39033#30446#26126#32454#34920
      end
      object N3: TMenuItem
        Caption = #26410#23436#25104#20219#21153#37327#27719#24635#34920#25353#37096#20214
      end
      object N4: TMenuItem
        Caption = #26410#23436#25104#20219#21153#37327#26126#32454#34920#25353#37096#20214
      end
      object N5: TMenuItem
        Caption = #23436#25104#20219#21153#37327#27719#24635#34920#25353#37096#20214
      end
      object N6: TMenuItem
        Caption = #23436#25104#20135#37327#26126#32454#34920#25353#37096#20214
      end
      object N7: TMenuItem
        Caption = #26410#23436#25104#37327#25353#39033#30446'('#21547#39044#20272')('#25353#37096#20214')'
      end
      object N8: TMenuItem
        Caption = #26410#23436#25104#37327#25353#39033#30446'('#21547#39044#20272')('#25353#37096#20214')'
      end
    end
  end
  object MData5: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 107
    Top = 415
  end
  object DS_Mdata5: TDataSource
    DataSet = MData5
    Left = 68
    Top = 415
  end
  object DS_Mdata6: TDataSource
    DataSet = MData6
    Left = 68
    Top = 455
  end
  object MData6: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 107
    Top = 455
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
    object IntegerField4: TIntegerField
      FieldName = 'FBalancePriceID'
    end
    object StringField10: TStringField
      FieldName = 'FAgentBalanceNum'
    end
    object StringField11: TStringField
      FieldName = 'FAgentBalancePactNum'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'FAgentBalanceDate'
    end
    object StringField12: TStringField
      FieldName = 'FAgentID'
    end
    object StringField13: TStringField
      FieldName = 'FAgentBalanceItemID'
    end
    object StringField14: TStringField
      FieldName = 'FBalanceQry'
    end
    object StringField15: TStringField
      FieldName = 'FAdvanceQry'
    end
    object StringField16: TStringField
      FieldName = 'FQualityQry'
    end
    object FloatField1: TFloatField
      FieldName = 'FWeight'
    end
    object FloatField2: TFloatField
      FieldName = 'FBalanceAmount'
    end
    object IntegerField5: TIntegerField
      FieldName = 'FWorkListID'
    end
    object BCDField3: TBCDField
      FieldName = 'FOutPrice'
    end
    object BCDField4: TBCDField
      FieldName = 'FPrice'
    end
    object FloatField3: TFloatField
      FieldKind = fkCalculated
      FieldName = 'FBalanceBasePrice'
      Calculated = True
    end
    object FloatField4: TFloatField
      FieldKind = fkCalculated
      FieldName = 'FBalancePrice'
      Calculated = True
    end
  end
end
