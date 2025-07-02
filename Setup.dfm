inherited Frm_setup: TFrm_setup
  Left = 261
  Top = 188
  HorzScrollBar.Range = 0
  VertScrollBar.Range = 0
  BorderStyle = bsDialog
  Caption = 'Frm_setup'
  ClientHeight = 425
  ClientWidth = 442
  OldCreateOrder = True
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 12
  inherited PanelBkGnd: TPanel
    Width = 442
    Height = 425
    object SB_CLOSE: TSpeedButton
      Left = 317
      Top = 372
      Width = 107
      Height = 27
      Cursor = crHandPoint
      Caption = #36864#20986#31995#32479#35774#32622
      Flat = True
      Glyph.Data = {
        EE000000424DEE000000000000007600000028000000100000000F0000000100
        0400000000007800000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00F8F8F8F8F8F8
        F8F88F8F0F8F8F8F8F8FF8F00800F8F8F8F88F0E0F8F0F8F8F8F000E00000000
        F8F880EE07770F8F8F8FF0EE077708F8F8F880EE07770F8F0F8FF0EE077708F0
        08F880EE07770F00000FF0EE077708F008F880EE07770F8F0F8FF000777708F8
        F8F8800777770F8F8F8FF000000008F8F8F8}
      OnClick = SB_CLOSEClick
    end
    object SB_about: TSpeedButton
      Left = 341
      Top = 294
      Width = 77
      Height = 61
      Cursor = crHandPoint
      Caption = #20851#20110#26412#36719#20214
      Flat = True
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        888888888880088888888888880B308888888888880B30888888888888800888
        88888888880B308888888888880B308888888888880B308888888888880BB308
        888888880080BB3088888880B3080BB308888880B30880B308888880BB300BB3
        088888880BBBBB30888888888000000888888888888888888888}
      Layout = blGlyphTop
      OnClick = SB_aboutClick
    end
    object SB_save: TSpeedButton
      Left = 186
      Top = 372
      Width = 107
      Height = 27
      Cursor = crHandPoint
      Caption = #20445#23384#31995#32479#35774#32622
      Enabled = False
      Flat = True
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888880000000000000880330000008803088033000000880308803300000088
        0308803300000000030880333333333333088033000000003308803088888888
        0308803088888888030880308888888803088030888888880308803088888888
        0008803088888888080880000000000000088888888888888888}
      OnClick = SB_saveClick
    end
    object Bevel_BUTTON: TBevel
      Left = 11
      Top = 363
      Width = 415
      Height = 2
    end
    object SB_stop: TSpeedButton
      Left = 18
      Top = 372
      Width = 127
      Height = 27
      Caption = #32456#27490#36816#34892#24182#36864#20986#31995#32479
      Flat = True
      Visible = False
      OnClick = SB_stopClick
    end
    object cxGroupBox1: TcxGroupBox
      Left = 23
      Top = 288
      Width = 311
      Height = 67
      Alignment = alTopLeft
      Caption = #40664#35748#32467#31639#26085#26399
      TabOrder = 2
      object L_countdate1: TLabel
        Left = 12
        Top = 43
        Width = 24
        Height = 12
        Caption = #27599#26376
      end
      object L_countdate: TLabel
        Left = 109
        Top = 43
        Width = 24
        Height = 12
        Caption = #21363#65306
      end
      object E_countdate: TcxSpinEdit
        Left = 37
        Top = 40
        Width = 60
        Height = 20
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.MaxValue = 27.000000000000000000
        Properties.MinValue = 1.000000000000000000
        Properties.OnChange = E_countdateChange
        Style.Color = 15658734
        Style.ButtonStyle = btsHotFlat
        TabOrder = 0
        Value = 1
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
      end
      object rgpCheckOutDate: TcxRadioGroup
        Left = 22
        Top = 15
        Width = 215
        Height = 23
        Alignment = alCenterCenter
        ItemIndex = 0
        Properties.Columns = 2
        Properties.DefaultValue = True
        Properties.Items = <
          item
            Caption = #33258#23450#20041
            Value = True
            Tag = 0
          end
          item
            Caption = #27599#26376#24213
            Value = False
            Tag = 0
          end>
        Style.BorderStyle = ebsNone
        TabOrder = 1
        OnClick = RB_userdateClick
      end
    end
    object grpBaseInfo: TcxGroupBox
      Left = 25
      Top = 7
      Width = 392
      Height = 164
      Alignment = alTopLeft
      Caption = #20844#21496#22522#26412#20449#24687
      TabOrder = 0
      object Label1: TLabel
        Left = 17
        Top = 33
        Width = 60
        Height = 12
        Caption = #20844#21496#21517#31216#65306
      end
      object Label2: TLabel
        Left = 17
        Top = 64
        Width = 72
        Height = 12
        Caption = #20844#21496#36127#36131#20154#65306
      end
      object Label3: TLabel
        Left = 17
        Top = 94
        Width = 60
        Height = 12
        Caption = #20844#21496#30005#35805#65306
      end
      object Label4: TLabel
        Left = 17
        Top = 125
        Width = 60
        Height = 12
        Caption = #20844#21496#22320#22336#65306
      end
      object E_allname: TcxTextEdit
        Left = 81
        Top = 30
        Width = 296
        Height = 20
        Properties.OnChange = E_allnameChange
        Style.Color = 15658734
        TabOrder = 0
        Text = #31119#24314#40857#20928#29615#20445#32929#20221#26377#38480#20844#21496
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        OnKeyDown = E_allnameKeyDown
      end
      object E_name: TcxTextEdit
        Left = 81
        Top = 60
        Width = 296
        Height = 20
        Style.Color = 15658734
        TabOrder = 1
        Text = #40644#28828
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        OnKeyDown = E_allnameKeyDown
      end
      object E_tel: TcxTextEdit
        Left = 81
        Top = 90
        Width = 296
        Height = 20
        Style.Color = 15658734
        TabOrder = 2
        Text = '2237551'
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        OnKeyDown = E_allnameKeyDown
      end
      object E_address: TcxTextEdit
        Left = 81
        Top = 121
        Width = 296
        Height = 20
        Style.Color = 15658734
        TabOrder = 3
        Text = #38517#22253#36335'81'#21495
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        OnKeyDown = E_allnameKeyDown
      end
    end
    object grpSysInfo: TcxGroupBox
      Left = 25
      Top = 177
      Width = 392
      Height = 105
      Alignment = alTopLeft
      Caption = #31995#32479#25968#25454#24211
      TabOrder = 1
      object Label5: TLabel
        Left = 21
        Top = 20
        Width = 36
        Height = 12
        Alignment = taRightJustify
        Caption = #26381#21153#22120
      end
      object Label6: TLabel
        Left = 13
        Top = 44
        Width = 48
        Height = 12
        Alignment = taRightJustify
        Caption = #25968#25454#24211#21517
      end
      object Label7: TLabel
        Left = 199
        Top = 20
        Width = 48
        Height = 12
        Alignment = taRightJustify
        Caption = #35282#33394#21517#31216
      end
      object Label8: TLabel
        Left = 203
        Top = 44
        Width = 48
        Height = 12
        Alignment = taRightJustify
        Caption = #35282#33394#23494#30721
      end
      object L_days: TLabel
        Left = 231
        Top = 83
        Width = 72
        Height = 12
        Caption = #33258#21160#20221#22825#25968#65306
        Enabled = False
      end
      object LE_DbSvr: TcxTextEdit
        Left = 74
        Top = 17
        Width = 112
        Height = 20
        Properties.OnChange = E_allnameChange
        Style.BorderStyle = ebsUltraFlat
        Style.Color = 15658734
        TabOrder = 0
        Text = #12304#31995#32479#40664#35748#12305
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        OnKeyDown = E_allnameKeyDown
      end
      object Le_DBname: TcxTextEdit
        Left = 74
        Top = 41
        Width = 112
        Height = 20
        Style.BorderStyle = ebsUltraFlat
        Style.Color = 15658734
        TabOrder = 1
        Text = #12304#31995#32479#40664#35748#12305
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        OnKeyDown = E_allnameKeyDown
      end
      object LE_RoleName: TcxTextEdit
        Left = 258
        Top = 17
        Width = 112
        Height = 20
        Style.BorderStyle = ebsUltraFlat
        Style.Color = 15658734
        TabOrder = 2
        Text = #12304#31995#32479#40664#35748#12305
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        OnKeyDown = E_allnameKeyDown
      end
      object LE_RolePwd: TcxTextEdit
        Left = 258
        Top = 41
        Width = 112
        Height = 20
        Properties.EchoMode = eemPassword
        Style.BorderStyle = ebsUltraFlat
        Style.Color = 15658734
        TabOrder = 3
        Text = #12304#31995#32479#40664#35748#12305
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        OnKeyDown = E_allnameKeyDown
      end
      object RB_user: TcxRadioButton
        Left = 15
        Top = 78
        Width = 60
        Height = 16
        Caption = #25163#24037#22791#20221
        Checked = True
        TabOrder = 4
        TabStop = True
        OnClick = RB_userClick
      end
      object RB_auto: TcxRadioButton
        Left = 89
        Top = 78
        Width = 126
        Height = 16
        Caption = #31995#32479#20851#38381#26102#33258#21160#22791#20221
        TabOrder = 5
        OnClick = RB_autoClick
      end
      object E_backupdays: TcxSpinEdit
        Left = 303
        Top = 77
        Width = 60
        Height = 20
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.MaxValue = 30.000000000000000000
        Properties.MinValue = 1.000000000000000000
        Properties.OnChange = E_allnameChange
        Style.Color = 15658734
        Style.ButtonStyle = btsHotFlat
        TabOrder = 6
        Value = 1
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
      end
    end
  end
end
