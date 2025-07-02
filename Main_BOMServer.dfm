inherited Frm_BOMServer: TFrm_BOMServer
  Left = 302
  Top = 249
  Caption = 'Frm_BOMServer'
  ClientHeight = 495
  ClientWidth = 794
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image: TImage
    Width = 794
  end
  inherited L_title: TLabel
    Left = 26
    Top = 2
    Caption = #36890#29992#25968#25454#30331#35760
  end
  inherited P_back: TPanel
    Width = 794
    Height = 474
    inherited P_main: TPanel
      Width = 788
      Height = 468
      inherited Panel_down: TPanel
        Top = 426
        Width = 786
        Height = 40
        inherited Bevel_bass: TBevel
          Width = 786
        end
        object E_th1: TcxButtonEdit
          Left = 8
          Top = 6
          Width = 57
          Height = 21
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = E_th1PropertiesButtonClick
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
          Width = 73
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
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 786
        Height = 38
        Align = alTop
        ParentColor = True
        TabOrder = 1
        object ToolBar1: TToolBar
          Left = 1
          Top = 1
          Width = 784
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
          object ToolButton1: TToolButton
            Left = 0
            Top = 0
            AutoSize = True
            Caption = #36873#25321
            ImageIndex = 10
          end
          object ToolButton2: TToolButton
            Left = 35
            Top = 0
            AutoSize = True
            Caption = #25968#25454#22791#20221
            ImageIndex = 81
            OnClick = ToolButton2Click
          end
          object ToolButton3: TToolButton
            Left = 94
            Top = 0
            AutoSize = True
            Caption = #23548#20986
            ImageIndex = 42
            OnClick = ToolButton3Click
          end
          object TB_Delete: TToolButton
            Left = 129
            Top = 0
            Hint = #21024#38500
            AutoSize = True
            Caption = #21024#38500
            ImageIndex = 51
            ParentShowHint = False
            ShowHint = True
            OnClick = TB_DeleteClick
          end
          object TB_EXIT: TToolButton
            Left = 164
            Top = 0
            Cursor = crHandPoint
            AutoSize = True
            Caption = #36864#20986
            ImageIndex = 80
            OnClick = TB_EXITClick
          end
        end
      end
      object cxGrid: TcxGrid
        Left = 0
        Top = 38
        Width = 786
        Height = 388
        Align = alClient
        TabOrder = 2
        object cxGV: TcxGridDBTableView
          DataController.DataSource = DS_MData
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = #23567#35745#65306'0.0000'
              Kind = skSum
              FieldName = 'djjz'
              Column = djjz
            end
            item
              Format = #23567#35745#65306'0.0000'
              Kind = skSum
              FieldName = 'zz'
              Column = zz
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
          object LB: TcxGridDBColumn
            Caption = #31867#21035
            PropertiesClassName = 'TcxTextEditProperties'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Options.Sorting = False
            Width = 45
            DataBinding.FieldName = 'LB'
          end
          object TH: TcxGridDBColumn
            Caption = #22270#21495
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Options.Sorting = False
            Width = 121
            DataBinding.FieldName = 'TH'
          end
          object mc: TcxGridDBColumn
            Caption = #21517#31216
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Options.Sorting = False
            Width = 125
            DataBinding.FieldName = 'mc'
          end
          object clmcgg: TcxGridDBColumn
            Caption = #20840#31216
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 168
            DataBinding.FieldName = 'clmcgg'
          end
          object zsl: TcxGridDBColumn
            Caption = #24635#25968#37327
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Vert = taVCenter
            Properties.DisplayFormat = '0;-,0'
            Properties.ValidateOnEnter = True
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 41
            DataBinding.FieldName = 'zsl'
          end
          object djjz: TcxGridDBColumn
            Caption = #21333#20214#20928#37325
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Vert = taVCenter
            Properties.DecimalPlaces = 4
            Properties.ValidateOnEnter = True
            Properties.IsDisplayFormatAssigned = True
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Options.Sorting = False
            Width = 113
            DataBinding.FieldName = 'djjz'
          end
          object zz: TcxGridDBColumn
            Caption = #24635#37325#37327
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Vert = taVCenter
            Properties.DecimalPlaces = 4
            Properties.ValidateOnEnter = True
            Properties.IsDisplayFormatAssigned = True
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Options.Sorting = False
            Width = 122
            DataBinding.FieldName = 'zz'
          end
          object scgy: TcxGridDBColumn
            Caption = #29983#20135#24037#33402
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Alignment.Vert = taVCenter
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Options.Sorting = False
            Width = 85
            DataBinding.FieldName = 'scgy'
          end
          object img: TcxGridDBColumn
            Caption = #22270#29255
            PropertiesClassName = 'TcxImageProperties'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 81
            DataBinding.FieldName = 'img'
          end
          object Sel: TcxGridDBColumn
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Alignment.Vert = taVCenter
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 20
            DataBinding.FieldName = 'Sel'
          end
          object gg: TcxGridDBColumn
            Caption = #35268#26684
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Options.Sorting = False
            Width = 136
            DataBinding.FieldName = 'gg'
          end
          object slms: TcxGridDBColumn
            Caption = #25968#37327#25551#36848
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 53
            DataBinding.FieldName = 'slms'
          end
          object l: TcxGridDBColumn
            Caption = #38271
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Vert = taVCenter
            Properties.DecimalPlaces = 4
            Properties.ValidateOnEnter = True
            Properties.IsDisplayFormatAssigned = True
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Options.Sorting = False
            Width = 41
            DataBinding.FieldName = 'l'
          end
          object w: TcxGridDBColumn
            Caption = #23485
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Vert = taVCenter
            Properties.DecimalPlaces = 4
            Properties.ValidateOnEnter = True
            Properties.IsDisplayFormatAssigned = True
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Options.Sorting = False
            Width = 44
            DataBinding.FieldName = 'w'
          end
          object ssth: TcxGridDBColumn
            Caption = #25152#23646#22270#21495
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Options.Sorting = False
            Width = 103
            DataBinding.FieldName = 'ssth'
          end
          object SL: TcxGridDBColumn
            Caption = #25968#37327
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DecimalPlaces = 4
            Properties.ValidateOnEnter = True
            Properties.IsDisplayFormatAssigned = True
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Options.Sorting = False
            Width = 29
            DataBinding.FieldName = 'SL'
          end
          object clbh: TcxGridDBColumn
            Caption = #26448#26009#32534#21495
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Options.Sorting = False
            Width = 101
            DataBinding.FieldName = 'clbh'
          end
          object jldw: TcxGridDBColumn
            Caption = #35745#37327
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Options.Sorting = False
            Width = 29
            DataBinding.FieldName = 'jldw'
          end
          object TH2: TcxGridDBColumn
            Caption = #22270#21495'2'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Options.Sorting = False
            Width = 70
            DataBinding.FieldName = 'TH2'
          end
          object TH1: TcxGridDBColumn
            Caption = #22270#21495'1'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Options.Sorting = False
            Width = 35
            DataBinding.FieldName = 'TH1'
          end
          object FItemID: TcxGridDBColumn
            Caption = 'K3'#20869#30721
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Vert = taVCenter
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Options.Sorting = False
            Width = 42
            DataBinding.FieldName = 'FItemID'
          end
          object isedit: TcxGridDBColumn
            Caption = 'IsEdit'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.DisplayUnchecked = 'False'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Options.Sorting = False
            Width = 33
            DataBinding.FieldName = 'isedit'
          end
          object id: TcxGridDBColumn
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Options.Sorting = False
            Width = 20
            DataBinding.FieldName = 'id'
          end
          object FStatus: TcxGridDBColumn
            Caption = #23457#26680
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            DataBinding.FieldName = 'FStatus'
          end
        end
        object cxGL: TcxGridLevel
          GridView = cxGV
        end
      end
    end
  end
  object ImageList: TImageList
    Left = 19
    Top = 214
    Bitmap = {
      494C010154005900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000007001000001002000000000000070
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E2EFF100000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CC666600CC666600CC66
      6600CC666600CC666600CC666600CC666600CC666600CC666600CC666600CC66
      6600CC666600CC666600CC666600CC6666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E2EF
      F100E5E5E500CCCCCC00E5E5E500E2EFF1000000000000000000000000000000
      00000000000000000000000000000000000000000000CC666600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC6666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E2EFF100E5E5E500B2B2
      B200CC9999009966660099666600B2B2B200CCCCCC00E5E5E500E2EFF1000000
      00000000000000000000000000000000000000000000CC666600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000009900FFFFFF00CC6666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E5E5E500CC99990099666600CC99
      9900CC999900FFFFFF00996666009999990099999900B2B2B200E5E5E5000000
      00000000000000000000000000000000000000000000CC666600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFCCCC00FFCCCC00FFCCCC00FFCC
      CC00FFCCCC00FFCCCC00FFCCCC00CC6666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000099666600CC999900FFCC9900FFCC
      9900FFCCCC00FFFFFF0099666600336699003366990033669900E2EFF1000000
      00000000000000000000000000000000000000000000CC666600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC6666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000099666600FFCC9900FFCC9900FFCC
      9900FFCCCC00FFFFFF009966660066CCCC0066CCCC000099CC00FFFFFF00FFCC
      CC000000000000000000000000000000000000000000CC666600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000009900FFFFFF00FFCCCC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000009900FFFFFF00CC6666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE000000000000000000FEFEFE00000000000000
      00000000000000000000000000000000000099666600FFCC9900FFCC9900FFCC
      9900FFCCCC00FFFFFF009966660066CCCC0066CCFF003399CC00FFCCCC00CC66
      00000000000000000000000000000000000000000000CC666600FFCCCC00FFCC
      CC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCC
      CC00FFCCCC00FFCCCC00FFCCCC00CC6666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE0000000000FEFEFE0000000000FEFEFE00FEFEFE00000000000000
      00000000000000000000000000000000000099666600FFCC9900CC999900CC99
      6600FFCCCC00FFFFFF009966660099CCCC0099CCFF00B2B2B200FF660000CC66
      00000000000000000000000000000000000000000000CC666600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC6666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE0000000000FEFEFE00FEFEFE00FEFEFE00FEFEFE00000000000000
      00000000000000000000000000000000000099666600FFCC990099666600FFFF
      FF00FFCCCC00FFFFFF009966660099CCCC00C0C0C000CC660000CC660000CC66
      0000CC660000CC660000CC6600000000000000000000CC666600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC6666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE0000000000FEFEFE00FEFEFE00FEFEFE00FEFEFE00000000000000
      00000000000000000000000000000000000099666600FFCC9900CC9999009966
      6600FFCCCC00FFFFFF009966660000000000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC6600000000000000000000CC666600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000009900FFFFFF00FFCCCC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000009900FFFFFF00CC6666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE0000000000000000000000
      00000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFEFE00000000000000
      00000000000000000000000000000000000099666600FFCC9900FFCC9900FFCC
      9900FFCCCC00FFFFFF009966660000000000CC999900CC660000CC660000CC66
      0000CC660000CC660000CC6600000000000000000000CC666600FFCCCC00FFCC
      CC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCC
      CC00FFCCCC00FFCCCC00FFCCCC00CC6666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00000000000000
      00000000000000000000000000000000000099666600FFCC9900FFCC9900FFCC
      9900FFCCCC00FFFFFF0099666600CCCCCC00E2EFF100CC999900FF660000CC66
      00000000000000000000000000000000000000000000CC666600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC6666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE0000000000FEFE
      FE00FEFEFE0000000000FEFEFE00FEFEFE00FEFEFE00FEFEFE00000000000000
      00000000000000000000000000000000000099666600FFCC9900FFCC9900FFCC
      9900FFCCCC00FFFFFF009966660099CCCC000000000099CCCC00FFCC9900CC66
      00000000000000000000000000000000000000000000CC666600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC6666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE0000000000FEFEFE00FEFEFE00FEFEFE00FEFEFE00000000000000
      00000000000000000000000000000000000099666600CC999900FFCC9900FFCC
      9900FFCCCC00FFFFFF0099666600CCCCCC00000000003399CC0000000000FFCC
      99000000000000000000000000000000000000000000CC666600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC6666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE0000000000FEFE
      FE00FEFEFE0000000000FEFEFE00FEFEFE00FEFEFE00FEFEFE00000000000000
      00000000000000000000000000000000000000000000C0C0C000CC996600CC99
      9900CCCC9900FFFFFF00996666000099CC000099CC000099CC00000000000000
      00000000000000000000000000000000000000000000CC666600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000009900FFFFFF00FFCCCC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000009900FFFFFF00CC6666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE0000000000000000000000
      000000000000FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00000000000000
      000000000000000000000000000000000000000000000000000000000000CCCC
      CC00CC9999009966660099666600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CC666600CC666600CC66
      6600CC666600CC666600CC666600CC666600CC666600CC666600CC666600CC66
      6600CC666600CC666600CC666600CC6666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CC99990099330000CC9999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC9999009933000099330000993300000000000000000000993300009933
      0000993300009933000099330000993300009933000099330000993300009933
      0000993300000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CC9966009933000099330000CC9966000000000000000000000000000000
      00000000000000000000000000000000000000000000CC996600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      8000993300009933000099330000CC99990000000000CC996600FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900CC99
      6600CC9966009933000000000000000000000000000099330000993300009933
      0000993300000000000000000000000000000000000000000000993300009933
      0000993300009933000000000000000000000000000000000000000000009933
      000099330000CC660000CC660000993300000000000000000000000000000000
      00000000000000000000000000000000000000000000CC996600FFFFFF00E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E5008080800080808000808080009933
      00009933000099330000CC99990000000000CC996600CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      660099330000CC99660099330000000000000000000099330000CC660000CC66
      0000CC6600009933000000000000000000000000000099330000CC660000CC66
      0000CC660000993300000000000000000000000000000000000099330000CC66
      0000CC6600009933000099330000CC9966000000000000000000000000000000
      00000000000000000000000000000000000000000000CC996600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E5E5E50099996600FFFFCC00FFFFCC00FFFFFF00CCCC
      990099330000CC9999000000000000000000CC996600FFFFFF00FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC
      9900CC996600993300009933000000000000000000000000000099330000CC66
      0000CC660000CC660000993300000000000099330000CC660000CC660000CC66
      00009933000000000000000000000000000000000000CC99660099330000CC66
      000099330000CC99660000000000000000009933000099330000993300009933
      00009933000099330000993300000000000000000000CC996600FFFFFF00E5E5
      E500E5E5E500E5E5E50099999900F2EABF00FFFFCC00FFFFCC00FFFFCC00FFFF
      FF0066666600000000000000000000000000CC996600FFFFFF00FFCC9900FFCC
      9900FFCC9900FFCC990000CC000000990000FFCC99000000FF000000CC00FFCC
      9900CC996600CC99660099330000000000000000000000000000000000009933
      0000CC660000CC660000CC66000099330000CC660000CC660000CC6600009933
      0000000000000000000000000000000000000000000099330000CC6600009933
      0000CC99660000000000000000000000000099330000CC660000CC660000CC66
      0000CC660000CC660000993300000000000000000000CC996600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0099999900F2EABF00FFFFFF00F2EABF00FFFFCC00FFFF
      CC0066666600000000000000000000000000CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CC996600CC996600CC996600993300000000000000000000000000000000
      000099330000CC660000CC660000CC660000CC660000CC660000993300000000
      0000000000000000000000000000000000000000000099330000CC6600009933
      0000000000000000000000000000000000000000000099330000CC660000CC66
      0000CC660000CC660000993300000000000000000000CC996600FFFFFF00E5E5
      E500E5E5E500E5E5E50099999900F2EABF00FFFFFF00FFFFFF00F2EABF00FFFF
      CC0066666600000000000000000000000000CC996600FFFFFF00FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC
      9900CC996600CC996600CC996600993300000000000000000000000000000000
      00000000000099330000CC660000CC660000CC66000099330000000000000000
      0000000000000000000000000000000000000000000099330000CC6600009933
      0000CC99660000000000000000000000000000000000CC99660099330000CC66
      0000CC660000CC660000993300000000000000000000CC996600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0099999900F2EABF00F2EABF00F2EABF009999
      66008080800000000000000000000000000000000000CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600FFCC
      9900FFCC9900CC996600CC996600993300000000000000000000000000000000
      000099330000CC660000CC660000CC660000CC660000CC660000993300000000
      00000000000000000000000000000000000000000000CC99660099330000CC66
      000099330000CC99660000000000CC9966009933000099330000CC6600009933
      0000CC660000CC660000993300000000000000000000CC996600FFFFFF00E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500999999009999990099999900E5E5
      E500CC9966000000000000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC99
      6600FFCC9900FFCC9900CC996600993300000000000000000000000000009933
      0000CC660000CC660000CC66000099330000CC660000CC660000CC6600009933
      000000000000000000000000000000000000000000000000000099330000CC66
      0000CC660000993300009933000099330000CC660000CC66000099330000CC99
      660099330000CC660000993300000000000000000000CC996600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CC996600000000000000000000000000000000000000000000000000CC99
      6600FFFFFF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500FFFFFF00CC99
      6600CC996600CC9966009933000000000000000000000000000099330000CC66
      0000CC660000CC660000993300000000000099330000CC660000CC660000CC66
      0000993300000000000000000000000000000000000000000000000000009933
      000099330000CC660000CC660000CC6600009933000099330000000000000000
      00000000000099330000993300000000000000000000CC996600FFFFFF00E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500FFFFFF00CC996600CC996600CC99
      6600CC996600000000000000000000000000000000000000000000000000CC99
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CC9966000000000000000000000000000000000099330000CC660000CC66
      0000CC6600009933000000000000000000000000000099330000CC660000CC66
      0000CC6600009933000000000000000000000000000000000000000000000000
      0000CC996600993300009933000099330000CC99660000000000000000000000
      00000000000000000000000000000000000000000000CC996600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC996600E5E5E500CC99
      6600000000000000000000000000000000000000000000000000000000000000
      0000CC996600FFFFFF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500FFFF
      FF00CC9966000000000000000000000000000000000099330000993300009933
      0000993300000000000000000000000000000000000000000000993300009933
      0000993300009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CC996600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC996600CC9966000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC99660000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066CCCC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC996600CC996600CC9966000000000000000000000000000000
      00000000000066CCCC000099CC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300000000
      0000000000000000000000000000000000000000000000000000CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC9966000000000000000000000000000000000000000000CC99
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966000000000000000000000000000000
      0000000000000000000066CCCC000099CC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300009933
      0000000000000000000000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC9966000000000000000000000000000000000000000000CC99
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966000000000000000000000000000000
      0000000000000000000066CCCC0099FFFF000099CC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000993300009933000099330000993300009933000099330000993300009933
      0000993300000000000000000000000000000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500FFFFFF00CC9966000000000000000000000000000000000000000000CC99
      6600FFFFFF00FFFFFF00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00FFFFFF00FFFFFF00CC9966000000000000000000000000000000
      000066CCCC000099CC000099CC000099CC0066FFFF000099CC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300009933
      0000000000000000000000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC9966000000000000000000000099000000000000000000CC99
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966000000000000000000000000000000
      000066CCCC0099FFFF0066FFFF0066FFFF0066FFFF0066FFFF000099CC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300000000
      0000000000000000000000000000000000000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500FFFFFF00CC99660000000000000000000000CC000000990000000000CC99
      6600FFFFFF009933000099330000993300009933000099330000993300009933
      00009933000099330000FFFFFF00CC9966000000000000000000000000000000
      00000000000066CCCC0099FFFF0066FFFF000099CC0066CCCC0066CCCC0066CC
      CC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000FF000000CC0000009900CC99
      6600FFFFFF0099330000CC996600CC996600CC996600CC996600CC996600CC99
      6600CC99660099330000FFFFFF00CC9966000000000000000000000000000000
      00000000000066CCCC0099FFFF0066FFFF0066FFFF000099CC00000000000000
      000000000000000000000000000000000000CC996600CC996600CC996600CC99
      6600CC996600CC996600CC99660000000000000000003399CC00006699000066
      9900006699000066990000669900006699000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500FFFFFF00CC99660000000000000000000000FF000000CC0000000000CC99
      6600FFFFFF009933000099330000993300009933000099330000993300009933
      00009933000099330000FFFFFF00CC996600000000000000000066CCCC000099
      CC000099CC000099CC000099CC0099FFFF0066FFFF0066FFFF000099CC000000
      000000000000000000000000000000000000CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CC99660000000000000000003399CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF00006699000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000FF000000000000000000CC99
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC996600000000000000000066CCCC0099FF
      FF0099FFFF0066FFFF0066FFFF0066FFFF0066FFFF0066FFFF0066FFFF000099
      CC0000000000000000000000000000000000CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CC99660000000000000000003399CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF00006699000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500FFFFFF00CC9966000000000000000000000000000000000000000000CC99
      6600FFFFFF00FFFFFF00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00FFFFFF00FFFFFF00CC99660000000000000000000000000066CC
      CC0099FFFF0099FFFF0066FFFF0066FFFF000099CC0066CCCC0066CCCC0066CC
      CC0000000000000000000000000000000000CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CC99660000000000000000003399CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF00006699000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC9966000000000000000000000000000000000000000000CC99
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC99660000000000000000000000000066CC
      CC0099FFFF0099FFFF0099FFFF0066FFFF0066FFFF000099CC00000000000000
      000000000000000000000000000000000000CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CC99660000000000000000003399CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF00006699000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500FFFFFF00CC996600CC99
      6600CC996600CC9966000000000000000000000000000000000000000000CC99
      6600FFFFFF00FFFFFF00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00FFFFFF00FFFFFF00CC9966000000000000000000000000000000
      000066CCCC0099FFFF0099FFFF0099FFFF0066FFFF0066FFFF000099CC000000
      000000000000000000000000000000000000CC996600FFFFFF00FFFFFF00CC99
      6600CC996600CC996600CC99660000000000000000003399CC0099FFFF0099FF
      FF003399CC003399CC003399CC003399CC000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC996600E5E5
      E500CC996600000000000000000000000000000000000000000000000000CC99
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966000000000000000000000000000000
      000066CCCC0099FFFF0099FFFF0099FFFF0066FFFF0066FFFF0066FFFF000099
      CC0000000000000000000000000000000000CC996600FFFFFF00FFFFFF00CC99
      6600E5E5E500CC9966000000000000000000000000003399CC0099FFFF0099FF
      FF003399CC00CCFFFF0000669900000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC996600CC99
      660000000000000000000000000000000000000000000000000000000000CC99
      6600FFFFFF00FFFFFF00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00FFFFFF00FFFFFF00CC9966000000000000000000000000000000
      00000000000066CCCC0099FFFF0099FFFF0099FFFF0066FFFF0066FFFF0066FF
      FF000099CC00000000000000000000000000CC996600FFFFFF00FFFFFF00CC99
      6600CC996600000000000000000000000000000000003399CC0099FFFF0099FF
      FF003399CC000066990000000000000000000000000000000000CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC9966000000
      000000000000000000000000000000000000000000000000000000000000CC99
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966000000000000000000000000000000
      00000000000066CCCC0066CCCC0066CCCC0066CCCC0066CCCC0066CCCC0066CC
      CC0066CCCC0066CCCC000000000000000000CC996600CC996600CC996600CC99
      660000000000000000000000000000000000000000003399CC003399CC003399
      CC003399CC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC996600CC996600CC9966000000000000000000000000000000
      0000000000009933000099330000CC66000099330000CC660000993300000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003399CC003399CC003399
      CC0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CC
      FF0066CCFF0066CCFF0066CCFF0066CCFF000000000000000000000000000000
      000000000000CC99660099330000993300009933000099330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099330000CC66000099330000CC66000099330000993300000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000066
      99000066990000669900000000000000000066CCFF0066CCFF003399CC003399
      CC003399CC0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CC
      FF0066CCFF0066CCFF0066CCFF0066CCFF000000000000000000000000000000
      0000CC996600FFFFFF00FFCC9900FFCC9900CC996600CC996600993300000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009933000099330000CC66000099330000CC660000993300000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000006699003399
      CC003399CC0066CCFF00006699000000000066CCFF0066CCFF0066CCFF000099
      0000008000000080000066CCFF00336699003366990033669900336699003399
      CC0066CCFF0066CCFF0066CCFF00336699000000000000000000000000000000
      0000CC9966009933000099330000993300009933000099330000993300000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009999990099330000993300009933000099330000999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000006699003399CC000066
      990000CCFF0066CCFF00006699000000000066CCFF0066CCFF0066CCFF000099
      000000FF00000080000066CCFF003399CC006699CC006699CC003399CC0066CC
      FF0066CCFF0066CCFF0066CCFF0066CCFF00000000000000000000000000CC99
      6600FFFFFF00FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900CC9966009933
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900FFFFFF00FFCCCC0066666600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000006699003399CC000066990000CC
      FF003399CC0066CCFF00006699000000000066CCFF0066CCFF0066CCFF000099
      000000FF00000080000066CCFF0066CCFF003399CC003399CC0066CCFF0066CC
      FF00336699003366990066CCFF0066CCFF000000000000000000CC996600FFFF
      FF00CC996600CC996600CC996600CC996600CC996600FFCC9900CC996600CC99
      6600993300000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900FFFFFF00FFCCCC0066666600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000669900006699003399CC000066990000CCFF003399
      CC0066CCFF0000669900000000000000000066CCFF0066CCFF0066CCFF000099
      000000FF000000FF00000080000066CCFF0066CCFF0066CCFF0066CCFF0066CC
      FF0066CCFF0066CCFF0066CCFF0066CCFF0000000000CC996600FFFFFF00FFCC
      9900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFCC9900FFCC9900CC99
      6600993300000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900FFFFFF00FFCCCC0066666600000000000000
      0000000000000000000000000000000000000000000000000000006699000066
      990000669900006699003399CC003399CC000066990000CCFF003399CC0066CC
      FF000066990000000000000000000000000066CCFF0066CCFF0066CCFF000099
      000000FF000033CC330000FF00000080000066CCFF0066CCFF0066CCFF0066CC
      FF0066CCFF0066CCFF0066CCFF0066CCFF0000000000CC996600FFFFFF00FFCC
      9900CC996600CC996600CC996600CC996600CC996600FFCC9900FFCC9900CC99
      6600CC9966009933000000000000000000000000000000000000000000000000
      0000000000000000000099999900FFFFFF00FFCCCC0066666600000000000000
      000000000000000000000000000000000000000000000066990000CCFF0000CC
      FF0000CCFF0000CCFF00006699000066990000CCFF003399CC0066CCFF000066
      990000000000000000000000000000000000FFCC990066CC66000080000000FF
      000000FF00000099000000FF000000FF000000990000FFCC9900FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC990000000000CC996600FFFFFF00FFCC
      9900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFCC9900FFCC9900CC99
      6600CC9966009933000000000000000000000000000000000000000000000000
      0000000000000000000099999900FFFFFF00FFCCCC0066666600000000000000
      0000000000000000000000000000000000000066990000CCFF0000CCFF003399
      CC0000CCFF0000CCFF0000CCFF0000CCFF003399CC0066CCFF00006699000000
      000000000000000000000000000000000000FFCC99000099000000FF00000099
      000000FF0000008000000099000000FF000000990000FFCC9900FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC990000000000CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600993300009933000000000000000000000000000000000000000000000000
      0000000000000000000066666600666666006666660066666600000000000000
      0000000000000000000000000000666666000066990000CCFF003399CC0000CC
      FF003399CC0000CCFF0000CCFF0000CCFF0066CCFF0000669900000000000000
      000000000000000000000000000000000000FFCC99000099000000FF00000099
      000000FF00000080000066CC66000099000066CC6600FFCC9900FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC9900CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC99
      6600CC9966009933000000000000000000000000000066666600666666000000
      0000000000006666660099999900999999009999990099999900666666000000
      0000000000000000000066666600666666000066990000CCFF0000CCFF003399
      CC0000CCFF003399CC0000CCFF0000CCFF0066CCFF0000669900000000000000
      000000000000000000000000000000000000FFCC99000099000000FF00000099
      000000FF000000800000FFCC9900FFCC9900FFCC9900FFCC9900FFCC990000CC
      FF0000CCFF0000CCFF00FFCC9900FFCC9900CC996600FFCC9900FFCC990099CC
      CC000099CC00FFCC9900FFCC9900FFCC990099CCCC000099CC00FFCC9900FFFF
      FF00CC996600CC99660099330000000000009999990099999900999999006666
      66006666660099999900CCCCCC00CCCCCC00CCCCCC0099999900666666006666
      66006666660066666600CCCCCC00666666000066990000CCFF0000CCFF0000CC
      FF003399CC0000CCFF003399CC0000CCFF0066CCFF0000669900000000000000
      000000000000000000000000000000000000FFCC990066CC6600009900000099
      000000FF000000800000FFCC9900FFCC9900FFCC9900FFCC990000CCFF0066FF
      FF0066FFFF0066FFFF0000CCFF00FFCC990000000000CC996600FFCC990099CC
      CC0000FFFF000099CC00CC996600FFCC990099CCCC0000FFFF000099CC00FFCC
      9900FFFFFF00CC996600993300000000000099999900FFFFFF00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00999999009999
      990099999900CCCCCC0066666600000000000066990000CCFF00006699000066
      990000CCFF003399CC0000CCFF003399CC0066CCFF0000669900000000000000
      000000000000000000000000000000000000FFCC9900FFCC9900FFCC99000099
      000000FF000000800000FFCC9900FFCC9900FFCC9900FFCC990000CCFF0066FF
      FF0066FFFF0066FFFF0000CCFF00FFCC99000000000000000000CC99660099CC
      CC0000FFFF000099CC00CC996600CC99660099CCCC0000FFFF000099CC00CC99
      6600CC996600CC996600000000000000000099999900FFFFFF00CCCCCC00CCCC
      CC00FFFFFF00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC009999990000000000000000000066990099FFFF003399CC000066
      990000CCFF0000CCFF003399CC0000CCFF0099FFFF0000669900000000000000
      000000000000000000000000000000000000FFCC9900FFCC9900FFCC990066CC
      66000099000066CC6600FFCC9900FFCC9900FFCC9900FFCC990000CCFF0066FF
      FF0066FFFF0066FFFF0000CCFF00FFCC990000000000000000000000000099CC
      CC0000FFFF000099CC00000000000000000099CCCC0000FFFF000099CC000000
      00000000000000000000000000000000000099999900FFFFFF00FFFFFF009999
      990099999900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009999
      990099999900000000000000000000000000000000000066990099FFFF0066CC
      FF0066CCFF0066CCFF0066CCFF0099FFFF000066990000000000000000000000
      000000000000000000000000000000000000FFCC9900FFCC9900FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC990000CC
      FF0000CCFF0000CCFF00FFCC9900FFCC990000000000000000000000000099CC
      CC0000FFFF000099CC00000000000000000099CCCC0000FFFF000099CC000000
      0000000000000000000000000000000000000000000099999900999999000000
      0000000000009999990099999900999999009999990099999900999999000000
      0000000000000000000000000000000000000000000000000000006699000066
      9900006699000066990000669900006699000000000000000000000000000000
      000000000000000000000000000000000000FFCC9900FFCC9900FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC99000000000000000000000000000000
      000099CCCC000099CC0000000000000000000000000099CCCC000099CC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC996600CC99
      6600000000000000000000000000000000003333330033333300999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000066666600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000099CC0000669900006699000066
      9900006699000066990000669900006699000066990000669900006699000066
      9900006699000066990000669900006699000000000000000000000000000000
      00000000000000000000000000000000000000000000CC996600FFFFFF00FFFF
      FF00CC996600000000000000000000000000CCCCCC0066666600333333003333
      3300000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CCCCCC00666666000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000099CC0099FFFF000099CC0099FF
      FF000099CC0099FFFF000099CC0099FFFF000099CC0099FFFF000099CC0099FF
      FF000099CC0099FFFF000099CC0099FFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000CC996600FFFFFF00FFFF
      FF00CC9966000000000000000000000000000000000066666600666666006666
      6600333333009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CCCCCC006666
      66000000000000000000FF990000993300009933000099330000000000000000
      0000000000000000000000000000000000000099CC0099FFFF000099CC0099FF
      FF000099CC0099FFFF000099CC0099FFFF000099CC0099FFFF000099CC0099FF
      FF000099CC0099FFFF000099CC0099FFFF000000000000000000000000000000
      0000CC996600000000000000000000000000CC996600FFFFFF00FFFFFF00CC99
      66000000000000000000000000000000000000000000CCCCCC00666666006666
      6600666666003333330000999900000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CCCC
      CC0066666600FF990000CC660000CC660000CC660000CC660000993300000000
      0000000000000000000000000000000000000099CC0099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF000099CC0099FFFF000000000000000000000000000000
      0000CC996600CC9966000000000000000000CC996600FFFFFF00FFFFFF00CC99
      6600000000000000000000000000000000000000000000000000666666006666
      660099FFFF0099CCCC0099CCCC00009999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF990000CC660000FF990000CC660000CC660000CC660000993300000000
      0000000000000000000000000000000000000099CC0099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF000000000000000000000000000000
      0000CC996600FFFFFF00CC996600CC996600FFFFFF00FFFFFF00CC9966000000
      0000000000000000000000000000000000000000000000000000CCCCCC008080
      8000CCFFFF0099FFFF0099CCCC0099CCCC000099990099CCCC00000000000000
      000000000000000000000000000000000000000000000000000000000000FF99
      0000CC660000FF990000FF990000FF990000CC660000CC660000993300000000
      0000000000000000000000000000000000000099CC0099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF000099
      CC000099CC000099CC0099FFFF0099FFFF000000000000000000000000000000
      0000CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC9966000000
      00000000000000000000000000000000000000000000000000000000000066CC
      CC00FFFFFF00CCFFFF0099FFFF0099FFFF0099CCCC0066CCCC00009999000000
      000000000000000000000000000000000000000000000000000000000000CC66
      0000FF996600FF996600FF990000FF990000CC660000CC660000993300000000
      0000000000000000000000000000000000000099CC0099FFFF0099FFFF000099
      CC000099CC0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF000099CC0099FFFF0099FFFF0099FFFF000000000000000000000000000000
      0000CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC996600CC99
      6600CC996600CC996600000000000000000000000000000000000000000066CC
      CC00FFFFFF00CCFFFF00CCFFFF0099FFFF0099FFFF0099CCCC0099CCCC000099
      990066CCCC00000000000000000000000000000000000000000000000000CC66
      0000FFFFFF00FFFFFF00FF996600CC660000FF990000CC660000CC6600009933
      0000000000000000000000000000000000000099CC0099FFFF0099FFFF000099
      CC000099CC0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF000099CC0099FFFF0099FFFF0099FFFF000000000000000000000000000000
      0000CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CC9966000000000000000000000000000000000000000000000000000000
      000099CCCC00FFFFFF00CCFFFF00CCFFFF0099FFFF0099FFFF0099CCCC00FFCC
      CC0099330000993300000000000000000000000000000000000000000000CC66
      0000FF996600FF996600CC660000FFFFFF00FF996600FF990000CC6600009933
      0000993300009933000099330000000000000099CC0099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF000099
      CC000099CC0099FFFF0099FFFF0099FFFF000000000000000000000000000000
      0000CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC99
      6600000000000000000000000000000000000000000000000000000000000000
      000066CCCC00FFFFFF00CCFFFF00CCFFFF00FFCCCC00CC660000CC6600009933
      0000993300009933000099330000000000000000000000000000000000000000
      0000CC660000CC660000CC660000CC660000FFFFFF00FF99660099330000CC66
      0000CC660000CC660000CC660000993300000099CC0099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF000099CC0099FFFF0099FFFF0099FFFF000000000000000000000000000000
      0000CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC9966000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099CCCC00FFFFFF00CCFFFF00CC660000CC660000CC660000CC66
      0000993300009933000099330000993300000000000000000000000000000000
      000000000000000000000000000000000000CC660000CC660000CC660000FF99
      0000CC660000CC660000CC660000993300000099CC0099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF000000000000000000000000000000
      0000CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC996600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066CCCC00FFFFFF00FFCCCC00CC660000CC660000CC660000CC66
      0000CC6600009933000099330000993300000000000000000000000000000000
      00000000000000000000000000000000000000000000CC660000FF996600FF99
      0000FF990000CC660000CC660000993300000099CC0099FFFF0099FFFF0099FF
      FF000099CC0099FFFF0099FFFF0099FFFF000099CC0099FFFF0099FFFF0099FF
      FF000099CC0099FFFF0099FFFF0099FFFF000000000000000000000000000000
      0000CC996600FFFFFF00FFFFFF00FFFFFF00CC99660000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF990000FF990000CC660000CC660000CC660000CC66
      0000CC660000CC66000099330000993300000000000000000000000000000000
      00000000000000000000000000000000000000000000CC660000FF996600FF99
      6600FF990000CC660000CC660000FF9900000099CC0099FFFF000099CC0099FF
      FF000099CC0099FFFF000099CC0099FFFF000099CC0099FFFF000099CC0099FF
      FF000099CC0099FFFF000099CC0099FFFF000000000000000000000000000000
      0000CC996600FFFFFF00FFFFFF00CC9966000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CC660000FF990000FF990000CC660000CC660000CC66
      0000CC660000CC660000CC660000993300000000000000000000000000000000
      00000000000000000000000000000000000000000000CC660000FFFFFF00FF99
      6600CC660000CC660000FF990000000000000099CC000099CC000099CC000099
      CC000099CC000099CC000099CC000099CC000099CC000099CC000099CC000099
      CC000099CC000099CC000099CC000099CC000000000000000000000000000000
      0000CC996600FFFFFF00CC996600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CC660000FF990000FF990000CC660000CC66
      0000CC660000CC660000CC660000CC6600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC660000CC66
      0000CC660000FF99000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CC996600CC99660000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000033333300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000099330000000000FF000000FF663300FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      00000099330000000000FF000000FF663300FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003333330066666600666666006666
      6600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000009933000099
      3300009933000099330000000000FF663300FF663300FF663300FF000000FF00
      0000003300000000000000000000000000000000000000000000009933000099
      3300009933000099330000000000FF663300FF663300FF663300FF000000FF00
      00000033000000000000000000000000000000000000000000003399CC000066
      9900006699000066990000669900006699000066990000669900006699000066
      9900006699000066990000000000000000000000000099999900CCCCCC009999
      9900666666006666660000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000009933000099330066FF
      330066FF330033CC33000099330000000000FF663300FF663300006600000066
      00000066000000660000000000000000000000000000009933000099330066FF
      330066FF330033CC33000099330000000000FF663300FF663300006600000066
      00000066000000660000000000000000000000000000000000003399CC0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0099FFFF000066990000000000000000000000000099999900CCCCCC00CCCC
      CC00999999009999990066666600666666000000000000000000000000000000
      000000000000000000000000000000000000000000000099330066FF330066FF
      330066FF330033CC33000099330000000000FF99000000660000009933000099
      330000660000006600000000000000000000000000000099330066FF330066FF
      330066FF330033CC33000099330000000000FF99000000660000009933000099
      33000066000000660000000000000000000000000000000000003399CC0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0099FFFF00006699000000000000000000000000000000000099999900CCCC
      CC00CCCCCC009999990099999900999999006666660066666600000000000000
      00000000000000000000000000000000000000993300CCFFCC00CCFFCC00CCFF
      CC0033CC33000066000000660000FF9900000066000033CC3300009933000099
      33000066000000660000006600000000000000993300CCFFCC00CCFFCC00CCFF
      CC0033CC33000066000000660000FF9900000066000033CC3300009933000099
      33000066000000660000006600000000000000000000000000003399CC0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0099FFFF00006699000000000000000000000000000000000099999900E5E5
      E500CCCCCC00CCCCCC0099999900999999009999990099330000663300006633
      0000000000000000000000000000000000000099330000993300FFFFFF0033CC
      330000660000FF990000FFCC3300FFCC330000660000CCFFCC0033CC33000099
      3300006600000066000000660000000000000099330000993300FFFFFF0033CC
      330000660000FF990000FFCC3300FFCC330000660000CCFFCC0033CC33000099
      33000066000000660000006600000000000000000000000000003399CC0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0099FFFF000066990000000000000000000000000000000000000000009999
      9900E5E5E500CCCCCC00CCCCCC00999999009933000099330000993300009933
      000066330000000000000000000000000000FF663300FFFFCC00009933000099
      3300FF990000FFCC3300FFCC3300FFCC3300FF99000000660000CCFFCC0033CC
      330000993300006600000066000000000000FF663300FFFFCC00009933000099
      3300FF990000FFCC3300FFCC3300FFCC3300FF99000000660000CCFFCC0033CC
      33000099330000660000006600000000000000000000000000003399CC0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0099FFFF000066990000000000000000000000000000000000000000009999
      9900FFFFFF00E5E5E500CCCCCC00993300009933000099330000993300009933
      000099330000663300000000000000000000FF663300FFFFCC00FFFF3300FF99
      000000663300FF663300FF990000FFCC3300FF990000FF663300FF6633000066
      000033CC3300009933000066000000000000FF663300FFFFCC00FFFF3300FF99
      000000663300FF663300FF990000FFCC3300FF990000FF663300FF6633000066
      000033CC330000993300006600000000000000000000000000003399CC0099FF
      FF0099FFFF0099FFFF0099FFFF0099CCCC0099FFFF0099FFFF0099FFFF0099FF
      FF0099FFFF000066990000000000000000000000000000000000000000000000
      000099999900FFFFFF0099330000CC6633009933000099330000993300009933
      00009933000099330000663300000000000000000000FF663300006633000066
      330033CC330000663300FF663300FFCC3300FFCC3300FF990000FF663300FF66
      33000066000000660000000000000000000000000000FF663300006633000066
      330033CC330000663300FF663300FFCC3300FFCC3300FF990000FF663300FF66
      33000066000000660000000000000000000000000000000000003399CC0099FF
      FF0099FFFF0099FFFF0099FFFF006666660099CCCC0099CCCC0099FFFF0099FF
      FF0099FFFF000066990000000000000000000000000000000000000000000000
      00009999990099330000CC66330099330000CC66330099330000993300009933
      0000993300009933000099330000663300000000000000993300FFFFFF00CCFF
      CC0033CC330033CC330000663300FF990000FF990000FFCC3300FF663300FF66
      3300FF663300FF66330000000000000000000000000000993300FFFFFF00CCFF
      CC0033CC330033CC330000663300FF990000FF990000FFCC3300FF663300FF66
      3300FF663300FF663300000000000000000000000000000000003399CC0099FF
      FF0099FFFF0099FFFF0099FFFF0099CCCC00FF000000FF00000099CCCC0099FF
      FF0099FFFF000066990000000000000000000000000000000000000000000000
      0000000000009933000099330000CC66330099330000CC663300993300009933
      000099330000993300009933000099330000000000000000000000993300FFFF
      FF00CCFFCC0033CC330033CC33000066330000663300FF990000FF663300FF66
      3300FF663300800000000000000000000000000000000000000000993300FFFF
      FF00CCFFCC0033CC330033CC33000066330000663300FF990000FF663300FF66
      3300FF66330080000000000000000000000000000000000000003399CC003399
      CC003399CC003399CC003399CC00FF000000FF000000FFFFFF00FF0000003399
      CC003399CC003399CC0000000000000000000000000000000000000000000000
      000000000000993300009933000099330000CC66330099330000CC6633009933
      0000993300009933000099330000999999000000000000000000000000000099
      3300FFFFFF00CCFFCC00CCFFCC0033CC33000099330000663300FF663300FF66
      3300FF6633000000000000000000000000000000000000000000000000000099
      3300FFFFFF00CCFFCC00CCFFCC0033CC33000099330000663300FF663300FF66
      3300FF6633000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000993300009933000099330000CC66330099330000CC66
      3300993300009933000099999900999999000000000000000000000000000000
      00000099330000993300FFFFFF0033CC330033CC330000993300FF663300FF66
      3300000000000000000000000000000000000000000000000000000000000000
      00000099330000993300FFFFFF0033CC330033CC330000993300FF663300FF66
      3300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000993300009933000099330000CC6633009933
      000099330000CCCCCC00CCCCCC00999999000000000000000000000000000000
      0000000000000000000000993300009933000099330000993300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000993300009933000099330000993300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009933000099330000993300009933
      0000E5E5E500E5E5E500CCCCCC00CCCCCC000000000000000000000000000000
      0000000000008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CC996600993300009933000099330000CC996600000000000000
      00000000000000000000000000000000000000000000FF990000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC6600000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000B2B2B20099999900B2B2B2008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CC9966009933000000000000000000000000000099330000CC9966000000
      000000000000000000000000000000000000FF990000CC660000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC66
      000000000000000000000000000000000000FFCC9900CC996600CC996600CC99
      6600CC996600CCCCCC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000B2B2B20099999900FFFFFF00FFFFFF00B2B2B200B2B2B200808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000993300000000000000000000000000000000000000000000993300000000
      000000000000000000000000000000000000FF990000CC660000E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500CC66
      000000000000000000000000000000000000FFCC9900F2EABF00F2EABF00CCCC
      FF00E5E5E500CC996600CC996600CCCCCC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      800099999900FFFFFF009999990099999900FFFFFF00FFFFFF00B2B2B200B2B2
      B200808080008080800000000000000000000000000000000000000000000000
      00009933000000000000CC99660099330000CC99660000000000993300000000
      000000000000000000000000000000000000FF990000CC660000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC66
      000000000000000000000000000000000000FFCC9900FFFFFF00FFFFFF00CCCC
      FF00FFFFFF00FFFFFF00E5E5E500CC9966000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000B2B2
      B20099999900FFFFFF0080808000B2B2B20099999900FFFFFF00FFFFFF00FFFF
      FF00B2B2B200B2B2B20080808000000000000000000000000000000000000000
      0000993300000000000099330000000000009933000000000000993300000000
      000000000000000000000000000000000000FF990000CC660000E5E5E500E5E5
      E500E5E5E500E5E5E500CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CC66
      000000000000000000000000000000000000FFCC9900F2EABF00F2EABF00CCCC
      FF00F2EABF00F2EABF00F2EABF00CC996600CCCCCC0000000000000000000000
      0000000000000000000000000000000000000000000000000000808080009999
      9900FFFFFF00B2B2B20080808000B2B2B20099999900FFFFFF00808080008080
      8000FFFFFF00FFFFFF0080808000000000000000000000000000000000000000
      0000993300000000000099330000000000009933000000000000993300000000
      000000000000000000000000000000000000FF990000CC660000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500CC66
      000000000000000000000000000000000000FFCC9900FFFFFF00CCCCCC00CCCC
      FF00FFFFFF00FFFFFF00FFFFFF00E5E5E500CC996600CCCCCC00000000000000
      0000000000000000000000000000000000000000000080808000B2B2B2009999
      9900FFFFFF00B2B2B200E5E5E500B2B2B200FFFFFF00FFFFFF00FFFFFF00B2B2
      B20080808000FFFFFF0080808000000000000000000000000000000000000000
      0000993300000000000099330000000000009933000000000000993300000000
      000000000000000000000000000000000000FF990000CC660000E5E5E500E5E5
      E500E5E5E500CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CC66
      000000000000000000000000000000000000FFCC9900F2EABF00F2EABF00CCCC
      FF00F2EABF00F2EABF00F2EABF00F2EABF00E5E5E500CC996600CC996600CC99
      6600CCCCCC00000000000000000000000000000000008080800099999900FFFF
      FF00B2B2B200E5E5E500E5E5E500B2B2B200FFFFFF008080800080808000FFFF
      FF00FFFFFF00FFFFFF0080808000000000000000000000000000000000000000
      0000993300000000000099330000000000009933000000000000993300000000
      000000000000000000000000000000000000FF990000CC660000FFFFFF00FFFF
      FF00FFFFFF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500CC66
      000000000000000000000000000000000000FFCC9900FFFFFF00FFFFFF00CCCC
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E5E5
      E500CC996600CC996600CC996600CCCCCC0080808000B2B2B20099999900FFFF
      FF00FFFFFF00FFFFFF00B2B2B200FFFFFF00FFFFFF00FFFFFF00B2B2B2008080
      8000FFFFFF008080800000000000000000000000000000000000000000000000
      0000993300000000000099330000000000009933000000000000993300000000
      000000000000000000000000000000000000FF990000CC660000E5E5E500E5E5
      E500CCCCCC00CCCCCC00CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC660000FFCC9900F2EABF00F2EABF00CCCC
      FF00F2EABF00F2EABF00F2EABF00F2EABF00F2EABF00F2EABF00F2EABF00F2EA
      BF00F2EABF00F2EABF00E5E5E500CC9966008080800099999900FFFFFF00FFFF
      FF009933000099330000FFFFFF00FFFFFF008080800080808000FFFFFF00FFFF
      FF00FFFFFF008080800000000000000000000000000000000000000000000000
      0000993300000000000099330000000000009933000000000000993300000000
      000000000000000000000000000000000000FF990000CC660000FFFFFF00FFFF
      FF00E5E5E500CC660000FF990000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC660000FFCC9900FFFFFF00FFFFFF00CCCC
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC996600000000009999990099999900FFFF
      FF00FFFFFF00B2B2B2009933000099330000FFFFFF00FFFFFF0080808000FFFF
      FF00808080000000000000000000000000000000000000000000000000000000
      0000993300000000000099330000000000009933000000000000993300000000
      000000000000000000000000000000000000FF990000CC660000E5E5E500CCCC
      CC00FF990000FF990000FF990000FF990000FF990000CC660000CC660000CC66
      0000CC660000CC660000CC66000000000000FFCC9900F2EABF00F2EABF00CCCC
      FF00F2EABF00F2EABF00F2EABF00F2EABF00F2EABF00F2EABF00F2EABF00F2EA
      BF00F2EABF00F2EABF00F2EABF00CC9966000000000000000000000000009999
      990099999900FFFFFF00FFFFFF00B2B2B2009933000099330000FFFFFF00FFFF
      FF00808080000000000000000000000000000000000000000000000000000000
      0000993300000000000099330000000000009933000000000000993300000000
      000000000000000000000000000000000000FF990000CC660000FFFFFF00FF99
      0000FF996600FF996600FF990000FF990000FF990000FF990000FF990000CC66
      0000CC660000CC6600000000000000000000FFCC9900FFFFFF00CCCCCC00CCCC
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966000000000000000000000000000000
      0000000000009999990099999900FFFFFF00FFFFFF00B2B2B200FFFFFF008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000000000000000000000000000993300000000
      000000000000000000000000000000000000FF990000CC660000FF990000FF99
      6600FF996600FF996600FF996600FF996600FF990000FF990000FF990000FF99
      0000CC660000000000000000000000000000FFCC9900FFFFFF00FFFFFF00CCCC
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966000000000000000000000000000000
      00000000000000000000000000009999990099999900FFFFFF00FFFFFF008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000000000000000000000000000993300000000
      000000000000000000000000000000000000FF990000FF990000FF996600FF99
      6600FF996600FF996600FF996600FF996600FF996600FF996600FF990000CC66
      000000000000000000000000000000000000FFCC9900FFFFFF00FFFFFF00CCCC
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000000000000000000000000000993300000000
      00000000000000000000000000000000000000000000FF99000099999900FFFF
      FF0099999900FFFFFF0099999900FFFFFF0099999900FFFFFF0099999900FFFF
      FF0000000000000000000000000000000000FFCC9900FFCC9900FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC99000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000993300009933000099330000000000000000
      000000000000000000000000000000000000000000000000000099999900CCCC
      CC0099999900CCCCCC0099999900CCCCCC0099999900CCCCCC00999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009933000099330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000066CCFF003399CC003399
      CC003399CC003399CC003399CC003399CC003399CC003399CC003399CC003399
      CC003399CC0066CCFF0000000000000000000000000000000000000000000000
      000000000000000000000000000099330000FFFFFF0099330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000B2B2B20099999900B2B2B2008080800080808000000000000000
      00000000000000000000000000000000000066CCFF003399CC0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF003399CC0066CCFF00000000000000000000000000000000000000
      0000000000000000000099330000FFFFFF00FFFFFF0099330000000000000000
      0000000000000000000000000000000000009999990066666600666666006666
      6600666666006666660066666600666666006666660066666600666666006666
      6600666666006666660066666600666666000000000000000000000000008080
      8000B2B2B20099999900FFFFFF00FFFFFF00B2B2B200B2B2B200808080008080
      8000000000000000000000000000000000003399CC0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF003399CC00003366003399CC0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF003399CC0000000000000000000000000000000000CC99
      6600993300009933000099330000FFFFFF00FFFFFF009933000099330000CC99
      66000000000000000000000000000000000099999900CCFFFF00CCFFFF00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF00666666000000000000000000000000008080
      800099999900FFFFFF009999990099999900FFFFFF00FFFFFF00B2B2B200B2B2
      B200808080008080800000000000000000003399CC0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000336600003366000033660000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF003399CC0000000000000000000000000099330000CC99
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC99
      66009933000000000000000000000000000099999900CCFFFF00CCFFFF00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF0066666600000000000000000080808000B2B2
      B20099999900FFFFFF0080808000B2B2B20099999900FFFFFF00FFFFFF00FFFF
      FF00B2B2B200B2B2B20080808000000000003399CC0066CCFF0000FFFF0000FF
      FF0000FFFF0000FFFF003399CC00003366003399CC0000FFFF0000FFFF0000FF
      FF0000FFFF0066CCFF003399CC00000000000000000099330000FFFFFF00FFFF
      FF00FFFFFF009933000099330000993300009933000099330000FFFFFF00FFFF
      FF00FFFFFF0099330000000000000000000099999900FFFFFF00CCFFFF00CCFF
      FF00993300009933000099330000993300009933000099330000CCFFFF00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF00666666000000000000000000808080009999
      9900FFFFFF00B2B2B20080808000B2B2B20099999900FFFFFF00808080008080
      8000FFFFFF00FFFFFF00808080000000000066CCFF003399CC0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF003399CC0066CCFF0000000000CC996600CC996600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00993300009933000099330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC996600CC9966000000000099999900CCFFFF00FFFFFF00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF00666666000000000080808000B2B2B2009999
      9900FFFFFF00B2B2B200E5E5E500B2B2B200FFFFFF00FFFFFF00FFFFFF00B2B2
      B20080808000FFFFFF008080800000000000000000003399CC0066CCFF0000FF
      FF0000FFFF0000FFFF0066CCFF000033660066CCFF0000FFFF0000FFFF0000FF
      FF0066CCFF003399CC00000000000000000099330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00993300009933000099330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00993300000000000099999900FFFFFF00FFFFFF00CCFF
      FF00993300009933000099330000993300009933000099330000CCFFFF00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF0066666600000000008080800099999900FFFF
      FF00B2B2B200E5E5E500E5E5E500B2B2B200FFFFFF008080800080808000FFFF
      FF00FFFFFF00FFFFFF0080808000000000000000000066CCFF003399CC0000FF
      FF0000FFFF0000FFFF003399CC00003366003399CC0000FFFF0000FFFF0000FF
      FF003399CC0066CCFF00000000000000000099330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00993300009933000099330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00993300000000000099999900FFFFFF00CCFFFF00FFFF
      FF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF006666660080808000B2B2B20099999900FFFF
      FF00FFFFFF00FFFFFF00B2B2B200FFFFFF00FFFFFF00FFFFFF00B2B2B2008080
      8000FFFFFF0080808000000000000000000000000000000000003399CC0066CC
      FF0000FFFF0000FFFF0033669900003366003366990000FFFF0000FFFF0066CC
      FF003399CC0000000000000000000000000099330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0099330000993300009933000099330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00993300000000000099999900FFFFFF00FFFFFF00CCFF
      FF00FFFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFF
      FF000000CC0000009900CCFFFF00666666008080800099999900FFFFFF00FFFF
      FF009933000099330000FFFFFF00FFFFFF008080800080808000FFFFFF00FFFF
      FF00FFFFFF00808080000000000000000000000000000000000066CCFF003399
      CC0000FFFF0000FFFF0000336600003366000033660000FFFF0000FFFF003399
      CC0066CCFF0000000000000000000000000099330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00993300000000000099999900FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFF
      FF006600FF000000CC00CCFFFF0066666600000000009999990099999900FFFF
      FF00FFFFFF00B2B2B2009933000099330000FFFFFF00FFFFFF0080808000FFFF
      FF00808080000000000000000000000000000000000000000000000000003399
      CC0066CCFF0000FFFF0000336600003366000033660000FFFF0066CCFF003399
      CC000000000000000000000000000000000099330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CC99660099330000CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00993300000000000099999900FFFFFF00FFFFFF00FFFF
      FF00CCFFFF00FFFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF00666666000000000000000000000000009999
      990099999900FFFFFF00FFFFFF00B2B2B2009933000099330000FFFFFF00FFFF
      FF008080800000000000000000000000000000000000000000000000000066CC
      FF003399CC0000FFFF003399CC00003366003399CC0000FFFF003399CC0066CC
      FF0000000000000000000000000000000000CC996600CC996600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00993300009933000099330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC996600CC996600000000009999990099999900999999009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900999999009999990099999900999999000000000000000000000000000000
      0000000000009999990099999900FFFFFF00FFFFFF00B2B2B200FFFFFF008080
      8000000000000000000000000000000000000000000000000000000000000000
      00003399CC0066CCFF0000FFFF0000FFFF0000FFFF0066CCFF003399CC000000
      0000000000000000000000000000000000000000000099330000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CC99660099330000CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009999990099999900FFFFFF00FFFFFF008080
      8000000000000000000000000000000000000000000000000000000000000000
      000066CCFF003399CC003399CC003399CC003399CC003399CC0066CCFF000000
      000000000000000000000000000000000000000000000000000099330000CC99
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC99
      6600993300000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000066CCFF0066CCFF0066CCFF0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CC99
      660099330000993300009933000099330000993300009933000099330000CC99
      6600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF999900FF999900ECC6
      D900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5E5E500FFCC
      CC00CC9999000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009999CC0000008000000080000000800000008000000080009999CC000000
      000000000000000000000000000000000000000000000000000000000000E2EF
      F100E5E5E500CCCCCC00CCCCCC00CCCCCC00E5E5E500CC999900FF999900ECC6
      D900FFCCCC00CC99990000000000000000000000000000000000000000000000
      000080808000FFFFFF0000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      80000000CC000000FF000000FF000000FF000000FF000000FF000000CC000000
      8000000000000000000000000000000000000000000000000000E2EFF100E5E5
      E500B2B2B20080808000646F71008080800099999900E5E5E500CCCCCC00FF99
      9900ECC6D900FFCCCC00CC999900000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000066CCFF003399CC003399CC0066CCFF00000000000000
      0000000000000000000000000000000000000000000000000000000080000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000080000000000000000000000000000000000000000000E5E5E5008080
      800080808000646F7100646F7100666666004C4C4C0080808000E5E5E500FFCC
      CC00CC999900ECC6D900FF999900000000000000000000000000000000000000
      0000FFFFFF000000000000000000FFFFFF008080800080808000000000000000
      00000000000000000000000000000000000000000000000000003399CC003399
      CC003399CC003399CC003399CC0066CCFF0066CCFF003399CC003399CC003399
      CC003399CC003399CC00000000000000000000000000000080000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF00000080000000000000000000000000000000000099A8AC008080
      800099999900B2B2B200B2B2B200C0C0C000808080004C4C4C0080808000E5E5
      E500CC999900CC999900FFCCCC00CC9999000000000080808000000000000000
      0000000000000000000000000000808080000000000000000000000000000000
      00000000000000000000000000006666990000000000000000003399CC0099FF
      FF00FFFFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0066CCFF0066CC
      FF0066CCFF003399CC0000000000000000009999CC000000CC000000FF000000
      FF00FFFFFF00FFFFFF000000FF000000FF000000FF00FFFFFF00FFFFFF000000
      FF000000FF000000CC009999CC000000000000000000E5E5E500666666008080
      8000B2B2B200CCCCCC00CCCCCC00B2B2B200C0C0C000808080006666660099A8
      AC00E5E5E500CC999900E5E5E500FF99990080808000FFFFFF00FFFFFF000000
      0000FFFFFF000000000000000000C0C0C0000000000000000000000000000000
      00000000000000000000666699003399CC000000000000000000000000003399
      CC0099FFFF00FFFFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0066CC
      FF003399CC00000000000000000000000000000080000000FF000000FF000000
      FF00FFFFFF00FFFFFF00FFFFFF000000FF00FFFFFF00FFFFFF00FFFFFF000000
      FF000000FF000000FF000000800000000000E2EFF10099A8AC004C4C4C006666
      66004C4C4C004C4C4C0099999900CCCCCC00B2B2B200999999004C4C4C008080
      8000CCCCCC00CC99990000000000FFCCCC0080808000FFFFFF00000000000000
      0000FFFFFF0080808000C0C0C000FFFFFF008080800000000000FFFFFF008080
      800000000000666699003399CC0066CCFF000000000000000000000000000000
      00003399CC0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF003399
      CC0000000000000000000000000000000000000080000000FF000000FF000000
      FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000
      FF000000FF000000FF000000800000000000C0C0C0004C4C4C004C4C4C004C4C
      4C00808080009966660066666600B2B2B200CCCCCC00B2B2B20080808000646F
      7100CCCCCC000000000000000000000000008080800000000000000000000000
      0000808080000000000000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00666699003399CC0066CCFF00000000000000000000000000000000000000
      00003399CC0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF003399
      CC0000000000000000000000000000000000000080000000FF000000FF000000
      FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000
      FF000000FF000000FF00000080000000000099666600808080004C4C4C00646F
      71008080800080808000808080004C4C4C00CCCCCC00B2B2B200646F7100646F
      7100CCCCCC000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000FFFFFF006666
      99003399CC0066CCFF0000000000000000000000000000000000000000000000
      00003399CC0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF003399
      CC0000000000000000000000000000000000000080000000FF000000FF000000
      FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000
      FF000000FF000000FF00000080000000000080808000C0C0C000333333008080
      8000CCCCCC0099999900646F71004C4C4C00B2B2B20099A8AC00646F71008080
      8000CCCCCC000000000000000000000000000000000000000000C0C0C000C0C0
      C0000000000000000000FFFFFF00000000000000000000000000666699003399
      CC0066CCFF000000000000000000000000000000000000000000000000000000
      00003399CC00FFFFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF003399
      CC0000000000000000000000000000000000000080000000FF000000FF000000
      FF00FFFFFF00FFFFFF00FFFFFF000000FF00FFFFFF00FFFFFF00FFFFFF000000
      FF000000FF000000FF00000080000000000099999900FFFFFF004C4C4C004C4C
      4C00FFFFFF00CCCCCC00646F7100666666009999990099999900646F71009999
      9900E5E5E5000000000000000000000000000000000080808000C0C0C000FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF0000000000666699003399CC0066CC
      FF00000000000000000000000000000000000000000000000000000000000000
      000066CCFF0066CCFF00FFFFFF0000FFFF0000FFFF0000FFFF0066CCFF0066CC
      FF00000000000000000000000000000000009999CC000000CC000000FF000000
      FF00FFFFFF00FFFFFF000000FF000000FF000000FF00FFFFFF00FFFFFF000000
      FF000000FF000000CC009999CC0000000000C0C0C00099999900CCCCCC003333
      33004C4C4C00646F71004C4C4C00646F7100808080008080800066666600C0C0
      C000E2EFF1000000000000000000000000000000000000000000808080008080
      80000000000000000000FFFFFF00FFFFFF00666699003399CC0066CCFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003399CC0099FFFF00FFFFFF0000FFFF0000FFFF003399CC000000
      00000000000000000000000000000000000000000000000080000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000800000000000000000000000000099999900996666004C4C
      4C00333333004C4C4C004C4C4C006666660066666600646F710099999900E5E5
      E500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000666699003399CC0066CCFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003399CC003399CC003399CC003399CC00000000000000
      0000000000000000000000000000000000000000000000000000000080000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000080000000000000000000000000000000000000000000000000000000
      00009999990033333300333333004C4C4C006666660099999900E5E5E500E2EF
      F100000000000000000000000000000000000000000000000000000000000000
      00000000000000000000666699003399CC0066CCFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      80000000CC000000FF000000FF000000FF000000FF000000FF000000CC000000
      8000000000000000000000000000000000000000000000000000000000000000
      000000000000E5E5E500C0C0C000C0C0C000E5E5E500E2EFF100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000666699003399CC0066CCFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009999CC0000008000000080000000800000008000000080009999CC000000
      00000000000000000000000000000000000000000000CCCCCC00C0C0C000E5E5
      E500000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CCCCCC00C0C0C000E5E5
      E500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000099CC00006699000066
      9900006699000066990000669900006699000066990000669900006699000066
      990000669900006699000066990000669900CCCCCC0066999900666699009999
      9900E5E5E5000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CCCCCC0066999900666699009999
      9900E5E5E5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC9966000000000000000000000000000099CC0099FFFF000099
      CC0099FFFF000099CC0099FFFF000099CC0099FFFF000099CC0099FFFF000099
      CC0099FFFF000099CC0099FFFF000099CC000000000066CCFF003399CC006666
      990099999900E5E5E50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000066CCFF003399CC006666
      990099999900E5E5E50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC9966000000000000000000000000000099CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0000000000CCCCFF0066CCFF003399
      CC006666990099999900E5E5E500000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CCCCFF0066CCFF003399
      CC006666990099999900E5E5E500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC996600FFFF
      FF00CCCCCC00CCCCCC00CCCCCC00CCCCCC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC9966000000000000000000000000000099CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF000000000000000000CCCCFF0066CC
      FF003399CC006666990099999900E5E5E5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CCCCFF0066CC
      FF003399CC006666990099999900E5E5E5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0099330000FFFFFF00FFFF
      FF00FFFFFF00CC9966000000000000000000000000000099CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF000099CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF00000000000000000000000000CCCC
      FF0066CCFF003399CC0066669900CCCCCC00FFCCCC00CC999900CC999900CC99
      9900CCCC9900E5E5E5000000000000000000000000000000000000000000CCCC
      FF0066CCFF003399CC0066669900CCCCCC00FFCCCC00CC999900CC999900CC99
      9900CCCC9900E5E5E50000000000000000000000000000000000CC996600FFFF
      FF00CCCCCC00CCCCCC00FFFFFF00FFFFFF009933000099330000FFFFFF00FFFF
      FF00FFFFFF00CC9966000000000000000000000000000099CC0099FFFF0099FF
      FF0099FFFF000099CC0099FFFF0099FFFF0099FFFF000099CC0099FFFF0099FF
      FF0099FFFF000099CC0099FFFF0099FFFF000000000000000000000000000000
      0000CCCCFF0066CCFF00B2B2B200CC999900CCCC9900F2EABF00FFFFCC00F2EA
      BF00F2EABF00CC999900ECC6D900000000000000000000000000000000000000
      0000CCCCFF0066CCFF00B2B2B200CC999900CCCC9900F2EABF00FFFFCC00F2EA
      BF00F2EABF00CC999900ECC6D900000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0099330000993300009933000099330000CC99
      6600FFFFFF00CC9966000000000000000000000000000099CC0099FFFF000099
      CC0099FFFF000099CC0099FFFF000099CC0099FFFF000099CC0099FFFF000099
      CC0099FFFF000099CC0099FFFF000099CC000000000000000000000000000000
      000000000000E5E5E500CC999900FFCC9900FFFFCC00FFFFCC00FFFFCC00FFFF
      FF00FFFFFF00FFFFFF00CC999900E5E5E5000000000000000000000000000000
      000000000000E5E5E500CC999900FFCC9900FFFFCC00FFFFCC00FFFFCC00FFFF
      FF00FFFFFF00FFFFFF00CC999900E5E5E5000000000000000000CC996600FFFF
      FF00CCCCCC00CCCCCC00FFFFFF00FFFFFF009933000099330000FFFFFF009933
      0000FFFFFF00CC9966000000000000000000000000000099CC000099CC000099
      CC000099CC000099CC000099CC000099CC000099CC000099CC000099CC000099
      CC000099CC000099CC000099CC000099CC000000000000000000000000000000
      000000000000FFCCCC00CCCC9900FFFFCC00F2EABF00FFFFCC00FFFFCC00FFFF
      FF00FFFFFF00FFFFFF00F2EABF00CCCC99000000000000000000000000000000
      000000000000FFCCCC00CCCC9900FFFFCC00F2EABF00F2EABF00CC663300FFFF
      FF00FFFFFF00FFFFFF00F2EABF00CCCC99000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0099330000FFFFFF009933
      0000FFFFFF00CC99660000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CC66000000000000000000000000000000000000000000000000
      000000000000CCCC9900FFCC9900F2EABF00F2EABF00FFFFCC00FFFFCC00FFFF
      CC00FFFFFF00FFFFFF00F2EABF00CC9999000000000000000000000000000000
      000000000000CCCC9900F2EABF00F2EABF00FFCC9900FFCC9900CC663300F2EA
      BF00F2EABF00FFFFFF00F2EABF00CC9999000000000000000000CC996600FFFF
      FF00CCCCCC00CCCCCC00CCCCCC00FFFFFF00FFFFFF00FFFFFF00FFFFFF009933
      0000FFFFFF00CC99660000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300000000
      000000000000CC66000000000000000000000000000000000000000000000000
      000000000000CC999900F2EABF00F2EABF00F2EABF00F2EABF00FFFFCC00FFFF
      CC00FFFFCC00FFFFCC00FFFFCC00CC9999000000000000000000000000000000
      000000000000CC999900F2EABF00F2EABF00CC660000CC663300CC663300CC66
      3300CC663300FFFFCC00FFFFCC00CC9999000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009933
      0000FFFFFF00CC99660000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300009933
      000000000000CC66000000000000000000000000000000000000000000000000
      000000000000CCCC9900F2EABF00FFFFCC00F2EABF00F2EABF00F2EABF00FFFF
      CC00FFFFCC00FFFFCC00F2EABF00CC9999000000000000000000000000000000
      000000000000CCCC9900F2EABF00F2EABF00FFCC9900FFCC9900CC663300F2EA
      BF00F2EABF00FFFFCC00F2EABF00CC9999000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF009933000099330000993300009933000099330000CC99
      6600FFFFFF00CC99660000000000000000000000000000000000000000000000
      0000993300009933000099330000993300009933000099330000993300009933
      000099330000CC66000000000000000000000000000000000000000000000000
      000000000000FFCCCC00CCCC9900FFFFFF00FFFFFF00F2EABF00F2EABF00F2EA
      BF00F2EABF00FFFFCC00CCCC9900CCCC99000000000000000000000000000000
      000000000000FFCCCC00CCCC9900FFFFCC00FFFFCC00FFCC9900CC663300FFFF
      CC00F2EABF00FFFFCC00CCCC9900CCCC99000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000000000000000
      0000993300009933000099330000993300009933000099330000993300009933
      000099330000CC66000000000000000000000000000000000000000000000000
      000000000000E5E5E500CC999900ECC6D900FFFFFF00FFFFCC00F2EABF00F2EA
      BF00F2EABF00FFCC9900CC999900E5E5E5000000000000000000000000000000
      000000000000E5E5E500CC999900E5E5E500FFFFFF00F2EABF00F2EABF00F2EA
      BF00F2EABF00FFCC9900CC999900E5E5E5000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300009933
      000000000000CC66000000000000000000000000000000000000000000000000
      00000000000000000000FFCCCC00CC999900FFCCCC00F2EABF00F2EABF00F2EA
      BF00CCCC9900CC999900FFCCCC00000000000000000000000000000000000000
      00000000000000000000FFCCCC00CC999900FFCCCC00F2EABF00F2EABF00F2EA
      BF00FFCC9900CC999900FFCCCC00000000000000000000000000CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC99660000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300000000
      000000000000CC66000000000000000000000000000000000000000000000000
      0000000000000000000000000000E5E5E500CCCC9900CC999900CC999900CC99
      9900CC999900E5E5E50000000000000000000000000000000000000000000000
      0000000000000000000000000000E5E5E500CCCC9900CC999900CC999900CC99
      9900CC999900E5E5E50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CC66000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF330000FF330000FF330000FF33
      0000FF330000FF330000FF330000FF330000FF330000FF330000FF330000FF33
      0000FF330000FF330000FF3300000000000000000000FF330000FF330000FF33
      0000FF330000FF330000FF330000FF330000FF330000FF330000FF330000FF33
      0000FF330000FF330000FF3300000000000000000000FF330000FF330000FF33
      0000FF330000FF330000FF330000FF330000FF330000FF330000FF330000FF33
      0000FF330000FF330000FF3300000000000000000000FF330000FF330000FF33
      0000FF330000FF330000FF330000FF330000FF330000FF330000FF330000FF33
      0000FF330000FF330000FF33000000000000FF330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF330000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF3300000000000000000000FF330000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF3300000000000000000000FF330000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF3300000000000000000000FF330000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF33000000000000FF330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF330000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF3300000000000000000000FF330000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0099999900999999009999
      9900FFFFFF00FFFFFF00FF3300000000000000000000FF330000FFFFFF00B2B2
      B200B2B2B200FFFFFF00FFFFFF00B2B2B200B2B2B200FFFFFF00FFFFFF00B2B2
      B200B2B2B200FFFFFF00FF3300000000000000000000FF330000FFFFFF009999
      9900FFFFFF009999990099999900FFFFFF009999990099999900FFFFFF009999
      990099999900FFFFFF00FF33000000000000FF330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF330000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF3300000000000000000000FF330000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF3300000000000000000000FF330000FFFFFF003366
      FF003366FF00FFFFFF00FFFFFF009933000099330000FFFFFF00FFFFFF00C8AC
      2800C8AC2800FFFFFF00FF3300000000000000000000FF330000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF33000000000000FF330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF330000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF3300000000000000000000FF330000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0099336600993366009933
      6600FFFFFF00FFFFFF00FF3300000000000000000000FF330000FFFFFF003366
      FF003366FF00FFFFFF00FFFFFF009933000099330000FFFFFF00FFFFFF00C8AC
      2800C8AC2800FFFFFF00FF3300000000000000000000FF330000FFFFFF009999
      9900FFFFFF009999990099999900FFFFFF009999990099999900FFFFFF009999
      990099999900FFFFFF00FF33000000000000FF330000FF330000FF330000FF33
      0000FF330000FF330000FF330000FF330000FF330000FF330000FF330000FF33
      0000FF330000FF330000FF3300000000000000000000FF330000FFFFFF00FFFF
      FF00999999009999990099999900FFFFFF00FFFFFF0099336600993366009933
      6600FFFFFF00FFFFFF00FF3300000000000000000000FF330000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF3300000000000000000000FF330000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF33000000000000FF330000FF330000FF330000FF33
      0000FFCC9900FF3300006666FF00FF330000FF330000FF330000FF330000FFCC
      9900FF3300006666FF00FF3300000000000000000000FF330000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0099336600993366009933
      6600FFFFFF00FFFFFF00FF3300000000000000000000FF330000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF3300000000000000000000FF330000FFFFFF00CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600FFFFFF00FF33000000000000FFCC9900FF330000FF330000FF33
      0000FF330000FF330000FF330000FFCC9900FF330000FF330000FF330000FF33
      0000FF330000FF330000FFCC99000000000000000000FF330000FFFFFF00FFFF
      FF003366FF003366FF003366FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF3300000000000000000000FF330000FFFFFF00B2B2
      B200B2B2B200FFFFFF00FFFFFF00B2B2B200B2B2B200FFFFFF00FFFFFF00B2B2
      B200B2B2B200FFFFFF00FF3300000000000000000000FF330000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF33000000000000FF330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF330000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF3300000000000000000000FF330000FFFFFF00FFFF
      FF003366FF003366FF003366FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF3300000000000000000000FF330000FFFFFF009933
      660099336600FFFFFF00FFFFFF003333990033339900FFFFFF00FFFFFF000099
      000000990000FFFFFF00FF3300000000000000000000FF330000FFFFFF00FFFF
      FF00FFFFFF009999990099999900FFFFFF009999990099999900FFFFFF009999
      990099999900FFFFFF00FF33000000000000FF330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF330000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF3300000000000000000000FF330000FFFFFF00FFFF
      FF003366FF003366FF003366FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF3300000000000000000000FF330000FFFFFF009933
      660099336600FFFFFF00FFFFFF003333990033339900FFFFFF00FFFFFF000099
      000000990000FFFFFF00FF3300000000000000000000FF330000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF33000000000000FF330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF330000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF3300000000000000000000FF330000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF3300000000000000000000FF330000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF3300000000000000000000FF330000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF33000000000000FF330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF330000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF3300000000000000000000FF330000FF330000FF33
      0000FF330000FF330000FF330000FF330000FF330000FF330000FF330000FF33
      0000FF330000FF330000FF3300000000000000000000FF330000FF330000FF33
      0000FF330000FF330000FF330000FF330000FF330000FF330000FF330000FF33
      0000FF330000FF330000FF3300000000000000000000FF330000FF330000FF33
      0000FF330000FF330000FF330000FF330000FF330000FF330000FF330000FF33
      0000FF330000FF330000FF33000000000000FF330000FF330000FF330000FF33
      0000FF330000FF330000FF330000FF330000FF330000FF330000FF330000FF33
      0000FF330000FF330000FF3300000000000000000000FF330000FF330000FF33
      0000FF330000FF330000FF330000FF330000FF330000FF330000FF330000FF33
      0000FF330000FF330000FF3300000000000000000000FF330000FF330000FF33
      0000FF330000FF330000FF330000FF330000FF330000FF330000FF330000FF33
      0000FF330000FF330000FF3300000000000000000000FF330000FF330000FF33
      0000FF330000FF330000FF330000FF330000FF330000FF330000FF330000FF33
      0000FF330000FF330000FF33000000000000FF330000FF330000FF330000FF33
      0000FFCC9900FF3300006666FF00FF330000FF330000FF330000FF330000FFCC
      9900FF3300006666FF00FF3300000000000000000000FFCC9900FF330000FF33
      0000FF330000FF330000FF330000FF330000FF330000FF330000FF330000FF33
      0000FF330000FF330000FFCC99000000000000000000FFCC9900FF330000FF33
      0000FF330000FF330000FF330000FF330000FF330000FF330000FF330000FF33
      0000FF330000FF330000FFCC99000000000000000000FFCC9900FF330000FF33
      0000FF330000FF330000FF330000FF330000FF330000FF330000FF330000FF33
      0000FF330000FF330000FFCC990000000000FFCC9900FF330000FF330000FF33
      0000FF330000FF330000FF330000FFCC9900FF330000FF330000FF330000FF33
      0000FF330000FF330000FFCC9900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E5E5
      E500C0C0C000666666004C4C4C004C4C4C004C4C4C004C4C4C004C4C4C008080
      8000CCCCCC00E2EFF10000000000000000000000000000000000000000000000
      00000000000000000000FF330000FF330000FF330000FF330000FF330000FF33
      0000FF330000FF330000FF330000FF3300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5E5E500B2B2
      B200ECC6D900E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500C0C0C0004C4C
      4C00646F7100B2B2B200E5E5E500000000000000000000000000000000000000
      00000000000000000000FF330000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF33000000000000FF330000FF330000FF33
      0000FF330000FF330000FF330000FF330000FF330000FF330000FF330000FF33
      0000FF330000FF330000FF330000FF330000FF330000FF330000FF330000FF33
      0000FF330000FF330000FF330000FF330000FF330000FF330000FF330000FF33
      0000FF330000FF330000FF3300000000000000000000E5E5E500C0C0C000E5E5
      E500FFFFFF00E5E5E500CC999900CC999900CCCCCC00E2EFF100FFFFFF00E5E5
      E5008080800066666600B2B2B200E2EFF1000000000000000000000000000000
      00000000000000000000FF330000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF33000000000000FF330000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF330000FF330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF330000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF3300000000000000000000CCCCCC00E5E5E500FFFF
      FF00CC999900CC660000CC663300CC999900CC663300CC663300CC999900FFFF
      FF00E5E5E500646F7100646F7100CCCCCC000000000000000000000000000000
      00000000000000000000FF330000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF33000000000000FF330000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF330000FF330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF330000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF33000000000000E5E5E500E5E5E500FFFFFF00CC66
      6600CC330000CC660000CC999900FFFFFF00CC996600CC330000CC330000CC99
      9900FFFFFF00E5E5E5004C4C4C0099999900000000000000000000000000FF33
      0000FF330000FF330000FF330000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF33000000000000FF330000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF330000FF330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF330000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF33000000000000E5E5E500FFFFFF00CC999900CC33
      0000CC663300CC663300CC663300CC996600CC663300CC663300CC663300CC33
      0000CCCCCC00E5E5E5009999990066666600000000000000000000000000FF33
      0000FFFFFF00FFFFFF00FF330000FF330000FF330000FF330000FF330000FF33
      0000FF330000FF330000FF330000FF33000000000000FF330000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF330000FF330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF330000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF33000000000000E5E5E500FFFFFF00CC663300CC66
      3300CC663300CC663300CC996600E5E5E500CC663300CC663300CC663300CC66
      3300CC666600FFFFFF00CCCCCC004C4C4C00000000000000000000000000FF33
      0000FFFFFF00FFFFFF00FF330000FF330000FF330000FF330000FF330000FF33
      0000FFCC9900FF3300006666FF00FF33000000000000FF330000FF330000FF33
      0000FF330000FF330000FF330000FF330000FF330000FF330000FF330000FF33
      0000FF330000FF330000FF330000FF330000FF330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF330000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF33000000000000E5E5E500E5E5E500CC663300CC66
      3300CC663300CC663300CC996600FFFFFF00FF999900CC330000CC663300CC66
      3300CC663300E2EFF100E5E5E5004C4C4C00000000000000000000000000FF33
      0000FFFFFF00FFFFFF00FFCC9900FF330000FF330000FF330000FF330000FF33
      0000FF330000FF330000FF330000FFCC990000000000FF330000FF330000FF33
      0000FF330000FF330000FF330000FF330000FF330000FF330000FF330000FF33
      0000FFCC9900FF3300006666FF00FF330000FF330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF330000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF33000000000000E5E5E500FFCCCC00CC663300CC66
      3300CC663300CC663300CC663300CCCC9900FFFFFF00CC996600CC663300CC66
      3300CC663300E2EFF100E5E5E5004C4C4C00FF330000FF330000FF330000FF33
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FF33000000000000000000000000000000000000FFCC9900FF330000FF33
      0000FF330000FF330000FF330000FF330000FF330000FF330000FF330000FF33
      0000FF330000FF330000FF330000FFCC9900FF330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF330000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF33000000000000E5E5E500E5E5E500CC663300CC66
      3300CC663300CC663300CC663300CC330000CCCCCC00FFFFFF00CC663300CC66
      3300CC663300FFFFFF00E5E5E50066666600FF330000FFFFFF00FFFFFF00FF33
      0000FF330000FF330000FF330000FF330000FF330000FF330000FF330000FF33
      0000FF33000000000000000000000000000000000000FF330000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF330000FF330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF330000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF33000000000000E5E5E500FFFFFF00FF996600CC66
      3300CC996600E5E5E500CC666600CC330000CC996600FFFFFF00CC996600CC66
      0000CC996600FFFFFF00CCCCCC0099A8AC00FF330000FFFFFF00FFFFFF00FF33
      0000FF330000FF330000FF330000FF330000FF330000FFCC9900FF3300006666
      FF00FF33000000000000000000000000000000000000FF330000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF330000FF330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF330000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF33000000000000E5E5E500E2EFF100FFFFCC00FF99
      3300CC996600FFFFFF00FFFFFF00FFCC9900FFFFFF00FFFFFF00CC663300FF66
      3300FFFFFF00E5E5E50099999900E5E5E500FF330000FFFFFF00FFFFFF00FFCC
      9900FF330000FF330000FF330000FF330000FF330000FF330000FF330000FF33
      0000FFCC990000000000000000000000000000000000FF330000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF330000FF330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF330000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF3300000000000000000000E5E5E500FFFFFF00F2EA
      BF00FF996600FF999900E5E5E500E2EFF100E5E5E500FF996600FF996600FFCC
      CC00FFFFFF00F2EABF00C0C0C00000000000FF330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF330000000000000000
      00000000000000000000000000000000000000000000FF330000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF330000FF330000FF330000FF330000FF33
      0000FF330000FF330000FF330000FF330000FF330000FF330000FF330000FF33
      0000FF330000FF330000FF3300000000000000000000E5E5E500E5E5E500FFFF
      FF00FFFFFF00FFFFCC00FFCC9900FFCC9900FFCC9900FFCC9900FFFFFF00FFFF
      FF00E5E5E500C0C0C000E2EFF10000000000FF330000FF330000FF330000FF33
      0000FF330000FF330000FF330000FF330000FF330000FF330000000000000000
      00000000000000000000000000000000000000000000FF330000FF330000FF33
      0000FF330000FF330000FF330000FF330000FF330000FF330000FF330000FF33
      0000FF330000FF330000FF330000FF330000FF330000FF330000FF330000FF33
      0000FFCC9900FF3300006666FF00FF330000FF330000FF330000FF330000FFCC
      9900FF3300006666FF00FF330000000000000000000000000000E5E5E500FFCC
      CC00E5E5E500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E5E5E500FFCC
      CC00CCCCCC00E2EFF1000000000000000000FF330000FF330000FF330000FF33
      0000FF330000FF330000FFCC9900FF3300006666FF00FF330000000000000000
      00000000000000000000000000000000000000000000FF330000FF330000FF33
      0000FF330000FF330000FF330000FF330000FF330000FF330000FF330000FF33
      0000FFCC9900FF3300006666FF00FF330000FFCC9900FF330000FF330000FF33
      0000FF330000FF330000FF330000FFCC9900FF330000FF330000FF330000FF33
      0000FF330000FF330000FFCC9900000000000000000000000000000000000000
      0000E5E5E500FFCCCC00FFCCCC00FFCCCC00F2EABF00FFCCCC00E5E5E500E5E5
      E50000000000000000000000000000000000FFCC9900FF330000FF330000FF33
      0000FF330000FF330000FF330000FF330000FF330000FFCC9900000000000000
      00000000000000000000000000000000000000000000FFCC9900FF330000FF33
      0000FF330000FF330000FF330000FF330000FF330000FF330000FF330000FF33
      0000FF330000FF330000FF330000FFCC99000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CC996600CC9966000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000993300006600000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CC996600FFFFFF00FFFFFF00CC99660000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009933000099330000CC6600009933000066000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003399CC00006699000066
      9900006699000066990000669900006699000066990000669900006699000066
      990066CCCC000000000000000000000000000000000000000000000000000000
      000000000000CC996600FFFFFF00FFFFFF00CC99660000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      00009933000099330000E5E5E500E5E5E500CCCCCC0099330000660000000000
      00000000000000000000000000000000000000000000000000003399CC000066
      9900006699000066990000669900006699000066990000669900006699000066
      9900006699000066990000000000000000003399CC003399CC0099FFFF0066CC
      FF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF003399
      CC0000669900000000000000000000000000CC99660000000000000000000000
      0000CC996600FFFFFF00FFFFFF00CC996600000000000000000000000000CC99
      660099330000CC99660000000000000000000000000099330000993300009933
      0000E5E5E500E5E5E500E5E5E500E5E5E500CCCCCC00CCCCCC00993300006600
      000000000000000000000000000000000000000000003399CC0066CCFF003399
      CC0099FFFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CC
      FF003399CC0099FFFF0000669900000000003399CC003399CC0066CCFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0066CC
      FF00006699003399CC000000000000000000CC996600CC996600000000000000
      0000CC996600FFFFFF00FFFFFF00CC9966000000000000000000000000009933
      0000993300009933000000000000000000009933000099330000E5E5E500E5E5
      E500E5E5E500E5E5E50099330000993300009999990099999900CCCCCC009933
      000066000000000000000000000000000000000000003399CC0066CCFF003399
      CC0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0066CCFF0099FFFF0000669900000000003399CC003399CC0066CCFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0066CC
      FF0066CCCC00006699000000000000000000CC996600FFFFFF00CC996600CC99
      6600FFFFFF00FFFFFF00CC99660000000000000000000000000000000000CC99
      660099330000CC996600000000000000000099330000E5E5E500E5E5E500E5E5
      E500993300009933000099330000993300006600000080808000999999009999
      990099330000660000000000000000000000000000003399CC0066CCFF003399
      CC0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0066CCFF0099FFFF0000669900000000003399CC0066CCFF003399CC0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0066CC
      FF0099FFFF00006699003399CC0000000000CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CC996600000000000000000000000000000000000000
      00000000000000000000000000000000000099330000E5E5E500993300009933
      000099330000CC660000CC660000CC6600009933000066000000666666009999
      990099999900993300006600000000000000000000003399CC0066CCFF003399
      CC0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0066CCFF0099FFFF0000669900000000003399CC0066CCFF0066CCCC0066CC
      CC0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0066CC
      FF0099FFFF0066CCCC000066990000000000CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CC996600CC996600CC996600CC99660000000000CC99
      660099330000CC9966000000000000000000993300009933000099330000CC66
      0000CC6600009933000099330000CC660000CC66000099330000660000006666
      660099999900808080009933000066000000000000003399CC0066CCFF003399
      CC0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0066CCFF0099FFFF0000669900000000003399CC0099FFFF0066CCFF003399
      CC00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF0099FF
      FF00CCFFFF00CCFFFF000066990000000000CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC99660000000000000000009933
      00009933000099330000000000000000000099330000FF990000CC660000CC66
      0000CC66000000FFFF0033CCFF00993300009933000099330000993300006600
      000066666600999999009933000066000000000000003399CC0066CCFF003399
      CC00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFF
      FF0099FFFF00CCFFFF0000669900000000003399CC0099FFFF0099FFFF0066CC
      FF003399CC003399CC003399CC003399CC003399CC003399CC003399CC003399
      CC003399CC003399CC0066CCFF0000000000CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC996600000000000000000000000000CC99
      66009933000099330000CC996600000000000000000099330000FF990000CC66
      0000CC660000CC660000CC66000000FFFF0000FFFF0033CCFF00336699009933
      000066000000666666009933000000000000000000003399CC0099FFFF0099FF
      FF003399CC003399CC003399CC003399CC003399CC003399CC003399CC003399
      CC003399CC003399CC003399CC00000000003399CC00CCFFFF0099FFFF0099FF
      FF0099FFFF0099FFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF000066
      990000000000000000000000000000000000CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CC996600000000000000000000000000000000000000
      0000CC6600009933000099330000CC996600000000000000000099330000FF99
      0000CC660000CC660000CC660000CC660000CC66000033CCFF0000FFFF003366
      990099330000660000009933000000000000000000003399CC00CCFFFF0099FF
      FF0099FFFF0099FFFF0099FFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFF
      FF0000669900000000000000000000000000000000003399CC00CCFFFF00CCFF
      FF00CCFFFF00CCFFFF003399CC003399CC003399CC003399CC003399CC000000
      000000000000000000000000000000000000CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000000000000000
      0000000000009933000099330000993300000000000000000000000000009933
      0000FF990000CC660000CC66000000FFFF0000FFFF0000FFFF003399CC003366
      99009933000099330000660000006600000000000000000000003399CC00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF003399CC003399CC003399CC003399CC003399
      CC000000000000000000000000000000000000000000000000003399CC003399
      CC003399CC003399CC0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CC996600FFFFFF00FFFFFF00FFFF
      FF00CC99660000000000000000000000000000000000CC99660099330000CC99
      660000000000CC99660099330000993300000000000000000000000000000000
      000099330000FF990000CC660000CC6600003366990033669900660066009933
      0000993300009933000066000000000000000000000000000000000000003399
      CC003399CC003399CC003399CC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CC996600FFFFFF00FFFFFF00CC99
      6600000000000000000000000000000000000000000099330000993300009933
      0000000000009933000099330000993300000000000000000000000000000000
      00000000000099330000FF990000CC660000CC660000CC660000993300009933
      0000660000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CC996600FFFFFF00CC9966000000
      00000000000000000000000000000000000000000000CC996600993300009933
      0000993300009933000099330000CC9966000000000000000000000000000000
      0000000000000000000099330000FF990000CC66000099330000660000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CC996600CC996600000000000000
      0000000000000000000000000000000000000000000000000000CC9966009933
      00009933000099330000CC996600000000000000000000000000000000000000
      0000000000000000000000000000993300006600000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E2EFF100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003399CC0066CCFF003399CC0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003399CC000066
      9900006699000066990000669900006699000066990000669900006699000066
      990000669900006699000000000000000000000000000000000000000000E2EF
      F100E5E5E500CCCCCC00E5E5E500E2EFF1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003399CC0066CCFF003399CC00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF00CCFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003399CC0066CCFF003399
      CC0099FFFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CC
      FF003399CC0099FFFF00006699000000000000000000E2EFF100E5E5E500B2B2
      B200CC9999009966660099666600B2B2B200CCCCCC00E5E5E500E2EFF1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003399CC0099FFFF0099FFFF003399
      CC003399CC003399CC003399CC003399CC00000000003399CC00006699000066
      9900006699000066990000669900006699000066990000669900006699000066
      990000669900000000000000000000000000000000003399CC0066CCFF003399
      CC0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0066CCFF0099FFFF000066990000000000E5E5E500CC99990099666600CC99
      9900CC999900FFFFFF00996666009999990099999900B2B2B200E5E5E5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000080808000000000003399CC00CCFFFF0099FFFF0099FF
      FF0099FFFF00CCFFFF00CCFFFF00CCFFFF003399CC0066CCFF003399CC0099FF
      FF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF003399
      CC0099FFFF00006699000000000000000000000000003399CC0066CCFF003399
      CC0099FFFF0099FFFF00006600003399660099FFFF0099FFFF0099FFFF0099FF
      FF0066CCFF0099FFFF00006699000000000099666600CC999900FFCC9900FFCC
      9900FFCCCC00FFFFFF0099666600336699003366990033669900E2EFF1000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003399CC00CCFFFF00CCFF
      FF00CCFFFF003399CC003399CC003399CC003399CC0066CCFF003399CC0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0066CC
      FF0099FFFF00006699000000000000000000000000003399CC0066CCFF003399
      CC0099FFFF0099FFFF0033999900339933003399330099FFFF0099FFFF0099FF
      FF0066CCFF0099FFFF00006699000000000099666600FFCC9900FFCC9900FFCC
      9900FFCCCC00FFFFFF009966660066CCCC0066CCCC000099CC00FFFFFF00FFCC
      CC00000000000000000000000000000000000000000000000000000000000000
      00008080800000000000000000000000000000000000000000003399CC003399
      CC003399CC000000000000000000000000003399CC0066CCFF003399CC0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0066CC
      FF0099FFFF00006699000000000000000000000000003399CC0066CCFF003399
      CC0099FFFF0099FFFF0099FFCC003399330033CC66003399660099FFFF0099FF
      FF0066CCFF0099FFFF00006699000000000099666600FFCC9900FFCC9900FFCC
      9900FFCCCC00FFFFFF009966660066CCCC0066CCFF003399CC00FFCCCC00CC66
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003399CC0066CCFF003399CC0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0066CC
      FF0099FFFF00006699000000000000000000000000003399CC0066CCFF003399
      CC0099FFFF0099FFFF0099FFFF000099330066FF99003399330099FFCC0099FF
      FF0066CCFF0099FFFF00006699000000000099666600FFCC9900CC999900CC99
      6600FFCCCC00FFFFFF009966660099CCCC0099CCFF00B2B2B200FF660000CC66
      000000000000000000000000000000000000000000003399CC00006699000066
      9900006699000066990000669900006699000066990000669900000000000000
      0000000000000000000000000000000000003399CC0066CCFF003399CC0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099CC
      FF006699FF006699FF00CCCCFF0000000000000000003399CC0099FFFF0099FF
      FF003399CC003399CC003399CC000066330033CC660033CC6600339966003399
      CC003399CC003399CC003399CC000000000099666600FFCC990099666600FFFF
      FF00FFCCCC00FFFFFF009966660099CCCC00C0C0C000CC660000CC660000CC66
      0000CC660000CC660000CC660000000000003399CC0066CCFF003399CC0099FF
      FF0066CCFF0066CCFF0066CCFF0066CCFF003399CC0099FFFF00006699000000
      0000000000000000000000000000000000003399CC0066CCFF003399CC0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099CCFF000033
      FF003399FF003366FF000033FF009999FF00000000003399CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF000080000033CC660033CC66003399330099FF
      FF000066990000000000000000000000000099666600FFCC9900CC9999009966
      6600FFCCCC00FFFFFF009966660000000000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000000000003399CC0066CCFF003399CC0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0066CCFF0099FFFF00006699000000
      0000000000000000000000000000000000003399CC0099FFFF0099FFFF003399
      CC003399CC003399CC003399CC003399CC003399CC003399CC0099CCFF003399
      FF0033CCFF0033CCFF003399FF0099CCFF0000000000000000003399CC0099FF
      FF0099FFFF0099FFFF0099FFFF000080000033CC660033CC6600339933003399
      CC000000000000000000000000000000000099666600FFCC9900FFCC9900FFCC
      9900FFCCCC00FFFFFF009966660000000000CC999900CC660000CC660000CC66
      0000CC660000CC660000CC660000000000003399CC0066CCFF003399CC0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0066CCFF0099FFFF00006699000000
      0000000000000000000000000000000000003399CC0099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0066CCFF003366FF000066
      FF00CCFFFF0099FFFF003366FF003366FF000000000000000000000000003399
      CC003399CC003399CC003399CC000099330033CC660033CC6600339933000000
      00000000000000000000000000000000000099666600FFCC9900FFCC9900FFCC
      9900FFCCCC00FFFFFF0099666600CCCCCC00E2EFF100CC999900FF660000CC66
      0000000000000000000000000000000000003399CC0066CCFF003399CC00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF00CCFFFF0099FFFF0000008000000080000000
      800000008000000080000000000000000000000000003399CC0099FFFF0099FF
      FF0099FFFF0099FFFF003399CC003399CC003399CC003399CC003399CC000033
      FF000033FF003399FF000033FF00CCCCFF000000000000000000000000000000
      00000066000000800000008000003399330033CC660033CC6600336633000080
      00000080000000000000000000000000000099666600FFCC9900FFCC9900FFCC
      9900FFCCCC00FFFFFF009966660099CCCC000000000099CCCC00FFCC9900CC66
      0000000000000000000000000000000000003399CC0099FFFF0099FFFF003399
      CC003399CC003399CC003399CC003399CC003399CC003399CC00000080000000
      80000000800000008000000000000000000000000000000000003399CC003399
      CC003399CC003399CC00000000000000000000000000000000000033FF0099CC
      FF000033FF006699FF009999FF0099CCFF000000000000000000000000000000
      0000669966000080000033CC330033CC330033CC660033CC6600339933000066
      00006699660000000000000000000000000099666600CC999900FFCC9900FFCC
      9900FFCCCC00FFFFFF0099666600CCCCCC00000000003399CC0000000000FFCC
      9900000000000000000000000000000000003399CC00CCFFFF0099FFFF0099FF
      FF0099FFFF00CCFFFF00CCFFFF00CCFFFF000066990000000000000000000000
      8000000080000000800000008000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099CCFF0099CCFF0000000000000000000000000000000000000000000000
      000000000000336633000099330033CC330033CC33000099330033663300C0C0
      C0000000000000000000000000000000000000000000C0C0C000CC996600CC99
      9900CCCC9900FFFFFF00996666000099CC000099CC000099CC00000000000000
      000000000000000000000000000000000000000000003399CC00CCFFFF00CCFF
      FF00CCFFFF003399CC003399CC003399CC000000000000000000000000000000
      0000000080000000000000008000000080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099CC990000800000009900000080000066999900000000000000
      000000000000000000000000000000000000000000000000000000000000CCCC
      CC00CC9999009966660099666600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003399CC003399
      CC003399CC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006699660033993300CCCCCC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CC666600CC666600CC66
      6600CC666600CC666600CC666600CC666600CC666600CC666600CC666600CC66
      6600CC666600CC666600000000000000000000000000CC666600CC666600CC66
      6600CC666600CC666600CC666600CC666600CC666600CC666600CC666600CC66
      6600CC666600CC666600CC666600CC6666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CC996600CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC996600CC996600CC99660000000000CC666600FFCCCC00FFCC
      CC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CC6666000000000000000000CC666600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC666600CC666600CC666600CC666600CC66
      6600CC666600CC666600CC666600CC666600CC666600CC666600CC666600CC66
      6600CC666600CC666600CC666600CC666600CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC99660000000000CC666600FFCCCC00FFCC
      CC00FFFFFF00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCC
      CC00FFCCCC00FFFFFF00CC6666000000000000000000CC666600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000009900FFFFFF00CC666600CC666600FFFFFF00FFFFFF00FFCC
      CC00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFF
      FF00FFCCCC00FFFFFF00FFFFFF00CC666600CC996600FFFFFF00CC996600CC99
      6600CC996600CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC99660000000000CC666600CC666600FFCC
      CC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CC6666000000000000000000CC666600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFCCCC00FFCCCC00FFCCCC00FFCC
      CC00FFCCCC00FFCCCC00FFCCCC00CC666600CC666600FFFFFF00FFFFFF00FFCC
      CC00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFF
      FF00FFCCCC00FFFFFF00FFFFFF00CC666600CC996600FFFFFF00CC996600FFFF
      FF00FFFFFF00CC996600FFFFFF00993300009933000099330000993300009933
      00009933000099330000FFFFFF00CC99660000000000CC666600FFCCCC00FFCC
      CC00FFFFFF00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCC
      CC00FFCCCC00FFFFFF00CC6666000000000000000000CC666600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC666600CC666600FFCCCC00FFCCCC00FFCC
      CC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCC
      CC00FFCCCC00FFCCCC00FFCCCC00CC666600CC996600FFFFFF00CC996600FFFF
      FF00FFFFFF00CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC99660000000000CC666600FFCCCC00FFCC
      CC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CC6666000000000000000000CC666600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000009900FFFFFF00FFCCCC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000009900FFFFFF00CC666600CC666600FFFFFF00FFFFFF00FFCC
      CC00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFF
      FF00FFCCCC00FFFFFF00FFFFFF00CC666600CC996600FFFFFF00CC996600CC99
      6600CC996600CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC99660000000000CC666600FFCCCC00FFCC
      CC00FFFFFF00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCC
      CC00FFCCCC00FFFFFF00CC6666000000000000000000CC666600FFCCCC00FFCC
      CC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCC
      CC00FFCCCC00FFCCCC00FFCCCC00CC666600CC666600FFFFFF00FFFFFF00FFCC
      CC00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFF
      FF00FFCCCC00FFFFFF00FFFFFF00CC666600CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC99660000000000CC666600FFCCCC00FFCC
      CC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CC6666000000000000000000CC666600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC666600CC666600FFCCCC00FFCCCC000000
      9900000099000000990000009900FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCC
      CC00FFCCCC00FFCCCC00FFCCCC00CC666600CC996600FFFFFF00CC996600CC99
      6600CC996600CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC99660000000000CC666600CC666600FFCC
      CC00FFFFFF00FFFFFF00FFFFFF0000009900FFFFFF00CCCCFF00000099000000
      9900CCCCFF00FFFFFF00CC6666000000000000000000CC666600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC666600CC666600FFFFFF00FFFFFF000000
      9900FFFFFF00FFFFFF0000009900FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFF
      FF00FFCCCC00FFFFFF00FFFFFF00CC666600CC996600FFFFFF00CC996600FFFF
      FF00FFFFFF00CC996600FFFFFF00993300009933000099330000993300009933
      00009933000099330000FFFFFF00CC99660000000000CC666600FFCCCC00FFCC
      CC00FFFFFF00FFFFFF00FFFFFF0000009900FFFFFF0000009900FFFFFF00FFFF
      FF0000009900FFFFFF00CC6666000000000000000000CC666600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000009900FFFFFF00FFCCCC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000009900FFFFFF00CC666600CC666600FFFFFF00FFFFFF000000
      9900FFFFFF00FFFFFF0000009900FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFF
      FF00FFCCCC00FFFFFF00FFFFFF00CC666600CC996600FFFFFF00CC996600FFFF
      FF00FFFFFF00CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC99660000000000CC666600FFCCCC00FFCC
      CC00FFFFFF00FFFFFF00FFFFFF0000009900FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000009900FFFFFF00CC6666000000000000000000CC666600FFCCCC00FFCC
      CC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCC
      CC00FFCCCC00FFCCCC00FFCCCC00CC666600CC666600FFCCCC00FFCCCC000000
      9900000099000000990000009900FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCC
      CC00FFCCCC00FFCCCC00FFCCCC00CC666600CC996600FFFFFF00CC996600CC99
      6600CC996600CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC99660000000000CC666600FFCCCC00FFCC
      CC00FFFFFF00FFFFFF00FFFFFF0000009900FFFFFF0000009900000099000000
      9900CCCCFF00FFFFFF00CC6666000000000000000000CC666600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC666600CC666600FFFFFF00FFFFFF00FFCC
      CC00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFF
      FF00FFCCCC00FFFFFF00FFFFFF00CC666600CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC99660000000000CC666600FFCCCC00FFCC
      CC00FFFFFF00FFFFFF000000990000009900FFFFFF0000009900FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CC6666000000000000000000CC666600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC666600CC666600FFFFFF00FFFFFF00FFCC
      CC00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFF
      FF00FFCCCC00FFFFFF00FFFFFF00CC666600CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC996600CC996600CC99660000000000CC666600CC666600FFCC
      CC00FFFFFF00FFFFFF00FFFFFF0000009900FFFFFF0000009900000099000000
      990000009900FFFFFF00CC6666000000000000000000CC666600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFCCCC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC666600CC666600FFCCCC00CC666600CC66
      6600FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCC
      CC00CC666600CC666600FFCCCC00CC666600CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC996600CC996600CCCCCC00CCCCCC00CCCCCC00CCCCCC00CC99
      66000000000000000000000000000000000000000000CC666600FFCCCC00FFCC
      CC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CC6666000000000000000000CC666600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000009900FFFFFF00FFCCCC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000009900FFFFFF00CC666600CC666600FFCCCC00FFCCCC00FFCC
      CC00FFCCCC00FFCCCC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFCCCC00FFCC
      CC00FFCCCC00FFCCCC00FFCCCC00CC66660000000000CC996600CC996600CC99
      6600CC9966000000000000000000CC996600CC996600CC996600CC9966000000
      00000000000000000000000000000000000000000000CC666600CC666600CC66
      6600CC666600CC666600CC666600CC666600CC666600CC666600CC666600CC66
      6600CC666600CC666600000000000000000000000000CC666600CC666600CC66
      6600CC666600CC666600CC666600CC666600CC666600CC666600CC666600CC66
      6600CC666600CC666600CC666600CC666600CC666600CC666600CC666600CC66
      6600CC666600CC666600CC666600CC666600CC666600CC666600CC666600CC66
      6600CC666600CC666600CC666600CC66660000000000CC660000993300009933
      0000CC660000000000000000000000000000000000000000000000000000CC66
      00009933000099330000CC660000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B2B2
      B200CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00B2B2B200999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CC66000099330000000000000000
      000099330000CC66000000000000000000000000000000000000CC6600009933
      0000000000000000000099330000CC66000000000000CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC996600CC996600CC9966000000000000000000CC999900CCCC
      CC00FFCCCC00FFFFFF00FFFFFF00FFFFCC00FFFFFF00CCCCFF00FFCCCC0099A8
      AC00808080000000000000000000000000000000000000000000CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC9966000000000000000000CC66000099330000000000000000
      0000000000009933000000000000000000000000000000000000993300000000
      0000000000000000000099330000CC66000000000000CC996600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966000000000099999900B2B2B200FFCC
      CC00FFFFFF00CCFFFF00FFCC9900FF993300CCCCFF00FF993300CC330000CC33
      0000B2B2B2008080800000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC996600000000000000000000000000CC660000993300000000
      00000000000099330000CC6600000000000000000000CC660000993300000000
      00000000000099330000CC6600000000000000000000CC996600FFFFFF009933
      0000993300009933000099330000993300009933000099330000993300009933
      00009933000099330000FFFFFF00CC9966000000000099999900CC999900CCCC
      CC00FFCCCC00FFFFFF00FFCC9900FFCC6600FF993300CC330000FF3333009999
      CC00CC330000B2B2B20080808000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF0099330000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000CC6600009933
      0000993300009933000099330000CC660000CC66000099330000993300009933
      000099330000CC660000000000000000000000000000CC996600FFFFFF009933
      0000CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC99660099330000FFFFFF00CC9966000000000099999900B2B2B200FFCC
      CC00FFFFFF00CCFFFF00FFCC9900FFFF0000FFCC3300FF663300CCCCFF00FFFF
      FF00CC999900CC33000080808000663333000000000000000000CC996600FFFF
      FF00FFFFFF00993300009933000099330000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000000000000000
      0000993300009933000099330000993300009933000099330000993300009933
      00000000000000000000000000000000000000000000CC996600FFFFFF009933
      0000993300009933000099330000993300009933000099330000993300009933
      00009933000099330000FFFFFF00CC9966000000000099999900CC999900CCCC
      CC00FFCCCC00FFFFFF00FFCC9900FFCC3300FF993300FF993300FF663300FFFF
      FF00CCCCFF00CC99990080808000663333000000000000000000CC996600FFFF
      FF009933000099330000993300009933000099330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000000000000000
      0000000000009933000099999900FFFFFF00FFFFFF0099999900993300000000
      00000000000000000000000000000000000000000000CC996600FFFFFF009933
      0000CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC99660099330000FFFFFF00CC9966000000000099999900B2B2B200FFCC
      CC00FFFFFF00CCFFFF00FFCC9900FF993300FFFFCC00FFFFFF00FFFFFF00CC00
      0000CC000000CC00000080808000663333000000000000000000CC996600FFFF
      FF009933000099330000FFFFFF00993300009933000099330000FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000000000000000
      00000000000099999900FFFFFF006666660066666600FFFFFF00666666000000
      00000000000000000000000000000000000000000000CC996600FFFFFF009933
      0000993300009933000099330000993300009933000099330000993300009933
      00009933000099330000FFFFFF00CC9966000000000099999900CC999900CCCC
      CC00FFCCCC00FFFFFF00FFFFFF00CCCCFF00FFCC3300CCCCFF00CCFFFF00CCCC
      FF00FF000000CC00000080808000663333000000000000000000CC996600FFFF
      FF0099330000FFFFFF00FFFFFF00FFFFFF00993300009933000099330000FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000000000000000
      000099999900FFFFFF00CCCCCC00CCCCCC00FFFFFF0066666600CCCCCC006666
      66000000000000000000000000000000000000000000CC996600FFFFFF009933
      0000CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC99660099330000FFFFFF00CC9966000000000099999900B2B2B200FFCC
      CC00FFFFFF00CCFFFF00FFFFFF00FFFFFF00FFCC3300FF993300FF666600FF33
      3300CC000000CC00000080808000663333000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009933000099330000FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000000000009999
      9900FFFFFF00CCCCCC00CCCCCC006666660099999900FFFFFF00CCCCCC00CCCC
      CC006666660000000000000000000000000000000000CC996600FFFFFF009933
      0000993300009933000099330000993300009933000099330000993300009933
      00009933000099330000FFFFFF00CC9966000000000099999900CC999900CCCC
      CC00FFCCCC00E5E5E500E5E5E500E5E5E500E5E5E500FF993300FF333300FF00
      0000FFCC6600CC00000080808000663333000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0099330000FFFF
      FF00FFFFFF00CC9966000000000000000000000000000000000099999900FFFF
      FF00CCCCCC00CCCCCC0066666600000000000000000099999900FFFFFF00CCCC
      CC00CCCCCC0066666600000000000000000000000000CC996600FFFFFF009933
      0000CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC99660099330000FFFFFF00CC996600000000009999990099A8AC00CCCC
      FF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCCCFF00CCCCCC00CCCC
      CC00CCCCCC00B2B2B20080808000663333000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000099999900FFFFFF00CCCC
      CC00CCCCCC00666666000000000000000000000000000000000099999900FFFF
      FF00CCCCCC00CCCCCC00666666000000000000000000CC996600FFFFFF009933
      0000993300009933000099330000993300009933000099330000993300009933
      00009933000099330000FFFFFF00CC9966000000000099999900CCFFFF00646F
      7100333333006633330066333300646F71009966660099999900CCCCCC00FFFF
      FF00FFCCCC00B2B2B20080808000663333000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC996600CC99
      6600CC996600CC996600000000000000000099999900FFFFFF00CCCCCC00CCCC
      CC00666666000000000000000000000000000000000000000000000000009999
      9900FFFFFF00CCCCCC00CCCCCC006666660000000000CC996600FFFFFF009933
      0000CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC99660099330000FFFFFF00CC9966000000000099999900CCFFFF000066
      99009999CC00CCCCFF009999CC0066333300FFFFFF00CCCC9900CCCC9900646F
      7100B2B2B200CCCCCC0080808000663333000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC996600E5E5
      E500CC99660000000000000000000000000099999900FFFFFF00CCCCCC006666
      6600000000000000000000000000000000000000000000000000000000000000
      000099999900FFFFFF00CCCCCC006666660000000000CC996600FFFFFF009933
      0000993300009933000099330000993300009933000099330000993300009933
      00009933000099330000FFFFFF00CC9966000000000000000000999999000066
      9900FFFFFF00CCCCFF00CCCCFF000033660066333300FFFFFF00FFFFCC00CCCC
      99006633330099A8AC0080808000663333000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC996600CC99
      66000000000000000000000000000000000099999900FFFFFF00666666000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900FFFFFF006666660000000000CC996600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966000000000000000000000000009999
      990000669900FFFFFF00003366000080800000CC660066333300FFFFFF006633
      3300003366009966660099666600000000000000000000000000CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC9966000000
      0000000000000000000000000000000000009999990099999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000999999009999990000000000CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC996600CC996600CC9966000000000000000000000000000000
      000000000000006699009966660000CCCC003333330099666600663333009966
      6600996666000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CC99990099330000CC9999000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000993300000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009933000099330000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC9999009933000099330000993300000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000CC6600009933
      0000000000000000000000000000000000000000000000000000000000000000
      000099330000CC66000099330000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC996600CC996600CC99660000000000CC996600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      8000993300009933000099330000CC999900CC996600CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600CC99660099330000CC660000CC66
      0000993300000000000000000000000000000000000000000000000000009933
      0000CC660000CC66000099330000CC996600CC996600CC996600CC996600CC99
      6600CC996600CC996600CC996600CC99660000000000CC996600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC99660000000000CC996600FFFFFF00E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E5008080800080808000808080009933
      00009933000099330000CC99990000000000CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0099330000CC660000CC66
      0000CC660000993300000000000000000000000000000000000099330000CC66
      0000CC660000CC66000099330000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC99660000000000CC996600FFFFFF009933
      0000993300009933000099330000993300009933000099330000993300009933
      00009933000099330000FFFFFF00CC99660000000000CC996600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E5E5E50099996600FFFFCC00FFFFCC00FFFFFF00CCCC
      990099330000CC9999000000000000000000CC996600FFFFFF00E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E50099330000CC660000CC66
      0000CC660000CC66000099330000000000000000000099330000CC660000CC66
      0000CC660000CC66000099330000E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E500FFFFFF00CC99660000000000CC996600FFFFFF009933
      0000CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC99660099330000FFFFFF00CC99660000000000CC996600FFFFFF00E5E5
      E500E5E5E500E5E5E50099999900F2EABF00FFFFCC00FFFFCC00FFFFCC00FFFF
      FF0066666600000000000000000000000000CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0099330000CC660000CC66
      0000CC660000CC660000CC6600009933000099330000CC660000CC660000CC66
      0000CC660000CC66000099330000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC99660000000000CC996600FFFFFF009933
      0000993300009933000099330000993300009933000099330000993300009933
      00009933000099330000FFFFFF00CC99660000000000CC996600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0099999900F2EABF00FFFFFF00F2EABF00FFFFCC00FFFF
      CC0066666600000000000000000000000000CC996600FFFFFF00E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E50099330000CC660000CC66
      0000CC660000CC66000099330000000000000000000099330000CC660000CC66
      0000CC660000CC66000099330000E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E500FFFFFF00CC99660000000000CC996600FFFFFF009933
      0000CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC99660099330000FFFFFF00CC99660000000000CC996600FFFFFF00E5E5
      E500E5E5E500E5E5E50099999900F2EABF00FFFFFF00FFFFFF00F2EABF00FFFF
      CC0066666600000000000000000000000000CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0099330000CC660000CC66
      0000CC660000993300000000000000000000000000000000000099330000CC66
      0000CC660000CC66000099330000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC99660000000000CC996600FFFFFF009933
      0000993300009933000099330000993300009933000099330000993300009933
      00009933000099330000FFFFFF00CC99660000000000CC996600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0099999900F2EABF00F2EABF00F2EABF009999
      660080808000000000000000000000000000CC996600FFFFFF00E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E50099330000CC660000CC66
      0000993300000000000000000000000000000000000000000000000000009933
      0000CC660000CC66000099330000E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E500FFFFFF00CC99660000000000CC996600FFFFFF009933
      0000CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC99660099330000FFFFFF00CC99660000000000CC996600FFFFFF00E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500999999009999990099999900E5E5
      E500CC996600000000000000000000000000CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0099330000CC6600009933
      0000000000000000000000000000000000000000000000000000000000000000
      000099330000CC66000099330000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC99660000000000CC996600FFFFFF009933
      0000993300009933000099330000993300009933000099330000993300009933
      00009933000099330000FFFFFF00CC99660000000000CC996600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CC996600000000000000000000000000CC996600FFFFFF00E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E5009933000099330000CC99
      6600000000000000000000000000000000000000000000000000000000000000
      0000CC9966009933000099330000E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E500FFFFFF00CC99660000000000CC996600FFFFFF009933
      0000CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC99660099330000FFFFFF00CC99660000000000CC996600FFFFFF00E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500FFFFFF00CC996600CC996600CC99
      6600CC996600000000000000000000000000CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC99
      6600000000000000000000000000000000000000000000000000000000000000
      0000CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC99660000000000CC996600FFFFFF009933
      0000993300009933000099330000993300009933000099330000993300009933
      00009933000099330000FFFFFF00CC99660000000000CC996600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC996600E5E5E500CC99
      660000000000000000000000000000000000CC996600FFFFFF00E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500FFFFFF00CC99
      6600000000000000000000000000000000000000000000000000000000000000
      0000CC996600FFFFFF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E500FFFFFF00CC99660000000000CC996600FFFFFF009933
      0000CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC99660099330000FFFFFF00CC99660000000000CC996600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC996600CC9966000000
      000000000000000000000000000000000000CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC99
      6600000000000000000000000000000000000000000000000000000000000000
      0000CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC99660000000000CC996600FFFFFF009933
      0000993300009933000099330000993300009933000099330000993300009933
      00009933000099330000FFFFFF00CC99660000000000CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600000000000000
      000000000000000000000000000000000000CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC99
      6600000000000000000000000000000000000000000000000000000000000000
      0000CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC99660000000000CC996600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CC996600CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600000000000000000000000000000000000000000000000000000000000000
      0000CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC996600CC996600CC99660000000000CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC996600CC996600CC9966000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300009933
      0000993300009933000099330000993300009933000099330000993300009933
      0000993300009933000099330000000000000000000000000000000000000000
      9900000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000000000000000000000000000000000000
      9900000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000000000000000000000000993300009933
      0000993300009933000099330000993300009933000099330000993300009933
      0000993300000000000000000000000000000000000099330000CC660000CC66
      000099330000E5E5E500CC66000099330000E5E5E500E5E5E500E5E5E5009933
      0000CC660000CC660000993300000000000000000000000000003333CC000000
      FF00000099000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003333CC000000
      FF00000099000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CC996600FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900CC99
      6600CC9966009933000000000000000000000000000099330000CC660000CC66
      000099330000E5E5E500CC66000099330000E5E5E500E5E5E500E5E5E5009933
      0000CC660000CC660000993300000000000000000000000000003333CC003399
      FF000000FF000000990000000000000000000000000000000000000000000000
      0000000000000000FF00000000000000000000000000000000003333CC003399
      FF000000FF000000990000000000000000000000000000000000000000000000
      0000000000000000FF000000000000000000CC996600CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      660099330000CC99660099330000000000000000000099330000CC660000CC66
      000099330000E5E5E500CC66000099330000E5E5E500E5E5E500E5E5E5009933
      0000CC660000CC66000099330000000000000000000000000000000000003333
      CC000066FF000000CC0000000000000000000000000000000000000000000000
      00000000FF000000000000000000000000000000000000000000000000003333
      CC000066FF000000CC0000000000000000000000000000000000000000000000
      00000000FF00000000000000000000000000CC996600FFFFFF00FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC
      9900CC9966009933000099330000000000000000000099330000CC660000CC66
      000099330000E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E5009933
      0000CC660000CC66000099330000000000000000000000000000000000000000
      00000000CC000000FF0000009900000000000000000000000000000000000000
      FF00000099000000000000000000000000000000000000000000000000000000
      00000000CC000000FF0000009900000000000000000000000000000000000000
      FF0000009900000000000000000000000000CC996600FFFFFF00FFCC9900FFCC
      9900FFCC9900FFCC990000CC000000990000FFCC99000000FF000000CC00FFCC
      9900CC996600CC99660099330000000000000000000099330000CC660000CC66
      0000CC660000993300009933000099330000993300009933000099330000CC66
      0000CC660000CC66000099330000000000000000000000000000000000000000
      0000000000000000CC000000FF000000990000000000000000000000FF000000
      9900000000000000000000000000000000000000000000000000000000000000
      0000000000000000CC000000FF000000990000000000000000000000FF000000
      990000000000000000000000000000000000CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CC996600CC996600CC996600993300000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC66000099330000000000000000000000000000000000000000
      000000000000000000000000CC000000FF00000099000000FF00000099000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000CC000000FF00000099000000FF00000099000000
      000000000000000000000000000000000000CC996600FFFFFF00FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC
      9900CC996600CC996600CC996600993300000000000099330000CC660000CC66
      0000993300009933000099330000993300009933000099330000993300009933
      0000CC660000CC66000099330000000000000000000000000000000000000000
      00000000000000000000000000000000CC000000FF0000009900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000CC000000FF0000009900000000000000
      00000000000000000000000000000000000000000000CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600FFCC
      9900FFCC9900CC996600CC996600993300000000000099330000CC6600009933
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0099330000CC66000099330000000000000000000000000000000000000000
      000000000000000000000000CC000000FF00000099000000CC00000099000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000CC000000FF00000099000000CC00000099000000
      0000000000000000000000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC99
      6600FFCC9900FFCC9900CC996600993300000000000099330000CC6600009933
      0000FFFFFF00993300009933000099330000993300009933000099330000FFFF
      FF0099330000CC66000099330000000000000000000000000000000000000000
      0000000000000000CC000000FF000000990000000000000000000000CC000000
      9900000000000000000000000000000000000000000000000000000000000000
      0000000000000000CC000000FF000000990000000000000000000000CC000000
      990000000000000000000000000000000000000000000000000000000000CC99
      6600FFFFFF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500FFFFFF00CC99
      6600CC996600CC99660099330000000000000000000099330000CC6600009933
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0099330000CC66000099330000000000000000000000000000000000000000
      CC000000FF000000FF0000009900000000000000000000000000000000000000
      CC00000099000000000000000000000000000000000000000000000000000000
      CC000000FF000000FF0000009900000000000000000000000000000000000000
      CC0000009900000000000000000000000000000000000000000000000000CC99
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CC9966000000000000000000000000000000000099330000E5E5E5009933
      0000FFFFFF00993300009933000099330000993300009933000099330000FFFF
      FF009933000099330000993300000000000000000000000000000000CC003399
      FF000000FF000000990000000000000000000000000000000000000000000000
      00000000CC0000009900000000000000000000000000000000000000CC003399
      FF000000FF000000990000000000000000000000000000000000000000000000
      00000000CC000000990000000000000000000000000000000000000000000000
      0000CC996600FFFFFF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500FFFF
      FF00CC9966000000000000000000000000000000000099330000CC6600009933
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0099330000CC66000099330000000000000000000000000000666699000000
      CC00666699000000000000000000000000000000000000000000000000000000
      000000000000000000000000CC00000000000000000000000000666699000000
      CC00666699000000000000000000000000000000000000000000000000000000
      000000000000000000000000CC00000000000000000000000000000000000000
      0000CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000099330000993300009933
      0000993300009933000099330000993300009933000099330000993300009933
      0000993300009933000099330000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC99660000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C60000000000C6C6
      C60000000000C6C6C60000000000C6C6C60000000000C6C6C60000000000C6C6
      C60000000000C6C6C60000000000C6C6C6000000000000000000CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC99660000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C60000000000C6C6C6000000
      00000000000000000000C6C6C60000000000C6C6C60000000000C6C6C6000000
      0000C6C6C60000000000C6C6C600000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC9966000000000000000000000000003399CC00006699000066
      9900006699000066990000669900006699000066990000669900006699000066
      990066CCCC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600000000000000
      000000000000C6C6C600000000000000000000000000C6C6C60000000000C6C6
      C60000000000C6C6C60000000000C6C6C6000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500FFFFFF00CC99660000000000000000003399CC003399CC0099FFFF0066CC
      FF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF003399
      CC00006699000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C6000000000000000000FFFF
      00000000000000000000C6C6C600000000000000000000000000C6C6C6000000
      0000C6C6C60000000000C6C6C600000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000003399CC003399CC0066CCFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0066CC
      FF00006699003399CC0000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000FFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000000000C6C6C6000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500FFFFFF00CC99660000000000000000003399CC003399CC0066CCFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0066CC
      FF0066CCCC000066990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C60000000000FFFF0000FFFF
      0000000000008484840084848400848484000000000000000000C6C6C6000000
      0000C6C6C60000000000C6C6C600000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000003399CC0066CCFF003399CC0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0066CC
      FF0099FFFF00006699003399CC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      00000000000084848400848484008484840000000000C6C6C60000000000C6C6
      C60000000000C6C6C60000000000C6C6C6000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500FFFFFF00CC99660000000000000000003399CC0066CCFF0066CCCC0066CC
      CC0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0066CC
      FF0099FFFF0066CCCC0000669900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C60000000000FFFF0000FFFF
      0000000000008484840084848400848484000000000000000000C6C6C6000000
      00000000000000000000C6C6C600000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000003399CC0099FFFF0066CCFF003399
      CC00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF0099FF
      FF00CCFFFF00CCFFFF0000669900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      00000000000084848400848484008484840000000000C6C6C600000000000000
      000000000000C6C6C60000000000C6C6C6000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500FFFFFF00CC99660000000000000000003399CC0099FFFF0099FFFF0066CC
      FF003399CC003399CC003399CC003399CC003399CC003399CC003399CC003399
      CC003399CC003399CC0066CCFF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000000000000000000000000000000000C6C6C60000000000FFFF0000FFFF
      0000000000008484840084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000003399CC00CCFFFF0099FFFF0099FF
      FF0099FFFF0099FFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF000066
      9900000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      00000000000084848400848484008484840000000000C6C6C600000000000000
      000000000000C6C6C60000000000C6C6C6000000000000000000CC996600FFFF
      FF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500FFFFFF00CC996600CC99
      6600CC996600CC9966000000000000000000000000003399CC00CCFFFF00CCFF
      FF00CCFFFF00CCFFFF003399CC003399CC003399CC003399CC003399CC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000C6C6C60000000000FFFF0000FFFF
      0000000000008484840084848400848484000000000000000000C6C6C6000000
      00000000000000000000C6C6C600000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC996600E5E5
      E500CC99660000000000000000000000000000000000000000003399CC003399
      CC003399CC003399CC0000000000000000000000000000000000000000000000
      0000000000009933000099330000993300000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00008484840084848400848484008484840000000000C6C6C60000000000C6C6
      C60000000000C6C6C60000000000C6C6C6000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC996600CC99
      6600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000993300000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000C6C6C60000000000000000008484
      8400848484008484840084848400848484000000000000000000C6C6C6000000
      0000C6C6C60000000000C6C6C600000000000000000000000000CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC9966000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000000000000000
      0000000000009933000000000000993300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C60000000000C6C6
      C60000000000C6C6C60000000000C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300009933
      0000993300000000000000000000000000000000000000000000000000000000
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
      2800000040000000700100000100010000000000800B00000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FDFF8000FFFFFFFFE0FF8000FFFFFFFF
      801F8000FFFFFFFF001F8000FFFFFFFF001F8000FFFFFFFF000F8000FFD7003F
      000F8000FFEF003F000F8000FFD7003F00018000FFE3003F01018000FFFF003F
      01018000FFFF003F000F8000D7FF003F008F8000D7FF003F00AF8000D7FF003F
      803F8000D5FF003FE1FF8000FFFF003FFFFFFFFFFFF8FFFFFFFFFFFF8000C007
      FFFFF0FF8000800387C3E0FF800100018383C0FF80030001C107830180070001
      E00F870180070000F01F8F8180070000F83F878180078000F01F82018007C000
      E00FC0018007E001C107E0398007E0078383F07F800FF00787C3FFFF801FF003
      FFFFFFFF803FF803FFFFFFFFFFFFFFFFFBFFFFFFFFFFE000F9FFFFDFC003E000
      FCFFFFCFC003E000FC7FE007C003E000F03FFFCFC0036000F01FFFDFC0032000
      F80FFFFFC0030000F83F0180C0032000C01F0180C0036000C00F0180C003E000
      E00F0180C003E000E03F0180C003E000F01F0180C007E000F00F0381C00FE000
      F8070783C01FE000F8030F87FFFFE000F81FFFFF8000F83FF81FFFE30000F01F
      F81FFFC10000F01FF81FFF810000E00FFC3FFF010000C007FC3FFC0300008007
      FC3FC00700008003FC3F800F00008003FC3F001F00008003FC3E003F00000003
      981C003F000000010000003F000080010001003F0000C0030003003F0000E31F
      0007807F0000E31F981FC0FF0000F39FFFFFFFFFFFFFFFCF1FFFBFFF0000FF87
      0FFF9FFF0000FF8783FFCC3F0000F70F81FFE01F0000F30FC0FFF01F0000F01F
      C03FE01F0000F01FE01FE01F0000F003E007E00F0000F007F003E0010000F00F
      F001F0000000F01FF800FF000000F03FF800FF800000F07FFC00FF800000F0FF
      FC00FF810000F1FFFE00FFC3FFFFF3FFFC3FFC3FFFFFFFFFF00FF00FFFFF3FFF
      E007E007FFFF0FFFC003C003C00383FF80018001C00380FF80018001C003C03F
      00000000C003C00F00000000C003E00700000000C003E00300000000C003F001
      80018001C003F00080018001C003F800C003C003C003F800E007E007FF3FFC00
      F00FF00FFFFFFE00FC3FFC3FFFFFFF00F8FFF83F801FFFFFF03FF39F000F03FF
      E00FF7DF000F00FFE003F45F000F00FFC001F55F000F007FC001F55F000F003F
      8001F55F000F00078001F55F000F00000003F55F000000000003F55F00000000
      8007F55F00010000E007F55F00030000F80FFDDF00070000FE0FFDDF000F0000
      FF9FFDDF800F0000FFFFFE3FC01FFFFFFFFFFF3FFFFFF8FF8003FE3FFFFFF03F
      0001FC3F0000E00F0001E00F0000E0030001C0070000C001000180030000C001
      000100010000800180030001000080018003000100000003C007000100000003
      C007000100008007E00F00010000E007E00F00010000F80FF01F8003FFFFFE0F
      F01FC007FFFFFF9FFC7FE00FFFFFFFFFFF8FFCFFFFFFFFFFFFC7F87FFFFFF01F
      E003F07FFFFFE00FC001E07FFC3FC007C001C03FC0038003C000803EC0030001
      8000001CE007000100020008F00F000100070001F00F000100078003F00F0001
      00078007F00F00010007800FF00F00010007C01FF81F8003800FE03FFC3FC007
      F00FF07FFFFFE00FF83FF8FFFFFFF01F8FFF8FFFFFFF800007FF07FFC0038000
      83FF83FFC003800081FF81FFC0038000C0FFC0FFC0038000E003E003C0038000
      F001F001C0038000F800F800C0038000F800F800C003FFFBF800F800C003FFDB
      F800F800C003FFCBF800F800C003F003F800F800C003F003F800F800C003FFCB
      FC01FC01C003FFDBFE03FE03FFFFFFFBFFFFFFFFFFFFFFFF0001800180018001
      0001800180018001000180018001800100018001800180010001800180018001
      0001800180018001000180018001800100018001800180010001800180018001
      0001800180018001000180018001800100018001800180010001800180018001
      00018001800180010001FFFFFFFFFFFFE003FC00FFFFFFFFC001FC0080000001
      8000FC00800000018000FC00800000010000E000800000010000E00080000001
      0000E000800000010000E0008000000100000007800000010000000780000001
      000000078000000100000007800000018001003F800000018001003F80000001
      C003003F80000001F00F003F8000FFFFFFFFFFFFFCFFFE7FFFFFFFFFF87FF83F
      FFFF8007F87FE01FC003000770E3800F8001000330E300078001000301E30003
      8001000101FF0001800100010023000080010001006300008001000100E18001
      8001000F01F0C0018007801F03F8E000C00FC3FF0788F001E1FFFFFF0F88F807
      FFFFFFFF1F80FC1FFFFFFFFF3FC1FE7FFDFFFF00FFFFC003E0FFFF00FFFF8001
      801FFF0080078001001FF50000038001001FFF8000038001000FF7C700038001
      000FFFFF00038001000F803F000180010001001F000080070101001F0000C00F
      0101001F0000E01F000F00038000F007008F0003C3C0F00700AF0061FFF3F80F
      803F80F4FFFFF83FE1FFC7FEFFFFFC7FFFFF80038000FFFF0000800180000000
      0000800180000000000080018000000000008001800000000000800180000000
      0000800180000000000080018000000000008001800000000000800180000000
      0000800180000000000080018000000000008001800000000000800180000000
      000F800180000000861F80038000000087E1FFFFE01FFFFF33CC8000C007C003
      3BDC80008003C003999980008001C003C00380008000C003F00F80008000C003
      F81F80008000C003F81F80008000C003F00F80008000C003E00780008000C003
      C18380008000C00383C180008000C00307E080008000C0070FF08000C000C00F
      1FF88000E001C01F3FFC8000F807FFFFFFF8FF9FF9FFFFFF8000FF8FF1FF8000
      80000007E000800080010003C000800080030001800080008007000000008000
      800700018000800080070003C000800080070007E00080008007000FF0008000
      8007000FF00080008007000FF0008000800F000FF0008000801F000FF0008000
      803F000FF0008000FFFF000FF0008000FFFFFFFFFFFFFFFFC001EFFDEFFDC007
      8001C7FFC7FF80038001C3FBC3FB00018001E3F7E3F700018001F1E7F1E70001
      8001F8CFF8CF00008001FC1FFC1F00008001FE3FFE3F80008001FC1FFC1FC000
      8001F8CFF8CFE0018001E1E7E1E7E0078001C3F3C3F3F0078001C7FDC7FDF003
      8001FFFFFFFFF803FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAC003FFFF
      C0075555C0038007BFEBA0AAC003000700054555C00300037E31000AC0030003
      7E350055C00300010006802AC00300017FEA0055C003000180148022C0030001
      C00A0041C003000FE0018022C003801FE0070055C007C3F8F007802AC00FFFFC
      F0030055C01FFFBAF803802AFFFFFFC7FFFF0000FFFFFFFFE0000000FFFF8001
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
  object MData: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 67
    Top = 131
  end
  object DS_MData: TDataSource
    DataSet = MData
    Left = 19
    Top = 131
  end
  object frReport: TfrReport
    Dataset = frDBDataSet
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    RebuildPrinter = False
    Left = 64
    Top = 171
    ReportForm = {19000000}
  end
  object frDBDataSet: TfrDBDataSet
    DataSet = MData
    Left = 19
    Top = 171
  end
  object SaveDialog1: TSaveDialog
    Filter = '.dbf'
    Left = 291
    Top = 147
  end
  object ImageList1: TImageList
    Left = 75
    Top = 222
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE000000000000000000FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE0000000000FEFEFE0000000000FEFEFE00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE0000000000FEFEFE00FEFEFE00FEFEFE00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE0000000000FEFEFE00FEFEFE00FEFEFE00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE0000000000000000000000
      00000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE0000000000FEFE
      FE00FEFEFE0000000000FEFEFE00FEFEFE00FEFEFE00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE0000000000FEFEFE00FEFEFE00FEFEFE00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE0000000000FEFE
      FE00FEFEFE0000000000FEFEFE00FEFEFE00FEFEFE00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE0000000000000000000000
      000000000000FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFFFFF00000000
      FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFD7003F00000000
      FFEF003F00000000FFD7003F00000000FFE3003F00000000FFFF003F00000000
      FFFF003F00000000D7FF003F00000000D7FF003F00000000D7FF003F00000000
      D5FF003F00000000FFFF003F0000000000000000000000000000000000000000
      000000000000}
  end
end
