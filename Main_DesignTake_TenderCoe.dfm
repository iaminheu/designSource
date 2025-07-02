inherited Frm_DesignTake_TenderCoe: TFrm_DesignTake_TenderCoe
  Left = 192
  Top = 150
  Caption = 'Frm_DesignTake_TenderCoe'
  ClientHeight = 704
  ClientWidth = 1006
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image: TImage
    Width = 1006
  end
  inherited L_title: TLabel
    Left = 26
    Top = 2
    Width = 1183
    Caption = #25307#26631#30830#35748
  end
  inherited P_back: TPanel
    Width = 1006
    Height = 683
    inherited P_main: TPanel
      Width = 1000
      Height = 677
      inherited Panel_down: TPanel
        Top = 666
        Width = 998
        Height = 9
        Visible = False
        inherited Bevel_bass: TBevel
          Width = 998
        end
      end
      object PC_1: TRzPageControl
        Left = 0
        Top = 0
        Width = 998
        Height = 666
        ActivePage = TS_TenderCoe
        Align = alClient
        TabIndex = 0
        TabOrder = 1
        TabOrientation = toBottom
        TabStyle = tsDoubleSlant
        FixedDimension = 19
        object TS_TenderCoe: TRzTabSheet
          Color = 14935011
          Caption = #25307#26631#30830#35748
          object ToolBar_TenderCoe: TToolBar
            Left = 0
            Top = 0
            Width = 996
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
            object TB_App: TToolButton
              Left = 0
              Top = 0
              Action = Act_App
              AutoSize = True
            end
            object TB_Edit: TToolButton
              Left = 53
              Top = 0
              Action = Act_Edit
              AutoSize = True
              Visible = False
            end
            object TB_Del: TToolButton
              Left = 106
              Top = 0
              Action = Act_Del
              AutoSize = True
              Visible = False
            end
            object TB_Submit: TToolButton
              Left = 159
              Top = 0
              Action = Act_Submit
              AutoSize = True
            end
            object TB_Check: TToolButton
              Left = 212
              Top = 0
              Action = Act_Check
              AutoSize = True
            end
            object TB_Audit: TToolButton
              Left = 265
              Top = 0
              Action = Act_Audit
              AutoSize = True
            end
            object TB_PushDown: TToolButton
              Left = 318
              Top = 0
              Action = Act_PushDown
              AutoSize = True
            end
            object ToolButton14: TToolButton
              Left = 371
              Top = 0
              Width = 8
              Caption = 'ToolButton5'
              Enabled = False
              ImageIndex = 4
              Style = tbsSeparator
            end
            object TB_Print: TToolButton
              Left = 379
              Top = 0
              Cursor = crHandPoint
              AutoSize = True
              Caption = #25171#21360'[&P]'
              ImageIndex = 4
            end
            object ToolButton17: TToolButton
              Left = 432
              Top = 0
              Width = 8
              Caption = 'ToolButton1'
              Enabled = False
              ImageIndex = 9
              Style = tbsSeparator
            end
            object TB_EXIT: TToolButton
              Left = 440
              Top = 0
              AutoSize = True
              Caption = #36864#20986'[&X]'
              ImageIndex = 5
              OnClick = TB_EXITClick
            end
          end
          object RzSizePanel1: TRzSizePanel
            Left = 0
            Top = 35
            Width = 219
            Height = 610
            Color = 14935011
            HotSpotVisible = True
            SizeBarWidth = 7
            TabOrder = 1
            VisualStyle = vsGradient
            object PC_Tree: TPageControl
              Left = 0
              Top = 0
              Width = 211
              Height = 610
              ActivePage = TS_Item
              Align = alClient
              MultiLine = True
              TabOrder = 0
              object TS_Item: TTabSheet
                Caption = #25353#39033#30446
                object MyTreeView_Date: TTreeView
                  Left = 0
                  Top = 29
                  Width = 203
                  Height = 553
                  Align = alClient
                  Ctl3D = False
                  Indent = 19
                  ParentCtl3D = False
                  TabOrder = 0
                  OnChange = MyTreeView_DateChange
                  OnExpanding = MyTreeView_DateExpanding
                end
                object ToolBar4: TToolBar
                  Left = 0
                  Top = 0
                  Width = 203
                  Height = 29
                  AutoSize = True
                  ButtonHeight = 25
                  ButtonWidth = 161
                  Caption = 'TBar_Sel'
                  Images = ImageList
                  TabOrder = 1
                  object TB_Ref_Item: TcxButton
                    Left = 0
                    Top = 2
                    Width = 80
                    Height = 25
                    Action = Act_Ref_Item
                    BiDiMode = bdRightToLeftReadingOnly
                    ParentBiDiMode = False
                    TabOrder = 0
                    Glyph.Data = {
                      F6020000424DF60200000000000036000000280000000E000000100000000100
                      180000000000C0020000C40E0000C40E000000000000000000000302000E0B07
                      0C0404090000150D0E070302030400020A000108000908001304021407090104
                      08B8C5C70000888888C4C6C6CCD1D0CAD0CFBCC9C7B8CDC4B8D8C7B5D3C0BED2
                      C6C7CECBCDC8C9CBC6C8000205C5D1D3150E808489F4FFFFE1FAFCD1F8F6D1FF
                      FFBFFFF0278054B5FFDDDCFFFFD8EEF9ECFFFFBFCED1000408C3C7CC9B008088
                      8FE8FBFFD3F9F9C8FFFBB0FFEE137D54128A50B3FFE7BFFDE7DFFFFFD5F7F6B1
                      CACC020B0FBEC1C60808778689E9FFFFDCFFFFBCFFEF1582520F8E510B844A1B
                      8248317E41D7FFDEDEFFF4B6CFCB000B09CDCFCF0808778584ECFFFFCFF9EECC
                      FFF4A7FFDB12884D158555B8FFE43D873F2C6324D1FADFBDD4CF000203C0BFC1
                      08087E8882F3FFF9E5FFF3C9FDDFC9FFEAB7FFE6258263AFFFDCDFFFDD2D551E
                      E6FFF2BCD3CF02010AD7CDDA0808888A84F3FFF2E4FFE82F583CD1FFE6C7FFEC
                      AEFFE8BDFFEED0FFD93B5D38DAFDE9B5CCC804030DD5C7D908088B8683FCFFF8
                      F1FFF432553BE1FFF0C2FFE01B8B51A1FFD8CDFFF1D1FBEADDFFF5B9D3CD0103
                      0BCDC4D10808918C89FBFFF9E9FBEE33513E4E775CCCFFE6118A400F8C46B6FF
                      E6D4FFFADAFEF2BBD0C8000102C9C8CC08087F807EFAFFFEF3FFFFD3F1E64D7E
                      5E2E7F481795430A8B3A1E7D4BCBFFECE8FFF3C3CFC30A110AC2C9C20808868D
                      8AF8FFFFECF7FBECFFFFE0FFF1CDFFE721904C118540B8FFE0D8FFF1BDD0C1CD
                      D0C7010500CBCFCA0808808986F1F9F8F8FFFFF4FFFFECFFFEDBFFF7307C5DBD
                      FFEBD6FFF3000A00000A04010101060005CEC6CD0808788381FAFFFFFAF9FBFE
                      FDFFFAFFFFEDFFFFC9F6EDD6FFFADAF8ED7D8D86F0F7FA0B0A13D7CDD9FFF6FF
                      0808818989FBFAFCFFFDFEFFFDFCFFFCF8FAFFFCF1FFFFEDFFFEEFFFF9758780
                      00060FBDBECCFFFAFFFDF5FF08087C83868D8A8C9D8585977E7A918982868882
                      8183837F878678897E778982C3CCD6F8FAFFFAF6FFFFFBFF170E}
                    LookAndFeel.Kind = lfUltraFlat
                    LookAndFeel.NativeStyle = False
                    UseSystemPaint = False
                  end
                end
              end
              object TS_Write: TTabSheet
                Caption = #25353#37319#36141#32463#29702
                ImageIndex = 1
                object MyTreeView_Write: TTreeView
                  Left = 0
                  Top = 29
                  Width = 203
                  Height = 553
                  Align = alClient
                  Ctl3D = False
                  Indent = 19
                  ParentCtl3D = False
                  TabOrder = 0
                  OnChange = MyTreeView_WriteChange
                  OnExpanding = MyTreeView_WriteExpanding
                end
                object ToolBar1: TToolBar
                  Left = 0
                  Top = 0
                  Width = 203
                  Height = 29
                  AutoSize = True
                  ButtonHeight = 25
                  ButtonWidth = 161
                  Caption = 'TBar_Sel'
                  Images = ImageList
                  TabOrder = 1
                  object TB_Ref_Write: TcxButton
                    Left = 0
                    Top = 2
                    Width = 80
                    Height = 25
                    Action = Act_Ref_Write
                    BiDiMode = bdRightToLeftReadingOnly
                    ParentBiDiMode = False
                    TabOrder = 0
                    Glyph.Data = {
                      F6020000424DF60200000000000036000000280000000E000000100000000100
                      180000000000C0020000C40E0000C40E000000000000000000000302000E0B07
                      0C0404090000150D0E070302030400020A000108000908001304021407090104
                      08B8C5C70000888888C4C6C6CCD1D0CAD0CFBCC9C7B8CDC4B8D8C7B5D3C0BED2
                      C6C7CECBCDC8C9CBC6C8000205C5D1D3150E808489F4FFFFE1FAFCD1F8F6D1FF
                      FFBFFFF0278054B5FFDDDCFFFFD8EEF9ECFFFFBFCED1000408C3C7CC9B008088
                      8FE8FBFFD3F9F9C8FFFBB0FFEE137D54128A50B3FFE7BFFDE7DFFFFFD5F7F6B1
                      CACC020B0FBEC1C60808778689E9FFFFDCFFFFBCFFEF1582520F8E510B844A1B
                      8248317E41D7FFDEDEFFF4B6CFCB000B09CDCFCF0808778584ECFFFFCFF9EECC
                      FFF4A7FFDB12884D158555B8FFE43D873F2C6324D1FADFBDD4CF000203C0BFC1
                      08087E8882F3FFF9E5FFF3C9FDDFC9FFEAB7FFE6258263AFFFDCDFFFDD2D551E
                      E6FFF2BCD3CF02010AD7CDDA0808888A84F3FFF2E4FFE82F583CD1FFE6C7FFEC
                      AEFFE8BDFFEED0FFD93B5D38DAFDE9B5CCC804030DD5C7D908088B8683FCFFF8
                      F1FFF432553BE1FFF0C2FFE01B8B51A1FFD8CDFFF1D1FBEADDFFF5B9D3CD0103
                      0BCDC4D10808918C89FBFFF9E9FBEE33513E4E775CCCFFE6118A400F8C46B6FF
                      E6D4FFFADAFEF2BBD0C8000102C9C8CC08087F807EFAFFFEF3FFFFD3F1E64D7E
                      5E2E7F481795430A8B3A1E7D4BCBFFECE8FFF3C3CFC30A110AC2C9C20808868D
                      8AF8FFFFECF7FBECFFFFE0FFF1CDFFE721904C118540B8FFE0D8FFF1BDD0C1CD
                      D0C7010500CBCFCA0808808986F1F9F8F8FFFFF4FFFFECFFFEDBFFF7307C5DBD
                      FFEBD6FFF3000A00000A04010101060005CEC6CD0808788381FAFFFFFAF9FBFE
                      FDFFFAFFFFEDFFFFC9F6EDD6FFFADAF8ED7D8D86F0F7FA0B0A13D7CDD9FFF6FF
                      0808818989FBFAFCFFFDFEFFFDFCFFFCF8FAFFFCF1FFFFEDFFFEEFFFF9758780
                      00060FBDBECCFFFAFFFDF5FF08087C83868D8A8C9D8585977E7A918982868882
                      8183837F878678897E778982C3CCD6F8FAFFFAF6FFFFFBFF170E}
                    LookAndFeel.Kind = lfUltraFlat
                    LookAndFeel.NativeStyle = False
                    UseSystemPaint = False
                  end
                end
              end
            end
          end
          object Panel5: TPanel
            Left = 219
            Top = 35
            Width = 777
            Height = 610
            Align = alClient
            Caption = 'Panel1'
            TabOrder = 2
            object PageControl1: TPageControl
              Left = 1
              Top = 1
              Width = 775
              Height = 84
              ActivePage = TabSheet1
              Align = alClient
              TabOrder = 0
              object TabSheet1: TTabSheet
                Caption = #20027#34920
                object cxGrid_TenderCoe: TcxGrid
                  Left = 0
                  Top = 0
                  Width = 767
                  Height = 56
                  Align = alClient
                  PopupMenu = PM
                  TabOrder = 0
                  OnContextPopup = cxGrid_TenderCoeContextPopup
                  object cxGV_TenderCoe: TcxGridDBTableView
                    DataController.DataSource = DS_Mdata_TenderCoe
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
                    OnFocusedRecordChanged = cxGV_TenderCoeFocusedRecordChanged
                    OnSelectionChanged = cxGV_TenderCoeSelectionChanged
                    OptionsData.CancelOnExit = False
                    OptionsData.DeletingConfirmation = False
                    OptionsData.Editing = False
                    OptionsSelection.MultiSelect = True
                    OptionsView.Navigator = True
                    OptionsView.Footer = True
                    OptionsView.GroupByBox = False
                    object FTenderCoeNum_TenderCoe: TcxGridDBColumn
                      Caption = #25307#26631#30830#35748#21333#21495
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      SortOrder = soAscending
                      Width = 97
                      DataBinding.FieldName = 'FTenderCoeNum'
                    end
                    object FTenderCoeDate_TenderCoe: TcxGridDBColumn
                      Caption = #25307#26631#30830#35748#26085#26399
                      PropertiesClassName = 'TcxDateEditProperties'
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 85
                      DataBinding.FieldName = 'FTenderCoeDate'
                    end
                    object FPaymentMode_TenderCoe: TcxGridDBColumn
                      Caption = #20184#27454#26041#24335
                      PropertiesClassName = 'TcxButtonEditProperties'
                      Properties.Buttons = <
                        item
                          Default = True
                          Kind = bkEllipsis
                        end>
                      Properties.OnButtonClick = FPaymentMode_TenderCoePropertiesButtonClick
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 87
                      DataBinding.FieldName = 'FPaymentMode'
                    end
                    object FSupplierName_TenderCoe: TcxGridDBColumn
                      Caption = #20379#24212#21830#21517#31216
                      PropertiesClassName = 'TcxButtonEditProperties'
                      Properties.Buttons = <
                        item
                          Default = True
                          Kind = bkEllipsis
                        end>
                      Properties.OnButtonClick = FSupplierName_TenderCoePropertiesButtonClick
                      Properties.OnEditValueChanged = FSupplierName_TenderCoePropertiesEditValueChanged
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 223
                      DataBinding.FieldName = 'FSupplierName'
                    end
                    object FTenderCoeReMark_TenderCoe: TcxGridDBColumn
                      Caption = #25307#26631#30830#35748#22791#27880
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 224
                      DataBinding.FieldName = 'FTenderCoeReMark'
                    end
                    object FTenderCoeStatusNotes_TenderCoe: TcxGridDBColumn
                      Caption = #21333#25454#29366#24577
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 63
                      DataBinding.FieldName = 'FTenderCoeStatusNotes'
                    end
                    object FTenderCoeStatus_TenderCoe: TcxGridDBColumn
                      Caption = #29366#24577
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 49
                      DataBinding.FieldName = 'FTenderCoeStatus'
                    end
                    object FTenderCoeWrite_TenderCoe: TcxGridDBColumn
                      Caption = #22635'    '#21333
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 49
                      DataBinding.FieldName = 'FTenderCoeWrite'
                    end
                    object FTenderWriteCoeDate_TenderCoe: TcxGridDBColumn
                      Caption = #22635#21333#26085#26399
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 106
                      DataBinding.FieldName = 'FTenderCoeWriteDate'
                    end
                    object FTenderCoeSubmitDate_TenderCoe: TcxGridDBColumn
                      Caption = #25552#20132#26085#26399
                      PropertiesClassName = 'TcxDateEditProperties'
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 89
                      DataBinding.FieldName = 'FTenderCoeSubmitDate'
                    end
                    object FTenderCoeCheck_TenderCoe: TcxGridDBColumn
                      Caption = #26657'    '#23545
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 41
                      DataBinding.FieldName = 'FTenderCoeCheck'
                    end
                    object FTenderCoeCheckDate_TenderCoe: TcxGridDBColumn
                      Caption = #26657#23545#26085#26399
                      PropertiesClassName = 'TcxDateEditProperties'
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 95
                      DataBinding.FieldName = 'FTenderCoeCheckDate'
                    end
                    object FTenderCoeAudit_TenderCoe: TcxGridDBColumn
                      Caption = #23457'    '#26680
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 41
                      DataBinding.FieldName = 'FTenderCoeAudit'
                    end
                    object FTenderCoeAuditDate_TenderCoe: TcxGridDBColumn
                      Caption = #23457#26680#26085#26399
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 92
                      DataBinding.FieldName = 'FTenderCoeAuditDate'
                    end
                    object FTenderCoePushDown_TenderCoe: TcxGridDBColumn
                      Caption = #25209'    '#20934
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 41
                      DataBinding.FieldName = 'FTenderCoePushDown'
                    end
                    object FTenderCoePushDownDate_TenderCoe: TcxGridDBColumn
                      Caption = #25209#20934#26085#26399
                      PropertiesClassName = 'TcxDateEditProperties'
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 100
                      DataBinding.FieldName = 'FTenderCoePushDownDate'
                    end
                    object FTenderCoeID_TenderCoe: TcxGridDBColumn
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 77
                      DataBinding.FieldName = 'FTenderCoeID'
                    end
                    object FTenderCoeNo_TenderCoe: TcxGridDBColumn
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 80
                      DataBinding.FieldName = 'FTenderCoeNo'
                    end
                    object FPlanTenderNum_TenderCoe: TcxGridDBColumn
                      Options.Editing = False
                      Options.Filtering = False
                      DataBinding.FieldName = 'FPlanTenderNum'
                    end
                    object FSupplierID_TenderCoe: TcxGridDBColumn
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 60
                      DataBinding.FieldName = 'FSupplierID'
                    end
                  end
                  object cxGL_TenderCoe: TcxGridLevel
                    GridView = cxGV_TenderCoe
                  end
                end
              end
            end
            object RSP_List: TRzSizePanel
              Left = 1
              Top = 85
              Width = 775
              Height = 524
              Align = alBottom
              Color = 14935011
              HotSpotVisible = True
              SizeBarWidth = 7
              TabOrder = 1
              VisualStyle = vsGradient
              object PageControl2: TPageControl
                Left = 0
                Top = 8
                Width = 775
                Height = 516
                ActivePage = TabSheet3
                Align = alClient
                MultiLine = True
                TabOrder = 0
                object TabSheet3: TTabSheet
                  Caption = #38468#34920
                  object TBar_Sel: TToolBar
                    Left = 0
                    Top = 0
                    Width = 767
                    Height = 29
                    AutoSize = True
                    ButtonHeight = 25
                    Caption = 'TBar_Sel'
                    Images = ImageList
                    TabOrder = 0
                    Visible = False
                    object TB_Sel: TcxButton
                      Left = 0
                      Top = 2
                      Width = 80
                      Height = 25
                      BiDiMode = bdRightToLeftReadingOnly
                      Caption = #26032#22686'[&A]'
                      Enabled = False
                      ParentBiDiMode = False
                      TabOrder = 0
                      OnClick = TB_SelClick
                      Glyph.Data = {
                        36040000424D3604000000000000360000002800000010000000100000000100
                        2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
                        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                        FF00CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
                        6600CC996600CC996600CC996600CC996600FFFFFF00FFFFFF00FFFFFF00FFFF
                        FF00CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                        FF00FFFFFF00FFFFFF00FFFFFF00CC996600FFFFFF00FFFFFF00FFFFFF00FFFF
                        FF00CC996600FFFFFF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
                        E500E5E5E500E5E5E500FFFFFF00CC996600FFFFFF00FFFFFF00FFFFFF00FFFF
                        FF00CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                        FF00FFFFFF00FFFFFF00FFFFFF00CC996600FFFFFF00FFFFFF00FFFFFF00FFFF
                        FF00CC996600FFFFFF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
                        E500E5E5E500E5E5E500FFFFFF00CC996600FFFFFF00FFFFFF00FFFFFF00FFFF
                        FF00CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                        FF00FFFFFF00FFFFFF00FFFFFF00CC996600FFFFFF00FFFFFF00FFFFFF00FFFF
                        FF00CC996600FFFFFF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
                        E500E5E5E500E5E5E500FFFFFF00CC996600FFFFFF00FFFFFF00FFFFFF00FFFF
                        FF00CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                        FF00FFFFFF00FFFFFF00FFFFFF00CC996600FFFFFF00FFFFFF00FFFFFF00FFFF
                        FF00CC996600FFFFFF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
                        E500E5E5E500E5E5E500FFFFFF00CC996600FFFFFF00FFFFFF00FFFFFF00FFFF
                        FF00CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                        FF00FFFFFF00FFFFFF00FFFFFF00CC996600FFFFFF00FFFFFF00FFFFFF00FFFF
                        FF00CC996600FFFFFF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500FFFF
                        FF00CC996600CC996600CC996600CC996600FFFFFF00FFFFFF00FFFFFF00FFFF
                        FF00CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                        FF00CC996600E5E5E500CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                        FF00CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                        FF00CC996600CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                        FF00CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
                        6600CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
                      LookAndFeel.Kind = lfUltraFlat
                      LookAndFeel.NativeStyle = False
                      UseSystemPaint = False
                    end
                  end
                  object cxGrid_TenderCoeList: TcxGrid
                    Left = 0
                    Top = 29
                    Width = 767
                    Height = 410
                    Align = alClient
                    PopupMenu = PM
                    TabOrder = 1
                    OnContextPopup = cxGrid_TenderCoeListContextPopup
                    object cxGV_TenderCoeList: TcxGridDBTableView
                      DataController.DataSource = DS_Mdata_TenderCoeList
                      DataController.Summary.DefaultGroupSummaryItems = <>
                      DataController.Summary.FooterSummaryItems = <
                        item
                          Format = '0.000;-0.000'
                          Kind = skSum
                          FieldName = 'FTakeSumQry'
                          Column = FTakeSumQry_TenderCoeList
                        end
                        item
                          Format = '0.000;-0.000'
                          Kind = skSum
                          FieldName = 'FPlanTenderQry'
                          Column = FPlanTenderQry_TenderCoeList
                        end
                        item
                          Format = '0.000;-0.000'
                          Kind = skSum
                          FieldName = 'FTenderCoeQry'
                          Column = FTenderCoeQry_TenderCoeList
                        end
                        item
                          Format = '0.000;-0.000'
                          Kind = skSum
                          FieldName = 'FOrderQry'
                          Column = FOrderQry_TenderCoeList
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
                      OnCustomDrawCell = cxGV_TenderCoeListCustomDrawCell
                      OptionsData.CancelOnExit = False
                      OptionsData.DeletingConfirmation = False
                      OptionsData.Editing = False
                      OptionsSelection.MultiSelect = True
                      OptionsView.Navigator = True
                      OptionsView.Footer = True
                      OptionsView.GroupByBox = False
                      object FTenderCoeListNum_TenderCoeList: TcxGridDBColumn
                        Caption = #24207#21495
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Filtering = False
                        SortOrder = soAscending
                        Width = 47
                        DataBinding.FieldName = 'FTenderCoeListNum'
                      end
                      object FTenderCoeNum_TenderCoeList: TcxGridDBColumn
                        Caption = #25307#26631#30830#35748#35831#21333#21495
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 89
                        DataBinding.FieldName = 'FTenderCoeNum'
                      end
                      object FNumber_TenderCoeList: TcxGridDBColumn
                        Caption = #26448#26009#32534#21495
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
                        Width = 94
                        DataBinding.FieldName = 'FNumber'
                      end
                      object FTakeName_TenderCoeList: TcxGridDBColumn
                        Caption = #26448#26009#21517#31216
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 130
                        DataBinding.FieldName = 'FTakeName'
                      end
                      object FTakeModel_TenderCoeList: TcxGridDBColumn
                        Caption = #26448#26009#35268#26684
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 133
                        DataBinding.FieldName = 'FTakeModel'
                      end
                      object FTakeUnitName_TenderCoeList: TcxGridDBColumn
                        Caption = #21333#20301
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Options.Sorting = False
                        Width = 29
                        DataBinding.FieldName = 'FTakeUnitName'
                      end
                      object FTakeSumQry_TenderCoeList: TcxGridDBColumn
                        Caption = #28165#21333#24635#25968
                        PropertiesClassName = 'TcxCurrencyEditProperties'
                        Properties.DecimalPlaces = 3
                        Properties.DisplayFormat = '0.000;-0.000'
                        Properties.ValidateOnEnter = True
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 53
                        DataBinding.FieldName = 'FTakeSumQry'
                      end
                      object FPlanTenderQry_TenderCoeList: TcxGridDBColumn
                        Caption = #30003#35831#25968#37327
                        PropertiesClassName = 'TcxCurrencyEditProperties'
                        Properties.DecimalPlaces = 3
                        Properties.DisplayFormat = '0.000;-0.000'
                        Properties.ValidateOnEnter = True
                        Properties.OnEditValueChanged = FOrderQryPropertiesEditValueChanged
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 53
                        DataBinding.FieldName = 'FPlanTenderQry'
                      end
                      object FTenderCoeQry_TenderCoeList: TcxGridDBColumn
                        Caption = #30830#35748#25968#37327
                        PropertiesClassName = 'TcxCurrencyEditProperties'
                        Properties.DecimalPlaces = 3
                        Properties.DisplayFormat = '0.000;-0.000'
                        Properties.ValidateOnEnter = True
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 53
                        DataBinding.FieldName = 'FTenderCoeQry'
                      end
                      object FOrderQry_TenderCoeList: TcxGridDBColumn
                        Caption = #35746#21333#25968#37327
                        PropertiesClassName = 'TcxCurrencyEditProperties'
                        Properties.DecimalPlaces = 3
                        Properties.DisplayFormat = '0.000;-0.000'
                        Properties.ValidateOnEnter = True
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 53
                        DataBinding.FieldName = 'FOrderQry'
                      end
                      object FOrderPrice_TenderCoeList: TcxGridDBColumn
                        Caption = #21547#31246#21333#20215
                        PropertiesClassName = 'TcxCurrencyEditProperties'
                        Properties.DecimalPlaces = 4
                        Properties.DisplayFormat = ',0.0000;-,0.0000'
                        Properties.ValidateOnEnter = True
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 94
                        DataBinding.FieldName = 'FOrderPrice'
                      end
                      object FTaxRate_TenderCoeList: TcxGridDBColumn
                        Caption = #31246#29575
                        PropertiesClassName = 'TcxCurrencyEditProperties'
                        Properties.DisplayFormat = '0%'
                        Properties.ValidateOnEnter = True
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Filtering = False
                        Width = 37
                        DataBinding.FieldName = 'FTaxRate'
                      end
                      object FOrderAmount_TenderCoeList: TcxGridDBColumn
                        Caption = #21547#31246#37329#39069
                        PropertiesClassName = 'TcxCurrencyEditProperties'
                        Properties.DisplayFormat = ',0.00;-,0.00'
                        Properties.ValidateOnEnter = True
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 87
                        DataBinding.FieldName = 'FOrderAmount'
                      end
                      object FPlanTenderOrder_TenderCoeList: TcxGridDBColumn
                        Caption = #37319#36141#32463#29702
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
                        Width = 73
                        DataBinding.FieldName = 'FPlanTenderOrder'
                      end
                      object FPlanTenderOrderID_TenderCoeList: TcxGridDBColumn
                        Caption = #32463#29702'ID'
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 44
                        DataBinding.FieldName = 'FPlanTenderOrderID'
                      end
                      object FTenderCoeDate_TenderCoeList: TcxGridDBColumn
                        Caption = #25307#26631#30830#35748#26085#26399
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 77
                        DataBinding.FieldName = 'FTenderCoeDate'
                      end
                      object FPlanTenderListDate_TenderCoeList: TcxGridDBColumn
                        Caption = #23450#26631#26085#26399
                        PropertiesClassName = 'TcxDateEditProperties'
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 90
                        DataBinding.FieldName = 'FPlanTenderListDate'
                      end
                      object FOrderDate_TenderCoeList: TcxGridDBColumn
                        Caption = #37319#36141#35746#21333#26085#26399
                        PropertiesClassName = 'TcxDateEditProperties'
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 77
                        DataBinding.FieldName = 'FOrderDate'
                      end
                      object FTenderCoeListReMark_TenderCoeList: TcxGridDBColumn
                        Caption = #26126#32454#22791#27880
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        DataBinding.FieldName = 'FTenderCoeListReMark'
                      end
                      object FClientShortName_TenderCoeList: TcxGridDBColumn
                        Caption = #39033#30446#21517#31216
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 215
                        DataBinding.FieldName = 'FClientShortName'
                      end
                      object FBranchFileNo_TenderCoeList: TcxGridDBColumn
                        Caption = #39033#30446#21512#21516#21495
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 110
                        DataBinding.FieldName = 'FBranchFileNo'
                      end
                      object sumFOrderAmount_TenderCoeList: TcxGridDBColumn
                        Caption = #21333#25454#37329#39069
                        PropertiesClassName = 'TcxCurrencyEditProperties'
                        Properties.DisplayFormat = ',0.00;-,0.00'
                        Properties.ValidateOnEnter = True
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 134
                        DataBinding.FieldName = 'sumFOrderAmount'
                      end
                      object FPrecastDate_TenderCoeList: TcxGridDBColumn
                        Caption = #39044#35745#21040#36135#26085#26399
                        PropertiesClassName = 'TcxDateEditProperties'
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 98
                        DataBinding.FieldName = 'FPrecastDate'
                      end
                      object FFactDate_TenderCoeList: TcxGridDBColumn
                        Caption = #23454#38469#21040#36135#26085#26399
                        PropertiesClassName = 'TcxDateEditProperties'
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 92
                        DataBinding.FieldName = 'FFactDate'
                      end
                      object FF_TenderCoeList: TcxGridDBColumn
                        Caption = #24050#20184#37329#39069
                        PropertiesClassName = 'TcxCurrencyEditProperties'
                        Properties.DisplayFormat = ',0.00;-,0.00'
                        Properties.ValidateOnEnter = True
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 129
                      end
                      object FInvoice_TenderCoeList: TcxGridDBColumn
                        Caption = #21457#31080#29366#24577
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
                        DataBinding.FieldName = 'FInvoice'
                      end
                      object FStatusNotes_TenderCoeList: TcxGridDBColumn
                        Caption = #21333#25454#29366#24577
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 79
                        DataBinding.FieldName = 'FStatusNotes'
                      end
                      object FOrderStatus_TenderCoeList: TcxGridDBColumn
                        Caption = #23457#26680#29366#24577
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 53
                        DataBinding.FieldName = 'FOrderStatus'
                      end
                      object FTakeListID_TenderCoeList: TcxGridDBColumn
                        Caption = #22806#36141#28165#21333#26126#32454'ID'
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 100
                        DataBinding.FieldName = 'FTakeListID'
                      end
                      object FItemID_TenderCoeList: TcxGridDBColumn
                        Caption = 'K3ID'
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Filtering = False
                        Width = 29
                        DataBinding.FieldName = 'FItemID'
                      end
                      object FPlanTenderListID_TenderCoeList: TcxGridDBColumn
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 30
                        DataBinding.FieldName = 'FPlanTenderListID'
                      end
                    end
                    object cxGL_TenderCoeList: TcxGridLevel
                      GridView = cxGV_TenderCoeList
                    end
                  end
                  object ToolBar_Save: TPanel
                    Left = 0
                    Top = 439
                    Width = 767
                    Height = 49
                    Align = alBottom
                    BevelOuter = bvNone
                    ParentColor = True
                    TabOrder = 2
                    Visible = False
                    object OKBtn: TcxButton
                      Left = 30
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
                      Left = 118
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
              end
            end
          end
        end
        object TS_PlanTender: TRzTabSheet
          Color = 14935011
          Caption = #25307#26631#30003#35831
          object Panel1: TPanel
            Left = 229
            Top = 0
            Width = 767
            Height = 645
            Align = alClient
            Caption = 'Panel1'
            TabOrder = 1
            object PageControl3: TPageControl
              Left = 1
              Top = 36
              Width = 765
              Height = 281
              ActivePage = TabSheet5
              Align = alClient
              TabOrder = 0
              object TabSheet5: TTabSheet
                Caption = #20027#34920#20449#24687
                object cxGrid_PlanTender: TcxGrid
                  Left = 0
                  Top = 0
                  Width = 757
                  Height = 253
                  Align = alClient
                  PopupMenu = PM
                  TabOrder = 0
                  OnContextPopup = cxGrid_PlanTenderContextPopup
                  object cxGV_PlanTender: TcxGridDBTableView
                    DataController.DataSource = DS_Mdata_PlanTender
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
                    OnCellClick = cxGV_PlanTenderCellClick
                    OptionsData.CancelOnExit = False
                    OptionsData.DeletingConfirmation = False
                    OptionsData.Editing = False
                    OptionsSelection.MultiSelect = True
                    OptionsView.Navigator = True
                    OptionsView.Footer = True
                    OptionsView.GroupByBox = False
                    object FPlanTenderNum_PlanTender: TcxGridDBColumn
                      Caption = #25307#26631#30003#35831#21333#21495
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      SortOrder = soAscending
                      Width = 84
                      DataBinding.FieldName = 'FPlanTenderNum'
                    end
                    object FPlanTenderDate_PlanTender: TcxGridDBColumn
                      Caption = #25307#26631#30003#35831#26085#26399
                      PropertiesClassName = 'TcxDateEditProperties'
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 85
                      DataBinding.FieldName = 'FPlanTenderDate'
                    end
                    object FPlanTenderReMark_PlanTender: TcxGridDBColumn
                      Caption = #25307#26631#30003#35831#22791#27880
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 224
                      DataBinding.FieldName = 'FPlanTenderReMark'
                    end
                    object FPlanTenderStatusNotes_PlanTender: TcxGridDBColumn
                      Caption = #21333#25454#29366#24577
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 53
                      DataBinding.FieldName = 'FPlanTenderStatusNotes'
                    end
                    object FPlanTenderStatus_PlanTender: TcxGridDBColumn
                      Caption = #29366#24577
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 29
                      DataBinding.FieldName = 'FPlanTenderStatus'
                    end
                    object FPlanTenderWrite_PlanTender: TcxGridDBColumn
                      Caption = #22635'    '#21333
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 41
                      DataBinding.FieldName = 'FPlanTenderWrite'
                    end
                    object FPlanTenderWriteDate_PlanTender: TcxGridDBColumn
                      Caption = #22635#21333#26085#26399
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      DataBinding.FieldName = 'FPlanTenderWriteDate'
                    end
                    object FPlanTenderSubmitDate_PlanTender: TcxGridDBColumn
                      Caption = #25552#20132#26085#26399
                      PropertiesClassName = 'TcxDateEditProperties'
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      DataBinding.FieldName = 'FPlanTenderSubmitDate'
                    end
                    object FPlanTenderCheck_PlanTender: TcxGridDBColumn
                      Caption = #26657'    '#23545
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 41
                      DataBinding.FieldName = 'FPlanTenderCheck'
                    end
                    object FPlanTenderCheckDate_PlanTender: TcxGridDBColumn
                      Caption = #26657#23545#26085#26399
                      PropertiesClassName = 'TcxDateEditProperties'
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      DataBinding.FieldName = 'FPlanTenderCheckDate'
                    end
                    object FPlanTenderAudit_PlanTender: TcxGridDBColumn
                      Caption = #23457'    '#26680
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 41
                      DataBinding.FieldName = 'FPlanTenderAudit'
                    end
                    object FPlanTenderAuditDate_PlanTender: TcxGridDBColumn
                      Caption = #23457#26680#26085#26399
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 71
                      DataBinding.FieldName = 'FPlanTenderAuditDate'
                    end
                    object FPlanTenderPushDown_PlanTender: TcxGridDBColumn
                      Caption = #25209'    '#20934
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 41
                      DataBinding.FieldName = 'FPlanTenderPushDown'
                    end
                    object FPlanTenderPushDownDate_PlanTender: TcxGridDBColumn
                      Caption = #25209#20934#26085#26399
                      PropertiesClassName = 'TcxDateEditProperties'
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      DataBinding.FieldName = 'FPlanTenderPushDownDate'
                    end
                    object FPlanTenderID_PlanTender: TcxGridDBColumn
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 77
                      DataBinding.FieldName = 'FPlanTenderID'
                    end
                    object FPlanTenderNo_PlanTender: TcxGridDBColumn
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 80
                      DataBinding.FieldName = 'FPlanTenderNo'
                    end
                  end
                  object cxGL_PlanTender: TcxGridLevel
                    GridView = cxGV_PlanTender
                  end
                end
              end
            end
            object ToolBar3: TToolBar
              Left = 1
              Top = 1
              Width = 765
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
              TabOrder = 1
              object ToolButton9: TToolButton
                Left = 0
                Top = 0
                AutoSize = True
                Caption = #36873#25321'[&S]'
                ImageIndex = 24
                OnClick = ToolButton9Click
              end
              object ToolButton7: TToolButton
                Left = 53
                Top = 0
                Width = 8
                Caption = 'ToolButton5'
                ImageIndex = 4
                Style = tbsSeparator
              end
              object TB_EXIT1: TToolButton
                Left = 61
                Top = 0
                AutoSize = True
                Caption = #36820#22238'[&X]'
                ImageIndex = 19
                OnClick = TB_EXIT1Click
              end
            end
            object RzSizePanel3: TRzSizePanel
              Left = 1
              Top = 317
              Width = 765
              Height = 327
              Align = alBottom
              Color = 14935011
              HotSpotVisible = True
              SizeBarWidth = 7
              TabOrder = 2
              VisualStyle = vsGradient
              object PageControl4: TPageControl
                Left = 0
                Top = 8
                Width = 765
                Height = 319
                ActivePage = TabSheet6
                Align = alClient
                TabOrder = 0
                object TabSheet6: TTabSheet
                  Caption = #38468#34920#20449#24687
                  object cxGrid_PlanTenderList: TcxGrid
                    Left = 0
                    Top = 0
                    Width = 757
                    Height = 291
                    Align = alClient
                    PopupMenu = PM
                    TabOrder = 0
                    OnContextPopup = cxGrid_PlanTenderListContextPopup
                    object cxGV_PlanTenderList: TcxGridDBTableView
                      DataController.DataSource = DS_Mdata_PlanTenderList
                      DataController.Summary.DefaultGroupSummaryItems = <>
                      DataController.Summary.FooterSummaryItems = <
                        item
                          Format = #23567#35745#65306',0.00'
                          Kind = skSum
                          FieldName = 'FOrderAmount'
                          Column = FOrderAmount_PlanTenderList
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
                      OnCustomDrawCell = cxGV_PlanTenderListCustomDrawCell
                      OptionsCustomize.ColumnSorting = False
                      OptionsData.CancelOnExit = False
                      OptionsData.DeletingConfirmation = False
                      OptionsData.Editing = False
                      OptionsSelection.MultiSelect = True
                      OptionsView.Navigator = True
                      OptionsView.Footer = True
                      OptionsView.GroupByBox = False
                      object FPlanTenderListNum_PlanTenderList: TcxGridDBColumn
                        Caption = #24207#21495
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Filtering = False
                        Width = 47
                        DataBinding.FieldName = 'FPlanTenderListNum'
                      end
                      object FNumber_PlanTenderList: TcxGridDBColumn
                        Caption = #26448#26009#32534#21495
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
                        Width = 94
                        DataBinding.FieldName = 'FNumber'
                      end
                      object FTakeName_PlanTenderList: TcxGridDBColumn
                        Caption = #26448#26009#21517#31216
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 130
                        DataBinding.FieldName = 'FTakeName'
                      end
                      object FTakeModel_PlanTenderList: TcxGridDBColumn
                        Caption = #26448#26009#35268#26684
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 133
                        DataBinding.FieldName = 'FTakeModel'
                      end
                      object FTakeUnitName_PlanTenderList: TcxGridDBColumn
                        Caption = #21333#20301
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Options.Sorting = False
                        Width = 29
                        DataBinding.FieldName = 'FTakeUnitName'
                      end
                      object FTakeSumQry_PlanTenderList: TcxGridDBColumn
                        Caption = #28165#21333#24635#25968
                        PropertiesClassName = 'TcxCurrencyEditProperties'
                        Properties.DecimalPlaces = 3
                        Properties.DisplayFormat = '0.000;-0.000'
                        Properties.ValidateOnEnter = True
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 53
                        DataBinding.FieldName = 'FTakeSumQry'
                      end
                      object FPlanTenderQry_PlanTenderList: TcxGridDBColumn
                        Caption = #30003#35831#25968#37327
                        PropertiesClassName = 'TcxCurrencyEditProperties'
                        Properties.DecimalPlaces = 3
                        Properties.DisplayFormat = '0.000;-0.000'
                        Properties.ValidateOnEnter = True
                        Properties.OnEditValueChanged = FOrderQryPropertiesEditValueChanged
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Filtering = False
                        Width = 53
                        DataBinding.FieldName = 'FPlanTenderQry'
                      end
                      object FTenderCoeQry_PlanTenderList: TcxGridDBColumn
                        Caption = #30830#35748#25968#37327
                        PropertiesClassName = 'TcxCurrencyEditProperties'
                        Properties.DecimalPlaces = 3
                        Properties.DisplayFormat = '0.000;-0.000'
                        Properties.ValidateOnEnter = True
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 53
                        DataBinding.FieldName = 'FTenderCoeQry'
                      end
                      object FOrderQry_PlanTenderList: TcxGridDBColumn
                        Caption = #35746#21333#25968#37327
                        PropertiesClassName = 'TcxCurrencyEditProperties'
                        Properties.DecimalPlaces = 3
                        Properties.DisplayFormat = '0.000;-0.000'
                        Properties.ValidateOnEnter = True
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 53
                        DataBinding.FieldName = 'FOrderQry'
                      end
                      object FPlanTenderListID_PlanTenderList: TcxGridDBColumn
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 93
                        DataBinding.FieldName = 'FPlanTenderListID'
                      end
                      object FPlanTenderNum_PlanTenderList: TcxGridDBColumn
                        Caption = #25307#26631#30003#35831#21333#21495
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 77
                        DataBinding.FieldName = 'FPlanTenderNum'
                      end
                      object FPlanTenderDate_PlanTenderList: TcxGridDBColumn
                        Caption = #25307#26631#30003#35831#26085#26399
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 77
                        DataBinding.FieldName = 'FPlanTenderDate'
                      end
                      object FPlanTenderListDate_PlanTenderList: TcxGridDBColumn
                        Caption = #23450#26631#26085#26399
                        PropertiesClassName = 'TcxDateEditProperties'
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 90
                        DataBinding.FieldName = 'FPlanTenderListDate'
                      end
                      object FPlanTenderOrder_PlanTenderList: TcxGridDBColumn
                        Caption = #37319#36141#32463#29702
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
                        Width = 53
                        DataBinding.FieldName = 'FPlanTenderOrder'
                      end
                      object FOrderPrice_PlanTenderList: TcxGridDBColumn
                        Caption = #21547#31246#21333#20215
                        PropertiesClassName = 'TcxCurrencyEditProperties'
                        Properties.DecimalPlaces = 4
                        Properties.DisplayFormat = ',0.0000;-,0.0000'
                        Properties.ValidateOnEnter = True
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Filtering = False
                        Width = 94
                        DataBinding.FieldName = 'FOrderPrice'
                      end
                      object FTaxRate_PlanTenderList: TcxGridDBColumn
                        Caption = #31246#29575
                        PropertiesClassName = 'TcxCurrencyEditProperties'
                        Properties.DisplayFormat = '0%'
                        Properties.ValidateOnEnter = True
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Filtering = False
                        Width = 37
                        DataBinding.FieldName = 'FTaxRate'
                      end
                      object FOrderAmount_PlanTenderList: TcxGridDBColumn
                        Caption = #21547#31246#37329#39069
                        PropertiesClassName = 'TcxCurrencyEditProperties'
                        Properties.DisplayFormat = ',0.00;-,0.00'
                        Properties.ValidateOnEnter = True
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 87
                        DataBinding.FieldName = 'FOrderAmount'
                      end
                      object FPlanTenderOrderID_PlanTenderList: TcxGridDBColumn
                        Caption = #32463#29702'ID'
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 44
                        DataBinding.FieldName = 'FPlanTenderOrderID'
                      end
                      object FSupplierName_PlanTenderList: TcxGridDBColumn
                        Caption = #20379#24212#21830#21517#31216
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
                        Width = 285
                        DataBinding.FieldName = 'FSupplierName'
                      end
                      object FSupplierID_PlanTenderList: TcxGridDBColumn
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        DataBinding.FieldName = 'FSupplierID'
                      end
                      object FPaymentMode_PlanTenderList: TcxGridDBColumn
                        Caption = #20184#27454#26041#24335
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
                        Width = 53
                        DataBinding.FieldName = 'FPaymentMode'
                      end
                      object FOrderNum_PlanTenderList: TcxGridDBColumn
                        Caption = #37319#36141#35746#21333#21495
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 65
                        DataBinding.FieldName = 'FOrderNum'
                      end
                      object FOrderListReMark_PlanTenderList: TcxGridDBColumn
                        Caption = #37319#36141#35746#30003#22791#27880
                        PropertiesClassName = 'TcxButtonEditProperties'
                        Properties.Buttons = <
                          item
                            Default = True
                            Kind = bkEllipsis
                          end>
                        Properties.ClickKey = 13
                        Properties.MaxLength = 100
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Filtering = False
                        Width = 133
                        DataBinding.FieldName = 'FOrderListReMark'
                      end
                      object FOrderDate_PlanTenderList: TcxGridDBColumn
                        Caption = #37319#36141#35746#21333#26085#26399
                        PropertiesClassName = 'TcxDateEditProperties'
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 77
                        DataBinding.FieldName = 'FOrderDate'
                      end
                      object FPlanTenderListReMark_PlanTenderList: TcxGridDBColumn
                        Caption = #26126#32454#22791#27880
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        DataBinding.FieldName = 'FPlanTenderListReMark'
                      end
                      object FClientShortName_PlanTenderList: TcxGridDBColumn
                        Caption = #39033#30446#21517#31216
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 215
                        DataBinding.FieldName = 'FClientShortName'
                      end
                      object FBranchFileNo_PlanTenderList: TcxGridDBColumn
                        Caption = #39033#30446#21512#21516#21495
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 110
                        DataBinding.FieldName = 'FBranchFileNo'
                      end
                      object FPrecastDate_PlanTenderList: TcxGridDBColumn
                        Caption = #39044#35745#21040#36135#26085#26399
                        PropertiesClassName = 'TcxDateEditProperties'
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 98
                        DataBinding.FieldName = 'FPrecastDate'
                      end
                      object FFactDate_PlanTenderList: TcxGridDBColumn
                        Caption = #23454#38469#21040#36135#26085#26399
                        PropertiesClassName = 'TcxDateEditProperties'
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 92
                        DataBinding.FieldName = 'FFactDate'
                      end
                      object FInvoice_PlanTenderList: TcxGridDBColumn
                        Caption = #21457#31080#29366#24577
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
                        DataBinding.FieldName = 'FInvoice'
                      end
                      object FStatusNotes_PlanTenderList: TcxGridDBColumn
                        Caption = #21333#25454#29366#24577
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 79
                        DataBinding.FieldName = 'FStatusNotes'
                      end
                      object FOrderStatus_PlanTenderList: TcxGridDBColumn
                        Caption = #23457#26680#29366#24577
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 53
                        DataBinding.FieldName = 'FOrderStatus'
                      end
                      object FTakeListID_PlanTenderList: TcxGridDBColumn
                        Caption = #22806#36141#28165#21333#26126#32454'ID'
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 100
                        DataBinding.FieldName = 'FTakeListID'
                      end
                      object FItemID_PlanTenderList: TcxGridDBColumn
                        Caption = 'K3ID'
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Filtering = False
                        Width = 29
                        DataBinding.FieldName = 'FItemID'
                      end
                    end
                    object cxGL_PlanTenderList: TcxGridLevel
                      GridView = cxGV_PlanTenderList
                    end
                  end
                end
              end
            end
          end
          object RzSizePanel2: TRzSizePanel
            Left = 0
            Top = 0
            Width = 229
            Height = 645
            Color = 14935011
            HotSpotVisible = True
            SizeBarWidth = 7
            TabOrder = 0
            VisualStyle = vsGradient
            object PageControl6: TPageControl
              Left = 0
              Top = 0
              Width = 221
              Height = 645
              ActivePage = TabSheet2
              Align = alClient
              MultiLine = True
              TabOrder = 0
              object TabSheet2: TTabSheet
                Caption = #25353#26085#26399
                object ToolBar5: TToolBar
                  Left = 0
                  Top = 0
                  Width = 213
                  Height = 29
                  AutoSize = True
                  ButtonHeight = 25
                  ButtonWidth = 161
                  Caption = 'TBar_Sel'
                  Images = ImageList
                  TabOrder = 0
                  object TB_Ref_PlanTender: TcxButton
                    Left = 0
                    Top = 2
                    Width = 80
                    Height = 25
                    Action = Act_Ref_PlanTender
                    BiDiMode = bdRightToLeftReadingOnly
                    ParentBiDiMode = False
                    TabOrder = 0
                    Glyph.Data = {
                      F6020000424DF60200000000000036000000280000000E000000100000000100
                      180000000000C0020000C40E0000C40E000000000000000000000302000E0B07
                      0C0404090000150D0E070302030400020A000108000908001304021407090104
                      08B8C5C70000888888C4C6C6CCD1D0CAD0CFBCC9C7B8CDC4B8D8C7B5D3C0BED2
                      C6C7CECBCDC8C9CBC6C8000205C5D1D3150E808489F4FFFFE1FAFCD1F8F6D1FF
                      FFBFFFF0278054B5FFDDDCFFFFD8EEF9ECFFFFBFCED1000408C3C7CC9B008088
                      8FE8FBFFD3F9F9C8FFFBB0FFEE137D54128A50B3FFE7BFFDE7DFFFFFD5F7F6B1
                      CACC020B0FBEC1C60808778689E9FFFFDCFFFFBCFFEF1582520F8E510B844A1B
                      8248317E41D7FFDEDEFFF4B6CFCB000B09CDCFCF0808778584ECFFFFCFF9EECC
                      FFF4A7FFDB12884D158555B8FFE43D873F2C6324D1FADFBDD4CF000203C0BFC1
                      08087E8882F3FFF9E5FFF3C9FDDFC9FFEAB7FFE6258263AFFFDCDFFFDD2D551E
                      E6FFF2BCD3CF02010AD7CDDA0808888A84F3FFF2E4FFE82F583CD1FFE6C7FFEC
                      AEFFE8BDFFEED0FFD93B5D38DAFDE9B5CCC804030DD5C7D908088B8683FCFFF8
                      F1FFF432553BE1FFF0C2FFE01B8B51A1FFD8CDFFF1D1FBEADDFFF5B9D3CD0103
                      0BCDC4D10808918C89FBFFF9E9FBEE33513E4E775CCCFFE6118A400F8C46B6FF
                      E6D4FFFADAFEF2BBD0C8000102C9C8CC08087F807EFAFFFEF3FFFFD3F1E64D7E
                      5E2E7F481795430A8B3A1E7D4BCBFFECE8FFF3C3CFC30A110AC2C9C20808868D
                      8AF8FFFFECF7FBECFFFFE0FFF1CDFFE721904C118540B8FFE0D8FFF1BDD0C1CD
                      D0C7010500CBCFCA0808808986F1F9F8F8FFFFF4FFFFECFFFEDBFFF7307C5DBD
                      FFEBD6FFF3000A00000A04010101060005CEC6CD0808788381FAFFFFFAF9FBFE
                      FDFFFAFFFFEDFFFFC9F6EDD6FFFADAF8ED7D8D86F0F7FA0B0A13D7CDD9FFF6FF
                      0808818989FBFAFCFFFDFEFFFDFCFFFCF8FAFFFCF1FFFFEDFFFEEFFFF9758780
                      00060FBDBECCFFFAFFFDF5FF08087C83868D8A8C9D8585977E7A918982868882
                      8183837F878678897E778982C3CCD6F8FAFFFAF6FFFFFBFF170E}
                    LookAndFeel.Kind = lfUltraFlat
                    LookAndFeel.NativeStyle = False
                    UseSystemPaint = False
                  end
                end
                object MyTreeView_PlanTender: TTreeView
                  Left = 0
                  Top = 29
                  Width = 213
                  Height = 588
                  Align = alClient
                  Ctl3D = False
                  Indent = 19
                  ParentCtl3D = False
                  TabOrder = 1
                  OnChange = MyTreeView_PlanTenderChange
                  OnExpanding = MyTreeView_PlanTenderExpanding
                end
              end
            end
          end
        end
      end
    end
  end
  object ImageList: TImageList
    Left = 67
    Top = 326
    Bitmap = {
      494C01011B001D00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      0000000000000000000000000000000000000000000000000000000000006B73
      7300212121006B7373000000000000000000000000006B7373006B7373000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002121
      2100101010002121210000000000000000000000000021212100212121000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006B73
      7300212121006B7373000000000000000000000000006B7373006B7373000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000FFFF000000000000000000000000000000000000000000C6C6C6000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006B73
      73006B7373006B7373006B7373006B7373006B7373006B737300C6C6C6000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00C6C6C6000000000000000000000000000000000000000000C6C6C6000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000008400000084000000840000008400000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006B7373001010
      10001010100010101000101010001010100010101000101010006B7373000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000FFFF000000000000000000000000000000000000000000C6C6C6000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000008400000084000000840000008400000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000101010002121
      21000000000000000000000000000000000000000000C6C6C60010101000C6C6
      C60000000000000000000000000000000000000000000000000000000000C6C6
      C60000FFFF00C6C6C600C6C6C60000FFFF00C6C6C60000FFFF0000FFFF00C6C6
      C60000FFFF000000000000000000000000000000000000000000000000000000
      0000000000008400000084000000840000008400000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000101010001010
      1000000000001010100010101000000000001010100000000000101010006B73
      73000000000000000000000000000000000000000000000000000000000000FF
      FF00C6C6C60000000000000000000000000000000000000000000000000000FF
      FF00C6C6C6000000000000000000000000000000000000000000000000000000
      000000000000840000008400000084000000FFFFFF0084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000101010000000
      0000000000000000000000000000000000000000000000000000212121001010
      100000000000000000000000000000000000000000000000000000000000C6C6
      C60000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      000000000000840000008400000084000000FFFFFF0084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006B7373001010
      10000000000010101000101010000000000010101000000000006B7373001010
      10006B73730000000000000000000000000000000000000000000000000000FF
      FF0000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000008400000084000000840000008400000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000021212100C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000001010
      10001010100000000000000000000000000000000000000000000000000000FF
      FF0000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010101000C6C6C6002121
      2100000000001010100010101000000000001010100000000000000000001010
      1000101010006B7373000000000000000000000000000000000000000000C6C6
      C60000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001010100010101000000000000000000000000000000000000000000000FF
      FF0000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006B737300101010006B7373006B7373000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C6001010100010101000101010000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF310000FF310000FF31
      0000FF310000FF310000FF310000FF310000FF310000FF310000FF310000FF31
      0000FF310000FF310000FF310000000000008C8C8C00C6C6C600CED6D600CED6
      CE00BDCEC600BDCEC600BDDEC600B5D6C600BDD6C600C6CECE00CECECE00CEC6
      CE0000000000C6D6D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000948C390029A56B00318C4A00088C
      2900108C3100188C3900298C4200218C4200108C3100088C2900188C3900218C
      4200298C4200108C3100218C39000000000000000000FF310000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF3100000000000084848C00F7FFFF00E7FFFF00D6FF
      F700D6FFFF00BDFFF70021845200B5FFDE00DEFFFF00DEEFFF00EFFFFF00BDCE
      D60000000800C6C6CE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C8C4A00318C4A00A5DE9C00FFF7
      FF00F7EFF700EFEFE700DEEFDE00E7EFE700F7EFEF00F7EFF700EFEFEF00E7EF
      E700DEEFDE00F7F7EF00218C39000000000000000000FF310000FFFFFF009C9C
      9C00FFFFFF009C9C9C009C9C9C00FFFFFF009C9C9C009C9C9C00FFFFFF009C9C
      9C009C9C9C00FFFFFF00FF31000000000000848C8C00EFFFFF00D6FFFF00CEFF
      FF00B5FFEF00107B5200108C5200B5FFE700BDFFE700DEFFFF00D6F7F700B5CE
      CE0000080800BDC6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AD8C5200188C3100EFEFEF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00218C39000000000000000000FF310000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF3100000000000073848C00EFFFFF00DEFFFF00BDFF
      EF0010845200088C520008844A0018844A00317B4200D6FFDE00DEFFF700B5CE
      CE0000080800CECECE0000000000000000000000000000000000000000000000
      0000000000008400000084000000840000008400000084000000840000008400
      000000000000000000000000000000000000AD8C5A00108C2900DEE7DE00CEE7
      CE00E7EFE700E7EFE700E7EFE700E7EFE700DEEFDE00DEEFDE00B5D6B500A5CE
      A500B5D6B50094BD9400218C39000000000000000000FF310000FFFFFF009C9C
      9C00FFFFFF009C9C9C009C9C9C00FFFFFF009C9C9C009C9C9C00FFFFFF009C9C
      9C009C9C9C00FFFFFF00FF3100000000000073848400EFFFFF00CEFFEF00CEFF
      F700A5FFDE00108C4A0010845200BDFFE7003984390029632100D6FFDE00BDD6
      CE0000000000C6BDC60000000000000000000000000000000000000000000000
      0000000000008400000084000000840000008400000084000000840000008400
      000000000000000000000000000000000000AD8C520018943100E7F7E700187B
      1800187B1800187B1800187B1800187B18004A944A0073B5730042944200187B
      1800187B180031843100218C39000000000000000000FF310000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF310000000000007B8C8400F7FFFF00E7FFF700CEFF
      DE00CEFFEF00B5FFE70021846300ADFFDE00DEFFDE0029521800E7FFF700BDD6
      CE0000000800D6CEDE0000000000000000000000000000000000000000000000
      0000000000008400000084000000840000008400000084000000840000008400
      000000000000000000000000000000000000A58C4A00218C3900E7EFE700CECE
      CE00187B1800187B1800187B1800187B180063A563008CCE8C00187B1800187B
      180018731800E7F7E700218C39000000000000000000FF310000FFFFFF00CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C6300FFFFFF00FF310000000000008C8C8400F7FFF700E7FFEF00295A
      3900D6FFE700C6FFEF00ADFFEF00BDFFEF00D6FFDE00395A3900DEFFEF00B5CE
      CE0000000800D6C6DE0000000000000000000000000000000000000000000000
      000000000000840000008400000084000000FFFFFF0084000000840000008400
      00000000000000000000000000000000000000000000298C4200CEE7CE00FFFF
      FF00CED6CE00187B1800187B1800187B180094CE9400187B1800187B18005294
      5200107B1000A5CEA500218C39000000000000000000FF310000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF310000000000008C848400FFFFFF00F7FFF7003152
      3900E7FFF700C6FFE700188C5200A5FFDE00CEFFF700D6FFEF00DEFFF700BDD6
      CE0000000800CEC6D60000000000000000000000000000000000000000000000
      000000000000840000008400000084000000FFFFFF0084000000840000008400
      00000000000000000000000000000000000000000000298C4200CEE7CE00FFFF
      FF00FFFFFF00B5CEB500187B18008CCE8C00187B1800187B180084B58400BDD6
      BD00ADD6AD00DEDEDE00218C39000000000000000000FF310000FFFFFF00FFFF
      FF00FFFFFF009C9C9C009C9C9C00FFFFFF009C9C9C009C9C9C00FFFFFF009C9C
      9C009C9C9C00FFFFFF00FF31000000000000948C8C00FFFFFF00EFFFEF003152
      39004A735A00CEFFE700108C4200088C4200B5FFE700D6FFFF00DEFFF700BDD6
      CE0000000000CECECE0000000000000000000000000000000000000000000000
      0000000000008400000084000000840000008400000084000000840000008400
      00000000000000000000000000000000000000000000188C3900D6E7D600FFFF
      FF00F7FFF7008CD68C0084BD8400187B1800187B1800187B18004A944A00BDE7
      BD00FFFFFF00FFFFFF00218C39000000000000000000FF310000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF310000000000007B847B00FFFFFF00F7FFFF00D6F7
      E7004A7B5A00297B4A0010944200088C3900187B4A00CEFFEF00EFFFF700C6CE
      C60008100800C6CEC60000000000000000000000000000000000000000000000
      0000000000000000000084000000000000000000000000000000840000000000
      000000000000000000000000000000000000AD8C5A00108C2900E7E7E700FFFF
      FF008CCE8C007BBD7B00187B1800187B1800187B1800187B1800187B1800428C
      4200A5D6A500FFFFFF00218C39000000000000000000FF310000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF31000000000000848C8C00FFFFFF00EFF7FF00EFFF
      FF00E7FFF700CEFFE70021944A0010844200BDFFE700DEFFF700BDD6C600CED6
      C60000000000CECECE0000000000000000000000000000000000000000000000
      0000000000000000000084000000000000000000000000000000840000000000
      000000000000000000000000000000000000AD8C5A00188C3100EFEFEF006BC6
      6B0052AD5200187B1800187B180084B58400DEDEDE004A944A00187B1800187B
      1800106B100084CE8400218C39000000000000000000FF310000FF310000FF31
      0000FF310000FF310000FF310000FF310000FF310000FF310000FF310000FF31
      0000FF310000FF310000FF31000000000000848C8400F7FFFF00FFFFFF00F7FF
      FF00EFFFFF00DEFFF700317B5A00BDFFEF00D6FFF70000080000000800000000
      000000000000CEC6CE0000000000000000000000000000000000000000000000
      0000000000000000000084000000000000000000000000000000840000000000
      000000000000000000000000000000000000AD8C5200218C3900E7EFE70094B5
      9400187B1800187B180094C69400F7FFF700FFFFFF00E7E7E7009CBD9C00187B
      1800187B1800D6D6D600218C39000000000000000000FF310000FF310000FF31
      0000FF310000FF310000FF310000FF310000FF310000FF310000FF310000FF31
      0000FF310000FF310000FF310000000000007B848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFFFFF00CEF7EF00D6FFFF00DEFFEF007B8C8400F7F7FF000808
      1000D6CEDE00FFF7FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000000000000000
      00000000000000000000000000000000000000000000218C3900E7F7E700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00218C39000000000000000000FFCE9C00FF310000FF31
      0000FF310000FF310000FF310000FF310000FF310000FF310000FF310000FF31
      0000FF310000FF310000FFCE9C0000000000848C8C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7FFFF00EFFFFF00EFFFFF007384840000000800BDBD
      CE00FFFFFF00FFF7FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C8C4A00399C52008CA5840063AD
      63006BAD6B0073AD730084AD84007BAD7B006BAD6B0063AD630073AD730084AD
      840084AD84006BAD6B00218C3900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B8484008C8C8C009C848400947B
      7B00948C8400848C8400848484007B8484007B8C7B00738C8400C6CED600FFFF
      FF00FFF7FF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C8C4A00429C63004A944A00428C
      4200428C42004A8C4A004A8C4A004A8C4A004A8C4A00428C42004A8C4A004A8C
      4A004A8C4A004A8C4A00218C390000000000000000000000000000000000B5B5
      B500CECECE00CECECE00CECECE00CECECE00CECECE00B5B5B5009C9C9C000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000319CCE0063CEFF00319CCE009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF000000000000000000CE9C9C00CECE
      CE00FFCECE00FFFFFF00FFFFFF00FFFFCE00FFFFFF00CECEFF00FFCECE009CAD
      AD0084848400000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000319CCE0063CEFF00319CCE00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00000000009C9C9C00B5B5B500FFCE
      CE00FFFFFF00CEFFFF00FFCE9C00FF9C3100CECEFF00FF9C3100CE310000CE31
      0000B5B5B500848484000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008484840000009C0000009C0000009C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000319CCE009CFFFF009CFFFF00319C
      CE00319CCE00319CCE00319CCE00319CCE00000000009C9C9C00CE9C9C00CECE
      CE00FFCECE00FFFFFF00FFCE9C00FFCE6300FF9C3100CE310000FF3131009C9C
      CE00CE310000B5B5B5008484840000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00848484000000CE0000009C0000009C0000009C0000009C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063CEFF00319CCE00319CCE0063CEFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400000000008484840000000000319CCE00CEFFFF009CFFFF009CFF
      FF009CFFFF00CEFFFF00CEFFFF00CEFFFF00000000009C9C9C00B5B5B500FFCE
      CE00FFFFFF00CEFFFF00FFCE9C00FFFF0000FFCE3100FF633100CECEFF00FFFF
      FF00CE9C9C00CE3100008484840063313100FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000CE000000CE000000CE0000009C0000009C0000009C0000009C000000
      0000000000000000000000000000000000000000000000000000319CCE00319C
      CE00319CCE00319CCE00319CCE0063CEFF0063CEFF00319CCE00319CCE00319C
      CE00319CCE00319CCE0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000319CCE00CEFFFF00CEFF
      FF00CEFFFF00319CCE00319CCE00319CCE00000000009C9C9C00CE9C9C00CECE
      CE00FFCECE00FFFFFF00FFCE9C00FFCE3100FF9C3100FF9C3100FF633100FFFF
      FF00CECEFF00CE9C9C008484840063313100FFFFFF0000000000FFFFFF000000
      00000000FF000000CE000000CE000000CE0000009C0000009C0000009C00009C
      9C00000000000000000000000000000000000000000000000000319CCE009CFF
      FF00FFFFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0063CEFF0063CE
      FF0063CEFF00319CCE0000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000319CCE00319C
      CE00319CCE00000000000000000000000000000000009C9C9C00B5B5B500FFCE
      CE00FFFFFF00CEFFFF00FFCE9C00FF9C3100FFFFCE00FFFFFF00FFFFFF00CE00
      0000CE000000CE00000084848400633131000000000000000000000000000000
      00000000FF000000FF000000CE000000CE000000CE0000009C00009C9C0000CE
      CE00009C9C00000000000000000000000000000000000000000000000000319C
      CE009CFFFF00FFFFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0063CE
      FF00319CCE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C9C9C00CE9C9C00CECE
      CE00FFCECE00FFFFFF00FFFFFF00CECEFF00FFCE3100CECEFF00CEFFFF00CECE
      FF00FF000000CE00000084848400633131000000000000000000000000000000
      0000000000000000FF000000FF000000CE000000CE00009C9C0000CECE0000CE
      CE0000CECE00009C9C0000000000000000000000000000000000000000000000
      0000319CCE0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00319C
      CE000000000000000000000000000000000000000000319CCE0000639C000063
      9C0000639C0000639C0000639C0000639C0000639C0000639C00000000000000
      000000000000000000000000000000000000000000009C9C9C00B5B5B500FFCE
      CE00FFFFFF00CEFFFF00FFFFFF00FFFFFF00FFCE3100FF9C3100FF636300FF31
      3100CE000000CE00000084848400633131000000000000000000000000000000
      000000000000000000000000FF000000840000CECE0000FFFF0000FFFF0000CE
      CE0000CECE0000CECE00009C9C00000000000000000000000000000000000000
      0000319CCE0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00319C
      CE0000000000000000000000000000000000319CCE0063CEFF00319CCE009CFF
      FF0063CEFF0063CEFF0063CEFF0063CEFF00319CCE009CFFFF0000639C000000
      000000000000000000000000000000000000000000009C9C9C00CE9C9C00CECE
      CE00FFCECE00E7E7E700E7E7E700E7E7E700E7E7E700FF9C3100FF313100FF00
      0000FFCE6300CE00000084848400633131000000000000000000000000000000
      000000000000000000000000000000CECE0000FFFF00FFFFFF00C6C6C60000FF
      FF0000CECE0000CECE0000CECE00009C9C000000000000000000000000000000
      0000319CCE0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00319C
      CE0000000000000000000000000000000000319CCE0063CEFF00319CCE009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF0063CEFF009CFFFF0000639C000000
      000000000000000000000000000000000000000000009C9C9C009CADAD00CECE
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CECEFF00CECECE00CECE
      CE00CECECE00B5B5B50084848400633131000000000000000000000000000000
      00000000000000000000000000000000000000CECE0000FFFF00FFFFFF00C6C6
      C60000FFFF0000CECE00009C9C009C3100000000000000000000000000000000
      0000319CCE00FFFFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00319C
      CE0000000000000000000000000000000000319CCE0063CEFF00319CCE009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF0063CEFF009CFFFF0000639C000000
      000000000000000000000000000000000000000000009C9C9C00CEFFFF00636B
      7300313131006331310063313100636B73009C6363009C9C9C00CECECE00FFFF
      FF00FFCECE00B5B5B50084848400633131000000000000000000000000000000
      0000000000000000000000000000000000000000000000CECE0000FFFF00FFFF
      FF0000FFFF00009C9C00CE6300009C3100000000000000000000000000000000
      000063CEFF0063CEFF00FFFFFF0000FFFF0000FFFF0000FFFF0063CEFF0063CE
      FF0000000000000000000000000000000000319CCE0063CEFF00319CCE00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF009CFFFF0000008400000084000000
      840000008400000084000000000000000000000000009C9C9C00CEFFFF000063
      9C009C9CCE00CECEFF009C9CCE0063313100FFFFFF00CECE9C00CECE9C00636B
      7300B5B5B500CECECE0084848400633131000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000CECE0000FF
      FF0000CECE00CE630000CE630000CE6300000000000000000000000000000000
      000000000000319CCE009CFFFF00FFFFFF0000FFFF0000FFFF00319CCE000000
      000000000000000000000000000000000000319CCE009CFFFF009CFFFF00319C
      CE00319CCE00319CCE00319CCE00319CCE00319CCE00319CCE00000084000000
      84000000840000008400000000000000000000000000000000009C9C9C000063
      9C00FFFFFF00CECEFF00CECEFF000031630063313100FFFFFF00FFFFCE00CECE
      9C00633131009CADAD0084848400633131000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000CE
      CE00FF9C0000FF9C0000CE630000CE6300000000000000000000000000000000
      00000000000000000000319CCE00319CCE00319CCE00319CCE00000000000000
      000000000000000000000000000000000000319CCE00CEFFFF009CFFFF009CFF
      FF009CFFFF00CEFFFF00CEFFFF00CEFFFF0000639C0000000000000000000000
      8400000084000000840000008400000000000000000000000000000000009C9C
      9C0000639C00FFFFFF00003163000084840000CE630063313100FFFFFF006331
      3100003163009C6363009C636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C310000FF9C0000FF9C0000CE6300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000319CCE00CEFFFF00CEFF
      FF00CEFFFF00319CCE00319CCE00319CCE000000000000000000000000000000
      0000000084000000000000008400000084000000000000000000000000000000
      00000000000000639C009C63630000CECE00313131009C636300633131009C63
      63009C6363000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C310000FF9C0000FF9C00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000319CCE00319C
      CE00319CCE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000084000000000000000000000000000000
      00000000000063CECE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C3100009C310000CE6300009C310000CE6300009C3100000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF9C9C00FF9C9C00EFC6
      DE0000000000000000000000000000000000000000000000000000000000E7EF
      F700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000063CECE00009CCE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C310000CE6300009C310000CE6300009C3100009C3100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7E7E700FFCE
      CE00CE9C9C000000000000000000000000000000000000000000E7E7E700C6C6
      C6009C9C9C0084848400848484009C9C9C009CADAD00C6C6C600CECECE00E7EF
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063CECE00009CCE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C3100009C310000CE6300009C310000CE6300009C3100000000
      000000000000000000000000000000000000000000000000000000000000E7EF
      F700E7E7E700CECECE00CECECE00CECECE00E7E7E700CE9C9C00FF9C9C00EFC6
      DE00FFCECE00CE9C9C0000000000000000000000000000000000CECECE00CECE
      CE00CECE9C00CECE9C00CECE9C009C9C9C00848484006363630084848400B5B5
      B500E7E7E7000000000000000000000000000000000000000000000000000000
      0000000000000000000063CECE009CFFFF00009CCE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C9C009C3100009C3100009C3100009C3100009C9C9C000000
      0000000000000000000000000000000000000000000000000000E7EFF700E7E7
      E700B5B5B50084848400636B7300848484009C9C9C00E7E7E700CECECE00FF9C
      9C00EFC6DE00FFCECE00CE9C9C000000000000000000E7E7E700FFFFCE00F7EF
      BD00F7EFBD00CECE9C00EFC6DE00FFCE9C00F7EFBD00F7EFBD00848484006363
      63009C9C9C00E7E7E70000000000000000000000000000000000000000000000
      000063CECE00009CCE00009CCE00009CCE0063FFFF00009CCE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00FFCECE0063636300000000000000
      0000000000000000000000000000000000000000000000000000E7E7E7008484
      840084848400636B7300636B7300636363004A4A4A0084848400E7E7E700FFCE
      CE00CE9C9C00EFC6DE00FF9C9C000000000000000000FFCE9C00F7EFBD00F7EF
      BD00CECECE00EFC6DE00009C0000CECECE00CECECE00CECECE00FFFFCE00B5B5
      B500636B7300CECECE0000000000000000000000000000000000000000000000
      000063CECE009CFFFF0063FFFF0063FFFF0063FFFF0063FFFF00009CCE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00FFCECE0063636300000000000000
      00000000000000000000000000000000000000000000000000009CADAD008484
      84009C9C9C00B5B5B500B5B5B500C6C6C600848484004A4A4A0084848400E7E7
      E700CE9C9C00CE9C9C00FFCECE00CE9C9C0000000000FFCE9C00FFCE9C00E7E7
      E700EFC6DE00EFC6DE00009C0000009C0000009C0000009C00009CCE9C00F7EF
      BD0084848400B5B5B500E7EFF700000000000000000000000000000000000000
      00000000000063CECE009CFFFF0063FFFF00009CCE0063CECE0063CECE0063CE
      CE00000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00FFCECE0063636300000000000000
      00000000000000000000000000000000000000000000E7E7E700636363008484
      8400B5B5B500CECECE00CECECE00B5B5B500C6C6C60084848400636363009CAD
      AD00E7E7E700CE9C9C00E7E7E700FF9C9C00E7E7E700FFCE9C00E7E7E700E7E7
      E700EFC6DE00C6C6C600009C0000009C000063CE6300CEFFCE0031CE3100FFCE
      9C0084848400B5B5B500E7EFF700000000000000000000000000000000000000
      00000000000063CECE009CFFFF0063FFFF0063FFFF00009CCE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00FFCECE0063636300000000000000
      000000000000000000000000000000000000E7EFF7009CADAD004A4A4A006363
      63004A4A4A004A4A4A009C9C9C00CECECE00B5B5B5009C9C9C004A4A4A008484
      8400CECECE00CE9C9C0000000000FFCECE00F7EFBD00F7EFBD00FFFFFF00FFFF
      FF00CE9C9C00EFC6DE009CCE9C00CECE9C0031CE31009CCE9C009CCE9C00CECE
      9C009C9C9C009C9C9C00E7E7E70000000000000000000000000063CECE00009C
      CE00009CCE00009CCE00009CCE009CFFFF0063FFFF0063FFFF00009CCE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00FFFFFF00FFCECE0063636300000000000000
      000000000000000000000000000000000000C6C6C6004A4A4A004A4A4A004A4A
      4A00848484009C63630063636300B5B5B500CECECE00B5B5B50084848400636B
      7300CECECE00000000000000000000000000F7EFBD00FFFFCE00FFFFFF00EFC6
      DE00CE9C9C00EFC6DE00639C3100FFFFFF0063CE6300009C0000009C0000F7EF
      BD009C9C9C009C9C9C00E7E7E70000000000000000000000000063CECE009CFF
      FF009CFFFF0063FFFF0063FFFF0063FFFF0063FFFF0063FFFF0063FFFF00009C
      CE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063636300636363006363630063636300000000000000
      0000000000000000000000000000636363009C636300848484004A4A4A00636B
      73008484840084848400848484004A4A4A00CECECE00B5B5B500636B7300636B
      7300CECECE00000000000000000000000000F7EFBD00FFFFFF00FFFFFF00EFC6
      DE00EFC6DE00EFC6DE009CCE9C00009C0000319C3100009C0000009C0000F7EF
      BD00CECE9C0084848400E7E7E7000000000000000000000000000000000063CE
      CE009CFFFF009CFFFF0063FFFF0063FFFF00009CCE0063CECE0063CECE0063CE
      CE00000000000000000000000000000000000000000063636300636363000000
      000000000000636363009C9C9C009C9C9C009C9C9C009C9C9C00636363000000
      00000000000000000000636363006363630084848400C6C6C600313131008484
      8400CECECE009C9C9C00636B73004A4A4A00B5B5B5009CADAD00636B73008484
      8400CECECE00000000000000000000000000FFFFCE00FFFFCE00FFFFCE00FFFF
      FF00FFFFFF00E7EFF700E7E7E7009CCE9C009CCE9C0063CE6300009C0000FFFF
      CE00C6C6C60084848400CECECE000000000000000000000000000000000063CE
      CE009CFFFF009CFFFF009CFFFF0063FFFF0063FFFF00009CCE00000000000000
      0000000000000000000000000000000000009C9C9C009C9C9C009C9C9C006363
      6300636363009C9C9C00CECECE00CECECE00CECECE009C9C9C00636363006363
      63006363630063636300CECECE00636363009C9C9C00FFFFFF004A4A4A004A4A
      4A00FFFFFF00CECECE00636B7300636363009C9C9C009C9C9C00636B73009C9C
      9C00E7E7E700000000000000000000000000FFFFCE00FFFFCE00FFFFCE00FFFF
      CE00E7EFF700E7EFF700E7EFF700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFCE00636B7300CECECE00000000000000000000000000000000000000
      000063CECE009CFFFF009CFFFF009CFFFF0063FFFF0063FFFF00009CCE000000
      0000000000000000000000000000000000009C9C9C00FFFFFF00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE009C9C9C009C9C
      9C009C9C9C00CECECE006363630000000000C6C6C6009C9C9C00CECECE003131
      31004A4A4A00636B73004A4A4A00636B7300848484008484840063636300C6C6
      C600E7EFF700000000000000000000000000F7EFBD00F7EFBD00F7EFBD00E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7EFF700F7EFBD00FFFF
      CE00FFFFCE00636B7300CECECE00000000000000000000000000000000000000
      000063CECE009CFFFF009CFFFF009CFFFF0063FFFF0063FFFF0063FFFF00009C
      CE00000000000000000000000000000000009C9C9C00FFFFFF00CECECE00CECE
      CE00FFFFFF00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE009C9C9C000000000000000000000000009C9C9C009C6363004A4A
      4A00313131004A4A4A004A4A4A006363630063636300636B73009C9C9C00E7E7
      E7000000000000000000000000000000000000000000E7E7E700E7E7E7009CCE
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00E7EFF7009CCEFF00FFCE9C00FFCE
      9C00FFFFCE0084848400E7E7E700000000000000000000000000000000000000
      00000000000063CECE009CFFFF009CFFFF009CFFFF0063FFFF0063FFFF0063FF
      FF00009CCE000000000000000000000000009C9C9C00FFFFFF00FFFFFF009C9C
      9C009C9C9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C9C
      9C009C9C9C000000000000000000000000000000000000000000000000000000
      00009C9C9C0031313100313131004A4A4A00636363009C9C9C00E7E7E700E7EF
      F70000000000000000000000000000000000000000000000000000000000E7EF
      F7009CCEFF009CCEFF009CCEFF00CEFFFF00CEFFFF009CCEFF00FFCE9C00FFCE
      9C00FFCE9C00C6C6C600E7EFF700000000000000000000000000000000000000
      00000000000063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CE
      CE0063CECE0063CECE000000000000000000000000009C9C9C009C9C9C000000
      0000000000009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7E7E700C6C6C600C6C6C600E7E7E700E7EFF700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009CCEFF009CCEFF009CCEFF00F7EFBD00F7EF
      BD00E7E7E700E7EFF70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000319CCE00319CCE00319C
      CE0063CEFF0063CEFF0063CEFF0063CEFF0063CEFF0063CEFF0063CEFF0063CE
      FF0063CEFF0063CEFF0063CEFF0063CEFF0000000000CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C63000000000031313100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000008484840000000000000000000000
      00000000000000000000000000000000000063CEFF0063CEFF00319CCE00319C
      CE00319CCE0063CEFF0063CEFF0063CEFF0063CEFF0063CEFF0063CEFF0063CE
      FF0063CEFF0063CEFF0063CEFF0063CEFF0000000000CE9C6300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C63003131310063636300636363006363
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF0000000000000000008484840000000000000000000000
      00000000000000000000000000000000000063CEFF0063CEFF0063CEFF00009C
      0000008400000084000063CEFF0031639C0031639C0031639C0031639C00319C
      CE0063CEFF0063CEFF0063CEFF0031639C0000000000CE9C6300FFFFFF009C31
      00009C3100009C3100009C3100009C3100009C3100009C3100009C3100009C31
      00009C3100009C310000FFFFFF00CE9C6300000000009C9C9C00CECECE009C9C
      9C00636363006363630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
      00000000000000000000000000000000000063CEFF0063CEFF0063CEFF00009C
      000000FF00000084000063CEFF00319CCE00639CCE00639CCE00319CCE0063CE
      FF0063CEFF0063CEFF0063CEFF0063CEFF0000000000CE9C6300FFFFFF009C31
      0000CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C63009C310000FFFFFF00CE9C6300000000009C9C9C00CECECE00CECE
      CE009C9C9C009C9C9C0063636300636363000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000FFFFFF008484840084848400000000000000
      00000000000000000000000000000000000063CEFF0063CEFF0063CEFF00009C
      000000FF00000084000063CEFF0063CEFF00319CCE00319CCE0063CEFF0063CE
      FF0031639C0031639C0063CEFF0063CEFF0000000000CE9C6300FFFFFF009C31
      00009C3100009C3100009C3100009C3100009C3100009C3100009C3100009C31
      00009C3100009C310000FFFFFF00CE9C630000000000000000009C9C9C00CECE
      CE00CECECE009C9C9C009C9C9C009C9C9C006363630063636300000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      000000000000000000000000000063639C0063CEFF0063CEFF0063CEFF00009C
      000000FF000000FF00000084000063CEFF0063CEFF0063CEFF0063CEFF0063CE
      FF0063CEFF0063CEFF0063CEFF0063CEFF0000000000CE9C6300FFFFFF009C31
      0000CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C63009C310000FFFFFF00CE9C630000000000000000009C9C9C00E7E7
      E700CECECE00CECECE009C9C9C009C9C9C009C9C9C009C310000633100006331
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF000000
      0000FFFFFF000000000000000000C6C6C6000000000000000000000000000000
      0000000000000000000063639C00319CCE0063CEFF0063CEFF0063CEFF00009C
      000000FF000031CE310000FF00000084000063CEFF0063CEFF0063CEFF0063CE
      FF0063CEFF0063CEFF0063CEFF0063CEFF0000000000CE9C6300FFFFFF009C31
      00009C3100009C3100009C3100009C3100009C3100009C3100009C3100009C31
      00009C3100009C310000FFFFFF00CE9C63000000000000000000000000009C9C
      9C00E7E7E700CECECE00CECECE009C9C9C009C3100009C3100009C3100009C31
      00006331000000000000000000000000000084848400FFFFFF00000000000000
      0000FFFFFF0084848400C6C6C600FFFFFF008484840000000000FFFFFF008484
      84000000000063639C00319CCE0063CEFF00FFCE9C0063CE63000084000000FF
      000000FF0000009C000000FF000000FF0000009C0000FFCE9C00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C0000000000CE9C6300FFFFFF009C31
      0000CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C63009C310000FFFFFF00CE9C63000000000000000000000000009C9C
      9C00FFFFFF00E7E7E700CECECE009C3100009C3100009C3100009C3100009C31
      00009C3100006331000000000000000000008484840000000000000000000000
      0000848484000000000000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF0063639C00319CCE0063CEFF0000000000FFCE9C00009C000000FF0000009C
      000000FF000000840000009C000000FF0000009C0000FFCE9C00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C0000000000CE9C6300FFFFFF009C31
      00009C3100009C3100009C3100009C3100009C3100009C3100009C3100009C31
      00009C3100009C310000FFFFFF00CE9C63000000000000000000000000000000
      00009C9C9C00FFFFFF009C310000CE6331009C3100009C3100009C3100009C31
      00009C3100009C31000063310000000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000FFFFFF006363
      9C00319CCE0063CEFF000000000000000000FFCE9C00009C000000FF0000009C
      000000FF00000084000063CE6300009C000063CE6300FFCE9C00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C0000000000CE9C6300FFFFFF009C31
      0000CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C63009C310000FFFFFF00CE9C63000000000000000000000000000000
      00009C9C9C009C310000CE6331009C310000CE6331009C3100009C3100009C31
      00009C3100009C3100009C310000633100000000000000000000C6C6C600C6C6
      C6000000000000000000FFFFFF0000000000000000000000000063639C00319C
      CE0063CEFF00000000000000000000000000FFCE9C00009C000000FF0000009C
      000000FF000000840000FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C0000CE
      FF0000CEFF0000CEFF00FFCE9C00FFCE9C0000000000CE9C6300FFFFFF009C31
      00009C3100009C3100009C3100009C3100009C3100009C3100009C3100009C31
      00009C3100009C310000FFFFFF00CE9C63000000000000000000000000000000
      0000000000009C3100009C310000CE6331009C310000CE6331009C3100009C31
      00009C3100009C3100009C3100009C3100000000000084848400C6C6C600FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF000000000063639C00319CCE0063CE
      FF0000000000000000000000000000000000FFCE9C0063CE6300009C0000009C
      000000FF000000840000FFCE9C00FFCE9C00FFCE9C00FFCE9C0000CEFF0063FF
      FF0063FFFF0063FFFF0000CEFF00FFCE9C0000000000CE9C6300FFFFFF009C31
      0000CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C63009C310000FFFFFF00CE9C63000000000000000000000000000000
      0000000000009C3100009C3100009C310000CE6331009C310000CE6331009C31
      00009C3100009C3100009C3100009C9C9C000000000000000000848484008484
      84000000000000000000FFFFFF00FFFFFF0063639C00319CCE0063CEFF000000
      000000000000000000000000000000000000FFCE9C00FFCE9C00FFCE9C00009C
      000000FF000000840000FFCE9C00FFCE9C00FFCE9C00FFCE9C0000CEFF0063FF
      FF0063FFFF0063FFFF0000CEFF00FFCE9C0000000000CE9C6300FFFFFF009C31
      00009C3100009C3100009C3100009C3100009C3100009C3100009C3100009C31
      00009C3100009C310000FFFFFF00CE9C63000000000000000000000000000000
      000000000000000000009C3100009C3100009C310000CE6331009C310000CE63
      31009C3100009C3100009C9C9C009C9C9C000000000000000000000000000000
      000000000000000000000000000063639C00319CCE0063CEFF00000000000000
      000000000000000000000000000000000000FFCE9C00FFCE9C00FFCE9C0063CE
      6300009C000063CE6300FFCE9C00FFCE9C00FFCE9C00FFCE9C0000CEFF0063FF
      FF0063FFFF0063FFFF0000CEFF00FFCE9C0000000000CE9C6300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CE9C63000000000000000000000000000000
      00000000000000000000000000009C3100009C3100009C310000CE6331009C31
      00009C310000CECECE00CECECE009C9C9C000000000000000000000000000000
      0000000000000000000063639C00319CCE0063CEFF0000000000000000000000
      000000000000000000000000000000000000FFCE9C00FFCE9C00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C0000CE
      FF0000CEFF0000CEFF00FFCE9C00FFCE9C0000000000CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C6300CE9C
      6300CE9C6300CE9C6300CE9C6300CE9C63000000000000000000000000000000
      0000000000000000000000000000000000009C3100009C3100009C3100009C31
      0000E7E7E700E7E7E700CECECE00CECECE000000000000000000000000000000
      00000000000063639C00319CCE0063CEFF000000000000000000000000000000
      000000000000000000000000000000000000FFCE9C00FFCE9C00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C00FFCE
      9C00FFCE9C00FFCE9C00FFCE9C00FFCE9C000000000000000000000000000000
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
      2800000040000000800000000100010000000000000400000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000E39FFFFFFFFF0000E39FFFFFFFFF0000
      E39FE003FFFF0000FFFFC003FFFF0000E01FC003F80F0000C01FC003F80F0000
      CF8FC003F80F0000C94FC003F80F0000DFCFC003F80F0000C947C003F80F0000
      9FE7C003FDDF00008963C003FDDF0000FFF3C003FDDF0000FFF0C003FE3F0000
      FFF0FFFFFFFF0000FFF8FFFFFFFF0000FFFF8003FFFFFFFF80010003FFFF0001
      80010003FFFF000180010003FFFF000180010003F80F000180010003F80F0001
      80010003F80F000180010003F80F800180010003F80F800180010003F80F8001
      80010003FDDF000180010003FDDF000180010003FDDF000180010003FE3F8001
      80010003FFFF0001FFFF0003FFFF0001E01FA7FFFFFFFF00C00701FFFFFFFF00
      8003007FFFFFFF008001003FFC3FF5008000001FC003FF808000500FC003F7C7
      8000F007E007FFFF8000F803F00F803F8000FC01F00F001F8000FE00F00F001F
      8000FF00F00F001F8000FF80F00F00038000FFC0F81F0003C000FFE0FC3F0061
      E001FFF0FFFF80F4F807FFF8FFFFC7FEFBFFF81FFF8FE07FF9FFF81FFFC7C00F
      FCFFF81FE003C007FC7FF81FC0018003F03FFC3FC0018003F01FFC3FC0008001
      F80FFC3F80000001F83FFC3F00020001C01FFC3F00070001C00FFC3E00070001
      E00F981C00070001E03F000000070001F01F000100070001F00F0003800F8001
      F8070007F00FE001F803981FF83FFE03FFFFFFFFFCFF800080003FFFF87F0000
      80000FFFF07F0000800083FFE07F0000800080FFC03F00008000C03F803E0000
      8000C00F001C00008000E007000800008000E003000100008000F00180030000
      8000F000800700008000F800800F00008000F800C01F00008000FC00E03F0000
      8000FE00F07F00008000FF00F8FF0000FFFFFDFFFFFFF81FC007E0FFFFFFF81F
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
    Left = 64
    Top = 291
    ReportForm = {
      190000009D000000190000000001000100FFFFFFFFFF09000000340800009A0B
      00000000000000000000000000000000000000FFFF00000000FFFF0000000000
      000000000500506167653100030400466F726D000F0000FFDC00000078000000
      7C0100002C01000004000000FEFEFF000000000000000000000000FDFF010000
      0000FC0000000000000000000000000000000058001E3C76C93F8EE440DA40A7
      CD9E90E440}
  end
  object frDBDataSet: TfrDBDataSet
    DataSet = MData_TenderCoeList
    Left = 27
    Top = 291
  end
  object MData_TenderCoeList: TdxMemData
    Indexes = <>
    SortOptions = []
    BeforePost = MData_TenderCoeListBeforePost
    Left = 60
    Top = 183
  end
  object DS_Mdata_TenderCoeList: TDataSource
    DataSet = MData_TenderCoeList
    Left = 28
    Top = 183
  end
  object DS_Mdata_TenderCoe: TDataSource
    DataSet = MData_TenderCoe
    Left = 28
    Top = 151
  end
  object MData_TenderCoe: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 60
    Top = 151
  end
  object actionList: TActionList
    Images = ImageList
    Left = 28
    Top = 376
    object Act_SetOpen: TAction
      Category = #25968#25454#25805#20316
      Caption = 'Act_SetOpen'
      ImageIndex = 20
      OnExecute = Act_SetOpenExecute
    end
    object Act_SetClose: TAction
      Category = #25968#25454#25805#20316
      Caption = 'Act_SetClose'
      OnExecute = Act_SetCloseExecute
    end
    object Act_Set_MaxNum: TAction
      Category = #25968#25454#25805#20316
      Caption = 'Act_Set_MaxNum'
      OnExecute = Act_Set_MaxNumExecute
    end
    object Act_Set_MaxID: TAction
      Category = #25968#25454#25805#20316
      Caption = 'Act_Set_MaxID'
      OnExecute = Act_Set_MaxIDExecute
    end
    object Act_App: TAction
      Category = #25968#25454#32500#25252
      Caption = #26032#22686'[&A]'
      ImageIndex = 0
      OnExecute = Act_AppExecute
    end
    object Act_Edit: TAction
      Category = #25968#25454#32500#25252
      Caption = #20462#25913'[&E]'
      ImageIndex = 1
      OnExecute = Act_EditExecute
    end
    object Act_Status: TAction
      Category = #26435#38480
      Caption = #26435#38480#35774#32622
      ImageIndex = 13
      OnExecute = Act_StatusExecute
    end
    object Act_Out: TAction
      Category = #25968#25454#32500#25252
      Caption = #23548#20986'[&O]'
      ImageIndex = 23
    end
    object Act_Del: TAction
      Category = #25968#25454#32500#25252
      Caption = #21024#38500'[&D]'
      ImageIndex = 2
      OnExecute = Act_DelExecute
    end
    object Act_Submit: TAction
      Category = #25968#25454#32500#25252
      Caption = #25552#20132'[&S]'
      ImageIndex = 10
      Visible = False
      OnExecute = Act_SubmitExecute
    end
    object Act_Ref_Write: TAction
      Category = #21047#26032
      Caption = #21047#26032'[&R]'
      ImageIndex = 21
      OnExecute = Act_Ref_WriteExecute
    end
    object Act_Check: TAction
      Category = #25968#25454#32500#25252
      Caption = #26657#23545'[&C]'
      ImageIndex = 12
      Visible = False
      OnExecute = Act_CheckExecute
    end
    object Act_Audit: TAction
      Category = #25968#25454#32500#25252
      Caption = #23457#26680'[&A]'
      ImageIndex = 22
      Visible = False
      OnExecute = Act_AuditExecute
    end
    object Act_PushDown: TAction
      Category = #25968#25454#32500#25252
      Caption = #19979#25512'[&P]'
      ImageIndex = 24
      Visible = False
      OnExecute = Act_PushDownExecute
    end
    object Act_Ref_Item: TAction
      Category = #21047#26032
      Caption = #21047#26032'[&R]'
      ImageIndex = 21
      OnExecute = Act_Ref_ItemExecute
    end
    object Act_Ref_PlanTender: TAction
      Category = #25968#25454#32500#25252
      Caption = #21047#26032'[&R]'
      ImageIndex = 21
      OnExecute = Act_Ref_PlanTenderExecute
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
    object Act_TS_Item: TAction
      Category = #39029#36873#39033
      Caption = 'Act_TS_Item'
      OnExecute = Act_TS_ItemExecute
    end
    object Act_TS_Write: TAction
      Category = #39029#36873#39033
      Caption = 'Act_TS_Write'
      OnExecute = Act_TS_WriteExecute
    end
  end
  object MData_PlanTenderList: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 59
    Top = 254
    object MData_PlanTenderListth: TStringField
      FieldName = 'th'
    end
    object MData_PlanTenderListmc: TStringField
      FieldName = 'mc'
    end
    object MData_PlanTenderListgg: TStringField
      FieldName = 'gg'
    end
    object MData_PlanTenderListFSumQry: TIntegerField
      FieldName = 'FSumQry'
    end
    object MData_PlanTenderListFTakeDemand: TStringField
      FieldName = 'FTakeDemand'
    end
    object MData_PlanTenderListFTakeListReMark: TStringField
      FieldName = 'FTakeListReMark'
    end
    object MData_PlanTenderListFSumSuttle: TFloatField
      FieldName = 'FSumSuttle'
    end
    object MData_PlanTenderListFName: TStringField
      FieldName = 'FName'
    end
    object MData_PlanTenderListFModel: TStringField
      FieldName = 'FModel'
    end
    object MData_PlanTenderListUnitName: TStringField
      FieldName = 'UnitName'
    end
    object MData_PlanTenderListFNumber: TStringField
      FieldName = 'FNumber'
    end
    object MData_PlanTenderListFk3Name: TStringField
      FieldName = 'Fk3Name'
    end
    object MData_PlanTenderListFK3Model: TStringField
      FieldName = 'FK3Model'
    end
    object MData_PlanTenderListFOrderNoQry: TIntegerField
      FieldName = 'FOrderNoQry'
    end
  end
  object DS_Mdata_PlanTenderList: TDataSource
    DataSet = MData_PlanTenderList
    Left = 27
    Top = 254
  end
  object DS_Mdata_PlanTender: TDataSource
    DataSet = MData_PlanTender
    Left = 27
    Top = 214
  end
  object MData_PlanTender: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 59
    Top = 222
    object MData_PlanTenderFTakeID: TIntegerField
      FieldName = 'FTakeID'
    end
    object MData_PlanTenderFTakeDate: TDateField
      FieldName = 'FTakeDate'
    end
    object MData_PlanTenderFItemListId: TIntegerField
      FieldName = 'FItemListId'
    end
    object MData_PlanTenderFBranchFileNo: TStringField
      FieldName = 'FBranchFileNo'
    end
    object MData_PlanTenderFTakeWrite: TStringField
      FieldName = 'FTakeWrite'
    end
    object MData_PlanTenderFTakeWriteDate: TDateTimeField
      FieldName = 'FTakeWriteDate'
    end
    object MData_PlanTenderFItemNumber: TStringField
      FieldName = 'FItemNumber'
    end
    object MData_PlanTenderFPlanTenderDate: TDateField
      FieldName = 'FPlanTenderDate'
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 32
    Top = 329
    object N2: TMenuItem
      Caption = #36873#25321#20379#24212#21830
      OnClick = N2Click
    end
    object N1: TMenuItem
      Caption = #20379#24212#21830#21015#34920
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
