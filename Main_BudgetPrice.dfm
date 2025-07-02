inherited Frm_BudgetPrice: TFrm_BudgetPrice
  Left = 342
  Top = 119
  Caption = #26448#26009#21333#20215
  ClientHeight = 615
  ClientWidth = 930
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image: TImage
    Width = 930
  end
  inherited L_title: TLabel
    Left = 0
    Top = 2
    Width = 1281
    Caption = #36890#29992#25968#25454#30331#35760
  end
  inherited P_back: TPanel
    Width = 930
    Height = 594
    inherited P_main: TPanel
      Width = 924
      Height = 588
      inherited Panel_down: TPanel
        Top = 559
        Width = 922
        Height = 27
        inherited Bevel_bass: TBevel
          Width = 922
        end
        object Label7: TLabel
          Left = 8
          Top = 9
          Width = 723
          Height = 13
          Caption = 
            #24037#31649#32467#31639#20215#65309#24037#31649#22522#20215#65291#24037#31649#35843#25972#65307'      '#26448#26009#32467#31639#20215#65309#26448#26009#22522#20215#65291#26448#26009#35843#25972#65307'   '#22806#21327#32467#31639#20215#65309#26448#26009#22522#20215#65291#26448#26009#35843#25972#65291#24037#31649#22522#20215#65291#24037#31649 +
            #35843#25972#65307
          Transparent = True
        end
      end
      object PC_2: TRzPageControl
        Left = 0
        Top = 0
        Width = 922
        Height = 559
        ActivePage = TS_WorkTaskPrice
        Align = alClient
        TabIndex = 0
        TabOrder = 1
        TabOrientation = toBottom
        TabStyle = tsDoubleSlant
        FixedDimension = 19
        object TS_WorkTaskPrice: TRzTabSheet
          Color = 14935011
          Caption = #26448#26009#21333#20215
          object RzSizePanel1: TRzSizePanel
            Left = 0
            Top = 35
            Width = 277
            Height = 503
            Color = 14935011
            HotSpotVisible = True
            SizeBarWidth = 7
            TabOrder = 0
            VisualStyle = vsGradient
            object MyTreeView: TTreeView
              Left = 0
              Top = 0
              Width = 269
              Height = 503
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
            Left = 277
            Top = 35
            Width = 643
            Height = 503
            Align = alClient
            BevelOuter = bvNone
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 1
            object cxGrid: TcxGrid
              Left = 0
              Top = 87
              Width = 643
              Height = 369
              Align = alClient
              PopupMenu = PM
              TabOrder = 0
              OnContextPopup = cxGridContextPopup
              object cxGV: TcxGridDBTableView
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
                object Sel: TcxGridDBColumn
                  Caption = #8730
                  PropertiesClassName = 'TcxButtonEditProperties'
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  Properties.OnButtonClick = SelPropertiesButtonClick
                  Visible = False
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Options.Sorting = False
                  Width = 20
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
                  Width = 53
                  DataBinding.FieldName = 'FParentNumber'
                end
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
                  Width = 71
                  DataBinding.FieldName = 'FNumber'
                end
                object FBudgetPartsName: TcxGridDBColumn
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
                  Width = 192
                  DataBinding.FieldName = 'FBudgetPartsName'
                end
                object FBudgetPartsModel: TcxGridDBColumn
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
                  DataBinding.FieldName = 'FBudgetPartsModel'
                end
                object FBudgetPartsUnit: TcxGridDBColumn
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
                object FBalanceBasePrice: TcxGridDBColumn
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
                object FMaterialBasePrice: TcxGridDBColumn
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
                object FMaterialResizePrice: TcxGridDBColumn
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
                object FMaterialPrice: TcxGridDBColumn
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
                object FWorkBasePrice: TcxGridDBColumn
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
                object FWorkResizePrice: TcxGridDBColumn
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
                object FWorkPrice: TcxGridDBColumn
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
                object FProductName: TcxGridDBColumn
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
                object FBudgetPartsRemark: TcxGridDBColumn
                  Caption = #32467#31639#37096#20214#22791#27880
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Options.Sorting = False
                  Width = 163
                  DataBinding.FieldName = 'FBudgetPartsRemark'
                end
                object FBudgetPriceID: TcxGridDBColumn
                  Caption = #32467#31639#21333#20215'ID'
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Options.Sorting = False
                  Width = 64
                  DataBinding.FieldName = 'FBudgetPriceID'
                end
                object FBudgetPartsID: TcxGridDBColumn
                  Caption = #32467#31639#37096#20214'ID'
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Options.Sorting = False
                  Width = 64
                  DataBinding.FieldName = 'FBudgetPartsID'
                end
                object FWorkCarryID: TcxGridDBColumn
                  Caption = #26448#26009#25191#34892'ID'
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  DataBinding.FieldName = 'FWorkCarryID'
                end
                object FWorkCarry: TcxGridDBColumn
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
                object FWorkCarryJobID: TcxGridDBColumn
                  Caption = #24037#31649#25191#34892'ID'
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Options.Sorting = False
                  DataBinding.FieldName = 'FWorkCarryJobID'
                end
                object FWorkCarryJob: TcxGridDBColumn
                  Caption = #24037#31649#25191#34892#26085#26399
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 77
                  DataBinding.FieldName = 'FWorkCarryJob'
                end
              end
              object cxGL: TcxGridLevel
                GridView = cxGV
              end
            end
            object PanelBkGnd: TPanel
              Left = 0
              Top = 0
              Width = 643
              Height = 87
              Align = alTop
              BevelOuter = bvNone
              Ctl3D = True
              ParentCtl3D = False
              TabOrder = 1
              object Label2: TLabel
                Left = 6
                Top = 37
                Width = 72
                Height = 13
                Caption = #26448#26009#25191#34892#26085#26399
                Transparent = True
              end
              object Label4: TLabel
                Left = 6
                Top = 13
                Width = 75
                Height = 13
                Caption = #20135'   '#21697'   '#31867'   '#21035
                Transparent = True
              end
              object Label6: TLabel
                Left = 6
                Top = 61
                Width = 96
                Height = 13
                Caption = #36873#25321#22797#21046#25191#34892#26085#26399
                Transparent = True
                Visible = False
              end
              object E_FWorkCarryID: TcxButtonEdit
                Left = 254
                Top = 32
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
                TabOrder = 0
                ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WIN2000'
              end
              object E_FWorkCarry: TcxButtonEdit
                Left = 104
                Top = 32
                Width = 145
                Height = 22
                AutoSize = False
                Enabled = False
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.OnButtonClick = E_FAgentDatePropertiesButtonClick
                Style.BorderColor = 8623776
                Style.BorderStyle = ebsSingle
                Style.ButtonTransparency = ebtHideUnselected
                TabOrder = 1
                ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WIN2000'
              end
              object E_FProductName: TcxButtonEdit
                Left = 104
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
              object E_FProductID: TcxButtonEdit
                Left = 254
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
                TabOrder = 3
                ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WIN2000'
              end
              object E_FWorkCarry_Copy: TcxButtonEdit
                Left = 104
                Top = 56
                Width = 145
                Height = 22
                AutoSize = False
                Enabled = False
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.OnButtonClick = E_FMaterialDate_1PropertiesButtonClick
                Style.BorderColor = 8623776
                Style.BorderStyle = ebsSingle
                Style.ButtonTransparency = ebtHideUnselected
                TabOrder = 4
                Visible = False
                ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WIN2000'
              end
              object E_FWorkCarryID_Copy: TcxButtonEdit
                Left = 254
                Top = 56
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
                TabOrder = 5
                Visible = False
                ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WIN2000'
              end
              object E_FDepartmentID: TcxButtonEdit
                Left = 294
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
                TabOrder = 6
                ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WIN2000'
              end
              object E_FWorkCarryjobID: TcxButtonEdit
                Left = 294
                Top = 32
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
              object E_FDepBalanceTypeID: TcxButtonEdit
                Left = 342
                Top = 32
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
                TabOrder = 8
                ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WIN2000'
              end
            end
            object ToolBar_Save: TPanel
              Left = 0
              Top = 456
              Width = 643
              Height = 47
              Align = alBottom
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 2
              Visible = False
              object OKBtn: TcxButton
                Left = 23
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
                Left = 111
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
          end
          object ToolBar_BudgetPrice: TToolBar
            Left = 0
            Top = 0
            Width = 920
            Height = 35
            AutoSize = True
            ButtonHeight = 35
            ButtonWidth = 55
            Caption = 'ToolBar_BudgetPrice'
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
              Caption = #21047#26032'[&R]'
              ImageIndex = 18
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
              ImageIndex = 9
              Visible = False
              OnClick = TB_EditClick
            end
            object TB_Del: TToolButton
              Left = 159
              Top = 0
              AutoSize = True
              Caption = #21024#38500'[&C]'
              ImageIndex = 2
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
            object TB_Prin: TToolButton
              Left = 220
              Top = 0
              Cursor = crHandPoint
              AutoSize = True
              Caption = #25171#21360'[&P]'
              ImageIndex = 4
              OnClick = TB_PrinClick
            end
            object ToolButton1: TToolButton
              Left = 273
              Top = 0
              Width = 8
              Caption = 'ToolButton1'
              ImageIndex = 9
              Style = tbsSeparator
            end
            object TB_EXIT: TToolButton
              Left = 281
              Top = 0
              Cursor = crHandPoint
              AutoSize = True
              Caption = #36864#20986'[&X]'
              ImageIndex = 5
              OnClick = TB_EXITClick
            end
          end
        end
        object TS_WorkCarry: TRzTabSheet
          Color = 14935011
          Caption = #26032#22686#26448#26009#25191#34892#26085#26399
          object RzSizePanel2: TRzSizePanel
            Left = 0
            Top = 35
            Width = 269
            Height = 503
            Color = 14935011
            HotSpotVisible = True
            SizeBarWidth = 7
            TabOrder = 0
            VisualStyle = vsGradient
            object MyTreeView_Carry: TTreeView
              Left = 0
              Top = 0
              Width = 261
              Height = 503
              Align = alClient
              AutoExpand = True
              Ctl3D = False
              Indent = 19
              ParentCtl3D = False
              TabOrder = 0
              OnChange = MyTreeView_CarryChange
              OnExpanding = MyTreeView_CarryExpanding
            end
          end
          object Panel2: TPanel
            Left = 269
            Top = 35
            Width = 651
            Height = 503
            Align = alClient
            BevelOuter = bvNone
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 1
            object cxGrid_Carry: TcxGrid
              Left = 0
              Top = 0
              Width = 651
              Height = 456
              Align = alClient
              PopupMenu = PM
              TabOrder = 0
              OnContextPopup = cxGrid_CarryContextPopup
              object cxGV_Carry: TcxGridDBTableView
                DataController.DataSource = DS_Mdata_Carry
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
                OptionsView.Navigator = True
                OptionsView.Footer = True
                OptionsView.GroupByBox = False
                object FDepartmentName_Carry: TcxGridDBColumn
                  Caption = #20107#19994#37096#21517#31216
                  PropertiesClassName = 'TcxButtonEditProperties'
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  Properties.OnButtonClick = FDepartmentName_PricePropertiesButtonClick
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Options.Sorting = False
                  Width = 98
                  DataBinding.FieldName = 'FDepartmentName'
                end
                object FDepBalanceType_Carry: TcxGridDBColumn
                  Caption = #32467#31639#31867#21035
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
                  DataBinding.FieldName = 'FDepBalanceType'
                end
                object FWorkCarryJob_Carry: TcxGridDBColumn
                  Caption = #24037#31649#25191#34892#26085#26399
                  PropertiesClassName = 'TcxButtonEditProperties'
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  Properties.OnButtonClick = FWorkCarryJob_PricePropertiesButtonClick
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 92
                  DataBinding.FieldName = 'FWorkCarryJob'
                end
                object FWorkCarryYear_Carry: TcxGridDBColumn
                  Caption = #24180
                  PropertiesClassName = 'TcxSpinEditProperties'
                  Properties.Increment = 2015.000000000000000000
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 46
                  DataBinding.FieldName = 'FWorkCarryYear'
                end
                object FWorkCarryMonth_Carry: TcxGridDBColumn
                  Caption = #26376
                  PropertiesClassName = 'TcxComboBoxProperties'
                  Properties.Items.Strings = (
                    '01'
                    '02'
                    '03'
                    '04'
                    '05'
                    '06'
                    '07'
                    '08'
                    '09'
                    '10'
                    '11'
                    '12')
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 36
                  DataBinding.FieldName = 'FWorkCarryMonth'
                end
                object FWorkCarryDay_Carry: TcxGridDBColumn
                  Caption = #26092
                  PropertiesClassName = 'TcxComboBoxProperties'
                  Properties.Items.Strings = (
                    '('#19978')'
                    '('#19979')')
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 43
                  DataBinding.FieldName = 'FWorkCarryDay'
                end
                object FWorkCarryType_Carry: TcxGridDBColumn
                  Caption = #20998#31867
                  PropertiesClassName = 'TcxComboBoxProperties'
                  Properties.Items.Strings = (
                    #26412#22320#23376#20844#21496
                    #24322#22320#23376#20844#21496
                    '')
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 90
                  DataBinding.FieldName = 'FWorkCarryType'
                end
                object FWorkCarry_Carry: TcxGridDBColumn
                  Caption = #26448#26009#25191#34892#26085#26399
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Options.Sorting = False
                  Width = 126
                  DataBinding.FieldName = 'FWorkCarry'
                end
                object FWorkCarryJobID_Carry: TcxGridDBColumn
                  Caption = #24037#31649#25191#34892'ID'
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Options.Sorting = False
                  DataBinding.FieldName = 'FWorkCarryJobID'
                end
                object FWorkCarryID_Carry: TcxGridDBColumn
                  Caption = #26448#26009#25191#34892'ID'
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  DataBinding.FieldName = 'FWorkCarryID'
                end
                object FAgentID_Carry: TcxGridDBColumn
                  Caption = #23376#20844#21496'ID'
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Options.Sorting = False
                  Width = 52
                  DataBinding.FieldName = 'FAgentID'
                end
                object FDepartmentID_Carry: TcxGridDBColumn
                  Caption = #20107#19994#37096'ID'
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Options.Sorting = False
                  Width = 52
                  DataBinding.FieldName = 'FDepartmentID'
                end
                object FDepBalanceTypeID_Carry: TcxGridDBColumn
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  DataBinding.FieldName = 'FDepBalanceTypeID'
                end
              end
              object cxGL_Carry: TcxGridLevel
                GridView = cxGV_Carry
              end
            end
            object ToolBar_Save_Carry: TPanel
              Left = 0
              Top = 456
              Width = 651
              Height = 47
              Align = alBottom
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 1
              Visible = False
              object OKBtn_Carry: TcxButton
                Left = 23
                Top = 16
                Width = 80
                Height = 25
                BiDiMode = bdRightToLeftReadingOnly
                Caption = #20445#23384'[&S]'
                ParentBiDiMode = False
                TabOrder = 0
                OnClick = OKBtn_CarryClick
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
              object CancelBtn_Carry: TcxButton
                Left = 111
                Top = 16
                Width = 80
                Height = 25
                BiDiMode = bdRightToLeftReadingOnly
                Caption = #21462#28040'[&C]'
                ParentBiDiMode = False
                TabOrder = 1
                OnClick = CancelBtn_CarryClick
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
          object ToolBar_Carry: TToolBar
            Left = 0
            Top = 0
            Width = 920
            Height = 35
            AutoSize = True
            ButtonHeight = 35
            ButtonWidth = 55
            Caption = 'ToolBar_Carry'
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
            object TB_Ref_Carry: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
              Caption = #21047#26032'[&R]'
              ImageIndex = 18
              OnClick = TB_Ref_CarryClick
            end
            object TB_APP_Carry: TToolButton
              Left = 53
              Top = 0
              AutoSize = True
              Caption = #22686#21152'[&A]'
              ImageIndex = 0
              OnClick = TB_APP_CarryClick
            end
            object TB_Edit_Carry: TToolButton
              Left = 106
              Top = 0
              AutoSize = True
              Caption = #20462#25913'[&B]'
              ImageIndex = 9
              Visible = False
              OnClick = TB_Edit_CarryClick
            end
            object TB_Del_Carry: TToolButton
              Left = 159
              Top = 0
              AutoSize = True
              Caption = #21024#38500'[&C]'
              ImageIndex = 2
              Visible = False
              OnClick = TB_Del_CarryClick
            end
            object ToolButton7: TToolButton
              Left = 212
              Top = 0
              Width = 8
              Caption = 'ToolButton5'
              ImageIndex = 4
              Style = tbsSeparator
            end
            object ToolButton8: TToolButton
              Left = 220
              Top = 0
              Cursor = crHandPoint
              AutoSize = True
              Caption = #25171#21360'[&P]'
              ImageIndex = 4
            end
            object ToolButton10: TToolButton
              Left = 273
              Top = 0
              Width = 8
              Caption = 'ToolButton1'
              ImageIndex = 9
              Style = tbsSeparator
            end
            object ToolButton11: TToolButton
              Left = 281
              Top = 0
              Cursor = crHandPoint
              AutoSize = True
              Caption = #36864#20986'[&X]'
              ImageIndex = 5
              OnClick = TB_EXITClick
            end
          end
        end
      end
    end
  end
  object MData: TdxMemData
    Indexes = <>
    SortOptions = []
    BeforePost = MDataBeforePost
    Left = 99
    Top = 112
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
    object MDataFWorkBasePrice: TCurrencyField
      FieldName = 'FWorkBasePrice'
    end
    object MDataFWorkResiaePrice: TCurrencyField
      FieldName = 'FWorkResiaePrice'
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
    object MDataFMaterialBasePrice: TFloatField
      FieldName = 'FMaterialBasePrice'
    end
    object MDataFMaterialPrice: TFloatField
      FieldName = 'FMaterialPrice'
    end
    object MDataFMaterialResizePrice: TFloatField
      FieldName = 'FMaterialResizePrice'
    end
    object MDataFBalanceBasePrice: TFloatField
      FieldKind = fkCalculated
      FieldName = 'FBalanceBasePrice'
      Calculated = True
    end
  end
  object DS_Mdata: TDataSource
    DataSet = MData
    Left = 59
    Top = 112
  end
  object ImageList: TImageList
    Left = 99
    Top = 278
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
      00000000000000000000FF310000FF310000FF310000FF310000FF310000FF31
      0000FF310000FF310000FF310000FF3100000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000008080000080000000800
      0000100808000000000000000000000800000008000008080000100000001000
      080000000800BDC6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF310000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF310000948C390029A56B00318C4A00088C
      2900108C3100188C3900298C4200218C4200108C3100088C2900188C3900218C
      4200298C4200108C3100218C3900000000008C8C8C00C6C6C600CED6D600CED6
      CE00BDCEC600BDCEC600BDDEC600B5D6C600BDD6C600C6CECE00CECECE00CEC6
      CE0000000000C6D6D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF310000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF3100009C8C4A00318C4A00A5DE9C00FFF7
      FF00F7EFF700EFEFE700DEEFDE00E7EFE700F7EFEF00F7EFF700EFEFEF00E7EF
      E700DEEFDE00F7F7EF00218C39000000000084848C00F7FFFF00E7FFFF00D6FF
      F700D6FFFF00BDFFF70021845200B5FFDE00DEFFFF00DEEFFF00EFFFFF00BDCE
      D60000000800C6C6CE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF310000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF310000AD8C5200188C3100EFEFEF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00218C390000000000848C8C00EFFFFF00D6FFFF00CEFF
      FF00B5FFEF00107B5200108C5200B5FFE700BDFFE700DEFFFF00D6F7F700B5CE
      CE0000080800BDC6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF31
      0000FF310000FF310000FF310000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF310000AD8C5A00108C2900DEE7DE00CEE7
      CE00E7EFE700E7EFE700E7EFE700E7EFE700DEEFDE00DEEFDE00B5D6B500A5CE
      A500B5D6B50094BD9400218C39000000000073848C00EFFFFF00DEFFFF00BDFF
      EF0010845200088C520008844A0018844A00317B4200D6FFDE00DEFFF700B5CE
      CE0000080800CECECE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF31
      0000FFFFFF00FFFFFF00FF310000FF310000FF310000FF310000FF310000FF31
      0000FF310000FF310000FF310000FF310000AD8C520018943100E7F7E700187B
      1800187B1800187B1800187B1800187B18004A944A0073B5730042944200187B
      1800187B180031843100218C39000000000073848400EFFFFF00CEFFEF00CEFF
      F700A5FFDE00108C4A0010845200BDFFE7003984390029632100D6FFDE00BDD6
      CE0000000000C6BDC60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF31
      0000FFFFFF00FFFFFF00FF310000FF310000FF310000FF310000FF310000FF31
      0000FFCE9C00FF3100006363FF00FF310000A58C4A00218C3900E7EFE700CECE
      CE00187B1800187B1800187B1800187B180063A563008CCE8C00187B1800187B
      180018731800E7F7E700218C3900000000007B8C8400F7FFFF00E7FFF700CEFF
      DE00CEFFEF00B5FFE70021846300ADFFDE00DEFFDE0029521800E7FFF700BDD6
      CE0000000800D6CEDE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF31
      0000FFFFFF00FFFFFF00FFCE9C00FF310000FF310000FF310000FF310000FF31
      0000FF310000FF310000FF310000FFCE9C0000000000298C4200CEE7CE00FFFF
      FF00CED6CE00187B1800187B1800187B180094CE9400187B1800187B18005294
      5200107B1000A5CEA500218C3900000000008C8C8400F7FFF700E7FFEF00295A
      3900D6FFE700C6FFEF00ADFFEF00BDFFEF00D6FFDE00395A3900DEFFEF00B5CE
      CE0000000800D6C6DE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF310000FF310000FF310000FF31
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FF31000000000000000000000000000000000000298C4200CEE7CE00FFFF
      FF00FFFFFF00B5CEB500187B18008CCE8C00187B1800187B180084B58400BDD6
      BD00ADD6AD00DEDEDE00218C3900000000008C848400FFFFFF00F7FFF7003152
      3900E7FFF700C6FFE700188C5200A5FFDE00CEFFF700D6FFEF00DEFFF700BDD6
      CE0000000800CEC6D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF310000FFFFFF00FFFFFF00FF31
      0000FF310000FF310000FF310000FF310000FF310000FF310000FF310000FF31
      0000FF31000000000000000000000000000000000000188C3900D6E7D600FFFF
      FF00F7FFF7008CD68C0084BD8400187B1800187B1800187B18004A944A00BDE7
      BD00FFFFFF00FFFFFF00218C390000000000948C8C00FFFFFF00EFFFEF003152
      39004A735A00CEFFE700108C4200088C4200B5FFE700D6FFFF00DEFFF700BDD6
      CE0000000000CECECE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF310000FFFFFF00FFFFFF00FF31
      0000FF310000FF310000FF310000FF310000FF310000FFCE9C00FF3100006363
      FF00FF310000000000000000000000000000AD8C5A00108C2900E7E7E700FFFF
      FF008CCE8C007BBD7B00187B1800187B1800187B1800187B1800187B1800428C
      4200A5D6A500FFFFFF00218C3900000000007B847B00FFFFFF00F7FFFF00D6F7
      E7004A7B5A00297B4A0010944200088C3900187B4A00CEFFEF00EFFFF700C6CE
      C60008100800C6CEC60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF310000FFFFFF00FFFFFF00FFCE
      9C00FF310000FF310000FF310000FF310000FF310000FF310000FF310000FF31
      0000FFCE9C00000000000000000000000000AD8C5A00188C3100EFEFEF006BC6
      6B0052AD5200187B1800187B180084B58400DEDEDE004A944A00187B1800187B
      1800106B100084CE8400218C390000000000848C8C00FFFFFF00EFF7FF00EFFF
      FF00E7FFF700CEFFE70021944A0010844200BDFFE700DEFFF700BDD6C600CED6
      C60000000000CECECE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF310000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF310000000000000000
      000000000000000000000000000000000000AD8C5200218C3900E7EFE70094B5
      9400187B1800187B180094C69400F7FFF700FFFFFF00E7E7E7009CBD9C00187B
      1800187B1800D6D6D600218C390000000000848C8400F7FFFF00FFFFFF00F7FF
      FF00EFFFFF00DEFFF700317B5A00BDFFEF00D6FFF70000080000000800000000
      000000000000CEC6CE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF310000FF310000FF310000FF31
      0000FF310000FF310000FF310000FF310000FF310000FF310000000000000000
      00000000000000000000000000000000000000000000218C3900E7F7E700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00218C3900000000007B848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFFFFF00CEF7EF00D6FFFF00DEFFEF007B8C8400F7F7FF000808
      1000D6CEDE00FFF7FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF310000FF310000FF310000FF31
      0000FF310000FF310000FFCE9C00FF3100006363FF00FF310000000000000000
      0000000000000000000000000000000000009C8C4A00399C52008CA5840063AD
      63006BAD6B0073AD730084AD84007BAD7B006BAD6B0063AD630073AD730084AD
      840084AD84006BAD6B00218C390000000000848C8C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7FFFF00EFFFFF00EFFFFF007384840000000800BDBD
      CE00FFFFFF00FFF7FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFCE9C00FF310000FF310000FF31
      0000FF310000FF310000FF310000FF310000FF310000FFCE9C00000000000000
      0000000000000000000000000000000000009C8C4A00429C63004A944A00428C
      4200428C42004A8C4A004A8C4A004A8C4A004A8C4A00428C42004A8C4A004A8C
      4A004A8C4A004A8C4A00218C3900000000007B8484008C8C8C009C848400947B
      7B00948C8400848C8400848484007B8484007B8C7B00738C8400C6CED600FFFF
      FF00FFF7FF00FFFFFF0000000000000000000000000000000000000000000000
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
      6300CE636300CE636300CE636300CE6363000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840084848400848484000000000000000000000000000000
      00000000000000000000000000000000000000000000CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C63000000000031313100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400B5B5B5009C9C9C00B5B5B5008484840084848400000000000000
      00000000000000000000000000000000000000000000CE9C6300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C63003131310063636300636363006363
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF0000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400B5B5B5009C9C9C00FFFFFF00FFFFFF00B5B5B500B5B5B500848484008484
      84000000000000000000000000000000000000000000CE9C6300FFFFFF009C31
      00009C3100009C3100009C3100009C3100009C3100009C3100009C3100009C31
      00009C3100009C310000FFFFFF00CE9C6300000000009C9C9C00CECECE009C9C
      9C00636363006363630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      84009C9C9C00FFFFFF009C9C9C009C9C9C00FFFFFF00FFFFFF00B5B5B500B5B5
      B5008484840084848400000000000000000000000000CE9C6300FFFFFF009C31
      0000CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C63009C310000FFFFFF00CE9C6300000000009C9C9C00CECECE00CECE
      CE009C9C9C009C9C9C0063636300636363000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000FFFFFF008484840084848400000000000000
      000000000000000000000000000000000000000000000000000084848400B5B5
      B5009C9C9C00FFFFFF0084848400B5B5B5009C9C9C00FFFFFF00FFFFFF00FFFF
      FF00B5B5B500B5B5B500848484000000000000000000CE9C6300FFFFFF009C31
      00009C3100009C3100009C3100009C3100009C3100009C3100009C3100009C31
      00009C3100009C310000FFFFFF00CE9C630000000000000000009C9C9C00CECE
      CE00CECECE009C9C9C009C9C9C009C9C9C006363630063636300000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      000000000000000000000000000063639C000000000000000000848484009C9C
      9C00FFFFFF00B5B5B50084848400B5B5B5009C9C9C00FFFFFF00848484008484
      8400FFFFFF00FFFFFF00848484000000000000000000CE9C6300FFFFFF009C31
      0000CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C63009C310000FFFFFF00CE9C630000000000000000009C9C9C00E7E7
      E700CECECE00CECECE009C9C9C009C9C9C009C9C9C009C310000633100006331
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF000000
      0000FFFFFF000000000000000000C6C6C6000000000000000000000000000000
      0000000000000000000063639C00319CCE000000000084848400B5B5B5009C9C
      9C00FFFFFF00B5B5B500E7E7E700B5B5B500FFFFFF00FFFFFF00FFFFFF00B5B5
      B50084848400FFFFFF00848484000000000000000000CE9C6300FFFFFF009C31
      00009C3100009C3100009C3100009C3100009C3100009C3100009C3100009C31
      00009C3100009C310000FFFFFF00CE9C63000000000000000000000000009C9C
      9C00E7E7E700CECECE00CECECE009C9C9C009C3100009C3100009C3100009C31
      00006331000000000000000000000000000084848400FFFFFF00000000000000
      0000FFFFFF0084848400C6C6C600FFFFFF008484840000000000FFFFFF008484
      84000000000063639C00319CCE0063CEFF0000000000848484009C9C9C00FFFF
      FF00B5B5B500E7E7E700E7E7E700B5B5B500FFFFFF008484840084848400FFFF
      FF00FFFFFF00FFFFFF00848484000000000000000000CE9C6300FFFFFF009C31
      0000CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C63009C310000FFFFFF00CE9C63000000000000000000000000009C9C
      9C00FFFFFF00E7E7E700CECECE009C3100009C3100009C3100009C3100009C31
      00009C3100006331000000000000000000008484840000000000000000000000
      0000848484000000000000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF0063639C00319CCE0063CEFF000000000084848400B5B5B5009C9C9C00FFFF
      FF00FFFFFF00FFFFFF00B5B5B500FFFFFF00FFFFFF00FFFFFF00B5B5B5008484
      8400FFFFFF0084848400000000000000000000000000CE9C6300FFFFFF009C31
      00009C3100009C3100009C3100009C3100009C3100009C3100009C3100009C31
      00009C3100009C310000FFFFFF00CE9C63000000000000000000000000000000
      00009C9C9C00FFFFFF009C310000CE6331009C3100009C3100009C3100009C31
      00009C3100009C31000063310000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000FFFFFF006363
      9C00319CCE0063CEFF000000000000000000848484009C9C9C00FFFFFF00FFFF
      FF009C3100009C310000FFFFFF00FFFFFF008484840084848400FFFFFF00FFFF
      FF00FFFFFF0084848400000000000000000000000000CE9C6300FFFFFF009C31
      0000CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C63009C310000FFFFFF00CE9C63000000000000000000000000000000
      00009C9C9C009C310000CE6331009C310000CE6331009C3100009C3100009C31
      00009C3100009C3100009C310000633100000000000000000000C6C6C600C6C6
      C6000000000000000000FFFFFF0000000000000000000000000063639C00319C
      CE0063CEFF00000000000000000000000000000000009C9C9C009C9C9C00FFFF
      FF00FFFFFF00B5B5B5009C3100009C310000FFFFFF00FFFFFF0084848400FFFF
      FF008484840000000000000000000000000000000000CE9C6300FFFFFF009C31
      00009C3100009C3100009C3100009C3100009C3100009C3100009C3100009C31
      00009C3100009C310000FFFFFF00CE9C63000000000000000000000000000000
      0000000000009C3100009C310000CE6331009C310000CE6331009C3100009C31
      00009C3100009C3100009C3100009C3100000000000084848400C6C6C600FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF000000000063639C00319CCE0063CE
      FF00000000000000000000000000000000000000000000000000000000009C9C
      9C009C9C9C00FFFFFF00FFFFFF00B5B5B5009C3100009C310000FFFFFF00FFFF
      FF008484840000000000000000000000000000000000CE9C6300FFFFFF009C31
      0000CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C63009C310000FFFFFF00CE9C63000000000000000000000000000000
      0000000000009C3100009C3100009C310000CE6331009C310000CE6331009C31
      00009C3100009C3100009C3100009C9C9C000000000000000000848484008484
      84000000000000000000FFFFFF00FFFFFF0063639C00319CCE0063CEFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C9C009C9C9C00FFFFFF00FFFFFF00B5B5B500FFFFFF008484
      84000000000000000000000000000000000000000000CE9C6300FFFFFF009C31
      00009C3100009C3100009C3100009C3100009C3100009C3100009C3100009C31
      00009C3100009C310000FFFFFF00CE9C63000000000000000000000000000000
      000000000000000000009C3100009C3100009C310000CE6331009C310000CE63
      31009C3100009C3100009C9C9C009C9C9C000000000000000000000000000000
      000000000000000000000000000063639C00319CCE0063CEFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009C9C9C009C9C9C00FFFFFF00FFFFFF008484
      84000000000000000000000000000000000000000000CE9C6300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C63000000000000000000000000000000
      00000000000000000000000000009C3100009C3100009C310000CE6331009C31
      00009C310000CECECE00CECECE009C9C9C000000000000000000000000000000
      0000000000000000000063639C00319CCE0063CEFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C9C9C009C9C9C000000
      00000000000000000000000000000000000000000000CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C63000000000000000000000000000000
      0000000000000000000000000000000000009C3100009C3100009C3100009C31
      0000E7E7E700E7E7E700CECECE00CECECE000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C310000CE6300009C310000CE6300009C3100009C3100000000
      00000000000000000000000000000000000000000000CE9C6300FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00CE9C
      6300CE9C63009C310000000000000000000000000000E7EFF700E7E7E700B5B5
      B500CE9C9C009C6363009C636300B5B5B500CECECE00E7E7E700E7EFF7000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C3100009C310000CE6300009C310000CE6300009C3100000000
      000000000000000000000000000000000000CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      63009C310000CE9C63009C31000000000000E7E7E700CE9C9C009C636300CE9C
      9C00CE9C9C00FFFFFF009C6363009C9C9C009C9C9C00B5B5B500E7E7E7000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF0000009C0000009C0000008400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C9C009C3100009C3100009C3100009C3100009C9C9C000000
      000000000000000000000000000000000000CE9C6300FFFFFF00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE
      9C00CE9C63009C3100009C310000000000009C636300CE9C9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C63630031639C0031639C0031639C00E7EFF7000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF0000009C000000840000009C00000084000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00FFCECE0063636300000000000000
      000000000000000000000000000000000000CE9C6300FFFFFF00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C0000CE0000009C0000FFCE9C000000FF000000CE00FFCE
      9C00CE9C6300CE9C63009C310000000000009C636300FFCE9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C63630063CECE0063CECE00009CCE00FFFFFF00FFCE
      CE00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF0000009C0000009C000000840000009C000000
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00FFCECE0063636300000000000000
      000000000000000000000000000000000000CE9C6300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CE9C6300CE9C6300CE9C63009C3100009C636300FFCE9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C63630063CECE0063CEFF00319CCE00FFCECE00CE63
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00CE9C630000009C0000009C0000009C000000FF000000
      9C00000084000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00FFCECE0063636300000000000000
      000000000000000000000000000000000000CE9C6300FFFFFF00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE
      9C00CE9C6300CE9C6300CE9C63009C3100009C636300FFCE9C00CE9C9C00CE9C
      6300FFCECE00FFFFFF009C6363009CCECE009CCEFF00B5B5B500FF630000CE63
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFCE9C00FFCE9C0000009C000000FF000000FF000000
      FF0000009C000000840000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00FFCECE0063636300000000000000
      00000000000000000000000000000000000000000000CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300FFCE
      9C00FFCE9C00CE9C6300CE9C63009C3100009C636300FFCE9C009C636300FFFF
      FF00FFCECE00FFFFFF009C6363009CCECE00C6C6C600CE630000CE630000CE63
      0000CE630000CE630000CE630000000000000000000000000000000000000000
      0000FFFFFF00FFCE9C00FFCE9C00FFFFFF00FFFFFF000000FF00319CFF00319C
      FF00319CFF0000009C0000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00FFCECE0063636300000000000000
      0000000000000000000000000000000000000000000000000000CE9C6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9C
      6300FFCE9C00FFCE9C00CE9C63009C3100009C636300FFCE9C00CE9C9C009C63
      6300FFCECE00FFFFFF009C63630000000000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE63000000000000000000000000000000000000FFFF
      FF00FFCE9C00FFCE9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000009C000000
      9C0000009C000000000000000000000000000000000000000000000000000000
      0000000000000000000063636300636363006363630063636300000000000000
      000000000000000000000000000063636300000000000000000000000000CE9C
      6300FFFFFF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700FFFFFF00CE9C
      6300CE9C6300CE9C63009C310000000000009C636300FFCE9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C63630000000000CE9C9C00CE630000CE630000CE63
      0000CE630000CE630000CE630000000000000000000000000000FFFFFF00FFCE
      9C00FFCE9C00FFFFFF00FFFFFF00FFFFFF00CE9C6300CE9C6300000000000000
      0000000000000000000000000000000000000000000063636300636363000000
      000000000000636363009C9C9C009C9C9C009C9C9C009C9C9C00636363000000
      000000000000000000006363630063636300000000000000000000000000CE9C
      6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CE9C63000000000000000000000000009C636300FFCE9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C636300CECECE00E7EFF700CE9C9C00FF630000CE63
      00000000000000000000000000000000000000000000FFFFFF00FFCE9C00FFCE
      9C00FFFFFF00FFFFFF00FFFFFF00CE9C63000000000000000000000000000000
      0000000000000000000000000000000000009C9C9C009C9C9C009C9C9C006363
      6300636363009C9C9C00CECECE00CECECE00CECECE009C9C9C00636363006363
      63006363630063636300CECECE00636363000000000000000000000000000000
      0000CE9C6300FFFFFF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700FFFF
      FF00CE9C63000000000000000000000000009C636300FFCE9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C6363009CCECE00000000009CCECE00FFCE9C00CE63
      000000000000000000000000000000000000FFFFFF00FFCE9C00FFCE9C00FFFF
      FF00FFFFFF00FFFFFF00CE9C63000000FF000000000000000000000000000000
      0000000000000000000000000000000000009C9C9C00FFFFFF00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE009C9C9C009C9C
      9C009C9C9C00CECECE0063636300000000000000000000000000000000000000
      0000CE9C6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CE9C630000000000000000009C636300CE9C9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C636300CECECE0000000000319CCE0000000000FFCE
      9C0000000000000000000000000000000000CE9C6300FFCE9C00FFFFFF00FFFF
      FF00FFFFFF00CE9C63000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000009C9C9C00FFFFFF00CECECE00CECE
      CE00FFFFFF00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE009C9C9C0000000000000000000000000000000000000000000000
      000000000000CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300000000000000000000000000C6C6C600CE9C6300CE9C
      9C00CECE9C00FFFFFF009C636300009CCE00009CCE00009CCE00000000000000
      00000000000000000000000000000000000000000000CE9C6300FFFFFF00FFFF
      FF00CE9C63000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C9C9C00FFFFFF00FFFFFF009C9C
      9C009C9C9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C9C
      9C009C9C9C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CECE
      CE00CE9C9C009C6363009C636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE9C6300CE9C
      6300000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C9C9C009C9C9C000000
      0000000000009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C000000
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
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C63000000000000000000000000000000
      9C00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE9C6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CE9C63000000000000000000000000000000000000000000CE9C
      6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C630000000000000000003131CE000000
      FF0000009C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE9C63009C3100009C310000CE9C63000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE9C6300FFFF
      FF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700FFFFFF00CE9C63000000000000000000000000000000000000000000CE9C
      6300FFFFFF00FFFFFF00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00FFFFFF00FFFFFF00CE9C630000000000000000003131CE00319C
      FF000000FF0000009C0000000000000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000000000009C31
      00009C310000CE630000CE6300009C3100000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE9C6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CE9C6300000000000000000000009C000000000000000000CE9C
      6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C63000000000000000000000000003131
      CE000063FF000000CE0000000000000000000000000000000000000000000000
      00000000FF0000000000000000000000000000000000000000009C310000CE63
      0000CE6300009C3100009C310000CE9C63000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE9C6300FFFF
      FF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700FFFFFF00CE9C630000000000000000000000CE0000009C0000000000CE9C
      6300FFFFFF009C3100009C3100009C3100009C3100009C3100009C3100009C31
      00009C3100009C310000FFFFFF00CE9C63000000000000000000000000000000
      00000000CE000000FF0000009C00000000000000000000000000000000000000
      FF0000009C0000000000000000000000000000000000CE9C63009C310000CE63
      00009C310000CE9C630000000000000000009C3100009C3100009C3100009C31
      00009C3100009C3100009C310000000000000000000000000000CE9C6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CE9C630000000000000000000000FF000000CE0000009C00CE9C
      6300FFFFFF009C310000CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C63009C310000FFFFFF00CE9C63000000000000000000000000000000
      0000000000000000CE000000FF0000009C0000000000000000000000FF000000
      9C0000000000000000000000000000000000000000009C310000CE6300009C31
      0000CE9C63000000000000000000000000009C310000CE630000CE630000CE63
      0000CE630000CE6300009C310000000000000000000000000000CE9C6300FFFF
      FF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700FFFFFF00CE9C630000000000000000000000FF000000CE0000000000CE9C
      6300FFFFFF009C3100009C3100009C3100009C3100009C3100009C3100009C31
      00009C3100009C310000FFFFFF00CE9C63000000000000000000000000000000
      000000000000000000000000CE000000FF0000009C000000FF0000009C000000
      000000000000000000000000000000000000000000009C310000CE6300009C31
      000000000000000000000000000000000000000000009C310000CE630000CE63
      0000CE630000CE6300009C310000000000000000000000000000CE9C6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CE9C630000000000000000000000FF000000000000000000CE9C
      6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C63000000000000000000000000000000
      00000000000000000000000000000000CE000000FF0000009C00000000000000
      000000000000000000000000000000000000000000009C310000CE6300009C31
      0000CE9C630000000000000000000000000000000000CE9C63009C310000CE63
      0000CE630000CE6300009C310000000000000000000000000000CE9C6300FFFF
      FF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700FFFFFF00CE9C63000000000000000000000000000000000000000000CE9C
      6300FFFFFF00FFFFFF00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00FFFFFF00FFFFFF00CE9C63000000000000000000000000000000
      000000000000000000000000CE000000FF0000009C000000CE0000009C000000
      00000000000000000000000000000000000000000000CE9C63009C310000CE63
      00009C310000CE9C630000000000CE9C63009C3100009C310000CE6300009C31
      0000CE630000CE6300009C310000000000000000000000000000CE9C6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CE9C63000000000000000000000000000000000000000000CE9C
      6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C63000000000000000000000000000000
      0000000000000000CE000000FF0000009C0000000000000000000000CE000000
      9C000000000000000000000000000000000000000000000000009C310000CE63
      0000CE6300009C3100009C3100009C310000CE630000CE6300009C310000CE9C
      63009C310000CE6300009C310000000000000000000000000000CE9C6300FFFF
      FF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700FFFFFF00CE9C6300CE9C
      6300CE9C6300CE9C63000000000000000000000000000000000000000000CE9C
      6300FFFFFF00FFFFFF00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00FFFFFF00FFFFFF00CE9C63000000000000000000000000000000
      CE000000FF000000FF0000009C00000000000000000000000000000000000000
      CE0000009C000000000000000000000000000000000000000000000000009C31
      00009C310000CE630000CE630000CE6300009C3100009C310000000000000000
      0000000000009C3100009C310000000000000000000000000000CE9C6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9C6300E7E7
      E700CE9C6300000000000000000000000000000000000000000000000000CE9C
      6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C630000000000000000000000CE00319C
      FF000000FF0000009C0000000000000000000000000000000000000000000000
      00000000CE0000009C0000000000000000000000000000000000000000000000
      0000CE9C63009C3100009C3100009C310000CE9C630000000000000000000000
      0000000000000000000000000000000000000000000000000000CE9C6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9C6300CE9C
      630000000000000000000000000000000000000000000000000000000000CE9C
      6300FFFFFF00FFFFFF00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00FFFFFF00FFFFFF00CE9C6300000000000000000063639C000000
      CE0063639C000000000000000000000000000000000000000000000000000000
      000000000000000000000000CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C63000000
      000000000000000000000000000000000000000000000000000000000000CE9C
      6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C63000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000600000000100010000000000000300000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FC00FFFF80030000FC00000100030000
      FC00000100030000FC00000100030000E000000100030000E000000100030000
      E000000100030000E00080010003000000078001000300000007800100030000
      00070001000300000007000100030000003F000100030000003F800100030000
      003F000100030000003F000100030000F8FF801FFFFFFFFFF03F000F03FF0000
      E30F000F00FF0000E4C3000F00FF0000C471000F007F0000C84D000F003F0000
      88E5000F00070000909D000F000000001DCB000000000000333B000000000000
      98D7000100000000E637000300000000F9AF000700000000FE6F000F00000000
      FF9F800F00000000FFFFC01FFFFF0000FFFFFFFFFCFFF8FF80003FFFF87FF03F
      80000FFFF07FE00F800083FFE07FE003800080FFC03FC0018000C03F803EC001
      8000C00F001C80018000E007000880018000E003000100038000F00180030003
      8000F000800780078000F800800FE0078000F800C01FF80F8000FC00E03FFE0F
      8000FE00F07FFF9F8000FF00F8FFFFFFFFFFFDFFFFFFF81FC007E0FFFFFFF81F
      8003801FFE7FF81F0001001FFC3FF81F0001001FFC1FFC3F0001000FFC0FFC3F
      0000000FF807FC3F0000000FF803FC3F80000001F003FC3FC0000101E007FC3E
      E0010101C03F981CE007000F80FF0000F007008F00FF0001F00300AF01FF0003
      F803803F87FF0007FFFFE1FFCFFF981FFFFFE000FFFFFFFFC003E000EFFDFFFF
      C003E000C7FFF0FFC003E000C3FBE0FFC0036000E3F7C0FFC0032000F1E78301
      C0030000F8CF8701C0032000FC1F8F81C0036000FE3F8781C003E000FC1F8201
      C003E000F8CFC001C003E000E1E7E039C007E000C3F3F07FC00FE000C7FDFFFF
      C01FE000FFFFFFFFFFFFE000FFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object frReport: TfrReport
    Dataset = frDBDataSet
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    StoreInDFM = True
    RebuildPrinter = False
    Left = 56
    Top = 323
    ReportForm = {
      190000009D000000190000000001000100FFFFFFFFFF09000000340800009A0B
      00000000000000000000000000000000000000FFFF00000000FFFF0000000000
      000000000500506167653100030400466F726D000F0000FFDC00000078000000
      7C0100002C01000004000000FEFEFF000000000000000000000000FDFF010000
      0000FC00000000000000000000000000000000580009A07AB08F13E440C97369
      947E90E440}
  end
  object frDBDataSet: TfrDBDataSet
    DataSet = MData
    Left = 91
    Top = 323
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
    Left = 60
    Top = 74
  end
  object DataSource: TDataSource
    DataSet = ADOQuery
    Left = 100
    Top = 74
  end
  object ADOStoredProc1: TADOStoredProc
    Parameters = <>
    Left = 61
    Top = 370
  end
  object DS_Mdata_Carry: TDataSource
    DataSet = MData_Carry
    Left = 59
    Top = 168
  end
  object MData_Carry: TdxMemData
    Indexes = <>
    SortOptions = []
    BeforePost = MData_CarryBeforePost
    Left = 99
    Top = 168
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
      FieldName = 'FWorkBasePrice'
    end
    object CurrencyField2: TCurrencyField
      FieldName = 'FWorkResiaePrice'
    end
    object CurrencyField3: TCurrencyField
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
    object FloatField1: TFloatField
      FieldName = 'FMaterialBasePrice'
    end
    object FloatField2: TFloatField
      FieldName = 'FMaterialPrice'
    end
    object FloatField3: TFloatField
      FieldName = 'FMaterialResizePrice'
    end
    object FloatField4: TFloatField
      FieldKind = fkCalculated
      FieldName = 'FBalanceBasePrice'
      Calculated = True
    end
  end
  object actionList: TActionList
    Images = ImageList
    Left = 160
    Top = 88
    object Act_Sel_WorkCarry: TAction
      Category = #36873#25321
      Caption = 'Act_Sel_WorkCarry'
      OnExecute = Act_Sel_WorkCarryExecute
    end
    object Act_Set_Open: TAction
      Category = #25968#25454#25805#20316
      Caption = 'Act_Set_Open'
      OnExecute = Act_Set_OpenExecute
    end
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
    object Act_Status: TAction
      Category = #26435#38480#35774#32622
      Caption = 'Act_Status'
      ImageIndex = 5
    end
    object Act_Set_Close: TAction
      Category = #25968#25454#25805#20316
      Caption = 'Act_Set_Close'
      OnExecute = Act_Set_CloseExecute
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
    object Act_TS_BudgetPrice: TAction
      Category = #39029#36873#39033#35774#32622
      Caption = 'Act_TS_BudgetPrice'
    end
    object Act_Set_Open_Carry: TAction
      Category = #25968#25454#25805#20316
      Caption = 'Act_Set_Open_Carry'
      OnExecute = Act_Set_Open_CarryExecute
    end
    object Act_Set_Close_Carry: TAction
      Category = #25968#25454#25805#20316
      Caption = 'Act_Set_Close_Carry'
      OnExecute = Act_Set_Close_CarryExecute
    end
    object Act_Status_Carry: TAction
      Category = #26435#38480#35774#32622
      Caption = 'Act_Status_Carry'
      OnExecute = Act_Status_CarryExecute
    end
    object Act_WorkCarry: TAction
      Category = #25968#25454#25805#20316
      Caption = 'Act_WorkCarry'
      OnExecute = Act_WorkCarryExecute
    end
    object Act_Sel_FNumber: TAction
      Category = #36873#25321
      Caption = 'Act_Sel_FNumber'
      OnExecute = Act_Sel_FNumberExecute
    end
    object Act_Sel: TAction
      Category = #36873#25321
      Caption = 'Act_Sel'
      OnExecute = Act_SelExecute
    end
  end
  object PM: TPopupMenu
    Left = 156
    Top = 232
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
