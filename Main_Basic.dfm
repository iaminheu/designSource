inherited Frm_Basic: TFrm_Basic
  Left = 272
  Top = 110
  VertScrollBar.Color = clWindow
  VertScrollBar.ParentColor = False
  Caption = 'Frm_Basic'
  ClientHeight = 706
  ClientWidth = 1314
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image: TImage
    Width = 1314
  end
  inherited L_title: TLabel
    Width = 1151
  end
  inherited P_back: TPanel
    Width = 1314
    Height = 690
    inherited P_main: TPanel
      Width = 1308
      Height = 684
      inherited Panel_down: TPanel
        Top = 602
        Width = 1306
        Height = 80
        inherited Bevel_bass: TBevel
          Width = 1306
        end
        object E_th1: TcxButtonEdit
          Left = 8
          Top = 6
          Width = 57
          Height = 21
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
        object E_th2: TcxButtonEdit
          Left = 72
          Top = 6
          Width = 89
          Height = 21
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
        object E_scbjlb: TcxButtonEdit
          Left = 168
          Top = 6
          Width = 193
          Height = 21
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
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1306
        Height = 38
        Align = alTop
        ParentColor = True
        TabOrder = 1
        object ToolBar1: TToolBar
          Left = 1
          Top = 1
          Width = 1304
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
          object TB_Edit: TToolButton
            Left = 0
            Top = 0
            AutoSize = True
            Caption = #20462#25913'[&B]'
            ImageIndex = 11
          end
          object TB_bjlb: TToolButton
            Left = 53
            Top = 0
            AutoSize = True
            Caption = #37096#20214#21010#20998
            ImageIndex = 29
          end
          object TB_Count: TToolButton
            Left = 112
            Top = 0
            Cursor = crHandPoint
            AutoSize = True
            Caption = #37096#20214#27719#24635
            ImageIndex = 41
          end
          object TB_Status: TToolButton
            Left = 171
            Top = 0
            AutoSize = True
            Caption = #23457#26680
            ImageIndex = 27
          end
          object ToolButton5: TToolButton
            Left = 206
            Top = 0
            Width = 8
            Caption = 'ToolButton5'
            ImageIndex = 4
            Style = tbsSeparator
          end
          object TB_update: TToolButton
            Left = 214
            Top = 0
            AutoSize = True
            Caption = #26356#26032
            ImageIndex = 26
            Visible = False
          end
          object TB_refresh: TToolButton
            Left = 249
            Top = 0
            Cursor = crHandPoint
            AutoSize = True
            Caption = #21047#26032'[&E]'
            ImageIndex = 16
            OnClick = TB_refreshClick
          end
          object ToolButton1: TToolButton
            Left = 302
            Top = 0
            Width = 8
            Caption = 'ToolButton1'
            ImageIndex = 9
            Style = tbsSeparator
          end
          object TB_RCount: TToolButton
            Left = 310
            Top = 0
            AutoSize = True
            Caption = #37325#37327#35745#31639
            ImageIndex = 37
          end
          object TB_Down: TToolButton
            Left = 369
            Top = 0
            AutoSize = True
            Caption = #35774#32622
            ImageIndex = 26
          end
          object ToolButton4: TToolButton
            Left = 404
            Top = 0
            AutoSize = True
            Caption = #21047#26032#26356#26032
            ImageIndex = 20
            OnClick = ToolButton4Click
          end
          object TB_Print: TToolButton
            Left = 463
            Top = 0
            Cursor = crHandPoint
            AutoSize = True
            Caption = #25171#21360'[&P]'
            ImageIndex = 18
          end
          object TB_EXIT: TToolButton
            Left = 516
            Top = 0
            Cursor = crHandPoint
            AutoSize = True
            Caption = #36864#20986'[&X]'
            ImageIndex = 19
            OnClick = TB_EXITClick
          end
        end
      end
      object PC_1: TRzPageControl
        Left = 197
        Top = 38
        Width = 1109
        Height = 564
        ActivePage = TabSheet1
        Align = alClient
        TabIndex = 1
        TabOrder = 2
        TabOrientation = toBottom
        OnChange = PC_1Change
        FixedDimension = 19
        object TS_DesignBOM: TRzTabSheet
          Color = 14935011
          Caption = #35774#35745'BOM'
          object cxGrid: TcxGrid
            Left = 0
            Top = 0
            Width = 1107
            Height = 543
            Align = alClient
            TabOrder = 0
            object cxGV: TcxGridDBTableView
              DataController.DataSource = DS_Mdata
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = #23567#35745#65306'0.0000'
                  Kind = skSum
                  FieldName = 'jz'
                  Column = jz
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
              object FCode: TcxGridDBColumn
                Caption = #31867#21035
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
              object djjz: TcxGridDBColumn
                Caption = #21333#20214#20928#37325
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
                Width = 71
                DataBinding.FieldName = 'djjz'
              end
              object djde: TcxGridDBColumn
                Caption = #21333#20214#23450#39069
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DecimalPlaces = 4
                Properties.DisplayFormat = '0.0000'
                Properties.ValidateOnEnter = True
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taRightJustify
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Width = 72
                DataBinding.FieldName = 'djde'
              end
              object jzdec: TcxGridDBColumn
                Caption = #20928#37325#23450#39069#24046
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DecimalPlaces = 4
                Properties.DisplayFormat = '0.0000'
                Properties.ValidateOnEnter = True
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Width = 67
                DataBinding.FieldName = 'jzdec'
              end
              object sl: TcxGridDBColumn
                Caption = #25968#37327
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Width = 53
                DataBinding.FieldName = 'sl'
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
              object bjlb: TcxGridDBColumn
                Caption = #37096#20214#31867#21035
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Width = 91
                DataBinding.FieldName = 'bjlb'
              end
              object FFullNumber: TcxGridDBColumn
                Caption = #38271#20195#30721
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Width = 146
                DataBinding.FieldName = 'FFullNumber'
              end
              object FNumber: TcxGridDBColumn
                Caption = #26448#26009#32534#21495
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Width = 86
                DataBinding.FieldName = 'FNumber'
              end
              object FName: TcxGridDBColumn
                Caption = #26448#26009#21517#31216
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Width = 84
                DataBinding.FieldName = 'FName'
              end
              object FModel: TcxGridDBColumn
                Caption = #26448#26009#35268#26684
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Width = 113
                DataBinding.FieldName = 'FModel'
              end
              object UnitName: TcxGridDBColumn
                Caption = #35745#37327#21333#20301
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Width = 75
                DataBinding.FieldName = 'UnitName'
              end
              object jz: TcxGridDBColumn
                Caption = #20928#37325
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
                Width = 97
                DataBinding.FieldName = 'jz'
              end
              object FFullName: TcxGridDBColumn
                Caption = #20840#21517#31216
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Width = 361
                DataBinding.FieldName = 'FFullName'
              end
            end
            object cxGL: TcxGridLevel
              GridView = cxGV
            end
          end
        end
        object TabSheet1: TRzTabSheet
          Color = 14935011
          Caption = #22522#26412#20449#24687
          object FlatPanel_edit: TFlatPanel
            Left = 7
            Top = 6
            Width = 1090
            Height = 515
            ParentColor = True
            TabOrder = 0
            UseDockManager = True
            object Label5: TLabel
              Left = 580
              Top = 190
              Width = 69
              Height = 13
              AutoSize = False
              Caption = #24037#31243#24615#36136
            end
            object Label6: TLabel
              Left = 308
              Top = 190
              Width = 61
              Height = 13
              AutoSize = False
              Caption = #20135#21697#22411#21495
            end
            object Label7: TLabel
              Left = 36
              Top = 222
              Width = 61
              Height = 13
              AutoSize = False
              Caption = #34892'        '#19994
            end
            object Label8: TLabel
              Left = 868
              Top = 190
              Width = 45
              Height = 13
              AutoSize = False
              Caption = #26426#32452
            end
            object Label9: TLabel
              Left = 36
              Top = 190
              Width = 61
              Height = 13
              AutoSize = False
              Caption = #20135#21697#31867#22411
            end
            object Label2: TLabel
              Left = 801
              Top = 80
              Width = 56
              Height = 13
              AutoSize = False
              Caption = #26723#26696#21495
            end
            object Label4: TLabel
              Left = 641
              Top = 160
              Width = 72
              Height = 13
              AutoSize = False
              Caption = #39033#30446#31616#31216
            end
            object Label1: TLabel
              Left = 33
              Top = 128
              Width = 56
              Height = 13
              AutoSize = False
              Caption = #21512'  '#21516'  '#21495
            end
            object Label3: TLabel
              Left = 33
              Top = 160
              Width = 64
              Height = 13
              AutoSize = False
              Caption = #39033#30446#20840#31216
            end
            object E_bbmc: TcxTextEdit
              Left = 101
              Top = 121
              Width = 186
              Height = 23
              AutoSize = False
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Style.BorderColor = 8623776
              Style.BorderStyle = ebsSingle
              Style.Color = 15658734
              TabOrder = 0
              ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WINXP'
            end
            object E_dyv: TcxTextEdit
              Left = 853
              Top = 73
              Width = 92
              Height = 23
              AutoSize = False
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Style.BorderColor = 8623776
              Style.BorderStyle = ebsSingle
              Style.Color = 15658734
              TabOrder = 4
              ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WINXP'
            end
            object E_mxmc: TcxTextEdit
              Left = 101
              Top = 185
              Width = 186
              Height = 23
              AutoSize = False
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Style.BorderColor = 8623776
              Style.BorderStyle = ebsSingle
              Style.Color = 15658734
              TabOrder = 3
              ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WINXP'
            end
            object E_kmmc: TcxButtonEdit
              Left = 717
              Top = 153
              Width = 186
              Height = 23
              AutoSize = False
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
            object E_kmdh: TcxButtonEdit
              Left = 101
              Top = 153
              Width = 516
              Height = 23
              AutoSize = False
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
            object cxButtonEdit1: TcxButtonEdit
              Left = 304
              Top = 118
              Width = 57
              Height = 21
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
              ImeName = #39118#28165#25196#20116#31508#36755#20837#27861' FOR WIN2000'
            end
            object cxButtonEdit2: TcxButtonEdit
              Left = 373
              Top = 185
              Width = 186
              Height = 23
              AutoSize = False
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
            object cxButtonEdit3: TcxButtonEdit
              Left = 661
              Top = 185
              Width = 100
              Height = 23
              AutoSize = False
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
            object cxButtonEdit4: TcxButtonEdit
              Left = 901
              Top = 185
              Width = 148
              Height = 23
              AutoSize = False
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
        end
        object TabSheet2: TRzTabSheet
          Color = 14935011
          Caption = #21512#21516#20215#26684#20998#35299
        end
        object TabSheet3: TRzTabSheet
          Color = 14935011
          Caption = #21512#21516#25910#27454#24773#20917
        end
        object TabSheet4: TRzTabSheet
          Color = 14935011
          Caption = 'TabSheet4'
        end
      end
      object RzSizePanel1: TRzSizePanel
        Left = 0
        Top = 38
        Width = 197
        Height = 564
        Color = 14935011
        HotSpotVisible = True
        SizeBarWidth = 7
        TabOrder = 3
        VisualStyle = vsGradient
        object MyTreeView: TTreeView
          Left = 0
          Top = 0
          Width = 189
          Height = 564
          Align = alClient
          Ctl3D = False
          Indent = 19
          ParentCtl3D = False
          TabOrder = 0
          OnChange = MyTreeViewChange
          OnExpanding = MyTreeViewExpanding
        end
      end
    end
  end
  object MData: TdxMemData
    Active = True
    Indexes = <>
    SortOptions = []
    AfterEdit = MDataAfterEdit
    Left = 27
    Top = 184
  end
  object DS_Mdata: TDataSource
    DataSet = MData
    Left = 43
    Top = 112
  end
  object ADOQuery: TADOQuery
    Connection = mdlData.conn
    Parameters = <>
    Left = 771
    Top = 27
  end
  object DS_ADOQuery: TDataSource
    DataSet = ADOQuery
    Left = 803
    Top = 27
  end
  object ImageList: TImageList
    Left = 91
    Top = 166
    Bitmap = {
      494C01012E003100040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000D0000000010020000000000000D0
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CE9C63009C3100009C3100009C310000CE9C6300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE9C63009C3100000000000000000000000000009C310000CE9C63000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C31000000000000000000000000000000000000000000009C3100000000
      0000000000000000000000000000000000009C9C9C0063636300636363006363
      6300636363006363630063636300636363006363630063636300636363006363
      6300636363006363630063636300636363000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C31000000000000CE9C63009C310000CE9C6300000000009C3100000000
      0000000000000000000000000000000000009C9C9C00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00636363000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C310000000000009C310000000000009C310000000000009C3100000000
      0000000000000000000000000000000000009C9C9C00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00636363000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C310000000000009C310000000000009C310000000000009C3100000000
      0000000000000000000000000000000000009C9C9C00FFFFFF00CEFFFF00CEFF
      FF009C3100009C3100009C3100009C3100009C3100009C310000CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00636363000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C310000000000009C310000000000009C310000000000009C3100000000
      0000000000000000000000000000000000009C9C9C00CEFFFF00FFFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00636363000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C310000000000009C310000000000009C310000000000009C3100000000
      0000000000000000000000000000000000009C9C9C00FFFFFF00FFFFFF00CEFF
      FF009C3100009C3100009C3100009C3100009C3100009C310000CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00636363000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C310000000000009C310000000000009C310000000000009C3100000000
      0000000000000000000000000000000000009C9C9C00FFFFFF00CEFFFF00FFFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00636363000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C310000000000009C310000000000009C310000000000009C3100000000
      0000000000000000000000000000000000009C9C9C00FFFFFF00FFFFFF00CEFF
      FF00FFFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF000000CE0000009C00CEFFFF00636363000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C310000000000009C310000000000009C310000000000009C3100000000
      0000000000000000000000000000000000009C9C9C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF006300FF000000CE00CEFFFF00636363000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C310000000000009C310000000000009C310000000000009C3100000000
      0000000000000000000000000000000000009C9C9C00FFFFFF00FFFFFF00FFFF
      FF00CEFFFF00FFFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00636363000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C3100000000000000000000000000009C3100000000
      0000000000000000000000000000000000009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C3100000000000000000000000000009C3100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C3100000000000000000000000000009C3100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009C3100009C3100009C310000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF9C0000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE6300000000
      0000000000000000000000000000000000000000000031313100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFCE9C00CE9C6300CE9C6300CE9C
      6300CE9C6300CECECE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF9C0000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE63
      0000000000000000000000000000000000003131310063636300636363006363
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFCE9C00F7EFBD00F7EFBD00CECE
      FF00E7E7E700CE9C6300CE9C6300CECECE000000000000000000000000000000
      000000000000000000000000000000000000FF9C0000CE630000E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700CE63
      000000000000000000000000000000000000000000009C9C9C00CECECE009C9C
      9C00636363006363630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000319CCE000063
      9C0000639C0000639C0000639C0000639C0000639C0000639C0000639C000063
      9C0000639C0000639C000000000000000000FFCE9C00FFFFFF00FFFFFF00CECE
      FF00FFFFFF00FFFFFF00E7E7E700CE9C63000000000000000000000000000000
      000000000000000000000000000000000000FF9C0000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE63
      000000000000000000000000000000000000000000009C9C9C00CECECE00CECE
      CE009C9C9C009C9C9C0063636300636363000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000319CCE009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CFFFF0000639C000000000000000000FFCE9C00F7EFBD00F7EFBD00CECE
      FF00F7EFBD00F7EFBD00F7EFBD00CE9C6300CECECE0000000000000000000000
      000000000000000000000000000000000000FF9C0000CE630000E7E7E700E7E7
      E700E7E7E700E7E7E700CECECE00CECECE00CECECE00CECECE00CECECE00CE63
      00000000000000000000000000000000000000000000000000009C9C9C00CECE
      CE00CECECE009C9C9C009C9C9C009C9C9C006363630063636300000000000000
      0000000000000000000000000000000000000000000000000000319CCE009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CFFFF0000639C000000000000000000FFCE9C00FFFFFF00CECECE00CECE
      FF00FFFFFF00FFFFFF00FFFFFF00E7E7E700CE9C6300CECECE00000000000000
      000000000000000000000000000000000000FF9C0000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700CE63
      00000000000000000000000000000000000000000000000000009C9C9C00E7E7
      E700CECECE00CECECE009C9C9C009C9C9C009C9C9C009C310000633100006331
      0000000000000000000000000000000000000000000000000000319CCE009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CFFFF0000639C000000000000000000FFCE9C00F7EFBD00F7EFBD00CECE
      FF00F7EFBD00F7EFBD00F7EFBD00F7EFBD00E7E7E700CE9C6300CE9C6300CE9C
      6300CECECE00000000000000000000000000FF9C0000CE630000E7E7E700E7E7
      E700E7E7E700CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CE63
      0000000000000000000000000000000000000000000000000000000000009C9C
      9C00E7E7E700CECECE00CECECE009C9C9C009C3100009C3100009C3100009C31
      0000633100000000000000000000000000000000000000000000319CCE009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CFFFF0000639C000000000000000000FFCE9C00FFFFFF00FFFFFF00CECE
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E7
      E700CE9C6300CE9C6300CE9C6300CECECE00FF9C0000CE630000FFFFFF00FFFF
      FF00FFFFFF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700CE63
      0000000000000000000000000000000000000000000000000000000000009C9C
      9C00FFFFFF00E7E7E700CECECE009C3100009C3100009C3100009C3100009C31
      00009C3100006331000000000000000000000000000000000000319CCE009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CFFFF0000639C000000000000000000FFCE9C00F7EFBD00F7EFBD00CECE
      FF00F7EFBD00F7EFBD00F7EFBD00F7EFBD00F7EFBD00F7EFBD00F7EFBD00F7EF
      BD00F7EFBD00F7EFBD00E7E7E700CE9C6300FF9C0000CE630000E7E7E700E7E7
      E700CECECE00CECECE00CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE6300000000000000000000000000000000
      00009C9C9C00FFFFFF009C310000CE6331009C3100009C3100009C3100009C31
      00009C3100009C31000063310000000000000000000000000000319CCE009CFF
      FF009CFFFF009CFFFF009CFFFF009CCECE009CFFFF009CFFFF009CFFFF009CFF
      FF009CFFFF0000639C000000000000000000FFCE9C00FFFFFF00FFFFFF00CECE
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C6300FF9C0000CE630000FFFFFF00FFFF
      FF00E7E7E700CE630000FF9C0000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE6300000000000000000000000000000000
      00009C9C9C009C310000CE6331009C310000CE6331009C3100009C3100009C31
      00009C3100009C3100009C310000633100000000000000000000319CCE009CFF
      FF009CFFFF009CFFFF009CFFFF00636363009CCECE009CCECE009CFFFF009CFF
      FF009CFFFF0000639C000000000000000000FFCE9C00F7EFBD00F7EFBD00CECE
      FF00F7EFBD00F7EFBD00F7EFBD00F7EFBD00F7EFBD00F7EFBD00F7EFBD00F7EF
      BD00F7EFBD00F7EFBD00F7EFBD00CE9C6300FF9C0000CE630000E7E7E700CECE
      CE00FF9C0000FF9C0000FF9C0000FF9C0000FF9C0000CE630000CE630000CE63
      0000CE630000CE630000CE630000000000000000000000000000000000000000
      0000000000009C3100009C310000CE6331009C310000CE6331009C3100009C31
      00009C3100009C3100009C3100009C3100000000000000000000319CCE009CFF
      FF009CFFFF009CFFFF009CFFFF009CCECE00FF000000FF0000009CCECE009CFF
      FF009CFFFF0000639C000000000000000000FFCE9C00FFFFFF00CECECE00CECE
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C6300FF9C0000CE630000FFFFFF00FF9C
      0000FF9C6300FF9C6300FF9C0000FF9C0000FF9C0000FF9C0000FF9C0000CE63
      0000CE630000CE63000000000000000000000000000000000000000000000000
      0000000000009C3100009C3100009C310000CE6331009C310000CE6331009C31
      00009C3100009C3100009C3100009C9C9C000000000000000000319CCE00319C
      CE00319CCE00319CCE00319CCE00FF000000FF000000FFFFFF00FF000000319C
      CE00319CCE00319CCE000000000000000000FFCE9C00FFFFFF00FFFFFF00CECE
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C6300FF9C0000CE630000FF9C0000FF9C
      6300FF9C6300FF9C6300FF9C6300FF9C6300FF9C0000FF9C0000FF9C0000FF9C
      0000CE6300000000000000000000000000000000000000000000000000000000
      000000000000000000009C3100009C3100009C310000CE6331009C310000CE63
      31009C3100009C3100009C9C9C009C9C9C000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000000000000000
      000000000000000000000000000000000000FFCE9C00FFFFFF00FFFFFF00CECE
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C6300FF9C0000FF9C0000FF9C6300FF9C
      6300FF9C6300FF9C6300FF9C6300FF9C6300FF9C6300FF9C6300FF9C0000CE63
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009C3100009C3100009C310000CE6331009C31
      00009C310000CECECE00CECECE009C9C9C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFCE9C00FFCE9C00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C0000000000FF9C00009C9C9C00FFFF
      FF009C9C9C00FFFFFF009C9C9C00FFFFFF009C9C9C00FFFFFF009C9C9C00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C3100009C3100009C3100009C31
      0000E7E7E700E7E7E700CECECE00CECECE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C9C9C00CECE
      CE009C9C9C00CECECE009C9C9C00CECECE009C9C9C00CECECE009C9C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE9C6300CE9C
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE9C6300FFFFFF00FFFF
      FF00CE9C6300000000000000000000000000009CCE0000639C0000639C000063
      9C0000639C0000639C0000639C0000639C0000639C0000639C0000639C000063
      9C0000639C0000639C0000639C0000639C000000000063636300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000031313100313131009C9C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE9C6300FFFFFF00FFFF
      FF00CE9C6300000000000000000000000000009CCE009CFFFF00009CCE009CFF
      FF00009CCE009CFFFF00009CCE009CFFFF00009CCE009CFFFF00009CCE009CFF
      FF00009CCE009CFFFF00009CCE009CFFFF0000000000CECECE00636363000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CECECE0063636300313131003131
      3100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE9C6300000000000000000000000000CE9C6300FFFFFF00FFFFFF00CE9C
      630000000000000000000000000000000000009CCE009CFFFF00009CCE009CFF
      FF00009CCE009CFFFF00009CCE009CFFFF00009CCE009CFFFF00009CCE009CFF
      FF00009CCE009CFFFF00009CCE009CFFFF000000000000000000CECECE006363
      63000000000000000000FF9C00009C3100009C3100009C310000000000000000
      0000000000000000000000000000000000000000000063636300636363006363
      6300313131009C9C9C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE9C6300CE9C63000000000000000000CE9C6300FFFFFF00FFFFFF00CE9C
      630000000000000000000000000000000000009CCE009CFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF00009CCE009CFFFF00000000000000000000000000CECE
      CE0063636300FF9C0000CE630000CE630000CE630000CE6300009C3100000000
      00000000000000000000000000000000000000000000CECECE00636363006363
      63006363630031313100009C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE9C6300FFFFFF00CE9C6300CE9C6300FFFFFF00FFFFFF00CE9C63000000
      000000000000000000000000000000000000009CCE009CFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF000000000000000000000000000000
      0000FF9C0000CE630000FF9C0000CE630000CE630000CE6300009C3100000000
      0000000000000000000000000000000000000000000000000000636363006363
      63009CFFFF009CCECE009CCECE00009C9C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE9C6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9C63000000
      000000000000000000000000000000000000009CCE009CFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF00009C
      CE00009CCE00009CCE009CFFFF009CFFFF00000000000000000000000000FF9C
      0000CE630000FF9C0000FF9C0000FF9C0000CE630000CE6300009C3100000000
      0000000000000000000000000000000000000000000000000000CECECE008484
      8400CEFFFF009CFFFF009CCECE009CCECE00009C9C009CCECE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE9C6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9C6300CE9C
      6300CE9C6300CE9C63000000000000000000009CCE009CFFFF009CFFFF00009C
      CE00009CCE009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF00009CCE009CFFFF009CFFFF009CFFFF00000000000000000000000000CE63
      0000FF9C6300FF9C6300FF9C0000FF9C0000CE630000CE6300009C3100000000
      00000000000000000000000000000000000000000000000000000000000063CE
      CE00FFFFFF00CEFFFF009CFFFF009CFFFF009CCECE0063CECE00009C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE9C6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CE9C6300000000000000000000000000009CCE009CFFFF009CFFFF00009C
      CE00009CCE009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF00009CCE009CFFFF009CFFFF009CFFFF00000000000000000000000000CE63
      0000FFFFFF00FFFFFF00FF9C6300CE630000FF9C0000CE630000CE6300009C31
      00000000000000000000000000000000000000000000000000000000000063CE
      CE00FFFFFF00CEFFFF00CEFFFF009CFFFF009CFFFF009CCECE009CCECE00009C
      9C0063CECE000000000000000000000000000000000000000000000000000000
      0000CE9C6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9C
      630000000000000000000000000000000000009CCE009CFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF00009C
      CE00009CCE009CFFFF009CFFFF009CFFFF00000000000000000000000000CE63
      0000FF9C6300FF9C6300CE630000FFFFFF00FF9C6300FF9C0000CE6300009C31
      00009C3100009C3100009C310000000000000000000000000000000000000000
      00009CCECE00FFFFFF00CEFFFF00CEFFFF009CFFFF009CFFFF009CCECE00FFCE
      CE009C3100009C31000000000000000000000000000000000000000000000000
      0000CE9C6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9C63000000
      000000000000000000000000000000000000009CCE009CFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF00009CCE009CFFFF009CFFFF009CFFFF000000000000000000000000000000
      0000CE630000CE630000CE630000CE630000FFFFFF00FF9C63009C310000CE63
      0000CE630000CE630000CE6300009C3100000000000000000000000000000000
      000063CECE00FFFFFF00CEFFFF00CEFFFF00FFCECE00CE630000CE6300009C31
      00009C3100009C3100009C310000000000000000000000000000000000000000
      0000CE9C6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9C6300000000000000
      000000000000000000000000000000000000009CCE009CFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF000000000000000000000000000000
      000000000000000000000000000000000000CE630000CE630000CE630000FF9C
      0000CE630000CE630000CE6300009C3100000000000000000000000000000000
      0000000000009CCECE00FFFFFF00CEFFFF00CE630000CE630000CE630000CE63
      00009C3100009C3100009C3100009C3100000000000000000000000000000000
      0000CE9C6300FFFFFF00FFFFFF00FFFFFF00CE9C630000000000000000000000
      000000000000000000000000000000000000009CCE009CFFFF009CFFFF009CFF
      FF00009CCE009CFFFF009CFFFF009CFFFF00009CCE009CFFFF009CFFFF009CFF
      FF00009CCE009CFFFF009CFFFF009CFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000CE630000FF9C6300FF9C
      0000FF9C0000CE630000CE6300009C3100000000000000000000000000000000
      00000000000063CECE00FFFFFF00FFCECE00CE630000CE630000CE630000CE63
      0000CE6300009C3100009C3100009C3100000000000000000000000000000000
      0000CE9C6300FFFFFF00FFFFFF00CE9C63000000000000000000000000000000
      000000000000000000000000000000000000009CCE009CFFFF00009CCE009CFF
      FF00009CCE009CFFFF00009CCE009CFFFF00009CCE009CFFFF00009CCE009CFF
      FF00009CCE009CFFFF00009CCE009CFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000CE630000FF9C6300FF9C
      6300FF9C0000CE630000CE630000FF9C00000000000000000000000000000000
      00000000000000000000FF9C0000FF9C0000CE630000CE630000CE630000CE63
      0000CE630000CE6300009C3100009C3100000000000000000000000000000000
      0000CE9C6300FFFFFF00CE9C6300000000000000000000000000000000000000
      000000000000000000000000000000000000009CCE00009CCE00009CCE00009C
      CE00009CCE00009CCE00009CCE00009CCE00009CCE00009CCE00009CCE00009C
      CE00009CCE00009CCE00009CCE00009CCE000000000000000000000000000000
      00000000000000000000000000000000000000000000CE630000FFFFFF00FF9C
      6300CE630000CE630000FF9C0000000000000000000000000000000000000000
      00000000000000000000CE630000FF9C0000FF9C0000CE630000CE630000CE63
      0000CE630000CE630000CE6300009C3100000000000000000000000000000000
      0000CE9C6300CE9C630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000FF9C000000000000000000000000000000000000000000000000
      0000000000000000000000000000CE630000FF9C0000FF9C0000CE630000CE63
      0000CE630000CE630000CE630000CE6300000000000000000000000000000000
      000000000000CE9C63009C3100009C3100009C3100009C310000000000000000
      00000000000000000000000000000000000000000000319CCE00319CCE00319C
      CE0063CEFF0063CEFF0063CEFF0063CEFF0063CEFF0063CEFF0063CEFF0063CE
      FF0063CEFF0063CEFF0063CEFF0063CEFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C3100009C310000CE6300009C310000CE6300009C3100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE9C6300FFFFFF00FFCE9C00FFCE9C00CE9C6300CE9C63009C3100000000
      00000000000000000000000000000000000063CEFF0063CEFF00319CCE00319C
      CE00319CCE0063CEFF0063CEFF0063CEFF0063CEFF0063CEFF0063CEFF0063CE
      FF0063CEFF0063CEFF0063CEFF0063CEFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000063
      9C0000639C0000639C0000000000000000000000000000000000000000000000
      0000000000009C310000CE6300009C310000CE6300009C3100009C3100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE9C63009C3100009C3100009C3100009C3100009C3100009C3100000000
      00000000000000000000000000000000000063CEFF0063CEFF0063CEFF00009C
      0000008400000084000063CEFF0031639C0031639C0031639C0031639C00319C
      CE0063CEFF0063CEFF0063CEFF0031639C000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000639C00319C
      CE00319CCE0063CEFF0000639C00000000000000000000000000000000000000
      0000000000009C3100009C310000CE6300009C310000CE6300009C3100000000
      000000000000000000000000000000000000000000000000000000000000CE9C
      6300FFFFFF00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00CE9C63009C31
      00000000000000000000000000000000000063CEFF0063CEFF0063CEFF00009C
      000000FF00000084000063CEFF00319CCE00639CCE00639CCE00319CCE0063CE
      FF0063CEFF0063CEFF0063CEFF0063CEFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000639C00319CCE000063
      9C0000CEFF0063CEFF0000639C00000000000000000000000000000000000000
      0000000000009C9C9C009C3100009C3100009C3100009C3100009C9C9C000000
      0000000000000000000000000000000000000000000000000000CE9C6300FFFF
      FF00CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300FFCE9C00CE9C6300CE9C
      63009C31000000000000000000000000000063CEFF0063CEFF0063CEFF00009C
      000000FF00000084000063CEFF0063CEFF00319CCE00319CCE0063CEFF0063CE
      FF0031639C0031639C0063CEFF0063CEFF000000000000000000000000000000
      00000000000000000000000000000000000000639C00319CCE0000639C0000CE
      FF00319CCE0063CEFF0000639C00000000000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00FFCECE0063636300000000000000
      00000000000000000000000000000000000000000000CE9C6300FFFFFF00FFCE
      9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFCE9C00FFCE9C00CE9C
      63009C31000000000000000000000000000063CEFF0063CEFF0063CEFF00009C
      000000FF000000FF00000084000063CEFF0063CEFF0063CEFF0063CEFF0063CE
      FF0063CEFF0063CEFF0063CEFF0063CEFF000000000000000000000000000000
      0000000000000000000000639C0000639C00319CCE0000639C0000CEFF00319C
      CE0063CEFF0000639C0000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00FFCECE0063636300000000000000
      00000000000000000000000000000000000000000000CE9C6300FFFFFF00FFCE
      9C00CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300FFCE9C00FFCE9C00CE9C
      6300CE9C63009C310000000000000000000063CEFF0063CEFF0063CEFF00009C
      000000FF000031CE310000FF00000084000063CEFF0063CEFF0063CEFF0063CE
      FF0063CEFF0063CEFF0063CEFF0063CEFF00000000000000000000639C000063
      9C0000639C0000639C00319CCE00319CCE0000639C0000CEFF00319CCE0063CE
      FF0000639C000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00FFCECE0063636300000000000000
      00000000000000000000000000000000000000000000CE9C6300FFFFFF00FFCE
      9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFCE9C00FFCE9C00CE9C
      6300CE9C63009C3100000000000000000000FFCE9C0063CE63000084000000FF
      000000FF0000009C000000FF000000FF0000009C0000FFCE9C00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C000000000000639C0000CEFF0000CE
      FF0000CEFF0000CEFF0000639C0000639C0000CEFF00319CCE0063CEFF000063
      9C00000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00FFCECE0063636300000000000000
      00000000000000000000000000000000000000000000CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      63009C3100009C3100000000000000000000FFCE9C00009C000000FF0000009C
      000000FF000000840000009C000000FF0000009C0000FFCE9C00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C0000639C0000CEFF0000CEFF00319C
      CE0000CEFF0000CEFF0000CEFF0000CEFF00319CCE0063CEFF0000639C000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00FFCECE0063636300000000000000
      000000000000000000000000000000000000CE9C6300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9C
      6300CE9C63009C3100000000000000000000FFCE9C00009C000000FF0000009C
      000000FF00000084000063CE6300009C000063CE6300FFCE9C00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C0000639C0000CEFF00319CCE0000CE
      FF00319CCE0000CEFF0000CEFF0000CEFF0063CEFF0000639C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063636300636363006363630063636300000000000000
      000000000000000000000000000063636300CE9C6300FFCE9C00FFCE9C009CCE
      CE00009CCE00FFCE9C00FFCE9C00FFCE9C009CCECE00009CCE00FFCE9C00FFFF
      FF00CE9C6300CE9C63009C31000000000000FFCE9C00009C000000FF0000009C
      000000FF000000840000FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C0000CE
      FF0000CEFF0000CEFF00FFCE9C00FFCE9C0000639C0000CEFF0000CEFF00319C
      CE0000CEFF00319CCE0000CEFF0000CEFF0063CEFF0000639C00000000000000
      0000000000000000000000000000000000000000000063636300636363000000
      000000000000636363009C9C9C009C9C9C009C9C9C009C9C9C00636363000000
      00000000000000000000636363006363630000000000CE9C6300FFCE9C009CCE
      CE0000FFFF00009CCE00CE9C6300FFCE9C009CCECE0000FFFF00009CCE00FFCE
      9C00FFFFFF00CE9C63009C31000000000000FFCE9C0063CE6300009C0000009C
      000000FF000000840000FFCE9C00FFCE9C00FFCE9C00FFCE9C0000CEFF0063FF
      FF0063FFFF0063FFFF0000CEFF00FFCE9C0000639C0000CEFF0000CEFF0000CE
      FF00319CCE0000CEFF00319CCE0000CEFF0063CEFF0000639C00000000000000
      0000000000000000000000000000000000009C9C9C009C9C9C009C9C9C006363
      6300636363009C9C9C00CECECE00CECECE00CECECE009C9C9C00636363006363
      63006363630063636300CECECE00636363000000000000000000CE9C63009CCE
      CE0000FFFF00009CCE00CE9C6300CE9C63009CCECE0000FFFF00009CCE00CE9C
      6300CE9C6300CE9C63000000000000000000FFCE9C00FFCE9C00FFCE9C00009C
      000000FF000000840000FFCE9C00FFCE9C00FFCE9C00FFCE9C0000CEFF0063FF
      FF0063FFFF0063FFFF0000CEFF00FFCE9C0000639C0000CEFF0000639C000063
      9C0000CEFF00319CCE0000CEFF00319CCE0063CEFF0000639C00000000000000
      0000000000000000000000000000000000009C9C9C00FFFFFF00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE009C9C9C009C9C
      9C009C9C9C00CECECE0063636300000000000000000000000000000000009CCE
      CE0000FFFF00009CCE0000000000000000009CCECE0000FFFF00009CCE000000
      000000000000000000000000000000000000FFCE9C00FFCE9C00FFCE9C0063CE
      6300009C000063CE6300FFCE9C00FFCE9C00FFCE9C00FFCE9C0000CEFF0063FF
      FF0063FFFF0063FFFF0000CEFF00FFCE9C0000639C009CFFFF00319CCE000063
      9C0000CEFF0000CEFF00319CCE0000CEFF009CFFFF0000639C00000000000000
      0000000000000000000000000000000000009C9C9C00FFFFFF00CECECE00CECE
      CE00FFFFFF00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE009C9C9C0000000000000000000000000000000000000000009CCE
      CE0000FFFF00009CCE0000000000000000009CCECE0000FFFF00009CCE000000
      000000000000000000000000000000000000FFCE9C00FFCE9C00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C0000CE
      FF0000CEFF0000CEFF00FFCE9C00FFCE9C000000000000639C009CFFFF0063CE
      FF0063CEFF0063CEFF0063CEFF009CFFFF0000639C0000000000000000000000
      0000000000000000000000000000000000009C9C9C00FFFFFF00FFFFFF009C9C
      9C009C9C9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C9C
      9C009C9C9C000000000000000000000000000000000000000000000000000000
      00009CCECE00009CCE000000000000000000000000009CCECE00009CCE000000
      000000000000000000000000000000000000FFCE9C00FFCE9C00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00000000000000000000639C000063
      9C0000639C0000639C0000639C0000639C000000000000000000000000000000
      000000000000000000000000000000000000000000009C9C9C009C9C9C000000
      0000000000009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C000000
      00000000000000000000000000000000000000000000319CCE00319CCE00319C
      CE0063CEFF0063CEFF0063CEFF0063CEFF0063CEFF0063CEFF0063CEFF0063CE
      FF0063CEFF0063CEFF0063CEFF0063CEFF000000000000000000000000000000
      000000000000CE9C63009C3100009C3100009C3100009C310000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000063CECE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000063CECE0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000063CEFF0063CEFF00319CCE00319C
      CE00319CCE0063CEFF0063CEFF0063CEFF0063CEFF0063CEFF0063CEFF0063CE
      FF0063CEFF0063CEFF0063CEFF0063CEFF000000000000000000000000000000
      0000CE9C6300FFFFFF00FFCE9C00FFCE9C00CE9C6300CE9C63009C3100000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000063CECE00009CCE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000063CECE00009CCE00000000000000000000000000000000000000
      00000000000000000000000000000000000063CEFF0063CEFF0063CEFF00009C
      0000008400000084000063CEFF0031639C0031639C0031639C0031639C00319C
      CE0063CEFF0063CEFF0063CEFF0031639C000000000000000000000000000000
      0000CE9C63009C3100009C3100009C3100009C3100009C3100009C3100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063CECE00009CCE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063CECE00009CCE000000000000000000000000000000
      00000000000000000000000000000000000063CEFF0063CEFF0063CEFF00009C
      000000FF00000084000063CEFF00319CCE00639CCE00639CCE00319CCE0063CE
      FF0063CEFF0063CEFF0063CEFF0063CEFF00000000000000000000000000CE9C
      6300FFFFFF00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00CE9C63009C31
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063CECE009CFFFF00009CCE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063CECE009CFFFF00009CCE0000000000000000000000
      00000000000000000000000000000000000063CEFF0063CEFF0063CEFF00009C
      000000FF00000084000063CEFF0063CEFF00319CCE00319CCE0063CEFF0063CE
      FF0031639C0031639C0063CEFF0063CEFF000000000000000000CE9C6300FFFF
      FF00CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300FFCE9C00CE9C6300CE9C
      63009C3100000000000000000000000000000000000000000000000000000000
      000063CECE00009CCE00009CCE00009CCE0063FFFF00009CCE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000063CECE00009CCE00009CCE00009CCE0063FFFF00009CCE00000000000000
      00000000000000000000000000000000000063CEFF0063CEFF0063CEFF00009C
      000000FF000000FF00000084000063CEFF0063CEFF0063CEFF0063CEFF0063CE
      FF0063CEFF0063CEFF0063CEFF0063CEFF0000000000CE9C6300FFFFFF00FFCE
      9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFCE9C00FFCE9C00CE9C
      63009C3100000000000000000000000000000000000000000000000000000000
      000063CECE009CFFFF0063FFFF0063FFFF0063FFFF0063FFFF00009CCE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000063CECE009CFFFF0063FFFF0063FFFF0063FFFF0063FFFF00009CCE000000
      00000000000000000000000000000000000063CEFF0063CEFF0063CEFF00009C
      000000FF000031CE310000FF00000084000063CEFF0063CEFF0063CEFF0063CE
      FF0063CEFF0063CEFF0063CEFF0063CEFF0000000000CE9C6300FFFFFF00FFCE
      9C00CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300FFCE9C00FFCE9C00CE9C
      6300CE9C63009C31000000000000000000000000000000000000000000000000
      00000000000063CECE009CFFFF0063FFFF00009CCE0063CECE0063CECE0063CE
      CE00000000000000000000000000000000000000000000000000000000000000
      00000000000063CECE009CFFFF0063FFFF00009CCE0063CECE0063CECE0063CE
      CE0000000000000000000000000000000000FFCE9C0063CE63000084000000FF
      000000FF0000009C000000FF000000FF0000009C0000FFCE9C00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C0000000000CE9C6300FFFFFF00FFCE
      9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFCE9C00FFCE9C00CE9C
      6300CE9C63009C31000000000000000000000000000000000000000000000000
      00000000000063CECE009CFFFF0063FFFF0063FFFF00009CCE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000063CECE009CFFFF0063FFFF0063FFFF00009CCE00000000000000
      000000000000000000000000000000000000FFCE9C00009C000000FF0000009C
      000000FF000000840000009C000000FF0000009C0000FFCE9C00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C0000000000CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      63009C3100009C3100000000000000000000000000000000000063CECE00009C
      CE00009CCE00009CCE00009CCE009CFFFF0063FFFF0063FFFF00009CCE000000
      000000000000000000000000000000000000000000000000000063CECE00009C
      CE00009CCE00009CCE00009CCE009CFFFF0063FFFF0063FFFF00009CCE000000
      000000000000000000000000000000000000FFCE9C00009C000000FF0000009C
      000000FF00000084000063CE6300009C000063CE6300FFCE9C00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00CE9C6300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9C
      6300CE9C63009C3100000000000000000000000000000000000063CECE009CFF
      FF009CFFFF0063FFFF0063FFFF0063FFFF0063FFFF0063FFFF0063FFFF00009C
      CE0000000000000000000000000000000000000000000000000063CECE009CFF
      FF009CFFFF0063FFFF0063FFFF0063FFFF0063FFFF0063FFFF0063FFFF00009C
      CE0000000000000000000000000000000000FFCE9C00009C000000FF0000009C
      000000FF000000840000FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C0000CE
      FF0000CEFF0000CEFF00FFCE9C00FFCE9C00CE9C6300FFCE9C00FFCE9C009CCE
      CE00009CCE00FFCE9C00FFCE9C00FFCE9C009CCECE00009CCE00FFCE9C00FFFF
      FF00CE9C6300CE9C63009C3100000000000000000000000000000000000063CE
      CE009CFFFF009CFFFF0063FFFF0063FFFF00009CCE0063CECE0063CECE0063CE
      CE000000000000000000000000000000000000000000000000000000000063CE
      CE009CFFFF009CFFFF0063FFFF0063FFFF00009CCE0063CECE0063CECE0063CE
      CE0000000000000000000000000000000000FFCE9C0063CE6300009C0000009C
      000000FF000000840000FFCE9C00FFCE9C00FFCE9C00FFCE9C0000CEFF0063FF
      FF0063FFFF0063FFFF0000CEFF00FFCE9C0000000000CE9C6300FFCE9C009CCE
      CE0000FFFF00009CCE00CE9C6300FFCE9C009CCECE0000FFFF00009CCE00FFCE
      9C00FFFFFF00CE9C63009C3100000000000000000000000000000000000063CE
      CE009CFFFF009CFFFF009CFFFF0063FFFF0063FFFF00009CCE00000000000000
      00000000000000000000000000000000000000000000000000000000000063CE
      CE009CFFFF009CFFFF009CFFFF0063FFFF0063FFFF00009CCE00000000000000
      000000000000000000000000000000000000FFCE9C00FFCE9C00FFCE9C00009C
      000000FF000000840000FFCE9C00FFCE9C00FFCE9C00FFCE9C0000CEFF0063FF
      FF0063FFFF0063FFFF0000CEFF00FFCE9C000000000000000000CE9C63009CCE
      CE0000FFFF00009CCE00CE9C6300CE9C63009CCECE0000FFFF00009CCE00CE9C
      6300CE9C6300CE9C630000000000000000000000000000000000000000000000
      000063CECE009CFFFF009CFFFF009CFFFF0063FFFF0063FFFF00009CCE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000063CECE009CFFFF009CFFFF009CFFFF0063FFFF0063FFFF00009CCE000000
      000000000000000000000000000000000000FFCE9C00FFCE9C00FFCE9C0063CE
      6300009C000063CE6300FFCE9C00FFCE9C00FFCE9C00FFCE9C0000CEFF0063FF
      FF0063FFFF0063FFFF0000CEFF00FFCE9C000000000000000000000000009CCE
      CE0000FFFF00009CCE0000000000000000009CCECE0000FFFF00009CCE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000063CECE009CFFFF009CFFFF009CFFFF0063FFFF0063FFFF0063FFFF00009C
      CE00000000000000000000000000000000000000000000000000000000000000
      000063CECE009CFFFF009CFFFF009CFFFF0063FFFF0063FFFF0063FFFF00009C
      CE0000000000000000000000000000000000FFCE9C00FFCE9C00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C0000CE
      FF0000CEFF0000CEFF00FFCE9C00FFCE9C000000000000000000000000009CCE
      CE0000FFFF00009CCE0000000000000000009CCECE0000FFFF00009CCE000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000063CECE009CFFFF009CFFFF009CFFFF0063FFFF0063FFFF0063FF
      FF00009CCE000000000000000000000000000000000000000000000000000000
      00000000000063CECE009CFFFF009CFFFF009CFFFF0063FFFF0063FFFF0063FF
      FF00009CCE00000000000000000000000000FFCE9C00FFCE9C00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C000000000000000000000000000000
      00009CCECE00009CCE000000000000000000000000009CCECE00009CCE000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CE
      CE0063CECE0063CECE0000000000000000000000000000000000000000000000
      00000000000063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CE
      CE0063CECE0063CECE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C3100009C310000CE6300009C310000CE6300009C3100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063636300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000009CCE0000639C0000639C000063
      9C0000639C0000639C0000639C0000639C0000639C0000639C0000639C000063
      9C0000639C0000639C0000639C0000639C000000000000000000000000000000
      0000000000009C310000CE6300009C310000CE6300009C3100009C3100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000063
      9C0000639C0000639C00000000000000000000000000CECECE00636363000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000009CCE009CFFFF00009CCE009CFF
      FF00009CCE009CFFFF00009CCE009CFFFF00009CCE009CFFFF00009CCE009CFF
      FF00009CCE009CFFFF00009CCE009CFFFF000000000000000000000000000000
      0000000000009C3100009C310000CE6300009C310000CE6300009C3100000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000639C00319C
      CE00319CCE0063CEFF0000639C00000000000000000000000000CECECE006363
      63000000000000000000FF9C00009C3100009C3100009C310000000000000000
      000000000000000000000000000000000000009CCE009CFFFF00009CCE009CFF
      FF00009CCE009CFFFF00009CCE009CFFFF00009CCE009CFFFF00009CCE009CFF
      FF00009CCE009CFFFF00009CCE009CFFFF000000000000000000000000000000
      0000000000009C9C9C009C3100009C3100009C3100009C3100009C9C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000639C00319CCE000063
      9C0000CEFF0063CEFF0000639C0000000000000000000000000000000000CECE
      CE0063636300FF9C0000CE630000CE630000CE630000CE6300009C3100000000
      000000000000000000000000000000000000009CCE009CFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF00009CCE009CFFFF000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00FFCECE0063636300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000639C00319CCE0000639C0000CE
      FF00319CCE0063CEFF0000639C00000000000000000000000000000000000000
      0000FF9C0000CE630000FF9C0000CE630000CE630000CE6300009C3100000000
      000000000000000000000000000000000000009CCE009CFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00FFCECE0063636300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000639C0000639C00319CCE0000639C0000CEFF00319C
      CE0063CEFF0000639C000000000000000000000000000000000000000000FF9C
      0000CE630000FF9C0000FF9C0000FF9C0000CE630000CE6300009C3100000000
      000000000000000000000000000000000000009CCE009CFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF00009C
      CE00009CCE00009CCE009CFFFF009CFFFF000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00FFCECE0063636300000000000000
      000000000000000000000000000000000000000000000000000000639C000063
      9C0000639C0000639C00319CCE00319CCE0000639C0000CEFF00319CCE0063CE
      FF0000639C00000000000000000000000000000000000000000000000000CE63
      0000FF9C6300FF9C6300FF9C0000FF9C0000CE630000CE6300009C3100000000
      000000000000000000000000000000000000009CCE009CFFFF009CFFFF00009C
      CE00009CCE009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF00009CCE009CFFFF009CFFFF009CFFFF000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00FFCECE0063636300000000000000
      0000000000000000000000000000000000000000000000639C0000CEFF0000CE
      FF0000CEFF0000CEFF0000639C0000639C0000CEFF00319CCE0063CEFF000063
      9C0000000000000000000000000000000000000000000000000000000000CE63
      0000FFFFFF00FFFFFF00FF9C6300CE630000FF9C0000CE630000CE6300009C31
      000000000000000000000000000000000000009CCE009CFFFF009CFFFF00009C
      CE00009CCE009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF00009CCE009CFFFF009CFFFF009CFFFF000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00FFCECE0063636300000000000000
      00000000000000000000000000000000000000639C0000CEFF0000CEFF00319C
      CE0000CEFF0000CEFF0000CEFF0000CEFF00319CCE0063CEFF0000639C000000
      000000000000000000000000000000000000000000000000000000000000CE63
      0000FF9C6300FF9C6300CE630000FFFFFF00FF9C6300FF9C0000CE6300009C31
      00009C3100009C3100009C31000000000000009CCE009CFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF00009C
      CE00009CCE009CFFFF009CFFFF009CFFFF000000000000000000000000000000
      0000000000000000000063636300636363006363630063636300000000000000
      00000000000000000000000000006363630000639C0000CEFF00319CCE0000CE
      FF00319CCE0000CEFF0000CEFF0000CEFF0063CEFF0000639C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE630000CE630000CE630000CE630000FFFFFF00FF9C63009C310000CE63
      0000CE630000CE630000CE6300009C310000009CCE009CFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF00009CCE009CFFFF009CFFFF009CFFFF000000000063636300636363000000
      000000000000636363009C9C9C009C9C9C009C9C9C009C9C9C00636363000000
      00000000000000000000636363006363630000639C0000CEFF0000CEFF00319C
      CE0000CEFF00319CCE0000CEFF0000CEFF0063CEFF0000639C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000CE630000CE630000FF9C
      0000CE630000CE630000CE6300009C310000009CCE009CFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009C9C9C009C9C9C009C9C9C006363
      6300636363009C9C9C00CECECE00CECECE00CECECE009C9C9C00636363006363
      63006363630063636300CECECE006363630000639C0000CEFF0000CEFF0000CE
      FF00319CCE0000CEFF00319CCE0000CEFF0063CEFF0000639C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE630000FF9C6300FF9C
      0000FF9C0000CE630000CE6300009C310000009CCE009CFFFF009CFFFF009CFF
      FF00009CCE009CFFFF009CFFFF009CFFFF00009CCE009CFFFF009CFFFF009CFF
      FF00009CCE009CFFFF009CFFFF009CFFFF009C9C9C00FFFFFF00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE009C9C9C009C9C
      9C009C9C9C00CECECE00636363000000000000639C0000CEFF0000639C000063
      9C0000CEFF00319CCE0000CEFF00319CCE0063CEFF0000639C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE630000FF9C6300FF9C
      6300FF9C0000CE630000CE630000FF9C0000009CCE009CFFFF00009CCE009CFF
      FF00009CCE009CFFFF00009CCE009CFFFF00009CCE009CFFFF00009CCE009CFF
      FF00009CCE009CFFFF00009CCE009CFFFF009C9C9C00FFFFFF00CECECE00CECE
      CE00FFFFFF00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE009C9C9C00000000000000000000639C009CFFFF00319CCE000063
      9C0000CEFF0000CEFF00319CCE0000CEFF009CFFFF0000639C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE630000FFFFFF00FF9C
      6300CE630000CE630000FF9C000000000000009CCE00009CCE00009CCE00009C
      CE00009CCE00009CCE00009CCE00009CCE00009CCE00009CCE00009CCE00009C
      CE00009CCE00009CCE00009CCE00009CCE009C9C9C00FFFFFF00FFFFFF009C9C
      9C009C9C9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C9C
      9C009C9C9C000000000000000000000000000000000000639C009CFFFF0063CE
      FF0063CEFF0063CEFF0063CEFF009CFFFF0000639C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000FF9C000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C9C9C009C9C9C000000
      0000000000009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C000000
      000000000000000000000000000000000000000000000000000000639C000063
      9C0000639C0000639C0000639C0000639C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C3100009C310000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C3100009C3100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C310000CE6300009C310000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C310000CE6300009C31
      0000000000000000000000000000000000000000000031313100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000031313100313131009C9C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C31
      0000CE630000CE6300009C310000CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C63009C310000CE630000CE63
      00009C3100000000000000000000000000003131310063636300636363006363
      6300000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CECECE0063636300313131003131
      3100000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C310000CE63
      0000CE630000CE6300009C310000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C6300CE9C6300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C310000CE630000CE63
      0000CE6300009C3100000000000000000000000000009C9C9C00CECECE009C9C
      9C00636363006363630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063636300636363006363
      6300313131009C9C9C0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C310000CE630000CE63
      0000CE630000CE6300009C310000E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700FFFFFF00CE9C6300CE9C6300FFFFFF00E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E7009C310000CE630000CE63
      0000CE630000CE6300009C31000000000000000000009C9C9C00CECECE00CECE
      CE009C9C9C009C9C9C0063636300636363000000000000000000000000000000
      00000000000000000000000000000000000000000000CECECE00636363006363
      63006363630031313100009C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000009C310000CE630000CE630000CE63
      0000CE630000CE6300009C310000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C6300CE9C6300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C310000CE630000CE63
      0000CE630000CE630000CE6300009C31000000000000000000009C9C9C00CECE
      CE00CECECE009C9C9C009C9C9C009C9C9C006363630063636300000000000000
      0000000000000000000000000000000000000000000000000000636363006363
      63009CFFFF009CCECE009CCECE00009C9C000000000000000000000000000000
      000000000000000000000000000000000000000000009C310000CE630000CE63
      0000CE630000CE6300009C310000E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700FFFFFF00CE9C6300CE9C6300FFFFFF00E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E7009C310000CE630000CE63
      0000CE630000CE6300009C3100000000000000000000000000009C9C9C00E7E7
      E700CECECE00CECECE009C9C9C009C9C9C009C9C9C009C310000633100006331
      0000000000000000000000000000000000000000000000000000CECECE008484
      8400CEFFFF009CFFFF009CCECE009CCECE00009C9C009CCECE00000000000000
      00000000000000000000000000000000000000000000000000009C310000CE63
      0000CE630000CE6300009C310000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C6300CE9C6300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C310000CE630000CE63
      0000CE6300009C31000000000000000000000000000000000000000000009C9C
      9C00E7E7E700CECECE00CECECE009C9C9C009C3100009C3100009C3100009C31
      00006331000000000000000000000000000000000000000000000000000063CE
      CE00FFFFFF00CEFFFF009CFFFF009CFFFF009CCECE0063CECE00009C9C000000
      0000000000000000000000000000000000000000000000000000000000009C31
      0000CE630000CE6300009C310000E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700FFFFFF00CE9C6300CE9C6300FFFFFF00E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E7009C310000CE630000CE63
      00009C3100000000000000000000000000000000000000000000000000009C9C
      9C00FFFFFF00E7E7E700CECECE009C3100009C3100009C3100009C3100009C31
      00009C31000063310000000000000000000000000000000000000000000063CE
      CE00FFFFFF00CEFFFF00CEFFFF009CFFFF009CFFFF009CCECE009CCECE00009C
      9C0063CECE000000000000000000000000000000000000000000000000000000
      00009C310000CE6300009C310000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C6300CE9C6300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C310000CE6300009C31
      0000000000000000000000000000000000000000000000000000000000000000
      00009C9C9C00FFFFFF009C310000CE6331009C3100009C3100009C3100009C31
      00009C3100009C31000063310000000000000000000000000000000000000000
      00009CCECE00FFFFFF00CEFFFF00CEFFFF009CFFFF009CFFFF009CCECE00FFCE
      CE009C3100009C31000000000000000000000000000000000000000000000000
      0000CE9C63009C3100009C310000E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700FFFFFF00CE9C6300CE9C6300FFFFFF00E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E7009C3100009C310000CE9C
      6300000000000000000000000000000000000000000000000000000000000000
      00009C9C9C009C310000CE6331009C310000CE6331009C3100009C3100009C31
      00009C3100009C3100009C310000633100000000000000000000000000000000
      000063CECE00FFFFFF00CEFFFF00CEFFFF00FFCECE00CE630000CE6300009C31
      00009C3100009C3100009C310000000000000000000000000000000000000000
      0000CE9C6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C6300CE9C6300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9C
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000009C3100009C310000CE6331009C310000CE6331009C3100009C31
      00009C3100009C3100009C3100009C3100000000000000000000000000000000
      0000000000009CCECE00FFFFFF00CEFFFF00CE630000CE630000CE630000CE63
      00009C3100009C3100009C3100009C3100000000000000000000000000000000
      0000CE9C6300FFFFFF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700FFFFFF00CE9C6300CE9C6300FFFFFF00E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700FFFFFF00CE9C
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000009C3100009C3100009C310000CE6331009C310000CE6331009C31
      00009C3100009C3100009C3100009C9C9C000000000000000000000000000000
      00000000000063CECE00FFFFFF00FFCECE00CE630000CE630000CE630000CE63
      0000CE6300009C3100009C3100009C3100000000000000000000000000000000
      0000CE9C6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C6300CE9C6300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9C
      6300000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C3100009C3100009C310000CE6331009C310000CE63
      31009C3100009C3100009C9C9C009C9C9C000000000000000000000000000000
      00000000000000000000FF9C0000FF9C0000CE630000CE630000CE630000CE63
      0000CE630000CE6300009C3100009C3100000000000000000000000000000000
      0000CE9C6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C6300CE9C6300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9C
      6300000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009C3100009C3100009C310000CE6331009C31
      00009C310000CECECE00CECECE009C9C9C000000000000000000000000000000
      00000000000000000000CE630000FF9C0000FF9C0000CE630000CE630000CE63
      0000CE630000CE630000CE6300009C3100000000000000000000000000000000
      0000CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C3100009C3100009C3100009C31
      0000E7E7E700E7E7E700CECECE00CECECE000000000000000000000000000000
      0000000000000000000000000000CE630000FF9C0000FF9C0000CE630000CE63
      0000CE630000CE630000CE630000CE6300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CE9C9C009C310000CE9C9C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7EFF700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C9C009C3100009C3100009C31000000000000000000009C3100009C31
      00009C3100009C3100009C3100009C3100009C3100009C3100009C3100009C31
      00009C310000000000000000000000000000000000000000000000000000E7EF
      F700E7E7E700CECECE00E7E7E700E7EFF7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE9C63009C3100009C310000CE9C63000000000000000000000000000000
      00000000000000000000000000000000000000000000CE9C6300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      84009C3100009C3100009C310000CE9C9C0000000000CE9C6300FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00CE9C
      6300CE9C63009C310000000000000000000000000000E7EFF700E7E7E700B5B5
      B500CE9C9C009C6363009C636300B5B5B500CECECE00E7E7E700E7EFF7000000
      0000000000000000000000000000000000000000000000000000000000009C31
      00009C310000CE630000CE6300009C3100000000000000000000000000000000
      00000000000000000000000000000000000000000000CE9C6300FFFFFF00E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E7008484840084848400848484009C31
      00009C3100009C310000CE9C9C0000000000CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      63009C310000CE9C63009C31000000000000E7E7E700CE9C9C009C636300CE9C
      9C00CE9C9C00FFFFFF009C6363009C9C9C009C9C9C00B5B5B500E7E7E7000000
      00000000000000000000000000000000000000000000000000009C310000CE63
      0000CE6300009C3100009C310000CE9C63000000000000000000000000000000
      00000000000000000000000000000000000000000000CE9C6300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E7E7E7009C9C6300FFFFCE00FFFFCE00FFFFFF00CECE
      9C009C310000CE9C9C000000000000000000CE9C6300FFFFFF00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE
      9C00CE9C63009C3100009C310000000000009C636300CE9C9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C63630031639C0031639C0031639C00E7EFF7000000
      00000000000000000000000000000000000000000000CE9C63009C310000CE63
      00009C310000CE9C630000000000000000009C3100009C3100009C3100009C31
      00009C3100009C3100009C3100000000000000000000CE9C6300FFFFFF00E7E7
      E700E7E7E700E7E7E7009C9C9C00F7EFBD00FFFFCE00FFFFCE00FFFFCE00FFFF
      FF0063636300000000000000000000000000CE9C6300FFFFFF00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C0000CE0000009C0000FFCE9C000000FF000000CE00FFCE
      9C00CE9C6300CE9C63009C310000000000009C636300FFCE9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C63630063CECE0063CECE00009CCE00FFFFFF00FFCE
      CE0000000000000000000000000000000000000000009C310000CE6300009C31
      0000CE9C63000000000000000000000000009C310000CE630000CE630000CE63
      0000CE630000CE6300009C3100000000000000000000CE9C6300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF009C9C9C00F7EFBD00FFFFFF00F7EFBD00FFFFCE00FFFF
      CE0063636300000000000000000000000000CE9C6300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CE9C6300CE9C6300CE9C63009C3100009C636300FFCE9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C63630063CECE0063CEFF00319CCE00FFCECE00CE63
      000000000000000000000000000000000000000000009C310000CE6300009C31
      000000000000000000000000000000000000000000009C310000CE630000CE63
      0000CE630000CE6300009C3100000000000000000000CE9C6300FFFFFF00E7E7
      E700E7E7E700E7E7E7009C9C9C00F7EFBD00FFFFFF00FFFFFF00F7EFBD00FFFF
      CE0063636300000000000000000000000000CE9C6300FFFFFF00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE
      9C00CE9C6300CE9C6300CE9C63009C3100009C636300FFCE9C00CE9C9C00CE9C
      6300FFCECE00FFFFFF009C6363009CCECE009CCEFF00B5B5B500FF630000CE63
      000000000000000000000000000000000000000000009C310000CE6300009C31
      0000CE9C630000000000000000000000000000000000CE9C63009C310000CE63
      0000CE630000CE6300009C3100000000000000000000CE9C6300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF009C9C9C00F7EFBD00F7EFBD00F7EFBD009C9C
      63008484840000000000000000000000000000000000CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300FFCE
      9C00FFCE9C00CE9C6300CE9C63009C3100009C636300FFCE9C009C636300FFFF
      FF00FFCECE00FFFFFF009C6363009CCECE00C6C6C600CE630000CE630000CE63
      0000CE630000CE630000CE6300000000000000000000CE9C63009C310000CE63
      00009C310000CE9C630000000000CE9C63009C3100009C310000CE6300009C31
      0000CE630000CE6300009C3100000000000000000000CE9C6300FFFFFF00E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E7009C9C9C009C9C9C009C9C9C00E7E7
      E700CE9C63000000000000000000000000000000000000000000CE9C6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9C
      6300FFCE9C00FFCE9C00CE9C63009C3100009C636300FFCE9C00CE9C9C009C63
      6300FFCECE00FFFFFF009C63630000000000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE6300000000000000000000000000009C310000CE63
      0000CE6300009C3100009C3100009C310000CE630000CE6300009C310000CE9C
      63009C310000CE6300009C3100000000000000000000CE9C6300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CE9C6300000000000000000000000000000000000000000000000000CE9C
      6300FFFFFF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700FFFFFF00CE9C
      6300CE9C6300CE9C63009C310000000000009C636300FFCE9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C63630000000000CE9C9C00CE630000CE630000CE63
      0000CE630000CE630000CE630000000000000000000000000000000000009C31
      00009C310000CE630000CE630000CE6300009C3100009C310000000000000000
      0000000000009C3100009C3100000000000000000000CE9C6300FFFFFF00E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700FFFFFF00CE9C6300CE9C6300CE9C
      6300CE9C6300000000000000000000000000000000000000000000000000CE9C
      6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CE9C63000000000000000000000000009C636300FFCE9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C636300CECECE00E7EFF700CE9C9C00FF630000CE63
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE9C63009C3100009C3100009C310000CE9C630000000000000000000000
      00000000000000000000000000000000000000000000CE9C6300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9C6300E7E7E700CE9C
      6300000000000000000000000000000000000000000000000000000000000000
      0000CE9C6300FFFFFF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700FFFF
      FF00CE9C63000000000000000000000000009C636300FFCE9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C6363009CCECE00000000009CCECE00FFCE9C00CE63
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE9C6300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9C6300CE9C63000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE9C6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CE9C630000000000000000009C636300CE9C9C00FFCE9C00FFCE
      9C00FFCECE00FFFFFF009C636300CECECE0000000000319CCE0000000000FFCE
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300000000000000000000000000C6C6C600CE9C6300CE9C
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      9C00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000000000000000000000009C3100009C31
      00009C3100009C3100009C3100009C3100009C3100009C3100009C3100009C31
      00009C3100009C3100009C310000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003131CE000000
      FF0000009C000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C310000CE630000CE63
      00009C310000E7E7E700CE6300009C310000E7E7E700E7E7E700E7E7E7009C31
      0000CE630000CE6300009C310000000000000000000000000000000000000000
      00009C3100009C31000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003131CE00319C
      FF000000FF0000009C0000000000000000000000000000000000000000000000
      0000000000000000FF000000000000000000000000009C310000CE630000CE63
      00009C310000E7E7E700CE6300009C310000E7E7E700E7E7E700E7E7E7009C31
      0000CE630000CE6300009C310000000000000000000000000000000000009C31
      0000CE630000CE6300009C310000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C3100009C3100009C31
      00009C31000000000000000000000000000000000000000000009C3100009C31
      00009C3100009C31000000000000000000000000000000000000000000003131
      CE000063FF000000CE0000000000000000000000000000000000000000000000
      00000000FF00000000000000000000000000000000009C310000CE630000CE63
      00009C310000E7E7E700CE6300009C310000E7E7E700E7E7E700E7E7E7009C31
      0000CE630000CE6300009C3100000000000000000000000000009C310000CE63
      0000CE630000CE630000CE6300009C3100000000000000000000000000000000
      000000000000000000000000000000000000000000009C310000CE630000CE63
      0000CE6300009C3100000000000000000000000000009C310000CE630000CE63
      0000CE6300009C31000000000000000000000000000000000000000000000000
      00000000CE000000FF0000009C00000000000000000000000000000000000000
      FF0000009C00000000000000000000000000000000009C310000CE630000CE63
      00009C310000E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E7009C31
      0000CE630000CE6300009C31000000000000000000009C310000CE630000CE63
      0000CE630000CE630000CE630000CE6300009C31000000000000000000000000
      00000000000000000000000000000000000000000000000000009C310000CE63
      0000CE630000CE6300009C310000000000009C310000CE630000CE630000CE63
      00009C3100000000000000000000000000000000000000000000000000000000
      0000000000000000CE000000FF0000009C0000000000000000000000FF000000
      9C0000000000000000000000000000000000000000009C310000CE630000CE63
      0000CE6300009C3100009C3100009C3100009C3100009C3100009C310000CE63
      0000CE630000CE6300009C31000000000000000000009C310000CE630000CE63
      00009C3100009C310000CE630000CE630000CE6300009C310000000000000000
      0000000000000000000000000000000000000000000000000000000000009C31
      0000CE630000CE630000CE6300009C310000CE630000CE630000CE6300009C31
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000CE000000FF0000009C000000FF0000009C000000
      000000000000000000000000000000000000000000009C310000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE6300009C31000000000000000000009C310000CE6300009C31
      000000000000000000009C310000CE630000CE630000CE6300009C3100000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C310000CE630000CE630000CE630000CE630000CE6300009C3100000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000CE000000FF0000009C00000000000000
      000000000000000000000000000000000000000000009C310000CE630000CE63
      00009C3100009C3100009C3100009C3100009C3100009C3100009C3100009C31
      0000CE630000CE6300009C31000000000000000000009C3100009C3100000000
      00000000000000000000000000009C310000CE630000CE630000CE6300009C31
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C310000CE630000CE630000CE6300009C310000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000CE000000FF0000009C000000CE0000009C000000
      000000000000000000000000000000000000000000009C310000CE6300009C31
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009C310000CE6300009C310000000000000000000000000000000000000000
      0000000000000000000000000000000000009C310000CE630000CE630000CE63
      00009C3100000000000000000000000000000000000000000000000000000000
      00009C310000CE630000CE630000CE630000CE630000CE6300009C3100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000CE000000FF0000009C0000000000000000000000CE000000
      9C0000000000000000000000000000000000000000009C310000CE6300009C31
      0000FFFFFF009C3100009C3100009C3100009C3100009C3100009C310000FFFF
      FF009C310000CE6300009C310000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C310000CE630000CE63
      0000CE6300009C31000000000000000000000000000000000000000000009C31
      0000CE630000CE630000CE6300009C310000CE630000CE630000CE6300009C31
      0000000000000000000000000000000000000000000000000000000000000000
      CE000000FF000000FF0000009C00000000000000000000000000000000000000
      CE0000009C00000000000000000000000000000000009C310000CE6300009C31
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009C310000CE6300009C310000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C310000CE63
      0000CE6300009C310000000000000000000000000000000000009C310000CE63
      0000CE630000CE6300009C310000000000009C310000CE630000CE630000CE63
      00009C31000000000000000000000000000000000000000000000000CE00319C
      FF000000FF0000009C0000000000000000000000000000000000000000000000
      00000000CE0000009C000000000000000000000000009C310000E7E7E7009C31
      0000FFFFFF009C3100009C3100009C3100009C3100009C3100009C310000FFFF
      FF009C3100009C3100009C310000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C31
      0000CE6300009C3100000000000000000000000000009C310000CE630000CE63
      0000CE6300009C3100000000000000000000000000009C310000CE630000CE63
      0000CE6300009C3100000000000000000000000000000000000063639C000000
      CE0063639C000000000000000000000000000000000000000000000000000000
      000000000000000000000000CE0000000000000000009C310000CE6300009C31
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009C310000CE6300009C310000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C3100009C3100000000000000000000000000009C3100009C3100009C31
      00009C31000000000000000000000000000000000000000000009C3100009C31
      00009C3100009C31000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C3100009C3100009C31
      00009C3100009C3100009C3100009C3100009C3100009C3100009C3100009C31
      00009C3100009C3100009C310000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C63000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C60000000000C6C6
      C60000000000C6C6C60000000000C6C6C60000000000C6C6C60000000000C6C6
      C60000000000C6C6C60000000000C6C6C6000000000000000000CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C63000000000000000000000000000000000000000000CE9C
      6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C63000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C60000000000C6C6C6000000
      00000000000000000000C6C6C60000000000C6C6C60000000000C6C6C6000000
      0000C6C6C60000000000C6C6C600000000000000000000000000CE9C6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CE9C63000000000000000000000000000000000000000000CE9C
      6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C63000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600000000000000
      000000000000C6C6C600000000000000000000000000C6C6C60000000000C6C6
      C60000000000C6C6C60000000000C6C6C6000000000000000000CE9C6300FFFF
      FF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700FFFFFF00CE9C63000000000000000000000000000000000000000000CE9C
      6300FFFFFF00FFFFFF00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00FFFFFF00FFFFFF00CE9C63000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C6000000000000000000FFFF
      00000000000000000000C6C6C600000000000000000000000000C6C6C6000000
      0000C6C6C60000000000C6C6C600000000000000000000000000CE9C6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CE9C6300000000000000000000009C000000000000000000CE9C
      6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C63000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000FFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000000000C6C6C6000000000000000000CE9C6300FFFF
      FF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700FFFFFF00CE9C630000000000000000000000CE0000009C0000000000CE9C
      6300FFFFFF009C3100009C3100009C3100009C3100009C3100009C3100009C31
      00009C3100009C310000FFFFFF00CE9C63000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C60000000000FFFF0000FFFF
      0000000000008484840084848400848484000000000000000000C6C6C6000000
      0000C6C6C60000000000C6C6C600000000000000000000000000CE9C6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CE9C630000000000000000000000FF000000CE0000009C00CE9C
      6300FFFFFF009C310000CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C63009C310000FFFFFF00CE9C63000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      00000000000084848400848484008484840000000000C6C6C60000000000C6C6
      C60000000000C6C6C60000000000C6C6C6000000000000000000CE9C6300FFFF
      FF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700FFFFFF00CE9C630000000000000000000000FF000000CE0000000000CE9C
      6300FFFFFF009C3100009C3100009C3100009C3100009C3100009C3100009C31
      00009C3100009C310000FFFFFF00CE9C63000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C60000000000FFFF0000FFFF
      0000000000008484840084848400848484000000000000000000C6C6C6000000
      00000000000000000000C6C6C600000000000000000000000000CE9C6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CE9C630000000000000000000000FF000000000000000000CE9C
      6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C63000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      00000000000084848400848484008484840000000000C6C6C600000000000000
      000000000000C6C6C60000000000C6C6C6000000000000000000CE9C6300FFFF
      FF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700FFFFFF00CE9C63000000000000000000000000000000000000000000CE9C
      6300FFFFFF00FFFFFF00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00FFFFFF00FFFFFF00CE9C6300000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000000000000000000000000000000000C6C6C60000000000FFFF0000FFFF
      0000000000008484840084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE9C6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CE9C63000000000000000000000000000000000000000000CE9C
      6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C63000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      00000000000084848400848484008484840000000000C6C6C600000000000000
      000000000000C6C6C60000000000C6C6C6000000000000000000CE9C6300FFFF
      FF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700FFFFFF00CE9C6300CE9C
      6300CE9C6300CE9C63000000000000000000000000000000000000000000CE9C
      6300FFFFFF00FFFFFF00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00FFFFFF00FFFFFF00CE9C63000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000C6C6C60000000000FFFF0000FFFF
      0000000000008484840084848400848484000000000000000000C6C6C6000000
      00000000000000000000C6C6C600000000000000000000000000CE9C6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9C6300E7E7
      E700CE9C6300000000000000000000000000000000000000000000000000CE9C
      6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C63000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00008484840084848400848484008484840000000000C6C6C60000000000C6C6
      C60000000000C6C6C60000000000C6C6C6000000000000000000CE9C6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9C6300CE9C
      630000000000000000000000000000000000000000000000000000000000CE9C
      6300FFFFFF00FFFFFF00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00FFFFFF00FFFFFF00CE9C63000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000C6C6C60000000000000000008484
      8400848484008484840084848400848484000000000000000000C6C6C6000000
      0000C6C6C60000000000C6C6C600000000000000000000000000CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C63000000
      000000000000000000000000000000000000000000000000000000000000CE9C
      6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C63000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C60000000000C6C6
      C60000000000C6C6C60000000000C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C63000000000000000000000000000000
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
      000084000000000000000000000000000000000000009CFFFF0000CEFF00CEFF
      FF0000CEFF003131310000CEFF0000CEFF00009CCE00009CCE00009CCE00009C
      CE00639C9C00009CCE00639C9C00000000000000000000000000000000008484
      8400000000000000000084848400848484008484840084848400848484008484
      8400848484008484840084848400000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00FFFFFF00848400008484840000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      000084000000000000000000000000000000000000009CFFFF00FFFFFF0000CE
      FF0000CEFF003131310000CEFF0000CEFF0000CEFF0000CEFF00009CCE00009C
      CE00009CCE00009CCE00009CCE00000000000000000000000000000000008484
      8400C6C6C600C6C6C600848484000000000084848400FFFFFF00FFFFFF008484
      8400FFFFFF00FFFFFF0084848400000000000000000000FFFF0000000000C6C6
      C60000FFFF0000000000FFFFFF00848484008484840000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      000000000000840000000000000000000000000000009CFFFF0000CEFF00FFFF
      FF00CEFFFF003131310000CEFF0000CEFF00009CCE00009CCE0000CEFF00009C
      CE00009CCE00009CCE00639C9C00000000000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00C6C6C60000000000C6C6C600FFFFFF008484
      8400FFFFFF00FFFFFF0084848400000000000000000084848400C6C6C60000FF
      FF0000FFFF0000FFFF00008484008484840000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      000000000000840000000000000000000000000000009CFFFF0000CEFF00FFFF
      FF0031313100313131003131310000CEFF0000CEFF0000CEFF0000CEFF00009C
      CE00009CCE00009CCE00009CCE00000000008484840084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840084848400848484008484
      840084848400848484008484840000000000000000000084840000848400FFFF
      FF0000FFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000000000008400000000000000000000000000000000000000000000000000
      000000000000840000000000000000000000000000009CFFFF00FFFFFF0000CE
      FF0000CEFF003131310000CEFF0000CEFF0000CEFF0000CEFF00009CCE0000CE
      FF0000CEFF00009CCE00009CCE000000000000000000C6C6C600FFFFFF00FFFF
      FF00FFFFFF00848484008484840084848400C6C6C60000000000C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000848400FFFFFF0000FF
      FF0000FFFF00FFFFFF00FF00000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FF000000FFFFFF0000000000000000000000000000000000840000000000
      0000000000000000000084000000840000000000000000000000000000000000
      000084000000000000000000000000000000000000009CFFFF0000CEFF00FFFF
      FF00FFFFFF0000CEFF00FFFFFF00CEFFFF0000CEFF0000CEFF0000CEFF0000CE
      FF00009CCE0000CEFF00009CCE000000000000000000C6C6C60000000000FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000084848400FFFFFF0000FF
      FF0000FFFF0000FFFF00FFFFFF0000000000FFFFFF00FFFFFF00FF000000FFFF
      FF00FFFFFF00FF000000FFFFFF00848484000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
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
      2800000040000000D00000000100010000000000800600000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000F83FFFFF00000000F39FFFFF00000000
      F7DF000000000000F45F000000000000F55F000000000000F55F000000000000
      F55F000000000000F55F000000000000F55F000000000000F55F000000000000
      F55F000000000000F55F000000000000FDDF000000000000FDDFFFFF00000000
      FDDFFFFF00000000FE3FFFFF00000000FFFFFFFFFFFF801F3FFFFFFF03FF000F
      0FFFFFFF00FF000F83FFC00300FF000F80FFC003007F000FC03FC003003F000F
      C00FC0030007000FE007C0030000000FE003C00300000000F001C00300000000
      F000C00300000001F800C00300000003F800C00300000007FC00FF3F0000000F
      FE00FFFF0000800FFF00FFFFFFFFC01FFFCFFFFFFFFFFFFFFF870000BFFF1FFF
      FF8700009FFF0FFFF70F0000CC3F83FFF30F0000E01F81FFF01F0000F01FC0FF
      F01F0000E01FC03FF0030000E01FE01FF0070000E00FE007F00F0000E001F003
      F01F0000F000F001F03F0000FF00F800F07F0000FF80F800F0FF0000FF80FC00
      F1FF0000FF81FC00F3FFFFFFFFC3FE00F83F8000FFFFF81FF01F0000FFE3F81F
      F01F0000FFC1F81FE00F0000FF81F81FC0070000FF01FC3F80070000FC03FC3F
      80030000C007FC3F80030000800FFC3F80030000001FFC3F00030000003FFC3E
      00010000003F981C80010000003F0000C0030000003F0001E31F0000003F0003
      E31F0000807F0007F39F0000C0FF981F8000F83FFBFFFBFF0000F01FF9FFF9FF
      0000F01FFCFFFCFF0000E00FFC7FFC7F0000C007F03FF03F00008007F01FF01F
      00008003F80FF80F00008003F83FF83F00008003C01FC01F00000003C00FC00F
      00000001E00FE00F00008001E03FE03F0000C003F01FF01F0000E31FF00FF00F
      0000E31FF807F8070000F39FF803F803FFFFFFFFF81FFFFFBFFF0000F81FFFE3
      9FFF0000F81FFFC1CC3F0000F81FFF81E01F0000FC3FFF01F01F0000FC3FFC03
      E01F0000FC3FC007E01F0000FC3F800FE00F0000FC3F001FE0010000FC3E003F
      F0000000981C003FFF0000000000003FFF8000000001003FFF8000000003003F
      FF8100000007807FFFC3FFFF981FC0FFF9FFFF9FFFFFFFFFF1FFFF8F3FFF1FFF
      E00000070FFF0FFFC000000383FF83FF8000000180FF81FF00000000C03FC0FF
      80000001C00FC03FC0000003E007E01FE0000007E003E007F000000FF001F003
      F000000FF000F001F000000FF800F800F000000FF800F800F000000FFC00FC00
      F000000FFE00FC00F000000FFF00FE00FFFFFFF8FFFFFDFFFFFF8000C007E0FF
      F0FF80008003801FE0FF80010001001FC0FF80030001001F830180070001000F
      870180070000000F8F8180070000000F878180078000000182018007C0000101
      C0018007E0010101E0398007E007000FF07F800FF007008FFFFF801FF00300AF
      FFFF803FF803803FFFFFFFFFFFFFE1FFFFFFFFFFFFFFFFFFEFFDC001FFFFFFFF
      C7FF8001F3FFFFFFC3FB8001E1FF87C3E3F78001C0FF8383F1E78001807FC107
      F8CF8001803FE00FFC1F80018C1FF01FFE3F80019E0FF83FFC1F8001FF07F01F
      F8CF8001FF83E00FE1E78001FFC3C107C3F38001FFE38383C7FD8001FFF387C3
      FFFF8001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000FFFFAAAAC003E000
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
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit, pbPageSetup]
    StoreInDFM = True
    RebuildPrinter = False
    OnBeginBand = frReportBeginBand
    OnGetValue = frReportGetValue
    Left = 688
    Top = 27
    ReportForm = {
      190000006F240000190000000001000100FFFFFFFFFF0001000060090000F00A
      00000000000000000000000000000000000000070000000000FFFF0000000000
      000000000500506167653100030400466F726D000F0000FFDC00000078000000
      7C0100002C010000040000000200C90000000500D2B3CDB73100020100000000
      4400000062030000D40000003000020001000000000000000000FFFFFF1F0000
      0000000000000000000000FFFF00000000000200000001000000000000000100
      0000C8000000140000000100000000000002003D0100000900D6F7CFEECAFDBE
      DD310002010000000024010000620300001D0000003000050001000000000000
      000000FFFFFF1F000000000B00667244424461746153657400000000000000FF
      FF000000000002000000010000000000000001000000C8000000140000000100
      00000000000200B50100000700B7D6D7E9CDB731000201000000004802000062
      030000000000003200100001000000000000000000FFFFFF1F0000000011005B
      4D446174612E227363626A6C62225D2000000000000000FFFF00000000000200
      0000010000000000000001000000C80000001400000001000000000000020055
      02000008006474466F6F7465720002010000000073010000620300001D000000
      3000110001000000000000000000FFFFFF1F0000000000000000000004000500
      626567696E0D100020666F7220693A3D3120746F205B6E5D0D15002020646F20
      53686F7742616E64286368696C64293B0D0300656E6400FFFF00000000000200
      0000010000000000000001000000C800000014000000010000000000000200BA
      02000005006368696C64000201000000004C010000620300001D00000030000A
      0001000000000000000000FFFFFF1F00000000000000000000000000FFFF0000
      00000002000000010000000000000001000000C8000000140000000100000000
      000002001F0300000500D2B3BDC53100020100000000A4010000620300002200
      00003000030001000000000000000000FFFFFF1F000000000000000000000000
      00FFFF000000000002000000010000000000000001000000C800000014000000
      010000000000000000CD03000005004D656D6F31000200210000004500000019
      0300001B0000000300000001000000000000000000FFFFFF1F2E020000000000
      01002A00B8A3BDA8C1FABEBBBBB7B1A3B9C9B7DDD3D0CFDEB9ABCBBEB3FDB3BE
      C6F7B3A7C9FAB2FAD7F7D2B5B1ED00000000FFFF000000000002000000010000
      00000B00B7C2CBCE5F47423233313200140000000200000000000A0000000100
      020000000000FFFFFF00000000020000000000000000005804000005004D656D
      6F3300020022000000E8000000210000003000000003000F0001000000000000
      000000FFFFFF1F2E02000000000002000200D0F20D0200BAC500000000FFFF00
      000000000200000001000000000B00B7C2CBCE5F474232333132000B00000002
      00000000000A0000000100020000000000FFFFFF000000000200000000000000
      0000E404000005004D656D6F3400020043000000E80000007400000030000000
      03000F0001000000000000000000FFFFFF1F2E02000000000001000800CDBC20
      202020BAC500000000FFFF00000000000200000001000000000B00B7C2CBCE5F
      474232333132000B0000000200000000000A0000000100020000000000FFFFFF
      00000000020000000000000000007005000005004D656D6F35000200B7000000
      E8000000650000003000000003000F0001000000000000000000FFFFFF1F2E02
      000000000001000800C1E3BCFEC3FBB3C600000000FFFF000000000002000000
      01000000000B00B7C2CBCE5F474232333132000B0000000200000000000A0000
      000100020000000000FFFFFF0000000002000000000000000000FB0500000500
      4D656D6F36000200A0010000E8000000290000003000000003000F0001000000
      000000000000FFFFFF1F2E02000000000002000200CAFD0D0200C1BF00000000
      FFFF00000000000200000001000000000B00B7C2CBCE5F474232333132000B00
      00000200000000000A0000000100020000000000FFFFFF000000000200000000
      00000000008806000006004D656D6F31320002005A020000E8000000A4000000
      3000000003000F0001000000000000000000FFFFFF1F2E020000000000010008
      00C9FAB2FAB9A4D2D500000000FFFF00000000000200000001000000000B00B7
      C2CBCE5F474232333132000B0000000200000000000A00000001000200000000
      00FFFFFF00000000020000000000000000001407000006004D656D6F31350002
      002200000024010000210000001D00000003000F0001000000000000000000FF
      FFFF1F2E02000000000001000E00205B4D446174612E226C62225D2000000000
      FFFF00000000000200000001000000000400CBCECCE5000A0000000000000000
      000A0000000100020000000000FFFFFF0000000002000000000000000000A107
      000006004D656D6F31360002004300000024010000740000001D00000003000F
      0001000000000000000000FFFFFF1F2E02000000000001000F005B4D44617461
      2E22705F7468225D2000000000FFFF00000000000200000001000000000400CB
      CECCE5000A000000000000000000080000000100020000000000FFFFFF000000
      00020000000000000000002C08000006004D656D6F3137000200B70000002401
      0000650000001D00000003000F0001000000000000000000FFFFFF1F2C000000
      00000001000D005B4D446174612E226D63225D2000000000FFFF000000000002
      00000001000000000400CBCECCE5000A00000000000000000008000000860002
      0000000000FFFFFF0000000002000000000000000000C208000006004D656D6F
      3138000200A001000024010000290000001D00000043000F0001000000000000
      000000FFFFFF1F2E02000000000001000D005B4D446174612E227A736C225D00
      000000FFFF00000000000200000001000000000F0054696D6573204E65772052
      6F6D616E000A000000020000000000090000000100020000000000FFFFFF0000
      0000020000000000000000005609000006004D656D6F32310002000A02000024
      010000280000001D00000043000F0001000000000000000000FFFFFF1F2E0000
      0100000001000B005B4D446174612E226C225D00000000FFFF00000000000200
      000001000000000F0054696D6573204E657720526F6D616E000A000000020000
      000000090000000100020000000000FFFFFF0000000002000000000000000000
      E909000006004D656D6F32350002005A02000024010000A40000001D00000003
      000F0001000000000000000000FFFFFF1F2E02000000000001000E005B4D4461
      74612E2273636779225D00000000FFFF00000000000200000001000000000B00
      B7C2CBCE5F474232333132000B00000000000000000008000000010002000000
      0000FFFFFF0000000002000000000000000000890A000006004D656D6F323600
      0200B30100009100000036010000140000000300000001000000000000000000
      FFFFFF1F2E02000000000001001B00B2BFBCFEC3FBB3C6A3BA5B4D446174612E
      227363626A6C62225D2000000000FFFF00000000000200000001000000000B00
      B7C2CBCE5F474232333132000B00000002000000000008000000010002000000
      0000FFFFFF0000000002000000000000000000160B000006004D656D6F323700
      02002200000073010000210000001D00000003000F0001000000000000000000
      FFFFFF1F2E02000000000001000400A1EFA1EF00000000FFFF00000000000200
      000001000000000F0054696D6573204E657720526F6D616E000A000000020000
      0000000A0000000100020000000000FFFFFF0000000002000000000000000000
      A10B000006004D656D6F32380002004300000073010000740000001D00000003
      000F0001000000000000000000FFFFFF1F2E02000000000001000600D7DCBACF
      BCC600000000FFFF00000000000200000001000000000B00B7C2CBCE5F474232
      333132000B0000000200000000000A0000000100020000000000FFFFFF000000
      0002000000000000000000240C000006004D656D6F3239000200B70000007301
      0000650000001D00000003000F0001000000000000000000FFFFFF1F2E020000
      000000000000000000FFFF00000000000200000001000000000B00B7C2CBCE5F
      474232333132000C0000000200000000000A0000000100020000000000FFFFFF
      0000000002000000000000000000AB0C000006004D656D6F33330002000A0200
      0073010000280000001D00000003000F0001000000000000000000FFFFFF1F2E
      020000000000000000000000FFFF00000000000200000001000000000F005469
      6D6573204E657720526F6D616E000B0000000200000000000A00000001000200
      00000000FFFFFF00000000020000000000000000002E0D000006004D656D6F33
      370002005A02000073010000A40000001D00000003000F000100000000000000
      0000FFFFFF1F2E020000000000000000000000FFFF0000000000020000000100
      0000000B00B7C2CBCE5F474232333132000B0000000200000000000A00000001
      00020000000000FFFFFF0000000002000000000000000000B50D000006004D65
      6D6F3338000200220000004C010000210000001D00000003000F000100000000
      0000000000FFFFFF1F2E020000000000000000000000FFFF0000000000020000
      0001000000000F0054696D6573204E657720526F6D616E000900000002000000
      00000A0000000100020000000000FFFFFF00000000020000000000000000003C
      0E000006004D656D6F3339000200430000004C010000740000001D0000000300
      0F0001000000000000000000FFFFFF1F2E020000000000000000000000FFFF00
      000000000200000001000000000F0054696D6573204E657720526F6D616E0009
      0000000200000000000A0000000100020000000000FFFFFF0000000002000000
      000000000000BF0E000006004D656D6F3430000200B70000004C010000650000
      001D00000003000F0001000000000000000000FFFFFF1F2E0200000000000000
      00000000FFFF00000000000200000001000000000B00B7C2CBCE5F4742323331
      32000B0000000200000000000A0000000100020000000000FFFFFF0000000002
      000000000000000000460F000006004D656D6F3431000200A00100004C010000
      290000001D00000003000F0001000000000000000000FFFFFF1F2E0200000000
      00000000000000FFFF00000000000200000001000000000F0054696D6573204E
      657720526F6D616E000B0000000200000000000A0000000100020000000000FF
      FFFF0000000002000000000000000000CD0F000006004D656D6F34340002000A
      0200004C010000280000001D00000003000F0001000000000000000000FFFFFF
      1F2E020000000000000000000000FFFF00000000000200000001000000000F00
      54696D6573204E657720526F6D616E000B0000000200000000000A0000000100
      020000000000FFFFFF00000000020000000000000000005010000006004D656D
      6F34380002005A0200004C010000A40000001D00000003000F00010000000000
      00000000FFFFFF1F2E020000000000000000000000FFFF000000000002000000
      01000000000B00B7C2CBCE5F474232333132000B0000000200000000000A0000
      000100020000000000FFFFFF0000000002000000000000000000DF1000000600
      4D656D6F34370002002400000078000000500000001400000003000000010000
      00000000000000FFFFFF1F2E02000000000001000A00BACFCDACB5B5B0B8A3BA
      00000000FFFF00000000000200000001000000000B00B7C2CBCE5F4742323331
      32000B000000020000000000080000000100020000000000FFFFFF0000000002
      0000000000000000009E11000006004D656D6F35320002007900000091000000
      30010000140000000300000001000000000000000000FFFFFF1F2E0200000000
      0001003A005B4D446174612E226A67626D225D2F5B4946285B705F736367795D
      3D27272C205B4D446174612E226A67627A225D2C205B705F736367795D295D00
      000000FFFF00000000000200000001000000000B00B7C2CBCE5F474232333132
      000B000000020000000000080000000100020000000000FFFFFF000000000200
      00000000000000002D12000006004D656D6F353300020024000000AA00000050
      000000180000000300000001000000000000000000FFFFFF1F2E020000000000
      01000A00D3C3BBA7C3FBB3C6A3BA00000000FFFF000000000002000000010000
      00000B00B7C2CBCE5F474232333132000B000000020000000000080000000100
      020000000000FFFFFF0000000002000000000000000000C012000006004D656D
      6F353400020024000000D0000000780000001400000003000000010000000000
      00000000FFFFFF1F2E02000000000001000E00B2FAC6B7D0CDBAC5B9E6B8F1A3
      BA00000000FFFF00000000000200000001000000000B00B7C2CBCE5F47423233
      3132000B000000020000000000080000000100020000000000FFFFFF00000000
      020000000000000000004F13000006004D656D6F3535000200B3010000AA0000
      0058000000140000000300000001000000000000000000FFFFFF1F2E02000000
      000001000A00B2BFBCFED6D8C1BFA3BA00000000FFFF00000000000200000001
      000000000B00B7C2CBCE5F474232333132000B00000002000000000008000000
      0100020000000000FFFFFF0000000002000000000000000000E613000006004D
      656D6F3536000200B3010000D000000098000000140000000300000001000000
      000000000000FFFFFF1F2E02000000000001001200B9ABCBBEBCC6BBAECDEAB9
      A4C8D5C6DAA3BA00000000FFFF00000000000200000001000000000B00B7C2CB
      CE5F474232333132000B000000020000000000080000000100020000000000FF
      FFFF00000000020000000000000000007714000006004D656D6F31330002001C
      010000E8000000840000003000000003000F0001000000000000000000FFFFFF
      1F2E02000000000001000C00B2C4C1CFC3FBB3C6B9E6B8F100000000FFFF0000
      0000000200000001000000000B00B7C2CBCE5F474232333132000B0000000200
      000000000A0000000100020000000000FFFFFF00000000020000000000000000
      000315000006004D656D6F32340002001C01000024010000840000001D000000
      03000F0001000000000000000000FFFFFF1F2E02000000000001000E005B4D44
      6174612E22636C6A63225D00000000FFFF000000000002000000010000000004
      00CBCECCE5000A000000000000000000080000000100020000000000FFFFFF00
      000000020000000000000000008615000006004D656D6F33360002001C010000
      4C010000840000001D00000003000F0001000000000000000000FFFFFF1F2E02
      0000000000000000000000FFFF00000000000200000001000000000B00B7C2CB
      CE5F474232333132000B0000000200000000000A0000000100020000000000FF
      FFFF00000000020000000000000000000916000006004D656D6F35310002001C
      01000073010000840000001D00000003000F0001000000000000000000FFFFFF
      1F2E020000000000000000000000FFFF00000000000200000001000000000B00
      B7C2CBCE5F474232333132000B0000000200000000000A000000010002000000
      0000FFFFFF00000000020000000000000000009A16000005004D656D6F320002
      00C9010000E8000000410000003000000003000F0001000000000000000000FF
      FFFF1F2E02000000000002000600B5A52020D6D80D0400286B672900000000FF
      FF00000000000200000001000000000B00B7C2CBCE5F474232333132000B0000
      000200000000000A0000000100020000000000FFFFFF00000000020000000000
      000000003217000006004D656D6F3433000200C901000024010000410000001D
      00000043000F0001000000000000000000FFFFFF1F2E04000100000001000F00
      5B4D446174612E22646A6A7A225D2000000000FFFF0000000000020000000100
      0000000F0054696D6573204E657720526F6D616E000A00000002000000000009
      0000000100020000000000FFFFFF0000000002000000000000000000B9170000
      06004D656D6F3537000200C90100004C010000410000001D00000003000F0001
      000000000000000000FFFFFF1F2E020000000000000000000000FFFF00000000
      000200000001000000000F0054696D6573204E657720526F6D616E000B000000
      0200000000000A0000000100020000000000FFFFFF0000000002000000000000
      0000006718000006004D656D6F3538000200A0010000730100006A0000001D00
      000043000F0001000000000000000000FFFFFF1F2E030001000000010025005B
      73756D285B4D446174612E227A736C225D2A5B4D446174612E22646A6A7A225D
      295D2F3200000000FFFF00000000000200000001000000000F0054696D657320
      4E657720526F6D616E000B000000020000000000090000000100020000000000
      FFFFFF0000000002000000000000000000FC18000005004D656D6F3700020079
      0000007800000034010000140000000300000001000000000000000000FFFFFF
      1F2E02000000000001000D005B4D446174612E22646168225D00000000FFFF00
      000000000200000001000000000F0054696D6573204E657720526F6D616E000B
      000000020000000000080000000100020000000000FFFFFF0000000002000000
      0000000000009219000005004D656D6F380002009E000000D000000010010000
      140000000300000001000000000000000000FFFFFF1F2E02000000000001000E
      005B4D446174612E2263707868225D00000000FFFF0000000000020000000100
      0000000F0054696D6573204E657720526F6D616E000B00000002000000000008
      0000000100020000000000FFFFFF00000000020000000000000000001B1A0000
      06004D656D6F3131000200FE020000E80000003C0000003000000003000F0001
      000000000000000000FFFFFF1F2E02000000000001000400CDBCC6AC00000000
      FFFF00000000000200000001000000000B00B7C2CBCE5F474232333132000B00
      00000200000000000A0000000100020000000000FFFFFF000000000200000000
      00000000009E1A000006004D656D6F3134000200FE0200004C0100003C000000
      1D00000003000F0001000000000000000000FFFFFF1F2E020000000000000000
      000000FFFF00000000000200000001000000000B00B7C2CBCE5F474232333132
      000B0000000200000000000A0000000100020000000000FFFFFF000000000200
      0000000000000000211B000006004D656D6F3139000200FE020000730100003C
      0000001D00000003000F0001000000000000000000FFFFFF1F2E020000000000
      000000000000FFFF00000000000200000001000000000B00B7C2CBCE5F474232
      333132000B0000000200000000000A0000000100020000000000FFFFFF000000
      0002000000000000000000B91B000006004D656D6F3233000200720200006300
      0000A4000000140000000300000001000000000000000000FFFFFF1F2E020000
      00000001000F005A4A2F4553503730352D322833292D00000000FFFF00000000
      000200000001000000000F0054696D6573204E657720526F6D616E000B000000
      020000000000080000000100020000000000FFFFFF0000000002000000000000
      000000471C000006004D656D6F31300002000A020000E8000000280000003000
      000003000F0001000000000000000000FFFFFF1F2E02000000000002000200B3
      A40D0400286D6D2900000000FFFF00000000000200000001000000000B00B7C2
      CBCE5F474232333132000B0000000200000000000A0000000100020000000000
      FFFFFF0000000002000000000000000000D51C000006004D656D6F3230000200
      32020000E8000000280000003000000003000F0001000000000000000000FFFF
      FF1F2E02000000000002000200BFED0D0400286D6D2900000000FFFF00000000
      000200000001000000000B00B7C2CBCE5F474232333132000B00000002000000
      00000A0000000100020000000000FFFFFF000000000200000000000000000068
      1D000005004D656D6F390002003202000024010000280000001D00000043000F
      0001000000000000000000FFFFFF1F2E00000100000001000B005B4D44617461
      2E2277225D00000000FFFF00000000000200000001000000000F0054696D6573
      204E657720526F6D616E000A0000000200000000000900000001000200000000
      00FFFFFF0000000002000000000000000000EF1D000006004D656D6F32320002
      00320200004C010000280000001D00000003000F0001000000000000000000FF
      FFFF1F2E020000000000000000000000FFFF0000000000020000000100000000
      0F0054696D6573204E657720526F6D616E000B0000000200000000000A000000
      0100020000000000FFFFFF0000000002000000000000000000761E000006004D
      656D6F33310002003202000073010000280000001D00000003000F0001000000
      000000000000FFFFFF1F2E020000000000000000000000FFFF00000000000200
      000001000000000F0054696D6573204E657720526F6D616E000B000000020000
      0000000A0000000100020000000000FFFFFF0000000002000000000000000000
      011F000006004D656D6F333200020063020000AA000000180000001400000003
      00000001000000000000000000FFFFFF1F2E020000000000010002006B670000
      0000FFFF00000000000200000001000000000F0054696D6573204E657720526F
      6D616E000B000000020000000000080000000100020000000000FFFFFF000000
      0002000000000000000000901F000006004D656D6F3334000200B30100007800
      000054000000140000000300000001000000000000000000FFFFFF1F2E020000
      00000001000A00CDBC20202020BAC5A3BA00000000FFFF000000000002000000
      01000000000B00B7C2CBCE5F474232333132000B000000020000000000080000
      000100020000000000FFFFFF0000000002000000000000000000262000000600
      4D656D6F33350002000902000078000000DC0000001400000003000000010000
      00000000000000FFFFFF1F2E02000000000001000D005B4D446174612E227468
      31225D00000000FFFF00000000000200000001000000000F0054696D6573204E
      657720526F6D616E000B000000020000000000080000000100020000000000FF
      FFFF00000000020000000000000000008721000006004D656D6F343600020050
      020000D0000000D6000000140000000300000001000000000000000000FFFFFF
      1F2E0200000000000100D8005B4946285B705F736367795D3D27272C5B594541
      524F46285B4D446174612E226A68776744617465225D295D2C205B594541524F
      46285B705F6A687767446174655D295D295DC4EA5B4946285B705F736367795D
      3D27272C5B4D4F4E54484F46285B4D446174612E226A68776744617465225D29
      5D2C205B4D4F4E54484F46285B705F6A687767446174655D295D295DD4C25B49
      46285B705F736367795D3D27272C5B4441594F46285B4D446174612E226A6877
      6744617465225D295D2C205B4441594F46285B705F6A687767446174655D295D
      295DC8D500000000FFFF00000000000200000001000000000F0054696D657320
      4E657720526F6D616E000B000000020000000000080000000100020000000000
      FFFFFF00000000020000000000000000007E22000006004D656D6F3530000200
      24000000A401000008030000110000000300000001000000000000000000FFFF
      FF1F2E02000000000001006E00C8EDBCFED6C6D7F7A3BAA1BED0C5CFA2D6D0D0
      C4A1BF2020202020C9E8BCC6B5BCC8EBA3BA5B505F4644657369676E44617465
      5D2020202020B4F2D3A1C8D5C6DAA3BA5B444154455D20202020D6C6B1EDA3BA
      5B555345524E414D455D202020202020B5DA5B50414745235DD2B300000000FF
      FF00000000000200000001000000000F0054696D6573204E657720526F6D616E
      000A000000020000000000080000000100020000000000FFFFFF000000000200
      00000000000000001123000006004D656D6F343200020079000000AA00000034
      010000240000000300000001000000000000000000FFFFFF1F2E020000000000
      01000E005B4D446174612E2279666D63225D00000000FFFF0000000000020000
      0001000000000B00B7C2CBCE5F474232333132000B0000000200000000000800
      00000100020000000000FFFFFF0000000002000000000000000000A023000006
      004D656D6F343500020024000000900000005000000014000000030000000100
      0000000000000000FFFFFF1F2E02000000000001000A00BCD3B9A4B0E0D7E9A3
      BA00000000FFFF00000000000200000001000000000B00B7C2CBCE5F47423233
      3132000B000000020000000000080000000100020000000000FFFFFF00000000
      020000000000000001000F24000008005069637475726531000200FE02000024
      0100003C0000001D00000005000F0001000000000000000000FFFFFF1F2E0200
      00000000010015005B41444F5461626C65312E2270696374757265225D000000
      00FFFF000000000002000000010000000000000F240000FEFEFF010000000500
      20B1E4C1BF000000000100000005004D4461746100000000010000000B006672
      44424461746153657400000000FDFF0100000000FC0000000000000000000000
      00000000005800C0780655AC09E3406495E6564F91E340}
  end
  object frDBDataSet: TfrDBDataSet
    DataSet = MData
    Left = 731
    Top = 27
  end
  object StyleRepository: TcxStyleRepository
    Left = 112
    Top = 112
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clTeal
      TextColor = clTeal
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clPurple
      TextColor = clBlack
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor]
      Color = 14872561
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor]
      Color = 8453888
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16777088
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlue
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clPurple
      TextColor = clWhite
    end
    object cxStyle15: TcxStyle
      AssignedValues = [svColor]
      Color = 15843039
    end
    object cxStyle16: TcxStyle
      AssignedValues = [svColor]
      Color = clGreen
    end
    object cxStyle17: TcxStyle
      AssignedValues = [svColor]
      Color = 15509073
    end
    object cxStyle18: TcxStyle
      AssignedValues = [svColor]
      Color = 15635279
    end
    object cxStyle19: TcxStyle
    end
    object GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle1
      Styles.Content = cxStyle2
      Styles.ContentEven = cxStyle3
      Styles.ContentOdd = cxStyle4
      Styles.Inactive = cxStyle10
      Styles.IncSearch = cxStyle11
      Styles.Selection = cxStyle14
      Styles.FilterBox = cxStyle5
      Styles.Footer = cxStyle6
      Styles.Group = cxStyle7
      Styles.GroupByBox = cxStyle8
      Styles.Header = cxStyle9
      Styles.Indicator = cxStyle12
      Styles.Preview = cxStyle13
      BuiltIn = True
    end
  end
end
