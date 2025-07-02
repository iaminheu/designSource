inherited Frm_DesignPayMent: TFrm_DesignPayMent
  Left = 231
  Top = 0
  Caption = 'Frm_DesignPayMent'
  ClientHeight = 704
  ClientWidth = 965
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image: TImage
    Width = 965
  end
  inherited L_title: TLabel
    Left = 26
    Top = 2
    Width = 1183
    Caption = #36890#29992#25968#25454#30331#35760
  end
  inherited P_back: TPanel
    Width = 965
    Height = 683
    inherited P_main: TPanel
      Width = 959
      Height = 677
      inherited Panel_down: TPanel
        Top = 666
        Width = 957
        Height = 9
        Caption = #36873#39033
        Visible = False
        inherited Bevel_bass: TBevel
          Width = 957
        end
      end
      object PC_1: TRzPageControl
        Left = 0
        Top = 0
        Width = 957
        Height = 666
        ActivePage = TS_PayMent
        Align = alClient
        TabIndex = 0
        TabOrder = 1
        TabOrientation = toBottom
        TabStyle = tsDoubleSlant
        FixedDimension = 19
        object TS_PayMent: TRzTabSheet
          Color = 14935011
          Caption = #20184#27454#30003#35831
          object ToolBar_PayMent: TToolBar
            Left = 0
            Top = 0
            Width = 955
            Height = 35
            AutoSize = True
            ButtonHeight = 35
            ButtonWidth = 55
            Caption = 'ToolBar_PatMent'
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
            object TB_K3: TToolButton
              Left = 371
              Top = 0
              AutoSize = True
              Caption = #23548#20837'K3'
              ImageIndex = 24
              OnClick = Act_K3Execute
            end
            object ToolButton14: TToolButton
              Left = 418
              Top = 0
              Width = 8
              Caption = 'ToolButton5'
              Enabled = False
              ImageIndex = 4
              Style = tbsSeparator
            end
            object TB_Print: TToolButton
              Left = 426
              Top = 0
              Cursor = crHandPoint
              AutoSize = True
              Caption = #25171#21360'[&P]'
              ImageIndex = 4
            end
            object ToolButton17: TToolButton
              Left = 479
              Top = 0
              Width = 8
              Caption = 'ToolButton1'
              Enabled = False
              ImageIndex = 9
              Style = tbsSeparator
            end
            object TB_EXIT: TToolButton
              Left = 487
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
            Width = 217
            Height = 610
            Color = 14935011
            HotSpotVisible = True
            SizeBarWidth = 7
            TabOrder = 1
            VisualStyle = vsGradient
            object PC_Tree: TPageControl
              Left = 0
              Top = 0
              Width = 209
              Height = 610
              ActivePage = TS_Item
              Align = alClient
              MultiLine = True
              TabOrder = 0
              object TS_Item: TTabSheet
                Caption = #25353#26085#26399
                object MyTreeView_Item: TTreeView
                  Left = 0
                  Top = 29
                  Width = 201
                  Height = 553
                  Align = alClient
                  Ctl3D = False
                  Indent = 19
                  ParentCtl3D = False
                  TabOrder = 0
                  OnChange = MyTreeView_ItemChange
                  OnExpanding = MyTreeView_ItemExpanding
                end
                object ToolBar4: TToolBar
                  Left = 0
                  Top = 0
                  Width = 201
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
                Caption = #25353#22635#21333
                ImageIndex = 1
                object MyTreeView_Write: TTreeView
                  Left = 0
                  Top = 29
                  Width = 201
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
                  Width = 201
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
            Left = 217
            Top = 35
            Width = 738
            Height = 610
            Align = alClient
            Caption = 'Panel1'
            TabOrder = 2
            object PageControl1: TPageControl
              Left = 1
              Top = 1
              Width = 736
              Height = 216
              ActivePage = TabSheet1
              Align = alClient
              TabOrder = 0
              object TabSheet1: TTabSheet
                Caption = #20027#34920
                object cxGrid_PayMent: TcxGrid
                  Left = 0
                  Top = 0
                  Width = 728
                  Height = 188
                  Align = alClient
                  PopupMenu = PM
                  TabOrder = 0
                  OnContextPopup = cxGrid_PayMentContextPopup
                  object cxGV_PayMent: TcxGridDBTableView
                    DataController.DataSource = DS_Mdata_PayMent
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <
                      item
                        Format = #23567#35745#65306',0.00'
                        Kind = skSum
                        FieldName = 'FPayMentSumAmount'
                        Column = FPayMentSumAmount_PayMent
                      end
                      item
                        Format = #23567#35745#65306',0.00'
                        Kind = skSum
                        FieldName = 'FOrderSumAmount'
                        Column = FOrderSumAmount_PayMent
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
                    OnCellClick = cxGV_PayMentCellClick
                    OnSelectionChanged = cxGV_PayMentSelectionChanged
                    OptionsData.CancelOnExit = False
                    OptionsData.DeletingConfirmation = False
                    OptionsData.Editing = False
                    OptionsSelection.MultiSelect = True
                    OptionsView.Navigator = True
                    OptionsView.Footer = True
                    OptionsView.GroupByBox = False
                    object FPayMentNum_PayMent: TcxGridDBColumn
                      Caption = #20184#27454#30003#35831#21333#21495
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      SortOrder = soAscending
                      Width = 84
                      DataBinding.FieldName = 'FPayMentNum'
                    end
                    object FPayMentDate_PayMent: TcxGridDBColumn
                      Caption = #20184#27454#30003#35831#26085#26399
                      PropertiesClassName = 'TcxDateEditProperties'
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 85
                      DataBinding.FieldName = 'FPayMentDate'
                    end
                    object FPayMentStatusNotes_PayMent: TcxGridDBColumn
                      Caption = #21333#25454#29366#24577
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 62
                      DataBinding.FieldName = 'FPayMentStatusNotes'
                    end
                    object FPayMentStatus_PayMent: TcxGridDBColumn
                      Caption = #29366#24577
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 41
                      DataBinding.FieldName = 'FPayMentStatus'
                    end
                    object FPayMentSumAmount_PayMent: TcxGridDBColumn
                      Caption = #20184#27454#21333#37329#39069
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taRightJustify
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 115
                      DataBinding.FieldName = 'FPayMentSumAmount'
                    end
                    object FOrderSumAmount_PayMent: TcxGridDBColumn
                      Caption = #37319#36141#21333#37329#39069
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DisplayFormat = ',0.00;-,0.00'
                      Properties.ValidateOnEnter = True
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 115
                      DataBinding.FieldName = 'FOrderSumAmount'
                    end
                    object cxGridDBColumn22_PayMent: TcxGridDBColumn
                      Caption = #24050#20184#37329#39069
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DisplayFormat = ',0.00;-,0.00'
                      Properties.ValidateOnEnter = True
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 112
                    end
                    object FPayMentReMark_PayMent: TcxGridDBColumn
                      Caption = #20184#27454#30003#35831#21333#22791#27880
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 224
                      DataBinding.FieldName = 'FPayMentReMark'
                    end
                    object FPayMentWrite_PayMent: TcxGridDBColumn
                      Caption = #22635'    '#21333
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 41
                      DataBinding.FieldName = 'FPayMentWrite'
                    end
                    object FPayMentWriteDate_PayMent: TcxGridDBColumn
                      Caption = #22635#21333#26085#26399
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 83
                      DataBinding.FieldName = 'FPayMentWriteDate'
                    end
                    object FPayMentSubmitDate_PayMent: TcxGridDBColumn
                      Caption = #25552#20132#26085#26399
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 80
                      DataBinding.FieldName = 'FPayMentSubmitDate'
                    end
                    object FPayMentCheck_PayMent: TcxGridDBColumn
                      Caption = #26657'    '#23545
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 41
                      DataBinding.FieldName = 'FPayMentCheck'
                    end
                    object FPayMentCheckDate_PayMent: TcxGridDBColumn
                      Caption = #26657#23545#26085#26399
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 76
                      DataBinding.FieldName = 'FPayMentCheckDate'
                    end
                    object FPayMentAudit_PayMent: TcxGridDBColumn
                      Caption = #23457'    '#26680
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 41
                      DataBinding.FieldName = 'FPayMentAudit'
                    end
                    object FPayMentAuditDate_PayMent: TcxGridDBColumn
                      Caption = #23457#26680#26085#26399
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 71
                      DataBinding.FieldName = 'FPayMentAuditDate'
                    end
                    object FPayMentPushDown_PayMent: TcxGridDBColumn
                      Caption = #25209'    '#20934
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 59
                      DataBinding.FieldName = 'FPayMentPushDown'
                    end
                    object FPayMentPushDownDate_PayMent: TcxGridDBColumn
                      Caption = #25209#20934#26085#26399
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 108
                      DataBinding.FieldName = 'FPayMentPushDownDate'
                    end
                    object FItem3003Name_PayMent: TcxGridDBColumn
                      Caption = #29983#20135#25104#26412#23545#35937
                      PropertiesClassName = 'TcxButtonEditProperties'
                      Properties.Buttons = <
                        item
                          Default = True
                          Kind = bkEllipsis
                        end>
                      Properties.OnButtonClick = FItem3003Name_MPropertiesButtonClick
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 187
                      DataBinding.FieldName = 'FItem3003Name'
                    end
                    object FK3BillNo_PayMent: TcxGridDBColumn
                      Caption = 'K3'#21333#25454#21495
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      DataBinding.FieldName = 'FK3BillNo'
                    end
                    object FPayMentID_PayMent: TcxGridDBColumn
                      Caption = 'FPayMentID'
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 65
                      DataBinding.FieldName = 'FOrderID'
                    end
                    object FItem3003_PayMent: TcxGridDBColumn
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 55
                      DataBinding.FieldName = 'FItem3003'
                    end
                    object FPayMentNo_PayMent: TcxGridDBColumn
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 51
                      DataBinding.FieldName = 'FPayMentNo'
                    end
                  end
                  object cxGL_PayMent: TcxGridLevel
                    GridView = cxGV_PayMent
                  end
                end
              end
            end
            object RzSizePanel3: TRzSizePanel
              Left = 1
              Top = 217
              Width = 736
              Height = 392
              Align = alBottom
              Color = 14935011
              HotSpotVisible = True
              SizeBarWidth = 7
              TabOrder = 1
              VisualStyle = vsGradient
              object PageControl2: TPageControl
                Left = 0
                Top = 8
                Width = 736
                Height = 384
                ActivePage = TabSheet3
                Align = alClient
                MultiLine = True
                TabOrder = 0
                object TabSheet3: TTabSheet
                  Caption = #38468#34920
                  object TBar_Sel: TToolBar
                    Left = 0
                    Top = 0
                    Width = 728
                    Height = 29
                    AutoSize = True
                    ButtonHeight = 25
                    ButtonWidth = 161
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
                  object cxGrid_PayMentList: TcxGrid
                    Left = 0
                    Top = 29
                    Width = 728
                    Height = 278
                    Align = alClient
                    PopupMenu = PM
                    TabOrder = 1
                    OnContextPopup = cxGrid_PayMentListContextPopup
                    object cxGV_PayMentList: TcxGridDBTableView
                      DataController.DataSource = DS_Mdata_PayMentList
                      DataController.Summary.DefaultGroupSummaryItems = <>
                      DataController.Summary.FooterSummaryItems = <
                        item
                          Format = #23567#35745#65306',0.00'
                          Kind = skSum
                          FieldName = 'FPayMentAmount'
                          Column = FPayMentAmount_PayMentList
                        end
                        item
                          Format = #23567#35745#65306',0.00'
                          Kind = skSum
                          FieldName = 'FOrderSumAmount'
                          Column = FOrderSumAmount_PayMentList
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
                      OptionsData.CancelOnExit = False
                      OptionsData.DeletingConfirmation = False
                      OptionsData.Editing = False
                      OptionsSelection.MultiSelect = True
                      OptionsView.Navigator = True
                      OptionsView.Footer = True
                      OptionsView.GroupByBox = False
                      object FPayMentNum_PayMentList: TcxGridDBColumn
                        Caption = #20184#27454#30003#35831#21333#21495
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 78
                        DataBinding.FieldName = 'FPayMentNum'
                      end
                      object FPayMentListNum_PayMentList: TcxGridDBColumn
                        Caption = #24207#21495
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        SortOrder = soAscending
                        Width = 42
                        DataBinding.FieldName = 'FPayMentListNum'
                      end
                      object FOrderNum_PayMentList: TcxGridDBColumn
                        Caption = #37319#36141#35746#21333#21495
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 84
                        DataBinding.FieldName = 'FOrderNum'
                      end
                      object FOrderDate_PayMentList: TcxGridDBColumn
                        Caption = #37319#36141#35746#21333#26085#26399
                        PropertiesClassName = 'TcxDateEditProperties'
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 85
                        DataBinding.FieldName = 'FOrderDate'
                      end
                      object FSupplierName_PayMentList: TcxGridDBColumn
                        Caption = #20379#24212#21830
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 147
                        DataBinding.FieldName = 'FSupplierName'
                      end
                      object FPayMentAmount_PayMentList: TcxGridDBColumn
                        Caption = #20184#27454#37329#39069
                        PropertiesClassName = 'TcxCurrencyEditProperties'
                        Properties.DisplayFormat = ',0.00;-,0.00'
                        Properties.ValidateOnEnter = True
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 118
                        DataBinding.FieldName = 'FPayMentAmount'
                      end
                      object FOrderSumAmount_PayMentList: TcxGridDBColumn
                        Caption = #37319#36141#21333#37329#39069
                        PropertiesClassName = 'TcxCurrencyEditProperties'
                        Properties.DisplayFormat = ',0.00;-,0.00'
                        Properties.ValidateOnEnter = True
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 112
                        DataBinding.FieldName = 'FOrderSumAmount'
                      end
                      object FOrderStatusNotes_PayMentList: TcxGridDBColumn
                        Caption = #21333#25454#29366#24577
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 62
                        DataBinding.FieldName = 'FOrderStatusNotes'
                      end
                      object FOrderStatus_PayMentList: TcxGridDBColumn
                        Caption = #29366#24577
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 41
                        DataBinding.FieldName = 'FOrderStatus'
                      end
                      object FPayMentMode_PayMentList: TcxGridDBColumn
                        Caption = #20184#27454#26041#24335
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 62
                        DataBinding.FieldName = 'FPayMentMode'
                      end
                      object FBranchItemNumber_PayMentList: TcxGridDBColumn
                        Caption = #22270#21495
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 60
                        DataBinding.FieldName = 'FBranchItemNumber'
                      end
                      object FClientShortName_PayMentList: TcxGridDBColumn
                        Caption = #39033#30446#21517#31216
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 197
                        DataBinding.FieldName = 'FClientShortName'
                      end
                      object FPrecastDate_PayMentList: TcxGridDBColumn
                        Caption = #39044#35745#21040#36135#26085#26399
                        PropertiesClassName = 'TcxDateEditProperties'
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 77
                        DataBinding.FieldName = 'FPrecastDate'
                      end
                      object FFactDate_PayMentList: TcxGridDBColumn
                        Caption = #23454#38469#21040#36135#26085#26399
                        PropertiesClassName = 'TcxDateEditProperties'
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 77
                        DataBinding.FieldName = 'FFactDate'
                      end
                      object FInvoice_PayMentList: TcxGridDBColumn
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
                        Width = 64
                        DataBinding.FieldName = 'FInvoice'
                      end
                      object FInvoiceStatus_PayMentList: TcxGridDBColumn
                        Caption = #21457#31080#26680#38144#29366#24577
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 76
                        DataBinding.FieldName = 'FInvoiceStatus'
                      end
                      object FOrderReMark_PayMentList: TcxGridDBColumn
                        Caption = #37319#36141#35746#21333#22791#27880
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 224
                        DataBinding.FieldName = 'FOrderReMark'
                      end
                      object cxGV_PayMentListDBColumn1_PayMentList: TcxGridDBColumn
                      end
                      object FOrderWrite_PayMentList: TcxGridDBColumn
                        Caption = #22635'    '#21333
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 41
                        DataBinding.FieldName = 'FOrderWrite'
                      end
                      object FOrderWriteDate_PayMentList: TcxGridDBColumn
                        Caption = #22635#21333#26085#26399
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 83
                        DataBinding.FieldName = 'FOrderWriteDate'
                      end
                      object FOrderSubmitDate_PayMentList: TcxGridDBColumn
                        Caption = #25552#20132#26085#26399
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 80
                        DataBinding.FieldName = 'FOrderSubmitDate'
                      end
                      object FOrderCheck_PayMentList: TcxGridDBColumn
                        Caption = #26657'    '#23545
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 41
                        DataBinding.FieldName = 'FOrderCheck'
                      end
                      object FOrderCheckDate_PayMentList: TcxGridDBColumn
                        Caption = #26657#23545#26085#26399
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 76
                        DataBinding.FieldName = 'FOrderCheckDate'
                      end
                      object FOrderAudit_PayMentList: TcxGridDBColumn
                        Caption = #23457'    '#26680
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 41
                        DataBinding.FieldName = 'FOrderAudit'
                      end
                      object FOrderAuditDate_PayMentList: TcxGridDBColumn
                        Caption = #23457#26680#26085#26399
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 71
                        DataBinding.FieldName = 'FOrderAuditDate'
                      end
                      object FOrderPushDown_PayMentList: TcxGridDBColumn
                        Caption = #25209'    '#20934
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 59
                        DataBinding.FieldName = 'FOrderPushDown'
                      end
                      object FOrderPushDownDate_PayMentList: TcxGridDBColumn
                        Caption = #25209#20934#26085#26399
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 108
                        DataBinding.FieldName = 'FOrderPushDownDate'
                      end
                      object FItem3003Name_PayMentList: TcxGridDBColumn
                        Caption = #29983#20135#25104#26412#23545#35937
                        PropertiesClassName = 'TcxButtonEditProperties'
                        Properties.Buttons = <
                          item
                            Default = True
                            Kind = bkEllipsis
                          end>
                        Properties.OnButtonClick = FItem3003Name_MPropertiesButtonClick
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 187
                        DataBinding.FieldName = 'FItem3003Name'
                      end
                      object FK3BillNo_PayMentList: TcxGridDBColumn
                        Caption = 'K3'#21333#25454#21495
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        DataBinding.FieldName = 'FK3BillNo'
                      end
                      object FOrderID_PayMentList: TcxGridDBColumn
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 65
                        DataBinding.FieldName = 'FOrderID'
                      end
                      object FItem3003_PayMentList: TcxGridDBColumn
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 55
                        DataBinding.FieldName = 'FItem3003'
                      end
                      object FOrderNo_PayMentList: TcxGridDBColumn
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 51
                        DataBinding.FieldName = 'FOrderNo'
                      end
                      object FSupplierID_PayMentList: TcxGridDBColumn
                        Options.Editing = False
                        Options.Filtering = False
                        DataBinding.FieldName = 'FSupplierID'
                      end
                    end
                    object cxGL_PayMentList: TcxGridLevel
                      GridView = cxGV_PayMentList
                    end
                  end
                  object ToolBar_Save: TPanel
                    Left = 0
                    Top = 307
                    Width = 728
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
        object TS_Order: TRzTabSheet
          Color = 14935011
          Caption = #37319#36141#35746#21333
          object Panel1: TPanel
            Left = 229
            Top = 0
            Width = 726
            Height = 645
            Align = alClient
            Caption = 'Panel1'
            TabOrder = 1
            object PageControl3: TPageControl
              Left = 1
              Top = 36
              Width = 724
              Height = 180
              ActivePage = TabSheet5
              Align = alClient
              TabOrder = 0
              object TabSheet5: TTabSheet
                Caption = #20027#34920#20449#24687
                object cxGrid_Order: TcxGrid
                  Left = 0
                  Top = 0
                  Width = 716
                  Height = 152
                  Align = alClient
                  PopupMenu = PM
                  TabOrder = 0
                  OnContextPopup = cxGrid_OrderContextPopup
                  object cxGV_Order: TcxGridDBTableView
                    DataController.DataSource = DS_Mdata_Order
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
                        Column = FOrdersumAmount_Order
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
                    OnCellClick = cxGV_OrderCellClick
                    OnSelectionChanged = cxGV_OrderSelectionChanged
                    OptionsData.CancelOnExit = False
                    OptionsData.DeletingConfirmation = False
                    OptionsData.Editing = False
                    OptionsSelection.MultiSelect = True
                    OptionsView.Navigator = True
                    OptionsView.Footer = True
                    OptionsView.GroupByBox = False
                    object FOrderID_Order: TcxGridDBColumn
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 65
                      DataBinding.FieldName = 'FOrderID'
                    end
                    object FOrderNum_Order: TcxGridDBColumn
                      Caption = #37319#36141#35746#21333#21495
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 84
                      DataBinding.FieldName = 'FOrderNum'
                    end
                    object FOrderDate_Order: TcxGridDBColumn
                      Caption = #37319#36141#35746#21333#26085#26399
                      PropertiesClassName = 'TcxDateEditProperties'
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 85
                      DataBinding.FieldName = 'FOrderDate'
                    end
                    object FOrderStatusNotes_Order: TcxGridDBColumn
                      Caption = #21333#25454#29366#24577
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 62
                      DataBinding.FieldName = 'FOrderStatusNotes'
                    end
                    object FOrderStatus_Order: TcxGridDBColumn
                      Caption = #29366#24577
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 41
                      DataBinding.FieldName = 'FOrderStatus'
                    end
                    object FSupplierName_Order: TcxGridDBColumn
                      Caption = #20379#24212#21830
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taRightJustify
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 120
                      DataBinding.FieldName = 'FSupplierName'
                    end
                    object FPayMentMode_Order: TcxGridDBColumn
                      Caption = #20184#27454#26041#24335
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 53
                      DataBinding.FieldName = 'FPayMentMode'
                    end
                    object FBranchItemNumber_Order: TcxGridDBColumn
                      Caption = #22270#21495
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taRightJustify
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 48
                      DataBinding.FieldName = 'FBranchItemNumber'
                    end
                    object FClientShortName_Order: TcxGridDBColumn
                      Caption = #39033#30446#21517#31216
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 122
                      DataBinding.FieldName = 'FClientShortName'
                    end
                    object FPrecastDate_Order: TcxGridDBColumn
                      Caption = #39044#35745#21040#36135#26085#26399
                      PropertiesClassName = 'TcxDateEditProperties'
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 77
                      DataBinding.FieldName = 'FPrecastDate'
                    end
                    object FFactDate_Order: TcxGridDBColumn
                      Caption = #23454#38469#21040#36135#26085#26399
                      PropertiesClassName = 'TcxDateEditProperties'
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 77
                      DataBinding.FieldName = 'FFactDate'
                    end
                    object FInvoice_Order: TcxGridDBColumn
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
                      Width = 64
                      DataBinding.FieldName = 'FInvoice'
                    end
                    object FInvoiceStatus_Order: TcxGridDBColumn
                      Caption = #21457#31080#26680#38144#29366#24577
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 76
                      DataBinding.FieldName = 'FInvoiceStatus'
                    end
                    object FOrdersumAmount_Order: TcxGridDBColumn
                      Caption = #21333#25454#37329#39069
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DisplayFormat = ',0.00;-,0.00'
                      Properties.ValidateOnEnter = True
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 125
                      DataBinding.FieldName = 'FOrdersumAmount'
                    end
                    object cxGridDBColumn10_Order: TcxGridDBColumn
                      Caption = #24050#20184#37329#39069
                      PropertiesClassName = 'TcxCurrencyEditProperties'
                      Properties.DisplayFormat = ',0.00;-,0.00'
                      Properties.ValidateOnEnter = True
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 106
                    end
                    object FOrderReMark_Order: TcxGridDBColumn
                      Caption = #37319#36141#35746#21333#22791#27880
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      SortOrder = soAscending
                      Width = 224
                      DataBinding.FieldName = 'FOrderReMark'
                    end
                    object FOrderWrite_Order: TcxGridDBColumn
                      Caption = #22635'    '#21333
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 41
                      DataBinding.FieldName = 'FOrderWrite'
                    end
                    object FOrderWriteDate_Order: TcxGridDBColumn
                      Caption = #22635#21333#26085#26399
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 83
                      DataBinding.FieldName = 'FOrderWriteDate'
                    end
                    object FOrderSubmitDate_Order: TcxGridDBColumn
                      Caption = #25552#20132#26085#26399
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 80
                      DataBinding.FieldName = 'FOrderSubmitDate'
                    end
                    object FOrderCheck_Order: TcxGridDBColumn
                      Caption = #26657'    '#23545
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 41
                      DataBinding.FieldName = 'FOrderCheck'
                    end
                    object FOrderCheckDate_Order: TcxGridDBColumn
                      Caption = #26657#23545#26085#26399
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 76
                      DataBinding.FieldName = 'FOrderCheckDate'
                    end
                    object FOrderAudit_Order: TcxGridDBColumn
                      Caption = #23457'    '#26680
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 41
                      DataBinding.FieldName = 'FOrderAudit'
                    end
                    object FOrderAuditDate_Order: TcxGridDBColumn
                      Caption = #23457#26680#26085#26399
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 71
                      DataBinding.FieldName = 'FOrderAuditDate'
                    end
                    object FOrderPushDown_Order: TcxGridDBColumn
                      Caption = #25209'    '#20934
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 59
                      DataBinding.FieldName = 'FOrderPushDown'
                    end
                    object FOrderPushDownDate_Order: TcxGridDBColumn
                      Caption = #25209#20934#26085#26399
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 108
                      DataBinding.FieldName = 'FOrderPushDownDate'
                    end
                    object FItem3003Name_Order: TcxGridDBColumn
                      Caption = #29983#20135#25104#26412#23545#35937
                      PropertiesClassName = 'TcxButtonEditProperties'
                      Properties.Buttons = <
                        item
                          Default = True
                          Kind = bkEllipsis
                        end>
                      Properties.OnButtonClick = FItem3003Name_MPropertiesButtonClick
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 187
                      DataBinding.FieldName = 'FItem3003Name'
                    end
                    object FK3BillNo_Order: TcxGridDBColumn
                      Caption = 'K3'#21333#25454#21495
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      DataBinding.FieldName = 'FK3BillNo'
                    end
                    object FItem3003_Order: TcxGridDBColumn
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 55
                      DataBinding.FieldName = 'FItem3003'
                    end
                    object FOrderNo_Order: TcxGridDBColumn
                      FooterAlignmentHorz = taCenter
                      HeaderAlignmentHorz = taCenter
                      HeaderGlyphAlignmentHorz = taCenter
                      Options.Editing = False
                      Options.Filtering = False
                      Width = 51
                      DataBinding.FieldName = 'FOrderNo'
                    end
                    object FSupplierID_Order: TcxGridDBColumn
                      Options.Editing = False
                      Options.Filtering = False
                      DataBinding.FieldName = 'FSupplierID'
                    end
                  end
                  object cxGL_Order: TcxGridLevel
                    GridView = cxGV_Order
                  end
                end
              end
            end
            object ToolBar3: TToolBar
              Left = 1
              Top = 1
              Width = 724
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
              object ToolButton2: TToolButton
                Left = 0
                Top = 0
                Caption = #36873#25321'[&S]'
                ImageIndex = 24
                OnClick = ToolButton9Click
              end
              object ToolButton7: TToolButton
                Left = 55
                Top = 0
                Width = 8
                Caption = 'ToolButton5'
                ImageIndex = 4
                Style = tbsSeparator
              end
              object TB_EXIT1: TToolButton
                Left = 63
                Top = 0
                AutoSize = True
                Caption = #36820#22238'[&X]'
                ImageIndex = 19
                OnClick = TB_EXIT1Click
              end
            end
            object RSP_List: TRzSizePanel
              Left = 1
              Top = 216
              Width = 724
              Height = 428
              Align = alBottom
              Color = 14935011
              HotSpotVisible = True
              SizeBarWidth = 7
              TabOrder = 2
              VisualStyle = vsGradient
              object PageControl4: TPageControl
                Left = 0
                Top = 8
                Width = 724
                Height = 420
                ActivePage = TabSheet6
                Align = alClient
                TabOrder = 0
                object TabSheet6: TTabSheet
                  Caption = #38468#34920#20449#24687
                  object cxGrid_OrderList: TcxGrid
                    Left = 0
                    Top = 0
                    Width = 716
                    Height = 392
                    Align = alClient
                    PopupMenu = PM
                    TabOrder = 0
                    OnContextPopup = cxGrid_OrderListContextPopup
                    object cxGV_OrderList: TcxGridDBTableView
                      DataController.DataSource = DS_Mdata_OrderList
                      DataController.Summary.DefaultGroupSummaryItems = <>
                      DataController.Summary.FooterSummaryItems = <
                        item
                          Format = #23567#35745#65306',0.00'
                          Kind = skSum
                          FieldName = 'FOrderAmount'
                          Column = FOrderAmount_OrderList
                        end
                        item
                          Format = #23567#35745#65306',0.00'
                          Kind = skSum
                          FieldName = 'sumFOrderAmount'
                          Column = sumFOrderAmount_OrderList
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
                      OnCustomDrawCell = cxGV_OrderListCustomDrawCell
                      OptionsData.CancelOnExit = False
                      OptionsData.DeletingConfirmation = False
                      OptionsData.Editing = False
                      OptionsView.Navigator = True
                      OptionsView.Footer = True
                      OptionsView.GroupByBox = False
                      object FOrderNum_OrderList: TcxGridDBColumn
                        Caption = #37319#36141#35746#21333#21495
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 65
                        DataBinding.FieldName = 'FOrderNum'
                      end
                      object FOrderListNum_OrderList: TcxGridDBColumn
                        Caption = #24207#21495
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        SortOrder = soAscending
                        Width = 44
                        DataBinding.FieldName = 'FOrderListNum'
                      end
                      object FTakeName_OrderList: TcxGridDBColumn
                        Caption = #26448#26009#21517#31216
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 130
                        DataBinding.FieldName = 'FTakeName'
                      end
                      object FTakeModel_OrderList: TcxGridDBColumn
                        Caption = #26448#26009#35268#26684
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 133
                        DataBinding.FieldName = 'FTakeModel'
                      end
                      object FTakeUnitName_OrderList: TcxGridDBColumn
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
                      object FTakeSumQry_OrderList: TcxGridDBColumn
                        Caption = #28165#21333#24635#25968
                        PropertiesClassName = 'TcxCurrencyEditProperties'
                        Properties.DecimalPlaces = 0
                        Properties.DisplayFormat = '0'
                        Properties.ValidateOnEnter = True
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 53
                        DataBinding.FieldName = 'FTakeSumQry'
                      end
                      object FPlanTenderQry_OrderList: TcxGridDBColumn
                        Caption = #30003#35831#25968#37327
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 53
                        DataBinding.FieldName = 'FPlanTenderQry'
                      end
                      object FTenderCoeQry_OrderList: TcxGridDBColumn
                        Caption = #30830#35748#25968#37327
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 53
                        DataBinding.FieldName = 'FTenderCoeQry'
                      end
                      object FOrderQry_OrderList: TcxGridDBColumn
                        Caption = #37319#36141#25968#37327
                        PropertiesClassName = 'TcxCurrencyEditProperties'
                        Properties.DecimalPlaces = 0
                        Properties.DisplayFormat = '0'
                        Properties.ValidateOnEnter = True
                        Properties.OnEditValueChanged = FOrderQryPropertiesEditValueChanged
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Filtering = False
                        Width = 53
                        DataBinding.FieldName = 'FOrderQry'
                      end
                      object FOrderPrice_OrderList: TcxGridDBColumn
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
                      object FTaxRate_OrderList: TcxGridDBColumn
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
                      object FOrderAmount_OrderList: TcxGridDBColumn
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
                      object FOrderListReMark_OrderList: TcxGridDBColumn
                        Caption = #37319#36141#35746#21333#26126#32454#22791#27880
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
                      object FOrderDate_OrderList: TcxGridDBColumn
                        Caption = #37319#36141#35746#21333#26085#26399
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 77
                        DataBinding.FieldName = 'FOrderDate'
                      end
                      object FClientShortName_OrderList: TcxGridDBColumn
                        Caption = #39033#30446#21517#31216
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 123
                        DataBinding.FieldName = 'FClientShortName'
                      end
                      object FBranchItemNumber_OrderList: TcxGridDBColumn
                        Caption = #39033#30446#22270#21495
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 63
                        DataBinding.FieldName = 'FBranchItemNumber'
                      end
                      object FSupplierName_OrderList: TcxGridDBColumn
                        Caption = #20379#24212#21830#21517#31216
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 285
                        DataBinding.FieldName = 'FSupplierName'
                      end
                      object FPaymentMode_OrderList: TcxGridDBColumn
                        Caption = #20184#27454#26041#24335
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 53
                        DataBinding.FieldName = 'FPaymentMode'
                      end
                      object sumFOrderAmount_OrderList: TcxGridDBColumn
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
                      object FPrecastDate_OrderList: TcxGridDBColumn
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
                      object FFactDate_OrderList: TcxGridDBColumn
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
                      object cxGridDBColumn50_OrderList: TcxGridDBColumn
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
                      object FInvoice_OrderList: TcxGridDBColumn
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
                      object FStatusNotes_OrderList: TcxGridDBColumn
                        Caption = #21333#25454#29366#24577
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 79
                        DataBinding.FieldName = 'FStatusNotes'
                      end
                      object FOrderStatus_OrderList: TcxGridDBColumn
                        Caption = #23457#26680#29366#24577
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 53
                        DataBinding.FieldName = 'FOrderStatus'
                      end
                      object FNumber_OrderList: TcxGridDBColumn
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
                      object FItemID_OrderList: TcxGridDBColumn
                        Caption = 'K3ID'
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Filtering = False
                        Width = 29
                        DataBinding.FieldName = 'FItemID'
                      end
                      object FPlanTenderListID_OrderList: TcxGridDBColumn
                        Options.Editing = False
                        Options.Filtering = False
                        Width = 93
                        DataBinding.FieldName = 'FPlanTenderListID'
                      end
                      object FSupplierID_OrderList: TcxGridDBColumn
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        DataBinding.FieldName = 'FSupplierID'
                      end
                      object FOrderListID_OrderList: TcxGridDBColumn
                        FooterAlignmentHorz = taCenter
                        HeaderAlignmentHorz = taCenter
                        HeaderGlyphAlignmentHorz = taCenter
                        Options.Editing = False
                        Options.Filtering = False
                        DataBinding.FieldName = 'FOrderListID'
                      end
                    end
                    object cxGL_OrderList: TcxGridLevel
                      GridView = cxGV_OrderList
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
              ActivePage = TabSheet7
              Align = alClient
              MultiLine = True
              TabOrder = 0
              object TabSheet7: TTabSheet
                Caption = #25353#37319#36141#32463#29702
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
                  object TB_Ref_Order: TcxButton
                    Left = 0
                    Top = 2
                    Width = 80
                    Height = 25
                    Action = Act_Ref_Order
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
                object MyTreeView_Order: TTreeView
                  Left = 0
                  Top = 29
                  Width = 213
                  Height = 588
                  Align = alClient
                  Ctl3D = False
                  Indent = 19
                  ParentCtl3D = False
                  TabOrder = 1
                  OnChange = MyTreeView_OrderChange
                  OnExpanding = MyTreeView_OrderExpanding
                end
              end
              object TabSheet8: TTabSheet
                ImageIndex = 1
                object MyTreeView3: TTreeView
                  Left = 0
                  Top = 29
                  Width = 213
                  Height = 588
                  Align = alClient
                  Ctl3D = False
                  Indent = 19
                  ParentCtl3D = False
                  TabOrder = 0
                end
                object ToolBar6: TToolBar
                  Left = 0
                  Top = 0
                  Width = 213
                  Height = 29
                  AutoSize = True
                  ButtonHeight = 25
                  ButtonWidth = 161
                  Caption = 'TBar_Sel'
                  Images = ImageList
                  TabOrder = 1
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
      0000000000003600000028000000400000008000000001001000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000CD398410CD390000
      00000000CD39CD39000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008410420884100000
      0000000084108410000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000CD398410CD390000
      00000000CD39CD39000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000001863E07F00000000
      00000000000018630000E07F0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000CD39CD39CD39CD39
      CD39CD39CD39186300000000000000000000000000000000E07F186300000000
      0000000000001863000018630000000000000000000000000000000010001000
      1000100010001000100000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CD394208420842084208
      420842084208CD39000000000000000000000000000000001863E07F00000000
      00000000000018630000E07F0000000000000000000000000000000010001000
      1000100010001000100000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042088410000000000000
      0000000018634208186300000000000000000000000000001863E07F18631863
      E07F1863E07FE07F1863E07F0000000000000000000000000000000010001000
      1000100010001000100000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042084208000042084208
      0000420800004208CD390000000000000000000000000000E07F186300000000
      0000000000000000E07F18630000000000000000000000000000000010001000
      1000FF7F10001000100000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042080000000000000000
      0000000000008410420800000000000000000000000000001863000018631863
      18631863186318630000E07F0000000000000000000000000000000010001000
      1000FF7F10001000100000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CD394208000042084208
      000042080000CD394208CD39000000000000000000000000E07F000018631863
      1863186318631863000018630000000000000000000000000000000010001000
      1000100010001000100000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000841018630000000000000000
      000000000000000042084208000000000000000000000000E07F000018631863
      1863186318631863000018630000000000000000000000000000000000001000
      0000000000001000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000420818638410000042084208
      000042080000000042084208CD39000000000000000000001863000018631863
      1863186318631863000000000000000000000000000000000000000000001000
      0000000000001000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004208420800000000000000000000E07F000018631863
      1863186318631863000018630000000000000000000000000000000000001000
      0000000000001000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CD394208CD39CD390000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      1000100010000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000018634208420842080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000001863186318630000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000210001000100220400000000
      2000200021000200020400041763000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000DF00DF00DF00DF00DF00DF00
      DF00DF00DF00DF00DF00DF00DF00DF00000031461863596B5967376337637763
      566357633867396719670000586B000000000000000000000000000000000000
      000000000000000000000000000000000000321E853626262116221A231E2522
      2422221A2116231E24222522221A241E00000000DF00FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FDF0000001046FE7FFC7FFA7BFA7FF77B042A
      F66FFB7FBB7FFD7F376B00041867000000000000000000000000000000000000
      00000000000000000000000000000000000033262626744FDF7FBE7BBD73BB6F
      BC73BE77BE7BBD77BC73BB6FDE77241E00000000DF00FF7F734EFF7F734E734E
      FF7F734E734EFF7F734E734EFF7FDF0000003046FD7FFA7FF97FF677E229222A
      F673F773FB7FDA7B366720041763000000000000000000000000000000000000
      000000000000000000000000000000000000352A231ABD77FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F241E00000000DF00FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FDF0000000E46FD7FFB7FF777022A212A0126
      0326E621FA6FFB7B366720043967000000000000000000000000000010001000
      100010001000100010000000000000000000352E22169B6F9967BC73BC73BC73
      BC73BB6FBB6F565B3453565BF24A241E00000000DF00FF7F734EFF7F734E734E
      FF7F734E734EFF7F734E734EFF7FDF0000000E42FD7FF977F97BF46F2226022A
      F773071E8511FA6F57670000F862000000000000000000000000000010001000
      100010001000100010000000000000000000352A431ADC73E30DE30DE30DE30D
      E30D4926CE3A4822E30DE30D061A241E00000000DF00FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FDF0000002F42FE7FFC7BF96FF977F6730432
      F56FFB6F450DFC7B576700043A6F000000000000000000000000000010001000
      1000100010001000100000000000000000003426241EBC733967E30DE30DE30D
      E30D8C323147E30DE30DC30DDC73241E00000000DF00FF7F7932793279327932
      793279327932793279327932FF7FDF0000003142FE7BFC77651DFA73F877F577
      F777FA6F671DFB77366700041A6F000000000000000000000000000010001000
      1000FF7F1000100010000000000000000000000025229967FF7F5967E30DE30D
      E30D324BE30DE30D4A2AE2093453241E00000000DF00FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FDF0000001142FF7FFE7B461DFC7BF873232A
      F46FF97BFA77FB7B57670004196B000000000000000000000000000010001000
      1000FF7F1000100010000000000000000000000025229967FF7FFF7F365BE30D
      3147E30DE30DD042575F55577B6F241E00000000DF00FF7FFF7FFF7F734E734E
      FF7F734E734EFF7F734E734EFF7FDF0000003246FF7FFD77461DC92DF9732222
      2122F673FA7FFB7B576700003967000000000000000000000000000010001000
      1000100010001000100000000000000000000000231E9A6BFF7FFE7B5147F042
      E30DE30DE30D4926975FFF7FFF7F241E00000000DF00FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FDF0000000F3EFF7FFE7FDA73E92DE5254222
      211EE325F977FD7B386341043863000000000000000000000000000000001000
      000000000000100000000000000000000000352E22169C73FF7F3147EF3EE30D
      E30DE30DE30DE30D28225453FF7F241E00000000DF00FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FDF0000003046FF7FDD7FFD7FFC7BF9734426
      0222F773FB7B5763596300003967000000000000000000000000000000001000
      000000000000100000000000000000000000352E231ABD770D37AA2AE30DE30D
      D0427B6F4926E30DE30DA2093043241E00000000DF00DF00DF00DF00DF00DF00
      DF00DF00DF00DF00DF00DF00DF00DF0000003042FE7FFF7FFE7FFD7FFB7BE62D
      F777FA7B20002000000000001967000000000000000000000000000000001000
      000000000000100000000000000000000000352A241EBC73D24AE30DE30D124B
      FE7BFF7F9C73F34EE30DE30D5A6B241E00000000DF00DF00DF00DF00DF00DF00
      DF00DF00DF00DF00DF00DF00DF00DF0000000F42FF7FFF7FFF7FFF7FFD7FD977
      FA7FFB772F42DE7F21083A6FDF7F000000000000000000000000000000000000
      1000100010000000000000000000000000000000241EDC73FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F241E000000003F4FDF00DF00DF00DF00DF00
      DF00DF00DF00DF00DF00DF00DF003F4F00003046FF7FFF7FFF7FFF7FFF7FFE7F
      FD7FFD7F0E420004F766FF7FDF7F000000000000000000000000000000000000
      0000000000000000000000000000000000003326672A9142AC32AD36AE3AB042
      AF3EAD36AC32AE3AB042B042AD36241E00000000000000000000000000000000
      0000000000000000000000000000000000000F4231461342F23D324230421042
      0F422F3E2E42386BFF7FDF7FFF7F000000000000000000000000000000000000
      0000000000000000000000000000000000003326683249262822282229262926
      2926292628222926292629262926241E0000000000000000D65A396739673967
      39673967D65A734E000000000000000000000000FF7F0000FF7FFF7F00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000066662C7F6666F37FF37FF37FF37FF37F00000000794E39673F67FF7FFF7F
      FF67FF7F397F3F67B3561042000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000066662C7F6666F97FF97FF97FF97FF97F0000734ED65A3F67FF7FF97F3F4F
      7F1A397F7F1AD900D900D65A104200000000FF7FFF7FFF7FFF7FFF7F1042004C
      004C004C00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006666F37FF37F666666666666666666660000734E794E39673F67FF7F3F4F
      3F337F1AD900DF187366D900D65A10420000FF7FFF7FFF7FFF7F10420064004C
      004C004C004C0000000000000000000000000000000000000000000000002C7F
      666666662C7F0000000000000000000000000000000000000000104200001042
      00006666F97FF37FF37FF37FF97FF97FF97F0000734ED65A3F67FF7FF97F3F4F
      FF033F1B9F19397FFF7F794ED9001042CC18FF7FFF7FFF7FFF7F006400640064
      004C004C004C004C000000000000000000000000000066666666666666666666
      2C7F2C7F66666666666666666666000000000000000000000000000000000000
      000000006666F97FF97FF97F6666666666660000734E794E39673F67FF7F3F4F
      3F1B7F1A7F1A9F19FF7F397F794E1042CC18FF7F0000FF7F0000007C00640064
      0064004C004C004C604E0000000000000000000000006666F37FFF7FE07FE07F
      E07FE07FE07F2C7F2C7F2C7F6666000000000000000000000000104200000000
      0000000000006666666666660000000000000000734ED65A3F67FF7FF97F3F4F
      7F1AFF67FF7FFF7F1900190019001042CC180000000000000000007C007C0064
      00640064004C604E2067604E0000000000000000000000006666F37FFF7FE07F
      E07FE07FE07FE07F2C7F66660000000000000000000000000000000000000000
      0000000000000000000000000000000000000000734E794E39673F67FF7FFF7F
      397F3F1B397FF97F397F1F0019001042CC1800000000000000000000007C007C
      00640064604E206720672067604E0000000000000000000000006666E07FE07F
      E07FE07FE07FE07F6666000000000000000000006666804D804D804D804D804D
      804D804D804D0000000000000000000000000000734ED65A3F67FF7FF97FFF7F
      FF7F3F1B7F1A9F31DF18190019001042CC18000000000000000000000000007C
      00402067E07FE07F206720672067604E000000000000000000006666E07FE07F
      E07FE07FE07FE07F6666000000000000000066662C7F6666F37F2C7F2C7F2C7F
      2C7F6666F37F804D000000000000000000000000734E794E39673F679C739C73
      9C739C737F1ADF181F003F3319001042CC180000000000000000000000000000
      2067E07FFF7F1863E07F206720672067604E00000000000000006666E07FE07F
      E07FE07FE07FE07F6666000000000000000066662C7F6666F37FF37FF37FF37F
      F37F2C7FF37F804D000000000000000000000000734EB356397FF97FF97FF97F
      F97FF97F397F396739673967D65A1042CC180000000000000000000000000000
      00002067E07FFF7F1863E07F2067604ED30000000000000000006666FF7FE07F
      E07FE07FE07FE07F6666000000000000000066662C7F6666F37FF37FF37FF37F
      F37F2C7FF37F804D000000000000000000000000734EF97FAC39C618CC18CC18
      AC399331734E3967FF7F3F67D65A1042CC180000000000000000000000000000
      000000002067E07FFF7FE07F604E9901D30000000000000000002C7F2C7FFF7F
      E07FE07FE07F2C7F2C7F000000000000000066662C7F6666F97FF97FF97FF97F
      F97FF37F00400040004000400040000000000000734EF97F804D7366397F7366
      CC18FF7F394F394FAC39D65A39671042CC180000000000000000000000000000
      0000000000002067E07F2067990199019901000000000000000000006666F37F
      FF7FE07FE07F6666000000000000000000006666F37FF37F6666666666666666
      66666666666600400040004000400000000000000000734E804DFF7F397F397F
      C030CC18FF7FFF67394FCC18B3561042CC180000000000000000000000000000
      000000000000000020677F027F02990199010000000000000000000000006666
      6666666666660000000000000000000000006666F97FF37FF37FF37FF97FF97F
      F97F804D0000000000400040004000400000000000000000734E804DFF7FC030
      00422033CC18FF7FCC18C0309331933100000000000000000000000000000000
      00000000000000000000D3007F027F0299010000000000000000000000000000
      00000000000000000000000000000000000000006666F97FF97FF97F66666666
      66660000000000000000004000000040004000000000000000000000804D9331
      2067C6189331CC18933193310000000000000000000000000000000000000000
      000000000000000000000000D3007F027F020000000000000000000000000000
      0000000000000000000000000000000000000000000066666666666600000000
      000000000000000000000000000000000040000000000000000000002C670000
      00000000000000000000000000000000000000000000000000000000D300D300
      9901D3009901D300000000000000000000000000000000000000000000000000
      000000007F4E7F4E1D6F0000000000000000000000000000BC7B9C739C739C73
      9C739C730000000000000000000000000000000000000000000000002C676066
      00000000000000000000000000000000000000000000000000000000D3009901
      D3009901D300D300000000000000000000000000000000000000000000000000
      0000000000009C733F67794E000000000000000000009C731863734E10421042
      734EB35618633967BC7B00000000000000000000000000000000000000002C67
      60660000000000000000000000000000000000000000000000000000D300D300
      9901D3009901D30000000000000000000000000000000000BC7B9C7339673967
      39679C73794E7F4E1D6F3F67794E000000000000000039673967394F394F394F
      734E10428C311042D65A9C730000000000000000000000000000000000002C67
      F37F6066000000000000000000000000000000000000000000000000734ED300
      D300D300D300734E0000000000000000000000000000BC7B9C73D65A1042AC39
      1042734E9C7339677F4E1D6F3F67794E000000009C73FF67BE5FBE5F394F1D6F
      3F4FBE5FBE5F10428C31734E9C730000000000000000000000002C6760666066
      6066EC7F6066000000000000000000000000000000000000000000000000734E
      FF7F3F678C31000000000000000000000000000000009C7310421042AC39AC39
      8C31292510429C733F67794E1D6F7F4E000000003F4FBE5FBE5F39671D6F6002
      396739673967FF67D65AAC3939670000000000000000000000002C67F37FEC7F
      EC7FEC7FEC7F606600000000000000000000000000000000000000000000734E
      FF7F3F678C3100000000000000000000000000000000B3561042734ED65AD65A
      18631042292510429C73794E794E3F67794E00003F4F3F4F9C731D6F1D6F6002
      600260026002334FBE5F1042D65ABC7B0000000000000000000000002C67F37F
      EC7F60662C672C672C670000000000000000000000000000000000000000734E
      FF7F3F678C3100000000000000000000000000009C738C311042D65A39673967
      D65A186310428C31B3569C73794E9C737F4E9C733F4F9C739C731D6F18636002
      60022C33F967261B3F4F1042D65ABC7B0000000000000000000000002C67F37F
      EC7FEC7F6066000000000000000000000000000000000000000000000000734E
      FF7F3F678C31000000000000000000000000BC7BB35629258C3129252925734E
      3967D65A734E292510423967794E00003F67BE5FBE5FFF7FFF7F794E1D6F334F
      394F261B334F334F394F734E734E9C730000000000002C676066606660666066
      F37FEC7FEC7F606600000000000000000000000000000000000000000000734E
      FF7F3F678C310000000000000000000000001863292529252925104293318C31
      D65A3967D65A1042AC393967000000000000BE5FFF67FF7F1D6F794E1D6F6C1A
      FF7F2C3360026002BE5F734E734E9C730000000000002C67F37FF37FEC7FEC7F
      EC7FEC7FEC7FEC7F606600000000000000000000000000000000000000008C31
      8C318C318C31000000000000000000008C31933110422925AC39104210421042
      29253967D65AAC39AC393967000000000000BE5FFF7FFF7F1D6F1D6F1D6F334F
      6002661A60026002BE5F394F10429C7300000000000000002C67F37FF37FEC7F
      EC7F60662C672C672C67000000000000000000008C318C31000000008C31734E
      734E734E734E8C310000000000008C318C3110421863C61810423967734EAC39
      2925D65AB356AC3910423967000000000000FF67FF67FF67FF7FFF7FBC7B9C73
      334F334F2C336002FF6718631042396700000000000000002C67F37FF37FF37F
      EC7FEC7F6066000000000000000000000000734E734E734E8C318C31734E3967
      39673967734E8C318C318C318C3139678C31734EFF7F29252925FF7F3967AC39
      8C31734E734EAC39734E9C73000000000000FF67FF67FF67FF67BC7BBC7BBC7B
      FF7FFF7FFF7FFF7FFF7FFF67AC393967000000000000000000002C67F37FF37F
      F37FEC7FEC7F606600000000000000000000734EFF7F39673967396739673967
      396739673967734E734E734E39678C3100001863734E3967C6182925AC392925
      AC39104210428C311863BC7B000000000000BE5FBE5FBE5F9C739C739C739C73
      9C739C73BC7BBE5FFF67FF67AC393967000000000000000000002C67F37FF37F
      F37FEC7FEC7FEC7F60660000000000000000734EFF7F39673967FF7F39673967
      396739673967396739673967734E000000000000734E93312925C61829252925
      8C318C31AC39734E9C73000000000000000000009C739C73337FF97FF97FF97F
      F97FBC7B337F3F4F3F4FFF6710429C730000000000000000000000002C67F37F
      F37FF37FEC7FEC7FEC7F6066000000000000734EFF7FFF7F734E734EFF7FFF7F
      FF7FFF7FFF7FFF7F734E734E0000000000000000000000000000734EC618C618
      29258C31734E9C73BC7B0000000000000000000000000000BC7B337F337F337F
      F97FF97F337F3F4F3F4F3F4F1863BC7B0000000000000000000000002C672C67
      2C672C672C672C672C672C672C67000000000000734E734E00000000734E734E
      734E734E734E734E00000000000000000000000000000000000000009C731863
      18639C73BC7B0000000000000000000000000000000000000000000000000000
      337F337F337FBE5FBE5F9C73BC7B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000006666666666662C7F2C7F2C7F
      2C7F2C7F2C7F2C7F2C7F2C7F2C7F2C7F2C7F0000793279327932793279327932
      7932793279327932793279327932793279320000C61800000000000000000000
      0000000000000000000000000000000000000000000000000000000010420000
      0000104200000000000000000000000000002C7F2C7F6666666666662C7F2C7F
      2C7F2C7F2C7F2C7F2C7F2C7F2C7F2C7F2C7F00007932FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F7932C6188C318C318C31000000000000
      00000000000000000000000000000000000000000000000000001042FF7F0000
      0000104200000000000000000000000000002C7F2C7F2C7F6002000200022C7F
      864D864D864D864D66662C7F2C7F2C7F864D00007932FF7FD300D300D300D300
      D300D300D300D300D300D300D300FF7F79320000734E3967734E8C318C310000
      0000000000000000000000000000000000000000000000000000FF7FFF7F0000
      FF7FFF7F00000000000000000000000000002C7F2C7F2C7F6002E00300022C7F
      66666C666C6666662C7F2C7F2C7F2C7F2C7F00007932FF7FD300793279327932
      793279327932793279327932D300FF7F79320000734E39673967734E734E8C31
      8C31000000000000000000000000000000000000000000000000FF7F00000000
      FF7F104210420000000000000000000000002C7F2C7F2C7F6002E00300022C7F
      2C7F666666662C7F2C7F864D864D2C7F2C7F00007932FF7FD300D300D300D300
      D300D300D300D300D300D300D300FF7F793200000000734E39673967734E734E
      734E8C318C310000000000000000000000000000104200000000000000000000
      104200000000000000000000000000008C4D2C7F2C7F2C7F6002E003E0030002
      2C7F2C7F2C7F2C7F2C7F2C7F2C7F2C7F2C7F00007932FF7FD300793279327932
      793279327932793279327932D300FF7F793200000000734E9C7339673967734E
      734E734ED300CC00CC0000000000000000001042FF7FFF7F0000FF7F00000000
      18630000000000000000000000008C4D66662C7F2C7F2C7F6002E003261BE003
      00022C7F2C7F2C7F2C7F2C7F2C7F2C7F2C7F00007932FF7FD300D300D300D300
      D300D300D300D300D300D300D300FF7F7932000000000000734E9C7339673967
      734ED300D300D300D300CC000000000000001042FF7F00000000FF7F10421863
      FF7F10420000FF7F104200008C4D66662C7F3F4F2C330002E003E0036002E003
      E00360023F4F3F4F3F4F3F4F3F4F3F4F3F4F00007932FF7FD300793279327932
      793279327932793279327932D300FF7F7932000000000000734EFF7F9C733967
      D300D300D300D300D300D300CC00000000001042000000000000104200000000
      FF7F0000FF7FFF7FFF7F8C4D66662C7F00003F4F6002E0036002E00300026002
      E00360023F4F3F4F3F4F3F4F3F4F3F4F3F4F00007932FF7FD300D300D300D300
      D300D300D300D300D300D300D300FF7F79320000000000000000734EFF7FD300
      9919D300D300D300D300D300D300CC0000000000000000001042000000000000
      000000000000FF7F8C4D66662C7F000000003F4F6002E0036002E00300022C33
      60022C333F4F3F4F3F4F3F4F3F4F3F4F3F4F00007932FF7FD300793279327932
      793279327932793279327932D300FF7F79320000000000000000734ED3009919
      D3009919D300D300D300D300D300D300CC00000000001863186300000000FF7F
      0000000000008C4D66662C7F0000000000003F4F6002E0036002E00300023F4F
      3F4F3F4F3F4F3F4F207F207F207F3F4F3F4F00007932FF7FD300D300D300D300
      D300D300D300D300D300D300D300FF7F793200000000000000000000D300D300
      9919D3009919D300D300D300D300D300D300000010421863FF7F0000FF7FFF7F
      FF7F00008C4D66662C7F00000000000000003F4F2C3360026002E00300023F4F
      3F4F3F4F3F4F207FEC7FEC7FEC7F207F3F4F00007932FF7FD300793279327932
      793279327932793279327932D300FF7F793200000000000000000000D300D300
      D3009919D3009919D300D300D300D300734E000000001042104200000000FF7F
      FF7F8C4D66662C7F000000000000000000003F4F3F4F3F4F6002E00300023F4F
      3F4F3F4F3F4F207FEC7FEC7FEC7F207F3F4F00007932FF7FD300D300D300D300
      D300D300D300D300D300D300D300FF7F7932000000000000000000000000D300
      D300D3009919D3009919D300D300734E734E0000000000000000000000000000
      8C4D66662C7F0000000000000000000000003F4F3F4F3F4F2C3360022C333F4F
      3F4F3F4F3F4F207FEC7FEC7FEC7F207F3F4F00007932FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F79320000000000000000000000000000
      D300D300D3009919D300D30039673967734E0000000000000000000000008C4D
      66662C7F00000000000000000000000000003F4F3F4F3F4F3F4F3F4F3F4F3F4F
      3F4F3F4F3F4F3F4F207F207F207F3F4F3F4F0000793279327932793279327932
      7932793279327932793279327932793279320000000000000000000000000000
      0000D300D300D300D3009C739C7339673967000000000000000000008C4D6666
      2C7F000000000000000000000000000000003F4F3F4F3F4F3F4F3F4F3F4F3F4F
      3F4F3F4F3F4F3F4F3F4F3F4F3F4F3F4F3F4F0000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BC7B
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000D300D300
      9901D3009901D3000000000000000000000000000000D300D300D300D300D300
      D300D300D300D300D300D300000000000000000000000000BC7B9C7339679C73
      BC7B000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000D3009901
      D3009901D300D30000000000000000000000000079323F4F3F4F3F4F3F4F3F4F
      3F4F3F4F3F4F3F4F79327932D300000000000000BC7B9C73D65A794E93319331
      D65A39679C73BC7B000000000000000000000000000000000000000000000000
      007C0040000000000000000000000000000000000000000000000000D300D300
      9901D3009901D300000000000000000000007932793279327932793279327932
      79327932793279327932D3007932D30000009C73794E9331794E794EFF7F9331
      734E734ED65A9C7300000000000000000000000000000000000000000000007C
      004C004C004000000000000000000000000000000000000000000000734ED300
      D300D300D300734E000000000000000000007932FF7F3F4F3F4F3F4F3F4F3F4F
      3F4F3F4F3F4F3F4F3F4F7932D300D30000009331794E3F4F3F4F3F67FF7F9331
      864D864D864DBC7B00000000000000000000000000000000000000000000007C
      004C0040004C004000000000000000000000000000000000000000000000734E
      FF7F3F678C310000000000000000000000007932FF7F3F4F3F4F3F4F3F4F2003
      60023F4F007C00643F4F79327932D300000093313F4F3F4F3F4F3F67FF7F9331
      2C672C676066FF7F3F670000000000000000000000000000000000000000007C
      004C004C0040004C00400000000000000000000000000000000000000000734E
      FF7F3F678C310000000000000000000000007932FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F793279327932D30093313F4F3F4F3F4F3F67FF7F9331
      2C672C7F66663F679901000000000000000000000000000000000000FF7F7932
      004C004C004C007C004C0040000000000000000000000000000000000000734E
      FF7F3F678C310000000000000000000000007932FF7F3F4F3F4F3F4F3F4F3F4F
      3F4F3F4F3F4F3F4F3F4F793279327932D30093313F4F794E79323F67FF7F9331
      3367337FD65A9F019901000000000000000000000000000000000000FF7F3F4F
      3F4F004C007C007C007C004C004000000000000000000000000000000000734E
      FF7F3F678C310000000000000000000000000000793279327932793279327932
      79327932793279323F4F3F4F79327932D30093313F4F9331FF7F3F67FF7F9331
      3367186399019901990199019901990100000000000000000000FF7F3F4F3F4F
      FF7FFF7F007C667E667E667E004C00000000000000000000000000000000734E
      FF7F3F678C31000000000000000000000000000000007932FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F79323F4F3F4F7932D30093313F4F794E93313F67FF7F9331
      000099019901990199019901990199010000000000000000FF7F3F4F3F4FFF7F
      FF7FFF7FFF7F004C004C004C0000000000000000000000000000000000008C31
      8C318C318C31000000000000000000008C310000000000007932FF7F9C739C73
      9C739C739C73FF7F793279327932D300000093313F4F3F4F3F4F3F67FF7F9331
      0000794E990199019901990199019901000000000000FF7F3F4F3F4FFF7FFF7F
      FF7F7932793200000000000000000000000000008C318C31000000008C31734E
      734E734E734E8C310000000000008C318C310000000000007932FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F793200000000000093313F4F3F4F3F4F3F67FF7F9331
      3967BC7B794E9F01990100000000000000000000FF7F3F4F3F4FFF7FFF7FFF7F
      793200000000000000000000000000000000734E734E734E8C318C31734E3967
      39673967734E8C318C318C318C3139678C3100000000000000007932FF7F9C73
      9C739C739C739C73FF7F793200000000000093313F4F3F4F3F4F3F67FF7F9331
      3367000033673F4F99010000000000000000FF7F3F4F3F4FFF7FFF7FFF7F7932
      007C00000000000000000000000000000000734EFF7F39673967396739673967
      396739673967734E734E734E39678C31000000000000000000007932FF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F7932000000009331794E3F4F3F4F3F67FF7F9331
      39670000666600003F4F000000000000000079323F4FFF7FFF7FFF7F7932007C
      000000000000000000000000000000000000734EFF7F39673967FF7F39673967
      396739673967396739673967734E000000000000000000000000000079327932
      793279327932793279327932793200000000000018637932794E394FFF7F9331
      60666066606600000000000000000000000000007932FF7FFF7F793200000000
      000000000000000000000000000000000000734EFF7FFF7F734E734EFF7FFF7F
      FF7FFF7FFF7FFF7F734E734E0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000003967794E93319331
      0000000000000000000000000000000000000000000079327932000000000000
      0000000000000000000000000000000000000000734E734E00000000734E734E
      734E734E734E734E000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000007932793279327932
      7932793279327932793279327932793279320000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000079327932793279327932
      7932793279327932793279327932000000000000000000007932FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F7932000000000000004C000000000000
      0000000000000000000000000000007C00000000000000000000000000000000
      000000000000000000000000000000000000000000007932FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F7932000000000000000000007932FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F793200000000C664007C004C00000000
      00000000000000000000000000000000000000000000000000007932D300D300
      793200000000000000000000000000000000000000007932FF7F9C739C739C73
      9C739C739C739C739C73FF7F7932000000000000000000007932FF7FFF7F3967
      396739673967396739673967FF7FFF7F793200000000C664667E007C004C0000
      000000000000000000000000007C00000000000000000000D300D30099019901
      D30000000000000000000000000000000000000000007932FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F793200000000004C000000007932FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F7932000000000000C664807D00640000
      00000000000000000000007C00000000000000000000D30099019901D300D300
      793200000000000000000000000000000000000000007932FF7F9C739C739C73
      9C739C739C739C739C73FF7F7932000000000064004C00007932FF7FD300D300
      D300D300D300D300D300D300D300FF7F793200000000000000000064007C004C
      0000000000000000007C004C00000000000000007932D3009901D30079320000
      0000D300D300D300D300D300D300D3000000000000007932FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F793200000000007C0064004C7932FF7FD3007932
      793279327932793279327932D300FF7F7932000000000000000000000064007C
      004C00000000007C004C00000000000000000000D3009901D300793200000000
      0000D30099019901990199019901D3000000000000007932FF7F9C739C739C73
      9C739C739C739C739C73FF7F793200000000007C006400007932FF7FD300D300
      D300D300D300D300D300D300D300FF7F79320000000000000000000000000064
      007C004C007C004C000000000000000000000000D3009901D300000000000000
      00000000D3009901990199019901D3000000000000007932FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F793200000000007C000000007932FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F79320000000000000000000000000000
      0064007C004C0000000000000000000000000000D3009901D300793200000000
      000000007932D300990199019901D3000000000000007932FF7F9C739C739C73
      9C739C739C739C739C73FF7F7932000000000000000000007932FF7FFF7F3967
      396739673967396739673967FF7FFF7F79320000000000000000000000000064
      007C004C0064004C0000000000000000000000007932D3009901D30079320000
      7932D300D3009901D30099019901D3000000000000007932FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F7932000000000000000000007932FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F7932000000000000000000000064007C
      004C000000000064004C000000000000000000000000D30099019901D300D300
      D30099019901D3007932D3009901D3000000000000007932FF7F9C739C739C73
      9C739C73FF7F7932793279327932000000000000000000007932FF7FFF7F3967
      396739673967396739673967FF7FFF7F79320000000000000064007C007C004C
      00000000000000000064004C000000000000000000000000D300D30099019901
      9901D300D300000000000000D300D3000000000000007932FF7FFF7FFF7FFF7F
      FF7FFF7FFF7F79329C7379320000000000000000000000007932FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F7932000000000064667E007C004C0000
      000000000000000000000064004C0000000000000000000000007932D300D300
      D30079320000000000000000000000000000000000007932FF7FFF7FFF7FFF7F
      FF7FFF7FFF7F7932793200000000000000000000000000007932FF7FFF7F3967
      396739673967396739673967FF7FFF7F7932000000008C4D00648C4D00000000
      0000000000000000000000000000006400000000000000000000000000000000
      0000000000000000000000000000000000000000000079327932793279327932
      7932793279327932000000000000000000000000000000007932FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F79320000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000007932793279327932
      7932793279327932793279327932793279320000000000000000000000000000
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
      1900000040140000190000000001000100FFFFFFFFFF09000000340800009A0B
      00000000000036000000000000000000000000FFFF00000000FFFF0000000000
      000000000500506167653100030400466F726D000F0000FFDC00000078000000
      7C0100002C010000040000000200C90000000500D2B3CDB73100020100000000
      DC000000F6020000250000003000020001000000000000000000FFFFFF1F0000
      0000000000000000000000FFFF00000000000200000001000000000000000100
      0000C8000000140000000100000000000002003D0100000900D6F7CFEECAFDBE
      DD310002010000000020010000F6020000230000003000050001000000000000
      000000FFFFFF1F000000000B00667244424461746153657400000000000000FF
      FF000000000002000000010000000000000001000000C8000000140000000100
      00000000000200A60100000900B1A8B1EDBACFBCC63100020100000000600100
      00F6020000240000003000010001000000000000000000FFFFFF1F0000000000
      0000000000000000FFFF000000000002000000010000000000000001000000C8
      000000140000000100000000000002000F0200000900B1A8B1EDB1EACCE23100
      0201000000003C000000F60200006C0000003000000001000000000000000000
      FFFFFF1F00000000000000000000000000FFFF00000000000200000001000000
      0000000001000000C8000000140000000100000000000002008D0200000700B7
      D6D7E9CDB731000201000000009C010000F60200002300000030001000010000
      00000000000000FFFFFF1F0000000017005B4D44617461322E22464974656D4E
      756D626572225D2000000000000000FFFF000000000002000000010000000000
      000001000000C8000000140000000100000000000000003D03000005004D656D
      6F310002002A00000041000000B1020000240000000300000001000000000000
      000000FFFFFF1F2E02000000000001002C00B8A3BDA8C1FABEBBBBB7B1A3B9C9
      B7DDD3D0CFDEB9ABCBBEB5E7B4FCD3EBB4FCCABDB3FDB3BECAC2D2B5B2BF0000
      0000FFFF00000000000200000001000000000B00BFACCCE55F47423233313200
      0B0000000200000000000A0000000100020000000000FFFFFF00000000020000
      00000000000000C503000005004D656D6F330002001C000000DC000000180000
      002500000003000F0001000000000000000000FFFFFF1F2E0200000000000100
      0400D0F2BAC500000000FFFF00000000000200000001000000000B00BFACCCE5
      5F474232333132000A0000000200000000000A0000000100020000000000FFFF
      FF00000000020000000000000000005104000005004D656D6F34000200980000
      00DC000000900000002500000003000F0001000000000000000000FFFFFF1F2E
      02000000000001000800C6B720202020C3FB00000000FFFF0000000000020000
      0001000000000B00BFACCCE55F474232333132000A0000000200000000000A00
      00000100020000000000FFFFFF0000000002000000000000000000E004000005
      004D656D6F3500020028010000DC000000C80000002500000003000F00010000
      00000000000000FFFFFF1F2E02000000000001000B00D0CDBAC5A1A2B9E620B8
      F100000000FFFF00000000000200000001000000000B00BFACCCE55F47423233
      3132000A0000000200000000000A0000000100020000000000FFFFFF00000000
      020000000000000000006805000005004D656D6F36000200F0010000DC000000
      180000002500000003000F0001000000000000000000FFFFFF1F2E0200000000
      0001000400B5A5CEBB00000000FFFF00000000000200000001000000000B00BF
      ACCCE55F474232333132000A0000000200000000000A00000001000200000000
      00FFFFFF0000000002000000000000000000F705000005004D656D6F37000200
      08020000DC000000280000002500000003000F0001000000000000000000FFFF
      FF1F2E02000000000002000400B5A5CCA80D0400CAFDC1BF00000000FFFF0000
      0000000200000001000000000B00BFACCCE55F474232333132000A0000000200
      000000000A0000000100020000000000FFFFFF00000000020000000000000000
      008406000006004D656D6F313300020034000000DC0000006400000025000000
      03000F0001000000000000000000FFFFFF1F2E02000000000001000800CFEEC4
      BFC3FBB3C600000000FFFF00000000000200000001000000000B00BFACCCE55F
      474232333132000A0000000200000000000A0000000100020000000000FFFFFF
      00000000020000000000000000001407000006004D656D6F31350002001C0000
      0020010000180000002300000003000F0001000000000000000000FFFFFF1F2C
      000001000000010007005B4C494E45235D00000000FFFF000000000002000000
      01000000000F0054696D6573204E657720526F6D616E000A0000000000000000
      000A0000000100020000000000FFFFFF0000000002000000000000000000A607
      000006004D656D6F31360002009800000020010000900000002300000003000F
      0001000000000000000000FFFFFF1F2E02000000000001001400205B4D446174
      61322E22464B334E616D65225D2000000000FFFF000000000002000000010000
      00000400CBCECCE5000A000000000000000000080000000100020000000000FF
      FFFF00000000020000000000000000003808000006004D656D6F313700020028
      01000020010000C80000002300000003000F0001000000000000000000FFFFFF
      1F2E02000000000001001400205B4D44617461322E22464B334D6F64656C225D
      00000000FFFF00000000000200000001000000000400CBCECCE5000A00000000
      0000000000080000000100020000000000FFFFFF000000000200000000000000
      0000CD08000006004D656D6F3139000200F00100002001000018000000230000
      0003000F0001000000000000000000FFFFFF1F2C00000000000001001700205B
      4D44617461322E22464B33556E69744E616D65225D00000000FFFF0000000000
      0200000001000000000400CBCECCE5000A0000000000000000000A0000000100
      020000000000FFFFFF00000000020000000000000000006909000006004D656D
      6F32300002000802000020010000280000002300000043000F00010000000000
      00000000FFFFFF1F2E040201000000010013005B4D44617461322E224653756D
      517279225D2000000000FFFF00000000000200000001000000000F0054696D65
      73204E657720526F6D616E000A00000000000000000009000000010002000000
      0000FFFFFF00000000020000000000000000004E0A000006004D656D6F353000
      02002000000063010000B80200001D0000000300000001000000000000000000
      FFFFFF1F2E02000000000002005C00C9F3BACBA3BA2020202020202020202020
      2020202020202020202020202020202020B1E0D6C6A3BA202020202020202020
      2020202020202020202020C8D5C6DAA3BA5B4D44617461322E2246506C616E54
      656E64657244617465225D0D01002000000000FFFF0000000000020000000100
      0000000B00B7C2CBCE5F474232333132000A0000000200000000000800000001
      00020000000000FFFFFF0000000002000000000000000000DB0A000006004D65
      6D6F343500020077020000DC000000590000002500000003000F000100000000
      0000000000FFFFFF1F2E02000000000001000800B1B820202020D7A200000000
      FFFF00000000000200000001000000000B00BFACCCE55F474232333132000A00
      00000200000000000A0000000100020000000000FFFFFF000000000200000000
      0000000000780B000006004D656D6F3439000200770200002001000058000000
      2300000003000F0001000000000000000000FFFFFF1F2E020000000000010014
      00205B4D44617461322E22464E756D626572225D2000000000FFFF0000000000
      0200000001000000000F0054696D6573204E657720526F6D616E000A00000000
      0000000000080000000100020000000000FFFFFF000000000200000000000000
      0000290C000006004D656D6F3231000200200000009C010000B4020000230000
      0001000F0001000000000000000000FFFFFF1F2E020000000000010033005B4D
      44617461322E2246436C69656E7453686F72744E616D65225D205B4D44617461
      322E22464974656D4E756D626572225D2000000000FFFF000000000002000000
      01000000000400CBCECCE5000A00000000000000000008000000010002000000
      0000FFFFFF0000000002000000000000000000B60C000006004D656D6F323200
      020030020000DC000000470000002500000003000F0001000000000000000000
      FFFFFF1F2E02000000000001000800B6A8B1EACAB1BCE400000000FFFF000000
      00000200000001000000000B00BFACCCE55F474232333132000A000000020000
      0000000A0000000100020000000000FFFFFF0000000002000000000000000000
      620D000006004D656D6F32330002003400000020010000640000002300000003
      000F0001000000000000000000FFFFFF1F2E02000000000001002E005B4D4461
      7461322E224670617274734E756D626572225D20205B4D44617461322E224670
      617274734E616D65225D00000000FFFF00000000000200000001000000000400
      CBCECCE5000A000000000000000000080000000100020000000000FFFFFF0000
      000002000000000000000000080E000006004D656D6F32340002003002000020
      010000470000002300000003000F0001000000000000000000FFFFFF1F2E0200
      0000000001001D0020205B4D44617461322E2246506C616E54656E6465724461
      7465225D2000000000FFFF00000000000200000001000000000F0054696D6573
      204E657720526F6D616E000A0000000000000000000800000001000200000000
      00FFFFFF0000000002000000000000000000F30E000005004D656D6F32000200
      2800000068000000B1020000240000000300000001000000000000000000FFFF
      FF1F2E02000000000001006300205B594541524F46285B4D44617461322E2246
      506C616E54656E64657244617465225D295DC4EA5B4D4F4E54484F46285B4D44
      617461322E2246506C616E54656E64657244617465225D295DD4C220CDE2B9BA
      BCFEB2C9B9BABCC6BBAEC3F7CFB8B1ED00000000FFFF00000000000200000001
      000000000F0054696D6573204E657720526F6D616E000E000000020000000000
      0A0000000100020000000000FFFFFF000000000200000000000000FEFEFF0200
      0000050020B1E4C1BF0000000001006E0000000000000000010000000B006672
      44424461746153657400000000FDFF0100000000FC0100000000FC0100000000
      FC000000000000000000000000000000005800C0780655AC09E340EE3A2E5596
      E2E3400000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FC00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FC0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FC00443044304430
      4430443044304430443044304430443044304430443044304430443044304430
      4430443044304430443044304430443044304430443044304430443044304430
      4430443044304430443044304430443044304430443044304430443044304430
      4430443044304430443044304430443044304430443044304430443044304430
      4430443044304430443044304430443044304430443044304430443044304430
      4430443044304430443044304430443044304430443044304430443044304430
      4430443044304430443044304430443044304430443044304430443044304430
      4430443044304430443044304430443044304430443058004430443044304430
      4C459FDE548FE440}
  end
  object frDBDataSet: TfrDBDataSet
    Left = 27
    Top = 291
  end
  object mdata_PayMentList: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 60
    Top = 183
  end
  object DS_Mdata_PayMentList: TDataSource
    DataSet = mdata_PayMentList
    Left = 28
    Top = 183
  end
  object DS_Mdata_PayMent: TDataSource
    DataSet = MData_PayMent
    Left = 28
    Top = 151
  end
  object MData_PayMent: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 60
    Top = 151
  end
  object actionList: TActionList
    Images = ImageList
    Left = 116
    Top = 200
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
    object Act_Del: TAction
      Category = #25968#25454#32500#25252
      Caption = #21024#38500'[&D]'
      ImageIndex = 2
      OnExecute = Act_DelExecute
    end
    object Act_Set_MaxNum: TAction
      Category = #25968#25454#25805#20316
      Caption = 'Act_Set_MaxNum'
      OnExecute = Act_Set_MaxNumExecute
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
      Caption = #23457#26680'[&S]'
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
    object Act_Submit: TAction
      Category = #25968#25454#32500#25252
      Caption = #25552#20132'[&S]'
      ImageIndex = 10
      Visible = False
      OnExecute = Act_SubmitExecute
    end
    object Act_Out: TAction
      Category = #25968#25454#32500#25252
      Caption = #23548#20986'[&O]'
      ImageIndex = 23
    end
    object Act_Ref_Item: TAction
      Category = #21047#26032
      Caption = #21047#26032'[&R]'
      ImageIndex = 21
      OnExecute = Act_Ref_ItemExecute
    end
    object Act_Ref_Order: TAction
      Category = #21047#26032
      Caption = #21047#26032'[&R]'
      ImageIndex = 21
      OnExecute = Act_Ref_OrderExecute
    end
    object Act_Ref_Write: TAction
      Category = #21047#26032
      Caption = #21047#26032'[&R]'
      ImageIndex = 21
      OnExecute = Act_Ref_WriteExecute
    end
    object Act_Set_MaxID: TAction
      Category = #25968#25454#25805#20316
      Caption = 'Act_Set_MaxID'
      OnExecute = Act_Set_MaxIDExecute
    end
    object Act_Status: TAction
      Category = #26435#38480
      Caption = #26435#38480#35774#32622
      ImageIndex = 13
      OnExecute = Act_StatusExecute
    end
    object Act_K3: TAction
      Category = #25968#25454#25805#20316
      Caption = 'Act_K3'
      ImageIndex = 24
      OnExecute = Act_K3Execute
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
  object MData_OrderList: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 75
    Top = 470
    object MData_OrderListth: TStringField
      FieldName = 'th'
    end
    object MData_OrderListmc: TStringField
      FieldName = 'mc'
    end
    object MData_OrderListgg: TStringField
      FieldName = 'gg'
    end
    object MData_OrderListFSumQry: TIntegerField
      FieldName = 'FSumQry'
    end
    object MData_OrderListFTakeDemand: TStringField
      FieldName = 'FTakeDemand'
    end
    object MData_OrderListFTakeListReMark: TStringField
      FieldName = 'FTakeListReMark'
    end
    object MData_OrderListFSumSuttle: TFloatField
      FieldName = 'FSumSuttle'
    end
    object MData_OrderListFName: TStringField
      FieldName = 'FName'
    end
    object MData_OrderListFModel: TStringField
      FieldName = 'FModel'
    end
    object MData_OrderListUnitName: TStringField
      FieldName = 'UnitName'
    end
    object MData_OrderListFNumber: TStringField
      FieldName = 'FNumber'
    end
    object MData_OrderListFk3Name: TStringField
      FieldName = 'Fk3Name'
    end
    object MData_OrderListFK3Model: TStringField
      FieldName = 'FK3Model'
    end
    object MData_OrderListFOrderNoQry: TIntegerField
      FieldName = 'FOrderNoQry'
    end
  end
  object DS_Mdata_OrderList: TDataSource
    DataSet = MData_OrderList
    Left = 35
    Top = 470
  end
  object DS_Mdata_Order: TDataSource
    DataSet = MData_Order
    Left = 35
    Top = 430
  end
  object MData_Order: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 75
    Top = 430
    object MData_OrderFTakeID: TIntegerField
      FieldName = 'FTakeID'
    end
    object MData_OrderFTakeDate: TDateField
      FieldName = 'FTakeDate'
    end
    object MData_OrderFItemListId: TIntegerField
      FieldName = 'FItemListId'
    end
    object MData_OrderFBranchFileNo: TStringField
      FieldName = 'FBranchFileNo'
    end
    object MData_OrderFTakeWrite: TStringField
      FieldName = 'FTakeWrite'
    end
    object MData_OrderFTakeWriteDate: TDateTimeField
      FieldName = 'FTakeWriteDate'
    end
    object MData_OrderFItemNumber: TStringField
      FieldName = 'FItemNumber'
    end
    object MData_OrderFPlanTenderDate: TDateField
      FieldName = 'FPlanTenderDate'
    end
    object MData_OrderFPlanTenderID: TIntegerField
      FieldName = 'FPlanTenderID'
    end
  end
  object PM: TPopupMenu
    Left = 348
    Top = 200
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
