inherited Frm_BOM: TFrm_BOM
  Left = 515
  Top = 123
  Caption = 'BOM'
  ClientHeight = 738
  ClientWidth = 920
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image: TImage
    Width = 920
  end
  inherited L_title: TLabel
    Left = -16
    Top = 28
    Width = 1281
    Caption = #36890#29992#25968#25454#30331#35760
  end
  inherited P_back: TPanel
    Width = 920
    Height = 717
    inherited P_main: TPanel
      Width = 914
      Height = 711
      inherited Panel_down: TPanel
        Top = 680
        Width = 912
        Height = 29
        inherited Bevel_bass: TBevel
          Width = 912
        end
      end
      object PC_2: TRzPageControl
        Left = 0
        Top = 0
        Width = 912
        Height = 680
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
            Height = 659
            Color = 14935011
            HotSpotVisible = True
            SizeBarWidth = 7
            TabOrder = 0
            VisualStyle = vsGradient
            object MyTreeView1: TTreeView
              Left = 0
              Top = 0
              Width = 218
              Height = 659
              Align = alClient
              AutoExpand = True
              Ctl3D = False
              Indent = 19
              ParentCtl3D = False
              TabOrder = 0
              OnChange = MyTreeView1Change
              OnExpanding = MyTreeView1Expanding
            end
          end
          object Panel6: TPanel
            Left = 226
            Top = 0
            Width = 684
            Height = 659
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
              Width = 684
              Height = 49
              Align = alTop
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 1
              object ToolBar2: TToolBar
                Left = 0
                Top = 0
                Width = 684
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
                  Width = 1341
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
                  object TB_Ref1: TToolButton
                    Left = 0
                    Top = 0
                    AutoSize = True
                    Caption = #21047#26032'[&R]'
                    ImageIndex = 4
                    OnClick = TB_Ref1Click
                  end
                  object TB_Sort: TToolButton
                    Left = 53
                    Top = 0
                    AutoSize = True
                    Caption = #26448#26009#27719#24635
                    ImageIndex = 20
                    OnClick = TB_SortClick
                  end
                  object ToolButton4: TToolButton
                    Left = 112
                    Top = 0
                    AutoSize = True
                    Caption = #26448#26009#20195#29992
                    ImageIndex = 22
                    OnClick = ToolButton4Click
                  end
                  object TB_PartsSort: TToolButton
                    Left = 171
                    Top = 0
                    AutoSize = True
                    Caption = #37096#20214#21010#20998
                    ImageIndex = 16
                    OnClick = TB_PartsSortClick
                  end
                  object TB_Edit1: TToolButton
                    Left = 230
                    Top = 0
                    AutoSize = True
                    Caption = #20462#25913'[&B]'
                    ImageIndex = 2
                    OnClick = TB_Edit1Click
                  end
                  object TB_Save: TToolButton
                    Left = 283
                    Top = 0
                    AutoSize = True
                    Caption = #20445#23384'[&C]'
                    ImageIndex = 9
                    Visible = False
                    OnClick = TB_SaveClick
                  end
                  object ToolButton15: TToolButton
                    Left = 336
                    Top = 0
                    Width = 8
                    Caption = 'ToolButton5'
                    ImageIndex = 4
                    Style = tbsSeparator
                  end
                  object TB_WorkBOM: TToolButton
                    Left = 344
                    Top = 0
                    AutoSize = True
                    Caption = #29983#25104#29983#20135'BOM'
                    ImageIndex = 23
                    OnClick = TB_WorkBOMClick
                  end
                  object TB_Out: TToolButton
                    Left = 421
                    Top = 0
                    AutoSize = True
                    Caption = #25968#25454#23548#20986
                    ImageIndex = 6
                  end
                  object TB_Down1: TToolButton
                    Left = 480
                    Top = 0
                    Cursor = crHandPoint
                    AutoSize = True
                    Caption = #35774#32622'[&D]'
                    ImageIndex = 8
                    OnClick = TB_Down1Click
                  end
                  object ToolButton18: TToolButton
                    Left = 533
                    Top = 0
                    Width = 8
                    Caption = 'ToolButton1'
                    ImageIndex = 9
                    Style = tbsSeparator
                  end
                  object TB_Exit: TToolButton
                    Left = 541
                    Top = 0
                    AutoSize = True
                    Caption = #36864#20986'[&E]'
                    ImageIndex = 7
                    OnClick = TB_ExitClick
                  end
                end
                object ToolButton9: TToolButton
                  Left = 1341
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
            object Panel10: TPanel
              Left = 0
              Top = 560
              Width = 684
              Height = 99
              Align = alBottom
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 2
              object Bevel2: TBevel
                Left = 0
                Top = 5
                Width = 1105
                Height = 4
              end
              object RzRG_1: TRzRadioGroup
                Left = 8
                Top = 16
                Width = 185
                Height = 75
                Caption = #32479#35745#26465#20214
                ItemIndex = 1
                Items.Strings = (
                  #37096#20214#27719#24635
                  #26448#26009#27719#24635)
                TabOrder = 0
                OnClick = RzRG_1Click
              end
              object CB_Type: TcxCheckBox
                Left = 281
                Top = 22
                Width = 49
                Height = 21
                ParentColor = False
                Properties.DisplayUnchecked = 'False'
                Properties.Caption = #27719#24635
                State = cbsChecked
                Style.BorderColor = 8623776
                Style.BorderStyle = ebsSingle
                Style.Color = 14935011
                TabOrder = 1
                OnClick = CB_TypeClick
              end
              object CB_Print: TcxCheckBox
                Left = 349
                Top = 23
                Width = 51
                Height = 21
                ParentColor = False
                Properties.DisplayUnchecked = 'False'
                Properties.Caption = #25171#21360
                State = cbsChecked
                Style.BorderColor = 8623776
                Style.BorderStyle = ebsSingle
                Style.Color = 14935011
                TabOrder = 2
                OnClick = CB_PrintClick
              end
              object CB_Parts: TcxComboBox
                Left = 426
                Top = 22
                Width = 107
                Height = 21
                ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899#36755#20837#27861' 3.0 '#29256
                Properties.Items.Strings = (
                  #37096#20214
                  #37096#20214#31867#21035
                  #20225#31649#37096#20214#31867#21035
                  #29983#20135#37096#20214#31867#21035
                  '')
                Properties.OnChange = CB_PartsPropertiesChange
                Style.BorderColor = 8623776
                Style.BorderStyle = ebsSingle
                Style.Color = 15658734
                Style.ButtonTransparency = ebtHideInactive
                TabOrder = 3
                Text = #20225#31649#37096#20214#31867#21035
              end
              object CB_Sum: TcxComboBox
                Left = 542
                Top = 22
                Width = 91
                Height = 21
                ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899#36755#20837#27861' 3.0 '#29256
                Properties.Items.Strings = (
                  #38477#32791#25351#20196'(1'#21495')'
                  #38477#32791#25351#20196'(2'#21495')'
                  #26087#26041#26696)
                Style.BorderColor = 8623776
                Style.BorderStyle = ebsSingle
                Style.Color = 15658734
                Style.ButtonTransparency = ebtHideInactive
                TabOrder = 4
                Text = #38477#32791#25351#20196'(2'#21495')'
              end
            end
            object PC_1: TRzPageControl
              Left = 0
              Top = 49
              Width = 684
              Height = 511
              ActivePage = TS_BOM
              Align = alClient
              TabIndex = 0
              TabOrder = 3
              FixedDimension = 19
              object TS_BOM: TRzTabSheet
                Caption = #35774#35745#23450#39069
                object cxGrid: TcxGrid
                  Left = 0
                  Top = 0
                  Width = 680
                  Height = 488
                  Align = alClient
                  TabOrder = 0
                  object cxGV: TcxGridDBTableView
                    DataController.DataSource = DS_Mdata
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <
                      item
                        Format = #23567#35745#65306'0.0000'
                        Kind = skSum
                        FieldName = 'FSumSuttle'
                        Column = cxGridDBColumn10
                      end
                      item
                        Format = #23567#35745#65306'0.0000'
                        Kind = skSum
                        FieldName = 'FQry'
                        Column = cxGridDBColumn9
                      end
                      item
                        Format = #23567#35745#65306'0.0000'
                        Kind = skSum
                        FieldName = 'FSuttle'
                        Column = cxGridDBColumn6
                      end
                      item
                        Format = #23567#35745#65306'0.0000'
                        Kind = skSum
                        FieldName = 'FSumQry'
                        Column = cxGridDBColumn5
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
                    object FParts: TcxGridDBColumn
                      Caption = #27719#24635#37096#20214#31867#21035
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 131
                      DataBinding.FieldName = 'FParts'
                    end
                    object cxGridDBColumn5: TcxGridDBColumn
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
                    object cxGridDBColumn6: TcxGridDBColumn
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
                    object cxGridDBColumn7: TcxGridDBColumn
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
                    object cxGridDBColumn8: TcxGridDBColumn
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
                    object cxGridDBColumn9: TcxGridDBColumn
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
                    object FWorkParts: TcxGridDBColumn
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
                    object FPartsSort: TcxGridDBColumn
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
                    object cxGridDBColumn10: TcxGridDBColumn
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
                    object cxGridDBColumn11: TcxGridDBColumn
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
                    object FFullName: TcxGridDBColumn
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
                  object cxGL: TcxGridLevel
                    GridView = cxGV
                  end
                end
              end
              object TS_Sort: TRzTabSheet
                Caption = #27719#24635#25253#34920
                object cxGrid1: TcxGrid
                  Left = 0
                  Top = 0
                  Width = 680
                  Height = 488
                  Align = alClient
                  TabOrder = 0
                  object cxGV1: TcxGridDBTableView
                    DataController.DataSource = DS_Mdata1
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <
                      item
                        Format = #23567#35745#65306'0.0000'
                        Kind = skSum
                        FieldName = 'FSumSuttle'
                        Column = cxGridDBColumn29
                      end
                      item
                        Format = #23567#35745#65306'0.0000'
                        Kind = skSum
                        FieldName = 'FQry'
                        Column = cxGridDBColumn25
                      end
                      item
                        Format = #23567#35745#65306'0.0000'
                        Kind = skSum
                        FieldName = 'FSuttle'
                        Column = cxGridDBColumn22
                      end
                      item
                        Format = #23567#35745#65306'0.0000'
                        Kind = skSum
                        FieldName = 'FSumQry'
                        Column = cxGridDBColumn21
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
                    object cxGridDBColumn16: TcxGridDBColumn
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
                    object cxGridDBColumn17: TcxGridDBColumn
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
                    object cxGridDBColumn18: TcxGridDBColumn
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
                    object cxGridDBColumn19: TcxGridDBColumn
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
                    object cxGridDBColumn20: TcxGridDBColumn
                      Caption = #27719#24635#37096#20214#31867#21035
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 131
                      DataBinding.FieldName = 'FParts'
                    end
                    object cxGridDBColumn21: TcxGridDBColumn
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
                    object cxGridDBColumn22: TcxGridDBColumn
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
                    object cxGridDBColumn23: TcxGridDBColumn
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
                    object cxGridDBColumn24: TcxGridDBColumn
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
                    object cxGridDBColumn25: TcxGridDBColumn
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
                    object cxGridDBColumn26: TcxGridDBColumn
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
                    object cxGridDBColumn27: TcxGridDBColumn
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
                    object cxGridDBColumn28: TcxGridDBColumn
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
                    object cxGridDBColumn29: TcxGridDBColumn
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
                    object cxGridDBColumn30: TcxGridDBColumn
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
                    object cxGridDBColumn31: TcxGridDBColumn
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
                    object cxGridDBColumn32: TcxGridDBColumn
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
                    object cxGridDBColumn33: TcxGridDBColumn
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
                    object cxGridDBColumn34: TcxGridDBColumn
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
                    object cxGridDBColumn35: TcxGridDBColumn
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
                    object cxGridDBColumn36: TcxGridDBColumn
                      Caption = #25442#31639#32534#30721
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 96
                      DataBinding.FieldName = 'y_FNumber'
                    end
                    object cxGridDBColumn37: TcxGridDBColumn
                      Caption = #25442#31639#35268#26684
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 130
                      DataBinding.FieldName = 'y_FModel'
                    end
                    object cxGridDBColumn38: TcxGridDBColumn
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
                    object cxGridDBColumn39: TcxGridDBColumn
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
                    object cxGridDBColumn40: TcxGridDBColumn
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
                    object cxGridDBColumn41: TcxGridDBColumn
                      Caption = #25442#31639#23450#39069
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 86
                      DataBinding.FieldName = 'y_FRation'
                    end
                    object cxGridDBColumn42: TcxGridDBColumn
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
                    object cxGridDBColumn43: TcxGridDBColumn
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
                    object cxGridDBColumn44: TcxGridDBColumn
                      Caption = #22791#27880
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 88
                      DataBinding.FieldName = 'Remark'
                    end
                    object cxGridDBColumn45: TcxGridDBColumn
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
                  object cxGL1: TcxGridLevel
                    GridView = cxGV1
                  end
                end
              end
            end
          end
        end
        object TS_WorkBOM: TRzTabSheet
          Color = 14935011
          Caption = #29983#20135'BOM'
          object PanelBkGnd: TPanel
            Left = 226
            Top = 0
            Width = 684
            Height = 659
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
              Width = 684
              Height = 35
              Align = alTop
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 1
              object ToolBar1: TToolBar
                Left = 0
                Top = 0
                Width = 569
                Height = 35
                Align = alNone
                ButtonHeight = 35
                ButtonWidth = 79
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
                  ImageIndex = 4
                  OnClick = TB_Ref2Click
                end
                object TB_Task: TToolButton
                  Left = 53
                  Top = 0
                  AutoSize = True
                  Caption = #29983#20135#20316#19994#35745#21010
                  ImageIndex = 16
                  OnClick = TB_TaskClick
                end
                object TB_Del2: TToolButton
                  Left = 136
                  Top = 0
                  AutoSize = True
                  Caption = #21024#38500'[&C]'
                  ImageIndex = 3
                  OnClick = TB_Del2Click
                end
                object TB_Out2: TToolButton
                  Left = 189
                  Top = 0
                  AllowAllUp = True
                  AutoSize = True
                  Caption = #25968#25454#23548#20986
                  ImageIndex = 6
                  OnClick = TB_Out2Click
                end
                object TB_Down2: TToolButton
                  Left = 248
                  Top = 0
                  Cursor = crHandPoint
                  AllowAllUp = True
                  AutoSize = True
                  Caption = #35774#32622'[&D]'
                  ImageIndex = 8
                  OnClick = TB_Down2Click
                end
                object ToolButton2: TToolButton
                  Left = 301
                  Top = 0
                  AutoSize = True
                  Caption = #36864#20986'[&E]'
                  ImageIndex = 7
                  OnClick = TB_ExitClick
                end
              end
            end
            object cxGrid2: TcxGrid
              Left = 0
              Top = 35
              Width = 684
              Height = 577
              Align = alClient
              TabOrder = 2
              object cxGV2: TcxGridDBTableView
                DataController.DataSource = DS_Mdata2
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
                OptionsView.Navigator = True
                OptionsView.Footer = True
                OptionsView.GroupByBox = False
                object Sel: TcxGridDBColumn
                  Caption = #8730
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.DisplayUnchecked = 'False'
                  Properties.ReadOnly = False
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 32
                  DataBinding.FieldName = 'sel'
                end
                object Num2: TcxGridDBColumn
                  Caption = #24207#21495
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 29
                  DataBinding.FieldName = 'Num'
                end
                object FCode: TcxGridDBColumn
                  Caption = #32423#21035
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
                  Width = 30
                  DataBinding.FieldName = 'FCode'
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
                  Options.Sorting = False
                  Width = 125
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
                  Width = 110
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
                  Width = 86
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
                  Width = 91
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
              end
              object cxGL2: TcxGridLevel
                GridView = cxGV2
              end
            end
            object Panel4: TPanel
              Left = 0
              Top = 612
              Width = 684
              Height = 47
              Align = alBottom
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 3
              object Bevel1: TBevel
                Left = 0
                Top = 5
                Width = 1105
                Height = 4
              end
            end
          end
          object RzSizePanel4: TRzSizePanel
            Left = 0
            Top = 0
            Width = 226
            Height = 659
            Color = 14935011
            HotSpotVisible = True
            SizeBarWidth = 7
            TabOrder = 1
            VisualStyle = vsGradient
            object MyTreeView2: TTreeView
              Left = 0
              Top = 0
              Width = 218
              Height = 659
              Align = alClient
              AutoExpand = True
              Ctl3D = False
              Indent = 19
              ParentCtl3D = False
              TabOrder = 0
              OnChange = MyTreeView2Change
              OnExpanding = MyTreeView2Expanding
            end
          end
        end
      end
    end
  end
  object ImageList: TImageList
    Left = 51
    Top = 94
    Bitmap = {
      494C010118001D00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000FF330000FF330000FF330000FF330000FFCC9900CC996600CC996600CC99
      6600CC996600CCCCCC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080000000FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000CC666600CC666600CC666600CC66
      6600CC666600CC666600CC666600CC666600CC666600CC666600CC666600CC66
      6600CC666600CC666600CC666600CC6666000000000000000000000000000000
      00000000000000000000FF330000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF330000FFCC9900F2EABF00F2EABF00CCCC
      FF00E5E5E500CC996600CC996600CCCCCC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000800000008000000080000000FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000CC666600FFFFFF00FFFFFF00FFCC
      CC00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFF
      FF00FFCCCC00FFFFFF00FFFFFF00CC6666000000000000000000000000000000
      00000000000000000000FF330000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF330000FFCC9900FFFFFF00FFFFFF00CCCC
      FF00FFFFFF00FFFFFF00E5E5E500CC9966000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008000
      0000800000008000000080000000FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000CC666600FFFFFF00FFFFFF00FFCC
      CC00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFF
      FF00FFCCCC00FFFFFF00FFFFFF00CC6666000000000000000000000000000000
      00000000000000000000FF330000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF330000FFCC9900F2EABF00F2EABF00CCCC
      FF00F2EABF00F2EABF00F2EABF00CC996600CCCCCC0000000000000000000000
      0000000000000000000000000000000000000000000000000000800000008000
      000080000000FFFFFF008000000080000000FFFFFF0000000000000000000000
      000000000000000000000000000000000000CC666600FFCCCC00FFCCCC00FFCC
      CC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCC
      CC00FFCCCC00FFCCCC00FFCCCC00CC666600000000000000000000000000FF33
      0000FF330000FF330000FF330000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF330000FFCC9900FFFFFF00CCCCCC00CCCC
      FF00FFFFFF00FFFFFF00FFFFFF00E5E5E500CC996600CCCCCC00000000000000
      0000000000000000000000000000000000000000000080000000800000008000
      0000FFFFFF0000000000000000008000000080000000FFFFFF00000000000000
      000000000000000000000000000000000000CC666600FFFFFF00FFFFFF00FFCC
      CC00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFF
      FF00FFCCCC00FFFFFF00FFFFFF00CC666600000000000000000000000000FF33
      0000FFFFFF00FFFFFF00FF330000FF330000FF330000FF330000FF330000FF33
      0000FF330000FF330000FF330000FF330000FFCC9900F2EABF00F2EABF00CCCC
      FF00F2EABF00F2EABF00F2EABF00F2EABF00E5E5E500CC996600CC996600CC99
      6600CCCCCC00000000000000000000000000000000000000000080000000FFFF
      FF000000000000000000000000000000000080000000FFFFFF00000000000000
      000000000000000000000000000000000000CC666600FFFFFF00FFFFFF00FFCC
      CC00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFF
      FF00FFCCCC00FFFFFF00FFFFFF00CC666600000000000000000000000000FF33
      0000FFFFFF00FFFFFF00FF330000FF330000FF330000FF330000FF330000FF33
      0000FFCC9900FF3300006666FF00FF330000FFCC9900FFFFFF00FFFFFF00CCCC
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E5E5
      E500CC996600CC996600CC996600CCCCCC000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000FFFFFF000000
      000000000000000000000000000000000000CC666600FFCCCC00FFCCCC000000
      9900000099000000990000009900FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCC
      CC00FFCCCC00FFCCCC00FFCCCC00CC666600000000000000000000000000FF33
      0000FFFFFF00FFFFFF00FFCC9900FF330000FF330000FF330000FF330000FF33
      0000FF330000FF330000FF330000FFCC9900FFCC9900F2EABF00F2EABF00CCCC
      FF00F2EABF00F2EABF00F2EABF00F2EABF00F2EABF00F2EABF00F2EABF00F2EA
      BF00F2EABF00F2EABF00E5E5E500CC9966000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080000000FFFF
      FF0000000000000000000000000000000000CC666600FFFFFF00FFFFFF000000
      9900FFFFFF00FFFFFF0000009900FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFF
      FF00FFCCCC00FFFFFF00FFFFFF00CC666600FF330000FF330000FF330000FF33
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FF330000000000000000000000000000FFCC9900FFFFFF00FFFFFF00CCCC
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008000
      0000FFFFFF00000000000000000000000000CC666600FFFFFF00FFFFFF000000
      9900FFFFFF00FFFFFF0000009900FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFF
      FF00FFCCCC00FFFFFF00FFFFFF00CC666600FF330000FFFFFF00FFFFFF00FF33
      0000FF330000FF330000FF330000FF330000FF330000FF330000FF330000FF33
      0000FF330000000000000000000000000000FFCC9900F2EABF00F2EABF00CCCC
      FF00F2EABF00F2EABF00F2EABF00F2EABF00F2EABF00F2EABF00F2EABF00F2EA
      BF00F2EABF00F2EABF00F2EABF00CC9966000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080000000FFFFFF000000000000000000CC666600FFCCCC00FFCCCC000000
      9900000099000000990000009900FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCC
      CC00FFCCCC00FFCCCC00FFCCCC00CC666600FF330000FFFFFF00FFFFFF00FF33
      0000FF330000FF330000FF330000FF330000FF330000FFCC9900FF3300006666
      FF00FF330000000000000000000000000000FFCC9900FFFFFF00CCCCCC00CCCC
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080000000FFFFFF0000000000CC666600FFFFFF00FFFFFF00FFCC
      CC00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFF
      FF00FFCCCC00FFFFFF00FFFFFF00CC666600FF330000FFFFFF00FFFFFF00FFCC
      9900FF330000FF330000FF330000FF330000FF330000FF330000FF330000FF33
      0000FFCC9900000000000000000000000000FFCC9900FFFFFF00FFFFFF00CCCC
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008000000000000000CC666600FFFFFF00FFFFFF00FFCC
      CC00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFF
      FF00FFCCCC00FFFFFF00FFFFFF00CC666600FF330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF330000000000000000
      000000000000000000000000000000000000FFCC9900FFFFFF00FFFFFF00CCCC
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CC666600FFCCCC00CC666600CC66
      6600FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCC
      CC00CC666600CC666600FFCCCC00CC666600FF330000FF330000FF330000FF33
      0000FF330000FF330000FF330000FF330000FF330000FF330000000000000000
      000000000000000000000000000000000000FFCC9900FFCC9900FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC99000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CC666600FFCCCC00FFCCCC00FFCC
      CC00FFCCCC00FFCCCC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFCCCC00FFCC
      CC00FFCCCC00FFCCCC00FFCCCC00CC666600FF330000FF330000FF330000FF33
      0000FF330000FF330000FFCC9900FF3300006666FF00FF330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CC666600CC666600CC666600CC66
      6600CC666600CC666600CC666600CC666600CC666600CC666600CC666600CC66
      6600CC666600CC666600CC666600CC666600FFCC9900FF330000FF330000FF33
      0000FF330000FF330000FF330000FF330000FF330000FFCC9900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080000000000000000000000000000000
      00000000000000000000000000000000000000000000FF990000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC6600000000
      00000000000000000000000000000000000000000000CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC996600CC996600CC9966000000000000000000000000000000
      000080808000B2B2B20099999900B2B2B2008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000B2B2B20099999900B2B2B2008080800080808000000000000000
      000000000000000000000000000000000000FF990000CC660000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC66
      00000000000000000000000000000000000000000000CC996600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966000000000000000000000000008080
      8000B2B2B20099999900FFFFFF00FFFFFF00B2B2B200B2B2B200808080008080
      8000000000000000000000000000000000000000000000000000000000008080
      8000B2B2B200999999000000000000000000B2B2B200B2B2B200808080008080
      800000000000000000000000000000000000FF990000CC660000E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500CC66
      00000000000000000000000000000000000000000000CC996600FFFFFF009933
      0000993300009933000099330000993300009933000099330000993300009933
      00009933000099330000FFFFFF00CC9966000000000000000000000000008080
      800099999900FFFFFF009999990099999900FFFFFF00FFFFFF00B2B2B200B2B2
      B200808080008080800000000000000000000000000000000000000000008080
      8000999999000000000099999900999999000000000000000000B2B2B200B2B2
      B20080808000808080000000000000000000FF990000CC660000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC66
      00000000000000000000000000000000000000000000CC996600FFFFFF009933
      0000CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC99660099330000FFFFFF00CC996600000000000000000080808000B2B2
      B20099999900FFFFFF0080808000B2B2B20099999900FFFFFF00FFFFFF00FFFF
      FF00B2B2B200B2B2B2008080800000000000000000000000000080808000B2B2
      B200999999000000000080808000B2B2B2009999990000000000000000000000
      0000B2B2B200B2B2B2008080800000000000FF990000CC660000E5E5E500E5E5
      E500E5E5E500E5E5E500CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CC66
      00000000000000000000000000000000000000000000CC996600FFFFFF009933
      0000993300009933000099330000993300009933000099330000993300009933
      00009933000099330000FFFFFF00CC9966000000000000000000808080009999
      9900FFFFFF00B2B2B20080808000B2B2B20099999900FFFFFF00808080008080
      8000FFFFFF00FFFFFF0080808000000000000000000000000000808080009999
      990000000000B2B2B20080808000B2B2B2009999990000000000808080008080
      800000000000000000008080800000000000FF990000CC660000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500CC66
      00000000000000000000000000000000000000000000CC996600FFFFFF009933
      0000CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC99660099330000FFFFFF00CC9966000000000080808000B2B2B2009999
      9900FFFFFF00B2B2B200E5E5E500B2B2B200FFFFFF00FFFFFF00FFFFFF00B2B2
      B20080808000FFFFFF0080808000000000000000000080808000B2B2B2009999
      990000000000B2B2B200E5E5E500B2B2B200000000000000000000000000B2B2
      B20080808000000000008080800000000000FF990000CC660000E5E5E500E5E5
      E500E5E5E500CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CC66
      00000000000000000000000000000000000000000000CC996600FFFFFF009933
      0000993300009933000099330000993300009933000099330000993300009933
      00009933000099330000FFFFFF00CC996600000000008080800099999900FFFF
      FF00B2B2B200E5E5E500E5E5E500B2B2B200FFFFFF008080800080808000FFFF
      FF00FFFFFF00FFFFFF0080808000000000000000000080808000999999000000
      0000B2B2B200E5E5E500E5E5E500B2B2B2000000000080808000808080000000
      000000000000000000008080800000000000FF990000CC660000FFFFFF00FFFF
      FF00FFFFFF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500CC66
      00000000000000000000000000000000000000000000CC996600FFFFFF009933
      0000CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC99660099330000FFFFFF00CC99660080808000B2B2B20099999900FFFF
      FF00FFFFFF00FFFFFF00B2B2B200FFFFFF00FFFFFF00FFFFFF00B2B2B2008080
      8000FFFFFF0080808000000000000000000080808000B2B2B200999999000000
      00000000000000000000B2B2B200000000000000000000000000B2B2B2008080
      800000000000808080000000000000000000FF990000CC660000E5E5E500E5E5
      E500CCCCCC00CCCCCC00CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC66000000000000CC996600FFFFFF009933
      0000993300009933000099330000993300009933000099330000993300009933
      00009933000099330000FFFFFF00CC9966008080800099999900FFFFFF00FFFF
      FF009933000099330000FFFFFF00FFFFFF008080800080808000FFFFFF00FFFF
      FF00FFFFFF008080800000000000000000008080800099999900000000000000
      0000808080008080800000000000000000008080800080808000000000000000
      000000000000808080000000000000000000FF990000CC660000FFFFFF00FFFF
      FF00E5E5E500CC660000FF990000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC66000000000000CC996600FFFFFF009933
      0000CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC99660099330000FFFFFF00CC996600000000009999990099999900FFFF
      FF00FFFFFF00B2B2B2009933000099330000FFFFFF00FFFFFF0080808000FFFF
      FF00808080000000000000000000000000000000000099999900999999000000
      000000000000B2B2B20080808000808080000000000000000000808080000000
      000080808000000000000000000000000000FF990000CC660000E5E5E500CCCC
      CC00FF990000FF990000FF990000FF990000FF990000CC660000CC660000CC66
      0000CC660000CC660000CC6600000000000000000000CC996600FFFFFF009933
      0000993300009933000099330000993300009933000099330000993300009933
      00009933000099330000FFFFFF00CC9966000000000000000000000000009999
      990099999900FFFFFF00FFFFFF00B2B2B2009933000099330000FFFFFF00FFFF
      FF00808080000000000000000000000000000000000000000000000000009999
      9900999999000000000000000000B2B2B2008080800080808000000000000000
      000080808000000000000000000000000000FF990000CC660000FFFFFF00FF99
      0000FF996600FF996600FF990000FF990000FF990000FF990000FF990000CC66
      0000CC660000CC660000000000000000000000000000CC996600FFFFFF009933
      0000CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC99660099330000FFFFFF00CC9966000000000000000000000000000000
      0000000000009999990099999900FFFFFF00FFFFFF00B2B2B200FFFFFF008080
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900999999000000000000000000B2B2B200000000008080
      800000000000000000000000000000000000FF990000CC660000FF990000FF99
      6600FF996600FF996600FF996600FF996600FF990000FF990000FF990000FF99
      0000CC66000000000000000000000000000000000000CC996600FFFFFF009933
      0000993300009933000099330000993300009933000099330000993300009933
      00009933000099330000FFFFFF00CC9966000000000000000000000000000000
      00000000000000000000000000009999990099999900FFFFFF00FFFFFF008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000999999009999990000000000000000008080
      800000000000000000000000000000000000FF990000FF990000FF996600FF99
      6600FF996600FF996600FF996600FF996600FF996600FF996600FF990000CC66
      00000000000000000000000000000000000000000000CC996600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900999999000000
      00000000000000000000000000000000000000000000FF99000099999900FFFF
      FF0099999900FFFFFF0099999900FFFFFF0099999900FFFFFF0099999900FFFF
      FF000000000000000000000000000000000000000000CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC996600CC996600CC9966000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099999900CCCC
      CC0099999900CCCCCC0099999900CCCCCC0099999900CCCCCC00999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006E74
      7400262626006E7474000000000000000000000000006E7474006E7474000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002626
      2600111111002626260000000000000000000000000026262600262626000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000FFFFFF0000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006E74
      7400262626006E7474000000000000000000000000006E7474006E7474000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000099000000990000008000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000FFFFFF008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000000000006E74
      74006E7474006E7474006E7474006E7474006E7474006E747400C7C7C7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008000000080000000800000008000000080000000800000008000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000099000000800000009900000080000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000808080000000000000000000000000000000
      00000000000000000000000000006666990000000000000000006E7474001111
      11001111110011111100111111001111110011111100111111006E7474000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008000000080000000800000008000000080000000800000008000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000099000000990000008000000099000000
      80000000000000000000000000000000000080808000FFFFFF00FFFFFF000000
      0000FFFFFF000000000000000000C0C0C0000000000000000000000000000000
      00000000000000000000666699003399CC000000000000000000111111002626
      26000000000000000000000000000000000000000000C7C7C70011111100C7C7
      C700000000000000000000000000000000000000000000000000000000000000
      0000000000008000000080000000800000008000000080000000800000008000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00CC9966000000990000009900000099000000FF000000
      99000000800000000000000000000000000080808000FFFFFF00000000000000
      0000FFFFFF0080808000C0C0C000FFFFFF008080800000000000FFFFFF008080
      800000000000666699003399CC0066CCFF000000000000000000111111001111
      1100000000001111110011111100000000001111110000000000111111006E74
      7400000000000000000000000000000000000000000000000000000000000000
      000000000000800000008000000080000000FFFFFF0080000000800000008000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFCC9900FFCC9900000099000000FF000000FF000000
      FF00000099000000800000000000000000008080800000000000000000000000
      0000808080000000000000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00666699003399CC0066CCFF00000000000000000000000000111111000000
      0000000000000000000000000000000000000000000000000000262626001111
      1100000000000000000000000000000000000000000000000000000000000000
      000000000000800000008000000080000000FFFFFF0080000000800000008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFCC9900FFCC9900FFFFFF00FFFFFF000000FF003399FF003399
      FF003399FF000000990000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000FFFFFF006666
      99003399CC0066CCFF00000000000000000000000000000000006E7474001111
      11000000000011111100111111000000000011111100000000006E7474001111
      11006E7474000000000000000000000000000000000000000000000000000000
      0000000000008000000080000000800000008000000080000000800000008000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFCC9900FFCC9900FFFFFF00FFFFFF00FFFFFF00FFFFFF00000099000000
      9900000099000000000000000000000000000000000000000000C0C0C000C0C0
      C0000000000000000000FFFFFF00000000000000000000000000666699003399
      CC0066CCFF000000000000000000000000000000000026262600C7C7C7000000
      0000000000000000000000000000000000000000000000000000000000001111
      1100111111000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000000000000000000000000000800000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFCC
      9900FFCC9900FFFFFF00FFFFFF00FFFFFF00CC996600CC996600000000000000
      0000000000000000000000000000000000000000000080808000C0C0C000FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF0000000000666699003399CC0066CC
      FF00000000000000000000000000000000000000000011111100C7C7C7002626
      2600000000001111110011111100000000001111110000000000000000001111
      1100111111006E74740000000000000000000000000000000000000000000000
      0000000000000000000080000000000000000000000000000000800000000000
      00000000000000000000000000000000000000000000FFFFFF00FFCC9900FFCC
      9900FFFFFF00FFFFFF00FFFFFF00CC9966000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      80000000000000000000FFFFFF00FFFFFF00666699003399CC0066CCFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000111111001111110000000000000000000000000000000000000000000000
      0000000000000000000080000000000000000000000000000000800000000000
      000000000000000000000000000000000000FFFFFF00FFCC9900FFCC9900FFFF
      FF00FFFFFF00FFFFFF00CC9966000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000666699003399CC0066CCFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006E747400111111006E7474006E7474000000000000000000000000000000
      0000000000000000000000000000800000008000000080000000000000000000
      000000000000000000000000000000000000CC996600FFCC9900FFFFFF00FFFF
      FF00FFFFFF00CC9966000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000666699003399CC0066CCFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C7C7C7001111110011111100111111000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CC996600FFFFFF00FFFF
      FF00CC9966000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000666699003399CC0066CCFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C7C7C700C7C7C700C7C7C7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC996600CC99
      6600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009933000099330000CC66000099330000CC660000993300000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066CCCC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099330000CC66000099330000CC66000099330000993300000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066CCCC000099CC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009933000099330000CC66000099330000CC660000993300000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CC9966009933000099330000CC9966000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000066CCCC000099CC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009999990099330000993300009933000099330000999999000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C00000FFFF000000000000000000000000000000000000000000C0C0C0000000
      000000FFFF000000000000000000000000000000000000000000000000009933
      000099330000CC660000CC660000993300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000066CCCC0099FFFF000099CC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900FFFFFF00FFCCCC0066666600000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00C0C0C0000000000000000000000000000000000000000000C0C0C0000000
      0000C0C0C000000000000000000000000000000000000000000099330000CC66
      0000CC6600009933000099330000CC9966000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000066CCCC000099CC000099CC000099CC0066FFFF000099CC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900FFFFFF00FFCCCC0066666600000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C00000FFFF000000000000000000000000000000000000000000C0C0C0000000
      000000FFFF0000000000000000000000000000000000CC99660099330000CC66
      000099330000CC99660000000000000000009933000099330000993300009933
      0000993300009933000099330000000000000000000000000000000000000000
      000066CCCC0099FFFF0066FFFF0066FFFF0066FFFF0066FFFF000099CC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900FFFFFF00FFCCCC0066666600000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C00000FFFF00C0C0C000C0C0C00000FFFF00C0C0C00000FFFF0000FFFF00C0C0
      C00000FFFF000000000000000000000000000000000099330000CC6600009933
      0000CC99660000000000000000000000000099330000CC660000CC660000CC66
      0000CC660000CC66000099330000000000000000000000000000000000000000
      00000000000066CCCC0099FFFF0066FFFF000099CC0066CCCC0066CCCC0066CC
      CC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900FFFFFF00FFCCCC0066666600000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00C0C0C00000000000000000000000000000000000000000000000000000FF
      FF00C0C0C0000000000000000000000000000000000099330000CC6600009933
      0000000000000000000000000000000000000000000099330000CC660000CC66
      0000CC660000CC66000099330000000000000000000000000000000000000000
      00000000000066CCCC0099FFFF0066FFFF0066FFFF000099CC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900FFFFFF00FFCCCC0066666600000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C00000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      000000FFFF000000000000000000000000000000000099330000CC6600009933
      0000CC99660000000000000000000000000000000000CC99660099330000CC66
      0000CC660000CC6600009933000000000000000000000000000066CCCC000099
      CC000099CC000099CC000099CC0099FFFF0066FFFF0066FFFF000099CC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000066666600666666006666660066666600000000000000
      00000000000000000000000000006666660000000000000000000000000000FF
      FF0000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000C0C0C00000000000000000000000000000000000CC99660099330000CC66
      000099330000CC99660000000000CC9966009933000099330000CC6600009933
      0000CC660000CC6600009933000000000000000000000000000066CCCC0099FF
      FF0099FFFF0066FFFF0066FFFF0066FFFF0066FFFF0066FFFF0066FFFF000099
      CC00000000000000000000000000000000000000000066666600666666000000
      0000000000006666660099999900999999009999990099999900666666000000
      00000000000000000000666666006666660000000000000000000000000000FF
      FF0000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000C0C0C000000000000000000000000000000000000000000099330000CC66
      0000CC660000993300009933000099330000CC660000CC66000099330000CC99
      660099330000CC660000993300000000000000000000000000000000000066CC
      CC0099FFFF0099FFFF0066FFFF0066FFFF000099CC0066CCCC0066CCCC0066CC
      CC00000000000000000000000000000000009999990099999900999999006666
      66006666660099999900CCCCCC00CCCCCC00CCCCCC0099999900666666006666
      66006666660066666600CCCCCC0066666600000000000000000000000000C0C0
      C00000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000009933
      000099330000CC660000CC660000CC6600009933000099330000000000000000
      00000000000099330000993300000000000000000000000000000000000066CC
      CC0099FFFF0099FFFF0099FFFF0066FFFF0066FFFF000099CC00000000000000
      00000000000000000000000000000000000099999900FFFFFF00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00999999009999
      990099999900CCCCCC00666666000000000000000000000000000000000000FF
      FF0000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000C0C0C0000000000000000000000000000000000000000000000000000000
      0000CC996600993300009933000099330000CC99660000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000066CCCC0099FFFF0099FFFF0099FFFF0066FFFF0066FFFF000099CC000000
      00000000000000000000000000000000000099999900FFFFFF00CCCCCC00CCCC
      CC00FFFFFF00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000066CCCC0099FFFF0099FFFF0099FFFF0066FFFF0066FFFF0066FFFF000099
      CC000000000000000000000000000000000099999900FFFFFF00FFFFFF009999
      990099999900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009999
      9900999999000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066CCCC0099FFFF0099FFFF0099FFFF0066FFFF0066FFFF0066FF
      FF000099CC000000000000000000000000000000000099999900999999000000
      0000000000009999990099999900999999009999990099999900999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066CCCC0066CCCC0066CCCC0066CCCC0066CCCC0066CCCC0066CC
      CC0066CCCC0066CCCC000000000000000000000000000E0B07000C0404000900
      0000150D0E000703020003040000020A00000108000009080000130402001407
      090001040800B8C5C70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E2EFF100000000000000000000000000000000000000
      00000000000000000000000000000000000088888800C4C6C600CCD1D000CAD0
      CF00BCC9C700B8CDC400B8D8C700B5D3C000BED2C600C7CECB00CDC8C900CBC6
      C80000020500C5D1D30000000000000000000000000000000000993300009933
      0000993300009933000099330000993300009933000099330000993300009933
      000099330000000000000000000000000000948C390029A56B00318C4A00088C
      2900108C3100188C3900298C4200218C4200108C3100088C2900188C3900218C
      4200298C4200108C3100218C390000000000000000000000000000000000E2EF
      F100E5E5E500CCCCCC00E5E5E500E2EFF1000000000000000000000000000000
      00000000000000000000000000000000000080848900F4FFFF00E1FAFC00D1F8
      F600D1FFFF00BFFFF00027805400B5FFDD00DCFFFF00D8EEF900ECFFFF00BFCE
      D10000040800C3C7CC00000000000000000000000000CC996600FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900CC99
      6600CC9966009933000000000000000000009C8C4A00318C4A00A5DE9C00FFF7
      FF00F7EFF700EFEFE700DEEFDE00E7EFE700F7EFEF00F7EFF700EFEFEF00E7EF
      E700DEEFDE00F7F7EF00218C39000000000000000000E2EFF100E5E5E500B2B2
      B200CC9999009966660099666600B2B2B200CCCCCC00E5E5E500E2EFF1000000
      00000000000000000000000000000000000080888F00E8FBFF00D3F9F900C8FF
      FB00B0FFEE00137D5400128A5000B3FFE700BFFDE700DFFFFF00D5F7F600B1CA
      CC00020B0F00BEC1C6000000000000000000CC996600CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      660099330000CC9966009933000000000000AD8C5200188C3100EFEFEF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00218C390000000000E5E5E500CC99990099666600CC99
      9900CC999900FFFFFF00996666009999990099999900B2B2B200E5E5E5000000
      00000000000000000000000000000000000077868900E9FFFF00DCFFFF00BCFF
      EF00158252000F8E51000B844A001B824800317E4100D7FFDE00DEFFF400B6CF
      CB00000B0900CDCFCF000000000000000000CC996600FFFFFF00FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC
      9900CC996600993300009933000000000000AD8C5A00108C2900DEE7DE00CEE7
      CE00E7EFE700E7EFE700E7EFE700E7EFE700DEEFDE00DEEFDE00B5D6B500A5CE
      A500B5D6B50094BD9400218C39000000000099666600CC999900FFCC9900FFCC
      9900FFCCCC00FFFFFF0099666600336699003366990033669900E2EFF1000000
      00000000000000000000000000000000000077858400ECFFFF00CFF9EE00CCFF
      F400A7FFDB0012884D0015855500B8FFE4003D873F002C632400D1FADF00BDD4
      CF0000020300C0BFC1000000000000000000CC996600FFFFFF00FFCC9900FFCC
      9900FFCC9900FFCC990000CC000000990000FFCC99000000FF000000CC00FFCC
      9900CC996600CC9966009933000000000000AD8C520018943100E7F7E700187B
      1800187B1800187B1800187B1800187B18004A944A0073B5730042944200187B
      1800187B180031843100218C39000000000099666600FFCC9900FFCC9900FFCC
      9900FFCCCC00FFFFFF009966660066CCCC0066CCCC000099CC00FFFFFF00FFCC
      CC00000000000000000000000000000000007E888200F3FFF900E5FFF300C9FD
      DF00C9FFEA00B7FFE60025826300AFFFDC00DFFFDD002D551E00E6FFF200BCD3
      CF0002010A00D7CDDA000000000000000000CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CC996600CC996600CC99660099330000A58C4A00218C3900E7EFE700CECE
      CE00187B1800187B1800187B1800187B180063A563008CCE8C00187B1800187B
      180018731800E7F7E700218C39000000000099666600FFCC9900FFCC9900FFCC
      9900FFCCCC00FFFFFF009966660066CCCC0066CCFF003399CC00FFCCCC00CC66
      000000000000000000000000000000000000888A8400F3FFF200E4FFE8002F58
      3C00D1FFE600C7FFEC00AEFFE800BDFFEE00D0FFD9003B5D3800DAFDE900B5CC
      C80004030D00D5C7D9000000000000000000CC996600FFFFFF00FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC
      9900CC996600CC996600CC9966009933000000000000298C4200CEE7CE00FFFF
      FF00CED6CE00187B1800187B1800187B180094CE9400187B1800187B18005294
      5200107B1000A5CEA500218C39000000000099666600FFCC9900CC999900CC99
      6600FFCCCC00FFFFFF009966660099CCCC0099CCFF00B2B2B200FF660000CC66
      0000000000000000000000000000000000008B868300FCFFF800F1FFF4003255
      3B00E1FFF000C2FFE0001B8B5100A1FFD800CDFFF100D1FBEA00DDFFF500B9D3
      CD0001030B00CDC4D100000000000000000000000000CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600FFCC
      9900FFCC9900CC996600CC9966009933000000000000298C4200CEE7CE00FFFF
      FF00FFFFFF00B5CEB500187B18008CCE8C00187B1800187B180084B58400BDD6
      BD00ADD6AD00DEDEDE00218C39000000000099666600FFCC990099666600FFFF
      FF00FFCCCC00FFFFFF009966660099CCCC00C0C0C000CC660000CC660000CC66
      0000CC660000CC660000CC66000000000000918C8900FBFFF900E9FBEE003351
      3E004E775C00CCFFE600118A40000F8C4600B6FFE600D4FFFA00DAFEF200BBD0
      C80000010200C9C8CC0000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC99
      6600FFCC9900FFCC9900CC9966009933000000000000188C3900D6E7D600FFFF
      FF00F7FFF7008CD68C0084BD8400187B1800187B1800187B18004A944A00BDE7
      BD00FFFFFF00FFFFFF00218C39000000000099666600FFCC9900CC9999009966
      6600FFCCCC00FFFFFF009966660000000000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000000000007F807E00FAFFFE00F3FFFF00D3F1
      E6004D7E5E002E7F4800179543000A8B3A001E7D4B00CBFFEC00E8FFF300C3CF
      C3000A110A00C2C9C2000000000000000000000000000000000000000000CC99
      6600FFFFFF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500FFFFFF00CC99
      6600CC996600CC9966009933000000000000AD8C5A00108C2900E7E7E700FFFF
      FF008CCE8C007BBD7B00187B1800187B1800187B1800187B1800187B1800428C
      4200A5D6A500FFFFFF00218C39000000000099666600FFCC9900FFCC9900FFCC
      9900FFCCCC00FFFFFF009966660000000000CC999900CC660000CC660000CC66
      0000CC660000CC660000CC66000000000000868D8A00F8FFFF00ECF7FB00ECFF
      FF00E0FFF100CDFFE70021904C0011854000B8FFE000D8FFF100BDD0C100CDD0
      C70001050000CBCFCA000000000000000000000000000000000000000000CC99
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CC996600000000000000000000000000AD8C5A00188C3100EFEFEF006BC6
      6B0052AD5200187B1800187B180084B58400DEDEDE004A944A00187B1800187B
      1800106B100084CE8400218C39000000000099666600FFCC9900FFCC9900FFCC
      9900FFCCCC00FFFFFF0099666600CCCCCC00E2EFF100CC999900FF660000CC66
      00000000000000000000000000000000000080898600F1F9F800F8FFFF00F4FF
      FF00ECFFFE00DBFFF700307C5D00BDFFEB00D6FFF300000A0000000A04000101
      010006000500CEC6CD0000000000000000000000000000000000000000000000
      0000CC996600FFFFFF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500FFFF
      FF00CC996600000000000000000000000000AD8C5200218C3900E7EFE70094B5
      9400187B1800187B180094C69400F7FFF700FFFFFF00E7E7E7009CBD9C00187B
      1800187B1800D6D6D600218C39000000000099666600FFCC9900FFCC9900FFCC
      9900FFCCCC00FFFFFF009966660099CCCC000000000099CCCC00FFCC9900CC66
      00000000000000000000000000000000000078838100FAFFFF00FAF9FB00FEFD
      FF00FAFFFF00EDFFFF00C9F6ED00D6FFFA00DAF8ED007D8D8600F0F7FA000B0A
      1300D7CDD900FFF6FF0000000000000000000000000000000000000000000000
      0000CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC996600000000000000000000000000218C3900E7F7E700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00218C39000000000099666600CC999900FFCC9900FFCC
      9900FFCCCC00FFFFFF0099666600CCCCCC00000000003399CC0000000000FFCC
      99000000000000000000000000000000000081898900FBFAFC00FFFDFE00FFFD
      FC00FFFCF800FAFFFC00F1FFFF00EDFFFE00EFFFF9007587800000060F00BDBE
      CC00FFFAFF00FDF5FF0000000000000000000000000000000000000000000000
      000000000000CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC99660000000000000000009C8C4A00399C52008CA5840063AD
      63006BAD6B0073AD730084AD84007BAD7B006BAD6B0063AD630073AD730084AD
      840084AD84006BAD6B00218C39000000000000000000C0C0C000CC996600CC99
      9900CCCC9900FFFFFF00996666000099CC000099CC000099CC00000000000000
      0000000000000000000000000000000000007C8386008D8A8C009D858500977E
      7A009189820086888200818383007F87860078897E0077898200C3CCD600F8FA
      FF00FAF6FF00FFFBFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C8C4A00429C63004A944A00428C
      4200428C42004A8C4A004A8C4A004A8C4A004A8C4A00428C42004A8C4A004A8C
      4A004A8C4A004A8C4A00218C390000000000000000000000000000000000CCCC
      CC00CC9999009966660099666600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC996600CC996600CC9966000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC9966000000000000000000000000000000000000000000CC99
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966000000000033333300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      9900000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC9966000000000000000000000000000000000000000000CC99
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966003333330066666600666666006666
      6600000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003333CC000000
      FF00000099000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500FFFFFF00CC9966000000000000000000000000000000000000000000CC99
      6600FFFFFF00FFFFFF00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00FFFFFF00FFFFFF00CC9966000000000099999900CCCCCC009999
      9900666666006666660000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003333CC003399
      FF000000FF000000990000000000000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC9966000000000000000000000099000000000000000000CC99
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966000000000099999900CCCCCC00CCCC
      CC00999999009999990066666600666666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003333
      CC000066FF000000CC0000000000000000000000000000000000000000000000
      00000000FF000000000000000000000000000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500FFFFFF00CC99660000000000000000000000CC000000990000000000CC99
      6600FFFFFF009933000099330000993300009933000099330000993300009933
      00009933000099330000FFFFFF00CC996600000000000000000099999900CCCC
      CC00CCCCCC009999990099999900999999006666660066666600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000CC000000FF0000009900000000000000000000000000000000000000
      FF00000099000000000000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000FF000000CC0000009900CC99
      6600FFFFFF0099330000CC996600CC996600CC996600CC996600CC996600CC99
      6600CC99660099330000FFFFFF00CC996600000000000000000099999900E5E5
      E500CCCCCC00CCCCCC0099999900999999009999990099330000663300006633
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000CC000000FF000000990000000000000000000000FF000000
      9900000000000000000000000000000000000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500FFFFFF00CC99660000000000000000000000FF000000CC0000000000CC99
      6600FFFFFF009933000099330000993300009933000099330000993300009933
      00009933000099330000FFFFFF00CC9966000000000000000000000000009999
      9900E5E5E500CCCCCC00CCCCCC00999999009933000099330000993300009933
      0000663300000000000000000000000000000000000000000000000000000000
      000000000000000000000000CC000000FF00000099000000FF00000099000000
      0000000000000000000000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000FF000000000000000000CC99
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966000000000000000000000000009999
      9900FFFFFF00E5E5E500CCCCCC00993300009933000099330000993300009933
      0000993300006633000000000000000000000000000000000000000000000000
      00000000000000000000000000000000CC000000FF0000009900000000000000
      0000000000000000000000000000000000000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500FFFFFF00CC9966000000000000000000000000000000000000000000CC99
      6600FFFFFF00FFFFFF00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00FFFFFF00FFFFFF00CC9966000000000000000000000000000000
      000099999900FFFFFF0099330000CC6633009933000099330000993300009933
      0000993300009933000066330000000000000000000000000000000000000000
      000000000000000000000000CC000000FF00000099000000CC00000099000000
      0000000000000000000000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC9966000000000000000000000000000000000000000000CC99
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966000000000000000000000000000000
      00009999990099330000CC66330099330000CC66330099330000993300009933
      0000993300009933000099330000663300000000000000000000000000000000
      0000000000000000CC000000FF000000990000000000000000000000CC000000
      9900000000000000000000000000000000000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500FFFFFF00CC996600CC99
      6600CC996600CC9966000000000000000000000000000000000000000000CC99
      6600FFFFFF00FFFFFF00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00FFFFFF00FFFFFF00CC9966000000000000000000000000000000
      0000000000009933000099330000CC66330099330000CC663300993300009933
      0000993300009933000099330000993300000000000000000000000000000000
      CC000000FF000000FF0000009900000000000000000000000000000000000000
      CC00000099000000000000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC996600E5E5
      E500CC996600000000000000000000000000000000000000000000000000CC99
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966000000000000000000000000000000
      000000000000993300009933000099330000CC66330099330000CC6633009933
      00009933000099330000993300009999990000000000000000000000CC003399
      FF000000FF000000990000000000000000000000000000000000000000000000
      00000000CC000000990000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC996600CC99
      660000000000000000000000000000000000000000000000000000000000CC99
      6600FFFFFF00FFFFFF00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00FFFFFF00FFFFFF00CC9966000000000000000000000000000000
      00000000000000000000993300009933000099330000CC66330099330000CC66
      3300993300009933000099999900999999000000000000000000666699000000
      CC00666699000000000000000000000000000000000000000000000000000000
      000000000000000000000000CC00000000000000000000000000CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC9966000000
      000000000000000000000000000000000000000000000000000000000000CC99
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966000000000000000000000000000000
      0000000000000000000000000000993300009933000099330000CC6633009933
      000099330000CCCCCC00CCCCCC00999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC996600CC996600CC9966000000000000000000000000000000
      0000000000000000000000000000000000009933000099330000993300009933
      0000E5E5E500E5E5E500CCCCCC00CCCCCC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000800000000100010000000000000400000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFC0003FFF9FF0000FC00
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
    StoreInDFM = True
    RebuildPrinter = False
    OnGetValue = frReportGetValue
    Left = 96
    Top = 155
    ReportForm = {
      19000000D2220000190000000001000100FFFFFFFFFF01000000EA0A00006F08
      00000000000000000000000000000000000001FFFF00000000FFFF0000000000
      000000000500506167653100030400466F726D000F0000FFDC00000078000000
      7C0100002C010000040000000200C90000000500D2B3CDB73100020100000000
      10000000F0030000EC0000003000020001000000000000000000FFFFFF1F0000
      0000000000000000000000FFFF00000000000200000001000000000000000100
      0000C8000000140000000100000000000002003D0100000900D6F7CFEECAFDBE
      DD310002010000000000010000F0030000180000003000050001000000000000
      000000FFFFFF1F000000000B00667244424461746153657400000000000000FF
      FF000000000002000000010000000000000001000000C8000000140000000100
      00000000000200BA0100000700B7D6D7E9CDB73100020100000000E8010000F0
      030000000000003200100001000000000000000000FFFFFF1F0000000016005B
      4D44617461322E2246576F726B5061727473225D2000000000000000FFFF0000
      00000002000000010000000000000001000000C8000000140000000100000000
      000002005F02000008006474466F6F746572000201000000004B010000F00300
      00180000003000110001000000000000000000FFFFFF1F000000000000000000
      0005000500626567696E0D11007B20666F7220693A3D3120746F205B6E5D0D15
      002020646F2053686F7742616E64286368696C64293B0D01007D0D0300656E64
      00FFFF000000000002000000010000000000000001000000C800000014000000
      010000000000000200C402000005006368696C640002010000000020010000F0
      0300001800000030000A0001000000000000000000FFFFFF1F00000000000000
      000000000000FFFF000000000002000000010000000000000001000000C80000
      0014000000010000000000000200290300000500D2B3BDC53100020100000000
      98010000F0030000260000003000030001000000000000000000FFFFFF1F0000
      0000000000000000000000FFFF00000000000200000001000000000000000100
      0000C800000014000000010000000000000000C803000005004D656D6F310002
      00460000002900000010030000240000000300000001000000000000000000FF
      FFFF1F2E02000000000001002200B8A3BDA8C1FABEBBBBB7B1A3B9C9B7DDD3D0
      CFDEB9ABCBBEC9FAB2FAD7F7D2B5B1ED00000000FFFF00000000000200000001
      000000000400C1A5CAE900180000000200000000000A00000001000200000000
      00FFFFFF00000000020000000000000000006204000005004D656D6F32000200
      4702000064000000BD000000140000000300000001000000000000000000FFFF
      FF1F2E020000000000010016005B4D44617461322E2246576F726B5061727473
      225D2000000000FFFF00000000000200000001000000000B00B7C2CBCE5F4742
      32333132000B000000000000000000080000000100020000000000FFFFFF0000
      000002000000000000000000ED04000005004D656D6F3300020046000000CC00
      0000210000003000000003000F0001000000000000000000FFFFFF1F2E020000
      00000002000200D0F20D0200BAC500000000FFFF000000000002000000010000
      00000B00B7C2CBCE5F474232333132000B0000000200000000000A0000000100
      020000000000FFFFFF00000000020000000000000000007905000005004D656D
      6F3400020067000000CC000000700000003000000003000F0001000000000000
      000000FFFFFF1F2E02000000000001000800CDBC20202020BAC500000000FFFF
      00000000000200000001000000000B00B7C2CBCE5F474232333132000B000000
      0200000000000A0000000100020000000000FFFFFF0000000002000000000000
      0000000506000005004D656D6F35000200D7000000CC00000064000000300000
      0003000F0001000000000000000000FFFFFF1F2E02000000000001000800C1E3
      BCFEC3FBB3C600000000FFFF00000000000200000001000000000B00B7C2CBCE
      5F474232333132000B0000000200000000000A0000000100020000000000FFFF
      FF00000000020000000000000000009006000005004D656D6F36000200C70100
      00CC000000230000003000000003000F0001000000000000000000FFFFFF1F2E
      02000000000002000200CAFD0D0200C1BF00000000FFFF000000000002000000
      01000000000B00B7C2CBCE5F474232333132000B0000000200000000000A0000
      000100020000000000FFFFFF0000000002000000000000000000210700000500
      4D656D6F37000200EA010000CC0000004C0000003000000003000F0001000000
      000000000000FFFFFF1F2E02000000000002000600B5A52020D6D80D0400286B
      672900000000FFFF00000000000200000001000000000B00B7C2CBCE5F474232
      333132000B0000000200000000000A0000000100020000000000FFFFFF000000
      0002000000000000000000A707000005004D656D6F3900020036020000E40000
      00280000001800000003000F0001000000000000000000FFFFFF1F2E02000000
      000001000200B3A400000000FFFF00000000000200000001000000000B00B7C2
      CBCE5F474232333132000B0000000200000000000A0000000100020000000000
      FFFFFF00000000020000000000000000002E08000006004D656D6F3130000200
      5E020000E4000000280000001800000003000F0001000000000000000000FFFF
      FF1F2E02000000000001000200BFED00000000FFFF0000000000020000000100
      0000000B00B7C2CBCE5F474232333132000B0000000200000000000A00000001
      00020000000000FFFFFF0000000002000000000000000000B708000006004D65
      6D6F313100020086020000E4000000280000001800000003000F000100000000
      0000000000FFFFFF1F2E02000000000001000400C6E4CBFC00000000FFFF0000
      0000000200000001000000000B00B7C2CBCE5F474232333132000B0000000200
      000000000A0000000100020000000000FFFFFF00000000020000000000000000
      004409000006004D656D6F3132000200AE020000CC0000005500000030000000
      03000F0001000000000000000000FFFFFF1F2E02000000000001000800C9FAB2
      FAB9A4D2D500000000FFFF00000000000200000001000000000B00B7C2CBCE5F
      474232333132000B0000000200000000000A0000000100020000000000FFFFFF
      0000000002000000000000000000D509000006004D656D6F3134000200360200
      00CC000000780000001800000003000F0001000000000000000000FFFFFF1F2E
      02000000000001000C00C9FAB2FAB3DFB4E7286D6D2900000000FFFF00000000
      000200000001000000000B00B7C2CBCE5F474232333132000B00000002000000
      00000A0000000100020000000000FFFFFF000000000200000000000000000070
      0A000006004D656D6F3135000200460000000001000021000000180000000300
      0F0001000000000000000000FFFFFF1F2E02000000000001001200205B4D4461
      7461322E2246436F6465225D2000000000FFFF00000000000200000001000000
      000F0054696D6573204E657720526F6D616E00090000000000000000000A0000
      000100020000000000FFFFFF0000000002000000000000000000080B00000600
      4D656D6F31360002006700000000010000700000001800000003000F00010000
      00000000000000FFFFFF1F2E02000000000001000F00205B4D44617461322E22
      7468225D2000000000FFFF00000000000200000001000000000F0054696D6573
      204E657720526F6D616E00090000000000000000000800000001000200000000
      00FFFFFF00000000020000000000000000009C0B000006004D656D6F31370002
      00D700000000010000640000001800000003000F0001000000000000000000FF
      FFFF1F2E02000000000001000F00205B4D44617461322E226D63225D20000000
      00FFFF00000000000200000001000000000B00B7C2CBCE5F4742323331320009
      000000000000000000080000008600020000000000FFFFFF0000000002000000
      000000000000390C000006004D656D6F3138000200C701000000010000230000
      001800000043000F0001000000000000000000FFFFFF1F2E0200000000000100
      14005B4D44617461322E224653756D517279225D202000000000FFFF00000000
      000200000001000000000F0054696D6573204E657720526F6D616E0009000000
      000000000000090000000100020000000000FFFFFF0000000002000000000000
      000000D60C000006004D656D6F3139000200EA010000000100004C0000001800
      000043000F0001000000000000000000FFFFFF1F2E040001000000010014005B
      4D44617461322E2246537574746C65225D202000000000FFFF00000000000200
      000001000000000F0054696D6573204E657720526F6D616E0009000000000000
      000000090000000100020000000000FFFFFF0000000002000000000000000000
      5B0D000006004D656D6F3235000200AE02000000010000550000001800000003
      000F0001000000000000000000FFFFFF1F2E0200000000000100000000000000
      FFFF00000000000200000001000000000B00B7C2CBCE5F474232333132000900
      0000000000000000080000000100020000000000FFFFFF000000000200000000
      0000000000EA0D000006004D656D6F3236000200C90100006400000078000000
      140000000300000001000000000000000000FFFFFF1F2E02000000000001000A
      00B2BFBCFEC3FBB3C6A3BA00000000FFFF00000000000200000001000000000B
      00B7C2CBCE5F474232333132000B000000020000000000080000000100020000
      000000FFFFFF0000000002000000000000000000770E000006004D656D6F3237
      000200460000004B010000210000001800000003000F00010000000000000000
      00FFFFFF1F2E02000000000001000400A1EFA1EF00000000FFFF000000000002
      00000001000000000F0054696D6573204E657720526F6D616E00090000000200
      000000000A0000000100020000000000FFFFFF00000000020000000000000000
      00FB0E000006004D656D6F3238000200670000004B0100007000000018000000
      03000F0001000000000000000000FFFFFF1F2E02000000000001000600D7DCBA
      CFBCC600000000FFFF00000000000200000001000000000400C1A5CAE9000B00
      00000200000000000A0000000100020000000000FFFFFF000000000200000000
      00000000007E0F000006004D656D6F3239000200D70000004B01000064000000
      1800000003000F0001000000000000000000FFFFFF1F2E020000000000000000
      000000FFFF00000000000200000001000000000B00B7C2CBCE5F474232333132
      000B0000000200000000000A0000000100020000000000FFFFFF000000000200
      00000000000000000510000006004D656D6F3330000200C70100004B01000023
      0000001800000003000F0001000000000000000000FFFFFF1F2E020000000000
      000000000000FFFF00000000000200000001000000000F0054696D6573204E65
      7720526F6D616E000B0000000200000000000A0000000100020000000000FFFF
      FF00000000020000000000000000008C10000006004D656D6F3331000200EA01
      00004B0100004C0000001800000003000F0001000000000000000000FFFFFF1F
      2E020000000000000000000000FFFF00000000000200000001000000000F0054
      696D6573204E657720526F6D616E000B0000000200000000000A000000010002
      0000000000FFFFFF00000000020000000000000000001311000006004D656D6F
      3333000200360200004B010000280000001800000003000F0001000000000000
      000000FFFFFF1F2E020000000000000000000000FFFF00000000000200000001
      000000000F0054696D6573204E657720526F6D616E000B000000020000000000
      0A0000000100020000000000FFFFFF00000000020000000000000000009A1100
      0006004D656D6F33340002005E0200004B010000280000001800000003000F00
      01000000000000000000FFFFFF1F2E020000000000000000000000FFFF000000
      00000200000001000000000F0054696D6573204E657720526F6D616E000B0000
      000200000000000A0000000100020000000000FFFFFF00000000020000000000
      000000001D12000006004D656D6F3335000200860200004B0100002800000018
      00000003000F0001000000000000000000FFFFFF1F2E02000000000000000000
      0000FFFF00000000000200000001000000000B00B7C2CBCE5F47423233313200
      0B0000000200000000000A0000000100020000000000FFFFFF00000000020000
      00000000000000A012000006004D656D6F3337000200AE0200004B0100005500
      00001800000003000F0001000000000000000000FFFFFF1F2E02000000000000
      0000000000FFFF00000000000200000001000000000B00B7C2CBCE5F47423233
      3132000B0000000200000000000A0000000100020000000000FFFFFF00000000
      020000000000000000002713000006004D656D6F333800020046000000200100
      00210000001800000003000F0001000000000000000000FFFFFF1F2E02000000
      0000000000000000FFFF00000000000200000001000000000F0054696D657320
      4E657720526F6D616E00090000000200000000000A0000000100020000000000
      FFFFFF0000000002000000000000000000AE13000006004D656D6F3339000200
      6700000020010000700000001800000003000F0001000000000000000000FFFF
      FF1F2E020000000000000000000000FFFF00000000000200000001000000000F
      0054696D6573204E657720526F6D616E00090000000200000000000A00000001
      00020000000000FFFFFF00000000020000000000000000003114000006004D65
      6D6F3430000200D700000020010000640000001800000003000F000100000000
      0000000000FFFFFF1F2E020000000000000000000000FFFF0000000000020000
      0001000000000B00B7C2CBCE5F474232333132000B0000000200000000000A00
      00000100020000000000FFFFFF0000000002000000000000000000B814000006
      004D656D6F3431000200C701000020010000230000001800000003000F000100
      0000000000000000FFFFFF1F2E020000000000000000000000FFFF0000000000
      0200000001000000000F0054696D6573204E657720526F6D616E000B00000002
      00000000000A0000000100020000000000FFFFFF000000000200000000000000
      00003F15000006004D656D6F3432000200EA010000200100004C000000180000
      0003000F0001000000000000000000FFFFFF1F2E020000000000000000000000
      FFFF00000000000200000001000000000F0054696D6573204E657720526F6D61
      6E000B0000000200000000000A0000000100020000000000FFFFFF0000000002
      000000000000000000C615000006004D656D6F34340002003602000020010000
      280000001800000003000F0001000000000000000000FFFFFF1F2E0200000000
      00000000000000FFFF00000000000200000001000000000F0054696D6573204E
      657720526F6D616E000B0000000200000000000A0000000100020000000000FF
      FFFF00000000020000000000000000004D16000006004D656D6F34350002005E
      02000020010000280000001800000003000F0001000000000000000000FFFFFF
      1F2E020000000000000000000000FFFF00000000000200000001000000000F00
      54696D6573204E657720526F6D616E000B0000000200000000000A0000000100
      020000000000FFFFFF0000000002000000000000000000D016000006004D656D
      6F34360002008602000020010000280000001800000003000F00010000000000
      00000000FFFFFF1F2E020000000000000000000000FFFF000000000002000000
      01000000000B00B7C2CBCE5F474232333132000B0000000200000000000A0000
      000100020000000000FFFFFF0000000002000000000000000000531700000600
      4D656D6F3438000200AE02000020010000550000001800000003000F00010000
      00000000000000FFFFFF1F2E020000000000000000000000FFFF000000000002
      00000001000000000B00B7C2CBCE5F474232333132000B000000020000000000
      0A0000000100020000000000FFFFFF0000000002000000000000000000EB1700
      0006004D656D6F3439000200780200009C010000600000001100000003000000
      01000000000000000000FFFFFF1F2E02000000000001000F00B5DA20205B5041
      4745235D2020D2B300000000FFFF00000000000200000001000000000F005469
      6D6573204E657720526F6D616E00090000000200000000000A00000001000200
      00000000FFFFFF00000000020000000000000000008A18000006004D656D6F35
      300002004400000099010000C400000011000000030000000100000000000000
      0000FFFFFF1F2E02000000000001001600C8EDBCFED6C6D7F7A3BAA1BED0C5CF
      A2D6D0D0C4A1BF00000000FFFF00000000000200000001000000000F0054696D
      6573204E657720526F6D616E0009000000020000000000080000000100020000
      000000FFFFFF00000000020000000000000000001919000006004D656D6F3437
      0002004800000064000000780000001400000003000000010000000000000000
      00FFFFFF1F2E02000000000001000A00BACFCDACB5B5B0B8A3BA00000000FFFF
      00000000000200000001000000000B00B7C2CBCE5F474232333132000B000000
      020000000000080000000100020000000000FFFFFF0000000002000000000000
      000000A819000006004D656D6F3532000200480000007D000000780000001400
      00000300000001000000000000000000FFFFFF1F2E02000000000001000A00BC
      D3B9A4B0E0D7E9A3BA00000000FFFF00000000000200000001000000000B00B7
      C2CBCE5F474232333132000B0000000200000000000800000001000200000000
      00FFFFFF0000000002000000000000000000371A000006004D656D6F35330002
      00480000009600000078000000140000000300000001000000000000000000FF
      FFFF1F2E02000000000001000A00D3C3BBA7C3FBB3C6A3BA00000000FFFF0000
      0000000200000001000000000B00B7C2CBCE5F474232333132000B0000000200
      00000000080000000100020000000000FFFFFF00000000020000000000000000
      00CA1A000006004D656D6F353400020048000000B00000007800000014000000
      0300000001000000000000000000FFFFFF1F2E02000000000001000E00B2FAC6
      B7D0CDBAC5B9E6B8F1A3BA00000000FFFF00000000000200000001000000000B
      00B7C2CBCE5F474232333132000B000000020000000000080000000100020000
      000000FFFFFF0000000002000000000000000000591B000006004D656D6F3535
      000200C80100007D000000780000001400000003000000010000000000000000
      00FFFFFF1F2E02000000000001000A00B2BFBCFED6D8C1BFA3BA00000000FFFF
      00000000000200000001000000000B00B7C2CBCE5F474232333132000B000000
      020000000000080000000100020000000000FFFFFF0000000002000000000000
      000000F01B000006004D656D6F3536000200C801000096000000A40000001400
      00000300000001000000000000000000FFFFFF1F2E02000000000001001200B2
      BFBCFEB0E5B2C4CFC2C1CFD6D8C1BFA3BA00000000FFFF000000000002000000
      01000000000B00B7C2CBCE5F474232333132000B000000020000000000080000
      000100020000000000FFFFFF0000000002000000000000000000811C00000600
      4D656D6F31330002003B010000CC0000008C0000003000000003000F00010000
      00000000000000FFFFFF1F2E02000000000001000C00B2C4C1CFC3FBB3C6B9E6
      B8F100000000FFFF00000000000200000001000000000B00B7C2CBCE5F474232
      333132000B0000000200000000000A0000000100020000000000FFFFFF000000
      0002000000000000000000041D000006004D656D6F33360002003B0100002001
      00008C0000001800000003000F0001000000000000000000FFFFFF1F2E020000
      000000000000000000FFFF00000000000200000001000000000B00B7C2CBCE5F
      474232333132000B0000000200000000000A0000000100020000000000FFFFFF
      0000000002000000000000000000871D000006004D656D6F35310002003B0100
      004B0100008C0000001800000003000F0001000000000000000000FFFFFF1F2E
      020000000000000000000000FFFF00000000000200000001000000000B00B7C2
      CBCE5F474232333132000B0000000200000000000A0000000100020000000000
      FFFFFF0000000002000000000000000000111E000005004D656D6F3800020003
      030000CC000000550000003000000003000F0001000000000000000000FFFFFF
      1F2E02000000000001000600B1B82020D7A200000000FFFF0000000000020000
      0001000000000B00B7C2CBCE5F474232333132000B0000000200000000000A00
      00000100020000000000FFFFFF0000000002000000000000000000941E000006
      004D656D6F32300002000303000020010000550000001800000003000F000100
      0000000000000000FFFFFF1F2E020000000000000000000000FFFF0000000000
      0200000001000000000B00B7C2CBCE5F474232333132000B0000000200000000
      000A0000000100020000000000FFFFFF0000000002000000000000000000171F
      000006004D656D6F3332000200030300004B010000550000001800000003000F
      0001000000000000000000FFFFFF1F2E020000000000000000000000FFFF0000
      0000000200000001000000000B00B7C2CBCE5F474232333132000B0000000200
      000000000A0000000100020000000000FFFFFF00000000020000000000000000
      00AF1F000006004D656D6F32310002003B010000000100008C00000018000000
      03000F0001000000000000000000FFFFFF1F2E02000000000001001300205B4D
      44617461322E22464D6F64656C225D2000000000FFFF00000000000200000001
      000000000B00B7C2CBCE5F474232333132000900000000000000000008000000
      8600020000000000FFFFFF00000000020000000000000000003620000006004D
      656D6F32320002003602000000010000280000001800000003000F0001000000
      000000000000FFFFFF1F2E020000000000000000000000FFFF00000000000200
      000001000000000F0054696D6573204E657720526F6D616E000B000000020000
      0000000A0000000100020000000000FFFFFF0000000002000000000000000000
      BD20000006004D656D6F32330002005E02000000010000280000001800000003
      000F0001000000000000000000FFFFFF1F2E020000000000000000000000FFFF
      00000000000200000001000000000F0054696D6573204E657720526F6D616E00
      0B0000000200000000000A0000000100020000000000FFFFFF00000000020000
      000000000000004021000006004D656D6F323400020086020000000100002800
      00001800000003000F0001000000000000000000FFFFFF1F2E02000000000000
      0000000000FFFF00000000000200000001000000000B00B7C2CBCE5F47423233
      3132000B0000000200000000000A0000000100020000000000FFFFFF00000000
      02000000000000000000C321000006004D656D6F343300020003030000000100
      00550000001800000003000F0001000000000000000000FFFFFF1F2E02000000
      0000000000000000FFFF00000000000200000001000000000B00B7C2CBCE5F47
      4232333132000B0000000200000000000A0000000100020000000000FFFFFF00
      000000020000000000000000005E22000006004D656D6F3537000200C8000000
      67000000BD000000140000000300000001000000000000000000FFFFFF1F2E02
      0000000000010016005B4D44617461322E2246576F726B5061727473225D2000
      000000FFFF00000000000200000001000000000B00B7C2CBCE5F474232333132
      000B000000000000000000080000000100020000000000FFFFFF000000000200
      000000000000FEFEFF04000000050020B1E4C1BF0000000006007469746C6531
      0000000001006E0000000006007469746C65320000000000000000010000000B
      00667244424461746153657400000000FDFF0100000000FC0000000000000000
      00000000000000005800C0780655AC09E3402BFFBD8D0D26E440}
  end
  object frDBDataSet: TfrDBDataSet
    DataSource = DS_Mdata2
    Left = 43
    Top = 155
  end
  object MData1: TdxMemData
    Indexes = <>
    SortOptions = []
    AfterEdit = MData1AfterEdit
    Left = 75
    Top = 64
    object MData1FCode: TStringField
      FieldName = 'FCode'
    end
    object MData1th1: TStringField
      FieldName = 'th'
    end
    object MData1mc1: TStringField
      FieldName = 'mc'
    end
    object MData1gg1: TStringField
      FieldName = 'gg'
    end
    object MData1SelRemark_1: TStringField
      FieldName = 'SelRemark'
    end
    object MData1ssth1: TStringField
      FieldName = 'ssth'
    end
    object MData1FK3Number_1: TStringField
      FieldName = 'FK3Number'
    end
    object MData1FName1: TStringField
      FieldName = 'FName'
    end
    object MData1FModel1: TStringField
      FieldName = 'FModel'
    end
    object MData1unitName1: TStringField
      FieldName = 'unitName'
    end
    object MData1js1: TStringField
      FieldName = 'js'
    end
    object MData1FSumQry1: TFloatField
      FieldName = 'FSumQry'
    end
    object MData1FQry1: TFloatField
      FieldName = 'FQry'
    end
    object MData1FSuttle1: TFloatField
      FieldName = 'FSuttle'
    end
    object MData1FNumber1: TStringField
      FieldName = 'FNumber'
    end
    object MData1FParentNumber1: TStringField
      FieldName = 'FParentNumber'
    end
    object MData1FFullNumber1: TStringField
      FieldName = 'FFullNumber'
    end
    object MData1Num: TStringField
      FieldName = 'Num'
    end
    object MData1abc: TStringField
      FieldName = 'abc'
    end
    object MData1FFStockInListRemark: TStringField
      FieldName = 'FFStockInListRemark'
    end
    object MData1FStockInListID: TIntegerField
      FieldName = 'FStockInListID'
    end
    object MData1FInSumSuttle: TFloatField
      FieldName = 'FInSumSuttle'
    end
    object MData1FInQry: TFloatField
      FieldName = 'FInQry'
    end
    object MData1FInSumQry: TFloatField
      FieldName = 'FInSumQry'
    end
  end
  object DS_Mdata1: TDataSource
    DataSet = MData1
    Left = 27
    Top = 72
  end
  object DS_Mdata2: TDataSource
    DataSet = MData2
    Left = 187
    Top = 64
  end
  object MData2: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 139
    Top = 72
    object StringField1: TStringField
      FieldName = 'FCode'
    end
    object StringField15: TStringField
      FieldName = 'Num'
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
  object MData: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 35
    Top = 232
    object StringField18: TStringField
      FieldName = 'FCode'
    end
    object StringField19: TStringField
      FieldName = 'th'
    end
    object StringField20: TStringField
      FieldName = 'mc'
    end
    object StringField21: TStringField
      FieldName = 'gg'
    end
    object StringField22: TStringField
      FieldName = 'SelRemark'
    end
    object StringField23: TStringField
      FieldName = 'ssth'
    end
    object StringField24: TStringField
      FieldName = 'FK3Number'
    end
    object StringField25: TStringField
      FieldName = 'FName'
    end
    object StringField26: TStringField
      FieldName = 'FModel'
    end
    object StringField27: TStringField
      FieldName = 'unitName'
    end
    object StringField28: TStringField
      FieldName = 'js'
    end
    object FloatField7: TFloatField
      FieldName = 'FSumQry'
    end
    object FloatField8: TFloatField
      FieldName = 'FQry'
    end
    object FloatField9: TFloatField
      FieldName = 'FSuttle'
    end
    object StringField29: TStringField
      FieldName = 'FNumber'
    end
    object StringField30: TStringField
      FieldName = 'FParentNumber'
    end
    object StringField31: TStringField
      FieldName = 'FFullNumber'
    end
    object StringField32: TStringField
      FieldName = 'Num'
    end
    object StringField33: TStringField
      FieldName = 'abc'
    end
    object StringField34: TStringField
      FieldName = 'FFStockInListRemark'
    end
    object IntegerField2: TIntegerField
      FieldName = 'FStockInListID'
    end
    object FloatField10: TFloatField
      FieldName = 'FInSumSuttle'
    end
    object FloatField11: TFloatField
      FieldName = 'FInQry'
    end
    object FloatField12: TFloatField
      FieldName = 'FInSumQry'
    end
    object MDataFItemListID: TIntegerField
      FieldName = 'FItemListID'
    end
  end
  object DS_Mdata: TDataSource
    DataSet = MData
    Left = 115
    Top = 232
  end
  object MData7: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 124
    Top = 313
  end
  object DS_Mdata7: TDataSource
    DataSet = MData7
    Left = 35
    Top = 320
  end
end
