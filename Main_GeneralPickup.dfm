inherited Frm_GeneralPickup: TFrm_GeneralPickup
  Left = 235
  Top = 119
  VertScrollBar.Color = clWindow
  VertScrollBar.ParentColor = False
  Caption = 'Frm_GeneralPickup'
  ClientHeight = 625
  ClientWidth = 1133
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image: TImage
    Width = 1133
  end
  inherited P_back: TPanel
    Width = 1133
    Height = 604
    inherited P_main: TPanel
      Width = 1127
      Height = 598
      inherited Panel_down: TPanel
        Top = 516
        Width = 1125
        Height = 80
        inherited Bevel_bass: TBevel
          Width = 1125
        end
        object E_th1: TcxButtonEdit
          Left = 8
          Top = 10
          Width = 65
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
          OnDblClick = E_th11DblClick
        end
        object CB_2: TcxCheckBox
          Left = 8
          Top = 49
          Width = 49
          Height = 21
          ParentColor = False
          Properties.DisplayUnchecked = 'False'
          Properties.OnChange = CB_2PropertiesChange
          Properties.Caption = #36807#28388
          Style.BorderColor = 8623776
          Style.BorderStyle = ebsSingle
          Style.Color = 14935011
          TabOrder = 1
        end
        object CB_3: TcxCheckBox
          Left = 75
          Top = 49
          Width = 49
          Height = 21
          ParentColor = False
          Properties.DisplayUnchecked = 'False'
          Properties.OnChange = CB_2PropertiesChange
          Properties.Caption = #32534#36753
          Style.BorderColor = 8623776
          Style.BorderStyle = ebsSingle
          Style.Color = 14935011
          TabOrder = 2
        end
        object CB_4: TcxCheckBox
          Left = 142
          Top = 49
          Width = 49
          Height = 21
          ParentColor = False
          Properties.DisplayUnchecked = 'False'
          Properties.OnChange = CB_2PropertiesChange
          Properties.Caption = #25490#24207
          Style.BorderColor = 8623776
          Style.BorderStyle = ebsSingle
          Style.Color = 14935011
          TabOrder = 3
        end
        object CB_5: TcxCheckBox
          Left = 209
          Top = 49
          Width = 49
          Height = 21
          ParentColor = False
          Properties.DisplayUnchecked = 'False'
          Properties.OnChange = CB_2PropertiesChange
          Properties.Caption = #20998#32452
          Style.BorderColor = 8623776
          Style.BorderStyle = ebsSingle
          Style.Color = 14935011
          TabOrder = 4
        end
        object E_th2: TcxComboBox
          Left = 80
          Top = 10
          Width = 73
          Height = 22
          AutoSize = False
          Enabled = False
          Style.BorderColor = 8623776
          Style.BorderStyle = ebsSingle
          Style.Color = 15658734
          Style.ButtonTransparency = ebtHideUnselected
          TabOrder = 5
        end
        object E_FClientFullName: TcxComboBox
          Left = 160
          Top = 10
          Width = 249
          Height = 22
          AutoSize = False
          Enabled = False
          Style.BorderColor = 8623776
          Style.BorderStyle = ebsSingle
          Style.Color = 15658734
          Style.ButtonTransparency = ebtHideUnselected
          TabOrder = 6
        end
        object E_FItemModel: TcxComboBox
          Left = 416
          Top = 10
          Width = 129
          Height = 22
          AutoSize = False
          Enabled = False
          Style.BorderColor = 8623776
          Style.BorderStyle = ebsSingle
          Style.Color = 15658734
          Style.ButtonTransparency = ebtHideUnselected
          TabOrder = 7
        end
        object Button1: TButton
          Left = 584
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Button1'
          TabOrder = 8
          OnClick = Button1Click
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1125
        Height = 38
        Align = alTop
        ParentColor = True
        TabOrder = 1
        object ToolBar1: TToolBar
          Left = 1
          Top = 1
          Width = 1123
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
          object TB_In: TToolButton
            Left = 0
            Top = 0
            AutoSize = True
            Caption = #23548#20837
            ImageIndex = 28
            Visible = False
            OnClick = TB_InClick
          end
          object TB_sh: TToolButton
            Left = 35
            Top = 0
            AutoSize = True
            Caption = #23457#26680
            ImageIndex = 31
            Visible = False
            OnClick = TB_shClick
          end
          object TB_Input: TToolButton
            Left = 70
            Top = 0
            AutoSize = True
            Caption = #23548#20837#35774#35745'BOM'
            ImageIndex = 55
            Visible = False
            OnClick = TB_InputClick
          end
          object ToolButton6: TToolButton
            Left = 147
            Top = 0
            AutoSize = True
            Caption = #36873#25321
            ImageIndex = 20
            OnClick = ToolButton6Click
          end
          object TB_Update: TToolButton
            Left = 182
            Top = 0
            AutoSize = True
            Caption = #26356#26032
            ImageIndex = 39
            Visible = False
            OnClick = TB_UpdateClick
          end
          object TB_cl: TToolButton
            Left = 217
            Top = 0
            AutoSize = True
            Caption = #26448#26009
            ImageIndex = 41
            Visible = False
            OnClick = TB_clClick
          end
          object ToolButton4: TToolButton
            Left = 252
            Top = 0
            AutoSize = True
            Caption = #26500#25104#34920
            ImageIndex = 33
            Visible = False
            OnClick = ToolButton4Click
          end
          object TB_Down: TToolButton
            Left = 299
            Top = 0
            AutoSize = True
            Caption = #35774#32622
            ImageIndex = 31
            OnClick = TB_DownClick
          end
          object ToolButton2: TToolButton
            Left = 334
            Top = 0
            AutoSize = True
            Caption = #37325#22797#22270#21495
            ImageIndex = 22
            Visible = False
            OnClick = ToolButton2Click
          end
          object ToolButton3: TToolButton
            Left = 393
            Top = 0
            AutoSize = True
            Caption = #23548#20986
            ImageIndex = 58
            OnClick = ToolButton3Click
          end
          object ToolButton5: TToolButton
            Left = 428
            Top = 0
            Width = 8
            Caption = 'ToolButton5'
            ImageIndex = 4
            Style = tbsSeparator
          end
          object TB_EXIT: TToolButton
            Left = 436
            Top = 0
            Cursor = crHandPoint
            AutoSize = True
            Caption = #36864#20986'[&X]'
            ImageIndex = 19
            OnClick = TB_EXITClick
          end
          object ToolButton1: TToolButton
            Left = 489
            Top = 0
            Width = 8
            Caption = 'ToolButton1'
            ImageIndex = 9
            Style = tbsSeparator
          end
        end
      end
      object RzPageControl1: TRzPageControl
        Left = 0
        Top = 38
        Width = 1125
        Height = 478
        ActivePage = TabSheet1
        Align = alClient
        TabIndex = 0
        TabOrder = 2
        TabOrientation = toBottom
        TabStyle = tsDoubleSlant
        FixedDimension = 19
        object TabSheet1: TRzTabSheet
          Color = 14935011
          Caption = #26597#35810
          object cxGrid: TcxGrid
            Left = 0
            Top = 0
            Width = 1123
            Height = 457
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
                end
                item
                  Format = #23567#35745#65306'0.0000'
                  Kind = skSum
                  FieldName = 'de'
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
              object Code: TcxGridDBColumn
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Width = 45
                DataBinding.FieldName = 'Code'
              end
              object xh: TcxGridDBColumn
                Caption = #24207#21495
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.HideSelection = False
                Properties.ReadOnly = True
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Options.Sorting = False
                Width = 31
                DataBinding.FieldName = 'xh'
              end
              object bjjb: TcxGridDBColumn
                Caption = #37096#20214#32423#21035
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Options.Sorting = False
                Width = 56
                DataBinding.FieldName = 'bjjb'
              end
              object TH: TcxGridDBColumn
                Caption = #22270#21495
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Options.Sorting = False
                Width = 146
                DataBinding.FieldName = 'TH'
              end
              object mc: TcxGridDBColumn
                Caption = #21517#31216
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Options.Sorting = False
                Width = 100
                DataBinding.FieldName = 'mc'
              end
              object gg: TcxGridDBColumn
                Caption = #35268#26684
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Options.Sorting = False
                Width = 115
                DataBinding.FieldName = 'gg'
              end
              object cl: TcxGridDBColumn
                Caption = #26448#26009
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Width = 130
                DataBinding.FieldName = 'cl'
              end
              object clbh: TcxGridDBColumn
                Caption = #26448#26009#32534#21495
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Options.Sorting = False
                Width = 101
                DataBinding.FieldName = 'FNumber'
              end
              object clmcgg: TcxGridDBColumn
                Caption = #20840#31216
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Options.Sorting = False
                Width = 122
                DataBinding.FieldName = 'clmcgg'
              end
              object djjz: TcxGridDBColumn
                Caption = #21333#20214#20928#37325
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
                Width = 70
                DataBinding.FieldName = 'djjz'
              end
              object ssth: TcxGridDBColumn
                Caption = #25152#23646#22270#21495
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Options.Sorting = False
                Width = 70
                DataBinding.FieldName = 'ssth'
              end
              object SL: TcxGridDBColumn
                Caption = #25968#37327
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.ReadOnly = True
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Options.Sorting = False
                Width = 48
                DataBinding.FieldName = 'SL'
              end
              object GB: TcxGridDBColumn
                Caption = #22269#26631
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Options.Sorting = False
                DataBinding.FieldName = 'GB'
              end
              object clmc: TcxGridDBColumn
                Caption = 'K3'#26448#26009#21517#31216
                PropertiesClassName = 'TcxButtonEditProperties'
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
                Width = 137
                DataBinding.FieldName = 'FName'
              end
              object clgg: TcxGridDBColumn
                Caption = 'K3'#26448#26009#35268#26684
                PropertiesClassName = 'TcxButtonEditProperties'
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
                Width = 154
                DataBinding.FieldName = 'FModel'
              end
              object zsl: TcxGridDBColumn
                Caption = #24635#25968#37327
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Options.Sorting = False
                Width = 41
                DataBinding.FieldName = 'zsl'
              end
              object Remark: TcxGridDBColumn
                Caption = #22791#27880
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Options.Sorting = False
                Width = 70
                DataBinding.FieldName = 'Remark'
              end
              object A4: TcxGridDBColumn
                Caption = #24133#38754
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Options.Sorting = False
                Width = 29
                DataBinding.FieldName = 'A4'
              end
            end
            object cxGL: TcxGridLevel
              GridView = cxGV
            end
          end
        end
        object TabSheet2: TRzTabSheet
          Color = 14935011
          Caption = 'K3'#26448#26009#34920
          object cxGridK3: TcxGrid
            Left = 0
            Top = 0
            Width = 1123
            Height = 462
            Align = alClient
            TabOrder = 0
            object cxGVK3: TcxGridDBTableView
              DataController.DataSource = DS_K3
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = #23567#35745#65306'0.0000'
                  Kind = skSum
                  FieldName = 'jz'
                end
                item
                  Format = #23567#35745#65306'0.0000'
                  Kind = skSum
                  FieldName = 'de'
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
              OptionsView.Navigator = True
              OptionsView.Footer = True
              object FNumber: TcxGridDBColumn
                Caption = 'K3'#32534#30721
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.HideSelection = False
                Properties.ReadOnly = True
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Width = 171
                DataBinding.FieldName = 'FNumber'
              end
              object FName: TcxGridDBColumn
                Caption = 'K3'#21517#31216
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Width = 157
                DataBinding.FieldName = 'FName'
              end
              object FModel: TcxGridDBColumn
                Caption = 'K3'#35268#26684
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Width = 232
                DataBinding.FieldName = 'FModel'
              end
              object UnitName: TcxGridDBColumn
                Caption = 'K3'#21333#20301
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Width = 70
                DataBinding.FieldName = 'UnitName'
              end
              object FItemId: TcxGridDBColumn
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                DataBinding.FieldName = 'FItemId'
              end
            end
            object cxGLK3: TcxGridLevel
              GridView = cxGVK3
            end
          end
        end
      end
    end
  end
  object MData: TdxMemData
    Indexes = <>
    SortOptions = []
    AfterEdit = MDataAfterEdit
    Left = 19
    Top = 152
    object MDatacpth: TStringField
      FieldName = 'cpth'
    end
    object MDatacpmc: TStringField
      FieldName = 'cpmc'
    end
    object MDatacpxh: TStringField
      FieldName = 'cpxh'
    end
    object MDatadah: TStringField
      FieldName = 'dah'
    end
    object MDatajsdj: TStringField
      FieldName = 'jsdj'
    end
    object MDatadjrq: TStringField
      FieldName = 'djrq'
    end
    object MDatalkdh: TStringField
      FieldName = 'lkdh'
    end
    object MDatapqgy: TStringField
      FieldName = 'pqgy'
    end
    object MDataclf: TStringField
      FieldName = 'clf'
    end
    object MDatagz: TStringField
      FieldName = 'gz'
    end
    object MDataglf: TStringField
      FieldName = 'glf'
    end
    object MDataclfje: TStringField
      FieldName = 'clfje'
    end
    object MDatagzje: TStringField
      FieldName = 'gzje'
    end
    object MDataglfje: TStringField
      FieldName = 'glfje'
    end
    object MDatabz: TStringField
      FieldName = 'bz'
    end
    object MDatajssl: TStringField
      FieldName = 'jssl'
    end
    object MDatajsje: TStringField
      FieldName = 'jsje'
    end
    object MDatayfmc: TStringField
      FieldName = 'yfmc'
    end
  end
  object DS_Mdata: TDataSource
    DataSet = MData
    Left = 59
    Top = 152
  end
  object ImageList: TImageList
    Left = 707
    Top = 230
    Bitmap = {
      494C01013B004000040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000000001000001002000000000000000
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
      0000000000000000000000000000000000000000000000000000993300000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300009933
      000000000000000000000000000000000000000000003399CC00006699000066
      9900006699000066990000669900006699000066990000669900006699000066
      990066CCCC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300009933
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000993300009933000099330000993300009933000099330000993300009933
      0000993300000000000000000000000000003399CC003399CC0099FFFF0066CC
      FF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF003399
      CC00006699000000000000000000000000000000000000000000000000009933
      0000993300009933000099330000993300009933000099330000993300009933
      0000993300000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300009933
      0000000000000000000000000000000000003399CC003399CC0066CCFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0066CC
      FF00006699003399CC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300009933
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300000000
      0000000000000000000000000000000000003399CC003399CC0066CCFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0066CC
      FF0066CCCC000066990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003399CC0066CCFF003399CC0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0066CC
      FF0099FFFF00006699003399CC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CC996600CC996600CC996600CC99
      6600CC996600CC996600CC99660000000000000000003399CC00006699000066
      9900006699000066990000669900006699003399CC0066CCFF0066CCCC0066CC
      CC0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0066CC
      FF0099FFFF0066CCCC000066990000000000CC996600CC996600CC996600CC99
      6600CC996600CC996600CC99660000000000000000003399CC00006699000066
      9900006699000066990000669900006699000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CC99660000000000000000003399CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF00006699003399CC0099FFFF0066CCFF003399
      CC00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF0099FF
      FF00CCFFFF00CCFFFF000066990000000000CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CC99660000000000000000003399CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF00006699000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CC99660000000000000000003399CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF00006699003399CC0099FFFF0099FFFF0066CC
      FF003399CC003399CC003399CC003399CC003399CC003399CC003399CC003399
      CC003399CC003399CC0066CCFF0000000000CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CC99660000000000000000003399CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF00006699000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CC99660000000000000000003399CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF00006699003399CC00CCFFFF0099FFFF0099FF
      FF0099FFFF0099FFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF000066
      990000000000000000000000000000000000CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CC99660000000000000000003399CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF00006699000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CC99660000000000000000003399CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0000669900000000003399CC00CCFFFF00CCFF
      FF00CCFFFF00CCFFFF003399CC003399CC003399CC003399CC003399CC000000
      000000000000000000000000000000000000CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CC99660000000000000000003399CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF00006699000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CC996600FFFFFF00FFFFFF00CC99
      6600CC996600CC996600CC99660000000000000000003399CC0099FFFF0099FF
      FF003399CC003399CC003399CC003399CC0000000000000000003399CC003399
      CC003399CC003399CC0000000000000000000000000000000000000000000000
      000000000000993300009933000099330000CC996600FFFFFF00FFFFFF00CC99
      6600CC996600CC996600CC99660000000000000000003399CC0099FFFF0099FF
      FF003399CC003399CC003399CC003399CC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CC996600FFFFFF00FFFFFF00CC99
      6600E5E5E500CC9966000000000000000000000000003399CC0099FFFF0099FF
      FF003399CC00CCFFFF0000669900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009933000099330000CC996600FFFFFF00FFFFFF00CC99
      6600E5E5E500CC9966000000000000000000000000003399CC0099FFFF0099FF
      FF003399CC00CCFFFF0000669900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CC996600FFFFFF00FFFFFF00CC99
      6600CC996600000000000000000000000000000000003399CC0099FFFF0099FF
      FF003399CC000066990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000000000000000
      000000000000993300000000000099330000CC996600FFFFFF00FFFFFF00CC99
      6600CC996600000000000000000000000000000000003399CC0099FFFF0099FF
      FF003399CC000066990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CC996600CC996600CC996600CC99
      660000000000000000000000000000000000000000003399CC003399CC003399
      CC003399CC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300009933
      000099330000000000000000000000000000CC996600CC996600CC996600CC99
      660000000000000000000000000000000000000000003399CC003399CC003399
      CC003399CC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000099CC00006699000066
      9900006699000066990000669900006699000066990000669900006699000066
      9900006699000066990000669900006699000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000099CC0099FFFF000099
      CC0099FFFF000099CC0099FFFF000099CC0099FFFF000099CC0099FFFF000099
      CC0099FFFF000099CC0099FFFF000099CC000000000000000000CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC99660000000000000000000000000000000000000000000000
      0000000000009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000993300009933000099330000993300009933
      000099330000993300009933000000000000000000000099CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000000000000000
      0000993300009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000CC996600CC996600CC996600CC99
      6600CC996600CC9966009933000000000000000000000099CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF000000000000000000CC996600FFFF
      FF00CCCCCC00CCCCCC00CCCCCC00CCCCCC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000000000009933
      0000993300009933000099330000993300009933000099330000993300009933
      0000993300000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000CC996600CC996600CC996600CC99
      6600CC996600CC9966009933000000000000000000000099CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF000099CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0099330000FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000000000000000
      0000993300009933000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003399CC00006699000066
      990000669900006699000066990099330000CC996600CC996600CC996600CC99
      6600CC996600CC9966009933000000000000000000000099CC0099FFFF0099FF
      FF0099FFFF000099CC0099FFFF0099FFFF0099FFFF000099CC0099FFFF0099FF
      FF0099FFFF000099CC0099FFFF0099FFFF000000000000000000CC996600FFFF
      FF00CCCCCC00CCCCCC00FFFFFF00FFFFFF009933000099330000FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000000000000000
      0000000000009933000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003399CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099330000CC996600CC996600CC996600CC99
      6600CC996600CC9966009933000000000000000000000099CC0099FFFF000099
      CC0099FFFF000099CC0099FFFF000099CC0099FFFF000099CC0099FFFF000099
      CC0099FFFF000099CC0099FFFF000099CC000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0099330000993300009933000099330000CC99
      6600FFFFFF00CC99660000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003399CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099330000CC996600CC996600CC996600CC99
      6600CC996600CC9966009933000000000000000000000099CC000099CC000099
      CC000099CC000099CC000099CC000099CC000099CC000099CC000099CC000099
      CC000099CC000099CC000099CC000099CC000000000000000000CC996600FFFF
      FF00CCCCCC00CCCCCC00FFFFFF00FFFFFF009933000099330000FFFFFF009933
      0000FFFFFF00CC99660000000000000000003399CC0000669900006699000066
      99000066990000669900006699000000000000000000CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600000000003399CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF00993300009933000099330000993300009933
      0000993300009933000099330000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CC66000000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0099330000FFFFFF009933
      0000FFFFFF00CC99660000000000000000003399CC0099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF00006699000000000000000000CC996600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC996600000000003399CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF00006699000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300000000
      000000000000CC66000000000000000000000000000000000000CC996600FFFF
      FF00CCCCCC00CCCCCC00CCCCCC00FFFFFF00FFFFFF00FFFFFF00FFFFFF009933
      0000FFFFFF00CC99660000000000000000003399CC0099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF00006699000000000000000000CC996600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC996600000000003399CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF00006699000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300009933
      000000000000CC66000000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009933
      0000FFFFFF00CC99660000000000000000003399CC0099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF00006699000000000000000000CC996600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC996600000000003399CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF00006699000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000993300009933000099330000993300009933000099330000993300009933
      000099330000CC66000000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF009933000099330000993300009933000099330000CC99
      6600FFFFFF00CC99660000000000000000003399CC0099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF00006699000000000000000000CC996600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC996600000000003399CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF00006699000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000993300009933000099330000993300009933000099330000993300009933
      000099330000CC66000000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000003399CC0099FFFF0099FFFF003399
      CC003399CC003399CC003399CC000000000000000000CC996600FFFFFF00FFFF
      FF00CC996600CC996600CC996600CC996600000000003399CC003399CC003399
      CC003399CC003399CC003399CC003399CC003399CC003399CC003399CC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300009933
      000000000000CC66000000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000003399CC0099FFFF0099FFFF003399
      CC00CCFFFF0000669900000000000000000000000000CC996600FFFFFF00FFFF
      FF00CC996600E5E5E500CC996600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300000000
      000000000000CC66000000000000000000000000000000000000CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC99660000000000000000003399CC0099FFFF0099FFFF003399
      CC000066990000000000000000000000000000000000CC996600FFFFFF00FFFF
      FF00CC996600CC99660000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CC66000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003399CC003399CC003399CC003399
      CC000000000000000000000000000000000000000000CC996600CC996600CC99
      6600CC9966000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000009933000099330000993300009933
      0000993300009933000099330000000000000000000000000000000000000000
      0000000000000000000000000000000000009933000099330000993300009933
      0000993300009933000099330000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E2EF
      F100E5E5E500CCCCCC00CCCCCC00CCCCCC00E5E5E500CC999900FF999900ECC6
      D900FFCCCC00CC99990000000000000000000000000000000000000000000000
      00000000000000000000000000000000000099330000CC996600CC996600CC99
      6600CC996600CC99660099330000000000000000000000000000000000000000
      00000000000000000000000000000000000099330000CC996600CC996600CC99
      6600CC996600CC99660099330000000000000000000000000000000000000000
      0000000000000000000000000000993300009933000099330000993300009933
      0000993300009933000099330000000000000000000000000000E2EFF100E5E5
      E500B2B2B20080808000646F71008080800099999900E5E5E500CCCCCC00FF99
      9900ECC6D900FFCCCC00CC999900000000000000000000000000000000000000
      00000000000000000000000000000000000099330000CC996600CC996600CC99
      6600CC996600CC99660099330000000000000000000000000000000000000000
      00000000000000000000000000000000000099330000CC996600CC996600CC99
      6600CC996600CC99660099330000000000000000000000000000000000000000
      000000000000000000000000000099330000CC996600CC996600CC996600CC99
      6600CC996600CC99660099330000000000000000000000000000E5E5E5008080
      800080808000646F7100646F7100666666004C4C4C0080808000E5E5E500FFCC
      CC00CC999900ECC6D900FF999900000000000000000000000000000000003399
      CC00006699000066990000669900006699000066990000669900006699000066
      9900CC996600CC99660099330000000000000000000000000000000000003399
      CC000066990000669900006699000066990099330000CC996600CC996600CC99
      6600CC996600CC99660099330000000000000000000000000000000000000000
      000000000000000000000000000099330000CC996600CC996600CC996600CC99
      6600CC996600CC9966009933000000000000000000000000000099A8AC008080
      800099999900B2B2B200B2B2B200C0C0C000808080004C4C4C0080808000E5E5
      E500CC999900CC999900FFCCCC00CC9999000000000000000000000000003399
      CC0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF000066
      9900CC996600CC99660099330000000000000000000000000000000000003399
      CC0099FFFF0099FFFF0099FFFF0099FFFF0099330000CC996600CC996600CC99
      6600CC996600CC9966009933000000000000000000003399CC00006699000066
      990000669900006699000066990000669900006699000066990000669900CC99
      6600CC996600CC996600993300000000000000000000E5E5E500666666008080
      8000B2B2B200CCCCCC00CCCCCC00B2B2B200C0C0C000808080006666660099A8
      AC00E5E5E500CC999900E5E5E500FF9999000000000000000000000000003399
      CC0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF000066
      9900CC996600CC99660099330000000000000000000000000000000000003399
      CC0099FFFF0099FFFF0099FFFF0099FFFF0099330000CC996600CC996600CC99
      6600CC996600CC9966009933000000000000000000003399CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0000669900CC99
      6600CC996600CC9966009933000000000000E2EFF10099A8AC004C4C4C006666
      66004C4C4C004C4C4C0099999900CCCCCC00B2B2B200999999004C4C4C008080
      8000CCCCCC00CC99990000000000FFCCCC000000000000000000000000003399
      CC0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF000066
      9900993300009933000099330000000000000000000000000000000000003399
      CC0099FFFF0099FFFF0099FFFF0099FFFF009933000099330000993300009933
      000099330000993300009933000000000000000000003399CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0000669900CC99
      6600CC996600CC9966009933000000000000C0C0C0004C4C4C004C4C4C004C4C
      4C00808080009966660066666600B2B2B200CCCCCC00B2B2B20080808000646F
      7100CCCCCC000000000000000000000000009933000099330000993300003399
      CC0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF000066
      9900000000000000000000000000000000009933000099330000993300009933
      000099330000993300009933000099FFFF0099FFFF0099FFFF0099FFFF000066
      990000000000000000000000000000000000000000003399CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF00006699009933
      00009933000099330000993300000000000099666600808080004C4C4C00646F
      71008080800080808000808080004C4C4C00CCCCCC00B2B2B200646F7100646F
      7100CCCCCC0000000000000000000000000099330000CC996600CC9966003399
      CC0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF000066
      99000000000000000000000000000000000099330000CC996600CC996600CC99
      6600CC996600CC9966009933000099FFFF0099FFFF0099FFFF0099FFFF000066
      990000000000000000000000000000000000000000003399CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF00006699000000
      00000000000000000000000000000000000080808000C0C0C000333333008080
      8000CCCCCC0099999900646F71004C4C4C00B2B2B20099A8AC00646F71008080
      8000CCCCCC0000000000000000000000000099330000CC996600CC9966003399
      CC0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF000066
      99000000000000000000000000000000000099330000CC996600CC996600CC99
      6600CC996600CC9966009933000099FFFF0099FFFF0099FFFF0099FFFF000066
      990000000000000000000000000000000000000000003399CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF00006699000000
      00000000000000000000000000000000000099999900FFFFFF004C4C4C004C4C
      4C00FFFFFF00CCCCCC00646F7100666666009999990099999900646F71009999
      9900E5E5E50000000000000000000000000099330000CC996600CC9966003399
      CC0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF000066
      99000000000000000000000000000000000099330000CC996600CC996600CC99
      6600CC996600CC9966009933000099FFFF0099FFFF0099FFFF0099FFFF000066
      990000000000000000000000000000000000000000003399CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF00006699000000
      000000000000000000000000000000000000C0C0C00099999900CCCCCC003333
      33004C4C4C00646F71004C4C4C00646F7100808080008080800066666600C0C0
      C000E2EFF10000000000000000000000000099330000CC996600CC9966003399
      CC003399CC003399CC003399CC003399CC003399CC003399CC003399CC003399
      CC000000000000000000000000000000000099330000CC996600CC996600CC99
      6600CC996600CC996600993300003399CC003399CC003399CC003399CC003399
      CC0000000000000000000000000000000000000000003399CC0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF00006699000000
      0000000000000000000000000000000000000000000099999900996666004C4C
      4C00333333004C4C4C004C4C4C006666660066666600646F710099999900E5E5
      E5000000000000000000000000000000000099330000CC996600CC996600CC99
      6600CC996600CC99660099330000000000000000000000000000000000000000
      00000000000000000000000000000000000099330000CC996600CC996600CC99
      6600CC996600CC99660099330000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003399CC003399CC003399
      CC003399CC003399CC003399CC003399CC003399CC003399CC003399CC000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009999990033333300333333004C4C4C006666660099999900E5E5E500E2EF
      F100000000000000000000000000000000009933000099330000993300009933
      0000993300009933000099330000000000000000000000000000000000000000
      0000000000000000000000000000000000009933000099330000993300009933
      0000993300009933000099330000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E5E5E500C0C0C000C0C0C000E5E5E500E2EFF100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CC66
      3300CC663300CC663300CC663300CC663300CC663300CC663300CC663300CC66
      3300CC6633000000000000000000000000000000000000000000000000009900
      0000990000009900000099000000990000009900000099000000990000009900
      0000990000000000000000000000000000000000000000000000000000009900
      6600990066009900660099006600990066009900660099006600990066009900
      6600990066000000000000000000000000000000000000000000000000009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900999999000000000000000000000000000000000000000000CC663300FF99
      6600FF996600FF996600FF996600FF996600CC663300FF996600CC663300CC66
      3300CC663300CC6633000000000000000000000000000000000099000000CC00
      0000CC000000CC000000CC000000CC00000099000000CC000000990000009900
      0000990000009900000000000000000000000000000000000000990066009933
      6600993366009933660099336600993366009900660099336600990066009900
      660099006600990066000000000000000000000000000000000099999900B2B2
      B200B2B2B200B2B2B200B2B2B200B2B2B20099999900B2B2B200999999009999
      9900999999009999990000000000000000000000000000000000CC663300FFCC
      9900FF996600FF996600FF996600FF996600FF996600CC663300FF996600CC66
      3300CC663300CC6633000000000000000000000000000000000099000000FF00
      0000CC000000CC000000CC000000CC000000CC00000099000000CC0000009900
      000099000000990000000000000000000000000000000000000099006600CC66
      9900993366009933660099336600993366009933660099006600993366009900
      660099006600990066000000000000000000000000000000000099999900CCCC
      CC00B2B2B200B2B2B200B2B2B200B2B2B200B2B2B20099999900B2B2B2009999
      9900999999009999990000000000000000000000000000000000CC663300FF99
      6600FFCC9900FF996600FF996600FF996600FF996600FF996600CC663300FF99
      6600CC663300CC6633000000000000000000000000000000000099000000CC00
      0000FF000000CC000000CC000000CC000000CC000000CC00000099000000CC00
      0000990000009900000000000000000000000000000000000000990066009933
      6600CC6699009933660099336600993366009933660099336600990066009933
      660099006600990066000000000000000000000000000000000099999900B2B2
      B200CCCCCC00B2B2B200B2B2B200B2B2B200B2B2B200B2B2B20099999900B2B2
      B200999999009999990000000000000000000000000000000000CC663300FFCC
      9900FF996600FFCC9900FF996600FF996600FF996600FF996600FF996600CC66
      3300FF996600CC6633000000000000000000000000000000000099000000FF00
      0000CC000000FF000000CC000000CC000000CC000000CC000000CC0000009900
      0000CC000000990000000000000000000000000000000000000099006600CC66
      990099336600CC66990099336600993366009933660099336600993366009900
      660099336600990066000000000000000000000000000000000099999900CCCC
      CC00B2B2B200CCCCCC00B2B2B200B2B2B200B2B2B200B2B2B200B2B2B2009999
      9900B2B2B2009999990000000000000000000000000000000000CC663300FFCC
      9900FFCC9900FF996600FFCC9900FF996600FF996600FF996600FF996600FF99
      6600CC663300CC6633000000000000000000000000000000000099000000FF00
      0000FF000000CC000000FF000000CC000000CC000000CC000000CC000000CC00
      000099000000990000000000000000000000000000000000000099006600CC66
      9900CC66990099336600CC669900993366009933660099336600993366009933
      660099006600990066000000000000000000000000000000000099999900CCCC
      CC00CCCCCC00B2B2B200CCCCCC00B2B2B200B2B2B200B2B2B200B2B2B200B2B2
      B200999999009999990000000000000000000000000000000000CC663300FFFF
      CC00FFCC9900FFCC9900FF996600FFCC9900FF996600FF996600FF996600FF99
      6600FF996600CC6633000000000000000000000000000000000099000000FF99
      6600FF000000FF000000CC000000FF000000CC000000CC000000CC000000CC00
      0000CC000000990000000000000000000000000000000000000099006600FF99
      CC00CC669900CC66990099336600CC6699009933660099336600993366009933
      660099336600990066000000000000000000000000000000000099999900E5E5
      E500CCCCCC00CCCCCC00B2B2B200CCCCCC00B2B2B200B2B2B200B2B2B200B2B2
      B200B2B2B2009999990000000000000000000000000000000000CC663300FFFF
      CC00FFFFCC00FFCC9900FFCC9900FF996600FFCC9900FF996600FF996600FF99
      6600FF996600CC6633000000000000000000000000000000000099000000FF99
      6600FF996600FF000000FF000000CC000000FF000000CC000000CC000000CC00
      0000CC000000990000000000000000000000000000000000000099006600FF99
      CC00FF99CC00CC669900CC66990099336600CC66990099336600993366009933
      660099336600990066000000000000000000000000000000000099999900E5E5
      E500E5E5E500CCCCCC00CCCCCC00B2B2B200CCCCCC00B2B2B200B2B2B200B2B2
      B200B2B2B200999999000000000000000000000000000000000000000000CC66
      3300CC663300CC663300CC663300CC663300CC663300CC663300CC663300CC66
      3300CC6633000000000000000000000000000000000000000000000000009900
      0000990000009900000099000000990000009900000099000000990000009900
      0000990000000000000000000000000000000000000000000000000000009900
      6600990066009900660099006600990066009900660099006600990066009900
      6600990066000000000000000000000000000000000000000000000000009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900999999000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      9900000099000000990000009900000099000000990000009900000099000000
      9900000099000000000000000000000000000000000000000000000000000066
      CC000066CC000066CC000066CC000066CC000066CC000066CC000066CC000066
      CC000066CC000000000000000000000000000000000000000000000000000099
      9900009999000099990000999900009999000099990000999900009999000099
      9900009999000000000000000000000000000000000000000000000000000099
      0000009900000099000000990000009900000099000000990000009900000099
      0000009900000000000000000000000000000000000000000000000099000000
      CC000000CC000000CC000000CC000000CC00000099000000CC00000099000000
      99000000990000009900000000000000000000000000000000000066CC000099
      FF000099FF000099FF000099FF000099FF000066CC000099FF000066CC000066
      CC000066CC000066CC00000000000000000000000000000000000099990000CC
      CC0000CCCC0000CCCC0000CCCC0000CCCC000099990000CCCC00009999000099
      99000099990000999900000000000000000000000000000000000099000000CC
      000000CC000000CC000000CC000000CC00000099000000CC0000009900000099
      0000009900000099000000000000000000000000000000000000000099000000
      FF000000CC000000CC000000CC000000CC000000CC00000099000000CC000000
      99000000990000009900000000000000000000000000000000000066CC0000CC
      FF000099FF000099FF000099FF000099FF000099FF000066CC000099FF000066
      CC000066CC000066CC00000000000000000000000000000000000099990000FF
      FF0000CCCC0000CCCC0000CCCC0000CCCC0000CCCC000099990000CCCC000099
      99000099990000999900000000000000000000000000000000000099000000FF
      000000CC000000CC000000CC000000CC000000CC00000099000000CC00000099
      0000009900000099000000000000000000000000000000000000000099000000
      CC000000FF000000CC000000CC000000CC000000CC000000CC00000099000000
      CC000000990000009900000000000000000000000000000000000066CC000099
      FF0000CCFF000099FF000099FF000099FF000099FF000099FF000066CC000099
      FF000066CC000066CC00000000000000000000000000000000000099990000CC
      CC0000FFFF0000CCCC0000CCCC0000CCCC0000CCCC0000CCCC000099990000CC
      CC000099990000999900000000000000000000000000000000000099000000CC
      000000FF000000CC000000CC000000CC000000CC000000CC00000099000000CC
      0000009900000099000000000000000000000000000000000000000099000000
      FF000000CC000000FF000000CC000000CC000000CC000000CC000000CC000000
      99000000CC0000009900000000000000000000000000000000000066CC0000CC
      FF000099FF0000CCFF000099FF000099FF000099FF000099FF000099FF000066
      CC000099FF000066CC00000000000000000000000000000000000099990000FF
      FF0000CCCC0000FFFF0000CCCC0000CCCC0000CCCC0000CCCC0000CCCC000099
      990000CCCC0000999900000000000000000000000000000000000099000000FF
      000000CC000000FF000000CC000000CC000000CC000000CC000000CC00000099
      000000CC00000099000000000000000000000000000000000000000099000000
      FF000000FF000000CC000000FF000000CC000000CC000000CC000000CC000000
      CC000000990000009900000000000000000000000000000000000066CC0000CC
      FF0000CCFF000099FF0000CCFF000099FF000099FF000099FF000099FF000099
      FF000066CC000066CC00000000000000000000000000000000000099990000FF
      FF0000FFFF0000CCCC0000FFFF0000CCCC0000CCCC0000CCCC0000CCCC0000CC
      CC000099990000999900000000000000000000000000000000000099000000FF
      000000FF000000CC000000FF000000CC000000CC000000CC000000CC000000CC
      0000009900000099000000000000000000000000000000000000000099009999
      FF000000FF000000FF000000CC000000FF000000CC000000CC000000CC000000
      CC000000CC0000009900000000000000000000000000000000000066CC0099CC
      FF0000CCFF0000CCFF000099FF0000CCFF000099FF000099FF000099FF000099
      FF000099FF000066CC000000000000000000000000000000000000999900FFFF
      FF0000FFFF0000FFFF0000CCCC0000FFFF0000CCCC0000CCCC0000CCCC0000CC
      CC0000CCCC0000999900000000000000000000000000000000000099000099FF
      990000FF000000FF000000CC000000FF000000CC000000CC000000CC000000CC
      000000CC00000099000000000000000000000000000000000000000099009999
      FF009999FF000000FF000000FF000000CC000000FF000000CC000000CC000000
      CC000000CC0000009900000000000000000000000000000000000066CC0099CC
      FF0099CCFF0000CCFF0000CCFF000099FF0000CCFF000099FF000099FF000099
      FF000099FF000066CC00000000000000000000000000000000000099990099FF
      FF00FFFFFF0000FFFF0000FFFF0000CCCC0000FFFF0000CCCC0000CCCC0000CC
      CC0000CCCC0000999900000000000000000000000000000000000099000099FF
      990099FF990000FF000000FF000000CC000000FF000000CC000000CC000000CC
      000000CC00000099000000000000000000000000000000000000000000000000
      9900000099000000990000009900000099000000990000009900000099000000
      9900000099000000000000000000000000000000000000000000000000000066
      CC000066CC000066CC000066CC000066CC000066CC000066CC000066CC000066
      CC000066CC000000000000000000000000000000000000000000000000000099
      9900009999000099990000999900009999000099990000999900009999000099
      9900009999000000000000000000000000000000000000000000000000000099
      0000009900000099000000990000009900000099000000990000009900000099
      0000009900000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009933000099330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000FFFFFF0099330000000000000000
      0000000000000000000000000000000000000000000066CCFF003399CC003399
      CC003399CC003399CC003399CC003399CC003399CC003399CC003399CC003399
      CC003399CC0066CCFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000FFFFFF00FFFFFF0099330000000000000000
      00000000000000000000000000000000000066CCFF003399CC0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF003399CC0066CCFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000FFFFFF0000000000000000008080800000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CC99
      6600993300009933000099330000FFFFFF00FFFFFF009933000099330000CC99
      6600000000000000000000000000000000003399CC0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF003399CC00003366003399CC0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF003399CC00000000000000000000000000000000000000
      0000000000000000000066CCFF003399CC003399CC0066CCFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
      000000000000000000000000000000000000000000000000000099330000CC99
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC99
      6600993300000000000000000000000000003399CC0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000336600003366000033660000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF003399CC000000000000000000000000003399CC003399
      CC003399CC003399CC003399CC0066CCFF0066CCFF003399CC003399CC003399
      CC003399CC003399CC0000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000FFFFFF008080800080808000000000000000
      0000000000000000000000000000000000000000000099330000FFFFFF00FFFF
      FF00FFFFFF009933000099330000993300009933000099330000FFFFFF00FFFF
      FF00FFFFFF009933000000000000000000003399CC0066CCFF0000FFFF0000FF
      FF0000FFFF0000FFFF003399CC00003366003399CC0000FFFF0000FFFF0000FF
      FF0000FFFF0066CCFF003399CC000000000000000000000000003399CC0099FF
      FF00FFFFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0066CCFF0066CC
      FF0066CCFF003399CC0000000000000000000000000080808000000000000000
      0000000000000000000000000000808080000000000000000000000000000000
      000000000000000000000000000066669900CC996600CC996600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00993300009933000099330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC996600CC9966000000000066CCFF003399CC0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF003399CC0066CCFF00000000000000000000000000000000003399
      CC0099FFFF00FFFFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0066CC
      FF003399CC0000000000000000000000000080808000FFFFFF00FFFFFF000000
      0000FFFFFF000000000000000000C0C0C0000000000000000000000000000000
      00000000000000000000666699003399CC0099330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00993300009933000099330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF009933000000000000000000003399CC0066CCFF0000FF
      FF0000FFFF0000FFFF0066CCFF000033660066CCFF0000FFFF0000FFFF0000FF
      FF0066CCFF003399CC0000000000000000000000000000000000000000000000
      00003399CC0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF003399
      CC000000000000000000000000000000000080808000FFFFFF00000000000000
      0000FFFFFF0080808000C0C0C000FFFFFF008080800000000000FFFFFF008080
      800000000000666699003399CC0066CCFF0099330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00993300009933000099330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0099330000000000000000000066CCFF003399CC0000FF
      FF0000FFFF0000FFFF003399CC00003366003399CC0000FFFF0000FFFF0000FF
      FF003399CC0066CCFF0000000000000000000000000000000000000000000000
      00003399CC0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF003399
      CC00000000000000000000000000000000008080800000000000000000000000
      0000808080000000000000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00666699003399CC0066CCFF000000000099330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0099330000993300009933000099330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00993300000000000000000000000000003399CC0066CC
      FF0000FFFF0000FFFF0033669900003366003366990000FFFF0000FFFF0066CC
      FF003399CC000000000000000000000000000000000000000000000000000000
      00003399CC0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF003399
      CC00000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000FFFFFF006666
      99003399CC0066CCFF00000000000000000099330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF009933000000000000000000000000000066CCFF003399
      CC0000FFFF0000FFFF0000336600003366000033660000FFFF0000FFFF003399
      CC0066CCFF000000000000000000000000000000000000000000000000000000
      00003399CC00FFFFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF003399
      CC00000000000000000000000000000000000000000000000000C0C0C000C0C0
      C0000000000000000000FFFFFF00000000000000000000000000666699003399
      CC0066CCFF0000000000000000000000000099330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CC99660099330000CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0099330000000000000000000000000000000000003399
      CC0066CCFF0000FFFF0000336600003366000033660000FFFF0066CCFF003399
      CC00000000000000000000000000000000000000000000000000000000000000
      000066CCFF0066CCFF00FFFFFF0000FFFF0000FFFF0000FFFF0066CCFF0066CC
      FF00000000000000000000000000000000000000000080808000C0C0C000FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF0000000000666699003399CC0066CC
      FF0000000000000000000000000000000000CC996600CC996600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00993300009933000099330000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC996600CC9966000000000000000000000000000000000066CC
      FF003399CC0000FFFF003399CC00003366003399CC0000FFFF003399CC0066CC
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000003399CC0099FFFF00FFFFFF0000FFFF0000FFFF003399CC000000
      0000000000000000000000000000000000000000000000000000808080008080
      80000000000000000000FFFFFF00FFFFFF00666699003399CC0066CCFF000000
      0000000000000000000000000000000000000000000099330000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CC99660099330000CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF009933000000000000000000000000000000000000000000000000
      00003399CC0066CCFF0000FFFF0000FFFF0000FFFF0066CCFF003399CC000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003399CC003399CC003399CC003399CC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000666699003399CC0066CCFF00000000000000
      000000000000000000000000000000000000000000000000000099330000CC99
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC99
      6600993300000000000000000000000000000000000000000000000000000000
      000066CCFF003399CC003399CC003399CC003399CC003399CC0066CCFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000666699003399CC0066CCFF0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CC99
      660099330000993300009933000099330000993300009933000099330000CC99
      6600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000066CCFF0066CCFF0066CCFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000666699003399CC0066CCFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003399CC003399CC003399
      CC0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CC
      FF0066CCFF0066CCFF0066CCFF0066CCFF000000000000000000000000000000
      000000000000CC99660099330000993300009933000099330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066CCCC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000066
      99000066990000669900000000000000000066CCFF0066CCFF003399CC003399
      CC003399CC0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CC
      FF0066CCFF0066CCFF0066CCFF0066CCFF000000000000000000000000000000
      0000CC996600FFFFFF00FFCC9900FFCC9900CC996600CC996600993300000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066CCCC000099CC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000006699003399
      CC003399CC0066CCFF00006699000000000066CCFF0066CCFF0066CCFF000099
      0000008000000080000066CCFF00336699003366990033669900336699003399
      CC0066CCFF0066CCFF0066CCFF00336699000000000000000000000000000000
      0000CC9966009933000099330000993300009933000099330000993300000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000066CCCC000099CC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000006699003399CC000066
      990000CCFF0066CCFF00006699000000000066CCFF0066CCFF0066CCFF000099
      000000FF00000080000066CCFF003399CC006699CC006699CC003399CC0066CC
      FF0066CCFF0066CCFF0066CCFF0066CCFF00000000000000000000000000CC99
      6600FFFFFF00FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900CC9966009933
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000066CCCC0099FFFF000099CC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000006699003399CC000066990000CC
      FF003399CC0066CCFF00006699000000000066CCFF0066CCFF0066CCFF000099
      000000FF00000080000066CCFF0066CCFF003399CC003399CC0066CCFF0066CC
      FF00336699003366990066CCFF0066CCFF000000000000000000CC996600FFFF
      FF00CC996600CC996600CC996600CC996600CC996600FFCC9900CC996600CC99
      6600993300000000000000000000000000000000000000000000000000000000
      000066CCCC000099CC000099CC000099CC0066FFFF000099CC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000669900006699003399CC000066990000CCFF003399
      CC0066CCFF0000669900000000000000000066CCFF0066CCFF0066CCFF000099
      000000FF000000FF00000080000066CCFF0066CCFF0066CCFF0066CCFF0066CC
      FF0066CCFF0066CCFF0066CCFF0066CCFF0000000000CC996600FFFFFF00FFCC
      9900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFCC9900FFCC9900CC99
      6600993300000000000000000000000000000000000000000000000000000000
      000066CCCC0099FFFF0066FFFF0066FFFF0066FFFF0066FFFF000099CC000000
      0000000000000000000000000000000000000000000000000000006699000066
      990000669900006699003399CC003399CC000066990000CCFF003399CC0066CC
      FF000066990000000000000000000000000066CCFF0066CCFF0066CCFF000099
      000000FF000033CC330000FF00000080000066CCFF0066CCFF0066CCFF0066CC
      FF0066CCFF0066CCFF0066CCFF0066CCFF0000000000CC996600FFFFFF00FFCC
      9900CC996600CC996600CC996600CC996600CC996600FFCC9900FFCC9900CC99
      6600CC9966009933000000000000000000000000000000000000000000000000
      00000000000066CCCC0099FFFF0066FFFF000099CC0066CCCC0066CCCC0066CC
      CC0000000000000000000000000000000000000000000066990000CCFF0000CC
      FF0000CCFF0000CCFF00006699000066990000CCFF003399CC0066CCFF000066
      990000000000000000000000000000000000FFCC990066CC66000080000000FF
      000000FF00000099000000FF000000FF000000990000FFCC9900FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC990000000000CC996600FFFFFF00FFCC
      9900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFCC9900FFCC9900CC99
      6600CC9966009933000000000000000000000000000000000000000000000000
      00000000000066CCCC0099FFFF0066FFFF0066FFFF000099CC00000000000000
      0000000000000000000000000000000000000066990000CCFF0000CCFF003399
      CC0000CCFF0000CCFF0000CCFF0000CCFF003399CC0066CCFF00006699000000
      000000000000000000000000000000000000FFCC99000099000000FF00000099
      000000FF0000008000000099000000FF000000990000FFCC9900FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC990000000000CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      660099330000993300000000000000000000000000000000000066CCCC000099
      CC000099CC000099CC000099CC0099FFFF0066FFFF0066FFFF000099CC000000
      0000000000000000000000000000000000000066990000CCFF003399CC0000CC
      FF003399CC0000CCFF0000CCFF0000CCFF0066CCFF0000669900000000000000
      000000000000000000000000000000000000FFCC99000099000000FF00000099
      000000FF00000080000066CC66000099000066CC6600FFCC9900FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC9900CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC99
      6600CC996600993300000000000000000000000000000000000066CCCC0099FF
      FF0099FFFF0066FFFF0066FFFF0066FFFF0066FFFF0066FFFF0066FFFF000099
      CC00000000000000000000000000000000000066990000CCFF0000CCFF003399
      CC0000CCFF003399CC0000CCFF0000CCFF0066CCFF0000669900000000000000
      000000000000000000000000000000000000FFCC99000099000000FF00000099
      000000FF000000800000FFCC9900FFCC9900FFCC9900FFCC9900FFCC990000CC
      FF0000CCFF0000CCFF00FFCC9900FFCC9900CC996600FFCC9900FFCC990099CC
      CC000099CC00FFCC9900FFCC9900FFCC990099CCCC000099CC00FFCC9900FFFF
      FF00CC996600CC996600993300000000000000000000000000000000000066CC
      CC0099FFFF0099FFFF0066FFFF0066FFFF000099CC0066CCCC0066CCCC0066CC
      CC00000000000000000000000000000000000066990000CCFF0000CCFF0000CC
      FF003399CC0000CCFF003399CC0000CCFF0066CCFF0000669900000000000000
      000000000000000000000000000000000000FFCC990066CC6600009900000099
      000000FF000000800000FFCC9900FFCC9900FFCC9900FFCC990000CCFF0066FF
      FF0066FFFF0066FFFF0000CCFF00FFCC990000000000CC996600FFCC990099CC
      CC0000FFFF000099CC00CC996600FFCC990099CCCC0000FFFF000099CC00FFCC
      9900FFFFFF00CC996600993300000000000000000000000000000000000066CC
      CC0099FFFF0099FFFF0099FFFF0066FFFF0066FFFF000099CC00000000000000
      0000000000000000000000000000000000000066990000CCFF00006699000066
      990000CCFF003399CC0000CCFF003399CC0066CCFF0000669900000000000000
      000000000000000000000000000000000000FFCC9900FFCC9900FFCC99000099
      000000FF000000800000FFCC9900FFCC9900FFCC9900FFCC990000CCFF0066FF
      FF0066FFFF0066FFFF0000CCFF00FFCC99000000000000000000CC99660099CC
      CC0000FFFF000099CC00CC996600CC99660099CCCC0000FFFF000099CC00CC99
      6600CC996600CC99660000000000000000000000000000000000000000000000
      000066CCCC0099FFFF0099FFFF0099FFFF0066FFFF0066FFFF000099CC000000
      0000000000000000000000000000000000000066990099FFFF003399CC000066
      990000CCFF0000CCFF003399CC0000CCFF0099FFFF0000669900000000000000
      000000000000000000000000000000000000FFCC9900FFCC9900FFCC990066CC
      66000099000066CC6600FFCC9900FFCC9900FFCC9900FFCC990000CCFF0066FF
      FF0066FFFF0066FFFF0000CCFF00FFCC990000000000000000000000000099CC
      CC0000FFFF000099CC00000000000000000099CCCC0000FFFF000099CC000000
      0000000000000000000000000000000000000000000000000000000000000000
      000066CCCC0099FFFF0099FFFF0099FFFF0066FFFF0066FFFF0066FFFF000099
      CC0000000000000000000000000000000000000000000066990099FFFF0066CC
      FF0066CCFF0066CCFF0066CCFF0099FFFF000066990000000000000000000000
      000000000000000000000000000000000000FFCC9900FFCC9900FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC990000CC
      FF0000CCFF0000CCFF00FFCC9900FFCC990000000000000000000000000099CC
      CC0000FFFF000099CC00000000000000000099CCCC0000FFFF000099CC000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066CCCC0099FFFF0099FFFF0099FFFF0066FFFF0066FFFF0066FF
      FF000099CC000000000000000000000000000000000000000000006699000066
      9900006699000066990000669900006699000000000000000000000000000000
      000000000000000000000000000000000000FFCC9900FFCC9900FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC99000000000000000000000000000000
      000099CCCC000099CC0000000000000000000000000099CCCC000099CC000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066CCCC0066CCCC0066CCCC0066CCCC0066CCCC0066CCCC0066CC
      CC0066CCCC0066CCCC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC996600CC99
      6600000000000000000000000000000000000000000000000000000000000000
      0000000000009933000099330000CC66000099330000CC660000993300000000
      0000000000000000000000000000000000000000000066666600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000099CC0000669900006699000066
      9900006699000066990000669900006699000066990000669900006699000066
      9900006699000066990000669900006699000000000000000000000000000000
      00000000000000000000000000000000000000000000CC996600FFFFFF00FFFF
      FF00CC9966000000000000000000000000000000000000000000000000000000
      00000000000099330000CC66000099330000CC66000099330000993300000000
      00000000000000000000000000000000000000000000CCCCCC00666666000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000099CC0099FFFF000099CC0099FF
      FF000099CC0099FFFF000099CC0099FFFF000099CC0099FFFF000099CC0099FF
      FF000099CC0099FFFF000099CC0099FFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000CC996600FFFFFF00FFFF
      FF00CC9966000000000000000000000000000000000000000000000000000000
      0000000000009933000099330000CC66000099330000CC660000993300000000
      0000000000000000000000000000000000000000000000000000CCCCCC006666
      66000000000000000000FF990000993300009933000099330000000000000000
      0000000000000000000000000000000000000099CC0099FFFF000099CC0099FF
      FF000099CC0099FFFF000099CC0099FFFF000099CC0099FFFF000099CC0099FF
      FF000099CC0099FFFF000099CC0099FFFF000000000000000000000000000000
      0000CC996600000000000000000000000000CC996600FFFFFF00FFFFFF00CC99
      6600000000000000000000000000000000000000000000000000000000000000
      0000000000009999990099330000993300009933000099330000999999000000
      000000000000000000000000000000000000000000000000000000000000CCCC
      CC0066666600FF990000CC660000CC660000CC660000CC660000993300000000
      0000000000000000000000000000000000000099CC0099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF000099CC0099FFFF000000000000000000000000000000
      0000CC996600CC9966000000000000000000CC996600FFFFFF00FFFFFF00CC99
      6600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900FFFFFF00FFCCCC0066666600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF990000CC660000FF990000CC660000CC660000CC660000993300000000
      0000000000000000000000000000000000000099CC0099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF000000000000000000000000000000
      0000CC996600FFFFFF00CC996600CC996600FFFFFF00FFFFFF00CC9966000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900FFFFFF00FFCCCC0066666600000000000000
      000000000000000000000000000000000000000000000000000000000000FF99
      0000CC660000FF990000FF990000FF990000CC660000CC660000993300000000
      0000000000000000000000000000000000000099CC0099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF000099
      CC000099CC000099CC0099FFFF0099FFFF000000000000000000000000000000
      0000CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC9966000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900FFFFFF00FFCCCC0066666600000000000000
      000000000000000000000000000000000000000000000000000000000000CC66
      0000FF996600FF996600FF990000FF990000CC660000CC660000993300000000
      0000000000000000000000000000000000000099CC0099FFFF0099FFFF000099
      CC000099CC0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF000099CC0099FFFF0099FFFF0099FFFF000000000000000000000000000000
      0000CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC996600CC99
      6600CC996600CC99660000000000000000000000000000000000000000000000
      0000000000000000000099999900FFFFFF00FFCCCC0066666600000000000000
      000000000000000000000000000000000000000000000000000000000000CC66
      0000FFFFFF00FFFFFF00FF996600CC660000FF990000CC660000CC6600009933
      0000000000000000000000000000000000000099CC0099FFFF0099FFFF000099
      CC000099CC0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF000099CC0099FFFF0099FFFF0099FFFF000000000000000000000000000000
      0000CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CC9966000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900FFFFFF00FFCCCC0066666600000000000000
      000000000000000000000000000000000000000000000000000000000000CC66
      0000FF996600FF996600CC660000FFFFFF00FF996600FF990000CC6600009933
      0000993300009933000099330000000000000099CC0099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF000099
      CC000099CC0099FFFF0099FFFF0099FFFF000000000000000000000000000000
      0000CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC99
      6600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000066666600666666006666660066666600000000000000
      0000000000000000000000000000666666000000000000000000000000000000
      0000CC660000CC660000CC660000CC660000FFFFFF00FF99660099330000CC66
      0000CC660000CC660000CC660000993300000099CC0099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF000099CC0099FFFF0099FFFF0099FFFF000000000000000000000000000000
      0000CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC9966000000
      0000000000000000000000000000000000000000000066666600666666000000
      0000000000006666660099999900999999009999990099999900666666000000
      0000000000000000000066666600666666000000000000000000000000000000
      000000000000000000000000000000000000CC660000CC660000CC660000FF99
      0000CC660000CC660000CC660000993300000099CC0099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF000000000000000000000000000000
      0000CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC996600000000000000
      0000000000000000000000000000000000009999990099999900999999006666
      66006666660099999900CCCCCC00CCCCCC00CCCCCC0099999900666666006666
      66006666660066666600CCCCCC00666666000000000000000000000000000000
      00000000000000000000000000000000000000000000CC660000FF996600FF99
      0000FF990000CC660000CC660000993300000099CC0099FFFF0099FFFF0099FF
      FF000099CC0099FFFF0099FFFF0099FFFF000099CC0099FFFF0099FFFF0099FF
      FF000099CC0099FFFF0099FFFF0099FFFF000000000000000000000000000000
      0000CC996600FFFFFF00FFFFFF00FFFFFF00CC99660000000000000000000000
      00000000000000000000000000000000000099999900FFFFFF00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00999999009999
      990099999900CCCCCC0066666600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CC660000FF996600FF99
      6600FF990000CC660000CC660000FF9900000099CC0099FFFF000099CC0099FF
      FF000099CC0099FFFF000099CC0099FFFF000099CC0099FFFF000099CC0099FF
      FF000099CC0099FFFF000099CC0099FFFF000000000000000000000000000000
      0000CC996600FFFFFF00FFFFFF00CC9966000000000000000000000000000000
      00000000000000000000000000000000000099999900FFFFFF00CCCCCC00CCCC
      CC00FFFFFF00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CC660000FFFFFF00FF99
      6600CC660000CC660000FF990000000000000099CC000099CC000099CC000099
      CC000099CC000099CC000099CC000099CC000099CC000099CC000099CC000099
      CC000099CC000099CC000099CC000099CC000000000000000000000000000000
      0000CC996600FFFFFF00CC996600000000000000000000000000000000000000
      00000000000000000000000000000000000099999900FFFFFF00FFFFFF009999
      990099999900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009999
      9900999999000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC660000CC66
      0000CC660000FF99000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CC996600CC99660000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900999999000000
      0000000000009999990099999900999999009999990099999900999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFCC9900CC996600CC996600CC99
      6600CC996600CCCCCC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000033333300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003333330033333300999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFCC9900F2EABF00F2EABF00CCCC
      FF00E5E5E500CC996600CC996600CCCCCC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003333330066666600666666006666
      6600000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CCCCCC0066666600333333003333
      3300000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFCC9900FFFFFF00FFFFFF00CCCC
      FF00FFFFFF00FFFFFF00E5E5E500CC9966000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003399CC000066
      9900006699000066990000669900006699000066990000669900006699000066
      9900006699000066990000000000000000000000000099999900CCCCCC009999
      9900666666006666660000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000066666600666666006666
      6600333333009999990000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFCC9900F2EABF00F2EABF00CCCC
      FF00F2EABF00F2EABF00F2EABF00CC996600CCCCCC0000000000000000000000
      00000000000000000000000000000000000000000000000000003399CC0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0099FFFF000066990000000000000000000000000099999900CCCCCC00CCCC
      CC00999999009999990066666600666666000000000000000000000000000000
      00000000000000000000000000000000000000000000CCCCCC00666666006666
      6600666666003333330000999900000000000000000000000000000000000000
      000000000000000000000000000000000000FFCC9900FFFFFF00CCCCCC00CCCC
      FF00FFFFFF00FFFFFF00FFFFFF00E5E5E500CC996600CCCCCC00000000000000
      00000000000000000000000000000000000000000000000000003399CC0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0099FFFF00006699000000000000000000000000000000000099999900CCCC
      CC00CCCCCC009999990099999900999999006666660066666600000000000000
      0000000000000000000000000000000000000000000000000000666666006666
      660099FFFF0099CCCC0099CCCC00009999000000000000000000000000000000
      000000000000000000000000000000000000FFCC9900F2EABF00F2EABF00CCCC
      FF00F2EABF00F2EABF00F2EABF00F2EABF00E5E5E500CC996600CC996600CC99
      6600CCCCCC0000000000000000000000000000000000000000003399CC0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0099FFFF00006699000000000000000000000000000000000099999900E5E5
      E500CCCCCC00CCCCCC0099999900999999009999990099330000663300006633
      0000000000000000000000000000000000000000000000000000CCCCCC008080
      8000CCFFFF0099FFFF0099CCCC0099CCCC000099990099CCCC00000000000000
      000000000000000000000000000000000000FFCC9900FFFFFF00FFFFFF00CCCC
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E5E5
      E500CC996600CC996600CC996600CCCCCC0000000000000000003399CC0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0099FFFF000066990000000000000000000000000000000000000000009999
      9900E5E5E500CCCCCC00CCCCCC00999999009933000099330000993300009933
      00006633000000000000000000000000000000000000000000000000000066CC
      CC00FFFFFF00CCFFFF0099FFFF0099FFFF0099CCCC0066CCCC00009999000000
      000000000000000000000000000000000000FFCC9900F2EABF00F2EABF00CCCC
      FF00F2EABF00F2EABF00F2EABF00F2EABF00F2EABF00F2EABF00F2EABF00F2EA
      BF00F2EABF00F2EABF00E5E5E500CC99660000000000000000003399CC0099FF
      FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FF
      FF0099FFFF000066990000000000000000000000000000000000000000009999
      9900FFFFFF00E5E5E500CCCCCC00993300009933000099330000993300009933
      00009933000066330000000000000000000000000000000000000000000066CC
      CC00FFFFFF00CCFFFF00CCFFFF0099FFFF0099FFFF0099CCCC0099CCCC000099
      990066CCCC00000000000000000000000000FFCC9900FFFFFF00FFFFFF00CCCC
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC99660000000000000000003399CC0099FF
      FF0099FFFF0099FFFF0099FFFF0099CCCC0099FFFF0099FFFF0099FFFF0099FF
      FF0099FFFF000066990000000000000000000000000000000000000000000000
      000099999900FFFFFF0099330000CC6633009933000099330000993300009933
      0000993300009933000066330000000000000000000000000000000000000000
      000099CCCC00FFFFFF00CCFFFF00CCFFFF0099FFFF0099FFFF0099CCCC00FFCC
      CC0099330000993300000000000000000000FFCC9900F2EABF00F2EABF00CCCC
      FF00F2EABF00F2EABF00F2EABF00F2EABF00F2EABF00F2EABF00F2EABF00F2EA
      BF00F2EABF00F2EABF00F2EABF00CC99660000000000000000003399CC0099FF
      FF0099FFFF0099FFFF0099FFFF006666660099CCCC0099CCCC0099FFFF0099FF
      FF0099FFFF000066990000000000000000000000000000000000000000000000
      00009999990099330000CC66330099330000CC66330099330000993300009933
      0000993300009933000099330000663300000000000000000000000000000000
      000066CCCC00FFFFFF00CCFFFF00CCFFFF00FFCCCC00CC660000CC6600009933
      000099330000993300009933000000000000FFCC9900FFFFFF00CCCCCC00CCCC
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC99660000000000000000003399CC0099FF
      FF0099FFFF0099FFFF0099FFFF0099CCCC00FF000000FF00000099CCCC0099FF
      FF0099FFFF000066990000000000000000000000000000000000000000000000
      0000000000009933000099330000CC66330099330000CC663300993300009933
      0000993300009933000099330000993300000000000000000000000000000000
      00000000000099CCCC00FFFFFF00CCFFFF00CC660000CC660000CC660000CC66
      000099330000993300009933000099330000FFCC9900FFFFFF00FFFFFF00CCCC
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC99660000000000000000003399CC003399
      CC003399CC003399CC003399CC00FF000000FF000000FFFFFF00FF0000003399
      CC003399CC003399CC0000000000000000000000000000000000000000000000
      000000000000993300009933000099330000CC66330099330000CC6633009933
      0000993300009933000099330000999999000000000000000000000000000000
      00000000000066CCCC00FFFFFF00FFCCCC00CC660000CC660000CC660000CC66
      0000CC660000993300009933000099330000FFCC9900FFFFFF00FFFFFF00CCCC
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC9966000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000993300009933000099330000CC66330099330000CC66
      3300993300009933000099999900999999000000000000000000000000000000
      00000000000000000000FF990000FF990000CC660000CC660000CC660000CC66
      0000CC660000CC6600009933000099330000FFCC9900FFCC9900FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC99000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000993300009933000099330000CC6633009933
      000099330000CCCCCC00CCCCCC00999999000000000000000000000000000000
      00000000000000000000CC660000FF990000FF990000CC660000CC660000CC66
      0000CC660000CC660000CC660000993300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009933000099330000993300009933
      0000E5E5E500E5E5E500CCCCCC00CCCCCC000000000000000000000000000000
      0000000000000000000000000000CC660000FF990000FF990000CC660000CC66
      0000CC660000CC660000CC660000CC6600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF990000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC6600000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CC996600993300009933000099330000CC996600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600FF990000CC660000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC66
      0000000000000000000000000000000000000000000000000000000000000000
      0000CC9966009933000000000000000000000000000099330000CC9966000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CC996600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC996600FF990000CC660000E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500CC66
      0000000000000000000000000000000000000000000000000000000000000000
      0000993300000000000000000000000000000000000000000000993300000000
      0000000000000000000000000000000000009999990066666600666666006666
      6600666666006666660066666600666666006666660066666600666666006666
      66006666660066666600666666006666660000000000CC996600FFFFFF009933
      0000993300009933000099330000993300009933000099330000993300009933
      00009933000099330000FFFFFF00CC996600FF990000CC660000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC66
      0000000000000000000000000000000000000000000000000000000000000000
      00009933000000000000CC99660099330000CC99660000000000993300000000
      00000000000000000000000000000000000099999900CCFFFF00CCFFFF00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF006666660000000000CC996600FFFFFF009933
      0000CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC99660099330000FFFFFF00CC996600FF990000CC660000E5E5E500E5E5
      E500E5E5E500E5E5E500CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CC66
      0000000000000000000000000000000000000000000000000000000000000000
      0000993300000000000099330000000000009933000000000000993300000000
      00000000000000000000000000000000000099999900CCFFFF00CCFFFF00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF006666660000000000CC996600FFFFFF009933
      0000993300009933000099330000993300009933000099330000993300009933
      00009933000099330000FFFFFF00CC996600FF990000CC660000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500CC66
      0000000000000000000000000000000000000000000000000000000000000000
      0000993300000000000099330000000000009933000000000000993300000000
      00000000000000000000000000000000000099999900FFFFFF00CCFFFF00CCFF
      FF00993300009933000099330000993300009933000099330000CCFFFF00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF006666660000000000CC996600FFFFFF009933
      0000CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC99660099330000FFFFFF00CC996600FF990000CC660000E5E5E500E5E5
      E500E5E5E500CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CC66
      0000000000000000000000000000000000000000000000000000000000000000
      0000993300000000000099330000000000009933000000000000993300000000
      00000000000000000000000000000000000099999900CCFFFF00FFFFFF00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF006666660000000000CC996600FFFFFF009933
      0000993300009933000099330000993300009933000099330000993300009933
      00009933000099330000FFFFFF00CC996600FF990000CC660000FFFFFF00FFFF
      FF00FFFFFF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500CC66
      0000000000000000000000000000000000000000000000000000000000000000
      0000993300000000000099330000000000009933000000000000993300000000
      00000000000000000000000000000000000099999900FFFFFF00FFFFFF00CCFF
      FF00993300009933000099330000993300009933000099330000CCFFFF00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF006666660000000000CC996600FFFFFF009933
      0000CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC99660099330000FFFFFF00CC996600FF990000CC660000E5E5E500E5E5
      E500CCCCCC00CCCCCC00CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC6600000000000000000000000000000000
      0000993300000000000099330000000000009933000000000000993300000000
      00000000000000000000000000000000000099999900FFFFFF00CCFFFF00FFFF
      FF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF006666660000000000CC996600FFFFFF009933
      0000993300009933000099330000993300009933000099330000993300009933
      00009933000099330000FFFFFF00CC996600FF990000CC660000FFFFFF00FFFF
      FF00E5E5E500CC660000FF990000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC660000CC660000CC6600000000000000000000000000000000
      0000993300000000000099330000000000009933000000000000993300000000
      00000000000000000000000000000000000099999900FFFFFF00FFFFFF00CCFF
      FF00FFFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFF
      FF000000CC0000009900CCFFFF006666660000000000CC996600FFFFFF009933
      0000CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC99660099330000FFFFFF00CC996600FF990000CC660000E5E5E500CCCC
      CC00FF990000FF990000FF990000FF990000FF990000CC660000CC660000CC66
      0000CC660000CC660000CC660000000000000000000000000000000000000000
      0000993300000000000099330000000000009933000000000000993300000000
      00000000000000000000000000000000000099999900FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFF
      FF006600FF000000CC00CCFFFF006666660000000000CC996600FFFFFF009933
      0000993300009933000099330000993300009933000099330000993300009933
      00009933000099330000FFFFFF00CC996600FF990000CC660000FFFFFF00FF99
      0000FF996600FF996600FF990000FF990000FF990000FF990000FF990000CC66
      0000CC660000CC66000000000000000000000000000000000000000000000000
      0000993300000000000099330000000000009933000000000000993300000000
      00000000000000000000000000000000000099999900FFFFFF00FFFFFF00FFFF
      FF00CCFFFF00FFFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFFFF00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF006666660000000000CC996600FFFFFF009933
      0000CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC99660099330000FFFFFF00CC996600FF990000CC660000FF990000FF99
      6600FF996600FF996600FF996600FF996600FF990000FF990000FF990000FF99
      0000CC6600000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000000000000000000000000000993300000000
      0000000000000000000000000000000000009999990099999900999999009999
      9900999999009999990099999900999999009999990099999900999999009999
      99009999990099999900999999009999990000000000CC996600FFFFFF009933
      0000993300009933000099330000993300009933000099330000993300009933
      00009933000099330000FFFFFF00CC996600FF990000FF990000FF996600FF99
      6600FF996600FF996600FF996600FF996600FF996600FF996600FF990000CC66
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000000000000000000000000000993300000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CC996600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CC99660000000000FF99000099999900FFFF
      FF0099999900FFFFFF0099999900FFFFFF0099999900FFFFFF0099999900FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000000000000000000000000000993300000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600000000000000000099999900CCCC
      CC0099999900CCCCCC0099999900CCCCCC0099999900CCCCCC00999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000993300009933000099330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      2800000040000000000100000100010000000000000800000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFF0000FFDFFFFFFFDF0000
      FFCF8007FFCF0000E0070007E0070000FFCF0003FFCF0000FFDF0003FFDF0000
      FFFF0001FFFF0000018000010180000001800001018000000180000101800000
      0180000F018000000180801F018000000180C3F8018000000381FFFC03810000
      0783FFBA078300000F87FFC70F870000FFFF8000FFFFFFFFFFFF8000C003FBFF
      FE018000C003F3FFFE018000C003E007FE018000C003F3FF80018000C003FBFF
      80018000C003FFFF80018000C00301808001FFFBC0030180801FFFDBC0030180
      801FFFCBC0030180801FF003C0030180801FF003C0030180801FFFCBC0030381
      FFFFFFDBC0030783FFFFFFFBFFFF0F87FF8FFFFFFFFFFFFFFFC7FF01FF01FFFF
      E003FF01FF01FE01C001FF01FF01FE01C001E001E001FE01C000E001E0018001
      8000E001E00180010002E001E00180010007000F000F80010007000F000F801F
      0007000F000F801F0007000F000F801F0007000F000F801F800F01FF01FF801F
      F00F01FF01FFFFFFF83FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE007E007E007E007C003C003C003C003
      C003C003C003C003C003C003C003C003C003C003C003C003C003C003C003C003
      C003C003C003C003C003C003C003C003E007E007E007E007FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE007E007E007E007C003C003C003C003
      C003C003C003C003C003C003C003C003C003C003C003C003C003C003C003C003
      C003C003C003C003C003C003C003C003E007E007E007E007FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFFFFFFFFCFFFE3F8003FFFFF87F
      FC3F0001FFFFF07FE00F0001FC3FE07FC0070001C003C03F80030001C003803E
      00010001E007001C00018003F00F000800018003F00F00010001C007F00F8003
      0001C007F00F80070001E00FF00F800F0001E00FF81FC01F8003F01FFC3FE03F
      C007F01FFFFFF07FE00FFC7FFFFFF8FFFFFF8000F83FFBFFFFE30000F01FF9FF
      FFC10000F01FFCFFFF810000E00FFC7FFF010000C007F03FFC0300008007F01F
      C00700008003F80F800F00008003F83F001F00008003C01F003F00000003C00F
      003F00000001E00F003F00008001E03F003F0000C003F01F003F0000E31FF00F
      807F0000E31FF807C0FF0000F39FF803FFFFFFFFFFCFF81FBFFF0000FF87F81F
      9FFF0000FF87F81FCC3F0000F70FF81FE01F0000F30FFC3FF01F0000F01FFC3F
      E01F0000F01FFC3FE01F0000F003FC3FE00F0000F007FC3FE0010000F00FFC3E
      F0000000F01F981CFF000000F03F0000FF800000F07F0001FF800000F0FF0003
      FF810000F1FF0007FFC3FFFFF3FF981FFFFFFFFFFFFFFFFF03FFFFFF3FFF1FFF
      00FFFFFF0FFF0FFF00FFC00383FF83FF007FC00380FF81FF003FC003C03FC0FF
      0007C003C00FC03F0000C003E007E01F0000C003E003E0070000C003F001F003
      0000C003F000F0010000C003F800F8000000C003F800F8000000FF3FFC00FC00
      0000FFFFFE00FC00FFFFFFFFFF00FE00FFFF801FF83FFFFF8000000FF39FFFFF
      8000000FF7DF00008000000FF45F00008000000FF55F00008000000FF55F0000
      8000000FF55F00008000000FF55F000080000000F55F000080000000F55F0000
      80000001F55F000080000003F55F000080000007FDDF00008000000FFDDFFFFF
      8000800FFDDFFFFF8000C01FFE3FFFFFFFFFFFF8FFFFFDFFFFFF8000C007E0FF
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
  object OpenDialog1: TOpenDialog
    Left = 707
    Top = 147
  end
  object SaveDialog1: TSaveDialog
    Left = 707
    Top = 187
  end
  object V_K3: TADOTable
    Connection = mdlData.conn
    CursorType = ctStatic
    CommandTimeout = 500
    TableName = 'K3_Item_V'
    Left = 547
    Top = 107
  end
  object DS_K3: TDataSource
    DataSet = V_K3
    Left = 507
    Top = 107
  end
  object MData2: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 155
    Top = 187
  end
  object DS_MData2: TDataSource
    DataSet = MData2
    Left = 120
    Top = 184
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 252
    Top = 130
  end
  object ADOQuery1: TADOQuery
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
    Left = 316
    Top = 146
  end
end
