object Frm_Test: TFrm_Test
  Left = 192
  Top = 114
  Width = 1411
  Height = 749
  Caption = 'Frm_Test'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid2: TcxGrid
    Left = 80
    Top = 16
    Width = 1001
    Height = 385
    TabOrder = 0
    RootLevelOptions.DetailTabsPosition = dtpTop
    object cxGrid2DBTableView1: TcxGridDBTableView
      DataController.DataSource = DataSource1
      DataController.DetailKeyFieldNames = 'FOrderID'
      DataController.KeyFieldNames = 'FOrderID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      object cxGrid2DBTableView1FOrderID: TcxGridDBColumn
        DataBinding.FieldName = 'FOrderID'
      end
      object cxGrid2DBTableView1FOrderNo: TcxGridDBColumn
        DataBinding.FieldName = 'FOrderNo'
      end
      object cxGrid2DBTableView1FOrderNum: TcxGridDBColumn
        DataBinding.FieldName = 'FOrderNum'
      end
      object cxGrid2DBTableView1FOrderDate: TcxGridDBColumn
        DataBinding.FieldName = 'FOrderDate'
      end
      object cxGrid2DBTableView1FSupplierId: TcxGridDBColumn
        DataBinding.FieldName = 'FSupplierId'
      end
      object cxGrid2DBTableView1FItem3003: TcxGridDBColumn
        DataBinding.FieldName = 'FItem3003'
      end
      object cxGrid2DBTableView1FItem3003Name: TcxGridDBColumn
        DataBinding.FieldName = 'FItem3003Name'
      end
      object cxGrid2DBTableView1FOrderReMark: TcxGridDBColumn
        DataBinding.FieldName = 'FOrderReMark'
      end
      object cxGrid2DBTableView1sumFOrderAmount: TcxGridDBColumn
        DataBinding.FieldName = 'sumFOrderAmount'
      end
      object cxGrid2DBTableView1FIsK3Imp: TcxGridDBColumn
        DataBinding.FieldName = 'FIsK3Imp'
      end
      object cxGrid2DBTableView1FK3BillNo: TcxGridDBColumn
        DataBinding.FieldName = 'FK3BillNo'
      end
      object cxGrid2DBTableView1FPrecastDate: TcxGridDBColumn
        DataBinding.FieldName = 'FPrecastDate'
      end
      object cxGrid2DBTableView1FFactDate: TcxGridDBColumn
        DataBinding.FieldName = 'FFactDate'
      end
      object cxGrid2DBTableView1FPaymentMode: TcxGridDBColumn
        DataBinding.FieldName = 'FPaymentMode'
      end
      object cxGrid2DBTableView1FInvoiceStatus: TcxGridDBColumn
        DataBinding.FieldName = 'FInvoiceStatus'
      end
      object cxGrid2DBTableView1FOrderStatus: TcxGridDBColumn
        DataBinding.FieldName = 'FOrderStatus'
      end
      object cxGrid2DBTableView1FStatusNotes: TcxGridDBColumn
        DataBinding.FieldName = 'FStatusNotes'
      end
      object cxGrid2DBTableView1FInvoice: TcxGridDBColumn
        DataBinding.FieldName = 'FInvoice'
      end
      object cxGrid2DBTableView1FOrderUserNum: TcxGridDBColumn
        DataBinding.FieldName = 'FOrderUserNum'
      end
      object cxGrid2DBTableView1FOrderUserDate: TcxGridDBColumn
        DataBinding.FieldName = 'FOrderUserDate'
      end
      object cxGrid2DBTableView1FOrderAudit: TcxGridDBColumn
        DataBinding.FieldName = 'FOrderAudit'
      end
      object cxGrid2DBTableView1FOrderAuditDate: TcxGridDBColumn
        DataBinding.FieldName = 'FOrderAuditDate'
      end
      object cxGrid2DBTableView1FTakeID: TcxGridDBColumn
        DataBinding.FieldName = 'FTakeID'
      end
      object cxGrid2DBTableView1FBranchFileNo: TcxGridDBColumn
        DataBinding.FieldName = 'FBranchFileNo'
      end
      object cxGrid2DBTableView1FSupplierName: TcxGridDBColumn
        DataBinding.FieldName = 'FSupplierName'
      end
      object cxGrid2DBTableView1FBranchItemNumber: TcxGridDBColumn
        DataBinding.FieldName = 'FBranchItemNumber'
      end
      object cxGrid2DBTableView1FDepartmentName: TcxGridDBColumn
        DataBinding.FieldName = 'FDepartmentName'
      end
      object cxGrid2DBTableView1FClientShortName: TcxGridDBColumn
        DataBinding.FieldName = 'FClientShortName'
      end
      object cxGrid2DBTableView1FSupplier: TcxGridDBColumn
        DataBinding.FieldName = 'FSupplier'
      end
      object cxGrid2DBTableView1FDateNumber: TcxGridDBColumn
        DataBinding.FieldName = 'FDateNumber'
      end
      object cxGrid2DBTableView1FSupplierNumber: TcxGridDBColumn
        DataBinding.FieldName = 'FSupplierNumber'
      end
    end
    object cxGrid2DBCardView1: TcxGridDBCardView
      DataController.DataSource = DataSource2
      DataController.DetailKeyFieldNames = 'FOrderID'
      DataController.KeyFieldNames = 'FOrderID'
      DataController.MasterKeyFieldNames = 'FOrderID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      object cxGrid2DBCardView1FOrderListID: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FOrderListID'
      end
      object cxGrid2DBCardView1FOrderID: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FOrderID'
      end
      object cxGrid2DBCardView1FTakeListID: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FTakeListID'
      end
      object cxGrid2DBCardView1FOrderNo: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FOrderNo'
      end
      object cxGrid2DBCardView1FDepartmentNum: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FDepartmentNum'
      end
      object cxGrid2DBCardView1FOrderNumber: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FOrderNumber'
      end
      object cxGrid2DBCardView1FOrderNum: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FOrderNum'
      end
      object cxGrid2DBCardView1FOrderListNum: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FOrderListNum'
      end
      object cxGrid2DBCardView1FOrderDate: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FOrderDate'
      end
      object cxGrid2DBCardView1FOrderYear: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FOrderYear'
      end
      object cxGrid2DBCardView1FOrderMonth: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FOrderMonth'
      end
      object cxGrid2DBCardView1FK3ItemID: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FK3ItemID'
      end
      object cxGrid2DBCardView1FNumber: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FNumber'
      end
      object cxGrid2DBCardView1FK3Name: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FK3Name'
      end
      object cxGrid2DBCardView1FK3Model: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FK3Model'
      end
      object cxGrid2DBCardView1FK3UnitName: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FK3UnitName'
      end
      object cxGrid2DBCardView1FAskQry: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FAskQry'
      end
      object cxGrid2DBCardView1FOrderQry: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FOrderQry'
      end
      object cxGrid2DBCardView1FOrderPrice: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FOrderPrice'
      end
      object cxGrid2DBCardView1FTaxRate: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FTaxRate'
      end
      object cxGrid2DBCardView1FTaxPrice: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FTaxPrice'
      end
      object cxGrid2DBCardView1FOrderAmount: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FOrderAmount'
      end
      object cxGrid2DBCardView1FTaxAmount: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FTaxAmount'
      end
      object cxGrid2DBCardView1FOrderListReMark: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FOrderListReMark'
      end
      object cxGrid2DBCardView1FSupplierId: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FSupplierId'
      end
      object cxGrid2DBCardView1FItem3003: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FItem3003'
      end
      object cxGrid2DBCardView1FItem3003Name: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FItem3003Name'
      end
      object cxGrid2DBCardView1FOrderAudit: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FOrderAudit'
      end
      object cxGrid2DBCardView1FOrderAuditDate: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FOrderAuditDate'
      end
      object cxGrid2DBCardView1FOrderStatus: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FOrderStatus'
      end
      object cxGrid2DBCardView1FStatusNotes: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FStatusNotes'
      end
      object cxGrid2DBCardView1FInvoice: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FInvoice'
      end
      object cxGrid2DBCardView1FSupplierName: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FSupplierName'
      end
      object cxGrid2DBCardView1FK3ID: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FK3ID'
      end
      object cxGrid2DBCardView1FOrderReMark: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FOrderReMark'
      end
      object cxGrid2DBCardView1FBranchFileNo: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FBranchFileNo'
      end
      object cxGrid2DBCardView1FDepartmentID: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FDepartmentID'
      end
      object cxGrid2DBCardView1FDepartmentName: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FDepartmentName'
      end
      object cxGrid2DBCardView1FProductName: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FProductName'
      end
      object cxGrid2DBCardView1FItemlb: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FItemlb'
      end
      object cxGrid2DBCardView1FItemNumber: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FItemNumber'
      end
      object cxGrid2DBCardView1FBranchItemNumber: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FBranchItemNumber'
      end
      object cxGrid2DBCardView1FClientFullName: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FClientFullName'
      end
      object cxGrid2DBCardView1FTakeID: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FTakeID'
      end
      object cxGrid2DBCardView1FTakeNumber: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FTakeNumber'
      end
      object cxGrid2DBCardView1FItemListId: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FItemListId'
      end
      object cxGrid2DBCardView1FpartsNumber: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FpartsNumber'
      end
      object cxGrid2DBCardView1FSupplierNumber: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FSupplierNumber'
      end
      object cxGrid2DBCardView1FPartsName: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FPartsName'
      end
      object cxGrid2DBCardView1FItemNo: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FItemNo'
      end
      object cxGrid2DBCardView1FClientShortName: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FClientShortName'
      end
      object cxGrid2DBCardView1FK3ClientFullName: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FK3ClientFullName'
      end
      object cxGrid2DBCardView1FFullNumber: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FFullNumber'
      end
      object cxGrid2DBCardView1FDateNumber: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FDateNumber'
      end
      object cxGrid2DBCardView1FIsK3Imp: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FIsK3Imp'
      end
      object cxGrid2DBCardView1FK3BillNo: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FK3BillNo'
      end
      object cxGrid2DBCardView1FPrecastDate: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FPrecastDate'
      end
      object cxGrid2DBCardView1FFactDate: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FFactDate'
      end
      object cxGrid2DBCardView1FPaymentMode: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FPaymentMode'
      end
      object cxGrid2DBCardView1FInvoiceStatus: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FInvoiceStatus'
      end
      object cxGrid2DBCardView1FOrderUserNum: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FOrderUserNum'
      end
      object cxGrid2DBCardView1FOrderUserDate: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FOrderUserDate'
      end
    end
    object cxGrid2Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
      Options.DetailTabsPosition = dtpTop
      object cxGrid2Level2: TcxGridLevel
        GridView = cxGrid2DBCardView1
      end
    end
  end
  object cxGrid1: TcxGrid
    Left = 96
    Top = 592
    Width = 1001
    Height = 137
    TabOrder = 1
    RootLevelOptions.DetailTabsPosition = dtpTop
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = DataSource2
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      object cxGrid1DBTableView1FOrderListID: TcxGridDBColumn
        DataBinding.FieldName = 'FOrderListID'
      end
      object cxGrid1DBTableView1FOrderID: TcxGridDBColumn
        DataBinding.FieldName = 'FOrderID'
      end
      object cxGrid1DBTableView1FTakeListID: TcxGridDBColumn
        DataBinding.FieldName = 'FTakeListID'
      end
      object cxGrid1DBTableView1FOrderNo: TcxGridDBColumn
        DataBinding.FieldName = 'FOrderNo'
      end
      object cxGrid1DBTableView1FDepartmentNum: TcxGridDBColumn
        DataBinding.FieldName = 'FDepartmentNum'
      end
      object cxGrid1DBTableView1FOrderNumber: TcxGridDBColumn
        DataBinding.FieldName = 'FOrderNumber'
      end
      object cxGrid1DBTableView1FOrderNum: TcxGridDBColumn
        DataBinding.FieldName = 'FOrderNum'
      end
      object cxGrid1DBTableView1FOrderListNum: TcxGridDBColumn
        DataBinding.FieldName = 'FOrderListNum'
      end
      object cxGrid1DBTableView1FOrderDate: TcxGridDBColumn
        DataBinding.FieldName = 'FOrderDate'
      end
      object cxGrid1DBTableView1FOrderYear: TcxGridDBColumn
        DataBinding.FieldName = 'FOrderYear'
      end
      object cxGrid1DBTableView1FOrderMonth: TcxGridDBColumn
        DataBinding.FieldName = 'FOrderMonth'
      end
      object cxGrid1DBTableView1FK3ItemID: TcxGridDBColumn
        DataBinding.FieldName = 'FK3ItemID'
      end
      object cxGrid1DBTableView1FNumber: TcxGridDBColumn
        DataBinding.FieldName = 'FNumber'
      end
      object cxGrid1DBTableView1FK3Name: TcxGridDBColumn
        DataBinding.FieldName = 'FK3Name'
      end
      object cxGrid1DBTableView1FK3Model: TcxGridDBColumn
        DataBinding.FieldName = 'FK3Model'
      end
      object cxGrid1DBTableView1FK3UnitName: TcxGridDBColumn
        DataBinding.FieldName = 'FK3UnitName'
      end
      object cxGrid1DBTableView1FAskQry: TcxGridDBColumn
        DataBinding.FieldName = 'FAskQry'
      end
      object cxGrid1DBTableView1FOrderQry: TcxGridDBColumn
        DataBinding.FieldName = 'FOrderQry'
      end
      object cxGrid1DBTableView1FOrderPrice: TcxGridDBColumn
        DataBinding.FieldName = 'FOrderPrice'
      end
      object cxGrid1DBTableView1FTaxRate: TcxGridDBColumn
        DataBinding.FieldName = 'FTaxRate'
      end
      object cxGrid1DBTableView1FTaxPrice: TcxGridDBColumn
        DataBinding.FieldName = 'FTaxPrice'
      end
      object cxGrid1DBTableView1FOrderAmount: TcxGridDBColumn
        DataBinding.FieldName = 'FOrderAmount'
      end
      object cxGrid1DBTableView1FTaxAmount: TcxGridDBColumn
        DataBinding.FieldName = 'FTaxAmount'
      end
      object cxGrid1DBTableView1FOrderListReMark: TcxGridDBColumn
        DataBinding.FieldName = 'FOrderListReMark'
      end
      object cxGrid1DBTableView1FSupplierId: TcxGridDBColumn
        DataBinding.FieldName = 'FSupplierId'
      end
      object cxGrid1DBTableView1FItem3003: TcxGridDBColumn
        DataBinding.FieldName = 'FItem3003'
      end
      object cxGrid1DBTableView1FItem3003Name: TcxGridDBColumn
        DataBinding.FieldName = 'FItem3003Name'
      end
      object cxGrid1DBTableView1FOrderAudit: TcxGridDBColumn
        DataBinding.FieldName = 'FOrderAudit'
      end
      object cxGrid1DBTableView1FOrderAuditDate: TcxGridDBColumn
        DataBinding.FieldName = 'FOrderAuditDate'
      end
      object cxGrid1DBTableView1FOrderStatus: TcxGridDBColumn
        DataBinding.FieldName = 'FOrderStatus'
      end
      object cxGrid1DBTableView1FStatusNotes: TcxGridDBColumn
        DataBinding.FieldName = 'FStatusNotes'
      end
      object cxGrid1DBTableView1FInvoice: TcxGridDBColumn
        DataBinding.FieldName = 'FInvoice'
      end
      object cxGrid1DBTableView1FSupplierName: TcxGridDBColumn
        DataBinding.FieldName = 'FSupplierName'
      end
      object cxGrid1DBTableView1FK3ID: TcxGridDBColumn
        DataBinding.FieldName = 'FK3ID'
      end
      object cxGrid1DBTableView1FOrderReMark: TcxGridDBColumn
        DataBinding.FieldName = 'FOrderReMark'
      end
      object cxGrid1DBTableView1FBranchFileNo: TcxGridDBColumn
        DataBinding.FieldName = 'FBranchFileNo'
      end
      object cxGrid1DBTableView1FDepartmentID: TcxGridDBColumn
        DataBinding.FieldName = 'FDepartmentID'
      end
      object cxGrid1DBTableView1FDepartmentName: TcxGridDBColumn
        DataBinding.FieldName = 'FDepartmentName'
      end
      object cxGrid1DBTableView1FProductName: TcxGridDBColumn
        DataBinding.FieldName = 'FProductName'
      end
      object cxGrid1DBTableView1FItemlb: TcxGridDBColumn
        DataBinding.FieldName = 'FItemlb'
      end
      object cxGrid1DBTableView1FItemNumber: TcxGridDBColumn
        DataBinding.FieldName = 'FItemNumber'
      end
      object cxGrid1DBTableView1FBranchItemNumber: TcxGridDBColumn
        DataBinding.FieldName = 'FBranchItemNumber'
      end
      object cxGrid1DBTableView1FClientFullName: TcxGridDBColumn
        DataBinding.FieldName = 'FClientFullName'
      end
      object cxGrid1DBTableView1FTakeID: TcxGridDBColumn
        DataBinding.FieldName = 'FTakeID'
      end
      object cxGrid1DBTableView1FTakeNumber: TcxGridDBColumn
        DataBinding.FieldName = 'FTakeNumber'
      end
      object cxGrid1DBTableView1FItemListId: TcxGridDBColumn
        DataBinding.FieldName = 'FItemListId'
      end
      object cxGrid1DBTableView1FpartsNumber: TcxGridDBColumn
        DataBinding.FieldName = 'FpartsNumber'
      end
      object cxGrid1DBTableView1FSupplierNumber: TcxGridDBColumn
        DataBinding.FieldName = 'FSupplierNumber'
      end
      object cxGrid1DBTableView1FPartsName: TcxGridDBColumn
        DataBinding.FieldName = 'FPartsName'
      end
      object cxGrid1DBTableView1FItemNo: TcxGridDBColumn
        DataBinding.FieldName = 'FItemNo'
      end
      object cxGrid1DBTableView1FClientShortName: TcxGridDBColumn
        DataBinding.FieldName = 'FClientShortName'
      end
      object cxGrid1DBTableView1FK3ClientFullName: TcxGridDBColumn
        DataBinding.FieldName = 'FK3ClientFullName'
      end
      object cxGrid1DBTableView1FFullNumber: TcxGridDBColumn
        DataBinding.FieldName = 'FFullNumber'
      end
      object cxGrid1DBTableView1FDateNumber: TcxGridDBColumn
        DataBinding.FieldName = 'FDateNumber'
      end
      object cxGrid1DBTableView1FIsK3Imp: TcxGridDBColumn
        DataBinding.FieldName = 'FIsK3Imp'
      end
      object cxGrid1DBTableView1FK3BillNo: TcxGridDBColumn
        DataBinding.FieldName = 'FK3BillNo'
      end
      object cxGrid1DBTableView1FPrecastDate: TcxGridDBColumn
        DataBinding.FieldName = 'FPrecastDate'
      end
      object cxGrid1DBTableView1FFactDate: TcxGridDBColumn
        DataBinding.FieldName = 'FFactDate'
      end
      object cxGrid1DBTableView1FPaymentMode: TcxGridDBColumn
        DataBinding.FieldName = 'FPaymentMode'
      end
      object cxGrid1DBTableView1FInvoiceStatus: TcxGridDBColumn
        DataBinding.FieldName = 'FInvoiceStatus'
      end
      object cxGrid1DBTableView1FOrderUserNum: TcxGridDBColumn
        DataBinding.FieldName = 'FOrderUserNum'
      end
      object cxGrid1DBTableView1FOrderUserDate: TcxGridDBColumn
        DataBinding.FieldName = 'FOrderUserDate'
      end
    end
    object cxGrid1Level1: TcxGridLevel
    end
  end
  object cxGrid3: TcxGrid
    Left = 56
    Top = 424
    Width = 1105
    Height = 200
    TabOrder = 2
    object cxGrid3DBTableView1: TcxGridDBTableView
      DataController.DataSource = DataSource2
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = True
      NavigatorButtons.PriorPage.Visible = True
      NavigatorButtons.Prior.Visible = True
      NavigatorButtons.Next.Visible = True
      NavigatorButtons.NextPage.Visible = True
      NavigatorButtons.Last.Visible = True
      NavigatorButtons.Insert.Visible = True
      NavigatorButtons.Delete.Visible = True
      NavigatorButtons.Edit.Visible = True
      NavigatorButtons.Post.Visible = True
      NavigatorButtons.Cancel.Visible = True
      NavigatorButtons.Refresh.Visible = True
      NavigatorButtons.SaveBookmark.Visible = True
      NavigatorButtons.GotoBookmark.Visible = True
      NavigatorButtons.Filter.Visible = True
      object cxGrid3DBTableView1DBColumn1: TcxGridDBColumn
      end
      object cxGrid3DBTableView1DBColumn2: TcxGridDBColumn
      end
      object cxGrid3DBTableView1DBColumn3: TcxGridDBColumn
      end
      object cxGrid3DBTableView1DBColumn4: TcxGridDBColumn
      end
      object cxGrid3DBTableView1FOrderListID: TcxGridDBColumn
        DataBinding.FieldName = 'FOrderListID'
      end
      object cxGrid3DBTableView1FOrderID: TcxGridDBColumn
        DataBinding.FieldName = 'FOrderID'
      end
      object cxGrid3DBTableView1FTakeListID: TcxGridDBColumn
        DataBinding.FieldName = 'FTakeListID'
      end
      object cxGrid3DBTableView1FOrderNo: TcxGridDBColumn
        DataBinding.FieldName = 'FOrderNo'
      end
      object cxGrid3DBTableView1FDepartmentNum: TcxGridDBColumn
        DataBinding.FieldName = 'FDepartmentNum'
      end
      object cxGrid3DBTableView1FOrderNumber: TcxGridDBColumn
        DataBinding.FieldName = 'FOrderNumber'
      end
      object cxGrid3DBTableView1FOrderNum: TcxGridDBColumn
        DataBinding.FieldName = 'FOrderNum'
      end
      object cxGrid3DBTableView1FOrderListNum: TcxGridDBColumn
        DataBinding.FieldName = 'FOrderListNum'
      end
      object cxGrid3DBTableView1FOrderDate: TcxGridDBColumn
        DataBinding.FieldName = 'FOrderDate'
      end
      object cxGrid3DBTableView1FOrderYear: TcxGridDBColumn
        DataBinding.FieldName = 'FOrderYear'
      end
      object cxGrid3DBTableView1FOrderMonth: TcxGridDBColumn
        DataBinding.FieldName = 'FOrderMonth'
      end
      object cxGrid3DBTableView1FK3ItemID: TcxGridDBColumn
        DataBinding.FieldName = 'FK3ItemID'
      end
      object cxGrid3DBTableView1FNumber: TcxGridDBColumn
        DataBinding.FieldName = 'FNumber'
      end
      object cxGrid3DBTableView1FK3Name: TcxGridDBColumn
        DataBinding.FieldName = 'FK3Name'
      end
      object cxGrid3DBTableView1FK3Model: TcxGridDBColumn
        DataBinding.FieldName = 'FK3Model'
      end
      object cxGrid3DBTableView1FK3UnitName: TcxGridDBColumn
        DataBinding.FieldName = 'FK3UnitName'
      end
      object cxGrid3DBTableView1FAskQry: TcxGridDBColumn
        DataBinding.FieldName = 'FAskQry'
      end
      object cxGrid3DBTableView1FOrderQry: TcxGridDBColumn
        DataBinding.FieldName = 'FOrderQry'
      end
      object cxGrid3DBTableView1FOrderPrice: TcxGridDBColumn
        DataBinding.FieldName = 'FOrderPrice'
      end
      object cxGrid3DBTableView1FTaxRate: TcxGridDBColumn
        DataBinding.FieldName = 'FTaxRate'
      end
      object cxGrid3DBTableView1FTaxPrice: TcxGridDBColumn
        DataBinding.FieldName = 'FTaxPrice'
      end
      object cxGrid3DBTableView1FOrderAmount: TcxGridDBColumn
        DataBinding.FieldName = 'FOrderAmount'
      end
      object cxGrid3DBTableView1FTaxAmount: TcxGridDBColumn
        DataBinding.FieldName = 'FTaxAmount'
      end
      object cxGrid3DBTableView1FOrderListReMark: TcxGridDBColumn
        DataBinding.FieldName = 'FOrderListReMark'
      end
      object cxGrid3DBTableView1FSupplierId: TcxGridDBColumn
        DataBinding.FieldName = 'FSupplierId'
      end
      object cxGrid3DBTableView1FItem3003: TcxGridDBColumn
        DataBinding.FieldName = 'FItem3003'
      end
      object cxGrid3DBTableView1FItem3003Name: TcxGridDBColumn
        DataBinding.FieldName = 'FItem3003Name'
      end
      object cxGrid3DBTableView1FOrderAudit: TcxGridDBColumn
        DataBinding.FieldName = 'FOrderAudit'
      end
      object cxGrid3DBTableView1FOrderAuditDate: TcxGridDBColumn
        DataBinding.FieldName = 'FOrderAuditDate'
      end
      object cxGrid3DBTableView1FOrderStatus: TcxGridDBColumn
        DataBinding.FieldName = 'FOrderStatus'
      end
      object cxGrid3DBTableView1FStatusNotes: TcxGridDBColumn
        DataBinding.FieldName = 'FStatusNotes'
      end
      object cxGrid3DBTableView1FInvoice: TcxGridDBColumn
        DataBinding.FieldName = 'FInvoice'
      end
      object cxGrid3DBTableView1FSupplierName: TcxGridDBColumn
        DataBinding.FieldName = 'FSupplierName'
      end
      object cxGrid3DBTableView1FK3ID: TcxGridDBColumn
        DataBinding.FieldName = 'FK3ID'
      end
      object cxGrid3DBTableView1FOrderReMark: TcxGridDBColumn
        DataBinding.FieldName = 'FOrderReMark'
      end
      object cxGrid3DBTableView1FBranchFileNo: TcxGridDBColumn
        DataBinding.FieldName = 'FBranchFileNo'
      end
      object cxGrid3DBTableView1FDepartmentID: TcxGridDBColumn
        DataBinding.FieldName = 'FDepartmentID'
      end
      object cxGrid3DBTableView1FDepartmentName: TcxGridDBColumn
        DataBinding.FieldName = 'FDepartmentName'
      end
      object cxGrid3DBTableView1FProductName: TcxGridDBColumn
        DataBinding.FieldName = 'FProductName'
      end
      object cxGrid3DBTableView1FItemlb: TcxGridDBColumn
        DataBinding.FieldName = 'FItemlb'
      end
      object cxGrid3DBTableView1FItemNumber: TcxGridDBColumn
        DataBinding.FieldName = 'FItemNumber'
      end
      object cxGrid3DBTableView1FBranchItemNumber: TcxGridDBColumn
        DataBinding.FieldName = 'FBranchItemNumber'
      end
      object cxGrid3DBTableView1FClientFullName: TcxGridDBColumn
        DataBinding.FieldName = 'FClientFullName'
      end
      object cxGrid3DBTableView1FTakeID: TcxGridDBColumn
        DataBinding.FieldName = 'FTakeID'
      end
      object cxGrid3DBTableView1FTakeNumber: TcxGridDBColumn
        DataBinding.FieldName = 'FTakeNumber'
      end
      object cxGrid3DBTableView1FItemListId: TcxGridDBColumn
        DataBinding.FieldName = 'FItemListId'
      end
      object cxGrid3DBTableView1FpartsNumber: TcxGridDBColumn
        DataBinding.FieldName = 'FpartsNumber'
      end
      object cxGrid3DBTableView1FSupplierNumber: TcxGridDBColumn
        DataBinding.FieldName = 'FSupplierNumber'
      end
      object cxGrid3DBTableView1FPartsName: TcxGridDBColumn
        DataBinding.FieldName = 'FPartsName'
      end
      object cxGrid3DBTableView1FItemNo: TcxGridDBColumn
        DataBinding.FieldName = 'FItemNo'
      end
      object cxGrid3DBTableView1FClientShortName: TcxGridDBColumn
        DataBinding.FieldName = 'FClientShortName'
      end
      object cxGrid3DBTableView1FK3ClientFullName: TcxGridDBColumn
        DataBinding.FieldName = 'FK3ClientFullName'
      end
      object cxGrid3DBTableView1FFullNumber: TcxGridDBColumn
        DataBinding.FieldName = 'FFullNumber'
      end
      object cxGrid3DBTableView1FDateNumber: TcxGridDBColumn
        DataBinding.FieldName = 'FDateNumber'
      end
      object cxGrid3DBTableView1FIsK3Imp: TcxGridDBColumn
        DataBinding.FieldName = 'FIsK3Imp'
      end
      object cxGrid3DBTableView1FK3BillNo: TcxGridDBColumn
        DataBinding.FieldName = 'FK3BillNo'
      end
      object cxGrid3DBTableView1FPrecastDate: TcxGridDBColumn
        DataBinding.FieldName = 'FPrecastDate'
      end
      object cxGrid3DBTableView1FFactDate: TcxGridDBColumn
        DataBinding.FieldName = 'FFactDate'
      end
      object cxGrid3DBTableView1FPaymentMode: TcxGridDBColumn
        DataBinding.FieldName = 'FPaymentMode'
      end
      object cxGrid3DBTableView1FInvoiceStatus: TcxGridDBColumn
        DataBinding.FieldName = 'FInvoiceStatus'
      end
      object cxGrid3DBTableView1FOrderUserNum: TcxGridDBColumn
        DataBinding.FieldName = 'FOrderUserNum'
      end
      object cxGrid3DBTableView1FOrderUserDate: TcxGridDBColumn
        DataBinding.FieldName = 'FOrderUserDate'
      end
    end
    object cxGrid3DBCardView1: TcxGridDBCardView
      DataController.DataSource = DataSource2
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      object cxGrid3DBCardView1FOrderListID: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FOrderListID'
      end
      object cxGrid3DBCardView1FOrderID: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FOrderID'
      end
      object cxGrid3DBCardView1FTakeListID: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FTakeListID'
      end
      object cxGrid3DBCardView1FOrderNo: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FOrderNo'
      end
      object cxGrid3DBCardView1FDepartmentNum: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FDepartmentNum'
      end
      object cxGrid3DBCardView1FOrderNumber: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FOrderNumber'
      end
      object cxGrid3DBCardView1FOrderNum: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FOrderNum'
      end
      object cxGrid3DBCardView1FOrderListNum: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FOrderListNum'
      end
      object cxGrid3DBCardView1FOrderDate: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FOrderDate'
      end
      object cxGrid3DBCardView1FOrderYear: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FOrderYear'
      end
      object cxGrid3DBCardView1FOrderMonth: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FOrderMonth'
      end
      object cxGrid3DBCardView1FK3ItemID: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FK3ItemID'
      end
      object cxGrid3DBCardView1FNumber: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FNumber'
      end
      object cxGrid3DBCardView1FK3Name: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FK3Name'
      end
      object cxGrid3DBCardView1FK3Model: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FK3Model'
      end
      object cxGrid3DBCardView1FK3UnitName: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FK3UnitName'
      end
      object cxGrid3DBCardView1FAskQry: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FAskQry'
      end
      object cxGrid3DBCardView1FOrderQry: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FOrderQry'
      end
      object cxGrid3DBCardView1FOrderPrice: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FOrderPrice'
      end
      object cxGrid3DBCardView1FTaxRate: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FTaxRate'
      end
      object cxGrid3DBCardView1FTaxPrice: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FTaxPrice'
      end
      object cxGrid3DBCardView1FOrderAmount: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FOrderAmount'
      end
      object cxGrid3DBCardView1FTaxAmount: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FTaxAmount'
      end
      object cxGrid3DBCardView1FOrderListReMark: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FOrderListReMark'
      end
      object cxGrid3DBCardView1FSupplierId: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FSupplierId'
      end
      object cxGrid3DBCardView1FItem3003: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FItem3003'
      end
      object cxGrid3DBCardView1FItem3003Name: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FItem3003Name'
      end
      object cxGrid3DBCardView1FOrderAudit: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FOrderAudit'
      end
      object cxGrid3DBCardView1FOrderAuditDate: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FOrderAuditDate'
      end
      object cxGrid3DBCardView1FOrderStatus: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FOrderStatus'
      end
      object cxGrid3DBCardView1FStatusNotes: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FStatusNotes'
      end
      object cxGrid3DBCardView1FInvoice: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FInvoice'
      end
      object cxGrid3DBCardView1FSupplierName: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FSupplierName'
      end
      object cxGrid3DBCardView1FK3ID: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FK3ID'
      end
      object cxGrid3DBCardView1FOrderReMark: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FOrderReMark'
      end
      object cxGrid3DBCardView1FBranchFileNo: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FBranchFileNo'
      end
      object cxGrid3DBCardView1FDepartmentID: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FDepartmentID'
      end
      object cxGrid3DBCardView1FDepartmentName: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FDepartmentName'
      end
      object cxGrid3DBCardView1FProductName: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FProductName'
      end
      object cxGrid3DBCardView1FItemlb: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FItemlb'
      end
      object cxGrid3DBCardView1FItemNumber: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FItemNumber'
      end
      object cxGrid3DBCardView1FBranchItemNumber: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FBranchItemNumber'
      end
      object cxGrid3DBCardView1FClientFullName: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FClientFullName'
      end
      object cxGrid3DBCardView1FTakeID: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FTakeID'
      end
      object cxGrid3DBCardView1FTakeNumber: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FTakeNumber'
      end
      object cxGrid3DBCardView1FItemListId: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FItemListId'
      end
      object cxGrid3DBCardView1FpartsNumber: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FpartsNumber'
      end
      object cxGrid3DBCardView1FSupplierNumber: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FSupplierNumber'
      end
      object cxGrid3DBCardView1FPartsName: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FPartsName'
      end
      object cxGrid3DBCardView1FItemNo: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FItemNo'
      end
      object cxGrid3DBCardView1FClientShortName: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FClientShortName'
      end
      object cxGrid3DBCardView1FK3ClientFullName: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FK3ClientFullName'
      end
      object cxGrid3DBCardView1FFullNumber: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FFullNumber'
      end
      object cxGrid3DBCardView1FDateNumber: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FDateNumber'
      end
      object cxGrid3DBCardView1FIsK3Imp: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FIsK3Imp'
      end
      object cxGrid3DBCardView1FK3BillNo: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FK3BillNo'
      end
      object cxGrid3DBCardView1FPrecastDate: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FPrecastDate'
      end
      object cxGrid3DBCardView1FFactDate: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FFactDate'
      end
      object cxGrid3DBCardView1FPaymentMode: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FPaymentMode'
      end
      object cxGrid3DBCardView1FInvoiceStatus: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FInvoiceStatus'
      end
      object cxGrid3DBCardView1FOrderUserNum: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FOrderUserNum'
      end
      object cxGrid3DBCardView1FOrderUserDate: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FOrderUserDate'
      end
    end
    object cxGrid3Level1: TcxGridLevel
      GridView = cxGrid3DBCardView1
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=2233815;Persist Security Info=True;' +
      'User ID=sa;Initial Catalog=DesignBom;Data Source=192.168.111.99'
    Provider = 'SQLOLEDB.1'
    Left = 48
    Top = 32
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'V_DesignOrder'
    Left = 88
    Top = 128
  end
  object ADOTable2: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'FOrderID'
    MasterFields = 'FOrderID'
    MasterSource = DataSource1
    TableName = 'V_DesignOrderList'
    Left = 80
    Top = 168
    object ADOTable2FOrderListID: TAutoIncField
      FieldName = 'FOrderListID'
      ReadOnly = True
    end
    object ADOTable2FOrderID: TIntegerField
      FieldName = 'FOrderID'
    end
    object ADOTable2FTakeListID: TIntegerField
      FieldName = 'FTakeListID'
    end
    object ADOTable2FOrderNo: TIntegerField
      FieldName = 'FOrderNo'
    end
    object ADOTable2FDepartmentNum: TWideStringField
      FieldName = 'FDepartmentNum'
      Size = 10
    end
    object ADOTable2FOrderNumber: TWideStringField
      FieldName = 'FOrderNumber'
      ReadOnly = True
      Size = 63
    end
    object ADOTable2FOrderNum: TStringField
      FieldName = 'FOrderNum'
      Size = 8000
    end
    object ADOTable2FOrderListNum: TIntegerField
      FieldName = 'FOrderListNum'
    end
    object ADOTable2FOrderDate: TDateTimeField
      FieldName = 'FOrderDate'
    end
    object ADOTable2FOrderYear: TIntegerField
      FieldName = 'FOrderYear'
      ReadOnly = True
    end
    object ADOTable2FOrderMonth: TIntegerField
      FieldName = 'FOrderMonth'
      ReadOnly = True
    end
    object ADOTable2FK3ItemID: TIntegerField
      FieldName = 'FK3ItemID'
    end
    object ADOTable2FNumber: TStringField
      FieldName = 'FNumber'
      Size = 250
    end
    object ADOTable2FK3Name: TStringField
      FieldName = 'FK3Name'
      Size = 8000
    end
    object ADOTable2FK3Model: TStringField
      FieldName = 'FK3Model'
      Size = 8000
    end
    object ADOTable2FK3UnitName: TStringField
      FieldName = 'FK3UnitName'
    end
    object ADOTable2FAskQry: TIntegerField
      FieldName = 'FAskQry'
      ReadOnly = True
    end
    object ADOTable2FOrderQry: TIntegerField
      FieldName = 'FOrderQry'
      ReadOnly = True
    end
    object ADOTable2FOrderPrice: TBCDField
      FieldName = 'FOrderPrice'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object ADOTable2FTaxRate: TBCDField
      FieldName = 'FTaxRate'
      Precision = 18
      Size = 2
    end
    object ADOTable2FTaxPrice: TBCDField
      FieldName = 'FTaxPrice'
      ReadOnly = True
      Precision = 32
      Size = 16
    end
    object ADOTable2FOrderAmount: TBCDField
      FieldName = 'FOrderAmount'
      ReadOnly = True
      Precision = 32
      Size = 6
    end
    object ADOTable2FTaxAmount: TBCDField
      FieldName = 'FTaxAmount'
      ReadOnly = True
      Precision = 32
      Size = 6
    end
    object ADOTable2FOrderListReMark: TWideStringField
      FieldName = 'FOrderListReMark'
      ReadOnly = True
      Size = 50
    end
    object ADOTable2FSupplierId: TIntegerField
      FieldName = 'FSupplierId'
    end
    object ADOTable2FItem3003: TIntegerField
      FieldName = 'FItem3003'
    end
    object ADOTable2FItem3003Name: TStringField
      FieldName = 'FItem3003Name'
      Size = 255
    end
    object ADOTable2FOrderAudit: TStringField
      FieldName = 'FOrderAudit'
      FixedChar = True
      Size = 10
    end
    object ADOTable2FOrderAuditDate: TDateTimeField
      FieldName = 'FOrderAuditDate'
    end
    object ADOTable2FOrderStatus: TIntegerField
      FieldName = 'FOrderStatus'
    end
    object ADOTable2FStatusNotes: TWideStringField
      FieldName = 'FStatusNotes'
      Size = 50
    end
    object ADOTable2FInvoice: TStringField
      FieldName = 'FInvoice'
      Size = 8
    end
    object ADOTable2FSupplierName: TStringField
      FieldName = 'FSupplierName'
      Size = 255
    end
    object ADOTable2FK3ID: TIntegerField
      FieldName = 'FK3ID'
    end
    object ADOTable2FOrderReMark: TStringField
      FieldName = 'FOrderReMark'
      Size = 50
    end
    object ADOTable2FBranchFileNo: TWideStringField
      FieldName = 'FBranchFileNo'
      Size = 50
    end
    object ADOTable2FDepartmentID: TIntegerField
      FieldName = 'FDepartmentID'
    end
    object ADOTable2FDepartmentName: TWideStringField
      FieldName = 'FDepartmentName'
    end
    object ADOTable2FProductName: TStringField
      FieldName = 'FProductName'
      Size = 50
    end
    object ADOTable2FItemlb: TStringField
      FieldName = 'FItemlb'
      Size = 100
    end
    object ADOTable2FItemNumber: TStringField
      FieldName = 'FItemNumber'
      Size = 50
    end
    object ADOTable2FBranchItemNumber: TWideStringField
      FieldName = 'FBranchItemNumber'
      Size = 41
    end
    object ADOTable2FClientFullName: TStringField
      FieldName = 'FClientFullName'
      Size = 100
    end
    object ADOTable2FTakeID: TIntegerField
      FieldName = 'FTakeID'
    end
    object ADOTable2FTakeNumber: TStringField
      FieldName = 'FTakeNumber'
      Size = 8
    end
    object ADOTable2FItemListId: TIntegerField
      FieldName = 'FItemListId'
    end
    object ADOTable2FpartsNumber: TStringField
      FieldName = 'FpartsNumber'
      Size = 50
    end
    object ADOTable2FSupplierNumber: TWideStringField
      FieldName = 'FSupplierNumber'
      ReadOnly = True
      Size = 277
    end
    object ADOTable2FPartsName: TWideStringField
      FieldName = 'FPartsName'
      Size = 100
    end
    object ADOTable2FItemNo: TStringField
      FieldName = 'FItemNo'
      FixedChar = True
      Size = 4
    end
    object ADOTable2FClientShortName: TStringField
      FieldName = 'FClientShortName'
      Size = 50
    end
    object ADOTable2FK3ClientFullName: TWideStringField
      FieldName = 'FK3ClientFullName'
      ReadOnly = True
      Size = 150
    end
    object ADOTable2FFullNumber: TWideStringField
      FieldName = 'FFullNumber'
      ReadOnly = True
      Size = 4000
    end
    object ADOTable2FDateNumber: TWideStringField
      FieldName = 'FDateNumber'
      ReadOnly = True
      Size = 4000
    end
    object ADOTable2FIsK3Imp: TBooleanField
      FieldName = 'FIsK3Imp'
      ReadOnly = True
    end
    object ADOTable2FK3BillNo: TStringField
      FieldName = 'FK3BillNo'
      ReadOnly = True
      Size = 50
    end
    object ADOTable2FPrecastDate: TDateTimeField
      FieldName = 'FPrecastDate'
    end
    object ADOTable2FFactDate: TDateTimeField
      FieldName = 'FFactDate'
    end
    object ADOTable2FPaymentMode: TWideStringField
      FieldName = 'FPaymentMode'
      FixedChar = True
      Size = 10
    end
    object ADOTable2FInvoiceStatus: TIntegerField
      FieldName = 'FInvoiceStatus'
    end
    object ADOTable2FOrderUserNum: TStringField
      FieldName = 'FOrderUserNum'
      FixedChar = True
      Size = 10
    end
    object ADOTable2FOrderUserDate: TDateTimeField
      FieldName = 'FOrderUserDate'
    end
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 35
    Top = 171
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 35
    Top = 123
  end
end
