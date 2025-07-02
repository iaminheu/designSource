inherited Frm_TaskPrice: TFrm_TaskPrice
  Left = 304
  Top = 107
  Caption = #24037#36164#21333#20215
  ClientHeight = 584
  ClientWidth = 1036
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image: TImage
    Width = 1036
  end
  inherited L_title: TLabel
    Left = -102
    Top = 5
    Width = 1148
    Height = 18
    Caption = #36890#29992#25968#25454#30331#35760
  end
  inherited P_back: TPanel
    Width = 1036
    Height = 563
    inherited P_main: TPanel
      Width = 1030
      Height = 557
      inherited Panel_down: TPanel
        Top = 547
        Width = 1028
        Height = 8
        inherited Bevel_bass: TBevel
          Width = 1028
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1028
        Height = 38
        Align = alTop
        ParentColor = True
        TabOrder = 1
        object ToolBar1: TToolBar
          Left = 1
          Top = 1
          Width = 1026
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
            Caption = #21047#26032'[&E]'
            ImageIndex = 3
            OnClick = TB_RefClick
          end
          object TB_App: TToolButton
            Left = 53
            Top = 0
            AutoSize = True
            Caption = #22686#21152'[&A]'
            ImageIndex = 0
            OnClick = TB_AppClick
          end
          object TB_Edit: TToolButton
            Left = 106
            Top = 0
            AutoSize = True
            Caption = #20462#25913'[&B]'
            Enabled = False
            ImageIndex = 1
            OnClick = TB_EditClick
          end
          object TB_Del: TToolButton
            Left = 159
            Top = 0
            AutoSize = True
            Caption = #21024#38500'[&C]'
            Enabled = False
            ImageIndex = 2
            OnClick = TB_DelClick
          end
          object TB_Out: TToolButton
            Left = 212
            Top = 0
            AutoSize = True
            Caption = #23548#20986'[&O]'
            ImageIndex = 4
            OnClick = TB_OutClick
          end
          object ToolButton5: TToolButton
            Left = 265
            Top = 0
            Width = 8
            Caption = 'ToolButton5'
            ImageIndex = 4
            Style = tbsSeparator
          end
          object TB_Down: TToolButton
            Left = 273
            Top = 0
            Cursor = crHandPoint
            AutoSize = True
            Caption = #35774#32622'[&D]'
            ImageIndex = 5
            OnClick = TB_DownClick
          end
          object TB_Prin: TToolButton
            Left = 326
            Top = 0
            Cursor = crHandPoint
            AutoSize = True
            Caption = #25171#21360'[&P]'
            ImageIndex = 6
            OnClick = TB_PrinClick
          end
          object ToolButton1: TToolButton
            Left = 379
            Top = 0
            Width = 8
            Caption = 'ToolButton1'
            ImageIndex = 9
            Style = tbsSeparator
          end
          object TB_EXIT: TToolButton
            Left = 387
            Top = 0
            Cursor = crHandPoint
            AutoSize = True
            Caption = #36864#20986'[&X]'
            ImageIndex = 7
            OnClick = TB_EXITClick
          end
        end
      end
      object RzSizePanel1: TRzSizePanel
        Left = 0
        Top = 38
        Width = 236
        Height = 509
        Color = 14935011
        HotSpotVisible = True
        SizeBarWidth = 7
        TabOrder = 2
        VisualStyle = vsGradient
        object MyTreeView: TTreeView
          Left = 0
          Top = 0
          Width = 228
          Height = 509
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
      object PC_2: TRzPageControl
        Left = 236
        Top = 38
        Width = 792
        Height = 509
        ActivePage = TS_Brow
        Align = alClient
        TabIndex = 0
        TabOrder = 3
        TabOrientation = toBottom
        TabStyle = tsDoubleSlant
        FixedDimension = 19
        object TS_Brow: TRzTabSheet
          Color = 14935011
          Caption = #26597#35810
          object PanelBkGnd: TPanel
            Left = 0
            Top = 0
            Width = 790
            Height = 488
            Align = alClient
            BevelOuter = bvNone
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 0
            object Panel_button: TPanel
              Left = 0
              Top = 439
              Width = 790
              Height = 49
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
              object OKBtn: TcxButton
                Left = 94
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
                Left = 190
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
            object cxGrid: TcxGrid
              Left = 0
              Top = 65
              Width = 790
              Height = 374
              Align = alClient
              TabOrder = 1
              object cxGV: TcxGridDBTableView
                DataController.DataSource = DS_Mdata
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                NavigatorButtons.ConfirmDelete = False
                NavigatorButtons.PriorPage.Visible = False
                NavigatorButtons.NextPage.Visible = False
                NavigatorButtons.Insert.Visible = True
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
                OptionsView.Footer = True
                OptionsView.GroupByBox = False
                object FNumber: TcxGridDBColumn
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
                  SortOrder = soAscending
                  Width = 123
                  DataBinding.FieldName = 'FNumber'
                end
                object FTaskPartsName: TcxGridDBColumn
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
                  Options.Sorting = False
                  Width = 212
                  DataBinding.FieldName = 'FTaskPartsName'
                end
                object FTaskPartsModel: TcxGridDBColumn
                  Caption = #37096#20214#35268#26684
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
                  DataBinding.FieldName = 'FTaskPartsModel'
                end
                object FTaskPartsUnit: TcxGridDBColumn
                  Caption = #21333#20301
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 29
                  DataBinding.FieldName = 'FTaskPartsUnit'
                end
                object Sel: TcxGridDBColumn
                  Caption = #8730
                  PropertiesClassName = 'TcxButtonEditProperties'
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  Properties.OnButtonClick = SelPropertiesButtonClick
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Options.Sorting = False
                  Width = 20
                end
                object FColdPrice: TcxGridDBColumn
                  Caption = #20919#20316#22522#20215
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 53
                  DataBinding.FieldName = 'FColdPrice'
                end
                object FPlatePrice: TcxGridDBColumn
                  Caption = #26495#19979#21333#20215
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 53
                  DataBinding.FieldName = 'FPlatePrice'
                end
                object FBarPrice: TcxGridDBColumn
                  Caption = #22411#19979#21333#20215
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 53
                  DataBinding.FieldName = 'FBarPrice'
                end
                object FPunchPrice: TcxGridDBColumn
                  Caption = #20914#24202#21333#20215
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 53
                  DataBinding.FieldName = 'FPunchPrice'
                end
                object FDrllPrice: TcxGridDBColumn
                  Caption = #38075#24202#21333#20215
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 53
                  DataBinding.FieldName = 'FDrllPrice'
                end
                object FCutPrice: TcxGridDBColumn
                  Caption = #33258#21160#21106#21333#20215
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 65
                  DataBinding.FieldName = 'FCutPrice'
                end
                object FTaskPrice: TcxGridDBColumn
                  Caption = #24037#36164#21333#20215
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 73
                  DataBinding.FieldName = 'FTaskPrice'
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
                object FParentNumber: TcxGridDBColumn
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
                  Width = 124
                  DataBinding.FieldName = 'FParentNumber'
                end
                object FWorkDate: TcxGridDBColumn
                  Caption = #25191#34892#26085#26399
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 71
                  DataBinding.FieldName = 'FWorkDate'
                end
                object FBalanceID: TcxGridDBColumn
                  Caption = #37096#20214'ID'
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 61
                  DataBinding.FieldName = 'FBalanceID'
                end
                object FWorkID: TcxGridDBColumn
                  Caption = #24037#31649'ID'
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Options.Sorting = False
                  Width = 41
                  DataBinding.FieldName = 'FWorkID'
                end
                object FProductName: TcxGridDBColumn
                  Caption = #20135#21697#31867#21035
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 71
                  DataBinding.FieldName = 'FProductName'
                end
              end
              object cxGL: TcxGridLevel
                GridView = cxGV
              end
            end
            object Panel2: TPanel
              Left = 0
              Top = 0
              Width = 790
              Height = 65
              Align = alTop
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 2
              object Label1: TLabel
                Left = 6
                Top = 45
                Width = 67
                Height = 13
                AutoSize = False
                Caption = #21333#20215#26085#26399#65306
                Transparent = True
              end
              object Label2: TLabel
                Left = 6
                Top = 12
                Width = 59
                Height = 13
                AutoSize = False
                Caption = #20135#21697#31867#22411#65306
                Transparent = True
              end
              object E_FTaskPriceDate: TcxButtonEdit
                Left = 71
                Top = 38
                Width = 91
                Height = 22
                AutoSize = False
                Enabled = False
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.OnButtonClick = E_FTaskPriceDatePropertiesButtonClick
                Style.BorderColor = 8623776
                Style.BorderStyle = ebsSingle
                Style.ButtonTransparency = ebtHideUnselected
                TabOrder = 0
                ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WIN2000'
              end
              object E_FProductID: TcxButtonEdit
                Left = 220
                Top = 8
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
                TabOrder = 1
                ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WIN2000'
              end
              object E_FProductName: TcxButtonEdit
                Left = 70
                Top = 8
                Width = 145
                Height = 22
                AutoSize = False
                Enabled = False
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.OnButtonClick = E_FProductNamePropertiesButtonClick
                Style.BorderColor = 8623776
                Style.BorderStyle = ebsSingle
                Style.ButtonTransparency = ebtHideUnselected
                TabOrder = 2
                ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WIN2000'
              end
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
    Top = 88
  end
  object DS_Mdata: TDataSource
    DataSet = MData
    Left = 27
    Top = 88
  end
  object ImageList: TImageList
    Left = 27
    Top = 158
    Bitmap = {
      494C010114001800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000006000000001001000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000007F0299019901990199019901
      9901990199019901000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DF00
      DF00DF00DF00DF00DF00DF00DF00DF00DF007F029901FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F990100000000000000003F4F793279327932793239670000
      0000000000000000000000000000000000009931993199319931993199319931
      993199319931993199319931993199319931000000000000000000000000DF00
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FDF007F0299019C739C739C739C739C73
      9C739C739C739C73990100000000000000003F4FBE5FBE5F397F9C7379327932
      3967000000000000000000000000000000009931FF7FFF7F3F67FF7FFF7F3F67
      FF7FFF7F3F67FF7FFF7F3F67FF7FFF7F9931000000000000000000000000DF00
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FDF007F029901FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F990100000000000000003F4FFF7FFF7F397FFF7FFF7F9C73
      7932000000000000000000000000000000009931FF7FFF7F3F67FF7FFF7F3F67
      FF7FFF7F3F67FF7FFF7F3F67FF7FFF7F9931000000000000000000000000DF00
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FDF007F0299019C739C739C739C733967
      3967396739673967990100000000000000003F4FBE5FBE5F397FBE5FBE5FBE5F
      79323967000000000000000000000000000099313F673F673F673F673F673F67
      3F673F673F673F673F673F673F673F679931000000000000DF00DF00DF00DF00
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FDF007F029901FF7FFF7FFF7FFF7F9C73
      9C739C739C739C73990100000000000000003F4FFF7F3967397FFF7FFF7FFF7F
      9C73793239670000000000000000000000009931FF7FFF7F3F67FF7FFF7F3F67
      FF7FFF7F3F67FF7FFF7F3F67FF7FFF7F9931000000000000DF00FF7FFF7FDF00
      DF00DF00DF00DF00DF00DF00DF00DF00DF007F0299019C739C739C7339673967
      3967396739673967990100000000000000003F4FBE5FBE5F397FBE5FBE5FBE5F
      BE5F9C7379327932793239670000000000009931FF7FFF7F3F67FF7FFF7F3F67
      FF7FFF7F3F67FF7FFF7F3F67FF7FFF7F9931000000000000DF00FF7FFF7FDF00
      DF00DF00DF00DF00DF003F4FDF008C7DDF007F029901FF7FFF7FFF7F9C739C73
      9C739C739C739C73990100000000000000003F4FFF7FFF7F397FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F9C73793279327932396799313F673F67004C004C004C004C
      3F673F673F673F673F673F673F673F679931000000000000DF00FF7FFF7F3F4F
      DF00DF00DF00DF00DF00DF00DF00DF003F4F7F0299019C739C73396739679901
      9901990199019901990199019901990199013F4FBE5FBE5F397FBE5FBE5FBE5F
      BE5FBE5FBE5FBE5FBE5FBE5FBE5F9C7379329931FF7FFF7F004CFF7FFF7F004C
      FF7FFF7F3F67FF7FFF7F3F67FF7FFF7F9931DF00DF00DF00DF00FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FDF000000000000007F029901FF7FFF7F9C7399017F02
      9901990199019901990199019901990199013F4FFF7FFF7F397FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F79329931FF7FFF7F004CFF7FFF7F004C
      FF7FFF7F3F67FF7FFF7F3F67FF7FFF7F9931DF00FF7FFF7FDF00DF00DF00DF00
      DF00DF00DF00DF00DF00DF000000000000007F0299019C7339677F027F027F02
      7F027F0299019901990199019901990100003F4FBE5FBE5F397FBE5FBE5FBE5F
      BE5FBE5FBE5FBE5FBE5FBE5FBE5FBE5F793299313F673F67004C004C004C004C
      3F673F673F673F673F673F673F673F679931DF00FF7FFF7FDF00DF00DF00DF00
      DF00DF003F4FDF008C7DDF000000000000007F029901FF7F7F027F327F327F02
      7F027F027F027F02990199019901000000003F4FFF7F3967397FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F79329931FF7FFF7F3F67FF7FFF7F3F67
      FF7FFF7F3F67FF7FFF7F3F67FF7FFF7F9931DF00FF7FFF7F3F4FDF00DF00DF00
      DF00DF00DF00DF00DF003F4F0000000000007F0299017F027F327F327F327F32
      7F327F027F027F027F0299010000000000003F4FFF7FFF7F397FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F79329931FF7FFF7F3F67FF7FFF7F3F67
      FF7FFF7F3F67FF7FFF7F3F67FF7FFF7F9931DF00FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FDF000000000000000000000000007F027F027F327F327F327F327F32
      7F327F327F327F02990100000000000000003F4FFF7FFF7F397FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F793299313F67993199313F673F673F67
      3F673F673F673F673F67993199313F679931DF00DF00DF00DF00DF00DF00DF00
      DF00DF00DF0000000000000000000000000000007F02734EFF7F734EFF7F734E
      FF7F734EFF7F734EFF7F00000000000000003F4F3F4F3F4F3F4F3F4F3F4F3F4F
      3F4F3F4F3F4F3F4F3F4F3F4F3F4F3F4F3F4F99313F673F673F673F673F67FF7F
      FF7FFF7FFF7F3F673F673F673F673F679931DF00DF00DF00DF00DF00DF003F4F
      DF008C7DDF0000000000000000000000000000000000734E3967734E3967734E
      3967734E3967734E000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009931993199319931993199319931
      9931993199319931993199319931993199313F4FDF00DF00DF00DF00DF00DF00
      DF00DF003F4F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000010421042
      1042000000000000000000000000000000000000000000000000000010421042
      1042000000000000000000000000000000000000793279327932793279327932
      7932793279327932793279327932793279320000000000000000000010420000
      00001042000000000000000000000000000000000000000000001042D65A734E
      D65A1042104200000000000000000000000000000000000000001042D65A734E
      D65A1042104200000000000000000000000000007932FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F793200000000000000001042FF7F0000
      0000104200000000000000000000000000000000000000001042D65A734EFF7F
      FF7FD65AD65A1042104200000000000000000000000000001042D65A734E0000
      0000D65AD65A10421042000000000000000000007932FF7FD300D300D300D300
      D300D300D300D300D300D300D300FF7F79320000000000000000FF7FFF7F0000
      FF7FFF7F00000000000000000000000000000000000000001042734EFF7F734E
      734EFF7FFF7FD65AD65A10421042000000000000000000001042734E0000734E
      734E00000000D65AD65A104210420000000000007932FF7FD300793279327932
      793279327932793279327932D300FF7F79320000000000000000FF7F00000000
      FF7F10421042000000000000000000000000000000001042D65A734EFF7F1042
      D65A734EFF7FFF7FFF7FD65AD65A10420000000000001042D65A734E00001042
      D65A734E000000000000D65AD65A1042000000007932FF7FD300D300D300D300
      D300D300D300D300D300D300D300FF7F79320000104200000000000000000000
      104200000000000000000000000000008C4D000000001042734EFF7FD65A1042
      D65A734EFF7F10421042FF7FFF7F10420000000000001042734E0000D65A1042
      D65A734E000010421042000000001042000000007932FF7FD300793279327932
      793279327932793279327932D300FF7F79321042FF7FFF7F0000FF7F00000000
      18630000000000000000000000008C4D666600001042D65A734EFF7FD65A9C73
      D65AFF7FFF7FFF7FD65A1042FF7F1042000000001042D65A734E0000D65A9C73
      D65A000000000000D65A104200001042000000007932FF7FD300D300D300D300
      D300D300D300D300D300D300D300FF7F79321042FF7F00000000FF7F10421863
      FF7F10420000FF7F104200008C4D66662C7F00001042734EFF7FD65A9C739C73
      D65AFF7F10421042FF7FFF7FFF7F1042000000001042734E0000D65A9C739C73
      D65A0000104210420000000000001042000000007932FF7FD300793279327932
      793279327932793279327932D300FF7F79321042000000000000104200000000
      FF7F0000FF7FFF7FFF7F8C4D66662C7F00001042D65A734EFF7FFF7FFF7FD65A
      FF7FFF7FFF7FD65A1042FF7F1042000000001042D65A734E000000000000D65A
      000000000000D65A1042000010420000000000007932FF7FD300D300D300D300
      D300D300D300D300D300D300D300FF7F79320000000000001042000000000000
      000000000000FF7F8C4D66662C7F000000001042734EFF7FFF7FD300D300FF7F
      FF7F10421042FF7FFF7FFF7F1042000000001042734E00000000104210420000
      00001042104200000000000010420000000000007932FF7FD300793279327932
      793279327932793279327932D300FF7F7932000000001863186300000000FF7F
      0000000000008C4D66662C7F0000000000000000734E734EFF7FFF7FD65AD300
      D300FF7FFF7F1042FF7F10420000000000000000734E734E00000000D65A1042
      10420000000010420000104200000000000000007932FF7FD300D300D300D300
      D300D300D300D300D300D300D300FF7F7932000010421863FF7F0000FF7FFF7F
      FF7F00008C4D66662C7F0000000000000000000000000000734E734EFF7FFF7F
      D65AD300D300FF7FFF7F1042000000000000000000000000734E734E00000000
      D65A1042104200000000104200000000000000007932FF7FD300793279327932
      793279327932793279327932D300FF7F7932000000001042104200000000FF7F
      FF7F8C4D66662C7F0000000000000000000000000000000000000000734E734E
      FF7FFF7FD65AFF7F1042000000000000000000000000000000000000734E734E
      00000000D65A00001042000000000000000000007932FF7FD300D300D300D300
      D300D300D300D300D300D300D300FF7F79320000000000000000000000000000
      8C4D66662C7F0000000000000000000000000000000000000000000000000000
      734E734EFF7FFF7F104200000000000000000000000000000000000000000000
      734E734E000000001042000000000000000000007932FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F79320000000000000000000000008C4D
      66662C7F00000000000000000000000000000000000000000000000000000000
      00000000734E734E000000000000000000000000000000000000000000000000
      00000000734E734E000000000000000000000000793279327932793279327932
      793279327932793279327932793279327932000000000000000000008C4D6666
      2C7F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000007932793279327932
      7932793279327932793279327932793279320000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000007932FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F79320000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007932D300D300
      7932000000000000000000000000000000000000000000007932FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F79320000000000000000000000000000
      007C004000000000000000000000000000000000000000001863E07F00000000
      00000000000018630000E07F000000000000000000000000D300D30099019901
      D300000000000000000000000000000000000000000000007932FF7FFF7F3967
      396739673967396739673967FF7FFF7F7932000000000000000000000000007C
      004C004C0040000000000000000000000000000000000000E07F186300000000
      00000000000018630000186300000000000000000000D30099019901D300D300
      793200000000000000000000000000000000004C000000007932FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F7932000000000000000000000000007C
      004C0040004C0040000000000000000000000000000000001863E07F00000000
      00000000000018630000E07F00000000000000007932D3009901D30079320000
      0000D300D300D300D300D300D300D30000000064004C00007932FF7FD300D300
      D300D300D300D300D300D300D300FF7F7932000000000000000000000000007C
      004C004C0040004C004000000000000000000000000000001863E07F18631863
      E07F1863E07FE07F1863E07F0000000000000000D3009901D300793200000000
      0000D30099019901990199019901D3000000007C0064004C7932FF7FD3007932
      793279327932793279327932D300FF7F793200000000000000000000FF7F7932
      004C004C004C007C004C0040000000000000000000000000E07F186300000000
      0000000000000000E07F18630000000000000000D3009901D300000000000000
      00000000D3009901990199019901D3000000007C006400007932FF7FD300D300
      D300D300D300D300D300D300D300FF7F793200000000000000000000FF7F3F4F
      3F4F004C007C007C007C004C0040000000000000000000001863000018631863
      18631863186318630000E07F0000000000000000D3009901D300793200000000
      000000007932D300990199019901D3000000007C000000007932FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F79320000000000000000FF7F3F4F3F4F
      FF7FFF7F007C667E667E667E004C00000000000000000000E07F000018631863
      18631863186318630000186300000000000000007932D3009901D30079320000
      7932D300D3009901D30099019901D30000000000000000007932FF7FFF7F3967
      396739673967396739673967FF7FFF7F7932000000000000FF7F3F4F3F4FFF7F
      FF7FFF7FFF7F004C004C004C000000000000000000000000E07F000018631863
      18631863186318630000186300000000000000000000D30099019901D300D300
      D30099019901D3007932D3009901D30000000000000000007932FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F793200000000FF7F3F4F3F4FFF7FFF7F
      FF7F793279320000000000000000000000000000000000001863000018631863
      186318631863186300000000000000000000000000000000D300D30099019901
      9901D300D300000000000000D300D30000000000000000007932FF7FFF7F3967
      396739673967396739673967FF7FFF7F79320000FF7F3F4F3F4FFF7FFF7FFF7F
      793200000000000000000000000000000000000000000000E07F000018631863
      18631863186318630000186300000000000000000000000000007932D300D300
      D300793200000000000000000000000000000000000000007932FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F7932FF7F3F4F3F4FFF7FFF7FFF7F7932
      007C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000007932FF7FFF7F3967
      396739673967396739673967FF7FFF7F793279323F4FFF7FFF7FFF7F7932007C
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000007932FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F793200007932FF7FFF7F793200000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000007932793279327932
      7932793279327932793279327932793279320000000079327932000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000D300D300
      9901D3009901D300000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BC7B
      000000000000000000000000000000000000321E853626262116221A231E2522
      2422221A2116231E24222522221A241E000000000000000000000000D3009901
      D3009901D300D3000000000000000000000000000000D300D300D300D300D300
      D300D300D300D300D300D300000000000000000000000000BC7B9C7339679C73
      BC7B0000000000000000000000000000000033262626744FDF7FBE7BBD73BB6F
      BC73BE77BE7BBD77BC73BB6FDE77241E000000000000000000000000D300D300
      9901D3009901D30000000000000000000000000079323F4F3F4F3F4F3F4F3F4F
      3F4F3F4F3F4F3F4F79327932D300000000000000BC7B9C73D65A794E93319331
      D65A39679C73BC7B00000000000000000000352A231ABD77FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F241E000000000000000000000000734ED300
      D300D300D300734E000000000000000000007932793279327932793279327932
      79327932793279327932D3007932D30000009C73794E9331794E794EFF7F9331
      734E734ED65A9C7300000000000000000000352E22169B6F9967BC73BC73BC73
      BC73BB6FBB6F565B3453565BF24A241E0000000000000000000000000000734E
      FF7F3F678C310000000000000000000000007932FF7F3F4F3F4F3F4F3F4F3F4F
      3F4F3F4F3F4F3F4F3F4F7932D300D30000009331794E3F4F3F4F3F67FF7F9331
      864D864D864DBC7B00000000000000000000352A431ADC73E30DE30DE30DE30D
      E30D4926CE3A4822E30DE30D061A241E0000000000000000000000000000734E
      FF7F3F678C310000000000000000000000007932FF7F3F4F3F4F3F4F3F4F2003
      60023F4F007C00643F4F79327932D300000093313F4F3F4F3F4F3F67FF7F9331
      2C672C676066FF7F3F6700000000000000003426241EBC733967E30DE30DE30D
      E30D8C323147E30DE30DC30DDC73241E0000000000000000000000000000734E
      FF7F3F678C310000000000000000000000007932FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F793279327932D30093313F4F3F4F3F4F3F67FF7F9331
      2C672C7F66663F6799010000000000000000000025229967FF7F5967E30DE30D
      E30D324BE30DE30D4A2AE2093453241E0000000000000000000000000000734E
      FF7F3F678C310000000000000000000000007932FF7F3F4F3F4F3F4F3F4F3F4F
      3F4F3F4F3F4F3F4F3F4F793279327932D30093313F4F794E79323F67FF7F9331
      3367337FD65A9F0199010000000000000000000025229967FF7FFF7F365BE30D
      3147E30DE30DD042575F55577B6F241E0000000000000000000000000000734E
      FF7F3F678C310000000000000000000000000000793279327932793279327932
      79327932793279323F4F3F4F79327932D30093313F4F9331FF7F3F67FF7F9331
      3367186399019901990199019901990100000000231E9A6BFF7FFE7B5147F042
      E30DE30DE30D4926975FFF7FFF7F241E00000000000000000000000000008C31
      8C318C318C31000000000000000000008C31000000007932FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F79323F4F3F4F7932D30093313F4F794E93313F67FF7F9331
      000099019901990199019901990199010000352E22169C73FF7F3147EF3EE30D
      E30DE30DE30DE30D28225453FF7F241E000000008C318C31000000008C31734E
      734E734E734E8C310000000000008C318C310000000000007932FF7F9C739C73
      9C739C739C73FF7F793279327932D300000093313F4F3F4F3F4F3F67FF7F9331
      0000794E9901990199019901990199010000352E231ABD770D37AA2AE30DE30D
      D0427B6F4926E30DE30DA2093043241E0000734E734E734E8C318C31734E3967
      39673967734E8C318C318C318C3139678C310000000000007932FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F793200000000000093313F4F3F4F3F4F3F67FF7F9331
      3967BC7B794E9F0199010000000000000000352A241EBC73D24AE30DE30D124B
      FE7BFF7F9C73F34EE30DE30D5A6B241E0000734EFF7F39673967396739673967
      396739673967734E734E734E39678C31000000000000000000007932FF7F9C73
      9C739C739C739C73FF7F793200000000000093313F4F3F4F3F4F3F67FF7F9331
      3367000033673F4F990100000000000000000000241EDC73FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F241E0000734EFF7F39673967FF7F39673967
      396739673967396739673967734E0000000000000000000000007932FF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F7932000000009331794E3F4F3F4F3F67FF7F9331
      39670000666600003F4F00000000000000003326672A9142AC32AD36AE3AB042
      AF3EAD36AC32AE3AB042B042AD36241E0000734EFF7FFF7F734E734EFF7FFF7F
      FF7FFF7FFF7FFF7F734E734E0000000000000000000000000000000079327932
      793279327932793279327932793200000000000018637932794E394FFF7F9331
      6066606660660000000000000000000000003326683249262822282229262926
      2926292628222926292629262926241E00000000734E734E00000000734E734E
      734E734E734E734E000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000003967794E93319331
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000210001000100220400000000
      2000200021000200020400041763000000000000000079327932793279327932
      7932793279327932793279327932000000000000C61800000000000000000000
      000000000000000000000000000000000000000000000000004C000000000000
      0000000000000000000000000000007C000031461863596B5967376337637763
      566357633867396719670000586B00000000000000007932FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F793200000000C6188C318C318C31000000000000
      00000000000000000000000000000000000000000000C664007C004C00000000
      0000000000000000000000000000000000001046FE7FFC7FFA7BFA7FF77B042A
      F66FFB7FBB7FFD7F376B0004186700000000000000007932FF7F9C739C739C73
      9C739C739C739C739C73FF7F7932000000000000734E3967734E8C318C310000
      00000000000000000000000000000000000000000000C664667E007C004C0000
      000000000000000000000000007C000000003046FD7FFA7FF97FF677E229222A
      F673F773FB7FDA7B36672004176300000000000000007932FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F7932000000000000734E39673967734E734E8C31
      8C3100000000000000000000000000000000000000000000C664807D00640000
      00000000000000000000007C0000000000000E46FD7FFB7FF777022A212A0126
      0326E621FA6FFB7B36672004396700000000000000007932FF7F9C739C739C73
      9C739C739C739C739C73FF7F79320000000000000000734E39673967734E734E
      734E8C318C3100000000000000000000000000000000000000000064007C004C
      0000000000000000007C004C0000000000000E42FD7FF977F97BF46F2226022A
      F773071E8511FA6F57670000F86200000000000000007932FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F79320000000000000000734E9C7339673967734E
      734E734ED300CC00CC000000000000000000000000000000000000000064007C
      004C00000000007C004C00000000000000002F42FE7FFC7BF96FF977F6730432
      F56FFB6F450DFC7B576700043A6F00000000000000007932FF7F9C739C739C73
      9C739C739C739C739C73FF7F793200000000000000000000734E9C7339673967
      734ED300D300D300D300CC000000000000000000000000000000000000000064
      007C004C007C004C000000000000000000003142FE7BFC77651DFA73F877F577
      F777FA6F671DFB77366700041A6F00000000000000007932FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F793200000000000000000000734EFF7F9C733967
      D300D300D300D300D300D300CC00000000000000000000000000000000000000
      0064007C004C0000000000000000000000001142FF7FFE7B461DFC7BF873232A
      F46FF97BFA77FB7B57670004196B00000000000000007932FF7F9C739C739C73
      9C739C739C739C739C73FF7F7932000000000000000000000000734EFF7FD300
      9919D300D300D300D300D300D300CC0000000000000000000000000000000064
      007C004C0064004C000000000000000000003246FF7FFD77461DC92DF9732222
      2122F673FA7FFB7B57670000396700000000000000007932FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F7932000000000000000000000000734ED3009919
      D3009919D300D300D300D300D300D300CC00000000000000000000000064007C
      004C000000000064004C00000000000000000F3EFF7FFE7FDA73E92DE5254222
      211EE325F977FD7B38634104386300000000000000007932FF7F9C739C739C73
      9C739C73FF7F79327932793279320000000000000000000000000000D300D300
      9919D3009919D300D300D300D300D300D3000000000000000064007C007C004C
      00000000000000000064004C0000000000003046FF7FDD7FFD7FFC7BF9734426
      0222F773FB7B576359630000396700000000000000007932FF7FFF7FFF7FFF7F
      FF7FFF7FFF7F79329C73793200000000000000000000000000000000D300D300
      D3009919D3009919D300D300D300D300734E000000000064667E007C004C0000
      000000000000000000000064004C000000003042FE7FFF7FFE7FFD7FFB7BE62D
      F777FA7B2000200000000000196700000000000000007932FF7FFF7FFF7FFF7F
      FF7FFF7FFF7F793279320000000000000000000000000000000000000000D300
      D300D3009919D3009919D300D300734E734E000000008C4D00648C4D00000000
      0000000000000000000000000000006400000F42FF7FFF7FFF7FFF7FFD7FD977
      FA7FFB772F42DE7F21083A6FDF7F000000000000000079327932793279327932
      7932793279327932000000000000000000000000000000000000000000000000
      D300D300D3009919D300D30039673967734E0000000000000000000000000000
      0000000000000000000000000000000000003046FF7FFF7FFF7FFF7FFF7FFE7F
      FD7FFD7F0E420004F766FF7FDF7F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D300D300D300D3009C739C73396739670000000000000000000000000000
      0000000000000000000000000000000000000F4231461342F23D324230421042
      0F422F3E2E42386BFF7FDF7FFF7F00000000424D3E000000000000003E000000
      2800000040000000600000000100010000000000000300000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000801FFFFFFFFFFC00000F03FF0000FC00
      000F00FF0000FC00000F00FF0000FC00000F007F0000E000000F003F0000E000
      000F00070000E000000F00000000E00000000000000000070000000000000007
      00010000000000070003000000000007000700000000003F000F00000000003F
      800F00000000003FC01FFFFF0000003FFFFFFCFFF8FFF8FF8000F87FF03FF03F
      8000F07FE00FE30F8000E07FE003E4C38000C03FC001C4718000803EC001C84D
      8000001C800188E5800000088001909D8000000100031DCB800080030003333B
      80008007800798D78000800FE007E6378000C01FF80FF9AF8000E03FFE0FFE6F
      8000F07FFF9FFF9F8000F8FFFFFFFFFFFFFFFFFFE000FFFFFFFFFFFFE000FFFF
      E003F0FFE000FE7FC003E0FFE000FC3FC003C0FF6000FC1FC00383012000FC0F
      C00387010000F807C0038F812000F803C00387816000F003C0038201E000E007
      C003C001E000C03FC003E039E00080FFC003F07FE00000FFC003FFFFE00001FF
      FFFFFFFFE00087FFFFFFFFFFE000CFFFFFFFF81FFFFFFDFF0001F81FC007E0FF
      0001F81F8003801F0001F81F0001001F0001FC3F0001001F0001FC3F0001000F
      0001FC3F0000000F8001FC3F0000000F8001FC3F800000018001FC3EC0000101
      0001981CE001010100010000E007000F00010001F007008F80010003F00300AF
      00010007F803803F0001981FFFFFE1FFFFFFFFFFFFFF8003C0033FFFEFFD0003
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
    Left = 64
    Top = 123
    ReportForm = {
      190000009D000000190000000001000100FFFFFFFFFF09000000340800009A0B
      00000000000000000000000000000000000000FFFF00000000FFFF0000000000
      000000000500506167653100030400466F726D000F0000FFDC00000078000000
      7C0100002C01000004000000FEFEFF000000000000000000000000FDFF010000
      0000FC000000000000000000000000000000005800DBE5BEB68F13E440ABAAAA
      A2BE75E440}
  end
  object frDBDataSet: TfrDBDataSet
    DataSet = MData
    Left = 27
    Top = 123
  end
end
