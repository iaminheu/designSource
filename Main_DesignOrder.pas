unit Main_DesignOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FrmGridBass, ExtCtrls, StdCtrls, DsFancyButton, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  dxmdaset, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxTextEdit, cxDropDownEdit, cxCalendar, cxMaskEdit, cxContainer, cxLabel,
  cxDBLookupComboBox, ADODB, cxButtonEdit, Grids, DBGrids, ComCtrls, RzShellDialogs,
  ToolWin, ImgList, FR_DSet, FR_DBSet, FR_Class, cxRadioGroup, Buttons,StrUtils,
  cxGroupBox, cxCheckBox, cxCurrencyEdit, RzPanel, RzSplit, RzTabs,IniFiles,
  jpeg, cxLookAndFeelPainters, cxButtons, cxMemo, Menus, ActnList;

type
    TFrm_DesignOrder = class(TFrm_GridBass)
    ImageList: TImageList;
    frReport: TfrReport;
    frDBDataSet: TfrDBDataSet;
    PC_1: TRzPageControl;
    TS_TenderCoe: TRzTabSheet;
    RzSizePanel2: TRzSizePanel;
    Panel1: TPanel;
    TS_Order: TRzTabSheet;
    ToolBar_Order: TToolBar;
    TB_App: TToolButton;
    TB_Edit: TToolButton;
    TB_Del: TToolButton;
    TB_K3: TToolButton;
    ToolButton14: TToolButton;
    TB_Print: TToolButton;
    ToolButton17: TToolButton;
    TB_EXIT: TToolButton;
    RzSizePanel1: TRzSizePanel;
    Panel5: TPanel;
    MData_OrderList: TdxMemData;
    DS_Mdata_OrderList: TDataSource;
    TB_Audit: TToolButton;
    DS_Mdata_Order: TDataSource;
    MData_Order: TdxMemData;
    actionList: TActionList;
    Act_App: TAction;
    Act_Edit: TAction;
    Act_Del: TAction;
    Act_Out: TAction;
    Act_Audit: TAction;
    Act_Status: TAction;
    TB_Submit: TToolButton;
    TB_Check: TToolButton;
    TB_PushDown: TToolButton;
    Act_Submit: TAction;
    Act_Check: TAction;
    Act_PushDown: TAction;
    Act_K3: TAction;
    Act_SetOpen: TAction;
    Act_SetClose: TAction;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    cxGrid_Order: TcxGrid;
    cxGV_Order: TcxGridDBTableView;
    FOrderNum_Order: TcxGridDBColumn;
    FOrderDate_Order: TcxGridDBColumn;
    FPrecastDate_Order: TcxGridDBColumn;
    FFactDate_Order: TcxGridDBColumn;
    FInvoice_Order: TcxGridDBColumn;
    FInvoiceStatus_Order: TcxGridDBColumn;
    FOrderStatusNotes_Order: TcxGridDBColumn;
    FOrderStatus_Order: TcxGridDBColumn;
    FOrderSumAmount_Order: TcxGridDBColumn;
    cxGridDBColumn22_Order: TcxGridDBColumn;
    FOrderReMark_Order: TcxGridDBColumn;
    FOrderWrite_Order: TcxGridDBColumn;
    FOrderWriteDate_Order: TcxGridDBColumn;
    FOrderAudit_Order: TcxGridDBColumn;
    FOrderAuditDate_Order: TcxGridDBColumn;
    FK3BillNo_Order: TcxGridDBColumn;
    FOrderID_Order: TcxGridDBColumn;
    cxGL_Order: TcxGridLevel;
    PageControl3: TPageControl;
    TabSheet5: TTabSheet;
    MData_TenderCoeList: TdxMemData;
    MData_TenderCoeListth: TStringField;
    MData_TenderCoeListmc: TStringField;
    MData_TenderCoeListgg: TStringField;
    MData_TenderCoeListFSumQry: TIntegerField;
    MData_TenderCoeListFTakeDemand: TStringField;
    MData_TenderCoeListFTakeListReMark: TStringField;
    MData_TenderCoeListFSumSuttle: TFloatField;
    MData_TenderCoeListFName: TStringField;
    MData_TenderCoeListFModel: TStringField;
    MData_TenderCoeListUnitName: TStringField;
    MData_TenderCoeListFNumber: TStringField;
    MData_TenderCoeListFk3Name: TStringField;
    MData_TenderCoeListFK3Model: TStringField;
    MData_TenderCoeListFOrderNoQry: TIntegerField;
    DS_Mdata_TenderCoeList: TDataSource;
    DS_Mdata_TenderCoe: TDataSource;
    MData_TenderCoe: TdxMemData;
    MData_TenderCoeFTakeID: TIntegerField;
    MData_TenderCoeFTakeDate: TDateField;
    MData_TenderCoeFItemListId: TIntegerField;
    MData_TenderCoeFBranchFileNo: TStringField;
    MData_TenderCoeFTakeWrite: TStringField;
    MData_TenderCoeFTakeWriteDate: TDateTimeField;
    MData_TenderCoeFItemNumber: TStringField;
    FOrderNo_Order: TcxGridDBColumn;
    Act_Set_MaxNum: TAction;
    Act_Set_MaxID: TAction;
    PC_Tree: TPageControl;
    TS_Item: TTabSheet;
    TS_Write: TTabSheet;
    MyTreeView_Date: TTreeView;
    MyTreeView_Write: TTreeView;
    ToolBar1: TToolBar;
    TB_Ref_Write: TcxButton;
    Act_Ref_TenderCoe: TAction;
    Act_Ref_Item: TAction;
    ToolBar4: TToolBar;
    TB_Ref_Item: TcxButton;
    MData_TenderCoeFPlanTenderDate: TDateField;
    MData_TenderCoeFPlanTenderID: TIntegerField;
    PageControl6: TPageControl;
    TabSheet7: TTabSheet;
    ToolBar5: TToolBar;
    TB_Ref_TenderCoe: TcxButton;
    TabSheet8: TTabSheet;
    MyTreeView3: TTreeView;
    ToolBar6: TToolBar;
    MyTreeView_TenderCoe: TTreeView;
    Act_Ref_Write: TAction;
    FOrderSubmitDate_Order: TcxGridDBColumn;
    FOrderCheck_Order: TcxGridDBColumn;
    FOrderCheckDate_Order: TcxGridDBColumn;
    FOrderPushDown_Order: TcxGridDBColumn;
    FOrderPushDownDate_Order: TcxGridDBColumn;
    cxGrid_TenderCoe: TcxGrid;
    cxGV_TenderCoe: TcxGridDBTableView;
    FTenderCoeNum_TenderCoe: TcxGridDBColumn;
    FTenderCoeDate_TenderCoe: TcxGridDBColumn;
    FTenderCoeReMark_TenderCoe: TcxGridDBColumn;
    FTenderCoeStatusNotes_TenderCoe: TcxGridDBColumn;
    FTenderCoeStatus_TenderCoe: TcxGridDBColumn;
    FTenderCoeWrite_TenderCoe: TcxGridDBColumn;
    FTenderWriteCoeDate_TenderCoe: TcxGridDBColumn;
    FTenderCoeSubmitDate_TenderCoe: TcxGridDBColumn;
    FTenderCoeCheck_TenderCoe: TcxGridDBColumn;
    FTenderCoeCheckDate_TenderCoe: TcxGridDBColumn;
    FTenderCoeAudit_TenderCoe: TcxGridDBColumn;
    FTenderCoeAuditDate_TenderCoe: TcxGridDBColumn;
    FTenderCoePushDown_TenderCoe: TcxGridDBColumn;
    FTenderCoePushDownDate_TenderCoe: TcxGridDBColumn;
    FTenderCoeID_TenderCoe: TcxGridDBColumn;
    FTenderCoeNo_TenderCoe: TcxGridDBColumn;
    FPlanTenderNum_TenderCoe: TcxGridDBColumn;
    cxGL_TenderCoe: TcxGridLevel;
    FSupplierID_Order: TcxGridDBColumn;
    FSupplierName_Order: TcxGridDBColumn;
    FPayMentMode_Order: TcxGridDBColumn;
    FBranchItemId_Order: TcxGridDBColumn;
    FBranchItemNumber_Order: TcxGridDBColumn;
    FClientShortName_Order: TcxGridDBColumn;
    PM: TPopupMenu;
    N_Edit: TMenuItem;
    N_Filter: TMenuItem;
    N_Sort: TMenuItem;
    N_Group: TMenuItem;
    N_Set: TMenuItem;
    N_Out: TMenuItem;
    Act_Menu: TAction;
    Act_Menu_Set: TAction;
    Act_TS_Item: TAction;
    Act_TS_Write: TAction;
    RSP_List: TRzSizePanel;
    Act_TenderCoe_Sel: TAction;
    Action1: TAction;
    ToolBar3: TToolBar;
    ToolButton9: TToolButton;
    ToolButton7: TToolButton;
    TB_EXIT1: TToolButton;
    RzSizePanel3: TRzSizePanel;
    PageControl4: TPageControl;
    TabSheet6: TTabSheet;
    cxGrid_TenderCoeList: TcxGrid;
    cxGV_TenderCoeList: TcxGridDBTableView;
    FTenderCoeListNum_TenderCoeList: TcxGridDBColumn;
    FSupplierName_TenderCoeList: TcxGridDBColumn;
    FNumber_TenderCoeList: TcxGridDBColumn;
    FTakeName_TenderCoeList: TcxGridDBColumn;
    FTakeModel_TenderCoeList: TcxGridDBColumn;
    FTakeUnitName_TenderCoeList: TcxGridDBColumn;
    FTakeSumQry_TenderCoeList: TcxGridDBColumn;
    FPlanTenderQry_TenderCoeList: TcxGridDBColumn;
    FTenderCoeQry_TenderCoeList: TcxGridDBColumn;
    FOrderQry_TenderCoeList: TcxGridDBColumn;
    FOrderPrice_TenderCoeList: TcxGridDBColumn;
    FTaxRate_TenderCoeList: TcxGridDBColumn;
    FOrderAmount_TenderCoeList: TcxGridDBColumn;
    FTenderCoeListID_TenderCoeList: TcxGridDBColumn;
    FSupplierID_TenderCoeList: TcxGridDBColumn;
    FBranchItemID_TenderCoeList: TcxGridDBColumn;
    FBranchItemNumber_TenderCoeList: TcxGridDBColumn;
    FClientShortName_TenderCoeList: TcxGridDBColumn;
    FPaymentMode_TenderCoeList: TcxGridDBColumn;
    FPlanTenderOrder_TenderCoeList: TcxGridDBColumn;
    FPlanTenderOrderID_TenderCoeList: TcxGridDBColumn;
    FTenderCoeNum_TenderCoeList: TcxGridDBColumn;
    FTenderCoeDate_TenderCoeList: TcxGridDBColumn;
    FPlanTenderListDate_TenderCoeList: TcxGridDBColumn;
    FOrderDate_TenderCoeList: TcxGridDBColumn;
    FTenderCoeListReMark_TenderCoeList: TcxGridDBColumn;
    sumFOrderAmount_TenderCoeList: TcxGridDBColumn;
    FPrecastDate_TenderCoeList: TcxGridDBColumn;
    FFactDate_TenderCoeList: TcxGridDBColumn;
    cxGridDBColumn19_TenderCoeList: TcxGridDBColumn;
    FInvoice_TenderCoeList: TcxGridDBColumn;
    FStatusNotes_TenderCoeList: TcxGridDBColumn;
    FOrderStatus_TenderCoeList: TcxGridDBColumn;
    FTakeListID_TenderCoeList: TcxGridDBColumn;
    FItemID_TenderCoeList: TcxGridDBColumn;
    cxGL_TenderCoeList: TcxGridLevel;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    cxGrid_OrderList: TcxGrid;
    cxGV_OrderList: TcxGridDBTableView;
    FOrderNum_OrderList: TcxGridDBColumn;
    FOrderListNum_OrderList: TcxGridDBColumn;
    FSupplierName_OrderList: TcxGridDBColumn;
    FTakeName_OrderList: TcxGridDBColumn;
    FTakeModel_OrderList: TcxGridDBColumn;
    FTakeUnitName_OrderList: TcxGridDBColumn;
    FTakeSumQry_OrderList: TcxGridDBColumn;
    FPlanTenderQry_OrderList: TcxGridDBColumn;
    FTenderCoeQry_OrderList: TcxGridDBColumn;
    FOrderQry_OrderList: TcxGridDBColumn;
    FOrderSumAmount_OrderList: TcxGridDBColumn;
    FOrderPrice_OrderList: TcxGridDBColumn;
    FTaxRate_OrderList: TcxGridDBColumn;
    FOrderAmount_OrderList: TcxGridDBColumn;
    FOrderListReMark_OrderList: TcxGridDBColumn;
    FOrderDate_OrderList: TcxGridDBColumn;
    FClientShortName_OrderList: TcxGridDBColumn;
    FBranchItemNumber_OrderList: TcxGridDBColumn;
    FPaymentMode_OrderList: TcxGridDBColumn;
    FPrecastDate_OrderList: TcxGridDBColumn;
    FFactDate_OrderList: TcxGridDBColumn;
    FF_OrderList: TcxGridDBColumn;
    FInvoice_OrderList: TcxGridDBColumn;
    FStatusNotes_OrderList: TcxGridDBColumn;
    FOrderStatus_OrderList: TcxGridDBColumn;
    FNumber_OrderList: TcxGridDBColumn;
    FTakeListID_OrderList: TcxGridDBColumn;
    FItemID_OrderList: TcxGridDBColumn;
    FPlanTenderListID_OrderList: TcxGridDBColumn;
    FSupplierID_OrderList: TcxGridDBColumn;
    cxGL_OrderList: TcxGridLevel;
    TBar_Sel: TToolBar;
    TB_Sel: TcxButton;
    ToolBar_Save: TPanel;
    OKBtn: TcxButton;
    CancelBtn: TcxButton;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EXIT1Click(Sender: TObject);
    procedure MyTreeView_TenderCoeExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_TenderCoeChange(Sender: TObject; Node: TTreeNode);
    procedure TB_EXITClick(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure MyTreeView_DateExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_DateChange(Sender: TObject; Node: TTreeNode);
    procedure TB_RefClick(Sender: TObject);
    procedure MData_OrderListBeforePost(DataSet: TDataSet);
    procedure TB_EditClick(Sender: TObject);
    procedure cxGrid1DBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cxGV_TenderCoeListCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure E_FInvoiceStatusPropertiesEditValueChanged(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FOrderQryPropertiesEditValueChanged(Sender: TObject);
    procedure N_AllClick(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N_FactDateClick(Sender: TObject);
    procedure N_InvoiceClick(Sender: TObject);
    procedure Act_AppExecute(Sender: TObject);
    procedure Act_EditExecute(Sender: TObject);
    procedure Act_DelExecute(Sender: TObject);
    procedure Act_K3Execute(Sender: TObject);
    procedure Act_AuditExecute(Sender: TObject);
    procedure Act_StatusExecute(Sender: TObject);
    procedure Act_SubmitExecute(Sender: TObject);
    procedure Act_CheckExecute(Sender: TObject);
    procedure Act_PushDownExecute(Sender: TObject);
    procedure cxGV_OrderCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Act_SetOpenExecute(Sender: TObject);
    procedure Act_SetCloseExecute(Sender: TObject);
    procedure FItem3003Name_MPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure TB_SelClick(Sender: TObject);
    procedure Act_Set_MaxNumExecute(Sender: TObject);
    procedure Act_Set_MaxIDExecute(Sender: TObject);
    procedure MyTreeView_WriteExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_WriteChange(Sender: TObject; Node: TTreeNode);
    procedure Act_Ref_ItemExecute(Sender: TObject);
    procedure Act_Ref_TenderCoeExecute(Sender: TObject);
    procedure cxGV_TenderCoeCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Act_Ref_WriteExecute(Sender: TObject);
    procedure cxGV_OrderListCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure FormShow(Sender: TObject);
    procedure N_FactDateEditClick(Sender: TObject);
    procedure cxGV_OrderSelectionChanged(Sender: TcxCustomGridTableView);
    procedure Act_MenuExecute(Sender: TObject);
    procedure Act_Menu_SetExecute(Sender: TObject);
    procedure cxGrid_TenderCoeContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid_TenderCoeListContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid_OrderContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid_OrderListContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Act_TS_ItemExecute(Sender: TObject);
    procedure Act_TS_WriteExecute(Sender: TObject);
    procedure N_OutClick(Sender: TObject);
    procedure N_EditClick(Sender: TObject);
    procedure N_FilterClick(Sender: TObject);
    procedure N_SortClick(Sender: TObject);
    procedure N_GroupClick(Sender: TObject);
    procedure N_SetClick(Sender: TObject);
    procedure Act_TenderCoe_SelExecute(Sender: TObject);
    procedure Action1Execute(Sender: TObject);

  private

    ListItemFNumber_Sel,ListItemFNumber_Item,ListItemFNumber_Write:String;
    P_th_Item,P_th_Write:String;
    P_Isleaf_Sel,P_Isleaf_Item,P_Isleaf_Write:Integer;
    P_List:string;


    P_i:boolean;
    P_MaxNum,P_MaxID:Integer;

    function AddMain:bool;
    function AddList:bool;
    function AddRd:bool;
    function EditRd:bool;
    function DelRd:bool;


  public
    { Public declarations }
  end;

var
  Frm_DesignOrder: TFrm_DesignOrder;
implementation

uses FRMDATA, COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}


function TFrm_DesignOrder.AddRd: bool;
var
  qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  If mData_OrderList.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  mdlData.conn.BeginTrans;
  try
    if AddMain then  //1   主表新增
    begin
      result:=True;
      if AddList then //2    明细表新增
      begin
        result:=True;
        mdlData.conn.CommitTrans;
      end
      else
      begin
        result:=False;
        mdlData.conn.RollbackTrans;
      end
    end
    else
    begin
      result:=False;
      mdlData.conn.RollbackTrans;
    end
  except
    Application.MessageBox('数据保存失败，请重试。', '保存错误', 0 or MB_ICONINFORMATION);
    mdlData.Conn.RollBackTrans;
  end;
end;

function TFrm_DesignOrder.EditRd:bool;
var
  qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  If mData_OrderList.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  mData_OrderList.Edit;
  mData_OrderList.Post;

  mdlData.conn.BeginTrans;
  try
    if DelRd then  //1  主表删除
    begin
      result:=True;
      if AddMain then //2   主表新增
      begin
        result:=True;
        if AddList then //3   附新增
        begin
          result:=True;
          mdlData.conn.CommitTrans;
        end
        else
        begin
          result:=False;
          mdlData.conn.RollbackTrans;
        end
      end
      else
      begin
        result:=False;
        mdlData.conn.RollbackTrans;
      end
    end
    else
    begin
      result:=False;
      mdlData.conn.RollbackTrans;
    end
  except
    Application.MessageBox('数据保存失败，请重试。', '保存错误', 0 or MB_ICONINFORMATION);
    mdlData.Conn.RollBackTrans;
  end;


end;

function TFrm_DesignOrder.DelRd: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='Delete from T_DesignOrder where FOrderID=:FOrderID';
    with qry.Parameters do
    begin
      FindParam('FOrderID').value:=mdata_Order['FOrderID'];
    end;
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;



function TFrm_DesignOrder.AddMain: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  If P_state=0 then
  begin
    Act_Set_MaxID.Execute;//取ID
    Act_Set_MaxNum.Execute;    //取单号
  end;
  mdata_Order.Edit;
  mdata_Order['FOrderID']:=P_MaxID;;
  mdata_Order.post;
  try
    qry.SQL.Text:='Insert into T_DesignOrder(FDepartmentID,FOrderID,FOrderNo,FOrderDate,FOrderReMark,'
                 +'FInvoiceStatus,FBranchItemId,FSupplierId,FPayMentMode,FOrderSumAmount,'
                 +'FPrecastDate,FFactDate,FOrderWriteID,FOrderWriteDate,FOrderStatus) '
                 +'values(:FDepartmentID,:FOrderID,:FOrderNo,:FOrderDate,:FOrderReMark,'
                 +':FInvoiceStatus,:FBranchItemId,:FSupplierId,:FPayMentMode,:FOrderSumAmount,'
                 +':FPrecastDate,:FFactDate,:FOrderWriteID,:FOrderWriteDate,:FOrderStatus)';
   with qry.Parameters do
   begin
     FindParam('FDepartmentID').value:=UserFDepartmentID;
     If P_state=0 then  //新增
     begin
        FindParam('FOrderID').value:=P_MaxID;
        FindParam('FOrderNo').value:=P_MaxNum;
     end;
     If P_state=1 then  //修改
     begin
        FindParam('FOrderID').value:=mdata_Order['FOrderID'];
        FindParam('FOrderNo').value:=mdata_Order['FOrderNo'];
     end;
     FindParam('FOrderDate').value:=mdata_Order['FOrderDate'];
     FindParam('FOrderReMark').value:=mdata_Order['FOrderReMark'];
     FindParam('FInvoiceStatus').value:=0;
     FindParam('FBranchItemId').value:=mdata_Order['FBranchItemId'];
     FindParam('FSupplierId').value:=mdata_Order['FSupplierId'];
     FindParam('FPayMentMode').value:=mdata_Order['FPayMentMode'];
     FindParam('FOrderSumAmount').value:=cxGV_OrderList.DataController.Summary.FooterSummaryValues[4];
     FindParam('FPrecastDate').value:=mdata_Order['FPrecastDate'];
     FindParam('FFactDate').value:=mdata_Order['FFactDate'];
     FindParam('FOrderWriteID').value:=UserNumID;
     FindParam('FOrderWriteDate').value:=now();
     FindParam('FOrderStatus').value:=mdata_Order['FOrderStatus'];
   end;
     result:=qry.ExecSQL>=1;
   finally
     qry.Free;
   end;

end;


function TFrm_DesignOrder.AddList: bool;
var
  qry,qry1: TADOQuery;
  i: integer;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  qry.CommandTimeout:=500;
  result:=False;

  If mData_OrderList.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  try
    qry.SQL.Text:='Insert into T_DesignOrderList(FOrderID,FTenderCoeListID,FOrderListNum,FOrderQry,FOrderListReMark) '
                 +'values(:FOrderID,:FTenderCoeListID,:FOrderListNum,:FOrderQry,:FOrderListReMark)';
    mData_OrderList.First;
    i:=1;
    while not mData_OrderList.eof do
    begin
      If (mData_OrderList['FOrderQry']<>0) and (mData_OrderList['FOrderPrice']<>0) then
      begin
        If qry.Active then qry.Close;
        If P_state=0 then  //新增
           qry.Parameters.FindParam('FOrderID').value:=P_MaxID;
        If P_state=1 then  //修改
           qry.Parameters.FindParam('FOrderID').value:=mData_Order['FOrderID'];
        qry.Parameters.FindParam('FTenderCoeListID').value:= mData_OrderList['FTenderCoeListID'];
        qry.Parameters.FindParam('FOrderListNum').value:=i;
        qry.Parameters.FindParam('FOrderQry').value:= mData_OrderList['FOrderQry'];
        qry.Parameters.FindParam('FOrderListReMark').value:=mData_OrderList['FOrderListReMark'];
        result:=qry.ExecSQL>=1;
        if not result then break;
      end;
        mData_OrderList.Next;
        i:=i+1;
     end;
   finally
     qry.Free;
   end;
end;


procedure TFrm_DesignOrder.FormResize(Sender: TObject);
begin
  inherited;

  L_title.Caption:=UserFDepartmentName+'采购订单';
  Self.Caption:=UserFDepartmentName+'采购订单';
end;

procedure TFrm_DesignOrder.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_DesignOrder:=nil;
end;

procedure TFrm_DesignOrder.TB_EXIT1Click(Sender: TObject);
begin
  inherited;
  PC_1.ActivePage:=TS_Order;
  TS_TenderCoe.TabEnabled:=False;
  TS_Order.TabEnabled:=True;
end;

procedure TFrm_DesignOrder.MyTreeView_TenderCoeExpanding(Sender: TObject;
  Node: TTreeNode; var AllowExpansion: Boolean);
var
  P :PTree;
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  If (Node = nil) or
     (PTree(Node.Data).Flag <> cNoLoadFlag) or   // 1.加载标志
     (not Node.HasChildren) or                   // 2.未有子
     (Node.Count>0) then                         // 3.已有子节点
     Exit;

  qry.SQL.Text:='Select FNumber, FParentNumber,FName,FNumber,'
               +'Isleaf from VT_DesignTake_TenderCoe_Supplier_Sel where (FParentNumber= '''
               +PTree(Node.Data).ID+''' and FDepartmentID=:FDepartmentID ) '
               +' and (FPlanTenderOrderId=0 or FPlanTenderOrderID=:FPlanTenderOrderID) '
               +' order by FTenderCoeStatus,FNumber ';
  qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
  qry.Parameters.FindParam('FPlanTenderOrderID').value:=UserNumID;
  qry.open;

  PTree(Node.Data).Flag := cLoadFlag;   // 设置已加载标志
  while not qry.Eof do
  begin
    New(P);
    P.ID := qry.FieldByName('FNumber').AsString;
    P.ParentID := qry.FieldByName('FParentNumber').AsString;
    P.FNumber:=qry.FieldByName('FNumber').AsString;
    P.Isleaf := qry.FieldByName('Isleaf').Value;
    P.Caption := qry.FieldByName('FName').AsString;
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView_TenderCoe.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;

end;

procedure TFrm_DesignOrder.MyTreeView_TenderCoeChange(Sender: TObject;
  Node: TTreeNode);
var
  qry,qry1:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  qry1:=TADOQuery.Create(self);
  qry1.Connection:=mdlData.conn;

  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber_Sel:=trim(PTree(Node.Data).FNumber);
    P_Isleaf_Sel:=PTree(Node.Data).Isleaf;
    try
      qry1.SQL.Text:='select * from V_DesignTake_TenderCoe where FTenderCoeID '
                   +' in (select distinct FTenderCoeID from V_DesignTake_TenderCoeList where FPlanTenderOrderID=:FPlanTenderOrderID '
                   +' and FDepartmentName+'';''+cast(FTenderCoeStatus as varchar(2))+'';''+cast(FPlanTenderOrderId as varchar(8))+'';'''
                   +'+FBranchItemNumber+'';''+cast(FSupplierId as varchar(8))+'';''+FPayMentMode+'';'' like '''
                   +ListItemFNumber_Sel+'%'') ';
      qry1.Parameters.FindParam('FPlanTenderOrderID').value:=UserNumID;
      qry1.OPen;
    finally
       ;
    end;
    If qry1.RecordCount>0 then
    begin
      Mdata_TenderCoe.CopyFromDataSet(qry1);
      Mdata_TenderCoe.Open;
    end
    else
      Mdata_TenderCoe.Close;

    If P_Isleaf_Sel=1 then
    begin
       If MyItemListwhere (qry,Mdata_TenderCoeList,'V_DesignTake_TenderCoeList','FDepartmentName+'';''+cast(FTenderCoeStatus as varchar(2))+'';''+cast(FPlanTenderOrderId as varchar(8))+'';'''
                                    +'+FBranchItemNumber+'';''+cast(FSupplierId as varchar(8))+'';''+FPayMentMode+'';''',
                                    ListItemFNumber_Sel,' and FOrderQry<>FTenderCoeQry','FTenderCoeNum') then
    end
    else
    begin
      Mdata_TenderCoeList.Close;
    end;
  end;


end;

procedure TFrm_DesignOrder.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;

end;

procedure TFrm_DesignOrder.OKBtnClick(Sender: TObject);
var qry: TADOQuery;

begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  mData_OrderList.Edit;
  mData_OrderList.Post;
//  If (Trim(mdata_M['FSupplierId'])='') or (Trim(mdata_M['FItem3003'])='') or (Trim(mdata_M['FPaymentMode'])='') then
{  If (Trim(mdata_M['FSupplierId'])='') or (Trim(mdata_M['FPaymentMode'])='') then
  begin
    application.MessageBox('关键字不能为空！请重新输入','系统提示',MB_ICONERROR);
    Exit;
  end;

  mData.Edit;
  mData.Post; }
  mData_OrderList.First;
  while not mData_OrderList.eof do
  begin
    If (mData_OrderList['FOrderQry']=0) or (mData_OrderList['FOrderPrice']=0) or (mData_OrderList['FTaxRate']=0) then
    begin
      application.MessageBox('数量,单价不能为空！请重新输入','系统提示',MB_ICONERROR);
      Exit;
    end;
    If (mData_OrderList['FSupplierId']<>mdata_Order['FSupplierId']) then
    begin
      application.MessageBox('同一张采购订单必须是同一个供应商！请重新输入','系统提示',MB_ICONERROR);
      Exit;
    end;
    If (mData_OrderList['FBranchItemId']<>mdata_Order['FBranchItemId']) then
    begin
      application.MessageBox('同一张采购订单必须是同一个项目！请重新输入','系统提示',MB_ICONERROR);
      Exit;
    end;
    If (mData_OrderList['FPayMentMode']<>mdata_Order['FPayMentMode']) then
    begin
      application.MessageBox('同一张采购订单必须是同一种付款方式！请重新输入','系统提示',MB_ICONERROR);
      Exit;
    end;
    mData_OrderList.Next;
  end;

  If P_state=0 then
  begin
    If application.MessageBox('是否要保存添加的数据？','提示',MB_ICONINFORMATION+MB_YESNO)<>6 then
       Exit;
    If AddRd then //增加数据
    begin
      If application.MessageBox('录入数据已保存,还要继续录入吗？','提示',MB_ICONINFORMATION+MB_YESNO)=6 then
      begin
        TB_App.Click ;
      end
      else
      begin
        inherited;
        CancelBtn.Click;
      end;
    end;
  end;

  If P_state=1 then //修改数据
  begin
    If application.MessageBox('是否要保存所作修改？','提示',MB_ICONINFORMATION+MB_YESNO)<>6 then
       Exit;
    If EditRd then   //修改数据
    begin
      application.MessageBox('修改记录已保存','系统提示',MB_ICONINFORMATION);
      inherited;
    end
    else
      application.MessageBox('修改记录保存失败！','系统提示',MB_ICONWARNING);
    CancelBtn.Click;
  end;
  qry.Free;


end;

procedure TFrm_DesignOrder.CancelBtnClick(Sender: TObject);
begin
  inherited;
  P_state :=2;//不在新增、修改状态
  Act_SetClose.Execute;
end;

procedure TFrm_DesignOrder.MyTreeView_DateExpanding(Sender: TObject;
  Node: TTreeNode; var AllowExpansion: Boolean);
var
  P :PTree;
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  If (Node = nil) or
     (PTree(Node.Data).Flag <> cNoLoadFlag) or   // 1.加载标志
     (not Node.HasChildren) or                   // 2.未有子
     (Node.Count>0) then                         // 3.已有子节点
     Exit;

  qry.SQL.Text:='Select FNumber, FParentNumber,FName,FNumber,'
               +'Isleaf from VT_DesignOrder where FParentNumber= '''
               +PTree(Node.Data).ID+''' and FDepartmentID=:FDepartmentID '
               +' order by FNumber';
  qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
  qry.open;

  PTree(Node.Data).Flag := cLoadFlag;   // 设置已加载标志
  while not qry.Eof do
  begin
    New(P);
    P.ID := qry.FieldByName('FNumber').AsString;
    P.ParentID := qry.FieldByName('FParentNumber').AsString;
    P.FNumber:=qry.FieldByName('FNumber').AsString;
    P.Isleaf := qry.FieldByName('Isleaf').Value;
    P.Caption := qry.FieldByName('FName').AsString;
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView_Date.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;

end;

procedure TFrm_DesignOrder.MyTreeView_DateChange(Sender: TObject;
  Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber_Item:=trim(PTree(Node.Data).FNumber);
    P_Isleaf_Item:=PTree(Node.Data).Isleaf;

    Act_TS_Item.Execute;
    Act_Status.Execute;  //权限设置

  end;
end;

procedure TFrm_DesignOrder.TB_RefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If not TreeVeiwListWhere(qry,MyTreeView_Date,'VT_DesignOrder',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;

end;

procedure TFrm_DesignOrder.MData_OrderListBeforePost(DataSet: TDataSet);
begin
  inherited;
  //If DataSet['FOrderQry']>DataSet['FAskQry'] then
  //   DataSet['FOrderQry']:=DataSet['FAskQry'];
  DataSet['FOrderAmount']:=round(DataSet['FOrderQry']*DataSet['FOrderPrice']*100)/100;
end;

procedure TFrm_DesignOrder.TB_EditClick(Sender: TObject);
begin
  inherited;
  P_state :=1;
  If (mData_OrderList.RecordCount<1) then
    Exit;
  cxGV_OrderList.DataController.DataSource:=DS_Mdata_OrderList;
  cxGvColumn(cxGv_OrderList,mData_OrderList);
    Act_SetOpen.Execute;

end;

procedure TFrm_DesignOrder.cxGrid1DBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
  ADisplayStyle :TcxStyle;
begin
  ADisplayStyle :=TcxStyle.Create(Self);
  try
    if ARecord.Values[1]=320000 then
    begin
      ADisplayStyle.Color :=clYellow;
      //ADisplayStyle.Font.Color :=clBlack;
      //ADisplayStyle.Font.Color :=clYellow;
      AStyle :=ADisplayStyle;
    end ;
  finally
    ADisplayStyle.Free;
  end;


end;

procedure TFrm_DesignOrder.cxGV_TenderCoeListCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if cxGV_TenderCoeList.Controller.FocusedRowIndex=AViewInfo.RecordViewInfo.Index  then  //是否是选中行
     ACanvas.Canvas.Font.Color:=clHotLight
  else
  if StrToFloat(AViewInfo.GridRecord.DisplayTexts[FOrderQry_TenderCoeList.Index])=StrToFloat(AViewInfo.GridRecord.DisplayTexts[FTenderCoeQry_TenderCoeList.Index]) then    //设置行颜色
  begin
    ACanvas.Canvas.brush.Color := clInactiveCaptionText;
    ACanvas.FillRect(AViewInfo.Bounds);
  end;

{  if cxGV2.Controller.FocusedRowIndex=AViewInfo.RecordViewInfo.Index  then  //是否是选中行
     else

  if StrToFloat(AViewInfo.GridRecord.DisplayTexts[FSumOrderQry.Index])=0 then
  begin
    ACanvas.Canvas.brush.Color := clSkyBlue;
  end;
  if (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FSumQry2.Index])>StrToFloat(AViewInfo.GridRecord.DisplayTexts[FSumOrderQry.Index]))
     and (StrToFloat(AViewInfo.GridRecord.DisplayTexts[FSumOrderQry.Index])<>0) then
  begin
    ACanvas.Canvas.brush.Color := clYellow;
  end;
    ACanvas.FillRect(AViewInfo.Bounds);
}
end;

procedure TFrm_DesignOrder.E_FInvoiceStatusPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  If mdata_Order['FInvoiceStatus']=0 then
     mdata_Order['FInvoice']:='未收发票';
  If mdata_Order['FInvoiceStatus']=1 then
     mdata_Order['FInvoice']:='已收发票';
  If mdata_Order['FInvoiceStatus']=2 then
     mdata_Order['FInvoice']:='发票已核销';

end;

procedure TFrm_DesignOrder.FormCreate(Sender: TObject);
begin
  inherited;
  P_state :=2;//不在新增、修改状态
  TB_App.Visible:= mdlData.CheckFrmRights(TFrm_DesignOrder.ClassName,'新增');
  TB_Print.Visible:= mdlData.CheckFrmRights(TFrm_DesignOrder.ClassName,'打印');


  TS_Write.TabVisible:= mdlData.CheckFrmRights(TFrm_DesignOrder.ClassName,'新增');
  TS_Item.TabVisible:= mdlData.CheckFrmRights(TFrm_DesignOrder.ClassName,'校对');

  If mdlData.CheckFrmRights(TFrm_DesignOrder.ClassName,'审核') then
     TS_Item.TabVisible:=True;
  If mdlData.CheckFrmRights(TFrm_DesignOrder.ClassName,'校对') then
     TS_Item.TabVisible:=True;
  If mdlData.CheckFrmRights(TFrm_DesignOrder.ClassName,'下推') then
     TS_Item.TabVisible:=True;


end;

procedure TFrm_DesignOrder.FOrderQryPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  mData_OrderList.Edit;

end;

procedure TFrm_DesignOrder.N_AllClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  If MyItemList(qry,mdata_Order,'V_DesignOrder','FDepartmentName+'';''+cast(year(FOrderDate) as varchar(4))+'';''+cast(month(FOrderDate) as varchar(2))+'';''+cast(FOrderStatus as varchar(2))+'';''+FOrderNum+'';''',ListItemFNumber,'') then
  begin
    cxGv_Order.DataController.DataSource:=DS_Mdata_Order;
    cxGvColumn(cxGv_Order,Mdata_Order);
    L_title.Caption:='采购订单查询';
      Act_SetClose.Execute;
  end;

end;

procedure TFrm_DesignOrder.N5Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If MyItemListwhere(qry,Mdata_Order,'V_DesignOrder','FDepartmentName+'';''+cast(year(FOrderDate) as varchar(4))+'';''+cast(month(FOrderDate) as varchar(2))+'';''+cast(FOrderStatus as varchar(2))+'';''+FOrderNum+'';''',ListItemFNumber3,' and FOrderStatus<3 ','') then
  begin
    cxGv_Order.DataController.DataSource:=DS_Mdata_Order;
    cxGvColumn(cxGv_Order,Mdata_Order);
    L_title.Caption:='查询未审核单据';
  end;


end;

procedure TFrm_DesignOrder.N6Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If MyItemListwhere(qry,Mdata_Order,'V_DesignOrder','FDepartmentName+'';''+cast(year(FOrderDate) as varchar(4))+'';''+cast(month(FOrderDate) as varchar(2))+'';''+cast(FOrderStatus as varchar(2))+'';''+FOrderNum+'';''',ListItemFNumber3,' and FOrderStatus>=3 ','') then
  begin
    cxGv_Order.DataController.DataSource:=DS_Mdata_Order;
    cxGvColumn(cxGv_Order,Mdata_Order);
    L_title.Caption:='查询已审核单据';
  end;

end;

procedure TFrm_DesignOrder.N7Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If MyItemListwhere(qry,Mdata_Order,'V_DesignOrder','FDepartmentName+'';''+cast(year(FOrderDate) as varchar(4))+'';''+cast(month(FOrderDate) as varchar(2))+'';''+cast(FOrderStatus as varchar(2))+'';''+FOrderNum+'';''',ListItemFNumber3,' and FInvoiceStatus=0 ','') then
  begin
    cxGv_Order.DataController.DataSource:=DS_Mdata_Order;
    cxGvColumn(cxGv_Order,Mdata_Order);
    L_title.Caption:='查询未收发票';
  end;

end;

procedure TFrm_DesignOrder.N8Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If MyItemListwhere(qry,Mdata_Order,'V_DesignOrder','FDepartmentName+'';''+cast(year(FOrderDate) as varchar(4))+'';''+cast(month(FOrderDate) as varchar(2))+'';''+cast(FOrderStatus as varchar(2))+'';''+FOrderNum+'';''',ListItemFNumber3,' and FInvoiceStatus=1 ','') then
  begin
    cxGv_Order.DataController.DataSource:=DS_Mdata_Order;
    cxGvColumn(cxGv_Order,Mdata_Order);
    L_title.Caption:='查询已收发票';
  end;

end;

procedure TFrm_DesignOrder.N9Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If (cxGV_OrderList.DataController.DataSource=DS_Mdata_Order)  then
  begin
    If MyItemListwhere(qry,Mdata_Order,'V_DesignOrder','FDepartmentName+'';''+cast(year(FOrderDate) as varchar(4))+'';''+cast(month(FOrderDate) as varchar(2))+'';''+cast(FOrderStatus as varchar(2))+'';''+FOrderNum+'';''',ListItemFNumber3,' and FInvoiceStatus=2 ','') then
    begin
      cxGv_Order.DataController.DataSource:=DS_Mdata_Order;
      cxGvColumn(cxGv_Order,Mdata_Order);
      L_title.Caption:='查询已核销发票';
    end;
  end;
end;

procedure TFrm_DesignOrder.N_FactDateClick(Sender: TObject);
var qry: TADOQuery;
    a:string;
begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  Mdata_Order.Edit;
  Mdata_Order.Post;
  a:=Mdata_Order['FOrderNum'];
{ If length(mData_M['FFactDate'])=0 then
  begin
    If ShowMsg('请选择实际到货日期！','提示') then
    Exit;
  end;  }
  If application.MessageBox(Pchar('提示：是否更新购订单号为：【'+a+'】的实际到日期？'+chr(13)+chr(13)
                           +'确定要更新实际到货日期吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  begin
    try
      qry.SQL.Text:='Update T_DesignOrder set FFactDate=:FFactDate where FOrderID=:FOrderID';
      qry.Parameters[0].Value:=Mdata_Order['FFactDate'];
      qry.Parameters[1].Value:=Mdata_Order['FOrderID'];
      qry.ExecSQL;
    finally
      ;
    end;
  end;
  cxGV_Order.OptionsData.Editing:=False;
  FFactDate_Order.Options.Editing:=False;

end;

procedure TFrm_DesignOrder.N_InvoiceClick(Sender: TObject);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;

  If ShowMsg('是否更新当前单据的发票状态为发票已核销？','提示') then
  begin
    try
      qry.SQL.Text:='Update T_DesignOrder set FInvoiceStatus=:FInvoiceStatus where FOrderID=:FOrderID';
      qry.Parameters[0].Value:=2;
      qry.Parameters[1].Value:=Mdata_Order['FOrderID'];
      qry.ExecSQL;
    finally
      ;
    end;
    Mdata_Order.Edit;
    Mdata_Order['FInvoice']:='发票已核销';
    Mdata_Order.Post;
  end;

end;

procedure TFrm_DesignOrder.Act_AppExecute(Sender: TObject);
var
 i:Integer;
 qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state :=0;     //新增
  L_title.Caption:='采购订单信息新增';

 // PageControl2.Visible:=True;
  //主表
  try
    qry.SQL.Text:='Select * from  V_DesignOrder with(nolock) where FOrderID=:FOrderID';
    qry.Parameters.FindParam('FOrderID').value:= 0;
    qry.Open;
  finally
    ;
  end;
  Mdata_Order.CopyFromDataSet(qry);
  Mdata_Order.Open;
  Mdata_Order.Edit;
  Mdata_Order['FOrderDate']:=date();
  Mdata_Order.Post;

  Act_Set_MaxNum.Execute;    //取单号

  Mdata_Order.Edit;
  Mdata_Order['FOrderNo']:=P_MaxNum;
  Mdata_Order['FOrderID']:=0;
  Mdata_Order['FOrderNum']:=ForMatDateTime('yyyymm',(date()))+Format('%.4d',[(P_MaxNum)]);

  Mdata_Order['FOrderStatus']:=0;
  Mdata_Order['FOrderStatusNotes']:='填单';
  Mdata_Order['FOrderDate']:=date();
  Mdata_Order['FOrderWrite']:=UserNum;
  Mdata_Order['FOrderWriteDate']:=date();
  Mdata_Order.Post;

   //明细表
  try
    qry.SQL.Text:='Select * from  V_DesignOrderList with(nolock) where FOrderListID=:FOrderListID';
    qry.Parameters.FindParam('FOrderListID').value:= 0;
    qry.Open;
  finally
    ;
  end;
  Mdata_OrderList.CopyFromDataSet(qry);
  Mdata_OrderList.Close;

  Act_Ref_TenderCoe.Execute;
  Act_SetOpen.Execute;


end;

procedure TFrm_DesignOrder.Act_EditExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state :=1;
  If (mData_OrderList.RecordCount<1) then
    Exit;
  Act_SetOpen.Execute;
end;

procedure TFrm_DesignOrder.Act_DelExecute(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.Connection:=mdlData.conn;

  If (mData_OrderList.RecordCount<1) then
     Exit;

  If application.MessageBox(Pchar('警告：是否删除采购订单号为：【'+ListItemFNumber+'】的数据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('警告：是否删除采购订号为：【'+ListItemFNumber+'】的数据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本单据吗？'),'再次警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then

  begin
    //单据删除
    If not DelRd then
    begin
      application.MessageBox('删除单据失败！','系统提示',MB_ICONINFORMATION);
      mdlData.conn.RollbackTrans;
      Exit;
    end;
    Mdata_Order.Edit;
    Mdata_Order.Delete;
  end;
  mData_OrderList.Close;
  qry.Free;
end;

procedure TFrm_DesignOrder.Act_K3Execute(Sender: TObject);
var
  proc:TADOStoredProc;
  P_Retinf:String;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:='Provider=SQLOLEDB.1;Password=2237551;Persist Security Info=True;User ID=sa;'
                        +'Initial Catalog=AIS20130112113539;Data Source=192.168.111.102';
  proc.CommandTimeout:=500;
  If ShowMsg('是否导入K3？','提示') then
  begin
    try
      proc.ProcedureName:='Sp_PoorderInsert_Zsi;1';

      with proc.Parameters.AddParameter do
      begin
        DataType := ftInteger;
        Direction := pdinput;
        size:=20;
        name := '@FOrderId';
        value:=Mdata_Order['FOrderId'];
      end;
      with proc.Parameters.AddParameter do
      begin
        DataType := ftInteger;
        Direction := pdinput;
        size:=20;
        name := '@FUserNumID';
        value:=UserNumID;
      end;
      with proc.Parameters.AddParameter do
      begin
        DataType := ftString;
        Direction := pdoutput;
        size:=150;
        name := '@ReturnInf';
        value:='';
      end;
      proc.ExecProc;
      P_Retinf:=proc.Parameters.FindParam('@ReturnInf').Value;
      Messagedlg(P_Retinf,mtInformation,[mbok],0);
    finally
       ;
    end;
    
  end;


end;

procedure TFrm_DesignOrder.Act_AuditExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state:=3;
  If PC_Tree.ActivePage=TS_Item then
     P_List:=P_th_Item;
  If PC_Tree.ActivePage=TS_Write then
     P_List:=P_th_Write;
  If (TB_Audit.Caption='审核') or (TB_Audit.Caption='批量审核') then
  begin
    If application.MessageBox(Pchar('系统提示：是否对：【'+P_List+'】的单据进行审核？'+chr(13)+chr(13)
                                   +'确定要对本单据审核吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      Mdata_Order.First;
      while not Mdata_Order.eof do
      begin
        try
          qry.SQL.Text:='Update T_DesignOrder Set FOrderStatus=3,FOrderAuditID=:FOrderAuditID,FOrderAuditDate=:FOrderAuditDate  where FOrderID=:FOrderID';
          qry.Parameters.FindParam('FOrderAuditID').value:= UserNumID;
          qry.Parameters.FindParam('FOrderAuditDate').value:= now();
          qry.Parameters.FindParam('FOrderID').value:=Mdata_Order['FOrderID'];
          qry.ExecSQL;
        finally
          ;
        end;
        Mdata_Order.Edit;
        Mdata_Order['FOrderStatus']:=3;
        Mdata_Order['FOrderStatusNotes']:='审核';
        Mdata_Order['FOrderAuditID']:=UserNumID;
        Mdata_Order['FOrderAudit']:=UserNum;
        Mdata_Order['FOrderAuditDate']:=now();
        Mdata_Order.Post;
        Mdata_Order.Next;
      end;
      If Mdata_Order.RecordCount=1 then
      begin
        application.MessageBox('审核完毕！','系统提示',MB_ICONINFORMATION);
        TB_Audit.Caption:='审核撤回';
      end;
      If Mdata_Order.RecordCount>1 then
      begin
        application.MessageBox('批量审核完毕！','系统提示',MB_ICONINFORMATION);
        TB_Audit.Caption:='批量审核撤回';
      end;
      Act_Status.Execute;  //权限设置
    end;
    P_state:=2;
    Exit;
  end;
  If (TB_Audit.Caption='审核撤回') or (TB_Audit.Caption='批量审核撤回')  then
  begin
    If application.MessageBox(Pchar('系统提示：是否对：【'+P_List+'】的单据进行审核撤回？'+chr(13)+chr(13)
                                   +'确定要对本单据审核撤回吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      Mdata_Order.First;
      while not Mdata_Order.eof do
      begin
        try
          qry.SQL.Text:='Update T_DesignOrder Set FOrderStatus=2,FOrderAuditID=:FOrderAuditID,FOrderAuditDate=:FOrderAuditDate where FOrderID=:FOrderID';
          qry.Parameters.FindParam('FOrderAuditID').value:= UserNumID;
          qry.Parameters.FindParam('FOrderAuditDate').value:= Null;
          qry.Parameters.FindParam('FOrderID').value:= Mdata_Order['FOrderID'];
          qry.ExecSQL;
        finally
          ;
        end;
        Mdata_Order.Edit;
        Mdata_Order['FOrderStatus']:=2;
        Mdata_Order['FOrderStatusNotes']:='校对';
        Mdata_Order['FOrderAuditID']:=0;
        Mdata_Order['FOrderAudit']:='';
        Mdata_Order['FOrderAuditDate']:=Null;
        Mdata_Order.Post;
        Mdata_Order.Next;
      end;
      If Mdata_Order.RecordCount=1 then
      begin
        application.MessageBox('审核撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Audit.Caption:='审核';
      end;
      If Mdata_Order.RecordCount>1 then
      begin
        application.MessageBox('批量审核撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Audit.Caption:='批量审核';
      end;
      Act_Status.Execute;  //权限设置
    end;
    P_state:=2;
    Exit;
  end;

  Act_Ref_Write.Execute;
  Act_Ref_Item.Execute;


end;

procedure TFrm_DesignOrder.Act_StatusExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If MData_Order.RecordCount<=0 then
  begin
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
    TB_Submit.Visible:=False;
    TB_Check.Visible:=False;
    TB_Audit.Visible:=False;
    TB_PushDown.Visible:=False;
    Exit;
  end;

  //单据状态是否唯一
  If PC_Tree.ActivePage=TS_Item then
  begin
    try
      qry.SQL.Text:='Select distinct FOrderStatus from V_DesignOrder with(nolock) where FFullNumber like :FFullNumber and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Item+'%';
      qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
      qry.Open;
    finally
      ;
    end;
  end;
  If PC_Tree.ActivePage=TS_Write then
  begin
    try
      qry.SQL.Text:='Select distinct FOrderStatus from V_DesignOrder with(nolock) where FFullNumber_Write like :FFullNumber_Write and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber_Write').value:=ListItemFNumber_Write+'%';
      qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
      qry.Open;
    finally
      ;
    end;
  end;

  If qry.RecordCount>1 then
  begin
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
    TB_Submit.Visible:=False;
    TB_Check.Visible:=False;
    TB_Audit.Visible:=False;
    TB_PushDown.Visible:=False;
    Exit;
  end;
  //提交
  If PC_Tree.ActivePage=TS_Item then
  begin
    try
      qry.SQL.Text:='Select FOrderStatus,FOrderWriteID from V_DesignOrder with(nolock) '
                   +' where FOrderStatus=0  and FFullNumber like :FFullNumber and FOrderWriteID=:FOrderWriteID and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Item+'%';
      qry.Parameters.FindParam('FOrderWriteID').value:= UserNumID;
      qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
      qry.Open;
    finally
      ;
     end;
  end;
  If PC_Tree.ActivePage=TS_Write then
  begin
    try
      qry.SQL.Text:='Select FOrderStatus,FOrderWriteID from V_DesignOrder with(nolock) '
                   +' where FOrderStatus=0  and FFullNumber_Write like :FFullNumber_Write and FOrderWriteID=:FOrderWriteID and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber_Write').value:=ListItemFNumber_Write+'%';
      qry.Parameters.FindParam('FOrderWriteID').value:= UserNumID;
      qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
      qry.Open;
    finally
      ;
    end;
  end;


  If qry.RecordCount=1 then
  begin
    TB_Submit.Caption:='提交';
    TB_Submit.Visible:=mdlData.CheckFrmRights(TFrm_DesignOrder.ClassName,'提交');
    TB_Edit.Visible:=mdlData.CheckFrmRights(TFrm_DesignOrder.ClassName,'修改');
    TB_Del.Visible:=mdlData.CheckFrmRights(TFrm_DesignOrder.ClassName,'删除');
  end;
  If qry.RecordCount>1 then
  begin
    TB_Submit.Caption:='批量提交';
    TB_Submit.Visible:=mdlData.CheckFrmRights(TFrm_DesignOrder.ClassName,'提交');
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;

   //提交撤回
  try
    If PC_Tree.ActivePage=TS_Item then
    begin
      qry.SQL.Text:='Select FOrderStatus,FOrderWriteID from V_DesignOrder with(nolock) '
                   +' where FOrderStatus=1  and FFullNumber like :FFullNumber and FOrderWriteID=:FOrderWriteID and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Item+'%';
    end;
    If PC_Tree.ActivePage=TS_Write then
    begin
      qry.SQL.Text:='Select FOrderStatus,FOrderWriteID from V_DesignOrder with(nolock) '
                   +' where FOrderStatus=1  and FFullNumber_Write like :FFullNumber_Write and FOrderWriteID=:FOrderWriteID and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber_Write').value:=ListItemFNumber_Write+'%';
    end;
    qry.Parameters.FindParam('FOrderWriteID').value:= UserNumID;
    qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount=1 then
  begin
    TB_Submit.Caption:='提交撤回';
    TB_Submit.Visible:=mdlData.CheckFrmRights(TFrm_DesignOrder.ClassName,'提交');
    TB_Check.Caption:='校对';
    TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignOrder.ClassName,'校对');
    TB_Edit.Visible:=mdlData.CheckFrmRights(TFrm_DesignOrder.ClassName,'修改');
    TB_Del.Visible:=mdlData.CheckFrmRights(TFrm_DesignOrder.ClassName,'删除');
    TB_Check.Visible:=False;
  end;
  If qry.RecordCount>1 then
  begin
    TB_Submit.Caption:='批量提交撤回';
    TB_Submit.Visible:=mdlData.CheckFrmRights(TFrm_DesignOrder.ClassName,'提交');
    TB_Check.Caption:='批量校对';
    TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignOrder.ClassName,'校对');
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
    TB_Check.Visible:=False;
  end;

  //校对 1
  try
    If PC_Tree.ActivePage=TS_Item then
    begin
      qry.SQL.Text:='Select FOrderStatus from V_DesignOrder with(nolock) '
                   +' where FOrderStatus=1 and FFullNumber like :FFullNumber and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Item+'%';
    end;
     If PC_Tree.ActivePage=TS_Write then
    begin
      qry.SQL.Text:='Select FOrderStatus from V_DesignOrder with(nolock) '
                   +' where FOrderStatus=1 and FFullNumber_Write like :FFullNumber_Write and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber_Write').value:=ListItemFNumber_Write+'%';
    end;
   qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount=1 then
  begin
    TB_Check.Caption:='校对';
    TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignOrder.ClassName,'校对');
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;
  If qry.RecordCount>1 then
  begin
    TB_Check.Caption:='批量校对';
    TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignOrder.ClassName,'校对');
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;
     //校对  2
  try
    If PC_Tree.ActivePage=TS_Item then
    begin
      qry.SQL.Text:='Select FOrderStatus from V_DesignOrder with(nolock) '
                   +' where FOrderStatus=2 and FFullNumber like :FFullNumber and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Item+'%';
    end;
    If PC_Tree.ActivePage=TS_Write then
    begin
      qry.SQL.Text:='Select FOrderStatus from V_DesignOrder with(nolock) '
                   +' where FOrderStatus=2 and FFullNumber_Write like :FFullNumber_Write and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber_Write').value:=ListItemFNumber_Write+'%';
    end;

    qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount=1 then
  begin
    TB_Check.Caption:='校对';
    TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignOrder.ClassName,'校对');
    TB_Audit.Caption:='审核';
    TB_Audit.Visible:=mdlData.CheckFrmRights(TFrm_DesignOrder.ClassName,'审核');
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;
  If qry.RecordCount>1 then
  begin
    TB_Check.Caption:='批量校对';
    TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignOrder.ClassName,'校对');
    TB_Audit.Caption:='批量审核';
    TB_Audit.Visible:=mdlData.CheckFrmRights(TFrm_DesignOrder.ClassName,'审核');
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;
  //审核  3
  try
    If PC_Tree.ActivePage=TS_Item then
    begin
      qry.SQL.Text:='Select FOrderStatus from V_DesignOrder with(nolock) '
                   +' where FOrderStatus=3 and FFullNumber like :FFullNumber and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Item+'%';
    end;
    If PC_Tree.ActivePage=TS_Write then
    begin
      qry.SQL.Text:='Select FOrderStatus from V_DesignOrder with(nolock) '
                   +' where FOrderStatus=3 and FFullNumber_Write like :FFullNumber_Write and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber_Write').value:=ListItemFNumber_Write+'%';
    end;
    qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount=1 then
  begin
    TB_PushDown.Caption:='下推';
    TB_PushDown.Visible:=mdlData.CheckFrmRights(TFrm_DesignOrder.ClassName,'下推');

    TB_Check.Visible:=False;
    TB_Audit.Visible:=False;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;
  If qry.RecordCount>1 then
  begin
    TB_PushDown.Caption:='批量下推';
    TB_PushDown.Visible:=mdlData.CheckFrmRights(TFrm_DesignOrder.ClassName,'下推');

    TB_Check.Visible:=False;
    TB_Audit.Visible:=False;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;

   //校对撤回
  try
    If PC_Tree.ActivePage=TS_Item then
    begin
      qry.SQL.Text:='Select FOrderStatus,FOrderCheckID from V_DesignOrder with(nolock) '
                   +' where FOrderStatus=2 and FFullNumber like :FFullNumber and FOrderCheckID=:FOrderCheckID and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Item+'%';
    end;
    If PC_Tree.ActivePage=TS_Write then
    begin
      qry.SQL.Text:='Select FOrderStatus,FOrderCheckID from V_DesignOrder with(nolock) '
                   +' where FOrderStatus=2 and FFullNumber_Write like :FFullNumber_Write and FOrderCheckID=:FOrderCheckID and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber_Write').value:=ListItemFNumber_Write+'%';
    end;
    qry.Parameters.FindParam('FOrderCheckID').value:= UserNumID;
    qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount=1 then
  begin
    TB_Check.Caption:='校对撤回';
    TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignOrder.ClassName,'校对');
    TB_Submit.Visible:=False;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;
  If qry.RecordCount>1 then
  begin
    TB_Check.Caption:='批量校对撤回';
    TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignOrder.ClassName,'校对');
    TB_Submit.Visible:=False;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;

   //审核撤回
  try
    If PC_Tree.ActivePage=TS_Item then
    begin
      qry.SQL.Text:='Select FOrderStatus,FOrderAuditID from V_DesignOrder with(nolock) '
                  +' where FOrderStatus=3 and FFullNumber like :FFullNumber and FOrderAuditID=:FOrderAuditID and FDepartmentID=:FDepartmentID ';
      qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Item+'%';
    end;
    If PC_Tree.ActivePage=TS_Write then
    begin
      qry.SQL.Text:='Select FOrderStatus,FOrderAuditID from V_DesignOrder with(nolock) '
                  +' where FOrderStatus=3 and FFullNumber_Write like :FFullNumber_Write and FOrderAuditID=:FOrderAuditID and FDepartmentID=:FDepartmentID ';
      qry.Parameters.FindParam('FFullNumber_Write').value:=ListItemFNumber_Write+'%';
    end;
    qry.Parameters.FindParam('FOrderAuditID').value:= UserNumID;
    qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount=1 then
  begin
    TB_Audit.Caption:='审核撤回';
    TB_Audit.Visible:=mdlData.CheckFrmRights(TFrm_DesignOrder.ClassName,'审核');
    TB_Check.Visible:=False;
    TB_Submit.Visible:=False;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;
  If qry.RecordCount>1 then
  begin
    TB_Audit.Caption:='批量审核撤回';
    TB_Audit.Visible:=mdlData.CheckFrmRights(TFrm_DesignOrder.ClassName,'审核');
    TB_Submit.Visible:=False;
    TB_Check.Visible:=False;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;


   //下推撤回
  try
    If PC_Tree.ActivePage=TS_Item then
    begin
      qry.SQL.Text:='Select FOrderStatus,FOrderPushDownID from V_DesignOrder with(nolock) '
                   +' where FOrderStatus=4 and FFullNumber like :FFullNumber and FOrderPushDownID=:FOrderPushDownID and FDepartmentID=:FDepartmentID ';
      qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Item+'%';
    end;
     If PC_Tree.ActivePage=TS_Write then
    begin
      qry.SQL.Text:='Select FOrderStatus,FOrderPushDownID from V_DesignOrder with(nolock) '
                   +' where FOrderStatus=4 and FFullNumber_Write like :FFullNumber_Write and FOrderPushDownID=:FOrderPushDownID and FDepartmentID=:FDepartmentID ';
      qry.Parameters.FindParam('FFullNumber_Write').value:=ListItemFNumber_Write+'%';
    end;

    qry.Parameters.FindParam('FOrderPushDownID').value:= UserNumID;
    qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount=1 then
  begin
    TB_PushDown.Caption:='下推撤回';
    TB_PushDown.Visible:=mdlData.CheckFrmRights(TFrm_DesignOrder.ClassName,'下推');
    TB_Audit.Visible:=False;
    TB_Check.Visible:=False;
    TB_Submit.Visible:=False;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;
  If qry.RecordCount>1 then
  begin
    TB_PushDown.Caption:='批量下推撤回';
    TB_PushDown.Visible:=mdlData.CheckFrmRights(TFrm_DesignOrder.ClassName,'下推');
    TB_Audit.Visible:=False;
    TB_Submit.Visible:=False;
    TB_Check.Visible:=False;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;


end;

procedure TFrm_DesignOrder.Act_SubmitExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state:=3;
  If PC_Tree.ActivePage=TS_Item then
     P_List:=P_th_Item;
  If PC_Tree.ActivePage=TS_Write then
     P_List:=P_th_Write;
  If (TB_Submit.Caption='提交') or (TB_Submit.Caption='批量提交') then
  begin

    If application.MessageBox(Pchar('系统提示：是否对：【'+P_List+'】的单据进行提交？'+chr(13)+chr(13)
                                   +'确定要对本单据提交吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      Mdata_Order.First;
      while not Mdata_Order.eof do
      begin
        try
          qry.SQL.Text:='Update T_DesignOrder Set FOrderStatus=1,FOrderSubmitDate=:FOrderSubmitDate  where FOrderID=:FOrderID';
          qry.Parameters.FindParam('FOrderSubmitDate').value:= now();
          qry.Parameters.FindParam('FOrderID').value:=Mdata_Order['FOrderID'];
          qry.ExecSQL;
        finally
          ;
        end;
        Mdata_Order.Edit;
        Mdata_Order['FOrderStatus']:=1;
        Mdata_Order['FOrderStatusNotes']:='提交';
        Mdata_Order['FOrderSubmitDate']:=now();
        Mdata_Order.Post;
        Mdata_Order.Next;
      end;
      If Mdata_Order.RecordCount=1 then
      begin
        application.MessageBox('提交完毕！','系统提示',MB_ICONINFORMATION);
        TB_Submit.Caption:='提交撤回';
        TB_Edit.Visible:=False;
        TB_Del.Visible:=False;
      end;
      If Mdata_Order.RecordCount>1 then
      begin
        application.MessageBox('批量提交完毕！','系统提示',MB_ICONINFORMATION);
        TB_Submit.Caption:='批量提交撤回';
      end;
      Act_Status.Execute;  //权限设置
    end;
    P_state:=2;
    Exit;
  end;
  If (TB_Submit.Caption='提交撤回') or (TB_Submit.Caption='批量提交撤回')  then
  begin
    If application.MessageBox(Pchar('系统提示：是否对：【'+P_List+'】的单据进行提交撤回？'+chr(13)+chr(13)
                                   +'确定要对本单据提交撤回吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      Mdata_Order.First;
      while not Mdata_Order.eof do
      begin
        try
          qry.SQL.Text:='Update T_DesignOrder Set FOrderStatus=0,FOrderSubmitDate=:FOrderSubmitDate where FOrderID=:FOrderID';
          qry.Parameters.FindParam('FOrderSubmitDate').value:= Null;
          qry.Parameters.FindParam('FOrderID').value:= Mdata_Order['FOrderID'];
          qry.ExecSQL;
        finally
          ;
        end;
        Mdata_Order.Edit;
        Mdata_Order['FOrderStatus']:=0;
        Mdata_Order['FOrderStatusNotes']:='填单';
        Mdata_Order['FOrderSubmitDate']:=Null;
        Mdata_Order.Post;
        Mdata_Order.Next;
      end;
      If Mdata_Order.RecordCount=1 then
      begin
        application.MessageBox('提交撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Submit.Caption:='提交';
      end;
      If Mdata_Order.RecordCount>1 then
      begin
        application.MessageBox('批量提交撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Submit.Caption:='批量提交';
        TB_Edit.Visible:=mdlData.CheckFrmRights(TFrm_DesignOrder.ClassName,'修改');
        TB_Del.Visible:=mdlData.CheckFrmRights(TFrm_DesignOrder.ClassName,'删除');
      end;
      Act_Status.Execute;  //权限设置
    end;
    P_state:=2;
    Exit;
  end;
  Act_Ref_Item.Execute;
  Act_Ref_Write.Execute;
end;

procedure TFrm_DesignOrder.Act_CheckExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  P_state:=3;
  If PC_Tree.ActivePage=TS_Item then
     P_List:=P_th_Item;
  If PC_Tree.ActivePage=TS_Write then
     P_List:=P_th_Write;
  If (TB_Check.Caption='校对') or (TB_Check.Caption='批量校对') then
  begin
    If application.MessageBox(Pchar('系统提示：是否对：【'+P_List+'】的单据进行校对？'+chr(13)+chr(13)
                                   +'确定要对本单据校对吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      Mdata_Order.First;
      while not Mdata_Order.eof do
      begin
        try
          qry.SQL.Text:='Update T_DesignOrder Set FOrderStatus=2,FOrderCheckID=:FOrderCheckID,FOrderCheckDate=:FOrderCheckDate  where FOrderID=:FOrderID';
          qry.Parameters.FindParam('FOrderCheckID').value:= UserNumID;
          qry.Parameters.FindParam('FOrderCheckDate').value:= now();
          qry.Parameters.FindParam('FOrderID').value:=Mdata_Order['FOrderID'];
          qry.ExecSQL;
        finally
          ;
        end;
        Mdata_Order.Edit;
        Mdata_Order['FOrderStatus']:=2;
        Mdata_Order['FOrderStatusNotes']:='校对';
        Mdata_Order['FOrderCheckID']:=UserNumID;
        Mdata_Order['FOrderCheck']:=UserNum;
        Mdata_Order['FOrderCheckDate']:=now();
        Mdata_Order.Post;
        Mdata_Order.Next;
      end;
      If Mdata_Order.RecordCount=1 then
      begin
        application.MessageBox('校对完毕！','系统提示',MB_ICONINFORMATION);
        TB_Check.Caption:='校对撤回';
      end;
      If Mdata_Order.RecordCount>1 then
      begin
        application.MessageBox('批量校对完毕！','系统提示',MB_ICONINFORMATION);
        TB_Check.Caption:='批量校对撤回';
      end;
      Act_Status.Execute;  //权限设置
    end;
    P_state:=2;
    Exit;
  end;
  If (TB_Check.Caption='校对撤回') or (TB_Check.Caption='批量校对撤回')  then
  begin
    If application.MessageBox(Pchar('系统提示：是否对：【'+P_List+'】的单据进行校对撤回？'+chr(13)+chr(13)
                                   +'确定要对本单据校对撤回吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      Mdata_Order.First;
      while not Mdata_Order.eof do
      begin
        try
          qry.SQL.Text:='Update T_DesignOrder Set FOrderStatus=1,FOrderCheckID=:FOrderCheckID,FOrderCheckDate=:FOrderCheckDate where FOrderID=:FOrderID';
          qry.Parameters.FindParam('FOrderCheckID').value:= UserNumID;
          qry.Parameters.FindParam('FOrderCheckDate').value:= Null;
          qry.Parameters.FindParam('FOrderID').value:= Mdata_Order['FOrderID'];
          qry.ExecSQL;
        finally
          ;
        end;
        Mdata_Order.Edit;
        Mdata_Order['FOrderStatus']:=1;
        Mdata_Order['FOrderStatusNotes']:='提交';
        Mdata_Order['FOrderCheckID']:=0;
        Mdata_Order['FOrderCheck']:='';
        Mdata_Order['FOrderCheckDate']:=Null;
        Mdata_Order.Post;
        Mdata_Order.Next;
      end;
      If Mdata_Order.RecordCount=1 then
      begin
        application.MessageBox('校对撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Check.Caption:='校对';
      end;
      If Mdata_Order.RecordCount>1 then
      begin
        application.MessageBox('批量校对撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Check.Caption:='批量校对';
      end;
      Act_Status.Execute;  //权限设置
    end;
    P_state:=2;
    Exit;
  end;

  Act_Ref_Item.Execute;
  Act_Ref_Write.Execute;

end;

procedure TFrm_DesignOrder.Act_PushDownExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state:=3;
  If PC_Tree.ActivePage=TS_Item then
     P_List:=P_th_Item;
  If PC_Tree.ActivePage=TS_Write then
     P_List:=P_th_Write;
  If (TB_PushDown.Caption='下推') or (TB_PushDown.Caption='批量下推') then
  begin
    If application.MessageBox(Pchar('系统提示：是否对：【'+P_List+'】的单据进行下推？'+chr(13)+chr(13)
                                   +'确定要对本单据下推准吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      Mdata_Order.First;
      while not Mdata_Order.eof do
      begin
        try
          qry.SQL.Text:='Update T_DesignOrder Set FOrderStatus=4,FOrderPushDownID=:FOrderPushDownID,FOrderPushDownDate=:FOrderPushDownDate  where FOrderID=:FOrderID';
          qry.Parameters.FindParam('FOrderPushDownID').value:= UserNumID;
          qry.Parameters.FindParam('FOrderPushDownDate').value:= now();
          qry.Parameters.FindParam('FOrderID').value:=Mdata_Order['FOrderID'];
          qry.ExecSQL;
        finally
          ;
        end;
        Mdata_Order.Edit;
        Mdata_Order['FOrderStatus']:=4;
        Mdata_Order['FOrderStatusNotes']:='下推';
        Mdata_Order['FOrderPushDownID']:=0;
        Mdata_Order['FOrderPushDown']:='';
        Mdata_Order['FOrderPushDownDate']:=now();
        Mdata_Order.Post;
        Mdata_Order.Next;
      end;
      If Mdata_Order.RecordCount=1 then
      begin
        Act_K3.Execute;
        application.MessageBox('下推K3完毕！','系统提示',MB_ICONINFORMATION);
        TB_PushDown.Caption:='下推撤回';
      end;
      If Mdata_Order.RecordCount>1 then
      begin
        application.MessageBox('批量下推完毕！','系统提示',MB_ICONINFORMATION);
        TB_PushDown.Caption:='批量下推撤回';
      end;
      Act_Status.Execute;  //权限设置
    end;
    P_state:=2;
    Exit;
  end;
  If (TB_PushDown.Caption='下推撤回') or (TB_PushDown.Caption='批量下推撤回')  then
  begin
    If application.MessageBox(Pchar('系统提示：是否对：【'+P_List+'】的单据进行下推撤回？'+chr(13)+chr(13)
                                   +'确定要对本单据下推撤回吗？'),'系统提示',MB_ICONINFORMATION+MB_YESNO)=6 then
    begin
      Mdata_Order.First;
      while not Mdata_Order.eof do
      begin
        try
          qry.SQL.Text:='Update T_DesignOrder Set FOrderStatus=3,FOrderPushDownID=:FOrderPushDownID,FOrderPushDownDate=:FOrderPushDownDate where FOrderID=:FOrderID';
          qry.Parameters.FindParam('FOrderPushDownID').value:= UserNumID;
          qry.Parameters.FindParam('FOrderPushDownDate').value:= Null;
          qry.Parameters.FindParam('FOrderID').value:= Mdata_Order['FOrderID'];
          qry.ExecSQL;
        finally
          ;
        end;
        Mdata_Order.Edit;
        Mdata_Order['FOrderStatus']:=3;
        Mdata_Order['FOrderStatusNotes']:='审核';
        Mdata_Order['FOrderPushDownID']:=0;
        Mdata_Order['FOrderPushDown']:='';
        Mdata_Order['FOrderPushDownDate']:=Null;
        Mdata_Order.Post;
        Mdata_Order.Next;
      end;
      If Mdata_Order.RecordCount=1 then
      begin
        application.MessageBox('下推完毕！','系统提示',MB_ICONINFORMATION);
        TB_PushDown.Caption:='下推撤回';
      end;
      If Mdata_Order.RecordCount>1 then
      begin
        application.MessageBox('批量下推撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_PushDown.Caption:='批量下推';
      end;
      Act_Status.Execute;  //权限设置
    end;
    P_state:=2;
    Exit;
  end;

  Act_Ref_Item.Execute;
  Act_Ref_Write.Execute;

end;

procedure TFrm_DesignOrder.cxGV_OrderCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var qry: TADOQuery;
begin
{  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If P_state =2 then //不在新增、修改状态
  begin
    If mData_M['FOrderID']<>0 then
    begin
      If MyItemList(qry,Mdata,'V_DesignOrderList','cast(FOrderID as varchar(20))',
                    Mdata_M['FOrderID'],'FOrderNum') then
      Act_Status.Execute  //权限设置
    end;
  end;   }

end;

procedure TFrm_DesignOrder.Act_SetOpenExecute(Sender: TObject);
begin
  inherited;
  TB_Ref_Item.Visible:=False;
  TB_Ref_Write.Visible:=False;
  ToolBar_Order.Visible:=False;
  ToolBar_Save.Visible:=True;
  TBar_Sel.Visible:=True;
  TB_Sel.Enabled:=True;
  MyTreeView_Date.Enabled:=True;

  cxGV_OrderList.OptionsData.Editing:=True;
  cxGV_Order.OptionsData.Editing:=True;
  FOrderNum_Order.Options.Editing:=True;

  FOrderDate_Order.Options.Editing:=True;
  FPrecastDate_Order.Options.Editing:=True;
  FFactDate_Order.Options.Editing:=True;
  FInvoiceStatus_Order.Options.Editing:=True;
  FOrderReMark_Order.Options.Editing:=True;

end;

procedure TFrm_DesignOrder.Act_SetCloseExecute(Sender: TObject);
begin
  inherited;
  TB_Ref_Item.Visible:=True;
  TB_Ref_Write.Visible:=True;
  ToolBar_Order.Visible:=True;
  ToolBar_Save.Visible:=False;
  TBar_Sel.Visible:=False;
  TB_Sel.Enabled:=False;
  MyTreeView_Date.Enabled:=False;

  cxGV_OrderList.OptionsData.Editing:=False;
  cxGV_Order.OptionsData.Editing:=False;
  MyTreeView_Date.Enabled:=True;

end;

procedure TFrm_DesignOrder.FItem3003Name_MPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  Mdata_Order.Edit;
  if Mdata_Order['FItem3003Name']=Null then
     Mdata_Order['FItem3003Name']:='';
  Mdata_Order['FItem3003Name']:='';
  Mdata_Order.Post;
  If Mdata_Order['FItem3003Name']='' then
  begin
    try
      qry.SQL.Text:='select * from Zsi_K3_FItemClassId_3003 with(nolock) order by FNumber ';
      qry.Open;
    finally
      ;
    end;
    selValue:=select('选择K3生产成本对象信息','FNumber','FParentNumber','FNumber','FNumber;FName',qry);
  end
  else
  begin
    try
      qry.SQL.Text:='select * from Zsi_K3_FItemClassId_3003 with(nolock) where FName like :FName order by FNumber ';
      qry.Parameters.FindParam('FName').Value:='%'+Mdata_Order['FItem3003Name']+'%';
      qry.Open;
    finally
      ;
    end;
    If qry.RecordCount=1 then
    begin
      Mdata_Order.Edit;
      Mdata_Order['FItem3003Name']:=qry.FieldByName('FName').Value;
      Mdata_Order['FItem3003']:=qry.FieldByName('FItemID').Value;
      Mdata_Order.Post;
    end
    else
      selValue:=select('选择K3生产成本对象信息','FNumber','FParentNumber','FNumber','FNumber;FName',qry);

  end;

  If (Length(selValue)>0) and (qry.FieldByName('FDetail').asBoolean=True) then
  begin
    Mdata_Order.Edit;
    Mdata_Order['FItem3003Name']:=qry.FieldByName('FName').Value;
    Mdata_Order['FItem3003']:=qry.FieldByName('FItemID').Value;
    Mdata_Order.Post;
  end;


end;

procedure TFrm_DesignOrder.TB_SelClick(Sender: TObject);
begin
  inherited;
  TS_TenderCoe.TabEnabled:=True;  
  PC_1.ActivePage:=TS_TenderCoe;
end;

procedure TFrm_DesignOrder.Act_Set_MaxNumExecute(Sender: TObject);
var
  i:Integer;
  proc:TADOStoredProc;
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;

  try
    proc.ProcedureName:='P_GetDateMaxNum;1';
   with proc.Parameters.AddParameter do
    begin
      DataType := ftDateTime;
      Direction := pdinput;
      name := '@TableDate';
      value:=ForMatDateTime('yyyy-mm-dd',(Mdata_Order['FOrderDate']));
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@TableName';
      value:='T_DesignOrder';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@DateFiled';
      value:='FOrderDate';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@NumFiled';
      value:='FOrderNo';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@FDepartmentFiled';
      value:='FDepartmentID';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdinput;
      size:=20;
      name := '@FDepartmentID';
      value:=UserFDepartmentID;
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdoutput;
      size:=255;
      name := '@FInterID';
      value:=0;
    end;
    proc.ExecProc;
    P_MaxNum:=proc.Parameters.FindParam('@FInterID').Value;
  finally
     ;
  end;
  proc.Free;
end;

procedure TFrm_DesignOrder.Act_Set_MaxIDExecute(Sender: TObject);
var
  proc:TADOStoredProc;
begin
  proc:=TADOStoredProc.Create(self);
  proc.ConnectionString:=mdlData.ReadConnStr;
  proc.CommandTimeout:=500;

  try
    proc.ProcedureName:='P_GetMaxID;1';
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@TableName';
      value:='T_DesignOrder';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdoutput;
      size:=255;
      name := '@FInterID';
      value:=0;
    end;
    proc.ExecProc;
    P_MaxID:=proc.Parameters.FindParam('@FInterID').Value;
    proc.Free;
  finally
     ;
  end;

end;

procedure TFrm_DesignOrder.MyTreeView_WriteExpanding(Sender: TObject;
  Node: TTreeNode; var AllowExpansion: Boolean);
var
  P :PTree;
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  If (Node = nil) or
     (PTree(Node.Data).Flag <> cNoLoadFlag) or   // 1.加载标志
     (not Node.HasChildren) or                   // 2.未有子
     (Node.Count>0) then                         // 3.已有子节点
     Exit;

  qry.SQL.Text:='Select FNumber, FParentNumber,FName,FNumber,'
               +'Isleaf from VT_DesignOrder_Write where FParentNumber= '''
               +PTree(Node.Data).ID+''' and FDepartmentID=:FDepartmentID and FOrderWriteID=:FOrderWriteID '
               +' order by FNumber';
  qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
  qry.Parameters.FindParam('FOrderWriteID').value:=UserNumID;
  qry.open;

  PTree(Node.Data).Flag := cLoadFlag;   // 设置已加载标志
  while not qry.Eof do
  begin
    New(P);
    P.ID := qry.FieldByName('FNumber').AsString;
    P.ParentID := qry.FieldByName('FParentNumber').AsString;
    P.FNumber:=qry.FieldByName('FNumber').AsString;
    P.Isleaf := qry.FieldByName('Isleaf').Value;
    P.Caption := qry.FieldByName('FName').AsString;
    P.Flag := cNoLoadFlag;                            // 新节点，未加载标志
    with MyTreeView_Write.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;

end;

procedure TFrm_DesignOrder.MyTreeView_WriteChange(Sender: TObject;
  Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber_Write:=trim(PTree(Node.Data).FNumber);
    P_Isleaf_Write:=PTree(Node.Data).Isleaf;

    Act_TS_Write.Execute;
    Act_Status.Execute;  //权限设置
  end;

end;

procedure TFrm_DesignOrder.Act_Ref_ItemExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If not TreeVeiwListWhere(qry,MyTreeView_Date,'VT_DesignOrder',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
end;

procedure TFrm_DesignOrder.Act_Ref_TenderCoeExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If not TreeVeiwListWhere(qry,MyTreeView_TenderCoe,'VT_DesignTake_TenderCoe_Supplier_Sel',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
end;

procedure TFrm_DesignOrder.cxGV_TenderCoeCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If Mdata_TenderCoe['FTenderCoeID']<>0 then
  begin
    If MyItemList(qry,Mdata_TenderCoeList,'V_DesignTake_TenderCoeList','cast(FTenderCoeID as varchar(20))',
                  Mdata_TenderCoe['FTenderCoeID'],'FTenderCoeNum') then
  end;

end;

procedure TFrm_DesignOrder.Act_Ref_WriteExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If not TreeVeiwListWhere(qry,MyTreeView_Write,'VT_DesignOrder_Write',' and FOrderWriteID='+IntToStr(UserNumID)+' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;


end;

procedure TFrm_DesignOrder.cxGV_OrderListCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if cxGV_OrderList.Controller.FocusedRowIndex=AViewInfo.RecordViewInfo.Index  then  //是否是选中行
     else
  if StrToFloat(AViewInfo.GridRecord.DisplayTexts[FOrderQry_OrderList.Index])<>StrToFloat(AViewInfo.GridRecord.DisplayTexts[FTenderCoeQry_OrderList.Index]) then    //设置行颜色
  begin
    ACanvas.Canvas.brush.Color := clInactiveCaptionText;
    ACanvas.FillRect(AViewInfo.Bounds);
  end;

end;

procedure TFrm_DesignOrder.FormShow(Sender: TObject);
begin
  inherited;
  Act_Ref_Write.Execute;
  Act_Ref_Item.Execute;
  Act_Ref_TenderCoe.Execute;
  TS_TenderCoe.TabEnabled:=False;

end;

procedure TFrm_DesignOrder.N_FactDateEditClick(Sender: TObject);
begin
  inherited;
  cxGV_Order.OptionsData.Editing:=True;
  FFactDate_Order.Options.Editing:=True;
end;

procedure TFrm_DesignOrder.cxGV_OrderSelectionChanged(
  Sender: TcxCustomGridTableView);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If mdata_Order.RecordCount<0 then
   Exit;
  If P_state =2 then //不在新增、修改状态
  begin
    If mData_Order['FOrderID']<>0 then
    begin
      If MyItemList(qry,Mdata_OrderList,'V_DesignOrderList','cast(FOrderID as varchar(20))',
                    Mdata_Order['FOrderID'],'FOrderNum') then
     // Act_Status.Execute  //权限设置
    end;
  end;

end;

procedure TFrm_DesignOrder.Act_MenuExecute(Sender: TObject);
Var i:Integer;
begin
  //1、设置
  If copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='取消设置' then
  begin
    (FindComponent(GV) as TcxGridDBTableView).OptionsData.Editing:=False;
    (FindComponent(GV) as TcxGridDBTableView).OptionsView.GroupByBox:=False;
    for i:=0 to (FindComponent(GV) as TcxGridDBTableView).ColumnCount-1 do
    begin
      (FindComponent(GV) as TcxGridDBTableView).Columns[i].Options.Filtering:=False;
      (FindComponent(GV) as TcxGridDBTableView).Columns[i].Options.Editing:=False;
      (FindComponent(GV) as TcxGridDBTableView).Columns[i].Options.Sorting:=False;
    end;
    Exit;
  end;

  //编辑
  If (copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='编辑')
     and ((FindComponent(Mn) as TMenuItem).Checked=False) then
  begin
    (FindComponent(GV) as TcxGridDBTableView).OptionsData.Editing:=True;
    (FindComponent(Mn) as TMenuItem).Checked:=True;
    for i:=0 to (FindComponent(GV) as TcxGridDBTableView).ColumnCount-1 do
    begin
      (FindComponent(GV) as TcxGridDBTableView).Columns[i].Options.Editing:=True;
    end;
    Exit;
  end;
  If (copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='编辑')
     and ((FindComponent(Mn) as TMenuItem).Checked=True) then
  begin
    (FindComponent(GV) as TcxGridDBTableView).OptionsData.Editing:=False;
    (FindComponent(Mn) as TMenuItem).Checked:=False;
    for i:=0 to (FindComponent(GV) as TcxGridDBTableView).ColumnCount-1 do
    begin
      (FindComponent(GV) as TcxGridDBTableView).Columns[i].Options.Editing:=False;
    end;
    Exit;
  end;
  //过滤
  If (copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='过滤')
     and ((FindComponent(Mn) as TMenuItem).Checked=False) then
  begin
    (FindComponent(GV) as TcxGridDBTableView).OptionsData.Editing:=True;
    (FindComponent(Mn) as TMenuItem).Checked:=True;
    for i:=0 to (FindComponent(GV) as TcxGridDBTableView).ColumnCount-1 do
    begin
      (FindComponent(GV) as TcxGridDBTableView).Columns[i].Options.Filtering:=True;
    end;
    Exit;
  end;
  If (copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='过滤')
     and ((FindComponent(Mn) as TMenuItem).Checked=True) then
  begin
    (FindComponent(Mn) as TMenuItem).Checked:=False;
    for i:=0 to (FindComponent(GV) as TcxGridDBTableView).ColumnCount-1 do
    begin
      (FindComponent(GV) as TcxGridDBTableView).Columns[i].Options.Filtering:=False;
    end;
    Exit;
  end;
  //排序
  If (copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='排序')
     and ((FindComponent(Mn) as TMenuItem).Checked=False) then
  begin
    (FindComponent(Mn) as TMenuItem).Checked:=True;
    for i:=0 to (FindComponent(GV) as TcxGridDBTableView).ColumnCount-1 do
    begin
      (FindComponent(GV) as TcxGridDBTableView).Columns[i].Options.Sorting:=True;
    end;
    Exit;
  end;
  If (copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='排序')
     and ((FindComponent(Mn) as TMenuItem).Checked=True) then
  begin
    (FindComponent(Mn) as TMenuItem).Checked:=False;
    for i:=0 to (FindComponent(GV) as TcxGridDBTableView).ColumnCount-1 do
    begin
      (FindComponent(GV) as TcxGridDBTableView).Columns[i].Options.Sorting:=False;
    end;
    Exit;
  end;
 // 分组
  If (copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='分组')
     and ((FindComponent(Mn) as TMenuItem).Checked=False) then
  begin
    (FindComponent(GV) as TcxGridDBTableView).OptionsView.GroupByBox:=True;
    (FindComponent(Mn) as TMenuItem).Checked:=True;
    Exit;
  end;
  If (copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='分组')
     and ((FindComponent(Mn) as TMenuItem).Checked=True) then
  begin
    (FindComponent(GV) as TcxGridDBTableView).OptionsView.GroupByBox:=False;
    (FindComponent(Mn) as TMenuItem).Checked:=False;
    Exit;
  end;
  //导出
  If copy((FindComponent(Mn) as TMenuItem).Caption,1,pos('(',(FindComponent(Mn) as TMenuItem).Caption)-1)='导出' then
  begin
    If (FindComponent(Gm) as TdxMemData).RecordCount>0 then
       ExportToExcel((FindComponent(Gr) as TcxGrid),True,TRue)
    else
       Application.MessageBox(PChar('没有需要导出的数据！'), '错误', MB_OK +MB_ICONSTOP);
    Exit;
  end;


end;

procedure TFrm_DesignOrder.Act_Menu_SetExecute(Sender: TObject);
begin
  inherited;
  If (FindComponent(GV) as TcxGridDBTableView).Columns[1].Options.Filtering=True then
     N_Filter.Checked:=True
  else
     N_Filter.Checked:=False;

  If (FindComponent(GV) as TcxGridDBTableView).Columns[1].Options.Sorting=True then
    N_Sort.Checked:=True
  else
    N_Sort.Checked:=False;

  If (FindComponent(GV) as TcxGridDBTableView).OptionsView.GroupByBox=True then
    N_Group.Checked:=True
  else
    N_Group.Checked:=False;

end;

procedure TFrm_DesignOrder.cxGrid_TenderCoeContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV';
  Gm:='mdata';
  Gr:='cxGrid';
  Act_Menu_Set.Execute;

end;

procedure TFrm_DesignOrder.cxGrid_TenderCoeListContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV';
  Gm:='mdata';
  Gr:='cxGrid';
  Act_Menu_Set.Execute;

end;

procedure TFrm_DesignOrder.cxGrid_OrderContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_Order';
  Gm:='mdata_Order';
  Gr:='cxGrid_Order';
  Act_Menu_Set.Execute;

end;

procedure TFrm_DesignOrder.cxGrid_OrderListContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_OrderList';
  Gm:='mdata_OrderList';
  Gr:='cxGrid_OrderList';
  Act_Menu_Set.Execute;

end;

procedure TFrm_DesignOrder.Act_TS_ItemExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  If P_Isleaf_Item>=1 then
  begin
    If MyItemList(qry,mdata_Order,'V_DesignOrder','FFullNumber',ListItemFNumber_Item,'') then
    If MyItemList(qry,mData_OrderList,'V_DesignOrderList','FFullNumber',ListItemFNumber_Item,'FOrderNum') then
  end
  else
  begin
    mdata_Order.Close;
    mData_OrderList.Close
  end;

end;

procedure TFrm_DesignOrder.Act_TS_WriteExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  If P_Isleaf_Write>=1 then
  begin
    If MyItemList(qry,Mdata_Order,'V_DesignOrder','FFullNumber_Write ',ListItemFNumber_Write,'') then
    If MyItemList(qry,mData_OrderList,'V_DesignOrderList','FFullNumber_Write ',ListItemFNumber_Write,'FOrderNum') then
 end
 else
 begin
   Mdata_Order.Close;
   mData_OrderList.Close;
 end;
end;

procedure TFrm_DesignOrder.N_OutClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_DesignOrder.N_EditClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_DesignOrder.N_FilterClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_DesignOrder.N_SortClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_DesignOrder.N_GroupClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_DesignOrder.N_SetClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_DesignOrder.Act_TenderCoe_SelExecute(Sender: TObject);
var  i,j,n: integer;
     Insertbz:boolean;
begin
  inherited;
  mData_OrderList.Open;
  mData_OrderList.First;
  for i:=0 to cxGV_TenderCoeList.DataController.Controller.SelectedRecordCount-1 do
  begin
    Insertbz:=false;
    j:=cxGV_TenderCoeList.DataController.GetSelectedRowIndex(i);
    while not mData_OrderList.eof  do
    begin
      If mData_OrderList['FTenderCoeListID']<>cxGV_TenderCoeList.DataController.GetValue(J,13) then
      begin
         mData_OrderList.Next;
      end
      else
      begin
        application.MessageBox('记录重复选！请重新选择','系统提示',MB_ICONERROR);
        Exit;
      end;
    end
  end;

  mData_OrderList.Last;
  for i:=0 to cxGV_TenderCoeList.DataController.Controller.SelectedRecordCount-1 do
  begin
    Insertbz:=True;
    j:=cxGV_TenderCoeList.DataController.GetSelectedRowIndex(i);
    If (cxGV_TenderCoeList.DataController.GetValue(J,13)<>0) then    //FTenderCoeListID
    begin
      mData_OrderList.Append;
      mData_OrderList.Edit;
      mData_OrderList['FSupplierName']:=cxGV_TenderCoeList.DataController.GetValue(J,1);
      mData_OrderList['FNumber']:=cxGV_TenderCoeList.DataController.GetValue(J,2);
      mData_OrderList['FTakeName']:=cxGV_TenderCoeList.DataController.GetValue(J,3);
      mData_OrderList['FTakeModel']:=cxGV_TenderCoeList.DataController.GetValue(J,4);
      mData_OrderList['FTakeUnitName']:=cxGV_TenderCoeList.DataController.GetValue(J,5);
      mData_OrderList['FTakeSumQry']:=cxGV_TenderCoeList.DataController.GetValue(J,6);
      mData_OrderList['FPlanTenderQry']:=cxGV_TenderCoeList.DataController.GetValue(J,7);
      mData_OrderList['FTenderCoeQry']:=cxGV_TenderCoeList.DataController.GetValue(J,8);
      mData_OrderList['FOrderQry']:=cxGV_TenderCoeList.DataController.GetValue(J,8)-cxGV_TenderCoeList.DataController.GetValue(J,9);
      mData_OrderList['FOrderPrice']:=cxGV_TenderCoeList.DataController.GetValue(J,10);
      mData_OrderList['FTaxRate']:=cxGV_TenderCoeList.DataController.GetValue(J,11);
      mData_OrderList['FOrderAmount']:=cxGV_TenderCoeList.DataController.GetValue(J,12);
      mData_OrderList['FTenderCoeListID']:=cxGV_TenderCoeList.DataController.GetValue(J,13);

      mData_OrderList['FSupplierID']:=cxGV_TenderCoeList.DataController.GetValue(J,14);
      mData_OrderList['FBranchItemId']:=cxGV_TenderCoeList.DataController.GetValue(J,15);
      mData_OrderList['FBranchItemNumber']:=cxGV_TenderCoeList.DataController.GetValue(J,16);
      mData_OrderList['FClientShortName']:=cxGV_TenderCoeList.DataController.GetValue(J,17);
      mData_OrderList['FPaymentMode']:=cxGV_TenderCoeList.DataController.GetValue(J,18);

      mData_OrderList['FOrderNum']:=mdata_Order['FOrderNum'];
      mData_OrderList['FOrderDate']:=mdata_Order['FOrderDate'];
      mdata_Order.Edit;
      mdata_Order['FSupplierName']:=cxGV_TenderCoeList.DataController.GetValue(J,1);
      mdata_Order['FSupplierID']:=cxGV_TenderCoeList.DataController.GetValue(J,14);
      mdata_Order['FBranchItemId']:=cxGV_TenderCoeList.DataController.GetValue(J,15);
      mdata_Order['FBranchItemNumber']:=cxGV_TenderCoeList.DataController.GetValue(J,16);
      mdata_Order['FClientShortName']:=cxGV_TenderCoeList.DataController.GetValue(J,17);
      mdata_Order['FPaymentMode']:=cxGV_TenderCoeList.DataController.GetValue(J,18);
      mdata_Order.Post;
      mData_OrderList.Post;
      Insertbz:=False;
    end;
    if Insertbz then break;
  end;
  cxGV_TenderCoeList.DataController.DeleteSelection;   //多行删除
  PC_1.ActivePage:=TS_Order;


 {

  mData_OrderList.Open;
  mData_OrderList.First;
  for i:=0 to cxGV_TenderCoeList.DataController.Controller.SelectedRecordCount-1 do
  begin
    Insertbz:=False;
    j:=cxGV_TenderCoeList.DataController.GetSelectedRowIndex(i);
    while not mData_OrderList.eof  do
    begin
      if mData_OrderList['FTenderCoeListID']>0 then
          mData_OrderList.next
      else
      Begin
          If i=0 then
          begin
            mdata_Order.Edit;
            mdata_Order['FSupplierName']:=cxGV_TenderCoeList.DataController.GetValue(J,1);
            mdata_Order['FSupplierID']:=cxGV_TenderCoeList.DataController.GetValue(J,14);
            mdata_Order['FBranchItemId']:=cxGV_TenderCoeList.DataController.GetValue(J,15);
            mdata_Order['FBranchItemNumber']:=cxGV_TenderCoeList.DataController.GetValue(J,16);
            mdata_Order['FClientShortName']:=cxGV_TenderCoeList.DataController.GetValue(J,17);
            mdata_Order['FPaymentMode']:=cxGV_TenderCoeList.DataController.GetValue(J,18);
            mdata_Order.Post;
          end;
          If i>0 then
             mData_OrderList.Append;
          mData_OrderList.Edit;
          mData_OrderList['FSupplierName']:=cxGV_TenderCoeList.DataController.GetValue(J,1);
          mData_OrderList['FNumber']:=cxGV_TenderCoeList.DataController.GetValue(J,2);
          mData_OrderList['FTakeName']:=cxGV_TenderCoeList.DataController.GetValue(J,3);
          mData_OrderList['FTakeModel']:=cxGV_TenderCoeList.DataController.GetValue(J,4);
          mData_OrderList['FTakeUnitName']:=cxGV_TenderCoeList.DataController.GetValue(J,5);
          mData_OrderList['FTakeSumQry']:=cxGV_TenderCoeList.DataController.GetValue(J,6);
          mData_OrderList['FPlanTenderQry']:=cxGV_TenderCoeList.DataController.GetValue(J,7);
          mData_OrderList['FTenderCoeQry']:=cxGV_TenderCoeList.DataController.GetValue(J,8);
          mData_OrderList['FOrderQry']:=cxGV_TenderCoeList.DataController.GetValue(J,8)-cxGV_TenderCoeList.DataController.GetValue(J,9);
          mData_OrderList['FOrderPrice']:=cxGV_TenderCoeList.DataController.GetValue(J,10);
          mData_OrderList['FTaxRate']:=cxGV_TenderCoeList.DataController.GetValue(J,11);
          mData_OrderList['FOrderAmount']:=cxGV_TenderCoeList.DataController.GetValue(J,12);
          mData_OrderList['FTenderCoeListID']:=cxGV_TenderCoeList.DataController.GetValue(J,13);

          mData_OrderList['FSupplierID']:=cxGV_TenderCoeList.DataController.GetValue(J,14);
          mData_OrderList['FBranchItemId']:=cxGV_TenderCoeList.DataController.GetValue(J,15);
          mData_OrderList['FBranchItemNumber']:=cxGV_TenderCoeList.DataController.GetValue(J,16);
          mData_OrderList['FClientShortName']:=cxGV_TenderCoeList.DataController.GetValue(J,17);
          mData_OrderList['FPaymentMode']:=cxGV_TenderCoeList.DataController.GetValue(J,18);

          mData_OrderList['FOrderNum']:=mdata_Order['FOrderNum'];
          mData_OrderList['FOrderDate']:=mdata_Order['FOrderDate'];
          mData_OrderList.Post;
          mData_OrderList.next;

          Insertbz:=True;
      end;
      if Insertbz then break;
    end;
  end;
  cxGV_OrderList.DataController.DeleteSelection;   //多行删除     virtual;StrUtils,   cxCustomData


  }


end;

procedure TFrm_DesignOrder.Action1Execute(Sender: TObject);
var  i,j,n: integer;
     Insertbz:boolean;
begin
  inherited;
  mData_OrderList.Open;
  mData_OrderList.Edit;
  mData_OrderList.Post;
  mData_OrderList.First;
  for i:=0 to cxGV_TenderCoeList.DataController.Controller.SelectedRecordCount-1 do
  begin
    Insertbz:=false;
    j:=cxGV_TenderCoeList.DataController.GetSelectedRowIndex(i);
    while not mData_OrderList.eof  do
    begin
      If mData_OrderList['FTenderCoeListID']<>cxGV_TenderCoeList.DataController.GetValue(J,12) then
      begin
         mData_OrderList.Next;
      end
      else
      begin
        application.MessageBox('记录重复选！请重新选择','系统提示',MB_ICONERROR);
        Exit;
      end;
    end
  end;

  mData_OrderList.First;
  for i:=0 to cxGV_TenderCoeList.DataController.Controller.SelectedRecordCount-1 do
  begin
    Insertbz:=false;
    j:=cxGV_TenderCoeList.DataController.GetSelectedRowIndex(i);
    while not mData_OrderList.eof  do
    begin
      if mData_OrderList['FTenderCoeListID']>0 then
          mData_OrderList.next
      else
      Begin
          mData_OrderList.Edit;

          mData_OrderList['FSupplierName']:=cxGV_TenderCoeList.DataController.GetValue(J,1);
          mData_OrderList['FNumber']:=cxGV_TenderCoeList.DataController.GetValue(J,2);
          mData_OrderList['FTakeName']:=cxGV_TenderCoeList.DataController.GetValue(J,3);
          mData_OrderList['FTakeModel']:=cxGV_TenderCoeList.DataController.GetValue(J,4);
          mData_OrderList['FTakeUnitName']:=cxGV_TenderCoeList.DataController.GetValue(J,5);
          mData_OrderList['FTakeSumQry']:=cxGV_TenderCoeList.DataController.GetValue(J,6);
          mData_OrderList['FPlanTenderQry']:=cxGV_TenderCoeList.DataController.GetValue(J,7);
          mData_OrderList['FTenderCoeQry']:=cxGV_TenderCoeList.DataController.GetValue(J,8);
          mData_OrderList['FOrderQry']:=cxGV_TenderCoeList.DataController.GetValue(J,8)-cxGV_TenderCoeList.DataController.GetValue(J,9);
          mData_OrderList['FOrderPrice']:=cxGV_TenderCoeList.DataController.GetValue(J,10);
          mData_OrderList['FTaxRate']:=cxGV_TenderCoeList.DataController.GetValue(J,11);
          mData_OrderList['FOrderAmount']:=cxGV_TenderCoeList.DataController.GetValue(J,12);
          mData_OrderList['FTenderCoeListID']:=cxGV_TenderCoeList.DataController.GetValue(J,13);

          mData_OrderList['FSupplierID']:=cxGV_TenderCoeList.DataController.GetValue(J,14);
          mData_OrderList['FBranchItemId']:=cxGV_TenderCoeList.DataController.GetValue(J,15);
          mData_OrderList['FBranchItemNumber']:=cxGV_TenderCoeList.DataController.GetValue(J,16);
          mData_OrderList['FClientShortName']:=cxGV_TenderCoeList.DataController.GetValue(J,17);
          mData_OrderList['FPaymentMode']:=cxGV_TenderCoeList.DataController.GetValue(J,18);

          mData_OrderList['FOrderNum']:=mdata_Order['FOrderNum'];
          mData_OrderList['FOrderDate']:=mdata_Order['FOrderDate'];
          mData_OrderList.Post;
          mData_OrderList.next;
          mdata_Order.Edit;
          mdata_Order['FSupplierName']:=cxGV_TenderCoeList.DataController.GetValue(J,1);
          mdata_Order['FSupplierID']:=cxGV_TenderCoeList.DataController.GetValue(J,14);
          mdata_Order['FBranchItemId']:=cxGV_TenderCoeList.DataController.GetValue(J,15);
          mdata_Order['FBranchItemNumber']:=cxGV_TenderCoeList.DataController.GetValue(J,16);
          mdata_Order['FClientShortName']:=cxGV_TenderCoeList.DataController.GetValue(J,17);
          mdata_Order['FPaymentMode']:=cxGV_TenderCoeList.DataController.GetValue(J,18);
          mdata_Order.Post;

          Insertbz:=True;
      end;
      if Insertbz then break;
    end;
    while mData_OrderList.eof do
    begin
      if mData_OrderList['FTenderCoeListID']>0 then
      begin
        if (mData_OrderList['FTenderCoeListID']<>cxGV_TenderCoeList.DataController.GetValue(J,12)) then
        begin
          mData_OrderList.Append;
          mData_OrderList.Edit;
          mData_OrderList['FSupplierName']:=cxGV_TenderCoeList.DataController.GetValue(J,1);
          mData_OrderList['FNumber']:=cxGV_TenderCoeList.DataController.GetValue(J,2);
          mData_OrderList['FTakeName']:=cxGV_TenderCoeList.DataController.GetValue(J,3);
          mData_OrderList['FTakeModel']:=cxGV_TenderCoeList.DataController.GetValue(J,4);
          mData_OrderList['FTakeUnitName']:=cxGV_TenderCoeList.DataController.GetValue(J,5);
          mData_OrderList['FTakeSumQry']:=cxGV_TenderCoeList.DataController.GetValue(J,6);
          mData_OrderList['FPlanTenderQry']:=cxGV_TenderCoeList.DataController.GetValue(J,7);
          mData_OrderList['FTenderCoeQry']:=cxGV_TenderCoeList.DataController.GetValue(J,8);
          mData_OrderList['FOrderQry']:=cxGV_TenderCoeList.DataController.GetValue(J,8)-cxGV_TenderCoeList.DataController.GetValue(J,9);
          mData_OrderList['FOrderPrice']:=cxGV_TenderCoeList.DataController.GetValue(J,10);
          mData_OrderList['FTaxRate']:=cxGV_TenderCoeList.DataController.GetValue(J,11);
          mData_OrderList['FOrderAmount']:=cxGV_TenderCoeList.DataController.GetValue(J,12);
          mData_OrderList['FTenderCoeListID']:=cxGV_TenderCoeList.DataController.GetValue(J,13);
          mData_OrderList['FSupplierID']:=cxGV_TenderCoeList.DataController.GetValue(J,14);
          mData_OrderList['FBranchItemId']:=cxGV_TenderCoeList.DataController.GetValue(J,15);
          mData_OrderList['FBranchItemNumber']:=cxGV_TenderCoeList.DataController.GetValue(J,16);
          mData_OrderList['FClientShortName']:=cxGV_TenderCoeList.DataController.GetValue(J,17);
          mData_OrderList['FPaymentMode']:=cxGV_TenderCoeList.DataController.GetValue(J,18);

          mData_OrderList['FOrderNum']:=mdata_Order['FOrderNum'];
          mData_OrderList['FOrderDate']:=mdata_Order['FOrderDate'];
          mData_OrderList.Post;

          mdata_Order.Edit;
          mdata_Order['FSupplierName']:=cxGV_TenderCoeList.DataController.GetValue(J,1);
          mdata_Order['FSupplierID']:=cxGV_TenderCoeList.DataController.GetValue(J,14);
          mdata_Order['FBranchItemId']:=cxGV_TenderCoeList.DataController.GetValue(J,15);
          mdata_Order['FBranchItemNumber']:=cxGV_TenderCoeList.DataController.GetValue(J,16);
          mdata_Order['FClientShortName']:=cxGV_TenderCoeList.DataController.GetValue(J,17);
          mdata_Order['FPaymentMode']:=cxGV_TenderCoeList.DataController.GetValue(J,18);
          mdata_Order.Post;
        end;
      end;
      mData_OrderList.Next;
      break;
    end;
  end;
  PC_1.ActivePage:=TS_Order;


end;

end.
