inherited Frm_LKDDBalanceItem: TFrm_LKDDBalanceItem
  Left = 271
  Top = 118
  Caption = #30005#34955#32467#31639#21333
  ClientHeight = 667
  ClientWidth = 1342
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image: TImage
    Width = 1342
  end
  inherited L_title: TLabel
    Left = 120
    Top = 90
    Width = 1281
    Caption = #36890#29992#25968#25454#30331#35760
  end
  inherited P_back: TPanel
    Width = 1342
    Height = 646
    inherited P_main: TPanel
      Width = 1336
      Height = 640
      inherited Panel_down: TPanel
        Top = 592
        Width = 1334
        Height = 46
        inherited Bevel_bass: TBevel
          Width = 1334
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1334
        Height = 38
        Align = alTop
        ParentColor = True
        TabOrder = 1
        object ToolBar1: TToolBar
          Left = 1
          Top = 1
          Width = 1332
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
          object TB_Sel: TToolButton
            Left = 0
            Top = 0
            Caption = #36873#25321'[&S]'
            ImageIndex = 27
            OnClick = TB_SelClick
          end
          object TB_App: TToolButton
            Left = 55
            Top = 0
            AutoSize = True
            Caption = #22686#21152'[&A]'
            ImageIndex = 10
            OnClick = TB_AppClick
          end
          object TB_Edit: TToolButton
            Left = 108
            Top = 0
            AutoSize = True
            Caption = #20462#25913'[&B]'
            ImageIndex = 19
            OnClick = TB_EditClick
          end
          object TB_Del: TToolButton
            Left = 161
            Top = 0
            Caption = #21024#38500'[&C]'
            ImageIndex = 12
            OnClick = TB_DelClick
          end
          object TB_Ref: TToolButton
            Left = 216
            Top = 0
            AutoSize = True
            Caption = #21047#26032'[&R]'
            ImageIndex = 13
            OnClick = TB_RefClick
          end
          object TB_Out: TToolButton
            Left = 269
            Top = 0
            Caption = #25968#25454#23548#20986
            ImageIndex = 28
            OnClick = TB_OutClick
          end
          object ToolButton5: TToolButton
            Left = 324
            Top = 0
            Width = 8
            Caption = 'ToolButton5'
            ImageIndex = 4
            Style = tbsSeparator
          end
          object TB_Down: TToolButton
            Left = 332
            Top = 0
            Cursor = crHandPoint
            AutoSize = True
            Caption = #35774#32622'[&D]'
            ImageIndex = 17
            OnClick = TB_DownClick
          end
          object TB_Prin: TToolButton
            Left = 385
            Top = 0
            Cursor = crHandPoint
            AutoSize = True
            Caption = #25171#21360'[&P]'
            ImageIndex = 14
            OnClick = TB_PrinClick
          end
          object ToolButton1: TToolButton
            Left = 438
            Top = 0
            Width = 8
            Caption = 'ToolButton1'
            ImageIndex = 9
            Style = tbsSeparator
          end
          object TB_EXIT: TToolButton
            Left = 446
            Top = 0
            Cursor = crHandPoint
            AutoSize = True
            Caption = #36864#20986'[&X]'
            ImageIndex = 15
            OnClick = TB_EXITClick
          end
        end
      end
      object RzSizePanel1: TRzSizePanel
        Left = 0
        Top = 38
        Width = 238
        Height = 554
        Color = 14935011
        HotSpotVisible = True
        SizeBarWidth = 7
        TabOrder = 2
        VisualStyle = vsGradient
        object MyTreeView: TTreeView
          Left = 0
          Top = 0
          Width = 230
          Height = 554
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
        Left = 238
        Top = 38
        Width = 1096
        Height = 554
        ActivePage = TS_Edit
        Align = alClient
        TabIndex = 0
        TabOrder = 3
        TabOrientation = toBottom
        TabStyle = tsDoubleSlant
        FixedDimension = 19
        object TS_Edit: TRzTabSheet
          Color = 14935011
          Caption = #32534#36753
          object PanelBkGnd: TPanel
            Left = 0
            Top = 0
            Width = 1094
            Height = 533
            Align = alClient
            BevelOuter = bvNone
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 0
            object Panel_button: TPanel
              Left = 0
              Top = 486
              Width = 1094
              Height = 47
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
                Left = 455
                Top = 16
                Width = 80
                Height = 25
                BiDiMode = bdRightToLeftReadingOnly
                Caption = #20445#23384'[&S]'
                ParentBiDiMode = False
                TabOrder = 0
                Visible = False
                OnClick = OKBtnClick
                LookAndFeel.Kind = lfUltraFlat
                LookAndFeel.NativeStyle = False
              end
              object CancelBtn: TcxButton
                Left = 559
                Top = 16
                Width = 80
                Height = 25
                BiDiMode = bdRightToLeftReadingOnly
                Caption = #21462#28040'[&C]'
                ParentBiDiMode = False
                TabOrder = 1
                Visible = False
                OnClick = CancelBtnClick
                LookAndFeel.Kind = lfUltraFlat
                LookAndFeel.NativeStyle = False
              end
            end
            object cxGrid: TcxGrid
              Left = 0
              Top = 169
              Width = 1094
              Height = 317
              Align = alClient
              TabOrder = 1
              object cxGV: TcxGridDBTableView
                DataController.DataSource = DS_Mdata
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
                    Column = FAdvanceAmount
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
                    Kind = skSum
                    FieldName = 'FEstimateQry'
                    Column = FBalanceQry
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
                object FBalanceListNum: TcxGridDBColumn
                  Caption = #24207#21495
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  SortOrder = soAscending
                  Width = 47
                  DataBinding.FieldName = 'FBalanceListNum'
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
                  Width = 145
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
                object FWeight: TcxGridDBColumn
                  Caption = #21333#20214#37325#37327
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DecimalPlaces = 4
                  Properties.DisplayFormat = ',0.0000'
                  Properties.ValidateOnEnter = True
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 73
                  DataBinding.FieldName = 'FWeight'
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
                object FMaterialDate: TcxGridDBColumn
                  Caption = #25191#34892#26085#26399
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 64
                  DataBinding.FieldName = 'FMaterialDate'
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
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 20
                end
                object FQry: TcxGridDBColumn
                  Caption = #20214#25968
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DecimalPlaces = 0
                  Properties.DisplayFormat = '0'
                  Properties.ValidateOnEnter = True
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 48
                  DataBinding.FieldName = 'FQry'
                end
                object FBalanceQry: TcxGridDBColumn
                  Caption = #32467#31639#25968#37327
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DecimalPlaces = 4
                  Properties.DisplayFormat = '0.0000;-0.0000'
                  Properties.ValidateOnEnter = True
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 65
                  DataBinding.FieldName = 'FBalanceQry'
                end
                object FBalancePrice: TcxGridDBColumn
                  Caption = #32467#31639#22522#20215
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DecimalPlaces = 4
                  Properties.DisplayFormat = ',0.0000;-,0.0000'
                  Properties.ValidateOnEnter = True
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 53
                  DataBinding.FieldName = 'FBalancePrice'
                end
                object FOutPrice: TcxGridDBColumn
                  Caption = #20854#20182#36148#34917
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DecimalPlaces = 5
                  Properties.DisplayFormat = ',0.00000;-,0.00000'
                  Properties.ValidateOnEnter = True
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 53
                  DataBinding.FieldName = 'FOutPrice'
                end
                object FTransportPrice: TcxGridDBColumn
                  Caption = #36816#36755#21333#20215
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DecimalPlaces = 4
                  Properties.DisplayFormat = ',0.0000;-,0.0000'
                  Properties.ValidateOnEnter = True
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 53
                  DataBinding.FieldName = 'FTransportPrice'
                end
                object FPrice: TcxGridDBColumn
                  Caption = #32467#31639#21333#20215
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DecimalPlaces = 5
                  Properties.DisplayFormat = ',0.00000;-,0.00000'
                  Properties.ValidateOnEnter = True
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 73
                  DataBinding.FieldName = 'FPrice'
                end
                object Count: TcxGridDBColumn
                  Caption = #8251
                  PropertiesClassName = 'TcxButtonEditProperties'
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  Properties.OnButtonClick = CountPropertiesButtonClick
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 20
                end
                object FBalanceAmount: TcxGridDBColumn
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
                  DataBinding.FieldName = 'FBalanceAmount'
                end
                object FAdvanceAmount: TcxGridDBColumn
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
                  DataBinding.FieldName = 'FAdvanceAmount'
                end
                object FQualityAmount: TcxGridDBColumn
                  Caption = #36136#37327#32771#26680
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DisplayFormat = ',0.00;-,0.00'
                  Properties.ValidateOnEnter = True
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 92
                  DataBinding.FieldName = 'FQualityAmount'
                end
                object FBalanceRemark: TcxGridDBColumn
                  Caption = #32467#31639#21333#22791#27880
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
                  DataBinding.FieldName = 'FBalanceRemark'
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
              end
              object cxGL: TcxGridLevel
                GridView = cxGV
              end
            end
            object Panel2: TPanel
              Left = 0
              Top = 0
              Width = 1094
              Height = 169
              Align = alTop
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 2
              object Label5: TLabel
                Left = 6
                Top = 45
                Width = 60
                Height = 13
                Caption = #32467#31639#21333#21495#65306
                Transparent = True
              end
              object Label6: TLabel
                Left = 6
                Top = 117
                Width = 60
                Height = 13
                Caption = #29983#20135#21333#20301#65306
                Transparent = True
              end
              object L_Caption: TLabel
                Left = -16
                Top = 6
                Width = 1105
                Height = 24
                Alignment = taCenter
                AutoSize = False
                Caption = #30005#34955#20107#19994#37096#29983#20135#32467#31639#21333
                Font.Charset = GB2312_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = #23435#20307
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = True
              end
              object Label1: TLabel
                Left = 6
                Top = 93
                Width = 60
                Height = 13
                Caption = #39033#30446#21517#31216#65306
                Transparent = True
              end
              object Label2: TLabel
                Left = 414
                Top = 69
                Width = 60
                Height = 13
                Caption = #35268#26684#22411#21495#65306
                Transparent = True
              end
              object Label3: TLabel
                Left = 414
                Top = 93
                Width = 60
                Height = 13
                Caption = #22270'        '#21495#65306
                Transparent = True
              end
              object Label4: TLabel
                Left = 414
                Top = 117
                Width = 60
                Height = 13
                Caption = #26723'  '#26696'  '#21495#65306
                Transparent = True
              end
              object Label10: TLabel
                Left = 6
                Top = 141
                Width = 60
                Height = 13
                Caption = #25191#34892#21333#20215#65306
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
              object Label8: TLabel
                Left = 414
                Top = 141
                Width = 60
                Height = 13
                Caption = #36816#36755#21333#20215#65306
                Transparent = True
              end
              object Label9: TLabel
                Left = 6
                Top = 69
                Width = 60
                Height = 13
                Caption = #20219#21153#21333#21495#65306
                Transparent = True
              end
              object E_FAgentName: TcxButtonEdit
                Left = 78
                Top = 112
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
                Top = 112
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
              object E_FBalanceNum: TcxTextEdit
                Left = 118
                Top = 40
                Width = 137
                Height = 22
                AutoSize = False
                Enabled = False
                Style.BorderColor = 8623776
                Style.BorderStyle = ebsSingle
                Style.Color = 15658734
                TabOrder = 0
                OnDblClick = E_FBalanceNumDblClick
              end
              object E_FClientFullName: TcxButtonEdit
                Left = 78
                Top = 88
                Width = 283
                Height = 22
                AutoSize = False
                Enabled = False
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.OnButtonClick = E_FAgentBalancePactNumPropertiesButtonClick
                Style.BorderColor = 8623776
                Style.BorderStyle = ebsSingle
                Style.Color = 15658734
                Style.ButtonTransparency = ebtHideUnselected
                TabOrder = 2
                ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WIN2000'
              end
              object E_FBalanceDate: TcxDateEdit
                Left = 486
                Top = 40
                Width = 137
                Height = 23
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
                TabOrder = 1
              end
              object E_FItemModel: TcxTextEdit
                Left = 486
                Top = 64
                Width = 137
                Height = 22
                AutoSize = False
                Enabled = False
                Style.BorderColor = 8623776
                Style.BorderStyle = ebsSingle
                Style.Color = 15658734
                TabOrder = 7
              end
              object E_FFileNo: TcxTextEdit
                Left = 486
                Top = 112
                Width = 137
                Height = 22
                AutoSize = False
                Enabled = False
                Style.BorderColor = 8623776
                Style.BorderStyle = ebsSingle
                Style.Color = 15658734
                TabOrder = 8
              end
              object E_FMaterialDate: TcxButtonEdit
                Left = 78
                Top = 136
                Width = 136
                Height = 22
                AutoSize = False
                Enabled = False
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.OnButtonClick = VT_BalancePrice
                Style.BorderColor = 8623776
                Style.BorderStyle = ebsSingle
                Style.Color = 15658734
                Style.ButtonTransparency = ebtHideUnselected
                TabOrder = 5
                ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WIN2000'
              end
              object E_FBalanceID: TcxTextEdit
                Left = 262
                Top = 40
                Width = 35
                Height = 22
                AutoSize = False
                Enabled = False
                Style.BorderColor = 8623776
                Style.BorderStyle = ebsSingle
                Style.Color = 15658734
                TabOrder = 9
              end
              object E_FItemId: TcxTextEdit
                Left = 366
                Top = 88
                Width = 35
                Height = 22
                AutoSize = False
                Enabled = False
                Style.BorderColor = 8623776
                Style.BorderStyle = ebsSingle
                Style.Color = 15658734
                TabOrder = 10
              end
              object E_FTransportPrice: TcxCurrencyEdit
                Left = 487
                Top = 136
                Width = 135
                Height = 22
                Hint = #21152#24037#21333#20215#35843#25972#26102#22635#20889#12290
                AutoSize = False
                Enabled = False
                ParentShowHint = False
                Properties.Alignment.Horz = taRightJustify
                Properties.DecimalPlaces = 5
                Properties.DisplayFormat = ',0.00000;-,0.00000'
                Properties.ValidateOnEnter = True
                ShowHint = True
                Style.BorderColor = 8623776
                Style.BorderStyle = ebsSingle
                Style.Color = 15658734
                TabOrder = 4
                OnDblClick = E_FTransportPriceDblClick
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
                TabOrder = 11
              end
              object cxTextEdit1: TcxTextEdit
                Left = 78
                Top = 64
                Width = 35
                Height = 22
                AutoSize = False
                Enabled = False
                Style.BorderColor = 8623776
                Style.BorderStyle = ebsSingle
                Style.Color = 15658734
                TabOrder = 12
              end
              object E_FWorkItemNum: TcxTextEdit
                Left = 118
                Top = 64
                Width = 137
                Height = 22
                AutoSize = False
                Enabled = False
                Style.BorderColor = 8623776
                Style.BorderStyle = ebsSingle
                Style.Color = 15658734
                TabOrder = 13
                OnDblClick = E_FBalanceNumDblClick
              end
              object cxTextEdit3: TcxTextEdit
                Left = 262
                Top = 64
                Width = 35
                Height = 22
                AutoSize = False
                Enabled = False
                Style.BorderColor = 8623776
                Style.BorderStyle = ebsSingle
                Style.Color = 15658734
                TabOrder = 14
              end
              object E_FItemNumber: TcxButtonEdit
                Left = 486
                Top = 88
                Width = 136
                Height = 22
                AutoSize = False
                Enabled = False
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
                Style.BorderColor = 8623776
                Style.BorderStyle = ebsSingle
                Style.Color = 15658734
                Style.ButtonTransparency = ebtHideUnselected
                TabOrder = 15
                ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WIN2000'
              end
            end
          end
        end
        object TS_Brow: TRzTabSheet
          Color = 14935011
          Caption = #26597#35810
          object cxGridBrow: TcxGrid
            Left = 0
            Top = 0
            Width = 1094
            Height = 533
            Align = alClient
            TabOrder = 0
            object cxGVBrow: TcxGridDBTableView
              DataController.DataSource = DS_Mdata
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = ',0.0000;-,0.0000'
                  Kind = skSum
                  FieldName = 'FBalanceQry'
                  Column = cxGridDBColumn11
                end
                item
                  Format = ',0.00;-,0.00'
                  Kind = skSum
                  FieldName = 'FAdvanceQry'
                  Column = cxGridDBColumn13
                end
                item
                  Format = ',0.00;-,0.00'
                  Kind = skSum
                  FieldName = 'FBalanceAmount'
                  Column = cxGridDBColumn12
                end
                item
                  Format = ',0.00;-,0.00'
                  Kind = skSum
                  FieldName = 'FQualityQry'
                  Column = cxGridDBColumn14
                end
                item
                  Format = ',0.0000;-,0.0000'
                  Kind = skSum
                  FieldName = 'FEstimateQry'
                  Column = cxGridDBColumn8
                end
                item
                  Format = ',0.00;-,0.00'
                  Kind = skSum
                  FieldName = 'FEstimateAmount'
                  Column = cxGridDBColumn9
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
              object FWorkItemNum_Brow: TcxGridDBColumn
                Caption = #20219#21153#21333#21495
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                SortOrder = soAscending
                Width = 102
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
              object FFileNo: TcxGridDBColumn
                Caption = #26723#26696#21495
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Width = 78
                DataBinding.FieldName = 'FFileNo'
              end
              object FItemNumber: TcxGridDBColumn
                Caption = #22270#21495
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Width = 42
                DataBinding.FieldName = 'FItemNumber'
              end
              object cxGridDBColumn1: TcxGridDBColumn
                Caption = #24207#21495
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Width = 47
                DataBinding.FieldName = 'FWorkItemListNum'
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
              object cxGridDBColumn2: TcxGridDBColumn
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
              object cxGridDBColumn3: TcxGridDBColumn
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
              object cxGridDBColumn4: TcxGridDBColumn
                Caption = #21333#20301
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Width = 29
                DataBinding.FieldName = 'FUnitName'
              end
              object cxGridDBColumn5: TcxGridDBColumn
                Caption = #25191#34892#26085#26399
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Width = 64
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
              object cxGridDBColumn6: TcxGridDBColumn
                Caption = #32467#31639#21333#20215
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DecimalPlaces = 4
                Properties.DisplayFormat = ',0.0000;-,0.0000'
                Properties.ValidateOnEnter = True
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Width = 53
                DataBinding.FieldName = 'FPrice'
              end
              object cxGridDBColumn8: TcxGridDBColumn
                Caption = #39044#20272#25968#37327
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DecimalPlaces = 4
                Properties.DisplayFormat = ',0.0000;-,0.0000'
                Properties.ValidateOnEnter = True
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Filtering = False
                Width = 65
                DataBinding.FieldName = 'FEstimateQry'
              end
              object cxGridDBColumn9: TcxGridDBColumn
                Caption = #39044#20272#37329#39069
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DecimalPlaces = 4
                Properties.DisplayFormat = ',0.0000;-,0.0000'
                Properties.ValidateOnEnter = True
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Width = 81
                DataBinding.FieldName = 'FEstimateAmount'
              end
              object cxGridDBColumn11: TcxGridDBColumn
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
                DataBinding.FieldName = 'FBalanceQry'
              end
              object cxGridDBColumn12: TcxGridDBColumn
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
                DataBinding.FieldName = 'FBalanceAmount'
              end
              object cxGridDBColumn10: TcxGridDBColumn
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
              object cxGridDBColumn13: TcxGridDBColumn
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
              object cxGridDBColumn14: TcxGridDBColumn
                Caption = #36136#37327#32771#26680
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = ',0.00;-,0.00'
                Properties.ValidateOnEnter = True
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Width = 92
                DataBinding.FieldName = 'FQualityQry'
              end
              object cxGridDBColumn15: TcxGridDBColumn
                Caption = #22791#27880
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Width = 169
                DataBinding.FieldName = 'FRemark'
              end
              object cxGridDBColumn16: TcxGridDBColumn
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Width = 61
                DataBinding.FieldName = 'FAgentBalanceID'
              end
              object cxGridDBColumn17: TcxGridDBColumn
                Caption = #32467#31639#21333#20215'ID'
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Width = 64
                DataBinding.FieldName = 'FBalancePriceID'
              end
              object FWorkItemNum: TcxGridDBColumn
                Caption = #20219#21153#21333#21495
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                DataBinding.FieldName = 'FWorkItemNum'
              end
            end
            object cxGLBrow: TcxGridLevel
              GridView = cxGVBrow
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
    Left = 659
    Top = 24
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
    object MDataFTransportPrice: TFloatField
      FieldName = 'FTransportPrice'
    end
    object MDataFOutPrice: TFloatField
      FieldName = 'FOutPrice'
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
    object MDataFBalanceListNum: TIntegerField
      FieldName = 'FBalanceListNum'
    end
    object MDataFBalanceAmount: TFloatField
      FieldName = 'FBalanceAmount'
    end
    object MDataFQualityAmount: TFloatField
      FieldName = 'FQualityAmount'
    end
    object MDataFBalanceRemark: TStringField
      FieldName = 'FBalanceRemark'
    end
  end
  object DS_Mdata: TDataSource
    DataSet = MData
    Left = 547
    Top = 32
  end
  object ImageList: TImageList
    Left = 1003
    Top = 30
    Bitmap = {
      494C01011D002200040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000009000000001002000000000000090
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000948C390029A56B00318C4A00088C
      2900108C3100188C3900298C4200218C4200108C3100088C2900188C3900218C
      4200298C4200108C3100218C3900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C8C4A00318C4A00A5DE9C00FFF7
      FF00F7EFF700EFEFE700DEEFDE00E7EFE700F7EFEF00F7EFF700EFEFEF00E7EF
      E700DEEFDE00F7F7EF00218C3900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AD8C5200188C3100EFEFEF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00218C3900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AD8C5A00108C2900DEE7DE00CEE7
      CE00E7EFE700E7EFE700E7EFE700E7EFE700DEEFDE00DEEFDE00B5D6B500A5CE
      A500B5D6B50094BD9400218C3900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AD8C520018943100E7F7E700187B
      1800187B1800187B1800187B1800187B18004A944A0073B5730042944200187B
      1800187B180031843100218C3900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A58C4A00218C3900E7EFE700CECE
      CE00187B1800187B1800187B1800187B180063A563008CCE8C00187B1800187B
      180018731800E7F7E700218C3900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000298C4200CEE7CE00FFFF
      FF00CED6CE00187B1800187B1800187B180094CE9400187B1800187B18005294
      5200107B1000A5CEA500218C3900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000298C4200CEE7CE00FFFF
      FF00FFFFFF00B5CEB500187B18008CCE8C00187B1800187B180084B58400BDD6
      BD00ADD6AD00DEDEDE00218C3900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000188C3900D6E7D600FFFF
      FF00F7FFF7008CD68C0084BD8400187B1800187B1800187B18004A944A00BDE7
      BD00FFFFFF00FFFFFF00218C3900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AD8C5A00108C2900E7E7E700FFFF
      FF008CCE8C007BBD7B00187B1800187B1800187B1800187B1800187B1800428C
      4200A5D6A500FFFFFF00218C3900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AD8C5A00188C3100EFEFEF006BC6
      6B0052AD5200187B1800187B180084B58400DEDEDE004A944A00187B1800187B
      1800106B100084CE8400218C3900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AD8C5200218C3900E7EFE70094B5
      9400187B1800187B180094C69400F7FFF700FFFFFF00E7E7E7009CBD9C00187B
      1800187B1800D6D6D600218C3900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000218C3900E7F7E700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00218C3900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C8C4A00399C52008CA5840063AD
      63006BAD6B0073AD730084AD84007BAD7B006BAD6B0063AD630073AD730084AD
      840084AD84006BAD6B00218C3900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C8C4A00429C63004A944A00428C
      4200428C42004A8C4A004A8C4A004A8C4A004A8C4A00428C42004A8C4A004A8C
      4A004A8C4A004A8C4A00218C3900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF330000FF330000FF330000FF330000FF330000FF33
      0000FF330000FF330000FF330000FF3300000000000000000000000000000000
      00000000000066CCCC0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFCC9900CC996600CC996600CC99
      6600CC996600CCCCCC0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CC666600CC666600CC666600CC66
      6600CC666600CC666600CC666600CC666600CC666600CC666600CC666600CC66
      6600CC666600CC666600CC666600CC6666000000000000000000000000000000
      00000000000000000000FF330000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF3300000000000000000000000000000000
      00000000000066CCCC000099CC00000000000000000000000000000000000000
      000000000000000000000000000000000000FFCC9900F2EABF00F2EABF00CCCC
      FF00E5E5E500CC996600CC996600CCCCCC000000000000000000000000000000
      000000000000000000000000000000000000CC666600FFFFFF00FFFFFF00FFCC
      CC00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFF
      FF00FFCCCC00FFFFFF00FFFFFF00CC6666000000000000000000000000000000
      00000000000000000000FF330000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF3300000000000000000000000000000000
      0000000000000000000066CCCC000099CC000000000000000000000000000000
      000000000000000000000000000000000000FFCC9900FFFFFF00FFFFFF00CCCC
      FF00FFFFFF00FFFFFF00E5E5E500CC9966000000000000000000000000000000
      000000000000000000000000000000000000CC666600FFFFFF00FFFFFF00FFCC
      CC00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFF
      FF00FFCCCC00FFFFFF00FFFFFF00CC6666000000000000000000000000000000
      00000000000000000000FF330000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF3300000000000000000000000000000000
      0000000000000000000066CCCC0099FFFF000099CC0000000000000000000000
      000000000000000000000000000000000000FFCC9900F2EABF00F2EABF00CCCC
      FF00F2EABF00F2EABF00F2EABF00CC996600CCCCCC0000000000000000000000
      000000000000000000000000000000000000CC666600FFCCCC00FFCCCC00FFCC
      CC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCC
      CC00FFCCCC00FFCCCC00FFCCCC00CC666600000000000000000000000000FF33
      0000FF330000FF330000FF330000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF3300000000000000000000000000000000
      000066CCCC000099CC000099CC000099CC0066FFFF000099CC00000000000000
      000000000000000000000000000000000000FFCC9900FFFFFF00CCCCCC00CCCC
      FF00FFFFFF00FFFFFF00FFFFFF00E5E5E500CC996600CCCCCC00000000000000
      000000000000000000000000000000000000CC666600FFFFFF00FFFFFF00FFCC
      CC00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFF
      FF00FFCCCC00FFFFFF00FFFFFF00CC666600000000000000000000000000FF33
      0000FFFFFF00FFFFFF00FF330000FF330000FF330000FF330000FF330000FF33
      0000FF330000FF330000FF330000FF3300000000000000000000000000000000
      000066CCCC0099FFFF0066FFFF0066FFFF0066FFFF0066FFFF000099CC000000
      000000000000000000000000000000000000FFCC9900F2EABF00F2EABF00CCCC
      FF00F2EABF00F2EABF00F2EABF00F2EABF00E5E5E500CC996600CC996600CC99
      6600CCCCCC00000000000000000000000000CC666600FFFFFF00FFFFFF00FFCC
      CC00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFF
      FF00FFCCCC00FFFFFF00FFFFFF00CC666600000000000000000000000000FF33
      0000FFFFFF00FFFFFF00FF330000FF330000FF330000FF330000FF330000FF33
      0000FFCC9900FF3300006666FF00FF3300000000000000000000000000000000
      00000000000066CCCC0099FFFF0066FFFF000099CC0066CCCC0066CCCC0066CC
      CC0000000000000000000000000000000000FFCC9900FFFFFF00FFFFFF00CCCC
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E5E5
      E500CC996600CC996600CC996600CCCCCC00CC666600FFCCCC00FFCCCC000000
      9900000099000000990000009900FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCC
      CC00FFCCCC00FFCCCC00FFCCCC00CC666600000000000000000000000000FF33
      0000FFFFFF00FFFFFF00FFCC9900FF330000FF330000FF330000FF330000FF33
      0000FF330000FF330000FF330000FFCC99000000000000000000000000000000
      00000000000066CCCC0099FFFF0066FFFF0066FFFF000099CC00000000000000
      000000000000000000000000000000000000FFCC9900F2EABF00F2EABF00CCCC
      FF00F2EABF00F2EABF00F2EABF00F2EABF00F2EABF00F2EABF00F2EABF00F2EA
      BF00F2EABF00F2EABF00E5E5E500CC996600CC666600FFFFFF00FFFFFF000000
      9900FFFFFF00FFFFFF0000009900FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFF
      FF00FFCCCC00FFFFFF00FFFFFF00CC666600FF330000FF330000FF330000FF33
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FF330000000000000000000000000000000000000000000066CCCC000099
      CC000099CC000099CC000099CC0099FFFF0066FFFF0066FFFF000099CC000000
      000000000000000000000000000000000000FFCC9900FFFFFF00FFFFFF00CCCC
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC996600CC666600FFFFFF00FFFFFF000000
      9900FFFFFF00FFFFFF0000009900FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFF
      FF00FFCCCC00FFFFFF00FFFFFF00CC666600FF330000FFFFFF00FFFFFF00FF33
      0000FF330000FF330000FF330000FF330000FF330000FF330000FF330000FF33
      0000FF330000000000000000000000000000000000000000000066CCCC0099FF
      FF0099FFFF0066FFFF0066FFFF0066FFFF0066FFFF0066FFFF0066FFFF000099
      CC0000000000000000000000000000000000FFCC9900F2EABF00F2EABF00CCCC
      FF00F2EABF00F2EABF00F2EABF00F2EABF00F2EABF00F2EABF00F2EABF00F2EA
      BF00F2EABF00F2EABF00F2EABF00CC996600CC666600FFCCCC00FFCCCC000000
      9900000099000000990000009900FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCC
      CC00FFCCCC00FFCCCC00FFCCCC00CC666600FF330000FFFFFF00FFFFFF00FF33
      0000FF330000FF330000FF330000FF330000FF330000FFCC9900FF3300006666
      FF00FF33000000000000000000000000000000000000000000000000000066CC
      CC0099FFFF0099FFFF0066FFFF0066FFFF000099CC0066CCCC0066CCCC0066CC
      CC0000000000000000000000000000000000FFCC9900FFFFFF00CCCCCC00CCCC
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC996600CC666600FFFFFF00FFFFFF00FFCC
      CC00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFF
      FF00FFCCCC00FFFFFF00FFFFFF00CC666600FF330000FFFFFF00FFFFFF00FFCC
      9900FF330000FF330000FF330000FF330000FF330000FF330000FF330000FF33
      0000FFCC990000000000000000000000000000000000000000000000000066CC
      CC0099FFFF0099FFFF0099FFFF0066FFFF0066FFFF000099CC00000000000000
      000000000000000000000000000000000000FFCC9900FFFFFF00FFFFFF00CCCC
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC996600CC666600FFFFFF00FFFFFF00FFCC
      CC00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFF
      FF00FFCCCC00FFFFFF00FFFFFF00CC666600FF330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000066CCCC0099FFFF0099FFFF0099FFFF0066FFFF0066FFFF000099CC000000
      000000000000000000000000000000000000FFCC9900FFFFFF00FFFFFF00CCCC
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC996600CC666600FFCCCC00CC666600CC66
      6600FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCC
      CC00CC666600CC666600FFCCCC00CC666600FF330000FF330000FF330000FF33
      0000FF330000FF330000FF330000FF330000FF330000FF330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000066CCCC0099FFFF0099FFFF0099FFFF0066FFFF0066FFFF0066FFFF000099
      CC0000000000000000000000000000000000FFCC9900FFCC9900FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC9900CC666600FFCCCC00FFCCCC00FFCC
      CC00FFCCCC00FFCCCC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFCCCC00FFCC
      CC00FFCCCC00FFCCCC00FFCCCC00CC666600FF330000FF330000FF330000FF33
      0000FF330000FF330000FFCC9900FF3300006666FF00FF330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066CCCC0099FFFF0099FFFF0099FFFF0066FFFF0066FFFF0066FF
      FF000099CC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CC666600CC666600CC666600CC66
      6600CC666600CC666600CC666600CC666600CC666600CC666600CC666600CC66
      6600CC666600CC666600CC666600CC666600FFCC9900FF330000FF330000FF33
      0000FF330000FF330000FF330000FF330000FF330000FFCC9900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066CCCC0066CCCC0066CCCC0066CCCC0066CCCC0066CCCC0066CC
      CC0066CCCC0066CCCC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080000000000000000000000000000000
      00000000000000000000000000000000000000000000FF990000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC6600000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000B2B2B20099999900B2B2B2008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000B2B2B20099999900B2B2B2008080800080808000000000000000
      000000000000000000000000000000000000FF990000CC660000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC66
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000FFFFFF0000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000B2B2B20099999900FFFFFF00FFFFFF00B2B2B200B2B2B200808080008080
      8000000000000000000000000000000000000000000000000000000000008080
      8000B2B2B200999999000000000000000000B2B2B200B2B2B200808080008080
      800000000000000000000000000000000000FF990000CC660000E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500CC66
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      800099999900FFFFFF009999990099999900FFFFFF00FFFFFF00B2B2B200B2B2
      B200808080008080800000000000000000000000000000000000000000008080
      8000999999000000000099999900999999000000000000000000B2B2B200B2B2
      B20080808000808080000000000000000000FF990000CC660000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC66
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000FFFFFF008080800080808000000000000000
      000000000000000000000000000000000000000000000000000080808000B2B2
      B20099999900FFFFFF0080808000B2B2B20099999900FFFFFF00FFFFFF00FFFF
      FF00B2B2B200B2B2B2008080800000000000000000000000000080808000B2B2
      B200999999000000000080808000B2B2B2009999990000000000000000000000
      0000B2B2B200B2B2B2008080800000000000FF990000CC660000E5E5E500E5E5
      E500E5E5E500E5E5E500CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CC66
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000808080000000000000000000000000000000
      0000000000000000000000000000666699000000000000000000808080009999
      9900FFFFFF00B2B2B20080808000B2B2B20099999900FFFFFF00808080008080
      8000FFFFFF00FFFFFF0080808000000000000000000000000000808080009999
      990000000000B2B2B20080808000B2B2B2009999990000000000808080008080
      800000000000000000008080800000000000FF990000CC660000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500CC66
      00000000000000000000000000000000000080808000FFFFFF00FFFFFF000000
      0000FFFFFF000000000000000000C0C0C0000000000000000000000000000000
      00000000000000000000666699003399CC000000000080808000B2B2B2009999
      9900FFFFFF00B2B2B200E5E5E500B2B2B200FFFFFF00FFFFFF00FFFFFF00B2B2
      B20080808000FFFFFF0080808000000000000000000080808000B2B2B2009999
      990000000000B2B2B200E5E5E500B2B2B200000000000000000000000000B2B2
      B20080808000000000008080800000000000FF990000CC660000E5E5E500E5E5
      E500E5E5E500CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CC66
      00000000000000000000000000000000000080808000FFFFFF00000000000000
      0000FFFFFF0080808000C0C0C000FFFFFF008080800000000000FFFFFF008080
      800000000000666699003399CC0066CCFF00000000008080800099999900FFFF
      FF00B2B2B200E5E5E500E5E5E500B2B2B200FFFFFF008080800080808000FFFF
      FF00FFFFFF00FFFFFF0080808000000000000000000080808000999999000000
      0000B2B2B200E5E5E500E5E5E500B2B2B2000000000080808000808080000000
      000000000000000000008080800000000000FF990000CC660000FFFFFF00FFFF
      FF00FFFFFF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500CC66
      0000000000000000000000000000000000008080800000000000000000000000
      0000808080000000000000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00666699003399CC0066CCFF000000000080808000B2B2B20099999900FFFF
      FF00FFFFFF00FFFFFF00B2B2B200FFFFFF00FFFFFF00FFFFFF00B2B2B2008080
      8000FFFFFF0080808000000000000000000080808000B2B2B200999999000000
      00000000000000000000B2B2B200000000000000000000000000B2B2B2008080
      800000000000808080000000000000000000FF990000CC660000E5E5E500E5E5
      E500CCCCCC00CCCCCC00CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC6600000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000FFFFFF006666
      99003399CC0066CCFF0000000000000000008080800099999900FFFFFF00FFFF
      FF009933000099330000FFFFFF00FFFFFF008080800080808000FFFFFF00FFFF
      FF00FFFFFF008080800000000000000000008080800099999900000000000000
      0000808080008080800000000000000000008080800080808000000000000000
      000000000000808080000000000000000000FF990000CC660000FFFFFF00FFFF
      FF00E5E5E500CC660000FF990000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC6600000000000000000000C0C0C000C0C0
      C0000000000000000000FFFFFF00000000000000000000000000666699003399
      CC0066CCFF00000000000000000000000000000000009999990099999900FFFF
      FF00FFFFFF00B2B2B2009933000099330000FFFFFF00FFFFFF0080808000FFFF
      FF00808080000000000000000000000000000000000099999900999999000000
      000000000000B2B2B20080808000808080000000000000000000808080000000
      000080808000000000000000000000000000FF990000CC660000E5E5E500CCCC
      CC00FF990000FF990000FF990000FF990000FF990000CC660000CC660000CC66
      0000CC660000CC660000CC660000000000000000000080808000C0C0C000FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF0000000000666699003399CC0066CC
      FF00000000000000000000000000000000000000000000000000000000009999
      990099999900FFFFFF00FFFFFF00B2B2B2009933000099330000FFFFFF00FFFF
      FF00808080000000000000000000000000000000000000000000000000009999
      9900999999000000000000000000B2B2B2008080800080808000000000000000
      000080808000000000000000000000000000FF990000CC660000FFFFFF00FF99
      0000FF996600FF996600FF990000FF990000FF990000FF990000FF990000CC66
      0000CC660000CC66000000000000000000000000000000000000808080008080
      80000000000000000000FFFFFF00FFFFFF00666699003399CC0066CCFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009999990099999900FFFFFF00FFFFFF00B2B2B200FFFFFF008080
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900999999000000000000000000B2B2B200000000008080
      800000000000000000000000000000000000FF990000CC660000FF990000FF99
      6600FF996600FF996600FF996600FF996600FF990000FF990000FF990000FF99
      0000CC6600000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000666699003399CC0066CCFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009999990099999900FFFFFF00FFFFFF008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000999999009999990000000000000000008080
      800000000000000000000000000000000000FF990000FF990000FF996600FF99
      6600FF996600FF996600FF996600FF996600FF996600FF996600FF990000CC66
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000666699003399CC0066CCFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900999999000000
      00000000000000000000000000000000000000000000FF99000099999900FFFF
      FF0099999900FFFFFF0099999900FFFFFF0099999900FFFFFF0099999900FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000666699003399CC0066CCFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099999900CCCC
      CC0099999900CCCCCC0099999900CCCCCC0099999900CCCCCC00999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009933000099330000CC66000099330000CC660000993300000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099330000CC66000099330000CC66000099330000993300000000
      00000000000000000000000000000000000000000000CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC996600CC996600CC9966000000000033333300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009933000099330000CC66000099330000CC660000993300000000
      00000000000000000000000000000000000000000000CC996600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966003333330066666600666666006666
      6600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000099000000990000008000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009999990099330000993300009933000099330000999999000000
      00000000000000000000000000000000000000000000CC996600FFFFFF009933
      0000993300009933000099330000993300009933000099330000993300009933
      00009933000099330000FFFFFF00CC9966000000000099999900CCCCCC009999
      9900666666006666660000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000099000000800000009900000080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900FFFFFF00FFCCCC0066666600000000000000
      00000000000000000000000000000000000000000000CC996600FFFFFF009933
      0000CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC99660099330000FFFFFF00CC9966000000000099999900CCCCCC00CCCC
      CC00999999009999990066666600666666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000099000000990000008000000099000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900FFFFFF00FFCCCC0066666600000000000000
      00000000000000000000000000000000000000000000CC996600FFFFFF009933
      0000993300009933000099330000993300009933000099330000993300009933
      00009933000099330000FFFFFF00CC996600000000000000000099999900CCCC
      CC00CCCCCC009999990099999900999999006666660066666600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00CC9966000000990000009900000099000000FF000000
      9900000080000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900FFFFFF00FFCCCC0066666600000000000000
      00000000000000000000000000000000000000000000CC996600FFFFFF009933
      0000CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC99660099330000FFFFFF00CC996600000000000000000099999900E5E5
      E500CCCCCC00CCCCCC0099999900999999009999990099330000663300006633
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFCC9900FFCC9900000099000000FF000000FF000000
      FF00000099000000800000000000000000000000000000000000000000000000
      0000000000000000000099999900FFFFFF00FFCCCC0066666600000000000000
      00000000000000000000000000000000000000000000CC996600FFFFFF009933
      0000993300009933000099330000993300009933000099330000993300009933
      00009933000099330000FFFFFF00CC9966000000000000000000000000009999
      9900E5E5E500CCCCCC00CCCCCC00999999009933000099330000993300009933
      0000663300000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFCC9900FFCC9900FFFFFF00FFFFFF000000FF003399FF003399
      FF003399FF000000990000000000000000000000000000000000000000000000
      0000000000000000000099999900FFFFFF00FFCCCC0066666600000000000000
      00000000000000000000000000000000000000000000CC996600FFFFFF009933
      0000CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC99660099330000FFFFFF00CC9966000000000000000000000000009999
      9900FFFFFF00E5E5E500CCCCCC00993300009933000099330000993300009933
      000099330000663300000000000000000000000000000000000000000000FFFF
      FF00FFCC9900FFCC9900FFFFFF00FFFFFF00FFFFFF00FFFFFF00000099000000
      9900000099000000000000000000000000000000000000000000000000000000
      0000000000000000000066666600666666006666660066666600000000000000
      00000000000000000000000000006666660000000000CC996600FFFFFF009933
      0000993300009933000099330000993300009933000099330000993300009933
      00009933000099330000FFFFFF00CC9966000000000000000000000000000000
      000099999900FFFFFF0099330000CC6633009933000099330000993300009933
      0000993300009933000066330000000000000000000000000000FFFFFF00FFCC
      9900FFCC9900FFFFFF00FFFFFF00FFFFFF00CC996600CC996600000000000000
      0000000000000000000000000000000000000000000066666600666666000000
      0000000000006666660099999900999999009999990099999900666666000000
      00000000000000000000666666006666660000000000CC996600FFFFFF009933
      0000CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC99660099330000FFFFFF00CC9966000000000000000000000000000000
      00009999990099330000CC66330099330000CC66330099330000993300009933
      00009933000099330000993300006633000000000000FFFFFF00FFCC9900FFCC
      9900FFFFFF00FFFFFF00FFFFFF00CC9966000000000000000000000000000000
      0000000000000000000000000000000000009999990099999900999999006666
      66006666660099999900CCCCCC00CCCCCC00CCCCCC0099999900666666006666
      66006666660066666600CCCCCC006666660000000000CC996600FFFFFF009933
      0000993300009933000099330000993300009933000099330000993300009933
      00009933000099330000FFFFFF00CC9966000000000000000000000000000000
      0000000000009933000099330000CC66330099330000CC663300993300009933
      000099330000993300009933000099330000FFFFFF00FFCC9900FFCC9900FFFF
      FF00FFFFFF00FFFFFF00CC9966000000FF000000000000000000000000000000
      00000000000000000000000000000000000099999900FFFFFF00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00999999009999
      990099999900CCCCCC00666666000000000000000000CC996600FFFFFF009933
      0000CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC99660099330000FFFFFF00CC9966000000000000000000000000000000
      000000000000993300009933000099330000CC66330099330000CC6633009933
      000099330000993300009933000099999900CC996600FFCC9900FFFFFF00FFFF
      FF00FFFFFF00CC9966000000FF00000000000000000000000000000000000000
      00000000000000000000000000000000000099999900FFFFFF00CCCCCC00CCCC
      CC00FFFFFF00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC0099999900000000000000000000000000CC996600FFFFFF009933
      0000993300009933000099330000993300009933000099330000993300009933
      00009933000099330000FFFFFF00CC9966000000000000000000000000000000
      00000000000000000000993300009933000099330000CC66330099330000CC66
      33009933000099330000999999009999990000000000CC996600FFFFFF00FFFF
      FF00CC9966000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000099999900FFFFFF00FFFFFF009999
      990099999900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009999
      99009999990000000000000000000000000000000000CC996600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966000000000000000000000000000000
      0000000000000000000000000000993300009933000099330000CC6633009933
      000099330000CCCCCC00CCCCCC00999999000000000000000000CC996600CC99
      6600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900999999000000
      0000000000009999990099999900999999009999990099999900999999000000
      00000000000000000000000000000000000000000000CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC996600CC996600CC9966000000000000000000000000000000
      0000000000000000000000000000000000009933000099330000993300009933
      0000E5E5E500E5E5E500CCCCCC00CCCCCC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E2EFF100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      9900000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300009933
      0000993300009933000099330000993300009933000099330000993300009933
      000099330000000000000000000000000000000000000000000000000000E2EF
      F100E5E5E500CCCCCC00E5E5E500E2EFF1000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003333CC000000
      FF00000099000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CC9966009933000099330000CC9966000000000000000000000000000000
      00000000000000000000000000000000000000000000CC996600FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900CC99
      6600CC99660099330000000000000000000000000000E2EFF100E5E5E500B2B2
      B200CC9999009966660099666600B2B2B200CCCCCC00E5E5E500E2EFF1000000
      00000000000000000000000000000000000000000000000000003333CC003399
      FF000000FF000000990000000000000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000000000009933
      000099330000CC660000CC660000993300000000000000000000000000000000
      000000000000000000000000000000000000CC996600CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      660099330000CC9966009933000000000000E5E5E500CC99990099666600CC99
      9900CC999900FFFFFF00996666009999990099999900B2B2B200E5E5E5000000
      0000000000000000000000000000000000000000000000000000000000003333
      CC000066FF000000CC0000000000000000000000000000000000000000000000
      00000000FF00000000000000000000000000000000000000000099330000CC66
      0000CC6600009933000099330000CC9966000000000000000000000000000000
      000000000000000000000000000000000000CC996600FFFFFF00FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC
      9900CC99660099330000993300000000000099666600CC999900FFCC9900FFCC
      9900FFCCCC00FFFFFF0099666600336699003366990033669900E2EFF1000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000CC000000FF0000009900000000000000000000000000000000000000
      FF000000990000000000000000000000000000000000CC99660099330000CC66
      000099330000CC99660000000000000000009933000099330000993300009933
      000099330000993300009933000000000000CC996600FFFFFF00FFCC9900FFCC
      9900FFCC9900FFCC990000CC000000990000FFCC99000000FF000000CC00FFCC
      9900CC996600CC996600993300000000000099666600FFCC9900FFCC9900FFCC
      9900FFCCCC00FFFFFF009966660066CCCC0066CCCC000099CC00FFFFFF00FFCC
      CC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000CC000000FF000000990000000000000000000000FF000000
      9900000000000000000000000000000000000000000099330000CC6600009933
      0000CC99660000000000000000000000000099330000CC660000CC660000CC66
      0000CC660000CC6600009933000000000000CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CC996600CC996600CC9966009933000099666600FFCC9900FFCC9900FFCC
      9900FFCCCC00FFFFFF009966660066CCCC0066CCFF003399CC00FFCCCC00CC66
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000CC000000FF00000099000000FF00000099000000
      0000000000000000000000000000000000000000000099330000CC6600009933
      0000000000000000000000000000000000000000000099330000CC660000CC66
      0000CC660000CC6600009933000000000000CC996600FFFFFF00FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC
      9900CC996600CC996600CC9966009933000099666600FFCC9900CC999900CC99
      6600FFCCCC00FFFFFF009966660099CCCC0099CCFF00B2B2B200FF660000CC66
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000CC000000FF0000009900000000000000
      0000000000000000000000000000000000000000000099330000CC6600009933
      0000CC99660000000000000000000000000000000000CC99660099330000CC66
      0000CC660000CC660000993300000000000000000000CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600FFCC
      9900FFCC9900CC996600CC9966009933000099666600FFCC990099666600FFFF
      FF00FFCCCC00FFFFFF009966660099CCCC00C0C0C000CC660000CC660000CC66
      0000CC660000CC660000CC660000000000000000000000000000000000000000
      000000000000000000000000CC000000FF00000099000000CC00000099000000
      00000000000000000000000000000000000000000000CC99660099330000CC66
      000099330000CC99660000000000CC9966009933000099330000CC6600009933
      0000CC660000CC66000099330000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC99
      6600FFCC9900FFCC9900CC9966009933000099666600FFCC9900CC9999009966
      6600FFCCCC00FFFFFF009966660000000000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000000000000000000000000000000000000000
      0000000000000000CC000000FF000000990000000000000000000000CC000000
      990000000000000000000000000000000000000000000000000099330000CC66
      0000CC660000993300009933000099330000CC660000CC66000099330000CC99
      660099330000CC6600009933000000000000000000000000000000000000CC99
      6600FFFFFF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500FFFFFF00CC99
      6600CC996600CC996600993300000000000099666600FFCC9900FFCC9900FFCC
      9900FFCCCC00FFFFFF009966660000000000CC999900CC660000CC660000CC66
      0000CC660000CC660000CC660000000000000000000000000000000000000000
      CC000000FF000000FF0000009900000000000000000000000000000000000000
      CC00000099000000000000000000000000000000000000000000000000009933
      000099330000CC660000CC660000CC6600009933000099330000000000000000
      000000000000993300009933000000000000000000000000000000000000CC99
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CC99660000000000000000000000000099666600FFCC9900FFCC9900FFCC
      9900FFCCCC00FFFFFF0099666600CCCCCC00E2EFF100CC999900FF660000CC66
      00000000000000000000000000000000000000000000000000000000CC003399
      FF000000FF000000990000000000000000000000000000000000000000000000
      00000000CC000000990000000000000000000000000000000000000000000000
      0000CC996600993300009933000099330000CC99660000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CC996600FFFFFF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500FFFF
      FF00CC99660000000000000000000000000099666600FFCC9900FFCC9900FFCC
      9900FFCCCC00FFFFFF009966660099CCCC000000000099CCCC00FFCC9900CC66
      0000000000000000000000000000000000000000000000000000666699000000
      CC00666699000000000000000000000000000000000000000000000000000000
      000000000000000000000000CC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC996600000000000000000099666600CC999900FFCC9900FFCC
      9900FFCCCC00FFFFFF0099666600CCCCCC00000000003399CC0000000000FFCC
      9900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC996600000000000000000000000000C0C0C000CC996600CC99
      9900CCCC9900FFFFFF00996666000099CC000099CC000099CC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CCCC
      CC00CC9999009966660099666600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC996600CC996600CC9966000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C60000000000C6C6
      C60000000000C6C6C60000000000C6C6C60000000000C6C6C60000000000C6C6
      C60000000000C6C6C60000000000C6C6C6000000000000000000CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC9966000000000000000000000000000000000000000000CC99
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C60000000000C6C6C6000000
      00000000000000000000C6C6C60000000000C6C6C60000000000C6C6C6000000
      0000C6C6C60000000000C6C6C600000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC9966000000000000000000000000000000000000000000CC99
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600000000000000
      000000000000C6C6C600000000000000000000000000C6C6C60000000000C6C6
      C60000000000C6C6C60000000000C6C6C6000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500FFFFFF00CC9966000000000000000000000000000000000000000000CC99
      6600FFFFFF00FFFFFF00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00FFFFFF00FFFFFF00CC9966000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C6000000000000000000FFFF
      00000000000000000000C6C6C600000000000000000000000000C6C6C6000000
      0000C6C6C60000000000C6C6C600000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC9966000000000000000000000099000000000000000000CC99
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000FFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000000000C6C6C6000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500FFFFFF00CC99660000000000000000000000CC000000990000000000CC99
      6600FFFFFF009933000099330000993300009933000099330000993300009933
      00009933000099330000FFFFFF00CC9966000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C60000000000FFFF0000FFFF
      0000000000008484840084848400848484000000000000000000C6C6C6000000
      0000C6C6C60000000000C6C6C600000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000FF000000CC0000009900CC99
      6600FFFFFF0099330000CC996600CC996600CC996600CC996600CC996600CC99
      6600CC99660099330000FFFFFF00CC9966000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      00000000000084848400848484008484840000000000C6C6C60000000000C6C6
      C60000000000C6C6C60000000000C6C6C6000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500FFFFFF00CC99660000000000000000000000FF000000CC0000000000CC99
      6600FFFFFF009933000099330000993300009933000099330000993300009933
      00009933000099330000FFFFFF00CC9966000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C60000000000FFFF0000FFFF
      0000000000008484840084848400848484000000000000000000C6C6C6000000
      00000000000000000000C6C6C600000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000FF000000000000000000CC99
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      00000000000084848400848484008484840000000000C6C6C600000000000000
      000000000000C6C6C60000000000C6C6C6000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500FFFFFF00CC9966000000000000000000000000000000000000000000CC99
      6600FFFFFF00FFFFFF00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00FFFFFF00FFFFFF00CC996600000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000000000000000000000000000000000C6C6C60000000000FFFF0000FFFF
      0000000000008484840084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC9966000000000000000000000000000000000000000000CC99
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      00000000000084848400848484008484840000000000C6C6C600000000000000
      000000000000C6C6C60000000000C6C6C6000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500FFFFFF00CC996600CC99
      6600CC996600CC9966000000000000000000000000000000000000000000CC99
      6600FFFFFF00FFFFFF00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00FFFFFF00FFFFFF00CC9966000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000C6C6C60000000000FFFF0000FFFF
      0000000000008484840084848400848484000000000000000000C6C6C6000000
      00000000000000000000C6C6C600000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC996600E5E5
      E500CC996600000000000000000000000000000000000000000000000000CC99
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00008484840084848400848484008484840000000000C6C6C60000000000C6C6
      C60000000000C6C6C60000000000C6C6C6000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC996600CC99
      660000000000000000000000000000000000000000000000000000000000CC99
      6600FFFFFF00FFFFFF00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00FFFFFF00FFFFFF00CC9966000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000C6C6C60000000000000000008484
      8400848484008484840084848400848484000000000000000000C6C6C6000000
      0000C6C6C60000000000C6C6C600000000000000000000000000CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC9966000000
      000000000000000000000000000000000000000000000000000000000000CC99
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C60000000000C6C6
      C60000000000C6C6C60000000000C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC996600CC996600CC9966000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF0084848400FFFFFF00FFFFFF0084848400FFFFFF00FFFFFF008484
      8400FFFFFF00FFFFFF0084848400000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009CFFFF0000CEFF0000CE
      FF0000CEFF00009CCE00009CCE00009CCE00009CCE00639C9C00009CCE00639C
      9C00639C9C00009CCE00639C9C0000000000000000000000000000000000FFFF
      FF00848484008484840084848400848484008484840084848400000000000000
      0000848484008484840084848400000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009CFFFF0000CEFF0000CE
      FF0000CEFF003131310031313100313131003131310031313100313131003131
      3100639C9C00009CCE00639C9C0000000000000000000000000000000000FFFF
      FF00FFFFFF0084848400FFFFFF00FFFFFF0084848400FFFFFF0000FF00000000
      0000FFFFFF00FFFFFF0084848400000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00FFFFFF00848400000084
      840000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009CFFFF00CEFFFF0000CE
      FF0000CEFF003131310000CEFF00009CCE0000CEFF00009CCE00009CCE00009C
      CE00009CCE00639C9C00009CCE0000000000000000000000000000000000FFFF
      FF00FFFFFF0084848400FFFFFF00FFFFFF0084848400FFFFFF00FFFFFF008484
      8400FFFFFF00FFFFFF0084848400000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF00FFFFFF00848400008484840000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080000000000000000000000000000000000000009CFFFF0000CEFF00CEFF
      FF0000CEFF003131310000CEFF0000CEFF00009CCE00009CCE00009CCE00009C
      CE00639C9C00009CCE00639C9C00000000000000000000000000000000008484
      8400000000000000000084848400848484008484840084848400848484008484
      8400848484008484840084848400000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00FFFFFF00848400008484840000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000800000008000
      0000800000008000000080000000000000000000000000000000000000000000
      000080000000000000000000000000000000000000009CFFFF00FFFFFF0000CE
      FF0000CEFF003131310000CEFF0000CEFF0000CEFF0000CEFF00009CCE00009C
      CE00009CCE00009CCE00009CCE00000000000000000000000000000000008484
      8400C6C6C600C6C6C600848484000000000084848400FFFFFF00FFFFFF008484
      8400FFFFFF00FFFFFF0084848400000000000000000000FFFF0000000000C6C6
      C60000FFFF0000000000FFFFFF00848484008484840000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000800000008000
      0000800000008000000000000000000000000000000000000000000000000000
      000000000000800000000000000000000000000000009CFFFF0000CEFF00FFFF
      FF00CEFFFF003131310000CEFF0000CEFF00009CCE00009CCE0000CEFF00009C
      CE00009CCE00009CCE00639C9C00000000000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00C6C6C60000000000C6C6C600FFFFFF008484
      8400FFFFFF00FFFFFF0084848400000000000000000084848400C6C6C60000FF
      FF0000FFFF0000FFFF00008484008484840000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000800000008000
      0000800000000000000000000000000000000000000000000000000000000000
      000000000000800000000000000000000000000000009CFFFF0000CEFF00FFFF
      FF0031313100313131003131310000CEFF0000CEFF0000CEFF0000CEFF00009C
      CE00009CCE00009CCE00009CCE00000000008484840084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840084848400848484008484
      840084848400848484008484840000000000000000000084840000848400FFFF
      FF0000FFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000008000
      0000000000008000000000000000000000000000000000000000000000000000
      000000000000800000000000000000000000000000009CFFFF00FFFFFF0000CE
      FF0000CEFF003131310000CEFF0000CEFF0000CEFF0000CEFF00009CCE0000CE
      FF0000CEFF00009CCE00009CCE000000000000000000C6C6C600FFFFFF00FFFF
      FF00FFFFFF00848484008484840084848400C6C6C60000000000C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000848400FFFFFF0000FF
      FF0000FFFF00FFFFFF00FF00000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FF000000FFFFFF0000000000000000000000000000000000800000000000
      0000000000000000000080000000800000000000000000000000000000000000
      000080000000000000000000000000000000000000009CFFFF0000CEFF00FFFF
      FF00FFFFFF0000CEFF00FFFFFF00CEFFFF0000CEFF0000CEFF0000CEFF0000CE
      FF00009CCE0000CEFF00009CCE000000000000000000C6C6C60000000000FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000084848400FFFFFF0000FF
      FF0000FFFF0000FFFF00FFFFFF0000000000FFFFFF00FFFFFF00FF000000FFFF
      FF00FFFFFF00FF000000FFFFFF00848484000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000008000
      000000000000000000000000000000000000000000009CFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF00000000008484840084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840084848400000000000000
      0000000000000000000000000000000000000000000084848400C6C6C600FFFF
      FF00FFFFFF00FFFFFF008484840000000000FFFFFF00FFFFFF00FFFFFF00FF00
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000636300006363000063
      6300006363000063630000636300006363000063630000636300006363000063
      6300006363000063630000636300000000000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      84008484840000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000636300F7FF
      FF009CFFFF009CFFFF009CFFFF009CCECE000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00000000008484
      8400C6C6C600C6C6C60084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      8400FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000063
      6300006363000063630000636300006363000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000008484
      8400000000000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF00FF00FFFFFF00FFFF
      FF00FF00FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000FFFF00000000000000000000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000848400000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000FFFF00FFFFFF000000000000000000FFFFFF00FFFF
      FF0000000000000000000000000000000000FFFFFF0000FFFF00FFFFFF000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      0000FFFFFF0000FFFF00FFFFFF000000000084848400FFFFFF00C6C6C600FFFF
      FF00C6C6C600FFFFFF00C6C6C60084000000840000008400000084000000FFFF
      FF00840000008400000000000000000000000000000000848400000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF00FFFFFF000000000000000000000000000000000000000000C6C6
      C600FFFFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF000000000084848400FFFFFF00C6C6C600FFFF
      FF00C6C6C600FFFFFF00C6C6C600FFFFFF008400000084000000C6C6C6008400
      0000840000008400000084000000000000000000000000000000008484000000
      0000000000000000000000FFFF0000848400008484000084840000FFFF0000FF
      FF00FFFFFF000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF000000000084848400FFFFFF00C6C6C600FFFF
      FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00840000008400000000000000000000000000000000000000000000000084
      84000000000000FFFF0000848400000000000000000000FFFF0000848400FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00C6C6
      C600C6C6C600C6C6C60000FFFF00FFFFFF0000000000FFFFFF0000000000FFFF
      FF00FFFFFF00000000000000000000000000FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF000000000084848400FFFFFF00C6C6C600FFFF
      FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00840000000000000000000000000000000000000000000000000000000000
      000000FFFF0000848400FFFFFF0000000000FFFFFF00FFFFFF0000FFFF000084
      840000000000000000000000000000000000C6C6C600C6C6C600FFFFFF00FFFF
      FF00C6C6C6000000000000FFFF0000000000FFFFFF00FFFF0000FFFFFF00FFFF
      0000FFFFFF00FFFFFF000000000000000000FFFFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF000000000084848400FFFFFF00C6C6C600FFFF
      FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00840000008400
      0000840000000000000000000000000000000000000000000000000000000084
      84000084840084848400848484008484840000000000FFFFFF000000000000FF
      FF0000000000000000000000000000000000FFFFFF00C6C6C600C6C6C6000000
      000000000000FFFFFF0000000000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFF
      FF00FFFF0000FFFFFF00FFFFFF0000000000FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF000000000084848400FFFFFF00C6C6C600FFFF
      FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400848484008484840000000000000000000000
      000000000000000000000000000000000000FFFFFF00C6C6C60000000000C6C6
      C60000FFFF0000000000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF
      0000FFFFFF00FFFFFF000000000000000000FFFFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF000000000084848400FFFFFF00C6C6C600FFFF
      FF00C6C6C600FFFFFF00C6C6C600FFFFFF0000008400FFFFFF0000008400FFFF
      FF00C6C6C6000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000848484008484840084848400000000000000
      000000000000000000000000000000000000FFFFFF000000000000000000FFFF
      FF0000000000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFF
      FF00FFFFFF00000000000000000000000000FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF000000000084848400FFFFFF00C6C6C600FFFF
      FF00C6C6C600FFFFFF00C6C6C600FFFFFF0000008400FFFFFF0000008400FFFF
      FF00C6C6C6000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000FFFFFF00000000008484840084848400FFFFFF000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      000000FFFF0000000000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF
      FF0000000000000000000000000000000000FFFFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF000000000084848400C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00C6C6C600000000000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000000000000000000084848400FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFF0000FFFFFF00FFFFFF000000
      000000000000000000000000000000000000FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF000000000084848400C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
      FF00C6C6C6000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      000000000000000000000000000000000000FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000008484840084000000840000008400
      0000840000008400000084000000848484008484840084848400848484008484
      84008484840000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000008484
      8400FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      84008484840000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000900000000100010000000000800400000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFF0000000000000001000000000000
      0001000000000000000100000000000000010000000000000001000000000000
      0001000000000000800100000000000080010000000000008001000000000000
      0001000000000000000100000000000000010000000000008001000000000000
      00010000000000000001000000000000FFFFFFFFFC00FBFF03FF0000FC00F9FF
      00FF0000FC00FCFF00FF0000FC00FC7F007F0000E000F03F003F0000E000F01F
      00070000E000F80F00000000E000F83F000000000007C01F000000000007C00F
      000000000007E00F000000000007E03F00000000003FF01F00000000003FF00F
      00000000003FF807FFFF0000003FF803FCFFF8FFF8FF801FF87FF03FF03F000F
      F07FE00FE30F000FE07FE003E4C3000FC03FC001C471000F803EC001C84D000F
      001C800188E5000F00088001909D000F000100031DCB000080030003333B0000
      8007800798D70001800FE007E6370003C01FF80FF9AF0007E03FFE0FFE6F000F
      F07FFF9FFF9F800FF8FFFFFFFFFFC01FFFFFF81FFFFFFFFFFFFFF81F80003FFF
      FE7FF81F80000FFFFC3FF81F800083FFFC1FFC3F800080FFFC0FFC3F8000C03F
      F807FC3F8000C00FF803FC3F8000E007F003FC3F8000E003E007FC3E8000F001
      C03F981C8000F00080FF00008000F80000FF00018000F80001FF00038000FC00
      87FF00078000FE00CFFF981F8000FF00FFFFFFFFFFFFFDFFEFFDFFFFC007E0FF
      C7FFF0FF8003801FC3FBE0FF0001001FE3F7C0FF0001001FF1E783010001000F
      F8CF87010000000FFC1F8F810000000FFE3F878180000001FC1F8201C0000101
      F8CFC001E0010101E1E7E039E007000FC3F3F07FF007008FC7FDFFFFF00300AF
      FFFFFFFFF803803FFFFFFFFFFFFFE1FFFFFFFFFFFFFFE000FFFFAAAAC003E000
      C0075555C003E000BFEBA0AAC003E00000054555C00360007E31000AC0032000
      7E350055C00300000006802AC00320007FEA0055C003600080148022C003E000
      C00A0041C003E000E0018022C003E000E0070055C007E000F007802AC00FE000
      F0030055C01FE000F803802AFFFFE000FFFF0000FFFFFFFFE0000000FFFF8001
      E0000000FFFF8001E0000000FFFF8001E0000000FFFF8001E0000000FFE78001
      E0000000C1F38001C0000000C3FB800180000000C7FB800100000001CBFB8001
      00000001DCF3800100000000FF078001003F8101FFFF8001807FC383FFFFC07F
      00FFFFC7FFFFE0FFA1FFFFEFFFFFFFFFFFCFFFFFFFFFFFFFF987FFFFFF87DFFB
      F0CF101100078FF1E0471010000385E3C00300000001C007800300000003E18F
      000300000007E00F000100000007E02F000000000007FC3F000100000007F81F
      000300000007F10F200700000007E387700F00000007C7C3FE1F000000078FE1
      FF3F000100079FF1FFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object frReport: TfrReport
    Dataset = frDBDataSet
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    StoreInDFM = True
    RebuildPrinter = False
    OnBeginBand = frReportBeginBand
    OnGetValue = frReportGetValue
    Left = 744
    Top = 27
    ReportForm = {
      190000009D000000190000000001000100FFFFFFFFFF09000000340800009A0B
      00000000000000000000000000000000000000FFFF00000000FFFF0000000000
      000000000500506167653100030400466F726D000F0000FFDC00000078000000
      7C0100002C01000004000000FEFEFF000000000000000000000000FDFF010000
      0000FC000000000000000000000000000000005800549A09C58F13E440F2493B
      C58F13E440}
  end
  object frDBDataSet: TfrDBDataSet
    DataSet = MData
    Left = 779
    Top = 27
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
    Left = 900
    Top = 26
  end
  object DataSource: TDataSource
    DataSet = ADOQuery
    Left = 580
    Top = 34
  end
  object V_K3: TADOTable
    Connection = mdlData.conn
    CursorType = ctStatic
    CommandTimeout = 500
    TableName = 'K3_Item_V'
    Left = 691
    Top = 27
  end
  object DS_K3: TDataSource
    DataSet = V_K3
    Left = 963
    Top = 27
  end
  object ADOStoredProc1: TADOStoredProc
    Parameters = <>
    Left = 861
    Top = 26
  end
end
