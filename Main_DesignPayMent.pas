unit Main_DesignPayMent;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FrmGridBass, ExtCtrls, StdCtrls, DsFancyButton, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  dxmdaset, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxTextEdit, cxDropDownEdit, cxCalendar, cxMaskEdit, cxContainer, cxLabel,
  cxDBLookupComboBox, ADODB, cxButtonEdit, Grids, DBGrids, ComCtrls, RzShellDialogs,
  ToolWin, ImgList, FR_DSet, FR_DBSet, FR_Class, cxRadioGroup, Buttons,
  cxGroupBox, cxCheckBox, cxCurrencyEdit, RzPanel, RzSplit, RzTabs,IniFiles,
  jpeg, cxLookAndFeelPainters, cxButtons, cxMemo, Menus, ActnList;

type
    TFrm_DesignPayMent = class(TFrm_GridBass)
    ImageList: TImageList;
    frReport: TfrReport;
    frDBDataSet: TfrDBDataSet;
    PC_1: TRzPageControl;
    TS_Order: TRzTabSheet;
    RzSizePanel2: TRzSizePanel;
    Panel1: TPanel;
    TS_PayMent: TRzTabSheet;
    ToolBar_PayMent: TToolBar;
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
    mdata_PayMentList: TdxMemData;
    DS_Mdata_PayMentList: TDataSource;
    TB_Audit: TToolButton;
    DS_Mdata_PayMent: TDataSource;
    MData_PayMent: TdxMemData;
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
    cxGrid_PayMent: TcxGrid;
    cxGV_PayMent: TcxGridDBTableView;
    FPayMentNum_PayMent: TcxGridDBColumn;
    FPayMentDate_PayMent: TcxGridDBColumn;
    FPayMentStatusNotes_PayMent: TcxGridDBColumn;
    FPayMentStatus_PayMent: TcxGridDBColumn;
    FOrderSumAmount_PayMent: TcxGridDBColumn;
    cxGridDBColumn22_PayMent: TcxGridDBColumn;
    FPayMentReMark_PayMent: TcxGridDBColumn;
    FPayMentWrite_PayMent: TcxGridDBColumn;
    FPayMentWriteDate_PayMent: TcxGridDBColumn;
    FPayMentAudit_PayMent: TcxGridDBColumn;
    FPayMentAuditDate_PayMent: TcxGridDBColumn;
    FItem3003Name_PayMent: TcxGridDBColumn;
    FK3BillNo_PayMent: TcxGridDBColumn;
    FPayMentID_PayMent: TcxGridDBColumn;
    cxGL_PayMent: TcxGridLevel;
    FItem3003_PayMent: TcxGridDBColumn;
    PageControl3: TPageControl;
    TabSheet5: TTabSheet;
    MData_OrderList: TdxMemData;
    MData_OrderListth: TStringField;
    MData_OrderListmc: TStringField;
    MData_OrderListgg: TStringField;
    MData_OrderListFSumQry: TIntegerField;
    MData_OrderListFTakeDemand: TStringField;
    MData_OrderListFTakeListReMark: TStringField;
    MData_OrderListFSumSuttle: TFloatField;
    MData_OrderListFName: TStringField;
    MData_OrderListFModel: TStringField;
    MData_OrderListUnitName: TStringField;
    MData_OrderListFNumber: TStringField;
    MData_OrderListFk3Name: TStringField;
    MData_OrderListFK3Model: TStringField;
    MData_OrderListFOrderNoQry: TIntegerField;
    DS_Mdata_OrderList: TDataSource;
    DS_Mdata_Order: TDataSource;
    MData_Order: TdxMemData;
    MData_OrderFTakeID: TIntegerField;
    MData_OrderFTakeDate: TDateField;
    MData_OrderFItemListId: TIntegerField;
    MData_OrderFBranchFileNo: TStringField;
    MData_OrderFTakeWrite: TStringField;
    MData_OrderFTakeWriteDate: TDateTimeField;
    MData_OrderFItemNumber: TStringField;
    FPayMentNo_PayMent: TcxGridDBColumn;
    Act_Set_MaxNum: TAction;
    Act_Set_MaxID: TAction;
    PC_Tree: TPageControl;
    TS_Item: TTabSheet;
    TS_Write: TTabSheet;
    MyTreeView_Item: TTreeView;
    MyTreeView_Write: TTreeView;
    ToolBar1: TToolBar;
    TB_Ref_Write: TcxButton;
    Act_Ref_Order: TAction;
    Act_Ref_Item: TAction;
    ToolBar4: TToolBar;
    TB_Ref_Item: TcxButton;
    MData_OrderFPlanTenderDate: TDateField;
    MData_OrderFPlanTenderID: TIntegerField;
    PageControl6: TPageControl;
    TabSheet7: TTabSheet;
    ToolBar5: TToolBar;
    TB_Ref_Order: TcxButton;
    TabSheet8: TTabSheet;
    MyTreeView3: TTreeView;
    ToolBar6: TToolBar;
    MyTreeView_Order: TTreeView;
    Act_Ref_Write: TAction;
    FPayMentSubmitDate_PayMent: TcxGridDBColumn;
    FPayMentCheck_PayMent: TcxGridDBColumn;
    FPayMentCheckDate_PayMent: TcxGridDBColumn;
    FPayMentPushDown_PayMent: TcxGridDBColumn;
    FPayMentPushDownDate_PayMent: TcxGridDBColumn;
    cxGrid_Order: TcxGrid;
    cxGV_Order: TcxGridDBTableView;
    FOrderNum_Order: TcxGridDBColumn;
    FOrderDate_Order: TcxGridDBColumn;
    FOrderStatusNotes_Order: TcxGridDBColumn;
    FOrderStatus_Order: TcxGridDBColumn;
    FPrecastDate_Order: TcxGridDBColumn;
    FFactDate_Order: TcxGridDBColumn;
    FInvoice_Order: TcxGridDBColumn;
    FInvoiceStatus_Order: TcxGridDBColumn;
    FOrdersumAmount_Order: TcxGridDBColumn;
    cxGridDBColumn10_Order: TcxGridDBColumn;
    FOrderReMark_Order: TcxGridDBColumn;
    FOrderWrite_Order: TcxGridDBColumn;
    FOrderWriteDate_Order: TcxGridDBColumn;
    FOrderSubmitDate_Order: TcxGridDBColumn;
    FOrderCheck_Order: TcxGridDBColumn;
    FOrderCheckDate_Order: TcxGridDBColumn;
    FOrderAudit_Order: TcxGridDBColumn;
    FOrderAuditDate_Order: TcxGridDBColumn;
    FOrderPushDown_Order: TcxGridDBColumn;
    FOrderPushDownDate_Order: TcxGridDBColumn;
    FItem3003Name_Order: TcxGridDBColumn;
    FK3BillNo_Order: TcxGridDBColumn;
    FOrderID_Order: TcxGridDBColumn;
    FItem3003_Order: TcxGridDBColumn;
    FOrderNo_Order: TcxGridDBColumn;
    FSupplierID_Order: TcxGridDBColumn;
    cxGL_Order: TcxGridLevel;
    FSupplierName_Order: TcxGridDBColumn;
    FPayMentMode_Order: TcxGridDBColumn;
    FBranchItemNumber_Order: TcxGridDBColumn;
    FClientShortName_Order: TcxGridDBColumn;
    FPayMentSumAmount_PayMent: TcxGridDBColumn;
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
    ToolBar3: TToolBar;
    ToolButton2: TToolButton;
    ToolButton7: TToolButton;
    TB_EXIT1: TToolButton;
    RSP_List: TRzSizePanel;
    PageControl4: TPageControl;
    TabSheet6: TTabSheet;
    cxGrid_OrderList: TcxGrid;
    cxGV_OrderList: TcxGridDBTableView;
    FOrderNum_OrderList: TcxGridDBColumn;
    FOrderListNum_OrderList: TcxGridDBColumn;
    FTakeName_OrderList: TcxGridDBColumn;
    FTakeModel_OrderList: TcxGridDBColumn;
    FTakeUnitName_OrderList: TcxGridDBColumn;
    FTakeSumQry_OrderList: TcxGridDBColumn;
    FPlanTenderQry_OrderList: TcxGridDBColumn;
    FTenderCoeQry_OrderList: TcxGridDBColumn;
    FOrderQry_OrderList: TcxGridDBColumn;
    FOrderPrice_OrderList: TcxGridDBColumn;
    FTaxRate_OrderList: TcxGridDBColumn;
    FOrderAmount_OrderList: TcxGridDBColumn;
    FOrderListReMark_OrderList: TcxGridDBColumn;
    FOrderDate_OrderList: TcxGridDBColumn;
    FClientShortName_OrderList: TcxGridDBColumn;
    FBranchItemNumber_OrderList: TcxGridDBColumn;
    FSupplierName_OrderList: TcxGridDBColumn;
    FPaymentMode_OrderList: TcxGridDBColumn;
    sumFOrderAmount_OrderList: TcxGridDBColumn;
    FPrecastDate_OrderList: TcxGridDBColumn;
    FFactDate_OrderList: TcxGridDBColumn;
    cxGridDBColumn50_OrderList: TcxGridDBColumn;
    FInvoice_OrderList: TcxGridDBColumn;
    FStatusNotes_OrderList: TcxGridDBColumn;
    FOrderStatus_OrderList: TcxGridDBColumn;
    FNumber_OrderList: TcxGridDBColumn;
    FItemID_OrderList: TcxGridDBColumn;
    FPlanTenderListID_OrderList: TcxGridDBColumn;
    FSupplierID_OrderList: TcxGridDBColumn;
    FOrderListID_OrderList: TcxGridDBColumn;
    cxGL_OrderList: TcxGridLevel;
    RzSizePanel3: TRzSizePanel;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    TBar_Sel: TToolBar;
    TB_Sel: TcxButton;
    cxGrid_PayMentList: TcxGrid;
    cxGV_PayMentList: TcxGridDBTableView;
    FPayMentNum_PayMentList: TcxGridDBColumn;
    FPayMentListNum_PayMentList: TcxGridDBColumn;
    FOrderNum_PayMentList: TcxGridDBColumn;
    FOrderDate_PayMentList: TcxGridDBColumn;
    FSupplierName_PayMentList: TcxGridDBColumn;
    FPayMentAmount_PayMentList: TcxGridDBColumn;
    FOrderSumAmount_PayMentList: TcxGridDBColumn;
    FOrderStatusNotes_PayMentList: TcxGridDBColumn;
    FOrderStatus_PayMentList: TcxGridDBColumn;
    FPayMentMode_PayMentList: TcxGridDBColumn;
    FBranchItemNumber_PayMentList: TcxGridDBColumn;
    FClientShortName_PayMentList: TcxGridDBColumn;
    FPrecastDate_PayMentList: TcxGridDBColumn;
    FFactDate_PayMentList: TcxGridDBColumn;
    FInvoice_PayMentList: TcxGridDBColumn;
    FInvoiceStatus_PayMentList: TcxGridDBColumn;
    FOrderReMark_PayMentList: TcxGridDBColumn;
    cxGV_PayMentListDBColumn1_PayMentList: TcxGridDBColumn;
    FOrderWrite_PayMentList: TcxGridDBColumn;
    FOrderWriteDate_PayMentList: TcxGridDBColumn;
    FOrderSubmitDate_PayMentList: TcxGridDBColumn;
    FOrderCheck_PayMentList: TcxGridDBColumn;
    FOrderCheckDate_PayMentList: TcxGridDBColumn;
    FOrderAudit_PayMentList: TcxGridDBColumn;
    FOrderAuditDate_PayMentList: TcxGridDBColumn;
    FOrderPushDown_PayMentList: TcxGridDBColumn;
    FOrderPushDownDate_PayMentList: TcxGridDBColumn;
    FItem3003Name_PayMentList: TcxGridDBColumn;
    FK3BillNo_PayMentList: TcxGridDBColumn;
    FOrderID_PayMentList: TcxGridDBColumn;
    FItem3003_PayMentList: TcxGridDBColumn;
    FOrderNo_PayMentList: TcxGridDBColumn;
    FSupplierID_PayMentList: TcxGridDBColumn;
    cxGL_PayMentList: TcxGridLevel;
    ToolBar_Save: TPanel;
    OKBtn: TcxButton;
    CancelBtn: TcxButton;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TB_EXIT1Click(Sender: TObject);
    procedure MyTreeView_OrderExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_OrderChange(Sender: TObject; Node: TTreeNode);
    procedure TB_EXITClick(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure MyTreeView_ItemExpanding(Sender: TObject; Node: TTreeNode;
      var AllowExpansion: Boolean);
    procedure MyTreeView_ItemChange(Sender: TObject; Node: TTreeNode);
    procedure TB_RefClick(Sender: TObject);
    procedure TB_EditClick(Sender: TObject);
    procedure cxGrid1DBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure ToolButton9Click(Sender: TObject);
    procedure cxGV_OrderListCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FOrderQryPropertiesEditValueChanged(Sender: TObject);
    procedure N_AllClick(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure Act_AppExecute(Sender: TObject);
    procedure Act_EditExecute(Sender: TObject);
    procedure Act_DelExecute(Sender: TObject);
    procedure Act_K3Execute(Sender: TObject);
    procedure Act_AuditExecute(Sender: TObject);
    procedure Act_StatusExecute(Sender: TObject);
    procedure Act_SubmitExecute(Sender: TObject);
    procedure Act_CheckExecute(Sender: TObject);
    procedure Act_PushDownExecute(Sender: TObject);
    procedure cxGV_PayMentCellClick(Sender: TcxCustomGridTableView;
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
    procedure Act_Ref_OrderExecute(Sender: TObject);
    procedure cxGV_OrderCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Act_Ref_WriteExecute(Sender: TObject);
    procedure cxGV_PayMentSelectionChanged(Sender: TcxCustomGridTableView);
    procedure N_EditClick(Sender: TObject);
    procedure N_FilterClick(Sender: TObject);
    procedure N_SortClick(Sender: TObject);
    procedure N_GroupClick(Sender: TObject);
    procedure N_SetClick(Sender: TObject);
    procedure N_OutClick(Sender: TObject);
    procedure Act_MenuExecute(Sender: TObject);
    procedure Act_Menu_SetExecute(Sender: TObject);
    procedure cxGrid_PayMentContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid_PayMentListContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid_OrderContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure cxGrid_OrderListContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Act_TS_ItemExecute(Sender: TObject);
    procedure Act_TS_WriteExecute(Sender: TObject);
    procedure cxGV_OrderSelectionChanged(Sender: TcxCustomGridTableView);

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
  Frm_DesignPayMent: TFrm_DesignPayMent;
implementation

uses FRMDATA, COMMON, FrmSelect, ProgBar, PROGRASS;

{$R *.dfm}


function TFrm_DesignPayMent.AddRd: bool;
var
  qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  If mData_PayMentList.RecordCount<=0 then
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

function TFrm_DesignPayMent.EditRd:bool;
var
  qry:TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  result:=False;

  If mData_PayMentList.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  mData_PayMentList.Edit;
  mData_PayMentList.Post;

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

function TFrm_DesignPayMent.DelRd: bool;
var
 qry: TADOQuery;
begin
  qry:=TADOQuery.Create(Self);
  qry.Connection:=mdlData.conn;
  try
    qry.SQL.Text:='Delete from T_Design_PayMent where FPayMentID=:FPayMentID';
    with qry.Parameters do
    begin
      FindParam('FPayMentID').value:=mdata_PayMent['FPayMentID'];
    end;
    result:=qry.ExecSQL>=1;
  finally
    qry.Free;
  end;
end;



function TFrm_DesignPayMent.AddMain: bool;
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
  mdata_PayMent.Edit;
  mdata_PayMent['FPayMentID']:=P_MaxID;;
  mdata_PayMent.post;
  try
    qry.SQL.Text:='Insert into T_Design_PayMent(FDepartmentID,FPayMentID,FPayMentNo,FPayMentDate,FPayMentReMark,'
                 +'FPayMentSumAmount,FOrderSumAmount,FPayMentWriteID,FPayMentWriteDate,FPayMentStatus) '
                 +'values(:FDepartmentID,:FPayMentID,:FPayMentNo,:FPayMentDate,:FPayMentReMark,'
                 +':FPayMentSumAmount,:FOrderSumAmount,:FPayMentWriteID,:FPayMentWriteDate,:FPayMentStatus)';
   with qry.Parameters do
   begin
     FindParam('FDepartmentID').value:=UserFDepartmentID;
     If P_state=0 then  //新增
     begin
        FindParam('FPayMentID').value:=P_MaxID;
        FindParam('FPayMentNo').value:=P_MaxNum;
     end;
     If P_state=1 then  //修改
     begin
        FindParam('FPayMentID').value:=mdata_PayMent['FPayMentID'];
        FindParam('FPayMentNo').value:=mdata_PayMent['FPayMentNo'];
     end;
     FindParam('FPayMentDate').value:=mdata_PayMent['FPayMentDate'];
     FindParam('FPayMentReMark').value:=mdata_PayMent['FPayMentReMark'];
     FindParam('FPayMentSumAmount').value:=cxGV_PayMentList.DataController.Summary.FooterSummaryValues[0];
     FindParam('FOrderSumAmount').value:=cxGV_PayMentList.DataController.Summary.FooterSummaryValues[1];
     FindParam('FPayMentWriteID').value:=UserNumID;
     FindParam('FPayMentWriteDate').value:=now();
     FindParam('FPayMentStatus').value:=mdata_PayMent['FPayMentStatus'];
   end;
     result:=qry.ExecSQL>=1;
   finally
     qry.Free;
   end;

end;


function TFrm_DesignPayMent.AddList: bool;
var
  qry,qry1: TADOQuery;
  i: integer;
begin
  qry:=TADOQuery.Create(Self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  qry.EnableBCD:=False;//小数位数>4
  qry.CommandTimeout:=500;
  result:=False;

  If mData_PayMentList.RecordCount<=0 then
  begin
    result:=True;
    Exit;
  end;

  try
    qry.SQL.Text:='Insert into T_Design_PayMentList(FPayMentID,FOrderID,FPayMentListNum,FPayMentListReMark,FPayMentAmount) '
                 +'values(:FPayMentID,:FOrderID,:FPayMentListNum,:FPayMentListReMark,:FPayMentAmount)';
    mData_PayMentList.First;
    i:=1;
    while not mData_PayMentList.eof do
    begin
      If (mData_PayMentList['FPayMentAmount']<>0) and (mData_PayMentList['FOrderID']<>0) then
      begin
        If qry.Active then qry.Close;
        If P_state=0 then  //新增
           qry.Parameters.FindParam('FPayMentID').value:=P_MaxID;
        If P_state=1 then  //修改
           qry.Parameters.FindParam('FPayMentID').value:=mData_PayMentList['FPayMentID'];
        qry.Parameters.FindParam('FOrderID').value:= mData_PayMentList['FOrderID'];
        qry.Parameters.FindParam('FPayMentListNum').value:=i;
        qry.Parameters.FindParam('FPayMentListReMark').value:=mData_PayMentList['FPayMentListReMark'];
        qry.Parameters.FindParam('FPayMentAmount').value:=mData_PayMentList['FPayMentAmount'];
        result:=qry.ExecSQL>=1;
        if not result then break;
      end;
        mData_PayMentList.Next;
        i:=i+1;
     end;
   finally
     qry.Free;
   end;
end;


procedure TFrm_DesignPayMent.FormResize(Sender: TObject);
begin
  inherited;

  Act_Ref_Write.Execute;
  Act_Ref_Item.Execute;
  Act_Ref_Order.Execute;

  TS_Order.TabEnabled:=False;
  L_title.Caption:=UserFDepartmentName+'付款申请单';
  Self.Caption:=UserFDepartmentName+'付款申请单';
end;

procedure TFrm_DesignPayMent.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
  Frm_DesignPayMent:=nil;
end;

procedure TFrm_DesignPayMent.TB_EXIT1Click(Sender: TObject);
begin
  inherited;
  PC_1.ActivePage:=TS_PayMent;
  TS_Order.TabEnabled:=False;
  TS_PayMent.TabEnabled:=True;

end;

procedure TFrm_DesignPayMent.MyTreeView_OrderExpanding(Sender: TObject;
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
               +'Isleaf from VT_DesignOrder_Write_Sel where FParentNumber= '''
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
    with MyTreeView_Order.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;


end;

procedure TFrm_DesignPayMent.MyTreeView_OrderChange(Sender: TObject;
  Node: TTreeNode);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If Node = nil then Exit;
  with PTree(Node.Data)^ do
  begin
    ListItemFNumber_Sel:=trim(PTree(Node.Data).FNumber);
    P_Isleaf_Sel:=PTree(Node.Data).Isleaf;
    If MyItemListwhere(qry,Mdata_Order,'V_DesignOrder','FFullNumber_Write',ListItemFNumber_Sel,' and FOrderSumAmount<>FPayMentAmount ','') then
    If MyItemList(qry,Mdata_OrderList,'V_DesignOrderList','FFullNumber_Write',ListItemFNumber_Sel,'FOrderNum') then
 end;

end;

procedure TFrm_DesignPayMent.TB_EXITClick(Sender: TObject);
begin
  inherited;
  self.Close;

end;

procedure TFrm_DesignPayMent.OKBtnClick(Sender: TObject);
var qry: TADOQuery;

begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  mData_PayMentList.Edit;
  mData_PayMentList.Post;

{  while not mData.eof do
  begin
    If (mData['FOrderQry']=0) or (mData['FOrderPrice']=0) or (mData['FTaxRate']=0) then
    begin
      application.MessageBox('数量,单价不能为空！请重新输入','系统提示',MB_ICONERROR);
      Exit;
    end;
    mData.Next;
  end;
   }

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

procedure TFrm_DesignPayMent.CancelBtnClick(Sender: TObject);
begin
  inherited;
  P_state :=2;//不在新增、修改状态
  Act_SetClose.Execute;
end;

procedure TFrm_DesignPayMent.MyTreeView_ItemExpanding(Sender: TObject;
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
               +'Isleaf from VT_Design_PayMent where FParentNumber= '''
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
    with MyTreeView_Item.Items.AddChildObject(Node,P.Caption,P) do
    begin
       HasChildren :=not qry.fieldbyname('Isleaf').value;
    end;
    qry.Next;
  end;

end;

procedure TFrm_DesignPayMent.MyTreeView_ItemChange(Sender: TObject;
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

procedure TFrm_DesignPayMent.TB_RefClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If not TreeVeiwListWhere(qry,MyTreeView_Item,'VT_DesignOrder',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
 
end;

procedure TFrm_DesignPayMent.TB_EditClick(Sender: TObject);
begin
  inherited;
  P_state :=1;
  If (mData_PayMentList.RecordCount<1) then
    Exit;
  cxGV_PayMentList.DataController.DataSource:=DS_mData_PayMentList;
  cxGvColumn(cxGv_PayMentList,mData_PayMentList);
    Act_SetOpen.Execute;

end;

procedure TFrm_DesignPayMent.cxGrid1DBTableView1StylesGetContentStyle(
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

procedure TFrm_DesignPayMent.ToolButton9Click(Sender: TObject);
var  i,j,n: integer;
     Insertbz:boolean;
begin
  inherited;
  mData_PayMentList.Open;
  mData_PayMentList.First;
  for i:=0 to cxGV_Order.DataController.Controller.SelectedRecordCount-1 do
  begin
    Insertbz:=false;
    j:=cxGV_Order.DataController.GetSelectedRowIndex(i);
    while not mData_PayMentList.eof  do
    begin
      If mData_PayMentList['FOrderID']<>cxGV_Order.DataController.GetValue(J,0) then
      begin
         mData_PayMentList.Next;
      end
      else
      begin
        application.MessageBox('记录重复选！请重新选择','系统提示',MB_ICONERROR);
        Exit;
      end;
    end
  end;
  mData_PayMentList.First;
  for i:=0 to cxGV_Order.DataController.Controller.SelectedRecordCount-1 do
  begin
    Insertbz:=True;
    j:=cxGV_Order.DataController.GetSelectedRowIndex(i);
    If (cxGV_Order.DataController.GetValue(J,0)<>0) then    //FOrderID
    Begin
      mData_PayMentList.Append;
      mData_PayMentList.Edit;
      mData_PayMentList['FOrderNum']:=cxGV_Order.DataController.GetValue(J,1);
      mData_PayMentList['FOrderDate']:=cxGV_Order.DataController.GetValue(J,2);
      mData_PayMentList['FOrderStatus']:=cxGV_Order.DataController.GetValue(J,4);
      mData_PayMentList['FSupplierName']:=cxGV_Order.DataController.GetValue(J,5);
      mData_PayMentList['FPayMentMode']:=cxGV_Order.DataController.GetValue(J,6);
      mData_PayMentList['FBranchItemNumber']:=cxGV_Order.DataController.GetValue(J,7);
      mData_PayMentList['FClientShortName']:=cxGV_Order.DataController.GetValue(J,8);
      mData_PayMentList['FPrecastDate']:=cxGV_Order.DataController.GetValue(J,9);
      mData_PayMentList['FFactDate']:=cxGV_Order.DataController.GetValue(J,10);
      //mdata['FInvoice']:=cxGV_M2.DataController.GetValue(J,7);
      mData_PayMentList['FInvoiceStatus']:=cxGV_Order.DataController.GetValue(J,12);
      mData_PayMentList['FOrdersumAmount']:=cxGV_Order.DataController.GetValue(J,13);
      // mdata['FTaxRate']:=cxGV_M2.DataController.GetValue(J,14);
      mData_PayMentList['FOrderReMark']:=cxGV_Order.DataController.GetValue(J,15);
      mData_PayMentList['FOrderID']:=cxGV_Order.DataController.GetValue(J,0);
      mData_PayMentList['FPayMentNum']:=mdata_PayMent['FPayMentNum'];
      mData_PayMentList['FPayMentDate']:=mdata_PayMent['FPayMentDate'];
      mData_PayMentList.Post;
      Insertbz:=False;
    end;
    if Insertbz then break;
  end;
  cxGV_Order.DataController.DeleteSelection;   //多行删除

  PC_1.ActivePage:=TS_PayMent;

end;

procedure TFrm_DesignPayMent.cxGV_OrderListCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
 { if cxGV2.Controller.FocusedRowIndex=AViewInfo.RecordViewInfo.Index  then  //是否是选中行
     else
  if StrToFloat(AViewInfo.GridRecord.DisplayTexts[FOrderQry_2.Index])<>StrToFloat(AViewInfo.GridRecord.DisplayTexts[FTenderCoeQry_2.Index]) then    //设置行颜色
  begin
    ACanvas.Canvas.brush.Color := clInactiveCaptionText;
    ACanvas.FillRect(AViewInfo.Bounds);
  end;
  }
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

procedure TFrm_DesignPayMent.FormCreate(Sender: TObject);
begin
  inherited;
  P_state :=2;//不在新增、修改状态
  Act_App.Visible:= mdlData.CheckFrmRights(TFrm_DesignPayMent.ClassName,'新增');
  TB_Print.Visible:= mdlData.CheckFrmRights(TFrm_DesignPayMent.ClassName,'打印');
  TB_k3.Visible:= mdlData.CheckFrmRights(TFrm_DesignPayMent.ClassName,'下推');

  TS_Write.TabVisible:= mdlData.CheckFrmRights(TFrm_DesignPayMent.ClassName,'新增');


  If mdlData.CheckFrmRights(TFrm_DesignPayMent.ClassName,'审核') then
     TS_Item.TabVisible:=True;
  If mdlData.CheckFrmRights(TFrm_DesignPayMent.ClassName,'校对') then
     TS_Item.TabVisible:=True;

end;

procedure TFrm_DesignPayMent.FOrderQryPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  mData_PayMentList.Edit;

end;

procedure TFrm_DesignPayMent.N_AllClick(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;

  If MyItemList(qry,mdata_PayMent,'V_DesignOrder','FDepartmentName+'';''+cast(year(FOrderDate) as varchar(4))+'';''+cast(month(FOrderDate) as varchar(2))+'';''+cast(FOrderStatus as varchar(2))+'';''+FOrderNum+'';''',ListItemFNumber,'') then
  begin
    cxGv_PayMent.DataController.DataSource:=DS_Mdata_PayMent;
    cxGvColumn(cxGv_PayMent,mdata_PayMent);
    L_title.Caption:='采购订单查询';
      Act_SetClose.Execute;
  end;

end;

procedure TFrm_DesignPayMent.N5Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If MyItemListwhere(qry,mdata_PayMent,'V_DesignOrder','FDepartmentName+'';''+cast(year(FOrderDate) as varchar(4))+'';''+cast(month(FOrderDate) as varchar(2))+'';''+cast(FOrderStatus as varchar(2))+'';''+FOrderNum+'';''',ListItemFNumber3,' and FOrderStatus<3 ','') then
  begin
    cxGv_PayMent.DataController.DataSource:=DS_Mdata_PayMent;
    cxGvColumn(cxGv_PayMent,mdata_PayMent);
    L_title.Caption:='查询未审核单据';
  end;


end;

procedure TFrm_DesignPayMent.N6Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If MyItemListwhere(qry,mdata_PayMent,'V_DesignOrder','FDepartmentName+'';''+cast(year(FOrderDate) as varchar(4))+'';''+cast(month(FOrderDate) as varchar(2))+'';''+cast(FOrderStatus as varchar(2))+'';''+FOrderNum+'';''',ListItemFNumber3,' and FOrderStatus>=3 ','') then
  begin
    cxGv_PayMent.DataController.DataSource:=DS_Mdata_PayMent;
    cxGvColumn(cxGv_PayMent,mdata_PayMent);
    L_title.Caption:='查询已审核单据';
  end;

end;

procedure TFrm_DesignPayMent.N7Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If MyItemListwhere(qry,mdata_PayMent,'V_DesignOrder','FDepartmentName+'';''+cast(year(FOrderDate) as varchar(4))+'';''+cast(month(FOrderDate) as varchar(2))+'';''+cast(FOrderStatus as varchar(2))+'';''+FOrderNum+'';''',ListItemFNumber3,' and FInvoiceStatus=0 ','') then
  begin
    cxGv_PayMent.DataController.DataSource:=DS_Mdata_PayMent;
    cxGvColumn(cxGv_PayMent,mdata_PayMent);
    L_title.Caption:='查询未收发票';
  end;

end;

procedure TFrm_DesignPayMent.N8Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If MyItemListwhere(qry,mdata_PayMent,'V_DesignOrder','FDepartmentName+'';''+cast(year(FOrderDate) as varchar(4))+'';''+cast(month(FOrderDate) as varchar(2))+'';''+cast(FOrderStatus as varchar(2))+'';''+FOrderNum+'';''',ListItemFNumber3,' and FInvoiceStatus=1 ','') then
  begin
    cxGv_PayMent.DataController.DataSource:=DS_Mdata_PayMent;
    cxGvColumn(cxGv_PayMent,mdata_PayMent);
    L_title.Caption:='查询已收发票';
  end;

end;

procedure TFrm_DesignPayMent.N9Click(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If (cxGV_PayMentList.DataController.DataSource=DS_Mdata_PayMent)  then
  begin
    If MyItemListwhere(qry,mdata_PayMent,'V_DesignOrder','FDepartmentName+'';''+cast(year(FOrderDate) as varchar(4))+'';''+cast(month(FOrderDate) as varchar(2))+'';''+cast(FOrderStatus as varchar(2))+'';''+FOrderNum+'';''',ListItemFNumber3,' and FInvoiceStatus=2 ','') then
    begin
      cxGv_PayMent.DataController.DataSource:=DS_Mdata_PayMent;
      cxGvColumn(cxGv_PayMent,mdata_PayMent);
      L_title.Caption:='查询已核销发票';
    end;
  end;
end;

procedure TFrm_DesignPayMent.Act_AppExecute(Sender: TObject);
var
 i:Integer;
 qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state :=0;     //新增
  L_title.Caption:='采购订单信息新增';

  PageControl2.Visible:=True;

  try
    qry.SQL.Text:='Select * from  V_Design_PayMent with(nolock) where FPayMentID=:FPayMentID';
    qry.Parameters.FindParam('FPayMentID').value:= 0;
    qry.Open;
  finally
    ;
  end;
  mdata_PayMent.CopyFromDataSet(qry);
  mdata_PayMent.Open;
  mdata_PayMent.Edit;
  mdata_PayMent.Append;
  mdata_PayMent.Edit;
  mdata_PayMent['FPayMentDate']:=date();
  mdata_PayMent.Post;

  Act_Set_MaxNum.Execute;    //取单号

  mdata_PayMent.Edit;
  mdata_PayMent['FPayMentNo']:=P_MaxNum;
  mdata_PayMent['FPayMentID']:=0;
  mdata_PayMent['FPayMentNum']:=ForMatDateTime('yyyymm',(date()))+Format('%.4d',[(P_MaxNum)]);
  mdata_PayMent['FPayMentStatus']:=0;
  mdata_PayMent['FPayMentStatusNotes']:='填单';
  mdata_PayMent['FPayMentDate']:=date();
  mdata_PayMent['FPayMentWrite']:=UserNum;
  mdata_PayMent['FPayMentWriteDate']:=date();
  mdata_PayMent.Post;

   //明细表
  try
    qry.SQL.Text:='Select * from  V_Design_PayMentList with(nolock) where FPayMentListID=:FPayMentListID';
    qry.Parameters.FindParam('FPayMentListID').value:= 0;
    qry.Open;
  finally
    ;
  end;
  mdata_PayMentList.CopyFromDataSet(qry);
  mdata_PayMentList.Open;
  mdata_PayMentList.Close;


  Act_Ref_Order.Execute;
  Act_SetOpen.Execute;
  TBar_Sel.Visible:=True;

end;

procedure TFrm_DesignPayMent.Act_EditExecute(Sender: TObject);
var
 qry:TADOquery;
begin
  qry:=TAdoQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  P_state :=1;
  If (mData_PayMentList.RecordCount<1) then
    Exit;
  Act_SetOpen.Execute;
end;

procedure TFrm_DesignPayMent.Act_DelExecute(Sender: TObject);
var
  qry:TADOQuery;
begin
  qry:=TAdoQuery.Create(self);
  qry.Connection:=mdlData.conn;

  If (mData_PayMentList.RecordCount<1) then
     Exit;

  If application.MessageBox(Pchar('警告：是否删除付款申请单号为：【'+ListItemFNumber+'】的数据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本单据吗？'),'警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then
  If application.MessageBox(Pchar('警告：是否删除付款申请单号为：【'+ListItemFNumber+'】的数据？'+chr(13)+chr(13)
                           +'删除数据操作将不可恢复，确定要删除本单据吗？'),'再次警告提示',MB_ICONINFORMATION+MB_YESNO)=6 then

  begin
    //单据删除
    If not DelRd then
    begin
      application.MessageBox('删除单据失败！','系统提示',MB_ICONINFORMATION);
      mdlData.conn.RollbackTrans;
      Exit;
    end;
    mdata_PayMent.Edit;
    mdata_PayMent.Delete;
  end;
  mData_PayMentList.Close;
  qry.Free;
end;

procedure TFrm_DesignPayMent.Act_K3Execute(Sender: TObject);
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
        value:=mdata_PayMent['FOrderId'];
      end;
      with proc.Parameters.AddParameter do
      begin
        DataType := ftInteger;
        Direction := pdinput;
        size:=20;
        name := '@FItem3003';
        value:=mdata_PayMent['FItem3003'];
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

procedure TFrm_DesignPayMent.Act_AuditExecute(Sender: TObject);
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
      mdata_PayMent.First;
      while not mdata_PayMent.eof do
      begin
        try
          qry.SQL.Text:='Update T_Design_PayMent Set FPayMentStatus=3,FPayMentAuditID=:FPayMentAuditID,FPayMentAuditDate=:FPayMentAuditDate  where FPayMentID=:FPayMentID';
          qry.Parameters.FindParam('FPayMentAuditID').value:= UserNumID;
          qry.Parameters.FindParam('FPayMentAuditDate').value:= now();
          qry.Parameters.FindParam('FPayMentID').value:=mdata_PayMent['FPayMentID'];
          qry.ExecSQL;
        finally
          ;
        end;
        mdata_PayMent.Edit;
        mdata_PayMent['FPayMentStatus']:=3;
        mdata_PayMent['FPayMentStatusNotes']:='审核';
        mdata_PayMent['FPayMentAuditID']:=UserNumID;
        mdata_PayMent['FPayMentAudit']:=UserNum;
        mdata_PayMent['FPayMentAuditDate']:=now();
        mdata_PayMent.Post;
        mdata_PayMent.Next;
      end;
      If mdata_PayMent.RecordCount=1 then
      begin
        application.MessageBox('审核完毕！','系统提示',MB_ICONINFORMATION);
        TB_Audit.Caption:='审核撤回';
      end;
      If mdata_PayMent.RecordCount>1 then
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
      mdata_PayMent.First;
      while not mdata_PayMent.eof do
      begin
        try
          qry.SQL.Text:='Update T_Design_PayMent Set FPayMentStatus=2,FPayMentAuditID=:FPayMentAuditID,FPayMentAuditDate=:FPayMentAuditDate where FPayMentID=:FPayMentID';
          qry.Parameters.FindParam('FPayMentAuditID').value:= UserNumID;
          qry.Parameters.FindParam('FPayMentAuditDate').value:= Null;
          qry.Parameters.FindParam('FPayMentID').value:= mdata_PayMent['FPayMentID'];
          qry.ExecSQL;
        finally
          ;
        end;
        mdata_PayMent.Edit;
        mdata_PayMent['FPayMentStatus']:=2;
        mdata_PayMent['FPayMentStatusNotes']:='校对';
        mdata_PayMent['FPayMentAuditID']:=0;
        mdata_PayMent['FPayMentAudit']:='';
        mdata_PayMent['FPayMentAuditDate']:=Null;
        mdata_PayMent.Post;
        mdata_PayMent.Next;
      end;
      If mdata_PayMent.RecordCount=1 then
      begin
        application.MessageBox('审核撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Audit.Caption:='审核';
      end;
      If mdata_PayMent.RecordCount>1 then
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

procedure TFrm_DesignPayMent.Act_StatusExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;

  If MData_PayMent.RecordCount<=0 then
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
      qry.SQL.Text:='Select distinct FPayMentStatus from V_Design_PayMent with(nolock) where FFullNumber like :FFullNumber and FDepartmentID=:FDepartmentID';
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
      qry.SQL.Text:='Select distinct FPayMentStatus from V_Design_PayMent with(nolock) where FFullNumber_Write like :FFullNumber_Write and FDepartmentID=:FDepartmentID';
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
      qry.SQL.Text:='Select FPayMentStatus,FPayMentWriteID from V_Design_PayMent with(nolock) '
                   +' where FPayMentStatus=0  and FFullNumber like :FFullNumber and FPayMentWriteID=:FPayMentWriteID and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Item+'%';
      qry.Parameters.FindParam('FPayMentWriteID').value:= UserNumID;
      qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
      qry.Open;
    finally
      ;
     end;
  end;
  If PC_Tree.ActivePage=TS_Write then
  begin
    try
      qry.SQL.Text:='Select FPayMentStatus,FPayMentWriteID from V_Design_PayMent with(nolock) '
                   +' where FPayMentStatus=0  and FFullNumber_Write like :FFullNumber_Write and FPayMentWriteID=:FPayMentWriteID and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber_Write').value:=ListItemFNumber_Write+'%';
      qry.Parameters.FindParam('FPayMentWriteID').value:= UserNumID;
      qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
      qry.Open;
    finally
      ;
    end;
  end;


  If qry.RecordCount=1 then
  begin
    TB_Submit.Caption:='提交';
    TB_Submit.Visible:=mdlData.CheckFrmRights(TFrm_DesignPayMent.ClassName,'提交');
    TB_Edit.Visible:=mdlData.CheckFrmRights(TFrm_DesignPayMent.ClassName,'修改');
    TB_Del.Visible:=mdlData.CheckFrmRights(TFrm_DesignPayMent.ClassName,'删除');
  end;
  If qry.RecordCount>1 then
  begin
    TB_Submit.Caption:='批量提交';
    TB_Submit.Visible:=mdlData.CheckFrmRights(TFrm_DesignPayMent.ClassName,'提交');
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;

   //提交撤回
  try
    If PC_Tree.ActivePage=TS_Item then
    begin
      qry.SQL.Text:='Select FPayMentStatus,FPayMentWriteID from V_Design_PayMent with(nolock) '
                   +' where FPayMentStatus=1  and FFullNumber like :FFullNumber and FPayMentWriteID=:FPayMentWriteID and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Item+'%';
    end;
    If PC_Tree.ActivePage=TS_Write then
    begin
      qry.SQL.Text:='Select FPayMentStatus,FPayMentWriteID from V_Design_PayMent with(nolock) '
                   +' where FPayMentStatus=1  and FFullNumber_Write like :FFullNumber_Write and FPayMentWriteID=:FPayMentWriteID and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber_Write').value:=ListItemFNumber_Write+'%';
    end;
    qry.Parameters.FindParam('FPayMentWriteID').value:= UserNumID;
    qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount=1 then
  begin
    TB_Submit.Caption:='提交撤回';
    TB_Submit.Visible:=mdlData.CheckFrmRights(TFrm_DesignPayMent.ClassName,'提交');
    TB_Check.Caption:='校对';
    TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignPayMent.ClassName,'校对');
    TB_Edit.Visible:=mdlData.CheckFrmRights(TFrm_DesignPayMent.ClassName,'修改');
    TB_Del.Visible:=mdlData.CheckFrmRights(TFrm_DesignPayMent.ClassName,'删除');
    TB_Check.Visible:=False;
  end;
  If qry.RecordCount>1 then
  begin
    TB_Submit.Caption:='批量提交撤回';
    TB_Submit.Visible:=mdlData.CheckFrmRights(TFrm_DesignPayMent.ClassName,'提交');
    TB_Check.Caption:='批量校对';
    TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignPayMent.ClassName,'校对');
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
    TB_Check.Visible:=False;
  end;

  //校对 1
  try
    If PC_Tree.ActivePage=TS_Item then
    begin
      qry.SQL.Text:='Select FPayMentStatus from V_Design_PayMent with(nolock) '
                   +' where FPayMentStatus=1 and FFullNumber like :FFullNumber and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Item+'%';
    end;
     If PC_Tree.ActivePage=TS_Write then
    begin
      qry.SQL.Text:='Select FPayMentStatus from V_Design_PayMent with(nolock) '
                   +' where FPayMentStatus=1 and FFullNumber_Write like :FFullNumber_Write and FDepartmentID=:FDepartmentID';
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
    TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignPayMent.ClassName,'校对');
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;
  If qry.RecordCount>1 then
  begin
    TB_Check.Caption:='批量校对';
    TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignPayMent.ClassName,'校对');
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;
     //校对  2
  try
    If PC_Tree.ActivePage=TS_Item then
    begin
      qry.SQL.Text:='Select FPayMentStatus from V_Design_PayMent with(nolock) '
                   +' where FPayMentStatus=2 and FFullNumber like :FFullNumber and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Item+'%';
    end;
    If PC_Tree.ActivePage=TS_Write then
    begin
      qry.SQL.Text:='Select FPayMentStatus from V_Design_PayMent with(nolock) '
                   +' where FPayMentStatus=2 and FFullNumber_Write like :FFullNumber_Write and FDepartmentID=:FDepartmentID';
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
    TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignPayMent.ClassName,'校对');
    TB_Audit.Caption:='审核';
    TB_Audit.Visible:=mdlData.CheckFrmRights(TFrm_DesignPayMent.ClassName,'审核');
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;
  If qry.RecordCount>1 then
  begin
    TB_Check.Caption:='批量校对';
    TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignPayMent.ClassName,'校对');
    TB_Audit.Caption:='批量审核';
    TB_Audit.Visible:=mdlData.CheckFrmRights(TFrm_DesignPayMent.ClassName,'审核');
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;
  //审核  3
  try
    If PC_Tree.ActivePage=TS_Item then
    begin
      qry.SQL.Text:='Select FPayMentStatus from V_Design_PayMent with(nolock) '
                   +' where FPayMentStatus=3 and FFullNumber like :FFullNumber and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Item+'%';
    end;
    If PC_Tree.ActivePage=TS_Write then
    begin
      qry.SQL.Text:='Select FPayMentStatus from V_Design_PayMent with(nolock) '
                   +' where FPayMentStatus=3 and FFullNumber_Write like :FFullNumber_Write and FDepartmentID=:FDepartmentID';
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
    TB_PushDown.Visible:=mdlData.CheckFrmRights(TFrm_DesignPayMent.ClassName,'下推');

    TB_Check.Visible:=False;
    TB_Audit.Visible:=False;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;
  If qry.RecordCount>1 then
  begin
    TB_PushDown.Caption:='批量下推';
    TB_PushDown.Visible:=mdlData.CheckFrmRights(TFrm_DesignPayMent.ClassName,'下推');

    TB_Check.Visible:=False;
    TB_Audit.Visible:=False;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;

   //校对撤回
  try
    If PC_Tree.ActivePage=TS_Item then
    begin
      qry.SQL.Text:='Select FPayMentStatus,FPayMentCheckID from V_Design_PayMent with(nolock) '
                   +' where FPayMentStatus=2 and FFullNumber like :FFullNumber and FPayMentCheckID=:FPayMentCheckID and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Item+'%';
    end;
    If PC_Tree.ActivePage=TS_Write then
    begin
      qry.SQL.Text:='Select FPayMentStatus,FPayMentCheckID from V_Design_PayMent with(nolock) '
                   +' where FPayMentStatus=2 and FFullNumber_Write like :FFullNumber_Write and FPayMentCheckID=:FPayMentCheckID and FDepartmentID=:FDepartmentID';
      qry.Parameters.FindParam('FFullNumber_Write').value:=ListItemFNumber_Write+'%';
    end;
    qry.Parameters.FindParam('FPayMentCheckID').value:= UserNumID;
    qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount=1 then
  begin
    TB_Check.Caption:='校对撤回';
    TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignPayMent.ClassName,'校对');
    TB_Submit.Visible:=False;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;
  If qry.RecordCount>1 then
  begin
    TB_Check.Caption:='批量校对撤回';
    TB_Check.Visible:=mdlData.CheckFrmRights(TFrm_DesignPayMent.ClassName,'校对');
    TB_Submit.Visible:=False;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;

   //审核撤回
  try
    If PC_Tree.ActivePage=TS_Item then
    begin
      qry.SQL.Text:='Select FPayMentStatus,FPayMentAuditID from V_Design_PayMent with(nolock) '
                  +' where FPayMentStatus=3 and FFullNumber like :FFullNumber and FPayMentAuditID=:FPayMentAuditID and FDepartmentID=:FDepartmentID ';
      qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Item+'%';
    end;
    If PC_Tree.ActivePage=TS_Write then
    begin
      qry.SQL.Text:='Select FPayMentStatus,FPayMentAuditID from V_Design_PayMent with(nolock) '
                  +' where FPayMentStatus=3 and FFullNumber_Write like :FFullNumber_Write and FPayMentAuditID=:FPayMentAuditID and FDepartmentID=:FDepartmentID ';
      qry.Parameters.FindParam('FFullNumber_Write').value:=ListItemFNumber_Write+'%';
    end;
    qry.Parameters.FindParam('FPayMentAuditID').value:= UserNumID;
    qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount=1 then
  begin
    TB_Audit.Caption:='审核撤回';
    TB_Audit.Visible:=mdlData.CheckFrmRights(TFrm_DesignPayMent.ClassName,'审核');
    TB_Check.Visible:=False;
    TB_Submit.Visible:=False;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;
  If qry.RecordCount>1 then
  begin
    TB_Audit.Caption:='批量审核撤回';
    TB_Audit.Visible:=mdlData.CheckFrmRights(TFrm_DesignPayMent.ClassName,'审核');
    TB_Submit.Visible:=False;
    TB_Check.Visible:=False;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;


   //下推撤回
  try
    If PC_Tree.ActivePage=TS_Item then
    begin
      qry.SQL.Text:='Select FPayMentStatus,FPayMentPushDownID from V_Design_PayMent with(nolock) '
                   +' where FPayMentStatus=4 and FFullNumber like :FFullNumber and FPayMentPushDownID=:FPayMentPushDownID and FDepartmentID=:FDepartmentID ';
      qry.Parameters.FindParam('FFullNumber').value:=ListItemFNumber_Item+'%';
    end;
     If PC_Tree.ActivePage=TS_Write then
    begin
      qry.SQL.Text:='Select FPayMentStatus,FPayMentPushDownID from V_Design_PayMent with(nolock) '
                   +' where FPayMentStatus=4 and FFullNumber_Write like :FFullNumber_Write and FPayMentPushDownID=:FPayMentPushDownID and FDepartmentID=:FDepartmentID ';
      qry.Parameters.FindParam('FFullNumber_Write').value:=ListItemFNumber_Write+'%';
    end;

    qry.Parameters.FindParam('FPayMentPushDownID').value:= UserNumID;
    qry.Parameters.FindParam('FDepartmentID').value:= UserFDepartmentID;
    qry.Open;
  finally
    ;
  end;
  If qry.RecordCount=1 then
  begin
    TB_PushDown.Caption:='下推撤回';
    TB_PushDown.Visible:=mdlData.CheckFrmRights(TFrm_DesignPayMent.ClassName,'下推');
    TB_Audit.Visible:=False;
    TB_Check.Visible:=False;
    TB_Submit.Visible:=False;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;
  If qry.RecordCount>1 then
  begin
    TB_PushDown.Caption:='批量下推撤回';
    TB_PushDown.Visible:=mdlData.CheckFrmRights(TFrm_DesignPayMent.ClassName,'下推');
    TB_Audit.Visible:=False;
    TB_Submit.Visible:=False;
    TB_Check.Visible:=False;
    TB_Edit.Visible:=False;
    TB_Del.Visible:=False;
  end;
 
end;

procedure TFrm_DesignPayMent.Act_SubmitExecute(Sender: TObject);
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
      mdata_PayMent.First;
      while not mdata_PayMent.eof do
      begin
        try
          qry.SQL.Text:='Update T_Design_PayMent Set FPayMentStatus=1,FPayMentSubmitDate=:FPayMentSubmitDate  where FPayMentID=:FPayMentID';
          qry.Parameters.FindParam('FPayMentSubmitDate').value:= now();
          qry.Parameters.FindParam('FPayMentID').value:=mdata_PayMent['FPayMentID'];
          qry.ExecSQL;
        finally
          ;
        end;
        mdata_PayMent.Edit;
        mdata_PayMent['FPayMentStatus']:=1;
        mdata_PayMent['FPayMentStatusNotes']:='提交';
        mdata_PayMent['FPayMentSubmitDate']:=now();
        mdata_PayMent.Post;
        mdata_PayMent.Next;
      end;
      If mdata_PayMent.RecordCount=1 then
      begin
        application.MessageBox('提交完毕！','系统提示',MB_ICONINFORMATION);
        TB_Submit.Caption:='提交撤回';
        TB_Edit.Visible:=False;
        TB_Del.Visible:=False;
      end;
      If mdata_PayMent.RecordCount>1 then
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
      mdata_PayMent.First;
      while not mdata_PayMent.eof do
      begin
        try
          qry.SQL.Text:='Update T_Design_PayMent Set FPayMentStatus=0,FPayMentSubmitDate=:FPayMentSubmitDate where FPayMentID=:FPayMentID';
          qry.Parameters.FindParam('FPayMentSubmitDate').value:= Null;
          qry.Parameters.FindParam('FPayMentID').value:= mdata_PayMent['FPayMentID'];
          qry.ExecSQL;
        finally
          ;
        end;
        mdata_PayMent.Edit;
        mdata_PayMent['FPayMentStatus']:=0;
        mdata_PayMent['FPayMentStatusNotes']:='填单';
        mdata_PayMent['FPayMentSubmitDate']:=Null;
        mdata_PayMent.Post;
        mdata_PayMent.Next;
      end;
      If mdata_PayMent.RecordCount=1 then
      begin
        application.MessageBox('提交撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Submit.Caption:='提交';
      end;
      If mdata_PayMent.RecordCount>1 then
      begin
        application.MessageBox('批量提交撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Submit.Caption:='批量提交';
        TB_Edit.Visible:=mdlData.CheckFrmRights(TFrm_DesignPayMent.ClassName,'修改');
        TB_Del.Visible:=mdlData.CheckFrmRights(TFrm_DesignPayMent.ClassName,'删除');
      end;
      Act_Status.Execute;  //权限设置
    end;
    P_state:=2;
    Exit;
  end;
  Act_Ref_Item.Execute;
  Act_Ref_Write.Execute;


end;

procedure TFrm_DesignPayMent.Act_CheckExecute(Sender: TObject);
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
      mdata_PayMent.First;
      while not mdata_PayMent.eof do
      begin
        try
          qry.SQL.Text:='Update T_Design_PayMent Set FPayMentStatus=2,FPayMentCheckID=:FPayMentCheckID,FPayMentCheckDate=:FPayMentCheckDate  where FPayMentID=:FPayMentID';
          qry.Parameters.FindParam('FPayMentCheckID').value:= UserNumID;
          qry.Parameters.FindParam('FPayMentCheckDate').value:= now();
          qry.Parameters.FindParam('FPayMentID').value:=mdata_PayMent['FPayMentID'];
          qry.ExecSQL;
        finally
          ;
        end;
        mdata_PayMent.Edit;
        mdata_PayMent['FPayMentStatus']:=2;
        mdata_PayMent['FPayMentStatusNotes']:='校对';
        mdata_PayMent['FPayMentCheckID']:=UserNumID;
        mdata_PayMent['FPayMentCheck']:=UserNum;
        mdata_PayMent['FPayMentCheckDate']:=now();
        mdata_PayMent.Post;
        mdata_PayMent.Next;
      end;
      If mdata_PayMent.RecordCount=1 then
      begin
        application.MessageBox('校对完毕！','系统提示',MB_ICONINFORMATION);
        TB_Check.Caption:='校对撤回';
      end;
      If mdata_PayMent.RecordCount>1 then
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
          qry.SQL.Text:='Update T_Design_PayMent Set FPayMentStatus=1,FPayMentCheckID=:FPayMentCheckID,FPayMentCheckDate=:FPayMentCheckDate where FPayMentID=:FPayMentID';
          qry.Parameters.FindParam('FPayMentCheckID').value:= UserNumID;
          qry.Parameters.FindParam('FPayMentCheckDate').value:= Null;
          qry.Parameters.FindParam('FPayMentID').value:= mdata_PayMent['FPayMentID'];
          qry.ExecSQL;
        finally
          ;
        end;
        mdata_PayMent.Edit;
        mdata_PayMent['FPayMentStatus']:=1;
        mdata_PayMent['FPayMentStatusNotes']:='提交';
        mdata_PayMent['FPayMentCheckID']:=0;
        mdata_PayMent['FPayMentCheck']:='';
        mdata_PayMent['FPayMentCheckDate']:=Null;
        mdata_PayMent.Post;
        mdata_PayMent.Next;
      end;
      If mdata_PayMent.RecordCount=1 then
      begin
        application.MessageBox('校对撤回完毕！','系统提示',MB_ICONINFORMATION);
        TB_Check.Caption:='校对';
      end;
      If mdata_PayMent.RecordCount>1 then
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

procedure TFrm_DesignPayMent.Act_PushDownExecute(Sender: TObject);
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
      mdata_PayMent.First;
      while not mdata_PayMent.eof do
      begin
        try
          qry.SQL.Text:='Update T_Design_PayMent Set FPayMentStatus=4,FPayMentPushDownID=:FPayMentPushDownID,FPayMentPushDownDate=:FPayMentPushDownDate  where FPayMentID=:FPayMentID';
          qry.Parameters.FindParam('FPayMentPushDownID').value:= UserNumID;
          qry.Parameters.FindParam('FPayMentPushDownDate').value:= now();
          qry.Parameters.FindParam('FPayMentID').value:=mdata_PayMent['FPayMentID'];
          qry.ExecSQL;
        finally
          ;
        end;
        mdata_PayMent.Edit;
        mdata_PayMent['FPayMentStatus']:=4;
        mdata_PayMent['FPayMentStatusNotes']:='下推';
        mdata_PayMent['FPayMentPushDownID']:=0;
        mdata_PayMent['FPayMentPushDown']:='';
        mdata_PayMent['FPayMentPushDownDate']:=now();
        mdata_PayMent.Post;
        mdata_PayMent.Next;
      end;
      If mdata_PayMent.RecordCount=1 then
      begin
        application.MessageBox('下推完毕！','系统提示',MB_ICONINFORMATION);
        TB_PushDown.Caption:='下推撤回';
      end;
      If mdata_PayMent.RecordCount>1 then
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
      mdata_PayMent.First;
      while not mdata_PayMent.eof do
      begin
        try
          qry.SQL.Text:='Update T_Design_PayMent Set FPayMentStatus=3,FPayMentPushDownID=:FPayMentPushDownID,FPayMentPushDownDate=:FPayMentPushDownDate where FPayMentID=:FPayMentID';
          qry.Parameters.FindParam('FPayMentPushDownID').value:= UserNumID;
          qry.Parameters.FindParam('FPayMentPushDownDate').value:= Null;
          qry.Parameters.FindParam('FPayMentID').value:= mdata_PayMent['FPayMentID'];
          qry.ExecSQL;
        finally
          ;
        end;
        mdata_PayMent.Edit;
        mdata_PayMent['FPayMentStatus']:=3;
        mdata_PayMent['FPayMentStatusNotes']:='审核';
        mdata_PayMent['FPayMentPushDownID']:=0;
        mdata_PayMent['FPayMentPushDown']:='';
        mdata_PayMent['FPayMentPushDownDate']:=Null;
        mdata_PayMent.Post;
        mdata_PayMent.Next;
      end;
      If mdata_PayMent.RecordCount=1 then
      begin
        application.MessageBox('下推完毕！','系统提示',MB_ICONINFORMATION);
        TB_PushDown.Caption:='下推撤回';
      end;
      If mdata_PayMent.RecordCount>1 then
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

procedure TFrm_DesignPayMent.cxGV_PayMentCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var qry: TADOQuery;
begin
{  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If P_state =2 then //不在新增、修改状态
  begin
    If mData_M['FPayMentID']<>0 then
    begin
      If MyItemList(qry,Mdata,'V_Design_PayMentList','cast(FPayMentID as varchar(20))',
                    Mdata_M['FPayMentID'],'FPayMentNum') then
      Act_Status.Execute  //权限设置
    end;
  end; }

end;

procedure TFrm_DesignPayMent.Act_SetOpenExecute(Sender: TObject);
begin
  inherited;
  TB_Ref_Item.Visible:=False;
  ToolBar_PayMent.Visible:=False;
  TBar_Sel.Visible:=True;
  ToolBar_Save.Visible:=True;


  MyTreeView_Item.Enabled:=False;

  cxGV_PayMentList.OptionsData.Editing:=True;
  cxGV_PayMent.OptionsData.Editing:=True;
  FPayMentNum_PayMent.Options.Editing:=True;

  FPayMentDate_PayMent.Options.Editing:=True;
  FPayMentReMark_PayMent.Options.Editing:=True;
  FPayMentAmount_PayMentList.Options.Editing:=True;
end;

procedure TFrm_DesignPayMent.Act_SetCloseExecute(Sender: TObject);
begin
  inherited;
  TB_Ref_Item.Visible:=True;
  ToolBar_PayMent.Visible:=True;
  TBar_Sel.Visible:=False;
  ToolBar_Save.Visible:=False;
  MyTreeView_Item.Enabled:=True;
  
  cxGV_PayMentList.OptionsData.Editing:=False;
  cxGV_PayMent.OptionsData.Editing:=False;
  MyTreeView_Item.Enabled:=True;

end;

procedure TFrm_DesignPayMent.FItem3003Name_MPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var selValue : string;
    qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.ConnectionString:=mdlData.ReadConnStr;
  mdata_PayMent.Edit;
  if mdata_PayMent['FItem3003Name']=Null then
     mdata_PayMent['FItem3003Name']:='';
  mdata_PayMent['FItem3003Name']:='';
  mdata_PayMent.Post;
  If mdata_PayMent['FItem3003Name']='' then
  begin
    try
      qry.SQL.Text:='select * from Zsi_K3_FItemClassId_3003 order by FNumber ';
      qry.Open;
    finally
      ;
    end;
    selValue:=select('选择K3生产成本对象信息','FNumber','FParentNumber','FNumber','FNumber;FName',qry);
  end
  else
  begin
    try
      qry.SQL.Text:='select * from Zsi_K3_FItemClassId_3003 where FName like :FName order by FNumber ';
      qry.Parameters.FindParam('FName').Value:='%'+mdata_PayMent['FItem3003Name']+'%';
      qry.Open;
    finally
      ;
    end;
    If qry.RecordCount=1 then
    begin
      mdata_PayMent.Edit;
      mdata_PayMent['FItem3003Name']:=qry.FieldByName('FName').Value;
      mdata_PayMent['FItem3003']:=qry.FieldByName('FItemID').Value;
      mdata_PayMent.Post;
    end
    else
      selValue:=select('选择K3生产成本对象信息','FNumber','FParentNumber','FNumber','FNumber;FName',qry);

  end;

  If (Length(selValue)>0) and (qry.FieldByName('FDetail').asBoolean=True) then
  begin
    mdata_PayMent.Edit;
    mdata_PayMent['FItem3003Name']:=qry.FieldByName('FName').Value;
    mdata_PayMent['FItem3003']:=qry.FieldByName('FItemID').Value;
    mdata_PayMent.Post;
  end;


end;

procedure TFrm_DesignPayMent.TB_SelClick(Sender: TObject);
begin
  inherited;
  TS_Order.TabEnabled:=True;
  PC_1.ActivePage:=TS_Order;
end;

procedure TFrm_DesignPayMent.Act_Set_MaxNumExecute(Sender: TObject);
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
      value:=ForMatDateTime('yyyy-mm-dd',(mdata_PayMent['FPayMentDate']));
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@TableName';
      value:='T_Design_PayMent';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@DateFiled';
      value:='FPayMentDate';
    end;
    with proc.Parameters.AddParameter do
    begin
      DataType := ftString;
      Direction := pdinput;
      size:=20;
      name := '@NumFiled';
      value:='FPayMentNo';
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

procedure TFrm_DesignPayMent.Act_Set_MaxIDExecute(Sender: TObject);
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
      value:='T_Design_PayMent';
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

procedure TFrm_DesignPayMent.MyTreeView_WriteExpanding(Sender: TObject;
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
               +'Isleaf from VT_Design_PayMent_Write where FParentNumber= '''
               +PTree(Node.Data).ID+''' and FDepartmentID=:FDepartmentID and FPayMentWriteID=:FPayMentWriteID '
               +' order by FNumber';
  qry.Parameters.FindParam('FDepartmentID').value:=UserFDepartmentID;
  qry.Parameters.FindParam('FPayMentWriteID').value:=UserNumID;
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

procedure TFrm_DesignPayMent.MyTreeView_WriteChange(Sender: TObject;
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

procedure TFrm_DesignPayMent.Act_Ref_ItemExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If not TreeVeiwListWhere(qry,MyTreeView_Item,'VT_Design_PayMent',' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
end;

procedure TFrm_DesignPayMent.Act_Ref_OrderExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If not TreeVeiwListWhere(qry,MyTreeView_Order,'VT_DesignOrder_Write_Sel',' and FOrderWriteID='+IntToStr(UserNumID)+' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;
end;

procedure TFrm_DesignPayMent.cxGV_OrderCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If Mdata_Order['FOrderID']<>0 then
  begin
    If MyItemList(qry,Mdata_OrderList,'V_DesignOrderList','cast(FOrderID as varchar(20))',
                  Mdata_Order['FOrderID'],'FOrderNum') then
  end;

end;

procedure TFrm_DesignPayMent.Act_Ref_WriteExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If not TreeVeiwListWhere(qry,MyTreeView_Write,'VT_Design_PayMent_Write',' and FPayMentWriteID='+IntToStr(UserNumID)+' and FDepartmentID='+IntToStr(UserFDepartmentID) ) then
  begin
    Application.MessageBox(PChar('树型结构显示错误，请联系系统开发人员'), '错误', MB_OK +MB_ICONSTOP);
  end;


end;

procedure TFrm_DesignPayMent.cxGV_PayMentSelectionChanged(
  Sender: TcxCustomGridTableView);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If mdata_PayMent.RecordCount<0 then
     Exit;
  If P_state =2 then //不在新增、修改状态
  begin
    If mdata_PayMent['FPayMentID']<>0 then
    begin
      If MyItemList(qry,Mdata_PayMentList,'V_Design_PayMentList','cast(FPayMentID as varchar(20))',
                    mdata_PayMent['FPayMentID'],'FPayMentNum') then
      //Act_Status.Execute  //权限设置
    end;
  end;

end;

procedure TFrm_DesignPayMent.N_EditClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_DesignPayMent.N_FilterClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_DesignPayMent.N_SortClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_DesignPayMent.N_GroupClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_DesignPayMent.N_SetClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_DesignPayMent.N_OutClick(Sender: TObject);
begin
  inherited;
   Mn:=TMenuItem(Sender).Name;
   Act_Menu.Execute;

end;

procedure TFrm_DesignPayMent.Act_MenuExecute(Sender: TObject);
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

procedure TFrm_DesignPayMent.Act_Menu_SetExecute(Sender: TObject);
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

procedure TFrm_DesignPayMent.cxGrid_PayMentContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_TakeItem';
  Gm:='mdata_TakeItem';
  Gr:='cxGrid_TakeItem';
  Act_Menu_Set.Execute;

end;

procedure TFrm_DesignPayMent.cxGrid_PayMentListContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_TakeItem';
  Gm:='mdata_TakeItem';
  Gr:='cxGrid_TakeItem';
  Act_Menu_Set.Execute;

end;

procedure TFrm_DesignPayMent.cxGrid_OrderContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_Order';
  Gm:='Mdata_Order';
  Gr:='cxGrid_Order';
  Act_Menu_Set.Execute;

end;

procedure TFrm_DesignPayMent.cxGrid_OrderListContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  GV:='cxGV_OrderList';
  Gm:='mdata_OrderList';
  Gr:='cxGrid_OrderList';
  Act_Menu_Set.Execute;

end;

procedure TFrm_DesignPayMent.Act_TS_ItemExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If P_Isleaf_Item>=1 then
  begin
    If MyItemList(qry,mdata_PayMent,'V_Design_PayMent','FFullNumber',ListItemFNumber_Item,'') then
    If MyItemList(qry,mData_PayMentList,'V_Design_PayMentList','FFullNumber',ListItemFNumber_Item,'FPayMentNum') then
  end
  else
  begin
    mdata_PayMent.Close;
    mData_PayMentList.Close;
  end;


end;

procedure TFrm_DesignPayMent.Act_TS_WriteExecute(Sender: TObject);
var
  qry:TADOquery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If P_Isleaf_Write>0 then
  begin
    If MyItemList(qry,mdata_PayMent,'V_Design_PayMent','FFullNumber_Write',ListItemFNumber_Write,'') then
    If MyItemList(qry,Mdata_PayMentList,'V_Design_PayMentList','FFullNumber_Write',ListItemFNumber_Write,'FPayMentNum') then
  end
  else
  begin
    mdata_PayMent.Close;
    Mdata_PayMentList.Close;
  end;


end;

procedure TFrm_DesignPayMent.cxGV_OrderSelectionChanged(
  Sender: TcxCustomGridTableView);
var qry: TADOQuery;
begin
  qry:=TADOQuery.Create(self);
  qry.Connection:=mdlData.conn;
  If mdata_Order.RecordCount<0 then
     Exit;
  If mData_Order['FOrderID']<>0 then
  begin
    If MyItemList(qry,Mdata_OrderList,'V_DesignOrderList','cast(FOrderID as varchar(20))',
                  Mdata_Order['FOrderID'],'FOrderNum') then
  end;

end;

end.
